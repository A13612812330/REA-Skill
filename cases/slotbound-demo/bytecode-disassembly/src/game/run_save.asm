;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\game\run_save.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 7 slots
	;;;; constant tables ;;;;
	ktable#14 = [
		[_awakening] = true,
		[target] = true,
		[area] = true,
		[attackTarget] = true,
		[lift] = true,
		[promoteVis] = true,
		[firstSpawnSheetFx] = true,
		[spawnHold] = true,
		[spawnVFX] = true,
		[customImage] = true,
		[allyRef] = true,
		[awakeningModal] = true,
		[_awakeningDamage] = true,
		[_awakeningBattle] = true,
		]
	
	
	ktable#15 = [
		[라이스] = true,
		[베일] = true,
		[스카우트] = true,
		[스펙터] = true,
		[크루세이더] = true,
		]
	
	
	ktable#16 = [
		[오딘] = 템플러,
		]
	
	
	;;;; instructions ;;;;
	  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
	  2	[  0]	KSHORT	  1		1	; slot1 = 1
	  3	[  0]	TSETS	  1	0	17	; slot0.VERSION = slot1
	  4	[  0]	TDUP 	  1		16	; slot1 = copy table#k16
	  5	[  0]	TDUP 	  2		15	; slot2 = copy table#k15
	  6	[  0]	TDUP 	  3		14	; slot3 = copy table#k14
	  7	[  0]	FNEW 	  4		13	; N/A:0-0: 3 args, 4 upvalues, 17 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		24	; slot3 = _env["type"]
		  2	[  0]	MOV  	  5		0	; slot5 = slot0
		  3	[  0]	CALL 	  3	2	2	; slot3 = type(slot4)
		  4	[  0]	ISNES	  3		23	; if type ~= "string"
		  5	[  0]	JMP  	  4		6	; 	goto 12
		  6	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  7	[  0]	TGETV	  4	4	0	; slot4 = uv0"unknown"[slot0]
		  8	[  0]	IST  	   		4	; if slot4
		  9	[  0]	JMP  	  5		1	; 	goto 11
		 10	[  0]	MOV  	  4		0	; slot4 = slot0
		 11	[  0]	RET1 	  4		2	; return slot4
		 12	[  0]	ISEQS	  3		22	; if type == "nil"
		 13	[  0]	JMP  	  4		2	; 	goto 16
		 14	[  0]	ISNES	  3		21	; if type ~= "boolean"
		 15	[  0]	JMP  	  4		1	; 	goto 17
		 16	[  0]	RET1 	  0		2	; return slot0
		 17	[  0]	ISNES	  3		20	; if type ~= "number"
		 18	[  0]	JMP  	  4		14	; 	goto 33
		 19	[  0]	ISNEV	  0		0	; if slot0 ~= slot0
		 20	[  0]	JMP  	  4		9	; 	goto 30
		 21	[  0]	GGET 	  4		19	; slot4 = _env["math"]
		 22	[  0]	TGETS	  4	4	18	; slot4 = math.huge
		 23	[  0]	ISEQV	  0		4	; if slot0 == math.huge
		 24	[  0]	JMP  	  4		5	; 	goto 30
		 25	[  0]	GGET 	  4		19	; slot4 = _env["math"]
		 26	[  0]	TGETS	  4	4	18	; slot4 = math.huge
		 27	[  0]	UNM  	  4		4	; slot4 = -math.huge
		 28	[  0]	ISNEV	  0		4	; if slot0 ~= slot4
		 29	[  0]	JMP  	  4		2	; 	goto 32
		 30	[  0]	KPRI 	  4		0	; slot4 = nil
		 31	[  0]	RET1 	  4		2	; return slot4
		 32	[  0]	RET1 	  0		2	; return slot0
		 33	[  0]	ISNES	  3		17	; if type ~= "table"
		 34	[  0]	JMP  	  4		3	; 	goto 38
		 35	[  0]	KSHORT	  4		24	; slot4 = 24
		 36	[  0]	ISGE 	  4		2	; if slot4 >= slot2
		 37	[  0]	JMP  	  4		2	; 	goto 40
		 38	[  0]	KPRI 	  4		0	; slot4 = nil
		 39	[  0]	RET1 	  4		2	; return slot4
		 40	[  0]	TGETV	  4	1	0	; slot4 = slot1[slot0]
		 41	[  0]	ISF  	   		4	; if not slot4
		 42	[  0]	JMP  	  5		2	; 	goto 45
		 43	[  0]	KPRI 	  4		0	; slot4 = nil
		 44	[  0]	RET1 	  4		2	; return slot4
		 45	[  0]	KPRI 	  4		2	; slot4 = true
		 46	[  0]	TSETV	  4	1	0	; slot1[slot0] = slot4
		 47	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 48	[  0]	GGET 	  5		16	; slot5 = _env["pairs"]
		 49	[  0]	MOV  	  7		0	; slot7 = slot0
		 50	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = pairs(slot6)
		 51	[  0]	ISNEXT	  8		47	; Verify ITERN at 99; goto 99
		 52	[  0]	GGET 	 10		24	; slot10 = _env["type"]
		 53	[  0]	MOV  	 12		8	; slot12 = slot8
		 54	[  0]	CALL 	 10	2	2	; slot10 = type(slot11)
		 55	[  0]	ISEQS	 10		20	; if type == "number"
		 56	[  0]	JMP  	 11		2	; 	goto 59
		 57	[  0]	ISNES	 10		23	; if type ~= "string"
		 58	[  0]	JMP  	 11		2	; 	goto 61
		 59	[  0]	KPRI 	 11		1	; slot11 = false
		 60	[  0]	JMP  	 12		1	; 	goto 62
		 61	[  0]	KPRI 	 11		2	; slot11 = true
		 62	[  0]	IST  	   		11	; if slot11
		 63	[  0]	JMP  	 12		15	; 	goto 79
		 64	[  0]	ISNES	 10		23	; if type ~= "string"
		 65	[  0]	JMP  	 12		13	; 	goto 79
		 66	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		 67	[  0]	TGETV	 12	12	8	; slot12 = uv1"unknown"[slot8]
		 68	[  0]	ISEQP	 12		2	; if slot12 == true
		 69	[  0]	JMP  	 12		8	; 	goto 78
		 70	[  0]	MOV  	 14		8	; slot14 = slot8
		 71	[  0]	TGETS	 12	8	15	; slot12 = slot8.match
		 72	[  0]	KSTR 	 15		14	; slot15 = "^_ui"
		 73	[  0]	CALL 	 12	2	3	; slot12 = <unknown table>.match(slot13, slot14)
		 74	[  0]	ISNEP	 12		0	; if <unknown table>.match ~= nil
		 75	[  0]	JMP  	 12		2	; 	goto 78
		 76	[  0]	KPRI 	 11		1	; slot11 = false
		 77	[  0]	JMP  	 12		1	; 	goto 79
		 78	[  0]	KPRI 	 11		2	; slot11 = true
		 79	[  0]	IST  	   		11	; if slot11
		 80	[  0]	JMP  	 12		18	; 	goto 99
		 81	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		 82	[  0]	MOV  	 14		9	; slot14 = slot9
		 83	[  0]	MOV  	 15		1	; slot15 = slot1
		 84	[  0]	ADDVN	 16	2	0	; slot16 = slot2 + 1
		 85	[  0]	CALL 	 12	2	4	; slot12 = uv2"unknown"(slot13, slot14, slot15)
		 86	[  0]	UGET 	 13		0	; slot13 = uv0"unknwon"
		 87	[  0]	TGETV	 13	13	8	; slot13 = uv0"unknown"[slot8]
		 88	[  0]	IST  	   		13	; if slot13
		 89	[  0]	JMP  	 14		1	; 	goto 91
		 90	[  0]	MOV  	 13		8	; slot13 = slot8
		 91	[  0]	ISEQP	 12		0	; if uv2"unknown" == nil
		 92	[  0]	JMP  	 14		6	; 	goto 99
		 93	[  0]	ISEQV	 13		8	; if slot13 == slot8
		 94	[  0]	JMP  	 14		3	; 	goto 98
		 95	[  0]	TGETV	 14	0	13	; slot14 = slot0[slot13]
		 96	[  0]	ISNEP	 14		0	; if slot14 ~= nil
		 97	[  0]	JMP  	 14		1	; 	goto 99
		 98	[  0]	TSETV	 12	4	13	; slot4[slot13] = uv2"unknown"
		 99	[  0]	ITERN	  8	3	3	; slot8, slot9, slot10 = pairs, slot6, slot7; slot8, slot9 = pairs(slot6, slot7)
		100	[  0]	ITERL	  8		-49	; slot7 = slot8; if slot8 != nil goto 52
		101	[  0]	KPRI 	  5		0	; slot5 = nil
		102	[  0]	TSETV	  5	1	0	; slot1[slot0] = slot5
		103	[  0]	TGETS	  5	4	13	; slot5 = slot4.sym
		104	[  0]	ISNES	  5		12	; if <unknown table>.sym ~= "W"
		105	[  0]	JMP  	  5		53	; 	goto 159
		106	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
		107	[  0]	TGETS	  6	4	11	; slot6 = slot4.subclass
		108	[  0]	TGETV	  5	5	6	; slot5 = uv3"unknown"[<unknown table>.subclass]
		109	[  0]	IST  	   		5	; if slot5
		110	[  0]	JMP  	  6		10	; 	goto 121
		111	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
		112	[  0]	TGETS	  6	4	10	; slot6 = slot4.subclassName
		113	[  0]	TGETV	  5	5	6	; slot5 = uv3"unknown"[<unknown table>.subclassName]
		114	[  0]	IST  	   		5	; if slot5
		115	[  0]	JMP  	  6		5	; 	goto 121
		116	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
		117	[  0]	TGETS	  6	4	9	; slot6 = slot4.subclassKey
		118	[  0]	TGETV	  5	5	6	; slot5 = uv3"unknown"[<unknown table>.subclassKey]
		119	[  0]	ISF  	   		5	; if not slot5
		120	[  0]	JMP  	  6		38	; 	goto 159
		121	[  0]	GGET 	  5		8	; slot5 = _env["tonumber"]
		122	[  0]	TGETS	  7	4	7	; slot7 = slot4.rank
		123	[  0]	IST  	   		7	; if <unknown table>.rank
		124	[  0]	JMP  	  8		4	; 	goto 129
		125	[  0]	TGETS	  7	4	6	; slot7 = slot4.star
		126	[  0]	IST  	   		7	; if <unknown table>.star
		127	[  0]	JMP  	  8		1	; 	goto 129
		128	[  0]	KSHORT	  7		1	; slot7 = 1
		129	[  0]	CALL 	  5	2	2	; slot5 = tonumber(<unknown table>.subclassKey)
		130	[  0]	IST  	   		5	; if tonumber
		131	[  0]	JMP  	  6		1	; 	goto 133
		132	[  0]	KSHORT	  5		1	; slot5 = 1
		133	[  0]	KSHORT	  6		3	; slot6 = 3
		134	[  0]	ISGT 	  6		5	; if slot6 > slot5
		135	[  0]	JMP  	  6		2	; 	goto 138
		136	[  0]	KSTR 	  6		5	; slot6 = "MiniSwordMan03"
		137	[  0]	JMP  	  7		6	; 	goto 144
		138	[  0]	KSHORT	  6		2	; slot6 = 2
		139	[  0]	ISGT 	  6		5	; if slot6 > slot5
		140	[  0]	JMP  	  6		2	; 	goto 143
		141	[  0]	KSTR 	  6		4	; slot6 = "MiniSwordMan02"
		142	[  0]	JMP  	  7		1	; 	goto 144
		143	[  0]	KSTR 	  6		3	; slot6 = "MiniSwordMan"
		144	[  0]	MOV  	  7		6	; slot7 = slot6
		145	[  0]	TSETS	  6	4	9	; slot4.subclassKey = slot6
		146	[  0]	TSETS	  7	4	11	; slot4.subclass = slot7
		147	[  0]	KSHORT	  7		3	; slot7 = 3
		148	[  0]	ISGT 	  7		5	; if slot7 > slot5
		149	[  0]	JMP  	  7		2	; 	goto 152
		150	[  0]	KSTR 	  7		2	; slot7 = "기사"
		151	[  0]	JMP  	  8		6	; 	goto 158
		152	[  0]	KSHORT	  7		2	; slot7 = 2
		153	[  0]	ISGT 	  7		5	; if slot7 > slot5
		154	[  0]	JMP  	  7		2	; 	goto 157
		155	[  0]	KSTR 	  7		1	; slot7 = "병사"
		156	[  0]	JMP  	  8		1	; 	goto 158
		157	[  0]	KSTR 	  7		0	; slot7 = "전사"
		158	[  0]	TSETS	  7	4	10	; slot4.subclassName = slot7
		159	[  0]	RET1 	  4		2	; return slot4
	  8	[  0]	FNEW 	  5		11	; N/A:0-0: 1 args, 1 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		  4	[  0]	KSHORT	  5		0	; slot5 = 0
		  5	[  0]	CALLT	  1		4	; return uv0"unknown"(slot2, slot3, slot4)
	  9	[  0]	TSETS	  5	0	12	; slot0.copySerializable = slot5
	 10	[  0]	FNEW 	  5		9	; N/A:0-0: 1 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		ktable#5 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		5	; 	goto 8
		  3	[  0]	GGET 	  1		12	; slot1 = _env["type"]
		  4	[  0]	TGETS	  3	0	11	; slot3 = slot0._itemOffers
		  5	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  6	[  0]	ISEQS	  1		10	; if slot1 == "table"
		  7	[  0]	JMP  	  1		2	; 	goto 10
		  8	[  0]	KPRI 	  1		0	; slot1 = nil
		  9	[  0]	RET1 	  1		2	; return slot1
		 10	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		 11	[  0]	GGET 	  2		9	; slot2 = _env["pairs"]
		 12	[  0]	TGETS	  4	0	11	; slot4 = slot0._itemOffers
		 13	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = pairs(<unknown table>._itemOffers)
		 14	[  0]	ISNEXT	  5		15	; Verify ITERN at 30; goto 30
		 15	[  0]	GGET 	  7		12	; slot7 = _env["type"]
		 16	[  0]	MOV  	  9		5	; slot9 = slot5
		 17	[  0]	CALL 	  7	2	2	; slot7 = type(slot8)
		 18	[  0]	ISNES	  7		8	; if type ~= "number"
		 19	[  0]	JMP  	  7		10	; 	goto 30
		 20	[  0]	GGET 	  7		12	; slot7 = _env["type"]
		 21	[  0]	MOV  	  9		6	; slot9 = slot6
		 22	[  0]	CALL 	  7	2	2	; slot7 = type(slot8)
		 23	[  0]	ISNES	  7		10	; if type ~= "table"
		 24	[  0]	JMP  	  7		5	; 	goto 30
		 25	[  0]	TGETS	  7	6	7	; slot7 = slot6.id
		 26	[  0]	IST  	   		7	; if <unknown table>.id
		 27	[  0]	JMP  	  8		1	; 	goto 29
		 28	[  0]	TGETS	  7	6	6	; slot7 = slot6.key
		 29	[  0]	TSETV	  7	1	5	; slot1[slot5] = <unknown table>.key
		 30	[  0]	ITERN	  5	3	3	; slot5, slot6, slot7 = slot2, <unknown table>._itemOffers, <unknown table>._itemOffers; slot5, slot6 = slot2(<unknown table>._itemOffers, <unknown table>._itemOffers)
		 31	[  0]	ITERL	  5		-17	; <unknown table>._itemOffers = slot5; if slot5 != nil goto 15
		 32	[  0]	TDUP 	  2		5	; slot2 = copy table#k5
		 33	[  0]	TSETS	  1	2	4	; slot2.offers = slot1
		 34	[  0]	TGETS	  3	0	3	; slot3 = slot0._itemOfferCycleId
		 35	[  0]	TSETS	  3	2	2	; slot2.cycleId = <unknown table>._itemOfferCycleId
		 36	[  0]	TGETS	  3	0	1	; slot3 = slot0._itemRerollCost
		 37	[  0]	TSETS	  3	2	0	; slot2.rerollCost = <unknown table>._itemRerollCost
		 38	[  0]	RET1 	  2		2	; return slot2
	 11	[  0]	TSETS	  5	0	10	; slot0.captureItemShop = slot5
	 12	[  0]	FNEW 	  5		7	; N/A:0-0: 2 args, 0 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KNIL 	  2		4	; slot2, slot3, slot4 = nil
		  2	[  0]	TSETS	  4	0	14	; slot0._itemRerollCost = slot4
		  3	[  0]	TSETS	  3	0	15	; slot0._itemOfferCycleId = slot3
		  4	[  0]	TSETS	  2	0	16	; slot0._itemOffers = slot2
		  5	[  0]	GGET 	  2		13	; slot2 = _env["type"]
		  6	[  0]	MOV  	  4		1	; slot4 = slot1
		  7	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  8	[  0]	ISNES	  2		12	; if slot2 ~= "table"
		  9	[  0]	JMP  	  2		5	; 	goto 15
		 10	[  0]	GGET 	  2		13	; slot2 = _env["type"]
		 11	[  0]	TGETS	  4	1	11	; slot4 = slot1.offers
		 12	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		 13	[  0]	ISEQS	  2		12	; if slot2 == "table"
		 14	[  0]	JMP  	  2		1	; 	goto 16
		 15	[  0]	RET0 	  0		1	; return
		 16	[  0]	GGET 	  2		10	; slot2 = _env["require"]
		 17	[  0]	KSTR 	  4		9	; slot4 = "src.game.item"
		 18	[  0]	CALL 	  2	2	2	; slot2 = require(slot3)
		 19	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 20	[  0]	GGET 	  4		8	; slot4 = _env["pairs"]
		 21	[  0]	TGETS	  6	1	11	; slot6 = slot1.offers
		 22	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = pairs(slot5)
		 23	[  0]	ISNEXT	  7		21	; Verify ITERN at 45; goto 45
		 24	[  0]	GGET 	  9		13	; slot9 = _env["type"]
		 25	[  0]	MOV  	 11		7	; slot11 = slot7
		 26	[  0]	CALL 	  9	2	2	; slot9 = type(slot10)
		 27	[  0]	ISNES	  9		7	; if type ~= "number"
		 28	[  0]	JMP  	  9		16	; 	goto 45
		 29	[  0]	KSHORT	  9		1	; slot9 = 1
		 30	[  0]	ISGT 	  9		7	; if slot9 > slot7
		 31	[  0]	JMP  	  9		13	; 	goto 45
		 32	[  0]	KSHORT	  9		3	; slot9 = 3
		 33	[  0]	ISGT 	  7		9	; if slot7 > slot9
		 34	[  0]	JMP  	  9		10	; 	goto 45
		 35	[  0]	GGET 	  9		6	; slot9 = _env["math"]
		 36	[  0]	TGETS	  9	9	5	; slot9 = math.floor
		 37	[  0]	MOV  	 11		7	; slot11 = slot7
		 38	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		 39	[  0]	ISNEV	  7		9	; if slot7 ~= math.floor
		 40	[  0]	JMP  	  9		4	; 	goto 45
		 41	[  0]	TGETS	  9	2	4	; slot9 = slot2.getById
		 42	[  0]	MOV  	 11		8	; slot11 = slot8
		 43	[  0]	CALL 	  9	2	2	; slot9 = <unknown table>.getById(slot10)
		 44	[  0]	TSETV	  9	3	7	; slot3[slot7] = <unknown table>.getById
		 45	[  0]	ITERN	  7	3	3	; slot7, slot8, slot9 = pairs, slot5, <unknown table>.offers; slot7, slot8 = pairs(slot5, <unknown table>.offers)
		 46	[  0]	ITERL	  7		-23	; <unknown table>.offers = slot7; if slot7 != nil goto 24
		 47	[  0]	TSETS	  3	0	16	; slot0._itemOffers = slot3
		 48	[  0]	GGET 	  4		3	; slot4 = _env["tonumber"]
		 49	[  0]	TGETS	  6	1	2	; slot6 = slot1.cycleId
		 50	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		 51	[  0]	GGET 	  5		3	; slot5 = _env["tonumber"]
		 52	[  0]	TGETS	  7	1	1	; slot7 = slot1.rerollCost
		 53	[  0]	CALL 	  5	2	2	; slot5 = tonumber(<unknown table>.cycleId)
		 54	[  0]	ISF  	   		4	; if not tonumber
		 55	[  0]	JMP  	  6		10	; 	goto 66
		 56	[  0]	GGET 	  6		6	; slot6 = _env["math"]
		 57	[  0]	TGETS	  6	6	0	; slot6 = math.max
		 58	[  0]	KSHORT	  8		0	; slot8 = 0
		 59	[  0]	GGET 	  9		6	; slot9 = _env["math"]
		 60	[  0]	TGETS	  9	9	5	; slot9 = math.floor
		 61	[  0]	MOV  	 11		4	; slot11 = tonumber
		 62	[  0]	CALL 	  9	0	2	; MULTRES = math.floor(slot10)
		 63	[  0]	CALLM	  6	2	1	; slot6 = math.max(<unknown table>.rerollCost, ...MULTRES)
		 64	[  0]	IST  	   		6	; if math.max
		 65	[  0]	JMP  	  7		1	; 	goto 67
		 66	[  0]	KPRI 	  6		0	; slot6 = nil
		 67	[  0]	TSETS	  6	0	15	; slot0._itemOfferCycleId = slot6
		 68	[  0]	ISF  	   		5	; if not tonumber
		 69	[  0]	JMP  	  6		10	; 	goto 80
		 70	[  0]	GGET 	  6		6	; slot6 = _env["math"]
		 71	[  0]	TGETS	  6	6	0	; slot6 = math.max
		 72	[  0]	KSHORT	  8		0	; slot8 = 0
		 73	[  0]	GGET 	  9		6	; slot9 = _env["math"]
		 74	[  0]	TGETS	  9	9	5	; slot9 = math.floor
		 75	[  0]	MOV  	 11		5	; slot11 = tonumber
		 76	[  0]	CALL 	  9	0	2	; MULTRES = math.floor(slot10)
		 77	[  0]	CALLM	  6	2	1	; slot6 = math.max(<unknown table>.rerollCost, ...MULTRES)
		 78	[  0]	IST  	   		6	; if math.max
		 79	[  0]	JMP  	  7		1	; 	goto 81
		 80	[  0]	KPRI 	  6		0	; slot6 = nil
		 81	[  0]	TSETS	  6	0	14	; slot0._itemRerollCost = slot6
		 82	[  0]	RET0 	  0		1	; return
	 13	[  0]	TSETS	  5	0	8	; slot0.restoreItemShop = slot5
	 14	[  0]	FNEW 	  5		6	; N/A:0-0: 4 args, 0 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  4		4	; slot4 = _env["tonumber"]
		  2	[  0]	MOV  	  6		0	; slot6 = slot0
		  3	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		  4	[  0]	IST  	   		4	; if tonumber
		  5	[  0]	JMP  	  5		1	; 	goto 7
		  6	[  0]	RET1 	  3		2	; return slot3
		  7	[  0]	GGET 	  5		3	; slot5 = _env["math"]
		  8	[  0]	TGETS	  5	5	2	; slot5 = math.floor
		  9	[  0]	MOV  	  7		4	; slot7 = tonumber
		 10	[  0]	CALL 	  5	2	2	; slot5 = math.floor(slot6)
		 11	[  0]	MOV  	  4		5	; slot4 = math.floor
		 12	[  0]	ISF  	   		1	; if not slot1
		 13	[  0]	JMP  	  5		6	; 	goto 20
		 14	[  0]	GGET 	  5		3	; slot5 = _env["math"]
		 15	[  0]	TGETS	  5	5	1	; slot5 = math.max
		 16	[  0]	MOV  	  7		1	; slot7 = slot1
		 17	[  0]	MOV  	  8		4	; slot8 = math.floor
		 18	[  0]	CALL 	  5	2	3	; slot5 = math.max(slot6, slot7)
		 19	[  0]	MOV  	  4		5	; slot4 = math.max
		 20	[  0]	ISF  	   		2	; if not slot2
		 21	[  0]	JMP  	  5		6	; 	goto 28
		 22	[  0]	GGET 	  5		3	; slot5 = _env["math"]
		 23	[  0]	TGETS	  5	5	0	; slot5 = math.min
		 24	[  0]	MOV  	  7		2	; slot7 = slot2
		 25	[  0]	MOV  	  8		4	; slot8 = math.max
		 26	[  0]	CALL 	  5	2	3	; slot5 = math.min(slot6, slot7)
		 27	[  0]	MOV  	  4		5	; slot4 = math.min
		 28	[  0]	RET1 	  4		2	; return math.min
	 15	[  0]	FNEW 	  6		4	; N/A:0-0: 4 args, 2 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		ktable#9 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  2	[  0]	MOV  	  6		0	; slot6 = slot0
		  3	[  0]	KSHORT	  7		1	; slot7 = 1
		  4	[  0]	KNIL 	  8		9	; slot8, slot9 = nil
		  5	[  0]	CALL 	  4	2	5	; slot4 = uv0"unknown"(slot5, slot6, slot7, slot8)
		  6	[  0]	IST  	   		4	; if slot4
		  7	[  0]	JMP  	  5		2	; 	goto 10
		  8	[  0]	KPRI 	  5		0	; slot5 = nil
		  9	[  0]	RET1 	  5		2	; return slot5
		 10	[  0]	TDUP 	  5		9	; slot5 = copy table#k9
		 11	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 12	[  0]	TGETS	  6	6	10	; slot6 = uv1"unknown".VERSION
		 13	[  0]	TSETS	  6	5	8	; slot5.version = uv1"unknown".VERSION
		 14	[  0]	TSETS	  4	5	7	; slot5.stage = slot4
		 15	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 16	[  0]	MOV  	  8		1	; slot8 = slot1
		 17	[  0]	KSHORT	  9		1	; slot9 = 1
		 18	[  0]	KSHORT	 10		3	; slot10 = 3
		 19	[  0]	KSHORT	 11		1	; slot11 = 1
		 20	[  0]	CALL 	  6	2	5	; slot6 = uv0"unknown"(slot7, slot8, slot9, slot10)
		 21	[  0]	TSETS	  6	5	6	; slot5.difficulty = uv0"unknown"
		 22	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 23	[  0]	MOV  	  8		2	; slot8 = slot2
		 24	[  0]	KSHORT	  9		1	; slot9 = 1
		 25	[  0]	KPRI 	 10		0	; slot10 = nil
		 26	[  0]	KSHORT	 11		1	; slot11 = 1
		 27	[  0]	CALL 	  6	2	5	; slot6 = uv0"unknown"(slot7, slot8, slot9, slot10)
		 28	[  0]	TSETS	  6	5	5	; slot5.wave = uv0"unknown"
		 29	[  0]	GGET 	  6		4	; slot6 = _env["os"]
		 30	[  0]	ISF  	   		6	; if not os
		 31	[  0]	JMP  	  7		9	; 	goto 41
		 32	[  0]	GGET 	  6		4	; slot6 = _env["os"]
		 33	[  0]	TGETS	  6	6	3	; slot6 = os.time
		 34	[  0]	ISF  	   		6	; if not os.time
		 35	[  0]	JMP  	  7		5	; 	goto 41
		 36	[  0]	GGET 	  6		4	; slot6 = _env["os"]
		 37	[  0]	TGETS	  6	6	3	; slot6 = os.time
		 38	[  0]	CALL 	  6	2	1	; slot6 = os.time()
		 39	[  0]	IST  	   		6	; if os.time
		 40	[  0]	JMP  	  7		1	; 	goto 42
		 41	[  0]	KSHORT	  6		0	; slot6 = 0
		 42	[  0]	TSETS	  6	5	2	; slot5.savedAt = slot6
		 43	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 44	[  0]	TGETS	  6	6	1	; slot6 = uv1"unknown".copySerializable
		 45	[  0]	ISTC 	  8		3	; slot8 = slot3; if slot3
		 46	[  0]	JMP  	  8		1	; 	goto 48
		 47	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
		 48	[  0]	CALL 	  6	2	2	; slot6 = uv1"unknown".copySerializable(slot7)
		 49	[  0]	TSETS	  6	5	0	; slot5.state = uv1"unknown".copySerializable
		 50	[  0]	RET1 	  5		2	; return slot5
	 16	[  0]	TSETS	  6	0	5	; slot0.make = slot6
	 17	[  0]	FNEW 	  6		2	; N/A:0-0: 2 args, 2 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		ktable#3 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		10	; slot2 = _env["type"]
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  4	[  0]	ISEQS	  2		9	; if slot2 == "table"
		  5	[  0]	JMP  	  2		2	; 	goto 8
		  6	[  0]	KPRI 	  2		0	; slot2 = nil
		  7	[  0]	RET1 	  2		2	; return slot2
		  8	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  9	[  0]	TGETS	  4	0	8	; slot4 = slot0.stage
		 10	[  0]	IST  	   		4	; if <unknown table>.stage
		 11	[  0]	JMP  	  5		1	; 	goto 13
		 12	[  0]	MOV  	  4		1	; slot4 = slot1
		 13	[  0]	KSHORT	  5		1	; slot5 = 1
		 14	[  0]	KNIL 	  6		7	; slot6, slot7 = nil
		 15	[  0]	CALL 	  2	2	5	; slot2 = uv0"unknown"(slot3, slot4, slot5, slot6)
		 16	[  0]	IST  	   		2	; if slot2
		 17	[  0]	JMP  	  3		2	; 	goto 20
		 18	[  0]	KPRI 	  3		0	; slot3 = nil
		 19	[  0]	RET1 	  3		2	; return slot3
		 20	[  0]	ISF  	   		1	; if not slot1
		 21	[  0]	JMP  	  3		10	; 	goto 32
		 22	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 23	[  0]	MOV  	  5		1	; slot5 = slot1
		 24	[  0]	KSHORT	  6		1	; slot6 = 1
		 25	[  0]	KPRI 	  7		0	; slot7 = nil
		 26	[  0]	MOV  	  8		2	; slot8 = slot2
		 27	[  0]	CALL 	  3	2	5	; slot3 = uv0"unknown"(slot4, slot5, slot6, slot7)
		 28	[  0]	ISEQV	  2		3	; if slot2 == slot3
		 29	[  0]	JMP  	  3		2	; 	goto 32
		 30	[  0]	KPRI 	  3		0	; slot3 = nil
		 31	[  0]	RET1 	  3		2	; return slot3
		 32	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 33	[  0]	TGETS	  3	3	7	; slot3 = uv1"unknown".copySerializable
		 34	[  0]	TGETS	  5	0	6	; slot5 = slot0.state
		 35	[  0]	IST  	   		5	; if <unknown table>.state
		 36	[  0]	JMP  	  6		1	; 	goto 38
		 37	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 38	[  0]	CALL 	  3	2	2	; slot3 = uv1"unknown".copySerializable(slot4)
		 39	[  0]	GGET 	  4		10	; slot4 = _env["type"]
		 40	[  0]	MOV  	  6		3	; slot6 = uv1"unknown".copySerializable
		 41	[  0]	CALL 	  4	2	2	; slot4 = type(slot5)
		 42	[  0]	ISEQS	  4		9	; if type == "table"
		 43	[  0]	JMP  	  4		2	; 	goto 46
		 44	[  0]	KPRI 	  4		0	; slot4 = nil
		 45	[  0]	RET1 	  4		2	; return slot4
		 46	[  0]	TDUP 	  4		3	; slot4 = copy table#k3
		 47	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 48	[  0]	TGETS	  7	0	5	; slot7 = slot0.version
		 49	[  0]	KSHORT	  8		1	; slot8 = 1
		 50	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 51	[  0]	TGETS	  9	9	4	; slot9 = uv1"unknown".VERSION
		 52	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
		 53	[  0]	TGETS	 10	10	4	; slot10 = uv1"unknown".VERSION
		 54	[  0]	CALL 	  5	2	5	; slot5 = uv0"unknown"(uv1"unknown".copySerializable, <unknown table>.version, slot8, uv1"unknown".VERSION)
		 55	[  0]	TSETS	  5	4	5	; slot4.version = slot5
		 56	[  0]	TSETS	  2	4	8	; slot4.stage = slot2
		 57	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 58	[  0]	TGETS	  7	0	2	; slot7 = slot0.difficulty
		 59	[  0]	KSHORT	  8		1	; slot8 = 1
		 60	[  0]	KSHORT	  9		3	; slot9 = 3
		 61	[  0]	KSHORT	 10		1	; slot10 = 1
		 62	[  0]	CALL 	  5	2	5	; slot5 = uv0"unknown"(uv1"unknown".copySerializable, <unknown table>.difficulty, slot8, slot9)
		 63	[  0]	TSETS	  5	4	2	; slot4.difficulty = slot5
		 64	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 65	[  0]	TGETS	  7	0	1	; slot7 = slot0.wave
		 66	[  0]	KSHORT	  8		1	; slot8 = 1
		 67	[  0]	KPRI 	  9		0	; slot9 = nil
		 68	[  0]	KSHORT	 10		1	; slot10 = 1
		 69	[  0]	CALL 	  5	2	5	; slot5 = uv0"unknown"(uv1"unknown".copySerializable, <unknown table>.wave, slot8, slot9)
		 70	[  0]	TSETS	  5	4	1	; slot4.wave = slot5
		 71	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 72	[  0]	TGETS	  7	0	0	; slot7 = slot0.savedAt
		 73	[  0]	KSHORT	  8		0	; slot8 = 0
		 74	[  0]	KPRI 	  9		0	; slot9 = nil
		 75	[  0]	KSHORT	 10		0	; slot10 = 0
		 76	[  0]	CALL 	  5	2	5	; slot5 = uv0"unknown"(uv1"unknown".copySerializable, <unknown table>.savedAt, slot8, slot9)
		 77	[  0]	TSETS	  5	4	0	; slot4.savedAt = slot5
		 78	[  0]	TSETS	  3	4	6	; slot4.state = uv1"unknown".copySerializable
		 79	[  0]	RET1 	  4		2	; return slot4
	 18	[  0]	TSETS	  6	0	3	; slot0.normalizeSnapshot = slot6
	 19	[  0]	FNEW 	  6		0	; N/A:0-0: 1 args, 2 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  2	[  0]	GGET 	  2		3	; slot2 = _env["type"]
		  3	[  0]	MOV  	  4		0	; slot4 = slot0
		  4	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  5	[  0]	ISEQS	  2		2	; if slot2 == "table"
		  6	[  0]	JMP  	  2		1	; 	goto 8
		  7	[  0]	RET1 	  1		2	; return slot1
		  8	[  0]	GGET 	  2		1	; slot2 = _env["pairs"]
		  9	[  0]	MOV  	  4		0	; slot4 = slot0
		 10	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = pairs(slot3)
		 11	[  0]	ISNEXT	  5		15	; Verify ITERN at 27; goto 27
		 12	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 13	[  0]	MOV  	  9		5	; slot9 = slot5
		 14	[  0]	KSHORT	 10		1	; slot10 = 1
		 15	[  0]	KNIL 	 11		12	; slot11, slot12 = nil
		 16	[  0]	CALL 	  7	2	5	; slot7 = uv0"unknown"(slot8, slot9, slot10, slot11)
		 17	[  0]	ISF  	   		7	; if not uv0"unknown"
		 18	[  0]	JMP  	  8		8	; 	goto 27
		 19	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 20	[  0]	TGETS	  8	8	0	; slot8 = uv1"unknown".normalizeSnapshot
		 21	[  0]	MOV  	 10		6	; slot10 = slot6
		 22	[  0]	MOV  	 11		7	; slot11 = uv0"unknown"
		 23	[  0]	CALL 	  8	2	3	; slot8 = uv1"unknown".normalizeSnapshot(slot9, slot10)
		 24	[  0]	ISF  	   		8	; if not uv1"unknown".normalizeSnapshot
		 25	[  0]	JMP  	  9		1	; 	goto 27
		 26	[  0]	TSETV	  8	1	7	; slot1[uv0"unknown"] = uv1"unknown".normalizeSnapshot
		 27	[  0]	ITERN	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5, slot6 = slot2(slot3, slot4)
		 28	[  0]	ITERL	  5		-17	; slot4 = slot5; if slot5 != nil goto 12
		 29	[  0]	RET1 	  1		2	; return slot1
	 20	[  0]	TSETS	  6	0	1	; slot0.normalizeSlots = slot6
	 21	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 22
	 22	[  0]	RET1 	  0		2	; return slot0
	
