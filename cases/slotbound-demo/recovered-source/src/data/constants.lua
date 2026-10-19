local var_0_0 = {
	virtual = {
		H = 360,
		W = 640
	},
	vfx = {
		earthquake = {
			floatDuration = 1.2,
			visualDuration = 2,
			duration = 5,
			magnitude = 6,
			frameTime = 0.05
		}
	},
	colors = {
		bg = {
			0.18,
			0.13,
			0.18
		},
		panel = {
			0.14,
			0.16,
			0.22
		},
		panelDark = {
			0.11,
			0.12,
			0.17
		},
		reelBg = {
			0.93,
			0.9,
			0.95
		},
		accent = {
			0.95,
			0.77,
			0.17
		},
		grid = {
			0.85,
			0.88,
			0.93
		},
		text = {
			0.92,
			0.94,
			0.97
		},
		subtle = {
			1,
			1,
			1,
			0.2
		}
	},
	ui = {
		aspd = {
			displayScale = 20
		},
		labels = {
			maxAbsorbText = "MAX"
		}
	},
	imprint = {
		slots = {
			prism = 5,
			legendary = 4,
			rare = 3,
			advanced = 2,
			special = 3,
			normal = 1
		},
		definitions = {
			fortify = {
				condition = "상시",
				tag = "buff",
				name = "견고함",
				id = "fortify",
				shortDesc = "피해감소",
				icon = "src/sprites/icons/imprinticons/01Fortify.png",
				levels = {
					{
						desc = "받는 피해 15% 감소",
						shortDesc = "피해감소",
						stats = {
							damageReduction = 0.15
						}
					},
					{
						desc = "받는 피해 22% 감소",
						shortDesc = "피해감소",
						stats = {
							damageReduction = 0.22
						}
					},
					{
						desc = "받는 피해 27% 감소",
						shortDesc = "피해감소",
						stats = {
							damageReduction = 0.27
						}
					},
					{
						desc = "받는 피해 31% 감소",
						shortDesc = "피해감소",
						stats = {
							damageReduction = 0.31
						}
					},
					{
						desc = "받는 피해 34% 감소",
						shortDesc = "피해감소",
						stats = {
							damageReduction = 0.34
						}
					}
				}
			},
			pierce = {
				condition = "기본 공격 시",
				tag = "buff",
				name = "관통",
				id = "pierce",
				shortDesc = "공격관통",
				icon = "src/sprites/icons/imprinticons/01Pierce.png",
				levels = {
					{
						desc = "기본 공격이 최대 1명 추가 관통하고 {atk.png} 25% 피해를 입힙니다.",
						shortDesc = "공격관통",
						stats = {
							pierceDamageFrac = 0.25,
							maxPierceTargets = 1
						}
					},
					{
						desc = "기본 공격이 최대 1명 추가 관통하고 {atk.png} 35% 피해를 입힙니다.",
						shortDesc = "공격관통",
						stats = {
							pierceDamageFrac = 0.35,
							maxPierceTargets = 1
						}
					},
					{
						desc = "기본 공격이 최대 2명 추가 관통하고 {atk.png} 35% 피해를 입힙니다.",
						shortDesc = "공격관통",
						stats = {
							pierceDamageFrac = 0.35,
							maxPierceTargets = 2
						}
					},
					{
						desc = "기본 공격이 최대 2명 추가 관통하고 {atk.png} 45% 피해를 입힙니다.",
						shortDesc = "공격관통",
						stats = {
							pierceDamageFrac = 0.45,
							maxPierceTargets = 2
						}
					},
					{
						desc = "기본 공격이 최대 3명 추가 관통하고 {atk.png} 45% 피해를 입힙니다.",
						shortDesc = "공격관통",
						stats = {
							pierceDamageFrac = 0.45,
							maxPierceTargets = 3
						}
					}
				}
			},
			brace = {
				condition = "공격시",
				tag = "buff",
				name = "굳히기",
				id = "brace",
				shortDesc = "공격강화",
				icon = "src/sprites/icons/imprinticons/01Brace.png",
				levels = {
					{
						desc = "기본 공격 후 힘을 모아, 다음 기본 공격이 {atk.png} +25% 강화됩니다.",
						shortDesc = "공격강화",
						stats = {
							afterAttackDelay = 0.25,
							nextHitDamageMult = 1.25
						}
					},
					{
						desc = "기본 공격 후 힘을 모아, 다음 기본 공격이 {atk.png} +35% 강화됩니다.",
						shortDesc = "공격강화",
						stats = {
							afterAttackDelay = 0.25,
							nextHitDamageMult = 1.35
						}
					},
					{
						desc = "기본 공격 후 힘을 모아, 다음 기본 공격이 {atk.png} +50% 강화됩니다.",
						shortDesc = "공격강화",
						stats = {
							afterAttackDelay = 0.25,
							nextHitDamageMult = 1.5
						}
					},
					{
						desc = "기본 공격 후 힘을 모아, 다음 기본 공격이 {atk.png} +65% 강화됩니다.",
						shortDesc = "공격강화",
						stats = {
							afterAttackDelay = 0.25,
							nextHitDamageMult = 1.65
						}
					},
					{
						desc = "기본 공격 후 힘을 모아, 다음 기본 공격이 {atk.png} +80% 강화됩니다.",
						shortDesc = "공격강화",
						stats = {
							afterAttackDelay = 0.25,
							nextHitDamageMult = 1.8
						}
					}
				}
			},
			volley = {
				condition = "3번째 공격마다",
				tag = "spawn",
				name = "연사",
				id = "volley",
				shortDesc = "공격추가",
				icon = "src/sprites/icons/imprinticons/01Volley.png",
				levels = {
					{
						desc = "3번째 기본 공격마다 동일 대상을 {atk.png} 40% 피해로 즉시 한 번 더 공격합니다.",
						shortDesc = "공격추가",
						stats = {
							every = 3,
							extraHitFrac = 0.4
						}
					},
					{
						desc = "3번째 기본 공격마다 동일 대상을 {atk.png} 60% 피해로 즉시 한 번 더 공격합니다.",
						shortDesc = "공격추가",
						stats = {
							every = 3,
							extraHitFrac = 0.6
						}
					},
					{
						desc = "3번째 기본 공격마다 동일 대상을 {atk.png} 80% 피해로 즉시 한 번 더 공격합니다.",
						shortDesc = "공격추가",
						stats = {
							every = 3,
							extraHitFrac = 0.8
						}
					},
					{
						desc = "3번째 기본 공격마다 동일 대상을 {atk.png} 100% 피해로 즉시 한 번 더 공격합니다.",
						shortDesc = "공격추가",
						stats = {
							every = 3,
							extraHitFrac = 1
						}
					},
					{
						desc = "3번째 기본 공격마다 동일 대상을 {atk.png} 130% 피해로 즉시 한 번 더 공격합니다.",
						shortDesc = "공격추가",
						stats = {
							every = 3,
							extraHitFrac = 1.3
						}
					}
				}
			},
			blind = {
				condition = "공격시 16%",
				tag = "buff",
				name = "실명",
				id = "blind",
				shortDesc = "공격무효",
				icon = "src/sprites/icons/imprinticons/02Blind.png",
				levels = {
					{
						desc = "공격 시 16% 확률로 대상 적이 실명 상태가 되어 0.4초간 공격이 빗나간다",
						shortDesc = "공격무효",
						stats = {
							chance = 0.16,
							icd = 2,
							blindDur = 0.4
						}
					},
					{
						desc = "공격 시 16% 확률로 대상 적이 실명 상태가 되어 0.6초간 공격이 빗나간다",
						shortDesc = "공격무효",
						stats = {
							chance = 0.16,
							icd = 2,
							blindDur = 0.6
						}
					},
					{
						desc = "공격 시 16% 확률로 대상 적이 실명 상태가 되어 0.8초간 공격이 빗나간다",
						shortDesc = "공격무효",
						stats = {
							chance = 0.16,
							icd = 2,
							blindDur = 0.8
						}
					},
					{
						desc = "공격 시 16% 확률로 대상 적이 실명 상태가 되어 1초간 공격이 빗나간다",
						shortDesc = "공격무효",
						stats = {
							chance = 0.16,
							icd = 2,
							blindDur = 1
						}
					},
					{
						desc = "공격 시 16% 확률로 대상 적이 실명 상태가 되어 1.3초간 공격이 빗나간다",
						shortDesc = "공격무효",
						stats = {
							chance = 0.16,
							icd = 2,
							blindDur = 1.3
						}
					}
				}
			},
			transfer = {
				condition = "공격시",
				tag = "buff",
				name = "전이",
				id = "transfer",
				shortDesc = "피해전이",
				icon = "src/sprites/icons/imprinticons/01Diffusion.png",
				levels = {
					{
						desc = "공격 시 주변의 다른 적 1명에게 {atk.png} 30% 피해가 전이됩니다.",
						shortDesc = "피해전이",
						stats = {
							spreadFrac = 0.3,
							spreadRange = 36,
							spreadTargets = 1
						}
					},
					{
						desc = "공격 시 주변의 다른 적 1명에게 {atk.png} 40% 피해가 전이됩니다.",
						shortDesc = "피해전이",
						stats = {
							spreadFrac = 0.4,
							spreadRange = 36,
							spreadTargets = 1
						}
					},
					{
						desc = "공격 시 주변의 다른 적 2명에게 {atk.png} 35% 피해가 전이됩니다.",
						shortDesc = "피해전이",
						stats = {
							spreadFrac = 0.35,
							spreadRange = 36,
							spreadTargets = 2
						}
					},
					{
						desc = "공격 시 주변의 다른 적 2명에게 {atk.png} 40% 피해가 전이됩니다.",
						shortDesc = "피해전이",
						stats = {
							spreadFrac = 0.4,
							spreadRange = 36,
							spreadTargets = 2
						}
					},
					{
						desc = "공격 시 주변의 다른 적 3명에게 {atk.png} 40% 피해가 전이됩니다.",
						shortDesc = "피해전이",
						stats = {
							spreadFrac = 0.4,
							spreadRange = 36,
							spreadTargets = 3
						}
					}
				}
			},
			overdrive = {
				condition = "적 처치 후",
				tag = "buff",
				name = "오버드라이브",
				id = "overdrive",
				shortDesc = "격파강화",
				icon = "src/sprites/icons/imprinticons/01Overdrive.png",
				levels = {
					{
						desc = "적 처치 시 다음 기본 공격이 {atk.png} +75% 강화됩니다.",
						shortDesc = "격파강화",
						stats = {
							killDamageBoost = 0.75
						}
					},
					{
						desc = "적 처치 시 다음 기본 공격이 {atk.png} +100% 강화됩니다.",
						shortDesc = "격파강화",
						stats = {
							killDamageBoost = 1
						}
					},
					{
						desc = "적 처치 시 다음 기본 공격이 {atk.png} +125% 강화됩니다.",
						shortDesc = "격파강화",
						stats = {
							killDamageBoost = 1.25
						}
					},
					{
						desc = "적 처치 시 다음 기본 공격이 {atk.png} +150% 강화됩니다.",
						shortDesc = "격파강화",
						stats = {
							killDamageBoost = 1.5
						}
					},
					{
						desc = "적 처치 시 다음 기본 공격이 {atk.png} +175% 강화됩니다.",
						shortDesc = "격파강화",
						stats = {
							killDamageBoost = 1.75
						}
					}
				}
			},
			relentless = {
				condition = "공격시",
				tag = "buff",
				name = "집요함",
				id = "relentless",
				shortDesc = "연타가속",
				icon = "src/sprites/icons/imprinticons/01Relentless.png",
				levels = {
					{
						desc = "연속 공격마다 {aspd.png} +4% (최대 4중첩)",
						shortDesc = "연타가속",
						stats = {
							maxStacks = 4,
							aspdPerStack = 0.04,
							resetAfter = 0.5
						}
					},
					{
						desc = "연속 공격마다 {aspd.png} +5% (최대 4중첩)",
						shortDesc = "연타가속",
						stats = {
							maxStacks = 4,
							aspdPerStack = 0.05,
							resetAfter = 0.5
						}
					},
					{
						desc = "연속 공격마다 {aspd.png} +5% (최대 5중첩)",
						shortDesc = "연타가속",
						stats = {
							maxStacks = 5,
							aspdPerStack = 0.05,
							resetAfter = 0.5
						}
					},
					{
						desc = "연속 공격마다 {aspd.png} +6% (최대 5중첩)",
						shortDesc = "연타가속",
						stats = {
							maxStacks = 5,
							aspdPerStack = 0.06,
							resetAfter = 0.5
						}
					},
					{
						desc = "연속 공격마다 {aspd.png} +6% (최대 6중첩)",
						shortDesc = "연타가속",
						stats = {
							maxStacks = 6,
							aspdPerStack = 0.06,
							resetAfter = 0.5
						}
					}
				}
			},
			bash = {
				condition = "공격시 18%",
				tag = "buff",
				name = "충격타",
				id = "bash",
				shortDesc = "기절",
				icon = "src/sprites/icons/imprinticons/02Bash.png",
				levels = {
					{
						desc = "공격 시 18% 확률로 대상을 0.5초간 기절",
						shortDesc = "기절",
						stats = {
							stunDur = 0.5,
							chance = 0.18,
							icd = 2
						}
					},
					{
						desc = "공격 시 18% 확률로 대상을 0.7초간 기절",
						shortDesc = "기절",
						stats = {
							stunDur = 0.7,
							chance = 0.18,
							icd = 2
						}
					},
					{
						desc = "공격 시 18% 확률로 대상을 0.9초간 기절",
						shortDesc = "기절",
						stats = {
							stunDur = 0.9,
							chance = 0.18,
							icd = 2
						}
					},
					{
						desc = "공격 시 18% 확률로 대상을 1.1초간 기절",
						shortDesc = "기절",
						stats = {
							stunDur = 1.1,
							chance = 0.18,
							icd = 2
						}
					},
					{
						desc = "공격 시 18% 확률로 대상을 1.3초간 기절",
						shortDesc = "기절",
						stats = {
							stunDur = 1.3,
							chance = 0.18,
							icd = 2
						}
					}
				}
			},
			knockback = {
				condition = "공격시 18%",
				tag = "body",
				name = "넉백",
				id = "knockback",
				shortDesc = "밀쳐내기",
				icon = "src/sprites/icons/imprinticons/02Knockback.png",
				levels = {
					{
						desc = "공격 시 18% 확률로 대상 적을 살짝 밀쳐낸다",
						shortDesc = "밀쳐내기",
						stats = {
							chance = 0.18,
							knockbackDist = 10,
							icd = 2
						}
					},
					{
						desc = "공격 시 18% 확률로 대상 적을 확실히 밀쳐낸다",
						shortDesc = "밀쳐내기",
						stats = {
							chance = 0.18,
							knockbackDist = 12,
							icd = 2
						}
					},
					{
						desc = "공격 시 18% 확률로 대상 적을 크게 밀쳐낸다",
						shortDesc = "밀쳐내기",
						stats = {
							chance = 0.18,
							knockbackDist = 14,
							icd = 2
						}
					},
					{
						desc = "공격 시 18% 확률로 대상 적을 강하게 밀쳐낸다",
						shortDesc = "밀쳐내기",
						stats = {
							chance = 0.18,
							knockbackDist = 16,
							icd = 2
						}
					},
					{
						desc = "공격 시 18% 확률로 대상 적을 멀리 밀쳐낸다",
						shortDesc = "밀쳐내기",
						stats = {
							chance = 0.18,
							knockbackDist = 18,
							icd = 2
						}
					}
				}
			},
			poison = {
				condition = "공격시",
				tag = "buff",
				name = "독",
				id = "poison",
				shortDesc = "맹독",
				icon = "src/sprites/icons/imprinticons/02Poison.png",
				levels = {
					{
						desc = "공격 시 25% 확률로 독을 부여한다 (2초 지속)",
						shortDesc = "맹독",
						stats = {
							maxStacks = 1,
							duration = 2,
							chance = 0.25,
							tickInterval = 0.5,
							maxHPFrac = 0.012
						}
					},
					{
						desc = "공격 시 25% 확률로 독을 부여한다 (2.5초 지속)",
						shortDesc = "맹독",
						stats = {
							maxStacks = 1,
							duration = 2.5,
							chance = 0.25,
							tickInterval = 0.5,
							maxHPFrac = 0.012
						}
					},
					{
						desc = "공격 시 25% 확률로 독을 부여한다 (3초 지속)",
						shortDesc = "맹독",
						stats = {
							maxStacks = 1,
							duration = 3,
							chance = 0.25,
							tickInterval = 0.5,
							maxHPFrac = 0.012
						}
					},
					{
						desc = "공격 시 25% 확률로 독을 부여한다 (4초 지속)",
						shortDesc = "맹독",
						stats = {
							maxStacks = 1,
							duration = 4,
							chance = 0.25,
							tickInterval = 0.5,
							maxHPFrac = 0.012
						}
					},
					{
						desc = "공격 시 25% 확률로 독을 부여한다 (5초 지속)",
						shortDesc = "맹독",
						stats = {
							maxStacks = 1,
							duration = 5,
							chance = 0.25,
							tickInterval = 0.5,
							maxHPFrac = 0.012
						}
					}
				}
			},
			block = {
				condition = "상시",
				tag = "buff",
				name = "블록",
				id = "block",
				shortDesc = "공격차단",
				icon = "src/sprites/icons/imprinticons/02Block.png",
				levels = {
					{
						desc = "피격 시 15% 확률로 공격을 막아낸다",
						shortDesc = "공격차단",
						stats = {
							blockProb = 0.15
						}
					},
					{
						desc = "피격 시 18% 확률로 공격을 막아낸다",
						shortDesc = "공격차단",
						stats = {
							blockProb = 0.18
						}
					},
					{
						desc = "피격 시 22% 확률로 공격을 막아낸다",
						shortDesc = "공격차단",
						stats = {
							blockProb = 0.22
						}
					},
					{
						desc = "피격 시 26% 확률로 공격을 막아낸다",
						shortDesc = "공격차단",
						stats = {
							blockProb = 0.26
						}
					},
					{
						desc = "피격 시 30% 확률로 공격을 막아낸다",
						shortDesc = "공격차단",
						stats = {
							blockProb = 0.3
						}
					}
				}
			},
			lifesteal = {
				condition = "상시",
				tag = "buff",
				name = "흡혈",
				id = "lifesteal",
				shortDesc = "체력흡혈",
				icon = "src/sprites/icons/imprinticons/02Lifesteal.png",
				levels = {
					{
						desc = "공격으로 준 피해의 4%를 체력으로 회복한다",
						shortDesc = "체력흡혈",
						stats = {
							stealFrac = 0.04
						}
					},
					{
						desc = "공격으로 준 피해의 6%를 체력으로 회복한다",
						shortDesc = "체력흡혈",
						stats = {
							stealFrac = 0.06
						}
					},
					{
						desc = "공격으로 준 피해의 8%를 체력으로 회복한다",
						shortDesc = "체력흡혈",
						stats = {
							stealFrac = 0.08
						}
					},
					{
						desc = "공격으로 준 피해의 10%를 체력으로 회복한다",
						shortDesc = "체력흡혈",
						stats = {
							stealFrac = 0.1
						}
					},
					{
						desc = "공격으로 준 피해의 12%를 체력으로 회복한다",
						shortDesc = "체력흡혈",
						stats = {
							stealFrac = 0.12
						}
					}
				}
			},
			self_destruct = {
				condition = "사망시",
				tag = "body",
				name = "자폭",
				id = "self_destruct",
				shortDesc = "대폭발",
				icon = "src/sprites/icons/imprinticons/03SelfDestruct.png",
				levels = {
					{
						desc = "사망 시 폭발하여 주변 적 각각에게 자신의 최대 {hp.png}의 25% 피해를 준다",
						shortDesc = "대폭발",
						stats = {
							hpDamageFrac = 0.25
						}
					},
					{
						desc = "사망 시 폭발하여 주변 적 각각에게 자신의 최대 {hp.png}의 28% 피해를 준다",
						shortDesc = "대폭발",
						stats = {
							hpDamageFrac = 0.28
						}
					},
					{
						desc = "사망 시 폭발하여 주변 적 각각에게 자신의 최대 {hp.png}의 31% 피해를 준다",
						shortDesc = "대폭발",
						stats = {
							hpDamageFrac = 0.31
						}
					},
					{
						desc = "사망 시 폭발하여 주변 적 각각에게 자신의 최대 {hp.png}의 35% 피해를 준다",
						shortDesc = "대폭발",
						stats = {
							hpDamageFrac = 0.35
						}
					},
					{
						desc = "사망 시 폭발하여 주변 적 각각에게 자신의 최대 {hp.png}의 40% 피해를 준다",
						shortDesc = "대폭발",
						stats = {
							hpDamageFrac = 0.4
						}
					}
				}
			},
			fear = {
				condition = "기본 공격 시",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/fireskeleton.png",
				tag = "body",
				name = "공포",
				id = "fear",
				shortDesc = "공포도주",
				icon = "src/sprites/icons/imprinticons/03Fear.png",
				levels = {
					{
						desc = "공격 적중 시 15% 확률로 적을 공포에 빠뜨려 0.8초 동안 도망치게 한다.",
						shortDesc = "공포도주",
						stats = {
							chance = 0.15,
							icd = 3,
							duration = 0.8
						}
					},
					{
						desc = "공격 적중 시 17% 확률로 적을 공포에 빠뜨려 0.9초 동안 도망치게 한다.",
						shortDesc = "공포도주",
						stats = {
							chance = 0.17,
							icd = 3,
							duration = 0.9
						}
					},
					{
						desc = "공격 적중 시 19% 확률로 적을 공포에 빠뜨려 1초 동안 도망치게 한다.",
						shortDesc = "공포도주",
						stats = {
							chance = 0.19,
							icd = 2.8,
							duration = 1
						}
					},
					{
						desc = "공격 적중 시 22% 확률로 적을 공포에 빠뜨려 1.1초 동안 도망치게 한다.",
						shortDesc = "공포도주",
						stats = {
							chance = 0.22,
							icd = 2.6,
							duration = 1.1
						}
					},
					{
						desc = "공격 적중 시 25% 확률로 적을 공포에 빠뜨려 1.2초 동안 도망치게 한다.",
						shortDesc = "공포도주",
						stats = {
							chance = 0.25,
							icd = 2.4,
							duration = 1.2
						}
					}
				}
			},
			chain = {
				condition = "공격 적중 시",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/multihit.png",
				tag = "spawn",
				name = "연쇄",
				id = "chain",
				shortDesc = "연쇄타격",
				icon = "src/sprites/icons/imprinticons/03Chain.png",
				levels = {
					{
						desc = "공격이 적중하면 가장 가까운 다른 적에게 1회 연쇄 피해를 준다",
						shortDesc = "연쇄타격",
						stats = {
							chance = 0.3,
							bounceDamageFrac = 0.6,
							bounces = 1
						}
					},
					{
						desc = "공격이 적중하면 가장 가까운 다른 적에게 2회 연쇄 피해를 준다",
						shortDesc = "연쇄타격",
						stats = {
							chance = 0.3,
							bounceDamageFrac = 0.6,
							bounces = 2
						}
					},
					{
						desc = "공격이 적중하면 가장 가까운 다른 적에게 3회 연쇄 피해를 준다",
						shortDesc = "연쇄타격",
						stats = {
							chance = 0.3,
							bounceDamageFrac = 0.6,
							bounces = 3
						}
					},
					{
						desc = "공격이 적중하면 가장 가까운 다른 적에게 4회 연쇄 피해를 준다",
						shortDesc = "연쇄타격",
						stats = {
							chance = 0.3,
							bounceDamageFrac = 0.6,
							bounces = 4
						}
					},
					{
						desc = "공격이 적중하면 가장 가까운 다른 적에게 5회 연쇄 피해를 준다",
						shortDesc = "연쇄타격",
						stats = {
							chance = 0.3,
							bounceDamageFrac = 0.6,
							bounces = 5
						}
					}
				}
			},
			chill = {
				condition = "공격시",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/ice.png",
				tag = "buff",
				name = "냉기",
				id = "chill",
				shortDesc = "냉기둔화",
				icon = "src/sprites/icons/imprinticons/03Chill.png",
				levels = {
					{
						desc = "공격 시 적의 이동 및 공격 속도가 25% 감소한다",
						shortDesc = "냉기둔화",
						stats = {
							bossSlowFrac = 0.125,
							slowFrac = 0.25,
							dur = 2
						}
					},
					{
						desc = "공격 시 적의 이동 및 공격 속도가 30% 감소한다",
						shortDesc = "냉기둔화",
						stats = {
							bossSlowFrac = 0.15,
							slowFrac = 0.3,
							dur = 2
						}
					},
					{
						desc = "공격 시 적의 이동 및 공격 속도가 35% 감소한다",
						shortDesc = "냉기둔화",
						stats = {
							bossSlowFrac = 0.175,
							slowFrac = 0.35,
							dur = 2
						}
					},
					{
						desc = "공격 시 적의 이동 및 공격 속도가 40% 감소한다",
						shortDesc = "냉기둔화",
						stats = {
							bossSlowFrac = 0.2,
							slowFrac = 0.4,
							dur = 2
						}
					},
					{
						desc = "공격 시 적의 이동 및 공격 속도가 45% 감소한다",
						shortDesc = "냉기둔화",
						stats = {
							bossSlowFrac = 0.225,
							slowFrac = 0.45,
							dur = 2
						}
					}
				}
			},
			shrink = {
				condition = "기본 공격 시 확률 발동",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/shrink.png",
				tag = "debuff",
				name = "축소",
				id = "shrink",
				shortDesc = "약체화",
				icon = "src/sprites/icons/imprinticons/47Shrink.png",
				levels = {
					{
						desc = "기본 공격 시 10% 확률로 적을 3초간 작아지게 만듭니다. 축소된 적은 {atk.png} -10%, {aspd.png}가 이 유닛보다 느려집니다.",
						shortDesc = "약체화",
						stats = {
							chance = 0.1,
							visualScale = 0.75,
							duration = 3,
							atkReduction = 0.1
						}
					},
					{
						desc = "기본 공격 시 12% 확률로 적을 3초간 작아지게 만듭니다. 축소된 적은 {atk.png} -10%, {aspd.png}가 이 유닛보다 느려집니다.",
						shortDesc = "약체화",
						stats = {
							chance = 0.12,
							visualScale = 0.75,
							duration = 3,
							atkReduction = 0.1
						}
					},
					{
						desc = "기본 공격 시 14% 확률로 적을 3초간 작아지게 만듭니다. 축소된 적은 {atk.png} -10%, {aspd.png}가 이 유닛보다 느려집니다.",
						shortDesc = "약체화",
						stats = {
							chance = 0.14,
							visualScale = 0.75,
							duration = 3,
							atkReduction = 0.1
						}
					},
					{
						desc = "기본 공격 시 16% 확률로 적을 3초간 작아지게 만듭니다. 축소된 적은 {atk.png} -10%, {aspd.png}가 이 유닛보다 느려집니다.",
						shortDesc = "약체화",
						stats = {
							chance = 0.16,
							visualScale = 0.75,
							duration = 3,
							atkReduction = 0.1
						}
					},
					{
						desc = "기본 공격 시 20% 확률로 적을 3초간 작아지게 만듭니다. 축소된 적은 {atk.png} -10%, {aspd.png}가 이 유닛보다 느려집니다.",
						shortDesc = "약체화",
						stats = {
							chance = 0.2,
							visualScale = 0.75,
							duration = 3,
							atkReduction = 0.1
						}
					}
				}
			},
			enlarge = {
				condition = "피격시 15% 확률로",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/enlarge.png",
				tag = "buff",
				name = "거대화",
				id = "enlarge",
				shortDesc = "거대화",
				icon = "src/sprites/icons/imprinticons/03Enlarge.png",
				levels = {
					{
						desc = "피격 시 15% 확률로 3초 동안 거대화한다.",
						shortDesc = "거대화",
						stats = {
							chance = 0.15,
							atkBoost = 0.25,
							hpBoost = 0.3,
							duration = 3
						}
					},
					{
						desc = "피격 시 15% 확률로 3.5초 동안 거대화한다.",
						shortDesc = "거대화",
						stats = {
							chance = 0.15,
							atkBoost = 0.27,
							hpBoost = 0.32,
							duration = 3.5
						}
					},
					{
						desc = "피격 시 15% 확률로 4초 동안 거대화한다.",
						shortDesc = "거대화",
						stats = {
							chance = 0.15,
							atkBoost = 0.3,
							hpBoost = 0.35,
							duration = 4
						}
					},
					{
						desc = "피격 시 15% 확률로 4.5초 동안 거대화한다.",
						shortDesc = "거대화",
						stats = {
							chance = 0.15,
							atkBoost = 0.33,
							hpBoost = 0.38,
							duration = 4.5
						}
					},
					{
						desc = "피격 시 15% 확률로 5초 동안 거대화한다.",
						shortDesc = "거대화",
						stats = {
							chance = 0.15,
							atkBoost = 0.35,
							hpBoost = 0.4,
							duration = 5
						}
					}
				}
			},
			execute = {
				condition = "기본 공격 시",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/execute.png",
				tag = "buff",
				name = "처형",
				id = "execute",
				shortDesc = "처형",
				icon = "src/sprites/icons/imprinticons/03Execute.png",
				levels = {
					{
						desc = "공격 적중 시 체력이 10% 이하인 적을 즉시 처치한다.",
						shortDesc = "처형",
						stats = {
							threshold = 0.1,
							icd = 1.5
						}
					},
					{
						desc = "공격 적중 시 체력이 12% 이하인 적을 즉시 처치한다.",
						shortDesc = "처형",
						stats = {
							threshold = 0.12,
							icd = 1.3
						}
					},
					{
						desc = "공격 적중 시 체력이 14% 이하인 적을 즉시 처치한다.",
						shortDesc = "처형",
						stats = {
							threshold = 0.14,
							icd = 1.1
						}
					},
					{
						desc = "공격 적중 시 체력이 16% 이하인 적을 즉시 처치한다.",
						shortDesc = "처형",
						stats = {
							threshold = 0.16,
							icd = 0.9
						}
					},
					{
						desc = "공격 적중 시 체력이 18% 이하인 적을 즉시 처치한다.",
						shortDesc = "처형",
						stats = {
							threshold = 0.18,
							icd = 0.7
						}
					}
				}
			},
			earthquake = {
				condition = "공격 적중 시",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/earthquake.png",
				tag = "body",
				name = "지진",
				id = "earthquake",
				shortDesc = "전장붕괴",
				icon = "src/sprites/icons/imprinticons/04Earthquake.png",
				levels = {
					{
						desc = "공격 적중 시 전장 적 전체에게 공격력 150% 피해와 기절을 준다.",
						shortDesc = "전장붕괴",
						stats = {
							chance = 0.12,
							icd = 7,
							damageMult = 1.5,
							stunDur = 0.8
						}
					},
					{
						desc = "공격 적중 시 전장 적 전체에게 공격력 175% 피해와 기절을 준다.",
						shortDesc = "전장붕괴",
						stats = {
							chance = 0.12,
							icd = 7,
							damageMult = 1.75,
							stunDur = 0.8
						}
					},
					{
						desc = "공격 적중 시 전장 적 전체에게 공격력 200% 피해와 기절을 준다.",
						shortDesc = "전장붕괴",
						stats = {
							chance = 0.12,
							icd = 6.5,
							damageMult = 2,
							stunDur = 0.8
						}
					},
					{
						desc = "공격 적중 시 전장 적 전체에게 공격력 225% 피해와 기절을 준다.",
						shortDesc = "전장붕괴",
						stats = {
							chance = 0.12,
							icd = 6.5,
							damageMult = 2.25,
							stunDur = 0.8
						}
					},
					{
						desc = "공격 적중 시 전장 적 전체에게 공격력 250% 피해와 기절을 준다.",
						shortDesc = "전장붕괴",
						stats = {
							chance = 0.12,
							icd = 6,
							damageMult = 2.5,
							stunDur = 0.8
						}
					}
				}
			},
			annihilation = {
				condition = "공격 시 35% 확률로",
				tag = "spawn",
				name = "궤멸",
				id = "annihilation",
				shortDesc = "광역궤멸",
				icon = "src/sprites/icons/imprinticons/04Annihilation.png",
				levels = {
					{
						desc = "공격 시 35% 확률로 주변 최대 5명의 적에게 공격력 160%의 궤멸 피해를 준다",
						shortDesc = "광역궤멸",
						stats = {
							chance = 0.35,
							range = 60,
							damageMult = 1.6,
							maxTargets = 5
						}
					},
					{
						desc = "공격 시 35% 확률로 주변 최대 5명의 적에게 공격력 180%의 궤멸 피해를 준다",
						shortDesc = "광역궤멸",
						stats = {
							chance = 0.35,
							range = 60,
							damageMult = 1.8,
							maxTargets = 5
						}
					},
					{
						desc = "공격 시 35% 확률로 주변 최대 5명의 적에게 공격력 210%의 궤멸 피해를 준다",
						shortDesc = "광역궤멸",
						stats = {
							chance = 0.35,
							range = 60,
							damageMult = 2.1,
							maxTargets = 5
						}
					},
					{
						desc = "공격 시 35% 확률로 주변 최대 5명의 적에게 공격력 250%의 궤멸 피해를 준다",
						shortDesc = "광역궤멸",
						stats = {
							chance = 0.35,
							range = 60,
							damageMult = 2.5,
							maxTargets = 5
						}
					},
					{
						desc = "공격 시 35% 확률로 주변 최대 5명의 적에게 공격력 300%의 궤멸 피해를 준다",
						shortDesc = "광역궤멸",
						stats = {
							chance = 0.35,
							range = 60,
							damageMult = 3,
							maxTargets = 5
						}
					}
				}
			},
			rewind = {
				condition = "적에게 처음 체력 피해를 받은 뒤 3초",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/hourglass.png",
				tag = "body",
				name = "회귀",
				id = "rewind",
				shortDesc = "시간회귀",
				icon = "src/sprites/icons/imprinticons/04Rewind.png",
				levels = {
					{
						desc = "첫 피해 직전의 체력과 위치를 기록합니다. 3초 뒤 기록한 위치로 돌아가며, 그동안 잃은 {hp.png}의 60%를 되돌립니다.",
						shortDesc = "시간회귀",
						stats = {
							restore = 0.6,
							window = 3
						}
					},
					{
						desc = "첫 피해 직전의 체력과 위치를 기록합니다. 3초 뒤 기록한 위치로 돌아가며, 그동안 잃은 {hp.png}의 70%를 되돌립니다.",
						shortDesc = "시간회귀",
						stats = {
							restore = 0.7,
							window = 3
						}
					},
					{
						desc = "첫 피해 직전의 체력과 위치를 기록합니다. 3초 뒤 기록한 위치로 돌아가며, 그동안 잃은 {hp.png}의 80%를 되돌립니다.",
						shortDesc = "시간회귀",
						stats = {
							restore = 0.8,
							window = 3
						}
					},
					{
						desc = "첫 피해 직전의 체력과 위치를 기록합니다. 3초 뒤 기록한 위치로 돌아가며, 그동안 잃은 {hp.png}의 90%를 되돌립니다.",
						shortDesc = "시간회귀",
						stats = {
							restore = 0.9,
							window = 3
						}
					},
					{
						desc = "첫 피해 직전의 체력과 위치를 기록합니다. 3초 뒤 기록한 위치로 돌아가며, 그동안 잃은 {hp.png}의 100%를 되돌립니다.",
						shortDesc = "시간회귀",
						stats = {
							restore = 1,
							window = 3
						}
					}
				}
			},
			meteor = {
				condition = "기본 공격 시 10% 확률",
				tag = "spawn",
				name = "메테오",
				id = "meteor",
				shortDesc = "대재앙",
				icon = "src/sprites/icons/imprinticons/04Meteor.png",
				levels = {
					{
						desc = "기본 공격 시 10% 확률로 메테오를 떨어뜨려 주변 적 최대 3명에게 각각 {atk.png} 180% 피해를 줍니다. 자신의 최대 {hp.png}가 높을수록 운석과 폭발 범위가 커집니다.",
						shortDesc = "대재앙",
						stats = {
							chance = 0.1,
							icd = 8,
							damageMult = 1.8
						}
					},
					{
						desc = "기본 공격 시 10% 확률로 메테오를 떨어뜨려 주변 적 최대 3명에게 각각 {atk.png} 210% 피해를 줍니다. 자신의 최대 {hp.png}가 높을수록 운석과 폭발 범위가 커집니다.",
						shortDesc = "대재앙",
						stats = {
							chance = 0.1,
							icd = 8,
							damageMult = 2.1
						}
					},
					{
						desc = "기본 공격 시 10% 확률로 메테오를 떨어뜨려 주변 적 최대 3명에게 각각 {atk.png} 240% 피해를 줍니다. 자신의 최대 {hp.png}가 높을수록 운석과 폭발 범위가 커집니다.",
						shortDesc = "대재앙",
						stats = {
							chance = 0.1,
							icd = 8,
							damageMult = 2.4
						}
					},
					{
						desc = "기본 공격 시 10% 확률로 메테오를 떨어뜨려 주변 적 최대 3명에게 각각 {atk.png} 270% 피해를 줍니다. 자신의 최대 {hp.png}가 높을수록 운석과 폭발 범위가 커집니다.",
						shortDesc = "대재앙",
						stats = {
							chance = 0.1,
							icd = 8,
							damageMult = 2.7
						}
					},
					{
						desc = "기본 공격 시 10% 확률로 메테오를 떨어뜨려 주변 적 최대 3명에게 각각 {atk.png} 300% 피해를 줍니다. 자신의 최대 {hp.png}가 높을수록 운석과 폭발 범위가 커집니다.",
						shortDesc = "대재앙",
						stats = {
							chance = 0.1,
							icd = 8,
							damageMult = 3
						}
					}
				}
			},
			shadow_clone = {
				condition = "상시 (전투 시)",
				tag = "spawn",
				name = "분신술",
				id = "shadow_clone",
				shortDesc = "그림자분신",
				icon = "src/sprites/icons/imprinticons/04ShadowClone.png",
				levels = {
					{
						desc = "분신을 소환해 함께 싸운다. 분신이 쓰러지면 2초 후 다시 소환된다",
						shortDesc = "그림자분신",
						stats = {
							hpFrac = 0.55,
							dur = 8,
							respawn = 2,
							atkFrac = 0.7
						}
					},
					{
						desc = "더 강한 분신을 소환해 함께 싸운다. 분신이 쓰러지면 2초 후 다시 소환된다",
						shortDesc = "그림자분신",
						stats = {
							hpFrac = 0.6,
							dur = 8,
							respawn = 2,
							atkFrac = 0.75
						}
					},
					{
						desc = "강력한 분신을 소환해 함께 싸운다. 분신이 쓰러지면 2초 후 다시 소환된다",
						shortDesc = "그림자분신",
						stats = {
							hpFrac = 0.65,
							dur = 8,
							respawn = 2,
							atkFrac = 0.8
						}
					},
					{
						desc = "더욱 강력한 분신을 소환해 함께 싸운다. 분신이 쓰러지면 2초 후 다시 소환된다",
						shortDesc = "그림자분신",
						stats = {
							hpFrac = 0.7,
							dur = 8,
							respawn = 2,
							atkFrac = 0.85
						}
					},
					{
						desc = "본체와 비슷한 강함의 분신을 소환해 함께 싸운다. 분신이 쓰러지면 2초 후 다시 소환된다",
						shortDesc = "그림자분신",
						stats = {
							hpFrac = 0.75,
							dur = 8,
							respawn = 2,
							atkFrac = 0.9
						}
					}
				}
			},
			soul_split = {
				condition = "기본 공격 적중 시",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/soul.png",
				tag = "spawn",
				name = "영혼 분리",
				id = "soul_split",
				shortDesc = "영혼분리",
				icon = "src/sprites/icons/imprinticons/04SoulSplit.png",
				levels = {
					{
						desc = "기본 공격 적중 시 적의 영혼을 3초 동안 몸 밖으로 끄집어낸다. 영혼이 받는 피해는 본체에도 그대로 전달된다.",
						shortDesc = "영혼분리",
						stats = {
							duration = 3,
							icd = 8
						}
					},
					{
						desc = "기본 공격 적중 시 적의 영혼을 3.5초 동안 몸 밖으로 끄집어낸다. 영혼이 받는 피해는 본체에도 그대로 전달된다.",
						shortDesc = "영혼분리",
						stats = {
							duration = 3.5,
							icd = 8
						}
					},
					{
						desc = "기본 공격 적중 시 적의 영혼을 4초 동안 몸 밖으로 끄집어낸다. 영혼이 받는 피해는 본체에도 그대로 전달된다.",
						shortDesc = "영혼분리",
						stats = {
							duration = 4,
							icd = 8
						}
					},
					{
						desc = "기본 공격 적중 시 적의 영혼을 4.5초 동안 몸 밖으로 끄집어낸다. 영혼이 받는 피해는 본체에도 그대로 전달된다.",
						shortDesc = "영혼분리",
						stats = {
							duration = 4.5,
							icd = 8
						}
					},
					{
						desc = "기본 공격 적중 시 적의 영혼을 5초 동안 몸 밖으로 끄집어낸다. 영혼이 받는 피해는 본체에도 그대로 전달된다.",
						shortDesc = "영혼분리",
						stats = {
							duration = 5,
							icd = 8
						}
					}
				}
			},
			revival = {
				condition = "사망 시",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/cross.png",
				tag = "buff",
				name = "부활",
				id = "revival",
				shortDesc = "전장복귀",
				icon = "src/sprites/icons/imprinticons/04Revival.png",
				levels = {
					{
						desc = "사망 시 한 번 부활한다. 체력 40%으로 되살아나며 공격력 +20% (4초)",
						shortDesc = "전장복귀",
						stats = {
							hpFrac = 0.4,
							atkBoost = 0.2,
							duration = 4
						}
					},
					{
						desc = "사망 시 한 번 부활한다. 체력 50%으로 되살아나며 공격력 +25% (5초)",
						shortDesc = "전장복귀",
						stats = {
							hpFrac = 0.5,
							atkBoost = 0.25,
							duration = 5
						}
					},
					{
						desc = "사망 시 한 번 부활한다. 체력 60%으로 되살아나며 공격력 +30% (6초)",
						shortDesc = "전장복귀",
						stats = {
							hpFrac = 0.6,
							atkBoost = 0.3,
							duration = 6
						}
					},
					{
						desc = "사망 시 한 번 부활한다. 체력 70%으로 되살아나며 공격력 +35% (7초)",
						shortDesc = "전장복귀",
						stats = {
							hpFrac = 0.7,
							atkBoost = 0.35,
							duration = 7
						}
					},
					{
						desc = "사망 시 한 번 부활한다. 체력 80%으로 되살아나며 공격력 +40% (8초)",
						shortDesc = "전장복귀",
						stats = {
							hpFrac = 0.8,
							atkBoost = 0.4,
							duration = 8
						}
					}
				}
			},
			majesty = {
				condition = "상시 (생존 시)",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/angry.png",
				tag = "debuff",
				name = "위엄",
				id = "majesty",
				shortDesc = "적 약화",
				icon = "src/sprites/icons/imprinticons/05Majesty.png",
				levels = {
					{
						desc = "존재만으로 모든 적의 공격력 -12%, 최대 체력 -15% 감소",
						shortDesc = "적 약화",
						stats = {
							atkDebuff = 0.12,
							hpDebuff = 0.15
						}
					},
					{
						desc = "존재만으로 모든 적의 공격력 -20%, 최대 체력 -23% 감소",
						shortDesc = "적 약화",
						stats = {
							atkDebuff = 0.2,
							hpDebuff = 0.23
						}
					},
					{
						desc = "존재만으로 모든 적의 공격력 -27%, 최대 체력 -30% 감소",
						shortDesc = "적 약화",
						stats = {
							atkDebuff = 0.27,
							hpDebuff = 0.3
						}
					},
					{
						desc = "존재만으로 모든 적의 공격력 -35%, 최대 체력 -38% 감소",
						shortDesc = "적 약화",
						stats = {
							atkDebuff = 0.35,
							hpDebuff = 0.38
						}
					},
					{
						desc = "존재만으로 모든 적의 공격력 -42%, 최대 체력 -45% 감소",
						shortDesc = "적 약화",
						stats = {
							atkDebuff = 0.42,
							hpDebuff = 0.45
						}
					}
				}
			},
			ruin = {
				condition = "상시",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/eye.png",
				tag = "buff",
				name = "섬멸",
				id = "ruin",
				shortDesc = "지속압살",
				icon = "src/sprites/icons/imprinticons/05Ruin.png",
				levels = {
					{
						desc = "존재만으로 모든 적이 1초마다 해당 유닛 공격력의 6% 지속 피해를 받는다.",
						shortDesc = "지속압살",
						stats = {
							dotRatio = 0.06
						}
					},
					{
						desc = "존재만으로 모든 적이 1초마다 해당 유닛 공격력의 9% 지속 피해를 받는다.",
						shortDesc = "지속압살",
						stats = {
							dotRatio = 0.09
						}
					},
					{
						desc = "존재만으로 모든 적이 1초마다 해당 유닛 공격력의 12% 지속 피해를 받는다.",
						shortDesc = "지속압살",
						stats = {
							dotRatio = 0.12
						}
					},
					{
						desc = "존재만으로 모든 적이 1초마다 해당 유닛 공격력의 16% 지속 피해를 받는다.",
						shortDesc = "지속압살",
						stats = {
							dotRatio = 0.16
						}
					},
					{
						desc = "존재만으로 모든 적이 1초마다 해당 유닛 공격력의 20% 지속 피해를 받는다.",
						shortDesc = "지속압살",
						stats = {
							dotRatio = 0.2
						}
					}
				}
			},
			colossus_descent = {
				condition = "상시",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/golem.png",
				tag = "spawn",
				name = "거신강림",
				id = "colossus_descent",
				shortDesc = "거신소환",
				icon = "src/sprites/icons/imprinticons/05ColossusDescent.png",
				levels = {
					{
						desc = "유닛의 체력 200%, 공격력 40%인 거신을 소환한다.",
						shortDesc = "거신소환",
						stats = {
							hpFrac = 2,
							skillEvery = 5,
							respawn = 3,
							atkFrac = 0.4,
							stun = 0,
							skillDmg = 1,
							knockback = 20,
							skillTargets = 5
						}
					},
					{
						desc = "유닛의 체력 240%, 공격력 50%인 거신을 소환한다.",
						shortDesc = "거신소환",
						stats = {
							hpFrac = 2.4,
							skillEvery = 5,
							respawn = 3,
							atkFrac = 0.5,
							stun = 0,
							skillDmg = 1.4,
							knockback = 22,
							skillTargets = 5
						}
					},
					{
						desc = "유닛의 체력 300%, 공격력 60%인 거신을 소환한다. 거신이 넉백후 적을 0.4초 기절 시킨다",
						shortDesc = "거신소환",
						stats = {
							hpFrac = 3,
							skillEvery = 5,
							respawn = 3,
							atkFrac = 0.6,
							stun = 0.4,
							skillDmg = 2,
							knockback = 25,
							skillTargets = 5
						}
					},
					{
						desc = "유닛의 체력 340%, 공격력 75%인 거신을 소환한다. 거신이 넉백후 적을 0.6초 기절 시킨다",
						shortDesc = "거신소환",
						stats = {
							hpFrac = 3.4,
							skillEvery = 5,
							respawn = 3,
							atkFrac = 0.75,
							stun = 0.6,
							skillDmg = 2.4,
							knockback = 28,
							skillTargets = 5
						}
					},
					{
						desc = "유닛의 체력 400%, 공격력 90%인 거신을 소환한다. 거신이 넉백후 적을 0.8초 기절 시킨다",
						shortDesc = "거신소환",
						stats = {
							hpFrac = 4,
							skillEvery = 5,
							respawn = 3,
							atkFrac = 0.9,
							stun = 0.8,
							skillDmg = 3,
							knockback = 32,
							skillTargets = 5
						}
					}
				}
			},
			overlord = {
				condition = "적 처치 후",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/fear.png",
				tag = "spawn",
				name = "군주",
				id = "overlord",
				shortDesc = "그림자 군주",
				icon = "src/sprites/icons/imprinticons/05Overlord.png",
				levels = {
					{
						desc = "처치한 모든 종류의 적을 최대 2명 부하로 만든다",
						shortDesc = "그림자 군주",
						stats = {
							pwrMul = 1,
							maxFollowers = 2
						}
					},
					{
						desc = "처치한 모든 종류의 적을 최대 3명 부하로 만든다",
						shortDesc = "그림자 군주",
						stats = {
							pwrMul = 1,
							maxFollowers = 3
						}
					},
					{
						desc = "처치한 모든 종류의 적을 최대 4명 부하로 만든다",
						shortDesc = "그림자 군주",
						stats = {
							pwrMul = 1,
							maxFollowers = 4
						}
					},
					{
						desc = "처치한 모든 종류의 적을 최대 4명 부하로 만들고 그림자들이 더 강해진다",
						shortDesc = "그림자 군주",
						stats = {
							pwrMul = 2,
							maxFollowers = 4
						}
					},
					{
						desc = "처치한 모든 종류의 적을 최대 4명 부하로 만들고 그림자들이 더욱 강해진다",
						shortDesc = "그림자 군주",
						stats = {
							pwrMul = 4,
							maxFollowers = 4
						}
					}
				}
			},
			undying_soul = {
				condition = "사망 시",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/holy.png",
				tag = "buff",
				name = "불사혼",
				id = "undying_soul",
				shortDesc = "사후전투",
				icon = "src/sprites/icons/imprinticons/05UndyingSoul.png",
				levels = {
					{
						desc = "사망 시, 공격력 40%의 불사혼 상태로 전투에 남는다",
						shortDesc = "사후전투",
						stats = {
							atkFrac = 0.4
						}
					},
					{
						desc = "사망 시, 공격력 60%의 불사혼 상태로 전투에 남는다",
						shortDesc = "사후전투",
						stats = {
							atkFrac = 0.6
						}
					},
					{
						desc = "사망 시, 공격력 80%의 불사혼 상태로 전투에 남는다",
						shortDesc = "사후전투",
						stats = {
							atkFrac = 0.8
						}
					},
					{
						desc = "사망 시, 공격력 100%의 불사혼 상태로 전투에 남는다",
						shortDesc = "사후전투",
						stats = {
							atkFrac = 1
						}
					},
					{
						desc = "사망 시, 공격력 120%의 불사혼 상태로 전투에 남는다",
						shortDesc = "사후전투",
						stats = {
							atkFrac = 1.2
						}
					}
				}
			},
			timeless = {
				condition = "공격 시 8% 확률로",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/hourglass.png",
				tag = "buff",
				name = "타임리스",
				id = "timeless",
				shortDesc = "시간정지",
				icon = "src/sprites/icons/imprinticons/05Timeless.png",
				levels = {
					{
						desc = "공격 시 8% 확률로 3초동안 시간을 정지 시킨다",
						shortDesc = "시간정지",
						stats = {
							chance = 0.08,
							icd = 5,
							duration = 3
						}
					},
					{
						desc = "공격 시 10% 확률로 3.5초동안 시간을 정지 시킨다",
						shortDesc = "시간정지",
						stats = {
							chance = 0.1,
							icd = 5,
							duration = 3.5
						}
					},
					{
						desc = "공격 시 12% 확률로 4초동안 시간을 정지 시킨다",
						shortDesc = "시간정지",
						stats = {
							chance = 0.12,
							icd = 5,
							duration = 4
						}
					},
					{
						desc = "공격 시 15% 확률로 5초동안 시간을 정지 시킨다",
						shortDesc = "시간정지",
						stats = {
							chance = 0.15,
							icd = 5,
							duration = 5
						}
					},
					{
						desc = "공격 시 18% 확률로 6초동안 시간을 정지 시킨다",
						shortDesc = "시간정지",
						stats = {
							chance = 0.18,
							icd = 5,
							duration = 6
						}
					}
				}
			},
			amplify = {
				condition = "스킬 발동 시",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/skillsizeupgrade.png",
				tag = "buff",
				name = "증폭 (스킬)",
				id = "amplify",
				shortDesc = "범위증가",
				icon = "src/sprites/icons/imprinticons/01Amplify.png",
				levels = {
					{
						desc = "스킬 크기 30% 증가",
						shortDesc = "범위증가",
						stats = {
							skillRangeMult = 1.3
						}
					},
					{
						desc = "스킬 크기 35% 증가",
						shortDesc = "범위증가",
						stats = {
							skillRangeMult = 1.35
						}
					},
					{
						desc = "스킬 크기 40% 증가",
						shortDesc = "범위증가",
						stats = {
							skillRangeMult = 1.4
						}
					},
					{
						desc = "스킬 크기 45% 증가",
						shortDesc = "범위증가",
						stats = {
							skillRangeMult = 1.45
						}
					},
					{
						desc = "스킬 크기 50% 증가",
						shortDesc = "범위증가",
						stats = {
							skillRangeMult = 1.5
						}
					}
				}
			}
		}
	},
	power = {
		aspdTau = 0.08,
		betaASPD = 1.1,
		betaAtk = 0.7,
		beta = 0.8,
		alpha = 0.6,
		baseline = {
			ATK0 = 9,
			HP0 = 70,
			ASPD0 = 1.5
		},
		skill = {
			expectedSecondaryTargetRate = 0.45,
			encounterHorizon = 12,
			maxUtilityRatio = 0.45,
			utilityWeight = 0.75
		},
		absorb = {
			hpPerPower = 0.3,
			gaugePerPower = 0.0045,
			aspdPerPower = 0.035,
			atkPerPower = 0.09,
			equalize = {
				powerPerPower = 0.6,
				enabled = true,
				bonusByVictim = {}
			}
		}
	}
}

