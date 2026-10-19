;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\data\safe_lua_table.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 6 slots
	;;;; constant tables ;;;;
	ktable#7 = [
		[maxTotalStringBytes] = 33554432,
		[maxStringBytes] = 4194304,
		[maxEntries] = 250000,
		[maxDepth] = 64,
		[maxSourceBytes] = 16777216,
		]
	
	
	;;;; instructions ;;;;
	  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
	  2	[  0]	TDUP 	  1		7	; slot1 = copy table#k7
	  3	[  0]	FNEW 	  2		6	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISNEV	  0		0	; if slot0 ~= slot0
		  2	[  0]	JMP  	  1		9	; 	goto 12
		  3	[  0]	GGET 	  1		1	; slot1 = _env["math"]
		  4	[  0]	TGETS	  1	1	0	; slot1 = math.huge
		  5	[  0]	ISEQV	  0		1	; if slot0 == math.huge
		  6	[  0]	JMP  	  1		5	; 	goto 12
		  7	[  0]	GGET 	  1		1	; slot1 = _env["math"]
		  8	[  0]	TGETS	  1	1	0	; slot1 = math.huge
		  9	[  0]	UNM  	  1		1	; slot1 = -math.huge
		 10	[  0]	ISNEV	  0		1	; if slot0 ~= slot1
		 11	[  0]	JMP  	  1		2	; 	goto 14
		 12	[  0]	KPRI 	  1		1	; slot1 = false
		 13	[  0]	JMP  	  2		1	; 	goto 15
		 14	[  0]	KPRI 	  1		2	; slot1 = true
		 15	[  0]	RET1 	  1		2	; return slot1
	  4	[  0]	FNEW 	  3		5	; N/A:0-0: 1 args, 2 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  2	[  0]	GGET 	  2		5	; slot2 = _env["pairs"]
		  3	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  4	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = pairs(slot3)
		  5	[  0]	ISNEXT	  5		29	; Verify ITERN at 35; goto 35
		  6	[  0]	GGET 	  7		4	; slot7 = _env["type"]
		  7	[  0]	MOV  	  9		0	; slot9 = slot0
		  8	[  0]	CALL 	  7	2	2	; slot7 = type(slot8)
		  9	[  0]	ISNES	  7		3	; if type ~= "table"
		 10	[  0]	JMP  	  7		5	; 	goto 16
		 11	[  0]	GGET 	  7		2	; slot7 = _env["tonumber"]
		 12	[  0]	TGETV	  9	0	5	; slot9 = slot0[slot5]
		 13	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 14	[  0]	IST  	   		7	; if tonumber
		 15	[  0]	JMP  	  8		1	; 	goto 17
		 16	[  0]	KPRI 	  7		0	; slot7 = nil
		 17	[  0]	ISF  	   		7	; if not slot7
		 18	[  0]	JMP  	  8		14	; 	goto 33
		 19	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 20	[  0]	MOV  	 10		7	; slot10 = slot7
		 21	[  0]	CALL 	  8	2	2	; slot8 = uv1"unknown"(slot9)
		 22	[  0]	ISF  	   		8	; if not uv1"unknown"
		 23	[  0]	JMP  	  9		9	; 	goto 33
		 24	[  0]	KSHORT	  8		1	; slot8 = 1
		 25	[  0]	ISGT 	  8		7	; if slot8 > slot7
		 26	[  0]	JMP  	  8		6	; 	goto 33
		 27	[  0]	GGET 	  8		1	; slot8 = _env["math"]
		 28	[  0]	TGETS	  8	8	0	; slot8 = math.floor
		 29	[  0]	MOV  	 10		7	; slot10 = slot7
		 30	[  0]	CALL 	  8	2	2	; slot8 = math.floor(slot9)
		 31	[  0]	IST  	   		8	; if math.floor
		 32	[  0]	JMP  	  9		1	; 	goto 34
		 33	[  0]	MOV  	  8		6	; slot8 = slot6
		 34	[  0]	TSETV	  8	1	5	; slot1[slot5] = slot8
		 35	[  0]	ITERN	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, uv0"unknown"; slot5, slot6 = slot2(slot3, uv0"unknown")
		 36	[  0]	ITERL	  5		-31	; uv0"unknown" = slot5; if slot5 != nil goto 6
		 37	[  0]	RET1 	  1		2	; return slot1
	  5	[  0]	FNEW 	  4		4	; N/A:0-0: 2 args, 1 upvalues, 19 slots
		
		;;;; constant tables ;;;;
		ktable#13 = [
			[t] = 	,
			[a] = ,
			[v] = ,
			[r] = ,
			[n] = 
