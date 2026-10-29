-- Recovered source: generated locals lifted into per-invocation tables.
local var_0_0 = {
	tooltipStatIconFiles = {
		spd = "spd",
		aspd = "aspd",
		atk = "atk",
		hp = "hp",
		fire = "fire",
		mouserightsmall = "mouserightsmall",
		joker_tooltip = "joker_tooltip",
		middle = "slot/middle",
		gold = "gold",
		essence = "essence",
		pwr = "pwr",
		dist = "dist"
	}
}
local var_0_1 = {}
local var_0_2 = {}
local var_0_3

local function var_0_4()
	if var_0_3 then
		pcall(var_0_3)
	end
end

local function var_0_5(arg_2_0)
	var_0_4()

	for iter_2_0, iter_2_1 in ipairs(arg_2_0) do
		local var_2_0 = var_0_1[iter_2_1]

		if var_2_0 then
			var_0_4()

			return var_2_0, iter_2_1
		end

		if love.filesystem.getInfo(iter_2_1, "file") then
			local var_2_1, var_2_2 = pcall(love.graphics.newImage, iter_2_1)

			if var_2_1 and var_2_2 then
				var_2_2:setFilter("nearest", "nearest")

				var_0_1[iter_2_1] = var_2_2

				var_0_4()

				return var_2_2, iter_2_1
			end
		end
	end

	var_0_4()

	return nil, arg_2_0[1]
end

local function var_0_6(arg_3_0)
	if not arg_3_0 then
		return nil
	end

	local var_3_0 = var_0_2[arg_3_0]

	if var_3_0 then
		return var_3_0
	end

	var_0_4()

	local var_3_1, var_3_2 = pcall(love.image.newImageData, arg_3_0)

	var_0_4()

	if not var_3_1 or not var_3_2 then
		return nil
	end

	var_0_2[arg_3_0] = var_3_2

	return var_3_2
end

