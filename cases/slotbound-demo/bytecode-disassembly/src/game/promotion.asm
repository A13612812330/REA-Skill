;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\game\promotion.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 5 slots
	;;;; constant tables ;;;;
	ktable#12 = [
		#1: 균형이 흔들린다,
		#2: 흐름이 변하고 있다,
		#3: 새로운 회로가 열렸다,
		#4: 기운이 응축된다,
		#5: 형태가 바뀌기 시작한다,
		#6: 기운이 응축된다,
		#7: 조용한 진동이 퍼진다,
		#8: 빛의 결이 달라졌다,
		#9: 다른 층위가 감지된다,
		#10: 정지된 파동이 깨어난다,
		#11: 계산되지 않은 변화가 다가온다,
		#12: 고요 속에 진동이 남는다,
		#13: 공기가 흔들린다,
		#14: 새로운 패턴이 떠오른다,
		]
	
	
	;;;; instructions ;;;;
	  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
	  2	[  0]	GGET 	  1		16	; slot1 = _env["require"]
	  3	[  0]	KSTR 	  3		15	; slot3 = "src.data.skill"
	  4	[  0]	CALL 	  1	2	2	; slot1 = require(slot2)
	  5	[  0]	GGET 	  2		16	; slot2 = _env["require"]
	  6	[  0]	KSTR 	  4		14	; slot4 = "src.data.faction"
	  7	[  0]	CALL 	  2	2	2	; slot2 = require(slot3)
	  8	[  0]	TDUP 	  3		12	; slot3 = copy table#k12
	  9	[  0]	TSETS	  3	0	13	; slot0.waveMessages = slot3
	 10	[  0]	FNEW 	  3		10	; N/A:0-0: 2 args, 1 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	7	; slot2 = uv0"unknown".waveMessages
		  3	[  0]	ISF  	   		2	; if not uv0"unknown".waveMessages
		  4	[  0]	JMP  	  3		5	; 	goto 10
		  5	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  6	[  0]	TGETS	  2	2	7	; slot2 = uv0"unknown".waveMessages
		  7	[  0]	TGETV	  2	2	0	; slot2 = uv0"unknown".waveMessages[slot0]
		  8	[  0]	IST  	   		2	; if slot2
		  9	[  0]	JMP  	  2		2	; 	goto 12
		 10	[  0]	KPRI 	  2		0	; slot2 = nil
		 11	[  0]	RET1 	  2		2	; return slot2
		 12	[  0]	GGET 	  2		6	; slot2 = _env["require"]
		 13	[  0]	KSTR 	  4		5	; slot4 = "src.data.language"
		 14	[  0]	CALL 	  2	2	2	; slot2 = require(slot3)
		 15	[  0]	TGETS	  2	2	4	; slot2 = slot2.getText
		 16	[  0]	KSTR 	  4		3	; slot4 = "core_wave_message."
		 17	[  0]	MOV  	  5		0	; slot5 = slot0
		 18	[  0]	CAT  	  4	4	5	; slot4 = slot4 .. slot5
		 19	[  0]	ISTC 	  5		1	; slot5 = slot1; if slot1
		 20	[  0]	JMP  	  5		5	; 	goto 26
		 21	[  0]	GGET 	  5		2	; slot5 = _env["_G"]
		 22	[  0]	TGETS	  5	5	1	; slot5 = _G.currentGameLang
		 23	[  0]	IST  	   		5	; if _G.currentGameLang
		 24	[  0]	JMP  	  6		1	; 	goto 26
		 25	[  0]	KSTR 	  5		0	; slot5 = "ko"
		 26	[  0]	CALLT	  2		3	; return <unknown table>.getText(slot3, slot4)
	 11	[  0]	TSETS	  3	0	11	; slot0.getWaveMessage = slot3
	 12	[  0]	FNEW 	  3		8	; N/A:0-0: 2 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	4	; slot2 = uv0"unknown".waveMessages
		  3	[  0]	IST  	   		2	; if uv0"unknown".waveMessages
		  4	[  0]	JMP  	  3		1	; 	goto 6
		  5	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		  6	[  0]	ISF  	   		2	; if not slot2
		  7	[  0]	JMP  	  3		3	; 	goto 11
		  8	[  0]	LEN  	  3		2	; slot3 = #slot2
		  9	[  0]	ISNEN	  3		0	; if slot3 ~= 0
		 10	[  0]	JMP  	  3		2	; 	goto 13
		 11	[  0]	KPRI 	  3		0	; slot3 = nil
		 12	[  0]	RET1 	  3		2	; return slot3
		 13	[  0]	GGET 	  3		3	; slot3 = _env["love"]
		 14	[  0]	TGETS	  3	3	2	; slot3 = love.math
		 15	[  0]	TGETS	  3	3	1	; slot3 = love.math.random
		 16	[  0]	KSHORT	  5		1	; slot5 = 1
		 17	[  0]	LEN  	  6		2	; slot6 = #slot2
		 18	[  0]	CALL 	  3	2	3	; slot3 = love.math.random(slot4, slot5)
		 19	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 20	[  0]	TGETS	  4	4	0	; slot4 = uv0"unknown".getWaveMessage
		 21	[  0]	MOV  	  6		3	; slot6 = slot3
		 22	[  0]	MOV  	  7		1	; slot7 = slot1
		 23	[  0]	CALL 	  4	2	3	; slot4 = uv0"unknown".getWaveMessage(slot5, slot6)
		 24	[  0]	MOV  	  5		3	; slot5 = slot3
		 25	[  0]	RET  	  4		3	; return uv0"unknown".getWaveMessage, slot5
	 13	[  0]	TSETS	  3	0	9	; slot0.getRandomWaveMessage = slot3
	 14	[  0]	FNEW 	  3		6	; N/A:0-0: 1 args, 0 upvalues, 17 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KSTR 	  1		14	; slot1 = "hp"
		  4	[  0]	UCLO 	  0		111	; nil uvs >= r0; goto 116
		  5	[  0]	TGETS	  1	0	13	; slot1 = slot0.HP_count
		  6	[  0]	IST  	   		1	; if <unknown table>.HP_count
		  7	[  0]	JMP  	  2		1	; 	goto 9
		  8	[  0]	KSHORT	  1		0	; slot1 = 0
		  9	[  0]	TGETS	  2	0	12	; slot2 = slot0.ATK_count
		 10	[  0]	IST  	   		2	; if <unknown table>.ATK_count
		 11	[  0]	JMP  	  3		1	; 	goto 13
		 12	[  0]	KSHORT	  2		0	; slot2 = 0
		 13	[  0]	TGETS	  3	0	11	; slot3 = slot0.ASPD_count
		 14	[  0]	IST  	   		3	; if <unknown table>.ASPD_count
		 15	[  0]	JMP  	  4		1	; 	goto 17
		 16	[  0]	KSHORT	  3		0	; slot3 = 0
		 17	[  0]	KSHORT	  4		2	; slot4 = 2
		 18	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 19	[  0]	ISLE 	  4		1	; if slot4 <= slot1
		 20	[  0]	JMP  	  6		4	; 	goto 25
		 21	[  0]	ISGT 	  2		1	; if slot2 > slot1
		 22	[  0]	JMP  	  6		7	; 	goto 30
		 23	[  0]	ISGT 	  3		1	; if slot3 > slot1
		 24	[  0]	JMP  	  6		5	; 	goto 30
		 25	[  0]	GGET 	  6		10	; slot6 = _env["table"]
		 26	[  0]	TGETS	  6	6	9	; slot6 = table.insert
		 27	[  0]	MOV  	  8		5	; slot8 = slot5
		 28	[  0]	KSTR 	  9		14	; slot9 = "hp"
		 29	[  0]	CALL 	  6	1	3	;  = table.insert(slot7, slot8)
		 30	[  0]	ISLE 	  4		2	; if slot4 <= slot2
		 31	[  0]	JMP  	  6		4	; 	goto 36
		 32	[  0]	ISGT 	  1		2	; if slot1 > slot2
		 33	[  0]	JMP  	  6		7	; 	goto 41
		 34	[  0]	ISGT 	  3		2	; if slot3 > slot2
		 35	[  0]	JMP  	  6		5	; 	goto 41
		 36	[  0]	GGET 	  6		10	; slot6 = _env["table"]
		 37	[  0]	TGETS	  6	6	9	; slot6 = table.insert
		 38	[  0]	MOV  	  8		5	; slot8 = slot5
		 39	[  0]	KSTR 	  9		8	; slot9 = "atk"
		 40	[  0]	CALL 	  6	1	3	;  = table.insert(slot7, slot8)
		 41	[  0]	ISLE 	  4		3	; if slot4 <= slot3
		 42	[  0]	JMP  	  6		4	; 	goto 47
		 43	[  0]	ISGT 	  1		3	; if slot1 > slot3
		 44	[  0]	JMP  	  6		7	; 	goto 52
		 45	[  0]	ISGT 	  2		3	; if slot2 > slot3
		 46	[  0]	JMP  	  6		5	; 	goto 52
		 47	[  0]	GGET 	  6		10	; slot6 = _env["table"]
		 48	[  0]	TGETS	  6	6	9	; slot6 = table.insert
		 49	[  0]	MOV  	  8		5	; slot8 = slot5
		 50	[  0]	KSTR 	  9		7	; slot9 = "aspd"
		 51	[  0]	CALL 	  6	1	3	;  = table.insert(slot7, slot8)
		 52	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		 53	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
		 54	[  0]	GGET 	  8		6	; slot8 = _env["ipairs"]
		 55	[  0]	MOV  	 10		5	; slot10 = slot5
		 56	[  0]	CALL 	  8	4	2	; slot8, slot9, slot10 = ipairs(slot9)
		 57	[  0]	JMP  	 11		10	; 	goto 68
		 58	[  0]	TGETV	 13	6	12	; slot13 = slot6[slot12]
		 59	[  0]	IST  	   		13	; if slot13
		 60	[  0]	JMP  	 13		7	; 	goto 68
		 61	[  0]	KPRI 	 13		2	; slot13 = true
		 62	[  0]	TSETV	 13	6	12	; slot6[slot12] = slot13
		 63	[  0]	GGET 	 13		10	; slot13 = _env["table"]
		 64	[  0]	TGETS	 13	13	9	; slot13 = table.insert
		 65	[  0]	MOV  	 15		7	; slot15 = slot7
		 66	[  0]	MOV  	 16		12	; slot16 = slot12
		 67	[  0]	CALL 	 13	1	3	;  = table.insert(slot14, slot15)
		 68	[  0]	ITERC	 11	3	3	; slot11, slot12, slot13 = ipairs, slot9, slot10; slot11, slot12 = ipairs(slot9, slot10)
		 69	[  0]	ITERL	 11		-12	; slot10 = slot11; if slot11 != nil goto 58
		 70	[  0]	MOV  	  5		7	; slot5 = slot7
		 71	[  0]	LEN  	  6		5	; slot6 = #slot5
		 72	[  0]	ISNEN	  6		0	; if slot6 ~= 1
		 73	[  0]	JMP  	  6		2	; 	goto 76
		 74	[  0]	TGETB	  6	5	1	; slot6 = slot5[1]
		 75	[  0]	UCLO 	  0		41	; nil uvs >= r0; goto 117
		 76	[  0]	FNEW 	  6		5	; N/A:0-0: 1 args, 0 upvalues, 2 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	ISNES	  0		5	; if slot0 ~= "W"
			  2	[  0]	JMP  	  1		3	; 	goto 6
			  3	[  0]	KSTR 	  1		4	; slot1 = "hp"
			  4	[  0]	RET1 	  1		2	; return slot1
			  5	[  0]	JMP  	  1		9	; 	goto 15
			  6	[  0]	ISNES	  0		3	; if slot0 ~= "S"
			  7	[  0]	JMP  	  1		3	; 	goto 11
			  8	[  0]	KSTR 	  1		2	; slot1 = "atk"
			  9	[  0]	RET1 	  1		2	; return slot1
			 10	[  0]	JMP  	  1		4	; 	goto 15
			 11	[  0]	ISNES	  0		1	; if slot0 ~= "A"
			 12	[  0]	JMP  	  1		2	; 	goto 15
			 13	[  0]	KSTR 	  1		0	; slot1 = "aspd"
			 14	[  0]	RET1 	  1		2	; return slot1
			 15	[  0]	KPRI 	  1		0	; slot1 = nil
			 16	[  0]	RET1 	  1		2	; return slot1
		 77	[  0]	MOV  	  7		6	; slot7 = slot6
		 78	[  0]	TGETS	  9	0	4	; slot9 = slot0.lastAbsorbType
		 79	[  0]	CALL 	  7	2	2	; slot7 = slot7(ipairs)
		 80	[  0]	ISF  	   		7	; if not slot7
		 81	[  0]	JMP  	  8		10	; 	goto 92
		 82	[  0]	GGET 	  8		6	; slot8 = _env["ipairs"]
		 83	[  0]	MOV  	 10		5	; slot10 = slot5
		 84	[  0]	CALL 	  8	4	2	; slot8, slot9, slot10 = ipairs(<unknown table>.lastAbsorbType)
		 85	[  0]	JMP  	 11		4	; 	goto 90
		 86	[  0]	ISNEV	 12		7	; if slot12 ~= slot7
		 87	[  0]	JMP  	 13		2	; 	goto 90
		 88	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 89
		 89	[  0]	RET1 	 12		2	; return slot12
		 90	[  0]	ITERC	 11	3	3	; slot11, slot12, slot13 = ipairs, <unknown table>.lastAbsorbType, slot10; slot11, slot12 = ipairs(<unknown table>.lastAbsorbType, slot10)
		 91	[  0]	ITERL	 11		-6	; slot10 = slot11; if slot11 != nil goto 86
		 92	[  0]	MOV  	  8		6	; slot8 = slot6
		 93	[  0]	TGETS	 10	0	3	; slot10 = slot0.sym
		 94	[  0]	CALL 	  8	2	2	; slot8 = slot8(<unknown table>.lastAbsorbType)
		 95	[  0]	ISF  	   		8	; if not slot8
		 96	[  0]	JMP  	  9		10	; 	goto 107
		 97	[  0]	GGET 	  9		6	; slot9 = _env["ipairs"]
		 98	[  0]	MOV  	 11		5	; slot11 = slot5
		 99	[  0]	CALL 	  9	4	2	; slot9, slot10, slot11 = ipairs(<unknown table>.sym)
		100	[  0]	JMP  	 12		4	; 	goto 105
		101	[  0]	ISNEV	 13		8	; if table.insert ~= slot8
		102	[  0]	JMP  	 14		2	; 	goto 105
		103	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 104
		104	[  0]	RET1 	 13		2	; return table.insert
		105	[  0]	ITERC	 12	3	3	; slot12, slot13, slot14 = ipairs, <unknown table>.sym, slot11; slot12, slot13 = ipairs(<unknown table>.sym, slot11)
		106	[  0]	ITERL	 12		-6	; slot11 = slot12; if slot12 != nil goto 101
		107	[  0]	GGET 	  9		2	; slot9 = _env["love"]
		108	[  0]	TGETS	  9	9	1	; slot9 = love.math
		109	[  0]	TGETS	  9	9	0	; slot9 = love.math.random
		110	[  0]	KSHORT	 11		1	; slot11 = 1
		111	[  0]	LEN  	 12		5	; slot12 = #slot5
		112	[  0]	CALL 	  9	2	3	; slot9 = love.math.random(<unknown table>.sym, slot11)
		113	[  0]	TGETV	 10	5	9	; slot10 = slot5[love.math.random]
		114	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 115
		115	[  0]	RET1 	 10		2	; return slot10
		116	[  0]	RET1 	  1		2	; return slot1
		117	[  0]	RET1 	  6		2	; return slot6
	 15	[  0]	TSETS	  3	0	7	; slot0.resolveDominantAxis = slot3
	 16	[  0]	FNEW 	  3		4	; N/A:0-0: 1 args, 0 upvalues, 20 slots
		
		;;;; constant tables ;;;;
		ktable#7 = [
			[id] = 야수기사,
			[name] = 야수기사,
			]
		
		
		ktable#8 = [
			[id] = 해골 투사,
			[name] = 해골 투사,
			]
		
		
		ktable#9 = [
			[id] = 엘프기사,
			[name] = 엘프기사,
			]
		
		
		ktable#10 = [
			[id] = 사신기사,
			[name] = 사신기사,
			]
		
		
		ktable#11 = [
			[id] = 화염기사,
			[name] = 화염기사,
			]
		
		
		ktable#12 = [
			[id] = 공허기사,
			[name] = 공허기사,
			]
		
		
		ktable#13 = [
			[id] = 성기사,
			[name] = 성기사,
			]
		
		
		ktable#14 = [
			[id] = 암기사,
			[name] = 암기사,
			]
		
		
		ktable#15 = [
			[id] = MiniSwordMan03,
			[name] = 기사,
			]
		
		
		ktable#16 = [
			[id] = 야수기사,
			[name] = 야수기사,
			]
		
		
		ktable#17 = [
			[id] = 해골 투사,
			[name] = 해골 투사,
			]
		
		
		ktable#18 = [
			[id] = 사신기사,
			[name] = 사신기사,
			]
		
		
		ktable#19 = [
			[id] = 화염기사,
			[name] = 화염기사,
			]
		
		
		ktable#20 = [
			]
		
		
		ktable#21 = [
			[id] = 성기사,
			[name] = 성기사,
			]
		
		
		ktable#22 = [
			[id] = 암기사,
			[name] = 암기사,
			]
		
		
		ktable#24 = [
			[id] = 엘프기사,
			[name] = 엘프기사,
			]
		
		
		ktable#26 = [
			[id] = 공허기사,
			[name] = 공허기사,
			]
		
		
		ktable#28 = [
			]
		
		
		ktable#29 = [
			[id] = MiniSwordMan03,
			[name] = 기사,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TDUP 	  1		28	; slot1 = copy table#k28
		  2	[  0]	TDUP 	  2		29	; slot2 = copy table#k29
		  3	[  0]	TSETS	  2	1	27	; slot1.hp = slot2
		  4	[  0]	TDUP 	  2		26	; slot2 = copy table#k26
		  5	[  0]	TSETS	  2	1	25	; slot1.atk = slot2
		  6	[  0]	TDUP 	  2		24	; slot2 = copy table#k24
		  7	[  0]	TSETS	  2	1	23	; slot1.aspd = slot2
		  8	[  0]	TDUP 	  2		20	; slot2 = copy table#k20
		  9	[  0]	TNEW 	  3		3	; slot3 = new table( array: 3, dict: 1)
		 10	[  0]	TDUP 	  4		22	; slot4 = copy table#k22
		 11	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
		 12	[  0]	TDUP 	  4		21	; slot4 = copy table#k21
		 13	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
		 14	[  0]	TSETS	  3	2	27	; slot2.hp = slot3
		 15	[  0]	TNEW 	  3		3	; slot3 = new table( array: 3, dict: 1)
		 16	[  0]	TDUP 	  4		19	; slot4 = copy table#k19
		 17	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
		 18	[  0]	TDUP 	  4		18	; slot4 = copy table#k18
		 19	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
		 20	[  0]	TSETS	  3	2	25	; slot2.atk = slot3
		 21	[  0]	TNEW 	  3		3	; slot3 = new table( array: 3, dict: 1)
		 22	[  0]	TDUP 	  4		17	; slot4 = copy table#k17
		 23	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
		 24	[  0]	TDUP 	  4		16	; slot4 = copy table#k16
		 25	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
		 26	[  0]	TSETS	  3	2	23	; slot2.aspd = slot3
		 27	[  0]	TNEW 	  3		10	; slot3 = new table( array: 10, dict: 1)
		 28	[  0]	TDUP 	  4		15	; slot4 = copy table#k15
		 29	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
		 30	[  0]	TDUP 	  4		14	; slot4 = copy table#k14
		 31	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
		 32	[  0]	TDUP 	  4		13	; slot4 = copy table#k13
		 33	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
		 34	[  0]	TDUP 	  4		12	; slot4 = copy table#k12
		 35	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
		 36	[  0]	TDUP 	  4		11	; slot4 = copy table#k11
		 37	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
		 38	[  0]	TDUP 	  4		10	; slot4 = copy table#k10
		 39	[  0]	TSETB	  4	3	6	; slot3[6] = slot4
		 40	[  0]	TDUP 	  4		9	; slot4 = copy table#k9
		 41	[  0]	TSETB	  4	3	7	; slot3[7] = slot4
		 42	[  0]	TDUP 	  4		8	; slot4 = copy table#k8
		 43	[  0]	TSETB	  4	3	8	; slot3[8] = slot4
		 44	[  0]	TDUP 	  4		7	; slot4 = copy table#k7
		 45	[  0]	TSETB	  4	3	9	; slot3[9] = slot4
		 46	[  0]	TGETV	  4	1	0	; slot4 = slot1[slot0]
		 47	[  0]	IST  	   		4	; if slot4
		 48	[  0]	JMP  	  5		1	; 	goto 50
		 49	[  0]	TGETS	  4	1	27	; slot4 = slot1.hp
		 50	[  0]	TGETV	  5	2	0	; slot5 = slot2[slot0]
		 51	[  0]	IST  	   		5	; if slot5
		 52	[  0]	JMP  	  6		1	; 	goto 54
		 53	[  0]	TGETS	  5	2	27	; slot5 = slot2.hp
		 54	[  0]	MOV  	  6		4	; slot6 = <unknown table>.hp
		 55	[  0]	GGET 	  7		6	; slot7 = _env["love"]
		 56	[  0]	TGETS	  7	7	5	; slot7 = love.math
		 57	[  0]	TGETS	  7	7	4	; slot7 = love.math.random
		 58	[  0]	KSHORT	  9		1	; slot9 = 1
		 59	[  0]	LEN  	 10		5	; slot10 = #<unknown table>.hp
		 60	[  0]	CALL 	  7	2	3	; slot7 = love.math.random(slot8, slot9)
		 61	[  0]	TGETV	  8	5	7	; slot8 = <unknown table>.hp[love.math.random]
		 62	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
		 63	[  0]	FNEW 	 10		3	; N/A:0-0: 1 args, 2 upvalues, 3 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	TGETS	  1	0	0	; slot1 = slot0.id
			  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  3	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".id
			  4	[  0]	ISEQV	  1		2	; if <unknown table>.id == uv0"unknown".id
			  5	[  0]	JMP  	  1		5	; 	goto 11
			  6	[  0]	TGETS	  1	0	0	; slot1 = slot0.id
			  7	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  8	[  0]	TGETS	  2	2	0	; slot2 = uv1"unknown".id
			  9	[  0]	ISNEV	  1		2	; if <unknown table>.id ~= uv1"unknown".id
			 10	[  0]	JMP  	  1		2	; 	goto 13
			 11	[  0]	KPRI 	  1		1	; slot1 = false
			 12	[  0]	JMP  	  2		1	; 	goto 14
			 13	[  0]	KPRI 	  1		2	; slot1 = true
			 14	[  0]	RET1 	  1		2	; return slot1
		 64	[  0]	GGET 	 11		2	; slot11 = _env["ipairs"]
		 65	[  0]	MOV  	 13		3	; slot13 = slot3
		 66	[  0]	CALL 	 11	4	2	; slot11, slot12, slot13 = ipairs(slot12)
		 67	[  0]	JMP  	 14		10	; 	goto 78
		 68	[  0]	MOV  	 16		10	; slot16 = slot10
		 69	[  0]	MOV  	 18		15	; slot18 = slot15
		 70	[  0]	CALL 	 16	2	2	; slot16 = slot16(slot17)
		 71	[  0]	ISF  	   		16	; if not slot16
		 72	[  0]	JMP  	 17		5	; 	goto 78
		 73	[  0]	GGET 	 16		1	; slot16 = _env["table"]
		 74	[  0]	TGETS	 16	16	0	; slot16 = table.insert
		 75	[  0]	MOV  	 18		9	; slot18 = slot9
		 76	[  0]	MOV  	 19		15	; slot19 = slot15
		 77	[  0]	CALL 	 16	1	3	;  = table.insert(slot17, slot18)
		 78	[  0]	ITERC	 14	3	3	; slot14, slot15, slot16 = ipairs, slot12, slot13; slot14, slot15 = ipairs(slot12, slot13)
		 79	[  0]	ITERL	 14		-12	; slot13 = slot14; if slot14 != nil goto 68
		 80	[  0]	GGET 	 11		6	; slot11 = _env["love"]
		 81	[  0]	TGETS	 11	11	5	; slot11 = love.math
		 82	[  0]	TGETS	 11	11	4	; slot11 = love.math.random
		 83	[  0]	KSHORT	 13		1	; slot13 = 1
		 84	[  0]	LEN  	 14		9	; slot14 = #slot9
		 85	[  0]	CALL 	 11	2	3	; slot11 = love.math.random(slot12, slot13)
		 86	[  0]	TGETV	 11	9	11	; slot11 = slot9[love.math.random]
		 87	[  0]	TNEW 	 12		4	; slot12 = new table( array: 4, dict: 1)
		 88	[  0]	TSETB	  6	12	1	; slot12[1] = <unknown table>.hp
		 89	[  0]	TSETB	  8	12	2	; slot12[2] = slot8
		 90	[  0]	TSETB	 11	12	3	; slot12[3] = slot11
		 91	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 92
		 92	[  0]	RET1 	 12		2	; return slot12
	 17	[  0]	TSETS	  3	0	5	; slot0.buildKnightOptionsForAxis = slot3
	 18	[  0]	FNEW 	  3		2	; N/A:0-0: 2 args, 3 upvalues, 21 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			[id] = C3,
			[name] = 클래스 C,
			]
		
		
		ktable#1 = [
			[id] = C2,
			[name] = 클래스 B,
			]
		
		
		ktable#2 = [
			[id] = C1,
			[name] = 클래스 A,
			]
		
		
		ktable#3 = [
			[name] = 워베어,
			[asset] = 워베어,
			[id] = 워베어,
			]
		
		
		ktable#4 = [
			[name] = 중기병,
			[asset] = MiniHorseMan03,
			[id] = MiniHorseMan03,
			]
		
		
		ktable#5 = [
			[name] = 데스 로드,
			[asset] = 데스 로드,
			[id] = 데스 로드,
			]
		
		
		ktable#6 = [
			[name] = 우르간,
			[asset] = 우르간,
			[id] = 우르간,
			]
		
		
		ktable#11 = [
			[name] = 데스 나이트,
			[asset] = 데스 나이트,
			[id] = 데스 나이트,
			]
		
		
		ktable#14 = [
			[name] = 그리즐,
			[asset] = 그리즐,
			[id] = 그리즐,
			]
		
		
		ktable#18 = [
			[name] = 그리즐,
			[asset] = 그리즐,
			[id] = 그리즐,
			]
		
		
		ktable#21 = [
			[name] = 하이 엘프 기병,
			[skillDesc] = 하이 엘프 기병으로 승급,
			[id] = 하이 엘프 기병,
			[skillName] = 승급 특성,
			[asset] = 하이 엘프 기병,
			]
		
		
		ktable#22 = [
			[name] = 광폭 기병,
			[skillDesc] = 광폭 기병으로 승급,
			[id] = 광폭 기병,
			[skillName] = 승급 특성,
			[asset] = 광폭 기병,
			]
		
		
		ktable#23 = [
			[name] = 무법 기병,
			[skillDesc] = 무법 기병으로 승급,
			[id] = 무법 기병,
			[skillName] = 승급 특성,
			[asset] = 무법 기병,
			]
		
		
		ktable#24 = [
			[name] = 중기병,
			[asset] = MiniHorseMan03,
			[id] = MiniHorseMan03,
			]
		
		
		ktable#29 = [
			[atk] = 2,
			[distance] = 0,
			[hp] = 4,
			[aspd] = 0,
			]
		
		
		ktable#30 = [
			[classType] = 지원형,
			[asset] = 윙드 후사르,
			[id] = 윙드 후사르,
			[name] = 윙드 후사르,
			]
		
		
		ktable#34 = [
			[atk] = 3,
			[distance] = 1,
			[hp] = 3,
			[aspd] = 1,
			]
		
		
		ktable#35 = [
			[classType] = 범위형,
			[asset] = 켄타로우스,
			[id] = 켄타로우스,
			[name] = 켄타우로스,
			]
		
		
		ktable#39 = [
			[atk] = 4,
			[distance] = 0,
			[hp] = 4,
			[aspd] = 0,
			]
		
		
		ktable#40 = [
			[classType] = 치명형,
			[asset] = 아포칼립스,
			[id] = 아포칼립스,
			[name] = 아포칼립스,
			[keepStatArrows] = true,
			]
		
		
		ktable#44 = [
			[atk] = 3,
			[distance] = 1,
			[hp] = 3,
			[aspd] = 1,
			]
		
		
		ktable#45 = [
			[classType] = 지원형,
			[asset] = 초승달 여왕,
			[id] = 초승달 여왕,
			[name] = 초승달 여왕,
			[keepStatArrows] = true,
			]
		
		
		ktable#49 = [
			#1: subclass,
			#2: subclassName,
			#3: subclassKey,
			]
		
		
		ktable#50 = [
			[atk] = 3,
			[distance] = 1,
			[hp] = 4,
			[aspd] = 0,
			]
		
		
		ktable#51 = [
			[classType] = 방어형,
			[asset] = 숲의 심장,
			[id] = 숲의 심장,
			[name] = 숲의 심장,
			[keepStatArrows] = true,
			]
		
		
		ktable#55 = [
			#1: subclass,
			#2: subclassName,
			#3: subclassKey,
			]
		
		
		ktable#56 = [
			[atk] = 3,
			[distance] = 1,
			[hp] = 2,
			[aspd] = 0,
			]
		
		
		ktable#57 = [
			[classType] = 공격형,
			[asset] = 크로노워커,
			[id] = 크로노워커,
			[name] = 크로노워커,
			[keepStatArrows] = true,
			]
		
		
		ktable#61 = [
			#1: subclass,
			#2: subclassName,
			#3: subclassKey,
			]
		
		
		ktable#62 = [
			[name] = 도끼 기병,
			[skillDesc] = 도끼 기병으로 승급,
			[id] = 도끼 기병,
			[skillName] = 승급 특성,
			[asset] = 도끼 기병,
			]
		
		
		ktable#63 = [
			[name] = 돌격병,
			[skillDesc] = 기본 기병 상위 승급,
			[id] = 돌격병,
			[skillName] = 승급 특성,
			[asset] = 돌격병,
			]
		
		
		ktable#64 = [
			[name] = 야만 기병,
			[skillDesc] = 야만 기병으로 승급,
			[id] = 야만 기병,
			[skillName] = 승급 특성,
			[asset] = 야만 기병,
			]
		
		
		ktable#65 = [
			[name] = 엘프 기병,
			[skillDesc] = 엘프 기병으로 승급,
			[id] = 엘프 기병,
			[skillName] = 승급 특성,
			[asset] = 엘프 기병,
			]
		
		
		ktable#68 = [
			[atk] = 1,
			[distance] = 0,
			[hp] = 3,
			[aspd] = 1,
			]
		
		
		ktable#69 = [
			[classType] = 지원형,
			[asset] = 후사르,
			[id] = 후사르,
			[name] = 후사르,
			]
		
		
		ktable#70 = [
			[atk] = 3,
			[distance] = 0,
			[hp] = 1,
			[aspd] = -3,
			]
		
		
		ktable#71 = [
			[classType] = 범위형,
			[asset] = 초원 기병,
			[id] = 초원 기병,
			[name] = 초원 기병,
			]
		
		
		ktable#75 = [
			[atk] = 1,
			[distance] = 5,
			[hp] = 1,
			[aspd] = 0,
			]
		
		
		ktable#76 = [
			[classType] = 지원형,
			[asset] = 월광사제,
			[id] = 월광사제,
			[name] = 월광사제,
			[keepStatArrows] = true,
			]
		
		
		ktable#77 = [
			[atk] = 4,
			[distance] = 0,
			[hp] = 3,
			[aspd] = -1,
			]
		
		
		ktable#78 = [
			[classType] = 치명형,
			[asset] = 나이트메어,
			[id] = 나이트메어,
			[name] = 나이트메어,
			[keepStatArrows] = true,
			]
		
		
		ktable#82 = [
			#1: subclass,
			#2: subclassName,
			#3: subclassKey,
			]
		
		
		ktable#83 = [
			[atk] = 3,
			[distance] = 0,
			[hp] = 1,
			[aspd] = 1,
			]
		
		
		ktable#84 = [
			[classType] = 공격형,
			[asset] = 페이즈,
			[id] = 페이즈,
			[name] = 페이즈,
			[keepStatArrows] = true,
			]
		
		
		ktable#85 = [
			[atk] = 2,
			[distance] = 0,
			[hp] = 3,
			[aspd] = -1,
			]
		
		
		ktable#86 = [
			[classType] = 방어형,
			[asset] = 실반,
			[id] = 실반,
			[name] = 실반,
			[keepStatArrows] = true,
			]
		
		
		ktable#90 = [
			#1: subclass,
			#2: subclassName,
			#3: subclassKey,
			]
		
		
		ktable#92 = [
			[name] = 본메이지,
			[skillDesc] = 4초마다 적 1명에게 3초간 부패의 저주 (받는 피해 +20%),
			[id] = 본메이지,
			[skillName] = 부패의 저주,
			[asset] = 본메이지,
			]
		
		
		ktable#93 = [
			[name] = 암흑술사,
			[skillDesc] = 3초마다 ATK 170% 강화된 어둠의 탄환 발사,
			[id] = 암흑술사,
			[skillName] = 어둠의 탄환,
			[asset] = 암흑술사,
			]
		
		
		ktable#94 = [
			[name] = 현자 엘프,
			[skillDesc] = 4초마다 아군 중 ATK 가장 높은 유닛 1명에게 3초간 ATK +30%,
			[id] = 현자 엘프,
			[skillName] = 정령의 축복,
			[asset] = 현자 엘프,
			]
		
		
		ktable#98 = [
			[name] = 본메이지,
			[skillDesc] = 4초마다 적 1명에게 3초간 부패의 저주 (받는 피해 +20%),
			[id] = 본메이지,
			[skillName] = 부패의 저주,
			[asset] = 본메이지,
			]
		
		
		ktable#99 = [
			[name] = 암흑술사,
			[skillDesc] = 3초마다 ATK 170% 강화된 어둠의 탄환 발사,
			[id] = 암흑술사,
			[skillName] = 어둠의 탄환,
			[asset] = 암흑술사,
			]
		
		
		ktable#100 = [
			[name] = 현자 엘프,
			[skillDesc] = 4초마다 아군 중 ATK 가장 높은 유닛 1명에게 3초간 ATK +30%,
			[id] = 현자 엘프,
			[skillName] = 정령의 축복,
			[asset] = 현자 엘프,
			]
		
		
		ktable#101 = [
			[name] = 본메이지,
			[skillDesc] = 4초마다 적 1명에게 3초간 부패의 저주 (받는 피해 +20%),
			[id] = 본메이지,
			[skillName] = 부패의 저주,
			[asset] = 본메이지,
			]
		
		
		ktable#102 = [
			[name] = 암흑술사,
			[skillDesc] = 3초마다 ATK 170% 강화된 어둠의 탄환 발사,
			[id] = 암흑술사,
			[skillName] = 어둠의 탄환,
			[asset] = 암흑술사,
			]
		
		
		ktable#103 = [
			[name] = 현자 엘프,
			[skillDesc] = 4초마다 아군 중 ATK 가장 높은 유닛 1명에게 3초간 ATK +30%,
			[id] = 현자 엘프,
			[skillName] = 정령의 축복,
			[asset] = 현자 엘프,
			]
		
		
		ktable#105 = [
			[name] = 안틀러,
			[skillDesc] = 안틀러 승급,
			[id] = 안틀러,
			[skillName] = 승급 특성,
			[asset] = 안틀러,
			]
		
		
		ktable#107 = [
			[name] = 루나 현자,
			[skillDesc] = 루나 현자 승급,
			[id] = 루나 현자,
			[skillName] = 승급 특성,
			[asset] = 루나 현자,
			]
		
		
		ktable#112 = [
			[name] = 해골 마도사,
			[skillDesc] = 해골 마도사 승급,
			[id] = 해골 마도사,
			[skillName] = 승급 특성,
			[asset] = 해골 마도사,
			]
		
		
		ktable#113 = [
			[name] = 엘프 현자,
			[skillDesc] = 엘프 현자 승급,
			[id] = 엘프 현자,
			[skillName] = 승급 특성,
			[asset] = 엘프 현자,
			]
		
		
		ktable#115 = [
			[name] = 엘프 현자,
			[skillDesc] = 엘프 현자 승급,
			[id] = 엘프 현자,
			[skillName] = 승급 특성,
			[asset] = 엘프 현자,
			]
		
		
		ktable#117 = [
			[name] = 원시법사,
			[skillDesc] = 원시법사 승급,
			[id] = 원시법사,
			[skillName] = 승급 특성,
			[asset] = 원시법사,
			]
		
		
		ktable#119 = [
			[name] = 대사제,
			[skillDesc] = 치유 성역을 생성해, 3초 동안 범위 내 체력이 가장 낮은 아군 3명의 체력을 7%씩 회복,
			[id] = 대사제,
			[skillName] = 치유 성역,
			[asset] = 대사제,
			]
		
		
		ktable#121 = [
			[name] = 대주술사,
			[skillDesc] = 대주술사 승급,
			[id] = 대주술사,
			[skillName] = 승급 특성,
			[asset] = 대주술사,
			]
		
		
		ktable#123 = [
			[atk] = 2,
			[distance] = 0,
			[hp] = 2,
			[aspd] = 0,
			]
		
		
		ktable#124 = [
			[classType] = 소환형,
			[asset] = 샐러맨더,
			[id] = 샐러맨더,
			[name] = 샐러맨더,
			]
		
		
		ktable#128 = [
			[atk] = 3,
			[distance] = 0,
			[hp] = 3,
			[aspd] = 1,
			]
		
		
		ktable#129 = [
			[classType] = 지원형,
			[asset] = 운디네,
			[id] = 운디네,
			[name] = 운디네,
			]
		
		
		ktable#133 = [
			[atk] = 4,
			[distance] = 0,
			[hp] = 3,
			[aspd] = 0,
			]
		
		
		ktable#134 = [
			[classType] = 지원형,
			[asset] = 워록,
			[id] = 워록,
			[name] = 워록,
			[keepStatArrows] = true,
			]
		
		
		ktable#138 = [
			[atk] = 4,
			[distance] = 0,
			[hp] = 3,
			[aspd] = 1,
			]
		
		
		ktable#139 = [
			[classType] = 공격형,
			[asset] = 아크메이지,
			[id] = 아크메이지,
			[name] = 아크메이지,
			[keepStatArrows] = true,
			]
		
		
		ktable#143 = [
			#1: subclass,
			#2: subclassName,
			#3: subclassKey,
			]
		
		
		ktable#144 = [
			[atk] = 3,
			[distance] = 1,
			[hp] = 3,
			[aspd] = 0,
			]
		
		
		ktable#145 = [
			[classType] = 지원형,
			[asset] = 예언자,
			[id] = 예언자,
			[name] = 예언자,
			[keepStatArrows] = true,
			]
		
		
		ktable#147 = [
			[atk] = 3,
			[distance] = 1,
			[hp] = 2,
			[aspd] = 0,
			]
		
		
		ktable#148 = [
			[classType] = 소환형,
			[asset] = 리치로드,
			[id] = 리치로드,
			[name] = 리치로드,
			[keepStatArrows] = true,
			]
		
		
		ktable#150 = [
			[name] = 치유술사,
			[skillDesc] = 치유의 장을 생성해, 3초 동안 범위 내 체력이 가장 낮은 아군 2명의 체력을 5%씩 회복,
			[id] = 치유술사,
			[skillName] = 치유의 장,
			[asset] = 치유술사,
			]
		
		
		ktable#151 = [
			[name] = 주술사,
			[skillDesc] = 4초마다 마력 구체를 발사해 최대 3명의 적에게 ATK 110% 피해,
			[id] = 주술사,
			[skillName] = 마력 구체,
			[asset] = 주술사,
			]
		
		
		ktable#152 = [
			[name] = 야생법사,
			[skillDesc] = 4초마다 마력 구체를 발사해 최대 3명의 적에게 ATK 110% 피해,
			[id] = 야생법사,
			[skillName] = 마력 구체,
			[asset] = 야생법사,
			]
		
		
		ktable#153 = [
			[name] = 엘프법사,
			[skillDesc] = 엘프 마법사 상위 승급,
			[id] = 엘프법사,
			[skillName] = 승급 특성,
			[asset] = 엘프법사,
			]
		
		
		ktable#155 = [
			[atk] = 1,
			[distance] = 0,
			[hp] = 1,
			[aspd] = -1,
			]
		
		
		ktable#156 = [
			[classType] = 소환형,
			[asset] = 화령술사,
			[id] = 화령술사,
			[name] = 화령술사,
			]
		
		
		ktable#157 = [
			[atk] = 2,
			[distance] = 0,
			[hp] = 2,
			[aspd] = 0,
			]
		
		
		ktable#158 = [
			[classType] = 지원형,
			[asset] = 수정술사,
			[id] = 수정술사,
			[name] = 수정술사,
			]
		
		
		ktable#162 = [
			[atk] = 1,
			[distance] = 0,
			[hp] = 3,
			[aspd] = 0,
			]
		
		
		ktable#163 = [
			[classType] = 지원형,
			[asset] = 흑마법사,
			[id] = 흑마법사,
			[name] = 흑마법사,
			[keepStatArrows] = true,
			]
		
		
		ktable#164 = [
			[atk] = 4,
			[distance] = 0,
			[hp] = 2,
			[aspd] = -3,
			]
		
		
		ktable#165 = [
			[classType] = 공격형,
			[asset] = 심연술사,
			[id] = 심연술사,
			[name] = 심연술사,
			[keepStatArrows] = true,
			]
		
		
		ktable#169 = [
			#1: subclass,
			#2: subclassName,
			#3: subclassKey,
			]
		
		
		ktable#170 = [
			[atk] = 1,
			[distance] = 1,
			[hp] = 2,
			[aspd] = -1,
			]
		
		
		ktable#171 = [
			[classType] = 소환형,
			[asset] = 리치,
			[id] = 리치,
			[name] = 리치,
			[keepStatArrows] = true,
			]
		
		
		ktable#172 = [
			[atk] = 2,
			[distance] = 1,
			[hp] = 2,
			[aspd] = 0,
			]
		
		
		ktable#173 = [
			[classType] = 지원형,
			[asset] = 예지술사,
			[id] = 예지술사,
			[name] = 예지술사,
			[keepStatArrows] = true,
			]
		
		
		ktable#176 = [
			[name] = 허스칼,
			[skillDesc] = 상위 창병 승급,
			[id] = 허스칼,
			[skillName] = 승급 특성,
			[asset] = 허스칼,
			]
		
		
		ktable#177 = [
			[name] = 근위병,
			[skillDesc] = 2초마다 1초간 받는 피해 -40%. 해당 시간 피격 시 즉시 반격 (ATK 50%),
			[id] = MiniSpearMan03,
			[skillName] = 결벽의 방진,
			[asset] = MiniSpearMan03,
			]
		
		
		ktable#178 = [
			[name] = 해골 근위병,
			[asset] = 해골 근위병,
			[id] = 해골 근위병,
			]
		
		
		ktable#179 = [
			[name] = 엘프 근위병,
			[asset] = 엘프 근위병,
			[id] = 엘프 근위병,
			]
		
		
		ktable#180 = [
			[name] = 무법자,
			[skillDesc] = 무법자 특화 승급,
			[id] = 무법자,
			[skillName] = 승급 특성,
			[asset] = 무법자,
			]
		
		
		ktable#181 = [
			[name] = 근위병,
			[skillDesc] = 2초마다 1초간 받는 피해 -40%. 해당 시간 피격 시 즉시 반격 (ATK 50%),
			[id] = MiniSpearMan03,
			[skillName] = 결벽의 방진,
			[asset] = MiniSpearMan03,
			]
		
		
		ktable#182 = [
			[name] = 바바리안,
			[skillDesc] = 바바리안으로 승급,
			[id] = 바바리안,
			[skillName] = 승급 특성,
			[asset] = 바바리안,
			]
		
		
		ktable#183 = [
			[name] = 하이 엘프 보병,
			[skillDesc] = 하이 엘프 보병으로 승급,
			[id] = 하이 엘프 보병,
			[skillName] = 승급 특성,
			[asset] = 하이 엘프 보병,
			]
		
		
		ktable#190 = [
			[name] = 스파르타,
			[asset] = 스파르타,
			[id] = 스파르타,
			[classType] = 균형형,
			]
		
		
		ktable#192 = [
			[name] = 글래디에이터,
			[asset] = 글래디에이터,
			[id] = 글래디에이터,
			[classType] = 공격형,
			]
		
		
		ktable#194 = [
			[atk] = 5,
			[distance] = -1,
			[hp] = 3,
			[aspd] = 3,
			]
		
		
		ktable#195 = [
			[classType] = 공격형,
			[asset] = SpearRevenant,
			[id] = SpearRevenant,
			[name] = 레버넌트,
			[keepStatArrows] = true,
			]
		
		
		ktable#199 = [
			[atk] = 4,
			[distance] = 2,
			[hp] = 5,
			[aspd] = 0,
			]
		
		
		ktable#200 = [
			[classType] = 방어형,
			[asset] = 처형자,
			[id] = 처형자,
			[name] = 처형자,
			[keepStatArrows] = true,
			]
		
		
		ktable#204 = [
			[atk] = 3,
			[distance] = 1,
			[hp] = 2,
			[aspd] = 0,
			]
		
		
		ktable#205 = [
			[classType] = 범위형,
			[asset] = 랜스마스터,
			[id] = 랜스마스터,
			[name] = 랜스마스터,
			[keepStatArrows] = true,
			]
		
		
		ktable#209 = [
			[atk] = 3,
			[distance] = 1,
			[hp] = 3,
			[aspd] = 1,
			]
		
		
		ktable#210 = [
			[classType] = 공격형,
			[asset] = 발키리,
			[id] = 발키리,
			[name] = 발키리,
			[keepStatArrows] = true,
			]
		
		
		ktable#214 = [
			#1: subclass,
			#2: subclassName,
			#3: subclassKey,
			]
		
		
		ktable#215 = [
			[name] = 소울 리퍼,
			[asset] = 소울 리퍼,
			[id] = 소울 리퍼,
			]
		
		
		ktable#216 = [
			[name] = 크러셔,
			[asset] = 크러셔,
			[id] = 크러셔,
			]
		
		
		ktable#222 = [
			[name] = 약탈자,
			[skillDesc] = 약탈 특화 승급,
			[id] = 약탈자,
			[skillName] = 승급 특성,
			[asset] = 약탈자,
			]
		
		
		ktable#223 = [
			[name] = 창위병,
			[skillDesc] = 기본 창병 상위 승급,
			[id] = MiniSpearMan02,
			[skillName] = 승급 특성,
			[asset] = MiniSpearMan02,
			]
		
		
		ktable#224 = [
			[name] = 바이킹,
			[skillDesc] = 강인한 전사로 승급,
			[id] = 바이킹,
			[skillName] = 승급 특성,
			[asset] = 바이킹,
			]
		
		
		ktable#225 = [
			[name] = 엘프 보병,
			[skillDesc] = 정예 엘프 보병으로 승급,
			[id] = 엘프 보병,
			[skillName] = 승급 특성,
			[asset] = 엘프 보병,
			]
		
		
		ktable#227 = [
			[name] = 투기 창병,
			[asset] = 투기 창병,
			[id] = 투기 창병,
			[classType] = 공격형,
			]
		
		
		ktable#228 = [
			[name] = 고대 창병,
			[asset] = 고대 창병,
			[id] = 고대 창병,
			[classType] = 균형형,
			]
		
		
		ktable#230 = [
			[atk] = 2,
			[distance] = 2,
			[hp] = 2,
			[aspd] = -2,
			]
		
		
		ktable#231 = [
			[classType] = 범위형,
			[asset] = 창술사,
			[id] = 창술사,
			[name] = 창술사,
			[keepStatArrows] = true,
			]
		
		
		ktable#232 = [
			[atk] = 2,
			[distance] = 1,
			[hp] = 3,
			[aspd] = 0,
			]
		
		
		ktable#233 = [
			[classType] = 공격형,
			[asset] = 천공병,
			[id] = 천공병,
			[name] = 천공병,
			[keepStatArrows] = true,
			]
		
		
		ktable#234 = [
			[atk] = 4,
			[distance] = -1,
			[hp] = 2,
			[aspd] = 2,
			]
		
		
		ktable#235 = [
			[classType] = 공격형,
			[asset] = 망령병,
			[id] = 망령병,
			[name] = 망령병,
			[keepStatArrows] = true,
			]
		
		
		ktable#236 = [
			[atk] = 2,
			[distance] = 1,
			[hp] = 4,
			[aspd] = -1,
			]
		
		
		ktable#237 = [
			[classType] = 방어형,
			[asset] = 흑위병,
			[id] = 흑위병,
			[name] = 흑위병,
			[keepStatArrows] = true,
			]
		
		
		ktable#241 = [
			[atk] = 2,
			[distance] = 2,
			[hp] = 2,
			[aspd] = -2,
			]
		
		
		ktable#242 = [
			[classType] = 범위형,
			[asset] = 창술사,
			[id] = 창술사,
			[name] = 창술사,
			[keepStatArrows] = true,
			]
		
		
		ktable#243 = [
			[atk] = 2,
			[distance] = 1,
			[hp] = 3,
			[aspd] = 0,
			]
		
		
		ktable#244 = [
			[classType] = 공격형,
			[asset] = 천공병,
			[id] = 천공병,
			[name] = 천공병,
			[keepStatArrows] = true,
			]
		
		
		ktable#248 = [
			#1: subclass,
			#2: subclassName,
			#3: subclassKey,
			]
		
		
		ktable#249 = [
			[name] = 젠,
			[asset] = 젠,
			[id] = 젠,
			]
		
		
		ktable#252 = [
			[name] = 우드워든,
			[skillDesc] = 4초마다, 지면에서 뿌리가 튀어나와 적 최대 3명에게 ATK 140% 피해.,
			[id] = 우드워든,
			[skillName] = 뿌리 일격,
			[asset] = 우드워든,
			]
		
		
		ktable#253 = [
			[name] = 암흑장군,
			[skillDesc] = 4초마다, 구체로 적 최대 3명에게 ATK 120% 피해를 주고 1초간 스턴.,
			[id] = 암흑장군,
			[skillName] = 어둠의 구체,
			[asset] = 암흑장군,
			]
		
		
		ktable#254 = [
			[name] = 검황,
			[asset] = 검황,
			[id] = 검황,
			]
		
		
		ktable#255 = [
			[name] = 글룸,
			[asset] = 글룸,
			[id] = 글룸,
			]
		
		
		ktable#256 = [
			[name] = 글로리,
			[asset] = 글로리,
			[id] = 글로리,
			]
		
		
		ktable#261 = [
			[name] = 카오스,
			[asset] = 카오스,
			[id] = 카오스,
			]
		
		
		ktable#262 = [
			[name] = 루시엘,
			[asset] = 루시엘,
			[id] = 루시엘,
			]
		
		
		ktable#265 = [
			[name] = 망령,
			[asset] = 망령,
			[id] = 망령,
			]
		
		
		ktable#266 = [
			[name] = 검황,
			[asset] = 검황,
			[id] = 검황,
			]
		
		
		ktable#268 = [
			[name] = 바그,
			[skillDesc] = 자연의 힘으로 각성한 상위 승급,
			[id] = 바그,
			[skillName] = 자연의 맹세,
			[asset] = 바그,
			]
		
		
		ktable#269 = [
			[name] = 프랑켄슈타인,
			[skillDesc] = 금단의 힘으로 완성된 괴물 보디입니다.,
			[id] = 프랑켄슈타인,
			[skillName] = 인조 각성,
			[asset] = 프랑켄슈타인,
			]
		
		
		ktable#271 = [
			[name] = 엔트로드,
			[skillDesc] = 고대 수목의 정수를 이어받은 최종 분기입니다.,
			[id] = 엔트로드,
			[skillName] = 숲주의 계승,
			[asset] = 엔트로드,
			]
		
		
		ktable#273 = [
			[name] = 장군,
			[asset] = 장군,
			[id] = 장군,
			]
		
		
		ktable#275 = [
			[name] = 검황,
			[asset] = 검황,
			[id] = 검황,
			]
		
		
		ktable#277 = [
			[atk] = 3,
			[distance] = 0,
			[hp] = 3,
			[aspd] = 0,
			]
		
		
		ktable#278 = [
			[classType] = 균형형,
			[asset] = 심판관,
			[id] = 심판관,
			[name] = 심판관,
			]
		
		
		ktable#283 = [
			[atk] = 2,
			[distance] = 0,
			[hp] = 2,
			[aspd] = 0,
			]
		
		
		ktable#284 = [
			[classType] = 공격형,
			[asset] = 빙결여제,
			[id] = 빙결여제,
			[name] = 빙결여제,
			]
		
		
		ktable#288 = [
			#1: subclass,
			#2: subclassName,
			#3: subclassKey,
			]
		
		
		ktable#292 = [
			[atk] = 3,
			[distance] = 0,
			[hp] = 3,
			[aspd] = 0,
			]
		
		
		ktable#293 = [
			[classType] = 치명형,
			[asset] = 소울리퍼,
			[id] = 소울리퍼,
			[name] = 소울리퍼,
			[keepStatArrows] = true,
			]
		
		
		ktable#297 = [
			[atk] = 3,
			[distance] = 0,
			[hp] = 4,
			[aspd] = -1,
			]
		
		
		ktable#298 = [
			[classType] = 방어형,
			[asset] = CrownRevenant,
			[id] = CrownRevenant,
			[name] = 레버넌트,
			[keepStatArrows] = true,
			]
		
		
		ktable#303 = [
			#1: subclass,
			#2: subclassName,
			#3: subclassKey,
			]
		
		
		ktable#304 = [
			[atk] = 3,
			[distance] = 1,
			[hp] = 2,
			[aspd] = -1,
			]
		
		
		ktable#305 = [
			[classType] = 범위형,
			[asset] = 파멸의 천사,
			[id] = 파멸의 천사,
			[name] = 파멸의 천사,
			[keepStatArrows] = true,
			]
		
		
		ktable#309 = [
			#1: subclass,
			#2: subclassName,
			#3: subclassKey,
			]
		
		
		ktable#310 = [
			[atk] = 3,
			[distance] = 1,
			[hp] = 4,
			[aspd] = 0,
			]
		
		
		ktable#311 = [
			[classType] = 균형형,
			[asset] = 도미니온,
			[id] = 도미니온,
			[name] = 도미니온,
			[keepStatArrows] = true,
			]
		
		
		ktable#315 = [
			#1: subclass,
			#2: subclassName,
			#3: subclassKey,
			]
		
		
		ktable#316 = [
			[name] = 베테랑,
			[skillDesc] = 기본 결투사 분기 승급,
			[id] = 베테랑,
			[skillName] = 승급 특성,
			[asset] = 베테랑,
			]
		
		
		ktable#317 = [
			[name] = 황제,
			[skillDesc] = 기본 결투사 상위 승급,
			[id] = 황제,
			[skillName] = 승급 특성,
			[asset] = 황제,
			]
		
		
		ktable#318 = [
			[name] = 빅터,
			[skillDesc] = 칼 끝에서 피가 타오르는 결투사로 각성합니다.,
			[id] = 빅터,
			[skillName] = 피의 각성,
			[asset] = 빅터,
			]
		
		
		ktable#319 = [
			[name] = 엔트,
			[skillDesc] = 고대 수목의 힘으로 결투사의 형태를 완성합니다.,
			[id] = 엔트,
			[skillName] = 숲의 각성,
			[asset] = 엔트,
			]
		
		
		ktable#324 = [
			[atk] = 1,
			[distance] = 0,
			[hp] = 1,
			[aspd] = 1,
			]
		
		
		ktable#325 = [
			[classType] = 공격형,
			[asset] = 서리칼날,
			[id] = 서리칼날,
			[name] = 서리칼날,
			]
		
		
		ktable#326 = [
			[atk] = 2,
			[distance] = 0,
			[hp] = 3,
			[aspd] = -2,
			]
		
		
		ktable#327 = [
			[classType] = 균형형,
			[asset] = RarePaladin,
			[id] = RarePaladin,
			[name] = 팔라딘,
			]
		
		
		ktable#331 = [
			[atk] = 4,
			[distance] = 0,
			[hp] = 2,
			[aspd] = -2,
			]
		
		
		ktable#332 = [
			[classType] = 치명형,
			[asset] = 리퍼,
			[id] = 리퍼,
			[name] = 리퍼,
			[keepStatArrows] = true,
			]
		
		
		ktable#333 = [
			[atk] = 3,
			[distance] = 0,
			[hp] = 4,
			[aspd] = -3,
			]
		
		
		ktable#334 = [
			[classType] = 방어형,
			[asset] = LegendarySpecter,
			[id] = LegendarySpecter,
			[name] = 스펙터,
			[keepStatArrows] = true,
			]
		
		
		ktable#338 = [
			#1: subclass,
			#2: subclassName,
			#3: subclassKey,
			]
		
		
		ktable#339 = [
			[atk] = 1,
			[distance] = 0,
			[hp] = 1,
			[aspd] = -3,
			]
		
		
		ktable#340 = [
			[classType] = 범위형,
			[asset] = 타락천사,
			[id] = 타락천사,
			[name] = 타락천사,
			[keepStatArrows] = true,
			]
		
		
		ktable#341 = [
			[atk] = 3,
			[distance] = 0,
			[hp] = 3,
			[aspd] = -1,
			]
		
		
		ktable#342 = [
			[classType] = 균형형,
			[asset] = 대천사,
			[id] = 대천사,
			[name] = 대천사,
			[keepStatArrows] = true,
			]
		
		
		ktable#346 = [
			#1: subclass,
			#2: subclassName,
			#3: subclassKey,
			]
		
		
		ktable#350 = [
			[name] = 바이올렛 둠,
			[asset] = 바이올렛 둠,
			[id] = 바이올렛 둠,
			]
		
		
		ktable#351 = [
			[name] = 그린 섀도우,
			[asset] = 그린 섀도우,
			[id] = 그린 섀도우,
			]
		
		
		ktable#354 = [
			[name] = 바이올,
			[asset] = 바이올,
			[id] = 바이올,
			]
		
		
		ktable#355 = [
			[name] = 로빈 후드,
			[asset] = 로빈 후드,
			[id] = 로빈 후드,
			]
		
		
		ktable#360 = [
			[name] = 데드아이,
			[asset] = 데드아이,
			[id] = 데드아이,
			]
		
		
		ktable#361 = [
			[name] = 하이 엘프,
			[asset] = 하이 엘프,
			[id] = 하이 엘프,
			]
		
		
		ktable#362 = [
			[name] = 명사수,
			[skillDesc] = 적의 약점을 노려 공격력의 180% 피해,
			[id] = 명사수,
			[skillName] = 정밀 사격,
			[asset] = 명사수,
			]
		
		
		ktable#363 = [
			[name] = 장궁병,
			[skillDesc] = 3개의 화살로 최대 3명에게 각 100% 피해,
			[id] = MiniArcherMan03,
			[skillName] = 트리플샷,
			[asset] = MiniArcherMan03,
			]
		
		
		ktable#368 = [
			[name] = 폭파대장,
			[asset] = 폭파대장,
			[id] = 폭파대장,
			]
		
		
		ktable#370 = [
			[name] = 캐노니어,
			[asset] = 캐노니어,
			[id] = 캐노니어,
			]
		
		
		ktable#372 = [
			[atk] = 4,
			[distance] = 0,
			[hp] = 3,
			[aspd] = 0,
			]
		
		
		ktable#373 = [
			[classType] = 공격형,
			[asset] = 미라지,
			[id] = 미라지,
			[name] = 미라지,
			]
		
		
		ktable#377 = [
			[atk] = 3,
			[distance] = 0,
			[hp] = 3,
			[aspd] = 3,
			]
		
		
		ktable#378 = [
			[classType] = 공속형,
			[asset] = 레이븐,
			[id] = 레이븐,
			[name] = 레이븐,
			]
		
		
		ktable#382 = [
			#1: subclass,
			#2: subclassName,
			#3: subclassKey,
			]
		
		
		ktable#385 = [
			[atk] = 3,
			[distance] = 0,
			[hp] = 3,
			[aspd] = 1,
			]
		
		
		ktable#386 = [
			[classType] = 지원형,
			[asset] = 세라프,
			[id] = 세라프,
			[name] = 세라프,
			[keepStatArrows] = true,
			]
		
		
		ktable#388 = [
			[atk] = 3,
			[distance] = 4,
			[hp] = 2,
			[aspd] = 0,
			]
		
		
		ktable#389 = [
			[classType] = 공격형,
			[asset] = 이클립스,
			[id] = 이클립스,
			[name] = 이클립스,
			[keepStatArrows] = true,
			]
		
		
		ktable#391 = [
			[name] = 순찰자,
			[skillDesc] = 적의 약점을 노려 ATK 180% 피해,
			[id] = 순찰자,
			[skillName] = 정밀 사격,
			[asset] = 순찰자,
			]
		
		
		ktable#392 = [
			[name] = 석궁수,
			[skillDesc] = 2개의 화살로 최대 2명에게 각 80% 피해,
			[id] = MiniArcherMan02,
			[skillName] = 멀티샷,
			[asset] = MiniArcherMan02,
			]
		
		
		ktable#393 = [
			[name] = 레인저,
			[skillDesc] = 빠른 연사력을 지닌 정찰병 상위 승급,
			[id] = 레인저,
			[skillName] = 승급 특성,
			[asset] = 레인저,
			]
		
		
		ktable#394 = [
			[name] = 엘프 궁수,
			[skillDesc] = 자연의 기운을 깃든 정찰병 상위 승급,
			[id] = 엘프 궁수,
			[skillName] = 승급 특성,
			[asset] = 엘프 궁수,
			]
		
		
		ktable#396 = [
			[name] = 척탄병,
			[asset] = 척탄병,
			[id] = 척탄병,
			]
		
		
		ktable#397 = [
			[name] = 화포수,
			[asset] = 화포수,
			[id] = 화포수,
			]
		
		
		ktable#399 = [
			[atk] = 4,
			[distance] = 1,
			[hp] = 1,
			[aspd] = -3,
			]
		
		
		ktable#400 = [
			[classType] = 공격형,
			[asset] = 환영사수,
			[id] = 환영사수,
			[name] = 환영사수,
			]
		
		
		ktable#401 = [
			[atk] = 2,
			[distance] = 0,
			[hp] = 2,
			[aspd] = 3,
			]
		
		
		ktable#402 = [
			[classType] = 공속형,
			[asset] = 암흑사수,
			[id] = 암흑사수,
			[name] = 암흑사수,
			]
		
		
		ktable#406 = [
			#1: subclass,
			#2: subclassName,
			#3: subclassKey,
			]
		
		
		ktable#407 = [
			[atk] = 3,
			[distance] = 3,
			[hp] = 1,
			[aspd] = -3,
			]
		
		
		ktable#408 = [
			[classType] = 공격형,
			[asset] = 은빛사수,
			[id] = 은빛사수,
			[name] = 은빛사수,
			[keepStatArrows] = true,
			]
		
		
		ktable#409 = [
			[atk] = 2,
			[distance] = 0,
			[hp] = 2,
			[aspd] = 2,
			]
		
		
		ktable#410 = [
			[classType] = 지원형,
			[asset] = 큐피드,
			[id] = 큐피드,
			[name] = 큐피드,
			[keepStatArrows] = true,
			]
		
		
		ktable#419 = [
			[name] = 성기사,
			[skillDesc] = 1초마다 최저 체력 아군 HP 2% 회복,
			[id] = 성기사,
			[skillName] = 성스러운 회복,
			[asset] = 성기사,
			]
		
		
		ktable#420 = [
			[name] = 암기사,
			[skillDesc] = 다음 공격 피해의 25% 회복 (재사용 2초),
			[id] = 암기사,
			[skillName] = 암영 흡혈,
			[asset] = 암기사,
			]
		
		
		ktable#421 = [
			[name] = 기사,
			[skillDesc] = 4초마다 1.5초간 모든 피해를 막고 공격한 적에게 피해 반사,
			[id] = MiniSwordMan03,
			[skillName] = 반격 태세,
			[asset] = MiniSwordMan03,
			]
		
		
		ktable#422 = [
			[atk] = 4,
			[distance] = 1,
			[hp] = 5,
			[aspd] = -4,
			]
		
		
		ktable#423 = [
			[classType] = 범위형,
			[skillDesc] = 어둠의 힘을 완성한 단일 상위 승급,
			[id] = 마그누스,
			[skillName] = 심연의 군주,
			[name] = 마그누스,
			[asset] = 마그누스,
			]
		
		
		ktable#424 = [
			[atk] = 4,
			[distance] = 0,
			[hp] = 3,
			[aspd] = 1,
			]
		
		
		ktable#425 = [
			[classType] = 증폭형,
			[skillDesc] = 심연의 눈을 뜬 단일 상위 승급,
			[id] = 게이즈,
			[skillName] = 심연의 응시,
			[name] = 게이즈,
			[asset] = 게이즈,
			]
		
		
		ktable#426 = [
			[name] = 플레어,
			[skillDesc] = 화염의 힘으로 각성한 단일 상위 승급,
			[id] = 플레어,
			[skillName] = 화염 각성,
			[asset] = 플레어,
			]
		
		
		ktable#427 = [
			[name] = 템플러,
			[skillDesc] = 신격에 각성한 단일 상위 승급,
			[id] = 템플러,
			[skillName] = 신성 강림,
			[asset] = 템플러,
			]
		
		
		ktable#428 = [
			[name] = 바그,
			[skillDesc] = 자연의 힘으로 각성한 상위 승급,
			[id] = 바그,
			[skillName] = 자연의 맹세,
			[asset] = 바그,
			]
		
		
		ktable#429 = [
			[name] = 엘프기사,
			[skillDesc] = 1.5초마다 ATK 110% 연속 베기,
			[id] = 엘프기사,
			[skillName] = 질풍 연격,
			[asset] = 엘프기사,
			]
		
		
		ktable#430 = [
			[name] = 해적왕,
			[skillDesc] = 전방으로 ATK 130% 폭풍의 칼날을 날려 최대 3명 피해,
			[id] = 해적왕,
			[skillName] = 폭풍의 칼날,
			[asset] = 해적왕,
			]
		
		
		ktable#431 = [
			[name] = 기사,
			[skillDesc] = 4초마다 1.5초간 모든 피해를 막고 공격한 적에게 피해 반사,
			[id] = MiniSwordMan03,
			[skillName] = 반격 태세,
			[asset] = MiniSwordMan03,
			]
		
		
		ktable#432 = [
			[atk] = 3,
			[distance] = 0,
			[hp] = 5,
			[aspd] = -2,
			]
		
		
		ktable#433 = [
			[classType] = 방어형,
			[asset] = 성배기사,
			[id] = 성배기사,
			[name] = 성배기사,
			[keepStatArrows] = true,
			]
		
		
		ktable#437 = [
			[atk] = 3,
			[distance] = 0,
			[hp] = 1,
			[aspd] = 5,
			]
		
		
		ktable#438 = [
			[classType] = 공속형,
			[asset] = 팬텀,
			[id] = 팬텀,
			[name] = 팬텀,
			[keepStatArrows] = true,
			]
		
		
		ktable#442 = [
			#1: subclass,
			#2: subclassName,
			#3: subclassKey,
			]
		
		
		ktable#450 = [
			[atk] = 5,
			[distance] = 0,
			[hp] = 2,
			[aspd] = -2,
			]
		
		
		ktable#453 = [
			]
		
		
		ktable#461 = [
			[atk] = 3,
			[distance] = 0,
			[hp] = 3,
			[aspd] = 1,
			]
		
		
		ktable#469 = [
			[skillName] = 승급 특성,
			]
		
		
		ktable#473 = [
			[atk] = 3,
			[distance] = 0,
			[hp] = 4,
			[aspd] = -1,
			]
		
		
		ktable#474 = [
			[classType] = 방어형,
			[asset] = 백기사,
			[id] = 백기사,
			[name] = 백기사,
			[keepStatArrows] = true,
			]
		
		
		ktable#475 = [
			[atk] = 2,
			[distance] = 0,
			[hp] = 2,
			[aspd] = 4,
			]
		
		
		ktable#476 = [
			[classType] = 공속형,
			[asset] = 듀라한,
			[id] = 듀라한,
			[name] = 듀라한,
			[keepStatArrows] = true,
			]
		
		
		ktable#483 = [
			#1: subclass,
			#2: subclassName,
			#3: subclassKey,
			]
		
		
		ktable#485 = [
			[atk] = 5,
			[distance] = 0,
			[hp] = 2,
			[aspd] = -2,
			]
		
		
		ktable#486 = [
			[classType] = 치명형,
			[skillDesc] = 공격 시 15% 확률로 대상을 1.5초간 침묵 상태로 만듭니다,
			[id] = 암검사,
			[skillName] = 어둠의 침묵,
			[name] = 암검사,
			[asset] = 암검사,
			]
		
		
		ktable#487 = [
			[atk] = 3,
			[distance] = 0,
			[hp] = 3,
			[aspd] = 1,
			]
		
		
		ktable#488 = [
			[classType] = 균형형,
			[skillDesc] = 3초마다 주변 적들에게 ATK 60% 피해를 입히고 1초간 둔화시킵니다,
			[id] = 마검사,
			[skillName] = 공포의 시선,
			[name] = 마검사,
			[asset] = 마검사,
			]
		
		
		ktable#489 = [
			[name] = 드루이드,
			[skillDesc] = 공격 시 25% 확률로 대상을 관통하는 검기 발사,
			[id] = 드루이드,
			[skillName] = 바람의 상처,
			[asset] = 드루이드,
			]
		
		
		ktable#490 = [
			[name] = 레버넌트,
			[skillDesc] = 공격 시 20% 확률로 준 피해의 50%만큼 광역 피해,
			[id] = 레버넌트,
			[skillName] = 심연의 복수,
			[asset] = 레버넌트,
			]
		
		
		ktable#491 = [
			[name] = 팔라딘,
			[skillDesc] = 3초마다 모든 아군에게 2초간 받는 피해 20% 감소 보호막 부여,
			[id] = 팔라딘,
			[skillName] = 천상의 보호,
			[asset] = 팔라딘,
			]
		
		
		ktable#492 = [
			[name] = 플레어,
			[asset] = 플레어,
			[id] = 플레어,
			]
		
		
		ktable#499 = [
			[name] = 마그누스,
			[asset] = 마그누스,
			[id] = 마그누스,
			]
		
		
		ktable#504 = [
			[atk] = 1,
			[distance] = 0,
			[hp] = 3,
			[aspd] = 0,
			]
		
		
		ktable#505 = [
			[classType] = 소환형,
			[asset] = FerretTamer,
			[id] = FerretTamer,
			[name] = 페럿 조련사,
			]
		
		
		ktable#506 = [
			[atk] = 2,
			[distance] = 1,
			[hp] = 2,
			[aspd] = -1,
			]
		
		
		ktable#507 = [
			[classType] = 지원형,
			[asset] = Trickster,
			[id] = Trickster,
			[name] = 트릭스터,
			]
		
		
		ktable#508 = [
			[atk] = 2,
			[distance] = 0,
			[hp] = 3,
			[aspd] = 0,
			]
		
		
		ktable#509 = [
			[classType] = 소환형,
			[asset] = Ringmaster,
			[id] = Ringmaster,
			[name] = 서커스 단장,
			]
		
		
		ktable#511 = [
			[atk] = 3,
			[distance] = 1,
			[hp] = 3,
			[aspd] = 0,
			]
		
		
		ktable#512 = [
			[classType] = 지원형,
			[asset] = Illusionist,
			[id] = Illusionist,
			[name] = 환술사,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  2		2	; 	goto 5
		  3	[  0]	KPRI 	  2		0	; slot2 = nil
		  4	[  0]	UCLO 	  0		3099	; nil uvs >= r0; goto 3104
		  5	[  0]	FNEW 	  2		524	; N/A:0-0: 1 args, 1 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			ktable#6 = [
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	IST  	   		0	; if slot0
			  2	[  0]	JMP  	  1		1	; 	goto 4
			  3	[  0]	RET1 	  0		2	; return slot0
			  4	[  0]	TGETS	  1	0	10	; slot1 = slot0.skillIcon
			  5	[  0]	ISF  	   		1	; if not <unknown table>.skillIcon
			  6	[  0]	JMP  	  2		4	; 	goto 11
			  7	[  0]	TGETS	  1	0	10	; slot1 = slot0.skillIcon
			  8	[  0]	ISEQS	  1		9	; if <unknown table>.skillIcon == ""
			  9	[  0]	JMP  	  1		1	; 	goto 11
			 10	[  0]	RET1 	  0		2	; return slot0
			 11	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			 12	[  0]	TGETS	  1	1	8	; slot1 = uv0"unknown".getSkillsForUnit
			 13	[  0]	TDUP 	  3		6	; slot3 = copy table#k6
			 14	[  0]	TGETS	  4	0	7	; slot4 = slot0.id
			 15	[  0]	TSETS	  4	3	5	; slot3.subclass = <unknown table>.id
			 16	[  0]	TGETS	  4	0	4	; slot4 = slot0.asset
			 17	[  0]	IST  	   		4	; if <unknown table>.asset
			 18	[  0]	JMP  	  5		1	; 	goto 20
			 19	[  0]	TGETS	  4	0	7	; slot4 = slot0.id
			 20	[  0]	TSETS	  4	3	3	; slot3.subclassKey = <unknown table>.id
			 21	[  0]	TGETS	  4	0	2	; slot4 = slot0.name
			 22	[  0]	TSETS	  4	3	1	; slot3.subclassName = <unknown table>.name
			 23	[  0]	TGETS	  4	0	7	; slot4 = slot0.id
			 24	[  0]	TSETS	  4	3	7	; slot3.id = <unknown table>.id
			 25	[  0]	TGETS	  4	0	2	; slot4 = slot0.name
			 26	[  0]	TSETS	  4	3	2	; slot3.name = <unknown table>.name
			 27	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown".getSkillsForUnit(slot2)
			 28	[  0]	ISF  	   		1	; if not slot1
			 29	[  0]	JMP  	  2		10	; 	goto 40
			 30	[  0]	TGETB	  2	1	1	; slot2 = slot1[1]
			 31	[  0]	ISF  	   		2	; if not slot2
			 32	[  0]	JMP  	  3		7	; 	goto 40
			 33	[  0]	TGETB	  2	1	1	; slot2 = slot1[1]
			 34	[  0]	TGETS	  2	2	0	; slot2 = slot2.icon
			 35	[  0]	ISF  	   		2	; if not <unknown table>.icon
			 36	[  0]	JMP  	  3		3	; 	goto 40
			 37	[  0]	TGETB	  2	1	1	; slot2 = slot1[1]
			 38	[  0]	TGETS	  2	2	0	; slot2 = slot2.icon
			 39	[  0]	TSETS	  2	0	10	; slot0.skillIcon = <unknown table>.icon
			 40	[  0]	RET1 	  0		2	; return slot0
		  6	[  0]	FNEW 	  3		523	; N/A:0-0: 1 args, 3 upvalues, 10 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  1		2	; slot1 = _env["ipairs"]
			  2	[  0]	MOV  	  3		0	; slot3 = slot0
			  3	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = ipairs(slot2)
			  4	[  0]	JMP  	  4		9	; 	goto 14
			  5	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
			  6	[  0]	MOV  	  8		5	; slot8 = slot5
			  7	[  0]	CALL 	  6	1	2	;  = uv0"unknown"(slot7)
			  8	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
			  9	[  0]	TGETS	  6	6	0	; slot6 = uv1"unknown".getForChoice
			 10	[  0]	MOV  	  8		5	; slot8 = slot5
			 11	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
			 12	[  0]	CALL 	  6	2	3	; slot6 = uv1"unknown".getForChoice(slot7, slot8)
			 13	[  0]	TSETS	  6	5	1	; slot5.faction = uv1"unknown".getForChoice
			 14	[  0]	ITERC	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, slot3; slot4, slot5 = slot1(slot2, slot3)
			 15	[  0]	ITERL	  4		-11	; slot3 = slot4; if slot4 != nil goto 5
			 16	[  0]	RET1 	  0		2	; return slot0
		  7	[  0]	TGETS	  4	0	522	; slot4 = slot0.sym
		  8	[  0]	ISEQS	  4		521	; if <unknown table>.sym == "Joker"
		  9	[  0]	JMP  	  4		3	; 	goto 13
		 10	[  0]	TGETS	  4	0	522	; slot4 = slot0.sym
		 11	[  0]	ISNES	  4		520	; if <unknown table>.sym ~= "J"
		 12	[  0]	JMP  	  4		50	; 	goto 63
		 13	[  0]	ISNEN	  1		0	; if slot1 ~= 3
		 14	[  0]	JMP  	  4		48	; 	goto 63
		 15	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		 16	[  0]	ISEQS	  4		518	; if <unknown table>.subclass == "Trickster"
		 17	[  0]	JMP  	  4		8	; 	goto 26
		 18	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		 19	[  0]	ISEQS	  4		516	; if <unknown table>.subclassName == "트릭스터"
		 20	[  0]	JMP  	  4		5	; 	goto 26
		 21	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		 22	[  0]	ISEQS	  4		518	; if <unknown table>.subclassKey == "Trickster"
		 23	[  0]	JMP  	  4		2	; 	goto 26
		 24	[  0]	KPRI 	  4		1	; slot4 = false
		 25	[  0]	JMP  	  5		1	; 	goto 27
		 26	[  0]	KPRI 	  4		2	; slot4 = true
		 27	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		 28	[  0]	ISEQS	  5		514	; if <unknown table>.subclass == "FerretTamer"
		 29	[  0]	JMP  	  5		8	; 	goto 38
		 30	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		 31	[  0]	ISEQS	  5		513	; if <unknown table>.subclassName == "페럿 조련사"
		 32	[  0]	JMP  	  5		5	; 	goto 38
		 33	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		 34	[  0]	ISEQS	  5		514	; if <unknown table>.subclassKey == "FerretTamer"
		 35	[  0]	JMP  	  5		2	; 	goto 38
		 36	[  0]	KPRI 	  5		1	; slot5 = false
		 37	[  0]	JMP  	  6		1	; 	goto 39
		 38	[  0]	KPRI 	  5		2	; slot5 = true
		 39	[  0]	ISF  	   		4	; if not slot4
		 40	[  0]	JMP  	  6		9	; 	goto 50
		 41	[  0]	MOV  	  6		3	; slot6 = slot3
		 42	[  0]	TNEW 	  8		3	; slot8 = new table( array: 3, dict: 1)
		 43	[  0]	TDUP 	  9		512	; slot9 = copy table#k512
		 44	[  0]	TDUP 	 10		511	; slot10 = copy table#k511
		 45	[  0]	TSETS	 10	9	510	; slot9.statArrows = slot10
		 46	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		 47	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 48
		 48	[  0]	CALLT	  6		2	; return slot6(slot7)
		 49	[  0]	JMP  	  6		10	; 	goto 60
		 50	[  0]	ISF  	   		5	; if not slot5
		 51	[  0]	JMP  	  6		8	; 	goto 60
		 52	[  0]	MOV  	  6		3	; slot6 = slot3
		 53	[  0]	TNEW 	  8		3	; slot8 = new table( array: 3, dict: 1)
		 54	[  0]	TDUP 	  9		509	; slot9 = copy table#k509
		 55	[  0]	TDUP 	 10		508	; slot10 = copy table#k508
		 56	[  0]	TSETS	 10	9	510	; slot9.statArrows = slot10
		 57	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		 58	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 59
		 59	[  0]	CALLT	  6		2	; return slot6(slot7)
		 60	[  0]	KPRI 	  6		0	; slot6 = nil
		 61	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 62
		 62	[  0]	RET1 	  6		2	; return slot6
		 63	[  0]	TGETS	  4	0	522	; slot4 = slot0.sym
		 64	[  0]	ISEQS	  4		521	; if <unknown table>.sym == "Joker"
		 65	[  0]	JMP  	  4		3	; 	goto 69
		 66	[  0]	TGETS	  4	0	522	; slot4 = slot0.sym
		 67	[  0]	ISNES	  4		520	; if <unknown table>.sym ~= "J"
		 68	[  0]	JMP  	  4		14	; 	goto 83
		 69	[  0]	ISNEN	  1		1	; if slot1 ~= 2
		 70	[  0]	JMP  	  4		12	; 	goto 83
		 71	[  0]	MOV  	  4		3	; slot4 = slot3
		 72	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		 73	[  0]	TDUP 	  7		507	; slot7 = copy table#k507
		 74	[  0]	TDUP 	  8		506	; slot8 = copy table#k506
		 75	[  0]	TSETS	  8	7	510	; slot7.statArrows = slot8
		 76	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		 77	[  0]	TDUP 	  7		505	; slot7 = copy table#k505
		 78	[  0]	TDUP 	  8		504	; slot8 = copy table#k504
		 79	[  0]	TSETS	  8	7	510	; slot7.statArrows = slot8
		 80	[  0]	TSETB	  7	6	2	; slot6[2] = slot7
		 81	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 82
		 82	[  0]	CALLT	  4		2	; return slot4(slot5)
		 83	[  0]	TGETS	  4	0	522	; slot4 = slot0.sym
		 84	[  0]	ISNES	  4		503	; if <unknown table>.sym ~= "W"
		 85	[  0]	JMP  	  4		593	; 	goto 679
		 86	[  0]	ISNEN	  1		2	; if slot1 ~= 5
		 87	[  0]	JMP  	  4		48	; 	goto 136
		 88	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		 89	[  0]	ISEQS	  4		502	; if <unknown table>.subclass == "드루이드"
		 90	[  0]	JMP  	  4		8	; 	goto 99
		 91	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		 92	[  0]	ISEQS	  4		502	; if <unknown table>.subclassName == "드루이드"
		 93	[  0]	JMP  	  4		5	; 	goto 99
		 94	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		 95	[  0]	ISEQS	  4		502	; if <unknown table>.subclassKey == "드루이드"
		 96	[  0]	JMP  	  4		2	; 	goto 99
		 97	[  0]	KPRI 	  4		1	; slot4 = false
		 98	[  0]	JMP  	  5		1	; 	goto 100
		 99	[  0]	KPRI 	  4		2	; slot4 = true
		100	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		101	[  0]	ISEQS	  5		501	; if <unknown table>.subclass == "암검사"
		102	[  0]	JMP  	  5		8	; 	goto 111
		103	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		104	[  0]	ISEQS	  5		501	; if <unknown table>.subclassName == "암검사"
		105	[  0]	JMP  	  5		5	; 	goto 111
		106	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		107	[  0]	ISEQS	  5		501	; if <unknown table>.subclassKey == "암검사"
		108	[  0]	JMP  	  5		2	; 	goto 111
		109	[  0]	KPRI 	  5		1	; slot5 = false
		110	[  0]	JMP  	  6		1	; 	goto 112
		111	[  0]	KPRI 	  5		2	; slot5 = true
		112	[  0]	TGETS	  6	0	519	; slot6 = slot0.subclass
		113	[  0]	ISEQS	  6		500	; if <unknown table>.subclass == "마검사"
		114	[  0]	JMP  	  6		8	; 	goto 123
		115	[  0]	TGETS	  6	0	517	; slot6 = slot0.subclassName
		116	[  0]	ISEQS	  6		500	; if <unknown table>.subclassName == "마검사"
		117	[  0]	JMP  	  6		5	; 	goto 123
		118	[  0]	TGETS	  6	0	515	; slot6 = slot0.subclassKey
		119	[  0]	ISEQS	  6		500	; if <unknown table>.subclassKey == "마검사"
		120	[  0]	JMP  	  6		2	; 	goto 123
		121	[  0]	KPRI 	  6		1	; slot6 = false
		122	[  0]	JMP  	  7		1	; 	goto 124
		123	[  0]	KPRI 	  6		2	; slot6 = true
		124	[  0]	IST  	   		4	; if slot4
		125	[  0]	JMP  	  7		4	; 	goto 130
		126	[  0]	IST  	   		5	; if slot5
		127	[  0]	JMP  	  7		2	; 	goto 130
		128	[  0]	ISF  	   		6	; if not slot6
		129	[  0]	JMP  	  7		6	; 	goto 136
		130	[  0]	MOV  	  7		3	; slot7 = slot3
		131	[  0]	TNEW 	  9		3	; slot9 = new table( array: 3, dict: 1)
		132	[  0]	TDUP 	 10		499	; slot10 = copy table#k499
		133	[  0]	TSETB	 10	9	1	; slot9[1] = slot10
		134	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 135
		135	[  0]	CALLT	  7		2	; return slot7(slot8)
		136	[  0]	ISNEN	  1		3	; if slot1 ~= 4
		137	[  0]	JMP  	  4		100	; 	goto 238
		138	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		139	[  0]	ISEQS	  4		498	; if <unknown table>.subclass == "MiniSwordMan03"
		140	[  0]	JMP  	  4		8	; 	goto 149
		141	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		142	[  0]	ISEQS	  4		497	; if <unknown table>.subclassName == "기사"
		143	[  0]	JMP  	  4		5	; 	goto 149
		144	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		145	[  0]	ISEQS	  4		498	; if <unknown table>.subclassKey == "MiniSwordMan03"
		146	[  0]	JMP  	  4		2	; 	goto 149
		147	[  0]	KPRI 	  4		1	; slot4 = false
		148	[  0]	JMP  	  5		1	; 	goto 150
		149	[  0]	KPRI 	  4		2	; slot4 = true
		150	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		151	[  0]	ISEQS	  5		496	; if <unknown table>.subclass == "성기사"
		152	[  0]	JMP  	  5		8	; 	goto 161
		153	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		154	[  0]	ISEQS	  5		496	; if <unknown table>.subclassName == "성기사"
		155	[  0]	JMP  	  5		5	; 	goto 161
		156	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		157	[  0]	ISEQS	  5		496	; if <unknown table>.subclassKey == "성기사"
		158	[  0]	JMP  	  5		2	; 	goto 161
		159	[  0]	KPRI 	  5		1	; slot5 = false
		160	[  0]	JMP  	  6		1	; 	goto 162
		161	[  0]	KPRI 	  5		2	; slot5 = true
		162	[  0]	TGETS	  6	0	519	; slot6 = slot0.subclass
		163	[  0]	ISEQS	  6		495	; if <unknown table>.subclass == "엘프기사"
		164	[  0]	JMP  	  6		8	; 	goto 173
		165	[  0]	TGETS	  6	0	517	; slot6 = slot0.subclassName
		166	[  0]	ISEQS	  6		495	; if <unknown table>.subclassName == "엘프기사"
		167	[  0]	JMP  	  6		5	; 	goto 173
		168	[  0]	TGETS	  6	0	515	; slot6 = slot0.subclassKey
		169	[  0]	ISEQS	  6		495	; if <unknown table>.subclassKey == "엘프기사"
		170	[  0]	JMP  	  6		2	; 	goto 173
		171	[  0]	KPRI 	  6		1	; slot6 = false
		172	[  0]	JMP  	  7		1	; 	goto 174
		173	[  0]	KPRI 	  6		2	; slot6 = true
		174	[  0]	TGETS	  7	0	519	; slot7 = slot0.subclass
		175	[  0]	ISEQS	  7		494	; if <unknown table>.subclass == "해골 투사"
		176	[  0]	JMP  	  7		17	; 	goto 194
		177	[  0]	TGETS	  7	0	517	; slot7 = slot0.subclassName
		178	[  0]	ISEQS	  7		494	; if <unknown table>.subclassName == "해골 투사"
		179	[  0]	JMP  	  7		14	; 	goto 194
		180	[  0]	TGETS	  7	0	515	; slot7 = slot0.subclassKey
		181	[  0]	ISEQS	  7		494	; if <unknown table>.subclassKey == "해골 투사"
		182	[  0]	JMP  	  7		11	; 	goto 194
		183	[  0]	TGETS	  7	0	519	; slot7 = slot0.subclass
		184	[  0]	ISEQS	  7		493	; if <unknown table>.subclass == "해골기사"
		185	[  0]	JMP  	  7		8	; 	goto 194
		186	[  0]	TGETS	  7	0	517	; slot7 = slot0.subclassName
		187	[  0]	ISEQS	  7		493	; if <unknown table>.subclassName == "해골기사"
		188	[  0]	JMP  	  7		5	; 	goto 194
		189	[  0]	TGETS	  7	0	515	; slot7 = slot0.subclassKey
		190	[  0]	ISEQS	  7		493	; if <unknown table>.subclassKey == "해골기사"
		191	[  0]	JMP  	  7		2	; 	goto 194
		192	[  0]	KPRI 	  7		1	; slot7 = false
		193	[  0]	JMP  	  8		1	; 	goto 195
		194	[  0]	KPRI 	  7		2	; slot7 = true
		195	[  0]	ISF  	   		4	; if not slot4
		196	[  0]	JMP  	  8		7	; 	goto 204
		197	[  0]	MOV  	  8		3	; slot8 = slot3
		198	[  0]	TNEW 	 10		3	; slot10 = new table( array: 3, dict: 1)
		199	[  0]	TDUP 	 11		492	; slot11 = copy table#k492
		200	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		201	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 202
		202	[  0]	CALLT	  8		2	; return slot8(slot9)
		203	[  0]	JMP  	  8		34	; 	goto 238
		204	[  0]	ISF  	   		5	; if not slot5
		205	[  0]	JMP  	  8		9	; 	goto 215
		206	[  0]	MOV  	  8		3	; slot8 = slot3
		207	[  0]	TNEW 	 10		3	; slot10 = new table( array: 3, dict: 1)
		208	[  0]	TDUP 	 11		491	; slot11 = copy table#k491
		209	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		210	[  0]	TDUP 	 11		490	; slot11 = copy table#k490
		211	[  0]	TSETB	 11	10	2	; slot10[2] = slot11
		212	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 213
		213	[  0]	CALLT	  8		2	; return slot8(slot9)
		214	[  0]	JMP  	  8		23	; 	goto 238
		215	[  0]	ISF  	   		6	; if not slot6
		216	[  0]	JMP  	  8		7	; 	goto 224
		217	[  0]	MOV  	  8		3	; slot8 = slot3
		218	[  0]	TNEW 	 10		3	; slot10 = new table( array: 3, dict: 1)
		219	[  0]	TDUP 	 11		489	; slot11 = copy table#k489
		220	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		221	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 222
		222	[  0]	CALLT	  8		2	; return slot8(slot9)
		223	[  0]	JMP  	  8		14	; 	goto 238
		224	[  0]	ISF  	   		7	; if not slot7
		225	[  0]	JMP  	  8		12	; 	goto 238
		226	[  0]	MOV  	  8		3	; slot8 = slot3
		227	[  0]	TNEW 	 10		3	; slot10 = new table( array: 3, dict: 1)
		228	[  0]	TDUP 	 11		488	; slot11 = copy table#k488
		229	[  0]	TDUP 	 12		487	; slot12 = copy table#k487
		230	[  0]	TSETS	 12	11	510	; slot11.statArrows = slot12
		231	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		232	[  0]	TDUP 	 11		486	; slot11 = copy table#k486
		233	[  0]	TDUP 	 12		485	; slot12 = copy table#k485
		234	[  0]	TSETS	 12	11	510	; slot11.statArrows = slot12
		235	[  0]	TSETB	 11	10	2	; slot10[2] = slot11
		236	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 237
		237	[  0]	CALLT	  8		2	; return slot8(slot9)
		238	[  0]	ISNEN	  1		1	; if slot1 ~= 2
		239	[  0]	JMP  	  4		250	; 	goto 490
		240	[  0]	KPRI 	  4		1	; slot4 = false
		241	[  0]	GGET 	  5		484	; slot5 = _env["ipairs"]
		242	[  0]	TDUP 	  7		483	; slot7 = copy table#k483
		243	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		244	[  0]	JMP  	  8		9	; 	goto 254
		245	[  0]	TGETV	 10	0	9	; slot10 = slot0[slot9]
		246	[  0]	ISEQS	 10		482	; if slot10 == "슬레이어"
		247	[  0]	JMP  	 11		4	; 	goto 252
		248	[  0]	ISEQS	 10		481	; if slot10 == "Slayer"
		249	[  0]	JMP  	 11		2	; 	goto 252
		250	[  0]	ISNES	 10		480	; if slot10 ~= "슬레이어 (Slayer)"
		251	[  0]	JMP  	 11		2	; 	goto 254
		252	[  0]	KPRI 	  4		2	; slot4 = true
		253	[  0]	JMP  	  5		2	; 	goto 256
		254	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		255	[  0]	ITERL	  8		-11	; slot7 = slot8; if slot8 != nil goto 245
		256	[  0]	IST  	   		4	; if slot4
		257	[  0]	JMP  	  5		15	; 	goto 273
		258	[  0]	TGETS	  5	0	479	; slot5 = slot0.grade
		259	[  0]	ISEQS	  5		478	; if <unknown table>.grade == "prism"
		260	[  0]	JMP  	  5		3	; 	goto 264
		261	[  0]	TGETS	  5	0	477	; slot5 = slot0.jackpot5th
		262	[  0]	ISNEP	  5		2	; if <unknown table>.jackpot5th ~= true
		263	[  0]	JMP  	  5		21	; 	goto 285
		264	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		265	[  0]	IST  	   		5	; if <unknown table>.subclass
		266	[  0]	JMP  	  6		18	; 	goto 285
		267	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		268	[  0]	IST  	   		5	; if <unknown table>.subclassName
		269	[  0]	JMP  	  6		15	; 	goto 285
		270	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		271	[  0]	IST  	   		5	; if <unknown table>.subclassKey
		272	[  0]	JMP  	  5		12	; 	goto 285
		273	[  0]	MOV  	  5		3	; slot5 = slot3
		274	[  0]	TNEW 	  7		3	; slot7 = new table( array: 3, dict: 1)
		275	[  0]	TDUP 	  8		476	; slot8 = copy table#k476
		276	[  0]	TDUP 	  9		475	; slot9 = copy table#k475
		277	[  0]	TSETS	  9	8	510	; slot8.statArrows = slot9
		278	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
		279	[  0]	TDUP 	  8		474	; slot8 = copy table#k474
		280	[  0]	TDUP 	  9		473	; slot9 = copy table#k473
		281	[  0]	TSETS	  9	8	510	; slot8.statArrows = slot9
		282	[  0]	TSETB	  8	7	2	; slot7[2] = slot8
		283	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 284
		284	[  0]	CALLT	  5		2	; return slot5(slot6)
		285	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		286	[  0]	ISEQS	  5		472	; if <unknown table>.subclass == "철퇴병"
		287	[  0]	JMP  	  5		8	; 	goto 296
		288	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		289	[  0]	ISEQS	  5		472	; if <unknown table>.subclassName == "철퇴병"
		290	[  0]	JMP  	  5		5	; 	goto 296
		291	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		292	[  0]	ISEQS	  5		472	; if <unknown table>.subclassKey == "철퇴병"
		293	[  0]	JMP  	  5		2	; 	goto 296
		294	[  0]	KPRI 	  5		1	; slot5 = false
		295	[  0]	JMP  	  6		1	; 	goto 297
		296	[  0]	KPRI 	  5		2	; slot5 = true
		297	[  0]	TGETS	  6	0	519	; slot6 = slot0.subclass
		298	[  0]	ISEQS	  6		471	; if <unknown table>.subclass == "투사"
		299	[  0]	JMP  	  6		8	; 	goto 308
		300	[  0]	TGETS	  6	0	517	; slot6 = slot0.subclassName
		301	[  0]	ISEQS	  6		471	; if <unknown table>.subclassName == "투사"
		302	[  0]	JMP  	  6		5	; 	goto 308
		303	[  0]	TGETS	  6	0	515	; slot6 = slot0.subclassKey
		304	[  0]	ISEQS	  6		471	; if <unknown table>.subclassKey == "투사"
		305	[  0]	JMP  	  6		2	; 	goto 308
		306	[  0]	KPRI 	  6		1	; slot6 = false
		307	[  0]	JMP  	  7		1	; 	goto 309
		308	[  0]	KPRI 	  6		2	; slot6 = true
		309	[  0]	TGETS	  7	0	519	; slot7 = slot0.subclass
		310	[  0]	ISEQS	  7		494	; if <unknown table>.subclass == "해골 투사"
		311	[  0]	JMP  	  7		17	; 	goto 329
		312	[  0]	TGETS	  7	0	517	; slot7 = slot0.subclassName
		313	[  0]	ISEQS	  7		494	; if <unknown table>.subclassName == "해골 투사"
		314	[  0]	JMP  	  7		14	; 	goto 329
		315	[  0]	TGETS	  7	0	515	; slot7 = slot0.subclassKey
		316	[  0]	ISEQS	  7		494	; if <unknown table>.subclassKey == "해골 투사"
		317	[  0]	JMP  	  7		11	; 	goto 329
		318	[  0]	TGETS	  7	0	519	; slot7 = slot0.subclass
		319	[  0]	ISEQS	  7		493	; if <unknown table>.subclass == "해골기사"
		320	[  0]	JMP  	  7		8	; 	goto 329
		321	[  0]	TGETS	  7	0	517	; slot7 = slot0.subclassName
		322	[  0]	ISEQS	  7		493	; if <unknown table>.subclassName == "해골기사"
		323	[  0]	JMP  	  7		5	; 	goto 329
		324	[  0]	TGETS	  7	0	515	; slot7 = slot0.subclassKey
		325	[  0]	ISEQS	  7		493	; if <unknown table>.subclassKey == "해골기사"
		326	[  0]	JMP  	  7		2	; 	goto 329
		327	[  0]	KPRI 	  7		1	; slot7 = false
		328	[  0]	JMP  	  8		1	; 	goto 330
		329	[  0]	KPRI 	  7		2	; slot7 = true
		330	[  0]	MOV  	  8		3	; slot8 = slot3
		331	[  0]	TNEW 	 10		3	; slot10 = new table( array: 3, dict: 1)
		332	[  0]	TDUP 	 11		469	; slot11 = copy table#k469
		333	[  0]	ISF  	   		5	; if not slot5
		334	[  0]	JMP  	 12		2	; 	goto 337
		335	[  0]	KSTR 	 12		470	; slot12 = "엘프병사"
		336	[  0]	JMP  	 13		9	; 	goto 346
		337	[  0]	ISF  	   		6	; if not slot6
		338	[  0]	JMP  	 12		2	; 	goto 341
		339	[  0]	KSTR 	 12		496	; slot12 = "성기사"
		340	[  0]	JMP  	 13		5	; 	goto 346
		341	[  0]	ISF  	   		7	; if not slot7
		342	[  0]	JMP  	 12		2	; 	goto 345
		343	[  0]	KSTR 	 12		500	; slot12 = "마검사"
		344	[  0]	JMP  	 13		1	; 	goto 346
		345	[  0]	KSTR 	 12		468	; slot12 = "MiniSwordMan02"
		346	[  0]	TSETS	 12	11	467	; slot11.id = slot12
		347	[  0]	ISF  	   		5	; if not slot5
		348	[  0]	JMP  	 12		2	; 	goto 351
		349	[  0]	KSTR 	 12		470	; slot12 = "엘프병사"
		350	[  0]	JMP  	 13		9	; 	goto 360
		351	[  0]	ISF  	   		6	; if not slot6
		352	[  0]	JMP  	 12		2	; 	goto 355
		353	[  0]	KSTR 	 12		496	; slot12 = "성기사"
		354	[  0]	JMP  	 13		5	; 	goto 360
		355	[  0]	ISF  	   		7	; if not slot7
		356	[  0]	JMP  	 12		2	; 	goto 359
		357	[  0]	KSTR 	 12		500	; slot12 = "마검사"
		358	[  0]	JMP  	 13		1	; 	goto 360
		359	[  0]	KSTR 	 12		466	; slot12 = "병사"
		360	[  0]	TSETS	 12	11	465	; slot11.name = slot12
		361	[  0]	ISF  	   		5	; if not slot5
		362	[  0]	JMP  	 12		2	; 	goto 365
		363	[  0]	KSTR 	 12		470	; slot12 = "엘프병사"
		364	[  0]	JMP  	 13		9	; 	goto 374
		365	[  0]	ISF  	   		6	; if not slot6
		366	[  0]	JMP  	 12		2	; 	goto 369
		367	[  0]	KSTR 	 12		496	; slot12 = "성기사"
		368	[  0]	JMP  	 13		5	; 	goto 374
		369	[  0]	ISF  	   		7	; if not slot7
		370	[  0]	JMP  	 12		2	; 	goto 373
		371	[  0]	KSTR 	 12		500	; slot12 = "마검사"
		372	[  0]	JMP  	 13		1	; 	goto 374
		373	[  0]	KSTR 	 12		468	; slot12 = "MiniSwordMan02"
		374	[  0]	TSETS	 12	11	464	; slot11.asset = slot12
		375	[  0]	ISF  	   		7	; if not slot7
		376	[  0]	JMP  	 12		2	; 	goto 379
		377	[  0]	KSTR 	 12		463	; slot12 = "균형형"
		378	[  0]	JMP  	 13		1	; 	goto 380
		379	[  0]	KPRI 	 12		0	; slot12 = nil
		380	[  0]	TSETS	 12	11	462	; slot11.classType = slot12
		381	[  0]	ISF  	   		7	; if not slot7
		382	[  0]	JMP  	 12		3	; 	goto 386
		383	[  0]	TDUP 	 12		461	; slot12 = copy table#k461
		384	[  0]	IST  	   		12	; if slot12
		385	[  0]	JMP  	 13		1	; 	goto 387
		386	[  0]	KPRI 	 12		0	; slot12 = nil
		387	[  0]	TSETS	 12	11	510	; slot11.statArrows = slot12
		388	[  0]	ISF  	   		5	; if not slot5
		389	[  0]	JMP  	 12		2	; 	goto 392
		390	[  0]	KSTR 	 12		460	; slot12 = "민첩 특화 승급"
		391	[  0]	JMP  	 13		9	; 	goto 401
		392	[  0]	ISF  	   		6	; if not slot6
		393	[  0]	JMP  	 12		2	; 	goto 396
		394	[  0]	KSTR 	 12		459	; slot12 = "성역 수호 특화 승급"
		395	[  0]	JMP  	 13		5	; 	goto 401
		396	[  0]	ISF  	   		7	; if not slot7
		397	[  0]	JMP  	 12		2	; 	goto 400
		398	[  0]	KSTR 	 12		458	; slot12 = "공포 시선 특화 승급"
		399	[  0]	JMP  	 13		1	; 	goto 401
		400	[  0]	KSTR 	 12		457	; slot12 = "기본 전사 상위 승급"
		401	[  0]	TSETS	 12	11	456	; slot11.skillDesc = slot12
		402	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		403	[  0]	TDUP 	 11		453	; slot11 = copy table#k453
		404	[  0]	ISF  	   		5	; if not slot5
		405	[  0]	JMP  	 12		2	; 	goto 408
		406	[  0]	KSTR 	 12		455	; slot12 = "사수 병사"
		407	[  0]	JMP  	 13		9	; 	goto 417
		408	[  0]	ISF  	   		6	; if not slot6
		409	[  0]	JMP  	 12		2	; 	goto 412
		410	[  0]	KSTR 	 12		454	; slot12 = "염투사"
		411	[  0]	JMP  	 13		5	; 	goto 417
		412	[  0]	ISF  	   		7	; if not slot7
		413	[  0]	JMP  	 12		2	; 	goto 416
		414	[  0]	KSTR 	 12		501	; slot12 = "암검사"
		415	[  0]	JMP  	 13		1	; 	goto 417
		416	[  0]	KSTR 	 12		452	; slot12 = "해적"
		417	[  0]	TSETS	 12	11	467	; slot11.id = slot12
		418	[  0]	ISF  	   		5	; if not slot5
		419	[  0]	JMP  	 12		2	; 	goto 422
		420	[  0]	KSTR 	 12		455	; slot12 = "사수 병사"
		421	[  0]	JMP  	 13		9	; 	goto 431
		422	[  0]	ISF  	   		6	; if not slot6
		423	[  0]	JMP  	 12		2	; 	goto 426
		424	[  0]	KSTR 	 12		454	; slot12 = "염투사"
		425	[  0]	JMP  	 13		5	; 	goto 431
		426	[  0]	ISF  	   		7	; if not slot7
		427	[  0]	JMP  	 12		2	; 	goto 430
		428	[  0]	KSTR 	 12		501	; slot12 = "암검사"
		429	[  0]	JMP  	 13		1	; 	goto 431
		430	[  0]	KSTR 	 12		452	; slot12 = "해적"
		431	[  0]	TSETS	 12	11	465	; slot11.name = slot12
		432	[  0]	ISF  	   		5	; if not slot5
		433	[  0]	JMP  	 12		2	; 	goto 436
		434	[  0]	KSTR 	 12		455	; slot12 = "사수 병사"
		435	[  0]	JMP  	 13		9	; 	goto 445
		436	[  0]	ISF  	   		6	; if not slot6
		437	[  0]	JMP  	 12		2	; 	goto 440
		438	[  0]	KSTR 	 12		454	; slot12 = "염투사"
		439	[  0]	JMP  	 13		5	; 	goto 445
		440	[  0]	ISF  	   		7	; if not slot7
		441	[  0]	JMP  	 12		2	; 	goto 444
		442	[  0]	KSTR 	 12		501	; slot12 = "암검사"
		443	[  0]	JMP  	 13		1	; 	goto 445
		444	[  0]	KSTR 	 12		452	; slot12 = "해적"
		445	[  0]	TSETS	 12	11	464	; slot11.asset = slot12
		446	[  0]	ISF  	   		7	; if not slot7
		447	[  0]	JMP  	 12		2	; 	goto 450
		448	[  0]	KSTR 	 12		451	; slot12 = "치명형"
		449	[  0]	JMP  	 13		1	; 	goto 451
		450	[  0]	KPRI 	 12		0	; slot12 = nil
		451	[  0]	TSETS	 12	11	462	; slot11.classType = slot12
		452	[  0]	ISF  	   		7	; if not slot7
		453	[  0]	JMP  	 12		3	; 	goto 457
		454	[  0]	TDUP 	 12		450	; slot12 = copy table#k450
		455	[  0]	IST  	   		12	; if slot12
		456	[  0]	JMP  	 13		1	; 	goto 458
		457	[  0]	KPRI 	 12		0	; slot12 = nil
		458	[  0]	TSETS	 12	11	510	; slot11.statArrows = slot12
		459	[  0]	ISF  	   		5	; if not slot5
		460	[  0]	JMP  	 12		2	; 	goto 463
		461	[  0]	KSTR 	 12		449	; slot12 = "승급 특성"
		462	[  0]	JMP  	 13		9	; 	goto 472
		463	[  0]	ISF  	   		6	; if not slot6
		464	[  0]	JMP  	 12		2	; 	goto 467
		465	[  0]	KSTR 	 12		449	; slot12 = "승급 특성"
		466	[  0]	JMP  	 13		5	; 	goto 472
		467	[  0]	ISF  	   		7	; if not slot7
		468	[  0]	JMP  	 12		2	; 	goto 471
		469	[  0]	KSTR 	 12		449	; slot12 = "승급 특성"
		470	[  0]	JMP  	 13		1	; 	goto 472
		471	[  0]	KSTR 	 12		448	; slot12 = "칼날 파동"
		472	[  0]	TSETS	 12	11	447	; slot11.skillName = slot12
		473	[  0]	ISF  	   		5	; if not slot5
		474	[  0]	JMP  	 12		2	; 	goto 477
		475	[  0]	KSTR 	 12		446	; slot12 = "자연 특화 승급"
		476	[  0]	JMP  	 13		9	; 	goto 486
		477	[  0]	ISF  	   		6	; if not slot6
		478	[  0]	JMP  	 12		2	; 	goto 481
		479	[  0]	KSTR 	 12		445	; slot12 = "화염 수호 특화 승급"
		480	[  0]	JMP  	 13		5	; 	goto 486
		481	[  0]	ISF  	   		7	; if not slot7
		482	[  0]	JMP  	 12		2	; 	goto 485
		483	[  0]	KSTR 	 12		444	; slot12 = "침묵 오라 특화 승급"
		484	[  0]	JMP  	 13		1	; 	goto 486
		485	[  0]	KSTR 	 12		443	; slot12 = "4초마다 공격력 100%를 최대 2명에게 파동 타격"
		486	[  0]	TSETS	 12	11	456	; slot11.skillDesc = slot12
		487	[  0]	TSETB	 11	10	2	; slot10[2] = slot11
		488	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 489
		489	[  0]	CALLT	  8		2	; return slot8(slot9)
		490	[  0]	ISNEN	  1		0	; if slot1 ~= 3
		491	[  0]	JMP  	  4		36	; 	goto 528
		492	[  0]	GGET 	  4		484	; slot4 = _env["ipairs"]
		493	[  0]	TDUP 	  6		442	; slot6 = copy table#k442
		494	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		495	[  0]	JMP  	  7		30	; 	goto 526
		496	[  0]	TGETV	  9	0	8	; slot9 = slot0[slot8]
		497	[  0]	ISEQS	  9		441	; if slot9 == "듀라한"
		498	[  0]	JMP  	 10		4	; 	goto 503
		499	[  0]	ISEQS	  9		440	; if slot9 == "Dullahan"
		500	[  0]	JMP  	 10		2	; 	goto 503
		501	[  0]	ISNES	  9		439	; if slot9 ~= "듀라한 (Dullahan)"
		502	[  0]	JMP  	 10		9	; 	goto 512
		503	[  0]	MOV  	 10		3	; slot10 = slot3
		504	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		505	[  0]	TDUP 	 13		438	; slot13 = copy table#k438
		506	[  0]	TDUP 	 14		437	; slot14 = copy table#k437
		507	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		508	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		509	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 510
		510	[  0]	CALLT	 10		2	; return slot10(slot11)
		511	[  0]	JMP  	 10		14	; 	goto 526
		512	[  0]	ISEQS	  9		436	; if slot9 == "백기사"
		513	[  0]	JMP  	 10		4	; 	goto 518
		514	[  0]	ISEQS	  9		435	; if slot9 == "White Knight"
		515	[  0]	JMP  	 10		2	; 	goto 518
		516	[  0]	ISNES	  9		434	; if slot9 ~= "백기사 (White Knight)"
		517	[  0]	JMP  	 10		8	; 	goto 526
		518	[  0]	MOV  	 10		3	; slot10 = slot3
		519	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		520	[  0]	TDUP 	 13		433	; slot13 = copy table#k433
		521	[  0]	TDUP 	 14		432	; slot14 = copy table#k432
		522	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		523	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		524	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 525
		525	[  0]	CALLT	 10		2	; return slot10(slot11)
		526	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, slot6; slot7, slot8 = ipairs(slot5, slot6)
		527	[  0]	ITERL	  7		-32	; slot6 = slot7; if slot7 != nil goto 496
		528	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		529	[  0]	ISEQS	  4		468	; if <unknown table>.subclass == "MiniSwordMan02"
		530	[  0]	JMP  	  4		6	; 	goto 537
		531	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		532	[  0]	ISEQS	  4		466	; if <unknown table>.subclassName == "병사"
		533	[  0]	JMP  	  4		3	; 	goto 537
		534	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		535	[  0]	ISNES	  4		468	; if <unknown table>.subclassKey ~= "MiniSwordMan02"
		536	[  0]	JMP  	  4		6	; 	goto 543
		537	[  0]	MOV  	  4		3	; slot4 = slot3
		538	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		539	[  0]	TDUP 	  7		431	; slot7 = copy table#k431
		540	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		541	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 542
		542	[  0]	CALLT	  4		2	; return slot4(slot5)
		543	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		544	[  0]	ISEQS	  4		452	; if <unknown table>.subclass == "해적"
		545	[  0]	JMP  	  4		6	; 	goto 552
		546	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		547	[  0]	ISEQS	  4		452	; if <unknown table>.subclassName == "해적"
		548	[  0]	JMP  	  4		3	; 	goto 552
		549	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		550	[  0]	ISNES	  4		452	; if <unknown table>.subclassKey ~= "해적"
		551	[  0]	JMP  	  4		6	; 	goto 558
		552	[  0]	MOV  	  4		3	; slot4 = slot3
		553	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		554	[  0]	TDUP 	  7		430	; slot7 = copy table#k430
		555	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		556	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 557
		557	[  0]	CALLT	  4		2	; return slot4(slot5)
		558	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		559	[  0]	ISEQS	  4		470	; if <unknown table>.subclass == "엘프병사"
		560	[  0]	JMP  	  4		6	; 	goto 567
		561	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		562	[  0]	ISEQS	  4		470	; if <unknown table>.subclassName == "엘프병사"
		563	[  0]	JMP  	  4		3	; 	goto 567
		564	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		565	[  0]	ISNES	  4		470	; if <unknown table>.subclassKey ~= "엘프병사"
		566	[  0]	JMP  	  4		6	; 	goto 573
		567	[  0]	MOV  	  4		3	; slot4 = slot3
		568	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		569	[  0]	TDUP 	  7		429	; slot7 = copy table#k429
		570	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		571	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 572
		572	[  0]	CALLT	  4		2	; return slot4(slot5)
		573	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		574	[  0]	ISEQS	  4		455	; if <unknown table>.subclass == "사수 병사"
		575	[  0]	JMP  	  4		6	; 	goto 582
		576	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		577	[  0]	ISEQS	  4		455	; if <unknown table>.subclassName == "사수 병사"
		578	[  0]	JMP  	  4		3	; 	goto 582
		579	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		580	[  0]	ISNES	  4		455	; if <unknown table>.subclassKey ~= "사수 병사"
		581	[  0]	JMP  	  4		6	; 	goto 588
		582	[  0]	MOV  	  4		3	; slot4 = slot3
		583	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		584	[  0]	TDUP 	  7		428	; slot7 = copy table#k428
		585	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		586	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 587
		587	[  0]	CALLT	  4		2	; return slot4(slot5)
		588	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		589	[  0]	ISEQS	  4		496	; if <unknown table>.subclass == "성기사"
		590	[  0]	JMP  	  4		6	; 	goto 597
		591	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		592	[  0]	ISEQS	  4		496	; if <unknown table>.subclassName == "성기사"
		593	[  0]	JMP  	  4		3	; 	goto 597
		594	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		595	[  0]	ISNES	  4		496	; if <unknown table>.subclassKey ~= "성기사"
		596	[  0]	JMP  	  4		6	; 	goto 603
		597	[  0]	MOV  	  4		3	; slot4 = slot3
		598	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		599	[  0]	TDUP 	  7		427	; slot7 = copy table#k427
		600	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		601	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 602
		602	[  0]	CALLT	  4		2	; return slot4(slot5)
		603	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		604	[  0]	ISEQS	  4		454	; if <unknown table>.subclass == "염투사"
		605	[  0]	JMP  	  4		6	; 	goto 612
		606	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		607	[  0]	ISEQS	  4		454	; if <unknown table>.subclassName == "염투사"
		608	[  0]	JMP  	  4		3	; 	goto 612
		609	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		610	[  0]	ISNES	  4		454	; if <unknown table>.subclassKey ~= "염투사"
		611	[  0]	JMP  	  4		6	; 	goto 618
		612	[  0]	MOV  	  4		3	; slot4 = slot3
		613	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		614	[  0]	TDUP 	  7		426	; slot7 = copy table#k426
		615	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		616	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 617
		617	[  0]	CALLT	  4		2	; return slot4(slot5)
		618	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		619	[  0]	ISEQS	  4		500	; if <unknown table>.subclass == "마검사"
		620	[  0]	JMP  	  4		6	; 	goto 627
		621	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		622	[  0]	ISEQS	  4		500	; if <unknown table>.subclassName == "마검사"
		623	[  0]	JMP  	  4		3	; 	goto 627
		624	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		625	[  0]	ISNES	  4		500	; if <unknown table>.subclassKey ~= "마검사"
		626	[  0]	JMP  	  4		8	; 	goto 635
		627	[  0]	MOV  	  4		3	; slot4 = slot3
		628	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		629	[  0]	TDUP 	  7		425	; slot7 = copy table#k425
		630	[  0]	TDUP 	  8		424	; slot8 = copy table#k424
		631	[  0]	TSETS	  8	7	510	; slot7.statArrows = slot8
		632	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		633	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 634
		634	[  0]	CALLT	  4		2	; return slot4(slot5)
		635	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		636	[  0]	ISEQS	  4		501	; if <unknown table>.subclass == "암검사"
		637	[  0]	JMP  	  4		6	; 	goto 644
		638	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		639	[  0]	ISEQS	  4		501	; if <unknown table>.subclassName == "암검사"
		640	[  0]	JMP  	  4		3	; 	goto 644
		641	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		642	[  0]	ISNES	  4		501	; if <unknown table>.subclassKey ~= "암검사"
		643	[  0]	JMP  	  4		8	; 	goto 652
		644	[  0]	MOV  	  4		3	; slot4 = slot3
		645	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		646	[  0]	TDUP 	  7		423	; slot7 = copy table#k423
		647	[  0]	TDUP 	  8		422	; slot8 = copy table#k422
		648	[  0]	TSETS	  8	7	510	; slot7.statArrows = slot8
		649	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		650	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 651
		651	[  0]	CALLT	  4		2	; return slot4(slot5)
		652	[  0]	TDUP 	  4		421	; slot4 = copy table#k421
		653	[  0]	TNEW 	  5		3	; slot5 = new table( array: 3, dict: 1)
		654	[  0]	TDUP 	  6		420	; slot6 = copy table#k420
		655	[  0]	TSETB	  6	5	1	; slot5[1] = slot6
		656	[  0]	TDUP 	  6		419	; slot6 = copy table#k419
		657	[  0]	TSETB	  6	5	2	; slot5[2] = slot6
		658	[  0]	GGET 	  6		418	; slot6 = _env["love"]
		659	[  0]	TGETS	  6	6	417	; slot6 = love.math
		660	[  0]	TGETS	  6	6	416	; slot6 = love.math.random
		661	[  0]	KSHORT	  8		1	; slot8 = 1
		662	[  0]	LEN  	  9		5	; slot9 = #slot5
		663	[  0]	CALL 	  6	2	3	; slot6 = love.math.random(slot7, slot8)
		664	[  0]	TGETV	  7	5	6	; slot7 = slot5[love.math.random]
		665	[  0]	ISNEN	  6		4	; if love.math.random ~= 1
		666	[  0]	JMP  	  8		2	; 	goto 669
		667	[  0]	KSHORT	  8		2	; slot8 = 2
		668	[  0]	JMP  	  9		1	; 	goto 670
		669	[  0]	KSHORT	  8		1	; slot8 = 1
		670	[  0]	TGETV	  8	5	8	; slot8 = slot5[slot8]
		671	[  0]	MOV  	  9		3	; slot9 = slot3
		672	[  0]	TNEW 	 11		4	; slot11 = new table( array: 4, dict: 1)
		673	[  0]	TSETB	  4	11	1	; slot11[1] = slot4
		674	[  0]	TSETB	  7	11	2	; slot11[2] = slot7
		675	[  0]	TSETB	  8	11	3	; slot11[3] = slot8
		676	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 677
		677	[  0]	CALLT	  9		2	; return slot9(slot10)
		678	[  0]	JMP  	  4		2415	; 	goto 3094
		679	[  0]	TGETS	  4	0	522	; slot4 = slot0.sym
		680	[  0]	ISNES	  4		415	; if <unknown table>.sym ~= "A"
		681	[  0]	JMP  	  4		426	; 	goto 1108
		682	[  0]	ISNEN	  1		1	; if slot1 ~= 2
		683	[  0]	JMP  	  4		108	; 	goto 792
		684	[  0]	GGET 	  4		414	; slot4 = _env["require"]
		685	[  0]	KSTR 	  6		413	; slot6 = "src.game.projectiles"
		686	[  0]	CALL 	  4	2	2	; slot4 = require(slot5)
		687	[  0]	TGETS	  4	4	412	; slot4 = require.gunslinger_bullet
		688	[  0]	TGETS	  4	4	411	; slot4 = require.gunslinger_bullet.isSharpshooter
		689	[  0]	MOV  	  6		0	; slot6 = slot0
		690	[  0]	CALL 	  4	2	2	; slot4 = require.gunslinger_bullet.isSharpshooter(slot5)
		691	[  0]	IST  	   		4	; if require.gunslinger_bullet.isSharpshooter
		692	[  0]	JMP  	  5		15	; 	goto 708
		693	[  0]	TGETS	  4	0	479	; slot4 = slot0.grade
		694	[  0]	ISEQS	  4		478	; if <unknown table>.grade == "prism"
		695	[  0]	JMP  	  4		3	; 	goto 699
		696	[  0]	TGETS	  4	0	477	; slot4 = slot0.jackpot5th
		697	[  0]	ISNEP	  4		2	; if <unknown table>.jackpot5th ~= true
		698	[  0]	JMP  	  4		21	; 	goto 720
		699	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		700	[  0]	IST  	   		4	; if <unknown table>.subclass
		701	[  0]	JMP  	  5		18	; 	goto 720
		702	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		703	[  0]	IST  	   		4	; if <unknown table>.subclassName
		704	[  0]	JMP  	  5		15	; 	goto 720
		705	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		706	[  0]	IST  	   		4	; if <unknown table>.subclassKey
		707	[  0]	JMP  	  4		12	; 	goto 720
		708	[  0]	MOV  	  4		3	; slot4 = slot3
		709	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		710	[  0]	TDUP 	  7		410	; slot7 = copy table#k410
		711	[  0]	TDUP 	  8		409	; slot8 = copy table#k409
		712	[  0]	TSETS	  8	7	510	; slot7.statArrows = slot8
		713	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		714	[  0]	TDUP 	  7		408	; slot7 = copy table#k408
		715	[  0]	TDUP 	  8		407	; slot8 = copy table#k407
		716	[  0]	TSETS	  8	7	510	; slot7.statArrows = slot8
		717	[  0]	TSETB	  7	6	2	; slot6[2] = slot7
		718	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 719
		719	[  0]	CALLT	  4		2	; return slot4(slot5)
		720	[  0]	GGET 	  4		484	; slot4 = _env["ipairs"]
		721	[  0]	TDUP 	  6		406	; slot6 = copy table#k406
		722	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		723	[  0]	JMP  	  7		19	; 	goto 743
		724	[  0]	TGETV	  9	0	8	; slot9 = slot0[slot8]
		725	[  0]	ISEQS	  9		405	; if slot9 == "해골궁수"
		726	[  0]	JMP  	 10		4	; 	goto 731
		727	[  0]	ISEQS	  9		404	; if slot9 == "Skeleton Archer"
		728	[  0]	JMP  	 10		2	; 	goto 731
		729	[  0]	ISNES	  9		403	; if slot9 ~= "해골궁수 (Skeleton Archer)"
		730	[  0]	JMP  	 10		12	; 	goto 743
		731	[  0]	MOV  	 10		3	; slot10 = slot3
		732	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		733	[  0]	TDUP 	 13		402	; slot13 = copy table#k402
		734	[  0]	TDUP 	 14		401	; slot14 = copy table#k401
		735	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		736	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		737	[  0]	TDUP 	 13		400	; slot13 = copy table#k400
		738	[  0]	TDUP 	 14		399	; slot14 = copy table#k399
		739	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		740	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		741	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 742
		742	[  0]	CALLT	 10		2	; return slot10(slot11)
		743	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, slot6; slot7, slot8 = ipairs(slot5, slot6)
		744	[  0]	ITERL	  7		-21	; slot6 = slot7; if slot7 != nil goto 724
		745	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		746	[  0]	ISEQS	  4		398	; if <unknown table>.subclass == "총포수"
		747	[  0]	JMP  	  4		6	; 	goto 754
		748	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		749	[  0]	ISEQS	  4		398	; if <unknown table>.subclassName == "총포수"
		750	[  0]	JMP  	  4		3	; 	goto 754
		751	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		752	[  0]	ISNES	  4		398	; if <unknown table>.subclassKey ~= "총포수"
		753	[  0]	JMP  	  4		8	; 	goto 762
		754	[  0]	MOV  	  4		3	; slot4 = slot3
		755	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		756	[  0]	TDUP 	  7		397	; slot7 = copy table#k397
		757	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		758	[  0]	TDUP 	  7		396	; slot7 = copy table#k396
		759	[  0]	TSETB	  7	6	2	; slot6[2] = slot7
		760	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 761
		761	[  0]	CALLT	  4		2	; return slot4(slot5)
		762	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		763	[  0]	ISEQS	  4		395	; if <unknown table>.subclass == "정찰병"
		764	[  0]	JMP  	  4		8	; 	goto 773
		765	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		766	[  0]	ISEQS	  4		395	; if <unknown table>.subclassName == "정찰병"
		767	[  0]	JMP  	  4		5	; 	goto 773
		768	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		769	[  0]	ISEQS	  4		395	; if <unknown table>.subclassKey == "정찰병"
		770	[  0]	JMP  	  4		2	; 	goto 773
		771	[  0]	KPRI 	  4		1	; slot4 = false
		772	[  0]	JMP  	  5		1	; 	goto 774
		773	[  0]	KPRI 	  4		2	; slot4 = true
		774	[  0]	ISF  	   		4	; if not slot4
		775	[  0]	JMP  	  5		8	; 	goto 784
		776	[  0]	MOV  	  5		3	; slot5 = slot3
		777	[  0]	TNEW 	  7		3	; slot7 = new table( array: 3, dict: 1)
		778	[  0]	TDUP 	  8		394	; slot8 = copy table#k394
		779	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
		780	[  0]	TDUP 	  8		393	; slot8 = copy table#k393
		781	[  0]	TSETB	  8	7	2	; slot7[2] = slot8
		782	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 783
		783	[  0]	CALLT	  5		2	; return slot5(slot6)
		784	[  0]	MOV  	  5		3	; slot5 = slot3
		785	[  0]	TNEW 	  7		3	; slot7 = new table( array: 3, dict: 1)
		786	[  0]	TDUP 	  8		392	; slot8 = copy table#k392
		787	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
		788	[  0]	TDUP 	  8		391	; slot8 = copy table#k391
		789	[  0]	TSETB	  8	7	2	; slot7[2] = slot8
		790	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 791
		791	[  0]	CALLT	  5		2	; return slot5(slot6)
		792	[  0]	ISNEN	  1		0	; if slot1 ~= 3
		793	[  0]	JMP  	  4		189	; 	goto 983
		794	[  0]	GGET 	  4		414	; slot4 = _env["require"]
		795	[  0]	KSTR 	  6		413	; slot6 = "src.game.projectiles"
		796	[  0]	CALL 	  4	2	2	; slot4 = require(slot5)
		797	[  0]	TGETS	  4	4	412	; slot4 = require.gunslinger_bullet
		798	[  0]	TGETS	  4	4	390	; slot4 = require.gunslinger_bullet.isSilverSniper
		799	[  0]	MOV  	  6		0	; slot6 = slot0
		800	[  0]	CALL 	  4	2	2	; slot4 = require.gunslinger_bullet.isSilverSniper(slot5)
		801	[  0]	ISF  	   		4	; if not require.gunslinger_bullet.isSilverSniper
		802	[  0]	JMP  	  5		8	; 	goto 811
		803	[  0]	MOV  	  4		3	; slot4 = slot3
		804	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		805	[  0]	TDUP 	  7		389	; slot7 = copy table#k389
		806	[  0]	TDUP 	  8		388	; slot8 = copy table#k388
		807	[  0]	TSETS	  8	7	510	; slot7.statArrows = slot8
		808	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		809	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 810
		810	[  0]	CALLT	  4		2	; return slot4(slot5)
		811	[  0]	GGET 	  4		414	; slot4 = _env["require"]
		812	[  0]	KSTR 	  6		413	; slot6 = "src.game.projectiles"
		813	[  0]	CALL 	  4	2	2	; slot4 = require(slot5)
		814	[  0]	TGETS	  4	4	412	; slot4 = require.gunslinger_bullet
		815	[  0]	TGETS	  4	4	387	; slot4 = require.gunslinger_bullet.isCupid
		816	[  0]	MOV  	  6		0	; slot6 = slot0
		817	[  0]	CALL 	  4	2	2	; slot4 = require.gunslinger_bullet.isCupid(slot5)
		818	[  0]	ISF  	   		4	; if not require.gunslinger_bullet.isCupid
		819	[  0]	JMP  	  5		8	; 	goto 828
		820	[  0]	MOV  	  4		3	; slot4 = slot3
		821	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		822	[  0]	TDUP 	  7		386	; slot7 = copy table#k386
		823	[  0]	TDUP 	  8		385	; slot8 = copy table#k385
		824	[  0]	TSETS	  8	7	510	; slot7.statArrows = slot8
		825	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		826	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 827
		827	[  0]	CALLT	  4		2	; return slot4(slot5)
		828	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		829	[  0]	ISEQS	  4		384	; if <unknown table>.subclass == "MiniArcherMan02"
		830	[  0]	JMP  	  4		8	; 	goto 839
		831	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		832	[  0]	ISEQS	  4		383	; if <unknown table>.subclassName == "석궁수"
		833	[  0]	JMP  	  4		5	; 	goto 839
		834	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		835	[  0]	ISEQS	  4		384	; if <unknown table>.subclassKey == "MiniArcherMan02"
		836	[  0]	JMP  	  4		2	; 	goto 839
		837	[  0]	KPRI 	  4		1	; slot4 = false
		838	[  0]	JMP  	  5		1	; 	goto 840
		839	[  0]	KPRI 	  4		2	; slot4 = true
		840	[  0]	GGET 	  5		484	; slot5 = _env["ipairs"]
		841	[  0]	TDUP 	  7		382	; slot7 = copy table#k382
		842	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		843	[  0]	JMP  	  8		30	; 	goto 874
		844	[  0]	TGETV	 10	0	9	; slot10 = slot0[slot9]
		845	[  0]	ISEQS	 10		381	; if slot10 == "암흑사수"
		846	[  0]	JMP  	 11		4	; 	goto 851
		847	[  0]	ISEQS	 10		380	; if slot10 == "Dark Archer"
		848	[  0]	JMP  	 11		2	; 	goto 851
		849	[  0]	ISNES	 10		379	; if slot10 ~= "암흑사수 (Dark Archer)"
		850	[  0]	JMP  	 11		9	; 	goto 860
		851	[  0]	MOV  	 11		3	; slot11 = slot3
		852	[  0]	TNEW 	 13		3	; slot13 = new table( array: 3, dict: 1)
		853	[  0]	TDUP 	 14		378	; slot14 = copy table#k378
		854	[  0]	TDUP 	 15		377	; slot15 = copy table#k377
		855	[  0]	TSETS	 15	14	510	; slot14.statArrows = slot15
		856	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		857	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 858
		858	[  0]	CALLT	 11		2	; return slot11(slot12)
		859	[  0]	JMP  	 11		14	; 	goto 874
		860	[  0]	ISEQS	 10		376	; if slot10 == "환영사수"
		861	[  0]	JMP  	 11		4	; 	goto 866
		862	[  0]	ISEQS	 10		375	; if slot10 == "Illusion Archer"
		863	[  0]	JMP  	 11		2	; 	goto 866
		864	[  0]	ISNES	 10		374	; if slot10 ~= "환영사수 (Illusion Archer)"
		865	[  0]	JMP  	 11		8	; 	goto 874
		866	[  0]	MOV  	 11		3	; slot11 = slot3
		867	[  0]	TNEW 	 13		3	; slot13 = new table( array: 3, dict: 1)
		868	[  0]	TDUP 	 14		373	; slot14 = copy table#k373
		869	[  0]	TDUP 	 15		372	; slot15 = copy table#k372
		870	[  0]	TSETS	 15	14	510	; slot14.statArrows = slot15
		871	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		872	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 873
		873	[  0]	CALLT	 11		2	; return slot11(slot12)
		874	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		875	[  0]	ITERL	  8		-32	; slot7 = slot8; if slot8 != nil goto 844
		876	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		877	[  0]	ISEQS	  5		371	; if <unknown table>.subclass == "화포수"
		878	[  0]	JMP  	  5		6	; 	goto 885
		879	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		880	[  0]	ISEQS	  5		371	; if <unknown table>.subclassName == "화포수"
		881	[  0]	JMP  	  5		3	; 	goto 885
		882	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		883	[  0]	ISNES	  5		371	; if <unknown table>.subclassKey ~= "화포수"
		884	[  0]	JMP  	  5		6	; 	goto 891
		885	[  0]	MOV  	  5		3	; slot5 = slot3
		886	[  0]	TNEW 	  7		3	; slot7 = new table( array: 3, dict: 1)
		887	[  0]	TDUP 	  8		370	; slot8 = copy table#k370
		888	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
		889	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 890
		890	[  0]	CALLT	  5		2	; return slot5(slot6)
		891	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		892	[  0]	ISEQS	  5		369	; if <unknown table>.subclass == "척탄병"
		893	[  0]	JMP  	  5		6	; 	goto 900
		894	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		895	[  0]	ISEQS	  5		369	; if <unknown table>.subclassName == "척탄병"
		896	[  0]	JMP  	  5		3	; 	goto 900
		897	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		898	[  0]	ISNES	  5		369	; if <unknown table>.subclassKey ~= "척탄병"
		899	[  0]	JMP  	  5		6	; 	goto 906
		900	[  0]	MOV  	  5		3	; slot5 = slot3
		901	[  0]	TNEW 	  7		3	; slot7 = new table( array: 3, dict: 1)
		902	[  0]	TDUP 	  8		368	; slot8 = copy table#k368
		903	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
		904	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 905
		905	[  0]	CALLT	  5		2	; return slot5(slot6)
		906	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		907	[  0]	ISEQS	  5		367	; if <unknown table>.subclass == "순찰자"
		908	[  0]	JMP  	  5		8	; 	goto 917
		909	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		910	[  0]	ISEQS	  5		367	; if <unknown table>.subclassName == "순찰자"
		911	[  0]	JMP  	  5		5	; 	goto 917
		912	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		913	[  0]	ISEQS	  5		367	; if <unknown table>.subclassKey == "순찰자"
		914	[  0]	JMP  	  5		2	; 	goto 917
		915	[  0]	KPRI 	  5		1	; slot5 = false
		916	[  0]	JMP  	  6		1	; 	goto 918
		917	[  0]	KPRI 	  5		2	; slot5 = true
		918	[  0]	TGETS	  6	0	519	; slot6 = slot0.subclass
		919	[  0]	ISEQS	  6		366	; if <unknown table>.subclass == "엘프궁수"
		920	[  0]	JMP  	  6		17	; 	goto 938
		921	[  0]	TGETS	  6	0	517	; slot6 = slot0.subclassName
		922	[  0]	ISEQS	  6		366	; if <unknown table>.subclassName == "엘프궁수"
		923	[  0]	JMP  	  6		14	; 	goto 938
		924	[  0]	TGETS	  6	0	515	; slot6 = slot0.subclassKey
		925	[  0]	ISEQS	  6		366	; if <unknown table>.subclassKey == "엘프궁수"
		926	[  0]	JMP  	  6		11	; 	goto 938
		927	[  0]	TGETS	  6	0	519	; slot6 = slot0.subclass
		928	[  0]	ISEQS	  6		365	; if <unknown table>.subclass == "엘프 궁수"
		929	[  0]	JMP  	  6		8	; 	goto 938
		930	[  0]	TGETS	  6	0	517	; slot6 = slot0.subclassName
		931	[  0]	ISEQS	  6		365	; if <unknown table>.subclassName == "엘프 궁수"
		932	[  0]	JMP  	  6		5	; 	goto 938
		933	[  0]	TGETS	  6	0	515	; slot6 = slot0.subclassKey
		934	[  0]	ISEQS	  6		365	; if <unknown table>.subclassKey == "엘프 궁수"
		935	[  0]	JMP  	  6		2	; 	goto 938
		936	[  0]	KPRI 	  6		1	; slot6 = false
		937	[  0]	JMP  	  7		1	; 	goto 939
		938	[  0]	KPRI 	  6		2	; slot6 = true
		939	[  0]	TGETS	  7	0	519	; slot7 = slot0.subclass
		940	[  0]	ISEQS	  7		364	; if <unknown table>.subclass == "레인저"
		941	[  0]	JMP  	  7		8	; 	goto 950
		942	[  0]	TGETS	  7	0	517	; slot7 = slot0.subclassName
		943	[  0]	ISEQS	  7		364	; if <unknown table>.subclassName == "레인저"
		944	[  0]	JMP  	  7		5	; 	goto 950
		945	[  0]	TGETS	  7	0	515	; slot7 = slot0.subclassKey
		946	[  0]	ISEQS	  7		364	; if <unknown table>.subclassKey == "레인저"
		947	[  0]	JMP  	  7		2	; 	goto 950
		948	[  0]	KPRI 	  7		1	; slot7 = false
		949	[  0]	JMP  	  8		1	; 	goto 951
		950	[  0]	KPRI 	  7		2	; slot7 = true
		951	[  0]	ISF  	   		4	; if not slot4
		952	[  0]	JMP  	  8		6	; 	goto 959
		953	[  0]	MOV  	  8		3	; slot8 = slot3
		954	[  0]	TNEW 	 10		3	; slot10 = new table( array: 3, dict: 1)
		955	[  0]	TDUP 	 11		363	; slot11 = copy table#k363
		956	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		957	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 958
		958	[  0]	CALLT	  8		2	; return slot8(slot9)
		959	[  0]	ISF  	   		5	; if not slot5
		960	[  0]	JMP  	  8		6	; 	goto 967
		961	[  0]	MOV  	  8		3	; slot8 = slot3
		962	[  0]	TNEW 	 10		3	; slot10 = new table( array: 3, dict: 1)
		963	[  0]	TDUP 	 11		362	; slot11 = copy table#k362
		964	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		965	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 966
		966	[  0]	CALLT	  8		2	; return slot8(slot9)
		967	[  0]	ISF  	   		6	; if not slot6
		968	[  0]	JMP  	  8		6	; 	goto 975
		969	[  0]	MOV  	  8		3	; slot8 = slot3
		970	[  0]	TNEW 	 10		3	; slot10 = new table( array: 3, dict: 1)
		971	[  0]	TDUP 	 11		361	; slot11 = copy table#k361
		972	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		973	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 974
		974	[  0]	CALLT	  8		2	; return slot8(slot9)
		975	[  0]	ISF  	   		7	; if not slot7
		976	[  0]	JMP  	  8		6	; 	goto 983
		977	[  0]	MOV  	  8		3	; slot8 = slot3
		978	[  0]	TNEW 	 10		3	; slot10 = new table( array: 3, dict: 1)
		979	[  0]	TDUP 	 11		360	; slot11 = copy table#k360
		980	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		981	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 982
		982	[  0]	CALLT	  8		2	; return slot8(slot9)
		983	[  0]	ISNEN	  1		3	; if slot1 ~= 4
		984	[  0]	JMP  	  4		69	; 	goto 1054
		985	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		986	[  0]	ISEQS	  4		359	; if <unknown table>.subclass == "MiniArcherMan03"
		987	[  0]	JMP  	  4		8	; 	goto 996
		988	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		989	[  0]	ISEQS	  4		358	; if <unknown table>.subclassName == "장궁병"
		990	[  0]	JMP  	  4		5	; 	goto 996
		991	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		992	[  0]	ISEQS	  4		359	; if <unknown table>.subclassKey == "MiniArcherMan03"
		993	[  0]	JMP  	  4		2	; 	goto 996
		994	[  0]	KPRI 	  4		1	; slot4 = false
		995	[  0]	JMP  	  5		1	; 	goto 997
		996	[  0]	KPRI 	  4		2	; slot4 = true
		997	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		998	[  0]	ISEQS	  5		367	; if <unknown table>.subclass == "순찰자"
		999	[  0]	JMP  	  5		8	; 	goto 1008
		1000	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		1001	[  0]	ISEQS	  5		367	; if <unknown table>.subclassName == "순찰자"
		1002	[  0]	JMP  	  5		5	; 	goto 1008
		1003	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		1004	[  0]	ISEQS	  5		367	; if <unknown table>.subclassKey == "순찰자"
		1005	[  0]	JMP  	  5		2	; 	goto 1008
		1006	[  0]	KPRI 	  5		1	; slot5 = false
		1007	[  0]	JMP  	  6		1	; 	goto 1009
		1008	[  0]	KPRI 	  5		2	; slot5 = true
		1009	[  0]	TGETS	  6	0	519	; slot6 = slot0.subclass
		1010	[  0]	ISEQS	  6		357	; if <unknown table>.subclass == "엘프 사수"
		1011	[  0]	JMP  	  6		8	; 	goto 1020
		1012	[  0]	TGETS	  6	0	517	; slot6 = slot0.subclassName
		1013	[  0]	ISEQS	  6		357	; if <unknown table>.subclassName == "엘프 사수"
		1014	[  0]	JMP  	  6		5	; 	goto 1020
		1015	[  0]	TGETS	  6	0	515	; slot6 = slot0.subclassKey
		1016	[  0]	ISEQS	  6		357	; if <unknown table>.subclassKey == "엘프 사수"
		1017	[  0]	JMP  	  6		2	; 	goto 1020
		1018	[  0]	KPRI 	  6		1	; slot6 = false
		1019	[  0]	JMP  	  7		1	; 	goto 1021
		1020	[  0]	KPRI 	  6		2	; slot6 = true
		1021	[  0]	TGETS	  7	0	519	; slot7 = slot0.subclass
		1022	[  0]	ISEQS	  7		356	; if <unknown table>.subclass == "해골 사수"
		1023	[  0]	JMP  	  7		8	; 	goto 1032
		1024	[  0]	TGETS	  7	0	517	; slot7 = slot0.subclassName
		1025	[  0]	ISEQS	  7		356	; if <unknown table>.subclassName == "해골 사수"
		1026	[  0]	JMP  	  7		5	; 	goto 1032
		1027	[  0]	TGETS	  7	0	515	; slot7 = slot0.subclassKey
		1028	[  0]	ISEQS	  7		356	; if <unknown table>.subclassKey == "해골 사수"
		1029	[  0]	JMP  	  7		2	; 	goto 1032
		1030	[  0]	KPRI 	  7		1	; slot7 = false
		1031	[  0]	JMP  	  8		1	; 	goto 1033
		1032	[  0]	KPRI 	  7		2	; slot7 = true
		1033	[  0]	IST  	   		4	; if slot4
		1034	[  0]	JMP  	  8		2	; 	goto 1037
		1035	[  0]	ISF  	   		5	; if not slot5
		1036	[  0]	JMP  	  8		7	; 	goto 1044
		1037	[  0]	MOV  	  8		3	; slot8 = slot3
		1038	[  0]	TNEW 	 10		3	; slot10 = new table( array: 3, dict: 1)
		1039	[  0]	TDUP 	 11		355	; slot11 = copy table#k355
		1040	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		1041	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1042
		1042	[  0]	CALLT	  8		2	; return slot8(slot9)
		1043	[  0]	JMP  	  8		10	; 	goto 1054
		1044	[  0]	IST  	   		6	; if slot6
		1045	[  0]	JMP  	  8		2	; 	goto 1048
		1046	[  0]	ISF  	   		7	; if not slot7
		1047	[  0]	JMP  	  8		6	; 	goto 1054
		1048	[  0]	MOV  	  8		3	; slot8 = slot3
		1049	[  0]	TNEW 	 10		3	; slot10 = new table( array: 3, dict: 1)
		1050	[  0]	TDUP 	 11		354	; slot11 = copy table#k354
		1051	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		1052	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1053
		1053	[  0]	CALLT	  8		2	; return slot8(slot9)
		1054	[  0]	ISNEN	  1		2	; if slot1 ~= 5
		1055	[  0]	JMP  	  4		40	; 	goto 1096
		1056	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		1057	[  0]	ISEQS	  4		353	; if <unknown table>.subclass == "로빈 후드"
		1058	[  0]	JMP  	  4		8	; 	goto 1067
		1059	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		1060	[  0]	ISEQS	  4		353	; if <unknown table>.subclassName == "로빈 후드"
		1061	[  0]	JMP  	  4		5	; 	goto 1067
		1062	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		1063	[  0]	ISEQS	  4		353	; if <unknown table>.subclassKey == "로빈 후드"
		1064	[  0]	JMP  	  4		2	; 	goto 1067
		1065	[  0]	KPRI 	  4		1	; slot4 = false
		1066	[  0]	JMP  	  5		1	; 	goto 1068
		1067	[  0]	KPRI 	  4		2	; slot4 = true
		1068	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		1069	[  0]	ISEQS	  5		352	; if <unknown table>.subclass == "바이올"
		1070	[  0]	JMP  	  5		8	; 	goto 1079
		1071	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		1072	[  0]	ISEQS	  5		352	; if <unknown table>.subclassName == "바이올"
		1073	[  0]	JMP  	  5		5	; 	goto 1079
		1074	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		1075	[  0]	ISEQS	  5		352	; if <unknown table>.subclassKey == "바이올"
		1076	[  0]	JMP  	  5		2	; 	goto 1079
		1077	[  0]	KPRI 	  5		1	; slot5 = false
		1078	[  0]	JMP  	  6		1	; 	goto 1080
		1079	[  0]	KPRI 	  5		2	; slot5 = true
		1080	[  0]	ISF  	   		4	; if not slot4
		1081	[  0]	JMP  	  6		6	; 	goto 1088
		1082	[  0]	MOV  	  6		3	; slot6 = slot3
		1083	[  0]	TNEW 	  8		3	; slot8 = new table( array: 3, dict: 1)
		1084	[  0]	TDUP 	  9		351	; slot9 = copy table#k351
		1085	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		1086	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1087
		1087	[  0]	CALLT	  6		2	; return slot6(slot7)
		1088	[  0]	ISF  	   		5	; if not slot5
		1089	[  0]	JMP  	  6		6	; 	goto 1096
		1090	[  0]	MOV  	  6		3	; slot6 = slot3
		1091	[  0]	TNEW 	  8		3	; slot8 = new table( array: 3, dict: 1)
		1092	[  0]	TDUP 	  9		350	; slot9 = copy table#k350
		1093	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		1094	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1095
		1095	[  0]	CALLT	  6		2	; return slot6(slot7)
		1096	[  0]	FNEW 	  4		349	; N/A:0-0: 1 args, 0 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			ktable#0 = [
				[name] = 명사수,
				[skillDesc] = 약해진 적을 노려 강한 한 발을 발사,
				[id] = 명사수,
				[skillName] = 헤드샷,
				[asset] = 명사수,
				]
			
			
			ktable#1 = [
				[name] = 장궁병,
				[asset] = MiniArcherMan03,
				[id] = MiniArcherMan03,
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	TDUP 	  1		1	; slot1 = copy table#k1
			  2	[  0]	TDUP 	  2		0	; slot2 = copy table#k0
			  3	[  0]	TNEW 	  3		3	; slot3 = new table( array: 3, dict: 1)
			  4	[  0]	TSETB	  1	3	1	; slot3[1] = slot1
			  5	[  0]	TSETB	  2	3	2	; slot3[2] = slot2
			  6	[  0]	RET1 	  3		2	; return slot3
		1097	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		1098	[  0]	TGETS	  5	5	348	; slot5 = uv2"unknown".resolveDominantAxis
		1099	[  0]	MOV  	  7		0	; slot7 = slot0
		1100	[  0]	CALL 	  5	2	2	; slot5 = uv2"unknown".resolveDominantAxis(slot6)
		1101	[  0]	MOV  	  6		3	; slot6 = slot3
		1102	[  0]	MOV  	  8		4	; slot8 = slot4
		1103	[  0]	MOV  	 10		5	; slot10 = uv2"unknown".resolveDominantAxis
		1104	[  0]	CALL 	  8	0	2	; MULTRES = slot8(slot9)
		1105	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1106
		1106	[  0]	CALLMT	  6		0	; return slot6(, ...MULTRES)
		1107	[  0]	JMP  	  4		1986	; 	goto 3094
		1108	[  0]	TGETS	  4	0	522	; slot4 = slot0.sym
		1109	[  0]	ISNES	  4		347	; if <unknown table>.sym ~= "D"
		1110	[  0]	JMP  	  4		552	; 	goto 1663
		1111	[  0]	ISNEN	  1		1	; if slot1 ~= 2
		1112	[  0]	JMP  	  4		129	; 	goto 1242
		1113	[  0]	KPRI 	  4		1	; slot4 = false
		1114	[  0]	GGET 	  5		484	; slot5 = _env["ipairs"]
		1115	[  0]	TDUP 	  7		346	; slot7 = copy table#k346
		1116	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		1117	[  0]	JMP  	  8		8	; 	goto 1126
		1118	[  0]	TGETV	 10	0	9	; slot10 = slot0[slot9]
		1119	[  0]	ISEQS	 10		345	; if slot10 == "천사"
		1120	[  0]	JMP  	 11		4	; 	goto 1125
		1121	[  0]	ISEQS	 10		344	; if slot10 == "Angel"
		1122	[  0]	JMP  	 11		2	; 	goto 1125
		1123	[  0]	ISNES	 10		343	; if slot10 ~= "천사 (Angel)"
		1124	[  0]	JMP  	 11		1	; 	goto 1126
		1125	[  0]	KPRI 	  4		2	; slot4 = true
		1126	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		1127	[  0]	ITERL	  8		-10	; slot7 = slot8; if slot8 != nil goto 1118
		1128	[  0]	IST  	   		4	; if slot4
		1129	[  0]	JMP  	  5		15	; 	goto 1145
		1130	[  0]	TGETS	  5	0	479	; slot5 = slot0.grade
		1131	[  0]	ISEQS	  5		478	; if <unknown table>.grade == "prism"
		1132	[  0]	JMP  	  5		3	; 	goto 1136
		1133	[  0]	TGETS	  5	0	477	; slot5 = slot0.jackpot5th
		1134	[  0]	ISNEP	  5		2	; if <unknown table>.jackpot5th ~= true
		1135	[  0]	JMP  	  5		21	; 	goto 1157
		1136	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		1137	[  0]	IST  	   		5	; if <unknown table>.subclass
		1138	[  0]	JMP  	  6		18	; 	goto 1157
		1139	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		1140	[  0]	IST  	   		5	; if <unknown table>.subclassName
		1141	[  0]	JMP  	  6		15	; 	goto 1157
		1142	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		1143	[  0]	IST  	   		5	; if <unknown table>.subclassKey
		1144	[  0]	JMP  	  5		12	; 	goto 1157
		1145	[  0]	MOV  	  5		3	; slot5 = slot3
		1146	[  0]	TNEW 	  7		3	; slot7 = new table( array: 3, dict: 1)
		1147	[  0]	TDUP 	  8		342	; slot8 = copy table#k342
		1148	[  0]	TDUP 	  9		341	; slot9 = copy table#k341
		1149	[  0]	TSETS	  9	8	510	; slot8.statArrows = slot9
		1150	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
		1151	[  0]	TDUP 	  8		340	; slot8 = copy table#k340
		1152	[  0]	TDUP 	  9		339	; slot9 = copy table#k339
		1153	[  0]	TSETS	  9	8	510	; slot8.statArrows = slot9
		1154	[  0]	TSETB	  8	7	2	; slot7[2] = slot8
		1155	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1156
		1156	[  0]	CALLT	  5		2	; return slot5(slot6)
		1157	[  0]	GGET 	  5		484	; slot5 = _env["ipairs"]
		1158	[  0]	TDUP 	  7		338	; slot7 = copy table#k338
		1159	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		1160	[  0]	JMP  	  8		37	; 	goto 1198
		1161	[  0]	TGETV	 10	0	9	; slot10 = slot0[slot9]
		1162	[  0]	ISEQS	 10		337	; if slot10 == "셰이드"
		1163	[  0]	JMP  	 11		4	; 	goto 1168
		1164	[  0]	ISEQS	 10		336	; if slot10 == "Shade"
		1165	[  0]	JMP  	 11		2	; 	goto 1168
		1166	[  0]	ISNES	 10		335	; if slot10 ~= "셰이드 (Shade)"
		1167	[  0]	JMP  	 11		12	; 	goto 1180
		1168	[  0]	MOV  	 11		3	; slot11 = slot3
		1169	[  0]	TNEW 	 13		3	; slot13 = new table( array: 3, dict: 1)
		1170	[  0]	TDUP 	 14		334	; slot14 = copy table#k334
		1171	[  0]	TDUP 	 15		333	; slot15 = copy table#k333
		1172	[  0]	TSETS	 15	14	510	; slot14.statArrows = slot15
		1173	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		1174	[  0]	TDUP 	 14		332	; slot14 = copy table#k332
		1175	[  0]	TDUP 	 15		331	; slot15 = copy table#k331
		1176	[  0]	TSETS	 15	14	510	; slot14.statArrows = slot15
		1177	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		1178	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1179
		1179	[  0]	CALLT	 11		2	; return slot11(slot12)
		1180	[  0]	ISEQS	 10		330	; if slot10 == "수호자"
		1181	[  0]	JMP  	 11		4	; 	goto 1186
		1182	[  0]	ISEQS	 10		329	; if slot10 == "Guardian"
		1183	[  0]	JMP  	 11		2	; 	goto 1186
		1184	[  0]	ISNES	 10		328	; if slot10 ~= "수호자 (Guardian)"
		1185	[  0]	JMP  	 11		12	; 	goto 1198
		1186	[  0]	MOV  	 11		3	; slot11 = slot3
		1187	[  0]	TNEW 	 13		3	; slot13 = new table( array: 3, dict: 1)
		1188	[  0]	TDUP 	 14		327	; slot14 = copy table#k327
		1189	[  0]	TDUP 	 15		326	; slot15 = copy table#k326
		1190	[  0]	TSETS	 15	14	510	; slot14.statArrows = slot15
		1191	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		1192	[  0]	TDUP 	 14		325	; slot14 = copy table#k325
		1193	[  0]	TDUP 	 15		324	; slot15 = copy table#k324
		1194	[  0]	TSETS	 15	14	510	; slot14.statArrows = slot15
		1195	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		1196	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1197
		1197	[  0]	CALLT	 11		2	; return slot11(slot12)
		1198	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		1199	[  0]	ITERL	  8		-39	; slot7 = slot8; if slot8 != nil goto 1161
		1200	[  0]	TGETS	  5	0	479	; slot5 = slot0.grade
		1201	[  0]	GGET 	  6		323	; slot6 = _env["type"]
		1202	[  0]	MOV  	  8		5	; slot8 = <unknown table>.grade
		1203	[  0]	CALL 	  6	2	2	; slot6 = type(slot7)
		1204	[  0]	ISNES	  6		322	; if type ~= "string"
		1205	[  0]	JMP  	  6		4	; 	goto 1210
		1206	[  0]	MOV  	  8		5	; slot8 = <unknown table>.grade
		1207	[  0]	TGETS	  6	5	321	; slot6 = <unknown table>.grade.lower
		1208	[  0]	CALL 	  6	2	2	; slot6 = <unknown table>.grade.lower(slot7)
		1209	[  0]	MOV  	  5		6	; slot5 = <unknown table>.grade.lower
		1210	[  0]	TGETS	  6	0	519	; slot6 = slot0.subclass
		1211	[  0]	ISEQS	  6		502	; if <unknown table>.subclass == "드루이드"
		1212	[  0]	JMP  	  6		6	; 	goto 1219
		1213	[  0]	TGETS	  6	0	517	; slot6 = slot0.subclassName
		1214	[  0]	ISEQS	  6		502	; if <unknown table>.subclassName == "드루이드"
		1215	[  0]	JMP  	  6		3	; 	goto 1219
		1216	[  0]	TGETS	  6	0	515	; slot6 = slot0.subclassKey
		1217	[  0]	ISNES	  6		502	; if <unknown table>.subclassKey ~= "드루이드"
		1218	[  0]	JMP  	  6		2	; 	goto 1221
		1219	[  0]	ISEQS	  5		320	; if <unknown table>.grade.lower == "advanced"
		1220	[  0]	JMP  	  6		2	; 	goto 1223
		1221	[  0]	KPRI 	  6		1	; slot6 = false
		1222	[  0]	JMP  	  7		1	; 	goto 1224
		1223	[  0]	KPRI 	  6		2	; slot6 = true
		1224	[  0]	ISF  	   		6	; if not slot6
		1225	[  0]	JMP  	  7		8	; 	goto 1234
		1226	[  0]	MOV  	  7		3	; slot7 = slot3
		1227	[  0]	TNEW 	  9		3	; slot9 = new table( array: 3, dict: 1)
		1228	[  0]	TDUP 	 10		319	; slot10 = copy table#k319
		1229	[  0]	TSETB	 10	9	1	; slot9[1] = slot10
		1230	[  0]	TDUP 	 10		318	; slot10 = copy table#k318
		1231	[  0]	TSETB	 10	9	2	; slot9[2] = slot10
		1232	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1233
		1233	[  0]	CALLT	  7		2	; return slot7(<unknown table>.grade)
		1234	[  0]	MOV  	  7		3	; slot7 = slot3
		1235	[  0]	TNEW 	  9		3	; slot9 = new table( array: 3, dict: 1)
		1236	[  0]	TDUP 	 10		317	; slot10 = copy table#k317
		1237	[  0]	TSETB	 10	9	1	; slot9[1] = slot10
		1238	[  0]	TDUP 	 10		316	; slot10 = copy table#k316
		1239	[  0]	TSETB	 10	9	2	; slot9[2] = slot10
		1240	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1241
		1241	[  0]	CALLT	  7		2	; return slot7(<unknown table>.grade)
		1242	[  0]	ISNEN	  1		0	; if slot1 ~= 3
		1243	[  0]	JMP  	  4		102	; 	goto 1346
		1244	[  0]	KPRI 	  4		1	; slot4 = false
		1245	[  0]	GGET 	  5		484	; slot5 = _env["ipairs"]
		1246	[  0]	TDUP 	  7		315	; slot7 = copy table#k315
		1247	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		1248	[  0]	JMP  	  8		8	; 	goto 1257
		1249	[  0]	TGETV	 10	0	9	; slot10 = slot0[slot9]
		1250	[  0]	ISEQS	 10		314	; if slot10 == "대천사"
		1251	[  0]	JMP  	 11		4	; 	goto 1256
		1252	[  0]	ISEQS	 10		313	; if slot10 == "Archangel"
		1253	[  0]	JMP  	 11		2	; 	goto 1256
		1254	[  0]	ISNES	 10		312	; if slot10 ~= "대천사 (Archangel)"
		1255	[  0]	JMP  	 11		1	; 	goto 1257
		1256	[  0]	KPRI 	  4		2	; slot4 = true
		1257	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		1258	[  0]	ITERL	  8		-10	; slot7 = <unknown table>.grade; if <unknown table>.grade != nil goto 1249
		1259	[  0]	IST  	   		4	; if slot4
		1260	[  0]	JMP  	  5		15	; 	goto 1276
		1261	[  0]	TGETS	  5	0	479	; slot5 = slot0.grade
		1262	[  0]	ISEQS	  5		478	; if <unknown table>.grade == "prism"
		1263	[  0]	JMP  	  5		3	; 	goto 1267
		1264	[  0]	TGETS	  5	0	477	; slot5 = slot0.jackpot5th
		1265	[  0]	ISNEP	  5		2	; if <unknown table>.jackpot5th ~= true
		1266	[  0]	JMP  	  5		17	; 	goto 1284
		1267	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		1268	[  0]	IST  	   		5	; if <unknown table>.subclass
		1269	[  0]	JMP  	  6		14	; 	goto 1284
		1270	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		1271	[  0]	IST  	   		5	; if <unknown table>.subclassName
		1272	[  0]	JMP  	  6		11	; 	goto 1284
		1273	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		1274	[  0]	IST  	   		5	; if <unknown table>.subclassKey
		1275	[  0]	JMP  	  5		8	; 	goto 1284
		1276	[  0]	MOV  	  5		3	; slot5 = slot3
		1277	[  0]	TNEW 	  7		3	; slot7 = new table( array: 3, dict: 1)
		1278	[  0]	TDUP 	  8		311	; slot8 = copy table#k311
		1279	[  0]	TDUP 	  9		310	; slot9 = copy table#k310
		1280	[  0]	TSETS	  9	8	510	; slot8.statArrows = slot9
		1281	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
		1282	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1283
		1283	[  0]	CALLT	  5		2	; return slot5(slot6)
		1284	[  0]	KPRI 	  5		1	; slot5 = false
		1285	[  0]	GGET 	  6		484	; slot6 = _env["ipairs"]
		1286	[  0]	TDUP 	  8		309	; slot8 = copy table#k309
		1287	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		1288	[  0]	JMP  	  9		8	; 	goto 1297
		1289	[  0]	TGETV	 11	0	10	; slot11 = slot0[slot10]
		1290	[  0]	ISEQS	 11		308	; if slot11 == "타락천사"
		1291	[  0]	JMP  	 12		4	; 	goto 1296
		1292	[  0]	ISEQS	 11		307	; if slot11 == "Fallen Angel"
		1293	[  0]	JMP  	 12		2	; 	goto 1296
		1294	[  0]	ISNES	 11		306	; if slot11 ~= "타락천사 (Fallen Angel)"
		1295	[  0]	JMP  	 12		1	; 	goto 1297
		1296	[  0]	KPRI 	  5		2	; slot5 = true
		1297	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, slot8; slot9, slot10 = ipairs(slot7, slot8)
		1298	[  0]	ITERL	  9		-10	; slot8 = slot9; if slot9 != nil goto 1289
		1299	[  0]	ISF  	   		5	; if not slot5
		1300	[  0]	JMP  	  6		8	; 	goto 1309
		1301	[  0]	MOV  	  6		3	; slot6 = slot3
		1302	[  0]	TNEW 	  8		3	; slot8 = new table( array: 3, dict: 1)
		1303	[  0]	TDUP 	  9		305	; slot9 = copy table#k305
		1304	[  0]	TDUP 	 10		304	; slot10 = copy table#k304
		1305	[  0]	TSETS	 10	9	510	; slot9.statArrows = slot10
		1306	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		1307	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1308
		1308	[  0]	CALLT	  6		2	; return slot6(slot7)
		1309	[  0]	GGET 	  6		484	; slot6 = _env["ipairs"]
		1310	[  0]	TDUP 	  8		303	; slot8 = copy table#k303
		1311	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		1312	[  0]	JMP  	  9		31	; 	goto 1344
		1313	[  0]	TGETV	 11	0	10	; slot11 = slot0[slot10]
		1314	[  0]	ISEQS	 11		302	; if slot11 == "LegendarySpecter"
		1315	[  0]	JMP  	 12		6	; 	goto 1322
		1316	[  0]	ISEQS	 11		301	; if slot11 == "스펙터"
		1317	[  0]	JMP  	 12		4	; 	goto 1322
		1318	[  0]	ISEQS	 11		300	; if slot11 == "Specter"
		1319	[  0]	JMP  	 12		2	; 	goto 1322
		1320	[  0]	ISNES	 11		299	; if slot11 ~= "스펙터 (Specter)"
		1321	[  0]	JMP  	 12		8	; 	goto 1330
		1322	[  0]	MOV  	 12		3	; slot12 = slot3
		1323	[  0]	TNEW 	 14		3	; slot14 = new table( array: 3, dict: 1)
		1324	[  0]	TDUP 	 15		298	; slot15 = copy table#k298
		1325	[  0]	TDUP 	 16		297	; slot16 = copy table#k297
		1326	[  0]	TSETS	 16	15	510	; slot15.statArrows = slot16
		1327	[  0]	TSETB	 15	14	1	; slot14[1] = slot15
		1328	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1329
		1329	[  0]	CALLT	 12		2	; return slot12(slot13)
		1330	[  0]	ISEQS	 11		296	; if slot11 == "리퍼"
		1331	[  0]	JMP  	 12		4	; 	goto 1336
		1332	[  0]	ISEQS	 11		295	; if slot11 == "Reaper"
		1333	[  0]	JMP  	 12		2	; 	goto 1336
		1334	[  0]	ISNES	 11		294	; if slot11 ~= "리퍼 (Reaper)"
		1335	[  0]	JMP  	 12		8	; 	goto 1344
		1336	[  0]	MOV  	 12		3	; slot12 = slot3
		1337	[  0]	TNEW 	 14		3	; slot14 = new table( array: 3, dict: 1)
		1338	[  0]	TDUP 	 15		293	; slot15 = copy table#k293
		1339	[  0]	TDUP 	 16		292	; slot16 = copy table#k292
		1340	[  0]	TSETS	 16	15	510	; slot15.statArrows = slot16
		1341	[  0]	TSETB	 15	14	1	; slot14[1] = slot15
		1342	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1343
		1343	[  0]	CALLT	 12		2	; return slot12(slot13)
		1344	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, slot8; slot9, slot10 = ipairs(slot7, slot8)
		1345	[  0]	ITERL	  9		-33	; slot8 = slot9; if slot9 != nil goto 1313
		1346	[  0]	ISNEN	  1		0	; if slot1 ~= 3
		1347	[  0]	JMP  	  4		53	; 	goto 1401
		1348	[  0]	GGET 	  4		291	; slot4 = _env["tostring"]
		1349	[  0]	TGETS	  6	0	479	; slot6 = slot0.grade
		1350	[  0]	CALL 	  4	2	2	; slot4 = tostring(slot5)
		1351	[  0]	MOV  	  6		4	; slot6 = tostring
		1352	[  0]	TGETS	  4	4	321	; slot4 = tostring.lower
		1353	[  0]	CALL 	  4	2	2	; slot4 = tostring.lower(slot5)
		1354	[  0]	ISEQS	  4		290	; if tostring.lower == "rare"
		1355	[  0]	JMP  	  4		8	; 	goto 1364
		1356	[  0]	GGET 	  4		291	; slot4 = _env["tostring"]
		1357	[  0]	TGETS	  6	0	479	; slot6 = slot0.grade
		1358	[  0]	CALL 	  4	2	2	; slot4 = tostring(slot5)
		1359	[  0]	MOV  	  6		4	; slot6 = tostring
		1360	[  0]	TGETS	  4	4	321	; slot4 = tostring.lower
		1361	[  0]	CALL 	  4	2	2	; slot4 = tostring.lower(slot5)
		1362	[  0]	ISNES	  4		289	; if tostring.lower ~= "r"
		1363	[  0]	JMP  	  4		37	; 	goto 1401
		1364	[  0]	GGET 	  4		484	; slot4 = _env["ipairs"]
		1365	[  0]	TDUP 	  6		288	; slot6 = copy table#k288
		1366	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		1367	[  0]	JMP  	  7		31	; 	goto 1399
		1368	[  0]	TGETV	  9	0	8	; slot9 = slot0[slot8]
		1369	[  0]	ISEQS	  9		287	; if slot9 == "서리칼날"
		1370	[  0]	JMP  	 10		4	; 	goto 1375
		1371	[  0]	ISEQS	  9		286	; if slot9 == "Frostblade"
		1372	[  0]	JMP  	 10		2	; 	goto 1375
		1373	[  0]	ISNES	  9		285	; if slot9 ~= "서리칼날 (Frostblade)"
		1374	[  0]	JMP  	 10		8	; 	goto 1383
		1375	[  0]	MOV  	 10		3	; slot10 = slot3
		1376	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1377	[  0]	TDUP 	 13		284	; slot13 = copy table#k284
		1378	[  0]	TDUP 	 14		283	; slot14 = copy table#k283
		1379	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		1380	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1381	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1382
		1382	[  0]	CALLT	 10		2	; return slot10(slot11)
		1383	[  0]	ISEQS	  9		282	; if slot9 == "RarePaladin"
		1384	[  0]	JMP  	 10		6	; 	goto 1391
		1385	[  0]	ISEQS	  9		281	; if slot9 == "Paladin"
		1386	[  0]	JMP  	 10		4	; 	goto 1391
		1387	[  0]	ISEQS	  9		280	; if slot9 == "팔라딘"
		1388	[  0]	JMP  	 10		2	; 	goto 1391
		1389	[  0]	ISNES	  9		279	; if slot9 ~= "팔라딘 (Paladin)"
		1390	[  0]	JMP  	 10		8	; 	goto 1399
		1391	[  0]	MOV  	 10		3	; slot10 = slot3
		1392	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1393	[  0]	TDUP 	 13		278	; slot13 = copy table#k278
		1394	[  0]	TDUP 	 14		277	; slot14 = copy table#k277
		1395	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		1396	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1397	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1398
		1398	[  0]	CALLT	 10		2	; return slot10(slot11)
		1399	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, slot6; slot7, slot8 = ipairs(slot5, slot6)
		1400	[  0]	ITERL	  7		-33	; slot6 = slot7; if slot7 != nil goto 1368
		1401	[  0]	ISNEN	  1		0	; if slot1 ~= 3
		1402	[  0]	JMP  	  4		122	; 	goto 1525
		1403	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		1404	[  0]	ISEQS	  4		276	; if <unknown table>.subclass == "황제"
		1405	[  0]	JMP  	  4		8	; 	goto 1414
		1406	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		1407	[  0]	ISEQS	  4		276	; if <unknown table>.subclassName == "황제"
		1408	[  0]	JMP  	  4		5	; 	goto 1414
		1409	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		1410	[  0]	ISEQS	  4		276	; if <unknown table>.subclassKey == "황제"
		1411	[  0]	JMP  	  4		2	; 	goto 1414
		1412	[  0]	KPRI 	  4		1	; slot4 = false
		1413	[  0]	JMP  	  5		1	; 	goto 1415
		1414	[  0]	KPRI 	  4		2	; slot4 = true
		1415	[  0]	ISF  	   		4	; if not slot4
		1416	[  0]	JMP  	  5		6	; 	goto 1423
		1417	[  0]	MOV  	  5		3	; slot5 = slot3
		1418	[  0]	TNEW 	  7		3	; slot7 = new table( array: 3, dict: 1)
		1419	[  0]	TDUP 	  8		275	; slot8 = copy table#k275
		1420	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
		1421	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1422
		1422	[  0]	CALLT	  5		2	; return slot5(slot6)
		1423	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		1424	[  0]	ISEQS	  5		274	; if <unknown table>.subclass == "베테랑"
		1425	[  0]	JMP  	  5		8	; 	goto 1434
		1426	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		1427	[  0]	ISEQS	  5		274	; if <unknown table>.subclassName == "베테랑"
		1428	[  0]	JMP  	  5		5	; 	goto 1434
		1429	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		1430	[  0]	ISEQS	  5		274	; if <unknown table>.subclassKey == "베테랑"
		1431	[  0]	JMP  	  5		2	; 	goto 1434
		1432	[  0]	KPRI 	  5		1	; slot5 = false
		1433	[  0]	JMP  	  6		1	; 	goto 1435
		1434	[  0]	KPRI 	  5		2	; slot5 = true
		1435	[  0]	ISF  	   		5	; if not slot5
		1436	[  0]	JMP  	  6		6	; 	goto 1443
		1437	[  0]	MOV  	  6		3	; slot6 = slot3
		1438	[  0]	TNEW 	  8		3	; slot8 = new table( array: 3, dict: 1)
		1439	[  0]	TDUP 	  9		273	; slot9 = copy table#k273
		1440	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		1441	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1442
		1442	[  0]	CALLT	  6		2	; return slot6(slot7)
		1443	[  0]	TGETS	  6	0	519	; slot6 = slot0.subclass
		1444	[  0]	ISEQS	  6		272	; if <unknown table>.subclass == "엔트"
		1445	[  0]	JMP  	  6		8	; 	goto 1454
		1446	[  0]	TGETS	  6	0	517	; slot6 = slot0.subclassName
		1447	[  0]	ISEQS	  6		272	; if <unknown table>.subclassName == "엔트"
		1448	[  0]	JMP  	  6		5	; 	goto 1454
		1449	[  0]	TGETS	  6	0	515	; slot6 = slot0.subclassKey
		1450	[  0]	ISEQS	  6		272	; if <unknown table>.subclassKey == "엔트"
		1451	[  0]	JMP  	  6		2	; 	goto 1454
		1452	[  0]	KPRI 	  6		1	; slot6 = false
		1453	[  0]	JMP  	  7		1	; 	goto 1455
		1454	[  0]	KPRI 	  6		2	; slot6 = true
		1455	[  0]	ISF  	   		6	; if not slot6
		1456	[  0]	JMP  	  7		6	; 	goto 1463
		1457	[  0]	MOV  	  7		3	; slot7 = slot3
		1458	[  0]	TNEW 	  9		3	; slot9 = new table( array: 3, dict: 1)
		1459	[  0]	TDUP 	 10		271	; slot10 = copy table#k271
		1460	[  0]	TSETB	 10	9	1	; slot9[1] = slot10
		1461	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1462
		1462	[  0]	CALLT	  7		2	; return slot7(slot8)
		1463	[  0]	TGETS	  7	0	519	; slot7 = slot0.subclass
		1464	[  0]	ISEQS	  7		270	; if <unknown table>.subclass == "빅터"
		1465	[  0]	JMP  	  7		8	; 	goto 1474
		1466	[  0]	TGETS	  7	0	517	; slot7 = slot0.subclassName
		1467	[  0]	ISEQS	  7		270	; if <unknown table>.subclassName == "빅터"
		1468	[  0]	JMP  	  7		5	; 	goto 1474
		1469	[  0]	TGETS	  7	0	515	; slot7 = slot0.subclassKey
		1470	[  0]	ISEQS	  7		270	; if <unknown table>.subclassKey == "빅터"
		1471	[  0]	JMP  	  7		2	; 	goto 1474
		1472	[  0]	KPRI 	  7		1	; slot7 = false
		1473	[  0]	JMP  	  8		1	; 	goto 1475
		1474	[  0]	KPRI 	  7		2	; slot7 = true
		1475	[  0]	ISF  	   		7	; if not slot7
		1476	[  0]	JMP  	  8		6	; 	goto 1483
		1477	[  0]	MOV  	  8		3	; slot8 = slot3
		1478	[  0]	TNEW 	 10		3	; slot10 = new table( array: 3, dict: 1)
		1479	[  0]	TDUP 	 11		269	; slot11 = copy table#k269
		1480	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		1481	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1482
		1482	[  0]	CALLT	  8		2	; return slot8(slot9)
		1483	[  0]	TGETS	  8	0	519	; slot8 = slot0.subclass
		1484	[  0]	ISEQS	  8		502	; if <unknown table>.subclass == "드루이드"
		1485	[  0]	JMP  	  8		8	; 	goto 1494
		1486	[  0]	TGETS	  8	0	517	; slot8 = slot0.subclassName
		1487	[  0]	ISEQS	  8		502	; if <unknown table>.subclassName == "드루이드"
		1488	[  0]	JMP  	  8		5	; 	goto 1494
		1489	[  0]	TGETS	  8	0	515	; slot8 = slot0.subclassKey
		1490	[  0]	ISEQS	  8		502	; if <unknown table>.subclassKey == "드루이드"
		1491	[  0]	JMP  	  8		2	; 	goto 1494
		1492	[  0]	KPRI 	  8		1	; slot8 = false
		1493	[  0]	JMP  	  9		1	; 	goto 1495
		1494	[  0]	KPRI 	  8		2	; slot8 = true
		1495	[  0]	ISF  	   		8	; if not slot8
		1496	[  0]	JMP  	  9		6	; 	goto 1503
		1497	[  0]	MOV  	  9		3	; slot9 = slot3
		1498	[  0]	TNEW 	 11		3	; slot11 = new table( array: 3, dict: 1)
		1499	[  0]	TDUP 	 12		268	; slot12 = copy table#k268
		1500	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		1501	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1502
		1502	[  0]	CALLT	  9		2	; return slot9(slot10)
		1503	[  0]	TGETS	  9	0	519	; slot9 = slot0.subclass
		1504	[  0]	ISEQS	  9		267	; if <unknown table>.subclass == "해적왕"
		1505	[  0]	JMP  	  9		8	; 	goto 1514
		1506	[  0]	TGETS	  9	0	517	; slot9 = slot0.subclassName
		1507	[  0]	ISEQS	  9		267	; if <unknown table>.subclassName == "해적왕"
		1508	[  0]	JMP  	  9		5	; 	goto 1514
		1509	[  0]	TGETS	  9	0	515	; slot9 = slot0.subclassKey
		1510	[  0]	ISEQS	  9		267	; if <unknown table>.subclassKey == "해적왕"
		1511	[  0]	JMP  	  9		2	; 	goto 1514
		1512	[  0]	KPRI 	  9		1	; slot9 = false
		1513	[  0]	JMP  	 10		1	; 	goto 1515
		1514	[  0]	KPRI 	  9		2	; slot9 = true
		1515	[  0]	ISF  	   		9	; if not slot9
		1516	[  0]	JMP  	 10		8	; 	goto 1525
		1517	[  0]	MOV  	 10		3	; slot10 = slot3
		1518	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1519	[  0]	TDUP 	 13		266	; slot13 = copy table#k266
		1520	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1521	[  0]	TDUP 	 13		265	; slot13 = copy table#k265
		1522	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		1523	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1524
		1524	[  0]	CALLT	 10		2	; return slot10(slot11)
		1525	[  0]	ISNEN	  1		2	; if slot1 ~= 5
		1526	[  0]	JMP  	  4		40	; 	goto 1567
		1527	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		1528	[  0]	ISEQS	  4		264	; if <unknown table>.subclass == "글로리"
		1529	[  0]	JMP  	  4		8	; 	goto 1538
		1530	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		1531	[  0]	ISEQS	  4		264	; if <unknown table>.subclassName == "글로리"
		1532	[  0]	JMP  	  4		5	; 	goto 1538
		1533	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		1534	[  0]	ISEQS	  4		264	; if <unknown table>.subclassKey == "글로리"
		1535	[  0]	JMP  	  4		2	; 	goto 1538
		1536	[  0]	KPRI 	  4		1	; slot4 = false
		1537	[  0]	JMP  	  5		1	; 	goto 1539
		1538	[  0]	KPRI 	  4		2	; slot4 = true
		1539	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		1540	[  0]	ISEQS	  5		263	; if <unknown table>.subclass == "글룸"
		1541	[  0]	JMP  	  5		8	; 	goto 1550
		1542	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		1543	[  0]	ISEQS	  5		263	; if <unknown table>.subclassName == "글룸"
		1544	[  0]	JMP  	  5		5	; 	goto 1550
		1545	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		1546	[  0]	ISEQS	  5		263	; if <unknown table>.subclassKey == "글룸"
		1547	[  0]	JMP  	  5		2	; 	goto 1550
		1548	[  0]	KPRI 	  5		1	; slot5 = false
		1549	[  0]	JMP  	  6		1	; 	goto 1551
		1550	[  0]	KPRI 	  5		2	; slot5 = true
		1551	[  0]	ISF  	   		4	; if not slot4
		1552	[  0]	JMP  	  6		6	; 	goto 1559
		1553	[  0]	MOV  	  6		3	; slot6 = slot3
		1554	[  0]	TNEW 	  8		3	; slot8 = new table( array: 3, dict: 1)
		1555	[  0]	TDUP 	  9		262	; slot9 = copy table#k262
		1556	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		1557	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1558
		1558	[  0]	CALLT	  6		2	; return slot6(slot7)
		1559	[  0]	ISF  	   		5	; if not slot5
		1560	[  0]	JMP  	  6		6	; 	goto 1567
		1561	[  0]	MOV  	  6		3	; slot6 = slot3
		1562	[  0]	TNEW 	  8		3	; slot8 = new table( array: 3, dict: 1)
		1563	[  0]	TDUP 	  9		261	; slot9 = copy table#k261
		1564	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		1565	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1566
		1566	[  0]	CALLT	  6		2	; return slot6(slot7)
		1567	[  0]	ISNEN	  1		3	; if slot1 ~= 4
		1568	[  0]	JMP  	  4		68	; 	goto 1637
		1569	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		1570	[  0]	ISEQS	  4		260	; if <unknown table>.subclass == "성황"
		1571	[  0]	JMP  	  4		8	; 	goto 1580
		1572	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		1573	[  0]	ISEQS	  4		260	; if <unknown table>.subclassName == "성황"
		1574	[  0]	JMP  	  4		5	; 	goto 1580
		1575	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		1576	[  0]	ISEQS	  4		260	; if <unknown table>.subclassKey == "성황"
		1577	[  0]	JMP  	  4		2	; 	goto 1580
		1578	[  0]	KPRI 	  4		1	; slot4 = false
		1579	[  0]	JMP  	  5		1	; 	goto 1581
		1580	[  0]	KPRI 	  4		2	; slot4 = true
		1581	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		1582	[  0]	ISEQS	  5		259	; if <unknown table>.subclass == "검성제"
		1583	[  0]	JMP  	  5		8	; 	goto 1592
		1584	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		1585	[  0]	ISEQS	  5		259	; if <unknown table>.subclassName == "검성제"
		1586	[  0]	JMP  	  5		5	; 	goto 1592
		1587	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		1588	[  0]	ISEQS	  5		259	; if <unknown table>.subclassKey == "검성제"
		1589	[  0]	JMP  	  5		2	; 	goto 1592
		1590	[  0]	KPRI 	  5		1	; slot5 = false
		1591	[  0]	JMP  	  6		1	; 	goto 1593
		1592	[  0]	KPRI 	  5		2	; slot5 = true
		1593	[  0]	TGETS	  6	0	519	; slot6 = slot0.subclass
		1594	[  0]	ISEQS	  6		258	; if <unknown table>.subclass == "검황"
		1595	[  0]	JMP  	  6		8	; 	goto 1604
		1596	[  0]	TGETS	  6	0	517	; slot6 = slot0.subclassName
		1597	[  0]	ISEQS	  6		258	; if <unknown table>.subclassName == "검황"
		1598	[  0]	JMP  	  6		5	; 	goto 1604
		1599	[  0]	TGETS	  6	0	515	; slot6 = slot0.subclassKey
		1600	[  0]	ISEQS	  6		258	; if <unknown table>.subclassKey == "검황"
		1601	[  0]	JMP  	  6		2	; 	goto 1604
		1602	[  0]	KPRI 	  6		1	; slot6 = false
		1603	[  0]	JMP  	  7		1	; 	goto 1605
		1604	[  0]	KPRI 	  6		2	; slot6 = true
		1605	[  0]	TGETS	  7	0	519	; slot7 = slot0.subclass
		1606	[  0]	ISEQS	  7		257	; if <unknown table>.subclass == "망령"
		1607	[  0]	JMP  	  7		8	; 	goto 1616
		1608	[  0]	TGETS	  7	0	517	; slot7 = slot0.subclassName
		1609	[  0]	ISEQS	  7		257	; if <unknown table>.subclassName == "망령"
		1610	[  0]	JMP  	  7		5	; 	goto 1616
		1611	[  0]	TGETS	  7	0	515	; slot7 = slot0.subclassKey
		1612	[  0]	ISEQS	  7		257	; if <unknown table>.subclassKey == "망령"
		1613	[  0]	JMP  	  7		2	; 	goto 1616
		1614	[  0]	KPRI 	  7		1	; slot7 = false
		1615	[  0]	JMP  	  8		1	; 	goto 1617
		1616	[  0]	KPRI 	  7		2	; slot7 = true
		1617	[  0]	IST  	   		4	; if slot4
		1618	[  0]	JMP  	  8		2	; 	goto 1621
		1619	[  0]	ISF  	   		5	; if not slot5
		1620	[  0]	JMP  	  8		6	; 	goto 1627
		1621	[  0]	MOV  	  8		3	; slot8 = slot3
		1622	[  0]	TNEW 	 10		3	; slot10 = new table( array: 3, dict: 1)
		1623	[  0]	TDUP 	 11		256	; slot11 = copy table#k256
		1624	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		1625	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1626
		1626	[  0]	CALLT	  8		2	; return slot8(slot9)
		1627	[  0]	IST  	   		6	; if slot6
		1628	[  0]	JMP  	  8		2	; 	goto 1631
		1629	[  0]	ISF  	   		7	; if not slot7
		1630	[  0]	JMP  	  8		6	; 	goto 1637
		1631	[  0]	MOV  	  8		3	; slot8 = slot3
		1632	[  0]	TNEW 	 10		3	; slot10 = new table( array: 3, dict: 1)
		1633	[  0]	TDUP 	 11		255	; slot11 = copy table#k255
		1634	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		1635	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1636
		1636	[  0]	CALLT	  8		2	; return slot8(slot9)
		1637	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		1638	[  0]	TGETS	  4	4	348	; slot4 = uv2"unknown".resolveDominantAxis
		1639	[  0]	MOV  	  6		0	; slot6 = slot0
		1640	[  0]	CALL 	  4	2	2	; slot4 = uv2"unknown".resolveDominantAxis(slot5)
		1641	[  0]	TDUP 	  5		254	; slot5 = copy table#k254
		1642	[  0]	TDUP 	  6		253	; slot6 = copy table#k253
		1643	[  0]	TDUP 	  7		252	; slot7 = copy table#k252
		1644	[  0]	TNEW 	  8		4	; slot8 = new table( array: 4, dict: 1)
		1645	[  0]	TSETB	  5	8	1	; slot8[1] = slot5
		1646	[  0]	TSETB	  6	8	2	; slot8[2] = slot6
		1647	[  0]	TSETB	  7	8	3	; slot8[3] = slot7
		1648	[  0]	GGET 	  9		418	; slot9 = _env["love"]
		1649	[  0]	TGETS	  9	9	417	; slot9 = love.math
		1650	[  0]	TGETS	  9	9	416	; slot9 = love.math.random
		1651	[  0]	KSHORT	 11		1	; slot11 = 1
		1652	[  0]	LEN  	 12		8	; slot12 = #slot8
		1653	[  0]	CALL 	  9	2	3	; slot9 = love.math.random(slot10, slot11)
		1654	[  0]	TGETV	 10	8	9	; slot10 = slot8[love.math.random]
		1655	[  0]	MOV  	 11		3	; slot11 = slot3
		1656	[  0]	TNEW 	 13		4	; slot13 = new table( array: 4, dict: 1)
		1657	[  0]	TSETB	  5	13	1	; slot13[1] = slot5
		1658	[  0]	TSETB	  6	13	2	; slot13[2] = slot6
		1659	[  0]	TSETB	  7	13	3	; slot13[3] = slot7
		1660	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1661
		1661	[  0]	CALLT	 11		2	; return slot11(slot12)
		1662	[  0]	JMP  	  4		1431	; 	goto 3094
		1663	[  0]	TGETS	  4	0	522	; slot4 = slot0.sym
		1664	[  0]	ISNES	  4		251	; if <unknown table>.sym ~= "S"
		1665	[  0]	JMP  	  4		419	; 	goto 2085
		1666	[  0]	ISNEN	  1		2	; if slot1 ~= 5
		1667	[  0]	JMP  	  4		20	; 	goto 1688
		1668	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		1669	[  0]	ISEQS	  4		250	; if <unknown table>.subclass == "크러셔"
		1670	[  0]	JMP  	  4		8	; 	goto 1679
		1671	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		1672	[  0]	ISEQS	  4		250	; if <unknown table>.subclassName == "크러셔"
		1673	[  0]	JMP  	  4		5	; 	goto 1679
		1674	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		1675	[  0]	ISEQS	  4		250	; if <unknown table>.subclassKey == "크러셔"
		1676	[  0]	JMP  	  4		2	; 	goto 1679
		1677	[  0]	KPRI 	  4		1	; slot4 = false
		1678	[  0]	JMP  	  5		1	; 	goto 1680
		1679	[  0]	KPRI 	  4		2	; slot4 = true
		1680	[  0]	ISF  	   		4	; if not slot4
		1681	[  0]	JMP  	  5		6	; 	goto 1688
		1682	[  0]	MOV  	  5		3	; slot5 = slot3
		1683	[  0]	TNEW 	  7		3	; slot7 = new table( array: 3, dict: 1)
		1684	[  0]	TDUP 	  8		249	; slot8 = copy table#k249
		1685	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
		1686	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1687
		1687	[  0]	CALLT	  5		2	; return slot5(slot6)
		1688	[  0]	ISNEN	  1		1	; if slot1 ~= 2
		1689	[  0]	JMP  	  4		117	; 	goto 1807
		1690	[  0]	GGET 	  4		484	; slot4 = _env["ipairs"]
		1691	[  0]	TDUP 	  6		248	; slot6 = copy table#k248
		1692	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		1693	[  0]	JMP  	  7		37	; 	goto 1731
		1694	[  0]	TGETV	  9	0	8	; slot9 = slot0[slot8]
		1695	[  0]	ISEQS	  9		247	; if slot9 == "랜서"
		1696	[  0]	JMP  	 10		4	; 	goto 1701
		1697	[  0]	ISEQS	  9		246	; if slot9 == "Lancer"
		1698	[  0]	JMP  	 10		2	; 	goto 1701
		1699	[  0]	ISNES	  9		245	; if slot9 ~= "랜서 (Lancer)"
		1700	[  0]	JMP  	 10		12	; 	goto 1713
		1701	[  0]	MOV  	 10		3	; slot10 = slot3
		1702	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1703	[  0]	TDUP 	 13		244	; slot13 = copy table#k244
		1704	[  0]	TDUP 	 14		243	; slot14 = copy table#k243
		1705	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		1706	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1707	[  0]	TDUP 	 13		242	; slot13 = copy table#k242
		1708	[  0]	TDUP 	 14		241	; slot14 = copy table#k241
		1709	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		1710	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		1711	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1712
		1712	[  0]	CALLT	 10		2	; return slot10(slot11)
		1713	[  0]	ISEQS	  9		240	; if slot9 == "백골 창병"
		1714	[  0]	JMP  	 10		4	; 	goto 1719
		1715	[  0]	ISEQS	  9		239	; if slot9 == "Bone Spearman"
		1716	[  0]	JMP  	 10		2	; 	goto 1719
		1717	[  0]	ISNES	  9		238	; if slot9 ~= "백골 창병 (Bone Spearman)"
		1718	[  0]	JMP  	 10		12	; 	goto 1731
		1719	[  0]	MOV  	 10		3	; slot10 = slot3
		1720	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1721	[  0]	TDUP 	 13		237	; slot13 = copy table#k237
		1722	[  0]	TDUP 	 14		236	; slot14 = copy table#k236
		1723	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		1724	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1725	[  0]	TDUP 	 13		235	; slot13 = copy table#k235
		1726	[  0]	TDUP 	 14		234	; slot14 = copy table#k234
		1727	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		1728	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		1729	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1730
		1730	[  0]	CALLT	 10		2	; return slot10(slot11)
		1731	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, slot6; slot7, slot8 = ipairs(slot5, slot6)
		1732	[  0]	ITERL	  7		-39	; slot6 = slot7; if slot7 != nil goto 1694
		1733	[  0]	TGETS	  4	0	479	; slot4 = slot0.grade
		1734	[  0]	ISEQS	  4		478	; if <unknown table>.grade == "prism"
		1735	[  0]	JMP  	  4		3	; 	goto 1739
		1736	[  0]	TGETS	  4	0	477	; slot4 = slot0.jackpot5th
		1737	[  0]	ISNEP	  4		2	; if <unknown table>.jackpot5th ~= true
		1738	[  0]	JMP  	  4		21	; 	goto 1760
		1739	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		1740	[  0]	IST  	   		4	; if <unknown table>.subclass
		1741	[  0]	JMP  	  5		18	; 	goto 1760
		1742	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		1743	[  0]	IST  	   		4	; if <unknown table>.subclassName
		1744	[  0]	JMP  	  5		15	; 	goto 1760
		1745	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		1746	[  0]	IST  	   		4	; if <unknown table>.subclassKey
		1747	[  0]	JMP  	  4		12	; 	goto 1760
		1748	[  0]	MOV  	  4		3	; slot4 = slot3
		1749	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		1750	[  0]	TDUP 	  7		233	; slot7 = copy table#k233
		1751	[  0]	TDUP 	  8		232	; slot8 = copy table#k232
		1752	[  0]	TSETS	  8	7	510	; slot7.statArrows = slot8
		1753	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		1754	[  0]	TDUP 	  7		231	; slot7 = copy table#k231
		1755	[  0]	TDUP 	  8		230	; slot8 = copy table#k230
		1756	[  0]	TSETS	  8	7	510	; slot7.statArrows = slot8
		1757	[  0]	TSETB	  7	6	2	; slot6[2] = slot7
		1758	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1759
		1759	[  0]	CALLT	  4		2	; return slot4(slot5)
		1760	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		1761	[  0]	ISEQS	  4		229	; if <unknown table>.subclass == "창투사"
		1762	[  0]	JMP  	  4		6	; 	goto 1769
		1763	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		1764	[  0]	ISEQS	  4		229	; if <unknown table>.subclassName == "창투사"
		1765	[  0]	JMP  	  4		3	; 	goto 1769
		1766	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		1767	[  0]	ISNES	  4		229	; if <unknown table>.subclassKey ~= "창투사"
		1768	[  0]	JMP  	  4		8	; 	goto 1777
		1769	[  0]	MOV  	  4		3	; slot4 = slot3
		1770	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		1771	[  0]	TDUP 	  7		228	; slot7 = copy table#k228
		1772	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		1773	[  0]	TDUP 	  7		227	; slot7 = copy table#k227
		1774	[  0]	TSETB	  7	6	2	; slot6[2] = slot7
		1775	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1776
		1776	[  0]	CALLT	  4		2	; return slot4(slot5)
		1777	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		1778	[  0]	ISEQS	  4		226	; if <unknown table>.subclass == "보병"
		1779	[  0]	JMP  	  4		8	; 	goto 1788
		1780	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		1781	[  0]	ISEQS	  4		226	; if <unknown table>.subclassName == "보병"
		1782	[  0]	JMP  	  4		5	; 	goto 1788
		1783	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		1784	[  0]	ISEQS	  4		226	; if <unknown table>.subclassKey == "보병"
		1785	[  0]	JMP  	  4		2	; 	goto 1788
		1786	[  0]	KPRI 	  4		1	; slot4 = false
		1787	[  0]	JMP  	  5		1	; 	goto 1789
		1788	[  0]	KPRI 	  4		2	; slot4 = true
		1789	[  0]	ISF  	   		4	; if not slot4
		1790	[  0]	JMP  	  5		8	; 	goto 1799
		1791	[  0]	MOV  	  5		3	; slot5 = slot3
		1792	[  0]	TNEW 	  7		3	; slot7 = new table( array: 3, dict: 1)
		1793	[  0]	TDUP 	  8		225	; slot8 = copy table#k225
		1794	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
		1795	[  0]	TDUP 	  8		224	; slot8 = copy table#k224
		1796	[  0]	TSETB	  8	7	2	; slot7[2] = slot8
		1797	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1798
		1798	[  0]	CALLT	  5		2	; return slot5(slot6)
		1799	[  0]	MOV  	  5		3	; slot5 = slot3
		1800	[  0]	TNEW 	  7		3	; slot7 = new table( array: 3, dict: 1)
		1801	[  0]	TDUP 	  8		223	; slot8 = copy table#k223
		1802	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
		1803	[  0]	TDUP 	  8		222	; slot8 = copy table#k222
		1804	[  0]	TSETB	  8	7	2	; slot7[2] = slot8
		1805	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1806
		1806	[  0]	CALLT	  5		2	; return slot5(slot6)
		1807	[  0]	ISNEN	  1		3	; if slot1 ~= 4
		1808	[  0]	JMP  	  4		69	; 	goto 1878
		1809	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		1810	[  0]	ISEQS	  4		221	; if <unknown table>.subclass == "MiniSpearMan03"
		1811	[  0]	JMP  	  4		8	; 	goto 1820
		1812	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		1813	[  0]	ISEQS	  4		220	; if <unknown table>.subclassName == "근위병"
		1814	[  0]	JMP  	  4		5	; 	goto 1820
		1815	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		1816	[  0]	ISEQS	  4		221	; if <unknown table>.subclassKey == "MiniSpearMan03"
		1817	[  0]	JMP  	  4		2	; 	goto 1820
		1818	[  0]	KPRI 	  4		1	; slot4 = false
		1819	[  0]	JMP  	  5		1	; 	goto 1821
		1820	[  0]	KPRI 	  4		2	; slot4 = true
		1821	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		1822	[  0]	ISEQS	  5		219	; if <unknown table>.subclass == "허스칼"
		1823	[  0]	JMP  	  5		8	; 	goto 1832
		1824	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		1825	[  0]	ISEQS	  5		219	; if <unknown table>.subclassName == "허스칼"
		1826	[  0]	JMP  	  5		5	; 	goto 1832
		1827	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		1828	[  0]	ISEQS	  5		219	; if <unknown table>.subclassKey == "허스칼"
		1829	[  0]	JMP  	  5		2	; 	goto 1832
		1830	[  0]	KPRI 	  5		1	; slot5 = false
		1831	[  0]	JMP  	  6		1	; 	goto 1833
		1832	[  0]	KPRI 	  5		2	; slot5 = true
		1833	[  0]	TGETS	  6	0	519	; slot6 = slot0.subclass
		1834	[  0]	ISEQS	  6		218	; if <unknown table>.subclass == "엘프 근위병"
		1835	[  0]	JMP  	  6		8	; 	goto 1844
		1836	[  0]	TGETS	  6	0	517	; slot6 = slot0.subclassName
		1837	[  0]	ISEQS	  6		218	; if <unknown table>.subclassName == "엘프 근위병"
		1838	[  0]	JMP  	  6		5	; 	goto 1844
		1839	[  0]	TGETS	  6	0	515	; slot6 = slot0.subclassKey
		1840	[  0]	ISEQS	  6		218	; if <unknown table>.subclassKey == "엘프 근위병"
		1841	[  0]	JMP  	  6		2	; 	goto 1844
		1842	[  0]	KPRI 	  6		1	; slot6 = false
		1843	[  0]	JMP  	  7		1	; 	goto 1845
		1844	[  0]	KPRI 	  6		2	; slot6 = true
		1845	[  0]	TGETS	  7	0	519	; slot7 = slot0.subclass
		1846	[  0]	ISEQS	  7		217	; if <unknown table>.subclass == "해골 근위병"
		1847	[  0]	JMP  	  7		8	; 	goto 1856
		1848	[  0]	TGETS	  7	0	517	; slot7 = slot0.subclassName
		1849	[  0]	ISEQS	  7		217	; if <unknown table>.subclassName == "해골 근위병"
		1850	[  0]	JMP  	  7		5	; 	goto 1856
		1851	[  0]	TGETS	  7	0	515	; slot7 = slot0.subclassKey
		1852	[  0]	ISEQS	  7		217	; if <unknown table>.subclassKey == "해골 근위병"
		1853	[  0]	JMP  	  7		2	; 	goto 1856
		1854	[  0]	KPRI 	  7		1	; slot7 = false
		1855	[  0]	JMP  	  8		1	; 	goto 1857
		1856	[  0]	KPRI 	  7		2	; slot7 = true
		1857	[  0]	IST  	   		4	; if slot4
		1858	[  0]	JMP  	  8		2	; 	goto 1861
		1859	[  0]	ISF  	   		5	; if not slot5
		1860	[  0]	JMP  	  8		7	; 	goto 1868
		1861	[  0]	MOV  	  8		3	; slot8 = slot3
		1862	[  0]	TNEW 	 10		3	; slot10 = new table( array: 3, dict: 1)
		1863	[  0]	TDUP 	 11		216	; slot11 = copy table#k216
		1864	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		1865	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1866
		1866	[  0]	CALLT	  8		2	; return slot8(slot9)
		1867	[  0]	JMP  	  8		10	; 	goto 1878
		1868	[  0]	IST  	   		6	; if slot6
		1869	[  0]	JMP  	  8		2	; 	goto 1872
		1870	[  0]	ISF  	   		7	; if not slot7
		1871	[  0]	JMP  	  8		6	; 	goto 1878
		1872	[  0]	MOV  	  8		3	; slot8 = slot3
		1873	[  0]	TNEW 	 10		3	; slot10 = new table( array: 3, dict: 1)
		1874	[  0]	TDUP 	 11		215	; slot11 = copy table#k215
		1875	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		1876	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1877
		1877	[  0]	CALLT	  8		2	; return slot8(slot9)
		1878	[  0]	ISNEN	  1		0	; if slot1 ~= 3
		1879	[  0]	JMP  	  4		196	; 	goto 2076
		1880	[  0]	GGET 	  4		484	; slot4 = _env["ipairs"]
		1881	[  0]	TDUP 	  6		214	; slot6 = copy table#k214
		1882	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		1883	[  0]	JMP  	  7		58	; 	goto 1942
		1884	[  0]	TGETV	  9	0	8	; slot9 = slot0[slot8]
		1885	[  0]	ISEQS	  9		213	; if slot9 == "천공병"
		1886	[  0]	JMP  	 10		4	; 	goto 1891
		1887	[  0]	ISEQS	  9		212	; if slot9 == "Sky Spearman"
		1888	[  0]	JMP  	 10		2	; 	goto 1891
		1889	[  0]	ISNES	  9		211	; if slot9 ~= "천공병 (Sky Spearman)"
		1890	[  0]	JMP  	 10		8	; 	goto 1899
		1891	[  0]	MOV  	 10		3	; slot10 = slot3
		1892	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1893	[  0]	TDUP 	 13		210	; slot13 = copy table#k210
		1894	[  0]	TDUP 	 14		209	; slot14 = copy table#k209
		1895	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		1896	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1897	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1898
		1898	[  0]	CALLT	 10		2	; return slot10(slot11)
		1899	[  0]	ISEQS	  9		208	; if slot9 == "창술사"
		1900	[  0]	JMP  	 10		4	; 	goto 1905
		1901	[  0]	ISEQS	  9		207	; if slot9 == "Spear Adept"
		1902	[  0]	JMP  	 10		2	; 	goto 1905
		1903	[  0]	ISNES	  9		206	; if slot9 ~= "창술사 (Spear Adept)"
		1904	[  0]	JMP  	 10		8	; 	goto 1913
		1905	[  0]	MOV  	 10		3	; slot10 = slot3
		1906	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1907	[  0]	TDUP 	 13		205	; slot13 = copy table#k205
		1908	[  0]	TDUP 	 14		204	; slot14 = copy table#k204
		1909	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		1910	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1911	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1912
		1912	[  0]	CALLT	 10		2	; return slot10(slot11)
		1913	[  0]	ISEQS	  9		203	; if slot9 == "흑위병"
		1914	[  0]	JMP  	 10		4	; 	goto 1919
		1915	[  0]	ISEQS	  9		202	; if slot9 == "Black Guard"
		1916	[  0]	JMP  	 10		2	; 	goto 1919
		1917	[  0]	ISNES	  9		201	; if slot9 ~= "흑위병 (Black Guard)"
		1918	[  0]	JMP  	 10		9	; 	goto 1928
		1919	[  0]	MOV  	 10		3	; slot10 = slot3
		1920	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1921	[  0]	TDUP 	 13		200	; slot13 = copy table#k200
		1922	[  0]	TDUP 	 14		199	; slot14 = copy table#k199
		1923	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		1924	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1925	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1926
		1926	[  0]	CALLT	 10		2	; return slot10(slot11)
		1927	[  0]	JMP  	 10		14	; 	goto 1942
		1928	[  0]	ISEQS	  9		198	; if slot9 == "망령병"
		1929	[  0]	JMP  	 10		4	; 	goto 1934
		1930	[  0]	ISEQS	  9		197	; if slot9 == "Wraith Spearman"
		1931	[  0]	JMP  	 10		2	; 	goto 1934
		1932	[  0]	ISNES	  9		196	; if slot9 ~= "망령병 (Wraith Spearman)"
		1933	[  0]	JMP  	 10		8	; 	goto 1942
		1934	[  0]	MOV  	 10		3	; slot10 = slot3
		1935	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1936	[  0]	TDUP 	 13		195	; slot13 = copy table#k195
		1937	[  0]	TDUP 	 14		194	; slot14 = copy table#k194
		1938	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		1939	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1940	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1941
		1941	[  0]	CALLT	 10		2	; return slot10(slot11)
		1942	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, slot6; slot7, slot8 = ipairs(slot5, slot6)
		1943	[  0]	ITERL	  7		-60	; slot6 = slot7; if slot7 != nil goto 1884
		1944	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		1945	[  0]	ISEQS	  4		193	; if <unknown table>.subclass == "투기 창병"
		1946	[  0]	JMP  	  4		6	; 	goto 1953
		1947	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		1948	[  0]	ISEQS	  4		193	; if <unknown table>.subclassName == "투기 창병"
		1949	[  0]	JMP  	  4		3	; 	goto 1953
		1950	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		1951	[  0]	ISNES	  4		193	; if <unknown table>.subclassKey ~= "투기 창병"
		1952	[  0]	JMP  	  4		6	; 	goto 1959
		1953	[  0]	MOV  	  4		3	; slot4 = slot3
		1954	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		1955	[  0]	TDUP 	  7		192	; slot7 = copy table#k192
		1956	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		1957	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1958
		1958	[  0]	CALLT	  4		2	; return slot4(slot5)
		1959	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		1960	[  0]	ISEQS	  4		191	; if <unknown table>.subclass == "고대 창병"
		1961	[  0]	JMP  	  4		6	; 	goto 1968
		1962	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		1963	[  0]	ISEQS	  4		191	; if <unknown table>.subclassName == "고대 창병"
		1964	[  0]	JMP  	  4		3	; 	goto 1968
		1965	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		1966	[  0]	ISNES	  4		191	; if <unknown table>.subclassKey ~= "고대 창병"
		1967	[  0]	JMP  	  4		6	; 	goto 1974
		1968	[  0]	MOV  	  4		3	; slot4 = slot3
		1969	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		1970	[  0]	TDUP 	  7		190	; slot7 = copy table#k190
		1971	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		1972	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1973
		1973	[  0]	CALLT	  4		2	; return slot4(slot5)
		1974	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		1975	[  0]	ISEQS	  4		189	; if <unknown table>.subclass == "MiniSpearMan02"
		1976	[  0]	JMP  	  4		8	; 	goto 1985
		1977	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		1978	[  0]	ISEQS	  4		188	; if <unknown table>.subclassName == "창위병"
		1979	[  0]	JMP  	  4		5	; 	goto 1985
		1980	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		1981	[  0]	ISEQS	  4		189	; if <unknown table>.subclassKey == "MiniSpearMan02"
		1982	[  0]	JMP  	  4		2	; 	goto 1985
		1983	[  0]	KPRI 	  4		1	; slot4 = false
		1984	[  0]	JMP  	  5		1	; 	goto 1986
		1985	[  0]	KPRI 	  4		2	; slot4 = true
		1986	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		1987	[  0]	ISEQS	  5		187	; if <unknown table>.subclass == "약탈자"
		1988	[  0]	JMP  	  5		8	; 	goto 1997
		1989	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		1990	[  0]	ISEQS	  5		187	; if <unknown table>.subclassName == "약탈자"
		1991	[  0]	JMP  	  5		5	; 	goto 1997
		1992	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		1993	[  0]	ISEQS	  5		187	; if <unknown table>.subclassKey == "약탈자"
		1994	[  0]	JMP  	  5		2	; 	goto 1997
		1995	[  0]	KPRI 	  5		1	; slot5 = false
		1996	[  0]	JMP  	  6		1	; 	goto 1998
		1997	[  0]	KPRI 	  5		2	; slot5 = true
		1998	[  0]	TGETS	  6	0	519	; slot6 = slot0.subclass
		1999	[  0]	ISEQS	  6		186	; if <unknown table>.subclass == "엘프 보병"
		2000	[  0]	JMP  	  6		8	; 	goto 2009
		2001	[  0]	TGETS	  6	0	517	; slot6 = slot0.subclassName
		2002	[  0]	ISEQS	  6		186	; if <unknown table>.subclassName == "엘프 보병"
		2003	[  0]	JMP  	  6		5	; 	goto 2009
		2004	[  0]	TGETS	  6	0	515	; slot6 = slot0.subclassKey
		2005	[  0]	ISEQS	  6		186	; if <unknown table>.subclassKey == "엘프 보병"
		2006	[  0]	JMP  	  6		2	; 	goto 2009
		2007	[  0]	KPRI 	  6		1	; slot6 = false
		2008	[  0]	JMP  	  7		1	; 	goto 2010
		2009	[  0]	KPRI 	  6		2	; slot6 = true
		2010	[  0]	TGETS	  7	0	519	; slot7 = slot0.subclass
		2011	[  0]	ISEQS	  7		185	; if <unknown table>.subclass == "바이킹"
		2012	[  0]	JMP  	  7		8	; 	goto 2021
		2013	[  0]	TGETS	  7	0	517	; slot7 = slot0.subclassName
		2014	[  0]	ISEQS	  7		185	; if <unknown table>.subclassName == "바이킹"
		2015	[  0]	JMP  	  7		5	; 	goto 2021
		2016	[  0]	TGETS	  7	0	515	; slot7 = slot0.subclassKey
		2017	[  0]	ISEQS	  7		185	; if <unknown table>.subclassKey == "바이킹"
		2018	[  0]	JMP  	  7		2	; 	goto 2021
		2019	[  0]	KPRI 	  7		1	; slot7 = false
		2020	[  0]	JMP  	  8		1	; 	goto 2022
		2021	[  0]	KPRI 	  7		2	; slot7 = true
		2022	[  0]	TGETS	  8	0	519	; slot8 = slot0.subclass
		2023	[  0]	ISEQS	  8		184	; if <unknown table>.subclass == "엘프창병"
		2024	[  0]	JMP  	  8		8	; 	goto 2033
		2025	[  0]	TGETS	  8	0	517	; slot8 = slot0.subclassName
		2026	[  0]	ISEQS	  8		184	; if <unknown table>.subclassName == "엘프창병"
		2027	[  0]	JMP  	  8		5	; 	goto 2033
		2028	[  0]	TGETS	  8	0	515	; slot8 = slot0.subclassKey
		2029	[  0]	ISEQS	  8		184	; if <unknown table>.subclassKey == "엘프창병"
		2030	[  0]	JMP  	  8		2	; 	goto 2033
		2031	[  0]	KPRI 	  8		1	; slot8 = false
		2032	[  0]	JMP  	  9		1	; 	goto 2034
		2033	[  0]	KPRI 	  8		2	; slot8 = true
		2034	[  0]	ISF  	   		6	; if not slot6
		2035	[  0]	JMP  	  9		6	; 	goto 2042
		2036	[  0]	MOV  	  9		3	; slot9 = slot3
		2037	[  0]	TNEW 	 11		3	; slot11 = new table( array: 3, dict: 1)
		2038	[  0]	TDUP 	 12		183	; slot12 = copy table#k183
		2039	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		2040	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2041
		2041	[  0]	CALLT	  9		2	; return slot9(slot10)
		2042	[  0]	ISF  	   		7	; if not slot7
		2043	[  0]	JMP  	  9		6	; 	goto 2050
		2044	[  0]	MOV  	  9		3	; slot9 = slot3
		2045	[  0]	TNEW 	 11		3	; slot11 = new table( array: 3, dict: 1)
		2046	[  0]	TDUP 	 12		182	; slot12 = copy table#k182
		2047	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		2048	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2049
		2049	[  0]	CALLT	  9		2	; return slot9(slot10)
		2050	[  0]	ISF  	   		4	; if not slot4
		2051	[  0]	JMP  	  9		6	; 	goto 2058
		2052	[  0]	MOV  	  9		3	; slot9 = slot3
		2053	[  0]	TNEW 	 11		3	; slot11 = new table( array: 3, dict: 1)
		2054	[  0]	TDUP 	 12		181	; slot12 = copy table#k181
		2055	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		2056	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2057
		2057	[  0]	CALLT	  9		2	; return slot9(slot10)
		2058	[  0]	ISF  	   		5	; if not slot5
		2059	[  0]	JMP  	  9		6	; 	goto 2066
		2060	[  0]	MOV  	  9		3	; slot9 = slot3
		2061	[  0]	TNEW 	 11		3	; slot11 = new table( array: 3, dict: 1)
		2062	[  0]	TDUP 	 12		180	; slot12 = copy table#k180
		2063	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		2064	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2065
		2065	[  0]	CALLT	  9		2	; return slot9(slot10)
		2066	[  0]	ISF  	   		8	; if not slot8
		2067	[  0]	JMP  	  9		8	; 	goto 2076
		2068	[  0]	MOV  	  9		3	; slot9 = slot3
		2069	[  0]	TNEW 	 11		3	; slot11 = new table( array: 3, dict: 1)
		2070	[  0]	TDUP 	 12		179	; slot12 = copy table#k179
		2071	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		2072	[  0]	TDUP 	 12		178	; slot12 = copy table#k178
		2073	[  0]	TSETB	 12	11	2	; slot11[2] = slot12
		2074	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2075
		2075	[  0]	CALLT	  9		2	; return slot9(slot10)
		2076	[  0]	TDUP 	  4		177	; slot4 = copy table#k177
		2077	[  0]	TDUP 	  5		176	; slot5 = copy table#k176
		2078	[  0]	MOV  	  6		3	; slot6 = slot3
		2079	[  0]	TNEW 	  8		3	; slot8 = new table( array: 3, dict: 1)
		2080	[  0]	TSETB	  4	8	1	; slot8[1] = slot4
		2081	[  0]	TSETB	  5	8	2	; slot8[2] = slot5
		2082	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2083
		2083	[  0]	CALLT	  6		2	; return slot6(slot7)
		2084	[  0]	JMP  	  4		1009	; 	goto 3094
		2085	[  0]	TGETS	  4	0	522	; slot4 = slot0.sym
		2086	[  0]	ISNES	  4		175	; if <unknown table>.sym ~= "M"
		2087	[  0]	JMP  	  4		501	; 	goto 2589
		2088	[  0]	ISNEN	  1		1	; if slot1 ~= 2
		2089	[  0]	JMP  	  4		96	; 	goto 2186
		2090	[  0]	GGET 	  4		414	; slot4 = _env["require"]
		2091	[  0]	KSTR 	  6		413	; slot6 = "src.game.projectiles"
		2092	[  0]	CALL 	  4	2	2	; slot4 = require(slot5)
		2093	[  0]	TGETS	  4	4	412	; slot4 = require.gunslinger_bullet
		2094	[  0]	KSTR 	  5		174	; slot5 = "isForbiddenMage"
		2095	[  0]	TGETV	  4	4	5	; slot4 = require.gunslinger_bullet[slot5]
		2096	[  0]	MOV  	  6		0	; slot6 = slot0
		2097	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
		2098	[  0]	ISF  	   		4	; if not slot4
		2099	[  0]	JMP  	  5		12	; 	goto 2112
		2100	[  0]	MOV  	  4		3	; slot4 = slot3
		2101	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		2102	[  0]	TDUP 	  7		173	; slot7 = copy table#k173
		2103	[  0]	TDUP 	  8		172	; slot8 = copy table#k172
		2104	[  0]	TSETS	  8	7	510	; slot7.statArrows = slot8
		2105	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		2106	[  0]	TDUP 	  7		171	; slot7 = copy table#k171
		2107	[  0]	TDUP 	  8		170	; slot8 = copy table#k170
		2108	[  0]	TSETS	  8	7	510	; slot7.statArrows = slot8
		2109	[  0]	TSETB	  7	6	2	; slot6[2] = slot7
		2110	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2111
		2111	[  0]	CALLT	  4		2	; return slot4(slot5)
		2112	[  0]	GGET 	  4		484	; slot4 = _env["ipairs"]
		2113	[  0]	TDUP 	  6		169	; slot6 = copy table#k169
		2114	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		2115	[  0]	JMP  	  7		38	; 	goto 2154
		2116	[  0]	TGETV	  9	0	8	; slot9 = slot0[slot8]
		2117	[  0]	ISEQS	  9		168	; if slot9 == "해골술사"
		2118	[  0]	JMP  	 10		4	; 	goto 2123
		2119	[  0]	ISEQS	  9		167	; if slot9 == "Bone Mage"
		2120	[  0]	JMP  	 10		2	; 	goto 2123
		2121	[  0]	ISNES	  9		166	; if slot9 ~= "해골술사 (Bone Mage)"
		2122	[  0]	JMP  	 10		13	; 	goto 2136
		2123	[  0]	MOV  	 10		3	; slot10 = slot3
		2124	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		2125	[  0]	TDUP 	 13		165	; slot13 = copy table#k165
		2126	[  0]	TDUP 	 14		164	; slot14 = copy table#k164
		2127	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		2128	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		2129	[  0]	TDUP 	 13		163	; slot13 = copy table#k163
		2130	[  0]	TDUP 	 14		162	; slot14 = copy table#k162
		2131	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		2132	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		2133	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2134
		2134	[  0]	CALLT	 10		2	; return slot10(slot11)
		2135	[  0]	JMP  	 10		18	; 	goto 2154
		2136	[  0]	ISEQS	  9		161	; if slot9 == "비술사"
		2137	[  0]	JMP  	 10		4	; 	goto 2142
		2138	[  0]	ISEQS	  9		160	; if slot9 == "Arcanist"
		2139	[  0]	JMP  	 10		2	; 	goto 2142
		2140	[  0]	ISNES	  9		159	; if slot9 ~= "비술사 (Arcanist)"
		2141	[  0]	JMP  	 10		12	; 	goto 2154
		2142	[  0]	MOV  	 10		3	; slot10 = slot3
		2143	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		2144	[  0]	TDUP 	 13		158	; slot13 = copy table#k158
		2145	[  0]	TDUP 	 14		157	; slot14 = copy table#k157
		2146	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		2147	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		2148	[  0]	TDUP 	 13		156	; slot13 = copy table#k156
		2149	[  0]	TDUP 	 14		155	; slot14 = copy table#k155
		2150	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		2151	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		2152	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2153
		2153	[  0]	CALLT	 10		2	; return slot10(slot11)
		2154	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, slot6; slot7, slot8 = ipairs(slot5, slot6)
		2155	[  0]	ITERL	  7		-40	; slot6 = slot7; if slot7 != nil goto 2116
		2156	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		2157	[  0]	ISEQS	  4		154	; if <unknown table>.subclass == "마도사"
		2158	[  0]	JMP  	  4		8	; 	goto 2167
		2159	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		2160	[  0]	ISEQS	  4		154	; if <unknown table>.subclassName == "마도사"
		2161	[  0]	JMP  	  4		5	; 	goto 2167
		2162	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		2163	[  0]	ISEQS	  4		154	; if <unknown table>.subclassKey == "마도사"
		2164	[  0]	JMP  	  4		2	; 	goto 2167
		2165	[  0]	KPRI 	  4		1	; slot4 = false
		2166	[  0]	JMP  	  5		1	; 	goto 2168
		2167	[  0]	KPRI 	  4		2	; slot4 = true
		2168	[  0]	ISF  	   		4	; if not slot4
		2169	[  0]	JMP  	  5		8	; 	goto 2178
		2170	[  0]	MOV  	  5		3	; slot5 = slot3
		2171	[  0]	TNEW 	  7		3	; slot7 = new table( array: 3, dict: 1)
		2172	[  0]	TDUP 	  8		153	; slot8 = copy table#k153
		2173	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
		2174	[  0]	TDUP 	  8		152	; slot8 = copy table#k152
		2175	[  0]	TSETB	  8	7	2	; slot7[2] = slot8
		2176	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2177
		2177	[  0]	CALLT	  5		2	; return slot5(slot6)
		2178	[  0]	MOV  	  5		3	; slot5 = slot3
		2179	[  0]	TNEW 	  7		3	; slot7 = new table( array: 3, dict: 1)
		2180	[  0]	TDUP 	  8		151	; slot8 = copy table#k151
		2181	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
		2182	[  0]	TDUP 	  8		150	; slot8 = copy table#k150
		2183	[  0]	TSETB	  8	7	2	; slot7[2] = slot8
		2184	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2185
		2185	[  0]	CALLT	  5		2	; return slot5(slot6)
		2186	[  0]	ISNEN	  1		0	; if slot1 ~= 3
		2187	[  0]	JMP  	  4		204	; 	goto 2392
		2188	[  0]	GGET 	  4		414	; slot4 = _env["require"]
		2189	[  0]	KSTR 	  6		413	; slot6 = "src.game.projectiles"
		2190	[  0]	CALL 	  4	2	2	; slot4 = require(slot5)
		2191	[  0]	TGETS	  4	4	412	; slot4 = require.gunslinger_bullet
		2192	[  0]	KSTR 	  5		149	; slot5 = "isLich"
		2193	[  0]	TGETV	  4	4	5	; slot4 = require.gunslinger_bullet[slot5]
		2194	[  0]	MOV  	  6		0	; slot6 = slot0
		2195	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
		2196	[  0]	ISF  	   		4	; if not slot4
		2197	[  0]	JMP  	  5		8	; 	goto 2206
		2198	[  0]	MOV  	  4		3	; slot4 = slot3
		2199	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		2200	[  0]	TDUP 	  7		148	; slot7 = copy table#k148
		2201	[  0]	TDUP 	  8		147	; slot8 = copy table#k147
		2202	[  0]	TSETS	  8	7	510	; slot7.statArrows = slot8
		2203	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		2204	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2205
		2205	[  0]	CALLT	  4		2	; return slot4(slot5)
		2206	[  0]	GGET 	  4		414	; slot4 = _env["require"]
		2207	[  0]	KSTR 	  6		413	; slot6 = "src.game.projectiles"
		2208	[  0]	CALL 	  4	2	2	; slot4 = require(slot5)
		2209	[  0]	TGETS	  4	4	412	; slot4 = require.gunslinger_bullet
		2210	[  0]	KSTR 	  5		146	; slot5 = "isDiviner"
		2211	[  0]	TGETV	  4	4	5	; slot4 = require.gunslinger_bullet[slot5]
		2212	[  0]	MOV  	  6		0	; slot6 = slot0
		2213	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
		2214	[  0]	ISF  	   		4	; if not slot4
		2215	[  0]	JMP  	  5		8	; 	goto 2224
		2216	[  0]	MOV  	  4		3	; slot4 = slot3
		2217	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		2218	[  0]	TDUP 	  7		145	; slot7 = copy table#k145
		2219	[  0]	TDUP 	  8		144	; slot8 = copy table#k144
		2220	[  0]	TSETS	  8	7	510	; slot7.statArrows = slot8
		2221	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		2222	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2223
		2223	[  0]	CALLT	  4		2	; return slot4(slot5)
		2224	[  0]	GGET 	  4		484	; slot4 = _env["ipairs"]
		2225	[  0]	TDUP 	  6		143	; slot6 = copy table#k143
		2226	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		2227	[  0]	JMP  	  7		60	; 	goto 2288
		2228	[  0]	TGETV	  9	0	8	; slot9 = slot0[slot8]
		2229	[  0]	ISEQS	  9		142	; if slot9 == "심연술사"
		2230	[  0]	JMP  	 10		4	; 	goto 2235
		2231	[  0]	ISEQS	  9		141	; if slot9 == "Abyss Mage"
		2232	[  0]	JMP  	 10		2	; 	goto 2235
		2233	[  0]	ISNES	  9		140	; if slot9 ~= "심연술사 (Abyss Mage)"
		2234	[  0]	JMP  	 10		9	; 	goto 2244
		2235	[  0]	MOV  	 10		3	; slot10 = slot3
		2236	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		2237	[  0]	TDUP 	 13		139	; slot13 = copy table#k139
		2238	[  0]	TDUP 	 14		138	; slot14 = copy table#k138
		2239	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		2240	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		2241	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2242
		2242	[  0]	CALLT	 10		2	; return slot10(slot11)
		2243	[  0]	JMP  	 10		44	; 	goto 2288
		2244	[  0]	ISEQS	  9		137	; if slot9 == "흑마법사"
		2245	[  0]	JMP  	 10		4	; 	goto 2250
		2246	[  0]	ISEQS	  9		136	; if slot9 == "Dark Mage"
		2247	[  0]	JMP  	 10		2	; 	goto 2250
		2248	[  0]	ISNES	  9		135	; if slot9 ~= "흑마법사 (Dark Mage)"
		2249	[  0]	JMP  	 10		9	; 	goto 2259
		2250	[  0]	MOV  	 10		3	; slot10 = slot3
		2251	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		2252	[  0]	TDUP 	 13		134	; slot13 = copy table#k134
		2253	[  0]	TDUP 	 14		133	; slot14 = copy table#k133
		2254	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		2255	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		2256	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2257
		2257	[  0]	CALLT	 10		2	; return slot10(slot11)
		2258	[  0]	JMP  	 10		29	; 	goto 2288
		2259	[  0]	ISEQS	  9		132	; if slot9 == "수정술사"
		2260	[  0]	JMP  	 10		4	; 	goto 2265
		2261	[  0]	ISEQS	  9		131	; if slot9 == "Crystal Mage"
		2262	[  0]	JMP  	 10		2	; 	goto 2265
		2263	[  0]	ISNES	  9		130	; if slot9 ~= "수정술사 (Crystal Mage)"
		2264	[  0]	JMP  	 10		9	; 	goto 2274
		2265	[  0]	MOV  	 10		3	; slot10 = slot3
		2266	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		2267	[  0]	TDUP 	 13		129	; slot13 = copy table#k129
		2268	[  0]	TDUP 	 14		128	; slot14 = copy table#k128
		2269	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		2270	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		2271	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2272
		2272	[  0]	CALLT	 10		2	; return slot10(slot11)
		2273	[  0]	JMP  	 10		14	; 	goto 2288
		2274	[  0]	ISEQS	  9		127	; if slot9 == "화령술사"
		2275	[  0]	JMP  	 10		4	; 	goto 2280
		2276	[  0]	ISEQS	  9		126	; if slot9 == "Flamecaller"
		2277	[  0]	JMP  	 10		2	; 	goto 2280
		2278	[  0]	ISNES	  9		125	; if slot9 ~= "화령술사 (Flamecaller)"
		2279	[  0]	JMP  	 10		8	; 	goto 2288
		2280	[  0]	MOV  	 10		3	; slot10 = slot3
		2281	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		2282	[  0]	TDUP 	 13		124	; slot13 = copy table#k124
		2283	[  0]	TDUP 	 14		123	; slot14 = copy table#k123
		2284	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		2285	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		2286	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2287
		2287	[  0]	CALLT	 10		2	; return slot10(slot11)
		2288	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, slot6; slot7, slot8 = ipairs(slot5, slot6)
		2289	[  0]	ITERL	  7		-62	; slot6 = slot7; if slot7 != nil goto 2228
		2290	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		2291	[  0]	ISEQS	  4		122	; if <unknown table>.subclass == "주술사"
		2292	[  0]	JMP  	  4		8	; 	goto 2301
		2293	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		2294	[  0]	ISEQS	  4		122	; if <unknown table>.subclassName == "주술사"
		2295	[  0]	JMP  	  4		5	; 	goto 2301
		2296	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		2297	[  0]	ISEQS	  4		122	; if <unknown table>.subclassKey == "주술사"
		2298	[  0]	JMP  	  4		2	; 	goto 2301
		2299	[  0]	KPRI 	  4		1	; slot4 = false
		2300	[  0]	JMP  	  5		1	; 	goto 2302
		2301	[  0]	KPRI 	  4		2	; slot4 = true
		2302	[  0]	ISF  	   		4	; if not slot4
		2303	[  0]	JMP  	  5		6	; 	goto 2310
		2304	[  0]	MOV  	  5		3	; slot5 = slot3
		2305	[  0]	TNEW 	  7		3	; slot7 = new table( array: 3, dict: 1)
		2306	[  0]	TDUP 	  8		121	; slot8 = copy table#k121
		2307	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
		2308	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2309
		2309	[  0]	CALLT	  5		2	; return slot5(slot6)
		2310	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		2311	[  0]	ISEQS	  5		120	; if <unknown table>.subclass == "치유술사"
		2312	[  0]	JMP  	  5		8	; 	goto 2321
		2313	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		2314	[  0]	ISEQS	  5		120	; if <unknown table>.subclassName == "치유술사"
		2315	[  0]	JMP  	  5		5	; 	goto 2321
		2316	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		2317	[  0]	ISEQS	  5		120	; if <unknown table>.subclassKey == "치유술사"
		2318	[  0]	JMP  	  5		2	; 	goto 2321
		2319	[  0]	KPRI 	  5		1	; slot5 = false
		2320	[  0]	JMP  	  6		1	; 	goto 2322
		2321	[  0]	KPRI 	  5		2	; slot5 = true
		2322	[  0]	ISF  	   		5	; if not slot5
		2323	[  0]	JMP  	  6		6	; 	goto 2330
		2324	[  0]	MOV  	  6		3	; slot6 = slot3
		2325	[  0]	TNEW 	  8		3	; slot8 = new table( array: 3, dict: 1)
		2326	[  0]	TDUP 	  9		119	; slot9 = copy table#k119
		2327	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		2328	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2329
		2329	[  0]	CALLT	  6		2	; return slot6(slot7)
		2330	[  0]	TGETS	  6	0	519	; slot6 = slot0.subclass
		2331	[  0]	ISEQS	  6		118	; if <unknown table>.subclass == "야생법사"
		2332	[  0]	JMP  	  6		8	; 	goto 2341
		2333	[  0]	TGETS	  6	0	517	; slot6 = slot0.subclassName
		2334	[  0]	ISEQS	  6		118	; if <unknown table>.subclassName == "야생법사"
		2335	[  0]	JMP  	  6		5	; 	goto 2341
		2336	[  0]	TGETS	  6	0	515	; slot6 = slot0.subclassKey
		2337	[  0]	ISEQS	  6		118	; if <unknown table>.subclassKey == "야생법사"
		2338	[  0]	JMP  	  6		2	; 	goto 2341
		2339	[  0]	KPRI 	  6		1	; slot6 = false
		2340	[  0]	JMP  	  7		1	; 	goto 2342
		2341	[  0]	KPRI 	  6		2	; slot6 = true
		2342	[  0]	ISF  	   		6	; if not slot6
		2343	[  0]	JMP  	  7		6	; 	goto 2350
		2344	[  0]	MOV  	  7		3	; slot7 = slot3
		2345	[  0]	TNEW 	  9		3	; slot9 = new table( array: 3, dict: 1)
		2346	[  0]	TDUP 	 10		117	; slot10 = copy table#k117
		2347	[  0]	TSETB	 10	9	1	; slot9[1] = slot10
		2348	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2349
		2349	[  0]	CALLT	  7		2	; return slot7(slot8)
		2350	[  0]	TGETS	  7	0	519	; slot7 = slot0.subclass
		2351	[  0]	ISEQS	  7		116	; if <unknown table>.subclass == "엘프법사"
		2352	[  0]	JMP  	  7		8	; 	goto 2361
		2353	[  0]	TGETS	  7	0	517	; slot7 = slot0.subclassName
		2354	[  0]	ISEQS	  7		116	; if <unknown table>.subclassName == "엘프법사"
		2355	[  0]	JMP  	  7		5	; 	goto 2361
		2356	[  0]	TGETS	  7	0	515	; slot7 = slot0.subclassKey
		2357	[  0]	ISEQS	  7		116	; if <unknown table>.subclassKey == "엘프법사"
		2358	[  0]	JMP  	  7		2	; 	goto 2361
		2359	[  0]	KPRI 	  7		1	; slot7 = false
		2360	[  0]	JMP  	  8		1	; 	goto 2362
		2361	[  0]	KPRI 	  7		2	; slot7 = true
		2362	[  0]	ISF  	   		7	; if not slot7
		2363	[  0]	JMP  	  8		6	; 	goto 2370
		2364	[  0]	MOV  	  8		3	; slot8 = slot3
		2365	[  0]	TNEW 	 10		3	; slot10 = new table( array: 3, dict: 1)
		2366	[  0]	TDUP 	 11		115	; slot11 = copy table#k115
		2367	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		2368	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2369
		2369	[  0]	CALLT	  8		2	; return slot8(slot9)
		2370	[  0]	TGETS	  8	0	519	; slot8 = slot0.subclass
		2371	[  0]	ISEQS	  8		114	; if <unknown table>.subclass == "엘프 주술사"
		2372	[  0]	JMP  	  8		8	; 	goto 2381
		2373	[  0]	TGETS	  8	0	517	; slot8 = slot0.subclassName
		2374	[  0]	ISEQS	  8		114	; if <unknown table>.subclassName == "엘프 주술사"
		2375	[  0]	JMP  	  8		5	; 	goto 2381
		2376	[  0]	TGETS	  8	0	515	; slot8 = slot0.subclassKey
		2377	[  0]	ISEQS	  8		114	; if <unknown table>.subclassKey == "엘프 주술사"
		2378	[  0]	JMP  	  8		2	; 	goto 2381
		2379	[  0]	KPRI 	  8		1	; slot8 = false
		2380	[  0]	JMP  	  9		1	; 	goto 2382
		2381	[  0]	KPRI 	  8		2	; slot8 = true
		2382	[  0]	ISF  	   		8	; if not slot8
		2383	[  0]	JMP  	  9		8	; 	goto 2392
		2384	[  0]	MOV  	  9		3	; slot9 = slot3
		2385	[  0]	TNEW 	 11		3	; slot11 = new table( array: 3, dict: 1)
		2386	[  0]	TDUP 	 12		113	; slot12 = copy table#k113
		2387	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		2388	[  0]	TDUP 	 12		112	; slot12 = copy table#k112
		2389	[  0]	TSETB	 12	11	2	; slot11[2] = slot12
		2390	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2391
		2391	[  0]	CALLT	  9		2	; return slot9(slot10)
		2392	[  0]	ISNEN	  1		3	; if slot1 ~= 4
		2393	[  0]	JMP  	  4		70	; 	goto 2464
		2394	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		2395	[  0]	ISEQS	  4		111	; if <unknown table>.subclass == "대주술사"
		2396	[  0]	JMP  	  4		8	; 	goto 2405
		2397	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		2398	[  0]	ISEQS	  4		111	; if <unknown table>.subclassName == "대주술사"
		2399	[  0]	JMP  	  4		5	; 	goto 2405
		2400	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		2401	[  0]	ISEQS	  4		111	; if <unknown table>.subclassKey == "대주술사"
		2402	[  0]	JMP  	  4		2	; 	goto 2405
		2403	[  0]	KPRI 	  4		1	; slot4 = false
		2404	[  0]	JMP  	  5		1	; 	goto 2406
		2405	[  0]	KPRI 	  4		2	; slot4 = true
		2406	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		2407	[  0]	ISEQS	  5		120	; if <unknown table>.subclass == "치유술사"
		2408	[  0]	JMP  	  5		8	; 	goto 2417
		2409	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		2410	[  0]	ISEQS	  5		120	; if <unknown table>.subclassName == "치유술사"
		2411	[  0]	JMP  	  5		5	; 	goto 2417
		2412	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		2413	[  0]	ISEQS	  5		120	; if <unknown table>.subclassKey == "치유술사"
		2414	[  0]	JMP  	  5		2	; 	goto 2417
		2415	[  0]	KPRI 	  5		1	; slot5 = false
		2416	[  0]	JMP  	  6		1	; 	goto 2418
		2417	[  0]	KPRI 	  5		2	; slot5 = true
		2418	[  0]	TGETS	  6	0	519	; slot6 = slot0.subclass
		2419	[  0]	ISEQS	  6		110	; if <unknown table>.subclass == "엘프 현자"
		2420	[  0]	JMP  	  6		8	; 	goto 2429
		2421	[  0]	TGETS	  6	0	517	; slot6 = slot0.subclassName
		2422	[  0]	ISEQS	  6		110	; if <unknown table>.subclassName == "엘프 현자"
		2423	[  0]	JMP  	  6		5	; 	goto 2429
		2424	[  0]	TGETS	  6	0	515	; slot6 = slot0.subclassKey
		2425	[  0]	ISEQS	  6		110	; if <unknown table>.subclassKey == "엘프 현자"
		2426	[  0]	JMP  	  6		2	; 	goto 2429
		2427	[  0]	KPRI 	  6		1	; slot6 = false
		2428	[  0]	JMP  	  7		1	; 	goto 2430
		2429	[  0]	KPRI 	  6		2	; slot6 = true
		2430	[  0]	TGETS	  7	0	519	; slot7 = slot0.subclass
		2431	[  0]	ISEQS	  7		109	; if <unknown table>.subclass == "해골 마도사"
		2432	[  0]	JMP  	  7		8	; 	goto 2441
		2433	[  0]	TGETS	  7	0	517	; slot7 = slot0.subclassName
		2434	[  0]	ISEQS	  7		109	; if <unknown table>.subclassName == "해골 마도사"
		2435	[  0]	JMP  	  7		5	; 	goto 2441
		2436	[  0]	TGETS	  7	0	515	; slot7 = slot0.subclassKey
		2437	[  0]	ISEQS	  7		109	; if <unknown table>.subclassKey == "해골 마도사"
		2438	[  0]	JMP  	  7		2	; 	goto 2441
		2439	[  0]	KPRI 	  7		1	; slot7 = false
		2440	[  0]	JMP  	  8		1	; 	goto 2442
		2441	[  0]	KPRI 	  7		2	; slot7 = true
		2442	[  0]	TGETS	  8	0	519	; slot8 = slot0.subclass
		2443	[  0]	ISEQS	  8		108	; if <unknown table>.subclass == "원시법사"
		2444	[  0]	JMP  	  8		8	; 	goto 2453
		2445	[  0]	TGETS	  8	0	517	; slot8 = slot0.subclassName
		2446	[  0]	ISEQS	  8		108	; if <unknown table>.subclassName == "원시법사"
		2447	[  0]	JMP  	  8		5	; 	goto 2453
		2448	[  0]	TGETS	  8	0	515	; slot8 = slot0.subclassKey
		2449	[  0]	ISEQS	  8		108	; if <unknown table>.subclassKey == "원시법사"
		2450	[  0]	JMP  	  8		2	; 	goto 2453
		2451	[  0]	KPRI 	  8		1	; slot8 = false
		2452	[  0]	JMP  	  9		1	; 	goto 2454
		2453	[  0]	KPRI 	  8		2	; slot8 = true
		2454	[  0]	IST  	   		4	; if slot4
		2455	[  0]	JMP  	  9		2	; 	goto 2458
		2456	[  0]	ISF  	   		5	; if not slot5
		2457	[  0]	JMP  	  9		6	; 	goto 2464
		2458	[  0]	MOV  	  9		3	; slot9 = slot3
		2459	[  0]	TNEW 	 11		3	; slot11 = new table( array: 3, dict: 1)
		2460	[  0]	TDUP 	 12		107	; slot12 = copy table#k107
		2461	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		2462	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2463
		2463	[  0]	CALLT	  9		2	; return slot9(slot10)
		2464	[  0]	ISNEN	  1		2	; if slot1 ~= 5
		2465	[  0]	JMP  	  4		20	; 	goto 2486
		2466	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		2467	[  0]	ISEQS	  4		106	; if <unknown table>.subclass == "루나 현자"
		2468	[  0]	JMP  	  4		8	; 	goto 2477
		2469	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		2470	[  0]	ISEQS	  4		106	; if <unknown table>.subclassName == "루나 현자"
		2471	[  0]	JMP  	  4		5	; 	goto 2477
		2472	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		2473	[  0]	ISEQS	  4		106	; if <unknown table>.subclassKey == "루나 현자"
		2474	[  0]	JMP  	  4		2	; 	goto 2477
		2475	[  0]	KPRI 	  4		1	; slot4 = false
		2476	[  0]	JMP  	  5		1	; 	goto 2478
		2477	[  0]	KPRI 	  4		2	; slot4 = true
		2478	[  0]	ISF  	   		4	; if not slot4
		2479	[  0]	JMP  	  5		6	; 	goto 2486
		2480	[  0]	MOV  	  5		3	; slot5 = slot3
		2481	[  0]	TNEW 	  7		3	; slot7 = new table( array: 3, dict: 1)
		2482	[  0]	TDUP 	  8		105	; slot8 = copy table#k105
		2483	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
		2484	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2485
		2485	[  0]	CALLT	  5		2	; return slot5(slot6)
		2486	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		2487	[  0]	TGETS	  4	4	348	; slot4 = uv2"unknown".resolveDominantAxis
		2488	[  0]	MOV  	  6		0	; slot6 = slot0
		2489	[  0]	CALL 	  4	2	2	; slot4 = uv2"unknown".resolveDominantAxis(slot5)
		2490	[  0]	ISNES	  4		104	; if uv2"unknown".resolveDominantAxis ~= "hp"
		2491	[  0]	JMP  	  5		54	; 	goto 2546
		2492	[  0]	TDUP 	  5		103	; slot5 = copy table#k103
		2493	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		2494	[  0]	TDUP 	  7		102	; slot7 = copy table#k102
		2495	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		2496	[  0]	TDUP 	  7		101	; slot7 = copy table#k101
		2497	[  0]	TSETB	  7	6	2	; slot6[2] = slot7
		2498	[  0]	TNEW 	  7		4	; slot7 = new table( array: 4, dict: 1)
		2499	[  0]	TDUP 	  8		100	; slot8 = copy table#k100
		2500	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
		2501	[  0]	TDUP 	  8		99	; slot8 = copy table#k99
		2502	[  0]	TSETB	  8	7	2	; slot7[2] = slot8
		2503	[  0]	TDUP 	  8		98	; slot8 = copy table#k98
		2504	[  0]	TSETB	  8	7	3	; slot7[3] = slot8
		2505	[  0]	GGET 	  8		418	; slot8 = _env["love"]
		2506	[  0]	TGETS	  8	8	417	; slot8 = love.math
		2507	[  0]	TGETS	  8	8	416	; slot8 = love.math.random
		2508	[  0]	KSHORT	 10		1	; slot10 = 1
		2509	[  0]	LEN  	 11		6	; slot11 = #slot6
		2510	[  0]	CALL 	  8	2	3	; slot8 = love.math.random(slot9, slot10)
		2511	[  0]	TGETV	  9	6	8	; slot9 = slot6[love.math.random]
		2512	[  0]	TNEW 	 10		0	; slot10 = new table( array: 0, dict: 1)
		2513	[  0]	FNEW 	 11		97	; N/A:0-0: 1 args, 2 upvalues, 3 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	TGETS	  1	0	0	; slot1 = slot0.id
			  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  3	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".id
			  4	[  0]	ISEQV	  1		2	; if <unknown table>.id == uv0"unknown".id
			  5	[  0]	JMP  	  1		5	; 	goto 11
			  6	[  0]	TGETS	  1	0	0	; slot1 = slot0.id
			  7	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  8	[  0]	TGETS	  2	2	0	; slot2 = uv1"unknown".id
			  9	[  0]	ISNEV	  1		2	; if <unknown table>.id ~= uv1"unknown".id
			 10	[  0]	JMP  	  1		2	; 	goto 13
			 11	[  0]	KPRI 	  1		1	; slot1 = false
			 12	[  0]	JMP  	  2		1	; 	goto 14
			 13	[  0]	KPRI 	  1		2	; slot1 = true
			 14	[  0]	RET1 	  1		2	; return slot1
		2514	[  0]	GGET 	 12		484	; slot12 = _env["ipairs"]
		2515	[  0]	MOV  	 14		7	; slot14 = slot7
		2516	[  0]	CALL 	 12	4	2	; slot12, slot13, slot14 = ipairs(slot13)
		2517	[  0]	JMP  	 15		11	; 	goto 2529
		2518	[  0]	MOV  	 17		11	; slot17 = slot11
		2519	[  0]	MOV  	 19		16	; slot19 = slot16
		2520	[  0]	CALL 	 17	2	2	; slot17 = slot17(slot18)
		2521	[  0]	ISF  	   		17	; if not slot17
		2522	[  0]	JMP  	 18		6	; 	goto 2529
		2523	[  0]	GGET 	 17		96	; slot17 = _env["table"]
		2524	[  0]	KSTR 	 18		95	; slot18 = "insert"
		2525	[  0]	TGETV	 17	17	18	; slot17 = table[slot18]
		2526	[  0]	MOV  	 19		10	; slot19 = slot10
		2527	[  0]	MOV  	 20		16	; slot20 = slot16
		2528	[  0]	CALL 	 17	1	3	;  = slot17(slot18, slot19)
		2529	[  0]	ITERC	 15	3	3	; slot15, slot16, slot17 = ipairs, slot13, slot14; slot15, slot16 = ipairs(slot13, slot14)
		2530	[  0]	ITERL	 15		-13	; slot14 = slot15; if slot15 != nil goto 2518
		2531	[  0]	GGET 	 12		418	; slot12 = _env["love"]
		2532	[  0]	TGETS	 12	12	417	; slot12 = love.math
		2533	[  0]	TGETS	 12	12	416	; slot12 = love.math.random
		2534	[  0]	KSHORT	 14		1	; slot14 = 1
		2535	[  0]	LEN  	 15		10	; slot15 = #slot10
		2536	[  0]	CALL 	 12	2	3	; slot12 = love.math.random(slot13, slot14)
		2537	[  0]	TGETV	 12	10	12	; slot12 = slot10[love.math.random]
		2538	[  0]	MOV  	 13		3	; slot13 = slot3
		2539	[  0]	TNEW 	 15		4	; slot15 = new table( array: 4, dict: 1)
		2540	[  0]	TSETB	  5	15	1	; slot15[1] = slot5
		2541	[  0]	TSETB	  9	15	2	; slot15[2] = slot9
		2542	[  0]	TSETB	 12	15	3	; slot15[3] = slot12
		2543	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2544
		2544	[  0]	CALLT	 13		2	; return slot13(slot14)
		2545	[  0]	UCLO 	  5		548	; nil uvs >= r5; goto 3094
		2546	[  0]	TDUP 	  5		94	; slot5 = copy table#k94
		2547	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		2548	[  0]	TDUP 	  7		93	; slot7 = copy table#k93
		2549	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		2550	[  0]	TDUP 	  7		92	; slot7 = copy table#k92
		2551	[  0]	TSETB	  7	6	2	; slot6[2] = slot7
		2552	[  0]	GGET 	  7		418	; slot7 = _env["love"]
		2553	[  0]	TGETS	  7	7	417	; slot7 = love.math
		2554	[  0]	TGETS	  7	7	416	; slot7 = love.math.random
		2555	[  0]	KSHORT	  9		1	; slot9 = 1
		2556	[  0]	LEN  	 10		6	; slot10 = #slot6
		2557	[  0]	CALL 	  7	2	3	; slot7 = love.math.random(love.math.random, slot9)
		2558	[  0]	TGETV	  8	6	7	; slot8 = slot6[love.math.random]
		2559	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
		2560	[  0]	GGET 	 10		484	; slot10 = _env["ipairs"]
		2561	[  0]	MOV  	 12		6	; slot12 = slot6
		2562	[  0]	CALL 	 10	4	2	; slot10, slot11, slot12 = ipairs(slot11)
		2563	[  0]	JMP  	 13		8	; 	goto 2572
		2564	[  0]	ISEQV	 13		7	; if slot13 == love.math.random
		2565	[  0]	JMP  	 15		6	; 	goto 2572
		2566	[  0]	GGET 	 15		96	; slot15 = _env["table"]
		2567	[  0]	KSTR 	 16		95	; slot16 = "insert"
		2568	[  0]	TGETV	 15	15	16	; slot15 = table[slot16]
		2569	[  0]	MOV  	 17		9	; slot17 = slot9
		2570	[  0]	MOV  	 18		14	; slot18 = slot14
		2571	[  0]	CALL 	 15	1	3	;  = slot15(slot16, slot17)
		2572	[  0]	ITERC	 13	3	3	; slot13, slot14, slot15 = ipairs, slot11, slot12; slot13, slot14 = ipairs(slot11, slot12)
		2573	[  0]	ITERL	 13		-10	; slot12 = slot13; if slot13 != nil goto 2564
		2574	[  0]	GGET 	 10		418	; slot10 = _env["love"]
		2575	[  0]	TGETS	 10	10	417	; slot10 = love.math
		2576	[  0]	TGETS	 10	10	416	; slot10 = love.math.random
		2577	[  0]	KSHORT	 12		1	; slot12 = 1
		2578	[  0]	LEN  	 13		9	; slot13 = #slot9
		2579	[  0]	CALL 	 10	2	3	; slot10 = love.math.random(slot11, slot12)
		2580	[  0]	TGETV	 10	9	10	; slot10 = slot9[love.math.random]
		2581	[  0]	MOV  	 11		3	; slot11 = slot3
		2582	[  0]	TNEW 	 13		4	; slot13 = new table( array: 4, dict: 1)
		2583	[  0]	TSETB	  5	13	1	; slot13[1] = slot5
		2584	[  0]	TSETB	  8	13	2	; slot13[2] = slot8
		2585	[  0]	TSETB	 10	13	3	; slot13[3] = slot10
		2586	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2587
		2587	[  0]	CALLT	 11		2	; return slot11(slot12)
		2588	[  0]	JMP  	  4		505	; 	goto 3094
		2589	[  0]	TGETS	  4	0	522	; slot4 = slot0.sym
		2590	[  0]	ISNES	  4		91	; if <unknown table>.sym ~= "H"
		2591	[  0]	JMP  	  4		502	; 	goto 3094
		2592	[  0]	ISNEN	  1		1	; if slot1 ~= 2
		2593	[  0]	JMP  	  4		127	; 	goto 2721
		2594	[  0]	KPRI 	  4		1	; slot4 = false
		2595	[  0]	GGET 	  5		484	; slot5 = _env["ipairs"]
		2596	[  0]	TDUP 	  7		90	; slot7 = copy table#k90
		2597	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		2598	[  0]	JMP  	  8		9	; 	goto 2608
		2599	[  0]	TGETV	 10	0	9	; slot10 = slot0[slot9]
		2600	[  0]	ISEQS	 10		89	; if slot10 == "환수기병"
		2601	[  0]	JMP  	 11		4	; 	goto 2606
		2602	[  0]	ISEQS	 10		88	; if slot10 == "Beast Cavalry"
		2603	[  0]	JMP  	 11		2	; 	goto 2606
		2604	[  0]	ISNES	 10		87	; if slot10 ~= "환수기병 (Beast Cavalry)"
		2605	[  0]	JMP  	 11		2	; 	goto 2608
		2606	[  0]	KPRI 	  4		2	; slot4 = true
		2607	[  0]	JMP  	  5		2	; 	goto 2610
		2608	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		2609	[  0]	ITERL	  8		-11	; slot7 = slot8; if slot8 != nil goto 2599
		2610	[  0]	IST  	   		4	; if slot4
		2611	[  0]	JMP  	  5		15	; 	goto 2627
		2612	[  0]	TGETS	  5	0	479	; slot5 = slot0.grade
		2613	[  0]	ISEQS	  5		478	; if <unknown table>.grade == "prism"
		2614	[  0]	JMP  	  5		3	; 	goto 2618
		2615	[  0]	TGETS	  5	0	477	; slot5 = slot0.jackpot5th
		2616	[  0]	ISNEP	  5		2	; if <unknown table>.jackpot5th ~= true
		2617	[  0]	JMP  	  5		21	; 	goto 2639
		2618	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		2619	[  0]	IST  	   		5	; if <unknown table>.subclass
		2620	[  0]	JMP  	  6		18	; 	goto 2639
		2621	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		2622	[  0]	IST  	   		5	; if <unknown table>.subclassName
		2623	[  0]	JMP  	  6		15	; 	goto 2639
		2624	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		2625	[  0]	IST  	   		5	; if <unknown table>.subclassKey
		2626	[  0]	JMP  	  5		12	; 	goto 2639
		2627	[  0]	MOV  	  5		3	; slot5 = slot3
		2628	[  0]	TNEW 	  7		3	; slot7 = new table( array: 3, dict: 1)
		2629	[  0]	TDUP 	  8		86	; slot8 = copy table#k86
		2630	[  0]	TDUP 	  9		85	; slot9 = copy table#k85
		2631	[  0]	TSETS	  9	8	510	; slot8.statArrows = slot9
		2632	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
		2633	[  0]	TDUP 	  8		84	; slot8 = copy table#k84
		2634	[  0]	TDUP 	  9		83	; slot9 = copy table#k83
		2635	[  0]	TSETS	  9	8	510	; slot8.statArrows = slot9
		2636	[  0]	TSETB	  8	7	2	; slot7[2] = slot8
		2637	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2638
		2638	[  0]	CALLT	  5		2	; return slot5(slot6)
		2639	[  0]	GGET 	  5		484	; slot5 = _env["ipairs"]
		2640	[  0]	TDUP 	  7		82	; slot7 = copy table#k82
		2641	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		2642	[  0]	JMP  	  8		38	; 	goto 2681
		2643	[  0]	TGETV	 10	0	9	; slot10 = slot0[slot9]
		2644	[  0]	ISEQS	 10		81	; if slot10 == "사령기병"
		2645	[  0]	JMP  	 11		4	; 	goto 2650
		2646	[  0]	ISEQS	 10		80	; if slot10 == "Dread Cavalry"
		2647	[  0]	JMP  	 11		2	; 	goto 2650
		2648	[  0]	ISNES	 10		79	; if slot10 ~= "사령기병 (Dread Cavalry)"
		2649	[  0]	JMP  	 11		13	; 	goto 2663
		2650	[  0]	MOV  	 11		3	; slot11 = slot3
		2651	[  0]	TNEW 	 13		3	; slot13 = new table( array: 3, dict: 1)
		2652	[  0]	TDUP 	 14		78	; slot14 = copy table#k78
		2653	[  0]	TDUP 	 15		77	; slot15 = copy table#k77
		2654	[  0]	TSETS	 15	14	510	; slot14.statArrows = slot15
		2655	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		2656	[  0]	TDUP 	 14		76	; slot14 = copy table#k76
		2657	[  0]	TDUP 	 15		75	; slot15 = copy table#k75
		2658	[  0]	TSETS	 15	14	510	; slot14.statArrows = slot15
		2659	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		2660	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2661
		2661	[  0]	CALLT	 11		2	; return slot11(slot12)
		2662	[  0]	JMP  	 11		18	; 	goto 2681
		2663	[  0]	ISEQS	 10		74	; if slot10 == "경기병"
		2664	[  0]	JMP  	 11		4	; 	goto 2669
		2665	[  0]	ISEQS	 10		73	; if slot10 == "Light Cavalry"
		2666	[  0]	JMP  	 11		2	; 	goto 2669
		2667	[  0]	ISNES	 10		72	; if slot10 ~= "경기병 (Light Cavalry)"
		2668	[  0]	JMP  	 11		12	; 	goto 2681
		2669	[  0]	MOV  	 11		3	; slot11 = slot3
		2670	[  0]	TNEW 	 13		3	; slot13 = new table( array: 3, dict: 1)
		2671	[  0]	TDUP 	 14		71	; slot14 = copy table#k71
		2672	[  0]	TDUP 	 15		70	; slot15 = copy table#k70
		2673	[  0]	TSETS	 15	14	510	; slot14.statArrows = slot15
		2674	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		2675	[  0]	TDUP 	 14		69	; slot14 = copy table#k69
		2676	[  0]	TDUP 	 15		68	; slot15 = copy table#k68
		2677	[  0]	TSETS	 15	14	510	; slot14.statArrows = slot15
		2678	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		2679	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2680
		2680	[  0]	CALLT	 11		2	; return slot11(slot12)
		2681	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		2682	[  0]	ITERL	  8		-40	; slot7 = slot8; if slot8 != nil goto 2643
		2683	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		2684	[  0]	ISEQS	  5		67	; if <unknown table>.subclass == "철기병"
		2685	[  0]	JMP  	  5		16	; 	goto 2702
		2686	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		2687	[  0]	ISEQS	  5		67	; if <unknown table>.subclassName == "철기병"
		2688	[  0]	JMP  	  5		13	; 	goto 2702
		2689	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		2690	[  0]	ISEQS	  5		67	; if <unknown table>.subclassKey == "철기병"
		2691	[  0]	JMP  	  5		10	; 	goto 2702
		2692	[  0]	GGET 	  5		291	; slot5 = _env["tostring"]
		2693	[  0]	TGETS	  7	0	479	; slot7 = slot0.grade
		2694	[  0]	IST  	   		7	; if <unknown table>.grade
		2695	[  0]	JMP  	  8		1	; 	goto 2697
		2696	[  0]	KSTR 	  7		66	; slot7 = ""
		2697	[  0]	CALL 	  5	2	2	; slot5 = tostring(slot6)
		2698	[  0]	ISEQS	  5		320	; if tostring == "advanced"
		2699	[  0]	JMP  	  5		2	; 	goto 2702
		2700	[  0]	KPRI 	  5		1	; slot5 = false
		2701	[  0]	JMP  	  6		1	; 	goto 2703
		2702	[  0]	KPRI 	  5		2	; slot5 = true
		2703	[  0]	ISF  	   		5	; if not slot5
		2704	[  0]	JMP  	  6		8	; 	goto 2713
		2705	[  0]	MOV  	  6		3	; slot6 = slot3
		2706	[  0]	TNEW 	  8		3	; slot8 = new table( array: 3, dict: 1)
		2707	[  0]	TDUP 	  9		65	; slot9 = copy table#k65
		2708	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		2709	[  0]	TDUP 	  9		64	; slot9 = copy table#k64
		2710	[  0]	TSETB	  9	8	2	; slot8[2] = slot9
		2711	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2712
		2712	[  0]	CALLT	  6		2	; return slot6(slot7)
		2713	[  0]	MOV  	  6		3	; slot6 = slot3
		2714	[  0]	TNEW 	  8		3	; slot8 = new table( array: 3, dict: 1)
		2715	[  0]	TDUP 	  9		63	; slot9 = copy table#k63
		2716	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		2717	[  0]	TDUP 	  9		62	; slot9 = copy table#k62
		2718	[  0]	TSETB	  9	8	2	; slot8[2] = slot9
		2719	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2720
		2720	[  0]	CALLT	  6		2	; return slot6(slot7)
		2721	[  0]	ISNEN	  1		0	; if slot1 ~= 3
		2722	[  0]	JMP  	  4		208	; 	goto 2931
		2723	[  0]	GGET 	  4		484	; slot4 = _env["ipairs"]
		2724	[  0]	TDUP 	  6		61	; slot6 = copy table#k61
		2725	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		2726	[  0]	JMP  	  7		15	; 	goto 2742
		2727	[  0]	TGETV	  9	0	8	; slot9 = slot0[slot8]
		2728	[  0]	ISEQS	  9		60	; if slot9 == "페이즈"
		2729	[  0]	JMP  	 10		4	; 	goto 2734
		2730	[  0]	ISEQS	  9		59	; if slot9 == "Phase"
		2731	[  0]	JMP  	 10		2	; 	goto 2734
		2732	[  0]	ISNES	  9		58	; if slot9 ~= "페이즈 (Phase)"
		2733	[  0]	JMP  	 10		8	; 	goto 2742
		2734	[  0]	MOV  	 10		3	; slot10 = slot3
		2735	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		2736	[  0]	TDUP 	 13		57	; slot13 = copy table#k57
		2737	[  0]	TDUP 	 14		56	; slot14 = copy table#k56
		2738	[  0]	TSETS	 14	13	510	; slot13.statArrows = slot14
		2739	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		2740	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2741
		2741	[  0]	CALLT	 10		2	; return slot10(slot11)
		2742	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, slot6; slot7, slot8 = ipairs(slot5, slot6)
		2743	[  0]	ITERL	  7		-17	; slot6 = slot7; if slot7 != nil goto 2727
		2744	[  0]	KPRI 	  4		1	; slot4 = false
		2745	[  0]	GGET 	  5		484	; slot5 = _env["ipairs"]
		2746	[  0]	TDUP 	  7		55	; slot7 = copy table#k55
		2747	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		2748	[  0]	JMP  	  8		9	; 	goto 2758
		2749	[  0]	TGETV	 10	0	9	; slot10 = slot0[slot9]
		2750	[  0]	ISEQS	 10		54	; if slot10 == "실반"
		2751	[  0]	JMP  	 11		4	; 	goto 2756
		2752	[  0]	ISEQS	 10		53	; if slot10 == "Sylvan"
		2753	[  0]	JMP  	 11		2	; 	goto 2756
		2754	[  0]	ISNES	 10		52	; if slot10 ~= "실반 (Sylvan)"
		2755	[  0]	JMP  	 11		2	; 	goto 2758
		2756	[  0]	KPRI 	  4		2	; slot4 = true
		2757	[  0]	JMP  	  5		2	; 	goto 2760
		2758	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		2759	[  0]	ITERL	  8		-11	; slot7 = slot8; if slot8 != nil goto 2749
		2760	[  0]	IST  	   		4	; if slot4
		2761	[  0]	JMP  	  5		15	; 	goto 2777
		2762	[  0]	TGETS	  5	0	479	; slot5 = slot0.grade
		2763	[  0]	ISEQS	  5		478	; if <unknown table>.grade == "prism"
		2764	[  0]	JMP  	  5		3	; 	goto 2768
		2765	[  0]	TGETS	  5	0	477	; slot5 = slot0.jackpot5th
		2766	[  0]	ISNEP	  5		2	; if <unknown table>.jackpot5th ~= true
		2767	[  0]	JMP  	  5		17	; 	goto 2785
		2768	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		2769	[  0]	IST  	   		5	; if <unknown table>.subclass
		2770	[  0]	JMP  	  6		14	; 	goto 2785
		2771	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		2772	[  0]	IST  	   		5	; if <unknown table>.subclassName
		2773	[  0]	JMP  	  6		11	; 	goto 2785
		2774	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		2775	[  0]	IST  	   		5	; if <unknown table>.subclassKey
		2776	[  0]	JMP  	  5		8	; 	goto 2785
		2777	[  0]	MOV  	  5		3	; slot5 = slot3
		2778	[  0]	TNEW 	  7		3	; slot7 = new table( array: 3, dict: 1)
		2779	[  0]	TDUP 	  8		51	; slot8 = copy table#k51
		2780	[  0]	TDUP 	  9		50	; slot9 = copy table#k50
		2781	[  0]	TSETS	  9	8	510	; slot8.statArrows = slot9
		2782	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
		2783	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2784
		2784	[  0]	CALLT	  5		2	; return slot5(slot6)
		2785	[  0]	GGET 	  5		484	; slot5 = _env["ipairs"]
		2786	[  0]	TDUP 	  7		49	; slot7 = copy table#k49
		2787	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		2788	[  0]	JMP  	  8		60	; 	goto 2849
		2789	[  0]	TGETV	 10	0	9	; slot10 = slot0[slot9]
		2790	[  0]	ISEQS	 10		48	; if slot10 == "월광사제"
		2791	[  0]	JMP  	 11		4	; 	goto 2796
		2792	[  0]	ISEQS	 10		47	; if slot10 == "Moon Priestess"
		2793	[  0]	JMP  	 11		2	; 	goto 2796
		2794	[  0]	ISNES	 10		46	; if slot10 ~= "월광사제 (Moon Priestess)"
		2795	[  0]	JMP  	 11		9	; 	goto 2805
		2796	[  0]	MOV  	 11		3	; slot11 = slot3
		2797	[  0]	TNEW 	 13		3	; slot13 = new table( array: 3, dict: 1)
		2798	[  0]	TDUP 	 14		45	; slot14 = copy table#k45
		2799	[  0]	TDUP 	 15		44	; slot15 = copy table#k44
		2800	[  0]	TSETS	 15	14	510	; slot14.statArrows = slot15
		2801	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		2802	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2803
		2803	[  0]	CALLT	 11		2	; return slot11(slot12)
		2804	[  0]	JMP  	 11		44	; 	goto 2849
		2805	[  0]	ISEQS	 10		43	; if slot10 == "나이트메어"
		2806	[  0]	JMP  	 11		4	; 	goto 2811
		2807	[  0]	ISEQS	 10		42	; if slot10 == "Nightmare"
		2808	[  0]	JMP  	 11		2	; 	goto 2811
		2809	[  0]	ISNES	 10		41	; if slot10 ~= "나이트메어 (Nightmare)"
		2810	[  0]	JMP  	 11		9	; 	goto 2820
		2811	[  0]	MOV  	 11		3	; slot11 = slot3
		2812	[  0]	TNEW 	 13		3	; slot13 = new table( array: 3, dict: 1)
		2813	[  0]	TDUP 	 14		40	; slot14 = copy table#k40
		2814	[  0]	TDUP 	 15		39	; slot15 = copy table#k39
		2815	[  0]	TSETS	 15	14	510	; slot14.statArrows = slot15
		2816	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		2817	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2818
		2818	[  0]	CALLT	 11		2	; return slot11(slot12)
		2819	[  0]	JMP  	 11		29	; 	goto 2849
		2820	[  0]	ISEQS	 10		38	; if slot10 == "초원 기병"
		2821	[  0]	JMP  	 11		4	; 	goto 2826
		2822	[  0]	ISEQS	 10		37	; if slot10 == "Steppe Cavalry"
		2823	[  0]	JMP  	 11		2	; 	goto 2826
		2824	[  0]	ISNES	 10		36	; if slot10 ~= "초원 기병 (Steppe Cavalry)"
		2825	[  0]	JMP  	 11		9	; 	goto 2835
		2826	[  0]	MOV  	 11		3	; slot11 = slot3
		2827	[  0]	TNEW 	 13		3	; slot13 = new table( array: 3, dict: 1)
		2828	[  0]	TDUP 	 14		35	; slot14 = copy table#k35
		2829	[  0]	TDUP 	 15		34	; slot15 = copy table#k34
		2830	[  0]	TSETS	 15	14	510	; slot14.statArrows = slot15
		2831	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		2832	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2833
		2833	[  0]	CALLT	 11		2	; return slot11(slot12)
		2834	[  0]	JMP  	 11		14	; 	goto 2849
		2835	[  0]	ISEQS	 10		33	; if slot10 == "후사르"
		2836	[  0]	JMP  	 11		4	; 	goto 2841
		2837	[  0]	ISEQS	 10		32	; if slot10 == "Hussar"
		2838	[  0]	JMP  	 11		2	; 	goto 2841
		2839	[  0]	ISNES	 10		31	; if slot10 ~= "후사르 (Hussar)"
		2840	[  0]	JMP  	 11		8	; 	goto 2849
		2841	[  0]	MOV  	 11		3	; slot11 = slot3
		2842	[  0]	TNEW 	 13		3	; slot13 = new table( array: 3, dict: 1)
		2843	[  0]	TDUP 	 14		30	; slot14 = copy table#k30
		2844	[  0]	TDUP 	 15		29	; slot15 = copy table#k29
		2845	[  0]	TSETS	 15	14	510	; slot14.statArrows = slot15
		2846	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		2847	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2848
		2848	[  0]	CALLT	 11		2	; return slot11(slot12)
		2849	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		2850	[  0]	ITERL	  8		-62	; slot7 = slot8; if slot8 != nil goto 2789
		2851	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		2852	[  0]	ISEQS	  5		28	; if <unknown table>.subclass == "돌격병"
		2853	[  0]	JMP  	  5		8	; 	goto 2862
		2854	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		2855	[  0]	ISEQS	  5		28	; if <unknown table>.subclassName == "돌격병"
		2856	[  0]	JMP  	  5		5	; 	goto 2862
		2857	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		2858	[  0]	ISEQS	  5		28	; if <unknown table>.subclassKey == "돌격병"
		2859	[  0]	JMP  	  5		2	; 	goto 2862
		2860	[  0]	KPRI 	  5		1	; slot5 = false
		2861	[  0]	JMP  	  6		1	; 	goto 2863
		2862	[  0]	KPRI 	  5		2	; slot5 = true
		2863	[  0]	TGETS	  6	0	519	; slot6 = slot0.subclass
		2864	[  0]	ISEQS	  6		27	; if <unknown table>.subclass == "엘프 기병"
		2865	[  0]	JMP  	  6		8	; 	goto 2874
		2866	[  0]	TGETS	  6	0	517	; slot6 = slot0.subclassName
		2867	[  0]	ISEQS	  6		27	; if <unknown table>.subclassName == "엘프 기병"
		2868	[  0]	JMP  	  6		5	; 	goto 2874
		2869	[  0]	TGETS	  6	0	515	; slot6 = slot0.subclassKey
		2870	[  0]	ISEQS	  6		27	; if <unknown table>.subclassKey == "엘프 기병"
		2871	[  0]	JMP  	  6		2	; 	goto 2874
		2872	[  0]	KPRI 	  6		1	; slot6 = false
		2873	[  0]	JMP  	  7		1	; 	goto 2875
		2874	[  0]	KPRI 	  6		2	; slot6 = true
		2875	[  0]	TGETS	  7	0	519	; slot7 = slot0.subclass
		2876	[  0]	ISEQS	  7		26	; if <unknown table>.subclass == "야만 기병"
		2877	[  0]	JMP  	  7		8	; 	goto 2886
		2878	[  0]	TGETS	  7	0	517	; slot7 = slot0.subclassName
		2879	[  0]	ISEQS	  7		26	; if <unknown table>.subclassName == "야만 기병"
		2880	[  0]	JMP  	  7		5	; 	goto 2886
		2881	[  0]	TGETS	  7	0	515	; slot7 = slot0.subclassKey
		2882	[  0]	ISEQS	  7		26	; if <unknown table>.subclassKey == "야만 기병"
		2883	[  0]	JMP  	  7		2	; 	goto 2886
		2884	[  0]	KPRI 	  7		1	; slot7 = false
		2885	[  0]	JMP  	  8		1	; 	goto 2887
		2886	[  0]	KPRI 	  7		2	; slot7 = true
		2887	[  0]	TGETS	  8	0	519	; slot8 = slot0.subclass
		2888	[  0]	ISEQS	  8		25	; if <unknown table>.subclass == "도끼 기병"
		2889	[  0]	JMP  	  8		8	; 	goto 2898
		2890	[  0]	TGETS	  8	0	517	; slot8 = slot0.subclassName
		2891	[  0]	ISEQS	  8		25	; if <unknown table>.subclassName == "도끼 기병"
		2892	[  0]	JMP  	  8		5	; 	goto 2898
		2893	[  0]	TGETS	  8	0	515	; slot8 = slot0.subclassKey
		2894	[  0]	ISEQS	  8		25	; if <unknown table>.subclassKey == "도끼 기병"
		2895	[  0]	JMP  	  8		2	; 	goto 2898
		2896	[  0]	KPRI 	  8		1	; slot8 = false
		2897	[  0]	JMP  	  9		1	; 	goto 2899
		2898	[  0]	KPRI 	  8		2	; slot8 = true
		2899	[  0]	ISF  	   		5	; if not slot5
		2900	[  0]	JMP  	  9		6	; 	goto 2907
		2901	[  0]	MOV  	  9		3	; slot9 = slot3
		2902	[  0]	TNEW 	 11		3	; slot11 = new table( array: 3, dict: 1)
		2903	[  0]	TDUP 	 12		24	; slot12 = copy table#k24
		2904	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		2905	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2906
		2906	[  0]	CALLT	  9		2	; return slot9(slot10)
		2907	[  0]	ISF  	   		8	; if not slot8
		2908	[  0]	JMP  	  9		6	; 	goto 2915
		2909	[  0]	MOV  	  9		3	; slot9 = slot3
		2910	[  0]	TNEW 	 11		3	; slot11 = new table( array: 3, dict: 1)
		2911	[  0]	TDUP 	 12		23	; slot12 = copy table#k23
		2912	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		2913	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2914
		2914	[  0]	CALLT	  9		2	; return slot9(slot10)
		2915	[  0]	ISF  	   		7	; if not slot7
		2916	[  0]	JMP  	  9		6	; 	goto 2923
		2917	[  0]	MOV  	  9		3	; slot9 = slot3
		2918	[  0]	TNEW 	 11		3	; slot11 = new table( array: 3, dict: 1)
		2919	[  0]	TDUP 	 12		22	; slot12 = copy table#k22
		2920	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		2921	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2922
		2922	[  0]	CALLT	  9		2	; return slot9(slot10)
		2923	[  0]	ISF  	   		6	; if not slot6
		2924	[  0]	JMP  	  9		6	; 	goto 2931
		2925	[  0]	MOV  	  9		3	; slot9 = slot3
		2926	[  0]	TNEW 	 11		3	; slot11 = new table( array: 3, dict: 1)
		2927	[  0]	TDUP 	 12		21	; slot12 = copy table#k21
		2928	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		2929	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2930
		2930	[  0]	CALLT	  9		2	; return slot9(slot10)
		2931	[  0]	ISNEN	  1		3	; if slot1 ~= 4
		2932	[  0]	JMP  	  4		105	; 	goto 3038
		2933	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		2934	[  0]	ISEQS	  4		20	; if <unknown table>.subclass == "하이 엘프 기병"
		2935	[  0]	JMP  	  4		8	; 	goto 2944
		2936	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		2937	[  0]	ISEQS	  4		20	; if <unknown table>.subclassName == "하이 엘프 기병"
		2938	[  0]	JMP  	  4		5	; 	goto 2944
		2939	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		2940	[  0]	ISEQS	  4		20	; if <unknown table>.subclassKey == "하이 엘프 기병"
		2941	[  0]	JMP  	  4		2	; 	goto 2944
		2942	[  0]	KPRI 	  4		1	; slot4 = false
		2943	[  0]	JMP  	  5		1	; 	goto 2945
		2944	[  0]	KPRI 	  4		2	; slot4 = true
		2945	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		2946	[  0]	ISEQS	  5		19	; if <unknown table>.subclass == "광폭 기병"
		2947	[  0]	JMP  	  5		8	; 	goto 2956
		2948	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		2949	[  0]	ISEQS	  5		19	; if <unknown table>.subclassName == "광폭 기병"
		2950	[  0]	JMP  	  5		5	; 	goto 2956
		2951	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		2952	[  0]	ISEQS	  5		19	; if <unknown table>.subclassKey == "광폭 기병"
		2953	[  0]	JMP  	  5		2	; 	goto 2956
		2954	[  0]	KPRI 	  5		1	; slot5 = false
		2955	[  0]	JMP  	  6		1	; 	goto 2957
		2956	[  0]	KPRI 	  5		2	; slot5 = true
		2957	[  0]	IST  	   		4	; if slot4
		2958	[  0]	JMP  	  6		2	; 	goto 2961
		2959	[  0]	ISF  	   		5	; if not slot5
		2960	[  0]	JMP  	  6		6	; 	goto 2967
		2961	[  0]	MOV  	  6		3	; slot6 = slot3
		2962	[  0]	TNEW 	  8		3	; slot8 = new table( array: 3, dict: 1)
		2963	[  0]	TDUP 	  9		18	; slot9 = copy table#k18
		2964	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		2965	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2966
		2966	[  0]	CALLT	  6		2	; return slot6(slot7)
		2967	[  0]	TGETS	  6	0	519	; slot6 = slot0.subclass
		2968	[  0]	ISEQS	  6		17	; if <unknown table>.subclass == "MiniHorseMan03"
		2969	[  0]	JMP  	  6		11	; 	goto 2981
		2970	[  0]	TGETS	  6	0	517	; slot6 = slot0.subclassName
		2971	[  0]	ISEQS	  6		16	; if <unknown table>.subclassName == "중기병"
		2972	[  0]	JMP  	  6		8	; 	goto 2981
		2973	[  0]	TGETS	  6	0	515	; slot6 = slot0.subclassKey
		2974	[  0]	ISEQS	  6		17	; if <unknown table>.subclassKey == "MiniHorseMan03"
		2975	[  0]	JMP  	  6		5	; 	goto 2981
		2976	[  0]	TGETS	  6	0	515	; slot6 = slot0.subclassKey
		2977	[  0]	ISEQS	  6		16	; if <unknown table>.subclassKey == "중기병"
		2978	[  0]	JMP  	  6		2	; 	goto 2981
		2979	[  0]	KPRI 	  6		1	; slot6 = false
		2980	[  0]	JMP  	  7		1	; 	goto 2982
		2981	[  0]	KPRI 	  6		2	; slot6 = true
		2982	[  0]	TGETS	  7	0	519	; slot7 = slot0.subclass
		2983	[  0]	ISEQS	  7		15	; if <unknown table>.subclass == "워베어"
		2984	[  0]	JMP  	  7		8	; 	goto 2993
		2985	[  0]	TGETS	  7	0	517	; slot7 = slot0.subclassName
		2986	[  0]	ISEQS	  7		15	; if <unknown table>.subclassName == "워베어"
		2987	[  0]	JMP  	  7		5	; 	goto 2993
		2988	[  0]	TGETS	  7	0	515	; slot7 = slot0.subclassKey
		2989	[  0]	ISEQS	  7		15	; if <unknown table>.subclassKey == "워베어"
		2990	[  0]	JMP  	  7		2	; 	goto 2993
		2991	[  0]	KPRI 	  7		1	; slot7 = false
		2992	[  0]	JMP  	  8		1	; 	goto 2994
		2993	[  0]	KPRI 	  7		2	; slot7 = true
		2994	[  0]	IST  	   		6	; if slot6
		2995	[  0]	JMP  	  8		2	; 	goto 2998
		2996	[  0]	ISF  	   		7	; if not slot7
		2997	[  0]	JMP  	  8		6	; 	goto 3004
		2998	[  0]	MOV  	  8		3	; slot8 = slot3
		2999	[  0]	TNEW 	 10		3	; slot10 = new table( array: 3, dict: 1)
		3000	[  0]	TDUP 	 11		14	; slot11 = copy table#k14
		3001	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		3002	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 3003
		3003	[  0]	CALLT	  8		2	; return slot8(slot9)
		3004	[  0]	TGETS	  8	0	519	; slot8 = slot0.subclass
		3005	[  0]	ISEQS	  8		13	; if <unknown table>.subclass == "해골 중기병"
		3006	[  0]	JMP  	  8		8	; 	goto 3015
		3007	[  0]	TGETS	  8	0	517	; slot8 = slot0.subclassName
		3008	[  0]	ISEQS	  8		13	; if <unknown table>.subclassName == "해골 중기병"
		3009	[  0]	JMP  	  8		5	; 	goto 3015
		3010	[  0]	TGETS	  8	0	515	; slot8 = slot0.subclassKey
		3011	[  0]	ISEQS	  8		13	; if <unknown table>.subclassKey == "해골 중기병"
		3012	[  0]	JMP  	  8		2	; 	goto 3015
		3013	[  0]	KPRI 	  8		1	; slot8 = false
		3014	[  0]	JMP  	  9		1	; 	goto 3016
		3015	[  0]	KPRI 	  8		2	; slot8 = true
		3016	[  0]	TGETS	  9	0	519	; slot9 = slot0.subclass
		3017	[  0]	ISEQS	  9		12	; if <unknown table>.subclass == "엘프 중기병"
		3018	[  0]	JMP  	  9		8	; 	goto 3027
		3019	[  0]	TGETS	  9	0	517	; slot9 = slot0.subclassName
		3020	[  0]	ISEQS	  9		12	; if <unknown table>.subclassName == "엘프 중기병"
		3021	[  0]	JMP  	  9		5	; 	goto 3027
		3022	[  0]	TGETS	  9	0	515	; slot9 = slot0.subclassKey
		3023	[  0]	ISEQS	  9		12	; if <unknown table>.subclassKey == "엘프 중기병"
		3024	[  0]	JMP  	  9		2	; 	goto 3027
		3025	[  0]	KPRI 	  9		1	; slot9 = false
		3026	[  0]	JMP  	 10		1	; 	goto 3028
		3027	[  0]	KPRI 	  9		2	; slot9 = true
		3028	[  0]	IST  	   		8	; if slot8
		3029	[  0]	JMP  	 10		2	; 	goto 3032
		3030	[  0]	ISF  	   		9	; if not slot9
		3031	[  0]	JMP  	 10		6	; 	goto 3038
		3032	[  0]	MOV  	 10		3	; slot10 = slot3
		3033	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		3034	[  0]	TDUP 	 13		11	; slot13 = copy table#k11
		3035	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		3036	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 3037
		3037	[  0]	CALLT	 10		2	; return slot10(slot11)
		3038	[  0]	ISNEN	  1		2	; if slot1 ~= 5
		3039	[  0]	JMP  	  4		46	; 	goto 3086
		3040	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		3041	[  0]	ISEQS	  4		10	; if <unknown table>.subclass == "데스 나이트"
		3042	[  0]	JMP  	  4		11	; 	goto 3054
		3043	[  0]	TGETS	  4	0	517	; slot4 = slot0.subclassName
		3044	[  0]	ISEQS	  4		10	; if <unknown table>.subclassName == "데스 나이트"
		3045	[  0]	JMP  	  4		8	; 	goto 3054
		3046	[  0]	TGETS	  4	0	515	; slot4 = slot0.subclassKey
		3047	[  0]	ISEQS	  4		10	; if <unknown table>.subclassKey == "데스 나이트"
		3048	[  0]	JMP  	  4		5	; 	goto 3054
		3049	[  0]	TGETS	  4	0	519	; slot4 = slot0.subclass
		3050	[  0]	ISEQS	  4		9	; if <unknown table>.subclass == "Death Knight"
		3051	[  0]	JMP  	  4		2	; 	goto 3054
		3052	[  0]	KPRI 	  4		1	; slot4 = false
		3053	[  0]	JMP  	  5		1	; 	goto 3055
		3054	[  0]	KPRI 	  4		2	; slot4 = true
		3055	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		3056	[  0]	ISEQS	  5		8	; if <unknown table>.subclass == "그리즐"
		3057	[  0]	JMP  	  5		11	; 	goto 3069
		3058	[  0]	TGETS	  5	0	517	; slot5 = slot0.subclassName
		3059	[  0]	ISEQS	  5		8	; if <unknown table>.subclassName == "그리즐"
		3060	[  0]	JMP  	  5		8	; 	goto 3069
		3061	[  0]	TGETS	  5	0	515	; slot5 = slot0.subclassKey
		3062	[  0]	ISEQS	  5		8	; if <unknown table>.subclassKey == "그리즐"
		3063	[  0]	JMP  	  5		5	; 	goto 3069
		3064	[  0]	TGETS	  5	0	519	; slot5 = slot0.subclass
		3065	[  0]	ISEQS	  5		7	; if <unknown table>.subclass == "Grizzle"
		3066	[  0]	JMP  	  5		2	; 	goto 3069
		3067	[  0]	KPRI 	  5		1	; slot5 = false
		3068	[  0]	JMP  	  6		1	; 	goto 3070
		3069	[  0]	KPRI 	  5		2	; slot5 = true
		3070	[  0]	ISF  	   		5	; if not slot5
		3071	[  0]	JMP  	  6		6	; 	goto 3078
		3072	[  0]	MOV  	  6		3	; slot6 = slot3
		3073	[  0]	TNEW 	  8		3	; slot8 = new table( array: 3, dict: 1)
		3074	[  0]	TDUP 	  9		6	; slot9 = copy table#k6
		3075	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		3076	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 3077
		3077	[  0]	CALLT	  6		2	; return slot6(slot7)
		3078	[  0]	ISF  	   		4	; if not slot4
		3079	[  0]	JMP  	  6		6	; 	goto 3086
		3080	[  0]	MOV  	  6		3	; slot6 = slot3
		3081	[  0]	TNEW 	  8		3	; slot8 = new table( array: 3, dict: 1)
		3082	[  0]	TDUP 	  9		5	; slot9 = copy table#k5
		3083	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		3084	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 3085
		3085	[  0]	CALLT	  6		2	; return slot6(slot7)
		3086	[  0]	TDUP 	  4		4	; slot4 = copy table#k4
		3087	[  0]	TDUP 	  5		3	; slot5 = copy table#k3
		3088	[  0]	MOV  	  6		3	; slot6 = slot3
		3089	[  0]	TNEW 	  8		3	; slot8 = new table( array: 3, dict: 1)
		3090	[  0]	TSETB	  4	8	1	; slot8[1] = slot4
		3091	[  0]	TSETB	  5	8	2	; slot8[2] = slot5
		3092	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 3093
		3093	[  0]	CALLT	  6		2	; return slot6(slot7)
		3094	[  0]	MOV  	  4		3	; slot4 = slot3
		3095	[  0]	TNEW 	  6		4	; slot6 = new table( array: 4, dict: 1)
		3096	[  0]	TDUP 	  7		2	; slot7 = copy table#k2
		3097	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		3098	[  0]	TDUP 	  7		1	; slot7 = copy table#k1
		3099	[  0]	TSETB	  7	6	2	; slot6[2] = slot7
		3100	[  0]	TDUP 	  7		0	; slot7 = copy table#k0
		3101	[  0]	TSETB	  7	6	3	; slot6[3] = slot7
		3102	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 3103
		3103	[  0]	CALLT	  4		2	; return slot4(slot5)
		3104	[  0]	RET1 	  2		2	; return slot2
	 19	[  0]	TSETS	  3	0	3	; slot0.getPromotionOptions = slot3
	 20	[  0]	FNEW 	  3		0	; N/A:0-0: 4 args, 0 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		2	; if not slot2
		  2	[  0]	JMP  	  4		14	; 	goto 17
		  3	[  0]	ISNEN	  1		0	; if slot1 ~= 3
		  4	[  0]	JMP  	  4		12	; 	goto 17
		  5	[  0]	GGET 	  4		4	; slot4 = _env["type"]
		  6	[  0]	MOV  	  6		0	; slot6 = slot0
		  7	[  0]	CALL 	  4	2	2	; slot4 = type(slot5)
		  8	[  0]	ISNES	  4		3	; if type ~= "table"
		  9	[  0]	JMP  	  4		7	; 	goto 17
		 10	[  0]	LEN  	  4		0	; slot4 = #slot0
		 11	[  0]	ISEQN	  4		1	; if slot4 == 0
		 12	[  0]	JMP  	  4		4	; 	goto 17
		 13	[  0]	LEN  	  4		0	; slot4 = #slot0
		 14	[  0]	KSHORT	  5		3	; slot5 = 3
		 15	[  0]	ISGT 	  5		4	; if slot5 > slot4
		 16	[  0]	JMP  	  4		1	; 	goto 18
		 17	[  0]	UCLO 	  0		36	; nil uvs >= r0; goto 54
		 18	[  0]	IST  	   		3	; if slot3
		 19	[  0]	JMP  	  4		1	; 	goto 21
		 20	[  0]	FNEW 	  3		2	; N/A:0-0: 1 args, 0 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  1		2	; slot1 = _env["love"]
			  2	[  0]	TGETS	  1	1	1	; slot1 = love.math
			  3	[  0]	TGETS	  1	1	0	; slot1 = love.math.random
			  4	[  0]	MOV  	  3		0	; slot3 = slot0
			  5	[  0]	CALLT	  1		2	; return love.math.random(slot2)
		 21	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 22	[  0]	GGET 	  5		1	; slot5 = _env["ipairs"]
		 23	[  0]	MOV  	  7		0	; slot7 = slot0
		 24	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		 25	[  0]	JMP  	  8		3	; 	goto 29
		 26	[  0]	LEN  	 10		4	; slot10 = #slot4
		 27	[  0]	ADDVN	 10	10	2	; slot10 = slot10 + 1
		 28	[  0]	TSETV	  9	4	10	; slot4[slot10] = slot9
		 29	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		 30	[  0]	ITERL	  8		-5	; slot7 = slot8; if slot8 != nil goto 26
		 31	[  0]	LEN  	  5		4	; slot5 = #slot4
		 32	[  0]	KSHORT	  6		3	; slot6 = 3
		 33	[  0]	ISGE 	  5		6	; if slot5 >= slot6
		 34	[  0]	JMP  	  5		17	; 	goto 52
		 35	[  0]	LOOP 	  5		16	; Loop start, exit goto 52
		 36	[  0]	MOV  	  5		3	; slot5 = slot3
		 37	[  0]	LEN  	  7		0	; slot7 = #slot0
		 38	[  0]	CALL 	  5	2	2	; slot5 = slot5(slot6)
		 39	[  0]	TGETV	  5	0	5	; slot5 = slot0[slot5]
		 40	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		 41	[  0]	GGET 	  7		0	; slot7 = _env["pairs"]
		 42	[  0]	MOV  	  9		5	; slot9 = slot5
		 43	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = pairs(slot8)
		 44	[  0]	ISNEXT	 10		1	; Verify ITERN at 46; goto 46
		 45	[  0]	TSETV	 11	6	10	; slot6[slot10] = slot11
		 46	[  0]	ITERN	 10	3	3	; slot10, slot11, slot12 = pairs, slot8, slot9; slot10, slot11 = pairs(slot8, slot9)
		 47	[  0]	ITERL	 10		-3	; slot9 = slot10; if slot10 != nil goto 45
		 48	[  0]	LEN  	  7		4	; slot7 = #slot4
		 49	[  0]	ADDVN	  7	7	2	; slot7 = slot7 + 1
		 50	[  0]	TSETV	  6	4	7	; slot4[slot7] = slot6
		 51	[  0]	JMP  	  5		-21	; 	goto 31
		 52	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 53
		 53	[  0]	RET1 	  4		2	; return slot4
		 54	[  0]	RET1 	  0		2	; return slot0
	 21	[  0]	TSETS	  3	0	1	; slot0.expandTraitChoices = slot3
	 22	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 23
	 23	[  0]	RET1 	  0		2	; return slot0
	