,
			[f] = ,
			[b] = ,
			[\] = \,
			["] = ",
			['] = ',
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	KSHORT	  2		1	; slot2 = 1
		  2	[  0]	LEN  	  3		0	; slot3 = #slot0
		  3	[  0]	KSHORT	  4		0	; slot4 = 0
		  4	[  0]	KSHORT	  5		0	; slot5 = 0
		  5	[  0]	FNEW 	  6		17	; N/A:0-0: 1 args, 0 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  1		0	; slot1 = _env["error"]
			  2	[  0]	MOV  	  3		0	; slot3 = slot0
			  3	[  0]	KSHORT	  4		0	; slot4 = 0
			  4	[  0]	CALL 	  1	1	3	;  = error(slot2, slot3)
			  5	[  0]	RET0 	  0		1	; return
		  6	[  0]	FNEW 	  7		16	; N/A:0-0: 0 args, 2 upvalues, 6 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	MOV  	  2		0	; slot2 = uv0"unknown"
			  3	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".byte
			  4	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
			  5	[  0]	CALL 	  0	2	3	; slot0 = uv0"unknown".byte(slot1, uv0"unknown")
			  6	[  0]	ISEQN	  0		0	; if slot0 == 32
			  7	[  0]	JMP  	  1		11	; 	goto 19
			  8	[  0]	ISEQN	  0		1	; if slot0 == 9
			  9	[  0]	JMP  	  1		9	; 	goto 19
			 10	[  0]	ISEQN	  0		2	; if slot0 == 10
			 11	[  0]	JMP  	  1		7	; 	goto 19
			 12	[  0]	ISEQN	  0		3	; if slot0 == 13
			 13	[  0]	JMP  	  1		5	; 	goto 19
			 14	[  0]	ISEQN	  0		4	; if slot0 == 11
			 15	[  0]	JMP  	  1		3	; 	goto 19
			 16	[  0]	ISEQN	  0		5	; if slot0 == 12
			 17	[  0]	JMP  	  1		1	; 	goto 19
			 18	[  0]	RET0 	  0		1	; return
			 19	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			 20	[  0]	MOV  	  3		1	; slot3 = uv0"unknown"
			 21	[  0]	TGETS	  1	1	1	; slot1 = uv0"unknown".find
			 22	[  0]	KSTR 	  4		0	; slot4 = "^[ 	
			]*"
			 23	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
			 24	[  0]	CALL 	  1	3	4	; slot1, slot2 = uv0"unknown".find(slot2, uv0"unknown", slot4)
			 25	[  0]	ISTC 	  3		2	; slot3 = slot2; if slot2
			 26	[  0]	JMP  	  3		2	; 	goto 29
			 27	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
			 28	[  0]	SUBVN	  3	3	6	; slot3 = uv1"unknown" - 1
			 29	[  0]	ADDVN	  3	3	6	; slot3 = slot3 + 1
			 30	[  0]	USETV	  1		3	; uv1"unknwon" = slot3
			 31	[  0]	RET0 	  0		1	; return
		  7	[  0]	FNEW 	  8		15	; N/A:0-0: 1 args, 4 upvalues, 7 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	CALL 	  1	1	1	;  = uv0"unknown"()
			  3	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			  4	[  0]	MOV  	  3		1	; slot3 = uv1"unknown"
			  5	[  0]	TGETS	  1	1	1	; slot1 = uv1"unknown".sub
			  6	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
			  7	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
			  8	[  0]	LEN  	  6		0	; slot6 = #slot0
			  9	[  0]	ADDVV	  5	5	6	; slot5 = uv2"unknown" + slot6
			 10	[  0]	SUBVN	  5	5	0	; slot5 = slot5 - 1
			 11	[  0]	CALL 	  1	2	4	; slot1 = uv1"unknown".sub(slot2, uv1"unknown", uv2"unknown")
			 12	[  0]	ISEQV	  1		0	; if slot1 == slot0
			 13	[  0]	JMP  	  1		5	; 	goto 19
			 14	[  0]	UGET 	  1		3	; slot1 = uv3"unknwon"
			 15	[  0]	KSTR 	  3		0	; slot3 = "expected "
			 16	[  0]	MOV  	  4		0	; slot4 = slot0
			 17	[  0]	CAT  	  3	3	4	; slot3 = slot3 .. slot4
			 18	[  0]	CALL 	  1	1	2	;  = uv3"unknown"(slot2)
			 19	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
			 20	[  0]	LEN  	  2		0	; slot2 = #slot0
			 21	[  0]	ADDVV	  1	1	2	; slot1 = uv2"unknown" + slot2
			 22	[  0]	USETV	  2		1	; uv2"unknwon" = slot1
			 23	[  0]	RET0 	  0		1	; return
		  8	[  0]	FNEW 	  9		14	; N/A:0-0: 1 args, 3 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	LEN  	  2		0	; slot2 = #slot0
			  3	[  0]	ADDVV	  1	1	2	; slot1 = uv0"unknown" + slot2
			  4	[  0]	USETV	  0		1	; uv0"unknwon" = slot1
			  5	[  0]	LEN  	  1		0	; slot1 = #slot0
			  6	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  7	[  0]	TGETS	  2	2	2	; slot2 = uv1"unknown".maxStringBytes
			  8	[  0]	ISLT 	  2		1	; if uv1"unknown".maxStringBytes < slot1
			  9	[  0]	JMP  	  1		5	; 	goto 15
			 10	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			 11	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			 12	[  0]	TGETS	  2	2	1	; slot2 = uv1"unknown".maxTotalStringBytes
			 13	[  0]	ISGE 	  2		1	; if uv1"unknown".maxTotalStringBytes >= uv0"unknown"
			 14	[  0]	JMP  	  1		3	; 	goto 18
			 15	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
			 16	[  0]	KSTR 	  3		0	; slot3 = "string limit exceeded"
			 17	[  0]	CALL 	  1	1	2	;  = uv2"unknown"(uv1"unknown".maxTotalStringBytes)
			 18	[  0]	RET1 	  0		2	; return slot0
		  9	[  0]	TDUP 	 10		13	; slot10 = copy table#k13
		 10	[  0]	FNEW 	 11		12	; N/A:0-0: 0 args, 8 upvalues, 15 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	MOV  	  2		0	; slot2 = uv0"unknown"
			  3	[  0]	TGETS	  0	0	25	; slot0 = uv0"unknown".sub
			  4	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
			  5	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
			  6	[  0]	CALL 	  0	2	4	; slot0 = uv0"unknown".sub(slot1, uv0"unknown", uv1"unknown")
			  7	[  0]	ISNES	  0		24	; if slot0 ~= """
			  8	[  0]	JMP  	  1		2	; 	goto 11
			  9	[  0]	KSTR 	  1		23	; slot1 = "["\
			]"
			 10	[  0]	JMP  	  2		1	; 	goto 12
			 11	[  0]	KSTR 	  1		22	; slot1 = "['\
			]"
			 12	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			 13	[  0]	MOV  	  4		2	; slot4 = uv0"unknown"
			 14	[  0]	TGETS	  2	2	21	; slot2 = uv0"unknown".find
			 15	[  0]	MOV  	  5		1	; slot5 = slot1
			 16	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
			 17	[  0]	ADDVN	  6	6	0	; slot6 = uv1"unknown" + 1
			 18	[  0]	CALL 	  2	2	4	; slot2 = uv0"unknown".find(slot3, uv0"unknown", slot5)
			 19	[  0]	ISF  	   		2	; if not slot2
			 20	[  0]	JMP  	  3		20	; 	goto 41
			 21	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			 22	[  0]	MOV  	  5		3	; slot5 = uv0"unknown"
			 23	[  0]	TGETS	  3	3	25	; slot3 = uv0"unknown".sub
			 24	[  0]	MOV  	  6		2	; slot6 = slot2
			 25	[  0]	MOV  	  7		2	; slot7 = slot2
			 26	[  0]	CALL 	  3	2	4	; slot3 = uv0"unknown".sub(slot4, uv0"unknown", slot6)
			 27	[  0]	ISNEV	  3		0	; if slot3 ~= slot0
			 28	[  0]	JMP  	  3		12	; 	goto 41
			 29	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
			 30	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
			 31	[  0]	MOV  	  7		5	; slot7 = uv0"unknown"
			 32	[  0]	TGETS	  5	5	25	; slot5 = uv0"unknown".sub
			 33	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
			 34	[  0]	ADDVN	  8	8	0	; slot8 = uv1"unknown" + 1
			 35	[  0]	SUBVN	  9	2	0	; slot9 = slot2 - 1
			 36	[  0]	CALL 	  5	0	4	; MULTRES = uv0"unknown".sub(slot6, uv0"unknown", slot8)
			 37	[  0]	CALLM	  3	2	0	; slot3 = uv2"unknown"(, ...MULTRES)
			 38	[  0]	ADDVN	  4	2	0	; slot4 = slot2 + 1
			 39	[  0]	USETV	  1		4	; uv1"unknwon" = slot4
			 40	[  0]	RET1 	  3		2	; return uv2"unknown"
			 41	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
			 42	[  0]	KSHORT	  4		0	; slot4 = 0
			 43	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
			 44	[  0]	ADDVN	  5	5	0	; slot5 = uv1"unknown" + 1
			 45	[  0]	USETV	  1		5	; uv1"unknwon" = slot5
			 46	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
			 47	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
			 48	[  0]	ISGT 	  5		6	; if uv1"unknown" > uv3"unknown"
			 49	[  0]	JMP  	  5		186	; 	goto 236
			 50	[  0]	LOOP 	  5		185	; Loop start, exit goto 236
			 51	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
			 52	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
			 53	[  0]	MOV  	  8		6	; slot8 = uv0"unknown"
			 54	[  0]	TGETS	  6	6	21	; slot6 = uv0"unknown".find
			 55	[  0]	MOV  	  9		1	; slot9 = slot1
			 56	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
			 57	[  0]	CALL 	  6	2	4	; slot6 = uv0"unknown".find(uv0"unknown", uv0"unknown", slot9)
			 58	[  0]	IST  	   		6	; if uv0"unknown".find
			 59	[  0]	JMP  	  7		2	; 	goto 62
			 60	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
			 61	[  0]	ADDVN	  6	6	0	; slot6 = uv3"unknown" + 1
			 62	[  0]	USETV	  1		6	; uv1"unknwon" = slot6
			 63	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
			 64	[  0]	MOV  	  8		6	; slot8 = uv0"unknown"
			 65	[  0]	TGETS	  6	6	25	; slot6 = uv0"unknown".sub
			 66	[  0]	MOV  	  9		5	; slot9 = uv1"unknown"
			 67	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
			 68	[  0]	SUBVN	 10	10	0	; slot10 = uv1"unknown" - 1
			 69	[  0]	CALL 	  6	2	4	; slot6 = uv0"unknown".sub(uv0"unknown", uv0"unknown", uv1"unknown")
			 70	[  0]	LEN  	  7		6	; slot7 = #uv0"unknown".sub
			 71	[  0]	ADDVV	  4	4	7	; slot4 = slot4 + slot7
			 72	[  0]	UGET 	  7		4	; slot7 = uv4"unknwon"
			 73	[  0]	TGETS	  7	7	20	; slot7 = uv4"unknown".maxStringBytes
			 74	[  0]	ISGE 	  7		4	; if uv4"unknown".maxStringBytes >= slot4
			 75	[  0]	JMP  	  7		3	; 	goto 79
			 76	[  0]	UGET 	  7		5	; slot7 = uv5"unknwon"
			 77	[  0]	KSTR 	  9		19	; slot9 = "string limit exceeded"
			 78	[  0]	CALL 	  7	1	2	;  = uv5"unknown"(uv0"unknown")
			 79	[  0]	LEN  	  7		3	; slot7 = #slot3
			 80	[  0]	ADDVN	  7	7	0	; slot7 = slot7 + 1
			 81	[  0]	TSETV	  6	3	7	; slot3[slot7] = uv0"unknown".sub
			 82	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
			 83	[  0]	MOV  	  9		7	; slot9 = uv0"unknown"
			 84	[  0]	TGETS	  7	7	25	; slot7 = uv0"unknown".sub
			 85	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
			 86	[  0]	UGET 	 11		1	; slot11 = uv1"unknwon"
			 87	[  0]	CALL 	  7	2	4	; slot7 = uv0"unknown".sub(uv0"unknown", uv0"unknown", uv1"unknown")
			 88	[  0]	ISNEV	  7		0	; if uv0"unknown".sub ~= slot0
			 89	[  0]	JMP  	  8		9	; 	goto 99
			 90	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
			 91	[  0]	ADDVN	  8	8	0	; slot8 = uv1"unknown" + 1
			 92	[  0]	USETV	  1		8	; uv1"unknwon" = slot8
			 93	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
			 94	[  0]	GGET 	 10		18	; slot10 = _env["table"]
			 95	[  0]	TGETS	 10	10	17	; slot10 = table.concat
			 96	[  0]	MOV  	 12		3	; slot12 = slot3
			 97	[  0]	CALL 	 10	0	2	; MULTRES = table.concat(uv1"unknown")
			 98	[  0]	CALLMT	  8		0	; return uv2"unknown"(, ...MULTRES)
			 99	[  0]	ISEQS	  7		16	; if uv0"unknown".sub == "\"
			100	[  0]	JMP  	  8		3	; 	goto 104
			101	[  0]	UGET 	  8		5	; slot8 = uv5"unknwon"
			102	[  0]	KSTR 	 10		15	; slot10 = "unterminated string"
			103	[  0]	CALL 	  8	1	2	;  = uv5"unknown"(uv0"unknown")
			104	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
			105	[  0]	ADDVN	  8	8	0	; slot8 = uv1"unknown" + 1
			106	[  0]	USETV	  1		8	; uv1"unknwon" = slot8
			107	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
			108	[  0]	MOV  	 10		8	; slot10 = uv0"unknown"
			109	[  0]	TGETS	  8	8	25	; slot8 = uv0"unknown".sub
			110	[  0]	UGET 	 11		1	; slot11 = uv1"unknwon"
			111	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
			112	[  0]	CALL 	  8	2	4	; slot8 = uv0"unknown".sub(uv0"unknown", uv0"unknown", uv1"unknown")
			113	[  0]	MOV  	  7		8	; slot7 = uv0"unknown".sub
			114	[  0]	UGET 	  8		6	; slot8 = uv6"unknwon"
			115	[  0]	TGETV	  8	8	7	; slot8 = uv6"unknown"[uv0"unknown".sub]
			116	[  0]	ISF  	   		8	; if not slot8
			117	[  0]	JMP  	  9		7	; 	goto 125
			118	[  0]	UGET 	  8		6	; slot8 = uv6"unknwon"
			119	[  0]	TGETV	  8	8	7	; slot8 = uv6"unknown"[uv0"unknown".sub]
			120	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
			121	[  0]	ADDVN	  9	9	0	; slot9 = uv1"unknown" + 1
			122	[  0]	USETV	  1		9	; uv1"unknwon" = slot9
			123	[  0]	MOV  	  6		8	; slot6 = slot8
			124	[  0]	JMP  	  8		98	; 	goto 223
			125	[  0]	MOV  	 10		7	; slot10 = uv0"unknown".sub
			126	[  0]	TGETS	  8	7	14	; slot8 = uv0"unknown".sub.match
			127	[  0]	KSTR 	 11		13	; slot11 = "%d"
			128	[  0]	CALL 	  8	2	3	; slot8 = uv0"unknown".sub.match(slot9, uv0"unknown".sub)
			129	[  0]	ISF  	   		8	; if not uv0"unknown".sub.match
			130	[  0]	JMP  	  9		25	; 	goto 156
			131	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
			132	[  0]	MOV  	 10		8	; slot10 = uv0"unknown"
			133	[  0]	TGETS	  8	8	14	; slot8 = uv0"unknown".match
			134	[  0]	KSTR 	 11		12	; slot11 = "^(%d%d?%d?)"
			135	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
			136	[  0]	CALL 	  8	2	4	; slot8 = uv0"unknown".match(slot9, uv0"unknown", slot11)
			137	[  0]	GGET 	  9		11	; slot9 = _env["tonumber"]
			138	[  0]	MOV  	 11		8	; slot11 = uv0"unknown".match
			139	[  0]	CALL 	  9	2	2	; slot9 = tonumber(uv0"unknown")
			140	[  0]	KSHORT	 10		255	; slot10 = 255
			141	[  0]	ISGE 	 10		9	; if slot10 >= tonumber
			142	[  0]	JMP  	 10		3	; 	goto 146
			143	[  0]	UGET 	 10		5	; slot10 = uv5"unknwon"
			144	[  0]	KSTR 	 12		10	; slot12 = "invalid decimal escape"
			145	[  0]	CALL 	 10	1	2	;  = uv5"unknown"(uv0"unknown".match)
			146	[  0]	GGET 	 10		9	; slot10 = _env["string"]
			147	[  0]	TGETS	 10	10	8	; slot10 = string.char
			148	[  0]	MOV  	 12		9	; slot12 = tonumber
			149	[  0]	CALL 	 10	2	2	; slot10 = string.char(uv0"unknown".match)
			150	[  0]	UGET 	 11		1	; slot11 = uv1"unknwon"
			151	[  0]	LEN  	 12		8	; slot12 = #uv0"unknown".match
			152	[  0]	ADDVV	 11	11	12	; slot11 = uv1"unknown" + slot12
			153	[  0]	USETV	  1		11	; uv1"unknwon" = slot11
			154	[  0]	MOV  	  6		10	; slot6 = string.char
			155	[  0]	JMP  	  8		67	; 	goto 223
			156	[  0]	ISNES	  7		7	; if uv0"unknown".sub ~= "x"
			157	[  0]	JMP  	  8		29	; 	goto 187
			158	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
			159	[  0]	MOV  	 10		8	; slot10 = uv0"unknown"
			160	[  0]	TGETS	  8	8	25	; slot8 = uv0"unknown".sub
			161	[  0]	UGET 	 11		1	; slot11 = uv1"unknwon"
			162	[  0]	ADDVN	 11	11	0	; slot11 = uv1"unknown" + 1
			163	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
			164	[  0]	ADDVN	 12	12	1	; slot12 = uv1"unknown" + 2
			165	[  0]	CALL 	  8	2	4	; slot8 = uv0"unknown".sub(tonumber, uv0"unknown", slot11)
			166	[  0]	MOV  	 11		8	; slot11 = uv0"unknown".sub
			167	[  0]	TGETS	  9	8	14	; slot9 = uv0"unknown".sub.match
			168	[  0]	KSTR 	 12		6	; slot12 = "^%x%x$"
			169	[  0]	CALL 	  9	2	3	; slot9 = uv0"unknown".sub.match(uv0"unknown", uv0"unknown".sub)
			170	[  0]	IST  	   		9	; if uv0"unknown".sub.match
			171	[  0]	JMP  	  9		3	; 	goto 175
			172	[  0]	UGET 	  9		5	; slot9 = uv5"unknwon"
			173	[  0]	KSTR 	 11		5	; slot11 = "invalid hexadecimal escape"
			174	[  0]	CALL 	  9	1	2	;  = uv5"unknown"(uv0"unknown")
			175	[  0]	GGET 	  9		9	; slot9 = _env["string"]
			176	[  0]	TGETS	  9	9	8	; slot9 = string.char
			177	[  0]	GGET 	 11		11	; slot11 = _env["tonumber"]
			178	[  0]	MOV  	 13		8	; slot13 = uv0"unknown".sub
			179	[  0]	KSHORT	 14		16	; slot14 = 16
			180	[  0]	CALL 	 11	0	3	; MULTRES = tonumber(slot12, uv0"unknown".sub)
			181	[  0]	CALLM	  9	2	0	; slot9 = string.char(, ...MULTRES)
			182	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
			183	[  0]	ADDVN	 10	10	2	; slot10 = uv1"unknown" + 3
			184	[  0]	USETV	  1		10	; uv1"unknwon" = slot10
			185	[  0]	MOV  	  6		9	; slot6 = string.char
			186	[  0]	JMP  	  8		36	; 	goto 223
			187	[  0]	ISNES	  7		4	; if uv0"unknown".sub ~= "z"
			188	[  0]	JMP  	  8		7	; 	goto 196
			189	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
			190	[  0]	ADDVN	  8	8	0	; slot8 = uv1"unknown" + 1
			191	[  0]	USETV	  1		8	; uv1"unknwon" = slot8
			192	[  0]	UGET 	  8		7	; slot8 = uv7"unknwon"
			193	[  0]	CALL 	  8	1	1	;  = uv7"unknown"()
			194	[  0]	KSTR 	  6		3	; slot6 = ""
			195	[  0]	JMP  	  8		27	; 	goto 223
			196	[  0]	ISEQS	  7		2	; if uv0"unknown".sub == ""
			197	[  0]	JMP  	  8		2	; 	goto 200
			198	[  0]	ISNES	  7		1	; if uv0"unknown".sub ~= "
			"
			199	[  0]	JMP  	  8		20	; 	goto 220
			200	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
			201	[  0]	ADDVN	  8	8	0	; slot8 = uv1"unknown" + 1
			202	[  0]	USETV	  1		8	; uv1"unknwon" = slot8
			203	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
			204	[  0]	MOV  	 10		8	; slot10 = uv0"unknown"
			205	[  0]	TGETS	  8	8	25	; slot8 = uv0"unknown".sub
			206	[  0]	UGET 	 11		1	; slot11 = uv1"unknwon"
			207	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
			208	[  0]	CALL 	  8	2	4	; slot8 = uv0"unknown".sub(string.char, uv0"unknown", uv1"unknown")
			209	[  0]	ISEQS	  8		2	; if uv0"unknown".sub == ""
			210	[  0]	JMP  	  9		2	; 	goto 213
			211	[  0]	ISNES	  8		1	; if uv0"unknown".sub ~= "
			"
			212	[  0]	JMP  	  9		5	; 	goto 218
			213	[  0]	ISEQV	  8		7	; if uv0"unknown".sub == uv0"unknown".sub
			214	[  0]	JMP  	  9		3	; 	goto 218
			215	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
			216	[  0]	ADDVN	  9	9	0	; slot9 = uv1"unknown" + 1
			217	[  0]	USETV	  1		9	; uv1"unknwon" = slot9
			218	[  0]	KSTR 	  6		1	; slot6 = "
			"
			219	[  0]	JMP  	  8		3	; 	goto 223
			220	[  0]	UGET 	  8		5	; slot8 = uv5"unknwon"
			221	[  0]	KSTR 	 10		0	; slot10 = "invalid string escape"
			222	[  0]	CALL 	  8	1	2	;  = uv5"unknown"(slot9)
			223	[  0]	LEN  	  8		6	; slot8 = #slot6
			224	[  0]	ADDVV	  4	4	8	; slot4 = slot4 + slot8
			225	[  0]	UGET 	  8		4	; slot8 = uv4"unknwon"
			226	[  0]	TGETS	  8	8	20	; slot8 = uv4"unknown".maxStringBytes
			227	[  0]	ISGE 	  8		4	; if uv4"unknown".maxStringBytes >= slot4
			228	[  0]	JMP  	  8		3	; 	goto 232
			229	[  0]	UGET 	  8		5	; slot8 = uv5"unknwon"
			230	[  0]	KSTR 	 10		19	; slot10 = "string limit exceeded"
			231	[  0]	CALL 	  8	1	2	;  = uv5"unknown"(slot9)
			232	[  0]	LEN  	  8		3	; slot8 = #slot3
			233	[  0]	ADDVN	  8	8	0	; slot8 = slot8 + 1
			234	[  0]	TSETV	  6	3	8	; slot3[slot8] = slot6
			235	[  0]	JMP  	  5		-190	; 	goto 46
			236	[  0]	UGET 	  5		5	; slot5 = uv5"unknwon"
			237	[  0]	KSTR 	  7		15	; slot7 = "unterminated string"
			238	[  0]	CALL 	  5	1	2	;  = uv5"unknown"(slot6)
			239	[  0]	RET0 	  0		1	; return
		 11	[  0]	KPRI 	 12		0	; slot12 = nil
		 12	[  0]	FNEW 	 13		11	; N/A:0-0: 1 args, 8 upvalues, 10 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	TGETS	  1	1	16	; slot1 = uv0"unknown".maxDepth
			  3	[  0]	ISGE 	  1		0	; if uv0"unknown".maxDepth >= slot0
			  4	[  0]	JMP  	  1		3	; 	goto 8
			  5	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			  6	[  0]	KSTR 	  3		15	; slot3 = "table depth limit exceeded"
			  7	[  0]	CALL 	  1	1	2	;  = uv1"unknown"(slot2)
			  8	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
			  9	[  0]	KSTR 	  3		14	; slot3 = "{"
			 10	[  0]	CALL 	  1	1	2	;  = uv2"unknown"(slot2)
			 11	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
			 12	[  0]	KSHORT	  2		1	; slot2 = 1
			 13	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
			 14	[  0]	CALL 	  3	1	1	;  = uv3"unknown"()
			 15	[  0]	UGET 	  3		4	; slot3 = uv4"unknwon"
			 16	[  0]	MOV  	  5		3	; slot5 = uv4"unknown"
			 17	[  0]	TGETS	  3	3	13	; slot3 = uv4"unknown".sub
			 18	[  0]	UGET 	  6		5	; slot6 = uv5"unknwon"
			 19	[  0]	UGET 	  7		5	; slot7 = uv5"unknwon"
			 20	[  0]	CALL 	  3	2	4	; slot3 = uv4"unknown".sub(slot4, uv4"unknown", uv5"unknown")
			 21	[  0]	ISEQS	  3		12	; if slot3 == "}"
			 22	[  0]	JMP  	  3		87	; 	goto 110
			 23	[  0]	LOOP 	  3		86	; Loop start, exit goto 110
			 24	[  0]	UGET 	  3		6	; slot3 = uv6"unknwon"
			 25	[  0]	ADDVN	  3	3	0	; slot3 = uv6"unknown" + 1
			 26	[  0]	USETV	  6		3	; uv6"unknwon" = slot3
			 27	[  0]	UGET 	  3		6	; slot3 = uv6"unknwon"
			 28	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			 29	[  0]	TGETS	  4	4	11	; slot4 = uv0"unknown".maxEntries
			 30	[  0]	ISGE 	  4		3	; if uv0"unknown".maxEntries >= uv6"unknown"
			 31	[  0]	JMP  	  3		3	; 	goto 35
			 32	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
			 33	[  0]	KSTR 	  5		10	; slot5 = "table entry limit exceeded"
			 34	[  0]	CALL 	  3	1	2	;  = uv1"unknown"(uv0"unknown".maxEntries)
			 35	[  0]	KNIL 	  3		4	; uv1"unknown", uv0"unknown".maxEntries = nil
			 36	[  0]	UGET 	  5		4	; slot5 = uv4"unknwon"
			 37	[  0]	MOV  	  7		5	; slot7 = uv4"unknown"
			 38	[  0]	TGETS	  5	5	13	; slot5 = uv4"unknown".sub
			 39	[  0]	UGET 	  8		5	; slot8 = uv5"unknwon"
			 40	[  0]	UGET 	  9		5	; slot9 = uv5"unknwon"
			 41	[  0]	CALL 	  5	2	4	; slot5 = uv4"unknown".sub(slot6, uv4"unknown", uv5"unknown")
			 42	[  0]	ISNES	  5		9	; if uv4"unknown".sub ~= "["
			 43	[  0]	JMP  	  5		36	; 	goto 80
			 44	[  0]	UGET 	  5		5	; slot5 = uv5"unknwon"
			 45	[  0]	ADDVN	  5	5	0	; slot5 = uv5"unknown" + 1
			 46	[  0]	USETV	  5		5	; uv5"unknwon" = slot5
			 47	[  0]	UGET 	  5		7	; slot5 = uv7"unknwon"
			 48	[  0]	ADDVN	  7	0	0	; slot7 = slot0 + 1
			 49	[  0]	CALL 	  5	2	2	; slot5 = uv7"unknown"(slot6)
			 50	[  0]	MOV  	  3		5	; slot3 = uv7"unknown"
			 51	[  0]	GGET 	  5		8	; slot5 = _env["type"]
			 52	[  0]	MOV  	  7		3	; slot7 = uv7"unknown"
			 53	[  0]	CALL 	  5	2	2	; slot5 = type(slot6)
			 54	[  0]	ISEQS	  5		7	; if type == "number"
			 55	[  0]	JMP  	  5		13	; 	goto 69
			 56	[  0]	GGET 	  5		8	; slot5 = _env["type"]
			 57	[  0]	MOV  	  7		3	; slot7 = uv7"unknown"
			 58	[  0]	CALL 	  5	2	2	; slot5 = type(slot6)
			 59	[  0]	ISEQS	  5		6	; if type == "string"
			 60	[  0]	JMP  	  5		8	; 	goto 69
			 61	[  0]	GGET 	  5		8	; slot5 = _env["type"]
			 62	[  0]	MOV  	  7		3	; slot7 = uv7"unknown"
			 63	[  0]	CALL 	  5	2	2	; slot5 = type(slot6)
			 64	[  0]	ISEQS	  5		5	; if type == "boolean"
			 65	[  0]	JMP  	  5		3	; 	goto 69
			 66	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
			 67	[  0]	KSTR 	  7		4	; slot7 = "invalid table key"
			 68	[  0]	CALL 	  5	1	2	;  = uv1"unknown"(slot6)
			 69	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
			 70	[  0]	KSTR 	  7		3	; slot7 = "]"
			 71	[  0]	CALL 	  5	1	2	;  = uv2"unknown"(slot6)
			 72	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
			 73	[  0]	KSTR 	  7		2	; slot7 = "="
			 74	[  0]	CALL 	  5	1	2	;  = uv2"unknown"(slot6)
			 75	[  0]	UGET 	  5		7	; slot5 = uv7"unknwon"
			 76	[  0]	ADDVN	  7	0	0	; slot7 = slot0 + 1
			 77	[  0]	CALL 	  5	2	2	; slot5 = uv7"unknown"(slot6)
			 78	[  0]	MOV  	  4		5	; slot4 = uv7"unknown"
			 79	[  0]	JMP  	  5		7	; 	goto 87
			 80	[  0]	MOV  	  5		2	; slot5 = slot2
			 81	[  0]	ADDVN	  2	2	0	; slot2 = slot2 + 1
			 82	[  0]	MOV  	  3		5	; slot3 = slot5
			 83	[  0]	UGET 	  5		7	; slot5 = uv7"unknwon"
			 84	[  0]	ADDVN	  7	0	0	; slot7 = slot0 + 1
			 85	[  0]	CALL 	  5	2	2	; slot5 = uv7"unknown"(slot6)
			 86	[  0]	MOV  	  4		5	; slot4 = uv7"unknown"
			 87	[  0]	TSETV	  4	1	3	; slot1[slot3] = uv7"unknown"
			 88	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
			 89	[  0]	CALL 	  5	1	1	;  = uv3"unknown"()
			 90	[  0]	UGET 	  5		4	; slot5 = uv4"unknwon"
			 91	[  0]	MOV  	  7		5	; slot7 = uv4"unknown"
			 92	[  0]	TGETS	  5	5	13	; slot5 = uv4"unknown".sub
			 93	[  0]	UGET 	  8		5	; slot8 = uv5"unknwon"
			 94	[  0]	UGET 	  9		5	; slot9 = uv5"unknwon"
			 95	[  0]	CALL 	  5	2	4	; slot5 = uv4"unknown".sub(slot6, uv4"unknown", uv5"unknown")
			 96	[  0]	ISNES	  5		1	; if uv4"unknown".sub ~= ","
			 97	[  0]	JMP  	  6		6	; 	goto 104
			 98	[  0]	UGET 	  6		5	; slot6 = uv5"unknwon"
			 99	[  0]	ADDVN	  6	6	0	; slot6 = uv5"unknown" + 1
			100	[  0]	USETV	  5		6	; uv5"unknwon" = slot6
			101	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
			102	[  0]	CALL 	  6	1	1	;  = uv3"unknown"()
			103	[  0]	JMP  	  6		-89	; 	goto 15
			104	[  0]	ISEQS	  5		12	; if uv4"unknown".sub == "}"
			105	[  0]	JMP  	  6		-91	; 	goto 15
			106	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
			107	[  0]	KSTR 	  8		0	; slot8 = "expected table separator"
			108	[  0]	CALL 	  6	1	2	;  = uv1"unknown"(uv4"unknown")
			109	[  0]	JMP  	  3		-95	; 	goto 15
			110	[  0]	UGET 	  3		5	; slot3 = uv5"unknwon"
			111	[  0]	ADDVN	  3	3	0	; slot3 = uv5"unknown" + 1
			112	[  0]	USETV	  5		3	; uv5"unknwon" = slot3
			113	[  0]	RET1 	  1		2	; return slot1
		 13	[  0]	FNEW 	 12		10	; N/A:0-0: 1 args, 7 upvalues, 7 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	CALL 	  1	1	1	;  = uv0"unknown"()
			  3	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			  4	[  0]	MOV  	  3		1	; slot3 = uv1"unknown"
			  5	[  0]	TGETS	  1	1	12	; slot1 = uv1"unknown".sub
			  6	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
			  7	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
			  8	[  0]	CALL 	  1	2	4	; slot1 = uv1"unknown".sub(slot2, uv1"unknown", uv2"unknown")
			  9	[  0]	ISNES	  1		11	; if slot1 ~= "{"
			 10	[  0]	JMP  	  2		3	; 	goto 14
			 11	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
			 12	[  0]	MOV  	  4		0	; slot4 = slot0
			 13	[  0]	CALLT	  2		2	; return uv3"unknown"(slot3)
			 14	[  0]	ISEQS	  1		10	; if slot1 == """
			 15	[  0]	JMP  	  2		2	; 	goto 18
			 16	[  0]	ISNES	  1		9	; if slot1 ~= "'"
			 17	[  0]	JMP  	  2		2	; 	goto 20
			 18	[  0]	UGET 	  2		4	; slot2 = uv4"unknwon"
			 19	[  0]	CALLT	  2		1	; return uv4"unknown"()
			 20	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			 21	[  0]	MOV  	  4		2	; slot4 = uv1"unknown"
			 22	[  0]	TGETS	  2	2	12	; slot2 = uv1"unknown".sub
			 23	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
			 24	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
			 25	[  0]	ADDVN	  6	6	0	; slot6 = uv2"unknown" + 3
			 26	[  0]	CALL 	  2	2	4	; slot2 = uv1"unknown".sub(slot3, uv1"unknown", uv2"unknown")
			 27	[  0]	ISNES	  2		8	; if slot2 ~= "true"
			 28	[  0]	JMP  	  2		5	; 	goto 34
			 29	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
			 30	[  0]	ADDVN	  2	2	1	; slot2 = uv2"unknown" + 4
			 31	[  0]	USETV	  2		2	; uv2"unknwon" = slot2
			 32	[  0]	KPRI 	  2		2	; slot2 = true
			 33	[  0]	RET1 	  2		2	; return slot2
			 34	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			 35	[  0]	MOV  	  4		2	; slot4 = uv1"unknown"
			 36	[  0]	TGETS	  2	2	12	; slot2 = uv1"unknown".sub
			 37	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
			 38	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
			 39	[  0]	ADDVN	  6	6	1	; slot6 = uv2"unknown" + 4
			 40	[  0]	CALL 	  2	2	4	; slot2 = uv1"unknown".sub(slot3, uv1"unknown", uv2"unknown")
			 41	[  0]	ISNES	  2		7	; if slot2 ~= "false"
			 42	[  0]	JMP  	  2		5	; 	goto 48
			 43	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
			 44	[  0]	ADDVN	  2	2	2	; slot2 = uv2"unknown" + 5
			 45	[  0]	USETV	  2		2	; uv2"unknwon" = slot2
			 46	[  0]	KPRI 	  2		1	; slot2 = false
			 47	[  0]	RET1 	  2		2	; return slot2
			 48	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			 49	[  0]	MOV  	  4		2	; slot4 = uv1"unknown"
			 50	[  0]	TGETS	  2	2	12	; slot2 = uv1"unknown".sub
			 51	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
			 52	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
			 53	[  0]	ADDVN	  6	6	3	; slot6 = uv2"unknown" + 2
			 54	[  0]	CALL 	  2	2	4	; slot2 = uv1"unknown".sub(slot3, uv1"unknown", uv2"unknown")
			 55	[  0]	ISNES	  2		6	; if slot2 ~= "nil"
			 56	[  0]	JMP  	  2		5	; 	goto 62
			 57	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
			 58	[  0]	ADDVN	  2	2	0	; slot2 = uv2"unknown" + 3
			 59	[  0]	USETV	  2		2	; uv2"unknwon" = slot2
			 60	[  0]	KPRI 	  2		0	; slot2 = nil
			 61	[  0]	RET1 	  2		2	; return slot2
			 62	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			 63	[  0]	MOV  	  4		2	; slot4 = uv1"unknown"
			 64	[  0]	TGETS	  2	2	5	; slot2 = uv1"unknown".match
			 65	[  0]	KSTR 	  5		4	; slot5 = "^%-?%d+%.?%d*[eE][%+%-]?%d+"
			 66	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
			 67	[  0]	CALL 	  2	2	4	; slot2 = uv1"unknown".match(slot3, uv1"unknown", slot5)
			 68	[  0]	IST  	   		2	; if slot2
			 69	[  0]	JMP  	  3		6	; 	goto 76
			 70	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			 71	[  0]	MOV  	  4		2	; slot4 = uv1"unknown"
			 72	[  0]	TGETS	  2	2	5	; slot2 = uv1"unknown".match
			 73	[  0]	KSTR 	  5		3	; slot5 = "^%-?%d+%.?%d*"
			 74	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
			 75	[  0]	CALL 	  2	2	4	; slot2 = uv1"unknown".match(slot3, uv1"unknown", slot5)
			 76	[  0]	IST  	   		2	; if slot2
			 77	[  0]	JMP  	  3		3	; 	goto 81
			 78	[  0]	UGET 	  3		5	; slot3 = uv5"unknwon"
			 79	[  0]	KSTR 	  5		2	; slot5 = "non-literal value is not allowed"
			 80	[  0]	CALL 	  3	1	2	;  = uv5"unknown"(slot4)
			 81	[  0]	GGET 	  3		1	; slot3 = _env["tonumber"]
			 82	[  0]	MOV  	  5		2	; slot5 = slot2
			 83	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
			 84	[  0]	ISF  	   		3	; if not tonumber
			 85	[  0]	JMP  	  4		5	; 	goto 91
			 86	[  0]	UGET 	  4		6	; slot4 = uv6"unknwon"
			 87	[  0]	MOV  	  6		3	; slot6 = tonumber
			 88	[  0]	CALL 	  4	2	2	; slot4 = uv6"unknown"(slot5)
			 89	[  0]	IST  	   		4	; if uv6"unknown"
			 90	[  0]	JMP  	  4		3	; 	goto 94
			 91	[  0]	UGET 	  4		5	; slot4 = uv5"unknwon"
			 92	[  0]	KSTR 	  6		0	; slot6 = "invalid or non-finite number"
			 93	[  0]	CALL 	  4	1	2	;  = uv5"unknown"(slot5)
			 94	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
			 95	[  0]	LEN  	  5		2	; slot5 = #slot2
			 96	[  0]	ADDVV	  4	4	5	; slot4 = uv2"unknown" + slot5
			 97	[  0]	USETV	  2		4	; uv2"unknwon" = slot4
			 98	[  0]	RET1 	  3		2	; return tonumber
		 14	[  0]	MOV  	 16		0	; slot16 = slot0
		 15	[  0]	TGETS	 14	0	9	; slot14 = slot0.sub
		 16	[  0]	KSHORT	 17		1	; slot17 = 1
		 17	[  0]	KSHORT	 18		3	; slot18 = 3
		 18	[  0]	CALL 	 14	2	4	; slot14 = <unknown table>.sub(slot15, slot16, slot17)
		 19	[  0]	ISNES	 14		8	; if <unknown table>.sub ~= "﻿"
		 20	[  0]	JMP  	 14		1	; 	goto 22
		 21	[  0]	KSHORT	  2		4	; slot2 = 4
		 22	[  0]	MOV  	 14		8	; slot14 = slot8
		 23	[  0]	KSTR 	 16		7	; slot16 = "return"
		 24	[  0]	CALL 	 14	1	2	;  = slot14(slot15)
		 25	[  0]	MOV  	 16		0	; slot16 = slot0
		 26	[  0]	TGETS	 14	0	9	; slot14 = slot0.sub
		 27	[  0]	MOV  	 17		2	; slot17 = slot2
		 28	[  0]	MOV  	 18		2	; slot18 = slot2
		 29	[  0]	CALL 	 14	2	4	; slot14 = <unknown table>.sub(slot15, slot16, slot17)
		 30	[  0]	MOV  	 16		14	; slot16 = <unknown table>.sub
		 31	[  0]	TGETS	 14	14	6	; slot14 = <unknown table>.sub.match
		 32	[  0]	KSTR 	 17		5	; slot17 = "[%w_]"
		 33	[  0]	CALL 	 14	2	3	; slot14 = <unknown table>.sub.match(slot15, <unknown table>.sub)
		 34	[  0]	ISF  	   		14	; if not <unknown table>.sub.match
		 35	[  0]	JMP  	 15		3	; 	goto 39
		 36	[  0]	MOV  	 14		6	; slot14 = slot6
		 37	[  0]	KSTR 	 16		4	; slot16 = "invalid return token"
		 38	[  0]	CALL 	 14	1	2	;  = slot14(slot15)
		 39	[  0]	MOV  	 14		12	; slot14 = slot12
		 40	[  0]	KSHORT	 16		1	; slot16 = 1
		 41	[  0]	CALL 	 14	2	2	; slot14 = slot14(slot15)
		 42	[  0]	GGET 	 15		3	; slot15 = _env["type"]
		 43	[  0]	MOV  	 17		14	; slot17 = slot14
		 44	[  0]	CALL 	 15	2	2	; slot15 = type(slot16)
		 45	[  0]	ISEQS	 15		2	; if type == "table"
		 46	[  0]	JMP  	 15		3	; 	goto 50
		 47	[  0]	MOV  	 15		6	; slot15 = slot6
		 48	[  0]	KSTR 	 17		1	; slot17 = "save root must be a table"
		 49	[  0]	CALL 	 15	1	2	;  = slot15(slot16)
		 50	[  0]	MOV  	 15		7	; slot15 = slot7
		 51	[  0]	CALL 	 15	1	1	;  = slot15()
		 52	[  0]	ISGT 	  2		3	; if slot2 > slot3
		 53	[  0]	JMP  	 15		3	; 	goto 57
		 54	[  0]	MOV  	 15		6	; slot15 = slot6
		 55	[  0]	KSTR 	 17		0	; slot17 = "trailing save data"
		 56	[  0]	CALL 	 15	1	2	;  = slot15(slot16)
		 57	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 58
		 58	[  0]	RET1 	 14		2	; return slot14
	  6	[  0]	FNEW 	  5		2	; N/A:0-0: 2 args, 2 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		9	; slot2 = _env["type"]
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  4	[  0]	ISNES	  2		8	; if slot2 ~= "string"
		  5	[  0]	JMP  	  2		2	; 	goto 8
		  6	[  0]	ISNES	  0		7	; if slot0 ~= ""
		  7	[  0]	JMP  	  2		3	; 	goto 11
		  8	[  0]	KPRI 	  2		0	; slot2 = nil
		  9	[  0]	KSTR 	  3		6	; slot3 = "empty save data"
		 10	[  0]	RET  	  2		3	; return slot2, slot3
		 11	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 12	[  0]	MOV  	  4		1	; slot4 = slot1
		 13	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown"(slot3)
		 14	[  0]	LEN  	  3		0	; slot3 = #slot0
		 15	[  0]	TGETS	  4	2	5	; slot4 = slot2.maxSourceBytes
		 16	[  0]	ISGE 	  4		3	; if <unknown table>.maxSourceBytes >= slot3
		 17	[  0]	JMP  	  3		3	; 	goto 21
		 18	[  0]	KPRI 	  3		0	; slot3 = nil
		 19	[  0]	KSTR 	  4		4	; slot4 = "save source limit exceeded"
		 20	[  0]	RET  	  3		3	; return slot3, slot4
		 21	[  0]	MOV  	  5		0	; slot5 = slot0
		 22	[  0]	TGETS	  3	0	3	; slot3 = slot0.byte
		 23	[  0]	KSHORT	  6		1	; slot6 = 1
		 24	[  0]	CALL 	  3	2	3	; slot3 = <unknown table>.byte(slot4, slot5)
		 25	[  0]	ISNEN	  3		0	; if slot3 ~= 27
		 26	[  0]	JMP  	  3		3	; 	goto 30
		 27	[  0]	KPRI 	  3		0	; slot3 = nil
		 28	[  0]	KSTR 	  4		2	; slot4 = "Lua bytecode is not allowed"
		 29	[  0]	RET  	  3		3	; return slot3, slot4
		 30	[  0]	GGET 	  3		1	; slot3 = _env["pcall"]
		 31	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 32	[  0]	MOV  	  6		0	; slot6 = slot0
		 33	[  0]	MOV  	  7		2	; slot7 = slot2
		 34	[  0]	CALL 	  3	3	4	; slot3, slot4 = pcall(slot4, uv1"unknown", slot6)
		 35	[  0]	IST  	   		3	; if slot3
		 36	[  0]	JMP  	  5		5	; 	goto 42
		 37	[  0]	KPRI 	  5		0	; slot5 = nil
		 38	[  0]	GGET 	  6		0	; slot6 = _env["tostring"]
		 39	[  0]	MOV  	  8		4	; slot8 = slot4
		 40	[  0]	CALL 	  6	0	2	; MULTRES = tostring(slot7)
		 41	[  0]	RETM 	  5		1	; return , ...MULTRES
		 42	[  0]	RET1 	  4		2	; return slot4
	  7	[  0]	TSETS	  5	0	3	; slot0.decode = slot5
	  8	[  0]	FNEW 	  5		0	; N/A:0-0: 2 args, 2 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		4	; slot2 = _env["type"]
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  4	[  0]	ISEQS	  2		3	; if slot2 == "table"
		  5	[  0]	JMP  	  2		3	; 	goto 9
		  6	[  0]	KPRI 	  2		1	; slot2 = false
		  7	[  0]	KSTR 	  3		2	; slot3 = "save root must be a table"
		  8	[  0]	UCLO 	  0		20	; nil uvs >= r0; goto 29
		  9	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 10	[  0]	MOV  	  4		1	; slot4 = slot1
		 11	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown"(slot3)
		 12	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 13	[  0]	KSHORT	  4		0	; slot4 = 0
		 14	[  0]	KSHORT	  5		0	; slot5 = 0
		 15	[  0]	FNEW 	  6		1	; N/A:0-0: 2 args, 6 upvalues, 13 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  2		11	; slot2 = _env["type"]
			  2	[  0]	MOV  	  4		0	; slot4 = slot0
			  3	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
			  4	[  0]	ISNES	  2		10	; if slot2 ~= "number"
			  5	[  0]	JMP  	  3		3	; 	goto 9
			  6	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			  7	[  0]	MOV  	  5		0	; slot5 = slot0
			  8	[  0]	CALLT	  3		2	; return uv0"unknown"(slot4)
			  9	[  0]	ISNES	  2		9	; if slot2 ~= "string"
			 10	[  0]	JMP  	  3		18	; 	goto 29
			 11	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
			 12	[  0]	LEN  	  4		0	; slot4 = #slot0
			 13	[  0]	ADDVV	  3	3	4	; slot3 = uv1"unknown" + slot4
			 14	[  0]	USETV	  1		3	; uv1"unknwon" = slot3
			 15	[  0]	LEN  	  3		0	; slot3 = #slot0
			 16	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
			 17	[  0]	TGETS	  4	4	8	; slot4 = uv2"unknown".maxStringBytes
			 18	[  0]	ISGT 	  3		4	; if slot3 > uv2"unknown".maxStringBytes
			 19	[  0]	JMP  	  3		5	; 	goto 25
			 20	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
			 21	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
			 22	[  0]	TGETS	  4	4	7	; slot4 = uv2"unknown".maxTotalStringBytes
			 23	[  0]	ISLE 	  3		4	; if uv1"unknown" <= uv2"unknown".maxTotalStringBytes
			 24	[  0]	JMP  	  3		2	; 	goto 27
			 25	[  0]	KPRI 	  3		1	; slot3 = false
			 26	[  0]	JMP  	  4		1	; 	goto 28
			 27	[  0]	KPRI 	  3		2	; slot3 = true
			 28	[  0]	RET1 	  3		2	; return slot3
			 29	[  0]	ISEQS	  2		6	; if slot2 == "boolean"
			 30	[  0]	JMP  	  3		2	; 	goto 33
			 31	[  0]	ISNES	  2		5	; if slot2 ~= "nil"
			 32	[  0]	JMP  	  3		2	; 	goto 35
			 33	[  0]	KPRI 	  3		2	; slot3 = true
			 34	[  0]	RET1 	  3		2	; return slot3
			 35	[  0]	ISNES	  2		4	; if slot2 ~= "table"
			 36	[  0]	JMP  	  3		13	; 	goto 50
			 37	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
			 38	[  0]	TGETS	  3	3	3	; slot3 = uv2"unknown".maxDepth
			 39	[  0]	ISLT 	  3		1	; if uv2"unknown".maxDepth < slot1
			 40	[  0]	JMP  	  3		9	; 	goto 50
			 41	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
			 42	[  0]	TGETV	  3	3	0	; slot3 = uv3"unknown"[slot0]
			 43	[  0]	IST  	   		3	; if slot3
			 44	[  0]	JMP  	  4		5	; 	goto 50
			 45	[  0]	GGET 	  3		2	; slot3 = _env["getmetatable"]
			 46	[  0]	MOV  	  5		0	; slot5 = slot0
			 47	[  0]	CALL 	  3	2	2	; slot3 = getmetatable(uv2"unknown".maxTotalStringBytes)
			 48	[  0]	ISEQP	  3		0	; if getmetatable == nil
			 49	[  0]	JMP  	  3		2	; 	goto 52
			 50	[  0]	KPRI 	  3		1	; slot3 = false
			 51	[  0]	RET1 	  3		2	; return slot3
			 52	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
			 53	[  0]	KPRI 	  4		2	; slot4 = true
			 54	[  0]	TSETV	  4	3	0	; uv3"unknown"[slot0] = slot4
			 55	[  0]	GGET 	  3		1	; slot3 = _env["next"]
			 56	[  0]	MOV  	  4		0	; slot4 = slot0
			 57	[  0]	KPRI 	  5		0	; slot5 = nil
			 58	[  0]	ISNEXT	  6		31	; Verify ITERN at 90; goto 90
			 59	[  0]	UGET 	  8		4	; slot8 = uv4"unknwon"
			 60	[  0]	ADDVN	  8	8	0	; slot8 = uv4"unknown" + 1
			 61	[  0]	USETV	  4		8	; uv4"unknwon" = slot8
			 62	[  0]	GGET 	  8		11	; slot8 = _env["type"]
			 63	[  0]	MOV  	 10		6	; slot10 = slot6
			 64	[  0]	CALL 	  8	2	2	; slot8 = type(slot9)
			 65	[  0]	UGET 	  9		4	; slot9 = uv4"unknwon"
			 66	[  0]	UGET 	 10		2	; slot10 = uv2"unknwon"
			 67	[  0]	TGETS	 10	10	0	; slot10 = uv2"unknown".maxEntries
			 68	[  0]	ISLT 	 10		9	; if uv2"unknown".maxEntries < uv4"unknown"
			 69	[  0]	JMP  	  9		18	; 	goto 88
			 70	[  0]	ISEQS	  8		10	; if type == "number"
			 71	[  0]	JMP  	  9		4	; 	goto 76
			 72	[  0]	ISEQS	  8		9	; if type == "string"
			 73	[  0]	JMP  	  9		2	; 	goto 76
			 74	[  0]	ISNES	  8		6	; if type ~= "boolean"
			 75	[  0]	JMP  	  9		12	; 	goto 88
			 76	[  0]	UGET 	  9		5	; slot9 = uv5"unknwon"
			 77	[  0]	MOV  	 11		6	; slot11 = slot6
			 78	[  0]	ADDVN	 12	1	0	; slot12 = slot1 + 1
			 79	[  0]	CALL 	  9	2	3	; slot9 = uv5"unknown"(uv2"unknown".maxEntries, slot11)
			 80	[  0]	ISF  	   		9	; if not uv5"unknown"
			 81	[  0]	JMP  	  9		6	; 	goto 88
			 82	[  0]	UGET 	  9		5	; slot9 = uv5"unknwon"
			 83	[  0]	MOV  	 11		7	; slot11 = slot7
			 84	[  0]	ADDVN	 12	1	0	; slot12 = slot1 + 1
			 85	[  0]	CALL 	  9	2	3	; slot9 = uv5"unknown"(uv2"unknown".maxEntries, slot11)
			 86	[  0]	IST  	   		9	; if uv5"unknown"
			 87	[  0]	JMP  	  9		2	; 	goto 90
			 88	[  0]	KPRI 	  9		1	; slot9 = false
			 89	[  0]	RET1 	  9		2	; return slot9
			 90	[  0]	ITERN	  6	3	3	; slot6, slot7, slot8 = next, slot4, slot5; slot6, slot7 = next(slot4, slot5)
			 91	[  0]	ITERL	  6		-33	; slot5 = slot6; if slot6 != nil goto 59
			 92	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
			 93	[  0]	KPRI 	  4		0	; slot4 = nil
			 94	[  0]	TSETV	  4	3	0	; uv3"unknown"[slot0] = slot4
			 95	[  0]	KPRI 	  3		2	; slot3 = true
			 96	[  0]	RET1 	  3		2	; return slot3
		 16	[  0]	MOV  	  7		6	; slot7 = slot6
		 17	[  0]	MOV  	  9		0	; slot9 = slot0
		 18	[  0]	KSHORT	 10		1	; slot10 = 1
		 19	[  0]	CALL 	  7	2	3	; slot7 = slot7(slot8, slot9)
		 20	[  0]	IST  	   		7	; if slot7
		 21	[  0]	JMP  	  7		4	; 	goto 26
		 22	[  0]	KPRI 	  7		1	; slot7 = false
		 23	[  0]	KSTR 	  8		0	; slot8 = "invalid save value or data limit exceeded"
		 24	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 25
		 25	[  0]	RET  	  7		3	; return slot7, slot8
		 26	[  0]	KPRI 	  7		2	; slot7 = true
		 27	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 28
		 28	[  0]	RET1 	  7		2	; return slot7
		 29	[  0]	RET  	  2		3	; return slot2, slot3
	  9	[  0]	TSETS	  5	0	1	; slot0.validate = slot5
	 10	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 11
	 11	[  0]	RET1 	  0		2	; return slot0
	
