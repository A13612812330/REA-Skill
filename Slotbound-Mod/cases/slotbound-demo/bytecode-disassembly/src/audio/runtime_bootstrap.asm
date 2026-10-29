;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\audio\runtime_bootstrap.lua
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
	  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
	  2	[  0]	KSTR 	  1		4	; slot1 = "--slotbound-audio-runtime"
	  3	[  0]	KNUM 	  2		0	; slot2 = 65001
	  4	[  0]	KSHORT	  3		1	; slot3 = 1
	  5	[  0]	FNEW 	  4		3	; N/A:0-0: 0 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		2	; slot0 = _env["pairs"]
		  2	[  0]	GGET 	  2		1	; slot2 = _env["_G"]
		  3	[  0]	ISF  	   		2	; if not _G
		  4	[  0]	JMP  	  3		4	; 	goto 9
		  5	[  0]	GGET 	  2		1	; slot2 = _env["_G"]
		  6	[  0]	TGETS	  2	2	0	; slot2 = _G.arg
		  7	[  0]	IST  	   		2	; if _G.arg
		  8	[  0]	JMP  	  3		1	; 	goto 10
		  9	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		 10	[  0]	CALL 	  0	4	2	; slot0, slot1, slot2 = pairs(slot1)
		 11	[  0]	ISNEXT	  3		5	; Verify ITERN at 17; goto 17
		 12	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 13	[  0]	ISNEV	  4		5	; if slot4 ~= uv0"unknown"
		 14	[  0]	JMP  	  5		2	; 	goto 17
		 15	[  0]	KPRI 	  5		2	; slot5 = true
		 16	[  0]	RET1 	  5		2	; return slot5
		 17	[  0]	ITERN	  3	3	3	; slot3, slot4, slot5 = slot0, slot1, slot2; slot3, slot4 = slot0(slot1, slot2)
		 18	[  0]	ITERL	  3		-7	; slot2 = slot3; if slot3 != nil goto 12
		 19	[  0]	KPRI 	  0		1	; slot0 = false
		 20	[  0]	RET1 	  0		2	; return slot0
	  6	[  0]	FNEW 	  5		2	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		3	; slot1 = _env["io"]
		  2	[  0]	TGETS	  1	1	2	; slot1 = io.open
		  3	[  0]	MOV  	  3		0	; slot3 = slot0
		  4	[  0]	KSTR 	  4		1	; slot4 = "rb"
		  5	[  0]	CALL 	  1	2	3	; slot1 = io.open(slot2, slot3)
		  6	[  0]	IST  	   		1	; if slot1
		  7	[  0]	JMP  	  2		2	; 	goto 10
		  8	[  0]	KPRI 	  2		1	; slot2 = false
		  9	[  0]	RET1 	  2		2	; return slot2
		 10	[  0]	MOV  	  4		1	; slot4 = slot1
		 11	[  0]	TGETS	  2	1	0	; slot2 = slot1.close
		 12	[  0]	CALL 	  2	1	2	;  = <unknown table>.close(slot3)
		 13	[  0]	KPRI 	  2		2	; slot2 = true
		 14	[  0]	RET1 	  2		2	; return slot2
	  7	[  0]	FNEW 	  6		0	; N/A:0-0: 0 args, 5 upvalues, 23 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		25	; slot0 = _env["love"]
		  2	[  0]	ISF  	   		0	; if not love
		  3	[  0]	JMP  	  1		15	; 	goto 19
		  4	[  0]	GGET 	  0		25	; slot0 = _env["love"]
		  5	[  0]	TGETS	  0	0	24	; slot0 = love.system
		  6	[  0]	ISF  	   		0	; if not love.system
		  7	[  0]	JMP  	  1		11	; 	goto 19
		  8	[  0]	GGET 	  0		25	; slot0 = _env["love"]
		  9	[  0]	TGETS	  0	0	24	; slot0 = love.system
		 10	[  0]	TGETS	  0	0	23	; slot0 = love.system.getOS
		 11	[  0]	ISF  	   		0	; if not love.system.getOS
		 12	[  0]	JMP  	  1		6	; 	goto 19
		 13	[  0]	GGET 	  0		25	; slot0 = _env["love"]
		 14	[  0]	TGETS	  0	0	24	; slot0 = love.system
		 15	[  0]	TGETS	  0	0	23	; slot0 = love.system.getOS
		 16	[  0]	CALL 	  0	2	1	; slot0 = love.system.getOS()
		 17	[  0]	IST  	   		0	; if slot0
		 18	[  0]	JMP  	  1		8	; 	goto 27
		 19	[  0]	GGET 	  0		22	; slot0 = _env["jit"]
		 20	[  0]	ISF  	   		0	; if not jit
		 21	[  0]	JMP  	  1		4	; 	goto 26
		 22	[  0]	GGET 	  0		22	; slot0 = _env["jit"]
		 23	[  0]	TGETS	  0	0	21	; slot0 = jit.os
		 24	[  0]	IST  	   		0	; if jit.os
		 25	[  0]	JMP  	  1		1	; 	goto 27
		 26	[  0]	KPRI 	  0		0	; slot0 = nil
		 27	[  0]	ISNES	  0		20	; if slot0 ~= "Windows"
		 28	[  0]	JMP  	  1		4	; 	goto 33
		 29	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 30	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown"()
		 31	[  0]	ISF  	   		1	; if not slot1
		 32	[  0]	JMP  	  2		2	; 	goto 35
		 33	[  0]	KPRI 	  1		1	; slot1 = false
		 34	[  0]	UCLO 	  0		123	; nil uvs >= r0; goto 158
		 35	[  0]	GGET 	  1		25	; slot1 = _env["love"]
		 36	[  0]	ISF  	   		1	; if not love
		 37	[  0]	JMP  	  2		9	; 	goto 47
		 38	[  0]	GGET 	  1		25	; slot1 = _env["love"]
		 39	[  0]	TGETS	  1	1	19	; slot1 = love.filesystem
		 40	[  0]	ISF  	   		1	; if not love.filesystem
		 41	[  0]	JMP  	  2		5	; 	goto 47
		 42	[  0]	GGET 	  1		25	; slot1 = _env["love"]
		 43	[  0]	TGETS	  1	1	19	; slot1 = love.filesystem
		 44	[  0]	TGETS	  1	1	18	; slot1 = love.filesystem.getSource
		 45	[  0]	IST  	   		1	; if love.filesystem.getSource
		 46	[  0]	JMP  	  1		2	; 	goto 49
		 47	[  0]	KPRI 	  1		1	; slot1 = false
		 48	[  0]	UCLO 	  0		110	; nil uvs >= r0; goto 159
		 49	[  0]	GGET 	  1		25	; slot1 = _env["love"]
		 50	[  0]	TGETS	  1	1	19	; slot1 = love.filesystem
		 51	[  0]	TGETS	  1	1	18	; slot1 = love.filesystem.getSource
		 52	[  0]	CALL 	  1	2	1	; slot1 = love.filesystem.getSource()
		 53	[  0]	ISF  	   		1	; if not slot1
		 54	[  0]	JMP  	  2		2	; 	goto 57
		 55	[  0]	ISNES	  1		17	; if slot1 ~= ""
		 56	[  0]	JMP  	  2		2	; 	goto 59
		 57	[  0]	KPRI 	  2		1	; slot2 = false
		 58	[  0]	UCLO 	  0		101	; nil uvs >= r0; goto 160
		 59	[  0]	MOV  	  2		1	; slot2 = slot1
		 60	[  0]	KSTR 	  3		16	; slot3 = "/love/love.exe"
		 61	[  0]	CAT  	  2	2	3	; slot2 = slot2 .. slot3
		 62	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 63	[  0]	MOV  	  5		2	; slot5 = slot2
		 64	[  0]	CALL 	  3	2	2	; slot3 = uv1"unknown"(slot4)
		 65	[  0]	IST  	   		3	; if uv1"unknown"
		 66	[  0]	JMP  	  3		2	; 	goto 69
		 67	[  0]	KPRI 	  3		1	; slot3 = false
		 68	[  0]	UCLO 	  0		92	; nil uvs >= r0; goto 161
		 69	[  0]	GGET 	  3		15	; slot3 = _env["pcall"]
		 70	[  0]	GGET 	  5		14	; slot5 = _env["require"]
		 71	[  0]	KSTR 	  6		13	; slot6 = "ffi"
		 72	[  0]	CALL 	  3	3	3	; slot3, slot4 = pcall(slot4, require)
		 73	[  0]	ISF  	   		3	; if not slot3
		 74	[  0]	JMP  	  5		2	; 	goto 77
		 75	[  0]	IST  	   		4	; if slot4
		 76	[  0]	JMP  	  5		2	; 	goto 79
		 77	[  0]	KPRI 	  5		1	; slot5 = false
		 78	[  0]	UCLO 	  0		83	; nil uvs >= r0; goto 162
		 79	[  0]	GGET 	  5		15	; slot5 = _env["pcall"]
		 80	[  0]	TGETS	  7	4	12	; slot7 = slot4.cdef
		 81	[  0]	KSTR 	  8		11	; slot8 = "    int32_t __stdcall MultiByteToWideChar(uint32_t codePage,
		      uint32_t flags, const char *input, int32_t inputLength,
		      uint16_t *output, int32_t outputLength);
		    void * __stdcall ShellExecuteW(void *window, const uint16_t *operation,
		      const uint16_t *file, const uint16_t *parameters,
		      const uint16_t *directory, int32_t showCommand);
		  "
		 82	[  0]	CALL 	  5	2	3	; slot5 = pcall(slot6, <unknown table>.cdef)
		 83	[  0]	IST  	   		5	; if pcall
		 84	[  0]	JMP  	  6		2	; 	goto 87
		 85	[  0]	KPRI 	  6		1	; slot6 = false
		 86	[  0]	UCLO 	  0		76	; nil uvs >= r0; goto 163
		 87	[  0]	GGET 	  6		15	; slot6 = _env["pcall"]
		 88	[  0]	TGETS	  8	4	10	; slot8 = slot4.load
		 89	[  0]	KSTR 	  9		9	; slot9 = "kernel32"
		 90	[  0]	CALL 	  6	3	3	; slot6, slot7 = pcall(<unknown table>.cdef, <unknown table>.load)
		 91	[  0]	GGET 	  8		15	; slot8 = _env["pcall"]
		 92	[  0]	TGETS	 10	4	10	; slot10 = slot4.load
		 93	[  0]	KSTR 	 11		8	; slot11 = "shell32"
		 94	[  0]	CALL 	  8	3	3	; slot8, slot9 = pcall(slot9, <unknown table>.load)
		 95	[  0]	ISF  	   		6	; if not pcall
		 96	[  0]	JMP  	 10		6	; 	goto 103
		 97	[  0]	ISF  	   		7	; if not <unknown table>.cdef
		 98	[  0]	JMP  	 10		4	; 	goto 103
		 99	[  0]	ISF  	   		8	; if not pcall
		100	[  0]	JMP  	 10		2	; 	goto 103
		101	[  0]	IST  	   		9	; if slot9
		102	[  0]	JMP  	 10		2	; 	goto 105
		103	[  0]	KPRI 	 10		1	; slot10 = false
		104	[  0]	UCLO 	  0		59	; nil uvs >= r0; goto 164
		105	[  0]	FNEW 	 10		7	; N/A:0-0: 1 args, 3 upvalues, 11 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  1		4	; slot1 = _env["tostring"]
			  2	[  0]	ISTC 	  3		0	; slot3 = slot0; if slot0
			  3	[  0]	JMP  	  3		1	; 	goto 5
			  4	[  0]	KSTR 	  3		3	; slot3 = ""
			  5	[  0]	CALL 	  1	2	2	; slot1 = tostring(slot2)
			  6	[  0]	MOV  	  0		1	; slot0 = slot1
			  7	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  8	[  0]	TGETS	  1	1	2	; slot1 = uv0"unknown".MultiByteToWideChar
			  9	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
			 10	[  0]	KSHORT	  4		0	; slot4 = 0
			 11	[  0]	MOV  	  5		0	; slot5 = slot0
			 12	[  0]	LEN  	  6		0	; slot6 = #slot0
			 13	[  0]	KPRI 	  7		0	; slot7 = nil
			 14	[  0]	KSHORT	  8		0	; slot8 = 0
			 15	[  0]	CALL 	  1	2	7	; slot1 = uv0"unknown".MultiByteToWideChar(slot2, uv1"unknown", slot4, slot5, slot6, slot7)
			 16	[  0]	KSHORT	  2		0	; slot2 = 0
			 17	[  0]	ISGT 	  1		2	; if slot1 > slot2
			 18	[  0]	JMP  	  2		2	; 	goto 21
			 19	[  0]	KPRI 	  2		0	; slot2 = nil
			 20	[  0]	RET1 	  2		2	; return slot2
			 21	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
			 22	[  0]	TGETS	  2	2	1	; slot2 = uv2"unknown".new
			 23	[  0]	KSTR 	  4		0	; slot4 = "uint16_t[?]"
			 24	[  0]	ADDVN	  5	1	0	; slot5 = slot1 + 1
			 25	[  0]	CALL 	  2	2	3	; slot2 = uv2"unknown".new(slot3, slot4)
			 26	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			 27	[  0]	TGETS	  3	3	2	; slot3 = uv0"unknown".MultiByteToWideChar
			 28	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
			 29	[  0]	KSHORT	  6		0	; slot6 = 0
			 30	[  0]	MOV  	  7		0	; slot7 = slot0
			 31	[  0]	LEN  	  8		0	; slot8 = #slot0
			 32	[  0]	MOV  	  9		2	; slot9 = slot2
			 33	[  0]	MOV  	 10		1	; slot10 = slot1
			 34	[  0]	CALL 	  3	2	7	; slot3 = uv0"unknown".MultiByteToWideChar(slot4, uv1"unknown", slot6, slot7, slot8, slot9)
			 35	[  0]	KSHORT	  4		0	; slot4 = 0
			 36	[  0]	ISGT 	  3		4	; if slot3 > slot4
			 37	[  0]	JMP  	  3		2	; 	goto 40
			 38	[  0]	KPRI 	  3		0	; slot3 = nil
			 39	[  0]	RET1 	  3		2	; return slot3
			 40	[  0]	KSHORT	  3		0	; slot3 = 0
			 41	[  0]	TSETV	  3	2	1	; slot2[slot1] = slot3
			 42	[  0]	RET1 	  2		2	; return slot2
		106	[  0]	MOV  	 11		10	; slot11 = slot10
		107	[  0]	KSTR 	 13		6	; slot13 = "open"
		108	[  0]	CALL 	 11	2	2	; slot11 = slot11(slot12)
		109	[  0]	MOV  	 12		10	; slot12 = slot10
		110	[  0]	MOV  	 14		2	; slot14 = slot2
		111	[  0]	CALL 	 12	2	2	; slot12 = slot12(slot13)
		112	[  0]	MOV  	 13		10	; slot13 = slot10
		113	[  0]	KSTR 	 15		5	; slot15 = """
		114	[  0]	MOV  	 16		1	; slot16 = slot1
		115	[  0]	KSTR 	 17		4	; slot17 = "" "
		116	[  0]	UGET 	 18		3	; slot18 = uv3"unknwon"
		117	[  0]	CAT  	 15	15	18	; slot15 = slot15 .. slot16 .. slot17 .. uv3"unknown"
		118	[  0]	CALL 	 13	2	2	; slot13 = slot13(slot14)
		119	[  0]	MOV  	 14		10	; slot14 = slot10
		120	[  0]	MOV  	 16		1	; slot16 = slot1
		121	[  0]	CALL 	 14	2	2	; slot14 = slot14(slot15)
		122	[  0]	ISF  	   		11	; if not slot11
		123	[  0]	JMP  	 15		6	; 	goto 130
		124	[  0]	ISF  	   		12	; if not slot12
		125	[  0]	JMP  	 15		4	; 	goto 130
		126	[  0]	ISF  	   		13	; if not slot13
		127	[  0]	JMP  	 15		2	; 	goto 130
		128	[  0]	IST  	   		14	; if slot14
		129	[  0]	JMP  	 15		3	; 	goto 133
		130	[  0]	KPRI 	 15		1	; slot15 = false
		131	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 132
		132	[  0]	RET1 	 15		2	; return slot15
		133	[  0]	TGETS	 15	9	3	; slot15 = slot9.ShellExecuteW
		134	[  0]	KPRI 	 17		0	; slot17 = nil
		135	[  0]	MOV  	 18		11	; slot18 = slot11
		136	[  0]	MOV  	 19		12	; slot19 = slot12
		137	[  0]	MOV  	 20		13	; slot20 = slot13
		138	[  0]	MOV  	 21		14	; slot21 = slot14
		139	[  0]	UGET 	 22		4	; slot22 = uv4"unknwon"
		140	[  0]	CALL 	 15	2	7	; slot15 = <unknown table>.ShellExecuteW(slot16, slot17, slot18, slot19, slot20, slot21)
		141	[  0]	GGET 	 16		2	; slot16 = _env["tonumber"]
		142	[  0]	TGETS	 18	4	1	; slot18 = slot4.cast
		143	[  0]	KSTR 	 20		0	; slot20 = "intptr_t"
		144	[  0]	MOV  	 21		15	; slot21 = <unknown table>.ShellExecuteW
		145	[  0]	CALL 	 18	0	3	; MULTRES = <unknown table>.cast(slot19, slot20)
		146	[  0]	CALLM	 16	2	0	; slot16 = tonumber(, ...MULTRES)
		147	[  0]	IST  	   		16	; if tonumber
		148	[  0]	JMP  	 17		1	; 	goto 150
		149	[  0]	KSHORT	 16		0	; slot16 = 0
		150	[  0]	KSHORT	 17		32	; slot17 = 32
		151	[  0]	ISLT 	 17		16	; if slot17 < slot16
		152	[  0]	JMP  	 16		2	; 	goto 155
		153	[  0]	KPRI 	 16		1	; slot16 = false
		154	[  0]	JMP  	 17		1	; 	goto 156
		155	[  0]	KPRI 	 16		2	; slot16 = true
		156	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 157
		157	[  0]	RET1 	 16		2	; return slot16
		158	[  0]	RET1 	  1		2	; return slot1
		159	[  0]	RET1 	  1		2	; return slot1
		160	[  0]	RET1 	  2		2	; return slot2
		161	[  0]	RET1 	  3		2	; return slot3
		162	[  0]	RET1 	  5		2	; return pcall
		163	[  0]	RET1 	  6		2	; return pcall
		164	[  0]	RET1 	 10		2	; return slot10
	  8	[  0]	TSETS	  6	0	1	; slot0.relaunchBundledWindowsRuntimeBeforeWindow = slot6
	  9	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 10
	 10	[  0]	RET1 	  0		2	; return slot0
	
