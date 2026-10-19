local var_0_0 = {
	unitSprites = {
		{
			frameH = 48,
			frameW = 48,
			classCardBodyHeight = 32,
			classCardBodyWidth = 32,
			pixelScaleBase = 32,
			names = {
				"도미니온",
				"Dominion",
				"도미니온 (Dominion)"
			},
			paths = {
				"src/sprites/units/PrinceMan/05Prism/03PrismPrinceMan_01_01.png"
			},
			bodyBounds = {
				h = 18,
				w = 10,
				y = 24,
				x = 19
			},
			animations = {
				idle = {
					speed = 0.2,
					frames = 6,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.15,
					frames = 6,
					y = 48,
					loop = true
				},
				attack = {
					speed = 0.085,
					frames = 6,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.12,
					frames = 9,
					y = 144,
					loop = false
				},
				death = {
					speed = 0.2,
					frames = 5,
					y = 192,
					loop = false
				}
			}
		},
		{
			frameH = 40,
			frameW = 40,
			classCardBodyHeight = 32,
			classCardBodyWidth = 32,
			pixelScaleBase = 32,
			names = {
				"대천사",
				"Archangel",
				"대천사 (Archangel)"
			},
			paths = {
				"src/sprites/units/PrinceMan/05Prism/02PrismPrinceMan_01.png"
			},
			bodyBounds = {
				h = 16,
				w = 10,
				y = 19,
				x = 15
			},
			animations = {
				idle = {
					speed = 0.2,
					frames = 6,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.15,
					frames = 6,
					y = 40,
					loop = true
				},
				attack = {
					speed = 0.085,
					frames = 6,
					y = 80,
					loop = false
				},
				attack2 = {
					speed = 0.12,
					frames = 9,
					y = 120,
					loop = false
				},
				hit = {
					speed = 0.16,
					frames = 2,
					y = 160,
					loop = false
				},
				death = {
					speed = 0.2,
					frames = 5,
					y = 200,
					loop = false
				}
			}
		},
		{
			frameH = 48,
			frameW = 48,
			classCardBodyHeight = 32,
			classCardBodyWidth = 32,
			pixelScaleBase = 32,
			names = {
				"파멸의 천사",
				"Angel of Ruin",
				"파멸의 천사 (Angel of Ruin)"
			},
			paths = {
				"src/sprites/units/PrinceMan/05Prism/03PrismPrinceMan_02_01.png"
			},
			bodyBounds = {
				h = 18,
				w = 11,
				y = 24,
				x = 19
			},
			animations = {
				idle = {
					speed = 0.2,
					frames = 6,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.15,
					frames = 6,
					y = 48,
					loop = true
				},
				attack = {
					speed = 0.085,
					frames = 6,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.12,
					frames = 12,
					y = 144,
					loop = false
				},
				death = {
					speed = 0.2,
					frames = 5,
					y = 192,
					loop = false
				}
			}
		},
		{
			frameH = 40,
			frameW = 40,
			classCardBodyHeight = 32,
			classCardBodyWidth = 32,
			pixelScaleBase = 32,
			names = {
				"타락천사",
				"Fallen Angel",
				"타락천사 (Fallen Angel)"
			},
			paths = {
				"src/sprites/units/PrinceMan/05Prism/02PrismPrinceMan_02.png"
			},
			bodyBounds = {
				h = 16,
				w = 10,
				y = 19,
				x = 15
			},
			animations = {
				idle = {
					speed = 0.2,
					frames = 6,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.15,
					frames = 6,
					y = 40,
					loop = true
				},
				attack = {
					speed = 0.085,
					frames = 6,
					y = 80,
					loop = false
				},
				attack2 = {
					speed = 0.12,
					frames = 12,
					y = 120,
					loop = false
				},
				death = {
					speed = 0.2,
					frames = 5,
					y = 160,
					loop = false
				}
			}
		},
		{
			frameH = 40,
			frameW = 40,
			classCardBodyHeight = 32,
			classCardBodyWidth = 32,
			pixelScaleBase = 32,
			names = {
				"천사",
				"Angel",
				"천사 (Angel)"
			},
			paths = {
				"src/sprites/units/PrinceMan/05Prism/01PrismPrinceMan.png"
			},
			bodyBounds = {
				h = 16,
				w = 9,
				y = 19,
				x = 15
			},
			animations = {
				idle = {
					speed = 0.2,
					frames = 6,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.15,
					frames = 6,
					y = 40,
					loop = true
				},
				attack = {
					speed = 0.085,
					frames = 6,
					y = 80,
					loop = false
				},
				hit = {
					speed = 0.16,
					frames = 2,
					y = 120,
					loop = false
				},
				death = {
					speed = 0.2,
					frames = 5,
					y = 160,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"크로노워커",
				"Chrono Walker",
				"크로노워커 (Chrono Walker)"
			},
			paths = {
				"src/sprites/units/HorseMan/05Prism/03PrismHorseMan_02_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 9,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"페이즈",
				"Phase",
				"페이즈 (Phase)"
			},
			paths = {
				"src/sprites/units/HorseMan/05Prism/02PrismHorseMan_02.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 9,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"숲의 심장",
				"Wildheart",
				"숲의 심장 (Wildheart)"
			},
			paths = {
				"src/sprites/units/HorseMan/05Prism/03PrismHorseMan_01_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 7,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"실반",
				"Sylvan",
				"실반 (Sylvan)"
			},
			paths = {
				"src/sprites/units/HorseMan/05Prism/02PrismHorseMan_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 6,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"환수기병",
				"Beast Cavalry",
				"환수기병 (Beast Cavalry)"
			},
			paths = {
				"src/sprites/units/HorseMan/05Prism/01PrismHorseMan.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 64,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 96,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"망자 검병",
				"Undead Swordman",
				"망자 검병 (Undead Swordman)"
			},
			paths = {
				"src/sprites/units/Mage/05Prism/03PrismMage_02_01S2.png"
			},
			animations = {
				spawn = {
					speed = 0.1,
					frames = 9,
					y = 0,
					loop = false
				},
				idle = {
					speed = 0.15,
					frames = 4,
					y = 32,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 64,
					loop = true
				},
				up = {
					speed = 0.1,
					frames = 6,
					y = 96,
					loop = false
				},
				down = {
					speed = 0.1,
					frames = 5,
					y = 128,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 4,
					y = 160,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 6,
					y = 192,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 12,
					y = 224,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 256,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 4,
					y = 288,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"망자 도살자",
				"Undead Butcher",
				"망자 도살자 (Undead Butcher)"
			},
			paths = {
				"src/sprites/units/Mage/05Prism/03PrismMage_02_01S1.png"
			},
			animations = {
				spawn = {
					speed = 0.1,
					frames = 12,
					y = 0,
					loop = false
				},
				idle = {
					speed = 0.15,
					frames = 4,
					y = 32,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 64,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 96,
					loop = false
				},
				up = {
					speed = 0.1,
					frames = 8,
					y = 128,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 6,
					y = 160,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 192,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 4,
					y = 224,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"언데드 흉물",
				"Undead Abomination",
				"언데드 흉물 (Undead Abomination)"
			},
			paths = {
				"src/sprites/units/Mage/05Prism/03PrismMage_02_01S3.png"
			},
			animations = {
				spawn = {
					speed = 0.1,
					frames = 11,
					y = 0,
					loop = false
				},
				idle = {
					speed = 0.15,
					frames = 4,
					y = 32,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 64,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 4,
					y = 96,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 7,
					y = 128,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 160,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 8,
					y = 192,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 224,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 256,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"언데드 거한",
				"Undead Brute",
				"언데드 거한 (Undead Brute)"
			},
			paths = {
				"src/sprites/units/Mage/05Prism/02PrismMage_02S3.png"
			},
			animations = {
				spawn = {
					speed = 0.1,
					frames = 11,
					y = 0,
					loop = false
				},
				idle = {
					speed = 0.15,
					frames = 4,
					y = 32,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 64,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 4,
					y = 96,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 7,
					y = 128,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 160,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 8,
					y = 192,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 224,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 256,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"부패자",
				"Rotter",
				"부패자 (Rotter)"
			},
			paths = {
				"src/sprites/units/Mage/05Prism/02PrismMage_02S2.png"
			},
			animations = {
				spawn = {
					speed = 0.1,
					frames = 8,
					y = 0,
					loop = false
				},
				idle = {
					speed = 0.15,
					frames = 4,
					y = 32,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 64,
					loop = true
				},
				down = {
					speed = 0.1,
					frames = 6,
					y = 96,
					loop = false
				},
				up = {
					speed = 0.1,
					frames = 4,
					y = 128,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 4,
					y = 160,
					loop = false
				},
				bite = {
					speed = 0.08,
					frames = 6,
					y = 192,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 224,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 4,
					y = 256,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"망자",
				"Undead",
				"망자 (Undead)"
			},
			paths = {
				"src/sprites/units/Mage/05Prism/02PrismMage_02S1.png"
			},
			animations = {
				spawn = {
					speed = 0.1,
					frames = 9,
					y = 0,
					loop = false
				},
				idle = {
					speed = 0.15,
					frames = 4,
					y = 32,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 64,
					loop = true
				},
				down = {
					speed = 0.1,
					frames = 6,
					y = 96,
					loop = false
				},
				up = {
					speed = 0.1,
					frames = 5,
					y = 128,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 4,
					y = 160,
					loop = false
				},
				bite = {
					speed = 0.08,
					frames = 6,
					y = 192,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 224,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 4,
					y = 256,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"예언자",
				"Oracle",
				"예언자 (Oracle)"
			},
			paths = {
				"src/sprites/units/Mage/05Prism/03PrismMage_01_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 6,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 10,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 7,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"예지술사",
				"Diviner",
				"예지술사 (Diviner)"
			},
			paths = {
				"src/sprites/units/Mage/05Prism/02PrismMage_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 6,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 8,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 7,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 40,
			frameW = 40,
			pixelScaleBase = 32,
			classCardBodyHeight = 32,
			classCardBodyWidth = 32,
			names = {
				"리치로드",
				"Lich Lord",
				"리치로드 (Lich Lord)"
			},
			paths = {
				"src/sprites/units/Mage/05Prism/03PrismMage_02_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 5,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 40,
					loop = true
				},
				attack4 = {
					speed = 0.08,
					frames = 16,
					y = 80,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 15,
					y = 120,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 11,
					y = 160,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 13,
					y = 200,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 3,
					y = 240,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 13,
					y = 280,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"리치",
				"Lich",
				"리치 (Lich)"
			},
			paths = {
				"src/sprites/units/Mage/05Prism/02PrismMage_02.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack3 = {
					speed = 0.08,
					frames = 7,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 8,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 6,
					y = 128,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 3,
					y = 160,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 7,
					y = 192,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"금단술사",
				"Forbidden Mage",
				"금단술사 (Forbidden Mage)"
			},
			paths = {
				"src/sprites/units/Mage/05Prism/01PrismMage.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 6,
					y = 64,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 7,
					y = 96,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 64,
			classCardBodyHeight = 32,
			classCardBodyWidth = 32,
			names = {
				"랜스마스터",
				"Lance Master",
				"랜스마스터 (Lance Master)"
			},
			paths = {
				"src/sprites/units/SpearMan/05Prism/03PrismSpearMan_02_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 8,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 9,
					y = 96,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 5,
					y = 128,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 160,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"발키리",
				"Valkyrie",
				"발키리 (Valkyrie)"
			},
			paths = {
				"src/sprites/units/SpearMan/05Prism/03PrismSpearMan_01_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 8,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 8,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"창술사",
				"Spear Adept",
				"창술사 (Spear Adept)"
			},
			paths = {
				"src/sprites/units/SpearMan/05Prism/02PrismSpearMan_02.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 8,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 8,
					y = 96,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 5,
					y = 128,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 160,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"천공병",
				"Sky Spearman",
				"천공병 (Sky Spearman)"
			},
			paths = {
				"src/sprites/units/SpearMan/05Prism/02PrismSpearMan_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 8,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 8,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"랜서",
				"Lancer",
				"랜서 (Lancer)"
			},
			paths = {
				"src/sprites/units/SpearMan/05Prism/01PrismSpearMan.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 8,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 14,
					y = 128,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 7,
					y = 160,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 192,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 224,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"이클립스",
				"Eclipse",
				"이클립스 (Eclipse)"
			},
			paths = {
				"src/sprites/units/ArcherMan/05Prism/03PrismArcherMan_02_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 6,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 8,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 4,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 40,
			frameW = 40,
			pixelScaleBase = 32,
			classCardBodyHeight = 32,
			classCardBodyWidth = 32,
			names = {
				"세라프",
				"Seraph",
				"세라프 (Seraph)"
			},
			paths = {
				"src/sprites/units/ArcherMan/05Prism/03PrismArcherMan_01_01.png"
			},
			animations = {
				idle = {
					speed = 0.28,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.14,
					frames = 7,
					y = 40,
					loop = true
				},
				attack = {
					speed = 0.11,
					frames = 10,
					y = 80,
					loop = false
				},
				attack2 = {
					speed = 0.11,
					frames = 11,
					y = 120,
					loop = false
				},
				death = {
					speed = 0.21,
					frames = 4,
					y = 160,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"은빛사수",
				"Silver Sniper",
				"은빛사수 (Silver Sniper)"
			},
			paths = {
				"src/sprites/units/ArcherMan/05Prism/02PrismArcherMan_02.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 6,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 8,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 4,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"큐피드",
				"Cupid",
				"큐피드 (Cupid)"
			},
			paths = {
				"src/sprites/units/ArcherMan/05Prism/02PrismArcherMan_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 10,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 11,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 4,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"명궁",
				"Sharpshooter",
				"명궁 (Sharpshooter)"
			},
			paths = {
				"src/sprites/units/ArcherMan/05Prism/01PrismArcherMan.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 10,
					y = 64,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 4,
					y = 96,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"성배기사",
				"Grail Knight",
				"성배기사 (Grail Knight)"
			},
			paths = {
				"src/sprites/units/SwordMan/05Prism/03PrismSwordMan_02_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 6,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 7,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"팬텀",
				"Phantom",
				"팬텀 (Phantom)"
			},
			paths = {
				"src/sprites/units/SwordMan/05Prism/03PrismSwordMan_01_01.png"
			},
			animations = {
				idle = {
					speed = 0.1875,
					frames = 5,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.125,
					frames = 5,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.1,
					frames = 8,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.1,
					frames = 10,
					y = 96,
					loop = false
				},
				attack3 = {
					speed = 0.1,
					frames = 10,
					y = 128,
					loop = false
				},
				death = {
					speed = 0.1875,
					frames = 6,
					y = 160,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"백기사",
				"White Knight",
				"백기사 (White Knight)"
			},
			paths = {
				"src/sprites/units/SwordMan/05Prism/02PrismSwordMan_02.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 6,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 7,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"듀라한",
				"Dullahan",
				"듀라한 (Dullahan)"
			},
			paths = {
				"src/sprites/units/SwordMan/05Prism/02PrismSwordMan_01.png"
			},
			animations = {
				idle = {
					speed = 0.1875,
					frames = 5,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.125,
					frames = 5,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.1,
					frames = 8,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.1,
					frames = 10,
					y = 96,
					loop = false
				},
				attack3 = {
					speed = 0.1,
					frames = 10,
					y = 128,
					loop = false
				},
				death = {
					speed = 0.1875,
					frames = 6,
					y = 160,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"슬레이어",
				"Slayer",
				"슬레이어 (Slayer)"
			},
			paths = {
				"src/sprites/units/SwordMan/05Prism/01PrismSwordMan.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 64,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 96,
					loop = false
				}
			}
		},
		{
			frameH = 40,
			frameW = 40,
			names = {
				"소울리퍼",
				"Soul Reaper",
				"소울리퍼 (Soul Reaper)"
			},
			paths = {
				"src/sprites/units/PrinceMan/04Legend/03LegendPrinceMan_02_01.png"
			},
			bodyBounds = {
				h = 29,
				w = 18,
				y = 8,
				x = 11
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 5,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 40,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 9,
					y = 80,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 9,
					y = 120,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 11,
					y = 160,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 10,
					y = 200,
					loop = false
				}
			},
			animationAliases = {
				attack1 = "attack"
			}
		},
		{
			frameH = 48,
			frameW = 48,
			classCardBodyHeight = 32,
			classCardBodyWidth = 32,
			names = {
				"CrownRevenant"
			},
			paths = {
				"src/sprites/units/PrinceMan/04Legend/03LegendPrinceMan_01_01.png"
			},
			bodyBounds = {
				h = 31,
				w = 14,
				y = 16,
				x = 16
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 8,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 8,
					y = 48,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 8,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 12,
					y = 144,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 192,
					loop = false
				}
			}
		},
		{
			frameH = 40,
			frameW = 40,
			names = {
				"리퍼",
				"Reaper",
				"리퍼 (Reaper)"
			},
			paths = {
				"src/sprites/units/PrinceMan/04Legend/02LegendPrinceMan_02.png"
			},
			bodyBounds = {
				h = 20,
				w = 13,
				y = 19,
				x = 13
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 5,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 40,
					loop = true
				},
				attack1 = {
					speed = 0.08,
					frames = 9,
					y = 80,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 9,
					y = 120,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 12,
					y = 160,
					loop = false
				},
				attack4 = {
					speed = 0.08,
					frames = 10,
					y = 200,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 3,
					y = 240,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 10,
					y = 280,
					loop = false
				}
			},
			animationAliases = {
				attack = "attack1"
			}
		},
		{
			frameH = 48,
			frameW = 48,
			classCardBodyHeight = 32,
			classCardBodyWidth = 32,
			names = {
				"LegendarySpecter",
				"Specter",
				"스펙터 (Specter)"
			},
			paths = {
				"src/sprites/units/PrinceMan/04Legend/02LegendPrinceMan_01.png"
			},
			bodyBounds = {
				h = 26,
				w = 13,
				y = 21,
				x = 17
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 8,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 8,
					y = 48,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 96,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 9,
					y = 144,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 12,
					y = 192,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 240,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 7,
					y = 288,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"셰이드",
				"Shade",
				"셰이드 (Shade)"
			},
			paths = {
				"src/sprites/units/PrinceMan/04Legend/01LegendPrinceMan.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 6,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 8,
					y = 64,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 7,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"아포칼립스",
				"Apocalypse",
				"아포칼립스 (Apocalypse)"
			},
			paths = {
				"src/sprites/units/HorseMan/04Legend/03LegendHorseMan_01_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 9,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 9,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 8,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"초승달 여왕",
				"Crescent Queen",
				"초승달 여왕 (Crescent Queen)"
			},
			paths = {
				"src/sprites/units/HorseMan/04Legend/03LegendHorseMan_02_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 8,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 7,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"월광사제",
				"Moon Priestess",
				"월광사제 (Moon Priestess)"
			},
			paths = {
				"src/sprites/units/HorseMan/04Legend/02LegendHorseMan_02.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 4,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 8,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 7,
					y = 128,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 7,
					y = 160,
					loop = false
				},
				attack4 = {
					speed = 0.08,
					frames = 7,
					y = 192,
					loop = false
				},
				attack5 = {
					speed = 0.08,
					frames = 8,
					y = 224,
					loop = false
				},
				attack6 = {
					speed = 0.08,
					frames = 7,
					y = 256,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 288,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 320,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"나이트메어",
				"Nightmare",
				"나이트메어 (Nightmare)"
			},
			paths = {
				"src/sprites/units/HorseMan/04Legend/02LegendHorseMan_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 9,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 9,
					y = 128,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 9,
					y = 160,
					loop = false
				},
				attack4 = {
					speed = 0.08,
					frames = 10,
					y = 192,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 224,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 9,
					y = 256,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"사령기병",
				"Dread Cavalry",
				"사령기병 (Dread Cavalry)"
			},
			paths = {
				"src/sprites/units/HorseMan/04Legend/01LegendHorseMan.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 9,
					y = 96,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 128,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 9,
					y = 160,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"워록",
				"Warlock",
				"워록 (Warlock)"
			},
			paths = {
				"src/sprites/units/Mage/04Legend/03LegendMage_02_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack5 = {
					speed = 0.08,
					frames = 5,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 8,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"아크메이지",
				"Archmage",
				"아크메이지 (Archmage)"
			},
			paths = {
				"src/sprites/units/Mage/04Legend/03LegendMage_01_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.12,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 10,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 7,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"흑마법사",
				"Dark Mage",
				"흑마법사 (Dark Mage)"
			},
			paths = {
				"src/sprites/units/Mage/04Legend/02LegendMage_02.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack4 = {
					speed = 0.08,
					frames = 5,
					y = 96,
					loop = false
				},
				attack = {
					speed = 0.12,
					frames = 7,
					y = 128,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 160,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 8,
					y = 192,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"심연술사",
				"Abyss Mage",
				"심연술사 (Abyss Mage)"
			},
			paths = {
				"src/sprites/units/Mage/04Legend/02LegendMage_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 10,
					y = 128,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 160,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 7,
					y = 192,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"해골술사",
				"Bone Mage",
				"해골술사 (Bone Mage)"
			},
			paths = {
				"src/sprites/units/Mage/04Legend/01LegendMage.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 64,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 7,
					y = 96,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"SpearRevenant",
				"Revenant",
				"레버넌트 (Revenant)"
			},
			paths = {
				"src/sprites/units/SpearMan/04Legend/03LegendSpearMan_02_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 6,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 4,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 48,
			shadowFromIdleFoot = true,
			classCardBodyWidth = 32,
			names = {
				"처형자",
				"Executioner",
				"처형자 (Executioner)"
			},
			paths = {
				"src/sprites/units/SpearMan/04Legend/03LegendSpearMan_01_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 6,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 6,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 7,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"망령병",
				"Wraith Spearman",
				"망령병 (Wraith Spearman)"
			},
			paths = {
				"src/sprites/units/SpearMan/04Legend/02LegendSpearMan_02.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 6,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 4,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"흑위병",
				"Black Guard",
				"흑위병 (Black Guard)"
			},
			paths = {
				"src/sprites/units/SpearMan/04Legend/02LegendSpearMan_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 6,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 6,
					y = 128,
					loop = false
				},
				shield = {
					speed = 0.12,
					frames = 6,
					y = 160,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 192,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 7,
					y = 224,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"백골 창병",
				"Bone Spearman",
				"백골 창병 (Bone Spearman)"
			},
			paths = {
				"src/sprites/units/SpearMan/04Legend/01LegendSpearMan.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 10,
					y = 64,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 96,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"미라지",
				"Mirage",
				"미라지 (Mirage)"
			},
			paths = {
				"src/sprites/units/ArcherMan/04Legend/03LegendArcherMan_02_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 10,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 10,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"레이븐",
				"Raven",
				"레이븐 (Raven)"
			},
			paths = {
				"src/sprites/units/ArcherMan/04Legend/03LegendArcherMan_01_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 12,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 10,
					y = 128,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 14,
					y = 160,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 192,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 7,
					y = 224,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"환영사수",
				"Illusion Archer",
				"환영사수 (Illusion Archer)"
			},
			paths = {
				"src/sprites/units/ArcherMan/04Legend/02LegendArcherMan_02.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 10,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 10,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"암흑사수",
				"Dark Archer",
				"암흑사수 (Dark Archer)"
			},
			paths = {
				"src/sprites/units/ArcherMan/04Legend/02LegendArcherMan_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 12,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 10,
					y = 128,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 14,
					y = 160,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 192,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 7,
					y = 224,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"해골궁수",
				"Skeleton Archer",
				"해골궁수 (Skeleton Archer)"
			},
			paths = {
				"src/sprites/units/ArcherMan/04Legend/01LegendArcherMan.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 10,
					y = 64,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 96,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"빙결여제",
				"Frost Empress",
				"빙결여제 (Frost Empress)"
			},
			paths = {
				"src/sprites/units/PrinceMan/03Rare/03RarePrinceMan_02_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 8,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"서리칼날",
				"Frostblade",
				"서리칼날 (Frostblade)"
			},
			paths = {
				"src/sprites/units/PrinceMan/03Rare/02RarePrinceMan_02.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 10,
					y = 128,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 8,
					y = 160,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 192,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 224,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"심판관",
				"Arbiter",
				"심판관 (Arbiter)"
			},
			paths = {
				"src/sprites/units/PrinceMan/03Rare/03RarePrinceMan_01_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				shout = {
					speed = 0.12,
					frames = 7,
					y = 32,
					loop = false
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 64,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 96,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 128,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 8,
					y = 160,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 10,
					y = 192,
					loop = false
				},
				attack4 = {
					speed = 0.08,
					frames = 11,
					y = 224,
					loop = false
				},
				attack5 = {
					speed = 0.08,
					frames = 9,
					y = 256,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 288,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 7,
					y = 320,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"RarePaladin",
				"Paladin",
				"팔라딘 (Paladin)"
			},
			paths = {
				"src/sprites/units/PrinceMan/03Rare/02RarePrinceMan_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				shout = {
					speed = 0.12,
					frames = 7,
					y = 32,
					loop = false
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 64,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 4,
					y = 96,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 8,
					y = 128,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 8,
					y = 160,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 10,
					y = 192,
					loop = false
				},
				attack4 = {
					speed = 0.08,
					frames = 11,
					y = 224,
					loop = false
				},
				attack5 = {
					speed = 0.08,
					frames = 9,
					y = 256,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 288,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 8,
					y = 320,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"수호자",
				"Guardian",
				"수호자 (Guardian)"
			},
			paths = {
				"src/sprites/units/PrinceMan/03Rare/01RarePrinceMan.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 64,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 96,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"켄타로우스",
				"Centaur",
				"켄타로우스 (Centaur)",
				"켄타우로스",
				"켄타우로스 (Centaur)"
			},
			paths = {
				"src/sprites/units/HorseMan/03Rare/03RareHorseMan_01_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 64,
					loop = false
				},
				skill = {
					speed = 0.12,
					frames = 6,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"윙드 후사르",
				"Winged Hussar",
				"윙드 후사르 (Winged Hussar)"
			},
			paths = {
				"src/sprites/units/HorseMan/03Rare/03RareHorseMan_02_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 64,
					loop = false
				},
				skill = {
					speed = 0.12,
					frames = 6,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"초원 기병",
				"Steppe Cavalry",
				"초원 기병 (Steppe Cavalry)"
			},
			paths = {
				"src/sprites/units/HorseMan/03Rare/02RareHorseMan_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 64,
					loop = false
				},
				skill = {
					speed = 0.12,
					frames = 6,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"후사르",
				"Hussar",
				"후사르 (Hussar)"
			},
			paths = {
				"src/sprites/units/HorseMan/03Rare/02RareHorseMan_02.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 64,
					loop = false
				},
				skill = {
					speed = 0.12,
					frames = 6,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"경기병",
				"Light Cavalry",
				"경기병 (Light Cavalry)"
			},
			paths = {
				"src/sprites/units/HorseMan/03Rare/01RareHorseMan.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 64,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 96,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 42,
			names = {
				"화염 정령",
				"Flame Spirit",
				"화염 정령 (Flame Spirit)"
			},
			paths = {
				"src/sprites/units/Mage/03Rare/03RareMage_02_01Summoner.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 8,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.12,
					frames = 10,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.16,
					frames = 9,
					y = 96,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 128,
					loop = false
				},
				death = {
					speed = 0.16,
					frames = 6,
					y = 160,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"불 정령",
				"Fire Spirit",
				"불 정령 (Fire Spirit)"
			},
			paths = {
				"src/sprites/units/Mage/03Rare/02RareMage_02Summoner.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 8,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.12,
					frames = 9,
					y = 64,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.16,
					frames = 6,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"샐러맨더",
				"Salamander"
			},
			paths = {
				"src/sprites/units/Mage/03Rare/03RareMage_02_01.png",
				"sprites/units/Mage/03Rare/03RareMage_02_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 10,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 7,
					y = 128,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 13,
					y = 160,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 192,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 8,
					y = 224,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"운디네",
				"Undine"
			},
			paths = {
				"src/sprites/units/Mage/03Rare/03RareMage_01_01.png",
				"sprites/units/Mage/03Rare/03RareMage_01_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 12,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 16,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 7,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"화령술사",
				"Flamecaller"
			},
			paths = {
				"src/sprites/units/Mage/03Rare/02RareMage_02.png",
				"sprites/units/Mage/03Rare/02RareMage_02.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 9,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 10,
					y = 128,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 9,
					y = 160,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 192,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 224,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"수정술사",
				"Crystal Mage"
			},
			paths = {
				"src/sprites/units/Mage/03Rare/02RareMage_01.png",
				"sprites/units/Mage/03Rare/02RareMage_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 7,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 12,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 9,
					y = 128,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 16,
					y = 160,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 192,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 8,
					y = 224,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"비술사",
				"Arcanist"
			},
			paths = {
				"src/sprites/units/Mage/03Rare/01RareMage.png",
				"sprites/units/Mage/03Rare/01RareMage.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 8,
					y = 96,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 128,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 8,
					y = 160,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"글래디에이터",
				"Gladiator"
			},
			paths = {
				"src/sprites/units/SpearMan/03Rare/03RareSpearMan_02_01.png",
				"sprites/units/SpearMan/03Rare/03RareSpearMan_02_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.12,
					frames = 7,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 7,
					y = 128,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 160,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"스파르타",
				"Spartan"
			},
			paths = {
				"src/sprites/units/SpearMan/03Rare/03RareSpearMan_01_01.png",
				"sprites/units/SpearMan/03Rare/03RareSpearMan_01_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.12,
					frames = 7,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 7,
					y = 128,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 160,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"투기 창병",
				"Arena Spearman"
			},
			paths = {
				"src/sprites/units/SpearMan/03Rare/02RareSpearMan_02.png",
				"sprites/units/SpearMan/03Rare/02RareSpearMan_02.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.12,
					frames = 7,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 6,
					y = 128,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 160,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"고대 창병",
				"Ancient Spearman"
			},
			paths = {
				"src/sprites/units/SpearMan/03Rare/02RareSpearMan_01.png",
				"sprites/units/SpearMan/03Rare/02RareSpearMan_01.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.12,
					frames = 7,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 7,
					y = 128,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 160,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"창투사",
				"Spear Fighter"
			},
			paths = {
				"src/sprites/units/SpearMan/03Rare/01RareSpearMan.png",
				"sprites/units/SpearMan/03Rare/01RareSpearMan.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack2 = {
					speed = 0.08,
					frames = 7,
					y = 64,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 96,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 64,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"임프 (Imp)",
				"임프",
				"Imp"
			},
			paths = {
				"src/sprites/enemy/Demon/01Imp.png",
				"sprites/enemy/Demon/01Imp.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 5,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 6,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 2,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"불씨 임프 (Ember Imp)",
				"불씨 임프",
				"Ember Imp"
			},
			paths = {
				"src/sprites/enemy/Demon/02Ember Imp.png",
				"sprites/enemy/Demon/02Ember Imp.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 5,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 8,
					y = 128,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 160,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 4,
					y = 192,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"악동 임프 (Rascal Imp)",
				"악동 임프",
				"Rascal Imp"
			},
			paths = {
				"src/sprites/enemy/Demon/03Rascal Imp.png",
				"sprites/enemy/Demon/03Rascal Imp.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 5,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 6,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 9,
					y = 96,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 128,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 160,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"서큐버스 (Succubus)",
				"서큐버스",
				"Succubus"
			},
			paths = {
				"src/sprites/enemy/Demon/04Succubus.png",
				"sprites/enemy/Demon/04Succubus.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 9,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 6,
					y = 128,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 160,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 7,
					y = 192,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"발톱 악마 (Clawed Demon)",
				"발톱 악마",
				"Clawed Demon"
			},
			paths = {
				"src/sprites/enemy/Demon/05ClawedDemon.png",
				"sprites/enemy/Demon/05ClawedDemon.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 5,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 5,
					y = 128,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 160,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 192,
					loop = false
				}
			}
		},
		{
			frameH = 40,
			frameW = 40,
			names = {
				"상급 악마 (High Demon)",
				"상급 악마",
				"High Demon"
			},
			paths = {
				"src/sprites/enemy/Demon/06HighDemon.png",
				"sprites/enemy/Demon/06HighDemon.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 40,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 80,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 120,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 160,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 8,
					y = 200,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"지옥 파수꾼 (Hell Warden)",
				"지옥 파수꾼",
				"Hell Warden"
			},
			paths = {
				"src/sprites/enemy/Demon/07HellWarden.png",
				"sprites/enemy/Demon/07HellWarden.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 5,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 8,
					y = 96,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 8,
					y = 128,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 7,
					y = 160,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 192,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 7,
					y = 224,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"지옥 마녀 (Hell Witch)",
				"지옥 마녀",
				"Hell Witch"
			},
			paths = {
				"src/sprites/enemy/Demon/08Hell Witch.png",
				"sprites/enemy/Demon/08Hell Witch.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 5,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 9,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 6,
					y = 128,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 7,
					y = 160,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 192,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 7,
					y = 224,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"지옥 집행관 (Hell Enforcer)",
				"지옥 집행관",
				"Hell Enforcer"
			},
			paths = {
				"src/sprites/enemy/Demon/09Hell Enforcer.png",
				"sprites/enemy/Demon/09Hell Enforcer.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 6,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 6,
					y = 128,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 3,
					y = 160,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 192,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 8,
					y = 224,
					loop = false
				}
			}
		},
		{
			frameH = 40,
			frameW = 40,
			names = {
				"마왕 (Demon Lord)",
				"마왕",
				"Demon Lord"
			},
			paths = {
				"src/sprites/enemy/Demon/10Demon Lord.png",
				"sprites/enemy/Demon/10Demon Lord.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 40,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 4,
					y = 80,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 120,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 8,
					y = 160,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 10,
					y = 200,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 240,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 8,
					y = 280,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 40,
			names = {
				"암흑 군주 (Dark Lord)",
				"암흑 군주",
				"Dark Lord"
			},
			paths = {
				"src/sprites/enemy/Demon/boss/01DarkLord.png",
				"sprites/enemy/Demon/boss/01DarkLord.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 8,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 8,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 11,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 20,
					y = 128,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 160,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 192,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 96,
			shadowOffsetYPx = 1,
			names = {
				"해골 드래곤 (Skeleton Dragon)",
				"해골 드래곤",
				"Skeleton Dragon"
			},
			paths = {
				"src/sprites/enemy/Demon/boss/02Skeleton Dragon.png",
				"sprites/enemy/Demon/boss/02Skeleton Dragon.png"
			},
			shadowFootAnchor = {
				y = 31,
				x = 33.5
			},
			shadowSize = {
				height = 11,
				width = 33
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 6,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 8,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 14,
					y = 128,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 160,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 192,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 64,
			shadowOffsetYPx = 1,
			names = {
				"파멸 드래곤 (Doom Dragon)",
				"파멸 드래곤",
				"Doom Dragon"
			},
			paths = {
				"src/sprites/enemy/Demon/boss/03Doom Dragon.png",
				"sprites/enemy/Demon/boss/03Doom Dragon.png"
			},
			shadowFootAnchor = {
				y = 31,
				x = 35.5
			},
			shadowSize = {
				height = 11,
				width = 33
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 6,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 8,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 4,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 9,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 16,
					y = 128,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 160,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 8,
					y = 192,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"우주 암살자 (Space Assassin)",
				"우주 암살자",
				"Space Assassin"
			},
			paths = {
				"src/sprites/enemy/Star Wanderers/01Space Assassin.png",
				"sprites/enemy/Star Wanderers/01Space Assassin.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 9,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 11,
					y = 128,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 160,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 192,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"우주 수호자 (Space Guardian)",
				"우주 수호자",
				"Space Guardian"
			},
			paths = {
				"src/sprites/enemy/Star Wanderers/02Space Guardian.png",
				"sprites/enemy/Star Wanderers/02Space Guardian.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 10,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 12,
					y = 128,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 160,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 192,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"우주 사냥꾼 (Space Hunter)",
				"우주 사냥꾼",
				"Space Hunter"
			},
			paths = {
				"src/sprites/enemy/Star Wanderers/03Space Hunter.png",
				"sprites/enemy/Star Wanderers/03Space Hunter.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 12,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 17,
					y = 128,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 160,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 192,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"우주 기사 (Space Knight)",
				"우주 기사",
				"Space Knight"
			},
			paths = {
				"src/sprites/enemy/Star Wanderers/04Space Knight.png",
				"sprites/enemy/Star Wanderers/04Space Knight.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 8,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 8,
					y = 128,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 160,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 192,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"우주 기병 (Space Cavalry)",
				"우주 기병",
				"Space Cavalry"
			},
			paths = {
				"src/sprites/enemy/Star Wanderers/05Space Cavalry.png",
				"sprites/enemy/Star Wanderers/05Space Cavalry.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 9,
					y = 96,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 128,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 160,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"우주 마법사 (Space Wizard)",
				"우주 마법사",
				"Space Wizard"
			},
			paths = {
				"src/sprites/enemy/Star Wanderers/06Space Wizard.png",
				"sprites/enemy/Star Wanderers/06Space Wizard.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.09,
					frames = 11,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.11,
					frames = 11,
					y = 128,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 160,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 192,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"초승달 약탈자 (Crescent Raider)",
				"초승달 약탈자",
				"Crescent Raider"
			},
			paths = {
				"src/sprites/enemy/Star Wanderers/07Crescent Raider.png",
				"sprites/enemy/Star Wanderers/07Crescent Raider.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 8,
					y = 128,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 10,
					y = 160,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 192,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 224,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"수정 근위병 (Crystal Guard)",
				"수정 근위병",
				"Crystal Guard"
			},
			paths = {
				"src/sprites/enemy/Star Wanderers/08Crystal Guard.png",
				"sprites/enemy/Star Wanderers/08Crystal Guard.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 8,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 8,
					y = 128,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 160,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 192,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"별빛 성기사 (Starlight Paladin)",
				"별빛 성기사",
				"Starlight Paladin"
			},
			paths = {
				"src/sprites/enemy/Star Wanderers/09Starlight Paladin.png",
				"sprites/enemy/Star Wanderers/09Starlight Paladin.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 9,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 8,
					y = 128,
					loop = false
				},
				attack3 = {
					speed = 0.08,
					frames = 13,
					y = 160,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 192,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 224,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"별의 여사제 (Star Priestess)",
				"별의 여사제",
				"Star Priestess"
			},
			paths = {
				"src/sprites/enemy/Star Wanderers/10Star Priestess.png",
				"sprites/enemy/Star Wanderers/10Star Priestess.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				jump = {
					speed = 0.12,
					frames = 3,
					y = 64,
					loop = false
				},
				attack = {
					speed = 0.08,
					frames = 10,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.08,
					frames = 8,
					y = 128,
					loop = false
				},
				hit = {
					speed = 0.12,
					frames = 2,
					y = 160,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 5,
					y = 192,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"쌍성 군주 (Twin Star Lords)",
				"쌍성 군주",
				"Twin Star Lords"
			},
			paths = {
				"src/sprites/enemy/Star Wanderers/boss/01Twin Star Lords.png",
				"sprites/enemy/Star Wanderers/boss/01Twin Star Lords.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 6,
					y = 64,
					loop = false
				},
				shield = {
					speed = 0.18,
					frames = 7,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"Twin Star Lords 2"
			},
			paths = {
				"src/sprites/enemy/Star Wanderers/boss/01Twin Star Lords_2.png",
				"sprites/enemy/Star Wanderers/boss/01Twin Star Lords_2.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 6,
					y = 64,
					loop = false
				},
				shield = {
					speed = 0.18,
					frames = 7,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 128,
					loop = false
				}
			}
		},
		{
			frameH = 40,
			frameW = 40,
			names = {
				"별의 심판관 (Star Judge)",
				"별의 심판관",
				"Star Judge"
			},
			paths = {
				"src/sprites/enemy/Star Wanderers/boss/02Star Judge.png",
				"sprites/enemy/Star Wanderers/boss/02Star Judge.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 40,
					loop = true
				},
				attack = {
					speed = 0.08,
					frames = 7,
					y = 80,
					loop = false
				},
				attack2 = {
					speed = 0.22,
					frames = 7,
					y = 120,
					loop = false
				},
				death = {
					speed = 0.15,
					frames = 6,
					y = 160,
					loop = false
				}
			}
		},
		{
			frameH = 48,
			frameW = 48,
			names = {
				"우주 제왕 (Cosmic Sovereign)",
				"우주 제왕",
				"Cosmic Sovereign"
			},
			paths = {
				"src/sprites/enemy/Star Wanderers/boss/03Cosmic Sovereign.png",
				"sprites/enemy/Star Wanderers/boss/03Cosmic Sovereign.png"
			},
			shadowSize = {
				height = 7,
				width = 23
			},
			animations = {
				idle = {
					speed = 0.24,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.18,
					frames = 6,
					y = 48,
					loop = true
				},
				attack = {
					speed = 0.12,
					frames = 8,
					y = 96,
					loop = false
				},
				attack2 = {
					speed = 0.12,
					frames = 8,
					y = 144,
					loop = false
				},
				attack3 = {
					speed = 0.12,
					frames = 8,
					y = 192,
					loop = false
				},
				death = {
					speed = 0.24,
					frames = 6,
					y = 240,
					loop = false
				}
			}
		},
		{
			frameH = 40,
			frameW = 40,
			names = {
				"맹독아귀 (Venom Maw)",
				"맹독아귀",
				"Venom Maw"
			},
			paths = {
				"src/sprites/enemy/Eyes/boss/02VenomMaw.png",
				"sprites/enemy/Eyes/boss/02VenomMaw.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 5,
					y = 40,
					loop = true
				},
				attack = {
					speed = 0.1,
					frames = 4,
					y = 80,
					loop = false
				},
				attack2 = {
					speed = 0.1,
					frames = 4,
					y = 120,
					loop = false
				},
				attack3 = {
					speed = 0.1,
					frames = 5,
					y = 160,
					loop = false
				},
				death = {
					speed = 0.1,
					frames = 6,
					y = 200,
					loop = false
				}
			}
		},
		{
			frameH = 40,
			frameW = 40,
			names = {
				"암굴 바실리스크 (Cave Basilisk)",
				"암굴 바실리스크",
				"Cave Basilisk"
			},
			paths = {
				"src/sprites/enemy/Eyes/boss/03CaveBasilisk.png",
				"sprites/enemy/Eyes/boss/03CaveBasilisk.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 5,
					y = 40,
					loop = true
				},
				attack = {
					speed = 0.1,
					frames = 6,
					y = 80,
					loop = false
				},
				attack2 = {
					speed = 0.1,
					frames = 9,
					y = 120,
					loop = false
				},
				death = {
					speed = 0.1,
					frames = 7,
					y = 160,
					loop = false
				}
			}
		},
		{
			frameH = 40,
			frameW = 40,
			names = {
				"역가시 폭군 (Spine Tyrant)",
				"역가시 폭군",
				"Spine Tyrant"
			},
			paths = {
				"src/sprites/enemy/Lizard/boss/02SpineTyrant.png",
				"sprites/enemy/Lizard/boss/02SpineTyrant.png"
			},
			animations = {
				idle = {
					speed = 0.27,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.18,
					frames = 6,
					y = 40,
					loop = true
				},
				attack = {
					speed = 0.14,
					frames = 6,
					y = 80,
					loop = false
				},
				attack2 = {
					speed = 0.14,
					frames = 6,
					y = 120,
					loop = false
				},
				death = {
					speed = 0.27,
					frames = 5,
					y = 160,
					loop = false
				}
			}
		},
		{
			frameH = 32,
			frameW = 32,
			names = {
				"칼비늘 장로 (Razorscale Elder)",
				"칼비늘 장로",
				"Razorscale Elder"
			},
			paths = {
				"src/sprites/enemy/Lizard/boss/03RazorscaleElder.png",
				"sprites/enemy/Lizard/boss/03RazorscaleElder.png"
			},
			animations = {
				idle = {
					speed = 0.15,
					frames = 4,
					y = 0,
					loop = true
				},
				walk = {
					speed = 0.1,
					frames = 6,
					y = 32,
					loop = true
				},
				attack = {
					speed = 0.1,
					frames = 6,
					y = 64,
					loop = false
				},
				attack2 = {
					speed = 0.1,
					frames = 7,
					y = 96,
					loop = false
				},
				death = {
					speed = 0.1,
					frames = 5,
					y = 128,
					loop = false
				}
			}
		}
	}
}

function var_0_0.registerUnitSprites(arg_1_0)
	assert(type(arg_1_0) == "function", "asset2.registerUnitSprites requires the shared unit loader")

	for iter_1_0, iter_1_1 in ipairs(var_0_0.unitSprites) do
		for iter_1_2, iter_1_3 in ipairs(iter_1_1.names) do
			local var_1_0 = arg_1_0(iter_1_3, iter_1_1.paths, iter_1_1.frameW, iter_1_1.frameH, iter_1_1.animations)

			if var_1_0 then
				var_1_0.shadowFromIdleFoot = iter_1_1.shadowFromIdleFoot
				var_1_0.pixelScaleBase = iter_1_1.pixelScaleBase
				var_1_0.classCardBodyWidth = iter_1_1.classCardBodyWidth
				var_1_0.classCardBodyHeight = iter_1_1.classCardBodyHeight
				var_1_0.bodyBounds = iter_1_1.bodyBounds

				for iter_1_4, iter_1_5 in pairs(iter_1_1.animationAliases or {}) do
					var_1_0.animations[iter_1_4] = var_1_0.animations[iter_1_5]
					var_1_0.quads[iter_1_4] = var_1_0.quads[iter_1_5]

					if var_1_0.bounds then
						var_1_0.bounds[iter_1_4] = var_1_0.bounds[iter_1_5]
					end
				end
			end

			if var_1_0 and iter_1_1.shadowFootAnchor then
				var_1_0.shadowFootAnchor = {
					x = iter_1_1.shadowFootAnchor.x,
					y = iter_1_1.shadowFootAnchor.y
				}
			end

			if var_1_0 and iter_1_1.shadowSize then
				var_1_0.shadowWidthPx = iter_1_1.shadowSize.width
				var_1_0.shadowHeightPx = iter_1_1.shadowSize.height
			end

			if var_1_0 and iter_1_1.shadowOffsetYPx then
				var_1_0.shadowOffsetYPx = iter_1_1.shadowOffsetYPx
			end
		end
	end
end

var_0_0.footX = {
	["Demon Lord"] = 19.5,
	Dullahan = 16,
	Guardian = 16,
	["황야의 피리꾼 (Wasteland Piper)"] = 25.5,
	["High Demon"] = 19.5,
	["White Knight"] = 16,
	Frostblade = 17,
	["Undead Butcher"] = 16.5,
	빅터 = 16,
	Phantom = 17,
	화포수 = 17,
	["Dark Lord"] = 15.5,
	Seraph = 19,
	["Grail Knight"] = 16.5,
	["Starlight Paladin"] = 12,
	Slayer = 16
}
var_0_0.footReviewed = {
	"Bat Matron",
	"Beholder",
	"Cave Basilisk",
	"Cave Devourer",
	"Crimson Raptor",
	"Doom Dragon",
	"Eclipse",
	"Eye Bat",
	"Ferret",
	"Lizard Brute",
	"Lizard Warlord",
	"Moon Priestess",
	"Raven",
	"Razorscale Elder",
	"RingmasterFerret",
	"Shade",
	"Sky Spearman",
	"Spine Tyrant",
	"마그누스",
	"혈꼬리 (Bloodtail)",
	"Executioner",
	"Valkyrie"
}

function var_0_0.applyFootReview(arg_2_0)
	local function var_2_0(arg_3_0)
		local var_3_0 = arg_3_0.imageData or arg_3_0.image
		local var_3_1 = var_3_0 and arg_3_0.quads and arg_3_0.quads.idle and arg_3_0.quads.idle[1]

		if not var_3_1 then
			return nil
		end

		local var_3_2, var_3_3, var_3_4, var_3_5 = var_3_1:getViewport()

		return tostring(var_3_0) .. ":" .. var_3_2 .. ":" .. var_3_3 .. ":" .. var_3_4 .. ":" .. var_3_5
	end

	local var_2_1 = {}

	for iter_2_0, iter_2_1 in pairs(var_0_0.footX) do
		local var_2_2 = arg_2_0[iter_2_0] and var_2_0(arg_2_0[iter_2_0])

		if var_2_2 then
			var_2_1[var_2_2] = {
				x = iter_2_1
			}
		end
	end

	for iter_2_2, iter_2_3 in ipairs(var_0_0.footReviewed) do
		local var_2_3 = arg_2_0[iter_2_3] and var_2_0(arg_2_0[iter_2_3])

		if var_2_3 and not var_2_1[var_2_3] then
			var_2_1[var_2_3] = {
				reviewed = true
			}
		end
	end

	for iter_2_4, iter_2_5 in pairs(arg_2_0) do
		local var_2_4 = type(iter_2_5) == "table" and var_2_1[var_2_0(iter_2_5) or ""]

		if var_2_4 then
			iter_2_5.reviewedFootX = var_2_4.x
			iter_2_5.footReviewed = true
		end
	end
end

return var_0_0
