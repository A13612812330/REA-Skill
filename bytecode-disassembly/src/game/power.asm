;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\game\power.lua
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
	;;;; instructions ;;;;
	  1	[  0]	GGET 	  0		29	; slot0 = _env["require"]
	  2	[  0]	KSTR 	  2		28	; slot2 = "src.data.constants"
	  3	[  0]	CALL 	  0	2	2	; slot0 = require(slot1)
	  4	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
	  5	[  0]	FNEW 	  2		27	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		4	; 	goto 8
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".power
		  6	[  0]	IST  	   		0	; if uv0"unknown".power
		  7	[  0]	JMP  	  1		1	; 	goto 9
		  8	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
		  9	[  0]	TGETS	  1	0	0	; slot1 = slot0.aspdTau
		 10	[  0]	IST  	   		1	; if <unknown table>.aspdTau
		 11	[  0]	JMP  	  2		1	; 	goto 13
		 12	[  0]	KNUM 	  1		0	; slot1 = 0.1
		 13	[  0]	RET1 	  1		2	; return slot1
	  6	[  0]	FNEW 	  3		26	; N/A:0-0: 1 args, 1 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		1	; slot1 = _env["math"]
		  2	[  0]	TGETS	  1	1	0	; slot1 = math.max
		  3	[  0]	KSHORT	  3		0	; slot3 = 0
		  4	[  0]	ISTC 	  4		0	; slot4 = slot0; if slot0
		  5	[  0]	JMP  	  4		1	; 	goto 7
		  6	[  0]	KSHORT	  4		0	; slot4 = 0
		  7	[  0]	CALL 	  1	2	3	; slot1 = math.max(slot2, slot3)
		  8	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  9	[  0]	CALL 	  2	2	1	; slot2 = uv0"unknown"()
		 10	[  0]	MULVV	  3	2	1	; slot3 = uv0"unknown" * slot1
		 11	[  0]	ADDNV	  3	3	0	; slot3 = 1 + slot3
		 12	[  0]	DIVVV	  3	1	3	; slot3 = slot1 / slot3
		 13	[  0]	RET1 	  3		2	; return slot3
	  7	[  0]	FNEW 	  4		25	; N/A:0-0: 1 args, 1 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		1	; slot1 = _env["math"]
		  2	[  0]	TGETS	  1	1	0	; slot1 = math.max
		  3	[  0]	KSHORT	  3		0	; slot3 = 0
		  4	[  0]	ISTC 	  4		0	; slot4 = slot0; if slot0
		  5	[  0]	JMP  	  4		1	; 	goto 7
		  6	[  0]	KSHORT	  4		0	; slot4 = 0
		  7	[  0]	CALL 	  1	2	3	; slot1 = math.max(slot2, slot3)
		  8	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  9	[  0]	CALL 	  2	2	1	; slot2 = uv0"unknown"()
		 10	[  0]	MULVV	  3	2	1	; slot3 = uv0"unknown" * slot1
		 11	[  0]	ADDNV	  3	3	0	; slot3 = 1 + slot3
		 12	[  0]	MULVV	  4	3	3	; slot4 = slot3 * slot3
		 13	[  0]	DIVNV	  4	4	0	; slot4 = 1 / slot4
		 14	[  0]	RET1 	  4		2	; return slot4
	  8	[  0]	FNEW 	  5		24	; N/A:0-0: 0 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		ktable#5 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		4	; 	goto 8
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".power
		  6	[  0]	IST  	   		0	; if uv0"unknown".power
		  7	[  0]	JMP  	  1		1	; 	goto 9
		  8	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
		  9	[  0]	ISF  	   		0	; if not slot0
		 10	[  0]	JMP  	  1		3	; 	goto 14
		 11	[  0]	TGETS	  1	0	7	; slot1 = slot0.baseline
		 12	[  0]	IST  	   		1	; if <unknown table>.baseline
		 13	[  0]	JMP  	  2		1	; 	goto 15
		 14	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		 15	[  0]	TDUP 	  2		5	; slot2 = copy table#k5
		 16	[  0]	TGETS	  3	0	6	; slot3 = slot0.alpha
		 17	[  0]	IST  	   		3	; if <unknown table>.alpha
		 18	[  0]	JMP  	  4		1	; 	goto 20
		 19	[  0]	KNUM 	  3		0	; slot3 = 0.6
		 20	[  0]	TSETS	  3	2	6	; slot2.alpha = slot3
		 21	[  0]	TGETS	  3	0	4	; slot3 = slot0.betaAtk
		 22	[  0]	IST  	   		3	; if <unknown table>.betaAtk
		 23	[  0]	JMP  	  4		1	; 	goto 25
		 24	[  0]	KNUM 	  3		1	; slot3 = 0.7
		 25	[  0]	TSETS	  3	2	4	; slot2.betaAtk = slot3
		 26	[  0]	TGETS	  3	0	3	; slot3 = slot0.betaASPD
		 27	[  0]	IST  	   		3	; if <unknown table>.betaASPD
		 28	[  0]	JMP  	  4		1	; 	goto 30
		 29	[  0]	KNUM 	  3		2	; slot3 = 1.05
		 30	[  0]	TSETS	  3	2	3	; slot2.betaASPD = slot3
		 31	[  0]	TGETS	  3	1	2	; slot3 = slot1.HP0
		 32	[  0]	IST  	   		3	; if <unknown table>.HP0
		 33	[  0]	JMP  	  4		4	; 	goto 38
		 34	[  0]	TGETS	  3	0	2	; slot3 = slot0.HP0
		 35	[  0]	IST  	   		3	; if <unknown table>.HP0
		 36	[  0]	JMP  	  4		1	; 	goto 38
		 37	[  0]	KSHORT	  3		70	; slot3 = 70
		 38	[  0]	TSETS	  3	2	2	; slot2.HP0 = slot3
		 39	[  0]	TGETS	  3	1	1	; slot3 = slot1.ATK0
		 40	[  0]	IST  	   		3	; if <unknown table>.ATK0
		 41	[  0]	JMP  	  4		4	; 	goto 46
		 42	[  0]	TGETS	  3	0	1	; slot3 = slot0.ATK0
		 43	[  0]	IST  	   		3	; if <unknown table>.ATK0
		 44	[  0]	JMP  	  4		1	; 	goto 46
		 45	[  0]	KSHORT	  3		9	; slot3 = 9
		 46	[  0]	TSETS	  3	2	1	; slot2.ATK0 = slot3
		 47	[  0]	TGETS	  3	1	0	; slot3 = slot1.ASPD0
		 48	[  0]	IST  	   		3	; if <unknown table>.ASPD0
		 49	[  0]	JMP  	  4		4	; 	goto 54
		 50	[  0]	TGETS	  3	0	0	; slot3 = slot0.ASPD0
		 51	[  0]	IST  	   		3	; if <unknown table>.ASPD0
		 52	[  0]	JMP  	  4		1	; 	goto 54
		 53	[  0]	KNUM 	  3		3	; slot3 = 1.5
		 54	[  0]	TSETS	  3	2	0	; slot2.ASPD0 = slot3
		 55	[  0]	RET1 	  2		2	; return slot2
	  9	[  0]	FNEW 	  6		22	; N/A:0-0: 3 args, 1 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		2	; slot3 = _env["math"]
		  2	[  0]	TGETS	  3	3	1	; slot3 = math.max
		  3	[  0]	KSHORT	  5		0	; slot5 = 0
		  4	[  0]	ISTC 	  6		0	; slot6 = slot0; if slot0
		  5	[  0]	JMP  	  6		1	; 	goto 7
		  6	[  0]	KSHORT	  6		0	; slot6 = 0
		  7	[  0]	CALL 	  3	2	3	; slot3 = math.max(slot4, slot5)
		  8	[  0]	GGET 	  4		2	; slot4 = _env["math"]
		  9	[  0]	TGETS	  4	4	1	; slot4 = math.max
		 10	[  0]	KSHORT	  6		0	; slot6 = 0
		 11	[  0]	ISTC 	  7		1	; slot7 = slot1; if slot1
		 12	[  0]	JMP  	  7		1	; 	goto 14
		 13	[  0]	KSHORT	  7		0	; slot7 = 0
		 14	[  0]	CALL 	  4	2	3	; slot4 = math.max(slot5, slot6)
		 15	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 16	[  0]	MOV  	  7		2	; slot7 = slot2
		 17	[  0]	CALL 	  5	2	2	; slot5 = uv0"unknown"(slot6)
		 18	[  0]	GGET 	  6		2	; slot6 = _env["math"]
		 19	[  0]	TGETS	  6	6	0	; slot6 = math.sqrt
		 20	[  0]	MULVV	  8	3	4	; slot8 = slot3 * math.max
		 21	[  0]	MULVV	  8	8	5	; slot8 = slot8 * uv0"unknown"
		 22	[  0]	CALLT	  6		2	; return math.sqrt(slot7)
	 10	[  0]	TSETS	  6	1	23	; slot1.powerSimple = slot6
	 11	[  0]	FNEW 	  6		20	; N/A:0-0: 3 args, 2 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		2	; slot3 = _env["math"]
		  2	[  0]	TGETS	  3	3	1	; slot3 = math.max
		  3	[  0]	KNUM 	  5		0	; slot5 = 1e-09
		  4	[  0]	ISTC 	  6		0	; slot6 = slot0; if slot0
		  5	[  0]	JMP  	  6		1	; 	goto 7
		  6	[  0]	KSHORT	  6		1	; slot6 = 1
		  7	[  0]	CALL 	  3	2	3	; slot3 = math.max(slot4, slot5)
		  8	[  0]	GGET 	  4		2	; slot4 = _env["math"]
		  9	[  0]	TGETS	  4	4	1	; slot4 = math.max
		 10	[  0]	KNUM 	  6		0	; slot6 = 1e-09
		 11	[  0]	ISTC 	  7		1	; slot7 = slot1; if slot1
		 12	[  0]	JMP  	  7		1	; 	goto 14
		 13	[  0]	KSHORT	  7		1	; slot7 = 1
		 14	[  0]	CALL 	  4	2	3	; slot4 = math.max(slot5, slot6)
		 15	[  0]	GGET 	  5		2	; slot5 = _env["math"]
		 16	[  0]	TGETS	  5	5	1	; slot5 = math.max
		 17	[  0]	KNUM 	  7		0	; slot7 = 1e-09
		 18	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 19	[  0]	MOV  	 10		2	; slot10 = slot2
		 20	[  0]	CALL 	  8	0	2	; MULTRES = uv0"unknown"(slot9)
		 21	[  0]	CALLM	  5	2	1	; slot5 = math.max(slot6, ...MULTRES)
		 22	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 23	[  0]	MOV  	  8		2	; slot8 = slot2
		 24	[  0]	CALL 	  6	2	2	; slot6 = uv1"unknown"(slot7)
		 25	[  0]	GGET 	  7		2	; slot7 = _env["math"]
		 26	[  0]	TGETS	  7	7	0	; slot7 = math.sqrt
		 27	[  0]	MULVV	  9	4	5	; slot9 = math.max * math.max
		 28	[  0]	DIVVV	  9	9	3	; slot9 = slot9 / slot3
		 29	[  0]	CALL 	  7	2	2	; slot7 = math.sqrt(slot8)
		 30	[  0]	MULNV	  7	7	1	; slot7 = 0.5 * math.sqrt
		 31	[  0]	GGET 	  8		2	; slot8 = _env["math"]
		 32	[  0]	TGETS	  8	8	0	; slot8 = math.sqrt
		 33	[  0]	MULVV	 10	3	5	; slot10 = slot3 * math.max
		 34	[  0]	DIVVV	 10	10	4	; slot10 = slot10 / math.max
		 35	[  0]	CALL 	  8	2	2	; slot8 = math.sqrt(slot9)
		 36	[  0]	MULNV	  8	8	1	; slot8 = 0.5 * math.sqrt
		 37	[  0]	GGET 	  9		2	; slot9 = _env["math"]
		 38	[  0]	TGETS	  9	9	0	; slot9 = math.sqrt
		 39	[  0]	MULVV	 11	3	4	; slot11 = slot3 * math.max
		 40	[  0]	DIVVV	 11	11	5	; slot11 = slot11 / math.max
		 41	[  0]	CALL 	  9	2	2	; slot9 = math.sqrt(slot10)
		 42	[  0]	MULNV	  9	9	1	; slot9 = 0.5 * math.sqrt
		 43	[  0]	MULVV	  9	9	6	; slot9 = slot9 * uv1"unknown"
		 44	[  0]	MOV  	 10		7	; slot10 = slot7
		 45	[  0]	MOV  	 11		8	; slot11 = slot8
		 46	[  0]	MOV  	 12		9	; slot12 = slot9
		 47	[  0]	RET  	 10		4	; return slot10, slot11, slot12
	 12	[  0]	TSETS	  6	1	21	; slot1.computePartials = slot6
	 13	[  0]	FNEW 	  6		18	; N/A:0-0: 5 args, 1 upvalues, 18 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		  2	[  0]	TGETS	  5	5	8	; slot5 = uv0"unknown".computePartials
		  3	[  0]	MOV  	  7		0	; slot7 = slot0
		  4	[  0]	MOV  	  8		1	; slot8 = slot1
		  5	[  0]	MOV  	  9		2	; slot9 = slot2
		  6	[  0]	CALL 	  5	4	4	; slot5, slot6, slot7 = uv0"unknown".computePartials(slot6, slot7, slot8)
		  7	[  0]	KSHORT	  8		15	; slot8 = 15
		  8	[  0]	KSHORT	  9		2	; slot9 = 2
		  9	[  0]	KNUM 	 10		0	; slot10 = 0.2
		 10	[  0]	KSHORT	 11		0	; slot11 = 0
		 11	[  0]	KSHORT	 12		0	; slot12 = 0
		 12	[  0]	KSHORT	 13		0	; slot13 = 0
		 13	[  0]	ISEQS	  4		7	; if slot4 == "W"
		 14	[  0]	JMP  	 14		2	; 	goto 17
		 15	[  0]	ISNES	  4		6	; if slot4 ~= "warrior"
		 16	[  0]	JMP  	 14		7	; 	goto 24
		 17	[  0]	GGET 	 14		5	; slot14 = _env["math"]
		 18	[  0]	TGETS	 14	14	4	; slot14 = math.max
		 19	[  0]	MOV  	 16		8	; slot16 = slot8
		 20	[  0]	DIVVV	 17	3	5	; slot17 = slot3 / uv0"unknown".computePartials
		 21	[  0]	CALL 	 14	2	3	; slot14 = math.max(slot15, slot16)
		 22	[  0]	MOV  	 11		14	; slot11 = math.max
		 23	[  0]	JMP  	 14		21	; 	goto 45
		 24	[  0]	ISEQS	  4		3	; if slot4 == "S"
		 25	[  0]	JMP  	 14		2	; 	goto 28
		 26	[  0]	ISNES	  4		2	; if slot4 ~= "lancer"
		 27	[  0]	JMP  	 14		7	; 	goto 35
		 28	[  0]	GGET 	 14		5	; slot14 = _env["math"]
		 29	[  0]	TGETS	 14	14	4	; slot14 = math.max
		 30	[  0]	MOV  	 16		9	; slot16 = slot9
		 31	[  0]	DIVVV	 17	3	6	; slot17 = slot3 / slot6
		 32	[  0]	CALL 	 14	2	3	; slot14 = math.max(slot15, slot16)
		 33	[  0]	MOV  	 12		14	; slot12 = math.max
		 34	[  0]	JMP  	 14		10	; 	goto 45
		 35	[  0]	ISEQS	  4		1	; if slot4 == "A"
		 36	[  0]	JMP  	 14		2	; 	goto 39
		 37	[  0]	ISNES	  4		0	; if slot4 ~= "archer"
		 38	[  0]	JMP  	 14		6	; 	goto 45
		 39	[  0]	GGET 	 14		5	; slot14 = _env["math"]
		 40	[  0]	TGETS	 14	14	4	; slot14 = math.max
		 41	[  0]	MOV  	 16		10	; slot16 = slot10
		 42	[  0]	DIVVV	 17	3	7	; slot17 = slot3 / slot7
		 43	[  0]	CALL 	 14	2	3	; slot14 = math.max(slot15, slot16)
		 44	[  0]	MOV  	 13		14	; slot13 = math.max
		 45	[  0]	MOV  	 14		11	; slot14 = math.max
		 46	[  0]	MOV  	 15		12	; slot15 = math.max
		 47	[  0]	MOV  	 16		13	; slot16 = math.max
		 48	[  0]	RET  	 14		4	; return math.max, math.max, math.max
	 14	[  0]	TSETS	  6	1	19	; slot1.computeBalancedIncrease = slot6
	 15	[  0]	FNEW 	  6		16	; N/A:0-0: 2 args, 1 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		1	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	0	; slot2 = math.max
		  3	[  0]	KSHORT	  4		0	; slot4 = 0
		  4	[  0]	ISTC 	  5		0	; slot5 = slot0; if slot0
		  5	[  0]	JMP  	  5		1	; 	goto 7
		  6	[  0]	KSHORT	  5		0	; slot5 = 0
		  7	[  0]	CALL 	  2	2	3	; slot2 = math.max(slot3, slot4)
		  8	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  9	[  0]	MOV  	  5		1	; slot5 = slot1
		 10	[  0]	CALL 	  3	2	2	; slot3 = uv0"unknown"(slot4)
		 11	[  0]	MULVV	  2	2	3	; slot2 = slot2 * uv0"unknown"
		 12	[  0]	RET1 	  2		2	; return slot2
	 16	[  0]	TSETS	  6	1	17	; slot1.dps = slot6
	 17	[  0]	FNEW 	  6		14	; N/A:0-0: 3 args, 2 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  2	[  0]	CALL 	  3	2	1	; slot3 = uv0"unknown"()
		  3	[  0]	GGET 	  4		4	; slot4 = _env["math"]
		  4	[  0]	TGETS	  4	4	3	; slot4 = math.max
		  5	[  0]	KNUM 	  6		0	; slot6 = 1e-09
		  6	[  0]	TGETS	  7	3	2	; slot7 = uv0"unknown".HP0
		  7	[  0]	CALL 	  4	2	3	; slot4 = math.max(slot5, slot6)
		  8	[  0]	GGET 	  5		4	; slot5 = _env["math"]
		  9	[  0]	TGETS	  5	5	3	; slot5 = math.max
		 10	[  0]	KNUM 	  7		0	; slot7 = 1e-09
		 11	[  0]	TGETS	  8	3	1	; slot8 = uv0"unknown".ATK0
		 12	[  0]	CALL 	  5	2	3	; slot5 = math.max(slot6, slot7)
		 13	[  0]	GGET 	  6		4	; slot6 = _env["math"]
		 14	[  0]	TGETS	  6	6	3	; slot6 = math.max
		 15	[  0]	KNUM 	  8		0	; slot8 = 1e-09
		 16	[  0]	TGETS	  9	3	0	; slot9 = uv0"unknown".ASPD0
		 17	[  0]	CALL 	  6	2	3	; slot6 = math.max(slot7, slot8)
		 18	[  0]	GGET 	  7		4	; slot7 = _env["math"]
		 19	[  0]	TGETS	  7	7	3	; slot7 = math.max
		 20	[  0]	KSHORT	  9		0	; slot9 = 0
		 21	[  0]	ISTC 	 10		0	; slot10 = slot0; if slot0
		 22	[  0]	JMP  	 10		1	; 	goto 24
		 23	[  0]	KSHORT	 10		0	; slot10 = 0
		 24	[  0]	CALL 	  7	2	3	; slot7 = math.max(slot8, slot9)
		 25	[  0]	DIVVV	  7	7	4	; slot7 = math.max / math.max
		 26	[  0]	GGET 	  8		4	; slot8 = _env["math"]
		 27	[  0]	TGETS	  8	8	3	; slot8 = math.max
		 28	[  0]	KSHORT	 10		0	; slot10 = 0
		 29	[  0]	ISTC 	 11		1	; slot11 = slot1; if slot1
		 30	[  0]	JMP  	 11		1	; 	goto 32
		 31	[  0]	KSHORT	 11		0	; slot11 = 0
		 32	[  0]	CALL 	  8	2	3	; slot8 = math.max(slot9, slot10)
		 33	[  0]	DIVVV	  8	8	5	; slot8 = math.max / math.max
		 34	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 35	[  0]	MOV  	 11		2	; slot11 = slot2
		 36	[  0]	CALL 	  9	2	2	; slot9 = uv1"unknown"(slot10)
		 37	[  0]	DIVVV	  9	9	6	; slot9 = uv1"unknown" / math.max
		 38	[  0]	MOV  	 10		7	; slot10 = slot7
		 39	[  0]	MOV  	 11		8	; slot11 = slot8
		 40	[  0]	MOV  	 12		9	; slot12 = slot9
		 41	[  0]	MOV  	 13		3	; slot13 = uv0"unknown"
		 42	[  0]	RET  	 10		5	; return slot10, slot11, slot12, uv0"unknown"
	 18	[  0]	TSETS	  6	1	15	; slot1.norms = slot6
	 19	[  0]	FNEW 	  6		12	; N/A:0-0: 3 args, 1 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  2	[  0]	TGETS	  3	3	3	; slot3 = uv0"unknown".norms
		  3	[  0]	MOV  	  5		0	; slot5 = slot0
		  4	[  0]	MOV  	  6		1	; slot6 = slot1
		  5	[  0]	MOV  	  7		2	; slot7 = slot2
		  6	[  0]	CALL 	  3	5	4	; slot3, slot4, slot5, slot6 = uv0"unknown".norms(slot4, slot5, slot6)
		  7	[  0]	KSHORT	  7		0	; slot7 = 0
		  8	[  0]	KSHORT	  8		0	; slot8 = 0
		  9	[  0]	ISGE 	  8		3	; if slot8 >= slot3
		 10	[  0]	JMP  	  8		23	; 	goto 34
		 11	[  0]	KSHORT	  8		0	; slot8 = 0
		 12	[  0]	ISGT 	  8		4	; if slot8 > slot4
		 13	[  0]	JMP  	  8		20	; 	goto 34
		 14	[  0]	KSHORT	  8		0	; slot8 = 0
		 15	[  0]	ISGT 	  8		5	; if slot8 > slot5
		 16	[  0]	JMP  	  8		17	; 	goto 34
		 17	[  0]	TGETS	  8	6	2	; slot8 = slot6.betaAtk
		 18	[  0]	IST  	   		8	; if <unknown table>.betaAtk
		 19	[  0]	JMP  	  9		1	; 	goto 21
		 20	[  0]	KSHORT	  8		1	; slot8 = 1
		 21	[  0]	POW  	  8	4	8	; slot8 = slot4 ^ slot8 (pow)
		 22	[  0]	TGETS	  9	6	1	; slot9 = slot6.betaASPD
		 23	[  0]	IST  	   		9	; if <unknown table>.betaASPD
		 24	[  0]	JMP  	 10		1	; 	goto 26
		 25	[  0]	KSHORT	  9		1	; slot9 = 1
		 26	[  0]	POW  	  9	5	9	; slot9 = slot5 ^ slot9 (pow)
		 27	[  0]	MULVV	  8	8	9	; slot8 = slot8 * slot9
		 28	[  0]	TGETS	  9	6	0	; slot9 = slot6.alpha
		 29	[  0]	IST  	   		9	; if <unknown table>.alpha
		 30	[  0]	JMP  	 10		1	; 	goto 32
		 31	[  0]	KSHORT	  9		1	; slot9 = 1
		 32	[  0]	POW  	  9	3	9	; slot9 = slot3 ^ slot9 (pow)
		 33	[  0]	MULVV	  7	9	8	; slot7 = slot9 * slot8
		 34	[  0]	MULNV	  8	7	0	; slot8 = 100 * slot7
		 35	[  0]	RET1 	  8		2	; return slot8
	 20	[  0]	TSETS	  6	1	13	; slot1.power = slot6
	 21	[  0]	FNEW 	  6		11	; N/A:0-0: 0 args, 1 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		4	; 	goto 8
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	TGETS	  0	0	10	; slot0 = uv0"unknown".power
		  6	[  0]	IST  	   		0	; if uv0"unknown".power
		  7	[  0]	JMP  	  1		1	; 	goto 9
		  8	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
		  9	[  0]	ISF  	   		0	; if not slot0
		 10	[  0]	JMP  	  1		3	; 	goto 14
		 11	[  0]	TGETS	  1	0	9	; slot1 = slot0.skill
		 12	[  0]	IST  	   		1	; if <unknown table>.skill
		 13	[  0]	JMP  	  2		1	; 	goto 15
		 14	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		 15	[  0]	TDUP 	  2		4	; slot2 = copy table#k4
		 16	[  0]	GGET 	  3		8	; slot3 = _env["math"]
		 17	[  0]	TGETS	  3	3	7	; slot3 = math.max
		 18	[  0]	KSHORT	  5		1	; slot5 = 1
		 19	[  0]	GGET 	  6		6	; slot6 = _env["tonumber"]
		 20	[  0]	TGETS	  8	1	5	; slot8 = slot1.encounterHorizon
		 21	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
		 22	[  0]	IST  	   		6	; if tonumber
		 23	[  0]	JMP  	  7		1	; 	goto 25
		 24	[  0]	KSHORT	  6		12	; slot6 = 12
		 25	[  0]	CALL 	  3	2	3	; slot3 = math.max(slot4, slot5)
		 26	[  0]	TSETS	  3	2	5	; slot2.encounterHorizon = slot3
		 27	[  0]	GGET 	  3		8	; slot3 = _env["math"]
		 28	[  0]	TGETS	  3	3	7	; slot3 = math.max
		 29	[  0]	KSHORT	  5		0	; slot5 = 0
		 30	[  0]	GGET 	  6		8	; slot6 = _env["math"]
		 31	[  0]	TGETS	  6	6	3	; slot6 = math.min
		 32	[  0]	KSHORT	  8		1	; slot8 = 1
		 33	[  0]	GGET 	  9		6	; slot9 = _env["tonumber"]
		 34	[  0]	TGETS	 11	1	2	; slot11 = slot1.expectedSecondaryTargetRate
		 35	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
		 36	[  0]	IST  	   		9	; if tonumber
		 37	[  0]	JMP  	 10		1	; 	goto 39
		 38	[  0]	KNUM 	  9		0	; slot9 = 0.45
		 39	[  0]	CALL 	  6	0	3	; MULTRES = math.min(slot7, slot8)
		 40	[  0]	CALLM	  3	2	1	; slot3 = math.max(slot4, ...MULTRES)
		 41	[  0]	TSETS	  3	2	2	; slot2.expectedSecondaryTargetRate = math.max
		 42	[  0]	GGET 	  3		8	; slot3 = _env["math"]
		 43	[  0]	TGETS	  3	3	7	; slot3 = math.max
		 44	[  0]	KSHORT	  5		0	; slot5 = 0
		 45	[  0]	GGET 	  6		6	; slot6 = _env["tonumber"]
		 46	[  0]	TGETS	  8	1	1	; slot8 = slot1.utilityWeight
		 47	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
		 48	[  0]	IST  	   		6	; if tonumber
		 49	[  0]	JMP  	  7		1	; 	goto 51
		 50	[  0]	KNUM 	  6		1	; slot6 = 0.75
		 51	[  0]	CALL 	  3	2	3	; slot3 = math.max(slot4, slot5)
		 52	[  0]	TSETS	  3	2	1	; slot2.utilityWeight = slot3
		 53	[  0]	GGET 	  3		8	; slot3 = _env["math"]
		 54	[  0]	TGETS	  3	3	7	; slot3 = math.max
		 55	[  0]	KSHORT	  5		0	; slot5 = 0
		 56	[  0]	GGET 	  6		6	; slot6 = _env["tonumber"]
		 57	[  0]	TGETS	  8	1	0	; slot8 = slot1.maxUtilityRatio
		 58	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
		 59	[  0]	IST  	   		6	; if tonumber
		 60	[  0]	JMP  	  7		1	; 	goto 62
		 61	[  0]	KNUM 	  6		0	; slot6 = 0.45
		 62	[  0]	CALL 	  3	2	3	; slot3 = math.max(slot4, slot5)
		 63	[  0]	TSETS	  3	2	0	; slot2.maxUtilityRatio = slot3
		 64	[  0]	RET1 	  2		2	; return slot2
	 22	[  0]	FNEW 	  7		10	; N/A:0-0: 4 args, 0 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  4		3	; slot4 = _env["type"]
		  2	[  0]	MOV  	  6		1	; slot6 = slot1
		  3	[  0]	CALL 	  4	2	2	; slot4 = type(slot5)
		  4	[  0]	ISEQS	  4		2	; if type == "table"
		  5	[  0]	JMP  	  4		1	; 	goto 7
		  6	[  0]	RET1 	  3		2	; return slot3
		  7	[  0]	MOV  	  4		2	; slot4 = slot2
		  8	[  0]	KSTR 	  5		1	; slot5 = "Field"
		  9	[  0]	CAT  	  4	4	5	; slot4 = slot4 .. slot5
		 10	[  0]	TGETV	  4	1	4	; slot4 = slot1[slot4]
		 11	[  0]	ISF  	   		4	; if not slot4
		 12	[  0]	JMP  	  5		8	; 	goto 21
		 13	[  0]	ISF  	   		0	; if not slot0
		 14	[  0]	JMP  	  5		6	; 	goto 21
		 15	[  0]	GGET 	  5		0	; slot5 = _env["tonumber"]
		 16	[  0]	TGETV	  7	0	4	; slot7 = slot0[slot4]
		 17	[  0]	CALL 	  5	2	2	; slot5 = tonumber(slot6)
		 18	[  0]	ISEQP	  5		0	; if tonumber == nil
		 19	[  0]	JMP  	  6		1	; 	goto 21
		 20	[  0]	RET1 	  5		2	; return tonumber
		 21	[  0]	GGET 	  5		0	; slot5 = _env["tonumber"]
		 22	[  0]	TGETV	  7	1	2	; slot7 = slot1[slot2]
		 23	[  0]	CALL 	  5	2	2	; slot5 = tonumber(slot6)
		 24	[  0]	ISEQP	  5		0	; if tonumber == nil
		 25	[  0]	JMP  	  6		1	; 	goto 27
		 26	[  0]	RET1 	  5		2	; return tonumber
		 27	[  0]	RET1 	  3		2	; return slot3
	 23	[  0]	FNEW 	  8		9	; N/A:0-0: 1 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		1	; slot1 = _env["type"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  4	[  0]	ISEQS	  1		0	; if slot1 == "table"
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  7	[  0]	RET1 	  1		2	; return slot1
		  8	[  0]	TGETB	  1	0	1	; slot1 = slot0[1]
		  9	[  0]	ISEQP	  1		0	; if slot1 == nil
		 10	[  0]	JMP  	  1		1	; 	goto 12
		 11	[  0]	RET1 	  0		2	; return slot0
		 12	[  0]	TNEW 	  1		3	; slot1 = new table( array: 3, dict: 1)
		 13	[  0]	TSETB	  0	1	1	; slot1[1] = slot0
		 14	[  0]	RET1 	  1		2	; return slot1
	 24	[  0]	FNEW 	  9		7	; N/A:0-0: 2 args, 4 upvalues, 45 slots
		
		;;;; constant tables ;;;;
		ktable#14 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  2		1	; 	goto 4
		  3	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
		  4	[  0]	IST  	   		1	; if slot1
		  5	[  0]	JMP  	  2		1	; 	goto 7
		  6	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  7	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  8	[  0]	CALL 	  2	2	1	; slot2 = uv0"unknown"()
		  9	[  0]	TGETS	  3	0	80	; slot3 = slot0.powerProfile
		 10	[  0]	IST  	   		3	; if <unknown table>.powerProfile
		 11	[  0]	JMP  	  4		4	; 	goto 16
		 12	[  0]	TGETS	  3	1	80	; slot3 = slot1.powerProfile
		 13	[  0]	IST  	   		3	; if <unknown table>.powerProfile
		 14	[  0]	JMP  	  4		1	; 	goto 16
		 15	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 16	[  0]	GGET 	  4		79	; slot4 = _env["type"]
		 17	[  0]	MOV  	  6		3	; slot6 = slot3
		 18	[  0]	CALL 	  4	2	2	; slot4 = type(slot5)
		 19	[  0]	ISEQS	  4		78	; if type == "table"
		 20	[  0]	JMP  	  4		1	; 	goto 22
		 21	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 22	[  0]	GGET 	  4		77	; slot4 = _env["math"]
		 23	[  0]	TGETS	  4	4	76	; slot4 = math.max
		 24	[  0]	KSHORT	  6		0	; slot6 = 0
		 25	[  0]	GGET 	  7		75	; slot7 = _env["tonumber"]
		 26	[  0]	TGETS	  9	1	74	; slot9 = slot1.hp
		 27	[  0]	IST  	   		9	; if <unknown table>.hp
		 28	[  0]	JMP  	 10		7	; 	goto 36
		 29	[  0]	TGETS	  9	0	73	; slot9 = slot0.maxhp
		 30	[  0]	IST  	   		9	; if <unknown table>.maxhp
		 31	[  0]	JMP  	 10		4	; 	goto 36
		 32	[  0]	TGETS	  9	0	74	; slot9 = slot0.hp
		 33	[  0]	IST  	   		9	; if <unknown table>.hp
		 34	[  0]	JMP  	 10		1	; 	goto 36
		 35	[  0]	KSHORT	  9		0	; slot9 = 0
		 36	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 37	[  0]	IST  	   		7	; if tonumber
		 38	[  0]	JMP  	  8		1	; 	goto 40
		 39	[  0]	KSHORT	  7		0	; slot7 = 0
		 40	[  0]	CALL 	  4	2	3	; slot4 = math.max(slot5, slot6)
		 41	[  0]	GGET 	  5		77	; slot5 = _env["math"]
		 42	[  0]	TGETS	  5	5	76	; slot5 = math.max
		 43	[  0]	KSHORT	  7		0	; slot7 = 0
		 44	[  0]	GGET 	  8		75	; slot8 = _env["tonumber"]
		 45	[  0]	TGETS	 10	1	72	; slot10 = slot1.atk
		 46	[  0]	IST  	   		10	; if <unknown table>.atk
		 47	[  0]	JMP  	 11		7	; 	goto 55
		 48	[  0]	TGETS	 10	0	71	; slot10 = slot0.dmg
		 49	[  0]	IST  	   		10	; if <unknown table>.dmg
		 50	[  0]	JMP  	 11		4	; 	goto 55
		 51	[  0]	TGETS	 10	0	72	; slot10 = slot0.atk
		 52	[  0]	IST  	   		10	; if <unknown table>.atk
		 53	[  0]	JMP  	 11		1	; 	goto 55
		 54	[  0]	KSHORT	 10		0	; slot10 = 0
		 55	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 56	[  0]	IST  	   		8	; if tonumber
		 57	[  0]	JMP  	  9		1	; 	goto 59
		 58	[  0]	KSHORT	  8		0	; slot8 = 0
		 59	[  0]	CALL 	  5	2	3	; slot5 = math.max(slot6, slot7)
		 60	[  0]	GGET 	  6		75	; slot6 = _env["tonumber"]
		 61	[  0]	TGETS	  8	1	70	; slot8 = slot1.aspd
		 62	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
		 63	[  0]	ISNEP	  6		0	; if tonumber ~= nil
		 64	[  0]	JMP  	  7		21	; 	goto 86
		 65	[  0]	GGET 	  7		75	; slot7 = _env["tonumber"]
		 66	[  0]	TGETS	  9	0	69	; slot9 = slot0.atkPeriod
		 67	[  0]	CALL 	  7	2	2	; slot7 = tonumber(<unknown table>.aspd)
		 68	[  0]	GGET 	  8		75	; slot8 = _env["tonumber"]
		 69	[  0]	TGETS	 10	0	68	; slot10 = slot0.atkTicks
		 70	[  0]	CALL 	  8	2	2	; slot8 = tonumber(<unknown table>.atkPeriod)
		 71	[  0]	ISF  	   		7	; if not tonumber
		 72	[  0]	JMP  	  9		5	; 	goto 78
		 73	[  0]	KSHORT	  9		0	; slot9 = 0
		 74	[  0]	ISGE 	  9		7	; if slot9 >= tonumber
		 75	[  0]	JMP  	  9		2	; 	goto 78
		 76	[  0]	DIVNV	  6	7	0	; slot6 = 1 / tonumber
		 77	[  0]	JMP  	  9		8	; 	goto 86
		 78	[  0]	ISF  	   		8	; if not tonumber
		 79	[  0]	JMP  	  9		5	; 	goto 85
		 80	[  0]	KSHORT	  9		0	; slot9 = 0
		 81	[  0]	ISGE 	  9		8	; if slot9 >= tonumber
		 82	[  0]	JMP  	  9		2	; 	goto 85
		 83	[  0]	DIVNV	  6	8	1	; slot6 = 60 / tonumber
		 84	[  0]	JMP  	  9		1	; 	goto 86
		 85	[  0]	KSHORT	  6		0	; slot6 = 0
		 86	[  0]	GGET 	  7		77	; slot7 = _env["math"]
		 87	[  0]	TGETS	  7	7	76	; slot7 = math.max
		 88	[  0]	KSHORT	  9		0	; slot9 = 0
		 89	[  0]	ISTC 	 10		6	; slot10 = slot6; if slot6
		 90	[  0]	JMP  	 10		1	; 	goto 92
		 91	[  0]	KSHORT	 10		0	; slot10 = 0
		 92	[  0]	CALL 	  7	2	3	; slot7 = math.max(tonumber, slot9)
		 93	[  0]	MOV  	  6		7	; slot6 = math.max
		 94	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 95	[  0]	TGETS	  7	7	67	; slot7 = uv1"unknown".power
		 96	[  0]	MOV  	  9		4	; slot9 = math.max
		 97	[  0]	MOV  	 10		5	; slot10 = math.max
		 98	[  0]	MOV  	 11		6	; slot11 = math.max
		 99	[  0]	CALL 	  7	2	4	; slot7 = uv1"unknown".power(tonumber, math.max, math.max)
		100	[  0]	MULVV	  8	5	6	; slot8 = math.max * math.max
		101	[  0]	KSHORT	  9		0	; slot9 = 0
		102	[  0]	GGET 	 10		66	; slot10 = _env["ipairs"]
		103	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		104	[  0]	TGETS	 14	3	65	; slot14 = slot3.periodicAttacks
		105	[  0]	CALL 	 12	0	2	; MULTRES = uv2"unknown"(slot13)
		106	[  0]	CALLM	 10	4	0	; slot10, slot11, slot12 = ipairs(, ...MULTRES)
		107	[  0]	JMP  	 13		131	; 	goto 239
		108	[  0]	UGET 	 15		3	; slot15 = uv3"unknwon"
		109	[  0]	MOV  	 17		0	; slot17 = slot0
		110	[  0]	MOV  	 18		14	; slot18 = <unknown table>.periodicAttacks
		111	[  0]	KSTR 	 19		64	; slot19 = "directMul"
		112	[  0]	UGET 	 20		3	; slot20 = uv3"unknwon"
		113	[  0]	MOV  	 22		0	; slot22 = slot0
		114	[  0]	MOV  	 23		14	; slot23 = <unknown table>.periodicAttacks
		115	[  0]	KSTR 	 24		63	; slot24 = "damageMul"
		116	[  0]	KSHORT	 25		0	; slot25 = 0
		117	[  0]	CALL 	 20	0	5	; MULTRES = uv3"unknown"(slot21, slot22, <unknown table>.periodicAttacks, slot24)
		118	[  0]	CALLM	 15	2	3	; slot15 = uv3"unknown"(slot16, slot17, <unknown table>.periodicAttacks, ...MULTRES)
		119	[  0]	UGET 	 16		3	; slot16 = uv3"unknwon"
		120	[  0]	MOV  	 18		0	; slot18 = slot0
		121	[  0]	MOV  	 19		14	; slot19 = <unknown table>.periodicAttacks
		122	[  0]	KSTR 	 20		62	; slot20 = "splashMul"
		123	[  0]	KSHORT	 21		0	; slot21 = 0
		124	[  0]	CALL 	 16	2	5	; slot16 = uv3"unknown"(slot17, slot18, <unknown table>.periodicAttacks, slot20)
		125	[  0]	GGET 	 17		77	; slot17 = _env["math"]
		126	[  0]	TGETS	 17	17	76	; slot17 = math.max
		127	[  0]	KSHORT	 19		0	; slot19 = 0
		128	[  0]	UGET 	 20		3	; slot20 = uv3"unknwon"
		129	[  0]	MOV  	 22		0	; slot22 = slot0
		130	[  0]	MOV  	 23		14	; slot23 = <unknown table>.periodicAttacks
		131	[  0]	KSTR 	 24		61	; slot24 = "splashTargets"
		132	[  0]	UGET 	 25		3	; slot25 = uv3"unknwon"
		133	[  0]	MOV  	 27		0	; slot27 = slot0
		134	[  0]	MOV  	 28		14	; slot28 = <unknown table>.periodicAttacks
		135	[  0]	KSTR 	 29		60	; slot29 = "maxTargets"
		136	[  0]	KSHORT	 30		0	; slot30 = 0
		137	[  0]	CALL 	 25	0	5	; MULTRES = uv3"unknown"(slot26, slot27, <unknown table>.periodicAttacks, slot29)
		138	[  0]	CALLM	 20	0	3	; MULTRES = uv3"unknown"(slot21, slot22, <unknown table>.periodicAttacks, ...MULTRES)
		139	[  0]	CALLM	 17	2	1	; slot17 = math.max(slot18, ...MULTRES)
		140	[  0]	GGET 	 18		77	; slot18 = _env["math"]
		141	[  0]	TGETS	 18	18	76	; slot18 = math.max
		142	[  0]	KSHORT	 20		0	; slot20 = 0
		143	[  0]	GGET 	 21		77	; slot21 = _env["math"]
		144	[  0]	TGETS	 21	21	59	; slot21 = math.min
		145	[  0]	KSHORT	 23		1	; slot23 = 1
		146	[  0]	UGET 	 24		3	; slot24 = uv3"unknwon"
		147	[  0]	MOV  	 26		0	; slot26 = slot0
		148	[  0]	MOV  	 27		14	; slot27 = <unknown table>.periodicAttacks
		149	[  0]	KSTR 	 28		58	; slot28 = "expectedSecondaryTargetRate"
		150	[  0]	TGETS	 29	2	58	; slot29 = uv0"unknown".expectedSecondaryTargetRate
		151	[  0]	CALL 	 24	0	5	; MULTRES = uv3"unknown"(uv3"unknown", slot26, <unknown table>.periodicAttacks, slot28)
		152	[  0]	CALLM	 21	0	1	; MULTRES = math.min(slot22, ...MULTRES)
		153	[  0]	CALLM	 18	2	1	; slot18 = math.max(slot19, ...MULTRES)
		154	[  0]	UGET 	 19		3	; slot19 = uv3"unknwon"
		155	[  0]	MOV  	 21		0	; slot21 = slot0
		156	[  0]	MOV  	 22		14	; slot22 = <unknown table>.periodicAttacks
		157	[  0]	KSTR 	 23		57	; slot23 = "dotMul"
		158	[  0]	KSHORT	 24		0	; slot24 = 0
		159	[  0]	CALL 	 19	2	5	; slot19 = uv3"unknown"(slot20, slot21, <unknown table>.periodicAttacks, slot23)
		160	[  0]	GGET 	 20		77	; slot20 = _env["math"]
		161	[  0]	TGETS	 20	20	76	; slot20 = math.max
		162	[  0]	KSHORT	 22		0	; slot22 = 0
		163	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		164	[  0]	MOV  	 25		0	; slot25 = slot0
		165	[  0]	MOV  	 26		14	; slot26 = <unknown table>.periodicAttacks
		166	[  0]	KSTR 	 27		56	; slot27 = "ticks"
		167	[  0]	KSHORT	 28		0	; slot28 = 0
		168	[  0]	CALL 	 23	0	5	; MULTRES = uv3"unknown"(slot24, slot25, <unknown table>.periodicAttacks, slot27)
		169	[  0]	CALLM	 20	2	1	; slot20 = math.max(slot21, ...MULTRES)
		170	[  0]	GGET 	 21		77	; slot21 = _env["math"]
		171	[  0]	TGETS	 21	21	76	; slot21 = math.max
		172	[  0]	KSHORT	 23		0	; slot23 = 0
		173	[  0]	MULVV	 24	16	17	; slot24 = uv3"unknown" * math.max
		174	[  0]	MULVV	 24	24	18	; slot24 = slot24 * math.max
		175	[  0]	ADDVV	 24	15	24	; slot24 = uv3"unknown" + slot24
		176	[  0]	MULVV	 25	19	20	; slot25 = uv3"unknown" * math.max
		177	[  0]	ADDVV	 24	24	25	; slot24 = slot24 + slot25
		178	[  0]	CALL 	 21	2	3	; slot21 = math.max(slot22, slot23)
		179	[  0]	MULVV	 21	5	21	; slot21 = math.max * math.max
		180	[  0]	KSHORT	 22		0	; slot22 = 0
		181	[  0]	TGETS	 23	14	55	; slot23 = <unknown table>.periodicAttacks.replacesBasic
		182	[  0]	ISEQP	 23		1	; if <unknown table>.periodicAttacks.replacesBasic == false
		183	[  0]	JMP  	 23		11	; 	goto 195
		184	[  0]	GGET 	 23		77	; slot23 = _env["math"]
		185	[  0]	TGETS	 23	23	76	; slot23 = math.max
		186	[  0]	KSHORT	 25		0	; slot25 = 0
		187	[  0]	UGET 	 26		3	; slot26 = uv3"unknwon"
		188	[  0]	MOV  	 28		0	; slot28 = slot0
		189	[  0]	MOV  	 29		14	; slot29 = <unknown table>.periodicAttacks
		190	[  0]	KSTR 	 30		54	; slot30 = "replacedBasicMul"
		191	[  0]	KSHORT	 31		1	; slot31 = 1
		192	[  0]	CALL 	 26	0	5	; MULTRES = uv3"unknown"(slot27, slot28, <unknown table>.periodicAttacks, slot30)
		193	[  0]	CALLM	 23	2	1	; slot23 = math.max(slot24, ...MULTRES)
		194	[  0]	MULVV	 22	5	23	; slot22 = math.max * math.max
		195	[  0]	GGET 	 23		77	; slot23 = _env["math"]
		196	[  0]	TGETS	 23	23	76	; slot23 = math.max
		197	[  0]	KSHORT	 25		0	; slot25 = 0
		198	[  0]	SUBVV	 26	21	22	; slot26 = slot21 - slot22
		199	[  0]	CALL 	 23	2	3	; slot23 = math.max(slot24, slot25)
		200	[  0]	UGET 	 24		3	; slot24 = uv3"unknwon"
		201	[  0]	MOV  	 26		0	; slot26 = slot0
		202	[  0]	MOV  	 27		14	; slot27 = <unknown table>.periodicAttacks
		203	[  0]	KSTR 	 28		53	; slot28 = "uses"
		204	[  0]	KPRI 	 29		0	; slot29 = nil
		205	[  0]	CALL 	 24	2	5	; slot24 = uv3"unknown"(slot25, slot26, <unknown table>.periodicAttacks, slot28)
		206	[  0]	ISEQP	 24		0	; if uv3"unknown" == nil
		207	[  0]	JMP  	 25		19	; 	goto 227
		208	[  0]	GGET 	 25		77	; slot25 = _env["math"]
		209	[  0]	TGETS	 25	25	76	; slot25 = math.max
		210	[  0]	KNUM 	 27		2	; slot27 = 0.1
		211	[  0]	UGET 	 28		3	; slot28 = uv3"unknwon"
		212	[  0]	MOV  	 30		0	; slot30 = slot0
		213	[  0]	MOV  	 31		14	; slot31 = <unknown table>.periodicAttacks
		214	[  0]	KSTR 	 32		52	; slot32 = "horizon"
		215	[  0]	TGETS	 33	2	51	; slot33 = uv0"unknown".encounterHorizon
		216	[  0]	CALL 	 28	0	5	; MULTRES = uv3"unknown"(slot29, slot30, <unknown table>.periodicAttacks, slot32)
		217	[  0]	CALLM	 25	2	1	; slot25 = math.max(slot26, ...MULTRES)
		218	[  0]	GGET 	 26		77	; slot26 = _env["math"]
		219	[  0]	TGETS	 26	26	76	; slot26 = math.max
		220	[  0]	KSHORT	 28		0	; slot28 = 0
		221	[  0]	MOV  	 29		24	; slot29 = uv3"unknown"
		222	[  0]	CALL 	 26	2	3	; slot26 = math.max(slot27, slot28)
		223	[  0]	MULVV	 26	23	26	; slot26 = math.max * math.max
		224	[  0]	DIVVV	 26	26	25	; slot26 = slot26 / math.max
		225	[  0]	ADDVV	  9	9	26	; slot9 = slot9 + slot26
		226	[  0]	JMP  	 25		12	; 	goto 239
		227	[  0]	GGET 	 25		77	; slot25 = _env["math"]
		228	[  0]	TGETS	 25	25	76	; slot25 = math.max
		229	[  0]	KNUM 	 27		2	; slot27 = 0.1
		230	[  0]	UGET 	 28		3	; slot28 = uv3"unknwon"
		231	[  0]	MOV  	 30		0	; slot30 = slot0
		232	[  0]	MOV  	 31		14	; slot31 = <unknown table>.periodicAttacks
		233	[  0]	KSTR 	 32		50	; slot32 = "cooldown"
		234	[  0]	TGETS	 33	2	51	; slot33 = uv0"unknown".encounterHorizon
		235	[  0]	CALL 	 28	0	5	; MULTRES = uv3"unknown"(uv3"unknown", slot30, <unknown table>.periodicAttacks, slot32)
		236	[  0]	CALLM	 25	2	1	; slot25 = math.max(slot26, ...MULTRES)
		237	[  0]	DIVVV	 26	23	25	; slot26 = math.max / math.max
		238	[  0]	ADDVV	  9	9	26	; slot9 = slot9 + slot26
		239	[  0]	ITERC	 13	3	3	; slot13, slot14, slot15 = ipairs, math.max, uv2"unknown"; slot13, slot14 = ipairs(math.max, uv2"unknown")
		240	[  0]	ITERL	 13		-133	; uv2"unknown" = slot13; if slot13 != nil goto 108
		241	[  0]	KSHORT	 10		0	; slot10 = 0
		242	[  0]	KSHORT	 11		0	; slot11 = 0
		243	[  0]	ISGE 	 11		8	; if slot11 >= slot8
		244	[  0]	JMP  	 11		6	; 	goto 251
		245	[  0]	GGET 	 11		77	; slot11 = _env["math"]
		246	[  0]	TGETS	 11	11	76	; slot11 = math.max
		247	[  0]	KSHORT	 13		0	; slot13 = 0
		248	[  0]	DIVVV	 14	9	8	; slot14 = slot9 / slot8
		249	[  0]	CALL 	 11	2	3	; slot11 = math.max(uv2"unknown", slot13)
		250	[  0]	MOV  	 10		11	; slot10 = math.max
		251	[  0]	UGET 	 11		1	; slot11 = uv1"unknwon"
		252	[  0]	TGETS	 11	11	49	; slot11 = uv1"unknown".norms
		253	[  0]	MOV  	 13		4	; slot13 = math.max
		254	[  0]	MOV  	 14		5	; slot14 = math.max
		255	[  0]	MOV  	 15		6	; slot15 = math.max
		256	[  0]	CALL 	 11	5	4	; slot11, slot12, slot13, slot14 = uv1"unknown".norms(uv2"unknown", math.max, math.max)
		257	[  0]	ADDNV	 15	10	0	; slot15 = 1 + math.max
		258	[  0]	TGETS	 16	14	48	; slot16 = math.max.betaAtk
		259	[  0]	IST  	   		16	; if math.max.betaAtk
		260	[  0]	JMP  	 17		1	; 	goto 262
		261	[  0]	KNUM 	 16		3	; slot16 = 0.7
		262	[  0]	POW  	 15	15	16	; slot15 = slot15 ^ slot16 (pow)
		263	[  0]	KSHORT	 16		1	; slot16 = 1
		264	[  0]	KSHORT	 17		0	; slot17 = 0
		265	[  0]	GGET 	 18		66	; slot18 = _env["ipairs"]
		266	[  0]	UGET 	 20		2	; slot20 = uv2"unknwon"
		267	[  0]	TGETS	 22	3	47	; slot22 = slot3.defenses
		268	[  0]	CALL 	 20	0	2	; MULTRES = uv2"unknown"(slot21)
		269	[  0]	CALLM	 18	4	0	; slot18, slot19, slot20 = ipairs(, ...MULTRES)
		270	[  0]	JMP  	 21		154	; 	goto 425
		271	[  0]	TGETS	 23	22	46	; slot23 = <unknown table>.defenses.kind
		272	[  0]	ISNES	 23		45	; if <unknown table>.defenses.kind ~= "heal"
		273	[  0]	JMP  	 24		38	; 	goto 312
		274	[  0]	GGET 	 24		77	; slot24 = _env["math"]
		275	[  0]	TGETS	 24	24	76	; slot24 = math.max
		276	[  0]	KSHORT	 26		0	; slot26 = 0
		277	[  0]	UGET 	 27		3	; slot27 = uv3"unknwon"
		278	[  0]	MOV  	 29		0	; slot29 = slot0
		279	[  0]	MOV  	 30		22	; slot30 = <unknown table>.defenses
		280	[  0]	KSTR 	 31		44	; slot31 = "maxHpFrac"
		281	[  0]	KSHORT	 32		0	; slot32 = 0
		282	[  0]	CALL 	 27	0	5	; MULTRES = uv3"unknown"(uv3"unknown", slot29, <unknown table>.defenses, slot31)
		283	[  0]	CALLM	 24	2	1	; slot24 = math.max(math.max, ...MULTRES)
		284	[  0]	GGET 	 25		77	; slot25 = _env["math"]
		285	[  0]	TGETS	 25	25	76	; slot25 = math.max
		286	[  0]	KSHORT	 27		0	; slot27 = 0
		287	[  0]	UGET 	 28		3	; slot28 = uv3"unknwon"
		288	[  0]	MOV  	 30		0	; slot30 = slot0
		289	[  0]	MOV  	 31		22	; slot31 = <unknown table>.defenses
		290	[  0]	KSTR 	 32		53	; slot32 = "uses"
		291	[  0]	KSHORT	 33		1	; slot33 = 1
		292	[  0]	CALL 	 28	0	5	; MULTRES = uv3"unknown"(slot29, slot30, <unknown table>.defenses, slot32)
		293	[  0]	CALLM	 25	2	1	; slot25 = math.max(slot26, ...MULTRES)
		294	[  0]	GGET 	 26		77	; slot26 = _env["math"]
		295	[  0]	TGETS	 26	26	76	; slot26 = math.max
		296	[  0]	KSHORT	 28		0	; slot28 = 0
		297	[  0]	GGET 	 29		77	; slot29 = _env["math"]
		298	[  0]	TGETS	 29	29	59	; slot29 = math.min
		299	[  0]	KSHORT	 31		1	; slot31 = 1
		300	[  0]	UGET 	 32		3	; slot32 = uv3"unknwon"
		301	[  0]	MOV  	 34		0	; slot34 = slot0
		302	[  0]	MOV  	 35		22	; slot35 = <unknown table>.defenses
		303	[  0]	KSTR 	 36		43	; slot36 = "activationRate"
		304	[  0]	KSHORT	 37		1	; slot37 = 1
		305	[  0]	CALL 	 32	0	5	; MULTRES = uv3"unknown"(slot33, slot34, <unknown table>.defenses, slot36)
		306	[  0]	CALLM	 29	0	1	; MULTRES = math.min(slot30, ...MULTRES)
		307	[  0]	CALLM	 26	2	1	; slot26 = math.max(slot27, ...MULTRES)
		308	[  0]	MULVV	 27	24	25	; slot27 = math.max * math.max
		309	[  0]	MULVV	 27	27	26	; slot27 = slot27 * math.max
		310	[  0]	ADDVV	 16	16	27	; slot16 = slot16 + slot27
		311	[  0]	JMP  	 24		113	; 	goto 425
		312	[  0]	ISEQS	 23		42	; if <unknown table>.defenses.kind == "dodge"
		313	[  0]	JMP  	 24		2	; 	goto 316
		314	[  0]	ISNES	 23		41	; if <unknown table>.defenses.kind ~= "damageReduction"
		315	[  0]	JMP  	 24		70	; 	goto 386
		316	[  0]	GGET 	 24		77	; slot24 = _env["math"]
		317	[  0]	TGETS	 24	24	76	; slot24 = math.max
		318	[  0]	KSHORT	 26		0	; slot26 = 0
		319	[  0]	GGET 	 27		77	; slot27 = _env["math"]
		320	[  0]	TGETS	 27	27	59	; slot27 = math.min
		321	[  0]	KNUM 	 29		4	; slot29 = 0.95
		322	[  0]	UGET 	 30		3	; slot30 = uv3"unknwon"
		323	[  0]	MOV  	 32		0	; slot32 = slot0
		324	[  0]	MOV  	 33		22	; slot33 = <unknown table>.defenses
		325	[  0]	KSTR 	 34		40	; slot34 = "chance"
		326	[  0]	UGET 	 35		3	; slot35 = uv3"unknwon"
		327	[  0]	MOV  	 37		0	; slot37 = slot0
		328	[  0]	MOV  	 38		22	; slot38 = <unknown table>.defenses
		329	[  0]	KSTR 	 39		39	; slot39 = "reduction"
		330	[  0]	KSHORT	 40		0	; slot40 = 0
		331	[  0]	CALL 	 35	0	5	; MULTRES = uv3"unknown"(slot36, slot37, <unknown table>.defenses, slot39)
		332	[  0]	CALLM	 30	0	3	; MULTRES = uv3"unknown"(slot31, slot32, <unknown table>.defenses, ...MULTRES)
		333	[  0]	CALLM	 27	0	1	; MULTRES = math.min(slot28, ...MULTRES)
		334	[  0]	CALLM	 24	2	1	; slot24 = math.max(math.max, ...MULTRES)
		335	[  0]	GGET 	 25		77	; slot25 = _env["math"]
		336	[  0]	TGETS	 25	25	76	; slot25 = math.max
		337	[  0]	KSHORT	 27		0	; slot27 = 0
		338	[  0]	UGET 	 28		3	; slot28 = uv3"unknwon"
		339	[  0]	MOV  	 30		0	; slot30 = slot0
		340	[  0]	MOV  	 31		22	; slot31 = <unknown table>.defenses
		341	[  0]	KSTR 	 32		38	; slot32 = "duration"
		342	[  0]	KSHORT	 33		0	; slot33 = 0
		343	[  0]	CALL 	 28	0	5	; MULTRES = uv3"unknown"(slot29, slot30, <unknown table>.defenses, slot32)
		344	[  0]	CALLM	 25	2	1	; slot25 = math.max(slot26, ...MULTRES)
		345	[  0]	UGET 	 26		3	; slot26 = uv3"unknwon"
		346	[  0]	MOV  	 28		0	; slot28 = slot0
		347	[  0]	MOV  	 29		22	; slot29 = <unknown table>.defenses
		348	[  0]	KSTR 	 30		37	; slot30 = "interval"
		349	[  0]	KPRI 	 31		0	; slot31 = nil
		350	[  0]	CALL 	 26	2	5	; slot26 = uv3"unknown"(slot27, slot28, <unknown table>.defenses, slot30)
		351	[  0]	KPRI 	 27		0	; slot27 = nil
		352	[  0]	ISF  	   		26	; if not uv3"unknown"
		353	[  0]	JMP  	 28		10	; 	goto 364
		354	[  0]	KSHORT	 28		0	; slot28 = 0
		355	[  0]	ISGE 	 28		26	; if slot28 >= uv3"unknown"
		356	[  0]	JMP  	 28		7	; 	goto 364
		357	[  0]	GGET 	 28		77	; slot28 = _env["math"]
		358	[  0]	TGETS	 28	28	59	; slot28 = math.min
		359	[  0]	KSHORT	 30		1	; slot30 = 1
		360	[  0]	DIVVV	 31	25	26	; slot31 = math.max / uv3"unknown"
		361	[  0]	CALL 	 28	2	3	; slot28 = math.min(<unknown table>.defenses, slot30)
		362	[  0]	MOV  	 27		28	; slot27 = math.min
		363	[  0]	JMP  	 28		16	; 	goto 380
		364	[  0]	GGET 	 28		77	; slot28 = _env["math"]
		365	[  0]	TGETS	 28	28	76	; slot28 = math.max
		366	[  0]	KNUM 	 30		2	; slot30 = 0.1
		367	[  0]	UGET 	 31		3	; slot31 = uv3"unknwon"
		368	[  0]	MOV  	 33		0	; slot33 = slot0
		369	[  0]	MOV  	 34		22	; slot34 = <unknown table>.defenses
		370	[  0]	KSTR 	 35		52	; slot35 = "horizon"
		371	[  0]	TGETS	 36	2	51	; slot36 = uv0"unknown".encounterHorizon
		372	[  0]	CALL 	 31	0	5	; MULTRES = uv3"unknown"(slot32, slot33, <unknown table>.defenses, slot35)
		373	[  0]	CALLM	 28	2	1	; slot28 = math.max(<unknown table>.defenses, ...MULTRES)
		374	[  0]	GGET 	 29		77	; slot29 = _env["math"]
		375	[  0]	TGETS	 29	29	59	; slot29 = math.min
		376	[  0]	KSHORT	 31		1	; slot31 = 1
		377	[  0]	DIVVV	 32	25	28	; slot32 = math.max / math.max
		378	[  0]	CALL 	 29	2	3	; slot29 = math.min(slot30, slot31)
		379	[  0]	MOV  	 27		29	; slot27 = math.min
		380	[  0]	SUBNV	 28	17	0	; slot28 = 1 - slot17
		381	[  0]	MULVV	 29	24	27	; slot29 = math.max * math.min
		382	[  0]	SUBNV	 29	29	0	; slot29 = 1 - slot29
		383	[  0]	MULVV	 28	28	29	; slot28 = slot28 * slot29
		384	[  0]	SUBNV	 17	28	0	; slot17 = 1 - slot28
		385	[  0]	JMP  	 24		39	; 	goto 425
		386	[  0]	ISNES	 23		36	; if <unknown table>.defenses.kind ~= "block"
		387	[  0]	JMP  	 24		37	; 	goto 425
		388	[  0]	GGET 	 24		77	; slot24 = _env["math"]
		389	[  0]	TGETS	 24	24	76	; slot24 = math.max
		390	[  0]	KSHORT	 26		0	; slot26 = 0
		391	[  0]	UGET 	 27		3	; slot27 = uv3"unknwon"
		392	[  0]	MOV  	 29		0	; slot29 = slot0
		393	[  0]	MOV  	 30		22	; slot30 = <unknown table>.defenses
		394	[  0]	KSTR 	 31		35	; slot31 = "charges"
		395	[  0]	KSHORT	 32		0	; slot32 = 0
		396	[  0]	CALL 	 27	0	5	; MULTRES = uv3"unknown"(slot28, slot29, <unknown table>.defenses, slot31)
		397	[  0]	CALLM	 24	2	1	; slot24 = math.max(math.max, ...MULTRES)
		398	[  0]	GGET 	 25		77	; slot25 = _env["math"]
		399	[  0]	TGETS	 25	25	76	; slot25 = math.max
		400	[  0]	KSHORT	 27		0	; slot27 = 0
		401	[  0]	GGET 	 28		77	; slot28 = _env["math"]
		402	[  0]	TGETS	 28	28	59	; slot28 = math.min
		403	[  0]	KNUM 	 30		4	; slot30 = 0.95
		404	[  0]	UGET 	 31		3	; slot31 = uv3"unknwon"
		405	[  0]	MOV  	 33		0	; slot33 = slot0
		406	[  0]	MOV  	 34		22	; slot34 = <unknown table>.defenses
		407	[  0]	KSTR 	 35		39	; slot35 = "reduction"
		408	[  0]	KSHORT	 36		0	; slot36 = 0
		409	[  0]	CALL 	 31	0	5	; MULTRES = uv3"unknown"(slot32, slot33, <unknown table>.defenses, slot35)
		410	[  0]	CALLM	 28	0	1	; MULTRES = math.min(slot29, ...MULTRES)
		411	[  0]	CALLM	 25	2	1	; slot25 = math.max(slot26, ...MULTRES)
		412	[  0]	GGET 	 26		77	; slot26 = _env["math"]
		413	[  0]	TGETS	 26	26	76	; slot26 = math.max
		414	[  0]	KSHORT	 28		0	; slot28 = 0
		415	[  0]	UGET 	 29		3	; slot29 = uv3"unknwon"
		416	[  0]	MOV  	 31		0	; slot31 = slot0
		417	[  0]	MOV  	 32		22	; slot32 = <unknown table>.defenses
		418	[  0]	KSTR 	 33		34	; slot33 = "expectedHitFrac"
		419	[  0]	KNUM 	 34		5	; slot34 = 0.08
		420	[  0]	CALL 	 29	0	5	; MULTRES = uv3"unknown"(slot30, slot31, <unknown table>.defenses, slot33)
		421	[  0]	CALLM	 26	2	1	; slot26 = math.max(slot27, ...MULTRES)
		422	[  0]	MULVV	 27	24	25	; slot27 = math.max * math.max
		423	[  0]	MULVV	 27	27	26	; slot27 = slot27 * math.max
		424	[  0]	ADDVV	 16	16	27	; slot16 = slot16 + slot27
		425	[  0]	ITERC	 21	3	3	; slot21, slot22, slot23 = ipairs, uv3"unknown", uv2"unknown"; slot21, slot22 = ipairs(uv3"unknown", uv2"unknown")
		426	[  0]	ITERL	 21		-156	; uv2"unknown" = slot21; if slot21 != nil goto 271
		427	[  0]	KSHORT	 18		0	; slot18 = 0
		428	[  0]	ISGE 	 18		17	; if slot18 >= slot17
		429	[  0]	JMP  	 18		6	; 	goto 436
		430	[  0]	GGET 	 18		77	; slot18 = _env["math"]
		431	[  0]	TGETS	 18	18	76	; slot18 = math.max
		432	[  0]	KNUM 	 20		6	; slot20 = 0.05
		433	[  0]	SUBNV	 21	17	0	; slot21 = 1 - slot17
		434	[  0]	CALL 	 18	2	3	; slot18 = math.max(uv3"unknown", slot20)
		435	[  0]	DIVVV	 16	16	18	; slot16 = slot16 / math.max
		436	[  0]	TGETS	 18	14	33	; slot18 = math.max.alpha
		437	[  0]	IST  	   		18	; if math.max.alpha
		438	[  0]	JMP  	 19		1	; 	goto 440
		439	[  0]	KNUM 	 18		7	; slot18 = 0.6
		440	[  0]	POW  	 18	16	18	; slot18 = slot16 ^ slot18 (pow)
		441	[  0]	KSHORT	 19		0	; slot19 = 0
		442	[  0]	GGET 	 20		66	; slot20 = _env["ipairs"]
		443	[  0]	UGET 	 22		2	; slot22 = uv2"unknwon"
		444	[  0]	TGETS	 24	3	32	; slot24 = slot3.summons
		445	[  0]	CALL 	 22	0	2	; MULTRES = uv2"unknown"(<unknown table>.defenses.kind)
		446	[  0]	CALLM	 20	4	0	; slot20, slot21, slot22 = ipairs(, ...MULTRES)
		447	[  0]	JMP  	 23		54	; 	goto 502
		448	[  0]	GGET 	 25		77	; slot25 = _env["math"]
		449	[  0]	TGETS	 25	25	76	; slot25 = math.max
		450	[  0]	KSHORT	 27		0	; slot27 = 0
		451	[  0]	UGET 	 28		3	; slot28 = uv3"unknwon"
		452	[  0]	MOV  	 30		0	; slot30 = slot0
		453	[  0]	MOV  	 31		24	; slot31 = <unknown table>.summons
		454	[  0]	KSTR 	 32		31	; slot32 = "count"
		455	[  0]	UGET 	 33		3	; slot33 = uv3"unknwon"
		456	[  0]	MOV  	 35		0	; slot35 = slot0
		457	[  0]	MOV  	 36		24	; slot36 = <unknown table>.summons
		458	[  0]	KSTR 	 37		30	; slot37 = "maxAlive"
		459	[  0]	KSHORT	 38		0	; slot38 = 0
		460	[  0]	CALL 	 33	0	5	; MULTRES = uv3"unknown"(slot34, slot35, <unknown table>.summons, slot37)
		461	[  0]	CALLM	 28	0	3	; MULTRES = uv3"unknown"(uv3"unknown", slot30, <unknown table>.summons, ...MULTRES)
		462	[  0]	CALLM	 25	2	1	; slot25 = math.max(math.max, ...MULTRES)
		463	[  0]	GGET 	 26		77	; slot26 = _env["math"]
		464	[  0]	TGETS	 26	26	76	; slot26 = math.max
		465	[  0]	KSHORT	 28		0	; slot28 = 0
		466	[  0]	UGET 	 29		3	; slot29 = uv3"unknwon"
		467	[  0]	MOV  	 31		0	; slot31 = slot0
		468	[  0]	MOV  	 32		24	; slot32 = <unknown table>.summons
		469	[  0]	KSTR 	 33		29	; slot33 = "unitPower"
		470	[  0]	KSHORT	 34		0	; slot34 = 0
		471	[  0]	CALL 	 29	0	5	; MULTRES = uv3"unknown"(slot30, slot31, <unknown table>.summons, slot33)
		472	[  0]	CALLM	 26	2	1	; slot26 = math.max(slot27, ...MULTRES)
		473	[  0]	GGET 	 27		77	; slot27 = _env["math"]
		474	[  0]	TGETS	 27	27	76	; slot27 = math.max
		475	[  0]	KSHORT	 29		0	; slot29 = 0
		476	[  0]	GGET 	 30		77	; slot30 = _env["math"]
		477	[  0]	TGETS	 30	30	59	; slot30 = math.min
		478	[  0]	KSHORT	 32		1	; slot32 = 1
		479	[  0]	UGET 	 33		3	; slot33 = uv3"unknwon"
		480	[  0]	MOV  	 35		0	; slot35 = slot0
		481	[  0]	MOV  	 36		24	; slot36 = <unknown table>.summons
		482	[  0]	KSTR 	 37		28	; slot37 = "availability"
		483	[  0]	KSHORT	 38		1	; slot38 = 1
		484	[  0]	CALL 	 33	0	5	; MULTRES = uv3"unknown"(slot34, slot35, <unknown table>.summons, slot37)
		485	[  0]	CALLM	 30	0	1	; MULTRES = math.min(slot31, ...MULTRES)
		486	[  0]	CALLM	 27	2	1	; slot27 = math.max(slot28, ...MULTRES)
		487	[  0]	GGET 	 28		77	; slot28 = _env["math"]
		488	[  0]	TGETS	 28	28	76	; slot28 = math.max
		489	[  0]	KSHORT	 30		0	; slot30 = 0
		490	[  0]	UGET 	 31		3	; slot31 = uv3"unknwon"
		491	[  0]	MOV  	 33		0	; slot33 = slot0
		492	[  0]	MOV  	 34		24	; slot34 = <unknown table>.summons
		493	[  0]	KSTR 	 35		27	; slot35 = "replacementFactor"
		494	[  0]	KSHORT	 36		0	; slot36 = 0
		495	[  0]	CALL 	 31	0	5	; MULTRES = uv3"unknown"(slot32, slot33, <unknown table>.summons, slot35)
		496	[  0]	CALLM	 28	2	1	; slot28 = math.max(slot29, ...MULTRES)
		497	[  0]	MULVV	 29	25	26	; slot29 = math.max * math.max
		498	[  0]	MULVV	 29	29	27	; slot29 = slot29 * math.max
		499	[  0]	ADDNV	 30	28	0	; slot30 = 1 + math.max
		500	[  0]	MULVV	 29	29	30	; slot29 = slot29 * slot30
		501	[  0]	ADDVV	 19	19	29	; slot19 = slot19 + slot29
		502	[  0]	ITERC	 23	3	3	; slot23, slot24, slot25 = ipairs, slot21, uv2"unknown"; slot23, slot24 = ipairs(slot21, uv2"unknown")
		503	[  0]	ITERL	 23		-56	; uv2"unknown" = <unknown table>.defenses.kind; if <unknown table>.defenses.kind != nil goto 448
		504	[  0]	GGET 	 20		77	; slot20 = _env["math"]
		505	[  0]	TGETS	 20	20	76	; slot20 = math.max
		506	[  0]	KSHORT	 22		0	; slot22 = 0
		507	[  0]	GGET 	 23		75	; slot23 = _env["tonumber"]
		508	[  0]	TGETS	 25	3	26	; slot25 = slot3.objectivePower
		509	[  0]	CALL 	 23	2	2	; slot23 = tonumber(<unknown table>.summons)
		510	[  0]	IST  	   		23	; if tonumber
		511	[  0]	JMP  	 24		1	; 	goto 513
		512	[  0]	KSHORT	 23		0	; slot23 = 0
		513	[  0]	CALL 	 20	2	3	; slot20 = math.max(slot21, slot22)
		514	[  0]	GGET 	 21		77	; slot21 = _env["math"]
		515	[  0]	TGETS	 21	21	76	; slot21 = math.max
		516	[  0]	KSHORT	 23		0	; slot23 = 0
		517	[  0]	GGET 	 24		75	; slot24 = _env["tonumber"]
		518	[  0]	TGETS	 26	3	25	; slot26 = slot3.targetPriorityRatio
		519	[  0]	CALL 	 24	2	2	; slot24 = tonumber(<unknown table>.objectivePower)
		520	[  0]	IST  	   		24	; if tonumber
		521	[  0]	JMP  	 25		1	; 	goto 523
		522	[  0]	KSHORT	 24		0	; slot24 = 0
		523	[  0]	CALL 	 21	2	3	; slot21 = math.max(slot22, slot23)
		524	[  0]	GGET 	 22		77	; slot22 = _env["math"]
		525	[  0]	TGETS	 22	22	76	; slot22 = math.max
		526	[  0]	KSHORT	 24		0	; slot24 = 0
		527	[  0]	GGET 	 25		75	; slot25 = _env["tonumber"]
		528	[  0]	TGETS	 27	3	24	; slot27 = slot3.utilityRatio
		529	[  0]	CALL 	 25	2	2	; slot25 = tonumber(<unknown table>.targetPriorityRatio)
		530	[  0]	IST  	   		25	; if tonumber
		531	[  0]	JMP  	 26		1	; 	goto 533
		532	[  0]	KSHORT	 25		0	; slot25 = 0
		533	[  0]	CALL 	 22	2	3	; slot22 = math.max(slot23, slot24)
		534	[  0]	ADDVV	 21	21	22	; slot21 = math.max + math.max
		535	[  0]	GGET 	 22		66	; slot22 = _env["ipairs"]
		536	[  0]	UGET 	 24		2	; slot24 = uv2"unknwon"
		537	[  0]	TGETS	 26	3	23	; slot26 = slot3.controlEffects
		538	[  0]	CALL 	 24	0	2	; MULTRES = uv2"unknown"(slot25)
		539	[  0]	CALLM	 22	4	0	; slot22, slot23, slot24 = ipairs(, ...MULTRES)
		540	[  0]	JMP  	 25		101	; 	goto 642
		541	[  0]	GGET 	 27		77	; slot27 = _env["math"]
		542	[  0]	TGETS	 27	27	76	; slot27 = math.max
		543	[  0]	KSHORT	 29		0	; slot29 = 0
		544	[  0]	UGET 	 30		3	; slot30 = uv3"unknwon"
		545	[  0]	MOV  	 32		0	; slot32 = slot0
		546	[  0]	MOV  	 33		26	; slot33 = <unknown table>.controlEffects
		547	[  0]	KSTR 	 34		22	; slot34 = "severity"
		548	[  0]	KSHORT	 35		0	; slot35 = 0
		549	[  0]	CALL 	 30	0	5	; MULTRES = uv3"unknown"(uv3"unknown", slot32, <unknown table>.controlEffects, slot34)
		550	[  0]	CALLM	 27	2	1	; slot27 = math.max(math.max, ...MULTRES)
		551	[  0]	GGET 	 28		77	; slot28 = _env["math"]
		552	[  0]	TGETS	 28	28	76	; slot28 = math.max
		553	[  0]	KSHORT	 30		0	; slot30 = 0
		554	[  0]	UGET 	 31		3	; slot31 = uv3"unknwon"
		555	[  0]	MOV  	 33		0	; slot33 = slot0
		556	[  0]	MOV  	 34		26	; slot34 = <unknown table>.controlEffects
		557	[  0]	KSTR 	 35		38	; slot35 = "duration"
		558	[  0]	KSHORT	 36		0	; slot36 = 0
		559	[  0]	CALL 	 31	0	5	; MULTRES = uv3"unknown"(slot32, slot33, <unknown table>.controlEffects, slot35)
		560	[  0]	CALLM	 28	2	1	; slot28 = math.max(slot29, ...MULTRES)
		561	[  0]	UGET 	 29		3	; slot29 = uv3"unknwon"
		562	[  0]	MOV  	 31		0	; slot31 = slot0
		563	[  0]	MOV  	 32		26	; slot32 = <unknown table>.controlEffects
		564	[  0]	KSTR 	 33		37	; slot33 = "interval"
		565	[  0]	KPRI 	 34		0	; slot34 = nil
		566	[  0]	CALL 	 29	2	5	; slot29 = uv3"unknown"(slot30, slot31, <unknown table>.controlEffects, slot33)
		567	[  0]	TGETS	 30	26	21	; slot30 = <unknown table>.controlEffects.perBasic
		568	[  0]	ISNEP	 30		2	; if <unknown table>.controlEffects.perBasic ~= true
		569	[  0]	JMP  	 30		7	; 	goto 577
		570	[  0]	KSHORT	 30		0	; slot30 = 0
		571	[  0]	ISGE 	 30		6	; if slot30 >= math.max
		572	[  0]	JMP  	 30		3	; 	goto 576
		573	[  0]	DIVNV	 30	6	0	; slot30 = 1 / math.max
		574	[  0]	ISTC 	 29		30	; slot29 = slot30; if slot30
		575	[  0]	JMP  	 31		1	; 	goto 577
		576	[  0]	TGETS	 29	2	51	; slot29 = uv0"unknown".encounterHorizon
		577	[  0]	GGET 	 30		77	; slot30 = _env["math"]
		578	[  0]	TGETS	 30	30	76	; slot30 = math.max
		579	[  0]	KNUM 	 32		2	; slot32 = 0.1
		580	[  0]	ISTC 	 33		29	; slot33 = uv0"unknown".encounterHorizon; if uv0"unknown".encounterHorizon
		581	[  0]	JMP  	 33		1	; 	goto 583
		582	[  0]	TGETS	 33	2	51	; slot33 = uv0"unknown".encounterHorizon
		583	[  0]	CALL 	 30	2	3	; slot30 = math.max(slot31, slot32)
		584	[  0]	MOV  	 29		30	; slot29 = math.max
		585	[  0]	GGET 	 30		77	; slot30 = _env["math"]
		586	[  0]	TGETS	 30	30	59	; slot30 = math.min
		587	[  0]	KSHORT	 32		1	; slot32 = 1
		588	[  0]	DIVVV	 33	28	29	; slot33 = math.max / math.max
		589	[  0]	CALL 	 30	2	3	; slot30 = math.min(slot31, slot32)
		590	[  0]	GGET 	 31		77	; slot31 = _env["math"]
		591	[  0]	TGETS	 31	31	76	; slot31 = math.max
		592	[  0]	KSHORT	 33		0	; slot33 = 0
		593	[  0]	UGET 	 34		3	; slot34 = uv3"unknwon"
		594	[  0]	MOV  	 36		0	; slot36 = slot0
		595	[  0]	MOV  	 37		26	; slot37 = <unknown table>.controlEffects
		596	[  0]	KSTR 	 38		20	; slot38 = "directTargets"
		597	[  0]	KSHORT	 39		1	; slot39 = 1
		598	[  0]	CALL 	 34	0	5	; MULTRES = uv3"unknown"(slot35, slot36, <unknown table>.controlEffects, slot38)
		599	[  0]	CALLM	 31	2	1	; slot31 = math.max(slot32, ...MULTRES)
		600	[  0]	GGET 	 32		77	; slot32 = _env["math"]
		601	[  0]	TGETS	 32	32	76	; slot32 = math.max
		602	[  0]	KSHORT	 34		0	; slot34 = 0
		603	[  0]	UGET 	 35		3	; slot35 = uv3"unknwon"
		604	[  0]	MOV  	 37		0	; slot37 = slot0
		605	[  0]	MOV  	 38		26	; slot38 = <unknown table>.controlEffects
		606	[  0]	KSTR 	 39		19	; slot39 = "secondaryTargets"
		607	[  0]	KSHORT	 40		0	; slot40 = 0
		608	[  0]	CALL 	 35	0	5	; MULTRES = uv3"unknown"(slot36, slot37, <unknown table>.controlEffects, slot39)
		609	[  0]	CALLM	 32	2	1	; slot32 = math.max(slot33, ...MULTRES)
		610	[  0]	GGET 	 33		77	; slot33 = _env["math"]
		611	[  0]	TGETS	 33	33	76	; slot33 = math.max
		612	[  0]	KSHORT	 35		0	; slot35 = 0
		613	[  0]	GGET 	 36		77	; slot36 = _env["math"]
		614	[  0]	TGETS	 36	36	59	; slot36 = math.min
		615	[  0]	KSHORT	 38		1	; slot38 = 1
		616	[  0]	UGET 	 39		3	; slot39 = uv3"unknwon"
		617	[  0]	MOV  	 41		0	; slot41 = slot0
		618	[  0]	MOV  	 42		26	; slot42 = <unknown table>.controlEffects
		619	[  0]	KSTR 	 43		58	; slot43 = "expectedSecondaryTargetRate"
		620	[  0]	TGETS	 44	2	58	; slot44 = uv0"unknown".expectedSecondaryTargetRate
		621	[  0]	CALL 	 39	0	5	; MULTRES = uv3"unknown"(slot40, slot41, <unknown table>.controlEffects, slot43)
		622	[  0]	CALLM	 36	0	1	; MULTRES = math.min(slot37, ...MULTRES)
		623	[  0]	CALLM	 33	2	1	; slot33 = math.max(slot34, ...MULTRES)
		624	[  0]	MULVV	 34	32	33	; slot34 = math.max * math.max
		625	[  0]	ADDVV	 34	31	34	; slot34 = math.max + slot34
		626	[  0]	GGET 	 35		77	; slot35 = _env["math"]
		627	[  0]	TGETS	 35	35	76	; slot35 = math.max
		628	[  0]	KSHORT	 37		0	; slot37 = 0
		629	[  0]	UGET 	 38		3	; slot38 = uv3"unknwon"
		630	[  0]	MOV  	 40		0	; slot40 = slot0
		631	[  0]	MOV  	 41		26	; slot41 = <unknown table>.controlEffects
		632	[  0]	KSTR 	 42		18	; slot42 = "allyWeight"
		633	[  0]	KSHORT	 43		1	; slot43 = 1
		634	[  0]	CALL 	 38	0	5	; MULTRES = uv3"unknown"(uv3"unknown", slot40, <unknown table>.controlEffects, slot42)
		635	[  0]	CALLM	 35	2	1	; slot35 = math.max(math.min, ...MULTRES)
		636	[  0]	TGETS	 36	2	17	; slot36 = uv0"unknown".utilityWeight
		637	[  0]	MULVV	 36	36	27	; slot36 = uv0"unknown".utilityWeight * math.max
		638	[  0]	MULVV	 36	36	30	; slot36 = slot36 * math.min
		639	[  0]	MULVV	 36	36	34	; slot36 = slot36 * slot34
		640	[  0]	MULVV	 36	36	35	; slot36 = slot36 * math.max
		641	[  0]	ADDVV	 21	21	36	; slot21 = slot21 + slot36
		642	[  0]	ITERC	 25	3	3	; slot25, slot26, slot27 = ipairs, slot23, uv2"unknown"; slot25, slot26 = ipairs(slot23, uv2"unknown")
		643	[  0]	ITERL	 25		-103	; uv2"unknown" = slot25; if slot25 != nil goto 541
		644	[  0]	GGET 	 22		77	; slot22 = _env["math"]
		645	[  0]	TGETS	 22	22	59	; slot22 = math.min
		646	[  0]	TGETS	 24	2	16	; slot24 = uv0"unknown".maxUtilityRatio
		647	[  0]	MOV  	 25		21	; slot25 = slot21
		648	[  0]	CALL 	 22	2	3	; slot22 = math.min(slot23, uv0"unknown".maxUtilityRatio)
		649	[  0]	MOV  	 21		22	; slot21 = math.min
		650	[  0]	MULVV	 22	7	15	; slot22 = uv1"unknown".power * slot15
		651	[  0]	MULVV	 22	22	18	; slot22 = slot22 * slot18
		652	[  0]	ADDVV	 22	22	19	; slot22 = slot22 + slot19
		653	[  0]	ADDVV	 22	22	20	; slot22 = slot22 + math.max
		654	[  0]	ADDNV	 23	21	0	; slot23 = 1 + math.min
		655	[  0]	MULVV	 22	22	23	; slot22 = slot22 * slot23
		656	[  0]	GGET 	 23		77	; slot23 = _env["math"]
		657	[  0]	TGETS	 23	23	76	; slot23 = math.max
		658	[  0]	KSHORT	 25		0	; slot25 = 0
		659	[  0]	GGET 	 26		75	; slot26 = _env["tonumber"]
		660	[  0]	TGETS	 28	3	15	; slot28 = slot3.deliveryMultiplier
		661	[  0]	CALL 	 26	2	2	; slot26 = tonumber(math.max)
		662	[  0]	IST  	   		26	; if tonumber
		663	[  0]	JMP  	 27		1	; 	goto 665
		664	[  0]	KSHORT	 26		1	; slot26 = 1
		665	[  0]	CALL 	 23	2	3	; slot23 = math.max(uv0"unknown".maxUtilityRatio, slot25)
		666	[  0]	MULVV	 22	22	23	; slot22 = slot22 * math.max
		667	[  0]	TDUP 	 23		14	; slot23 = copy table#k14
		668	[  0]	TSETS	  7	23	13	; slot23.statPower = uv1"unknown".power
		669	[  0]	TSETS	 22	23	12	; slot23.calculatedPower = slot22
		670	[  0]	TSETS	  9	23	11	; slot23.bonusDps = slot9
		671	[  0]	TSETS	 10	23	10	; slot23.offenseRatio = math.max
		672	[  0]	TSETS	 15	23	9	; slot23.offenseMultiplier = slot15
		673	[  0]	TSETS	 16	23	8	; slot23.effectiveHpMultiplier = slot16
		674	[  0]	TSETS	 18	23	7	; slot23.defenseMultiplier = slot18
		675	[  0]	TSETS	 19	23	6	; slot23.summonPower = slot19
		676	[  0]	TSETS	 20	23	26	; slot23.objectivePower = math.max
		677	[  0]	TSETS	 21	23	24	; slot23.utilityRatio = math.min
		678	[  0]	GGET 	 24		75	; slot24 = _env["tonumber"]
		679	[  0]	TGETS	 26	0	5	; slot26 = slot0.fixedPower
		680	[  0]	CALL 	 24	2	2	; slot24 = tonumber(slot25)
		681	[  0]	ISEQP	 24		0	; if tonumber == nil
		682	[  0]	JMP  	 25		38	; 	goto 721
		683	[  0]	TSETS	 24	23	4	; slot23.authoredBasePower = tonumber
		684	[  0]	TGETS	 25	0	3	; slot25 = slot0.fixedPowerIncludesSkills
		685	[  0]	ISNEP	 25		2	; if <unknown table>.fixedPowerIncludesSkills ~= true
		686	[  0]	JMP  	 25		13	; 	goto 700
		687	[  0]	GGET 	 25		77	; slot25 = _env["math"]
		688	[  0]	TGETS	 25	25	76	; slot25 = math.max
		689	[  0]	KSHORT	 27		0	; slot27 = 0
		690	[  0]	SUBVV	 28	22	7	; slot28 = slot22 - uv1"unknown".power
		691	[  0]	CALL 	 25	2	3	; slot25 = math.max(<unknown table>.fixedPower, slot27)
		692	[  0]	TSETS	 25	23	2	; slot23.skillContribution = math.max
		693	[  0]	TSETS	 24	23	1	; slot23.calibratedPower = tonumber
		694	[  0]	KPRI 	 25		2	; slot25 = true
		695	[  0]	TSETS	 25	23	3	; slot23.fixedPowerIncludesSkills = slot25
		696	[  0]	MOV  	 25		24	; slot25 = tonumber
		697	[  0]	MOV  	 26		7	; slot26 = uv1"unknown".power
		698	[  0]	MOV  	 27		23	; slot27 = slot23
		699	[  0]	RET  	 25		4	; return tonumber, uv1"unknown".power, slot27
		700	[  0]	GGET 	 25		0	; slot25 = _env["next"]
		701	[  0]	MOV  	 27		3	; slot27 = slot3
		702	[  0]	CALL 	 25	2	2	; slot25 = next(uv1"unknown".power)
		703	[  0]	ISEQP	 25		0	; if next == nil
		704	[  0]	JMP  	 25		12	; 	goto 717
		705	[  0]	GGET 	 25		77	; slot25 = _env["math"]
		706	[  0]	TGETS	 25	25	76	; slot25 = math.max
		707	[  0]	KSHORT	 27		0	; slot27 = 0
		708	[  0]	SUBVV	 28	22	7	; slot28 = slot22 - uv1"unknown".power
		709	[  0]	CALL 	 25	2	3	; slot25 = math.max(uv1"unknown".power, slot27)
		710	[  0]	ADDVV	 26	24	25	; slot26 = tonumber + math.max
		711	[  0]	TSETS	 25	23	2	; slot23.skillContribution = math.max
		712	[  0]	TSETS	 26	23	1	; slot23.calibratedPower = slot26
		713	[  0]	MOV  	 27		26	; slot27 = slot26
		714	[  0]	MOV  	 28		7	; slot28 = uv1"unknown".power
		715	[  0]	MOV  	 29		23	; slot29 = slot23
		716	[  0]	RET  	 27		4	; return slot27, uv1"unknown".power, slot29
		717	[  0]	MOV  	 25		24	; slot25 = tonumber
		718	[  0]	MOV  	 26		7	; slot26 = uv1"unknown".power
		719	[  0]	MOV  	 27		23	; slot27 = slot23
		720	[  0]	RET  	 25		4	; return tonumber, uv1"unknown".power, slot27
		721	[  0]	MOV  	 25		22	; slot25 = slot22
		722	[  0]	MOV  	 26		7	; slot26 = uv1"unknown".power
		723	[  0]	MOV  	 27		23	; slot27 = slot23
		724	[  0]	RET  	 25		4	; return slot25, uv1"unknown".power, slot27
	 25	[  0]	TSETS	  9	1	8	; slot1.combatPower = slot9
	 26	[  0]	FNEW 	  9		6	; N/A:0-0: 5 args, 0 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KSHORT	  5		0	; slot5 = 0
		  2	[  0]	ISGT 	  2		5	; if slot2 > slot5
		  3	[  0]	JMP  	  5		2	; 	goto 6
		  4	[  0]	KSHORT	  5		0	; slot5 = 0
		  5	[  0]	RET1 	  5		2	; return slot5
		  6	[  0]	KSHORT	  5		20	; slot5 = 20
		  7	[  0]	KSHORT	  6		0	; slot6 = 0
		  8	[  0]	KSHORT	  7		16	; slot7 = 16
		  9	[  0]	ISGE 	  6		7	; if slot6 >= slot7
		 10	[  0]	JMP  	  7		13	; 	goto 24
		 11	[  0]	MOV  	  7		1	; slot7 = slot1
		 12	[  0]	MOV  	  9		4	; slot9 = slot4
		 13	[  0]	CALL 	  7	2	2	; slot7 = slot7(slot8)
		 14	[  0]	ISGE 	  7		2	; if slot7 >= slot2
		 15	[  0]	JMP  	  7		8	; 	goto 24
		 16	[  0]	LOOP 	  7		7	; Loop start, exit goto 24
		 17	[  0]	MULVN	  4	4	0	; slot4 = slot4 * 2
		 18	[  0]	ADDVN	  6	6	1	; slot6 = slot6 + 1
		 19	[  0]	KNUM 	  7		2	; slot7 = 1000000000
		 20	[  0]	ISGE 	  7		4	; if slot7 >= slot4
		 21	[  0]	JMP  	  7		-14	; 	goto 8
		 22	[  0]	JMP  	  7		1	; 	goto 24
		 23	[  0]	JMP  	  7		-16	; 	goto 8
		 24	[  0]	MOV  	  7		1	; slot7 = slot1
		 25	[  0]	MOV  	  9		4	; slot9 = slot4
		 26	[  0]	CALL 	  7	2	2	; slot7 = slot7(slot8)
		 27	[  0]	ISGE 	  7		2	; if slot7 >= slot2
		 28	[  0]	JMP  	  7		1	; 	goto 30
		 29	[  0]	RET1 	  4		2	; return slot4
		 30	[  0]	KSHORT	  7		1	; slot7 = 1
		 31	[  0]	MOV  	  8		5	; slot8 = slot5
		 32	[  0]	KSHORT	  9		1	; slot9 = 1
		 33	[  0]	FORI 	  7		19	; for slot10 = slot7,slot8,slot9 else goto 53
		 34	[  0]	ADDVV	 11	3	4	; slot11 = slot3 + slot4
		 35	[  0]	MULVN	 11	11	3	; slot11 = slot11 * 0.5
		 36	[  0]	MOV  	 12		1	; slot12 = slot1
		 37	[  0]	MOV  	 14		11	; slot14 = slot11
		 38	[  0]	CALL 	 12	2	2	; slot12 = slot12(slot13)
		 39	[  0]	GGET 	 13		1	; slot13 = _env["math"]
		 40	[  0]	TGETS	 13	13	0	; slot13 = math.abs
		 41	[  0]	SUBVV	 15	12	2	; slot15 = slot12 - slot2
		 42	[  0]	CALL 	 13	2	2	; slot13 = math.abs(slot14)
		 43	[  0]	KNUM 	 14		4	; slot14 = 0.01
		 44	[  0]	ISGT 	 13		14	; if math.abs > slot14
		 45	[  0]	JMP  	 13		1	; 	goto 47
		 46	[  0]	RET1 	 11		2	; return slot11
		 47	[  0]	ISGE 	 12		2	; if slot12 >= slot2
		 48	[  0]	JMP  	 13		2	; 	goto 51
		 49	[  0]	MOV  	  3		11	; slot3 = slot11
		 50	[  0]	JMP  	 13		1	; 	goto 52
		 51	[  0]	MOV  	  4		11	; slot4 = slot11
		 52	[  0]	FORL 	  7		-19	; slot10 = slot10 + slot9; if cmp(slot10, sign slot9,  slot8) goto 34
		 53	[  0]	ADDVV	  7	3	4	; slot7 = slot3 + slot4
		 54	[  0]	MULVN	  7	7	3	; slot7 = slot7 * 0.5
		 55	[  0]	RET1 	  7		2	; return slot7
	 27	[  0]	FNEW 	 10		4	; N/A:0-0: 4 args, 3 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  2	[  0]	TGETS	  4	4	6	; slot4 = uv0"unknown".power
		  3	[  0]	MOV  	  6		0	; slot6 = slot0
		  4	[  0]	MOV  	  7		1	; slot7 = slot1
		  5	[  0]	MOV  	  8		2	; slot8 = slot2
		  6	[  0]	CALL 	  4	2	4	; slot4 = uv0"unknown".power(slot5, slot6, slot7)
		  7	[  0]	GGET 	  5		5	; slot5 = _env["type"]
		  8	[  0]	MOV  	  7		4	; slot7 = slot4
		  9	[  0]	CALL 	  5	2	2	; slot5 = type(slot6)
		 10	[  0]	ISNES	  5		4	; if type ~= "table"
		 11	[  0]	JMP  	  5		3	; 	goto 15
		 12	[  0]	TGETB	  5	4	1	; slot5 = slot4[1]
		 13	[  0]	IST  	   		5	; if slot5
		 14	[  0]	JMP  	  6		1	; 	goto 16
		 15	[  0]	MOV  	  5		4	; slot5 = slot4
		 16	[  0]	FNEW 	  6		3	; N/A:0-0: 1 args, 5 upvalues, 8 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	TGETS	  1	1	4	; slot1 = uv0"unknown".power
			  3	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
			  4	[  0]	GGET 	  4		3	; slot4 = _env["math"]
			  5	[  0]	TGETS	  4	4	2	; slot4 = math.max
			  6	[  0]	KSHORT	  6		0	; slot6 = 0
			  7	[  0]	MOV  	  7		0	; slot7 = slot0
			  8	[  0]	CALL 	  4	2	3	; slot4 = math.max(slot5, slot6)
			  9	[  0]	ADDVV	  3	3	4	; slot3 = uv1"unknown" + math.max
			 10	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
			 11	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
			 12	[  0]	CALL 	  1	2	4	; slot1 = uv0"unknown".power(slot2, slot3, uv2"unknown")
			 13	[  0]	GGET 	  2		1	; slot2 = _env["type"]
			 14	[  0]	MOV  	  4		1	; slot4 = slot1
			 15	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
			 16	[  0]	ISNES	  2		0	; if slot2 ~= "table"
			 17	[  0]	JMP  	  2		3	; 	goto 21
			 18	[  0]	TGETB	  2	1	1	; slot2 = slot1[1]
			 19	[  0]	IST  	   		2	; if slot2
			 20	[  0]	JMP  	  3		1	; 	goto 22
			 21	[  0]	MOV  	  2		1	; slot2 = slot1
			 22	[  0]	GGET 	  3		3	; slot3 = _env["math"]
			 23	[  0]	TGETS	  3	3	2	; slot3 = math.max
			 24	[  0]	KSHORT	  5		0	; slot5 = 0
			 25	[  0]	UGET 	  6		4	; slot6 = uv4"unknwon"
			 26	[  0]	SUBVV	  6	2	6	; slot6 = slot2 - uv4"unknown"
			 27	[  0]	CALLT	  3		3	; return math.max(slot4, slot5)
		 17	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 18	[  0]	CALL 	  7	2	1	; slot7 = uv1"unknown"()
		 19	[  0]	GGET 	  8		2	; slot8 = _env["math"]
		 20	[  0]	TGETS	  8	8	1	; slot8 = math.max
		 21	[  0]	KSHORT	 10		1	; slot10 = 1
		 22	[  0]	TGETS	 11	7	0	; slot11 = uv1"unknown".HP0
		 23	[  0]	IST  	   		11	; if uv1"unknown".HP0
		 24	[  0]	JMP  	 12		1	; 	goto 26
		 25	[  0]	KSHORT	 11		70	; slot11 = 70
		 26	[  0]	MULVN	 11	11	0	; slot11 = slot11 * 2
		 27	[  0]	CALL 	  8	2	3	; slot8 = math.max(slot9, slot10)
		 28	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
		 29	[  0]	MOV  	 11		5	; slot11 = slot5
		 30	[  0]	MOV  	 12		6	; slot12 = slot6
		 31	[  0]	MOV  	 13		3	; slot13 = slot3
		 32	[  0]	KSHORT	 14		0	; slot14 = 0
		 33	[  0]	MOV  	 15		8	; slot15 = math.max
		 34	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 35
		 35	[  0]	CALLT	  9		6	; return uv2"unknown"(slot10, slot11, slot12, slot13, slot14)
	 28	[  0]	TSETS	 10	1	5	; slot1.solveDeltaHP = slot10
	 29	[  0]	FNEW 	 10		2	; N/A:0-0: 4 args, 3 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  2	[  0]	TGETS	  4	4	6	; slot4 = uv0"unknown".power
		  3	[  0]	MOV  	  6		0	; slot6 = slot0
		  4	[  0]	MOV  	  7		1	; slot7 = slot1
		  5	[  0]	MOV  	  8		2	; slot8 = slot2
		  6	[  0]	CALL 	  4	2	4	; slot4 = uv0"unknown".power(slot5, slot6, slot7)
		  7	[  0]	GGET 	  5		5	; slot5 = _env["type"]
		  8	[  0]	MOV  	  7		4	; slot7 = slot4
		  9	[  0]	CALL 	  5	2	2	; slot5 = type(slot6)
		 10	[  0]	ISNES	  5		4	; if type ~= "table"
		 11	[  0]	JMP  	  5		3	; 	goto 15
		 12	[  0]	TGETB	  5	4	1	; slot5 = slot4[1]
		 13	[  0]	IST  	   		5	; if slot5
		 14	[  0]	JMP  	  6		1	; 	goto 16
		 15	[  0]	MOV  	  5		4	; slot5 = slot4
		 16	[  0]	FNEW 	  6		3	; N/A:0-0: 1 args, 5 upvalues, 9 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	TGETS	  1	1	4	; slot1 = uv0"unknown".power
			  3	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
			  4	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
			  5	[  0]	GGET 	  5		3	; slot5 = _env["math"]
			  6	[  0]	TGETS	  5	5	2	; slot5 = math.max
			  7	[  0]	KSHORT	  7		0	; slot7 = 0
			  8	[  0]	MOV  	  8		0	; slot8 = slot0
			  9	[  0]	CALL 	  5	2	3	; slot5 = math.max(slot6, slot7)
			 10	[  0]	ADDVV	  4	4	5	; slot4 = uv2"unknown" + math.max
			 11	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
			 12	[  0]	CALL 	  1	2	4	; slot1 = uv0"unknown".power(slot2, uv1"unknown", slot4)
			 13	[  0]	GGET 	  2		1	; slot2 = _env["type"]
			 14	[  0]	MOV  	  4		1	; slot4 = slot1
			 15	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
			 16	[  0]	ISNES	  2		0	; if slot2 ~= "table"
			 17	[  0]	JMP  	  2		3	; 	goto 21
			 18	[  0]	TGETB	  2	1	1	; slot2 = slot1[1]
			 19	[  0]	IST  	   		2	; if slot2
			 20	[  0]	JMP  	  3		1	; 	goto 22
			 21	[  0]	MOV  	  2		1	; slot2 = slot1
			 22	[  0]	GGET 	  3		3	; slot3 = _env["math"]
			 23	[  0]	TGETS	  3	3	2	; slot3 = math.max
			 24	[  0]	KSHORT	  5		0	; slot5 = 0
			 25	[  0]	UGET 	  6		4	; slot6 = uv4"unknwon"
			 26	[  0]	SUBVV	  6	2	6	; slot6 = slot2 - uv4"unknown"
			 27	[  0]	CALLT	  3		3	; return math.max(slot4, slot5)
		 17	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 18	[  0]	CALL 	  7	2	1	; slot7 = uv1"unknown"()
		 19	[  0]	GGET 	  8		2	; slot8 = _env["math"]
		 20	[  0]	TGETS	  8	8	1	; slot8 = math.max
		 21	[  0]	KSHORT	 10		1	; slot10 = 1
		 22	[  0]	TGETS	 11	7	0	; slot11 = uv1"unknown".ATK0
		 23	[  0]	IST  	   		11	; if uv1"unknown".ATK0
		 24	[  0]	JMP  	 12		1	; 	goto 26
		 25	[  0]	KSHORT	 11		9	; slot11 = 9
		 26	[  0]	MULVN	 11	11	0	; slot11 = slot11 * 2
		 27	[  0]	CALL 	  8	2	3	; slot8 = math.max(slot9, slot10)
		 28	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
		 29	[  0]	MOV  	 11		5	; slot11 = slot5
		 30	[  0]	MOV  	 12		6	; slot12 = slot6
		 31	[  0]	MOV  	 13		3	; slot13 = slot3
		 32	[  0]	KSHORT	 14		0	; slot14 = 0
		 33	[  0]	MOV  	 15		8	; slot15 = math.max
		 34	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 35
		 35	[  0]	CALLT	  9		6	; return uv2"unknown"(slot10, slot11, slot12, slot13, slot14)
	 30	[  0]	TSETS	 10	1	3	; slot1.solveDeltaATK = slot10
	 31	[  0]	FNEW 	 10		0	; N/A:0-0: 4 args, 4 upvalues, 24 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  4		14	; slot4 = _env["math"]
		  2	[  0]	TGETS	  4	4	13	; slot4 = math.max
		  3	[  0]	KSHORT	  6		0	; slot6 = 0
		  4	[  0]	ISTC 	  7		3	; slot7 = slot3; if slot3
		  5	[  0]	JMP  	  7		1	; 	goto 7
		  6	[  0]	KSHORT	  7		0	; slot7 = 0
		  7	[  0]	CALL 	  4	2	3	; slot4 = math.max(slot5, slot6)
		  8	[  0]	KSHORT	  5		0	; slot5 = 0
		  9	[  0]	ISGT 	  4		5	; if math.max > slot5
		 10	[  0]	JMP  	  5		2	; 	goto 13
		 11	[  0]	KSHORT	  5		0	; slot5 = 0
		 12	[  0]	UCLO 	  0		127	; nil uvs >= r0; goto 140
		 13	[  0]	GGET 	  5		14	; slot5 = _env["math"]
		 14	[  0]	TGETS	  5	5	13	; slot5 = math.max
		 15	[  0]	KSHORT	  7		0	; slot7 = 0
		 16	[  0]	ISTC 	  8		0	; slot8 = slot0; if slot0
		 17	[  0]	JMP  	  8		1	; 	goto 19
		 18	[  0]	KSHORT	  8		0	; slot8 = 0
		 19	[  0]	CALL 	  5	2	3	; slot5 = math.max(slot6, slot7)
		 20	[  0]	GGET 	  6		14	; slot6 = _env["math"]
		 21	[  0]	TGETS	  6	6	13	; slot6 = math.max
		 22	[  0]	KSHORT	  8		0	; slot8 = 0
		 23	[  0]	ISTC 	  9		1	; slot9 = slot1; if slot1
		 24	[  0]	JMP  	  9		1	; 	goto 26
		 25	[  0]	KSHORT	  9		0	; slot9 = 0
		 26	[  0]	CALL 	  6	2	3	; slot6 = math.max(slot7, slot8)
		 27	[  0]	KSHORT	  7		0	; slot7 = 0
		 28	[  0]	ISLE 	  5		7	; if math.max <= slot7
		 29	[  0]	JMP  	  7		3	; 	goto 33
		 30	[  0]	KSHORT	  7		0	; slot7 = 0
		 31	[  0]	ISGT 	  6		7	; if math.max > slot7
		 32	[  0]	JMP  	  7		2	; 	goto 35
		 33	[  0]	KSHORT	  7		0	; slot7 = 0
		 34	[  0]	UCLO 	  0		106	; nil uvs >= r0; goto 141
		 35	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 36	[  0]	TGETS	  7	7	12	; slot7 = uv0"unknown".power
		 37	[  0]	MOV  	  9		0	; slot9 = slot0
		 38	[  0]	MOV  	 10		1	; slot10 = slot1
		 39	[  0]	MOV  	 11		2	; slot11 = slot2
		 40	[  0]	CALL 	  7	2	4	; slot7 = uv0"unknown".power(slot8, slot9, slot10)
		 41	[  0]	GGET 	  8		11	; slot8 = _env["type"]
		 42	[  0]	MOV  	 10		7	; slot10 = uv0"unknown".power
		 43	[  0]	CALL 	  8	2	2	; slot8 = type(slot9)
		 44	[  0]	ISNES	  8		10	; if type ~= "table"
		 45	[  0]	JMP  	  8		3	; 	goto 49
		 46	[  0]	TGETB	  8	7	1	; slot8 = uv0"unknown".power[1]
		 47	[  0]	IST  	   		8	; if slot8
		 48	[  0]	JMP  	  9		1	; 	goto 50
		 49	[  0]	MOV  	  8		7	; slot8 = uv0"unknown".power
		 50	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 51	[  0]	ISF  	   		9	; if not uv1"unknown"
		 52	[  0]	JMP  	 10		4	; 	goto 57
		 53	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 54	[  0]	TGETS	  9	9	9	; slot9 = uv1"unknown".evolution
		 55	[  0]	IST  	   		9	; if uv1"unknown".evolution
		 56	[  0]	JMP  	 10		1	; 	goto 58
		 57	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
		 58	[  0]	ISF  	   		9	; if not slot9
		 59	[  0]	JMP  	 10		3	; 	goto 63
		 60	[  0]	TGETS	 10	9	8	; slot10 = slot9.aspdGrowth
		 61	[  0]	IST  	   		10	; if <unknown table>.aspdGrowth
		 62	[  0]	JMP  	 11		1	; 	goto 64
		 63	[  0]	TNEW 	 10		0	; slot10 = new table( array: 0, dict: 1)
		 64	[  0]	TGETS	 11	10	7	; slot11 = slot10.internalScale
		 65	[  0]	IST  	   		11	; if <unknown table>.internalScale
		 66	[  0]	JMP  	 12		1	; 	goto 68
		 67	[  0]	KSHORT	 11		1	; slot11 = 1
		 68	[  0]	KSHORT	 12		0	; slot12 = 0
		 69	[  0]	ISGT 	 11		12	; if slot11 > slot12
		 70	[  0]	JMP  	 12		1	; 	goto 72
		 71	[  0]	KSHORT	 11		1	; slot11 = 1
		 72	[  0]	FNEW 	 12		6	; N/A:0-0: 1 args, 5 upvalues, 10 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	TGETS	  1	1	4	; slot1 = uv0"unknown".power
			  3	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
			  4	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
			  5	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
			  6	[  0]	GGET 	  6		3	; slot6 = _env["math"]
			  7	[  0]	TGETS	  6	6	2	; slot6 = math.max
			  8	[  0]	KSHORT	  8		0	; slot8 = 0
			  9	[  0]	MOV  	  9		0	; slot9 = slot0
			 10	[  0]	CALL 	  6	2	3	; slot6 = math.max(slot7, slot8)
			 11	[  0]	ADDVV	  5	5	6	; slot5 = uv3"unknown" + math.max
			 12	[  0]	CALL 	  1	2	4	; slot1 = uv0"unknown".power(slot2, uv1"unknown", uv2"unknown")
			 13	[  0]	GGET 	  2		1	; slot2 = _env["type"]
			 14	[  0]	MOV  	  4		1	; slot4 = slot1
			 15	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
			 16	[  0]	ISNES	  2		0	; if slot2 ~= "table"
			 17	[  0]	JMP  	  2		3	; 	goto 21
			 18	[  0]	TGETB	  2	1	1	; slot2 = slot1[1]
			 19	[  0]	IST  	   		2	; if slot2
			 20	[  0]	JMP  	  3		1	; 	goto 22
			 21	[  0]	MOV  	  2		1	; slot2 = slot1
			 22	[  0]	GGET 	  3		3	; slot3 = _env["math"]
			 23	[  0]	TGETS	  3	3	2	; slot3 = math.max
			 24	[  0]	KSHORT	  5		0	; slot5 = 0
			 25	[  0]	UGET 	  6		4	; slot6 = uv4"unknwon"
			 26	[  0]	SUBVV	  6	2	6	; slot6 = slot2 - uv4"unknown"
			 27	[  0]	CALLT	  3		3	; return math.max(slot4, slot5)
		 73	[  0]	UGET 	 13		2	; slot13 = uv2"unknwon"
		 74	[  0]	CALL 	 13	2	1	; slot13 = uv2"unknown"()
		 75	[  0]	GGET 	 14		14	; slot14 = _env["math"]
		 76	[  0]	TGETS	 14	14	13	; slot14 = math.max
		 77	[  0]	KNUM 	 16		0	; slot16 = 0.25
		 78	[  0]	TGETS	 17	13	5	; slot17 = uv2"unknown".ASPD0
		 79	[  0]	IST  	   		17	; if uv2"unknown".ASPD0
		 80	[  0]	JMP  	 18		1	; 	goto 82
		 81	[  0]	KNUM 	 17		1	; slot17 = 1.5
		 82	[  0]	MULVN	 17	17	2	; slot17 = slot17 * 2
		 83	[  0]	CALL 	 14	2	3	; slot14 = math.max(slot15, slot16)
		 84	[  0]	UGET 	 15		3	; slot15 = uv3"unknwon"
		 85	[  0]	MOV  	 17		8	; slot17 = uv0"unknown".power
		 86	[  0]	MOV  	 18		12	; slot18 = slot12
		 87	[  0]	MOV  	 19		4	; slot19 = math.max
		 88	[  0]	KSHORT	 20		0	; slot20 = 0
		 89	[  0]	MOV  	 21		14	; slot21 = math.max
		 90	[  0]	CALL 	 15	2	6	; slot15 = uv3"unknown"(slot16, uv0"unknown".power, slot18, math.max, slot20)
		 91	[  0]	TGETS	 16	10	4	; slot16 = slot10.maxDeltaPerAbsorb
		 92	[  0]	IST  	   		16	; if <unknown table>.maxDeltaPerAbsorb
		 93	[  0]	JMP  	 17		4	; 	goto 98
		 94	[  0]	TGETS	 16	10	3	; slot16 = slot10.maxSolveDelta
		 95	[  0]	IST  	   		16	; if <unknown table>.maxSolveDelta
		 96	[  0]	JMP  	 17		1	; 	goto 98
		 97	[  0]	KNUM 	 16		3	; slot16 = 1.2
		 98	[  0]	TGETS	 17	10	2	; slot17 = slot10.maxDeltaRel
		 99	[  0]	IST  	   		17	; if <unknown table>.maxDeltaRel
		100	[  0]	JMP  	 18		1	; 	goto 102
		101	[  0]	KSHORT	 17		0	; slot17 = 0
		102	[  0]	KSHORT	 18		0	; slot18 = 0
		103	[  0]	ISF  	   		17	; if not slot17
		104	[  0]	JMP  	 19		11	; 	goto 116
		105	[  0]	KSHORT	 19		0	; slot19 = 0
		106	[  0]	ISGE 	 19		17	; if slot19 >= slot17
		107	[  0]	JMP  	 19		8	; 	goto 116
		108	[  0]	GGET 	 19		14	; slot19 = _env["math"]
		109	[  0]	TGETS	 19	19	13	; slot19 = math.max
		110	[  0]	KNUM 	 21		4	; slot21 = 0.05
		111	[  0]	ISTC 	 22		2	; slot22 = slot2; if slot2
		112	[  0]	JMP  	 22		1	; 	goto 114
		113	[  0]	KSHORT	 22		0	; slot22 = 0
		114	[  0]	CALL 	 19	2	3	; slot19 = math.max(slot20, slot21)
		115	[  0]	MULVV	 18	17	19	; slot18 = slot17 * math.max
		116	[  0]	MOV  	 19		16	; slot19 = slot16
		117	[  0]	KSHORT	 20		0	; slot20 = 0
		118	[  0]	ISGE 	 20		18	; if slot20 >= slot18
		119	[  0]	JMP  	 20		6	; 	goto 126
		120	[  0]	GGET 	 20		14	; slot20 = _env["math"]
		121	[  0]	TGETS	 20	20	1	; slot20 = math.min
		122	[  0]	MOV  	 22		16	; slot22 = slot16
		123	[  0]	MOV  	 23		18	; slot23 = slot18
		124	[  0]	CALL 	 20	2	3	; slot20 = math.min(slot21, slot22)
		125	[  0]	MOV  	 19		20	; slot19 = math.min
		126	[  0]	GGET 	 20		14	; slot20 = _env["math"]
		127	[  0]	TGETS	 20	20	13	; slot20 = math.max
		128	[  0]	KNUM 	 22		5	; slot22 = 1e-06
		129	[  0]	MOV  	 23		19	; slot23 = math.min
		130	[  0]	CALL 	 20	2	3	; slot20 = math.max(slot21, slot22)
		131	[  0]	MOV  	 19		20	; slot19 = math.max
		132	[  0]	GGET 	 20		14	; slot20 = _env["math"]
		133	[  0]	TGETS	 20	20	0	; slot20 = math.tanh
		134	[  0]	DIVVV	 22	15	19	; slot22 = uv3"unknown" / math.max
		135	[  0]	CALL 	 20	2	2	; slot20 = math.tanh(slot21)
		136	[  0]	MULVV	 15	19	20	; slot15 = math.max * math.tanh
		137	[  0]	DIVVV	 16	15	11	; slot16 = slot15 / slot11
		138	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 139
		139	[  0]	RET1 	 16		2	; return slot16
		140	[  0]	RET1 	  5		2	; return math.max
		141	[  0]	RET1 	  7		2	; return uv0"unknown".power
	 32	[  0]	TSETS	 10	1	1	; slot1.solveDeltaASPD = slot10
	 33	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 34
	 34	[  0]	RET1 	  1		2	; return slot1
	
