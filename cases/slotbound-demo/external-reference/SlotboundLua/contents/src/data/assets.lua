local var_0_0 = {}

local function var_0_1(arg_1_0)
	for iter_1_0, iter_1_1 in ipairs(arg_1_0) do
		if love.filesystem.getInfo(iter_1_1, "file") then
			local var_1_0, var_1_1 = pcall(love.graphics.newImage, iter_1_1)

			if var_1_0 and var_1_1 then
				var_1_1:setFilter("nearest", "nearest")

				return var_1_1, iter_1_1
			end
		end
	end

	return nil, arg_1_0[1]
end

local function var_0_2(arg_2_0, arg_2_1)
	if not arg_2_0 or not arg_2_1 then
		return nil
	end

	local var_2_0 = arg_2_0:getWidth()
	local var_2_1 = arg_2_0:getHeight()

	if var_2_1 == 0 or var_2_0 == 0 then
		return nil
	end

	if var_2_1 <= arg_2_1 then
		return nil
	end

	local var_2_2 = arg_2_1 / var_2_1
	local var_2_3 = math.max(1, math.floor(var_2_0 * var_2_2 + 0.5))
	local var_2_4 = love.graphics.newCanvas(var_2_3, arg_2_1)

	var_2_4:setFilter("nearest", "nearest")
	love.graphics.push("all")
	love.graphics.setCanvas(var_2_4)
	love.graphics.clear(0, 0, 0, 0)
	love.graphics.origin()
	love.graphics.setBlendMode("alpha", "premultiplied")
	love.graphics.setDefaultFilter("nearest", "nearest")
	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.draw(arg_2_0, 0, 0, 0, var_2_2, var_2_2)
	love.graphics.pop()

	return var_2_4
end