function var_0_0.getTooltipStatIcon(arg_4_0, arg_4_1)
	local var_4_0 = arg_4_0 and arg_4_0.tooltipStatIcons and arg_4_0.tooltipStatIcons[arg_4_1] or var_0_0.tooltipStatIcons and var_0_0.tooltipStatIcons[arg_4_1]

	if var_4_0 then
		return var_4_0
	end

	local var_4_1 = var_0_0.tooltipStatIconFiles[arg_4_1]

	if not var_4_1 then
		return nil
	end

	local var_4_2 = {
		"src/sprites/icons/tooltip/" .. var_4_1 .. ".png",
		"sprites/icons/tooltip/" .. var_4_1 .. ".png"
	}

	if arg_4_1 == "joker_tooltip" then
		var_4_2[#var_4_2 + 1] = "src/sprites/icons/joker_tooltip.png"
		var_4_2[#var_4_2 + 1] = "sprites/icons/joker_tooltip.png"
	end

	local var_4_3, var_4_4 = var_0_5(var_4_2)

	if var_4_3 then
		var_0_0.tooltipStatIcons = var_0_0.tooltipStatIcons or {}
		var_0_0.tooltipStatIcons[arg_4_1] = var_4_3
	end

	return var_4_3, var_4_4
end

local function var_0_7(arg_5_0, arg_5_1)
	if not arg_5_0 or not arg_5_1 then
		return nil
	end

	local var_5_0 = arg_5_0:getWidth()
	local var_5_1 = arg_5_0:getHeight()

	if var_5_1 == 0 or var_5_0 == 0 then
		return nil
	end

	if var_5_1 <= arg_5_1 then
		return nil
	end

	local var_5_2 = arg_5_1 / var_5_1
	local var_5_3 = math.max(1, math.floor(var_5_0 * var_5_2 + 0.5))
	local var_5_4 = love.graphics.newCanvas(var_5_3, arg_5_1)

	var_5_4:setFilter("nearest", "nearest")
	love.graphics.push("all")
	love.graphics.setCanvas(var_5_4)
	love.graphics.clear(0, 0, 0, 0)
	love.graphics.origin()
	love.graphics.setBlendMode("alpha", "premultiplied")
	love.graphics.setDefaultFilter("nearest", "nearest")
	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.draw(arg_5_0, 0, 0, 0, var_5_2, var_5_2)
	love.graphics.pop()

	return var_5_4
end

local function var_0_8(arg_6_0)
	local var_6_0 = {
		"src/sprites/icons",
		"src/sprites/icon",
		"src/sprites",
		"sprites/icons",
		"sprites/icon",
		"sprites",
		"src/assets/icons",
		"src/assets/icon",
		"src/assets",
		"assets/icons",
		"assets/icon",
		"assets",
		"src/icons",
		"icons",
		"icon"
	}
	local var_6_1 = {
		".png",
		".PNG"
	}
	local var_6_2 = {
		arg_6_0
	}
	local var_6_3 = {}

	for iter_6_0, iter_6_1 in ipairs(var_6_0) do
		for iter_6_2, iter_6_3 in ipairs(var_6_2) do
			for iter_6_4, iter_6_5 in ipairs(var_6_1) do
				table.insert(var_6_3, string.format("%s/%s%s", iter_6_1, iter_6_3, iter_6_5))
			end
		end
	end

	return var_6_3
end

function var_0_0.load(arg_7_0)
	local __recovered_scope_0 = {}
var_0_3 = type(arg_7_0) == "function" and arg_7_0 or nil

	var_0_4()

	var_0_0.icons = {}
	var_0_0.iconsSmall = {}
	var_0_0.starIcon = var_0_5({
		"src/sprites/icons/battlefieldicons/star.png"
	})
	var_0_0.meta = {
		anyMissing = false,
		icons = {}
	}

	 __recovered_scope_0.var_7_0 = {
		D = "duelist",
		W = "warrior",
		H = "horse",
		M = "mage",
		S = "spear",
		Joker = "joker",
		A = "archer"
	}
	 __recovered_scope_0.var_7_1 = {
		D = "duelist_tooltip",
		W = "warrior_tooltip",
		H = "horse_tooltip",
		M = "mage_tooltip",
		S = "spear_tooltip",
		Joker = "joker_tooltip",
		A = "archer_tooltip"
	}

	for iter_7_0, iter_7_1 in pairs(__recovered_scope_0.var_7_0) do
		local var_7_2 = var_0_8(iter_7_1)
		local var_7_3, var_7_4 = var_0_5(var_7_2)

		var_0_0.icons[iter_7_0] = var_7_3 or nil

		if iter_7_0 == "Joker" then
			var_0_0.icons.J = var_7_3 or nil
		end

		var_0_0.meta.icons[iter_7_0] = {
			found = var_7_3 ~= nil,
			tried = var_7_2,
			used = var_7_4
		}

		if not var_7_3 then
			var_0_0.meta.anyMissing = true

			print(string.format("[assets] Missing icon for %s (tried like %s)", iter_7_0, var_7_4))
		else
			print(string.format("[assets] Loaded icon for %s from %s", iter_7_0, var_7_4))

			local var_7_5 = __recovered_scope_0.var_7_1[iter_7_0]

			if var_7_5 then
				local var_7_6 = var_0_8(var_7_5)
				local var_7_7, var_7_8 = var_0_5(var_7_6)

				if var_7_7 then
					var_0_0.iconsSmall[iter_7_0] = var_7_7

					print(string.format("[assets] iconsSmall %s loaded custom tooltip icon %dx%d from %s", iter_7_0, var_7_7:getWidth(), var_7_7:getHeight(), var_7_8))
				else
					local var_7_9 = var_0_7(var_7_3, 8)

					if var_7_9 then
						var_0_0.iconsSmall[iter_7_0] = var_7_9

						print(string.format("[assets] iconsSmall %s size = %dx%d", iter_7_0, var_7_9:getWidth(), var_7_9:getHeight()))
					else
						print(string.format("[assets] iconsSmall %s uses original size %dx%d (<= target height)", iter_7_0, var_7_3:getWidth(), var_7_3:getHeight()))
					end
				end
			else
				local var_7_10 = var_0_7(var_7_3, 8)

				if var_7_10 then
					var_0_0.iconsSmall[iter_7_0] = var_7_10

					print(string.format("[assets] iconsSmall %s size = %dx%d", iter_7_0, var_7_10:getWidth(), var_7_10:getHeight()))
				else
					print(string.format("[assets] iconsSmall %s uses original size %dx%d (<= target height)", iter_7_0, var_7_3:getWidth(), var_7_3:getHeight()))
				end
			end
		end
	end

	var_0_0.tooltipStatIcons = {}
	var_0_0.meta.tooltipStatIcons = {}

	 __recovered_scope_0.var_7_11 = var_0_0.tooltipStatIconFiles

	for iter_7_2 in pairs(__recovered_scope_0.var_7_11) do
		local var_7_12, var_7_13 = var_0_0.getTooltipStatIcon(var_0_0, iter_7_2)

		var_0_0.tooltipStatIcons[iter_7_2] = var_7_12
		var_0_0.meta.tooltipStatIcons[iter_7_2] = {
			found = var_7_12 ~= nil,
			used = var_7_13
		}

		if var_7_12 then
			print(string.format("[assets] tooltipStatIcons %s loaded from %s (%dx%d)", iter_7_2, var_7_13, var_7_12:getWidth(), var_7_12:getHeight()))
		else
			var_0_0.meta.anyMissing = true

			print(string.format("[assets] Missing tooltip stat icon %s (tried like %s)", iter_7_2, var_7_13))
		end
	end

	 function __recovered_scope_0.var_7_14(arg_8_0)
		return arg_8_0 / 255
	end

	 __recovered_scope_0.var_7_15 = {
		__recovered_scope_0.var_7_14(119),
		__recovered_scope_0.var_7_14(85),
		__recovered_scope_0.var_7_14(51)
	}
	 __recovered_scope_0.var_7_16 = {
		__recovered_scope_0.var_7_14(215),
		__recovered_scope_0.var_7_14(98),
		__recovered_scope_0.var_7_14(98)
	}
	 __recovered_scope_0.var_7_17 = {
		__recovered_scope_0.var_7_14(98),
		__recovered_scope_0.var_7_14(215),
		__recovered_scope_0.var_7_14(215)
	}
	 __recovered_scope_0.var_7_18 = {
		1,
		1,
		1
	}
	 __recovered_scope_0.var_7_19 = 0.013725490196078431

	 function __recovered_scope_0.var_7_20(arg_9_0, arg_9_1, arg_9_2, arg_9_3)
		return math.abs(arg_9_0 - arg_9_3[1]) <= __recovered_scope_0.var_7_19 and math.abs(arg_9_1 - arg_9_3[2]) <= __recovered_scope_0.var_7_19 and math.abs(arg_9_2 - arg_9_3[3]) <= __recovered_scope_0.var_7_19
	end

	 function __recovered_scope_0.var_7_21(arg_10_0, arg_10_1)
		arg_10_0:mapPixel(function(arg_11_0, arg_11_1, arg_11_2, arg_11_3, arg_11_4, arg_11_5)
			if arg_10_1 == "hp" then
				if __recovered_scope_0.var_7_20(arg_11_2, arg_11_3, arg_11_4, __recovered_scope_0.var_7_16) then
					return __recovered_scope_0.var_7_15[1], __recovered_scope_0.var_7_15[2], __recovered_scope_0.var_7_15[3], arg_11_5
				end
			elseif arg_10_1 == "atk" then
				if __recovered_scope_0.var_7_20(arg_11_2, arg_11_3, arg_11_4, __recovered_scope_0.var_7_18) then
					return __recovered_scope_0.var_7_15[1], __recovered_scope_0.var_7_15[2], __recovered_scope_0.var_7_15[3], arg_11_5
				end
			elseif arg_10_1 == "aspd" then
				if __recovered_scope_0.var_7_20(arg_11_2, arg_11_3, arg_11_4, __recovered_scope_0.var_7_17) then
					return __recovered_scope_0.var_7_15[1], __recovered_scope_0.var_7_15[2], __recovered_scope_0.var_7_15[3], arg_11_5
				end
			elseif arg_10_1 == "dist" then
				if __recovered_scope_0.var_7_20(arg_11_2, arg_11_3, arg_11_4, __recovered_scope_0.var_7_18) then
					return 0, 0, 0, 0
				end

				if __recovered_scope_0.var_7_20(arg_11_2, arg_11_3, arg_11_4, __recovered_scope_0.var_7_16) then
					return __recovered_scope_0.var_7_15[1], __recovered_scope_0.var_7_15[2], __recovered_scope_0.var_7_15[3], arg_11_5
				end
			end

			return arg_11_2, arg_11_3, arg_11_4, arg_11_5
		end)
	end

	var_0_0.tooltipStatIconsClassCard = {}
	var_0_0.meta.tooltipStatIconsClassCard = {}

	 __recovered_scope_0.var_7_22 = {
		dist = "dist_class",
		aspd = "aspd_class",
		atk = "atk_class",
		hp = "hp_class"
	}

	for iter_7_3, iter_7_4 in pairs(__recovered_scope_0.var_7_11) do
		local var_7_23 = var_0_0.tooltipStatIcons[iter_7_3]
		local var_7_24 = __recovered_scope_0.var_7_22[iter_7_3]

		if var_7_24 then
			local var_7_25 = {
				"src/sprites/icons/tooltip/" .. var_7_24 .. ".png",
				"sprites/icons/tooltip/" .. var_7_24 .. ".png"
			}
			local var_7_26, var_7_27 = var_0_5(var_7_25)

			if var_7_26 then
				local var_7_28 = var_7_26
				local var_7_29, var_7_30 = pcall(love.image.newImageData, var_7_27)

				if var_7_29 and var_7_30 then
					__recovered_scope_0.var_7_21(var_7_30, iter_7_3)

					local var_7_31, var_7_32 = pcall(love.graphics.newImage, var_7_30)

					if var_7_31 and var_7_32 then
						var_7_32:setFilter("nearest", "nearest")

						var_7_28 = var_7_32
					end
				end

				var_0_0.tooltipStatIconsClassCard[iter_7_3] = var_7_28
				var_0_0.meta.tooltipStatIconsClassCard[iter_7_3] = {
					ok = true,
					used = var_7_27
				}

				print(string.format("[assets] tooltipStatIconsClassCard %s loaded from %s (%dx%d)", iter_7_3, var_7_27, var_7_28:getWidth(), var_7_28:getHeight()))
			else
				var_0_0.tooltipStatIconsClassCard[iter_7_3] = var_7_23
				var_0_0.meta.tooltipStatIconsClassCard[iter_7_3] = {
					ok = false,
					fallback = true,
					used = var_7_27
				}

				print(string.format("[assets] Missing class-card stat icon %s (tried like %s)", iter_7_3, var_7_27))
			end
		elseif var_7_23 then
			var_0_0.tooltipStatIconsClassCard[iter_7_3] = var_7_23
			var_0_0.meta.tooltipStatIconsClassCard[iter_7_3] = {
				ok = true,
				shared = true
			}
		end
	end

	var_0_0.units = {}
	var_0_0.unitsMeta = {}

	var_0_5({
		"src/sprites/icons/imprinticons/03Fear.png"
	})

	 function __recovered_scope_0.var_7_33(arg_12_0, arg_12_1, arg_12_2, arg_12_3, arg_12_4)
		local var_12_0, var_12_1 = var_0_5(arg_12_1)

		if not var_12_0 then
			var_0_0.unitsMeta[arg_12_0] = {
				found = false,
				tried = arg_12_1,
				used = var_12_1
			}

			print(string.format("[assets] Missing unit sprite %s (tried like %s)", arg_12_0, var_12_1))

			return
		end

		local var_12_2 = var_0_6(var_12_1)
		local var_12_3 = var_12_0:getWidth()
		local var_12_4 = var_12_0:getHeight()
		local var_12_5 = math.max(1, math.floor(var_12_3 / arg_12_2))
		local var_12_6 = math.max(1, math.floor(var_12_4 / arg_12_3))
		local var_12_7 = {}
		local var_12_8 = {}
		local var_12_9 = {}

		local function var_12_10(arg_13_0, arg_13_1)
			if not var_12_2 then
				return {
					y = 0,
					x = 0,
					w = arg_12_2,
					h = arg_12_3
				}
			end

			if arg_13_0 < 0 or arg_13_1 < 0 or arg_13_0 + arg_12_2 > var_12_3 or arg_13_1 + arg_12_3 > var_12_4 then
				return {
					y = 0,
					x = 0,
					w = arg_12_2,
					h = arg_12_3
				}
			end

			local var_13_0 = arg_12_2
			local var_13_1 = arg_12_3
			local var_13_2 = -1
			local var_13_3 = -1

			for iter_13_0 = 0, arg_12_3 - 1 do
				for iter_13_1 = 0, arg_12_2 - 1 do
					local var_13_4 = arg_13_0 + iter_13_1
					local var_13_5 = arg_13_1 + iter_13_0

					if not (var_13_4 < 0) and not (var_13_5 < 0) and not (var_13_4 >= var_12_3) and not (var_13_5 >= var_12_4) then
						local var_13_6, var_13_7, var_13_8, var_13_9 = var_12_2:getPixel(var_13_4, var_13_5)

						if var_13_9 and var_13_9 > 0.05 then
							if iter_13_1 < var_13_0 then
								var_13_0 = iter_13_1
							end

							if iter_13_0 < var_13_1 then
								var_13_1 = iter_13_0
							end

							if var_13_2 < iter_13_1 then
								var_13_2 = iter_13_1
							end

							if var_13_3 < iter_13_0 then
								var_13_3 = iter_13_0
							end
						end
					end
				end
			end

			if var_13_2 < var_13_0 or var_13_3 < var_13_1 then
				return {
					y = 0,
					x = 0,
					w = arg_12_2,
					h = arg_12_3
				}
			end

			return {
				x = var_13_0,
				y = var_13_1,
				w = var_13_2 - var_13_0 + 1,
				h = var_13_3 - var_13_1 + 1
			}
		end

		for iter_12_0, iter_12_1 in pairs(arg_12_4) do
			local var_12_11 = {}

			for iter_12_2, iter_12_3 in pairs(iter_12_1) do
				var_12_11[iter_12_2] = iter_12_3
			end

			local var_12_12 = (iter_12_1.row or 1) - 1
			local var_12_13 = tonumber(iter_12_1.y)
			local var_12_14 = tonumber(iter_12_1.x) or 0
			local var_12_15 = tonumber(iter_12_1.stepX) or arg_12_2
			local var_12_16 = var_12_13 or var_12_12 * arg_12_3

			if var_12_15 <= 0 or var_12_14 < 0 or var_12_3 < var_12_14 + arg_12_2 then
				print(string.format("[assets] Warning: %s.%s x=%d stepX=%d out of range (image width=%d). Skipping.", arg_12_0, iter_12_0, var_12_14, var_12_15, var_12_3))
			elseif not var_12_13 and (var_12_12 < 0 or var_12_6 <= var_12_12) then
				print(string.format("[assets] Warning: %s.%s row=%d out of range (max rows=%d). Skipping.", arg_12_0, iter_12_0, iter_12_1.row or 1, var_12_6))
			elseif var_12_16 < 0 or var_12_4 < var_12_16 + arg_12_3 then
				print(string.format("[assets] Warning: %s.%s y=%d out of range (image height=%d). Skipping.", arg_12_0, iter_12_0, var_12_16, var_12_4))
			else
				local var_12_17 = math.max(1, math.floor(tonumber(iter_12_1.frames) or 1))
				local var_12_18 = math.max(1, math.floor((var_12_3 - var_12_14 - arg_12_2) / var_12_15) + 1)
				local var_12_19 = math.max(1, math.min(var_12_17, var_12_18))

				var_12_11.frames = var_12_19
				var_12_11.speed = tonumber(iter_12_1.speed) or 0.1

				if var_12_11.speed <= 0 then
					var_12_11.speed = 0.1
				end

				var_12_11.loop = iter_12_1.loop == true
				var_12_9[iter_12_0] = var_12_11

				if var_12_19 < var_12_17 then
					print(string.format("[assets] Warning: %s.%s frames=%d exceeds available columns=%d. Clamped to %d.", arg_12_0, iter_12_0, var_12_17, var_12_18, var_12_19))
				end

				var_12_7[iter_12_0] = {}
				var_12_8[iter_12_0] = {}

				for iter_12_4 = 0, var_12_19 - 1 do
					local var_12_20 = var_12_14 + iter_12_4 * var_12_15
					local var_12_21 = var_12_16

					table.insert(var_12_7[iter_12_0], love.graphics.newQuad(var_12_20, var_12_21, arg_12_2, arg_12_3, var_12_3, var_12_4))

					var_12_8[iter_12_0][iter_12_4 + 1] = var_12_10(var_12_20, var_12_21)

					var_0_4()
				end
			end
		end

		var_0_0.units[arg_12_0] = {
			image = var_12_0,
			imageData = var_12_2,
			frameW = arg_12_2,
			frameH = arg_12_3,
			quads = var_12_7,
			animations = var_12_9,
			bounds = var_12_8
		}
		var_0_0.unitsMeta[arg_12_0] = {
			hasBounds = true,
			found = true,
			used = var_12_1,
			iw = var_12_3,
			ih = var_12_4,
			frameW = arg_12_2,
			frameH = arg_12_3,
			hasImageData = var_12_2 ~= nil
		}

		print(string.format("[assets] Loaded unit sprite %s from %s (%dx%d)", arg_12_0, var_12_1, var_12_3, var_12_4))

		return var_0_0.units[arg_12_0]
	end

	 __recovered_scope_0.var_7_34 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.12,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.12,
			frames = 7,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("Jester", {
		"src/sprites/units/Jester/01SpecialJester.png",
		"sprites/units/Jester/01SpecialJester.png"
	}, 32, 32, __recovered_scope_0.var_7_34)

	var_0_0.units.Joker = var_0_0.units.Jester
	var_0_0.units.J = var_0_0.units.Jester
	var_0_0.units.광대 = var_0_0.units.Jester
	var_0_0.units["광대 (Jester)"] = var_0_0.units.Jester

	 __recovered_scope_0.var_7_35 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("Trickster", {
		"src/sprites/units/Jester/02SpecialJester_01.png",
		"sprites/units/Jester/02SpecialJester_01.png"
	}, 32, 32, __recovered_scope_0.var_7_35)

	var_0_0.units.Jester02 = var_0_0.units.Trickster
	var_0_0.units.트릭스터 = var_0_0.units.Trickster
	var_0_0.units["트릭스터 (Trickster)"] = var_0_0.units.Trickster

	 __recovered_scope_0.var_7_36 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("Illusionist", {
		"src/sprites/units/Jester/03SpecialJester_01_01.png",
		"sprites/units/Jester/03SpecialJester_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_36)

	var_0_0.units.Jester03 = var_0_0.units.Illusionist
	var_0_0.units.환술사 = var_0_0.units.Illusionist
	var_0_0.units["환술사 (Illusionist)"] = var_0_0.units.Illusionist

	 __recovered_scope_0.var_7_37 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.12,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.12,
			frames = 7,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("FerretTamer", {
		"src/sprites/units/Jester/02SpecialJester_02.png",
		"sprites/units/Jester/02SpecialJester_02.png"
	}, 32, 32, __recovered_scope_0.var_7_37)

	var_0_0.units["Ferret Tamer"] = var_0_0.units.FerretTamer
	var_0_0.units["페럿 조련사"] = var_0_0.units.FerretTamer
	var_0_0.units["페럿 조련사 (Ferret Tamer)"] = var_0_0.units.FerretTamer

	 __recovered_scope_0.var_7_38 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.12,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.12,
			frames = 7,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("Ringmaster", {
		"src/sprites/units/Jester/03SpecialJester_02_01.png",
		"sprites/units/Jester/03SpecialJester_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_38)

	var_0_0.units.Jester03_02 = var_0_0.units.Ringmaster
	var_0_0.units["서커스 단장"] = var_0_0.units.Ringmaster
	var_0_0.units["서커스 단장 (Ringmaster)"] = var_0_0.units.Ringmaster

	 __recovered_scope_0.var_7_39 = {
		idle = {
			speed = 0.18,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.16,
			frames = 6,
			loop = true,
			row = 2
		},
		walk2 = {
			speed = 0.16,
			frames = 6,
			loop = true,
			row = 3
		},
		give = {
			speed = 0.18,
			frames = 5,
			loop = false,
			row = 4
		}
	}

	__recovered_scope_0.var_7_33("Ferret", {
		"src/sprites/units/Jester/02SpecialJester_02_Ferret.png",
		"sprites/units/Jester/02SpecialJester_02_Ferret.png"
	}, 32, 32, __recovered_scope_0.var_7_39)

	var_0_0.units.페럿 = var_0_0.units.Ferret
	var_0_0.units["페럿 (Ferret)"] = var_0_0.units.Ferret

	__recovered_scope_0.var_7_33("RingmasterFerret", {
		"src/sprites/units/Jester/03SpecialJester_02_01_Ferret.png",
		"sprites/units/Jester/03SpecialJester_02_01_Ferret.png"
	}, 32, 32, __recovered_scope_0.var_7_39)

	 __recovered_scope_0.var_7_40 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("MiniSwordMan", {
		"src/sprites/units/SwordMan/01Normal/01NormalSwordMan.png",
		"sprites/units/SwordMan/01Normal/01NormalSwordMan.png",
		"src/sprites/units/MiniSwordMan.png",
		"sprites/units/MiniSwordMan.png"
	}, 32, 32, __recovered_scope_0.var_7_40)

	 __recovered_scope_0.var_7_41 = {
		idle = {
			speed = 0.15,
			frames = 8,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		walk2 = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 3
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 4
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.1,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("기병", {
		"src/sprites/units/HorseMan/01Normal/01MiniHorseMan.png",
		"sprites/units/HorseMan/01Normal/01MiniHorseMan.png"
	}, 32, 32, __recovered_scope_0.var_7_41)

	 __recovered_scope_0.var_7_42 = {
		idle = {
			speed = 0.15,
			frames = 8,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		walk2 = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 3
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 4
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.1,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("돌격병", {
		"src/sprites/units/HorseMan/01Normal/02MiniHorseMan_01.png",
		"sprites/units/HorseMan/01Normal/02MiniHorseMan_01.png"
	}, 32, 32, __recovered_scope_0.var_7_42)

	 __recovered_scope_0.var_7_43 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.1,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("도끼 기병", {
		"src/sprites/units/HorseMan/01Normal/02MiniHorseMan_02.png",
		"sprites/units/HorseMan/01Normal/02MiniHorseMan_02.png"
	}, 32, 32, __recovered_scope_0.var_7_43)

	 __recovered_scope_0.var_7_44 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("MiniHorseMan03", {
		"src/sprites/units/HorseMan/01Normal/03MiniHorseMan_01_01.png",
		"sprites/units/HorseMan/01Normal/03MiniHorseMan_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_44)
	__recovered_scope_0.var_7_33("중기병", {
		"src/sprites/units/HorseMan/01Normal/03MiniHorseMan_01_01.png",
		"sprites/units/HorseMan/01Normal/03MiniHorseMan_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_44)

	 __recovered_scope_0.var_7_45 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("철기병", {
		"src/sprites/units/HorseMan/02Advance/01AdvanceHorseMan.png",
		"sprites/units/HorseMan/02Advance/01AdvanceHorseMan.png"
	}, 32, 32, __recovered_scope_0.var_7_45)
	__recovered_scope_0.var_7_33("엘프 기병", {
		"src/sprites/units/HorseMan/02Advance/02AdvanceHorseMan_01.png",
		"sprites/units/HorseMan/02Advance/02AdvanceHorseMan_01.png"
	}, 32, 32, __recovered_scope_0.var_7_45)

	 __recovered_scope_0.var_7_46 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 3
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 4
		}
	}

	__recovered_scope_0.var_7_33("야만 기병", {
		"src/sprites/units/HorseMan/02Advance/02AdvanceHorseMan_02.png",
		"sprites/units/HorseMan/02Advance/02AdvanceHorseMan_02.png"
	}, 32, 32, __recovered_scope_0.var_7_46)
	__recovered_scope_0.var_7_33("광폭 기병", {
		"src/sprites/units/HorseMan/02Advance/03AdvanceHorseMan_02_01.png",
		"sprites/units/HorseMan/02Advance/03AdvanceHorseMan_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_46)

	 __recovered_scope_0.var_7_47 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		fly = {
			speed = 0.14,
			frames = 4,
			loop = true,
			row = 3
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 4
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("하이 엘프 기병", {
		"src/sprites/units/HorseMan/02Advance/03AdvanceHorseMan_01_01.png",
		"sprites/units/HorseMan/02Advance/03AdvanceHorseMan_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_47)

	 __recovered_scope_0.var_7_48 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("MiniHorseMan03_hp02", {
		"src/sprites/units/MiniHorseMan/03MiniHorseMan_hp02.png",
		"sprites/units/MiniHorseMan/03MiniHorseMan_hp02.png"
	}, 32, 32, __recovered_scope_0.var_7_48)
	__recovered_scope_0.var_7_33("성기병", {
		"src/sprites/units/MiniHorseMan/03MiniHorseMan_hp02.png",
		"sprites/units/MiniHorseMan/03MiniHorseMan_hp02.png"
	}, 32, 32, __recovered_scope_0.var_7_48)
	__recovered_scope_0.var_7_33("성기병 (Holy Cavalier)", {
		"src/sprites/units/MiniHorseMan/03MiniHorseMan_hp02.png",
		"sprites/units/MiniHorseMan/03MiniHorseMan_hp02.png"
	}, 32, 32, __recovered_scope_0.var_7_48)

	 __recovered_scope_0.var_7_49 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("그리즐", {
		"src/sprites/units/MiniHorseMan/04MiniHorseMan_01_02_01.png",
		"sprites/units/MiniHorseMan/04MiniHorseMan_01_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_49)

	 __recovered_scope_0.var_7_50 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 6
		},
		attack4 = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 7
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 8
		},
		death = {
			speed = 0.15,
			frames = 9,
			loop = false,
			row = 9
		}
	}

	__recovered_scope_0.var_7_33("데스 나이트", {
		"src/sprites/units/MiniHorseMan/04MiniHorseMan_02_02_01.png",
		"sprites/units/MiniHorseMan/04MiniHorseMan_02_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_50)
	__recovered_scope_0.var_7_33("Death Knight", {
		"src/sprites/units/MiniHorseMan/04MiniHorseMan_02_02_01.png",
		"sprites/units/MiniHorseMan/04MiniHorseMan_02_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_50)

	 __recovered_scope_0.var_7_51 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("우르간", {
		"src/sprites/units/MiniHorseMan/05MiniHorseMan_01_02_01_01.png",
		"sprites/units/MiniHorseMan/05MiniHorseMan_01_02_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_51)
	__recovered_scope_0.var_7_33("Urgan", {
		"src/sprites/units/MiniHorseMan/05MiniHorseMan_01_02_01_01.png",
		"sprites/units/MiniHorseMan/05MiniHorseMan_01_02_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_51)

	 __recovered_scope_0.var_7_52 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 4,
			loop = true,
			row = 2
		},
		attack = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 3
		},
		death = {
			speed = 0.15,
			frames = 9,
			loop = false,
			row = 4
		}
	}

	__recovered_scope_0.var_7_33("데스 로드", {
		"src/sprites/units/MiniHorseMan/05MiniHorseMan_02_02_01_01.png",
		"src/sprites/units/MiniHorseMan/05MiniHorseMan_02_02_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_52)
	__recovered_scope_0.var_7_33("Death Lord", {
		"src/sprites/units/MiniHorseMan/05MiniHorseMan_02_02_01_01.png",
		"src/sprites/units/MiniHorseMan/05MiniHorseMan_02_02_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_52)

	 __recovered_scope_0.var_7_53 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		shield = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("MiniSwordMan02", {
		"src/sprites/units/SwordMan/01Normal/02NormalSwordMan_01.png",
		"sprites/units/SwordMan/01Normal/02NormalSwordMan_01.png"
	}, 32, 32, __recovered_scope_0.var_7_53)

	 __recovered_scope_0.var_7_54 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		shield = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("MiniSwordMan03", {
		"src/sprites/units/SwordMan/01Normal/03NormalSwordMan_01_01.png",
		"sprites/units/SwordMan/01Normal/03NormalSwordMan_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_54)

	 __recovered_scope_0.var_7_55 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("해적", {
		"src/sprites/units/SwordMan/01Normal/02NormalSwordMan_02.png",
		"sprites/units/SwordMan/01Normal/02NormalSwordMan_02.png"
	}, 32, 32, __recovered_scope_0.var_7_55)

	 __recovered_scope_0.var_7_56 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		shield = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("기사", {
		"src/sprites/units/SwordMan/01Normal/03NormalSwordMan_01_01.png",
		"sprites/units/SwordMan/01Normal/03NormalSwordMan_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_56)

	 __recovered_scope_0.var_7_57 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.1,
			frames = 10,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("플레어", {
		"src/sprites/units/SwordMan/03Rare/03RareSwordMan_02_01.png",
		"sprites/units/SwordMan/03Rare/03RareSwordMan_02_01.png"
	}, 40, 32, __recovered_scope_0.var_7_57)

	 __recovered_scope_0.var_7_58 = {
		idle = {
			speed = 0.15,
			frames = 6,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.04,
			frames = 10,
			loop = false,
			row = 4
		},
		attack3 = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("마그누스", {
		"src/sprites/units/SwordMan/04Legend/03LegendSwordMan_02_01.png",
		"sprites/units/SwordMan/04Legend/03LegendSwordMan_02_01.png"
	}, 66, 32, __recovered_scope_0.var_7_58)

	if var_0_0.units.마그누스 then
		var_0_0.units.마그누스.shadowBaseWidth = 18
		var_0_0.units.마그누스.shadowPower = 2
	end

	 __recovered_scope_0.var_7_59 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("암기사", {
		"src/sprites/units/MiniSwordMan/03MiniSwordMan_hp02.png",
		"sprites/units/MiniSwordMan/03MiniSwordMan_hp02.png"
	}, 32, 32, __recovered_scope_0.var_7_59)

	 __recovered_scope_0.var_7_60 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		shield = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("성기사", {
		"src/sprites/units/SwordMan/03Rare/02RareSwordMan_01.png",
		"sprites/units/SwordMan/03Rare/02RareSwordMan_01.png"
	}, 32, 32, __recovered_scope_0.var_7_60)

	 __recovered_scope_0.var_7_61 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("팔라딘", {
		"src/sprites/units/MiniSwordMan/04MiniSwordMan_01_02_01.png",
		"sprites/units/MiniSwordMan/04MiniSwordMan_01_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_61)

	 __recovered_scope_0.var_7_62 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("레버넌트", {
		"src/sprites/units/MiniSwordMan/04MiniSwordMan_01_02_02.png",
		"sprites/units/MiniSwordMan/04MiniSwordMan_01_02_02.png"
	}, 32, 32, __recovered_scope_0.var_7_62)

	 __recovered_scope_0.var_7_63 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("드루이드", {
		"src/sprites/units/PrinceMan/02Advance/01AdvancePrinceMan.png",
		"sprites/units/PrinceMan/02Advance/01AdvancePrinceMan.png"
	}, 32, 32, __recovered_scope_0.var_7_63)

	 __recovered_scope_0.var_7_64 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("엔트", {
		"src/sprites/units/PrinceMan/02Advance/02AdvancePrinceMan_01.png",
		"sprites/units/PrinceMan/02Advance/02AdvancePrinceMan_01.png"
	}, 32, 32, __recovered_scope_0.var_7_64)

	 __recovered_scope_0.var_7_65 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 4,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("빅터", {
		"src/sprites/units/PrinceMan/02Advance/02AdvancePrinceMan_02.png",
		"sprites/units/PrinceMan/02Advance/02AdvancePrinceMan_02.png"
	}, 32, 32, __recovered_scope_0.var_7_65)

	 __recovered_scope_0.var_7_66 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("엔트로드", {
		"src/sprites/units/PrinceMan/02Advance/03AdvancePrinceMan_01_01.png",
		"sprites/units/PrinceMan/02Advance/03AdvancePrinceMan_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_66)

	 __recovered_scope_0.var_7_67 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("프랑켄슈타인", {
		"src/sprites/units/PrinceMan/02Advance/03AdvancePrinceMan_02_01.png",
		"sprites/units/PrinceMan/02Advance/03AdvancePrinceMan_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_67)

	 __recovered_scope_0.var_7_68 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("바그", {
		"src/sprites/units/SwordMan/02Advance/03AdvanceSwordMan_02_01.png",
		"sprites/units/SwordMan/02Advance/03AdvanceSwordMan_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_68)

	 __recovered_scope_0.var_7_69 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("암검사", {
		"src/sprites/units/SwordMan/04Legend/02LegendSwordMan_02.png",
		"sprites/units/SwordMan/04Legend/02LegendSwordMan_02.png"
	}, 32, 32, __recovered_scope_0.var_7_69)

	 __recovered_scope_0.var_7_70 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("마검사", {
		"src/sprites/units/SwordMan/04Legend/02LegendSwordMan_01.png",
		"sprites/units/SwordMan/04Legend/02LegendSwordMan_01.png"
	}, 32, 32, __recovered_scope_0.var_7_70)

	 __recovered_scope_0.var_7_71 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		attack3 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("게이즈", {
		"src/sprites/units/SwordMan/04Legend/03LegendSwordMan_01_01.png",
		"sprites/units/SwordMan/04Legend/03LegendSwordMan_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_71)

	 __recovered_scope_0.var_7_72 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 4,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.1,
			frames = 12,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.12,
			frames = 9,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("엘프기사", {
		"src/sprites/units/SwordMan/02Advance/03AdvanceSwordMan_01_01.png",
		"sprites/units/SwordMan/02Advance/03AdvanceSwordMan_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_72)

	 __recovered_scope_0.var_7_73 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		shield = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("해골 투사", {
		"src/sprites/units/SwordMan/04Legend/01LegendSwordMan.png",
		"sprites/units/SwordMan/04Legend/01LegendSwordMan.png"
	}, 32, 32, __recovered_scope_0.var_7_73)

	 __recovered_scope_0.var_7_74 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("공허기사", {
		"src/sprites/units/MiniSwordMan/03MiniSwordMan_atk01.png",
		"sprites/units/MiniSwordMan/03MiniSwordMan_atk01.png"
	}, 32, 32, __recovered_scope_0.var_7_74)

	 __recovered_scope_0.var_7_75 = {
		idle = {
			speed = 0.15,
			frames = 8,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 4,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 4
		},
		shield = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 5
		},
		shield2 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 6
		},
		attack2 = {
			speed = 0.08,
			frames = 15,
			loop = false,
			row = 7
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 8
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 9
		}
	}

	__recovered_scope_0.var_7_33("화염기사", {
		"src/sprites/units/MiniSwordMan/03MiniSwordMan_atk02.png",
		"sprites/units/MiniSwordMan/03MiniSwordMan_atk02.png"
	}, 32, 32, __recovered_scope_0.var_7_75)

	 __recovered_scope_0.var_7_76 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("사신기사", {
		"src/sprites/units/MiniSwordMan/03MiniSwordMan_atk03.png",
		"sprites/units/MiniSwordMan/03MiniSwordMan_atk03.png"
	}, 32, 32, __recovered_scope_0.var_7_76)

	 __recovered_scope_0.var_7_77 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 8,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("엘프병사", {
		"src/sprites/units/SwordMan/02Advance/02AdvanceSwordMan_01.png",
		"sprites/units/SwordMan/02Advance/02AdvanceSwordMan_01.png"
	}, 32, 32, __recovered_scope_0.var_7_77)

	 __recovered_scope_0.var_7_78 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("사수 병사", {
		"src/sprites/units/SwordMan/02Advance/02AdvanceSwordMan_02.png",
		"sprites/units/SwordMan/02Advance/02AdvanceSwordMan_02.png"
	}, 32, 32, __recovered_scope_0.var_7_78)

	 __recovered_scope_0.var_7_79 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		shield = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("해골 투사_aspd02", {
		"src/sprites/units/MiniSwordMan/03MiniSwordMan_aspd02.png",
		"sprites/units/MiniSwordMan/03MiniSwordMan_aspd02.png"
	}, 32, 32, __recovered_scope_0.var_7_79)

	 __recovered_scope_0.var_7_80 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("야수기사", {
		"src/sprites/units/MiniSwordMan/03MiniSwordMan_aspd03.png",
		"sprites/units/MiniSwordMan/03MiniSwordMan_aspd03.png"
	}, 32, 32, __recovered_scope_0.var_7_80)

	 __recovered_scope_0.var_7_81 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("투사", {
		"src/sprites/units/SwordMan/03Rare/01RareSwordMan.png",
		"sprites/units/SwordMan/03Rare/01RareSwordMan.png"
	}, 32, 32, __recovered_scope_0.var_7_81)

	 __recovered_scope_0.var_7_82 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("템플러", {
		"src/sprites/units/SwordMan/03Rare/03RareSwordMan_01_01.png",
		"sprites/units/SwordMan/03Rare/03RareSwordMan_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_82)

	 __recovered_scope_0.var_7_83 = {
		idle = {
			speed = 0.15,
			frames = 8,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 4,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 4
		},
		shield = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 5
		},
		shield2 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 6
		},
		attack2 = {
			speed = 0.08,
			frames = 15,
			loop = false,
			row = 7
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 8
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 9
		}
	}

	__recovered_scope_0.var_7_33("염투사", {
		"src/sprites/units/SwordMan/03Rare/02RareSwordMan_02.png",
		"sprites/units/SwordMan/03Rare/02RareSwordMan_02.png"
	}, 32, 32, __recovered_scope_0.var_7_83)

	 __recovered_scope_0.var_7_84 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("총포수", {
		"src/sprites/units/ArcherMan/03Rare/01RareArcherMan.png",
		"sprites/units/ArcherMan/03Rare/01RareArcherMan.png"
	}, 32, 32, __recovered_scope_0.var_7_84)

	 __recovered_scope_0.var_7_85 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 4,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("화포수", {
		"src/sprites/units/ArcherMan/03Rare/02RareArcherMan_01.png",
		"sprites/units/ArcherMan/03Rare/02RareArcherMan_01.png"
	}, 32, 32, __recovered_scope_0.var_7_85)

	 __recovered_scope_0.var_7_86 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("척탄병", {
		"src/sprites/units/ArcherMan/03Rare/02RareArcherMan_02.png",
		"sprites/units/ArcherMan/03Rare/02RareArcherMan_02.png"
	}, 32, 32, __recovered_scope_0.var_7_86)

	 __recovered_scope_0.var_7_87 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("캐노니어", {
		"src/sprites/units/ArcherMan/03Rare/03RareArcherMan_01_01.png",
		"sprites/units/ArcherMan/03Rare/03RareArcherMan_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_87)

	 __recovered_scope_0.var_7_88 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("폭파대장", {
		"src/sprites/units/ArcherMan/03Rare/03RareArcherMan_02_01.png",
		"sprites/units/ArcherMan/03Rare/03RareArcherMan_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_88)

	 __recovered_scope_0.var_7_89 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.15,
			frames = 3,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("MiniArcherMan", {
		"src/sprites/units/ArcherMan/01Normal/01NormalArcherMan.png",
		"sprites/units/ArcherMan/01Normal/01NormalArcherMan.png",
		"src/sprites/units/MiniArcherMan.png",
		"sprites/units/MiniArcherMan.png"
	}, 32, 32, __recovered_scope_0.var_7_89)

	 __recovered_scope_0.var_7_90 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 4,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("MiniArcherMan02", {
		"src/sprites/units/ArcherMan/01Normal/02NormalArcherMan_01.png",
		"sprites/units/ArcherMan/01Normal/02NormalArcherMan_01.png"
	}, 32, 32, __recovered_scope_0.var_7_90)

	 __recovered_scope_0.var_7_91 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("엘프궁수", {
		"src/sprites/units/MiniArcherMan/02MiniArcherMan_02.png",
		"sprites/units/MiniArcherMan/02MiniArcherMan_02.png"
	}, 32, 32, __recovered_scope_0.var_7_91)

	 __recovered_scope_0.var_7_92 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("MiniArcherMan03", {
		"src/sprites/units/ArcherMan/01Normal/03NormalArcherMan_01_01.png",
		"sprites/units/ArcherMan/01Normal/03NormalArcherMan_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_92)

	 __recovered_scope_0.var_7_93 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("순찰자", {
		"src/sprites/units/ArcherMan/01Normal/02NormalArcherMan_02.png",
		"sprites/units/ArcherMan/01Normal/02NormalArcherMan_02.png"
	}, 32, 32, __recovered_scope_0.var_7_93)

	 __recovered_scope_0.var_7_94 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("정찰병", {
		"src/sprites/units/ArcherMan/02Advance/01AdvanceArcherMan.png",
		"sprites/units/ArcherMan/02Advance/01AdvanceArcherMan.png"
	}, 32, 32, __recovered_scope_0.var_7_94)

	 __recovered_scope_0.var_7_95 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("엘프 궁수", {
		"src/sprites/units/ArcherMan/02Advance/02AdvanceArcherMan_01.png",
		"sprites/units/ArcherMan/02Advance/02AdvanceArcherMan_01.png"
	}, 32, 32, __recovered_scope_0.var_7_95)

	 __recovered_scope_0.var_7_96 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		reload = {
			speed = 0.1,
			frames = 5,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("레인저", {
		"src/sprites/units/ArcherMan/02Advance/02AdvanceArcherMan_02.png",
		"sprites/units/ArcherMan/02Advance/02AdvanceArcherMan_02.png"
	}, 32, 32, __recovered_scope_0.var_7_96)

	 __recovered_scope_0.var_7_97 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 13,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("하이 엘프", {
		"src/sprites/units/ArcherMan/02Advance/03AdvanceArcherMan_01_01.png",
		"sprites/units/ArcherMan/02Advance/03AdvanceArcherMan_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_97)

	 __recovered_scope_0.var_7_98 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("데드아이", {
		"src/sprites/units/ArcherMan/02Advance/03AdvanceArcherMan_02_01.png",
		"sprites/units/ArcherMan/02Advance/03AdvanceArcherMan_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_98)

	 __recovered_scope_0.var_7_99 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("로빈 후드", {
		"src/sprites/units/MiniArcherMan/04MiniArcherMan_01_02_01.png",
		"sprites/units/MiniArcherMan/04MiniArcherMan_01_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_99)

	 __recovered_scope_0.var_7_100 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("그린 섀도우", {
		"src/sprites/units/MiniArcherMan/05MiniArcherMan_01_02_01_01.png",
		"sprites/units/MiniArcherMan/05MiniArcherMan_01_02_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_100)

	 __recovered_scope_0.var_7_101 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 12,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 14,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("바이올", {
		"src/sprites/units/MiniArcherMan/04MiniArcherMan_02_02_02.png",
		"sprites/units/MiniArcherMan/04MiniArcherMan_02_02_02.png"
	}, 32, 32, __recovered_scope_0.var_7_101)

	 __recovered_scope_0.var_7_102 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 12,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 14,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("바이올렛 둠", {
		"src/sprites/units/MiniArcherMan/05MiniArcherMan_02_02_02_01.png",
		"sprites/units/MiniArcherMan/05MiniArcherMan_02_02_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_102)

	 __recovered_scope_0.var_7_103 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 13,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("엘프 사수", {
		"src/sprites/units/MiniArcherMan/03MiniArcherMan_02_01.png",
		"sprites/units/MiniArcherMan/03MiniArcherMan_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_103)

	 __recovered_scope_0.var_7_104 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("해골 사수", {
		"src/sprites/units/MiniArcherMan/03MiniArcherMan_02_02.png",
		"sprites/units/MiniArcherMan/03MiniArcherMan_02_02.png"
	}, 32, 32, __recovered_scope_0.var_7_104)

	 __recovered_scope_0.var_7_105 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 12,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 14,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("암사수", {
		"src/sprites/units/MiniArcherMan/03MiniArcherMan_hp02.png",
		"sprites/units/MiniArcherMan/03MiniArcherMan_hp02.png"
	}, 32, 32, __recovered_scope_0.var_7_105)

	 __recovered_scope_0.var_7_106 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("명사수", {
		"src/sprites/units/ArcherMan/01Normal/03NormalArcherMan_02_01.png",
		"sprites/units/ArcherMan/01Normal/03NormalArcherMan_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_106)

	 __recovered_scope_0.var_7_107 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("MiniSpearMan", {
		"src/sprites/units/SpearMan/01Normal/01NormalSpearMan.png",
		"sprites/units/SpearMan/01Normal/01NormalSpearMan.png"
	}, 32, 32, __recovered_scope_0.var_7_107)

	 __recovered_scope_0.var_7_108 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("MiniSpearMan02", {
		"src/sprites/units/SpearMan/01Normal/02NormalSpearMan_01.png",
		"sprites/units/SpearMan/01Normal/02NormalSpearMan_01.png"
	}, 32, 32, __recovered_scope_0.var_7_108)

	 __recovered_scope_0.var_7_109 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("보병", {
		"src/sprites/units/SpearMan/02Advance/01AdvanceSpearMan.png",
		"sprites/units/SpearMan/02Advance/01AdvanceSpearMan.png"
	}, 32, 32, __recovered_scope_0.var_7_109)

	 __recovered_scope_0.var_7_110 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("엘프 보병", {
		"src/sprites/units/SpearMan/02Advance/02AdvanceSpearMan_01.png",
		"sprites/units/SpearMan/02Advance/02AdvanceSpearMan_01.png"
	}, 32, 32, __recovered_scope_0.var_7_110)

	 __recovered_scope_0.var_7_111 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("바이킹", {
		"src/sprites/units/SpearMan/02Advance/02AdvanceSpearMan_02.png",
		"sprites/units/SpearMan/02Advance/02AdvanceSpearMan_02.png"
	}, 32, 32, __recovered_scope_0.var_7_111)

	 __recovered_scope_0.var_7_112 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 4
		},
		shield = {
			speed = 0.1,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("하이 엘프 보병", {
		"src/sprites/units/SpearMan/02Advance/03AdvanceSpearMan_01_01.png",
		"sprites/units/SpearMan/02Advance/03AdvanceSpearMan_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_112)

	 __recovered_scope_0.var_7_113 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 4,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("바바리안", {
		"src/sprites/units/SpearMan/02Advance/03AdvanceSpearMan_02_01.png",
		"sprites/units/SpearMan/02Advance/03AdvanceSpearMan_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_113)

	 __recovered_scope_0.var_7_114 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("엘프창병", {
		"src/sprites/units/MiniSpearMan/02MiniSpearMan_02.png",
		"sprites/units/MiniSpearMan/02MiniSpearMan_02.png"
	}, 32, 32, __recovered_scope_0.var_7_114)

	 __recovered_scope_0.var_7_115 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("약탈자", {
		"src/sprites/units/SpearMan/01Normal/02NormalSpearMan_02.png",
		"sprites/units/SpearMan/01Normal/02NormalSpearMan_02.png"
	}, 32, 32, __recovered_scope_0.var_7_115)

	 __recovered_scope_0.var_7_116 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 4,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("무법자", {
		"src/sprites/units/SpearMan/01Normal/03NormalSpearMan_02_01.png",
		"sprites/units/SpearMan/01Normal/03NormalSpearMan_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_116)

	 __recovered_scope_0.var_7_117 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("MiniSpearMan03", {
		"src/sprites/units/SpearMan/01Normal/03NormalSpearMan_01_01.png",
		"sprites/units/SpearMan/01Normal/03NormalSpearMan_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_117)
	__recovered_scope_0.var_7_33("근위병", {
		"src/sprites/units/SpearMan/01Normal/03NormalSpearMan_01_01.png",
		"sprites/units/SpearMan/01Normal/03NormalSpearMan_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_117)

	 __recovered_scope_0.var_7_118 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		shield = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("침묵병", {
		"src/sprites/units/MiniSpearMan/03MiniSpearMan_hp02.png",
		"sprites/units/MiniSpearMan/03MiniSpearMan_hp02.png"
	}, 32, 32, __recovered_scope_0.var_7_118)

	 __recovered_scope_0.var_7_119 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 4
		},
		shield = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("엘드가드", {
		"src/sprites/units/MiniSpearMan/03MiniSpearMan_hp03.png",
		"sprites/units/MiniSpearMan/03MiniSpearMan_hp03.png"
	}, 32, 32, __recovered_scope_0.var_7_119)

	 __recovered_scope_0.var_7_120 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack2 = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("허스칼", {
		"src/sprites/units/MiniSpearMan/03MiniSpearMan_01_02.png",
		"sprites/units/MiniSpearMan/03MiniSpearMan_01_02.png"
	}, 32, 32, __recovered_scope_0.var_7_120)

	 __recovered_scope_0.var_7_121 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 4
		},
		shield = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("엘프 근위병", {
		"src/sprites/units/MiniSpearMan/03MiniSpearMan_02_01.png",
		"sprites/units/MiniSpearMan/03MiniSpearMan_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_121)

	 __recovered_scope_0.var_7_122 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		shield = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("해골 근위병", {
		"src/sprites/units/MiniSpearMan/03MiniSpearMan_02_02.png",
		"sprites/units/MiniSpearMan/03MiniSpearMan_02_02.png"
	}, 32, 32, __recovered_scope_0.var_7_122)

	 __recovered_scope_0.var_7_123 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 14,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("크러셔", {
		"src/sprites/units/MiniSpearMan/04MiniSpearMan_02_01_02.png",
		"sprites/units/MiniSpearMan/04MiniSpearMan_02_01_02.png"
	}, 40, 32, __recovered_scope_0.var_7_123)

	 __recovered_scope_0.var_7_124 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 17,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("젠", {
		"src/sprites/units/MiniSpearMan/05MiniSpearMan_02_01_02_01.png",
		"sprites/units/MiniSpearMan/05MiniSpearMan_02_01_02_01.png"
	}, 48, 32, __recovered_scope_0.var_7_124)

	 __recovered_scope_0.var_7_125 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		attack = {
			speed = 0.1,
			frames = 8,
			loop = false,
			row = 3
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 4
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 5
		}
	}

	__recovered_scope_0.var_7_33("소울 리퍼", {
		"src/sprites/units/MiniSpearMan/04MiniSpearMan_02_02_01.png",
		"sprites/units/MiniSpearMan/04MiniSpearMan_02_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_125)

	 __recovered_scope_0.var_7_126 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 5,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("결투사", {
		"src/sprites/units/PrinceMan/01Normal/01MiniPrinceMan.png",
		"sprites/units/PrinceMan/01Normal/01MiniPrinceMan.png"
	}, 32, 32, __recovered_scope_0.var_7_126)

	 __recovered_scope_0.var_7_127 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		drink = {
			speed = 0.12,
			frames = 5,
			loop = false,
			row = 2
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 3
		},
		jump = {
			speed = 0.12,
			frames = 5,
			loop = false,
			row = 4
		},
		attack = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("황제", {
		"src/sprites/units/PrinceMan/01Normal/02MiniPrinceMan_01.png",
		"sprites/units/PrinceMan/01Normal/02MiniPrinceMan_01.png"
	}, 32, 32, __recovered_scope_0.var_7_127)

	 __recovered_scope_0.var_7_128 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("베테랑", {
		"src/sprites/units/PrinceMan/01Normal/02MiniPrinceMan_02.png",
		"sprites/units/PrinceMan/01Normal/02MiniPrinceMan_02.png"
	}, 32, 32, __recovered_scope_0.var_7_128)

	 __recovered_scope_0.var_7_129 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		shield = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("해적왕", {
		"src/sprites/units/SwordMan/01Normal/03NormalSwordMan_02_01.png",
		"sprites/units/SwordMan/01Normal/03NormalSwordMan_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_129)

	 __recovered_scope_0.var_7_130 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("철퇴병", {
		"src/sprites/units/SwordMan/02Advance/01AdvanceSwordMan.png",
		"sprites/units/SwordMan/02Advance/01AdvanceSwordMan.png"
	}, 32, 32, __recovered_scope_0.var_7_130)

	 __recovered_scope_0.var_7_131 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.18,
			frames = 4,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("검황", {
		"src/sprites/units/PrinceMan/01Normal/03MiniPrinceMan_01_01.png",
		"sprites/units/PrinceMan/01Normal/03MiniPrinceMan_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_131)
	__recovered_scope_0.var_7_33("검황 (Warlord)", {
		"src/sprites/units/PrinceMan/01Normal/03MiniPrinceMan_01_01.png",
		"sprites/units/PrinceMan/01Normal/03MiniPrinceMan_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_131)

	 __recovered_scope_0.var_7_132 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("장군", {
		"src/sprites/units/PrinceMan/01Normal/03MiniPrinceMan_02_01.png",
		"sprites/units/PrinceMan/01Normal/03MiniPrinceMan_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_132)

	 __recovered_scope_0.var_7_133 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		shout = {
			speed = 0.1,
			frames = 7,
			loop = false,
			row = 2
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 3
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 4
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 5
		},
		attack2 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 6
		},
		attack3 = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 7
		},
		attack4 = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 8
		},
		attack5 = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 9
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 10
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 11
		}
	}

	__recovered_scope_0.var_7_33("성황", {
		"src/sprites/units/MiniPrinceMan/03MiniPrinceMan_01_01.png",
		"sprites/units/MiniPrinceMan/03MiniPrinceMan_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_133)

	 __recovered_scope_0.var_7_134 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 13,
			loop = false,
			row = 6
		},
		attack4 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 7
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 8
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 9
		}
	}

	__recovered_scope_0.var_7_33("검성제", {
		"src/sprites/units/MiniPrinceMan/03MiniPrinceMan_01_02.png",
		"sprites/units/MiniPrinceMan/03MiniPrinceMan_01_02.png"
	}, 32, 32, __recovered_scope_0.var_7_134)

	 __recovered_scope_0.var_7_135 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 4,
			loop = true,
			row = 2
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 3
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("망령", {
		"src/sprites/units/MiniPrinceMan/03MiniPrinceMan_02_02.png",
		"sprites/units/MiniPrinceMan/03MiniPrinceMan_02_02.png"
	}, 32, 32, __recovered_scope_0.var_7_135)

	 __recovered_scope_0.var_7_136 = {
		idle = {
			speed = 0.15,
			frames = 5,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 5,
			loop = true,
			row = 2
		},
		attack = {
			speed = 0.1,
			frames = 5,
			loop = false,
			row = 3
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 4
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 5
		}
	}

	__recovered_scope_0.var_7_33("글로리", {
		"src/sprites/units/MiniPrinceMan/04MiniPrinceMan_01_01_02.png",
		"sprites/units/MiniPrinceMan/04MiniPrinceMan_01_01_02.png"
	}, 40, 40, __recovered_scope_0.var_7_136)

	 __recovered_scope_0.var_7_137 = {
		idle = {
			speed = 0.15,
			frames = 6,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		attack = {
			speed = 0.1,
			frames = 6,
			loop = false,
			row = 3
		},
		attack2 = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("루시엘", {
		"src/sprites/units/MiniPrinceMan/05MiniPrinceMan_01_01_02_01.png",
		"sprites/units/MiniPrinceMan/05MiniPrinceMan_01_01_02_01.png"
	}, 40, 40, __recovered_scope_0.var_7_137)

	 __recovered_scope_0.var_7_138 = {
		idle = {
			speed = 0.15,
			frames = 6,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		attack = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 3
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 4
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 5
		}
	}

	__recovered_scope_0.var_7_33("글룸", {
		"src/sprites/units/MiniPrinceMan/04MiniPrinceMan_02_02_01.png",
		"sprites/units/MiniPrinceMan/04MiniPrinceMan_02_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_138)

	 __recovered_scope_0.var_7_139 = {
		idle = {
			speed = 0.15,
			frames = 8,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 8,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 12,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("카오스", {
		"src/sprites/units/MiniPrinceMan/05MiniPrinceMan_02_02_01_01.png",
		"sprites/units/MiniPrinceMan/05MiniPrinceMan_02_02_01_01.png"
	}, 48, 48, __recovered_scope_0.var_7_139)

	if var_0_0.units.카오스 then
		var_0_0.units.카오스.shadowScale = 1
		var_0_0.units.카오스.shadowBaseWidth = 26
		var_0_0.units.카오스.shadowPower = 2
	end

	 __recovered_scope_0.var_7_140 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("암흑장군", {
		"src/sprites/units/MiniPrinceMan/03MiniPrinceMan_hp02.png",
		"sprites/units/MiniPrinceMan/03MiniPrinceMan_hp02.png"
	}, 32, 32, __recovered_scope_0.var_7_140)
	__recovered_scope_0.var_7_33("암흑장군 (Darklord)", {
		"src/sprites/units/MiniPrinceMan/03MiniPrinceMan_hp02.png",
		"sprites/units/MiniPrinceMan/03MiniPrinceMan_hp02.png"
	}, 32, 32, __recovered_scope_0.var_7_140)

	 __recovered_scope_0.var_7_141 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("우드워든", {
		"src/sprites/units/MiniPrinceMan/03MiniPrinceMan_hp03.png",
		"sprites/units/MiniPrinceMan/03MiniPrinceMan_hp03.png"
	}, 32, 32, __recovered_scope_0.var_7_141)
	__recovered_scope_0.var_7_33("우드워든 (Wood Warden)", {
		"src/sprites/units/MiniPrinceMan/03MiniPrinceMan_hp03.png",
		"sprites/units/MiniPrinceMan/03MiniPrinceMan_hp03.png"
	}, 32, 32, __recovered_scope_0.var_7_141)

	 __recovered_scope_0.var_7_142 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 9,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("MiniMage", {
		"src/sprites/units/Mage/01Normal/01NormalMage.png",
		"sprites/units/Mage/01Normal/01NormalMage.png"
	}, 32, 32, __recovered_scope_0.var_7_142)

	 __recovered_scope_0.var_7_143 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("안틀러", {
		"src/sprites/units/MiniMage/05MiniMage_02_01_02_01.png",
		"sprites/units/MiniMage/05MiniMage_02_01_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_143)

	 __recovered_scope_0.var_7_144 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 6
		},
		attack4 = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 7
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 8
		},
		death = {
			speed = 0.15,
			frames = 9,
			loop = false,
			row = 9
		}
	}

	__recovered_scope_0.var_7_33("주술사", {
		"src/sprites/units/Mage/01Normal/02NormalMage_01.png",
		"sprites/units/Mage/01Normal/02NormalMage_01.png"
	}, 32, 32, __recovered_scope_0.var_7_144)

	 __recovered_scope_0.var_7_145 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("마도사", {
		"src/sprites/units/Mage/02Advance/01AdvanceMage.png",
		"sprites/units/Mage/02Advance/01AdvanceMage.png"
	}, 32, 32, __recovered_scope_0.var_7_145)

	 __recovered_scope_0.var_7_146 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 8,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("엘프법사", {
		"src/sprites/units/Mage/02Advance/02AdvanceMage_01.png",
		"sprites/units/Mage/02Advance/02AdvanceMage_01.png"
	}, 32, 32, __recovered_scope_0.var_7_146)

	 __recovered_scope_0.var_7_147 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack2 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		attack = {
			speed = 0.08,
			frames = 12,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("야생법사", {
		"src/sprites/units/Mage/02Advance/02AdvanceMage_02.png",
		"sprites/units/Mage/02Advance/02AdvanceMage_02.png"
	}, 32, 32, __recovered_scope_0.var_7_147)

	 __recovered_scope_0.var_7_148 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack2 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		attack = {
			speed = 0.08,
			frames = 12,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("원시법사", {
		"src/sprites/units/Mage/02Advance/03AdvanceMage_02_01.png",
		"sprites/units/Mage/02Advance/03AdvanceMage_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_148)

	 __recovered_scope_0.var_7_149 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("대주술사", {
		"src/sprites/units/Mage/01Normal/03NormalMage_01_01.png",
		"sprites/units/Mage/01Normal/03NormalMage_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_149)

	 __recovered_scope_0.var_7_150 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.068,
			frames = 10,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("치유술사", {
		"src/sprites/units/Mage/01Normal/02NormalMage_02.png",
		"sprites/units/Mage/01Normal/02NormalMage_02.png"
	}, 32, 32, __recovered_scope_0.var_7_150)

	 __recovered_scope_0.var_7_151 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 7,
			loop = true,
			row = 2
		},
		wand = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 3
		},
		jump = {
			speed = 0.12,
			frames = 4,
			loop = false,
			row = 4
		},
		throw = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 5
		},
		attack = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 6
		},
		attack2 = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 7
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 8
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 9
		}
	}

	__recovered_scope_0.var_7_33("대사제", {
		"src/sprites/units/Mage/01Normal/03NormalMage_02_01.png",
		"sprites/units/Mage/01Normal/03NormalMage_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_151)

	 __recovered_scope_0.var_7_152 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("엘프 현자", {
		"src/sprites/units/Mage/02Advance/03AdvanceMage_01_01.png",
		"sprites/units/Mage/02Advance/03AdvanceMage_01_01.png"
	}, 32, 32, __recovered_scope_0.var_7_152)

	 __recovered_scope_0.var_7_153 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("루나 현자", {
		"src/sprites/units/MiniMage/04MiniMage_02_01_02.png",
		"sprites/units/MiniMage/04MiniMage_02_01_02.png"
	}, 32, 32, __recovered_scope_0.var_7_153)

	 __recovered_scope_0.var_7_154 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 8,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("해골 마도사", {
		"src/sprites/units/MiniMage/03MiniMage_02_02.png",
		"sprites/units/MiniMage/03MiniMage_02_02.png"
	}, 32, 32, __recovered_scope_0.var_7_154)

	 __recovered_scope_0.var_7_155 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 8,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("엘프 주술사", {
		"src/sprites/units/MiniMage/02MiniMage_02.png",
		"sprites/units/MiniMage/02MiniMage_02.png"
	}, 32, 32, __recovered_scope_0.var_7_155)

	 __recovered_scope_0.var_7_156 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 8,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("현자 엘프", {
		"src/sprites/units/MiniMage/03MiniMage_hp01.png",
		"sprites/units/MiniMage/03MiniMage_hp01.png"
	}, 32, 32, __recovered_scope_0.var_7_156)
	__recovered_scope_0.var_7_33("현자 엘프 (Elf Sage)", {
		"src/sprites/units/MiniMage/03MiniMage_hp01.png",
		"sprites/units/MiniMage/03MiniMage_hp01.png"
	}, 32, 32, __recovered_scope_0.var_7_156)

	 __recovered_scope_0.var_7_157 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("암흑술사", {
		"src/sprites/units/MiniMage/03MiniMage_hp02.png",
		"sprites/units/MiniMage/03MiniMage_hp02.png"
	}, 32, 32, __recovered_scope_0.var_7_157)
	__recovered_scope_0.var_7_33("암흑술사 (Shadow Sorcerer)", {
		"src/sprites/units/MiniMage/03MiniMage_hp02.png",
		"sprites/units/MiniMage/03MiniMage_hp02.png"
	}, 32, 32, __recovered_scope_0.var_7_157)

	 __recovered_scope_0.var_7_158 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 8,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("본메이지", {
		"src/sprites/units/MiniMage/03MiniMage_hp03.png",
		"sprites/units/MiniMage/03MiniMage_hp03.png"
	}, 32, 32, __recovered_scope_0.var_7_158)
	__recovered_scope_0.var_7_33("본메이지 (Bone Mage)", {
		"src/sprites/units/MiniMage/03MiniMage_hp03.png",
		"sprites/units/MiniMage/03MiniMage_hp03.png"
	}, 32, 32, __recovered_scope_0.var_7_158)

	 __recovered_scope_0.var_7_159 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.1,
			frames = 5,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 3,
			loop = false,
			row = 6
		}
	}
	 __recovered_scope_0.var_7_160 = {
		"src/sprites/enemy/Eyes/01EyeCrawler.png",
		"sprites/enemy/Eyes/01EyeCrawler.png",
		"src/sprites/enemy/Eyes/01Eye Crawler.png",
		"sprites/enemy/Eyes/01Eye Crawler.png"
	}

	__recovered_scope_0.var_7_33("눈알벌레 (Eye Crawler)", __recovered_scope_0.var_7_160, 32, 32, __recovered_scope_0.var_7_159)
	__recovered_scope_0.var_7_33("눈알벌레", __recovered_scope_0.var_7_160, 32, 32, __recovered_scope_0.var_7_159)
	__recovered_scope_0.var_7_33("Eye Crawler", __recovered_scope_0.var_7_160, 32, 32, __recovered_scope_0.var_7_159)

	 __recovered_scope_0.var_7_161 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 2
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 3
		}
	}
	 __recovered_scope_0.var_7_162 = {
		"src/sprites/enemy/Eyes/02EyeBat.png",
		"sprites/enemy/Eyes/02EyeBat.png",
		"src/sprites/enemy/Eyes/02Eye Bat.png",
		"sprites/enemy/Eyes/02Eye Bat.png"
	}

	__recovered_scope_0.var_7_33("눈알박쥐 (Eye Bat)", __recovered_scope_0.var_7_162, 32, 32, __recovered_scope_0.var_7_161)
	__recovered_scope_0.var_7_33("눈알박쥐", __recovered_scope_0.var_7_162, 32, 32, __recovered_scope_0.var_7_161)
	__recovered_scope_0.var_7_33("Eye Bat", __recovered_scope_0.var_7_162, 32, 32, __recovered_scope_0.var_7_161)

	 __recovered_scope_0.var_7_163 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 4,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 8,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.1,
			frames = 5,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 6
		}
	}
	 __recovered_scope_0.var_7_164 = {
		"src/sprites/enemy/Eyes/03Observer.png",
		"sprites/enemy/Eyes/03Observer.png",
		"src/sprites/enemy/Eyes/03 Observer.png",
		"sprites/enemy/Eyes/03 Observer.png"
	}

	__recovered_scope_0.var_7_33("감시자 (Observer)", __recovered_scope_0.var_7_164, 32, 32, __recovered_scope_0.var_7_163)
	__recovered_scope_0.var_7_33("감시자", __recovered_scope_0.var_7_164, 32, 32, __recovered_scope_0.var_7_163)
	__recovered_scope_0.var_7_33("Observer", __recovered_scope_0.var_7_164, 32, 32, __recovered_scope_0.var_7_163)

	 __recovered_scope_0.var_7_165 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 4,
			loop = true,
			row = 2
		},
		attack3 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.1,
			frames = 5,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 6
		}
	}
	 __recovered_scope_0.var_7_166 = {
		"src/sprites/enemy/Eyes/04Gazer.png",
		"sprites/enemy/Eyes/04Gazer.png",
		"src/sprites/enemy/Eyes/04 Gazer.png",
		"sprites/enemy/Eyes/04 Gazer.png"
	}

	__recovered_scope_0.var_7_33("응시자 (Gazer)", __recovered_scope_0.var_7_166, 32, 32, __recovered_scope_0.var_7_165)
	__recovered_scope_0.var_7_33("응시자", __recovered_scope_0.var_7_166, 32, 32, __recovered_scope_0.var_7_165)
	__recovered_scope_0.var_7_33("Gazer", __recovered_scope_0.var_7_166, 32, 32, __recovered_scope_0.var_7_165)

	 __recovered_scope_0.var_7_167 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 2
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 4
		}
	}
	 __recovered_scope_0.var_7_168 = {
		"src/sprites/enemy/Eyes/05StingerBat.png",
		"sprites/enemy/Eyes/05StingerBat.png",
		"src/sprites/enemy/Eyes/05 Stinger Bat.png",
		"sprites/enemy/Eyes/05 Stinger Bat.png"
	}

	__recovered_scope_0.var_7_33("독침박쥐 (Stinger Bat)", __recovered_scope_0.var_7_168, 32, 32, __recovered_scope_0.var_7_167)
	__recovered_scope_0.var_7_33("독침박쥐", __recovered_scope_0.var_7_168, 32, 32, __recovered_scope_0.var_7_167)
	__recovered_scope_0.var_7_33("Stinger Bat", __recovered_scope_0.var_7_168, 32, 32, __recovered_scope_0.var_7_167)

	 __recovered_scope_0.var_7_169 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 4,
			loop = true,
			row = 2
		},
		attack = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 3
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 4
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 5
		},
		change = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 6
		}
	}
	 __recovered_scope_0.var_7_170 = {
		"src/sprites/enemy/Eyes/06Deceiver.png",
		"sprites/enemy/Eyes/06Deceiver.png",
		"src/sprites/enemy/Eyes/06 Deceiver.png",
		"sprites/enemy/Eyes/06 Deceiver.png"
	}

	__recovered_scope_0.var_7_33("기만자 (Deceiver)", __recovered_scope_0.var_7_170, 32, 32, __recovered_scope_0.var_7_169)
	__recovered_scope_0.var_7_33("기만자", __recovered_scope_0.var_7_170, 32, 32, __recovered_scope_0.var_7_169)
	__recovered_scope_0.var_7_33("Deceiver", __recovered_scope_0.var_7_170, 32, 32, __recovered_scope_0.var_7_169)

	 __recovered_scope_0.var_7_171 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 4,
			loop = true,
			row = 2
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 3
		},
		attack2 = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 6
		},
		change = {
			speed = 0.12,
			frames = 6,
			loop = false,
			row = 7
		}
	}
	 __recovered_scope_0.var_7_172 = {
		"src/sprites/enemy/Eyes/06Deceiver02.png",
		"sprites/enemy/Eyes/06Deceiver02.png",
		"src/sprites/enemy/Eyes/06 Deceiver02.png",
		"sprites/enemy/Eyes/06 Deceiver02.png"
	}

	__recovered_scope_0.var_7_33("DeceiverForm2", __recovered_scope_0.var_7_172, 32, 32, __recovered_scope_0.var_7_171)
	__recovered_scope_0.var_7_33("기만자 폼2", __recovered_scope_0.var_7_172, 32, 32, __recovered_scope_0.var_7_171)
	__recovered_scope_0.var_7_33("기만자 (Deceiver) 폼2", __recovered_scope_0.var_7_172, 32, 32, __recovered_scope_0.var_7_171)
	__recovered_scope_0.var_7_33("Deceiver Form2", __recovered_scope_0.var_7_172, 32, 32, __recovered_scope_0.var_7_171)

	 __recovered_scope_0.var_7_173 = {
		idle = {
			speed = 0.15,
			y = 0,
			loop = true,
			frames = 4
		},
		walk = {
			speed = 0.15,
			y = 0,
			loop = true,
			frames = 4
		},
		blink = {
			speed = 0.12,
			y = 32,
			loop = false,
			frames = 3
		},
		hit = {
			speed = 0.12,
			y = 32,
			loop = false,
			frames = 3
		},
		attack = {
			speed = 0.08,
			y = 64,
			loop = false,
			frames = 3
		},
		skill = {
			speed = 0.08,
			y = 96,
			loop = false,
			frames = 9
		},
		death = {
			speed = 0.15,
			y = 128,
			loop = false,
			frames = 4
		}
	}
	 __recovered_scope_0.var_7_174 = {
		"src/sprites/enemy/Eyes/07EyeMatron.png",
		"sprites/enemy/Eyes/07EyeMatron.png",
		"src/sprites/enemy/Eyes/07 EyeMatron.png",
		"sprites/enemy/Eyes/07 EyeMatron.png",
		"src/sprites/enemy/Eyes/07 Eye Matron.png",
		"sprites/enemy/Eyes/07 Eye Matron.png"
	}

	__recovered_scope_0.var_7_33("박쥐어미 (Bat Matron)", __recovered_scope_0.var_7_174, 32, 32, __recovered_scope_0.var_7_173)
	__recovered_scope_0.var_7_33("박쥐어미", __recovered_scope_0.var_7_174, 32, 32, __recovered_scope_0.var_7_173)
	__recovered_scope_0.var_7_33("Bat Matron", __recovered_scope_0.var_7_174, 32, 32, __recovered_scope_0.var_7_173)

	 __recovered_scope_0.var_7_175 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.1,
			frames = 10,
			loop = false,
			row = 6
		}
	}
	 __recovered_scope_0.var_7_176 = {
		"src/sprites/enemy/Eyes/08CaveBrute.png",
		"sprites/enemy/Eyes/08CaveBrute.png",
		"src/sprites/enemy/Eyes/08 CaveBrute.png",
		"sprites/enemy/Eyes/08 CaveBrute.png",
		"src/sprites/enemy/Eyes/08 Cave Brute.png",
		"sprites/enemy/Eyes/08 Cave Brute.png"
	}

	__recovered_scope_0.var_7_33("동굴괴수 (Cave Brute)", __recovered_scope_0.var_7_176, 32, 32, __recovered_scope_0.var_7_175)
	__recovered_scope_0.var_7_33("동굴괴수", __recovered_scope_0.var_7_176, 32, 32, __recovered_scope_0.var_7_175)
	__recovered_scope_0.var_7_33("Cave Brute", __recovered_scope_0.var_7_176, 32, 32, __recovered_scope_0.var_7_175)

	var_0_0._eyeWarlockAnimations = {
		idle = {
			speed = 0.15,
			y = 0,
			loop = true,
			frames = 7
		},
		walk = {
			speed = 0.15,
			y = 0,
			loop = true,
			frames = 7
		},
		attack = {
			speed = 0.08,
			y = 32,
			loop = false,
			frames = 5
		},
		attack2 = {
			speed = 0.14,
			y = 64,
			loop = false,
			frames = 7
		},
		death = {
			speed = 0.12,
			y = 96,
			loop = false,
			frames = 6
		}
	}
	var_0_0._eyeWarlockPaths = {
		"src/sprites/enemy/Eyes/09EyeWarlock.png",
		"sprites/enemy/Eyes/09EyeWarlock.png",
		"src/sprites/enemy/Eyes/09 EyeWarlock.png",
		"sprites/enemy/Eyes/09 EyeWarlock.png",
		"src/sprites/enemy/Eyes/09 Eye Warlock.png",
		"sprites/enemy/Eyes/09 Eye Warlock.png"
	}

	__recovered_scope_0.var_7_33("눈알 마도사 (Eye Warlock)", var_0_0._eyeWarlockPaths, 32, 32, var_0_0._eyeWarlockAnimations)
	__recovered_scope_0.var_7_33("눈알 마도사", var_0_0._eyeWarlockPaths, 32, 32, var_0_0._eyeWarlockAnimations)
	__recovered_scope_0.var_7_33("Eye Warlock", var_0_0._eyeWarlockPaths, 32, 32, var_0_0._eyeWarlockAnimations)

	var_0_0._eyeWarlockPaths = nil
	var_0_0._eyeWarlockAnimations = nil
	var_0_0._caveDevourerAnimations = {
		idle = {
			speed = 0.15,
			y = 0,
			loop = true,
			frames = 4
		},
		walk = {
			speed = 0.1,
			y = 32,
			loop = true,
			frames = 5
		},
		attack = {
			speed = 0.08,
			y = 64,
			loop = false,
			frames = 4
		},
		attack2 = {
			speed = 0.15,
			y = 96,
			loop = false,
			frames = 6
		},
		death = {
			speed = 0.1,
			y = 128,
			loop = false,
			frames = 10
		}
	}
	var_0_0._caveDevourerPaths = {
		"src/sprites/enemy/Eyes/10CaveDevourer.png",
		"sprites/enemy/Eyes/10CaveDevourer.png",
		"src/sprites/enemy/Eyes/10 CaveDevourer.png",
		"sprites/enemy/Eyes/10 CaveDevourer.png",
		"src/sprites/enemy/Eyes/10 Cave Devourer.png",
		"sprites/enemy/Eyes/10 Cave Devourer.png"
	}

	__recovered_scope_0.var_7_33("동굴 포식자 (Cave Devourer)", var_0_0._caveDevourerPaths, 32, 32, var_0_0._caveDevourerAnimations)
	__recovered_scope_0.var_7_33("동굴 포식자", var_0_0._caveDevourerPaths, 32, 32, var_0_0._caveDevourerAnimations)
	__recovered_scope_0.var_7_33("Cave Devourer", var_0_0._caveDevourerPaths, 32, 32, var_0_0._caveDevourerAnimations)

	var_0_0._caveDevourerPaths = nil
	var_0_0._caveDevourerAnimations = nil

	 __recovered_scope_0.var_7_177 = {
		idle = {
			speed = 0.12,
			frames = 6,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.15,
			frames = 6,
			loop = true,
			row = 1
		},
		bite = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 2
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 3
		},
		attack2 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.1,
			frames = 6,
			loop = false,
			row = 6
		},
		face = {
			speed = 0.15,
			frames = 1,
			loop = true,
			row = 7
		}
	}
	 __recovered_scope_0.var_7_178 = {
		"src/sprites/enemy/Eyes/boss/01Beholder.png",
		"sprites/enemy/Eyes/boss/01Beholder.png"
	}

	__recovered_scope_0.var_7_33("백안왕 (Beholder)", __recovered_scope_0.var_7_178, 48, 48, __recovered_scope_0.var_7_177)
	__recovered_scope_0.var_7_33("백안왕", __recovered_scope_0.var_7_178, 48, 48, __recovered_scope_0.var_7_177)
	__recovered_scope_0.var_7_33("Beholder", __recovered_scope_0.var_7_178, 48, 48, __recovered_scope_0.var_7_177)
	require("src.data.asset2").registerUnitSprites(__recovered_scope_0.var_7_33)

	 __recovered_scope_0.var_7_179 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 4,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("MiniGoblin", {
		"sprites/enemy/Orcs/MiniGoblin.png",
		"src/sprites/enemy/Orcs/MiniGoblin.png"
	}, 32, 32, __recovered_scope_0.var_7_179)

	 __recovered_scope_0.var_7_180 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.1,
			frames = 4,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.1,
			frames = 4,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("MiniGoblinThief", {
		"sprites/enemy/Orcs/MiniGoblinThief.png",
		"src/sprites/enemy/Orcs/MiniGoblinThief.png"
	}, 32, 32, __recovered_scope_0.var_7_180)

	 __recovered_scope_0.var_7_181 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.1,
			frames = 5,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("MiniOrc", {
		"sprites/enemy/Orcs/MiniOrc.png",
		"src/sprites/enemy/Orcs/MiniOrc.png"
	}, 32, 32, __recovered_scope_0.var_7_181)

	 __recovered_scope_0.var_7_182 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.1,
			frames = 5,
			loop = false,
			row = 4
		},
		shield = {
			speed = 0.1,
			frames = 5,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("Charge Orc", {
		"src/sprites/enemy/Orcs/MiniOrcWarrior.png",
		"sprites/enemy/Orcs/MiniOrcWarrior.png"
	}, 32, 32, __recovered_scope_0.var_7_182)
	__recovered_scope_0.var_7_33("돌격 오크", {
		"src/sprites/enemy/Orcs/MiniOrcWarrior.png",
		"sprites/enemy/Orcs/MiniOrcWarrior.png"
	}, 32, 32, __recovered_scope_0.var_7_182)

	 __recovered_scope_0.var_7_183 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.1,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.1,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("Orc Axe Raider", {
		"sprites/enemy/Orcs/MiniOrcAxeThrower.png",
		"src/sprites/enemy/Orcs/MiniOrcAxeThrower.png"
	}, 32, 32, __recovered_scope_0.var_7_183)
	__recovered_scope_0.var_7_33("오크 습격자", {
		"sprites/enemy/Orcs/MiniOrcAxeThrower.png",
		"src/sprites/enemy/Orcs/MiniOrcAxeThrower.png"
	}, 32, 32, __recovered_scope_0.var_7_183)

	 __recovered_scope_0.var_7_184 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.1,
			frames = 5,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("Orc Veteran", {
		"sprites/enemy/Orcs/MiniOrcVeteran.png",
		"src/sprites/enemy/Orcs/MiniOrcVeteran.png"
	}, 32, 32, __recovered_scope_0.var_7_184)
	__recovered_scope_0.var_7_33("정예 오크", {
		"sprites/enemy/Orcs/MiniOrcVeteran.png",
		"src/sprites/enemy/Orcs/MiniOrcVeteran.png"
	}, 32, 32, __recovered_scope_0.var_7_184)
	__recovered_scope_0.var_7_33("(정예 오크) Orc Veteran", {
		"sprites/enemy/Orcs/MiniOrcVeteran.png",
		"src/sprites/enemy/Orcs/MiniOrcVeteran.png"
	}, 32, 32, __recovered_scope_0.var_7_184)

	 __recovered_scope_0.var_7_185 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("Grimwolf Orc", {
		"src/sprites/enemy/Orcs/boss/MiniOrcShaman.png",
		"sprites/enemy/Orcs/boss/MiniOrcShaman.png"
	}, 32, 32, __recovered_scope_0.var_7_185)
	__recovered_scope_0.var_7_33("그림울프 오크", {
		"src/sprites/enemy/Orcs/boss/MiniOrcShaman.png",
		"sprites/enemy/Orcs/boss/MiniOrcShaman.png"
	}, 32, 32, __recovered_scope_0.var_7_185)

	 __recovered_scope_0.var_7_186 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 4,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("Wolf", {
		"src/sprites/enemy/Orcs/boss/Wolf.png",
		"sprites/enemy/Orcs/boss/Wolf.png"
	}, 32, 32, __recovered_scope_0.var_7_186)
	__recovered_scope_0.var_7_33("늑대", {
		"src/sprites/enemy/Orcs/boss/Wolf.png",
		"sprites/enemy/Orcs/boss/Wolf.png"
	}, 32, 32, __recovered_scope_0.var_7_186)

	 __recovered_scope_0.var_7_187 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 4,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("Warg Orc", {
		"src/sprites/enemy/Orcs/MiniWargRider.png",
		"sprites/enemy/Orcs/MiniWargRider.png",
		"src/sprites/enemy/Orcs/MiniWargRider.PNG",
		"sprites/enemy/Orcs/MiniWargRider.PNG"
	}, 32, 32, __recovered_scope_0.var_7_187)
	__recovered_scope_0.var_7_33("워그 오크", {
		"src/sprites/enemy/Orcs/MiniWargRider.png",
		"sprites/enemy/Orcs/MiniWargRider.png",
		"src/sprites/enemy/Orcs/MiniWargRider.PNG",
		"sprites/enemy/Orcs/MiniWargRider.PNG"
	}, 32, 32, __recovered_scope_0.var_7_187)

	 __recovered_scope_0.var_7_188 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 4,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 6
		},
		attack4 = {
			speed = 0.08,
			frames = 4,
			loop = false,
			row = 7
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 8
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 9
		}
	}

	__recovered_scope_0.var_7_33("Orc Berserker", {
		"src/sprites/enemy/Orcs/MiniOrcBerserker.png",
		"sprites/enemy/Orcs/MiniOrcBerserker.png"
	}, 32, 32, __recovered_scope_0.var_7_188)
	__recovered_scope_0.var_7_33("오크 광전사", {
		"src/sprites/enemy/Orcs/MiniOrcBerserker.png",
		"sprites/enemy/Orcs/MiniOrcBerserker.png"
	}, 32, 32, __recovered_scope_0.var_7_188)

	 __recovered_scope_0.var_7_189 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		shout = {
			speed = 0.1,
			frames = 4,
			loop = false,
			row = 2
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 3
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 4
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 6
		},
		attack3 = {
			speed = 0.07,
			frames = 9,
			loop = false,
			row = 7
		},
		attack4 = {
			speed = 0.06,
			frames = 12,
			loop = false,
			row = 8
		},
		bite = {
			speed = 0.08,
			frames = 4,
			loop = false,
			row = 9
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 10
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 11
		}
	}

	__recovered_scope_0.var_7_33("Howl Orc", {
		"src/sprites/enemy/Orcs/boss/MiniOrcWerewolf.png",
		"sprites/enemy/Orcs/boss/MiniOrcWerewolf.png",
		"src/sprites/enemy/Orcs/boss/MiniOrcWerewolf.PNG",
		"sprites/enemy/Orcs/boss/MiniOrcWerewolf.PNG"
	}, 40, 40, __recovered_scope_0.var_7_189)
	__recovered_scope_0.var_7_33("하울 오크", {
		"src/sprites/enemy/Orcs/boss/MiniOrcWerewolf.png",
		"sprites/enemy/Orcs/boss/MiniOrcWerewolf.png",
		"src/sprites/enemy/Orcs/boss/MiniOrcWerewolf.PNG",
		"sprites/enemy/Orcs/boss/MiniOrcWerewolf.PNG"
	}, 40, 40, __recovered_scope_0.var_7_189)

	 __recovered_scope_0.var_7_190 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 4
		},
		attack4 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		attack2 = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 6
		},
		shout = {
			speed = 0.1,
			frames = 3,
			loop = false,
			row = 7
		},
		attack3 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 8
		},
		attack5 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 9
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 10
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 11
		}
	}

	__recovered_scope_0.var_7_33("Orc Arch Shaman", {
		"src/sprites/enemy/Orcs/boss/MiniOrcPriest.png",
		"sprites/enemy/Orcs/boss/MiniOrcPriest.png"
	}, 32, 32, __recovered_scope_0.var_7_190)
	__recovered_scope_0.var_7_33("오크 대주술사", {
		"src/sprites/enemy/Orcs/boss/MiniOrcPriest.png",
		"sprites/enemy/Orcs/boss/MiniOrcPriest.png"
	}, 32, 32, __recovered_scope_0.var_7_190)
	__recovered_scope_0.var_7_33("오크 대주술사 (Orc Arch Shaman)", {
		"src/sprites/enemy/Orcs/boss/MiniOrcPriest.png",
		"sprites/enemy/Orcs/boss/MiniOrcPriest.png"
	}, 32, 32, __recovered_scope_0.var_7_190)

	 __recovered_scope_0.var_7_191 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("Orc_War_Chief", {
		"src/sprites/enemy/Orcs/MiniOrcWarChief.png",
		"sprites/enemy/Orcs/MiniOrcWarChief.png",
		"src/sprites/enemy/Orcs/MiniOrcWarChief.PNG",
		"sprites/enemy/Orcs/MiniOrcWarChief.PNG"
	}, 32, 32, __recovered_scope_0.var_7_191)
	__recovered_scope_0.var_7_33("오크 족장", {
		"src/sprites/enemy/Orcs/MiniOrcWarChief.png",
		"sprites/enemy/Orcs/MiniOrcWarChief.png",
		"src/sprites/enemy/Orcs/MiniOrcWarChief.PNG",
		"sprites/enemy/Orcs/MiniOrcWarChief.PNG"
	}, 32, 32, __recovered_scope_0.var_7_191)
	__recovered_scope_0.var_7_33("Orc War Chief", {
		"src/sprites/enemy/Orcs/MiniOrcWarChief.png",
		"sprites/enemy/Orcs/MiniOrcWarChief.png",
		"src/sprites/enemy/Orcs/MiniOrcWarChief.PNG",
		"sprites/enemy/Orcs/MiniOrcWarChief.PNG"
	}, 32, 32, __recovered_scope_0.var_7_191)

	 __recovered_scope_0.var_7_192 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 4,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("Goblin Rider", {
		"src/sprites/enemy/Orcs/MiniWolfRider.png",
		"sprites/enemy/Orcs/MiniWolfRider.png",
		"src/sprites/enemy/Orcs/MiniWolfRider.PNG",
		"sprites/enemy/Orcs/MiniWolfRider.PNG"
	}, 32, 32, __recovered_scope_0.var_7_192)
	__recovered_scope_0.var_7_33("고블린 라이더", {
		"src/sprites/enemy/Orcs/MiniWolfRider.png",
		"sprites/enemy/Orcs/MiniWolfRider.png",
		"src/sprites/enemy/Orcs/MiniWolfRider.PNG",
		"sprites/enemy/Orcs/MiniWolfRider.PNG"
	}, 32, 32, __recovered_scope_0.var_7_192)

	 __recovered_scope_0.var_7_193 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 4,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("MiniWolfRider", {
		"src/sprites/enemy/Orcs/MiniWolfRider.png",
		"sprites/enemy/Orcs/MiniWolfRider.png",
		"src/sprites/enemy/Orcs/MiniWolfRider.PNG",
		"sprites/enemy/Orcs/MiniWolfRider.PNG"
	}, 32, 32, __recovered_scope_0.var_7_193)

	 __recovered_scope_0.var_7_194 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 4,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("협곡 랩터 (Canyon Raptor)", {
		"src/sprites/enemy/Lizard/01CanyonRaptor.png",
		"sprites/enemy/Lizard/01CanyonRaptor.png"
	}, 40, 40, __recovered_scope_0.var_7_194)
	__recovered_scope_0.var_7_33("Canyon Raptor", {
		"src/sprites/enemy/Lizard/01CanyonRaptor.png",
		"sprites/enemy/Lizard/01CanyonRaptor.png"
	}, 40, 40, __recovered_scope_0.var_7_194)

	 __recovered_scope_0.var_7_195 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 4,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 8,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("도끼 리자드 (Axe Lizard)", {
		"src/sprites/enemy/Lizard/02AxeLizard.png",
		"sprites/enemy/Lizard/02AxeLizard.png"
	}, 32, 32, __recovered_scope_0.var_7_195)
	__recovered_scope_0.var_7_33("Axe Lizard", {
		"src/sprites/enemy/Lizard/02AxeLizard.png",
		"sprites/enemy/Lizard/02AxeLizard.png"
	}, 32, 32, __recovered_scope_0.var_7_195)

	 __recovered_scope_0.var_7_196 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 4,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 8,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("리자드 사냥꾼 (Lizard Hunter)", {
		"src/sprites/enemy/Lizard/03LizardHunter.png",
		"sprites/enemy/Lizard/03LizardHunter.png"
	}, 32, 32, __recovered_scope_0.var_7_196)
	__recovered_scope_0.var_7_33("Lizard Hunter", {
		"src/sprites/enemy/Lizard/03LizardHunter.png",
		"sprites/enemy/Lizard/03LizardHunter.png"
	}, 32, 32, __recovered_scope_0.var_7_196)

	var_0_0.firebreatherAnimations = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 6,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 8,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("불숨 리자드 (Firebreather)", {
		"src/sprites/enemy/Lizard/04Firebreather.png",
		"sprites/enemy/Lizard/04Firebreather.png"
	}, 32, 32, var_0_0.firebreatherAnimations)
	__recovered_scope_0.var_7_33("Firebreather", {
		"src/sprites/enemy/Lizard/04Firebreather.png",
		"sprites/enemy/Lizard/04Firebreather.png"
	}, 32, 32, var_0_0.firebreatherAnimations)

	var_0_0.lizardGuardAnimations = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 4,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 8,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("리자드 수호병 (Lizard Guard)", {
		"src/sprites/enemy/Lizard/05LizardGuard.png",
		"sprites/enemy/Lizard/05LizardGuard.png"
	}, 32, 32, var_0_0.lizardGuardAnimations)
	__recovered_scope_0.var_7_33("Lizard Guard", {
		"src/sprites/enemy/Lizard/05LizardGuard.png",
		"sprites/enemy/Lizard/05LizardGuard.png"
	}, 32, 32, var_0_0.lizardGuardAnimations)

	var_0_0.lizardBruteAnimations = {
		idle = {
			speed = 0.15,
			frames = 5,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 5,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 12,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 9,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("거대 리자드 (Lizard Brute)", {
		"src/sprites/enemy/Lizard/06LizardBrute.png",
		"sprites/enemy/Lizard/06LizardBrute.png"
	}, 64, 32, var_0_0.lizardBruteAnimations)
	__recovered_scope_0.var_7_33("Lizard Brute", {
		"src/sprites/enemy/Lizard/06LizardBrute.png",
		"sprites/enemy/Lizard/06LizardBrute.png"
	}, 64, 32, var_0_0.lizardBruteAnimations)

	var_0_0.lizardShamanAnimations = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 4,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.1,
			frames = 8,
			loop = false,
			row = 4
		},
		attack3 = {
			speed = 0.08,
			frames = 10,
			loop = false,
			row = 5
		},
		attack2 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 8,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("리자드 주술사 (Lizard Shaman)", {
		"src/sprites/enemy/Lizard/07LizardShaman.png",
		"sprites/enemy/Lizard/07LizardShaman.png"
	}, 32, 32, var_0_0.lizardShamanAnimations)
	__recovered_scope_0.var_7_33("Lizard Shaman", {
		"src/sprites/enemy/Lizard/07LizardShaman.png",
		"sprites/enemy/Lizard/07LizardShaman.png"
	}, 32, 32, var_0_0.lizardShamanAnimations)

	var_0_0.greatswordRiderAnimations = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.17,
			frames = 5,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 7
		},
		death2 = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("대검 기수 (Greatsword Rider)", {
		"src/sprites/enemy/Lizard/08GreatswordRider.png",
		"sprites/enemy/Lizard/08GreatswordRider.png"
	}, 40, 40, var_0_0.greatswordRiderAnimations)
	__recovered_scope_0.var_7_33("Greatsword Rider", {
		"src/sprites/enemy/Lizard/08GreatswordRider.png",
		"sprites/enemy/Lizard/08GreatswordRider.png"
	}, 40, 40, var_0_0.greatswordRiderAnimations)

	var_0_0.crimsonRaptorAnimations = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 4,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("붉은 랩터 (Crimson Raptor)", {
		"src/sprites/enemy/Lizard/09CrimsonRaptor.png",
		"sprites/enemy/Lizard/09CrimsonRaptor.png"
	}, 40, 40, var_0_0.crimsonRaptorAnimations)
	__recovered_scope_0.var_7_33("Crimson Raptor", {
		"src/sprites/enemy/Lizard/09CrimsonRaptor.png",
		"sprites/enemy/Lizard/09CrimsonRaptor.png"
	}, 40, 40, var_0_0.crimsonRaptorAnimations)

	var_0_0.lizardWarlordAnimations = {
		idle = {
			speed = 0.15,
			frames = 5,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 5,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 9,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("리자드 군벌 (Lizard Warlord)", {
		"src/sprites/enemy/Lizard/10LizardWarlord.png",
		"sprites/enemy/Lizard/10LizardWarlord.png"
	}, 64, 32, var_0_0.lizardWarlordAnimations)
	__recovered_scope_0.var_7_33("Lizard Warlord", {
		"src/sprites/enemy/Lizard/10LizardWarlord.png",
		"sprites/enemy/Lizard/10LizardWarlord.png"
	}, 64, 32, var_0_0.lizardWarlordAnimations)

	var_0_0.dragonkinShamanAnimations = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 6,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 12,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.07,
			frames = 20,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 12,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 8,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("용혈 주술사 (Dragonkin Shaman)", {
		"src/sprites/enemy/Lizard/boss/01DragonkinShaman.png",
		"sprites/enemy/Lizard/boss/01DragonkinShaman.png"
	}, 32, 32, var_0_0.dragonkinShamanAnimations)
	__recovered_scope_0.var_7_33("Dragonkin Shaman", {
		"src/sprites/enemy/Lizard/boss/01DragonkinShaman.png",
		"sprites/enemy/Lizard/boss/01DragonkinShaman.png"
	}, 32, 32, var_0_0.dragonkinShamanAnimations)

	 __recovered_scope_0.var_7_197 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 4,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 4,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("마른 하이에나 (Dust Hyena)", {
		"src/sprites/enemy/Gnolls/01DustHyena.png",
		"sprites/enemy/Gnolls/01DustHyena.png"
	}, 32, 32, __recovered_scope_0.var_7_197)

	 __recovered_scope_0.var_7_198 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("궁수 놀 (Gnoll Archer)", {
		"src/sprites/enemy/Gnolls/02GnollArcher.png",
		"sprites/enemy/Gnolls/02GnollArcher.png"
	}, 32, 32, __recovered_scope_0.var_7_198)

	 __recovered_scope_0.var_7_199 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 5
		},
		shield = {
			speed = 0.1,
			frames = 5,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("방패 놀 (Shield Gnoll)", {
		"src/sprites/enemy/Gnolls/03ShieldGnoll.png",
		"sprites/enemy/Gnolls/03ShieldGnoll.png"
	}, 32, 32, __recovered_scope_0.var_7_199)

	 __recovered_scope_0.var_7_200 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 5,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("황무지 전사 (Wasteland Warrior)", {
		"src/sprites/enemy/Gnolls/04WastelandWarrior.png",
		"sprites/enemy/Gnolls/04WastelandWarrior.png"
	}, 32, 32, __recovered_scope_0.var_7_200)

	 __recovered_scope_0.var_7_201 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("피냄새 암살자 (Blood Assassin)", {
		"src/sprites/enemy/Gnolls/05BloodscentAssassin.png",
		"sprites/enemy/Gnolls/05BloodscentAssassin.png"
	}, 32, 32, __recovered_scope_0.var_7_201)

	 __recovered_scope_0.var_7_202 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 8,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("광폭 놀 (Gnoll Berserker)", {
		"src/sprites/enemy/Gnolls/06GnollBerserker.png",
		"sprites/enemy/Gnolls/06GnollBerserker.png"
	}, 32, 32, __recovered_scope_0.var_7_202)

	 __recovered_scope_0.var_7_203 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 13,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("광소술사 (Cackle Shaman)", {
		"src/sprites/enemy/Gnolls/07CackleShaman.png",
		"sprites/enemy/Gnolls/07CackleShaman.png"
	}, 32, 32, __recovered_scope_0.var_7_203)

	 __recovered_scope_0.var_7_204 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.08,
			frames = 11,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 8
		}
	}

	__recovered_scope_0.var_7_33("황무지 전장 (Pack Chief)", {
		"src/sprites/enemy/Gnolls/08PackChief.png",
		"sprites/enemy/Gnolls/08PackChief.png"
	}, 32, 32, __recovered_scope_0.var_7_204)

	 __recovered_scope_0.var_7_205 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 4,
			loop = true,
			row = 2
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 3
		},
		attack2 = {
			speed = 0.14,
			frames = 8,
			loop = false,
			row = 4
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 5
		},
		death2 = {
			speed = 0.15,
			frames = 8,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("황야검치 (Dunefang)", {
		"src/sprites/enemy/Gnolls/boss/01Dunefang.png",
		"sprites/enemy/Gnolls/boss/01Dunefang.png"
	}, 32, 32, __recovered_scope_0.var_7_205)

	 __recovered_scope_0.var_7_206 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 3
		},
		attack2 = {
			speed = 0.13,
			frames = 6,
			loop = false,
			row = 4
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 5
		}
	}

	__recovered_scope_0.var_7_33("혈꼬리 (Bloodtail)", {
		"src/sprites/enemy/Gnolls/boss/02Bloodtail.png",
		"sprites/enemy/Gnolls/boss/02Bloodtail.png"
	}, 40, 40, __recovered_scope_0.var_7_206)

	 __recovered_scope_0.var_7_207 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 4,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("황야의 피리꾼 (Wasteland Piper)", {
		"src/sprites/enemy/Gnolls/boss/03WastelandPiper.png",
		"sprites/enemy/Gnolls/boss/03WastelandPiper.png"
	}, 64, 48, __recovered_scope_0.var_7_207)

	if var_0_0.units["황야의 피리꾼 (Wasteland Piper)"] then
		local var_7_208 = var_0_0.units["황야의 피리꾼 (Wasteland Piper)"]

		var_7_208.shadowWidthPx = 43
		var_7_208.shadowHeightPx = 7
		var_7_208.shadowOffsetXPx = 1.5
	end

	var_0_0.backgrounds = var_0_0.backgrounds or {}

	 function __recovered_scope_0.var_7_209(arg_14_0, arg_14_1)
		local var_14_0 = {}
		local var_14_1 = {}

		for iter_14_0 = 0, 5 do
			local var_14_2 = string.format("%s/%d.png", arg_14_1, iter_14_0)
			local var_14_3 = {
				var_14_2,
				var_14_2:gsub("^src/", ""),
				"src/" .. var_14_2
			}
			local var_14_4, var_14_5 = var_0_5(var_14_3)

			if var_14_4 then
				if arg_14_0 == "battlefield4" and iter_14_0 == 4 and love.image and love.image.newImageData then
					local var_14_6, var_14_7 = pcall(love.image.newImageData, var_14_5)

					if var_14_6 and var_14_7 then
						var_14_7:mapPixel(function(arg_15_0, arg_15_1, arg_15_2, arg_15_3, arg_15_4, arg_15_5)
							local var_15_0 = math.floor(arg_15_2 * 255 + 0.5)
							local var_15_1 = math.floor(arg_15_3 * 255 + 0.5)
							local var_15_2 = math.floor(arg_15_4 * 255 + 0.5)

							if arg_15_1 >= 90 and (var_15_0 == 49 and var_15_1 == 56 and var_15_2 == 41 or var_15_0 == 77 and var_15_1 == 82 and var_15_2 == 61) then
								return 0.43137254901960786, 0.45098039215686275, 0.3058823529411765, arg_15_5
							end

							return arg_15_2, arg_15_3, arg_15_4, arg_15_5
						end)

						local var_14_8, var_14_9 = pcall(love.graphics.newImage, var_14_7)

						if var_14_8 and var_14_9 then
							var_14_4 = var_14_9
						end
					end
				end

				var_14_4:setFilter("nearest", "nearest")

				var_14_0[iter_14_0] = {
					image = var_14_4,
					used = var_14_5
				}
			else
				table.insert(var_14_1, var_14_3[1])
			end
		end

		local var_14_10 = string.format("%s/2.5.png", arg_14_1)
		local var_14_11 = {
			var_14_10,
			var_14_10:gsub("^src/", ""),
			"src/" .. var_14_10
		}
		local var_14_12, var_14_13 = var_0_5(var_14_11)

		if var_14_12 then
			var_14_12:setFilter("nearest", "nearest")

			var_14_0[2.5] = {
				image = var_14_12,
				used = var_14_13
			}
		end

		local var_14_14 = {
			layers = var_14_0
		}
		local var_14_15 = string.format("%s/tumbleweed.png", arg_14_1)
		local var_14_16 = {
			var_14_15,
			var_14_15:gsub("^src/", ""),
			"src/" .. var_14_15
		}
		local var_14_17, var_14_18 = var_0_5(var_14_16)

		if var_14_17 then
			var_14_17:setFilter("nearest", "nearest")

			var_14_14.tumbleweed = {
				image = var_14_17,
				used = var_14_18
			}
		end

		local var_14_19 = {}

		for iter_14_1 = 0, 3 do
			local var_14_20 = string.format("%s/split%d.png", arg_14_1, iter_14_1)
			local var_14_21 = {
				var_14_20,
				var_14_20:gsub("^src/", ""),
				"src/" .. var_14_20
			}
			local var_14_22, var_14_23 = var_0_5(var_14_21)

			if var_14_22 then
				var_14_22:setFilter("nearest", "nearest")

				var_14_19[iter_14_1] = {
					image = var_14_22,
					data = var_0_6(var_14_23),
					used = var_14_23
				}
			end
		end

		if next(var_14_19) ~= nil then
			var_14_14.splitFrames = var_14_19
		end

		var_0_0.backgrounds[arg_14_0] = var_14_14
	end

	__recovered_scope_0.var_7_209("battlefield1", "src/sprites/background/battlefield1")
	__recovered_scope_0.var_7_209("battlefield2", "src/sprites/background/battlefield2")
	__recovered_scope_0.var_7_209("battlefield3", "src/sprites/background/battlefield3")
	__recovered_scope_0.var_7_209("battlefield4", "src/sprites/background/battlefield4")
	__recovered_scope_0.var_7_209("battlefield5", "src/sprites/background/battlefield5")
	__recovered_scope_0.var_7_209("battlefield6", "src/sprites/background/battlefield6")

	var_0_0.backgrounds.earthquake = {}

	for iter_7_5 = 1, 7 do
		local var_7_210 = string.format("src/sprites/background/battlefield1/earthquake%d.png", iter_7_5)
		local var_7_211, var_7_212 = var_0_5({
			var_7_210,
			var_7_210:gsub("^src/", "")
		})

		if var_7_211 then
			var_7_211:setFilter("nearest", "nearest")

			var_0_0.backgrounds.earthquake[iter_7_5] = var_7_211
		end
	end

	for iter_7_6, iter_7_7 in ipairs({
		"battlefield1",
		"battlefield2",
		"battlefield3",
		"battlefield4"
	}) do
		if var_0_0.backgrounds[iter_7_7] and var_0_0.backgrounds[iter_7_7].layers and var_0_0.backgrounds[iter_7_7].layers[2.5] then
			var_0_0.backgrounds[iter_7_7].moon = var_0_0.backgrounds[iter_7_7].layers[2.5]
		end
	end

	var_0_0.ui = var_0_0.ui or {}

	 __recovered_scope_0.var_7_213 = {
		"src/sprites/icons/imprinticons/shortsicons/close.png",
		"sprites/icons/imprinticons/shortsicons/close.png"
	}
	 __recovered_scope_0.var_7_214, __recovered_scope_0.var_7_215 = var_0_5(__recovered_scope_0.var_7_213)

	if __recovered_scope_0.var_7_214 then
		var_0_0.ui.timelessDeathIcon = __recovered_scope_0.var_7_214

		print(string.format("[assets] Loaded UI image timelessDeathIcon from %s", __recovered_scope_0.var_7_215))
	end

	 __recovered_scope_0.var_7_216 = {
		"src/sprites/icons/imprinticons/shortsicons/heart.png",
		"sprites/icons/imprinticons/shortsicons/heart.png"
	}
	 __recovered_scope_0.var_7_217, __recovered_scope_0.var_7_218 = var_0_5(__recovered_scope_0.var_7_216)

	if __recovered_scope_0.var_7_217 then
		__recovered_scope_0.var_7_217:setFilter("nearest", "nearest")

		var_0_0.ui.succubusCharmIcon = __recovered_scope_0.var_7_217

		print(string.format("[assets] Loaded UI image succubusCharmIcon from %s", __recovered_scope_0.var_7_218))
	end

	 __recovered_scope_0.var_7_219 = {
		"src/sprites/icons/relics icon/item icons/00 upgrade.png"
	}
	 __recovered_scope_0.var_7_220, __recovered_scope_0.var_7_221 = var_0_5(__recovered_scope_0.var_7_219)

	if __recovered_scope_0.var_7_220 then
		__recovered_scope_0.var_7_220:setFilter("nearest", "nearest")

		var_0_0.ui.itemUpgradeIcon = __recovered_scope_0.var_7_220

		print(string.format("[assets] Loaded UI image itemUpgradeIcon from %s", __recovered_scope_0.var_7_221))
	end

	 __recovered_scope_0.var_7_222 = {
		"src/sprites/background/mainbackground/battlefieldtitle.png",
		"sprites/background/mainbackground/battlefieldtitle.png"
	}
	 __recovered_scope_0.var_7_223, __recovered_scope_0.var_7_224 = var_0_5(__recovered_scope_0.var_7_222)

	if __recovered_scope_0.var_7_223 then
		__recovered_scope_0.var_7_223:setFilter("nearest", "nearest")

		var_0_0.ui.battlefieldTitle = __recovered_scope_0.var_7_223

		print(string.format("[assets] Loaded UI image battlefieldTitle from %s (%dx%d)", __recovered_scope_0.var_7_224, __recovered_scope_0.var_7_223:getWidth(), __recovered_scope_0.var_7_223:getHeight()))
	else
		print("[assets] battlefieldTitle image not found (optional)")
	end

	 __recovered_scope_0.var_7_225 = {
		"src/sprites/background/mainbackground/scroll.png",
		"sprites/background/mainbackground/scroll.png"
	}
	 __recovered_scope_0.var_7_226, __recovered_scope_0.var_7_227 = var_0_5(__recovered_scope_0.var_7_225)

	if __recovered_scope_0.var_7_226 then
		__recovered_scope_0.var_7_226:setFilter("nearest", "nearest")

		local var_7_228 = 23
		local var_7_229 = 28
		local var_7_230 = __recovered_scope_0.var_7_226:getWidth()
		local var_7_231 = __recovered_scope_0.var_7_226:getHeight()
		local var_7_232 = math.max(1, math.floor(var_7_230 / var_7_228))
		local var_7_233 = {}

		for iter_7_8 = 0, var_7_232 - 1 do
			var_7_233[iter_7_8 + 1] = love.graphics.newQuad(iter_7_8 * var_7_228, 0, var_7_228, var_7_229, var_7_230, var_7_231)
		end

		local var_7_234, var_7_235 = pcall(love.image.newImageData, __recovered_scope_0.var_7_227)

		if not var_7_234 then
			var_7_235 = nil
		end

		var_0_0.ui.scrollIntroAnim = {
			image = __recovered_scope_0.var_7_226,
			imageData = var_7_235,
			frameW = var_7_228,
			frameH = var_7_229,
			frameCount = var_7_232,
			quads = var_7_233
		}

		print(string.format("[assets] Loaded scroll intro anim from %s (%d frames, %dx%d each)", __recovered_scope_0.var_7_227, var_7_232, var_7_228, var_7_229))
	else
		print("[assets] scroll intro anim image not found (optional)")
	end

	 __recovered_scope_0.var_7_236 = {
		"src/sprites/background/mainbackground/corescrollshadow.png",
		"sprites/background/mainbackground/corescrollshadow.png"
	}
	 __recovered_scope_0.var_7_237, __recovered_scope_0.var_7_238 = var_0_5(__recovered_scope_0.var_7_236)

	if __recovered_scope_0.var_7_237 then
		__recovered_scope_0.var_7_237:setFilter("nearest", "nearest")

		var_0_0.ui.coreScrollShadow = __recovered_scope_0.var_7_237

		print(string.format("[assets] Loaded UI image coreScrollShadow from %s (%dx%d)", __recovered_scope_0.var_7_238, __recovered_scope_0.var_7_237:getWidth(), __recovered_scope_0.var_7_237:getHeight()))
	else
		print("[assets] coreScrollShadow image not found (optional)")
	end

	 __recovered_scope_0.var_7_239 = {
		"src/sprites/background/mainbackground/corescroll.png",
		"sprites/background/mainbackground/corescroll.png"
	}
	 __recovered_scope_0.var_7_240, __recovered_scope_0.var_7_241 = var_0_5(__recovered_scope_0.var_7_239)

	if __recovered_scope_0.var_7_240 then
		__recovered_scope_0.var_7_240:setFilter("nearest", "nearest")

		var_0_0.ui.coreScroll = __recovered_scope_0.var_7_240

		local var_7_242, var_7_243 = pcall(love.image.newImageData, __recovered_scope_0.var_7_241)

		if var_7_242 and var_7_243 then
			var_0_0.ui.coreScrollData = var_7_243
		end

		print(string.format("[assets] Loaded UI image coreScroll from %s (%dx%d)", __recovered_scope_0.var_7_241, __recovered_scope_0.var_7_240:getWidth(), __recovered_scope_0.var_7_240:getHeight()))
	else
		print("[assets] coreScroll image not found (optional)")
	end

	 __recovered_scope_0.var_7_244 = {
		"src/sprites/background/mainbackground/corescrollmessage.png",
		"sprites/background/mainbackground/corescrollmessage.png"
	}
	 __recovered_scope_0.var_7_245, __recovered_scope_0.var_7_246 = var_0_5(__recovered_scope_0.var_7_244)

	if __recovered_scope_0.var_7_245 then
		__recovered_scope_0.var_7_245:setFilter("nearest", "nearest")

		var_0_0.ui.coreScrollMessage = __recovered_scope_0.var_7_245

		print(string.format("[assets] Loaded UI image coreScrollMessage from %s (%dx%d)", __recovered_scope_0.var_7_246, __recovered_scope_0.var_7_245:getWidth(), __recovered_scope_0.var_7_245:getHeight()))
	else
		print("[assets] coreScrollMessage image not found (optional)")
	end

	 __recovered_scope_0.var_7_247 = {
		"src/sprites/background/mainbackground/informationrope.png",
		"sprites/background/mainbackground/informationrope.png"
	}
	 __recovered_scope_0.var_7_248, __recovered_scope_0.var_7_249 = var_0_5(__recovered_scope_0.var_7_247)

	if __recovered_scope_0.var_7_248 then
		__recovered_scope_0.var_7_248:setFilter("nearest", "nearest")

		var_0_0.ui.informationRope = __recovered_scope_0.var_7_248

		print(string.format("[assets] Loaded UI image informationRope from %s (%dx%d)", __recovered_scope_0.var_7_249, __recovered_scope_0.var_7_248:getWidth(), __recovered_scope_0.var_7_248:getHeight()))
	else
		print("[assets] informationRope image not found (optional)")
	end

	 __recovered_scope_0.var_7_250 = {
		"src/sprites/background/mainbackground/informationhitorder.png",
		"sprites/background/mainbackground/informationhitorder.png"
	}
	 __recovered_scope_0.var_7_251, __recovered_scope_0.var_7_252 = var_0_5(__recovered_scope_0.var_7_250)

	if __recovered_scope_0.var_7_251 then
		__recovered_scope_0.var_7_251:setFilter("nearest", "nearest")

		var_0_0.ui.informationHitOrder = __recovered_scope_0.var_7_251

		print(string.format("[assets] Loaded UI image informationHitOrder from %s (%dx%d)", __recovered_scope_0.var_7_252, __recovered_scope_0.var_7_251:getWidth(), __recovered_scope_0.var_7_251:getHeight()))
	else
		print("[assets] informationHitOrder image not found (optional)")
	end

	 __recovered_scope_0.var_7_253 = {
		"src/sprites/icons/menu/originite.png",
		"sprites/icons/menu/originite.png"
	}
	 __recovered_scope_0.var_7_254, __recovered_scope_0.var_7_255 = var_0_5(__recovered_scope_0.var_7_253)

	if __recovered_scope_0.var_7_254 then
		__recovered_scope_0.var_7_254:setFilter("nearest", "nearest")

		var_0_0.ui.originiteIcon = __recovered_scope_0.var_7_254

		print(string.format("[assets] Loaded UI image originiteIcon from %s (%dx%d)", __recovered_scope_0.var_7_255, __recovered_scope_0.var_7_254:getWidth(), __recovered_scope_0.var_7_254:getHeight()))
	else
		print("[assets] originiteIcon image not found (optional)")
	end

	 __recovered_scope_0.var_7_256 = {
		"src/sprites/background/button/fastforward.png",
		"sprites/background/button/fastforward.png"
	}
	 __recovered_scope_0.var_7_257, __recovered_scope_0.var_7_258 = var_0_5(__recovered_scope_0.var_7_256)

	if __recovered_scope_0.var_7_257 then
		__recovered_scope_0.var_7_257:setFilter("nearest", "nearest")

		var_0_0.ui.fastForwardButton = __recovered_scope_0.var_7_257

		local var_7_259, var_7_260 = pcall(love.image.newImageData, __recovered_scope_0.var_7_258)

		if var_7_259 and var_7_260 then
			var_0_0.ui.fastForwardButtonData = var_7_260
		end

		print(string.format("[assets] Loaded UI image fastForwardButton from %s (%dx%d)", __recovered_scope_0.var_7_258, __recovered_scope_0.var_7_257:getWidth(), __recovered_scope_0.var_7_257:getHeight()))
	else
		print("[assets] fastForwardButton image not found (optional)")
	end

	 __recovered_scope_0.var_7_261 = {
		"src/sprites/background/button/fastforward2.png",
		"sprites/background/button/fastforward2.png"
	}
	 __recovered_scope_0.var_7_262, __recovered_scope_0.var_7_263 = var_0_5(__recovered_scope_0.var_7_261)

	if __recovered_scope_0.var_7_262 then
		__recovered_scope_0.var_7_262:setFilter("nearest", "nearest")

		var_0_0.ui.fastForwardButtonActive = __recovered_scope_0.var_7_262

		print(string.format("[assets] Loaded UI image fastForwardButtonActive from %s (%dx%d)", __recovered_scope_0.var_7_263, __recovered_scope_0.var_7_262:getWidth(), __recovered_scope_0.var_7_262:getHeight()))
	else
		print("[assets] fastForwardButtonActive image not found (optional)")
	end

	 __recovered_scope_0.var_7_264 = {
		"src/sprites/background/button/fastforwardpressed.png",
		"sprites/background/button/fastforwardpressed.png"
	}
	 __recovered_scope_0.var_7_265, __recovered_scope_0.var_7_266 = var_0_5(__recovered_scope_0.var_7_264)

	if __recovered_scope_0.var_7_265 then
		__recovered_scope_0.var_7_265:setFilter("nearest", "nearest")

		var_0_0.ui.fastForwardButtonPressed = __recovered_scope_0.var_7_265

		print(string.format("[assets] Loaded UI image fastForwardButtonPressed from %s (%dx%d)", __recovered_scope_0.var_7_266, __recovered_scope_0.var_7_265:getWidth(), __recovered_scope_0.var_7_265:getHeight()))
	else
		print("[assets] fastForwardButtonPressed image not found (optional)")
	end

	 __recovered_scope_0.var_7_267 = {
		"src/sprites/background/button/fastforward2pressed.png",
		"sprites/background/button/fastforward2pressed.png"
	}
	 __recovered_scope_0.var_7_268, __recovered_scope_0.var_7_269 = var_0_5(__recovered_scope_0.var_7_267)

	if __recovered_scope_0.var_7_268 then
		__recovered_scope_0.var_7_268:setFilter("nearest", "nearest")

		var_0_0.ui.fastForwardButtonActivePressed = __recovered_scope_0.var_7_268

		print(string.format("[assets] Loaded UI image fastForwardButtonActivePressed from %s (%dx%d)", __recovered_scope_0.var_7_269, __recovered_scope_0.var_7_268:getWidth(), __recovered_scope_0.var_7_268:getHeight()))
	else
		print("[assets] fastForwardButtonActivePressed image not found (optional)")
	end

	 __recovered_scope_0.var_7_270 = {
		"src/sprites/background/mainbackground/information.png",
		"sprites/background/mainbackground/information.png"
	}
	 __recovered_scope_0.var_7_271, __recovered_scope_0.var_7_272 = var_0_5(__recovered_scope_0.var_7_270)

	if __recovered_scope_0.var_7_271 then
		__recovered_scope_0.var_7_271:setFilter("nearest", "nearest")

		var_0_0.ui.information = __recovered_scope_0.var_7_271

		print(string.format("[assets] Loaded UI image information from %s (%dx%d)", __recovered_scope_0.var_7_272, __recovered_scope_0.var_7_271:getWidth(), __recovered_scope_0.var_7_271:getHeight()))
	else
		print("[assets] information image not found (optional)")
	end

	 __recovered_scope_0.var_7_273 = {
		"src/sprites/background/mainbackground/iteminformation.png",
		"sprites/background/mainbackground/iteminformation.png"
	}
	 __recovered_scope_0.var_7_274, __recovered_scope_0.var_7_275 = var_0_5(__recovered_scope_0.var_7_273)

	if __recovered_scope_0.var_7_274 then
		__recovered_scope_0.var_7_274:setFilter("nearest", "nearest")

		var_0_0.ui.itemInformation = __recovered_scope_0.var_7_274

		print(string.format("[assets] Loaded UI image itemInformation from %s (%dx%d)", __recovered_scope_0.var_7_275, __recovered_scope_0.var_7_274:getWidth(), __recovered_scope_0.var_7_274:getHeight()))
	else
		print("[assets] itemInformation image not found (optional)")
	end

	 __recovered_scope_0.var_7_276 = {
		"src/sprites/background/mainbackground/shoprope.png",
		"sprites/background/mainbackground/shoprope.png"
	}
	 __recovered_scope_0.var_7_277, __recovered_scope_0.var_7_278 = var_0_5(__recovered_scope_0.var_7_276)

	if __recovered_scope_0.var_7_277 then
		__recovered_scope_0.var_7_277:setFilter("nearest", "nearest")

		var_0_0.ui.shopRope = __recovered_scope_0.var_7_277

		print(string.format("[assets] Loaded UI image shopRope from %s (%dx%d)", __recovered_scope_0.var_7_278, __recovered_scope_0.var_7_277:getWidth(), __recovered_scope_0.var_7_277:getHeight()))
	else
		print("[assets] shopRope image not found (optional)")
	end

	 __recovered_scope_0.var_7_279 = {
		"src/sprites/background/mainbackground/shoptitle.png",
		"sprites/background/mainbackground/shoptitle.png"
	}
	 __recovered_scope_0.var_7_280, __recovered_scope_0.var_7_281 = var_0_5(__recovered_scope_0.var_7_279)

	if __recovered_scope_0.var_7_280 then
		__recovered_scope_0.var_7_280:setFilter("nearest", "nearest")

		var_0_0.ui.shopTitle = __recovered_scope_0.var_7_280

		print(string.format("[assets] Loaded UI image shopTitle from %s (%dx%d)", __recovered_scope_0.var_7_281, __recovered_scope_0.var_7_280:getWidth(), __recovered_scope_0.var_7_280:getHeight()))
	else
		print("[assets] shopTitle image not found (optional)")
	end

	 __recovered_scope_0.var_7_282 = {
		"src/sprites/background/mainbackground/classtitle.png",
		"sprites/background/mainbackground/classtitle.png"
	}
	 __recovered_scope_0.var_7_283, __recovered_scope_0.var_7_284 = var_0_5(__recovered_scope_0.var_7_282)

	if __recovered_scope_0.var_7_283 then
		__recovered_scope_0.var_7_283:setFilter("nearest", "nearest")

		var_0_0.ui.classTitle = __recovered_scope_0.var_7_283

		local var_7_285, var_7_286 = pcall(love.image.newImageData, __recovered_scope_0.var_7_284)

		if var_7_285 and var_7_286 then
			local var_7_287, var_7_288 = var_7_286:getDimensions()
			local var_7_289 = var_7_287
			local var_7_290 = var_7_288
			local var_7_291 = -1
			local var_7_292 = -1

			for iter_7_9 = 0, var_7_288 - 1 do
				for iter_7_10 = 0, var_7_287 - 1 do
					local var_7_293, var_7_294, var_7_295, var_7_296 = var_7_286:getPixel(iter_7_10, iter_7_9)

					if var_7_296 and var_7_296 > 0.05 then
						if iter_7_10 < var_7_289 then
							var_7_289 = iter_7_10
						end

						if iter_7_9 < var_7_290 then
							var_7_290 = iter_7_9
						end

						if var_7_291 < iter_7_10 then
							var_7_291 = iter_7_10
						end

						if var_7_292 < iter_7_9 then
							var_7_292 = iter_7_9
						end
					end
				end
			end

			if var_7_289 <= var_7_291 and var_7_290 <= var_7_292 then
				var_0_0.ui.classTitleBounds = {
					x = var_7_289,
					y = var_7_290,
					w = var_7_291 - var_7_289 + 1,
					h = var_7_292 - var_7_290 + 1,
					iw = var_7_287,
					ih = var_7_288,
					used = __recovered_scope_0.var_7_284
				}

				local var_7_297, var_7_298 = pcall(love.graphics.newQuad, var_7_289, var_7_290, var_7_291 - var_7_289 + 1, var_7_292 - var_7_290 + 1, var_7_287, var_7_288)

				if var_7_297 and var_7_298 then
					var_0_0.ui.classTitleQuad = var_7_298
				end
			end

			if var_7_286.release then
				pcall(var_7_286.release, var_7_286)
			end
		end

		print(string.format("[assets] Loaded UI image classTitle from %s (%dx%d)", __recovered_scope_0.var_7_284, __recovered_scope_0.var_7_283:getWidth(), __recovered_scope_0.var_7_283:getHeight()))
	else
		print("[assets] classTitle image not found (optional)")
	end

	 __recovered_scope_0.var_7_299 = {
		"src/sprites/background/mainbackground/skillframe.png",
		"sprites/background/mainbackground/skillframe.png"
	}
	 __recovered_scope_0.var_7_300, __recovered_scope_0.var_7_301 = var_0_5(__recovered_scope_0.var_7_299)

	if __recovered_scope_0.var_7_300 then
		__recovered_scope_0.var_7_300:setFilter("nearest", "nearest")

		var_0_0.ui.classCardSkillFrame = __recovered_scope_0.var_7_300

		local var_7_302, var_7_303 = pcall(love.image.newImageData, __recovered_scope_0.var_7_301)

		if var_7_302 and var_7_303 then
			local function var_7_304(arg_16_0, arg_16_1, arg_16_2, arg_16_3, arg_16_4, arg_16_5)
				local var_16_0 = 0.00196078431372549

				return var_16_0 >= math.abs(arg_16_0 - arg_16_3 / 255) and var_16_0 >= math.abs(arg_16_1 - arg_16_4 / 255) and var_16_0 >= math.abs(arg_16_2 - arg_16_5 / 255)
			end

			var_7_303:mapPixel(function(arg_17_0, arg_17_1, arg_17_2, arg_17_3, arg_17_4, arg_17_5)
				if var_7_304(arg_17_2, arg_17_3, arg_17_4, 54, 23, 12) then
					return 0.12156862745098039, 0.1411764705882353, 0.0392156862745098, arg_17_5
				end

				if var_7_304(arg_17_2, arg_17_3, arg_17_4, 80, 80, 80) then
					return 0.36470588235294116, 0.5568627450980392, 0.1803921568627451, arg_17_5
				end

				return arg_17_2, arg_17_3, arg_17_4, arg_17_5
			end)

			local var_7_305, var_7_306 = pcall(love.graphics.newImage, var_7_303)

			if var_7_305 and var_7_306 then
				var_7_306:setFilter("nearest", "nearest")

				var_0_0.ui.classCardSkillFrameAdvanced = var_7_306
			end

			local var_7_307, var_7_308 = pcall(love.image.newImageData, __recovered_scope_0.var_7_301)

			if var_7_307 and var_7_308 then
				var_7_308:mapPixel(function(arg_18_0, arg_18_1, arg_18_2, arg_18_3, arg_18_4, arg_18_5)
					if var_7_304(arg_18_2, arg_18_3, arg_18_4, 54, 23, 12) then
						return 0.027450980392156862, 0.0392156862745098, 0.21176470588235294, arg_18_5
					end

					if var_7_304(arg_18_2, arg_18_3, arg_18_4, 80, 80, 80) then
						return 0.2, 0.2823529411764706, 0.7215686274509804, arg_18_5
					end

					return arg_18_2, arg_18_3, arg_18_4, arg_18_5
				end)

				local var_7_309, var_7_310 = pcall(love.graphics.newImage, var_7_308)

				if var_7_309 and var_7_310 then
					var_7_310:setFilter("nearest", "nearest")

					var_0_0.ui.classCardSkillFrameRare = var_7_310
				end

				if var_7_308.release then
					var_7_308:release()
				end
			end

			local var_7_311, var_7_312 = pcall(love.image.newImageData, __recovered_scope_0.var_7_301)

			if var_7_311 and var_7_312 then
				var_7_312:mapPixel(function(arg_19_0, arg_19_1, arg_19_2, arg_19_3, arg_19_4, arg_19_5)
					if var_7_304(arg_19_2, arg_19_3, arg_19_4, 54, 23, 12) then
						return 0.20784313725490197, 0.07058823529411765, 0.09411764705882353, arg_19_5
					end

					if var_7_304(arg_19_2, arg_19_3, arg_19_4, 80, 80, 80) then
						return 0.8, 0.19215686274509805, 0.3686274509803922, arg_19_5
					end

					return arg_19_2, arg_19_3, arg_19_4, arg_19_5
				end)

				local var_7_313, var_7_314 = pcall(love.graphics.newImage, var_7_312)

				if var_7_313 and var_7_314 then
					var_7_314:setFilter("nearest", "nearest")

					var_0_0.ui.classCardSkillFrameSpecial = var_7_314
				end
			end

			local var_7_315, var_7_316 = pcall(love.image.newImageData, __recovered_scope_0.var_7_301)

			if var_7_315 and var_7_316 then
				require("src.ui.effects").skill_frame_palette.legendary(var_7_316)

				local var_7_317, var_7_318 = pcall(love.graphics.newImage, var_7_316)

				if var_7_317 and var_7_318 then
					var_7_318:setFilter("nearest", "nearest")

					var_0_0.ui.classCardSkillFrameLegendary = var_7_318
				end

				if var_7_316.release then
					var_7_316:release()
				end
			end

			local var_7_319, var_7_320 = pcall(love.image.newImageData, __recovered_scope_0.var_7_301)

			if var_7_319 and var_7_320 then
				require("src.ui.effects").skill_frame_palette.prism(var_7_320)

				local var_7_321, var_7_322 = pcall(love.graphics.newImage, var_7_320)

				if var_7_321 and var_7_322 then
					var_7_322:setFilter("nearest", "nearest")

					var_0_0.ui.classCardSkillFramePrism = var_7_322
				end

				if var_7_320.release then
					var_7_320:release()
				end
			end
		end

		print(string.format("[assets] Loaded UI image classCardSkillFrame from %s (%dx%d)", __recovered_scope_0.var_7_301, __recovered_scope_0.var_7_300:getWidth(), __recovered_scope_0.var_7_300:getHeight()))
	else
		print("[assets] classCardSkillFrame image not found (optional)")
	end

	 __recovered_scope_0.var_7_323 = {
		"src/sprites/background/mainbackground/skillframeshadow.png",
		"sprites/background/mainbackground/skillframeshadow.png"
	}
	 __recovered_scope_0.var_7_324, __recovered_scope_0.var_7_325 = var_0_5(__recovered_scope_0.var_7_323)

	if __recovered_scope_0.var_7_324 then
		__recovered_scope_0.var_7_324:setFilter("nearest", "nearest")

		var_0_0.ui.classCardSkillFrameShadow = __recovered_scope_0.var_7_324

		print(string.format("[assets] Loaded UI image classCardSkillFrameShadow from %s (%dx%d)", __recovered_scope_0.var_7_325, __recovered_scope_0.var_7_324:getWidth(), __recovered_scope_0.var_7_324:getHeight()))
	else
		print("[assets] classCardSkillFrameShadow image not found (optional)")
	end

	 __recovered_scope_0.var_7_326 = {
		"src/sprites/background/mainbackground/expbar.png",
		"sprites/background/mainbackground/expbar.png"
	}
	 __recovered_scope_0.var_7_327, __recovered_scope_0.var_7_328 = var_0_5(__recovered_scope_0.var_7_326)

	if __recovered_scope_0.var_7_327 then
		__recovered_scope_0.var_7_327:setFilter("nearest", "nearest")

		var_0_0.ui.expBar = __recovered_scope_0.var_7_327

		print(string.format("[assets] Loaded UI image expBar from %s (%dx%d)", __recovered_scope_0.var_7_328, __recovered_scope_0.var_7_327:getWidth(), __recovered_scope_0.var_7_327:getHeight()))
	else
		print("[assets] expBar image not found (optional)")
	end

	 __recovered_scope_0.var_7_329 = {
		"src/sprites/background/mainbackground/victory.png",
		"sprites/background/mainbackground/victory.png"
	}
	 __recovered_scope_0.var_7_330, __recovered_scope_0.var_7_331 = var_0_5(__recovered_scope_0.var_7_329)

	if __recovered_scope_0.var_7_330 then
		__recovered_scope_0.var_7_330:setFilter("nearest", "nearest")

		var_0_0.ui.victory = __recovered_scope_0.var_7_330

		print(string.format("[assets] Loaded UI image victory from %s (%dx%d)", __recovered_scope_0.var_7_331, __recovered_scope_0.var_7_330:getWidth(), __recovered_scope_0.var_7_330:getHeight()))
	else
		print("[assets] victory image not found")
	end

	 __recovered_scope_0.var_7_332 = {
		"src/sprites/background/mainbackground/defeat.png",
		"sprites/background/mainbackground/defeat.png"
	}
	 __recovered_scope_0.var_7_333, __recovered_scope_0.var_7_334 = var_0_5(__recovered_scope_0.var_7_332)

	if __recovered_scope_0.var_7_333 then
		__recovered_scope_0.var_7_333:setFilter("nearest", "nearest")

		var_0_0.ui.defeat = __recovered_scope_0.var_7_333

		print(string.format("[assets] Loaded UI image defeat from %s (%dx%d)", __recovered_scope_0.var_7_334, __recovered_scope_0.var_7_333:getWidth(), __recovered_scope_0.var_7_333:getHeight()))
	else
		print("[assets] defeat image not found")
	end

	 __recovered_scope_0.var_7_335 = {
		"src/sprites/background/menu/messagewindow.png",
		"sprites/background/menu/messagewindow.png"
	}
	 __recovered_scope_0.var_7_336, __recovered_scope_0.var_7_337 = var_0_5(__recovered_scope_0.var_7_335)

	if __recovered_scope_0.var_7_336 then
		__recovered_scope_0.var_7_336:setFilter("nearest", "nearest")

		var_0_0.ui.messageWindow = __recovered_scope_0.var_7_336

		local var_7_338, var_7_339 = pcall(love.image.newImageData, __recovered_scope_0.var_7_337)

		if var_7_338 and var_7_339 then
			var_0_0.ui.messageWindowData = var_7_339
		end

		print(string.format("[assets] Loaded UI image messageWindow from %s (%dx%d)", __recovered_scope_0.var_7_337, __recovered_scope_0.var_7_336:getWidth(), __recovered_scope_0.var_7_336:getHeight()))
	else
		print("[assets] messageWindow image not found (optional)")
	end

	 __recovered_scope_0.var_7_340 = {
		"src/sprites/background/menu/optionwindowrope.png",
		"sprites/background/menu/optionwindowrope.png"
	}
	 __recovered_scope_0.var_7_341, __recovered_scope_0.var_7_342 = var_0_5(__recovered_scope_0.var_7_340)

	if __recovered_scope_0.var_7_341 then
		__recovered_scope_0.var_7_341:setFilter("nearest", "nearest")

		var_0_0.ui.optionWindowRope = __recovered_scope_0.var_7_341

		print(string.format("[assets] Loaded UI image optionWindowRope from %s (%dx%d)", __recovered_scope_0.var_7_342, __recovered_scope_0.var_7_341:getWidth(), __recovered_scope_0.var_7_341:getHeight()))
	else
		print("[assets] optionWindowRope image not found (optional)")
	end

	 __recovered_scope_0.var_7_343 = {
		"src/sprites/background/menu/optionwindow.png",
		"sprites/background/menu/optionwindow.png"
	}
	 __recovered_scope_0.var_7_344, __recovered_scope_0.var_7_345 = var_0_5(__recovered_scope_0.var_7_343)

	if __recovered_scope_0.var_7_344 then
		__recovered_scope_0.var_7_344:setFilter("nearest", "nearest")

		var_0_0.ui.optionWindow = __recovered_scope_0.var_7_344

		print(string.format("[assets] Loaded UI image optionWindow from %s (%dx%d)", __recovered_scope_0.var_7_345, __recovered_scope_0.var_7_344:getWidth(), __recovered_scope_0.var_7_344:getHeight()))
	else
		print("[assets] optionWindow image not found (optional)")
	end

	 __recovered_scope_0.var_7_346 = {
		"src/sprites/background/menu/pausebackground.png",
		"sprites/background/menu/pausebackground.png"
	}
	 __recovered_scope_0.var_7_347, __recovered_scope_0.var_7_348 = var_0_5(__recovered_scope_0.var_7_346)

	if __recovered_scope_0.var_7_347 then
		__recovered_scope_0.var_7_347:setFilter("nearest", "nearest")

		var_0_0.ui.pauseBackground = __recovered_scope_0.var_7_347

		print(string.format("[assets] Loaded UI image pauseBackground from %s (%dx%d)", __recovered_scope_0.var_7_348, __recovered_scope_0.var_7_347:getWidth(), __recovered_scope_0.var_7_347:getHeight()))
	else
		print("[assets] pauseBackground image not found (optional)")
	end

	 __recovered_scope_0.var_7_349 = {
		"src/sprites/background/menu/pausebackground.png",
		"sprites/background/menu/pausebackground.png"
	}
	 __recovered_scope_0.var_7_350, __recovered_scope_0.var_7_351 = var_0_5(__recovered_scope_0.var_7_349)

	if __recovered_scope_0.var_7_350 then
		__recovered_scope_0.var_7_350:setFilter("nearest", "nearest")

		var_0_0.ui.pauseBackground = __recovered_scope_0.var_7_350

		print(string.format("[assets] Loaded UI image pauseBackground from %s (%dx%d)", __recovered_scope_0.var_7_351, __recovered_scope_0.var_7_350:getWidth(), __recovered_scope_0.var_7_350:getHeight()))
	else
		print("[assets] pauseBackground image not found (optional)")
	end

	 __recovered_scope_0.var_7_352 = {
		"src/sprites/background/menu/playtimebackground.png",
		"sprites/background/menu/playtimebackground.png"
	}
	 __recovered_scope_0.var_7_353, __recovered_scope_0.var_7_354 = var_0_5(__recovered_scope_0.var_7_352)

	if __recovered_scope_0.var_7_353 then
		__recovered_scope_0.var_7_353:setFilter("nearest", "nearest")

		var_0_0.ui.playtimeBackground = __recovered_scope_0.var_7_353

		print(string.format("[assets] Loaded UI image playtimeBackground from %s (%dx%d)", __recovered_scope_0.var_7_354, __recovered_scope_0.var_7_353:getWidth(), __recovered_scope_0.var_7_353:getHeight()))
	else
		print("[assets] playtimeBackground image not found (optional)")
	end

	 __recovered_scope_0.var_7_355 = {
		"src/sprites/background/menu/optionpaperbackground.png",
		"sprites/background/menu/optionpaperbackground.png"
	}
	 __recovered_scope_0.var_7_356, __recovered_scope_0.var_7_357 = var_0_5(__recovered_scope_0.var_7_355)

	if __recovered_scope_0.var_7_356 then
		__recovered_scope_0.var_7_356:setFilter("nearest", "nearest")

		var_0_0.ui.optionPaperBackground = __recovered_scope_0.var_7_356

		print(string.format("[assets] Loaded UI image optionPaperBackground from %s (%dx%d)", __recovered_scope_0.var_7_357, __recovered_scope_0.var_7_356:getWidth(), __recovered_scope_0.var_7_356:getHeight()))
	else
		print("[assets] optionPaperBackground image not found (optional)")
	end

	 __recovered_scope_0.var_7_358 = {
		"src/sprites/background/menu/credits.png",
		"sprites/background/menu/credits.png"
	}
	 __recovered_scope_0.var_7_359, __recovered_scope_0.var_7_360 = var_0_5(__recovered_scope_0.var_7_358)

	if __recovered_scope_0.var_7_359 then
		__recovered_scope_0.var_7_359:setFilter("nearest", "nearest")

		var_0_0.ui.creditsBackground = __recovered_scope_0.var_7_359

		print(string.format("[assets] Loaded UI image creditsBackground from %s (%dx%d)", __recovered_scope_0.var_7_360, __recovered_scope_0.var_7_359:getWidth(), __recovered_scope_0.var_7_359:getHeight()))
	else
		print("[assets] creditsBackground image not found (optional)")
	end

	 __recovered_scope_0.var_7_361 = {
		"src/sprites/background/menu/gamendscreen.png",
		"sprites/background/menu/gamendscreen.png"
	}
	 __recovered_scope_0.var_7_362, __recovered_scope_0.var_7_363 = var_0_5(__recovered_scope_0.var_7_361)

	if __recovered_scope_0.var_7_362 then
		__recovered_scope_0.var_7_362:setFilter("nearest", "nearest")

		var_0_0.ui.gameOverScreen = __recovered_scope_0.var_7_362

		print(string.format("[assets] Loaded UI image gameOverScreen from %s (%dx%d)", __recovered_scope_0.var_7_363, __recovered_scope_0.var_7_362:getWidth(), __recovered_scope_0.var_7_362:getHeight()))
	else
		print("[assets] gameOverScreen image not found (optional)")
	end

	 __recovered_scope_0.var_7_364 = {
		"src/sprites/background/menu/gamendscreendefeat.png",
		"sprites/background/menu/gamendscreendefeat.png"
	}
	 __recovered_scope_0.var_7_365, __recovered_scope_0.var_7_366 = var_0_5(__recovered_scope_0.var_7_364)

	if __recovered_scope_0.var_7_365 then
		__recovered_scope_0.var_7_365:setFilter("nearest", "nearest")

		var_0_0.ui.gameOverDefeatScreen = __recovered_scope_0.var_7_365

		print(string.format("[assets] Loaded UI image gameOverDefeatScreen from %s (%dx%d)", __recovered_scope_0.var_7_366, __recovered_scope_0.var_7_365:getWidth(), __recovered_scope_0.var_7_365:getHeight()))
	else
		print("[assets] gameOverDefeatScreen image not found (optional)")
	end

	 __recovered_scope_0.var_7_367 = {
		"src/sprites/background/menu/optionwindow_topbar.png",
		"sprites/background/menu/optionwindow_topbar.png"
	}
	 __recovered_scope_0.var_7_368, __recovered_scope_0.var_7_369 = var_0_5(__recovered_scope_0.var_7_367)

	if __recovered_scope_0.var_7_368 then
		__recovered_scope_0.var_7_368:setFilter("nearest", "nearest")

		var_0_0.ui.optionWindowTopbar = __recovered_scope_0.var_7_368

		print(string.format("[assets] Loaded UI image optionWindowTopbar from %s (%dx%d)", __recovered_scope_0.var_7_369, __recovered_scope_0.var_7_368:getWidth(), __recovered_scope_0.var_7_368:getHeight()))
	else
		print("[assets] optionWindowTopbar image not found (optional)")
	end

	 __recovered_scope_0.var_7_370 = {
		"src/sprites/mainmenu/logo.png",
		"sprites/mainmenu/logo.png"
	}
	 __recovered_scope_0.var_7_371, __recovered_scope_0.var_7_372 = var_0_5(__recovered_scope_0.var_7_370)

	if __recovered_scope_0.var_7_371 then
		__recovered_scope_0.var_7_371:setFilter("nearest", "nearest")

		var_0_0.ui.mainLogo = __recovered_scope_0.var_7_371

		print(string.format("[assets] Loaded UI image mainLogo from %s (%dx%d)", __recovered_scope_0.var_7_372, __recovered_scope_0.var_7_371:getWidth(), __recovered_scope_0.var_7_371:getHeight()))
	else
		print("[assets] mainLogo image not found (optional)")
	end

	 __recovered_scope_0.var_7_373 = {
		"src/sprites/background/menu/optionbuttonrope.png",
		"sprites/background/menu/optionbuttonrope.png"
	}
	 __recovered_scope_0.var_7_374, __recovered_scope_0.var_7_375 = var_0_5(__recovered_scope_0.var_7_373)

	if __recovered_scope_0.var_7_374 then
		__recovered_scope_0.var_7_374:setFilter("nearest", "nearest")

		var_0_0.ui.optionButtonRope = __recovered_scope_0.var_7_374

		print(string.format("[assets] Loaded UI image optionButtonRope from %s (%dx%d)", __recovered_scope_0.var_7_375, __recovered_scope_0.var_7_374:getWidth(), __recovered_scope_0.var_7_374:getHeight()))
	else
		print("[assets] optionButtonRope image not found (optional)")
	end

	 __recovered_scope_0.var_7_376 = {
		"src/sprites/background/menu/playbutton_dark.png",
		"sprites/background/menu/playbutton_dark.png"
	}
	 __recovered_scope_0.var_7_377, __recovered_scope_0.var_7_378 = var_0_5(__recovered_scope_0.var_7_376)

	if __recovered_scope_0.var_7_377 then
		__recovered_scope_0.var_7_377:setFilter("nearest", "nearest")

		var_0_0.ui.playButtonDark = __recovered_scope_0.var_7_377

		local var_7_379, var_7_380 = pcall(love.image.newImageData, __recovered_scope_0.var_7_378)

		if var_7_379 and var_7_380 then
			var_0_0.ui.playButtonDarkData = var_7_380
		end

		print(string.format("[assets] Loaded UI image playButtonDark from %s (%dx%d)", __recovered_scope_0.var_7_378, __recovered_scope_0.var_7_377:getWidth(), __recovered_scope_0.var_7_377:getHeight()))
	else
		print("[assets] playButtonDark image not found (optional)")
	end

	 __recovered_scope_0.var_7_381 = {
		"src/sprites/background/menu/replaybutton_dark.png",
		"sprites/background/menu/replaybutton_dark.png"
	}
	 __recovered_scope_0.var_7_382, __recovered_scope_0.var_7_383 = var_0_5(__recovered_scope_0.var_7_381)

	if __recovered_scope_0.var_7_382 then
		__recovered_scope_0.var_7_382:setFilter("nearest", "nearest")

		var_0_0.ui.replayButtonDark = __recovered_scope_0.var_7_382

		local var_7_384, var_7_385 = pcall(love.image.newImageData, __recovered_scope_0.var_7_383)

		if var_7_384 and var_7_385 then
			var_0_0.ui.replayButtonDarkData = var_7_385
		end

		print(string.format("[assets] Loaded UI image replayButtonDark from %s (%dx%d)", __recovered_scope_0.var_7_383, __recovered_scope_0.var_7_382:getWidth(), __recovered_scope_0.var_7_382:getHeight()))
	else
		print("[assets] replayButtonDark image not found (optional)")
	end

	 __recovered_scope_0.var_7_386 = {
		"src/sprites/background/menu/wikibutton_dark.png",
		"sprites/background/menu/wikibutton_dark.png"
	}
	 __recovered_scope_0.var_7_387, __recovered_scope_0.var_7_388 = var_0_5(__recovered_scope_0.var_7_386)

	if __recovered_scope_0.var_7_387 then
		__recovered_scope_0.var_7_387:setFilter("nearest", "nearest")

		var_0_0.ui.wikiButtonDark = __recovered_scope_0.var_7_387

		local var_7_389, var_7_390 = pcall(love.image.newImageData, __recovered_scope_0.var_7_388)

		if var_7_389 and var_7_390 then
			var_0_0.ui.wikiButtonDarkData = var_7_390
		end

		print(string.format("[assets] Loaded UI image wikiButtonDark from %s (%dx%d)", __recovered_scope_0.var_7_388, __recovered_scope_0.var_7_387:getWidth(), __recovered_scope_0.var_7_387:getHeight()))
	else
		print("[assets] wikiButtonDark image not found (optional)")
	end

	 __recovered_scope_0.var_7_391 = {
		"src/sprites/background/menu/optionbutton_dark.png",
		"sprites/background/menu/optionbutton_dark.png"
	}
	 __recovered_scope_0.var_7_392, __recovered_scope_0.var_7_393 = var_0_5(__recovered_scope_0.var_7_391)

	if __recovered_scope_0.var_7_392 then
		__recovered_scope_0.var_7_392:setFilter("nearest", "nearest")

		var_0_0.ui.optionButtonDark = __recovered_scope_0.var_7_392

		local var_7_394, var_7_395 = pcall(love.image.newImageData, __recovered_scope_0.var_7_393)

		if var_7_394 and var_7_395 then
			var_0_0.ui.optionButtonDarkData = var_7_395
		end

		print(string.format("[assets] Loaded UI image optionButtonDark from %s (%dx%d)", __recovered_scope_0.var_7_393, __recovered_scope_0.var_7_392:getWidth(), __recovered_scope_0.var_7_392:getHeight()))
	else
		print("[assets] optionButtonDark image not found (optional)")
	end

	 __recovered_scope_0.var_7_396 = {
		"src/sprites/background/menu/tomainmenubutton_dark.png",
		"sprites/background/menu/tomainmenubutton_dark.png"
	}
	 __recovered_scope_0.var_7_397, __recovered_scope_0.var_7_398 = var_0_5(__recovered_scope_0.var_7_396)

	if __recovered_scope_0.var_7_397 then
		__recovered_scope_0.var_7_397:setFilter("nearest", "nearest")

		var_0_0.ui.toMainMenuButtonDark = __recovered_scope_0.var_7_397

		local var_7_399, var_7_400 = pcall(love.image.newImageData, __recovered_scope_0.var_7_398)

		if var_7_399 and var_7_400 then
			var_0_0.ui.toMainMenuButtonDarkData = var_7_400
		end

		print(string.format("[assets] Loaded UI image toMainMenuButtonDark from %s (%dx%d)", __recovered_scope_0.var_7_398, __recovered_scope_0.var_7_397:getWidth(), __recovered_scope_0.var_7_397:getHeight()))
	else
		print("[assets] toMainMenuButtonDark image not found (optional)")
	end

	 function __recovered_scope_0.var_7_401(arg_20_0, arg_20_1)
		local var_20_0 = {
			"src/sprites/background/menu/" .. arg_20_1,
			"sprites/background/menu/" .. arg_20_1
		}
		local var_20_1, var_20_2 = var_0_5(var_20_0)

		if var_20_1 then
			var_20_1:setFilter("nearest", "nearest")

			var_0_0.ui[arg_20_0] = var_20_1

			print(string.format("[assets] Loaded UI image %s from %s (%dx%d)", arg_20_0, var_20_2, var_20_1:getWidth(), var_20_1:getHeight()))

			local var_20_3, var_20_4 = pcall(love.image.newImageData, var_20_2)

			if var_20_3 and var_20_4 then
				var_0_0.ui[arg_20_0 .. "Data"] = var_20_4
			end
		else
			print(string.format("[assets] %s image not found (optional)", arg_20_0))
		end
	end

	__recovered_scope_0.var_7_401("optionButton", "optionbutton.png")
	__recovered_scope_0.var_7_401("pauseBackButton", "pausebackbutton.png")
	__recovered_scope_0.var_7_401("pauseBackButtonDark", "pausebackbutton_dark.png")
	__recovered_scope_0.var_7_401("playButton", "playbutton.png")
	__recovered_scope_0.var_7_401("replayButton", "replaybutton.png")
	__recovered_scope_0.var_7_401("toMainMenuButton", "tomainmenubutton.png")
	__recovered_scope_0.var_7_401("wikiButton", "wikibutton.png")
	__recovered_scope_0.var_7_401("gameOverNextButton", "gamendscreennext.png")
	__recovered_scope_0.var_7_401("gameOverAgainButton", "gamendscreenagain.png")
	__recovered_scope_0.var_7_401("gameOverUpgradeButton", "gamendscreenupgrade.png")

	 __recovered_scope_0.var_7_402 = {
		"src/sprites/background/button/nudgebutton.png",
		"sprites/background/button/nudgebutton.png"
	}
	 __recovered_scope_0.var_7_403, __recovered_scope_0.var_7_404 = var_0_5(__recovered_scope_0.var_7_402)

	if __recovered_scope_0.var_7_403 then
		__recovered_scope_0.var_7_403:setFilter("nearest", "nearest")

		var_0_0.ui.nudgeButton = __recovered_scope_0.var_7_403
		var_0_0.ui.nudgeButtonQuads = {
			love.graphics.newQuad(0, 0, 39, 28, __recovered_scope_0.var_7_403:getDimensions()),
			love.graphics.newQuad(39, 0, 39, 28, __recovered_scope_0.var_7_403:getDimensions())
		}

		local var_7_405, var_7_406 = pcall(love.image.newImageData, __recovered_scope_0.var_7_404)

		if var_7_405 and var_7_406 then
			var_0_0.ui.nudgeButtonData = var_7_406
		end

		print(string.format("[assets] Loaded UI image nudgeButton from %s (%dx%d)", __recovered_scope_0.var_7_404, __recovered_scope_0.var_7_403:getWidth(), __recovered_scope_0.var_7_403:getHeight()))
	else
		print("[assets] nudgeButton image not found")
	end

	 __recovered_scope_0.var_7_407 = {
		"src/sprites/background/button/stopbutton.png",
		"sprites/background/button/stopbutton.png"
	}
	 __recovered_scope_0.var_7_408, __recovered_scope_0.var_7_409 = var_0_5(__recovered_scope_0.var_7_407)

	if __recovered_scope_0.var_7_408 then
		__recovered_scope_0.var_7_408:setFilter("nearest", "nearest")

		var_0_0.ui.stopButton = __recovered_scope_0.var_7_408
		var_0_0.ui.stopButtonQuads = {
			love.graphics.newQuad(0, 0, 39, 28, __recovered_scope_0.var_7_408:getDimensions()),
			love.graphics.newQuad(39, 0, 39, 28, __recovered_scope_0.var_7_408:getDimensions())
		}

		local var_7_410, var_7_411 = pcall(love.image.newImageData, __recovered_scope_0.var_7_409)

		if var_7_410 and var_7_411 then
			var_0_0.ui.stopButtonData = var_7_411
		end

		print(string.format("[assets] Loaded UI image stopButton from %s (%dx%d)", __recovered_scope_0.var_7_409, __recovered_scope_0.var_7_408:getWidth(), __recovered_scope_0.var_7_408:getHeight()))
	else
		print("[assets] stopButton image not found")
	end

	 __recovered_scope_0.var_7_412 = {
		"src/sprites/background/mainbackground/wavecounter.png",
		"sprites/background/mainbackground/wavecounter.png"
	}
	 __recovered_scope_0.var_7_413 = nil
	 __recovered_scope_0.var_7_414 = nil

	for iter_7_11, iter_7_12 in ipairs(__recovered_scope_0.var_7_412) do
		if love.filesystem.getInfo(iter_7_12) then
			__recovered_scope_0.var_7_413 = iter_7_12

			break
		end
	end

	if __recovered_scope_0.var_7_413 then
		local var_7_415 = love.graphics.newImage(__recovered_scope_0.var_7_413)

		var_7_415:setFilter("nearest", "nearest")

		var_0_0.ui.waveCounter = var_7_415

		local var_7_416, var_7_417 = pcall(love.image.newImageData, __recovered_scope_0.var_7_413)

		if var_7_416 and var_7_417 then
			var_0_0.ui.waveCounterData = var_7_417
		end

		print(string.format("[assets] Loaded UI image waveCounter from %s (%dx%d)", __recovered_scope_0.var_7_413, var_7_415:getWidth(), var_7_415:getHeight()))
	else
		print("[assets] waveCounter image not found (optional)")
	end

	 __recovered_scope_0.var_7_418 = {
		"src/sprites/background/mainbackground/maxunit.png",
		"sprites/background/mainbackground/maxunit.png"
	}
	 __recovered_scope_0.var_7_419 = nil

	for iter_7_13, iter_7_14 in ipairs(__recovered_scope_0.var_7_418) do
		if love.filesystem.getInfo(iter_7_14) then
			__recovered_scope_0.var_7_419 = iter_7_14

			break
		end
	end

	if __recovered_scope_0.var_7_419 then
		local var_7_420 = love.graphics.newImage(__recovered_scope_0.var_7_419)

		var_7_420:setFilter("nearest", "nearest")

		var_0_0.ui.maxUnit = var_7_420

		local var_7_421, var_7_422 = pcall(love.image.newImageData, __recovered_scope_0.var_7_419)

		if var_7_421 and var_7_422 then
			var_0_0.ui.maxUnitData = var_7_422
		end

		print(string.format("[assets] Loaded UI image maxUnit from %s (%dx%d)", __recovered_scope_0.var_7_419, var_7_420:getWidth(), var_7_420:getHeight()))
	else
		print("[assets] maxUnit image not found (optional)")
	end

	 __recovered_scope_0.var_7_423 = {
		"src/sprites/background/mainbackground/maxuniticon.png",
		"sprites/background/mainbackground/maxuniticon.png"
	}
	 __recovered_scope_0.var_7_424 = nil

	for iter_7_15, iter_7_16 in ipairs(__recovered_scope_0.var_7_423) do
		if love.filesystem.getInfo(iter_7_16) then
			__recovered_scope_0.var_7_424 = iter_7_16

			break
		end
	end

	if __recovered_scope_0.var_7_424 then
		local var_7_425 = love.graphics.newImage(__recovered_scope_0.var_7_424)

		var_7_425:setFilter("nearest", "nearest")

		var_0_0.ui.maxUnitIcon = var_7_425

		local var_7_426, var_7_427 = pcall(love.image.newImageData, __recovered_scope_0.var_7_424)

		if var_7_426 and var_7_427 then
			var_0_0.ui.maxUnitIconData = var_7_427
		end

		print(string.format("[assets] Loaded UI image maxUnitIcon from %s (%dx%d)", __recovered_scope_0.var_7_424, var_7_425:getWidth(), var_7_425:getHeight()))
	else
		print("[assets] maxUnitIcon image not found (optional)")
	end

	 __recovered_scope_0.var_7_428 = {
		"src/sprites/icons/battlefieldicons/battle.png",
		"sprites/icons/battlefieldicons/battle.png",
		"src/sprites/icons/battlefieldicons/battle_small.png",
		"sprites/icons/battlefieldicons/battle_small.png"
	}
	 __recovered_scope_0.var_7_429, __recovered_scope_0.var_7_430 = var_0_5(__recovered_scope_0.var_7_428)

	if __recovered_scope_0.var_7_429 then
		__recovered_scope_0.var_7_429:setFilter("nearest", "nearest")

		var_0_0.ui.waveBattleIcon = __recovered_scope_0.var_7_429

		print(string.format("[assets] Loaded UI image waveBattleIcon from %s (%dx%d)", __recovered_scope_0.var_7_430, __recovered_scope_0.var_7_429:getWidth(), __recovered_scope_0.var_7_429:getHeight()))
	else
		print("[assets] waveBattleIcon image not found (optional)")
	end

	 __recovered_scope_0.var_7_431 = {
		"src/sprites/icons/battlefieldicons/battle_small.png",
		"sprites/icons/battlefieldicons/battle_small.png"
	}
	 __recovered_scope_0.var_7_432, __recovered_scope_0.var_7_433 = var_0_5(__recovered_scope_0.var_7_431)

	if __recovered_scope_0.var_7_432 then
		__recovered_scope_0.var_7_432:setFilter("nearest", "nearest")

		var_0_0.ui.waveBattleIconSmall = __recovered_scope_0.var_7_432

		print(string.format("[assets] Loaded UI image waveBattleIconSmall from %s (%dx%d)", __recovered_scope_0.var_7_433, __recovered_scope_0.var_7_432:getWidth(), __recovered_scope_0.var_7_432:getHeight()))
	else
		print("[assets] waveBattleIconSmall image not found (optional)")
	end

	 __recovered_scope_0.var_7_434 = {
		"src/sprites/icons/battlefieldicons/boss.png",
		"sprites/icons/battlefieldicons/boss.png",
		"src/sprites/icons/battlefieldicons/boss_small.png",
		"sprites/icons/battlefieldicons/boss_small.png"
	}
	 __recovered_scope_0.var_7_435, __recovered_scope_0.var_7_436 = var_0_5(__recovered_scope_0.var_7_434)

	if __recovered_scope_0.var_7_435 then
		__recovered_scope_0.var_7_435:setFilter("nearest", "nearest")

		var_0_0.ui.waveBossIcon = __recovered_scope_0.var_7_435

		print(string.format("[assets] Loaded UI image waveBossIcon from %s (%dx%d)", __recovered_scope_0.var_7_436, __recovered_scope_0.var_7_435:getWidth(), __recovered_scope_0.var_7_435:getHeight()))
	else
		print("[assets] waveBossIcon image not found (optional)")
	end

	 __recovered_scope_0.var_7_437 = {
		"src/sprites/icons/battlefieldicons/boss_small.png",
		"sprites/icons/battlefieldicons/boss_small.png"
	}
	 __recovered_scope_0.var_7_438, __recovered_scope_0.var_7_439 = var_0_5(__recovered_scope_0.var_7_437)

	if __recovered_scope_0.var_7_438 then
		__recovered_scope_0.var_7_438:setFilter("nearest", "nearest")

		var_0_0.ui.waveBossIconSmall = __recovered_scope_0.var_7_438

		print(string.format("[assets] Loaded UI image waveBossIconSmall from %s (%dx%d)", __recovered_scope_0.var_7_439, __recovered_scope_0.var_7_438:getWidth(), __recovered_scope_0.var_7_438:getHeight()))
	else
		print("[assets] waveBossIconSmall image not found (optional)")
	end

	 __recovered_scope_0.var_7_440 = {
		"src/sprites/background/mainbackground/judgementalert.png",
		"sprites/background/mainbackground/judgementalert.png"
	}
	 __recovered_scope_0.var_7_441, __recovered_scope_0.var_7_442 = var_0_5(__recovered_scope_0.var_7_440)

	if __recovered_scope_0.var_7_441 then
		__recovered_scope_0.var_7_441:setFilter("nearest", "nearest")

		var_0_0.ui.judgementAlert = __recovered_scope_0.var_7_441

		print(string.format("[assets] Loaded UI image judgementAlert from %s (%dx%d)", __recovered_scope_0.var_7_442, __recovered_scope_0.var_7_441:getWidth(), __recovered_scope_0.var_7_441:getHeight()))
	else
		print("[assets] judgementAlert image not found (optional)")
	end

	 __recovered_scope_0.var_7_443 = {
		"src/sprites/icons/battlefieldicons/alerticon.png",
		"sprites/icons/battlefieldicons/alerticon.png"
	}
	 __recovered_scope_0.var_7_444, __recovered_scope_0.var_7_445 = var_0_5(__recovered_scope_0.var_7_443)

	if __recovered_scope_0.var_7_444 then
		__recovered_scope_0.var_7_444:setFilter("nearest", "nearest")

		var_0_0.ui.alertIcon = __recovered_scope_0.var_7_444

		print(string.format("[assets] Loaded UI image alertIcon from %s (%dx%d)", __recovered_scope_0.var_7_445, __recovered_scope_0.var_7_444:getWidth(), __recovered_scope_0.var_7_444:getHeight()))
	else
		print("[assets] alertIcon image not found (optional)")
	end

	 __recovered_scope_0.var_7_446 = {
		"src/sprites/background/mainbackground/heart.png",
		"sprites/background/mainbackground/heart.png"
	}
	 __recovered_scope_0.var_7_447, __recovered_scope_0.var_7_448 = var_0_5(__recovered_scope_0.var_7_446)

	if __recovered_scope_0.var_7_447 then
		__recovered_scope_0.var_7_447:setFilter("nearest", "nearest")

		var_0_0.ui.battlefieldHeart = __recovered_scope_0.var_7_447

		print(string.format("[assets] Loaded UI image battlefieldHeart from %s (%dx%d)", __recovered_scope_0.var_7_448, __recovered_scope_0.var_7_447:getWidth(), __recovered_scope_0.var_7_447:getHeight()))
	else
		print("[assets] battlefieldHeart image not found (optional)")
	end

	 __recovered_scope_0.var_7_449 = {
		"src/sprites/background/mainbackground/heartrope.png",
		"sprites/background/mainbackground/heartrope.png"
	}
	 __recovered_scope_0.var_7_450, __recovered_scope_0.var_7_451 = var_0_5(__recovered_scope_0.var_7_449)

	if __recovered_scope_0.var_7_450 then
		__recovered_scope_0.var_7_450:setFilter("nearest", "nearest")

		var_0_0.ui.battlefieldHeartRope = __recovered_scope_0.var_7_450

		print(string.format("[assets] Loaded UI image battlefieldHeartRope from %s (%dx%d)", __recovered_scope_0.var_7_451, __recovered_scope_0.var_7_450:getWidth(), __recovered_scope_0.var_7_450:getHeight()))
	else
		print("[assets] battlefieldHeartRope image not found (optional)")
	end

	 __recovered_scope_0.var_7_452 = var_0_8("battlereadyicon/battleclock01")
	 __recovered_scope_0.var_7_453, __recovered_scope_0.var_7_454 = var_0_5(__recovered_scope_0.var_7_452)

	if __recovered_scope_0.var_7_453 then
		__recovered_scope_0.var_7_453:setFilter("nearest", "nearest")

		var_0_0.ui.battleReadyOpen = __recovered_scope_0.var_7_453

		local var_7_455, var_7_456 = pcall(love.image.newImageData, __recovered_scope_0.var_7_454)

		if var_7_455 and var_7_456 then
			var_0_0.ui.battleReadyOpenData = var_7_456
		end

		print(string.format("[assets] Loaded UI image battleReadyOpen from %s (%dx%d)", __recovered_scope_0.var_7_454, __recovered_scope_0.var_7_453:getWidth(), __recovered_scope_0.var_7_453:getHeight()))
	else
		print("[assets] battleReadyOpen icon not found (optional)")
	end

	 __recovered_scope_0.var_7_457 = var_0_8("battlereadyicon/battleclock02")
	 __recovered_scope_0.var_7_458, __recovered_scope_0.var_7_459 = var_0_5(__recovered_scope_0.var_7_457)

	if __recovered_scope_0.var_7_458 then
		__recovered_scope_0.var_7_458:setFilter("nearest", "nearest")

		var_0_0.ui.battleReadyClosed = __recovered_scope_0.var_7_458

		local var_7_460, var_7_461 = pcall(love.image.newImageData, __recovered_scope_0.var_7_459)

		if var_7_460 and var_7_461 then
			var_0_0.ui.battleReadyClosedData = var_7_461
		end

		print(string.format("[assets] Loaded UI image battleReadyClosed from %s (%dx%d)", __recovered_scope_0.var_7_459, __recovered_scope_0.var_7_458:getWidth(), __recovered_scope_0.var_7_458:getHeight()))
	else
		print("[assets] battleReadyClosed icon not found (optional)")
	end

	 __recovered_scope_0.var_7_462 = {
		"src/sprites/background/mainbackground/slotbackground.png",
		"sprites/background/mainbackground/slotbackground.png"
	}
	 __recovered_scope_0.var_7_463, __recovered_scope_0.var_7_464 = var_0_5(__recovered_scope_0.var_7_462)

	if __recovered_scope_0.var_7_463 then
		__recovered_scope_0.var_7_463:setFilter("nearest", "nearest")

		var_0_0.ui.slotBackground = __recovered_scope_0.var_7_463

		print(string.format("[assets] Loaded UI image slotBackground from %s (%dx%d)", __recovered_scope_0.var_7_464, __recovered_scope_0.var_7_463:getWidth(), __recovered_scope_0.var_7_463:getHeight()))
	else
		print("[assets] slotBackground image not found (optional)")
	end

	 __recovered_scope_0.var_7_465 = {
		"src/sprites/icons/sloticons/bookshadow.png",
		"sprites/icons/sloticons/bookshadow.png"
	}
	 __recovered_scope_0.var_7_466, __recovered_scope_0.var_7_467 = var_0_5(__recovered_scope_0.var_7_465)

	if __recovered_scope_0.var_7_466 then
		__recovered_scope_0.var_7_466:setFilter("nearest", "nearest")

		var_0_0.ui.slotBookShadow = __recovered_scope_0.var_7_466

		print(string.format("[assets] Loaded UI image slotBookShadow from %s (%dx%d)", __recovered_scope_0.var_7_467, __recovered_scope_0.var_7_466:getWidth(), __recovered_scope_0.var_7_466:getHeight()))
	else
		print("[assets] slotBookShadow image not found (optional)")
	end

	 __recovered_scope_0.var_7_468 = {
		"src/sprites/icons/sloticons/book.png",
		"sprites/icons/sloticons/book.png"
	}
	 __recovered_scope_0.var_7_469, __recovered_scope_0.var_7_470 = var_0_5(__recovered_scope_0.var_7_468)

	if __recovered_scope_0.var_7_469 then
		__recovered_scope_0.var_7_469:setFilter("nearest", "nearest")

		var_0_0.ui.slotBook = __recovered_scope_0.var_7_469

		local var_7_471, var_7_472 = pcall(love.image.newImageData, __recovered_scope_0.var_7_470)

		if var_7_471 and var_7_472 then
			var_0_0.ui.slotBookData = var_7_472
		end

		print(string.format("[assets] Loaded UI image slotBook from %s (%dx%d)", __recovered_scope_0.var_7_470, __recovered_scope_0.var_7_469:getWidth(), __recovered_scope_0.var_7_469:getHeight()))
	else
		print("[assets] slotBook image not found (optional)")
	end

	 __recovered_scope_0.var_7_473 = {
		"src/sprites/icons/sloticons/slotlock.png",
		"sprites/icons/sloticons/slotlock.png"
	}
	 __recovered_scope_0.var_7_474, __recovered_scope_0.var_7_475 = var_0_5(__recovered_scope_0.var_7_473)

	if __recovered_scope_0.var_7_474 then
		__recovered_scope_0.var_7_474:setFilter("nearest", "nearest")

		var_0_0.ui.slotLock = __recovered_scope_0.var_7_474

		print(string.format("[assets] Loaded UI image slotLock from %s (%dx%d)", __recovered_scope_0.var_7_475, __recovered_scope_0.var_7_474:getWidth(), __recovered_scope_0.var_7_474:getHeight()))
	else
		print("[assets] slotLock image not found (optional)")
	end

	 __recovered_scope_0.var_7_476 = {
		"src/sprites/background/button/scrollscreenani.png",
		"sprites/background/button/scrollscreenani.png",
		"src/sprites/background/button/scrollscreen.png",
		"sprites/background/button/scrollscreen.png"
	}
	 __recovered_scope_0.var_7_477, __recovered_scope_0.var_7_478 = var_0_5(__recovered_scope_0.var_7_476)

	if __recovered_scope_0.var_7_477 then
		__recovered_scope_0.var_7_477:setFilter("nearest", "nearest")

		local var_7_479 = __recovered_scope_0.var_7_477:getWidth()
		local var_7_480 = __recovered_scope_0.var_7_477:getHeight()
		local var_7_481 = tostring(__recovered_scope_0.var_7_478 or ""):lower():find("scrollscreenani", 1, true) ~= nil
		local var_7_482 = var_7_481 and 6 or 4
		local var_7_483 = var_7_481 and 94 or math.max(1, math.floor(var_7_479 / math.max(1, var_7_482)))
		local var_7_484 = var_7_481 and math.min(134, var_7_480) or var_7_480
		local var_7_485 = {}

		for iter_7_17 = 0, var_7_482 - 1 do
			local var_7_486 = iter_7_17 * var_7_483

			table.insert(var_7_485, love.graphics.newQuad(var_7_486, 0, var_7_483, var_7_484, var_7_479, var_7_480))
		end

		local var_7_487, var_7_488 = pcall(love.image.newImageData, __recovered_scope_0.var_7_478)

		if not var_7_487 then
			var_7_488 = nil
		end

		var_0_0.ui.scrollScreen = {
			image = __recovered_scope_0.var_7_477,
			imageData = var_7_488,
			quads = var_7_485,
			frameW = var_7_483,
			frameH = var_7_484,
			frames = var_7_482,
			iw = var_7_479,
			ih = var_7_480,
			orient = oriented
		}

		print(string.format("[assets] Loaded UI scrollscreen from %s (%dx%d, frames=%d)", __recovered_scope_0.var_7_478, var_7_479, var_7_480, var_7_482, oriented))
	else
		print("[assets] scrollscreen image not found (optional)")
	end

	 __recovered_scope_0.var_7_489 = {
		"src/sprites/background/button/corescrollbutton.png",
		"sprites/background/button/corescrollbutton.png"
	}
	 __recovered_scope_0.var_7_490, __recovered_scope_0.var_7_491 = var_0_5(__recovered_scope_0.var_7_489)

	if __recovered_scope_0.var_7_490 then
		__recovered_scope_0.var_7_490:setFilter("nearest", "nearest")

		var_0_0.ui.coreScrollButton = __recovered_scope_0.var_7_490

		local var_7_492, var_7_493 = pcall(love.image.newImageData, __recovered_scope_0.var_7_491)

		if var_7_492 and var_7_493 then
			var_0_0.ui.coreScrollButtonData = var_7_493
		end

		print(string.format("[assets] Loaded UI image coreScrollButton from %s (%dx%d)", __recovered_scope_0.var_7_491, __recovered_scope_0.var_7_490:getWidth(), __recovered_scope_0.var_7_490:getHeight()))
	else
		print("[assets] coreScrollButton image not found (optional)")
	end

	 __recovered_scope_0.var_7_494 = {
		"src/sprites/background/button/itemslot.png",
		"sprites/background/button/itemslot.png"
	}
	 __recovered_scope_0.var_7_495, __recovered_scope_0.var_7_496 = var_0_5(__recovered_scope_0.var_7_494)

	if __recovered_scope_0.var_7_495 then
		__recovered_scope_0.var_7_495:setFilter("nearest", "nearest")

		var_0_0.ui.itemSlot = __recovered_scope_0.var_7_495

		print(string.format("[assets] Loaded UI image itemSlot from %s (%dx%d)", __recovered_scope_0.var_7_496, __recovered_scope_0.var_7_495:getWidth(), __recovered_scope_0.var_7_495:getHeight()))
	else
		print("[assets] itemSlot image not found (optional)")
	end

	 __recovered_scope_0.var_7_497 = {
		"src/sprites/background/button/itemslot_uncommon.png",
		"sprites/background/button/itemslot_uncommon.png"
	}
	 __recovered_scope_0.var_7_498, __recovered_scope_0.var_7_499 = var_0_5(__recovered_scope_0.var_7_497)

	if __recovered_scope_0.var_7_498 then
		__recovered_scope_0.var_7_498:setFilter("nearest", "nearest")

		var_0_0.ui.itemSlotUncommon = __recovered_scope_0.var_7_498

		print(string.format("[assets] Loaded UI image itemSlotUncommon from %s (%dx%d)", __recovered_scope_0.var_7_499, __recovered_scope_0.var_7_498:getWidth(), __recovered_scope_0.var_7_498:getHeight()))
	else
		print("[assets] itemSlotUncommon image not found (optional)")
	end

	 __recovered_scope_0.var_7_500 = {
		"src/sprites/background/button/itemslot_rare.png",
		"sprites/background/button/itemslot_rare.png"
	}
	 __recovered_scope_0.var_7_501, __recovered_scope_0.var_7_502 = var_0_5(__recovered_scope_0.var_7_500)

	if __recovered_scope_0.var_7_501 then
		__recovered_scope_0.var_7_501:setFilter("nearest", "nearest")

		var_0_0.ui.itemSlotRare = __recovered_scope_0.var_7_501

		print(string.format("[assets] Loaded UI image itemSlotRare from %s (%dx%d)", __recovered_scope_0.var_7_502, __recovered_scope_0.var_7_501:getWidth(), __recovered_scope_0.var_7_501:getHeight()))
	else
		print("[assets] itemSlotRare image not found (optional)")
	end

	 __recovered_scope_0.var_7_503 = {
		"src/sprites/background/button/itemslot_legend.png",
		"sprites/background/button/itemslot_legend.png"
	}
	 __recovered_scope_0.var_7_504, __recovered_scope_0.var_7_505 = var_0_5(__recovered_scope_0.var_7_503)

	if __recovered_scope_0.var_7_504 then
		__recovered_scope_0.var_7_504:setFilter("nearest", "nearest")

		var_0_0.ui.itemSlotLegend = __recovered_scope_0.var_7_504

		print(string.format("[assets] Loaded UI image itemSlotLegend from %s (%dx%d)", __recovered_scope_0.var_7_505, __recovered_scope_0.var_7_504:getWidth(), __recovered_scope_0.var_7_504:getHeight()))
	else
		print("[assets] itemSlotLegend image not found (optional)")
	end

	 __recovered_scope_0.var_7_506 = {
		"src/sprites/icons/relics icon/item icons/00 delete.png"
	}
	 __recovered_scope_0.var_7_507, __recovered_scope_0.var_7_508 = var_0_5(__recovered_scope_0.var_7_506)

	if __recovered_scope_0.var_7_507 then
		__recovered_scope_0.var_7_507:setFilter("nearest", "nearest")

		var_0_0.ui.itemDeleteIcon = __recovered_scope_0.var_7_507

		print(string.format("[assets] Loaded UI image itemDeleteIcon from %s (%dx%d)", __recovered_scope_0.var_7_508, __recovered_scope_0.var_7_507:getWidth(), __recovered_scope_0.var_7_507:getHeight()))
	else
		print("[assets] itemDeleteIcon image not found (optional)")
	end

	 __recovered_scope_0.var_7_509 = {
		"src/sprites/icons/relics icon/item icons/00 reroll.png"
	}
	 __recovered_scope_0.var_7_510, __recovered_scope_0.var_7_511 = var_0_5(__recovered_scope_0.var_7_509)

	if __recovered_scope_0.var_7_510 then
		__recovered_scope_0.var_7_510:setFilter("nearest", "nearest")

		var_0_0.ui.itemRerollIcon = __recovered_scope_0.var_7_510

		print(string.format("[assets] Loaded UI image itemRerollIcon from %s (%dx%d)", __recovered_scope_0.var_7_511, __recovered_scope_0.var_7_510:getWidth(), __recovered_scope_0.var_7_510:getHeight()))
	else
		print("[assets] itemRerollIcon image not found (optional)")
	end

	 __recovered_scope_0.var_7_512 = {
		"src/sprites/background/button/battlefieldsection_dark.png",
		"sprites/background/button/battlefieldsection_dark.png"
	}
	 __recovered_scope_0.var_7_513, __recovered_scope_0.var_7_514 = var_0_5(__recovered_scope_0.var_7_512)

	if __recovered_scope_0.var_7_513 then
		__recovered_scope_0.var_7_513:setFilter("nearest", "nearest")

		var_0_0.ui.battlefieldSectionDark = __recovered_scope_0.var_7_513

		print(string.format("[assets] Loaded UI image battlefieldSectionDark from %s (%dx%d)", __recovered_scope_0.var_7_514, __recovered_scope_0.var_7_513:getWidth(), __recovered_scope_0.var_7_513:getHeight()))
	else
		print("[assets] battlefieldSectionDark image not found (optional)")
	end

	 __recovered_scope_0.var_7_515 = {
		"src/sprites/background/button/battlefieldsection.png",
		"sprites/background/button/battlefieldsection.png"
	}
	 __recovered_scope_0.var_7_516, __recovered_scope_0.var_7_517 = var_0_5(__recovered_scope_0.var_7_515)

	if __recovered_scope_0.var_7_516 then
		__recovered_scope_0.var_7_516:setFilter("nearest", "nearest")

		var_0_0.ui.battlefieldSection = __recovered_scope_0.var_7_516

		print(string.format("[assets] Loaded UI image battlefieldSection from %s (%dx%d)", __recovered_scope_0.var_7_517, __recovered_scope_0.var_7_516:getWidth(), __recovered_scope_0.var_7_516:getHeight()))
	else
		print("[assets] battlefieldSection image not found (optional)")
	end

	 __recovered_scope_0.var_7_518 = {
		"src/sprites/background/button/shopsection_dark.png",
		"sprites/background/button/shopsection_dark.png"
	}
	 __recovered_scope_0.var_7_519, __recovered_scope_0.var_7_520 = var_0_5(__recovered_scope_0.var_7_518)

	if __recovered_scope_0.var_7_519 then
		__recovered_scope_0.var_7_519:setFilter("nearest", "nearest")

		var_0_0.ui.shopSectionDark = __recovered_scope_0.var_7_519

		print(string.format("[assets] Loaded UI image shopSectionDark from %s (%dx%d)", __recovered_scope_0.var_7_520, __recovered_scope_0.var_7_519:getWidth(), __recovered_scope_0.var_7_519:getHeight()))
	else
		print("[assets] shopSectionDark image not found (optional)")
	end

	 __recovered_scope_0.var_7_521 = {
		"src/sprites/background/button/shopsection.png",
		"sprites/background/button/shopsection.png"
	}
	 __recovered_scope_0.var_7_522, __recovered_scope_0.var_7_523 = var_0_5(__recovered_scope_0.var_7_521)

	if __recovered_scope_0.var_7_522 then
		__recovered_scope_0.var_7_522:setFilter("nearest", "nearest")

		var_0_0.ui.shopSection = __recovered_scope_0.var_7_522

		print(string.format("[assets] Loaded UI image shopSection from %s (%dx%d)", __recovered_scope_0.var_7_523, __recovered_scope_0.var_7_522:getWidth(), __recovered_scope_0.var_7_522:getHeight()))
	else
		print("[assets] shopSection image not found (optional)")
	end

	 __recovered_scope_0.var_7_524 = {
		"src/sprites/background/button/stonesection_dark.png",
		"sprites/background/button/stonesection_dark.png"
	}
	 __recovered_scope_0.var_7_525, __recovered_scope_0.var_7_526 = var_0_5(__recovered_scope_0.var_7_524)

	if __recovered_scope_0.var_7_525 then
		__recovered_scope_0.var_7_525:setFilter("nearest", "nearest")

		var_0_0.ui.stoneSectionDark = __recovered_scope_0.var_7_525

		print(string.format("[assets] Loaded UI image stoneSectionDark from %s (%dx%d)", __recovered_scope_0.var_7_526, __recovered_scope_0.var_7_525:getWidth(), __recovered_scope_0.var_7_525:getHeight()))
	else
		print("[assets] stoneSectionDark image not found (optional)")
	end

	 __recovered_scope_0.var_7_527 = {
		"src/sprites/background/button/stonesection.png",
		"sprites/background/button/stonesection.png"
	}
	 __recovered_scope_0.var_7_528, __recovered_scope_0.var_7_529 = var_0_5(__recovered_scope_0.var_7_527)

	if __recovered_scope_0.var_7_528 then
		__recovered_scope_0.var_7_528:setFilter("nearest", "nearest")

		var_0_0.ui.stoneSection = __recovered_scope_0.var_7_528

		print(string.format("[assets] Loaded UI image stoneSection from %s (%dx%d)", __recovered_scope_0.var_7_529, __recovered_scope_0.var_7_528:getWidth(), __recovered_scope_0.var_7_528:getHeight()))
	else
		print("[assets] stoneSection image not found (optional)")
	end

	 __recovered_scope_0.var_7_530 = {
		"src/sprites/background/button/dpsbutton.png",
		"sprites/background/button/dpsbutton.png"
	}
	 __recovered_scope_0.var_7_531, __recovered_scope_0.var_7_532 = var_0_5(__recovered_scope_0.var_7_530)

	if __recovered_scope_0.var_7_531 then
		__recovered_scope_0.var_7_531:setFilter("nearest", "nearest")

		var_0_0.ui.dpsButton = __recovered_scope_0.var_7_531

		print(string.format("[assets] Loaded UI image dpsButton from %s (%dx%d)", __recovered_scope_0.var_7_532, __recovered_scope_0.var_7_531:getWidth(), __recovered_scope_0.var_7_531:getHeight()))
	else
		print("[assets] dpsButton image not found (optional)")
	end

	 __recovered_scope_0.var_7_533 = {
		"src/sprites/background/button/dpsbutton_pressed.png",
		"sprites/background/button/dpsbutton_pressed.png"
	}
	 __recovered_scope_0.var_7_534, __recovered_scope_0.var_7_535 = var_0_5(__recovered_scope_0.var_7_533)

	if __recovered_scope_0.var_7_534 then
		__recovered_scope_0.var_7_534:setFilter("nearest", "nearest")

		var_0_0.ui.dpsButtonPressed = __recovered_scope_0.var_7_534

		print(string.format("[assets] Loaded UI image dpsButtonPressed from %s (%dx%d)", __recovered_scope_0.var_7_535, __recovered_scope_0.var_7_534:getWidth(), __recovered_scope_0.var_7_534:getHeight()))
	else
		print("[assets] dpsButtonPressed image not found (optional)")
	end

	 __recovered_scope_0.var_7_536 = {
		"src/sprites/background/button/dpsbuttonclose.png",
		"sprites/background/button/dpsbuttonclose.png"
	}
	 __recovered_scope_0.var_7_537, __recovered_scope_0.var_7_538 = var_0_5(__recovered_scope_0.var_7_536)

	if __recovered_scope_0.var_7_537 then
		__recovered_scope_0.var_7_537:setFilter("nearest", "nearest")

		var_0_0.ui.dpsButtonClose = __recovered_scope_0.var_7_537

		print(string.format("[assets] Loaded UI image dpsButtonClose from %s (%dx%d)", __recovered_scope_0.var_7_538, __recovered_scope_0.var_7_537:getWidth(), __recovered_scope_0.var_7_537:getHeight()))
	else
		print("[assets] dpsButtonClose image not found (optional)")
	end

	 __recovered_scope_0.var_7_539 = {
		"src/sprites/background/button/dpsbuttonclose_pressed.png",
		"sprites/background/button/dpsbuttonclose_pressed.png"
	}
	 __recovered_scope_0.var_7_540, __recovered_scope_0.var_7_541 = var_0_5(__recovered_scope_0.var_7_539)

	if __recovered_scope_0.var_7_540 then
		__recovered_scope_0.var_7_540:setFilter("nearest", "nearest")

		var_0_0.ui.dpsButtonClosePressed = __recovered_scope_0.var_7_540

		print(string.format("[assets] Loaded UI image dpsButtonClosePressed from %s (%dx%d)", __recovered_scope_0.var_7_541, __recovered_scope_0.var_7_540:getWidth(), __recovered_scope_0.var_7_540:getHeight()))
	else
		print("[assets] dpsButtonClosePressed image not found (optional)")
	end

	 __recovered_scope_0.var_7_542 = {
		"src/sprites/background/button/synergybutton.png",
		"sprites/background/button/synergybutton.png"
	}
	 __recovered_scope_0.var_7_543, __recovered_scope_0.var_7_544 = var_0_5(__recovered_scope_0.var_7_542)

	if __recovered_scope_0.var_7_543 then
		__recovered_scope_0.var_7_543:setFilter("nearest", "nearest")

		var_0_0.ui.synergyButton = __recovered_scope_0.var_7_543

		print(string.format("[assets] Loaded UI image synergyButton from %s (%dx%d)", __recovered_scope_0.var_7_544, __recovered_scope_0.var_7_543:getWidth(), __recovered_scope_0.var_7_543:getHeight()))
	else
		print("[assets] synergyButton image not found (optional)")
	end

	 __recovered_scope_0.var_7_545 = {
		"src/sprites/background/button/synergybutton_pressed.png",
		"sprites/background/button/synergybutton_pressed.png"
	}
	 __recovered_scope_0.var_7_546, __recovered_scope_0.var_7_547 = var_0_5(__recovered_scope_0.var_7_545)

	if __recovered_scope_0.var_7_546 then
		__recovered_scope_0.var_7_546:setFilter("nearest", "nearest")

		var_0_0.ui.synergyButtonPressed = __recovered_scope_0.var_7_546

		print(string.format("[assets] Loaded UI image synergyButtonPressed from %s (%dx%d)", __recovered_scope_0.var_7_547, __recovered_scope_0.var_7_546:getWidth(), __recovered_scope_0.var_7_546:getHeight()))
	else
		print("[assets] synergyButtonPressed image not found (optional)")
	end

	 __recovered_scope_0.var_7_548 = {
		"src/sprites/background/button/synergybuttonclose.png",
		"sprites/background/button/synergybuttonclose.png"
	}
	 __recovered_scope_0.var_7_549, __recovered_scope_0.var_7_550 = var_0_5(__recovered_scope_0.var_7_548)

	if __recovered_scope_0.var_7_549 then
		__recovered_scope_0.var_7_549:setFilter("nearest", "nearest")

		var_0_0.ui.synergyButtonClose = __recovered_scope_0.var_7_549

		print(string.format("[assets] Loaded UI image synergyButtonClose from %s (%dx%d)", __recovered_scope_0.var_7_550, __recovered_scope_0.var_7_549:getWidth(), __recovered_scope_0.var_7_549:getHeight()))
	else
		print("[assets] synergyButtonClose image not found (optional)")
	end

	 __recovered_scope_0.var_7_551 = {
		"src/sprites/background/button/synergybuttonclose_pressed.png",
		"sprites/background/button/synergybuttonclose_pressed.png"
	}
	 __recovered_scope_0.var_7_552, __recovered_scope_0.var_7_553 = var_0_5(__recovered_scope_0.var_7_551)

	if __recovered_scope_0.var_7_552 then
		__recovered_scope_0.var_7_552:setFilter("nearest", "nearest")

		var_0_0.ui.synergyButtonClosePressed = __recovered_scope_0.var_7_552

		print(string.format("[assets] Loaded UI image synergyButtonClosePressed from %s (%dx%d)", __recovered_scope_0.var_7_553, __recovered_scope_0.var_7_552:getWidth(), __recovered_scope_0.var_7_552:getHeight()))
	else
		print("[assets] synergyButtonClosePressed image not found (optional)")
	end

	 __recovered_scope_0.var_7_554 = {
		"src/sprites/background/button/dpsshadow.png",
		"sprites/background/button/dpsshadow.png"
	}
	 __recovered_scope_0.var_7_555, __recovered_scope_0.var_7_556 = var_0_5(__recovered_scope_0.var_7_554)

	if __recovered_scope_0.var_7_555 then
		__recovered_scope_0.var_7_555:setFilter("nearest", "nearest")

		var_0_0.ui.dpsShadow = __recovered_scope_0.var_7_555

		print(string.format("[assets] Loaded UI image dpsShadow from %s (%dx%d)", __recovered_scope_0.var_7_556, __recovered_scope_0.var_7_555:getWidth(), __recovered_scope_0.var_7_555:getHeight()))
	else
		print("[assets] dpsShadow image not found (optional)")
	end

	 __recovered_scope_0.var_7_557 = {
		"src/sprites/background/mainbackground/dpswindow.png",
		"sprites/background/mainbackground/dpswindow.png"
	}
	 __recovered_scope_0.var_7_558, __recovered_scope_0.var_7_559 = var_0_5(__recovered_scope_0.var_7_557)

	if __recovered_scope_0.var_7_558 then
		__recovered_scope_0.var_7_558:setFilter("nearest", "nearest")

		var_0_0.ui.dpsWindow = __recovered_scope_0.var_7_558

		print(string.format("[assets] Loaded UI image dpsWindow from %s (%dx%d)", __recovered_scope_0.var_7_559, __recovered_scope_0.var_7_558:getWidth(), __recovered_scope_0.var_7_558:getHeight()))
	else
		print("[assets] dpsWindow image not found (optional)")
	end

	 __recovered_scope_0.var_7_560 = {
		"src/sprites/background/mainbackground/synergywindow.png",
		"sprites/background/mainbackground/synergywindow.png"
	}
	 __recovered_scope_0.var_7_561, __recovered_scope_0.var_7_562 = var_0_5(__recovered_scope_0.var_7_560)

	if __recovered_scope_0.var_7_561 then
		__recovered_scope_0.var_7_561:setFilter("nearest", "nearest")

		var_0_0.ui.synergyWindow = __recovered_scope_0.var_7_561

		print(string.format("[assets] Loaded UI image synergyWindow from %s (%dx%d)", __recovered_scope_0.var_7_562, __recovered_scope_0.var_7_561:getWidth(), __recovered_scope_0.var_7_561:getHeight()))
	else
		print("[assets] synergyWindow image not found (optional)")
	end

	 __recovered_scope_0.var_7_563 = {
		"src/sprites/background/mainbackground/dpsslot.png",
		"sprites/background/mainbackground/dpsslot.png"
	}
	 __recovered_scope_0.var_7_564, __recovered_scope_0.var_7_565 = var_0_5(__recovered_scope_0.var_7_563)

	if __recovered_scope_0.var_7_564 then
		__recovered_scope_0.var_7_564:setFilter("nearest", "nearest")

		var_0_0.ui.dpsSlot = __recovered_scope_0.var_7_564

		print(string.format("[assets] Loaded UI image dpsSlot from %s (%dx%d)", __recovered_scope_0.var_7_565, __recovered_scope_0.var_7_564:getWidth(), __recovered_scope_0.var_7_564:getHeight()))
	else
		print("[assets] dpsSlot image not found (optional)")
	end

	 __recovered_scope_0.var_7_566 = {
		"src/sprites/background/mainbackground/shopbackgroundinfobackground.png",
		"sprites/background/mainbackground/shopbackgroundinfobackground.png"
	}
	 __recovered_scope_0.var_7_567, __recovered_scope_0.var_7_568 = var_0_5(__recovered_scope_0.var_7_566)

	if __recovered_scope_0.var_7_567 then
		__recovered_scope_0.var_7_567:setFilter("nearest", "nearest")

		var_0_0.ui.shopInfoBackground = __recovered_scope_0.var_7_567

		print(string.format("[assets] Loaded UI image shopInfoBackground from %s (%dx%d)", __recovered_scope_0.var_7_568, __recovered_scope_0.var_7_567:getWidth(), __recovered_scope_0.var_7_567:getHeight()))
	else
		print("[assets] shopInfoBackground image not found (optional)")
	end

	 __recovered_scope_0.var_7_569 = {
		"src/sprites/background/mainbackground/stonequest.png",
		"sprites/background/mainbackground/stonequest.png"
	}
	 __recovered_scope_0.var_7_570, __recovered_scope_0.var_7_571 = var_0_5(__recovered_scope_0.var_7_569)

	if __recovered_scope_0.var_7_570 then
		__recovered_scope_0.var_7_570:setFilter("nearest", "nearest")

		var_0_0.ui.stoneQuest = __recovered_scope_0.var_7_570

		print(string.format("[assets] Loaded UI image stoneQuest from %s (%dx%d)", __recovered_scope_0.var_7_571, __recovered_scope_0.var_7_570:getWidth(), __recovered_scope_0.var_7_570:getHeight()))
	else
		print("[assets] stoneQuest image not found (optional)")
	end

	 __recovered_scope_0.var_7_572 = {
		"src/sprites/background/mainbackground/stonequestbackground.png",
		"sprites/background/mainbackground/stonequestbackground.png"
	}
	 __recovered_scope_0.var_7_573, __recovered_scope_0.var_7_574 = var_0_5(__recovered_scope_0.var_7_572)

	if __recovered_scope_0.var_7_573 then
		__recovered_scope_0.var_7_573:setFilter("nearest", "nearest")

		var_0_0.ui.stoneQuestBackground = __recovered_scope_0.var_7_573

		print(string.format("[assets] Loaded UI image stoneQuestBackground from %s (%dx%d)", __recovered_scope_0.var_7_574, __recovered_scope_0.var_7_573:getWidth(), __recovered_scope_0.var_7_573:getHeight()))
	else
		print("[assets] stoneQuestBackground image not found (optional)")
	end

	 __recovered_scope_0.var_7_575 = {
		"src/sprites/background/button/spinstick.png",
		"sprites/background/button/spinstick.png"
	}
	 __recovered_scope_0.var_7_576, __recovered_scope_0.var_7_577 = var_0_5(__recovered_scope_0.var_7_575)

	if __recovered_scope_0.var_7_576 then
		__recovered_scope_0.var_7_576:setFilter("nearest", "nearest")

		local var_7_578 = __recovered_scope_0.var_7_576:getWidth()
		local var_7_579 = __recovered_scope_0.var_7_576:getHeight()
		local var_7_580 = 7
		local var_7_581 = math.max(1, math.floor(var_7_578 / math.max(1, var_7_580)))
		local var_7_582 = var_7_579
		local var_7_583 = {}

		for iter_7_18 = 0, var_7_580 - 1 do
			local var_7_584 = iter_7_18 * var_7_581

			table.insert(var_7_583, love.graphics.newQuad(var_7_584, 0, var_7_581, var_7_582, var_7_578, var_7_579))
		end

		local var_7_585, var_7_586 = pcall(love.image.newImageData, __recovered_scope_0.var_7_577)

		if not var_7_585 then
			var_7_586 = nil
		end

		var_0_0.ui.spinstick = {
			image = __recovered_scope_0.var_7_576,
			imageData = var_7_586,
			quads = var_7_583,
			frameW = var_7_581,
			frameH = var_7_582,
			frames = var_7_580,
			iw = var_7_578,
			ih = var_7_579,
			orient = oriented
		}

		print(string.format("[assets] Loaded UI spinstick from %s (%dx%d, frames=%d, orient=%s)", __recovered_scope_0.var_7_577, var_7_578, var_7_579, var_7_580, tostring(oriented)))
	else
		print("[assets] spinstick image not found (optional)")
	end

	 __recovered_scope_0.var_7_587 = {
		"src/data/font/coinfont/coinfont.png",
		"data/font/coinfont/coinfont.png"
	}
	 __recovered_scope_0.var_7_588, __recovered_scope_0.var_7_589 = var_0_5(__recovered_scope_0.var_7_587)

	if __recovered_scope_0.var_7_588 then
		__recovered_scope_0.var_7_588:setFilter("nearest", "nearest")

		local var_7_590 = __recovered_scope_0.var_7_588:getWidth()
		local var_7_591 = __recovered_scope_0.var_7_588:getHeight()
		local var_7_592
		local var_7_593 = var_7_590 % 13 == 0 and "1234567890FRE" or "1234567890"
		local var_7_594 = #var_7_593
		local var_7_595 = math.floor(var_7_590 / var_7_594)

		if var_7_595 <= 0 then
			var_7_595 = var_7_590
		end

		local var_7_596 = {}

		for iter_7_19 = 0, var_7_594 - 1 do
			local var_7_597 = iter_7_19 * var_7_595

			var_7_596[iter_7_19 + 1] = love.graphics.newQuad(var_7_597, 0, var_7_595, var_7_591, var_7_590, var_7_591)
		end

		var_0_0.ui.coinDigits = {
			image = __recovered_scope_0.var_7_588,
			quads = var_7_596,
			frameW = var_7_595,
			frameH = var_7_591,
			order = var_7_593
		}

		print(string.format("[assets] Loaded coin sprite font (%s) from %s (%dx%d, frameW=%d)", var_7_593, __recovered_scope_0.var_7_589, var_7_590, var_7_591, var_7_595))
	else
		print("[assets] coin digit sprite font not found (optional)")
	end

	 __recovered_scope_0.var_7_598 = {
		"src/data/font/coinfont/coinfontgreen.png",
		"data/font/coinfont/coinfontgreen.png"
	}
	 __recovered_scope_0.var_7_599, __recovered_scope_0.var_7_600 = var_0_5(__recovered_scope_0.var_7_598)

	if __recovered_scope_0.var_7_599 then
		__recovered_scope_0.var_7_599:setFilter("nearest", "nearest")

		local var_7_601 = __recovered_scope_0.var_7_599:getWidth()
		local var_7_602 = __recovered_scope_0.var_7_599:getHeight()
		local var_7_603 = 11
		local var_7_604 = math.floor(var_7_601 / var_7_603)

		if var_7_604 <= 0 then
			var_7_604 = var_7_601
		end

		local var_7_605 = {}

		for iter_7_20 = 0, var_7_603 - 1 do
			local var_7_606 = iter_7_20 * var_7_604

			var_7_605[iter_7_20 + 1] = love.graphics.newQuad(var_7_606, 0, var_7_604, var_7_602, var_7_601, var_7_602)
		end

		var_0_0.ui.coinDigitsGreen = {
			order = "1234567890+",
			image = __recovered_scope_0.var_7_599,
			quads = var_7_605,
			frameW = var_7_604,
			frameH = var_7_602
		}

		print(string.format("[assets] Loaded coin green sprite font from %s (%dx%d, frameW=%d)", __recovered_scope_0.var_7_600, var_7_601, var_7_602, var_7_604))
	else
		print("[assets] coin green sprite font not found (optional)")
	end

	 __recovered_scope_0.var_7_607 = {
		"src/data/font/coinfont/coinfontred.png",
		"data/font/coinfont/coinfontred.png"
	}
	 __recovered_scope_0.var_7_608, __recovered_scope_0.var_7_609 = var_0_5(__recovered_scope_0.var_7_607)

	if __recovered_scope_0.var_7_608 then
		__recovered_scope_0.var_7_608:setFilter("nearest", "nearest")

		local var_7_610 = __recovered_scope_0.var_7_608:getWidth()
		local var_7_611 = __recovered_scope_0.var_7_608:getHeight()
		local var_7_612 = 11
		local var_7_613 = math.floor(var_7_610 / var_7_612)

		if var_7_613 <= 0 then
			var_7_613 = var_7_610
		end

		local var_7_614 = {}

		for iter_7_21 = 0, var_7_612 - 1 do
			local var_7_615 = iter_7_21 * var_7_613

			var_7_614[iter_7_21 + 1] = love.graphics.newQuad(var_7_615, 0, var_7_613, var_7_611, var_7_610, var_7_611)
		end

		var_0_0.ui.coinDigitsRed = {
			order = "1234567890-",
			image = __recovered_scope_0.var_7_608,
			quads = var_7_614,
			frameW = var_7_613,
			frameH = var_7_611
		}

		print(string.format("[assets] Loaded coin red sprite font from %s (%dx%d, frameW=%d)", __recovered_scope_0.var_7_609, var_7_610, var_7_611, var_7_613))
	else
		print("[assets] coin red sprite font not found (optional)")
	end

	 __recovered_scope_0.var_7_616 = {
		"src/data/font/coinfont/numberpink.png",
		"data/font/coinfont/numberpink.png"
	}
	 __recovered_scope_0.var_7_617, __recovered_scope_0.var_7_618 = var_0_5(__recovered_scope_0.var_7_616)

	if __recovered_scope_0.var_7_617 then
		__recovered_scope_0.var_7_617:setFilter("nearest", "nearest")

		local var_7_619 = __recovered_scope_0.var_7_617:getWidth()
		local var_7_620 = __recovered_scope_0.var_7_617:getHeight()
		local var_7_621 = 10
		local var_7_622 = math.floor(var_7_619 / var_7_621)

		if var_7_622 <= 0 then
			var_7_622 = var_7_619
		end

		local var_7_623 = {}

		for iter_7_22 = 0, var_7_621 - 1 do
			local var_7_624 = iter_7_22 * var_7_622

			var_7_623[iter_7_22 + 1] = love.graphics.newQuad(var_7_624, 0, var_7_622, var_7_620, var_7_619, var_7_620)
		end

		var_0_0.ui.spinDigitsPink = {
			order = "123456789-",
			image = __recovered_scope_0.var_7_617,
			quads = var_7_623,
			frameW = var_7_622,
			frameH = var_7_620
		}

		print(string.format("[assets] Loaded pink number font from %s (%dx%d, frameW=%d)", __recovered_scope_0.var_7_618, var_7_619, var_7_620, var_7_622))
	else
		print("[assets] pink number font not found (optional)")
	end

	 __recovered_scope_0.var_7_625 = {
		"src/data/font/coinfont/numberheartred.png",
		"data/font/coinfont/numberheartred.png"
	}
	 __recovered_scope_0.var_7_626, __recovered_scope_0.var_7_627 = var_0_5(__recovered_scope_0.var_7_625)

	if __recovered_scope_0.var_7_626 then
		__recovered_scope_0.var_7_626:setFilter("nearest", "nearest")

		local var_7_628 = __recovered_scope_0.var_7_626:getWidth()
		local var_7_629 = __recovered_scope_0.var_7_626:getHeight()
		local var_7_630 = 11
		local var_7_631 = math.floor(var_7_628 / var_7_630)

		if var_7_631 <= 0 then
			var_7_631 = var_7_628
		end

		local var_7_632 = {}

		for iter_7_23 = 0, var_7_630 - 1 do
			local var_7_633 = iter_7_23 * var_7_631

			var_7_632[iter_7_23 + 1] = love.graphics.newQuad(var_7_633, 0, var_7_631, var_7_629, var_7_628, var_7_629)
		end

		var_0_0.ui.hpDigitsHeartRed = {
			order = "1234567890-",
			image = __recovered_scope_0.var_7_626,
			quads = var_7_632,
			frameW = var_7_631,
			frameH = var_7_629
		}

		print(string.format("[assets] Loaded heart red number font from %s (%dx%d, frameW=%d)", __recovered_scope_0.var_7_627, var_7_628, var_7_629, var_7_631))
	else
		print("[assets] heart red number font (numberheartred.png) not found (optional)")
	end

	 __recovered_scope_0.var_7_634 = {
		"src/data/font/coinfont/numberdark.png",
		"data/font/coinfont/numberdark.png"
	}
	 __recovered_scope_0.var_7_635, __recovered_scope_0.var_7_636 = var_0_5(__recovered_scope_0.var_7_634)

	if __recovered_scope_0.var_7_635 then
		__recovered_scope_0.var_7_635:setFilter("nearest", "nearest")

		local var_7_637 = __recovered_scope_0.var_7_635:getWidth()
		local var_7_638 = __recovered_scope_0.var_7_635:getHeight()
		local var_7_639 = 10
		local var_7_640 = math.floor(var_7_637 / var_7_639)

		if var_7_640 <= 0 then
			var_7_640 = var_7_637
		end

		local var_7_641 = {}

		for iter_7_24 = 0, var_7_639 - 1 do
			local var_7_642 = iter_7_24 * var_7_640

			var_7_641[iter_7_24 + 1] = love.graphics.newQuad(var_7_642, 0, var_7_640, var_7_638, var_7_637, var_7_638)
		end

		var_0_0.ui.hpDigitsDark = {
			order = "123456789-",
			image = __recovered_scope_0.var_7_635,
			quads = var_7_641,
			frameW = var_7_640,
			frameH = var_7_638
		}

		print(string.format("[assets] Loaded dark number font from %s (%dx%d, frameW=%d)", __recovered_scope_0.var_7_636, var_7_637, var_7_638, var_7_640))
	else
		print("[assets] dark number font (numberdark.png) not found (optional)")
	end

	 __recovered_scope_0.var_7_643 = {
		"src/data/font/m16font/m6x11.png",
		"data/font/m16font/m6x11.png",
		"src/data/font/m16font/m6x11.PNG",
		"data/font/m16font/m6x11.PNG"
	}
	 __recovered_scope_0.var_7_644, __recovered_scope_0.var_7_645 = var_0_5(__recovered_scope_0.var_7_643)

	if __recovered_scope_0.var_7_644 then
		__recovered_scope_0.var_7_644:setFilter("nearest", "nearest")

		local var_7_646 = __recovered_scope_0.var_7_644:getWidth()
		local var_7_647 = __recovered_scope_0.var_7_644:getHeight()
		local var_7_648 = "0123456789abcdefghijklmnopqrstuvwxyz!?&/:;."
		local var_7_649 = 6
		local var_7_650 = 11
		local var_7_651 = #var_7_648 * var_7_649

		if var_7_647 < var_7_650 or var_7_646 < var_7_651 then
			print(string.format("[assets] Warning: m6x11.png size %dx%d smaller than expected %dx%d (w=%d for %d chars). Will attempt partial load.", var_7_646, var_7_647, var_7_651, var_7_650, var_7_651, #var_7_648))
		end

		local var_7_652 = {}
		local var_7_653 = {}

		for iter_7_25 = 1, #var_7_648 do
			local var_7_654 = var_7_648:sub(iter_7_25, iter_7_25)
			local var_7_655 = (iter_7_25 - 1) * var_7_649

			var_7_652[iter_7_25] = love.graphics.newQuad(var_7_655, 0, var_7_649, var_7_650, var_7_646, var_7_647)
			var_7_653[var_7_654] = var_7_652[iter_7_25]
		end

		var_0_0.ui.m6x11 = {
			spacing = 0,
			image = __recovered_scope_0.var_7_644,
			quads = var_7_652,
			map = var_7_653,
			order = var_7_648,
			charW = var_7_649,
			charH = var_7_650,
			draw = function(arg_21_0, arg_21_1, arg_21_2, arg_21_3, arg_21_4)
				if not arg_21_0.image or not arg_21_1 then
					return 0
				end

				local var_21_0 = arg_21_4 and arg_21_4.scale or 1
				local var_21_1 = arg_21_4 and arg_21_4.spacing or arg_21_0.spacing or 0
				local var_21_2 = arg_21_0.image
				local var_21_3 = (arg_21_0.charW + var_21_1) * var_21_0
				local var_21_4 = arg_21_2

				for iter_21_0 = 1, #arg_21_1 do
					local var_21_5 = arg_21_1:sub(iter_21_0, iter_21_0)
					local var_21_6 = arg_21_0.map[var_21_5]

					if var_21_6 then
						love.graphics.draw(var_21_2, var_21_6, var_21_4, arg_21_3, 0, var_21_0, var_21_0)
					end

					var_21_4 = var_21_4 + var_21_3
				end

				return var_21_4 - arg_21_2
			end,
			measure = function(arg_22_0, arg_22_1, arg_22_2)
				if not arg_22_1 then
					return 0, arg_22_0.charH
				end

				local var_22_0 = arg_22_2 and arg_22_2.scale or 1
				local var_22_1 = arg_22_2 and arg_22_2.spacing or arg_22_0.spacing or 0

				return (#arg_22_1 * (arg_22_0.charW + var_22_1) - var_22_1) * var_22_0, arg_22_0.charH * var_22_0
			end
		}

		print(string.format("[assets] Loaded m6x11 sprite font from %s (sheet=%dx%d, chars=%d, char=%dx%d)", __recovered_scope_0.var_7_645, var_7_646, var_7_647, #var_7_648, var_7_649, var_7_650))
	else
		print("[assets] m6x11 sprite font not found (optional)")
	end

	 __recovered_scope_0.var_7_656 = {
		"src/data/font/heartfont/Galmuri9heart_K.fnt",
		"data/font/heartfont/Galmuri9heart_K.fnt"
	}
	 __recovered_scope_0.var_7_657 = nil

	for iter_7_26, iter_7_27 in ipairs(__recovered_scope_0.var_7_656) do
		if love.filesystem.getInfo(iter_7_27) then
			local var_7_658, var_7_659 = pcall(love.graphics.newFont, iter_7_27)

			if var_7_658 and var_7_659 then
				var_7_659:setFilter("nearest", "nearest")

				__recovered_scope_0.var_7_657 = var_7_659
				var_0_0.ui.hpFont = __recovered_scope_0.var_7_657

				print(string.format("[assets] Loaded HP BMFont from %s (height=%d)", iter_7_27, var_7_659:getHeight()))

				break
			end
		end
	end

	if not __recovered_scope_0.var_7_657 then
		print("[assets] HP BMFont (heartfont) not found (optional, will use sprite digits if available)")
	end

	var_0_0.projectiles = {}
	var_0_0.projectilesMeta = {}

	 function __recovered_scope_0.var_7_660(arg_23_0, arg_23_1, arg_23_2, arg_23_3, arg_23_4)
		arg_23_4 = arg_23_4 or {}
		arg_23_2 = arg_23_2 or 1
		arg_23_3 = arg_23_3 or 0.1

		local var_23_0, var_23_1 = var_0_5(arg_23_1)

		if not var_23_0 then
			var_0_0.projectilesMeta[arg_23_0] = {
				found = false,
				tried = arg_23_1,
				used = var_23_1
			}

			print(string.format("[assets] Missing projectile sprite %s (tried like %s)", arg_23_0, var_23_1))

			return
		end

		local var_23_2 = var_23_0:getWidth()
		local var_23_3 = var_23_0:getHeight()
		local var_23_4 = arg_23_4.frameW or math.floor(var_23_2 / math.max(1, arg_23_2))
		local var_23_5 = arg_23_4.frameH or var_23_3
		local var_23_6 = arg_23_4.rowY or 0
		local var_23_7 = {}
		local var_23_8 = {}
		local var_23_9 = var_0_6(var_23_1)
		local var_23_10 = arg_23_4.preciseAlphaCollision == true and 0 or 0.05

		local function var_23_11(arg_24_0, arg_24_1)
			if not var_23_9 then
				return {
					y = 0,
					x = 0,
					w = var_23_4,
					h = var_23_5
				}
			end

			local var_24_0 = var_23_4
			local var_24_1 = var_23_5
			local var_24_2 = -1
			local var_24_3 = -1

			for iter_24_0 = 0, var_23_5 - 1 do
				for iter_24_1 = 0, var_23_4 - 1 do
					local var_24_4 = arg_24_0 + iter_24_1
					local var_24_5 = arg_24_1 + iter_24_0
					local var_24_6, var_24_7, var_24_8, var_24_9 = var_23_9:getPixel(var_24_4, var_24_5)

					if var_24_9 and var_24_9 > var_23_10 then
						if iter_24_1 < var_24_0 then
							var_24_0 = iter_24_1
						end

						if iter_24_0 < var_24_1 then
							var_24_1 = iter_24_0
						end

						if var_24_2 < iter_24_1 then
							var_24_2 = iter_24_1
						end

						if var_24_3 < iter_24_0 then
							var_24_3 = iter_24_0
						end
					end
				end
			end

			if var_24_2 < var_24_0 or var_24_3 < var_24_1 then
				return {
					y = 0,
					x = 0,
					w = var_23_4,
					h = var_23_5
				}
			end

			return {
				x = var_24_0,
				y = var_24_1,
				w = var_24_2 - var_24_0 + 1,
				h = var_24_3 - var_24_1 + 1
			}
		end

		for iter_23_0 = 0, arg_23_2 - 1 do
			local var_23_12 = iter_23_0 * var_23_4
			local var_23_13 = var_23_6

			table.insert(var_23_7, love.graphics.newQuad(var_23_12, var_23_13, var_23_4, var_23_5, var_23_2, var_23_3))

			var_23_8[iter_23_0 + 1] = var_23_11(var_23_12, var_23_13)
		end

		var_0_0.projectiles[arg_23_0] = {
			image = var_23_0,
			imageData = var_23_9,
			frameW = var_23_4,
			frameH = var_23_5,
			frames = arg_23_2,
			speed = arg_23_3,
			quads = var_23_7,
			bounds = var_23_8,
			travelSpeed = arg_23_4.travelSpeed,
			dmgMul = arg_23_4.dmgMul or 1,
			animation = arg_23_4.animation,
			rowY = var_23_6,
			preciseAlphaCollision = arg_23_4.preciseAlphaCollision == true
		}
		var_0_0.projectilesMeta[arg_23_0] = {
			found = true,
			used = var_23_1,
			iw = var_23_2,
			ih = var_23_3,
			frameW = var_23_4,
			frameH = var_23_5,
			rowY = var_23_6
		}

		print(string.format("[assets] Loaded projectile %s from %s (%dx%d, frames=%d)", arg_23_0, var_23_1, var_23_2, var_23_3, arg_23_2))
	end

	__recovered_scope_0.var_7_660("JesterCardBasic", {
		"src/sprites/units/Jester/01SpecialJesterProjectile.png",
		"sprites/units/Jester/01SpecialJesterProjectile.png"
	}, 4, 0.08, {
		frameH = 16,
		travelSpeed = 240,
		dmgMul = 1,
		animation = "basic",
		rowY = 0,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("JesterCardSkill", {
		"src/sprites/units/Jester/01SpecialJesterProjectile.png",
		"sprites/units/Jester/01SpecialJesterProjectile.png"
	}, 8, 0.08, {
		frameH = 16,
		travelSpeed = 240,
		dmgMul = 1,
		animation = "skill",
		rowY = 16,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("TricksterCardBasic", {
		"src/sprites/units/Jester/02SpecialClown_01Projectile.png",
		"src/sprites/units/Jester/02SpecialJester_01Projectile.png",
		"sprites/units/Jester/02SpecialClown_01Projectile.png",
		"sprites/units/Jester/02SpecialJester_01Projectile.png"
	}, 4, 0.08, {
		frameH = 16,
		travelSpeed = 240,
		dmgMul = 1,
		animation = "basic",
		rowY = 0,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("TricksterCardSkill", {
		"src/sprites/units/Jester/02SpecialClown_01Projectile.png",
		"src/sprites/units/Jester/02SpecialJester_01Projectile.png",
		"sprites/units/Jester/02SpecialClown_01Projectile.png",
		"sprites/units/Jester/02SpecialJester_01Projectile.png"
	}, 8, 0.08, {
		frameH = 16,
		travelSpeed = 240,
		dmgMul = 1,
		animation = "skill",
		rowY = 16,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("IllusionistProjectile", {
		"src/sprites/units/Jester/03SpecialJester_01_01Projectile.png",
		"sprites/units/Jester/03SpecialJester_01_01Projectile.png"
	}, 5, 0.08, {
		frameH = 16,
		travelSpeed = 240,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "basic",
		rowY = 0,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("FerretTamerProjectile", {
		"src/sprites/units/Jester/03SpecialJester_02Projectile.png",
		"sprites/units/Jester/03SpecialJester_02Projectile.png"
	}, 5, 0.1, {
		frameH = 16,
		travelSpeed = 210,
		dmgMul = 1,
		animation = "flight",
		rowY = 0,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("FerretTamerProjectileVanish", {
		"src/sprites/units/Jester/03SpecialJester_02Projectile.png",
		"sprites/units/Jester/03SpecialJester_02Projectile.png"
	}, 4, 0.1, {
		frameH = 16,
		travelSpeed = 0,
		dmgMul = 1,
		animation = "vanish",
		rowY = 16,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("HumanArrow", {
		"src/sprites/projectile/humanarrow.png",
		"sprites/projectile/humanarrow.png"
	}, 2, 0.1, {
		travelSpeed = 240,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("CupidArrow", {
		"src/sprites/units/ArcherMan/05Prism/02PrismArcherMan_01Projectile.png",
		"sprites/units/ArcherMan/05Prism/02PrismArcherMan_01Projectile.png"
	}, 4, 0.1, {
		frameH = 16,
		travelSpeed = 220,
		preciseAlphaCollision = true,
		dmgMul = 1,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("SharpshooterArrow", {
		"src/sprites/units/ArcherMan/05Prism/01PrismArcherManProjectile.png",
		"sprites/units/ArcherMan/05Prism/01PrismArcherManProjectile.png"
	}, 4, 0.1, {
		frameH = 16,
		travelSpeed = 220,
		preciseAlphaCollision = true,
		dmgMul = 1,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("SkeletonArcherArrow", {
		"src/sprites/units/ArcherMan/04Legend/01LegendArcherManProjectile.png",
		"sprites/units/ArcherMan/04Legend/01LegendArcherManProjectile.png"
	}, 4, 0.1, {
		frameH = 16,
		travelSpeed = 220,
		preciseAlphaCollision = true,
		dmgMul = 1,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("DarkArcherArrow", {
		"src/sprites/units/ArcherMan/04Legend/02LegendArcherMan_01Projectile.png",
		"sprites/units/ArcherMan/04Legend/02LegendArcherMan_01Projectile.png"
	}, 4, 0.1, {
		frameH = 32,
		travelSpeed = 220,
		preciseAlphaCollision = true,
		dmgMul = 1,
		frameW = 32
	})
	__recovered_scope_0.var_7_660("IllusionArcherArrow", {
		"src/sprites/units/ArcherMan/04Legend/02LegendArcherMan_02Projectile.png",
		"sprites/units/ArcherMan/04Legend/02LegendArcherMan_02Projectile.png"
	}, 4, 0.1, {
		frameH = 16,
		travelSpeed = 220,
		preciseAlphaCollision = true,
		dmgMul = 1,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("GnollArcherArrow", {
		"src/sprites/enemy/Gnolls/GnollArcherArrow.png",
		"sprites/enemy/Gnolls/GnollArcherArrow.png"
	}, 4, 0.08, {
		travelSpeed = 240,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("FirebreatherFire", {
		"src/sprites/enemy/Lizard/FirebreatherFire.png",
		"sprites/enemy/Lizard/FirebreatherFire.png"
	}, 7, 0.12)
	__recovered_scope_0.var_7_660("CackleShamanProjectile", {
		"src/sprites/enemy/Gnolls/CackleShamanprojectile.png",
		"sprites/enemy/Gnolls/CackleShamanprojectile.png"
	}, 4, 0.12, {
		travelSpeed = 210,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("EmberImpProjectile", {
		"src/sprites/enemy/Demon/02Ember ImpPrjectile.png",
		"sprites/enemy/Demon/02Ember ImpPrjectile.png"
	}, 3, 0.08, {
		frameH = 16,
		travelSpeed = 210,
		preciseAlphaCollision = true,
		dmgMul = 1,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("RascalImpProjectile", {
		"src/sprites/enemy/Demon/03Rascal ImpProjectile.png",
		"sprites/enemy/Demon/03Rascal ImpProjectile.png"
	}, 1, 0.1, {
		frameH = 24,
		travelSpeed = 230,
		preciseAlphaCollision = true,
		dmgMul = 1,
		frameW = 24
	})
	__recovered_scope_0.var_7_660("SkeletonDragonSkill", {
		"src/sprites/enemy/Demon/boss/02Skeleton DragonSkill.png",
		"sprites/enemy/Demon/boss/02Skeleton DragonSkill.png"
	}, 9, 0.12, {
		frameW = 48,
		dmgMul = 1,
		animation = "soul_backflow",
		frameH = 32,
		travelSpeed = 0
	})
	__recovered_scope_0.var_7_660("DoomDragonSkill", {
		"src/sprites/enemy/Demon/boss/03Doom DragonSkill.png",
		"sprites/enemy/Demon/boss/03Doom DragonSkill.png"
	}, 9, 0.12, {
		frameW = 48,
		dmgMul = 1,
		animation = "doom_burn",
		frameH = 32,
		travelSpeed = 0
	})
	__recovered_scope_0.var_7_660("SpaceAssassinShuriken", {
		"src/sprites/enemy/Star Wanderers/01Space AssassinProjectile.png",
		"sprites/enemy/Star Wanderers/01Space AssassinProjectile.png"
	}, 4, 0.12, {
		frameH = 32,
		travelSpeed = 120,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "idle",
		rowY = 0,
		frameW = 32
	})
	__recovered_scope_0.var_7_660("SpaceAssassinShurikenGone", {
		"src/sprites/enemy/Star Wanderers/01Space AssassinProjectile.png",
		"sprites/enemy/Star Wanderers/01Space AssassinProjectile.png"
	}, 4, 0.12, {
		frameH = 32,
		travelSpeed = 0,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "gone",
		rowY = 32,
		frameW = 32
	})
	__recovered_scope_0.var_7_660("StarJudgeProjectile", {
		"src/sprites/enemy/Star Wanderers/boss/02Star JudgeProjectile.png",
		"sprites/enemy/Star Wanderers/boss/02Star JudgeProjectile.png"
	}, 3, 0.1, {
		frameH = 16,
		travelSpeed = 210,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "idle",
		rowY = 0,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("CosmicSovereignSkill", {
		"src/sprites/enemy/Star Wanderers/boss/03Cosmic SovereignSkill.png",
		"sprites/enemy/Star Wanderers/boss/03Cosmic SovereignSkill.png"
	}, 7, 0.42857142857142855, {
		animation = "idle",
		frameH = 48,
		frameW = 48,
		rowY = 0
	})
	__recovered_scope_0.var_7_660("CosmicSovereignProjectile", {
		"src/sprites/enemy/Star Wanderers/boss/03Cosmic SovereignProjectile.png",
		"sprites/enemy/Star Wanderers/boss/03Cosmic SovereignProjectile.png"
	}, 8, 0.1, {
		frameH = 22,
		travelSpeed = 210,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "idle",
		rowY = 0,
		frameW = 22
	})
	__recovered_scope_0.var_7_660("SpaceHunterProjectile", {
		"src/sprites/enemy/Star Wanderers/03Space HunterProjectile.png",
		"sprites/enemy/Star Wanderers/03Space HunterProjectile.png"
	}, 1, 0.1, {
		frameH = 32,
		travelSpeed = 210,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "idle",
		rowY = 0,
		frameW = 32
	})
	__recovered_scope_0.var_7_660("SpaceHunterProjectileGone", {
		"src/sprites/enemy/Star Wanderers/03Space HunterProjectile.png",
		"sprites/enemy/Star Wanderers/03Space HunterProjectile.png"
	}, 3, 0.1, {
		frameH = 32,
		travelSpeed = 0,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "gone",
		rowY = 32,
		frameW = 32
	})
	__recovered_scope_0.var_7_660("SpaceWizardProjectile", {
		"src/sprites/enemy/Star Wanderers/06Space WizardProjectile.png",
		"sprites/enemy/Star Wanderers/06Space WizardProjectile.png"
	}, 4, 0.11, {
		frameH = 32,
		travelSpeed = 145,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "idle",
		rowY = 0,
		frameW = 32
	})
	__recovered_scope_0.var_7_660("SpaceWizardProjectileGone", {
		"src/sprites/enemy/Star Wanderers/06Space WizardProjectile.png",
		"sprites/enemy/Star Wanderers/06Space WizardProjectile.png"
	}, 4, 0.11, {
		frameH = 32,
		travelSpeed = 0,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "gone",
		rowY = 32,
		frameW = 32
	})
	__recovered_scope_0.var_7_660("SpaceHunterGravityArrow", {
		"src/sprites/enemy/Star Wanderers/03Space HunterSkill.png",
		"sprites/enemy/Star Wanderers/03Space HunterSkill.png"
	}, 4, 0.1, {
		frameH = 32,
		travelSpeed = 140,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "idle",
		rowY = 0,
		frameW = 32
	})
	__recovered_scope_0.var_7_660("SpaceHunterGravityArrowGone", {
		"src/sprites/enemy/Star Wanderers/03Space HunterSkill.png",
		"sprites/enemy/Star Wanderers/03Space HunterSkill.png"
	}, 4, 0.1, {
		frameH = 32,
		travelSpeed = 0,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "gone",
		rowY = 32,
		frameW = 32
	})
	__recovered_scope_0.var_7_660("StarlightPaladinProjectile", {
		"src/sprites/enemy/Star Wanderers/09Starlight PaladinProjectile.png",
		"sprites/enemy/Star Wanderers/09Starlight PaladinProjectile.png"
	}, 3, 0.1, {
		frameH = 32,
		travelSpeed = 170,
		dmgMul = 0,
		preciseAlphaCollision = true,
		animation = "idle",
		rowY = 0,
		frameW = 32
	})
	__recovered_scope_0.var_7_660("StarlightPaladinProjectileGone", {
		"src/sprites/enemy/Star Wanderers/09Starlight PaladinProjectile.png",
		"sprites/enemy/Star Wanderers/09Starlight PaladinProjectile.png"
	}, 4, 0.1, {
		frameH = 32,
		travelSpeed = 0,
		dmgMul = 0,
		preciseAlphaCollision = true,
		animation = "gone",
		rowY = 32,
		frameW = 32
	})
	__recovered_scope_0.var_7_660("StarPriestessHammer", {
		"src/sprites/enemy/Star Wanderers/10Star PriestessProjectile.png",
		"sprites/enemy/Star Wanderers/10Star PriestessProjectile.png"
	}, 7, 0.07, {
		frameH = 32,
		travelSpeed = 0,
		dmgMul = 0.75,
		preciseAlphaCollision = true,
		animation = "hammer_rain",
		rowY = 0,
		frameW = 32
	})
	__recovered_scope_0.var_7_660("CackleShamanCurseDoll", {
		"src/sprites/enemy/Gnolls/cursedoll.png",
		"sprites/enemy/Gnolls/cursedoll.png"
	}, 4, 0.13, {
		travelSpeed = 0,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("WastelandBiteIcon", {
		"src/sprites/enemy/Gnolls/bite.png",
		"sprites/enemy/Gnolls/bite.png"
	}, 4, 0.06, {
		travelSpeed = 0,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("PackChiefSkill", {
		"src/sprites/enemy/Gnolls/PackChiefskill.png",
		"sprites/enemy/Gnolls/PackChiefskill.png"
	}, 3, 0.08, {
		travelSpeed = 0,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("DunefangProjectile", {
		"src/sprites/enemy/Gnolls/boss/Dunefangprojectile.png",
		"sprites/enemy/Gnolls/boss/Dunefangprojectile.png"
	}, 4, 0.24, {
		travelSpeed = 95,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("ElfArrow", {
		"src/sprites/projectile/elfarrow.png",
		"sprites/projectile/elfarrow.png"
	}, 2, 0.1, {
		travelSpeed = 240,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("AbyssArrow", {
		"src/sprites/projectile/abyssarrow.png",
		"sprites/projectile/abyssarrow.png"
	}, 4, 0.08, {
		travelSpeed = 240,
		dmgMul = 1.15
	})
	__recovered_scope_0.var_7_660("ElfPurpleArrow", {
		"src/sprites/projectile/elfpurplearrow.png",
		"sprites/projectile/elfpurplearrow.png"
	}, 4, 0.08, {
		travelSpeed = 230,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("AssaultBarrierAttack", {
		"src/sprites/projectile/AssaultBarrierattack.png",
		"sprites/projectile/AssaultBarrierattack.png"
	}, 4, 0.14, {
		travelSpeed = 260,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("SpawnEffect", {
		"src/sprites/projectile/spawneffect.png",
		"sprites/projectile/spawneffect.png"
	}, 8, 0.0875, {})
	__recovered_scope_0.var_7_660("AbyssArrow2", {
		"src/sprites/projectile/abyssarrow2.png",
		"sprites/projectile/abyssarrow2.png"
	}, 6, 0.08, {
		travelSpeed = 0,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("WoodWardenAttack", {
		"src/sprites/projectile/woodwardenattack.png",
		"sprites/projectile/woodwardenattack.png"
	}, 11, 0.08, {
		travelSpeed = 0,
		dmgMul = 1.4
	})
	__recovered_scope_0.var_7_660("EyeWarlockProjectile", {
		"src/sprites/enemy/Eyes/eyewarlockprojectile.png",
		"sprites/enemy/Eyes/eyewarlockprojectile.png"
	}, 3, 0.1, {
		travelSpeed = 180,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("HumanMagic", {
		"src/sprites/projectile/humanmagic.png",
		"sprites/projectile/humanmagic.png"
	}, 2, 0.1, {
		travelSpeed = 240,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("ElfMagic", {
		"src/sprites/projectile/elfmagic.png",
		"sprites/projectile/elfmagic.png"
	}, 2, 0.1, {
		travelSpeed = 230,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("BindingBoltAttack", {
		"src/sprites/projectile/BindingBoltAttack.png",
		"sprites/projectile/BindingBoltAttack.png"
	}, 4, 0.14, {
		travelSpeed = 150,
		dmgMul = 1
	})

	 __recovered_scope_0.var_7_661 = "루나 현자 발사체"
	 __recovered_scope_0.var_7_662 = {
		"src/sprites/projectile/lunaspell.png",
		"sprites/projectile/lunaspell.png"
	}
	 __recovered_scope_0.var_7_663, __recovered_scope_0.var_7_664 = var_0_5(__recovered_scope_0.var_7_662)

	if __recovered_scope_0.var_7_663 then
		__recovered_scope_0.var_7_663:setFilter("nearest", "nearest")

		local var_7_665 = __recovered_scope_0.var_7_663:getWidth()
		local var_7_666 = __recovered_scope_0.var_7_663:getHeight()
		local var_7_667 = 32
		local var_7_668 = 32
		local var_7_669 = {}
		local var_7_670 = {}
		local var_7_671, var_7_672 = pcall(love.image.newImageData, __recovered_scope_0.var_7_664)

		if not var_7_671 then
			var_7_672 = nil
		end

		local function var_7_673(arg_25_0, arg_25_1)
			if not var_7_672 then
				return {
					y = 0,
					x = 0,
					w = var_7_667,
					h = var_7_668
				}
			end

			local var_25_0 = var_7_667
			local var_25_1 = var_7_668
			local var_25_2 = -1
			local var_25_3 = -1

			for iter_25_0 = 0, var_7_668 - 1 do
				for iter_25_1 = 0, var_7_667 - 1 do
					local var_25_4 = arg_25_0 + iter_25_1
					local var_25_5 = arg_25_1 + iter_25_0
					local var_25_6, var_25_7, var_25_8, var_25_9 = var_7_672:getPixel(var_25_4, var_25_5)

					if var_25_9 and var_25_9 > 0.05 then
						if iter_25_1 < var_25_0 then
							var_25_0 = iter_25_1
						end

						if iter_25_0 < var_25_1 then
							var_25_1 = iter_25_0
						end

						if var_25_2 < iter_25_1 then
							var_25_2 = iter_25_1
						end

						if var_25_3 < iter_25_0 then
							var_25_3 = iter_25_0
						end
					end
				end
			end

			if var_25_2 < var_25_0 or var_25_3 < var_25_1 then
				return {
					y = 0,
					x = 0,
					w = var_7_667,
					h = var_7_668
				}
			end

			return {
				x = var_25_0,
				y = var_25_1,
				w = var_25_2 - var_25_0 + 1,
				h = var_25_3 - var_25_1 + 1
			}
		end

		for iter_7_28 = 0, 3 do
			local var_7_674 = iter_7_28 * var_7_667
			local var_7_675 = 0

			table.insert(var_7_669, love.graphics.newQuad(var_7_674, var_7_675, var_7_667, var_7_668, var_7_665, var_7_666))
			table.insert(var_7_670, var_7_673(var_7_674, var_7_675))
		end

		for iter_7_29 = 0, 2 do
			local var_7_676 = iter_7_29 * var_7_667
			local var_7_677 = 32

			table.insert(var_7_669, love.graphics.newQuad(var_7_676, var_7_677, var_7_667, var_7_668, var_7_665, var_7_666))
			table.insert(var_7_670, var_7_673(var_7_676, var_7_677))
		end

		var_0_0.projectiles[__recovered_scope_0.var_7_661] = {
			speed = 0.1,
			dmgMul = 1,
			travelSpeed = 240,
			frames = 7,
			image = __recovered_scope_0.var_7_663,
			imageData = var_7_672,
			frameW = var_7_667,
			frameH = var_7_668,
			quads = var_7_669,
			bounds = var_7_670
		}
		var_0_0.projectilesMeta[__recovered_scope_0.var_7_661] = {
			found = true,
			used = __recovered_scope_0.var_7_664,
			iw = var_7_665,
			ih = var_7_666,
			frameW = var_7_667,
			frameH = var_7_668
		}

		print(string.format("[assets] Loaded projectile %s from %s (%dx%d, frames=7)", __recovered_scope_0.var_7_661, __recovered_scope_0.var_7_664, var_7_665, var_7_666))
	else
		var_0_0.projectilesMeta[__recovered_scope_0.var_7_661] = {
			found = false,
			tried = __recovered_scope_0.var_7_662,
			used = __recovered_scope_0.var_7_664
		}

		print(string.format("[assets] Missing projectile sprite %s (tried like %s)", __recovered_scope_0.var_7_661, __recovered_scope_0.var_7_664))
	end

	 __recovered_scope_0.var_7_678 = "안틀러 발사체"
	 __recovered_scope_0.var_7_679 = {
		"src/sprites/projectile/antlerspell.png",
		"sprites/projectile/antlerspell.png"
	}
	 __recovered_scope_0.var_7_680, __recovered_scope_0.var_7_681 = var_0_5(__recovered_scope_0.var_7_679)

	if __recovered_scope_0.var_7_680 then
		__recovered_scope_0.var_7_680:setFilter("nearest", "nearest")

		local var_7_682 = __recovered_scope_0.var_7_680:getWidth()
		local var_7_683 = __recovered_scope_0.var_7_680:getHeight()
		local var_7_684 = 32
		local var_7_685 = 32
		local var_7_686 = {}
		local var_7_687 = {}
		local var_7_688, var_7_689 = pcall(love.image.newImageData, __recovered_scope_0.var_7_681)

		if not var_7_688 then
			var_7_689 = nil
		end

		local function var_7_690(arg_26_0, arg_26_1)
			if not var_7_689 then
				return {
					y = 0,
					x = 0,
					w = var_7_684,
					h = var_7_685
				}
			end

			local var_26_0 = var_7_684
			local var_26_1 = var_7_685
			local var_26_2 = -1
			local var_26_3 = -1

			for iter_26_0 = 0, var_7_685 - 1 do
				for iter_26_1 = 0, var_7_684 - 1 do
					local var_26_4 = arg_26_0 + iter_26_1
					local var_26_5 = arg_26_1 + iter_26_0
					local var_26_6, var_26_7, var_26_8, var_26_9 = var_7_689:getPixel(var_26_4, var_26_5)

					if var_26_9 and var_26_9 > 0.05 then
						if iter_26_1 < var_26_0 then
							var_26_0 = iter_26_1
						end

						if iter_26_0 < var_26_1 then
							var_26_1 = iter_26_0
						end

						if var_26_2 < iter_26_1 then
							var_26_2 = iter_26_1
						end

						if var_26_3 < iter_26_0 then
							var_26_3 = iter_26_0
						end
					end
				end
			end

			if var_26_2 < var_26_0 or var_26_3 < var_26_1 then
				return {
					y = 0,
					x = 0,
					w = var_7_684,
					h = var_7_685
				}
			end

			return {
				x = var_26_0,
				y = var_26_1,
				w = var_26_2 - var_26_0 + 1,
				h = var_26_3 - var_26_1 + 1
			}
		end

		for iter_7_30 = 0, 4 do
			local var_7_691 = iter_7_30 * var_7_684
			local var_7_692 = 0

			table.insert(var_7_686, love.graphics.newQuad(var_7_691, var_7_692, var_7_684, var_7_685, var_7_682, var_7_683))
			table.insert(var_7_687, var_7_690(var_7_691, var_7_692))
		end

		for iter_7_31 = 0, 2 do
			local var_7_693 = iter_7_31 * var_7_684
			local var_7_694 = 32

			table.insert(var_7_686, love.graphics.newQuad(var_7_693, var_7_694, var_7_684, var_7_685, var_7_682, var_7_683))
			table.insert(var_7_687, var_7_690(var_7_693, var_7_694))
		end

		var_0_0.projectiles[__recovered_scope_0.var_7_678] = {
			speed = 0.1,
			dmgMul = 1,
			travelSpeed = 240,
			frames = 8,
			image = __recovered_scope_0.var_7_680,
			imageData = var_7_689,
			frameW = var_7_684,
			frameH = var_7_685,
			quads = var_7_686,
			bounds = var_7_687
		}
		var_0_0.projectilesMeta[__recovered_scope_0.var_7_678] = {
			found = true,
			used = __recovered_scope_0.var_7_681,
			iw = var_7_682,
			ih = var_7_683,
			frameW = var_7_684,
			frameH = var_7_685
		}

		print(string.format("[assets] Loaded projectile %s from %s (%dx%d, frames=8)", __recovered_scope_0.var_7_678, __recovered_scope_0.var_7_681, var_7_682, var_7_683))
	else
		var_0_0.projectilesMeta[__recovered_scope_0.var_7_678] = {
			found = false,
			tried = __recovered_scope_0.var_7_679,
			used = __recovered_scope_0.var_7_681
		}

		print(string.format("[assets] Missing projectile sprite %s (tried like %s)", __recovered_scope_0.var_7_678, __recovered_scope_0.var_7_681))
	end

	__recovered_scope_0.var_7_660("BoneGreenSpell", {
		"src/sprites/projectile/bonegreenspell.png",
		"sprites/projectile/bonegreenspell.png"
	}, 2, 0.1, {
		travelSpeed = 230,
		dmgMul = 1.1
	})
	__recovered_scope_0.var_7_660("BoneMagic", {
		"src/sprites/projectile/bonespell.png",
		"sprites/projectile/bonespell.png"
	}, 4, 0.1, {
		travelSpeed = 230,
		dmgMul = 1.05
	})
	__recovered_scope_0.var_7_660("PierceProjectile", {
		"src/sprites/projectile/pierceprojectile.png",
		"sprites/projectile/pierceprojectile.png"
	}, 2, 0.1, {
		travelSpeed = 155,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("ThrowingAxe", {
		"src/sprites/enemy/Orcs/MiniThrowingAxe.png",
		"sprites/enemy/Orcs/MiniThrowingAxe.png"
	}, 4, 0.08, {
		travelSpeed = 240,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("LizardHunterSpear", {
		"src/sprites/enemy/Lizard/LizardHunterSpear.png",
		"sprites/enemy/Lizard/LizardHunterSpear.png"
	}, 1, 0.1, {
		travelSpeed = 200,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("VikingAxe", {
		"src/sprites/projectile/VikingAxe.png",
		"sprites/projectile/VikingAxe.png"
	}, 4, 0.08, {
		travelSpeed = 160,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("OrcAxe", {
		"src/sprites/enemy/Orcs/MiniThrowingAxe_S.png",
		"sprites/enemy/Orcs/MiniThrowingAxe_S.png"
	}, 4, 0.08, {
		travelSpeed = 240,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("OrcArchShamanAttack", {
		"src/sprites/projectile/OrcArchShamanattack.png",
		"sprites/projectile/OrcArchShamanattack.png"
	}, 5, 0.08, {
		travelSpeed = 210,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("OrcArchShamanSkill", {
		"src/sprites/projectile/OrcArchShamanSkill.png",
		"sprites/projectile/OrcArchShamanSkill.png"
	}, 5, 0.14, {
		travelSpeed = 0,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("CombustionBlastProjectile", {
		"src/sprites/units/SwordMan/03Rare/03RareSwordMan_02_01Projectile.png"
	}, 4, 0.1, {
		travelSpeed = 220,
		frameH = 16,
		frameW = 32,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("FireCone", {
		"src/sprites/projectile/FireCone.png"
	}, 10, 0.06, {
		travelSpeed = 0
	})
	__recovered_scope_0.var_7_660("MeteorFall", {
		"src/sprites/projectile/meteorfall.png"
	}, 6, 0.08, {
		travelSpeed = 0
	})
	__recovered_scope_0.var_7_660("MeteorGround", {
		"src/sprites/projectile/meteorground.png"
	}, 5, 0.1, {
		travelSpeed = 0
	})

	 __recovered_scope_0.var_7_695 = "ShadowSorcererAttack"
	 __recovered_scope_0.var_7_696 = {
		"src/sprites/projectile/shadowsorcererattack.png",
		"sprites/projectile/shadowsorcererattack.png"
	}
	 __recovered_scope_0.var_7_697, __recovered_scope_0.var_7_698 = var_0_5(__recovered_scope_0.var_7_696)

	if __recovered_scope_0.var_7_697 then
		__recovered_scope_0.var_7_697:setFilter("nearest", "nearest")

		local var_7_699 = __recovered_scope_0.var_7_697:getWidth()
		local var_7_700 = __recovered_scope_0.var_7_697:getHeight()
		local var_7_701 = 32
		local var_7_702 = 32
		local var_7_703 = {}
		local var_7_704 = {}
		local var_7_705, var_7_706 = pcall(love.image.newImageData, __recovered_scope_0.var_7_698)

		if not var_7_705 then
			var_7_706 = nil
		end

		local function var_7_707(arg_27_0, arg_27_1)
			if not var_7_706 then
				return {
					y = 0,
					x = 0,
					w = var_7_701,
					h = var_7_702
				}
			end

			local var_27_0 = var_7_701
			local var_27_1 = var_7_702
			local var_27_2 = -1
			local var_27_3 = -1

			for iter_27_0 = 0, var_7_702 - 1 do
				for iter_27_1 = 0, var_7_701 - 1 do
					local var_27_4 = arg_27_0 + iter_27_1
					local var_27_5 = arg_27_1 + iter_27_0
					local var_27_6, var_27_7, var_27_8, var_27_9 = var_7_706:getPixel(var_27_4, var_27_5)

					if var_27_9 and var_27_9 > 0.05 then
						if iter_27_1 < var_27_0 then
							var_27_0 = iter_27_1
						end

						if iter_27_0 < var_27_1 then
							var_27_1 = iter_27_0
						end

						if var_27_2 < iter_27_1 then
							var_27_2 = iter_27_1
						end

						if var_27_3 < iter_27_0 then
							var_27_3 = iter_27_0
						end
					end
				end
			end

			if var_27_2 < var_27_0 or var_27_3 < var_27_1 then
				return {
					y = 0,
					x = 0,
					w = var_7_701,
					h = var_7_702
				}
			end

			return {
				x = var_27_0,
				y = var_27_1,
				w = var_27_2 - var_27_0 + 1,
				h = var_27_3 - var_27_1 + 1
			}
		end

		for iter_7_32 = 0, 2 do
			local var_7_708 = iter_7_32 * var_7_701
			local var_7_709 = 0

			table.insert(var_7_703, love.graphics.newQuad(var_7_708, var_7_709, var_7_701, var_7_702, var_7_699, var_7_700))
			table.insert(var_7_704, var_7_707(var_7_708, var_7_709))
		end

		for iter_7_33 = 0, 1 do
			local var_7_710 = iter_7_33 * var_7_701
			local var_7_711 = 32

			table.insert(var_7_703, love.graphics.newQuad(var_7_710, var_7_711, var_7_701, var_7_702, var_7_699, var_7_700))
			table.insert(var_7_704, var_7_707(var_7_710, var_7_711))
		end

		var_0_0.projectiles[__recovered_scope_0.var_7_695] = {
			speed = 0.1,
			dmgMul = 1,
			travelSpeed = 240,
			frames = 5,
			image = __recovered_scope_0.var_7_697,
			imageData = var_7_706,
			frameW = var_7_701,
			frameH = var_7_702,
			quads = var_7_703,
			bounds = var_7_704
		}

		print(string.format("[assets] Loaded projectile %s from %s (%dx%d, frames=5)", __recovered_scope_0.var_7_695, __recovered_scope_0.var_7_698, var_7_699, var_7_700))
	else
		print("[assets] Missing projectile sprite " .. __recovered_scope_0.var_7_695)
	end

	 __recovered_scope_0.var_7_712 = "ArcaneCore"
	 __recovered_scope_0.var_7_713 = {
		"src/sprites/projectile/ArcaneCore.png",
		"src/sprites/projectile/ArcaneCore.png"
	}
	 __recovered_scope_0.var_7_714, __recovered_scope_0.var_7_715 = var_0_5(__recovered_scope_0.var_7_713)

	if __recovered_scope_0.var_7_714 then
		__recovered_scope_0.var_7_714:setFilter("nearest", "nearest")

		local var_7_716 = __recovered_scope_0.var_7_714:getWidth()
		local var_7_717 = __recovered_scope_0.var_7_714:getHeight()
		local var_7_718 = {}

		for iter_7_34 = 0, 2 do
			for iter_7_35 = 0, 4 do
				table.insert(var_7_718, love.graphics.newQuad(iter_7_35 * 16, iter_7_34 * 16, 16, 16, var_7_716, var_7_717))
			end
		end

		if var_0_0.projectiles then
			var_0_0.projectiles[__recovered_scope_0.var_7_712] = {
				frames = 15,
				frameH = 16,
				frameW = 16,
				image = __recovered_scope_0.var_7_714,
				quads = var_7_718
			}

			print("[assets] Loaded ArcaneCore projectile successfully from tryLoad")
		end
	end

	 __recovered_scope_0.var_7_719 = "ArcaneOrb"
	 __recovered_scope_0.var_7_720 = {
		"src/sprites/projectile/ArcaneOrb.png",
		"src/sprites/projectile/ArcaneOrb.png"
	}
	 __recovered_scope_0.var_7_721, __recovered_scope_0.var_7_722 = var_0_5(__recovered_scope_0.var_7_720)

	if __recovered_scope_0.var_7_721 then
		__recovered_scope_0.var_7_721:setFilter("nearest", "nearest")

		local var_7_723 = __recovered_scope_0.var_7_721:getWidth()
		local var_7_724 = __recovered_scope_0.var_7_721:getHeight()
		local var_7_725 = 16
		local var_7_726 = 16
		local var_7_727 = {}
		local var_7_728 = {}
		local var_7_729, var_7_730 = pcall(love.image.newImageData, __recovered_scope_0.var_7_722)

		if not var_7_729 then
			var_7_730 = nil
		end

		local function var_7_731(arg_28_0, arg_28_1)
			if not var_7_730 then
				return {
					y = 0,
					x = 0,
					w = var_7_725,
					h = var_7_726
				}
			end

			local var_28_0 = var_7_725
			local var_28_1 = var_7_726
			local var_28_2 = -1
			local var_28_3 = -1

			for iter_28_0 = 0, var_7_726 - 1 do
				for iter_28_1 = 0, var_7_725 - 1 do
					local var_28_4 = arg_28_0 + iter_28_1
					local var_28_5 = arg_28_1 + iter_28_0

					if var_28_4 < var_7_723 and var_28_5 < var_7_724 then
						local var_28_6, var_28_7, var_28_8, var_28_9 = var_7_730:getPixel(var_28_4, var_28_5)

						if var_28_9 and var_28_9 > 0.05 then
							if iter_28_1 < var_28_0 then
								var_28_0 = iter_28_1
							end

							if iter_28_0 < var_28_1 then
								var_28_1 = iter_28_0
							end

							if var_28_2 < iter_28_1 then
								var_28_2 = iter_28_1
							end

							if var_28_3 < iter_28_0 then
								var_28_3 = iter_28_0
							end
						end
					end
				end
			end

			if var_28_2 < var_28_0 or var_28_3 < var_28_1 then
				return {
					y = 0,
					x = 0,
					w = var_7_725,
					h = var_7_726
				}
			end

			return {
				x = var_28_0,
				y = var_28_1,
				w = var_28_2 - var_28_0 + 1,
				h = var_28_3 - var_28_1 + 1
			}
		end

		for iter_7_36 = 0, 4 do
			local var_7_732 = iter_7_36 * var_7_725
			local var_7_733 = 0

			table.insert(var_7_727, love.graphics.newQuad(var_7_732, var_7_733, var_7_725, var_7_726, var_7_723, var_7_724))
			table.insert(var_7_728, var_7_731(var_7_732, var_7_733))
		end

		for iter_7_37 = 0, 1 do
			local var_7_734 = iter_7_37 * var_7_725
			local var_7_735 = 16

			table.insert(var_7_727, love.graphics.newQuad(var_7_734, var_7_735, var_7_725, var_7_726, var_7_723, var_7_724))
			table.insert(var_7_728, var_7_731(var_7_734, var_7_735))
		end

		var_0_0.projectiles[__recovered_scope_0.var_7_719] = {
			speed = 0.08,
			dmgMul = 1,
			travelSpeed = 240,
			frames = 7,
			image = __recovered_scope_0.var_7_721,
			imageData = var_7_730,
			frameW = var_7_725,
			frameH = var_7_726,
			quads = var_7_727,
			bounds = var_7_728
		}

		print(string.format("[assets] Loaded projectile %s from %s (%dx%d, frames=7)", __recovered_scope_0.var_7_719, __recovered_scope_0.var_7_722, var_7_723, var_7_724))
	else
		var_0_0.projectilesMeta[__recovered_scope_0.var_7_719] = {
			found = false,
			tried = __recovered_scope_0.var_7_720,
			used = __recovered_scope_0.var_7_722
		}

		print(string.format("[assets] Missing projectile sprite %s", __recovered_scope_0.var_7_719))
	end

	 __recovered_scope_0.var_7_736 = "ShadowSorcererAttack2"
	 __recovered_scope_0.var_7_737 = {
		"src/sprites/projectile/shadowsorcererattack2.png",
		"sprites/projectile/shadowsorcererattack2.png"
	}
	 __recovered_scope_0.var_7_738, __recovered_scope_0.var_7_739 = var_0_5(__recovered_scope_0.var_7_737)

	if __recovered_scope_0.var_7_738 then
		__recovered_scope_0.var_7_738:setFilter("nearest", "nearest")

		local var_7_740 = __recovered_scope_0.var_7_738:getWidth()
		local var_7_741 = __recovered_scope_0.var_7_738:getHeight()
		local var_7_742 = 32
		local var_7_743 = 32
		local var_7_744 = {}
		local var_7_745 = {}
		local var_7_746, var_7_747 = pcall(love.image.newImageData, __recovered_scope_0.var_7_739)

		if not var_7_746 then
			var_7_747 = nil
		end

		local function var_7_748(arg_29_0, arg_29_1)
			if not var_7_747 then
				return {
					y = 0,
					x = 0,
					w = var_7_742,
					h = var_7_743
				}
			end

			local var_29_0 = var_7_742
			local var_29_1 = var_7_743
			local var_29_2 = -1
			local var_29_3 = -1

			for iter_29_0 = 0, var_7_743 - 1 do
				for iter_29_1 = 0, var_7_742 - 1 do
					local var_29_4 = arg_29_0 + iter_29_1
					local var_29_5 = arg_29_1 + iter_29_0
					local var_29_6, var_29_7, var_29_8, var_29_9 = var_7_747:getPixel(var_29_4, var_29_5)

					if var_29_9 and var_29_9 > 0.05 then
						if iter_29_1 < var_29_0 then
							var_29_0 = iter_29_1
						end

						if iter_29_0 < var_29_1 then
							var_29_1 = iter_29_0
						end

						if var_29_2 < iter_29_1 then
							var_29_2 = iter_29_1
						end

						if var_29_3 < iter_29_0 then
							var_29_3 = iter_29_0
						end
					end
				end
			end

			if var_29_2 < var_29_0 or var_29_3 < var_29_1 then
				return {
					y = 0,
					x = 0,
					w = var_7_742,
					h = var_7_743
				}
			end

			return {
				x = var_29_0,
				y = var_29_1,
				w = var_29_2 - var_29_0 + 1,
				h = var_29_3 - var_29_1 + 1
			}
		end

		for iter_7_38 = 0, 2 do
			local var_7_749 = iter_7_38 * var_7_742
			local var_7_750 = 0

			table.insert(var_7_744, love.graphics.newQuad(var_7_749, var_7_750, var_7_742, var_7_743, var_7_740, var_7_741))
			table.insert(var_7_745, var_7_748(var_7_749, var_7_750))
		end

		for iter_7_39 = 0, 1 do
			local var_7_751 = iter_7_39 * var_7_742
			local var_7_752 = 32

			table.insert(var_7_744, love.graphics.newQuad(var_7_751, var_7_752, var_7_742, var_7_743, var_7_740, var_7_741))
			table.insert(var_7_745, var_7_748(var_7_751, var_7_752))
		end

		var_0_0.projectiles[__recovered_scope_0.var_7_736] = {
			speed = 0.1,
			dmgMul = 1,
			travelSpeed = 240,
			frames = 5,
			image = __recovered_scope_0.var_7_738,
			imageData = var_7_747,
			frameW = var_7_742,
			frameH = var_7_743,
			quads = var_7_744,
			bounds = var_7_745
		}

		print(string.format("[assets] Loaded projectile %s from %s (%dx%d, frames=5)", __recovered_scope_0.var_7_736, __recovered_scope_0.var_7_739, var_7_740, var_7_741))
	else
		print("[assets] Missing projectile sprite " .. __recovered_scope_0.var_7_736)
	end

	__recovered_scope_0.var_7_660("WarlordAttackEffect", {
		"src/sprites/projectile/warlordattack.png",
		"sprites/projectile/warlordattack.png"
	}, 4, 0.08, {
		travelSpeed = 0,
		dmgMul = 0
	})

	 __recovered_scope_0.var_7_753 = "ElfKnightSword"
	 __recovered_scope_0.var_7_754 = {
		"src/sprites/projectile/elfknightsword.png",
		"sprites/projectile/elfknightsword.png"
	}
	 __recovered_scope_0.var_7_755, __recovered_scope_0.var_7_756 = var_0_5(__recovered_scope_0.var_7_754)

	if __recovered_scope_0.var_7_755 then
		__recovered_scope_0.var_7_755:setFilter("nearest", "nearest")

		local var_7_757 = __recovered_scope_0.var_7_755:getWidth()
		local var_7_758 = __recovered_scope_0.var_7_755:getHeight()
		local var_7_759 = 32
		local var_7_760 = 32
		local var_7_761 = {}
		local var_7_762 = {}
		local var_7_763, var_7_764 = pcall(love.image.newImageData, __recovered_scope_0.var_7_756)

		if not var_7_763 then
			var_7_764 = nil
		end

		local function var_7_765(arg_30_0, arg_30_1)
			if not var_7_764 then
				return {
					y = 0,
					x = 0,
					w = var_7_759,
					h = var_7_760
				}
			end

			local var_30_0 = var_7_759
			local var_30_1 = var_7_760
			local var_30_2 = -1
			local var_30_3 = -1

			for iter_30_0 = 0, var_7_760 - 1 do
				for iter_30_1 = 0, var_7_759 - 1 do
					local var_30_4, var_30_5, var_30_6, var_30_7 = var_7_764:getPixel(arg_30_0 + iter_30_1, arg_30_1 + iter_30_0)

					if var_30_7 and var_30_7 > 0.05 then
						if iter_30_1 < var_30_0 then
							var_30_0 = iter_30_1
						end

						if iter_30_0 < var_30_1 then
							var_30_1 = iter_30_0
						end

						if var_30_2 < iter_30_1 then
							var_30_2 = iter_30_1
						end

						if var_30_3 < iter_30_0 then
							var_30_3 = iter_30_0
						end
					end
				end
			end

			if var_30_2 < var_30_0 or var_30_3 < var_30_1 then
				return {
					y = 0,
					x = 0,
					w = var_7_759,
					h = var_7_760
				}
			end

			return {
				x = var_30_0,
				y = var_30_1,
				w = var_30_2 - var_30_0 + 1,
				h = var_30_3 - var_30_1 + 1
			}
		end

		for iter_7_40 = 0, 1 do
			for iter_7_41 = 0, 3 do
				local var_7_766 = iter_7_41 * var_7_759
				local var_7_767 = iter_7_40 * var_7_760

				table.insert(var_7_761, love.graphics.newQuad(var_7_766, var_7_767, var_7_759, var_7_760, var_7_757, var_7_758))
				table.insert(var_7_762, var_7_765(var_7_766, var_7_767))
			end
		end

		var_0_0.projectiles[__recovered_scope_0.var_7_753] = {
			speed = 0.12,
			dmgMul = 1,
			travelSpeed = 80,
			frames = 8,
			image = __recovered_scope_0.var_7_755,
			imageData = var_7_764,
			frameW = var_7_759,
			frameH = var_7_760,
			quads = var_7_761,
			bounds = var_7_762
		}
		var_0_0.projectilesMeta[__recovered_scope_0.var_7_753] = {
			found = true,
			used = __recovered_scope_0.var_7_756,
			iw = var_7_757,
			ih = var_7_758,
			frameW = var_7_759,
			frameH = var_7_760
		}

		print(string.format("[assets] Loaded projectile %s from %s (%dx%d, frames=8)", __recovered_scope_0.var_7_753, __recovered_scope_0.var_7_756, var_7_757, var_7_758))
	else
		var_0_0.projectilesMeta[__recovered_scope_0.var_7_753] = {
			found = false,
			tried = __recovered_scope_0.var_7_754,
			used = __recovered_scope_0.var_7_756
		}

		print(string.format("[assets] Missing projectile sprite %s (tried like %s)", __recovered_scope_0.var_7_753, __recovered_scope_0.var_7_756))
	end

	__recovered_scope_0.var_7_660("DarklordSpell", {
		"src/sprites/projectile/darklordspell.png",
		"sprites/projectile/darklordspell.png"
	}, 4, 0.08, {
		travelSpeed = 240,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("DarkOrbCrash", {
		"src/sprites/projectile/darklordspell.png",
		"sprites/projectile/darklordspell.png"
	}, 4, 0.08, {
		travelSpeed = 240,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("StormBlade", {
		"src/sprites/projectile/stormblade.png",
		"sprites/projectile/stormblade.png"
	}, 4, 0.12, {
		travelSpeed = 110,
		dmgMul = 1.3
	})
	__recovered_scope_0.var_7_660("BladeWave", {
		"src/sprites/projectile/bladewave.png",
		"sprites/projectile/bladewave.png"
	}, 4, 0.14, {
		travelSpeed = 200,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("BladeWaveFrankenstein", {
		"src/sprites/projectile/bladewavefrankenstein.png",
		"sprites/projectile/bladewavefrankenstein.png"
	}, 4, 0.14, {
		travelSpeed = 200,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("PiercingThrustProjectile", {
		"src/sprites/projectile/PiercingThrustProjectile.png",
		"sprites/projectile/PiercingThrustProjectile.png"
	}, 4, 0.08, {
		travelSpeed = 150,
		dmgMul = 1.2
	})
	__recovered_scope_0.var_7_660("DownStrikeGround", {
		"src/sprites/projectile/DownStrikeprojectile.png",
		"sprites/projectile/DownStrikeprojectile.png"
	}, 3, 0.1, {
		travelSpeed = 0,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("GlacialShatter", {
		"src/sprites/units/PrinceMan/03Rare/03RarePrinceMan_02_01Projectile.png"
	}, 12, 0.14, {
		dmgMul = 0.8,
		frameW = 32,
		preciseAlphaCollision = true,
		frameH = 32,
		travelSpeed = 0
	})
	__recovered_scope_0.var_7_660("FrostSpike", {
		"src/sprites/units/PrinceMan/03Rare/02RarePrinceMan_02Projectile.png"
	}, 12, 0.14, {
		dmgMul = 1.1,
		frameW = 32,
		preciseAlphaCollision = true,
		frameH = 32,
		travelSpeed = 0
	})
	__recovered_scope_0.var_7_660("EarthCrushProjectile", {
		"src/sprites/projectile/EarthCrushProjectile.png",
		"sprites/projectile/EarthCrushProjectile.png"
	}, 6, 0.08, {
		travelSpeed = 0,
		dmgMul = 1.6
	})
	__recovered_scope_0.var_7_660("HumanArrow3", {
		"src/sprites/projectile/humanarrow3.png",
		"sprites/projectile/humanarrow3.png"
	}, 2, 0.1, {
		travelSpeed = 240,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("ElfArrow", {
		"src/sprites/projectile/elfarrow.png",
		"sprites/projectile/elfarrow.png"
	}, 2, 0.1, {
		travelSpeed = 240,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("ElfArrowShackle", {
		"src/sprites/projectile/elfarrowShackle.png",
		"sprites/projectile/elfarrowShackle.png"
	}, 2, 0.1, {
		travelSpeed = 240,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("RangerBullet", {
		"src/sprites/projectile/bullet.png",
		"sprites/projectile/bullet.png"
	}, 2, 0.1, {
		travelSpeed = 300,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("ConcussionBomb", {
		"src/sprites/units/ArcherMan/03Rare/03RareArcherMan_02_01Skill.png"
	}, 4, 0.1, {
		frameH = 16,
		preciseAlphaCollision = true,
		animation = "idle",
		rowY = 0,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("ConcussionBombExplosion", {
		"src/sprites/units/ArcherMan/03Rare/03RareArcherMan_02_01Skill.png"
	}, 6, 0.1, {
		frameH = 16,
		preciseAlphaCollision = true,
		animation = "explode",
		rowY = 16,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("TimedKeg", {
		"src/sprites/units/ArcherMan/03Rare/02RareArcherMan_02Skill.png"
	}, 8, 0.1, {
		frameH = 16,
		preciseAlphaCollision = true,
		animation = "idle",
		rowY = 0,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("TimedKegExplosion", {
		"src/sprites/units/ArcherMan/03Rare/02RareArcherMan_02Skill.png"
	}, 6, 0.1, {
		frameH = 16,
		preciseAlphaCollision = true,
		animation = "explode",
		rowY = 16,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("GrenadierBomb", {
		"src/sprites/units/ArcherMan/03Rare/02RareArcherMan_02Projectile.png"
	}, 4, 0.1, {
		frameH = 16,
		preciseAlphaCollision = true,
		animation = "idle",
		rowY = 0,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("GrenadierExplosion", {
		"src/sprites/units/ArcherMan/03Rare/02RareArcherMan_02Projectile.png"
	}, 6, 0.1, {
		frameH = 16,
		preciseAlphaCollision = true,
		animation = "explode",
		rowY = 16,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("ArtilleristProjectile", {
		"src/sprites/units/ArcherMan/03Rare/02RareArcherMan_01Projectile.png"
	}, 1, 0.1, {
		travelSpeed = 250,
		frameH = 16,
		frameW = 16,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("PlainsHorse", {
		"src/sprites/units/HorseMan/03Rare/horse.png"
	}, 6, 0.09, {
		frameH = 32,
		travelSpeed = 120,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "walk",
		rowY = 0,
		frameW = 32
	})
	__recovered_scope_0.var_7_660("TripleTide", {
		"src/sprites/units/Mage/03Rare/03RareMage_01_01Skill.png"
	}, 9, 0.12, {
		frameW = 16,
		rowY = 0,
		dmgMul = 1,
		preciseAlphaCollision = true,
		frameH = 16,
		travelSpeed = 90
	})
	__recovered_scope_0.var_7_660("CleansingWave", {
		"src/sprites/units/Mage/03Rare/02RareMage_01Skill.png"
	}, 9, 0.12, {
		frameW = 16,
		rowY = 0,
		dmgMul = 1,
		preciseAlphaCollision = true,
		frameH = 16,
		travelSpeed = 90
	})
	__recovered_scope_0.var_7_660("OracleProjectile", {
		"src/sprites/units/Mage/05Prism/03PrismMage_01_01Projectile.png"
	}, 4, 0.1, {
		frameH = 16,
		travelSpeed = 180,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "idle",
		rowY = 0,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("OracleProjectileGone", {
		"src/sprites/units/Mage/05Prism/03PrismMage_01_01Projectile.png"
	}, 3, 0.1, {
		frameH = 16,
		travelSpeed = 0,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "gone",
		rowY = 16,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("DivinerProjectile", {
		"src/sprites/units/Mage/05Prism/02PrismMage_01Projectile.png"
	}, 4, 0.1, {
		frameH = 16,
		travelSpeed = 180,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "idle",
		rowY = 0,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("DivinerProjectileGone", {
		"src/sprites/units/Mage/05Prism/02PrismMage_01Projectile.png"
	}, 4, 0.1, {
		frameH = 16,
		travelSpeed = 0,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "gone",
		rowY = 16,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("ForbiddenMageProjectile", {
		"src/sprites/units/Mage/05Prism/01PrismMageProjectile.png"
	}, 4, 0.1, {
		frameH = 16,
		travelSpeed = 180,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "idle",
		rowY = 0,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("ForbiddenMageProjectileGone", {
		"src/sprites/units/Mage/05Prism/01PrismMageProjectile.png"
	}, 3, 0.1, {
		frameH = 16,
		travelSpeed = 0,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "gone",
		rowY = 16,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("WarlockProjectile", {
		"src/sprites/units/Mage/04Legend/03LegendMage_02_01Projectile.png"
	}, 3, 0.1, {
		frameH = 32,
		travelSpeed = 180,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "idle",
		rowY = 0,
		frameW = 32
	})
	__recovered_scope_0.var_7_660("WarlockProjectileGone", {
		"src/sprites/units/Mage/04Legend/03LegendMage_02_01Projectile.png"
	}, 2, 0.1, {
		frameH = 32,
		travelSpeed = 0,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "gone",
		rowY = 32,
		frameW = 32
	})
	__recovered_scope_0.var_7_660("ArchmageProjectile", {
		"src/sprites/units/Mage/04Legend/03LegendMage_01_01Projectile.png"
	}, 4, 0.1, {
		frameH = 16,
		travelSpeed = 180,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "idle",
		rowY = 0,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("ArchmageProjectileGone", {
		"src/sprites/units/Mage/04Legend/03LegendMage_01_01Projectile.png"
	}, 3, 0.1, {
		frameH = 16,
		travelSpeed = 0,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "gone",
		rowY = 16,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("DarkMageProjectile", {
		"src/sprites/units/Mage/04Legend/02LegendMage_02Projectile.png"
	}, 2, 0.1, {
		frameH = 16,
		travelSpeed = 180,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "idle",
		rowY = 0,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("AbyssMageProjectile", {
		"src/sprites/units/Mage/04Legend/02LegendMage_01Projectile.png"
	}, 3, 0.1, {
		frameH = 32,
		travelSpeed = 180,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "idle",
		rowY = 0,
		frameW = 32
	})
	__recovered_scope_0.var_7_660("AbyssMageProjectileGone", {
		"src/sprites/units/Mage/04Legend/02LegendMage_01Projectile.png"
	}, 2, 0.1, {
		frameH = 32,
		travelSpeed = 0,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "gone",
		rowY = 32,
		frameW = 32
	})
	__recovered_scope_0.var_7_660("BoneMageProjectile", {
		"src/sprites/units/Mage/04Legend/01LegendMageProjectile.png"
	}, 4, 0.1, {
		frameH = 16,
		travelSpeed = 180,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "idle",
		rowY = 0,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("BoneMageProjectileGone", {
		"src/sprites/units/Mage/04Legend/01LegendMageProjectile.png"
	}, 2, 0.1, {
		frameH = 16,
		travelSpeed = 0,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "gone",
		rowY = 16,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("FlamecallerProjectile", {
		"src/sprites/units/Mage/03Rare/02RareMage_02Projectile.png"
	}, 4, 0.08, {
		frameH = 32,
		travelSpeed = 240,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "idle",
		rowY = 0,
		frameW = 32
	})
	__recovered_scope_0.var_7_660("FlamecallerProjectileGone", {
		"src/sprites/units/Mage/03Rare/02RareMage_02Projectile.png"
	}, 4, 0.08, {
		frameH = 32,
		travelSpeed = 0,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "gone",
		rowY = 32,
		frameW = 32
	})
	__recovered_scope_0.var_7_660("UndineProjectile", {
		"src/sprites/units/Mage/03Rare/03RareMage_01_01Projectile.png"
	}, 2, 0.08, {
		frameW = 16,
		rowY = 0,
		dmgMul = 1,
		preciseAlphaCollision = true,
		frameH = 16,
		travelSpeed = 240
	})
	__recovered_scope_0.var_7_660("CrystalMageProjectile", {
		"src/sprites/units/Mage/03Rare/02RareMage_01Projectile.png"
	}, 2, 0.08, {
		frameW = 16,
		rowY = 0,
		dmgMul = 1,
		preciseAlphaCollision = true,
		frameH = 16,
		travelSpeed = 240
	})
	__recovered_scope_0.var_7_660("ArcanistProjectile", {
		"src/sprites/units/Mage/03Rare/01RareMageProjectile.png"
	}, 5, 0.08, {
		frameW = 32,
		rowY = 0,
		dmgMul = 1,
		preciseAlphaCollision = true,
		frameH = 32,
		travelSpeed = 240
	})
	require("src.ui.effects").lich_bolt.register(var_0_0.projectiles, var_0_0.projectilesMeta)
	require("src.ui.effects").lich_bolt.register(var_0_0.projectiles, var_0_0.projectilesMeta, nil, "LichLord")
	__recovered_scope_0.var_7_660("CannoneerProjectile", {
		"src/sprites/units/ArcherMan/03Rare/03RareArcherMan_01_01Projectile.png"
	}, 4, 0.08, {
		frameH = 16,
		travelSpeed = 250,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "idle",
		rowY = 0,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("CannoneerProjectileGone", {
		"src/sprites/units/ArcherMan/03Rare/03RareArcherMan_01_01Projectile.png"
	}, 5, 0.08, {
		frameH = 16,
		travelSpeed = 0,
		dmgMul = 1,
		preciseAlphaCollision = true,
		animation = "gone",
		rowY = 16,
		frameW = 16
	})
	__recovered_scope_0.var_7_660("SuppressiveRoundProjectile", {
		"src/sprites/units/ArcherMan/03Rare/02RareArcherMan_01Skill.png"
	}, 1, 0.1, {
		travelSpeed = 250,
		frameH = 16,
		frameW = 16,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("TwinBolt", {
		"src/sprites/projectile/humanarrowmultishot.png",
		"sprites/projectile/humanarrowmultishot.png"
	}, 2, 0.1, {
		travelSpeed = 240,
		dmgMul = 0.8
	})
	__recovered_scope_0.var_7_660("TripleShot", {
		"src/sprites/projectile/humanarrowtripleshot3.png",
		"sprites/projectile/humanarrowtripleshot3.png"
	}, 2, 0.1, {
		travelSpeed = 240,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("PrecisionShot", {
		"src/sprites/projectile/humanarrowprecisionshot.png",
		"sprites/projectile/humanarrowprecisionshot.png"
	}, 2, 0.1, {
		travelSpeed = 260,
		dmgMul = 1.8
	})
	__recovered_scope_0.var_7_660("Headshot", {
		"src/sprites/projectile/humanarrowheadshot.png",
		"sprites/projectile/humanarrowheadshot.png"
	}, 2, 0.1, {
		travelSpeed = 280,
		dmgMul = 2
	})
	__recovered_scope_0.var_7_660("HealerProjectile", {
		"src/sprites/projectile/healerprojectile.png",
		"sprites/projectile/healerprojectile.png"
	}, 5, 0.1, {
		travelSpeed = 120,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("LizardShamanProjectile", {
		"src/sprites/enemy/Lizard/LizardShamanprojectile.png",
		"sprites/enemy/Lizard/LizardShamanprojectile.png"
	}, 6, 0.08, {
		travelSpeed = 220,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("DragonkinShamanProjectile", {
		"src/sprites/enemy/Lizard/boss/DragonkinShamanprojectile.png",
		"sprites/enemy/Lizard/boss/DragonkinShamanprojectile.png"
	}, 9, 0.08, {
		travelSpeed = 225,
		dmgMul = 1
	})
	__recovered_scope_0.var_7_660("RazorscaleElderProjectile", {
		"src/sprites/enemy/Lizard/boss/03RazorscaleElderProjectile.png",
		"sprites/enemy/Lizard/boss/03RazorscaleElderProjectile.png"
	}, 4, 0.08, {
		frameH = 16,
		travelSpeed = 230,
		preciseAlphaCollision = true,
		dmgMul = 1,
		frameW = 16
	})

	 __recovered_scope_0.var_7_768 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 4
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("MiniHorseMan03_hp03", {
		"src/sprites/units/MiniHorseMan/03MiniHorseMan_hp03.png",
		"sprites/units/MiniHorseMan/03MiniHorseMan_hp03.png"
	}, 32, 32, __recovered_scope_0.var_7_768)
	__recovered_scope_0.var_7_33("엘프기병", {
		"src/sprites/units/MiniHorseMan/03MiniHorseMan_hp03.png",
		"sprites/units/MiniHorseMan/03MiniHorseMan_hp03.png"
	}, 32, 32, __recovered_scope_0.var_7_768)
	__recovered_scope_0.var_7_33("엘프기병 (Elf Cavalry)", {
		"src/sprites/units/MiniHorseMan/03MiniHorseMan_hp03.png",
		"sprites/units/MiniHorseMan/03MiniHorseMan_hp03.png"
	}, 32, 32, __recovered_scope_0.var_7_768)

	 __recovered_scope_0.var_7_769 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		fly = {
			speed = 0.12,
			frames = 4,
			loop = true,
			row = 3
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 4
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 6,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("엘프 중기병", {
		"src/sprites/units/MiniHorseMan/03MiniHorseMan_02_01.png",
		"sprites/units/MiniHorseMan/03MiniHorseMan_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_769)

	 __recovered_scope_0.var_7_770 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("무법 기병", {
		"src/sprites/units/HorseMan/01Normal/03MiniHorseMan_02_01.png",
		"sprites/units/HorseMan/01Normal/03MiniHorseMan_02_01.png"
	}, 32, 32, __recovered_scope_0.var_7_770)

	 __recovered_scope_0.var_7_771 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 9,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 9,
			loop = false,
			row = 6
		}
	}

	__recovered_scope_0.var_7_33("해골 중기병", {
		"src/sprites/units/MiniHorseMan/03MiniHorseMan_02_02.png",
		"sprites/units/MiniHorseMan/03MiniHorseMan_02_02.png"
	}, 32, 32, __recovered_scope_0.var_7_771)

	 __recovered_scope_0.var_7_772 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("워베어", {
		"src/sprites/units/MiniHorseMan/03MiniHorseMan_01_02.png",
		"sprites/units/MiniHorseMan/03MiniHorseMan_01_02.png"
	}, 32, 32, __recovered_scope_0.var_7_772)

	 __recovered_scope_0.var_7_773 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.08,
			frames = 7,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.15,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("MiniPanther", {
		"src/sprites/units/Summons/MiniPanther.png",
		"sprites/units/Summons/MiniPanther.png"
	}, 40, 32, __recovered_scope_0.var_7_773)
	__recovered_scope_0.var_7_33("흑표범 (Black Panther)", {
		"src/sprites/units/Summons/MiniPanther.png",
		"sprites/units/Summons/MiniPanther.png"
	}, 40, 32, __recovered_scope_0.var_7_773)
	__recovered_scope_0.var_7_33("DecoyDummy", {
		"src/sprites/units/Summons/Dummy.png",
		"sprites/units/Summons/Dummy.png"
	}, 32, 32, {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		}
	})
	__recovered_scope_0.var_7_33("GuardianGolem", {
		"src/sprites/units/Summons/OvergrownGolem.png",
		"sprites/units/Summons/OvergrownGolem.png"
	}, 32, 32, {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 8,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 4,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.12,
			frames = 5,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.12,
			frames = 5,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 7,
			loop = false,
			row = 7
		}
	})

	 __recovered_scope_0.var_7_774 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 4,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 4
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 5
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 6
		}
	}
	 __recovered_scope_0.var_7_775 = {
		"src/sprites/units/Summons/Boar.png",
		"sprites/units/Summons/Boar.png"
	}

	__recovered_scope_0.var_7_33("Boar", __recovered_scope_0.var_7_775, 32, 32, __recovered_scope_0.var_7_774)
	__recovered_scope_0.var_7_33("멧돼지 (Boar.png)", __recovered_scope_0.var_7_775, 32, 32, __recovered_scope_0.var_7_774)

	 __recovered_scope_0.var_7_776 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 6,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack2 = {
			speed = 0.08,
			frames = 6,
			loop = false,
			row = 4
		},
		attack = {
			speed = 0.08,
			frames = 5,
			loop = false,
			row = 5
		},
		attack3 = {
			speed = 0.06,
			frames = 10,
			loop = false,
			row = 6
		},
		hit = {
			speed = 0.12,
			frames = 2,
			loop = false,
			row = 7
		},
		death = {
			speed = 0.15,
			frames = 4,
			loop = false,
			row = 8
		}
	}
	 __recovered_scope_0.var_7_777 = {
		"src/sprites/units/Summons/Bear.png",
		"sprites/units/Summons/Bear.png"
	}

	__recovered_scope_0.var_7_33("Bear", __recovered_scope_0.var_7_777, 32, 32, __recovered_scope_0.var_7_776)
	__recovered_scope_0.var_7_33("곰 (Bear)", __recovered_scope_0.var_7_777, 32, 32, __recovered_scope_0.var_7_776)

	 __recovered_scope_0.var_7_778 = {
		idle = {
			speed = 0.15,
			frames = 4,
			loop = true,
			row = 1
		},
		walk = {
			speed = 0.1,
			frames = 8,
			loop = true,
			row = 2
		},
		jump = {
			speed = 0.12,
			frames = 3,
			loop = false,
			row = 3
		},
		attack = {
			speed = 0.06,
			frames = 10,
			loop = false,
			row = 4
		},
		attack2 = {
			speed = 0.06,
			frames = 17,
			loop = false,
			row = 5
		},
		hit = {
			speed = 0.15,
			frames = 2,
			loop = false,
			row = 6
		},
		death = {
			speed = 0.15,
			frames = 5,
			loop = false,
			row = 7
		}
	}

	__recovered_scope_0.var_7_33("MiniColossus", {
		"src/sprites/units/Summons/MiniColossus.png",
		"sprites/units/Summons/MiniColossus.png"
	}, 40, 32, __recovered_scope_0.var_7_778)
	__recovered_scope_0.var_7_33("거신 (Colossus)", {
		"src/sprites/units/Summons/MiniColossus.png",
		"sprites/units/Summons/MiniColossus.png"
	}, 40, 32, __recovered_scope_0.var_7_778)
	__recovered_scope_0.var_7_660("ExplosionEffect", {
		"src/sprites/projectile/explosioneffect2.png",
		"sprites/projectile/explosioneffect2.png"
	}, 13, 0.045, {})

	var_0_0.audio = {}
	var_0_0.audioBaseGain = {}
	var_0_0.audioCueOffset = {
		gunAttack = 0.08
	}

	 __recovered_scope_0.var_7_779 = {
		reelStop = 1.3,
		rolling = 0.9,
		leverSound = 1.1,
		battleStart = 0.6,
		woodDropUp = 1.3,
		woodDrop = 1.3,
		buttonClick = 2.5,
		buttonHover = 2.5,
		paperHover = 3.9,
		_default = 1.3,
		gunAttack = 1.3,
		unitAbsorption = 0.7,
		unitClassUp = 0.55,
		stoneSlotMod = 1.5,
		stage6Crack = 1.2,
		battleDefeat = 0.3,
		battleVictory = 0.4,
		bigGrenadeExplosion = 0.5,
		grenadeExplosion = 0.55,
		eclipseSnipeShot = 1,
		eclipseSnipeCharge = 1,
		silverSnipeShot = 1,
		silverSnipeCharge = 1,
		canonAttack = 0.45,
		slashAttackArcher1 = 1.3,
		hitMetalFlesh = 0.7,
		slashAttackSword1 = 1.3,
		statUp = 1.3,
		holyRay = 0.4,
		unitLift = 2.6,
		unitHover = 1.6,
		unitEntering = 0.8,
		winprism = 1.3,
		winlegend = 1.3,
		winrare = 1.3,
		win = 1.2,
		stamp = 1,
		copycap = 1
	}
	 __recovered_scope_0.var_7_780 = {
		reelStop = 1.45,
		rolling = 1.65,
		leverSound = 1.5,
		battleStart = 1,
		woodDropUp = 1,
		woodDrop = 1,
		buttonClick = 3,
		buttonHover = 3,
		paperHover = 3,
		_default = 1,
		slashAttackSword1 = 1,
		statUp = 1,
		holyRay = 1,
		unitLift = 3.6,
		unitHover = 1.5,
		unitEntering = 1.1,
		winprism = 1,
		winlegend = 1,
		winrare = 1,
		win = 0.85,
		stamp = 1,
		hitMetalFlesh = 1,
		slashAttackArcher1 = 1,
		gunAttack = 1.15,
		stoneSlotMod = 1.5,
		copycap = 1
	}

	 function __recovered_scope_0.var_7_781(arg_31_0, arg_31_1)
		if not arg_31_0 or not arg_31_1 or arg_31_1 == 1 then
			return arg_31_0
		end

		local var_31_0 = arg_31_0:getSampleCount()
		local var_31_1 = arg_31_0:getChannelCount()

		for iter_31_0 = 0, var_31_0 - 1 do
			if iter_31_0 % 16384 == 0 then
				var_0_4()
			end

			for iter_31_1 = 1, var_31_1 do
				local var_31_2 = arg_31_0:getSample(iter_31_0, iter_31_1)
				local var_31_3 = math.max(-1, math.min(1, var_31_2 * arg_31_1))

				arg_31_0:setSample(iter_31_0, iter_31_1, var_31_3)
			end
		end

		return arg_31_0
	end

	 function __recovered_scope_0.var_7_782(arg_32_0, arg_32_1)
		if not arg_32_0 or not arg_32_1 then
			return arg_32_0
		end

		local var_32_0 = arg_32_0:getSampleRate()
		local var_32_1 = arg_32_0:getChannelCount()
		local var_32_2 = arg_32_0:getBitDepth()
		local var_32_3 = math.max(1, math.floor(var_32_0 * arg_32_1))

		if var_32_3 >= arg_32_0:getSampleCount() then
			return arg_32_0
		end

		local var_32_4 = love.sound.newSoundData(var_32_3, var_32_0, var_32_2, var_32_1)

		for iter_32_0 = 0, var_32_3 - 1 do
			if iter_32_0 % 16384 == 0 then
				var_0_4()
			end

			for iter_32_1 = 1, var_32_1 do
				var_32_4:setSample(iter_32_0, iter_32_1, arg_32_0:getSample(iter_32_0, iter_32_1))
			end
		end

		return var_32_4
	end

	 function __recovered_scope_0.var_7_783(arg_33_0, arg_33_1)
		var_0_4()

		if love.sound and love.sound.newSoundData then
			local var_33_0, var_33_1 = pcall(love.sound.newSoundData, arg_33_0)

			var_0_4()

			if var_33_0 and var_33_1 then
				__recovered_scope_0.var_7_781(var_33_1, arg_33_1)

				local var_33_2, var_33_3 = pcall(love.audio.newSource, var_33_1, "static")

				var_0_4()

				if var_33_2 and var_33_3 then
					return var_33_3
				end
			end
		end

		local var_33_4, var_33_5 = pcall(love.audio.newSource, arg_33_0, "static")

		var_0_4()

		if var_33_4 and var_33_5 then
			return var_33_5
		end

		return nil
	end

	 function __recovered_scope_0.var_7_784(arg_34_0, arg_34_1, arg_34_2)
		var_0_4()

		if love.sound and love.sound.newSoundData then
			local var_34_0, var_34_1 = pcall(love.sound.newSoundData, arg_34_0)

			var_0_4()

			if var_34_0 and var_34_1 then
				local var_34_2 = __recovered_scope_0.var_7_782(var_34_1, arg_34_2)

				__recovered_scope_0.var_7_781(var_34_2, arg_34_1)

				local var_34_3, var_34_4 = pcall(love.audio.newSource, var_34_2, "static")

				var_0_4()

				if var_34_3 and var_34_4 then
					return var_34_4
				end
			end
		end

		local var_34_5, var_34_6 = pcall(love.audio.newSource, arg_34_0, "static")

		var_0_4()

		if var_34_5 and var_34_6 then
			return var_34_6
		end

		return nil
	end

	 function __recovered_scope_0.var_7_785(arg_35_0, arg_35_1)
		if not arg_35_1 or not arg_35_1.setVolume then
			return
		end

		local var_35_0 = __recovered_scope_0.var_7_779[arg_35_0]

		if var_35_0 == nil then
			var_35_0 = __recovered_scope_0.var_7_779._default or 1
		end

		var_0_0.audioBaseGain[arg_35_0] = var_35_0

		arg_35_1:setVolume(var_35_0)
	end

	 function __recovered_scope_0.var_7_786(arg_36_0, arg_36_1, arg_36_2)
		local var_36_0 = __recovered_scope_0.var_7_780[arg_36_0]

		if var_36_0 == nil then
			var_36_0 = __recovered_scope_0.var_7_780._default or 1
		end

		local var_36_1 = __recovered_scope_0.var_7_783(arg_36_1, var_36_0)

		if not var_36_1 and arg_36_2 then
			var_36_1 = __recovered_scope_0.var_7_783(arg_36_2, var_36_0)

			if var_36_1 then
				arg_36_1 = arg_36_2
			end
		end

		if var_36_1 then
			var_0_0.audio[arg_36_0] = var_36_1

			__recovered_scope_0.var_7_785(arg_36_0, var_36_1)
			print("[assets] Loaded audio " .. arg_36_0 .. " from " .. arg_36_1)
		else
			print("[assets] Failed to load audio " .. arg_36_0)
		end
	end

	 function __recovered_scope_0.var_7_787(arg_37_0, arg_37_1, arg_37_2, arg_37_3)
		local var_37_0 = __recovered_scope_0.var_7_780[arg_37_0]

		if var_37_0 == nil then
			var_37_0 = __recovered_scope_0.var_7_780._default or 1
		end

		local var_37_1 = __recovered_scope_0.var_7_784(arg_37_1, var_37_0, arg_37_3)

		if not var_37_1 and arg_37_2 then
			var_37_1 = __recovered_scope_0.var_7_784(arg_37_2, var_37_0, arg_37_3)

			if var_37_1 then
				arg_37_1 = arg_37_2
			end
		end

		if var_37_1 then
			var_0_0.audio[arg_37_0] = var_37_1

			__recovered_scope_0.var_7_785(arg_37_0, var_37_1)
			print("[assets] Loaded audio " .. arg_37_0 .. " from " .. arg_37_1)
		else
			print("[assets] Failed to load audio " .. arg_37_0)
		end
	end

	__recovered_scope_0.var_7_786("paperHover", "src/audio/ui/paperhover.wav", "audio/ui/paperhover.wav")
	__recovered_scope_0.var_7_786("buttonHover", "src/audio/ui/buttonhover1.wav", "audio/ui/buttonhover1.wav")
	__recovered_scope_0.var_7_786("buttonClick", "src/audio/ui/buttonclick1.wav", "audio/ui/buttonclick1.wav")
	__recovered_scope_0.var_7_786("woodDrop", "src/audio/ui/wooddrop.wav", "audio/ui/wooddrop.wav")
	__recovered_scope_0.var_7_787("woodDropUp", "src/audio/ui/wooddrop.wav", "audio/ui/wooddrop.wav", 0.3)
	__recovered_scope_0.var_7_786("risingHeavyHit", "src/audio/ui/risingheavyhit.wav", "audio/ui/risingheavyhit.wav")
	__recovered_scope_0.var_7_786("battleStart", "src/audio/ui/battlestart.mp3", "audio/ui/battlestart.mp3")
	__recovered_scope_0.var_7_786("leverSound", "src/audio/slotmachine/leversound.wav", "audio/slotmachine/leversound.wav")
	__recovered_scope_0.var_7_786("rolling", "src/audio/slotmachine/rolling.wav", "audio/slotmachine/rolling.wav")
	__recovered_scope_0.var_7_786("rollingFast", "src/audio/slotmachine/rollingfast.wav", "audio/slotmachine/rollingfast.wav")
	__recovered_scope_0.var_7_786("reelStop", "src/audio/slotmachine/reelstop.wav", "audio/slotmachine/reelstop.wav")
	__recovered_scope_0.var_7_786("greedyTailStop", "src/audio/slotmachine/greedytailstop.wav", "audio/slotmachine/greedytailstop.wav")
	__recovered_scope_0.var_7_786("copycap", "src/audio/slotmachine/copycap.wav", "audio/slotmachine/copycap.wav")
	__recovered_scope_0.var_7_786("stamp", "src/audio/slotmachine/stamp.wav", "audio/slotmachine/stamp.wav")
	__recovered_scope_0.var_7_786("win", "src/audio/slotmachine/win.wav", "audio/slotmachine/win.wav")
	__recovered_scope_0.var_7_786("winrare", "src/audio/slotmachine/winrare.wav", "audio/slotmachine/winrare.wav")
	__recovered_scope_0.var_7_786("winlegend", "src/audio/slotmachine/winlegend.wav", "audio/slotmachine/winlegend.wav")
	__recovered_scope_0.var_7_786("winprism", "src/audio/slotmachine/winprism.wav", "audio/slotmachine/winprism.wav")
	__recovered_scope_0.var_7_786("unitEntering", "src/audio/battlefield/footstep/unitentering.wav", "audio/battlefield/footstep/unitentering.wav")
	__recovered_scope_0.var_7_786("unitHover", "src/audio/battlefield/units/unithover.wav", "audio/battlefield/units/unithover.wav")
	__recovered_scope_0.var_7_786("unitLift", "src/audio/battlefield/footstep/drop.ogg", "audio/battlefield/footstep/drop.ogg")
	__recovered_scope_0.var_7_786("holyRay", "src/audio/battlefield/units/holy.wav", "audio/battlefield/units/holy.wav")
	__recovered_scope_0.var_7_786("unitAbsorption", "src/audio/battlefield/units/unitabsorbption.wav", "audio/battlefield/units/unitabsorbption.wav")
	__recovered_scope_0.var_7_786("unitClassUp", "src/audio/battlefield/units/unitclassup.wav", "audio/battlefield/units/unitclassup.wav")
	__recovered_scope_0.var_7_786("statUp", "src/audio/battlefield/units/stateup.wav", "audio/battlefield/units/stateup.wav")
	__recovered_scope_0.var_7_786("slashAttackSword1", "src/audio/battlefield/attacks/slashattack/Slash_Attack_Sword_1.wav", "audio/battlefield/attacks/slashattack/Slash_Attack_Sword_1.wav")
	__recovered_scope_0.var_7_786("hitMetalFlesh", "src/audio/battlefield/attacks/hit/Hit_Metal_on_leather.wav", "audio/battlefield/attacks/hit/Hit_Metal_on_leather.wav")
	__recovered_scope_0.var_7_786("slashAttackArcher1", "src/audio/battlefield/attacks/slashattack/Slash_Attack_Archer_1.wav", "audio/battlefield/attacks/slashattack/Slash_Attack_Archer_1.wav")
	__recovered_scope_0.var_7_786("gunAttack", "src/audio/battlefield/attacks/slashattack/Gun_Attack.mp3", "audio/battlefield/attacks/slashattack/Gun_Attack.mp3")
	__recovered_scope_0.var_7_786("canonAttack", "src/audio/battlefield/attacks/slashattack/Canon_Attack.wav", "audio/battlefield/attacks/slashattack/Canon_Attack.wav")
	__recovered_scope_0.var_7_786("silverSnipeCharge", "src/audio/battlefield/attacks/skill/silver_snipe_charge.wav")
	__recovered_scope_0.var_7_786("silverSnipeShot", "src/audio/battlefield/attacks/skill/silver_snipe_shot.wav")
	__recovered_scope_0.var_7_786("eclipseSnipeCharge", "src/audio/battlefield/attacks/skill/eclipse_snipe_charge.wav")
	__recovered_scope_0.var_7_786("eclipseSnipeShot", "src/audio/battlefield/attacks/skill/eclipse_snipe_shot.wav")
	__recovered_scope_0.var_7_786("grenadeExplosion", "src/audio/battlefield/attacks/explosion/grenadeexplosion.wav", "audio/battlefield/attacks/explosion/grenadeexplosion.wav")
	__recovered_scope_0.var_7_786("bigGrenadeExplosion", "src/audio/battlefield/attacks/explosion/biggrenadeexplosion.wav", "audio/battlefield/attacks/explosion/biggrenadeexplosion.wav")
	__recovered_scope_0.var_7_786("battleVictory", "src/audio/battlefield/footstep/victory.wav", "audio/battlefield/footstep/victory.wav")
	__recovered_scope_0.var_7_786("battleDefeat", "src/audio/battlefield/footstep/defeat.wav", "audio/battlefield/footstep/defeat.wav")
	__recovered_scope_0.var_7_786("stage6Crack", "src/audio/battlefield/split/stage6crack.wav", "audio/battlefield/split/stage6crack.wav")
	__recovered_scope_0.var_7_786("stoneSlotMod", "src/audio/slotmachine/stoneslotmod.wav", "audio/slotmachine/stoneslotmod.wav")

	 __recovered_scope_0.var_7_788, __recovered_scope_0.var_7_789 = pcall(require, "src.audio.procedural_audio")

	if __recovered_scope_0.var_7_788 and __recovered_scope_0.var_7_789 and __recovered_scope_0.var_7_789.loadProceduralAudio then
		__recovered_scope_0.var_7_789.loadProceduralAudio(var_0_0.audio)
	end

	require("src.data.asset2").applyFootReview(var_0_0.units)
	var_0_4()

	var_0_3 = nil

	return var_0_0
end

return var_0_0
