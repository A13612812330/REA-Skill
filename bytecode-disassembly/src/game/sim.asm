;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\game\sim.lua
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
	;;;; instructions ;;;;
	  1	[  0]	GGET 	  0		11	; slot0 = _env["require"]
	  2	[  0]	KSTR 	  2		10	; slot2 = "src.data.constants"
	  3	[  0]	CALL 	  0	2	2	; slot0 = require(slot1)
	  4	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
	  5	[  0]	FNEW 	  2		9	; N/A:0-0: 0 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		  2	[  0]	ISF  	   		0	; if not love
		  3	[  0]	JMP  	  1		13	; 	goto 17
		  4	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		  5	[  0]	TGETS	  0	0	1	; slot0 = love.math
		  6	[  0]	ISF  	   		0	; if not love.math
		  7	[  0]	JMP  	  1		9	; 	goto 17
		  8	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		  9	[  0]	TGETS	  0	0	1	; slot0 = love.math
		 10	[  0]	TGETS	  0	0	0	; slot0 = love.math.random
		 11	[  0]	ISF  	   		0	; if not love.math.random
		 12	[  0]	JMP  	  1		4	; 	goto 17
		 13	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		 14	[  0]	TGETS	  0	0	1	; slot0 = love.math
		 15	[  0]	TGETS	  0	0	0	; slot0 = love.math.random
		 16	[  0]	CALLT	  0		1	; return love.math.random()
		 17	[  0]	GGET 	  0		1	; slot0 = _env["math"]
		 18	[  0]	TGETS	  0	0	0	; slot0 = math.random
		 19	[  0]	CALLT	  0		1	; return math.random()
	  6	[  0]	FNEW 	  3		8	; N/A:0-0: 0 args, 2 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			#1: W,
			#2: A,
			#3: S,
			#4: M,
			#5: H,
			#6: D,
			]
		
		
		ktable#7 = [
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
		 16	[  0]	GGET 	  3		9	; slot3 = _env["pairs"]
		 17	[  0]	MOV  	  5		0	; slot5 = slot0
		 18	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = pairs(slot4)
		 19	[  0]	ISNEXT	  6		18	; Verify ITERN at 38; goto 38
		 20	[  0]	GGET 	  8		8	; slot8 = _env["tonumber"]
		 21	[  0]	ISTC 	 10		7	; slot10 = slot7; if slot7
		 22	[  0]	JMP  	 10		1	; 	goto 24
		 23	[  0]	KSHORT	 10		0	; slot10 = 0
		 24	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 25	[  0]	IST  	   		8	; if tonumber
		 26	[  0]	JMP  	  9		1	; 	goto 28
		 27	[  0]	KSHORT	  8		0	; slot8 = 0
		 28	[  0]	KSHORT	  9		0	; slot9 = 0
		 29	[  0]	ISGE 	  9		8	; if slot9 >= slot8
		 30	[  0]	JMP  	  9		7	; 	goto 38
		 31	[  0]	LEN  	  9		1	; slot9 = #slot1
		 32	[  0]	ADDVN	  9	9	0	; slot9 = slot9 + 1
		 33	[  0]	TDUP 	 10		7	; slot10 = copy table#k7
		 34	[  0]	TSETS	  6	10	6	; slot10.key = slot6
		 35	[  0]	TSETS	  8	10	5	; slot10.w = slot8
		 36	[  0]	TSETV	 10	1	9	; slot1[slot9] = slot10
		 37	[  0]	ADDVV	  2	2	8	; slot2 = slot2 + slot8
		 38	[  0]	ITERN	  6	3	3	; slot6, slot7, slot8 = pairs, slot4, slot5; slot6, slot7 = pairs(slot4, slot5)
		 39	[  0]	ITERL	  6		-20	; slot5 = slot6; if slot6 != nil goto 20
		 40	[  0]	KNUM 	  3		1	; slot3 = 1e-12
		 41	[  0]	ISLE 	  2		3	; if slot2 <= slot3
		 42	[  0]	JMP  	  3		3	; 	goto 46
		 43	[  0]	LEN  	  3		1	; slot3 = #slot1
		 44	[  0]	ISNEN	  3		2	; if slot3 ~= 0
		 45	[  0]	JMP  	  3		19	; 	goto 65
		 46	[  0]	TDUP 	  3		4	; slot3 = copy table#k4
		 47	[  0]	GGET 	  4		3	; slot4 = _env["math"]
		 48	[  0]	TGETS	  4	4	2	; slot4 = math.max
		 49	[  0]	KSHORT	  6		1	; slot6 = 1
		 50	[  0]	GGET 	  7		3	; slot7 = _env["math"]
		 51	[  0]	TGETS	  7	7	1	; slot7 = math.min
		 52	[  0]	LEN  	  9		3	; slot9 = #slot3
		 53	[  0]	GGET 	 10		3	; slot10 = _env["math"]
		 54	[  0]	TGETS	 10	10	0	; slot10 = math.floor
		 55	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		 56	[  0]	CALL 	 12	2	1	; slot12 = uv1"unknown"()
		 57	[  0]	LEN  	 13		3	; slot13 = #slot3
		 58	[  0]	MULVV	 12	12	13	; slot12 = uv1"unknown" * slot13
		 59	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
		 60	[  0]	ADDVN	 10	10	0	; slot10 = math.floor + 1
		 61	[  0]	CALL 	  7	0	3	; MULTRES = math.min(slot8, slot9)
		 62	[  0]	CALLM	  4	2	1	; slot4 = math.max(slot5, ...MULTRES)
		 63	[  0]	TGETV	  4	3	4	; slot4 = slot3[math.max]
		 64	[  0]	RET1 	  4		2	; return slot4
		 65	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 66	[  0]	CALL 	  3	2	1	; slot3 = uv1"unknown"()
		 67	[  0]	MULVV	  3	3	2	; slot3 = uv1"unknown" * slot2
		 68	[  0]	KSHORT	  4		1	; slot4 = 1
		 69	[  0]	LEN  	  5		1	; slot5 = #slot1
		 70	[  0]	KSHORT	  6		1	; slot6 = 1
		 71	[  0]	FORI 	  4		9	; for math.min = slot4,slot5,slot6 else goto 81
		 72	[  0]	TGETV	  8	1	7	; slot8 = slot1[slot7]
		 73	[  0]	TGETS	  9	8	5	; slot9 = slot8.w
		 74	[  0]	ISGE 	  3		9	; if slot3 >= <unknown table>.w
		 75	[  0]	JMP  	  9		2	; 	goto 78
		 76	[  0]	TGETS	  9	8	6	; slot9 = slot8.key
		 77	[  0]	RET1 	  9		2	; return <unknown table>.key
		 78	[  0]	TGETS	  9	8	5	; slot9 = slot8.w
		 79	[  0]	SUBVV	  3	3	9	; slot3 = slot3 - <unknown table>.w
		 80	[  0]	FORL 	  4		-9	; slot7 = slot7 + slot6; if cmp(slot7, sign slot6,  slot5) goto 72
		 81	[  0]	LEN  	  4		1	; slot4 = #slot1
		 82	[  0]	TGETV	  4	1	4	; slot4 = slot1[slot4]
		 83	[  0]	TGETS	  4	4	6	; slot4 = slot4.key
		 84	[  0]	RET1 	  4		2	; return <unknown table>.key
	  7	[  0]	FNEW 	  4		7	; N/A:0-0: 0 args, 1 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  0		4	; slot0 = new table( array: 4, dict: 1)
		  2	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  3	[  0]	TSETB	  1	0	1	; slot0[1] = slot1
		  4	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  5	[  0]	TSETB	  1	0	2	; slot0[2] = slot1
		  6	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  7	[  0]	TSETB	  1	0	3	; slot0[3] = slot1
		  8	[  0]	KSHORT	  1		1	; slot1 = 1
		  9	[  0]	KSHORT	  2		3	; slot2 = 3
		 10	[  0]	KSHORT	  3		1	; slot3 = 1
		 11	[  0]	FORI 	  1		10	; for slot4 = slot1,slot2,slot3 else goto 22
		 12	[  0]	KSHORT	  5		1	; slot5 = 1
		 13	[  0]	KSHORT	  6		3	; slot6 = 3
		 14	[  0]	KSHORT	  7		1	; slot7 = 1
		 15	[  0]	FORI 	  5		5	; for slot8 = slot5,slot6,slot7 else goto 21
		 16	[  0]	TGETV	  9	0	4	; slot9 = slot0[slot4]
		 17	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 18	[  0]	CALL 	 10	2	1	; slot10 = uv0"unknown"()
		 19	[  0]	TSETV	 10	9	8	; slot9[slot8] = uv0"unknown"
		 20	[  0]	FORL 	  5		-5	; slot8 = slot8 + slot7; if cmp(slot8, sign slot7,  slot6) goto 16
		 21	[  0]	FORL 	  1		-10	; slot4 = slot4 + slot3; if cmp(slot4, sign slot3,  slot2) goto 12
		 22	[  0]	RET1 	  0		2	; return slot0
	  8	[  0]	FNEW 	  5		6	; N/A:0-0: 1 args, 0 upvalues, 12 slots
		
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
		 70	[  0]	JMP  	  6		25	; 	goto 96
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
		 89	[  0]	ISF  	   		8	; if not slot8
		 90	[  0]	JMP  	 11		5	; 	goto 96
		 91	[  0]	ISNEV	  8		9	; if slot8 ~= slot9
		 92	[  0]	JMP  	 11		3	; 	goto 96
		 93	[  0]	ISNEV	  9		10	; if slot9 ~= slot10
		 94	[  0]	JMP  	 11		1	; 	goto 96
		 95	[  0]	ADDVN	  2	2	0	; slot2 = slot2 + 1
		 96	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, slot5; slot6, slot7 = ipairs(slot4, slot5)
		 97	[  0]	ITERL	  6		-27	; slot5 = slot6; if slot6 != nil goto 71
		 98	[  0]	RET1 	  2		2	; return slot2
	  9	[  0]	FNEW 	  6		4	; N/A:0-0: 1 args, 3 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		ktable#3 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		9	; slot1 = _env["math"]
		  2	[  0]	TGETS	  1	1	8	; slot1 = math.max
		  3	[  0]	KSHORT	  3		1	; slot3 = 1
		  4	[  0]	GGET 	  4		9	; slot4 = _env["math"]
		  5	[  0]	TGETS	  4	4	7	; slot4 = math.floor
		  6	[  0]	GGET 	  6		6	; slot6 = _env["tonumber"]
		  7	[  0]	ISTC 	  8		0	; slot8 = slot0; if slot0
		  8	[  0]	JMP  	  8		1	; 	goto 10
		  9	[  0]	KNUM 	  8		0	; slot8 = 100000
		 10	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
		 11	[  0]	IST  	   		6	; if tonumber
		 12	[  0]	JMP  	  7		1	; 	goto 14
		 13	[  0]	KNUM 	  6		0	; slot6 = 100000
		 14	[  0]	CALL 	  4	0	2	; MULTRES = math.floor(slot5)
		 15	[  0]	CALLM	  1	2	1	; slot1 = math.max(slot2, ...MULTRES)
		 16	[  0]	MOV  	  0		1	; slot0 = slot1
		 17	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 18	[  0]	ISF  	   		1	; if not uv0"unknown"
		 19	[  0]	JMP  	  2		9	; 	goto 29
		 20	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 21	[  0]	TGETS	  1	1	5	; slot1 = uv0"unknown".slot
		 22	[  0]	ISF  	   		1	; if not uv0"unknown".slot
		 23	[  0]	JMP  	  2		5	; 	goto 29
		 24	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 25	[  0]	TGETS	  1	1	5	; slot1 = uv0"unknown".slot
		 26	[  0]	TGETS	  1	1	4	; slot1 = uv0"unknown".slot.forceWinProb
		 27	[  0]	IST  	   		1	; if uv0"unknown".slot.forceWinProb
		 28	[  0]	JMP  	  2		1	; 	goto 30
		 29	[  0]	KSHORT	  1		0	; slot1 = 0
		 30	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 31	[  0]	ISF  	   		2	; if not uv0"unknown"
		 32	[  0]	JMP  	  3		8	; 	goto 41
		 33	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 34	[  0]	TGETS	  2	2	5	; slot2 = uv0"unknown".slot
		 35	[  0]	ISF  	   		2	; if not uv0"unknown".slot
		 36	[  0]	JMP  	  3		4	; 	goto 41
		 37	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 38	[  0]	TGETS	  2	2	5	; slot2 = uv0"unknown".slot
		 39	[  0]	KSHORT	  3		0	; slot3 = 0
		 40	[  0]	TSETS	  3	2	4	; uv0"unknown".slot.forceWinProb = slot3
		 41	[  0]	KSHORT	  2		0	; slot2 = 0
		 42	[  0]	KSHORT	  3		0	; slot3 = 0
		 43	[  0]	KSHORT	  4		1	; slot4 = 1
		 44	[  0]	MOV  	  5		0	; slot5 = slot0
		 45	[  0]	KSHORT	  6		1	; slot6 = 1
		 46	[  0]	FORI 	  4		11	; for slot7 = slot4,slot5,slot6 else goto 58
		 47	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 48	[  0]	CALL 	  8	2	1	; slot8 = uv1"unknown"()
		 49	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
		 50	[  0]	MOV  	 11		8	; slot11 = uv1"unknown"
		 51	[  0]	CALL 	  9	2	2	; slot9 = uv2"unknown"(slot10)
		 52	[  0]	ADDVV	  3	3	9	; slot3 = slot3 + uv2"unknown"
		 53	[  0]	KSHORT	 10		0	; slot10 = 0
		 54	[  0]	ISGE 	 10		9	; if slot10 >= uv2"unknown"
		 55	[  0]	JMP  	 10		1	; 	goto 57
		 56	[  0]	ADDVN	  2	2	1	; slot2 = slot2 + 1
		 57	[  0]	FORL 	  4		-11	; slot7 = slot7 + slot6; if cmp(slot7, sign slot6,  slot5) goto 47
		 58	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 59	[  0]	ISF  	   		4	; if not uv0"unknown"
		 60	[  0]	JMP  	  5		7	; 	goto 68
		 61	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 62	[  0]	TGETS	  4	4	5	; slot4 = uv0"unknown".slot
		 63	[  0]	ISF  	   		4	; if not uv0"unknown".slot
		 64	[  0]	JMP  	  5		3	; 	goto 68
		 65	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 66	[  0]	TGETS	  4	4	5	; slot4 = uv0"unknown".slot
		 67	[  0]	TSETS	  1	4	4	; uv0"unknown".slot.forceWinProb = slot1
		 68	[  0]	DIVVV	  4	2	0	; slot4 = slot2 / slot0
		 69	[  0]	DIVVV	  5	3	0	; slot5 = slot3 / slot0
		 70	[  0]	TDUP 	  6		3	; slot6 = copy table#k3
		 71	[  0]	TSETS	  0	6	2	; slot6.trials = slot0
		 72	[  0]	TSETS	  4	6	1	; slot6.naturalAtLeastOne = slot4
		 73	[  0]	TSETS	  5	6	0	; slot6.expectedLinesPerSpin = slot5
		 74	[  0]	RET1 	  6		2	; return slot6
	 10	[  0]	TSETS	  6	1	5	; slot1.simulate = slot6
	 11	[  0]	FNEW 	  6		2	; N/A:0-0: 2 args, 3 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		ktable#5 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		11	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	10	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		11	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	9	; slot5 = math.floor
		  6	[  0]	GGET 	  7		8	; slot7 = _env["tonumber"]
		  7	[  0]	ISTC 	  9		0	; slot9 = slot0; if slot0
		  8	[  0]	JMP  	  9		1	; 	goto 10
		  9	[  0]	KNUM 	  9		0	; slot9 = 100000
		 10	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 11	[  0]	IST  	   		7	; if tonumber
		 12	[  0]	JMP  	  8		1	; 	goto 14
		 13	[  0]	KNUM 	  7		0	; slot7 = 100000
		 14	[  0]	CALL 	  5	0	2	; MULTRES = math.floor(slot6)
		 15	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 16	[  0]	MOV  	  0		2	; slot0 = math.max
		 17	[  0]	KSHORT	  1		0	; slot1 = 0
		 18	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 19	[  0]	ISF  	   		2	; if not uv0"unknown"
		 20	[  0]	JMP  	  3		9	; 	goto 30
		 21	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 22	[  0]	TGETS	  2	2	7	; slot2 = uv0"unknown".slot
		 23	[  0]	ISF  	   		2	; if not uv0"unknown".slot
		 24	[  0]	JMP  	  3		5	; 	goto 30
		 25	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 26	[  0]	TGETS	  2	2	7	; slot2 = uv0"unknown".slot
		 27	[  0]	TGETS	  2	2	6	; slot2 = uv0"unknown".slot.forceWinProb
		 28	[  0]	IST  	   		2	; if uv0"unknown".slot.forceWinProb
		 29	[  0]	JMP  	  3		1	; 	goto 31
		 30	[  0]	KSHORT	  2		0	; slot2 = 0
		 31	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 32	[  0]	ISF  	   		3	; if not uv0"unknown"
		 33	[  0]	JMP  	  4		8	; 	goto 42
		 34	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 35	[  0]	TGETS	  3	3	7	; slot3 = uv0"unknown".slot
		 36	[  0]	ISF  	   		3	; if not uv0"unknown".slot
		 37	[  0]	JMP  	  4		4	; 	goto 42
		 38	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 39	[  0]	TGETS	  3	3	7	; slot3 = uv0"unknown".slot
		 40	[  0]	KSHORT	  4		0	; slot4 = 0
		 41	[  0]	TSETS	  4	3	6	; uv0"unknown".slot.forceWinProb = slot4
		 42	[  0]	KSHORT	  3		0	; slot3 = 0
		 43	[  0]	KSHORT	  4		0	; slot4 = 0
		 44	[  0]	KSHORT	  5		0	; slot5 = 0
		 45	[  0]	KSHORT	  6		1	; slot6 = 1
		 46	[  0]	MOV  	  7		0	; slot7 = math.max
		 47	[  0]	KSHORT	  8		1	; slot8 = 1
		 48	[  0]	FORI 	  6		15	; for slot9 = slot6,slot7,slot8 else goto 64
		 49	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
		 50	[  0]	CALL 	 10	2	1	; slot10 = uv1"unknown"()
		 51	[  0]	UGET 	 11		2	; slot11 = uv2"unknwon"
		 52	[  0]	MOV  	 13		10	; slot13 = uv1"unknown"
		 53	[  0]	CALL 	 11	2	2	; slot11 = uv2"unknown"(slot12)
		 54	[  0]	KSHORT	 12		0	; slot12 = 0
		 55	[  0]	ISGE 	 12		11	; if slot12 >= uv2"unknown"
		 56	[  0]	JMP  	 12		1	; 	goto 58
		 57	[  0]	ADDVN	  3	3	1	; slot3 = slot3 + 1
		 58	[  0]	KSHORT	 12		0	; slot12 = 0
		 59	[  0]	ISGE 	 12		11	; if slot12 >= uv2"unknown"
		 60	[  0]	JMP  	 12		1	; 	goto 62
		 61	[  0]	ADDVN	  4	4	1	; slot4 = slot4 + 1
		 62	[  0]	ADDVV	  5	5	11	; slot5 = slot5 + uv2"unknown"
		 63	[  0]	FORL 	  6		-15	; slot9 = slot9 + slot8; if cmp(slot9, sign slot8,  slot7) goto 49
		 64	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 65	[  0]	ISF  	   		6	; if not uv0"unknown"
		 66	[  0]	JMP  	  7		7	; 	goto 74
		 67	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 68	[  0]	TGETS	  6	6	7	; slot6 = uv0"unknown".slot
		 69	[  0]	ISF  	   		6	; if not uv0"unknown".slot
		 70	[  0]	JMP  	  7		3	; 	goto 74
		 71	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 72	[  0]	TGETS	  6	6	7	; slot6 = uv0"unknown".slot
		 73	[  0]	TSETS	  2	6	6	; uv0"unknown".slot.forceWinProb = slot2
		 74	[  0]	TDUP 	  6		5	; slot6 = copy table#k5
		 75	[  0]	TSETS	  0	6	4	; slot6.trials = math.max
		 76	[  0]	TSETS	  1	6	3	; slot6.winSuppressProb = slot1
		 77	[  0]	DIVVV	  7	3	0	; slot7 = slot3 / math.max
		 78	[  0]	TSETS	  7	6	2	; slot6.naturalAtLeastOne = slot7
		 79	[  0]	DIVVV	  7	4	0	; slot7 = slot4 / math.max
		 80	[  0]	TSETS	  7	6	1	; slot6.effectiveAtLeastOne = slot7
		 81	[  0]	DIVVV	  7	5	0	; slot7 = slot5 / math.max
		 82	[  0]	TSETS	  7	6	0	; slot6.expectedLinesPerSpin = slot7
		 83	[  0]	RET1 	  6		2	; return slot6
	 12	[  0]	TSETS	  6	1	3	; slot1.simulateEffective = slot6
	 13	[  0]	FNEW 	  6		0	; N/A:0-0: 2 args, 1 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		ktable#3 = [
			]
		
		
		ktable#5 = [
			[note] = Natural win is ~100%; forcing not needed,
			[suggested] = 0,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	11	; slot2 = uv0"unknown".simulate
		  3	[  0]	MOV  	  4		1	; slot4 = slot1
		  4	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown".simulate(slot3)
		  5	[  0]	TGETS	  3	2	10	; slot3 = slot2.naturalAtLeastOne
		  6	[  0]	IST  	   		3	; if <unknown table>.naturalAtLeastOne
		  7	[  0]	JMP  	  4		1	; 	goto 9
		  8	[  0]	KSHORT	  3		0	; slot3 = 0
		  9	[  0]	GGET 	  4		9	; slot4 = _env["math"]
		 10	[  0]	TGETS	  4	4	8	; slot4 = math.max
		 11	[  0]	KSHORT	  6		0	; slot6 = 0
		 12	[  0]	GGET 	  7		9	; slot7 = _env["math"]
		 13	[  0]	TGETS	  7	7	7	; slot7 = math.min
		 14	[  0]	KSHORT	  9		1	; slot9 = 1
		 15	[  0]	GGET 	 10		6	; slot10 = _env["tonumber"]
		 16	[  0]	ISTC 	 12		0	; slot12 = slot0; if slot0
		 17	[  0]	JMP  	 12		1	; 	goto 19
		 18	[  0]	KNUM 	 12		0	; slot12 = 0.25
		 19	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 20	[  0]	IST  	   		10	; if tonumber
		 21	[  0]	JMP  	 11		1	; 	goto 23
		 22	[  0]	KNUM 	 10		0	; slot10 = 0.25
		 23	[  0]	CALL 	  7	0	3	; MULTRES = math.min(slot8, slot9)
		 24	[  0]	CALLM	  4	2	1	; slot4 = math.max(slot5, ...MULTRES)
		 25	[  0]	SUBNV	  5	3	1	; slot5 = 1 - slot3
		 26	[  0]	KNUM 	  6		2	; slot6 = 1e-09
		 27	[  0]	ISGT 	  5		6	; if slot5 > slot6
		 28	[  0]	JMP  	  6		3	; 	goto 32
		 29	[  0]	TDUP 	  6		5	; slot6 = copy table#k5
		 30	[  0]	TSETS	  3	6	4	; slot6.natural = slot3
		 31	[  0]	RET1 	  6		2	; return slot6
		 32	[  0]	SUBVV	  6	4	3	; slot6 = math.max - slot3
		 33	[  0]	DIVVV	  6	6	5	; slot6 = slot6 / slot5
		 34	[  0]	GGET 	  7		9	; slot7 = _env["math"]
		 35	[  0]	TGETS	  7	7	8	; slot7 = math.max
		 36	[  0]	KSHORT	  9		0	; slot9 = 0
		 37	[  0]	GGET 	 10		9	; slot10 = _env["math"]
		 38	[  0]	TGETS	 10	10	7	; slot10 = math.min
		 39	[  0]	KSHORT	 12		1	; slot12 = 1
		 40	[  0]	MOV  	 13		6	; slot13 = slot6
		 41	[  0]	CALL 	 10	0	3	; MULTRES = math.min(slot11, slot12)
		 42	[  0]	CALLM	  7	2	1	; slot7 = math.max(slot8, ...MULTRES)
		 43	[  0]	MOV  	  6		7	; slot6 = math.max
		 44	[  0]	TDUP 	  7		3	; slot7 = copy table#k3
		 45	[  0]	TSETS	  6	7	2	; slot7.suggested = math.max
		 46	[  0]	TSETS	  3	7	4	; slot7.natural = slot3
		 47	[  0]	TSETS	  4	7	1	; slot7.inputTarget = math.max
		 48	[  0]	TGETS	  8	2	0	; slot8 = slot2.trials
		 49	[  0]	TSETS	  8	7	0	; slot7.trials = <unknown table>.trials
		 50	[  0]	RET1 	  7		2	; return slot7
	 14	[  0]	TSETS	  6	1	1	; slot1.suggestForceProb = slot6
	 15	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 16
	 16	[  0]	RET1 	  1		2	; return slot1
	