local function var_0_3(arg_3_0)
	local var_3_0 = {
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
	local var_3_1 = {
		".png",
		".PNG"
	}
	local var_3_2 = {
		arg_3_0
	}
	local var_3_3 = {}

	for iter_3_0, iter_3_1 in ipairs(var_3_0) do
		for iter_3_2, iter_3_3 in ipairs(var_3_2) do
			for iter_3_4, iter_3_5 in ipairs(var_3_1) do
				table.insert(var_3_3, string.format("%s/%s%s", iter_3_1, iter_3_3, iter_3_5))
			end
		end
	end

	return var_3_3
end

function var_0_0.load()
	local var_4_0
	local var_4_1 = love and love.system and love.system.getOS and love.system.getOS() or nil

	if (var_4_1 == "Web" or var_4_1 == "HTML5" or jit and jit.os == "Emscripten" or love and love.filesystem and love.filesystem.getInfo and love.filesystem.getInfo("web.flag", "file") ~= nil) and love and love.image and love.image.newImageData then
		local var_4_2 = love.image.newImageData

		function love.image.newImageData(arg_5_0, ...)
			if type(arg_5_0) == "string" then
				return nil
			end

			return var_4_2(arg_5_0, ...)
		end

		function var_4_0()
			love.image.newImageData = var_4_2
		end
	end

	var_0_0.icons = {}
	var_0_0.iconsSmall = {}
	var_0_0.starIcon = var_0_1({
		"src/sprites/icons/battlefieldicons/star.png"
	})
	var_0_0.meta = {
		anyMissing = false,
		icons = {}
	}

	local var_4_3 = {
		S = "spear",
		Joker = "joker",
		A = "archer",
		D = "duelist",
		W = "warrior",
		M = "mage",
		H = "horse"
	}
	local var_4_4 = {
		S = "spear_tooltip",
		H = "horse_tooltip",
		A = "archer_tooltip",
		D = "duelist_tooltip",
		W = "warrior_tooltip",
		M = "mage_tooltip"
	}

	for iter_4_0, iter_4_1 in pairs(var_4_3) do
		local var_4_5 = var_0_3(iter_4_1)
		local var_4_6, var_4_7 = var_0_1(var_4_5)

		var_0_0.icons[iter_4_0] = var_4_6 or nil

		if iter_4_0 == "Joker" then
			var_0_0.icons.J = var_4_6 or nil
		end

		var_0_0.meta.icons[iter_4_0] = {
			found = var_4_6 ~= nil,
			tried = var_4_5,
			used = var_4_7
		}

		if not var_4_6 then
			var_0_0.meta.anyMissing = true

			print(string.format("[assets] Missing icon for %s (tried like %s)", iter_4_0, var_4_7))
		else
			print(string.format("[assets] Loaded icon for %s from %s", iter_4_0, var_4_7))

			local var_4_8 = var_4_4[iter_4_0]

			if var_4_8 then
				local var_4_9 = var_0_3(var_4_8)
				local var_4_10, var_4_11 = var_0_1(var_4_9)

				if var_4_10 then
					var_0_0.iconsSmall[iter_4_0] = var_4_10

					print(string.format("[assets] iconsSmall %s loaded custom tooltip icon %dx%d from %s", iter_4_0, var_4_10:getWidth(), var_4_10:getHeight(), var_4_11))
				else
					local var_4_12 = var_0_2(var_4_6, 8)

					if var_4_12 then
						var_0_0.iconsSmall[iter_4_0] = var_4_12

						print(string.format("[assets] iconsSmall %s size = %dx%d", iter_4_0, var_4_12:getWidth(), var_4_12:getHeight()))
					else
						print(string.format("[assets] iconsSmall %s uses original size %dx%d (<= target height)", iter_4_0, var_4_6:getWidth(), var_4_6:getHeight()))
					end
				end
			else
				local var_4_13 = var_0_2(var_4_6, 8)

				if var_4_13 then
					var_0_0.iconsSmall[iter_4_0] = var_4_13

					print(string.format("[assets] iconsSmall %s size = %dx%d", iter_4_0, var_4_13:getWidth(), var_4_13:getHeight()))
				else
					print(string.format("[assets] iconsSmall %s uses original size %dx%d (<= target height)", iter_4_0, var_4_6:getWidth(), var_4_6:getHeight()))
				end
			end
		end
	end

	var_0_0.tooltipStatIcons = {}
	var_0_0.meta.tooltipStatIcons = {}

	local var_4_14 = {
		pwr = "pwr",
		dist = "dist",
		spd = "spd",
		aspd = "aspd",
		atk = "atk",
		hp = "hp",
		joker_tooltip = "joker_tooltip",
		middle = "slot/middle",
		gold = "gold",
		essence = "essence"
	}

	for iter_4_2, iter_4_3 in pairs(var_4_14) do
		local var_4_15 = {
			"src/sprites/icons/tooltip/" .. iter_4_3 .. ".png",
			"sprites/icons/tooltip/" .. iter_4_3 .. ".png"
		}

		if iter_4_2 == "joker_tooltip" then
			table.insert(var_4_15, "src/sprites/icons/joker_tooltip.png")
			table.insert(var_4_15, "sprites/icons/joker_tooltip.png")
		end

		local var_4_16, var_4_17 = var_0_1(var_4_15)

		var_0_0.tooltipStatIcons[iter_4_2] = var_4_16
		var_0_0.meta.tooltipStatIcons[iter_4_2] = {
			found = var_4_16 ~= nil,
			used = var_4_17
		}

		if var_4_16 then
			print(string.format("[assets] tooltipStatIcons %s loaded from %s (%dx%d)", iter_4_2, var_4_17, var_4_16:getWidth(), var_4_16:getHeight()))
		else
			var_0_0.meta.anyMissing = true

			print(string.format("[assets] Missing tooltip stat icon %s (tried like %s)", iter_4_2, var_4_17))
		end
	end

	local function var_4_18(arg_7_0)
		return arg_7_0 / 255
	end

	local var_4_19 = {
		var_4_18(119),
		var_4_18(85),
		var_4_18(51)
	}
	local var_4_20 = {
		var_4_18(215),
		var_4_18(98),
		var_4_18(98)
	}
	local var_4_21 = {
		var_4_18(98),
		var_4_18(215),
		var_4_18(215)
	}
	local var_4_22 = {
		1,
		1,
		1
	}
	local var_4_23 = 0.013725490196078431

	local function var_4_24(arg_8_0, arg_8_1, arg_8_2, arg_8_3)
		return math.abs(arg_8_0 - arg_8_3[1]) <= var_4_23 and math.abs(arg_8_1 - arg_8_3[2]) <= var_4_23 and math.abs(arg_8_2 - arg_8_3[3]) <= var_4_23
	end

	local function var_4_25(arg_9_0, arg_9_1)
		arg_9_0:mapPixel(function(arg_10_0, arg_10_1, arg_10_2, arg_10_3, arg_10_4, arg_10_5)
			if arg_9_1 == "hp" then
				if var_4_24(arg_10_2, arg_10_3, arg_10_4, var_4_20) then
					return var_4_19[1], var_4_19[2], var_4_19[3], arg_10_5
				end
			elseif arg_9_1 == "atk" then
				if var_4_24(arg_10_2, arg_10_3, arg_10_4, var_4_22) then
					return var_4_19[1], var_4_19[2], var_4_19[3], arg_10_5
				end
			elseif arg_9_1 == "aspd" then
				if var_4_24(arg_10_2, arg_10_3, arg_10_4, var_4_21) then
					return var_4_19[1], var_4_19[2], var_4_19[3], arg_10_5
				end
			elseif arg_9_1 == "dist" then
				if var_4_24(arg_10_2, arg_10_3, arg_10_4, var_4_22) then
					return 0, 0, 0, 0
				end

				if var_4_24(arg_10_2, arg_10_3, arg_10_4, var_4_20) then
					return var_4_19[1], var_4_19[2], var_4_19[3], arg_10_5
				end
			end

			return arg_10_2, arg_10_3, arg_10_4, arg_10_5
		end)
	end

	var_0_0.tooltipStatIconsClassCard = {}
	var_0_0.meta.tooltipStatIconsClassCard = {}

	local var_4_26 = {
		atk = "atk_class",
		hp = "hp_class",
		dist = "dist_class",
		aspd = "aspd_class"
	}

	for iter_4_4, iter_4_5 in pairs(var_4_14) do
		local var_4_27 = var_0_0.tooltipStatIcons[iter_4_4]
		local var_4_28 = var_4_26[iter_4_4]

		if var_4_28 then
			local var_4_29 = {
				"src/sprites/icons/tooltip/" .. var_4_28 .. ".png",
				"sprites/icons/tooltip/" .. var_4_28 .. ".png"
			}
			local var_4_30, var_4_31 = var_0_1(var_4_29)

			if var_4_30 then
				local var_4_32 = var_4_30
				local var_4_33, var_4_34 = pcall(love.image.newImageData, var_4_31)

				if var_4_33 and var_4_34 then
					var_4_25(var_4_34, iter_4_4)

					local var_4_35, var_4_36 = pcall(love.graphics.newImage, var_4_34)

					if var_4_35 and var_4_36 then
						var_4_36:setFilter("nearest", "nearest")

						var_4_32 = var_4_36
					end
				end

				var_0_0.tooltipStatIconsClassCard[iter_4_4] = var_4_32
				var_0_0.meta.tooltipStatIconsClassCard[iter_4_4] = {
					ok = true,
					used = var_4_31
				}

				print(string.format("[assets] tooltipStatIconsClassCard %s loaded from %s (%dx%d)", iter_4_4, var_4_31, var_4_32:getWidth(), var_4_32:getHeight()))
			else
				var_0_0.tooltipStatIconsClassCard[iter_4_4] = var_4_27
				var_0_0.meta.tooltipStatIconsClassCard[iter_4_4] = {
					ok = false,
					fallback = true,
					used = var_4_31
				}

				print(string.format("[assets] Missing class-card stat icon %s (tried like %s)", iter_4_4, var_4_31))
			end
		elseif var_4_27 then
			var_0_0.tooltipStatIconsClassCard[iter_4_4] = var_4_27
			var_0_0.meta.tooltipStatIconsClassCard[iter_4_4] = {
				shared = true,
				ok = true
			}
		end
	end

	var_0_0.units = {}
	var_0_0.unitsMeta = {}

	var_0_1({
		"src/sprites/icons/imprinticons/03Fear.png"
	})

	local function var_4_37(arg_11_0, arg_11_1, arg_11_2, arg_11_3, arg_11_4)
		local var_11_0, var_11_1 = var_0_1(arg_11_1)

		if not var_11_0 then
			var_0_0.unitsMeta[arg_11_0] = {
				found = false,
				tried = arg_11_1,
				used = var_11_1
			}

			print(string.format("[assets] Missing unit sprite %s (tried like %s)", arg_11_0, var_11_1))

			return
		end

		local var_11_2, var_11_3 = pcall(love.image.newImageData, var_11_1)

		if not var_11_2 then
			var_11_3 = nil
		end

		local var_11_4 = var_11_0:getWidth()
		local var_11_5 = var_11_0:getHeight()
		local var_11_6 = math.max(1, math.floor(var_11_4 / arg_11_2))
		local var_11_7 = math.max(1, math.floor(var_11_5 / arg_11_3))
		local var_11_8 = {}
		local var_11_9 = {}

		local function var_11_10(arg_12_0, arg_12_1)
			if not var_11_3 then
				return {
					y = 0,
					x = 0,
					w = arg_11_2,
					h = arg_11_3
				}
			end

			if arg_12_0 < 0 or arg_12_1 < 0 or arg_12_0 + arg_11_2 > var_11_4 or arg_12_1 + arg_11_3 > var_11_5 then
				return {
					y = 0,
					x = 0,
					w = arg_11_2,
					h = arg_11_3
				}
			end

			local var_12_0 = arg_11_2
			local var_12_1 = arg_11_3
			local var_12_2 = -1
			local var_12_3 = -1

			for iter_12_0 = 0, arg_11_3 - 1 do
				for iter_12_1 = 0, arg_11_2 - 1 do
					local var_12_4 = arg_12_0 + iter_12_1
					local var_12_5 = arg_12_1 + iter_12_0

					if not (var_12_4 < 0) and not (var_12_5 < 0) and not (var_12_4 >= var_11_4) and not (var_12_5 >= var_11_5) then
						local var_12_6, var_12_7, var_12_8, var_12_9 = var_11_3:getPixel(var_12_4, var_12_5)

						if var_12_9 and var_12_9 > 0.05 then
							if iter_12_1 < var_12_0 then
								var_12_0 = iter_12_1
							end

							if iter_12_0 < var_12_1 then
								var_12_1 = iter_12_0
							end

							if var_12_2 < iter_12_1 then
								var_12_2 = iter_12_1
							end

							if var_12_3 < iter_12_0 then
								var_12_3 = iter_12_0
							end
						end
					end
				end
			end

			if var_12_2 < var_12_0 or var_12_3 < var_12_1 then
				return {
					y = 0,
					x = 0,
					w = arg_11_2,
					h = arg_11_3
				}
			end

			return {
				x = var_12_0,
				y = var_12_1,
				w = var_12_2 - var_12_0 + 1,
				h = var_12_3 - var_12_1 + 1
			}
		end

		for iter_11_0, iter_11_1 in pairs(arg_11_4) do
			local var_11_11 = (iter_11_1.row or 1) - 1
			local var_11_12 = tonumber(iter_11_1.y)
			local var_11_13 = tonumber(iter_11_1.x) or 0
			local var_11_14 = tonumber(iter_11_1.stepX) or arg_11_2
			local var_11_15 = var_11_12 or var_11_11 * arg_11_3

			if not var_11_12 and (var_11_11 < 0 or var_11_7 <= var_11_11) then
				print(string.format("[assets] Warning: %s.%s row=%d out of range (max rows=%d). Skipping.", arg_11_0, iter_11_0, iter_11_1.row or 1, var_11_7))
			elseif var_11_15 < 0 or var_11_5 < var_11_15 + arg_11_3 then
				print(string.format("[assets] Warning: %s.%s y=%d out of range (image height=%d). Skipping.", arg_11_0, iter_11_0, var_11_15, var_11_5))
			else
				local var_11_16 = iter_11_1.frames or 1
				local var_11_17 = math.max(1, math.floor((var_11_4 - var_11_13) / var_11_14))
				local var_11_18 = math.max(1, math.min(var_11_16, var_11_17))

				var_11_8[iter_11_0] = {}
				var_11_9[iter_11_0] = {}

				for iter_11_2 = 0, var_11_18 - 1 do
					local var_11_19 = var_11_13 + iter_11_2 * var_11_14
					local var_11_20 = var_11_15

					table.insert(var_11_8[iter_11_0], love.graphics.newQuad(var_11_19, var_11_20, arg_11_2, arg_11_3, var_11_4, var_11_5))

					var_11_9[iter_11_0][iter_11_2 + 1] = var_11_10(var_11_19, var_11_20)
				end
			end
		end

		var_0_0.units[arg_11_0] = {
			image = var_11_0,
			imageData = var_11_3,
			frameW = arg_11_2,
			frameH = arg_11_3,
			quads = var_11_8,
			animations = arg_11_4,
			bounds = var_11_9
		}
		var_0_0.unitsMeta[arg_11_0] = {
			found = true,
			hasBounds = true,
			used = var_11_1,
			iw = var_11_4,
			ih = var_11_5,
			frameW = arg_11_2,
			frameH = arg_11_3,
			hasImageData = var_11_3 ~= nil
		}

		print(string.format("[assets] Loaded unit sprite %s from %s (%dx%d)", arg_11_0, var_11_1, var_11_4, var_11_5))
	end

	local var_4_38 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 4
		}
	}

	var_4_37("MiniSwordMan", {
		"src/sprites/units/SwordMan/01Normal/01NormalSwordMan.png",
		"sprites/units/SwordMan/01Normal/01NormalSwordMan.png",
		"src/sprites/units/MiniSwordMan.png",
		"sprites/units/MiniSwordMan.png"
	}, 32, 32, var_4_38)

	local var_4_39 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 8
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		walk2 = {
			speed = 0.1,
			loop = true,
			row = 3,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 4,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 7
		},
		hit = {
			speed = 0.1,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 6
		}
	}

	var_4_37("기병", {
		"src/sprites/units/HorseMan/01Normal/01MiniHorseMan.png",
		"sprites/units/HorseMan/01Normal/01MiniHorseMan.png"
	}, 32, 32, var_4_39)

	local var_4_40 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 8
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		walk2 = {
			speed = 0.1,
			loop = true,
			row = 3,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 4,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 7
		},
		hit = {
			speed = 0.1,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 6
		}
	}

	var_4_37("돌격병", {
		"src/sprites/units/HorseMan/01Normal/02MiniHorseMan_01.png",
		"sprites/units/HorseMan/01Normal/02MiniHorseMan_01.png"
	}, 32, 32, var_4_40)

	local var_4_41 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		hit = {
			speed = 0.1,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 5
		}
	}

	var_4_37("도끼 기병", {
		"src/sprites/units/HorseMan/01Normal/02MiniHorseMan_02.png",
		"sprites/units/HorseMan/01Normal/02MiniHorseMan_02.png"
	}, 32, 32, var_4_41)

	local var_4_42 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 6
		}
	}

	var_4_37("MiniHorseMan03", {
		"src/sprites/units/HorseMan/01Normal/03MiniHorseMan_01_01.png",
		"sprites/units/HorseMan/01Normal/03MiniHorseMan_01_01.png"
	}, 32, 32, var_4_42)
	var_4_37("중기병", {
		"src/sprites/units/HorseMan/01Normal/03MiniHorseMan_01_01.png",
		"sprites/units/HorseMan/01Normal/03MiniHorseMan_01_01.png"
	}, 32, 32, var_4_42)

	local var_4_43 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 6
		}
	}

	var_4_37("철기병", {
		"src/sprites/units/HorseMan/02Advance/01AdvanceHorseMan.png",
		"sprites/units/HorseMan/02Advance/01AdvanceHorseMan.png"
	}, 32, 32, var_4_43)
	var_4_37("엘프 기병", {
		"src/sprites/units/HorseMan/02Advance/02AdvanceHorseMan_01.png",
		"sprites/units/HorseMan/02Advance/02AdvanceHorseMan_01.png"
	}, 32, 32, var_4_43)

	local var_4_44 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 3,
			frames = 7
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 4,
			frames = 5
		}
	}

	var_4_37("야만 기병", {
		"src/sprites/units/HorseMan/02Advance/02AdvanceHorseMan_02.png",
		"sprites/units/HorseMan/02Advance/02AdvanceHorseMan_02.png"
	}, 32, 32, var_4_44)
	var_4_37("광폭 기병", {
		"src/sprites/units/HorseMan/02Advance/03AdvanceHorseMan_02_01.png",
		"sprites/units/HorseMan/02Advance/03AdvanceHorseMan_02_01.png"
	}, 32, 32, var_4_44)

	local var_4_45 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		fly = {
			speed = 0.14,
			loop = true,
			row = 3,
			frames = 4
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 4,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 7
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 6
		}
	}

	var_4_37("하이 엘프 기병", {
		"src/sprites/units/HorseMan/02Advance/03AdvanceHorseMan_01_01.png",
		"sprites/units/HorseMan/02Advance/03AdvanceHorseMan_01_01.png"
	}, 32, 32, var_4_45)

	local var_4_46 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("MiniHorseMan03_hp02", {
		"src/sprites/units/MiniHorseMan/03MiniHorseMan_hp02.png",
		"sprites/units/MiniHorseMan/03MiniHorseMan_hp02.png"
	}, 32, 32, var_4_46)
	var_4_37("성기병", {
		"src/sprites/units/MiniHorseMan/03MiniHorseMan_hp02.png",
		"sprites/units/MiniHorseMan/03MiniHorseMan_hp02.png"
	}, 32, 32, var_4_46)
	var_4_37("성기병 (Holy Cavalier)", {
		"src/sprites/units/MiniHorseMan/03MiniHorseMan_hp02.png",
		"sprites/units/MiniHorseMan/03MiniHorseMan_hp02.png"
	}, 32, 32, var_4_46)

	local var_4_47 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("그리즐", {
		"src/sprites/units/MiniHorseMan/04MiniHorseMan_01_02_01.png",
		"sprites/units/MiniHorseMan/04MiniHorseMan_01_02_01.png"
	}, 32, 32, var_4_47)

	local var_4_48 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 9
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 9
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 9
		},
		attack4 = {
			speed = 0.08,
			loop = false,
			row = 7,
			frames = 10
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 8,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 9,
			frames = 9
		}
	}

	var_4_37("데스 나이트", {
		"src/sprites/units/MiniHorseMan/04MiniHorseMan_02_02_01.png",
		"sprites/units/MiniHorseMan/04MiniHorseMan_02_02_01.png"
	}, 32, 32, var_4_48)
	var_4_37("Death Knight", {
		"src/sprites/units/MiniHorseMan/04MiniHorseMan_02_02_01.png",
		"sprites/units/MiniHorseMan/04MiniHorseMan_02_02_01.png"
	}, 32, 32, var_4_48)

	local var_4_49 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("우르간", {
		"src/sprites/units/MiniHorseMan/05MiniHorseMan_01_02_01_01.png",
		"sprites/units/MiniHorseMan/05MiniHorseMan_01_02_01_01.png"
	}, 32, 32, var_4_49)
	var_4_37("Urgan", {
		"src/sprites/units/MiniHorseMan/05MiniHorseMan_01_02_01_01.png",
		"sprites/units/MiniHorseMan/05MiniHorseMan_01_02_01_01.png"
	}, 32, 32, var_4_49)

	local var_4_50 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 4
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 3,
			frames = 9
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 4,
			frames = 9
		}
	}

	var_4_37("데스 로드", {
		"src/sprites/units/MiniHorseMan/05MiniHorseMan_02_02_01_01.png",
		"src/sprites/units/MiniHorseMan/05MiniHorseMan_02_02_01_01.png"
	}, 32, 32, var_4_50)
	var_4_37("Death Lord", {
		"src/sprites/units/MiniHorseMan/05MiniHorseMan_02_02_01_01.png",
		"src/sprites/units/MiniHorseMan/05MiniHorseMan_02_02_01_01.png"
	}, 32, 32, var_4_50)

	local var_4_51 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		shield = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("MiniSwordMan02", {
		"src/sprites/units/SwordMan/01Normal/02NormalSwordMan_01.png",
		"sprites/units/SwordMan/01Normal/02NormalSwordMan_01.png"
	}, 32, 32, var_4_51)

	local var_4_52 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		shield = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("MiniSwordMan03", {
		"src/sprites/units/SwordMan/01Normal/03NormalSwordMan_01_01.png",
		"sprites/units/SwordMan/01Normal/03NormalSwordMan_01_01.png"
	}, 32, 32, var_4_52)

	local var_4_53 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 4
		}
	}

	var_4_37("해적", {
		"src/sprites/units/SwordMan/01Normal/02NormalSwordMan_02.png",
		"sprites/units/SwordMan/01Normal/02NormalSwordMan_02.png"
	}, 32, 32, var_4_53)

	local var_4_54 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		shield = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("기사", {
		"src/sprites/units/SwordMan/01Normal/03NormalSwordMan_01_01.png",
		"sprites/units/SwordMan/01Normal/03NormalSwordMan_01_01.png"
	}, 32, 32, var_4_54)

	local var_4_55 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 4
		}
	}

	var_4_37("크루세이더", {
		"src/sprites/units/SwordMan/05Prism/01PrismSwordMan.png",
		"sprites/units/SwordMan/05Prism/01PrismSwordMan.png"
	}, 32, 32, var_4_55)

	local var_4_56 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 5
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 8
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 6
		},
		attack4 = {
			speed = 0.08,
			loop = false,
			row = 7,
			frames = 10
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 8,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 9,
			frames = 9
		}
	}

	var_4_37("스펙터", {
		"src/sprites/units/SwordMan/05Prism/02PrismSwordMan_01.png",
		"sprites/units/SwordMan/05Prism/02PrismSwordMan_01.png"
	}, 32, 32, var_4_56)

	local var_4_57 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 8
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 11
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 10
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 6
		}
	}

	var_4_37("플레어", {
		"src/sprites/units/SwordMan/03Rare/03RareSwordMan_02_01.png",
		"sprites/units/SwordMan/03Rare/03RareSwordMan_02_01.png"
	}, 40, 32, var_4_57)

	local var_4_58 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 5
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 5
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 3,
			frames = 8
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 10
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 10
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 6
		}
	}

	var_4_37("베일", {
		"src/sprites/units/SwordMan/05Prism/03PrismSwordMan_01_01.png",
		"sprites/units/SwordMan/05Prism/03PrismSwordMan_01_01.png"
	}, 32, 32, var_4_58)

	local var_4_59 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 8
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 11
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 6
		}
	}

	var_4_37("라이스", {
		"src/sprites/units/SwordMan/05Prism/03PrismSwordMan_02_01.png",
		"sprites/units/SwordMan/05Prism/03PrismSwordMan_02_01.png"
	}, 48, 32, var_4_59)

	if var_0_0.units.라이스 then
		var_0_0.units.라이스.shadowScale = 0.95
	end

	local var_4_60 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 6
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 10
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 9
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 7
		}
	}

	var_4_37("마그누스", {
		"src/sprites/units/MiniSwordMan/05MiniSwordMan_02_02_01_01.png",
		"sprites/units/MiniSwordMan/05MiniSwordMan_02_02_01_01.png"
	}, 66, 32, var_4_60)

	if var_0_0.units.마그누스 then
		var_0_0.units.마그누스.shadowBaseWidth = 18
		var_0_0.units.마그누스.shadowPower = 2
	end

	local var_4_61 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 8
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 7
		}
	}

	var_4_37("암기사", {
		"src/sprites/units/MiniSwordMan/03MiniSwordMan_hp02.png",
		"sprites/units/MiniSwordMan/03MiniSwordMan_hp02.png"
	}, 32, 32, var_4_61)

	local var_4_62 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		shield = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 6
		}
	}

	var_4_37("성기사", {
		"src/sprites/units/SwordMan/03Rare/02RareSwordMan_01.png",
		"sprites/units/SwordMan/03Rare/02RareSwordMan_01.png"
	}, 32, 32, var_4_62)

	local var_4_63 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 7
		}
	}

	var_4_37("팔라딘", {
		"src/sprites/units/MiniSwordMan/04MiniSwordMan_01_02_01.png",
		"sprites/units/MiniSwordMan/04MiniSwordMan_01_02_01.png"
	}, 32, 32, var_4_63)

	local var_4_64 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 8
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("레버넌트", {
		"src/sprites/units/MiniSwordMan/04MiniSwordMan_01_02_02.png",
		"sprites/units/MiniSwordMan/04MiniSwordMan_01_02_02.png"
	}, 32, 32, var_4_64)

	local var_4_65 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 11
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("드루이드", {
		"src/sprites/units/PrinceMan/02Advance/01AdvancePrinceMan.png",
		"sprites/units/PrinceMan/02Advance/01AdvancePrinceMan.png"
	}, 32, 32, var_4_65)

	local var_4_66 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 4
		}
	}

	var_4_37("엔트", {
		"src/sprites/units/PrinceMan/02Advance/02AdvancePrinceMan_01.png",
		"sprites/units/PrinceMan/02Advance/02AdvancePrinceMan_01.png"
	}, 32, 32, var_4_66)

	local var_4_67 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 4
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("빅터", {
		"src/sprites/units/PrinceMan/02Advance/02AdvancePrinceMan_02.png",
		"sprites/units/PrinceMan/02Advance/02AdvancePrinceMan_02.png"
	}, 32, 32, var_4_67)

	local var_4_68 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 8
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("엔트로드", {
		"src/sprites/units/PrinceMan/02Advance/03AdvancePrinceMan_01_01.png",
		"sprites/units/PrinceMan/02Advance/03AdvancePrinceMan_01_01.png"
	}, 32, 32, var_4_68)

	local var_4_69 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 8
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 11
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("프랑켄슈타인", {
		"src/sprites/units/PrinceMan/02Advance/03AdvancePrinceMan_02_01.png",
		"sprites/units/PrinceMan/02Advance/03AdvancePrinceMan_02_01.png"
	}, 32, 32, var_4_69)

	local var_4_70 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("바그", {
		"src/sprites/units/SwordMan/02Advance/03AdvanceSwordMan_02_01.png",
		"sprites/units/SwordMan/02Advance/03AdvanceSwordMan_02_01.png"
	}, 32, 32, var_4_70)

	local var_4_71 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 6
		}
	}

	var_4_37("스카우트", {
		"src/sprites/units/SwordMan/05Prism/02PrismSwordMan_02.png",
		"sprites/units/SwordMan/05Prism/02PrismSwordMan_02.png"
	}, 32, 32, var_4_71)

	local var_4_72 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 7
		}
	}

	var_4_37("암검사", {
		"src/sprites/units/MiniSwordMan/04MiniSwordMan_02_02_01.png",
		"sprites/units/MiniSwordMan/04MiniSwordMan_02_02_01.png"
	}, 32, 32, var_4_72)

	local var_4_73 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 8
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 7
		}
	}

	var_4_37("마검사", {
		"src/sprites/units/SwordMan/04Legend/02LegendSwordMan_01.png",
		"sprites/units/SwordMan/04Legend/02LegendSwordMan_01.png"
	}, 32, 32, var_4_73)

	local var_4_74 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 8
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("게이즈", {
		"src/sprites/units/SwordMan/04Legend/03LegendSwordMan_01_01.png",
		"sprites/units/SwordMan/04Legend/03LegendSwordMan_01_01.png"
	}, 32, 32, var_4_74)

	local var_4_75 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 4
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 7
		},
		attack3 = {
			speed = 0.1,
			loop = false,
			row = 6,
			frames = 12
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 3
		},
		death = {
			speed = 0.12,
			loop = false,
			row = 8,
			frames = 9
		}
	}

	var_4_37("엘프기사", {
		"src/sprites/units/SwordMan/02Advance/03AdvanceSwordMan_01_01.png",
		"sprites/units/SwordMan/02Advance/03AdvanceSwordMan_01_01.png"
	}, 32, 32, var_4_75)

	local var_4_76 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		shield = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 6
		}
	}

	var_4_37("해골 투사", {
		"src/sprites/units/SwordMan/04Legend/01LegendSwordMan.png",
		"sprites/units/SwordMan/04Legend/01LegendSwordMan.png"
	}, 32, 32, var_4_76)

	local var_4_77 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 4
		}
	}

	var_4_37("공허기사", {
		"src/sprites/units/MiniSwordMan/03MiniSwordMan_atk01.png",
		"sprites/units/MiniSwordMan/03MiniSwordMan_atk01.png"
	}, 32, 32, var_4_77)

	local var_4_78 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 8
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 4
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 8
		},
		shield = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 5
		},
		shield2 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 8
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 7,
			frames = 15
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 8,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 9,
			frames = 6
		}
	}

	var_4_37("화염기사", {
		"src/sprites/units/MiniSwordMan/03MiniSwordMan_atk02.png",
		"sprites/units/MiniSwordMan/03MiniSwordMan_atk02.png"
	}, 32, 32, var_4_78)

	local var_4_79 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 8
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("사신기사", {
		"src/sprites/units/MiniSwordMan/03MiniSwordMan_atk03.png",
		"sprites/units/MiniSwordMan/03MiniSwordMan_atk03.png"
	}, 32, 32, var_4_79)

	local var_4_80 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 8
		}
	}

	var_4_37("엘프병사", {
		"src/sprites/units/SwordMan/02Advance/02AdvanceSwordMan_01.png",
		"sprites/units/SwordMan/02Advance/02AdvanceSwordMan_01.png"
	}, 32, 32, var_4_80)

	local var_4_81 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 6
		}
	}

	var_4_37("사수 병사", {
		"src/sprites/units/SwordMan/02Advance/02AdvanceSwordMan_02.png",
		"sprites/units/SwordMan/02Advance/02AdvanceSwordMan_02.png"
	}, 32, 32, var_4_81)

	local var_4_82 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		shield = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 6
		}
	}

	var_4_37("해골 투사_aspd02", {
		"src/sprites/units/MiniSwordMan/03MiniSwordMan_aspd02.png",
		"sprites/units/MiniSwordMan/03MiniSwordMan_aspd02.png"
	}, 32, 32, var_4_82)

	local var_4_83 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("야수기사", {
		"src/sprites/units/MiniSwordMan/03MiniSwordMan_aspd03.png",
		"sprites/units/MiniSwordMan/03MiniSwordMan_aspd03.png"
	}, 32, 32, var_4_83)

	local var_4_84 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 4
		}
	}

	var_4_37("투사", {
		"src/sprites/units/SwordMan/03Rare/01RareSwordMan.png",
		"sprites/units/SwordMan/03Rare/01RareSwordMan.png"
	}, 32, 32, var_4_84)

	local var_4_85 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 7
		}
	}

	var_4_37("오딘", {
		"src/sprites/units/SwordMan/03Rare/03RareSwordMan_01_01.png",
		"sprites/units/SwordMan/03Rare/03RareSwordMan_01_01.png"
	}, 32, 32, var_4_85)

	local var_4_86 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 8
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 4
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 8
		},
		shield = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 5
		},
		shield2 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 8
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 7,
			frames = 15
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 8,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 9,
			frames = 6
		}
	}

	var_4_37("염투사", {
		"src/sprites/units/SwordMan/03Rare/02RareSwordMan_02.png",
		"sprites/units/SwordMan/03Rare/02RareSwordMan_02.png"
	}, 32, 32, var_4_86)

	local var_4_87 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 11
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("MiniArcherMan", {
		"src/sprites/units/ArcherMan/01Normal/01NormalArcherMan.png",
		"sprites/units/ArcherMan/01Normal/01NormalArcherMan.png",
		"src/sprites/units/MiniArcherMan.png",
		"sprites/units/MiniArcherMan.png"
	}, 32, 32, var_4_87)

	local var_4_88 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 10
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 4
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("MiniArcherMan02", {
		"src/sprites/units/ArcherMan/01Normal/02NormalArcherMan_01.png",
		"sprites/units/ArcherMan/01Normal/02NormalArcherMan_01.png"
	}, 32, 32, var_4_88)

	local var_4_89 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 10
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 10
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("엘프궁수", {
		"src/sprites/units/MiniArcherMan/02MiniArcherMan_02.png",
		"sprites/units/MiniArcherMan/02MiniArcherMan_02.png"
	}, 32, 32, var_4_89)

	local var_4_90 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 11
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 8
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("MiniArcherMan03", {
		"src/sprites/units/ArcherMan/01Normal/03NormalArcherMan_01_01.png",
		"sprites/units/ArcherMan/01Normal/03NormalArcherMan_01_01.png"
	}, 32, 32, var_4_90)

	local var_4_91 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 10
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 10
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("순찰자", {
		"src/sprites/units/ArcherMan/01Normal/02NormalArcherMan_02.png",
		"sprites/units/ArcherMan/01Normal/02NormalArcherMan_02.png"
	}, 32, 32, var_4_91)

	local var_4_92 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 11
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 8
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("정찰병", {
		"src/sprites/units/ArcherMan/02Advance/01AdvanceArcherMan.png",
		"sprites/units/ArcherMan/02Advance/01AdvanceArcherMan.png"
	}, 32, 32, var_4_92)

	local var_4_93 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 10
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 10
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("엘프 궁수", {
		"src/sprites/units/ArcherMan/02Advance/02AdvanceArcherMan_01.png",
		"sprites/units/ArcherMan/02Advance/02AdvanceArcherMan_01.png"
	}, 32, 32, var_4_93)

	local var_4_94 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		reload = {
			speed = 0.1,
			loop = false,
			row = 5,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("레인저", {
		"src/sprites/units/ArcherMan/02Advance/02AdvanceArcherMan_02.png",
		"sprites/units/ArcherMan/02Advance/02AdvanceArcherMan_02.png"
	}, 32, 32, var_4_94)

	local var_4_95 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 13
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 9
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("하이 엘프", {
		"src/sprites/units/ArcherMan/02Advance/03AdvanceArcherMan_01_01.png",
		"sprites/units/ArcherMan/02Advance/03AdvanceArcherMan_01_01.png"
	}, 32, 32, var_4_95)

	local var_4_96 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("데드아이", {
		"src/sprites/units/ArcherMan/02Advance/03AdvanceArcherMan_02_01.png",
		"sprites/units/ArcherMan/02Advance/03AdvanceArcherMan_02_01.png"
	}, 32, 32, var_4_96)

	local var_4_97 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 11
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 8
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 9
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 4
		}
	}

	var_4_37("로빈 후드", {
		"src/sprites/units/MiniArcherMan/04MiniArcherMan_01_02_01.png",
		"sprites/units/MiniArcherMan/04MiniArcherMan_01_02_01.png"
	}, 32, 32, var_4_97)

	local var_4_98 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 11
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 8
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 9
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 4
		}
	}

	var_4_37("그린 섀도우", {
		"src/sprites/units/MiniArcherMan/05MiniArcherMan_01_02_01_01.png",
		"sprites/units/MiniArcherMan/05MiniArcherMan_01_02_01_01.png"
	}, 32, 32, var_4_98)

	local var_4_99 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 12
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 10
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 14
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 7
		}
	}

	var_4_37("바이올", {
		"src/sprites/units/MiniArcherMan/04MiniArcherMan_02_02_02.png",
		"sprites/units/MiniArcherMan/04MiniArcherMan_02_02_02.png"
	}, 32, 32, var_4_99)

	local var_4_100 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 12
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 10
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 14
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 7
		}
	}

	var_4_37("바이올렛 둠", {
		"src/sprites/units/MiniArcherMan/05MiniArcherMan_02_02_02_01.png",
		"sprites/units/MiniArcherMan/05MiniArcherMan_02_02_02_01.png"
	}, 32, 32, var_4_100)

	local var_4_101 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 13
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 9
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("엘프 사수", {
		"src/sprites/units/MiniArcherMan/03MiniArcherMan_02_01.png",
		"sprites/units/MiniArcherMan/03MiniArcherMan_02_01.png"
	}, 32, 32, var_4_101)

	local var_4_102 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 10
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 6
		}
	}

	var_4_37("해골 사수", {
		"src/sprites/units/MiniArcherMan/03MiniArcherMan_02_02.png",
		"sprites/units/MiniArcherMan/03MiniArcherMan_02_02.png"
	}, 32, 32, var_4_102)

	local var_4_103 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 12
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 10
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 14
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 7
		}
	}

	var_4_37("암사수", {
		"src/sprites/units/MiniArcherMan/03MiniArcherMan_hp02.png",
		"sprites/units/MiniArcherMan/03MiniArcherMan_hp02.png"
	}, 32, 32, var_4_103)

	local var_4_104 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 9
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("명사수", {
		"src/sprites/units/ArcherMan/01Normal/03NormalArcherMan_02_01.png",
		"sprites/units/ArcherMan/01Normal/03NormalArcherMan_02_01.png"
	}, 32, 32, var_4_104)

	local var_4_105 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 5
		}
	}

	var_4_37("MiniSpearMan", {
		"src/sprites/units/SpearMan/01Normal/01NormalSpearMan.png",
		"sprites/units/SpearMan/01Normal/01NormalSpearMan.png"
	}, 32, 32, var_4_105)

	local var_4_106 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 5
		}
	}

	var_4_37("MiniSpearMan02", {
		"src/sprites/units/SpearMan/01Normal/02NormalSpearMan_01.png",
		"sprites/units/SpearMan/01Normal/02NormalSpearMan_01.png"
	}, 32, 32, var_4_106)

	local var_4_107 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 5
		}
	}

	var_4_37("보병", {
		"src/sprites/units/SpearMan/02Advance/01AdvanceSpearMan.png",
		"sprites/units/SpearMan/02Advance/01AdvanceSpearMan.png"
	}, 32, 32, var_4_107)

	local var_4_108 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 8
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("엘프 보병", {
		"src/sprites/units/SpearMan/02Advance/02AdvanceSpearMan_01.png",
		"sprites/units/SpearMan/02Advance/02AdvanceSpearMan_01.png"
	}, 32, 32, var_4_108)

	local var_4_109 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 7
		}
	}

	var_4_37("바이킹", {
		"src/sprites/units/SpearMan/02Advance/02AdvanceSpearMan_02.png",
		"sprites/units/SpearMan/02Advance/02AdvanceSpearMan_02.png"
	}, 32, 32, var_4_109)

	local var_4_110 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 8
		},
		shield = {
			speed = 0.1,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("하이 엘프 보병", {
		"src/sprites/units/SpearMan/02Advance/03AdvanceSpearMan_01_01.png",
		"sprites/units/SpearMan/02Advance/03AdvanceSpearMan_01_01.png"
	}, 32, 32, var_4_110)

	local var_4_111 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 4
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 6
		}
	}

	var_4_37("바바리안", {
		"src/sprites/units/SpearMan/02Advance/03AdvanceSpearMan_02_01.png",
		"sprites/units/SpearMan/02Advance/03AdvanceSpearMan_02_01.png"
	}, 32, 32, var_4_111)

	local var_4_112 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 5
		}
	}

	var_4_37("엘프창병", {
		"src/sprites/units/MiniSpearMan/02MiniSpearMan_02.png",
		"sprites/units/MiniSpearMan/02MiniSpearMan_02.png"
	}, 32, 32, var_4_112)

	local var_4_113 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 7
		}
	}

	var_4_37("약탈자", {
		"src/sprites/units/SpearMan/01Normal/02NormalSpearMan_02.png",
		"sprites/units/SpearMan/01Normal/02NormalSpearMan_02.png"
	}, 32, 32, var_4_113)

	local var_4_114 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 4
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 6
		}
	}

	var_4_37("무법자", {
		"src/sprites/units/SpearMan/01Normal/03NormalSpearMan_02_01.png",
		"sprites/units/SpearMan/01Normal/03NormalSpearMan_02_01.png"
	}, 32, 32, var_4_114)

	local var_4_115 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 5
		}
	}

	var_4_37("MiniSpearMan03", {
		"src/sprites/units/SpearMan/01Normal/03NormalSpearMan_01_01.png",
		"sprites/units/SpearMan/01Normal/03NormalSpearMan_01_01.png"
	}, 32, 32, var_4_115)
	var_4_37("근위병", {
		"src/sprites/units/SpearMan/01Normal/03NormalSpearMan_01_01.png",
		"sprites/units/SpearMan/01Normal/03NormalSpearMan_01_01.png"
	}, 32, 32, var_4_115)

	local var_4_116 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		shield = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 7
		}
	}

	var_4_37("침묵병", {
		"src/sprites/units/MiniSpearMan/03MiniSpearMan_hp02.png",
		"sprites/units/MiniSpearMan/03MiniSpearMan_hp02.png"
	}, 32, 32, var_4_116)

	local var_4_117 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 8
		},
		shield = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("엘드가드", {
		"src/sprites/units/MiniSpearMan/03MiniSpearMan_hp03.png",
		"sprites/units/MiniSpearMan/03MiniSpearMan_hp03.png"
	}, 32, 32, var_4_117)

	local var_4_118 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 7
		}
	}

	var_4_37("허스칼", {
		"src/sprites/units/MiniSpearMan/03MiniSpearMan_01_02.png",
		"sprites/units/MiniSpearMan/03MiniSpearMan_01_02.png"
	}, 32, 32, var_4_118)

	local var_4_119 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 8
		},
		shield = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("엘프 근위병", {
		"src/sprites/units/MiniSpearMan/03MiniSpearMan_02_01.png",
		"sprites/units/MiniSpearMan/03MiniSpearMan_02_01.png"
	}, 32, 32, var_4_119)

	local var_4_120 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		shield = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 6
		}
	}

	var_4_37("해골 근위병", {
		"src/sprites/units/MiniSpearMan/03MiniSpearMan_02_02.png",
		"sprites/units/MiniSpearMan/03MiniSpearMan_02_02.png"
	}, 32, 32, var_4_120)

	local var_4_121 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 9
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 14
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 7
		}
	}

	var_4_37("크러셔", {
		"src/sprites/units/MiniSpearMan/04MiniSpearMan_02_01_02.png",
		"sprites/units/MiniSpearMan/04MiniSpearMan_02_01_02.png"
	}, 40, 32, var_4_121)

	local var_4_122 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 8
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 17
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 7
		}
	}

	var_4_37("젠", {
		"src/sprites/units/MiniSpearMan/05MiniSpearMan_02_01_02_01.png",
		"sprites/units/MiniSpearMan/05MiniSpearMan_02_01_02_01.png"
	}, 48, 32, var_4_122)

	local var_4_123 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		attack = {
			speed = 0.1,
			loop = false,
			row = 3,
			frames = 8
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 4,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 5,
			frames = 6
		}
	}

	var_4_37("소울 리퍼", {
		"src/sprites/units/MiniSpearMan/04MiniSpearMan_02_02_01.png",
		"sprites/units/MiniSpearMan/04MiniSpearMan_02_02_01.png"
	}, 32, 32, var_4_123)

	local var_4_124 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 8
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("나이트메어", {
		"src/sprites/units/MiniSpearMan/05MiniSpearMan_02_02_01_01.png",
		"sprites/units/MiniSpearMan/05MiniSpearMan_02_02_01_01.png"
	}, 32, 32, var_4_124)

	local var_4_125 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 5
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 6
		}
	}

	var_4_37("결투사", {
		"src/sprites/units/PrinceMan/01Normal/01MiniPrinceMan.png",
		"sprites/units/PrinceMan/01Normal/01MiniPrinceMan.png"
	}, 32, 32, var_4_125)

	local var_4_126 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		drink = {
			speed = 0.12,
			loop = false,
			row = 2,
			frames = 5
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 3,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 4,
			frames = 5
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 10
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 6
		}
	}

	var_4_37("황제", {
		"src/sprites/units/PrinceMan/01Normal/02MiniPrinceMan_01.png",
		"sprites/units/PrinceMan/01Normal/02MiniPrinceMan_01.png"
	}, 32, 32, var_4_126)

	local var_4_127 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 8
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("베테랑", {
		"src/sprites/units/PrinceMan/01Normal/02MiniPrinceMan_02.png",
		"sprites/units/PrinceMan/01Normal/02MiniPrinceMan_02.png"
	}, 32, 32, var_4_127)

	local var_4_128 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		shield = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("해적왕", {
		"src/sprites/units/SwordMan/01Normal/03NormalSwordMan_02_01.png",
		"sprites/units/SwordMan/01Normal/03NormalSwordMan_02_01.png"
	}, 32, 32, var_4_128)

	local var_4_129 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 10
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("철퇴병", {
		"src/sprites/units/SwordMan/02Advance/01AdvanceSwordMan.png",
		"sprites/units/SwordMan/02Advance/01AdvanceSwordMan.png"
	}, 32, 32, var_4_129)

	local var_4_130 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 10
		},
		attack2 = {
			speed = 0.18,
			loop = false,
			row = 5,
			frames = 4
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 7
		}
	}

	var_4_37("검황", {
		"src/sprites/units/PrinceMan/01Normal/03MiniPrinceMan_01_01.png",
		"sprites/units/PrinceMan/01Normal/03MiniPrinceMan_01_01.png"
	}, 32, 32, var_4_130)
	var_4_37("검황 (Warlord)", {
		"src/sprites/units/PrinceMan/01Normal/03MiniPrinceMan_01_01.png",
		"sprites/units/PrinceMan/01Normal/03MiniPrinceMan_01_01.png"
	}, 32, 32, var_4_130)

	local var_4_131 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 8
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 10
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 8
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 6
		}
	}

	var_4_37("장군", {
		"src/sprites/units/PrinceMan/01Normal/03MiniPrinceMan_02_01.png",
		"sprites/units/PrinceMan/01Normal/03MiniPrinceMan_02_01.png"
	}, 32, 32, var_4_131)

	local var_4_132 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		shout = {
			speed = 0.1,
			loop = false,
			row = 2,
			frames = 7
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 3,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 4,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 7
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 8
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 7,
			frames = 10
		},
		attack4 = {
			speed = 0.08,
			loop = false,
			row = 8,
			frames = 11
		},
		attack5 = {
			speed = 0.08,
			loop = false,
			row = 9,
			frames = 9
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 10,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 11,
			frames = 7
		}
	}

	var_4_37("성황", {
		"src/sprites/units/MiniPrinceMan/03MiniPrinceMan_01_01.png",
		"sprites/units/MiniPrinceMan/03MiniPrinceMan_01_01.png"
	}, 32, 32, var_4_132)

	local var_4_133 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 7
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 13
		},
		attack4 = {
			speed = 0.08,
			loop = false,
			row = 7,
			frames = 8
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 8,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 9,
			frames = 6
		}
	}

	var_4_37("검성제", {
		"src/sprites/units/MiniPrinceMan/03MiniPrinceMan_01_02.png",
		"sprites/units/MiniPrinceMan/03MiniPrinceMan_01_02.png"
	}, 32, 32, var_4_133)

	local var_4_134 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 4
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 3,
			frames = 7
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 6
		}
	}

	var_4_37("망령", {
		"src/sprites/units/MiniPrinceMan/03MiniPrinceMan_02_02.png",
		"sprites/units/MiniPrinceMan/03MiniPrinceMan_02_02.png"
	}, 32, 32, var_4_134)

	local var_4_135 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 5
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 5
		},
		attack = {
			speed = 0.1,
			loop = false,
			row = 3,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 4,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 5,
			frames = 5
		}
	}

	var_4_37("글로리", {
		"src/sprites/units/MiniPrinceMan/04MiniPrinceMan_01_01_02.png",
		"sprites/units/MiniPrinceMan/04MiniPrinceMan_01_01_02.png"
	}, 40, 40, var_4_135)

	local var_4_136 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 6
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		attack = {
			speed = 0.1,
			loop = false,
			row = 3,
			frames = 6
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 9
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 5
		}
	}

	var_4_37("루시엘", {
		"src/sprites/units/MiniPrinceMan/05MiniPrinceMan_01_01_02_01.png",
		"sprites/units/MiniPrinceMan/05MiniPrinceMan_01_01_02_01.png"
	}, 40, 40, var_4_136)

	local var_4_137 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 6
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 3,
			frames = 8
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 4,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 5,
			frames = 7
		}
	}

	var_4_37("글룸", {
		"src/sprites/units/MiniPrinceMan/04MiniPrinceMan_02_02_01.png",
		"sprites/units/MiniPrinceMan/04MiniPrinceMan_02_02_01.png"
	}, 32, 32, var_4_137)

	local var_4_138 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 8
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 8
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 9
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 12
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 7
		}
	}

	var_4_37("카오스", {
		"src/sprites/units/MiniPrinceMan/05MiniPrinceMan_02_02_01_01.png",
		"sprites/units/MiniPrinceMan/05MiniPrinceMan_02_02_01_01.png"
	}, 48, 48, var_4_138)

	if var_0_0.units.카오스 then
		var_0_0.units.카오스.shadowScale = 1
		var_0_0.units.카오스.shadowBaseWidth = 26
		var_0_0.units.카오스.shadowPower = 2
	end

	local var_4_139 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 8
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("암흑장군", {
		"src/sprites/units/MiniPrinceMan/03MiniPrinceMan_hp02.png",
		"sprites/units/MiniPrinceMan/03MiniPrinceMan_hp02.png"
	}, 32, 32, var_4_139)
	var_4_37("암흑장군 (Darklord)", {
		"src/sprites/units/MiniPrinceMan/03MiniPrinceMan_hp02.png",
		"sprites/units/MiniPrinceMan/03MiniPrinceMan_hp02.png"
	}, 32, 32, var_4_139)

	local var_4_140 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 8
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("우드워든", {
		"src/sprites/units/MiniPrinceMan/03MiniPrinceMan_hp03.png",
		"sprites/units/MiniPrinceMan/03MiniPrinceMan_hp03.png"
	}, 32, 32, var_4_140)
	var_4_37("우드워든 (Wood Warden)", {
		"src/sprites/units/MiniPrinceMan/03MiniPrinceMan_hp03.png",
		"sprites/units/MiniPrinceMan/03MiniPrinceMan_hp03.png"
	}, 32, 32, var_4_140)

	local var_4_141 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 11
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 9
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 9
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 9
		}
	}

	var_4_37("MiniMage", {
		"src/sprites/units/Mage/01Normal/01NormalMage.png",
		"sprites/units/Mage/01Normal/01NormalMage.png"
	}, 32, 32, var_4_141)

	local var_4_142 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 8
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 10
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 6
		}
	}

	var_4_37("안틀러", {
		"src/sprites/units/MiniMage/05MiniMage_02_01_02_01.png",
		"sprites/units/MiniMage/05MiniMage_02_01_02_01.png"
	}, 32, 32, var_4_142)

	local var_4_143 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 11
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 9
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 9
		},
		attack4 = {
			speed = 0.08,
			loop = false,
			row = 7,
			frames = 10
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 8,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 9,
			frames = 9
		}
	}

	var_4_37("주술사", {
		"src/sprites/units/Mage/01Normal/02NormalMage_01.png",
		"sprites/units/Mage/01Normal/02NormalMage_01.png"
	}, 32, 32, var_4_143)

	local var_4_144 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 9
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("마도사", {
		"src/sprites/units/Mage/02Advance/01AdvanceMage.png",
		"sprites/units/Mage/02Advance/01AdvanceMage.png"
	}, 32, 32, var_4_144)

	local var_4_145 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 11
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 8
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 8
		}
	}

	var_4_37("엘프법사", {
		"src/sprites/units/Mage/02Advance/02AdvanceMage_01.png",
		"sprites/units/Mage/02Advance/02AdvanceMage_01.png"
	}, 32, 32, var_4_145)

	local var_4_146 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 12
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("야생법사", {
		"src/sprites/units/Mage/02Advance/02AdvanceMage_02.png",
		"sprites/units/Mage/02Advance/02AdvanceMage_02.png"
	}, 32, 32, var_4_146)

	local var_4_147 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 12
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("원시법사", {
		"src/sprites/units/Mage/02Advance/03AdvanceMage_02_01.png",
		"sprites/units/Mage/02Advance/03AdvanceMage_02_01.png"
	}, 32, 32, var_4_147)

	local var_4_148 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 11
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 11
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("대주술사", {
		"src/sprites/units/Mage/01Normal/03NormalMage_01_01.png",
		"sprites/units/Mage/01Normal/03NormalMage_01_01.png"
	}, 32, 32, var_4_148)

	local var_4_149 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		attack2 = {
			speed = 0.068,
			loop = false,
			row = 5,
			frames = 10
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("치유술사", {
		"src/sprites/units/Mage/01Normal/02NormalMage_02.png",
		"sprites/units/Mage/01Normal/02NormalMage_02.png"
	}, 32, 32, var_4_149)

	local var_4_150 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 7
		},
		wand = {
			speed = 0.08,
			loop = false,
			row = 3,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 4,
			frames = 4
		},
		throw = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 7
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 11
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 7,
			frames = 10
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 8,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 9,
			frames = 7
		}
	}

	var_4_37("대사제", {
		"src/sprites/units/Mage/01Normal/03NormalMage_02_01.png",
		"sprites/units/Mage/01Normal/03NormalMage_02_01.png"
	}, 32, 32, var_4_150)

	local var_4_151 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 11
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 9
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 8
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 5
		}
	}

	var_4_37("엘프 현자", {
		"src/sprites/units/Mage/02Advance/03AdvanceMage_01_01.png",
		"sprites/units/Mage/02Advance/03AdvanceMage_01_01.png"
	}, 32, 32, var_4_151)

	local var_4_152 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 9
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 9
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 6
		}
	}

	var_4_37("루나 현자", {
		"src/sprites/units/MiniMage/04MiniMage_02_01_02.png",
		"sprites/units/MiniMage/04MiniMage_02_01_02.png"
	}, 32, 32, var_4_152)

	local var_4_153 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 7
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 8
		}
	}

	var_4_37("해골 마도사", {
		"src/sprites/units/MiniMage/03MiniMage_02_02.png",
		"sprites/units/MiniMage/03MiniMage_02_02.png"
	}, 32, 32, var_4_153)

	local var_4_154 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 3,
			frames = 7
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 8
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 7
		}
	}

	var_4_37("리치", {
		"src/sprites/units/MiniMage/04MiniMage_02_02_01.png",
		"sprites/units/MiniMage/04MiniMage_02_02_01.png"
	}, 32, 32, var_4_154)

	local var_4_155 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 5
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 3,
			frames = 16
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 15
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 11
		},
		attack4 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 13
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 13
		}
	}

	var_4_37("네크로 로드", {
		"src/sprites/units/MiniMage/05MiniMage_02_02_01_01.png",
		"sprites/units/MiniMage/05MiniMage_02_02_01_01.png"
	}, 40, 40, var_4_155)

	local var_4_156 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 11
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 8
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 8
		}
	}

	var_4_37("엘프 주술사", {
		"src/sprites/units/MiniMage/02MiniMage_02.png",
		"sprites/units/MiniMage/02MiniMage_02.png"
	}, 32, 32, var_4_156)

	local var_4_157 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 11
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 8
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 8
		}
	}

	var_4_37("현자 엘프", {
		"src/sprites/units/MiniMage/03MiniMage_hp01.png",
		"sprites/units/MiniMage/03MiniMage_hp01.png"
	}, 32, 32, var_4_157)
	var_4_37("현자 엘프 (Elf Sage)", {
		"src/sprites/units/MiniMage/03MiniMage_hp01.png",
		"sprites/units/MiniMage/03MiniMage_hp01.png"
	}, 32, 32, var_4_157)

	local var_4_158 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 10
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 7
		}
	}

	var_4_37("암흑술사", {
		"src/sprites/units/MiniMage/03MiniMage_hp02.png",
		"sprites/units/MiniMage/03MiniMage_hp02.png"
	}, 32, 32, var_4_158)
	var_4_37("암흑술사 (Shadow Sorcerer)", {
		"src/sprites/units/MiniMage/03MiniMage_hp02.png",
		"sprites/units/MiniMage/03MiniMage_hp02.png"
	}, 32, 32, var_4_158)

	local var_4_159 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 7
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 8
		}
	}

	var_4_37("본메이지", {
		"src/sprites/units/MiniMage/03MiniMage_hp03.png",
		"sprites/units/MiniMage/03MiniMage_hp03.png"
	}, 32, 32, var_4_159)
	var_4_37("본메이지 (Bone Mage)", {
		"src/sprites/units/MiniMage/03MiniMage_hp03.png",
		"sprites/units/MiniMage/03MiniMage_hp03.png"
	}, 32, 32, var_4_159)

	local var_4_160 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.1,
			loop = false,
			row = 4,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 3
		}
	}
	local var_4_161 = {
		"src/sprites/enemy/Eyes/01EyeCrawler.png",
		"sprites/enemy/Eyes/01EyeCrawler.png",
		"src/sprites/enemy/Eyes/01Eye Crawler.png",
		"sprites/enemy/Eyes/01Eye Crawler.png"
	}

	var_4_37("눈알벌레 (Eye Crawler)", var_4_161, 32, 32, var_4_160)
	var_4_37("눈알벌레", var_4_161, 32, 32, var_4_160)
	var_4_37("Eye Crawler", var_4_161, 32, 32, var_4_160)

	local var_4_162 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 2,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 3,
			frames = 4
		}
	}
	local var_4_163 = {
		"src/sprites/enemy/Eyes/02EyeBat.png",
		"sprites/enemy/Eyes/02EyeBat.png",
		"src/sprites/enemy/Eyes/02Eye Bat.png",
		"sprites/enemy/Eyes/02Eye Bat.png"
	}

	var_4_37("눈알박쥐 (Eye Bat)", var_4_163, 32, 32, var_4_162)
	var_4_37("눈알박쥐", var_4_163, 32, 32, var_4_162)
	var_4_37("Eye Bat", var_4_163, 32, 32, var_4_162)

	local var_4_164 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 4
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 8
		},
		attack = {
			speed = 0.1,
			loop = false,
			row = 4,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 4
		}
	}
	local var_4_165 = {
		"src/sprites/enemy/Eyes/03Observer.png",
		"sprites/enemy/Eyes/03Observer.png",
		"src/sprites/enemy/Eyes/03 Observer.png",
		"sprites/enemy/Eyes/03 Observer.png"
	}

	var_4_37("감시자 (Observer)", var_4_165, 32, 32, var_4_164)
	var_4_37("감시자", var_4_165, 32, 32, var_4_164)
	var_4_37("Observer", var_4_165, 32, 32, var_4_164)

	local var_4_166 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 4
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 3,
			frames = 8
		},
		attack = {
			speed = 0.1,
			loop = false,
			row = 4,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 5
		}
	}
	local var_4_167 = {
		"src/sprites/enemy/Eyes/04Gazer.png",
		"sprites/enemy/Eyes/04Gazer.png",
		"src/sprites/enemy/Eyes/04 Gazer.png",
		"sprites/enemy/Eyes/04 Gazer.png"
	}

	var_4_37("응시자 (Gazer)", var_4_167, 32, 32, var_4_166)
	var_4_37("응시자", var_4_167, 32, 32, var_4_166)
	var_4_37("Gazer", var_4_167, 32, 32, var_4_166)

	local var_4_168 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 2,
			frames = 7
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 4,
			frames = 4
		}
	}
	local var_4_169 = {
		"src/sprites/enemy/Eyes/05StingerBat.png",
		"sprites/enemy/Eyes/05StingerBat.png",
		"src/sprites/enemy/Eyes/05 Stinger Bat.png",
		"sprites/enemy/Eyes/05 Stinger Bat.png"
	}

	var_4_37("독침박쥐 (Stinger Bat)", var_4_169, 32, 32, var_4_168)
	var_4_37("독침박쥐", var_4_169, 32, 32, var_4_168)
	var_4_37("Stinger Bat", var_4_169, 32, 32, var_4_168)

	local var_4_170 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 4
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 3,
			frames = 8
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 4,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 5,
			frames = 4
		},
		change = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 3
		}
	}
	local var_4_171 = {
		"src/sprites/enemy/Eyes/06Deceiver.png",
		"sprites/enemy/Eyes/06Deceiver.png",
		"src/sprites/enemy/Eyes/06 Deceiver.png",
		"sprites/enemy/Eyes/06 Deceiver.png"
	}

	var_4_37("기만자 (Deceiver)", var_4_171, 32, 32, var_4_170)
	var_4_37("기만자", var_4_171, 32, 32, var_4_170)
	var_4_37("Deceiver", var_4_171, 32, 32, var_4_170)

	local var_4_172 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 4
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 3,
			frames = 6
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 9
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 4
		},
		change = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 6
		}
	}
	local var_4_173 = {
		"src/sprites/enemy/Eyes/06Deceiver02.png",
		"sprites/enemy/Eyes/06Deceiver02.png",
		"src/sprites/enemy/Eyes/06 Deceiver02.png",
		"sprites/enemy/Eyes/06 Deceiver02.png"
	}

	var_4_37("DeceiverForm2", var_4_173, 32, 32, var_4_172)
	var_4_37("기만자 폼2", var_4_173, 32, 32, var_4_172)
	var_4_37("기만자 (Deceiver) 폼2", var_4_173, 32, 32, var_4_172)
	var_4_37("Deceiver Form2", var_4_173, 32, 32, var_4_172)

	local var_4_174 = {
		idle = {
			y = 0,
			speed = 0.15,
			loop = true,
			frames = 4
		},
		walk = {
			y = 0,
			speed = 0.15,
			loop = true,
			frames = 4
		},
		blink = {
			y = 32,
			speed = 0.12,
			loop = false,
			frames = 3
		},
		hit = {
			y = 32,
			speed = 0.12,
			loop = false,
			frames = 3
		},
		attack = {
			y = 64,
			speed = 0.08,
			loop = false,
			frames = 3
		},
		skill = {
			y = 96,
			speed = 0.08,
			loop = false,
			frames = 9
		},
		death = {
			y = 128,
			speed = 0.15,
			loop = false,
			frames = 4
		}
	}
	local var_4_175 = {
		"src/sprites/enemy/Eyes/07EyeMatron.png",
		"sprites/enemy/Eyes/07EyeMatron.png",
		"src/sprites/enemy/Eyes/07 EyeMatron.png",
		"sprites/enemy/Eyes/07 EyeMatron.png",
		"src/sprites/enemy/Eyes/07 Eye Matron.png",
		"sprites/enemy/Eyes/07 Eye Matron.png"
	}

	var_4_37("박쥐어미 (Bat Matron)", var_4_175, 32, 32, var_4_174)
	var_4_37("박쥐어미", var_4_175, 32, 32, var_4_174)
	var_4_37("Bat Matron", var_4_175, 32, 32, var_4_174)

	local var_4_176 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.1,
			loop = false,
			row = 6,
			frames = 10
		}
	}
	local var_4_177 = {
		"src/sprites/enemy/Eyes/08CaveBrute.png",
		"sprites/enemy/Eyes/08CaveBrute.png",
		"src/sprites/enemy/Eyes/08 CaveBrute.png",
		"sprites/enemy/Eyes/08 CaveBrute.png",
		"src/sprites/enemy/Eyes/08 Cave Brute.png",
		"sprites/enemy/Eyes/08 Cave Brute.png"
	}

	var_4_37("동굴괴수 (Cave Brute)", var_4_177, 32, 32, var_4_176)
	var_4_37("동굴괴수", var_4_177, 32, 32, var_4_176)
	var_4_37("Cave Brute", var_4_177, 32, 32, var_4_176)

	local var_4_178 = {
		idle = {
			speed = 0.12,
			loop = true,
			row = 1,
			frames = 6
		},
		walk = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 6
		},
		bite = {
			speed = 0.08,
			loop = false,
			row = 2,
			frames = 5
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 3,
			frames = 5
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.1,
			loop = false,
			row = 6,
			frames = 6
		},
		face = {
			speed = 0.15,
			loop = true,
			row = 7,
			frames = 1
		}
	}
	local var_4_179 = {
		"src/sprites/enemy/Eyes/boss/01Beholder.png",
		"sprites/enemy/Eyes/boss/01Beholder.png"
	}

	var_4_37("백안왕 (Beholder)", var_4_179, 48, 48, var_4_178)
	var_4_37("백안왕", var_4_179, 48, 48, var_4_178)
	var_4_37("Beholder", var_4_179, 48, 48, var_4_178)

	local var_4_180 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 4
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 4
		}
	}

	var_4_37("MiniGoblin", {
		"sprites/enemy/Orcs/MiniGoblin.png",
		"src/sprites/enemy/Orcs/MiniGoblin.png"
	}, 32, 32, var_4_180)

	local var_4_181 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.1,
			loop = false,
			row = 4,
			frames = 4
		},
		attack2 = {
			speed = 0.1,
			loop = false,
			row = 5,
			frames = 4
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("MiniGoblinThief", {
		"sprites/enemy/Orcs/MiniGoblinThief.png",
		"src/sprites/enemy/Orcs/MiniGoblinThief.png"
	}, 32, 32, var_4_181)

	local var_4_182 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.1,
			loop = false,
			row = 4,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 6
		}
	}

	var_4_37("MiniOrc", {
		"sprites/enemy/Orcs/MiniOrc.png",
		"src/sprites/enemy/Orcs/MiniOrc.png"
	}, 32, 32, var_4_182)

	local var_4_183 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.1,
			loop = false,
			row = 4,
			frames = 5
		},
		shield = {
			speed = 0.1,
			loop = false,
			row = 5,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 6
		}
	}

	var_4_37("Charge Orc", {
		"src/sprites/enemy/Orcs/MiniOrcWarrior.png",
		"sprites/enemy/Orcs/MiniOrcWarrior.png"
	}, 32, 32, var_4_183)
	var_4_37("돌격 오크", {
		"src/sprites/enemy/Orcs/MiniOrcWarrior.png",
		"sprites/enemy/Orcs/MiniOrcWarrior.png"
	}, 32, 32, var_4_183)

	local var_4_184 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.1,
			loop = false,
			row = 4,
			frames = 6
		},
		attack2 = {
			speed = 0.1,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 6
		}
	}

	var_4_37("Orc Axe Raider", {
		"sprites/enemy/Orcs/MiniOrcAxeThrower.png",
		"src/sprites/enemy/Orcs/MiniOrcAxeThrower.png"
	}, 32, 32, var_4_184)
	var_4_37("오크 습격자", {
		"sprites/enemy/Orcs/MiniOrcAxeThrower.png",
		"src/sprites/enemy/Orcs/MiniOrcAxeThrower.png"
	}, 32, 32, var_4_184)

	local var_4_185 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.1,
			loop = false,
			row = 4,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 4
		}
	}

	var_4_37("Orc Veteran", {
		"sprites/enemy/Orcs/MiniOrcVeteran.png",
		"src/sprites/enemy/Orcs/MiniOrcVeteran.png"
	}, 32, 32, var_4_185)
	var_4_37("정예 오크", {
		"sprites/enemy/Orcs/MiniOrcVeteran.png",
		"src/sprites/enemy/Orcs/MiniOrcVeteran.png"
	}, 32, 32, var_4_185)
	var_4_37("(정예 오크) Orc Veteran", {
		"sprites/enemy/Orcs/MiniOrcVeteran.png",
		"src/sprites/enemy/Orcs/MiniOrcVeteran.png"
	}, 32, 32, var_4_185)

	local var_4_186 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 7
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 6
		}
	}

	var_4_37("Grimwolf Orc", {
		"src/sprites/enemy/Orcs/boss/MiniOrcShaman.png",
		"sprites/enemy/Orcs/boss/MiniOrcShaman.png"
	}, 32, 32, var_4_186)
	var_4_37("그림울프 오크", {
		"src/sprites/enemy/Orcs/boss/MiniOrcShaman.png",
		"sprites/enemy/Orcs/boss/MiniOrcShaman.png"
	}, 32, 32, var_4_186)

	local var_4_187 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 4
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 5
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 7
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 4
		}
	}

	var_4_37("Wolf", {
		"src/sprites/enemy/Orcs/boss/Wolf.png",
		"sprites/enemy/Orcs/boss/Wolf.png"
	}, 32, 32, var_4_187)
	var_4_37("늑대", {
		"src/sprites/enemy/Orcs/boss/Wolf.png",
		"sprites/enemy/Orcs/boss/Wolf.png"
	}, 32, 32, var_4_187)

	local var_4_188 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 4
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 5
		}
	}

	var_4_37("Warg Orc", {
		"src/sprites/enemy/Orcs/MiniWargRider.png",
		"sprites/enemy/Orcs/MiniWargRider.png",
		"src/sprites/enemy/Orcs/MiniWargRider.PNG",
		"sprites/enemy/Orcs/MiniWargRider.PNG"
	}, 32, 32, var_4_188)
	var_4_37("워그 오크", {
		"src/sprites/enemy/Orcs/MiniWargRider.png",
		"sprites/enemy/Orcs/MiniWargRider.png",
		"src/sprites/enemy/Orcs/MiniWargRider.PNG",
		"sprites/enemy/Orcs/MiniWargRider.PNG"
	}, 32, 32, var_4_188)

	local var_4_189 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 4
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 6
		},
		attack4 = {
			speed = 0.08,
			loop = false,
			row = 7,
			frames = 4
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 8,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 9,
			frames = 4
		}
	}

	var_4_37("Orc Berserker", {
		"src/sprites/enemy/Orcs/MiniOrcBerserker.png",
		"sprites/enemy/Orcs/MiniOrcBerserker.png"
	}, 32, 32, var_4_189)
	var_4_37("오크 광전사", {
		"src/sprites/enemy/Orcs/MiniOrcBerserker.png",
		"sprites/enemy/Orcs/MiniOrcBerserker.png"
	}, 32, 32, var_4_189)

	local var_4_190 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		shout = {
			speed = 0.1,
			loop = false,
			row = 2,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 3,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 4,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 6
		},
		attack3 = {
			speed = 0.07,
			loop = false,
			row = 7,
			frames = 9
		},
		attack4 = {
			speed = 0.06,
			loop = false,
			row = 8,
			frames = 12
		},
		bite = {
			speed = 0.08,
			loop = false,
			row = 9,
			frames = 4
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 10,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 11,
			frames = 5
		}
	}

	var_4_37("Howl Orc", {
		"src/sprites/enemy/Orcs/boss/MiniOrcWerewolf.png",
		"sprites/enemy/Orcs/boss/MiniOrcWerewolf.png",
		"src/sprites/enemy/Orcs/boss/MiniOrcWerewolf.PNG",
		"sprites/enemy/Orcs/boss/MiniOrcWerewolf.PNG"
	}, 40, 40, var_4_190)
	var_4_37("하울 오크", {
		"src/sprites/enemy/Orcs/boss/MiniOrcWerewolf.png",
		"sprites/enemy/Orcs/boss/MiniOrcWerewolf.png",
		"src/sprites/enemy/Orcs/boss/MiniOrcWerewolf.PNG",
		"sprites/enemy/Orcs/boss/MiniOrcWerewolf.PNG"
	}, 40, 40, var_4_190)

	local var_4_191 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 9
		},
		attack4 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 9
		},
		shout = {
			speed = 0.1,
			loop = false,
			row = 7,
			frames = 3
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 8,
			frames = 8
		},
		attack5 = {
			speed = 0.08,
			loop = false,
			row = 9,
			frames = 8
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 10,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 11,
			frames = 7
		}
	}

	var_4_37("Orc Arch Shaman", {
		"src/sprites/enemy/Orcs/boss/MiniOrcPriest.png",
		"sprites/enemy/Orcs/boss/MiniOrcPriest.png"
	}, 32, 32, var_4_191)
	var_4_37("오크 대주술사", {
		"src/sprites/enemy/Orcs/boss/MiniOrcPriest.png",
		"sprites/enemy/Orcs/boss/MiniOrcPriest.png"
	}, 32, 32, var_4_191)
	var_4_37("오크 대주술사 (Orc Arch Shaman)", {
		"src/sprites/enemy/Orcs/boss/MiniOrcPriest.png",
		"sprites/enemy/Orcs/boss/MiniOrcPriest.png"
	}, 32, 32, var_4_191)

	local var_4_192 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 5
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 6
		}
	}

	var_4_37("Orc_War_Chief", {
		"src/sprites/enemy/Orcs/MiniOrcWarChief.png",
		"sprites/enemy/Orcs/MiniOrcWarChief.png",
		"src/sprites/enemy/Orcs/MiniOrcWarChief.PNG",
		"sprites/enemy/Orcs/MiniOrcWarChief.PNG"
	}, 32, 32, var_4_192)
	var_4_37("오크 족장", {
		"src/sprites/enemy/Orcs/MiniOrcWarChief.png",
		"sprites/enemy/Orcs/MiniOrcWarChief.png",
		"src/sprites/enemy/Orcs/MiniOrcWarChief.PNG",
		"sprites/enemy/Orcs/MiniOrcWarChief.PNG"
	}, 32, 32, var_4_192)
	var_4_37("Orc War Chief", {
		"src/sprites/enemy/Orcs/MiniOrcWarChief.png",
		"sprites/enemy/Orcs/MiniOrcWarChief.png",
		"src/sprites/enemy/Orcs/MiniOrcWarChief.PNG",
		"sprites/enemy/Orcs/MiniOrcWarChief.PNG"
	}, 32, 32, var_4_192)

	local var_4_193 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 4
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 4
		}
	}

	var_4_37("Goblin Rider", {
		"src/sprites/enemy/Orcs/MiniWolfRider.png",
		"sprites/enemy/Orcs/MiniWolfRider.png",
		"src/sprites/enemy/Orcs/MiniWolfRider.PNG",
		"sprites/enemy/Orcs/MiniWolfRider.PNG"
	}, 32, 32, var_4_193)
	var_4_37("고블린 라이더", {
		"src/sprites/enemy/Orcs/MiniWolfRider.png",
		"sprites/enemy/Orcs/MiniWolfRider.png",
		"src/sprites/enemy/Orcs/MiniWolfRider.PNG",
		"sprites/enemy/Orcs/MiniWolfRider.PNG"
	}, 32, 32, var_4_193)

	local var_4_194 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 4
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 4
		}
	}

	var_4_37("MiniWolfRider", {
		"src/sprites/enemy/Orcs/MiniWolfRider.png",
		"sprites/enemy/Orcs/MiniWolfRider.png",
		"src/sprites/enemy/Orcs/MiniWolfRider.PNG",
		"sprites/enemy/Orcs/MiniWolfRider.PNG"
	}, 32, 32, var_4_194)

	local var_4_195 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 4
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 7
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("협곡 랩터 (Canyon Raptor)", {
		"src/sprites/enemy/Lizard/01CanyonRaptor.png",
		"sprites/enemy/Lizard/01CanyonRaptor.png"
	}, 40, 40, var_4_195)
	var_4_37("Canyon Raptor", {
		"src/sprites/enemy/Lizard/01CanyonRaptor.png",
		"sprites/enemy/Lizard/01CanyonRaptor.png"
	}, 40, 40, var_4_195)

	local var_4_196 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 4
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 8
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 8
		}
	}

	var_4_37("도끼 리자드 (Axe Lizard)", {
		"src/sprites/enemy/Lizard/02AxeLizard.png",
		"sprites/enemy/Lizard/02AxeLizard.png"
	}, 32, 32, var_4_196)
	var_4_37("Axe Lizard", {
		"src/sprites/enemy/Lizard/02AxeLizard.png",
		"sprites/enemy/Lizard/02AxeLizard.png"
	}, 32, 32, var_4_196)

	local var_4_197 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 4
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 11
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 8
		}
	}

	var_4_37("리자드 사냥꾼 (Lizard Hunter)", {
		"src/sprites/enemy/Lizard/03LizardHunter.png",
		"sprites/enemy/Lizard/03LizardHunter.png"
	}, 32, 32, var_4_197)
	var_4_37("Lizard Hunter", {
		"src/sprites/enemy/Lizard/03LizardHunter.png",
		"sprites/enemy/Lizard/03LizardHunter.png"
	}, 32, 32, var_4_197)

	var_0_0.firebreatherAnimations = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 6
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 9
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 8
		}
	}

	var_4_37("불숨 리자드 (Firebreather)", {
		"src/sprites/enemy/Lizard/04Firebreather.png",
		"sprites/enemy/Lizard/04Firebreather.png"
	}, 32, 32, var_0_0.firebreatherAnimations)
	var_4_37("Firebreather", {
		"src/sprites/enemy/Lizard/04Firebreather.png",
		"sprites/enemy/Lizard/04Firebreather.png"
	}, 32, 32, var_0_0.firebreatherAnimations)

	local var_4_198 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 4
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 4
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 4
		}
	}

	var_4_37("마른 하이에나 (Dust Hyena)", {
		"src/sprites/enemy/Gnolls/01DustHyena.png",
		"sprites/enemy/Gnolls/01DustHyena.png"
	}, 32, 32, var_4_198)

	local var_4_199 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 9
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 6
		}
	}

	var_4_37("궁수 놀 (Gnoll Archer)", {
		"src/sprites/enemy/Gnolls/02GnollArcher.png",
		"sprites/enemy/Gnolls/02GnollArcher.png"
	}, 32, 32, var_4_199)

	local var_4_200 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 5
		},
		shield = {
			speed = 0.1,
			loop = false,
			row = 6,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 6
		}
	}

	var_4_37("방패 놀 (Shield Gnoll)", {
		"src/sprites/enemy/Gnolls/03ShieldGnoll.png",
		"sprites/enemy/Gnolls/03ShieldGnoll.png"
	}, 32, 32, var_4_200)

	local var_4_201 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 5
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 8
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 3
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 6
		}
	}

	var_4_37("황무지 전사 (Wasteland Warrior)", {
		"src/sprites/enemy/Gnolls/04WastelandWarrior.png",
		"sprites/enemy/Gnolls/04WastelandWarrior.png"
	}, 32, 32, var_4_201)

	local var_4_202 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 6
		}
	}

	var_4_37("피냄새 암살자 (Blood Assassin)", {
		"src/sprites/enemy/Gnolls/05BloodscentAssassin.png",
		"sprites/enemy/Gnolls/05BloodscentAssassin.png"
	}, 32, 32, var_4_202)

	local var_4_203 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 5
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 8
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 6
		}
	}

	var_4_37("광폭 놀 (Gnoll Berserker)", {
		"src/sprites/enemy/Gnolls/06GnollBerserker.png",
		"sprites/enemy/Gnolls/06GnollBerserker.png"
	}, 32, 32, var_4_203)

	local var_4_204 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 9
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 5
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 13
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 6
		}
	}

	var_4_37("광소술사 (Cackle Shaman)", {
		"src/sprites/enemy/Gnolls/07CackleShaman.png",
		"sprites/enemy/Gnolls/07CackleShaman.png"
	}, 32, 32, var_4_204)

	local var_4_205 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		attack3 = {
			speed = 0.08,
			loop = false,
			row = 6,
			frames = 11
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 6
		}
	}

	var_4_37("황무지 전장 (Pack Chief)", {
		"src/sprites/enemy/Gnolls/08PackChief.png",
		"sprites/enemy/Gnolls/08PackChief.png"
	}, 32, 32, var_4_205)

	var_0_0.backgrounds = var_0_0.backgrounds or {}

	local function var_4_206(arg_13_0, arg_13_1)
		local var_13_0 = {}
		local var_13_1 = {}

		for iter_13_0 = 0, 5 do
			local var_13_2 = string.format("%s/%d.png", arg_13_1, iter_13_0)
			local var_13_3 = {
				var_13_2,
				var_13_2:gsub("^src/", ""),
				"src/" .. var_13_2
			}
			local var_13_4, var_13_5 = var_0_1(var_13_3)

			if var_13_4 then
				var_13_4:setFilter("nearest", "nearest")

				var_13_0[iter_13_0] = {
					image = var_13_4,
					used = var_13_5
				}
			else
				table.insert(var_13_1, var_13_3[1])
			end
		end

		local var_13_6 = string.format("%s/2.5.png", arg_13_1)
		local var_13_7 = {
			var_13_6,
			var_13_6:gsub("^src/", ""),
			"src/" .. var_13_6
		}
		local var_13_8, var_13_9 = var_0_1(var_13_7)

		if var_13_8 then
			var_13_8:setFilter("nearest", "nearest")

			var_13_0[2.5] = {
				image = var_13_8,
				used = var_13_9
			}
		end

		local var_13_10 = {
			layers = var_13_0
		}
		local var_13_11 = string.format("%s/tumbleweed.png", arg_13_1)
		local var_13_12 = {
			var_13_11,
			var_13_11:gsub("^src/", ""),
			"src/" .. var_13_11
		}
		local var_13_13, var_13_14 = var_0_1(var_13_12)

		if var_13_13 then
			var_13_13:setFilter("nearest", "nearest")

			var_13_10.tumbleweed = {
				image = var_13_13,
				used = var_13_14
			}
		end

		var_0_0.backgrounds[arg_13_0] = var_13_10
	end

	var_4_206("battlefield1", "src/sprites/background/battlefield1")
	var_4_206("battlefield2", "src/sprites/background/battlefield2")
	var_4_206("battlefield3", "src/sprites/background/battlefield3")
	var_4_206("battlefield4", "src/sprites/background/battlefield4")

	var_0_0.backgrounds.earthquake = {}

	for iter_4_6 = 1, 7 do
		local var_4_207 = string.format("src/sprites/background/battlefield1/earthquake%d.png", iter_4_6)
		local var_4_208, var_4_209 = var_0_1({
			var_4_207,
			var_4_207:gsub("^src/", "")
		})

		if var_4_208 then
			var_4_208:setFilter("nearest", "nearest")

			var_0_0.backgrounds.earthquake[iter_4_6] = var_4_208
		end
	end

	for iter_4_7, iter_4_8 in ipairs({
		"battlefield1",
		"battlefield2",
		"battlefield3",
		"battlefield4"
	}) do
		if var_0_0.backgrounds[iter_4_8] and var_0_0.backgrounds[iter_4_8].layers and var_0_0.backgrounds[iter_4_8].layers[2.5] then
			var_0_0.backgrounds[iter_4_8].moon = var_0_0.backgrounds[iter_4_8].layers[2.5]
		end
	end

	var_0_0.ui = var_0_0.ui or {}

	local var_4_210 = {
		"src/sprites/icons/imprinticons/shortsicons/close.png",
		"sprites/icons/imprinticons/shortsicons/close.png"
	}
	local var_4_211, var_4_212 = var_0_1(var_4_210)

	if var_4_211 then
		var_0_0.ui.timelessDeathIcon = var_4_211

		print(string.format("[assets] Loaded UI image timelessDeathIcon from %s", var_4_212))
	end

	local var_4_213 = {
		"src/sprites/icons/relics icon/item icons/00 upgrade.png"
	}
	local var_4_214, var_4_215 = var_0_1(var_4_213)

	if var_4_214 then
		var_4_214:setFilter("nearest", "nearest")

		var_0_0.ui.itemUpgradeIcon = var_4_214

		print(string.format("[assets] Loaded UI image itemUpgradeIcon from %s", var_4_215))
	end

	local var_4_216 = {
		"src/sprites/background/mainbackground/battlefieldtitle.png",
		"sprites/background/mainbackground/battlefieldtitle.png"
	}
	local var_4_217, var_4_218 = var_0_1(var_4_216)

	if var_4_217 then
		var_4_217:setFilter("nearest", "nearest")

		var_0_0.ui.battlefieldTitle = var_4_217

		print(string.format("[assets] Loaded UI image battlefieldTitle from %s (%dx%d)", var_4_218, var_4_217:getWidth(), var_4_217:getHeight()))
	else
		print("[assets] battlefieldTitle image not found (optional)")
	end

	local var_4_219 = {
		"src/sprites/background/mainbackground/scroll.png",
		"sprites/background/mainbackground/scroll.png"
	}
	local var_4_220, var_4_221 = var_0_1(var_4_219)

	if var_4_220 then
		var_4_220:setFilter("nearest", "nearest")

		local var_4_222 = 23
		local var_4_223 = 28
		local var_4_224 = var_4_220:getWidth()
		local var_4_225 = var_4_220:getHeight()
		local var_4_226 = math.max(1, math.floor(var_4_224 / var_4_222))
		local var_4_227 = {}

		for iter_4_9 = 0, var_4_226 - 1 do
			var_4_227[iter_4_9 + 1] = love.graphics.newQuad(iter_4_9 * var_4_222, 0, var_4_222, var_4_223, var_4_224, var_4_225)
		end

		local var_4_228, var_4_229 = pcall(love.image.newImageData, var_4_221)

		if not var_4_228 then
			var_4_229 = nil
		end

		var_0_0.ui.scrollIntroAnim = {
			image = var_4_220,
			imageData = var_4_229,
			frameW = var_4_222,
			frameH = var_4_223,
			frameCount = var_4_226,
			quads = var_4_227
		}

		print(string.format("[assets] Loaded scroll intro anim from %s (%d frames, %dx%d each)", var_4_221, var_4_226, var_4_222, var_4_223))
	else
		print("[assets] scroll intro anim image not found (optional)")
	end

	local var_4_230 = {
		"src/sprites/background/mainbackground/corescrollshadow.png",
		"sprites/background/mainbackground/corescrollshadow.png"
	}
	local var_4_231, var_4_232 = var_0_1(var_4_230)

	if var_4_231 then
		var_4_231:setFilter("nearest", "nearest")

		var_0_0.ui.coreScrollShadow = var_4_231

		print(string.format("[assets] Loaded UI image coreScrollShadow from %s (%dx%d)", var_4_232, var_4_231:getWidth(), var_4_231:getHeight()))
	else
		print("[assets] coreScrollShadow image not found (optional)")
	end

	local var_4_233 = {
		"src/sprites/background/mainbackground/corescroll.png",
		"sprites/background/mainbackground/corescroll.png"
	}
	local var_4_234, var_4_235 = var_0_1(var_4_233)

	if var_4_234 then
		var_4_234:setFilter("nearest", "nearest")

		var_0_0.ui.coreScroll = var_4_234

		local var_4_236, var_4_237 = pcall(love.image.newImageData, var_4_235)

		if var_4_236 and var_4_237 then
			var_0_0.ui.coreScrollData = var_4_237
		end

		print(string.format("[assets] Loaded UI image coreScroll from %s (%dx%d)", var_4_235, var_4_234:getWidth(), var_4_234:getHeight()))
	else
		print("[assets] coreScroll image not found (optional)")
	end

	local var_4_238 = {
		"src/sprites/background/mainbackground/corescrollmessage.png",
		"sprites/background/mainbackground/corescrollmessage.png"
	}
	local var_4_239, var_4_240 = var_0_1(var_4_238)

	if var_4_239 then
		var_4_239:setFilter("nearest", "nearest")

		var_0_0.ui.coreScrollMessage = var_4_239

		print(string.format("[assets] Loaded UI image coreScrollMessage from %s (%dx%d)", var_4_240, var_4_239:getWidth(), var_4_239:getHeight()))
	else
		print("[assets] coreScrollMessage image not found (optional)")
	end

	local var_4_241 = {
		"src/sprites/background/mainbackground/informationrope.png",
		"sprites/background/mainbackground/informationrope.png"
	}
	local var_4_242, var_4_243 = var_0_1(var_4_241)

	if var_4_242 then
		var_4_242:setFilter("nearest", "nearest")

		var_0_0.ui.informationRope = var_4_242

		print(string.format("[assets] Loaded UI image informationRope from %s (%dx%d)", var_4_243, var_4_242:getWidth(), var_4_242:getHeight()))
	else
		print("[assets] informationRope image not found (optional)")
	end

	local var_4_244 = {
		"src/sprites/background/mainbackground/informationhitorder.png",
		"sprites/background/mainbackground/informationhitorder.png"
	}
	local var_4_245, var_4_246 = var_0_1(var_4_244)

	if var_4_245 then
		var_4_245:setFilter("nearest", "nearest")

		var_0_0.ui.informationHitOrder = var_4_245

		print(string.format("[assets] Loaded UI image informationHitOrder from %s (%dx%d)", var_4_246, var_4_245:getWidth(), var_4_245:getHeight()))
	else
		print("[assets] informationHitOrder image not found (optional)")
	end

	local var_4_247 = {
		"src/sprites/icons/menu/originite.png",
		"sprites/icons/menu/originite.png"
	}
	local var_4_248, var_4_249 = var_0_1(var_4_247)

	if var_4_248 then
		var_4_248:setFilter("nearest", "nearest")

		var_0_0.ui.originiteIcon = var_4_248

		print(string.format("[assets] Loaded UI image originiteIcon from %s (%dx%d)", var_4_249, var_4_248:getWidth(), var_4_248:getHeight()))
	else
		print("[assets] originiteIcon image not found (optional)")
	end

	local var_4_250 = {
		"src/sprites/background/button/fastforward.png",
		"sprites/background/button/fastforward.png"
	}
	local var_4_251, var_4_252 = var_0_1(var_4_250)

	if var_4_251 then
		var_4_251:setFilter("nearest", "nearest")

		var_0_0.ui.fastForwardButton = var_4_251

		local var_4_253, var_4_254 = pcall(love.image.newImageData, var_4_252)

		if var_4_253 and var_4_254 then
			var_0_0.ui.fastForwardButtonData = var_4_254
		end

		print(string.format("[assets] Loaded UI image fastForwardButton from %s (%dx%d)", var_4_252, var_4_251:getWidth(), var_4_251:getHeight()))
	else
		print("[assets] fastForwardButton image not found (optional)")
	end

	local var_4_255 = {
		"src/sprites/background/button/fastforward2.png",
		"sprites/background/button/fastforward2.png"
	}
	local var_4_256, var_4_257 = var_0_1(var_4_255)

	if var_4_256 then
		var_4_256:setFilter("nearest", "nearest")

		var_0_0.ui.fastForwardButtonActive = var_4_256

		print(string.format("[assets] Loaded UI image fastForwardButtonActive from %s (%dx%d)", var_4_257, var_4_256:getWidth(), var_4_256:getHeight()))
	else
		print("[assets] fastForwardButtonActive image not found (optional)")
	end

	local var_4_258 = {
		"src/sprites/background/button/fastforwardpressed.png",
		"sprites/background/button/fastforwardpressed.png"
	}
	local var_4_259, var_4_260 = var_0_1(var_4_258)

	if var_4_259 then
		var_4_259:setFilter("nearest", "nearest")

		var_0_0.ui.fastForwardButtonPressed = var_4_259

		print(string.format("[assets] Loaded UI image fastForwardButtonPressed from %s (%dx%d)", var_4_260, var_4_259:getWidth(), var_4_259:getHeight()))
	else
		print("[assets] fastForwardButtonPressed image not found (optional)")
	end

	local var_4_261 = {
		"src/sprites/background/button/fastforward2pressed.png",
		"sprites/background/button/fastforward2pressed.png"
	}
	local var_4_262, var_4_263 = var_0_1(var_4_261)

	if var_4_262 then
		var_4_262:setFilter("nearest", "nearest")

		var_0_0.ui.fastForwardButtonActivePressed = var_4_262

		print(string.format("[assets] Loaded UI image fastForwardButtonActivePressed from %s (%dx%d)", var_4_263, var_4_262:getWidth(), var_4_262:getHeight()))
	else
		print("[assets] fastForwardButtonActivePressed image not found (optional)")
	end

	local var_4_264 = {
		"src/sprites/background/mainbackground/information.png",
		"sprites/background/mainbackground/information.png"
	}
	local var_4_265, var_4_266 = var_0_1(var_4_264)

	if var_4_265 then
		var_4_265:setFilter("nearest", "nearest")

		var_0_0.ui.information = var_4_265

		print(string.format("[assets] Loaded UI image information from %s (%dx%d)", var_4_266, var_4_265:getWidth(), var_4_265:getHeight()))
	else
		print("[assets] information image not found (optional)")
	end

	local var_4_267 = {
		"src/sprites/background/mainbackground/iteminformation.png",
		"sprites/background/mainbackground/iteminformation.png"
	}
	local var_4_268, var_4_269 = var_0_1(var_4_267)

	if var_4_268 then
		var_4_268:setFilter("nearest", "nearest")

		var_0_0.ui.itemInformation = var_4_268

		print(string.format("[assets] Loaded UI image itemInformation from %s (%dx%d)", var_4_269, var_4_268:getWidth(), var_4_268:getHeight()))
	else
		print("[assets] itemInformation image not found (optional)")
	end

	local var_4_270 = {
		"src/sprites/background/mainbackground/shoprope.png",
		"sprites/background/mainbackground/shoprope.png"
	}
	local var_4_271, var_4_272 = var_0_1(var_4_270)

	if var_4_271 then
		var_4_271:setFilter("nearest", "nearest")

		var_0_0.ui.shopRope = var_4_271

		print(string.format("[assets] Loaded UI image shopRope from %s (%dx%d)", var_4_272, var_4_271:getWidth(), var_4_271:getHeight()))
	else
		print("[assets] shopRope image not found (optional)")
	end

	local var_4_273 = {
		"src/sprites/background/mainbackground/shoptitle.png",
		"sprites/background/mainbackground/shoptitle.png"
	}
	local var_4_274, var_4_275 = var_0_1(var_4_273)

	if var_4_274 then
		var_4_274:setFilter("nearest", "nearest")

		var_0_0.ui.shopTitle = var_4_274

		print(string.format("[assets] Loaded UI image shopTitle from %s (%dx%d)", var_4_275, var_4_274:getWidth(), var_4_274:getHeight()))
	else
		print("[assets] shopTitle image not found (optional)")
	end

	local var_4_276 = {
		"src/sprites/background/mainbackground/classtitle.png",
		"sprites/background/mainbackground/classtitle.png"
	}
	local var_4_277, var_4_278 = var_0_1(var_4_276)

	if var_4_277 then
		var_4_277:setFilter("nearest", "nearest")

		var_0_0.ui.classTitle = var_4_277

		local var_4_279, var_4_280 = pcall(love.image.newImageData, var_4_278)

		if var_4_279 and var_4_280 then
			var_0_0.ui.classTitleData = var_4_280

			local var_4_281, var_4_282 = var_4_280:getDimensions()
			local var_4_283 = var_4_281
			local var_4_284 = var_4_282
			local var_4_285 = -1
			local var_4_286 = -1

			for iter_4_10 = 0, var_4_282 - 1 do
				for iter_4_11 = 0, var_4_281 - 1 do
					local var_4_287, var_4_288, var_4_289, var_4_290 = var_4_280:getPixel(iter_4_11, iter_4_10)

					if var_4_290 and var_4_290 > 0.05 then
						if iter_4_11 < var_4_283 then
							var_4_283 = iter_4_11
						end

						if iter_4_10 < var_4_284 then
							var_4_284 = iter_4_10
						end

						if var_4_285 < iter_4_11 then
							var_4_285 = iter_4_11
						end

						if var_4_286 < iter_4_10 then
							var_4_286 = iter_4_10
						end
					end
				end
			end

			if var_4_283 <= var_4_285 and var_4_284 <= var_4_286 then
				var_0_0.ui.classTitleBounds = {
					x = var_4_283,
					y = var_4_284,
					w = var_4_285 - var_4_283 + 1,
					h = var_4_286 - var_4_284 + 1,
					iw = var_4_281,
					ih = var_4_282,
					used = var_4_278
				}
			end
		end

		print(string.format("[assets] Loaded UI image classTitle from %s (%dx%d)", var_4_278, var_4_277:getWidth(), var_4_277:getHeight()))
	else
		print("[assets] classTitle image not found (optional)")
	end

	local var_4_291 = {
		"src/sprites/background/mainbackground/skillframe.png",
		"sprites/background/mainbackground/skillframe.png"
	}
	local var_4_292, var_4_293 = var_0_1(var_4_291)

	if var_4_292 then
		var_4_292:setFilter("nearest", "nearest")

		var_0_0.ui.classCardSkillFrame = var_4_292

		local var_4_294, var_4_295 = pcall(love.image.newImageData, var_4_293)

		if var_4_294 and var_4_295 then
			local function var_4_296(arg_14_0, arg_14_1, arg_14_2, arg_14_3, arg_14_4, arg_14_5)
				local var_14_0 = 0.00196078431372549

				return var_14_0 >= math.abs(arg_14_0 - arg_14_3 / 255) and var_14_0 >= math.abs(arg_14_1 - arg_14_4 / 255) and var_14_0 >= math.abs(arg_14_2 - arg_14_5 / 255)
			end

			var_4_295:mapPixel(function(arg_15_0, arg_15_1, arg_15_2, arg_15_3, arg_15_4, arg_15_5)
				if var_4_296(arg_15_2, arg_15_3, arg_15_4, 54, 23, 12) then
					return 0.12156862745098039, 0.1411764705882353, 0.0392156862745098, arg_15_5
				end

				if var_4_296(arg_15_2, arg_15_3, arg_15_4, 80, 80, 80) then
					return 0.36470588235294116, 0.5568627450980392, 0.1803921568627451, arg_15_5
				end

				return arg_15_2, arg_15_3, arg_15_4, arg_15_5
			end)

			local var_4_297, var_4_298 = pcall(love.graphics.newImage, var_4_295)

			if var_4_297 and var_4_298 then
				var_4_298:setFilter("nearest", "nearest")

				var_0_0.ui.classCardSkillFrameAdvanced = var_4_298
			end
		end

		print(string.format("[assets] Loaded UI image classCardSkillFrame from %s (%dx%d)", var_4_293, var_4_292:getWidth(), var_4_292:getHeight()))
	else
		print("[assets] classCardSkillFrame image not found (optional)")
	end

	local var_4_299 = {
		"src/sprites/background/mainbackground/skillframeshadow.png",
		"sprites/background/mainbackground/skillframeshadow.png"
	}
	local var_4_300, var_4_301 = var_0_1(var_4_299)

	if var_4_300 then
		var_4_300:setFilter("nearest", "nearest")

		var_0_0.ui.classCardSkillFrameShadow = var_4_300

		print(string.format("[assets] Loaded UI image classCardSkillFrameShadow from %s (%dx%d)", var_4_301, var_4_300:getWidth(), var_4_300:getHeight()))
	else
		print("[assets] classCardSkillFrameShadow image not found (optional)")
	end

	local var_4_302 = {
		"src/sprites/background/mainbackground/expbar.png",
		"sprites/background/mainbackground/expbar.png"
	}
	local var_4_303, var_4_304 = var_0_1(var_4_302)

	if var_4_303 then
		var_4_303:setFilter("nearest", "nearest")

		var_0_0.ui.expBar = var_4_303

		print(string.format("[assets] Loaded UI image expBar from %s (%dx%d)", var_4_304, var_4_303:getWidth(), var_4_303:getHeight()))
	else
		print("[assets] expBar image not found (optional)")
	end

	local var_4_305 = {
		"src/sprites/background/mainbackground/victory.png",
		"sprites/background/mainbackground/victory.png"
	}
	local var_4_306, var_4_307 = var_0_1(var_4_305)

	if var_4_306 then
		var_4_306:setFilter("nearest", "nearest")

		var_0_0.ui.victory = var_4_306

		print(string.format("[assets] Loaded UI image victory from %s (%dx%d)", var_4_307, var_4_306:getWidth(), var_4_306:getHeight()))
	else
		print("[assets] victory image not found")
	end

	local var_4_308 = {
		"src/sprites/background/mainbackground/defeat.png",
		"sprites/background/mainbackground/defeat.png"
	}
	local var_4_309, var_4_310 = var_0_1(var_4_308)

	if var_4_309 then
		var_4_309:setFilter("nearest", "nearest")

		var_0_0.ui.defeat = var_4_309

		print(string.format("[assets] Loaded UI image defeat from %s (%dx%d)", var_4_310, var_4_309:getWidth(), var_4_309:getHeight()))
	else
		print("[assets] defeat image not found")
	end

	local var_4_311 = {
		"src/sprites/background/menu/messagewindow.png",
		"sprites/background/menu/messagewindow.png"
	}
	local var_4_312, var_4_313 = var_0_1(var_4_311)

	if var_4_312 then
		var_4_312:setFilter("nearest", "nearest")

		var_0_0.ui.messageWindow = var_4_312

		local var_4_314, var_4_315 = pcall(love.image.newImageData, var_4_313)

		if var_4_314 and var_4_315 then
			var_0_0.ui.messageWindowData = var_4_315
		end

		print(string.format("[assets] Loaded UI image messageWindow from %s (%dx%d)", var_4_313, var_4_312:getWidth(), var_4_312:getHeight()))
	else
		print("[assets] messageWindow image not found (optional)")
	end

	local var_4_316 = {
		"src/sprites/background/menu/optionwindowrope.png",
		"sprites/background/menu/optionwindowrope.png"
	}
	local var_4_317, var_4_318 = var_0_1(var_4_316)

	if var_4_317 then
		var_4_317:setFilter("nearest", "nearest")

		var_0_0.ui.optionWindowRope = var_4_317

		print(string.format("[assets] Loaded UI image optionWindowRope from %s (%dx%d)", var_4_318, var_4_317:getWidth(), var_4_317:getHeight()))
	else
		print("[assets] optionWindowRope image not found (optional)")
	end

	local var_4_319 = {
		"src/sprites/background/menu/optionwindow.png",
		"sprites/background/menu/optionwindow.png"
	}
	local var_4_320, var_4_321 = var_0_1(var_4_319)

	if var_4_320 then
		var_4_320:setFilter("nearest", "nearest")

		var_0_0.ui.optionWindow = var_4_320

		print(string.format("[assets] Loaded UI image optionWindow from %s (%dx%d)", var_4_321, var_4_320:getWidth(), var_4_320:getHeight()))
	else
		print("[assets] optionWindow image not found (optional)")
	end

	local var_4_322 = {
		"src/sprites/background/menu/pausebackground.png",
		"sprites/background/menu/pausebackground.png"
	}
	local var_4_323, var_4_324 = var_0_1(var_4_322)

	if var_4_323 then
		var_4_323:setFilter("nearest", "nearest")

		var_0_0.ui.pauseBackground = var_4_323

		print(string.format("[assets] Loaded UI image pauseBackground from %s (%dx%d)", var_4_324, var_4_323:getWidth(), var_4_323:getHeight()))
	else
		print("[assets] pauseBackground image not found (optional)")
	end

	local var_4_325 = {
		"src/sprites/background/menu/pausebackground.png",
		"sprites/background/menu/pausebackground.png"
	}
	local var_4_326, var_4_327 = var_0_1(var_4_325)

	if var_4_326 then
		var_4_326:setFilter("nearest", "nearest")

		var_0_0.ui.pauseBackground = var_4_326

		print(string.format("[assets] Loaded UI image pauseBackground from %s (%dx%d)", var_4_327, var_4_326:getWidth(), var_4_326:getHeight()))
	else
		print("[assets] pauseBackground image not found (optional)")
	end

	local var_4_328 = {
		"src/sprites/background/menu/playtimebackground.png",
		"sprites/background/menu/playtimebackground.png"
	}
	local var_4_329, var_4_330 = var_0_1(var_4_328)

	if var_4_329 then
		var_4_329:setFilter("nearest", "nearest")

		var_0_0.ui.playtimeBackground = var_4_329

		print(string.format("[assets] Loaded UI image playtimeBackground from %s (%dx%d)", var_4_330, var_4_329:getWidth(), var_4_329:getHeight()))
	else
		print("[assets] playtimeBackground image not found (optional)")
	end

	local var_4_331 = {
		"src/sprites/background/menu/optionpaperbackground.png",
		"sprites/background/menu/optionpaperbackground.png"
	}
	local var_4_332, var_4_333 = var_0_1(var_4_331)

	if var_4_332 then
		var_4_332:setFilter("nearest", "nearest")

		var_0_0.ui.optionPaperBackground = var_4_332

		print(string.format("[assets] Loaded UI image optionPaperBackground from %s (%dx%d)", var_4_333, var_4_332:getWidth(), var_4_332:getHeight()))
	else
		print("[assets] optionPaperBackground image not found (optional)")
	end

	local var_4_334 = {
		"src/sprites/background/menu/credits.png",
		"sprites/background/menu/credits.png"
	}
	local var_4_335, var_4_336 = var_0_1(var_4_334)

	if var_4_335 then
		var_4_335:setFilter("nearest", "nearest")

		var_0_0.ui.creditsBackground = var_4_335

		print(string.format("[assets] Loaded UI image creditsBackground from %s (%dx%d)", var_4_336, var_4_335:getWidth(), var_4_335:getHeight()))
	else
		print("[assets] creditsBackground image not found (optional)")
	end

	local var_4_337 = {
		"src/sprites/background/menu/gamendscreen.png",
		"sprites/background/menu/gamendscreen.png"
	}
	local var_4_338, var_4_339 = var_0_1(var_4_337)

	if var_4_338 then
		var_4_338:setFilter("nearest", "nearest")

		var_0_0.ui.gameOverScreen = var_4_338

		print(string.format("[assets] Loaded UI image gameOverScreen from %s (%dx%d)", var_4_339, var_4_338:getWidth(), var_4_338:getHeight()))
	else
		print("[assets] gameOverScreen image not found (optional)")
	end

	local var_4_340 = {
		"src/sprites/background/menu/gamendscreendefeat.png",
		"sprites/background/menu/gamendscreendefeat.png"
	}
	local var_4_341, var_4_342 = var_0_1(var_4_340)

	if var_4_341 then
		var_4_341:setFilter("nearest", "nearest")

		var_0_0.ui.gameOverDefeatScreen = var_4_341

		print(string.format("[assets] Loaded UI image gameOverDefeatScreen from %s (%dx%d)", var_4_342, var_4_341:getWidth(), var_4_341:getHeight()))
	else
		print("[assets] gameOverDefeatScreen image not found (optional)")
	end

	local var_4_343 = {
		"src/sprites/background/menu/optionwindow_topbar.png",
		"sprites/background/menu/optionwindow_topbar.png"
	}
	local var_4_344, var_4_345 = var_0_1(var_4_343)

	if var_4_344 then
		var_4_344:setFilter("nearest", "nearest")

		var_0_0.ui.optionWindowTopbar = var_4_344

		print(string.format("[assets] Loaded UI image optionWindowTopbar from %s (%dx%d)", var_4_345, var_4_344:getWidth(), var_4_344:getHeight()))
	else
		print("[assets] optionWindowTopbar image not found (optional)")
	end

	local var_4_346 = {
		"src/sprites/mainmenu/logo.png",
		"sprites/mainmenu/logo.png"
	}
	local var_4_347, var_4_348 = var_0_1(var_4_346)

	if var_4_347 then
		var_4_347:setFilter("nearest", "nearest")

		var_0_0.ui.mainLogo = var_4_347

		print(string.format("[assets] Loaded UI image mainLogo from %s (%dx%d)", var_4_348, var_4_347:getWidth(), var_4_347:getHeight()))
	else
		print("[assets] mainLogo image not found (optional)")
	end

	local var_4_349 = {
		"src/sprites/background/menu/optionbuttonrope.png",
		"sprites/background/menu/optionbuttonrope.png"
	}
	local var_4_350, var_4_351 = var_0_1(var_4_349)

	if var_4_350 then
		var_4_350:setFilter("nearest", "nearest")

		var_0_0.ui.optionButtonRope = var_4_350

		print(string.format("[assets] Loaded UI image optionButtonRope from %s (%dx%d)", var_4_351, var_4_350:getWidth(), var_4_350:getHeight()))
	else
		print("[assets] optionButtonRope image not found (optional)")
	end

	local var_4_352 = {
		"src/sprites/background/menu/playbutton_dark.png",
		"sprites/background/menu/playbutton_dark.png"
	}
	local var_4_353, var_4_354 = var_0_1(var_4_352)

	if var_4_353 then
		var_4_353:setFilter("nearest", "nearest")

		var_0_0.ui.playButtonDark = var_4_353

		local var_4_355, var_4_356 = pcall(love.image.newImageData, var_4_354)

		if var_4_355 and var_4_356 then
			var_0_0.ui.playButtonDarkData = var_4_356
		end

		print(string.format("[assets] Loaded UI image playButtonDark from %s (%dx%d)", var_4_354, var_4_353:getWidth(), var_4_353:getHeight()))
	else
		print("[assets] playButtonDark image not found (optional)")
	end

	local var_4_357 = {
		"src/sprites/background/menu/replaybutton_dark.png",
		"sprites/background/menu/replaybutton_dark.png"
	}
	local var_4_358, var_4_359 = var_0_1(var_4_357)

	if var_4_358 then
		var_4_358:setFilter("nearest", "nearest")

		var_0_0.ui.replayButtonDark = var_4_358

		local var_4_360, var_4_361 = pcall(love.image.newImageData, var_4_359)

		if var_4_360 and var_4_361 then
			var_0_0.ui.replayButtonDarkData = var_4_361
		end

		print(string.format("[assets] Loaded UI image replayButtonDark from %s (%dx%d)", var_4_359, var_4_358:getWidth(), var_4_358:getHeight()))
	else
		print("[assets] replayButtonDark image not found (optional)")
	end

	local var_4_362 = {
		"src/sprites/background/menu/wikibutton_dark.png",
		"sprites/background/menu/wikibutton_dark.png"
	}
	local var_4_363, var_4_364 = var_0_1(var_4_362)

	if var_4_363 then
		var_4_363:setFilter("nearest", "nearest")

		var_0_0.ui.wikiButtonDark = var_4_363

		local var_4_365, var_4_366 = pcall(love.image.newImageData, var_4_364)

		if var_4_365 and var_4_366 then
			var_0_0.ui.wikiButtonDarkData = var_4_366
		end

		print(string.format("[assets] Loaded UI image wikiButtonDark from %s (%dx%d)", var_4_364, var_4_363:getWidth(), var_4_363:getHeight()))
	else
		print("[assets] wikiButtonDark image not found (optional)")
	end

	local var_4_367 = {
		"src/sprites/background/menu/optionbutton_dark.png",
		"sprites/background/menu/optionbutton_dark.png"
	}
	local var_4_368, var_4_369 = var_0_1(var_4_367)

	if var_4_368 then
		var_4_368:setFilter("nearest", "nearest")

		var_0_0.ui.optionButtonDark = var_4_368

		local var_4_370, var_4_371 = pcall(love.image.newImageData, var_4_369)

		if var_4_370 and var_4_371 then
			var_0_0.ui.optionButtonDarkData = var_4_371
		end

		print(string.format("[assets] Loaded UI image optionButtonDark from %s (%dx%d)", var_4_369, var_4_368:getWidth(), var_4_368:getHeight()))
	else
		print("[assets] optionButtonDark image not found (optional)")
	end

	local var_4_372 = {
		"src/sprites/background/menu/tomainmenubutton_dark.png",
		"sprites/background/menu/tomainmenubutton_dark.png"
	}
	local var_4_373, var_4_374 = var_0_1(var_4_372)

	if var_4_373 then
		var_4_373:setFilter("nearest", "nearest")

		var_0_0.ui.toMainMenuButtonDark = var_4_373

		local var_4_375, var_4_376 = pcall(love.image.newImageData, var_4_374)

		if var_4_375 and var_4_376 then
			var_0_0.ui.toMainMenuButtonDarkData = var_4_376
		end

		print(string.format("[assets] Loaded UI image toMainMenuButtonDark from %s (%dx%d)", var_4_374, var_4_373:getWidth(), var_4_373:getHeight()))
	else
		print("[assets] toMainMenuButtonDark image not found (optional)")
	end

	local function var_4_377(arg_16_0, arg_16_1)
		local var_16_0 = {
			"src/sprites/background/menu/" .. arg_16_1,
			"sprites/background/menu/" .. arg_16_1
		}
		local var_16_1, var_16_2 = var_0_1(var_16_0)

		if var_16_1 then
			var_16_1:setFilter("nearest", "nearest")

			var_0_0.ui[arg_16_0] = var_16_1

			print(string.format("[assets] Loaded UI image %s from %s (%dx%d)", arg_16_0, var_16_2, var_16_1:getWidth(), var_16_1:getHeight()))

			local var_16_3, var_16_4 = pcall(love.image.newImageData, var_16_2)

			if var_16_3 and var_16_4 then
				var_0_0.ui[arg_16_0 .. "Data"] = var_16_4
			end
		else
			print(string.format("[assets] %s image not found (optional)", arg_16_0))
		end
	end

	var_4_377("optionButton", "optionbutton.png")
	var_4_377("pauseBackButton", "pausebackbutton.png")
	var_4_377("pauseBackButtonDark", "pausebackbutton_dark.png")
	var_4_377("playButton", "playbutton.png")
	var_4_377("replayButton", "replaybutton.png")
	var_4_377("toMainMenuButton", "tomainmenubutton.png")
	var_4_377("wikiButton", "wikibutton.png")
	var_4_377("gameOverNextButton", "gamendscreennext.png")
	var_4_377("gameOverAgainButton", "gamendscreenagain.png")
	var_4_377("gameOverUpgradeButton", "gamendscreenupgrade.png")

	local var_4_378 = {
		"src/sprites/background/button/nudgebutton.png",
		"sprites/background/button/nudgebutton.png"
	}
	local var_4_379, var_4_380 = var_0_1(var_4_378)

	if var_4_379 then
		var_4_379:setFilter("nearest", "nearest")

		var_0_0.ui.nudgeButton = var_4_379
		var_0_0.ui.nudgeButtonQuads = {
			love.graphics.newQuad(0, 0, 39, 28, var_4_379:getDimensions()),
			love.graphics.newQuad(39, 0, 39, 28, var_4_379:getDimensions())
		}

		local var_4_381, var_4_382 = pcall(love.image.newImageData, var_4_380)

		if var_4_381 and var_4_382 then
			var_0_0.ui.nudgeButtonData = var_4_382
		end

		print(string.format("[assets] Loaded UI image nudgeButton from %s (%dx%d)", var_4_380, var_4_379:getWidth(), var_4_379:getHeight()))
	else
		print("[assets] nudgeButton image not found")
	end

	local var_4_383 = {
		"src/sprites/background/mainbackground/wavecounter.png",
		"sprites/background/mainbackground/wavecounter.png"
	}
	local var_4_384
	local var_4_385

	for iter_4_12, iter_4_13 in ipairs(var_4_383) do
		if love.filesystem.getInfo(iter_4_13) then
			var_4_384 = iter_4_13

			break
		end
	end

	if var_4_384 then
		local var_4_386 = love.graphics.newImage(var_4_384)

		var_4_386:setFilter("nearest", "nearest")

		var_0_0.ui.waveCounter = var_4_386

		local var_4_387, var_4_388 = pcall(love.image.newImageData, var_4_384)

		if var_4_387 and var_4_388 then
			var_0_0.ui.waveCounterData = var_4_388
		end

		print(string.format("[assets] Loaded UI image waveCounter from %s (%dx%d)", var_4_384, var_4_386:getWidth(), var_4_386:getHeight()))
	else
		print("[assets] waveCounter image not found (optional)")
	end

	local var_4_389 = {
		"src/sprites/background/mainbackground/maxunit.png",
		"sprites/background/mainbackground/maxunit.png"
	}
	local var_4_390

	for iter_4_14, iter_4_15 in ipairs(var_4_389) do
		if love.filesystem.getInfo(iter_4_15) then
			var_4_390 = iter_4_15

			break
		end
	end

	if var_4_390 then
		local var_4_391 = love.graphics.newImage(var_4_390)

		var_4_391:setFilter("nearest", "nearest")

		var_0_0.ui.maxUnit = var_4_391

		local var_4_392, var_4_393 = pcall(love.image.newImageData, var_4_390)

		if var_4_392 and var_4_393 then
			var_0_0.ui.maxUnitData = var_4_393
		end

		print(string.format("[assets] Loaded UI image maxUnit from %s (%dx%d)", var_4_390, var_4_391:getWidth(), var_4_391:getHeight()))
	else
		print("[assets] maxUnit image not found (optional)")
	end

	local var_4_394 = {
		"src/sprites/background/mainbackground/maxuniticon.png",
		"sprites/background/mainbackground/maxuniticon.png"
	}
	local var_4_395

	for iter_4_16, iter_4_17 in ipairs(var_4_394) do
		if love.filesystem.getInfo(iter_4_17) then
			var_4_395 = iter_4_17

			break
		end
	end

	if var_4_395 then
		local var_4_396 = love.graphics.newImage(var_4_395)

		var_4_396:setFilter("nearest", "nearest")

		var_0_0.ui.maxUnitIcon = var_4_396

		local var_4_397, var_4_398 = pcall(love.image.newImageData, var_4_395)

		if var_4_397 and var_4_398 then
			var_0_0.ui.maxUnitIconData = var_4_398
		end

		print(string.format("[assets] Loaded UI image maxUnitIcon from %s (%dx%d)", var_4_395, var_4_396:getWidth(), var_4_396:getHeight()))
	else
		print("[assets] maxUnitIcon image not found (optional)")
	end

	local var_4_399 = {
		"src/sprites/icons/battlefieldicons/battle.png",
		"sprites/icons/battlefieldicons/battle.png",
		"src/sprites/icons/battlefieldicons/battle_small.png",
		"sprites/icons/battlefieldicons/battle_small.png"
	}
	local var_4_400, var_4_401 = var_0_1(var_4_399)

	if var_4_400 then
		var_4_400:setFilter("nearest", "nearest")

		var_0_0.ui.waveBattleIcon = var_4_400

		print(string.format("[assets] Loaded UI image waveBattleIcon from %s (%dx%d)", var_4_401, var_4_400:getWidth(), var_4_400:getHeight()))
	else
		print("[assets] waveBattleIcon image not found (optional)")
	end

	local var_4_402 = {
		"src/sprites/icons/battlefieldicons/battle_small.png",
		"sprites/icons/battlefieldicons/battle_small.png"
	}
	local var_4_403, var_4_404 = var_0_1(var_4_402)

	if var_4_403 then
		var_4_403:setFilter("nearest", "nearest")

		var_0_0.ui.waveBattleIconSmall = var_4_403

		print(string.format("[assets] Loaded UI image waveBattleIconSmall from %s (%dx%d)", var_4_404, var_4_403:getWidth(), var_4_403:getHeight()))
	else
		print("[assets] waveBattleIconSmall image not found (optional)")
	end

	local var_4_405 = {
		"src/sprites/icons/battlefieldicons/boss.png",
		"sprites/icons/battlefieldicons/boss.png",
		"src/sprites/icons/battlefieldicons/boss_small.png",
		"sprites/icons/battlefieldicons/boss_small.png"
	}
	local var_4_406, var_4_407 = var_0_1(var_4_405)

	if var_4_406 then
		var_4_406:setFilter("nearest", "nearest")

		var_0_0.ui.waveBossIcon = var_4_406

		print(string.format("[assets] Loaded UI image waveBossIcon from %s (%dx%d)", var_4_407, var_4_406:getWidth(), var_4_406:getHeight()))
	else
		print("[assets] waveBossIcon image not found (optional)")
	end

	local var_4_408 = {
		"src/sprites/icons/battlefieldicons/boss_small.png",
		"sprites/icons/battlefieldicons/boss_small.png"
	}
	local var_4_409, var_4_410 = var_0_1(var_4_408)

	if var_4_409 then
		var_4_409:setFilter("nearest", "nearest")

		var_0_0.ui.waveBossIconSmall = var_4_409

		print(string.format("[assets] Loaded UI image waveBossIconSmall from %s (%dx%d)", var_4_410, var_4_409:getWidth(), var_4_409:getHeight()))
	else
		print("[assets] waveBossIconSmall image not found (optional)")
	end

	local var_4_411 = {
		"src/sprites/background/mainbackground/judgementalert.png",
		"sprites/background/mainbackground/judgementalert.png"
	}
	local var_4_412, var_4_413 = var_0_1(var_4_411)

	if var_4_412 then
		var_4_412:setFilter("nearest", "nearest")

		var_0_0.ui.judgementAlert = var_4_412

		print(string.format("[assets] Loaded UI image judgementAlert from %s (%dx%d)", var_4_413, var_4_412:getWidth(), var_4_412:getHeight()))
	else
		print("[assets] judgementAlert image not found (optional)")
	end

	local var_4_414 = {
		"src/sprites/icons/battlefieldicons/alerticon.png",
		"sprites/icons/battlefieldicons/alerticon.png"
	}
	local var_4_415, var_4_416 = var_0_1(var_4_414)

	if var_4_415 then
		var_4_415:setFilter("nearest", "nearest")

		var_0_0.ui.alertIcon = var_4_415

		print(string.format("[assets] Loaded UI image alertIcon from %s (%dx%d)", var_4_416, var_4_415:getWidth(), var_4_415:getHeight()))
	else
		print("[assets] alertIcon image not found (optional)")
	end

	local var_4_417 = {
		"src/sprites/background/mainbackground/heart.png",
		"sprites/background/mainbackground/heart.png"
	}
	local var_4_418, var_4_419 = var_0_1(var_4_417)

	if var_4_418 then
		var_4_418:setFilter("nearest", "nearest")

		var_0_0.ui.battlefieldHeart = var_4_418

		print(string.format("[assets] Loaded UI image battlefieldHeart from %s (%dx%d)", var_4_419, var_4_418:getWidth(), var_4_418:getHeight()))
	else
		print("[assets] battlefieldHeart image not found (optional)")
	end

	local var_4_420 = {
		"src/sprites/background/mainbackground/heartrope.png",
		"sprites/background/mainbackground/heartrope.png"
	}
	local var_4_421, var_4_422 = var_0_1(var_4_420)

	if var_4_421 then
		var_4_421:setFilter("nearest", "nearest")

		var_0_0.ui.battlefieldHeartRope = var_4_421

		print(string.format("[assets] Loaded UI image battlefieldHeartRope from %s (%dx%d)", var_4_422, var_4_421:getWidth(), var_4_421:getHeight()))
	else
		print("[assets] battlefieldHeartRope image not found (optional)")
	end

	local var_4_423 = var_0_3("battlereadyicon/battleclock01")
	local var_4_424, var_4_425 = var_0_1(var_4_423)

	if var_4_424 then
		var_4_424:setFilter("nearest", "nearest")

		var_0_0.ui.battleReadyOpen = var_4_424

		local var_4_426, var_4_427 = pcall(love.image.newImageData, var_4_425)

		if var_4_426 and var_4_427 then
			var_0_0.ui.battleReadyOpenData = var_4_427
		end

		print(string.format("[assets] Loaded UI image battleReadyOpen from %s (%dx%d)", var_4_425, var_4_424:getWidth(), var_4_424:getHeight()))
	else
		print("[assets] battleReadyOpen icon not found (optional)")
	end

	local var_4_428 = var_0_3("battlereadyicon/battleclock02")
	local var_4_429, var_4_430 = var_0_1(var_4_428)

	if var_4_429 then
		var_4_429:setFilter("nearest", "nearest")

		var_0_0.ui.battleReadyClosed = var_4_429

		local var_4_431, var_4_432 = pcall(love.image.newImageData, var_4_430)

		if var_4_431 and var_4_432 then
			var_0_0.ui.battleReadyClosedData = var_4_432
		end

		print(string.format("[assets] Loaded UI image battleReadyClosed from %s (%dx%d)", var_4_430, var_4_429:getWidth(), var_4_429:getHeight()))
	else
		print("[assets] battleReadyClosed icon not found (optional)")
	end

	local var_4_433 = {
		"src/sprites/background/mainbackground/slotbackground.png",
		"sprites/background/mainbackground/slotbackground.png"
	}
	local var_4_434, var_4_435 = var_0_1(var_4_433)

	if var_4_434 then
		var_4_434:setFilter("nearest", "nearest")

		var_0_0.ui.slotBackground = var_4_434

		print(string.format("[assets] Loaded UI image slotBackground from %s (%dx%d)", var_4_435, var_4_434:getWidth(), var_4_434:getHeight()))
	else
		print("[assets] slotBackground image not found (optional)")
	end

	local var_4_436 = {
		"src/sprites/icons/sloticons/bookshadow.png",
		"sprites/icons/sloticons/bookshadow.png"
	}
	local var_4_437, var_4_438 = var_0_1(var_4_436)

	if var_4_437 then
		var_4_437:setFilter("nearest", "nearest")

		var_0_0.ui.slotBookShadow = var_4_437

		print(string.format("[assets] Loaded UI image slotBookShadow from %s (%dx%d)", var_4_438, var_4_437:getWidth(), var_4_437:getHeight()))
	else
		print("[assets] slotBookShadow image not found (optional)")
	end

	local var_4_439 = {
		"src/sprites/icons/sloticons/book.png",
		"sprites/icons/sloticons/book.png"
	}
	local var_4_440, var_4_441 = var_0_1(var_4_439)

	if var_4_440 then
		var_4_440:setFilter("nearest", "nearest")

		var_0_0.ui.slotBook = var_4_440

		local var_4_442, var_4_443 = pcall(love.image.newImageData, var_4_441)

		if var_4_442 and var_4_443 then
			var_0_0.ui.slotBookData = var_4_443
		end

		print(string.format("[assets] Loaded UI image slotBook from %s (%dx%d)", var_4_441, var_4_440:getWidth(), var_4_440:getHeight()))
	else
		print("[assets] slotBook image not found (optional)")
	end

	local var_4_444 = {
		"src/sprites/icons/sloticons/slotlock.png",
		"sprites/icons/sloticons/slotlock.png"
	}
	local var_4_445, var_4_446 = var_0_1(var_4_444)

	if var_4_445 then
		var_4_445:setFilter("nearest", "nearest")

		var_0_0.ui.slotLock = var_4_445

		print(string.format("[assets] Loaded UI image slotLock from %s (%dx%d)", var_4_446, var_4_445:getWidth(), var_4_445:getHeight()))
	else
		print("[assets] slotLock image not found (optional)")
	end

	local var_4_447 = {
		"src/sprites/background/button/scrollscreenani.png",
		"sprites/background/button/scrollscreenani.png",
		"src/sprites/background/button/scrollscreen.png",
		"sprites/background/button/scrollscreen.png"
	}
	local var_4_448, var_4_449 = var_0_1(var_4_447)

	if var_4_448 then
		var_4_448:setFilter("nearest", "nearest")

		local var_4_450 = var_4_448:getWidth()
		local var_4_451 = var_4_448:getHeight()
		local var_4_452 = tostring(var_4_449 or ""):lower():find("scrollscreenani", 1, true) ~= nil
		local var_4_453 = var_4_452 and 6 or 4
		local var_4_454 = var_4_452 and 94 or math.max(1, math.floor(var_4_450 / math.max(1, var_4_453)))
		local var_4_455 = var_4_452 and math.min(134, var_4_451) or var_4_451
		local var_4_456 = {}

		for iter_4_18 = 0, var_4_453 - 1 do
			local var_4_457 = iter_4_18 * var_4_454

			table.insert(var_4_456, love.graphics.newQuad(var_4_457, 0, var_4_454, var_4_455, var_4_450, var_4_451))
		end

		local var_4_458, var_4_459 = pcall(love.image.newImageData, var_4_449)

		if not var_4_458 then
			var_4_459 = nil
		end

		var_0_0.ui.scrollScreen = {
			image = var_4_448,
			imageData = var_4_459,
			quads = var_4_456,
			frameW = var_4_454,
			frameH = var_4_455,
			frames = var_4_453,
			iw = var_4_450,
			ih = var_4_451,
			orient = oriented
		}

		print(string.format("[assets] Loaded UI scrollscreen from %s (%dx%d, frames=%d)", var_4_449, var_4_450, var_4_451, var_4_453, oriented))
	else
		print("[assets] scrollscreen image not found (optional)")
	end

	local var_4_460 = {
		"src/sprites/background/button/corescrollbutton.png",
		"sprites/background/button/corescrollbutton.png"
	}
	local var_4_461, var_4_462 = var_0_1(var_4_460)

	if var_4_461 then
		var_4_461:setFilter("nearest", "nearest")

		var_0_0.ui.coreScrollButton = var_4_461

		local var_4_463, var_4_464 = pcall(love.image.newImageData, var_4_462)

		if var_4_463 and var_4_464 then
			var_0_0.ui.coreScrollButtonData = var_4_464
		end

		print(string.format("[assets] Loaded UI image coreScrollButton from %s (%dx%d)", var_4_462, var_4_461:getWidth(), var_4_461:getHeight()))
	else
		print("[assets] coreScrollButton image not found (optional)")
	end

	local var_4_465 = {
		"src/sprites/background/button/itemslot.png",
		"sprites/background/button/itemslot.png"
	}
	local var_4_466, var_4_467 = var_0_1(var_4_465)

	if var_4_466 then
		var_4_466:setFilter("nearest", "nearest")

		var_0_0.ui.itemSlot = var_4_466

		print(string.format("[assets] Loaded UI image itemSlot from %s (%dx%d)", var_4_467, var_4_466:getWidth(), var_4_466:getHeight()))
	else
		print("[assets] itemSlot image not found (optional)")
	end

	local var_4_468 = {
		"src/sprites/background/button/itemslot_uncommon.png",
		"sprites/background/button/itemslot_uncommon.png"
	}
	local var_4_469, var_4_470 = var_0_1(var_4_468)

	if var_4_469 then
		var_4_469:setFilter("nearest", "nearest")

		var_0_0.ui.itemSlotUncommon = var_4_469

		print(string.format("[assets] Loaded UI image itemSlotUncommon from %s (%dx%d)", var_4_470, var_4_469:getWidth(), var_4_469:getHeight()))
	else
		print("[assets] itemSlotUncommon image not found (optional)")
	end

	local var_4_471 = {
		"src/sprites/background/button/itemslot_rare.png",
		"sprites/background/button/itemslot_rare.png"
	}
	local var_4_472, var_4_473 = var_0_1(var_4_471)

	if var_4_472 then
		var_4_472:setFilter("nearest", "nearest")

		var_0_0.ui.itemSlotRare = var_4_472

		print(string.format("[assets] Loaded UI image itemSlotRare from %s (%dx%d)", var_4_473, var_4_472:getWidth(), var_4_472:getHeight()))
	else
		print("[assets] itemSlotRare image not found (optional)")
	end

	local var_4_474 = {
		"src/sprites/background/button/itemslot_legend.png",
		"sprites/background/button/itemslot_legend.png"
	}
	local var_4_475, var_4_476 = var_0_1(var_4_474)

	if var_4_475 then
		var_4_475:setFilter("nearest", "nearest")

		var_0_0.ui.itemSlotLegend = var_4_475

		print(string.format("[assets] Loaded UI image itemSlotLegend from %s (%dx%d)", var_4_476, var_4_475:getWidth(), var_4_475:getHeight()))
	else
		print("[assets] itemSlotLegend image not found (optional)")
	end

	local var_4_477 = {
		"src/sprites/icons/relics icon/item icons/00 delete.png"
	}
	local var_4_478, var_4_479 = var_0_1(var_4_477)

	if var_4_478 then
		var_4_478:setFilter("nearest", "nearest")

		var_0_0.ui.itemDeleteIcon = var_4_478

		print(string.format("[assets] Loaded UI image itemDeleteIcon from %s (%dx%d)", var_4_479, var_4_478:getWidth(), var_4_478:getHeight()))
	else
		print("[assets] itemDeleteIcon image not found (optional)")
	end

	local var_4_480 = {
		"src/sprites/icons/relics icon/item icons/00 reroll.png"
	}
	local var_4_481, var_4_482 = var_0_1(var_4_480)

	if var_4_481 then
		var_4_481:setFilter("nearest", "nearest")

		var_0_0.ui.itemRerollIcon = var_4_481

		print(string.format("[assets] Loaded UI image itemRerollIcon from %s (%dx%d)", var_4_482, var_4_481:getWidth(), var_4_481:getHeight()))
	else
		print("[assets] itemRerollIcon image not found (optional)")
	end

	local var_4_483 = {
		"src/sprites/background/button/battlefieldsection_dark.png",
		"sprites/background/button/battlefieldsection_dark.png"
	}
	local var_4_484, var_4_485 = var_0_1(var_4_483)

	if var_4_484 then
		var_4_484:setFilter("nearest", "nearest")

		var_0_0.ui.battlefieldSectionDark = var_4_484

		print(string.format("[assets] Loaded UI image battlefieldSectionDark from %s (%dx%d)", var_4_485, var_4_484:getWidth(), var_4_484:getHeight()))
	else
		print("[assets] battlefieldSectionDark image not found (optional)")
	end

	local var_4_486 = {
		"src/sprites/background/button/battlefieldsection.png",
		"sprites/background/button/battlefieldsection.png"
	}
	local var_4_487, var_4_488 = var_0_1(var_4_486)

	if var_4_487 then
		var_4_487:setFilter("nearest", "nearest")

		var_0_0.ui.battlefieldSection = var_4_487

		print(string.format("[assets] Loaded UI image battlefieldSection from %s (%dx%d)", var_4_488, var_4_487:getWidth(), var_4_487:getHeight()))
	else
		print("[assets] battlefieldSection image not found (optional)")
	end

	local var_4_489 = {
		"src/sprites/background/button/shopsection_dark.png",
		"sprites/background/button/shopsection_dark.png"
	}
	local var_4_490, var_4_491 = var_0_1(var_4_489)

	if var_4_490 then
		var_4_490:setFilter("nearest", "nearest")

		var_0_0.ui.shopSectionDark = var_4_490

		print(string.format("[assets] Loaded UI image shopSectionDark from %s (%dx%d)", var_4_491, var_4_490:getWidth(), var_4_490:getHeight()))
	else
		print("[assets] shopSectionDark image not found (optional)")
	end

	local var_4_492 = {
		"src/sprites/background/button/shopsection.png",
		"sprites/background/button/shopsection.png"
	}
	local var_4_493, var_4_494 = var_0_1(var_4_492)

	if var_4_493 then
		var_4_493:setFilter("nearest", "nearest")

		var_0_0.ui.shopSection = var_4_493

		print(string.format("[assets] Loaded UI image shopSection from %s (%dx%d)", var_4_494, var_4_493:getWidth(), var_4_493:getHeight()))
	else
		print("[assets] shopSection image not found (optional)")
	end

	local var_4_495 = {
		"src/sprites/background/button/stonesection_dark.png",
		"sprites/background/button/stonesection_dark.png"
	}
	local var_4_496, var_4_497 = var_0_1(var_4_495)

	if var_4_496 then
		var_4_496:setFilter("nearest", "nearest")

		var_0_0.ui.stoneSectionDark = var_4_496

		print(string.format("[assets] Loaded UI image stoneSectionDark from %s (%dx%d)", var_4_497, var_4_496:getWidth(), var_4_496:getHeight()))
	else
		print("[assets] stoneSectionDark image not found (optional)")
	end

	local var_4_498 = {
		"src/sprites/background/button/stonesection.png",
		"sprites/background/button/stonesection.png"
	}
	local var_4_499, var_4_500 = var_0_1(var_4_498)

	if var_4_499 then
		var_4_499:setFilter("nearest", "nearest")

		var_0_0.ui.stoneSection = var_4_499

		print(string.format("[assets] Loaded UI image stoneSection from %s (%dx%d)", var_4_500, var_4_499:getWidth(), var_4_499:getHeight()))
	else
		print("[assets] stoneSection image not found (optional)")
	end

	local var_4_501 = {
		"src/sprites/background/button/dpsbutton.png",
		"sprites/background/button/dpsbutton.png"
	}
	local var_4_502, var_4_503 = var_0_1(var_4_501)

	if var_4_502 then
		var_4_502:setFilter("nearest", "nearest")

		var_0_0.ui.dpsButton = var_4_502

		print(string.format("[assets] Loaded UI image dpsButton from %s (%dx%d)", var_4_503, var_4_502:getWidth(), var_4_502:getHeight()))
	else
		print("[assets] dpsButton image not found (optional)")
	end

	local var_4_504 = {
		"src/sprites/background/button/dpsbutton_pressed.png",
		"sprites/background/button/dpsbutton_pressed.png"
	}
	local var_4_505, var_4_506 = var_0_1(var_4_504)

	if var_4_505 then
		var_4_505:setFilter("nearest", "nearest")

		var_0_0.ui.dpsButtonPressed = var_4_505

		print(string.format("[assets] Loaded UI image dpsButtonPressed from %s (%dx%d)", var_4_506, var_4_505:getWidth(), var_4_505:getHeight()))
	else
		print("[assets] dpsButtonPressed image not found (optional)")
	end

	local var_4_507 = {
		"src/sprites/background/button/dpsbuttonclose.png",
		"sprites/background/button/dpsbuttonclose.png"
	}
	local var_4_508, var_4_509 = var_0_1(var_4_507)

	if var_4_508 then
		var_4_508:setFilter("nearest", "nearest")

		var_0_0.ui.dpsButtonClose = var_4_508

		print(string.format("[assets] Loaded UI image dpsButtonClose from %s (%dx%d)", var_4_509, var_4_508:getWidth(), var_4_508:getHeight()))
	else
		print("[assets] dpsButtonClose image not found (optional)")
	end

	local var_4_510 = {
		"src/sprites/background/button/dpsbuttonclose_pressed.png",
		"sprites/background/button/dpsbuttonclose_pressed.png"
	}
	local var_4_511, var_4_512 = var_0_1(var_4_510)

	if var_4_511 then
		var_4_511:setFilter("nearest", "nearest")

		var_0_0.ui.dpsButtonClosePressed = var_4_511

		print(string.format("[assets] Loaded UI image dpsButtonClosePressed from %s (%dx%d)", var_4_512, var_4_511:getWidth(), var_4_511:getHeight()))
	else
		print("[assets] dpsButtonClosePressed image not found (optional)")
	end

	local var_4_513 = {
		"src/sprites/background/button/dpsshadow.png",
		"sprites/background/button/dpsshadow.png"
	}
	local var_4_514, var_4_515 = var_0_1(var_4_513)

	if var_4_514 then
		var_4_514:setFilter("nearest", "nearest")

		var_0_0.ui.dpsShadow = var_4_514

		print(string.format("[assets] Loaded UI image dpsShadow from %s (%dx%d)", var_4_515, var_4_514:getWidth(), var_4_514:getHeight()))
	else
		print("[assets] dpsShadow image not found (optional)")
	end

	local var_4_516 = {
		"src/sprites/background/mainbackground/dpswindow.png",
		"sprites/background/mainbackground/dpswindow.png"
	}
	local var_4_517, var_4_518 = var_0_1(var_4_516)

	if var_4_517 then
		var_4_517:setFilter("nearest", "nearest")

		var_0_0.ui.dpsWindow = var_4_517

		print(string.format("[assets] Loaded UI image dpsWindow from %s (%dx%d)", var_4_518, var_4_517:getWidth(), var_4_517:getHeight()))
	else
		print("[assets] dpsWindow image not found (optional)")
	end

	local var_4_519 = {
		"src/sprites/background/mainbackground/dpsslot.png",
		"sprites/background/mainbackground/dpsslot.png"
	}
	local var_4_520, var_4_521 = var_0_1(var_4_519)

	if var_4_520 then
		var_4_520:setFilter("nearest", "nearest")

		var_0_0.ui.dpsSlot = var_4_520

		print(string.format("[assets] Loaded UI image dpsSlot from %s (%dx%d)", var_4_521, var_4_520:getWidth(), var_4_520:getHeight()))
	else
		print("[assets] dpsSlot image not found (optional)")
	end

	local var_4_522 = {
		"src/sprites/background/mainbackground/shopbackgroundinfobackground.png",
		"sprites/background/mainbackground/shopbackgroundinfobackground.png"
	}
	local var_4_523, var_4_524 = var_0_1(var_4_522)

	if var_4_523 then
		var_4_523:setFilter("nearest", "nearest")

		var_0_0.ui.shopInfoBackground = var_4_523

		print(string.format("[assets] Loaded UI image shopInfoBackground from %s (%dx%d)", var_4_524, var_4_523:getWidth(), var_4_523:getHeight()))
	else
		print("[assets] shopInfoBackground image not found (optional)")
	end

	local var_4_525 = {
		"src/sprites/background/mainbackground/stonequest.png",
		"sprites/background/mainbackground/stonequest.png"
	}
	local var_4_526, var_4_527 = var_0_1(var_4_525)

	if var_4_526 then
		var_4_526:setFilter("nearest", "nearest")

		var_0_0.ui.stoneQuest = var_4_526

		print(string.format("[assets] Loaded UI image stoneQuest from %s (%dx%d)", var_4_527, var_4_526:getWidth(), var_4_526:getHeight()))
	else
		print("[assets] stoneQuest image not found (optional)")
	end

	local var_4_528 = {
		"src/sprites/background/mainbackground/stonequestbackground.png",
		"sprites/background/mainbackground/stonequestbackground.png"
	}
	local var_4_529, var_4_530 = var_0_1(var_4_528)

	if var_4_529 then
		var_4_529:setFilter("nearest", "nearest")

		var_0_0.ui.stoneQuestBackground = var_4_529

		print(string.format("[assets] Loaded UI image stoneQuestBackground from %s (%dx%d)", var_4_530, var_4_529:getWidth(), var_4_529:getHeight()))
	else
		print("[assets] stoneQuestBackground image not found (optional)")
	end

	local var_4_531 = {
		"src/sprites/background/button/spinstick.png",
		"sprites/background/button/spinstick.png"
	}
	local var_4_532, var_4_533 = var_0_1(var_4_531)

	if var_4_532 then
		var_4_532:setFilter("nearest", "nearest")

		local var_4_534 = var_4_532:getWidth()
		local var_4_535 = var_4_532:getHeight()
		local var_4_536 = 7
		local var_4_537 = math.max(1, math.floor(var_4_534 / math.max(1, var_4_536)))
		local var_4_538 = var_4_535
		local var_4_539 = {}

		for iter_4_19 = 0, var_4_536 - 1 do
			local var_4_540 = iter_4_19 * var_4_537

			table.insert(var_4_539, love.graphics.newQuad(var_4_540, 0, var_4_537, var_4_538, var_4_534, var_4_535))
		end

		local var_4_541, var_4_542 = pcall(love.image.newImageData, var_4_533)

		if not var_4_541 then
			var_4_542 = nil
		end

		var_0_0.ui.spinstick = {
			image = var_4_532,
			imageData = var_4_542,
			quads = var_4_539,
			frameW = var_4_537,
			frameH = var_4_538,
			frames = var_4_536,
			iw = var_4_534,
			ih = var_4_535,
			orient = oriented
		}

		print(string.format("[assets] Loaded UI spinstick from %s (%dx%d, frames=%d, orient=%s)", var_4_533, var_4_534, var_4_535, var_4_536, tostring(oriented)))
	else
		print("[assets] spinstick image not found (optional)")
	end

	local var_4_543 = {
		"src/data/font/coinfont/coinfont.png",
		"data/font/coinfont/coinfont.png"
	}
	local var_4_544, var_4_545 = var_0_1(var_4_543)

	if var_4_544 then
		var_4_544:setFilter("nearest", "nearest")

		local var_4_546 = var_4_544:getWidth()
		local var_4_547 = var_4_544:getHeight()
		local var_4_548
		local var_4_549 = var_4_546 % 13 == 0 and "1234567890FRE" or "1234567890"
		local var_4_550 = #var_4_549
		local var_4_551 = math.floor(var_4_546 / var_4_550)

		if var_4_551 <= 0 then
			var_4_551 = var_4_546
		end

		local var_4_552 = {}

		for iter_4_20 = 0, var_4_550 - 1 do
			local var_4_553 = iter_4_20 * var_4_551

			var_4_552[iter_4_20 + 1] = love.graphics.newQuad(var_4_553, 0, var_4_551, var_4_547, var_4_546, var_4_547)
		end

		var_0_0.ui.coinDigits = {
			image = var_4_544,
			quads = var_4_552,
			frameW = var_4_551,
			frameH = var_4_547,
			order = var_4_549
		}

		print(string.format("[assets] Loaded coin sprite font (%s) from %s (%dx%d, frameW=%d)", var_4_549, var_4_545, var_4_546, var_4_547, var_4_551))
	else
		print("[assets] coin digit sprite font not found (optional)")
	end

	local var_4_554 = {
		"src/data/font/coinfont/coinfontgreen.png",
		"data/font/coinfont/coinfontgreen.png"
	}
	local var_4_555, var_4_556 = var_0_1(var_4_554)

	if var_4_555 then
		var_4_555:setFilter("nearest", "nearest")

		local var_4_557 = var_4_555:getWidth()
		local var_4_558 = var_4_555:getHeight()
		local var_4_559 = 11
		local var_4_560 = math.floor(var_4_557 / var_4_559)

		if var_4_560 <= 0 then
			var_4_560 = var_4_557
		end

		local var_4_561 = {}

		for iter_4_21 = 0, var_4_559 - 1 do
			local var_4_562 = iter_4_21 * var_4_560

			var_4_561[iter_4_21 + 1] = love.graphics.newQuad(var_4_562, 0, var_4_560, var_4_558, var_4_557, var_4_558)
		end

		var_0_0.ui.coinDigitsGreen = {
			order = "1234567890+",
			image = var_4_555,
			quads = var_4_561,
			frameW = var_4_560,
			frameH = var_4_558
		}

		print(string.format("[assets] Loaded coin green sprite font from %s (%dx%d, frameW=%d)", var_4_556, var_4_557, var_4_558, var_4_560))
	else
		print("[assets] coin green sprite font not found (optional)")
	end

	local var_4_563 = {
		"src/data/font/coinfont/coinfontred.png",
		"data/font/coinfont/coinfontred.png"
	}
	local var_4_564, var_4_565 = var_0_1(var_4_563)

	if var_4_564 then
		var_4_564:setFilter("nearest", "nearest")

		local var_4_566 = var_4_564:getWidth()
		local var_4_567 = var_4_564:getHeight()
		local var_4_568 = 11
		local var_4_569 = math.floor(var_4_566 / var_4_568)

		if var_4_569 <= 0 then
			var_4_569 = var_4_566
		end

		local var_4_570 = {}

		for iter_4_22 = 0, var_4_568 - 1 do
			local var_4_571 = iter_4_22 * var_4_569

			var_4_570[iter_4_22 + 1] = love.graphics.newQuad(var_4_571, 0, var_4_569, var_4_567, var_4_566, var_4_567)
		end

		var_0_0.ui.coinDigitsRed = {
			order = "1234567890-",
			image = var_4_564,
			quads = var_4_570,
			frameW = var_4_569,
			frameH = var_4_567
		}

		print(string.format("[assets] Loaded coin red sprite font from %s (%dx%d, frameW=%d)", var_4_565, var_4_566, var_4_567, var_4_569))
	else
		print("[assets] coin red sprite font not found (optional)")
	end

	local var_4_572 = {
		"src/data/font/coinfont/numberpink.png",
		"data/font/coinfont/numberpink.png"
	}
	local var_4_573, var_4_574 = var_0_1(var_4_572)

	if var_4_573 then
		var_4_573:setFilter("nearest", "nearest")

		local var_4_575 = var_4_573:getWidth()
		local var_4_576 = var_4_573:getHeight()
		local var_4_577 = 10
		local var_4_578 = math.floor(var_4_575 / var_4_577)

		if var_4_578 <= 0 then
			var_4_578 = var_4_575
		end

		local var_4_579 = {}

		for iter_4_23 = 0, var_4_577 - 1 do
			local var_4_580 = iter_4_23 * var_4_578

			var_4_579[iter_4_23 + 1] = love.graphics.newQuad(var_4_580, 0, var_4_578, var_4_576, var_4_575, var_4_576)
		end

		var_0_0.ui.spinDigitsPink = {
			order = "123456789-",
			image = var_4_573,
			quads = var_4_579,
			frameW = var_4_578,
			frameH = var_4_576
		}

		print(string.format("[assets] Loaded pink number font from %s (%dx%d, frameW=%d)", var_4_574, var_4_575, var_4_576, var_4_578))
	else
		print("[assets] pink number font not found (optional)")
	end

	local var_4_581 = {
		"src/data/font/coinfont/numberheartred.png",
		"data/font/coinfont/numberheartred.png"
	}
	local var_4_582, var_4_583 = var_0_1(var_4_581)

	if var_4_582 then
		var_4_582:setFilter("nearest", "nearest")

		local var_4_584 = var_4_582:getWidth()
		local var_4_585 = var_4_582:getHeight()
		local var_4_586 = 11
		local var_4_587 = math.floor(var_4_584 / var_4_586)

		if var_4_587 <= 0 then
			var_4_587 = var_4_584
		end

		local var_4_588 = {}

		for iter_4_24 = 0, var_4_586 - 1 do
			local var_4_589 = iter_4_24 * var_4_587

			var_4_588[iter_4_24 + 1] = love.graphics.newQuad(var_4_589, 0, var_4_587, var_4_585, var_4_584, var_4_585)
		end

		var_0_0.ui.hpDigitsHeartRed = {
			order = "1234567890-",
			image = var_4_582,
			quads = var_4_588,
			frameW = var_4_587,
			frameH = var_4_585
		}

		print(string.format("[assets] Loaded heart red number font from %s (%dx%d, frameW=%d)", var_4_583, var_4_584, var_4_585, var_4_587))
	else
		print("[assets] heart red number font (numberheartred.png) not found (optional)")
	end

	local var_4_590 = {
		"src/data/font/coinfont/numberdark.png",
		"data/font/coinfont/numberdark.png"
	}
	local var_4_591, var_4_592 = var_0_1(var_4_590)

	if var_4_591 then
		var_4_591:setFilter("nearest", "nearest")

		local var_4_593 = var_4_591:getWidth()
		local var_4_594 = var_4_591:getHeight()
		local var_4_595 = 10
		local var_4_596 = math.floor(var_4_593 / var_4_595)

		if var_4_596 <= 0 then
			var_4_596 = var_4_593
		end

		local var_4_597 = {}

		for iter_4_25 = 0, var_4_595 - 1 do
			local var_4_598 = iter_4_25 * var_4_596

			var_4_597[iter_4_25 + 1] = love.graphics.newQuad(var_4_598, 0, var_4_596, var_4_594, var_4_593, var_4_594)
		end

		var_0_0.ui.hpDigitsDark = {
			order = "123456789-",
			image = var_4_591,
			quads = var_4_597,
			frameW = var_4_596,
			frameH = var_4_594
		}

		print(string.format("[assets] Loaded dark number font from %s (%dx%d, frameW=%d)", var_4_592, var_4_593, var_4_594, var_4_596))
	else
		print("[assets] dark number font (numberdark.png) not found (optional)")
	end

	local var_4_599 = {
		"src/data/font/m16font/m6x11.png",
		"data/font/m16font/m6x11.png",
		"src/data/font/m16font/m6x11.PNG",
		"data/font/m16font/m6x11.PNG"
	}
	local var_4_600, var_4_601 = var_0_1(var_4_599)

	if var_4_600 then
		var_4_600:setFilter("nearest", "nearest")

		local var_4_602 = var_4_600:getWidth()
		local var_4_603 = var_4_600:getHeight()
		local var_4_604 = "0123456789abcdefghijklmnopqrstuvwxyz!?&/:;."
		local var_4_605 = 6
		local var_4_606 = 11
		local var_4_607 = #var_4_604 * var_4_605

		if var_4_603 < var_4_606 or var_4_602 < var_4_607 then
			print(string.format("[assets] Warning: m6x11.png size %dx%d smaller than expected %dx%d (w=%d for %d chars). Will attempt partial load.", var_4_602, var_4_603, var_4_607, var_4_606, var_4_607, #var_4_604))
		end

		local var_4_608 = {}
		local var_4_609 = {}

		for iter_4_26 = 1, #var_4_604 do
			local var_4_610 = var_4_604:sub(iter_4_26, iter_4_26)
			local var_4_611 = (iter_4_26 - 1) * var_4_605

			var_4_608[iter_4_26] = love.graphics.newQuad(var_4_611, 0, var_4_605, var_4_606, var_4_602, var_4_603)
			var_4_609[var_4_610] = var_4_608[iter_4_26]
		end

		var_0_0.ui.m6x11 = {
			spacing = 0,
			image = var_4_600,
			quads = var_4_608,
			map = var_4_609,
			order = var_4_604,
			charW = var_4_605,
			charH = var_4_606,
			draw = function(arg_17_0, arg_17_1, arg_17_2, arg_17_3, arg_17_4)
				if not arg_17_0.image or not arg_17_1 then
					return 0
				end

				local var_17_0 = arg_17_4 and arg_17_4.scale or 1
				local var_17_1 = arg_17_4 and arg_17_4.spacing or arg_17_0.spacing or 0
				local var_17_2 = arg_17_0.image
				local var_17_3 = (arg_17_0.charW + var_17_1) * var_17_0
				local var_17_4 = arg_17_2

				for iter_17_0 = 1, #arg_17_1 do
					local var_17_5 = arg_17_1:sub(iter_17_0, iter_17_0)
					local var_17_6 = arg_17_0.map[var_17_5]

					if var_17_6 then
						love.graphics.draw(var_17_2, var_17_6, var_17_4, arg_17_3, 0, var_17_0, var_17_0)
					end

					var_17_4 = var_17_4 + var_17_3
				end

				return var_17_4 - arg_17_2
			end,
			measure = function(arg_18_0, arg_18_1, arg_18_2)
				if not arg_18_1 then
					return 0, arg_18_0.charH
				end

				local var_18_0 = arg_18_2 and arg_18_2.scale or 1
				local var_18_1 = arg_18_2 and arg_18_2.spacing or arg_18_0.spacing or 0

				return (#arg_18_1 * (arg_18_0.charW + var_18_1) - var_18_1) * var_18_0, arg_18_0.charH * var_18_0
			end
		}

		print(string.format("[assets] Loaded m6x11 sprite font from %s (sheet=%dx%d, chars=%d, char=%dx%d)", var_4_601, var_4_602, var_4_603, #var_4_604, var_4_605, var_4_606))
	else
		print("[assets] m6x11 sprite font not found (optional)")
	end

	local var_4_612 = {
		"src/data/font/heartfont/Galmuri9heart_K.fnt",
		"data/font/heartfont/Galmuri9heart_K.fnt"
	}
	local var_4_613

	for iter_4_27, iter_4_28 in ipairs(var_4_612) do
		if love.filesystem.getInfo(iter_4_28) then
			local var_4_614, var_4_615 = pcall(love.graphics.newFont, iter_4_28)

			if var_4_614 and var_4_615 then
				var_4_615:setFilter("nearest", "nearest")

				var_4_613 = var_4_615
				var_0_0.ui.hpFont = var_4_613

				print(string.format("[assets] Loaded HP BMFont from %s (height=%d)", iter_4_28, var_4_615:getHeight()))

				break
			end
		end
	end

	if not var_4_613 then
		print("[assets] HP BMFont (heartfont) not found (optional, will use sprite digits if available)")
	end

	var_0_0.projectiles = {}
	var_0_0.projectilesMeta = {}

	local function var_4_616(arg_19_0, arg_19_1, arg_19_2, arg_19_3, arg_19_4)
		arg_19_2 = arg_19_2 or 1
		arg_19_3 = arg_19_3 or 0.1

		local var_19_0, var_19_1 = var_0_1(arg_19_1)

		if not var_19_0 then
			var_0_0.projectilesMeta[arg_19_0] = {
				found = false,
				tried = arg_19_1,
				used = var_19_1
			}

			print(string.format("[assets] Missing projectile sprite %s (tried like %s)", arg_19_0, var_19_1))

			return
		end

		local var_19_2 = var_19_0:getWidth()
		local var_19_3 = var_19_0:getHeight()
		local var_19_4 = math.floor(var_19_2 / math.max(1, arg_19_2))
		local var_19_5 = var_19_3
		local var_19_6 = {}
		local var_19_7 = {}
		local var_19_8, var_19_9 = pcall(love.image.newImageData, var_19_1)

		if not var_19_8 then
			var_19_9 = nil
		end

		local function var_19_10(arg_20_0, arg_20_1)
			if not var_19_9 then
				return {
					y = 0,
					x = 0,
					w = var_19_4,
					h = var_19_5
				}
			end

			local var_20_0 = var_19_4
			local var_20_1 = var_19_5
			local var_20_2 = -1
			local var_20_3 = -1

			for iter_20_0 = 0, var_19_5 - 1 do
				for iter_20_1 = 0, var_19_4 - 1 do
					local var_20_4 = arg_20_0 + iter_20_1
					local var_20_5 = arg_20_1 + iter_20_0
					local var_20_6, var_20_7, var_20_8, var_20_9 = var_19_9:getPixel(var_20_4, var_20_5)

					if var_20_9 and var_20_9 > 0.05 then
						if iter_20_1 < var_20_0 then
							var_20_0 = iter_20_1
						end

						if iter_20_0 < var_20_1 then
							var_20_1 = iter_20_0
						end

						if var_20_2 < iter_20_1 then
							var_20_2 = iter_20_1
						end

						if var_20_3 < iter_20_0 then
							var_20_3 = iter_20_0
						end
					end
				end
			end

			if var_20_2 < var_20_0 or var_20_3 < var_20_1 then
				return {
					y = 0,
					x = 0,
					w = var_19_4,
					h = var_19_5
				}
			end

			return {
				x = var_20_0,
				y = var_20_1,
				w = var_20_2 - var_20_0 + 1,
				h = var_20_3 - var_20_1 + 1
			}
		end

		for iter_19_0 = 0, arg_19_2 - 1 do
			local var_19_11 = iter_19_0 * var_19_4
			local var_19_12 = 0

			table.insert(var_19_6, love.graphics.newQuad(var_19_11, var_19_12, var_19_4, var_19_5, var_19_2, var_19_3))

			var_19_7[iter_19_0 + 1] = var_19_10(var_19_11, var_19_12)
		end

		var_0_0.projectiles[arg_19_0] = {
			image = var_19_0,
			imageData = var_19_9,
			frameW = var_19_4,
			frameH = var_19_5,
			frames = arg_19_2,
			speed = arg_19_3,
			quads = var_19_6,
			bounds = var_19_7,
			travelSpeed = arg_19_4 and arg_19_4.travelSpeed or nil,
			dmgMul = arg_19_4 and arg_19_4.dmgMul or 1
		}
		var_0_0.projectilesMeta[arg_19_0] = {
			found = true,
			used = var_19_1,
			iw = var_19_2,
			ih = var_19_3,
			frameW = var_19_4,
			frameH = var_19_5
		}

		print(string.format("[assets] Loaded projectile %s from %s (%dx%d, frames=%d)", arg_19_0, var_19_1, var_19_2, var_19_3, arg_19_2))
	end

	var_4_616("HumanArrow", {
		"src/sprites/projectile/humanarrow.png",
		"sprites/projectile/humanarrow.png"
	}, 2, 0.1, {
		travelSpeed = 240,
		dmgMul = 1
	})
	var_4_616("GnollArcherArrow", {
		"src/sprites/enemy/Gnolls/GnollArcherArrow.png",
		"sprites/enemy/Gnolls/GnollArcherArrow.png"
	}, 4, 0.08, {
		travelSpeed = 240,
		dmgMul = 1
	})
	var_4_616("CackleShamanProjectile", {
		"src/sprites/enemy/Gnolls/CackleShamanprojectile.png",
		"sprites/enemy/Gnolls/CackleShamanprojectile.png"
	}, 4, 0.12, {
		travelSpeed = 210,
		dmgMul = 1
	})
	var_4_616("CackleShamanCurseDoll", {
		"src/sprites/enemy/Gnolls/cursedoll.png",
		"sprites/enemy/Gnolls/cursedoll.png"
	}, 4, 0.13, {
		travelSpeed = 0,
		dmgMul = 1
	})
	var_4_616("WastelandBiteIcon", {
		"src/sprites/enemy/Gnolls/bite.png",
		"sprites/enemy/Gnolls/bite.png"
	}, 4, 0.06, {
		travelSpeed = 0,
		dmgMul = 1
	})
	var_4_616("PackChiefSkill", {
		"src/sprites/enemy/Gnolls/PackChiefskill.png",
		"sprites/enemy/Gnolls/PackChiefskill.png"
	}, 3, 0.08, {
		travelSpeed = 0,
		dmgMul = 1
	})
	var_4_616("ElfArrow", {
		"src/sprites/projectile/elfarrow.png",
		"sprites/projectile/elfarrow.png"
	}, 2, 0.1, {
		travelSpeed = 240,
		dmgMul = 1
	})
	var_4_616("AbyssArrow", {
		"src/sprites/projectile/abyssarrow.png",
		"sprites/projectile/abyssarrow.png"
	}, 4, 0.08, {
		travelSpeed = 240,
		dmgMul = 1.15
	})
	var_4_616("ElfPurpleArrow", {
		"src/sprites/projectile/elfpurplearrow.png",
		"sprites/projectile/elfpurplearrow.png"
	}, 4, 0.08, {
		travelSpeed = 230,
		dmgMul = 1
	})
	var_4_616("AssaultBarrierAttack", {
		"src/sprites/projectile/AssaultBarrierattack.png",
		"sprites/projectile/AssaultBarrierattack.png"
	}, 4, 0.14, {
		travelSpeed = 260,
		dmgMul = 1
	})
	var_4_616("SpawnEffect", {
		"src/sprites/projectile/spawneffect.png",
		"sprites/projectile/spawneffect.png"
	}, 8, 0.0875, {})
	var_4_616("AbyssArrow2", {
		"src/sprites/projectile/abyssarrow2.png",
		"sprites/projectile/abyssarrow2.png"
	}, 6, 0.08, {
		travelSpeed = 0,
		dmgMul = 1
	})
	var_4_616("WoodWardenAttack", {
		"src/sprites/projectile/woodwardenattack.png",
		"sprites/projectile/woodwardenattack.png"
	}, 11, 0.08, {
		travelSpeed = 0,
		dmgMul = 1.4
	})
	var_4_616("HumanMagic", {
		"src/sprites/projectile/humanmagic.png",
		"sprites/projectile/humanmagic.png"
	}, 2, 0.1, {
		travelSpeed = 240,
		dmgMul = 1
	})
	var_4_616("ElfMagic", {
		"src/sprites/projectile/elfmagic.png",
		"sprites/projectile/elfmagic.png"
	}, 2, 0.1, {
		travelSpeed = 230,
		dmgMul = 1
	})
	var_4_616("BindingBoltAttack", {
		"src/sprites/projectile/BindingBoltAttack.png",
		"sprites/projectile/BindingBoltAttack.png"
	}, 4, 0.14, {
		travelSpeed = 150,
		dmgMul = 1
	})

	local var_4_617 = "루나 현자 발사체"
	local var_4_618 = {
		"src/sprites/projectile/lunaspell.png",
		"sprites/projectile/lunaspell.png"
	}
	local var_4_619, var_4_620 = var_0_1(var_4_618)

	if var_4_619 then
		var_4_619:setFilter("nearest", "nearest")

		local var_4_621 = var_4_619:getWidth()
		local var_4_622 = var_4_619:getHeight()
		local var_4_623 = 32
		local var_4_624 = 32
		local var_4_625 = {}
		local var_4_626 = {}
		local var_4_627, var_4_628 = pcall(love.image.newImageData, var_4_620)

		if not var_4_627 then
			var_4_628 = nil
		end

		local function var_4_629(arg_21_0, arg_21_1)
			if not var_4_628 then
				return {
					y = 0,
					x = 0,
					w = var_4_623,
					h = var_4_624
				}
			end

			local var_21_0 = var_4_623
			local var_21_1 = var_4_624
			local var_21_2 = -1
			local var_21_3 = -1

			for iter_21_0 = 0, var_4_624 - 1 do
				for iter_21_1 = 0, var_4_623 - 1 do
					local var_21_4 = arg_21_0 + iter_21_1
					local var_21_5 = arg_21_1 + iter_21_0
					local var_21_6, var_21_7, var_21_8, var_21_9 = var_4_628:getPixel(var_21_4, var_21_5)

					if var_21_9 and var_21_9 > 0.05 then
						if iter_21_1 < var_21_0 then
							var_21_0 = iter_21_1
						end

						if iter_21_0 < var_21_1 then
							var_21_1 = iter_21_0
						end

						if var_21_2 < iter_21_1 then
							var_21_2 = iter_21_1
						end

						if var_21_3 < iter_21_0 then
							var_21_3 = iter_21_0
						end
					end
				end
			end

			if var_21_2 < var_21_0 or var_21_3 < var_21_1 then
				return {
					y = 0,
					x = 0,
					w = var_4_623,
					h = var_4_624
				}
			end

			return {
				x = var_21_0,
				y = var_21_1,
				w = var_21_2 - var_21_0 + 1,
				h = var_21_3 - var_21_1 + 1
			}
		end

		for iter_4_29 = 0, 3 do
			local var_4_630 = iter_4_29 * var_4_623
			local var_4_631 = 0

			table.insert(var_4_625, love.graphics.newQuad(var_4_630, var_4_631, var_4_623, var_4_624, var_4_621, var_4_622))
			table.insert(var_4_626, var_4_629(var_4_630, var_4_631))
		end

		for iter_4_30 = 0, 2 do
			local var_4_632 = iter_4_30 * var_4_623
			local var_4_633 = 32

			table.insert(var_4_625, love.graphics.newQuad(var_4_632, var_4_633, var_4_623, var_4_624, var_4_621, var_4_622))
			table.insert(var_4_626, var_4_629(var_4_632, var_4_633))
		end

		var_0_0.projectiles[var_4_617] = {
			travelSpeed = 240,
			frames = 7,
			speed = 0.1,
			dmgMul = 1,
			image = var_4_619,
			imageData = var_4_628,
			frameW = var_4_623,
			frameH = var_4_624,
			quads = var_4_625,
			bounds = var_4_626
		}
		var_0_0.projectilesMeta[var_4_617] = {
			found = true,
			used = var_4_620,
			iw = var_4_621,
			ih = var_4_622,
			frameW = var_4_623,
			frameH = var_4_624
		}

		print(string.format("[assets] Loaded projectile %s from %s (%dx%d, frames=7)", var_4_617, var_4_620, var_4_621, var_4_622))
	else
		var_0_0.projectilesMeta[var_4_617] = {
			found = false,
			tried = var_4_618,
			used = var_4_620
		}

		print(string.format("[assets] Missing projectile sprite %s (tried like %s)", var_4_617, var_4_620))
	end

	local var_4_634 = "안틀러 발사체"
	local var_4_635 = {
		"src/sprites/projectile/antlerspell.png",
		"sprites/projectile/antlerspell.png"
	}
	local var_4_636, var_4_637 = var_0_1(var_4_635)

	if var_4_636 then
		var_4_636:setFilter("nearest", "nearest")

		local var_4_638 = var_4_636:getWidth()
		local var_4_639 = var_4_636:getHeight()
		local var_4_640 = 32
		local var_4_641 = 32
		local var_4_642 = {}
		local var_4_643 = {}
		local var_4_644, var_4_645 = pcall(love.image.newImageData, var_4_637)

		if not var_4_644 then
			var_4_645 = nil
		end

		local function var_4_646(arg_22_0, arg_22_1)
			if not var_4_645 then
				return {
					y = 0,
					x = 0,
					w = var_4_640,
					h = var_4_641
				}
			end

			local var_22_0 = var_4_640
			local var_22_1 = var_4_641
			local var_22_2 = -1
			local var_22_3 = -1

			for iter_22_0 = 0, var_4_641 - 1 do
				for iter_22_1 = 0, var_4_640 - 1 do
					local var_22_4 = arg_22_0 + iter_22_1
					local var_22_5 = arg_22_1 + iter_22_0
					local var_22_6, var_22_7, var_22_8, var_22_9 = var_4_645:getPixel(var_22_4, var_22_5)

					if var_22_9 and var_22_9 > 0.05 then
						if iter_22_1 < var_22_0 then
							var_22_0 = iter_22_1
						end

						if iter_22_0 < var_22_1 then
							var_22_1 = iter_22_0
						end

						if var_22_2 < iter_22_1 then
							var_22_2 = iter_22_1
						end

						if var_22_3 < iter_22_0 then
							var_22_3 = iter_22_0
						end
					end
				end
			end

			if var_22_2 < var_22_0 or var_22_3 < var_22_1 then
				return {
					y = 0,
					x = 0,
					w = var_4_640,
					h = var_4_641
				}
			end

			return {
				x = var_22_0,
				y = var_22_1,
				w = var_22_2 - var_22_0 + 1,
				h = var_22_3 - var_22_1 + 1
			}
		end

		for iter_4_31 = 0, 4 do
			local var_4_647 = iter_4_31 * var_4_640
			local var_4_648 = 0

			table.insert(var_4_642, love.graphics.newQuad(var_4_647, var_4_648, var_4_640, var_4_641, var_4_638, var_4_639))
			table.insert(var_4_643, var_4_646(var_4_647, var_4_648))
		end

		for iter_4_32 = 0, 2 do
			local var_4_649 = iter_4_32 * var_4_640
			local var_4_650 = 32

			table.insert(var_4_642, love.graphics.newQuad(var_4_649, var_4_650, var_4_640, var_4_641, var_4_638, var_4_639))
			table.insert(var_4_643, var_4_646(var_4_649, var_4_650))
		end

		var_0_0.projectiles[var_4_634] = {
			travelSpeed = 240,
			frames = 8,
			speed = 0.1,
			dmgMul = 1,
			image = var_4_636,
			imageData = var_4_645,
			frameW = var_4_640,
			frameH = var_4_641,
			quads = var_4_642,
			bounds = var_4_643
		}
		var_0_0.projectilesMeta[var_4_634] = {
			found = true,
			used = var_4_637,
			iw = var_4_638,
			ih = var_4_639,
			frameW = var_4_640,
			frameH = var_4_641
		}

		print(string.format("[assets] Loaded projectile %s from %s (%dx%d, frames=8)", var_4_634, var_4_637, var_4_638, var_4_639))
	else
		var_0_0.projectilesMeta[var_4_634] = {
			found = false,
			tried = var_4_635,
			used = var_4_637
		}

		print(string.format("[assets] Missing projectile sprite %s (tried like %s)", var_4_634, var_4_637))
	end

	var_4_616("BoneGreenSpell", {
		"src/sprites/projectile/bonegreenspell.png",
		"sprites/projectile/bonegreenspell.png"
	}, 2, 0.1, {
		travelSpeed = 230,
		dmgMul = 1.1
	})
	var_4_616("BoneMagic", {
		"src/sprites/projectile/bonespell.png",
		"sprites/projectile/bonespell.png"
	}, 4, 0.1, {
		travelSpeed = 230,
		dmgMul = 1.05
	})
	var_4_616("PierceProjectile", {
		"src/sprites/projectile/pierceprojectile.png",
		"sprites/projectile/pierceprojectile.png"
	}, 2, 0.1, {
		travelSpeed = 155,
		dmgMul = 1
	})
	var_4_616("ThrowingAxe", {
		"src/sprites/enemy/Orcs/MiniThrowingAxe.png",
		"sprites/enemy/Orcs/MiniThrowingAxe.png"
	}, 4, 0.08, {
		travelSpeed = 240,
		dmgMul = 1
	})
	var_4_616("LizardHunterSpear", {
		"src/sprites/enemy/Lizard/LizardHunterSpear.png",
		"sprites/enemy/Lizard/LizardHunterSpear.png"
	}, 1, 0.1, {
		travelSpeed = 200,
		dmgMul = 1
	})
	var_4_616("VikingAxe", {
		"src/sprites/projectile/VikingAxe.png",
		"sprites/projectile/VikingAxe.png"
	}, 4, 0.08, {
		travelSpeed = 160,
		dmgMul = 1
	})
	var_4_616("OrcAxe", {
		"src/sprites/enemy/Orcs/MiniThrowingAxe_S.png",
		"sprites/enemy/Orcs/MiniThrowingAxe_S.png"
	}, 4, 0.08, {
		travelSpeed = 240,
		dmgMul = 1
	})
	var_4_616("OrcArchShamanAttack", {
		"src/sprites/projectile/OrcArchShamanattack.png",
		"sprites/projectile/OrcArchShamanattack.png"
	}, 5, 0.08, {
		travelSpeed = 210,
		dmgMul = 1
	})
	var_4_616("OrcArchShamanSkill", {
		"src/sprites/projectile/OrcArchShamanSkill.png",
		"sprites/projectile/OrcArchShamanSkill.png"
	}, 5, 0.14, {
		travelSpeed = 0,
		dmgMul = 1
	})
	var_4_616("FireCone", {
		"src/sprites/projectile/FireCone.png"
	}, 10, 0.06, {
		travelSpeed = 0
	})
	var_4_616("MeteorFall", {
		"src/sprites/projectile/meteorfall.png"
	}, 6, 0.08, {
		travelSpeed = 0
	})
	var_4_616("MeteorGround", {
		"src/sprites/projectile/meteorground.png"
	}, 5, 0.1, {
		travelSpeed = 0
	})

	local var_4_651 = "ShadowSorcererAttack"
	local var_4_652 = {
		"src/sprites/projectile/shadowsorcererattack.png",
		"sprites/projectile/shadowsorcererattack.png"
	}
	local var_4_653, var_4_654 = var_0_1(var_4_652)

	if var_4_653 then
		var_4_653:setFilter("nearest", "nearest")

		local var_4_655 = var_4_653:getWidth()
		local var_4_656 = var_4_653:getHeight()
		local var_4_657 = 32
		local var_4_658 = 32
		local var_4_659 = {}
		local var_4_660 = {}
		local var_4_661, var_4_662 = pcall(love.image.newImageData, var_4_654)

		if not var_4_661 then
			var_4_662 = nil
		end

		local function var_4_663(arg_23_0, arg_23_1)
			if not var_4_662 then
				return {
					y = 0,
					x = 0,
					w = var_4_657,
					h = var_4_658
				}
			end

			local var_23_0 = var_4_657
			local var_23_1 = var_4_658
			local var_23_2 = -1
			local var_23_3 = -1

			for iter_23_0 = 0, var_4_658 - 1 do
				for iter_23_1 = 0, var_4_657 - 1 do
					local var_23_4 = arg_23_0 + iter_23_1
					local var_23_5 = arg_23_1 + iter_23_0
					local var_23_6, var_23_7, var_23_8, var_23_9 = var_4_662:getPixel(var_23_4, var_23_5)

					if var_23_9 and var_23_9 > 0.05 then
						if iter_23_1 < var_23_0 then
							var_23_0 = iter_23_1
						end

						if iter_23_0 < var_23_1 then
							var_23_1 = iter_23_0
						end

						if var_23_2 < iter_23_1 then
							var_23_2 = iter_23_1
						end

						if var_23_3 < iter_23_0 then
							var_23_3 = iter_23_0
						end
					end
				end
			end

			if var_23_2 < var_23_0 or var_23_3 < var_23_1 then
				return {
					y = 0,
					x = 0,
					w = var_4_657,
					h = var_4_658
				}
			end

			return {
				x = var_23_0,
				y = var_23_1,
				w = var_23_2 - var_23_0 + 1,
				h = var_23_3 - var_23_1 + 1
			}
		end

		for iter_4_33 = 0, 2 do
			local var_4_664 = iter_4_33 * var_4_657
			local var_4_665 = 0

			table.insert(var_4_659, love.graphics.newQuad(var_4_664, var_4_665, var_4_657, var_4_658, var_4_655, var_4_656))
			table.insert(var_4_660, var_4_663(var_4_664, var_4_665))
		end

		for iter_4_34 = 0, 1 do
			local var_4_666 = iter_4_34 * var_4_657
			local var_4_667 = 32

			table.insert(var_4_659, love.graphics.newQuad(var_4_666, var_4_667, var_4_657, var_4_658, var_4_655, var_4_656))
			table.insert(var_4_660, var_4_663(var_4_666, var_4_667))
		end

		var_0_0.projectiles[var_4_651] = {
			travelSpeed = 240,
			frames = 5,
			speed = 0.1,
			dmgMul = 1,
			image = var_4_653,
			imageData = var_4_662,
			frameW = var_4_657,
			frameH = var_4_658,
			quads = var_4_659,
			bounds = var_4_660
		}

		print(string.format("[assets] Loaded projectile %s from %s (%dx%d, frames=5)", var_4_651, var_4_654, var_4_655, var_4_656))
	else
		print("[assets] Missing projectile sprite " .. var_4_651)
	end

	local var_4_668 = "ArcaneCore"
	local var_4_669 = {
		"src/sprites/projectile/ArcaneCore.png",
		"src/sprites/projectile/ArcaneCore.png"
	}
	local var_4_670, var_4_671 = var_0_1(var_4_669)

	if var_4_670 then
		var_4_670:setFilter("nearest", "nearest")

		local var_4_672 = var_4_670:getWidth()
		local var_4_673 = var_4_670:getHeight()
		local var_4_674 = {}

		for iter_4_35 = 0, 2 do
			for iter_4_36 = 0, 4 do
				table.insert(var_4_674, love.graphics.newQuad(iter_4_36 * 16, iter_4_35 * 16, 16, 16, var_4_672, var_4_673))
			end
		end

		if var_0_0.projectiles then
			var_0_0.projectiles[var_4_668] = {
				frameW = 16,
				frames = 15,
				frameH = 16,
				image = var_4_670,
				quads = var_4_674
			}

			print("[assets] Loaded ArcaneCore projectile successfully from tryLoad")
		end
	end

	local var_4_675 = "ArcaneOrb"
	local var_4_676 = {
		"src/sprites/projectile/ArcaneOrb.png",
		"src/sprites/projectile/ArcaneOrb.png"
	}
	local var_4_677, var_4_678 = var_0_1(var_4_676)

	if var_4_677 then
		var_4_677:setFilter("nearest", "nearest")

		local var_4_679 = var_4_677:getWidth()
		local var_4_680 = var_4_677:getHeight()
		local var_4_681 = 16
		local var_4_682 = 16
		local var_4_683 = {}
		local var_4_684 = {}
		local var_4_685, var_4_686 = pcall(love.image.newImageData, var_4_678)

		if not var_4_685 then
			var_4_686 = nil
		end

		local function var_4_687(arg_24_0, arg_24_1)
			if not var_4_686 then
				return {
					y = 0,
					x = 0,
					w = var_4_681,
					h = var_4_682
				}
			end

			local var_24_0 = var_4_681
			local var_24_1 = var_4_682
			local var_24_2 = -1
			local var_24_3 = -1

			for iter_24_0 = 0, var_4_682 - 1 do
				for iter_24_1 = 0, var_4_681 - 1 do
					local var_24_4 = arg_24_0 + iter_24_1
					local var_24_5 = arg_24_1 + iter_24_0

					if var_24_4 < var_4_679 and var_24_5 < var_4_680 then
						local var_24_6, var_24_7, var_24_8, var_24_9 = var_4_686:getPixel(var_24_4, var_24_5)

						if var_24_9 and var_24_9 > 0.05 then
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
			end

			if var_24_2 < var_24_0 or var_24_3 < var_24_1 then
				return {
					y = 0,
					x = 0,
					w = var_4_681,
					h = var_4_682
				}
			end

			return {
				x = var_24_0,
				y = var_24_1,
				w = var_24_2 - var_24_0 + 1,
				h = var_24_3 - var_24_1 + 1
			}
		end

		for iter_4_37 = 0, 4 do
			local var_4_688 = iter_4_37 * var_4_681
			local var_4_689 = 0

			table.insert(var_4_683, love.graphics.newQuad(var_4_688, var_4_689, var_4_681, var_4_682, var_4_679, var_4_680))
			table.insert(var_4_684, var_4_687(var_4_688, var_4_689))
		end

		for iter_4_38 = 0, 1 do
			local var_4_690 = iter_4_38 * var_4_681
			local var_4_691 = 16

			table.insert(var_4_683, love.graphics.newQuad(var_4_690, var_4_691, var_4_681, var_4_682, var_4_679, var_4_680))
			table.insert(var_4_684, var_4_687(var_4_690, var_4_691))
		end

		var_0_0.projectiles[var_4_675] = {
			travelSpeed = 240,
			frames = 7,
			speed = 0.08,
			dmgMul = 1,
			image = var_4_677,
			imageData = var_4_686,
			frameW = var_4_681,
			frameH = var_4_682,
			quads = var_4_683,
			bounds = var_4_684
		}

		print(string.format("[assets] Loaded projectile %s from %s (%dx%d, frames=7)", var_4_675, var_4_678, var_4_679, var_4_680))
	else
		var_0_0.projectilesMeta[var_4_675] = {
			found = false,
			tried = var_4_676,
			used = var_4_678
		}

		print(string.format("[assets] Missing projectile sprite %s", var_4_675))
	end

	local var_4_692 = "ShadowSorcererAttack2"
	local var_4_693 = {
		"src/sprites/projectile/shadowsorcererattack2.png",
		"sprites/projectile/shadowsorcererattack2.png"
	}
	local var_4_694, var_4_695 = var_0_1(var_4_693)

	if var_4_694 then
		var_4_694:setFilter("nearest", "nearest")

		local var_4_696 = var_4_694:getWidth()
		local var_4_697 = var_4_694:getHeight()
		local var_4_698 = 32
		local var_4_699 = 32
		local var_4_700 = {}
		local var_4_701 = {}
		local var_4_702, var_4_703 = pcall(love.image.newImageData, var_4_695)

		if not var_4_702 then
			var_4_703 = nil
		end

		local function var_4_704(arg_25_0, arg_25_1)
			if not var_4_703 then
				return {
					y = 0,
					x = 0,
					w = var_4_698,
					h = var_4_699
				}
			end

			local var_25_0 = var_4_698
			local var_25_1 = var_4_699
			local var_25_2 = -1
			local var_25_3 = -1

			for iter_25_0 = 0, var_4_699 - 1 do
				for iter_25_1 = 0, var_4_698 - 1 do
					local var_25_4 = arg_25_0 + iter_25_1
					local var_25_5 = arg_25_1 + iter_25_0
					local var_25_6, var_25_7, var_25_8, var_25_9 = var_4_703:getPixel(var_25_4, var_25_5)

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
					w = var_4_698,
					h = var_4_699
				}
			end

			return {
				x = var_25_0,
				y = var_25_1,
				w = var_25_2 - var_25_0 + 1,
				h = var_25_3 - var_25_1 + 1
			}
		end

		for iter_4_39 = 0, 2 do
			local var_4_705 = iter_4_39 * var_4_698
			local var_4_706 = 0

			table.insert(var_4_700, love.graphics.newQuad(var_4_705, var_4_706, var_4_698, var_4_699, var_4_696, var_4_697))
			table.insert(var_4_701, var_4_704(var_4_705, var_4_706))
		end

		for iter_4_40 = 0, 1 do
			local var_4_707 = iter_4_40 * var_4_698
			local var_4_708 = 32

			table.insert(var_4_700, love.graphics.newQuad(var_4_707, var_4_708, var_4_698, var_4_699, var_4_696, var_4_697))
			table.insert(var_4_701, var_4_704(var_4_707, var_4_708))
		end

		var_0_0.projectiles[var_4_692] = {
			travelSpeed = 240,
			frames = 5,
			speed = 0.1,
			dmgMul = 1,
			image = var_4_694,
			imageData = var_4_703,
			frameW = var_4_698,
			frameH = var_4_699,
			quads = var_4_700,
			bounds = var_4_701
		}

		print(string.format("[assets] Loaded projectile %s from %s (%dx%d, frames=5)", var_4_692, var_4_695, var_4_696, var_4_697))
	else
		print("[assets] Missing projectile sprite " .. var_4_692)
	end

	var_4_616("WarlordAttackEffect", {
		"src/sprites/projectile/warlordattack.png",
		"sprites/projectile/warlordattack.png"
	}, 4, 0.08, {
		travelSpeed = 0,
		dmgMul = 0
	})

	local var_4_709 = "ElfKnightSword"
	local var_4_710 = {
		"src/sprites/projectile/elfknightsword.png",
		"sprites/projectile/elfknightsword.png"
	}
	local var_4_711, var_4_712 = var_0_1(var_4_710)

	if var_4_711 then
		var_4_711:setFilter("nearest", "nearest")

		local var_4_713 = var_4_711:getWidth()
		local var_4_714 = var_4_711:getHeight()
		local var_4_715 = 32
		local var_4_716 = 32
		local var_4_717 = {}
		local var_4_718 = {}
		local var_4_719, var_4_720 = pcall(love.image.newImageData, var_4_712)

		if not var_4_719 then
			var_4_720 = nil
		end

		local function var_4_721(arg_26_0, arg_26_1)
			if not var_4_720 then
				return {
					y = 0,
					x = 0,
					w = var_4_715,
					h = var_4_716
				}
			end

			local var_26_0 = var_4_715
			local var_26_1 = var_4_716
			local var_26_2 = -1
			local var_26_3 = -1

			for iter_26_0 = 0, var_4_716 - 1 do
				for iter_26_1 = 0, var_4_715 - 1 do
					local var_26_4, var_26_5, var_26_6, var_26_7 = var_4_720:getPixel(arg_26_0 + iter_26_1, arg_26_1 + iter_26_0)

					if var_26_7 and var_26_7 > 0.05 then
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
					w = var_4_715,
					h = var_4_716
				}
			end

			return {
				x = var_26_0,
				y = var_26_1,
				w = var_26_2 - var_26_0 + 1,
				h = var_26_3 - var_26_1 + 1
			}
		end

		for iter_4_41 = 0, 1 do
			for iter_4_42 = 0, 3 do
				local var_4_722 = iter_4_42 * var_4_715
				local var_4_723 = iter_4_41 * var_4_716

				table.insert(var_4_717, love.graphics.newQuad(var_4_722, var_4_723, var_4_715, var_4_716, var_4_713, var_4_714))
				table.insert(var_4_718, var_4_721(var_4_722, var_4_723))
			end
		end

		var_0_0.projectiles[var_4_709] = {
			travelSpeed = 80,
			frames = 8,
			speed = 0.12,
			dmgMul = 1,
			image = var_4_711,
			imageData = var_4_720,
			frameW = var_4_715,
			frameH = var_4_716,
			quads = var_4_717,
			bounds = var_4_718
		}
		var_0_0.projectilesMeta[var_4_709] = {
			found = true,
			used = var_4_712,
			iw = var_4_713,
			ih = var_4_714,
			frameW = var_4_715,
			frameH = var_4_716
		}

		print(string.format("[assets] Loaded projectile %s from %s (%dx%d, frames=8)", var_4_709, var_4_712, var_4_713, var_4_714))
	else
		var_0_0.projectilesMeta[var_4_709] = {
			found = false,
			tried = var_4_710,
			used = var_4_712
		}

		print(string.format("[assets] Missing projectile sprite %s (tried like %s)", var_4_709, var_4_712))
	end

	var_4_616("DarklordSpell", {
		"src/sprites/projectile/darklordspell.png",
		"sprites/projectile/darklordspell.png"
	}, 4, 0.08, {
		travelSpeed = 240,
		dmgMul = 1
	})
	var_4_616("DarkOrbCrash", {
		"src/sprites/projectile/darklordspell.png",
		"sprites/projectile/darklordspell.png"
	}, 4, 0.08, {
		travelSpeed = 240,
		dmgMul = 1
	})
	var_4_616("StormBlade", {
		"src/sprites/projectile/stormblade.png",
		"sprites/projectile/stormblade.png"
	}, 4, 0.12, {
		travelSpeed = 110,
		dmgMul = 1.3
	})
	var_4_616("BladeWave", {
		"src/sprites/projectile/bladewave.png",
		"sprites/projectile/bladewave.png"
	}, 4, 0.14, {
		travelSpeed = 200,
		dmgMul = 1
	})
	var_4_616("BladeWaveFrankenstein", {
		"src/sprites/projectile/bladewavefrankenstein.png",
		"sprites/projectile/bladewavefrankenstein.png"
	}, 4, 0.14, {
		travelSpeed = 200,
		dmgMul = 1
	})
	var_4_616("PiercingThrustProjectile", {
		"src/sprites/projectile/PiercingThrustProjectile.png",
		"sprites/projectile/PiercingThrustProjectile.png"
	}, 4, 0.08, {
		travelSpeed = 150,
		dmgMul = 1.2
	})
	var_4_616("DownStrikeGround", {
		"src/sprites/projectile/DownStrikeprojectile.png",
		"sprites/projectile/DownStrikeprojectile.png"
	}, 3, 0.1, {
		travelSpeed = 0,
		dmgMul = 1
	})
	var_4_616("EarthCrushProjectile", {
		"src/sprites/projectile/EarthCrushProjectile.png",
		"sprites/projectile/EarthCrushProjectile.png"
	}, 6, 0.08, {
		travelSpeed = 0,
		dmgMul = 1.6
	})
	var_4_616("HumanArrow3", {
		"src/sprites/projectile/humanarrow3.png",
		"sprites/projectile/humanarrow3.png"
	}, 2, 0.1, {
		travelSpeed = 240,
		dmgMul = 1
	})
	var_4_616("ElfArrow", {
		"src/sprites/projectile/elfarrow.png",
		"sprites/projectile/elfarrow.png"
	}, 2, 0.1, {
		travelSpeed = 240,
		dmgMul = 1
	})
	var_4_616("ElfArrowShackle", {
		"src/sprites/projectile/elfarrowShackle.png",
		"sprites/projectile/elfarrowShackle.png"
	}, 2, 0.1, {
		travelSpeed = 240,
		dmgMul = 1
	})
	var_4_616("RangerBullet", {
		"src/sprites/projectile/bullet.png",
		"sprites/projectile/bullet.png"
	}, 2, 0.1, {
		travelSpeed = 300,
		dmgMul = 1
	})
	var_4_616("TwinBolt", {
		"src/sprites/projectile/humanarrowmultishot.png",
		"sprites/projectile/humanarrowmultishot.png"
	}, 2, 0.1, {
		travelSpeed = 240,
		dmgMul = 0.8
	})
	var_4_616("TripleShot", {
		"src/sprites/projectile/humanarrowtripleshot3.png",
		"sprites/projectile/humanarrowtripleshot3.png"
	}, 2, 0.1, {
		travelSpeed = 240,
		dmgMul = 1
	})
	var_4_616("PrecisionShot", {
		"src/sprites/projectile/humanarrowprecisionshot.png",
		"sprites/projectile/humanarrowprecisionshot.png"
	}, 2, 0.1, {
		travelSpeed = 260,
		dmgMul = 1.8
	})
	var_4_616("Headshot", {
		"src/sprites/projectile/humanarrowheadshot.png",
		"sprites/projectile/humanarrowheadshot.png"
	}, 2, 0.1, {
		travelSpeed = 280,
		dmgMul = 2
	})
	var_4_616("HealerProjectile", {
		"src/sprites/projectile/healerprojectile.png",
		"sprites/projectile/healerprojectile.png"
	}, 5, 0.1, {
		travelSpeed = 120,
		dmgMul = 1
	})

	local var_4_724 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 4,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 7
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 6
		}
	}

	var_4_37("MiniHorseMan03_hp03", {
		"src/sprites/units/MiniHorseMan/03MiniHorseMan_hp03.png",
		"sprites/units/MiniHorseMan/03MiniHorseMan_hp03.png"
	}, 32, 32, var_4_724)
	var_4_37("엘프기병", {
		"src/sprites/units/MiniHorseMan/03MiniHorseMan_hp03.png",
		"sprites/units/MiniHorseMan/03MiniHorseMan_hp03.png"
	}, 32, 32, var_4_724)
	var_4_37("엘프기병 (Elf Cavalry)", {
		"src/sprites/units/MiniHorseMan/03MiniHorseMan_hp03.png",
		"sprites/units/MiniHorseMan/03MiniHorseMan_hp03.png"
	}, 32, 32, var_4_724)

	local var_4_725 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		fly = {
			speed = 0.12,
			loop = true,
			row = 3,
			frames = 4
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 4,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 7
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 6
		}
	}

	var_4_37("엘프 중기병", {
		"src/sprites/units/MiniHorseMan/03MiniHorseMan_02_01.png",
		"sprites/units/MiniHorseMan/03MiniHorseMan_02_01.png"
	}, 32, 32, var_4_725)

	local var_4_726 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 5
		}
	}

	var_4_37("무법 기병", {
		"src/sprites/units/HorseMan/01Normal/03MiniHorseMan_02_01.png",
		"sprites/units/HorseMan/01Normal/03MiniHorseMan_02_01.png"
	}, 32, 32, var_4_726)

	local var_4_727 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 9
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 9
		}
	}

	var_4_37("해골 중기병", {
		"src/sprites/units/MiniHorseMan/03MiniHorseMan_02_02.png",
		"sprites/units/MiniHorseMan/03MiniHorseMan_02_02.png"
	}, 32, 32, var_4_727)

	local var_4_728 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 6
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("워베어", {
		"src/sprites/units/MiniHorseMan/03MiniHorseMan_01_02.png",
		"sprites/units/MiniHorseMan/03MiniHorseMan_01_02.png"
	}, 32, 32, var_4_728)

	local var_4_729 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 7
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 7
		},
		hit = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 4
		}
	}

	var_4_37("MiniPanther", {
		"src/sprites/units/Summons/MiniPanther.png",
		"sprites/units/Summons/MiniPanther.png"
	}, 40, 32, var_4_729)
	var_4_37("흑표범 (Black Panther)", {
		"src/sprites/units/Summons/MiniPanther.png",
		"sprites/units/Summons/MiniPanther.png"
	}, 40, 32, var_4_729)

	local var_4_730 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 4
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 5
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 5,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 4
		}
	}
	local var_4_731 = {
		"src/sprites/units/Summons/Boar.png",
		"sprites/units/Summons/Boar.png"
	}

	var_4_37("Boar", var_4_731, 32, 32, var_4_730)
	var_4_37("멧돼지 (Boar.png)", var_4_731, 32, 32, var_4_730)

	local var_4_732 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 6
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack2 = {
			speed = 0.08,
			loop = false,
			row = 4,
			frames = 6
		},
		attack = {
			speed = 0.08,
			loop = false,
			row = 5,
			frames = 5
		},
		attack3 = {
			speed = 0.06,
			loop = false,
			row = 6,
			frames = 10
		},
		hit = {
			speed = 0.12,
			loop = false,
			row = 7,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 8,
			frames = 4
		}
	}
	local var_4_733 = {
		"src/sprites/units/Summons/Bear.png",
		"sprites/units/Summons/Bear.png"
	}

	var_4_37("Bear", var_4_733, 32, 32, var_4_732)
	var_4_37("곰 (Bear)", var_4_733, 32, 32, var_4_732)

	local var_4_734 = {
		idle = {
			speed = 0.15,
			loop = true,
			row = 1,
			frames = 4
		},
		walk = {
			speed = 0.1,
			loop = true,
			row = 2,
			frames = 8
		},
		jump = {
			speed = 0.12,
			loop = false,
			row = 3,
			frames = 3
		},
		attack = {
			speed = 0.06,
			loop = false,
			row = 4,
			frames = 10
		},
		attack2 = {
			speed = 0.06,
			loop = false,
			row = 5,
			frames = 17
		},
		hit = {
			speed = 0.15,
			loop = false,
			row = 6,
			frames = 2
		},
		death = {
			speed = 0.15,
			loop = false,
			row = 7,
			frames = 5
		}
	}

	var_4_37("MiniColossus", {
		"src/sprites/units/Summons/MiniColossus.png",
		"sprites/units/Summons/MiniColossus.png"
	}, 40, 32, var_4_734)
	var_4_37("거신 (Colossus)", {
		"src/sprites/units/Summons/MiniColossus.png",
		"sprites/units/Summons/MiniColossus.png"
	}, 40, 32, var_4_734)
	var_4_616("ExplosionEffect", {
		"src/sprites/projectile/explosioneffect2.png",
		"sprites/projectile/explosioneffect2.png"
	}, 13, 0.045, {})

	var_0_0.audio = {}
	var_0_0.audioBaseGain = {}

	if love and love.filesystem and love.filesystem.getInfo and love.filesystem.getInfo("web.flag", "file") then
		print("[assets] Web build: skipping audio preload")

		if var_4_0 then
			var_4_0()
		end

		return var_0_0
	end

	local var_4_735 = {
		slashAttackArcher1 = 1.3,
		hitMetalFlesh = 0.7,
		slashAttackSword1 = 1.3,
		statUp = 1.3,
		holyRay = 0.4,
		unitLift = 2.6,
		unitHover = 1.6,
		unitEntering = 0.8,
		winprism = 1.1,
		winlegend = 1.1,
		winrare = 1.2,
		win = 1.2,
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
		unitAbsorption = 0.7,
		unitClassUp = 0.55,
		stoneSlotMod = 1.5,
		battleDefeat = 0.3,
		battleVictory = 0.4
	}
	local var_4_736 = {
		slashAttackArcher1 = 1,
		hitMetalFlesh = 1,
		slashAttackSword1 = 1,
		statUp = 1,
		holyRay = 1,
		unitLift = 3.6,
		unitHover = 1.5,
		unitEntering = 1.1,
		winprism = 0.7,
		winlegend = 0.7,
		winrare = 0.8,
		win = 0.85,
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
		stoneSlotMod = 1.5
	}

	local function var_4_737(arg_27_0, arg_27_1)
		if not arg_27_0 or not arg_27_1 or arg_27_1 == 1 then
			return arg_27_0
		end

		local var_27_0 = arg_27_0:getSampleCount()
		local var_27_1 = arg_27_0:getChannelCount()

		for iter_27_0 = 0, var_27_0 - 1 do
			for iter_27_1 = 1, var_27_1 do
				local var_27_2 = arg_27_0:getSample(iter_27_0, iter_27_1)
				local var_27_3 = math.max(-1, math.min(1, var_27_2 * arg_27_1))

				arg_27_0:setSample(iter_27_0, iter_27_1, var_27_3)
			end
		end

		return arg_27_0
	end

	local function var_4_738(arg_28_0, arg_28_1)
		if not arg_28_0 or not arg_28_1 then
			return arg_28_0
		end

		local var_28_0 = arg_28_0:getSampleRate()
		local var_28_1 = arg_28_0:getChannelCount()
		local var_28_2 = arg_28_0:getBitDepth()
		local var_28_3 = math.max(1, math.floor(var_28_0 * arg_28_1))

		if var_28_3 >= arg_28_0:getSampleCount() then
			return arg_28_0
		end

		local var_28_4 = love.sound.newSoundData(var_28_3, var_28_0, var_28_2, var_28_1)

		for iter_28_0 = 0, var_28_3 - 1 do
			for iter_28_1 = 1, var_28_1 do
				var_28_4:setSample(iter_28_0, iter_28_1, arg_28_0:getSample(iter_28_0, iter_28_1))
			end
		end

		return var_28_4
	end

	local function var_4_739(arg_29_0, arg_29_1)
		if love.sound and love.sound.newSoundData then
			local var_29_0, var_29_1 = pcall(love.sound.newSoundData, arg_29_0)

			if var_29_0 and var_29_1 then
				var_4_737(var_29_1, arg_29_1)

				local var_29_2, var_29_3 = pcall(love.audio.newSource, var_29_1, "static")

				if var_29_2 and var_29_3 then
					return var_29_3
				end
			end
		end

		local var_29_4, var_29_5 = pcall(love.audio.newSource, arg_29_0, "static")

		if var_29_4 and var_29_5 then
			return var_29_5
		end

		return nil
	end

	local function var_4_740(arg_30_0, arg_30_1, arg_30_2)
		if love.sound and love.sound.newSoundData then
			local var_30_0, var_30_1 = pcall(love.sound.newSoundData, arg_30_0)

			if var_30_0 and var_30_1 then
				local var_30_2 = var_4_738(var_30_1, arg_30_2)

				var_4_737(var_30_2, arg_30_1)

				local var_30_3, var_30_4 = pcall(love.audio.newSource, var_30_2, "static")

				if var_30_3 and var_30_4 then
					return var_30_4
				end
			end
		end

		local var_30_5, var_30_6 = pcall(love.audio.newSource, arg_30_0, "static")

		if var_30_5 and var_30_6 then
			return var_30_6
		end

		return nil
	end

	local function var_4_741(arg_31_0, arg_31_1)
		if not arg_31_1 or not arg_31_1.setVolume then
			return
		end

		local var_31_0 = var_4_735[arg_31_0]

		if var_31_0 == nil then
			var_31_0 = var_4_735._default or 1
		end

		var_0_0.audioBaseGain[arg_31_0] = var_31_0

		arg_31_1:setVolume(var_31_0)
	end

	local function var_4_742(arg_32_0, arg_32_1, arg_32_2)
		local var_32_0 = var_4_736[arg_32_0]

		if var_32_0 == nil then
			var_32_0 = var_4_736._default or 1
		end

		local var_32_1 = var_4_739(arg_32_1, var_32_0)

		if not var_32_1 and arg_32_2 then
			var_32_1 = var_4_739(arg_32_2, var_32_0)

			if var_32_1 then
				arg_32_1 = arg_32_2
			end
		end

		if var_32_1 then
			var_0_0.audio[arg_32_0] = var_32_1

			var_4_741(arg_32_0, var_32_1)
			print("[assets] Loaded audio " .. arg_32_0 .. " from " .. arg_32_1)
		else
			print("[assets] Failed to load audio " .. arg_32_0)
		end
	end

	local function var_4_743(arg_33_0, arg_33_1, arg_33_2, arg_33_3)
		local var_33_0 = var_4_736[arg_33_0]

		if var_33_0 == nil then
			var_33_0 = var_4_736._default or 1
		end

		local var_33_1 = var_4_740(arg_33_1, var_33_0, arg_33_3)

		if not var_33_1 and arg_33_2 then
			var_33_1 = var_4_740(arg_33_2, var_33_0, arg_33_3)

			if var_33_1 then
				arg_33_1 = arg_33_2
			end
		end

		if var_33_1 then
			var_0_0.audio[arg_33_0] = var_33_1

			var_4_741(arg_33_0, var_33_1)
			print("[assets] Loaded audio " .. arg_33_0 .. " from " .. arg_33_1)
		else
			print("[assets] Failed to load audio " .. arg_33_0)
		end
	end

	var_4_742("paperHover", "src/audio/ui/paperhover.wav", "audio/ui/paperhover.wav")
	var_4_742("buttonHover", "src/audio/ui/buttonhover1.wav", "audio/ui/buttonhover1.wav")
	var_4_742("buttonClick", "src/audio/ui/buttonclick1.wav", "audio/ui/buttonclick1.wav")
	var_4_742("woodDrop", "src/audio/ui/wooddrop.wav", "audio/ui/wooddrop.wav")
	var_4_743("woodDropUp", "src/audio/ui/wooddrop.wav", "audio/ui/wooddrop.wav", 0.3)
	var_4_742("risingHeavyHit", "src/audio/ui/risingheavyhit.wav", "audio/ui/risingheavyhit.wav")
	var_4_742("battleStart", "src/audio/ui/battlestart.mp3", "audio/ui/battlestart.mp3")
	var_4_742("leverSound", "src/audio/slotmachine/leversound.wav", "audio/slotmachine/leversound.wav")
	var_4_742("rolling", "src/audio/slotmachine/rolling.wav", "audio/slotmachine/rolling.wav")
	var_4_742("reelStop", "src/audio/slotmachine/reelstop.wav", "audio/slotmachine/reelstop.wav")
	var_4_742("win", "src/audio/slotmachine/win.wav", "audio/slotmachine/win.wav")
	var_4_742("winrare", "src/audio/slotmachine/winrare.wav", "audio/slotmachine/winrare.wav")
	var_4_742("winlegend", "src/audio/slotmachine/winlegend.wav", "audio/slotmachine/winlegend.wav")
	var_4_742("winprism", "src/audio/slotmachine/winprism.wav", "audio/slotmachine/winprism.wav")
	var_4_742("unitEntering", "src/audio/battlefield/footstep/unitentering.wav", "audio/battlefield/footstep/unitentering.wav")
	var_4_742("rainbow", "src/audio/battlefield/footstep/rainbow.wav", "audio/battlefield/footstep/rainbow.wav")
	var_4_742("unitHover", "src/audio/battlefield/units/unithover.wav", "audio/battlefield/units/unithover.wav")
	var_4_742("unitLift", "src/audio/battlefield/footstep/drop.ogg", "audio/battlefield/footstep/drop.ogg")
	var_4_742("holyRay", "src/audio/battlefield/units/holy.wav", "audio/battlefield/units/holy.wav")
	var_4_742("unitAbsorption", "src/audio/battlefield/units/unitabsorbption.wav", "audio/battlefield/units/unitabsorbption.wav")
	var_4_742("unitClassUp", "src/audio/battlefield/units/unitclassup.wav", "audio/battlefield/units/unitclassup.wav")
	var_4_742("statUp", "src/audio/battlefield/units/stateup.wav", "audio/battlefield/units/stateup.wav")
	var_4_742("slashAttackSword1", "src/audio/battlefield/attacks/slashattack/Slash_Attack_Sword_1.wav", "audio/battlefield/attacks/slashattack/Slash_Attack_Sword_1.wav")
	var_4_742("hitMetalFlesh", "src/audio/battlefield/attacks/hit/Hit_Metal_on_leather.wav", "audio/battlefield/attacks/hit/Hit_Metal_on_leather.wav")
	var_4_742("slashAttackArcher1", "src/audio/battlefield/attacks/slashattack/Slash_Attack_Archer_1.wav", "audio/battlefield/attacks/slashattack/Slash_Attack_Archer_1.wav")
	var_4_742("battleVictory", "src/audio/battlefield/footstep/victory.wav", "audio/battlefield/footstep/victory.wav")
	var_4_742("battleDefeat", "src/audio/battlefield/footstep/defeat.wav", "audio/battlefield/footstep/defeat.wav")
	var_4_742("stoneSlotMod", "src/audio/slotmachine/stoneslotmod.wav", "audio/slotmachine/stoneslotmod.wav")

	local var_4_744, var_4_745 = pcall(require, "src.audio.procedural_audio")

	if var_4_744 and var_4_745 and var_4_745.loadProceduralAudio then
		var_4_745.loadProceduralAudio(var_0_0.audio)
	end

	if var_4_0 then
		var_4_0()
	end

	return var_0_0
end

return var_0_0
