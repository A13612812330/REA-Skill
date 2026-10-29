;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\game\slot.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 11 slots
	;;;; constant tables ;;;;
	ktable#10 = [
		#1: W,
		#2: A,
		#3: S,
		#4: M,
		#5: H,
		#6: D,
		]
	
	
	;;;; instructions ;;;;
	  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
	  2	[  0]	GGET 	  1		13	; slot1 = _env["require"]
	  3	[  0]	KSTR 	  3		12	; slot3 = "src.data.constants"
	  4	[  0]	CALL 	  1	2	2	; slot1 = require(slot2)
	  5	[  0]	GGET 	  2		13	; slot2 = _env["require"]
	  6	[  0]	KSTR 	  4		11	; slot4 = "src.game.quest"
	  7	[  0]	CALL 	  2	2	2	; slot2 = require(slot3)
	  8	[  0]	TDUP 	  3		10	; slot3 = copy table#k10
	  9	[  0]	KSTR 	  4		9	; slot4 = "Joker"
	 10	[  0]	FNEW 	  5		7	; N/A:0-0: 2 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		3	; 	goto 6
		  3	[  0]	TGETS	  2	0	5	; slot2 = slot0.checked
		  4	[  0]	IST  	   		2	; if <unknown table>.checked
		  5	[  0]	JMP  	  2		2	; 	goto 8
		  6	[  0]	KPRI 	  2		1	; slot2 = false
		  7	[  0]	RET1 	  2		2	; return slot2
		  8	[  0]	TGETS	  2	0	4	; slot2 = slot0._jackpot
		  9	[  0]	ISNEP	  2		2	; if <unknown table>._jackpot ~= true
		 10	[  0]	JMP  	  2		2	; 	goto 13
		 11	[  0]	KPRI 	  2		2	; slot2 = true
		 12	[  0]	RET1 	  2		2	; return slot2
		 13	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		 14	[  0]	GGET 	  3		3	; slot3 = _env["ipairs"]
		 15	[  0]	ISTC 	  5		1	; slot5 = slot1; if slot1
		 16	[  0]	JMP  	  5		10	; 	goto 27
		 17	[  0]	TGETS	  5	0	2	; slot5 = slot0.allWinningLinesAfterNudge
		 18	[  0]	IST  	   		5	; if <unknown table>.allWinningLinesAfterNudge
		 19	[  0]	JMP  	  6		7	; 	goto 27
		 20	[  0]	TGETS	  5	0	1	; slot5 = slot0.allWinningLinesAfterCascade
		 21	[  0]	IST  	   		5	; if <unknown table>.allWinningLinesAfterCascade
		 22	[  0]	JMP  	  6		4	; 	goto 27
		 23	[  0]	TGETS	  5	0	0	; slot5 = slot0.winningLines
		 24	[  0]	IST  	   		5	; if <unknown table>.winningLines
		 25	[  0]	JMP  	  6		1	; 	goto 27
		 26	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 27	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
		 28	[  0]	JMP  	  6		2	; 	goto 31
		 29	[  0]	KPRI 	  8		2	; slot8 = true
		 30	[  0]	TSETV	  8	2	7	; slot2[slot7] = slot8
		 31	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, slot5; slot6, slot7 = ipairs(slot4, slot5)
		 32	[  0]	ITERL	  6		-4	; slot5 = slot6; if slot6 != nil goto 29
		 33	[  0]	TGETB	  3	2	1	; slot3 = slot2[1]
		 34	[  0]	ISNEP	  3		2	; if slot3 ~= true
		 35	[  0]	JMP  	  3		12	; 	goto 48
		 36	[  0]	TGETB	  3	2	2	; slot3 = slot2[2]
		 37	[  0]	ISNEP	  3		2	; if slot3 ~= true
		 38	[  0]	JMP  	  3		9	; 	goto 48
		 39	[  0]	TGETB	  3	2	3	; slot3 = slot2[3]
		 40	[  0]	ISNEP	  3		2	; if slot3 ~= true
		 41	[  0]	JMP  	  3		6	; 	goto 48
		 42	[  0]	TGETB	  3	2	4	; slot3 = slot2[4]
		 43	[  0]	ISNEP	  3		2	; if slot3 ~= true
		 44	[  0]	JMP  	  3		3	; 	goto 48
		 45	[  0]	TGETB	  3	2	5	; slot3 = slot2[5]
		 46	[  0]	ISEQP	  3		2	; if slot3 == true
		 47	[  0]	JMP  	  3		2	; 	goto 50
		 48	[  0]	KPRI 	  3		1	; slot3 = false
		 49	[  0]	JMP  	  4		1	; 	goto 51
		 50	[  0]	KPRI 	  3		2	; slot3 = true
		 51	[  0]	RET1 	  3		2	; return slot3
	 11	[  0]	TSETS	  5	0	8	; slot0.isJackpotResult = slot5
	 12	[  0]	FNEW 	  5		6	; N/A:0-0: 0 args, 1 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		9	; 	goto 13
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".slot
		  6	[  0]	ISF  	   		0	; if not uv0"unknown".slot
		  7	[  0]	JMP  	  1		5	; 	goto 13
		  8	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  9	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".slot
		 10	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".slot.forceWinProb
		 11	[  0]	IST  	   		0	; if uv0"unknown".slot.forceWinProb
		 12	[  0]	JMP  	  1		1	; 	goto 14
		 13	[  0]	KSHORT	  0		0	; slot0 = 0
		 14	[  0]	RET1 	  0		2	; return slot0
	 13	[  0]	FNEW 	  6		5	; N/A:0-0: 0 args, 2 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		ktable#5 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		9	; 	goto 13
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	TGETS	  0	0	11	; slot0 = uv0"unknown".slot
		  6	[  0]	ISF  	   		0	; if not uv0"unknown".slot
		  7	[  0]	JMP  	  1		5	; 	goto 13
		  8	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  9	[  0]	TGETS	  0	0	11	; slot0 = uv0"unknown".slot
		 10	[  0]	TGETS	  0	0	10	; slot0 = uv0"unknown".slot.symbolWeights
		 11	[  0]	IST  	   		0	; if uv0"unknown".slot.symbolWeights
		 12	[  0]	JMP  	  1		1	; 	goto 14
		 13	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
		 14	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		 15	[  0]	KSHORT	  2		0	; slot2 = 0
		 16	[  0]	GGET 	  3		9	; slot3 = _env["ipairs"]
		 17	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 18	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
		 19	[  0]	JMP  	  6		20	; 	goto 40
		 20	[  0]	GGET 	  8		8	; slot8 = _env["tonumber"]
		 21	[  0]	TGETV	 10	0	7	; slot10 = slot0[slot7]
		 22	[  0]	IST  	   		10	; if slot10
		 23	[  0]	JMP  	 11		1	; 	goto 25
		 24	[  0]	KSHORT	 10		0	; slot10 = 0
		 25	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 26	[  0]	IST  	   		8	; if tonumber
		 27	[  0]	JMP  	  9		1	; 	goto 29
		 28	[  0]	KSHORT	  8		0	; slot8 = 0
		 29	[  0]	KSHORT	  9		0	; slot9 = 0
		 30	[  0]	ISGE 	  9		8	; if slot9 >= slot8
		 31	[  0]	JMP  	  9		8	; 	goto 40
		 32	[  0]	GGET 	  9		7	; slot9 = _env["table"]
		 33	[  0]	TGETS	  9	9	6	; slot9 = table.insert
		 34	[  0]	MOV  	 11		1	; slot11 = slot1
		 35	[  0]	TDUP 	 12		5	; slot12 = copy table#k5
		 36	[  0]	TSETS	  7	12	4	; slot12.key = slot7
		 37	[  0]	TSETS	  8	12	3	; slot12.w = slot8
		 38	[  0]	CALL 	  9	1	3	;  = table.insert(slot10, slot11)
		 39	[  0]	ADDVV	  2	2	8	; slot2 = slot2 + slot8
		 40	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, uv1"unknown"; slot6, slot7 = ipairs(slot4, uv1"unknown")
		 41	[  0]	ITERL	  6		-22	; uv1"unknown" = slot6; if slot6 != nil goto 20
		 42	[  0]	KNUM 	  3		0	; slot3 = 1e-12
		 43	[  0]	ISLE 	  2		3	; if slot2 <= slot3
		 44	[  0]	JMP  	  3		3	; 	goto 48
		 45	[  0]	LEN  	  3		1	; slot3 = #slot1
		 46	[  0]	ISNEN	  3		1	; if slot3 ~= 0
		 47	[  0]	JMP  	  3		9	; 	goto 57
		 48	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 49	[  0]	GGET 	  4		2	; slot4 = _env["love"]
		 50	[  0]	TGETS	  4	4	1	; slot4 = love.math
		 51	[  0]	TGETS	  4	4	0	; slot4 = love.math.random
		 52	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 53	[  0]	LEN  	  6		6	; slot6 = #uv1"unknown"
		 54	[  0]	CALL 	  4	2	2	; slot4 = love.math.random(uv1"unknown")
		 55	[  0]	TGETV	  3	3	4	; slot3 = uv1"unknown"[love.math.random]
		 56	[  0]	RET1 	  3		2	; return slot3
		 57	[  0]	GGET 	  3		2	; slot3 = _env["love"]
		 58	[  0]	TGETS	  3	3	1	; slot3 = love.math
		 59	[  0]	TGETS	  3	3	0	; slot3 = love.math.random
		 60	[  0]	CALL 	  3	2	1	; slot3 = love.math.random()
		 61	[  0]	MULVV	  3	3	2	; slot3 = love.math.random * slot2
		 62	[  0]	KSHORT	  4		1	; slot4 = 1
		 63	[  0]	LEN  	  5		1	; slot5 = #slot1
		 64	[  0]	KSHORT	  6		1	; slot6 = 1
		 65	[  0]	FORI 	  4		9	; for slot7 = slot4,slot5,slot6 else goto 75
		 66	[  0]	TGETV	  8	1	7	; slot8 = slot1[slot7]
		 67	[  0]	TGETS	  9	8	3	; slot9 = slot8.w
		 68	[  0]	ISGE 	  3		9	; if slot3 >= <unknown table>.w
		 69	[  0]	JMP  	  9		2	; 	goto 72
		 70	[  0]	TGETS	  9	8	4	; slot9 = slot8.key
		 71	[  0]	RET1 	  9		2	; return <unknown table>.key
		 72	[  0]	TGETS	  9	8	3	; slot9 = slot8.w
		 73	[  0]	SUBVV	  3	3	9	; slot3 = slot3 - <unknown table>.w
		 74	[  0]	FORL 	  4		-9	; slot7 = slot7 + slot6; if cmp(slot7, sign slot6,  slot5) goto 66
		 75	[  0]	LEN  	  4		1	; slot4 = #slot1
		 76	[  0]	TGETV	  4	1	4	; slot4 = slot1[slot4]
		 77	[  0]	TGETS	  4	4	4	; slot4 = slot4.key
		 78	[  0]	RET1 	  4		2	; return <unknown table>.key
	 14	[  0]	FNEW 	  7		4	; N/A:0-0: 1 args, 2 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		5	; slot1 = _env["math"]
		  2	[  0]	TGETS	  1	1	4	; slot1 = math.max
		  3	[  0]	KSHORT	  3		0	; slot3 = 0
		  4	[  0]	GGET 	  4		5	; slot4 = _env["math"]
		  5	[  0]	TGETS	  4	4	3	; slot4 = math.min
		  6	[  0]	KNUM 	  6		0	; slot6 = 0.05
		  7	[  0]	GGET 	  7		2	; slot7 = _env["tonumber"]
		  8	[  0]	ISTC 	  9		0	; slot9 = slot0; if slot0
		  9	[  0]	JMP  	  9		1	; 	goto 11
		 10	[  0]	KSHORT	  9		0	; slot9 = 0
		 11	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 12	[  0]	IST  	   		7	; if tonumber
		 13	[  0]	JMP  	  8		1	; 	goto 15
		 14	[  0]	KSHORT	  7		0	; slot7 = 0
		 15	[  0]	CALL 	  4	0	3	; MULTRES = math.min(slot5, slot6)
		 16	[  0]	CALLM	  1	2	1	; slot1 = math.max(slot2, ...MULTRES)
		 17	[  0]	MOV  	  0		1	; slot0 = slot1
		 18	[  0]	KSHORT	  1		0	; slot1 = 0
		 19	[  0]	ISGE 	  1		0	; if slot1 >= slot0
		 20	[  0]	JMP  	  1		8	; 	goto 29
		 21	[  0]	GGET 	  1		1	; slot1 = _env["love"]
		 22	[  0]	TGETS	  1	1	5	; slot1 = love.math
		 23	[  0]	TGETS	  1	1	0	; slot1 = love.math.random
		 24	[  0]	CALL 	  1	2	1	; slot1 = love.math.random()
		 25	[  0]	ISGE 	  1		0	; if slot1 >= slot0
		 26	[  0]	JMP  	  1		2	; 	goto 29
		 27	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 28	[  0]	RET1 	  1		2	; return uv0"unknown"
		 29	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 30	[  0]	CALLT	  1		1	; return uv1"unknown"()
	 15	[  0]	FNEW 	  8		3	; N/A:0-0: 3 args, 1 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  3		4	; 	goto 7
		  3	[  0]	ISF  	   		1	; if not slot1
		  4	[  0]	JMP  	  3		2	; 	goto 7
		  5	[  0]	IST  	   		2	; if slot2
		  6	[  0]	JMP  	  3		2	; 	goto 9
		  7	[  0]	KPRI 	  3		0	; slot3 = nil
		  8	[  0]	RET1 	  3		2	; return slot3
		  9	[  0]	ISEQS	  0		2	; if slot0 == "Blank"
		 10	[  0]	JMP  	  3		4	; 	goto 15
		 11	[  0]	ISEQS	  1		2	; if slot1 == "Blank"
		 12	[  0]	JMP  	  3		2	; 	goto 15
		 13	[  0]	ISNES	  2		2	; if slot2 ~= "Blank"
		 14	[  0]	JMP  	  3		2	; 	goto 17
		 15	[  0]	KPRI 	  3		0	; slot3 = nil
		 16	[  0]	RET1 	  3		2	; return slot3
		 17	[  0]	KPRI 	  3		0	; slot3 = nil
		 18	[  0]	KSHORT	  4		0	; slot4 = 0
		 19	[  0]	GGET 	  5		1	; slot5 = _env["ipairs"]
		 20	[  0]	TNEW 	  7		4	; slot7 = new table( array: 4, dict: 1)
		 21	[  0]	TSETB	  0	7	1	; slot7[1] = slot0
		 22	[  0]	TSETB	  1	7	2	; slot7[2] = slot1
		 23	[  0]	TSETB	  2	7	3	; slot7[3] = slot2
		 24	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		 25	[  0]	JMP  	  8		15	; 	goto 41
		 26	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 27	[  0]	ISEQV	  9		10	; if slot9 == uv0"unknown"
		 28	[  0]	JMP  	 10		2	; 	goto 31
		 29	[  0]	ISNES	  9		0	; if slot9 ~= "J"
		 30	[  0]	JMP  	 10		2	; 	goto 33
		 31	[  0]	ADDVN	  4	4	0	; slot4 = slot4 + 1
		 32	[  0]	JMP  	 10		8	; 	goto 41
		 33	[  0]	IST  	   		3	; if slot3
		 34	[  0]	JMP  	 10		2	; 	goto 37
		 35	[  0]	MOV  	  3		9	; slot3 = slot9
		 36	[  0]	JMP  	 10		4	; 	goto 41
		 37	[  0]	ISEQV	  9		3	; if slot9 == slot3
		 38	[  0]	JMP  	 10		2	; 	goto 41
		 39	[  0]	KPRI 	 10		0	; slot10 = nil
		 40	[  0]	RET1 	 10		2	; return slot10
		 41	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		 42	[  0]	ITERL	  8		-17	; slot7 = slot8; if slot8 != nil goto 26
		 43	[  0]	ISNEN	  4		1	; if slot4 ~= 3
		 44	[  0]	JMP  	  5		2	; 	goto 47
		 45	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 46	[  0]	RET1 	  5		2	; return uv0"unknown"
		 47	[  0]	RET1 	  3		2	; return slot3
	 16	[  0]	FNEW 	  9		2	; N/A:0-0: 1 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  2	[  0]	KSHORT	  2		1	; slot2 = 1
		  3	[  0]	MOV  	  3		0	; slot3 = slot0
		  4	[  0]	KSHORT	  4		1	; slot4 = 1
		  5	[  0]	FORI 	  2		4	; for slot5 = slot2,slot3,slot4 else goto 10
		  6	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		  7	[  0]	CALL 	  6	2	1	; slot6 = uv0"unknown"()
		  8	[  0]	TSETV	  6	1	5	; slot1[slot5] = uv0"unknown"
		  9	[  0]	FORL 	  2		-4	; slot5 = slot5 + slot4; if cmp(slot5, sign slot4,  slot3) goto 6
		 10	[  0]	RET1 	  1		2	; return slot1
	 17	[  0]	FNEW 	 10		0	; N/A:0-0: 1 args, 8 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		ktable#23 = [
			#1: 3,
			#2: 3,
			]
		
		
		ktable#24 = [
			#1: 2,
			#2: 3,
			]
		
		
		ktable#25 = [
			#1: 1,
			#2: 3,
			]
		
		
		ktable#26 = [
			#1: 3,
			#2: 2,
			]
		
		
		ktable#27 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#28 = [
			#1: 1,
			#2: 2,
			]
		
		
		ktable#29 = [
			#1: 3,
			#2: 1,
			]
		
		
		ktable#30 = [
			#1: 2,
			#2: 1,
			]
		
		
		ktable#31 = [
			#1: 1,
			#2: 1,
			]
		
		
		ktable#32 = [
			#1: 3,
			#2: 1,
			]
		
		
		ktable#33 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#34 = [
			#1: 1,
			#2: 3,
			]
		
		
		ktable#35 = [
			#1: 3,
			#2: 3,
			]
		
		
		ktable#36 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#37 = [
			#1: 1,
			#2: 1,
			]
		
		
		ktable#38 = [
			#1: 3,
			#2: 3,
			]
		
		
		ktable#39 = [
			#1: 3,
			#2: 2,
			]
		
		
		ktable#40 = [
			#1: 3,
			#2: 1,
			]
		
		
		ktable#41 = [
			#1: 2,
			#2: 3,
			]
		
		
		ktable#42 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#43 = [
			#1: 2,
			#2: 1,
			]
		
		
		ktable#44 = [
			#1: 1,
			#2: 3,
			]
		
		
		ktable#45 = [
			#1: 1,
			#2: 2,
			]
		
		
		ktable#46 = [
			#1: 1,
			#2: 1,
			]
		
		
		ktable#77 = [
			[won] = false,
			[checked] = false,
			[fxStarted] = false,
			[hd] = 0.35,
			[ht] = 0,
			[highlightActive] = false,
			[awarded] = false,
			]
		
		
		ktable#79 = [
			#1: 0.6,
			#2: 0.9,
			#3: 1.2,
			]
		
		
		ktable#82 = [
			[active] = false,
			[t] = 0,
			[started] = false,
			]
		
		
		ktable#84 = [
			[forceWinOnce] = false,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TDUP 	  1		84	; slot1 = copy table#k84
		  2	[  0]	TSETS	  0	1	83	; slot1.ui = slot0
		  3	[  0]	TDUP 	  2		82	; slot2 = copy table#k82
		  4	[  0]	TSETS	  2	1	81	; slot1.spin = slot2
		  5	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		  6	[  0]	TSETS	  2	1	80	; slot1.reels = slot2
		  7	[  0]	TDUP 	  2		79	; slot2 = copy table#k79
		  8	[  0]	TSETS	  2	1	78	; slot1.stopTimes = slot2
		  9	[  0]	TDUP 	  2		77	; slot2 = copy table#k77
		 10	[  0]	TSETS	  2	1	76	; slot1.result = slot2
		 11	[  0]	FNEW 	  2		74	; N/A:0-0: 1 args, 6 upvalues, 25 slots
			
			;;;; constant tables ;;;;
			ktable#1 = [
				#1: 3,
				#2: 1,
				]
			
			
			ktable#2 = [
				#1: 2,
				#2: 2,
				]
			
			
			ktable#3 = [
				#1: 1,
				#2: 3,
				]
			
			
			ktable#4 = [
				#1: 3,
				#2: 3,
				]
			
			
			ktable#5 = [
				#1: 2,
				#2: 2,
				]
			
			
			ktable#6 = [
				#1: 1,
				#2: 1,
				]
			
			
			ktable#7 = [
				#1: 3,
				#2: 3,
				]
			
			
			ktable#8 = [
				#1: 3,
				#2: 2,
				]
			
			
			ktable#9 = [
				#1: 3,
				#2: 1,
				]
			
			
			ktable#10 = [
				#1: 2,
				#2: 3,
				]
			
			
			ktable#11 = [
				#1: 2,
				#2: 2,
				]
			
			
			ktable#12 = [
				#1: 2,
				#2: 1,
				]
			
			
			ktable#13 = [
				#1: 1,
				#2: 3,
				]
			
			
			ktable#14 = [
				#1: 1,
				#2: 2,
				]
			
			
			ktable#15 = [
				#1: 1,
				#2: 1,
				]
			
			
			ktable#23 = [
				#1: 1,
				#2: 2,
				#3: 3,
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	TGETS	  1	0	37	; slot1 = slot0._coreSpinMods
			  2	[  0]	ISF  	   		1	; if not <unknown table>._coreSpinMods
			  3	[  0]	JMP  	  2		9	; 	goto 13
			  4	[  0]	GGET 	  1		36	; slot1 = _env["tonumber"]
			  5	[  0]	TGETS	  3	0	37	; slot3 = slot0._coreSpinMods
			  6	[  0]	TGETS	  3	3	35	; slot3 = <unknown table>._coreSpinMods.jokerChance
			  7	[  0]	IST  	   		3	; if <unknown table>._coreSpinMods.jokerChance
			  8	[  0]	JMP  	  4		1	; 	goto 10
			  9	[  0]	KSHORT	  3		0	; slot3 = 0
			 10	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
			 11	[  0]	IST  	   		1	; if slot1
			 12	[  0]	JMP  	  2		1	; 	goto 14
			 13	[  0]	KSHORT	  1		0	; slot1 = 0
			 14	[  0]	GGET 	  2		34	; slot2 = _env["math"]
			 15	[  0]	TGETS	  2	2	33	; slot2 = math.max
			 16	[  0]	KSHORT	  4		0	; slot4 = 0
			 17	[  0]	GGET 	  5		34	; slot5 = _env["math"]
			 18	[  0]	TGETS	  5	5	32	; slot5 = math.min
			 19	[  0]	KNUM 	  7		0	; slot7 = 0.05
			 20	[  0]	MOV  	  8		1	; slot8 = slot1
			 21	[  0]	CALL 	  5	0	3	; MULTRES = math.min(slot6, slot7)
			 22	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
			 23	[  0]	MOV  	  1		2	; slot1 = math.max
			 24	[  0]	FNEW 	  2		31	; N/A:0-0: 0 args, 1 upvalues, 6 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
				  2	[  0]	KSHORT	  1		1	; slot1 = 1
				  3	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
				  4	[  0]	TGETS	  2	2	2	; slot2 = uv0"unknown".ui
				  5	[  0]	TGETS	  2	2	1	; slot2 = uv0"unknown".ui.slot
				  6	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".ui.slot.rows
				  7	[  0]	KSHORT	  3		1	; slot3 = 1
				  8	[  0]	FORI 	  1		3	; for slot4 = slot1,slot2,slot3 else goto 12
				  9	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
				 10	[  0]	TSETV	  5	0	4	; slot0[slot4] = slot5
				 11	[  0]	FORL 	  1		-3	; slot4 = slot4 + slot3; if cmp(slot4, sign slot3,  slot2) goto 9
				 12	[  0]	RET1 	  0		2	; return slot0
			 25	[  0]	FNEW 	  3		30	; N/A:0-0: 1 args, 1 upvalues, 16 slots
				
				;;;; constant tables ;;;;
				ktable#1 = [
					#1: 3,
					#2: 3,
					]
				
				
				ktable#2 = [
					#1: 2,
					#2: 3,
					]
				
				
				ktable#3 = [
					#1: 1,
					#2: 3,
					]
				
				
				ktable#4 = [
					#1: 3,
					#2: 2,
					]
				
				
				ktable#5 = [
					#1: 2,
					#2: 2,
					]
				
				
				ktable#6 = [
					#1: 1,
					#2: 2,
					]
				
				
				ktable#7 = [
					#1: 3,
					#2: 1,
					]
				
				
				ktable#8 = [
					#1: 2,
					#2: 1,
					]
				
				
				ktable#9 = [
					#1: 1,
					#2: 1,
					]
				
				
				ktable#10 = [
					#1: 3,
					#2: 1,
					]
				
				
				ktable#11 = [
					#1: 2,
					#2: 2,
					]
				
				
				ktable#12 = [
					#1: 1,
					#2: 3,
					]
				
				
				ktable#13 = [
					#1: 3,
					#2: 3,
					]
				
				
				ktable#14 = [
					#1: 2,
					#2: 2,
					]
				
				
				ktable#15 = [
					#1: 1,
					#2: 1,
					]
				
				
				ktable#16 = [
					#1: 3,
					#2: 3,
					]
				
				
				ktable#17 = [
					#1: 3,
					#2: 2,
					]
				
				
				ktable#18 = [
					#1: 3,
					#2: 1,
					]
				
				
				ktable#19 = [
					#1: 2,
					#2: 3,
					]
				
				
				ktable#20 = [
					#1: 2,
					#2: 2,
					]
				
				
				ktable#21 = [
					#1: 2,
					#2: 1,
					]
				
				
				ktable#22 = [
					#1: 1,
					#2: 3,
					]
				
				
				ktable#23 = [
					#1: 1,
					#2: 2,
					]
				
				
				ktable#24 = [
					#1: 1,
					#2: 1,
					]
				
				
				;;;; instructions ;;;;
				  1	[  0]	TNEW 	  1		9	; slot1 = new table( array: 9, dict: 1)
				  2	[  0]	TNEW 	  2		4	; slot2 = new table( array: 4, dict: 1)
				  3	[  0]	TDUP 	  3		24	; slot3 = copy table#k24
				  4	[  0]	TSETB	  3	2	1	; slot2[1] = slot3
				  5	[  0]	TDUP 	  3		23	; slot3 = copy table#k23
				  6	[  0]	TSETB	  3	2	2	; slot2[2] = slot3
				  7	[  0]	TDUP 	  3		22	; slot3 = copy table#k22
				  8	[  0]	TSETB	  3	2	3	; slot2[3] = slot3
				  9	[  0]	TSETB	  2	1	1	; slot1[1] = slot2
				 10	[  0]	TNEW 	  2		4	; slot2 = new table( array: 4, dict: 1)
				 11	[  0]	TDUP 	  3		21	; slot3 = copy table#k21
				 12	[  0]	TSETB	  3	2	1	; slot2[1] = slot3
				 13	[  0]	TDUP 	  3		20	; slot3 = copy table#k20
				 14	[  0]	TSETB	  3	2	2	; slot2[2] = slot3
				 15	[  0]	TDUP 	  3		19	; slot3 = copy table#k19
				 16	[  0]	TSETB	  3	2	3	; slot2[3] = slot3
				 17	[  0]	TSETB	  2	1	2	; slot1[2] = slot2
				 18	[  0]	TNEW 	  2		4	; slot2 = new table( array: 4, dict: 1)
				 19	[  0]	TDUP 	  3		18	; slot3 = copy table#k18
				 20	[  0]	TSETB	  3	2	1	; slot2[1] = slot3
				 21	[  0]	TDUP 	  3		17	; slot3 = copy table#k17
				 22	[  0]	TSETB	  3	2	2	; slot2[2] = slot3
				 23	[  0]	TDUP 	  3		16	; slot3 = copy table#k16
				 24	[  0]	TSETB	  3	2	3	; slot2[3] = slot3
				 25	[  0]	TSETB	  2	1	3	; slot1[3] = slot2
				 26	[  0]	TNEW 	  2		4	; slot2 = new table( array: 4, dict: 1)
				 27	[  0]	TDUP 	  3		15	; slot3 = copy table#k15
				 28	[  0]	TSETB	  3	2	1	; slot2[1] = slot3
				 29	[  0]	TDUP 	  3		14	; slot3 = copy table#k14
				 30	[  0]	TSETB	  3	2	2	; slot2[2] = slot3
				 31	[  0]	TDUP 	  3		13	; slot3 = copy table#k13
				 32	[  0]	TSETB	  3	2	3	; slot2[3] = slot3
				 33	[  0]	TSETB	  2	1	4	; slot1[4] = slot2
				 34	[  0]	TNEW 	  2		4	; slot2 = new table( array: 4, dict: 1)
				 35	[  0]	TDUP 	  3		12	; slot3 = copy table#k12
				 36	[  0]	TSETB	  3	2	1	; slot2[1] = slot3
				 37	[  0]	TDUP 	  3		11	; slot3 = copy table#k11
				 38	[  0]	TSETB	  3	2	2	; slot2[2] = slot3
				 39	[  0]	TDUP 	  3		10	; slot3 = copy table#k10
				 40	[  0]	TSETB	  3	2	3	; slot2[3] = slot3
				 41	[  0]	TSETB	  2	1	5	; slot1[5] = slot2
				 42	[  0]	TNEW 	  2		4	; slot2 = new table( array: 4, dict: 1)
				 43	[  0]	TDUP 	  3		9	; slot3 = copy table#k9
				 44	[  0]	TSETB	  3	2	1	; slot2[1] = slot3
				 45	[  0]	TDUP 	  3		8	; slot3 = copy table#k8
				 46	[  0]	TSETB	  3	2	2	; slot2[2] = slot3
				 47	[  0]	TDUP 	  3		7	; slot3 = copy table#k7
				 48	[  0]	TSETB	  3	2	3	; slot2[3] = slot3
				 49	[  0]	TSETB	  2	1	6	; slot1[6] = slot2
				 50	[  0]	TNEW 	  2		4	; slot2 = new table( array: 4, dict: 1)
				 51	[  0]	TDUP 	  3		6	; slot3 = copy table#k6
				 52	[  0]	TSETB	  3	2	1	; slot2[1] = slot3
				 53	[  0]	TDUP 	  3		5	; slot3 = copy table#k5
				 54	[  0]	TSETB	  3	2	2	; slot2[2] = slot3
				 55	[  0]	TDUP 	  3		4	; slot3 = copy table#k4
				 56	[  0]	TSETB	  3	2	3	; slot2[3] = slot3
				 57	[  0]	TSETB	  2	1	7	; slot1[7] = slot2
				 58	[  0]	TNEW 	  2		4	; slot2 = new table( array: 4, dict: 1)
				 59	[  0]	TDUP 	  3		3	; slot3 = copy table#k3
				 60	[  0]	TSETB	  3	2	1	; slot2[1] = slot3
				 61	[  0]	TDUP 	  3		2	; slot3 = copy table#k2
				 62	[  0]	TSETB	  3	2	2	; slot2[2] = slot3
				 63	[  0]	TDUP 	  3		1	; slot3 = copy table#k1
				 64	[  0]	TSETB	  3	2	3	; slot2[3] = slot3
				 65	[  0]	TSETB	  2	1	8	; slot1[8] = slot2
				 66	[  0]	KSHORT	  2		0	; slot2 = 0
				 67	[  0]	GGET 	  3		0	; slot3 = _env["ipairs"]
				 68	[  0]	MOV  	  5		1	; slot5 = slot1
				 69	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
				 70	[  0]	JMP  	  6		26	; 	goto 97
				 71	[  0]	TGETB	  8	7	1	; slot8 = slot7[1]
				 72	[  0]	TGETB	  8	8	1	; slot8 = slot8[1]
				 73	[  0]	TGETV	  8	0	8	; slot8 = slot0[slot8]
				 74	[  0]	TGETB	  9	7	1	; slot9 = slot7[1]
				 75	[  0]	TGETB	  9	9	2	; slot9 = slot9[2]
				 76	[  0]	TGETV	  8	8	9	; slot8 = slot8[slot9]
				 77	[  0]	TGETB	  9	7	2	; slot9 = slot7[2]
				 78	[  0]	TGETB	  9	9	1	; slot9 = slot9[1]
				 79	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
				 80	[  0]	TGETB	 10	7	2	; slot10 = slot7[2]
				 81	[  0]	TGETB	 10	10	2	; slot10 = slot10[2]
				 82	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
				 83	[  0]	TGETB	 10	7	3	; slot10 = slot7[3]
				 84	[  0]	TGETB	 10	10	1	; slot10 = slot10[1]
				 85	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
				 86	[  0]	TGETB	 11	7	3	; slot11 = slot7[3]
				 87	[  0]	TGETB	 11	11	2	; slot11 = slot11[2]
				 88	[  0]	TGETV	 10	10	11	; slot10 = slot10[slot11]
				 89	[  0]	UGET 	 11		0	; slot11 = uv0"unknwon"
				 90	[  0]	MOV  	 13		8	; slot13 = slot8
				 91	[  0]	MOV  	 14		9	; slot14 = slot9
				 92	[  0]	MOV  	 15		10	; slot15 = slot10
				 93	[  0]	CALL 	 11	2	4	; slot11 = uv0"unknown"(slot12, slot13, slot14)
				 94	[  0]	ISF  	   		11	; if not uv0"unknown"
				 95	[  0]	JMP  	 12		1	; 	goto 97
				 96	[  0]	ADDVN	  2	2	0	; slot2 = slot2 + 1
				 97	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, slot5; slot6, slot7 = ipairs(slot4, slot5)
				 98	[  0]	ITERL	  6		-28	; slot5 = slot6; if slot6 != nil goto 71
				 99	[  0]	RET1 	  2		2	; return slot2
			 26	[  0]	FNEW 	  4		29	; N/A:0-0: 1 args, 9 upvalues, 42 slots
				
				;;;; constant tables ;;;;
				ktable#2 = [
					#1: 1,
					#2: 2,
					#3: 3,
					#4: 4,
					#5: 5,
					]
				
				
				ktable#8 = [
					#1: 3,
					#2: 3,
					]
				
				
				ktable#9 = [
					#1: 2,
					#2: 3,
					]
				
				
				ktable#10 = [
					#1: 1,
					#2: 3,
					]
				
				
				ktable#11 = [
					#1: 3,
					#2: 2,
					]
				
				
				ktable#12 = [
					#1: 2,
					#2: 2,
					]
				
				
				ktable#13 = [
					#1: 1,
					#2: 2,
					]
				
				
				ktable#14 = [
					#1: 3,
					#2: 1,
					]
				
				
				ktable#15 = [
					#1: 2,
					#2: 1,
					]
				
				
				ktable#16 = [
					#1: 1,
					#2: 1,
					]
				
				
				ktable#17 = [
					#1: 3,
					#2: 1,
					]
				
				
				ktable#18 = [
					#1: 2,
					#2: 2,
					]
				
				
				ktable#19 = [
					#1: 1,
					#2: 3,
					]
				
				
				ktable#20 = [
					#1: 3,
					#2: 3,
					]
				
				
				ktable#21 = [
					#1: 2,
					#2: 2,
					]
				
				
				ktable#22 = [
					#1: 1,
					#2: 1,
					]
				
				
				ktable#23 = [
					#1: 3,
					#2: 3,
					]
				
				
				ktable#24 = [
					#1: 3,
					#2: 2,
					]
				
				
				ktable#25 = [
					#1: 3,
					#2: 1,
					]
				
				
				ktable#26 = [
					#1: 2,
					#2: 3,
					]
				
				
				ktable#27 = [
					#1: 2,
					#2: 2,
					]
				
				
				ktable#28 = [
					#1: 2,
					#2: 1,
					]
				
				
				ktable#29 = [
					#1: 1,
					#2: 3,
					]
				
				
				ktable#30 = [
					#1: 1,
					#2: 2,
					]
				
				
				ktable#31 = [
					#1: 1,
					#2: 1,
					]
				
				
				;;;; instructions ;;;;
				  1	[  0]	GGET 	  1		36	; slot1 = _env["math"]
				  2	[  0]	TGETS	  1	1	35	; slot1 = math.max
				  3	[  0]	KSHORT	  3		0	; slot3 = 0
				  4	[  0]	GGET 	  4		36	; slot4 = _env["math"]
				  5	[  0]	TGETS	  4	4	34	; slot4 = math.min
				  6	[  0]	KSHORT	  6		5	; slot6 = 5
				  7	[  0]	GGET 	  7		36	; slot7 = _env["math"]
				  8	[  0]	TGETS	  7	7	33	; slot7 = math.floor
				  9	[  0]	GGET 	  9		32	; slot9 = _env["tonumber"]
				 10	[  0]	ISTC 	 11		0	; slot11 = slot0; if slot0
				 11	[  0]	JMP  	 11		1	; 	goto 13
				 12	[  0]	KSHORT	 11		0	; slot11 = 0
				 13	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
				 14	[  0]	IST  	   		9	; if tonumber
				 15	[  0]	JMP  	 10		1	; 	goto 17
				 16	[  0]	KSHORT	  9		0	; slot9 = 0
				 17	[  0]	CALL 	  7	0	2	; MULTRES = math.floor(slot8)
				 18	[  0]	CALLM	  4	0	1	; MULTRES = math.min(slot5, ...MULTRES)
				 19	[  0]	CALLM	  1	2	1	; slot1 = math.max(slot2, ...MULTRES)
				 20	[  0]	MOV  	  0		1	; slot0 = slot1
				 21	[  0]	TNEW 	  1		9	; slot1 = new table( array: 9, dict: 1)
				 22	[  0]	TNEW 	  2		4	; slot2 = new table( array: 4, dict: 1)
				 23	[  0]	TDUP 	  3		31	; slot3 = copy table#k31
				 24	[  0]	TSETB	  3	2	1	; slot2[1] = slot3
				 25	[  0]	TDUP 	  3		30	; slot3 = copy table#k30
				 26	[  0]	TSETB	  3	2	2	; slot2[2] = slot3
				 27	[  0]	TDUP 	  3		29	; slot3 = copy table#k29
				 28	[  0]	TSETB	  3	2	3	; slot2[3] = slot3
				 29	[  0]	TSETB	  2	1	1	; slot1[1] = slot2
				 30	[  0]	TNEW 	  2		4	; slot2 = new table( array: 4, dict: 1)
				 31	[  0]	TDUP 	  3		28	; slot3 = copy table#k28
				 32	[  0]	TSETB	  3	2	1	; slot2[1] = slot3
				 33	[  0]	TDUP 	  3		27	; slot3 = copy table#k27
				 34	[  0]	TSETB	  3	2	2	; slot2[2] = slot3
				 35	[  0]	TDUP 	  3		26	; slot3 = copy table#k26
				 36	[  0]	TSETB	  3	2	3	; slot2[3] = slot3
				 37	[  0]	TSETB	  2	1	2	; slot1[2] = slot2
				 38	[  0]	TNEW 	  2		4	; slot2 = new table( array: 4, dict: 1)
				 39	[  0]	TDUP 	  3		25	; slot3 = copy table#k25
				 40	[  0]	TSETB	  3	2	1	; slot2[1] = slot3
				 41	[  0]	TDUP 	  3		24	; slot3 = copy table#k24
				 42	[  0]	TSETB	  3	2	2	; slot2[2] = slot3
				 43	[  0]	TDUP 	  3		23	; slot3 = copy table#k23
				 44	[  0]	TSETB	  3	2	3	; slot2[3] = slot3
				 45	[  0]	TSETB	  2	1	3	; slot1[3] = slot2
				 46	[  0]	TNEW 	  2		4	; slot2 = new table( array: 4, dict: 1)
				 47	[  0]	TDUP 	  3		22	; slot3 = copy table#k22
				 48	[  0]	TSETB	  3	2	1	; slot2[1] = slot3
				 49	[  0]	TDUP 	  3		21	; slot3 = copy table#k21
				 50	[  0]	TSETB	  3	2	2	; slot2[2] = slot3
				 51	[  0]	TDUP 	  3		20	; slot3 = copy table#k20
				 52	[  0]	TSETB	  3	2	3	; slot2[3] = slot3
				 53	[  0]	TSETB	  2	1	4	; slot1[4] = slot2
				 54	[  0]	TNEW 	  2		4	; slot2 = new table( array: 4, dict: 1)
				 55	[  0]	TDUP 	  3		19	; slot3 = copy table#k19
				 56	[  0]	TSETB	  3	2	1	; slot2[1] = slot3
				 57	[  0]	TDUP 	  3		18	; slot3 = copy table#k18
				 58	[  0]	TSETB	  3	2	2	; slot2[2] = slot3
				 59	[  0]	TDUP 	  3		17	; slot3 = copy table#k17
				 60	[  0]	TSETB	  3	2	3	; slot2[3] = slot3
				 61	[  0]	TSETB	  2	1	5	; slot1[5] = slot2
				 62	[  0]	TNEW 	  2		4	; slot2 = new table( array: 4, dict: 1)
				 63	[  0]	TDUP 	  3		16	; slot3 = copy table#k16
				 64	[  0]	TSETB	  3	2	1	; slot2[1] = slot3
				 65	[  0]	TDUP 	  3		15	; slot3 = copy table#k15
				 66	[  0]	TSETB	  3	2	2	; slot2[2] = slot3
				 67	[  0]	TDUP 	  3		14	; slot3 = copy table#k14
				 68	[  0]	TSETB	  3	2	3	; slot2[3] = slot3
				 69	[  0]	TSETB	  2	1	6	; slot1[6] = slot2
				 70	[  0]	TNEW 	  2		4	; slot2 = new table( array: 4, dict: 1)
				 71	[  0]	TDUP 	  3		13	; slot3 = copy table#k13
				 72	[  0]	TSETB	  3	2	1	; slot2[1] = slot3
				 73	[  0]	TDUP 	  3		12	; slot3 = copy table#k12
				 74	[  0]	TSETB	  3	2	2	; slot2[2] = slot3
				 75	[  0]	TDUP 	  3		11	; slot3 = copy table#k11
				 76	[  0]	TSETB	  3	2	3	; slot2[3] = slot3
				 77	[  0]	TSETB	  2	1	7	; slot1[7] = slot2
				 78	[  0]	TNEW 	  2		4	; slot2 = new table( array: 4, dict: 1)
				 79	[  0]	TDUP 	  3		10	; slot3 = copy table#k10
				 80	[  0]	TSETB	  3	2	1	; slot2[1] = slot3
				 81	[  0]	TDUP 	  3		9	; slot3 = copy table#k9
				 82	[  0]	TSETB	  3	2	2	; slot2[2] = slot3
				 83	[  0]	TDUP 	  3		8	; slot3 = copy table#k8
				 84	[  0]	TSETB	  3	2	3	; slot2[3] = slot3
				 85	[  0]	TSETB	  2	1	8	; slot1[8] = slot2
				 86	[  0]	ISNEN	  0		0	; if slot0 ~= 0
				 87	[  0]	JMP  	  2		87	; 	goto 175
				 88	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
				 89	[  0]	CALL 	  2	2	1	; slot2 = uv0"unknown"()
				 90	[  0]	KSHORT	  3		1	; slot3 = 1
				 91	[  0]	KSHORT	  4		3	; slot4 = 3
				 92	[  0]	KSHORT	  5		1	; slot5 = 1
				 93	[  0]	FORI 	  3		11	; for slot6 = slot3,slot4,slot5 else goto 105
				 94	[  0]	KSHORT	  7		1	; slot7 = 1
				 95	[  0]	KSHORT	  8		3	; slot8 = 3
				 96	[  0]	KSHORT	  9		1	; slot9 = 1
				 97	[  0]	FORI 	  7		6	; for slot10 = slot7,slot8,slot9 else goto 104
				 98	[  0]	TGETV	 11	2	6	; slot11 = uv0"unknown"[slot6]
				 99	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
				100	[  0]	UGET 	 14		2	; slot14 = uv2"unknwon"
				101	[  0]	CALL 	 12	2	2	; slot12 = uv1"unknown"(slot13)
				102	[  0]	TSETV	 12	11	10	; slot11[slot10] = uv1"unknown"
				103	[  0]	FORL 	  7		-6	; slot10 = slot10 + slot9; if cmp(slot10, sign slot9,  slot8) goto 98
				104	[  0]	FORL 	  3		-11	; slot6 = slot6 + slot5; if cmp(slot6, sign slot5,  slot4) goto 94
				105	[  0]	KSHORT	  3		1	; slot3 = 1
				106	[  0]	KSHORT	  4		10	; slot4 = 10
				107	[  0]	KSHORT	  5		1	; slot5 = 1
				108	[  0]	FORI 	  3		65	; for slot6 = slot3,slot4,slot5 else goto 174
				109	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
				110	[  0]	MOV  	  9		2	; slot9 = uv0"unknown"
				111	[  0]	CALL 	  7	2	2	; slot7 = uv3"unknown"(slot8)
				112	[  0]	ISNEN	  7		0	; if uv3"unknown" ~= 0
				113	[  0]	JMP  	  8		1	; 	goto 115
				114	[  0]	JMP  	  3		59	; 	goto 174
				115	[  0]	GGET 	  8		7	; slot8 = _env["ipairs"]
				116	[  0]	MOV  	 10		1	; slot10 = slot1
				117	[  0]	CALL 	  8	4	2	; slot8, slot9, slot10 = ipairs(uv0"unknown")
				118	[  0]	JMP  	 11		52	; 	goto 171
				119	[  0]	TGETB	 13	12	1	; slot13 = slot12[1]
				120	[  0]	TGETB	 13	13	1	; slot13 = slot13[1]
				121	[  0]	TGETV	 13	2	13	; slot13 = uv0"unknown"[slot13]
				122	[  0]	TGETB	 14	12	1	; slot14 = slot12[1]
				123	[  0]	TGETB	 14	14	2	; slot14 = slot14[2]
				124	[  0]	TGETV	 13	13	14	; slot13 = slot13[slot14]
				125	[  0]	TGETB	 14	12	2	; slot14 = slot12[2]
				126	[  0]	TGETB	 14	14	1	; slot14 = slot14[1]
				127	[  0]	TGETV	 14	2	14	; slot14 = uv0"unknown"[slot14]
				128	[  0]	TGETB	 15	12	2	; slot15 = slot12[2]
				129	[  0]	TGETB	 15	15	2	; slot15 = slot15[2]
				130	[  0]	TGETV	 14	14	15	; slot14 = slot14[slot15]
				131	[  0]	TGETB	 15	12	3	; slot15 = slot12[3]
				132	[  0]	TGETB	 15	15	1	; slot15 = slot15[1]
				133	[  0]	TGETV	 15	2	15	; slot15 = uv0"unknown"[slot15]
				134	[  0]	TGETB	 16	12	3	; slot16 = slot12[3]
				135	[  0]	TGETB	 16	16	2	; slot16 = slot16[2]
				136	[  0]	TGETV	 15	15	16	; slot15 = slot15[slot16]
				137	[  0]	UGET 	 16		4	; slot16 = uv4"unknwon"
				138	[  0]	MOV  	 18		13	; slot18 = slot13
				139	[  0]	MOV  	 19		14	; slot19 = slot14
				140	[  0]	MOV  	 20		15	; slot20 = slot15
				141	[  0]	CALL 	 16	2	4	; slot16 = uv4"unknown"(slot17, slot18, slot19)
				142	[  0]	ISF  	   		16	; if not uv4"unknown"
				143	[  0]	JMP  	 17		27	; 	goto 171
				144	[  0]	GGET 	 16		6	; slot16 = _env["love"]
				145	[  0]	TGETS	 16	16	36	; slot16 = love.math
				146	[  0]	TGETS	 16	16	5	; slot16 = love.math.random
				147	[  0]	KSHORT	 18		1	; slot18 = 1
				148	[  0]	KSHORT	 19		3	; slot19 = 3
				149	[  0]	CALL 	 16	2	3	; slot16 = love.math.random(slot17, slot18)
				150	[  0]	TGETV	 17	12	16	; slot17 = slot12[love.math.random]
				151	[  0]	MOV  	 18		13	; slot18 = slot13
				152	[  0]	MOV  	 19		18	; slot19 = slot18
				153	[  0]	KSHORT	 20		0	; slot20 = 0
				154	[  0]	ISNEV	 19		18	; if slot19 ~= slot18
				155	[  0]	JMP  	 21		10	; 	goto 166
				156	[  0]	KSHORT	 21		5	; slot21 = 5
				157	[  0]	ISGE 	 20		21	; if slot20 >= slot21
				158	[  0]	JMP  	 21		7	; 	goto 166
				159	[  0]	LOOP 	 21		6	; Loop start, exit goto 166
				160	[  0]	UGET 	 21		1	; slot21 = uv1"unknwon"
				161	[  0]	UGET 	 23		2	; slot23 = uv2"unknwon"
				162	[  0]	CALL 	 21	2	2	; slot21 = uv1"unknown"(slot22)
				163	[  0]	MOV  	 19		21	; slot19 = uv1"unknown"
				164	[  0]	ADDVN	 20	20	1	; slot20 = slot20 + 1
				165	[  0]	JMP  	 21		-12	; 	goto 154
				166	[  0]	TGETB	 21	17	1	; slot21 = slot17[1]
				167	[  0]	TGETV	 21	2	21	; slot21 = uv0"unknown"[slot21]
				168	[  0]	TGETB	 22	17	2	; slot22 = slot17[2]
				169	[  0]	TSETV	 19	21	22	; slot21[slot22] = uv1"unknown"
				170	[  0]	JMP  	  8		2	; 	goto 173
				171	[  0]	ITERC	 11	3	3	; slot11, slot12, slot13 = ipairs, uv0"unknown", slot10; slot11, slot12 = ipairs(uv0"unknown", slot10)
				172	[  0]	ITERL	 11		-54	; slot10 = slot11; if slot11 != nil goto 119
				173	[  0]	FORL 	  3		-65	; slot6 = slot6 + slot5; if cmp(slot6, sign slot5,  slot4) goto 109
				174	[  0]	UCLO 	  0		453	; nil uvs >= r0; goto 628
				175	[  0]	UGET 	  2		5	; slot2 = uv5"unknwon"
				176	[  0]	TGETS	  2	2	4	; slot2 = uv5"unknown".sandboxNextWinSymbol
				177	[  0]	UGET 	  3		6	; slot3 = uv6"unknwon"
				178	[  0]	ISEQV	  2		3	; if uv5"unknown".sandboxNextWinSymbol == uv6"unknown"
				179	[  0]	JMP  	  3		4	; 	goto 184
				180	[  0]	ISEQS	  2		3	; if uv5"unknown".sandboxNextWinSymbol == "J"
				181	[  0]	JMP  	  3		2	; 	goto 184
				182	[  0]	KPRI 	  3		1	; slot3 = false
				183	[  0]	JMP  	  4		1	; 	goto 185
				184	[  0]	KPRI 	  3		2	; slot3 = true
				185	[  0]	ISF  	   		3	; if not slot3
				186	[  0]	JMP  	  4		31	; 	goto 218
				187	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
				188	[  0]	CALL 	  4	2	1	; slot4 = uv0"unknown"()
				189	[  0]	GGET 	  5		6	; slot5 = _env["love"]
				190	[  0]	TGETS	  5	5	36	; slot5 = love.math
				191	[  0]	TGETS	  5	5	5	; slot5 = love.math.random
				192	[  0]	KSHORT	  7		1	; slot7 = 1
				193	[  0]	KSHORT	  8		3	; slot8 = 3
				194	[  0]	CALL 	  5	2	3	; slot5 = love.math.random(slot6, slot7)
				195	[  0]	KSHORT	  6		1	; slot6 = 1
				196	[  0]	KSHORT	  7		1	; slot7 = 1
				197	[  0]	KSHORT	  8		3	; slot8 = 3
				198	[  0]	KSHORT	  9		1	; slot9 = 1
				199	[  0]	FORI 	  7		17	; for slot10 = slot7,slot8,slot9 else goto 217
				200	[  0]	KSHORT	 11		1	; slot11 = 1
				201	[  0]	KSHORT	 12		3	; slot12 = 3
				202	[  0]	KSHORT	 13		1	; slot13 = 1
				203	[  0]	FORI 	 11		12	; for slot14 = slot11,slot12,slot13 else goto 216
				204	[  0]	ISNEV	 10		5	; if slot10 ~= love.math.random
				205	[  0]	JMP  	 15		4	; 	goto 210
				206	[  0]	TGETV	 15	4	10	; slot15 = uv0"unknown"[slot10]
				207	[  0]	UGET 	 16		6	; slot16 = uv6"unknwon"
				208	[  0]	TSETV	 16	15	14	; slot15[slot14] = uv6"unknown"
				209	[  0]	JMP  	 15		5	; 	goto 215
				210	[  0]	TGETV	 15	4	10	; slot15 = uv0"unknown"[slot10]
				211	[  0]	UGET 	 16		7	; slot16 = uv7"unknwon"
				212	[  0]	TGETV	 16	16	6	; slot16 = uv7"unknown"[slot6]
				213	[  0]	TSETV	 16	15	14	; slot15[slot14] = slot16
				214	[  0]	ADDVN	  6	6	1	; slot6 = slot6 + 1
				215	[  0]	FORL 	 11		-12	; slot14 = slot14 + slot13; if cmp(slot14, sign slot13,  slot12) goto 204
				216	[  0]	FORL 	  7		-17	; slot10 = slot10 + slot9; if cmp(slot10, sign slot9,  slot8) goto 200
				217	[  0]	UCLO 	  0		411	; nil uvs >= r0; goto 629
				218	[  0]	TDUP 	  4		2	; slot4 = copy table#k2
				219	[  0]	FNEW 	  5		1	; N/A:0-0: 1 args, 0 upvalues, 10 slots
					
					;;;; constant tables ;;;;
					;;;; instructions ;;;;
					  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
					  2	[  0]	KSHORT	  2		1	; slot2 = 1
					  3	[  0]	LEN  	  3		0	; slot3 = #slot0
					  4	[  0]	KSHORT	  4		1	; slot4 = 1
					  5	[  0]	FORI 	  2		3	; for slot5 = slot2,slot3,slot4 else goto 9
					  6	[  0]	TGETV	  6	0	5	; slot6 = slot0[slot5]
					  7	[  0]	TSETV	  6	1	5	; slot1[slot5] = slot6
					  8	[  0]	FORL 	  2		-3	; slot5 = slot5 + slot4; if cmp(slot5, sign slot4,  slot3) goto 6
					  9	[  0]	LEN  	  2		1	; slot2 = #slot1
					 10	[  0]	KSHORT	  3		2	; slot3 = 2
					 11	[  0]	KSHORT	  4		65535	; slot4 = 65535
					 12	[  0]	FORI 	  2		11	; for slot5 = slot2,slot3,slot4 else goto 24
					 13	[  0]	GGET 	  6		2	; slot6 = _env["love"]
					 14	[  0]	TGETS	  6	6	1	; slot6 = love.math
					 15	[  0]	TGETS	  6	6	0	; slot6 = love.math.random
					 16	[  0]	KSHORT	  8		1	; slot8 = 1
					 17	[  0]	MOV  	  9		5	; slot9 = slot5
					 18	[  0]	CALL 	  6	2	3	; slot6 = love.math.random(slot7, slot8)
					 19	[  0]	TGETV	  7	1	6	; slot7 = slot1[love.math.random]
					 20	[  0]	TGETV	  8	1	5	; slot8 = slot1[slot5]
					 21	[  0]	TSETV	  8	1	6	; slot1[love.math.random] = slot8
					 22	[  0]	TSETV	  7	1	5	; slot1[slot5] = slot7
					 23	[  0]	FORL 	  2		-11	; slot5 = slot5 + slot4; if cmp(slot5, sign slot4,  slot3) goto 13
					 24	[  0]	RET1 	  1		2	; return slot1
				220	[  0]	KPRI 	  6		0	; slot6 = nil
				221	[  0]	KSHORT	  7		1	; slot7 = 1
				222	[  0]	KSHORT	  8		40	; slot8 = 40
				223	[  0]	KSHORT	  9		1	; slot9 = 1
				224	[  0]	FORI 	  7		72	; for slot10 = slot7,slot8,slot9 else goto 297
				225	[  0]	MOV  	 11		5	; slot11 = slot5
				226	[  0]	MOV  	 13		4	; slot13 = slot4
				227	[  0]	CALL 	 11	2	2	; slot11 = slot11(slot12)
				228	[  0]	TNEW 	 12		0	; slot12 = new table( array: 0, dict: 1)
				229	[  0]	KSHORT	 13		1	; slot13 = 1
				230	[  0]	MOV  	 14		0	; slot14 = slot0
				231	[  0]	KSHORT	 15		1	; slot15 = 1
				232	[  0]	FORI 	 13		4	; for slot16 = slot13,slot14,slot15 else goto 237
				233	[  0]	TGETV	 17	11	16	; slot17 = slot11[slot16]
				234	[  0]	KPRI 	 18		2	; slot18 = true
				235	[  0]	TSETV	 18	12	17	; slot12[slot17] = slot18
				236	[  0]	FORL 	 13		-4	; slot16 = slot16 + slot15; if cmp(slot16, sign slot15,  slot14) goto 233
				237	[  0]	TNEW 	 13		0	; slot13 = new table( array: 0, dict: 1)
				238	[  0]	KSHORT	 14		1	; slot14 = 1
				239	[  0]	KSHORT	 15		3	; slot15 = 3
				240	[  0]	KSHORT	 16		1	; slot16 = 1
				241	[  0]	FORI 	 14		3	; for slot17 = slot14,slot15,slot16 else goto 245
				242	[  0]	TNEW 	 18		0	; slot18 = new table( array: 0, dict: 1)
				243	[  0]	TSETV	 18	13	17	; slot13[slot17] = slot18
				244	[  0]	FORL 	 14		-3	; slot17 = slot17 + slot16; if cmp(slot17, sign slot16,  slot15) goto 242
				245	[  0]	KSHORT	 14		1	; slot14 = 1
				246	[  0]	KSHORT	 15		5	; slot15 = 5
				247	[  0]	KSHORT	 16		1	; slot16 = 1
				248	[  0]	FORI 	 14		15	; for slot17 = slot14,slot15,slot16 else goto 264
				249	[  0]	TGETV	 18	12	17	; slot18 = slot12[slot17]
				250	[  0]	ISF  	   		18	; if not slot18
				251	[  0]	JMP  	 19		11	; 	goto 263
				252	[  0]	GGET 	 18		7	; slot18 = _env["ipairs"]
				253	[  0]	TGETV	 20	1	17	; slot20 = slot1[slot17]
				254	[  0]	CALL 	 18	4	2	; slot18, slot19, slot20 = ipairs(slot19)
				255	[  0]	JMP  	 21		5	; 	goto 261
				256	[  0]	TGETB	 23	22	1	; slot23 = slot22[1]
				257	[  0]	TGETV	 23	13	23	; slot23 = slot13[slot23]
				258	[  0]	TGETB	 24	22	2	; slot24 = slot22[2]
				259	[  0]	KPRI 	 25		2	; slot25 = true
				260	[  0]	TSETV	 25	23	24	; slot23[slot24] = slot25
				261	[  0]	ITERC	 21	3	3	; slot21, slot22, slot23 = ipairs, slot19, slot20; slot21, slot22 = ipairs(slot19, slot20)
				262	[  0]	ITERL	 21		-7	; slot20 = slot21; if slot21 != nil goto 256
				263	[  0]	FORL 	 14		-15	; slot17 = slot17 + slot16; if cmp(slot17, sign slot16,  slot15) goto 249
				264	[  0]	KPRI 	 14		2	; slot14 = true
				265	[  0]	KSHORT	 15		1	; slot15 = 1
				266	[  0]	KSHORT	 16		5	; slot16 = 5
				267	[  0]	KSHORT	 17		1	; slot17 = 1
				268	[  0]	FORI 	 15		23	; for ipairs = slot15,slot16,slot17 else goto 292
				269	[  0]	TGETV	 19	12	18	; slot19 = slot12[slot18]
				270	[  0]	IST  	   		19	; if slot19
				271	[  0]	JMP  	 19		19	; 	goto 291
				272	[  0]	KPRI 	 19		2	; slot19 = true
				273	[  0]	GGET 	 20		7	; slot20 = _env["ipairs"]
				274	[  0]	TGETV	 22	1	18	; slot22 = slot1[slot18]
				275	[  0]	CALL 	 20	4	2	; slot20, slot21, slot22 = ipairs(slot21)
				276	[  0]	JMP  	 23		8	; 	goto 285
				277	[  0]	TGETB	 25	24	1	; slot25 = slot24[1]
				278	[  0]	TGETV	 25	13	25	; slot25 = slot13[slot25]
				279	[  0]	TGETB	 26	24	2	; slot26 = slot24[2]
				280	[  0]	TGETV	 25	25	26	; slot25 = slot25[slot26]
				281	[  0]	IST  	   		25	; if slot25
				282	[  0]	JMP  	 25		2	; 	goto 285
				283	[  0]	KPRI 	 19		1	; slot19 = false
				284	[  0]	JMP  	 20		2	; 	goto 287
				285	[  0]	ITERC	 23	3	3	; slot23, slot24, slot25 = ipairs, slot21, slot22; slot23, slot24 = ipairs(slot21, slot22)
				286	[  0]	ITERL	 23		-10	; slot22 = slot23; if slot23 != nil goto 277
				287	[  0]	ISF  	   		19	; if not slot19
				288	[  0]	JMP  	 20		2	; 	goto 291
				289	[  0]	KPRI 	 14		1	; slot14 = false
				290	[  0]	JMP  	 15		1	; 	goto 292
				291	[  0]	FORL 	 15		-23	; slot18 = slot18 + slot17; if cmp(slot18, sign slot17,  slot16) goto 269
				292	[  0]	ISF  	   		14	; if not slot14
				293	[  0]	JMP  	 15		2	; 	goto 296
				294	[  0]	MOV  	  6		12	; slot6 = slot12
				295	[  0]	JMP  	  7		1	; 	goto 297
				296	[  0]	FORL 	  7		-72	; slot10 = slot10 + slot9; if cmp(slot10, sign slot9,  slot8) goto 225
				297	[  0]	IST  	   		6	; if slot6
				298	[  0]	JMP  	  7		8	; 	goto 307
				299	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
				300	[  0]	KSHORT	  7		1	; slot7 = 1
				301	[  0]	MOV  	  8		0	; slot8 = slot0
				302	[  0]	KSHORT	  9		1	; slot9 = 1
				303	[  0]	FORI 	  7		3	; for slot10 = slot7,slot8,slot9 else goto 307
				304	[  0]	KPRI 	 11		2	; slot11 = true
				305	[  0]	TSETV	 11	6	10	; slot6[slot10] = slot11
				306	[  0]	FORL 	  7		-3	; slot10 = slot10 + slot9; if cmp(slot10, sign slot9,  slot8) goto 304
				307	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
				308	[  0]	CALL 	  7	2	1	; slot7 = uv0"unknown"()
				309	[  0]	ISTC 	  8		2	; slot8 = uv5"unknown".sandboxNextWinSymbol; if uv5"unknown".sandboxNextWinSymbol
				310	[  0]	JMP  	  8		2	; 	goto 313
				311	[  0]	UGET 	  8		8	; slot8 = uv8"unknwon"
				312	[  0]	CALL 	  8	2	1	; slot8 = uv8"unknown"()
				313	[  0]	FNEW 	  9		0	; N/A:0-0: 1 args, 2 upvalues, 6 slots
					
					;;;; constant tables ;;;;
					;;;; instructions ;;;;
					  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
					  2	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
					  3	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
					  4	[  0]	KSHORT	  2		0	; slot2 = 0
					  5	[  0]	ISNEV	  1		0	; if slot1 ~= slot0
					  6	[  0]	JMP  	  3		10	; 	goto 17
					  7	[  0]	KSHORT	  3		10	; slot3 = 10
					  8	[  0]	ISGE 	  2		3	; if slot2 >= slot3
					  9	[  0]	JMP  	  3		7	; 	goto 17
					 10	[  0]	LOOP 	  3		6	; Loop start, exit goto 17
					 11	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
					 12	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
					 13	[  0]	CALL 	  3	2	2	; slot3 = uv0"unknown"(slot4)
					 14	[  0]	MOV  	  1		3	; slot1 = uv0"unknown"
					 15	[  0]	ADDVN	  2	2	0	; slot2 = slot2 + 1
					 16	[  0]	JMP  	  3		-12	; 	goto 5
					 17	[  0]	RET1 	  1		2	; return uv0"unknown"
				314	[  0]	KSHORT	 10		1	; slot10 = 1
				315	[  0]	KSHORT	 11		3	; slot11 = 3
				316	[  0]	KSHORT	 12		1	; slot12 = 1
				317	[  0]	FORI 	 10		11	; for slot13 = slot10,slot11,slot12 else goto 329
				318	[  0]	KSHORT	 14		1	; slot14 = 1
				319	[  0]	KSHORT	 15		3	; slot15 = 3
				320	[  0]	KSHORT	 16		1	; slot16 = 1
				321	[  0]	FORI 	 14		6	; for slot17 = slot14,slot15,slot16 else goto 328
				322	[  0]	TGETV	 18	7	13	; slot18 = uv0"unknown"[slot13]
				323	[  0]	MOV  	 19		9	; slot19 = slot9
				324	[  0]	MOV  	 21		8	; slot21 = uv8"unknown"
				325	[  0]	CALL 	 19	2	2	; slot19 = slot19(ipairs)
				326	[  0]	TSETV	 19	18	17	; slot18[slot17] = slot19
				327	[  0]	FORL 	 14		-6	; slot17 = slot17 + slot16; if cmp(slot17, sign slot16,  slot15) goto 322
				328	[  0]	FORL 	 10		-11	; slot13 = slot13 + slot12; if cmp(slot13, sign slot12,  slot11) goto 318
				329	[  0]	KSHORT	 10		1	; slot10 = 1
				330	[  0]	KSHORT	 11		5	; slot11 = 5
				331	[  0]	KSHORT	 12		1	; slot12 = 1
				332	[  0]	FORI 	 10		14	; for slot13 = slot10,slot11,slot12 else goto 347
				333	[  0]	TGETV	 14	6	13	; slot14 = slot6[slot13]
				334	[  0]	ISF  	   		14	; if not slot14
				335	[  0]	JMP  	 15		10	; 	goto 346
				336	[  0]	GGET 	 14		7	; slot14 = _env["ipairs"]
				337	[  0]	TGETV	 16	1	13	; slot16 = slot1[slot13]
				338	[  0]	CALL 	 14	4	2	; slot14, slot15, slot16 = ipairs(slot15)
				339	[  0]	JMP  	 17		4	; 	goto 344
				340	[  0]	TGETB	 19	18	1	; slot19 = slot18[1]
				341	[  0]	TGETV	 19	7	19	; slot19 = uv0"unknown"[slot19]
				342	[  0]	TGETB	 20	18	2	; slot20 = slot18[2]
				343	[  0]	TSETV	  8	19	20	; slot19[slot20] = uv8"unknown"
				344	[  0]	ITERC	 17	3	3	; slot17, slot18, slot19 = ipairs, slot15, slot16; slot17, slot18 = ipairs(slot15, slot16)
				345	[  0]	ITERL	 17		-6	; slot16 = slot17; if slot17 != nil goto 340
				346	[  0]	FORL 	 10		-14	; slot13 = slot13 + slot12; if cmp(slot13, sign slot12,  slot11) goto 333
				347	[  0]	KSHORT	 10		1	; slot10 = 1
				348	[  0]	LEN  	 11		1	; slot11 = #slot1
				349	[  0]	KSHORT	 12		1	; slot12 = 1
				350	[  0]	FORI 	 10		118	; for slot13 = slot10,slot11,slot12 else goto 469
				351	[  0]	TGETV	 14	6	13	; slot14 = slot6[slot13]
				352	[  0]	IST  	   		14	; if slot14
				353	[  0]	JMP  	 14		114	; 	goto 468
				354	[  0]	TGETV	 14	1	13	; slot14 = slot1[slot13]
				355	[  0]	TGETB	 15	14	1	; slot15 = slot14[1]
				356	[  0]	TGETB	 15	15	1	; slot15 = slot15[1]
				357	[  0]	TGETV	 15	7	15	; slot15 = uv0"unknown"[slot15]
				358	[  0]	TGETB	 16	14	1	; slot16 = slot14[1]
				359	[  0]	TGETB	 16	16	2	; slot16 = slot16[2]
				360	[  0]	TGETV	 15	15	16	; slot15 = slot15[slot16]
				361	[  0]	TGETB	 16	14	2	; slot16 = slot14[2]
				362	[  0]	TGETB	 16	16	1	; slot16 = slot16[1]
				363	[  0]	TGETV	 16	7	16	; slot16 = uv0"unknown"[slot16]
				364	[  0]	TGETB	 17	14	2	; slot17 = slot14[2]
				365	[  0]	TGETB	 17	17	2	; slot17 = slot17[2]
				366	[  0]	TGETV	 16	16	17	; slot16 = slot16[slot17]
				367	[  0]	TGETB	 17	14	3	; slot17 = slot14[3]
				368	[  0]	TGETB	 17	17	1	; slot17 = slot17[1]
				369	[  0]	TGETV	 17	7	17	; slot17 = uv0"unknown"[slot17]
				370	[  0]	TGETB	 18	14	3	; slot18 = slot14[3]
				371	[  0]	TGETB	 18	18	2	; slot18 = slot18[2]
				372	[  0]	TGETV	 17	17	18	; slot17 = slot17[slot18]
				373	[  0]	UGET 	 18		4	; slot18 = uv4"unknwon"
				374	[  0]	MOV  	 20		15	; slot20 = slot15
				375	[  0]	MOV  	 21		16	; slot21 = slot16
				376	[  0]	MOV  	 22		17	; slot22 = slot17
				377	[  0]	CALL 	 18	2	4	; slot18 = uv4"unknown"(slot19, slot20, slot21)
				378	[  0]	ISF  	   		18	; if not uv4"unknown"
				379	[  0]	JMP  	 19		88	; 	goto 468
				380	[  0]	KPRI 	 18		1	; slot18 = false
				381	[  0]	KSHORT	 19		1	; slot19 = 1
				382	[  0]	KSHORT	 20		3	; slot20 = 3
				383	[  0]	KSHORT	 21		1	; slot21 = 1
				384	[  0]	FORI 	 19		56	; for slot22 = slot19,slot20,slot21 else goto 441
				385	[  0]	TGETV	 23	14	22	; slot23 = slot14[slot22]
				386	[  0]	TGETB	 23	23	1	; slot23 = slot23[1]
				387	[  0]	TGETV	 24	14	22	; slot24 = slot14[slot22]
				388	[  0]	TGETB	 24	24	2	; slot24 = slot24[2]
				389	[  0]	KPRI 	 25		1	; slot25 = false
				390	[  0]	KSHORT	 26		1	; slot26 = 1
				391	[  0]	LEN  	 27		1	; slot27 = #slot1
				392	[  0]	KSHORT	 28		1	; slot28 = 1
				393	[  0]	FORI 	 26		21	; for slot29 = slot26,slot27,slot28 else goto 415
				394	[  0]	TGETV	 30	6	29	; slot30 = slot6[slot29]
				395	[  0]	ISF  	   		30	; if not slot30
				396	[  0]	JMP  	 31		14	; 	goto 411
				397	[  0]	GGET 	 30		7	; slot30 = _env["ipairs"]
				398	[  0]	TGETV	 32	1	29	; slot32 = slot1[slot29]
				399	[  0]	CALL 	 30	4	2	; slot30, slot31, slot32 = ipairs(slot31)
				400	[  0]	JMP  	 33		8	; 	goto 409
				401	[  0]	TGETB	 35	34	1	; slot35 = slot34[1]
				402	[  0]	ISNEV	 35		23	; if slot35 ~= slot23
				403	[  0]	JMP  	 35		5	; 	goto 409
				404	[  0]	TGETB	 35	34	2	; slot35 = slot34[2]
				405	[  0]	ISNEV	 35		24	; if slot35 ~= slot24
				406	[  0]	JMP  	 35		2	; 	goto 409
				407	[  0]	KPRI 	 25		2	; slot25 = true
				408	[  0]	JMP  	 30		2	; 	goto 411
				409	[  0]	ITERC	 33	3	3	; slot33, slot34, slot35 = ipairs, slot31, slot32; slot33, slot34 = ipairs(slot31, slot32)
				410	[  0]	ITERL	 33		-10	; slot32 = slot33; if slot33 != nil goto 401
				411	[  0]	ISF  	   		25	; if not slot25
				412	[  0]	JMP  	 30		1	; 	goto 414
				413	[  0]	JMP  	 26		1	; 	goto 415
				414	[  0]	FORL 	 26		-21	; slot29 = slot29 + slot28; if cmp(slot29, sign slot28,  slot27) goto 394
				415	[  0]	IST  	   		25	; if slot25
				416	[  0]	JMP  	 26		23	; 	goto 440
				417	[  0]	TGETV	 26	7	23	; slot26 = uv0"unknown"[slot23]
				418	[  0]	TGETV	 26	26	24	; slot26 = slot26[slot24]
				419	[  0]	MOV  	 27		26	; slot27 = slot26
				420	[  0]	KSHORT	 28		0	; slot28 = 0
				421	[  0]	ISEQV	 27		26	; if slot27 == slot26
				422	[  0]	JMP  	 29		2	; 	goto 425
				423	[  0]	ISNEV	 27		8	; if slot27 ~= uv8"unknown"
				424	[  0]	JMP  	 29		11	; 	goto 436
				425	[  0]	LOOP 	 29		10	; Loop start, exit goto 436
				426	[  0]	UGET 	 29		1	; slot29 = uv1"unknwon"
				427	[  0]	UGET 	 31		2	; slot31 = uv2"unknwon"
				428	[  0]	CALL 	 29	2	2	; slot29 = uv1"unknown"(ipairs)
				429	[  0]	MOV  	 27		29	; slot27 = uv1"unknown"
				430	[  0]	ADDVN	 28	28	1	; slot28 = slot28 + 1
				431	[  0]	KSHORT	 29		10	; slot29 = 10
				432	[  0]	ISGE 	 29		28	; if slot29 >= slot28
				433	[  0]	JMP  	 29		-13	; 	goto 421
				434	[  0]	JMP  	 29		1	; 	goto 436
				435	[  0]	JMP  	 29		-15	; 	goto 421
				436	[  0]	TGETV	 29	7	23	; slot29 = uv0"unknown"[slot23]
				437	[  0]	TSETV	 27	29	24	; slot29[slot24] = uv1"unknown"
				438	[  0]	KPRI 	 18		2	; slot18 = true
				439	[  0]	JMP  	 19		1	; 	goto 441
				440	[  0]	FORL 	 19		-56	; slot22 = slot22 + slot21; if cmp(slot22, sign slot21,  slot20) goto 385
				441	[  0]	IST  	   		18	; if slot18
				442	[  0]	JMP  	 19		25	; 	goto 468
				443	[  0]	TGETB	 19	14	1	; slot19 = slot14[1]
				444	[  0]	TGETB	 19	19	1	; slot19 = slot19[1]
				445	[  0]	TGETB	 20	14	1	; slot20 = slot14[1]
				446	[  0]	TGETB	 20	20	2	; slot20 = slot20[2]
				447	[  0]	TGETV	 21	7	19	; slot21 = uv0"unknown"[slot19]
				448	[  0]	TGETV	 21	21	20	; slot21 = slot21[slot20]
				449	[  0]	MOV  	 22		21	; slot22 = slot21
				450	[  0]	KSHORT	 23		0	; slot23 = 0
				451	[  0]	ISEQV	 22		21	; if slot22 == slot21
				452	[  0]	JMP  	 24		2	; 	goto 455
				453	[  0]	ISNEV	 22		8	; if slot22 ~= uv8"unknown"
				454	[  0]	JMP  	 24		11	; 	goto 466
				455	[  0]	LOOP 	 24		10	; Loop start, exit goto 466
				456	[  0]	UGET 	 24		1	; slot24 = uv1"unknwon"
				457	[  0]	UGET 	 26		2	; slot26 = uv2"unknwon"
				458	[  0]	CALL 	 24	2	2	; slot24 = uv1"unknown"(slot25)
				459	[  0]	MOV  	 22		24	; slot22 = uv1"unknown"
				460	[  0]	ADDVN	 23	23	1	; slot23 = slot23 + 1
				461	[  0]	KSHORT	 24		10	; slot24 = 10
				462	[  0]	ISGE 	 24		23	; if slot24 >= slot23
				463	[  0]	JMP  	 24		-13	; 	goto 451
				464	[  0]	JMP  	 24		1	; 	goto 466
				465	[  0]	JMP  	 24		-15	; 	goto 451
				466	[  0]	TGETV	 24	7	19	; slot24 = uv0"unknown"[slot19]
				467	[  0]	TSETV	 22	24	20	; slot24[slot20] = uv1"unknown"
				468	[  0]	FORL 	 10		-118	; slot13 = slot13 + slot12; if cmp(slot13, sign slot12,  slot11) goto 351
				469	[  0]	KSHORT	 10		1	; slot10 = 1
				470	[  0]	KSHORT	 11		5	; slot11 = 5
				471	[  0]	KSHORT	 12		1	; slot12 = 1
				472	[  0]	FORI 	 10		153	; for slot13 = slot10,slot11,slot12 else goto 626
				473	[  0]	UGET 	 14		3	; slot14 = uv3"unknwon"
				474	[  0]	MOV  	 16		7	; slot16 = uv0"unknown"
				475	[  0]	CALL 	 14	2	2	; slot14 = uv3"unknown"(slot15)
				476	[  0]	ISNEV	 14		0	; if uv3"unknown" ~= slot0
				477	[  0]	JMP  	 15		1	; 	goto 479
				478	[  0]	JMP  	 10		147	; 	goto 626
				479	[  0]	ISGE 	  0		14	; if slot0 >= uv3"unknown"
				480	[  0]	JMP  	 15		96	; 	goto 577
				481	[  0]	KSHORT	 15		1	; slot15 = 1
				482	[  0]	LEN  	 16		1	; slot16 = #slot1
				483	[  0]	KSHORT	 17		1	; slot17 = 1
				484	[  0]	FORI 	 15		91	; for slot18 = slot15,slot16,slot17 else goto 576
				485	[  0]	TGETV	 19	1	18	; slot19 = slot1[slot18]
				486	[  0]	TGETB	 20	19	1	; slot20 = slot19[1]
				487	[  0]	TGETB	 20	20	1	; slot20 = slot20[1]
				488	[  0]	TGETV	 20	7	20	; slot20 = uv0"unknown"[slot20]
				489	[  0]	TGETB	 21	19	1	; slot21 = slot19[1]
				490	[  0]	TGETB	 21	21	2	; slot21 = slot21[2]
				491	[  0]	TGETV	 20	20	21	; slot20 = slot20[slot21]
				492	[  0]	TGETB	 21	19	2	; slot21 = slot19[2]
				493	[  0]	TGETB	 21	21	1	; slot21 = slot21[1]
				494	[  0]	TGETV	 21	7	21	; slot21 = uv0"unknown"[slot21]
				495	[  0]	TGETB	 22	19	2	; slot22 = slot19[2]
				496	[  0]	TGETB	 22	22	2	; slot22 = slot22[2]
				497	[  0]	TGETV	 21	21	22	; slot21 = slot21[slot22]
				498	[  0]	TGETB	 22	19	3	; slot22 = slot19[3]
				499	[  0]	TGETB	 22	22	1	; slot22 = slot22[1]
				500	[  0]	TGETV	 22	7	22	; slot22 = uv0"unknown"[slot22]
				501	[  0]	TGETB	 23	19	3	; slot23 = slot19[3]
				502	[  0]	TGETB	 23	23	2	; slot23 = slot23[2]
				503	[  0]	TGETV	 22	22	23	; slot22 = slot22[slot23]
				504	[  0]	UGET 	 23		4	; slot23 = uv4"unknwon"
				505	[  0]	MOV  	 25		20	; slot25 = slot20
				506	[  0]	MOV  	 26		21	; slot26 = slot21
				507	[  0]	MOV  	 27		22	; slot27 = slot22
				508	[  0]	CALL 	 23	2	4	; slot23 = uv4"unknown"(slot24, slot25, slot26)
				509	[  0]	ISF  	   		23	; if not uv4"unknown"
				510	[  0]	JMP  	 24		64	; 	goto 575
				511	[  0]	KPRI 	 23		1	; slot23 = false
				512	[  0]	KSHORT	 24		1	; slot24 = 1
				513	[  0]	KSHORT	 25		3	; slot25 = 3
				514	[  0]	KSHORT	 26		1	; slot26 = 1
				515	[  0]	FORI 	 24		56	; for slot27 = slot24,slot25,slot26 else goto 572
				516	[  0]	TGETV	 28	19	27	; slot28 = slot19[slot27]
				517	[  0]	TGETB	 28	28	1	; slot28 = slot28[1]
				518	[  0]	TGETV	 29	19	27	; slot29 = slot19[slot27]
				519	[  0]	TGETB	 29	29	2	; slot29 = slot29[2]
				520	[  0]	KPRI 	 30		1	; slot30 = false
				521	[  0]	KSHORT	 31		1	; slot31 = 1
				522	[  0]	LEN  	 32		1	; slot32 = #slot1
				523	[  0]	KSHORT	 33		1	; slot33 = 1
				524	[  0]	FORI 	 31		21	; for slot34 = slot31,slot32,slot33 else goto 546
				525	[  0]	TGETV	 35	6	34	; slot35 = slot6[slot34]
				526	[  0]	ISF  	   		35	; if not slot35
				527	[  0]	JMP  	 36		14	; 	goto 542
				528	[  0]	GGET 	 35		7	; slot35 = _env["ipairs"]
				529	[  0]	TGETV	 37	1	34	; slot37 = slot1[slot34]
				530	[  0]	CALL 	 35	4	2	; slot35, slot36, slot37 = ipairs(slot36)
				531	[  0]	JMP  	 38		8	; 	goto 540
				532	[  0]	TGETB	 40	39	1	; slot40 = slot39[1]
				533	[  0]	ISNEV	 40		28	; if slot40 ~= slot28
				534	[  0]	JMP  	 40		5	; 	goto 540
				535	[  0]	TGETB	 40	39	2	; slot40 = slot39[2]
				536	[  0]	ISNEV	 40		29	; if slot40 ~= slot29
				537	[  0]	JMP  	 40		2	; 	goto 540
				538	[  0]	KPRI 	 30		2	; slot30 = true
				539	[  0]	JMP  	 35		2	; 	goto 542
				540	[  0]	ITERC	 38	3	3	; slot38, slot39, slot40 = ipairs, slot36, slot37; slot38, slot39 = ipairs(slot36, slot37)
				541	[  0]	ITERL	 38		-10	; slot37 = slot38; if slot38 != nil goto 532
				542	[  0]	ISF  	   		30	; if not slot30
				543	[  0]	JMP  	 35		1	; 	goto 545
				544	[  0]	JMP  	 31		1	; 	goto 546
				545	[  0]	FORL 	 31		-21	; slot34 = slot34 + slot33; if cmp(slot34, sign slot33,  slot32) goto 525
				546	[  0]	IST  	   		30	; if slot30
				547	[  0]	JMP  	 31		23	; 	goto 571
				548	[  0]	TGETV	 31	7	28	; slot31 = uv0"unknown"[slot28]
				549	[  0]	TGETV	 31	31	29	; slot31 = slot31[slot29]
				550	[  0]	MOV  	 32		31	; slot32 = slot31
				551	[  0]	KSHORT	 33		0	; slot33 = 0
				552	[  0]	ISEQV	 32		31	; if slot32 == slot31
				553	[  0]	JMP  	 34		2	; 	goto 556
				554	[  0]	ISNEV	 32		8	; if slot32 ~= uv8"unknown"
				555	[  0]	JMP  	 34		11	; 	goto 567
				556	[  0]	LOOP 	 34		10	; Loop start, exit goto 567
				557	[  0]	UGET 	 34		1	; slot34 = uv1"unknwon"
				558	[  0]	UGET 	 36		2	; slot36 = uv2"unknwon"
				559	[  0]	CALL 	 34	2	2	; slot34 = uv1"unknown"(ipairs)
				560	[  0]	MOV  	 32		34	; slot32 = uv1"unknown"
				561	[  0]	ADDVN	 33	33	1	; slot33 = slot33 + 1
				562	[  0]	KSHORT	 34		10	; slot34 = 10
				563	[  0]	ISGE 	 34		33	; if slot34 >= slot33
				564	[  0]	JMP  	 34		-13	; 	goto 552
				565	[  0]	JMP  	 34		1	; 	goto 567
				566	[  0]	JMP  	 34		-15	; 	goto 552
				567	[  0]	TGETV	 34	7	28	; slot34 = uv0"unknown"[slot28]
				568	[  0]	TSETV	 32	34	29	; slot34[slot29] = uv1"unknown"
				569	[  0]	KPRI 	 23		2	; slot23 = true
				570	[  0]	JMP  	 24		1	; 	goto 572
				571	[  0]	FORL 	 24		-56	; slot27 = slot27 + slot26; if cmp(slot27, sign slot26,  slot25) goto 516
				572	[  0]	ISF  	   		23	; if not slot23
				573	[  0]	JMP  	 24		1	; 	goto 575
				574	[  0]	JMP  	 15		50	; 	goto 625
				575	[  0]	FORL 	 15		-91	; slot18 = slot18 + slot17; if cmp(slot18, sign slot17,  slot16) goto 485
				576	[  0]	JMP  	 15		48	; 	goto 625
				577	[  0]	ISGE 	 14		0	; if uv3"unknown" >= slot0
				578	[  0]	JMP  	 15		46	; 	goto 625
				579	[  0]	KSHORT	 15		1	; slot15 = 1
				580	[  0]	KSHORT	 16		5	; slot16 = 5
				581	[  0]	KSHORT	 17		1	; slot17 = 1
				582	[  0]	FORI 	 15		42	; for slot18 = slot15,slot16,slot17 else goto 625
				583	[  0]	TGETV	 19	1	18	; slot19 = slot1[slot18]
				584	[  0]	TGETB	 20	19	1	; slot20 = slot19[1]
				585	[  0]	TGETB	 20	20	1	; slot20 = slot20[1]
				586	[  0]	TGETV	 20	7	20	; slot20 = uv0"unknown"[slot20]
				587	[  0]	TGETB	 21	19	1	; slot21 = slot19[1]
				588	[  0]	TGETB	 21	21	2	; slot21 = slot21[2]
				589	[  0]	TGETV	 20	20	21	; slot20 = slot20[slot21]
				590	[  0]	TGETB	 21	19	2	; slot21 = slot19[2]
				591	[  0]	TGETB	 21	21	1	; slot21 = slot21[1]
				592	[  0]	TGETV	 21	7	21	; slot21 = uv0"unknown"[slot21]
				593	[  0]	TGETB	 22	19	2	; slot22 = slot19[2]
				594	[  0]	TGETB	 22	22	2	; slot22 = slot22[2]
				595	[  0]	TGETV	 21	21	22	; slot21 = slot21[slot22]
				596	[  0]	TGETB	 22	19	3	; slot22 = slot19[3]
				597	[  0]	TGETB	 22	22	1	; slot22 = slot22[1]
				598	[  0]	TGETV	 22	7	22	; slot22 = uv0"unknown"[slot22]
				599	[  0]	TGETB	 23	19	3	; slot23 = slot19[3]
				600	[  0]	TGETB	 23	23	2	; slot23 = slot23[2]
				601	[  0]	TGETV	 22	22	23	; slot22 = slot22[slot23]
				602	[  0]	UGET 	 23		4	; slot23 = uv4"unknwon"
				603	[  0]	MOV  	 25		20	; slot25 = slot20
				604	[  0]	MOV  	 26		21	; slot26 = slot21
				605	[  0]	MOV  	 27		22	; slot27 = slot22
				606	[  0]	CALL 	 23	2	4	; slot23 = uv4"unknown"(slot24, slot25, slot26)
				607	[  0]	IST  	   		23	; if uv4"unknown"
				608	[  0]	JMP  	 23		15	; 	goto 624
				609	[  0]	TGETV	 23	6	18	; slot23 = slot6[slot18]
				610	[  0]	ISF  	   		23	; if not slot23
				611	[  0]	JMP  	 24		12	; 	goto 624
				612	[  0]	KSHORT	 23		1	; slot23 = 1
				613	[  0]	KSHORT	 24		3	; slot24 = 3
				614	[  0]	KSHORT	 25		1	; slot25 = 1
				615	[  0]	FORI 	 23		7	; for slot26 = slot23,slot24,slot25 else goto 623
				616	[  0]	TGETV	 27	19	26	; slot27 = slot19[slot26]
				617	[  0]	TGETB	 27	27	1	; slot27 = slot27[1]
				618	[  0]	TGETV	 28	19	26	; slot28 = slot19[slot26]
				619	[  0]	TGETB	 28	28	2	; slot28 = slot28[2]
				620	[  0]	TGETV	 29	7	27	; slot29 = uv0"unknown"[slot27]
				621	[  0]	TSETV	  8	29	28	; slot29[slot28] = uv8"unknown"
				622	[  0]	FORL 	 23		-7	; slot26 = slot26 + slot25; if cmp(slot26, sign slot25,  slot24) goto 616
				623	[  0]	JMP  	 15		1	; 	goto 625
				624	[  0]	FORL 	 15		-42	; slot18 = slot18 + slot17; if cmp(slot18, sign slot17,  slot16) goto 583
				625	[  0]	FORL 	 10		-153	; slot13 = slot13 + slot12; if cmp(slot13, sign slot12,  slot11) goto 473
				626	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 627
				627	[  0]	RET1 	  7		2	; return uv0"unknown"
				628	[  0]	RET1 	  2		2	; return uv5"unknown".sandboxNextWinSymbol
				629	[  0]	RET1 	  4		2	; return slot4
			 27	[  0]	GGET 	  5		28	; slot5 = _env["type"]
			 28	[  0]	TGETS	  7	0	27	; slot7 = slot0.stoneWinLinesOnce
			 29	[  0]	CALL 	  5	2	2	; slot5 = type(slot6)
			 30	[  0]	ISNES	  5		26	; if type ~= "number"
			 31	[  0]	JMP  	  5		97	; 	goto 129
			 32	[  0]	GGET 	  5		34	; slot5 = _env["math"]
			 33	[  0]	TGETS	  5	5	33	; slot5 = math.max
			 34	[  0]	KSHORT	  7		1	; slot7 = 1
			 35	[  0]	GGET 	  8		34	; slot8 = _env["math"]
			 36	[  0]	TGETS	  8	8	32	; slot8 = math.min
			 37	[  0]	KSHORT	 10		3	; slot10 = 3
			 38	[  0]	GGET 	 11		34	; slot11 = _env["math"]
			 39	[  0]	TGETS	 11	11	25	; slot11 = math.floor
			 40	[  0]	TGETS	 13	0	27	; slot13 = slot0.stoneWinLinesOnce
			 41	[  0]	CALL 	 11	0	2	; MULTRES = math.floor(slot12)
			 42	[  0]	CALLM	  8	0	1	; MULTRES = math.min(slot9, ...MULTRES)
			 43	[  0]	CALLM	  5	2	1	; slot5 = math.max(slot6, ...MULTRES)
			 44	[  0]	KPRI 	  6		0	; slot6 = nil
			 45	[  0]	TSETS	  6	0	27	; slot0.stoneWinLinesOnce = slot6
			 46	[  0]	KPRI 	  6		1	; slot6 = false
			 47	[  0]	TSETS	  6	0	24	; slot0.forceWinOnce = slot6
			 48	[  0]	KSHORT	  6		1	; slot6 = 1
			 49	[  0]	KSHORT	  7		40	; slot7 = 40
			 50	[  0]	KSHORT	  8		1	; slot8 = 1
			 51	[  0]	FORI 	  6		73	; for slot9 = slot6,slot7,slot8 else goto 125
			 52	[  0]	MOV  	 10		2	; slot10 = slot2
			 53	[  0]	CALL 	 10	2	1	; slot10 = slot10()
			 54	[  0]	TDUP 	 11		23	; slot11 = copy table#k23
			 55	[  0]	KSHORT	 12		3	; slot12 = 3
			 56	[  0]	KSHORT	 13		2	; slot13 = 2
			 57	[  0]	KSHORT	 14		65535	; slot14 = 65535
			 58	[  0]	FORI 	 12		11	; for slot15 = slot12,slot13,slot14 else goto 70
			 59	[  0]	GGET 	 16		22	; slot16 = _env["love"]
			 60	[  0]	TGETS	 16	16	34	; slot16 = love.math
			 61	[  0]	TGETS	 16	16	21	; slot16 = love.math.random
			 62	[  0]	KSHORT	 18		1	; slot18 = 1
			 63	[  0]	MOV  	 19		15	; slot19 = slot15
			 64	[  0]	CALL 	 16	2	3	; slot16 = love.math.random(slot17, slot18)
			 65	[  0]	TGETV	 17	11	16	; slot17 = slot11[love.math.random]
			 66	[  0]	TGETV	 18	11	15	; slot18 = slot11[slot15]
			 67	[  0]	TSETV	 18	11	16	; slot11[love.math.random] = slot18
			 68	[  0]	TSETV	 17	11	15	; slot11[slot15] = slot17
			 69	[  0]	FORL 	 12		-11	; slot15 = slot15 + slot14; if cmp(slot15, sign slot14,  slot13) goto 59
			 70	[  0]	TNEW 	 12		0	; slot12 = new table( array: 0, dict: 1)
			 71	[  0]	KSHORT	 13		1	; slot13 = 1
			 72	[  0]	MOV  	 14		5	; slot14 = math.max
			 73	[  0]	KSHORT	 15		1	; slot15 = 1
			 74	[  0]	FORI 	 13		26	; for love.math.random = slot13,slot14,slot15 else goto 101
			 75	[  0]	UGET 	 17		4	; slot17 = uv4"unknwon"
			 76	[  0]	CALL 	 17	2	1	; slot17 = uv4"unknown"()
			 77	[  0]	KSHORT	 18		0	; slot18 = 0
			 78	[  0]	TGETV	 19	12	17	; slot19 = slot12[uv4"unknown"]
			 79	[  0]	ISF  	   		19	; if not slot19
			 80	[  0]	JMP  	 20		9	; 	goto 90
			 81	[  0]	KSHORT	 19		20	; slot19 = 20
			 82	[  0]	ISGE 	 18		19	; if slot18 >= slot19
			 83	[  0]	JMP  	 19		6	; 	goto 90
			 84	[  0]	LOOP 	 19		5	; Loop start, exit goto 90
			 85	[  0]	UGET 	 19		4	; slot19 = uv4"unknwon"
			 86	[  0]	CALL 	 19	2	1	; slot19 = uv4"unknown"()
			 87	[  0]	MOV  	 17		19	; slot17 = uv4"unknown"
			 88	[  0]	ADDVN	 18	18	1	; slot18 = slot18 + 1
			 89	[  0]	JMP  	 19		-12	; 	goto 78
			 90	[  0]	KPRI 	 19		2	; slot19 = true
			 91	[  0]	TSETV	 19	12	17	; slot12[uv4"unknown"] = slot19
			 92	[  0]	KSHORT	 19		1	; slot19 = 1
			 93	[  0]	KSHORT	 20		3	; slot20 = 3
			 94	[  0]	KSHORT	 21		1	; slot21 = 1
			 95	[  0]	FORI 	 19		4	; for slot22 = slot19,slot20,slot21 else goto 100
			 96	[  0]	TGETV	 23	11	16	; slot23 = slot11[slot16]
			 97	[  0]	TGETV	 23	10	23	; slot23 = slot10[slot23]
			 98	[  0]	TSETV	 17	23	22	; slot23[slot22] = uv4"unknown"
			 99	[  0]	FORL 	 19		-4	; slot22 = slot22 + slot21; if cmp(slot22, sign slot21,  slot20) goto 96
			100	[  0]	FORL 	 13		-26	; slot16 = slot16 + slot15; if cmp(slot16, sign slot15,  slot14) goto 75
			101	[  0]	ADDVN	 13	5	1	; slot13 = math.max + 1
			102	[  0]	KSHORT	 14		3	; slot14 = 3
			103	[  0]	KSHORT	 15		1	; slot15 = 1
			104	[  0]	FORI 	 13		12	; for slot16 = slot13,slot14,slot15 else goto 117
			105	[  0]	KSHORT	 17		1	; slot17 = 1
			106	[  0]	KSHORT	 18		3	; slot18 = 3
			107	[  0]	KSHORT	 19		1	; slot19 = 1
			108	[  0]	FORI 	 17		7	; for slot20 = slot17,slot18,slot19 else goto 116
			109	[  0]	TGETV	 21	11	16	; slot21 = slot11[slot16]
			110	[  0]	TGETV	 21	10	21	; slot21 = slot10[slot21]
			111	[  0]	UGET 	 22		1	; slot22 = uv1"unknwon"
			112	[  0]	KSHORT	 24		0	; slot24 = 0
			113	[  0]	CALL 	 22	2	2	; slot22 = uv1"unknown"(slot23)
			114	[  0]	TSETV	 22	21	20	; slot21[slot20] = uv1"unknown"
			115	[  0]	FORL 	 17		-7	; slot20 = slot20 + slot19; if cmp(slot20, sign slot19,  slot18) goto 109
			116	[  0]	FORL 	 13		-12	; slot16 = slot16 + slot15; if cmp(slot16, sign slot15,  slot14) goto 105
			117	[  0]	MOV  	 13		3	; slot13 = slot3
			118	[  0]	MOV  	 15		10	; slot15 = slot10
			119	[  0]	CALL 	 13	2	2	; slot13 = slot13(slot14)
			120	[  0]	ISNEV	 13		5	; if slot13 ~= math.max
			121	[  0]	JMP  	 13		2	; 	goto 124
			122	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 123
			123	[  0]	RET1 	 10		2	; return slot10
			124	[  0]	FORL 	  6		-73	; slot9 = slot9 + slot8; if cmp(slot9, sign slot8,  slot7) goto 52
			125	[  0]	MOV  	  6		4	; slot6 = slot4
			126	[  0]	MOV  	  8		5	; slot8 = math.max
			127	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 128
			128	[  0]	CALLT	  6		2	; return slot6(slot7)
			129	[  0]	GGET 	  5		28	; slot5 = _env["type"]
			130	[  0]	TGETS	  7	0	20	; slot7 = slot0.sandboxNextWinLines
			131	[  0]	CALL 	  5	2	2	; slot5 = type(slot6)
			132	[  0]	ISNES	  5		26	; if type ~= "number"
			133	[  0]	JMP  	  5		9	; 	goto 143
			134	[  0]	MOV  	  5		4	; slot5 = slot4
			135	[  0]	TGETS	  7	0	20	; slot7 = slot0.sandboxNextWinLines
			136	[  0]	CALL 	  5	2	2	; slot5 = slot5(slot6)
			137	[  0]	KPRI 	  6		0	; slot6 = nil
			138	[  0]	TSETS	  6	0	20	; slot0.sandboxNextWinLines = slot6
			139	[  0]	KPRI 	  6		1	; slot6 = false
			140	[  0]	TSETS	  6	0	24	; slot0.forceWinOnce = slot6
			141	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 142
			142	[  0]	RET1 	  5		2	; return slot5
			143	[  0]	MOV  	  5		2	; slot5 = slot2
			144	[  0]	CALL 	  5	2	1	; slot5 = slot5()
			145	[  0]	KSHORT	  6		1	; slot6 = 1
			146	[  0]	TGETS	  7	0	19	; slot7 = slot0.ui
			147	[  0]	TGETS	  7	7	18	; slot7 = <unknown table>.ui.slot
			148	[  0]	TGETS	  7	7	17	; slot7 = <unknown table>.ui.slot.rows
			149	[  0]	KSHORT	  8		1	; slot8 = 1
			150	[  0]	FORI 	  6		13	; for slot9 = slot6,slot7,slot8 else goto 164
			151	[  0]	KSHORT	 10		1	; slot10 = 1
			152	[  0]	TGETS	 11	0	19	; slot11 = slot0.ui
			153	[  0]	TGETS	 11	11	18	; slot11 = <unknown table>.ui.slot
			154	[  0]	TGETS	 11	11	16	; slot11 = <unknown table>.ui.slot.cols
			155	[  0]	KSHORT	 12		1	; slot12 = 1
			156	[  0]	FORI 	 10		6	; for slot13 = slot10,slot11,slot12 else goto 163
			157	[  0]	TGETV	 14	5	9	; slot14 = slot5[slot9]
			158	[  0]	UGET 	 15		1	; slot15 = uv1"unknwon"
			159	[  0]	MOV  	 17		1	; slot17 = math.max
			160	[  0]	CALL 	 15	2	2	; slot15 = uv1"unknown"(slot16)
			161	[  0]	TSETV	 15	14	13	; slot14[slot13] = uv1"unknown"
			162	[  0]	FORL 	 10		-6	; slot13 = slot13 + slot12; if cmp(slot13, sign slot12,  <unknown table>.ui.slot.cols) goto 157
			163	[  0]	FORL 	  6		-13	; slot9 = slot9 + slot8; if cmp(slot9, sign slot8,  slot7) goto 151
			164	[  0]	TGETS	  6	0	24	; slot6 = slot0.forceWinOnce
			165	[  0]	ISEQP	  6		2	; if <unknown table>.forceWinOnce == true
			166	[  0]	JMP  	  6		2	; 	goto 169
			167	[  0]	KPRI 	  6		1	; slot6 = false
			168	[  0]	JMP  	  7		1	; 	goto 170
			169	[  0]	KPRI 	  6		2	; slot6 = true
			170	[  0]	MOV  	  7		3	; slot7 = slot3
			171	[  0]	MOV  	  9		5	; slot9 = slot5
			172	[  0]	CALL 	  7	2	2	; slot7 = slot7(slot8)
			173	[  0]	ISNEN	  7		2	; if slot7 ~= 0
			174	[  0]	JMP  	  8		68	; 	goto 243
			175	[  0]	IST  	   		6	; if slot6
			176	[  0]	JMP  	  8		8	; 	goto 185
			177	[  0]	GGET 	  8		22	; slot8 = _env["love"]
			178	[  0]	TGETS	  8	8	34	; slot8 = love.math
			179	[  0]	TGETS	  8	8	21	; slot8 = love.math.random
			180	[  0]	CALL 	  8	2	1	; slot8 = love.math.random()
			181	[  0]	UGET 	  9		5	; slot9 = uv5"unknwon"
			182	[  0]	CALL 	  9	2	1	; slot9 = uv5"unknown"()
			183	[  0]	ISGE 	  8		9	; if love.math.random >= uv5"unknown"
			184	[  0]	JMP  	  8		58	; 	goto 243
			185	[  0]	TNEW 	  8		6	; slot8 = new table( array: 6, dict: 1)
			186	[  0]	TNEW 	  9		4	; slot9 = new table( array: 4, dict: 1)
			187	[  0]	TDUP 	 10		15	; slot10 = copy table#k15
			188	[  0]	TSETB	 10	9	1	; slot9[1] = slot10
			189	[  0]	TDUP 	 10		14	; slot10 = copy table#k14
			190	[  0]	TSETB	 10	9	2	; slot9[2] = slot10
			191	[  0]	TDUP 	 10		13	; slot10 = copy table#k13
			192	[  0]	TSETB	 10	9	3	; slot9[3] = slot10
			193	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
			194	[  0]	TNEW 	  9		4	; slot9 = new table( array: 4, dict: 1)
			195	[  0]	TDUP 	 10		12	; slot10 = copy table#k12
			196	[  0]	TSETB	 10	9	1	; slot9[1] = slot10
			197	[  0]	TDUP 	 10		11	; slot10 = copy table#k11
			198	[  0]	TSETB	 10	9	2	; slot9[2] = slot10
			199	[  0]	TDUP 	 10		10	; slot10 = copy table#k10
			200	[  0]	TSETB	 10	9	3	; slot9[3] = slot10
			201	[  0]	TSETB	  9	8	2	; slot8[2] = slot9
			202	[  0]	TNEW 	  9		4	; slot9 = new table( array: 4, dict: 1)
			203	[  0]	TDUP 	 10		9	; slot10 = copy table#k9
			204	[  0]	TSETB	 10	9	1	; slot9[1] = slot10
			205	[  0]	TDUP 	 10		8	; slot10 = copy table#k8
			206	[  0]	TSETB	 10	9	2	; slot9[2] = slot10
			207	[  0]	TDUP 	 10		7	; slot10 = copy table#k7
			208	[  0]	TSETB	 10	9	3	; slot9[3] = slot10
			209	[  0]	TSETB	  9	8	3	; slot8[3] = slot9
			210	[  0]	TNEW 	  9		4	; slot9 = new table( array: 4, dict: 1)
			211	[  0]	TDUP 	 10		6	; slot10 = copy table#k6
			212	[  0]	TSETB	 10	9	1	; slot9[1] = slot10
			213	[  0]	TDUP 	 10		5	; slot10 = copy table#k5
			214	[  0]	TSETB	 10	9	2	; slot9[2] = slot10
			215	[  0]	TDUP 	 10		4	; slot10 = copy table#k4
			216	[  0]	TSETB	 10	9	3	; slot9[3] = slot10
			217	[  0]	TSETB	  9	8	4	; slot8[4] = slot9
			218	[  0]	TNEW 	  9		4	; slot9 = new table( array: 4, dict: 1)
			219	[  0]	TDUP 	 10		3	; slot10 = copy table#k3
			220	[  0]	TSETB	 10	9	1	; slot9[1] = slot10
			221	[  0]	TDUP 	 10		2	; slot10 = copy table#k2
			222	[  0]	TSETB	 10	9	2	; slot9[2] = slot10
			223	[  0]	TDUP 	 10		1	; slot10 = copy table#k1
			224	[  0]	TSETB	 10	9	3	; slot9[3] = slot10
			225	[  0]	TSETB	  9	8	5	; slot8[5] = slot9
			226	[  0]	GGET 	  9		22	; slot9 = _env["love"]
			227	[  0]	TGETS	  9	9	34	; slot9 = love.math
			228	[  0]	TGETS	  9	9	21	; slot9 = love.math.random
			229	[  0]	LEN  	 11		8	; slot11 = #slot8
			230	[  0]	CALL 	  9	2	2	; slot9 = love.math.random(slot10)
			231	[  0]	UGET 	 10		4	; slot10 = uv4"unknwon"
			232	[  0]	CALL 	 10	2	1	; slot10 = uv4"unknown"()
			233	[  0]	GGET 	 11		0	; slot11 = _env["ipairs"]
			234	[  0]	TGETV	 13	8	9	; slot13 = slot8[love.math.random]
			235	[  0]	CALL 	 11	4	2	; slot11, slot12, slot13 = ipairs(slot12)
			236	[  0]	JMP  	 14		4	; 	goto 241
			237	[  0]	TGETB	 16	15	1	; slot16 = uv1"unknown"[1]
			238	[  0]	TGETB	 17	15	2	; slot17 = uv1"unknown"[2]
			239	[  0]	TGETV	 18	5	16	; slot18 = slot5[slot16]
			240	[  0]	TSETV	 10	18	17	; slot18[slot17] = uv4"unknown"
			241	[  0]	ITERC	 14	3	3	; slot14, slot15, slot16 = ipairs, slot12, slot13; slot14, slot15 = ipairs(slot12, slot13)
			242	[  0]	ITERL	 14		-6	; slot13 = slot14; if slot14 != nil goto 237
			243	[  0]	KPRI 	  8		1	; slot8 = false
			244	[  0]	TSETS	  8	0	24	; slot0.forceWinOnce = slot8
			245	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 246
			246	[  0]	RET1 	  5		2	; return slot5
		 12	[  0]	TSETS	  2	1	75	; slot1.buildResultGrid = slot2
		 13	[  0]	FNEW 	  2		72	; N/A:0-0: 1 args, 0 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	MOV  	  3		0	; slot3 = slot0
			  2	[  0]	TGETS	  1	0	6	; slot1 = slot0.buildResultGrid
			  3	[  0]	CALL 	  1	2	2	; slot1 = <unknown table>.buildResultGrid(slot2)
			  4	[  0]	TSETS	  1	0	7	; slot0.grid = slot1
			  5	[  0]	KPRI 	  1		0	; slot1 = nil
			  6	[  0]	TSETS	  1	0	5	; slot0.pendingGrid = slot1
			  7	[  0]	KPRI 	  1		0	; slot1 = nil
			  8	[  0]	TSETS	  1	0	4	; slot0._resonoscopeNudgePreview = slot1
			  9	[  0]	KPRI 	  1		0	; slot1 = nil
			 10	[  0]	TSETS	  1	0	3	; slot0._doubleLedgerCascade = slot1
			 11	[  0]	KPRI 	  1		0	; slot1 = nil
			 12	[  0]	TSETS	  1	0	2	; slot0._doubleLedgerCascadePending = slot1
			 13	[  0]	KPRI 	  1		0	; slot1 = nil
			 14	[  0]	TSETS	  1	0	1	; slot0._luckyNail = slot1
			 15	[  0]	KPRI 	  1		0	; slot1 = nil
			 16	[  0]	TSETS	  1	0	0	; slot0._copycapPending = slot1
			 17	[  0]	RET0 	  0		1	; return
		 14	[  0]	TSETS	  2	1	73	; slot1.initGrid = slot2
		 15	[  0]	FNEW 	  2		70	; N/A:0-0: 1 args, 3 upvalues, 34 slots
			
			;;;; constant tables ;;;;
			ktable#6 = [
				[squashX] = 1,
				[dur] = 0.5,
				[amp] = 0.2,
				[offset] = 0,
				[active] = false,
				[t] = 0,
				[squashY] = 1,
				]
			
			
			ktable#12 = [
				[settleTime] = 0.2,
				[decelTime] = 0.25,
				[accelTime] = 0.15,
				[state] = accelerate,
				[t] = 0,
				[vmax] = 18,
				[decelAcc] = 0,
				[speed] = 0,
				[pos] = 0,
				[spinning] = true,
				]
			
			
			ktable#15 = [
				[squashX] = 1,
				[dur] = 0.5,
				[amp] = 0.2,
				[offset] = 0,
				[active] = false,
				[t] = 0,
				[squashY] = 1,
				]
			
			
			ktable#22 = [
				[stopAt] = 0,
				[targetShift] = 0,
				[settleTime] = 0,
				[decelTime] = 0,
				[accelTime] = 0,
				[state] = stopped,
				[t] = 0,
				[vmax] = 0,
				[decelAcc] = 0,
				[speed] = 0,
				[pos] = 0,
				[spinning] = false,
				[sequenceLen] = 0,
				]
			
			
			ktable#31 = [
				]
			
			
			ktable#40 = [
				]
			
			
			ktable#42 = [
				]
			
			
			ktable#61 = [
				[won] = false,
				[checked] = false,
				[fxStarted] = false,
				[hd] = 0.35,
				[ht] = 0,
				[highlightActive] = false,
				[awarded] = false,
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	TGETS	  1	0	79	; slot1 = slot0.spin
			  2	[  0]	TGETS	  1	1	78	; slot1 = <unknown table>.spin.active
			  3	[  0]	ISF  	   		1	; if not <unknown table>.spin.active
			  4	[  0]	JMP  	  2		1	; 	goto 6
			  5	[  0]	UCLO 	  0		791	; nil uvs >= r0; goto 797
			  6	[  0]	TGETS	  1	0	77	; slot1 = slot0._copycapPending
			  7	[  0]	ISF  	   		1	; if not <unknown table>._copycapPending
			  8	[  0]	JMP  	  2		2	; 	goto 11
			  9	[  0]	KPRI 	  1		1	; slot1 = false
			 10	[  0]	UCLO 	  0		787	; nil uvs >= r0; goto 798
			 11	[  0]	TGETS	  1	0	76	; slot1 = slot0._doubleLedgerCascade
			 12	[  0]	ISF  	   		1	; if not <unknown table>._doubleLedgerCascade
			 13	[  0]	JMP  	  2		6	; 	goto 20
			 14	[  0]	TGETS	  1	0	76	; slot1 = slot0._doubleLedgerCascade
			 15	[  0]	TGETS	  1	1	78	; slot1 = <unknown table>._doubleLedgerCascade.active
			 16	[  0]	ISF  	   		1	; if not <unknown table>._doubleLedgerCascade.active
			 17	[  0]	JMP  	  2		2	; 	goto 20
			 18	[  0]	KPRI 	  1		1	; slot1 = false
			 19	[  0]	UCLO 	  0		779	; nil uvs >= r0; goto 799
			 20	[  0]	TGETS	  1	0	75	; slot1 = slot0._luckyNail
			 21	[  0]	ISF  	   		1	; if not <unknown table>._luckyNail
			 22	[  0]	JMP  	  2		6	; 	goto 29
			 23	[  0]	TGETS	  1	0	75	; slot1 = slot0._luckyNail
			 24	[  0]	TGETS	  1	1	78	; slot1 = <unknown table>._luckyNail.active
			 25	[  0]	ISF  	   		1	; if not <unknown table>._luckyNail.active
			 26	[  0]	JMP  	  2		2	; 	goto 29
			 27	[  0]	KPRI 	  1		1	; slot1 = false
			 28	[  0]	UCLO 	  0		771	; nil uvs >= r0; goto 800
			 29	[  0]	KPRI 	  1		0	; slot1 = nil
			 30	[  0]	TSETS	  1	0	74	; slot0._resonoscopeNudgePreview = slot1
			 31	[  0]	TGETS	  1	0	79	; slot1 = slot0.spin
			 32	[  0]	KPRI 	  2		2	; slot2 = true
			 33	[  0]	TSETS	  2	1	78	; <unknown table>.spin.active = slot2
			 34	[  0]	TGETS	  1	0	79	; slot1 = slot0.spin
			 35	[  0]	KPRI 	  2		2	; slot2 = true
			 36	[  0]	TSETS	  2	1	73	; <unknown table>.spin.started = slot2
			 37	[  0]	TGETS	  1	0	79	; slot1 = slot0.spin
			 38	[  0]	KSHORT	  2		0	; slot2 = 0
			 39	[  0]	TSETS	  2	1	72	; <unknown table>.spin.t = slot2
			 40	[  0]	TGETS	  1	0	71	; slot1 = slot0.ui
			 41	[  0]	ISF  	   		1	; if not <unknown table>.ui
			 42	[  0]	JMP  	  2		7	; 	goto 50
			 43	[  0]	TGETS	  1	0	71	; slot1 = slot0.ui
			 44	[  0]	TGETS	  1	1	70	; slot1 = <unknown table>.ui.battlefield
			 45	[  0]	ISF  	   		1	; if not <unknown table>.ui.battlefield
			 46	[  0]	JMP  	  2		3	; 	goto 50
			 47	[  0]	TGETS	  1	0	71	; slot1 = slot0.ui
			 48	[  0]	TGETS	  1	1	70	; slot1 = <unknown table>.ui.battlefield
			 49	[  0]	TGETS	  1	1	69	; slot1 = <unknown table>.ui.battlefield.waveTimer
			 50	[  0]	IST  	   		1	; if <unknown table>.ui.battlefield.waveTimer
			 51	[  0]	JMP  	  2		6	; 	goto 58
			 52	[  0]	GGET 	  2		68	; slot2 = _env["_G"]
			 53	[  0]	TGETS	  2	2	69	; slot2 = _G.waveTimer
			 54	[  0]	ISF  	   		2	; if not _G.waveTimer
			 55	[  0]	JMP  	  3		2	; 	goto 58
			 56	[  0]	GGET 	  2		68	; slot2 = _env["_G"]
			 57	[  0]	TGETS	  1	2	69	; slot1 = _G.waveTimer
			 58	[  0]	ISF  	   		1	; if not _G.waveTimer
			 59	[  0]	JMP  	  2		15	; 	goto 75
			 60	[  0]	TGETS	  2	1	67	; slot2 = _G.waveTimer.state
			 61	[  0]	ISEQS	  2		66	; if _G.waveTimer.state == "fading"
			 62	[  0]	JMP  	  2		9	; 	goto 72
			 63	[  0]	TGETS	  2	1	67	; slot2 = _G.waveTimer.state
			 64	[  0]	ISNES	  2		65	; if _G.waveTimer.state ~= "countdown"
			 65	[  0]	JMP  	  2		9	; 	goto 75
			 66	[  0]	TGETS	  2	1	64	; slot2 = _G.waveTimer.dur
			 67	[  0]	TGETS	  3	1	72	; slot3 = _G.waveTimer.t
			 68	[  0]	SUBVV	  2	2	3	; slot2 = _G.waveTimer.dur - _G.waveTimer.t
			 69	[  0]	KSHORT	  3		2	; slot3 = 2
			 70	[  0]	ISGT 	  2		3	; if slot2 > slot3
			 71	[  0]	JMP  	  2		3	; 	goto 75
			 72	[  0]	KPRI 	  2		2	; slot2 = true
			 73	[  0]	TSETS	  2	0	63	; slot0._spinInitiatedNearBattleStart = slot2
			 74	[  0]	JMP  	  2		2	; 	goto 77
			 75	[  0]	KPRI 	  2		1	; slot2 = false
			 76	[  0]	TSETS	  2	0	63	; slot0._spinInitiatedNearBattleStart = slot2
			 77	[  0]	TDUP 	  2		61	; slot2 = copy table#k61
			 78	[  0]	TSETS	  2	0	62	; slot0.result = slot2
			 79	[  0]	TGETS	  2	0	60	; slot2 = slot0.stonePackOnce
			 80	[  0]	ISF  	   		2	; if not <unknown table>.stonePackOnce
			 81	[  0]	JMP  	  3		5	; 	goto 87
			 82	[  0]	TGETS	  2	0	62	; slot2 = slot0.result
			 83	[  0]	TGETS	  3	0	60	; slot3 = slot0.stonePackOnce
			 84	[  0]	TSETS	  3	2	59	; <unknown table>.result.stonePack = <unknown table>.stonePackOnce
			 85	[  0]	KPRI 	  2		0	; slot2 = nil
			 86	[  0]	TSETS	  2	0	60	; slot0.stonePackOnce = slot2
			 87	[  0]	TGETS	  2	0	58	; slot2 = slot0.grid
			 88	[  0]	MOV  	  5		0	; slot5 = slot0
			 89	[  0]	TGETS	  3	0	57	; slot3 = slot0.buildResultGrid
			 90	[  0]	CALL 	  3	2	2	; slot3 = <unknown table>.buildResultGrid(slot4)
			 91	[  0]	TGETS	  4	0	56	; slot4 = slot0._coreSpinMods
			 92	[  0]	ISF  	   		4	; if not <unknown table>._coreSpinMods
			 93	[  0]	JMP  	  5		9	; 	goto 103
			 94	[  0]	GGET 	  4		55	; slot4 = _env["tonumber"]
			 95	[  0]	TGETS	  6	0	56	; slot6 = slot0._coreSpinMods
			 96	[  0]	TGETS	  6	6	54	; slot6 = <unknown table>._coreSpinMods.jokerChance
			 97	[  0]	IST  	   		6	; if <unknown table>._coreSpinMods.jokerChance
			 98	[  0]	JMP  	  7		1	; 	goto 100
			 99	[  0]	KSHORT	  6		0	; slot6 = 0
			100	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
			101	[  0]	IST  	   		4	; if tonumber
			102	[  0]	JMP  	  5		1	; 	goto 104
			103	[  0]	KSHORT	  4		0	; slot4 = 0
			104	[  0]	GGET 	  5		53	; slot5 = _env["math"]
			105	[  0]	TGETS	  5	5	52	; slot5 = math.max
			106	[  0]	KSHORT	  7		0	; slot7 = 0
			107	[  0]	GGET 	  8		53	; slot8 = _env["math"]
			108	[  0]	TGETS	  8	8	51	; slot8 = math.min
			109	[  0]	KNUM 	 10		0	; slot10 = 0.05
			110	[  0]	MOV  	 11		4	; slot11 = slot4
			111	[  0]	CALL 	  8	0	3	; MULTRES = math.min(slot9, slot10)
			112	[  0]	CALLM	  5	2	1	; slot5 = math.max(slot6, ...MULTRES)
			113	[  0]	MOV  	  4		5	; slot4 = math.max
			114	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
			115	[  0]	TGETS	  6	0	56	; slot6 = slot0._coreSpinMods
			116	[  0]	ISF  	   		6	; if not <unknown table>._coreSpinMods
			117	[  0]	JMP  	  7		4	; 	goto 122
			118	[  0]	TGETS	  6	0	56	; slot6 = slot0._coreSpinMods
			119	[  0]	TGETS	  6	6	50	; slot6 = <unknown table>._coreSpinMods.forceJokerCells
			120	[  0]	IST  	   		6	; if <unknown table>._coreSpinMods.forceJokerCells
			121	[  0]	JMP  	  7		1	; 	goto 123
			122	[  0]	KPRI 	  6		0	; slot6 = nil
			123	[  0]	GGET 	  7		49	; slot7 = _env["type"]
			124	[  0]	MOV  	  9		6	; slot9 = slot6
			125	[  0]	CALL 	  7	2	2	; slot7 = type(math.min)
			126	[  0]	ISNES	  7		48	; if type ~= "table"
			127	[  0]	JMP  	  7		57	; 	goto 185
			128	[  0]	GGET 	  7		47	; slot7 = _env["ipairs"]
			129	[  0]	MOV  	  9		6	; slot9 = slot6
			130	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = ipairs(math.min)
			131	[  0]	JMP  	 10		51	; 	goto 183
			132	[  0]	GGET 	 12		53	; slot12 = _env["math"]
			133	[  0]	TGETS	 12	12	52	; slot12 = math.max
			134	[  0]	KSHORT	 14		1	; slot14 = 1
			135	[  0]	GGET 	 15		53	; slot15 = _env["math"]
			136	[  0]	TGETS	 15	15	51	; slot15 = math.min
			137	[  0]	KSHORT	 17		3	; slot17 = 3
			138	[  0]	GGET 	 18		53	; slot18 = _env["math"]
			139	[  0]	TGETS	 18	18	46	; slot18 = math.floor
			140	[  0]	GGET 	 20		55	; slot20 = _env["tonumber"]
			141	[  0]	ISF  	   		11	; if not slot11
			142	[  0]	JMP  	 22		3	; 	goto 146
			143	[  0]	TGETS	 22	11	45	; slot22 = slot11.row
			144	[  0]	IST  	   		22	; if <unknown table>.row
			145	[  0]	JMP  	 23		1	; 	goto 147
			146	[  0]	KSHORT	 22		0	; slot22 = 0
			147	[  0]	CALL 	 20	2	2	; slot20 = tonumber(slot21)
			148	[  0]	IST  	   		20	; if tonumber
			149	[  0]	JMP  	 21		1	; 	goto 151
			150	[  0]	KSHORT	 20		0	; slot20 = 0
			151	[  0]	CALL 	 18	0	2	; MULTRES = math.floor(slot19)
			152	[  0]	CALLM	 15	0	1	; MULTRES = math.min(slot16, ...MULTRES)
			153	[  0]	CALLM	 12	2	1	; slot12 = math.max(slot13, ...MULTRES)
			154	[  0]	GGET 	 13		53	; slot13 = _env["math"]
			155	[  0]	TGETS	 13	13	52	; slot13 = math.max
			156	[  0]	KSHORT	 15		1	; slot15 = 1
			157	[  0]	GGET 	 16		53	; slot16 = _env["math"]
			158	[  0]	TGETS	 16	16	51	; slot16 = math.min
			159	[  0]	KSHORT	 18		3	; slot18 = 3
			160	[  0]	GGET 	 19		53	; slot19 = _env["math"]
			161	[  0]	TGETS	 19	19	46	; slot19 = math.floor
			162	[  0]	GGET 	 21		55	; slot21 = _env["tonumber"]
			163	[  0]	ISF  	   		11	; if not slot11
			164	[  0]	JMP  	 23		3	; 	goto 168
			165	[  0]	TGETS	 23	11	44	; slot23 = slot11.col
			166	[  0]	IST  	   		23	; if <unknown table>.col
			167	[  0]	JMP  	 24		1	; 	goto 169
			168	[  0]	KSHORT	 23		0	; slot23 = 0
			169	[  0]	CALL 	 21	2	2	; slot21 = tonumber(slot22)
			170	[  0]	IST  	   		21	; if tonumber
			171	[  0]	JMP  	 22		1	; 	goto 173
			172	[  0]	KSHORT	 21		0	; slot21 = 0
			173	[  0]	CALL 	 19	0	2	; MULTRES = math.floor(slot20)
			174	[  0]	CALLM	 16	0	1	; MULTRES = math.min(slot17, ...MULTRES)
			175	[  0]	CALLM	 13	2	1	; slot13 = math.max(slot14, ...MULTRES)
			176	[  0]	GGET 	 14		48	; slot14 = _env["table"]
			177	[  0]	TGETS	 14	14	43	; slot14 = table.insert
			178	[  0]	MOV  	 16		5	; slot16 = slot5
			179	[  0]	TDUP 	 17		42	; slot17 = copy table#k42
			180	[  0]	TSETS	 12	17	45	; slot17.row = math.max
			181	[  0]	TSETS	 13	17	44	; slot17.col = math.max
			182	[  0]	CALL 	 14	1	3	;  = table.insert(slot15, slot16)
			183	[  0]	ITERC	 10	3	3	; slot10, slot11, slot12 = ipairs, math.min, slot9; slot10, slot11 = ipairs(math.min, slot9)
			184	[  0]	ITERL	 10		-53	; slot9 = slot10; if slot10 != nil goto 132
			185	[  0]	LEN  	  7		5	; slot7 = #slot5
			186	[  0]	ISNEN	  7		1	; if slot7 ~= 0
			187	[  0]	JMP  	  7		57	; 	goto 245
			188	[  0]	TGETS	  7	0	56	; slot7 = slot0._coreSpinMods
			189	[  0]	ISF  	   		7	; if not <unknown table>._coreSpinMods
			190	[  0]	JMP  	  8		4	; 	goto 195
			191	[  0]	TGETS	  7	0	56	; slot7 = slot0._coreSpinMods
			192	[  0]	TGETS	  7	7	41	; slot7 = <unknown table>._coreSpinMods.forceJokerCell
			193	[  0]	IST  	   		7	; if <unknown table>._coreSpinMods.forceJokerCell
			194	[  0]	JMP  	  8		1	; 	goto 196
			195	[  0]	KPRI 	  7		0	; slot7 = nil
			196	[  0]	ISF  	   		7	; if not slot7
			197	[  0]	JMP  	  8		47	; 	goto 245
			198	[  0]	GGET 	  8		48	; slot8 = _env["table"]
			199	[  0]	TGETS	  8	8	43	; slot8 = table.insert
			200	[  0]	MOV  	 10		5	; slot10 = slot5
			201	[  0]	TDUP 	 11		40	; slot11 = copy table#k40
			202	[  0]	GGET 	 12		53	; slot12 = _env["math"]
			203	[  0]	TGETS	 12	12	52	; slot12 = math.max
			204	[  0]	KSHORT	 14		1	; slot14 = 1
			205	[  0]	GGET 	 15		53	; slot15 = _env["math"]
			206	[  0]	TGETS	 15	15	51	; slot15 = math.min
			207	[  0]	KSHORT	 17		3	; slot17 = 3
			208	[  0]	GGET 	 18		53	; slot18 = _env["math"]
			209	[  0]	TGETS	 18	18	46	; slot18 = math.floor
			210	[  0]	GGET 	 20		55	; slot20 = _env["tonumber"]
			211	[  0]	TGETS	 22	7	45	; slot22 = slot7.row
			212	[  0]	IST  	   		22	; if <unknown table>.row
			213	[  0]	JMP  	 23		1	; 	goto 215
			214	[  0]	KSHORT	 22		0	; slot22 = 0
			215	[  0]	CALL 	 20	2	2	; slot20 = tonumber(slot21)
			216	[  0]	IST  	   		20	; if tonumber
			217	[  0]	JMP  	 21		1	; 	goto 219
			218	[  0]	KSHORT	 20		0	; slot20 = 0
			219	[  0]	CALL 	 18	0	2	; MULTRES = math.floor(math.floor)
			220	[  0]	CALLM	 15	0	1	; MULTRES = math.min(slot16, ...MULTRES)
			221	[  0]	CALLM	 12	2	1	; slot12 = math.max(math.max, ...MULTRES)
			222	[  0]	TSETS	 12	11	45	; slot11.row = math.max
			223	[  0]	GGET 	 12		53	; slot12 = _env["math"]
			224	[  0]	TGETS	 12	12	52	; slot12 = math.max
			225	[  0]	KSHORT	 14		1	; slot14 = 1
			226	[  0]	GGET 	 15		53	; slot15 = _env["math"]
			227	[  0]	TGETS	 15	15	51	; slot15 = math.min
			228	[  0]	KSHORT	 17		3	; slot17 = 3
			229	[  0]	GGET 	 18		53	; slot18 = _env["math"]
			230	[  0]	TGETS	 18	18	46	; slot18 = math.floor
			231	[  0]	GGET 	 20		55	; slot20 = _env["tonumber"]
			232	[  0]	TGETS	 22	7	44	; slot22 = slot7.col
			233	[  0]	IST  	   		22	; if <unknown table>.col
			234	[  0]	JMP  	 23		1	; 	goto 236
			235	[  0]	KSHORT	 22		0	; slot22 = 0
			236	[  0]	CALL 	 20	2	2	; slot20 = tonumber(slot21)
			237	[  0]	IST  	   		20	; if tonumber
			238	[  0]	JMP  	 21		1	; 	goto 240
			239	[  0]	KSHORT	 20		0	; slot20 = 0
			240	[  0]	CALL 	 18	0	2	; MULTRES = math.floor(math.floor)
			241	[  0]	CALLM	 15	0	1	; MULTRES = math.min(slot16, ...MULTRES)
			242	[  0]	CALLM	 12	2	1	; slot12 = math.max(math.max, ...MULTRES)
			243	[  0]	TSETS	 12	11	44	; slot11.col = math.max
			244	[  0]	CALL 	  8	1	3	;  = table.insert(slot9, slot10)
			245	[  0]	TGETS	  7	0	56	; slot7 = slot0._coreSpinMods
			246	[  0]	ISF  	   		7	; if not <unknown table>._coreSpinMods
			247	[  0]	JMP  	  8		4	; 	goto 252
			248	[  0]	TGETS	  7	0	56	; slot7 = slot0._coreSpinMods
			249	[  0]	TGETS	  7	7	39	; slot7 = <unknown table>._coreSpinMods.forceCells
			250	[  0]	IST  	   		7	; if <unknown table>._coreSpinMods.forceCells
			251	[  0]	JMP  	  8		1	; 	goto 253
			252	[  0]	KPRI 	  7		0	; slot7 = nil
			253	[  0]	KPRI 	  8		0	; slot8 = nil
			254	[  0]	GGET 	  9		49	; slot9 = _env["type"]
			255	[  0]	MOV  	 11		7	; slot11 = slot7
			256	[  0]	CALL 	  9	2	2	; slot9 = type(slot10)
			257	[  0]	ISNES	  9		48	; if type ~= "table"
			258	[  0]	JMP  	  9		63	; 	goto 322
			259	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
			260	[  0]	GGET 	  9		47	; slot9 = _env["ipairs"]
			261	[  0]	MOV  	 11		7	; slot11 = slot7
			262	[  0]	CALL 	  9	4	2	; slot9, slot10, slot11 = ipairs(slot10)
			263	[  0]	JMP  	 12		56	; 	goto 320
			264	[  0]	GGET 	 14		53	; slot14 = _env["math"]
			265	[  0]	TGETS	 14	14	52	; slot14 = math.max
			266	[  0]	KSHORT	 16		1	; slot16 = 1
			267	[  0]	GGET 	 17		53	; slot17 = _env["math"]
			268	[  0]	TGETS	 17	17	51	; slot17 = math.min
			269	[  0]	KSHORT	 19		3	; slot19 = 3
			270	[  0]	GGET 	 20		53	; slot20 = _env["math"]
			271	[  0]	TGETS	 20	20	46	; slot20 = math.floor
			272	[  0]	GGET 	 22		55	; slot22 = _env["tonumber"]
			273	[  0]	ISF  	   		13	; if not math.max
			274	[  0]	JMP  	 24		3	; 	goto 278
			275	[  0]	TGETS	 24	13	45	; slot24 = math.max.row
			276	[  0]	IST  	   		24	; if math.max.row
			277	[  0]	JMP  	 25		1	; 	goto 279
			278	[  0]	KSHORT	 24		0	; slot24 = 0
			279	[  0]	CALL 	 22	2	2	; slot22 = tonumber(slot23)
			280	[  0]	IST  	   		22	; if tonumber
			281	[  0]	JMP  	 23		1	; 	goto 283
			282	[  0]	KSHORT	 22		0	; slot22 = 0
			283	[  0]	CALL 	 20	0	2	; MULTRES = math.floor(slot21)
			284	[  0]	CALLM	 17	0	1	; MULTRES = math.min(math.floor, ...MULTRES)
			285	[  0]	CALLM	 14	2	1	; slot14 = math.max(math.min, ...MULTRES)
			286	[  0]	GGET 	 15		53	; slot15 = _env["math"]
			287	[  0]	TGETS	 15	15	52	; slot15 = math.max
			288	[  0]	KSHORT	 17		1	; slot17 = 1
			289	[  0]	GGET 	 18		53	; slot18 = _env["math"]
			290	[  0]	TGETS	 18	18	51	; slot18 = math.min
			291	[  0]	KSHORT	 20		3	; slot20 = 3
			292	[  0]	GGET 	 21		53	; slot21 = _env["math"]
			293	[  0]	TGETS	 21	21	46	; slot21 = math.floor
			294	[  0]	GGET 	 23		55	; slot23 = _env["tonumber"]
			295	[  0]	ISF  	   		13	; if not math.max
			296	[  0]	JMP  	 25		3	; 	goto 300
			297	[  0]	TGETS	 25	13	44	; slot25 = math.max.col
			298	[  0]	IST  	   		25	; if math.max.col
			299	[  0]	JMP  	 26		1	; 	goto 301
			300	[  0]	KSHORT	 25		0	; slot25 = 0
			301	[  0]	CALL 	 23	2	2	; slot23 = tonumber(slot24)
			302	[  0]	IST  	   		23	; if tonumber
			303	[  0]	JMP  	 24		1	; 	goto 305
			304	[  0]	KSHORT	 23		0	; slot23 = 0
			305	[  0]	CALL 	 21	0	2	; MULTRES = math.floor(slot22)
			306	[  0]	CALLM	 18	0	1	; MULTRES = math.min(slot19, ...MULTRES)
			307	[  0]	CALLM	 15	2	1	; slot15 = math.max(slot16, ...MULTRES)
			308	[  0]	ISFC 	 16		13	; slot16 = math.max; if not math.max
			309	[  0]	JMP  	 16		1	; 	goto 311
			310	[  0]	TGETS	 16	13	38	; slot16 = math.max.symbol
			311	[  0]	ISF  	   		16	; if not math.max.symbol
			312	[  0]	JMP  	 17		7	; 	goto 320
			313	[  0]	TGETV	 17	8	15	; slot17 = slot8[math.max]
			314	[  0]	IST  	   		17	; if slot17
			315	[  0]	JMP  	 18		1	; 	goto 317
			316	[  0]	TNEW 	 17		0	; slot17 = new table( array: 0, dict: 1)
			317	[  0]	TSETV	 17	8	15	; slot8[math.max] = slot17
			318	[  0]	TGETV	 17	8	15	; slot17 = slot8[math.max]
			319	[  0]	TSETV	 16	17	14	; slot17[math.max] = math.max.symbol
			320	[  0]	ITERC	 12	3	3	; slot12, slot13, slot14 = ipairs, slot10, slot11; slot12, slot13 = ipairs(slot10, slot11)
			321	[  0]	ITERL	 12		-58	; slot11 = math.max; if math.max != nil goto 264
			322	[  0]	TGETS	  9	0	56	; slot9 = slot0._coreSpinMods
			323	[  0]	ISF  	   		9	; if not <unknown table>._coreSpinMods
			324	[  0]	JMP  	 10		4	; 	goto 329
			325	[  0]	TGETS	  9	0	56	; slot9 = slot0._coreSpinMods
			326	[  0]	TGETS	  9	9	37	; slot9 = <unknown table>._coreSpinMods.lockedReels
			327	[  0]	IST  	   		9	; if <unknown table>._coreSpinMods.lockedReels
			328	[  0]	JMP  	 10		1	; 	goto 330
			329	[  0]	KPRI 	  9		0	; slot9 = nil
			330	[  0]	TGETS	 10	0	56	; slot10 = slot0._coreSpinMods
			331	[  0]	ISF  	   		10	; if not <unknown table>._coreSpinMods
			332	[  0]	JMP  	 11		4	; 	goto 337
			333	[  0]	TGETS	 10	0	56	; slot10 = slot0._coreSpinMods
			334	[  0]	TGETS	 10	10	36	; slot10 = <unknown table>._coreSpinMods.bannedSymbol
			335	[  0]	IST  	   		10	; if <unknown table>._coreSpinMods.bannedSymbol
			336	[  0]	JMP  	 11		1	; 	goto 338
			337	[  0]	KPRI 	 10		0	; slot10 = nil
			338	[  0]	TGETS	 11	0	71	; slot11 = slot0.ui
			339	[  0]	TGETS	 11	11	35	; slot11 = <unknown table>.ui.slot
			340	[  0]	TGETS	 11	11	34	; slot11 = <unknown table>.ui.slot.cols
			341	[  0]	TNEW 	 12		0	; slot12 = new table( array: 0, dict: 1)
			342	[  0]	TNEW 	 13		0	; slot13 = new table( array: 0, dict: 1)
			343	[  0]	GGET 	 14		47	; slot14 = _env["ipairs"]
			344	[  0]	MOV  	 16		5	; slot16 = slot5
			345	[  0]	CALL 	 14	4	2	; slot14, slot15, slot16 = ipairs(math.max)
			346	[  0]	JMP  	 17		88	; 	goto 435
			347	[  0]	GGET 	 19		33	; slot19 = _env["tostring"]
			348	[  0]	TGETS	 21	18	45	; slot21 = math.min.row
			349	[  0]	CALL 	 19	2	2	; slot19 = tostring(slot20)
			350	[  0]	KSTR 	 20		32	; slot20 = ":"
			351	[  0]	GGET 	 21		33	; slot21 = _env["tostring"]
			352	[  0]	TGETS	 23	18	44	; slot23 = math.min.col
			353	[  0]	CALL 	 21	2	2	; slot21 = tostring(slot22)
			354	[  0]	CAT  	 19	19	21	; slot19 = tostring .. slot20 .. tostring
			355	[  0]	ISF  	   		9	; if not slot9
			356	[  0]	JMP  	 20		4	; 	goto 361
			357	[  0]	TGETS	 20	18	44	; slot20 = math.min.col
			358	[  0]	TGETV	 20	9	20	; slot20 = slot9[math.min.col]
			359	[  0]	IST  	   		20	; if slot20
			360	[  0]	JMP  	 21		3	; 	goto 364
			361	[  0]	TGETV	 20	13	19	; slot20 = slot13[slot19]
			362	[  0]	ISF  	   		20	; if not slot20
			363	[  0]	JMP  	 21		60	; 	goto 424
			364	[  0]	TNEW 	 20		0	; slot20 = new table( array: 0, dict: 1)
			365	[  0]	KSHORT	 21		1	; slot21 = 1
			366	[  0]	KSHORT	 22		3	; slot22 = 3
			367	[  0]	KSHORT	 23		1	; slot23 = 1
			368	[  0]	FORI 	 21		29	; for slot24 = slot21,slot22,slot23 else goto 398
			369	[  0]	KSHORT	 25		1	; slot25 = 1
			370	[  0]	MOV  	 26		11	; slot26 = <unknown table>.ui.slot.cols
			371	[  0]	KSHORT	 27		1	; slot27 = 1
			372	[  0]	FORI 	 25		24	; for slot28 = slot25,slot26,slot27 else goto 397
			373	[  0]	GGET 	 29		33	; slot29 = _env["tostring"]
			374	[  0]	MOV  	 31		24	; slot31 = slot24
			375	[  0]	CALL 	 29	2	2	; slot29 = tostring(slot30)
			376	[  0]	KSTR 	 30		32	; slot30 = ":"
			377	[  0]	GGET 	 31		33	; slot31 = _env["tostring"]
			378	[  0]	MOV  	 33		28	; slot33 = slot28
			379	[  0]	CALL 	 31	2	2	; slot31 = tostring(slot32)
			380	[  0]	CAT  	 29	29	31	; slot29 = tostring .. slot30 .. tostring
			381	[  0]	ISF  	   		9	; if not slot9
			382	[  0]	JMP  	 30		3	; 	goto 386
			383	[  0]	TGETV	 30	9	28	; slot30 = slot9[slot28]
			384	[  0]	IST  	   		30	; if slot30
			385	[  0]	JMP  	 30		10	; 	goto 396
			386	[  0]	TGETV	 30	13	29	; slot30 = slot13[slot29]
			387	[  0]	IST  	   		30	; if slot30
			388	[  0]	JMP  	 30		7	; 	goto 396
			389	[  0]	GGET 	 30		48	; slot30 = _env["table"]
			390	[  0]	TGETS	 30	30	43	; slot30 = table.insert
			391	[  0]	MOV  	 32		20	; slot32 = slot20
			392	[  0]	TDUP 	 33		31	; slot33 = copy table#k31
			393	[  0]	TSETS	 24	33	45	; slot33.row = slot24
			394	[  0]	TSETS	 28	33	44	; slot33.col = slot28
			395	[  0]	CALL 	 30	1	3	;  = table.insert(tostring, slot32)
			396	[  0]	FORL 	 25		-24	; slot28 = slot28 + slot27; if cmp(slot28, sign slot27,  <unknown table>.ui.slot.cols) goto 373
			397	[  0]	FORL 	 21		-29	; slot24 = slot24 + slot23; if cmp(slot24, sign slot23,  slot22) goto 369
			398	[  0]	TGETB	 21	20	1	; slot21 = slot20[1]
			399	[  0]	ISF  	   		21	; if not slot21
			400	[  0]	JMP  	 22		9	; 	goto 410
			401	[  0]	GGET 	 21		30	; slot21 = _env["love"]
			402	[  0]	TGETS	 21	21	53	; slot21 = love.math
			403	[  0]	TGETS	 21	21	29	; slot21 = love.math.random
			404	[  0]	KSHORT	 23		1	; slot23 = 1
			405	[  0]	LEN  	 24		20	; slot24 = #slot20
			406	[  0]	CALL 	 21	2	3	; slot21 = love.math.random(slot22, slot23)
			407	[  0]	TGETV	 21	20	21	; slot21 = slot20[love.math.random]
			408	[  0]	ISTC 	 18		21	; slot18 = slot21; if slot21
			409	[  0]	JMP  	 22		1	; 	goto 411
			410	[  0]	KPRI 	 18		0	; slot18 = nil
			411	[  0]	ISF  	   		18	; if not slot18
			412	[  0]	JMP  	 21		10	; 	goto 423
			413	[  0]	GGET 	 21		33	; slot21 = _env["tostring"]
			414	[  0]	TGETS	 23	18	45	; slot23 = slot18.row
			415	[  0]	CALL 	 21	2	2	; slot21 = tostring(slot22)
			416	[  0]	KSTR 	 22		32	; slot22 = ":"
			417	[  0]	GGET 	 23		33	; slot23 = _env["tostring"]
			418	[  0]	TGETS	 25	18	44	; slot25 = slot18.col
			419	[  0]	CALL 	 23	2	2	; slot23 = tostring(slot24)
			420	[  0]	CAT  	 21	21	23	; slot21 = tostring .. slot22 .. tostring
			421	[  0]	ISTC 	 19		21	; slot19 = slot21; if slot21
			422	[  0]	JMP  	 22		1	; 	goto 424
			423	[  0]	KPRI 	 19		0	; slot19 = nil
			424	[  0]	ISF  	   		18	; if not slot18
			425	[  0]	JMP  	 20		9	; 	goto 435
			426	[  0]	ISF  	   		19	; if not slot19
			427	[  0]	JMP  	 20		7	; 	goto 435
			428	[  0]	KPRI 	 20		2	; slot20 = true
			429	[  0]	TSETV	 20	13	19	; slot13[slot19] = slot20
			430	[  0]	GGET 	 20		48	; slot20 = _env["table"]
			431	[  0]	TGETS	 20	20	43	; slot20 = table.insert
			432	[  0]	MOV  	 22		12	; slot22 = slot12
			433	[  0]	MOV  	 23		18	; slot23 = slot18
			434	[  0]	CALL 	 20	1	3	;  = table.insert(slot21, slot22)
			435	[  0]	ITERC	 17	3	3	; slot17, slot18, slot19 = ipairs, math.max, slot16; slot17, slot18 = ipairs(math.max, slot16)
			436	[  0]	ITERL	 17		-90	; slot16 = slot17; if slot17 != nil goto 347
			437	[  0]	MOV  	  5		12	; slot5 = slot12
			438	[  0]	TGETS	 14	0	56	; slot14 = slot0._coreSpinMods
			439	[  0]	ISF  	   		14	; if not <unknown table>._coreSpinMods
			440	[  0]	JMP  	 15		5	; 	goto 446
			441	[  0]	TGETS	 14	0	56	; slot14 = slot0._coreSpinMods
			442	[  0]	TSETS	  5	14	50	; <unknown table>._coreSpinMods.forceJokerCells = slot5
			443	[  0]	TGETS	 14	0	56	; slot14 = slot0._coreSpinMods
			444	[  0]	TGETB	 15	5	1	; slot15 = slot5[1]
			445	[  0]	TSETS	 15	14	41	; <unknown table>._coreSpinMods.forceJokerCell = slot15
			446	[  0]	TSETS	  3	0	28	; slot0.pendingGrid = <unknown table>.buildResultGrid
			447	[  0]	TNEW 	 14		0	; slot14 = new table( array: 0, dict: 1)
			448	[  0]	TSETS	 14	0	27	; slot0.reels = slot14
			449	[  0]	TGETS	 14	0	26	; slot14 = slot0.reelStrips
			450	[  0]	IST  	   		14	; if <unknown table>.reelStrips
			451	[  0]	JMP  	 15		1	; 	goto 453
			452	[  0]	TNEW 	 14		0	; slot14 = new table( array: 0, dict: 1)
			453	[  0]	TSETS	 14	0	26	; slot0.reelStrips = slot14
			454	[  0]	TGETS	 14	0	25	; slot14 = slot0.reelStripPos
			455	[  0]	IST  	   		14	; if <unknown table>.reelStripPos
			456	[  0]	JMP  	 15		1	; 	goto 458
			457	[  0]	TNEW 	 14		0	; slot14 = new table( array: 0, dict: 1)
			458	[  0]	TSETS	 14	0	25	; slot0.reelStripPos = slot14
			459	[  0]	TGETS	 14	0	24	; slot14 = slot0.reelStripLen
			460	[  0]	IST  	   		14	; if <unknown table>.reelStripLen
			461	[  0]	JMP  	 15		1	; 	goto 463
			462	[  0]	KSHORT	 14		64	; slot14 = 64
			463	[  0]	TSETS	 14	0	24	; slot0.reelStripLen = slot14
			464	[  0]	KSHORT	 14		1	; slot14 = 1
			465	[  0]	MOV  	 15		11	; slot15 = <unknown table>.ui.slot.cols
			466	[  0]	KSHORT	 16		1	; slot16 = 1
			467	[  0]	FORI 	 14		232	; for slot17 = slot14,slot15,slot16 else goto 700
			468	[  0]	TGETS	 18	0	26	; slot18 = slot0.reelStrips
			469	[  0]	TGETV	 18	18	17	; slot18 = <unknown table>.reelStrips[slot17]
			470	[  0]	IST  	   		18	; if slot18
			471	[  0]	JMP  	 19		15	; 	goto 487
			472	[  0]	TNEW 	 18		0	; slot18 = new table( array: 0, dict: 1)
			473	[  0]	KSHORT	 19		1	; slot19 = 1
			474	[  0]	TGETS	 20	0	24	; slot20 = slot0.reelStripLen
			475	[  0]	KSHORT	 21		1	; slot21 = 1
			476	[  0]	FORI 	 19		5	; for slot22 = slot19,slot20,slot21 else goto 482
			477	[  0]	UGET 	 23		0	; slot23 = uv0"unknwon"
			478	[  0]	MOV  	 25		4	; slot25 = math.max
			479	[  0]	CALL 	 23	2	2	; slot23 = uv0"unknown"(slot24)
			480	[  0]	TSETV	 23	18	22	; slot18[slot22] = uv0"unknown"
			481	[  0]	FORL 	 19		-5	; slot22 = slot22 + slot21; if cmp(slot22, sign slot21,  <unknown table>.reelStripLen) goto 477
			482	[  0]	TGETS	 19	0	26	; slot19 = slot0.reelStrips
			483	[  0]	TSETV	 18	19	17	; <unknown table>.reelStrips[slot17] = slot18
			484	[  0]	TGETS	 19	0	25	; slot19 = slot0.reelStripPos
			485	[  0]	KSHORT	 20		1	; slot20 = 1
			486	[  0]	TSETV	 20	19	17	; <unknown table>.reelStripPos[slot17] = slot20
			487	[  0]	LEN  	 19		18	; slot19 = #slot18
			488	[  0]	KSHORT	 20		0	; slot20 = 0
			489	[  0]	ISGT 	 19		20	; if slot19 > slot20
			490	[  0]	JMP  	 20		12	; 	goto 503
			491	[  0]	TGETS	 19	0	24	; slot19 = slot0.reelStripLen
			492	[  0]	KSHORT	 20		1	; slot20 = 1
			493	[  0]	MOV  	 21		19	; slot21 = <unknown table>.reelStripLen
			494	[  0]	KSHORT	 22		1	; slot22 = 1
			495	[  0]	FORI 	 20		5	; for uv0"unknown" = slot20,slot21,slot22 else goto 501
			496	[  0]	UGET 	 24		0	; slot24 = uv0"unknwon"
			497	[  0]	MOV  	 26		4	; slot26 = math.max
			498	[  0]	CALL 	 24	2	2	; slot24 = uv0"unknown"(math.max)
			499	[  0]	TSETV	 24	18	23	; slot18[uv0"unknown"] = uv0"unknown"
			500	[  0]	FORL 	 20		-5	; uv0"unknown" = uv0"unknown" + slot22; if cmp(uv0"unknown", sign slot22,  <unknown table>.reelStripLen) goto 496
			501	[  0]	TGETS	 20	0	26	; slot20 = slot0.reelStrips
			502	[  0]	TSETV	 18	20	17	; <unknown table>.reelStrips[slot17] = slot18
			503	[  0]	FNEW 	 20		23	; N/A:0-0: 1 args, 1 upvalues, 3 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	SUBVN	  1	0	0	; slot1 = slot0 - 1
				  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
				  3	[  0]	MODVV	  1	1	2	; slot1 = slot1 % uv0"unknown"
				  4	[  0]	ADDVN	  1	1	0	; slot1 = slot1 + 1
				  5	[  0]	RET1 	  1		2	; return slot1
			504	[  0]	KPRI 	 21		0	; slot21 = nil
			505	[  0]	ISF  	   		10	; if not slot10
			506	[  0]	JMP  	 22		19	; 	goto 526
			507	[  0]	ISF  	   		2	; if not <unknown table>.grid
			508	[  0]	JMP  	 22		17	; 	goto 526
			509	[  0]	KSHORT	 22		1	; slot22 = 1
			510	[  0]	KSHORT	 23		3	; slot23 = 3
			511	[  0]	KSHORT	 24		1	; slot24 = 1
			512	[  0]	FORI 	 22		13	; for math.max = slot22,slot23,slot24 else goto 526
			513	[  0]	TGETV	 26	2	25	; slot26 = <unknown table>.grid[math.max]
			514	[  0]	ISF  	   		26	; if not slot26
			515	[  0]	JMP  	 27		9	; 	goto 525
			516	[  0]	TGETV	 26	2	25	; slot26 = <unknown table>.grid[math.max]
			517	[  0]	TGETV	 26	26	17	; slot26 = slot26[slot17]
			518	[  0]	ISNEV	 26		10	; if slot26 ~= slot10
			519	[  0]	JMP  	 26		5	; 	goto 525
			520	[  0]	IST  	   		21	; if slot21
			521	[  0]	JMP  	 26		1	; 	goto 523
			522	[  0]	TNEW 	 21		0	; slot21 = new table( array: 0, dict: 1)
			523	[  0]	KPRI 	 26		2	; slot26 = true
			524	[  0]	TSETV	 26	21	25	; slot21[math.max] = slot26
			525	[  0]	FORL 	 22		-13	; math.max = math.max + slot24; if cmp(math.max, sign slot24,  slot23) goto 513
			526	[  0]	TGETS	 22	0	25	; slot22 = slot0.reelStripPos
			527	[  0]	TGETV	 22	22	17	; slot22 = <unknown table>.reelStripPos[slot17]
			528	[  0]	IST  	   		22	; if slot22
			529	[  0]	JMP  	 23		1	; 	goto 531
			530	[  0]	KSHORT	 22		1	; slot22 = 1
			531	[  0]	ISF  	   		2	; if not <unknown table>.grid
			532	[  0]	JMP  	 23		17	; 	goto 550
			533	[  0]	KSHORT	 23		1	; slot23 = 1
			534	[  0]	KSHORT	 24		3	; slot24 = 3
			535	[  0]	KSHORT	 25		1	; slot25 = 1
			536	[  0]	FORI 	 23		13	; for slot26 = slot23,slot24,slot25 else goto 550
			537	[  0]	MOV  	 27		20	; slot27 = slot20
			538	[  0]	SUBVN	 29	26	2	; slot29 = slot26 - 1
			539	[  0]	ADDVV	 29	22	29	; slot29 = slot22 + slot29
			540	[  0]	CALL 	 27	2	2	; slot27 = slot27(slot28)
			541	[  0]	TGETV	 28	2	26	; slot28 = <unknown table>.grid[slot26]
			542	[  0]	ISF  	   		28	; if not slot28
			543	[  0]	JMP  	 29		2	; 	goto 546
			544	[  0]	TGETV	 28	2	26	; slot28 = <unknown table>.grid[slot26]
			545	[  0]	TGETV	 28	28	17	; slot28 = slot28[slot17]
			546	[  0]	ISF  	   		28	; if not slot28
			547	[  0]	JMP  	 29		1	; 	goto 549
			548	[  0]	TSETV	 28	18	27	; slot18[slot27] = slot28
			549	[  0]	FORL 	 23		-13	; slot26 = slot26 + slot25; if cmp(slot26, sign slot25,  slot24) goto 537
			550	[  0]	ISF  	   		9	; if not slot9
			551	[  0]	JMP  	 23		62	; 	goto 614
			552	[  0]	TGETV	 23	9	17	; slot23 = slot9[slot17]
			553	[  0]	ISF  	   		23	; if not slot23
			554	[  0]	JMP  	 24		59	; 	goto 614
			555	[  0]	ISF  	   		2	; if not <unknown table>.grid
			556	[  0]	JMP  	 23		57	; 	goto 614
			557	[  0]	TNEW 	 23		4	; slot23 = new table( array: 4, dict: 1)
			558	[  0]	TGETB	 24	2	1	; slot24 = <unknown table>.grid[1]
			559	[  0]	ISF  	   		24	; if not slot24
			560	[  0]	JMP  	 25		4	; 	goto 565
			561	[  0]	TGETB	 24	2	1	; slot24 = <unknown table>.grid[1]
			562	[  0]	TGETV	 24	24	17	; slot24 = slot24[slot17]
			563	[  0]	IST  	   		24	; if slot24
			564	[  0]	JMP  	 25		2	; 	goto 567
			565	[  0]	TGETB	 24	3	1	; slot24 = <unknown table>.buildResultGrid[1]
			566	[  0]	TGETV	 24	24	17	; slot24 = slot24[slot17]
			567	[  0]	TSETB	 24	23	1	; slot23[1] = slot24
			568	[  0]	TGETB	 24	2	2	; slot24 = <unknown table>.grid[2]
			569	[  0]	ISF  	   		24	; if not slot24
			570	[  0]	JMP  	 25		4	; 	goto 575
			571	[  0]	TGETB	 24	2	2	; slot24 = <unknown table>.grid[2]
			572	[  0]	TGETV	 24	24	17	; slot24 = slot24[slot17]
			573	[  0]	IST  	   		24	; if slot24
			574	[  0]	JMP  	 25		2	; 	goto 577
			575	[  0]	TGETB	 24	3	2	; slot24 = <unknown table>.buildResultGrid[2]
			576	[  0]	TGETV	 24	24	17	; slot24 = slot24[slot17]
			577	[  0]	TSETB	 24	23	2	; slot23[2] = slot24
			578	[  0]	TGETB	 24	2	3	; slot24 = <unknown table>.grid[3]
			579	[  0]	ISF  	   		24	; if not slot24
			580	[  0]	JMP  	 25		4	; 	goto 585
			581	[  0]	TGETB	 24	2	3	; slot24 = <unknown table>.grid[3]
			582	[  0]	TGETV	 24	24	17	; slot24 = slot24[slot17]
			583	[  0]	IST  	   		24	; if slot24
			584	[  0]	JMP  	 25		2	; 	goto 587
			585	[  0]	TGETB	 24	3	3	; slot24 = <unknown table>.buildResultGrid[3]
			586	[  0]	TGETV	 24	24	17	; slot24 = slot24[slot17]
			587	[  0]	TSETB	 24	23	3	; slot23[3] = slot24
			588	[  0]	KSHORT	 24		1	; slot24 = 1
			589	[  0]	KSHORT	 25		3	; slot25 = 3
			590	[  0]	KSHORT	 26		1	; slot26 = 1
			591	[  0]	FORI 	 24		10	; for slot27 = slot24,slot25,slot26 else goto 602
			592	[  0]	TGETV	 28	3	27	; slot28 = <unknown table>.buildResultGrid[slot27]
			593	[  0]	TGETV	 29	23	27	; slot29 = slot23[slot27]
			594	[  0]	TSETV	 29	28	17	; slot28[slot17] = slot29
			595	[  0]	MOV  	 28		20	; slot28 = slot20
			596	[  0]	SUBVN	 30	27	2	; slot30 = slot27 - 1
			597	[  0]	ADDVV	 30	22	30	; slot30 = slot22 + slot30
			598	[  0]	CALL 	 28	2	2	; slot28 = slot28(slot29)
			599	[  0]	TGETV	 29	23	27	; slot29 = slot23[slot27]
			600	[  0]	TSETV	 29	18	28	; slot18[slot28] = slot29
			601	[  0]	FORL 	 24		-10	; slot27 = slot27 + slot26; if cmp(slot27, sign slot26,  slot25) goto 592
			602	[  0]	TGETS	 24	0	27	; slot24 = slot0.reels
			603	[  0]	TDUP 	 25		22	; slot25 = copy table#k22
			604	[  0]	TSETS	 18	25	21	; slot25.strip = slot18
			605	[  0]	TSETS	 19	25	20	; slot25.stripLen = <unknown table>.reelStripLen
			606	[  0]	TSETS	 22	25	19	; slot25.stripStart = slot22
			607	[  0]	TSETS	 22	25	18	; slot25.stopIndex = slot22
			608	[  0]	TSETS	 23	25	17	; slot25.finalSymbols = slot23
			609	[  0]	TSETS	 23	25	16	; slot25.targetFinalSymbols = slot23
			610	[  0]	TDUP 	 26		15	; slot26 = copy table#k15
			611	[  0]	TSETS	 26	25	14	; slot25.hit = slot26
			612	[  0]	TSETV	 25	24	17	; <unknown table>.reels[slot17] = slot25
			613	[  0]	JMP  	 23		84	; 	goto 698
			614	[  0]	ISF  	   		8	; if not slot8
			615	[  0]	JMP  	 23		11	; 	goto 627
			616	[  0]	TGETV	 23	8	17	; slot23 = slot8[slot17]
			617	[  0]	ISF  	   		23	; if not slot23
			618	[  0]	JMP  	 24		8	; 	goto 627
			619	[  0]	GGET 	 23		13	; slot23 = _env["pairs"]
			620	[  0]	TGETV	 25	8	17	; slot25 = slot8[slot17]
			621	[  0]	CALL 	 23	4	2	; slot23, slot24, slot25 = pairs(<unknown table>.reels)
			622	[  0]	ISNEXT	 26		2	; Verify ITERN at 625; goto 625
			623	[  0]	TGETV	 28	3	26	; slot28 = <unknown table>.buildResultGrid[slot26]
			624	[  0]	TSETV	 27	28	17	; slot28[slot17] = slot27
			625	[  0]	ITERN	 26	3	3	; slot26, slot27, slot28 = pairs, <unknown table>.reels, slot25; slot26, slot27 = pairs(<unknown table>.reels, slot25)
			626	[  0]	ITERL	 26		-4	; slot25 = slot26; if slot26 != nil goto 623
			627	[  0]	GGET 	 23		47	; slot23 = _env["ipairs"]
			628	[  0]	MOV  	 25		5	; slot25 = slot5
			629	[  0]	CALL 	 23	4	2	; slot23, slot24, slot25 = ipairs(<unknown table>.reels)
			630	[  0]	JMP  	 26		7	; 	goto 638
			631	[  0]	TGETS	 28	27	44	; slot28 = slot27.col
			632	[  0]	ISNEV	 28		17	; if <unknown table>.col ~= slot17
			633	[  0]	JMP  	 28		4	; 	goto 638
			634	[  0]	TGETS	 28	27	45	; slot28 = slot27.row
			635	[  0]	TGETV	 28	3	28	; slot28 = <unknown table>.buildResultGrid[<unknown table>.row]
			636	[  0]	UGET 	 29		1	; slot29 = uv1"unknwon"
			637	[  0]	TSETV	 29	28	17	; slot28[slot17] = uv1"unknown"
			638	[  0]	ITERC	 26	3	3	; slot26, slot27, slot28 = ipairs, <unknown table>.reels, slot25; slot26, slot27 = ipairs(<unknown table>.reels, slot25)
			639	[  0]	ITERL	 26		-9	; slot25 = slot26; if slot26 != nil goto 631
			640	[  0]	KSHORT	 23		32	; slot23 = 32
			641	[  0]	KSHORT	 24		64	; slot24 = 64
			642	[  0]	GGET 	 25		30	; slot25 = _env["love"]
			643	[  0]	TGETS	 25	25	53	; slot25 = love.math
			644	[  0]	TGETS	 25	25	29	; slot25 = love.math.random
			645	[  0]	MOV  	 27		23	; slot27 = slot23
			646	[  0]	MOV  	 28		24	; slot28 = slot24
			647	[  0]	CALL 	 25	2	3	; slot25 = love.math.random(slot26, slot27)
			648	[  0]	TNEW 	 26		0	; slot26 = new table( array: 0, dict: 1)
			649	[  0]	KSHORT	 27		1	; slot27 = 1
			650	[  0]	MOV  	 28		25	; slot28 = love.math.random
			651	[  0]	KSHORT	 29		1	; slot29 = 1
			652	[  0]	FORI 	 27		7	; for slot30 = slot27,slot28,slot29 else goto 660
			653	[  0]	MOV  	 31		20	; slot31 = slot20
			654	[  0]	SUBVN	 33	30	2	; slot33 = slot30 - 1
			655	[  0]	ADDVV	 33	22	33	; slot33 = slot22 + slot33
			656	[  0]	CALL 	 31	2	2	; slot31 = slot31(slot32)
			657	[  0]	TGETV	 31	18	31	; slot31 = slot18[slot31]
			658	[  0]	TSETV	 31	26	30	; slot26[slot30] = slot31
			659	[  0]	FORL 	 27		-7	; slot30 = slot30 + slot29; if cmp(slot30, sign slot29,  love.math.random) goto 653
			660	[  0]	MOV  	 27		20	; slot27 = slot20
			661	[  0]	SUBVN	 29	22	2	; slot29 = slot22 - 1
			662	[  0]	CALL 	 27	2	2	; slot27 = slot27(love.math.random)
			663	[  0]	TGETV	 27	18	27	; slot27 = slot18[slot27]
			664	[  0]	TSETB	 27	26	0	; slot26[0] = slot27
			665	[  0]	TGETS	 27	0	27	; slot27 = slot0.reels
			666	[  0]	TDUP 	 28		12	; slot28 = copy table#k12
			667	[  0]	TSETS	 18	28	21	; slot28.strip = slot18
			668	[  0]	TSETS	 19	28	20	; slot28.stripLen = <unknown table>.reelStripLen
			669	[  0]	TSETS	 22	28	19	; slot28.stripStart = slot22
			670	[  0]	TSETS	 26	28	11	; slot28.sequence = slot26
			671	[  0]	TSETS	 25	28	10	; slot28.sequenceLen = love.math.random
			672	[  0]	TGETS	 29	0	9	; slot29 = slot0.stopTimes
			673	[  0]	ISF  	   		29	; if not <unknown table>.stopTimes
			674	[  0]	JMP  	 30		4	; 	goto 679
			675	[  0]	TGETS	 29	0	9	; slot29 = slot0.stopTimes
			676	[  0]	TGETV	 29	29	17	; slot29 = <unknown table>.stopTimes[slot17]
			677	[  0]	IST  	   		29	; if slot29
			678	[  0]	JMP  	 30		3	; 	goto 682
			679	[  0]	SUBVN	 29	17	2	; slot29 = slot17 - 1
			680	[  0]	MULNV	 29	29	3	; slot29 = 0.3 * slot29
			681	[  0]	ADDNV	 29	29	4	; slot29 = 0.6 + slot29
			682	[  0]	TSETS	 29	28	8	; slot28.stopAt = slot29
			683	[  0]	TNEW 	 29		4	; slot29 = new table( array: 4, dict: 1)
			684	[  0]	TGETB	 30	3	1	; slot30 = <unknown table>.buildResultGrid[1]
			685	[  0]	TGETV	 30	30	17	; slot30 = slot30[slot17]
			686	[  0]	TSETB	 30	29	1	; slot29[1] = slot30
			687	[  0]	TGETB	 30	3	2	; slot30 = <unknown table>.buildResultGrid[2]
			688	[  0]	TGETV	 30	30	17	; slot30 = slot30[slot17]
			689	[  0]	TSETB	 30	29	2	; slot29[2] = slot30
			690	[  0]	TGETB	 30	3	3	; slot30 = <unknown table>.buildResultGrid[3]
			691	[  0]	TGETV	 30	30	17	; slot30 = slot30[slot17]
			692	[  0]	TSETB	 30	29	3	; slot29[3] = slot30
			693	[  0]	TSETS	 29	28	16	; slot28.targetFinalSymbols = slot29
			694	[  0]	TSETS	 21	28	7	; slot28.banStampMarkedSequence = slot21
			695	[  0]	TDUP 	 29		6	; slot29 = copy table#k6
			696	[  0]	TSETS	 29	28	14	; slot28.hit = slot29
			697	[  0]	TSETV	 28	27	17	; <unknown table>.reels[slot17] = slot28
			698	[  0]	UCLO 	 18		0	; nil uvs >= r18; goto 699
			699	[  0]	FORL 	 14		-232	; slot17 = slot17 + slot16; if cmp(slot17, sign slot16,  slot15) goto 468
			700	[  0]	ISF  	   		10	; if not slot10
			701	[  0]	JMP  	 14		23	; 	goto 725
			702	[  0]	KSHORT	 14		1	; slot14 = 1
			703	[  0]	TGETS	 15	0	71	; slot15 = slot0.ui
			704	[  0]	TGETS	 15	15	35	; slot15 = <unknown table>.ui.slot
			705	[  0]	TGETS	 15	15	5	; slot15 = <unknown table>.ui.slot.rows
			706	[  0]	KSHORT	 16		1	; slot16 = 1
			707	[  0]	FORI 	 14		17	; for slot17 = slot14,slot15,slot16 else goto 725
			708	[  0]	KSHORT	 18		1	; slot18 = 1
			709	[  0]	MOV  	 19		11	; slot19 = <unknown table>.ui.slot.cols
			710	[  0]	KSHORT	 20		1	; slot20 = 1
			711	[  0]	FORI 	 18		12	; for slot21 = slot18,slot19,slot20 else goto 724
			712	[  0]	TGETV	 22	3	17	; slot22 = <unknown table>.buildResultGrid[slot17]
			713	[  0]	ISF  	   		22	; if not slot22
			714	[  0]	JMP  	 23		8	; 	goto 723
			715	[  0]	TGETV	 22	3	17	; slot22 = <unknown table>.buildResultGrid[slot17]
			716	[  0]	TGETV	 22	22	21	; slot22 = slot22[slot21]
			717	[  0]	ISNEV	 22		10	; if slot22 ~= slot10
			718	[  0]	JMP  	 22		4	; 	goto 723
			719	[  0]	TGETV	 22	3	17	; slot22 = <unknown table>.buildResultGrid[slot17]
			720	[  0]	UGET 	 23		2	; slot23 = uv2"unknwon"
			721	[  0]	CALL 	 23	2	1	; slot23 = uv2"unknown"()
			722	[  0]	TSETV	 23	22	21	; slot22[slot21] = uv2"unknown"
			723	[  0]	FORL 	 18		-12	; slot21 = slot21 + slot20; if cmp(slot21, sign slot20,  <unknown table>.ui.slot.cols) goto 712
			724	[  0]	FORL 	 14		-17	; slot17 = slot17 + slot16; if cmp(slot17, sign slot16,  slot15) goto 708
			725	[  0]	KPRI 	 14		0	; slot14 = nil
			726	[  0]	TSETS	 14	0	4	; slot0._preRevealOutcomeMeta = slot14
			727	[  0]	GGET 	 14		49	; slot14 = _env["type"]
			728	[  0]	TGETS	 16	0	3	; slot16 = slot0.onPreRevealOutcome
			729	[  0]	CALL 	 14	2	2	; slot14 = type(slot15)
			730	[  0]	ISNES	 14		2	; if type ~= "function"
			731	[  0]	JMP  	 14		12	; 	goto 744
			732	[  0]	GGET 	 14		1	; slot14 = _env["pcall"]
			733	[  0]	TGETS	 16	0	3	; slot16 = slot0.onPreRevealOutcome
			734	[  0]	MOV  	 17		3	; slot17 = <unknown table>.buildResultGrid
			735	[  0]	CALL 	 14	3	3	; slot14, slot15 = pcall(slot15, <unknown table>.onPreRevealOutcome)
			736	[  0]	ISF  	   		14	; if not pcall
			737	[  0]	JMP  	 16		6	; 	goto 744
			738	[  0]	GGET 	 16		49	; slot16 = _env["type"]
			739	[  0]	MOV  	 18		15	; slot18 = slot15
			740	[  0]	CALL 	 16	2	2	; slot16 = type(<unknown table>.buildResultGrid)
			741	[  0]	ISNES	 16		48	; if type ~= "table"
			742	[  0]	JMP  	 16		1	; 	goto 744
			743	[  0]	TSETS	 15	0	4	; slot0._preRevealOutcomeMeta = slot15
			744	[  0]	KSHORT	 14		1	; slot14 = 1
			745	[  0]	MOV  	 15		11	; slot15 = <unknown table>.ui.slot.cols
			746	[  0]	KSHORT	 16		1	; slot16 = 1
			747	[  0]	FORI 	 14		48	; for <unknown table>.buildResultGrid = slot14,slot15,slot16 else goto 796
			748	[  0]	TGETS	 18	0	27	; slot18 = slot0.reels
			749	[  0]	TGETV	 18	18	17	; slot18 = <unknown table>.reels[slot17]
			750	[  0]	ISF  	   		18	; if not slot18
			751	[  0]	JMP  	 19		43	; 	goto 795
			752	[  0]	TNEW 	 19		4	; slot19 = new table( array: 4, dict: 1)
			753	[  0]	TGETB	 20	3	1	; slot20 = <unknown table>.buildResultGrid[1]
			754	[  0]	ISF  	   		20	; if not slot20
			755	[  0]	JMP  	 21		2	; 	goto 758
			756	[  0]	TGETB	 20	3	1	; slot20 = <unknown table>.buildResultGrid[1]
			757	[  0]	TGETV	 20	20	17	; slot20 = slot20[slot17]
			758	[  0]	TSETB	 20	19	1	; slot19[1] = slot20
			759	[  0]	TGETB	 20	3	2	; slot20 = <unknown table>.buildResultGrid[2]
			760	[  0]	ISF  	   		20	; if not slot20
			761	[  0]	JMP  	 21		2	; 	goto 764
			762	[  0]	TGETB	 20	3	2	; slot20 = <unknown table>.buildResultGrid[2]
			763	[  0]	TGETV	 20	20	17	; slot20 = slot20[slot17]
			764	[  0]	TSETB	 20	19	2	; slot19[2] = slot20
			765	[  0]	TGETB	 20	3	3	; slot20 = <unknown table>.buildResultGrid[3]
			766	[  0]	ISF  	   		20	; if not slot20
			767	[  0]	JMP  	 21		2	; 	goto 770
			768	[  0]	TGETB	 20	3	3	; slot20 = <unknown table>.buildResultGrid[3]
			769	[  0]	TGETV	 20	20	17	; slot20 = slot20[slot17]
			770	[  0]	TSETB	 20	19	3	; slot19[3] = slot20
			771	[  0]	TSETS	 19	18	16	; slot18.targetFinalSymbols = slot19
			772	[  0]	TGETS	 19	18	0	; slot19 = slot18.spinning
			773	[  0]	IST  	   		19	; if <unknown table>.spinning
			774	[  0]	JMP  	 19		20	; 	goto 795
			775	[  0]	TNEW 	 19		4	; slot19 = new table( array: 4, dict: 1)
			776	[  0]	TGETB	 20	3	1	; slot20 = <unknown table>.buildResultGrid[1]
			777	[  0]	ISF  	   		20	; if not slot20
			778	[  0]	JMP  	 21		2	; 	goto 781
			779	[  0]	TGETB	 20	3	1	; slot20 = <unknown table>.buildResultGrid[1]
			780	[  0]	TGETV	 20	20	17	; slot20 = slot20[slot17]
			781	[  0]	TSETB	 20	19	1	; slot19[1] = slot20
			782	[  0]	TGETB	 20	3	2	; slot20 = <unknown table>.buildResultGrid[2]
			783	[  0]	ISF  	   		20	; if not slot20
			784	[  0]	JMP  	 21		2	; 	goto 787
			785	[  0]	TGETB	 20	3	2	; slot20 = <unknown table>.buildResultGrid[2]
			786	[  0]	TGETV	 20	20	17	; slot20 = slot20[slot17]
			787	[  0]	TSETB	 20	19	2	; slot19[2] = slot20
			788	[  0]	TGETB	 20	3	3	; slot20 = <unknown table>.buildResultGrid[3]
			789	[  0]	ISF  	   		20	; if not slot20
			790	[  0]	JMP  	 21		2	; 	goto 793
			791	[  0]	TGETB	 20	3	3	; slot20 = <unknown table>.buildResultGrid[3]
			792	[  0]	TGETV	 20	20	17	; slot20 = slot20[slot17]
			793	[  0]	TSETB	 20	19	3	; slot19[3] = slot20
			794	[  0]	TSETS	 19	18	17	; slot18.finalSymbols = slot19
			795	[  0]	FORL 	 14		-48	; slot17 = slot17 + slot16; if cmp(slot17, sign slot16,  slot15) goto 748
			796	[  0]	RET0 	  0		1	; return
			797	[  0]	RET0 	  0		1	; return
			798	[  0]	RET1 	  1		2	; return _G.waveTimer
			799	[  0]	RET1 	  1		2	; return _G.waveTimer
			800	[  0]	RET1 	  1		2	; return _G.waveTimer
		 16	[  0]	TSETS	  2	1	71	; slot1.startSpin = slot2
		 17	[  0]	FNEW 	  2		69	; N/A:0-0: 4 args, 1 upvalues, 20 slots
			
			;;;; constant tables ;;;;
			ktable#5 = [
				[squashX] = 1,
				[offset] = 0,
				[active] = false,
				[t] = 0,
				[squashY] = 1,
				]
			
			
			ktable#12 = [
				#1: 1,
				#2: 0.62,
				#3: 0.08,
				]
			
			
			ktable#20 = [
				[t] = 0,
				]
			
			
			ktable#35 = [
				[manualStopRequested] = false,
				[state] = accelerate,
				[t] = 0,
				[decelAcc] = 0,
				[speed] = 0,
				[pos] = 0,
				[spinning] = true,
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	TGETS	  4	0	49	; slot4 = slot0._coreSpinMods
			  2	[  0]	ISF  	   		4	; if not <unknown table>._coreSpinMods
			  3	[  0]	JMP  	  5		9	; 	goto 13
			  4	[  0]	GGET 	  4		48	; slot4 = _env["tonumber"]
			  5	[  0]	TGETS	  6	0	49	; slot6 = slot0._coreSpinMods
			  6	[  0]	TGETS	  6	6	47	; slot6 = <unknown table>._coreSpinMods.jokerChance
			  7	[  0]	IST  	   		6	; if <unknown table>._coreSpinMods.jokerChance
			  8	[  0]	JMP  	  7		1	; 	goto 10
			  9	[  0]	KSHORT	  6		0	; slot6 = 0
			 10	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
			 11	[  0]	IST  	   		4	; if tonumber
			 12	[  0]	JMP  	  5		1	; 	goto 14
			 13	[  0]	KSHORT	  4		0	; slot4 = 0
			 14	[  0]	GGET 	  5		46	; slot5 = _env["math"]
			 15	[  0]	TGETS	  5	5	45	; slot5 = math.max
			 16	[  0]	KSHORT	  7		0	; slot7 = 0
			 17	[  0]	GGET 	  8		46	; slot8 = _env["math"]
			 18	[  0]	TGETS	  8	8	44	; slot8 = math.min
			 19	[  0]	KNUM 	 10		0	; slot10 = 0.05
			 20	[  0]	MOV  	 11		4	; slot11 = slot4
			 21	[  0]	CALL 	  8	0	3	; MULTRES = math.min(slot9, slot10)
			 22	[  0]	CALLM	  5	2	1	; slot5 = math.max(slot6, ...MULTRES)
			 23	[  0]	MOV  	  4		5	; slot4 = math.max
			 24	[  0]	TGETS	  5	0	43	; slot5 = slot0.reelStrips
			 25	[  0]	IST  	   		5	; if <unknown table>.reelStrips
			 26	[  0]	JMP  	  6		1	; 	goto 28
			 27	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
			 28	[  0]	TSETS	  5	0	43	; slot0.reelStrips = slot5
			 29	[  0]	TGETS	  5	0	42	; slot5 = slot0.reelStripPos
			 30	[  0]	IST  	   		5	; if <unknown table>.reelStripPos
			 31	[  0]	JMP  	  6		1	; 	goto 33
			 32	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
			 33	[  0]	TSETS	  5	0	42	; slot0.reelStripPos = slot5
			 34	[  0]	TGETS	  5	0	41	; slot5 = slot0.reelStripLen
			 35	[  0]	IST  	   		5	; if <unknown table>.reelStripLen
			 36	[  0]	JMP  	  6		1	; 	goto 38
			 37	[  0]	KSHORT	  5		64	; slot5 = 64
			 38	[  0]	TSETS	  5	0	41	; slot0.reelStripLen = slot5
			 39	[  0]	TGETS	  5	0	43	; slot5 = slot0.reelStrips
			 40	[  0]	TGETV	  5	5	1	; slot5 = <unknown table>.reelStrips[slot1]
			 41	[  0]	IST  	   		5	; if slot5
			 42	[  0]	JMP  	  6		15	; 	goto 58
			 43	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
			 44	[  0]	KSHORT	  6		1	; slot6 = 1
			 45	[  0]	TGETS	  7	0	41	; slot7 = slot0.reelStripLen
			 46	[  0]	KSHORT	  8		1	; slot8 = 1
			 47	[  0]	FORI 	  6		5	; for slot9 = slot6,slot7,slot8 else goto 53
			 48	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
			 49	[  0]	MOV  	 12		4	; slot12 = math.max
			 50	[  0]	CALL 	 10	2	2	; slot10 = uv0"unknown"(slot11)
			 51	[  0]	TSETV	 10	5	9	; slot5[slot9] = uv0"unknown"
			 52	[  0]	FORL 	  6		-5	; slot9 = slot9 + slot8; if cmp(slot9, sign slot8,  <unknown table>.reelStripLen) goto 48
			 53	[  0]	TGETS	  6	0	43	; slot6 = slot0.reelStrips
			 54	[  0]	TSETV	  5	6	1	; <unknown table>.reelStrips[slot1] = slot5
			 55	[  0]	TGETS	  6	0	42	; slot6 = slot0.reelStripPos
			 56	[  0]	KSHORT	  7		1	; slot7 = 1
			 57	[  0]	TSETV	  7	6	1	; <unknown table>.reelStripPos[slot1] = slot7
			 58	[  0]	LEN  	  6		5	; slot6 = #slot5
			 59	[  0]	KSHORT	  7		0	; slot7 = 0
			 60	[  0]	ISGT 	  6		7	; if slot6 > slot7
			 61	[  0]	JMP  	  7		12	; 	goto 74
			 62	[  0]	TGETS	  6	0	41	; slot6 = slot0.reelStripLen
			 63	[  0]	KSHORT	  7		1	; slot7 = 1
			 64	[  0]	MOV  	  8		6	; slot8 = <unknown table>.reelStripLen
			 65	[  0]	KSHORT	  9		1	; slot9 = 1
			 66	[  0]	FORI 	  7		5	; for uv0"unknown" = slot7,slot8,slot9 else goto 72
			 67	[  0]	UGET 	 11		0	; slot11 = uv0"unknwon"
			 68	[  0]	MOV  	 13		4	; slot13 = math.max
			 69	[  0]	CALL 	 11	2	2	; slot11 = uv0"unknown"(math.max)
			 70	[  0]	TSETV	 11	5	10	; slot5[uv0"unknown"] = uv0"unknown"
			 71	[  0]	FORL 	  7		-5	; uv0"unknown" = uv0"unknown" + slot9; if cmp(uv0"unknown", sign slot9,  <unknown table>.reelStripLen) goto 67
			 72	[  0]	TGETS	  7	0	43	; slot7 = slot0.reelStrips
			 73	[  0]	TSETV	  5	7	1	; <unknown table>.reelStrips[slot1] = slot5
			 74	[  0]	FNEW 	  7		40	; N/A:0-0: 1 args, 1 upvalues, 3 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	SUBVN	  1	0	0	; slot1 = slot0 - 1
				  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
				  3	[  0]	MODVV	  1	1	2	; slot1 = slot1 % uv0"unknown"
				  4	[  0]	ADDVN	  1	1	0	; slot1 = slot1 + 1
				  5	[  0]	RET1 	  1		2	; return slot1
			 75	[  0]	TGETS	  8	0	42	; slot8 = slot0.reelStripPos
			 76	[  0]	TGETV	  8	8	1	; slot8 = <unknown table>.reelStripPos[slot1]
			 77	[  0]	IST  	   		8	; if slot8
			 78	[  0]	JMP  	  9		1	; 	goto 80
			 79	[  0]	KSHORT	  8		1	; slot8 = 1
			 80	[  0]	TGETS	  9	0	39	; slot9 = slot0.grid
			 81	[  0]	ISF  	   		9	; if not <unknown table>.grid
			 82	[  0]	JMP  	 10		19	; 	goto 102
			 83	[  0]	KSHORT	  9		1	; slot9 = 1
			 84	[  0]	KSHORT	 10		3	; slot10 = 3
			 85	[  0]	KSHORT	 11		1	; slot11 = 1
			 86	[  0]	FORI 	  9		15	; for math.max = slot9,slot10,slot11 else goto 102
			 87	[  0]	TGETS	 13	0	39	; slot13 = slot0.grid
			 88	[  0]	TGETV	 13	13	12	; slot13 = <unknown table>.grid[slot12]
			 89	[  0]	ISF  	   		13	; if not slot13
			 90	[  0]	JMP  	 14		3	; 	goto 94
			 91	[  0]	TGETS	 13	0	39	; slot13 = slot0.grid
			 92	[  0]	TGETV	 13	13	12	; slot13 = <unknown table>.grid[slot12]
			 93	[  0]	TGETV	 13	13	1	; slot13 = slot13[slot1]
			 94	[  0]	ISF  	   		13	; if not slot13
			 95	[  0]	JMP  	 14		5	; 	goto 101
			 96	[  0]	MOV  	 14		7	; slot14 = slot7
			 97	[  0]	SUBVN	 16	12	1	; slot16 = slot12 - 1
			 98	[  0]	ADDVV	 16	8	16	; slot16 = slot8 + slot16
			 99	[  0]	CALL 	 14	2	2	; slot14 = slot14(slot15)
			100	[  0]	TSETV	 13	5	14	; slot5[slot14] = slot13
			101	[  0]	FORL 	  9		-15	; slot12 = slot12 + slot11; if cmp(slot12, sign slot11,  slot10) goto 87
			102	[  0]	KSHORT	  9		18	; slot9 = 18
			103	[  0]	KSHORT	 10		32	; slot10 = 32
			104	[  0]	GGET 	 11		38	; slot11 = _env["love"]
			105	[  0]	TGETS	 11	11	46	; slot11 = love.math
			106	[  0]	TGETS	 11	11	37	; slot11 = love.math.random
			107	[  0]	MOV  	 13		9	; slot13 = slot9
			108	[  0]	MOV  	 14		10	; slot14 = slot10
			109	[  0]	CALL 	 11	2	3	; slot11 = love.math.random(slot12, slot13)
			110	[  0]	TNEW 	 12		0	; slot12 = new table( array: 0, dict: 1)
			111	[  0]	KSHORT	 13		1	; slot13 = 1
			112	[  0]	MOV  	 14		11	; slot14 = love.math.random
			113	[  0]	KSHORT	 15		1	; slot15 = 1
			114	[  0]	FORI 	 13		7	; for slot16 = slot13,slot14,slot15 else goto 122
			115	[  0]	MOV  	 17		7	; slot17 = slot7
			116	[  0]	SUBVN	 19	16	1	; slot19 = slot16 - 1
			117	[  0]	ADDVV	 19	8	19	; slot19 = slot8 + slot19
			118	[  0]	CALL 	 17	2	2	; slot17 = slot17(slot18)
			119	[  0]	TGETV	 17	5	17	; slot17 = slot5[slot17]
			120	[  0]	TSETV	 17	12	16	; slot12[slot16] = slot17
			121	[  0]	FORL 	 13		-7	; slot16 = slot16 + slot15; if cmp(slot16, sign slot15,  love.math.random) goto 115
			122	[  0]	MOV  	 13		7	; slot13 = slot7
			123	[  0]	SUBVN	 15	8	1	; slot15 = slot8 - 1
			124	[  0]	CALL 	 13	2	2	; slot13 = slot13(love.math.random)
			125	[  0]	TGETV	 13	5	13	; slot13 = slot5[slot13]
			126	[  0]	TSETB	 13	12	0	; slot12[0] = slot13
			127	[  0]	TGETS	 13	0	36	; slot13 = slot0.reels
			128	[  0]	TDUP 	 14		35	; slot14 = copy table#k35
			129	[  0]	ISF  	   		3	; if not slot3
			130	[  0]	JMP  	 15		3	; 	goto 134
			131	[  0]	TGETS	 15	3	34	; slot15 = slot3.vmax
			132	[  0]	IST  	   		15	; if <unknown table>.vmax
			133	[  0]	JMP  	 16		1	; 	goto 135
			134	[  0]	KSHORT	 15		18	; slot15 = 18
			135	[  0]	TSETS	 15	14	34	; slot14.vmax = slot15
			136	[  0]	ISF  	   		3	; if not slot3
			137	[  0]	JMP  	 15		3	; 	goto 141
			138	[  0]	TGETS	 15	3	33	; slot15 = slot3.accelTime
			139	[  0]	IST  	   		15	; if <unknown table>.accelTime
			140	[  0]	JMP  	 16		1	; 	goto 142
			141	[  0]	KNUM 	 15		2	; slot15 = 0.1
			142	[  0]	TSETS	 15	14	33	; slot14.accelTime = slot15
			143	[  0]	ISF  	   		3	; if not slot3
			144	[  0]	JMP  	 15		3	; 	goto 148
			145	[  0]	TGETS	 15	3	32	; slot15 = slot3.decelTime
			146	[  0]	IST  	   		15	; if <unknown table>.decelTime
			147	[  0]	JMP  	 16		1	; 	goto 149
			148	[  0]	KNUM 	 15		3	; slot15 = 0.22
			149	[  0]	TSETS	 15	14	32	; slot14.decelTime = slot15
			150	[  0]	ISF  	   		3	; if not slot3
			151	[  0]	JMP  	 15		3	; 	goto 155
			152	[  0]	TGETS	 15	3	31	; slot15 = slot3.settleTime
			153	[  0]	IST  	   		15	; if <unknown table>.settleTime
			154	[  0]	JMP  	 16		1	; 	goto 156
			155	[  0]	KNUM 	 15		4	; slot15 = 0.18
			156	[  0]	TSETS	 15	14	31	; slot14.settleTime = slot15
			157	[  0]	TSETS	  5	14	30	; slot14.strip = slot5
			158	[  0]	TSETS	  6	14	29	; slot14.stripLen = <unknown table>.reelStripLen
			159	[  0]	TSETS	  8	14	28	; slot14.stripStart = slot8
			160	[  0]	TSETS	 12	14	27	; slot14.sequence = slot12
			161	[  0]	TSETS	 11	14	26	; slot14.sequenceLen = love.math.random
			162	[  0]	ISF  	   		3	; if not slot3
			163	[  0]	JMP  	 15		3	; 	goto 167
			164	[  0]	TGETS	 15	3	25	; slot15 = slot3.stopAt
			165	[  0]	IST  	   		15	; if <unknown table>.stopAt
			166	[  0]	JMP  	 16		1	; 	goto 168
			167	[  0]	KNUM 	 15		5	; slot15 = 0.34
			168	[  0]	TSETS	 15	14	25	; slot14.stopAt = slot15
			169	[  0]	TSETS	  2	14	24	; slot14.targetFinalSymbols = slot2
			170	[  0]	ISFC 	 15		3	; slot15 = slot3; if not slot3
			171	[  0]	JMP  	 15		6	; 	goto 178
			172	[  0]	TGETS	 15	3	23	; slot15 = slot3.hardStop
			173	[  0]	ISEQP	 15		2	; if <unknown table>.hardStop == true
			174	[  0]	JMP  	 15		2	; 	goto 177
			175	[  0]	KPRI 	 15		1	; slot15 = false
			176	[  0]	JMP  	 16		1	; 	goto 178
			177	[  0]	KPRI 	 15		2	; slot15 = true
			178	[  0]	TSETS	 15	14	23	; slot14.hardStop = slot15
			179	[  0]	ISFC 	 15		3	; slot15 = slot3; if not slot3
			180	[  0]	JMP  	 15		6	; 	goto 187
			181	[  0]	TGETS	 15	3	22	; slot15 = slot3.manualStop
			182	[  0]	ISEQP	 15		2	; if <unknown table>.manualStop == true
			183	[  0]	JMP  	 15		2	; 	goto 186
			184	[  0]	KPRI 	 15		1	; slot15 = false
			185	[  0]	JMP  	 16		1	; 	goto 187
			186	[  0]	KPRI 	 15		2	; slot15 = true
			187	[  0]	TSETS	 15	14	22	; slot14.manualStop = slot15
			188	[  0]	ISF  	   		3	; if not slot3
			189	[  0]	JMP  	 15		26	; 	goto 216
			190	[  0]	TGETS	 15	3	21	; slot15 = slot3.sparkWhileSpinning
			191	[  0]	ISNEP	 15		2	; if <unknown table>.sparkWhileSpinning ~= true
			192	[  0]	JMP  	 15		23	; 	goto 216
			193	[  0]	TDUP 	 15		20	; slot15 = copy table#k20
			194	[  0]	TGETS	 16	3	19	; slot16 = slot3.sparkPhase
			195	[  0]	IST  	   		16	; if <unknown table>.sparkPhase
			196	[  0]	JMP  	 17		1	; 	goto 198
			197	[  0]	KSHORT	 16		1	; slot16 = 1
			198	[  0]	TSETS	 16	15	18	; slot15.phase = slot16
			199	[  0]	TGETS	 16	3	17	; slot16 = slot3.sparkCount
			200	[  0]	IST  	   		16	; if <unknown table>.sparkCount
			201	[  0]	JMP  	 17		1	; 	goto 203
			202	[  0]	KSHORT	 16		10	; slot16 = 10
			203	[  0]	TSETS	 16	15	16	; slot15.count = slot16
			204	[  0]	TGETS	 16	3	15	; slot16 = slot3.sparkIntensity
			205	[  0]	IST  	   		16	; if <unknown table>.sparkIntensity
			206	[  0]	JMP  	 17		1	; 	goto 208
			207	[  0]	KSHORT	 16		1	; slot16 = 1
			208	[  0]	TSETS	 16	15	14	; slot15.intensity = slot16
			209	[  0]	TGETS	 16	3	13	; slot16 = slot3.sparkColor
			210	[  0]	IST  	   		16	; if <unknown table>.sparkColor
			211	[  0]	JMP  	 17		1	; 	goto 213
			212	[  0]	TDUP 	 16		12	; slot16 = copy table#k12
			213	[  0]	TSETS	 16	15	11	; slot15.color = slot16
			214	[  0]	IST  	   		15	; if slot15
			215	[  0]	JMP  	 16		1	; 	goto 217
			216	[  0]	KPRI 	 15		0	; slot15 = nil
			217	[  0]	TSETS	 15	14	10	; slot14.spinSpark = slot15
			218	[  0]	ISF  	   		3	; if not slot3
			219	[  0]	JMP  	 15		3	; 	goto 223
			220	[  0]	TGETS	 15	3	9	; slot15 = slot3.stopSfx
			221	[  0]	IST  	   		15	; if <unknown table>.stopSfx
			222	[  0]	JMP  	 16		1	; 	goto 224
			223	[  0]	KPRI 	 15		0	; slot15 = nil
			224	[  0]	TSETS	 15	14	9	; slot14.stopSfx = slot15
			225	[  0]	ISF  	   		3	; if not slot3
			226	[  0]	JMP  	 15		3	; 	goto 230
			227	[  0]	TGETS	 15	3	8	; slot15 = slot3.stopSfxPitch
			228	[  0]	IST  	   		15	; if <unknown table>.stopSfxPitch
			229	[  0]	JMP  	 16		1	; 	goto 231
			230	[  0]	KNUM 	 15		6	; slot15 = 1.35
			231	[  0]	TSETS	 15	14	8	; slot14.stopSfxPitch = slot15
			232	[  0]	ISF  	   		3	; if not slot3
			233	[  0]	JMP  	 15		3	; 	goto 237
			234	[  0]	TGETS	 15	3	7	; slot15 = slot3.stopSfxVolumeMul
			235	[  0]	IST  	   		15	; if <unknown table>.stopSfxVolumeMul
			236	[  0]	JMP  	 16		1	; 	goto 238
			237	[  0]	KSHORT	 15		1	; slot15 = 1
			238	[  0]	TSETS	 15	14	7	; slot14.stopSfxVolumeMul = slot15
			239	[  0]	ISF  	   		3	; if not slot3
			240	[  0]	JMP  	 15		3	; 	goto 244
			241	[  0]	TGETS	 15	3	6	; slot15 = slot3.onImpact
			242	[  0]	IST  	   		15	; if <unknown table>.onImpact
			243	[  0]	JMP  	 16		1	; 	goto 245
			244	[  0]	KPRI 	 15		0	; slot15 = nil
			245	[  0]	TSETS	 15	14	6	; slot14.onImpact = slot15
			246	[  0]	TDUP 	 15		5	; slot15 = copy table#k5
			247	[  0]	ISF  	   		3	; if not slot3
			248	[  0]	JMP  	 16		3	; 	goto 252
			249	[  0]	TGETS	 16	3	4	; slot16 = slot3.impactDur
			250	[  0]	IST  	   		16	; if <unknown table>.impactDur
			251	[  0]	JMP  	 17		1	; 	goto 253
			252	[  0]	KNUM 	 16		7	; slot16 = 0.5
			253	[  0]	TSETS	 16	15	3	; slot15.dur = slot16
			254	[  0]	ISF  	   		3	; if not slot3
			255	[  0]	JMP  	 16		3	; 	goto 259
			256	[  0]	TGETS	 16	3	2	; slot16 = slot3.impactAmp
			257	[  0]	IST  	   		16	; if <unknown table>.impactAmp
			258	[  0]	JMP  	 17		1	; 	goto 260
			259	[  0]	KNUM 	 16		8	; slot16 = 0.2
			260	[  0]	TSETS	 16	15	1	; slot15.amp = slot16
			261	[  0]	TSETS	 15	14	0	; slot14.hit = slot15
			262	[  0]	TSETV	 14	13	1	; <unknown table>.reels[slot1] = slot14
			263	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 264
			264	[  0]	RET0 	  0		1	; return
		 18	[  0]	FNEW 	  3		67	; N/A:0-0: 4 args, 0 upvalues, 11 slots
			
			;;;; constant tables ;;;;
			ktable#26 = [
				[started] = false,
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  4		31	; slot4 = _env["tonumber"]
			  2	[  0]	MOV  	  6		1	; slot6 = slot1
			  3	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
			  4	[  0]	MOV  	  1		4	; slot1 = tonumber
			  5	[  0]	ISF  	   		1	; if not tonumber
			  6	[  0]	JMP  	  4		18	; 	goto 25
			  7	[  0]	KSHORT	  4		1	; slot4 = 1
			  8	[  0]	ISLT 	  1		4	; if tonumber < slot4
			  9	[  0]	JMP  	  4		15	; 	goto 25
			 10	[  0]	TGETS	  4	0	30	; slot4 = slot0.ui
			 11	[  0]	ISF  	   		4	; if not <unknown table>.ui
			 12	[  0]	JMP  	  5		9	; 	goto 22
			 13	[  0]	TGETS	  4	0	30	; slot4 = slot0.ui
			 14	[  0]	TGETS	  4	4	29	; slot4 = <unknown table>.ui.slot
			 15	[  0]	ISF  	   		4	; if not <unknown table>.ui.slot
			 16	[  0]	JMP  	  5		5	; 	goto 22
			 17	[  0]	TGETS	  4	0	30	; slot4 = slot0.ui
			 18	[  0]	TGETS	  4	4	29	; slot4 = <unknown table>.ui.slot
			 19	[  0]	TGETS	  4	4	28	; slot4 = <unknown table>.ui.slot.cols
			 20	[  0]	IST  	   		4	; if <unknown table>.ui.slot.cols
			 21	[  0]	JMP  	  5		1	; 	goto 23
			 22	[  0]	KSHORT	  4		0	; slot4 = 0
			 23	[  0]	ISGE 	  4		1	; if slot4 >= tonumber
			 24	[  0]	JMP  	  4		2	; 	goto 27
			 25	[  0]	KPRI 	  4		1	; slot4 = false
			 26	[  0]	RET1 	  4		2	; return slot4
			 27	[  0]	IST  	   		2	; if slot2
			 28	[  0]	JMP  	  4		2	; 	goto 31
			 29	[  0]	KPRI 	  4		1	; slot4 = false
			 30	[  0]	RET1 	  4		2	; return slot4
			 31	[  0]	TDUP 	  4		26	; slot4 = copy table#k26
			 32	[  0]	TSETS	  1	4	25	; slot4.col = tonumber
			 33	[  0]	TSETS	  2	4	24	; slot4.targetFinalSymbols = slot2
			 34	[  0]	GGET 	  5		23	; slot5 = _env["math"]
			 35	[  0]	TGETS	  5	5	22	; slot5 = math.max
			 36	[  0]	KSHORT	  7		0	; slot7 = 0
			 37	[  0]	GGET 	  8		31	; slot8 = _env["tonumber"]
			 38	[  0]	ISF  	   		3	; if not slot3
			 39	[  0]	JMP  	 10		3	; 	goto 43
			 40	[  0]	TGETS	 10	3	21	; slot10 = slot3.delay
			 41	[  0]	IST  	   		10	; if <unknown table>.delay
			 42	[  0]	JMP  	 11		1	; 	goto 44
			 43	[  0]	KSHORT	 10		0	; slot10 = 0
			 44	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
			 45	[  0]	IST  	   		8	; if tonumber
			 46	[  0]	JMP  	  9		1	; 	goto 48
			 47	[  0]	KSHORT	  8		0	; slot8 = 0
			 48	[  0]	CALL 	  5	2	3	; slot5 = math.max(slot6, slot7)
			 49	[  0]	TSETS	  5	4	21	; slot4.delay = math.max
			 50	[  0]	ISF  	   		3	; if not slot3
			 51	[  0]	JMP  	  5		3	; 	goto 55
			 52	[  0]	TGETS	  5	3	20	; slot5 = slot3.timing
			 53	[  0]	IST  	   		5	; if <unknown table>.timing
			 54	[  0]	JMP  	  6		1	; 	goto 56
			 55	[  0]	KPRI 	  5		0	; slot5 = nil
			 56	[  0]	TSETS	  5	4	20	; slot4.timing = slot5
			 57	[  0]	ISFC 	  5		3	; slot5 = slot3; if not slot3
			 58	[  0]	JMP  	  5		6	; 	goto 65
			 59	[  0]	TGETS	  5	3	19	; slot5 = slot3.allowPostEvaluateChain
			 60	[  0]	ISEQP	  5		2	; if <unknown table>.allowPostEvaluateChain == true
			 61	[  0]	JMP  	  5		2	; 	goto 64
			 62	[  0]	KPRI 	  5		1	; slot5 = false
			 63	[  0]	JMP  	  6		1	; 	goto 65
			 64	[  0]	KPRI 	  5		2	; slot5 = true
			 65	[  0]	TSETS	  5	4	19	; slot4.allowPostEvaluateChain = slot5
			 66	[  0]	ISF  	   		3	; if not slot3
			 67	[  0]	JMP  	  5		3	; 	goto 71
			 68	[  0]	TGETS	  5	3	18	; slot5 = slot3.coreKey
			 69	[  0]	IST  	   		5	; if <unknown table>.coreKey
			 70	[  0]	JMP  	  6		1	; 	goto 72
			 71	[  0]	KPRI 	  5		0	; slot5 = nil
			 72	[  0]	TSETS	  5	4	18	; slot4.coreKey = slot5
			 73	[  0]	ISF  	   		3	; if not slot3
			 74	[  0]	JMP  	  5		3	; 	goto 78
			 75	[  0]	TGETS	  5	3	17	; slot5 = slot3.coreRespinPhase
			 76	[  0]	IST  	   		5	; if <unknown table>.coreRespinPhase
			 77	[  0]	JMP  	  6		1	; 	goto 79
			 78	[  0]	KPRI 	  5		0	; slot5 = nil
			 79	[  0]	TSETS	  5	4	17	; slot4.coreRespinPhase = slot5
			 80	[  0]	TSETS	  4	0	27	; slot0._singleReelRespin = slot4
			 81	[  0]	KPRI 	  4		2	; slot4 = true
			 82	[  0]	TSETS	  4	0	16	; slot0._skipPostEvaluateHookOnce = slot4
			 83	[  0]	TGETS	  4	0	15	; slot4 = slot0.spin
			 84	[  0]	KPRI 	  5		2	; slot5 = true
			 85	[  0]	TSETS	  5	4	14	; <unknown table>.spin.active = slot5
			 86	[  0]	TGETS	  4	0	15	; slot4 = slot0.spin
			 87	[  0]	KPRI 	  5		2	; slot5 = true
			 88	[  0]	TSETS	  5	4	13	; <unknown table>.spin.started = slot5
			 89	[  0]	TGETS	  4	0	15	; slot4 = slot0.spin
			 90	[  0]	KSHORT	  5		0	; slot5 = 0
			 91	[  0]	TSETS	  5	4	12	; <unknown table>.spin.t = slot5
			 92	[  0]	TGETS	  4	0	11	; slot4 = slot0.result
			 93	[  0]	KPRI 	  5		1	; slot5 = false
			 94	[  0]	TSETS	  5	4	10	; <unknown table>.result.checked = slot5
			 95	[  0]	TGETS	  4	0	11	; slot4 = slot0.result
			 96	[  0]	KPRI 	  5		1	; slot5 = false
			 97	[  0]	TSETS	  5	4	9	; <unknown table>.result.won = slot5
			 98	[  0]	TGETS	  4	0	11	; slot4 = slot0.result
			 99	[  0]	KPRI 	  5		0	; slot5 = nil
			100	[  0]	TSETS	  5	4	8	; <unknown table>.result.winningLines = slot5
			101	[  0]	TGETS	  4	0	11	; slot4 = slot0.result
			102	[  0]	KPRI 	  5		0	; slot5 = nil
			103	[  0]	TSETS	  5	4	7	; <unknown table>.result.symbol = slot5
			104	[  0]	TGETS	  4	0	11	; slot4 = slot0.result
			105	[  0]	KPRI 	  5		1	; slot5 = false
			106	[  0]	TSETS	  5	4	6	; <unknown table>.result.awarded = slot5
			107	[  0]	TGETS	  4	0	11	; slot4 = slot0.result
			108	[  0]	KPRI 	  5		1	; slot5 = false
			109	[  0]	TSETS	  5	4	5	; <unknown table>.result.highlightActive = slot5
			110	[  0]	TGETS	  4	0	11	; slot4 = slot0.result
			111	[  0]	KPRI 	  5		1	; slot5 = false
			112	[  0]	TSETS	  5	4	4	; <unknown table>.result.fxStarted = slot5
			113	[  0]	TGETS	  4	0	11	; slot4 = slot0.result
			114	[  0]	KPRI 	  5		0	; slot5 = nil
			115	[  0]	TSETS	  5	4	3	; <unknown table>.result.winSeq = slot5
			116	[  0]	TGETS	  4	0	11	; slot4 = slot0.result
			117	[  0]	KPRI 	  5		0	; slot5 = nil
			118	[  0]	TSETS	  5	4	2	; <unknown table>.result.visibleWinningLines = slot5
			119	[  0]	TGETS	  4	0	11	; slot4 = slot0.result
			120	[  0]	ISFC 	  5		3	; slot5 = slot3; if not slot3
			121	[  0]	JMP  	  5		6	; 	goto 128
			122	[  0]	TGETS	  5	3	0	; slot5 = slot3.twistedBellReroll
			123	[  0]	ISEQP	  5		2	; if <unknown table>.twistedBellReroll == true
			124	[  0]	JMP  	  5		2	; 	goto 127
			125	[  0]	KPRI 	  5		1	; slot5 = false
			126	[  0]	JMP  	  6		1	; 	goto 128
			127	[  0]	KPRI 	  5		2	; slot5 = true
			128	[  0]	TSETS	  5	4	1	; <unknown table>.result._twistedBellRerolled = slot5
			129	[  0]	KPRI 	  4		2	; slot4 = true
			130	[  0]	RET1 	  4		2	; return slot4
		 19	[  0]	TSETS	  3	1	68	; slot1.startSingleReelRespin = slot3
		 20	[  0]	FNEW 	  3		65	; N/A:0-0: 2 args, 0 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			ktable#1 = [
				[stopQueued] = false,
				[active] = true,
				[phase] = choose,
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  2		6	; slot2 = _env["type"]
			  2	[  0]	MOV  	  4		1	; slot4 = slot1
			  3	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
			  4	[  0]	ISNES	  2		5	; if slot2 ~= "table"
			  5	[  0]	JMP  	  2		4	; 	goto 10
			  6	[  0]	LEN  	  2		1	; slot2 = #slot1
			  7	[  0]	KSHORT	  3		0	; slot3 = 0
			  8	[  0]	ISGT 	  2		3	; if slot2 > slot3
			  9	[  0]	JMP  	  2		2	; 	goto 12
			 10	[  0]	KPRI 	  2		1	; slot2 = false
			 11	[  0]	RET1 	  2		2	; return slot2
			 12	[  0]	TGETS	  2	0	4	; slot2 = slot0.spin
			 13	[  0]	ISF  	   		2	; if not <unknown table>.spin
			 14	[  0]	JMP  	  3		6	; 	goto 21
			 15	[  0]	TGETS	  2	0	4	; slot2 = slot0.spin
			 16	[  0]	TGETS	  2	2	3	; slot2 = <unknown table>.spin.active
			 17	[  0]	ISF  	   		2	; if not <unknown table>.spin.active
			 18	[  0]	JMP  	  3		2	; 	goto 21
			 19	[  0]	KPRI 	  2		1	; slot2 = false
			 20	[  0]	RET1 	  2		2	; return slot2
			 21	[  0]	TDUP 	  2		1	; slot2 = copy table#k1
			 22	[  0]	TSETS	  1	2	0	; slot2.candidates = slot1
			 23	[  0]	TSETS	  2	0	2	; slot0._luckyNail = slot2
			 24	[  0]	KPRI 	  2		2	; slot2 = true
			 25	[  0]	RET1 	  2		2	; return slot2
		 21	[  0]	TSETS	  3	1	66	; slot1.beginLuckyNailChoice = slot3
		 22	[  0]	FNEW 	  3		63	; N/A:0-0: 2 args, 1 upvalues, 14 slots
			
			;;;; constant tables ;;;;
			ktable#5 = [
				[accelTime] = 0.09,
				[settleTime] = 0.03,
				[impactAmp] = 0.34,
				[manualStop] = true,
				[vmax] = 8,
				[decelTime] = 0.01,
				[impactDur] = 0.3,
				]
			
			
			ktable#6 = [
				[coreKey] = LuckyNail,
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	TGETS	  2	0	23	; slot2 = slot0._luckyNail
			  2	[  0]	ISF  	   		2	; if not <unknown table>._luckyNail
			  3	[  0]	JMP  	  3		8	; 	goto 12
			  4	[  0]	TGETS	  3	2	22	; slot3 = <unknown table>._luckyNail.active
			  5	[  0]	ISF  	   		3	; if not <unknown table>._luckyNail.active
			  6	[  0]	JMP  	  4		5	; 	goto 12
			  7	[  0]	TGETS	  3	2	21	; slot3 = <unknown table>._luckyNail.phase
			  8	[  0]	ISNES	  3		20	; if <unknown table>._luckyNail.phase ~= "choose"
			  9	[  0]	JMP  	  3		2	; 	goto 12
			 10	[  0]	IST  	   		1	; if slot1
			 11	[  0]	JMP  	  3		2	; 	goto 14
			 12	[  0]	KPRI 	  3		1	; slot3 = false
			 13	[  0]	RET1 	  3		2	; return slot3
			 14	[  0]	GGET 	  3		19	; slot3 = _env["math"]
			 15	[  0]	TGETS	  3	3	18	; slot3 = math.floor
			 16	[  0]	GGET 	  5		17	; slot5 = _env["tonumber"]
			 17	[  0]	TGETS	  7	1	16	; slot7 = slot1.rerollCol
			 18	[  0]	IST  	   		7	; if <unknown table>.rerollCol
			 19	[  0]	JMP  	  8		1	; 	goto 21
			 20	[  0]	KSHORT	  7		0	; slot7 = 0
			 21	[  0]	CALL 	  5	2	2	; slot5 = tonumber(slot6)
			 22	[  0]	IST  	   		5	; if tonumber
			 23	[  0]	JMP  	  6		1	; 	goto 25
			 24	[  0]	KSHORT	  5		0	; slot5 = 0
			 25	[  0]	CALL 	  3	2	2	; slot3 = math.floor(slot4)
			 26	[  0]	KSHORT	  4		1	; slot4 = 1
			 27	[  0]	ISLT 	  3		4	; if math.floor < slot4
			 28	[  0]	JMP  	  4		15	; 	goto 44
			 29	[  0]	TGETS	  4	0	15	; slot4 = slot0.ui
			 30	[  0]	ISF  	   		4	; if not <unknown table>.ui
			 31	[  0]	JMP  	  5		9	; 	goto 41
			 32	[  0]	TGETS	  4	0	15	; slot4 = slot0.ui
			 33	[  0]	TGETS	  4	4	14	; slot4 = <unknown table>.ui.slot
			 34	[  0]	ISF  	   		4	; if not <unknown table>.ui.slot
			 35	[  0]	JMP  	  5		5	; 	goto 41
			 36	[  0]	TGETS	  4	0	15	; slot4 = slot0.ui
			 37	[  0]	TGETS	  4	4	14	; slot4 = <unknown table>.ui.slot
			 38	[  0]	TGETS	  4	4	13	; slot4 = <unknown table>.ui.slot.cols
			 39	[  0]	IST  	   		4	; if <unknown table>.ui.slot.cols
			 40	[  0]	JMP  	  5		1	; 	goto 42
			 41	[  0]	KSHORT	  4		0	; slot4 = 0
			 42	[  0]	ISGE 	  4		3	; if slot4 >= math.floor
			 43	[  0]	JMP  	  4		2	; 	goto 46
			 44	[  0]	KPRI 	  4		1	; slot4 = false
			 45	[  0]	RET1 	  4		2	; return slot4
			 46	[  0]	GGET 	  4		17	; slot4 = _env["tonumber"]
			 47	[  0]	TGETS	  6	0	12	; slot6 = slot0._coreSpinMods
			 48	[  0]	ISF  	   		6	; if not <unknown table>._coreSpinMods
			 49	[  0]	JMP  	  7		4	; 	goto 54
			 50	[  0]	TGETS	  6	0	12	; slot6 = slot0._coreSpinMods
			 51	[  0]	TGETS	  6	6	11	; slot6 = <unknown table>._coreSpinMods.jokerChance
			 52	[  0]	IST  	   		6	; if <unknown table>._coreSpinMods.jokerChance
			 53	[  0]	JMP  	  7		1	; 	goto 55
			 54	[  0]	KSHORT	  6		0	; slot6 = 0
			 55	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
			 56	[  0]	IST  	   		4	; if tonumber
			 57	[  0]	JMP  	  5		1	; 	goto 59
			 58	[  0]	KSHORT	  4		0	; slot4 = 0
			 59	[  0]	TNEW 	  5		4	; slot5 = new table( array: 4, dict: 1)
			 60	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
			 61	[  0]	MOV  	  8		4	; slot8 = slot4
			 62	[  0]	CALL 	  6	2	2	; slot6 = uv0"unknown"(slot7)
			 63	[  0]	TSETB	  6	5	1	; slot5[1] = uv0"unknown"
			 64	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
			 65	[  0]	MOV  	  8		4	; slot8 = slot4
			 66	[  0]	CALL 	  6	2	2	; slot6 = uv0"unknown"(slot7)
			 67	[  0]	TSETB	  6	5	2	; slot5[2] = uv0"unknown"
			 68	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
			 69	[  0]	MOV  	  8		4	; slot8 = slot4
			 70	[  0]	CALL 	  6	0	2	; MULTRES = uv0"unknown"(slot7)
			 71	[  0]	TSETM	  6		0	; for i = 0, MULTRES, 1 do slot5[0 + i] = slot(6 + i)
			 72	[  0]	KSTR 	  6		10	; slot6 = "spinning"
			 73	[  0]	TSETS	  6	2	21	; <unknown table>._luckyNail.phase = slot6
			 74	[  0]	TSETS	  1	2	9	; <unknown table>._luckyNail.selected = slot1
			 75	[  0]	TSETS	  3	2	8	; <unknown table>._luckyNail.col = math.floor
			 76	[  0]	MOV  	  8		0	; slot8 = slot0
			 77	[  0]	TGETS	  6	0	7	; slot6 = slot0.startSingleReelRespin
			 78	[  0]	MOV  	  9		3	; slot9 = math.floor
			 79	[  0]	MOV  	 10		5	; slot10 = slot5
			 80	[  0]	TDUP 	 11		6	; slot11 = copy table#k6
			 81	[  0]	TDUP 	 12		5	; slot12 = copy table#k5
			 82	[  0]	GGET 	 13		19	; slot13 = _env["math"]
			 83	[  0]	TGETS	 13	13	4	; slot13 = math.huge
			 84	[  0]	TSETS	 13	12	3	; slot12.stopAt = math.huge
			 85	[  0]	TSETS	 12	11	2	; slot11.timing = slot12
			 86	[  0]	CALL 	  6	2	5	; slot6 = <unknown table>.startSingleReelRespin(slot7, slot8, math.floor, slot10)
			 87	[  0]	IST  	   		6	; if <unknown table>.startSingleReelRespin
			 88	[  0]	JMP  	  7		8	; 	goto 97
			 89	[  0]	KSTR 	  7		20	; slot7 = "choose"
			 90	[  0]	TSETS	  7	2	21	; <unknown table>._luckyNail.phase = slot7
			 91	[  0]	KPRI 	  7		0	; slot7 = nil
			 92	[  0]	TSETS	  7	2	9	; <unknown table>._luckyNail.selected = slot7
			 93	[  0]	KPRI 	  7		0	; slot7 = nil
			 94	[  0]	TSETS	  7	2	8	; <unknown table>._luckyNail.col = slot7
			 95	[  0]	KPRI 	  7		1	; slot7 = false
			 96	[  0]	RET1 	  7		2	; return slot7
			 97	[  0]	TGETS	  7	0	1	; slot7 = slot0.result
			 98	[  0]	KPRI 	  8		2	; slot8 = true
			 99	[  0]	TSETS	  8	7	0	; <unknown table>.result._luckyNailRespin = slot8
			100	[  0]	KPRI 	  7		2	; slot7 = true
			101	[  0]	RET1 	  7		2	; return slot7
		 23	[  0]	TSETS	  3	1	64	; slot1.selectLuckyNailCandidate = slot3
		 24	[  0]	FNEW 	  3		61	; N/A:0-0: 1 args, 0 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	TGETS	  1	0	12	; slot1 = slot0._luckyNail
			  2	[  0]	ISF  	   		1	; if not <unknown table>._luckyNail
			  3	[  0]	JMP  	  2		6	; 	goto 10
			  4	[  0]	TGETS	  2	1	11	; slot2 = <unknown table>._luckyNail.active
			  5	[  0]	ISF  	   		2	; if not <unknown table>._luckyNail.active
			  6	[  0]	JMP  	  3		3	; 	goto 10
			  7	[  0]	TGETS	  2	1	10	; slot2 = <unknown table>._luckyNail.phase
			  8	[  0]	ISEQS	  2		9	; if <unknown table>._luckyNail.phase == "spinning"
			  9	[  0]	JMP  	  2		2	; 	goto 12
			 10	[  0]	KPRI 	  2		1	; slot2 = false
			 11	[  0]	RET1 	  2		2	; return slot2
			 12	[  0]	KSTR 	  2		8	; slot2 = "stopping"
			 13	[  0]	TSETS	  2	1	10	; <unknown table>._luckyNail.phase = slot2
			 14	[  0]	KPRI 	  2		2	; slot2 = true
			 15	[  0]	TSETS	  2	1	7	; <unknown table>._luckyNail.stopQueued = slot2
			 16	[  0]	TGETS	  2	0	6	; slot2 = slot0.reels
			 17	[  0]	ISF  	   		2	; if not <unknown table>.reels
			 18	[  0]	JMP  	  3		3	; 	goto 22
			 19	[  0]	TGETS	  2	0	6	; slot2 = slot0.reels
			 20	[  0]	TGETS	  3	1	5	; slot3 = <unknown table>._luckyNail.col
			 21	[  0]	TGETV	  2	2	3	; slot2 = <unknown table>.reels[<unknown table>._luckyNail.col]
			 22	[  0]	ISF  	   		2	; if not slot2
			 23	[  0]	JMP  	  3		10	; 	goto 34
			 24	[  0]	TGETS	  3	2	4	; slot3 = slot2.manualStop
			 25	[  0]	ISF  	   		3	; if not <unknown table>.manualStop
			 26	[  0]	JMP  	  4		7	; 	goto 34
			 27	[  0]	KPRI 	  3		2	; slot3 = true
			 28	[  0]	TSETS	  3	2	3	; slot2.manualStopRequested = slot3
			 29	[  0]	TGETS	  3	2	2	; slot3 = slot2.state
			 30	[  0]	ISNES	  3		1	; if <unknown table>.state ~= "accelerate"
			 31	[  0]	JMP  	  3		2	; 	goto 34
			 32	[  0]	KSTR 	  3		0	; slot3 = "cruise"
			 33	[  0]	TSETS	  3	2	2	; slot2.state = slot3
			 34	[  0]	KPRI 	  3		2	; slot3 = true
			 35	[  0]	RET1 	  3		2	; return slot3
		 25	[  0]	TSETS	  3	1	62	; slot1.requestLuckyNailStop = slot3
		 26	[  0]	FNEW 	  3		59	; N/A:0-0: 2 args, 0 upvalues, 7 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	MOV  	  4		0	; slot4 = slot0
			  2	[  0]	TGETS	  2	0	5	; slot2 = slot0.beginLuckyNailChoice
			  3	[  0]	MOV  	  5		1	; slot5 = slot1
			  4	[  0]	CALL 	  2	2	3	; slot2 = <unknown table>.beginLuckyNailChoice(slot3, slot4)
			  5	[  0]	IST  	   		2	; if slot2
			  6	[  0]	JMP  	  2		2	; 	goto 9
			  7	[  0]	KPRI 	  2		1	; slot2 = false
			  8	[  0]	RET1 	  2		2	; return slot2
			  9	[  0]	GGET 	  2		4	; slot2 = _env["love"]
			 10	[  0]	TGETS	  2	2	3	; slot2 = love.math
			 11	[  0]	TGETS	  2	2	2	; slot2 = love.math.random
			 12	[  0]	LEN  	  4		1	; slot4 = #slot1
			 13	[  0]	CALL 	  2	2	2	; slot2 = love.math.random(slot3)
			 14	[  0]	TGETV	  2	1	2	; slot2 = slot1[slot2]
			 15	[  0]	MOV  	  5		0	; slot5 = slot0
			 16	[  0]	TGETS	  3	0	1	; slot3 = slot0.selectLuckyNailCandidate
			 17	[  0]	MOV  	  6		2	; slot6 = slot2
			 18	[  0]	CALL 	  3	2	3	; slot3 = <unknown table>.selectLuckyNailCandidate(slot4, slot5)
			 19	[  0]	ISF  	   		3	; if not slot3
			 20	[  0]	JMP  	  4		2	; 	goto 23
			 21	[  0]	KPRI 	  3		2	; slot3 = true
			 22	[  0]	RET1 	  3		2	; return slot3
			 23	[  0]	KPRI 	  3		0	; slot3 = nil
			 24	[  0]	TSETS	  3	0	0	; slot0._luckyNail = slot3
			 25	[  0]	KPRI 	  3		1	; slot3 = false
			 26	[  0]	RET1 	  3		2	; return slot3
		 27	[  0]	TSETS	  3	1	60	; slot1.beginLuckyNailAuto = slot3
		 28	[  0]	FNEW 	  3		57	; N/A:0-0: 3 args, 0 upvalues, 17 slots
			
			;;;; constant tables ;;;;
			ktable#27 = [
				[started] = false,
				]
			
			
			ktable#30 = [
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  3		40	; slot3 = _env["type"]
			  2	[  0]	MOV  	  5		1	; slot5 = slot1
			  3	[  0]	CALL 	  3	2	2	; slot3 = type(slot4)
			  4	[  0]	ISNES	  3		39	; if type ~= "table"
			  5	[  0]	JMP  	  3		4	; 	goto 10
			  6	[  0]	LEN  	  3		1	; slot3 = #slot1
			  7	[  0]	KSHORT	  4		0	; slot4 = 0
			  8	[  0]	ISGT 	  3		4	; if slot3 > slot4
			  9	[  0]	JMP  	  3		2	; 	goto 12
			 10	[  0]	KPRI 	  3		1	; slot3 = false
			 11	[  0]	RET1 	  3		2	; return slot3
			 12	[  0]	TGETS	  3	0	38	; slot3 = slot0.ui
			 13	[  0]	ISF  	   		3	; if not <unknown table>.ui
			 14	[  0]	JMP  	  4		9	; 	goto 24
			 15	[  0]	TGETS	  3	0	38	; slot3 = slot0.ui
			 16	[  0]	TGETS	  3	3	37	; slot3 = <unknown table>.ui.slot
			 17	[  0]	ISF  	   		3	; if not <unknown table>.ui.slot
			 18	[  0]	JMP  	  4		5	; 	goto 24
			 19	[  0]	TGETS	  3	0	38	; slot3 = slot0.ui
			 20	[  0]	TGETS	  3	3	37	; slot3 = <unknown table>.ui.slot
			 21	[  0]	TGETS	  3	3	36	; slot3 = <unknown table>.ui.slot.cols
			 22	[  0]	IST  	   		3	; if <unknown table>.ui.slot.cols
			 23	[  0]	JMP  	  4		1	; 	goto 25
			 24	[  0]	KSHORT	  3		0	; slot3 = 0
			 25	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
			 26	[  0]	GGET 	  5		35	; slot5 = _env["ipairs"]
			 27	[  0]	MOV  	  7		1	; slot7 = slot1
			 28	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
			 29	[  0]	JMP  	  8		34	; 	goto 64
			 30	[  0]	GGET 	 10		34	; slot10 = _env["tonumber"]
			 31	[  0]	ISFC 	 12		9	; slot12 = slot9; if not slot9
			 32	[  0]	JMP  	 12		1	; 	goto 34
			 33	[  0]	TGETS	 12	9	33	; slot12 = slot9.col
			 34	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
			 35	[  0]	ISFC 	 11		9	; slot11 = slot9; if not slot9
			 36	[  0]	JMP  	 11		1	; 	goto 38
			 37	[  0]	TGETS	 11	9	32	; slot11 = slot9.targetFinalSymbols
			 38	[  0]	ISF  	   		10	; if not tonumber
			 39	[  0]	JMP  	 12		24	; 	goto 64
			 40	[  0]	KSHORT	 12		1	; slot12 = 1
			 41	[  0]	ISGT 	 12		10	; if slot12 > tonumber
			 42	[  0]	JMP  	 12		21	; 	goto 64
			 43	[  0]	ISGT 	 10		3	; if tonumber > slot3
			 44	[  0]	JMP  	 12		19	; 	goto 64
			 45	[  0]	ISF  	   		11	; if not <unknown table>.targetFinalSymbols
			 46	[  0]	JMP  	 12		17	; 	goto 64
			 47	[  0]	GGET 	 12		39	; slot12 = _env["table"]
			 48	[  0]	TGETS	 12	12	31	; slot12 = table.insert
			 49	[  0]	MOV  	 14		4	; slot14 = slot4
			 50	[  0]	TDUP 	 15		30	; slot15 = copy table#k30
			 51	[  0]	TSETS	 10	15	33	; slot15.col = tonumber
			 52	[  0]	TSETS	 11	15	32	; slot15.targetFinalSymbols = <unknown table>.targetFinalSymbols
			 53	[  0]	TGETS	 16	9	29	; slot16 = slot9.timing
			 54	[  0]	IST  	   		16	; if <unknown table>.timing
			 55	[  0]	JMP  	 17		6	; 	goto 62
			 56	[  0]	ISF  	   		2	; if not slot2
			 57	[  0]	JMP  	 16		3	; 	goto 61
			 58	[  0]	TGETS	 16	2	29	; slot16 = slot2.timing
			 59	[  0]	IST  	   		16	; if <unknown table>.timing
			 60	[  0]	JMP  	 17		1	; 	goto 62
			 61	[  0]	KPRI 	 16		0	; slot16 = nil
			 62	[  0]	TSETS	 16	15	29	; slot15.timing = slot16
			 63	[  0]	CALL 	 12	1	3	;  = table.insert(slot13, slot14)
			 64	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
			 65	[  0]	ITERL	  8		-36	; slot7 = slot8; if slot8 != nil goto 30
			 66	[  0]	LEN  	  5		4	; slot5 = #slot4
			 67	[  0]	KSHORT	  6		0	; slot6 = 0
			 68	[  0]	ISGT 	  5		6	; if slot5 > slot6
			 69	[  0]	JMP  	  5		2	; 	goto 72
			 70	[  0]	KPRI 	  5		1	; slot5 = false
			 71	[  0]	RET1 	  5		2	; return slot5
			 72	[  0]	TDUP 	  5		27	; slot5 = copy table#k27
			 73	[  0]	TSETS	  4	5	26	; slot5.reels = slot4
			 74	[  0]	GGET 	  6		25	; slot6 = _env["math"]
			 75	[  0]	TGETS	  6	6	24	; slot6 = math.max
			 76	[  0]	KSHORT	  8		0	; slot8 = 0
			 77	[  0]	GGET 	  9		34	; slot9 = _env["tonumber"]
			 78	[  0]	ISF  	   		2	; if not slot2
			 79	[  0]	JMP  	 11		3	; 	goto 83
			 80	[  0]	TGETS	 11	2	23	; slot11 = slot2.delay
			 81	[  0]	IST  	   		11	; if <unknown table>.delay
			 82	[  0]	JMP  	 12		1	; 	goto 84
			 83	[  0]	KSHORT	 11		0	; slot11 = 0
			 84	[  0]	CALL 	  9	2	2	; slot9 = tonumber(tonumber)
			 85	[  0]	IST  	   		9	; if tonumber
			 86	[  0]	JMP  	 10		1	; 	goto 88
			 87	[  0]	KSHORT	  9		0	; slot9 = 0
			 88	[  0]	CALL 	  6	2	3	; slot6 = math.max(slot7, slot8)
			 89	[  0]	TSETS	  6	5	23	; slot5.delay = math.max
			 90	[  0]	ISF  	   		2	; if not slot2
			 91	[  0]	JMP  	  6		3	; 	goto 95
			 92	[  0]	TGETS	  6	2	29	; slot6 = slot2.timing
			 93	[  0]	IST  	   		6	; if <unknown table>.timing
			 94	[  0]	JMP  	  7		1	; 	goto 96
			 95	[  0]	KPRI 	  6		0	; slot6 = nil
			 96	[  0]	TSETS	  6	5	29	; slot5.timing = slot6
			 97	[  0]	ISFC 	  6		2	; slot6 = slot2; if not slot2
			 98	[  0]	JMP  	  6		6	; 	goto 105
			 99	[  0]	TGETS	  6	2	22	; slot6 = slot2.newWinsOnly
			100	[  0]	ISEQP	  6		2	; if <unknown table>.newWinsOnly == true
			101	[  0]	JMP  	  6		2	; 	goto 104
			102	[  0]	KPRI 	  6		1	; slot6 = false
			103	[  0]	JMP  	  7		1	; 	goto 105
			104	[  0]	KPRI 	  6		2	; slot6 = true
			105	[  0]	TSETS	  6	5	22	; slot5.newWinsOnly = slot6
			106	[  0]	ISFC 	  6		2	; slot6 = slot2; if not slot2
			107	[  0]	JMP  	  6		6	; 	goto 114
			108	[  0]	TGETS	  6	2	21	; slot6 = slot2.allowPostEvaluateChain
			109	[  0]	ISEQP	  6		2	; if <unknown table>.allowPostEvaluateChain == true
			110	[  0]	JMP  	  6		2	; 	goto 113
			111	[  0]	KPRI 	  6		1	; slot6 = false
			112	[  0]	JMP  	  7		1	; 	goto 114
			113	[  0]	KPRI 	  6		2	; slot6 = true
			114	[  0]	TSETS	  6	5	21	; slot5.allowPostEvaluateChain = slot6
			115	[  0]	ISF  	   		2	; if not slot2
			116	[  0]	JMP  	  6		3	; 	goto 120
			117	[  0]	TGETS	  6	2	20	; slot6 = slot2.coreKey
			118	[  0]	IST  	   		6	; if <unknown table>.coreKey
			119	[  0]	JMP  	  7		1	; 	goto 121
			120	[  0]	KPRI 	  6		0	; slot6 = nil
			121	[  0]	TSETS	  6	5	20	; slot5.coreKey = slot6
			122	[  0]	ISF  	   		2	; if not slot2
			123	[  0]	JMP  	  6		3	; 	goto 127
			124	[  0]	TGETS	  6	2	19	; slot6 = slot2.coreRespinPhase
			125	[  0]	IST  	   		6	; if <unknown table>.coreRespinPhase
			126	[  0]	JMP  	  7		1	; 	goto 128
			127	[  0]	KPRI 	  6		0	; slot6 = nil
			128	[  0]	TSETS	  6	5	19	; slot5.coreRespinPhase = slot6
			129	[  0]	TSETS	  5	0	28	; slot0._singleReelRespin = slot5
			130	[  0]	KPRI 	  5		2	; slot5 = true
			131	[  0]	TSETS	  5	0	18	; slot0._skipPostEvaluateHookOnce = slot5
			132	[  0]	TGETS	  5	0	17	; slot5 = slot0.spin
			133	[  0]	KPRI 	  6		2	; slot6 = true
			134	[  0]	TSETS	  6	5	16	; <unknown table>.spin.active = slot6
			135	[  0]	TGETS	  5	0	17	; slot5 = slot0.spin
			136	[  0]	KPRI 	  6		2	; slot6 = true
			137	[  0]	TSETS	  6	5	15	; <unknown table>.spin.started = slot6
			138	[  0]	TGETS	  5	0	17	; slot5 = slot0.spin
			139	[  0]	KSHORT	  6		0	; slot6 = 0
			140	[  0]	TSETS	  6	5	14	; <unknown table>.spin.t = slot6
			141	[  0]	TGETS	  5	0	13	; slot5 = slot0.result
			142	[  0]	KPRI 	  6		1	; slot6 = false
			143	[  0]	TSETS	  6	5	12	; <unknown table>.result.checked = slot6
			144	[  0]	TGETS	  5	0	13	; slot5 = slot0.result
			145	[  0]	KPRI 	  6		1	; slot6 = false
			146	[  0]	TSETS	  6	5	11	; <unknown table>.result.won = slot6
			147	[  0]	TGETS	  5	0	13	; slot5 = slot0.result
			148	[  0]	KPRI 	  6		0	; slot6 = nil
			149	[  0]	TSETS	  6	5	10	; <unknown table>.result.winningLines = slot6
			150	[  0]	TGETS	  5	0	13	; slot5 = slot0.result
			151	[  0]	KPRI 	  6		0	; slot6 = nil
			152	[  0]	TSETS	  6	5	9	; <unknown table>.result.symbol = slot6
			153	[  0]	TGETS	  5	0	13	; slot5 = slot0.result
			154	[  0]	KPRI 	  6		1	; slot6 = false
			155	[  0]	TSETS	  6	5	8	; <unknown table>.result.awarded = slot6
			156	[  0]	TGETS	  5	0	13	; slot5 = slot0.result
			157	[  0]	KPRI 	  6		1	; slot6 = false
			158	[  0]	TSETS	  6	5	7	; <unknown table>.result.highlightActive = slot6
			159	[  0]	TGETS	  5	0	13	; slot5 = slot0.result
			160	[  0]	KPRI 	  6		1	; slot6 = false
			161	[  0]	TSETS	  6	5	6	; <unknown table>.result.fxStarted = slot6
			162	[  0]	TGETS	  5	0	13	; slot5 = slot0.result
			163	[  0]	KPRI 	  6		0	; slot6 = nil
			164	[  0]	TSETS	  6	5	5	; <unknown table>.result.winSeq = slot6
			165	[  0]	TGETS	  5	0	13	; slot5 = slot0.result
			166	[  0]	KPRI 	  6		0	; slot6 = nil
			167	[  0]	TSETS	  6	5	4	; <unknown table>.result.visibleWinningLines = slot6
			168	[  0]	TGETS	  5	0	13	; slot5 = slot0.result
			169	[  0]	ISFC 	  6		2	; slot6 = slot2; if not slot2
			170	[  0]	JMP  	  6		6	; 	goto 177
			171	[  0]	TGETS	  6	2	2	; slot6 = slot2.twistedBellReroll
			172	[  0]	ISEQP	  6		2	; if <unknown table>.twistedBellReroll == true
			173	[  0]	JMP  	  6		2	; 	goto 176
			174	[  0]	KPRI 	  6		1	; slot6 = false
			175	[  0]	JMP  	  7		1	; 	goto 177
			176	[  0]	KPRI 	  6		2	; slot6 = true
			177	[  0]	TSETS	  6	5	3	; <unknown table>.result._twistedBellRerolled = slot6
			178	[  0]	TGETS	  5	0	13	; slot5 = slot0.result
			179	[  0]	KPRI 	  6		0	; slot6 = nil
			180	[  0]	TSETS	  6	5	1	; <unknown table>.result._completedCoreRespinKey = slot6
			181	[  0]	TGETS	  5	0	13	; slot5 = slot0.result
			182	[  0]	KPRI 	  6		0	; slot6 = nil
			183	[  0]	TSETS	  6	5	0	; <unknown table>.result._completedCoreRespinPhase = slot6
			184	[  0]	KPRI 	  5		2	; slot5 = true
			185	[  0]	RET1 	  5		2	; return slot5
		 29	[  0]	TSETS	  3	1	58	; slot1.startMultiReelRespin = slot3
		 30	[  0]	FNEW 	  3		55	; N/A:0-0: 5 args, 0 upvalues, 7 slots
			
			;;;; constant tables ;;;;
			ktable#6 = [
				[open] = true,
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	TGETS	  5	0	7	; slot5 = slot0._copycapPending
			  2	[  0]	ISF  	   		5	; if not <unknown table>._copycapPending
			  3	[  0]	JMP  	  6		2	; 	goto 6
			  4	[  0]	KPRI 	  5		1	; slot5 = false
			  5	[  0]	RET1 	  5		2	; return slot5
			  6	[  0]	TDUP 	  5		6	; slot5 = copy table#k6
			  7	[  0]	TSETS	  1	5	5	; slot5.row = slot1
			  8	[  0]	TSETS	  2	5	4	; slot5.col = slot2
			  9	[  0]	TSETS	  3	5	3	; slot5.targetSymbol = slot3
			 10	[  0]	ISTC 	  6		4	; slot6 = slot4; if slot4
			 11	[  0]	JMP  	  6		1	; 	goto 13
			 12	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
			 13	[  0]	TSETS	  6	5	2	; slot5.opts = slot6
			 14	[  0]	TGETS	  6	0	1	; slot6 = slot0.result
			 15	[  0]	TSETS	  6	5	1	; slot5.result = <unknown table>.result
			 16	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
			 17	[  0]	TSETS	  6	5	0	; slot5.paidWinningSymbols = slot6
			 18	[  0]	TSETS	  5	0	7	; slot0._copycapPending = slot5
			 19	[  0]	KPRI 	  5		2	; slot5 = true
			 20	[  0]	RET1 	  5		2	; return slot5
		 31	[  0]	TSETS	  3	1	56	; slot1.prepareCopycapMorph = slot3
		 32	[  0]	FNEW 	  3		53	; N/A:0-0: 1 args, 0 upvalues, 2 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	TGETS	  1	0	1	; slot1 = slot0._copycapPending
			  2	[  0]	ISEQP	  1		0	; if <unknown table>._copycapPending == nil
			  3	[  0]	JMP  	  1		4	; 	goto 8
			  4	[  0]	TGETS	  1	0	1	; slot1 = slot0._copycapPending
			  5	[  0]	TGETS	  1	1	0	; slot1 = <unknown table>._copycapPending.open
			  6	[  0]	ISEQP	  1		2	; if <unknown table>._copycapPending.open == true
			  7	[  0]	JMP  	  1		2	; 	goto 10
			  8	[  0]	KPRI 	  1		1	; slot1 = false
			  9	[  0]	JMP  	  2		1	; 	goto 11
			 10	[  0]	KPRI 	  1		2	; slot1 = true
			 11	[  0]	RET1 	  1		2	; return slot1
		 33	[  0]	TSETS	  3	1	54	; slot1.canNudgeBeforeCopycap = slot3
		 34	[  0]	FNEW 	  3		51	; N/A:0-0: 2 args, 0 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	ISTC 	  2		1	; slot2 = slot1; if slot1
			  2	[  0]	JMP  	  2		1	; 	goto 4
			  3	[  0]	KSHORT	  2		0	; slot2 = 0
			  4	[  0]	TGETS	  3	0	2	; slot3 = slot0._copycapPending
			  5	[  0]	IST  	   		3	; if <unknown table>._copycapPending
			  6	[  0]	JMP  	  4		6	; 	goto 13
			  7	[  0]	TGETS	  3	0	1	; slot3 = slot0._cellIconMorph
			  8	[  0]	IST  	   		3	; if <unknown table>._cellIconMorph
			  9	[  0]	JMP  	  4		3	; 	goto 13
			 10	[  0]	TGETS	  3	0	0	; slot3 = slot0._cellIconMorphImpactDelay
			 11	[  0]	ISF  	   		3	; if not <unknown table>._cellIconMorphImpactDelay
			 12	[  0]	JMP  	  4		2	; 	goto 15
			 13	[  0]	KSHORT	  3		1	; slot3 = 1
			 14	[  0]	JMP  	  4		1	; 	goto 16
			 15	[  0]	KSHORT	  3		0	; slot3 = 0
			 16	[  0]	ADDVV	  2	2	3	; slot2 = slot2 + slot3
			 17	[  0]	RET1 	  2		2	; return slot2
		 35	[  0]	TSETS	  3	1	52	; slot1.getNudgeSpinIndex = slot3
		 36	[  0]	FNEW 	  3		49	; N/A:0-0: 1 args, 0 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	TGETS	  1	0	4	; slot1 = slot0._copycapPending
			  2	[  0]	IST  	   		1	; if <unknown table>._copycapPending
			  3	[  0]	JMP  	  2		2	; 	goto 6
			  4	[  0]	KPRI 	  2		1	; slot2 = false
			  5	[  0]	RET1 	  2		2	; return slot2
			  6	[  0]	KPRI 	  2		1	; slot2 = false
			  7	[  0]	TSETS	  2	1	3	; <unknown table>._copycapPending.open = slot2
			  8	[  0]	KPRI 	  2		2	; slot2 = true
			  9	[  0]	TSETS	  2	1	2	; <unknown table>._copycapPending.ready = slot2
			 10	[  0]	TGETS	  2	0	1	; slot2 = slot0.spin
			 11	[  0]	KPRI 	  3		2	; slot3 = true
			 12	[  0]	TSETS	  3	2	0	; <unknown table>.spin.active = slot3
			 13	[  0]	KPRI 	  2		2	; slot2 = true
			 14	[  0]	RET1 	  2		2	; return slot2
		 37	[  0]	TSETS	  3	1	50	; slot1.releaseCopycapMorph = slot3
		 38	[  0]	FNEW 	  3		47	; N/A:0-0: 5 args, 0 upvalues, 14 slots
			
			;;;; constant tables ;;;;
			ktable#16 = [
				[t] = 0,
				[active] = true,
				[phase] = cycle,
				]
			
			
			ktable#29 = [
				[t] = 0,
				[phase] = cycle,
				[nextCycleT] = 0,
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  5		41	; slot5 = _env["tonumber"]
			  2	[  0]	MOV  	  7		1	; slot7 = slot1
			  3	[  0]	CALL 	  5	2	2	; slot5 = tonumber(slot6)
			  4	[  0]	MOV  	  1		5	; slot1 = tonumber
			  5	[  0]	GGET 	  5		41	; slot5 = _env["tonumber"]
			  6	[  0]	MOV  	  7		2	; slot7 = slot2
			  7	[  0]	CALL 	  5	2	2	; slot5 = tonumber(slot6)
			  8	[  0]	MOV  	  2		5	; slot2 = tonumber
			  9	[  0]	ISF  	   		1	; if not tonumber
			 10	[  0]	JMP  	  5		18	; 	goto 29
			 11	[  0]	KSHORT	  5		1	; slot5 = 1
			 12	[  0]	ISLT 	  1		5	; if tonumber < slot5
			 13	[  0]	JMP  	  5		15	; 	goto 29
			 14	[  0]	TGETS	  5	0	40	; slot5 = slot0.ui
			 15	[  0]	ISF  	   		5	; if not <unknown table>.ui
			 16	[  0]	JMP  	  6		9	; 	goto 26
			 17	[  0]	TGETS	  5	0	40	; slot5 = slot0.ui
			 18	[  0]	TGETS	  5	5	39	; slot5 = <unknown table>.ui.slot
			 19	[  0]	ISF  	   		5	; if not <unknown table>.ui.slot
			 20	[  0]	JMP  	  6		5	; 	goto 26
			 21	[  0]	TGETS	  5	0	40	; slot5 = slot0.ui
			 22	[  0]	TGETS	  5	5	39	; slot5 = <unknown table>.ui.slot
			 23	[  0]	TGETS	  5	5	38	; slot5 = <unknown table>.ui.slot.rows
			 24	[  0]	IST  	   		5	; if <unknown table>.ui.slot.rows
			 25	[  0]	JMP  	  6		1	; 	goto 27
			 26	[  0]	KSHORT	  5		0	; slot5 = 0
			 27	[  0]	ISGE 	  5		1	; if slot5 >= tonumber
			 28	[  0]	JMP  	  5		2	; 	goto 31
			 29	[  0]	KPRI 	  5		1	; slot5 = false
			 30	[  0]	RET1 	  5		2	; return slot5
			 31	[  0]	ISF  	   		2	; if not tonumber
			 32	[  0]	JMP  	  5		18	; 	goto 51
			 33	[  0]	KSHORT	  5		1	; slot5 = 1
			 34	[  0]	ISLT 	  2		5	; if tonumber < slot5
			 35	[  0]	JMP  	  5		15	; 	goto 51
			 36	[  0]	TGETS	  5	0	40	; slot5 = slot0.ui
			 37	[  0]	ISF  	   		5	; if not <unknown table>.ui
			 38	[  0]	JMP  	  6		9	; 	goto 48
			 39	[  0]	TGETS	  5	0	40	; slot5 = slot0.ui
			 40	[  0]	TGETS	  5	5	39	; slot5 = <unknown table>.ui.slot
			 41	[  0]	ISF  	   		5	; if not <unknown table>.ui.slot
			 42	[  0]	JMP  	  6		5	; 	goto 48
			 43	[  0]	TGETS	  5	0	40	; slot5 = slot0.ui
			 44	[  0]	TGETS	  5	5	39	; slot5 = <unknown table>.ui.slot
			 45	[  0]	TGETS	  5	5	37	; slot5 = <unknown table>.ui.slot.cols
			 46	[  0]	IST  	   		5	; if <unknown table>.ui.slot.cols
			 47	[  0]	JMP  	  6		1	; 	goto 49
			 48	[  0]	KSHORT	  5		0	; slot5 = 0
			 49	[  0]	ISGE 	  5		2	; if slot5 >= tonumber
			 50	[  0]	JMP  	  5		2	; 	goto 53
			 51	[  0]	KPRI 	  5		1	; slot5 = false
			 52	[  0]	RET1 	  5		2	; return slot5
			 53	[  0]	IST  	   		3	; if slot3
			 54	[  0]	JMP  	  5		2	; 	goto 57
			 55	[  0]	KPRI 	  5		1	; slot5 = false
			 56	[  0]	RET1 	  5		2	; return slot5
			 57	[  0]	TGETS	  5	0	36	; slot5 = slot0.grid
			 58	[  0]	IST  	   		5	; if <unknown table>.grid
			 59	[  0]	JMP  	  6		1	; 	goto 61
			 60	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
			 61	[  0]	TSETS	  5	0	36	; slot0.grid = slot5
			 62	[  0]	TGETS	  5	0	36	; slot5 = slot0.grid
			 63	[  0]	TGETS	  6	0	36	; slot6 = slot0.grid
			 64	[  0]	TGETV	  6	6	1	; slot6 = <unknown table>.grid[tonumber]
			 65	[  0]	IST  	   		6	; if slot6
			 66	[  0]	JMP  	  7		1	; 	goto 68
			 67	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
			 68	[  0]	TSETV	  6	5	1	; <unknown table>.grid[tonumber] = slot6
			 69	[  0]	TGETS	  5	0	35	; slot5 = slot0.reels
			 70	[  0]	TGETS	  6	0	35	; slot6 = slot0.reels
			 71	[  0]	TGETV	  6	6	2	; slot6 = <unknown table>.reels[tonumber]
			 72	[  0]	IST  	   		6	; if slot6
			 73	[  0]	JMP  	  7		1	; 	goto 75
			 74	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
			 75	[  0]	TSETV	  6	5	2	; <unknown table>.reels[tonumber] = slot6
			 76	[  0]	TGETS	  5	0	35	; slot5 = slot0.reels
			 77	[  0]	TGETV	  5	5	2	; slot5 = <unknown table>.reels[tonumber]
			 78	[  0]	TGETS	  6	5	34	; slot6 = slot5.finalSymbols
			 79	[  0]	IST  	   		6	; if <unknown table>.finalSymbols
			 80	[  0]	JMP  	  7		25	; 	goto 106
			 81	[  0]	TNEW 	  6		4	; slot6 = new table( array: 4, dict: 1)
			 82	[  0]	TGETS	  7	0	36	; slot7 = slot0.grid
			 83	[  0]	TGETB	  7	7	1	; slot7 = <unknown table>.grid[1]
			 84	[  0]	ISF  	   		7	; if not slot7
			 85	[  0]	JMP  	  8		3	; 	goto 89
			 86	[  0]	TGETS	  7	0	36	; slot7 = slot0.grid
			 87	[  0]	TGETB	  7	7	1	; slot7 = <unknown table>.grid[1]
			 88	[  0]	TGETV	  7	7	2	; slot7 = slot7[tonumber]
			 89	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
			 90	[  0]	TGETS	  7	0	36	; slot7 = slot0.grid
			 91	[  0]	TGETB	  7	7	2	; slot7 = <unknown table>.grid[2]
			 92	[  0]	ISF  	   		7	; if not slot7
			 93	[  0]	JMP  	  8		3	; 	goto 97
			 94	[  0]	TGETS	  7	0	36	; slot7 = slot0.grid
			 95	[  0]	TGETB	  7	7	2	; slot7 = <unknown table>.grid[2]
			 96	[  0]	TGETV	  7	7	2	; slot7 = slot7[tonumber]
			 97	[  0]	TSETB	  7	6	2	; slot6[2] = slot7
			 98	[  0]	TGETS	  7	0	36	; slot7 = slot0.grid
			 99	[  0]	TGETB	  7	7	3	; slot7 = <unknown table>.grid[3]
			100	[  0]	ISF  	   		7	; if not slot7
			101	[  0]	JMP  	  8		3	; 	goto 105
			102	[  0]	TGETS	  7	0	36	; slot7 = slot0.grid
			103	[  0]	TGETB	  7	7	3	; slot7 = <unknown table>.grid[3]
			104	[  0]	TGETV	  7	7	2	; slot7 = slot7[tonumber]
			105	[  0]	TSETB	  7	6	3	; slot6[3] = slot7
			106	[  0]	TSETS	  6	5	34	; slot5.finalSymbols = slot6
			107	[  0]	GGET 	  6		33	; slot6 = _env["math"]
			108	[  0]	TGETS	  6	6	32	; slot6 = math.max
			109	[  0]	KNUM 	  8		0	; slot8 = 0.1
			110	[  0]	GGET 	  9		41	; slot9 = _env["tonumber"]
			111	[  0]	ISF  	   		4	; if not slot4
			112	[  0]	JMP  	 11		3	; 	goto 116
			113	[  0]	TGETS	 11	4	31	; slot11 = slot4.duration
			114	[  0]	IST  	   		11	; if <unknown table>.duration
			115	[  0]	JMP  	 12		1	; 	goto 117
			116	[  0]	KNUM 	 11		1	; slot11 = 0.52
			117	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
			118	[  0]	IST  	   		9	; if tonumber
			119	[  0]	JMP  	 10		1	; 	goto 121
			120	[  0]	KNUM 	  9		1	; slot9 = 0.52
			121	[  0]	CALL 	  6	2	3	; slot6 = math.max(slot7, slot8)
			122	[  0]	TDUP 	  7		29	; slot7 = copy table#k29
			123	[  0]	TSETS	  1	7	28	; slot7.row = tonumber
			124	[  0]	TSETS	  2	7	27	; slot7.col = tonumber
			125	[  0]	TSETS	  3	7	26	; slot7.targetSymbol = slot3
			126	[  0]	TSETS	  6	7	25	; slot7.dur = math.max
			127	[  0]	GGET 	  8		33	; slot8 = _env["math"]
			128	[  0]	TGETS	  8	8	32	; slot8 = math.max
			129	[  0]	KNUM 	 10		2	; slot10 = 0.025
			130	[  0]	GGET 	 11		41	; slot11 = _env["tonumber"]
			131	[  0]	ISF  	   		4	; if not slot4
			132	[  0]	JMP  	 13		3	; 	goto 136
			133	[  0]	TGETS	 13	4	24	; slot13 = slot4.cycleInterval
			134	[  0]	IST  	   		13	; if <unknown table>.cycleInterval
			135	[  0]	JMP  	 14		1	; 	goto 137
			136	[  0]	KNUM 	 13		3	; slot13 = 0.045
			137	[  0]	CALL 	 11	2	2	; slot11 = tonumber(slot12)
			138	[  0]	IST  	   		11	; if tonumber
			139	[  0]	JMP  	 12		1	; 	goto 141
			140	[  0]	KNUM 	 11		3	; slot11 = 0.045
			141	[  0]	CALL 	  8	2	3	; slot8 = math.max(slot9, slot10)
			142	[  0]	TSETS	  8	7	24	; slot7.cycleInterval = math.max
			143	[  0]	GGET 	  8		33	; slot8 = _env["math"]
			144	[  0]	TGETS	  8	8	32	; slot8 = math.max
			145	[  0]	KNUM 	 10		0	; slot10 = 0.1
			146	[  0]	GGET 	 11		41	; slot11 = _env["tonumber"]
			147	[  0]	ISF  	   		4	; if not slot4
			148	[  0]	JMP  	 13		3	; 	goto 152
			149	[  0]	TGETS	 13	4	23	; slot13 = slot4.windupDur
			150	[  0]	IST  	   		13	; if <unknown table>.windupDur
			151	[  0]	JMP  	 14		1	; 	goto 153
			152	[  0]	KNUM 	 13		4	; slot13 = 0.28
			153	[  0]	CALL 	 11	2	2	; slot11 = tonumber(slot12)
			154	[  0]	IST  	   		11	; if tonumber
			155	[  0]	JMP  	 12		1	; 	goto 157
			156	[  0]	KNUM 	 11		4	; slot11 = 0.28
			157	[  0]	CALL 	  8	2	3	; slot8 = math.max(slot9, slot10)
			158	[  0]	TSETS	  8	7	23	; slot7.windupDur = math.max
			159	[  0]	GGET 	  8		33	; slot8 = _env["math"]
			160	[  0]	TGETS	  8	8	32	; slot8 = math.max
			161	[  0]	KNUM 	 10		0	; slot10 = 0.1
			162	[  0]	GGET 	 11		41	; slot11 = _env["tonumber"]
			163	[  0]	ISF  	   		4	; if not slot4
			164	[  0]	JMP  	 13		3	; 	goto 168
			165	[  0]	TGETS	 13	4	22	; slot13 = slot4.slamDur
			166	[  0]	IST  	   		13	; if <unknown table>.slamDur
			167	[  0]	JMP  	 14		1	; 	goto 169
			168	[  0]	KNUM 	 13		5	; slot13 = 0.22
			169	[  0]	CALL 	 11	2	2	; slot11 = tonumber(slot12)
			170	[  0]	IST  	   		11	; if tonumber
			171	[  0]	JMP  	 12		1	; 	goto 173
			172	[  0]	KNUM 	 11		5	; slot11 = 0.22
			173	[  0]	CALL 	  8	2	3	; slot8 = math.max(slot9, slot10)
			174	[  0]	TSETS	  8	7	22	; slot7.slamDur = math.max
			175	[  0]	GGET 	  8		33	; slot8 = _env["math"]
			176	[  0]	TGETS	  8	8	32	; slot8 = math.max
			177	[  0]	KNUM 	 10		0	; slot10 = 0.1
			178	[  0]	GGET 	 11		41	; slot11 = _env["tonumber"]
			179	[  0]	ISF  	   		4	; if not slot4
			180	[  0]	JMP  	 13		3	; 	goto 184
			181	[  0]	TGETS	 13	4	21	; slot13 = slot4.impactDur
			182	[  0]	IST  	   		13	; if <unknown table>.impactDur
			183	[  0]	JMP  	 14		1	; 	goto 185
			184	[  0]	KNUM 	 13		6	; slot13 = 0.3
			185	[  0]	CALL 	 11	2	2	; slot11 = tonumber(slot12)
			186	[  0]	IST  	   		11	; if tonumber
			187	[  0]	JMP  	 12		1	; 	goto 189
			188	[  0]	KNUM 	 11		6	; slot11 = 0.3
			189	[  0]	CALL 	  8	2	3	; slot8 = math.max(slot9, slot10)
			190	[  0]	TSETS	  8	7	21	; slot7.impactDur = math.max
			191	[  0]	GGET 	  8		33	; slot8 = _env["math"]
			192	[  0]	TGETS	  8	8	32	; slot8 = math.max
			193	[  0]	KSHORT	 10		0	; slot10 = 0
			194	[  0]	GGET 	 11		41	; slot11 = _env["tonumber"]
			195	[  0]	ISF  	   		4	; if not slot4
			196	[  0]	JMP  	 13		3	; 	goto 200
			197	[  0]	TGETS	 13	4	20	; slot13 = slot4.settleDelay
			198	[  0]	IST  	   		13	; if <unknown table>.settleDelay
			199	[  0]	JMP  	 14		1	; 	goto 201
			200	[  0]	KNUM 	 13		7	; slot13 = 0.08
			201	[  0]	CALL 	 11	2	2	; slot11 = tonumber(slot12)
			202	[  0]	IST  	   		11	; if tonumber
			203	[  0]	JMP  	 12		1	; 	goto 205
			204	[  0]	KNUM 	 11		7	; slot11 = 0.08
			205	[  0]	CALL 	  8	2	3	; slot8 = math.max(slot9, slot10)
			206	[  0]	TSETS	  8	7	20	; slot7.settleDelay = math.max
			207	[  0]	ISFC 	  8		4	; slot8 = slot4; if not slot4
			208	[  0]	JMP  	  8		1	; 	goto 210
			209	[  0]	TGETS	  8	4	19	; slot8 = slot4.paidWinningSymbols
			210	[  0]	TSETS	  8	7	19	; slot7.paidWinningSymbols = <unknown table>.paidWinningSymbols
			211	[  0]	ISFC 	  8		4	; slot8 = slot4; if not slot4
			212	[  0]	JMP  	  8		1	; 	goto 214
			213	[  0]	TGETS	  8	4	18	; slot8 = slot4.nudgeWon
			214	[  0]	TSETS	  8	7	18	; slot7.nudgeWon = <unknown table>.nudgeWon
			215	[  0]	TSETS	  7	0	30	; slot0._cellIconMorph = slot7
			216	[  0]	TDUP 	  7		16	; slot7 = copy table#k16
			217	[  0]	TSETS	  1	7	28	; slot7.row = tonumber
			218	[  0]	TSETS	  6	7	25	; slot7.dur = math.max
			219	[  0]	TGETS	  8	0	30	; slot8 = slot0._cellIconMorph
			220	[  0]	TGETS	  8	8	23	; slot8 = <unknown table>._cellIconMorph.windupDur
			221	[  0]	TSETS	  8	7	23	; slot7.windupDur = <unknown table>._cellIconMorph.windupDur
			222	[  0]	TGETS	  8	0	30	; slot8 = slot0._cellIconMorph
			223	[  0]	TGETS	  8	8	22	; slot8 = <unknown table>._cellIconMorph.slamDur
			224	[  0]	TSETS	  8	7	22	; slot7.slamDur = <unknown table>._cellIconMorph.slamDur
			225	[  0]	TGETS	  8	0	30	; slot8 = slot0._cellIconMorph
			226	[  0]	TGETS	  8	8	21	; slot8 = <unknown table>._cellIconMorph.impactDur
			227	[  0]	TSETS	  8	7	21	; slot7.impactDur = <unknown table>._cellIconMorph.impactDur
			228	[  0]	TSETS	  7	5	17	; slot5.cellMorph = slot7
			229	[  0]	TGETS	  7	0	15	; slot7 = slot0.result
			230	[  0]	KPRI 	  8		0	; slot8 = nil
			231	[  0]	TSETS	  8	7	14	; <unknown table>.result.newWinningLines = slot8
			232	[  0]	TGETS	  7	0	15	; slot7 = slot0.result
			233	[  0]	KPRI 	  8		0	; slot8 = nil
			234	[  0]	TSETS	  8	7	13	; <unknown table>.result.allWinningLinesAfterNudge = slot8
			235	[  0]	TGETS	  7	0	12	; slot7 = slot0.spin
			236	[  0]	KPRI 	  8		2	; slot8 = true
			237	[  0]	TSETS	  8	7	11	; <unknown table>.spin.active = slot8
			238	[  0]	TGETS	  7	0	12	; slot7 = slot0.spin
			239	[  0]	KPRI 	  8		2	; slot8 = true
			240	[  0]	TSETS	  8	7	10	; <unknown table>.spin.started = slot8
			241	[  0]	TGETS	  7	0	12	; slot7 = slot0.spin
			242	[  0]	KSHORT	  8		0	; slot8 = 0
			243	[  0]	TSETS	  8	7	9	; <unknown table>.spin.t = slot8
			244	[  0]	TGETS	  7	0	15	; slot7 = slot0.result
			245	[  0]	KPRI 	  8		1	; slot8 = false
			246	[  0]	TSETS	  8	7	8	; <unknown table>.result.checked = slot8
			247	[  0]	TGETS	  7	0	15	; slot7 = slot0.result
			248	[  0]	KPRI 	  8		1	; slot8 = false
			249	[  0]	TSETS	  8	7	7	; <unknown table>.result.won = slot8
			250	[  0]	TGETS	  7	0	15	; slot7 = slot0.result
			251	[  0]	KPRI 	  8		0	; slot8 = nil
			252	[  0]	TSETS	  8	7	6	; <unknown table>.result.winningLines = slot8
			253	[  0]	TGETS	  7	0	15	; slot7 = slot0.result
			254	[  0]	KPRI 	  8		0	; slot8 = nil
			255	[  0]	TSETS	  8	7	5	; <unknown table>.result.symbol = slot8
			256	[  0]	TGETS	  7	0	15	; slot7 = slot0.result
			257	[  0]	KPRI 	  8		1	; slot8 = false
			258	[  0]	TSETS	  8	7	4	; <unknown table>.result.awarded = slot8
			259	[  0]	TGETS	  7	0	15	; slot7 = slot0.result
			260	[  0]	KPRI 	  8		1	; slot8 = false
			261	[  0]	TSETS	  8	7	3	; <unknown table>.result.highlightActive = slot8
			262	[  0]	TGETS	  7	0	15	; slot7 = slot0.result
			263	[  0]	KPRI 	  8		1	; slot8 = false
			264	[  0]	TSETS	  8	7	2	; <unknown table>.result.fxStarted = slot8
			265	[  0]	TGETS	  7	0	15	; slot7 = slot0.result
			266	[  0]	KPRI 	  8		0	; slot8 = nil
			267	[  0]	TSETS	  8	7	1	; <unknown table>.result.winSeq = slot8
			268	[  0]	TGETS	  7	0	15	; slot7 = slot0.result
			269	[  0]	KPRI 	  8		0	; slot8 = nil
			270	[  0]	TSETS	  8	7	0	; <unknown table>.result.visibleWinningLines = slot8
			271	[  0]	KPRI 	  7		2	; slot7 = true
			272	[  0]	RET1 	  7		2	; return slot7
		 39	[  0]	TSETS	  3	1	48	; slot1.startCellIconMorph = slot3
		 40	[  0]	TNEW 	  3		9	; slot3 = new table( array: 9, dict: 1)
		 41	[  0]	TNEW 	  4		4	; slot4 = new table( array: 4, dict: 1)
		 42	[  0]	TDUP 	  5		46	; slot5 = copy table#k46
		 43	[  0]	TSETB	  5	4	1	; slot4[1] = slot5
		 44	[  0]	TDUP 	  5		45	; slot5 = copy table#k45
		 45	[  0]	TSETB	  5	4	2	; slot4[2] = slot5
		 46	[  0]	TDUP 	  5		44	; slot5 = copy table#k44
		 47	[  0]	TSETB	  5	4	3	; slot4[3] = slot5
		 48	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
		 49	[  0]	TNEW 	  4		4	; slot4 = new table( array: 4, dict: 1)
		 50	[  0]	TDUP 	  5		43	; slot5 = copy table#k43
		 51	[  0]	TSETB	  5	4	1	; slot4[1] = slot5
		 52	[  0]	TDUP 	  5		42	; slot5 = copy table#k42
		 53	[  0]	TSETB	  5	4	2	; slot4[2] = slot5
		 54	[  0]	TDUP 	  5		41	; slot5 = copy table#k41
		 55	[  0]	TSETB	  5	4	3	; slot4[3] = slot5
		 56	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
		 57	[  0]	TNEW 	  4		4	; slot4 = new table( array: 4, dict: 1)
		 58	[  0]	TDUP 	  5		40	; slot5 = copy table#k40
		 59	[  0]	TSETB	  5	4	1	; slot4[1] = slot5
		 60	[  0]	TDUP 	  5		39	; slot5 = copy table#k39
		 61	[  0]	TSETB	  5	4	2	; slot4[2] = slot5
		 62	[  0]	TDUP 	  5		38	; slot5 = copy table#k38
		 63	[  0]	TSETB	  5	4	3	; slot4[3] = slot5
		 64	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
		 65	[  0]	TNEW 	  4		4	; slot4 = new table( array: 4, dict: 1)
		 66	[  0]	TDUP 	  5		37	; slot5 = copy table#k37
		 67	[  0]	TSETB	  5	4	1	; slot4[1] = slot5
		 68	[  0]	TDUP 	  5		36	; slot5 = copy table#k36
		 69	[  0]	TSETB	  5	4	2	; slot4[2] = slot5
		 70	[  0]	TDUP 	  5		35	; slot5 = copy table#k35
		 71	[  0]	TSETB	  5	4	3	; slot4[3] = slot5
		 72	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
		 73	[  0]	TNEW 	  4		4	; slot4 = new table( array: 4, dict: 1)
		 74	[  0]	TDUP 	  5		34	; slot5 = copy table#k34
		 75	[  0]	TSETB	  5	4	1	; slot4[1] = slot5
		 76	[  0]	TDUP 	  5		33	; slot5 = copy table#k33
		 77	[  0]	TSETB	  5	4	2	; slot4[2] = slot5
		 78	[  0]	TDUP 	  5		32	; slot5 = copy table#k32
		 79	[  0]	TSETB	  5	4	3	; slot4[3] = slot5
		 80	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
		 81	[  0]	TNEW 	  4		4	; slot4 = new table( array: 4, dict: 1)
		 82	[  0]	TDUP 	  5		31	; slot5 = copy table#k31
		 83	[  0]	TSETB	  5	4	1	; slot4[1] = slot5
		 84	[  0]	TDUP 	  5		30	; slot5 = copy table#k30
		 85	[  0]	TSETB	  5	4	2	; slot4[2] = slot5
		 86	[  0]	TDUP 	  5		29	; slot5 = copy table#k29
		 87	[  0]	TSETB	  5	4	3	; slot4[3] = slot5
		 88	[  0]	TSETB	  4	3	6	; slot3[6] = slot4
		 89	[  0]	TNEW 	  4		4	; slot4 = new table( array: 4, dict: 1)
		 90	[  0]	TDUP 	  5		28	; slot5 = copy table#k28
		 91	[  0]	TSETB	  5	4	1	; slot4[1] = slot5
		 92	[  0]	TDUP 	  5		27	; slot5 = copy table#k27
		 93	[  0]	TSETB	  5	4	2	; slot4[2] = slot5
		 94	[  0]	TDUP 	  5		26	; slot5 = copy table#k26
		 95	[  0]	TSETB	  5	4	3	; slot4[3] = slot5
		 96	[  0]	TSETB	  4	3	7	; slot3[7] = slot4
		 97	[  0]	TNEW 	  4		4	; slot4 = new table( array: 4, dict: 1)
		 98	[  0]	TDUP 	  5		25	; slot5 = copy table#k25
		 99	[  0]	TSETB	  5	4	1	; slot4[1] = slot5
		100	[  0]	TDUP 	  5		24	; slot5 = copy table#k24
		101	[  0]	TSETB	  5	4	2	; slot4[2] = slot5
		102	[  0]	TDUP 	  5		23	; slot5 = copy table#k23
		103	[  0]	TSETB	  5	4	3	; slot4[3] = slot5
		104	[  0]	TSETB	  4	3	8	; slot3[8] = slot4
		105	[  0]	FNEW 	  4		22	; N/A:0-0: 2 args, 1 upvalues, 10 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  2	[  0]	TGETV	  2	2	0	; slot2 = uv0"unknown"[slot0]
			  3	[  0]	IST  	   		2	; if slot2
			  4	[  0]	JMP  	  3		2	; 	goto 7
			  5	[  0]	KPRI 	  3		1	; slot3 = false
			  6	[  0]	RET1 	  3		2	; return slot3
			  7	[  0]	GGET 	  3		0	; slot3 = _env["ipairs"]
			  8	[  0]	MOV  	  5		2	; slot5 = slot2
			  9	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
			 10	[  0]	JMP  	  6		5	; 	goto 16
			 11	[  0]	TGETB	  8	7	2	; slot8 = slot7[2]
			 12	[  0]	ISNEV	  8		1	; if slot8 ~= slot1
			 13	[  0]	JMP  	  8		2	; 	goto 16
			 14	[  0]	KPRI 	  8		2	; slot8 = true
			 15	[  0]	RET1 	  8		2	; return slot8
			 16	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, slot5; slot6, slot7 = ipairs(slot4, slot5)
			 17	[  0]	ITERL	  6		-7	; slot5 = slot6; if slot6 != nil goto 11
			 18	[  0]	KPRI 	  3		1	; slot3 = false
			 19	[  0]	RET1 	  3		2	; return slot3
		106	[  0]	FNEW 	  5		21	; N/A:0-0: 1 args, 2 upvalues, 17 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
			  2	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
			  3	[  0]	KPRI 	  3		0	; slot3 = nil
			  4	[  0]	GGET 	  4		2	; slot4 = _env["ipairs"]
			  5	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
			  6	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
			  7	[  0]	JMP  	  7		34	; 	goto 42
			  8	[  0]	TGETB	  9	8	1	; slot9 = slot8[1]
			  9	[  0]	TGETB	  9	9	1	; slot9 = slot9[1]
			 10	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
			 11	[  0]	TGETB	 10	8	1	; slot10 = slot8[1]
			 12	[  0]	TGETB	 10	10	2	; slot10 = slot10[2]
			 13	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
			 14	[  0]	TGETB	 10	8	2	; slot10 = slot8[2]
			 15	[  0]	TGETB	 10	10	1	; slot10 = slot10[1]
			 16	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
			 17	[  0]	TGETB	 11	8	2	; slot11 = slot8[2]
			 18	[  0]	TGETB	 11	11	2	; slot11 = slot11[2]
			 19	[  0]	TGETV	 10	10	11	; slot10 = slot10[slot11]
			 20	[  0]	TGETB	 11	8	3	; slot11 = slot8[3]
			 21	[  0]	TGETB	 11	11	1	; slot11 = slot11[1]
			 22	[  0]	TGETV	 11	0	11	; slot11 = slot0[slot11]
			 23	[  0]	TGETB	 12	8	3	; slot12 = slot8[3]
			 24	[  0]	TGETB	 12	12	2	; slot12 = slot12[2]
			 25	[  0]	TGETV	 11	11	12	; slot11 = slot11[slot12]
			 26	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
			 27	[  0]	MOV  	 14		9	; slot14 = slot9
			 28	[  0]	MOV  	 15		10	; slot15 = slot10
			 29	[  0]	MOV  	 16		11	; slot16 = slot11
			 30	[  0]	CALL 	 12	2	4	; slot12 = uv1"unknown"(slot13, slot14, slot15)
			 31	[  0]	ISF  	   		12	; if not uv1"unknown"
			 32	[  0]	JMP  	 13		9	; 	goto 42
			 33	[  0]	GGET 	 13		1	; slot13 = _env["table"]
			 34	[  0]	TGETS	 13	13	0	; slot13 = table.insert
			 35	[  0]	MOV  	 15		1	; slot15 = slot1
			 36	[  0]	MOV  	 16		7	; slot16 = slot7
			 37	[  0]	CALL 	 13	1	3	;  = table.insert(slot14, slot15)
			 38	[  0]	TSETV	 12	2	7	; slot2[slot7] = uv1"unknown"
			 39	[  0]	IST  	   		3	; if slot3
			 40	[  0]	JMP  	 13		1	; 	goto 42
			 41	[  0]	MOV  	  3		12	; slot3 = uv1"unknown"
			 42	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, uv0"unknown"; slot7, slot8 = ipairs(slot5, uv0"unknown")
			 43	[  0]	ITERL	  7		-36	; uv0"unknown" = slot7; if slot7 != nil goto 8
			 44	[  0]	MOV  	  4		1	; slot4 = slot1
			 45	[  0]	MOV  	  5		3	; slot5 = uv1"unknown"
			 46	[  0]	MOV  	  6		2	; slot6 = slot2
			 47	[  0]	RET  	  4		4	; return slot4, uv1"unknown", slot6
		107	[  0]	FNEW 	  6		19	; N/A:0-0: 1 args, 1 upvalues, 2 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	RET1 	  1		2	; return uv0"unknown"
		108	[  0]	TSETS	  6	1	20	; slot1.getWinningLinesDefinition = slot6
		109	[  0]	FNEW 	  6		17	; N/A:0-0: 2 args, 1 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  2	[  0]	MOV  	  4		1	; slot4 = slot1
			  3	[  0]	CALLT	  2		2	; return uv0"unknown"(slot3)
		110	[  0]	TSETS	  6	1	18	; slot1.evaluateGrid = slot6
		111	[  0]	FNEW 	  6		15	; N/A:0-0: 1 args, 2 upvalues, 7 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	TGETS	  1	1	2	; slot1 = uv0"unknown".isJackpotResult
			  3	[  0]	TGETS	  3	0	1	; slot3 = slot0.result
			  4	[  0]	TGETS	  4	0	0	; slot4 = slot0.grid
			  5	[  0]	ISF  	   		4	; if not <unknown table>.grid
			  6	[  0]	JMP  	  5		3	; 	goto 10
			  7	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
			  8	[  0]	TGETS	  6	0	0	; slot6 = slot0.grid
			  9	[  0]	CALL 	  4	2	2	; slot4 = uv1"unknown"(slot5)
			 10	[  0]	CALLT	  1		3	; return uv0"unknown".isJackpotResult(slot2, <unknown table>.result)
		112	[  0]	TSETS	  6	1	16	; slot1.hasJackpotResult = slot6
		113	[  0]	FNEW 	  6		13	; N/A:0-0: 1 args, 0 upvalues, 18 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
			  2	[  0]	TGETS	  2	0	12	; slot2 = slot0._coreSpinMods
			  3	[  0]	IST  	   		2	; if <unknown table>._coreSpinMods
			  4	[  0]	JMP  	  3		1	; 	goto 6
			  5	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
			  6	[  0]	TGETS	  3	2	11	; slot3 = slot2.lockedReels
			  7	[  0]	GGET 	  4		10	; slot4 = _env["type"]
			  8	[  0]	MOV  	  6		3	; slot6 = <unknown table>.lockedReels
			  9	[  0]	CALL 	  4	2	2	; slot4 = type(slot5)
			 10	[  0]	ISNES	  4		9	; if type ~= "table"
			 11	[  0]	JMP  	  4		23	; 	goto 35
			 12	[  0]	GGET 	  4		8	; slot4 = _env["pairs"]
			 13	[  0]	MOV  	  6		3	; slot6 = <unknown table>.lockedReels
			 14	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = pairs(slot5)
			 15	[  0]	ISNEXT	  7		17	; Verify ITERN at 33; goto 33
			 16	[  0]	ISF  	   		8	; if not slot8
			 17	[  0]	JMP  	  9		15	; 	goto 33
			 18	[  0]	KSHORT	  9		1	; slot9 = 1
			 19	[  0]	KSHORT	 10		3	; slot10 = 3
			 20	[  0]	KSHORT	 11		1	; slot11 = 1
			 21	[  0]	FORI 	  9		11	; for slot12 = slot9,slot10,slot11 else goto 33
			 22	[  0]	GGET 	 13		7	; slot13 = _env["tostring"]
			 23	[  0]	MOV  	 15		12	; slot15 = slot12
			 24	[  0]	CALL 	 13	2	2	; slot13 = tostring(slot14)
			 25	[  0]	KSTR 	 14		6	; slot14 = ":"
			 26	[  0]	GGET 	 15		7	; slot15 = _env["tostring"]
			 27	[  0]	MOV  	 17		7	; slot17 = slot7
			 28	[  0]	CALL 	 15	2	2	; slot15 = tostring(slot16)
			 29	[  0]	CAT  	 13	13	15	; slot13 = tostring .. slot14 .. tostring
			 30	[  0]	KPRI 	 14		2	; slot14 = true
			 31	[  0]	TSETV	 14	1	13	; slot1[slot13] = slot14
			 32	[  0]	FORL 	  9		-11	; slot12 = slot12 + slot11; if cmp(slot12, sign slot11,  slot10) goto 22
			 33	[  0]	ITERN	  7	3	3	; slot7, slot8, slot9 = pairs, slot5, <unknown table>.lockedReels; slot7, slot8 = pairs(slot5, <unknown table>.lockedReels)
			 34	[  0]	ITERL	  7		-19	; <unknown table>.lockedReels = slot7; if slot7 != nil goto 16
			 35	[  0]	TGETS	  4	2	5	; slot4 = slot2.forceJokerCells
			 36	[  0]	GGET 	  5		10	; slot5 = _env["type"]
			 37	[  0]	MOV  	  7		4	; slot7 = <unknown table>.forceJokerCells
			 38	[  0]	CALL 	  5	2	2	; slot5 = type(<unknown table>.lockedReels)
			 39	[  0]	ISNES	  5		9	; if type ~= "table"
			 40	[  0]	JMP  	  5		29	; 	goto 70
			 41	[  0]	LEN  	  5		4	; slot5 = #<unknown table>.forceJokerCells
			 42	[  0]	KSHORT	  6		0	; slot6 = 0
			 43	[  0]	ISGE 	  6		5	; if slot6 >= slot5
			 44	[  0]	JMP  	  5		25	; 	goto 70
			 45	[  0]	GGET 	  5		4	; slot5 = _env["ipairs"]
			 46	[  0]	MOV  	  7		4	; slot7 = <unknown table>.forceJokerCells
			 47	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
			 48	[  0]	JMP  	  8		18	; 	goto 67
			 49	[  0]	ISF  	   		9	; if not slot9
			 50	[  0]	JMP  	 10		16	; 	goto 67
			 51	[  0]	TGETS	 10	9	3	; slot10 = slot9.row
			 52	[  0]	ISF  	   		10	; if not <unknown table>.row
			 53	[  0]	JMP  	 11		13	; 	goto 67
			 54	[  0]	TGETS	 10	9	2	; slot10 = slot9.col
			 55	[  0]	ISF  	   		10	; if not <unknown table>.col
			 56	[  0]	JMP  	 11		10	; 	goto 67
			 57	[  0]	GGET 	 10		7	; slot10 = _env["tostring"]
			 58	[  0]	TGETS	 12	9	3	; slot12 = slot9.row
			 59	[  0]	CALL 	 10	2	2	; slot10 = tostring(slot11)
			 60	[  0]	KSTR 	 11		6	; slot11 = ":"
			 61	[  0]	GGET 	 12		7	; slot12 = _env["tostring"]
			 62	[  0]	TGETS	 14	9	2	; slot14 = slot9.col
			 63	[  0]	CALL 	 12	2	2	; slot12 = tostring(slot13)
			 64	[  0]	CAT  	 10	10	12	; slot10 = tostring .. slot11 .. tostring
			 65	[  0]	KPRI 	 11		2	; slot11 = true
			 66	[  0]	TSETV	 11	1	10	; slot1[slot10] = slot11
			 67	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, <unknown table>.forceJokerCells; slot8, slot9 = ipairs(slot6, <unknown table>.forceJokerCells)
			 68	[  0]	ITERL	  8		-20	; <unknown table>.forceJokerCells = slot8; if slot8 != nil goto 49
			 69	[  0]	JMP  	  5		19	; 	goto 89
			 70	[  0]	TGETS	  5	2	1	; slot5 = slot2.forceJokerCell
			 71	[  0]	ISF  	   		5	; if not <unknown table>.forceJokerCell
			 72	[  0]	JMP  	  6		16	; 	goto 89
			 73	[  0]	TGETS	  6	5	3	; slot6 = <unknown table>.forceJokerCell.row
			 74	[  0]	ISF  	   		6	; if not <unknown table>.forceJokerCell.row
			 75	[  0]	JMP  	  7		13	; 	goto 89
			 76	[  0]	TGETS	  6	5	2	; slot6 = <unknown table>.forceJokerCell.col
			 77	[  0]	ISF  	   		6	; if not <unknown table>.forceJokerCell.col
			 78	[  0]	JMP  	  7		10	; 	goto 89
			 79	[  0]	GGET 	  6		7	; slot6 = _env["tostring"]
			 80	[  0]	TGETS	  8	5	3	; slot8 = <unknown table>.forceJokerCell.row
			 81	[  0]	CALL 	  6	2	2	; slot6 = tostring(<unknown table>.forceJokerCells)
			 82	[  0]	KSTR 	  7		6	; slot7 = ":"
			 83	[  0]	GGET 	  8		7	; slot8 = _env["tostring"]
			 84	[  0]	TGETS	 10	5	2	; slot10 = <unknown table>.forceJokerCell.col
			 85	[  0]	CALL 	  8	2	2	; slot8 = tostring(slot9)
			 86	[  0]	CAT  	  6	6	8	; slot6 = tostring .. slot7 .. tostring
			 87	[  0]	KPRI 	  7		2	; slot7 = true
			 88	[  0]	TSETV	  7	1	6	; slot1[slot6] = slot7
			 89	[  0]	GGET 	  5		4	; slot5 = _env["ipairs"]
			 90	[  0]	GGET 	  7		10	; slot7 = _env["type"]
			 91	[  0]	TGETS	  9	2	0	; slot9 = slot2.forceCells
			 92	[  0]	CALL 	  7	2	2	; slot7 = type(tostring)
			 93	[  0]	ISNES	  7		9	; if type ~= "table"
			 94	[  0]	JMP  	  7		3	; 	goto 98
			 95	[  0]	TGETS	  7	2	0	; slot7 = slot2.forceCells
			 96	[  0]	IST  	   		7	; if <unknown table>.forceCells
			 97	[  0]	JMP  	  8		1	; 	goto 99
			 98	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
			 99	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
			100	[  0]	JMP  	  8		18	; 	goto 119
			101	[  0]	ISF  	   		9	; if not <unknown table>.forceCells
			102	[  0]	JMP  	 10		16	; 	goto 119
			103	[  0]	TGETS	 10	9	3	; slot10 = <unknown table>.forceCells.row
			104	[  0]	ISF  	   		10	; if not <unknown table>.forceCells.row
			105	[  0]	JMP  	 11		13	; 	goto 119
			106	[  0]	TGETS	 10	9	2	; slot10 = <unknown table>.forceCells.col
			107	[  0]	ISF  	   		10	; if not <unknown table>.forceCells.col
			108	[  0]	JMP  	 11		10	; 	goto 119
			109	[  0]	GGET 	 10		7	; slot10 = _env["tostring"]
			110	[  0]	TGETS	 12	9	3	; slot12 = <unknown table>.forceCells.row
			111	[  0]	CALL 	 10	2	2	; slot10 = tostring(slot11)
			112	[  0]	KSTR 	 11		6	; slot11 = ":"
			113	[  0]	GGET 	 12		7	; slot12 = _env["tostring"]
			114	[  0]	TGETS	 14	9	2	; slot14 = <unknown table>.forceCells.col
			115	[  0]	CALL 	 12	2	2	; slot12 = tostring(slot13)
			116	[  0]	CAT  	 10	10	12	; slot10 = tostring .. slot11 .. tostring
			117	[  0]	KPRI 	 11		2	; slot11 = true
			118	[  0]	TSETV	 11	1	10	; slot1[slot10] = slot11
			119	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
			120	[  0]	ITERL	  8		-20	; slot7 = tostring; if tostring != nil goto 101
			121	[  0]	RET1 	  1		2	; return slot1
		114	[  0]	TSETS	  6	1	14	; slot1.getProtectedSpinCells = slot6
		115	[  0]	FNEW 	  6		11	; N/A:0-0: 1 args, 2 upvalues, 10 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	TGETS	  1	0	9	; slot1 = slot0.grid
			  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  3	[  0]	MOV  	  4		1	; slot4 = <unknown table>.grid
			  4	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = uv0"unknown"(slot3)
			  5	[  0]	TGETS	  5	0	8	; slot5 = slot0.result
			  6	[  0]	KPRI 	  6		2	; slot6 = true
			  7	[  0]	TSETS	  6	5	7	; <unknown table>.result.checked = slot6
			  8	[  0]	TGETS	  5	0	8	; slot5 = slot0.result
			  9	[  0]	LEN  	  6		2	; slot6 = #slot2
			 10	[  0]	KSHORT	  7		0	; slot7 = 0
			 11	[  0]	ISLT 	  7		6	; if slot7 < slot6
			 12	[  0]	JMP  	  6		2	; 	goto 15
			 13	[  0]	KPRI 	  6		1	; slot6 = false
			 14	[  0]	JMP  	  7		1	; 	goto 16
			 15	[  0]	KPRI 	  6		2	; slot6 = true
			 16	[  0]	TSETS	  6	5	6	; <unknown table>.result.won = slot6
			 17	[  0]	TGETS	  5	0	8	; slot5 = slot0.result
			 18	[  0]	TSETS	  2	5	5	; <unknown table>.result.winningLines = slot2
			 19	[  0]	TGETS	  5	0	8	; slot5 = slot0.result
			 20	[  0]	TSETS	  3	5	4	; <unknown table>.result.symbol = slot3
			 21	[  0]	TGETS	  5	0	8	; slot5 = slot0.result
			 22	[  0]	TSETS	  4	5	3	; <unknown table>.result.symbolsByLine = <unknown table>.grid
			 23	[  0]	TGETS	  5	0	8	; slot5 = slot0.result
			 24	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
			 25	[  0]	TGETS	  6	6	1	; slot6 = uv1"unknown".isJackpotResult
			 26	[  0]	TGETS	  8	0	8	; slot8 = slot0.result
			 27	[  0]	MOV  	  9		2	; slot9 = slot2
			 28	[  0]	CALL 	  6	2	3	; slot6 = uv1"unknown".isJackpotResult(slot7, <unknown table>.result)
			 29	[  0]	TSETS	  6	5	2	; <unknown table>.result._jackpot = uv1"unknown".isJackpotResult
			 30	[  0]	TSETS	  2	0	0	; slot0.previousWinningLines = slot2
			 31	[  0]	TGETS	  5	0	8	; slot5 = slot0.result
			 32	[  0]	RET1 	  5		2	; return <unknown table>.result
		116	[  0]	TSETS	  6	1	12	; slot1.evaluateWin = slot6
		117	[  0]	FNEW 	  6		9	; N/A:0-0: 2 args, 3 upvalues, 26 slots
			
			;;;; constant tables ;;;;
			ktable#8 = [
				[phase] = vanish,
				[active] = true,
				[t] = 0,
				[dropDur] = 0.54,
				[dropContactRatio] = 0.76,
				[dropStagger] = 0.075,
				[dropTravelDur] = 0.42,
				[vanishDur] = 0.3,
				[impactDur] = 0.12,
				]
			
			
			ktable#9 = [
				[isNew] = true,
				]
			
			
			ktable#11 = [
				[isNew] = false,
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  2		29	; slot2 = _env["type"]
			  2	[  0]	MOV  	  4		1	; slot4 = slot1
			  3	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
			  4	[  0]	ISNES	  2		28	; if slot2 ~= "table"
			  5	[  0]	JMP  	  2		2	; 	goto 8
			  6	[  0]	ISTC 	  2		1	; slot2 = slot1; if slot1
			  7	[  0]	JMP  	  2		2	; 	goto 10
			  8	[  0]	TNEW 	  2		3	; slot2 = new table( array: 3, dict: 1)
			  9	[  0]	TSETB	  1	2	1	; slot2[1] = slot1
			 10	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
			 11	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
			 12	[  0]	GGET 	  5		27	; slot5 = _env["ipairs"]
			 13	[  0]	MOV  	  7		2	; slot7 = slot2
			 14	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
			 15	[  0]	JMP  	  8		25	; 	goto 41
			 16	[  0]	GGET 	 10		26	; slot10 = _env["math"]
			 17	[  0]	TGETS	 10	10	25	; slot10 = math.floor
			 18	[  0]	GGET 	 12		24	; slot12 = _env["tonumber"]
			 19	[  0]	ISTC 	 14		9	; slot14 = slot9; if slot9
			 20	[  0]	JMP  	 14		1	; 	goto 22
			 21	[  0]	KSHORT	 14		0	; slot14 = 0
			 22	[  0]	CALL 	 12	2	2	; slot12 = tonumber(slot13)
			 23	[  0]	IST  	   		12	; if tonumber
			 24	[  0]	JMP  	 13		1	; 	goto 26
			 25	[  0]	KSHORT	 12		0	; slot12 = 0
			 26	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
			 27	[  0]	UGET 	 11		0	; slot11 = uv0"unknwon"
			 28	[  0]	TGETV	 11	11	10	; slot11 = uv0"unknown"[math.floor]
			 29	[  0]	ISF  	   		11	; if not slot11
			 30	[  0]	JMP  	 12		10	; 	goto 41
			 31	[  0]	TGETV	 11	4	10	; slot11 = slot4[math.floor]
			 32	[  0]	IST  	   		11	; if slot11
			 33	[  0]	JMP  	 11		7	; 	goto 41
			 34	[  0]	KPRI 	 11		2	; slot11 = true
			 35	[  0]	TSETV	 11	4	10	; slot4[math.floor] = slot11
			 36	[  0]	GGET 	 11		28	; slot11 = _env["table"]
			 37	[  0]	TGETS	 11	11	23	; slot11 = table.insert
			 38	[  0]	MOV  	 13		3	; slot13 = slot3
			 39	[  0]	MOV  	 14		10	; slot14 = math.floor
			 40	[  0]	CALL 	 11	1	3	;  = table.insert(slot12, slot13)
			 41	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
			 42	[  0]	ITERL	  8		-27	; slot7 = slot8; if slot8 != nil goto 16
			 43	[  0]	LEN  	  5		3	; slot5 = #slot3
			 44	[  0]	ISEQN	  5		0	; if slot5 == 0
			 45	[  0]	JMP  	  5		3	; 	goto 49
			 46	[  0]	TGETS	  5	0	22	; slot5 = slot0.grid
			 47	[  0]	IST  	   		5	; if <unknown table>.grid
			 48	[  0]	JMP  	  5		3	; 	goto 52
			 49	[  0]	KPRI 	  5		1	; slot5 = false
			 50	[  0]	KSTR 	  6		21	; slot6 = "bad_line"
			 51	[  0]	RET  	  5		3	; return slot5, slot6
			 52	[  0]	TGETS	  5	0	20	; slot5 = slot0._doubleLedgerCascade
			 53	[  0]	ISF  	   		5	; if not <unknown table>._doubleLedgerCascade
			 54	[  0]	JMP  	  6		7	; 	goto 62
			 55	[  0]	TGETS	  5	0	20	; slot5 = slot0._doubleLedgerCascade
			 56	[  0]	TGETS	  5	5	19	; slot5 = <unknown table>._doubleLedgerCascade.active
			 57	[  0]	ISF  	   		5	; if not <unknown table>._doubleLedgerCascade.active
			 58	[  0]	JMP  	  6		3	; 	goto 62
			 59	[  0]	KPRI 	  5		1	; slot5 = false
			 60	[  0]	KSTR 	  6		19	; slot6 = "active"
			 61	[  0]	RET  	  5		3	; return slot5, slot6
			 62	[  0]	TGETS	  5	0	18	; slot5 = slot0.result
			 63	[  0]	MOV  	  8		0	; slot8 = slot0
			 64	[  0]	TGETS	  6	0	16	; slot6 = slot0.hasJackpotResult
			 65	[  0]	CALL 	  6	2	2	; slot6 = <unknown table>.hasJackpotResult(slot7)
			 66	[  0]	TSETS	  6	5	17	; <unknown table>.result._jackpot = <unknown table>.hasJackpotResult
			 67	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
			 68	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
			 69	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
			 70	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
			 71	[  0]	KSHORT	  9		1	; slot9 = 1
			 72	[  0]	KSHORT	 10		3	; slot10 = 3
			 73	[  0]	KSHORT	 11		1	; slot11 = 1
			 74	[  0]	FORI 	  9		15	; for slot12 = slot9,slot10,slot11 else goto 90
			 75	[  0]	TNEW 	 13		0	; slot13 = new table( array: 0, dict: 1)
			 76	[  0]	TNEW 	 14		0	; slot14 = new table( array: 0, dict: 1)
			 77	[  0]	TSETV	 14	6	12	; slot6[slot12] = slot14
			 78	[  0]	TSETV	 13	5	12	; slot5[slot12] = slot13
			 79	[  0]	KSHORT	 13		1	; slot13 = 1
			 80	[  0]	KSHORT	 14		3	; slot14 = 3
			 81	[  0]	KSHORT	 15		1	; slot15 = 1
			 82	[  0]	FORI 	 13		6	; for slot16 = slot13,slot14,slot15 else goto 89
			 83	[  0]	TGETV	 17	5	12	; slot17 = slot5[slot12]
			 84	[  0]	TGETS	 18	0	22	; slot18 = slot0.grid
			 85	[  0]	TGETV	 18	18	12	; slot18 = <unknown table>.grid[slot12]
			 86	[  0]	TGETV	 18	18	16	; slot18 = slot18[slot16]
			 87	[  0]	TSETV	 18	17	16	; slot17[slot16] = slot18
			 88	[  0]	FORL 	 13		-6	; slot16 = slot16 + slot15; if cmp(slot16, sign slot15,  slot14) goto 83
			 89	[  0]	FORL 	  9		-15	; slot12 = slot12 + slot11; if cmp(slot12, sign slot11,  slot10) goto 75
			 90	[  0]	GGET 	  9		27	; slot9 = _env["ipairs"]
			 91	[  0]	MOV  	 11		3	; slot11 = slot3
			 92	[  0]	CALL 	  9	4	2	; slot9, slot10, slot11 = ipairs(slot10)
			 93	[  0]	JMP  	 12		27	; 	goto 121
			 94	[  0]	GGET 	 14		27	; slot14 = _env["ipairs"]
			 95	[  0]	UGET 	 16		0	; slot16 = uv0"unknwon"
			 96	[  0]	TGETV	 16	16	13	; slot16 = uv0"unknown"[slot13]
			 97	[  0]	CALL 	 14	4	2	; slot14, slot15, slot16 = ipairs(slot15)
			 98	[  0]	JMP  	 17		20	; 	goto 119
			 99	[  0]	TGETB	 19	18	1	; slot19 = slot18[1]
			100	[  0]	TGETB	 20	18	2	; slot20 = slot18[2]
			101	[  0]	GGET 	 21		15	; slot21 = _env["tostring"]
			102	[  0]	MOV  	 23		19	; slot23 = slot19
			103	[  0]	CALL 	 21	2	2	; slot21 = tostring(slot22)
			104	[  0]	KSTR 	 22		14	; slot22 = ":"
			105	[  0]	GGET 	 23		15	; slot23 = _env["tostring"]
			106	[  0]	MOV  	 25		20	; slot25 = slot20
			107	[  0]	CALL 	 23	2	2	; slot23 = tostring(slot24)
			108	[  0]	CAT  	 21	21	23	; slot21 = tostring .. slot22 .. tostring
			109	[  0]	KPRI 	 22		2	; slot22 = true
			110	[  0]	TSETV	 22	7	21	; slot7[slot21] = slot22
			111	[  0]	TGETV	 21	8	20	; slot21 = slot8[slot20]
			112	[  0]	IST  	   		21	; if slot21
			113	[  0]	JMP  	 22		1	; 	goto 115
			114	[  0]	TNEW 	 21		0	; slot21 = new table( array: 0, dict: 1)
			115	[  0]	TSETV	 21	8	20	; slot8[slot20] = slot21
			116	[  0]	TGETV	 21	8	20	; slot21 = slot8[slot20]
			117	[  0]	KPRI 	 22		2	; slot22 = true
			118	[  0]	TSETV	 22	21	19	; slot21[slot19] = slot22
			119	[  0]	ITERC	 17	3	3	; slot17, slot18, slot19 = ipairs, slot15, slot16; slot17, slot18 = ipairs(slot15, slot16)
			120	[  0]	ITERL	 17		-22	; slot16 = slot17; if slot17 != nil goto 99
			121	[  0]	ITERC	 12	3	3	; slot12, slot13, slot14 = ipairs, slot10, slot11; slot12, slot13 = ipairs(slot10, slot11)
			122	[  0]	ITERL	 12		-29	; slot11 = slot12; if slot12 != nil goto 94
			123	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
			124	[  0]	GGET 	 10		24	; slot10 = _env["tonumber"]
			125	[  0]	TGETS	 12	0	13	; slot12 = slot0._coreSpinMods
			126	[  0]	ISF  	   		12	; if not <unknown table>._coreSpinMods
			127	[  0]	JMP  	 13		4	; 	goto 132
			128	[  0]	TGETS	 12	0	13	; slot12 = slot0._coreSpinMods
			129	[  0]	TGETS	 12	12	12	; slot12 = <unknown table>._coreSpinMods.jokerChance
			130	[  0]	IST  	   		12	; if <unknown table>._coreSpinMods.jokerChance
			131	[  0]	JMP  	 13		1	; 	goto 133
			132	[  0]	KSHORT	 12		0	; slot12 = 0
			133	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
			134	[  0]	IST  	   		10	; if tonumber
			135	[  0]	JMP  	 11		1	; 	goto 137
			136	[  0]	KSHORT	 10		0	; slot10 = 0
			137	[  0]	KSHORT	 11		1	; slot11 = 1
			138	[  0]	KSHORT	 12		3	; slot12 = 3
			139	[  0]	KSHORT	 13		1	; slot13 = 1
			140	[  0]	FORI 	 11		50	; for ipairs = slot11,slot12,slot13 else goto 191
			141	[  0]	TNEW 	 15		0	; slot15 = new table( array: 0, dict: 1)
			142	[  0]	TSETV	 15	9	14	; slot9[slot14] = slot15
			143	[  0]	TGETV	 15	8	14	; slot15 = slot8[slot14]
			144	[  0]	ISF  	   		15	; if not slot15
			145	[  0]	JMP  	 16		35	; 	goto 181
			146	[  0]	KSHORT	 16		3	; slot16 = 3
			147	[  0]	KSHORT	 17		3	; slot17 = 3
			148	[  0]	KSHORT	 18		1	; slot18 = 1
			149	[  0]	KSHORT	 19		65535	; slot19 = 65535
			150	[  0]	FORI 	 17		13	; for slot20 = slot17,slot18,slot19 else goto 164
			151	[  0]	TGETV	 21	15	20	; slot21 = slot15[slot20]
			152	[  0]	IST  	   		21	; if slot21
			153	[  0]	JMP  	 21		9	; 	goto 163
			154	[  0]	TGETV	 21	6	16	; slot21 = slot6[slot16]
			155	[  0]	TGETV	 22	5	20	; slot22 = slot5[slot20]
			156	[  0]	TGETV	 22	22	14	; slot22 = slot22[slot14]
			157	[  0]	TSETV	 22	21	14	; slot21[slot14] = slot22
			158	[  0]	TGETV	 21	9	14	; slot21 = slot9[slot14]
			159	[  0]	TDUP 	 22		11	; slot22 = copy table#k11
			160	[  0]	TSETS	 20	22	10	; slot22.fromRow = slot20
			161	[  0]	TSETV	 22	21	16	; slot21[slot16] = slot22
			162	[  0]	SUBVN	 16	16	1	; slot16 = slot16 - 1
			163	[  0]	FORL 	 17		-13	; slot20 = slot20 + slot19; if cmp(slot20, sign slot19,  slot18) goto 151
			164	[  0]	MOV  	 17		16	; slot17 = slot16
			165	[  0]	KSHORT	 18		1	; slot18 = 1
			166	[  0]	MOV  	 19		17	; slot19 = slot17
			167	[  0]	KSHORT	 20		1	; slot20 = 1
			168	[  0]	FORI 	 18		11	; for slot21 = slot18,slot19,slot20 else goto 180
			169	[  0]	TGETV	 22	6	21	; slot22 = slot6[slot21]
			170	[  0]	UGET 	 23		1	; slot23 = uv1"unknwon"
			171	[  0]	MOV  	 25		10	; slot25 = slot10
			172	[  0]	CALL 	 23	2	2	; slot23 = uv1"unknown"(slot24)
			173	[  0]	TSETV	 23	22	14	; slot22[slot14] = uv1"unknown"
			174	[  0]	TGETV	 22	9	14	; slot22 = slot9[slot14]
			175	[  0]	TDUP 	 23		9	; slot23 = copy table#k9
			176	[  0]	SUBVV	 24	21	17	; slot24 = slot21 - slot17
			177	[  0]	TSETS	 24	23	10	; slot23.fromRow = slot24
			178	[  0]	TSETV	 23	22	21	; slot22[slot21] = slot23
			179	[  0]	FORL 	 18		-11	; slot21 = slot21 + slot20; if cmp(slot21, sign slot20,  slot19) goto 169
			180	[  0]	JMP  	 16		9	; 	goto 190
			181	[  0]	KSHORT	 16		1	; slot16 = 1
			182	[  0]	KSHORT	 17		3	; slot17 = 3
			183	[  0]	KSHORT	 18		1	; slot18 = 1
			184	[  0]	FORI 	 16		5	; for slot19 = slot16,slot17,slot18 else goto 190
			185	[  0]	TGETV	 20	6	19	; slot20 = slot6[slot19]
			186	[  0]	TGETV	 21	5	19	; slot21 = slot5[slot19]
			187	[  0]	TGETV	 21	21	14	; slot21 = slot21[slot14]
			188	[  0]	TSETV	 21	20	14	; slot20[slot14] = slot21
			189	[  0]	FORL 	 16		-5	; slot19 = slot19 + slot18; if cmp(slot19, sign slot18,  slot17) goto 185
			190	[  0]	FORL 	 11		-50	; slot14 = slot14 + slot13; if cmp(slot14, sign slot13,  slot12) goto 141
			191	[  0]	UGET 	 11		2	; slot11 = uv2"unknwon"
			192	[  0]	MOV  	 13		5	; slot13 = slot5
			193	[  0]	CALL 	 11	2	2	; slot11 = uv2"unknown"(slot12)
			194	[  0]	TDUP 	 12		8	; slot12 = copy table#k8
			195	[  0]	TNEW 	 13		0	; slot13 = new table( array: 0, dict: 1)
			196	[  0]	TSETS	 13	12	7	; slot12.dropImpactPlayed = slot13
			197	[  0]	TGETB	 13	3	1	; slot13 = slot3[1]
			198	[  0]	TSETS	 13	12	6	; slot12.lineId = slot13
			199	[  0]	TSETS	  3	12	5	; slot12.lineIds = slot3
			200	[  0]	TSETS	  7	12	4	; slot12.targetCells = slot7
			201	[  0]	TSETS	  5	12	3	; slot12.oldGrid = slot5
			202	[  0]	TSETS	  6	12	2	; slot12.finalGrid = slot6
			203	[  0]	TSETS	  9	12	1	; slot12.dropMap = slot9
			204	[  0]	TSETS	 11	12	0	; slot12.beforeWinningLines = uv2"unknown"
			205	[  0]	TSETS	 12	0	20	; slot0._doubleLedgerCascade = slot12
			206	[  0]	KPRI 	 12		2	; slot12 = true
			207	[  0]	RET1 	 12		2	; return slot12
		118	[  0]	TSETS	  6	1	10	; slot1.startDoubleLedgerCascade = slot6
		119	[  0]	FNEW 	  6		7	; N/A:0-0: 3 args, 3 upvalues, 15 slots
			
			;;;; constant tables ;;;;
			ktable#6 = [
				[t] = 0,
				[active] = true,
				[kind] = nudge,
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  3		38	; slot3 = _env["tonumber"]
			  2	[  0]	MOV  	  5		1	; slot5 = slot1
			  3	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
			  4	[  0]	MOV  	  1		3	; slot1 = tonumber
			  5	[  0]	ISF  	   		1	; if not tonumber
			  6	[  0]	JMP  	  3		18	; 	goto 25
			  7	[  0]	KSHORT	  3		1	; slot3 = 1
			  8	[  0]	ISLT 	  1		3	; if tonumber < slot3
			  9	[  0]	JMP  	  3		15	; 	goto 25
			 10	[  0]	TGETS	  3	0	37	; slot3 = slot0.ui
			 11	[  0]	ISF  	   		3	; if not <unknown table>.ui
			 12	[  0]	JMP  	  4		9	; 	goto 22
			 13	[  0]	TGETS	  3	0	37	; slot3 = slot0.ui
			 14	[  0]	TGETS	  3	3	36	; slot3 = <unknown table>.ui.slot
			 15	[  0]	ISF  	   		3	; if not <unknown table>.ui.slot
			 16	[  0]	JMP  	  4		5	; 	goto 22
			 17	[  0]	TGETS	  3	0	37	; slot3 = slot0.ui
			 18	[  0]	TGETS	  3	3	36	; slot3 = <unknown table>.ui.slot
			 19	[  0]	TGETS	  3	3	35	; slot3 = <unknown table>.ui.slot.cols
			 20	[  0]	IST  	   		3	; if <unknown table>.ui.slot.cols
			 21	[  0]	JMP  	  4		1	; 	goto 23
			 22	[  0]	KSHORT	  3		0	; slot3 = 0
			 23	[  0]	ISGE 	  3		1	; if slot3 >= tonumber
			 24	[  0]	JMP  	  3		3	; 	goto 28
			 25	[  0]	KPRI 	  3		1	; slot3 = false
			 26	[  0]	KSTR 	  4		34	; slot4 = "bad_col"
			 27	[  0]	RET  	  3		3	; return slot3, slot4
			 28	[  0]	TGETS	  3	0	37	; slot3 = slot0.ui
			 29	[  0]	ISF  	   		3	; if not <unknown table>.ui
			 30	[  0]	JMP  	  4		17	; 	goto 48
			 31	[  0]	TGETS	  3	0	37	; slot3 = slot0.ui
			 32	[  0]	TGETS	  3	3	33	; slot3 = <unknown table>.ui._preSpinSeq
			 33	[  0]	ISF  	   		3	; if not <unknown table>.ui._preSpinSeq
			 34	[  0]	JMP  	  4		13	; 	goto 48
			 35	[  0]	TGETS	  3	0	37	; slot3 = slot0.ui
			 36	[  0]	TGETS	  3	3	33	; slot3 = <unknown table>.ui._preSpinSeq
			 37	[  0]	TGETS	  3	3	32	; slot3 = <unknown table>.ui._preSpinSeq.active
			 38	[  0]	ISF  	   		3	; if not <unknown table>.ui._preSpinSeq.active
			 39	[  0]	JMP  	  4		8	; 	goto 48
			 40	[  0]	MOV  	  5		0	; slot5 = slot0
			 41	[  0]	TGETS	  3	0	31	; slot3 = slot0.canNudgeBeforeCopycap
			 42	[  0]	CALL 	  3	2	2	; slot3 = <unknown table>.canNudgeBeforeCopycap(slot4)
			 43	[  0]	IST  	   		3	; if <unknown table>.canNudgeBeforeCopycap
			 44	[  0]	JMP  	  3		3	; 	goto 48
			 45	[  0]	KPRI 	  3		1	; slot3 = false
			 46	[  0]	KSTR 	  4		30	; slot4 = "core_activation"
			 47	[  0]	RET  	  3		3	; return slot3, slot4
			 48	[  0]	TGETS	  3	0	29	; slot3 = slot0.spin
			 49	[  0]	ISF  	   		3	; if not <unknown table>.spin
			 50	[  0]	JMP  	  4		7	; 	goto 58
			 51	[  0]	TGETS	  3	0	29	; slot3 = slot0.spin
			 52	[  0]	TGETS	  3	3	32	; slot3 = <unknown table>.spin.active
			 53	[  0]	ISF  	   		3	; if not <unknown table>.spin.active
			 54	[  0]	JMP  	  4		3	; 	goto 58
			 55	[  0]	KPRI 	  3		1	; slot3 = false
			 56	[  0]	KSTR 	  4		28	; slot4 = "spinning"
			 57	[  0]	RET  	  3		3	; return slot3, slot4
			 58	[  0]	TGETS	  3	0	27	; slot3 = slot0._doubleLedgerCascade
			 59	[  0]	ISF  	   		3	; if not <unknown table>._doubleLedgerCascade
			 60	[  0]	JMP  	  4		7	; 	goto 68
			 61	[  0]	TGETS	  3	0	27	; slot3 = slot0._doubleLedgerCascade
			 62	[  0]	TGETS	  3	3	32	; slot3 = <unknown table>._doubleLedgerCascade.active
			 63	[  0]	ISF  	   		3	; if not <unknown table>._doubleLedgerCascade.active
			 64	[  0]	JMP  	  4		3	; 	goto 68
			 65	[  0]	KPRI 	  3		1	; slot3 = false
			 66	[  0]	KSTR 	  4		26	; slot4 = "double_ledger_cascade"
			 67	[  0]	RET  	  3		3	; return slot3, slot4
			 68	[  0]	TGETS	  3	0	25	; slot3 = slot0._luckyNail
			 69	[  0]	ISF  	   		3	; if not <unknown table>._luckyNail
			 70	[  0]	JMP  	  4		7	; 	goto 78
			 71	[  0]	TGETS	  3	0	25	; slot3 = slot0._luckyNail
			 72	[  0]	TGETS	  3	3	32	; slot3 = <unknown table>._luckyNail.active
			 73	[  0]	ISF  	   		3	; if not <unknown table>._luckyNail.active
			 74	[  0]	JMP  	  4		3	; 	goto 78
			 75	[  0]	KPRI 	  3		1	; slot3 = false
			 76	[  0]	KSTR 	  4		24	; slot4 = "lucky_nail"
			 77	[  0]	RET  	  3		3	; return slot3, slot4
			 78	[  0]	TGETS	  3	0	23	; slot3 = slot0.result
			 79	[  0]	ISF  	   		3	; if not <unknown table>.result
			 80	[  0]	JMP  	  4		7	; 	goto 88
			 81	[  0]	TGETS	  3	0	23	; slot3 = slot0.result
			 82	[  0]	TGETS	  3	3	22	; slot3 = <unknown table>.result._luckyNailResolved
			 83	[  0]	ISF  	   		3	; if not <unknown table>.result._luckyNailResolved
			 84	[  0]	JMP  	  4		3	; 	goto 88
			 85	[  0]	KPRI 	  3		1	; slot3 = false
			 86	[  0]	KSTR 	  4		21	; slot4 = "lucky_nail_resolved"
			 87	[  0]	RET  	  3		3	; return slot3, slot4
			 88	[  0]	MOV  	  5		0	; slot5 = slot0
			 89	[  0]	TGETS	  3	0	20	; slot3 = slot0.hasJackpotResult
			 90	[  0]	CALL 	  3	2	2	; slot3 = <unknown table>.hasJackpotResult(slot4)
			 91	[  0]	ISF  	   		3	; if not <unknown table>.hasJackpotResult
			 92	[  0]	JMP  	  4		3	; 	goto 96
			 93	[  0]	KPRI 	  3		1	; slot3 = false
			 94	[  0]	KSTR 	  4		19	; slot4 = "jackpot"
			 95	[  0]	RET  	  3		3	; return slot3, slot4
			 96	[  0]	TGETS	  3	0	18	; slot3 = slot0.grid
			 97	[  0]	IST  	   		3	; if <unknown table>.grid
			 98	[  0]	JMP  	  3		3	; 	goto 102
			 99	[  0]	KPRI 	  3		1	; slot3 = false
			100	[  0]	KSTR 	  4		17	; slot4 = "no_grid"
			101	[  0]	RET  	  3		3	; return slot3, slot4
			102	[  0]	TGETS	  3	0	16	; slot3 = slot0.reels
			103	[  0]	ISF  	   		3	; if not <unknown table>.reels
			104	[  0]	JMP  	  3		4	; 	goto 109
			105	[  0]	TGETS	  3	0	16	; slot3 = slot0.reels
			106	[  0]	TGETV	  3	3	1	; slot3 = <unknown table>.reels[tonumber]
			107	[  0]	IST  	   		3	; if slot3
			108	[  0]	JMP  	  3		3	; 	goto 112
			109	[  0]	KPRI 	  3		1	; slot3 = false
			110	[  0]	KSTR 	  4		15	; slot4 = "no_reel"
			111	[  0]	RET  	  3		3	; return slot3, slot4
			112	[  0]	TGETS	  3	0	16	; slot3 = slot0.reels
			113	[  0]	TGETV	  3	3	1	; slot3 = <unknown table>.reels[tonumber]
			114	[  0]	TGETS	  3	3	14	; slot3 = slot3.nudge
			115	[  0]	ISF  	   		3	; if not <unknown table>.nudge
			116	[  0]	JMP  	  4		9	; 	goto 126
			117	[  0]	TGETS	  3	0	16	; slot3 = slot0.reels
			118	[  0]	TGETV	  3	3	1	; slot3 = <unknown table>.reels[tonumber]
			119	[  0]	TGETS	  3	3	14	; slot3 = slot3.nudge
			120	[  0]	TGETS	  3	3	32	; slot3 = <unknown table>.nudge.active
			121	[  0]	ISF  	   		3	; if not <unknown table>.nudge.active
			122	[  0]	JMP  	  4		3	; 	goto 126
			123	[  0]	KPRI 	  3		1	; slot3 = false
			124	[  0]	KSTR 	  4		13	; slot4 = "nudge_active"
			125	[  0]	RET  	  3		3	; return slot3, slot4
			126	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			127	[  0]	ISF  	   		3	; if not uv0"unknown"
			128	[  0]	JMP  	  4		7	; 	goto 136
			129	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			130	[  0]	TGETS	  3	3	12	; slot3 = uv0"unknown".onNudgeUsed
			131	[  0]	ISF  	   		3	; if not uv0"unknown".onNudgeUsed
			132	[  0]	JMP  	  4		3	; 	goto 136
			133	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			134	[  0]	TGETS	  3	3	12	; slot3 = uv0"unknown".onNudgeUsed
			135	[  0]	CALL 	  3	1	1	;  = uv0"unknown".onNudgeUsed()
			136	[  0]	TNEW 	  3		4	; slot3 = new table( array: 4, dict: 1)
			137	[  0]	TGETS	  4	0	18	; slot4 = slot0.grid
			138	[  0]	TGETB	  4	4	1	; slot4 = <unknown table>.grid[1]
			139	[  0]	TGETV	  4	4	1	; slot4 = slot4[tonumber]
			140	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
			141	[  0]	TGETS	  4	0	18	; slot4 = slot0.grid
			142	[  0]	TGETB	  4	4	2	; slot4 = <unknown table>.grid[2]
			143	[  0]	TGETV	  4	4	1	; slot4 = slot4[tonumber]
			144	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
			145	[  0]	TGETS	  4	0	18	; slot4 = slot0.grid
			146	[  0]	TGETB	  4	4	3	; slot4 = <unknown table>.grid[3]
			147	[  0]	TGETV	  4	4	1	; slot4 = slot4[tonumber]
			148	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
			149	[  0]	TGETS	  4	0	37	; slot4 = slot0.ui
			150	[  0]	ISF  	   		4	; if not <unknown table>.ui
			151	[  0]	JMP  	  5		4	; 	goto 156
			152	[  0]	TGETS	  4	0	37	; slot4 = slot0.ui
			153	[  0]	TGETS	  4	4	11	; slot4 = <unknown table>.ui.nudgeButtons
			154	[  0]	IST  	   		4	; if <unknown table>.ui.nudgeButtons
			155	[  0]	JMP  	  5		1	; 	goto 157
			156	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
			157	[  0]	GGET 	  5		38	; slot5 = _env["tonumber"]
			158	[  0]	TGETS	  7	4	10	; slot7 = slot4.reelAnimDurSec
			159	[  0]	IST  	   		7	; if <unknown table>.reelAnimDurSec
			160	[  0]	JMP  	  8		1	; 	goto 162
			161	[  0]	KNUM 	  7		0	; slot7 = 0.18
			162	[  0]	CALL 	  5	2	2	; slot5 = tonumber(slot6)
			163	[  0]	IST  	   		5	; if tonumber
			164	[  0]	JMP  	  6		1	; 	goto 166
			165	[  0]	KNUM 	  5		0	; slot5 = 0.18
			166	[  0]	KSHORT	  6		0	; slot6 = 0
			167	[  0]	ISGT 	  5		6	; if slot5 > slot6
			168	[  0]	JMP  	  6		1	; 	goto 170
			169	[  0]	KNUM 	  5		1	; slot5 = 0.01
			170	[  0]	TGETS	  6	0	9	; slot6 = slot0._resonoscopeNudgePreview
			171	[  0]	ISF  	   		6	; if not <unknown table>._resonoscopeNudgePreview
			172	[  0]	JMP  	  7		8	; 	goto 181
			173	[  0]	GGET 	  7		38	; slot7 = _env["tonumber"]
			174	[  0]	TGETS	  9	6	8	; slot9 = <unknown table>._resonoscopeNudgePreview.col
			175	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
			176	[  0]	ISNEV	  7		1	; if tonumber ~= tonumber
			177	[  0]	JMP  	  7		3	; 	goto 181
			178	[  0]	TGETS	  7	6	7	; slot7 = <unknown table>._resonoscopeNudgePreview.symbol
			179	[  0]	IST  	   		7	; if <unknown table>._resonoscopeNudgePreview.symbol
			180	[  0]	JMP  	  8		1	; 	goto 182
			181	[  0]	KPRI 	  7		0	; slot7 = nil
			182	[  0]	ISTC 	  8		7	; slot8 = slot7; if slot7
			183	[  0]	JMP  	  8		2	; 	goto 186
			184	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
			185	[  0]	CALL 	  8	2	1	; slot8 = uv1"unknown"()
			186	[  0]	KPRI 	  9		0	; slot9 = nil
			187	[  0]	TSETS	  9	0	9	; slot0._resonoscopeNudgePreview = slot9
			188	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
			189	[  0]	TGETS	 11	0	18	; slot11 = slot0.grid
			190	[  0]	CALL 	  9	4	2	; slot9, slot10, slot11 = uv2"unknown"(slot10)
			191	[  0]	TGETS	 12	0	16	; slot12 = slot0.reels
			192	[  0]	TGETV	 12	12	1	; slot12 = <unknown table>.reels[tonumber]
			193	[  0]	TDUP 	 13		6	; slot13 = copy table#k6
			194	[  0]	TSETS	 11	13	5	; slot13.winningSymbolsBefore = <unknown table>.grid
			195	[  0]	TSETS	  5	13	4	; slot13.dur = slot5
			196	[  0]	TSETS	  3	13	3	; slot13.oldSymbols = slot3
			197	[  0]	TSETS	  8	13	2	; slot13.newSymbol = uv1"unknown"
			198	[  0]	ISFC 	 14		2	; slot14 = slot2; if not slot2
			199	[  0]	JMP  	 14		6	; 	goto 206
			200	[  0]	TGETS	 14	2	1	; slot14 = slot2.isReboundAxisFollowup
			201	[  0]	ISEQP	 14		2	; if <unknown table>.isReboundAxisFollowup == true
			202	[  0]	JMP  	 14		2	; 	goto 205
			203	[  0]	KPRI 	 14		1	; slot14 = false
			204	[  0]	JMP  	 15		1	; 	goto 206
			205	[  0]	KPRI 	 14		2	; slot14 = true
			206	[  0]	TSETS	 14	13	1	; slot13.isReboundAxisFollowup = slot14
			207	[  0]	TSETS	 13	12	14	; slot12.nudge = slot13
			208	[  0]	KPRI 	 12		2	; slot12 = true
			209	[  0]	KSTR 	 13		0	; slot13 = "started"
			210	[  0]	RET  	 12		3	; return slot12, slot13
		120	[  0]	TSETS	  6	1	8	; slot1.nudgeColumn = slot6
		121	[  0]	FNEW 	  6		6	; N/A:0-0: 3 args, 0 upvalues, 10 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	ISF  	   		1	; if not slot1
			  2	[  0]	JMP  	  3		3	; 	goto 6
			  3	[  0]	TGETS	  3	1	17	; slot3 = slot1._stopSfxPlayed
			  4	[  0]	ISF  	   		3	; if not <unknown table>._stopSfxPlayed
			  5	[  0]	JMP  	  4		1	; 	goto 7
			  6	[  0]	RET0 	  0		1	; return
			  7	[  0]	TGETS	  3	0	16	; slot3 = slot0.ui
			  8	[  0]	ISF  	   		3	; if not <unknown table>.ui
			  9	[  0]	JMP  	  4		7	; 	goto 17
			 10	[  0]	TGETS	  3	0	16	; slot3 = slot0.ui
			 11	[  0]	TGETS	  3	3	15	; slot3 = <unknown table>.ui.pauseOverlayState
			 12	[  0]	ISF  	   		3	; if not <unknown table>.ui.pauseOverlayState
			 13	[  0]	JMP  	  4		3	; 	goto 17
			 14	[  0]	TGETS	  3	0	16	; slot3 = slot0.ui
			 15	[  0]	TGETS	  3	3	15	; slot3 = <unknown table>.ui.pauseOverlayState
			 16	[  0]	TGETS	  3	3	14	; slot3 = <unknown table>.ui.pauseOverlayState.active
			 17	[  0]	IST  	   		3	; if <unknown table>.ui.pauseOverlayState.active
			 18	[  0]	JMP  	  4		6	; 	goto 25
			 19	[  0]	TGETS	  4	1	13	; slot4 = slot1.stopSfx
			 20	[  0]	IST  	   		4	; if <unknown table>.stopSfx
			 21	[  0]	JMP  	  5		4	; 	goto 26
			 22	[  0]	TGETS	  4	0	12	; slot4 = slot0.reelStopSfx
			 23	[  0]	IST  	   		4	; if <unknown table>.reelStopSfx
			 24	[  0]	JMP  	  5		1	; 	goto 26
			 25	[  0]	KPRI 	  4		0	; slot4 = nil
			 26	[  0]	ISF  	   		4	; if not slot4
			 27	[  0]	JMP  	  5		54	; 	goto 82
			 28	[  0]	KSHORT	  5		1	; slot5 = 1
			 29	[  0]	TGETS	  6	0	16	; slot6 = slot0.ui
			 30	[  0]	ISF  	   		6	; if not <unknown table>.ui
			 31	[  0]	JMP  	  7		12	; 	goto 44
			 32	[  0]	TGETS	  6	0	16	; slot6 = slot0.ui
			 33	[  0]	TGETS	  6	6	11	; slot6 = <unknown table>.ui.menuSettings
			 34	[  0]	ISF  	   		6	; if not <unknown table>.ui.menuSettings
			 35	[  0]	JMP  	  7		8	; 	goto 44
			 36	[  0]	TGETS	  6	0	16	; slot6 = slot0.ui
			 37	[  0]	TGETS	  6	6	11	; slot6 = <unknown table>.ui.menuSettings
			 38	[  0]	TGETS	  6	6	10	; slot6 = <unknown table>.ui.menuSettings.sfxVolume
			 39	[  0]	ISF  	   		6	; if not <unknown table>.ui.menuSettings.sfxVolume
			 40	[  0]	JMP  	  7		3	; 	goto 44
			 41	[  0]	TGETS	  6	0	16	; slot6 = slot0.ui
			 42	[  0]	TGETS	  6	6	11	; slot6 = <unknown table>.ui.menuSettings
			 43	[  0]	TGETS	  5	6	10	; slot5 = <unknown table>.ui.menuSettings.sfxVolume
			 44	[  0]	TGETS	  6	4	9	; slot6 = slot4.setVolume
			 45	[  0]	ISF  	   		6	; if not <unknown table>.setVolume
			 46	[  0]	JMP  	  7		8	; 	goto 55
			 47	[  0]	MOV  	  8		4	; slot8 = slot4
			 48	[  0]	TGETS	  6	4	9	; slot6 = slot4.setVolume
			 49	[  0]	TGETS	  9	1	8	; slot9 = slot1.stopSfxVolumeMul
			 50	[  0]	IST  	   		9	; if <unknown table>.stopSfxVolumeMul
			 51	[  0]	JMP  	 10		1	; 	goto 53
			 52	[  0]	KSHORT	  9		1	; slot9 = 1
			 53	[  0]	MULVV	  9	5	9	; slot9 = <unknown table>.ui.menuSettings.sfxVolume * slot9
			 54	[  0]	CALL 	  6	1	3	;  = <unknown table>.setVolume(slot7, slot8)
			 55	[  0]	TGETS	  6	4	7	; slot6 = slot4.setPitch
			 56	[  0]	ISF  	   		6	; if not <unknown table>.setPitch
			 57	[  0]	JMP  	  7		7	; 	goto 65
			 58	[  0]	MOV  	  8		4	; slot8 = slot4
			 59	[  0]	TGETS	  6	4	7	; slot6 = slot4.setPitch
			 60	[  0]	TGETS	  9	1	6	; slot9 = slot1.stopSfxPitch
			 61	[  0]	IST  	   		9	; if <unknown table>.stopSfxPitch
			 62	[  0]	JMP  	 10		1	; 	goto 64
			 63	[  0]	KNUM 	  9		0	; slot9 = 1.35
			 64	[  0]	CALL 	  6	1	3	;  = <unknown table>.setPitch(slot7, slot8)
			 65	[  0]	TGETS	  6	4	5	; slot6 = slot4.isPlaying
			 66	[  0]	ISF  	   		6	; if not <unknown table>.isPlaying
			 67	[  0]	JMP  	  7		8	; 	goto 76
			 68	[  0]	MOV  	  8		4	; slot8 = slot4
			 69	[  0]	TGETS	  6	4	5	; slot6 = slot4.isPlaying
			 70	[  0]	CALL 	  6	2	2	; slot6 = <unknown table>.isPlaying(slot7)
			 71	[  0]	ISF  	   		6	; if not <unknown table>.isPlaying
			 72	[  0]	JMP  	  7		3	; 	goto 76
			 73	[  0]	MOV  	  8		4	; slot8 = slot4
			 74	[  0]	TGETS	  6	4	4	; slot6 = slot4.stop
			 75	[  0]	CALL 	  6	1	2	;  = <unknown table>.stop(slot7)
			 76	[  0]	TGETS	  6	4	3	; slot6 = slot4.play
			 77	[  0]	ISF  	   		6	; if not <unknown table>.play
			 78	[  0]	JMP  	  7		3	; 	goto 82
			 79	[  0]	MOV  	  8		4	; slot8 = slot4
			 80	[  0]	TGETS	  6	4	3	; slot6 = slot4.play
			 81	[  0]	CALL 	  6	1	2	;  = <unknown table>.play(slot7)
			 82	[  0]	TGETS	  5	1	2	; slot5 = slot1.onImpact
			 83	[  0]	ISF  	   		5	; if not <unknown table>.onImpact
			 84	[  0]	JMP  	  6		9	; 	goto 94
			 85	[  0]	TGETS	  5	1	1	; slot5 = slot1._impactCallbackPlayed
			 86	[  0]	IST  	   		5	; if <unknown table>._impactCallbackPlayed
			 87	[  0]	JMP  	  5		6	; 	goto 94
			 88	[  0]	GGET 	  5		0	; slot5 = _env["pcall"]
			 89	[  0]	TGETS	  7	1	2	; slot7 = slot1.onImpact
			 90	[  0]	MOV  	  8		2	; slot8 = slot2
			 91	[  0]	CALL 	  5	1	3	;  = pcall(<unknown table>.play, <unknown table>.onImpact)
			 92	[  0]	KPRI 	  5		2	; slot5 = true
			 93	[  0]	TSETS	  5	1	1	; slot1._impactCallbackPlayed = slot5
			 94	[  0]	KPRI 	  5		2	; slot5 = true
			 95	[  0]	TSETS	  5	1	17	; slot1._stopSfxPlayed = slot5
			 96	[  0]	RET0 	  0		1	; return
		122	[  0]	FNEW 	  7		5	; N/A:0-0: 1 args, 0 upvalues, 3 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	SUBNV	  1	0	0	; slot1 = 1 - slot0
			  2	[  0]	SUBNV	  2	0	0	; slot2 = 1 - slot0
			  3	[  0]	MULVV	  1	1	2	; slot1 = slot1 * slot2
			  4	[  0]	SUBNV	  1	1	0	; slot1 = 1 - slot1
			  5	[  0]	RET1 	  1		2	; return slot1
		123	[  0]	FNEW 	  8		4	; N/A:0-0: 1 args, 0 upvalues, 2 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	SUBNV	  0	0	0	; slot0 = 1 - slot0
			  2	[  0]	MULVV	  1	0	0	; slot1 = slot0 * slot0
			  3	[  0]	MULVV	  1	1	0	; slot1 = slot1 * slot0
			  4	[  0]	SUBNV	  1	1	0	; slot1 = 1 - slot1
			  5	[  0]	RET1 	  1		2	; return slot1
		124	[  0]	FNEW 	  9		3	; N/A:0-0: 1 args, 0 upvalues, 2 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	SUBNV	  0	0	0	; slot0 = 1 - slot0
			  2	[  0]	MULVV	  1	0	0	; slot1 = slot0 * slot0
			  3	[  0]	MULVV	  1	1	0	; slot1 = slot1 * slot0
			  4	[  0]	MULVV	  1	1	0	; slot1 = slot1 * slot0
			  5	[  0]	SUBNV	  1	1	0	; slot1 = 1 - slot1
			  6	[  0]	RET1 	  1		2	; return slot1
		125	[  0]	FNEW 	 10		2	; N/A:0-0: 1 args, 0 upvalues, 3 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	KNUM 	  1		0	; slot1 = 0.5
			  2	[  0]	ISGE 	  0		1	; if slot0 >= slot1
			  3	[  0]	JMP  	  1		4	; 	goto 8
			  4	[  0]	MULNV	  1	0	1	; slot1 = 2 * slot0
			  5	[  0]	MULVV	  1	1	0	; slot1 = slot1 * slot0
			  6	[  0]	RET1 	  1		2	; return slot1
			  7	[  0]	JMP  	  1		8	; 	goto 16
			  8	[  0]	MULNV	  1	0	2	; slot1 = -2 * slot0
			  9	[  0]	ADDVN	  1	1	1	; slot1 = slot1 + 2
			 10	[  0]	MULNV	  2	0	2	; slot2 = -2 * slot0
			 11	[  0]	ADDVN	  2	2	1	; slot2 = slot2 + 2
			 12	[  0]	MULVV	  1	1	2	; slot1 = slot1 * slot2
			 13	[  0]	DIVVN	  1	1	1	; slot1 = slot1 / 2
			 14	[  0]	SUBNV	  1	1	3	; slot1 = 1 - slot1
			 15	[  0]	RET1 	  1		2	; return slot1
			 16	[  0]	RET0 	  0		1	; return
		126	[  0]	FNEW 	 11		0	; N/A:0-0: 2 args, 10 upvalues, 27 slots
			
			;;;; constant tables ;;;;
			ktable#57 = [
				]
			
			
			ktable#65 = [
				[t] = 0,
				[active] = true,
				[phase] = impact,
				]
			
			
			ktable#88 = [
				]
			
			
			ktable#118 = [
				[chained] = true,
				]
			
			
			ktable#129 = [
				[checked] = true,
				[hd] = 0.35,
				[ht] = 0,
				[highlightActive] = false,
				[awarded] = false,
				[fxStarted] = false,
				[_doubleLedgerCascade] = true,
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	TGETS	  2	0	169	; slot2 = slot0.result
			  2	[  0]	ISF  	   		2	; if not <unknown table>.result
			  3	[  0]	JMP  	  3		24	; 	goto 28
			  4	[  0]	TGETS	  2	0	169	; slot2 = slot0.result
			  5	[  0]	TGETS	  2	2	168	; slot2 = <unknown table>.result.highlightActive
			  6	[  0]	ISF  	   		2	; if not <unknown table>.result.highlightActive
			  7	[  0]	JMP  	  3		20	; 	goto 28
			  8	[  0]	TGETS	  2	0	169	; slot2 = slot0.result
			  9	[  0]	TGETS	  3	0	169	; slot3 = slot0.result
			 10	[  0]	TGETS	  3	3	167	; slot3 = <unknown table>.result.ht
			 11	[  0]	IST  	   		3	; if <unknown table>.result.ht
			 12	[  0]	JMP  	  4		1	; 	goto 14
			 13	[  0]	KSHORT	  3		0	; slot3 = 0
			 14	[  0]	ADDVV	  3	3	1	; slot3 = slot3 + slot1
			 15	[  0]	TSETS	  3	2	167	; <unknown table>.result.ht = slot3
			 16	[  0]	TGETS	  2	0	169	; slot2 = slot0.result
			 17	[  0]	TGETS	  2	2	167	; slot2 = <unknown table>.result.ht
			 18	[  0]	TGETS	  3	0	169	; slot3 = slot0.result
			 19	[  0]	TGETS	  3	3	166	; slot3 = <unknown table>.result.hd
			 20	[  0]	IST  	   		3	; if <unknown table>.result.hd
			 21	[  0]	JMP  	  4		1	; 	goto 23
			 22	[  0]	KNUM 	  3		0	; slot3 = 0.35
			 23	[  0]	ISGT 	  3		2	; if slot3 > <unknown table>.result.ht
			 24	[  0]	JMP  	  2		3	; 	goto 28
			 25	[  0]	TGETS	  2	0	169	; slot2 = slot0.result
			 26	[  0]	KPRI 	  3		1	; slot3 = false
			 27	[  0]	TSETS	  3	2	168	; <unknown table>.result.highlightActive = slot3
			 28	[  0]	TGETS	  2	0	165	; slot2 = slot0._doubleLedgerCascade
			 29	[  0]	ISF  	   		2	; if not <unknown table>._doubleLedgerCascade
			 30	[  0]	JMP  	  3		312	; 	goto 343
			 31	[  0]	TGETS	  3	2	164	; slot3 = <unknown table>._doubleLedgerCascade.active
			 32	[  0]	ISF  	   		3	; if not <unknown table>._doubleLedgerCascade.active
			 33	[  0]	JMP  	  4		309	; 	goto 343
			 34	[  0]	TGETS	  3	2	163	; slot3 = <unknown table>._doubleLedgerCascade.t
			 35	[  0]	IST  	   		3	; if <unknown table>._doubleLedgerCascade.t
			 36	[  0]	JMP  	  4		1	; 	goto 38
			 37	[  0]	KSHORT	  3		0	; slot3 = 0
			 38	[  0]	ISTC 	  4		1	; slot4 = slot1; if slot1
			 39	[  0]	JMP  	  4		1	; 	goto 41
			 40	[  0]	KSHORT	  4		0	; slot4 = 0
			 41	[  0]	ADDVV	  3	3	4	; slot3 = slot3 + slot4
			 42	[  0]	TSETS	  3	2	163	; <unknown table>._doubleLedgerCascade.t = slot3
			 43	[  0]	TGETS	  3	2	162	; slot3 = <unknown table>._doubleLedgerCascade.phase
			 44	[  0]	ISNES	  3		161	; if <unknown table>._doubleLedgerCascade.phase ~= "vanish"
			 45	[  0]	JMP  	  3		57	; 	goto 103
			 46	[  0]	TGETS	  3	2	163	; slot3 = <unknown table>._doubleLedgerCascade.t
			 47	[  0]	TGETS	  4	2	160	; slot4 = <unknown table>._doubleLedgerCascade.vanishDur
			 48	[  0]	IST  	   		4	; if <unknown table>._doubleLedgerCascade.vanishDur
			 49	[  0]	JMP  	  5		1	; 	goto 51
			 50	[  0]	KNUM 	  4		1	; slot4 = 0.3
			 51	[  0]	ISGT 	  4		3	; if slot4 > <unknown table>._doubleLedgerCascade.t
			 52	[  0]	JMP  	  3		50	; 	goto 103
			 53	[  0]	KSTR 	  3		159	; slot3 = "drop"
			 54	[  0]	TSETS	  3	2	162	; <unknown table>._doubleLedgerCascade.phase = slot3
			 55	[  0]	KSHORT	  3		0	; slot3 = 0
			 56	[  0]	TSETS	  3	2	163	; <unknown table>._doubleLedgerCascade.t = slot3
			 57	[  0]	TGETS	  3	2	157	; slot3 = <unknown table>._doubleLedgerCascade.finalGrid
			 58	[  0]	TSETS	  3	0	158	; slot0.grid = <unknown table>._doubleLedgerCascade.finalGrid
			 59	[  0]	KSHORT	  3		1	; slot3 = 1
			 60	[  0]	TGETS	  4	0	156	; slot4 = slot0.ui
			 61	[  0]	TGETS	  4	4	155	; slot4 = <unknown table>.ui.slot
			 62	[  0]	TGETS	  4	4	154	; slot4 = <unknown table>.ui.slot.cols
			 63	[  0]	IST  	   		4	; if <unknown table>.ui.slot.cols
			 64	[  0]	JMP  	  5		1	; 	goto 66
			 65	[  0]	KSHORT	  4		3	; slot4 = 3
			 66	[  0]	KSHORT	  5		1	; slot5 = 1
			 67	[  0]	FORI 	  3		34	; for slot6 = slot3,slot4,slot5 else goto 102
			 68	[  0]	TGETS	  7	0	153	; slot7 = slot0.reels
			 69	[  0]	ISF  	   		7	; if not <unknown table>.reels
			 70	[  0]	JMP  	  8		2	; 	goto 73
			 71	[  0]	TGETS	  7	0	153	; slot7 = slot0.reels
			 72	[  0]	TGETV	  7	7	6	; slot7 = <unknown table>.reels[slot6]
			 73	[  0]	ISF  	   		7	; if not slot7
			 74	[  0]	JMP  	  8		26	; 	goto 101
			 75	[  0]	TNEW 	  8		4	; slot8 = new table( array: 4, dict: 1)
			 76	[  0]	TGETS	  9	0	158	; slot9 = slot0.grid
			 77	[  0]	TGETB	  9	9	1	; slot9 = <unknown table>.grid[1]
			 78	[  0]	ISF  	   		9	; if not slot9
			 79	[  0]	JMP  	 10		3	; 	goto 83
			 80	[  0]	TGETS	  9	0	158	; slot9 = slot0.grid
			 81	[  0]	TGETB	  9	9	1	; slot9 = <unknown table>.grid[1]
			 82	[  0]	TGETV	  9	9	6	; slot9 = slot9[slot6]
			 83	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
			 84	[  0]	TGETS	  9	0	158	; slot9 = slot0.grid
			 85	[  0]	TGETB	  9	9	2	; slot9 = <unknown table>.grid[2]
			 86	[  0]	ISF  	   		9	; if not slot9
			 87	[  0]	JMP  	 10		3	; 	goto 91
			 88	[  0]	TGETS	  9	0	158	; slot9 = slot0.grid
			 89	[  0]	TGETB	  9	9	2	; slot9 = <unknown table>.grid[2]
			 90	[  0]	TGETV	  9	9	6	; slot9 = slot9[slot6]
			 91	[  0]	TSETB	  9	8	2	; slot8[2] = slot9
			 92	[  0]	TGETS	  9	0	158	; slot9 = slot0.grid
			 93	[  0]	TGETB	  9	9	3	; slot9 = <unknown table>.grid[3]
			 94	[  0]	ISF  	   		9	; if not slot9
			 95	[  0]	JMP  	 10		3	; 	goto 99
			 96	[  0]	TGETS	  9	0	158	; slot9 = slot0.grid
			 97	[  0]	TGETB	  9	9	3	; slot9 = <unknown table>.grid[3]
			 98	[  0]	TGETV	  9	9	6	; slot9 = slot9[slot6]
			 99	[  0]	TSETB	  9	8	3	; slot8[3] = slot9
			100	[  0]	TSETS	  8	7	152	; slot7.finalSymbols = slot8
			101	[  0]	FORL 	  3		-34	; slot6 = slot6 + slot5; if cmp(slot6, sign slot5,  slot4) goto 68
			102	[  0]	JMP  	  3		240	; 	goto 343
			103	[  0]	TGETS	  3	2	162	; slot3 = <unknown table>._doubleLedgerCascade.phase
			104	[  0]	ISNES	  3		159	; if <unknown table>._doubleLedgerCascade.phase ~= "drop"
			105	[  0]	JMP  	  3		112	; 	goto 218
			106	[  0]	TGETS	  3	2	151	; slot3 = <unknown table>._doubleLedgerCascade.dropTravelDur
			107	[  0]	IST  	   		3	; if <unknown table>._doubleLedgerCascade.dropTravelDur
			108	[  0]	JMP  	  4		1	; 	goto 110
			109	[  0]	KNUM 	  3		2	; slot3 = 0.42
			110	[  0]	TGETS	  4	2	150	; slot4 = <unknown table>._doubleLedgerCascade.dropStagger
			111	[  0]	IST  	   		4	; if <unknown table>._doubleLedgerCascade.dropStagger
			112	[  0]	JMP  	  5		1	; 	goto 114
			113	[  0]	KNUM 	  4		3	; slot4 = 0.075
			114	[  0]	TGETS	  5	2	149	; slot5 = <unknown table>._doubleLedgerCascade.dropContactRatio
			115	[  0]	IST  	   		5	; if <unknown table>._doubleLedgerCascade.dropContactRatio
			116	[  0]	JMP  	  6		1	; 	goto 118
			117	[  0]	KNUM 	  5		4	; slot5 = 0.76
			118	[  0]	KSHORT	  6		1	; slot6 = 1
			119	[  0]	TGETS	  7	0	156	; slot7 = slot0.ui
			120	[  0]	TGETS	  7	7	155	; slot7 = <unknown table>.ui.slot
			121	[  0]	TGETS	  7	7	154	; slot7 = <unknown table>.ui.slot.cols
			122	[  0]	IST  	   		7	; if <unknown table>.ui.slot.cols
			123	[  0]	JMP  	  8		1	; 	goto 125
			124	[  0]	KSHORT	  7		3	; slot7 = 3
			125	[  0]	KSHORT	  8		1	; slot8 = 1
			126	[  0]	FORI 	  6		79	; for slot9 = slot6,slot7,slot8 else goto 206
			127	[  0]	SUBVN	 10	9	5	; slot10 = slot9 - 1
			128	[  0]	MULVV	 10	10	4	; slot10 = slot10 * slot4
			129	[  0]	MULVV	 11	3	5	; slot11 = slot3 * slot5
			130	[  0]	ADDVV	 10	10	11	; slot10 = slot10 + slot11
			131	[  0]	TGETS	 11	2	163	; slot11 = <unknown table>._doubleLedgerCascade.t
			132	[  0]	ISGT 	 10		11	; if slot10 > <unknown table>._doubleLedgerCascade.t
			133	[  0]	JMP  	 11		71	; 	goto 205
			134	[  0]	TGETS	 11	2	148	; slot11 = <unknown table>._doubleLedgerCascade.dropImpactPlayed
			135	[  0]	TGETV	 11	11	9	; slot11 = <unknown table>._doubleLedgerCascade.dropImpactPlayed[slot9]
			136	[  0]	IST  	   		11	; if slot11
			137	[  0]	JMP  	 11		67	; 	goto 205
			138	[  0]	TGETS	 11	2	148	; slot11 = <unknown table>._doubleLedgerCascade.dropImpactPlayed
			139	[  0]	KPRI 	 12		2	; slot12 = true
			140	[  0]	TSETV	 12	11	9	; <unknown table>._doubleLedgerCascade.dropImpactPlayed[slot9] = slot12
			141	[  0]	TGETS	 11	0	153	; slot11 = slot0.reels
			142	[  0]	ISF  	   		11	; if not <unknown table>.reels
			143	[  0]	JMP  	 12		2	; 	goto 146
			144	[  0]	TGETS	 11	0	153	; slot11 = slot0.reels
			145	[  0]	TGETV	 11	11	9	; slot11 = <unknown table>.reels[slot9]
			146	[  0]	ISF  	   		11	; if not slot11
			147	[  0]	JMP  	 12		37	; 	goto 185
			148	[  0]	TGETS	 12	11	147	; slot12 = slot11.hit
			149	[  0]	IST  	   		12	; if <unknown table>.hit
			150	[  0]	JMP  	 13		1	; 	goto 152
			151	[  0]	TNEW 	 12		0	; slot12 = new table( array: 0, dict: 1)
			152	[  0]	TSETS	 12	11	147	; slot11.hit = slot12
			153	[  0]	TGETS	 12	11	147	; slot12 = slot11.hit
			154	[  0]	KPRI 	 13		2	; slot13 = true
			155	[  0]	TSETS	 13	12	164	; <unknown table>.hit.active = slot13
			156	[  0]	TGETS	 12	11	147	; slot12 = slot11.hit
			157	[  0]	KSHORT	 13		0	; slot13 = 0
			158	[  0]	TSETS	 13	12	163	; <unknown table>.hit.t = slot13
			159	[  0]	TGETS	 12	11	147	; slot12 = slot11.hit
			160	[  0]	KNUM 	 13		6	; slot13 = 0.24
			161	[  0]	TSETS	 13	12	146	; <unknown table>.hit.dur = slot13
			162	[  0]	TGETS	 12	11	147	; slot12 = slot11.hit
			163	[  0]	TGETS	 13	0	156	; slot13 = slot0.ui
			164	[  0]	TGETS	 13	13	155	; slot13 = <unknown table>.ui.slot
			165	[  0]	TGETS	 13	13	154	; slot13 = <unknown table>.ui.slot.cols
			166	[  0]	IST  	   		13	; if <unknown table>.ui.slot.cols
			167	[  0]	JMP  	 14		1	; 	goto 169
			168	[  0]	KSHORT	 13		3	; slot13 = 3
			169	[  0]	ISNEV	  9		13	; if slot9 ~= slot13
			170	[  0]	JMP  	 13		2	; 	goto 173
			171	[  0]	KNUM 	 13		7	; slot13 = 0.04
			172	[  0]	JMP  	 14		1	; 	goto 174
			173	[  0]	KSHORT	 13		0	; slot13 = 0
			174	[  0]	ADDNV	 13	13	8	; slot13 = 0.15 + slot13
			175	[  0]	TSETS	 13	12	145	; <unknown table>.hit.amp = slot13
			176	[  0]	TGETS	 12	11	147	; slot12 = slot11.hit
			177	[  0]	KSHORT	 13		0	; slot13 = 0
			178	[  0]	TSETS	 13	12	144	; <unknown table>.hit.offset = slot13
			179	[  0]	TGETS	 12	11	147	; slot12 = slot11.hit
			180	[  0]	KSHORT	 13		1	; slot13 = 1
			181	[  0]	TSETS	 13	12	143	; <unknown table>.hit.squashX = slot13
			182	[  0]	TGETS	 12	11	147	; slot12 = slot11.hit
			183	[  0]	KSHORT	 13		1	; slot13 = 1
			184	[  0]	TSETS	 13	12	142	; <unknown table>.hit.squashY = slot13
			185	[  0]	GGET 	 12		141	; slot12 = _env["type"]
			186	[  0]	TGETS	 14	0	140	; slot14 = slot0.onDoubleLedgerDropImpact
			187	[  0]	CALL 	 12	2	2	; slot12 = type(slot13)
			188	[  0]	ISNES	 12		139	; if type ~= "function"
			189	[  0]	JMP  	 12		15	; 	goto 205
			190	[  0]	GGET 	 12		138	; slot12 = _env["pcall"]
			191	[  0]	TGETS	 14	0	140	; slot14 = slot0.onDoubleLedgerDropImpact
			192	[  0]	MOV  	 15		9	; slot15 = slot9
			193	[  0]	TGETS	 16	0	156	; slot16 = slot0.ui
			194	[  0]	TGETS	 16	16	155	; slot16 = <unknown table>.ui.slot
			195	[  0]	TGETS	 16	16	154	; slot16 = <unknown table>.ui.slot.cols
			196	[  0]	IST  	   		16	; if <unknown table>.ui.slot.cols
			197	[  0]	JMP  	 17		1	; 	goto 199
			198	[  0]	KSHORT	 16		3	; slot16 = 3
			199	[  0]	ISEQV	  9		16	; if slot9 == slot16
			200	[  0]	JMP  	 16		2	; 	goto 203
			201	[  0]	KPRI 	 16		1	; slot16 = false
			202	[  0]	JMP  	 17		1	; 	goto 204
			203	[  0]	KPRI 	 16		2	; slot16 = true
			204	[  0]	CALL 	 12	1	4	;  = pcall(slot13, <unknown table>.onDoubleLedgerDropImpact, slot15)
			205	[  0]	FORL 	  6		-79	; slot9 = slot9 + slot8; if cmp(slot9, sign slot8,  slot7) goto 127
			206	[  0]	TGETS	  6	2	163	; slot6 = <unknown table>._doubleLedgerCascade.t
			207	[  0]	TGETS	  7	2	137	; slot7 = <unknown table>._doubleLedgerCascade.dropDur
			208	[  0]	IST  	   		7	; if <unknown table>._doubleLedgerCascade.dropDur
			209	[  0]	JMP  	  8		1	; 	goto 211
			210	[  0]	KNUM 	  7		9	; slot7 = 0.54
			211	[  0]	ISGT 	  7		6	; if slot7 > <unknown table>._doubleLedgerCascade.t
			212	[  0]	JMP  	  6		130	; 	goto 343
			213	[  0]	KSTR 	  6		136	; slot6 = "impact"
			214	[  0]	TSETS	  6	2	162	; <unknown table>._doubleLedgerCascade.phase = slot6
			215	[  0]	KSHORT	  6		0	; slot6 = 0
			216	[  0]	TSETS	  6	2	163	; <unknown table>._doubleLedgerCascade.t = slot6
			217	[  0]	JMP  	  3		125	; 	goto 343
			218	[  0]	TGETS	  3	2	162	; slot3 = <unknown table>._doubleLedgerCascade.phase
			219	[  0]	ISNES	  3		136	; if <unknown table>._doubleLedgerCascade.phase ~= "impact"
			220	[  0]	JMP  	  3		122	; 	goto 343
			221	[  0]	TGETS	  3	2	163	; slot3 = <unknown table>._doubleLedgerCascade.t
			222	[  0]	TGETS	  4	2	135	; slot4 = <unknown table>._doubleLedgerCascade.impactDur
			223	[  0]	IST  	   		4	; if <unknown table>._doubleLedgerCascade.impactDur
			224	[  0]	JMP  	  5		1	; 	goto 226
			225	[  0]	KNUM 	  4		10	; slot4 = 0.12
			226	[  0]	ISGT 	  4		3	; if slot4 > <unknown table>._doubleLedgerCascade.t
			227	[  0]	JMP  	  3		115	; 	goto 343
			228	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			229	[  0]	TGETS	  5	0	158	; slot5 = slot0.grid
			230	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = uv0"unknown"(slot4)
			231	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
			232	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
			233	[  0]	GGET 	  8		134	; slot8 = _env["ipairs"]
			234	[  0]	TGETS	 10	2	133	; slot10 = <unknown table>._doubleLedgerCascade.beforeWinningLines
			235	[  0]	IST  	   		10	; if <unknown table>._doubleLedgerCascade.beforeWinningLines
			236	[  0]	JMP  	 11		1	; 	goto 238
			237	[  0]	TNEW 	 10		0	; slot10 = new table( array: 0, dict: 1)
			238	[  0]	CALL 	  8	4	2	; slot8, slot9, slot10 = ipairs(slot9)
			239	[  0]	JMP  	 11		2	; 	goto 242
			240	[  0]	KPRI 	 13		2	; slot13 = true
			241	[  0]	TSETV	 13	6	12	; slot6[pcall] = slot13
			242	[  0]	ITERC	 11	3	3	; slot11, slot12, slot13 = ipairs, slot9, slot10; slot11, slot12 = ipairs(slot9, slot10)
			243	[  0]	ITERL	 11		-4	; slot10 = slot11; if slot11 != nil goto 240
			244	[  0]	FNEW 	  8		132	; N/A:0-0: 1 args, 2 upvalues, 11 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
				  2	[  0]	TGETV	  1	1	0	; slot1 = uv0"unknown"[slot0]
				  3	[  0]	IST  	   		1	; if slot1
				  4	[  0]	JMP  	  2		2	; 	goto 7
				  5	[  0]	KPRI 	  2		1	; slot2 = false
				  6	[  0]	RET1 	  2		2	; return slot2
				  7	[  0]	GGET 	  2		3	; slot2 = _env["ipairs"]
				  8	[  0]	MOV  	  4		1	; slot4 = slot1
				  9	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
				 10	[  0]	JMP  	  5		25	; 	goto 36
				 11	[  0]	TGETB	  7	6	1	; slot7 = slot6[1]
				 12	[  0]	TGETB	  8	6	2	; slot8 = slot6[2]
				 13	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
				 14	[  0]	TGETS	  9	9	2	; slot9 = uv1"unknown".dropMap
				 15	[  0]	ISF  	   		9	; if not uv1"unknown".dropMap
				 16	[  0]	JMP  	 10		9	; 	goto 26
				 17	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
				 18	[  0]	TGETS	  9	9	2	; slot9 = uv1"unknown".dropMap
				 19	[  0]	TGETV	  9	9	8	; slot9 = uv1"unknown".dropMap[slot8]
				 20	[  0]	ISF  	   		9	; if not slot9
				 21	[  0]	JMP  	 10		4	; 	goto 26
				 22	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
				 23	[  0]	TGETS	  9	9	2	; slot9 = uv1"unknown".dropMap
				 24	[  0]	TGETV	  9	9	8	; slot9 = uv1"unknown".dropMap[slot8]
				 25	[  0]	TGETV	  9	9	7	; slot9 = slot9[slot7]
				 26	[  0]	ISF  	   		9	; if not slot9
				 27	[  0]	JMP  	 10		8	; 	goto 36
				 28	[  0]	TGETS	 10	9	1	; slot10 = slot9.isNew
				 29	[  0]	IST  	   		10	; if <unknown table>.isNew
				 30	[  0]	JMP  	 11		3	; 	goto 34
				 31	[  0]	TGETS	 10	9	0	; slot10 = slot9.fromRow
				 32	[  0]	ISEQV	 10		7	; if <unknown table>.fromRow == slot7
				 33	[  0]	JMP  	 10		2	; 	goto 36
				 34	[  0]	KPRI 	 10		2	; slot10 = true
				 35	[  0]	RET1 	 10		2	; return slot10
				 36	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5, slot6 = slot2(slot3, slot4)
				 37	[  0]	ITERL	  5		-27	; slot4 = slot5; if slot5 != nil goto 11
				 38	[  0]	KPRI 	  2		1	; slot2 = false
				 39	[  0]	RET1 	  2		2	; return slot2
			245	[  0]	GGET 	  9		134	; slot9 = _env["ipairs"]
			246	[  0]	ISTC 	 11		3	; slot11 = uv0"unknown"; if uv0"unknown"
			247	[  0]	JMP  	 11		1	; 	goto 249
			248	[  0]	TNEW 	 11		0	; slot11 = new table( array: 0, dict: 1)
			249	[  0]	CALL 	  9	4	2	; slot9, slot10, slot11 = ipairs(slot10)
			250	[  0]	JMP  	 12		13	; 	goto 264
			251	[  0]	TGETV	 14	6	13	; slot14 = slot6[slot13]
			252	[  0]	ISF  	   		14	; if not slot14
			253	[  0]	JMP  	 14		5	; 	goto 259
			254	[  0]	MOV  	 14		8	; slot14 = slot8
			255	[  0]	MOV  	 16		13	; slot16 = slot13
			256	[  0]	CALL 	 14	2	2	; slot14 = slot14(slot15)
			257	[  0]	ISF  	   		14	; if not slot14
			258	[  0]	JMP  	 15		5	; 	goto 264
			259	[  0]	GGET 	 14		131	; slot14 = _env["table"]
			260	[  0]	TGETS	 14	14	130	; slot14 = table.insert
			261	[  0]	MOV  	 16		7	; slot16 = slot7
			262	[  0]	MOV  	 17		13	; slot17 = slot13
			263	[  0]	CALL 	 14	1	3	;  = table.insert(slot15, slot16)
			264	[  0]	ITERC	 12	3	3	; slot12, slot13, slot14 = ipairs, slot10, slot11; slot12, slot13 = ipairs(slot10, slot11)
			265	[  0]	ITERL	 12		-15	; slot11 = pcall; if pcall != nil goto 251
			266	[  0]	MOV  	  9		4	; slot9 = slot4
			267	[  0]	TGETB	 10	7	1	; slot10 = slot7[1]
			268	[  0]	ISF  	   		10	; if not slot10
			269	[  0]	JMP  	 11		6	; 	goto 276
			270	[  0]	ISF  	   		5	; if not <unknown table>.grid
			271	[  0]	JMP  	 10		4	; 	goto 276
			272	[  0]	TGETB	 10	7	1	; slot10 = slot7[1]
			273	[  0]	TGETV	 10	5	10	; slot10 = <unknown table>.grid[slot10]
			274	[  0]	ISTC 	  9		10	; slot9 = slot10; if slot10
			275	[  0]	JMP  	 11		0	; 	goto 276
			276	[  0]	TDUP 	 10		129	; slot10 = copy table#k129
			277	[  0]	LEN  	 11		7	; slot11 = #slot7
			278	[  0]	KSHORT	 12		0	; slot12 = 0
			279	[  0]	ISLT 	 12		11	; if slot12 < slot11
			280	[  0]	JMP  	 11		2	; 	goto 283
			281	[  0]	KPRI 	 11		1	; slot11 = false
			282	[  0]	JMP  	 12		1	; 	goto 284
			283	[  0]	KPRI 	 11		2	; slot11 = true
			284	[  0]	TSETS	 11	10	128	; slot10.won = slot11
			285	[  0]	TSETS	  7	10	127	; slot10.winningLines = slot7
			286	[  0]	TSETS	  7	10	126	; slot10.newWinningLines = slot7
			287	[  0]	TSETS	  3	10	125	; slot10.allWinningLinesAfterCascade = uv0"unknown"
			288	[  0]	TSETS	  9	10	124	; slot10.symbol = slot9
			289	[  0]	TSETS	  5	10	123	; slot10.symbolsByLine = <unknown table>.grid
			290	[  0]	TGETS	 11	0	169	; slot11 = slot0.result
			291	[  0]	ISF  	   		11	; if not <unknown table>.result
			292	[  0]	JMP  	 12		7	; 	goto 300
			293	[  0]	TGETS	 11	0	169	; slot11 = slot0.result
			294	[  0]	TGETS	 11	11	122	; slot11 = <unknown table>.result._jackpot
			295	[  0]	ISEQP	 11		2	; if <unknown table>.result._jackpot == true
			296	[  0]	JMP  	 11		2	; 	goto 299
			297	[  0]	KPRI 	 11		1	; slot11 = false
			298	[  0]	JMP  	 12		1	; 	goto 300
			299	[  0]	KPRI 	 11		2	; slot11 = true
			300	[  0]	TSETS	 11	10	122	; slot10._jackpot = slot11
			301	[  0]	UGET 	 11		2	; slot11 = uv2"unknwon"
			302	[  0]	TGETS	 11	11	121	; slot11 = uv2"unknown".isJackpotResult
			303	[  0]	MOV  	 13		10	; slot13 = slot10
			304	[  0]	MOV  	 14		3	; slot14 = uv0"unknown"
			305	[  0]	CALL 	 11	2	3	; slot11 = uv2"unknown".isJackpotResult(slot12, slot13)
			306	[  0]	TSETS	 11	10	122	; slot10._jackpot = uv2"unknown".isJackpotResult
			307	[  0]	TSETS	  3	0	120	; slot0.previousWinningLines = uv0"unknown"
			308	[  0]	TSETS	 10	0	169	; slot0.result = slot10
			309	[  0]	KPRI 	 11		1	; slot11 = false
			310	[  0]	TSETS	 11	2	164	; <unknown table>._doubleLedgerCascade.active = slot11
			311	[  0]	KPRI 	 11		0	; slot11 = nil
			312	[  0]	TSETS	 11	0	165	; slot0._doubleLedgerCascade = slot11
			313	[  0]	LEN  	 11		3	; slot11 = #uv0"unknown"
			314	[  0]	KSHORT	 12		0	; slot12 = 0
			315	[  0]	ISGE 	 12		11	; if slot12 >= slot11
			316	[  0]	JMP  	 11		17	; 	goto 334
			317	[  0]	TNEW 	 11		0	; slot11 = new table( array: 0, dict: 1)
			318	[  0]	GGET 	 12		134	; slot12 = _env["ipairs"]
			319	[  0]	MOV  	 14		3	; slot14 = uv0"unknown"
			320	[  0]	CALL 	 12	4	2	; slot12, slot13, slot14 = ipairs(slot13)
			321	[  0]	JMP  	 15		5	; 	goto 327
			322	[  0]	GGET 	 17		131	; slot17 = _env["table"]
			323	[  0]	TGETS	 17	17	130	; slot17 = table.insert
			324	[  0]	MOV  	 19		11	; slot19 = slot11
			325	[  0]	MOV  	 20		16	; slot20 = slot16
			326	[  0]	CALL 	 17	1	3	;  = table.insert(slot18, slot19)
			327	[  0]	ITERC	 15	3	3	; slot15, slot16, slot17 = ipairs, slot13, uv0"unknown"; slot15, slot16 = ipairs(slot13, uv0"unknown")
			328	[  0]	ITERL	 15		-7	; uv0"unknown" = slot15; if slot15 != nil goto 322
			329	[  0]	TDUP 	 12		118	; slot12 = copy table#k118
			330	[  0]	TGETB	 13	11	1	; slot13 = slot11[1]
			331	[  0]	TSETS	 13	12	117	; slot12.lineId = slot13
			332	[  0]	TSETS	 11	12	116	; slot12.lineIds = slot11
			333	[  0]	TSETS	 12	0	119	; slot0._doubleLedgerCascadePending = slot12
			334	[  0]	GGET 	 11		141	; slot11 = _env["type"]
			335	[  0]	TGETS	 13	0	115	; slot13 = slot0.onDoubleLedgerCascadeComplete
			336	[  0]	CALL 	 11	2	2	; slot11 = type(slot12)
			337	[  0]	ISNES	 11		139	; if type ~= "function"
			338	[  0]	JMP  	 11		4	; 	goto 343
			339	[  0]	GGET 	 11		138	; slot11 = _env["pcall"]
			340	[  0]	TGETS	 13	0	115	; slot13 = slot0.onDoubleLedgerCascadeComplete
			341	[  0]	MOV  	 14		10	; slot14 = slot10
			342	[  0]	CALL 	 11	1	3	;  = pcall(slot12, <unknown table>.onDoubleLedgerCascadeComplete)
			343	[  0]	KSHORT	  3		1	; slot3 = 1
			344	[  0]	TGETS	  4	0	156	; slot4 = slot0.ui
			345	[  0]	TGETS	  4	4	155	; slot4 = <unknown table>.ui.slot
			346	[  0]	TGETS	  4	4	154	; slot4 = <unknown table>.ui.slot.cols
			347	[  0]	KSHORT	  5		1	; slot5 = 1
			348	[  0]	FORI 	  3		192	; for slot6 = slot3,slot4,slot5 else goto 541
			349	[  0]	TGETS	  7	0	153	; slot7 = slot0.reels
			350	[  0]	TGETV	  7	7	6	; slot7 = <unknown table>.reels[slot6]
			351	[  0]	ISF  	   		7	; if not slot7
			352	[  0]	JMP  	  8		23	; 	goto 376
			353	[  0]	TGETS	  8	7	114	; slot8 = slot7.spinSpark
			354	[  0]	ISF  	   		8	; if not <unknown table>.spinSpark
			355	[  0]	JMP  	  9		20	; 	goto 376
			356	[  0]	TGETS	  8	7	113	; slot8 = slot7.spinning
			357	[  0]	ISF  	   		8	; if not <unknown table>.spinning
			358	[  0]	JMP  	  9		15	; 	goto 374
			359	[  0]	TGETS	  8	7	112	; slot8 = slot7.state
			360	[  0]	ISEQS	  8		111	; if <unknown table>.state == "accelerate"
			361	[  0]	JMP  	  8		3	; 	goto 365
			362	[  0]	TGETS	  8	7	112	; slot8 = slot7.state
			363	[  0]	ISNES	  8		110	; if <unknown table>.state ~= "cruise"
			364	[  0]	JMP  	  8		9	; 	goto 374
			365	[  0]	TGETS	  8	7	114	; slot8 = slot7.spinSpark
			366	[  0]	TGETS	  9	7	114	; slot9 = slot7.spinSpark
			367	[  0]	TGETS	  9	9	163	; slot9 = <unknown table>.spinSpark.t
			368	[  0]	IST  	   		9	; if <unknown table>.spinSpark.t
			369	[  0]	JMP  	 10		1	; 	goto 371
			370	[  0]	KSHORT	  9		0	; slot9 = 0
			371	[  0]	ADDVV	  9	9	1	; slot9 = slot9 + slot1
			372	[  0]	TSETS	  9	8	163	; <unknown table>.spinSpark.t = slot9
			373	[  0]	JMP  	  8		2	; 	goto 376
			374	[  0]	KPRI 	  8		0	; slot8 = nil
			375	[  0]	TSETS	  8	7	114	; slot7.spinSpark = slot8
			376	[  0]	ISF  	   		7	; if not slot7
			377	[  0]	JMP  	  8		136	; 	goto 514
			378	[  0]	TGETS	  8	7	147	; slot8 = slot7.hit
			379	[  0]	ISF  	   		8	; if not <unknown table>.hit
			380	[  0]	JMP  	  9		133	; 	goto 514
			381	[  0]	TGETS	  8	7	147	; slot8 = slot7.hit
			382	[  0]	TGETS	  8	8	164	; slot8 = <unknown table>.hit.active
			383	[  0]	ISF  	   		8	; if not <unknown table>.hit.active
			384	[  0]	JMP  	  9		129	; 	goto 514
			385	[  0]	TGETS	  8	7	147	; slot8 = slot7.hit
			386	[  0]	TGETS	  9	7	147	; slot9 = slot7.hit
			387	[  0]	TGETS	  9	9	163	; slot9 = <unknown table>.hit.t
			388	[  0]	IST  	   		9	; if <unknown table>.hit.t
			389	[  0]	JMP  	 10		1	; 	goto 391
			390	[  0]	KSHORT	  9		0	; slot9 = 0
			391	[  0]	ADDVV	  9	9	1	; slot9 = slot9 + slot1
			392	[  0]	TSETS	  9	8	163	; <unknown table>.hit.t = slot9
			393	[  0]	TGETS	  8	7	147	; slot8 = slot7.hit
			394	[  0]	TGETS	  8	8	146	; slot8 = <unknown table>.hit.dur
			395	[  0]	IST  	   		8	; if <unknown table>.hit.dur
			396	[  0]	JMP  	  9		1	; 	goto 398
			397	[  0]	KNUM 	  8		0	; slot8 = 0.35
			398	[  0]	TGETS	  9	7	147	; slot9 = slot7.hit
			399	[  0]	TGETS	  9	9	163	; slot9 = <unknown table>.hit.t
			400	[  0]	ISGT 	  8		9	; if slot8 > <unknown table>.hit.t
			401	[  0]	JMP  	  9		13	; 	goto 415
			402	[  0]	TGETS	  9	7	147	; slot9 = slot7.hit
			403	[  0]	KPRI 	 10		1	; slot10 = false
			404	[  0]	TSETS	 10	9	164	; <unknown table>.hit.active = slot10
			405	[  0]	TGETS	  9	7	147	; slot9 = slot7.hit
			406	[  0]	KSHORT	 10		0	; slot10 = 0
			407	[  0]	TSETS	 10	9	144	; <unknown table>.hit.offset = slot10
			408	[  0]	TGETS	  9	7	147	; slot9 = slot7.hit
			409	[  0]	KSHORT	 10		1	; slot10 = 1
			410	[  0]	TSETS	 10	9	143	; <unknown table>.hit.squashX = slot10
			411	[  0]	TGETS	  9	7	147	; slot9 = slot7.hit
			412	[  0]	KSHORT	 10		1	; slot10 = 1
			413	[  0]	TSETS	 10	9	142	; <unknown table>.hit.squashY = slot10
			414	[  0]	JMP  	  9		99	; 	goto 514
			415	[  0]	GGET 	  9		109	; slot9 = _env["math"]
			416	[  0]	TGETS	  9	9	108	; slot9 = math.max
			417	[  0]	KSHORT	 11		0	; slot11 = 0
			418	[  0]	GGET 	 12		109	; slot12 = _env["math"]
			419	[  0]	TGETS	 12	12	107	; slot12 = math.min
			420	[  0]	KSHORT	 14		1	; slot14 = 1
			421	[  0]	TGETS	 15	7	147	; slot15 = slot7.hit
			422	[  0]	TGETS	 15	15	163	; slot15 = <unknown table>.hit.t
			423	[  0]	DIVVV	 15	15	8	; slot15 = <unknown table>.hit.t / slot8
			424	[  0]	CALL 	 12	0	3	; MULTRES = math.min(slot13, slot14)
			425	[  0]	CALLM	  9	2	1	; slot9 = math.max(slot10, ...MULTRES)
			426	[  0]	TGETS	 10	7	147	; slot10 = slot7.hit
			427	[  0]	TGETS	 10	10	145	; slot10 = <unknown table>.hit.amp
			428	[  0]	IST  	   		10	; if <unknown table>.hit.amp
			429	[  0]	JMP  	 11		1	; 	goto 431
			430	[  0]	KNUM 	 10		0	; slot10 = 0.35
			431	[  0]	KNUM 	 11		1	; slot11 = 0.3
			432	[  0]	ISGE 	  9		11	; if math.max >= slot11
			433	[  0]	JMP  	 11		14	; 	goto 448
			434	[  0]	DIVVN	 11	9	1	; slot11 = math.max / 0.3
			435	[  0]	MULVV	 12	11	11	; slot12 = slot11 * slot11
			436	[  0]	TGETS	 13	7	147	; slot13 = slot7.hit
			437	[  0]	MULVV	 14	10	12	; slot14 = slot10 * slot12
			438	[  0]	TSETS	 14	13	144	; <unknown table>.hit.offset = slot14
			439	[  0]	MULNV	 13	12	11	; slot13 = 0.2 * slot12
			440	[  0]	TGETS	 14	7	147	; slot14 = slot7.hit
			441	[  0]	MULVN	 15	13	12	; slot15 = slot13 * 0.5
			442	[  0]	ADDNV	 15	15	5	; slot15 = 1 + slot15
			443	[  0]	TSETS	 15	14	143	; <unknown table>.hit.squashX = slot15
			444	[  0]	TGETS	 14	7	147	; slot14 = slot7.hit
			445	[  0]	SUBNV	 15	13	5	; slot15 = 1 - slot13
			446	[  0]	TSETS	 15	14	142	; <unknown table>.hit.squashY = slot15
			447	[  0]	JMP  	 11		66	; 	goto 514
			448	[  0]	KNUM 	 11		13	; slot11 = 0.65
			449	[  0]	ISGE 	  9		11	; if math.max >= slot11
			450	[  0]	JMP  	 11		31	; 	goto 482
			451	[  0]	SUBVN	 11	9	1	; slot11 = math.max - 0.3
			452	[  0]	DIVVN	 11	11	0	; slot11 = slot11 / 0.35
			453	[  0]	SUBNV	 12	11	5	; slot12 = 1 - slot11
			454	[  0]	SUBNV	 13	11	5	; slot13 = 1 - slot11
			455	[  0]	MULVV	 12	12	13	; slot12 = slot12 * slot13
			456	[  0]	SUBNV	 13	11	5	; slot13 = 1 - slot11
			457	[  0]	MULVV	 12	12	13	; slot12 = slot12 * slot13
			458	[  0]	SUBNV	 12	12	5	; slot12 = 1 - slot12
			459	[  0]	GGET 	 13		109	; slot13 = _env["math"]
			460	[  0]	TGETS	 13	13	106	; slot13 = math.sin
			461	[  0]	GGET 	 15		109	; slot15 = _env["math"]
			462	[  0]	TGETS	 15	15	105	; slot15 = math.pi
			463	[  0]	MULVV	 15	11	15	; slot15 = slot11 * math.pi
			464	[  0]	CALL 	 13	2	2	; slot13 = math.sin(<unknown table>.hit)
			465	[  0]	MULVN	 13	13	8	; slot13 = math.sin * 0.15
			466	[  0]	TGETS	 14	7	147	; slot14 = slot7.hit
			467	[  0]	SUBNV	 15	12	5	; slot15 = 1 - slot12
			468	[  0]	MULVV	 15	10	15	; slot15 = slot10 * slot15
			469	[  0]	MULVV	 16	13	10	; slot16 = slot13 * slot10
			470	[  0]	SUBVV	 15	15	16	; slot15 = slot15 - slot16
			471	[  0]	TSETS	 15	14	144	; <unknown table>.hit.offset = slot15
			472	[  0]	SUBNV	 14	11	5	; slot14 = 1 - slot11
			473	[  0]	MULNV	 14	14	14	; slot14 = 0.23 * slot14
			474	[  0]	TGETS	 15	7	147	; slot15 = slot7.hit
			475	[  0]	SUBNV	 16	14	5	; slot16 = 1 - slot14
			476	[  0]	TSETS	 16	15	143	; <unknown table>.hit.squashX = slot16
			477	[  0]	TGETS	 15	7	147	; slot15 = slot7.hit
			478	[  0]	MULVN	 16	14	15	; slot16 = slot14 * 0.4
			479	[  0]	ADDNV	 16	16	5	; slot16 = 1 + slot16
			480	[  0]	TSETS	 16	15	142	; <unknown table>.hit.squashY = slot16
			481	[  0]	JMP  	 11		32	; 	goto 514
			482	[  0]	SUBVN	 11	9	13	; slot11 = math.max - 0.65
			483	[  0]	DIVVN	 11	11	0	; slot11 = slot11 / 0.35
			484	[  0]	SUBNV	 12	11	5	; slot12 = 1 - slot11
			485	[  0]	SUBNV	 13	11	5	; slot13 = 1 - slot11
			486	[  0]	MULVV	 12	12	13	; slot12 = slot12 * slot13
			487	[  0]	SUBNV	 13	11	5	; slot13 = 1 - slot11
			488	[  0]	MULVV	 12	12	13	; slot12 = slot12 * slot13
			489	[  0]	SUBNV	 13	11	5	; slot13 = 1 - slot11
			490	[  0]	MULVV	 12	12	13	; slot12 = slot12 * slot13
			491	[  0]	SUBNV	 12	12	5	; slot12 = 1 - slot12
			492	[  0]	TGETS	 13	7	147	; slot13 = slot7.hit
			493	[  0]	TGETS	 14	7	147	; slot14 = slot7.hit
			494	[  0]	TGETS	 14	14	144	; slot14 = <unknown table>.hit.offset
			495	[  0]	SUBNV	 15	12	5	; slot15 = 1 - slot12
			496	[  0]	MULVV	 14	14	15	; slot14 = <unknown table>.hit.offset * slot15
			497	[  0]	TSETS	 14	13	144	; <unknown table>.hit.offset = slot14
			498	[  0]	TGETS	 13	7	147	; slot13 = slot7.hit
			499	[  0]	TGETS	 14	7	147	; slot14 = slot7.hit
			500	[  0]	TGETS	 14	14	143	; slot14 = <unknown table>.hit.squashX
			501	[  0]	SUBVN	 14	14	5	; slot14 = <unknown table>.hit.squashX - 1
			502	[  0]	SUBNV	 15	12	5	; slot15 = 1 - slot12
			503	[  0]	MULVV	 14	14	15	; slot14 = slot14 * slot15
			504	[  0]	ADDNV	 14	14	5	; slot14 = 1 + slot14
			505	[  0]	TSETS	 14	13	143	; <unknown table>.hit.squashX = slot14
			506	[  0]	TGETS	 13	7	147	; slot13 = slot7.hit
			507	[  0]	TGETS	 14	7	147	; slot14 = slot7.hit
			508	[  0]	TGETS	 14	14	142	; slot14 = <unknown table>.hit.squashY
			509	[  0]	SUBVN	 14	14	5	; slot14 = <unknown table>.hit.squashY - 1
			510	[  0]	SUBNV	 15	12	5	; slot15 = 1 - slot12
			511	[  0]	MULVV	 14	14	15	; slot14 = slot14 * slot15
			512	[  0]	ADDNV	 14	14	5	; slot14 = 1 + slot14
			513	[  0]	TSETS	 14	13	142	; <unknown table>.hit.squashY = slot14
			514	[  0]	ISFC 	  8		7	; slot8 = slot7; if not slot7
			515	[  0]	JMP  	  8		1	; 	goto 517
			516	[  0]	TGETS	  8	7	104	; slot8 = slot7.cellMorph
			517	[  0]	ISF  	   		8	; if not <unknown table>.cellMorph
			518	[  0]	JMP  	  9		21	; 	goto 540
			519	[  0]	TGETS	  9	8	164	; slot9 = <unknown table>.cellMorph.active
			520	[  0]	ISF  	   		9	; if not <unknown table>.cellMorph.active
			521	[  0]	JMP  	 10		18	; 	goto 540
			522	[  0]	TGETS	  9	8	162	; slot9 = <unknown table>.cellMorph.phase
			523	[  0]	ISNES	  9		136	; if <unknown table>.cellMorph.phase ~= "impact"
			524	[  0]	JMP  	  9		15	; 	goto 540
			525	[  0]	TGETS	  9	8	163	; slot9 = <unknown table>.cellMorph.t
			526	[  0]	IST  	   		9	; if <unknown table>.cellMorph.t
			527	[  0]	JMP  	 10		1	; 	goto 529
			528	[  0]	KSHORT	  9		0	; slot9 = 0
			529	[  0]	ADDVV	  9	9	1	; slot9 = slot9 + slot1
			530	[  0]	TSETS	  9	8	163	; <unknown table>.cellMorph.t = slot9
			531	[  0]	TGETS	  9	8	163	; slot9 = <unknown table>.cellMorph.t
			532	[  0]	TGETS	 10	8	135	; slot10 = <unknown table>.cellMorph.impactDur
			533	[  0]	IST  	   		10	; if <unknown table>.cellMorph.impactDur
			534	[  0]	JMP  	 11		1	; 	goto 536
			535	[  0]	KNUM 	 10		1	; slot10 = 0.3
			536	[  0]	ISGT 	 10		9	; if slot10 > <unknown table>.cellMorph.t
			537	[  0]	JMP  	  9		2	; 	goto 540
			538	[  0]	KPRI 	  9		0	; slot9 = nil
			539	[  0]	TSETS	  9	7	104	; slot7.cellMorph = slot9
			540	[  0]	FORL 	  3		-192	; slot6 = slot6 + slot5; if cmp(slot6, sign slot5,  slot4) goto 349
			541	[  0]	KSHORT	  3		1	; slot3 = 1
			542	[  0]	TGETS	  4	0	156	; slot4 = slot0.ui
			543	[  0]	TGETS	  4	4	155	; slot4 = <unknown table>.ui.slot
			544	[  0]	TGETS	  4	4	154	; slot4 = <unknown table>.ui.slot.cols
			545	[  0]	KSHORT	  5		1	; slot5 = 1
			546	[  0]	FORI 	  3		245	; for slot6 = slot3,slot4,slot5 else goto 792
			547	[  0]	TGETS	  7	0	153	; slot7 = slot0.reels
			548	[  0]	TGETV	  7	7	6	; slot7 = <unknown table>.reels[slot6]
			549	[  0]	ISFC 	  8		7	; slot8 = slot7; if not slot7
			550	[  0]	JMP  	  8		1	; 	goto 552
			551	[  0]	TGETS	  8	7	103	; slot8 = slot7.nudge
			552	[  0]	ISF  	   		8	; if not <unknown table>.nudge
			553	[  0]	JMP  	  9		237	; 	goto 791
			554	[  0]	TGETS	  9	8	164	; slot9 = <unknown table>.nudge.active
			555	[  0]	ISF  	   		9	; if not <unknown table>.nudge.active
			556	[  0]	JMP  	 10		234	; 	goto 791
			557	[  0]	TGETS	  9	8	163	; slot9 = <unknown table>.nudge.t
			558	[  0]	IST  	   		9	; if <unknown table>.nudge.t
			559	[  0]	JMP  	 10		1	; 	goto 561
			560	[  0]	KSHORT	  9		0	; slot9 = 0
			561	[  0]	ADDVV	  9	9	1	; slot9 = slot9 + slot1
			562	[  0]	TSETS	  9	8	163	; <unknown table>.nudge.t = slot9
			563	[  0]	TGETS	  9	8	146	; slot9 = <unknown table>.nudge.dur
			564	[  0]	IST  	   		9	; if <unknown table>.nudge.dur
			565	[  0]	JMP  	 10		1	; 	goto 567
			566	[  0]	KNUM 	  9		16	; slot9 = 0.18
			567	[  0]	TGETS	 10	8	163	; slot10 = <unknown table>.nudge.t
			568	[  0]	IST  	   		10	; if <unknown table>.nudge.t
			569	[  0]	JMP  	 11		1	; 	goto 571
			570	[  0]	KSHORT	 10		0	; slot10 = 0
			571	[  0]	ISGT 	  9		10	; if slot9 > slot10
			572	[  0]	JMP  	 10		218	; 	goto 791
			573	[  0]	TGETS	 10	8	102	; slot10 = <unknown table>.nudge.oldSymbols
			574	[  0]	TGETS	 11	8	101	; slot11 = <unknown table>.nudge.newSymbol
			575	[  0]	IST  	   		11	; if <unknown table>.nudge.newSymbol
			576	[  0]	JMP  	 12		2	; 	goto 579
			577	[  0]	UGET 	 11		3	; slot11 = uv3"unknwon"
			578	[  0]	CALL 	 11	2	1	; slot11 = uv3"unknown"()
			579	[  0]	TGETS	 12	0	158	; slot12 = slot0.grid
			580	[  0]	ISF  	   		12	; if not <unknown table>.grid
			581	[  0]	JMP  	 13		31	; 	goto 613
			582	[  0]	ISF  	   		10	; if not <unknown table>.nudge.oldSymbols
			583	[  0]	JMP  	 12		29	; 	goto 613
			584	[  0]	LEN  	 12		10	; slot12 = #<unknown table>.nudge.oldSymbols
			585	[  0]	KSHORT	 13		3	; slot13 = 3
			586	[  0]	ISGT 	 13		12	; if slot13 > slot12
			587	[  0]	JMP  	 12		25	; 	goto 613
			588	[  0]	TGETS	 12	0	158	; slot12 = slot0.grid
			589	[  0]	TGETB	 12	12	3	; slot12 = <unknown table>.grid[3]
			590	[  0]	TGETB	 13	10	2	; slot13 = <unknown table>.nudge.oldSymbols[2]
			591	[  0]	TSETV	 13	12	6	; slot12[slot6] = slot13
			592	[  0]	TGETS	 12	0	158	; slot12 = slot0.grid
			593	[  0]	TGETB	 12	12	2	; slot12 = <unknown table>.grid[2]
			594	[  0]	TGETB	 13	10	1	; slot13 = <unknown table>.nudge.oldSymbols[1]
			595	[  0]	TSETV	 13	12	6	; slot12[slot6] = slot13
			596	[  0]	TGETS	 12	0	158	; slot12 = slot0.grid
			597	[  0]	TGETB	 12	12	1	; slot12 = <unknown table>.grid[1]
			598	[  0]	TSETV	 11	12	6	; slot12[slot6] = uv3"unknown"
			599	[  0]	TNEW 	 12		4	; slot12 = new table( array: 4, dict: 1)
			600	[  0]	TGETS	 13	0	158	; slot13 = slot0.grid
			601	[  0]	TGETB	 13	13	1	; slot13 = <unknown table>.grid[1]
			602	[  0]	TGETV	 13	13	6	; slot13 = slot13[slot6]
			603	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
			604	[  0]	TGETS	 13	0	158	; slot13 = slot0.grid
			605	[  0]	TGETB	 13	13	2	; slot13 = <unknown table>.grid[2]
			606	[  0]	TGETV	 13	13	6	; slot13 = slot13[slot6]
			607	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
			608	[  0]	TGETS	 13	0	158	; slot13 = slot0.grid
			609	[  0]	TGETB	 13	13	3	; slot13 = <unknown table>.grid[3]
			610	[  0]	TGETV	 13	13	6	; slot13 = slot13[slot6]
			611	[  0]	TSETB	 13	12	3	; slot12[3] = slot13
			612	[  0]	TSETS	 12	7	152	; slot7.finalSymbols = slot12
			613	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
			614	[  0]	TGETS	 14	0	158	; slot14 = slot0.grid
			615	[  0]	CALL 	 12	4	2	; slot12, slot13, slot14 = uv0"unknown"(slot13)
			616	[  0]	TNEW 	 15		0	; slot15 = new table( array: 0, dict: 1)
			617	[  0]	TNEW 	 16		0	; slot16 = new table( array: 0, dict: 1)
			618	[  0]	GGET 	 17		134	; slot17 = _env["ipairs"]
			619	[  0]	MOV  	 19		12	; slot19 = uv0"unknown"
			620	[  0]	CALL 	 17	4	2	; slot17, slot18, slot19 = ipairs(slot18)
			621	[  0]	JMP  	 20		24	; 	goto 646
			622	[  0]	UGET 	 22		4	; slot22 = uv4"unknwon"
			623	[  0]	MOV  	 24		21	; slot24 = slot21
			624	[  0]	MOV  	 25		6	; slot25 = slot6
			625	[  0]	CALL 	 22	2	3	; slot22 = uv4"unknown"(slot23, slot24)
			626	[  0]	ISF  	   		22	; if not uv4"unknown"
			627	[  0]	JMP  	 23		18	; 	goto 646
			628	[  0]	GGET 	 22		131	; slot22 = _env["table"]
			629	[  0]	TGETS	 22	22	130	; slot22 = table.insert
			630	[  0]	MOV  	 24		15	; slot24 = slot15
			631	[  0]	MOV  	 25		21	; slot25 = slot21
			632	[  0]	CALL 	 22	1	3	;  = table.insert(slot23, slot24)
			633	[  0]	TGETS	 22	8	100	; slot22 = <unknown table>.nudge.winningSymbolsBefore
			634	[  0]	IST  	   		22	; if <unknown table>.nudge.winningSymbolsBefore
			635	[  0]	JMP  	 23		1	; 	goto 637
			636	[  0]	TNEW 	 22		0	; slot22 = new table( array: 0, dict: 1)
			637	[  0]	TGETV	 22	22	21	; slot22 = slot22[slot21]
			638	[  0]	TGETV	 23	14	21	; slot23 = <unknown table>.grid[slot21]
			639	[  0]	ISEQV	 22		23	; if slot22 == slot23
			640	[  0]	JMP  	 22		5	; 	goto 646
			641	[  0]	GGET 	 22		131	; slot22 = _env["table"]
			642	[  0]	TGETS	 22	22	130	; slot22 = table.insert
			643	[  0]	MOV  	 24		16	; slot24 = slot16
			644	[  0]	MOV  	 25		21	; slot25 = slot21
			645	[  0]	CALL 	 22	1	3	;  = table.insert(slot23, slot24)
			646	[  0]	ITERC	 20	3	3	; slot20, slot21, slot22 = ipairs, slot18, uv0"unknown"; slot20, slot21 = ipairs(slot18, uv0"unknown")
			647	[  0]	ITERL	 20		-26	; uv0"unknown" = slot20; if slot20 != nil goto 622
			648	[  0]	KPRI 	 17		2	; slot17 = true
			649	[  0]	TSETS	 17	8	99	; <unknown table>.nudge.resolved = slot17
			650	[  0]	TSETS	 16	8	98	; <unknown table>.nudge.newRewardWinningLines = slot16
			651	[  0]	TGETS	 17	0	97	; slot17 = slot0._copycapPending
			652	[  0]	ISF  	   		17	; if not <unknown table>._copycapPending
			653	[  0]	JMP  	 18		13	; 	goto 667
			654	[  0]	TGETS	 18	0	169	; slot18 = slot0.result
			655	[  0]	TGETS	 19	17	169	; slot19 = <unknown table>._copycapPending.result
			656	[  0]	ISNEV	 18		19	; if <unknown table>.result ~= <unknown table>._copycapPending.result
			657	[  0]	JMP  	 18		9	; 	goto 667
			658	[  0]	TNEW 	 18		0	; slot18 = new table( array: 0, dict: 1)
			659	[  0]	GGET 	 19		96	; slot19 = _env["pairs"]
			660	[  0]	TGETS	 21	0	169	; slot21 = slot0.result
			661	[  0]	CALL 	 19	4	2	; slot19, slot20, slot21 = pairs(slot20)
			662	[  0]	ISNEXT	 22		1	; Verify ITERN at 664; goto 664
			663	[  0]	TSETV	 23	18	22	; slot18[table.insert] = slot23
			664	[  0]	ITERN	 22	3	3	; slot22, slot23, slot24 = pairs, slot20, <unknown table>.result; slot22, slot23 = pairs(slot20, <unknown table>.result)
			665	[  0]	ITERL	 22		-3	; <unknown table>.result = table.insert; if table.insert != nil goto 663
			666	[  0]	TSETS	 18	0	169	; slot0.result = slot18
			667	[  0]	TGETS	 18	0	169	; slot18 = slot0.result
			668	[  0]	KPRI 	 19		2	; slot19 = true
			669	[  0]	TSETS	 19	18	95	; <unknown table>.result.checked = slot19
			670	[  0]	TGETS	 18	0	169	; slot18 = slot0.result
			671	[  0]	LEN  	 19		15	; slot19 = #slot15
			672	[  0]	KSHORT	 20		0	; slot20 = 0
			673	[  0]	ISLT 	 20		19	; if slot20 < slot19
			674	[  0]	JMP  	 19		2	; 	goto 677
			675	[  0]	KPRI 	 19		1	; slot19 = false
			676	[  0]	JMP  	 20		1	; 	goto 678
			677	[  0]	KPRI 	 19		2	; slot19 = true
			678	[  0]	TSETS	 19	18	128	; <unknown table>.result.won = slot19
			679	[  0]	TGETS	 18	0	169	; slot18 = slot0.result
			680	[  0]	TSETS	 15	18	127	; <unknown table>.result.winningLines = slot15
			681	[  0]	TGETS	 18	0	169	; slot18 = slot0.result
			682	[  0]	TSETS	 12	18	94	; <unknown table>.result.allWinningLinesAfterNudge = uv0"unknown"
			683	[  0]	TGETS	 18	0	169	; slot18 = slot0.result
			684	[  0]	UGET 	 19		2	; slot19 = uv2"unknwon"
			685	[  0]	TGETS	 19	19	121	; slot19 = uv2"unknown".isJackpotResult
			686	[  0]	TGETS	 21	0	169	; slot21 = slot0.result
			687	[  0]	MOV  	 22		12	; slot22 = uv0"unknown"
			688	[  0]	CALL 	 19	2	3	; slot19 = uv2"unknown".isJackpotResult(slot20, <unknown table>.result)
			689	[  0]	TSETS	 19	18	122	; <unknown table>.result._jackpot = uv2"unknown".isJackpotResult
			690	[  0]	TGETS	 18	0	169	; slot18 = slot0.result
			691	[  0]	TSETS	 15	18	126	; <unknown table>.result.newWinningLines = slot15
			692	[  0]	TGETS	 18	0	169	; slot18 = slot0.result
			693	[  0]	TGETB	 19	15	1	; slot19 = slot15[1]
			694	[  0]	ISF  	   		19	; if not slot19
			695	[  0]	JMP  	 20		4	; 	goto 700
			696	[  0]	TGETB	 19	15	1	; slot19 = slot15[1]
			697	[  0]	TGETV	 19	14	19	; slot19 = <unknown table>.grid[slot19]
			698	[  0]	IST  	   		19	; if slot19
			699	[  0]	JMP  	 20		1	; 	goto 701
			700	[  0]	MOV  	 19		13	; slot19 = slot13
			701	[  0]	TSETS	 19	18	124	; <unknown table>.result.symbol = slot19
			702	[  0]	TGETS	 18	0	169	; slot18 = slot0.result
			703	[  0]	TSETS	 14	18	123	; <unknown table>.result.symbolsByLine = <unknown table>.grid
			704	[  0]	TGETS	 18	0	169	; slot18 = slot0.result
			705	[  0]	KPRI 	 19		1	; slot19 = false
			706	[  0]	TSETS	 19	18	93	; <unknown table>.result.awarded = slot19
			707	[  0]	TGETS	 18	0	169	; slot18 = slot0.result
			708	[  0]	KPRI 	 19		1	; slot19 = false
			709	[  0]	TSETS	 19	18	92	; <unknown table>.result.fxStarted = slot19
			710	[  0]	TGETS	 18	0	169	; slot18 = slot0.result
			711	[  0]	KPRI 	 19		1	; slot19 = false
			712	[  0]	TSETS	 19	18	168	; <unknown table>.result.highlightActive = slot19
			713	[  0]	TGETS	 18	0	169	; slot18 = slot0.result
			714	[  0]	KSHORT	 19		0	; slot19 = 0
			715	[  0]	TSETS	 19	18	167	; <unknown table>.result.ht = slot19
			716	[  0]	TGETS	 18	0	169	; slot18 = slot0.result
			717	[  0]	KPRI 	 19		0	; slot19 = nil
			718	[  0]	TSETS	 19	18	91	; <unknown table>.result.winSeq = slot19
			719	[  0]	TGETS	 18	0	169	; slot18 = slot0.result
			720	[  0]	KPRI 	 19		0	; slot19 = nil
			721	[  0]	TSETS	 19	18	90	; <unknown table>.result.visibleWinningLines = slot19
			722	[  0]	TSETS	 12	0	120	; slot0.previousWinningLines = uv0"unknown"
			723	[  0]	KPRI 	 18		0	; slot18 = nil
			724	[  0]	TSETS	 18	7	103	; slot7.nudge = slot18
			725	[  0]	GGET 	 18		141	; slot18 = _env["type"]
			726	[  0]	TGETS	 20	0	89	; slot20 = slot0.onNudgeComplete
			727	[  0]	CALL 	 18	2	2	; slot18 = type(slot19)
			728	[  0]	ISNES	 18		139	; if type ~= "function"
			729	[  0]	JMP  	 18		21	; 	goto 751
			730	[  0]	GGET 	 18		138	; slot18 = _env["pcall"]
			731	[  0]	TGETS	 20	0	89	; slot20 = slot0.onNudgeComplete
			732	[  0]	TGETS	 21	0	169	; slot21 = slot0.result
			733	[  0]	LEN  	 22		15	; slot22 = #slot15
			734	[  0]	KSHORT	 23		0	; slot23 = 0
			735	[  0]	ISLT 	 23		22	; if slot23 < slot22
			736	[  0]	JMP  	 22		2	; 	goto 739
			737	[  0]	KPRI 	 22		1	; slot22 = false
			738	[  0]	JMP  	 23		1	; 	goto 740
			739	[  0]	KPRI 	 22		2	; slot22 = true
			740	[  0]	TDUP 	 23		88	; slot23 = copy table#k88
			741	[  0]	TSETS	  6	23	87	; slot23.nudgeCol = slot6
			742	[  0]	TSETS	  8	23	86	; slot23.nudgeEvent = <unknown table>.nudge
			743	[  0]	TGETS	 24	8	85	; slot24 = <unknown table>.nudge.isReboundAxisFollowup
			744	[  0]	ISEQP	 24		2	; if <unknown table>.nudge.isReboundAxisFollowup == true
			745	[  0]	JMP  	 24		2	; 	goto 748
			746	[  0]	KPRI 	 24		1	; slot24 = false
			747	[  0]	JMP  	 25		1	; 	goto 749
			748	[  0]	KPRI 	 24		2	; slot24 = true
			749	[  0]	TSETS	 24	23	85	; slot23.isReboundAxisFollowup = slot24
			750	[  0]	CALL 	 18	1	5	;  = pcall(slot19, <unknown table>.onNudgeComplete, <unknown table>.result, slot22)
			751	[  0]	LEN  	 18		15	; slot18 = #slot15
			752	[  0]	KSHORT	 19		0	; slot19 = 0
			753	[  0]	ISGE 	 19		18	; if slot19 >= slot18
			754	[  0]	JMP  	 18		12	; 	goto 767
			755	[  0]	GGET 	 18		141	; slot18 = _env["type"]
			756	[  0]	TGETS	 20	0	84	; slot20 = slot0.onWin
			757	[  0]	CALL 	 18	2	2	; slot18 = type(slot19)
			758	[  0]	ISNES	 18		139	; if type ~= "function"
			759	[  0]	JMP  	 18		7	; 	goto 767
			760	[  0]	GGET 	 18		138	; slot18 = _env["pcall"]
			761	[  0]	TGETS	 20	0	84	; slot20 = slot0.onWin
			762	[  0]	TGETS	 21	0	169	; slot21 = slot0.result
			763	[  0]	CALL 	 18	1	3	;  = pcall(slot19, <unknown table>.onWin)
			764	[  0]	TGETS	 18	0	169	; slot18 = slot0.result
			765	[  0]	KPRI 	 19		2	; slot19 = true
			766	[  0]	TSETS	 19	18	93	; <unknown table>.result.awarded = slot19
			767	[  0]	ISF  	   		17	; if not <unknown table>._copycapPending
			768	[  0]	JMP  	 18		22	; 	goto 791
			769	[  0]	KPRI 	 18		2	; slot18 = true
			770	[  0]	TSETS	 18	17	83	; <unknown table>._copycapPending.nudged = slot18
			771	[  0]	TGETS	 18	17	82	; slot18 = <unknown table>._copycapPending.nudgeWon
			772	[  0]	IST  	   		18	; if <unknown table>._copycapPending.nudgeWon
			773	[  0]	JMP  	 19		7	; 	goto 781
			774	[  0]	LEN  	 18		15	; slot18 = #slot15
			775	[  0]	KSHORT	 19		0	; slot19 = 0
			776	[  0]	ISLT 	 19		18	; if slot19 < slot18
			777	[  0]	JMP  	 18		2	; 	goto 780
			778	[  0]	KPRI 	 18		1	; slot18 = false
			779	[  0]	JMP  	 19		1	; 	goto 781
			780	[  0]	KPRI 	 18		2	; slot18 = true
			781	[  0]	TSETS	 18	17	82	; <unknown table>._copycapPending.nudgeWon = slot18
			782	[  0]	GGET 	 18		134	; slot18 = _env["ipairs"]
			783	[  0]	MOV  	 20		15	; slot20 = slot15
			784	[  0]	CALL 	 18	4	2	; slot18, slot19, slot20 = ipairs(slot19)
			785	[  0]	JMP  	 21		3	; 	goto 789
			786	[  0]	TGETS	 23	17	81	; slot23 = <unknown table>._copycapPending.paidWinningSymbols
			787	[  0]	TGETV	 24	14	22	; slot24 = <unknown table>.grid[slot22]
			788	[  0]	TSETV	 24	23	22	; <unknown table>._copycapPending.paidWinningSymbols[slot22] = slot24
			789	[  0]	ITERC	 21	3	3	; slot21, slot22, slot23 = ipairs, slot19, slot20; slot21, slot22 = ipairs(slot19, slot20)
			790	[  0]	ITERL	 21		-5	; slot20 = <unknown table>.result; if <unknown table>.result != nil goto 786
			791	[  0]	FORL 	  3		-245	; slot6 = slot6 + slot5; if cmp(slot6, sign slot5,  slot4) goto 547
			792	[  0]	TGETS	  3	0	97	; slot3 = slot0._copycapPending
			793	[  0]	ISF  	   		3	; if not <unknown table>._copycapPending
			794	[  0]	JMP  	  4		61	; 	goto 856
			795	[  0]	TGETS	  3	0	97	; slot3 = slot0._copycapPending
			796	[  0]	TGETS	  4	3	80	; slot4 = <unknown table>._copycapPending.ready
			797	[  0]	IST  	   		4	; if <unknown table>._copycapPending.ready
			798	[  0]	JMP  	  4		2	; 	goto 801
			799	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 800
			800	[  0]	RET0 	  0		1	; return
			801	[  0]	GGET 	  4		134	; slot4 = _env["ipairs"]
			802	[  0]	TGETS	  6	0	153	; slot6 = slot0.reels
			803	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
			804	[  0]	JMP  	  7		9	; 	goto 814
			805	[  0]	TGETS	  9	8	103	; slot9 = <unknown table>.nudge.nudge
			806	[  0]	ISF  	   		9	; if not <unknown table>.nudge.nudge
			807	[  0]	JMP  	 10		6	; 	goto 814
			808	[  0]	TGETS	  9	8	103	; slot9 = <unknown table>.nudge.nudge
			809	[  0]	TGETS	  9	9	164	; slot9 = <unknown table>.nudge.nudge.active
			810	[  0]	ISF  	   		9	; if not <unknown table>.nudge.nudge.active
			811	[  0]	JMP  	 10		2	; 	goto 814
			812	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 813
			813	[  0]	RET0 	  0		1	; return
			814	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, <unknown table>.reels; slot7, slot8 = ipairs(slot5, <unknown table>.reels)
			815	[  0]	ITERL	  7		-11	; <unknown table>.reels = slot7; if slot7 != nil goto 805
			816	[  0]	TGETS	  4	0	169	; slot4 = slot0.result
			817	[  0]	TGETS	  4	4	91	; slot4 = <unknown table>.result.winSeq
			818	[  0]	ISF  	   		4	; if not <unknown table>.result.winSeq
			819	[  0]	JMP  	  5		7	; 	goto 827
			820	[  0]	TGETS	  4	0	169	; slot4 = slot0.result
			821	[  0]	TGETS	  4	4	91	; slot4 = <unknown table>.result.winSeq
			822	[  0]	TGETS	  4	4	164	; slot4 = <unknown table>.result.winSeq.active
			823	[  0]	ISF  	   		4	; if not <unknown table>.result.winSeq.active
			824	[  0]	JMP  	  5		2	; 	goto 827
			825	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 826
			826	[  0]	RET0 	  0		1	; return
			827	[  0]	TGETS	  4	3	169	; slot4 = <unknown table>._copycapPending.result
			828	[  0]	TSETS	  4	0	169	; slot0.result = <unknown table>._copycapPending.result
			829	[  0]	KPRI 	  4		0	; slot4 = nil
			830	[  0]	TSETS	  4	0	97	; slot0._copycapPending = slot4
			831	[  0]	TGETS	  4	3	79	; slot4 = <unknown table>._copycapPending.opts
			832	[  0]	TGETS	  5	3	81	; slot5 = <unknown table>._copycapPending.paidWinningSymbols
			833	[  0]	TSETS	  5	4	81	; <unknown table>._copycapPending.opts.paidWinningSymbols = <unknown table>._copycapPending.paidWinningSymbols
			834	[  0]	TGETS	  4	3	79	; slot4 = <unknown table>._copycapPending.opts
			835	[  0]	TGETS	  5	3	82	; slot5 = <unknown table>._copycapPending.nudgeWon
			836	[  0]	TSETS	  5	4	82	; <unknown table>._copycapPending.opts.nudgeWon = <unknown table>._copycapPending.nudgeWon
			837	[  0]	MOV  	  6		0	; slot6 = slot0
			838	[  0]	TGETS	  4	0	78	; slot4 = slot0.startCellIconMorph
			839	[  0]	TGETS	  7	3	77	; slot7 = <unknown table>._copycapPending.row
			840	[  0]	TGETS	  8	3	76	; slot8 = <unknown table>._copycapPending.col
			841	[  0]	TGETS	  9	3	75	; slot9 = <unknown table>._copycapPending.targetSymbol
			842	[  0]	TGETS	 10	3	79	; slot10 = <unknown table>._copycapPending.opts
			843	[  0]	CALL 	  4	1	6	;  = <unknown table>.startCellIconMorph(<unknown table>._copycapPending.nudgeWon, slot6, <unknown table>._copycapPending.row, <unknown table>._copycapPending.col, <unknown table>._copycapPending.targetSymbol)
			844	[  0]	GGET 	  4		141	; slot4 = _env["type"]
			845	[  0]	TGETS	  6	3	79	; slot6 = <unknown table>._copycapPending.opts
			846	[  0]	TGETS	  6	6	74	; slot6 = <unknown table>._copycapPending.opts.onStart
			847	[  0]	CALL 	  4	2	2	; slot4 = type(slot5)
			848	[  0]	ISNES	  4		139	; if type ~= "function"
			849	[  0]	JMP  	  4		4	; 	goto 854
			850	[  0]	GGET 	  4		138	; slot4 = _env["pcall"]
			851	[  0]	TGETS	  6	3	79	; slot6 = <unknown table>._copycapPending.opts
			852	[  0]	TGETS	  6	6	74	; slot6 = <unknown table>._copycapPending.opts.onStart
			853	[  0]	CALL 	  4	1	2	;  = pcall(slot5)
			854	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 855
			855	[  0]	RET0 	  0		1	; return
			856	[  0]	TGETS	  3	0	73	; slot3 = slot0._cellIconMorph
			857	[  0]	ISF  	   		3	; if not <unknown table>._cellIconMorph
			858	[  0]	JMP  	  4		288	; 	goto 1147
			859	[  0]	TGETS	  3	0	73	; slot3 = slot0._cellIconMorph
			860	[  0]	TGETS	  4	3	163	; slot4 = <unknown table>._cellIconMorph.t
			861	[  0]	IST  	   		4	; if <unknown table>._cellIconMorph.t
			862	[  0]	JMP  	  5		1	; 	goto 864
			863	[  0]	KSHORT	  4		0	; slot4 = 0
			864	[  0]	ISTC 	  5		1	; slot5 = slot1; if slot1
			865	[  0]	JMP  	  5		1	; 	goto 867
			866	[  0]	KSHORT	  5		0	; slot5 = 0
			867	[  0]	ADDVV	  4	4	5	; slot4 = slot4 + slot5
			868	[  0]	TSETS	  4	3	163	; <unknown table>._cellIconMorph.t = slot4
			869	[  0]	TGETS	  4	0	153	; slot4 = slot0.reels
			870	[  0]	TGETS	  5	3	76	; slot5 = <unknown table>._cellIconMorph.col
			871	[  0]	TGETV	  4	4	5	; slot4 = <unknown table>.reels[<unknown table>._cellIconMorph.col]
			872	[  0]	ISF  	   		4	; if not slot4
			873	[  0]	JMP  	  5		6	; 	goto 880
			874	[  0]	TGETS	  5	4	104	; slot5 = slot4.cellMorph
			875	[  0]	ISF  	   		5	; if not <unknown table>.cellMorph
			876	[  0]	JMP  	  6		3	; 	goto 880
			877	[  0]	TGETS	  5	4	104	; slot5 = slot4.cellMorph
			878	[  0]	TGETS	  6	3	163	; slot6 = <unknown table>._cellIconMorph.t
			879	[  0]	TSETS	  6	5	163	; <unknown table>.cellMorph.t = <unknown table>._cellIconMorph.t
			880	[  0]	TGETS	  5	3	162	; slot5 = <unknown table>._cellIconMorph.phase
			881	[  0]	ISNES	  5		72	; if <unknown table>._cellIconMorph.phase ~= "cycle"
			882	[  0]	JMP  	  5		104	; 	goto 987
			883	[  0]	TGETS	  5	3	163	; slot5 = <unknown table>._cellIconMorph.t
			884	[  0]	TGETS	  6	3	146	; slot6 = <unknown table>._cellIconMorph.dur
			885	[  0]	ISGE 	  5		6	; if <unknown table>._cellIconMorph.t >= <unknown table>._cellIconMorph.dur
			886	[  0]	JMP  	  5		65	; 	goto 952
			887	[  0]	TGETS	  5	3	163	; slot5 = <unknown table>._cellIconMorph.t
			888	[  0]	TGETS	  6	3	71	; slot6 = <unknown table>._cellIconMorph.nextCycleT
			889	[  0]	IST  	   		6	; if <unknown table>._cellIconMorph.nextCycleT
			890	[  0]	JMP  	  7		1	; 	goto 892
			891	[  0]	KSHORT	  6		0	; slot6 = 0
			892	[  0]	ISGT 	  6		5	; if slot6 > <unknown table>._cellIconMorph.t
			893	[  0]	JMP  	  5		56	; 	goto 950
			894	[  0]	UGET 	  5		5	; slot5 = uv5"unknwon"
			895	[  0]	CALL 	  5	2	1	; slot5 = uv5"unknown"()
			896	[  0]	KSHORT	  6		0	; slot6 = 0
			897	[  0]	TGETS	  7	3	75	; slot7 = <unknown table>._cellIconMorph.targetSymbol
			898	[  0]	ISNEV	  5		7	; if uv5"unknown" ~= <unknown table>._cellIconMorph.targetSymbol
			899	[  0]	JMP  	  7		9	; 	goto 909
			900	[  0]	KSHORT	  7		8	; slot7 = 8
			901	[  0]	ISGE 	  6		7	; if slot6 >= slot7
			902	[  0]	JMP  	  7		6	; 	goto 909
			903	[  0]	LOOP 	  7		5	; Loop start, exit goto 909
			904	[  0]	UGET 	  7		5	; slot7 = uv5"unknwon"
			905	[  0]	CALL 	  7	2	1	; slot7 = uv5"unknown"()
			906	[  0]	MOV  	  5		7	; slot5 = uv5"unknown"
			907	[  0]	ADDVN	  6	6	5	; slot6 = slot6 + 1
			908	[  0]	JMP  	  7		-12	; 	goto 897
			909	[  0]	TGETS	  7	0	158	; slot7 = slot0.grid
			910	[  0]	TGETS	  8	3	77	; slot8 = <unknown table>._cellIconMorph.row
			911	[  0]	TGETV	  7	7	8	; slot7 = <unknown table>.grid[<unknown table>._cellIconMorph.row]
			912	[  0]	TGETS	  8	3	76	; slot8 = <unknown table>._cellIconMorph.col
			913	[  0]	TSETV	  5	7	8	; slot7[<unknown table>._cellIconMorph.col] = uv5"unknown"
			914	[  0]	ISF  	   		4	; if not slot4
			915	[  0]	JMP  	  7		6	; 	goto 922
			916	[  0]	TGETS	  7	4	152	; slot7 = slot4.finalSymbols
			917	[  0]	ISF  	   		7	; if not <unknown table>.finalSymbols
			918	[  0]	JMP  	  8		3	; 	goto 922
			919	[  0]	TGETS	  7	4	152	; slot7 = slot4.finalSymbols
			920	[  0]	TGETS	  8	3	77	; slot8 = <unknown table>._cellIconMorph.row
			921	[  0]	TSETV	  5	7	8	; <unknown table>.finalSymbols[<unknown table>._cellIconMorph.row] = uv5"unknown"
			922	[  0]	TGETS	  7	3	70	; slot7 = <unknown table>._cellIconMorph.cycleInterval
			923	[  0]	IST  	   		7	; if <unknown table>._cellIconMorph.cycleInterval
			924	[  0]	JMP  	  8		1	; 	goto 926
			925	[  0]	KNUM 	  7		17	; slot7 = 0.045
			926	[  0]	GGET 	  8		109	; slot8 = _env["math"]
			927	[  0]	TGETS	  8	8	108	; slot8 = math.max
			928	[  0]	KSHORT	 10		0	; slot10 = 0
			929	[  0]	GGET 	 11		109	; slot11 = _env["math"]
			930	[  0]	TGETS	 11	11	107	; slot11 = math.min
			931	[  0]	KSHORT	 13		1	; slot13 = 1
			932	[  0]	TGETS	 14	3	163	; slot14 = <unknown table>._cellIconMorph.t
			933	[  0]	GGET 	 15		109	; slot15 = _env["math"]
			934	[  0]	TGETS	 15	15	108	; slot15 = math.max
			935	[  0]	KNUM 	 17		18	; slot17 = 0.001
			936	[  0]	TGETS	 18	3	146	; slot18 = <unknown table>._cellIconMorph.dur
			937	[  0]	CALL 	 15	2	3	; slot15 = math.max(slot16, slot17)
			938	[  0]	DIVVV	 14	14	15	; slot14 = <unknown table>._cellIconMorph.t / math.max
			939	[  0]	CALL 	 11	0	3	; MULTRES = math.min(uv0"unknown", slot13)
			940	[  0]	CALLM	  8	2	1	; slot8 = math.max(<unknown table>._copycapPending.targetSymbol, ...MULTRES)
			941	[  0]	TGETS	  9	3	163	; slot9 = <unknown table>._cellIconMorph.t
			942	[  0]	GGET 	 10		109	; slot10 = _env["math"]
			943	[  0]	TGETS	 10	10	108	; slot10 = math.max
			944	[  0]	KNUM 	 12		19	; slot12 = 0.025
			945	[  0]	MULVN	 13	8	20	; slot13 = math.max * 0.035
			946	[  0]	ADDVV	 13	7	13	; slot13 = slot7 + slot13
			947	[  0]	CALL 	 10	2	3	; slot10 = math.max(math.min, slot12)
			948	[  0]	ADDVV	  9	9	10	; slot9 = <unknown table>._cellIconMorph.t + math.max
			949	[  0]	TSETS	  9	3	71	; <unknown table>._cellIconMorph.nextCycleT = slot9
			950	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 951
			951	[  0]	RET0 	  0		1	; return
			952	[  0]	TGETS	  5	0	158	; slot5 = slot0.grid
			953	[  0]	TGETS	  6	3	77	; slot6 = <unknown table>._cellIconMorph.row
			954	[  0]	TGETV	  5	5	6	; slot5 = <unknown table>.grid[<unknown table>._cellIconMorph.row]
			955	[  0]	TGETS	  6	3	76	; slot6 = <unknown table>._cellIconMorph.col
			956	[  0]	TGETS	  7	3	75	; slot7 = <unknown table>._cellIconMorph.targetSymbol
			957	[  0]	TSETV	  7	5	6	; slot5[<unknown table>._cellIconMorph.col] = <unknown table>._cellIconMorph.targetSymbol
			958	[  0]	ISF  	   		4	; if not slot4
			959	[  0]	JMP  	  5		7	; 	goto 967
			960	[  0]	TGETS	  5	4	152	; slot5 = slot4.finalSymbols
			961	[  0]	ISF  	   		5	; if not <unknown table>.finalSymbols
			962	[  0]	JMP  	  6		4	; 	goto 967
			963	[  0]	TGETS	  5	4	152	; slot5 = slot4.finalSymbols
			964	[  0]	TGETS	  6	3	77	; slot6 = <unknown table>._cellIconMorph.row
			965	[  0]	TGETS	  7	3	75	; slot7 = <unknown table>._cellIconMorph.targetSymbol
			966	[  0]	TSETV	  7	5	6	; <unknown table>.finalSymbols[<unknown table>._cellIconMorph.row] = <unknown table>._cellIconMorph.targetSymbol
			967	[  0]	KSTR 	  5		69	; slot5 = "windup"
			968	[  0]	TSETS	  5	3	162	; <unknown table>._cellIconMorph.phase = slot5
			969	[  0]	KSHORT	  5		0	; slot5 = 0
			970	[  0]	TSETS	  5	3	163	; <unknown table>._cellIconMorph.t = slot5
			971	[  0]	ISF  	   		4	; if not slot4
			972	[  0]	JMP  	  5		12	; 	goto 985
			973	[  0]	TGETS	  5	4	104	; slot5 = slot4.cellMorph
			974	[  0]	ISF  	   		5	; if not <unknown table>.cellMorph
			975	[  0]	JMP  	  6		9	; 	goto 985
			976	[  0]	TGETS	  5	4	104	; slot5 = slot4.cellMorph
			977	[  0]	KSTR 	  6		69	; slot6 = "windup"
			978	[  0]	TSETS	  6	5	162	; <unknown table>.cellMorph.phase = slot6
			979	[  0]	TGETS	  5	4	104	; slot5 = slot4.cellMorph
			980	[  0]	KSHORT	  6		0	; slot6 = 0
			981	[  0]	TSETS	  6	5	163	; <unknown table>.cellMorph.t = slot6
			982	[  0]	TGETS	  5	4	104	; slot5 = slot4.cellMorph
			983	[  0]	TGETS	  6	3	68	; slot6 = <unknown table>._cellIconMorph.windupDur
			984	[  0]	TSETS	  6	5	68	; <unknown table>.cellMorph.windupDur = <unknown table>._cellIconMorph.windupDur
			985	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 986
			986	[  0]	RET0 	  0		1	; return
			987	[  0]	TGETS	  5	3	162	; slot5 = <unknown table>._cellIconMorph.phase
			988	[  0]	ISNES	  5		69	; if <unknown table>._cellIconMorph.phase ~= "windup"
			989	[  0]	JMP  	  5		26	; 	goto 1016
			990	[  0]	TGETS	  5	3	163	; slot5 = <unknown table>._cellIconMorph.t
			991	[  0]	TGETS	  6	3	68	; slot6 = <unknown table>._cellIconMorph.windupDur
			992	[  0]	ISGE 	  5		6	; if <unknown table>._cellIconMorph.t >= <unknown table>._cellIconMorph.windupDur
			993	[  0]	JMP  	  5		2	; 	goto 996
			994	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 995
			995	[  0]	RET0 	  0		1	; return
			996	[  0]	KSTR 	  5		67	; slot5 = "slam"
			997	[  0]	TSETS	  5	3	162	; <unknown table>._cellIconMorph.phase = slot5
			998	[  0]	KSHORT	  5		0	; slot5 = 0
			999	[  0]	TSETS	  5	3	163	; <unknown table>._cellIconMorph.t = slot5
			1000	[  0]	ISF  	   		4	; if not slot4
			1001	[  0]	JMP  	  5		12	; 	goto 1014
			1002	[  0]	TGETS	  5	4	104	; slot5 = slot4.cellMorph
			1003	[  0]	ISF  	   		5	; if not <unknown table>.cellMorph
			1004	[  0]	JMP  	  6		9	; 	goto 1014
			1005	[  0]	TGETS	  5	4	104	; slot5 = slot4.cellMorph
			1006	[  0]	KSTR 	  6		67	; slot6 = "slam"
			1007	[  0]	TSETS	  6	5	162	; <unknown table>.cellMorph.phase = slot6
			1008	[  0]	TGETS	  5	4	104	; slot5 = slot4.cellMorph
			1009	[  0]	KSHORT	  6		0	; slot6 = 0
			1010	[  0]	TSETS	  6	5	163	; <unknown table>.cellMorph.t = slot6
			1011	[  0]	TGETS	  5	4	104	; slot5 = slot4.cellMorph
			1012	[  0]	TGETS	  6	3	66	; slot6 = <unknown table>._cellIconMorph.slamDur
			1013	[  0]	TSETS	  6	5	66	; <unknown table>.cellMorph.slamDur = <unknown table>._cellIconMorph.slamDur
			1014	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1015
			1015	[  0]	RET0 	  0		1	; return
			1016	[  0]	TGETS	  5	3	162	; slot5 = <unknown table>._cellIconMorph.phase
			1017	[  0]	ISNES	  5		67	; if <unknown table>._cellIconMorph.phase ~= "slam"
			1018	[  0]	JMP  	  5		6	; 	goto 1025
			1019	[  0]	TGETS	  5	3	163	; slot5 = <unknown table>._cellIconMorph.t
			1020	[  0]	TGETS	  6	3	66	; slot6 = <unknown table>._cellIconMorph.slamDur
			1021	[  0]	ISGE 	  5		6	; if <unknown table>._cellIconMorph.t >= <unknown table>._cellIconMorph.slamDur
			1022	[  0]	JMP  	  5		2	; 	goto 1025
			1023	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1024
			1024	[  0]	RET0 	  0		1	; return
			1025	[  0]	TGETS	  5	0	158	; slot5 = slot0.grid
			1026	[  0]	TGETS	  6	3	77	; slot6 = <unknown table>._cellIconMorph.row
			1027	[  0]	TGETV	  5	5	6	; slot5 = <unknown table>.grid[<unknown table>._cellIconMorph.row]
			1028	[  0]	TGETS	  6	3	76	; slot6 = <unknown table>._cellIconMorph.col
			1029	[  0]	TGETS	  7	3	75	; slot7 = <unknown table>._cellIconMorph.targetSymbol
			1030	[  0]	TSETV	  7	5	6	; slot5[<unknown table>._cellIconMorph.col] = <unknown table>._cellIconMorph.targetSymbol
			1031	[  0]	ISF  	   		4	; if not slot4
			1032	[  0]	JMP  	  5		7	; 	goto 1040
			1033	[  0]	TGETS	  5	4	152	; slot5 = slot4.finalSymbols
			1034	[  0]	ISF  	   		5	; if not <unknown table>.finalSymbols
			1035	[  0]	JMP  	  6		4	; 	goto 1040
			1036	[  0]	TGETS	  5	4	152	; slot5 = slot4.finalSymbols
			1037	[  0]	TGETS	  6	3	77	; slot6 = <unknown table>._cellIconMorph.row
			1038	[  0]	TGETS	  7	3	75	; slot7 = <unknown table>._cellIconMorph.targetSymbol
			1039	[  0]	TSETV	  7	5	6	; <unknown table>.finalSymbols[<unknown table>._cellIconMorph.row] = <unknown table>._cellIconMorph.targetSymbol
			1040	[  0]	ISF  	   		4	; if not slot4
			1041	[  0]	JMP  	  5		9	; 	goto 1051
			1042	[  0]	TDUP 	  5		65	; slot5 = copy table#k65
			1043	[  0]	TGETS	  6	3	77	; slot6 = <unknown table>._cellIconMorph.row
			1044	[  0]	TSETS	  6	5	77	; slot5.row = <unknown table>._cellIconMorph.row
			1045	[  0]	TGETS	  6	3	135	; slot6 = <unknown table>._cellIconMorph.impactDur
			1046	[  0]	IST  	   		6	; if <unknown table>._cellIconMorph.impactDur
			1047	[  0]	JMP  	  7		1	; 	goto 1049
			1048	[  0]	KNUM 	  6		1	; slot6 = 0.3
			1049	[  0]	TSETS	  6	5	135	; slot5.impactDur = slot6
			1050	[  0]	TSETS	  5	4	104	; slot4.cellMorph = slot5
			1051	[  0]	KPRI 	  5		0	; slot5 = nil
			1052	[  0]	TSETS	  5	0	73	; slot0._cellIconMorph = slot5
			1053	[  0]	MOV  	  7		0	; slot7 = slot0
			1054	[  0]	TGETS	  5	0	64	; slot5 = slot0.evaluateWin
			1055	[  0]	CALL 	  5	1	2	;  = <unknown table>.evaluateWin(slot6)
			1056	[  0]	TGETS	  5	3	81	; slot5 = <unknown table>._cellIconMorph.paidWinningSymbols
			1057	[  0]	ISF  	   		5	; if not <unknown table>._cellIconMorph.paidWinningSymbols
			1058	[  0]	JMP  	  6		49	; 	goto 1108
			1059	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
			1060	[  0]	GGET 	  6		134	; slot6 = _env["ipairs"]
			1061	[  0]	TGETS	  8	0	169	; slot8 = slot0.result
			1062	[  0]	TGETS	  8	8	127	; slot8 = <unknown table>.result.winningLines
			1063	[  0]	IST  	   		8	; if <unknown table>.result.winningLines
			1064	[  0]	JMP  	  9		1	; 	goto 1066
			1065	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
			1066	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
			1067	[  0]	JMP  	  9		10	; 	goto 1078
			1068	[  0]	TGETS	 11	3	81	; slot11 = <unknown table>._cellIconMorph.paidWinningSymbols
			1069	[  0]	TGETV	 11	11	10	; slot11 = <unknown table>._cellIconMorph.paidWinningSymbols[math.max]
			1070	[  0]	TGETS	 12	0	169	; slot12 = slot0.result
			1071	[  0]	TGETS	 12	12	123	; slot12 = <unknown table>.result.symbolsByLine
			1072	[  0]	TGETV	 12	12	10	; slot12 = <unknown table>.result.symbolsByLine[math.max]
			1073	[  0]	ISEQV	 11		12	; if slot11 == slot12
			1074	[  0]	JMP  	 11		3	; 	goto 1078
			1075	[  0]	LEN  	 11		5	; slot11 = #slot5
			1076	[  0]	ADDVN	 11	11	5	; slot11 = slot11 + 1
			1077	[  0]	TSETV	 10	5	11	; slot5[slot11] = math.max
			1078	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, slot8; slot9, slot10 = ipairs(slot7, slot8)
			1079	[  0]	ITERL	  9		-12	; slot8 = slot9; if slot9 != nil goto 1068
			1080	[  0]	TGETS	  6	0	169	; slot6 = slot0.result
			1081	[  0]	TSETS	  5	6	127	; <unknown table>.result.winningLines = slot5
			1082	[  0]	TGETS	  6	0	169	; slot6 = slot0.result
			1083	[  0]	TSETS	  5	6	126	; <unknown table>.result.newWinningLines = slot5
			1084	[  0]	TGETS	  6	0	169	; slot6 = slot0.result
			1085	[  0]	TGETB	  7	5	1	; slot7 = slot5[1]
			1086	[  0]	ISF  	   		7	; if not slot7
			1087	[  0]	JMP  	  8		6	; 	goto 1094
			1088	[  0]	TGETS	  7	0	169	; slot7 = slot0.result
			1089	[  0]	TGETS	  7	7	123	; slot7 = <unknown table>.result.symbolsByLine
			1090	[  0]	TGETB	  8	5	1	; slot8 = slot5[1]
			1091	[  0]	TGETV	  7	7	8	; slot7 = <unknown table>.result.symbolsByLine[slot8]
			1092	[  0]	IST  	   		7	; if slot7
			1093	[  0]	JMP  	  8		1	; 	goto 1095
			1094	[  0]	KPRI 	  7		0	; slot7 = nil
			1095	[  0]	TSETS	  7	6	124	; <unknown table>.result.symbol = slot7
			1096	[  0]	TGETS	  6	0	169	; slot6 = slot0.result
			1097	[  0]	TGETS	  7	0	169	; slot7 = slot0.result
			1098	[  0]	TGETS	  7	7	128	; slot7 = <unknown table>.result.won
			1099	[  0]	IST  	   		7	; if <unknown table>.result.won
			1100	[  0]	JMP  	  8		6	; 	goto 1107
			1101	[  0]	TGETS	  7	3	82	; slot7 = <unknown table>._cellIconMorph.nudgeWon
			1102	[  0]	ISEQP	  7		2	; if <unknown table>._cellIconMorph.nudgeWon == true
			1103	[  0]	JMP  	  7		2	; 	goto 1106
			1104	[  0]	KPRI 	  7		1	; slot7 = false
			1105	[  0]	JMP  	  8		1	; 	goto 1107
			1106	[  0]	KPRI 	  7		2	; slot7 = true
			1107	[  0]	TSETS	  7	6	128	; <unknown table>.result.won = slot7
			1108	[  0]	TGETS	  5	0	169	; slot5 = slot0.result
			1109	[  0]	KPRI 	  6		2	; slot6 = true
			1110	[  0]	TSETS	  6	5	63	; <unknown table>.result._corePostEvaluateComplete = slot6
			1111	[  0]	TGETS	  5	0	169	; slot5 = slot0.result
			1112	[  0]	KPRI 	  6		2	; slot6 = true
			1113	[  0]	TSETS	  6	5	62	; <unknown table>.result._copycapApplied = slot6
			1114	[  0]	GGET 	  5		109	; slot5 = _env["math"]
			1115	[  0]	TGETS	  5	5	108	; slot5 = math.max
			1116	[  0]	KSHORT	  7		0	; slot7 = 0
			1117	[  0]	GGET 	  8		60	; slot8 = _env["tonumber"]
			1118	[  0]	TGETS	 10	3	59	; slot10 = <unknown table>._cellIconMorph.settleDelay
			1119	[  0]	IST  	   		10	; if <unknown table>._cellIconMorph.settleDelay
			1120	[  0]	JMP  	 11		1	; 	goto 1122
			1121	[  0]	KNUM 	 10		21	; slot10 = 0.08
			1122	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
			1123	[  0]	IST  	   		8	; if tonumber
			1124	[  0]	JMP  	  9		1	; 	goto 1126
			1125	[  0]	KNUM 	  8		21	; slot8 = 0.08
			1126	[  0]	CALL 	  5	2	3	; slot5 = math.max(slot6, slot7)
			1127	[  0]	TSETS	  5	0	61	; slot0._cellIconMorphImpactDelay = math.max
			1128	[  0]	GGET 	  5		141	; slot5 = _env["type"]
			1129	[  0]	TGETS	  7	0	58	; slot7 = slot0.onCopycapImpact
			1130	[  0]	CALL 	  5	2	2	; slot5 = type(slot6)
			1131	[  0]	ISNES	  5		139	; if type ~= "function"
			1132	[  0]	JMP  	  5		12	; 	goto 1145
			1133	[  0]	GGET 	  5		138	; slot5 = _env["pcall"]
			1134	[  0]	TGETS	  7	0	58	; slot7 = slot0.onCopycapImpact
			1135	[  0]	TDUP 	  8		57	; slot8 = copy table#k57
			1136	[  0]	TGETS	  9	3	77	; slot9 = <unknown table>._cellIconMorph.row
			1137	[  0]	TSETS	  9	8	77	; slot8.row = <unknown table>._cellIconMorph.row
			1138	[  0]	TGETS	  9	3	76	; slot9 = <unknown table>._cellIconMorph.col
			1139	[  0]	TSETS	  9	8	76	; slot8.col = <unknown table>._cellIconMorph.col
			1140	[  0]	TGETS	  9	3	75	; slot9 = <unknown table>._cellIconMorph.targetSymbol
			1141	[  0]	TSETS	  9	8	124	; slot8.symbol = <unknown table>._cellIconMorph.targetSymbol
			1142	[  0]	TGETS	  9	0	169	; slot9 = slot0.result
			1143	[  0]	TSETS	  9	8	169	; slot8.result = <unknown table>.result
			1144	[  0]	CALL 	  5	1	3	;  = pcall(slot6, <unknown table>.onCopycapImpact)
			1145	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1146
			1146	[  0]	RET0 	  0		1	; return
			1147	[  0]	TGETS	  3	0	61	; slot3 = slot0._cellIconMorphImpactDelay
			1148	[  0]	ISF  	   		3	; if not <unknown table>._cellIconMorphImpactDelay
			1149	[  0]	JMP  	  4		88	; 	goto 1238
			1150	[  0]	GGET 	  3		109	; slot3 = _env["math"]
			1151	[  0]	TGETS	  3	3	108	; slot3 = math.max
			1152	[  0]	KSHORT	  5		0	; slot5 = 0
			1153	[  0]	TGETS	  6	0	61	; slot6 = slot0._cellIconMorphImpactDelay
			1154	[  0]	IST  	   		6	; if <unknown table>._cellIconMorphImpactDelay
			1155	[  0]	JMP  	  7		1	; 	goto 1157
			1156	[  0]	KSHORT	  6		0	; slot6 = 0
			1157	[  0]	ISTC 	  7		1	; slot7 = slot1; if slot1
			1158	[  0]	JMP  	  7		1	; 	goto 1160
			1159	[  0]	KSHORT	  7		0	; slot7 = 0
			1160	[  0]	SUBVV	  6	6	7	; slot6 = slot6 - slot7
			1161	[  0]	CALL 	  3	2	3	; slot3 = math.max(slot4, slot5)
			1162	[  0]	TSETS	  3	0	61	; slot0._cellIconMorphImpactDelay = slot3
			1163	[  0]	TGETS	  3	0	61	; slot3 = slot0._cellIconMorphImpactDelay
			1164	[  0]	KSHORT	  4		0	; slot4 = 0
			1165	[  0]	ISGE 	  4		3	; if slot4 >= <unknown table>._cellIconMorphImpactDelay
			1166	[  0]	JMP  	  3		2	; 	goto 1169
			1167	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1168
			1168	[  0]	RET0 	  0		1	; return
			1169	[  0]	KPRI 	  3		0	; slot3 = nil
			1170	[  0]	TSETS	  3	0	61	; slot0._cellIconMorphImpactDelay = slot3
			1171	[  0]	TGETS	  3	0	56	; slot3 = slot0.spin
			1172	[  0]	KPRI 	  4		1	; slot4 = false
			1173	[  0]	TSETS	  4	3	164	; <unknown table>.spin.active = slot4
			1174	[  0]	GGET 	  3		141	; slot3 = _env["type"]
			1175	[  0]	TGETS	  5	0	55	; slot5 = slot0.onPostEvaluate
			1176	[  0]	CALL 	  3	2	2	; slot3 = type(slot4)
			1177	[  0]	ISNES	  3		139	; if type ~= "function"
			1178	[  0]	JMP  	  3		4	; 	goto 1183
			1179	[  0]	GGET 	  3		138	; slot3 = _env["pcall"]
			1180	[  0]	TGETS	  5	0	55	; slot5 = slot0.onPostEvaluate
			1181	[  0]	TGETS	  6	0	169	; slot6 = slot0.result
			1182	[  0]	CALL 	  3	1	3	;  = pcall(slot4, <unknown table>.onPostEvaluate)
			1183	[  0]	TGETS	  3	0	169	; slot3 = slot0.result
			1184	[  0]	TGETS	  3	3	128	; slot3 = <unknown table>.result.won
			1185	[  0]	ISF  	   		3	; if not <unknown table>.result.won
			1186	[  0]	JMP  	  4		16	; 	goto 1203
			1187	[  0]	TGETS	  3	0	169	; slot3 = slot0.result
			1188	[  0]	TGETS	  3	3	93	; slot3 = <unknown table>.result.awarded
			1189	[  0]	IST  	   		3	; if <unknown table>.result.awarded
			1190	[  0]	JMP  	  3		12	; 	goto 1203
			1191	[  0]	GGET 	  3		141	; slot3 = _env["type"]
			1192	[  0]	TGETS	  5	0	84	; slot5 = slot0.onWin
			1193	[  0]	CALL 	  3	2	2	; slot3 = type(slot4)
			1194	[  0]	ISNES	  3		139	; if type ~= "function"
			1195	[  0]	JMP  	  3		4	; 	goto 1200
			1196	[  0]	GGET 	  3		138	; slot3 = _env["pcall"]
			1197	[  0]	TGETS	  5	0	84	; slot5 = slot0.onWin
			1198	[  0]	TGETS	  6	0	169	; slot6 = slot0.result
			1199	[  0]	CALL 	  3	1	3	;  = pcall(slot4, <unknown table>.onWin)
			1200	[  0]	TGETS	  3	0	169	; slot3 = slot0.result
			1201	[  0]	KPRI 	  4		2	; slot4 = true
			1202	[  0]	TSETS	  4	3	93	; <unknown table>.result.awarded = slot4
			1203	[  0]	TGETS	  3	0	169	; slot3 = slot0.result
			1204	[  0]	TGETS	  3	3	128	; slot3 = <unknown table>.result.won
			1205	[  0]	ISF  	   		3	; if not <unknown table>.result.won
			1206	[  0]	JMP  	  4		20	; 	goto 1227
			1207	[  0]	TGETS	  3	0	169	; slot3 = slot0.result
			1208	[  0]	TGETS	  3	3	92	; slot3 = <unknown table>.result.fxStarted
			1209	[  0]	IST  	   		3	; if <unknown table>.result.fxStarted
			1210	[  0]	JMP  	  3		16	; 	goto 1227
			1211	[  0]	TGETS	  3	0	169	; slot3 = slot0.result
			1212	[  0]	KPRI 	  4		2	; slot4 = true
			1213	[  0]	TSETS	  4	3	168	; <unknown table>.result.highlightActive = slot4
			1214	[  0]	TGETS	  3	0	169	; slot3 = slot0.result
			1215	[  0]	KSHORT	  4		0	; slot4 = 0
			1216	[  0]	TSETS	  4	3	167	; <unknown table>.result.ht = slot4
			1217	[  0]	TGETS	  3	0	169	; slot3 = slot0.result
			1218	[  0]	TGETS	  4	0	169	; slot4 = slot0.result
			1219	[  0]	TGETS	  4	4	166	; slot4 = <unknown table>.result.hd
			1220	[  0]	IST  	   		4	; if <unknown table>.result.hd
			1221	[  0]	JMP  	  5		1	; 	goto 1223
			1222	[  0]	KNUM 	  4		0	; slot4 = 0.35
			1223	[  0]	TSETS	  4	3	166	; <unknown table>.result.hd = slot4
			1224	[  0]	TGETS	  3	0	169	; slot3 = slot0.result
			1225	[  0]	KPRI 	  4		2	; slot4 = true
			1226	[  0]	TSETS	  4	3	92	; <unknown table>.result.fxStarted = slot4
			1227	[  0]	GGET 	  3		141	; slot3 = _env["type"]
			1228	[  0]	TGETS	  5	0	54	; slot5 = slot0.onSpinEnd
			1229	[  0]	CALL 	  3	2	2	; slot3 = type(slot4)
			1230	[  0]	ISNES	  3		139	; if type ~= "function"
			1231	[  0]	JMP  	  3		4	; 	goto 1236
			1232	[  0]	GGET 	  3		138	; slot3 = _env["pcall"]
			1233	[  0]	TGETS	  5	0	54	; slot5 = slot0.onSpinEnd
			1234	[  0]	TGETS	  6	0	169	; slot6 = slot0.result
			1235	[  0]	CALL 	  3	1	3	;  = pcall(slot4, <unknown table>.onSpinEnd)
			1236	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1237
			1237	[  0]	RET0 	  0		1	; return
			1238	[  0]	TGETS	  3	0	56	; slot3 = slot0.spin
			1239	[  0]	TGETS	  3	3	164	; slot3 = <unknown table>.spin.active
			1240	[  0]	IST  	   		3	; if <unknown table>.spin.active
			1241	[  0]	JMP  	  3		2	; 	goto 1244
			1242	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1243
			1243	[  0]	RET0 	  0		1	; return
			1244	[  0]	TGETS	  3	0	53	; slot3 = slot0._singleReelRespin
			1245	[  0]	ISF  	   		3	; if not <unknown table>._singleReelRespin
			1246	[  0]	JMP  	  4		80	; 	goto 1327
			1247	[  0]	TGETS	  3	0	53	; slot3 = slot0._singleReelRespin
			1248	[  0]	TGETS	  3	3	52	; slot3 = <unknown table>._singleReelRespin.started
			1249	[  0]	IST  	   		3	; if <unknown table>._singleReelRespin.started
			1250	[  0]	JMP  	  3		76	; 	goto 1327
			1251	[  0]	TGETS	  3	0	53	; slot3 = slot0._singleReelRespin
			1252	[  0]	GGET 	  4		109	; slot4 = _env["math"]
			1253	[  0]	TGETS	  4	4	108	; slot4 = math.max
			1254	[  0]	KSHORT	  6		0	; slot6 = 0
			1255	[  0]	TGETS	  7	3	51	; slot7 = <unknown table>._singleReelRespin.delay
			1256	[  0]	IST  	   		7	; if <unknown table>._singleReelRespin.delay
			1257	[  0]	JMP  	  8		1	; 	goto 1259
			1258	[  0]	KSHORT	  7		0	; slot7 = 0
			1259	[  0]	ISTC 	  8		1	; slot8 = slot1; if slot1
			1260	[  0]	JMP  	  8		1	; 	goto 1262
			1261	[  0]	KSHORT	  8		0	; slot8 = 0
			1262	[  0]	SUBVV	  7	7	8	; slot7 = slot7 - slot8
			1263	[  0]	CALL 	  4	2	3	; slot4 = math.max(<unknown table>.onSpinEnd, slot6)
			1264	[  0]	TSETS	  4	3	51	; <unknown table>._singleReelRespin.delay = math.max
			1265	[  0]	TGETS	  4	3	51	; slot4 = <unknown table>._singleReelRespin.delay
			1266	[  0]	KSHORT	  5		0	; slot5 = 0
			1267	[  0]	ISGE 	  5		4	; if slot5 >= <unknown table>._singleReelRespin.delay
			1268	[  0]	JMP  	  4		2	; 	goto 1271
			1269	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1270
			1270	[  0]	RET0 	  0		1	; return
			1271	[  0]	KPRI 	  4		2	; slot4 = true
			1272	[  0]	TSETS	  4	3	52	; <unknown table>._singleReelRespin.started = slot4
			1273	[  0]	TGETS	  4	3	153	; slot4 = <unknown table>._singleReelRespin.reels
			1274	[  0]	ISF  	   		4	; if not <unknown table>._singleReelRespin.reels
			1275	[  0]	JMP  	  5		16	; 	goto 1292
			1276	[  0]	GGET 	  4		134	; slot4 = _env["ipairs"]
			1277	[  0]	TGETS	  6	3	153	; slot6 = <unknown table>._singleReelRespin.reels
			1278	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
			1279	[  0]	JMP  	  7		9	; 	goto 1289
			1280	[  0]	UGET 	  9		6	; slot9 = uv6"unknwon"
			1281	[  0]	MOV  	 11		0	; slot11 = slot0
			1282	[  0]	TGETS	 12	8	76	; slot12 = slot8.col
			1283	[  0]	TGETS	 13	8	50	; slot13 = slot8.targetFinalSymbols
			1284	[  0]	TGETS	 14	8	49	; slot14 = slot8.timing
			1285	[  0]	IST  	   		14	; if <unknown table>.timing
			1286	[  0]	JMP  	 15		1	; 	goto 1288
			1287	[  0]	TGETS	 14	3	49	; slot14 = <unknown table>._singleReelRespin.timing
			1288	[  0]	CALL 	  9	1	5	;  = uv6"unknown"(slot10, slot11, <unknown table>.col, <unknown table>.targetFinalSymbols)
			1289	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, <unknown table>._singleReelRespin.reels; slot7, slot8 = ipairs(slot5, <unknown table>._singleReelRespin.reels)
			1290	[  0]	ITERL	  7		-11	; <unknown table>._singleReelRespin.reels = slot7; if slot7 != nil goto 1280
			1291	[  0]	JMP  	  4		6	; 	goto 1298
			1292	[  0]	UGET 	  4		6	; slot4 = uv6"unknwon"
			1293	[  0]	MOV  	  6		0	; slot6 = slot0
			1294	[  0]	TGETS	  7	3	76	; slot7 = <unknown table>._singleReelRespin.col
			1295	[  0]	TGETS	  8	3	50	; slot8 = <unknown table>._singleReelRespin.targetFinalSymbols
			1296	[  0]	TGETS	  9	3	49	; slot9 = <unknown table>._singleReelRespin.timing
			1297	[  0]	CALL 	  4	1	5	;  = uv6"unknown"(slot5, slot6, <unknown table>._singleReelRespin.col, <unknown table>._singleReelRespin.targetFinalSymbols)
			1298	[  0]	TGETS	  4	0	48	; slot4 = slot0._luckyNail
			1299	[  0]	ISF  	   		4	; if not <unknown table>._luckyNail
			1300	[  0]	JMP  	  5		23	; 	goto 1324
			1301	[  0]	TGETS	  4	0	48	; slot4 = slot0._luckyNail
			1302	[  0]	TGETS	  4	4	47	; slot4 = <unknown table>._luckyNail.stopQueued
			1303	[  0]	ISF  	   		4	; if not <unknown table>._luckyNail.stopQueued
			1304	[  0]	JMP  	  5		19	; 	goto 1324
			1305	[  0]	TGETS	  4	0	153	; slot4 = slot0.reels
			1306	[  0]	ISF  	   		4	; if not <unknown table>.reels
			1307	[  0]	JMP  	  5		4	; 	goto 1312
			1308	[  0]	TGETS	  4	0	153	; slot4 = slot0.reels
			1309	[  0]	TGETS	  5	0	48	; slot5 = slot0._luckyNail
			1310	[  0]	TGETS	  5	5	76	; slot5 = <unknown table>._luckyNail.col
			1311	[  0]	TGETV	  4	4	5	; slot4 = <unknown table>.reels[<unknown table>._luckyNail.col]
			1312	[  0]	ISF  	   		4	; if not slot4
			1313	[  0]	JMP  	  5		10	; 	goto 1324
			1314	[  0]	TGETS	  5	4	46	; slot5 = slot4.manualStop
			1315	[  0]	ISF  	   		5	; if not <unknown table>.manualStop
			1316	[  0]	JMP  	  6		7	; 	goto 1324
			1317	[  0]	KPRI 	  5		2	; slot5 = true
			1318	[  0]	TSETS	  5	4	45	; slot4.manualStopRequested = slot5
			1319	[  0]	TGETS	  5	4	112	; slot5 = slot4.state
			1320	[  0]	ISNES	  5		111	; if <unknown table>.state ~= "accelerate"
			1321	[  0]	JMP  	  5		2	; 	goto 1324
			1322	[  0]	KSTR 	  5		110	; slot5 = "cruise"
			1323	[  0]	TSETS	  5	4	112	; slot4.state = slot5
			1324	[  0]	TGETS	  4	0	56	; slot4 = slot0.spin
			1325	[  0]	KSHORT	  5		0	; slot5 = 0
			1326	[  0]	TSETS	  5	4	163	; <unknown table>.spin.t = slot5
			1327	[  0]	TGETS	  3	0	56	; slot3 = slot0.spin
			1328	[  0]	TGETS	  4	0	56	; slot4 = slot0.spin
			1329	[  0]	TGETS	  4	4	163	; slot4 = <unknown table>.spin.t
			1330	[  0]	ADDVV	  4	4	1	; slot4 = <unknown table>.spin.t + slot1
			1331	[  0]	TSETS	  4	3	163	; <unknown table>.spin.t = slot4
			1332	[  0]	KPRI 	  3		2	; slot3 = true
			1333	[  0]	KSHORT	  4		1	; slot4 = 1
			1334	[  0]	TGETS	  5	0	156	; slot5 = slot0.ui
			1335	[  0]	TGETS	  5	5	155	; slot5 = <unknown table>.ui.slot
			1336	[  0]	TGETS	  5	5	154	; slot5 = <unknown table>.ui.slot.cols
			1337	[  0]	KSHORT	  6		1	; slot6 = 1
			1338	[  0]	FORI 	  4		593	; for <unknown table>._singleReelRespin.col = slot4,slot5,slot6 else goto 1932
			1339	[  0]	TGETS	  8	0	153	; slot8 = slot0.reels
			1340	[  0]	TGETV	  8	8	7	; slot8 = <unknown table>.reels[slot7]
			1341	[  0]	ISF  	   		8	; if not slot8
			1342	[  0]	JMP  	  9		587	; 	goto 1930
			1343	[  0]	TGETS	  9	8	113	; slot9 = slot8.spinning
			1344	[  0]	ISF  	   		9	; if not <unknown table>.spinning
			1345	[  0]	JMP  	 10		584	; 	goto 1930
			1346	[  0]	TGETS	  9	8	112	; slot9 = slot8.state
			1347	[  0]	ISNES	  9		111	; if <unknown table>.state ~= "accelerate"
			1348	[  0]	JMP  	  9		32	; 	goto 1381
			1349	[  0]	TGETS	  9	8	163	; slot9 = slot8.t
			1350	[  0]	ADDVV	  9	9	1	; slot9 = <unknown table>.t + slot1
			1351	[  0]	TSETS	  9	8	163	; slot8.t = slot9
			1352	[  0]	GGET 	  9		109	; slot9 = _env["math"]
			1353	[  0]	TGETS	  9	9	107	; slot9 = math.min
			1354	[  0]	KSHORT	 11		1	; slot11 = 1
			1355	[  0]	TGETS	 12	8	163	; slot12 = slot8.t
			1356	[  0]	TGETS	 13	8	44	; slot13 = slot8.accelTime
			1357	[  0]	DIVVV	 12	12	13	; slot12 = <unknown table>.t / <unknown table>.accelTime
			1358	[  0]	CALL 	  9	2	3	; slot9 = math.min(slot10, slot11)
			1359	[  0]	TGETS	 10	8	42	; slot10 = slot8.vmax
			1360	[  0]	UGET 	 11		7	; slot11 = uv7"unknwon"
			1361	[  0]	MOV  	 13		9	; slot13 = math.min
			1362	[  0]	CALL 	 11	2	2	; slot11 = uv7"unknown"(slot12)
			1363	[  0]	MULVV	 10	10	11	; slot10 = <unknown table>.vmax * uv7"unknown"
			1364	[  0]	TSETS	 10	8	43	; slot8.speed = slot10
			1365	[  0]	TGETS	 10	8	41	; slot10 = slot8.pos
			1366	[  0]	TGETS	 11	8	43	; slot11 = slot8.speed
			1367	[  0]	MULVV	 11	11	1	; slot11 = <unknown table>.speed * slot1
			1368	[  0]	ADDVV	 10	10	11	; slot10 = <unknown table>.pos + slot11
			1369	[  0]	TSETS	 10	8	41	; slot8.pos = slot10
			1370	[  0]	KSHORT	 10		1	; slot10 = 1
			1371	[  0]	ISGT 	 10		9	; if slot10 > math.min
			1372	[  0]	JMP  	 10		6	; 	goto 1379
			1373	[  0]	KSTR 	 10		110	; slot10 = "cruise"
			1374	[  0]	TSETS	 10	8	112	; slot8.state = slot10
			1375	[  0]	KSHORT	 10		0	; slot10 = 0
			1376	[  0]	TSETS	 10	8	163	; slot8.t = slot10
			1377	[  0]	TGETS	 10	8	42	; slot10 = slot8.vmax
			1378	[  0]	TSETS	 10	8	43	; slot8.speed = <unknown table>.vmax
			1379	[  0]	KPRI 	  3		1	; slot3 = false
			1380	[  0]	JMP  	  9		549	; 	goto 1930
			1381	[  0]	TGETS	  9	8	112	; slot9 = slot8.state
			1382	[  0]	ISNES	  9		110	; if <unknown table>.state ~= "cruise"
			1383	[  0]	JMP  	  9		272	; 	goto 1656
			1384	[  0]	TGETS	  9	8	42	; slot9 = slot8.vmax
			1385	[  0]	TSETS	  9	8	43	; slot8.speed = <unknown table>.vmax
			1386	[  0]	TGETS	  9	8	41	; slot9 = slot8.pos
			1387	[  0]	TGETS	 10	8	43	; slot10 = slot8.speed
			1388	[  0]	MULVV	 10	10	1	; slot10 = <unknown table>.speed * slot1
			1389	[  0]	ADDVV	  9	9	10	; slot9 = <unknown table>.pos + slot10
			1390	[  0]	TSETS	  9	8	41	; slot8.pos = slot9
			1391	[  0]	TGETS	  9	8	46	; slot9 = slot8.manualStop
			1392	[  0]	ISF  	   		9	; if not <unknown table>.manualStop
			1393	[  0]	JMP  	 10		66	; 	goto 1460
			1394	[  0]	TGETS	  9	8	45	; slot9 = slot8.manualStopRequested
			1395	[  0]	ISF  	   		9	; if not <unknown table>.manualStopRequested
			1396	[  0]	JMP  	 10		63	; 	goto 1460
			1397	[  0]	GGET 	  9		109	; slot9 = _env["math"]
			1398	[  0]	TGETS	  9	9	40	; slot9 = math.floor
			1399	[  0]	TGETS	 11	8	41	; slot11 = slot8.pos
			1400	[  0]	IST  	   		11	; if <unknown table>.pos
			1401	[  0]	JMP  	 12		1	; 	goto 1403
			1402	[  0]	KSHORT	 11		0	; slot11 = 0
			1403	[  0]	ADDVN	 11	11	12	; slot11 = slot11 + 0.5
			1404	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
			1405	[  0]	FNEW 	 10		39	; N/A:0-0: 1 args, 1 upvalues, 3 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	SUBVN	  1	0	0	; slot1 = slot0 - 1
				  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
				  3	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".stripLen
				  4	[  0]	MODVV	  1	1	2	; slot1 = slot1 % uv0"unknown".stripLen
				  5	[  0]	ADDVN	  1	1	0	; slot1 = slot1 + 1
				  6	[  0]	RET1 	  1		2	; return slot1
			1406	[  0]	TNEW 	 11		0	; slot11 = new table( array: 0, dict: 1)
			1407	[  0]	KSHORT	 12		1	; slot12 = 1
			1408	[  0]	KSHORT	 13		3	; slot13 = 3
			1409	[  0]	KSHORT	 14		1	; slot14 = 1
			1410	[  0]	FORI 	 12		10	; for slot15 = slot12,slot13,slot14 else goto 1421
			1411	[  0]	SUBVV	 16	15	9	; slot16 = slot15 - math.floor
			1412	[  0]	MOV  	 17		10	; slot17 = slot10
			1413	[  0]	TGETS	 19	8	38	; slot19 = slot8.stripStart
			1414	[  0]	SUBVN	 20	16	5	; slot20 = slot16 - 1
			1415	[  0]	ADDVV	 19	19	20	; slot19 = <unknown table>.stripStart + slot20
			1416	[  0]	CALL 	 17	2	2	; slot17 = slot17(slot18)
			1417	[  0]	TGETS	 18	8	37	; slot18 = slot8.strip
			1418	[  0]	TGETV	 18	18	17	; slot18 = <unknown table>.strip[slot17]
			1419	[  0]	TSETV	 18	11	15	; slot11[slot15] = slot18
			1420	[  0]	FORL 	 12		-10	; slot15 = slot15 + slot14; if cmp(slot15, sign slot14,  slot13) goto 1411
			1421	[  0]	TSETS	 11	8	50	; slot8.targetFinalSymbols = slot11
			1422	[  0]	TSETS	  9	8	36	; slot8.targetShift = math.floor
			1423	[  0]	TGETS	 12	8	41	; slot12 = slot8.pos
			1424	[  0]	TSETS	 12	8	35	; slot8.manualStopRequestPos = <unknown table>.pos
			1425	[  0]	TSETS	  9	8	41	; slot8.pos = math.floor
			1426	[  0]	KSTR 	 12		34	; slot12 = "settle"
			1427	[  0]	TSETS	 12	8	112	; slot8.state = slot12
			1428	[  0]	KSHORT	 12		0	; slot12 = 0
			1429	[  0]	TSETS	 12	8	43	; slot8.speed = slot12
			1430	[  0]	KSHORT	 12		0	; slot12 = 0
			1431	[  0]	TSETS	 12	8	163	; slot8.t = slot12
			1432	[  0]	TSETS	  9	8	33	; slot8.startPos = math.floor
			1433	[  0]	TGETS	 12	8	147	; slot12 = slot8.hit
			1434	[  0]	IST  	   		12	; if <unknown table>.hit
			1435	[  0]	JMP  	 12		2	; 	goto 1438
			1436	[  0]	TNEW 	 12		0	; slot12 = new table( array: 0, dict: 1)
			1437	[  0]	TSETS	 12	8	147	; slot8.hit = slot12
			1438	[  0]	TGETS	 12	8	147	; slot12 = slot8.hit
			1439	[  0]	KPRI 	 13		2	; slot13 = true
			1440	[  0]	TSETS	 13	12	164	; <unknown table>.hit.active = slot13
			1441	[  0]	TGETS	 12	8	147	; slot12 = slot8.hit
			1442	[  0]	KSHORT	 13		0	; slot13 = 0
			1443	[  0]	TSETS	 13	12	163	; <unknown table>.hit.t = slot13
			1444	[  0]	TGETS	 12	8	147	; slot12 = slot8.hit
			1445	[  0]	KSHORT	 13		0	; slot13 = 0
			1446	[  0]	TSETS	 13	12	144	; <unknown table>.hit.offset = slot13
			1447	[  0]	TGETS	 12	8	147	; slot12 = slot8.hit
			1448	[  0]	KSHORT	 13		1	; slot13 = 1
			1449	[  0]	TSETS	 13	12	143	; <unknown table>.hit.squashX = slot13
			1450	[  0]	TGETS	 12	8	147	; slot12 = slot8.hit
			1451	[  0]	KSHORT	 13		1	; slot13 = 1
			1452	[  0]	TSETS	 13	12	142	; <unknown table>.hit.squashY = slot13
			1453	[  0]	UGET 	 12		8	; slot12 = uv8"unknwon"
			1454	[  0]	MOV  	 14		0	; slot14 = slot0
			1455	[  0]	MOV  	 15		8	; slot15 = slot8
			1456	[  0]	MOV  	 16		7	; slot16 = slot7
			1457	[  0]	CALL 	 12	1	4	;  = uv8"unknown"(slot13, slot14, slot15)
			1458	[  0]	KPRI 	  3		1	; slot3 = false
			1459	[  0]	JMP  	  9		194	; 	goto 1654
			1460	[  0]	TGETS	  9	0	56	; slot9 = slot0.spin
			1461	[  0]	TGETS	  9	9	163	; slot9 = <unknown table>.spin.t
			1462	[  0]	TGETS	 10	8	32	; slot10 = slot8.stopAt
			1463	[  0]	ISGT 	 10		9	; if <unknown table>.stopAt > <unknown table>.spin.t
			1464	[  0]	JMP  	  9		189	; 	goto 1654
			1465	[  0]	SUBVN	  9	7	5	; slot9 = slot7 - 1
			1466	[  0]	ADDNV	  9	9	22	; slot9 = 4 + slot9
			1467	[  0]	SUBVN	 10	7	5	; slot10 = slot7 - 1
			1468	[  0]	ADDNV	 10	10	23	; slot10 = 6 + slot10
			1469	[  0]	GGET 	 11		31	; slot11 = _env["love"]
			1470	[  0]	TGETS	 11	11	109	; slot11 = love.math
			1471	[  0]	TGETS	 11	11	30	; slot11 = love.math.random
			1472	[  0]	MOV  	 13		9	; slot13 = slot9
			1473	[  0]	MOV  	 14		10	; slot14 = slot10
			1474	[  0]	CALL 	 11	2	3	; slot11 = love.math.random(uv8"unknown", slot13)
			1475	[  0]	GGET 	 12		109	; slot12 = _env["math"]
			1476	[  0]	TGETS	 12	12	40	; slot12 = math.floor
			1477	[  0]	TGETS	 14	8	41	; slot14 = slot8.pos
			1478	[  0]	CALL 	 12	2	2	; slot12 = math.floor(slot13)
			1479	[  0]	ADDVV	 13	12	11	; slot13 = math.floor + love.math.random
			1480	[  0]	TSETS	 13	8	36	; slot8.targetShift = slot13
			1481	[  0]	TGETS	 13	8	37	; slot13 = slot8.strip
			1482	[  0]	ISF  	   		13	; if not <unknown table>.strip
			1483	[  0]	JMP  	 14		75	; 	goto 1559
			1484	[  0]	TGETS	 13	8	29	; slot13 = slot8.stripLen
			1485	[  0]	ISF  	   		13	; if not <unknown table>.stripLen
			1486	[  0]	JMP  	 14		72	; 	goto 1559
			1487	[  0]	TGETS	 13	8	38	; slot13 = slot8.stripStart
			1488	[  0]	ISF  	   		13	; if not <unknown table>.stripStart
			1489	[  0]	JMP  	 14		69	; 	goto 1559
			1490	[  0]	FNEW 	 13		28	; N/A:0-0: 1 args, 1 upvalues, 3 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	SUBVN	  1	0	0	; slot1 = slot0 - 1
				  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
				  3	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".stripLen
				  4	[  0]	MODVV	  1	1	2	; slot1 = slot1 % uv0"unknown".stripLen
				  5	[  0]	ADDVN	  1	1	0	; slot1 = slot1 + 1
				  6	[  0]	RET1 	  1		2	; return slot1
			1491	[  0]	MOV  	 14		13	; slot14 = slot13
			1492	[  0]	TGETS	 16	8	38	; slot16 = slot8.stripStart
			1493	[  0]	TGETS	 17	8	36	; slot17 = slot8.targetShift
			1494	[  0]	SUBVV	 16	16	17	; slot16 = <unknown table>.stripStart - <unknown table>.targetShift
			1495	[  0]	CALL 	 14	2	2	; slot14 = slot14(slot15)
			1496	[  0]	TSETS	 14	8	27	; slot8.stopIndex = slot14
			1497	[  0]	TGETS	 15	8	50	; slot15 = slot8.targetFinalSymbols
			1498	[  0]	ISF  	   		15	; if not <unknown table>.targetFinalSymbols
			1499	[  0]	JMP  	 16		23	; 	goto 1523
			1500	[  0]	TGETS	 16	8	37	; slot16 = slot8.strip
			1501	[  0]	TGETB	 17	15	1	; slot17 = <unknown table>.targetFinalSymbols[1]
			1502	[  0]	TSETV	 17	16	14	; <unknown table>.strip[slot14] = slot17
			1503	[  0]	TGETS	 16	8	37	; slot16 = slot8.strip
			1504	[  0]	MOV  	 17		13	; slot17 = slot13
			1505	[  0]	ADDVN	 19	14	5	; slot19 = slot14 + 1
			1506	[  0]	CALL 	 17	2	2	; slot17 = slot17(slot18)
			1507	[  0]	TGETB	 18	15	2	; slot18 = <unknown table>.targetFinalSymbols[2]
			1508	[  0]	TSETV	 18	16	17	; <unknown table>.strip[slot17] = slot18
			1509	[  0]	TGETS	 16	8	37	; slot16 = slot8.strip
			1510	[  0]	MOV  	 17		13	; slot17 = slot13
			1511	[  0]	ADDVN	 19	14	24	; slot19 = slot14 + 2
			1512	[  0]	CALL 	 17	2	2	; slot17 = slot17(slot18)
			1513	[  0]	TGETB	 18	15	3	; slot18 = <unknown table>.targetFinalSymbols[3]
			1514	[  0]	TSETV	 18	16	17	; <unknown table>.strip[slot17] = slot18
			1515	[  0]	TNEW 	 16		4	; slot16 = new table( array: 4, dict: 1)
			1516	[  0]	TGETB	 17	15	1	; slot17 = <unknown table>.targetFinalSymbols[1]
			1517	[  0]	TSETB	 17	16	1	; slot16[1] = slot17
			1518	[  0]	TGETB	 17	15	2	; slot17 = <unknown table>.targetFinalSymbols[2]
			1519	[  0]	TSETB	 17	16	2	; slot16[2] = slot17
			1520	[  0]	TGETB	 17	15	3	; slot17 = <unknown table>.targetFinalSymbols[3]
			1521	[  0]	TSETB	 17	16	3	; slot16[3] = slot17
			1522	[  0]	TSETS	 16	8	152	; slot8.finalSymbols = slot16
			1523	[  0]	TGETS	 16	0	26	; slot16 = slot0.reelStripPos
			1524	[  0]	TSETV	 14	16	7	; <unknown table>.reelStripPos[slot7] = slot14
			1525	[  0]	GGET 	 16		109	; slot16 = _env["math"]
			1526	[  0]	TGETS	 16	16	108	; slot16 = math.max
			1527	[  0]	TGETS	 18	8	25	; slot18 = slot8.sequenceLen
			1528	[  0]	IST  	   		18	; if <unknown table>.sequenceLen
			1529	[  0]	JMP  	 19		1	; 	goto 1531
			1530	[  0]	KSHORT	 18		0	; slot18 = 0
			1531	[  0]	TGETS	 19	8	36	; slot19 = slot8.targetShift
			1532	[  0]	ADDVN	 19	19	25	; slot19 = <unknown table>.targetShift + 3
			1533	[  0]	CALL 	 16	2	3	; slot16 = math.max(slot17, slot18)
			1534	[  0]	TNEW 	 17		0	; slot17 = new table( array: 0, dict: 1)
			1535	[  0]	KSHORT	 18		1	; slot18 = 1
			1536	[  0]	MOV  	 19		16	; slot19 = math.max
			1537	[  0]	KSHORT	 20		1	; slot20 = 1
			1538	[  0]	FORI 	 18		10	; for slot21 = slot18,slot19,slot20 else goto 1549
			1539	[  0]	TGETS	 22	8	37	; slot22 = slot8.strip
			1540	[  0]	MOV  	 23		13	; slot23 = slot13
			1541	[  0]	SUBVN	 25	21	5	; slot25 = slot21 - 1
			1542	[  0]	ADDVV	 25	14	25	; slot25 = slot14 + slot25
			1543	[  0]	TGETS	 26	8	36	; slot26 = slot8.targetShift
			1544	[  0]	SUBVV	 25	25	26	; slot25 = slot25 - <unknown table>.targetShift
			1545	[  0]	CALL 	 23	2	2	; slot23 = slot23(slot24)
			1546	[  0]	TGETV	 22	22	23	; slot22 = <unknown table>.strip[slot23]
			1547	[  0]	TSETV	 22	17	21	; slot17[slot21] = slot22
			1548	[  0]	FORL 	 18		-10	; slot21 = slot21 + slot20; if cmp(slot21, sign slot20,  math.max) goto 1539
			1549	[  0]	TGETS	 18	8	37	; slot18 = slot8.strip
			1550	[  0]	MOV  	 19		13	; slot19 = slot13
			1551	[  0]	TGETS	 21	8	36	; slot21 = slot8.targetShift
			1552	[  0]	SUBVV	 21	14	21	; slot21 = slot14 - <unknown table>.targetShift
			1553	[  0]	SUBVN	 21	21	5	; slot21 = slot21 - 1
			1554	[  0]	CALL 	 19	2	2	; slot19 = slot19(slot20)
			1555	[  0]	TGETV	 18	18	19	; slot18 = <unknown table>.strip[slot19]
			1556	[  0]	TSETB	 18	17	0	; slot17[0] = slot18
			1557	[  0]	TSETS	 17	8	24	; slot8.sequence = slot17
			1558	[  0]	TSETS	 16	8	25	; slot8.sequenceLen = math.max
			1559	[  0]	TGETS	 13	8	23	; slot13 = slot8.hardStop
			1560	[  0]	ISF  	   		13	; if not <unknown table>.hardStop
			1561	[  0]	JMP  	 14		41	; 	goto 1603
			1562	[  0]	TGETS	 13	8	36	; slot13 = slot8.targetShift
			1563	[  0]	IST  	   		13	; if <unknown table>.targetShift
			1564	[  0]	JMP  	 14		1	; 	goto 1566
			1565	[  0]	TGETS	 13	8	41	; slot13 = slot8.pos
			1566	[  0]	TSETS	 13	8	41	; slot8.pos = <unknown table>.pos
			1567	[  0]	KSTR 	 13		34	; slot13 = "settle"
			1568	[  0]	TSETS	 13	8	112	; slot8.state = slot13
			1569	[  0]	KSHORT	 13		0	; slot13 = 0
			1570	[  0]	TSETS	 13	8	163	; slot8.t = slot13
			1571	[  0]	TGETS	 13	8	41	; slot13 = slot8.pos
			1572	[  0]	TSETS	 13	8	33	; slot8.startPos = <unknown table>.pos
			1573	[  0]	KSHORT	 13		0	; slot13 = 0
			1574	[  0]	TSETS	 13	8	43	; slot8.speed = slot13
			1575	[  0]	TGETS	 13	8	147	; slot13 = slot8.hit
			1576	[  0]	IST  	   		13	; if <unknown table>.hit
			1577	[  0]	JMP  	 13		2	; 	goto 1580
			1578	[  0]	TNEW 	 13		0	; slot13 = new table( array: 0, dict: 1)
			1579	[  0]	TSETS	 13	8	147	; slot8.hit = slot13
			1580	[  0]	TGETS	 13	8	147	; slot13 = slot8.hit
			1581	[  0]	KPRI 	 14		2	; slot14 = true
			1582	[  0]	TSETS	 14	13	164	; <unknown table>.hit.active = slot14
			1583	[  0]	TGETS	 13	8	147	; slot13 = slot8.hit
			1584	[  0]	KSHORT	 14		0	; slot14 = 0
			1585	[  0]	TSETS	 14	13	163	; <unknown table>.hit.t = slot14
			1586	[  0]	TGETS	 13	8	147	; slot13 = slot8.hit
			1587	[  0]	KSHORT	 14		0	; slot14 = 0
			1588	[  0]	TSETS	 14	13	144	; <unknown table>.hit.offset = slot14
			1589	[  0]	TGETS	 13	8	147	; slot13 = slot8.hit
			1590	[  0]	KSHORT	 14		1	; slot14 = 1
			1591	[  0]	TSETS	 14	13	143	; <unknown table>.hit.squashX = slot14
			1592	[  0]	TGETS	 13	8	147	; slot13 = slot8.hit
			1593	[  0]	KSHORT	 14		1	; slot14 = 1
			1594	[  0]	TSETS	 14	13	142	; <unknown table>.hit.squashY = slot14
			1595	[  0]	KPRI 	 13		0	; slot13 = nil
			1596	[  0]	TSETS	 13	8	114	; slot8.spinSpark = slot13
			1597	[  0]	UGET 	 13		8	; slot13 = uv8"unknwon"
			1598	[  0]	MOV  	 15		0	; slot15 = slot0
			1599	[  0]	MOV  	 16		8	; slot16 = slot8
			1600	[  0]	MOV  	 17		7	; slot17 = slot7
			1601	[  0]	CALL 	 13	1	4	;  = uv8"unknown"(slot14, slot15, slot16)
			1602	[  0]	JMP  	 13		51	; 	goto 1654
			1603	[  0]	KSTR 	 13		22	; slot13 = "decelerate"
			1604	[  0]	TSETS	 13	8	112	; slot8.state = slot13
			1605	[  0]	KSHORT	 13		0	; slot13 = 0
			1606	[  0]	TSETS	 13	8	163	; slot8.t = slot13
			1607	[  0]	TGETS	 13	8	41	; slot13 = slot8.pos
			1608	[  0]	TSETS	 13	8	33	; slot8.startPos = <unknown table>.pos
			1609	[  0]	TGETS	 13	8	42	; slot13 = slot8.vmax
			1610	[  0]	TSETS	 13	8	43	; slot8.speed = <unknown table>.vmax
			1611	[  0]	GGET 	 13		109	; slot13 = _env["math"]
			1612	[  0]	TGETS	 13	13	108	; slot13 = math.max
			1613	[  0]	KSHORT	 15		0	; slot15 = 0
			1614	[  0]	TGETS	 16	8	36	; slot16 = slot8.targetShift
			1615	[  0]	IST  	   		16	; if <unknown table>.targetShift
			1616	[  0]	JMP  	 17		1	; 	goto 1618
			1617	[  0]	TGETS	 16	8	41	; slot16 = slot8.pos
			1618	[  0]	TGETS	 17	8	41	; slot17 = slot8.pos
			1619	[  0]	SUBVV	 16	16	17	; slot16 = <unknown table>.pos - <unknown table>.pos
			1620	[  0]	CALL 	 13	2	3	; slot13 = math.max(slot14, slot15)
			1621	[  0]	KSHORT	 14		0	; slot14 = 0
			1622	[  0]	ISGT 	 13		14	; if math.max > slot14
			1623	[  0]	JMP  	 14		9	; 	goto 1633
			1624	[  0]	KSTR 	 14		34	; slot14 = "settle"
			1625	[  0]	TSETS	 14	8	112	; slot8.state = slot14
			1626	[  0]	KSHORT	 14		0	; slot14 = 0
			1627	[  0]	TSETS	 14	8	163	; slot8.t = slot14
			1628	[  0]	TGETS	 14	8	41	; slot14 = slot8.pos
			1629	[  0]	TSETS	 14	8	33	; slot8.startPos = <unknown table>.pos
			1630	[  0]	KSHORT	 14		0	; slot14 = 0
			1631	[  0]	TSETS	 14	8	43	; slot8.speed = slot14
			1632	[  0]	JMP  	 14		21	; 	goto 1654
			1633	[  0]	TGETS	 14	8	43	; slot14 = slot8.speed
			1634	[  0]	TGETS	 15	8	43	; slot15 = slot8.speed
			1635	[  0]	MULVV	 14	14	15	; slot14 = <unknown table>.speed * <unknown table>.speed
			1636	[  0]	MULNV	 15	13	24	; slot15 = 2 * math.max
			1637	[  0]	DIVVV	 14	14	15	; slot14 = slot14 / slot15
			1638	[  0]	TSETS	 14	8	21	; slot8.decelAcc = slot14
			1639	[  0]	TGETS	 14	8	21	; slot14 = slot8.decelAcc
			1640	[  0]	ISF  	   		14	; if not <unknown table>.decelAcc
			1641	[  0]	JMP  	 15		4	; 	goto 1646
			1642	[  0]	TGETS	 14	8	21	; slot14 = slot8.decelAcc
			1643	[  0]	KSHORT	 15		0	; slot15 = 0
			1644	[  0]	ISLT 	 15		14	; if slot15 < <unknown table>.decelAcc
			1645	[  0]	JMP  	 14		8	; 	goto 1654
			1646	[  0]	TGETS	 14	8	42	; slot14 = slot8.vmax
			1647	[  0]	GGET 	 15		109	; slot15 = _env["math"]
			1648	[  0]	TGETS	 15	15	108	; slot15 = math.max
			1649	[  0]	KNUM 	 17		18	; slot17 = 0.001
			1650	[  0]	TGETS	 18	8	20	; slot18 = slot8.decelTime
			1651	[  0]	CALL 	 15	2	3	; slot15 = math.max(slot16, slot17)
			1652	[  0]	DIVVV	 14	14	15	; slot14 = <unknown table>.vmax / math.max
			1653	[  0]	TSETS	 14	8	21	; slot8.decelAcc = slot14
			1654	[  0]	KPRI 	  3		1	; slot3 = false
			1655	[  0]	JMP  	  9		274	; 	goto 1930
			1656	[  0]	TGETS	  9	8	112	; slot9 = slot8.state
			1657	[  0]	ISNES	  9		19	; if <unknown table>.state ~= "manual_stop"
			1658	[  0]	JMP  	  9		54	; 	goto 1713
			1659	[  0]	TGETS	  9	8	42	; slot9 = slot8.vmax
			1660	[  0]	TSETS	  9	8	43	; slot8.speed = <unknown table>.vmax
			1661	[  0]	TGETS	  9	8	41	; slot9 = slot8.pos
			1662	[  0]	TGETS	 10	8	43	; slot10 = slot8.speed
			1663	[  0]	MULVV	 10	10	1	; slot10 = <unknown table>.speed * slot1
			1664	[  0]	ADDVV	  9	9	10	; slot9 = <unknown table>.pos + slot10
			1665	[  0]	TSETS	  9	8	41	; slot8.pos = slot9
			1666	[  0]	TGETS	  9	8	41	; slot9 = slot8.pos
			1667	[  0]	TGETS	 10	8	36	; slot10 = slot8.targetShift
			1668	[  0]	IST  	   		10	; if <unknown table>.targetShift
			1669	[  0]	JMP  	 11		1	; 	goto 1671
			1670	[  0]	TGETS	 10	8	41	; slot10 = slot8.pos
			1671	[  0]	ISGT 	 10		9	; if <unknown table>.pos > <unknown table>.pos
			1672	[  0]	JMP  	  9		38	; 	goto 1711
			1673	[  0]	TGETS	  9	8	36	; slot9 = slot8.targetShift
			1674	[  0]	IST  	   		9	; if <unknown table>.targetShift
			1675	[  0]	JMP  	 10		1	; 	goto 1677
			1676	[  0]	TGETS	  9	8	41	; slot9 = slot8.pos
			1677	[  0]	TSETS	  9	8	41	; slot8.pos = <unknown table>.pos
			1678	[  0]	KSHORT	  9		0	; slot9 = 0
			1679	[  0]	TSETS	  9	8	43	; slot8.speed = slot9
			1680	[  0]	KSTR 	  9		34	; slot9 = "settle"
			1681	[  0]	TSETS	  9	8	112	; slot8.state = slot9
			1682	[  0]	KSHORT	  9		0	; slot9 = 0
			1683	[  0]	TSETS	  9	8	163	; slot8.t = slot9
			1684	[  0]	TGETS	  9	8	41	; slot9 = slot8.pos
			1685	[  0]	TSETS	  9	8	33	; slot8.startPos = <unknown table>.pos
			1686	[  0]	TGETS	  9	8	147	; slot9 = slot8.hit
			1687	[  0]	IST  	   		9	; if <unknown table>.hit
			1688	[  0]	JMP  	  9		2	; 	goto 1691
			1689	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
			1690	[  0]	TSETS	  9	8	147	; slot8.hit = slot9
			1691	[  0]	TGETS	  9	8	147	; slot9 = slot8.hit
			1692	[  0]	KPRI 	 10		2	; slot10 = true
			1693	[  0]	TSETS	 10	9	164	; <unknown table>.hit.active = slot10
			1694	[  0]	TGETS	  9	8	147	; slot9 = slot8.hit
			1695	[  0]	KSHORT	 10		0	; slot10 = 0
			1696	[  0]	TSETS	 10	9	163	; <unknown table>.hit.t = slot10
			1697	[  0]	TGETS	  9	8	147	; slot9 = slot8.hit
			1698	[  0]	KSHORT	 10		0	; slot10 = 0
			1699	[  0]	TSETS	 10	9	144	; <unknown table>.hit.offset = slot10
			1700	[  0]	TGETS	  9	8	147	; slot9 = slot8.hit
			1701	[  0]	KSHORT	 10		1	; slot10 = 1
			1702	[  0]	TSETS	 10	9	143	; <unknown table>.hit.squashX = slot10
			1703	[  0]	TGETS	  9	8	147	; slot9 = slot8.hit
			1704	[  0]	KSHORT	 10		1	; slot10 = 1
			1705	[  0]	TSETS	 10	9	142	; <unknown table>.hit.squashY = slot10
			1706	[  0]	UGET 	  9		8	; slot9 = uv8"unknwon"
			1707	[  0]	MOV  	 11		0	; slot11 = slot0
			1708	[  0]	MOV  	 12		8	; slot12 = slot8
			1709	[  0]	MOV  	 13		7	; slot13 = slot7
			1710	[  0]	CALL 	  9	1	4	;  = uv8"unknown"(slot10, slot11, slot12)
			1711	[  0]	KPRI 	  3		1	; slot3 = false
			1712	[  0]	JMP  	  9		217	; 	goto 1930
			1713	[  0]	TGETS	  9	8	112	; slot9 = slot8.state
			1714	[  0]	ISNES	  9		22	; if <unknown table>.state ~= "decelerate"
			1715	[  0]	JMP  	  9		134	; 	goto 1850
			1716	[  0]	TGETS	  9	8	21	; slot9 = slot8.decelAcc
			1717	[  0]	IST  	   		9	; if <unknown table>.decelAcc
			1718	[  0]	JMP  	 10		7	; 	goto 1726
			1719	[  0]	TGETS	  9	8	42	; slot9 = slot8.vmax
			1720	[  0]	GGET 	 10		109	; slot10 = _env["math"]
			1721	[  0]	TGETS	 10	10	108	; slot10 = math.max
			1722	[  0]	KNUM 	 12		18	; slot12 = 0.001
			1723	[  0]	TGETS	 13	8	20	; slot13 = slot8.decelTime
			1724	[  0]	CALL 	 10	2	3	; slot10 = math.max(slot11, slot12)
			1725	[  0]	DIVVV	  9	9	10	; slot9 = <unknown table>.vmax / math.max
			1726	[  0]	TGETS	 10	8	43	; slot10 = slot8.speed
			1727	[  0]	MULVV	 10	10	1	; slot10 = <unknown table>.speed * slot1
			1728	[  0]	MULNV	 11	9	12	; slot11 = 0.5 * slot9
			1729	[  0]	MULVV	 11	11	1	; slot11 = slot11 * slot1
			1730	[  0]	MULVV	 11	11	1	; slot11 = slot11 * slot1
			1731	[  0]	SUBVV	 10	10	11	; slot10 = slot10 - slot11
			1732	[  0]	KSHORT	 11		0	; slot11 = 0
			1733	[  0]	ISGE 	 10		11	; if slot10 >= slot11
			1734	[  0]	JMP  	 11		1	; 	goto 1736
			1735	[  0]	KSHORT	 10		0	; slot10 = 0
			1736	[  0]	TGETS	 11	8	41	; slot11 = slot8.pos
			1737	[  0]	ADDVV	 11	11	10	; slot11 = <unknown table>.pos + slot10
			1738	[  0]	TSETS	 11	8	41	; slot8.pos = slot11
			1739	[  0]	TGETS	 11	8	43	; slot11 = slot8.speed
			1740	[  0]	MULVV	 12	9	1	; slot12 = slot9 * slot1
			1741	[  0]	SUBVV	 11	11	12	; slot11 = <unknown table>.speed - slot12
			1742	[  0]	TSETS	 11	8	43	; slot8.speed = slot11
			1743	[  0]	TGETS	 11	8	36	; slot11 = slot8.targetShift
			1744	[  0]	IST  	   		11	; if <unknown table>.targetShift
			1745	[  0]	JMP  	 12		1	; 	goto 1747
			1746	[  0]	TGETS	 11	8	41	; slot11 = slot8.pos
			1747	[  0]	TGETS	 12	8	36	; slot12 = slot8.targetShift
			1748	[  0]	IST  	   		12	; if <unknown table>.targetShift
			1749	[  0]	JMP  	 13		1	; 	goto 1751
			1750	[  0]	TGETS	 12	8	41	; slot12 = slot8.pos
			1751	[  0]	TGETS	 13	8	41	; slot13 = slot8.pos
			1752	[  0]	SUBVV	 12	12	13	; slot12 = <unknown table>.pos - <unknown table>.pos
			1753	[  0]	KNUM 	 13		8	; slot13 = 0.15
			1754	[  0]	ISGT 	 12		13	; if slot12 > slot13
			1755	[  0]	JMP  	 13		38	; 	goto 1794
			1756	[  0]	TGETS	 13	8	147	; slot13 = slot8.hit
			1757	[  0]	IST  	   		13	; if <unknown table>.hit
			1758	[  0]	JMP  	 13		2	; 	goto 1761
			1759	[  0]	TNEW 	 13		0	; slot13 = new table( array: 0, dict: 1)
			1760	[  0]	TSETS	 13	8	147	; slot8.hit = slot13
			1761	[  0]	TGETS	 13	8	147	; slot13 = slot8.hit
			1762	[  0]	TGETS	 13	13	164	; slot13 = <unknown table>.hit.active
			1763	[  0]	IST  	   		13	; if <unknown table>.hit.active
			1764	[  0]	JMP  	 13		29	; 	goto 1794
			1765	[  0]	TGETS	 13	8	147	; slot13 = slot8.hit
			1766	[  0]	KPRI 	 14		2	; slot14 = true
			1767	[  0]	TSETS	 14	13	164	; <unknown table>.hit.active = slot14
			1768	[  0]	TGETS	 13	8	147	; slot13 = slot8.hit
			1769	[  0]	KSHORT	 14		0	; slot14 = 0
			1770	[  0]	TSETS	 14	13	163	; <unknown table>.hit.t = slot14
			1771	[  0]	TGETS	 13	8	147	; slot13 = slot8.hit
			1772	[  0]	TGETS	 14	8	147	; slot14 = slot8.hit
			1773	[  0]	TGETS	 14	14	146	; slot14 = <unknown table>.hit.dur
			1774	[  0]	IST  	   		14	; if <unknown table>.hit.dur
			1775	[  0]	JMP  	 15		1	; 	goto 1777
			1776	[  0]	KNUM 	 14		12	; slot14 = 0.5
			1777	[  0]	TSETS	 14	13	146	; <unknown table>.hit.dur = slot14
			1778	[  0]	TGETS	 13	8	147	; slot13 = slot8.hit
			1779	[  0]	TGETS	 14	8	147	; slot14 = slot8.hit
			1780	[  0]	TGETS	 14	14	145	; slot14 = <unknown table>.hit.amp
			1781	[  0]	IST  	   		14	; if <unknown table>.hit.amp
			1782	[  0]	JMP  	 15		1	; 	goto 1784
			1783	[  0]	KNUM 	 14		11	; slot14 = 0.2
			1784	[  0]	TSETS	 14	13	145	; <unknown table>.hit.amp = slot14
			1785	[  0]	TGETS	 13	8	147	; slot13 = slot8.hit
			1786	[  0]	KSHORT	 14		0	; slot14 = 0
			1787	[  0]	TSETS	 14	13	144	; <unknown table>.hit.offset = slot14
			1788	[  0]	TGETS	 13	8	147	; slot13 = slot8.hit
			1789	[  0]	KSHORT	 14		1	; slot14 = 1
			1790	[  0]	TSETS	 14	13	143	; <unknown table>.hit.squashX = slot14
			1791	[  0]	TGETS	 13	8	147	; slot13 = slot8.hit
			1792	[  0]	KSHORT	 14		1	; slot14 = 1
			1793	[  0]	TSETS	 14	13	142	; <unknown table>.hit.squashY = slot14
			1794	[  0]	TGETS	 12	8	43	; slot12 = slot8.speed
			1795	[  0]	KSHORT	 13		0	; slot13 = 0
			1796	[  0]	ISLE 	 12		13	; if <unknown table>.speed <= slot13
			1797	[  0]	JMP  	 12		3	; 	goto 1801
			1798	[  0]	TGETS	 12	8	41	; slot12 = slot8.pos
			1799	[  0]	ISGT 	 11		12	; if <unknown table>.pos > <unknown table>.pos
			1800	[  0]	JMP  	 12		47	; 	goto 1848
			1801	[  0]	TGETS	 12	8	41	; slot12 = slot8.pos
			1802	[  0]	ISGE 	 11		12	; if <unknown table>.pos >= <unknown table>.pos
			1803	[  0]	JMP  	 12		1	; 	goto 1805
			1804	[  0]	TSETS	 11	8	41	; slot8.pos = <unknown table>.pos
			1805	[  0]	KSHORT	 12		0	; slot12 = 0
			1806	[  0]	TSETS	 12	8	43	; slot8.speed = slot12
			1807	[  0]	KSTR 	 12		34	; slot12 = "settle"
			1808	[  0]	TSETS	 12	8	112	; slot8.state = slot12
			1809	[  0]	KSHORT	 12		0	; slot12 = 0
			1810	[  0]	TSETS	 12	8	163	; slot8.t = slot12
			1811	[  0]	TGETS	 12	8	41	; slot12 = slot8.pos
			1812	[  0]	TSETS	 12	8	33	; slot8.startPos = <unknown table>.pos
			1813	[  0]	UGET 	 12		8	; slot12 = uv8"unknwon"
			1814	[  0]	MOV  	 14		0	; slot14 = slot0
			1815	[  0]	MOV  	 15		8	; slot15 = slot8
			1816	[  0]	MOV  	 16		7	; slot16 = slot7
			1817	[  0]	CALL 	 12	1	4	;  = uv8"unknown"(slot13, slot14, slot15)
			1818	[  0]	TGETS	 12	8	147	; slot12 = slot8.hit
			1819	[  0]	IST  	   		12	; if <unknown table>.hit
			1820	[  0]	JMP  	 12		2	; 	goto 1823
			1821	[  0]	TNEW 	 12		0	; slot12 = new table( array: 0, dict: 1)
			1822	[  0]	TSETS	 12	8	147	; slot8.hit = slot12
			1823	[  0]	TGETS	 12	8	147	; slot12 = slot8.hit
			1824	[  0]	TGETS	 12	12	164	; slot12 = <unknown table>.hit.active
			1825	[  0]	IST  	   		12	; if <unknown table>.hit.active
			1826	[  0]	JMP  	 12		21	; 	goto 1848
			1827	[  0]	TGETS	 12	8	147	; slot12 = slot8.hit
			1828	[  0]	KPRI 	 13		2	; slot13 = true
			1829	[  0]	TSETS	 13	12	164	; <unknown table>.hit.active = slot13
			1830	[  0]	TGETS	 12	8	147	; slot12 = slot8.hit
			1831	[  0]	KSHORT	 13		0	; slot13 = 0
			1832	[  0]	TSETS	 13	12	163	; <unknown table>.hit.t = slot13
			1833	[  0]	TGETS	 12	8	147	; slot12 = slot8.hit
			1834	[  0]	KNUM 	 13		12	; slot13 = 0.5
			1835	[  0]	TSETS	 13	12	146	; <unknown table>.hit.dur = slot13
			1836	[  0]	TGETS	 12	8	147	; slot12 = slot8.hit
			1837	[  0]	KNUM 	 13		11	; slot13 = 0.2
			1838	[  0]	TSETS	 13	12	145	; <unknown table>.hit.amp = slot13
			1839	[  0]	TGETS	 12	8	147	; slot12 = slot8.hit
			1840	[  0]	KSHORT	 13		0	; slot13 = 0
			1841	[  0]	TSETS	 13	12	144	; <unknown table>.hit.offset = slot13
			1842	[  0]	TGETS	 12	8	147	; slot12 = slot8.hit
			1843	[  0]	KSHORT	 13		1	; slot13 = 1
			1844	[  0]	TSETS	 13	12	143	; <unknown table>.hit.squashX = slot13
			1845	[  0]	TGETS	 12	8	147	; slot12 = slot8.hit
			1846	[  0]	KSHORT	 13		1	; slot13 = 1
			1847	[  0]	TSETS	 13	12	142	; <unknown table>.hit.squashY = slot13
			1848	[  0]	KPRI 	  3		1	; slot3 = false
			1849	[  0]	JMP  	  9		80	; 	goto 1930
			1850	[  0]	TGETS	  9	8	112	; slot9 = slot8.state
			1851	[  0]	ISNES	  9		34	; if <unknown table>.state ~= "settle"
			1852	[  0]	JMP  	  9		77	; 	goto 1930
			1853	[  0]	TGETS	  9	8	163	; slot9 = slot8.t
			1854	[  0]	ADDVV	  9	9	1	; slot9 = <unknown table>.t + slot1
			1855	[  0]	TSETS	  9	8	163	; slot8.t = slot9
			1856	[  0]	GGET 	  9		109	; slot9 = _env["math"]
			1857	[  0]	TGETS	  9	9	107	; slot9 = math.min
			1858	[  0]	KSHORT	 11		1	; slot11 = 1
			1859	[  0]	TGETS	 12	8	163	; slot12 = slot8.t
			1860	[  0]	TGETS	 13	8	18	; slot13 = slot8.settleTime
			1861	[  0]	DIVVV	 12	12	13	; slot12 = <unknown table>.t / <unknown table>.settleTime
			1862	[  0]	CALL 	  9	2	3	; slot9 = math.min(slot10, slot11)
			1863	[  0]	UGET 	 10		9	; slot10 = uv9"unknwon"
			1864	[  0]	MOV  	 12		9	; slot12 = math.min
			1865	[  0]	CALL 	 10	2	2	; slot10 = uv9"unknown"(slot11)
			1866	[  0]	TGETS	 11	8	36	; slot11 = slot8.targetShift
			1867	[  0]	IST  	   		11	; if <unknown table>.targetShift
			1868	[  0]	JMP  	 12		1	; 	goto 1870
			1869	[  0]	TGETS	 11	8	33	; slot11 = slot8.startPos
			1870	[  0]	TGETS	 12	8	33	; slot12 = slot8.startPos
			1871	[  0]	TGETS	 13	8	33	; slot13 = slot8.startPos
			1872	[  0]	SUBVV	 13	11	13	; slot13 = <unknown table>.startPos - <unknown table>.startPos
			1873	[  0]	MULVV	 13	13	10	; slot13 = slot13 * uv9"unknown"
			1874	[  0]	ADDVV	 12	12	13	; slot12 = <unknown table>.startPos + slot13
			1875	[  0]	TSETS	 12	8	41	; slot8.pos = slot12
			1876	[  0]	KSHORT	 12		1	; slot12 = 1
			1877	[  0]	ISGT 	 12		9	; if slot12 > math.min
			1878	[  0]	JMP  	 12		50	; 	goto 1929
			1879	[  0]	TSETS	 11	8	41	; slot8.pos = <unknown table>.startPos
			1880	[  0]	KSTR 	 12		17	; slot12 = "stopped"
			1881	[  0]	TSETS	 12	8	112	; slot8.state = slot12
			1882	[  0]	KPRI 	 12		1	; slot12 = false
			1883	[  0]	TSETS	 12	8	113	; slot8.spinning = slot12
			1884	[  0]	UGET 	 12		8	; slot12 = uv8"unknwon"
			1885	[  0]	MOV  	 14		0	; slot14 = slot0
			1886	[  0]	MOV  	 15		8	; slot15 = slot8
			1887	[  0]	MOV  	 16		7	; slot16 = slot7
			1888	[  0]	CALL 	 12	1	4	;  = uv8"unknown"(slot13, slot14, slot15)
			1889	[  0]	TGETS	 12	8	37	; slot12 = slot8.strip
			1890	[  0]	ISF  	   		12	; if not <unknown table>.strip
			1891	[  0]	JMP  	 13		37	; 	goto 1929
			1892	[  0]	TGETS	 12	8	29	; slot12 = slot8.stripLen
			1893	[  0]	ISF  	   		12	; if not <unknown table>.stripLen
			1894	[  0]	JMP  	 13		34	; 	goto 1929
			1895	[  0]	TGETS	 12	8	38	; slot12 = slot8.stripStart
			1896	[  0]	ISF  	   		12	; if not <unknown table>.stripStart
			1897	[  0]	JMP  	 13		31	; 	goto 1929
			1898	[  0]	FNEW 	 12		16	; N/A:0-0: 1 args, 1 upvalues, 3 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	SUBVN	  1	0	0	; slot1 = slot0 - 1
				  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
				  3	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".stripLen
				  4	[  0]	MODVV	  1	1	2	; slot1 = slot1 % uv0"unknown".stripLen
				  5	[  0]	ADDVN	  1	1	0	; slot1 = slot1 + 1
				  6	[  0]	RET1 	  1		2	; return slot1
			1899	[  0]	MOV  	 13		11	; slot13 = <unknown table>.startPos
			1900	[  0]	SUBNV	 14	13	5	; slot14 = 1 - <unknown table>.startPos
			1901	[  0]	SUBNV	 15	13	24	; slot15 = 2 - <unknown table>.startPos
			1902	[  0]	SUBNV	 16	13	25	; slot16 = 3 - <unknown table>.startPos
			1903	[  0]	TNEW 	 17		4	; slot17 = new table( array: 4, dict: 1)
			1904	[  0]	TGETS	 18	8	37	; slot18 = slot8.strip
			1905	[  0]	MOV  	 19		12	; slot19 = slot12
			1906	[  0]	TGETS	 21	8	38	; slot21 = slot8.stripStart
			1907	[  0]	SUBVN	 22	14	5	; slot22 = slot14 - 1
			1908	[  0]	ADDVV	 21	21	22	; slot21 = <unknown table>.stripStart + slot22
			1909	[  0]	CALL 	 19	2	2	; slot19 = slot19(slot20)
			1910	[  0]	TGETV	 18	18	19	; slot18 = <unknown table>.strip[slot19]
			1911	[  0]	TSETB	 18	17	1	; slot17[1] = slot18
			1912	[  0]	TGETS	 18	8	37	; slot18 = slot8.strip
			1913	[  0]	MOV  	 19		12	; slot19 = slot12
			1914	[  0]	TGETS	 21	8	38	; slot21 = slot8.stripStart
			1915	[  0]	SUBVN	 22	15	5	; slot22 = slot15 - 1
			1916	[  0]	ADDVV	 21	21	22	; slot21 = <unknown table>.stripStart + slot22
			1917	[  0]	CALL 	 19	2	2	; slot19 = slot19(slot20)
			1918	[  0]	TGETV	 18	18	19	; slot18 = <unknown table>.strip[slot19]
			1919	[  0]	TSETB	 18	17	2	; slot17[2] = slot18
			1920	[  0]	TGETS	 18	8	37	; slot18 = slot8.strip
			1921	[  0]	MOV  	 19		12	; slot19 = slot12
			1922	[  0]	TGETS	 21	8	38	; slot21 = slot8.stripStart
			1923	[  0]	SUBVN	 22	16	5	; slot22 = slot16 - 1
			1924	[  0]	ADDVV	 21	21	22	; slot21 = <unknown table>.stripStart + slot22
			1925	[  0]	CALL 	 19	2	2	; slot19 = slot19(slot20)
			1926	[  0]	TGETV	 18	18	19	; slot18 = <unknown table>.strip[slot19]
			1927	[  0]	TSETB	 18	17	3	; slot17[3] = slot18
			1928	[  0]	TSETS	 17	8	152	; slot8.finalSymbols = slot17
			1929	[  0]	KPRI 	  3		1	; slot3 = false
			1930	[  0]	UCLO 	  8		0	; nil uvs >= r8; goto 1931
			1931	[  0]	FORL 	  4		-593	; slot7 = slot7 + slot6; if cmp(slot7, sign slot6,  slot5) goto 1339
			1932	[  0]	ISF  	   		3	; if not slot3
			1933	[  0]	JMP  	  4		301	; 	goto 2235
			1934	[  0]	TGETS	  4	0	56	; slot4 = slot0.spin
			1935	[  0]	KPRI 	  5		1	; slot5 = false
			1936	[  0]	TSETS	  5	4	164	; <unknown table>.spin.active = slot5
			1937	[  0]	TGETS	  4	0	156	; slot4 = slot0.ui
			1938	[  0]	TGETS	  4	4	155	; slot4 = <unknown table>.ui.slot
			1939	[  0]	TGETS	  4	4	15	; slot4 = <unknown table>.ui.slot.rows
			1940	[  0]	TGETS	  5	0	156	; slot5 = slot0.ui
			1941	[  0]	TGETS	  5	5	155	; slot5 = <unknown table>.ui.slot
			1942	[  0]	TGETS	  5	5	154	; slot5 = <unknown table>.ui.slot.cols
			1943	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
			1944	[  0]	KSHORT	  7		1	; slot7 = 1
			1945	[  0]	MOV  	  8		4	; slot8 = <unknown table>.ui.slot.rows
			1946	[  0]	KSHORT	  9		1	; slot9 = 1
			1947	[  0]	FORI 	  7		3	; for uv9"unknown" = slot7,slot8,slot9 else goto 1951
			1948	[  0]	TNEW 	 11		0	; slot11 = new table( array: 0, dict: 1)
			1949	[  0]	TSETV	 11	6	10	; slot6[uv9"unknown"] = slot11
			1950	[  0]	FORL 	  7		-3	; uv9"unknown" = uv9"unknown" + slot9; if cmp(uv9"unknown", sign slot9,  <unknown table>.ui.slot.rows) goto 1948
			1951	[  0]	KSHORT	  7		1	; slot7 = 1
			1952	[  0]	MOV  	  8		5	; slot8 = <unknown table>.ui.slot.cols
			1953	[  0]	KSHORT	  9		1	; slot9 = 1
			1954	[  0]	FORI 	  7		92	; for uv9"unknown" = slot7,slot8,slot9 else goto 2047
			1955	[  0]	TGETS	 11	0	153	; slot11 = slot0.reels
			1956	[  0]	TGETV	 11	11	10	; slot11 = <unknown table>.reels[slot10]
			1957	[  0]	ISF  	   		11	; if not slot11
			1958	[  0]	JMP  	 12		16	; 	goto 1975
			1959	[  0]	TGETS	 12	11	152	; slot12 = slot11.finalSymbols
			1960	[  0]	ISF  	   		12	; if not <unknown table>.finalSymbols
			1961	[  0]	JMP  	 13		13	; 	goto 1975
			1962	[  0]	TGETB	 12	6	1	; slot12 = slot6[1]
			1963	[  0]	TGETS	 13	11	152	; slot13 = slot11.finalSymbols
			1964	[  0]	TGETB	 13	13	1	; slot13 = <unknown table>.finalSymbols[1]
			1965	[  0]	TSETV	 13	12	10	; slot12[slot10] = slot13
			1966	[  0]	TGETB	 12	6	2	; slot12 = slot6[2]
			1967	[  0]	TGETS	 13	11	152	; slot13 = slot11.finalSymbols
			1968	[  0]	TGETB	 13	13	2	; slot13 = <unknown table>.finalSymbols[2]
			1969	[  0]	TSETV	 13	12	10	; slot12[slot10] = slot13
			1970	[  0]	TGETB	 12	6	3	; slot12 = slot6[3]
			1971	[  0]	TGETS	 13	11	152	; slot13 = slot11.finalSymbols
			1972	[  0]	TGETB	 13	13	3	; slot13 = <unknown table>.finalSymbols[3]
			1973	[  0]	TSETV	 13	12	10	; slot12[slot10] = slot13
			1974	[  0]	JMP  	 12		71	; 	goto 2046
			1975	[  0]	ISF  	   		11	; if not slot11
			1976	[  0]	JMP  	 12		39	; 	goto 2016
			1977	[  0]	TGETS	 12	11	37	; slot12 = slot11.strip
			1978	[  0]	ISF  	   		12	; if not <unknown table>.strip
			1979	[  0]	JMP  	 13		36	; 	goto 2016
			1980	[  0]	TGETS	 12	11	29	; slot12 = slot11.stripLen
			1981	[  0]	ISF  	   		12	; if not <unknown table>.stripLen
			1982	[  0]	JMP  	 13		33	; 	goto 2016
			1983	[  0]	TGETS	 12	0	26	; slot12 = slot0.reelStripPos
			1984	[  0]	ISF  	   		12	; if not <unknown table>.reelStripPos
			1985	[  0]	JMP  	 13		30	; 	goto 2016
			1986	[  0]	TGETS	 12	0	26	; slot12 = slot0.reelStripPos
			1987	[  0]	TGETV	 12	12	10	; slot12 = <unknown table>.reelStripPos[slot10]
			1988	[  0]	ISF  	   		12	; if not slot12
			1989	[  0]	JMP  	 13		26	; 	goto 2016
			1990	[  0]	TGETS	 12	11	29	; slot12 = slot11.stripLen
			1991	[  0]	FNEW 	 13		14	; N/A:0-0: 1 args, 1 upvalues, 3 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	SUBVN	  1	0	0	; slot1 = slot0 - 1
				  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
				  3	[  0]	MODVV	  1	1	2	; slot1 = slot1 % uv0"unknown"
				  4	[  0]	ADDVN	  1	1	0	; slot1 = slot1 + 1
				  5	[  0]	RET1 	  1		2	; return slot1
			1992	[  0]	TGETS	 14	0	26	; slot14 = slot0.reelStripPos
			1993	[  0]	TGETV	 14	14	10	; slot14 = <unknown table>.reelStripPos[slot10]
			1994	[  0]	TGETB	 15	6	1	; slot15 = slot6[1]
			1995	[  0]	TGETS	 16	11	37	; slot16 = slot11.strip
			1996	[  0]	MOV  	 17		13	; slot17 = slot13
			1997	[  0]	MOV  	 19		14	; slot19 = slot14
			1998	[  0]	CALL 	 17	2	2	; slot17 = slot17(slot18)
			1999	[  0]	TGETV	 16	16	17	; slot16 = <unknown table>.strip[slot17]
			2000	[  0]	TSETV	 16	15	10	; slot15[slot10] = slot16
			2001	[  0]	TGETB	 15	6	2	; slot15 = slot6[2]
			2002	[  0]	TGETS	 16	11	37	; slot16 = slot11.strip
			2003	[  0]	MOV  	 17		13	; slot17 = slot13
			2004	[  0]	ADDVN	 19	14	5	; slot19 = slot14 + 1
			2005	[  0]	CALL 	 17	2	2	; slot17 = slot17(slot18)
			2006	[  0]	TGETV	 16	16	17	; slot16 = <unknown table>.strip[slot17]
			2007	[  0]	TSETV	 16	15	10	; slot15[slot10] = slot16
			2008	[  0]	TGETB	 15	6	3	; slot15 = slot6[3]
			2009	[  0]	TGETS	 16	11	37	; slot16 = slot11.strip
			2010	[  0]	MOV  	 17		13	; slot17 = slot13
			2011	[  0]	ADDVN	 19	14	24	; slot19 = slot14 + 2
			2012	[  0]	CALL 	 17	2	2	; slot17 = slot17(slot18)
			2013	[  0]	TGETV	 16	16	17	; slot16 = <unknown table>.strip[slot17]
			2014	[  0]	TSETV	 16	15	10	; slot15[slot10] = slot16
			2015	[  0]	UCLO 	 12		30	; nil uvs >= r12; goto 2046
			2016	[  0]	TGETS	 12	0	13	; slot12 = slot0.pendingGrid
			2017	[  0]	ISF  	   		12	; if not <unknown table>.pendingGrid
			2018	[  0]	JMP  	 13		27	; 	goto 2046
			2019	[  0]	TGETB	 12	6	1	; slot12 = slot6[1]
			2020	[  0]	TGETS	 13	0	13	; slot13 = slot0.pendingGrid
			2021	[  0]	TGETB	 13	13	1	; slot13 = <unknown table>.pendingGrid[1]
			2022	[  0]	ISF  	   		13	; if not slot13
			2023	[  0]	JMP  	 14		3	; 	goto 2027
			2024	[  0]	TGETS	 13	0	13	; slot13 = slot0.pendingGrid
			2025	[  0]	TGETB	 13	13	1	; slot13 = <unknown table>.pendingGrid[1]
			2026	[  0]	TGETV	 13	13	10	; slot13 = slot13[slot10]
			2027	[  0]	TSETV	 13	12	10	; slot12[slot10] = slot13
			2028	[  0]	TGETB	 12	6	2	; slot12 = slot6[2]
			2029	[  0]	TGETS	 13	0	13	; slot13 = slot0.pendingGrid
			2030	[  0]	TGETB	 13	13	2	; slot13 = <unknown table>.pendingGrid[2]
			2031	[  0]	ISF  	   		13	; if not slot13
			2032	[  0]	JMP  	 14		3	; 	goto 2036
			2033	[  0]	TGETS	 13	0	13	; slot13 = slot0.pendingGrid
			2034	[  0]	TGETB	 13	13	2	; slot13 = <unknown table>.pendingGrid[2]
			2035	[  0]	TGETV	 13	13	10	; slot13 = slot13[slot10]
			2036	[  0]	TSETV	 13	12	10	; slot12[slot10] = slot13
			2037	[  0]	TGETB	 12	6	3	; slot12 = slot6[3]
			2038	[  0]	TGETS	 13	0	13	; slot13 = slot0.pendingGrid
			2039	[  0]	TGETB	 13	13	3	; slot13 = <unknown table>.pendingGrid[3]
			2040	[  0]	ISF  	   		13	; if not slot13
			2041	[  0]	JMP  	 14		3	; 	goto 2045
			2042	[  0]	TGETS	 13	0	13	; slot13 = slot0.pendingGrid
			2043	[  0]	TGETB	 13	13	3	; slot13 = <unknown table>.pendingGrid[3]
			2044	[  0]	TGETV	 13	13	10	; slot13 = slot13[slot10]
			2045	[  0]	TSETV	 13	12	10	; slot12[slot10] = slot13
			2046	[  0]	FORL 	  7		-92	; slot10 = slot10 + slot9; if cmp(slot10, sign slot9,  slot8) goto 1955
			2047	[  0]	TSETS	  6	0	158	; slot0.grid = slot6
			2048	[  0]	KPRI 	  7		0	; slot7 = nil
			2049	[  0]	TSETS	  7	0	13	; slot0.pendingGrid = slot7
			2050	[  0]	KSHORT	  4		1	; slot4 = 1
			2051	[  0]	TGETS	  5	0	156	; slot5 = slot0.ui
			2052	[  0]	TGETS	  5	5	155	; slot5 = <unknown table>.ui.slot
			2053	[  0]	TGETS	  5	5	154	; slot5 = <unknown table>.ui.slot.cols
			2054	[  0]	KSHORT	  6		1	; slot6 = 1
			2055	[  0]	FORI 	  4		13	; for slot7 = slot4,slot5,slot6 else goto 2069
			2056	[  0]	TGETS	  8	0	153	; slot8 = slot0.reels
			2057	[  0]	TGETV	  8	8	7	; slot8 = <unknown table>.reels[slot7]
			2058	[  0]	ISF  	   		8	; if not slot8
			2059	[  0]	JMP  	  9		8	; 	goto 2068
			2060	[  0]	KPRI 	  9		0	; slot9 = nil
			2061	[  0]	TSETS	  9	8	24	; slot8.sequence = slot9
			2062	[  0]	KPRI 	  9		0	; slot9 = nil
			2063	[  0]	TSETS	  9	8	25	; slot8.sequenceLen = slot9
			2064	[  0]	KSHORT	  9		0	; slot9 = 0
			2065	[  0]	TSETS	  9	8	41	; slot8.pos = slot9
			2066	[  0]	KSHORT	  9		0	; slot9 = 0
			2067	[  0]	TSETS	  9	8	43	; slot8.speed = slot9
			2068	[  0]	FORL 	  4		-13	; slot7 = slot7 + slot6; if cmp(slot7, sign slot6,  slot5) goto 2056
			2069	[  0]	TGETS	  4	0	169	; slot4 = slot0.result
			2070	[  0]	TGETS	  4	4	95	; slot4 = <unknown table>.result.checked
			2071	[  0]	IST  	   		4	; if <unknown table>.result.checked
			2072	[  0]	JMP  	  4		129	; 	goto 2202
			2073	[  0]	TGETS	  4	0	53	; slot4 = slot0._singleReelRespin
			2074	[  0]	MOV  	  7		0	; slot7 = slot0
			2075	[  0]	TGETS	  5	0	64	; slot5 = slot0.evaluateWin
			2076	[  0]	CALL 	  5	1	2	;  = <unknown table>.evaluateWin(slot6)
			2077	[  0]	ISF  	   		4	; if not <unknown table>._singleReelRespin
			2078	[  0]	JMP  	  5		11	; 	goto 2090
			2079	[  0]	TGETS	  5	4	12	; slot5 = <unknown table>._singleReelRespin.coreKey
			2080	[  0]	ISNES	  5		11	; if <unknown table>._singleReelRespin.coreKey ~= "LuckyNail"
			2081	[  0]	JMP  	  5		8	; 	goto 2090
			2082	[  0]	TGETS	  5	0	169	; slot5 = slot0.result
			2083	[  0]	KPRI 	  6		2	; slot6 = true
			2084	[  0]	TSETS	  6	5	10	; <unknown table>.result._luckyNailResolved = slot6
			2085	[  0]	TGETS	  5	0	169	; slot5 = slot0.result
			2086	[  0]	KPRI 	  6		2	; slot6 = true
			2087	[  0]	TSETS	  6	5	9	; <unknown table>.result._luckyNailRespin = slot6
			2088	[  0]	KPRI 	  5		0	; slot5 = nil
			2089	[  0]	TSETS	  5	0	48	; slot0._luckyNail = slot5
			2090	[  0]	ISF  	   		4	; if not <unknown table>._singleReelRespin
			2091	[  0]	JMP  	  5		24	; 	goto 2116
			2092	[  0]	TGETS	  5	4	8	; slot5 = <unknown table>._singleReelRespin.newWinsOnly
			2093	[  0]	ISF  	   		5	; if not <unknown table>._singleReelRespin.newWinsOnly
			2094	[  0]	JMP  	  6		21	; 	goto 2116
			2095	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
			2096	[  0]	GGET 	  6		134	; slot6 = _env["ipairs"]
			2097	[  0]	TGETS	  8	0	169	; slot8 = slot0.result
			2098	[  0]	TGETS	  8	8	127	; slot8 = <unknown table>.result.winningLines
			2099	[  0]	IST  	   		8	; if <unknown table>.result.winningLines
			2100	[  0]	JMP  	  9		1	; 	goto 2102
			2101	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
			2102	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
			2103	[  0]	JMP  	  9		5	; 	goto 2109
			2104	[  0]	GGET 	 11		131	; slot11 = _env["table"]
			2105	[  0]	TGETS	 11	11	130	; slot11 = table.insert
			2106	[  0]	MOV  	 13		5	; slot13 = slot5
			2107	[  0]	MOV  	 14		10	; slot14 = slot10
			2108	[  0]	CALL 	 11	1	3	;  = table.insert(slot12, slot13)
			2109	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, slot8; slot9, slot10 = ipairs(slot7, slot8)
			2110	[  0]	ITERL	  9		-7	; slot8 = slot9; if slot9 != nil goto 2104
			2111	[  0]	TGETS	  6	0	169	; slot6 = slot0.result
			2112	[  0]	TSETS	  5	6	126	; <unknown table>.result.newWinningLines = slot5
			2113	[  0]	TGETS	  6	0	169	; slot6 = slot0.result
			2114	[  0]	KPRI 	  7		2	; slot7 = true
			2115	[  0]	TSETS	  7	6	7	; <unknown table>.result._twinCherriesApplied = slot7
			2116	[  0]	TGETS	  5	0	6	; slot5 = slot0._preRevealOutcomeMeta
			2117	[  0]	ISF  	   		5	; if not <unknown table>._preRevealOutcomeMeta
			2118	[  0]	JMP  	  6		10	; 	goto 2129
			2119	[  0]	GGET 	  5		96	; slot5 = _env["pairs"]
			2120	[  0]	TGETS	  7	0	6	; slot7 = slot0._preRevealOutcomeMeta
			2121	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = pairs(<unknown table>.result)
			2122	[  0]	ISNEXT	  8		2	; Verify ITERN at 2125; goto 2125
			2123	[  0]	TGETS	 10	0	169	; slot10 = slot0.result
			2124	[  0]	TSETV	  9	10	8	; <unknown table>.result[slot8] = slot9
			2125	[  0]	ITERN	  8	3	3	; slot8, slot9, slot10 = pairs, <unknown table>.result, <unknown table>._preRevealOutcomeMeta; slot8, slot9 = pairs(<unknown table>.result, <unknown table>._preRevealOutcomeMeta)
			2126	[  0]	ITERL	  8		-4	; <unknown table>._preRevealOutcomeMeta = slot8; if slot8 != nil goto 2123
			2127	[  0]	KPRI 	  5		0	; slot5 = nil
			2128	[  0]	TSETS	  5	0	6	; slot0._preRevealOutcomeMeta = slot5
			2129	[  0]	TGETS	  5	0	5	; slot5 = slot0._skipPostEvaluateHookOnce
			2130	[  0]	ISF  	   		5	; if not <unknown table>._skipPostEvaluateHookOnce
			2131	[  0]	JMP  	  6		35	; 	goto 2167
			2132	[  0]	KPRI 	  5		0	; slot5 = nil
			2133	[  0]	TSETS	  5	0	5	; slot0._skipPostEvaluateHookOnce = slot5
			2134	[  0]	KPRI 	  5		0	; slot5 = nil
			2135	[  0]	TSETS	  5	0	53	; slot0._singleReelRespin = slot5
			2136	[  0]	TGETS	  5	0	169	; slot5 = slot0.result
			2137	[  0]	KPRI 	  6		2	; slot6 = true
			2138	[  0]	TSETS	  6	5	63	; <unknown table>.result._corePostEvaluateComplete = slot6
			2139	[  0]	TGETS	  5	0	169	; slot5 = slot0.result
			2140	[  0]	ISF  	   		4	; if not <unknown table>._singleReelRespin
			2141	[  0]	JMP  	  6		3	; 	goto 2145
			2142	[  0]	TGETS	  6	4	12	; slot6 = <unknown table>._singleReelRespin.coreKey
			2143	[  0]	IST  	   		6	; if <unknown table>._singleReelRespin.coreKey
			2144	[  0]	JMP  	  7		1	; 	goto 2146
			2145	[  0]	KPRI 	  6		0	; slot6 = nil
			2146	[  0]	TSETS	  6	5	4	; <unknown table>.result._completedCoreRespinKey = slot6
			2147	[  0]	TGETS	  5	0	169	; slot5 = slot0.result
			2148	[  0]	ISF  	   		4	; if not <unknown table>._singleReelRespin
			2149	[  0]	JMP  	  6		3	; 	goto 2153
			2150	[  0]	TGETS	  6	4	2	; slot6 = <unknown table>._singleReelRespin.coreRespinPhase
			2151	[  0]	IST  	   		6	; if <unknown table>._singleReelRespin.coreRespinPhase
			2152	[  0]	JMP  	  7		1	; 	goto 2154
			2153	[  0]	KPRI 	  6		0	; slot6 = nil
			2154	[  0]	TSETS	  6	5	3	; <unknown table>.result._completedCoreRespinPhase = slot6
			2155	[  0]	TGETS	  5	0	169	; slot5 = slot0.result
			2156	[  0]	ISF  	   		4	; if not <unknown table>._singleReelRespin
			2157	[  0]	JMP  	  6		3	; 	goto 2161
			2158	[  0]	TGETS	  6	4	0	; slot6 = <unknown table>._singleReelRespin.allowPostEvaluateChain
			2159	[  0]	ISEQP	  6		2	; if <unknown table>._singleReelRespin.allowPostEvaluateChain == true
			2160	[  0]	JMP  	  6		4	; 	goto 2165
			2161	[  0]	KPRI 	  6		0	; slot6 = nil
			2162	[  0]	JMP  	  7		3	; 	goto 2166
			2163	[  0]	KPRI 	  6		1	; slot6 = false
			2164	[  0]	JMP  	  7		1	; 	goto 2166
			2165	[  0]	KPRI 	  6		2	; slot6 = true
			2166	[  0]	TSETS	  6	5	1	; <unknown table>.result._allowCorePostEvaluateChain = slot6
			2167	[  0]	GGET 	  5		141	; slot5 = _env["type"]
			2168	[  0]	TGETS	  7	0	55	; slot7 = slot0.onPostEvaluate
			2169	[  0]	CALL 	  5	2	2	; slot5 = type(slot6)
			2170	[  0]	ISNES	  5		139	; if type ~= "function"
			2171	[  0]	JMP  	  5		10	; 	goto 2182
			2172	[  0]	GGET 	  5		138	; slot5 = _env["pcall"]
			2173	[  0]	TGETS	  7	0	55	; slot7 = slot0.onPostEvaluate
			2174	[  0]	TGETS	  8	0	169	; slot8 = slot0.result
			2175	[  0]	CALL 	  5	3	3	; slot5, slot6 = pcall(slot6, <unknown table>.onPostEvaluate)
			2176	[  0]	ISF  	   		5	; if not pcall
			2177	[  0]	JMP  	  7		4	; 	goto 2182
			2178	[  0]	ISF  	   		6	; if not slot6
			2179	[  0]	JMP  	  7		2	; 	goto 2182
			2180	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2181
			2181	[  0]	RET0 	  0		1	; return
			2182	[  0]	TGETS	  5	0	169	; slot5 = slot0.result
			2183	[  0]	TGETS	  5	5	128	; slot5 = <unknown table>.result.won
			2184	[  0]	ISF  	   		5	; if not <unknown table>.result.won
			2185	[  0]	JMP  	  6		16	; 	goto 2202
			2186	[  0]	TGETS	  5	0	169	; slot5 = slot0.result
			2187	[  0]	TGETS	  5	5	93	; slot5 = <unknown table>.result.awarded
			2188	[  0]	IST  	   		5	; if <unknown table>.result.awarded
			2189	[  0]	JMP  	  5		12	; 	goto 2202
			2190	[  0]	GGET 	  5		141	; slot5 = _env["type"]
			2191	[  0]	TGETS	  7	0	84	; slot7 = slot0.onWin
			2192	[  0]	CALL 	  5	2	2	; slot5 = type(slot6)
			2193	[  0]	ISNES	  5		139	; if type ~= "function"
			2194	[  0]	JMP  	  5		4	; 	goto 2199
			2195	[  0]	GGET 	  5		138	; slot5 = _env["pcall"]
			2196	[  0]	TGETS	  7	0	84	; slot7 = slot0.onWin
			2197	[  0]	TGETS	  8	0	169	; slot8 = slot0.result
			2198	[  0]	CALL 	  5	1	3	;  = pcall(slot6, <unknown table>.onWin)
			2199	[  0]	TGETS	  5	0	169	; slot5 = slot0.result
			2200	[  0]	KPRI 	  6		2	; slot6 = true
			2201	[  0]	TSETS	  6	5	93	; <unknown table>.result.awarded = slot6
			2202	[  0]	TGETS	  4	0	169	; slot4 = slot0.result
			2203	[  0]	TGETS	  4	4	128	; slot4 = <unknown table>.result.won
			2204	[  0]	ISF  	   		4	; if not <unknown table>.result.won
			2205	[  0]	JMP  	  5		20	; 	goto 2226
			2206	[  0]	TGETS	  4	0	169	; slot4 = slot0.result
			2207	[  0]	TGETS	  4	4	92	; slot4 = <unknown table>.result.fxStarted
			2208	[  0]	IST  	   		4	; if <unknown table>.result.fxStarted
			2209	[  0]	JMP  	  4		16	; 	goto 2226
			2210	[  0]	TGETS	  4	0	169	; slot4 = slot0.result
			2211	[  0]	KPRI 	  5		2	; slot5 = true
			2212	[  0]	TSETS	  5	4	168	; <unknown table>.result.highlightActive = slot5
			2213	[  0]	TGETS	  4	0	169	; slot4 = slot0.result
			2214	[  0]	KSHORT	  5		0	; slot5 = 0
			2215	[  0]	TSETS	  5	4	167	; <unknown table>.result.ht = slot5
			2216	[  0]	TGETS	  4	0	169	; slot4 = slot0.result
			2217	[  0]	TGETS	  5	0	169	; slot5 = slot0.result
			2218	[  0]	TGETS	  5	5	166	; slot5 = <unknown table>.result.hd
			2219	[  0]	IST  	   		5	; if <unknown table>.result.hd
			2220	[  0]	JMP  	  6		1	; 	goto 2222
			2221	[  0]	KNUM 	  5		0	; slot5 = 0.35
			2222	[  0]	TSETS	  5	4	166	; <unknown table>.result.hd = slot5
			2223	[  0]	TGETS	  4	0	169	; slot4 = slot0.result
			2224	[  0]	KPRI 	  5		2	; slot5 = true
			2225	[  0]	TSETS	  5	4	92	; <unknown table>.result.fxStarted = slot5
			2226	[  0]	GGET 	  4		141	; slot4 = _env["type"]
			2227	[  0]	TGETS	  6	0	54	; slot6 = slot0.onSpinEnd
			2228	[  0]	CALL 	  4	2	2	; slot4 = type(slot5)
			2229	[  0]	ISNES	  4		139	; if type ~= "function"
			2230	[  0]	JMP  	  4		4	; 	goto 2235
			2231	[  0]	GGET 	  4		138	; slot4 = _env["pcall"]
			2232	[  0]	TGETS	  6	0	54	; slot6 = slot0.onSpinEnd
			2233	[  0]	TGETS	  7	0	169	; slot7 = slot0.result
			2234	[  0]	CALL 	  4	1	3	;  = pcall(slot5, <unknown table>.onSpinEnd)
			2235	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 2236
			2236	[  0]	RET0 	  0		1	; return
		127	[  0]	TSETS	 11	1	1	; slot1.update = slot11
		128	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 129
		129	[  0]	RET1 	  1		2	; return slot1
	 18	[  0]	TSETS	 10	0	1	; slot0.new = slot10
	 19	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 20
	 20	[  0]	RET1 	  0		2	; return slot0
	
