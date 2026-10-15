local var_0_0 = {}
local var_0_1 = require("src.data.language")

var_0_0.definitions = {
	guard_stance = {
		description = "방패를 들어 1초 동안 모든 피해를 막습니다.",
		name = "방어 태세",
		cooldown = 4,
		duration = 1,
		category = "defense",
		activationType = "active",
		ownerKey = "MiniSwordMan02",
		target = "self",
		nameEn = "Guard Stance",
		id = "guard_stance",
		owner = "병사",
		icon = "src/sprites/icons/skills/01GuardStance.png",
		effects = {
			invulnerable = true
		},
		runtime = {
			activeAnim = "shield",
			duration = 1,
			cooldown = 4,
			invulnerableWhilePrecast = false,
			triggerRangePadding = 6,
			requireNearbyEnemy = true,
			preDuration = 0,
			minRank = 2,
			suppressAttackWhileActive = true,
			kind = "ShieldWall",
			invulnerableWhileActive = true,
			hpBarLiftBars = 1,
			alwaysShowBarInBattle = true,
			showBarInBattle = true
		}
	},
	counter_stance = {
		description = "방패를 들어 1.5초 동안 모든 피해를 막고, 공격한 적에게 피해를 반사합니다.",
		name = "반격 태세",
		cooldown = 4,
		duration = 1.5,
		category = "defense_counter",
		activationType = "active",
		ownerKey = "MiniSwordMan03",
		target = "self",
		nameEn = "Counter Stance",
		id = "counter_stance",
		owner = "기사",
		icon = "src/sprites/icons/skills/02CounterStance.png",
		effects = {
			reflect = true,
			invulnerable = true
		},
		runtime = {
			activeAnim = "shield",
			duration = 1.5,
			cooldown = 4,
			invulnerableWhilePrecast = false,
			triggerRangePadding = 6,
			requireNearbyEnemy = true,
			preDuration = 0,
			minRank = 3,
			suppressAttackWhileActive = true,
			kind = "CounterStance",
			invulnerableWhileActive = true,
			reflectFrac = 1,
			hpBarLiftBars = 1,
			alwaysShowBarInBattle = true,
			showBarInBattle = true
		}
	}
}
var_0_0.definitions.holy_barrier = {
	description = "방패를 들어 1초 동안 모든 피해를 막고, 막은 피해만큼 {hp.png}이 가장 낮은 아군 1명에게 3초간 보호막을 부여합니다.",
	name = "신성 보호막",
	cooldown = 5,
	duration = 1,
	category = "defense_support",
	activationType = "active",
	ownerKey = "성기사",
	target = "self_ally",
	maxTargets = 1,
	nameEn = "Holy Barrier",
	id = "holy_barrier",
	owner = "성기사",
	icon = "src/sprites/icons/skills/52HolyBarrier.png",
	effects = {
		shieldMaxHpRatio = 0.4,
		shieldDamageRatio = 1,
		shieldDuration = 3,
		invulnerable = true
	},
	runtime = {
		activeAnim = "shield",
		duration = 1,
		cooldown = 5,
		invulnerableWhilePrecast = false,
		triggerRangePadding = 6,
		requireNearbyEnemy = true,
		preDuration = 0,
		minRank = 2,
		maxTargets = 1,
		kind = "ShieldWall",
		invulnerableWhileActive = true,
		suppressAttackWhileActive = true,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.flame_eruption = {
	description = "검을 땅에 꽂아 불길을 솟구치게 해 최대 3명에게 각각 {atk.png} 110% 피해를 입히고 {fire.png}을 부여합니다.",
	name = "화염 분출",
	cooldown = 5,
	duration = 3,
	category = "aoe_dot",
	activationType = "active",
	ownerKey = "염투사",
	target = "enemy",
	maxTargets = 3,
	nameEn = "Flame Eruption",
	id = "flame_eruption",
	owner = "염투사",
	icon = "src/sprites/icons/skills/53FlameEruption.png",
	effects = {
		burnDuration = 3,
		burnTickMul = 0.15
	},
	runtime = {
		activeAnim = "attack2",
		dmgMul = 1.1,
		cooldown = 5,
		radius = 110,
		minRank = 2,
		maxTargets = 3,
		kind = "FlameEruption",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.guardian_oath = {
	description = "포효해 자신과 {hp.png}이 가장 낮은 아군 2명이 3초 동안 템플러 최대 {hp.png}의 50% 보호막을 공유합니다.",
	name = "수호의 맹세",
	cooldown = 6,
	duration = 3,
	category = "defense_support",
	activationType = "active",
	ownerKey = "템플러",
	target = "self_ally",
	maxTargets = 3,
	nameEn = "Guardian Oath",
	id = "guardian_oath",
	owner = "템플러",
	icon = "src/sprites/icons/skills/54GuardianOath.png",
	effects = {
		shieldMaxHpRatio = 0.5,
		shieldDuration = 3
	},
	runtime = {
		activeAnim = "attack2",
		duration = 3,
		cooldown = 6,
		alwaysShowBarInBattle = true,
		minRank = 3,
		maxTargets = 3,
		kind = "GuardianOath",
		hpBarLiftBars = 1,
		animationSpeed = 0.18,
		showBarInBattle = true
	}
}
var_0_0.definitions.combustion_blast = {
	description = "불꽃을 발사해 최대 3명에게 각각 {atk.png} 100% 피해와 {fire.png}을 부여합니다. 이미 {fire.png}상태인 적은 {fire.png}이 폭발해 {atk.png} 80% 추가 피해를 받습니다.",
	name = "연소 폭발",
	cooldown = 6,
	duration = 3,
	category = "aoe_dot",
	activationType = "active",
	ownerKey = "플레어",
	target = "enemy",
	maxTargets = 3,
	nameEn = "Combustion Blast",
	id = "combustion_blast",
	owner = "플레어",
	icon = "src/sprites/icons/skills/55CombustionBlast.png",
	effects = {
		explosionMul = 0.8,
		burnTickMul = 0.15,
		burnDuration = 3
	},
	runtime = {
		activeAnim = "attack3",
		dmgMul = 1,
		cooldown = 6,
		range = 135,
		radius = 65,
		minRank = 3,
		maxTargets = 3,
		kind = "CombustionBlast",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.condemning_strike = {
	description = "빛나는 망치로 적을 내려쳐 {atk.png} 180% 피해를 입히고, 2초 동안 스킬 사용을 막습니다.",
	name = "단죄의 일격",
	cooldown = 6,
	duration = 2,
	category = "attack_disrupt",
	activationType = "active",
	id = "condemning_strike",
	target = "enemy",
	maxTargets = 1,
	nameEn = "Condemning Strike",
	ownerKey = "RarePaladin",
	owner = "팔라딘",
	icon = "src/sprites/icons/skills/72CondemningStrike.png",
	runtime = {
		activeAnim = "attack3",
		duration = 2,
		cooldown = 6,
		kind = "CondemningStrike",
		range = 40,
		dmgMul = 1.8,
		releaseFrame = 5,
		minRank = 2,
		maxTargets = 1,
		bossDuration = 1,
		suppressAttackWhileActive = true,
		alwaysShowBarInBattle = true,
		hpBarLiftBars = 1,
		animationSpeed = 0.14,
		showBarInBattle = true
	}
}
var_0_0.definitions.judgments_radiance = {
	description = "망치를 들어 빛을 터뜨려 주변 최대 2명에게 각각 {atk.png} 180% 피해를 입히고, 3초 동안 스킬 사용을 막습니다.",
	name = "심판의 광휘",
	cooldown = 7,
	duration = 3,
	category = "attack_disrupt",
	activationType = "active",
	id = "judgments_radiance",
	target = "enemy",
	maxTargets = 2,
	nameEn = "Judgment’s Radiance",
	ownerKey = "심판관",
	owner = "심판관",
	icon = "src/sprites/icons/skills/74JudgmentsRadiance.png",
	runtime = {
		activeAnim = "attack3",
		duration = 3,
		cooldown = 7,
		kind = "JudgmentsRadiance",
		range = 40,
		dmgMul = 1.8,
		releaseFrame = 5,
		minRank = 3,
		maxTargets = 2,
		bossDuration = 1.5,
		suppressAttackWhileActive = true,
		alwaysShowBarInBattle = true,
		hpBarLiftBars = 1,
		animationSpeed = 0.14,
		showBarInBattle = true
	}
}
var_0_0.definitions.frost_spike = {
	description = "얼음 가시를 솟구쳐 전방 최대 2명에게 각각 {atk.png} 110% 피해를 입히고, 1초간 얼립니다.",
	name = "서리 쐐기",
	cooldown = 6,
	duration = 1,
	category = "attack_freeze",
	activationType = "active",
	id = "frost_spike",
	target = "enemy",
	maxTargets = 2,
	nameEn = "Frost Spike",
	ownerKey = "서리칼날",
	owner = "서리칼날",
	icon = "src/sprites/icons/skills/73FrostSpike.png",
	runtime = {
		activeAnim = "attack3",
		duration = 1,
		cooldown = 6,
		dmgMul = 1.1,
		range = 130,
		releaseFrame = 4,
		suppressAttackWhileActive = true,
		minRank = 2,
		maxTargets = 2,
		kind = "FrostSpike",
		alwaysShowBarInBattle = true,
		hpBarLiftBars = 1,
		animationSpeed = 0.18,
		showBarInBattle = true
	}
}
var_0_0.definitions.glacial_shatter = {
	description = "얼음 덩어리로 전방 최대 3명에게 각각 {atk.png} 80% 피해를 입히고 1.5초간 얼립니다. 덩어리가 깨지면 각각 {atk.png} 70% 추가 피해를 입힙니다.",
	name = "빙하 파쇄",
	cooldown = 7,
	duration = 1.5,
	category = "attack_freeze",
	activationType = "active",
	id = "glacial_shatter",
	target = "enemy",
	maxTargets = 3,
	nameEn = "Glacial Shatter",
	ownerKey = "빙결여제",
	owner = "빙결여제",
	icon = "src/sprites/icons/skills/75GlacialShatter.png",
	runtime = {
		activeAnim = "attack2",
		duration = 1.5,
		cooldown = 7,
		dmgMul = 0.8,
		range = 130,
		releaseFrame = 4,
		suppressAttackWhileActive = true,
		minRank = 3,
		maxTargets = 3,
		kind = "GlacialShatter",
		alwaysShowBarInBattle = true,
		hpBarLiftBars = 1,
		animationSpeed = 0.18,
		showBarInBattle = true
	}
}
var_0_0.definitions.spellblade_vortex = {
	description = "가장 먼 적에게 마검을 던집니다.\n마검이 회전하며 대상과 그 대상에게 가장 가까운 적 1명에게 피해를 입히고, 그 적을 대상 쪽으로 끌어당깁니다.",
	name = "마검 소용돌이",
	cooldown = 6,
	duration = 0.8,
	category = "attack_disrupt",
	activationType = "active",
	id = "spellblade_vortex",
	target = "enemy",
	maxTargets = 2,
	nameEn = "Spellblade Vortex",
	ownerKey = "마검사",
	owner = "마검사",
	icon = "src/sprites/icons/skills/76SpellbladeVortex.png",
	runtime = {
		activeAnim = "attack2",
		pullDistance = 50,
		splashDmgMul = 0.8,
		duration = 0.8,
		cooldown = 6,
		dmgMul = 1.4,
		releaseFrame = 3,
		minRank = 2,
		maxTargets = 2,
		kind = "SpellbladeVortex",
		suppressAttackWhileActive = true,
		alwaysShowBarInBattle = true,
		hpBarLiftBars = 1,
		animationSpeed = 0.1,
		showBarInBattle = true
	}
}
var_0_0.definitions.arcane_collapse = {
	description = "가장 먼 적에게 초록 구체를 던집니다. 구체가 주변 적 최대 2명을 끌어당긴 뒤 폭발해 각각 {atk.png} 90% 피해를 입힙니다.",
	name = "마력 붕괴",
	cooldown = 7,
	duration = 1,
	category = "aoe_disrupt_amplify",
	activationType = "active",
	id = "arcane_collapse",
	target = "enemy",
	maxTargets = 3,
	nameEn = "Arcane Collapse",
	ownerKey = "게이즈",
	owner = "게이즈",
	icon = "src/sprites/icons/skills/77ArcaneCollapse.png",
	runtime = {
		activeAnim = "attack3",
		pullDistance = 50,
		cooldown = 7,
		duration = 1,
		dmgMul = 0.9,
		releaseFrame = 5,
		radius = 90,
		minRank = 3,
		maxTargets = 3,
		kind = "ArcaneCollapse",
		suppressAttackWhileActive = true,
		alwaysShowBarInBattle = true,
		hpBarLiftBars = 1,
		animationSpeed = 0.1,
		showBarInBattle = true
	}
}
var_0_0.definitions.shadow_harvest = {
	description = "적을 처치하면 그림자를 흡수해\n2초 동안 자신의 최대 {hp.png} 15% 만큼 보호막을 얻습니다.",
	name = "그림자 수확",
	cooldown = 0,
	duration = 2,
	category = "lethal_survival",
	activationType = "passive",
	cooldownLabel = "passive",
	target = "self",
	ownerKey = "암검사",
	nameEn = "Shadow Harvest",
	id = "shadow_harvest",
	owner = "암검사",
	icon = "src/sprites/icons/skills/78ShadowHarvest.png",
	effects = {
		shieldMaxHpRatio = 0.15
	},
	runtime = {
		duration = 2,
		kind = "ShadowHarvest",
		cooldown = 0,
		showBarInBattle = true,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		internalCooldown = 3,
		minRank = 2
	}
}
var_0_0.definitions.ruin_tremor = {
	description = "적을 처치하면 발을 굴러 주변 최대 3명에게\n각각 {atk.png} 70% 피해를 입히고 3초간 보호막을 얻습니다.",
	name = "파멸의 진동",
	cooldown = 5,
	duration = 3,
	category = "aoe_survival",
	activationType = "passive",
	id = "ruin_tremor",
	target = "self_enemy",
	maxTargets = 3,
	nameEn = "Ruin Tremor",
	ownerKey = "마그누스",
	owner = "마그누스",
	icon = "src/sprites/icons/skills/79RuinTremor.png",
	effects = {
		shieldMaxHpRatio = 0.15
	},
	runtime = {
		activeAnim = "attack3",
		duration = 3,
		cooldown = 5,
		dmgMul = 0.7,
		releaseFrame = 3,
		suppressAttackWhileActive = true,
		radius = 64,
		minRank = 3,
		maxTargets = 3,
		kind = "RuinTremor",
		alwaysShowBarInBattle = true,
		hpBarLiftBars = 1,
		animationSpeed = 0.18,
		showBarInBattle = true
	}
}
var_0_0.definitions.arrow_rain = {
	maxArrows = 3,
	name = "화살비",
	cooldown = 7,
	id = "arrow_rain",
	category = "attack_disrupt",
	activationType = "active",
	duration = 0,
	target = "enemy",
	maxTargets = 3,
	nameEn = "Arrow Rain",
	ownerKey = "암흑사수",
	owner = "암흑사수",
	description = "화살비를 차례로 떨어뜨려 적을 뒤로 밀어내고,\n한 발마다 {atk.png} 70% 피해를 입힙니다.",
	icon = "src/sprites/icons/skills/80ArrowRain.png",
	durationText = "낙하 종료까지",
	runtime = {
		activeAnim = "attack3",
		suppressAttackWhileActive = true,
		cooldown = 7,
		maxTargets = 3,
		dmgMul = 0.7,
		alwaysShowBarInBattle = true,
		minRank = 2,
		releaseFrame = 12,
		kind = "ArrowRain",
		arrows = 3,
		hpBarLiftBars = 1,
		animationSpeed = 0.09,
		showBarInBattle = true
	}
}
var_0_0.definitions.twilight_barrage = {
	maxArrows = 5,
	name = "황혼 폭우",
	cooldown = 8,
	id = "twilight_barrage",
	category = "attack_disrupt",
	activationType = "active",
	duration = 0,
	target = "enemy",
	maxTargets = 4,
	nameEn = "Twilight Barrage",
	ownerKey = "레이븐",
	owner = "레이븐",
	description = "화살 폭우를 쏟아내 적들을 밀어내고,\n한 발마다 {atk.png} 60% 피해를 입힙니다.",
	icon = "src/sprites/icons/skills/81TwilightBarrage.png",
	durationText = "낙하 종료까지",
	runtime = {
		activeAnim = "attack3",
		suppressAttackWhileActive = true,
		style = "twilight",
		minRank = 3,
		maxTargets = 4,
		kind = "ArrowRain",
		animationSpeed = 0.09,
		fall = 0.55,
		height = 135,
		cooldown = 8,
		gap = 0.16,
		dmgMul = 0.6,
		releaseFrame = 12,
		arrows = 5,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.hollow_arrow = {
	description = "{atk.png} 170% 피해를 주는 큰 환영 화살을 쏩니다.\n날아가며 적의 기본 공격 투사체를 최대 2개 삼켜 더 강해집니다.",
	name = "허상 화살",
	cooldown = 7,
	nameEn = "Hollow Arrow",
	category = "attack_defense",
	activationType = "active",
	duration = 0,
	target = "enemy_projectile",
	maxTargets = 1,
	maxProjectiles = 2,
	ownerKey = "환영사수",
	owner = "환영사수",
	id = "hollow_arrow",
	icon = "src/sprites/icons/skills/82HollowArrow.png",
	durationText = "화살 소멸까지",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 7,
		swallowDmgMul = 0.3,
		kind = "HollowArrow",
		releaseFrame = 8,
		dmgMul = 1.7,
		minRank = 2,
		maxTargets = 1,
		maxProjectiles = 2,
		alwaysShowBarInBattle = true,
		hpBarLiftBars = 1,
		animationSpeed = 0.09,
		showBarInBattle = true
	}
}
var_0_0.definitions.devouring_arrow = {
	description = "{atk.png} 240% 피해를 주는 거대한 환영 화살을 쏩니다.\n날아가며 적의 기본 공격 투사체를 최대 3개 삼켜 더 강해집니다.",
	name = "탐식의 화살",
	cooldown = 8,
	nameEn = "Devouring Arrow",
	category = "attack_defense",
	activationType = "active",
	duration = 0,
	target = "enemy_projectile",
	maxTargets = 1,
	maxProjectiles = 3,
	ownerKey = "미라지",
	owner = "미라지",
	id = "devouring_arrow",
	icon = "src/sprites/icons/skills/83DevouringArrow.png",
	durationText = "화살 소멸까지",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 8,
		swallowDmgMul = 0.3,
		maxProjectiles = 3,
		hpBarLiftBars = 1,
		minRank = 3,
		maxTargets = 1,
		kind = "HollowArrow",
		animationSpeed = 0.09,
		style = "devouring",
		dmgMul = 2.4,
		releaseFrame = 8,
		sheet = "src/sprites/units/ArcherMan/04Legend/03LegendArcherMan_02_01Skill.png",
		sizeStep = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.chain_spear = {
	description = "가장 먼 적에게 사슬창을 던져\n{atk.png} 150% 피해를 입히고 자신의 앞으로 끌어옵니다.",
	name = "철쇄 투창",
	cooldown = 7,
	duration = 0,
	category = "attack_disrupt",
	activationType = "active",
	id = "chain_spear",
	target = "enemy",
	maxTargets = 1,
	nameEn = "Chain Spear",
	ownerKey = "흑위병",
	owner = "흑위병",
	icon = "src/sprites/icons/skills/84ChainSpear.png",
	durationText = "끌어오기 종료까지",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 7,
		dmgMul = 1.5,
		range = 180,
		releaseFrame = 3,
		pullTo = 55,
		minRank = 2,
		maxTargets = 1,
		kind = "ChainSpear",
		alwaysShowBarInBattle = true,
		hpBarLiftBars = 1,
		animationSpeed = 0.1,
		showBarInBattle = true
	}
}
var_0_0.definitions.execution_chain = {
	description = "가장 먼 적에게 사슬창을 던져\n{atk.png} 180% 피해를 입히고 자신의 앞으로 끌어옵니다.\n끌려온 적은 3초 동안 출혈합니다.",
	name = "처형 사슬",
	cooldown = 7,
	duration = 3,
	category = "attack_disrupt",
	activationType = "active",
	id = "execution_chain",
	target = "enemy",
	maxTargets = 1,
	nameEn = "Execution Chain",
	ownerKey = "처형자",
	owner = "처형자",
	icon = "src/sprites/icons/skills/85ExecutionChain.png",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		bleedTickInterval = 0.5,
		range = 180,
		kind = "ChainSpear",
		bleedDur = 3,
		maxTargets = 1,
		bleedDmgMulPerTick = 0.1,
		cooldown = 7,
		minRank = 3,
		animationSpeed = 0.1,
		pullTo = 55,
		style = "execution",
		dmgMul = 1.8,
		releaseFrame = 4,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		marker = {
			72,
			72,
			107
		},
		spear = {
			cut = 23,
			row = 16.5,
			sheet = "src/sprites/units/SpearMan/04Legend/03LegendSpearMan_01_01Projectile.png",
			chainX = 2.5,
			tip = 31
		}
	}
}
var_0_0.definitions.spectral_rush = {
	description = "몸에서 망령이 빠져나와 적들을 관통하며\n최대 3명에게 각각 {atk.png} 130% 피해를 입힌 뒤 돌아옵니다.",
	name = "혼령 돌파",
	cooldown = 7,
	duration = 0,
	category = "attack_pierce",
	activationType = "active",
	id = "spectral_rush",
	target = "enemy",
	maxTargets = 3,
	nameEn = "Spectral Rush",
	ownerKey = "망령병",
	owner = "망령병",
	icon = "src/sprites/icons/skills/86SpectralRush.png",
	durationText = "망령 귀환까지",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 7,
		maxTargets = 3,
		range = 150,
		dmgMul = 1.3,
		alwaysShowBarInBattle = true,
		minRank = 2,
		releaseFrame = 4,
		kind = "SpectralRush",
		hpBarLiftBars = 1,
		animationSpeed = 0.1,
		showBarInBattle = true
	}
}
var_0_0.definitions.spectral_return = {
	description = "망령이 몸에서 빠져나와 적 최대 4명을 관통해\n각각 {atk.png} 100% 피해를 입히고,\n돌아오며 다시 각각 {atk.png} 80% 피해를 입힙니다.",
	name = "망령 회귀",
	cooldown = 8,
	duration = 0,
	category = "attack_pierce",
	activationType = "active",
	id = "spectral_return",
	target = "enemy",
	maxTargets = 4,
	nameEn = "Spectral Return",
	ownerKey = "SpearRevenant",
	owner = "레버넌트",
	icon = "src/sprites/icons/skills/87SpectralReturn.png",
	durationText = "망령 귀환까지",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 8,
		range = 150,
		minRank = 3,
		maxTargets = 4,
		kind = "SpectralRush",
		anchorY = 23.5,
		anchorX = 18.5,
		animationSpeed = 0.1,
		returnDmgMul = 0.8,
		style = "revenant",
		dmgMul = 1,
		releaseFrame = 4,
		sheet = "src/sprites/units/SpearMan/04Legend/03LegendSpearMan_02_01Skill.png",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		streaks = {
			x = 1,
			spear = 19,
			rows = {
				13,
				19,
				17
			}
		}
	}
}
var_0_0.definitions.abyssal_ray = {
	description = "점점 강해지는 광선을 3초간 쏘아 총 {atk.png} 480% 피해를 입힙니다.\n대상이 쓰러지면 남은 광선을 다른 적에게 돌립니다.",
	name = "심연 광선",
	cooldown = 6,
	duration = 3,
	category = "attack_channel",
	activationType = "active",
	id = "abyssal_ray",
	target = "enemy",
	maxTargets = 1,
	nameEn = "Abyssal Ray",
	ownerKey = "심연술사",
	owner = "심연술사",
	icon = "src/sprites/icons/skills/88AbyssalRay.png",
	durationText = "광선 3초",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		interval = 0.5,
		minRank = 2,
		maxTargets = 1,
		kind = "AbyssalRay",
		animationSpeed = 0.08,
		swayPeriod = 0.25,
		cooldown = 6,
		beam = 3,
		windup = 0.4,
		releaseFrame = 4,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		steps = {
			0.4,
			0.4,
			0.8,
			0.8,
			1.2,
			1.2
		},
		marker = {
			214,
			182,
			241
		},
		sway = {
			0.35,
			0.6
		}
	}
}
var_0_0.definitions.arcane_unleashing = {
	description = "점점 강해지는 세 갈래 광선으로 3초간 총 {atk.png} 660% 피해를 나눠 줍니다.\n적이 적으면 여러 광선을 한 적에게 집중합니다.",
	name = "마력 해방",
	cooldown = 6,
	duration = 3,
	category = "attack_channel",
	activationType = "active",
	id = "arcane_unleashing",
	target = "enemy",
	maxTargets = 3,
	nameEn = "Arcane Unleashing",
	ownerKey = "아크메이지",
	owner = "아크메이지",
	icon = "src/sprites/icons/skills/89ArcaneUnleashing.png",
	durationText = "광선 3초",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		maxTargets = 3,
		interval = 0.5,
		style = "arcane",
		minRank = 3,
		beams = 3,
		kind = "AbyssalRay",
		animationSpeed = 0.08,
		swayPeriod = 0.25,
		cooldown = 6,
		beam = 3,
		windup = 0.4,
		releaseFrame = 4,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		steps = {
			0.2,
			0.2,
			0.35,
			0.35,
			0.55,
			0.55
		},
		marker = {
			247,
			247,
			247
		},
		sway = {
			0.35,
			0.6
		}
	}
}
var_0_0.definitions.life_siphon = {
	description = "해골탄을 쏘아 {atk.png} 160% 피해를 주고,\n빼앗은 체력의 절반을 구슬에 담습니다.\n구슬은 체력이 70% 이하인 아군을 회복시킵니다.",
	name = "생명 착취",
	cooldown = 6,
	duration = 10,
	category = "attack_heal_support",
	activationType = "active",
	id = "life_siphon",
	target = "enemy_ally",
	maxTargets = 1,
	nameEn = "Life Siphon",
	ownerKey = "흑마법사",
	owner = "흑마법사",
	icon = "src/sprites/icons/skills/90LifeSiphon.png",
	durationText = "구슬 최대 10초",
	runtime = {
		activeAnim = "attack",
		suppressAttackWhileActive = true,
		cooldown = 6,
		dmgMul = 1.6,
		releaseFrame = 5,
		maxOrbs = 1,
		minRank = 2,
		maxTargets = 1,
		kind = "LifeSiphon",
		orbLife = 10,
		healBelow = 0.7,
		drainRatio = 0.5,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		hpBarLiftBars = 1,
		marker = {
			70,
			204,
			94
		}
	}
}
var_0_0.definitions.soul_feast = {
	description = "해골탄을 쏘아 적 최대 2명에게 각각 {atk.png} 180% 피해를 주고,\n빼앗은 체력의 절반을 구슬에 담습니다.\n구슬은 체력이 70% 이하인 아군을 회복시킵니다.",
	name = "영혼 연회",
	cooldown = 7,
	duration = 10,
	category = "attack_heal_support",
	activationType = "active",
	id = "soul_feast",
	target = "enemy_ally",
	maxTargets = 2,
	nameEn = "Soul Feast",
	ownerKey = "워록",
	owner = "워록",
	icon = "src/sprites/icons/skills/90SoulFeast.png",
	durationText = "구슬 최대 10초",
	runtime = {
		activeAnim = "attack",
		suppressAttackWhileActive = true,
		bend = 0.7,
		style = "feast",
		range = 200,
		minRank = 3,
		maxTargets = 2,
		kind = "LifeSiphon",
		sheet = "src/sprites/units/Mage/04Legend/03LegendMage_02_01Skill.png",
		anchorY = 8,
		anchorX = 9.5,
		sink = 6,
		pixelHit = true,
		gone = 2,
		frames = 4,
		overshoot = 8,
		cooldown = 7,
		hpBarLiftBars = 1,
		dmgMul = 1.8,
		releaseFrame = 5,
		maxOrbs = 2,
		orbLife = 10,
		healBelow = 0.7,
		drainRatio = 0.5,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		marker = {
			139,
			171,
			195
		},
		hovers = {
			{
				y = -28,
				x = -18
			},
			{
				y = -44,
				x = 8
			}
		}
	}
}
var_0_0.definitions.nightmare_flurry = {
	description = "기본 공격 시 20% 확률로 마력 찌르기를 3회 연속 발동해,\n총 {atk.png} 200% 피해를 입힙니다.",
	name = "악몽 연격",
	cooldown = 0,
	duration = 0,
	category = "attack_combo",
	activationType = "passive",
	cooldownLabel = "passive",
	target = "enemy",
	maxTargets = 1,
	nameEn = "Nightmare Flurry",
	ownerKey = "나이트메어",
	owner = "나이트메어",
	id = "nightmare_flurry",
	icon = "src/sprites/icons/skills/91NightmareFlurry.png",
	runtime = {
		activeAnim = "attack3",
		cooldown = 0,
		chance = 0.2,
		suppressAttackWhileActive = true,
		showBarInBattle = true,
		minRank = 2,
		kind = "NightmareFlurry",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		internalCooldown = 2,
		steps = {
			0.4,
			0.4,
			1.2
		},
		tip = {
			y = 19.5,
			x = 30.5
		},
		charge = {
			y = 20.5,
			x = 21.5
		}
	}
}
var_0_0.definitions.shrink_ray = {
	description = "축소 광선을 발사해\n{atk.png} 140% 피해를 입힙니다.\n맞은 적은 3초간 작아져 주는 직접 피해가 30% 감소합니다.",
	name = "축소 광선",
	cooldown = 7,
	duration = 3,
	category = "attack_debuff",
	activationType = "active",
	id = "shrink_ray",
	target = "enemy",
	maxTargets = 1,
	nameEn = "Shrink Ray",
	ownerKey = "LegendarySpecter",
	owner = "LegendarySpecter",
	icon = "src/sprites/icons/skills/95ShrinkRay.png",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 7,
		cut = 0.3,
		range = 150,
		minRank = 2,
		kind = "ShrinkRay",
		animationSpeed = 0.08,
		duration = 3,
		bossScale = 0.9,
		scale = 0.75,
		bossCut = 0.1,
		castOnCooldown = true,
		dmgMul = 1.4,
		releaseFrame = 7,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		marker = {
			235,
			209,
			10
		}
	}
}
var_0_0.definitions.titans_gaze = {
	description = "축소 광선을 발사해\n전방 최대 2명에게 각각 {atk.png} 140% 피해를 입힙니다.\n맞은 적들은 3초간 작아져 주는 직접 피해가 35% 감소합니다.",
	name = "거인의 마안",
	cooldown = 7,
	duration = 3,
	category = "attack_debuff",
	activationType = "active",
	id = "titans_gaze",
	target = "enemy",
	maxTargets = 2,
	nameEn = "Titan's Gaze",
	ownerKey = "CrownRevenant",
	owner = "CrownRevenant",
	icon = "src/sprites/icons/skills/96Titan’sGaze.png",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cut = 0.35,
		style = "titan",
		range = 190,
		cooldown = 7,
		minRank = 3,
		maxTargets = 2,
		kind = "ShrinkRay",
		animationSpeed = 0.08,
		duration = 3,
		bossScale = 0.9,
		scale = 0.75,
		bossCut = 0.1,
		castOnCooldown = true,
		dmgMul = 1.4,
		releaseFrame = 7,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		marker = {
			218,
			141,
			39
		}
	}
}
var_0_0.definitions.guardian_swordfall = {
	description = "아군 최대 2명 앞에 빛의 검을 떨어뜨려 주변 적에게\n{atk.png} 60% 피해를 줍니다.\n각 검은 해당 아군이 받는 직접 공격 1회를 막고 깨지며\n주변 적에게 {atk.png} 40% 피해를 줍니다.",
	name = "수호검 강림",
	cooldown = 7,
	duration = 5,
	category = "defense_support_aoe",
	activationType = "active",
	id = "guardian_swordfall",
	target = "ally_enemy",
	maxTargets = 2,
	nameEn = "Guardian Swordfall",
	ownerKey = "백기사",
	owner = "백기사",
	icon = "src/sprites/icons/skills/100GuardianSwordfall.png",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 7,
		maxHits = 2,
		breakDmgMul = 0.4,
		minRank = 2,
		maxTargets = 2,
		kind = "GuardianSwordfall",
		animationSpeed = 0.08,
		duration = 5,
		style = "prism",
		dmgMul = 0.6,
		releaseFrame = 6,
		sheet = "src/sprites/units/SwordMan/05Prism/02PrismSwordMan_02Skill.png",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		threat = 90
	}
}
var_0_0.definitions.grail_swordfall = {
	description = "아군 최대 3명 앞에 거대한 빛의 검을 떨어뜨려 주변 적에게\n{atk.png} 70% 피해를 줍니다.\n각 검은 해당 아군이 받는 직접 공격 1회를 막고 깨지며\n주변 적에게 {atk.png} 50% 피해를 줍니다.",
	name = "성배검 강림",
	cooldown = 8,
	duration = 6,
	category = "defense_support_aoe",
	activationType = "active",
	id = "grail_swordfall",
	target = "ally_enemy",
	maxTargets = 3,
	nameEn = "Grail Swordfall",
	ownerKey = "성배기사",
	owner = "성배기사",
	icon = "src/sprites/icons/skills/101GrailSwordfall.png",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 8,
		maxHits = 2,
		breakDmgMul = 0.5,
		minRank = 3,
		maxTargets = 3,
		kind = "GuardianSwordfall",
		animationSpeed = 0.08,
		duration = 6,
		style = "grail_meteor",
		stagger = 0.18,
		dmgMul = 0.7,
		releaseFrame = 6,
		sheet = "src/sprites/units/SwordMan/05Prism/03PrismSwordMan_02_01Skill.png",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		threat = 90
	}
}
var_0_0.definitions.salvation_arrow = {
	description = "처음 쓰러진 아군 1명을 최대 {hp.png}의 40%로 부활시킵니다.",
	name = "구원의 화살",
	cooldown = 0,
	duration = 0,
	category = "support_revive",
	activationType = "passive",
	id = "salvation_arrow",
	target = "dead_ally",
	maxTargets = 1,
	nameEn = "Salvation Arrow",
	ownerKey = "큐피드",
	owner = "큐피드",
	icon = "src/sprites/icons/skills/102CelestialRescue.png",
	runtime = {
		activeAnim = "attack2",
		duration = 0,
		style = "heaven",
		cooldown = 0,
		arrowY = 0,
		arrowX = 14,
		releaseFrame = 8,
		minRank = 2,
		bodySheet = "src/sprites/units/ArcherMan/05Prism/02PrismArcherMan_01.png",
		kind = "SalvationArrow",
		sheet = "src/sprites/units/ArcherMan/05Prism/02PrismArcherMan_01Skill.png",
		hpFrac = 0.4,
		suppressAttackWhileActive = true,
		animationSpeed = 0.08
	}
}
var_0_0.definitions.celestial_return = {
	description = "처음 쓰러진 아군 1명을 최대 {hp.png}의 60%로 부활시키고,\n그 아군의 스킬을 즉시 사용 가능한 상태로 만듭니다.",
	name = "천상의 귀환",
	cooldown = 0,
	duration = 0,
	category = "support_revive",
	activationType = "passive",
	id = "celestial_return",
	target = "dead_ally",
	maxTargets = 1,
	nameEn = "Celestial Return",
	ownerKey = "세라프",
	owner = "세라프",
	icon = "src/sprites/icons/skills/103CelestialRescue.png",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		releaseFrame = 8,
		cooldown = 0,
		arrowY = 1,
		arrowX = 18.5,
		alwaysShowBarInBattle = true,
		minRank = 3,
		bodySheet = "src/sprites/units/ArcherMan/05Prism/03PrismArcherMan_01_01.png",
		kind = "SalvationArrow",
		hpFrac = 0.6,
		animationSpeed = 0.11,
		duration = 0,
		style = "seraph_gate",
		skyMargin = 40,
		fade = 0.4,
		stand = 0.25,
		sheet = "src/sprites/units/ArcherMan/05Prism/03PrismArcherMan_01_01Skill.png",
		hpBarLiftBars = 1,
		refreshSkill = true,
		showBarInBattle = true,
		arrowQuad = {
			16,
			1,
			5,
			11
		}
	}
}
var_0_0.definitions.chain_snipe = {
	description = "{hp.png} 가장 낮은 적을 저격해 {atk.png} 240% 피해를 줍니다.\n처치하면 다른 적을 한 번 더 저격합니다.",
	name = "연쇄 저격",
	cooldown = 7,
	duration = 0,
	category = "attack_finisher",
	activationType = "active",
	id = "chain_snipe",
	target = "enemy",
	maxTargets = 2,
	nameEn = "Chain Snipe",
	ownerKey = "은빛사수",
	owner = "은빛사수",
	icon = "src/sprites/icons/skills/104ChainSnipe.png",
	durationText = "연속 사격 종료까지",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		style = "rail_flash",
		chargeSound = "silverSnipeCharge",
		shotSound = "silverSnipeShot",
		minRank = 2,
		maxTargets = 2,
		kind = "ChainSnipe",
		chainDmgMul = 1.6,
		animationSpeed = 0.08,
		cooldown = 7,
		dmgMul = 2.4,
		releaseFrame = 5,
		sheet = "src/sprites/units/ArcherMan/05Prism/02PrismArcherMan_02Skill.png",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.eclipse_snipe = {
	description = "{hp.png} 가장 낮은 적을 저격해 {atk.png} 300% 피해를 줍니다.\n처치할 때마다 다음 적을 저격하며, 최대 3명까지 공격합니다.",
	name = "일식 저격",
	cooldown = 8,
	duration = 0,
	category = "attack_finisher",
	activationType = "active",
	id = "eclipse_snipe",
	target = "enemy",
	maxTargets = 3,
	nameEn = "Eclipse Snipe",
	ownerKey = "이클립스",
	owner = "이클립스",
	icon = "src/sprites/icons/skills/105EclipseSnipe.png",
	durationText = "연속 사격 종료까지",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		style = "eclipse_flare",
		chargeSound = "eclipseSnipeCharge",
		shotSound = "eclipseSnipeShot",
		minRank = 3,
		maxTargets = 3,
		kind = "ChainSnipe",
		animationSpeed = 0.08,
		cooldown = 8,
		dmgMul = 3,
		releaseFrame = 5,
		sheet = "src/sprites/units/ArcherMan/05Prism/03PrismArcherMan_02_01Skill.png",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		shotMuls = {
			3,
			1.8,
			1.2
		}
	}
}
var_0_0.definitions.rift_arsenal = {
	description = "균열에서 창을 꺼내서 발사해 {atk.png} 180% 피해를 줍니다.\n4초간 다른 아군이 액티브 스킬을 쓰면 추가 창을 최대 2개 발사합니다.",
	name = "균열 무기고",
	cooldown = 7,
	duration = 4,
	category = "attack_combo",
	activationType = "active",
	id = "rift_arsenal",
	target = "enemy",
	maxTargets = 3,
	nameEn = "Rift Arsenal",
	ownerKey = "천공병",
	owner = "천공병",
	icon = "src/sprites/icons/skills/106RiftArsenal.png",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 7,
		maxExtra = 2,
		range = 170,
		minRank = 2,
		kind = "RiftArsenal",
		animationSpeed = 0.08,
		riftSheet = "src/sprites/units/SpearMan/05Prism/02PrismSpearMan_01Skill2.png",
		duration = 4,
		style = "golden_heaven",
		extraDmgMul = 1,
		dmgMul = 1.8,
		releaseFrame = 6,
		sheet = "src/sprites/units/SpearMan/05Prism/02PrismSpearMan_01Skill.png",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.celestial_arsenal = {
	description = "균열에서 창을 꺼내서 발사해 {atk.png} 200% 피해를 줍니다.\n5초간 다른 아군이 액티브 스킬을 쓰면 추가 창을 최대 3개 발사합니다.",
	name = "천공 무기고",
	cooldown = 8,
	duration = 5,
	category = "attack_combo",
	activationType = "active",
	id = "celestial_arsenal",
	target = "enemy",
	maxTargets = 4,
	nameEn = "Celestial Arsenal",
	ownerKey = "발키리",
	owner = "발키리",
	icon = "src/sprites/icons/skills/107CelestialArsenal.png",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 8,
		range = 180,
		impactTime = 0.9,
		maxExtra = 3,
		minRank = 3,
		kind = "RiftArsenal",
		animationSpeed = 0.08,
		riftSheet = "src/sprites/units/SpearMan/05Prism/03PrismSpearMan_01_01Skill2.png",
		duration = 5,
		style = "valhalla_gate",
		extraDmgMul = 1,
		dmgMul = 2,
		releaseFrame = 6,
		sheet = "src/sprites/units/SpearMan/05Prism/03PrismSpearMan_01_01Skill.png",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.lance_extension = {
	description = "3초간 창이 길어져 기본 공격으로 전방 최대 2명을 꿰뚫습니다.\n주 대상에게 {atk.png} 130%, 뒤의 적에게 60% 피해를 줍니다.",
	name = "장창 전개",
	cooldown = 7,
	duration = 3,
	category = "enhance_pierce",
	activationType = "active",
	id = "lance_extension",
	target = "self_enemy",
	maxTargets = 2,
	nameEn = "Lance Extension",
	ownerKey = "창술사",
	owner = "창술사",
	icon = "src/sprites/icons/skills/108LanceExtension.png",
	runtime = {
		activeAnim = "attack2",
		duration = 3,
		cooldown = 7,
		animationSpeed = 0.06,
		range = 130,
		minRank = 2,
		maxTargets = 2,
		kind = "LanceExtension",
		swingAnim = "attack3",
		paletteCore = "FFF6B1",
		style = "crimson_edge",
		hitFrame = 4,
		riseFrom = 5,
		joinX = 30,
		dmgMul = 1.3,
		skillSheet = "src/sprites/units/SpearMan/05Prism/02PrismSpearMan_02Skill.png",
		riseSheet = "src/sprites/units/SpearMan/05Prism/02PrismSpearMan_02Rise.png",
		pierceDmgMul = 0.6,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		swingSkill = {
			1,
			2,
			3,
			4,
			4,
			5,
			5
		},
		palette = {
			"AB3F2F",
			"F5E462",
			"AB3F2F",
			"6B181A"
		}
	}
}
var_0_0.definitions.peerless_spear = {
	description = "4초간 창이 길어져 기본 공격으로 전방 최대 3명을 꿰뚫습니다.\n주 대상에게 {atk.png} 130%, 뒤의 적들에게 각각 60% 피해를 줍니다.",
	name = "무쌍 창술",
	cooldown = 8,
	duration = 4,
	category = "enhance_pierce",
	activationType = "active",
	id = "peerless_spear",
	target = "self_enemy",
	maxTargets = 3,
	nameEn = "Peerless Spear",
	ownerKey = "랜스마스터",
	owner = "랜스마스터",
	icon = "src/sprites/icons/skills/109PeerlessSpear.png",
	runtime = {
		handX = 40,
		alignSeam = true,
		joinW = 64,
		style = "peerless_radiance",
		range = 160,
		paletteAccent = "B5D6DE",
		minRank = 3,
		maxTargets = 3,
		kind = "LanceExtension",
		activeAnim = "attack2",
		swingAnim = "attack3",
		animationSpeed = 0.06,
		paletteCore = "FFFFFF",
		duration = 4,
		cooldown = 8,
		hitFrame = 4,
		riseFrom = 7,
		joinX = 62,
		dmgMul = 1.3,
		skillSheet = "src/sprites/units/SpearMan/05Prism/03PrismSpearMan_02_01Skill.png",
		riseSheet = "src/sprites/units/SpearMan/05Prism/03PrismSpearMan_02_01Rise.png",
		pierceDmgMul = 0.6,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		chargeAt = {
			28,
			24
		},
		swingSkill = {
			1,
			2,
			3,
			4,
			4,
			5,
			5
		},
		palette = {
			"F5E462",
			"AB3F2F",
			"BF9F3B",
			"6B181A"
		}
	}
}
var_0_0.definitions.flash_slash = {
	description = "기본 공격 7회마다 가장 먼 적에게 순간이동해\n{atk.png} 150% 피해를 입히고 돌아옵니다.",
	name = "섬광 참격",
	cooldown = 0,
	duration = 0,
	category = "attack_assault",
	activationType = "passive",
	cooldownLabel = "passive",
	target = "enemy",
	maxTargets = 1,
	nameEn = "Flash Slash",
	ownerKey = "듀라한",
	owner = "듀라한",
	id = "flash_slash",
	icon = "src/sprites/icons/skills/98FlashSlash.png",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 0,
		animationSpeed = 0.08,
		dmgMul = 1.5,
		alwaysShowBarInBattle = true,
		hpBarLiftBars = 1,
		minRank = 2,
		releaseFrame = 6,
		kind = "FlashSlash",
		teleportAnim = "attack3",
		sameLane = true,
		charges = 7,
		showBarInBattle = true
	}
}
var_0_0.definitions.flash_barrage = {
	description = "기본 공격 7회마다 적들 사이를 순간이동하며\n서로 다른 적 최대 3명을 차례로 베고 돌아옵니다.",
	name = "섬광 난무",
	cooldown = 0,
	duration = 0,
	category = "attack_assault_aoe",
	activationType = "passive",
	cooldownLabel = "passive",
	target = "enemy",
	maxTargets = 3,
	nameEn = "Flash Barrage",
	ownerKey = "팬텀",
	owner = "팬텀",
	id = "flash_barrage",
	icon = "src/sprites/icons/skills/99FlashBarrage.png",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 0,
		charges = 7,
		hpBarLiftBars = 1,
		minRank = 3,
		maxTargets = 3,
		kind = "FlashSlash",
		animationSpeed = 0.06,
		style = "grand_gate",
		extraDmgMul = 0.8,
		dmgMul = 1.6,
		releaseFrame = 6,
		teleportAnim = "attack3",
		sameLane = true,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.reapers_dance = {
	description = "쌍낫을 펼쳐 자신을 중심으로 사방을 베고,\n주변 적 최대 3명에게 각각 {atk.png} 160% 피해를 입힙니다.",
	name = "사신의 원무",
	cooldown = 7,
	duration = 0,
	category = "aoe_attack",
	activationType = "active",
	id = "reapers_dance",
	target = "nearby_enemy",
	maxTargets = 3,
	nameEn = "Reaper's Dance",
	ownerKey = "리퍼",
	owner = "리퍼",
	icon = "src/sprites/icons/skills/97Reaper’sDance.png",
	runtime = {
		activeAnim = "attack3",
		suppressAttackWhileActive = true,
		cooldown = 7,
		maxTargets = 3,
		dmgMul = 1.6,
		alwaysShowBarInBattle = true,
		radius = 70,
		minRank = 2,
		releaseFrame = 7,
		kind = "ReapersDance",
		hpBarLiftBars = 1,
		animationSpeed = 0.08,
		showBarInBattle = true
	}
}
var_0_0.definitions.soul_severance = {
	description = "쌍낫의 힘을 사방으로 터뜨려,\n주변 적 최대 4명에게 각각 {atk.png} 180% 피해를 입힙니다.",
	name = "영혼 절단",
	cooldown = 8,
	duration = 0,
	category = "aoe_attack",
	activationType = "active",
	id = "soul_severance",
	target = "nearby_enemy",
	maxTargets = 4,
	nameEn = "Soul Severance",
	ownerKey = "소울리퍼",
	owner = "소울리퍼",
	icon = "src/sprites/icons/skills/97SoulSeverance.png",
	runtime = {
		activeAnim = "attack3",
		suppressAttackWhileActive = true,
		cooldown = 8,
		maxTargets = 4,
		style = "soul_tempest",
		linger = 1.2,
		radius = 80,
		minRank = 3,
		releaseFrame = 7,
		kind = "ReapersDance",
		dmgMul = 1.8,
		alwaysShowBarInBattle = true,
		hpBarLiftBars = 1,
		animationSpeed = 0.08,
		showBarInBattle = true
	}
}
var_0_0.definitions.cataclysm_flurry = {
	description = "기본 공격 시 20% 확률로 마력 찌르기를 5회 연속 발동해,\n총 {atk.png} 280% 피해를 입힙니다.",
	name = "재앙 연격",
	cooldown = 0,
	duration = 0,
	category = "attack_combo",
	activationType = "passive",
	cooldownLabel = "passive",
	target = "enemy",
	maxTargets = 1,
	nameEn = "Cataclysm Flurry",
	ownerKey = "아포칼립스",
	owner = "아포칼립스",
	id = "cataclysm_flurry",
	icon = "src/sprites/icons/skills/92CataclysmFlurry.png",
	runtime = {
		activeAnim = "attack2",
		cooldown = 0,
		chance = 0.2,
		style = "cataclysm",
		suppressAttackWhileActive = true,
		minRank = 3,
		showBarInBattle = true,
		kind = "NightmareFlurry",
		jabs = 5,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		internalCooldown = 2,
		steps = {
			0.4,
			0.4,
			0.4,
			0.4,
			1.2
		},
		tip = {
			y = 18.5,
			x = 31.5
		},
		charge = {
			y = 18.5,
			x = 22.5
		}
	}
}
var_0_0.definitions.crescent_requital = {
	description = "5초 동안 아군이 받은 직접 피해의 35%를 달빛이 기억합니다.\n종료 시 기억한 피해만큼 아군 최대 3명을 회복하고,\n그 절반만큼 체력이 가장 높은 적에게 피해를 줍니다.",
	name = "초승의 환원",
	cooldown = 9,
	duration = 5,
	category = "support_heal_attack",
	activationType = "active",
	id = "crescent_requital",
	target = "ally_enemy",
	maxTargets = 3,
	nameEn = "Crescent Requital",
	ownerKey = "초승달 여왕",
	owner = "초승달 여왕",
	icon = "src/sprites/icons/skills/94CrescentRequital.png",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 9,
		showBarInBattle = true,
		alwaysShowBarInBattle = true,
		hpBarLiftBars = 1,
		minRank = 3,
		maxTargets = 3,
		kind = "MoonlitMemory",
		animationSpeed = 0.1,
		duration = 5,
		style = "queen",
		hover = 34,
		releaseFrame = 4,
		strikeDelay = 0.75,
		strikeRange = 260,
		strikeRatio = 0.5,
		split = true,
		capMul = 4,
		ratio = 0.35,
		marker = {
			247,
			247,
			247
		}
	}
}
var_0_0.definitions.moonlit_memory = {
	description = "4초 동안 아군이 받은 직접 피해의 30%를 달빛이 기억합니다.\n효과가 끝나면 기억한 피해만큼\n체력이 낮은 아군 최대 2명을 회복합니다.",
	name = "달빛 기억",
	cooldown = 8,
	duration = 4,
	category = "support_heal",
	activationType = "active",
	id = "moonlit_memory",
	target = "ally",
	maxTargets = 2,
	nameEn = "Moonlit Memory",
	ownerKey = "월광사제",
	owner = "월광사제",
	icon = "src/sprites/icons/skills/93MoonlitMemory.png",
	runtime = {
		activeAnim = "attack3",
		duration = 4,
		cooldown = 8,
		atkCap = 150,
		releaseFrame = 4,
		animationSpeed = 0.1,
		minRank = 2,
		maxTargets = 2,
		kind = "MoonlitMemory",
		suppressAttackWhileActive = true,
		showBarInBattle = true,
		hpBarLiftBars = 1,
		capMul = 3,
		ratio = 0.3,
		alwaysShowBarInBattle = true,
		marker = {
			247,
			247,
			247
		}
	}
}
var_0_0.definitions.spell_echo = {
	description = "아군 1명의 다음 스킬을 복제해,\n기존 원본 스킬의 절반의 효과를 냅니다.",
	name = "주문 복제",
	cooldown = 8,
	duration = 5,
	category = "support",
	activationType = "active",
	id = "spell_echo",
	target = "ally",
	maxTargets = 1,
	nameEn = "Spell Echo",
	ownerKey = "예지술사",
	owner = "예지술사",
	icon = "src/sprites/icons/skills/110SpellEcho.png",
	runtime = {
		activeAnim = "attack2",
		duration = 5,
		style = "seer_orb",
		cooldown = 8,
		releaseFrame = 5,
		firstReady = 2,
		suppressAttackWhileActive = true,
		minRank = 2,
		maxTargets = 1,
		kind = "SpellEcho",
		showBarInBattle = true,
		alwaysShowBarInBattle = true,
		hpBarLiftBars = 1,
		animationSpeed = 0.075,
		ratio = 0.5
	}
}
var_0_0.definitions.prophetic_mirror = {
	description = "아군 최대 2명의 다음 공격 주문을 각각 한 번 더 펼칩니다.\n복제 주문은 자신의 공격력을 기준으로 80% 위력을 냅니다.",
	name = "예언의 거울",
	cooldown = 9,
	duration = 6,
	category = "support",
	activationType = "active",
	id = "prophetic_mirror",
	target = "ally",
	maxTargets = 2,
	nameEn = "Prophetic Mirror",
	ownerKey = "예언자",
	owner = "예언자",
	icon = "src/sprites/icons/skills/111PropheticMirror.png",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 9,
		showBarInBattle = true,
		firstReady = 2,
		alwaysShowBarInBattle = true,
		minRank = 3,
		maxTargets = 2,
		kind = "SpellEcho",
		hpBarLiftBars = 1,
		animationSpeed = 0.075,
		duration = 6,
		style = "oracle_orb",
		releaseFrame = 7,
		flyTime = 0.42,
		orbY = 18,
		attackOnly = true,
		ownAtk = true,
		ratio = 0.8,
		core = {
			8625880,
			15451135,
			16360140,
			13086966
		}
	}
}
var_0_0.definitions.suppressive_round = {
	description = "사거리가 가장 긴 적을 사격해 {atk.png} 150% 피해를 입히고, {dist.png} -35%를 부여합니다.",
	name = "제압탄",
	cooldown = 5,
	duration = 3,
	category = "attack_debuff",
	activationType = "active",
	id = "suppressive_round",
	target = "enemy",
	maxTargets = 1,
	nameEn = "Suppressive Round",
	ownerKey = "화포수",
	owner = "화포수",
	icon = "src/sprites/icons/skills/56SuppressiveRound.png",
	runtime = {
		activeAnim = "attack",
		duration = 3,
		cooldown = 5,
		dmgMul = 1.5,
		minRank = 2,
		maxTargets = 1,
		kind = "SuppressiveRound",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.shatter_cannon = {
	description = "{dist.png}가 가장 긴 적에게 강력한 포탄을 발사해 {atk.png} 200% 피해를 입히고, 4초 동안 {dist.png}를 60으로 감소시킵니다.",
	name = "파쇄 포격",
	cooldown = 6,
	duration = 4,
	category = "attack_debuff",
	activationType = "active",
	id = "shatter_cannon",
	target = "enemy",
	maxTargets = 1,
	nameEn = "Shatter Cannon",
	ownerKey = "캐노니어",
	owner = "캐노니어",
	icon = "src/sprites/icons/skills/58ShatterCannon.png",
	runtime = {
		activeAnim = "attack2",
		duration = 4,
		cooldown = 6,
		dmgMul = 2,
		maxTargets = 1,
		minRank = 3,
		releaseFrame = 4,
		kind = "ShatterCannon",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.flame_descent = {
	id = "flame_descent",
	name = "화령 강림",
	maxSummons = 1,
	maxTargets = 3,
	icon = "src/sprites/icons/skills/67FlameDescent.png",
	description = "화염 정령 1마리를 소환합니다. 이미 있으면 정령과 함께 거대한 화염구를 발사해 최대 3명에게 각각 {atk.png} 110% 피해를 입힙니다.",
	duration = 0,
	cooldown = 8,
	category = "summon_attack",
	activationType = "active",
	target = "summon_enemy",
	nameEn = "Flame Descent",
	ownerKey = "샐러맨더",
	owner = "샐러맨더",
	durationText = "소환수 사망까지",
	effects = {
		burnImmune = true,
		burnTickMul = 0.3,
		burnDuration = 3,
		summonSpeed = 55,
		summonDistance = 55,
		summonASPD = 16,
		summonAtk = 18,
		summonHp = 170
	},
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 8,
		dmgMul = 1.1,
		releaseFrame = 3,
		alwaysShowBarInBattle = true,
		minRank = 3,
		maxTargets = 3,
		kind = "FlameDescent",
		hpBarLiftBars = 1,
		animationSpeed = 0.16,
		showBarInBattle = true
	}
}
var_0_0.definitions.call_of_the_dead = {
	description = "언데드 3마리를 소환합니다.\n재사용 시 쓰러진 소환수를 최대 2마리 보충합니다.",
	name = "망자의 부름",
	cooldown = 8,
	category = "summon",
	maxSummons = 3,
	activationType = "active",
	duration = 0,
	target = "summon",
	maxTargets = 3,
	nameEn = "Call of the Dead",
	ownerKey = "리치",
	owner = "리치",
	id = "call_of_the_dead",
	icon = "src/sprites/icons/skills/112CalloftheDead.png",
	durationText = "소환수 사망까지",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 8,
		style = "soul_aura",
		summons = 3,
		alwaysShowBarInBattle = true,
		minRank = 2,
		releaseFrame = 5,
		kind = "CallOfTheDead",
		hpBarLiftBars = 1,
		animationSpeed = 0.12,
		showBarInBattle = true,
		refill = 2
	}
}
var_0_0.definitions.legion_of_the_dead = {
	description = "언데드 4마리를 소환합니다.\n재사용 시 쓰러진 소환수를 최대 3마리 보충합니다.",
	name = "망자의 군단",
	cooldown = 8,
	category = "summon",
	maxSummons = 4,
	activationType = "active",
	duration = 0,
	target = "summon",
	maxTargets = 4,
	nameEn = "Legion of the Dead",
	ownerKey = "리치로드",
	owner = "리치로드",
	id = "legion_of_the_dead",
	icon = "src/sprites/icons/skills/113LegionOfTheDead.png",
	durationText = "소환수 사망까지",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 8,
		summons = 4,
		style = "legion_aura",
		minRank = 3,
		alwaysShowBarInBattle = true,
		roster = "lich_lord",
		releaseFrame = 6,
		kind = "CallOfTheDead",
		hpBarLiftBars = 1,
		animationSpeed = 0.06153846153846154,
		showBarInBattle = true,
		refill = 3
	}
}
var_0_0.definitions.bramble_prison = {
	description = "적에게 {atk.png} 120% 피해를 주고 나무 감옥에 가둡니다.\n갇힌 적은 공격으로 감옥부터 부숩니다.",
	name = "가시 감옥",
	cooldown = 7,
	duration = 3,
	category = "defense_disrupt_attack",
	activationType = "active",
	id = "bramble_prison",
	target = "enemy",
	maxTargets = 1,
	nameEn = "Bramble Prison",
	ownerKey = "실반",
	owner = "실반",
	icon = "src/sprites/icons/skills/114BramblePrison.png",
	durationText = "감옥 최대 3초",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 7,
		range = 70,
		minRank = 2,
		kind = "BramblePrison",
		animationSpeed = 0.09,
		duration = 3,
		style = "antler_cage",
		dmgMul = 1.2,
		releaseFrame = 5,
		bossDuration = 1,
		immune = 4,
		cageHp = 0.15,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.elderwood_prison = {
	description = "적 최대 2명에게 각각 {atk.png} 140% 피해를 주고 나무 감옥에 가둡니다.\n갇힌 적들은 공격으로 각자의 감옥부터 부숩니다.",
	name = "고대림의 감옥",
	cooldown = 8,
	duration = 3.5,
	category = "defense_disrupt_attack",
	activationType = "active",
	id = "elderwood_prison",
	target = "enemy",
	maxTargets = 2,
	nameEn = "Elderwood Prison",
	ownerKey = "숲의 심장",
	owner = "숲의 심장",
	icon = "src/sprites/icons/skills/115ElderwoodPrison.png",
	durationText = "감옥 최대 3.5초",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 8,
		duration = 3.5,
		range = 100,
		minRank = 3,
		maxTargets = 2,
		kind = "BramblePrison",
		animationSpeed = 0.09,
		stomp = "wave",
		style = "elder_antler",
		dmgMul = 1.4,
		releaseFrame = 5,
		bossDuration = 1.5,
		immune = 4,
		cageHp = 0.15,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		frameSpeeds = {
			0.08,
			0.08,
			0.12,
			0.15,
			0.11,
			0.09,
			0.09
		}
	}
}
var_0_0.definitions.dimensional_duel = {
	description = "적을 베어 {atk.png} 200% 피해를 주고, 시간 틈에서 2.5초간 단둘이 싸웁니다.\n그동안 자신의 {aspd.png}가 50% 증가합니다.",
	name = "차원 결투",
	cooldown = 8,
	duration = 2.5,
	category = "attack_isolate_buff",
	activationType = "active",
	id = "dimensional_duel",
	target = "enemy_self",
	maxTargets = 1,
	nameEn = "Dimensional Duel",
	ownerKey = "페이즈",
	owner = "페이즈",
	icon = "src/sprites/icons/skills/116DimensionalDuel.png",
	durationText = "결투 2.5초",
	runtime = {
		activeAnim = "attack2",
		duration = 2.5,
		cooldown = 8,
		aspdBonus = 0.5,
		range = 70,
		dmgMul = 2,
		style = "prism_fault",
		minRank = 2,
		releaseFrame = 6,
		kind = "DimensionalDuel",
		suppressAttackWhileActive = true,
		alwaysShowBarInBattle = true,
		hpBarLiftBars = 1,
		animationSpeed = 0.08,
		showBarInBattle = true
	}
}
var_0_0.definitions.temporal_assault = {
	description = "적을 베어 {atk.png} 240% 피해를 주고, 아군 1명과 시간 틈에서 3초간 협공합니다.\n그동안 자신의 {aspd.png}가 50% 증가합니다.",
	name = "시간 협공",
	cooldown = 9,
	id = "temporal_assault",
	category = "attack_isolate_support",
	activationType = "active",
	duration = 3,
	target = "enemy_self_ally",
	maxTargets = 1,
	nameEn = "Temporal Assault",
	ownerKey = "크로노워커",
	maxAllies = 1,
	owner = "크로노워커",
	icon = "src/sprites/icons/skills/117TemporalAssault.png",
	durationText = "협공 3초",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		dmgMul = 2.4,
		aspdBonus = 0.5,
		range = 70,
		cooldown = 9,
		charge = true,
		minRank = 3,
		kind = "DimensionalDuel",
		animationSpeed = 0.08,
		duration = 3,
		style = "golden_dial",
		slashLife = 0.75,
		allyRange = 90,
		releaseFrame = 6,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.heavens_judgment = {
	description = "빛으로 적을 심판해 {atk.png} 400% 피해를 줍니다.\n같은 적을 연속으로 심판하면 피해가 550%, 이후 700%로 증가합니다.",
	name = "천벌",
	cooldown = 8,
	duration = 0,
	category = "attack_focus",
	activationType = "active",
	id = "heavens_judgment",
	target = "enemy",
	maxTargets = 1,
	nameEn = "Heaven's Judgment",
	ownerKey = "대천사",
	owner = "대천사",
	icon = "src/sprites/icons/skills/118HeavensJudgment.png",
	durationText = "없음",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 8,
		style = "holy_descent",
		range = 150,
		alwaysShowBarInBattle = true,
		minRank = 2,
		releaseFrame = 6,
		kind = "HeavensJudgment",
		hpBarLiftBars = 1,
		animationSpeed = 0.13,
		showBarInBattle = true,
		dmgMul = {
			4,
			5.5,
			7
		}
	}
}
var_0_0.definitions.absolute_judgment = {
	description = "빛으로 적을 심판해 {atk.png} 500% 피해를 줍니다.\n같은 적을 연속으로 심판하면 피해가 750%, 이후 1,000%로 증가합니다.",
	name = "절대 심판",
	cooldown = 9,
	duration = 0,
	category = "attack_focus",
	activationType = "active",
	id = "absolute_judgment",
	target = "enemy",
	maxTargets = 1,
	nameEn = "Absolute Judgment",
	ownerKey = "도미니온",
	owner = "도미니온",
	icon = "src/sprites/icons/skills/119AbsoluteJudgment.png",
	durationText = "없음",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 9,
		style = "absolute_descent",
		range = 160,
		alwaysShowBarInBattle = true,
		minRank = 3,
		releaseFrame = 6,
		kind = "HeavensJudgment",
		hpBarLiftBars = 1,
		animationSpeed = 0.115,
		showBarInBattle = true,
		dmgMul = {
			5,
			7.5,
			10
		}
	}
}
var_0_0.definitions.rupturing_descent = {
	description = "내려찍어 적 최대 3명에게 각각 {atk.png} 180% 피해를 줍니다.\n맞은 적마다 충격파가 터져, 함께 맞은 주변 적에게 {atk.png} 60% 피해를 줍니다.",
	name = "파열 강하",
	cooldown = 8,
	duration = 0,
	category = "attack_aoe_echo",
	activationType = "active",
	id = "rupturing_descent",
	target = "enemy",
	maxTargets = 3,
	nameEn = "Rupturing Descent",
	ownerKey = "타락천사",
	owner = "타락천사",
	icon = "src/sprites/icons/skills/120RupturingDescent.png",
	durationText = "없음",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 8,
		style = "shadow_wings",
		range = 110,
		dmgMul = 1.8,
		minRank = 2,
		maxTargets = 3,
		kind = "RupturingDescent",
		echoMax = 2,
		echoMul = 0.6,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.doom_resonance = {
	description = "내려찍어 적 최대 4명에게 각각 {atk.png} 200% 피해를 줍니다.\n맞은 적마다 충격파가 터져, 함께 맞은 주변 적에게 {atk.png} 60% 피해를 줍니다.",
	name = "종말의 공명",
	cooldown = 9,
	duration = 0,
	category = "attack_aoe_echo",
	activationType = "active",
	id = "doom_resonance",
	target = "enemy",
	maxTargets = 4,
	nameEn = "Doom Resonance",
	ownerKey = "파멸의 천사",
	owner = "파멸의 천사",
	icon = "src/sprites/icons/skills/121DoomResonance.png",
	durationText = "없음",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		reach = 34,
		cooldown = 9,
		range = 120,
		height = 64,
		minRank = 3,
		maxTargets = 4,
		kind = "RupturingDescent",
		echoReach = 33,
		style = "doom_wings",
		dmgMul = 2,
		echoMax = 3,
		echoMul = 0.6,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		swordCell = {
			24,
			33
		}
	}
}
var_0_0.definitions.flame_call = {
	id = "flame_call",
	name = "화령 소환",
	maxSummons = 1,
	maxTargets = 2,
	icon = "src/sprites/icons/skills/65FlameCall.png",
	description = "불 정령 1마리를 소환합니다. 이미 있으면 정령이 불꽃을 터뜨려 주변 최대 2명에게 각각 {atk.png} 70% 피해를 입힙니다.",
	duration = 0,
	cooldown = 8,
	category = "summon_attack",
	activationType = "active",
	target = "summon_enemy",
	nameEn = "Flame Call",
	ownerKey = "화령술사",
	owner = "화령술사",
	durationText = "소환수 사망까지",
	effects = {
		burnImmune = true,
		burnTickMul = 0.3,
		burnDuration = 3,
		summonSpeed = 60,
		summonDistance = 50,
		summonASPD = 14,
		summonAtk = 12,
		summonHp = 100
	},
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 8,
		dmgMul = 0.7,
		burstRange = 50,
		releaseFrame = 3,
		alwaysShowBarInBattle = true,
		minRank = 2,
		maxTargets = 2,
		kind = "FlameCall",
		hpBarLiftBars = 1,
		animationSpeed = 0.16,
		showBarInBattle = true
	}
}
var_0_0.definitions.victory_signal = {
	description = "적 처치 1회 또는 보스에게 기본 공격 6회 적중마다 깃발을 1칸 채웁니다. 4칸 완충 시 모든 아군에게 4초간 {aspd.png} +15% 효과를 부여합니다.",
	name = "승전 신호",
	cooldown = 0,
	duration = 4,
	category = "support_buff",
	activationType = "passive",
	id = "victory_signal",
	target = "all_allies",
	maxTargets = "all",
	nameEn = "Victory Signal",
	ownerKey = "후사르",
	owner = "후사르",
	icon = "src/sprites/icons/skills/69VictorySignal.png",
	effects = {
		bossBasicHitsPerCharge = 6,
		chargeRequired = 4,
		aspdBonus = 0.15
	},
	runtime = {
		activeAnim = "skill",
		suppressAttackWhileActive = true,
		cooldown = 0,
		aspdBonus = 0.15,
		duration = 4,
		minRank = 2,
		kind = "VictorySignal",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.wings_of_victory = {
	description = "적 처치 1회 또는 보스에게 기본 공격 6회 적중마다 날개를 1칸 채웁니다. 4칸 완충 시 모든 아군에게 4초간 {aspd.png} +25%, {spd.png} +30% 효과를 부여합니다.",
	name = "승리의 날개",
	cooldown = 0,
	duration = 4,
	category = "support_buff",
	activationType = "passive",
	id = "wings_of_victory",
	target = "all_allies",
	maxTargets = "all",
	nameEn = "Wings of Victory",
	ownerKey = "윙드 후사르",
	owner = "윙드 후사르",
	icon = "src/sprites/icons/skills/71WingsOfVictory.png",
	effects = {
		bossBasicHitsPerCharge = 6,
		chargeRequired = 4,
		moveBonus = 0.3,
		aspdBonus = 0.25
	},
	runtime = {
		activeAnim = "skill",
		suppressAttackWhileActive = true,
		cooldown = 0,
		moveBonus = 0.3,
		aspdBonus = 0.25,
		duration = 4,
		minRank = 3,
		kind = "VictorySignal",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.call_of_the_plains = {
	description = "야생마 2마리가 전장을 가로질러 경로의 적 최대 3명에게 각각 {atk.png} 120% 피해를 입히고 밀어냅니다.",
	name = "초원의 부름",
	cooldown = 7,
	duration = 0,
	category = "attack_aoe_disrupt",
	activationType = "active",
	id = "call_of_the_plains",
	target = "enemy",
	maxTargets = 3,
	nameEn = "Call of the Plains",
	ownerKey = "초원 기병",
	owner = "초원 기병",
	icon = "src/sprites/icons/skills/68CallOfThePlains.png",
	durationText = "야생마 통과까지",
	effects = {
		oncePerTarget = true,
		knockbackDistance = 24,
		horseCount = 2,
		bossKnockbackImmune = true
	},
	runtime = {
		activeAnim = "skill",
		suppressAttackWhileActive = true,
		cooldown = 7,
		maxTargets = 3,
		dmgMul = 1.2,
		alwaysShowBarInBattle = true,
		minRank = 2,
		releaseFrame = 2,
		kind = "CallOfThePlains",
		hpBarLiftBars = 1,
		animationSpeed = 0.24,
		showBarInBattle = true
	}
}
var_0_0.definitions.wild_stampede = {
	description = "야생마 4마리가 전장을 질주하며 적 최대 4명에게 각각 {atk.png} 160% 피해를 입히고 밀어냅니다.",
	name = "야생마 쇄도",
	cooldown = 8,
	duration = 0,
	category = "attack_aoe_disrupt",
	activationType = "active",
	id = "wild_stampede",
	target = "enemy",
	maxTargets = 4,
	nameEn = "Wild Stampede",
	ownerKey = "켄타우로스",
	owner = "켄타우로스",
	icon = "src/sprites/icons/skills/70WildStampede.png",
	durationText = "야생마 통과까지",
	effects = {
		oncePerTarget = true,
		knockbackDistance = 24,
		horseCount = 4,
		bossKnockbackImmune = true,
		knockbackOncePerTarget = true
	},
	runtime = {
		activeAnim = "skill",
		suppressAttackWhileActive = true,
		cooldown = 8,
		releaseFrame = 2,
		dmgMul = 1.6,
		alwaysShowBarInBattle = true,
		minRank = 3,
		maxTargets = 4,
		kind = "CallOfThePlains",
		horseCount = 4,
		hpBarLiftBars = 1,
		animationSpeed = 0.24,
		showBarInBattle = true,
		knockbackOncePerTarget = true
	}
}
var_0_0.definitions.triple_tide = {
	description = "파도를 일으켜 최대 3명에게 각각 {atk.png} 110% 피해를 입히고 밀어냅니다. 파도가 지나간 아군 최대 2명의 {hp.png}를 6% 회복하고 디버프를 제거합니다.",
	name = "삼중 해일",
	cooldown = 7,
	id = "triple_tide",
	category = "attack_disrupt_heal_support",
	activationType = "active",
	owner = "운디네",
	target = "enemy_ally",
	maxTargets = 3,
	nameEn = "Triple Tide",
	ownerKey = "운디네",
	maxAllies = 2,
	icon = "src/sprites/icons/skills/66TripleTide.png",
	effects = {
		bossKnockbackImmune = true,
		knockbackDistance = 24,
		excludeIncapacitation = true,
		cleanseCount = 1,
		healFracOfMaxHp = 0.06
	},
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 7,
		maxTargets = 3,
		dmgMul = 1.1,
		hpBarLiftBars = 1,
		minRank = 3,
		releaseFrame = 9,
		kind = "TripleTide",
		maxAllies = 2,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.cleansing_wave = {
	description = "파도를 일으켜 최대 2명에게 각각 {atk.png} 110% 피해를 입히고 밀어냅니다. 파도가 지나간 아군 1명의 디버프를 제거합니다.",
	name = "정화의 파도",
	cooldown = 6,
	id = "cleansing_wave",
	category = "attack_disrupt_support",
	activationType = "active",
	owner = "수정술사",
	target = "enemy_ally",
	maxTargets = 2,
	nameEn = "Cleansing Wave",
	ownerKey = "수정술사",
	maxAllies = 1,
	icon = "src/sprites/icons/skills/64CleansingWave.png",
	effects = {
		excludeIncapacitation = true,
		knockbackDistance = 24,
		cleanseCount = 1,
		bossKnockbackImmune = true
	},
	runtime = {
		activeAnim = "attack3",
		suppressAttackWhileActive = true,
		cooldown = 6,
		dmgMul = 1.1,
		maxTargets = 2,
		minRank = 2,
		releaseFrame = 9,
		kind = "CleansingWave",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.spear_cyclone = {
	description = "창을 빠르게 회전시켜 주변 최대 3명에게 {atk.png} 25% 피해를 5회 입히고, 기본 공격 투사체를 최대 2개 쳐냅니다.",
	name = "투창 선풍",
	cooldown = 6,
	nameEn = "Spear Cyclone",
	category = "attack_defense",
	activationType = "active",
	duration = 1,
	target = "nearby_enemy_projectile",
	maxTargets = 3,
	maxProjectiles = 2,
	ownerKey = "글래디에이터",
	owner = "글래디에이터",
	id = "spear_cyclone",
	icon = "src/sprites/icons/skills/63SpearCyclone.png",
	runtime = {
		activeAnim = "attack2",
		duration = 1,
		cooldown = 6,
		invulnerableWhilePrecast = false,
		range = 40,
		dmgMul = 0.25,
		suppressAttackWhileActive = true,
		minRank = 3,
		maxTargets = 3,
		kind = "SpearCyclone",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.crushing_counter = {
	description = "방패로 기본 공격 1회를 막고, 창을 내려쳐 전방에 충격파를 일으킵니다. 최대 2명에게 각각 {atk.png} 150% 피해를 입힙니다.",
	name = "파쇄 반격",
	cooldown = 6,
	duration = "shield_animation",
	category = "defense_attack",
	activationType = "active",
	id = "crushing_counter",
	target = "self_enemy",
	maxTargets = 2,
	nameEn = "Crushing Counter",
	ownerKey = "스파르타",
	owner = "스파르타",
	icon = "src/sprites/icons/skills/62CrushingCounter.png",
	runtime = {
		activeAnim = "attack2",
		suppressAttackWhileActive = true,
		cooldown = 6,
		invulnerableWhilePrecast = false,
		maxTargets = 2,
		dmgMul = 1.5,
		minRank = 3,
		releaseFrame = 6,
		kind = "CrushingCounter",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.collision_drive = {
	description = "창으로 적을 밀어붙여 {atk.png} 130% 피해를 입힙니다. 다른 적과 충돌하면 두 적에게 각각 {atk.png} 60% 추가 피해를 입히고 0.5초간 기절시킵니다.",
	name = "충돌 돌진",
	cooldown = 5,
	duration = 0.5,
	category = "attack_disrupt",
	activationType = "active",
	id = "collision_drive",
	target = "enemy",
	maxTargets = 2,
	nameEn = "Collision Drive",
	ownerKey = "투기 창병",
	owner = "투기 창병",
	icon = "src/sprites/icons/skills/61CollisionDrive.png",
	runtime = {
		activeAnim = "attack2",
		duration = 0.5,
		stunDur = 0.5,
		cooldown = 5,
		range = 35,
		dmgMul = 1.3,
		releaseFrame = 4,
		minRank = 2,
		maxTargets = 2,
		kind = "CollisionDrive",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.burst_thrust = {
	description = "창끝에서 충격파를 터뜨려 전방 최대 2명에게 각각 {atk.png} 120% 피해를 입히고, 0.5초간 공중으로 띄웁니다.",
	name = "파열 찌르기",
	cooldown = 5,
	duration = 0.5,
	category = "attack_disrupt",
	activationType = "active",
	id = "burst_thrust",
	target = "enemy",
	maxTargets = 2,
	nameEn = "Burst Thrust",
	ownerKey = "고대 창병",
	owner = "고대 창병",
	icon = "src/sprites/icons/skills/60BurstThrust.png",
	runtime = {
		activeAnim = "attack2",
		duration = 0.5,
		cooldown = 5,
		dmgMul = 1.2,
		maxTargets = 2,
		minRank = 2,
		releaseFrame = 4,
		kind = "BurstThrust",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.concussion_bomb = {
	description = "대형 폭탄을 발사해 최대 3명에게 각각 {atk.png} 140% 피해를 입힙니다. 디버프 상태인 적은 0.5초간 기절합니다.",
	name = "충격 폭탄",
	cooldown = 7,
	id = "concussion_bomb",
	category = "attack_disrupt",
	activationType = "active",
	target = "enemy",
	maxTargets = 3,
	nameEn = "Concussion Bomb",
	ownerKey = "폭파대장",
	owner = "폭파대장",
	icon = "src/sprites/icons/skills/59ConcussionBomb.png",
	runtime = {
		activeAnim = "attack2",
		dmgMul = 1.4,
		stunDur = 0.5,
		cooldown = 7,
		maxTargets = 3,
		minRank = 3,
		releaseFrame = 4,
		kind = "ConcussionBomb",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.timed_keg = {
	description = "체력이 가장 높은 적에게 폭약통을 던집니다. 1.5초 후 폭발해 대상과 주변 최대 2명에게 각각 {atk.png} 110% 피해를 입히고 넉백시킵니다.",
	name = "시한 폭약통",
	cooldown = 6,
	duration = 1.5,
	category = "aoe_disrupt",
	activationType = "active",
	id = "timed_keg",
	target = "enemy",
	maxTargets = 3,
	nameEn = "Timed Keg",
	ownerKey = "척탄병",
	owner = "척탄병",
	icon = "src/sprites/icons/skills/57TimedKeg.png",
	runtime = {
		activeAnim = "attack2",
		duration = 1.5,
		cooldown = 6,
		dmgMul = 1.1,
		minRank = 2,
		maxTargets = 3,
		kind = "TimedKeg",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.blade_wave = {
	description = "전방으로 {atk.png} 100%의 칼날 파동을 날려 적에게 피해를 입힙니다.",
	name = "칼날 파동",
	cooldown = 4,
	ownerKey = "해적",
	category = "attack",
	activationType = "active",
	target = "enemy",
	nameEn = "Blade Wave",
	id = "blade_wave",
	owner = "해적",
	icon = "src/sprites/icons/skills/03BladeWave.png",
	runtime = {
		maxTargets = 2,
		kind = "BladeWave",
		cooldown = 4,
		dmgMul = 1,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		minRank = 2
	}
}
var_0_0.definitions.storm_blade = {
	description = "전방으로 {atk.png} 130%의 폭풍의 칼날을 날려 적에게 피해를 입힙니다.",
	name = "폭풍의 칼날",
	cooldown = 4,
	ownerKey = "해적왕",
	category = "attack",
	activationType = "active",
	target = "enemy",
	nameEn = "Storm Blade",
	id = "storm_blade",
	owner = "해적왕",
	icon = "src/sprites/icons/skills/04StormBlade.png",
	runtime = {
		maxTargets = 3,
		kind = "StormBlade",
		cooldown = 4,
		dmgMul = 1.3,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		minRank = 3
	}
}
var_0_0.definitions.twin_bolt = {
	description = "2개의 화살을 발사해 최대 2명의 적에게 각각 {atk.png} 80% 피해를 입힙니다.",
	name = "멀티샷",
	cooldown = 4,
	ownerKey = "MiniArcherMan02",
	category = "attack",
	activationType = "active",
	target = "enemy",
	nameEn = "Multishot",
	id = "twin_bolt",
	owner = "석궁수",
	icon = "src/sprites/icons/skills/05Multishot.png",
	runtime = {
		maxTargets = 2,
		kind = "TwinBolt",
		cooldown = 4,
		dmgMul = 0.8,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		minRank = 2
	}
}
var_0_0.definitions.triple_shot = {
	description = "3개의 화살을 발사해 최대 3명의 적에게 각각 {atk.png} 100% 피해를 입힙니다.",
	name = "트리플샷",
	cooldown = 4,
	ownerKey = "MiniArcherMan03",
	category = "attack",
	activationType = "active",
	target = "enemy",
	nameEn = "TripleShot",
	id = "triple_shot",
	owner = "장궁병",
	icon = "src/sprites/icons/skills/06TripleShot.png",
	runtime = {
		maxTargets = 3,
		kind = "TripleShot",
		cooldown = 4,
		dmgMul = 1,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		minRank = 3
	}
}
var_0_0.definitions.shackle_arrow = {
	description = "화살을 발사해 {atk.png} 120% 피해를 입히고, 대상에게 {spd.png} -35%를 부여합니다.",
	name = "족쇄 화살",
	cooldown = 4,
	duration = 3,
	category = "attack_disrupt",
	activationType = "active",
	ownerKey = "엘프 궁수",
	target = "enemy",
	nameEn = "Shackle Arrow",
	id = "shackle_arrow",
	owner = "엘프 궁수",
	icon = "src/sprites/icons/skills/27ShackleArrow.png",
	runtime = {
		moveSlowFrac = 0.35,
		duration = 3,
		cooldown = 4,
		dmgMul = 1.2,
		minRank = 2,
		maxTargets = 1,
		kind = "ShackleArrow",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.piercing_bullet = {
	description = "관통탄을 발사해 최대 2명에게 각각 {atk.png} 120% 피해를 입힙니다.",
	name = "관통탄",
	cooldown = 4,
	ownerKey = "레인저",
	category = "attack",
	activationType = "active",
	target = "enemy",
	nameEn = "Piercing Bullet",
	id = "piercing_bullet",
	owner = "레인저",
	icon = "src/sprites/icons/skills/28PiercingBullet.png",
	runtime = {
		maxTargets = 2,
		kind = "PiercingBullet",
		cooldown = 4,
		dmgMul = 1.2,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		minRank = 2
	}
}
var_0_0.definitions.gale_bow = {
	description = "빠르게 화살을 쏘아 최대 3명에게 각각 {atk.png} 85% 피해를 입히고, 대상에게 {spd.png} -25%를 부여합니다.",
	name = "질풍궁",
	cooldown = 4,
	duration = 2,
	category = "attack_disrupt",
	activationType = "active",
	ownerKey = "하이 엘프",
	target = "enemy",
	nameEn = "Gale Bow",
	id = "gale_bow",
	owner = "하이 엘프",
	icon = "src/sprites/icons/skills/29GaleBow.png",
	runtime = {
		moveSlowFrac = 0.25,
		duration = 2,
		cooldown = 4,
		dmgMul = 0.85,
		minRank = 3,
		maxTargets = 3,
		kind = "GaleBow",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.deadly_bullet = {
	description = "가장 체력이 높은 적을 조준해 {atk.png} 200% 피해를 입히고, 대상에게 받는 피해 +15%를 부여합니다.",
	name = "치명탄",
	cooldown = 5,
	duration = 3,
	category = "attack_debuff",
	activationType = "active",
	ownerKey = "데드아이",
	target = "enemy",
	nameEn = "Deadly Bullet",
	id = "deadly_bullet",
	owner = "데드아이",
	icon = "src/sprites/icons/skills/30DeadlyBullet.png",
	runtime = {
		dmgMul = 2,
		duration = 3,
		cooldown = 5,
		minRank = 3,
		maxTargets = 1,
		kind = "DeadlyBullet",
		damageTakenFrac = 0.15,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.precision_shot = {
	description = "적의 약점을 노려 {atk.png} 180% 피해를 입힙니다.",
	name = "정밀 사격",
	cooldown = 4,
	ownerKey = "순찰자",
	category = "attack",
	activationType = "active",
	target = "enemy",
	nameEn = "Precision Shot",
	id = "precision_shot",
	owner = "순찰자",
	icon = "src/sprites/icons/skills/07PrecisionShot.png",
	runtime = {
		maxTargets = 1,
		kind = "PrecisionShot",
		cooldown = 4,
		dmgMul = 1.8,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		minRank = 2
	}
}
var_0_0.definitions.down_strike = {
	description = "적을 강하게 내려쳐 {atk.png} 140% 피해를 입힙니다.",
	name = "내려치기",
	cooldown = 4,
	ownerKey = "MiniSpearMan02",
	category = "attack",
	activationType = "active",
	target = "enemy",
	nameEn = "Down Strike",
	id = "down_strike",
	owner = "창위병",
	icon = "src/sprites/icons/skills/09DownStrike.png",
	runtime = {
		maxTargets = 1,
		kind = "DownStrike",
		cooldown = 4,
		dmgMul = 1.4,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		minRank = 2
	}
}
var_0_0.definitions.bleeding_strike = {
	description = "적을 베어 3초 동안 출혈을 일으켜 매초 {atk.png} 20% 피해를 입힙니다.",
	name = "출혈 베기",
	cooldown = 4,
	duration = 3,
	category = "attack_dot",
	activationType = "active",
	ownerKey = "약탈자",
	target = "enemy",
	nameEn = "Bleeding Strike",
	id = "bleeding_strike",
	owner = "약탈자",
	icon = "src/sprites/icons/skills/11BleedingStrike.png",
	runtime = {
		bleedDur = 3,
		kind = "BleedingStrike",
		cooldown = 4,
		bleedTickInterval = 0.5,
		minRank = 2,
		maxTargets = 1,
		bleedDmgMulPerTick = 0.1,
		hitDmgMul = 0.5,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.blood_price = {
	description = "체력을 10% 소모하여 최대 2명의 적에게 {atk.png} 200% 피해를 입힙니다.",
	name = "피의 대가",
	cooldown = 4,
	ownerKey = "도끼 기병",
	category = "attack",
	activationType = "active",
	target = "enemy",
	nameEn = "Blood Price",
	id = "blood_price",
	owner = "도끼 기병",
	icon = "src/sprites/icons/skills/13BloodPrice.png",
	runtime = {
		dmgMul = 2,
		cooldown = 4,
		hpCostFrac = 0.1,
		minRank = 2,
		maxTargets = 2,
		kind = "BloodPrice",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.blood_rampage = {
	description = "체력을 15% 소모하여 전방의 최대 3명의 적에게 각각 {atk.png} 220% 피해를 입힙니다.",
	name = "피의 폭주",
	cooldown = 4,
	ownerKey = "무법 기병",
	category = "attack",
	activationType = "active",
	target = "enemy",
	nameEn = "Blood Rampage",
	id = "blood_rampage",
	owner = "무법 기병",
	icon = "src/sprites/icons/skills/15BloodRampage.png",
	runtime = {
		dmgMul = 2.2,
		cooldown = 4,
		hpCostFrac = 0.15,
		minRank = 2,
		maxTargets = 3,
		kind = "BloodPrice",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.impact_strike = {
	description = "적을 강하게 내려쳐 {atk.png} 170% 피해를 입히고, 대상에게 넉백을 가합니다.",
	name = "충격 타격",
	cooldown = 4,
	ownerKey = "MiniSpearMan03",
	category = "attack",
	activationType = "active",
	target = "enemy",
	nameEn = "Impact Strike",
	id = "impact_strike",
	owner = "근위병",
	icon = "src/sprites/icons/skills/10ImpactStrike.png",
	runtime = {
		maxTargets = 1,
		kind = "ImpactStrike",
		cooldown = 4,
		dmgMul = 1.7,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		minRank = 3
	}
}
var_0_0.definitions.savage_slash = {
	description = "적을 베어 {atk.png} 130% 피해를 입히고, 더 강한 출혈을 일으켜 매초 {atk.png} 30% 피해를 입힙니다. 이미 출혈 상태인 적에게는 {atk.png} 170% 피해를 입힙니다.",
	name = "잔혹 베기",
	cooldown = 4,
	duration = 3,
	category = "attack_dot",
	activationType = "active",
	ownerKey = "무법자",
	target = "enemy",
	nameEn = "Savage Slash",
	id = "savage_slash",
	owner = "무법자",
	icon = "src/sprites/icons/skills/12SavageSlash.png",
	runtime = {
		bleedDur = 3,
		kind = "SavageSlash",
		cooldown = 4,
		maxTargets = 1,
		hpBarLiftBars = 1,
		minRank = 3,
		bleedTickInterval = 0.5,
		bleedDmgMulPerTick = 0.15,
		hitDmgMul = 1.3,
		hitDmgMulBleeding = 1.7,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.ground_slam = {
	description = "지면을 강타해 전방에 충격파를 날려, 최대 2명의 적에게 각각 {atk.png} 60% 피해를 2회 입힙니다.",
	name = "지면 강타",
	cooldown = 4,
	duration = 0,
	category = "attack",
	activationType = "active",
	ownerKey = "돌격병",
	target = "enemy",
	nameEn = "Ground Slam",
	id = "ground_slam",
	owner = "돌격병",
	icon = "src/sprites/icons/skills/13GroundSlam.png",
	runtime = {
		maxTargets = 2,
		kind = "GroundSlam",
		cooldown = 4,
		dmgMul = 0.6,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		minRank = 2
	}
}
var_0_0.definitions.crushing_slam = {
	description = "지면을 강타해 전방에 충격파를 날려, 최대 2명의 적에게 각각 {atk.png} 70% 피해를 2회 입히고, 충격파에 맞은 적은 0.5초간 기절합니다.",
	name = "강습 강타",
	cooldown = 4,
	duration = 0,
	category = "attack",
	activationType = "active",
	ownerKey = "중기병",
	target = "enemy",
	nameEn = "Crushing Slam",
	id = "crushing_slam",
	owner = "중기병",
	icon = "src/sprites/icons/skills/14CrushingSlam.png",
	runtime = {
		dmgMul = 0.7,
		cooldown = 4,
		stunDur = 0.5,
		minRank = 2,
		maxTargets = 2,
		kind = "CrushingSlam",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.headshot = {
	description = "적의 약점을 조준해 {atk.png} 200% 피해를 입히고, {hp.png} 50% 이하인 적에게 추가 피해를 입힙니다.",
	name = "헤드샷",
	cooldown = 4,
	ownerKey = "명사수",
	category = "attack",
	activationType = "active",
	target = "enemy",
	nameEn = "Headshot",
	id = "headshot",
	owner = "명사수",
	icon = "src/sprites/icons/skills/08Headshot.png",
	runtime = {
		dmgMul = 2,
		bonusDmgMul = 0.5,
		cooldown = 4,
		minRank = 2,
		maxTargets = 1,
		kind = "Headshot",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.arcane_orb = {
	description = "마력 구체를 발사하여 주변 적들에게 {atk.png} 110% 광역 피해를 입힙니다.",
	name = "마력 구체",
	cooldown = 4,
	duration = 0,
	category = "attack",
	activationType = "active",
	ownerKey = "주술사",
	target = "enemy",
	nameEn = "Arcane Orb",
	id = "arcane_orb",
	owner = "주술사",
	icon = "src/sprites/icons/skills/15ArcaneOrb.png",
	runtime = {
		maxTargets = 3,
		kind = "ArcaneOrb",
		cooldown = 4,
		dmgMul = 1.1,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		minRank = 2
	}
}
var_0_0.definitions.binding_bolt = {
	description = "마탄을 발사해 {atk.png} 125% 피해를 입히고, 1초 동안 구속 시킵니다.",
	name = "구속 마탄",
	cooldown = 4,
	duration = 1,
	category = "attack_bind",
	activationType = "active",
	ownerKey = "엘프법사",
	target = "enemy",
	nameEn = "Binding Bolt",
	id = "binding_bolt",
	owner = "엘프 법사",
	icon = "src/sprites/icons/skills/39BindingBolt.png",
	runtime = {
		dmgMul = 1.25,
		duration = 1,
		cooldown = 4,
		bindDur = 1,
		minRank = 2,
		maxTargets = 1,
		kind = "BindingBolt",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.savage_tusk = {
	description = "멧돼지 1마리를 부릅니다. 멧돼지는 죽기 전까지 함께 싸우며, 이미 멧돼지가 있으면 체력을 회복시킵니다.",
	name = "거친 엄니",
	cooldown = 8,
	duration = 0,
	category = "summon",
	activationType = "active",
	ownerKey = "야생법사",
	target = "summon",
	nameEn = "Savage Tusk",
	id = "savage_tusk",
	owner = "야생 법사",
	icon = "src/sprites/icons/skills/40SavageTusk.png",
	runtime = {
		activeAnim = "attack",
		summonSkin = "Boar",
		cooldown = 8,
		summonSym = "멧돼지 (Boar.png)",
		duration = 1.05,
		showBarInBattle = true,
		alwaysShowBarInBattle = true,
		minRank = 2,
		hpBarLiftBars = 1,
		kind = "SavageTusk",
		summonFrame = 8,
		healAmount = 35,
		healFrac = 1,
		summonAtkFrac = 0.8,
		summonHpFrac = 0.75
	}
}
var_0_0.definitions.mountain_roar = {
	description = "곰 1마리를 부릅니다. 곰은 등장 시 주변 적의 공격을 끌어당기며, 이미 곰이 있으면 체력을 회복시킵니다.",
	name = "산짐승의 포효",
	cooldown = 10,
	duration = 0,
	category = "summon_disrupt",
	activationType = "active",
	ownerKey = "원시법사",
	target = "summon",
	nameEn = "Mountain Roar",
	id = "mountain_roar",
	owner = "원시 법사",
	icon = "src/sprites/icons/skills/42MountainRoar.png",
	runtime = {
		activeAnim = "attack",
		summonSkin = "Bear",
		cooldown = 10,
		summonSym = "곰 (Bear)",
		tauntRadius = 150,
		duration = 1.05,
		showBarInBattle = true,
		minRank = 3,
		hpBarLiftBars = 1,
		kind = "MountainRoar",
		summonFrame = 8,
		healAmount = 50,
		alwaysShowBarInBattle = true,
		summonAtkFrac = 0.9,
		summonHpFrac = 1.1
	}
}
var_0_0.definitions.binding_circle = {
	description = "결계를 펼쳐 최대 3명에게 각각 {atk.png} 90% 피해를 입히고, 1초 동안 구속 시킵니다.",
	name = "구속 결계",
	cooldown = 5,
	duration = 1.2,
	category = "attack_bind",
	activationType = "active",
	ownerKey = "엘프 현자",
	target = "enemy",
	nameEn = "Binding Circle",
	id = "binding_circle",
	owner = "엘프 현자",
	icon = "src/sprites/icons/skills/41BindingCircle.png",
	runtime = {
		dmgMul = 0.9,
		duration = 1.2,
		cooldown = 5,
		bindDur = 1,
		minRank = 3,
		maxTargets = 3,
		kind = "BindingCircle",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.arcane_core = {
	description = "2초 동안 주변 적에게 지속적으로 {atk.png} 40% 피해를 입히는 마력핵을 생성합니다.",
	name = "마력핵",
	cooldown = 4,
	duration = 2,
	category = "attack",
	activationType = "active",
	target = "enemy",
	nameEn = "Arcane Core",
	id = "arcane_core",
	owner = "대주술사",
	icon = "src/sprites/icons/skills/16ArcaneCore.png",
	effects = {},
	runtime = {
		dmgMul = 0.4,
		duration = 2,
		cooldown = 4,
		minRank = 2,
		maxTargets = 3,
		kind = "ArcaneCore",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.healing_sanctuary = {
	description = "치유 성역을 생성해, 3초 동안 범위 내 {hp.png} 가장 낮은 아군 3명의 {hp.png} 7%씩 회복시킵니다.",
	name = "치유 성역",
	cooldown = 4,
	duration = 3,
	category = "heal",
	activationType = "active",
	ownerKey = "대사제",
	target = "ally",
	nameEn = "Healing Sanctuary",
	id = "healing_sanctuary",
	owner = "대사제",
	icon = "src/sprites/icons/skills/18HealingSanctuary.png",
	runtime = {
		cooldown = 4,
		duration = 3,
		interval = 0.5,
		alwaysShowBarInBattle = true,
		range = 120,
		minRank = 2,
		maxTargets = 3,
		kind = "HealingSanctuary",
		hpBarLiftBars = 1,
		healFrac = 0.07,
		showBarInBattle = true
	}
}
var_0_0.definitions.battle_cry = {
	description = "함성을 질러 3초 동안 자신의 {atk.png} +20%를 얻고, 주변 적 최대 3명에게 {atk.png} -15%를 부여합니다.",
	name = "전투 함성",
	cooldown = 5,
	duration = 3,
	category = "buff_debuff",
	activationType = "active",
	ownerKey = "바이킹",
	target = "self_nearby_enemy",
	nameEn = "Battle Cry",
	id = "battle_cry",
	owner = "바이킹",
	icon = "src/sprites/icons/skills/32BattleCry.png",
	runtime = {
		activeAnim = "attack3",
		duration = 3,
		cooldown = 5,
		showBarInBattle = true,
		range = 140,
		minRank = 2,
		maxTargets = 3,
		kind = "BattleCry",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		atkDebuffFrac = 0.15,
		atkBuffFrac = 0.2
	}
}
var_0_0.definitions.berserk_axe = {
	description = "도끼를 던져 {atk.png} 160% 피해를 입히고, 3초 동안 자신의 {atk.png} +25%를 얻습니다.",
	name = "광전 도끼",
	cooldown = 5,
	duration = 3,
	category = "attack_buff",
	activationType = "active",
	ownerKey = "바바리안",
	target = "enemy",
	nameEn = "Berserk Axe",
	id = "berserk_axe",
	owner = "바바리안",
	icon = "src/sprites/icons/skills/34BerserkAxe.png",
	runtime = {
		activeAnim = "attack2",
		duration = 3,
		cooldown = 5,
		dmgMul = 1.6,
		range = 180,
		minRank = 3,
		maxTargets = 1,
		kind = "BerserkAxe",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		atkBuffFrac = 0.25
	}
}
var_0_0.definitions.blood_surge = {
	description = "와인을 마셔 혈기를 끌어올린 뒤, 2초 동안 가장 가까운 적을 집중 공격하며 {atk.png} 80% 피해를 3회 빠르게 입힙니다.",
	name = "혈기 충전",
	cooldown = 4,
	duration = 2,
	category = "attack",
	activationType = "active",
	ownerKey = "황제",
	target = "enemy",
	nameEn = "Blood Surge",
	id = "blood_surge",
	owner = "황제",
	icon = "src/sprites/icons/skills/19BloodSurge.png",
	runtime = {
		activeAnim = "attack",
		duration = 2,
		cooldown = 4,
		dmgMul = 0.8,
		range = 35,
		requireNearbyEnemy = true,
		preDuration = 0.6,
		minRank = 2,
		maxTargets = 1,
		kind = "BloodSurge",
		showBarInBattle = true,
		alwaysShowBarInBattle = true,
		preAnim = "drink",
		hitInterval = 0.42,
		hitCount = 3,
		hpBarLiftBars = 1
	}
}
var_0_0.definitions.emperors_roar = {
	description = "포효하며 힘을 끌어올린 뒤, 적에게 {atk.png} 300% 피해를 입힙니다.",
	name = "패왕의 포효",
	cooldown = 5,
	ownerKey = "검황",
	category = "attack",
	activationType = "active",
	target = "enemy",
	nameEn = "Emperor's Roar",
	id = "emperors_roar",
	owner = "검황",
	icon = "src/sprites/icons/skills/20EmperorsRoar.png",
	runtime = {
		activeAnim = "attack",
		dmgMul = 3,
		cooldown = 5,
		hpBarLiftBars = 1,
		range = 35,
		requireNearbyEnemy = true,
		preDuration = 1.2,
		minRank = 3,
		maxTargets = 1,
		kind = "EmperorsRoar",
		preAnim = "attack2",
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.piercing_thrust = {
	description = "전방을 찔러 최대 2명의 적에게 {atk.png} 120% 관통 피해를 입힙니다.",
	name = "관통 찌르기",
	cooldown = 4,
	ownerKey = "베테랑",
	category = "attack",
	activationType = "active",
	target = "enemy",
	nameEn = "Piercing Thrust",
	id = "piercing_thrust",
	owner = "베테랑",
	icon = "src/sprites/icons/skills/21PiercingThrust.png",
	runtime = {
		maxTargets = 2,
		kind = "PiercingThrust",
		cooldown = 4,
		dmgMul = 1.2,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		minRank = 2
	}
}
var_0_0.definitions.earth_crush = {
	description = "지면을 강타해 최대 2명의 적에게 각각 {atk.png} 160% 피해를 입힙니다.",
	name = "대지 격파",
	cooldown = 4,
	duration = 0,
	category = "attack",
	activationType = "active",
	ownerKey = "장군",
	target = "enemy",
	nameEn = "Earth Crush",
	id = "earth_crush",
	owner = "장군",
	icon = "src/sprites/icons/skills/22EarthCrush.png",
	runtime = {
		maxTargets = 2,
		kind = "EarthCrush",
		cooldown = 4,
		dmgMul = 1.6,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		minRank = 2
	}
}
var_0_0.definitions.guard_thrust = {
	description = "적을 찔러 {atk.png} 120% 피해를 입히고, 대상에게 {aspd.png} -15%를 부여합니다.",
	name = "견제 찌르기",
	cooldown = 4,
	duration = 2,
	category = "attack_debuff",
	activationType = "active",
	ownerKey = "엘프병사",
	target = "enemy",
	nameEn = "Guard Thrust",
	id = "guard_thrust",
	owner = "엘프병사",
	icon = "src/sprites/icons/skills/23GuardThrust.png",
	runtime = {
		showBarInBattle = true,
		duration = 2,
		cooldown = 4,
		dmgMul = 1.2,
		minRank = 2,
		maxTargets = 1,
		kind = "GuardThrust",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		aspdSlowFrac = 0.15
	}
}
var_0_0.definitions.heavy_kick = {
	description = "적을 걷어차 {atk.png} 100% 피해를 입히고, 대상에게 {spd.png} -30%를 부여합니다.",
	name = "묵직한 발차기",
	cooldown = 4,
	duration = 4,
	category = "attack_disrupt",
	activationType = "active",
	ownerKey = "사수 병사",
	target = "enemy",
	nameEn = "Heavy Kick",
	id = "heavy_kick",
	owner = "사수 병사",
	icon = "src/sprites/icons/skills/24HeavyKick.png",
	runtime = {
		moveSlowFrac = 0.3,
		duration = 4,
		cooldown = 4,
		dmgMul = 1,
		minRank = 2,
		maxTargets = 1,
		kind = "HeavyKick",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.beast_kick = {
	description = "적 2명을 걷어차 각각 {atk.png} 110% 피해를 입히고, 상대에게 {spd.png} -40%를 부여합니다.",
	name = "야수 발차기",
	cooldown = 4,
	duration = 3,
	category = "attack_disrupt",
	activationType = "active",
	ownerKey = "바그",
	target = "enemy",
	nameEn = "Beast Kick",
	id = "beast_kick",
	owner = "바그",
	icon = "src/sprites/icons/skills/26BeastKick.png",
	runtime = {
		moveSlowFrac = 0.4,
		duration = 3,
		cooldown = 4,
		dmgMul = 1.1,
		minRank = 3,
		maxTargets = 2,
		kind = "BeastKick",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.guardblade = {
	description = "마법검으로 최대 2명에게 {atk.png} 100% 피해를 입히고, 2초 동안 받는 피해 -20%.",
	name = "수호검",
	cooldown = 4,
	duration = 2,
	category = "attack_defense",
	activationType = "active",
	ownerKey = "엘프기사",
	target = "enemy",
	nameEn = "Guardblade",
	id = "guardblade",
	owner = "엘프기사",
	icon = "src/sprites/icons/skills/25Guardblade.png",
	runtime = {
		dmgMul = 1,
		duration = 2,
		cooldown = 4,
		kind = "Guardblade",
		minRank = 3,
		maxTargets = 2,
		damageReduction = 0.2,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.assault_guard = {
	description = "적을 공격해 {atk.png} 130% 피해를 입히고, 2초 동안 받는 피해 -20%.",
	name = "강습 방어",
	cooldown = 4,
	duration = 2,
	category = "attack_defense",
	activationType = "active",
	ownerKey = "엘프 기병",
	target = "enemy",
	nameEn = "Assault Guard",
	id = "assault_guard",
	owner = "엘프 기병",
	icon = "src/sprites/icons/skills/35AssaultGuard.png",
	runtime = {
		dmgMul = 1.3,
		duration = 2,
		cooldown = 4,
		kind = "AssaultGuard",
		minRank = 2,
		maxTargets = 1,
		damageReduction = 0.2,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.assault_barrier = {
	description = "날개짓으로 최대 2명에게 각각 {atk.png} 100% 피해를 입히고, 자신과 체력이 가장 낮은 주변 아군 1명이 받는 피해 -20%.",
	name = "강습 방벽",
	cooldown = 5,
	duration = 2.5,
	category = "attack_defense",
	activationType = "active",
	ownerKey = "하이 엘프 기병",
	target = "enemy_ally_self",
	nameEn = "Assault Barrier",
	id = "assault_barrier",
	owner = "하이 엘프 기병",
	icon = "src/sprites/icons/skills/37AssaultBarrier.png",
	runtime = {
		activeAnim = "fly",
		duration = 2.5,
		cooldown = 5,
		kind = "AssaultBarrier",
		range = 160,
		allyRange = 120,
		dmgMul = 1,
		minRank = 2,
		maxTargets = 2,
		damageReduction = 0.2,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.life_sap = {
	description = "적을 후려쳐 {atk.png} 115% 피해를 입히고, 자신의 최대 체력 8%를 회복합니다.",
	name = "생명의 수액",
	cooldown = 5,
	duration = 0,
	category = "attack_heal",
	activationType = "active",
	ownerKey = "엔트",
	target = "enemy_self",
	nameEn = "Life Sap",
	id = "life_sap",
	owner = "엔트",
	icon = "src/sprites/icons/skills/43LifeSap.png",
	runtime = {
		healFracOfMaxHp = 0.08,
		duration = 0.5,
		cooldown = 5,
		dmgMul = 1.15,
		minRank = 2,
		maxTargets = 1,
		kind = "LifeSap",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.root_drain = {
	description = "뿌리로 주변 최대 3명에게 각각 {atk.png} 80% 피해를 입히고, 피해를 입힌 적 1명당 자신의 최대 체력 4%를 회복합니다.",
	name = "뿌리 흡수",
	cooldown = 5,
	duration = 0,
	category = "attack_heal",
	activationType = "active",
	ownerKey = "엔트로드",
	target = "nearby_enemy_self",
	nameEn = "Root Drain",
	id = "root_drain",
	owner = "엔트로드",
	icon = "src/sprites/icons/skills/45RootDrain.png",
	runtime = {
		activeAnim = "attack2",
		duration = 0.64,
		cooldown = 5,
		dmgMul = 0.8,
		healFracOfMaxHp = 0.04,
		radius = 110,
		minRank = 3,
		maxTargets = 3,
		kind = "RootDrain",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.volt_saw = {
	description = "전류가 흐르는 톱으로 적을 베어 {atk.png} 150% 피해를 입히고, 주변 최대 2명에게 각각 {atk.png} 80% 피해를 입힙니다.",
	name = "전류 톱날",
	cooldown = 4,
	duration = 0,
	category = "attack_aoe",
	activationType = "active",
	ownerKey = "빅터",
	target = "enemy",
	nameEn = "Volt Saw",
	id = "volt_saw",
	owner = "빅터",
	icon = "src/sprites/icons/skills/44VoltSaw.png",
	runtime = {
		dmgMul = 1.5,
		duration = 0.4,
		splashDmgMul = 0.8,
		cooldown = 4,
		minRank = 2,
		maxTargets = 3,
		kind = "VoltSaw",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.overload_discharge = {
	description = "전류를 폭주시켜 최대 4명에게 각각 {atk.png} 90% 피해를 입힙니다. 이 피해로 적을 처치하면 가까운 적 최대 2명에게 각각 {atk.png} 45% 피해가 전이됩니다.",
	name = "폭주 방전",
	cooldown = 5,
	duration = 0,
	category = "attack_chain",
	activationType = "active",
	ownerKey = "프랑켄슈타인",
	target = "enemy",
	nameEn = "Overload Discharge",
	id = "overload_discharge",
	owner = "프랑켄슈타인",
	icon = "src/sprites/icons/skills/46OverloadDischarge.png",
	runtime = {
		transferTargets = 2,
		duration = 0.4,
		cooldown = 5,
		dmgMul = 0.9,
		transferDmgMul = 0.45,
		minRank = 3,
		maxTargets = 4,
		kind = "OverloadDischarge",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.assault_strike = {
	description = "적을 강하게 공격해 {atk.png} 160% 피해를 입히고, 짧게 기절시킵니다.",
	name = "강습 타격",
	cooldown = 4,
	duration = 0.5,
	category = "attack_disrupt",
	activationType = "active",
	ownerKey = "야만 기병",
	target = "enemy",
	nameEn = "Assault Strike",
	id = "assault_strike",
	owner = "야만 기병",
	icon = "src/sprites/icons/skills/36AssaultStrike.png",
	runtime = {
		dmgMul = 1.6,
		duration = 0.5,
		stunDur = 0.5,
		cooldown = 4,
		minRank = 2,
		maxTargets = 1,
		kind = "AssaultStrike",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.frenzied_assault = {
	description = "적을 강하게 공격해 {atk.png} 180% 피해를 입히고, 짧게 기절시킨 뒤 2초 동안 자신의 {aspd.png} +20%를 얻습니다.",
	name = "광폭 강습",
	cooldown = 5,
	duration = 2,
	category = "attack_disrupt_buff",
	activationType = "active",
	ownerKey = "광폭 기병",
	target = "enemy",
	nameEn = "Frenzied Assault",
	id = "frenzied_assault",
	owner = "광폭 기병",
	icon = "src/sprites/icons/skills/38FrenziedAssault.png",
	runtime = {
		dmgMul = 1.8,
		duration = 2,
		stunDur = 0.5,
		aspdBonus = 0.2,
		cooldown = 5,
		minRank = 3,
		maxTargets = 1,
		kind = "FrenziedAssault",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.healing_field = {
	description = "치유의 장을 생성해, 3초 동안 범위 내 {hp.png} 가장 낮은 아군 2명의 {hp.png} 5%씩 회복시킵니다.",
	name = "치유의 장",
	cooldown = 4,
	duration = 3,
	category = "heal",
	activationType = "active",
	ownerKey = "치유술사",
	target = "ally",
	nameEn = "Healing Field",
	id = "healing_field",
	owner = "치유술사",
	icon = "src/sprites/icons/skills/17HealingField.png",
	runtime = {
		cooldown = 4,
		duration = 3,
		interval = 0.5,
		alwaysShowBarInBattle = true,
		range = 120,
		minRank = 2,
		maxTargets = 2,
		kind = "HealingField",
		hpBarLiftBars = 1,
		healFrac = 0.05,
		showBarInBattle = true
	}
}
var_0_0.definitions.guardian_challenge = {
	description = "3초간 주변 최대 3명이 자신을 공격하게 하고, 받는 피해 -30%.",
	name = "수호 도발",
	cooldown = 5,
	duration = 3,
	category = "taunt_defense",
	activationType = "active",
	ownerKey = "엘프 보병",
	target = "nearby_enemy_self",
	nameEn = "Guardian Challenge",
	id = "guardian_challenge",
	owner = "엘프 보병",
	icon = "src/sprites/icons/skills/31GuardianChallenge.png",
	runtime = {
		kind = "GuardianChallenge",
		duration = 3,
		cooldown = 5,
		range = 140,
		minRank = 2,
		maxTargets = 3,
		damageReduction = 0.3,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.ironwall_challenge = {
	description = "3초간 주변 최대 4명이 자신을 공격하게 하고, 방패를 들어 1.5초 동안 모든 피해를 막습니다.",
	name = "철벽 도발",
	cooldown = 5,
	duration = 3,
	category = "defense_taunt",
	activationType = "active",
	ownerKey = "하이 엘프 보병",
	target = "self_nearby_enemy",
	nameEn = "Ironwall Challenge",
	id = "ironwall_challenge",
	owner = "하이 엘프 보병",
	icon = "src/sprites/icons/skills/33IronwallChallenge.png",
	runtime = {
		activeAnim = "shield",
		duration = 3,
		cooldown = 5,
		blockDuration = 1.5,
		range = 160,
		minRank = 3,
		maxTargets = 4,
		kind = "IronwallChallenge",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.two_faced_card = {
	description = "무작위 카드를 사용합니다. [장난] 적의 다음 기본 공격을 다른 적에게. [응원] 아군 1명 즉시 기본 공격.",
	name = "양면 카드",
	cooldown = 6,
	duration = 0,
	category = "trick_disrupt_support",
	activationType = "active",
	id = "two_faced_card",
	target = "enemy_ally",
	maxTargets = 1,
	nameEn = "Two Faced Card",
	ownerKey = "Jester",
	owner = "광대",
	icon = "src/sprites/icons/skills/47TwoFacedCard.png",
	runtime = {
		activeAnim = "attack2",
		maxTargets = 1,
		cooldown = 6,
		alwaysShowBarInBattle = true,
		minRank = 1,
		releaseFrame = 3,
		kind = "TwoFacedCard",
		hpBarLiftBars = 1,
		animationSpeed = 0.12,
		showBarInBattle = true
	}
}
var_0_0.definitions.charm = {
	description = "보스를 제외한 가장 가까운 적 1명을 3초간 아군으로 만듭니다.",
	name = "현혹",
	cooldown = 7,
	duration = 3,
	category = "disrupt_trick",
	activationType = "active",
	id = "charm",
	target = "enemy",
	maxTargets = 1,
	nameEn = "Charm",
	ownerKey = "Trickster",
	owner = "트릭스터",
	icon = "src/sprites/icons/skills/48Charm.png",
	runtime = {
		activeAnim = "attack2",
		duration = 3,
		cooldown = 7,
		maxTargets = 1,
		alwaysShowBarInBattle = true,
		minRank = 2,
		releaseFrame = 3,
		kind = "Charm",
		hpBarLiftBars = 1,
		animationSpeed = 0.1,
		showBarInBattle = true
	}
}
var_0_0.definitions.mass_charm = {
	description = "보스를 제외한 가장 가까운 적 최대 2명을 3초간 아군으로 만듭니다.",
	name = "집단 현혹",
	cooldown = 10,
	duration = 3,
	category = "disrupt_trick",
	activationType = "active",
	id = "mass_charm",
	target = "enemy",
	maxTargets = 2,
	nameEn = "Mass Charm",
	ownerKey = "Illusionist",
	owner = "환술사",
	icon = "src/sprites/icons/skills/50MassCharm.png",
	runtime = {
		activeAnim = "attack2",
		duration = 3,
		cooldown = 10,
		maxTargets = 2,
		alwaysShowBarInBattle = true,
		minRank = 3,
		releaseFrame = 6,
		kind = "MassCharm",
		hpBarLiftBars = 1,
		animationSpeed = 0.1,
		showBarInBattle = true
	}
}
var_0_0.definitions.ferret_courier = {
	description = "페럿이 아군 1명에게 카드를 배달해 남은 스킬 쿨타임을 2초 줄입니다.",
	name = "페럿 배달부",
	cooldown = 7,
	duration = 0,
	category = "support",
	activationType = "active",
	id = "ferret_courier",
	target = "ally",
	maxTargets = 1,
	nameEn = "Ferret Courier",
	ownerKey = "FerretTamer",
	owner = "페럿 조련사",
	icon = "src/sprites/icons/skills/49FerretCourier.png",
	runtime = {
		activeAnim = "attack2",
		duration = 0,
		cooldown = 7,
		kind = "FerretCourier",
		ringmasterAnimationSpeed = 0.16,
		ringmasterEmergenceFrame = 7,
		releaseFrame = 3,
		minRank = 2,
		maxTargets = 1,
		cooldownReduction = 2,
		alwaysShowBarInBattle = true,
		hpBarLiftBars = 1,
		animationSpeed = 0.12,
		showBarInBattle = true
	}
}
var_0_0.definitions.ferret_express = {
	description = "페럿이 아군 최대 2명에게 카드를 배달해 남은 스킬 쿨타임을 2초 줄입니다.",
	name = "페럿 특급배달",
	cooldown = 8,
	duration = 0,
	category = "support",
	activationType = "active",
	id = "ferret_express",
	target = "ally",
	maxTargets = 2,
	nameEn = "Ferret Express",
	ownerKey = "Ringmaster",
	owner = "서커스 단장",
	icon = "src/sprites/icons/skills/51FerretExpress.png",
	runtime = {
		activeAnim = "attack2",
		duration = 0,
		cooldown = 8,
		kind = "FerretCourier",
		ringmasterAnimationSpeed = 0.16,
		ringmasterEmergenceFrame = 7,
		releaseFrame = 3,
		minRank = 3,
		maxTargets = 2,
		cooldownReduction = 2,
		alwaysShowBarInBattle = true,
		hpBarLiftBars = 1,
		animationSpeed = 0.12,
		showBarInBattle = true
	}
}
var_0_0.byOwner = {
	샐러맨더 = {
		"flame_descent"
	},
	Salamander = {
		"flame_descent"
	},
	["샐러맨더 (Salamander)"] = {
		"flame_descent"
	},
	화령술사 = {
		"flame_call"
	},
	Flamecaller = {
		"flame_call"
	},
	["화령술사 (Flamecaller)"] = {
		"flame_call"
	},
	운디네 = {
		"triple_tide"
	},
	Undine = {
		"triple_tide"
	},
	["운디네 (Undine)"] = {
		"triple_tide"
	},
	["초원 기병"] = {
		"call_of_the_plains"
	},
	후사르 = {
		"victory_signal"
	},
	Hussar = {
		"victory_signal"
	},
	["후사르 (Hussar)"] = {
		"victory_signal"
	},
	["윙드 후사르"] = {
		"wings_of_victory"
	},
	["Winged Hussar"] = {
		"wings_of_victory"
	},
	["윙드 후사르 (Winged Hussar)"] = {
		"wings_of_victory"
	},
	["Steppe Cavalry"] = {
		"call_of_the_plains"
	},
	["초원 기병 (Steppe Cavalry)"] = {
		"call_of_the_plains"
	},
	켄타우로스 = {
		"wild_stampede"
	},
	Centaur = {
		"wild_stampede"
	},
	["켄타우로스 (Centaur)"] = {
		"wild_stampede"
	},
	켄타로우스 = {
		"wild_stampede"
	},
	["켄타로우스 (Centaur)"] = {
		"wild_stampede"
	},
	수정술사 = {
		"cleansing_wave"
	},
	["Crystal Mage"] = {
		"cleansing_wave"
	},
	["수정술사 (Crystal Mage)"] = {
		"cleansing_wave"
	},
	Joker = {
		"two_faced_card"
	},
	J = {
		"two_faced_card"
	},
	Jester = {
		"two_faced_card"
	},
	광대 = {
		"two_faced_card"
	},
	Trickster = {
		"charm"
	},
	트릭스터 = {
		"charm"
	},
	["트릭스터 (Trickster)"] = {
		"charm"
	},
	Illusionist = {
		"mass_charm"
	},
	환술사 = {
		"mass_charm"
	},
	["환술사 (Illusionist)"] = {
		"mass_charm"
	},
	FerretTamer = {
		"ferret_courier"
	},
	["Ferret Tamer"] = {
		"ferret_courier"
	},
	["페럿 조련사"] = {
		"ferret_courier"
	},
	["페럿 조련사 (Ferret Tamer)"] = {
		"ferret_courier"
	},
	Ringmaster = {
		"ferret_express"
	},
	["서커스 단장"] = {
		"ferret_express"
	},
	["서커스 단장 (Ringmaster)"] = {
		"ferret_express"
	},
	병사 = {
		"guard_stance"
	},
	MiniSwordMan02 = {
		"guard_stance"
	},
	기사 = {
		"counter_stance"
	},
	MiniSwordMan03 = {
		"counter_stance"
	},
	해적 = {
		"blade_wave"
	},
	해적왕 = {
		"storm_blade"
	},
	석궁수 = {
		"twin_bolt"
	},
	MiniArcherMan02 = {
		"twin_bolt"
	},
	장궁병 = {
		"triple_shot"
	},
	MiniArcherMan03 = {
		"triple_shot"
	},
	엘프궁수 = {
		"shackle_arrow"
	},
	["엘프 궁수"] = {
		"shackle_arrow"
	},
	레인저 = {
		"piercing_bullet"
	},
	["하이 엘프"] = {
		"gale_bow"
	},
	데드아이 = {
		"deadly_bullet"
	},
	순찰자 = {
		"precision_shot"
	},
	명사수 = {
		"headshot"
	},
	창위병 = {
		"down_strike"
	},
	MiniSpearMan02 = {
		"down_strike"
	},
	약탈자 = {
		"bleeding_strike"
	},
	["도끼 기병"] = {
		"blood_price"
	},
	["무법 기병"] = {
		"blood_rampage"
	},
	무법자 = {
		"savage_slash"
	},
	엔트 = {
		"life_sap"
	},
	엔트로드 = {
		"root_drain"
	},
	돌격병 = {
		"ground_slam"
	},
	중기병 = {
		"crushing_slam"
	},
	주술사 = {
		"arcane_orb"
	},
	야생법사 = {
		"savage_tusk"
	},
	["야생 법사"] = {
		"savage_tusk"
	},
	원시법사 = {
		"mountain_roar"
	},
	["원시 법사"] = {
		"mountain_roar"
	},
	대주술사 = {
		"arcane_core"
	},
	치유술사 = {
		"healing_field"
	},
	대사제 = {
		"healing_sanctuary"
	},
	바이킹 = {
		"battle_cry"
	},
	바바리안 = {
		"berserk_axe"
	},
	근위병 = {
		"impact_strike"
	},
	MiniSpearMan03 = {
		"impact_strike"
	},
	황제 = {
		"blood_surge"
	},
	빅터 = {
		"volt_saw"
	},
	프랑켄슈타인 = {
		"overload_discharge"
	},
	검황 = {
		"emperors_roar"
	},
	베테랑 = {
		"piercing_thrust"
	},
	장군 = {
		"earth_crush"
	},
	엘프병사 = {
		"guard_thrust"
	},
	["사수 병사"] = {
		"heavy_kick"
	},
	성기사 = {
		"holy_barrier"
	},
	템플러 = {
		"guardian_oath"
	},
	염투사 = {
		"flame_eruption"
	},
	플레어 = {
		"combustion_blast"
	},
	화포수 = {
		"suppressive_round"
	},
	캐노니어 = {
		"shatter_cannon"
	},
	척탄병 = {
		"timed_keg"
	},
	폭파대장 = {
		"concussion_bomb"
	},
	["고대 창병"] = {
		"burst_thrust"
	},
	["투기 창병"] = {
		"collision_drive"
	},
	글래디에이터 = {
		"spear_cyclone"
	},
	Gladiator = {
		"spear_cyclone"
	},
	["글래디에이터 (Gladiator)"] = {
		"spear_cyclone"
	},
	스파르타 = {
		"crushing_counter"
	},
	Spartan = {
		"crushing_counter"
	},
	["스파르타 (Spartan)"] = {
		"crushing_counter"
	},
	바그 = {
		"beast_kick"
	},
	엘프기사 = {
		"guardblade"
	},
	엘프법사 = {
		"binding_bolt"
	},
	["엘프 법사"] = {
		"binding_bolt"
	},
	["엘프 현자"] = {
		"binding_circle"
	},
	["엘프 기병"] = {
		"assault_guard"
	},
	엘프기병 = {
		"assault_guard"
	},
	["야만 기병"] = {
		"assault_strike"
	},
	["광폭 기병"] = {
		"frenzied_assault"
	},
	["엘프 보병"] = {
		"guardian_challenge"
	},
	["하이 엘프 보병"] = {
		"ironwall_challenge"
	}
}
var_0_0.byOwner.심판관 = {
	"judgments_radiance"
}
var_0_0.byOwner.Arbiter = {
	"judgments_radiance"
}
var_0_0.byOwner["심판관 (Arbiter)"] = {
	"judgments_radiance"
}
var_0_0.byOwner.빙결여제 = {
	"glacial_shatter"
}
var_0_0.byOwner["Frost Empress"] = {
	"glacial_shatter"
}
var_0_0.byOwner["빙결여제 (Frost Empress)"] = {
	"glacial_shatter"
}
var_0_0.byOwner.암검사 = {
	"shadow_harvest"
}
var_0_0.byOwner["Dark Swordsman"] = {
	"shadow_harvest"
}
var_0_0.byOwner["암검사 (Dark Swordsman)"] = {
	"shadow_harvest"
}
var_0_0.byOwner.마그누스 = {
	"ruin_tremor"
}
var_0_0.byOwner.Magnus = {
	"ruin_tremor"
}
var_0_0.byOwner["마그누스 (Magnus)"] = {
	"ruin_tremor"
}
var_0_0.byOwner.암흑사수 = {
	"arrow_rain"
}
var_0_0.byOwner["Dark Archer"] = {
	"arrow_rain"
}
var_0_0.byOwner["암흑사수 (Dark Archer)"] = {
	"arrow_rain"
}
var_0_0.byOwner.레이븐 = {
	"twilight_barrage"
}
var_0_0.byOwner.Raven = {
	"twilight_barrage"
}
var_0_0.byOwner["레이븐 (Raven)"] = {
	"twilight_barrage"
}
var_0_0.byOwner.환영사수 = {
	"hollow_arrow"
}
var_0_0.byOwner["Illusion Archer"] = {
	"hollow_arrow"
}
var_0_0.byOwner["환영사수 (Illusion Archer)"] = {
	"hollow_arrow"
}
var_0_0.byOwner.미라지 = {
	"devouring_arrow"
}
var_0_0.byOwner.Mirage = {
	"devouring_arrow"
}
var_0_0.byOwner["미라지 (Mirage)"] = {
	"devouring_arrow"
}
var_0_0.byOwner.흑위병 = {
	"chain_spear"
}
var_0_0.byOwner["Black Guard"] = {
	"chain_spear"
}
var_0_0.byOwner["흑위병 (Black Guard)"] = {
	"chain_spear"
}
var_0_0.byOwner.처형자 = {
	"execution_chain"
}
var_0_0.byOwner.Executioner = {
	"execution_chain"
}
var_0_0.byOwner["처형자 (Executioner)"] = {
	"execution_chain"
}
var_0_0.byOwner.망령병 = {
	"spectral_rush"
}
var_0_0.byOwner["Wraith Spearman"] = {
	"spectral_rush"
}
var_0_0.byOwner["망령병 (Wraith Spearman)"] = {
	"spectral_rush"
}
var_0_0.byOwner.SpearRevenant = {
	"spectral_return"
}
var_0_0.byOwner.심연술사 = {
	"abyssal_ray"
}
var_0_0.byOwner["Abyss Mage"] = {
	"abyssal_ray"
}
var_0_0.byOwner["심연술사 (Abyss Mage)"] = {
	"abyssal_ray"
}
var_0_0.byOwner.아크메이지 = {
	"arcane_unleashing"
}
var_0_0.byOwner.Archmage = {
	"arcane_unleashing"
}
var_0_0.byOwner["아크메이지 (Archmage)"] = {
	"arcane_unleashing"
}
var_0_0.byOwner.흑마법사 = {
	"life_siphon"
}
var_0_0.byOwner["Dark Mage"] = {
	"life_siphon"
}
var_0_0.byOwner["흑마법사 (Dark Mage)"] = {
	"life_siphon"
}
var_0_0.byOwner.워록 = {
	"soul_feast"
}
var_0_0.byOwner.Warlock = {
	"soul_feast"
}
var_0_0.byOwner["워록 (Warlock)"] = {
	"soul_feast"
}
var_0_0.byOwner.나이트메어 = {
	"nightmare_flurry"
}
var_0_0.byOwner.Nightmare = {
	"nightmare_flurry"
}
var_0_0.byOwner["나이트메어 (Nightmare)"] = {
	"nightmare_flurry"
}
var_0_0.byOwner.아포칼립스 = {
	"cataclysm_flurry"
}
var_0_0.byOwner.LegendarySpecter = {
	"shrink_ray"
}
var_0_0.byOwner.Specter = {
	"shrink_ray"
}
var_0_0.byOwner["스펙터 (Specter)"] = {
	"shrink_ray"
}
var_0_0.byOwner.CrownRevenant = {
	"titans_gaze"
}
var_0_0.byOwner.팬텀 = {
	"flash_barrage"
}
var_0_0.byOwner.Phantom = {
	"flash_barrage"
}
var_0_0.byOwner["팬텀 (Phantom)"] = {
	"flash_barrage"
}
var_0_0.byOwner.성배기사 = {
	"grail_swordfall"
}
var_0_0.byOwner["Grail Knight"] = {
	"grail_swordfall"
}
var_0_0.byOwner["성배기사 (Grail Knight)"] = {
	"grail_swordfall"
}
var_0_0.byOwner.큐피드 = {
	"salvation_arrow"
}
var_0_0.byOwner.Cupid = {
	"salvation_arrow"
}
var_0_0.byOwner["큐피드 (Cupid)"] = {
	"salvation_arrow"
}
var_0_0.byOwner.세라프 = {
	"celestial_return"
}
var_0_0.byOwner.Seraph = {
	"celestial_return"
}
var_0_0.byOwner["세라프 (Seraph)"] = {
	"celestial_return"
}
var_0_0.byOwner.은빛사수 = {
	"chain_snipe"
}
var_0_0.byOwner["Silver Sniper"] = {
	"chain_snipe"
}
var_0_0.byOwner["은빛사수 (Silver Sniper)"] = {
	"chain_snipe"
}
var_0_0.byOwner.이클립스 = {
	"eclipse_snipe"
}
var_0_0.byOwner.Eclipse = {
	"eclipse_snipe"
}
var_0_0.byOwner["이클립스 (Eclipse)"] = {
	"eclipse_snipe"
}
var_0_0.byOwner.예지술사 = {
	"spell_echo"
}
var_0_0.byOwner.Diviner = {
	"spell_echo"
}
var_0_0.byOwner["예지술사 (Diviner)"] = {
	"spell_echo"
}
var_0_0.byOwner.예언자 = {
	"prophetic_mirror"
}
var_0_0.byOwner.Oracle = {
	"prophetic_mirror"
}
var_0_0.byOwner["예언자 (Oracle)"] = {
	"prophetic_mirror"
}
var_0_0.byOwner.리치 = {
	"call_of_the_dead"
}
var_0_0.byOwner.Lich = {
	"call_of_the_dead"
}
var_0_0.byOwner["리치 (Lich)"] = {
	"call_of_the_dead"
}
var_0_0.byOwner.리치로드 = {
	"legion_of_the_dead"
}
var_0_0.byOwner["Lich Lord"] = {
	"legion_of_the_dead"
}
var_0_0.byOwner["리치로드 (Lich Lord)"] = {
	"legion_of_the_dead"
}
var_0_0.byOwner.실반 = {
	"bramble_prison"
}
var_0_0.byOwner.Sylvan = {
	"bramble_prison"
}
var_0_0.byOwner["실반 (Sylvan)"] = {
	"bramble_prison"
}
var_0_0.byOwner["숲의 심장"] = {
	"elderwood_prison"
}
var_0_0.byOwner.Wildheart = {
	"elderwood_prison"
}
var_0_0.byOwner["숲의 심장 (Wildheart)"] = {
	"elderwood_prison"
}
var_0_0.byOwner.페이즈 = {
	"dimensional_duel"
}
var_0_0.byOwner.Phase = {
	"dimensional_duel"
}
var_0_0.byOwner["페이즈 (Phase)"] = {
	"dimensional_duel"
}
var_0_0.byOwner.대천사 = {
	"heavens_judgment"
}
var_0_0.byOwner.Archangel = {
	"heavens_judgment"
}
var_0_0.byOwner["대천사 (Archangel)"] = {
	"heavens_judgment"
}
var_0_0.byOwner.도미니온 = {
	"absolute_judgment"
}
var_0_0.byOwner.Dominion = {
	"absolute_judgment"
}
var_0_0.byOwner["도미니온 (Dominion)"] = {
	"absolute_judgment"
}
var_0_0.byOwner.타락천사 = {
	"rupturing_descent"
}
var_0_0.byOwner["Fallen Angel"] = {
	"rupturing_descent"
}
var_0_0.byOwner["타락천사 (Fallen Angel)"] = {
	"rupturing_descent"
}
var_0_0.byOwner["파멸의 천사"] = {
	"doom_resonance"
}
var_0_0.byOwner["Angel of Ruin"] = {
	"doom_resonance"
}
var_0_0.byOwner["파멸의 천사 (Angel of Ruin)"] = {
	"doom_resonance"
}
var_0_0.byOwner.크로노워커 = {
	"temporal_assault"
}
var_0_0.byOwner["Chrono Walker"] = {
	"temporal_assault"
}
var_0_0.byOwner["크로노워커 (Chrono Walker)"] = {
	"temporal_assault"
}
var_0_0.byOwner.천공병 = {
	"rift_arsenal"
}
var_0_0.byOwner["Sky Spearman"] = {
	"rift_arsenal"
}
var_0_0.byOwner["천공병 (Sky Spearman)"] = {
	"rift_arsenal"
}
var_0_0.byOwner.발키리 = {
	"celestial_arsenal"
}
var_0_0.byOwner.Valkyrie = {
	"celestial_arsenal"
}
var_0_0.byOwner["발키리 (Valkyrie)"] = {
	"celestial_arsenal"
}
var_0_0.byOwner.창술사 = {
	"lance_extension"
}
var_0_0.byOwner["Spear Adept"] = {
	"lance_extension"
}
var_0_0.byOwner["창술사 (Spear Adept)"] = {
	"lance_extension"
}
var_0_0.byOwner.랜스마스터 = {
	"peerless_spear"
}
var_0_0.byOwner["Lance Master"] = {
	"peerless_spear"
}
var_0_0.byOwner["랜스마스터 (Lance Master)"] = {
	"peerless_spear"
}
var_0_0.byOwner.백기사 = {
	"guardian_swordfall"
}
var_0_0.byOwner["White Knight"] = {
	"guardian_swordfall"
}
var_0_0.byOwner["백기사 (White Knight)"] = {
	"guardian_swordfall"
}
var_0_0.byOwner.듀라한 = {
	"flash_slash"
}
var_0_0.byOwner.Dullahan = {
	"flash_slash"
}
var_0_0.byOwner["듀라한 (Dullahan)"] = {
	"flash_slash"
}
var_0_0.byOwner.리퍼 = {
	"reapers_dance"
}
var_0_0.byOwner.Reaper = {
	"reapers_dance"
}
var_0_0.byOwner["리퍼 (Reaper)"] = {
	"reapers_dance"
}
var_0_0.byOwner.소울리퍼 = {
	"soul_severance"
}
var_0_0.byOwner["Soul Reaper"] = {
	"soul_severance"
}
var_0_0.byOwner["소울리퍼 (Soul Reaper)"] = {
	"soul_severance"
}
var_0_0.byOwner.Apocalypse = {
	"cataclysm_flurry"
}
var_0_0.byOwner["아포칼립스 (Apocalypse)"] = {
	"cataclysm_flurry"
}
var_0_0.byOwner.월광사제 = {
	"moonlit_memory"
}
var_0_0.byOwner["Moon Priestess"] = {
	"moonlit_memory"
}
var_0_0.byOwner["월광사제 (Moon Priestess)"] = {
	"moonlit_memory"
}
var_0_0.byOwner["초승달 여왕"] = {
	"crescent_requital"
}
var_0_0.byOwner["Crescent Queen"] = {
	"crescent_requital"
}
var_0_0.byOwner["초승달 여왕 (Crescent Queen)"] = {
	"crescent_requital"
}
var_0_0.byOwner.게이즈 = {
	"arcane_collapse"
}
var_0_0.byOwner.Gaze = {
	"arcane_collapse"
}
var_0_0.byOwner["게이즈 (Gaze)"] = {
	"arcane_collapse"
}
var_0_0.byOwner.마검사 = {
	"spellblade_vortex"
}
var_0_0.byOwner["Magic Swordsman"] = {
	"spellblade_vortex"
}
var_0_0.byOwner["마검사 (Magic Swordsman)"] = {
	"spellblade_vortex"
}
var_0_0.byOwner.서리칼날 = {
	"frost_spike"
}
var_0_0.byOwner.Frostblade = {
	"frost_spike"
}
var_0_0.byOwner["서리칼날 (Frostblade)"] = {
	"frost_spike"
}
var_0_0.byOwner.RarePaladin = {
	"condemning_strike"
}
var_0_0.byOwner.Paladin = {
	"condemning_strike"
}
var_0_0.byOwner["팔라딘 (Paladin)"] = {
	"condemning_strike"
}
var_0_0.byOwner["하이 엘프 기병"] = {
	"assault_barrier"
}

local function var_0_2(arg_1_0)
	local var_1_0 = {}
	local var_1_1 = {}
	local var_1_2 = arg_1_0 and tonumber(arg_1_0.rank)
	local var_1_3 = {}

	for iter_1_0, iter_1_1 in ipairs({
		"subclass",
		"subclassKey",
		"subclassName",
		"name",
		"id",
		"sym"
	}) do
		local var_1_4 = arg_1_0 and arg_1_0[iter_1_1]

		if var_1_4 then
			table.insert(var_1_3, var_1_4)
		end
	end

	for iter_1_2, iter_1_3 in ipairs(var_1_3) do
		local var_1_5 = iter_1_3 and var_0_0.byOwner[iter_1_3]

		if var_1_5 then
			for iter_1_4, iter_1_5 in ipairs(var_1_5) do
				local var_1_6 = var_0_0.definitions[iter_1_5]
				local var_1_7 = var_1_6 and var_1_6.runtime and tonumber(var_1_6.runtime.minRank)

				if var_1_6 and not var_1_1[iter_1_5] and (not var_1_2 or not var_1_7 or var_1_7 <= var_1_2) then
					var_1_1[iter_1_5] = true

					table.insert(var_1_0, iter_1_5)
				end
			end
		end
	end

	return var_1_0
end

function var_0_0.get(arg_2_0)
	return var_0_0.definitions[arg_2_0]
end

function var_0_0.getSkillsForUnit(arg_3_0)
	local var_3_0 = {}

	for iter_3_0, iter_3_1 in ipairs(var_0_2(arg_3_0)) do
		table.insert(var_3_0, var_0_0.definitions[iter_3_1])
	end

	return var_3_0
end

function var_0_0.isTimedAttackSkill(arg_4_0)
	local var_4_0 = arg_4_0 and arg_4_0.runtime
	local var_4_1 = arg_4_0 and arg_4_0.category or ""

	return arg_4_0 and arg_4_0.activationType == "active" and var_4_0 ~= nil and (tonumber(var_4_0.cooldown or arg_4_0.cooldown) or 0) > 0 and (var_4_1:find("attack", 1, true) ~= nil or var_4_1:sub(1, 4) == "aoe_")
end

function var_0_0.hasAttackSkillForUnit(arg_5_0)
	for iter_5_0, iter_5_1 in ipairs(var_0_0.getSkillsForUnit(arg_5_0)) do
		if var_0_0.isTimedAttackSkill(iter_5_1) then
			return true
		end
	end

	return false
end

function var_0_0.isAttackSkillKind(arg_6_0)
	for iter_6_0, iter_6_1 in pairs(var_0_0.definitions) do
		if iter_6_1.runtime and iter_6_1.runtime.kind == arg_6_0 and var_0_0.isTimedAttackSkill(iter_6_1) then
			return true
		end
	end

	return false
end

function var_0_0.hasActiveSkillForUnit(arg_7_0)
	for iter_7_0, iter_7_1 in ipairs(var_0_0.getSkillsForUnit(arg_7_0)) do
		local var_7_0 = iter_7_1 and iter_7_1.runtime
		local var_7_1 = tonumber(var_7_0 and var_7_0.cooldown or iter_7_1 and iter_7_1.cooldown or 0) or 0

		if iter_7_1 and iter_7_1.activationType == "active" and var_7_0 and var_7_1 > 0 then
			return true
		end
	end

	return false
end

function var_0_0.applyToUnit(arg_8_0)
	if not arg_8_0 then
		return nil
	end

	local var_8_0 = var_0_0.getSkillsForUnit(arg_8_0)

	if #var_8_0 == 0 then
		arg_8_0.skillDefs = nil
		arg_8_0.primarySkillDef = nil
		arg_8_0.skillName = nil
		arg_8_0.skillDesc = nil
		arg_8_0.skillIcon = nil
		arg_8_0.showSkillBarInBattle = nil
		arg_8_0.alwaysShowBarInBattle = nil
		arg_8_0.hpBarLiftBars = nil

		return nil
	end

	arg_8_0.skillDefs = var_8_0
	arg_8_0.primarySkillDef = var_8_0[1]

	local var_8_1 = _G.currentGameLang or "ko"

	arg_8_0.skillName = var_0_1.getSkillName(var_8_0[1].id, var_8_0[1].name, var_8_1)
	arg_8_0.skillDesc = var_0_1.getSkillDesc(var_8_0[1].id, var_8_0[1].description, var_8_1)
	arg_8_0.skillIcon = var_8_0[1].icon
	arg_8_0.showSkillBarInBattle = var_8_0[1].runtime and var_8_0[1].runtime.showBarInBattle == true or nil
	arg_8_0.alwaysShowBarInBattle = var_8_0[1].runtime and var_8_0[1].runtime.alwaysShowBarInBattle == true or nil
	arg_8_0.hpBarLiftBars = var_8_0[1].runtime and var_8_0[1].runtime.hpBarLiftBars or nil

	return var_8_0
end

return var_0_0
