local var_0_0 = {}
local var_0_1 = require("src.data.language")

var_0_0.definitions = {
	guard_stance = {
		cooldown = 4,
		icon = "src/sprites/icons/skills/01GuardStance.png",
		category = "defense",
		activationType = "active",
		target = "self",
		name = "방어 태세",
		nameEn = "Guard Stance",
		id = "guard_stance",
		ownerKey = "MiniSwordMan02",
		owner = "병사",
		description = "방패를 들어 1초 동안 모든 피해를 막습니다.",
		duration = 1,
		effects = {
			invulnerable = true
		},
		runtime = {
			cooldown = 4,
			invulnerableWhileActive = true,
			invulnerableWhilePrecast = false,
			triggerRangePadding = 6,
			requireNearbyEnemy = true,
			preDuration = 0,
			minRank = 2,
			suppressAttackWhileActive = true,
			kind = "ShieldWall",
			activeAnim = "shield",
			hpBarLiftBars = 1,
			alwaysShowBarInBattle = true,
			showBarInBattle = true,
			duration = 1
		}
	},
	counter_stance = {
		cooldown = 4,
		icon = "src/sprites/icons/skills/02CounterStance.png",
		category = "defense_counter",
		activationType = "active",
		target = "self",
		name = "반격 태세",
		nameEn = "Counter Stance",
		id = "counter_stance",
		ownerKey = "MiniSwordMan03",
		owner = "기사",
		description = "방패를 들어 1.5초 동안 모든 피해를 막고, 공격한 적에게 피해를 반사합니다.",
		duration = 1.5,
		effects = {
			invulnerable = true,
			reflect = true
		},
		runtime = {
			cooldown = 4,
			invulnerableWhileActive = true,
			invulnerableWhilePrecast = false,
			triggerRangePadding = 6,
			requireNearbyEnemy = true,
			preDuration = 0,
			minRank = 3,
			suppressAttackWhileActive = true,
			kind = "CounterStance",
			activeAnim = "shield",
			reflectFrac = 1,
			hpBarLiftBars = 1,
			alwaysShowBarInBattle = true,
			showBarInBattle = true,
			duration = 1.5
		}
	}
}
var_0_0.definitions.blade_wave = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/03BladeWave.png",
	category = "attack",
	activationType = "active",
	target = "enemy",
	name = "칼날 파동",
	nameEn = "Blade Wave",
	id = "blade_wave",
	ownerKey = "해적",
	owner = "해적",
	description = "전방으로 {atk.png} 100%의 칼날 파동을 날려 적에게 피해를 입힙니다.",
	runtime = {
		cooldown = 4,
		minRank = 2,
		kind = "BladeWave",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		maxTargets = 2,
		dmgMul = 1,
		showBarInBattle = true
	}
}
var_0_0.definitions.storm_blade = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/04StormBlade.png",
	category = "attack",
	activationType = "active",
	target = "enemy",
	name = "폭풍의 칼날",
	nameEn = "Storm Blade",
	id = "storm_blade",
	ownerKey = "해적왕",
	owner = "해적왕",
	description = "전방으로 {atk.png} 130%의 폭풍의 칼날을 날려 적에게 피해를 입힙니다.",
	runtime = {
		cooldown = 4,
		minRank = 3,
		kind = "StormBlade",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		maxTargets = 3,
		dmgMul = 1.3,
		showBarInBattle = true
	}
}
var_0_0.definitions.twin_bolt = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/05Multishot.png",
	category = "attack",
	activationType = "active",
	target = "enemy",
	name = "멀티샷",
	nameEn = "Multishot",
	id = "twin_bolt",
	ownerKey = "MiniArcherMan02",
	owner = "석궁수",
	description = "2개의 화살을 발사해 최대 2명의 적에게 각각 {atk.png} 80% 피해를 입힙니다.",
	runtime = {
		cooldown = 4,
		minRank = 2,
		kind = "TwinBolt",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		maxTargets = 2,
		dmgMul = 0.8,
		showBarInBattle = true
	}
}
var_0_0.definitions.triple_shot = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/06TripleShot.png",
	category = "attack",
	activationType = "active",
	target = "enemy",
	name = "트리플샷",
	nameEn = "TripleShot",
	id = "triple_shot",
	ownerKey = "MiniArcherMan03",
	owner = "장궁병",
	description = "3개의 화살을 발사해 최대 3명의 적에게 각각 {atk.png} 100% 피해를 입힙니다.",
	runtime = {
		cooldown = 4,
		minRank = 3,
		kind = "TripleShot",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		maxTargets = 3,
		dmgMul = 1,
		showBarInBattle = true
	}
}
var_0_0.definitions.shackle_arrow = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/27ShackleArrow.png",
	category = "attack_disrupt",
	activationType = "active",
	target = "enemy",
	name = "족쇄 화살",
	nameEn = "Shackle Arrow",
	id = "shackle_arrow",
	ownerKey = "엘프 궁수",
	owner = "엘프 궁수",
	description = "화살을 발사해 {atk.png} 120% 피해를 입히고, 대상에게 {spd.png} -35%를 부여합니다.",
	duration = 3,
	runtime = {
		cooldown = 4,
		dmgMul = 1.2,
		moveSlowFrac = 0.35,
		maxTargets = 1,
		minRank = 2,
		kind = "ShackleArrow",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		duration = 3
	}
}
var_0_0.definitions.piercing_bullet = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/28PiercingBullet.png",
	category = "attack",
	activationType = "active",
	target = "enemy",
	name = "관통탄",
	nameEn = "Piercing Bullet",
	id = "piercing_bullet",
	ownerKey = "레인저",
	owner = "레인저",
	description = "관통탄을 발사해 최대 2명에게 각각 {atk.png} 120% 피해를 입힙니다.",
	runtime = {
		cooldown = 4,
		minRank = 2,
		kind = "PiercingBullet",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		maxTargets = 2,
		dmgMul = 1.2,
		showBarInBattle = true
	}
}
var_0_0.definitions.gale_bow = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/29GaleBow.png",
	category = "attack_disrupt",
	activationType = "active",
	target = "enemy",
	name = "질풍궁",
	nameEn = "Gale Bow",
	id = "gale_bow",
	ownerKey = "하이 엘프",
	owner = "하이 엘프",
	description = "빠르게 화살을 쏘아 최대 3명에게 각각 {atk.png} 85% 피해를 입히고, 대상에게 {spd.png} -25%를 부여합니다.",
	duration = 2,
	runtime = {
		cooldown = 4,
		dmgMul = 0.85,
		moveSlowFrac = 0.25,
		maxTargets = 3,
		minRank = 3,
		kind = "GaleBow",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		duration = 2
	}
}
var_0_0.definitions.deadly_bullet = {
	cooldown = 5,
	icon = "src/sprites/icons/skills/30DeadlyBullet.png",
	category = "attack_debuff",
	activationType = "active",
	target = "enemy",
	name = "치명탄",
	nameEn = "Deadly Bullet",
	id = "deadly_bullet",
	ownerKey = "데드아이",
	owner = "데드아이",
	description = "가장 체력이 높은 적을 조준해 {atk.png} 200% 피해를 입히고, 대상에게 받는 피해 +15%를 부여합니다.",
	duration = 3,
	runtime = {
		cooldown = 5,
		dmgMul = 2,
		maxTargets = 1,
		minRank = 3,
		damageTakenFrac = 0.15,
		kind = "DeadlyBullet",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		duration = 3
	}
}
var_0_0.definitions.precision_shot = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/07PrecisionShot.png",
	category = "attack",
	activationType = "active",
	target = "enemy",
	name = "정밀 사격",
	nameEn = "Precision Shot",
	id = "precision_shot",
	ownerKey = "순찰자",
	owner = "순찰자",
	description = "적의 약점을 노려 {atk.png} 180% 피해를 입힙니다.",
	runtime = {
		cooldown = 4,
		minRank = 2,
		kind = "PrecisionShot",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		maxTargets = 1,
		dmgMul = 1.8,
		showBarInBattle = true
	}
}
var_0_0.definitions.down_strike = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/09DownStrike.png",
	category = "attack",
	activationType = "active",
	target = "enemy",
	name = "내려치기",
	nameEn = "Down Strike",
	id = "down_strike",
	ownerKey = "MiniSpearMan02",
	owner = "창위병",
	description = "적을 강하게 내려쳐 {atk.png} 140% 피해를 입힙니다.",
	runtime = {
		cooldown = 4,
		minRank = 2,
		kind = "DownStrike",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		maxTargets = 1,
		dmgMul = 1.4,
		showBarInBattle = true
	}
}
var_0_0.definitions.bleeding_strike = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/11BleedingStrike.png",
	category = "attack_dot",
	activationType = "active",
	target = "enemy",
	name = "출혈 베기",
	nameEn = "Bleeding Strike",
	id = "bleeding_strike",
	ownerKey = "약탈자",
	owner = "약탈자",
	description = "적을 베어 3초 동안 출혈을 일으켜 매초 {atk.png} 20% 피해를 입힙니다.",
	duration = 3,
	runtime = {
		cooldown = 4,
		showBarInBattle = true,
		alwaysShowBarInBattle = true,
		maxTargets = 1,
		minRank = 2,
		kind = "BleedingStrike",
		hpBarLiftBars = 1,
		bleedTickInterval = 0.5,
		bleedDur = 3,
		bleedDmgMulPerTick = 0.1,
		hitDmgMul = 0.5
	}
}
var_0_0.definitions.blood_price = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/13BloodPrice.png",
	category = "attack",
	activationType = "active",
	target = "enemy",
	name = "피의 대가",
	nameEn = "Blood Price",
	id = "blood_price",
	ownerKey = "도끼 기병",
	owner = "도끼 기병",
	description = "체력을 10% 소모하여 최대 2명의 적에게 {atk.png} 200% 피해를 입힙니다.",
	runtime = {
		cooldown = 4,
		dmgMul = 2,
		hpCostFrac = 0.1,
		maxTargets = 2,
		minRank = 2,
		kind = "BloodPrice",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.blood_rampage = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/15BloodRampage.png",
	category = "attack",
	activationType = "active",
	target = "enemy",
	name = "피의 폭주",
	nameEn = "Blood Rampage",
	id = "blood_rampage",
	ownerKey = "무법 기병",
	owner = "무법 기병",
	description = "체력을 15% 소모하여 전방의 최대 3명의 적에게 각각 {atk.png} 220% 피해를 입힙니다.",
	runtime = {
		cooldown = 4,
		dmgMul = 2.2,
		hpCostFrac = 0.15,
		maxTargets = 3,
		minRank = 2,
		kind = "BloodPrice",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.impact_strike = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/10ImpactStrike.png",
	category = "attack",
	activationType = "active",
	target = "enemy",
	name = "충격 타격",
	nameEn = "Impact Strike",
	id = "impact_strike",
	ownerKey = "MiniSpearMan03",
	owner = "근위병",
	description = "적을 강하게 내려쳐 {atk.png} 170% 피해를 입히고, 대상에게 넉백을 가합니다.",
	runtime = {
		cooldown = 4,
		minRank = 3,
		kind = "ImpactStrike",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		maxTargets = 1,
		dmgMul = 1.7,
		showBarInBattle = true
	}
}
var_0_0.definitions.savage_slash = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/12SavageSlash.png",
	category = "attack_dot",
	activationType = "active",
	target = "enemy",
	name = "잔혹 베기",
	nameEn = "Savage Slash",
	id = "savage_slash",
	ownerKey = "무법자",
	owner = "무법자",
	description = "적을 베어 {atk.png} 130% 피해를 입히고, 더 강한 출혈을 일으켜 매초 {atk.png} 30% 피해를 입힙니다. 이미 출혈 상태인 적에게는 {atk.png} 170% 피해를 입힙니다.",
	duration = 3,
	runtime = {
		cooldown = 4,
		hitDmgMulBleeding = 1.7,
		showBarInBattle = true,
		alwaysShowBarInBattle = true,
		maxTargets = 1,
		minRank = 3,
		kind = "SavageSlash",
		hpBarLiftBars = 1,
		bleedTickInterval = 0.5,
		bleedDur = 3,
		bleedDmgMulPerTick = 0.15,
		hitDmgMul = 1.3
	}
}
var_0_0.definitions.ground_slam = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/13GroundSlam.png",
	category = "attack",
	activationType = "active",
	target = "enemy",
	name = "지면 강타",
	nameEn = "Ground Slam",
	id = "ground_slam",
	ownerKey = "돌격병",
	owner = "돌격병",
	description = "지면을 강타해 전방에 충격파를 날려, 최대 2명의 적에게 각각 {atk.png} 60% 피해를 2회 입힙니다.",
	duration = 0,
	runtime = {
		cooldown = 4,
		minRank = 2,
		kind = "GroundSlam",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		maxTargets = 2,
		dmgMul = 0.6,
		showBarInBattle = true
	}
}
var_0_0.definitions.crushing_slam = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/14CrushingSlam.png",
	category = "attack",
	activationType = "active",
	target = "enemy",
	name = "강습 강타",
	nameEn = "Crushing Slam",
	id = "crushing_slam",
	ownerKey = "중기병",
	owner = "중기병",
	description = "지면을 강타해 전방에 충격파를 날려, 최대 2명의 적에게 각각 {atk.png} 70% 피해를 2회 입히고, 충격파에 맞은 적은 0.5초간 기절합니다.",
	duration = 0,
	runtime = {
		cooldown = 4,
		minRank = 2,
		maxTargets = 2,
		dmgMul = 0.7,
		kind = "CrushingSlam",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		stunDur = 0.5
	}
}
var_0_0.definitions.headshot = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/08Headshot.png",
	category = "attack",
	activationType = "active",
	target = "enemy",
	name = "헤드샷",
	nameEn = "Headshot",
	id = "headshot",
	ownerKey = "명사수",
	owner = "명사수",
	description = "적의 약점을 조준해 {atk.png} 200% 피해를 입히고, {hp.png} 50% 이하인 적에게 추가 피해를 입힙니다.",
	runtime = {
		cooldown = 4,
		minRank = 2,
		kind = "Headshot",
		maxTargets = 1,
		dmgMul = 2,
		bonusDmgMul = 0.5,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true
	}
}
var_0_0.definitions.arcane_orb = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/15ArcaneOrb.png",
	category = "attack",
	activationType = "active",
	target = "enemy",
	name = "마력 구체",
	nameEn = "Arcane Orb",
	id = "arcane_orb",
	ownerKey = "주술사",
	owner = "주술사",
	description = "마력 구체를 발사하여 주변 적들에게 {atk.png} 110% 광역 피해를 입힙니다.",
	duration = 0,
	runtime = {
		cooldown = 4,
		minRank = 2,
		kind = "ArcaneOrb",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		maxTargets = 3,
		dmgMul = 1.1,
		showBarInBattle = true
	}
}
var_0_0.definitions.binding_bolt = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/39BindingBolt.png",
	category = "attack_bind",
	activationType = "active",
	target = "enemy",
	name = "구속 마탄",
	nameEn = "Binding Bolt",
	id = "binding_bolt",
	ownerKey = "엘프법사",
	owner = "엘프 법사",
	description = "마탄을 발사해 {atk.png} 125% 피해를 입히고, 1초 동안 구속 시킵니다.",
	duration = 1,
	runtime = {
		cooldown = 4,
		dmgMul = 1.25,
		maxTargets = 1,
		minRank = 2,
		bindDur = 1,
		kind = "BindingBolt",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		duration = 1
	}
}
var_0_0.definitions.savage_tusk = {
	cooldown = 8,
	icon = "src/sprites/icons/skills/40SavageTusk.png",
	category = "summon",
	activationType = "active",
	target = "summon",
	name = "거친 엄니",
	nameEn = "Savage Tusk",
	id = "savage_tusk",
	ownerKey = "야생법사",
	owner = "야생 법사",
	description = "멧돼지 1마리를 부릅니다. 멧돼지는 죽기 전까지 함께 싸우며, 이미 멧돼지가 있으면 체력을 회복시킵니다.",
	duration = 0,
	runtime = {
		cooldown = 8,
		kind = "SavageTusk",
		healAmount = 35,
		duration = 1.05,
		showBarInBattle = true,
		summonFrame = 8,
		minRank = 2,
		healFrac = 1,
		summonAtkFrac = 0.8,
		summonHpFrac = 0.75,
		hpBarLiftBars = 1,
		summonSkin = "Boar",
		alwaysShowBarInBattle = true,
		summonSym = "멧돼지 (Boar.png)",
		activeAnim = "attack"
	}
}
var_0_0.definitions.mountain_roar = {
	cooldown = 10,
	icon = "src/sprites/icons/skills/42MountainRoar.png",
	category = "summon_disrupt",
	activationType = "active",
	target = "summon",
	name = "산짐승의 포효",
	nameEn = "Mountain Roar",
	id = "mountain_roar",
	ownerKey = "원시법사",
	owner = "원시 법사",
	description = "곰 1마리를 부릅니다. 곰은 등장 시 주변 적의 공격을 끌어당기며, 이미 곰이 있으면 체력을 회복시킵니다.",
	duration = 0,
	runtime = {
		cooldown = 10,
		kind = "MountainRoar",
		minRank = 3,
		tauntRadius = 150,
		duration = 1.05,
		summonFrame = 8,
		healAmount = 50,
		showBarInBattle = true,
		summonAtkFrac = 0.9,
		summonHpFrac = 1.1,
		hpBarLiftBars = 1,
		summonSkin = "Bear",
		alwaysShowBarInBattle = true,
		summonSym = "곰 (Bear)",
		activeAnim = "attack"
	}
}
var_0_0.definitions.binding_circle = {
	cooldown = 5,
	icon = "src/sprites/icons/skills/41BindingCircle.png",
	category = "attack_bind",
	activationType = "active",
	target = "enemy",
	name = "구속 결계",
	nameEn = "Binding Circle",
	id = "binding_circle",
	ownerKey = "엘프 현자",
	owner = "엘프 현자",
	description = "결계를 펼쳐 최대 3명에게 각각 {atk.png} 90% 피해를 입히고, 1초 동안 구속 시킵니다.",
	duration = 1.2,
	runtime = {
		cooldown = 5,
		dmgMul = 0.9,
		maxTargets = 3,
		minRank = 3,
		bindDur = 1,
		kind = "BindingCircle",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		duration = 1.2
	}
}
var_0_0.definitions.arcane_core = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/16ArcaneCore.png",
	category = "attack",
	activationType = "active",
	target = "enemy",
	name = "마력핵",
	nameEn = "Arcane Core",
	id = "arcane_core",
	owner = "대주술사",
	description = "2초 동안 주변 적에게 지속적으로 {atk.png} 40% 피해를 입히는 마력핵을 생성합니다.",
	duration = 2,
	effects = {},
	runtime = {
		cooldown = 4,
		dmgMul = 0.4,
		maxTargets = 3,
		minRank = 2,
		kind = "ArcaneCore",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		duration = 2
	}
}
var_0_0.definitions.healing_sanctuary = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/18HealingSanctuary.png",
	category = "heal",
	activationType = "active",
	target = "ally",
	name = "치유 성역",
	nameEn = "Healing Sanctuary",
	id = "healing_sanctuary",
	ownerKey = "대사제",
	owner = "대사제",
	description = "치유 성역을 생성해, 3초 동안 범위 내 {hp.png} 가장 낮은 아군 3명의 {hp.png} 7%씩 회복시킵니다.",
	duration = 3,
	runtime = {
		interval = 0.5,
		range = 120,
		cooldown = 4,
		maxTargets = 3,
		minRank = 2,
		healFrac = 0.07,
		kind = "HealingSanctuary",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		duration = 3
	}
}
var_0_0.definitions.battle_cry = {
	cooldown = 5,
	icon = "src/sprites/icons/skills/32BattleCry.png",
	category = "buff_debuff",
	activationType = "active",
	target = "self_nearby_enemy",
	name = "전투 함성",
	nameEn = "Battle Cry",
	id = "battle_cry",
	ownerKey = "바이킹",
	owner = "바이킹",
	description = "함성을 질러 3초 동안 자신의 {atk.png} +20%를 얻고, 주변 적 최대 3명에게 {atk.png} -15%를 부여합니다.",
	duration = 3,
	runtime = {
		cooldown = 5,
		range = 140,
		atkBuffFrac = 0.2,
		maxTargets = 3,
		activeAnim = "attack3",
		atkDebuffFrac = 0.15,
		minRank = 2,
		kind = "BattleCry",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		duration = 3
	}
}
var_0_0.definitions.berserk_axe = {
	cooldown = 5,
	icon = "src/sprites/icons/skills/34BerserkAxe.png",
	category = "attack_buff",
	activationType = "active",
	target = "enemy",
	name = "광전 도끼",
	nameEn = "Berserk Axe",
	id = "berserk_axe",
	ownerKey = "바바리안",
	owner = "바바리안",
	description = "도끼를 던져 {atk.png} 160% 피해를 입히고, 3초 동안 자신의 {atk.png} +25%를 얻습니다.",
	duration = 3,
	runtime = {
		cooldown = 5,
		range = 180,
		dmgMul = 1.6,
		atkBuffFrac = 0.25,
		activeAnim = "attack2",
		maxTargets = 1,
		minRank = 3,
		kind = "BerserkAxe",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		duration = 3
	}
}
var_0_0.definitions.blood_surge = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/19BloodSurge.png",
	category = "attack",
	activationType = "active",
	target = "enemy",
	name = "혈기 충전",
	nameEn = "Blood Surge",
	id = "blood_surge",
	ownerKey = "황제",
	owner = "황제",
	description = "와인을 마셔 혈기를 끌어올린 뒤, 2초 동안 가장 가까운 적을 집중 공격하며 {atk.png} 80% 피해를 3회 빠르게 입힙니다.",
	duration = 2,
	runtime = {
		cooldown = 4,
		dmgMul = 0.8,
		maxTargets = 1,
		triggerRangePadding = 6,
		requireNearbyEnemy = true,
		preDuration = 0.6,
		minRank = 2,
		activeAnim = "attack",
		kind = "BloodSurge",
		showBarInBattle = true,
		alwaysShowBarInBattle = true,
		hpBarLiftBars = 1,
		preAnim = "drink",
		hitInterval = 0.42,
		hitCount = 3,
		duration = 2
	}
}
var_0_0.definitions.emperors_roar = {
	cooldown = 5,
	icon = "src/sprites/icons/skills/20EmperorsRoar.png",
	category = "attack",
	activationType = "active",
	target = "enemy",
	name = "패왕의 포효",
	nameEn = "Emperor's Roar",
	id = "emperors_roar",
	ownerKey = "검황",
	owner = "검황",
	description = "포효하며 힘을 끌어올린 뒤, 적에게 {atk.png} 300% 피해를 입힙니다.",
	runtime = {
		cooldown = 5,
		dmgMul = 3,
		preDuration = 1.2,
		triggerRangePadding = 6,
		requireNearbyEnemy = true,
		maxTargets = 1,
		minRank = 3,
		alwaysShowBarInBattle = true,
		kind = "EmperorsRoar",
		hpBarLiftBars = 1,
		preAnim = "attack2",
		showBarInBattle = true,
		activeAnim = "attack"
	}
}
var_0_0.definitions.piercing_thrust = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/21PiercingThrust.png",
	category = "attack",
	activationType = "active",
	target = "enemy",
	name = "관통 찌르기",
	nameEn = "Piercing Thrust",
	id = "piercing_thrust",
	ownerKey = "베테랑",
	owner = "베테랑",
	description = "전방을 찔러 최대 2명의 적에게 {atk.png} 120% 관통 피해를 입힙니다.",
	runtime = {
		cooldown = 4,
		minRank = 2,
		kind = "PiercingThrust",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		maxTargets = 2,
		dmgMul = 1.2,
		showBarInBattle = true
	}
}
var_0_0.definitions.earth_crush = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/22EarthCrush.png",
	category = "attack",
	activationType = "active",
	target = "enemy",
	name = "대지 격파",
	nameEn = "Earth Crush",
	id = "earth_crush",
	ownerKey = "장군",
	owner = "장군",
	description = "지면을 강타해 최대 2명의 적에게 각각 {atk.png} 160% 피해를 입힙니다.",
	duration = 0,
	runtime = {
		cooldown = 4,
		minRank = 2,
		kind = "EarthCrush",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		maxTargets = 2,
		dmgMul = 1.6,
		showBarInBattle = true
	}
}
var_0_0.definitions.guard_thrust = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/23GuardThrust.png",
	category = "attack_debuff",
	activationType = "active",
	target = "enemy",
	name = "견제 찌르기",
	nameEn = "Guard Thrust",
	id = "guard_thrust",
	ownerKey = "엘프병사",
	owner = "엘프병사",
	description = "적을 찔러 {atk.png} 120% 피해를 입히고, 대상에게 {aspd.png} -15%를 부여합니다.",
	duration = 2,
	runtime = {
		cooldown = 4,
		dmgMul = 1.2,
		maxTargets = 1,
		minRank = 2,
		kind = "GuardThrust",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		aspdSlowFrac = 0.15,
		duration = 2
	}
}
var_0_0.definitions.heavy_kick = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/24HeavyKick.png",
	category = "attack_disrupt",
	activationType = "active",
	target = "enemy",
	name = "묵직한 발차기",
	nameEn = "Heavy Kick",
	id = "heavy_kick",
	ownerKey = "사수 병사",
	owner = "사수 병사",
	description = "적을 걷어차 {atk.png} 100% 피해를 입히고, 대상에게 {spd.png} -30%를 부여합니다.",
	duration = 4,
	runtime = {
		cooldown = 4,
		dmgMul = 1,
		moveSlowFrac = 0.3,
		maxTargets = 1,
		minRank = 2,
		kind = "HeavyKick",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		duration = 4
	}
}
var_0_0.definitions.beast_kick = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/26BeastKick.png",
	category = "attack_disrupt",
	activationType = "active",
	target = "enemy",
	name = "야수 발차기",
	nameEn = "Beast Kick",
	id = "beast_kick",
	ownerKey = "바그",
	owner = "바그",
	description = "적 2명을 걷어차 각각 {atk.png} 110% 피해를 입히고, 상대에게 {spd.png} -40%를 부여합니다.",
	duration = 3,
	runtime = {
		cooldown = 4,
		dmgMul = 1.1,
		moveSlowFrac = 0.4,
		maxTargets = 2,
		minRank = 3,
		kind = "BeastKick",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		duration = 3
	}
}
var_0_0.definitions.guardblade = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/25Guardblade.png",
	category = "attack_defense",
	activationType = "active",
	target = "enemy",
	name = "수호검",
	nameEn = "Guardblade",
	id = "guardblade",
	ownerKey = "엘프기사",
	owner = "엘프기사",
	description = "마법검으로 최대 2명에게 {atk.png} 100% 피해를 입히고, 2초 동안 받는 피해 -20%.",
	duration = 2,
	runtime = {
		cooldown = 4,
		dmgMul = 1,
		maxTargets = 2,
		minRank = 3,
		kind = "Guardblade",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		damageReduction = 0.2,
		duration = 2
	}
}
var_0_0.definitions.assault_guard = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/35AssaultGuard.png",
	category = "attack_defense",
	activationType = "active",
	target = "enemy",
	name = "강습 방어",
	nameEn = "Assault Guard",
	id = "assault_guard",
	ownerKey = "엘프 기병",
	owner = "엘프 기병",
	description = "적을 공격해 {atk.png} 130% 피해를 입히고, 2초 동안 받는 피해 -20%.",
	duration = 2,
	runtime = {
		cooldown = 4,
		dmgMul = 1.3,
		maxTargets = 1,
		minRank = 2,
		kind = "AssaultGuard",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		damageReduction = 0.2,
		duration = 2
	}
}
var_0_0.definitions.assault_barrier = {
	cooldown = 5,
	icon = "src/sprites/icons/skills/37AssaultBarrier.png",
	category = "attack_defense",
	activationType = "active",
	target = "enemy_ally_self",
	name = "강습 방벽",
	nameEn = "Assault Barrier",
	id = "assault_barrier",
	ownerKey = "하이 엘프 기병",
	owner = "하이 엘프 기병",
	description = "날개짓으로 최대 2명에게 각각 {atk.png} 100% 피해를 입히고, 자신과 체력이 가장 낮은 주변 아군 1명이 받는 피해 -20%.",
	duration = 2.5,
	runtime = {
		cooldown = 5,
		range = 160,
		dmgMul = 1,
		activeAnim = "fly",
		maxTargets = 2,
		minRank = 2,
		kind = "AssaultBarrier",
		allyRange = 120,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		damageReduction = 0.2,
		duration = 2.5
	}
}
var_0_0.definitions.life_sap = {
	cooldown = 5,
	icon = "src/sprites/icons/skills/43LifeSap.png",
	category = "attack_heal",
	activationType = "active",
	target = "enemy_self",
	name = "생명의 수액",
	nameEn = "Life Sap",
	id = "life_sap",
	ownerKey = "엔트",
	owner = "엔트",
	description = "적을 후려쳐 {atk.png} 115% 피해를 입히고, 자신의 최대 체력 8%를 회복합니다.",
	duration = 0,
	runtime = {
		cooldown = 5,
		dmgMul = 1.15,
		maxTargets = 1,
		minRank = 2,
		kind = "LifeSap",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		healFracOfMaxHp = 0.08,
		duration = 0.5
	}
}
var_0_0.definitions.root_drain = {
	cooldown = 5,
	icon = "src/sprites/icons/skills/45RootDrain.png",
	category = "attack_heal",
	activationType = "active",
	target = "nearby_enemy_self",
	name = "뿌리 흡수",
	nameEn = "Root Drain",
	id = "root_drain",
	ownerKey = "엔트로드",
	owner = "엔트로드",
	description = "뿌리로 주변 최대 3명에게 각각 {atk.png} 80% 피해를 입히고, 피해를 입힌 적 1명당 자신의 최대 체력 4%를 회복합니다.",
	duration = 0,
	runtime = {
		cooldown = 5,
		dmgMul = 0.8,
		radius = 110,
		activeAnim = "attack2",
		maxTargets = 3,
		minRank = 3,
		kind = "RootDrain",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		healFracOfMaxHp = 0.04,
		duration = 0.64
	}
}
var_0_0.definitions.volt_saw = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/44VoltSaw.png",
	category = "attack_aoe",
	activationType = "active",
	target = "enemy",
	name = "전류 톱날",
	nameEn = "Volt Saw",
	id = "volt_saw",
	ownerKey = "빅터",
	owner = "빅터",
	description = "전류가 흐르는 톱으로 적을 베어 {atk.png} 150% 피해를 입히고, 주변 최대 2명에게 각각 {atk.png} 80% 피해를 입힙니다.",
	duration = 0,
	runtime = {
		cooldown = 4,
		dmgMul = 1.5,
		alwaysShowBarInBattle = true,
		maxTargets = 3,
		minRank = 2,
		kind = "VoltSaw",
		hpBarLiftBars = 1,
		splashDmgMul = 0.8,
		showBarInBattle = true,
		duration = 0.4
	}
}
var_0_0.definitions.overload_discharge = {
	cooldown = 5,
	icon = "src/sprites/icons/skills/46OverloadDischarge.png",
	category = "attack_chain",
	activationType = "active",
	target = "enemy",
	name = "폭주 방전",
	nameEn = "Overload Discharge",
	id = "overload_discharge",
	ownerKey = "프랑켄슈타인",
	owner = "프랑켄슈타인",
	description = "전류를 폭주시켜 최대 4명에게 각각 {atk.png} 90% 피해를 입힙니다. 이 피해로 적을 처치하면 가까운 적 최대 2명에게 각각 {atk.png} 45% 피해가 전이됩니다.",
	duration = 0,
	runtime = {
		cooldown = 5,
		dmgMul = 0.9,
		transferTargets = 2,
		transferDmgMul = 0.45,
		maxTargets = 4,
		minRank = 3,
		kind = "OverloadDischarge",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		duration = 0.4
	}
}
var_0_0.definitions.assault_strike = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/36AssaultStrike.png",
	category = "attack_disrupt",
	activationType = "active",
	target = "enemy",
	name = "강습 타격",
	nameEn = "Assault Strike",
	id = "assault_strike",
	ownerKey = "야만 기병",
	owner = "야만 기병",
	description = "적을 강하게 공격해 {atk.png} 160% 피해를 입히고, 짧게 기절시킵니다.",
	duration = 0.5,
	runtime = {
		cooldown = 4,
		dmgMul = 1.6,
		stunDur = 0.5,
		maxTargets = 1,
		minRank = 2,
		kind = "AssaultStrike",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		duration = 0.5
	}
}
var_0_0.definitions.frenzied_assault = {
	cooldown = 5,
	icon = "src/sprites/icons/skills/38FrenziedAssault.png",
	category = "attack_disrupt_buff",
	activationType = "active",
	target = "enemy",
	name = "광폭 강습",
	nameEn = "Frenzied Assault",
	id = "frenzied_assault",
	ownerKey = "광폭 기병",
	owner = "광폭 기병",
	description = "적을 강하게 공격해 {atk.png} 180% 피해를 입히고, 짧게 기절시킨 뒤 2초 동안 자신의 {aspd.png} +20%를 얻습니다.",
	duration = 2,
	runtime = {
		cooldown = 5,
		stunDur = 0.5,
		aspdBonus = 0.2,
		dmgMul = 1.8,
		maxTargets = 1,
		minRank = 3,
		kind = "FrenziedAssault",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		duration = 2
	}
}
var_0_0.definitions.healing_field = {
	cooldown = 4,
	icon = "src/sprites/icons/skills/17HealingField.png",
	category = "heal",
	activationType = "active",
	target = "ally",
	name = "치유의 장",
	nameEn = "Healing Field",
	id = "healing_field",
	ownerKey = "치유술사",
	owner = "치유술사",
	description = "치유의 장을 생성해, 3초 동안 범위 내 {hp.png} 가장 낮은 아군 2명의 {hp.png} 5%씩 회복시킵니다.",
	duration = 3,
	runtime = {
		interval = 0.5,
		range = 120,
		cooldown = 4,
		maxTargets = 2,
		minRank = 2,
		healFrac = 0.05,
		kind = "HealingField",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		duration = 3
	}
}
var_0_0.definitions.guardian_challenge = {
	cooldown = 5,
	icon = "src/sprites/icons/skills/31GuardianChallenge.png",
	category = "taunt_defense",
	activationType = "active",
	target = "nearby_enemy_self",
	name = "수호 도발",
	nameEn = "Guardian Challenge",
	id = "guardian_challenge",
	ownerKey = "엘프 보병",
	owner = "엘프 보병",
	description = "3초간 주변 최대 3명이 자신을 공격하게 하고, 받는 피해 -30%.",
	duration = 3,
	runtime = {
		cooldown = 5,
		range = 140,
		maxTargets = 3,
		minRank = 2,
		kind = "GuardianChallenge",
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		damageReduction = 0.3,
		duration = 3
	}
}
var_0_0.definitions.ironwall_challenge = {
	cooldown = 5,
	icon = "src/sprites/icons/skills/33IronwallChallenge.png",
	category = "defense_taunt",
	activationType = "active",
	target = "self_nearby_enemy",
	name = "철벽 도발",
	nameEn = "Ironwall Challenge",
	id = "ironwall_challenge",
	ownerKey = "하이 엘프 보병",
	owner = "하이 엘프 보병",
	description = "3초간 주변 최대 4명이 자신을 공격하게 하고, 방패를 들어 1.5초 동안 모든 피해를 막습니다.",
	duration = 3,
	runtime = {
		cooldown = 5,
		range = 160,
		activeAnim = "shield",
		maxTargets = 4,
		minRank = 3,
		kind = "IronwallChallenge",
		blockDuration = 1.5,
		hpBarLiftBars = 1,
		alwaysShowBarInBattle = true,
		showBarInBattle = true,
		duration = 3
	}
}
var_0_0.byOwner = {
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
var_0_0.byOwner["하이 엘프 기병"] = {
	"assault_barrier"
}

local function var_0_2(arg_1_0)
	local var_1_0 = {}
	local var_1_1 = {}
	local var_1_2 = {
		arg_1_0 and arg_1_0.subclass,
		arg_1_0 and arg_1_0.subclassKey,
		arg_1_0 and arg_1_0.subclassName,
		arg_1_0 and arg_1_0.name,
		arg_1_0 and arg_1_0.id
	}

	for iter_1_0, iter_1_1 in ipairs(var_1_2) do
		local var_1_3 = iter_1_1 and var_0_0.byOwner[iter_1_1]

		if var_1_3 then
			for iter_1_2, iter_1_3 in ipairs(var_1_3) do
				if var_0_0.definitions[iter_1_3] and not var_1_1[iter_1_3] then
					var_1_1[iter_1_3] = true

					table.insert(var_1_0, iter_1_3)
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

function var_0_0.hasActiveSkillForUnit(arg_4_0)
	for iter_4_0, iter_4_1 in ipairs(var_0_0.getSkillsForUnit(arg_4_0)) do
		local var_4_0 = iter_4_1 and iter_4_1.runtime
		local var_4_1 = tonumber(var_4_0 and var_4_0.cooldown or iter_4_1 and iter_4_1.cooldown or 0) or 0

		if iter_4_1 and iter_4_1.activationType == "active" and var_4_0 and var_4_1 > 0 then
			return true
		end
	end

	return false
end

function var_0_0.applyToUnit(arg_5_0)
	if not arg_5_0 then
		return nil
	end

	local var_5_0 = var_0_0.getSkillsForUnit(arg_5_0)

	if #var_5_0 == 0 then
		arg_5_0.skillDefs = nil
		arg_5_0.primarySkillDef = nil
		arg_5_0.skillName = nil
		arg_5_0.skillDesc = nil
		arg_5_0.skillIcon = nil
		arg_5_0.showSkillBarInBattle = nil
		arg_5_0.alwaysShowBarInBattle = nil
		arg_5_0.hpBarLiftBars = nil

		return nil
	end

	arg_5_0.skillDefs = var_5_0
	arg_5_0.primarySkillDef = var_5_0[1]

	local var_5_1 = _G.currentGameLang or "ko"

	arg_5_0.skillName = var_0_1.getSkillName(var_5_0[1].id, var_5_0[1].name, var_5_1)
	arg_5_0.skillDesc = var_0_1.getSkillDesc(var_5_0[1].id, var_5_0[1].description, var_5_1)
	arg_5_0.skillIcon = var_5_0[1].icon
	arg_5_0.showSkillBarInBattle = var_5_0[1].runtime and var_5_0[1].runtime.showBarInBattle == true or nil
	arg_5_0.alwaysShowBarInBattle = var_5_0[1].runtime and var_5_0[1].runtime.alwaysShowBarInBattle == true or nil
	arg_5_0.hpBarLiftBars = var_5_0[1].runtime and var_5_0[1].runtime.hpBarLiftBars or nil

	return var_5_0
end

return var_0_0
