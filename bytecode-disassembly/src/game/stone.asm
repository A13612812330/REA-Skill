;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\game\stone.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 14 slots
	;;;; constant tables ;;;;
	ktable#12 = [
		#1: W,
		#2: A,
		#3: S,
		#4: M,
		#5: H,
		#6: D,
		]
	
	
	ktable#18 = [
		#1: Joker,
		]
	
	
	ktable#51 = [
		[type] = unit_spawn_probability,
		]
	
	
	ktable#56 = [
		#1: 0.7,
		#2: 0.5,
		#3: 1,
		#4: 1,
		]
	
	
	ktable#58 = [
		[rankTarget] = 3,
		[name] = 은하 스톤,
		[grade] = S,
		[infiniteOnly] = true,
		[key] = GalaxyStone,
		[id] = 22,
		[desc] = 유닛 1명이 3성으로 바로 등장합니다. 두 갈래 중 클래스를 고릅니다.,
		]
	
	
	ktable#59 = [
		#1: 1,
		#2: 0.6,
		#3: 0.2,
		#4: 1,
		]
	
	
	ktable#61 = [
		[grade] = S,
		[name] = 일식 스톤,
		[id] = 21,
		[infiniteOnly] = true,
		[key] = EclipseStone,
		[desc] = 유닛 1명이 나옵니다. 전설은 나오지 않고 프리즘을 노립니다.,
		]
	
	
	ktable#62 = [
		#1: 1,
		#2: 1,
		#3: 1,
		#4: 1,
		]
	
	
	ktable#64 = [
		[grade] = S,
		[name] = 정점 스톤,
		[id] = 20,
		[infiniteOnly] = true,
		[key] = ZenithStone,
		[desc] = 유닛 1명이 나옵니다. 최상급 운명 스톤입니다.,
		]
	
	
	ktable#65 = [
		#1: 0.85,
		#2: 0.92,
		#3: 1,
		#4: 1,
		]
	
	
	ktable#67 = [
		[grade] = A,
		[name] = 성역 스톤,
		[id] = 17,
		[key] = SanctumStone,
		[unlock] = stonesanctum,
		[desc] = 유닛 1명이 나옵니다. 희귀 이상이 확정됩니다.,
		]
	
	
	ktable#68 = [
		#1: 1,
		#2: 0.9,
		#3: 0.45,
		#4: 1,
		]
	
	
	ktable#70 = [
		[id] = 16,
		[name] = 별무리 스톤,
		[grade] = A,
		[key] = ConstellationStone,
		[unlock] = stoneconstellation,
		[lines] = 3,
		[desc] = 유닛 3명이 나옵니다. 한 명마다 아래 확률을 따릅니다.,
		]
	
	
	ktable#71 = [
		#1: 1,
		#2: 0.35,
		#3: 0.3,
		#4: 1,
		]
	
	
	ktable#73 = [
		[grade] = A,
		[name] = 승부 스톤,
		[id] = 15,
		[key] = GambitStone,
		[unlock] = stonegambit,
		[desc] = 유닛 1명이 나옵니다. 고급 아니면 전설/프리즘!,
		]
	
	
	ktable#74 = [
		#1: 1,
		#2: 0.84,
		#3: 0,
		#4: 1,
		]
	
	
	ktable#76 = [
		[name] = 축복 스톤,
		[grade] = A,
		[id] = 14,
		[key] = BlessingStone,
		[desc] = 유닛 1명이 나옵니다. 상급 운명 스톤입니다.,
		]
	
	
	ktable#77 = [
		#1: 1,
		#2: 0.7,
		#3: 0.4,
		#4: 1,
		]
	
	
	ktable#79 = [
		[name] = 숙련 스톤,
		[grade] = B,
		[id] = 11,
		[key] = MasteryStone,
		[unlock] = stonemastery,
		[desc] = 유닛 1명이 2성으로 바로 등장합니다. 두 갈래 중 클래스를 고릅니다.,
		[rankTarget] = 2,
		]
	
	
	ktable#80 = [
		#1: 0.94,
		#2: 0.31,
		#3: 0.85,
		#4: 1,
		]
	
	
	ktable#82 = [
		[id] = 10,
		[name] = 특수 스톤,
		[grade] = B,
		[key] = SpecialStone,
		[special] = 0.15,
		[unlock] = stonespecial,
		[desc] = 유닛 1명이 나옵니다. 15% 확률로 특수 유닛이 나옵니다.,
		]
	
	
	ktable#83 = [
		#1: 0.75,
		#2: 0.4,
		#3: 1,
		#4: 1,
		]
	
	
	ktable#85 = [
		[grade] = B,
		[name] = 균열 스톤,
		[id] = 09,
		[key] = RiftStone,
		[unlock] = stonerift,
		[desc] = 유닛 1명이 나옵니다. 일반 아니면 전설/프리즘!,
		]
	
	
	ktable#86 = [
		#1: 0.8,
		#2: 0.8,
		#3: 0.8,
		#4: 1,
		]
	
	
	ktable#88 = [
		[name] = 마일 스톤,
		[grade] = B,
		[id] = 08,
		[key] = MileStone,
		[desc] = 유닛 1명이 나옵니다. 중급 운명 스톤입니다.,
		]
	
	
	ktable#89 = [
		#1: 0.45,
		#2: 0.65,
		#3: 1,
		#4: 1,
		]
	
	
	ktable#91 = [
		[grade] = C,
		[name] = 점괘 스톤,
		[id] = 04,
		[key] = OmenStone,
		[unlock] = stoneomen,
		[pick] = 3,
		[desc] = 후보 3명이 공개되고 그중 1명을 고릅니다. 후보마다 아래 확률을 따릅니다.,
		]
	
	
	ktable#92 = [
		#1: 0.85,
		#2: 0.7,
		#3: 0.95,
		#4: 1,
		]
	
	
	ktable#94 = [
		[id] = 03,
		[name] = 쌍둥이 스톤,
		[grade] = C,
		[key] = TwinStone,
		[unlock] = stonetwin,
		[lines] = 2,
		[desc] = 유닛 2명이 나옵니다. 한 명마다 아래 확률을 따릅니다.,
		]
	
	
	ktable#95 = [
		#1: 0.55,
		#2: 0.9,
		#3: 0.85,
		#4: 1,
		]
	
	
	ktable#97 = [
		[grade] = C,
		[name] = 미풍 스톤,
		[id] = 02,
		[key] = BreezeStone,
		[unlock] = stonebreeze,
		[desc] = 유닛 1명이 나옵니다. 고급 대신 희귀를 노립니다.,
		]
	
	
	ktable#100 = [
		#1: 0.35,
		#2: 0.75,
		#3: 1,
		#4: 1,
		]
	
	
	ktable#103 = [
		[name] = 근원 스톤,
		[grade] = C,
		[id] = 01,
		[key] = OriginStone,
		[desc] = 유닛 1명이 나옵니다. 가장 기본적인 운명 스톤입니다.,
		]
	
	
	ktable#109 = [
		#1: 24,
		#2: 25,
		#3: 26,
		#4: 27,
		#5: 28,
		]
	
	
	ktable#110 = [
		[difficulty] = 상,
		]
	
	
	ktable#112 = [
		#1: 13,
		#2: 14,
		#3: 15,
		#4: 16,
		#5: 17,
		#6: 18,
		#7: 19,
		#8: 20,
		#9: 21,
		#10: 22,
		#11: 23,
		]
	
	
	ktable#113 = [
		[difficulty] = 중,
		]
	
	
	ktable#115 = [
		]
	
	
	ktable#117 = [
		#1: 1,
		#2: 2,
		#3: 6,
		#4: 11,
		]
	
	
	ktable#118 = [
		[difficulty] = 하,
		]
	
	
	ktable#119 = [
		#1: normal,
		#2: advanced,
		#3: rare,
		#4: legendary,
		#5: prism,
		]
	
	
	ktable#122 = [
		#1: C,
		#2: B,
		#3: A,
		]
	
	
	;;;; instructions ;;;;
	  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
	  2	[  0]	TDUP 	  1		122	; slot1 = copy table#k122
	  3	[  0]	TSETS	  1	0	121	; slot0.CARD_GRADES = slot1
	  4	[  0]	TDUP 	  2		119	; slot2 = copy table#k119
	  5	[  0]	TSETS	  2	0	120	; slot0.GRADE_ORDER = slot2
	  6	[  0]	TDUP 	  2		115	; slot2 = copy table#k115
	  7	[  0]	TDUP 	  3		118	; slot3 = copy table#k118
	  8	[  0]	TDUP 	  4		117	; slot4 = copy table#k117
	  9	[  0]	TSETS	  4	3	116	; slot3.questNumbers = slot4
	 10	[  0]	TSETS	  3	2	114	; slot2.C = slot3
	 11	[  0]	TDUP 	  3		113	; slot3 = copy table#k113
	 12	[  0]	TDUP 	  4		112	; slot4 = copy table#k112
	 13	[  0]	TSETS	  4	3	116	; slot3.questNumbers = slot4
	 14	[  0]	TSETS	  3	2	111	; slot2.B = slot3
	 15	[  0]	TDUP 	  3		110	; slot3 = copy table#k110
	 16	[  0]	TDUP 	  4		109	; slot4 = copy table#k109
	 17	[  0]	TSETS	  4	3	116	; slot3.questNumbers = slot4
	 18	[  0]	TSETS	  3	2	108	; slot2.A = slot3
	 19	[  0]	TGETS	  3	2	108	; slot3 = slot2.A
	 20	[  0]	TSETS	  3	2	107	; slot2.S = <unknown table>.A
	 21	[  0]	KSTR 	  3		106	; slot3 = "src/sprites/icons/stoneicon/"
	 22	[  0]	FNEW 	  4		105	; N/A:0-0: 5 args, 0 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		ktable#5 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TDUP 	  5		5	; slot5 = copy table#k5
		  2	[  0]	TSETS	  0	5	4	; slot5.normal = slot0
		  3	[  0]	TSETS	  1	5	3	; slot5.advanced = slot1
		  4	[  0]	TSETS	  2	5	2	; slot5.rare = slot2
		  5	[  0]	TSETS	  3	5	1	; slot5.legendary = slot3
		  6	[  0]	TSETS	  4	5	0	; slot5.prism = slot4
		  7	[  0]	RET1 	  5		2	; return slot5
	 23	[  0]	TNEW 	  5		16	; slot5 = new table( array: 16, dict: 1)
	 24	[  0]	TDUP 	  6		103	; slot6 = copy table#k103
	 25	[  0]	MOV  	  7		3	; slot7 = slot3
	 26	[  0]	KSTR 	  8		102	; slot8 = "01Origin Stone.png"
	 27	[  0]	CAT  	  7	7	8	; slot7 = slot7 .. slot8
	 28	[  0]	TSETS	  7	6	101	; slot6.icon = slot7
	 29	[  0]	TDUP 	  7		100	; slot7 = copy table#k100
	 30	[  0]	TSETS	  7	6	99	; slot6.glowColor = slot7
	 31	[  0]	MOV  	  7		4	; slot7 = slot4
	 32	[  0]	KNUM 	  9		0	; slot9 = 0.55
	 33	[  0]	KNUM 	 10		1	; slot10 = 0.33
	 34	[  0]	KNUM 	 11		2	; slot11 = 0.11
	 35	[  0]	KNUM 	 12		3	; slot12 = 0.008
	 36	[  0]	KNUM 	 13		4	; slot13 = 0.002
	 37	[  0]	CALL 	  7	2	6	; slot7 = slot7(slot8, slot9, slot10, slot11, slot12)
	 38	[  0]	TSETS	  7	6	98	; slot6.probs = slot7
	 39	[  0]	TSETB	  6	5	1	; slot5[1] = slot6
	 40	[  0]	TDUP 	  6		97	; slot6 = copy table#k97
	 41	[  0]	MOV  	  7		3	; slot7 = slot3
	 42	[  0]	KSTR 	  8		96	; slot8 = "02Breeze Stone.png"
	 43	[  0]	CAT  	  7	7	8	; slot7 = slot7 .. slot8
	 44	[  0]	TSETS	  7	6	101	; slot6.icon = slot7
	 45	[  0]	TDUP 	  7		95	; slot7 = copy table#k95
	 46	[  0]	TSETS	  7	6	99	; slot6.glowColor = slot7
	 47	[  0]	MOV  	  7		4	; slot7 = slot4
	 48	[  0]	KNUM 	  9		5	; slot9 = 0.7
	 49	[  0]	KNUM 	 10		6	; slot10 = 0.1
	 50	[  0]	KNUM 	 11		7	; slot11 = 0.18
	 51	[  0]	KNUM 	 12		8	; slot12 = 0.017
	 52	[  0]	KNUM 	 13		9	; slot13 = 0.003
	 53	[  0]	CALL 	  7	2	6	; slot7 = slot7(slot8, slot9, slot10, slot11, slot12)
	 54	[  0]	TSETS	  7	6	98	; slot6.probs = slot7
	 55	[  0]	TSETB	  6	5	2	; slot5[2] = slot6
	 56	[  0]	TDUP 	  6		94	; slot6 = copy table#k94
	 57	[  0]	MOV  	  7		3	; slot7 = slot3
	 58	[  0]	KSTR 	  8		93	; slot8 = "03Twin Stone.png"
	 59	[  0]	CAT  	  7	7	8	; slot7 = slot7 .. slot8
	 60	[  0]	TSETS	  7	6	101	; slot6.icon = slot7
	 61	[  0]	TDUP 	  7		92	; slot7 = copy table#k92
	 62	[  0]	TSETS	  7	6	99	; slot6.glowColor = slot7
	 63	[  0]	MOV  	  7		4	; slot7 = slot4
	 64	[  0]	KNUM 	  9		5	; slot9 = 0.7
	 65	[  0]	KNUM 	 10		10	; slot10 = 0.24
	 66	[  0]	KNUM 	 11		11	; slot11 = 0.055
	 67	[  0]	KNUM 	 12		12	; slot12 = 0.004
	 68	[  0]	KNUM 	 13		13	; slot13 = 0.001
	 69	[  0]	CALL 	  7	2	6	; slot7 = slot7(slot8, slot9, slot10, slot11, slot12)
	 70	[  0]	TSETS	  7	6	98	; slot6.probs = slot7
	 71	[  0]	TSETB	  6	5	3	; slot5[3] = slot6
	 72	[  0]	TDUP 	  6		91	; slot6 = copy table#k91
	 73	[  0]	MOV  	  7		3	; slot7 = slot3
	 74	[  0]	KSTR 	  8		90	; slot8 = "04Omen Stone.png"
	 75	[  0]	CAT  	  7	7	8	; slot7 = slot7 .. slot8
	 76	[  0]	TSETS	  7	6	101	; slot6.icon = slot7
	 77	[  0]	TDUP 	  7		89	; slot7 = copy table#k89
	 78	[  0]	TSETS	  7	6	99	; slot6.glowColor = slot7
	 79	[  0]	MOV  	  7		4	; slot7 = slot4
	 80	[  0]	KNUM 	  9		0	; slot9 = 0.55
	 81	[  0]	KNUM 	 10		1	; slot10 = 0.33
	 82	[  0]	KNUM 	 11		2	; slot11 = 0.11
	 83	[  0]	KNUM 	 12		3	; slot12 = 0.008
	 84	[  0]	KNUM 	 13		4	; slot13 = 0.002
	 85	[  0]	CALL 	  7	2	6	; slot7 = slot7(slot8, slot9, slot10, slot11, slot12)
	 86	[  0]	TSETS	  7	6	98	; slot6.probs = slot7
	 87	[  0]	TSETB	  6	5	4	; slot5[4] = slot6
	 88	[  0]	TDUP 	  6		88	; slot6 = copy table#k88
	 89	[  0]	MOV  	  7		3	; slot7 = slot3
	 90	[  0]	KSTR 	  8		87	; slot8 = "08Milestone.png"
	 91	[  0]	CAT  	  7	7	8	; slot7 = slot7 .. slot8
	 92	[  0]	TSETS	  7	6	101	; slot6.icon = slot7
	 93	[  0]	TDUP 	  7		86	; slot7 = copy table#k86
	 94	[  0]	TSETS	  7	6	99	; slot6.glowColor = slot7
	 95	[  0]	MOV  	  7		4	; slot7 = slot4
	 96	[  0]	KNUM 	  9		14	; slot9 = 0.4
	 97	[  0]	KNUM 	 10		15	; slot10 = 0.38
	 98	[  0]	KNUM 	 11		16	; slot11 = 0.19
	 99	[  0]	KNUM 	 12		17	; slot12 = 0.025
	100	[  0]	KNUM 	 13		18	; slot13 = 0.005
	101	[  0]	CALL 	  7	2	6	; slot7 = slot7(slot8, slot9, slot10, slot11, slot12)
	102	[  0]	TSETS	  7	6	98	; slot6.probs = slot7
	103	[  0]	TSETB	  6	5	5	; slot5[5] = slot6
	104	[  0]	TDUP 	  6		85	; slot6 = copy table#k85
	105	[  0]	MOV  	  7		3	; slot7 = slot3
	106	[  0]	KSTR 	  8		84	; slot8 = "09Rift Stone.png"
	107	[  0]	CAT  	  7	7	8	; slot7 = slot7 .. slot8
	108	[  0]	TSETS	  7	6	101	; slot6.icon = slot7
	109	[  0]	TDUP 	  7		83	; slot7 = copy table#k83
	110	[  0]	TSETS	  7	6	99	; slot6.glowColor = slot7
	111	[  0]	MOV  	  7		4	; slot7 = slot4
	112	[  0]	KNUM 	  9		19	; slot9 = 0.9
	113	[  0]	KSHORT	 10		0	; slot10 = 0
	114	[  0]	KSHORT	 11		0	; slot11 = 0
	115	[  0]	KNUM 	 12		20	; slot12 = 0.09
	116	[  0]	KNUM 	 13		21	; slot13 = 0.01
	117	[  0]	CALL 	  7	2	6	; slot7 = slot7(slot8, slot9, slot10, slot11, slot12)
	118	[  0]	TSETS	  7	6	98	; slot6.probs = slot7
	119	[  0]	TSETB	  6	5	6	; slot5[6] = slot6
	120	[  0]	TDUP 	  6		82	; slot6 = copy table#k82
	121	[  0]	MOV  	  7		3	; slot7 = slot3
	122	[  0]	KSTR 	  8		81	; slot8 = "10Special Stone.png"
	123	[  0]	CAT  	  7	7	8	; slot7 = slot7 .. slot8
	124	[  0]	TSETS	  7	6	101	; slot6.icon = slot7
	125	[  0]	TDUP 	  7		80	; slot7 = copy table#k80
	126	[  0]	TSETS	  7	6	99	; slot6.glowColor = slot7
	127	[  0]	MOV  	  7		4	; slot7 = slot4
	128	[  0]	KNUM 	  9		22	; slot9 = 0.35
	129	[  0]	KNUM 	 10		23	; slot10 = 0.3
	130	[  0]	KNUM 	 11		24	; slot11 = 0.17
	131	[  0]	KNUM 	 12		17	; slot12 = 0.025
	132	[  0]	KNUM 	 13		18	; slot13 = 0.005
	133	[  0]	CALL 	  7	2	6	; slot7 = slot7(slot8, slot9, slot10, slot11, slot12)
	134	[  0]	TSETS	  7	6	98	; slot6.probs = slot7
	135	[  0]	TSETB	  6	5	7	; slot5[7] = slot6
	136	[  0]	TDUP 	  6		79	; slot6 = copy table#k79
	137	[  0]	MOV  	  7		3	; slot7 = slot3
	138	[  0]	KSTR 	  8		78	; slot8 = "11Mastery Stone.png"
	139	[  0]	CAT  	  7	7	8	; slot7 = slot7 .. slot8
	140	[  0]	TSETS	  7	6	101	; slot6.icon = slot7
	141	[  0]	TDUP 	  7		77	; slot7 = copy table#k77
	142	[  0]	TSETS	  7	6	99	; slot6.glowColor = slot7
	143	[  0]	MOV  	  7		4	; slot7 = slot4
	144	[  0]	KNUM 	  9		25	; slot9 = 0.6
	145	[  0]	KNUM 	 10		23	; slot10 = 0.3
	146	[  0]	KNUM 	 11		20	; slot11 = 0.09
	147	[  0]	KNUM 	 12		3	; slot12 = 0.008
	148	[  0]	KNUM 	 13		4	; slot13 = 0.002
	149	[  0]	CALL 	  7	2	6	; slot7 = slot7(slot8, slot9, slot10, slot11, slot12)
	150	[  0]	TSETS	  7	6	98	; slot6.probs = slot7
	151	[  0]	TSETB	  6	5	8	; slot5[8] = slot6
	152	[  0]	TDUP 	  6		76	; slot6 = copy table#k76
	153	[  0]	MOV  	  7		3	; slot7 = slot3
	154	[  0]	KSTR 	  8		75	; slot8 = "14Blessing Stone.png"
	155	[  0]	CAT  	  7	7	8	; slot7 = slot7 .. slot8
	156	[  0]	TSETS	  7	6	101	; slot6.icon = slot7
	157	[  0]	TDUP 	  7		74	; slot7 = copy table#k74
	158	[  0]	TSETS	  7	6	99	; slot6.glowColor = slot7
	159	[  0]	MOV  	  7		4	; slot7 = slot4
	160	[  0]	KNUM 	  9		26	; slot9 = 0.2
	161	[  0]	KNUM 	 10		27	; slot10 = 0.45
	162	[  0]	KNUM 	 11		28	; slot11 = 0.28
	163	[  0]	KNUM 	 12		29	; slot12 = 0.06
	164	[  0]	KNUM 	 13		21	; slot13 = 0.01
	165	[  0]	CALL 	  7	2	6	; slot7 = slot7(slot8, slot9, slot10, slot11, slot12)
	166	[  0]	TSETS	  7	6	98	; slot6.probs = slot7
	167	[  0]	TSETB	  6	5	9	; slot5[9] = slot6
	168	[  0]	TDUP 	  6		73	; slot6 = copy table#k73
	169	[  0]	MOV  	  7		3	; slot7 = slot3
	170	[  0]	KSTR 	  8		72	; slot8 = "15Gambit Stone.png"
	171	[  0]	CAT  	  7	7	8	; slot7 = slot7 .. slot8
	172	[  0]	TSETS	  7	6	101	; slot6.icon = slot7
	173	[  0]	TDUP 	  7		71	; slot7 = copy table#k71
	174	[  0]	TSETS	  7	6	99	; slot6.glowColor = slot7
	175	[  0]	MOV  	  7		4	; slot7 = slot4
	176	[  0]	KSHORT	  9		0	; slot9 = 0
	177	[  0]	KNUM 	 10		30	; slot10 = 0.85
	178	[  0]	KSHORT	 11		0	; slot11 = 0
	179	[  0]	KNUM 	 12		31	; slot12 = 0.135
	180	[  0]	KNUM 	 13		32	; slot13 = 0.015
	181	[  0]	CALL 	  7	2	6	; slot7 = slot7(slot8, slot9, slot10, slot11, slot12)
	182	[  0]	TSETS	  7	6	98	; slot6.probs = slot7
	183	[  0]	TSETB	  6	5	10	; slot5[10] = slot6
	184	[  0]	TDUP 	  6		70	; slot6 = copy table#k70
	185	[  0]	MOV  	  7		3	; slot7 = slot3
	186	[  0]	KSTR 	  8		69	; slot8 = "16Constellation Stone.png"
	187	[  0]	CAT  	  7	7	8	; slot7 = slot7 .. slot8
	188	[  0]	TSETS	  7	6	101	; slot6.icon = slot7
	189	[  0]	TDUP 	  7		68	; slot7 = copy table#k68
	190	[  0]	TSETS	  7	6	99	; slot6.glowColor = slot7
	191	[  0]	MOV  	  7		4	; slot7 = slot4
	192	[  0]	KNUM 	  9		14	; slot9 = 0.4
	193	[  0]	KNUM 	 10		33	; slot10 = 0.42
	194	[  0]	KNUM 	 11		34	; slot11 = 0.15
	195	[  0]	KNUM 	 12		35	; slot12 = 0.026
	196	[  0]	KNUM 	 13		12	; slot13 = 0.004
	197	[  0]	CALL 	  7	2	6	; slot7 = slot7(slot8, slot9, slot10, slot11, slot12)
	198	[  0]	TSETS	  7	6	98	; slot6.probs = slot7
	199	[  0]	TSETB	  6	5	11	; slot5[11] = slot6
	200	[  0]	TDUP 	  6		67	; slot6 = copy table#k67
	201	[  0]	MOV  	  7		3	; slot7 = slot3
	202	[  0]	KSTR 	  8		66	; slot8 = "17Sanctum Stone.png"
	203	[  0]	CAT  	  7	7	8	; slot7 = slot7 .. slot8
	204	[  0]	TSETS	  7	6	101	; slot6.icon = slot7
	205	[  0]	TDUP 	  7		65	; slot7 = copy table#k65
	206	[  0]	TSETS	  7	6	99	; slot6.glowColor = slot7
	207	[  0]	MOV  	  7		4	; slot7 = slot4
	208	[  0]	KSHORT	  9		0	; slot9 = 0
	209	[  0]	KSHORT	 10		0	; slot10 = 0
	210	[  0]	KNUM 	 11		36	; slot11 = 0.97
	211	[  0]	KNUM 	 12		37	; slot12 = 0.027
	212	[  0]	KNUM 	 13		9	; slot13 = 0.003
	213	[  0]	CALL 	  7	2	6	; slot7 = slot7(slot8, slot9, slot10, slot11, slot12)
	214	[  0]	TSETS	  7	6	98	; slot6.probs = slot7
	215	[  0]	TSETB	  6	5	12	; slot5[12] = slot6
	216	[  0]	TDUP 	  6		64	; slot6 = copy table#k64
	217	[  0]	MOV  	  7		3	; slot7 = slot3
	218	[  0]	KSTR 	  8		63	; slot8 = "20Zenith Stone.png"
	219	[  0]	CAT  	  7	7	8	; slot7 = slot7 .. slot8
	220	[  0]	TSETS	  7	6	101	; slot6.icon = slot7
	221	[  0]	TDUP 	  7		62	; slot7 = copy table#k62
	222	[  0]	TSETS	  7	6	99	; slot6.glowColor = slot7
	223	[  0]	MOV  	  7		4	; slot7 = slot4
	224	[  0]	KSHORT	  9		0	; slot9 = 0
	225	[  0]	KNUM 	 10		26	; slot10 = 0.2
	226	[  0]	KNUM 	 11		25	; slot11 = 0.6
	227	[  0]	KNUM 	 12		24	; slot12 = 0.17
	228	[  0]	KNUM 	 13		38	; slot13 = 0.03
	229	[  0]	CALL 	  7	2	6	; slot7 = slot7(slot8, slot9, slot10, slot11, slot12)
	230	[  0]	TSETS	  7	6	98	; slot6.probs = slot7
	231	[  0]	TSETB	  6	5	13	; slot5[13] = slot6
	232	[  0]	TDUP 	  6		61	; slot6 = copy table#k61
	233	[  0]	MOV  	  7		3	; slot7 = slot3
	234	[  0]	KSTR 	  8		60	; slot8 = "21Eclipse Stone.png"
	235	[  0]	CAT  	  7	7	8	; slot7 = slot7 .. slot8
	236	[  0]	TSETS	  7	6	101	; slot6.icon = slot7
	237	[  0]	TDUP 	  7		59	; slot7 = copy table#k59
	238	[  0]	TSETS	  7	6	99	; slot6.glowColor = slot7
	239	[  0]	MOV  	  7		4	; slot7 = slot4
	240	[  0]	KSHORT	  9		0	; slot9 = 0
	241	[  0]	KNUM 	 10		39	; slot10 = 0.5
	242	[  0]	KNUM 	 11		27	; slot11 = 0.45
	243	[  0]	KSHORT	 12		0	; slot12 = 0
	244	[  0]	KNUM 	 13		40	; slot13 = 0.05
	245	[  0]	CALL 	  7	2	6	; slot7 = slot7(slot8, slot9, slot10, slot11, slot12)
	246	[  0]	TSETS	  7	6	98	; slot6.probs = slot7
	247	[  0]	TSETB	  6	5	14	; slot5[14] = slot6
	248	[  0]	TDUP 	  6		58	; slot6 = copy table#k58
	249	[  0]	MOV  	  7		3	; slot7 = slot3
	250	[  0]	KSTR 	  8		57	; slot8 = "22Galaxy Stone.png"
	251	[  0]	CAT  	  7	7	8	; slot7 = slot7 .. slot8
	252	[  0]	TSETS	  7	6	101	; slot6.icon = slot7
	253	[  0]	TDUP 	  7		56	; slot7 = copy table#k56
	254	[  0]	TSETS	  7	6	99	; slot6.glowColor = slot7
	255	[  0]	MOV  	  7		4	; slot7 = slot4
	256	[  0]	KSHORT	  9		0	; slot9 = 0
	257	[  0]	KNUM 	 10		27	; slot10 = 0.45
	258	[  0]	KNUM 	 11		27	; slot11 = 0.45
	259	[  0]	KNUM 	 12		41	; slot12 = 0.085
	260	[  0]	KNUM 	 13		32	; slot13 = 0.015
	261	[  0]	CALL 	  7	2	6	; slot7 = slot7(slot8, slot9, slot10, slot11, slot12)
	262	[  0]	TSETS	  7	6	98	; slot6.probs = slot7
	263	[  0]	TSETB	  6	5	15	; slot5[15] = slot6
	264	[  0]	TSETS	  5	0	104	; slot0.defs = slot5
	265	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
	266	[  0]	GGET 	  6		55	; slot6 = _env["ipairs"]
	267	[  0]	TGETS	  8	0	104	; slot8 = slot0.defs
	268	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
	269	[  0]	JMP  	  9		11	; 	goto 281
	270	[  0]	TGETS	 11	10	53	; slot11 = slot10.grade
	271	[  0]	TGETV	 11	2	11	; slot11 = slot2[<unknown table>.grade]
	272	[  0]	TSETS	 11	10	54	; slot10.questRequirements = slot11
	273	[  0]	TDUP 	 11		51	; slot11 = copy table#k51
	274	[  0]	TGETS	 12	10	98	; slot12 = slot10.probs
	275	[  0]	TSETS	 12	11	50	; slot11.probabilities = <unknown table>.probs
	276	[  0]	TSETS	 11	10	52	; slot10.effect = slot11
	277	[  0]	TGETS	 11	10	49	; slot11 = slot10.key
	278	[  0]	TSETV	 10	5	11	; slot5[<unknown table>.key] = slot10
	279	[  0]	TGETS	 11	10	48	; slot11 = slot10.id
	280	[  0]	TSETV	 10	5	11	; slot5[<unknown table>.id] = slot10
	281	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, <unknown table>.defs; slot9, slot10 = ipairs(slot7, <unknown table>.defs)
	282	[  0]	ITERL	  9		-13	; <unknown table>.defs = slot9; if slot9 != nil goto 270
	283	[  0]	FNEW 	  6		46	; N/A:0-0: 0 args, 1 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".defs
		  3	[  0]	RET1 	  0		2	; return uv0"unknown".defs
	284	[  0]	TSETS	  6	0	47	; slot0.getAll = slot6
	285	[  0]	FNEW 	  6		44	; N/A:0-0: 1 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETV	  1	1	0	; slot1 = uv0"unknown"[slot0]
		  3	[  0]	RET1 	  1		2	; return slot1
	286	[  0]	TSETS	  6	0	45	; slot0.get = slot6
	287	[  0]	FNEW 	  6		42	; N/A:0-0: 1 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETV	  1	1	0	; slot1 = uv0"unknown"[slot0]
		  3	[  0]	RET1 	  1		2	; return slot1
	288	[  0]	TSETS	  6	0	43	; slot0.gradeOfCard = slot6
	289	[  0]	FNEW 	  6		41	; N/A:0-0: 0 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		4	; slot0 = _env["package"]
		  2	[  0]	TGETS	  0	0	3	; slot0 = package.loaded
		  3	[  0]	TGETS	  0	0	2	; slot0 = package.loaded.src.ui.upgrade
		  4	[  0]	ISF  	   		0	; if not package.loaded.src.ui.upgrade
		  5	[  0]	JMP  	  1		1	; 	goto 7
		  6	[  0]	RET1 	  0		2	; return package.loaded.src.ui.upgrade
		  7	[  0]	GGET 	  1		1	; slot1 = _env["pcall"]
		  8	[  0]	GGET 	  3		0	; slot3 = _env["require"]
		  9	[  0]	KSTR 	  4		2	; slot4 = "src.ui.upgrade"
		 10	[  0]	CALL 	  1	3	3	; slot1, slot2 = pcall(slot2, require)
		 11	[  0]	ISF  	   		1	; if not slot1
		 12	[  0]	JMP  	  3		2	; 	goto 15
		 13	[  0]	ISTC 	  3		2	; slot3 = slot2; if slot2
		 14	[  0]	JMP  	  3		1	; 	goto 16
		 15	[  0]	KPRI 	  3		0	; slot3 = nil
		 16	[  0]	RET1 	  3		2	; return slot3
	290	[  0]	FNEW 	  7		40	; N/A:0-0: 0 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		3	; slot0 = _env["rawget"]
		  2	[  0]	GGET 	  2		2	; slot2 = _env["_G"]
		  3	[  0]	KSTR 	  3		1	; slot3 = "battlefield"
		  4	[  0]	CALL 	  0	2	3	; slot0 = rawget(slot1, _G)
		  5	[  0]	ISFC 	  1		0	; slot1 = slot0; if not slot0
		  6	[  0]	JMP  	  1		6	; 	goto 13
		  7	[  0]	TGETS	  1	0	0	; slot1 = slot0.sandboxMode
		  8	[  0]	ISEQP	  1		2	; if <unknown table>.sandboxMode == true
		  9	[  0]	JMP  	  1		2	; 	goto 12
		 10	[  0]	KPRI 	  1		1	; slot1 = false
		 11	[  0]	JMP  	  2		1	; 	goto 13
		 12	[  0]	KPRI 	  1		2	; slot1 = true
		 13	[  0]	RET1 	  1		2	; return slot1
	291	[  0]	FNEW 	  8		38	; N/A:0-0: 1 args, 2 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		3	; 	goto 6
		  3	[  0]	TGETS	  1	0	6	; slot1 = slot0.sandboxMode
		  4	[  0]	ISEQP	  1		2	; if <unknown table>.sandboxMode == true
		  5	[  0]	JMP  	  1		6	; 	goto 12
		  6	[  0]	IST  	   		0	; if slot0
		  7	[  0]	JMP  	  1		6	; 	goto 14
		  8	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  9	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown"()
		 10	[  0]	ISF  	   		1	; if not slot1
		 11	[  0]	JMP  	  2		2	; 	goto 14
		 12	[  0]	KPRI 	  1		2	; slot1 = true
		 13	[  0]	RET1 	  1		2	; return slot1
		 14	[  0]	GGET 	  1		5	; slot1 = _env["rawget"]
		 15	[  0]	GGET 	  3		4	; slot3 = _env["_G"]
		 16	[  0]	KSTR 	  4		3	; slot4 = "GameEditionMode"
		 17	[  0]	CALL 	  1	2	3	; slot1 = rawget(slot2, _G)
		 18	[  0]	ISNES	  1		2	; if slot1 ~= "demo"
		 19	[  0]	JMP  	  1		2	; 	goto 22
		 20	[  0]	KPRI 	  1		1	; slot1 = false
		 21	[  0]	RET1 	  1		2	; return slot1
		 22	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 23	[  0]	CALL 	  1	2	1	; slot1 = uv1"unknown"()
		 24	[  0]	ISF  	   		1	; if not slot1
		 25	[  0]	JMP  	  2		8	; 	goto 34
		 26	[  0]	TGETS	  2	1	1	; slot2 = slot1.isOwned
		 27	[  0]	ISF  	   		2	; if not <unknown table>.isOwned
		 28	[  0]	JMP  	  3		5	; 	goto 34
		 29	[  0]	TGETS	  2	1	1	; slot2 = slot1.isOwned
		 30	[  0]	KSTR 	  4		0	; slot4 = "fatestone"
		 31	[  0]	CALL 	  2	2	2	; slot2 = <unknown table>.isOwned(slot3)
		 32	[  0]	IST  	   		2	; if slot2
		 33	[  0]	JMP  	  3		1	; 	goto 35
		 34	[  0]	KPRI 	  2		1	; slot2 = false
		 35	[  0]	RET1 	  2		2	; return slot2
	292	[  0]	TSETS	  8	0	39	; slot0.isSystemUnlocked = slot8
	293	[  0]	FNEW 	  8		36	; N/A:0-0: 1 args, 2 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KPRI 	  1		1	; slot1 = false
		  4	[  0]	RET1 	  1		2	; return slot1
		  5	[  0]	TGETS	  1	0	1	; slot1 = slot0.unlock
		  6	[  0]	ISF  	   		1	; if not <unknown table>.unlock
		  7	[  0]	JMP  	  1		4	; 	goto 12
		  8	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  9	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown"()
		 10	[  0]	ISF  	   		1	; if not slot1
		 11	[  0]	JMP  	  2		2	; 	goto 14
		 12	[  0]	KPRI 	  1		2	; slot1 = true
		 13	[  0]	RET1 	  1		2	; return slot1
		 14	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 15	[  0]	CALL 	  1	2	1	; slot1 = uv1"unknown"()
		 16	[  0]	ISF  	   		1	; if not slot1
		 17	[  0]	JMP  	  2		8	; 	goto 26
		 18	[  0]	TGETS	  2	1	0	; slot2 = slot1.isOwned
		 19	[  0]	ISF  	   		2	; if not <unknown table>.isOwned
		 20	[  0]	JMP  	  3		5	; 	goto 26
		 21	[  0]	TGETS	  2	1	0	; slot2 = slot1.isOwned
		 22	[  0]	TGETS	  4	0	1	; slot4 = slot0.unlock
		 23	[  0]	CALL 	  2	2	2	; slot2 = <unknown table>.isOwned(slot3)
		 24	[  0]	IST  	   		2	; if slot2
		 25	[  0]	JMP  	  3		1	; 	goto 27
		 26	[  0]	KPRI 	  2		1	; slot2 = false
		 27	[  0]	RET1 	  2		2	; return slot2
	294	[  0]	TSETS	  8	0	37	; slot0.isUnlocked = slot8
	295	[  0]	FNEW 	  8		34	; N/A:0-0: 1 args, 1 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  2	[  0]	GGET 	  2		4	; slot2 = _env["ipairs"]
		  3	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  4	[  0]	TGETS	  4	4	3	; slot4 = uv0"unknown".defs
		  5	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
		  6	[  0]	JMP  	  5		15	; 	goto 22
		  7	[  0]	TGETS	  7	6	2	; slot7 = slot6.grade
		  8	[  0]	ISNEV	  7		0	; if <unknown table>.grade ~= slot0
		  9	[  0]	JMP  	  7		12	; 	goto 22
		 10	[  0]	TGETS	  7	6	1	; slot7 = slot6.infiniteOnly
		 11	[  0]	IST  	   		7	; if <unknown table>.infiniteOnly
		 12	[  0]	JMP  	  7		9	; 	goto 22
		 13	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 14	[  0]	TGETS	  7	7	0	; slot7 = uv0"unknown".isUnlocked
		 15	[  0]	MOV  	  9		6	; slot9 = slot6
		 16	[  0]	CALL 	  7	2	2	; slot7 = uv0"unknown".isUnlocked(slot8)
		 17	[  0]	ISF  	   		7	; if not uv0"unknown".isUnlocked
		 18	[  0]	JMP  	  8		3	; 	goto 22
		 19	[  0]	LEN  	  7		1	; slot7 = #slot1
		 20	[  0]	ADDVN	  7	7	0	; slot7 = slot7 + 1
		 21	[  0]	TSETV	  6	1	7	; slot1[slot7] = slot6
		 22	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, uv0"unknown".defs; slot5, slot6 = slot2(slot3, uv0"unknown".defs)
		 23	[  0]	ITERL	  5		-17	; uv0"unknown".defs = slot5; if slot5 != nil goto 7
		 24	[  0]	RET1 	  1		2	; return slot1
	296	[  0]	TSETS	  8	0	35	; slot0.poolForGrade = slot8
	297	[  0]	FNEW 	  8		32	; N/A:0-0: 2 args, 1 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	3	; slot2 = uv0"unknown".poolForGrade
		  3	[  0]	MOV  	  4		0	; slot4 = slot0
		  4	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown".poolForGrade(slot3)
		  5	[  0]	LEN  	  3		2	; slot3 = #slot2
		  6	[  0]	ISNEN	  3		0	; if slot3 ~= 0
		  7	[  0]	JMP  	  3		2	; 	goto 10
		  8	[  0]	KPRI 	  3		0	; slot3 = nil
		  9	[  0]	RET1 	  3		2	; return slot3
		 10	[  0]	IST  	   		1	; if slot1
		 11	[  0]	JMP  	  3		3	; 	goto 15
		 12	[  0]	GGET 	  3		2	; slot3 = _env["love"]
		 13	[  0]	TGETS	  3	3	1	; slot3 = love.math
		 14	[  0]	TGETS	  1	3	0	; slot1 = love.math.random
		 15	[  0]	MOV  	  3		1	; slot3 = love.math.random
		 16	[  0]	LEN  	  5		2	; slot5 = #slot2
		 17	[  0]	CALL 	  3	2	2	; slot3 = love.math.random(slot4)
		 18	[  0]	TGETV	  3	2	3	; slot3 = slot2[love.math.random]
		 19	[  0]	RET1 	  3		2	; return slot3
	298	[  0]	TSETS	  8	0	33	; slot0.pickForGrade = slot8
	299	[  0]	FNEW 	  8		30	; N/A:0-0: 2 args, 1 upvalues, 20 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	12	; slot2 = uv0"unknown".get
		  3	[  0]	MOV  	  4		0	; slot4 = slot0
		  4	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown".get(slot3)
		  5	[  0]	ISF  	   		2	; if not slot2
		  6	[  0]	JMP  	  3		68	; 	goto 75
		  7	[  0]	TGETS	  3	2	11	; slot3 = slot2.questRequirements
		  8	[  0]	ISF  	   		3	; if not <unknown table>.questRequirements
		  9	[  0]	JMP  	  4		65	; 	goto 75
		 10	[  0]	TGETS	  3	2	11	; slot3 = slot2.questRequirements
		 11	[  0]	TGETS	  3	3	10	; slot3 = <unknown table>.questRequirements.questNumbers
		 12	[  0]	ISF  	   		3	; if not <unknown table>.questRequirements.questNumbers
		 13	[  0]	JMP  	  4		61	; 	goto 75
		 14	[  0]	LEN  	  4		3	; slot4 = #<unknown table>.questRequirements.questNumbers
		 15	[  0]	KSHORT	  5		0	; slot5 = 0
		 16	[  0]	ISGE 	  5		4	; if slot5 >= slot4
		 17	[  0]	JMP  	  4		57	; 	goto 75
		 18	[  0]	ISF  	   		1	; if not slot1
		 19	[  0]	JMP  	  4		48	; 	goto 68
		 20	[  0]	GGET 	  4		9	; slot4 = _env["require"]
		 21	[  0]	KSTR 	  6		8	; slot6 = "src.game.quest"
		 22	[  0]	CALL 	  4	2	2	; slot4 = require(slot5)
		 23	[  0]	TGETS	  5	4	7	; slot5 = require.byDifficulty
		 24	[  0]	TGETS	  6	2	11	; slot6 = slot2.questRequirements
		 25	[  0]	TGETS	  6	6	6	; slot6 = <unknown table>.questRequirements.difficulty
		 26	[  0]	TGETV	  5	5	6	; slot5 = require.byDifficulty[<unknown table>.questRequirements.difficulty]
		 27	[  0]	ISF  	   		5	; if not slot5
		 28	[  0]	JMP  	  6		39	; 	goto 68
		 29	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		 30	[  0]	GGET 	  7		5	; slot7 = _env["ipairs"]
		 31	[  0]	MOV  	  9		3	; slot9 = <unknown table>.questRequirements.questNumbers
		 32	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = ipairs(slot8)
		 33	[  0]	JMP  	 10		21	; 	goto 55
		 34	[  0]	GGET 	 12		5	; slot12 = _env["ipairs"]
		 35	[  0]	MOV  	 14		5	; slot14 = slot5
		 36	[  0]	CALL 	 12	4	2	; slot12, slot13, slot14 = ipairs(slot13)
		 37	[  0]	JMP  	 15		15	; 	goto 53
		 38	[  0]	TGETS	 17	16	4	; slot17 = slot16.number
		 39	[  0]	ISNEV	 17		11	; if <unknown table>.number ~= slot11
		 40	[  0]	JMP  	 17		12	; 	goto 53
		 41	[  0]	TGETS	 17	16	3	; slot17 = slot16.appearanceCondition
		 42	[  0]	ISF  	   		17	; if not <unknown table>.appearanceCondition
		 43	[  0]	JMP  	 17		5	; 	goto 49
		 44	[  0]	TGETS	 17	16	3	; slot17 = slot16.appearanceCondition
		 45	[  0]	MOV  	 19		1	; slot19 = slot1
		 46	[  0]	CALL 	 17	2	2	; slot17 = <unknown table>.appearanceCondition(slot18)
		 47	[  0]	ISF  	   		17	; if not <unknown table>.appearanceCondition
		 48	[  0]	JMP  	 18		6	; 	goto 55
		 49	[  0]	LEN  	 17		6	; slot17 = #slot6
		 50	[  0]	ADDVN	 17	17	0	; slot17 = slot17 + 1
		 51	[  0]	TSETV	 11	6	17	; slot6[slot17] = slot11
		 52	[  0]	JMP  	 12		2	; 	goto 55
		 53	[  0]	ITERC	 15	3	3	; slot15, slot16, slot17 = ipairs, slot13, slot14; slot15, slot16 = ipairs(slot13, slot14)
		 54	[  0]	ITERL	 15		-17	; slot14 = slot15; if slot15 != nil goto 38
		 55	[  0]	ITERC	 10	3	3	; slot10, slot11, slot12 = ipairs, slot8, <unknown table>.questRequirements.questNumbers; slot10, slot11 = ipairs(slot8, <unknown table>.questRequirements.questNumbers)
		 56	[  0]	ITERL	 10		-23	; <unknown table>.questRequirements.questNumbers = slot10; if slot10 != nil goto 34
		 57	[  0]	LEN  	  7		6	; slot7 = #slot6
		 58	[  0]	KSHORT	  8		0	; slot8 = 0
		 59	[  0]	ISGE 	  8		7	; if slot8 >= slot7
		 60	[  0]	JMP  	  7		7	; 	goto 68
		 61	[  0]	GGET 	  7		2	; slot7 = _env["love"]
		 62	[  0]	TGETS	  7	7	1	; slot7 = love.math
		 63	[  0]	TGETS	  7	7	0	; slot7 = love.math.random
		 64	[  0]	LEN  	  9		6	; slot9 = #slot6
		 65	[  0]	CALL 	  7	2	2	; slot7 = love.math.random(slot8)
		 66	[  0]	TGETV	  7	6	7	; slot7 = slot6[love.math.random]
		 67	[  0]	RET1 	  7		2	; return slot7
		 68	[  0]	GGET 	  4		2	; slot4 = _env["love"]
		 69	[  0]	TGETS	  4	4	1	; slot4 = love.math
		 70	[  0]	TGETS	  4	4	0	; slot4 = love.math.random
		 71	[  0]	LEN  	  6		3	; slot6 = #<unknown table>.questRequirements.questNumbers
		 72	[  0]	CALL 	  4	2	2	; slot4 = love.math.random(slot5)
		 73	[  0]	TGETV	  4	3	4	; slot4 = <unknown table>.questRequirements.questNumbers[love.math.random]
		 74	[  0]	RET1 	  4		2	; return slot4
		 75	[  0]	KPRI 	  3		0	; slot3 = nil
		 76	[  0]	RET1 	  3		2	; return slot3
	300	[  0]	TSETS	  8	0	31	; slot0.getRandomQuestNumber = slot8
	301	[  0]	FNEW 	  8		28	; N/A:0-0: 2 args, 1 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	7	; slot2 = uv0"unknown".get
		  3	[  0]	MOV  	  4		0	; slot4 = slot0
		  4	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown".get(slot3)
		  5	[  0]	ISF  	   		2	; if not slot2
		  6	[  0]	JMP  	  3		3	; 	goto 10
		  7	[  0]	TGETS	  3	2	6	; slot3 = slot2.questRequirements
		  8	[  0]	IST  	   		3	; if <unknown table>.questRequirements
		  9	[  0]	JMP  	  3		2	; 	goto 12
		 10	[  0]	KPRI 	  3		0	; slot3 = nil
		 11	[  0]	RET1 	  3		2	; return slot3
		 12	[  0]	GGET 	  3		5	; slot3 = _env["require"]
		 13	[  0]	KSTR 	  5		4	; slot5 = "src.game.quest"
		 14	[  0]	CALL 	  3	2	2	; slot3 = require(slot4)
		 15	[  0]	TGETS	  4	3	3	; slot4 = require.byDifficulty
		 16	[  0]	TGETS	  5	2	6	; slot5 = slot2.questRequirements
		 17	[  0]	TGETS	  5	5	2	; slot5 = <unknown table>.questRequirements.difficulty
		 18	[  0]	TGETV	  4	4	5	; slot4 = require.byDifficulty[<unknown table>.questRequirements.difficulty]
		 19	[  0]	IST  	   		4	; if slot4
		 20	[  0]	JMP  	  5		2	; 	goto 23
		 21	[  0]	KPRI 	  5		0	; slot5 = nil
		 22	[  0]	RET1 	  5		2	; return slot5
		 23	[  0]	GGET 	  5		1	; slot5 = _env["ipairs"]
		 24	[  0]	MOV  	  7		4	; slot7 = slot4
		 25	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		 26	[  0]	JMP  	  8		4	; 	goto 31
		 27	[  0]	TGETS	 10	9	0	; slot10 = slot9.number
		 28	[  0]	ISNEV	 10		1	; if <unknown table>.number ~= slot1
		 29	[  0]	JMP  	 10		1	; 	goto 31
		 30	[  0]	RET1 	  9		2	; return slot9
		 31	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		 32	[  0]	ITERL	  8		-6	; slot7 = slot8; if slot8 != nil goto 27
		 33	[  0]	KPRI 	  5		0	; slot5 = nil
		 34	[  0]	RET1 	  5		2	; return slot5
	302	[  0]	TSETS	  8	0	29	; slot0.getQuestDef = slot8
	303	[  0]	FNEW 	  8		26	; N/A:0-0: 3 args, 2 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  2	[  0]	TGETV	  3	3	1	; slot3 = uv0"unknown"[slot1]
		  3	[  0]	ISF  	   		0	; if not slot0
		  4	[  0]	JMP  	  4		2	; 	goto 7
		  5	[  0]	IST  	   		3	; if slot3
		  6	[  0]	JMP  	  4		2	; 	goto 9
		  7	[  0]	KPRI 	  4		0	; slot4 = nil
		  8	[  0]	RET1 	  4		2	; return slot4
		  9	[  0]	TGETS	  4	0	6	; slot4 = slot0._stoneQuests
		 10	[  0]	IST  	   		4	; if <unknown table>._stoneQuests
		 11	[  0]	JMP  	  5		1	; 	goto 13
		 12	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 13	[  0]	TSETS	  4	0	6	; slot0._stoneQuests = slot4
		 14	[  0]	GGET 	  4		5	; slot4 = _env["pairs"]
		 15	[  0]	TGETS	  6	0	6	; slot6 = slot0._stoneQuests
		 16	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = pairs(slot5)
		 17	[  0]	ISNEXT	  7		10	; Verify ITERN at 28; goto 28
		 18	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 19	[  0]	TGETS	  8	8	4	; slot8 = uv1"unknown".get
		 20	[  0]	MOV  	 10		7	; slot10 = slot7
		 21	[  0]	CALL 	  8	2	2	; slot8 = uv1"unknown".get(slot9)
		 22	[  0]	ISF  	   		8	; if not uv1"unknown".get
		 23	[  0]	JMP  	  9		4	; 	goto 28
		 24	[  0]	TGETS	  9	8	3	; slot9 = uv1"unknown".get.grade
		 25	[  0]	ISNEV	  9		3	; if uv1"unknown".get.grade ~= slot3
		 26	[  0]	JMP  	  9		1	; 	goto 28
		 27	[  0]	RET1 	  8		2	; return uv1"unknown".get
		 28	[  0]	ITERN	  7	2	3	; slot7, slot8, slot9 = pairs, slot5, <unknown table>._stoneQuests; slot7 = pairs(slot5, <unknown table>._stoneQuests)
		 29	[  0]	ITERL	  7		-12	; <unknown table>._stoneQuests = slot7; if slot7 != nil goto 18
		 30	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 31	[  0]	TGETS	  4	4	2	; slot4 = uv1"unknown".pickForGrade
		 32	[  0]	MOV  	  6		3	; slot6 = slot3
		 33	[  0]	CALL 	  4	2	2	; slot4 = uv1"unknown".pickForGrade(slot5)
		 34	[  0]	ISF  	   		4	; if not uv1"unknown".pickForGrade
		 35	[  0]	JMP  	  5		8	; 	goto 44
		 36	[  0]	TGETS	  5	0	6	; slot5 = slot0._stoneQuests
		 37	[  0]	TGETS	  6	4	1	; slot6 = uv1"unknown".pickForGrade.key
		 38	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 39	[  0]	TGETS	  7	7	0	; slot7 = uv1"unknown".getRandomQuestNumber
		 40	[  0]	TGETS	  9	4	1	; slot9 = uv1"unknown".pickForGrade.key
		 41	[  0]	MOV  	 10		2	; slot10 = slot2
		 42	[  0]	CALL 	  7	2	3	; slot7 = uv1"unknown".getRandomQuestNumber(uv1"unknown".get, uv1"unknown".pickForGrade.key)
		 43	[  0]	TSETV	  7	5	6	; <unknown table>._stoneQuests[uv1"unknown".pickForGrade.key] = uv1"unknown".getRandomQuestNumber
		 44	[  0]	RET1 	  4		2	; return uv1"unknown".pickForGrade
	304	[  0]	TSETS	  8	0	27	; slot0.cardStone = slot8
	305	[  0]	FNEW 	  8		24	; N/A:0-0: 2 args, 1 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	1	; slot2 = uv0"unknown".get
		  3	[  0]	MOV  	  4		0	; slot4 = slot0
		  4	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown".get(slot3)
		  5	[  0]	ISF  	   		2	; if not slot2
		  6	[  0]	JMP  	  3		3	; 	goto 10
		  7	[  0]	TGETS	  3	2	0	; slot3 = slot2.probs
		  8	[  0]	IST  	   		3	; if <unknown table>.probs
		  9	[  0]	JMP  	  4		1	; 	goto 11
		 10	[  0]	MOV  	  3		1	; slot3 = slot1
		 11	[  0]	RET1 	  3		2	; return slot3
	306	[  0]	TSETS	  8	0	25	; slot0.applySpawnEffect = slot8
	307	[  0]	FNEW 	  8		22	; N/A:0-0: 1 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	7	; slot1 = uv0"unknown".get
		  3	[  0]	MOV  	  3		0	; slot3 = slot0
		  4	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown".get(slot2)
		  5	[  0]	ISFC 	  2		1	; slot2 = slot1; if not slot1
		  6	[  0]	JMP  	  2		1	; 	goto 8
		  7	[  0]	TGETS	  2	1	6	; slot2 = slot1.grade
		  8	[  0]	ISNES	  2		5	; if <unknown table>.grade ~= "B"
		  9	[  0]	JMP  	  3		2	; 	goto 12
		 10	[  0]	KSTR 	  3		4	; slot3 = "MileStone"
		 11	[  0]	RET1 	  3		2	; return slot3
		 12	[  0]	ISEQS	  2		3	; if <unknown table>.grade == "A"
		 13	[  0]	JMP  	  3		2	; 	goto 16
		 14	[  0]	ISNES	  2		2	; if <unknown table>.grade ~= "S"
		 15	[  0]	JMP  	  3		2	; 	goto 18
		 16	[  0]	KSTR 	  3		1	; slot3 = "BlessingStone"
		 17	[  0]	RET1 	  3		2	; return slot3
		 18	[  0]	KSTR 	  3		0	; slot3 = "OriginStone"
		 19	[  0]	RET1 	  3		2	; return slot3
	308	[  0]	TSETS	  8	0	23	; slot0.visualKey = slot8
	309	[  0]	FNEW 	  8		20	; N/A:0-0: 1 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		ktable#5 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	7	; slot1 = uv0"unknown".get
		  3	[  0]	MOV  	  3		0	; slot3 = slot0
		  4	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown".get(slot2)
		  5	[  0]	IST  	   		1	; if slot1
		  6	[  0]	JMP  	  2		2	; 	goto 9
		  7	[  0]	KPRI 	  2		0	; slot2 = nil
		  8	[  0]	RET1 	  2		2	; return slot2
		  9	[  0]	TDUP 	  2		5	; slot2 = copy table#k5
		 10	[  0]	TGETS	  3	1	6	; slot3 = slot1.key
		 11	[  0]	TSETS	  3	2	6	; slot2.key = <unknown table>.key
		 12	[  0]	TGETS	  3	1	4	; slot3 = slot1.probs
		 13	[  0]	TSETS	  3	2	4	; slot2.probs = <unknown table>.probs
		 14	[  0]	TGETS	  3	1	3	; slot3 = slot1.special
		 15	[  0]	TSETS	  3	2	3	; slot2.special = <unknown table>.special
		 16	[  0]	TGETS	  3	1	2	; slot3 = slot1.lines
		 17	[  0]	TSETS	  3	2	2	; slot2.lines = <unknown table>.lines
		 18	[  0]	TGETS	  3	1	1	; slot3 = slot1.pick
		 19	[  0]	TSETS	  3	2	1	; slot2.pick = <unknown table>.pick
		 20	[  0]	TGETS	  3	1	0	; slot3 = slot1.rankTarget
		 21	[  0]	TSETS	  3	2	0	; slot2.rankTarget = <unknown table>.rankTarget
		 22	[  0]	RET1 	  2		2	; return slot2
	310	[  0]	TSETS	  8	0	21	; slot0.makePack = slot8
	311	[  0]	TDUP 	  8		18	; slot8 = copy table#k18
	312	[  0]	TSETS	  8	0	19	; slot0.SPECIAL_SYMBOLS = slot8
	313	[  0]	FNEW 	  8		16	; N/A:0-0: 2 args, 1 upvalues, 19 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		1	; if slot1
		  2	[  0]	JMP  	  2		3	; 	goto 6
		  3	[  0]	GGET 	  2		9	; slot2 = _env["love"]
		  4	[  0]	TGETS	  2	2	8	; slot2 = love.math
		  5	[  0]	TGETS	  1	2	7	; slot1 = love.math.random
		  6	[  0]	ISF  	   		0	; if not slot0
		  7	[  0]	JMP  	  2		3	; 	goto 11
		  8	[  0]	TGETS	  2	0	6	; slot2 = slot0.probs
		  9	[  0]	IST  	   		2	; if <unknown table>.probs
		 10	[  0]	JMP  	  3		1	; 	goto 12
		 11	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		 12	[  0]	GGET 	  3		8	; slot3 = _env["math"]
		 13	[  0]	TGETS	  3	3	5	; slot3 = math.max
		 14	[  0]	KSHORT	  5		0	; slot5 = 0
		 15	[  0]	GGET 	  6		4	; slot6 = _env["tonumber"]
		 16	[  0]	ISF  	   		0	; if not slot0
		 17	[  0]	JMP  	  8		3	; 	goto 21
		 18	[  0]	TGETS	  8	0	3	; slot8 = slot0.special
		 19	[  0]	IST  	   		8	; if <unknown table>.special
		 20	[  0]	JMP  	  9		1	; 	goto 22
		 21	[  0]	KSHORT	  8		0	; slot8 = 0
		 22	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
		 23	[  0]	IST  	   		6	; if tonumber
		 24	[  0]	JMP  	  7		1	; 	goto 26
		 25	[  0]	KSHORT	  6		0	; slot6 = 0
		 26	[  0]	CALL 	  3	2	3	; slot3 = math.max(slot4, slot5)
		 27	[  0]	MOV  	  4		3	; slot4 = slot3
		 28	[  0]	GGET 	  5		2	; slot5 = _env["ipairs"]
		 29	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 30	[  0]	TGETS	  7	7	1	; slot7 = uv0"unknown".GRADE_ORDER
		 31	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		 32	[  0]	JMP  	  8		14	; 	goto 47
		 33	[  0]	GGET 	 10		8	; slot10 = _env["math"]
		 34	[  0]	TGETS	 10	10	5	; slot10 = math.max
		 35	[  0]	KSHORT	 12		0	; slot12 = 0
		 36	[  0]	GGET 	 13		4	; slot13 = _env["tonumber"]
		 37	[  0]	TGETV	 15	2	9	; slot15 = slot2[slot9]
		 38	[  0]	IST  	   		15	; if slot15
		 39	[  0]	JMP  	 16		1	; 	goto 41
		 40	[  0]	KSHORT	 15		0	; slot15 = 0
		 41	[  0]	CALL 	 13	2	2	; slot13 = tonumber(slot14)
		 42	[  0]	IST  	   		13	; if tonumber
		 43	[  0]	JMP  	 14		1	; 	goto 45
		 44	[  0]	KSHORT	 13		0	; slot13 = 0
		 45	[  0]	CALL 	 10	2	3	; slot10 = math.max(slot11, slot12)
		 46	[  0]	ADDVV	  4	4	10	; slot4 = slot4 + math.max
		 47	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, uv0"unknown".GRADE_ORDER; slot8, slot9 = ipairs(slot6, uv0"unknown".GRADE_ORDER)
		 48	[  0]	ITERL	  8		-16	; uv0"unknown".GRADE_ORDER = slot8; if slot8 != nil goto 33
		 49	[  0]	KSHORT	  5		0	; slot5 = 0
		 50	[  0]	ISGT 	  4		5	; if slot4 > slot5
		 51	[  0]	JMP  	  5		3	; 	goto 55
		 52	[  0]	KSTR 	  5		0	; slot5 = "normal"
		 53	[  0]	KSHORT	  6		1	; slot6 = 1
		 54	[  0]	RET  	  5		3	; return slot5, slot6
		 55	[  0]	MOV  	  5		1	; slot5 = love.math.random
		 56	[  0]	CALL 	  5	2	1	; slot5 = love.math.random()
		 57	[  0]	MULVV	  5	5	4	; slot5 = love.math.random * slot4
		 58	[  0]	KSHORT	  6		0	; slot6 = 0
		 59	[  0]	ISGE 	  6		3	; if slot6 >= slot3
		 60	[  0]	JMP  	  6		6	; 	goto 67
		 61	[  0]	ISGE 	  5		3	; if slot5 >= slot3
		 62	[  0]	JMP  	  6		3	; 	goto 66
		 63	[  0]	KSTR 	  6		3	; slot6 = "special"
		 64	[  0]	DIVVV	  7	3	4	; slot7 = slot3 / slot4
		 65	[  0]	RET  	  6		3	; return slot6, slot7
		 66	[  0]	SUBVV	  5	5	3	; slot5 = slot5 - slot3
		 67	[  0]	KSHORT	  6		0	; slot6 = 0
		 68	[  0]	KSTR 	  7		0	; slot7 = "normal"
		 69	[  0]	GGET 	  8		2	; slot8 = _env["ipairs"]
		 70	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 71	[  0]	TGETS	 10	10	1	; slot10 = uv0"unknown".GRADE_ORDER
		 72	[  0]	CALL 	  8	4	2	; slot8, slot9, slot10 = ipairs(slot9)
		 73	[  0]	JMP  	 11		23	; 	goto 97
		 74	[  0]	GGET 	 13		8	; slot13 = _env["math"]
		 75	[  0]	TGETS	 13	13	5	; slot13 = math.max
		 76	[  0]	KSHORT	 15		0	; slot15 = 0
		 77	[  0]	GGET 	 16		4	; slot16 = _env["tonumber"]
		 78	[  0]	TGETV	 18	2	12	; slot18 = slot2[slot12]
		 79	[  0]	IST  	   		18	; if slot18
		 80	[  0]	JMP  	 19		1	; 	goto 82
		 81	[  0]	KSHORT	 18		0	; slot18 = 0
		 82	[  0]	CALL 	 16	2	2	; slot16 = tonumber(slot17)
		 83	[  0]	IST  	   		16	; if tonumber
		 84	[  0]	JMP  	 17		1	; 	goto 86
		 85	[  0]	KSHORT	 16		0	; slot16 = 0
		 86	[  0]	CALL 	 13	2	3	; slot13 = math.max(slot14, slot15)
		 87	[  0]	KSHORT	 14		0	; slot14 = 0
		 88	[  0]	ISGE 	 14		13	; if slot14 >= math.max
		 89	[  0]	JMP  	 14		7	; 	goto 97
		 90	[  0]	ADDVV	  6	6	13	; slot6 = slot6 + math.max
		 91	[  0]	MOV  	  7		12	; slot7 = slot12
		 92	[  0]	ISGE 	  5		6	; if slot5 >= slot6
		 93	[  0]	JMP  	 14		3	; 	goto 97
		 94	[  0]	MOV  	 14		12	; slot14 = slot12
		 95	[  0]	DIVVV	 15	13	4	; slot15 = math.max / slot4
		 96	[  0]	RET  	 14		3	; return slot14, slot15
		 97	[  0]	ITERC	 11	3	3	; slot11, slot12, slot13 = ipairs, slot9, uv0"unknown".GRADE_ORDER; slot11, slot12 = ipairs(slot9, uv0"unknown".GRADE_ORDER)
		 98	[  0]	ITERL	 11		-25	; uv0"unknown".GRADE_ORDER = slot11; if slot11 != nil goto 74
		 99	[  0]	MOV  	  8		7	; slot8 = slot7
		100	[  0]	GGET 	  9		8	; slot9 = _env["math"]
		101	[  0]	TGETS	  9	9	5	; slot9 = math.max
		102	[  0]	KSHORT	 11		0	; slot11 = 0
		103	[  0]	GGET 	 12		4	; slot12 = _env["tonumber"]
		104	[  0]	TGETV	 14	2	7	; slot14 = slot2[slot7]
		105	[  0]	IST  	   		14	; if slot14
		106	[  0]	JMP  	 15		1	; 	goto 108
		107	[  0]	KSHORT	 14		0	; slot14 = 0
		108	[  0]	CALL 	 12	2	2	; slot12 = tonumber(math.max)
		109	[  0]	IST  	   		12	; if tonumber
		110	[  0]	JMP  	 13		1	; 	goto 112
		111	[  0]	KSHORT	 12		0	; slot12 = 0
		112	[  0]	CALL 	  9	2	3	; slot9 = math.max(uv0"unknown".GRADE_ORDER, slot11)
		113	[  0]	DIVVV	  9	9	4	; slot9 = math.max / slot4
		114	[  0]	RET  	  8		3	; return slot8, slot9
	314	[  0]	TSETS	  8	0	17	; slot0.rollUnit = slot8
	315	[  0]	FNEW 	  8		14	; N/A:0-0: 2 args, 1 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		2	; 	goto 5
		  3	[  0]	IST  	   		1	; if slot1
		  4	[  0]	JMP  	  2		1	; 	goto 6
		  5	[  0]	RET0 	  0		1	; return
		  6	[  0]	TGETS	  2	1	11	; slot2 = slot1.pack
		  7	[  0]	IST  	   		2	; if <unknown table>.pack
		  8	[  0]	JMP  	  3		4	; 	goto 13
		  9	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 10	[  0]	TGETS	  2	2	10	; slot2 = uv0"unknown".makePack
		 11	[  0]	TGETS	  4	1	9	; slot4 = slot1.stoneKey
		 12	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown".makePack(slot3)
		 13	[  0]	TSETS	  2	1	11	; slot1.pack = slot2
		 14	[  0]	IST  	   		2	; if slot2
		 15	[  0]	JMP  	  3		3	; 	goto 19
		 16	[  0]	KPRI 	  3		2	; slot3 = true
		 17	[  0]	TSETS	  3	0	8	; slot0.forceWinOnce = slot3
		 18	[  0]	RET0 	  0		1	; return
		 19	[  0]	TSETS	  2	0	7	; slot0.stonePackOnce = slot2
		 20	[  0]	TGETS	  3	2	5	; slot3 = slot2.pick
		 21	[  0]	ISF  	   		3	; if not <unknown table>.pick
		 22	[  0]	JMP  	  4		2	; 	goto 25
		 23	[  0]	KSHORT	  3		1	; slot3 = 1
		 24	[  0]	JMP  	  4		16	; 	goto 41
		 25	[  0]	GGET 	  3		4	; slot3 = _env["math"]
		 26	[  0]	TGETS	  3	3	3	; slot3 = math.max
		 27	[  0]	KSHORT	  5		1	; slot5 = 1
		 28	[  0]	GGET 	  6		4	; slot6 = _env["math"]
		 29	[  0]	TGETS	  6	6	2	; slot6 = math.floor
		 30	[  0]	GGET 	  8		1	; slot8 = _env["tonumber"]
		 31	[  0]	TGETS	 10	2	0	; slot10 = slot2.lines
		 32	[  0]	IST  	   		10	; if <unknown table>.lines
		 33	[  0]	JMP  	 11		1	; 	goto 35
		 34	[  0]	KSHORT	 10		1	; slot10 = 1
		 35	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 36	[  0]	IST  	   		8	; if tonumber
		 37	[  0]	JMP  	  9		1	; 	goto 39
		 38	[  0]	KSHORT	  8		1	; slot8 = 1
		 39	[  0]	CALL 	  6	0	2	; MULTRES = math.floor(slot7)
		 40	[  0]	CALLM	  3	2	1	; slot3 = math.max(<unknown table>.stoneKey, ...MULTRES)
		 41	[  0]	TSETS	  3	0	6	; slot0.stoneWinLinesOnce = math.max
		 42	[  0]	KPRI 	  3		2	; slot3 = true
		 43	[  0]	TSETS	  3	0	8	; slot0.forceWinOnce = slot3
		 44	[  0]	RET0 	  0		1	; return
	316	[  0]	TSETS	  8	0	15	; slot0.armSpin = slot8
	317	[  0]	FNEW 	  8		13	; N/A:0-0: 1 args, 0 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  2	[  0]	GGET 	  2		0	; slot2 = _env["pairs"]
		  3	[  0]	ISTC 	  4		0	; slot4 = slot0; if slot0
		  4	[  0]	JMP  	  4		1	; 	goto 6
		  5	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		  6	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = pairs(slot3)
		  7	[  0]	ISNEXT	  5		1	; Verify ITERN at 9; goto 9
		  8	[  0]	TSETV	  6	1	5	; slot1[slot5] = slot6
		  9	[  0]	ITERN	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5, slot6 = slot2(slot3, slot4)
		 10	[  0]	ITERL	  5		-3	; slot4 = slot5; if slot5 != nil goto 8
		 11	[  0]	RET1 	  1		2	; return slot1
	318	[  0]	TDUP 	  9		12	; slot9 = copy table#k12
	319	[  0]	FNEW 	 10		11	; N/A:0-0: 2 args, 1 upvalues, 18 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		7	; slot2 = _env["require"]
		  2	[  0]	KSTR 	  4		6	; slot4 = "src.data.constants"
		  3	[  0]	CALL 	  2	2	2	; slot2 = require(slot3)
		  4	[  0]	TGETS	  3	2	5	; slot3 = slot2.slot
		  5	[  0]	ISF  	   		3	; if not <unknown table>.slot
		  6	[  0]	JMP  	  4		4	; 	goto 11
		  7	[  0]	TGETS	  3	2	5	; slot3 = slot2.slot
		  8	[  0]	TGETS	  3	3	4	; slot3 = <unknown table>.slot.symbolWeights
		  9	[  0]	IST  	   		3	; if <unknown table>.slot.symbolWeights
		 10	[  0]	JMP  	  4		1	; 	goto 12
		 11	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 12	[  0]	KSHORT	  4		0	; slot4 = 0
		 13	[  0]	GGET 	  5		3	; slot5 = _env["ipairs"]
		 14	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 15	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		 16	[  0]	JMP  	  8		17	; 	goto 34
		 17	[  0]	TGETV	 10	1	9	; slot10 = slot1[slot9]
		 18	[  0]	IST  	   		10	; if slot10
		 19	[  0]	JMP  	 10		14	; 	goto 34
		 20	[  0]	GGET 	 10		2	; slot10 = _env["math"]
		 21	[  0]	TGETS	 10	10	1	; slot10 = math.max
		 22	[  0]	KSHORT	 12		0	; slot12 = 0
		 23	[  0]	GGET 	 13		0	; slot13 = _env["tonumber"]
		 24	[  0]	TGETV	 15	3	9	; slot15 = slot3[slot9]
		 25	[  0]	IST  	   		15	; if slot15
		 26	[  0]	JMP  	 16		1	; 	goto 28
		 27	[  0]	KSHORT	 15		0	; slot15 = 0
		 28	[  0]	CALL 	 13	2	2	; slot13 = tonumber(slot14)
		 29	[  0]	IST  	   		13	; if tonumber
		 30	[  0]	JMP  	 14		1	; 	goto 32
		 31	[  0]	KSHORT	 13		0	; slot13 = 0
		 32	[  0]	CALL 	 10	2	3	; slot10 = math.max(slot11, slot12)
		 33	[  0]	ADDVV	  4	4	10	; slot4 = slot4 + math.max
		 34	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, uv0"unknown"; slot8, slot9 = ipairs(slot6, uv0"unknown")
		 35	[  0]	ITERL	  8		-19	; uv0"unknown" = slot8; if slot8 != nil goto 17
		 36	[  0]	MOV  	  5		0	; slot5 = slot0
		 37	[  0]	CALL 	  5	2	1	; slot5 = slot5()
		 38	[  0]	MULVV	  5	5	4	; slot5 = slot5 * slot4
		 39	[  0]	KPRI 	  6		0	; slot6 = nil
		 40	[  0]	GGET 	  7		3	; slot7 = _env["ipairs"]
		 41	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 42	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = ipairs(slot8)
		 43	[  0]	JMP  	 10		22	; 	goto 66
		 44	[  0]	TGETV	 12	1	11	; slot12 = slot1[slot11]
		 45	[  0]	IST  	   		12	; if slot12
		 46	[  0]	JMP  	 12		19	; 	goto 66
		 47	[  0]	MOV  	  6		11	; slot6 = slot11
		 48	[  0]	GGET 	 12		2	; slot12 = _env["math"]
		 49	[  0]	TGETS	 12	12	1	; slot12 = math.max
		 50	[  0]	KSHORT	 14		0	; slot14 = 0
		 51	[  0]	GGET 	 15		0	; slot15 = _env["tonumber"]
		 52	[  0]	TGETV	 17	3	11	; slot17 = slot3[slot11]
		 53	[  0]	IST  	   		17	; if slot17
		 54	[  0]	JMP  	 18		1	; 	goto 56
		 55	[  0]	KSHORT	 17		0	; slot17 = 0
		 56	[  0]	CALL 	 15	2	2	; slot15 = tonumber(slot16)
		 57	[  0]	IST  	   		15	; if tonumber
		 58	[  0]	JMP  	 16		1	; 	goto 60
		 59	[  0]	KSHORT	 15		0	; slot15 = 0
		 60	[  0]	CALL 	 12	2	3	; slot12 = math.max(slot13, slot14)
		 61	[  0]	SUBVV	  5	5	12	; slot5 = slot5 - math.max
		 62	[  0]	KSHORT	 12		0	; slot12 = 0
		 63	[  0]	ISGE 	  5		12	; if slot5 >= slot12
		 64	[  0]	JMP  	 12		1	; 	goto 66
		 65	[  0]	RET1 	 11		2	; return slot11
		 66	[  0]	ITERC	 10	3	3	; slot10, slot11, slot12 = ipairs, slot8, uv0"unknown"; slot10, slot11 = ipairs(slot8, uv0"unknown")
		 67	[  0]	ITERL	 10		-24	; uv0"unknown" = math.max; if math.max != nil goto 44
		 68	[  0]	RET1 	  6		2	; return slot6
	320	[  0]	FNEW 	 11		9	; N/A:0-0: 3 args, 2 upvalues, 23 slots
		
		;;;; constant tables ;;;;
		ktable#5 = [
			[rank] = 1,
			]
		
		
		ktable#9 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		2	; if slot2
		  2	[  0]	JMP  	  3		3	; 	goto 6
		  3	[  0]	GGET 	  3		23	; slot3 = _env["love"]
		  4	[  0]	TGETS	  3	3	22	; slot3 = love.math
		  5	[  0]	TGETS	  2	3	21	; slot2 = love.math.random
		  6	[  0]	GGET 	  3		20	; slot3 = _env["require"]
		  7	[  0]	KSTR 	  5		19	; slot5 = "src.data.randomoption"
		  8	[  0]	CALL 	  3	2	2	; slot3 = require(slot4)
		  9	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 10	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 11	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		 12	[  0]	GGET 	  7		22	; slot7 = _env["math"]
		 13	[  0]	TGETS	  7	7	18	; slot7 = math.max
		 14	[  0]	KSHORT	  9		1	; slot9 = 1
		 15	[  0]	GGET 	 10		22	; slot10 = _env["math"]
		 16	[  0]	TGETS	 10	10	17	; slot10 = math.min
		 17	[  0]	KSHORT	 12		3	; slot12 = 3
		 18	[  0]	GGET 	 13		22	; slot13 = _env["math"]
		 19	[  0]	TGETS	 13	13	16	; slot13 = math.floor
		 20	[  0]	GGET 	 15		15	; slot15 = _env["tonumber"]
		 21	[  0]	ISF  	   		0	; if not slot0
		 22	[  0]	JMP  	 17		3	; 	goto 26
		 23	[  0]	TGETS	 17	0	14	; slot17 = slot0.pick
		 24	[  0]	IST  	   		17	; if <unknown table>.pick
		 25	[  0]	JMP  	 18		1	; 	goto 27
		 26	[  0]	KSHORT	 17		3	; slot17 = 3
		 27	[  0]	CALL 	 15	2	2	; slot15 = tonumber(slot16)
		 28	[  0]	IST  	   		15	; if tonumber
		 29	[  0]	JMP  	 16		1	; 	goto 31
		 30	[  0]	KSHORT	 15		3	; slot15 = 3
		 31	[  0]	CALL 	 13	0	2	; MULTRES = math.floor(slot14)
		 32	[  0]	CALLM	 10	0	1	; MULTRES = math.min(slot11, ...MULTRES)
		 33	[  0]	CALLM	  7	2	1	; slot7 = math.max(slot8, ...MULTRES)
		 34	[  0]	KSHORT	  8		1	; slot8 = 1
		 35	[  0]	MOV  	  9		7	; slot9 = math.max
		 36	[  0]	KSHORT	 10		1	; slot10 = 1
		 37	[  0]	FORI 	  8		56	; for slot11 = slot8,slot9,slot10 else goto 94
		 38	[  0]	ISNEN	 11		0	; if slot11 ~= 1
		 39	[  0]	JMP  	 12		8	; 	goto 48
		 40	[  0]	ISF  	   		1	; if not slot1
		 41	[  0]	JMP  	 12		6	; 	goto 48
		 42	[  0]	ISEQS	  1		13	; if slot1 == "Joker"
		 43	[  0]	JMP  	 12		4	; 	goto 48
		 44	[  0]	ISEQS	  1		12	; if slot1 == "J"
		 45	[  0]	JMP  	 12		2	; 	goto 48
		 46	[  0]	ISTC 	 12		1	; slot12 = slot1; if slot1
		 47	[  0]	JMP  	 12		4	; 	goto 52
		 48	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		 49	[  0]	MOV  	 14		2	; slot14 = love.math.random
		 50	[  0]	MOV  	 15		4	; slot15 = slot4
		 51	[  0]	CALL 	 12	2	3	; slot12 = uv0"unknown"(slot13, love.math.random)
		 52	[  0]	KPRI 	 13		2	; slot13 = true
		 53	[  0]	TSETV	 13	4	12	; slot4[uv0"unknown"] = slot13
		 54	[  0]	UGET 	 13		1	; slot13 = uv1"unknwon"
		 55	[  0]	TGETS	 13	13	11	; slot13 = uv1"unknown".rollUnit
		 56	[  0]	TDUP 	 15		9	; slot15 = copy table#k9
		 57	[  0]	TGETS	 16	0	10	; slot16 = slot0.probs
		 58	[  0]	TSETS	 16	15	10	; slot15.probs = <unknown table>.probs
		 59	[  0]	MOV  	 16		2	; slot16 = love.math.random
		 60	[  0]	CALL 	 13	3	3	; slot13, slot14 = uv1"unknown".rollUnit(love.math.random, slot15)
		 61	[  0]	TGETS	 15	3	8	; slot15 = require.rollForSpawnExcluding
		 62	[  0]	MOV  	 17		5	; slot17 = slot5
		 63	[  0]	KPRI 	 18		0	; slot18 = nil
		 64	[  0]	MOV  	 19		13	; slot19 = uv1"unknown".rollUnit
		 65	[  0]	KPRI 	 20		0	; slot20 = nil
		 66	[  0]	KPRI 	 21		1	; slot21 = false
		 67	[  0]	KPRI 	 22		2	; slot22 = true
		 68	[  0]	CALL 	 15	2	7	; slot15 = require.rollForSpawnExcluding(love.math.random, slot17, slot18, uv1"unknown".rollUnit, slot20, slot21)
		 69	[  0]	ISF  	   		15	; if not require.rollForSpawnExcluding
		 70	[  0]	JMP  	 16		8	; 	goto 79
		 71	[  0]	TGETS	 16	15	7	; slot16 = require.rollForSpawnExcluding.id
		 72	[  0]	ISF  	   		16	; if not require.rollForSpawnExcluding.id
		 73	[  0]	JMP  	 17		5	; 	goto 79
		 74	[  0]	GGET 	 16		6	; slot16 = _env["tostring"]
		 75	[  0]	TGETS	 18	15	7	; slot18 = require.rollForSpawnExcluding.id
		 76	[  0]	CALL 	 16	2	2	; slot16 = tostring(slot17)
		 77	[  0]	KPRI 	 17		2	; slot17 = true
		 78	[  0]	TSETV	 17	5	16	; slot5[tostring] = slot17
		 79	[  0]	TDUP 	 16		5	; slot16 = copy table#k5
		 80	[  0]	TSETS	 12	16	4	; slot16.sym = uv0"unknown"
		 81	[  0]	TSETS	 13	16	3	; slot16.grade = uv1"unknown".rollUnit
		 82	[  0]	TSETS	 14	16	2	; slot16.gradeChance = love.math.random
		 83	[  0]	TSETS	 15	16	1	; slot16.randomOption = require.rollForSpawnExcluding
		 84	[  0]	ISF  	   		15	; if not require.rollForSpawnExcluding
		 85	[  0]	JMP  	 17		4	; 	goto 90
		 86	[  0]	TNEW 	 17		3	; slot17 = new table( array: 3, dict: 1)
		 87	[  0]	TSETB	 15	17	1	; slot17[1] = require.rollForSpawnExcluding
		 88	[  0]	IST  	   		17	; if slot17
		 89	[  0]	JMP  	 18		1	; 	goto 91
		 90	[  0]	KPRI 	 17		0	; slot17 = nil
		 91	[  0]	TSETS	 17	16	0	; slot16.randomOptions = slot17
		 92	[  0]	TSETV	 16	6	11	; slot6[slot11] = slot16
		 93	[  0]	FORL 	  8		-56	; slot11 = slot11 + slot10; if cmp(slot11, sign slot10,  slot9) goto 38
		 94	[  0]	RET1 	  6		2	; return slot6
	321	[  0]	TSETS	 11	0	10	; slot0.rollPickCandidates = slot11
	322	[  0]	FNEW 	 11		8	; N/A:0-0: 1 args, 0 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		ktable#6 = [
			[titleKey] = stone.name.OmenStone,
			[stonePick] = true,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		15	; slot1 = _env["rawget"]
		  2	[  0]	GGET 	  3		14	; slot3 = _env["_G"]
		  3	[  0]	KSTR 	  4		13	; slot4 = "battlefield"
		  4	[  0]	CALL 	  1	2	3	; slot1 = rawget(slot2, _G)
		  5	[  0]	ISF  	   		1	; if not slot1
		  6	[  0]	JMP  	  2		6	; 	goto 13
		  7	[  0]	TGETS	  2	1	12	; slot2 = slot1.openMercContractSelection
		  8	[  0]	ISF  	   		2	; if not <unknown table>.openMercContractSelection
		  9	[  0]	JMP  	  2		3	; 	goto 13
		 10	[  0]	TGETS	  2	1	11	; slot2 = slot1.classSelect
		 11	[  0]	ISF  	   		2	; if not <unknown table>.classSelect
		 12	[  0]	JMP  	  3		2	; 	goto 15
		 13	[  0]	KPRI 	  2		1	; slot2 = false
		 14	[  0]	UCLO 	  0		47	; nil uvs >= r0; goto 62
		 15	[  0]	TGETS	  2	1	10	; slot2 = slot1.wave
		 16	[  0]	ISF  	   		2	; if not <unknown table>.wave
		 17	[  0]	JMP  	  3		6	; 	goto 24
		 18	[  0]	GGET 	  2		9	; slot2 = _env["tonumber"]
		 19	[  0]	TGETS	  4	1	10	; slot4 = slot1.wave
		 20	[  0]	TGETS	  4	4	8	; slot4 = <unknown table>.wave.id
		 21	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 22	[  0]	IST  	   		2	; if slot2
		 23	[  0]	JMP  	  3		1	; 	goto 25
		 24	[  0]	KSHORT	  2		0	; slot2 = 0
		 25	[  0]	MOV  	  5		1	; slot5 = slot1
		 26	[  0]	TGETS	  3	1	12	; slot3 = slot1.openMercContractSelection
		 27	[  0]	MOV  	  6		0	; slot6 = slot0
		 28	[  0]	MOV  	  7		2	; slot7 = slot2
		 29	[  0]	FNEW 	  8		7	; N/A:0-0: 1 args, 1 upvalues, 8 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	ISF  	   		0	; if not slot0
			  2	[  0]	JMP  	  1		4	; 	goto 7
			  3	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  4	[  0]	TGETS	  1	1	7	; slot1 = uv0"unknown".spawn
			  5	[  0]	IST  	   		1	; if uv0"unknown".spawn
			  6	[  0]	JMP  	  1		2	; 	goto 9
			  7	[  0]	KPRI 	  1		1	; slot1 = false
			  8	[  0]	UCLO 	  0		21	; nil uvs >= r0; goto 30
			  9	[  0]	GGET 	  1		6	; slot1 = _env["pcall"]
			 10	[  0]	FNEW 	  3		5	; N/A:0-0: 0 args, 2 upvalues, 7 slots
				
				;;;; constant tables ;;;;
				ktable#4 = [
					[rankOverride] = 1,
					[needsClassSelect] = false,
					]
				
				
				;;;; instructions ;;;;
				  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
				  2	[  0]	MOV  	  2		0	; slot2 = uv0"unknown"
				  3	[  0]	TGETS	  0	0	7	; slot0 = uv0"unknown".spawn
				  4	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
				  5	[  0]	TGETS	  3	3	6	; slot3 = uv1"unknown".sym
				  6	[  0]	KSHORT	  4		1	; slot4 = 1
				  7	[  0]	TDUP 	  5		4	; slot5 = copy table#k4
				  8	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
				  9	[  0]	TGETS	  6	6	5	; slot6 = uv1"unknown".grade
				 10	[  0]	TSETS	  6	5	5	; slot5.grade = uv1"unknown".grade
				 11	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
				 12	[  0]	TGETS	  6	6	3	; slot6 = uv1"unknown".gradeChance
				 13	[  0]	TSETS	  6	5	3	; slot5.gradeChance = uv1"unknown".gradeChance
				 14	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
				 15	[  0]	TGETS	  6	6	2	; slot6 = uv1"unknown".randomOptions
				 16	[  0]	TSETS	  6	5	2	; slot5.randomOptions = uv1"unknown".randomOptions
				 17	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
				 18	[  0]	TGETS	  6	6	5	; slot6 = uv1"unknown".grade
				 19	[  0]	ISEQS	  6		1	; if uv1"unknown".grade == "prism"
				 20	[  0]	JMP  	  6		4	; 	goto 25
				 21	[  0]	KPRI 	  6		0	; slot6 = nil
				 22	[  0]	JMP  	  7		3	; 	goto 26
				 23	[  0]	KPRI 	  6		1	; slot6 = false
				 24	[  0]	JMP  	  7		1	; 	goto 26
				 25	[  0]	KPRI 	  6		2	; slot6 = true
				 26	[  0]	TSETS	  6	5	0	; slot5.specialJackpot5th = slot6
				 27	[  0]	CALL 	  0	1	5	;  = uv0"unknown".spawn(slot1, uv0"unknown", uv1"unknown".sym, slot4)
				 28	[  0]	RET0 	  0		1	; return
			 11	[  0]	CALL 	  1	2	2	; slot1 = pcall(slot2)
			 12	[  0]	IST  	   		1	; if slot1
			 13	[  0]	JMP  	  2		3	; 	goto 17
			 14	[  0]	KPRI 	  2		1	; slot2 = false
			 15	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 16
			 16	[  0]	RET1 	  2		2	; return slot2
			 17	[  0]	GGET 	  2		4	; slot2 = _env["type"]
			 18	[  0]	GGET 	  4		3	; slot4 = _env["rawget"]
			 19	[  0]	GGET 	  6		2	; slot6 = _env["_G"]
			 20	[  0]	KSTR 	  7		1	; slot7 = "playButtonClickSound"
			 21	[  0]	CALL 	  4	0	3	; MULTRES = rawget(slot5, _G)
			 22	[  0]	CALLM	  2	2	0	; slot2 = type(, ...MULTRES)
			 23	[  0]	ISNES	  2		0	; if type ~= "function"
			 24	[  0]	JMP  	  2		2	; 	goto 27
			 25	[  0]	GGET 	  2		1	; slot2 = _env["playButtonClickSound"]
			 26	[  0]	CALL 	  2	1	1	;  = playButtonClickSound()
			 27	[  0]	KPRI 	  2		2	; slot2 = true
			 28	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 29
			 29	[  0]	RET1 	  2		2	; return slot2
			 30	[  0]	RET1 	  1		2	; return slot1
		 30	[  0]	TDUP 	  9		6	; slot9 = copy table#k6
		 31	[  0]	CALL 	  3	2	6	; slot3 = <unknown table>.openMercContractSelection(<unknown table>.wave.id, slot5, slot6, slot7, slot8)
		 32	[  0]	ISF  	   		3	; if not slot3
		 33	[  0]	JMP  	  4		26	; 	goto 60
		 34	[  0]	GGET 	  4		5	; slot4 = _env["package"]
		 35	[  0]	TGETS	  4	4	4	; slot4 = package.loaded
		 36	[  0]	TGETS	  4	4	3	; slot4 = package.loaded.src.ui.render
		 37	[  0]	GGET 	  5		15	; slot5 = _env["rawget"]
		 38	[  0]	GGET 	  7		14	; slot7 = _env["_G"]
		 39	[  0]	KSTR 	  8		2	; slot8 = "loadedAssets"
		 40	[  0]	CALL 	  5	2	3	; slot5 = rawget(slot6, _G)
		 41	[  0]	ISF  	   		4	; if not package.loaded.src.ui.render
		 42	[  0]	JMP  	  6		17	; 	goto 60
		 43	[  0]	TGETS	  6	4	1	; slot6 = package.loaded.src.ui.render.prepareClassSelectionModalAssets
		 44	[  0]	ISF  	   		6	; if not package.loaded.src.ui.render.prepareClassSelectionModalAssets
		 45	[  0]	JMP  	  7		14	; 	goto 60
		 46	[  0]	TGETS	  6	1	11	; slot6 = slot1.classSelect
		 47	[  0]	ISF  	   		6	; if not <unknown table>.classSelect
		 48	[  0]	JMP  	  7		11	; 	goto 60
		 49	[  0]	TGETS	  6	1	11	; slot6 = slot1.classSelect
		 50	[  0]	TGETS	  7	4	1	; slot7 = package.loaded.src.ui.render.prepareClassSelectionModalAssets
		 51	[  0]	MOV  	  9		5	; slot9 = rawget
		 52	[  0]	TGETS	 10	1	11	; slot10 = slot1.classSelect
		 53	[  0]	CALL 	  7	2	3	; slot7 = package.loaded.src.ui.render.prepareClassSelectionModalAssets(slot8, rawget)
		 54	[  0]	ISEQP	  7		2	; if package.loaded.src.ui.render.prepareClassSelectionModalAssets == true
		 55	[  0]	JMP  	  7		2	; 	goto 58
		 56	[  0]	KPRI 	  7		1	; slot7 = false
		 57	[  0]	JMP  	  8		1	; 	goto 59
		 58	[  0]	KPRI 	  7		2	; slot7 = true
		 59	[  0]	TSETS	  7	6	0	; <unknown table>.classSelect._assetsPrepared = slot7
		 60	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 61
		 61	[  0]	RET1 	  3		2	; return slot3
		 62	[  0]	RET1 	  2		2	; return slot2
	323	[  0]	FNEW 	 12		6	; N/A:0-0: 5 args, 3 upvalues, 19 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  5		0	; slot5 = slot0; if not slot0
		  2	[  0]	JMP  	  5		1	; 	goto 4
		  3	[  0]	TGETS	  5	0	21	; slot5 = slot0.stonePack
		  4	[  0]	ISF  	   		5	; if not <unknown table>.stonePack
		  5	[  0]	JMP  	  6		5	; 	goto 11
		  6	[  0]	GGET 	  6		20	; slot6 = _env["type"]
		  7	[  0]	MOV  	  8		4	; slot8 = slot4
		  8	[  0]	CALL 	  6	2	2	; slot6 = type(slot7)
		  9	[  0]	ISEQS	  6		19	; if type == "function"
		 10	[  0]	JMP  	  6		2	; 	goto 13
		 11	[  0]	KPRI 	  6		1	; slot6 = false
		 12	[  0]	RET1 	  6		2	; return slot6
		 13	[  0]	GGET 	  6		18	; slot6 = _env["math"]
		 14	[  0]	TGETS	  6	6	17	; slot6 = math.max
		 15	[  0]	KSHORT	  8		0	; slot8 = 0
		 16	[  0]	GGET 	  9		18	; slot9 = _env["math"]
		 17	[  0]	TGETS	  9	9	16	; slot9 = math.floor
		 18	[  0]	GGET 	 11		15	; slot11 = _env["tonumber"]
		 19	[  0]	ISTC 	 13		2	; slot13 = slot2; if slot2
		 20	[  0]	JMP  	 13		1	; 	goto 22
		 21	[  0]	KSHORT	 13		0	; slot13 = 0
		 22	[  0]	CALL 	 11	2	2	; slot11 = tonumber(slot12)
		 23	[  0]	IST  	   		11	; if tonumber
		 24	[  0]	JMP  	 12		1	; 	goto 26
		 25	[  0]	KSHORT	 11		0	; slot11 = 0
		 26	[  0]	CALL 	  9	0	2	; MULTRES = math.floor(slot10)
		 27	[  0]	CALLM	  6	2	1	; slot6 = math.max(slot7, ...MULTRES)
		 28	[  0]	MOV  	  2		6	; slot2 = math.max
		 29	[  0]	KSHORT	  6		0	; slot6 = 0
		 30	[  0]	ISGT 	  2		6	; if math.max > slot6
		 31	[  0]	JMP  	  6		2	; 	goto 34
		 32	[  0]	KPRI 	  6		2	; slot6 = true
		 33	[  0]	RET1 	  6		2	; return slot6
		 34	[  0]	TGETS	  6	5	14	; slot6 = <unknown table>.stonePack.pick
		 35	[  0]	ISF  	   		6	; if not <unknown table>.stonePack.pick
		 36	[  0]	JMP  	  7		21	; 	goto 58
		 37	[  0]	TGETS	  6	0	13	; slot6 = slot0._stonePickOpened
		 38	[  0]	ISF  	   		6	; if not <unknown table>._stonePickOpened
		 39	[  0]	JMP  	  7		2	; 	goto 42
		 40	[  0]	KPRI 	  6		2	; slot6 = true
		 41	[  0]	RET1 	  6		2	; return slot6
		 42	[  0]	KPRI 	  6		2	; slot6 = true
		 43	[  0]	TSETS	  6	0	13	; slot0._stonePickOpened = slot6
		 44	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 45	[  0]	TGETS	  6	6	12	; slot6 = uv0"unknown".rollPickCandidates
		 46	[  0]	MOV  	  8		5	; slot8 = <unknown table>.stonePack
		 47	[  0]	MOV  	  9		1	; slot9 = slot1
		 48	[  0]	CALL 	  6	2	3	; slot6 = uv0"unknown".rollPickCandidates(slot7, <unknown table>.stonePack)
		 49	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 50	[  0]	MOV  	  9		6	; slot9 = uv0"unknown".rollPickCandidates
		 51	[  0]	CALL 	  7	2	2	; slot7 = uv1"unknown"(<unknown table>.stonePack)
		 52	[  0]	IST  	   		7	; if uv1"unknown"
		 53	[  0]	JMP  	  7		2	; 	goto 56
		 54	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 55	[  0]	TSETS	  6	7	11	; uv0"unknown"._pendingPick = uv0"unknown".rollPickCandidates
		 56	[  0]	KPRI 	  7		2	; slot7 = true
		 57	[  0]	RET1 	  7		2	; return slot7
		 58	[  0]	KSHORT	  6		1	; slot6 = 1
		 59	[  0]	MOV  	  7		2	; slot7 = math.max
		 60	[  0]	KSHORT	  8		1	; slot8 = 1
		 61	[  0]	FORI 	  6		45	; for uv0"unknown".rollPickCandidates = slot6,slot7,slot8 else goto 107
		 62	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 63	[  0]	TGETS	 10	10	10	; slot10 = uv0"unknown".rollUnit
		 64	[  0]	MOV  	 12		5	; slot12 = <unknown table>.stonePack
		 65	[  0]	CALL 	 10	3	2	; slot10, slot11 = uv0"unknown".rollUnit(slot11)
		 66	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		 67	[  0]	MOV  	 14		3	; slot14 = slot3
		 68	[  0]	CALL 	 12	2	2	; slot12 = uv2"unknown"(slot13)
		 69	[  0]	KPRI 	 13		0	; slot13 = nil
		 70	[  0]	TSETS	 13	12	9	; uv2"unknown".specialJackpot5th = slot13
		 71	[  0]	ISNES	 10		8	; if uv0"unknown".rollUnit ~= "special"
		 72	[  0]	JMP  	 13		13	; 	goto 86
		 73	[  0]	UGET 	 13		0	; slot13 = uv0"unknwon"
		 74	[  0]	TGETS	 13	13	7	; slot13 = uv0"unknown".SPECIAL_SYMBOLS
		 75	[  0]	MOV  	 14		4	; slot14 = slot4
		 76	[  0]	GGET 	 16		6	; slot16 = _env["love"]
		 77	[  0]	TGETS	 16	16	18	; slot16 = love.math
		 78	[  0]	TGETS	 16	16	5	; slot16 = love.math.random
		 79	[  0]	LEN  	 18		13	; slot18 = #uv0"unknown".SPECIAL_SYMBOLS
		 80	[  0]	CALL 	 16	2	2	; slot16 = love.math.random(slot17)
		 81	[  0]	TGETV	 16	13	16	; slot16 = uv0"unknown".SPECIAL_SYMBOLS[love.math.random]
		 82	[  0]	KSHORT	 17		1	; slot17 = 1
		 83	[  0]	MOV  	 18		12	; slot18 = uv2"unknown"
		 84	[  0]	CALL 	 14	1	4	;  = slot14(slot15, slot16, slot17)
		 85	[  0]	JMP  	 13		20	; 	goto 106
		 86	[  0]	TSETS	 10	12	4	; uv2"unknown".grade = uv0"unknown".rollUnit
		 87	[  0]	TSETS	 11	12	3	; uv2"unknown".gradeChance = slot11
		 88	[  0]	ISNES	 10		2	; if uv0"unknown".rollUnit ~= "prism"
		 89	[  0]	JMP  	 13		2	; 	goto 92
		 90	[  0]	KPRI 	 13		2	; slot13 = true
		 91	[  0]	TSETS	 13	12	9	; uv2"unknown".specialJackpot5th = slot13
		 92	[  0]	TGETS	 13	5	1	; slot13 = <unknown table>.stonePack.rankTarget
		 93	[  0]	ISF  	   		13	; if not <unknown table>.stonePack.rankTarget
		 94	[  0]	JMP  	 14		6	; 	goto 101
		 95	[  0]	TGETS	 13	5	1	; slot13 = <unknown table>.stonePack.rankTarget
		 96	[  0]	KSHORT	 14		1	; slot14 = 1
		 97	[  0]	ISGE 	 14		13	; if slot14 >= <unknown table>.stonePack.rankTarget
		 98	[  0]	JMP  	 13		2	; 	goto 101
		 99	[  0]	TGETS	 13	5	1	; slot13 = <unknown table>.stonePack.rankTarget
		100	[  0]	TSETS	 13	12	0	; uv2"unknown".stoneRankTarget = <unknown table>.stonePack.rankTarget
		101	[  0]	MOV  	 13		4	; slot13 = slot4
		102	[  0]	MOV  	 15		1	; slot15 = slot1
		103	[  0]	KSHORT	 16		1	; slot16 = 1
		104	[  0]	MOV  	 17		12	; slot17 = uv2"unknown"
		105	[  0]	CALL 	 13	1	4	;  = slot13(slot14, slot15, slot16)
		106	[  0]	FORL 	  6		-45	; slot9 = slot9 + slot8; if cmp(slot9, sign slot8,  slot7) goto 62
		107	[  0]	KPRI 	  6		2	; slot6 = true
		108	[  0]	RET1 	  6		2	; return slot6
	324	[  0]	TSETS	 12	0	7	; slot0.spawnPackLine = slot12
	325	[  0]	FNEW 	 12		4	; N/A:0-0: 0 args, 2 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown"._pendingPick
		  3	[  0]	ISF  	   		0	; if not uv0"unknown"._pendingPick
		  4	[  0]	JMP  	  1		9	; 	goto 14
		  5	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  6	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  7	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown"._pendingPick
		  8	[  0]	CALL 	  0	2	2	; slot0 = uv1"unknown"(slot1)
		  9	[  0]	ISF  	   		0	; if not slot0
		 10	[  0]	JMP  	  1		3	; 	goto 14
		 11	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 12	[  0]	KPRI 	  1		0	; slot1 = nil
		 13	[  0]	TSETS	  1	0	0	; uv0"unknown"._pendingPick = slot1
		 14	[  0]	RET0 	  0		1	; return
	326	[  0]	TSETS	 12	0	5	; slot0.update = slot12
	327	[  0]	FNEW 	 12		2	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	KPRI 	  1		0	; slot1 = nil
		  3	[  0]	TSETS	  1	0	0	; uv0"unknown"._pendingPick = slot1
		  4	[  0]	RET0 	  0		1	; return
	328	[  0]	TSETS	 12	0	3	; slot0.clearPending = slot12
	329	[  0]	FNEW 	 12		0	; N/A:0-0: 2 args, 1 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		ktable#13 = [
			[fadeInDur] = 0.5,
			[t] = 0,
			[autoSpin] = true,
			[fadeOutDur] = 0.4,
			[phase] = fadein,
			[active] = true,
			]
		
		
		ktable#15 = [
			#1: 0,
			#2: 0,
			#3: 0,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		30	; slot2 = _env["rawget"]
		  2	[  0]	GGET 	  4		29	; slot4 = _env["_G"]
		  3	[  0]	KSTR 	  5		28	; slot5 = "ui"
		  4	[  0]	CALL 	  2	2	3	; slot2 = rawget(slot3, _G)
		  5	[  0]	GGET 	  3		30	; slot3 = _env["rawget"]
		  6	[  0]	GGET 	  5		29	; slot5 = _env["_G"]
		  7	[  0]	KSTR 	  6		27	; slot6 = "slot"
		  8	[  0]	CALL 	  3	2	3	; slot3 = rawget(_G, _G)
		  9	[  0]	GGET 	  4		30	; slot4 = _env["rawget"]
		 10	[  0]	GGET 	  6		29	; slot6 = _env["_G"]
		 11	[  0]	KSTR 	  7		26	; slot7 = "battlefield"
		 12	[  0]	CALL 	  4	2	3	; slot4 = rawget(_G, _G)
		 13	[  0]	ISF  	   		2	; if not slot2
		 14	[  0]	JMP  	  5		6	; 	goto 21
		 15	[  0]	ISF  	   		3	; if not slot3
		 16	[  0]	JMP  	  5		4	; 	goto 21
		 17	[  0]	ISF  	   		4	; if not rawget
		 18	[  0]	JMP  	  5		2	; 	goto 21
		 19	[  0]	IST  	   		1	; if slot1
		 20	[  0]	JMP  	  5		2	; 	goto 23
		 21	[  0]	KPRI 	  5		1	; slot5 = false
		 22	[  0]	RET1 	  5		2	; return slot5
		 23	[  0]	TGETS	  5	4	25	; slot5 = rawget.mode
		 24	[  0]	ISEQS	  5		24	; if rawget.mode == "battle"
		 25	[  0]	JMP  	  5		6	; 	goto 32
		 26	[  0]	TGETS	  5	4	23	; slot5 = rawget.gameOver
		 27	[  0]	IST  	   		5	; if rawget.gameOver
		 28	[  0]	JMP  	  6		3	; 	goto 32
		 29	[  0]	TGETS	  5	4	22	; slot5 = rawget.classSelect
		 30	[  0]	ISF  	   		5	; if not rawget.classSelect
		 31	[  0]	JMP  	  6		2	; 	goto 34
		 32	[  0]	KPRI 	  5		1	; slot5 = false
		 33	[  0]	RET1 	  5		2	; return slot5
		 34	[  0]	TGETS	  5	2	21	; slot5 = slot2._stoneActivated
		 35	[  0]	ISF  	   		5	; if not <unknown table>._stoneActivated
		 36	[  0]	JMP  	  6		6	; 	goto 43
		 37	[  0]	TGETS	  5	2	21	; slot5 = slot2._stoneActivated
		 38	[  0]	TGETS	  5	5	20	; slot5 = <unknown table>._stoneActivated.active
		 39	[  0]	ISF  	   		5	; if not <unknown table>._stoneActivated.active
		 40	[  0]	JMP  	  6		2	; 	goto 43
		 41	[  0]	KPRI 	  5		1	; slot5 = false
		 42	[  0]	RET1 	  5		2	; return slot5
		 43	[  0]	TGETS	  5	3	19	; slot5 = slot3.spin
		 44	[  0]	ISF  	   		5	; if not <unknown table>.spin
		 45	[  0]	JMP  	  6		6	; 	goto 52
		 46	[  0]	TGETS	  5	3	19	; slot5 = slot3.spin
		 47	[  0]	TGETS	  5	5	20	; slot5 = <unknown table>.spin.active
		 48	[  0]	ISF  	   		5	; if not <unknown table>.spin.active
		 49	[  0]	JMP  	  6		2	; 	goto 52
		 50	[  0]	KPRI 	  5		1	; slot5 = false
		 51	[  0]	RET1 	  5		2	; return slot5
		 52	[  0]	TGETS	  5	3	18	; slot5 = slot3.result
		 53	[  0]	ISF  	   		5	; if not <unknown table>.result
		 54	[  0]	JMP  	  6		11	; 	goto 66
		 55	[  0]	TGETS	  5	3	18	; slot5 = slot3.result
		 56	[  0]	TGETS	  5	5	17	; slot5 = <unknown table>.result.winSeq
		 57	[  0]	ISF  	   		5	; if not <unknown table>.result.winSeq
		 58	[  0]	JMP  	  6		7	; 	goto 66
		 59	[  0]	TGETS	  5	3	18	; slot5 = slot3.result
		 60	[  0]	TGETS	  5	5	17	; slot5 = <unknown table>.result.winSeq
		 61	[  0]	TGETS	  5	5	20	; slot5 = <unknown table>.result.winSeq.active
		 62	[  0]	ISF  	   		5	; if not <unknown table>.result.winSeq.active
		 63	[  0]	JMP  	  6		2	; 	goto 66
		 64	[  0]	KPRI 	  5		1	; slot5 = false
		 65	[  0]	RET1 	  5		2	; return slot5
		 66	[  0]	TGETS	  5	2	16	; slot5 = slot2._ownedStones
		 67	[  0]	IST  	   		5	; if <unknown table>._ownedStones
		 68	[  0]	JMP  	  6		1	; 	goto 70
		 69	[  0]	TDUP 	  5		15	; slot5 = copy table#k15
		 70	[  0]	TSETS	  5	2	16	; slot2._ownedStones = slot5
		 71	[  0]	TGETS	  5	2	16	; slot5 = slot2._ownedStones
		 72	[  0]	TGETV	  5	5	0	; slot5 = <unknown table>._ownedStones[slot0]
		 73	[  0]	IST  	   		5	; if slot5
		 74	[  0]	JMP  	  6		1	; 	goto 76
		 75	[  0]	KSHORT	  5		0	; slot5 = 0
		 76	[  0]	KSHORT	  6		1	; slot6 = 1
		 77	[  0]	ISGT 	  6		5	; if slot6 > slot5
		 78	[  0]	JMP  	  5		2	; 	goto 81
		 79	[  0]	KPRI 	  5		1	; slot5 = false
		 80	[  0]	RET1 	  5		2	; return slot5
		 81	[  0]	TGETS	  5	2	16	; slot5 = slot2._ownedStones
		 82	[  0]	KSHORT	  6		1	; slot6 = 1
		 83	[  0]	TSETV	  6	5	0	; <unknown table>._ownedStones[slot0] = slot6
		 84	[  0]	KPRI 	  5		1	; slot5 = false
		 85	[  0]	TSETS	  5	2	14	; slot2._stoneMode = slot5
		 86	[  0]	TDUP 	  5		13	; slot5 = copy table#k13
		 87	[  0]	TGETS	  6	1	12	; slot6 = slot1.key
		 88	[  0]	TSETS	  6	5	11	; slot5.stoneKey = <unknown table>.key
		 89	[  0]	TGETS	  6	1	10	; slot6 = slot1.probs
		 90	[  0]	TSETS	  6	5	10	; slot5.probs = <unknown table>.probs
		 91	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 92	[  0]	TGETS	  6	6	9	; slot6 = uv0"unknown".makePack
		 93	[  0]	TGETS	  8	1	12	; slot8 = slot1.key
		 94	[  0]	CALL 	  6	2	2	; slot6 = uv0"unknown".makePack(slot7)
		 95	[  0]	TSETS	  6	5	8	; slot5.pack = uv0"unknown".makePack
		 96	[  0]	TSETS	  0	5	7	; slot5.cardIndex = slot0
		 97	[  0]	TSETS	  5	2	21	; slot2._stoneActivated = slot5
		 98	[  0]	GGET 	  5		29	; slot5 = _env["_G"]
		 99	[  0]	GGET 	  6		5	; slot6 = _env["math"]
		100	[  0]	TGETS	  6	6	4	; slot6 = math.max
		101	[  0]	KSHORT	  8		0	; slot8 = 0
		102	[  0]	GGET 	  9		3	; slot9 = _env["tonumber"]
		103	[  0]	GGET 	 11		30	; slot11 = _env["rawget"]
		104	[  0]	GGET 	 13		29	; slot13 = _env["_G"]
		105	[  0]	KSTR 	 14		6	; slot14 = "freeSpinCredits"
		106	[  0]	CALL 	 11	2	3	; slot11 = rawget(slot12, _G)
		107	[  0]	IST  	   		11	; if rawget
		108	[  0]	JMP  	 12		1	; 	goto 110
		109	[  0]	KSHORT	 11		0	; slot11 = 0
		110	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
		111	[  0]	IST  	   		9	; if tonumber
		112	[  0]	JMP  	 10		1	; 	goto 114
		113	[  0]	KSHORT	  9		0	; slot9 = 0
		114	[  0]	CALL 	  6	2	3	; slot6 = math.max(slot7, slot8)
		115	[  0]	ADDVN	  6	6	0	; slot6 = math.max + 1
		116	[  0]	TSETS	  6	5	6	; _G.freeSpinCredits = slot6
		117	[  0]	GGET 	  5		2	; slot5 = _env["type"]
		118	[  0]	GGET 	  7		30	; slot7 = _env["rawget"]
		119	[  0]	GGET 	  9		29	; slot9 = _env["_G"]
		120	[  0]	KSTR 	 10		1	; slot10 = "playStoneSlotModSound"
		121	[  0]	CALL 	  7	0	3	; MULTRES = rawget(slot8, _G)
		122	[  0]	CALLM	  5	2	0	; slot5 = type(, ...MULTRES)
		123	[  0]	ISNES	  5		0	; if type ~= "function"
		124	[  0]	JMP  	  5		2	; 	goto 127
		125	[  0]	GGET 	  5		1	; slot5 = _env["playStoneSlotModSound"]
		126	[  0]	CALL 	  5	1	1	;  = playStoneSlotModSound()
		127	[  0]	KPRI 	  5		2	; slot5 = true
		128	[  0]	RET1 	  5		2	; return slot5
	330	[  0]	TSETS	 12	0	1	; slot0.useCard = slot12
	331	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 332
	332	[  0]	RET1 	  0		2	; return slot0
	
