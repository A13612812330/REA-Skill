return {
	virtual = {
		W = 640,
		H = 360
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
			normal = 1,
			prism = 5,
			legendary = 4,
			rare = 3,
			advanced = 2
		},
		definitions = {
			fortify = {
				id = "fortify",
				tag = "buff",
				shortDesc = "피해감소",
				condition = "상시",
				icon = "src/sprites/icons/imprinticons/01Fortify.png",
				name = "견고함",
				levels = {
					{
						shortDesc = "피해감소",
						desc = "받는 피해 15% 감소",
						stats = {
							damageReduction = 0.15
						}
					},
					{
						shortDesc = "피해감소",
						desc = "받는 피해 22% 감소",
						stats = {
							damageReduction = 0.22
						}
					},
					{
						shortDesc = "피해감소",
						desc = "받는 피해 27% 감소",
						stats = {
							damageReduction = 0.27
						}
					},
					{
						shortDesc = "피해감소",
						desc = "받는 피해 31% 감소",
						stats = {
							damageReduction = 0.31
						}
					},
					{
						shortDesc = "피해감소",
						desc = "받는 피해 34% 감소",
						stats = {
							damageReduction = 0.34
						}
					}
				}
			},
			pierce = {
				id = "pierce",
				tag = "buff",
				shortDesc = "공격관통",
				condition = "기본 공격 시",
				icon = "src/sprites/icons/imprinticons/01Pierce.png",
				name = "관통",
				levels = {
					{
						shortDesc = "공격관통",
						desc = "기본 공격이 최대 1명 추가 관통",
						stats = {
							maxPierceTargets = 1
						}
					},
					{
						shortDesc = "공격관통",
						desc = "기본 공격이 최대 2명 추가 관통",
						stats = {
							maxPierceTargets = 2
						}
					},
					{
						shortDesc = "공격관통",
						desc = "기본 공격이 최대 3명 추가 관통",
						stats = {
							maxPierceTargets = 3
						}
					},
					{
						shortDesc = "공격관통",
						desc = "기본 공격이 최대 4명 추가 관통",
						stats = {
							maxPierceTargets = 4
						}
					},
					{
						shortDesc = "공격관통",
						desc = "기본 공격이 최대 5명 추가 관통",
						stats = {
							maxPierceTargets = 5
						}
					}
				}
			},
			brace = {
				id = "brace",
				tag = "buff",
				shortDesc = "공격강화",
				condition = "공격시",
				icon = "src/sprites/icons/imprinticons/01Brace.png",
				name = "굳히기",
				levels = {
					{
						shortDesc = "공격강화",
						desc = "기본 공격 후 힘을 모아, 다음 기본 공격이 {atk.png} +25% 강화됩니다.",
						stats = {
							afterAttackDelay = 0.25,
							nextHitDamageMult = 1.25
						}
					},
					{
						shortDesc = "공격강화",
						desc = "기본 공격 후 힘을 모아, 다음 기본 공격이 {atk.png} +35% 강화됩니다.",
						stats = {
							afterAttackDelay = 0.25,
							nextHitDamageMult = 1.35
						}
					},
					{
						shortDesc = "공격강화",
						desc = "기본 공격 후 힘을 모아, 다음 기본 공격이 {atk.png} +50% 강화됩니다.",
						stats = {
							afterAttackDelay = 0.25,
							nextHitDamageMult = 1.5
						}
					},
					{
						shortDesc = "공격강화",
						desc = "기본 공격 후 힘을 모아, 다음 기본 공격이 {atk.png} +65% 강화됩니다.",
						stats = {
							afterAttackDelay = 0.25,
							nextHitDamageMult = 1.65
						}
					},
					{
						shortDesc = "공격강화",
						desc = "기본 공격 후 힘을 모아, 다음 기본 공격이 {atk.png} +80% 강화됩니다.",
						stats = {
							afterAttackDelay = 0.25,
							nextHitDamageMult = 1.8
						}
					}
				}
			},
			volley = {
				id = "volley",
				tag = "spawn",
				shortDesc = "공격추가",
				condition = "3번째 공격마다",
				icon = "src/sprites/icons/imprinticons/01Volley.png",
				name = "연사",
				levels = {
					{
						shortDesc = "공격추가",
						desc = "3번째 기본 공격마다 동일 대상을 {atk.png} 40% 피해로 즉시 한 번 더 공격합니다.",
						stats = {
							every = 3,
							extraHitFrac = 0.4
						}
					},
					{
						shortDesc = "공격추가",
						desc = "3번째 기본 공격마다 동일 대상을 {atk.png} 60% 피해로 즉시 한 번 더 공격합니다.",
						stats = {
							every = 3,
							extraHitFrac = 0.6
						}
					},
					{
						shortDesc = "공격추가",
						desc = "3번째 기본 공격마다 동일 대상을 {atk.png} 80% 피해로 즉시 한 번 더 공격합니다.",
						stats = {
							every = 3,
							extraHitFrac = 0.8
						}
					},
					{
						shortDesc = "공격추가",
						desc = "3번째 기본 공격마다 동일 대상을 {atk.png} 100% 피해로 즉시 한 번 더 공격합니다.",
						stats = {
							every = 3,
							extraHitFrac = 1
						}
					},
					{
						shortDesc = "공격추가",
						desc = "3번째 기본 공격마다 동일 대상을 {atk.png} 130% 피해로 즉시 한 번 더 공격합니다.",
						stats = {
							every = 3,
							extraHitFrac = 1.3
						}
					}
				}
			},
			blind = {
				id = "blind",
				tag = "buff",
				shortDesc = "공격무효",
				condition = "공격시 16%",
				icon = "src/sprites/icons/imprinticons/02Blind.png",
				name = "실명",
				levels = {
					{
						shortDesc = "공격무효",
						desc = "공격 시 16% 확률로 대상 적이 실명 상태가 되어 0.4초간 공격이 빗나간다",
						stats = {
							icd = 2,
							blindDur = 0.4,
							chance = 0.16
						}
					},
					{
						shortDesc = "공격무효",
						desc = "공격 시 16% 확률로 대상 적이 실명 상태가 되어 0.6초간 공격이 빗나간다",
						stats = {
							icd = 2,
							blindDur = 0.6,
							chance = 0.16
						}
					},
					{
						shortDesc = "공격무효",
						desc = "공격 시 16% 확률로 대상 적이 실명 상태가 되어 0.8초간 공격이 빗나간다",
						stats = {
							icd = 2,
							blindDur = 0.8,
							chance = 0.16
						}
					},
					{
						shortDesc = "공격무효",
						desc = "공격 시 16% 확률로 대상 적이 실명 상태가 되어 1.0초간 공격이 빗나간다",
						stats = {
							icd = 2,
							blindDur = 1,
							chance = 0.16
						}
					},
					{
						shortDesc = "공격무효",
						desc = "공격 시 16% 확률로 대상 적이 실명 상태가 되어 1.3초간 공격이 빗나간다",
						stats = {
							icd = 2,
							blindDur = 1.3,
							chance = 0.16
						}
					}
				}
			},
			transfer = {
				id = "transfer",
				tag = "buff",
				shortDesc = "피해전이",
				condition = "공격시",
				icon = "src/sprites/icons/imprinticons/01Diffusion.png",
				name = "전이",
				levels = {
					{
						shortDesc = "피해전이",
						desc = "공격 시 주변의 다른 적 1명에게 {atk.png} 40% 피해가 전이됩니다.",
						stats = {
							spreadRange = 36,
							spreadTargets = 1,
							spreadFrac = 0.4
						}
					},
					{
						shortDesc = "피해전이",
						desc = "공격 시 주변의 다른 적 1명에게 {atk.png} 40% 피해가 전이됩니다.",
						stats = {
							spreadRange = 36,
							spreadTargets = 1,
							spreadFrac = 0.4
						}
					},
					{
						shortDesc = "피해전이",
						desc = "공격 시 주변의 다른 적 2명에게 {atk.png} 40% 피해가 전이됩니다.",
						stats = {
							spreadRange = 36,
							spreadTargets = 2,
							spreadFrac = 0.4
						}
					},
					{
						shortDesc = "피해전이",
						desc = "공격 시 주변의 다른 적 2명에게 {atk.png} 40% 피해가 전이됩니다.",
						stats = {
							spreadRange = 36,
							spreadTargets = 2,
							spreadFrac = 0.4
						}
					},
					{
						shortDesc = "피해전이",
						desc = "공격 시 주변의 다른 적 3명에게 {atk.png} 40% 피해가 전이됩니다.",
						stats = {
							spreadRange = 36,
							spreadTargets = 3,
							spreadFrac = 0.4
						}
					}
				}
			},
			overdrive = {
				id = "overdrive",
				tag = "buff",
				shortDesc = "격파강화",
				condition = "적 처치 후",
				icon = "src/sprites/icons/imprinticons/01Overdrive.png",
				name = "오버드라이브",
				levels = {
					{
						shortDesc = "격파강화",
						desc = "적 처치 시 다음 기본 공격이 {atk.png} +75% 강화됩니다.",
						stats = {
							killDamageBoost = 0.75
						}
					},
					{
						shortDesc = "격파강화",
						desc = "적 처치 시 다음 기본 공격이 {atk.png} +100% 강화됩니다.",
						stats = {
							killDamageBoost = 1
						}
					},
					{
						shortDesc = "격파강화",
						desc = "적 처치 시 다음 기본 공격이 {atk.png} +125% 강화됩니다.",
						stats = {
							killDamageBoost = 1.25
						}
					},
					{
						shortDesc = "격파강화",
						desc = "적 처치 시 다음 기본 공격이 {atk.png} +150% 강화됩니다.",
						stats = {
							killDamageBoost = 1.5
						}
					},
					{
						shortDesc = "격파강화",
						desc = "적 처치 시 다음 기본 공격이 {atk.png} +175% 강화됩니다.",
						stats = {
							killDamageBoost = 1.75
						}
					}
				}
			},
			relentless = {
				id = "relentless",
				tag = "buff",
				shortDesc = "연타가속",
				condition = "공격시",
				icon = "src/sprites/icons/imprinticons/01Relentless.png",
				name = "집요함",
				levels = {
					{
						shortDesc = "연타가속",
						desc = "연속 공격마다 {aspd.png} +4% (최대 4중첩)",
						stats = {
							maxStacks = 4,
							aspdPerStack = 0.04,
							resetAfter = 0.5
						}
					},
					{
						shortDesc = "연타가속",
						desc = "연속 공격마다 {aspd.png} +5% (최대 4중첩)",
						stats = {
							maxStacks = 4,
							aspdPerStack = 0.05,
							resetAfter = 0.5
						}
					},
					{
						shortDesc = "연타가속",
						desc = "연속 공격마다 {aspd.png} +5% (최대 5중첩)",
						stats = {
							maxStacks = 5,
							aspdPerStack = 0.05,
							resetAfter = 0.5
						}
					},
					{
						shortDesc = "연타가속",
						desc = "연속 공격마다 {aspd.png} +6% (최대 5중첩)",
						stats = {
							maxStacks = 5,
							aspdPerStack = 0.06,
							resetAfter = 0.5
						}
					},
					{
						shortDesc = "연타가속",
						desc = "연속 공격마다 {aspd.png} +6% (최대 6중첩)",
						stats = {
							maxStacks = 6,
							aspdPerStack = 0.06,
							resetAfter = 0.5
						}
					}
				}
			},
			bash = {
				id = "bash",
				tag = "buff",
				shortDesc = "기절",
				condition = "공격시 18%",
				icon = "src/sprites/icons/imprinticons/02Bash.png",
				name = "충격타",
				levels = {
					{
						shortDesc = "기절",
						desc = "공격 시 18% 확률로 대상을 0.5초간 기절",
						stats = {
							icd = 2,
							chance = 0.18,
							stunDur = 0.5
						}
					},
					{
						shortDesc = "기절",
						desc = "공격 시 18% 확률로 대상을 0.7초간 기절",
						stats = {
							icd = 2,
							chance = 0.18,
							stunDur = 0.7
						}
					},
					{
						shortDesc = "기절",
						desc = "공격 시 18% 확률로 대상을 0.9초간 기절",
						stats = {
							icd = 2,
							chance = 0.18,
							stunDur = 0.9
						}
					},
					{
						shortDesc = "기절",
						desc = "공격 시 18% 확률로 대상을 1.1초간 기절",
						stats = {
							icd = 2,
							chance = 0.18,
							stunDur = 1.1
						}
					},
					{
						shortDesc = "기절",
						desc = "공격 시 18% 확률로 대상을 1.3초간 기절",
						stats = {
							icd = 2,
							chance = 0.18,
							stunDur = 1.3
						}
					}
				}
			},
			knockback = {
				id = "knockback",
				tag = "body",
				shortDesc = "밀쳐내기",
				condition = "공격시 22%",
				icon = "src/sprites/icons/imprinticons/02Knockback.png",
				name = "넉백",
				levels = {
					{
						shortDesc = "밀쳐내기",
						desc = "공격 시 22% 확률로 대상 적을 살짝 밀쳐낸다",
						stats = {
							icd = 1.5,
							chance = 0.22,
							knockbackDist = 20
						}
					},
					{
						shortDesc = "밀쳐내기",
						desc = "공격 시 22% 확률로 대상 적을 확실히 밀쳐낸다",
						stats = {
							icd = 1.5,
							chance = 0.22,
							knockbackDist = 28
						}
					},
					{
						shortDesc = "밀쳐내기",
						desc = "공격 시 22% 확률로 대상 적을 크게 밀쳐낸다",
						stats = {
							icd = 1.5,
							chance = 0.22,
							knockbackDist = 36
						}
					},
					{
						shortDesc = "밀쳐내기",
						desc = "공격 시 22% 확률로 대상 적을 강하게 밀쳐낸다",
						stats = {
							icd = 1.5,
							chance = 0.22,
							knockbackDist = 45
						}
					},
					{
						shortDesc = "밀쳐내기",
						desc = "공격 시 22% 확률로 대상 적을 멀리 밀쳐낸다",
						stats = {
							icd = 1.5,
							chance = 0.22,
							knockbackDist = 55
						}
					}
				}
			},
			poison = {
				id = "poison",
				tag = "buff",
				shortDesc = "맹독",
				condition = "공격시",
				icon = "src/sprites/icons/imprinticons/02Poison.png",
				name = "독",
				levels = {
					{
						shortDesc = "맹독",
						desc = "공격 시 25% 확률로 독을 부여한다 (2초 지속)",
						stats = {
							maxHPFrac = 0.012,
							duration = 2,
							tickInterval = 0.5,
							maxStacks = 1,
							chance = 0.25
						}
					},
					{
						shortDesc = "맹독",
						desc = "공격 시 25% 확률로 독을 부여한다 (2.5초 지속)",
						stats = {
							maxHPFrac = 0.012,
							duration = 2.5,
							tickInterval = 0.5,
							maxStacks = 1,
							chance = 0.25
						}
					},
					{
						shortDesc = "맹독",
						desc = "공격 시 25% 확률로 독을 부여한다 (3초 지속)",
						stats = {
							maxHPFrac = 0.012,
							duration = 3,
							tickInterval = 0.5,
							maxStacks = 1,
							chance = 0.25
						}
					},
					{
						shortDesc = "맹독",
						desc = "공격 시 25% 확률로 독을 부여한다 (4초 지속)",
						stats = {
							maxHPFrac = 0.012,
							duration = 4,
							tickInterval = 0.5,
							maxStacks = 1,
							chance = 0.25
						}
					},
					{
						shortDesc = "맹독",
						desc = "공격 시 25% 확률로 독을 부여한다 (5초 지속)",
						stats = {
							maxHPFrac = 0.012,
							duration = 5,
							tickInterval = 0.5,
							maxStacks = 1,
							chance = 0.25
						}
					}
				}
			},
			block = {
				id = "block",
				tag = "buff",
				shortDesc = "공격차단",
				condition = "상시",
				icon = "src/sprites/icons/imprinticons/02Block.png",
				name = "블록",
				levels = {
					{
						shortDesc = "공격차단",
						desc = "피격 시 15% 확률로 공격을 막아낸다",
						stats = {
							blockProb = 0.15
						}
					},
					{
						shortDesc = "공격차단",
						desc = "피격 시 18% 확률로 공격을 막아낸다",
						stats = {
							blockProb = 0.18
						}
					},
					{
						shortDesc = "공격차단",
						desc = "피격 시 22% 확률로 공격을 막아낸다",
						stats = {
							blockProb = 0.22
						}
					},
					{
						shortDesc = "공격차단",
						desc = "피격 시 26% 확률로 공격을 막아낸다",
						stats = {
							blockProb = 0.26
						}
					},
					{
						shortDesc = "공격차단",
						desc = "피격 시 30% 확률로 공격을 막아낸다",
						stats = {
							blockProb = 0.3
						}
					}
				}
			},
			lifesteal = {
				id = "lifesteal",
				tag = "buff",
				shortDesc = "체력흡혈",
				condition = "상시",
				icon = "src/sprites/icons/imprinticons/02Lifesteal.png",
				name = "흡혈",
				levels = {
					{
						shortDesc = "체력흡혈",
						desc = "공격으로 준 피해의 6%를 체력으로 회복한다",
						stats = {
							stealFrac = 0.06
						}
					},
					{
						shortDesc = "체력흡혈",
						desc = "공격으로 준 피해의 8%를 체력으로 회복한다",
						stats = {
							stealFrac = 0.08
						}
					},
					{
						shortDesc = "체력흡혈",
						desc = "공격으로 준 피해의 10%를 체력으로 회복한다",
						stats = {
							stealFrac = 0.1
						}
					},
					{
						shortDesc = "체력흡혈",
						desc = "공격으로 준 피해의 12%를 체력으로 회복한다",
						stats = {
							stealFrac = 0.12
						}
					},
					{
						shortDesc = "체력흡혈",
						desc = "공격으로 준 피해의 15%를 체력으로 회복한다",
						stats = {
							stealFrac = 0.15
						}
					}
				}
			},
			self_destruct = {
				id = "self_destruct",
				tag = "body",
				shortDesc = "대폭발",
				condition = "사망시",
				icon = "src/sprites/icons/imprinticons/03SelfDestruct.png",
				name = "자폭",
				levels = {
					{
						shortDesc = "대폭발",
						desc = "사망 시 폭발하여 주변 적 각각에게 자신의 최대 ATK의 200% 피해를 준다",
						stats = {
							atkDamageFrac = 2
						}
					},
					{
						shortDesc = "대폭발",
						desc = "사망 시 폭발하여 주변 적 각각에게 자신의 최대 ATK의 220% 피해를 준다",
						stats = {
							atkDamageFrac = 2.2
						}
					},
					{
						shortDesc = "대폭발",
						desc = "사망 시 폭발하여 주변 적 각각에게 자신의 최대 ATK의 250% 피해를 준다",
						stats = {
							atkDamageFrac = 2.5
						}
					},
					{
						shortDesc = "대폭발",
						desc = "사망 시 폭발하여 주변 적 각각에게 자신의 최대 ATK의 290% 피해를 준다",
						stats = {
							atkDamageFrac = 2.9
						}
					},
					{
						shortDesc = "대폭발",
						desc = "사망 시 폭발하여 주변 적 각각에게 자신의 최대 ATK의 340% 피해를 준다",
						stats = {
							atkDamageFrac = 3.4
						}
					}
				}
			},
			fear = {
				id = "fear",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/fireskeleton.png",
				shortDesc = "공포도주",
				tag = "body",
				condition = "공격 적중시",
				icon = "src/sprites/icons/imprinticons/03Fear.png",
				name = "공포",
				levels = {
					{
						shortDesc = "공포도주",
						desc = "공격 시 12% 확률로 적을 공포 상태로 만들어 잠시 뒤로 도망치게 한다",
						stats = {
							chance = 0.12,
							duration = 0.8
						}
					},
					{
						shortDesc = "공포도주",
						desc = "공격 시 14% 확률로 적을 공포 상태로 만들어 잠시 뒤로 도망치게 한다",
						stats = {
							chance = 0.14,
							duration = 0.8
						}
					},
					{
						shortDesc = "공포도주",
						desc = "공격 시 16% 확률로 적을 공포 상태로 만들어 잠시 뒤로 도망치게 한다",
						stats = {
							chance = 0.16,
							duration = 0.8
						}
					},
					{
						shortDesc = "공포도주",
						desc = "공격 시 18% 확률로 적을 공포 상태로 만들어 잠시 뒤로 도망치게 한다",
						stats = {
							chance = 0.18,
							duration = 0.8
						}
					},
					{
						shortDesc = "공포도주",
						desc = "공격 시 20% 확률로 적을 공포 상태로 만들어 잠시 뒤로 도망치게 한다",
						stats = {
							chance = 0.2,
							duration = 0.8
						}
					}
				}
			},
			chain = {
				id = "chain",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/multihit.png",
				shortDesc = "연쇄타격",
				tag = "spawn",
				condition = "공격 적중 시",
				icon = "src/sprites/icons/imprinticons/03Chain.png",
				name = "연쇄",
				levels = {
					{
						shortDesc = "연쇄타격",
						desc = "공격이 적중하면 가장 가까운 다른 적에게 1회 연쇄 피해를 준다",
						stats = {
							bounces = 1,
							chance = 0.3,
							bounceDamageFrac = 0.6
						}
					},
					{
						shortDesc = "연쇄타격",
						desc = "공격이 적중하면 가장 가까운 다른 적에게 2회 연쇄 피해를 준다",
						stats = {
							bounces = 2,
							chance = 0.3,
							bounceDamageFrac = 0.6
						}
					},
					{
						shortDesc = "연쇄타격",
						desc = "공격이 적중하면 가장 가까운 다른 적에게 3회 연쇄 피해를 준다",
						stats = {
							bounces = 3,
							chance = 0.3,
							bounceDamageFrac = 0.6
						}
					},
					{
						shortDesc = "연쇄타격",
						desc = "공격이 적중하면 가장 가까운 다른 적에게 4회 연쇄 피해를 준다",
						stats = {
							bounces = 4,
							chance = 0.3,
							bounceDamageFrac = 0.6
						}
					},
					{
						shortDesc = "연쇄타격",
						desc = "공격이 적중하면 가장 가까운 다른 적에게 5회 연쇄 피해를 준다",
						stats = {
							bounces = 5,
							chance = 0.3,
							bounceDamageFrac = 0.6
						}
					}
				}
			},
			chill = {
				id = "chill",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/ice.png",
				shortDesc = "냉기둔화",
				tag = "buff",
				condition = "공격시",
				icon = "src/sprites/icons/imprinticons/03Chill.png",
				name = "냉기",
				levels = {
					{
						shortDesc = "냉기둔화",
						desc = "공격 시 적의 이동 및 공격 속도가 30% 감소한다",
						stats = {
							dur = 2,
							slowFrac = 0.3
						}
					},
					{
						shortDesc = "냉기둔화",
						desc = "공격 시 적의 이동 및 공격 속도가 35% 감소한다",
						stats = {
							dur = 2,
							slowFrac = 0.35
						}
					},
					{
						shortDesc = "냉기둔화",
						desc = "공격 시 적의 이동 및 공격 속도가 40% 감소한다",
						stats = {
							dur = 2,
							slowFrac = 0.4
						}
					},
					{
						shortDesc = "냉기둔화",
						desc = "공격 시 적의 이동 및 공격 속도가 45% 감소한다",
						stats = {
							dur = 2,
							slowFrac = 0.45
						}
					},
					{
						shortDesc = "냉기둔화",
						desc = "공격 시 적의 이동 및 공격 속도가 50% 감소한다",
						stats = {
							dur = 2,
							slowFrac = 0.5
						}
					}
				}
			},
			enlarge = {
				id = "enlarge",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/enlarge.png",
				shortDesc = "거대화",
				tag = "buff",
				condition = "피격시 15% 확률로",
				icon = "src/sprites/icons/imprinticons/03Enlarge.png",
				name = "거대화",
				levels = {
					{
						shortDesc = "거대화",
						desc = "공격을 맞을 때 15% 확률로 4초 동안 거대화 상태가 된다",
						stats = {
							atkBoost = 0.25,
							chance = 0.15,
							duration = 4,
							hpBoost = 0.3
						}
					},
					{
						shortDesc = "거대화",
						desc = "공격을 맞을 때 15% 확률로 5초 동안 거대화 상태가 된다",
						stats = {
							atkBoost = 0.25,
							chance = 0.15,
							duration = 5,
							hpBoost = 0.3
						}
					},
					{
						shortDesc = "거대화",
						desc = "공격을 맞을 때 15% 확률로 6초 동안 거대화 상태가 된다",
						stats = {
							atkBoost = 0.25,
							chance = 0.15,
							duration = 6,
							hpBoost = 0.3
						}
					},
					{
						shortDesc = "거대화",
						desc = "공격을 맞을 때 15% 확률로 8초 동안 거대화 상태가 된다",
						stats = {
							atkBoost = 0.25,
							chance = 0.15,
							duration = 8,
							hpBoost = 0.3
						}
					},
					{
						shortDesc = "거대화",
						desc = "공격을 맞을 때 15% 확률로 10초 동안 거대화 상태가 된다",
						stats = {
							atkBoost = 0.25,
							chance = 0.15,
							duration = 10,
							hpBoost = 0.3
						}
					}
				}
			},
			execute = {
				id = "execute",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/execute.png",
				shortDesc = "처형",
				tag = "buff",
				condition = "공격 적중시",
				icon = "src/sprites/icons/imprinticons/03Execute.png",
				name = "처형",
				levels = {
					{
						shortDesc = "처형",
						desc = "직접 공격 시 체력이 12% 이하인 적(보스 제외)을 즉시 처치한다",
						stats = {
							threshold = 0.12
						}
					},
					{
						shortDesc = "처형",
						desc = "직접 공격 시 체력이 14% 이하인 적(보스 제외)을 즉시 처치한다",
						stats = {
							threshold = 0.14
						}
					},
					{
						shortDesc = "처형",
						desc = "직접 공격 시 체력이 16% 이하인 적(보스 제외)을 즉시 처치한다",
						stats = {
							threshold = 0.16
						}
					},
					{
						shortDesc = "처형",
						desc = "직접 공격 시 체력이 18% 이하인 적(보스 제외)을 즉시 처치한다",
						stats = {
							threshold = 0.18
						}
					},
					{
						shortDesc = "처형",
						desc = "직접 공격 시 체력이 20% 이하인 적(보스 제외)을 즉시 처치한다",
						stats = {
							threshold = 0.2
						}
					}
				}
			},
			earthquake = {
				id = "earthquake",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/earthquake.png",
				shortDesc = "전장붕괴",
				tag = "body",
				condition = "공격 시 8%",
				icon = "src/sprites/icons/imprinticons/04Earthquake.png",
				name = "지진",
				levels = {
					{
						shortDesc = "전장붕괴",
						desc = "공격 적중 시 전장 적 전체에게 공격력 220% 피해와 기절을 준다",
						stats = {
							icd = 6,
							damageMult = 2.2,
							chance = 0.08,
							stunDur = 0.8
						}
					},
					{
						shortDesc = "전장붕괴",
						desc = "공격 적중 시 전장 적 전체에게 공격력 260% 피해와 기절을 준다",
						stats = {
							icd = 6,
							damageMult = 2.6,
							chance = 0.08,
							stunDur = 0.8
						}
					},
					{
						shortDesc = "전장붕괴",
						desc = "공격 적중 시 전장 적 전체에게 공격력 300% 피해와 기절을 준다",
						stats = {
							icd = 6,
							damageMult = 3,
							chance = 0.08,
							stunDur = 0.8
						}
					},
					{
						shortDesc = "전장붕괴",
						desc = "공격 적중 시 전장 적 전체에게 공격력 340% 피해와 기절을 준다",
						stats = {
							icd = 6,
							damageMult = 3.4,
							chance = 0.08,
							stunDur = 0.8
						}
					},
					{
						shortDesc = "전장붕괴",
						desc = "공격 적중 시 전장 적 전체에게 공격력 400% 피해와 기절을 준다",
						stats = {
							icd = 6,
							damageMult = 4,
							chance = 0.08,
							stunDur = 0.8
						}
					}
				}
			},
			annihilation = {
				id = "annihilation",
				tag = "spawn",
				shortDesc = "광역궤멸",
				condition = "공격 시 35% 확률로",
				icon = "src/sprites/icons/imprinticons/04Annihilation.png",
				name = "궤멸",
				levels = {
					{
						shortDesc = "광역궤멸",
						desc = "공격 시 35% 확률로 주변 최대 5명의 적에게 공격력 160%의 궤멸 피해를 준다",
						stats = {
							damageMult = 1.6,
							range = 60,
							chance = 0.35,
							maxTargets = 5
						}
					},
					{
						shortDesc = "광역궤멸",
						desc = "공격 시 35% 확률로 주변 최대 5명의 적에게 공격력 180%의 궤멸 피해를 준다",
						stats = {
							damageMult = 1.8,
							range = 60,
							chance = 0.35,
							maxTargets = 5
						}
					},
					{
						shortDesc = "광역궤멸",
						desc = "공격 시 35% 확률로 주변 최대 5명의 적에게 공격력 210%의 궤멸 피해를 준다",
						stats = {
							damageMult = 2.1,
							range = 60,
							chance = 0.35,
							maxTargets = 5
						}
					},
					{
						shortDesc = "광역궤멸",
						desc = "공격 시 35% 확률로 주변 최대 5명의 적에게 공격력 250%의 궤멸 피해를 준다",
						stats = {
							damageMult = 2.5,
							range = 60,
							chance = 0.35,
							maxTargets = 5
						}
					},
					{
						shortDesc = "광역궤멸",
						desc = "공격 시 35% 확률로 주변 최대 5명의 적에게 공격력 300%의 궤멸 피해를 준다",
						stats = {
							damageMult = 3,
							range = 60,
							chance = 0.35,
							maxTargets = 5
						}
					}
				}
			},
			meteor = {
				id = "meteor",
				tag = "spawn",
				shortDesc = "운석낙하",
				condition = "공격시 10% 확률로",
				icon = "src/sprites/icons/imprinticons/04Meteor.png",
				name = "메테오",
				levels = {
					{
						shortDesc = "운석낙하",
						desc = "공격 시 10% 확률로 거대한 메테오를 떨어뜨린다 (피해 280%)",
						stats = {
							icd = 8,
							damageMult = 2.8,
							chance = 0.1
						}
					},
					{
						shortDesc = "운석낙하",
						desc = "공격 시 10% 확률로 거대한 메테오를 떨어뜨린다 (피해 320%)",
						stats = {
							icd = 8,
							damageMult = 3.2,
							chance = 0.1
						}
					},
					{
						shortDesc = "운석낙하",
						desc = "공격 시 10% 확률로 거대한 메테오를 떨어뜨린다 (피해 360%)",
						stats = {
							icd = 8,
							damageMult = 3.6,
							chance = 0.1
						}
					},
					{
						shortDesc = "운석낙하",
						desc = "공격 시 10% 확률로 거대한 메테오를 떨어뜨린다 (피해 420%)",
						stats = {
							icd = 8,
							damageMult = 4.2,
							chance = 0.1
						}
					},
					{
						shortDesc = "운석낙하",
						desc = "공격 시 10% 확률로 거대한 메테오를 떨어뜨린다 (피해 500%)",
						stats = {
							icd = 8,
							damageMult = 5,
							chance = 0.1
						}
					}
				}
			},
			shadow_clone = {
				id = "shadow_clone",
				tag = "spawn",
				shortDesc = "그림자분신",
				condition = "상시 (전투 시)",
				icon = "src/sprites/icons/imprinticons/04ShadowClone.png",
				name = "분신술",
				levels = {
					{
						shortDesc = "그림자분신",
						desc = "분신을 소환해 함께 싸운다. 분신이 쓰러지면 2초 후 다시 소환된다",
						stats = {
							atkFrac = 0.7,
							hpFrac = 0.55,
							dur = 8,
							respawn = 2
						}
					},
					{
						shortDesc = "그림자분신",
						desc = "더 강한 분신을 소환해 함께 싸운다. 분신이 쓰러지면 2초 후 다시 소환된다",
						stats = {
							atkFrac = 0.75,
							hpFrac = 0.6,
							dur = 8,
							respawn = 2
						}
					},
					{
						shortDesc = "그림자분신",
						desc = "강력한 분신을 소환해 함께 싸운다. 분신이 쓰러지면 2초 후 다시 소환된다",
						stats = {
							atkFrac = 0.8,
							hpFrac = 0.65,
							dur = 8,
							respawn = 2
						}
					},
					{
						shortDesc = "그림자분신",
						desc = "더욱 강력한 분신을 소환해 함께 싸운다. 분신이 쓰러지면 2초 후 다시 소환된다",
						stats = {
							atkFrac = 0.85,
							hpFrac = 0.7,
							dur = 8,
							respawn = 2
						}
					},
					{
						shortDesc = "그림자분신",
						desc = "본체와 비슷한 강함의 분신을 소환해 함께 싸운다. 분신이 쓰러지면 2초 후 다시 소환된다",
						stats = {
							atkFrac = 0.9,
							hpFrac = 0.75,
							dur = 8,
							respawn = 2
						}
					}
				}
			},
			panther_fury = {
				id = "panther_fury",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/pantherscratch.png",
				shortDesc = "흑표범",
				tag = "spawn",
				condition = "상시 (전투 시)",
				icon = "src/sprites/icons/imprinticons/04PantherFury.png",
				name = "흑표의 맹습",
				levels = {
					{
						shortDesc = "흑표범",
						desc = "유닛의 체력 40%, 공격력 55%를 가진 흑표범을 소환한다",
						stats = {
							atkFrac = 0.55,
							hpFrac = 0.4,
							dur = 10,
							cooldown = 5
						}
					},
					{
						shortDesc = "흑표범",
						desc = "유닛의 체력 50%, 공격력 65%를 가진 흑표범을 소환한다",
						stats = {
							atkFrac = 0.65,
							hpFrac = 0.5,
							dur = 10,
							cooldown = 5
						}
					},
					{
						shortDesc = "흑표범",
						desc = "유닛의 체력 60%, 공격력 75%를 가진 흑표범을 소환한다",
						stats = {
							atkFrac = 0.75,
							hpFrac = 0.6,
							dur = 10,
							cooldown = 5
						}
					},
					{
						shortDesc = "흑표범",
						desc = "유닛의 체력 70%, 공격력 85%를 가진 흑표범을 소환한다",
						stats = {
							atkFrac = 0.85,
							hpFrac = 0.7,
							dur = 10,
							cooldown = 5
						}
					},
					{
						shortDesc = "흑표범",
						desc = "유닛의 체력 80%, 공격력 100%를 가진 흑표범을 소환한다",
						stats = {
							atkFrac = 1,
							hpFrac = 0.8,
							dur = 10,
							cooldown = 5
						}
					}
				}
			},
			revival = {
				id = "revival",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/cross.png",
				shortDesc = "전장복귀",
				tag = "buff",
				condition = "사망 시",
				icon = "src/sprites/icons/imprinticons/04Revival.png",
				name = "부활",
				levels = {
					{
						shortDesc = "전장복귀",
						desc = "사망 시 한 번 부활한다. 체력 40%으로 되살아나며 공격력 +20% (4초)",
						stats = {
							duration = 4,
							hpFrac = 0.4,
							atkBoost = 0.2
						}
					},
					{
						shortDesc = "전장복귀",
						desc = "사망 시 한 번 부활한다. 체력 50%으로 되살아나며 공격력 +25% (5초)",
						stats = {
							duration = 5,
							hpFrac = 0.5,
							atkBoost = 0.25
						}
					},
					{
						shortDesc = "전장복귀",
						desc = "사망 시 한 번 부활한다. 체력 60%으로 되살아나며 공격력 +30% (6초)",
						stats = {
							duration = 6,
							hpFrac = 0.6,
							atkBoost = 0.3
						}
					},
					{
						shortDesc = "전장복귀",
						desc = "사망 시 한 번 부활한다. 체력 70%으로 되살아나며 공격력 +35% (7초)",
						stats = {
							duration = 7,
							hpFrac = 0.7,
							atkBoost = 0.35
						}
					},
					{
						shortDesc = "전장복귀",
						desc = "사망 시 한 번 부활한다. 체력 80%으로 되살아나며 공격력 +40% (8초)",
						stats = {
							duration = 8,
							hpFrac = 0.8,
							atkBoost = 0.4
						}
					}
				}
			},
			majesty = {
				id = "majesty",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/angry.png",
				shortDesc = "적 약화",
				tag = "debuff",
				condition = "상시 (생존 시)",
				icon = "src/sprites/icons/imprinticons/05Majesty.png",
				name = "위엄",
				levels = {
					{
						shortDesc = "적 약화",
						desc = "존재만으로 모든 적의 공격력 -12%, 최대 체력 -15% 감소",
						stats = {
							atkDebuff = 0.12,
							hpDebuff = 0.15
						}
					},
					{
						shortDesc = "적 약화",
						desc = "존재만으로 모든 적의 공격력 -20%, 최대 체력 -23% 감소",
						stats = {
							atkDebuff = 0.2,
							hpDebuff = 0.23
						}
					},
					{
						shortDesc = "적 약화",
						desc = "존재만으로 모든 적의 공격력 -27%, 최대 체력 -30% 감소",
						stats = {
							atkDebuff = 0.27,
							hpDebuff = 0.3
						}
					},
					{
						shortDesc = "적 약화",
						desc = "존재만으로 모든 적의 공격력 -35%, 최대 체력 -38% 감소",
						stats = {
							atkDebuff = 0.35,
							hpDebuff = 0.38
						}
					},
					{
						shortDesc = "적 약화",
						desc = "존재만으로 모든 적의 공격력 -42%, 최대 체력 -45% 감소",
						stats = {
							atkDebuff = 0.42,
							hpDebuff = 0.45
						}
					}
				}
			},
			ruin = {
				id = "ruin",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/eye.png",
				shortDesc = "지속압살",
				tag = "buff",
				condition = "상시",
				icon = "src/sprites/icons/imprinticons/05Ruin.png",
				name = "섬멸",
				levels = {
					{
						shortDesc = "지속압살",
						desc = "존재만으로 모든 적이 1초마다 해당 유닛 공격력의 6% 지속 피해를 받는다.",
						stats = {
							dotRatio = 0.06
						}
					},
					{
						shortDesc = "지속압살",
						desc = "존재만으로 모든 적이 1초마다 해당 유닛 공격력의 9% 지속 피해를 받는다.",
						stats = {
							dotRatio = 0.09
						}
					},
					{
						shortDesc = "지속압살",
						desc = "존재만으로 모든 적이 1초마다 해당 유닛 공격력의 12% 지속 피해를 받는다.",
						stats = {
							dotRatio = 0.12
						}
					},
					{
						shortDesc = "지속압살",
						desc = "존재만으로 모든 적이 1초마다 해당 유닛 공격력의 16% 지속 피해를 받는다.",
						stats = {
							dotRatio = 0.16
						}
					},
					{
						shortDesc = "지속압살",
						desc = "존재만으로 모든 적이 1초마다 해당 유닛 공격력의 20% 지속 피해를 받는다.",
						stats = {
							dotRatio = 0.2
						}
					}
				}
			},
			colossus_descent = {
				id = "colossus_descent",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/golem.png",
				shortDesc = "거신소환",
				tag = "spawn",
				condition = "상시",
				icon = "src/sprites/icons/imprinticons/05ColossusDescent.png",
				name = "거신강림",
				levels = {
					{
						shortDesc = "거신소환",
						desc = "유닛의 체력 200%, 공격력 40%인 거신을 소환한다.",
						stats = {
							atkFrac = 0.4,
							hpFrac = 2,
							skillTargets = 5,
							skillEvery = 5,
							stun = 0,
							skillDmg = 1,
							knockback = 20,
							respawn = 3
						}
					},
					{
						shortDesc = "거신소환",
						desc = "유닛의 체력 240%, 공격력 50%인 거신을 소환한다.",
						stats = {
							atkFrac = 0.5,
							hpFrac = 2.4,
							skillTargets = 5,
							skillEvery = 5,
							stun = 0,
							skillDmg = 1.4,
							knockback = 22,
							respawn = 3
						}
					},
					{
						shortDesc = "거신소환",
						desc = "유닛의 체력 300%, 공격력 60%인 거신을 소환한다. 거신이 넉백후 적을 0.4초 기절 시킨다",
						stats = {
							atkFrac = 0.6,
							hpFrac = 3,
							skillTargets = 5,
							skillEvery = 5,
							stun = 0.4,
							skillDmg = 2,
							knockback = 25,
							respawn = 3
						}
					},
					{
						shortDesc = "거신소환",
						desc = "유닛의 체력 340%, 공격력 75%인 거신을 소환한다. 거신이 넉백후 적을 0.6초 기절 시킨다",
						stats = {
							atkFrac = 0.75,
							hpFrac = 3.4,
							skillTargets = 5,
							skillEvery = 5,
							stun = 0.6,
							skillDmg = 2.4,
							knockback = 28,
							respawn = 3
						}
					},
					{
						shortDesc = "거신소환",
						desc = "유닛의 체력 400%, 공격력 90%인 거신을 소환한다. 거신이 넉백후 적을 0.8초 기절 시킨다",
						stats = {
							atkFrac = 0.9,
							hpFrac = 4,
							skillTargets = 5,
							skillEvery = 5,
							stun = 0.8,
							skillDmg = 3,
							knockback = 32,
							respawn = 3
						}
					}
				}
			},
			overlord = {
				id = "overlord",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/fear.png",
				shortDesc = "그림자 군주",
				tag = "spawn",
				condition = "적 처치 후",
				icon = "src/sprites/icons/imprinticons/05Overlord.png",
				name = "군주",
				levels = {
					{
						shortDesc = "그림자 군주",
						desc = "처치한 모든 종류의 적을 최대 2명 부하로 만든다",
						stats = {
							pwrMul = 1,
							maxFollowers = 2
						}
					},
					{
						shortDesc = "그림자 군주",
						desc = "처치한 모든 종류의 적을 최대 3명 부하로 만든다",
						stats = {
							pwrMul = 1,
							maxFollowers = 3
						}
					},
					{
						shortDesc = "그림자 군주",
						desc = "처치한 모든 종류의 적을 최대 4명 부하로 만든다",
						stats = {
							pwrMul = 1,
							maxFollowers = 4
						}
					},
					{
						shortDesc = "그림자 군주",
						desc = "처치한 모든 종류의 적을 최대 4명 부하로 만들고 그림자들이 더 강해진다",
						stats = {
							pwrMul = 2,
							maxFollowers = 4
						}
					},
					{
						shortDesc = "그림자 군주",
						desc = "처치한 모든 종류의 적을 최대 4명 부하로 만들고 그림자들이 더욱 강해진다",
						stats = {
							pwrMul = 4,
							maxFollowers = 4
						}
					}
				}
			},
			undying_soul = {
				id = "undying_soul",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/holy.png",
				shortDesc = "사후전투",
				tag = "buff",
				condition = "사망 시",
				icon = "src/sprites/icons/imprinticons/05UndyingSoul.png",
				name = "불사혼",
				levels = {
					{
						shortDesc = "사후전투",
						desc = "사망 시, 공격력 40%의 불사혼 상태로 전투에 남는다",
						stats = {
							atkFrac = 0.4
						}
					},
					{
						shortDesc = "사후전투",
						desc = "사망 시, 공격력 60%의 불사혼 상태로 전투에 남는다",
						stats = {
							atkFrac = 0.6
						}
					},
					{
						shortDesc = "사후전투",
						desc = "사망 시, 공격력 80%의 불사혼 상태로 전투에 남는다",
						stats = {
							atkFrac = 0.8
						}
					},
					{
						shortDesc = "사후전투",
						desc = "사망 시, 공격력 100%의 불사혼 상태로 전투에 남는다",
						stats = {
							atkFrac = 1
						}
					},
					{
						shortDesc = "사후전투",
						desc = "사망 시, 공격력 120%의 불사혼 상태로 전투에 남는다",
						stats = {
							atkFrac = 1.2
						}
					}
				}
			},
			timeless = {
				id = "timeless",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/hourglass.png",
				shortDesc = "시간정지",
				tag = "buff",
				condition = "공격 시 8% 확률로",
				icon = "src/sprites/icons/imprinticons/05Timeless.png",
				name = "타임리스",
				levels = {
					{
						shortDesc = "시간정지",
						desc = "공격 시 8% 확률로 3초동안 시간을 정지 시킨다",
						stats = {
							icd = 5,
							chance = 0.08,
							duration = 3
						}
					},
					{
						shortDesc = "시간정지",
						desc = "공격 시 10% 확률로 3.5초동안 시간을 정지 시킨다",
						stats = {
							icd = 5,
							chance = 0.1,
							duration = 3.5
						}
					},
					{
						shortDesc = "시간정지",
						desc = "공격 시 12% 확률로 4초동안 시간을 정지 시킨다",
						stats = {
							icd = 5,
							chance = 0.12,
							duration = 4
						}
					},
					{
						shortDesc = "시간정지",
						desc = "공격 시 15% 확률로 5초동안 시간을 정지 시킨다",
						stats = {
							icd = 5,
							chance = 0.15,
							duration = 5
						}
					},
					{
						shortDesc = "시간정지",
						desc = "공격 시 18% 확률로 6초동안 시간을 정지 시킨다",
						stats = {
							icd = 5,
							chance = 0.18,
							duration = 6
						}
					}
				}
			},
			amplify = {
				id = "amplify",
				shortIcon = "src/sprites/icons/imprinticons/shortsicons/skillsizeupgrade.png",
				shortDesc = "범위증가",
				tag = "buff",
				condition = "스킬 발동 시",
				icon = "src/sprites/icons/imprinticons/01Amplify.png",
				name = "증폭 (스킬)",
				levels = {
					{
						shortDesc = "범위증가",
						desc = "스킬 크기 30% 증가",
						stats = {
							skillRangeMult = 1.3
						}
					},
					{
						shortDesc = "범위증가",
						desc = "스킬 크기 35% 증가",
						stats = {
							skillRangeMult = 1.35
						}
					},
					{
						shortDesc = "범위증가",
						desc = "스킬 크기 40% 증가",
						stats = {
							skillRangeMult = 1.4
						}
					},
					{
						shortDesc = "범위증가",
						desc = "스킬 크기 45% 증가",
						stats = {
							skillRangeMult = 1.45
						}
					},
					{
						shortDesc = "범위증가",
						desc = "스킬 크기 50% 증가",
						stats = {
							skillRangeMult = 1.5
						}
					}
				}
			}
		}
	},
	power = {
		alpha = 0.6,
		betaASPD = 1.1,
		betaAtk = 0.7,
		beta = 0.8,
		aspdTau = 0.08,
		baseline = {
			ASPD0 = 1.5,
			ATK0 = 9,
			HP0 = 70
		},
		absorb = {
			gaugePerPower = 0.0045,
			aspdPerPower = 0.035,
			atkPerPower = 0.09,
			hpPerPower = 0.3,
			equalize = {
				powerPerPower = 0.6,
				enabled = true,
				bonusByVictim = {}
			}
		}
	},
	evolution = {
		maxTierBonus = 1.25,
		rankThresholds = {
			normal = {
				[2] = 5,
				[3] = 12
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
			normal = 3,
			prism = 3,
			legendary = 3,
			rare = 3,
			advanced = 3
		},
		baseDeltaPWR = {
			scaleByAbsorber = 0.12,
			base = 58
		},
		aspdGrowth = {
			displayDeltaMul = 8,
			internalScale = 0.35,
			maxDeltaRel = 0.35,
			maxDeltaPerAbsorb = 1.2
		},
		getAbsorbLvMultipliers = function(arg_1_0)
			local var_1_0 = math.max(0, math.floor(tonumber(arg_1_0 or 0) or 0))

			return {
				atk = 1 + 0.01 * var_1_0,
				aspd = 1 + 0.005 * var_1_0,
				hp = 1 + 0.015 * var_1_0
			}
		end,
		classBonus = {
			W = 0.35,
			S = 0.3,
			A = 0.35
		},
		rankMultipliers = {
			normal = {
				1,
				2.2,
				4.8
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
				atk = 3,
				hp = 6,
				aspd = 0.1
			}
		}
	},
	economy = {
		spins = {
			paidCostStep = 50,
			refundOnFail = 0,
			paidStartCost = 100,
			freePerWave = 3,
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
	},
	slot = {
		winSuppressProb = 0,
		forceWinProb = 0,
		winTiers = {
			{
				key = "jackpot",
				labelKo = "잭팟!",
				lines = 5,
				labelEn = "Jackpot!"
			},
			{
				key = "overdrive",
				labelKo = "폭주!",
				lines = 4,
				labelEn = "Overdrive!"
			},
			{
				key = "burst",
				labelKo = "폭발!",
				lines = 3,
				labelEn = "Burst!"
			}
		},
		symbolWeights = {
			S = 0.2,
			H = 0.15,
			A = 0.2,
			D = 0.1,
			W = 0.2,
			M = 0.15
		}
	},
	hiddenLuck = {
		debugLogs = false,
		debtRequired = 1.25,
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
		},
		longTermChances = {
			nil,
			nil,
			nil,
			nil,
			nil,
			0.08,
			0.18,
			0.35,
			0.6,
			0.85,
			1
		}
	},
	unitGrades = {
		order = {
			"normal",
			"advanced",
			"rare",
			"legendary",
			"prism"
		},
		probabilities = {
			normal = 1,
			prism = 0,
			legendary = 0,
			rare = 0,
			advanced = 0
		},
		labels = {
			normal = "일반",
			prism = "프리즘",
			legendary = "전설",
			rare = "희귀",
			advanced = "고급"
		},
		colors = {
			normal = {
				1,
				1,
				1,
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
				1,
				0.65,
				0.25,
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
}
