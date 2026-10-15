;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\save.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 40 slots
	;;;; constant tables ;;;;
	;;;; instructions ;;;;
	  1	[  0]	GGET 	  0		41	; slot0 = _env["require"]
	  2	[  0]	KSTR 	  2		40	; slot2 = "src.data.safe_lua_table"
	  3	[  0]	CALL 	  0	2	2	; slot0 = require(slot1)
	  4	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
	  5	[  0]	KSTR 	  2		39	; slot2 = "SlotBound"
	  6	[  0]	KSTR 	  3		38	; slot3 = "save.dat"
	  7	[  0]	KSTR 	  4		37	; slot4 = "save.bak"
	  8	[  0]	KSTR 	  5		36	; slot5 = "save.tmp"
	  9	[  0]	KSTR 	  6		35	; slot6 = "save_fallback.dat"
	 10	[  0]	KSTR 	  7		34	; slot7 = "save_fallback.bak"
	 11	[  0]	KSTR 	  8		33	; slot8 = "save_fallback.tmp"
	 12	[  0]	KNUM 	  9		0	; slot9 = 16777216
	 13	[  0]	KSTR 	 10		32	; slot10 = "legacy_appdata_migrated_v1"
	 14	[  0]	KPRI 	 11		0	; slot11 = nil
	 15	[  0]	FNEW 	 12		31	; N/A:0-0: 0 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		6	; slot0 = _env["love"]
		  2	[  0]	ISF  	   		0	; if not love
		  3	[  0]	JMP  	  1		24	; 	goto 28
		  4	[  0]	GGET 	  0		6	; slot0 = _env["love"]
		  5	[  0]	TGETS	  0	0	5	; slot0 = love.timer
		  6	[  0]	ISF  	   		0	; if not love.timer
		  7	[  0]	JMP  	  1		20	; 	goto 28
		  8	[  0]	GGET 	  0		6	; slot0 = _env["love"]
		  9	[  0]	TGETS	  0	0	5	; slot0 = love.timer
		 10	[  0]	TGETS	  0	0	4	; slot0 = love.timer.getTime
		 11	[  0]	ISF  	   		0	; if not love.timer.getTime
		 12	[  0]	JMP  	  1		15	; 	goto 28
		 13	[  0]	GGET 	  0		3	; slot0 = _env["pcall"]
		 14	[  0]	GGET 	  2		6	; slot2 = _env["love"]
		 15	[  0]	TGETS	  2	2	5	; slot2 = love.timer
		 16	[  0]	TGETS	  2	2	4	; slot2 = love.timer.getTime
		 17	[  0]	CALL 	  0	3	2	; slot0, slot1 = pcall(slot1)
		 18	[  0]	ISF  	   		0	; if not slot0
		 19	[  0]	JMP  	  2		8	; 	goto 28
		 20	[  0]	GGET 	  2		2	; slot2 = _env["tonumber"]
		 21	[  0]	MOV  	  4		1	; slot4 = slot1
		 22	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 23	[  0]	ISF  	   		2	; if not slot2
		 24	[  0]	JMP  	  3		3	; 	goto 28
		 25	[  0]	GGET 	  2		2	; slot2 = _env["tonumber"]
		 26	[  0]	MOV  	  4		1	; slot4 = slot1
		 27	[  0]	CALLT	  2		2	; return tonumber(slot3)
		 28	[  0]	GGET 	  0		1	; slot0 = _env["os"]
		 29	[  0]	TGETS	  0	0	0	; slot0 = os.clock
		 30	[  0]	CALLT	  0		1	; return os.clock()
	 16	[  0]	FNEW 	 13		30	; N/A:0-0: 3 args, 1 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		4	; slot3 = _env["rawget"]
		  2	[  0]	GGET 	  5		3	; slot5 = _env["_G"]
		  3	[  0]	KSTR 	  6		2	; slot6 = "RuntimeDiagnostics"
		  4	[  0]	CALL 	  3	2	3	; slot3 = rawget(slot4, _G)
		  5	[  0]	ISF  	   		3	; if not slot3
		  6	[  0]	JMP  	  4		3	; 	goto 10
		  7	[  0]	TGETS	  4	3	1	; slot4 = slot3.recordOperation
		  8	[  0]	IST  	   		4	; if <unknown table>.recordOperation
		  9	[  0]	JMP  	  4		1	; 	goto 11
		 10	[  0]	RET0 	  0		1	; return
		 11	[  0]	GGET 	  4		0	; slot4 = _env["pcall"]
		 12	[  0]	TGETS	  6	3	1	; slot6 = slot3.recordOperation
		 13	[  0]	MOV  	  7		0	; slot7 = slot0
		 14	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 15	[  0]	CALL 	  8	2	1	; slot8 = uv0"unknown"()
		 16	[  0]	SUBVV	  8	8	1	; slot8 = uv0"unknown" - slot1
		 17	[  0]	MOV  	  9		2	; slot9 = slot2
		 18	[  0]	CALL 	  4	1	5	;  = pcall(_G, <unknown table>.recordOperation, slot7, slot8)
		 19	[  0]	RET0 	  0		1	; return
	 17	[  0]	FNEW 	 14		29	; N/A:0-0: 0 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		5	; slot0 = _env["jit"]
		  2	[  0]	ISF  	   		0	; if not jit
		  3	[  0]	JMP  	  1		4	; 	goto 8
		  4	[  0]	GGET 	  0		5	; slot0 = _env["jit"]
		  5	[  0]	TGETS	  0	0	4	; slot0 = jit.os
		  6	[  0]	ISEQS	  0		3	; if jit.os == "Windows"
		  7	[  0]	JMP  	  0		17	; 	goto 25
		  8	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		  9	[  0]	TGETS	  0	0	1	; slot0 = love.system
		 10	[  0]	ISF  	   		0	; if not love.system
		 11	[  0]	JMP  	  1		14	; 	goto 26
		 12	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		 13	[  0]	TGETS	  0	0	1	; slot0 = love.system
		 14	[  0]	TGETS	  0	0	0	; slot0 = love.system.getOS
		 15	[  0]	ISF  	   		0	; if not love.system.getOS
		 16	[  0]	JMP  	  1		9	; 	goto 26
		 17	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		 18	[  0]	TGETS	  0	0	1	; slot0 = love.system
		 19	[  0]	TGETS	  0	0	0	; slot0 = love.system.getOS
		 20	[  0]	CALL 	  0	2	1	; slot0 = love.system.getOS()
		 21	[  0]	ISEQS	  0		3	; if slot0 == "Windows"
		 22	[  0]	JMP  	  0		2	; 	goto 25
		 23	[  0]	KPRI 	  0		1	; slot0 = false
		 24	[  0]	JMP  	  1		1	; 	goto 26
		 25	[  0]	KPRI 	  0		2	; slot0 = true
		 26	[  0]	RET1 	  0		2	; return slot0
	 18	[  0]	FNEW 	 15		28	; N/A:0-0: 0 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		6	; slot0 = _env["jit"]
		  2	[  0]	ISF  	   		0	; if not jit
		  3	[  0]	JMP  	  1		4	; 	goto 8
		  4	[  0]	GGET 	  0		6	; slot0 = _env["jit"]
		  5	[  0]	TGETS	  0	0	5	; slot0 = jit.os
		  6	[  0]	ISEQS	  0		4	; if jit.os == "OSX"
		  7	[  0]	JMP  	  0		17	; 	goto 25
		  8	[  0]	GGET 	  0		3	; slot0 = _env["love"]
		  9	[  0]	TGETS	  0	0	2	; slot0 = love.system
		 10	[  0]	ISF  	   		0	; if not love.system
		 11	[  0]	JMP  	  1		14	; 	goto 26
		 12	[  0]	GGET 	  0		3	; slot0 = _env["love"]
		 13	[  0]	TGETS	  0	0	2	; slot0 = love.system
		 14	[  0]	TGETS	  0	0	1	; slot0 = love.system.getOS
		 15	[  0]	ISF  	   		0	; if not love.system.getOS
		 16	[  0]	JMP  	  1		9	; 	goto 26
		 17	[  0]	GGET 	  0		3	; slot0 = _env["love"]
		 18	[  0]	TGETS	  0	0	2	; slot0 = love.system
		 19	[  0]	TGETS	  0	0	1	; slot0 = love.system.getOS
		 20	[  0]	CALL 	  0	2	1	; slot0 = love.system.getOS()
		 21	[  0]	ISEQS	  0		0	; if slot0 == "OS X"
		 22	[  0]	JMP  	  0		2	; 	goto 25
		 23	[  0]	KPRI 	  0		1	; slot0 = false
		 24	[  0]	JMP  	  1		1	; 	goto 26
		 25	[  0]	KPRI 	  0		2	; slot0 = true
		 26	[  0]	RET1 	  0		2	; return slot0
	 19	[  0]	FNEW 	 16		27	; N/A:0-0: 2 args, 0 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		2	; 	goto 5
		  3	[  0]	ISNES	  0		2	; if slot0 ~= ""
		  4	[  0]	JMP  	  2		1	; 	goto 6
		  5	[  0]	RET1 	  1		2	; return slot1
		  6	[  0]	ISF  	   		1	; if not slot1
		  7	[  0]	JMP  	  2		2	; 	goto 10
		  8	[  0]	ISNES	  1		2	; if slot1 ~= ""
		  9	[  0]	JMP  	  2		1	; 	goto 11
		 10	[  0]	RET1 	  0		2	; return slot0
		 11	[  0]	MOV  	  4		0	; slot4 = slot0
		 12	[  0]	TGETS	  2	0	1	; slot2 = slot0.sub
		 13	[  0]	KSHORT	  5		65535	; slot5 = 65535
		 14	[  0]	CALL 	  2	2	3	; slot2 = <unknown table>.sub(slot3, slot4)
		 15	[  0]	ISNES	  2		0	; if slot2 ~= "\"
		 16	[  0]	JMP  	  2		4	; 	goto 21
		 17	[  0]	MOV  	  2		0	; slot2 = slot0
		 18	[  0]	MOV  	  3		1	; slot3 = slot1
		 19	[  0]	CAT  	  2	2	3	; slot2 = slot2 .. slot3
		 20	[  0]	RET1 	  2		2	; return slot2
		 21	[  0]	MOV  	  2		0	; slot2 = slot0
		 22	[  0]	KSTR 	  3		0	; slot3 = "\"
		 23	[  0]	MOV  	  4		1	; slot4 = slot1
		 24	[  0]	CAT  	  2	2	4	; slot2 = slot2 .. slot3 .. slot4
		 25	[  0]	RET1 	  2		2	; return slot2
	 20	[  0]	FNEW 	 17		26	; N/A:0-0: 2 args, 0 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		2	; 	goto 5
		  3	[  0]	ISNES	  0		2	; if slot0 ~= ""
		  4	[  0]	JMP  	  2		1	; 	goto 6
		  5	[  0]	RET1 	  1		2	; return slot1
		  6	[  0]	ISF  	   		1	; if not slot1
		  7	[  0]	JMP  	  2		2	; 	goto 10
		  8	[  0]	ISNES	  1		2	; if slot1 ~= ""
		  9	[  0]	JMP  	  2		1	; 	goto 11
		 10	[  0]	RET1 	  0		2	; return slot0
		 11	[  0]	MOV  	  4		0	; slot4 = slot0
		 12	[  0]	TGETS	  2	0	1	; slot2 = slot0.sub
		 13	[  0]	KSHORT	  5		65535	; slot5 = 65535
		 14	[  0]	CALL 	  2	2	3	; slot2 = <unknown table>.sub(slot3, slot4)
		 15	[  0]	ISNES	  2		0	; if slot2 ~= "/"
		 16	[  0]	JMP  	  2		4	; 	goto 21
		 17	[  0]	MOV  	  2		0	; slot2 = slot0
		 18	[  0]	MOV  	  3		1	; slot3 = slot1
		 19	[  0]	CAT  	  2	2	3	; slot2 = slot2 .. slot3
		 20	[  0]	RET1 	  2		2	; return slot2
		 21	[  0]	MOV  	  2		0	; slot2 = slot0
		 22	[  0]	KSTR 	  3		0	; slot3 = "/"
		 23	[  0]	MOV  	  4		1	; slot4 = slot1
		 24	[  0]	CAT  	  2	2	4	; slot2 = slot2 .. slot3 .. slot4
		 25	[  0]	RET1 	  2		2	; return slot2
	 21	[  0]	FNEW 	 18		25	; N/A:0-0: 2 args, 0 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		6	; slot2 = _env["tostring"]
		  2	[  0]	ISTC 	  4		1	; slot4 = slot1; if slot1
		  3	[  0]	JMP  	  4		1	; 	goto 5
		  4	[  0]	KSTR 	  4		5	; slot4 = ""
		  5	[  0]	CALL 	  2	2	2	; slot2 = tostring(slot3)
		  6	[  0]	MOV  	  1		2	; slot1 = slot2
		  7	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		  8	[  0]	KSHORT	  3		1	; slot3 = 1
		  9	[  0]	LEN  	  4		1	; slot4 = #slot1
		 10	[  0]	ISGT 	  3		4	; if slot3 > slot4
		 11	[  0]	JMP  	  5		105	; 	goto 117
		 12	[  0]	LOOP 	  5		104	; Loop start, exit goto 117
		 13	[  0]	MOV  	  7		1	; slot7 = slot1
		 14	[  0]	TGETS	  5	1	4	; slot5 = slot1.byte
		 15	[  0]	MOV  	  8		3	; slot8 = slot3
		 16	[  0]	CALL 	  5	2	3	; slot5 = <unknown table>.byte(slot6, slot7)
		 17	[  0]	KPRI 	  6		0	; slot6 = nil
		 18	[  0]	KSHORT	  7		128	; slot7 = 128
		 19	[  0]	ISGE 	  5		7	; if <unknown table>.byte >= slot7
		 20	[  0]	JMP  	  7		3	; 	goto 24
		 21	[  0]	MOV  	  6		5	; slot6 = <unknown table>.byte
		 22	[  0]	ADDVN	  3	3	0	; slot3 = slot3 + 1
		 23	[  0]	JMP  	  7		71	; 	goto 95
		 24	[  0]	KSHORT	  7		224	; slot7 = 224
		 25	[  0]	ISGE 	  5		7	; if <unknown table>.byte >= slot7
		 26	[  0]	JMP  	  7		13	; 	goto 40
		 27	[  0]	MOV  	  9		1	; slot9 = slot1
		 28	[  0]	TGETS	  7	1	4	; slot7 = slot1.byte
		 29	[  0]	ADDVN	 10	3	0	; slot10 = slot3 + 1
		 30	[  0]	CALL 	  7	2	3	; slot7 = <unknown table>.byte(slot8, slot9)
		 31	[  0]	IST  	   		7	; if <unknown table>.byte
		 32	[  0]	JMP  	  8		1	; 	goto 34
		 33	[  0]	JMP  	  5		83	; 	goto 117
		 34	[  0]	MODVN	  8	5	1	; slot8 = <unknown table>.byte % 32
		 35	[  0]	MULVN	  8	8	2	; slot8 = slot8 * 64
		 36	[  0]	MODVN	  9	7	2	; slot9 = <unknown table>.byte % 64
		 37	[  0]	ADDVV	  6	8	9	; slot6 = slot8 + slot9
		 38	[  0]	ADDVN	  3	3	3	; slot3 = slot3 + 2
		 39	[  0]	JMP  	  7		55	; 	goto 95
		 40	[  0]	KSHORT	  7		240	; slot7 = 240
		 41	[  0]	ISGE 	  5		7	; if <unknown table>.byte >= slot7
		 42	[  0]	JMP  	  7		22	; 	goto 65
		 43	[  0]	MOV  	  9		1	; slot9 = slot1
		 44	[  0]	TGETS	  7	1	4	; slot7 = slot1.byte
		 45	[  0]	ADDVN	 10	3	0	; slot10 = slot3 + 1
		 46	[  0]	CALL 	  7	2	3	; slot7 = <unknown table>.byte(slot8, slot9)
		 47	[  0]	MOV  	 10		1	; slot10 = slot1
		 48	[  0]	TGETS	  8	1	4	; slot8 = slot1.byte
		 49	[  0]	ADDVN	 11	3	3	; slot11 = slot3 + 2
		 50	[  0]	CALL 	  8	2	3	; slot8 = <unknown table>.byte(slot9, slot10)
		 51	[  0]	ISF  	   		7	; if not <unknown table>.byte
		 52	[  0]	JMP  	  9		64	; 	goto 117
		 53	[  0]	IST  	   		8	; if <unknown table>.byte
		 54	[  0]	JMP  	  9		1	; 	goto 56
		 55	[  0]	JMP  	  5		61	; 	goto 117
		 56	[  0]	MODVN	  9	5	4	; slot9 = <unknown table>.byte % 16
		 57	[  0]	MULVN	  9	9	5	; slot9 = slot9 * 4096
		 58	[  0]	MODVN	 10	7	2	; slot10 = <unknown table>.byte % 64
		 59	[  0]	MULVN	 10	10	2	; slot10 = slot10 * 64
		 60	[  0]	ADDVV	  9	9	10	; slot9 = slot9 + slot10
		 61	[  0]	MODVN	 10	8	2	; slot10 = <unknown table>.byte % 64
		 62	[  0]	ADDVV	  6	9	10	; slot6 = slot9 + slot10
		 63	[  0]	ADDVN	  3	3	6	; slot3 = slot3 + 3
		 64	[  0]	JMP  	  7		30	; 	goto 95
		 65	[  0]	MOV  	  9		1	; slot9 = slot1
		 66	[  0]	TGETS	  7	1	4	; slot7 = slot1.byte
		 67	[  0]	ADDVN	 10	3	0	; slot10 = slot3 + 1
		 68	[  0]	CALL 	  7	2	3	; slot7 = <unknown table>.byte(<unknown table>.byte, slot9)
		 69	[  0]	MOV  	 10		1	; slot10 = slot1
		 70	[  0]	TGETS	  8	1	4	; slot8 = slot1.byte
		 71	[  0]	ADDVN	 11	3	3	; slot11 = slot3 + 2
		 72	[  0]	CALL 	  8	2	3	; slot8 = <unknown table>.byte(slot9, slot10)
		 73	[  0]	MOV  	 11		1	; slot11 = slot1
		 74	[  0]	TGETS	  9	1	4	; slot9 = slot1.byte
		 75	[  0]	ADDVN	 12	3	6	; slot12 = slot3 + 3
		 76	[  0]	CALL 	  9	2	3	; slot9 = <unknown table>.byte(slot10, slot11)
		 77	[  0]	ISF  	   		7	; if not <unknown table>.byte
		 78	[  0]	JMP  	 10		38	; 	goto 117
		 79	[  0]	ISF  	   		8	; if not <unknown table>.byte
		 80	[  0]	JMP  	 10		36	; 	goto 117
		 81	[  0]	IST  	   		9	; if <unknown table>.byte
		 82	[  0]	JMP  	 10		1	; 	goto 84
		 83	[  0]	JMP  	  5		33	; 	goto 117
		 84	[  0]	MODVN	 10	5	7	; slot10 = <unknown table>.byte % 8
		 85	[  0]	MULVN	 10	10	8	; slot10 = slot10 * 262144
		 86	[  0]	MODVN	 11	7	2	; slot11 = <unknown table>.byte % 64
		 87	[  0]	MULVN	 11	11	5	; slot11 = slot11 * 4096
		 88	[  0]	ADDVV	 10	10	11	; slot10 = slot10 + slot11
		 89	[  0]	MODVN	 11	8	2	; slot11 = <unknown table>.byte % 64
		 90	[  0]	MULVN	 11	11	2	; slot11 = slot11 * 64
		 91	[  0]	ADDVV	 10	10	11	; slot10 = slot10 + slot11
		 92	[  0]	MODVN	 11	9	2	; slot11 = <unknown table>.byte % 64
		 93	[  0]	ADDVV	  6	10	11	; slot6 = slot10 + slot11
		 94	[  0]	ADDVN	  3	3	9	; slot3 = slot3 + 4
		 95	[  0]	KNUM 	  7		10	; slot7 = 65535
		 96	[  0]	ISGT 	  6		7	; if slot6 > slot7
		 97	[  0]	JMP  	  7		4	; 	goto 102
		 98	[  0]	LEN  	  7		2	; slot7 = #slot2
		 99	[  0]	ADDVN	  7	7	0	; slot7 = slot7 + 1
		100	[  0]	TSETV	  6	2	7	; slot2[slot7] = slot6
		101	[  0]	JMP  	  7		-92	; 	goto 10
		102	[  0]	SUBVN	  6	6	11	; slot6 = slot6 - 65536
		103	[  0]	GGET 	  7		3	; slot7 = _env["math"]
		104	[  0]	TGETS	  7	7	2	; slot7 = math.floor
		105	[  0]	DIVVN	  9	6	12	; slot9 = slot6 / 1024
		106	[  0]	CALL 	  7	2	2	; slot7 = math.floor(<unknown table>.byte)
		107	[  0]	ADDNV	  7	7	13	; slot7 = 55296 + math.floor
		108	[  0]	MODVN	  8	6	12	; slot8 = slot6 % 1024
		109	[  0]	ADDNV	  8	8	14	; slot8 = 56320 + slot8
		110	[  0]	LEN  	  9		2	; slot9 = #slot2
		111	[  0]	ADDVN	  9	9	0	; slot9 = slot9 + 1
		112	[  0]	TSETV	  7	2	9	; slot2[slot9] = slot7
		113	[  0]	LEN  	  9		2	; slot9 = #slot2
		114	[  0]	ADDVN	  9	9	0	; slot9 = slot9 + 1
		115	[  0]	TSETV	  8	2	9	; slot2[slot9] = slot8
		116	[  0]	JMP  	  5		-107	; 	goto 10
		117	[  0]	TGETS	  5	0	1	; slot5 = slot0.new
		118	[  0]	KSTR 	  7		0	; slot7 = "WCHAR[?]"
		119	[  0]	LEN  	  8		2	; slot8 = #slot2
		120	[  0]	ADDVN	  8	8	0	; slot8 = slot8 + 1
		121	[  0]	CALL 	  5	2	3	; slot5 = <unknown table>.new(slot6, slot7)
		122	[  0]	KSHORT	  6		1	; slot6 = 1
		123	[  0]	LEN  	  7		2	; slot7 = #slot2
		124	[  0]	KSHORT	  8		1	; slot8 = 1
		125	[  0]	FORI 	  6		4	; for slot9 = slot6,slot7,slot8 else goto 130
		126	[  0]	SUBVN	 10	9	0	; slot10 = slot9 - 1
		127	[  0]	TGETV	 11	2	9	; slot11 = slot2[slot9]
		128	[  0]	TSETV	 11	5	10	; <unknown table>.new[slot10] = slot11
		129	[  0]	FORL 	  6		-4	; slot9 = slot9 + slot8; if cmp(slot9, sign slot8,  slot7) goto 126
		130	[  0]	LEN  	  6		2	; slot6 = #slot2
		131	[  0]	KSHORT	  7		0	; slot7 = 0
		132	[  0]	TSETV	  7	5	6	; <unknown table>.new[slot6] = slot7
		133	[  0]	RET1 	  5		2	; return <unknown table>.new
	 22	[  0]	FNEW 	 19		24	; N/A:0-0: 0 args, 4 upvalues, 19 slots
		
		;;;; constant tables ;;;;
		ktable#16 = [
			#1: 173,
			#2: 180,
			#3: 108,
			#4: 133,
			#5: 72,
			#6: 3,
			#7: 105,
			#8: 199,
			]
		
		
		ktable#17 = [
			[Data2] = 9103,
			[Data1] = 4258503376.0,
			[Data3] = 18095,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	28	; slot0 = uv0"unknown"._documentsDir
		  3	[  0]	ISEQP	  0		0	; if uv0"unknown"._documentsDir == nil
		  4	[  0]	JMP  	  0		3	; 	goto 8
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	28	; slot0 = uv0"unknown"._documentsDir
		  7	[  0]	UCLO 	  0		76	; nil uvs >= r0; goto 84
		  8	[  0]	KPRI 	  0		0	; slot0 = nil
		  9	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 10	[  0]	CALL 	  1	2	1	; slot1 = uv1"unknown"()
		 11	[  0]	ISF  	   		1	; if not slot1
		 12	[  0]	JMP  	  2		67	; 	goto 80
		 13	[  0]	GGET 	  1		27	; slot1 = _env["pcall"]
		 14	[  0]	GGET 	  3		26	; slot3 = _env["require"]
		 15	[  0]	KSTR 	  4		25	; slot4 = "ffi"
		 16	[  0]	CALL 	  1	3	3	; slot1, slot2 = pcall(slot2, require)
		 17	[  0]	ISF  	   		1	; if not slot1
		 18	[  0]	JMP  	  3		60	; 	goto 79
		 19	[  0]	ISF  	   		2	; if not slot2
		 20	[  0]	JMP  	  3		58	; 	goto 79
		 21	[  0]	GGET 	  3		27	; slot3 = _env["pcall"]
		 22	[  0]	FNEW 	  5		24	; N/A:0-0: 0 args, 1 upvalues, 3 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".cdef
			  3	[  0]	KSTR 	  2		0	; slot2 = "                    typedef unsigned long DWORD;
			                    typedef unsigned short WCHAR;
			                    typedef const WCHAR* LPCWSTR;
			                    typedef void* HANDLE;
			                    typedef void* HWND;
			                    typedef struct _GUID {
			                        unsigned long  Data1;
			                        unsigned short Data2;
			                        unsigned short Data3;
			                        unsigned char  Data4[8];
			                    } GUID;
			                    long SHGetKnownFolderPath(const GUID* rfid, DWORD dwFlags, HANDLE hToken, WCHAR** ppszPath);
			                    void CoTaskMemFree(void* pv);
			                    int SHCreateDirectoryExW(HWND hwnd, LPCWSTR pszPath, void* psa);
			
			                    typedef struct _iobuf FILE;
			                    FILE* _wfopen(LPCWSTR filename, LPCWSTR mode);
			                    size_t fwrite(const void* ptr, size_t size, size_t nmemb, FILE* stream);
			                    size_t fread(void* ptr, size_t size, size_t nmemb, FILE* stream);
			                    int fseek(FILE* stream, long offset, int origin);
			                    long ftell(FILE* stream);
			                    int fclose(FILE* stream);
			                "
			  4	[  0]	CALL 	  0	1	2	;  = uv0"unknown".cdef(slot1)
			  5	[  0]	RET0 	  0		1	; return
		 23	[  0]	CALL 	  3	1	2	;  = pcall(slot4)
		 24	[  0]	TGETS	  3	2	23	; slot3 = slot2.load
		 25	[  0]	KSTR 	  5		22	; slot5 = "shell32"
		 26	[  0]	CALL 	  3	2	2	; slot3 = <unknown table>.load(slot4)
		 27	[  0]	TGETS	  4	2	23	; slot4 = slot2.load
		 28	[  0]	KSTR 	  6		21	; slot6 = "ole32"
		 29	[  0]	CALL 	  4	2	2	; slot4 = <unknown table>.load(slot5)
		 30	[  0]	TGETS	  5	2	23	; slot5 = slot2.load
		 31	[  0]	KSTR 	  7		20	; slot7 = "msvcrt"
		 32	[  0]	CALL 	  5	2	2	; slot5 = <unknown table>.load(slot6)
		 33	[  0]	TGETS	  6	2	19	; slot6 = slot2.new
		 34	[  0]	KSTR 	  8		18	; slot8 = "GUID"
		 35	[  0]	TDUP 	  9		17	; slot9 = copy table#k17
		 36	[  0]	TDUP 	 10		16	; slot10 = copy table#k16
		 37	[  0]	TSETS	 10	9	15	; slot9.Data4 = slot10
		 38	[  0]	CALL 	  6	2	3	; slot6 = <unknown table>.new(slot7, slot8)
		 39	[  0]	FNEW 	  7		14	; N/A:0-0: 1 args, 0 upvalues, 8 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	KSHORT	  1		127	; slot1 = 127
			  2	[  0]	ISGT 	  0		1	; if slot0 > slot1
			  3	[  0]	JMP  	  1		5	; 	goto 9
			  4	[  0]	GGET 	  1		3	; slot1 = _env["string"]
			  5	[  0]	TGETS	  1	1	2	; slot1 = string.char
			  6	[  0]	MOV  	  3		0	; slot3 = slot0
			  7	[  0]	CALLT	  1		2	; return string.char(slot2)
			  8	[  0]	JMP  	  1		56	; 	goto 65
			  9	[  0]	KSHORT	  1		2047	; slot1 = 2047
			 10	[  0]	ISGT 	  0		1	; if slot0 > slot1
			 11	[  0]	JMP  	  1		11	; 	goto 23
			 12	[  0]	GGET 	  1		3	; slot1 = _env["string"]
			 13	[  0]	TGETS	  1	1	2	; slot1 = string.char
			 14	[  0]	GGET 	  3		1	; slot3 = _env["math"]
			 15	[  0]	TGETS	  3	3	0	; slot3 = math.floor
			 16	[  0]	DIVVN	  5	0	0	; slot5 = slot0 / 64
			 17	[  0]	CALL 	  3	2	2	; slot3 = math.floor(slot4)
			 18	[  0]	ADDNV	  3	3	1	; slot3 = 192 + math.floor
			 19	[  0]	MODVN	  4	0	0	; slot4 = slot0 % 64
			 20	[  0]	ADDNV	  4	4	2	; slot4 = 128 + slot4
			 21	[  0]	CALLT	  1		3	; return string.char(slot2, slot3)
			 22	[  0]	JMP  	  1		42	; 	goto 65
			 23	[  0]	KNUM 	  1		3	; slot1 = 65535
			 24	[  0]	ISGT 	  0		1	; if slot0 > slot1
			 25	[  0]	JMP  	  1		17	; 	goto 43
			 26	[  0]	GGET 	  1		3	; slot1 = _env["string"]
			 27	[  0]	TGETS	  1	1	2	; slot1 = string.char
			 28	[  0]	GGET 	  3		1	; slot3 = _env["math"]
			 29	[  0]	TGETS	  3	3	0	; slot3 = math.floor
			 30	[  0]	DIVVN	  5	0	4	; slot5 = slot0 / 4096
			 31	[  0]	CALL 	  3	2	2	; slot3 = math.floor(slot4)
			 32	[  0]	ADDNV	  3	3	5	; slot3 = 224 + math.floor
			 33	[  0]	GGET 	  4		1	; slot4 = _env["math"]
			 34	[  0]	TGETS	  4	4	0	; slot4 = math.floor
			 35	[  0]	DIVVN	  6	0	0	; slot6 = slot0 / 64
			 36	[  0]	CALL 	  4	2	2	; slot4 = math.floor(slot5)
			 37	[  0]	MODVN	  4	4	0	; slot4 = math.floor % 64
			 38	[  0]	ADDNV	  4	4	2	; slot4 = 128 + slot4
			 39	[  0]	MODVN	  5	0	0	; slot5 = slot0 % 64
			 40	[  0]	ADDNV	  5	5	2	; slot5 = 128 + slot5
			 41	[  0]	CALLT	  1		4	; return string.char(slot2, slot3, slot4)
			 42	[  0]	JMP  	  1		22	; 	goto 65
			 43	[  0]	GGET 	  1		3	; slot1 = _env["string"]
			 44	[  0]	TGETS	  1	1	2	; slot1 = string.char
			 45	[  0]	GGET 	  3		1	; slot3 = _env["math"]
			 46	[  0]	TGETS	  3	3	0	; slot3 = math.floor
			 47	[  0]	DIVVN	  5	0	6	; slot5 = slot0 / 262144
			 48	[  0]	CALL 	  3	2	2	; slot3 = math.floor(slot4)
			 49	[  0]	ADDNV	  3	3	7	; slot3 = 240 + math.floor
			 50	[  0]	GGET 	  4		1	; slot4 = _env["math"]
			 51	[  0]	TGETS	  4	4	0	; slot4 = math.floor
			 52	[  0]	DIVVN	  6	0	4	; slot6 = slot0 / 4096
			 53	[  0]	CALL 	  4	2	2	; slot4 = math.floor(slot5)
			 54	[  0]	MODVN	  4	4	0	; slot4 = math.floor % 64
			 55	[  0]	ADDNV	  4	4	2	; slot4 = 128 + slot4
			 56	[  0]	GGET 	  5		1	; slot5 = _env["math"]
			 57	[  0]	TGETS	  5	5	0	; slot5 = math.floor
			 58	[  0]	DIVVN	  7	0	0	; slot7 = slot0 / 64
			 59	[  0]	CALL 	  5	2	2	; slot5 = math.floor(slot6)
			 60	[  0]	MODVN	  5	5	0	; slot5 = math.floor % 64
			 61	[  0]	ADDNV	  5	5	2	; slot5 = 128 + slot5
			 62	[  0]	MODVN	  6	0	0	; slot6 = slot0 % 64
			 63	[  0]	ADDNV	  6	6	2	; slot6 = 128 + slot6
			 64	[  0]	CALLT	  1		5	; return string.char(slot2, slot3, slot4, slot5)
			 65	[  0]	RET0 	  0		1	; return
		 40	[  0]	FNEW 	  8		13	; N/A:0-0: 1 args, 1 upvalues, 9 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	ISNEP	  0		0	; if slot0 ~= nil
			  2	[  0]	JMP  	  1		2	; 	goto 5
			  3	[  0]	KPRI 	  1		0	; slot1 = nil
			  4	[  0]	RET1 	  1		2	; return slot1
			  5	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
			  6	[  0]	KSHORT	  2		0	; slot2 = 0
			  7	[  0]	TGETV	  3	0	2	; slot3 = slot0[slot2]
			  8	[  0]	ISEQN	  3		0	; if slot3 == 0
			  9	[  0]	JMP  	  3		37	; 	goto 47
			 10	[  0]	LOOP 	  3		36	; Loop start, exit goto 47
			 11	[  0]	GGET 	  3		2	; slot3 = _env["tonumber"]
			 12	[  0]	TGETV	  5	0	2	; slot5 = slot0[slot2]
			 13	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
			 14	[  0]	MOV  	  4		3	; slot4 = tonumber
			 15	[  0]	KNUM 	  5		1	; slot5 = 55296
			 16	[  0]	ISGT 	  5		3	; if slot5 > tonumber
			 17	[  0]	JMP  	  5		21	; 	goto 39
			 18	[  0]	KNUM 	  5		2	; slot5 = 56319
			 19	[  0]	ISGT 	  3		5	; if tonumber > slot5
			 20	[  0]	JMP  	  5		18	; 	goto 39
			 21	[  0]	GGET 	  5		2	; slot5 = _env["tonumber"]
			 22	[  0]	ADDVN	  7	2	3	; slot7 = slot2 + 1
			 23	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
			 24	[  0]	CALL 	  5	2	2	; slot5 = tonumber(slot6)
			 25	[  0]	ISF  	   		5	; if not tonumber
			 26	[  0]	JMP  	  6		12	; 	goto 39
			 27	[  0]	KNUM 	  6		4	; slot6 = 56320
			 28	[  0]	ISGT 	  6		5	; if slot6 > tonumber
			 29	[  0]	JMP  	  6		9	; 	goto 39
			 30	[  0]	KNUM 	  6		5	; slot6 = 57343
			 31	[  0]	ISGT 	  5		6	; if tonumber > slot6
			 32	[  0]	JMP  	  6		6	; 	goto 39
			 33	[  0]	SUBVN	  6	3	1	; slot6 = tonumber - 55296
			 34	[  0]	SUBVN	  7	5	4	; slot7 = tonumber - 56320
			 35	[  0]	MULVN	  8	6	6	; slot8 = slot6 * 1024
			 36	[  0]	ADDNV	  8	8	7	; slot8 = 65536 + slot8
			 37	[  0]	ADDVV	  4	8	7	; slot4 = slot8 + slot7
			 38	[  0]	ADDVN	  2	2	3	; slot2 = slot2 + 1
			 39	[  0]	LEN  	  5		1	; slot5 = #slot1
			 40	[  0]	ADDVN	  5	5	3	; slot5 = slot5 + 1
			 41	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
			 42	[  0]	MOV  	  8		4	; slot8 = slot4
			 43	[  0]	CALL 	  6	2	2	; slot6 = uv0"unknown"(slot7)
			 44	[  0]	TSETV	  6	1	5	; slot1[slot5] = uv0"unknown"
			 45	[  0]	ADDVN	  2	2	3	; slot2 = slot2 + 1
			 46	[  0]	JMP  	  3		-40	; 	goto 7
			 47	[  0]	GGET 	  3		1	; slot3 = _env["table"]
			 48	[  0]	TGETS	  3	3	0	; slot3 = table.concat
			 49	[  0]	MOV  	  5		1	; slot5 = slot1
			 50	[  0]	CALLT	  3		2	; return table.concat(slot4)
		 41	[  0]	FNEW 	  9		12	; N/A:0-0: 1 args, 3 upvalues, 7 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	ISF  	   		0	; if not slot0
			  2	[  0]	JMP  	  1		2	; 	goto 5
			  3	[  0]	ISNES	  0		1	; if slot0 ~= ""
			  4	[  0]	JMP  	  1		2	; 	goto 7
			  5	[  0]	KPRI 	  1		1	; slot1 = false
			  6	[  0]	RET1 	  1		2	; return slot1
			  7	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  8	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
			  9	[  0]	MOV  	  4		0	; slot4 = slot0
			 10	[  0]	CALL 	  1	2	3	; slot1 = uv0"unknown"(slot2, uv1"unknown")
			 11	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
			 12	[  0]	TGETS	  2	2	0	; slot2 = uv2"unknown".SHCreateDirectoryExW
			 13	[  0]	KPRI 	  4		0	; slot4 = nil
			 14	[  0]	MOV  	  5		1	; slot5 = slot1
			 15	[  0]	KPRI 	  6		0	; slot6 = nil
			 16	[  0]	CALL 	  2	2	4	; slot2 = uv2"unknown".SHCreateDirectoryExW(slot3, slot4, slot5)
			 17	[  0]	ISEQN	  2		0	; if slot2 == 0
			 18	[  0]	JMP  	  3		4	; 	goto 23
			 19	[  0]	ISEQN	  2		1	; if slot2 == 183
			 20	[  0]	JMP  	  3		2	; 	goto 23
			 21	[  0]	KPRI 	  3		1	; slot3 = false
			 22	[  0]	JMP  	  4		1	; 	goto 24
			 23	[  0]	KPRI 	  3		2	; slot3 = true
			 24	[  0]	RET1 	  3		2	; return slot3
		 42	[  0]	FNEW 	 10		11	; N/A:0-0: 1 args, 4 upvalues, 14 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
			  3	[  0]	MOV  	  4		0	; slot4 = slot0
			  4	[  0]	CALL 	  1	2	3	; slot1 = uv0"unknown"(slot2, uv1"unknown")
			  5	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  6	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
			  7	[  0]	KSTR 	  5		10	; slot5 = "rb"
			  8	[  0]	CALL 	  2	2	3	; slot2 = uv0"unknown"(slot3, uv1"unknown")
			  9	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
			 10	[  0]	TGETS	  3	3	9	; slot3 = uv2"unknown"._wfopen
			 11	[  0]	MOV  	  5		1	; slot5 = slot1
			 12	[  0]	MOV  	  6		2	; slot6 = slot2
			 13	[  0]	CALL 	  3	2	3	; slot3 = uv2"unknown"._wfopen(uv1"unknown", slot5)
			 14	[  0]	ISNEP	  3		0	; if slot3 ~= nil
			 15	[  0]	JMP  	  4		2	; 	goto 18
			 16	[  0]	KPRI 	  4		0	; slot4 = nil
			 17	[  0]	RET1 	  4		2	; return slot4
			 18	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
			 19	[  0]	TGETS	  4	4	8	; slot4 = uv2"unknown".fseek
			 20	[  0]	MOV  	  6		3	; slot6 = slot3
			 21	[  0]	KSHORT	  7		0	; slot7 = 0
			 22	[  0]	KSHORT	  8		2	; slot8 = 2
			 23	[  0]	CALL 	  4	1	4	;  = uv2"unknown".fseek(slot5, slot6, slot7)
			 24	[  0]	GGET 	  4		7	; slot4 = _env["tonumber"]
			 25	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
			 26	[  0]	TGETS	  6	6	6	; slot6 = uv2"unknown".ftell
			 27	[  0]	MOV  	  8		3	; slot8 = slot3
			 28	[  0]	CALL 	  6	0	2	; MULTRES = uv2"unknown".ftell(slot7)
			 29	[  0]	CALLM	  4	2	0	; slot4 = tonumber(, ...MULTRES)
			 30	[  0]	IST  	   		4	; if tonumber
			 31	[  0]	JMP  	  5		1	; 	goto 33
			 32	[  0]	KSHORT	  4		0	; slot4 = 0
			 33	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
			 34	[  0]	TGETS	  5	5	8	; slot5 = uv2"unknown".fseek
			 35	[  0]	MOV  	  7		3	; slot7 = slot3
			 36	[  0]	KSHORT	  8		0	; slot8 = 0
			 37	[  0]	KSHORT	  9		0	; slot9 = 0
			 38	[  0]	CALL 	  5	1	4	;  = uv2"unknown".fseek(uv2"unknown".ftell, slot7, slot8)
			 39	[  0]	KSHORT	  5		0	; slot5 = 0
			 40	[  0]	ISLT 	  4		5	; if slot4 < slot5
			 41	[  0]	JMP  	  5		3	; 	goto 45
			 42	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
			 43	[  0]	ISGE 	  5		4	; if uv3"unknown" >= slot4
			 44	[  0]	JMP  	  5		6	; 	goto 51
			 45	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
			 46	[  0]	TGETS	  5	5	5	; slot5 = uv2"unknown".fclose
			 47	[  0]	MOV  	  7		3	; slot7 = slot3
			 48	[  0]	CALL 	  5	1	2	;  = uv2"unknown".fclose(uv2"unknown".ftell)
			 49	[  0]	KPRI 	  5		0	; slot5 = nil
			 50	[  0]	RET1 	  5		2	; return slot5
			 51	[  0]	ISNEN	  4		0	; if slot4 ~= 0
			 52	[  0]	JMP  	  5		6	; 	goto 59
			 53	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
			 54	[  0]	TGETS	  5	5	5	; slot5 = uv2"unknown".fclose
			 55	[  0]	MOV  	  7		3	; slot7 = slot3
			 56	[  0]	CALL 	  5	1	2	;  = uv2"unknown".fclose(uv2"unknown".ftell)
			 57	[  0]	KSTR 	  5		4	; slot5 = ""
			 58	[  0]	RET1 	  5		2	; return slot5
			 59	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
			 60	[  0]	TGETS	  5	5	3	; slot5 = uv1"unknown".new
			 61	[  0]	KSTR 	  7		2	; slot7 = "uint8_t[?]"
			 62	[  0]	MOV  	  8		4	; slot8 = slot4
			 63	[  0]	CALL 	  5	2	3	; slot5 = uv1"unknown".new(uv2"unknown".ftell, slot7)
			 64	[  0]	GGET 	  6		7	; slot6 = _env["tonumber"]
			 65	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
			 66	[  0]	TGETS	  8	8	1	; slot8 = uv2"unknown".fread
			 67	[  0]	MOV  	 10		5	; slot10 = uv1"unknown".new
			 68	[  0]	KSHORT	 11		1	; slot11 = 1
			 69	[  0]	MOV  	 12		4	; slot12 = slot4
			 70	[  0]	MOV  	 13		3	; slot13 = slot3
			 71	[  0]	CALL 	  8	0	5	; MULTRES = uv2"unknown".fread(slot9, uv1"unknown".new, slot11, slot12)
			 72	[  0]	CALLM	  6	2	0	; slot6 = tonumber(, ...MULTRES)
			 73	[  0]	IST  	   		6	; if tonumber
			 74	[  0]	JMP  	  7		1	; 	goto 76
			 75	[  0]	KSHORT	  6		0	; slot6 = 0
			 76	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
			 77	[  0]	TGETS	  7	7	5	; slot7 = uv2"unknown".fclose
			 78	[  0]	MOV  	  9		3	; slot9 = slot3
			 79	[  0]	CALL 	  7	1	2	;  = uv2"unknown".fclose(uv2"unknown".fread)
			 80	[  0]	KSHORT	  7		0	; slot7 = 0
			 81	[  0]	ISGT 	  6		7	; if slot6 > slot7
			 82	[  0]	JMP  	  7		2	; 	goto 85
			 83	[  0]	KPRI 	  7		0	; slot7 = nil
			 84	[  0]	RET1 	  7		2	; return slot7
			 85	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
			 86	[  0]	TGETS	  7	7	0	; slot7 = uv1"unknown".string
			 87	[  0]	MOV  	  9		5	; slot9 = uv1"unknown".new
			 88	[  0]	MOV  	 10		6	; slot10 = slot6
			 89	[  0]	CALLT	  7		3	; return uv1"unknown".string(uv2"unknown".fread, uv1"unknown".new)
		 43	[  0]	FNEW 	 11		10	; N/A:0-0: 2 args, 3 upvalues, 14 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  2	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
			  3	[  0]	MOV  	  5		0	; slot5 = slot0
			  4	[  0]	CALL 	  2	2	3	; slot2 = uv0"unknown"(slot3, uv1"unknown")
			  5	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			  6	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
			  7	[  0]	KSTR 	  6		6	; slot6 = "wb"
			  8	[  0]	CALL 	  3	2	3	; slot3 = uv0"unknown"(uv1"unknown", uv1"unknown")
			  9	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
			 10	[  0]	TGETS	  4	4	5	; slot4 = uv2"unknown"._wfopen
			 11	[  0]	MOV  	  6		2	; slot6 = slot2
			 12	[  0]	MOV  	  7		3	; slot7 = slot3
			 13	[  0]	CALL 	  4	2	3	; slot4 = uv2"unknown"._wfopen(uv1"unknown", slot6)
			 14	[  0]	ISNEP	  4		0	; if uv2"unknown"._wfopen ~= nil
			 15	[  0]	JMP  	  5		2	; 	goto 18
			 16	[  0]	KPRI 	  5		1	; slot5 = false
			 17	[  0]	RET1 	  5		2	; return slot5
			 18	[  0]	GGET 	  5		4	; slot5 = _env["tostring"]
			 19	[  0]	ISTC 	  7		1	; slot7 = slot1; if slot1
			 20	[  0]	JMP  	  7		1	; 	goto 22
			 21	[  0]	KSTR 	  7		3	; slot7 = ""
			 22	[  0]	CALL 	  5	2	2	; slot5 = tostring(slot6)
			 23	[  0]	MOV  	  1		5	; slot1 = tostring
			 24	[  0]	LEN  	  5		1	; slot5 = #tostring
			 25	[  0]	KSHORT	  6		0	; slot6 = 0
			 26	[  0]	ISGE 	  6		5	; if slot6 >= slot5
			 27	[  0]	JMP  	  6		24	; 	goto 52
			 28	[  0]	GGET 	  6		2	; slot6 = _env["tonumber"]
			 29	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
			 30	[  0]	TGETS	  8	8	1	; slot8 = uv2"unknown".fwrite
			 31	[  0]	MOV  	 10		1	; slot10 = tostring
			 32	[  0]	KSHORT	 11		1	; slot11 = 1
			 33	[  0]	MOV  	 12		5	; slot12 = slot5
			 34	[  0]	MOV  	 13		4	; slot13 = uv2"unknown"._wfopen
			 35	[  0]	CALL 	  8	0	5	; MULTRES = uv2"unknown".fwrite(slot9, tostring, slot11, slot12)
			 36	[  0]	CALLM	  6	2	0	; slot6 = tonumber(, ...MULTRES)
			 37	[  0]	IST  	   		6	; if tonumber
			 38	[  0]	JMP  	  7		1	; 	goto 40
			 39	[  0]	KSHORT	  6		0	; slot6 = 0
			 40	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
			 41	[  0]	TGETS	  7	7	0	; slot7 = uv2"unknown".fclose
			 42	[  0]	MOV  	  9		4	; slot9 = uv2"unknown"._wfopen
			 43	[  0]	CALL 	  7	2	2	; slot7 = uv2"unknown".fclose(uv2"unknown".fwrite)
			 44	[  0]	ISNEV	  6		5	; if slot6 ~= slot5
			 45	[  0]	JMP  	  8		2	; 	goto 48
			 46	[  0]	ISEQN	  7		0	; if uv2"unknown".fclose == 0
			 47	[  0]	JMP  	  8		2	; 	goto 50
			 48	[  0]	KPRI 	  8		1	; slot8 = false
			 49	[  0]	JMP  	  9		1	; 	goto 51
			 50	[  0]	KPRI 	  8		2	; slot8 = true
			 51	[  0]	RET1 	  8		2	; return slot8
			 52	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
			 53	[  0]	TGETS	  6	6	0	; slot6 = uv2"unknown".fclose
			 54	[  0]	MOV  	  8		4	; slot8 = uv2"unknown"._wfopen
			 55	[  0]	CALL 	  6	2	2	; slot6 = uv2"unknown".fclose(uv2"unknown".fclose)
			 56	[  0]	ISEQN	  6		0	; if uv2"unknown".fclose == 0
			 57	[  0]	JMP  	  6		2	; 	goto 60
			 58	[  0]	KPRI 	  6		1	; slot6 = false
			 59	[  0]	JMP  	  7		1	; 	goto 61
			 60	[  0]	KPRI 	  6		2	; slot6 = true
			 61	[  0]	RET1 	  6		2	; return slot6
		 44	[  0]	TGETS	 12	2	19	; slot12 = slot2.new
		 45	[  0]	KSTR 	 14		9	; slot14 = "WCHAR*[1]"
		 46	[  0]	CALL 	 12	2	2	; slot12 = <unknown table>.new(slot13)
		 47	[  0]	TGETS	 13	3	8	; slot13 = <unknown table>.load.SHGetKnownFolderPath
		 48	[  0]	MOV  	 15		6	; slot15 = <unknown table>.new
		 49	[  0]	KSHORT	 16		0	; slot16 = 0
		 50	[  0]	KPRI 	 17		0	; slot17 = nil
		 51	[  0]	MOV  	 18		12	; slot18 = <unknown table>.new
		 52	[  0]	CALL 	 13	2	5	; slot13 = <unknown table>.load.SHGetKnownFolderPath(slot14, <unknown table>.new, slot16, slot17)
		 53	[  0]	ISNEN	 13		0	; if <unknown table>.load.SHGetKnownFolderPath ~= 0
		 54	[  0]	JMP  	 14		23	; 	goto 78
		 55	[  0]	TGETB	 14	12	0	; slot14 = <unknown table>.new[0]
		 56	[  0]	ISEQP	 14		0	; if slot14 == nil
		 57	[  0]	JMP  	 14		20	; 	goto 78
		 58	[  0]	MOV  	 14		8	; slot14 = slot8
		 59	[  0]	TGETB	 16	12	0	; slot16 = <unknown table>.new[0]
		 60	[  0]	CALL 	 14	2	2	; slot14 = slot14(<unknown table>.new)
		 61	[  0]	MOV  	  0		14	; slot0 = slot14
		 62	[  0]	TGETS	 14	4	7	; slot14 = <unknown table>.load.CoTaskMemFree
		 63	[  0]	TGETB	 16	12	0	; slot16 = <unknown table>.new[0]
		 64	[  0]	CALL 	 14	1	2	;  = <unknown table>.load.CoTaskMemFree(<unknown table>.new)
		 65	[  0]	ISF  	   		0	; if not slot0
		 66	[  0]	JMP  	 14		11	; 	goto 78
		 67	[  0]	ISEQS	  0		6	; if slot0 == ""
		 68	[  0]	JMP  	 14		9	; 	goto 78
		 69	[  0]	UGET 	 14		0	; slot14 = uv0"unknwon"
		 70	[  0]	FNEW 	 15		4	; N/A:0-0: 1 args, 1 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	MOV  	  3		0	; slot3 = slot0
			  3	[  0]	CALLT	  1		2	; return uv0"unknown"(slot2)
		 71	[  0]	TSETS	 15	14	5	; uv0"unknown"._ensureDir = slot15
		 72	[  0]	UGET 	 14		0	; slot14 = uv0"unknwon"
		 73	[  0]	FNEW 	 15		2	; N/A:0-0: 1 args, 1 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	MOV  	  3		0	; slot3 = slot0
			  3	[  0]	CALLT	  1		2	; return uv0"unknown"(slot2)
		 74	[  0]	TSETS	 15	14	3	; uv0"unknown"._readFile = slot15
		 75	[  0]	UGET 	 14		0	; slot14 = uv0"unknwon"
		 76	[  0]	FNEW 	 15		0	; N/A:0-0: 2 args, 1 upvalues, 6 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  2	[  0]	MOV  	  4		0	; slot4 = slot0
			  3	[  0]	MOV  	  5		1	; slot5 = slot1
			  4	[  0]	CALLT	  2		3	; return uv0"unknown"(slot3, slot4)
		 77	[  0]	TSETS	 15	14	1	; uv0"unknown"._writeFile = slot15
		 78	[  0]	UCLO 	  3		0	; nil uvs >= r3; goto 79
		 79	[  0]	UCLO 	  1		0	; nil uvs >= r1; goto 80
		 80	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 81	[  0]	TSETS	  0	1	28	; uv0"unknown"._documentsDir = slot0
		 82	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 83
		 83	[  0]	RET1 	  0		2	; return slot0
		 84	[  0]	RET1 	  0		2	; return slot0
	 23	[  0]	FNEW 	 20		23	; N/A:0-0: 3 args, 0 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		1	; if not slot1
		  2	[  0]	JMP  	  3		2	; 	goto 5
		  3	[  0]	ISNES	  1		2	; if slot1 ~= ""
		  4	[  0]	JMP  	  3		1	; 	goto 6
		  5	[  0]	RET0 	  0		1	; return
		  6	[  0]	TGETV	  3	2	1	; slot3 = slot2[slot1]
		  7	[  0]	ISF  	   		3	; if not slot3
		  8	[  0]	JMP  	  4		1	; 	goto 10
		  9	[  0]	RET0 	  0		1	; return
		 10	[  0]	KPRI 	  3		2	; slot3 = true
		 11	[  0]	TSETV	  3	2	1	; slot2[slot1] = slot3
		 12	[  0]	GGET 	  3		1	; slot3 = _env["table"]
		 13	[  0]	TGETS	  3	3	0	; slot3 = table.insert
		 14	[  0]	MOV  	  5		0	; slot5 = slot0
		 15	[  0]	MOV  	  6		1	; slot6 = slot1
		 16	[  0]	CALL 	  3	1	3	;  = table.insert(slot4, slot5)
		 17	[  0]	RET0 	  0		1	; return
	 24	[  0]	FNEW 	 21		22	; N/A:0-0: 1 args, 0 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	ISNES	  0		6	; if slot0 ~= ""
		  4	[  0]	JMP  	  1		2	; 	goto 7
		  5	[  0]	KPRI 	  1		1	; slot1 = false
		  6	[  0]	RET1 	  1		2	; return slot1
		  7	[  0]	MOV  	  3		0	; slot3 = slot0
		  8	[  0]	TGETS	  1	0	5	; slot1 = slot0.gsub
		  9	[  0]	KSTR 	  4		4	; slot4 = "'"
		 10	[  0]	KSTR 	  5		3	; slot5 = "'\''"
		 11	[  0]	CALL 	  1	2	4	; slot1 = <unknown table>.gsub(slot2, slot3, slot4)
		 12	[  0]	GGET 	  2		2	; slot2 = _env["os"]
		 13	[  0]	TGETS	  2	2	1	; slot2 = os.execute
		 14	[  0]	KSTR 	  4		0	; slot4 = "mkdir -p '"
		 15	[  0]	MOV  	  5		1	; slot5 = slot1
		 16	[  0]	KSTR 	  6		4	; slot6 = "'"
		 17	[  0]	CAT  	  4	4	6	; slot4 = slot4 .. slot5 .. slot6
		 18	[  0]	CALL 	  2	2	2	; slot2 = os.execute(slot3)
		 19	[  0]	ISEQN	  2		0	; if slot2 == 0
		 20	[  0]	JMP  	  3		4	; 	goto 25
		 21	[  0]	ISEQP	  2		2	; if slot2 == true
		 22	[  0]	JMP  	  3		2	; 	goto 25
		 23	[  0]	KPRI 	  3		1	; slot3 = false
		 24	[  0]	JMP  	  4		1	; 	goto 26
		 25	[  0]	KPRI 	  3		2	; slot3 = true
		 26	[  0]	RET1 	  3		2	; return slot3
	 25	[  0]	FNEW 	 22		21	; N/A:0-0: 0 args, 6 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
		  2	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  3	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  4	[  0]	CALL 	  2	2	1	; slot2 = uv0"unknown"()
		  5	[  0]	IST  	   		2	; if uv0"unknown"
		  6	[  0]	JMP  	  2		26	; 	goto 33
		  7	[  0]	GGET 	  2		12	; slot2 = _env["os"]
		  8	[  0]	TGETS	  2	2	11	; slot2 = os.getenv
		  9	[  0]	KSTR 	  4		10	; slot4 = "HOME"
		 10	[  0]	CALL 	  2	2	2	; slot2 = os.getenv(slot3)
		 11	[  0]	IST  	   		2	; if slot2
		 12	[  0]	JMP  	  3		1	; 	goto 14
		 13	[  0]	KSTR 	  2		9	; slot2 = ""
		 14	[  0]	ISEQS	  2		9	; if slot2 == ""
		 15	[  0]	JMP  	  3		9	; 	goto 25
		 16	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 17	[  0]	MOV  	  5		2	; slot5 = slot2
		 18	[  0]	KSTR 	  6		8	; slot6 = "Documents"
		 19	[  0]	CALL 	  3	2	3	; slot3 = uv1"unknown"(slot4, slot5)
		 20	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 21	[  0]	MOV  	  6		0	; slot6 = slot0
		 22	[  0]	MOV  	  7		3	; slot7 = slot3
		 23	[  0]	MOV  	  8		1	; slot8 = slot1
		 24	[  0]	CALL 	  4	1	4	;  = uv2"unknown"(slot5, slot6, slot7)
		 25	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
		 26	[  0]	TGETS	  3	3	7	; slot3 = uv3"unknown"._ensureDir
		 27	[  0]	IST  	   		3	; if uv3"unknown"._ensureDir
		 28	[  0]	JMP  	  3		3	; 	goto 32
		 29	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
		 30	[  0]	UGET 	  4		4	; slot4 = uv4"unknwon"
		 31	[  0]	TSETS	  4	3	7	; uv3"unknown"._ensureDir = uv4"unknown"
		 32	[  0]	RET1 	  0		2	; return slot0
		 33	[  0]	UGET 	  2		5	; slot2 = uv5"unknwon"
		 34	[  0]	CALL 	  2	2	1	; slot2 = uv5"unknown"()
		 35	[  0]	ISF  	   		2	; if not uv5"unknown"
		 36	[  0]	JMP  	  3		7	; 	goto 44
		 37	[  0]	ISEQS	  2		9	; if uv5"unknown" == ""
		 38	[  0]	JMP  	  3		5	; 	goto 44
		 39	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 40	[  0]	MOV  	  5		0	; slot5 = slot0
		 41	[  0]	MOV  	  6		2	; slot6 = uv5"unknown"
		 42	[  0]	MOV  	  7		1	; slot7 = slot1
		 43	[  0]	CALL 	  3	1	4	;  = uv2"unknown"(uv4"unknown", slot5, uv5"unknown")
		 44	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 45	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 46	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 47	[  0]	MOV  	  7		3	; slot7 = slot3
		 48	[  0]	GGET 	  8		12	; slot8 = _env["os"]
		 49	[  0]	TGETS	  8	8	11	; slot8 = os.getenv
		 50	[  0]	KSTR 	 10		6	; slot10 = "OneDrive"
		 51	[  0]	CALL 	  8	2	2	; slot8 = os.getenv(slot9)
		 52	[  0]	MOV  	  9		4	; slot9 = slot4
		 53	[  0]	CALL 	  5	1	4	;  = uv2"unknown"(uv5"unknown", slot7, os.getenv)
		 54	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 55	[  0]	MOV  	  7		3	; slot7 = slot3
		 56	[  0]	GGET 	  8		12	; slot8 = _env["os"]
		 57	[  0]	TGETS	  8	8	11	; slot8 = os.getenv
		 58	[  0]	KSTR 	 10		5	; slot10 = "OneDriveConsumer"
		 59	[  0]	CALL 	  8	2	2	; slot8 = os.getenv(slot9)
		 60	[  0]	MOV  	  9		4	; slot9 = slot4
		 61	[  0]	CALL 	  5	1	4	;  = uv2"unknown"(uv5"unknown", slot7, os.getenv)
		 62	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 63	[  0]	MOV  	  7		3	; slot7 = slot3
		 64	[  0]	GGET 	  8		12	; slot8 = _env["os"]
		 65	[  0]	TGETS	  8	8	11	; slot8 = os.getenv
		 66	[  0]	KSTR 	 10		4	; slot10 = "OneDriveCommercial"
		 67	[  0]	CALL 	  8	2	2	; slot8 = os.getenv(slot9)
		 68	[  0]	MOV  	  9		4	; slot9 = slot4
		 69	[  0]	CALL 	  5	1	4	;  = uv2"unknown"(uv5"unknown", slot7, os.getenv)
		 70	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 71	[  0]	MOV  	  7		3	; slot7 = slot3
		 72	[  0]	GGET 	  8		12	; slot8 = _env["os"]
		 73	[  0]	TGETS	  8	8	11	; slot8 = os.getenv
		 74	[  0]	KSTR 	 10		3	; slot10 = "USERPROFILE"
		 75	[  0]	CALL 	  8	2	2	; slot8 = os.getenv(slot9)
		 76	[  0]	MOV  	  9		4	; slot9 = slot4
		 77	[  0]	CALL 	  5	1	4	;  = uv2"unknown"(uv5"unknown", slot7, os.getenv)
		 78	[  0]	GGET 	  5		2	; slot5 = _env["ipairs"]
		 79	[  0]	MOV  	  7		3	; slot7 = slot3
		 80	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(uv5"unknown")
		 81	[  0]	JMP  	  8		14	; 	goto 96
		 82	[  0]	UGET 	 10		2	; slot10 = uv2"unknwon"
		 83	[  0]	MOV  	 12		0	; slot12 = slot0
		 84	[  0]	MOV  	 13		9	; slot13 = slot9
		 85	[  0]	KSTR 	 14		1	; slot14 = "\Documents"
		 86	[  0]	CAT  	 13	13	14	; slot13 = slot13 .. slot14
		 87	[  0]	MOV  	 14		1	; slot14 = slot1
		 88	[  0]	CALL 	 10	1	4	;  = uv2"unknown"(slot11, slot12, slot13)
		 89	[  0]	UGET 	 10		2	; slot10 = uv2"unknwon"
		 90	[  0]	MOV  	 12		0	; slot12 = slot0
		 91	[  0]	MOV  	 13		9	; slot13 = slot9
		 92	[  0]	KSTR 	 14		0	; slot14 = "\문서"
		 93	[  0]	CAT  	 13	13	14	; slot13 = slot13 .. slot14
		 94	[  0]	MOV  	 14		1	; slot14 = slot1
		 95	[  0]	CALL 	 10	1	4	;  = uv2"unknown"(slot11, slot12, slot13)
		 96	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, uv5"unknown", slot7; slot8, slot9 = ipairs(uv5"unknown", slot7)
		 97	[  0]	ITERL	  8		-16	; slot7 = os.getenv; if os.getenv != nil goto 82
		 98	[  0]	RET1 	  0		2	; return slot0
	 26	[  0]	FNEW 	 23		20	; N/A:0-0: 1 args, 2 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	5	; slot1 = uv0"unknown"._readFile
		  3	[  0]	ISF  	   		1	; if not uv0"unknown"._readFile
		  4	[  0]	JMP  	  2		4	; 	goto 9
		  5	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  6	[  0]	TGETS	  1	1	5	; slot1 = uv0"unknown"._readFile
		  7	[  0]	MOV  	  3		0	; slot3 = slot0
		  8	[  0]	CALLT	  1		2	; return uv0"unknown"._readFile(slot2)
		  9	[  0]	GGET 	  1		4	; slot1 = _env["io"]
		 10	[  0]	TGETS	  1	1	3	; slot1 = io.open
		 11	[  0]	MOV  	  3		0	; slot3 = slot0
		 12	[  0]	KSTR 	  4		2	; slot4 = "rb"
		 13	[  0]	CALL 	  1	2	3	; slot1 = io.open(slot2, slot3)
		 14	[  0]	IST  	   		1	; if slot1
		 15	[  0]	JMP  	  2		2	; 	goto 18
		 16	[  0]	KPRI 	  2		0	; slot2 = nil
		 17	[  0]	RET1 	  2		2	; return slot2
		 18	[  0]	MOV  	  4		1	; slot4 = slot1
		 19	[  0]	TGETS	  2	1	1	; slot2 = slot1.read
		 20	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 21	[  0]	ADDVN	  5	5	0	; slot5 = uv1"unknown" + 1
		 22	[  0]	CALL 	  2	2	3	; slot2 = <unknown table>.read(slot3, slot4)
		 23	[  0]	MOV  	  5		1	; slot5 = slot1
		 24	[  0]	TGETS	  3	1	0	; slot3 = slot1.close
		 25	[  0]	CALL 	  3	1	2	;  = <unknown table>.close(slot4)
		 26	[  0]	ISF  	   		2	; if not slot2
		 27	[  0]	JMP  	  3		6	; 	goto 34
		 28	[  0]	LEN  	  3		2	; slot3 = #slot2
		 29	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 30	[  0]	ISGE 	  4		3	; if uv1"unknown" >= slot3
		 31	[  0]	JMP  	  3		2	; 	goto 34
		 32	[  0]	KPRI 	  3		0	; slot3 = nil
		 33	[  0]	RET1 	  3		2	; return slot3
		 34	[  0]	RET1 	  2		2	; return slot2
	 27	[  0]	FNEW 	 24		19	; N/A:0-0: 2 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	6	; slot2 = uv0"unknown"._writeFile
		  3	[  0]	ISF  	   		2	; if not uv0"unknown"._writeFile
		  4	[  0]	JMP  	  3		5	; 	goto 10
		  5	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  6	[  0]	TGETS	  2	2	6	; slot2 = uv0"unknown"._writeFile
		  7	[  0]	MOV  	  4		0	; slot4 = slot0
		  8	[  0]	MOV  	  5		1	; slot5 = slot1
		  9	[  0]	UCLO 	  0		20	; nil uvs >= r0; goto 30
		 10	[  0]	GGET 	  2		5	; slot2 = _env["io"]
		 11	[  0]	TGETS	  2	2	4	; slot2 = io.open
		 12	[  0]	MOV  	  4		0	; slot4 = slot0
		 13	[  0]	KSTR 	  5		3	; slot5 = "wb"
		 14	[  0]	CALL 	  2	2	3	; slot2 = io.open(slot3, slot4)
		 15	[  0]	IST  	   		2	; if slot2
		 16	[  0]	JMP  	  3		2	; 	goto 19
		 17	[  0]	KPRI 	  3		1	; slot3 = false
		 18	[  0]	UCLO 	  0		12	; nil uvs >= r0; goto 31
		 19	[  0]	GGET 	  3		2	; slot3 = _env["pcall"]
		 20	[  0]	FNEW 	  5		1	; N/A:0-0: 0 args, 2 upvalues, 6 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  0		2	; slot0 = _env["assert"]
			  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  3	[  0]	MOV  	  4		2	; slot4 = uv0"unknown"
			  4	[  0]	TGETS	  2	2	1	; slot2 = uv0"unknown".write
			  5	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
			  6	[  0]	CALL 	  2	0	3	; MULTRES = uv0"unknown".write(slot3, uv0"unknown")
			  7	[  0]	CALLM	  0	1	0	;  = assert(, ...MULTRES)
			  8	[  0]	GGET 	  0		2	; slot0 = _env["assert"]
			  9	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			 10	[  0]	MOV  	  4		2	; slot4 = uv0"unknown"
			 11	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".flush
			 12	[  0]	CALL 	  2	0	2	; MULTRES = uv0"unknown".flush(slot3)
			 13	[  0]	CALLM	  0	1	0	;  = assert(, ...MULTRES)
			 14	[  0]	RET0 	  0		1	; return
		 21	[  0]	CALL 	  3	2	2	; slot3 = pcall(slot4)
		 22	[  0]	GGET 	  4		2	; slot4 = _env["pcall"]
		 23	[  0]	FNEW 	  6		0	; N/A:0-0: 0 args, 1 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  0		1	; slot0 = _env["assert"]
			  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  3	[  0]	MOV  	  4		2	; slot4 = uv0"unknown"
			  4	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".close
			  5	[  0]	CALL 	  2	0	2	; MULTRES = uv0"unknown".close(slot3)
			  6	[  0]	CALLM	  0	1	0	;  = assert(, ...MULTRES)
			  7	[  0]	RET0 	  0		1	; return
		 24	[  0]	CALL 	  4	2	2	; slot4 = pcall(slot5)
		 25	[  0]	ISFC 	  5		3	; slot5 = pcall; if not pcall
		 26	[  0]	JMP  	  5		1	; 	goto 28
		 27	[  0]	MOV  	  5		4	; slot5 = pcall
		 28	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 29
		 29	[  0]	RET1 	  5		2	; return pcall
		 30	[  0]	CALLT	  2		3	; return slot2(pcall, pcall)
		 31	[  0]	RET1 	  3		2	; return slot3
	 28	[  0]	FNEW 	 25		18	; N/A:0-0: 2 args, 3 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	CALL 	  2	2	1	; slot2 = uv0"unknown"()
		  3	[  0]	ISF  	   		2	; if not uv0"unknown"
		  4	[  0]	JMP  	  3		5	; 	goto 10
		  5	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  6	[  0]	MOV  	  4		0	; slot4 = slot0
		  7	[  0]	MOV  	  5		1	; slot5 = slot1
		  8	[  0]	CALLT	  2		3	; return uv1"unknown"(slot3, slot4)
		  9	[  0]	JMP  	  2		4	; 	goto 14
		 10	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 11	[  0]	MOV  	  4		0	; slot4 = slot0
		 12	[  0]	MOV  	  5		1	; slot5 = slot1
		 13	[  0]	CALLT	  2		3	; return uv2"unknown"(slot3, slot4)
		 14	[  0]	RET0 	  0		1	; return
	 29	[  0]	FNEW 	 26		17	; N/A:0-0: 1 args, 0 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		ktable#1 = [
			#1: unlockedDifficulties,
			#2: clearedDifficulties,
			]
		
		
		ktable#4 = [
			#1: tutorialEnabled,
			#2: vsyncEnabled,
			]
		
		
		ktable#6 = [
			#1: displayMode,
			#2: language,
			]
		
		
		ktable#7 = [
			#1: masterVolume,
			#2: sfxVolume,
			#3: bgmVolume,
			]
		
		
		ktable#11 = [
			#1: upgrades,
			#2: unlockedStages,
			#3: unlockedDifficulties,
			#4: clearedDifficulties,
			#5: newStages,
			#6: originiteFirstReachedGates,
			#7: runSaves,
			#8: settings,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		14	; slot1 = _env["type"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  4	[  0]	ISEQS	  1		13	; if slot1 == "table"
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	KPRI 	  1		1	; slot1 = false
		  7	[  0]	RET1 	  1		2	; return slot1
		  8	[  0]	GGET 	  1		12	; slot1 = _env["ipairs"]
		  9	[  0]	TDUP 	  3		11	; slot3 = copy table#k11
		 10	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = ipairs(slot2)
		 11	[  0]	JMP  	  4		10	; 	goto 22
		 12	[  0]	TGETV	  6	0	5	; slot6 = slot0[slot5]
		 13	[  0]	ISEQP	  6		0	; if slot6 == nil
		 14	[  0]	JMP  	  6		7	; 	goto 22
		 15	[  0]	GGET 	  6		14	; slot6 = _env["type"]
		 16	[  0]	TGETV	  8	0	5	; slot8 = slot0[slot5]
		 17	[  0]	CALL 	  6	2	2	; slot6 = type(slot7)
		 18	[  0]	ISEQS	  6		13	; if type == "table"
		 19	[  0]	JMP  	  6		2	; 	goto 22
		 20	[  0]	KPRI 	  6		1	; slot6 = false
		 21	[  0]	RET1 	  6		2	; return slot6
		 22	[  0]	ITERC	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, slot3; slot4, slot5 = slot1(slot2, slot3)
		 23	[  0]	ITERL	  4		-12	; slot3 = slot4; if slot4 != nil goto 12
		 24	[  0]	TGETS	  1	0	10	; slot1 = slot0.originite
		 25	[  0]	ISEQP	  1		0	; if <unknown table>.originite == nil
		 26	[  0]	JMP  	  1		11	; 	goto 38
		 27	[  0]	GGET 	  1		14	; slot1 = _env["type"]
		 28	[  0]	TGETS	  3	0	10	; slot3 = slot0.originite
		 29	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		 30	[  0]	ISNES	  1		9	; if slot1 ~= "number"
		 31	[  0]	JMP  	  1		4	; 	goto 36
		 32	[  0]	TGETS	  1	0	10	; slot1 = slot0.originite
		 33	[  0]	KSHORT	  2		0	; slot2 = 0
		 34	[  0]	ISGE 	  1		2	; if <unknown table>.originite >= slot2
		 35	[  0]	JMP  	  1		2	; 	goto 38
		 36	[  0]	KPRI 	  1		1	; slot1 = false
		 37	[  0]	RET1 	  1		2	; return slot1
		 38	[  0]	TGETS	  1	0	8	; slot1 = slot0.settings
		 39	[  0]	ISF  	   		1	; if not <unknown table>.settings
		 40	[  0]	JMP  	  2		64	; 	goto 105
		 41	[  0]	GGET 	  2		12	; slot2 = _env["ipairs"]
		 42	[  0]	TDUP 	  4		7	; slot4 = copy table#k7
		 43	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(<unknown table>.originite)
		 44	[  0]	JMP  	  5		16	; 	goto 61
		 45	[  0]	TGETV	  7	1	6	; slot7 = <unknown table>.settings[slot6]
		 46	[  0]	ISEQP	  7		0	; if slot7 == nil
		 47	[  0]	JMP  	  8		13	; 	goto 61
		 48	[  0]	GGET 	  8		14	; slot8 = _env["type"]
		 49	[  0]	MOV  	 10		7	; slot10 = slot7
		 50	[  0]	CALL 	  8	2	2	; slot8 = type(slot9)
		 51	[  0]	ISNES	  8		9	; if type ~= "number"
		 52	[  0]	JMP  	  8		6	; 	goto 59
		 53	[  0]	KSHORT	  8		0	; slot8 = 0
		 54	[  0]	ISLT 	  7		8	; if slot7 < slot8
		 55	[  0]	JMP  	  8		3	; 	goto 59
		 56	[  0]	KSHORT	  8		1	; slot8 = 1
		 57	[  0]	ISGE 	  8		7	; if slot8 >= slot7
		 58	[  0]	JMP  	  8		2	; 	goto 61
		 59	[  0]	KPRI 	  8		1	; slot8 = false
		 60	[  0]	RET1 	  8		2	; return slot8
		 61	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, <unknown table>.originite, slot4; slot5, slot6 = slot2(<unknown table>.originite, slot4)
		 62	[  0]	ITERL	  5		-18	; slot4 = slot5; if slot5 != nil goto 45
		 63	[  0]	GGET 	  2		12	; slot2 = _env["ipairs"]
		 64	[  0]	TDUP 	  4		6	; slot4 = copy table#k6
		 65	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(<unknown table>.originite)
		 66	[  0]	JMP  	  5		10	; 	goto 77
		 67	[  0]	TGETV	  7	1	6	; slot7 = <unknown table>.settings[slot6]
		 68	[  0]	ISEQP	  7		0	; if slot7 == nil
		 69	[  0]	JMP  	  7		7	; 	goto 77
		 70	[  0]	GGET 	  7		14	; slot7 = _env["type"]
		 71	[  0]	TGETV	  9	1	6	; slot9 = <unknown table>.settings[slot6]
		 72	[  0]	CALL 	  7	2	2	; slot7 = type(slot8)
		 73	[  0]	ISEQS	  7		5	; if type == "string"
		 74	[  0]	JMP  	  7		2	; 	goto 77
		 75	[  0]	KPRI 	  7		1	; slot7 = false
		 76	[  0]	RET1 	  7		2	; return slot7
		 77	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, <unknown table>.originite, slot4; slot5, slot6 = slot2(<unknown table>.originite, slot4)
		 78	[  0]	ITERL	  5		-12	; slot4 = slot5; if slot5 != nil goto 67
		 79	[  0]	GGET 	  2		12	; slot2 = _env["ipairs"]
		 80	[  0]	TDUP 	  4		4	; slot4 = copy table#k4
		 81	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(<unknown table>.originite)
		 82	[  0]	JMP  	  5		10	; 	goto 93
		 83	[  0]	TGETV	  7	1	6	; slot7 = <unknown table>.settings[slot6]
		 84	[  0]	ISEQP	  7		0	; if slot7 == nil
		 85	[  0]	JMP  	  7		7	; 	goto 93
		 86	[  0]	GGET 	  7		14	; slot7 = _env["type"]
		 87	[  0]	TGETV	  9	1	6	; slot9 = <unknown table>.settings[slot6]
		 88	[  0]	CALL 	  7	2	2	; slot7 = type(slot8)
		 89	[  0]	ISEQS	  7		3	; if type == "boolean"
		 90	[  0]	JMP  	  7		2	; 	goto 93
		 91	[  0]	KPRI 	  7		1	; slot7 = false
		 92	[  0]	RET1 	  7		2	; return slot7
		 93	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, <unknown table>.originite, slot4; slot5, slot6 = slot2(<unknown table>.originite, slot4)
		 94	[  0]	ITERL	  5		-12	; slot4 = slot5; if slot5 != nil goto 83
		 95	[  0]	TGETS	  2	1	2	; slot2 = <unknown table>.settings.controls
		 96	[  0]	ISEQP	  2		0	; if <unknown table>.settings.controls == nil
		 97	[  0]	JMP  	  2		7	; 	goto 105
		 98	[  0]	GGET 	  2		14	; slot2 = _env["type"]
		 99	[  0]	TGETS	  4	1	2	; slot4 = <unknown table>.settings.controls
		100	[  0]	CALL 	  2	2	2	; slot2 = type(<unknown table>.originite)
		101	[  0]	ISEQS	  2		13	; if slot2 == "table"
		102	[  0]	JMP  	  2		2	; 	goto 105
		103	[  0]	KPRI 	  2		0	; slot2 = nil
		104	[  0]	TSETS	  2	1	2	; <unknown table>.settings.controls = slot2
		105	[  0]	GGET 	  2		12	; slot2 = _env["ipairs"]
		106	[  0]	TDUP 	  4		1	; slot4 = copy table#k1
		107	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(<unknown table>.originite)
		108	[  0]	JMP  	  5		16	; 	goto 125
		109	[  0]	GGET 	  7		0	; slot7 = _env["pairs"]
		110	[  0]	TGETV	  9	0	6	; slot9 = slot0[slot6]
		111	[  0]	IST  	   		9	; if slot9
		112	[  0]	JMP  	 10		1	; 	goto 114
		113	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
		114	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = pairs(slot8)
		115	[  0]	ISNEXT	 10		7	; Verify ITERN at 123; goto 123
		116	[  0]	GGET 	 12		14	; slot12 = _env["type"]
		117	[  0]	MOV  	 14		11	; slot14 = slot11
		118	[  0]	CALL 	 12	2	2	; slot12 = type(slot13)
		119	[  0]	ISEQS	 12		13	; if type == "table"
		120	[  0]	JMP  	 12		2	; 	goto 123
		121	[  0]	KPRI 	 12		1	; slot12 = false
		122	[  0]	RET1 	 12		2	; return slot12
		123	[  0]	ITERN	 10	3	3	; slot10, slot11, slot12 = pairs, slot8, slot9; slot10, slot11 = pairs(slot8, slot9)
		124	[  0]	ITERL	 10		-9	; slot9 = slot10; if slot10 != nil goto 116
		125	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, <unknown table>.originite, slot4; slot5, slot6 = slot2(<unknown table>.originite, slot4)
		126	[  0]	ITERL	  5		-18	; slot4 = slot5; if slot5 != nil goto 109
		127	[  0]	KPRI 	  2		2	; slot2 = true
		128	[  0]	RET1 	  2		2	; return slot2
	 30	[  0]	FNEW 	 27		16	; N/A:0-0: 1 args, 2 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		3	; slot1 = _env["type"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  4	[  0]	ISNES	  1		2	; if slot1 ~= "string"
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	ISNES	  0		1	; if slot0 ~= ""
		  7	[  0]	JMP  	  1		2	; 	goto 10
		  8	[  0]	KPRI 	  1		0	; slot1 = nil
		  9	[  0]	RET1 	  1		2	; return slot1
		 10	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 11	[  0]	TGETS	  1	1	0	; slot1 = uv0"unknown".decode
		 12	[  0]	MOV  	  3		0	; slot3 = slot0
		 13	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown".decode(slot2)
		 14	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 15	[  0]	MOV  	  4		1	; slot4 = slot1
		 16	[  0]	CALL 	  2	2	2	; slot2 = uv1"unknown"(slot3)
		 17	[  0]	IST  	   		2	; if slot2
		 18	[  0]	JMP  	  2		2	; 	goto 21
		 19	[  0]	KPRI 	  2		0	; slot2 = nil
		 20	[  0]	RET1 	  2		2	; return slot2
		 21	[  0]	RET1 	  1		2	; return slot1
	 31	[  0]	FNEW 	 28		15	; N/A:0-0: 1 args, 1 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		2	; slot1 = _env["type"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  4	[  0]	ISEQS	  1		1	; if slot1 == "table"
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	KSHORT	  1		0	; slot1 = 0
		  7	[  0]	RET1 	  1		2	; return slot1
		  8	[  0]	KSHORT	  1		0	; slot1 = 0
		  9	[  0]	GGET 	  2		0	; slot2 = _env["pairs"]
		 10	[  0]	MOV  	  4		0	; slot4 = slot0
		 11	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = pairs(slot3)
		 12	[  0]	ISNEXT	  5		13	; Verify ITERN at 26; goto 26
		 13	[  0]	ISNEP	  6		2	; if slot6 ~= true
		 14	[  0]	JMP  	  7		2	; 	goto 17
		 15	[  0]	ADDVN	  1	1	0	; slot1 = slot1 + 1
		 16	[  0]	JMP  	  7		9	; 	goto 26
		 17	[  0]	GGET 	  7		2	; slot7 = _env["type"]
		 18	[  0]	MOV  	  9		6	; slot9 = slot6
		 19	[  0]	CALL 	  7	2	2	; slot7 = type(slot8)
		 20	[  0]	ISNES	  7		1	; if type ~= "table"
		 21	[  0]	JMP  	  7		4	; 	goto 26
		 22	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 23	[  0]	MOV  	  9		6	; slot9 = slot6
		 24	[  0]	CALL 	  7	2	2	; slot7 = uv0"unknown"(slot8)
		 25	[  0]	ADDVV	  1	1	7	; slot1 = slot1 + uv0"unknown"
		 26	[  0]	ITERN	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5, slot6 = slot2(slot3, slot4)
		 27	[  0]	ITERL	  5		-15	; slot4 = slot5; if slot5 != nil goto 13
		 28	[  0]	RET1 	  1		2	; return slot1
	 32	[  0]	FNEW 	 29		14	; N/A:0-0: 1 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		9	; slot1 = _env["type"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  4	[  0]	ISEQS	  1		8	; if slot1 == "table"
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	KSHORT	  1		65535	; slot1 = 65535
		  7	[  0]	RET1 	  1		2	; return slot1
		  8	[  0]	GGET 	  1		7	; slot1 = _env["math"]
		  9	[  0]	TGETS	  1	1	6	; slot1 = math.max
		 10	[  0]	KSHORT	  3		0	; slot3 = 0
		 11	[  0]	GGET 	  4		5	; slot4 = _env["tonumber"]
		 12	[  0]	TGETS	  6	0	4	; slot6 = slot0.originite
		 13	[  0]	IST  	   		6	; if <unknown table>.originite
		 14	[  0]	JMP  	  7		1	; 	goto 16
		 15	[  0]	KSHORT	  6		0	; slot6 = 0
		 16	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		 17	[  0]	IST  	   		4	; if tonumber
		 18	[  0]	JMP  	  5		1	; 	goto 20
		 19	[  0]	KSHORT	  4		0	; slot4 = 0
		 20	[  0]	CALL 	  1	2	3	; slot1 = math.max(slot2, slot3)
		 21	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 22	[  0]	TGETS	  4	0	3	; slot4 = slot0.upgrades
		 23	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown"(slot3)
		 24	[  0]	MULVN	  2	2	0	; slot2 = slot2 * 10000
		 25	[  0]	ADDVV	  1	1	2	; slot1 = slot1 + slot2
		 26	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 27	[  0]	TGETS	  4	0	2	; slot4 = slot0.clearedDifficulties
		 28	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown"(slot3)
		 29	[  0]	MULVN	  2	2	1	; slot2 = slot2 * 5000
		 30	[  0]	ADDVV	  1	1	2	; slot1 = slot1 + slot2
		 31	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 32	[  0]	TGETS	  4	0	1	; slot4 = slot0.unlockedStages
		 33	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown"(slot3)
		 34	[  0]	MULVN	  2	2	2	; slot2 = slot2 * 1000
		 35	[  0]	ADDVV	  1	1	2	; slot1 = slot1 + slot2
		 36	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 37	[  0]	TGETS	  4	0	0	; slot4 = slot0.unlockedDifficulties
		 38	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown"(slot3)
		 39	[  0]	MULVN	  2	2	3	; slot2 = slot2 * 500
		 40	[  0]	ADDVV	  1	1	2	; slot1 = slot1 + slot2
		 41	[  0]	RET1 	  1		2	; return slot1
	 33	[  0]	FNEW 	 30		13	; N/A:0-0: 0 args, 7 upvalues, 17 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	CALL 	  0	2	1	; slot0 = uv0"unknown"()
		  3	[  0]	IST  	   		0	; if slot0
		  4	[  0]	JMP  	  0		2	; 	goto 7
		  5	[  0]	KPRI 	  0		0	; slot0 = nil
		  6	[  0]	RET1 	  0		2	; return slot0
		  7	[  0]	GGET 	  0		5	; slot0 = _env["os"]
		  8	[  0]	TGETS	  0	0	4	; slot0 = os.getenv
		  9	[  0]	KSTR 	  2		3	; slot2 = "APPDATA"
		 10	[  0]	CALL 	  0	2	2	; slot0 = os.getenv(slot1)
		 11	[  0]	ISF  	   		0	; if not slot0
		 12	[  0]	JMP  	  1		2	; 	goto 15
		 13	[  0]	ISNES	  0		2	; if slot0 ~= ""
		 14	[  0]	JMP  	  1		2	; 	goto 17
		 15	[  0]	KPRI 	  1		0	; slot1 = nil
		 16	[  0]	RET1 	  1		2	; return slot1
		 17	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 18	[  0]	MOV  	  3		0	; slot3 = slot0
		 19	[  0]	KSTR 	  4		1	; slot4 = "slotbound"
		 20	[  0]	CALL 	  1	2	3	; slot1 = uv1"unknown"(slot2, slot3)
		 21	[  0]	KPRI 	  2		0	; slot2 = nil
		 22	[  0]	KSHORT	  3		65535	; slot3 = 65535
		 23	[  0]	GGET 	  4		0	; slot4 = _env["ipairs"]
		 24	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		 25	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		 26	[  0]	TSETB	  7	6	1	; slot6[1] = uv2"unknown"
		 27	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		 28	[  0]	TSETB	  7	6	2	; slot6[2] = uv3"unknown"
		 29	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		 30	[  0]	JMP  	  7		16	; 	goto 47
		 31	[  0]	UGET 	  9		4	; slot9 = uv4"unknwon"
		 32	[  0]	UGET 	 11		5	; slot11 = uv5"unknwon"
		 33	[  0]	UGET 	 13		1	; slot13 = uv1"unknwon"
		 34	[  0]	MOV  	 15		1	; slot15 = slot1
		 35	[  0]	MOV  	 16		8	; slot16 = slot8
		 36	[  0]	CALL 	 13	0	3	; MULTRES = uv1"unknown"(slot14, slot15)
		 37	[  0]	CALLM	 11	0	0	; MULTRES = uv5"unknown"(, ...MULTRES)
		 38	[  0]	CALLM	  9	2	0	; slot9 = uv4"unknown"(, ...MULTRES)
		 39	[  0]	UGET 	 10		6	; slot10 = uv6"unknwon"
		 40	[  0]	MOV  	 12		9	; slot12 = uv4"unknown"
		 41	[  0]	CALL 	 10	2	2	; slot10 = uv6"unknown"(uv5"unknown")
		 42	[  0]	ISGE 	  3		10	; if slot3 >= uv6"unknown"
		 43	[  0]	JMP  	 11		3	; 	goto 47
		 44	[  0]	MOV  	 11		9	; slot11 = uv4"unknown"
		 45	[  0]	MOV  	  3		10	; slot3 = uv6"unknown"
		 46	[  0]	MOV  	  2		11	; slot2 = uv4"unknown"
		 47	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, slot6; slot7, slot8 = ipairs(slot5, slot6)
		 48	[  0]	ITERL	  7		-18	; slot6 = uv3"unknown"; if uv3"unknown" != nil goto 31
		 49	[  0]	RET1 	  2		2	; return uv4"unknown"
	 34	[  0]	FNEW 	 31		12	; N/A:0-0: 2 args, 2 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	MOV  	  5		1	; slot5 = slot1
		  4	[  0]	CALL 	  2	2	3	; slot2 = uv0"unknown"(slot3, slot4)
		  5	[  0]	IST  	   		2	; if slot2
		  6	[  0]	JMP  	  2		2	; 	goto 9
		  7	[  0]	KPRI 	  2		1	; slot2 = false
		  8	[  0]	RET1 	  2		2	; return slot2
		  9	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 10	[  0]	MOV  	  4		0	; slot4 = slot0
		 11	[  0]	CALL 	  2	2	2	; slot2 = uv1"unknown"(slot3)
		 12	[  0]	ISEQV	  2		1	; if slot2 == slot1
		 13	[  0]	JMP  	  2		2	; 	goto 16
		 14	[  0]	KPRI 	  2		1	; slot2 = false
		 15	[  0]	JMP  	  3		1	; 	goto 17
		 16	[  0]	KPRI 	  2		2	; slot2 = true
		 17	[  0]	RET1 	  2		2	; return slot2
	 35	[  0]	KPRI 	 32		0	; slot32 = nil
	 36	[  0]	FNEW 	 33		11	; N/A:0-0: 3 args, 4 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  2	[  0]	TGETS	  3	3	4	; slot3 = uv0"unknown"._replaceFile
		  3	[  0]	ISF  	   		3	; if not uv0"unknown"._replaceFile
		  4	[  0]	JMP  	  4		6	; 	goto 11
		  5	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  6	[  0]	TGETS	  3	3	4	; slot3 = uv0"unknown"._replaceFile
		  7	[  0]	MOV  	  5		0	; slot5 = slot0
		  8	[  0]	MOV  	  6		1	; slot6 = slot1
		  9	[  0]	MOV  	  7		2	; slot7 = slot2
		 10	[  0]	UCLO 	  0		40	; nil uvs >= r0; goto 51
		 11	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 12	[  0]	CALL 	  3	2	1	; slot3 = uv1"unknown"()
		 13	[  0]	IST  	   		3	; if uv1"unknown"
		 14	[  0]	JMP  	  3		11	; 	goto 26
		 15	[  0]	GGET 	  3		3	; slot3 = _env["os"]
		 16	[  0]	TGETS	  3	3	2	; slot3 = os.rename
		 17	[  0]	MOV  	  5		0	; slot5 = slot0
		 18	[  0]	MOV  	  6		1	; slot6 = slot1
		 19	[  0]	CALL 	  3	2	3	; slot3 = os.rename(slot4, slot5)
		 20	[  0]	ISNEP	  3		0	; if slot3 ~= nil
		 21	[  0]	JMP  	  3		2	; 	goto 24
		 22	[  0]	KPRI 	  3		1	; slot3 = false
		 23	[  0]	JMP  	  4		1	; 	goto 25
		 24	[  0]	KPRI 	  3		2	; slot3 = true
		 25	[  0]	UCLO 	  0		26	; nil uvs >= r0; goto 52
		 26	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 27	[  0]	ISNEP	  3		0	; if uv2"unknown" ~= nil
		 28	[  0]	JMP  	  3		9	; 	goto 38
		 29	[  0]	GGET 	  3		1	; slot3 = _env["pcall"]
		 30	[  0]	FNEW 	  5		0	; N/A:0-0: 0 args, 1 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  0		9	; slot0 = _env["require"]
			  2	[  0]	KSTR 	  2		8	; slot2 = "ffi"
			  3	[  0]	CALL 	  0	2	2	; slot0 = require(slot1)
			  4	[  0]	GGET 	  1		7	; slot1 = _env["pcall"]
			  5	[  0]	TGETS	  3	0	6	; slot3 = slot0.cdef
			  6	[  0]	KSTR 	  4		5	; slot4 = "typedef unsigned short WCHAR;"
			  7	[  0]	CALL 	  1	1	3	;  = pcall(slot2, <unknown table>.cdef)
			  8	[  0]	GGET 	  1		7	; slot1 = _env["pcall"]
			  9	[  0]	TGETS	  3	0	6	; slot3 = slot0.cdef
			 10	[  0]	KSTR 	  4		4	; slot4 = "int MoveFileExW(const unsigned short* from, const unsigned short* to, unsigned long flags);"
			 11	[  0]	CALL 	  1	1	3	;  = pcall(slot2, <unknown table>.cdef)
			 12	[  0]	GGET 	  1		7	; slot1 = _env["pcall"]
			 13	[  0]	TGETS	  3	0	6	; slot3 = slot0.cdef
			 14	[  0]	KSTR 	  4		3	; slot4 = "int ReplaceFileW(const unsigned short* current, const unsigned short* replacement,
			                const unsigned short* backup, unsigned long flags, void* exclude, void* reserved);"
			 15	[  0]	CALL 	  1	1	3	;  = pcall(slot2, <unknown table>.cdef)
			 16	[  0]	TGETS	  1	0	2	; slot1 = slot0.load
			 17	[  0]	KSTR 	  3		1	; slot3 = "kernel32"
			 18	[  0]	CALL 	  1	2	2	; slot1 = <unknown table>.load(slot2)
			 19	[  0]	FNEW 	  2		0	; N/A:0-0: 3 args, 3 upvalues, 11 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	ISF  	   		2	; if not slot2
				  2	[  0]	JMP  	  3		23	; 	goto 26
				  3	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
				  4	[  0]	TGETS	  3	3	1	; slot3 = uv0"unknown".ReplaceFileW
				  5	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
				  6	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
				  7	[  0]	MOV  	  8		1	; slot8 = slot1
				  8	[  0]	CALL 	  5	2	3	; slot5 = uv1"unknown"(slot6, uv2"unknown")
				  9	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
				 10	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
				 11	[  0]	MOV  	  9		0	; slot9 = slot0
				 12	[  0]	CALL 	  6	2	3	; slot6 = uv1"unknown"(uv2"unknown", uv2"unknown")
				 13	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
				 14	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
				 15	[  0]	MOV  	 10		2	; slot10 = slot2
				 16	[  0]	CALL 	  7	2	3	; slot7 = uv1"unknown"(uv2"unknown", uv2"unknown")
				 17	[  0]	KSHORT	  8		0	; slot8 = 0
				 18	[  0]	KNIL 	  9		10	; uv2"unknown", slot10 = nil
				 19	[  0]	CALL 	  3	2	7	; slot3 = uv0"unknown".ReplaceFileW(slot4, uv1"unknown", uv1"unknown", uv1"unknown", slot8, slot9)
				 20	[  0]	ISNEN	  3		0	; if slot3 ~= 0
				 21	[  0]	JMP  	  3		2	; 	goto 24
				 22	[  0]	KPRI 	  3		1	; slot3 = false
				 23	[  0]	JMP  	  4		1	; 	goto 25
				 24	[  0]	KPRI 	  3		2	; slot3 = true
				 25	[  0]	RET1 	  3		2	; return slot3
				 26	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
				 27	[  0]	TGETS	  3	3	0	; slot3 = uv0"unknown".MoveFileExW
				 28	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
				 29	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
				 30	[  0]	MOV  	  8		0	; slot8 = slot0
				 31	[  0]	CALL 	  5	2	3	; slot5 = uv1"unknown"(slot6, uv2"unknown")
				 32	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
				 33	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
				 34	[  0]	MOV  	  9		1	; slot9 = slot1
				 35	[  0]	CALL 	  6	2	3	; slot6 = uv1"unknown"(uv2"unknown", uv2"unknown")
				 36	[  0]	KSHORT	  7		1	; slot7 = 1
				 37	[  0]	CALL 	  3	2	4	; slot3 = uv0"unknown".MoveFileExW(slot4, uv1"unknown", uv1"unknown")
				 38	[  0]	ISNEN	  3		0	; if slot3 ~= 0
				 39	[  0]	JMP  	  3		2	; 	goto 42
				 40	[  0]	KPRI 	  3		1	; slot3 = false
				 41	[  0]	JMP  	  4		1	; 	goto 43
				 42	[  0]	KPRI 	  3		2	; slot3 = true
				 43	[  0]	RET1 	  3		2	; return slot3
			 20	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 21
			 21	[  0]	RET1 	  2		2	; return slot2
		 31	[  0]	CALL 	  3	3	2	; slot3, slot4 = pcall(slot4)
		 32	[  0]	ISF  	   		3	; if not pcall
		 33	[  0]	JMP  	  5		2	; 	goto 36
		 34	[  0]	ISTC 	  5		4	; slot5 = slot4; if slot4
		 35	[  0]	JMP  	  5		1	; 	goto 37
		 36	[  0]	KPRI 	  5		1	; slot5 = false
		 37	[  0]	USETV	  2		5	; uv2"unknwon" = slot5
		 38	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 39	[  0]	ISF  	   		3	; if not uv2"unknown"
		 40	[  0]	JMP  	  4		7	; 	goto 48
		 41	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 42	[  0]	MOV  	  5		0	; slot5 = slot0
		 43	[  0]	MOV  	  6		1	; slot6 = slot1
		 44	[  0]	MOV  	  7		2	; slot7 = slot2
		 45	[  0]	CALL 	  3	2	4	; slot3 = uv2"unknown"(slot4, slot5, slot6)
		 46	[  0]	IST  	   		3	; if slot3
		 47	[  0]	JMP  	  4		1	; 	goto 49
		 48	[  0]	KPRI 	  3		1	; slot3 = false
		 49	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 50
		 50	[  0]	RET1 	  3		2	; return slot3
		 51	[  0]	CALLT	  3		4	; return slot3(slot4, slot5, slot6)
		 52	[  0]	RET1 	  3		2	; return slot3
	 37	[  0]	FNEW 	 34		10	; N/A:0-0: 0 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		6	; slot0 = _env["love"]
		  2	[  0]	ISF  	   		0	; if not love
		  3	[  0]	JMP  	  1		14	; 	goto 18
		  4	[  0]	GGET 	  0		6	; slot0 = _env["love"]
		  5	[  0]	TGETS	  0	0	5	; slot0 = love.filesystem
		  6	[  0]	ISF  	   		0	; if not love.filesystem
		  7	[  0]	JMP  	  1		10	; 	goto 18
		  8	[  0]	GGET 	  0		6	; slot0 = _env["love"]
		  9	[  0]	TGETS	  0	0	5	; slot0 = love.filesystem
		 10	[  0]	TGETS	  0	0	4	; slot0 = love.filesystem.read
		 11	[  0]	ISF  	   		0	; if not love.filesystem.read
		 12	[  0]	JMP  	  1		5	; 	goto 18
		 13	[  0]	GGET 	  0		6	; slot0 = _env["love"]
		 14	[  0]	TGETS	  0	0	5	; slot0 = love.filesystem
		 15	[  0]	TGETS	  0	0	3	; slot0 = love.filesystem.write
		 16	[  0]	IST  	   		0	; if love.filesystem.write
		 17	[  0]	JMP  	  0		2	; 	goto 20
		 18	[  0]	KPRI 	  0		1	; slot0 = false
		 19	[  0]	RET1 	  0		2	; return slot0
		 20	[  0]	GGET 	  0		6	; slot0 = _env["love"]
		 21	[  0]	TGETS	  0	0	5	; slot0 = love.filesystem
		 22	[  0]	TGETS	  0	0	2	; slot0 = love.filesystem.setIdentity
		 23	[  0]	ISF  	   		0	; if not love.filesystem.setIdentity
		 24	[  0]	JMP  	  1		7	; 	goto 32
		 25	[  0]	GGET 	  0		1	; slot0 = _env["pcall"]
		 26	[  0]	GGET 	  2		6	; slot2 = _env["love"]
		 27	[  0]	TGETS	  2	2	5	; slot2 = love.filesystem
		 28	[  0]	TGETS	  2	2	2	; slot2 = love.filesystem.setIdentity
		 29	[  0]	KSTR 	  3		0	; slot3 = "slotbound"
		 30	[  0]	KPRI 	  4		2	; slot4 = true
		 31	[  0]	CALL 	  0	1	4	;  = pcall(slot1, love.filesystem.setIdentity, slot3)
		 32	[  0]	KPRI 	  0		2	; slot0 = true
		 33	[  0]	RET1 	  0		2	; return slot0
	 38	[  0]	FNEW 	 35		9	; N/A:0-0: 1 args, 2 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown"()
		  3	[  0]	IST  	   		1	; if slot1
		  4	[  0]	JMP  	  1		2	; 	goto 7
		  5	[  0]	KPRI 	  1		0	; slot1 = nil
		  6	[  0]	RET1 	  1		2	; return slot1
		  7	[  0]	GGET 	  1		5	; slot1 = _env["pcall"]
		  8	[  0]	GGET 	  3		4	; slot3 = _env["love"]
		  9	[  0]	TGETS	  3	3	3	; slot3 = love.filesystem
		 10	[  0]	TGETS	  3	3	2	; slot3 = love.filesystem.read
		 11	[  0]	MOV  	  4		0	; slot4 = slot0
		 12	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 13	[  0]	ADDVN	  5	5	0	; slot5 = uv1"unknown" + 1
		 14	[  0]	CALL 	  1	3	4	; slot1, slot2 = pcall(slot2, love.filesystem.read, slot4)
		 15	[  0]	ISF  	   		1	; if not slot1
		 16	[  0]	JMP  	  3		10	; 	goto 27
		 17	[  0]	GGET 	  3		1	; slot3 = _env["type"]
		 18	[  0]	MOV  	  5		2	; slot5 = slot2
		 19	[  0]	CALL 	  3	2	2	; slot3 = type(slot4)
		 20	[  0]	ISNES	  3		0	; if type ~= "string"
		 21	[  0]	JMP  	  3		5	; 	goto 27
		 22	[  0]	LEN  	  3		2	; slot3 = #slot2
		 23	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 24	[  0]	ISGT 	  3		4	; if slot3 > uv1"unknown"
		 25	[  0]	JMP  	  3		1	; 	goto 27
		 26	[  0]	RET1 	  2		2	; return slot2
		 27	[  0]	KPRI 	  3		0	; slot3 = nil
		 28	[  0]	RET1 	  3		2	; return slot3
	 39	[  0]	FNEW 	 36		8	; N/A:0-0: 1 args, 11 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown"()
		  3	[  0]	IST  	   		1	; if slot1
		  4	[  0]	JMP  	  1		2	; 	goto 7
		  5	[  0]	KPRI 	  1		1	; slot1 = false
		  6	[  0]	UCLO 	  0		136	; nil uvs >= r0; goto 143
		  7	[  0]	GGET 	  1		13	; slot1 = _env["love"]
		  8	[  0]	TGETS	  1	1	12	; slot1 = love.filesystem
		  9	[  0]	TGETS	  2	1	11	; slot2 = love.filesystem.getSaveDirectory
		 10	[  0]	IST  	   		2	; if love.filesystem.getSaveDirectory
		 11	[  0]	JMP  	  2		2	; 	goto 14
		 12	[  0]	KPRI 	  2		1	; slot2 = false
		 13	[  0]	UCLO 	  0		130	; nil uvs >= r0; goto 144
		 14	[  0]	TGETS	  2	1	11	; slot2 = love.filesystem.getSaveDirectory
		 15	[  0]	CALL 	  2	2	1	; slot2 = love.filesystem.getSaveDirectory()
		 16	[  0]	GGET 	  3		10	; slot3 = _env["type"]
		 17	[  0]	MOV  	  5		2	; slot5 = love.filesystem.getSaveDirectory
		 18	[  0]	CALL 	  3	2	2	; slot3 = type(slot4)
		 19	[  0]	ISNES	  3		9	; if type ~= "string"
		 20	[  0]	JMP  	  3		2	; 	goto 23
		 21	[  0]	ISNES	  2		8	; if love.filesystem.getSaveDirectory ~= ""
		 22	[  0]	JMP  	  3		2	; 	goto 25
		 23	[  0]	KPRI 	  3		1	; slot3 = false
		 24	[  0]	UCLO 	  0		120	; nil uvs >= r0; goto 145
		 25	[  0]	FNEW 	  3		7	; N/A:0-0: 3 args, 5 upvalues, 12 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  3		1	; slot3 = _env["pcall"]
			  2	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
			  3	[  0]	TGETS	  5	5	0	; slot5 = uv0"unknown".write
			  4	[  0]	MOV  	  6		1	; slot6 = slot1
			  5	[  0]	MOV  	  7		2	; slot7 = slot2
			  6	[  0]	CALL 	  3	3	4	; slot3, slot4 = pcall(slot4, uv0"unknown".write, slot6)
			  7	[  0]	ISF  	   		3	; if not slot3
			  8	[  0]	JMP  	  5		7	; 	goto 16
			  9	[  0]	ISF  	   		4	; if not slot4
			 10	[  0]	JMP  	  5		5	; 	goto 16
			 11	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
			 12	[  0]	MOV  	  7		1	; slot7 = slot1
			 13	[  0]	CALL 	  5	2	2	; slot5 = uv1"unknown"(slot6)
			 14	[  0]	ISEQV	  5		2	; if uv1"unknown" == slot2
			 15	[  0]	JMP  	  5		2	; 	goto 18
			 16	[  0]	KPRI 	  5		1	; slot5 = false
			 17	[  0]	RET1 	  5		2	; return slot5
			 18	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
			 19	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
			 20	[  0]	UGET 	  9		4	; slot9 = uv4"unknwon"
			 21	[  0]	MOV  	 10		1	; slot10 = slot1
			 22	[  0]	CALL 	  7	2	3	; slot7 = uv3"unknown"(slot8, uv4"unknown")
			 23	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
			 24	[  0]	UGET 	 10		4	; slot10 = uv4"unknwon"
			 25	[  0]	MOV  	 11		0	; slot11 = slot0
			 26	[  0]	CALL 	  8	0	3	; MULTRES = uv3"unknown"(uv4"unknown", uv4"unknown")
			 27	[  0]	CALLMT	  5		1	; return uv2"unknown"(, ...MULTRES)
		 26	[  0]	GGET 	  4		6	; slot4 = _env["pcall"]
		 27	[  0]	TGETS	  6	1	5	; slot6 = love.filesystem.write
		 28	[  0]	UGET 	  7		4	; slot7 = uv4"unknwon"
		 29	[  0]	MOV  	  8		0	; slot8 = slot0
		 30	[  0]	CALL 	  4	3	4	; slot4, slot5 = pcall(love.filesystem.getSaveDirectory, love.filesystem.write, uv4"unknown")
		 31	[  0]	ISF  	   		4	; if not slot4
		 32	[  0]	JMP  	  6		7	; 	goto 40
		 33	[  0]	ISF  	   		5	; if not love.filesystem.getSaveDirectory
		 34	[  0]	JMP  	  6		5	; 	goto 40
		 35	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 36	[  0]	UGET 	  8		4	; slot8 = uv4"unknwon"
		 37	[  0]	CALL 	  6	2	2	; slot6 = uv1"unknown"(uv4"unknown")
		 38	[  0]	ISEQV	  6		0	; if uv1"unknown" == slot0
		 39	[  0]	JMP  	  6		3	; 	goto 43
		 40	[  0]	KPRI 	  6		1	; slot6 = false
		 41	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 42
		 42	[  0]	RET1 	  6		2	; return slot6
		 43	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 44	[  0]	UGET 	  8		5	; slot8 = uv5"unknwon"
		 45	[  0]	CALL 	  6	2	2	; slot6 = uv1"unknown"(uv4"unknown")
		 46	[  0]	ISFC 	  7		6	; slot7 = uv1"unknown"; if not uv1"unknown"
		 47	[  0]	JMP  	  7		10	; 	goto 58
		 48	[  0]	UGET 	  7		6	; slot7 = uv6"unknwon"
		 49	[  0]	ISEQV	  6		7	; if uv1"unknown" == uv6"unknown"
		 50	[  0]	JMP  	  7		6	; 	goto 57
		 51	[  0]	UGET 	  7		7	; slot7 = uv7"unknwon"
		 52	[  0]	MOV  	  9		6	; slot9 = uv1"unknown"
		 53	[  0]	CALL 	  7	2	2	; slot7 = uv7"unknown"(uv5"unknown")
		 54	[  0]	JMP  	  8		3	; 	goto 58
		 55	[  0]	KPRI 	  7		1	; slot7 = false
		 56	[  0]	JMP  	  8		1	; 	goto 58
		 57	[  0]	KPRI 	  7		2	; slot7 = true
		 58	[  0]	UGET 	  8		8	; slot8 = uv8"unknwon"
		 59	[  0]	CALL 	  8	2	1	; slot8 = uv8"unknown"()
		 60	[  0]	ISF  	   		8	; if not uv8"unknown"
		 61	[  0]	JMP  	  9		8	; 	goto 70
		 62	[  0]	ISF  	   		7	; if not slot7
		 63	[  0]	JMP  	  8		6	; 	goto 70
		 64	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		 65	[  0]	MOV  	 10		2	; slot10 = love.filesystem.getSaveDirectory
		 66	[  0]	UGET 	 11		9	; slot11 = uv9"unknwon"
		 67	[  0]	CALL 	  8	2	3	; slot8 = uv3"unknown"(uv1"unknown", love.filesystem.getSaveDirectory)
		 68	[  0]	IST  	   		8	; if uv3"unknown"
		 69	[  0]	JMP  	  9		1	; 	goto 71
		 70	[  0]	KPRI 	  8		0	; slot8 = nil
		 71	[  0]	ISF  	   		7	; if not slot7
		 72	[  0]	JMP  	  9		14	; 	goto 87
		 73	[  0]	IST  	   		8	; if slot8
		 74	[  0]	JMP  	  9		12	; 	goto 87
		 75	[  0]	MOV  	  9		3	; slot9 = slot3
		 76	[  0]	UGET 	 11		9	; slot11 = uv9"unknwon"
		 77	[  0]	UGET 	 12		9	; slot12 = uv9"unknwon"
		 78	[  0]	KSTR 	 13		4	; slot13 = ".tmp"
		 79	[  0]	CAT  	 12	12	13	; slot12 = uv9"unknown" .. slot13
		 80	[  0]	MOV  	 13		6	; slot13 = uv1"unknown"
		 81	[  0]	CALL 	  9	2	4	; slot9 = slot9(love.filesystem.getSaveDirectory, uv9"unknown", slot12)
		 82	[  0]	IST  	   		9	; if slot9
		 83	[  0]	JMP  	  9		3	; 	goto 87
		 84	[  0]	KPRI 	  9		1	; slot9 = false
		 85	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 86
		 86	[  0]	RET1 	  9		2	; return slot9
		 87	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
		 88	[  0]	UGET 	 11		3	; slot11 = uv3"unknwon"
		 89	[  0]	MOV  	 13		2	; slot13 = love.filesystem.getSaveDirectory
		 90	[  0]	UGET 	 14		4	; slot14 = uv4"unknwon"
		 91	[  0]	CALL 	 11	2	3	; slot11 = uv3"unknown"(slot12, love.filesystem.getSaveDirectory)
		 92	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		 93	[  0]	MOV  	 14		2	; slot14 = love.filesystem.getSaveDirectory
		 94	[  0]	UGET 	 15		5	; slot15 = uv5"unknwon"
		 95	[  0]	CALL 	 12	2	3	; slot12 = uv3"unknown"(love.filesystem.getSaveDirectory, love.filesystem.getSaveDirectory)
		 96	[  0]	MOV  	 13		8	; slot13 = slot8
		 97	[  0]	CALL 	  9	2	4	; slot9 = uv2"unknown"(love.filesystem.getSaveDirectory, uv3"unknown", uv3"unknown")
		 98	[  0]	IST  	   		9	; if uv2"unknown"
		 99	[  0]	JMP  	  9		26	; 	goto 126
		100	[  0]	ISF  	   		8	; if not slot8
		101	[  0]	JMP  	  9		21	; 	goto 123
		102	[  0]	TGETS	  9	1	3	; slot9 = love.filesystem.getInfo
		103	[  0]	ISF  	   		9	; if not love.filesystem.getInfo
		104	[  0]	JMP  	 10		18	; 	goto 123
		105	[  0]	TGETS	  9	1	3	; slot9 = love.filesystem.getInfo
		106	[  0]	UGET 	 11		5	; slot11 = uv5"unknwon"
		107	[  0]	KSTR 	 12		2	; slot12 = "file"
		108	[  0]	CALL 	  9	2	3	; slot9 = love.filesystem.getInfo(love.filesystem.getSaveDirectory, uv5"unknown")
		109	[  0]	IST  	   		9	; if love.filesystem.getInfo
		110	[  0]	JMP  	  9		12	; 	goto 123
		111	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		112	[  0]	UGET 	 11		9	; slot11 = uv9"unknwon"
		113	[  0]	CALL 	  9	2	2	; slot9 = uv1"unknown"(love.filesystem.getSaveDirectory)
		114	[  0]	ISNEV	  9		6	; if uv1"unknown" ~= uv1"unknown"
		115	[  0]	JMP  	  9		7	; 	goto 123
		116	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
		117	[  0]	MOV  	 11		8	; slot11 = slot8
		118	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		119	[  0]	MOV  	 14		2	; slot14 = love.filesystem.getSaveDirectory
		120	[  0]	UGET 	 15		5	; slot15 = uv5"unknwon"
		121	[  0]	CALL 	 12	0	3	; MULTRES = uv3"unknown"(slot13, love.filesystem.getSaveDirectory)
		122	[  0]	CALLM	  9	1	1	;  = uv2"unknown"(love.filesystem.getSaveDirectory, ...MULTRES)
		123	[  0]	KPRI 	  9		1	; slot9 = false
		124	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 125
		125	[  0]	RET1 	  9		2	; return slot9
		126	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		127	[  0]	UGET 	 11		5	; slot11 = uv5"unknwon"
		128	[  0]	CALL 	  9	2	2	; slot9 = uv1"unknown"(love.filesystem.getSaveDirectory)
		129	[  0]	ISEQV	  9		0	; if uv1"unknown" == slot0
		130	[  0]	JMP  	  9		3	; 	goto 134
		131	[  0]	KPRI 	  9		1	; slot9 = false
		132	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 133
		133	[  0]	RET1 	  9		2	; return slot9
		134	[  0]	UGET 	  9		10	; slot9 = uv10"unknwon"
		135	[  0]	UGET 	 10		5	; slot10 = uv5"unknwon"
		136	[  0]	TSETS	 10	9	1	; uv10"unknown"._lastSavePath = uv5"unknown"
		137	[  0]	UGET 	  9		10	; slot9 = uv10"unknwon"
		138	[  0]	KPRI 	 10		2	; slot10 = true
		139	[  0]	TSETS	 10	9	0	; uv10"unknown"._usingFallback = slot10
		140	[  0]	KPRI 	  9		2	; slot9 = true
		141	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 142
		142	[  0]	RET1 	  9		2	; return slot9
		143	[  0]	RET1 	  1		2	; return love.filesystem
		144	[  0]	RET1 	  2		2	; return love.filesystem.getSaveDirectory
		145	[  0]	RET1 	  3		2	; return slot3
	 40	[  0]	FNEW 	 37		7	; N/A:0-0: 1 args, 11 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		4	; slot1 = _env["ipairs"]
		  2	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  3	[  0]	CALL 	  3	0	1	; MULTRES = uv0"unknown"()
		  4	[  0]	CALLM	  1	4	0	; slot1, slot2, slot3 = ipairs(, ...MULTRES)
		  5	[  0]	JMP  	  4		71	; 	goto 77
		  6	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		  7	[  0]	MOV  	  8		5	; slot8 = slot5
		  8	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
		  9	[  0]	CALL 	  6	2	3	; slot6 = uv1"unknown"(slot7, slot8)
		 10	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		 11	[  0]	TGETS	  7	7	3	; slot7 = uv3"unknown"._ensureDir
		 12	[  0]	ISF  	   		7	; if not uv3"unknown"._ensureDir
		 13	[  0]	JMP  	  8		4	; 	goto 18
		 14	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		 15	[  0]	TGETS	  7	7	3	; slot7 = uv3"unknown"._ensureDir
		 16	[  0]	MOV  	  9		6	; slot9 = uv1"unknown"
		 17	[  0]	CALL 	  7	1	2	;  = uv3"unknown"._ensureDir(slot8)
		 18	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 19	[  0]	MOV  	  9		6	; slot9 = uv1"unknown"
		 20	[  0]	UGET 	 10		4	; slot10 = uv4"unknwon"
		 21	[  0]	CALL 	  7	2	3	; slot7 = uv1"unknown"(slot8, uv1"unknown")
		 22	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 23	[  0]	MOV  	 10		6	; slot10 = uv1"unknown"
		 24	[  0]	UGET 	 11		5	; slot11 = uv5"unknwon"
		 25	[  0]	CALL 	  8	2	3	; slot8 = uv1"unknown"(uv1"unknown", uv1"unknown")
		 26	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 27	[  0]	MOV  	 11		6	; slot11 = uv1"unknown"
		 28	[  0]	UGET 	 12		6	; slot12 = uv6"unknwon"
		 29	[  0]	CALL 	  9	2	3	; slot9 = uv1"unknown"(uv1"unknown", uv1"unknown")
		 30	[  0]	UGET 	 10		7	; slot10 = uv7"unknwon"
		 31	[  0]	MOV  	 12		8	; slot12 = uv1"unknown"
		 32	[  0]	MOV  	 13		0	; slot13 = slot0
		 33	[  0]	CALL 	 10	2	3	; slot10 = uv7"unknown"(uv1"unknown", uv1"unknown")
		 34	[  0]	ISF  	   		10	; if not uv7"unknown"
		 35	[  0]	JMP  	 11		41	; 	goto 77
		 36	[  0]	UGET 	 10		8	; slot10 = uv8"unknwon"
		 37	[  0]	MOV  	 12		7	; slot12 = uv1"unknown"
		 38	[  0]	CALL 	 10	2	2	; slot10 = uv8"unknown"(uv1"unknown")
		 39	[  0]	KPRI 	 11		2	; slot11 = true
		 40	[  0]	ISF  	   		10	; if not uv8"unknown"
		 41	[  0]	JMP  	 12		20	; 	goto 62
		 42	[  0]	UGET 	 12		9	; slot12 = uv9"unknwon"
		 43	[  0]	MOV  	 14		10	; slot14 = uv8"unknown"
		 44	[  0]	CALL 	 12	2	2	; slot12 = uv9"unknown"(slot13)
		 45	[  0]	ISF  	   		12	; if not uv9"unknown"
		 46	[  0]	JMP  	 13		15	; 	goto 62
		 47	[  0]	UGET 	 12		7	; slot12 = uv7"unknwon"
		 48	[  0]	MOV  	 14		9	; slot14 = uv1"unknown"
		 49	[  0]	KSTR 	 15		2	; slot15 = ".tmp"
		 50	[  0]	CAT  	 14	14	15	; slot14 = uv1"unknown" .. slot15
		 51	[  0]	MOV  	 15		10	; slot15 = uv8"unknown"
		 52	[  0]	CALL 	 12	2	3	; slot12 = uv7"unknown"(slot13, slot14)
		 53	[  0]	ISFC 	 11		12	; slot11 = uv7"unknown"; if not uv7"unknown"
		 54	[  0]	JMP  	 13		7	; 	goto 62
		 55	[  0]	UGET 	 12		10	; slot12 = uv10"unknwon"
		 56	[  0]	MOV  	 14		9	; slot14 = uv1"unknown"
		 57	[  0]	KSTR 	 15		2	; slot15 = ".tmp"
		 58	[  0]	CAT  	 14	14	15	; slot14 = uv1"unknown" .. slot15
		 59	[  0]	MOV  	 15		9	; slot15 = uv1"unknown"
		 60	[  0]	CALL 	 12	2	3	; slot12 = uv10"unknown"(slot13, slot14)
		 61	[  0]	MOV  	 11		12	; slot11 = uv10"unknown"
		 62	[  0]	ISF  	   		11	; if not uv10"unknown"
		 63	[  0]	JMP  	 12		13	; 	goto 77
		 64	[  0]	UGET 	 12		10	; slot12 = uv10"unknwon"
		 65	[  0]	MOV  	 14		8	; slot14 = uv1"unknown"
		 66	[  0]	MOV  	 15		7	; slot15 = uv1"unknown"
		 67	[  0]	CALL 	 12	2	3	; slot12 = uv10"unknown"(slot13, uv1"unknown")
		 68	[  0]	ISF  	   		12	; if not uv10"unknown"
		 69	[  0]	JMP  	 13		7	; 	goto 77
		 70	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		 71	[  0]	TSETS	  7	12	1	; uv3"unknown"._lastSavePath = uv1"unknown"
		 72	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		 73	[  0]	KPRI 	 13		1	; slot13 = false
		 74	[  0]	TSETS	 13	12	0	; uv3"unknown"._usingFallback = slot13
		 75	[  0]	KPRI 	 12		2	; slot12 = true
		 76	[  0]	RET1 	 12		2	; return slot12
		 77	[  0]	ITERC	  4	3	3	; slot4, slot5, slot6 = ipairs, slot2, uv0"unknown"; slot4, slot5 = ipairs(slot2, uv0"unknown")
		 78	[  0]	ITERL	  4		-73	; uv0"unknown" = slot4; if slot4 != nil goto 6
		 79	[  0]	KPRI 	  1		1	; slot1 = false
		 80	[  0]	RET1 	  1		2	; return slot1
	 41	[  0]	FNEW 	 38		5	; N/A:0-0: 1 args, 11 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown"()
		  3	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  4	[  0]	MOV  	  4		0	; slot4 = slot0
		  5	[  0]	CALL 	  2	2	2	; slot2 = uv1"unknown"(slot3)
		  6	[  0]	ISF  	   		2	; if not slot2
		  7	[  0]	JMP  	  2		6	; 	goto 14
		  8	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		  9	[  0]	TGETS	  2	2	14	; slot2 = uv2"unknown".validate
		 10	[  0]	MOV  	  4		0	; slot4 = slot0
		 11	[  0]	CALL 	  2	2	2	; slot2 = uv2"unknown".validate(slot3)
		 12	[  0]	IST  	   		2	; if slot2
		 13	[  0]	JMP  	  2		2	; 	goto 16
		 14	[  0]	KPRI 	  2		1	; slot2 = false
		 15	[  0]	RET1 	  2		2	; return slot2
		 16	[  0]	KSTR 	  2		13	; slot2 = "return "
		 17	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
		 18	[  0]	TGETS	  3	3	12	; slot3 = uv3"unknown".serialize
		 19	[  0]	MOV  	  5		0	; slot5 = slot0
		 20	[  0]	CALL 	  3	2	2	; slot3 = uv3"unknown".serialize(slot4)
		 21	[  0]	CAT  	  2	2	3	; slot2 = slot2 .. uv3"unknown".serialize
		 22	[  0]	LEN  	  3		2	; slot3 = #slot2
		 23	[  0]	UGET 	  4		4	; slot4 = uv4"unknwon"
		 24	[  0]	ISGE 	  4		3	; if uv4"unknown" >= slot3
		 25	[  0]	JMP  	  3		2	; 	goto 28
		 26	[  0]	KPRI 	  3		1	; slot3 = false
		 27	[  0]	RET1 	  3		2	; return slot3
		 28	[  0]	UGET 	  3		5	; slot3 = uv5"unknwon"
		 29	[  0]	CALL 	  3	2	1	; slot3 = uv5"unknown"()
		 30	[  0]	ISF  	   		3	; if not uv5"unknown"
		 31	[  0]	JMP  	  4		25	; 	goto 57
		 32	[  0]	UGET 	  3		6	; slot3 = uv6"unknwon"
		 33	[  0]	ISNEV	  2		3	; if slot2 ~= uv6"unknown"
		 34	[  0]	JMP  	  3		22	; 	goto 57
		 35	[  0]	GGET 	  3		11	; slot3 = _env["love"]
		 36	[  0]	ISF  	   		3	; if not love
		 37	[  0]	JMP  	  4		19	; 	goto 57
		 38	[  0]	GGET 	  3		11	; slot3 = _env["love"]
		 39	[  0]	TGETS	  3	3	10	; slot3 = love.filesystem
		 40	[  0]	ISF  	   		3	; if not love.filesystem
		 41	[  0]	JMP  	  4		15	; 	goto 57
		 42	[  0]	GGET 	  3		11	; slot3 = _env["love"]
		 43	[  0]	TGETS	  3	3	10	; slot3 = love.filesystem
		 44	[  0]	TGETS	  3	3	9	; slot3 = love.filesystem.getInfo
		 45	[  0]	ISF  	   		3	; if not love.filesystem.getInfo
		 46	[  0]	JMP  	  4		10	; 	goto 57
		 47	[  0]	GGET 	  3		11	; slot3 = _env["love"]
		 48	[  0]	TGETS	  3	3	10	; slot3 = love.filesystem
		 49	[  0]	TGETS	  3	3	9	; slot3 = love.filesystem.getInfo
		 50	[  0]	UGET 	  5		7	; slot5 = uv7"unknwon"
		 51	[  0]	KSTR 	  6		8	; slot6 = "file"
		 52	[  0]	CALL 	  3	2	3	; slot3 = love.filesystem.getInfo(uv4"unknown", uv7"unknown")
		 53	[  0]	ISF  	   		3	; if not slot3
		 54	[  0]	JMP  	  4		2	; 	goto 57
		 55	[  0]	KPRI 	  3		2	; slot3 = true
		 56	[  0]	RET1 	  3		2	; return slot3
		 57	[  0]	UGET 	  3		8	; slot3 = uv8"unknwon"
		 58	[  0]	MOV  	  5		2	; slot5 = slot2
		 59	[  0]	CALL 	  3	2	2	; slot3 = uv8"unknown"(uv4"unknown")
		 60	[  0]	KPRI 	  4		1	; slot4 = false
		 61	[  0]	UGET 	  5		5	; slot5 = uv5"unknwon"
		 62	[  0]	CALL 	  5	2	1	; slot5 = uv5"unknown"()
		 63	[  0]	ISF  	   		5	; if not uv5"unknown"
		 64	[  0]	JMP  	  6		2	; 	goto 67
		 65	[  0]	IST  	   		3	; if uv8"unknown"
		 66	[  0]	JMP  	  5		4	; 	goto 71
		 67	[  0]	UGET 	  5		9	; slot5 = uv9"unknwon"
		 68	[  0]	MOV  	  7		2	; slot7 = slot2
		 69	[  0]	CALL 	  5	2	2	; slot5 = uv9"unknown"(slot6)
		 70	[  0]	MOV  	  4		5	; slot4 = uv9"unknown"
		 71	[  0]	IST  	   		3	; if uv8"unknown"
		 72	[  0]	JMP  	  5		2	; 	goto 75
		 73	[  0]	ISF  	   		4	; if not uv9"unknown"
		 74	[  0]	JMP  	  5		23	; 	goto 98
		 75	[  0]	UGET 	  5		5	; slot5 = uv5"unknwon"
		 76	[  0]	CALL 	  5	2	1	; slot5 = uv5"unknown"()
		 77	[  0]	ISF  	   		5	; if not uv5"unknown"
		 78	[  0]	JMP  	  6		3	; 	goto 82
		 79	[  0]	ISF  	   		3	; if not uv8"unknown"
		 80	[  0]	JMP  	  5		1	; 	goto 82
		 81	[  0]	USETV	  6		2	; uv6"unknwon" = slot2
		 82	[  0]	UGET 	  5		10	; slot5 = uv10"unknwon"
		 83	[  0]	KSTR 	  7		7	; slot7 = "save"
		 84	[  0]	MOV  	  8		1	; slot8 = slot1
		 85	[  0]	KSTR 	  9		6	; slot9 = "bytes=%d, storage=%s"
		 86	[  0]	MOV  	 11		9	; slot11 = slot9
		 87	[  0]	TGETS	  9	9	5	; slot9 = slot9.format
		 88	[  0]	LEN  	 12		2	; slot12 = #slot2
		 89	[  0]	ISF  	   		3	; if not uv8"unknown"
		 90	[  0]	JMP  	 13		2	; 	goto 93
		 91	[  0]	KSTR 	 13		4	; slot13 = "appdata"
		 92	[  0]	JMP  	 14		1	; 	goto 94
		 93	[  0]	KSTR 	 13		3	; slot13 = "documents"
		 94	[  0]	CALL 	  9	0	4	; MULTRES = <unknown table>.format(slot10, slot11, slot12)
		 95	[  0]	CALLM	  5	1	2	;  = uv10"unknown"(slot6, slot7, ...MULTRES)
		 96	[  0]	KPRI 	  5		2	; slot5 = true
		 97	[  0]	RET1 	  5		2	; return slot5
		 98	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
		 99	[  0]	KPRI 	  6		0	; slot6 = nil
		100	[  0]	TSETS	  6	5	2	; uv3"unknown"._lastSavePath = slot6
		101	[  0]	UGET 	  5		10	; slot5 = uv10"unknwon"
		102	[  0]	KSTR 	  7		1	; slot7 = "save-failed"
		103	[  0]	MOV  	  8		1	; slot8 = slot1
		104	[  0]	KSTR 	  9		0	; slot9 = "bytes=%d"
		105	[  0]	MOV  	 11		9	; slot11 = slot9
		106	[  0]	TGETS	  9	9	5	; slot9 = slot9.format
		107	[  0]	LEN  	 12		2	; slot12 = #slot2
		108	[  0]	CALL 	  9	0	3	; MULTRES = <unknown table>.format(slot10, slot11)
		109	[  0]	CALLM	  5	1	2	;  = uv10"unknown"(slot6, slot7, ...MULTRES)
		110	[  0]	KPRI 	  5		1	; slot5 = false
		111	[  0]	RET1 	  5		2	; return slot5
	 42	[  0]	TSETS	 38	1	6	; slot1.save = slot38
	 43	[  0]	FNEW 	 38		3	; N/A:0-0: 0 args, 17 upvalues, 18 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	CALL 	  0	2	1	; slot0 = uv0"unknown"()
		  3	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  4	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		  5	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
		  6	[  0]	CALL 	  3	0	2	; MULTRES = uv2"unknown"(slot4)
		  7	[  0]	CALLM	  1	2	0	; slot1 = uv1"unknown"(, ...MULTRES)
		  8	[  0]	IST  	   		1	; if uv1"unknown"
		  9	[  0]	JMP  	  2		5	; 	goto 15
		 10	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 11	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 12	[  0]	UGET 	  5		4	; slot5 = uv4"unknwon"
		 13	[  0]	CALL 	  3	0	2	; MULTRES = uv2"unknown"(slot4)
		 14	[  0]	CALLM	  1	2	0	; slot1 = uv1"unknown"(, ...MULTRES)
		 15	[  0]	ISF  	   		1	; if not uv1"unknown"
		 16	[  0]	JMP  	  2		3	; 	goto 20
		 17	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 18	[  0]	IST  	   		2	; if uv3"unknown"
		 19	[  0]	JMP  	  3		1	; 	goto 21
		 20	[  0]	KPRI 	  2		0	; slot2 = nil
		 21	[  0]	ISNEP	  1		0	; if uv1"unknown" ~= nil
		 22	[  0]	JMP  	  3		2	; 	goto 25
		 23	[  0]	KPRI 	  3		1	; slot3 = false
		 24	[  0]	JMP  	  4		1	; 	goto 26
		 25	[  0]	KPRI 	  3		2	; slot3 = true
		 26	[  0]	IST  	   		1	; if uv1"unknown"
		 27	[  0]	JMP  	  4		52	; 	goto 80
		 28	[  0]	GGET 	  4		14	; slot4 = _env["ipairs"]
		 29	[  0]	UGET 	  6		5	; slot6 = uv5"unknwon"
		 30	[  0]	CALL 	  6	0	1	; MULTRES = uv5"unknown"()
		 31	[  0]	CALLM	  4	4	0	; slot4, slot5, slot6 = ipairs(, ...MULTRES)
		 32	[  0]	JMP  	  7		45	; 	goto 78
		 33	[  0]	UGET 	  9		6	; slot9 = uv6"unknwon"
		 34	[  0]	MOV  	 11		8	; slot11 = slot8
		 35	[  0]	UGET 	 12		7	; slot12 = uv7"unknwon"
		 36	[  0]	CALL 	  9	2	3	; slot9 = uv6"unknown"(slot10, slot11)
		 37	[  0]	UGET 	 10		6	; slot10 = uv6"unknwon"
		 38	[  0]	MOV  	 12		9	; slot12 = uv6"unknown"
		 39	[  0]	UGET 	 13		8	; slot13 = uv8"unknwon"
		 40	[  0]	CALL 	 10	2	3	; slot10 = uv6"unknown"(slot11, uv6"unknown")
		 41	[  0]	UGET 	 11		1	; slot11 = uv1"unknwon"
		 42	[  0]	UGET 	 13		9	; slot13 = uv9"unknwon"
		 43	[  0]	MOV  	 15		10	; slot15 = uv6"unknown"
		 44	[  0]	CALL 	 13	0	2	; MULTRES = uv9"unknown"(slot14)
		 45	[  0]	CALLM	 11	2	0	; slot11 = uv1"unknown"(, ...MULTRES)
		 46	[  0]	IST  	   		11	; if uv1"unknown"
		 47	[  0]	JMP  	 12		20	; 	goto 68
		 48	[  0]	UGET 	 12		6	; slot12 = uv6"unknwon"
		 49	[  0]	MOV  	 14		9	; slot14 = uv6"unknown"
		 50	[  0]	UGET 	 15		10	; slot15 = uv10"unknwon"
		 51	[  0]	CALL 	 12	2	3	; slot12 = uv6"unknown"(uv9"unknown", uv6"unknown")
		 52	[  0]	UGET 	 13		1	; slot13 = uv1"unknwon"
		 53	[  0]	UGET 	 15		9	; slot15 = uv9"unknwon"
		 54	[  0]	MOV  	 17		12	; slot17 = uv6"unknown"
		 55	[  0]	CALL 	 15	0	2	; MULTRES = uv9"unknown"(slot16)
		 56	[  0]	CALLM	 13	2	0	; slot13 = uv1"unknown"(, ...MULTRES)
		 57	[  0]	MOV  	 11		13	; slot11 = uv1"unknown"
		 58	[  0]	ISF  	   		11	; if not uv1"unknown"
		 59	[  0]	JMP  	 13		15	; 	goto 75
		 60	[  0]	IST  	   		1	; if uv1"unknown"
		 61	[  0]	JMP  	 13		13	; 	goto 75
		 62	[  0]	MOV  	 13		11	; slot13 = uv1"unknown"
		 63	[  0]	MOV  	 14		12	; slot14 = uv6"unknown"
		 64	[  0]	KPRI 	  3		1	; slot3 = false
		 65	[  0]	MOV  	  2		14	; slot2 = uv6"unknown"
		 66	[  0]	MOV  	  1		13	; slot1 = uv1"unknown"
		 67	[  0]	JMP  	 12		7	; 	goto 75
		 68	[  0]	IST  	   		1	; if uv1"unknown"
		 69	[  0]	JMP  	 12		5	; 	goto 75
		 70	[  0]	MOV  	 12		11	; slot12 = uv1"unknown"
		 71	[  0]	MOV  	 13		10	; slot13 = uv6"unknown"
		 72	[  0]	KPRI 	  3		1	; slot3 = false
		 73	[  0]	MOV  	  2		13	; slot2 = uv6"unknown"
		 74	[  0]	MOV  	  1		12	; slot1 = uv1"unknown"
		 75	[  0]	ISF  	   		1	; if not uv1"unknown"
		 76	[  0]	JMP  	 12		1	; 	goto 78
		 77	[  0]	JMP  	  4		2	; 	goto 80
		 78	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, uv4"unknown", uv5"unknown"; slot7, slot8 = ipairs(uv4"unknown", uv5"unknown")
		 79	[  0]	ITERL	  7		-47	; uv5"unknown" = slot7; if slot7 != nil goto 33
		 80	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 81	[  0]	UGET 	  6		11	; slot6 = uv11"unknwon"
		 82	[  0]	CALL 	  4	2	2	; slot4 = uv2"unknown"(uv4"unknown")
		 83	[  0]	ISEQS	  4		13	; if uv2"unknown" == "1"
		 84	[  0]	JMP  	  4		2	; 	goto 87
		 85	[  0]	KPRI 	  4		1	; slot4 = false
		 86	[  0]	JMP  	  5		1	; 	goto 88
		 87	[  0]	KPRI 	  4		2	; slot4 = true
		 88	[  0]	IST  	   		4	; if slot4
		 89	[  0]	JMP  	  5		38	; 	goto 128
		 90	[  0]	UGET 	  5		12	; slot5 = uv12"unknwon"
		 91	[  0]	CALL 	  5	2	1	; slot5 = uv12"unknown"()
		 92	[  0]	ISF  	   		5	; if not uv12"unknown"
		 93	[  0]	JMP  	  6		27	; 	goto 121
		 94	[  0]	UGET 	  6		13	; slot6 = uv13"unknwon"
		 95	[  0]	MOV  	  8		5	; slot8 = uv12"unknown"
		 96	[  0]	CALL 	  6	2	2	; slot6 = uv13"unknown"(slot7)
		 97	[  0]	UGET 	  7		13	; slot7 = uv13"unknwon"
		 98	[  0]	MOV  	  9		1	; slot9 = uv1"unknown"
		 99	[  0]	CALL 	  7	2	2	; slot7 = uv13"unknown"(uv12"unknown")
		100	[  0]	ISGE 	  7		6	; if uv13"unknown" >= uv13"unknown"
		101	[  0]	JMP  	  6		19	; 	goto 121
		102	[  0]	UGET 	  6		14	; slot6 = uv14"unknwon"
		103	[  0]	TGETS	  6	6	12	; slot6 = uv14"unknown".save
		104	[  0]	MOV  	  8		5	; slot8 = uv12"unknown"
		105	[  0]	CALL 	  6	2	2	; slot6 = uv14"unknown".save(uv13"unknown")
		106	[  0]	ISF  	   		6	; if not uv14"unknown".save
		107	[  0]	JMP  	  7		7	; 	goto 115
		108	[  0]	GGET 	  6		11	; slot6 = _env["pcall"]
		109	[  0]	GGET 	  8		10	; slot8 = _env["love"]
		110	[  0]	TGETS	  8	8	9	; slot8 = love.filesystem
		111	[  0]	TGETS	  8	8	8	; slot8 = love.filesystem.write
		112	[  0]	UGET 	  9		11	; slot9 = uv11"unknwon"
		113	[  0]	KSTR 	 10		13	; slot10 = "1"
		114	[  0]	CALL 	  6	1	4	;  = pcall(uv13"unknown", love.filesystem.write, uv11"unknown")
		115	[  0]	UGET 	  6		15	; slot6 = uv15"unknwon"
		116	[  0]	KSTR 	  8		7	; slot8 = "load-and-migrate-save"
		117	[  0]	MOV  	  9		0	; slot9 = slot0
		118	[  0]	KSTR 	 10		6	; slot10 = "legacy save selected"
		119	[  0]	CALL 	  6	1	4	;  = uv15"unknown"(uv13"unknown", slot8, slot9)
		120	[  0]	RET1 	  5		2	; return uv12"unknown"
		121	[  0]	GGET 	  6		11	; slot6 = _env["pcall"]
		122	[  0]	GGET 	  8		10	; slot8 = _env["love"]
		123	[  0]	TGETS	  8	8	9	; slot8 = love.filesystem
		124	[  0]	TGETS	  8	8	8	; slot8 = love.filesystem.write
		125	[  0]	UGET 	  9		11	; slot9 = uv11"unknwon"
		126	[  0]	KSTR 	 10		13	; slot10 = "1"
		127	[  0]	CALL 	  6	1	4	;  = pcall(uv13"unknown", love.filesystem.write, uv11"unknown")
		128	[  0]	ISF  	   		1	; if not uv1"unknown"
		129	[  0]	JMP  	  5		14	; 	goto 144
		130	[  0]	UGET 	  5		16	; slot5 = uv16"unknwon"
		131	[  0]	CALL 	  5	2	1	; slot5 = uv16"unknown"()
		132	[  0]	ISF  	   		5	; if not uv16"unknown"
		133	[  0]	JMP  	  6		10	; 	goto 144
		134	[  0]	IST  	   		3	; if slot3
		135	[  0]	JMP  	  5		8	; 	goto 144
		136	[  0]	UGET 	  5		14	; slot5 = uv14"unknwon"
		137	[  0]	TGETS	  5	5	12	; slot5 = uv14"unknown".save
		138	[  0]	MOV  	  7		1	; slot7 = uv1"unknown"
		139	[  0]	CALL 	  5	2	2	; slot5 = uv14"unknown".save(pcall)
		140	[  0]	ISF  	   		5	; if not uv14"unknown".save
		141	[  0]	JMP  	  6		2	; 	goto 144
		142	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		143	[  0]	KPRI 	  3		2	; slot3 = true
		144	[  0]	UGET 	  5		14	; slot5 = uv14"unknwon"
		145	[  0]	TSETS	  2	5	5	; uv14"unknown"._lastSavePath = uv3"unknown"
		146	[  0]	UGET 	  5		14	; slot5 = uv14"unknwon"
		147	[  0]	TSETS	  3	5	4	; uv14"unknown"._usingFallback = slot3
		148	[  0]	UGET 	  5		15	; slot5 = uv15"unknwon"
		149	[  0]	KSTR 	  7		3	; slot7 = "load-save"
		150	[  0]	MOV  	  8		0	; slot8 = slot0
		151	[  0]	ISF  	   		2	; if not uv3"unknown"
		152	[  0]	JMP  	  9		7	; 	goto 160
		153	[  0]	KSTR 	  9		2	; slot9 = "path="
		154	[  0]	GGET 	 10		1	; slot10 = _env["tostring"]
		155	[  0]	MOV  	 12		2	; slot12 = uv3"unknown"
		156	[  0]	CALL 	 10	2	2	; slot10 = tostring(uv1"unknown")
		157	[  0]	CAT  	  9	9	10	; slot9 = slot9 .. tostring
		158	[  0]	IST  	   		9	; if slot9
		159	[  0]	JMP  	 10		1	; 	goto 161
		160	[  0]	KSTR 	  9		0	; slot9 = "no save found"
		161	[  0]	CALL 	  5	1	4	;  = uv15"unknown"(pcall, slot7, slot8)
		162	[  0]	RET1 	  1		2	; return uv1"unknown"
	 44	[  0]	TSETS	 38	1	4	; slot1.load = slot38
	 45	[  0]	FNEW 	 38		2	; N/A:0-0: 2 args, 1 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		14	; slot2 = _env["type"]
		  2	[  0]	MOV  	  4		1	; slot4 = slot1
		  3	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  4	[  0]	ISEQS	  2		13	; if slot2 == "number"
		  5	[  0]	JMP  	  3		2	; 	goto 8
		  6	[  0]	ISNES	  2		12	; if slot2 ~= "boolean"
		  7	[  0]	JMP  	  3		7	; 	goto 15
		  8	[  0]	LEN  	  3		0	; slot3 = #slot0
		  9	[  0]	ADDVN	  3	3	0	; slot3 = slot3 + 1
		 10	[  0]	GGET 	  4		11	; slot4 = _env["tostring"]
		 11	[  0]	MOV  	  6		1	; slot6 = slot1
		 12	[  0]	CALL 	  4	2	2	; slot4 = tostring(slot5)
		 13	[  0]	TSETV	  4	0	3	; slot0[slot3] = tostring
		 14	[  0]	JMP  	  3		52	; 	goto 67
		 15	[  0]	ISNES	  2		10	; if slot2 ~= "string"
		 16	[  0]	JMP  	  3		9	; 	goto 26
		 17	[  0]	LEN  	  3		0	; slot3 = #slot0
		 18	[  0]	ADDVN	  3	3	0	; slot3 = slot3 + 1
		 19	[  0]	GGET 	  4		10	; slot4 = _env["string"]
		 20	[  0]	TGETS	  4	4	9	; slot4 = string.format
		 21	[  0]	KSTR 	  6		8	; slot6 = "%q"
		 22	[  0]	MOV  	  7		1	; slot7 = slot1
		 23	[  0]	CALL 	  4	2	3	; slot4 = string.format(slot5, slot6)
		 24	[  0]	TSETV	  4	0	3	; slot0[slot3] = string.format
		 25	[  0]	JMP  	  3		41	; 	goto 67
		 26	[  0]	ISNES	  2		7	; if slot2 ~= "table"
		 27	[  0]	JMP  	  3		35	; 	goto 63
		 28	[  0]	LEN  	  3		0	; slot3 = #slot0
		 29	[  0]	ADDVN	  3	3	0	; slot3 = slot3 + 1
		 30	[  0]	KSTR 	  4		6	; slot4 = "{"
		 31	[  0]	TSETV	  4	0	3	; slot0[slot3] = slot4
		 32	[  0]	GGET 	  3		5	; slot3 = _env["pairs"]
		 33	[  0]	MOV  	  5		1	; slot5 = slot1
		 34	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = pairs(slot4)
		 35	[  0]	ISNEXT	  6		20	; Verify ITERN at 56; goto 56
		 36	[  0]	LEN  	  8		0	; slot8 = #slot0
		 37	[  0]	ADDVN	  8	8	0	; slot8 = slot8 + 1
		 38	[  0]	KSTR 	  9		4	; slot9 = "["
		 39	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		 40	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 41	[  0]	MOV  	 10		0	; slot10 = slot0
		 42	[  0]	MOV  	 11		6	; slot11 = slot6
		 43	[  0]	CALL 	  8	1	3	;  = uv0"unknown"(slot9, slot10)
		 44	[  0]	LEN  	  8		0	; slot8 = #slot0
		 45	[  0]	ADDVN	  8	8	0	; slot8 = slot8 + 1
		 46	[  0]	KSTR 	  9		3	; slot9 = "]="
		 47	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		 48	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 49	[  0]	MOV  	 10		0	; slot10 = slot0
		 50	[  0]	MOV  	 11		7	; slot11 = slot7
		 51	[  0]	CALL 	  8	1	3	;  = uv0"unknown"(slot9, slot10)
		 52	[  0]	LEN  	  8		0	; slot8 = #slot0
		 53	[  0]	ADDVN	  8	8	0	; slot8 = slot8 + 1
		 54	[  0]	KSTR 	  9		2	; slot9 = ","
		 55	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		 56	[  0]	ITERN	  6	3	3	; slot6, slot7, slot8 = pairs, slot4, slot5; slot6, slot7 = pairs(slot4, slot5)
		 57	[  0]	ITERL	  6		-22	; slot5 = slot6; if slot6 != nil goto 36
		 58	[  0]	LEN  	  3		0	; slot3 = #slot0
		 59	[  0]	ADDVN	  3	3	0	; slot3 = slot3 + 1
		 60	[  0]	KSTR 	  4		1	; slot4 = "}"
		 61	[  0]	TSETV	  4	0	3	; slot0[slot3] = slot4
		 62	[  0]	JMP  	  3		4	; 	goto 67
		 63	[  0]	LEN  	  3		0	; slot3 = #slot0
		 64	[  0]	ADDVN	  3	3	0	; slot3 = slot3 + 1
		 65	[  0]	KSTR 	  4		0	; slot4 = "nil"
		 66	[  0]	TSETV	  4	0	3	; slot0[slot3] = slot4
		 67	[  0]	RET0 	  0		1	; return
	 46	[  0]	FNEW 	 39		0	; N/A:0-0: 1 args, 1 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	MOV  	  4		1	; slot4 = slot1
		  4	[  0]	MOV  	  5		0	; slot5 = slot0
		  5	[  0]	CALL 	  2	1	3	;  = uv0"unknown"(slot3, slot4)
		  6	[  0]	GGET 	  2		1	; slot2 = _env["table"]
		  7	[  0]	TGETS	  2	2	0	; slot2 = table.concat
		  8	[  0]	MOV  	  4		1	; slot4 = slot1
		  9	[  0]	CALLT	  2		2	; return table.concat(slot3)
	 47	[  0]	TSETS	 39	1	1	; slot1.serialize = slot39
	 48	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 49
	 49	[  0]	RET1 	  1		2	; return slot1
	
