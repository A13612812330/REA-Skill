;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\release_integrity.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 9 slots
	;;;; constant tables ;;;;
	;;;; instructions ;;;;
	  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
	  2	[  0]	KSTR 	  1		7	; slot1 = "b02661600b862204894c15ecf9ed1b9f1caee8b44b085c9a9e8438c50e66c3a6"
	  3	[  0]	KPRI 	  2		1	; slot2 = false
	  4	[  0]	FNEW 	  3		6	; N/A:0-0: 1 args, 0 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		5	; slot1 = _env["error"]
		  2	[  0]	KSTR 	  3		4	; slot3 = "SlotBound could not start because its game files were modified or corrupted. "
		  3	[  0]	KSTR 	  4		3	; slot4 = "Please reinstall an official copy. ("
		  4	[  0]	GGET 	  5		2	; slot5 = _env["tostring"]
		  5	[  0]	ISTC 	  7		0	; slot7 = slot0; if slot0
		  6	[  0]	JMP  	  7		1	; 	goto 8
		  7	[  0]	KSTR 	  7		1	; slot7 = "integrity check failed"
		  8	[  0]	CALL 	  5	2	2	; slot5 = tostring(slot6)
		  9	[  0]	KSTR 	  6		0	; slot6 = ")"
		 10	[  0]	CAT  	  3	3	6	; slot3 = slot3 .. slot4 .. tostring .. slot6
		 11	[  0]	KSHORT	  4		0	; slot4 = 0
		 12	[  0]	CALL 	  1	1	3	;  = error(slot2, slot3)
		 13	[  0]	RET0 	  0		1	; return
	  5	[  0]	FNEW 	  4		5	; N/A:0-0: 1 args, 1 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		12	; slot1 = _env["love"]
		  2	[  0]	ISF  	   		1	; if not love
		  3	[  0]	JMP  	  2		2	; 	goto 6
		  4	[  0]	GGET 	  1		12	; slot1 = _env["love"]
		  5	[  0]	TGETS	  1	1	11	; slot1 = love.data
		  6	[  0]	ISF  	   		1	; if not love.data
		  7	[  0]	JMP  	  2		6	; 	goto 14
		  8	[  0]	TGETS	  2	1	10	; slot2 = love.data.hash
		  9	[  0]	ISF  	   		2	; if not love.data.hash
		 10	[  0]	JMP  	  3		3	; 	goto 14
		 11	[  0]	TGETS	  2	1	9	; slot2 = love.data.encode
		 12	[  0]	IST  	   		2	; if love.data.encode
		 13	[  0]	JMP  	  2		3	; 	goto 17
		 14	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 15	[  0]	KSTR 	  4		8	; slot4 = "SHA-256 support is unavailable"
		 16	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(slot3)
		 17	[  0]	GGET 	  2		7	; slot2 = _env["pcall"]
		 18	[  0]	TGETS	  4	1	10	; slot4 = love.data.hash
		 19	[  0]	KSTR 	  5		6	; slot5 = "sha256"
		 20	[  0]	MOV  	  6		0	; slot6 = slot0
		 21	[  0]	CALL 	  2	3	4	; slot2, slot3 = pcall(slot3, love.data.hash, slot5)
		 22	[  0]	ISF  	   		2	; if not slot2
		 23	[  0]	JMP  	  4		5	; 	goto 29
		 24	[  0]	GGET 	  4		5	; slot4 = _env["type"]
		 25	[  0]	MOV  	  6		3	; slot6 = slot3
		 26	[  0]	CALL 	  4	2	2	; slot4 = type(slot5)
		 27	[  0]	ISEQS	  4		4	; if type == "string"
		 28	[  0]	JMP  	  4		3	; 	goto 32
		 29	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 30	[  0]	KSTR 	  6		3	; slot6 = "SHA-256 calculation failed"
		 31	[  0]	CALL 	  4	1	2	;  = uv0"unknown"(slot5)
		 32	[  0]	GGET 	  4		7	; slot4 = _env["pcall"]
		 33	[  0]	TGETS	  6	1	9	; slot6 = love.data.encode
		 34	[  0]	KSTR 	  7		4	; slot7 = "string"
		 35	[  0]	KSTR 	  8		2	; slot8 = "hex"
		 36	[  0]	MOV  	  9		3	; slot9 = slot3
		 37	[  0]	CALL 	  4	3	5	; slot4, slot5 = pcall(slot5, love.data.encode, slot7, slot8)
		 38	[  0]	ISF  	   		4	; if not slot4
		 39	[  0]	JMP  	  6		5	; 	goto 45
		 40	[  0]	GGET 	  6		5	; slot6 = _env["type"]
		 41	[  0]	MOV  	  8		5	; slot8 = slot5
		 42	[  0]	CALL 	  6	2	2	; slot6 = type(slot7)
		 43	[  0]	ISEQS	  6		4	; if type == "string"
		 44	[  0]	JMP  	  6		3	; 	goto 48
		 45	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 46	[  0]	KSTR 	  8		1	; slot8 = "SHA-256 encoding failed"
		 47	[  0]	CALL 	  6	1	2	;  = uv0"unknown"(slot7)
		 48	[  0]	MOV  	  8		5	; slot8 = slot5
		 49	[  0]	TGETS	  6	5	0	; slot6 = slot5.lower
		 50	[  0]	CALLT	  6		2	; return <unknown table>.lower(slot7)
	  6	[  0]	FNEW 	  5		4	; N/A:0-0: 1 args, 1 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		8	; slot1 = _env["love"]
		  2	[  0]	ISF  	   		1	; if not love
		  3	[  0]	JMP  	  2		2	; 	goto 6
		  4	[  0]	GGET 	  1		8	; slot1 = _env["love"]
		  5	[  0]	TGETS	  1	1	7	; slot1 = love.filesystem
		  6	[  0]	ISF  	   		1	; if not love.filesystem
		  7	[  0]	JMP  	  2		3	; 	goto 11
		  8	[  0]	TGETS	  2	1	6	; slot2 = love.filesystem.read
		  9	[  0]	IST  	   		2	; if love.filesystem.read
		 10	[  0]	JMP  	  2		3	; 	goto 14
		 11	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 12	[  0]	KSTR 	  4		5	; slot4 = "filesystem access is unavailable"
		 13	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(slot3)
		 14	[  0]	GGET 	  2		4	; slot2 = _env["pcall"]
		 15	[  0]	TGETS	  4	1	6	; slot4 = love.filesystem.read
		 16	[  0]	MOV  	  5		0	; slot5 = slot0
		 17	[  0]	CALL 	  2	3	3	; slot2, slot3 = pcall(slot3, love.filesystem.read)
		 18	[  0]	ISF  	   		2	; if not slot2
		 19	[  0]	JMP  	  4		5	; 	goto 25
		 20	[  0]	GGET 	  4		3	; slot4 = _env["type"]
		 21	[  0]	MOV  	  6		3	; slot6 = slot3
		 22	[  0]	CALL 	  4	2	2	; slot4 = type(slot5)
		 23	[  0]	ISEQS	  4		2	; if type == "string"
		 24	[  0]	JMP  	  4		7	; 	goto 32
		 25	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 26	[  0]	KSTR 	  6		1	; slot6 = "missing file: "
		 27	[  0]	GGET 	  7		0	; slot7 = _env["tostring"]
		 28	[  0]	MOV  	  9		0	; slot9 = slot0
		 29	[  0]	CALL 	  7	2	2	; slot7 = tostring(slot8)
		 30	[  0]	CAT  	  6	6	7	; slot6 = slot6 .. tostring
		 31	[  0]	CALL 	  4	1	2	;  = uv0"unknown"(slot5)
		 32	[  0]	RET1 	  3		2	; return slot3
	  7	[  0]	FNEW 	  6		3	; N/A:0-0: 1 args, 0 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		13	; slot1 = _env["type"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  4	[  0]	ISNES	  1		12	; if slot1 ~= "string"
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	ISNES	  0		11	; if slot0 ~= ""
		  7	[  0]	JMP  	  1		2	; 	goto 10
		  8	[  0]	KPRI 	  1		1	; slot1 = false
		  9	[  0]	RET1 	  1		2	; return slot1
		 10	[  0]	MOV  	  3		0	; slot3 = slot0
		 11	[  0]	TGETS	  1	0	10	; slot1 = slot0.sub
		 12	[  0]	KSHORT	  4		1	; slot4 = 1
		 13	[  0]	KSHORT	  5		1	; slot5 = 1
		 14	[  0]	CALL 	  1	2	4	; slot1 = <unknown table>.sub(slot2, slot3, slot4)
		 15	[  0]	ISEQS	  1		9	; if slot1 == "/"
		 16	[  0]	JMP  	  1		8	; 	goto 25
		 17	[  0]	MOV  	  3		0	; slot3 = slot0
		 18	[  0]	TGETS	  1	0	8	; slot1 = slot0.find
		 19	[  0]	KSTR 	  4		7	; slot4 = "\"
		 20	[  0]	KSHORT	  5		1	; slot5 = 1
		 21	[  0]	KPRI 	  6		2	; slot6 = true
		 22	[  0]	CALL 	  1	2	5	; slot1 = <unknown table>.find(slot2, slot3, slot4, slot5)
		 23	[  0]	ISF  	   		1	; if not slot1
		 24	[  0]	JMP  	  2		2	; 	goto 27
		 25	[  0]	KPRI 	  1		1	; slot1 = false
		 26	[  0]	RET1 	  1		2	; return slot1
		 27	[  0]	MOV  	  3		0	; slot3 = slot0
		 28	[  0]	TGETS	  1	0	8	; slot1 = slot0.find
		 29	[  0]	KSTR 	  4		6	; slot4 = ":"
		 30	[  0]	KSHORT	  5		1	; slot5 = 1
		 31	[  0]	KPRI 	  6		2	; slot6 = true
		 32	[  0]	CALL 	  1	2	5	; slot1 = <unknown table>.find(slot2, slot3, slot4, slot5)
		 33	[  0]	IST  	   		1	; if slot1
		 34	[  0]	JMP  	  2		20	; 	goto 55
		 35	[  0]	MOV  	  3		0	; slot3 = slot0
		 36	[  0]	TGETS	  1	0	8	; slot1 = slot0.find
		 37	[  0]	KSTR 	  4		5	; slot4 = "[%c]"
		 38	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.find(slot2, slot3)
		 39	[  0]	IST  	   		1	; if slot1
		 40	[  0]	JMP  	  2		14	; 	goto 55
		 41	[  0]	MOV  	  3		0	; slot3 = slot0
		 42	[  0]	TGETS	  1	0	8	; slot1 = slot0.find
		 43	[  0]	KSTR 	  4		4	; slot4 = "//"
		 44	[  0]	KSHORT	  5		1	; slot5 = 1
		 45	[  0]	KPRI 	  6		2	; slot6 = true
		 46	[  0]	CALL 	  1	2	5	; slot1 = <unknown table>.find(slot2, slot3, slot4, slot5)
		 47	[  0]	IST  	   		1	; if slot1
		 48	[  0]	JMP  	  2		6	; 	goto 55
		 49	[  0]	MOV  	  3		0	; slot3 = slot0
		 50	[  0]	TGETS	  1	0	10	; slot1 = slot0.sub
		 51	[  0]	KSHORT	  4		65535	; slot4 = 65535
		 52	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.sub(slot2, slot3)
		 53	[  0]	ISNES	  1		9	; if slot1 ~= "/"
		 54	[  0]	JMP  	  1		2	; 	goto 57
		 55	[  0]	KPRI 	  1		1	; slot1 = false
		 56	[  0]	RET1 	  1		2	; return slot1
		 57	[  0]	MOV  	  3		0	; slot3 = slot0
		 58	[  0]	TGETS	  1	0	3	; slot1 = slot0.gmatch
		 59	[  0]	KSTR 	  4		2	; slot4 = "[^/]+"
		 60	[  0]	CALL 	  1	4	3	; slot1, slot2, slot3 = <unknown table>.gmatch(slot2, slot3)
		 61	[  0]	JMP  	  4		6	; 	goto 68
		 62	[  0]	ISEQS	  4		1	; if slot4 == "."
		 63	[  0]	JMP  	  5		2	; 	goto 66
		 64	[  0]	ISNES	  4		0	; if slot4 ~= ".."
		 65	[  0]	JMP  	  5		2	; 	goto 68
		 66	[  0]	KPRI 	  5		1	; slot5 = false
		 67	[  0]	RET1 	  5		2	; return slot5
		 68	[  0]	ITERC	  4	2	3	; slot4, slot5, slot6 = slot1, slot2, slot3; slot4 = slot1(slot2, slot3)
		 69	[  0]	ITERL	  4		-8	; slot3 = slot4; if slot4 != nil goto 62
		 70	[  0]	KPRI 	  1		2	; slot1 = true
		 71	[  0]	RET1 	  1		2	; return slot1
	  8	[  0]	FNEW 	  7		2	; N/A:0-0: 1 args, 2 upvalues, 17 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	LEN  	  1		0	; slot1 = #slot0
		  2	[  0]	KNUM 	  2		0	; slot2 = 16777216
		  3	[  0]	ISGE 	  2		1	; if slot2 >= slot1
		  4	[  0]	JMP  	  1		3	; 	goto 8
		  5	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  6	[  0]	KSTR 	  3		16	; slot3 = "integrity manifest is too large"
		  7	[  0]	CALL 	  1	1	2	;  = uv0"unknown"(slot2)
		  8	[  0]	MOV  	  3		0	; slot3 = slot0
		  9	[  0]	TGETS	  1	0	15	; slot1 = slot0.match
		 10	[  0]	KSTR 	  4		14	; slot4 = "^SBIM001
		([1-9][0-9]*)
		()"
		 11	[  0]	CALL 	  1	3	3	; slot1, slot2 = <unknown table>.match(slot2, slot3)
		 12	[  0]	GGET 	  3		13	; slot3 = _env["tonumber"]
		 13	[  0]	MOV  	  5		1	; slot5 = slot1
		 14	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		 15	[  0]	ISF  	   		3	; if not tonumber
		 16	[  0]	JMP  	  4		3	; 	goto 20
		 17	[  0]	KNUM 	  4		1	; slot4 = 100000
		 18	[  0]	ISGE 	  4		3	; if slot4 >= tonumber
		 19	[  0]	JMP  	  4		3	; 	goto 23
		 20	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 21	[  0]	KSTR 	  6		12	; slot6 = "invalid integrity manifest header"
		 22	[  0]	CALL 	  4	1	2	;  = uv0"unknown"(slot5)
		 23	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 24	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 25	[  0]	KPRI 	  6		0	; slot6 = nil
		 26	[  0]	LEN  	  7		0	; slot7 = #slot0
		 27	[  0]	ISGT 	  2		7	; if slot2 > slot7
		 28	[  0]	JMP  	  7		78	; 	goto 107
		 29	[  0]	LOOP 	  7		77	; Loop start, exit goto 107
		 30	[  0]	MOV  	  9		0	; slot9 = slot0
		 31	[  0]	TGETS	  7	0	11	; slot7 = slot0.find
		 32	[  0]	KSTR 	 10		10	; slot10 = "
		"
		 33	[  0]	MOV  	 11		2	; slot11 = slot2
		 34	[  0]	KPRI 	 12		2	; slot12 = true
		 35	[  0]	CALL 	  7	2	5	; slot7 = <unknown table>.find(slot8, slot9, slot10, slot11)
		 36	[  0]	IST  	   		7	; if <unknown table>.find
		 37	[  0]	JMP  	  8		3	; 	goto 41
		 38	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 39	[  0]	KSTR 	 10		9	; slot10 = "truncated integrity manifest"
		 40	[  0]	CALL 	  8	1	2	;  = uv0"unknown"(slot9)
		 41	[  0]	MOV  	 10		0	; slot10 = slot0
		 42	[  0]	TGETS	  8	0	8	; slot8 = slot0.sub
		 43	[  0]	MOV  	 11		2	; slot11 = slot2
		 44	[  0]	SUBVN	 12	7	2	; slot12 = <unknown table>.find - 1
		 45	[  0]	CALL 	  8	2	4	; slot8 = <unknown table>.sub(slot9, slot10, slot11)
		 46	[  0]	MOV  	 10		8	; slot10 = <unknown table>.sub
		 47	[  0]	TGETS	  8	8	15	; slot8 = <unknown table>.sub.match
		 48	[  0]	KSTR 	 11		7	; slot11 = "^([0-9a-f]+)	([0-9]+)	(.+)$"
		 49	[  0]	CALL 	  8	4	3	; slot8, slot9, slot10 = <unknown table>.sub.match(slot9, <unknown table>.sub)
		 50	[  0]	GGET 	 11		13	; slot11 = _env["tonumber"]
		 51	[  0]	MOV  	 13		9	; slot13 = slot9
		 52	[  0]	CALL 	 11	2	2	; slot11 = tonumber(slot12)
		 53	[  0]	ISF  	   		8	; if not <unknown table>.sub.match
		 54	[  0]	JMP  	 12		31	; 	goto 86
		 55	[  0]	LEN  	 12		8	; slot12 = #<unknown table>.sub.match
		 56	[  0]	ISNEN	 12		3	; if slot12 ~= 64
		 57	[  0]	JMP  	 12		28	; 	goto 86
		 58	[  0]	ISF  	   		11	; if not tonumber
		 59	[  0]	JMP  	 12		26	; 	goto 86
		 60	[  0]	KNUM 	 12		4	; slot12 = 536870912
		 61	[  0]	ISLT 	 12		11	; if slot12 < tonumber
		 62	[  0]	JMP  	 12		23	; 	goto 86
		 63	[  0]	LEN  	 12		9	; slot12 = #slot9
		 64	[  0]	KSHORT	 13		1	; slot13 = 1
		 65	[  0]	ISGE 	 13		12	; if slot13 >= slot12
		 66	[  0]	JMP  	 12		7	; 	goto 74
		 67	[  0]	MOV  	 14		9	; slot14 = slot9
		 68	[  0]	TGETS	 12	9	8	; slot12 = slot9.sub
		 69	[  0]	KSHORT	 15		1	; slot15 = 1
		 70	[  0]	KSHORT	 16		1	; slot16 = 1
		 71	[  0]	CALL 	 12	2	4	; slot12 = <unknown table>.sub(slot13, slot14, slot15)
		 72	[  0]	ISEQS	 12		6	; if <unknown table>.sub == "0"
		 73	[  0]	JMP  	 12		12	; 	goto 86
		 74	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		 75	[  0]	MOV  	 14		10	; slot14 = <unknown table>.sub
		 76	[  0]	CALL 	 12	2	2	; slot12 = uv1"unknown"(slot13)
		 77	[  0]	ISF  	   		12	; if not uv1"unknown"
		 78	[  0]	JMP  	 12		7	; 	goto 86
		 79	[  0]	TGETV	 12	5	10	; slot12 = slot5[<unknown table>.sub]
		 80	[  0]	IST  	   		12	; if slot12
		 81	[  0]	JMP  	 13		4	; 	goto 86
		 82	[  0]	ISF  	   		6	; if not slot6
		 83	[  0]	JMP  	 12		5	; 	goto 89
		 84	[  0]	ISGT 	 10		6	; if <unknown table>.sub > slot6
		 85	[  0]	JMP  	 12		3	; 	goto 89
		 86	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		 87	[  0]	KSTR 	 14		5	; slot14 = "invalid integrity manifest entry"
		 88	[  0]	CALL 	 12	1	2	;  = uv0"unknown"(slot13)
		 89	[  0]	KPRI 	 12		2	; slot12 = true
		 90	[  0]	TSETV	 12	5	10	; slot5[<unknown table>.sub] = slot12
		 91	[  0]	MOV  	  6		10	; slot6 = <unknown table>.sub
		 92	[  0]	LEN  	 12		4	; slot12 = #slot4
		 93	[  0]	ADDVN	 12	12	2	; slot12 = slot12 + 1
		 94	[  0]	TDUP 	 13		4	; slot13 = copy table#k4
		 95	[  0]	TSETS	 10	13	3	; slot13.path = <unknown table>.sub
		 96	[  0]	TSETS	  8	13	2	; slot13.digest = <unknown table>.sub.match
		 97	[  0]	TSETS	 11	13	1	; slot13.size = tonumber
		 98	[  0]	TSETV	 13	4	12	; slot4[slot12] = slot13
		 99	[  0]	LEN  	 12		4	; slot12 = #slot4
		100	[  0]	ISGE 	  3		12	; if tonumber >= slot12
		101	[  0]	JMP  	 12		3	; 	goto 105
		102	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		103	[  0]	KSTR 	 14		0	; slot14 = "protected file count mismatch"
		104	[  0]	CALL 	 12	1	2	;  = uv0"unknown"(slot13)
		105	[  0]	ADDVN	  2	7	2	; slot2 = <unknown table>.find + 1
		106	[  0]	JMP  	  7		-81	; 	goto 26
		107	[  0]	LEN  	  7		4	; slot7 = #slot4
		108	[  0]	ISEQV	  7		3	; if slot7 == tonumber
		109	[  0]	JMP  	  7		3	; 	goto 113
		110	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		111	[  0]	KSTR 	  9		0	; slot9 = "protected file count mismatch"
		112	[  0]	CALL 	  7	1	2	;  = uv0"unknown"(<unknown table>.sub.match)
		113	[  0]	RET1 	  4		2	; return slot4
	  9	[  0]	FNEW 	  8		0	; N/A:0-0: 0 args, 6 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		2	; 	goto 6
		  4	[  0]	KPRI 	  0		2	; slot0 = true
		  5	[  0]	RET1 	  0		2	; return slot0
		  6	[  0]	GGET 	  0		11	; slot0 = _env["type"]
		  7	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  8	[  0]	CALL 	  0	2	2	; slot0 = type(slot1)
		  9	[  0]	ISEQS	  0		10	; if slot0 == "string"
		 10	[  0]	JMP  	  0		3	; 	goto 14
		 11	[  0]	USETP	  0		2	; uv0"unknwon" = true
		 12	[  0]	KPRI 	  0		2	; slot0 = true
		 13	[  0]	RET1 	  0		2	; return slot0
		 14	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 15	[  0]	MOV  	  2		0	; slot2 = uv1"unknown"
		 16	[  0]	TGETS	  0	0	9	; slot0 = uv1"unknown".match
		 17	[  0]	KSTR 	  3		8	; slot3 = "^[0-9a-f][0-9a-f]+$"
		 18	[  0]	CALL 	  0	2	3	; slot0 = uv1"unknown".match(slot1, uv1"unknown")
		 19	[  0]	ISF  	   		0	; if not slot0
		 20	[  0]	JMP  	  0		4	; 	goto 25
		 21	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 22	[  0]	LEN  	  0		0	; slot0 = #uv1"unknown"
		 23	[  0]	ISEQN	  0		0	; if slot0 == 64
		 24	[  0]	JMP  	  0		3	; 	goto 28
		 25	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
		 26	[  0]	KSTR 	  2		7	; slot2 = "invalid embedded manifest hash"
		 27	[  0]	CALL 	  0	1	2	;  = uv2"unknown"(slot1)
		 28	[  0]	UGET 	  0		3	; slot0 = uv3"unknwon"
		 29	[  0]	KSTR 	  2		6	; slot2 = "src/release_integrity_manifest.bin"
		 30	[  0]	CALL 	  0	2	2	; slot0 = uv3"unknown"(slot1)
		 31	[  0]	UGET 	  1		4	; slot1 = uv4"unknwon"
		 32	[  0]	MOV  	  3		0	; slot3 = slot0
		 33	[  0]	CALL 	  1	2	2	; slot1 = uv4"unknown"(slot2)
		 34	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 35	[  0]	ISEQV	  1		2	; if slot1 == uv1"unknown"
		 36	[  0]	JMP  	  1		3	; 	goto 40
		 37	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 38	[  0]	KSTR 	  3		5	; slot3 = "integrity manifest mismatch"
		 39	[  0]	CALL 	  1	1	2	;  = uv2"unknown"(uv1"unknown")
		 40	[  0]	UGET 	  1		5	; slot1 = uv5"unknwon"
		 41	[  0]	MOV  	  3		0	; slot3 = slot0
		 42	[  0]	CALL 	  1	2	2	; slot1 = uv5"unknown"(slot2)
		 43	[  0]	GGET 	  2		4	; slot2 = _env["ipairs"]
		 44	[  0]	MOV  	  4		1	; slot4 = slot1
		 45	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
		 46	[  0]	JMP  	  5		18	; 	goto 65
		 47	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		 48	[  0]	TGETS	  9	6	3	; slot9 = slot6.path
		 49	[  0]	CALL 	  7	2	2	; slot7 = uv3"unknown"(slot8)
		 50	[  0]	LEN  	  8		7	; slot8 = #uv3"unknown"
		 51	[  0]	TGETS	  9	6	2	; slot9 = slot6.size
		 52	[  0]	ISNEV	  8		9	; if slot8 ~= <unknown table>.size
		 53	[  0]	JMP  	  8		6	; 	goto 60
		 54	[  0]	UGET 	  8		4	; slot8 = uv4"unknwon"
		 55	[  0]	MOV  	 10		7	; slot10 = uv3"unknown"
		 56	[  0]	CALL 	  8	2	2	; slot8 = uv4"unknown"(<unknown table>.size)
		 57	[  0]	TGETS	  9	6	1	; slot9 = slot6.digest
		 58	[  0]	ISEQV	  8		9	; if uv4"unknown" == <unknown table>.digest
		 59	[  0]	JMP  	  8		5	; 	goto 65
		 60	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
		 61	[  0]	KSTR 	 10		0	; slot10 = "modified file: "
		 62	[  0]	TGETS	 11	6	3	; slot11 = slot6.path
		 63	[  0]	CAT  	 10	10	11	; slot10 = slot10 .. <unknown table>.path
		 64	[  0]	CALL 	  8	1	2	;  = uv2"unknown"(<unknown table>.digest)
		 65	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5, slot6 = slot2(slot3, slot4)
		 66	[  0]	ITERL	  5		-20	; slot4 = slot5; if slot5 != nil goto 47
		 67	[  0]	USETP	  0		2	; uv0"unknwon" = true
		 68	[  0]	KPRI 	  2		2	; slot2 = true
		 69	[  0]	RET1 	  2		2	; return slot2
	 10	[  0]	TSETS	  8	0	1	; slot0.verify = slot8
	 11	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 12
	 12	[  0]	RET1 	  0		2	; return slot0
	