var_0_0.evolution = {
	absorbGrowthVersion = 3,
	maxTierBonus = 1.25,
	rankThresholds = {
		normal = {
			[2] = 5,
			[3] = 12
		},
		special = {
			[2] = 8,
			[3] = 18
		},
		advanced = {
			[2] = 6,
			[3] = 14
		},
		rare = {
			[2] = 8,
			[3] = 18
		},
		legendary = {
			[2] = 10,
			[3] = 20
		},
		prism = {
			[2] = 16,
			[3] = 28
		}
	},
	maxRankByGrade = {
		prism = 3,
		legendary = 3,
		rare = 3,
		advanced = 3,
		special = 3,
		normal = 3
	},
	baseDeltaPWR = {
		base = 58,
		scaleByAbsorber = 0.12
	},
	aspdGrowth = {
		displayDeltaMul = 8,
		internalScale = 0.35,
		maxDeltaRel = 0.35,
		maxDeltaPerAbsorb = 1.2
	},
	absorbGrowthEfficiency = {
		{
			maxLevel = 30,
			ratio = 1
		},
		{
			ratio = 0.5,
			maxLevel = math.huge
		}
	},
	getAbsorbLvMultipliers = function(arg_1_0, arg_1_1)
		local var_1_0 = math.max(0, math.floor(tonumber(arg_1_0 or 0) or 0)) + 1
		local var_1_1 = 1
		local var_1_2 = 0

		for iter_1_0, iter_1_1 in ipairs(var_0_0.evolution.absorbGrowthEfficiency) do
			local var_1_3 = iter_1_1.maxLevel

			var_1_2 = var_1_2 + math.max(0, math.min(var_1_0, var_1_3) - var_1_1) * iter_1_1.ratio
			var_1_1 = var_1_3

			if var_1_0 <= var_1_1 then
				break
			end
		end

		return {
			atk = 1 + 0.01 * var_1_2,
			aspd = 1 + 0.005 * var_1_2,
			hp = 1 + 0.015 * var_1_2
		}
	end,
	rebaseLegacyAbsorbStats = function(arg_2_0)
		if not arg_2_0 or not arg_2_0.stats or (tonumber(arg_2_0._absorbGrowthVersion) or 0) >= var_0_0.evolution.absorbGrowthVersion then
			return
		end

		local var_2_0 = math.max(1, math.floor(tonumber(arg_2_0._absorbLvApplied or arg_2_0.absorbLV or 1) or 1))
		local var_2_1 = var_2_0 - 1

		if tonumber(arg_2_0._absorbGrowthVersion) == 1 then
			local var_2_2 = 1

			var_2_1 = 0

			for iter_2_0, iter_2_1 in ipairs({
				{
					5,
					1
				},
				{
					10,
					0.8
				},
				{
					15,
					0.6
				},
				{
					20,
					0.45
				},
				{
					30,
					0.3
				},
				{
					math.huge,
					0.2
				}
			}) do
				var_2_1 = var_2_1 + math.max(0, math.min(var_2_0, iter_2_1[1]) - var_2_2) * iter_2_1[2]
				var_2_2 = iter_2_1[1]

				if var_2_0 <= var_2_2 then
					break
				end
			end
		end

		if tonumber(arg_2_0._absorbGrowthVersion) == 2 then
			local var_2_3 = var_0_0.evolution.rankThresholds[arg_2_0.grade or "normal"] or var_0_0.evolution.rankThresholds.normal
			local var_2_4 = 1

			var_2_1 = 0

			for iter_2_2, iter_2_3 in ipairs({
				{
					var_2_3[3],
					1
				},
				{
					30,
					0.8
				},
				{
					45,
					1
				},
				{
					60,
					0.6
				},
				{
					100,
					0.8
				},
				{
					math.huge,
					0.5
				}
			}) do
				var_2_1 = var_2_1 + math.max(0, math.min(var_2_0, iter_2_3[1]) - var_2_4) * iter_2_3[2]
				var_2_4 = iter_2_3[1]

				if var_2_0 <= var_2_4 then
					break
				end
			end
		end

		local var_2_5 = var_0_0.evolution.getAbsorbLvMultipliers(var_2_0 - 1, arg_2_0.grade)

		arg_2_0.stats.hp = math.max(1, math.floor((arg_2_0.stats.hp or 1) * var_2_5.hp / (1 + 0.015 * var_2_1) + 0.5))
		arg_2_0.stats.atk = math.max(0, (arg_2_0.stats.atk or 0) * var_2_5.atk / (1 + 0.01 * var_2_1))
		arg_2_0.stats.aspd = math.max(0.05, (arg_2_0.stats.aspd or 0.05) * var_2_5.aspd / (1 + 0.005 * var_2_1))
		arg_2_0._absorbGrowthVersion = var_0_0.evolution.absorbGrowthVersion
	end,
	classBonus = {
		S = 0.3,
		W = 0.35,
		A = 0.35
	},
	rankMultipliers = {
		normal = {
			1,
			2.2,
			4.8
		},
		special = {
			1,
			3.1,
			7.2
		},
		advanced = {
			1,
			2.7,
			6
		},
		rare = {
			1,
			3.1,
			7.2
		},
		legendary = {
			1,
			3.6,
			9.5
		},
		prism = {
			1,
			4.2,
			12.8
		}
	},
	maxTier = {
		rates = {
			W = {
				hp = 0.05
			},
			S = {
				atk = 0.04
			},
			A = {
				aspd = 0.03
			}
		},
		mins = {
			aspd = 0.1,
			hp = 6,
			atk = 3
		}
	}
}
var_0_0.economy = {
	spins = {
		paidCostStep = 50,
		paidStartCost = 100,
		freePerWave = 3,
		refundOnFail = 0,
		paidMaxPerWave = 3
	},
	absorb = {
		rewardByRank = {}
	},
	wave = {
		survivalBonusMax = 10,
		fastClearTime = 20,
		fastClearBonusMax = 20,
		baseClear = 100,
		condolenceOnFail = 10
	}
}
var_0_0.slot = {
	winSuppressProb = 0,
	forceWinProb = 0,
	winTiers = {
		{
			labelKo = "잭팟!",
			lines = 5,
			key = "jackpot",
			labelEn = "Jackpot!"
		},
		{
			labelKo = "폭주!",
			lines = 4,
			key = "overdrive",
			labelEn = "Overdrive!"
		},
		{
			labelKo = "폭발!",
			lines = 3,
			key = "burst",
			labelEn = "Burst!"
		}
	},
	symbolWeights = {
		H = 0.15,
		S = 0.2,
		A = 0.2,
		M = 0.15,
		W = 0.2,
		D = 0.1
	}
}
var_0_0.hiddenLuck = {
	debugLogs = false,
	debtMax = 3,
	debtMin = -3,
	naturalWinProbability = 0.2274,
	early = {
		[2] = {
			maxPermanentUnits = 1,
			chances = {
				nil,
				nil,
				0.25,
				0.6,
				1
			}
		},
		[3] = {
			maxPermanentUnits = 2,
			chances = {
				nil,
				nil,
				nil,
				0.2,
				0.55,
				1
			}
		}
	}
}
var_0_0.unitGrades = {
	order = {
		"normal",
		"advanced",
		"rare",
		"legendary",
		"prism"
	},
	probabilities = {
		prism = 0,
		legendary = 0,
		rare = 0,
		advanced = 0,
		special = 0,
		normal = 1
	},
	labels = {
		prism = "프리즘",
		legendary = "전설",
		rare = "희귀",
		advanced = "고급",
		special = "특수",
		normal = "일반"
	},
	colors = {
		normal = {
			1,
			1,
			1,
			1
		},
		special = {
			0.9411764705882353,
			0.30980392156862746,
			0.8470588235294118,
			1
		},
		advanced = {
			0.6,
			0.85,
			0.65,
			1
		},
		rare = {
			0.6,
			0.75,
			1,
			1
		},
		legendary = {
			0.9215686274509803,
			0.5725490196078431,
			0.16862745098039217,
			1
		},
		prism = {
			0.8,
			0.4,
			1,
			1
		}
	}
}

return var_0_0
