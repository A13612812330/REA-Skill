;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\game\luck.lua
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
	ktable#2 = [
		]
	
	
	ktable#44 = [
		[J] = true,
		[Joker] = true,
		]
	
	
	ktable#45 = [
		#1: W,
		#2: A,
		#3: S,
		#4: M,
		#5: H,
		#6: D,
		]
	
	
	;;;; instructions ;;;;
	  1	[  0]	KPRI 	  0		0	; slot0 = nil
	  2	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
	  3	[  0]	GGET 	  2		47	; slot2 = _env["require"]
	  4	[  0]	KSTR 	  4		46	; slot4 = "src.data.constants"
	  5	[  0]	CALL 	  2	2	2	; slot2 = require(slot3)
	  6	[  0]	TDUP 	  3		45	; slot3 = copy table#k45
	  7	[  0]	TDUP 	  4		44	; slot4 = copy table#k44
	  8	[  0]	KPRI 	  5		0	; slot5 = nil
	  9	[  0]	FNEW 	  6		43	; N/A:0-0: 0 args, 0 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			[probabilityMiss] = 0,
			[noCandidate] = 0,
			[longTermCorrections] = 0,
			[wave3Corrections] = 0,
			[wave2Corrections] = 0,
			[correctionWins] = 0,
			[nudgeWins] = 0,
			[automaticCoreWins] = 0,
			[naturalWins] = 0,
			[totalEligibleSpins] = 0,
			[totalPaidSpins] = 0,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TDUP 	  0		0	; slot0 = copy table#k0
		  2	[  0]	RET1 	  0		2	; return slot0
	 10	[  0]	FNEW 	  7		41	; N/A:0-0: 0 args, 2 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		ktable#1 = [
			[earlyCorrectionUsedThisWave] = false,
			[luckDebt] = 0,
			[paidLossStreak] = 0,
			[totalCorrections] = 0,
			[totalEligibleSpins] = 0,
			[permanentUnitsEarnedThisRun] = 0,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TDUP 	  0		1	; slot0 = copy table#k1
		  2	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  3	[  0]	CALL 	  1	2	1	; slot1 = uv1"unknown"()
		  4	[  0]	TSETS	  1	0	0	; slot0.telemetry = slot1
		  5	[  0]	USETV	  0		0	; uv0"unknwon" = slot0
		  6	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  7	[  0]	RET1 	  0		2	; return uv0"unknown"
	 11	[  0]	TSETS	  7	1	42	; slot1.reset = slot7
	 12	[  0]	TGETS	  7	1	42	; slot7 = slot1.reset
	 13	[  0]	CALL 	  7	1	1	;  = <unknown table>.reset()
	 14	[  0]	FNEW 	  7		40	; N/A:0-0: 0 args, 1 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		4	; 	goto 8
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".hiddenLuck
		  6	[  0]	IST  	   		0	; if uv0"unknown".hiddenLuck
		  7	[  0]	JMP  	  1		1	; 	goto 9
		  8	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
		  9	[  0]	RET1 	  0		2	; return slot0
	 15	[  0]	FNEW 	  8		39	; N/A:0-0: 3 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		2	; slot3 = _env["math"]
		  2	[  0]	TGETS	  3	3	1	; slot3 = math.max
		  3	[  0]	MOV  	  5		1	; slot5 = slot1
		  4	[  0]	GGET 	  6		2	; slot6 = _env["math"]
		  5	[  0]	TGETS	  6	6	0	; slot6 = math.min
		  6	[  0]	MOV  	  8		2	; slot8 = slot2
		  7	[  0]	MOV  	  9		0	; slot9 = slot0
		  8	[  0]	CALL 	  6	0	3	; MULTRES = math.min(slot7, slot8)
		  9	[  0]	CALLMT	  3		1	; return math.max(, ...MULTRES)
	 16	[  0]	FNEW 	  9		38	; N/A:0-0: 1 args, 0 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  2	[  0]	KSHORT	  2		1	; slot2 = 1
		  3	[  0]	LEN  	  3		0	; slot3 = #slot0
		  4	[  0]	KSHORT	  4		1	; slot4 = 1
		  5	[  0]	FORI 	  2		16	; for slot5 = slot2,slot3,slot4 else goto 22
		  6	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		  7	[  0]	TSETV	  6	1	5	; slot1[slot5] = slot6
		  8	[  0]	KSHORT	  6		1	; slot6 = 1
		  9	[  0]	TGETV	  7	0	5	; slot7 = slot0[slot5]
		 10	[  0]	IST  	   		7	; if slot7
		 11	[  0]	JMP  	  8		1	; 	goto 13
		 12	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
		 13	[  0]	LEN  	  7		7	; slot7 = #slot7
		 14	[  0]	KSHORT	  8		1	; slot8 = 1
		 15	[  0]	FORI 	  6		5	; for slot9 = slot6,slot7,slot8 else goto 21
		 16	[  0]	TGETV	 10	1	5	; slot10 = slot1[slot5]
		 17	[  0]	TGETV	 11	0	5	; slot11 = slot0[slot5]
		 18	[  0]	TGETV	 11	11	9	; slot11 = slot11[slot9]
		 19	[  0]	TSETV	 11	10	9	; slot10[slot9] = slot11
		 20	[  0]	FORL 	  6		-5	; slot9 = slot9 + slot8; if cmp(slot9, sign slot8,  slot7) goto 16
		 21	[  0]	FORL 	  2		-16	; slot5 = slot5 + slot4; if cmp(slot5, sign slot4,  slot3) goto 6
		 22	[  0]	RET1 	  1		2	; return slot1
	 17	[  0]	FNEW 	 10		37	; N/A:0-0: 1 args, 0 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  2	[  0]	KSHORT	  2		1	; slot2 = 1
		  3	[  0]	LEN  	  3		0	; slot3 = #slot0
		  4	[  0]	KSHORT	  4		1	; slot4 = 1
		  5	[  0]	FORI 	  2		17	; for slot5 = slot2,slot3,slot4 else goto 23
		  6	[  0]	KSHORT	  6		1	; slot6 = 1
		  7	[  0]	TGETV	  7	0	5	; slot7 = slot0[slot5]
		  8	[  0]	IST  	   		7	; if slot7
		  9	[  0]	JMP  	  8		1	; 	goto 11
		 10	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
		 11	[  0]	LEN  	  7		7	; slot7 = #slot7
		 12	[  0]	KSHORT	  8		1	; slot8 = 1
		 13	[  0]	FORI 	  6		8	; for slot9 = slot6,slot7,slot8 else goto 22
		 14	[  0]	LEN  	 10		1	; slot10 = #slot1
		 15	[  0]	ADDVN	 10	10	0	; slot10 = slot10 + 1
		 16	[  0]	GGET 	 11		3	; slot11 = _env["tostring"]
		 17	[  0]	TGETV	 13	0	5	; slot13 = slot0[slot5]
		 18	[  0]	TGETV	 13	13	9	; slot13 = slot13[slot9]
		 19	[  0]	CALL 	 11	2	2	; slot11 = tostring(slot12)
		 20	[  0]	TSETV	 11	1	10	; slot1[slot10] = tostring
		 21	[  0]	FORL 	  6		-8	; slot9 = slot9 + slot8; if cmp(slot9, sign slot8,  slot7) goto 14
		 22	[  0]	FORL 	  2		-17	; slot5 = slot5 + slot4; if cmp(slot5, sign slot4,  slot3) goto 6
		 23	[  0]	GGET 	  2		2	; slot2 = _env["table"]
		 24	[  0]	TGETS	  2	2	1	; slot2 = table.concat
		 25	[  0]	MOV  	  4		1	; slot4 = slot1
		 26	[  0]	KSTR 	  5		0	; slot5 = ""
		 27	[  0]	CALLT	  2		3	; return table.concat(slot3, slot4)
	 18	[  0]	FNEW 	 11		36	; N/A:0-0: 1 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  2	[  0]	KSHORT	  2		1	; slot2 = 1
		  3	[  0]	LEN  	  3		0	; slot3 = #slot0
		  4	[  0]	KSHORT	  4		1	; slot4 = 1
		  5	[  0]	FORI 	  2		7	; for slot5 = slot2,slot3,slot4 else goto 13
		  6	[  0]	GGET 	  6		3	; slot6 = _env["table"]
		  7	[  0]	TGETS	  6	6	2	; slot6 = table.concat
		  8	[  0]	TGETV	  8	0	5	; slot8 = slot0[slot5]
		  9	[  0]	KSTR 	  9		1	; slot9 = ","
		 10	[  0]	CALL 	  6	2	3	; slot6 = table.concat(slot7, slot8)
		 11	[  0]	TSETV	  6	1	5	; slot1[slot5] = table.concat
		 12	[  0]	FORL 	  2		-7	; slot5 = slot5 + slot4; if cmp(slot5, sign slot4,  slot3) goto 6
		 13	[  0]	GGET 	  2		3	; slot2 = _env["table"]
		 14	[  0]	TGETS	  2	2	2	; slot2 = table.concat
		 15	[  0]	MOV  	  4		1	; slot4 = slot1
		 16	[  0]	KSTR 	  5		0	; slot5 = "/"
		 17	[  0]	CALLT	  2		3	; return table.concat(slot3, slot4)
	 19	[  0]	FNEW 	 12		35	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KSHORT	  1		3	; slot1 = 3
		  2	[  0]	ISGT 	  0		1	; if slot0 > slot1
		  3	[  0]	JMP  	  1		2	; 	goto 6
		  4	[  0]	KSTR 	  1		2	; slot1 = "horizontal"
		  5	[  0]	RET1 	  1		2	; return slot1
		  6	[  0]	KSHORT	  1		5	; slot1 = 5
		  7	[  0]	ISGT 	  0		1	; if slot0 > slot1
		  8	[  0]	JMP  	  1		2	; 	goto 11
		  9	[  0]	KSTR 	  1		1	; slot1 = "diagonal"
		 10	[  0]	RET1 	  1		2	; return slot1
		 11	[  0]	KSTR 	  1		0	; slot1 = "vertical"
		 12	[  0]	RET1 	  1		2	; return slot1
	 20	[  0]	FNEW 	 13		33	; N/A:0-0: 0 args, 1 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	RET1 	  0		2	; return uv0"unknown"
	 21	[  0]	TSETS	 13	1	34	; slot1.getState = slot13
	 22	[  0]	FNEW 	 13		31	; N/A:0-0: 1 args, 3 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	7	; slot1 = uv0"unknown".reset
		  3	[  0]	CALL 	  1	1	1	;  = uv0"unknown".reset()
		  4	[  0]	GGET 	  1		6	; slot1 = _env["type"]
		  5	[  0]	MOV  	  3		0	; slot3 = slot0
		  6	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  7	[  0]	ISEQS	  1		5	; if slot1 == "table"
		  8	[  0]	JMP  	  1		2	; 	goto 11
		  9	[  0]	KPRI 	  1		1	; slot1 = false
		 10	[  0]	RET1 	  1		2	; return slot1
		 11	[  0]	GGET 	  1		4	; slot1 = _env["pairs"]
		 12	[  0]	MOV  	  3		0	; slot3 = slot0
		 13	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = pairs(slot2)
		 14	[  0]	ISNEXT	  4		17	; Verify ITERN at 32; goto 32
		 15	[  0]	GGET 	  6		6	; slot6 = _env["type"]
		 16	[  0]	MOV  	  8		5	; slot8 = slot5
		 17	[  0]	CALL 	  6	2	2	; slot6 = type(slot7)
		 18	[  0]	ISEQS	  6		3	; if type == "function"
		 19	[  0]	JMP  	  6		12	; 	goto 32
		 20	[  0]	GGET 	  6		6	; slot6 = _env["type"]
		 21	[  0]	MOV  	  8		5	; slot8 = slot5
		 22	[  0]	CALL 	  6	2	2	; slot6 = type(slot7)
		 23	[  0]	ISEQS	  6		2	; if type == "userdata"
		 24	[  0]	JMP  	  6		7	; 	goto 32
		 25	[  0]	GGET 	  6		6	; slot6 = _env["type"]
		 26	[  0]	MOV  	  8		5	; slot8 = slot5
		 27	[  0]	CALL 	  6	2	2	; slot6 = type(slot7)
		 28	[  0]	ISEQS	  6		1	; if type == "thread"
		 29	[  0]	JMP  	  6		2	; 	goto 32
		 30	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 31	[  0]	TSETV	  5	6	4	; uv1"unknown"[slot4] = slot5
		 32	[  0]	ITERN	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, slot3; slot4, slot5 = slot1(slot2, slot3)
		 33	[  0]	ITERL	  4		-19	; slot3 = slot4; if slot4 != nil goto 15
		 34	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 35	[  0]	GGET 	  2		6	; slot2 = _env["type"]
		 36	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 37	[  0]	TGETS	  4	4	0	; slot4 = uv1"unknown".telemetry
		 38	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		 39	[  0]	ISNES	  2		5	; if slot2 ~= "table"
		 40	[  0]	JMP  	  2		4	; 	goto 45
		 41	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 42	[  0]	TGETS	  2	2	0	; slot2 = uv1"unknown".telemetry
		 43	[  0]	IST  	   		2	; if uv1"unknown".telemetry
		 44	[  0]	JMP  	  3		2	; 	goto 47
		 45	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 46	[  0]	CALL 	  2	2	1	; slot2 = uv2"unknown"()
		 47	[  0]	TSETS	  2	1	0	; uv1"unknown".telemetry = uv2"unknown"
		 48	[  0]	KPRI 	  1		2	; slot1 = true
		 49	[  0]	RET1 	  1		2	; return slot1
	 23	[  0]	TSETS	 13	1	32	; slot1.importState = slot13
	 24	[  0]	FNEW 	 13		29	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	KPRI 	  1		1	; slot1 = false
		  3	[  0]	TSETS	  1	0	0	; uv0"unknown".earlyCorrectionUsedThisWave = slot1
		  4	[  0]	RET0 	  0		1	; return
	 25	[  0]	TSETS	 13	1	30	; slot1.onWaveStart = slot13
	 26	[  0]	FNEW 	 13		27	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	KSHORT	  1		0	; slot1 = 0
		  3	[  0]	TSETS	  1	0	1	; uv0"unknown".paidLossStreak = slot1
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	KSHORT	  1		0	; slot1 = 0
		  6	[  0]	TSETS	  1	0	0	; uv0"unknown".luckDebt = slot1
		  7	[  0]	RET0 	  0		1	; return
	 27	[  0]	TSETS	 13	1	28	; slot1.resetDebtAfterWave1Guarantee = slot13
	 28	[  0]	FNEW 	 13		25	; N/A:0-0: 1 args, 1 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		4	; slot1 = _env["math"]
		  2	[  0]	TGETS	  1	1	3	; slot1 = math.max
		  3	[  0]	KSHORT	  3		0	; slot3 = 0
		  4	[  0]	GGET 	  4		4	; slot4 = _env["math"]
		  5	[  0]	TGETS	  4	4	2	; slot4 = math.floor
		  6	[  0]	GGET 	  6		1	; slot6 = _env["tonumber"]
		  7	[  0]	ISTC 	  8		0	; slot8 = slot0; if slot0
		  8	[  0]	JMP  	  8		1	; 	goto 10
		  9	[  0]	KSHORT	  8		0	; slot8 = 0
		 10	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
		 11	[  0]	IST  	   		6	; if tonumber
		 12	[  0]	JMP  	  7		1	; 	goto 14
		 13	[  0]	KSHORT	  6		0	; slot6 = 0
		 14	[  0]	CALL 	  4	0	2	; MULTRES = math.floor(slot5)
		 15	[  0]	CALLM	  1	2	1	; slot1 = math.max(slot2, ...MULTRES)
		 16	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 17	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 18	[  0]	TGETS	  3	3	0	; slot3 = uv0"unknown".permanentUnitsEarnedThisRun
		 19	[  0]	ADDVV	  3	3	1	; slot3 = uv0"unknown".permanentUnitsEarnedThisRun + slot1
		 20	[  0]	TSETS	  3	2	0	; uv0"unknown".permanentUnitsEarnedThisRun = slot3
		 21	[  0]	RET0 	  0		1	; return
	 29	[  0]	TSETS	 13	1	26	; slot1.recordPermanentUnits = slot13
	 30	[  0]	FNEW 	 13		23	; N/A:0-0: 2 args, 2 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		ktable#12 = [
			[finalized] = false,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	14	; slot2 = uv0"unknown".telemetry
		  3	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  4	[  0]	TGETS	  3	3	14	; slot3 = uv0"unknown".telemetry
		  5	[  0]	TGETS	  3	3	13	; slot3 = uv0"unknown".telemetry.totalPaidSpins
		  6	[  0]	ADDVN	  3	3	0	; slot3 = uv0"unknown".telemetry.totalPaidSpins + 1
		  7	[  0]	TSETS	  3	2	13	; uv0"unknown".telemetry.totalPaidSpins = slot3
		  8	[  0]	TDUP 	  2		12	; slot2 = copy table#k12
		  9	[  0]	ISEQP	  0		2	; if slot0 == true
		 10	[  0]	JMP  	  3		2	; 	goto 13
		 11	[  0]	KPRI 	  3		1	; slot3 = false
		 12	[  0]	JMP  	  4		1	; 	goto 14
		 13	[  0]	KPRI 	  3		2	; slot3 = true
		 14	[  0]	TSETS	  3	2	11	; slot2.eligible = slot3
		 15	[  0]	GGET 	  3		10	; slot3 = _env["math"]
		 16	[  0]	TGETS	  3	3	9	; slot3 = math.max
		 17	[  0]	KSHORT	  5		1	; slot5 = 1
		 18	[  0]	GGET 	  6		10	; slot6 = _env["math"]
		 19	[  0]	TGETS	  6	6	8	; slot6 = math.floor
		 20	[  0]	GGET 	  8		7	; slot8 = _env["tonumber"]
		 21	[  0]	ISTC 	 10		1	; slot10 = slot1; if slot1
		 22	[  0]	JMP  	 10		1	; 	goto 24
		 23	[  0]	KSHORT	 10		1	; slot10 = 1
		 24	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 25	[  0]	IST  	   		8	; if tonumber
		 26	[  0]	JMP  	  9		1	; 	goto 28
		 27	[  0]	KSHORT	  8		1	; slot8 = 1
		 28	[  0]	CALL 	  6	0	2	; MULTRES = math.floor(slot7)
		 29	[  0]	CALLM	  3	2	1	; slot3 = math.max(slot4, ...MULTRES)
		 30	[  0]	TSETS	  3	2	6	; slot2.waveId = math.max
		 31	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 32	[  0]	TGETS	  3	3	5	; slot3 = uv0"unknown".paidLossStreak
		 33	[  0]	ADDVN	  3	3	0	; slot3 = uv0"unknown".paidLossStreak + 1
		 34	[  0]	TSETS	  3	2	4	; slot2.prospectiveLossStreak = slot3
		 35	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 36	[  0]	TGETS	  3	3	3	; slot3 = uv0"unknown".luckDebt
		 37	[  0]	GGET 	  4		7	; slot4 = _env["tonumber"]
		 38	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 39	[  0]	CALL 	  6	2	1	; slot6 = uv1"unknown"()
		 40	[  0]	TGETS	  6	6	2	; slot6 = uv1"unknown".naturalWinProbability
		 41	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		 42	[  0]	IST  	   		4	; if tonumber
		 43	[  0]	JMP  	  5		1	; 	goto 45
		 44	[  0]	KNUM 	  4		1	; slot4 = 0.2274
		 45	[  0]	ADDVV	  3	3	4	; slot3 = uv0"unknown".luckDebt + slot4
		 46	[  0]	TSETS	  3	2	1	; slot2.prospectiveLuckDebt = slot3
		 47	[  0]	TGETS	  3	2	11	; slot3 = slot2.eligible
		 48	[  0]	ISF  	   		3	; if not <unknown table>.eligible
		 49	[  0]	JMP  	  4		12	; 	goto 62
		 50	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 51	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 52	[  0]	TGETS	  4	4	0	; slot4 = uv0"unknown".totalEligibleSpins
		 53	[  0]	ADDVN	  4	4	0	; slot4 = uv0"unknown".totalEligibleSpins + 1
		 54	[  0]	TSETS	  4	3	0	; uv0"unknown".totalEligibleSpins = slot4
		 55	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 56	[  0]	TGETS	  3	3	14	; slot3 = uv0"unknown".telemetry
		 57	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 58	[  0]	TGETS	  4	4	14	; slot4 = uv0"unknown".telemetry
		 59	[  0]	TGETS	  4	4	0	; slot4 = uv0"unknown".telemetry.totalEligibleSpins
		 60	[  0]	ADDVN	  4	4	0	; slot4 = uv0"unknown".telemetry.totalEligibleSpins + 1
		 61	[  0]	TSETS	  4	3	0	; uv0"unknown".telemetry.totalEligibleSpins = slot4
		 62	[  0]	RET1 	  2		2	; return slot2
	 31	[  0]	TSETS	 13	1	24	; slot1.beginPaidSpin = slot13
	 32	[  0]	FNEW 	 13		21	; N/A:0-0: 1 args, 2 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		3	; 	goto 6
		  3	[  0]	TGETS	  1	0	10	; slot1 = slot0.eligible
		  4	[  0]	IST  	   		1	; if <unknown table>.eligible
		  5	[  0]	JMP  	  1		3	; 	goto 9
		  6	[  0]	KSHORT	  1		0	; slot1 = 0
		  7	[  0]	KPRI 	  2		0	; slot2 = nil
		  8	[  0]	RET  	  1		3	; return slot1, slot2
		  9	[  0]	TGETS	  1	0	9	; slot1 = slot0.waveId
		 10	[  0]	TGETS	  2	0	8	; slot2 = slot0.prospectiveLossStreak
		 11	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 12	[  0]	CALL 	  3	2	1	; slot3 = uv0"unknown"()
		 13	[  0]	TGETS	  4	3	7	; slot4 = uv0"unknown".early
		 14	[  0]	ISF  	   		4	; if not uv0"unknown".early
		 15	[  0]	JMP  	  5		2	; 	goto 18
		 16	[  0]	TGETS	  4	3	7	; slot4 = uv0"unknown".early
		 17	[  0]	TGETV	  4	4	1	; slot4 = uv0"unknown".early[<unknown table>.waveId]
		 18	[  0]	ISF  	   		4	; if not slot4
		 19	[  0]	JMP  	  5		53	; 	goto 73
		 20	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 21	[  0]	TGETS	  5	5	6	; slot5 = uv1"unknown".earlyCorrectionUsedThisWave
		 22	[  0]	ISF  	   		5	; if not uv1"unknown".earlyCorrectionUsedThisWave
		 23	[  0]	JMP  	  6		3	; 	goto 27
		 24	[  0]	KSHORT	  5		0	; slot5 = 0
		 25	[  0]	KPRI 	  6		0	; slot6 = nil
		 26	[  0]	RET  	  5		3	; return slot5, slot6
		 27	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 28	[  0]	TGETS	  5	5	5	; slot5 = uv1"unknown".permanentUnitsEarnedThisRun
		 29	[  0]	GGET 	  6		4	; slot6 = _env["tonumber"]
		 30	[  0]	TGETS	  8	4	3	; slot8 = slot4.maxPermanentUnits
		 31	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
		 32	[  0]	IST  	   		6	; if tonumber
		 33	[  0]	JMP  	  7		1	; 	goto 35
		 34	[  0]	KSHORT	  6		65535	; slot6 = 65535
		 35	[  0]	ISGE 	  6		5	; if slot6 >= uv1"unknown".permanentUnitsEarnedThisRun
		 36	[  0]	JMP  	  5		3	; 	goto 40
		 37	[  0]	KSHORT	  5		0	; slot5 = 0
		 38	[  0]	KPRI 	  6		0	; slot6 = nil
		 39	[  0]	RET  	  5		3	; return slot5, slot6
		 40	[  0]	ISNEN	  1		0	; if <unknown table>.waveId ~= 2
		 41	[  0]	JMP  	  5		2	; 	goto 44
		 42	[  0]	KSHORT	  5		5	; slot5 = 5
		 43	[  0]	JMP  	  6		1	; 	goto 45
		 44	[  0]	KSHORT	  5		6	; slot5 = 6
		 45	[  0]	TGETS	  6	4	2	; slot6 = slot4.chances
		 46	[  0]	ISF  	   		6	; if not <unknown table>.chances
		 47	[  0]	JMP  	  7		10	; 	goto 58
		 48	[  0]	TGETS	  6	4	2	; slot6 = slot4.chances
		 49	[  0]	TGETV	  6	6	2	; slot6 = <unknown table>.chances[<unknown table>.prospectiveLossStreak]
		 50	[  0]	IST  	   		6	; if slot6
		 51	[  0]	JMP  	  7		7	; 	goto 59
		 52	[  0]	ISGT 	  5		2	; if slot5 > <unknown table>.prospectiveLossStreak
		 53	[  0]	JMP  	  6		4	; 	goto 58
		 54	[  0]	TGETS	  6	4	2	; slot6 = slot4.chances
		 55	[  0]	TGETV	  6	6	5	; slot6 = <unknown table>.chances[slot5]
		 56	[  0]	IST  	   		6	; if slot6
		 57	[  0]	JMP  	  7		1	; 	goto 59
		 58	[  0]	KSHORT	  6		0	; slot6 = 0
		 59	[  0]	GGET 	  7		4	; slot7 = _env["tonumber"]
		 60	[  0]	ISTC 	  9		6	; slot9 = slot6; if slot6
		 61	[  0]	JMP  	  9		1	; 	goto 63
		 62	[  0]	KSHORT	  9		0	; slot9 = 0
		 63	[  0]	CALL 	  7	2	2	; slot7 = tonumber(<unknown table>.maxPermanentUnits)
		 64	[  0]	IST  	   		7	; if tonumber
		 65	[  0]	JMP  	  8		1	; 	goto 67
		 66	[  0]	KSHORT	  7		0	; slot7 = 0
		 67	[  0]	KSTR 	  8		1	; slot8 = "wave"
		 68	[  0]	GGET 	  9		0	; slot9 = _env["tostring"]
		 69	[  0]	MOV  	 11		1	; slot11 = <unknown table>.waveId
		 70	[  0]	CALL 	  9	2	2	; slot9 = tostring(slot10)
		 71	[  0]	CAT  	  8	8	9	; slot8 = slot8 .. tostring
		 72	[  0]	RET  	  7		3	; return slot7, slot8
		 73	[  0]	KSHORT	  5		0	; slot5 = 0
		 74	[  0]	KPRI 	  6		0	; slot6 = nil
		 75	[  0]	RET  	  5		3	; return slot5, slot6
	 33	[  0]	TSETS	 13	1	22	; slot1.getCorrectionChance = slot13
	 34	[  0]	FNEW 	 13		19	; N/A:0-0: 4 args, 4 upvalues, 37 slots
		
		;;;; constant tables ;;;;
		ktable#8 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		  2	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		  3	[  0]	ISF  	   		0	; if not slot0
		  4	[  0]	JMP  	  6		4	; 	goto 9
		  5	[  0]	ISF  	   		1	; if not slot1
		  6	[  0]	JMP  	  6		2	; 	goto 9
		  7	[  0]	IST  	   		2	; if slot2
		  8	[  0]	JMP  	  6		1	; 	goto 10
		  9	[  0]	RET1 	  4		2	; return slot4
		 10	[  0]	MOV  	  6		2	; slot6 = slot2
		 11	[  0]	MOV  	  8		0	; slot8 = slot0
		 12	[  0]	CALL 	  6	2	2	; slot6 = slot6(slot7)
		 13	[  0]	ISF  	   		6	; if not slot6
		 14	[  0]	JMP  	  7		5	; 	goto 20
		 15	[  0]	LEN  	  7		6	; slot7 = #slot6
		 16	[  0]	KSHORT	  8		0	; slot8 = 0
		 17	[  0]	ISGE 	  8		7	; if slot8 >= slot7
		 18	[  0]	JMP  	  7		1	; 	goto 20
		 19	[  0]	RET1 	  4		2	; return slot4
		 20	[  0]	GGET 	  7		13	; slot7 = _env["ipairs"]
		 21	[  0]	MOV  	  9		1	; slot9 = slot1
		 22	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = ipairs(slot8)
		 23	[  0]	JMP  	 10		117	; 	goto 141
		 24	[  0]	TNEW 	 12		0	; slot12 = new table( array: 0, dict: 1)
		 25	[  0]	KPRI 	 13		1	; slot13 = false
		 26	[  0]	GGET 	 14		13	; slot14 = _env["ipairs"]
		 27	[  0]	MOV  	 16		11	; slot16 = slot11
		 28	[  0]	CALL 	 14	4	2	; slot14, slot15, slot16 = ipairs(slot15)
		 29	[  0]	JMP  	 17		19	; 	goto 49
		 30	[  0]	TGETB	 19	18	1	; slot19 = slot18[1]
		 31	[  0]	TGETV	 19	0	19	; slot19 = slot0[slot19]
		 32	[  0]	ISF  	   		19	; if not slot19
		 33	[  0]	JMP  	 20		4	; 	goto 38
		 34	[  0]	TGETB	 19	18	1	; slot19 = slot18[1]
		 35	[  0]	TGETV	 19	0	19	; slot19 = slot0[slot19]
		 36	[  0]	TGETB	 20	18	2	; slot20 = slot18[2]
		 37	[  0]	TGETV	 19	19	20	; slot19 = slot19[slot20]
		 38	[  0]	UGET 	 20		0	; slot20 = uv0"unknwon"
		 39	[  0]	TGETV	 20	20	19	; slot20 = uv0"unknown"[slot19]
		 40	[  0]	ISF  	   		20	; if not slot20
		 41	[  0]	JMP  	 21		1	; 	goto 43
		 42	[  0]	KPRI 	 13		2	; slot13 = true
		 43	[  0]	TGETV	 20	12	19	; slot20 = slot12[slot19]
		 44	[  0]	IST  	   		20	; if slot20
		 45	[  0]	JMP  	 21		1	; 	goto 47
		 46	[  0]	KSHORT	 20		0	; slot20 = 0
		 47	[  0]	ADDVN	 20	20	0	; slot20 = slot20 + 1
		 48	[  0]	TSETV	 20	12	19	; slot12[slot19] = slot20
		 49	[  0]	ITERC	 17	3	3	; slot17, slot18, slot19 = ipairs, slot15, slot16; slot17, slot18 = ipairs(slot15, slot16)
		 50	[  0]	ITERL	 17		-21	; slot16 = slot17; if slot17 != nil goto 30
		 51	[  0]	IST  	   		13	; if slot13
		 52	[  0]	JMP  	 14		88	; 	goto 141
		 53	[  0]	GGET 	 14		12	; slot14 = _env["pairs"]
		 54	[  0]	MOV  	 16		12	; slot16 = slot12
		 55	[  0]	CALL 	 14	4	2	; slot14, slot15, slot16 = pairs(slot15)
		 56	[  0]	ISNEXT	 17		82	; Verify ITERN at 139; goto 139
		 57	[  0]	ISNEN	 18		1	; if slot18 ~= 2
		 58	[  0]	JMP  	 19		80	; 	goto 139
		 59	[  0]	UGET 	 19		0	; slot19 = uv0"unknwon"
		 60	[  0]	TGETV	 19	19	17	; slot19 = uv0"unknown"[slot17]
		 61	[  0]	IST  	   		19	; if slot19
		 62	[  0]	JMP  	 19		76	; 	goto 139
		 63	[  0]	ISEQS	 17		11	; if slot17 == "Blank"
		 64	[  0]	JMP  	 19		74	; 	goto 139
		 65	[  0]	GGET 	 19		13	; slot19 = _env["ipairs"]
		 66	[  0]	MOV  	 21		11	; slot21 = slot11
		 67	[  0]	CALL 	 19	4	2	; slot19, slot20, slot21 = ipairs(slot20)
		 68	[  0]	JMP  	 22		68	; 	goto 137
		 69	[  0]	TGETB	 24	23	1	; slot24 = slot23[1]
		 70	[  0]	TGETB	 25	23	2	; slot25 = slot23[2]
		 71	[  0]	TGETV	 26	0	24	; slot26 = slot0[slot24]
		 72	[  0]	ISF  	   		26	; if not slot26
		 73	[  0]	JMP  	 27		2	; 	goto 76
		 74	[  0]	TGETV	 26	0	24	; slot26 = slot0[slot24]
		 75	[  0]	TGETV	 26	26	25	; slot26 = slot26[slot25]
		 76	[  0]	ISFC 	 27		3	; slot27 = slot3; if not slot3
		 77	[  0]	JMP  	 27		9	; 	goto 87
		 78	[  0]	GGET 	 27		10	; slot27 = _env["tostring"]
		 79	[  0]	MOV  	 29		24	; slot29 = slot24
		 80	[  0]	CALL 	 27	2	2	; slot27 = tostring(slot28)
		 81	[  0]	KSTR 	 28		9	; slot28 = ":"
		 82	[  0]	GGET 	 29		10	; slot29 = _env["tostring"]
		 83	[  0]	MOV  	 31		25	; slot31 = slot25
		 84	[  0]	CALL 	 29	2	2	; slot29 = tostring(slot30)
		 85	[  0]	CAT  	 27	27	29	; slot27 = tostring .. slot28 .. tostring
		 86	[  0]	TGETV	 27	3	27	; slot27 = slot3[slot27]
		 87	[  0]	ISEQV	 26		17	; if slot26 == slot17
		 88	[  0]	JMP  	 28		48	; 	goto 137
		 89	[  0]	ISEQS	 26		11	; if slot26 == "Blank"
		 90	[  0]	JMP  	 28		46	; 	goto 137
		 91	[  0]	UGET 	 28		0	; slot28 = uv0"unknwon"
		 92	[  0]	TGETV	 28	28	26	; slot28 = uv0"unknown"[slot26]
		 93	[  0]	IST  	   		28	; if slot28
		 94	[  0]	JMP  	 28		42	; 	goto 137
		 95	[  0]	IST  	   		27	; if slot27
		 96	[  0]	JMP  	 28		40	; 	goto 137
		 97	[  0]	UGET 	 28		1	; slot28 = uv1"unknwon"
		 98	[  0]	MOV  	 30		0	; slot30 = slot0
		 99	[  0]	CALL 	 28	2	2	; slot28 = uv1"unknown"(tostring)
		100	[  0]	TGETV	 29	28	24	; slot29 = uv1"unknown"[slot24]
		101	[  0]	TSETV	 17	29	25	; slot29[slot25] = slot17
		102	[  0]	MOV  	 29		2	; slot29 = slot2
		103	[  0]	MOV  	 31		28	; slot31 = uv1"unknown"
		104	[  0]	CALL 	 29	3	2	; slot29, slot30 = slot29(slot30)
		105	[  0]	ISF  	   		29	; if not slot29
		106	[  0]	JMP  	 31		30	; 	goto 137
		107	[  0]	LEN  	 31		29	; slot31 = #slot29
		108	[  0]	ISNEN	 31		0	; if slot31 ~= 1
		109	[  0]	JMP  	 31		27	; 	goto 137
		110	[  0]	UGET 	 31		2	; slot31 = uv2"unknwon"
		111	[  0]	MOV  	 33		28	; slot33 = uv1"unknown"
		112	[  0]	CALL 	 31	2	2	; slot31 = uv2"unknown"(slot32)
		113	[  0]	TGETV	 32	5	31	; slot32 = slot5[uv2"unknown"]
		114	[  0]	IST  	   		32	; if slot32
		115	[  0]	JMP  	 32		21	; 	goto 137
		116	[  0]	KPRI 	 32		2	; slot32 = true
		117	[  0]	TSETV	 32	5	31	; slot5[uv2"unknown"] = slot32
		118	[  0]	LEN  	 32		4	; slot32 = #slot4
		119	[  0]	ADDVN	 32	32	0	; slot32 = slot32 + 1
		120	[  0]	TDUP 	 33		8	; slot33 = copy table#k8
		121	[  0]	TSETS	 24	33	7	; slot33.row = slot24
		122	[  0]	TSETS	 25	33	6	; slot33.col = slot25
		123	[  0]	TSETS	 26	33	5	; slot33.from = slot26
		124	[  0]	TSETS	 17	33	4	; slot33.symbol = slot17
		125	[  0]	TGETB	 34	29	1	; slot34 = slot29[1]
		126	[  0]	TSETS	 34	33	3	; slot33.lineId = slot34
		127	[  0]	UGET 	 34		3	; slot34 = uv3"unknwon"
		128	[  0]	TGETB	 36	29	1	; slot36 = slot29[1]
		129	[  0]	CALL 	 34	2	2	; slot34 = uv3"unknown"(slot35)
		130	[  0]	TSETS	 34	33	2	; slot33.lineKind = uv3"unknown"
		131	[  0]	TSETS	 28	33	1	; slot33.grid = uv1"unknown"
		132	[  0]	ISTC 	 34		30	; slot34 = slot30; if slot30
		133	[  0]	JMP  	 34		1	; 	goto 135
		134	[  0]	MOV  	 34		17	; slot34 = slot17
		135	[  0]	TSETS	 34	33	0	; slot33.winSymbol = slot34
		136	[  0]	TSETV	 33	4	32	; slot4[slot32] = slot33
		137	[  0]	ITERC	 22	3	3	; slot22, slot23, slot24 = ipairs, slot20, slot21; slot22, slot23 = ipairs(slot20, slot21)
		138	[  0]	ITERL	 22		-70	; slot21 = slot22; if slot22 != nil goto 69
		139	[  0]	ITERN	 17	3	3	; slot17, slot18, slot19 = pairs, slot15, slot16; slot17, slot18 = pairs(slot15, slot16)
		140	[  0]	ITERL	 17		-84	; slot16 = slot17; if slot17 != nil goto 57
		141	[  0]	ITERC	 10	3	3	; slot10, slot11, slot12 = ipairs, slot8, slot9; slot10, slot11 = ipairs(slot8, slot9)
		142	[  0]	ITERL	 10		-119	; slot9 = slot10; if slot10 != nil goto 24
		143	[  0]	RET1 	  4		2	; return slot4
	 35	[  0]	TSETS	 13	1	20	; slot1.collectSingleCellCorrectionCandidates = slot13
	 36	[  0]	FNEW 	 13		17	; N/A:0-0: 2 args, 2 upvalues, 17 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		3	; 	goto 6
		  3	[  0]	LEN  	  2		0	; slot2 = #slot0
		  4	[  0]	ISNEN	  2		0	; if slot2 ~= 0
		  5	[  0]	JMP  	  2		2	; 	goto 8
		  6	[  0]	KPRI 	  2		0	; slot2 = nil
		  7	[  0]	RET1 	  2		2	; return slot2
		  8	[  0]	IST  	   		1	; if slot1
		  9	[  0]	JMP  	  2		2	; 	goto 12
		 10	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		 11	[  0]	TGETS	  1	2	7	; slot1 = math.random
		 12	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 13	[  0]	ISF  	   		2	; if not uv0"unknown"
		 14	[  0]	JMP  	  3		9	; 	goto 24
		 15	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 16	[  0]	TGETS	  2	2	6	; slot2 = uv0"unknown".slot
		 17	[  0]	ISF  	   		2	; if not uv0"unknown".slot
		 18	[  0]	JMP  	  3		5	; 	goto 24
		 19	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 20	[  0]	TGETS	  2	2	6	; slot2 = uv0"unknown".slot
		 21	[  0]	TGETS	  2	2	5	; slot2 = uv0"unknown".slot.symbolWeights
		 22	[  0]	IST  	   		2	; if uv0"unknown".slot.symbolWeights
		 23	[  0]	JMP  	  3		1	; 	goto 25
		 24	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		 25	[  0]	KSHORT	  3		0	; slot3 = 0
		 26	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 27	[  0]	KSHORT	  5		0	; slot5 = 0
		 28	[  0]	GGET 	  6		4	; slot6 = _env["ipairs"]
		 29	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 30	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		 31	[  0]	JMP  	  9		14	; 	goto 46
		 32	[  0]	GGET 	 11		8	; slot11 = _env["math"]
		 33	[  0]	TGETS	 11	11	3	; slot11 = math.max
		 34	[  0]	KSHORT	 13		0	; slot13 = 0
		 35	[  0]	GGET 	 14		2	; slot14 = _env["tonumber"]
		 36	[  0]	TGETV	 16	2	10	; slot16 = slot2[slot10]
		 37	[  0]	IST  	   		16	; if slot16
		 38	[  0]	JMP  	 17		1	; 	goto 40
		 39	[  0]	KSHORT	 16		0	; slot16 = 0
		 40	[  0]	CALL 	 14	2	2	; slot14 = tonumber(slot15)
		 41	[  0]	IST  	   		14	; if tonumber
		 42	[  0]	JMP  	 15		1	; 	goto 44
		 43	[  0]	KSHORT	 14		0	; slot14 = 0
		 44	[  0]	CALL 	 11	2	3	; slot11 = math.max(slot12, slot13)
		 45	[  0]	ADDVV	  5	5	11	; slot5 = slot5 + math.max
		 46	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, uv1"unknown"; slot9, slot10 = ipairs(slot7, uv1"unknown")
		 47	[  0]	ITERL	  9		-16	; uv1"unknown" = slot9; if slot9 != nil goto 32
		 48	[  0]	GGET 	  6		4	; slot6 = _env["ipairs"]
		 49	[  0]	MOV  	  8		0	; slot8 = slot0
		 50	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		 51	[  0]	JMP  	  9		34	; 	goto 86
		 52	[  0]	KSHORT	 11		0	; slot11 = 0
		 53	[  0]	ISGE 	 11		5	; if slot11 >= slot5
		 54	[  0]	JMP  	 11		17	; 	goto 72
		 55	[  0]	GGET 	 11		8	; slot11 = _env["math"]
		 56	[  0]	TGETS	 11	11	3	; slot11 = math.max
		 57	[  0]	KSHORT	 13		0	; slot13 = 0
		 58	[  0]	GGET 	 14		2	; slot14 = _env["tonumber"]
		 59	[  0]	TGETS	 16	10	1	; slot16 = slot10.symbol
		 60	[  0]	TGETV	 16	2	16	; slot16 = slot2[<unknown table>.symbol]
		 61	[  0]	IST  	   		16	; if slot16
		 62	[  0]	JMP  	 17		1	; 	goto 64
		 63	[  0]	KSHORT	 16		0	; slot16 = 0
		 64	[  0]	CALL 	 14	2	2	; slot14 = tonumber(slot15)
		 65	[  0]	IST  	   		14	; if tonumber
		 66	[  0]	JMP  	 15		1	; 	goto 68
		 67	[  0]	KSHORT	 14		0	; slot14 = 0
		 68	[  0]	CALL 	 11	2	3	; slot11 = math.max(slot12, slot13)
		 69	[  0]	DIVVV	 11	11	5	; slot11 = math.max / slot5
		 70	[  0]	IST  	   		11	; if slot11
		 71	[  0]	JMP  	 12		1	; 	goto 73
		 72	[  0]	KSHORT	 11		0	; slot11 = 0
		 73	[  0]	KSHORT	 12		0	; slot12 = 0
		 74	[  0]	ISGE 	 12		11	; if slot12 >= slot11
		 75	[  0]	JMP  	 12		7	; 	goto 83
		 76	[  0]	KSHORT	 12		1	; slot12 = 1
		 77	[  0]	ISGE 	 11		12	; if slot11 >= slot12
		 78	[  0]	JMP  	 12		4	; 	goto 83
		 79	[  0]	SUBNV	 12	11	1	; slot12 = 1 - slot11
		 80	[  0]	DIVVV	 12	11	12	; slot12 = slot11 / slot12
		 81	[  0]	IST  	   		12	; if slot12
		 82	[  0]	JMP  	 13		1	; 	goto 84
		 83	[  0]	KSHORT	 12		0	; slot12 = 0
		 84	[  0]	TSETV	 12	4	9	; slot4[slot9] = slot12
		 85	[  0]	ADDVV	  3	3	12	; slot3 = slot3 + slot12
		 86	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, slot8; slot9, slot10 = ipairs(slot7, slot8)
		 87	[  0]	ITERL	  9		-36	; slot8 = slot9; if slot9 != nil goto 52
		 88	[  0]	KSHORT	  6		0	; slot6 = 0
		 89	[  0]	ISGT 	  3		6	; if slot3 > slot6
		 90	[  0]	JMP  	  6		14	; 	goto 105
		 91	[  0]	GGET 	  6		8	; slot6 = _env["math"]
		 92	[  0]	TGETS	  6	6	3	; slot6 = math.max
		 93	[  0]	KSHORT	  8		1	; slot8 = 1
		 94	[  0]	GGET 	  9		8	; slot9 = _env["math"]
		 95	[  0]	TGETS	  9	9	0	; slot9 = math.floor
		 96	[  0]	MOV  	 11		1	; slot11 = math.random
		 97	[  0]	CALL 	 11	2	1	; slot11 = math.random()
		 98	[  0]	LEN  	 12		0	; slot12 = #slot0
		 99	[  0]	MULVV	 11	11	12	; slot11 = math.random * slot12
		100	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		101	[  0]	ADDVN	  9	9	1	; slot9 = math.floor + 1
		102	[  0]	CALL 	  6	2	3	; slot6 = math.max(slot7, slot8)
		103	[  0]	TGETV	  6	0	6	; slot6 = slot0[math.max]
		104	[  0]	RET1 	  6		2	; return slot6
		105	[  0]	MOV  	  6		1	; slot6 = math.random
		106	[  0]	CALL 	  6	2	1	; slot6 = math.random()
		107	[  0]	MULVV	  6	6	3	; slot6 = math.random * slot3
		108	[  0]	GGET 	  7		4	; slot7 = _env["ipairs"]
		109	[  0]	MOV  	  9		0	; slot9 = slot0
		110	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = ipairs(slot8)
		111	[  0]	JMP  	 10		6	; 	goto 118
		112	[  0]	TGETV	 12	4	10	; slot12 = slot4[slot10]
		113	[  0]	ISGE 	  6		12	; if slot6 >= slot12
		114	[  0]	JMP  	 12		1	; 	goto 116
		115	[  0]	RET1 	 11		2	; return slot11
		116	[  0]	TGETV	 12	4	10	; slot12 = slot4[slot10]
		117	[  0]	SUBVV	  6	6	12	; slot6 = slot6 - slot12
		118	[  0]	ITERC	 10	3	3	; slot10, slot11, slot12 = ipairs, slot8, slot9; slot10, slot11 = ipairs(slot8, slot9)
		119	[  0]	ITERL	 10		-8	; slot9 = slot10; if slot10 != nil goto 112
		120	[  0]	LEN  	  7		0	; slot7 = #slot0
		121	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		122	[  0]	RET1 	  7		2	; return slot7
	 37	[  0]	TSETS	 13	1	18	; slot1.chooseWeightedCorrectionCandidate = slot13
	 38	[  0]	FNEW 	 13		15	; N/A:0-0: 1 args, 5 upvalues, 20 slots
		
		;;;; constant tables ;;;;
		ktable#13 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  1		0	; slot1 = slot0; if not slot0
		  2	[  0]	JMP  	  1		1	; 	goto 4
		  3	[  0]	TGETS	  1	0	36	; slot1 = slot0.context
		  4	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  5	[  0]	TGETS	  2	2	35	; slot2 = uv0"unknown".getCorrectionChance
		  6	[  0]	MOV  	  4		1	; slot4 = <unknown table>.context
		  7	[  0]	CALL 	  2	3	2	; slot2, slot3 = uv0"unknown".getCorrectionChance(slot3)
		  8	[  0]	KSHORT	  4		0	; slot4 = 0
		  9	[  0]	ISGT 	  2		4	; if slot2 > slot4
		 10	[  0]	JMP  	  4		2	; 	goto 13
		 11	[  0]	KPRI 	  4		0	; slot4 = nil
		 12	[  0]	RET1 	  4		2	; return slot4
		 13	[  0]	ISF  	   		0	; if not slot0
		 14	[  0]	JMP  	  4		3	; 	goto 18
		 15	[  0]	TGETS	  4	0	34	; slot4 = slot0.random
		 16	[  0]	IST  	   		4	; if <unknown table>.random
		 17	[  0]	JMP  	  5		2	; 	goto 20
		 18	[  0]	GGET 	  4		33	; slot4 = _env["math"]
		 19	[  0]	TGETS	  4	4	34	; slot4 = math.random
		 20	[  0]	MOV  	  5		4	; slot5 = math.random
		 21	[  0]	CALL 	  5	2	1	; slot5 = math.random()
		 22	[  0]	ISGT 	  2		5	; if slot2 > math.random
		 23	[  0]	JMP  	  5		9	; 	goto 33
		 24	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 25	[  0]	TGETS	  5	5	32	; slot5 = uv1"unknown".telemetry
		 26	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 27	[  0]	TGETS	  6	6	32	; slot6 = uv1"unknown".telemetry
		 28	[  0]	TGETS	  6	6	31	; slot6 = uv1"unknown".telemetry.probabilityMiss
		 29	[  0]	ADDVN	  6	6	0	; slot6 = uv1"unknown".telemetry.probabilityMiss + 1
		 30	[  0]	TSETS	  6	5	31	; uv1"unknown".telemetry.probabilityMiss = slot6
		 31	[  0]	KPRI 	  5		0	; slot5 = nil
		 32	[  0]	RET1 	  5		2	; return slot5
		 33	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 34	[  0]	TGETS	  7	0	30	; slot7 = slot0.grid
		 35	[  0]	CALL 	  5	2	2	; slot5 = uv2"unknown"(slot6)
		 36	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 37	[  0]	TGETS	  6	6	29	; slot6 = uv0"unknown".collectSingleCellCorrectionCandidates
		 38	[  0]	TGETS	  8	0	30	; slot8 = slot0.grid
		 39	[  0]	TGETS	  9	0	28	; slot9 = slot0.lines
		 40	[  0]	TGETS	 10	0	27	; slot10 = slot0.evaluate
		 41	[  0]	TGETS	 11	0	26	; slot11 = slot0.protectedCells
		 42	[  0]	CALL 	  6	2	5	; slot6 = uv0"unknown".collectSingleCellCorrectionCandidates(<unknown table>.grid, <unknown table>.grid, <unknown table>.lines, <unknown table>.evaluate)
		 43	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 44	[  0]	TGETS	  7	7	25	; slot7 = uv0"unknown".chooseWeightedCorrectionCandidate
		 45	[  0]	MOV  	  9		6	; slot9 = uv0"unknown".collectSingleCellCorrectionCandidates
		 46	[  0]	MOV  	 10		4	; slot10 = math.random
		 47	[  0]	CALL 	  7	2	3	; slot7 = uv0"unknown".chooseWeightedCorrectionCandidate(<unknown table>.grid, uv0"unknown".collectSingleCellCorrectionCandidates)
		 48	[  0]	IST  	   		7	; if uv0"unknown".chooseWeightedCorrectionCandidate
		 49	[  0]	JMP  	  8		9	; 	goto 59
		 50	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 51	[  0]	TGETS	  8	8	32	; slot8 = uv1"unknown".telemetry
		 52	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 53	[  0]	TGETS	  9	9	32	; slot9 = uv1"unknown".telemetry
		 54	[  0]	TGETS	  9	9	24	; slot9 = uv1"unknown".telemetry.noCandidate
		 55	[  0]	ADDVN	  9	9	0	; slot9 = uv1"unknown".telemetry.noCandidate + 1
		 56	[  0]	TSETS	  9	8	24	; uv1"unknown".telemetry.noCandidate = slot9
		 57	[  0]	KPRI 	  8		0	; slot8 = nil
		 58	[  0]	RET1 	  8		2	; return slot8
		 59	[  0]	KSHORT	  8		1	; slot8 = 1
		 60	[  0]	TGETS	  9	7	30	; slot9 = uv0"unknown".chooseWeightedCorrectionCandidate.grid
		 61	[  0]	LEN  	  9		9	; slot9 = #uv0"unknown".chooseWeightedCorrectionCandidate.grid
		 62	[  0]	KSHORT	 10		1	; slot10 = 1
		 63	[  0]	FORI 	  8		14	; for <unknown table>.protectedCells = slot8,slot9,slot10 else goto 78
		 64	[  0]	KSHORT	 12		1	; slot12 = 1
		 65	[  0]	TGETS	 13	7	30	; slot13 = uv0"unknown".chooseWeightedCorrectionCandidate.grid
		 66	[  0]	TGETV	 13	13	11	; slot13 = uv0"unknown".chooseWeightedCorrectionCandidate.grid[slot11]
		 67	[  0]	LEN  	 13		13	; slot13 = #slot13
		 68	[  0]	KSHORT	 14		1	; slot14 = 1
		 69	[  0]	FORI 	 12		7	; for slot15 = slot12,slot13,slot14 else goto 77
		 70	[  0]	TGETS	 16	0	30	; slot16 = slot0.grid
		 71	[  0]	TGETV	 16	16	11	; slot16 = <unknown table>.grid[slot11]
		 72	[  0]	TGETS	 17	7	30	; slot17 = uv0"unknown".chooseWeightedCorrectionCandidate.grid
		 73	[  0]	TGETV	 17	17	11	; slot17 = uv0"unknown".chooseWeightedCorrectionCandidate.grid[slot11]
		 74	[  0]	TGETV	 17	17	15	; slot17 = slot17[slot15]
		 75	[  0]	TSETV	 17	16	15	; slot16[slot15] = slot17
		 76	[  0]	FORL 	 12		-7	; slot15 = slot15 + slot14; if cmp(slot15, sign slot14,  slot13) goto 70
		 77	[  0]	FORL 	  8		-14	; slot11 = slot11 + slot10; if cmp(slot11, sign slot10,  slot9) goto 64
		 78	[  0]	ISEQS	  3		23	; if slot3 == "wave2"
		 79	[  0]	JMP  	  8		2	; 	goto 82
		 80	[  0]	ISNES	  3		22	; if slot3 ~= "wave3"
		 81	[  0]	JMP  	  8		3	; 	goto 85
		 82	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 83	[  0]	KPRI 	  9		2	; slot9 = true
		 84	[  0]	TSETS	  9	8	21	; uv1"unknown".earlyCorrectionUsedThisWave = slot9
		 85	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 86	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 87	[  0]	TGETS	  9	9	20	; slot9 = uv1"unknown".totalCorrections
		 88	[  0]	ADDVN	  9	9	0	; slot9 = uv1"unknown".totalCorrections + 1
		 89	[  0]	TSETS	  9	8	20	; uv1"unknown".totalCorrections = slot9
		 90	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 91	[  0]	TGETS	  8	8	32	; slot8 = uv1"unknown".telemetry
		 92	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 93	[  0]	TGETS	  9	9	32	; slot9 = uv1"unknown".telemetry
		 94	[  0]	TGETS	  9	9	19	; slot9 = uv1"unknown".telemetry.correctionWins
		 95	[  0]	ADDVN	  9	9	0	; slot9 = uv1"unknown".telemetry.correctionWins + 1
		 96	[  0]	TSETS	  9	8	19	; uv1"unknown".telemetry.correctionWins = slot9
		 97	[  0]	ISNES	  3		23	; if slot3 ~= "wave2"
		 98	[  0]	JMP  	  8		8	; 	goto 107
		 99	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		100	[  0]	TGETS	  8	8	32	; slot8 = uv1"unknown".telemetry
		101	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		102	[  0]	TGETS	  9	9	32	; slot9 = uv1"unknown".telemetry
		103	[  0]	TGETS	  9	9	18	; slot9 = uv1"unknown".telemetry.wave2Corrections
		104	[  0]	ADDVN	  9	9	0	; slot9 = uv1"unknown".telemetry.wave2Corrections + 1
		105	[  0]	TSETS	  9	8	18	; uv1"unknown".telemetry.wave2Corrections = slot9
		106	[  0]	JMP  	  8		17	; 	goto 124
		107	[  0]	ISNES	  3		22	; if slot3 ~= "wave3"
		108	[  0]	JMP  	  8		8	; 	goto 117
		109	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		110	[  0]	TGETS	  8	8	32	; slot8 = uv1"unknown".telemetry
		111	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		112	[  0]	TGETS	  9	9	32	; slot9 = uv1"unknown".telemetry
		113	[  0]	TGETS	  9	9	17	; slot9 = uv1"unknown".telemetry.wave3Corrections
		114	[  0]	ADDVN	  9	9	0	; slot9 = uv1"unknown".telemetry.wave3Corrections + 1
		115	[  0]	TSETS	  9	8	17	; uv1"unknown".telemetry.wave3Corrections = slot9
		116	[  0]	JMP  	  8		7	; 	goto 124
		117	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		118	[  0]	TGETS	  8	8	32	; slot8 = uv1"unknown".telemetry
		119	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		120	[  0]	TGETS	  9	9	32	; slot9 = uv1"unknown".telemetry
		121	[  0]	TGETS	  9	9	16	; slot9 = uv1"unknown".telemetry.longTermCorrections
		122	[  0]	ADDVN	  9	9	0	; slot9 = uv1"unknown".telemetry.longTermCorrections + 1
		123	[  0]	TSETS	  9	8	16	; uv1"unknown".telemetry.longTermCorrections = slot9
		124	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		125	[  0]	TGETS	  8	8	32	; slot8 = uv1"unknown".telemetry
		126	[  0]	TDUP 	  9		13	; slot9 = copy table#k13
		127	[  0]	TGETS	 10	1	14	; slot10 = <unknown table>.context.prospectiveLossStreak
		128	[  0]	TSETS	 10	9	12	; slot9.lossStreak = <unknown table>.context.prospectiveLossStreak
		129	[  0]	TGETS	 10	1	11	; slot10 = <unknown table>.context.prospectiveLuckDebt
		130	[  0]	TSETS	 10	9	10	; slot9.luckDebt = <unknown table>.context.prospectiveLuckDebt
		131	[  0]	TGETS	 10	7	9	; slot10 = uv0"unknown".chooseWeightedCorrectionCandidate.symbol
		132	[  0]	TSETS	 10	9	9	; slot9.symbol = uv0"unknown".chooseWeightedCorrectionCandidate.symbol
		133	[  0]	TGETS	 10	7	8	; slot10 = uv0"unknown".chooseWeightedCorrectionCandidate.lineId
		134	[  0]	TSETS	 10	9	8	; slot9.lineId = uv0"unknown".chooseWeightedCorrectionCandidate.lineId
		135	[  0]	TGETS	 10	7	7	; slot10 = uv0"unknown".chooseWeightedCorrectionCandidate.lineKind
		136	[  0]	TSETS	 10	9	7	; slot9.lineKind = uv0"unknown".chooseWeightedCorrectionCandidate.lineKind
		137	[  0]	UGET 	 10		3	; slot10 = uv3"unknwon"
		138	[  0]	MOV  	 12		5	; slot12 = uv2"unknown"
		139	[  0]	CALL 	 10	2	2	; slot10 = uv3"unknown"(slot11)
		140	[  0]	TSETS	 10	9	6	; slot9.beforeGrid = uv3"unknown"
		141	[  0]	UGET 	 10		3	; slot10 = uv3"unknwon"
		142	[  0]	TGETS	 12	7	30	; slot12 = uv0"unknown".chooseWeightedCorrectionCandidate.grid
		143	[  0]	CALL 	 10	2	2	; slot10 = uv3"unknown"(slot11)
		144	[  0]	TSETS	 10	9	5	; slot9.afterGrid = uv3"unknown"
		145	[  0]	TSETS	  3	9	4	; slot9.correctionType = slot3
		146	[  0]	TSETS	  9	8	15	; uv1"unknown".telemetry.lastCorrection = slot9
		147	[  0]	UGET 	  8		4	; slot8 = uv4"unknwon"
		148	[  0]	CALL 	  8	2	1	; slot8 = uv4"unknown"()
		149	[  0]	TGETS	  8	8	3	; slot8 = uv4"unknown".debugLogs
		150	[  0]	ISF  	   		8	; if not uv4"unknown".debugLogs
		151	[  0]	JMP  	  9		19	; 	goto 171
		152	[  0]	GGET 	  8		2	; slot8 = _env["print"]
		153	[  0]	KSTR 	 10		1	; slot10 = "[hidden-luck] %s streak=%d debt=%.4f symbol=%s line=%d before=%s after=%s"
		154	[  0]	MOV  	 12		10	; slot12 = slot10
		155	[  0]	TGETS	 10	10	0	; slot10 = slot10.format
		156	[  0]	MOV  	 13		3	; slot13 = slot3
		157	[  0]	TGETS	 14	1	14	; slot14 = <unknown table>.context.prospectiveLossStreak
		158	[  0]	TGETS	 15	1	11	; slot15 = <unknown table>.context.prospectiveLuckDebt
		159	[  0]	TGETS	 16	7	9	; slot16 = uv0"unknown".chooseWeightedCorrectionCandidate.symbol
		160	[  0]	TGETS	 17	7	8	; slot17 = uv0"unknown".chooseWeightedCorrectionCandidate.lineId
		161	[  0]	UGET 	 18		1	; slot18 = uv1"unknwon"
		162	[  0]	TGETS	 18	18	32	; slot18 = uv1"unknown".telemetry
		163	[  0]	TGETS	 18	18	15	; slot18 = uv1"unknown".telemetry.lastCorrection
		164	[  0]	TGETS	 18	18	6	; slot18 = uv1"unknown".telemetry.lastCorrection.beforeGrid
		165	[  0]	UGET 	 19		1	; slot19 = uv1"unknwon"
		166	[  0]	TGETS	 19	19	32	; slot19 = uv1"unknown".telemetry
		167	[  0]	TGETS	 19	19	15	; slot19 = uv1"unknown".telemetry.lastCorrection
		168	[  0]	TGETS	 19	19	5	; slot19 = uv1"unknown".telemetry.lastCorrection.afterGrid
		169	[  0]	CALL 	 10	0	9	; MULTRES = <unknown table>.format(slot11, slot12, slot13, <unknown table>.context.prospectiveLossStreak, <unknown table>.context.prospectiveLuckDebt, uv0"unknown".chooseWeightedCorrectionCandidate.symbol, uv0"unknown".chooseWeightedCorrectionCandidate.lineId, uv1"unknown".telemetry.lastCorrection.beforeGrid)
		170	[  0]	CALLM	  8	1	0	;  = print(, ...MULTRES)
		171	[  0]	RET1 	  7		2	; return uv0"unknown".chooseWeightedCorrectionCandidate
	 39	[  0]	TSETS	 13	1	16	; slot1.tryCorrection = slot13
	 40	[  0]	FNEW 	 13		13	; N/A:0-0: 3 args, 3 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  3		3	; 	goto 6
		  3	[  0]	TGETS	  3	0	14	; slot3 = slot0.finalized
		  4	[  0]	ISF  	   		3	; if not <unknown table>.finalized
		  5	[  0]	JMP  	  4		2	; 	goto 8
		  6	[  0]	KPRI 	  3		1	; slot3 = false
		  7	[  0]	RET1 	  3		2	; return slot3
		  8	[  0]	KPRI 	  3		2	; slot3 = true
		  9	[  0]	TSETS	  3	0	14	; slot0.finalized = slot3
		 10	[  0]	TGETS	  3	0	13	; slot3 = slot0.eligible
		 11	[  0]	ISF  	   		3	; if not <unknown table>.eligible
		 12	[  0]	JMP  	  4		50	; 	goto 63
		 13	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 14	[  0]	CALL 	  3	2	1	; slot3 = uv0"unknown"()
		 15	[  0]	GGET 	  4		12	; slot4 = _env["tonumber"]
		 16	[  0]	TGETS	  6	3	11	; slot6 = uv0"unknown".naturalWinProbability
		 17	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		 18	[  0]	IST  	   		4	; if tonumber
		 19	[  0]	JMP  	  5		1	; 	goto 21
		 20	[  0]	KNUM 	  4		0	; slot4 = 0.2274
		 21	[  0]	GGET 	  5		12	; slot5 = _env["tonumber"]
		 22	[  0]	TGETS	  7	3	10	; slot7 = uv0"unknown".debtMin
		 23	[  0]	CALL 	  5	2	2	; slot5 = tonumber(uv0"unknown".naturalWinProbability)
		 24	[  0]	IST  	   		5	; if tonumber
		 25	[  0]	JMP  	  6		1	; 	goto 27
		 26	[  0]	KSHORT	  5		65533	; slot5 = 65533
		 27	[  0]	GGET 	  6		12	; slot6 = _env["tonumber"]
		 28	[  0]	TGETS	  8	3	9	; slot8 = uv0"unknown".debtMax
		 29	[  0]	CALL 	  6	2	2	; slot6 = tonumber(uv0"unknown".debtMin)
		 30	[  0]	IST  	   		6	; if tonumber
		 31	[  0]	JMP  	  7		1	; 	goto 33
		 32	[  0]	KSHORT	  6		3	; slot6 = 3
		 33	[  0]	ISF  	   		1	; if not slot1
		 34	[  0]	JMP  	  7		14	; 	goto 49
		 35	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 36	[  0]	KSHORT	  8		0	; slot8 = 0
		 37	[  0]	TSETS	  8	7	8	; uv1"unknown".paidLossStreak = slot8
		 38	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 39	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
		 40	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
		 41	[  0]	TGETS	 10	10	7	; slot10 = uv1"unknown".luckDebt
		 42	[  0]	SUBNV	 11	4	1	; slot11 = 1 - slot4
		 43	[  0]	SUBVV	 10	10	11	; slot10 = uv1"unknown".luckDebt - slot11
		 44	[  0]	MOV  	 11		5	; slot11 = slot5
		 45	[  0]	MOV  	 12		6	; slot12 = slot6
		 46	[  0]	CALL 	  8	2	4	; slot8 = uv2"unknown"(slot9, slot10, slot11)
		 47	[  0]	TSETS	  8	7	7	; uv1"unknown".luckDebt = uv2"unknown"
		 48	[  0]	JMP  	  7		14	; 	goto 63
		 49	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 50	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 51	[  0]	TGETS	  8	8	8	; slot8 = uv1"unknown".paidLossStreak
		 52	[  0]	ADDVN	  8	8	1	; slot8 = uv1"unknown".paidLossStreak + 1
		 53	[  0]	TSETS	  8	7	8	; uv1"unknown".paidLossStreak = slot8
		 54	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 55	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
		 56	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
		 57	[  0]	TGETS	 10	10	7	; slot10 = uv1"unknown".luckDebt
		 58	[  0]	ADDVV	 10	10	4	; slot10 = uv1"unknown".luckDebt + slot4
		 59	[  0]	MOV  	 11		5	; slot11 = slot5
		 60	[  0]	MOV  	 12		6	; slot12 = slot6
		 61	[  0]	CALL 	  8	2	4	; slot8 = uv2"unknown"(slot9, slot10, slot11)
		 62	[  0]	TSETS	  8	7	7	; uv1"unknown".luckDebt = uv2"unknown"
		 63	[  0]	ISF  	   		1	; if not slot1
		 64	[  0]	JMP  	  3		29	; 	goto 94
		 65	[  0]	ISNES	  2		6	; if slot2 ~= "nudge"
		 66	[  0]	JMP  	  3		8	; 	goto 75
		 67	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 68	[  0]	TGETS	  3	3	5	; slot3 = uv1"unknown".telemetry
		 69	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 70	[  0]	TGETS	  4	4	5	; slot4 = uv1"unknown".telemetry
		 71	[  0]	TGETS	  4	4	4	; slot4 = uv1"unknown".telemetry.nudgeWins
		 72	[  0]	ADDVN	  4	4	1	; slot4 = uv1"unknown".telemetry.nudgeWins + 1
		 73	[  0]	TSETS	  4	3	4	; uv1"unknown".telemetry.nudgeWins = slot4
		 74	[  0]	JMP  	  3		19	; 	goto 94
		 75	[  0]	ISNES	  2		3	; if slot2 ~= "core"
		 76	[  0]	JMP  	  3		8	; 	goto 85
		 77	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 78	[  0]	TGETS	  3	3	5	; slot3 = uv1"unknown".telemetry
		 79	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 80	[  0]	TGETS	  4	4	5	; slot4 = uv1"unknown".telemetry
		 81	[  0]	TGETS	  4	4	2	; slot4 = uv1"unknown".telemetry.automaticCoreWins
		 82	[  0]	ADDVN	  4	4	1	; slot4 = uv1"unknown".telemetry.automaticCoreWins + 1
		 83	[  0]	TSETS	  4	3	2	; uv1"unknown".telemetry.automaticCoreWins = slot4
		 84	[  0]	JMP  	  3		9	; 	goto 94
		 85	[  0]	ISNES	  2		1	; if slot2 ~= "natural"
		 86	[  0]	JMP  	  3		7	; 	goto 94
		 87	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 88	[  0]	TGETS	  3	3	5	; slot3 = uv1"unknown".telemetry
		 89	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 90	[  0]	TGETS	  4	4	5	; slot4 = uv1"unknown".telemetry
		 91	[  0]	TGETS	  4	4	0	; slot4 = uv1"unknown".telemetry.naturalWins
		 92	[  0]	ADDVN	  4	4	1	; slot4 = uv1"unknown".telemetry.naturalWins + 1
		 93	[  0]	TSETS	  4	3	0	; uv1"unknown".telemetry.naturalWins = slot4
		 94	[  0]	KPRI 	  3		2	; slot3 = true
		 95	[  0]	RET1 	  3		2	; return slot3
	 41	[  0]	TSETS	 13	1	14	; slot1.finalizePaidSpinOutcome = slot13
	 42	[  0]	MOV  	  0		1	; slot0 = slot1
	 43	[  0]	UCLO 	  1		0	; nil uvs >= r1; goto 44
	 44	[  0]	KPRI 	  1		0	; slot1 = nil
	 45	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
	 46	[  0]	KSHORT	  3		4	; slot3 = 4
	 47	[  0]	KSHORT	  4		3	; slot4 = 3
	 48	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
	 49	[  0]	FNEW 	  6		12	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	KPRI 	  1		0	; slot1 = nil
		  3	[  0]	TSETS	  1	0	2	; uv0"unknown".currentWave = slot1
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	KPRI 	  1		1	; slot1 = false
		  6	[  0]	TSETS	  1	0	1	; uv0"unknown".currentWaveHadSpin = slot1
		  7	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  8	[  0]	KPRI 	  1		1	; slot1 = false
		  9	[  0]	TSETS	  1	0	0	; uv0"unknown".currentWaveWon = slot1
		 10	[  0]	RET0 	  0		1	; return
	 50	[  0]	FNEW 	  7		11	; N/A:0-0: 0 args, 2 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	KSHORT	  1		0	; slot1 = 0
		  3	[  0]	TSETS	  1	0	1	; uv0"unknown".missedWaves = slot1
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	KPRI 	  1		1	; slot1 = false
		  6	[  0]	TSETS	  1	0	0	; uv0"unknown".guaranteePending = slot1
		  7	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  8	[  0]	CALL 	  0	1	1	;  = uv1"unknown"()
		  9	[  0]	RET0 	  0		1	; return
	 51	[  0]	TSETS	  7	2	42	; slot2.reset = slot7
	 52	[  0]	FNEW 	  7		9	; N/A:0-0: 3 args, 2 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		8	; slot3 = _env["math"]
		  2	[  0]	TGETS	  3	3	7	; slot3 = math.floor
		  3	[  0]	GGET 	  5		6	; slot5 = _env["tonumber"]
		  4	[  0]	ISTC 	  7		0	; slot7 = slot0; if slot0
		  5	[  0]	JMP  	  7		1	; 	goto 7
		  6	[  0]	KSHORT	  7		0	; slot7 = 0
		  7	[  0]	CALL 	  5	2	2	; slot5 = tonumber(slot6)
		  8	[  0]	IST  	   		5	; if tonumber
		  9	[  0]	JMP  	  6		1	; 	goto 11
		 10	[  0]	KSHORT	  5		0	; slot5 = 0
		 11	[  0]	CALL 	  3	2	2	; slot3 = math.floor(slot4)
		 12	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 13	[  0]	ISLT 	  3		4	; if math.floor < uv0"unknown"
		 14	[  0]	JMP  	  4		5	; 	goto 20
		 15	[  0]	ISF  	   		2	; if not slot2
		 16	[  0]	JMP  	  4		5	; 	goto 22
		 17	[  0]	TGETS	  4	2	5	; slot4 = slot2.exclude
		 18	[  0]	ISNEP	  4		2	; if <unknown table>.exclude ~= true
		 19	[  0]	JMP  	  4		2	; 	goto 22
		 20	[  0]	KPRI 	  4		1	; slot4 = false
		 21	[  0]	RET1 	  4		2	; return slot4
		 22	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 23	[  0]	TSETS	  3	4	4	; uv1"unknown".currentWave = math.floor
		 24	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 25	[  0]	KPRI 	  5		2	; slot5 = true
		 26	[  0]	TSETS	  5	4	3	; uv1"unknown".currentWaveHadSpin = slot5
		 27	[  0]	ISNEP	  1		2	; if slot1 ~= true
		 28	[  0]	JMP  	  4		9	; 	goto 38
		 29	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 30	[  0]	KPRI 	  5		2	; slot5 = true
		 31	[  0]	TSETS	  5	4	2	; uv1"unknown".currentWaveWon = slot5
		 32	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 33	[  0]	KSHORT	  5		0	; slot5 = 0
		 34	[  0]	TSETS	  5	4	1	; uv1"unknown".missedWaves = slot5
		 35	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 36	[  0]	KPRI 	  5		1	; slot5 = false
		 37	[  0]	TSETS	  5	4	0	; uv1"unknown".guaranteePending = slot5
		 38	[  0]	KPRI 	  4		2	; slot4 = true
		 39	[  0]	RET1 	  4		2	; return slot4
	 53	[  0]	TSETS	  7	2	10	; slot2.noteSpinResult = slot7
	 54	[  0]	FNEW 	  7		7	; N/A:0-0: 1 args, 4 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		9	; slot1 = _env["math"]
		  2	[  0]	TGETS	  1	1	8	; slot1 = math.floor
		  3	[  0]	GGET 	  3		7	; slot3 = _env["tonumber"]
		  4	[  0]	ISTC 	  5		0	; slot5 = slot0; if slot0
		  5	[  0]	JMP  	  5		5	; 	goto 11
		  6	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		  7	[  0]	TGETS	  5	5	6	; slot5 = uv0"unknown".currentWave
		  8	[  0]	IST  	   		5	; if uv0"unknown".currentWave
		  9	[  0]	JMP  	  6		1	; 	goto 11
		 10	[  0]	KSHORT	  5		0	; slot5 = 0
		 11	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		 12	[  0]	IST  	   		3	; if tonumber
		 13	[  0]	JMP  	  4		1	; 	goto 15
		 14	[  0]	KSHORT	  3		0	; slot3 = 0
		 15	[  0]	CALL 	  1	2	2	; slot1 = math.floor(slot2)
		 16	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 17	[  0]	ISGE 	  1		2	; if slot1 >= uv1"unknown"
		 18	[  0]	JMP  	  2		4	; 	goto 23
		 19	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 20	[  0]	CALL 	  2	1	1	;  = uv2"unknown"()
		 21	[  0]	KPRI 	  2		1	; slot2 = false
		 22	[  0]	RET1 	  2		2	; return slot2
		 23	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 24	[  0]	TGETS	  2	2	6	; slot2 = uv0"unknown".currentWave
		 25	[  0]	ISNEV	  2		1	; if uv0"unknown".currentWave ~= slot1
		 26	[  0]	JMP  	  2		44	; 	goto 71
		 27	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 28	[  0]	TGETS	  2	2	5	; slot2 = uv0"unknown".currentWaveHadSpin
		 29	[  0]	ISF  	   		2	; if not uv0"unknown".currentWaveHadSpin
		 30	[  0]	JMP  	  3		40	; 	goto 71
		 31	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 32	[  0]	TGETS	  2	2	4	; slot2 = uv0"unknown".currentWaveWon
		 33	[  0]	ISF  	   		2	; if not uv0"unknown".currentWaveWon
		 34	[  0]	JMP  	  3		7	; 	goto 42
		 35	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 36	[  0]	KSHORT	  3		0	; slot3 = 0
		 37	[  0]	TSETS	  3	2	3	; uv0"unknown".missedWaves = slot3
		 38	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 39	[  0]	KPRI 	  3		1	; slot3 = false
		 40	[  0]	TSETS	  3	2	2	; uv0"unknown".guaranteePending = slot3
		 41	[  0]	JMP  	  2		29	; 	goto 71
		 42	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 43	[  0]	GGET 	  3		9	; slot3 = _env["math"]
		 44	[  0]	TGETS	  3	3	1	; slot3 = math.min
		 45	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
		 46	[  0]	GGET 	  6		9	; slot6 = _env["math"]
		 47	[  0]	TGETS	  6	6	0	; slot6 = math.max
		 48	[  0]	KSHORT	  8		0	; slot8 = 0
		 49	[  0]	GGET 	  9		7	; slot9 = _env["tonumber"]
		 50	[  0]	UGET 	 11		0	; slot11 = uv0"unknwon"
		 51	[  0]	TGETS	 11	11	3	; slot11 = uv0"unknown".missedWaves
		 52	[  0]	IST  	   		11	; if uv0"unknown".missedWaves
		 53	[  0]	JMP  	 12		1	; 	goto 55
		 54	[  0]	KSHORT	 11		0	; slot11 = 0
		 55	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
		 56	[  0]	IST  	   		9	; if tonumber
		 57	[  0]	JMP  	 10		1	; 	goto 59
		 58	[  0]	KSHORT	  9		0	; slot9 = 0
		 59	[  0]	CALL 	  6	2	3	; slot6 = math.max(slot7, slot8)
		 60	[  0]	ADDVN	  6	6	0	; slot6 = math.max + 1
		 61	[  0]	CALL 	  3	2	3	; slot3 = math.min(slot4, uv3"unknown")
		 62	[  0]	TSETS	  3	2	3	; uv0"unknown".missedWaves = slot3
		 63	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 64	[  0]	TGETS	  2	2	3	; slot2 = uv0"unknown".missedWaves
		 65	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
		 66	[  0]	ISGT 	  3		2	; if uv3"unknown" > uv0"unknown".missedWaves
		 67	[  0]	JMP  	  2		3	; 	goto 71
		 68	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 69	[  0]	KPRI 	  3		2	; slot3 = true
		 70	[  0]	TSETS	  3	2	2	; uv0"unknown".guaranteePending = slot3
		 71	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 72	[  0]	CALL 	  2	1	1	;  = uv2"unknown"()
		 73	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 74	[  0]	TGETS	  2	2	2	; slot2 = uv0"unknown".guaranteePending
		 75	[  0]	ISEQP	  2		2	; if uv0"unknown".guaranteePending == true
		 76	[  0]	JMP  	  2		2	; 	goto 79
		 77	[  0]	KPRI 	  2		1	; slot2 = false
		 78	[  0]	JMP  	  3		1	; 	goto 80
		 79	[  0]	KPRI 	  2		2	; slot2 = true
		 80	[  0]	RET1 	  2		2	; return slot2
	 55	[  0]	TSETS	  7	2	8	; slot2.finishWave = slot7
	 56	[  0]	FNEW 	  7		5	; N/A:0-0: 1 args, 2 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		1	; 	goto 4
		  3	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
		  4	[  0]	GGET 	  1		10	; slot1 = _env["math"]
		  5	[  0]	TGETS	  1	1	9	; slot1 = math.floor
		  6	[  0]	GGET 	  3		8	; slot3 = _env["tonumber"]
		  7	[  0]	TGETS	  5	0	7	; slot5 = slot0.waveId
		  8	[  0]	IST  	   		5	; if <unknown table>.waveId
		  9	[  0]	JMP  	  6		1	; 	goto 11
		 10	[  0]	KSHORT	  5		0	; slot5 = 0
		 11	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		 12	[  0]	IST  	   		3	; if tonumber
		 13	[  0]	JMP  	  4		1	; 	goto 15
		 14	[  0]	KSHORT	  3		0	; slot3 = 0
		 15	[  0]	CALL 	  1	2	2	; slot1 = math.floor(slot2)
		 16	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 17	[  0]	ISLT 	  1		2	; if slot1 < uv0"unknown"
		 18	[  0]	JMP  	  2		4	; 	goto 23
		 19	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 20	[  0]	TGETS	  2	2	6	; slot2 = uv1"unknown".guaranteePending
		 21	[  0]	ISEQP	  2		2	; if uv1"unknown".guaranteePending == true
		 22	[  0]	JMP  	  2		2	; 	goto 25
		 23	[  0]	KPRI 	  2		1	; slot2 = false
		 24	[  0]	RET1 	  2		2	; return slot2
		 25	[  0]	TGETS	  2	0	5	; slot2 = slot0.excluded
		 26	[  0]	ISEQP	  2		2	; if <unknown table>.excluded == true
		 27	[  0]	JMP  	  2		3	; 	goto 31
		 28	[  0]	TGETS	  2	0	4	; slot2 = slot0.alreadyForced
		 29	[  0]	ISNEP	  2		2	; if <unknown table>.alreadyForced ~= true
		 30	[  0]	JMP  	  2		2	; 	goto 33
		 31	[  0]	KPRI 	  2		1	; slot2 = false
		 32	[  0]	RET1 	  2		2	; return slot2
		 33	[  0]	GGET 	  2		10	; slot2 = _env["math"]
		 34	[  0]	TGETS	  2	2	3	; slot2 = math.max
		 35	[  0]	KSHORT	  4		0	; slot4 = 0
		 36	[  0]	GGET 	  5		10	; slot5 = _env["math"]
		 37	[  0]	TGETS	  5	5	9	; slot5 = math.floor
		 38	[  0]	GGET 	  7		8	; slot7 = _env["tonumber"]
		 39	[  0]	TGETS	  9	0	2	; slot9 = slot0.futureSpins
		 40	[  0]	IST  	   		9	; if <unknown table>.futureSpins
		 41	[  0]	JMP  	 10		1	; 	goto 43
		 42	[  0]	KSHORT	  9		0	; slot9 = 0
		 43	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 44	[  0]	IST  	   		7	; if tonumber
		 45	[  0]	JMP  	  8		1	; 	goto 47
		 46	[  0]	KSHORT	  7		0	; slot7 = 0
		 47	[  0]	CALL 	  5	0	2	; MULTRES = math.floor(slot6)
		 48	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 49	[  0]	ADDVN	  3	2	0	; slot3 = math.max + 1
		 50	[  0]	TGETS	  4	0	1	; slot4 = slot0.random
		 51	[  0]	IST  	   		4	; if <unknown table>.random
		 52	[  0]	JMP  	  5		14	; 	goto 67
		 53	[  0]	GGET 	  4		0	; slot4 = _env["love"]
		 54	[  0]	ISF  	   		4	; if not love
		 55	[  0]	JMP  	  5		9	; 	goto 65
		 56	[  0]	GGET 	  4		0	; slot4 = _env["love"]
		 57	[  0]	TGETS	  4	4	10	; slot4 = love.math
		 58	[  0]	ISF  	   		4	; if not love.math
		 59	[  0]	JMP  	  5		5	; 	goto 65
		 60	[  0]	GGET 	  4		0	; slot4 = _env["love"]
		 61	[  0]	TGETS	  4	4	10	; slot4 = love.math
		 62	[  0]	TGETS	  4	4	1	; slot4 = love.math.random
		 63	[  0]	IST  	   		4	; if love.math.random
		 64	[  0]	JMP  	  5		2	; 	goto 67
		 65	[  0]	GGET 	  4		10	; slot4 = _env["math"]
		 66	[  0]	TGETS	  4	4	1	; slot4 = math.random
		 67	[  0]	KSHORT	  5		0	; slot5 = 0
		 68	[  0]	ISLE 	  2		5	; if math.max <= slot5
		 69	[  0]	JMP  	  5		7	; 	goto 77
		 70	[  0]	MOV  	  5		4	; slot5 = math.random
		 71	[  0]	CALL 	  5	2	1	; slot5 = math.random()
		 72	[  0]	DIVNV	  6	3	0	; slot6 = 1 / slot3
		 73	[  0]	ISLT 	  5		6	; if math.random < slot6
		 74	[  0]	JMP  	  5		2	; 	goto 77
		 75	[  0]	KPRI 	  5		1	; slot5 = false
		 76	[  0]	JMP  	  6		1	; 	goto 78
		 77	[  0]	KPRI 	  5		2	; slot5 = true
		 78	[  0]	ISF  	   		5	; if not slot5
		 79	[  0]	JMP  	  6		3	; 	goto 83
		 80	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 81	[  0]	KPRI 	  7		1	; slot7 = false
		 82	[  0]	TSETS	  7	6	6	; uv1"unknown".guaranteePending = slot7
		 83	[  0]	RET1 	  5		2	; return slot5
	 57	[  0]	TSETS	  7	2	6	; slot2.shouldForceSpin = slot7
	 58	[  0]	FNEW 	  7		4	; N/A:0-0: 0 args, 3 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		ktable#10 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TDUP 	  0		10	; slot0 = copy table#k10
		  2	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  3	[  0]	TSETS	  1	0	9	; slot0.minWave = uv0"unknown"
		  4	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  5	[  0]	TSETS	  1	0	8	; slot0.missedWavesRequired = uv1"unknown"
		  6	[  0]	GGET 	  1		7	; slot1 = _env["math"]
		  7	[  0]	TGETS	  1	1	6	; slot1 = math.max
		  8	[  0]	KSHORT	  3		0	; slot3 = 0
		  9	[  0]	GGET 	  4		5	; slot4 = _env["tonumber"]
		 10	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 11	[  0]	TGETS	  6	6	4	; slot6 = uv2"unknown".missedWaves
		 12	[  0]	IST  	   		6	; if uv2"unknown".missedWaves
		 13	[  0]	JMP  	  7		1	; 	goto 15
		 14	[  0]	KSHORT	  6		0	; slot6 = 0
		 15	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		 16	[  0]	IST  	   		4	; if tonumber
		 17	[  0]	JMP  	  5		1	; 	goto 19
		 18	[  0]	KSHORT	  4		0	; slot4 = 0
		 19	[  0]	CALL 	  1	2	3	; slot1 = math.max(slot2, slot3)
		 20	[  0]	TSETS	  1	0	4	; slot0.missedWaves = slot1
		 21	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 22	[  0]	TGETS	  1	1	3	; slot1 = uv2"unknown".guaranteePending
		 23	[  0]	ISEQP	  1		2	; if uv2"unknown".guaranteePending == true
		 24	[  0]	JMP  	  1		2	; 	goto 27
		 25	[  0]	KPRI 	  1		1	; slot1 = false
		 26	[  0]	JMP  	  2		1	; 	goto 28
		 27	[  0]	KPRI 	  1		2	; slot1 = true
		 28	[  0]	TSETS	  1	0	3	; slot0.guaranteePending = slot1
		 29	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 30	[  0]	TGETS	  1	1	2	; slot1 = uv2"unknown".currentWave
		 31	[  0]	TSETS	  1	0	2	; slot0.currentWave = uv2"unknown".currentWave
		 32	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 33	[  0]	TGETS	  1	1	1	; slot1 = uv2"unknown".currentWaveHadSpin
		 34	[  0]	ISEQP	  1		2	; if uv2"unknown".currentWaveHadSpin == true
		 35	[  0]	JMP  	  1		2	; 	goto 38
		 36	[  0]	KPRI 	  1		1	; slot1 = false
		 37	[  0]	JMP  	  2		1	; 	goto 39
		 38	[  0]	KPRI 	  1		2	; slot1 = true
		 39	[  0]	TSETS	  1	0	1	; slot0.currentWaveHadSpin = slot1
		 40	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 41	[  0]	TGETS	  1	1	0	; slot1 = uv2"unknown".currentWaveWon
		 42	[  0]	ISEQP	  1		2	; if uv2"unknown".currentWaveWon == true
		 43	[  0]	JMP  	  1		2	; 	goto 46
		 44	[  0]	KPRI 	  1		1	; slot1 = false
		 45	[  0]	JMP  	  2		1	; 	goto 47
		 46	[  0]	KPRI 	  1		2	; slot1 = true
		 47	[  0]	TSETS	  1	0	0	; slot0.currentWaveWon = slot1
		 48	[  0]	RET1 	  0		2	; return slot0
	 59	[  0]	TSETS	  7	2	34	; slot2.getState = slot7
	 60	[  0]	FNEW 	  7		3	; N/A:0-0: 1 args, 3 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	12	; slot1 = uv0"unknown".reset
		  3	[  0]	CALL 	  1	1	1	;  = uv0"unknown".reset()
		  4	[  0]	GGET 	  1		11	; slot1 = _env["type"]
		  5	[  0]	MOV  	  3		0	; slot3 = slot0
		  6	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  7	[  0]	ISEQS	  1		10	; if slot1 == "table"
		  8	[  0]	JMP  	  1		2	; 	goto 11
		  9	[  0]	KPRI 	  1		1	; slot1 = false
		 10	[  0]	RET1 	  1		2	; return slot1
		 11	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 12	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		 13	[  0]	TGETS	  2	2	7	; slot2 = math.max
		 14	[  0]	KSHORT	  4		0	; slot4 = 0
		 15	[  0]	GGET 	  5		8	; slot5 = _env["math"]
		 16	[  0]	TGETS	  5	5	6	; slot5 = math.min
		 17	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		 18	[  0]	GGET 	  8		8	; slot8 = _env["math"]
		 19	[  0]	TGETS	  8	8	5	; slot8 = math.floor
		 20	[  0]	GGET 	 10		4	; slot10 = _env["tonumber"]
		 21	[  0]	TGETS	 12	0	9	; slot12 = slot0.missedWaves
		 22	[  0]	IST  	   		12	; if <unknown table>.missedWaves
		 23	[  0]	JMP  	 13		1	; 	goto 25
		 24	[  0]	KSHORT	 12		0	; slot12 = 0
		 25	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 26	[  0]	IST  	   		10	; if tonumber
		 27	[  0]	JMP  	 11		1	; 	goto 29
		 28	[  0]	KSHORT	 10		0	; slot10 = 0
		 29	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 30	[  0]	CALLM	  5	0	1	; MULTRES = math.min(slot6, ...MULTRES)
		 31	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 32	[  0]	TSETS	  2	1	9	; uv1"unknown".missedWaves = math.max
		 33	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 34	[  0]	TGETS	  2	0	3	; slot2 = slot0.guaranteePending
		 35	[  0]	ISEQP	  2		2	; if <unknown table>.guaranteePending == true
		 36	[  0]	JMP  	  2		2	; 	goto 39
		 37	[  0]	KPRI 	  2		1	; slot2 = false
		 38	[  0]	JMP  	  3		1	; 	goto 40
		 39	[  0]	KPRI 	  2		2	; slot2 = true
		 40	[  0]	TSETS	  2	1	3	; uv1"unknown".guaranteePending = slot2
		 41	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 42	[  0]	GGET 	  2		4	; slot2 = _env["tonumber"]
		 43	[  0]	TGETS	  4	0	2	; slot4 = slot0.currentWave
		 44	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 45	[  0]	TSETS	  2	1	2	; uv1"unknown".currentWave = slot2
		 46	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 47	[  0]	TGETS	  2	0	1	; slot2 = slot0.currentWaveHadSpin
		 48	[  0]	ISEQP	  2		2	; if <unknown table>.currentWaveHadSpin == true
		 49	[  0]	JMP  	  2		2	; 	goto 52
		 50	[  0]	KPRI 	  2		1	; slot2 = false
		 51	[  0]	JMP  	  3		1	; 	goto 53
		 52	[  0]	KPRI 	  2		2	; slot2 = true
		 53	[  0]	TSETS	  2	1	1	; uv1"unknown".currentWaveHadSpin = slot2
		 54	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 55	[  0]	TGETS	  2	0	0	; slot2 = slot0.currentWaveWon
		 56	[  0]	ISEQP	  2		2	; if <unknown table>.currentWaveWon == true
		 57	[  0]	JMP  	  2		2	; 	goto 60
		 58	[  0]	KPRI 	  2		1	; slot2 = false
		 59	[  0]	JMP  	  3		1	; 	goto 61
		 60	[  0]	KPRI 	  2		2	; slot2 = true
		 61	[  0]	TSETS	  2	1	0	; uv1"unknown".currentWaveWon = slot2
		 62	[  0]	KPRI 	  1		2	; slot1 = true
		 63	[  0]	RET1 	  1		2	; return slot1
	 61	[  0]	TSETS	  7	2	32	; slot2.importState = slot7
	 62	[  0]	TGETS	  7	2	42	; slot7 = slot2.reset
	 63	[  0]	CALL 	  7	1	1	;  = <unknown table>.reset()
	 64	[  0]	MOV  	  1		2	; slot1 = slot2
	 65	[  0]	UCLO 	  2		0	; nil uvs >= r2; goto 66
	 66	[  0]	TDUP 	  2		2	; slot2 = copy table#k2
	 67	[  0]	TSETS	  0	2	1	; slot2.hidden = slot0
	 68	[  0]	TSETS	  1	2	0	; slot2.pity = slot1
	 69	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 70
	 70	[  0]	RET1 	  2		2	; return slot2
	
