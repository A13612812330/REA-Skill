;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\runtime_diagnostics.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 35 slots
	;;;; constant tables ;;;;
	ktable#35 = [
		[lastHitchRateLog] = -100,
		[hitchWorstUpdate] = 0,
		[hitchWorstPresent] = 0,
		[hitchWorstDraw] = 0,
		[hitchWorstSeconds] = 0,
		[hitchCount] = 0,
		[installed] = false,
		[lastRegressionRatio] = 0,
		[lastRegressionLog] = -100,
		[lastSlowPresentLog] = -100,
		[lastSlowDrawLog] = -100,
		[lastSlowUpdateLog] = -100,
		[lastLowFpsLog] = -100,
		[lastStallLog] = -100,
		[slowSeconds] = 0,
		[lastPresentSeconds] = 0,
		[lastDrawSeconds] = 0,
		[lastUpdateSeconds] = 0,
		[sessionWritten] = false,
		[earlyHandlerInstalled] = false,
		]
	
	
	;;;; instructions ;;;;
	  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
	  2	[  0]	TDUP 	  1		35	; slot1 = copy table#k35
	  3	[  0]	KSHORT	  2		20	; slot2 = 20
	  4	[  0]	KSHORT	  3		10	; slot3 = 10
	  5	[  0]	KSHORT	  4		2	; slot4 = 2
	  6	[  0]	KNUM 	  5		0	; slot5 = 0.014285714285714285
	  7	[  0]	KSHORT	  6		5	; slot6 = 5
	  8	[  0]	KSHORT	  7		60	; slot7 = 60
	  9	[  0]	KNUM 	  8		1	; slot8 = 2.5
	 10	[  0]	KNUM 	  9		2	; slot9 = 0.016666666666666666
	 11	[  0]	KSHORT	 10		60	; slot10 = 60
	 12	[  0]	KSHORT	 11		6	; slot11 = 6
	 13	[  0]	KSHORT	 12		300	; slot12 = 300
	 14	[  0]	FNEW 	 13		34	; N/A:0-0: 0 args, 0 upvalues, 5 slots
		
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
	 15	[  0]	FNEW 	 14		33	; N/A:0-0: 0 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		4	; slot0 = _env["pcall"]
		  2	[  0]	GGET 	  2		3	; slot2 = _env["os"]
		  3	[  0]	TGETS	  2	2	2	; slot2 = os.date
		  4	[  0]	KSTR 	  3		1	; slot3 = "%Y-%m-%d %H:%M:%S"
		  5	[  0]	CALL 	  0	3	3	; slot0, slot1 = pcall(slot1, os.date)
		  6	[  0]	ISF  	   		0	; if not slot0
		  7	[  0]	JMP  	  2		2	; 	goto 10
		  8	[  0]	ISTC 	  2		1	; slot2 = slot1; if slot1
		  9	[  0]	JMP  	  2		1	; 	goto 11
		 10	[  0]	KSTR 	  2		0	; slot2 = "unknown-time"
		 11	[  0]	RET1 	  2		2	; return slot2
	 16	[  0]	FNEW 	 15		32	; N/A:0-0: 2 args, 0 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		5	; slot2 = _env["tostring"]
		  2	[  0]	ISTC 	  4		0	; slot4 = slot0; if slot0
		  3	[  0]	JMP  	  4		1	; 	goto 5
		  4	[  0]	KSTR 	  4		4	; slot4 = ""
		  5	[  0]	CALL 	  2	2	2	; slot2 = tostring(slot3)
		  6	[  0]	MOV  	  0		2	; slot0 = slot2
		  7	[  0]	ISNES	  0		4	; if slot0 ~= ""
		  8	[  0]	JMP  	  2		1	; 	goto 10
		  9	[  0]	RET1 	  1		2	; return slot1
		 10	[  0]	MOV  	  4		0	; slot4 = slot0
		 11	[  0]	TGETS	  2	0	3	; slot2 = slot0.sub
		 12	[  0]	KSHORT	  5		65535	; slot5 = 65535
		 13	[  0]	CALL 	  2	2	3	; slot2 = <unknown table>.sub(slot3, slot4)
		 14	[  0]	ISEQS	  2		2	; if slot2 == "/"
		 15	[  0]	JMP  	  3		2	; 	goto 18
		 16	[  0]	ISNES	  2		1	; if slot2 ~= "\"
		 17	[  0]	JMP  	  3		4	; 	goto 22
		 18	[  0]	MOV  	  3		0	; slot3 = slot0
		 19	[  0]	MOV  	  4		1	; slot4 = slot1
		 20	[  0]	CAT  	  3	3	4	; slot3 = slot3 .. slot4
		 21	[  0]	RET1 	  3		2	; return slot3
		 22	[  0]	MOV  	  5		0	; slot5 = slot0
		 23	[  0]	TGETS	  3	0	0	; slot3 = slot0.find
		 24	[  0]	KSTR 	  6		1	; slot6 = "\"
		 25	[  0]	KSHORT	  7		1	; slot7 = 1
		 26	[  0]	KPRI 	  8		2	; slot8 = true
		 27	[  0]	CALL 	  3	2	5	; slot3 = <unknown table>.find(slot4, slot5, slot6, slot7)
		 28	[  0]	ISF  	   		3	; if not slot3
		 29	[  0]	JMP  	  4		2	; 	goto 32
		 30	[  0]	KSTR 	  3		1	; slot3 = "\"
		 31	[  0]	JMP  	  4		1	; 	goto 33
		 32	[  0]	KSTR 	  3		2	; slot3 = "/"
		 33	[  0]	MOV  	  4		0	; slot4 = slot0
		 34	[  0]	MOV  	  5		3	; slot5 = slot3
		 35	[  0]	MOV  	  6		1	; slot6 = slot1
		 36	[  0]	CAT  	  4	4	6	; slot4 = slot4 .. slot5 .. slot6
		 37	[  0]	RET1 	  4		2	; return slot4
	 17	[  0]	FNEW 	 16		31	; N/A:0-0: 1 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		7	; slot1 = _env["type"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  4	[  0]	ISNES	  1		6	; if slot1 ~= "string"
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	ISNES	  0		5	; if slot0 ~= ""
		  7	[  0]	JMP  	  1		2	; 	goto 10
		  8	[  0]	KPRI 	  1		1	; slot1 = false
		  9	[  0]	RET1 	  1		2	; return slot1
		 10	[  0]	GGET 	  1		4	; slot1 = _env["io"]
		 11	[  0]	ISF  	   		1	; if not io
		 12	[  0]	JMP  	  2		4	; 	goto 17
		 13	[  0]	GGET 	  1		4	; slot1 = _env["io"]
		 14	[  0]	TGETS	  1	1	3	; slot1 = io.open
		 15	[  0]	IST  	   		1	; if io.open
		 16	[  0]	JMP  	  1		2	; 	goto 19
		 17	[  0]	KPRI 	  1		1	; slot1 = false
		 18	[  0]	RET1 	  1		2	; return slot1
		 19	[  0]	GGET 	  1		4	; slot1 = _env["io"]
		 20	[  0]	TGETS	  1	1	3	; slot1 = io.open
		 21	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 22	[  0]	MOV  	  5		0	; slot5 = slot0
		 23	[  0]	KSTR 	  6		2	; slot6 = "main.lua"
		 24	[  0]	CALL 	  3	2	3	; slot3 = uv0"unknown"(slot4, slot5)
		 25	[  0]	KSTR 	  4		1	; slot4 = "r"
		 26	[  0]	CALL 	  1	2	3	; slot1 = io.open(slot2, slot3)
		 27	[  0]	IST  	   		1	; if slot1
		 28	[  0]	JMP  	  2		2	; 	goto 31
		 29	[  0]	KPRI 	  2		1	; slot2 = false
		 30	[  0]	RET1 	  2		2	; return slot2
		 31	[  0]	MOV  	  4		1	; slot4 = slot1
		 32	[  0]	TGETS	  2	1	0	; slot2 = slot1.close
		 33	[  0]	CALL 	  2	1	2	;  = <unknown table>.close(slot3)
		 34	[  0]	KPRI 	  2		2	; slot2 = true
		 35	[  0]	RET1 	  2		2	; return slot2
	 18	[  0]	FNEW 	 17		30	; N/A:0-0: 0 args, 2 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		ktable#3 = [
			#1: -2,
			#2: -1,
			#3: 0,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		16	; slot0 = _env["love"]
		  2	[  0]	ISF  	   		0	; if not love
		  3	[  0]	JMP  	  1		2	; 	goto 6
		  4	[  0]	GGET 	  0		16	; slot0 = _env["love"]
		  5	[  0]	TGETS	  0	0	15	; slot0 = love.filesystem
		  6	[  0]	KPRI 	  1		1	; slot1 = false
		  7	[  0]	ISF  	   		0	; if not love.filesystem
		  8	[  0]	JMP  	  2		13	; 	goto 22
		  9	[  0]	TGETS	  2	0	14	; slot2 = love.filesystem.isFused
		 10	[  0]	ISF  	   		2	; if not love.filesystem.isFused
		 11	[  0]	JMP  	  3		10	; 	goto 22
		 12	[  0]	GGET 	  2		13	; slot2 = _env["pcall"]
		 13	[  0]	TGETS	  4	0	14	; slot4 = love.filesystem.isFused
		 14	[  0]	CALL 	  2	3	2	; slot2, slot3 = pcall(slot3)
		 15	[  0]	ISFC 	  1		2	; slot1 = slot2; if not slot2
		 16	[  0]	JMP  	  4		5	; 	goto 22
		 17	[  0]	ISEQP	  3		2	; if slot3 == true
		 18	[  0]	JMP  	  4		2	; 	goto 21
		 19	[  0]	KPRI 	  1		1	; slot1 = false
		 20	[  0]	JMP  	  4		1	; 	goto 22
		 21	[  0]	KPRI 	  1		2	; slot1 = true
		 22	[  0]	ISF  	   		0	; if not love.filesystem
		 23	[  0]	JMP  	  2		19	; 	goto 43
		 24	[  0]	IST  	   		1	; if slot1
		 25	[  0]	JMP  	  2		17	; 	goto 43
		 26	[  0]	TGETS	  2	0	12	; slot2 = love.filesystem.getSource
		 27	[  0]	ISF  	   		2	; if not love.filesystem.getSource
		 28	[  0]	JMP  	  3		14	; 	goto 43
		 29	[  0]	GGET 	  2		13	; slot2 = _env["pcall"]
		 30	[  0]	TGETS	  4	0	12	; slot4 = love.filesystem.getSource
		 31	[  0]	CALL 	  2	3	2	; slot2, slot3 = pcall(slot3)
		 32	[  0]	ISF  	   		2	; if not slot2
		 33	[  0]	JMP  	  4		9	; 	goto 43
		 34	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 35	[  0]	MOV  	  6		3	; slot6 = slot3
		 36	[  0]	CALL 	  4	2	2	; slot4 = uv0"unknown"(slot5)
		 37	[  0]	ISF  	   		4	; if not uv0"unknown"
		 38	[  0]	JMP  	  5		4	; 	goto 43
		 39	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 40	[  0]	MOV  	  6		3	; slot6 = slot3
		 41	[  0]	KSTR 	  7		11	; slot7 = "errorlog.txt"
		 42	[  0]	CALLT	  4		3	; return uv1"unknown"(slot5, slot6)
		 43	[  0]	ISF  	   		0	; if not love.filesystem
		 44	[  0]	JMP  	  2		19	; 	goto 64
		 45	[  0]	TGETS	  2	0	10	; slot2 = love.filesystem.getSourceBaseDirectory
		 46	[  0]	ISF  	   		2	; if not love.filesystem.getSourceBaseDirectory
		 47	[  0]	JMP  	  3		16	; 	goto 64
		 48	[  0]	GGET 	  2		13	; slot2 = _env["pcall"]
		 49	[  0]	TGETS	  4	0	10	; slot4 = love.filesystem.getSourceBaseDirectory
		 50	[  0]	CALL 	  2	3	2	; slot2, slot3 = pcall(slot3)
		 51	[  0]	ISF  	   		2	; if not slot2
		 52	[  0]	JMP  	  4		11	; 	goto 64
		 53	[  0]	GGET 	  4		9	; slot4 = _env["type"]
		 54	[  0]	MOV  	  6		3	; slot6 = slot3
		 55	[  0]	CALL 	  4	2	2	; slot4 = type(slot5)
		 56	[  0]	ISNES	  4		8	; if type ~= "string"
		 57	[  0]	JMP  	  4		6	; 	goto 64
		 58	[  0]	ISEQS	  3		7	; if slot3 == ""
		 59	[  0]	JMP  	  4		4	; 	goto 64
		 60	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 61	[  0]	MOV  	  6		3	; slot6 = slot3
		 62	[  0]	KSTR 	  7		11	; slot7 = "errorlog.txt"
		 63	[  0]	CALLT	  4		3	; return uv1"unknown"(slot5, slot6)
		 64	[  0]	GGET 	  2		9	; slot2 = _env["type"]
		 65	[  0]	GGET 	  4		6	; slot4 = _env["arg"]
		 66	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		 67	[  0]	ISNES	  2		5	; if slot2 ~= "table"
		 68	[  0]	JMP  	  2		27	; 	goto 96
		 69	[  0]	GGET 	  2		4	; slot2 = _env["ipairs"]
		 70	[  0]	TDUP 	  4		3	; slot4 = copy table#k3
		 71	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
		 72	[  0]	JMP  	  5		21	; 	goto 94
		 73	[  0]	GGET 	  7		6	; slot7 = _env["arg"]
		 74	[  0]	TGETV	  7	7	6	; slot7 = arg[slot6]
		 75	[  0]	GGET 	  8		9	; slot8 = _env["type"]
		 76	[  0]	MOV  	 10		7	; slot10 = slot7
		 77	[  0]	CALL 	  8	2	2	; slot8 = type(slot9)
		 78	[  0]	ISNES	  8		8	; if type ~= "string"
		 79	[  0]	JMP  	  8		14	; 	goto 94
		 80	[  0]	ISEQS	  7		7	; if slot7 == ""
		 81	[  0]	JMP  	  8		12	; 	goto 94
		 82	[  0]	MOV  	 10		7	; slot10 = slot7
		 83	[  0]	TGETS	  8	7	2	; slot8 = slot7.match
		 84	[  0]	KSTR 	 11		1	; slot11 = "^(.*)[/\][^/\]+$"
		 85	[  0]	CALL 	  8	2	3	; slot8 = <unknown table>.match(slot9, slot10)
		 86	[  0]	ISF  	   		8	; if not <unknown table>.match
		 87	[  0]	JMP  	  9		6	; 	goto 94
		 88	[  0]	ISEQS	  8		7	; if <unknown table>.match == ""
		 89	[  0]	JMP  	  9		4	; 	goto 94
		 90	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 91	[  0]	MOV  	 11		8	; slot11 = <unknown table>.match
		 92	[  0]	KSTR 	 12		11	; slot12 = "errorlog.txt"
		 93	[  0]	CALLT	  9		3	; return uv1"unknown"(slot10, <unknown table>.match)
		 94	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5, slot6 = slot2(slot3, slot4)
		 95	[  0]	ITERL	  5		-23	; slot4 = slot5; if slot5 != nil goto 73
		 96	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 97	[  0]	KSTR 	  4		0	; slot4 = "."
		 98	[  0]	KSTR 	  5		11	; slot5 = "errorlog.txt"
		 99	[  0]	CALLT	  2		3	; return uv1"unknown"(slot3, slot4)
	 19	[  0]	FNEW 	 18		29	; N/A:0-0: 1 args, 1 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	3	; slot1 = uv0"unknown".logFile
		  3	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  4	[  0]	KPRI 	  3		0	; slot3 = nil
		  5	[  0]	TSETS	  3	2	3	; uv0"unknown".logFile = slot3
		  6	[  0]	IST  	   		1	; if uv0"unknown".logFile
		  7	[  0]	JMP  	  2		1	; 	goto 9
		  8	[  0]	RET0 	  0		1	; return
		  9	[  0]	ISF  	   		0	; if not slot0
		 10	[  0]	JMP  	  2		4	; 	goto 15
		 11	[  0]	GGET 	  2		2	; slot2 = _env["pcall"]
		 12	[  0]	TGETS	  4	1	1	; slot4 = uv0"unknown".logFile.flush
		 13	[  0]	MOV  	  5		1	; slot5 = uv0"unknown".logFile
		 14	[  0]	CALL 	  2	1	3	;  = pcall(slot3, uv0"unknown".logFile.flush)
		 15	[  0]	GGET 	  2		2	; slot2 = _env["pcall"]
		 16	[  0]	TGETS	  4	1	0	; slot4 = uv0"unknown".logFile.close
		 17	[  0]	MOV  	  5		1	; slot5 = uv0"unknown".logFile
		 18	[  0]	CALL 	  2	1	3	;  = pcall(slot3, uv0"unknown".logFile.close)
		 19	[  0]	RET0 	  0		1	; return
	 20	[  0]	FNEW 	 19		28	; N/A:0-0: 2 args, 3 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		10	; slot2 = _env["tostring"]
		  2	[  0]	ISTC 	  4		0	; slot4 = slot0; if slot0
		  3	[  0]	JMP  	  4		1	; 	goto 5
		  4	[  0]	KSTR 	  4		9	; slot4 = ""
		  5	[  0]	CALL 	  2	2	2	; slot2 = tostring(slot3)
		  6	[  0]	MOV  	  0		2	; slot0 = slot2
		  7	[  0]	ISNES	  0		9	; if slot0 ~= ""
		  8	[  0]	JMP  	  2		2	; 	goto 11
		  9	[  0]	KPRI 	  2		2	; slot2 = true
		 10	[  0]	UCLO 	  0		52	; nil uvs >= r0; goto 63
		 11	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 12	[  0]	TGETS	  2	2	8	; slot2 = uv0"unknown".logPath
		 13	[  0]	IST  	   		2	; if uv0"unknown".logPath
		 14	[  0]	JMP  	  2		4	; 	goto 19
		 15	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 16	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 17	[  0]	CALL 	  3	2	1	; slot3 = uv1"unknown"()
		 18	[  0]	TSETS	  3	2	8	; uv0"unknown".logPath = uv1"unknown"
		 19	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 20	[  0]	TGETS	  2	2	7	; slot2 = uv0"unknown".logFile
		 21	[  0]	IST  	   		2	; if uv0"unknown".logFile
		 22	[  0]	JMP  	  3		24	; 	goto 47
		 23	[  0]	GGET 	  3		6	; slot3 = _env["io"]
		 24	[  0]	ISF  	   		3	; if not io
		 25	[  0]	JMP  	  4		21	; 	goto 47
		 26	[  0]	GGET 	  3		6	; slot3 = _env["io"]
		 27	[  0]	TGETS	  3	3	5	; slot3 = io.open
		 28	[  0]	ISF  	   		3	; if not io.open
		 29	[  0]	JMP  	  4		17	; 	goto 47
		 30	[  0]	GGET 	  3		6	; slot3 = _env["io"]
		 31	[  0]	TGETS	  3	3	5	; slot3 = io.open
		 32	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 33	[  0]	TGETS	  5	5	8	; slot5 = uv0"unknown".logPath
		 34	[  0]	KSTR 	  6		4	; slot6 = "ab"
		 35	[  0]	CALL 	  3	2	3	; slot3 = io.open(slot4, uv0"unknown".logPath)
		 36	[  0]	MOV  	  2		3	; slot2 = slot3
		 37	[  0]	ISF  	   		2	; if not slot2
		 38	[  0]	JMP  	  3		8	; 	goto 47
		 39	[  0]	GGET 	  3		3	; slot3 = _env["pcall"]
		 40	[  0]	TGETS	  5	2	2	; slot5 = slot2.setvbuf
		 41	[  0]	MOV  	  6		2	; slot6 = slot2
		 42	[  0]	KSTR 	  7		1	; slot7 = "full"
		 43	[  0]	KNUM 	  8		0	; slot8 = 65536
		 44	[  0]	CALL 	  3	1	5	;  = pcall(slot4, <unknown table>.setvbuf, slot6, slot7)
		 45	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 46	[  0]	TSETS	  2	3	7	; uv0"unknown".logFile = slot2
		 47	[  0]	ISF  	   		2	; if not slot2
		 48	[  0]	JMP  	  3		11	; 	goto 60
		 49	[  0]	GGET 	  3		3	; slot3 = _env["pcall"]
		 50	[  0]	FNEW 	  5		0	; N/A:0-0: 0 args, 3 upvalues, 6 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  0		2	; slot0 = _env["assert"]
			  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  3	[  0]	MOV  	  4		2	; slot4 = uv0"unknown"
			  4	[  0]	TGETS	  2	2	1	; slot2 = uv0"unknown".write
			  5	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
			  6	[  0]	CALL 	  2	0	3	; MULTRES = uv0"unknown".write(slot3, uv0"unknown")
			  7	[  0]	CALLM	  0	1	0	;  = assert(, ...MULTRES)
			  8	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
			  9	[  0]	ISF  	   		0	; if not uv2"unknown"
			 10	[  0]	JMP  	  1		6	; 	goto 17
			 11	[  0]	GGET 	  0		2	; slot0 = _env["assert"]
			 12	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			 13	[  0]	MOV  	  4		2	; slot4 = uv0"unknown"
			 14	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".flush
			 15	[  0]	CALL 	  2	0	2	; MULTRES = uv0"unknown".flush(slot3)
			 16	[  0]	CALLM	  0	1	0	;  = assert(, ...MULTRES)
			 17	[  0]	RET0 	  0		1	; return
		 51	[  0]	CALL 	  3	2	2	; slot3 = pcall(slot4)
		 52	[  0]	ISF  	   		3	; if not pcall
		 53	[  0]	JMP  	  4		3	; 	goto 57
		 54	[  0]	KPRI 	  4		2	; slot4 = true
		 55	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 56
		 56	[  0]	RET1 	  4		2	; return slot4
		 57	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 58	[  0]	KPRI 	  6		1	; slot6 = false
		 59	[  0]	CALL 	  4	1	2	;  = uv2"unknown"(slot5)
		 60	[  0]	KPRI 	  3		1	; slot3 = false
		 61	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 62
		 62	[  0]	RET1 	  3		2	; return slot3
		 63	[  0]	RET1 	  2		2	; return slot2
	 21	[  0]	FNEW 	 20		27	; N/A:0-0: 1 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		1	; slot1 = _env["type"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  4	[  0]	ISNES	  1		0	; if slot1 ~= "table"
		  5	[  0]	JMP  	  1		3	; 	goto 9
		  6	[  0]	LEN  	  1		0	; slot1 = #slot0
		  7	[  0]	IST  	   		1	; if slot1
		  8	[  0]	JMP  	  2		1	; 	goto 10
		  9	[  0]	KSHORT	  1		0	; slot1 = 0
		 10	[  0]	RET1 	  1		2	; return slot1
	 22	[  0]	FNEW 	 21		26	; N/A:0-0: 1+ args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		2	; slot1 = _env["type"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  4	[  0]	ISEQS	  1		1	; if slot1 == "function"
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	KPRI 	  1		0	; slot1 = nil
		  7	[  0]	RET1 	  1		2	; return slot1
		  8	[  0]	GGET 	  1		0	; slot1 = _env["pcall"]
		  9	[  0]	MOV  	  3		0	; slot3 = slot0
		 10	[  0]	VARG 	  4	0	1	; MULTRES = ...
		 11	[  0]	CALLM	  1	6	1	; slot1, slot2, slot3, slot4, slot5 = pcall(slot2, ...MULTRES)
		 12	[  0]	ISF  	   		1	; if not slot1
		 13	[  0]	JMP  	  6		5	; 	goto 19
		 14	[  0]	MOV  	  6		2	; slot6 = slot2
		 15	[  0]	MOV  	  7		3	; slot7 = slot3
		 16	[  0]	MOV  	  8		4	; slot8 = slot4
		 17	[  0]	MOV  	  9		5	; slot9 = slot5
		 18	[  0]	RET  	  6		5	; return slot6, slot7, slot8, slot9
		 19	[  0]	KPRI 	  6		0	; slot6 = nil
		 20	[  0]	RET1 	  6		2	; return slot6
	 23	[  0]	FNEW 	 22		25	; N/A:0-0: 1 args, 3 upvalues, 24 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		91	; slot1 = _env["rawget"]
		  2	[  0]	GGET 	  3		90	; slot3 = _env["_G"]
		  3	[  0]	KSTR 	  4		89	; slot4 = "battlefield"
		  4	[  0]	CALL 	  1	2	3	; slot1 = rawget(slot2, _G)
		  5	[  0]	GGET 	  2		91	; slot2 = _env["rawget"]
		  6	[  0]	GGET 	  4		90	; slot4 = _env["_G"]
		  7	[  0]	KSTR 	  5		88	; slot5 = "ui"
		  8	[  0]	CALL 	  2	2	3	; slot2 = rawget(slot3, _G)
		  9	[  0]	GGET 	  3		91	; slot3 = _env["rawget"]
		 10	[  0]	GGET 	  5		90	; slot5 = _env["_G"]
		 11	[  0]	KSTR 	  6		87	; slot6 = "phase"
		 12	[  0]	CALL 	  3	2	3	; slot3 = rawget(_G, _G)
		 13	[  0]	ISF  	   		1	; if not slot1
		 14	[  0]	JMP  	  4		3	; 	goto 18
		 15	[  0]	TGETS	  4	1	86	; slot4 = slot1.wave
		 16	[  0]	IST  	   		4	; if <unknown table>.wave
		 17	[  0]	JMP  	  5		1	; 	goto 19
		 18	[  0]	KPRI 	  4		0	; slot4 = nil
		 19	[  0]	ISFC 	  5		2	; slot5 = slot2; if not slot2
		 20	[  0]	JMP  	  5		10	; 	goto 31
		 21	[  0]	TGETS	  5	2	85	; slot5 = slot2.pauseOverlayState
		 22	[  0]	ISF  	   		5	; if not <unknown table>.pauseOverlayState
		 23	[  0]	JMP  	  6		7	; 	goto 31
		 24	[  0]	TGETS	  5	2	85	; slot5 = slot2.pauseOverlayState
		 25	[  0]	TGETS	  5	5	84	; slot5 = <unknown table>.pauseOverlayState.active
		 26	[  0]	ISEQP	  5		2	; if <unknown table>.pauseOverlayState.active == true
		 27	[  0]	JMP  	  5		2	; 	goto 30
		 28	[  0]	KPRI 	  5		1	; slot5 = false
		 29	[  0]	JMP  	  6		1	; 	goto 31
		 30	[  0]	KPRI 	  5		2	; slot5 = true
		 31	[  0]	ISFC 	  6		2	; slot6 = slot2; if not slot2
		 32	[  0]	JMP  	  6		10	; 	goto 43
		 33	[  0]	TGETS	  6	2	83	; slot6 = slot2._coreSelect
		 34	[  0]	ISF  	   		6	; if not <unknown table>._coreSelect
		 35	[  0]	JMP  	  7		7	; 	goto 43
		 36	[  0]	TGETS	  6	2	83	; slot6 = slot2._coreSelect
		 37	[  0]	TGETS	  6	6	84	; slot6 = <unknown table>._coreSelect.active
		 38	[  0]	ISEQP	  6		2	; if <unknown table>._coreSelect.active == true
		 39	[  0]	JMP  	  6		2	; 	goto 42
		 40	[  0]	KPRI 	  6		1	; slot6 = false
		 41	[  0]	JMP  	  7		1	; 	goto 43
		 42	[  0]	KPRI 	  6		2	; slot6 = true
		 43	[  0]	ISFC 	  7		1	; slot7 = slot1; if not slot1
		 44	[  0]	JMP  	  7		6	; 	goto 51
		 45	[  0]	TGETS	  7	1	82	; slot7 = slot1.classSelect
		 46	[  0]	ISNEP	  7		0	; if <unknown table>.classSelect ~= nil
		 47	[  0]	JMP  	  7		2	; 	goto 50
		 48	[  0]	KPRI 	  7		1	; slot7 = false
		 49	[  0]	JMP  	  8		1	; 	goto 51
		 50	[  0]	KPRI 	  7		2	; slot7 = true
		 51	[  0]	TNEW 	  8		18	; slot8 = new table( array: 18, dict: 1)
		 52	[  0]	KSTR 	  9		81	; slot9 = "phase="
		 53	[  0]	GGET 	 10		80	; slot10 = _env["tostring"]
		 54	[  0]	ISTC 	 12		3	; slot12 = slot3; if slot3
		 55	[  0]	JMP  	 12		1	; 	goto 57
		 56	[  0]	KSTR 	 12		79	; slot12 = "unknown"
		 57	[  0]	CALL 	 10	2	2	; slot10 = tostring(slot11)
		 58	[  0]	CAT  	  9	9	10	; slot9 = slot9 .. tostring
		 59	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		 60	[  0]	KSTR 	  9		78	; slot9 = "battleMode="
		 61	[  0]	GGET 	 10		80	; slot10 = _env["tostring"]
		 62	[  0]	ISF  	   		1	; if not slot1
		 63	[  0]	JMP  	 12		3	; 	goto 67
		 64	[  0]	TGETS	 12	1	77	; slot12 = slot1.mode
		 65	[  0]	IST  	   		12	; if <unknown table>.mode
		 66	[  0]	JMP  	 13		1	; 	goto 68
		 67	[  0]	KSTR 	 12		76	; slot12 = "none"
		 68	[  0]	CALL 	 10	2	2	; slot10 = tostring(slot11)
		 69	[  0]	CAT  	  9	9	10	; slot9 = slot9 .. tostring
		 70	[  0]	TSETB	  9	8	2	; slot8[2] = slot9
		 71	[  0]	KSTR 	  9		75	; slot9 = "wave="
		 72	[  0]	GGET 	 10		80	; slot10 = _env["tostring"]
		 73	[  0]	ISF  	   		4	; if not slot4
		 74	[  0]	JMP  	 12		3	; 	goto 78
		 75	[  0]	TGETS	 12	4	74	; slot12 = slot4.id
		 76	[  0]	IST  	   		12	; if <unknown table>.id
		 77	[  0]	JMP  	 13		1	; 	goto 79
		 78	[  0]	KSHORT	 12		0	; slot12 = 0
		 79	[  0]	CALL 	 10	2	2	; slot10 = tostring(slot11)
		 80	[  0]	CAT  	  9	9	10	; slot9 = slot9 .. tostring
		 81	[  0]	TSETB	  9	8	3	; slot8[3] = slot9
		 82	[  0]	KSTR 	  9		73	; slot9 = "waveActive="
		 83	[  0]	GGET 	 10		80	; slot10 = _env["tostring"]
		 84	[  0]	ISF  	   		4	; if not slot4
		 85	[  0]	JMP  	 12		3	; 	goto 89
		 86	[  0]	TGETS	 12	4	84	; slot12 = slot4.active
		 87	[  0]	ISEQP	 12		2	; if <unknown table>.active == true
		 88	[  0]	JMP  	 12		4	; 	goto 93
		 89	[  0]	KPRI 	 12		1	; slot12 = false
		 90	[  0]	JMP  	 13		3	; 	goto 94
		 91	[  0]	KPRI 	 12		1	; slot12 = false
		 92	[  0]	JMP  	 13		1	; 	goto 94
		 93	[  0]	KPRI 	 12		2	; slot12 = true
		 94	[  0]	CALL 	 10	2	2	; slot10 = tostring(slot11)
		 95	[  0]	CAT  	  9	9	10	; slot9 = slot9 .. tostring
		 96	[  0]	TSETB	  9	8	4	; slot8[4] = slot9
		 97	[  0]	KSTR 	  9		72	; slot9 = "fastForward="
		 98	[  0]	GGET 	 10		80	; slot10 = _env["tostring"]
		 99	[  0]	ISF  	   		1	; if not slot1
		100	[  0]	JMP  	 12		3	; 	goto 104
		101	[  0]	TGETS	 12	1	71	; slot12 = slot1.battleFastForward
		102	[  0]	ISEQP	 12		2	; if <unknown table>.battleFastForward == true
		103	[  0]	JMP  	 12		4	; 	goto 108
		104	[  0]	KPRI 	 12		1	; slot12 = false
		105	[  0]	JMP  	 13		3	; 	goto 109
		106	[  0]	KPRI 	 12		1	; slot12 = false
		107	[  0]	JMP  	 13		1	; 	goto 109
		108	[  0]	KPRI 	 12		2	; slot12 = true
		109	[  0]	CALL 	 10	2	2	; slot10 = tostring(slot11)
		110	[  0]	CAT  	  9	9	10	; slot9 = slot9 .. tostring
		111	[  0]	TSETB	  9	8	5	; slot8[5] = slot9
		112	[  0]	KSTR 	  9		70	; slot9 = "paused="
		113	[  0]	GGET 	 10		80	; slot10 = _env["tostring"]
		114	[  0]	MOV  	 12		5	; slot12 = slot5
		115	[  0]	CALL 	 10	2	2	; slot10 = tostring(slot11)
		116	[  0]	CAT  	  9	9	10	; slot9 = slot9 .. tostring
		117	[  0]	TSETB	  9	8	6	; slot8[6] = slot9
		118	[  0]	KSTR 	  9		69	; slot9 = "coreModal="
		119	[  0]	GGET 	 10		80	; slot10 = _env["tostring"]
		120	[  0]	MOV  	 12		6	; slot12 = slot6
		121	[  0]	CALL 	 10	2	2	; slot10 = tostring(slot11)
		122	[  0]	CAT  	  9	9	10	; slot9 = slot9 .. tostring
		123	[  0]	TSETB	  9	8	7	; slot8[7] = slot9
		124	[  0]	KSTR 	  9		68	; slot9 = "classModal="
		125	[  0]	GGET 	 10		80	; slot10 = _env["tostring"]
		126	[  0]	MOV  	 12		7	; slot12 = slot7
		127	[  0]	CALL 	 10	2	2	; slot10 = tostring(slot11)
		128	[  0]	CAT  	  9	9	10	; slot9 = slot9 .. tostring
		129	[  0]	TSETB	  9	8	8	; slot8[8] = slot9
		130	[  0]	KSTR 	  9		67	; slot9 = "roster="
		131	[  0]	GGET 	 10		80	; slot10 = _env["tostring"]
		132	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		133	[  0]	ISFC 	 14		1	; slot14 = slot1; if not slot1
		134	[  0]	JMP  	 14		1	; 	goto 136
		135	[  0]	TGETS	 14	1	66	; slot14 = slot1.rosterUnits
		136	[  0]	CALL 	 12	0	2	; MULTRES = uv0"unknown"(slot13)
		137	[  0]	CALLM	 10	2	0	; slot10 = tostring(, ...MULTRES)
		138	[  0]	CAT  	  9	9	10	; slot9 = slot9 .. tostring
		139	[  0]	TSETB	  9	8	9	; slot8[9] = slot9
		140	[  0]	KSTR 	  9		65	; slot9 = "allies="
		141	[  0]	GGET 	 10		80	; slot10 = _env["tostring"]
		142	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		143	[  0]	ISFC 	 14		1	; slot14 = slot1; if not slot1
		144	[  0]	JMP  	 14		1	; 	goto 146
		145	[  0]	TGETS	 14	1	64	; slot14 = slot1.allies
		146	[  0]	CALL 	 12	0	2	; MULTRES = uv0"unknown"(slot13)
		147	[  0]	CALLM	 10	2	0	; slot10 = tostring(, ...MULTRES)
		148	[  0]	CAT  	  9	9	10	; slot9 = slot9 .. tostring
		149	[  0]	TSETB	  9	8	10	; slot8[10] = slot9
		150	[  0]	KSTR 	  9		63	; slot9 = "enemies="
		151	[  0]	GGET 	 10		80	; slot10 = _env["tostring"]
		152	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		153	[  0]	ISFC 	 14		1	; slot14 = slot1; if not slot1
		154	[  0]	JMP  	 14		1	; 	goto 156
		155	[  0]	TGETS	 14	1	62	; slot14 = slot1.enemies
		156	[  0]	CALL 	 12	0	2	; MULTRES = uv0"unknown"(slot13)
		157	[  0]	CALLM	 10	2	0	; slot10 = tostring(, ...MULTRES)
		158	[  0]	CAT  	  9	9	10	; slot9 = slot9 .. tostring
		159	[  0]	TSETB	  9	8	11	; slot8[11] = slot9
		160	[  0]	KSTR 	  9		61	; slot9 = "projectiles="
		161	[  0]	GGET 	 10		80	; slot10 = _env["tostring"]
		162	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		163	[  0]	ISFC 	 14		1	; slot14 = slot1; if not slot1
		164	[  0]	JMP  	 14		1	; 	goto 166
		165	[  0]	TGETS	 14	1	60	; slot14 = slot1.projectiles
		166	[  0]	CALL 	 12	0	2	; MULTRES = uv0"unknown"(slot13)
		167	[  0]	CALLM	 10	2	0	; slot10 = tostring(, ...MULTRES)
		168	[  0]	CAT  	  9	9	10	; slot9 = slot9 .. tostring
		169	[  0]	TSETB	  9	8	12	; slot8[12] = slot9
		170	[  0]	KSTR 	  9		59	; slot9 = "meteors="
		171	[  0]	GGET 	 10		80	; slot10 = _env["tostring"]
		172	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		173	[  0]	ISFC 	 14		1	; slot14 = slot1; if not slot1
		174	[  0]	JMP  	 14		1	; 	goto 176
		175	[  0]	TGETS	 14	1	58	; slot14 = slot1.meteors
		176	[  0]	CALL 	 12	0	2	; MULTRES = uv0"unknown"(slot13)
		177	[  0]	CALLM	 10	2	0	; slot10 = tostring(, ...MULTRES)
		178	[  0]	CAT  	  9	9	10	; slot9 = slot9 .. tostring
		179	[  0]	TSETB	  9	8	13	; slot8[13] = slot9
		180	[  0]	KSTR 	  9		57	; slot9 = "vfx="
		181	[  0]	GGET 	 10		80	; slot10 = _env["tostring"]
		182	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		183	[  0]	ISFC 	 14		1	; slot14 = slot1; if not slot1
		184	[  0]	JMP  	 14		1	; 	goto 186
		185	[  0]	TGETS	 14	1	56	; slot14 = slot1.vfx
		186	[  0]	CALL 	 12	0	2	; MULTRES = uv0"unknown"(slot13)
		187	[  0]	CALLM	 10	2	0	; slot10 = tostring(, ...MULTRES)
		188	[  0]	CAT  	  9	9	10	; slot9 = slot9 .. tostring
		189	[  0]	TSETB	  9	8	14	; slot8[14] = slot9
		190	[  0]	KSTR 	  9		55	; slot9 = "vfxQueued="
		191	[  0]	GGET 	 10		80	; slot10 = _env["tostring"]
		192	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		193	[  0]	ISFC 	 14		1	; slot14 = slot1; if not slot1
		194	[  0]	JMP  	 14		1	; 	goto 196
		195	[  0]	TGETS	 14	1	54	; slot14 = slot1.vfxList
		196	[  0]	CALL 	 12	0	2	; MULTRES = uv0"unknown"(slot13)
		197	[  0]	CALLM	 10	2	0	; slot10 = tostring(, ...MULTRES)
		198	[  0]	CAT  	  9	9	10	; slot9 = slot9 .. tostring
		199	[  0]	TSETB	  9	8	15	; slot8[15] = slot9
		200	[  0]	KSTR 	  9		53	; slot9 = "effects="
		201	[  0]	GGET 	 10		80	; slot10 = _env["tostring"]
		202	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		203	[  0]	ISFC 	 14		1	; slot14 = slot1; if not slot1
		204	[  0]	JMP  	 14		1	; 	goto 206
		205	[  0]	TGETS	 14	1	52	; slot14 = slot1.effects
		206	[  0]	CALL 	 12	0	2	; MULTRES = uv0"unknown"(slot13)
		207	[  0]	CALLM	 10	2	0	; slot10 = tostring(, ...MULTRES)
		208	[  0]	CAT  	  9	9	10	; slot9 = slot9 .. tostring
		209	[  0]	TSETB	  9	8	16	; slot8[16] = slot9
		210	[  0]	GGET 	  9		51	; slot9 = _env["string"]
		211	[  0]	TGETS	  9	9	50	; slot9 = string.format
		212	[  0]	KSTR 	 11		49	; slot11 = "luaMemoryMB=%.1f"
		213	[  0]	GGET 	 12		48	; slot12 = _env["collectgarbage"]
		214	[  0]	KSTR 	 14		47	; slot14 = "count"
		215	[  0]	CALL 	 12	2	2	; slot12 = collectgarbage(slot13)
		216	[  0]	IST  	   		12	; if collectgarbage
		217	[  0]	JMP  	 13		1	; 	goto 219
		218	[  0]	KSHORT	 12		0	; slot12 = 0
		219	[  0]	DIVVN	 12	12	0	; slot12 = slot12 / 1024
		220	[  0]	CALL 	  9	0	3	; MULTRES = string.format(tostring, slot11)
		221	[  0]	TSETM	  9		1	; for i = 0, MULTRES, 1 do slot8[1 + i] = slot(9 + i)
		222	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		223	[  0]	TGETS	  9	9	46	; slot9 = uv1"unknown".lastNote
		224	[  0]	ISF  	   		9	; if not uv1"unknown".lastNote
		225	[  0]	JMP  	 10		11	; 	goto 237
		226	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		227	[  0]	TGETS	  9	9	46	; slot9 = uv1"unknown".lastNote
		228	[  0]	ISEQS	  9		45	; if uv1"unknown".lastNote == ""
		229	[  0]	JMP  	  9		7	; 	goto 237
		230	[  0]	LEN  	  9		8	; slot9 = #slot8
		231	[  0]	ADDVN	  9	9	2	; slot9 = slot9 + 1
		232	[  0]	KSTR 	 10		44	; slot10 = "lastNote="
		233	[  0]	UGET 	 11		1	; slot11 = uv1"unknwon"
		234	[  0]	TGETS	 11	11	46	; slot11 = uv1"unknown".lastNote
		235	[  0]	CAT  	 10	10	11	; slot10 = slot10 .. uv1"unknown".lastNote
		236	[  0]	TSETV	 10	8	9	; slot8[slot9] = slot10
		237	[  0]	GGET 	  9		43	; slot9 = _env["love"]
		238	[  0]	ISF  	   		9	; if not love
		239	[  0]	JMP  	 10		24	; 	goto 264
		240	[  0]	GGET 	  9		43	; slot9 = _env["love"]
		241	[  0]	TGETS	  9	9	42	; slot9 = love.audio
		242	[  0]	ISF  	   		9	; if not love.audio
		243	[  0]	JMP  	 10		20	; 	goto 264
		244	[  0]	GGET 	  9		43	; slot9 = _env["love"]
		245	[  0]	TGETS	  9	9	42	; slot9 = love.audio
		246	[  0]	TGETS	  9	9	41	; slot9 = love.audio.getActiveSourceCount
		247	[  0]	ISF  	   		9	; if not love.audio.getActiveSourceCount
		248	[  0]	JMP  	 10		15	; 	goto 264
		249	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
		250	[  0]	GGET 	 11		43	; slot11 = _env["love"]
		251	[  0]	TGETS	 11	11	42	; slot11 = love.audio
		252	[  0]	TGETS	 11	11	41	; slot11 = love.audio.getActiveSourceCount
		253	[  0]	CALL 	  9	2	2	; slot9 = uv2"unknown"(slot10)
		254	[  0]	ISF  	   		9	; if not uv2"unknown"
		255	[  0]	JMP  	 10		8	; 	goto 264
		256	[  0]	LEN  	 10		8	; slot10 = #slot8
		257	[  0]	ADDVN	 10	10	2	; slot10 = slot10 + 1
		258	[  0]	KSTR 	 11		40	; slot11 = "activeAudioSources="
		259	[  0]	GGET 	 12		80	; slot12 = _env["tostring"]
		260	[  0]	MOV  	 14		9	; slot14 = uv2"unknown"
		261	[  0]	CALL 	 12	2	2	; slot12 = tostring(slot13)
		262	[  0]	CAT  	 11	11	12	; slot11 = slot11 .. tostring
		263	[  0]	TSETV	 11	8	10	; slot8[slot10] = slot11
		264	[  0]	ISF  	   		0	; if not slot0
		265	[  0]	JMP  	  9		309	; 	goto 575
		266	[  0]	GGET 	  9		43	; slot9 = _env["love"]
		267	[  0]	ISF  	   		9	; if not love
		268	[  0]	JMP  	 10		306	; 	goto 575
		269	[  0]	GGET 	  9		43	; slot9 = _env["love"]
		270	[  0]	TGETS	  9	9	39	; slot9 = love.graphics
		271	[  0]	ISF  	   		9	; if not love.graphics
		272	[  0]	JMP  	 10		302	; 	goto 575
		273	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
		274	[  0]	GGET 	 11		43	; slot11 = _env["love"]
		275	[  0]	TGETS	 11	11	39	; slot11 = love.graphics
		276	[  0]	TGETS	 11	11	38	; slot11 = love.graphics.getDimensions
		277	[  0]	CALL 	  9	3	2	; slot9, slot10 = uv2"unknown"(slot10)
		278	[  0]	ISF  	   		9	; if not uv2"unknown"
		279	[  0]	JMP  	 11		11	; 	goto 291
		280	[  0]	ISF  	   		10	; if not slot10
		281	[  0]	JMP  	 11		9	; 	goto 291
		282	[  0]	LEN  	 11		8	; slot11 = #slot8
		283	[  0]	ADDVN	 11	11	2	; slot11 = slot11 + 1
		284	[  0]	KSTR 	 12		37	; slot12 = "window=%sx%s"
		285	[  0]	MOV  	 14		12	; slot14 = slot12
		286	[  0]	TGETS	 12	12	50	; slot12 = slot12.format
		287	[  0]	MOV  	 15		9	; slot15 = uv2"unknown"
		288	[  0]	MOV  	 16		10	; slot16 = slot10
		289	[  0]	CALL 	 12	2	4	; slot12 = <unknown table>.format(slot13, slot14, uv2"unknown")
		290	[  0]	TSETV	 12	8	11	; slot8[slot11] = <unknown table>.format
		291	[  0]	UGET 	 11		2	; slot11 = uv2"unknwon"
		292	[  0]	GGET 	 13		43	; slot13 = _env["love"]
		293	[  0]	TGETS	 13	13	39	; slot13 = love.graphics
		294	[  0]	TGETS	 13	13	36	; slot13 = love.graphics.getStats
		295	[  0]	CALL 	 11	2	2	; slot11 = uv2"unknown"(<unknown table>.format)
		296	[  0]	GGET 	 12		35	; slot12 = _env["type"]
		297	[  0]	MOV  	 14		11	; slot14 = uv2"unknown"
		298	[  0]	CALL 	 12	2	2	; slot12 = type(love.graphics.getStats)
		299	[  0]	ISNES	 12		34	; if type ~= "table"
		300	[  0]	JMP  	 12		36	; 	goto 337
		301	[  0]	LEN  	 12		8	; slot12 = #slot8
		302	[  0]	ADDVN	 12	12	2	; slot12 = slot12 + 1
		303	[  0]	KSTR 	 13		33	; slot13 = "drawCalls="
		304	[  0]	GGET 	 14		80	; slot14 = _env["tostring"]
		305	[  0]	TGETS	 16	11	32	; slot16 = uv2"unknown".drawcalls
		306	[  0]	IST  	   		16	; if uv2"unknown".drawcalls
		307	[  0]	JMP  	 17		1	; 	goto 309
		308	[  0]	KSHORT	 16		0	; slot16 = 0
		309	[  0]	CALL 	 14	2	2	; slot14 = tostring(uv2"unknown")
		310	[  0]	CAT  	 13	13	14	; slot13 = slot13 .. tostring
		311	[  0]	TSETV	 13	8	12	; slot8[slot12] = slot13
		312	[  0]	LEN  	 12		8	; slot12 = #slot8
		313	[  0]	ADDVN	 12	12	2	; slot12 = slot12 + 1
		314	[  0]	KSTR 	 13		31	; slot13 = "canvases="
		315	[  0]	GGET 	 14		80	; slot14 = _env["tostring"]
		316	[  0]	TGETS	 16	11	30	; slot16 = uv2"unknown".canvases
		317	[  0]	IST  	   		16	; if uv2"unknown".canvases
		318	[  0]	JMP  	 17		1	; 	goto 320
		319	[  0]	KSHORT	 16		0	; slot16 = 0
		320	[  0]	CALL 	 14	2	2	; slot14 = tostring(uv2"unknown")
		321	[  0]	CAT  	 13	13	14	; slot13 = slot13 .. tostring
		322	[  0]	TSETV	 13	8	12	; slot8[slot12] = slot13
		323	[  0]	LEN  	 12		8	; slot12 = #slot8
		324	[  0]	ADDVN	 12	12	2	; slot12 = slot12 + 1
		325	[  0]	GGET 	 13		51	; slot13 = _env["string"]
		326	[  0]	TGETS	 13	13	50	; slot13 = string.format
		327	[  0]	KSTR 	 15		29	; slot15 = "textureMemoryMB=%.1f"
		328	[  0]	GGET 	 16		28	; slot16 = _env["tonumber"]
		329	[  0]	TGETS	 18	11	27	; slot18 = uv2"unknown".texturememory
		330	[  0]	CALL 	 16	2	2	; slot16 = tonumber(slot17)
		331	[  0]	IST  	   		16	; if tonumber
		332	[  0]	JMP  	 17		1	; 	goto 334
		333	[  0]	KSHORT	 16		0	; slot16 = 0
		334	[  0]	DIVVN	 16	16	3	; slot16 = slot16 / 1048576
		335	[  0]	CALL 	 13	2	3	; slot13 = string.format(tostring, slot15)
		336	[  0]	TSETV	 13	8	12	; slot8[slot12] = string.format
		337	[  0]	GGET 	 12		43	; slot12 = _env["love"]
		338	[  0]	TGETS	 12	12	26	; slot12 = love.window
		339	[  0]	ISF  	   		12	; if not love.window
		340	[  0]	JMP  	 13		159	; 	goto 500
		341	[  0]	GGET 	 12		43	; slot12 = _env["love"]
		342	[  0]	TGETS	 12	12	26	; slot12 = love.window
		343	[  0]	TGETS	 12	12	25	; slot12 = love.window.hasFocus
		344	[  0]	ISF  	   		12	; if not love.window.hasFocus
		345	[  0]	JMP  	 13		5	; 	goto 351
		346	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		347	[  0]	GGET 	 14		43	; slot14 = _env["love"]
		348	[  0]	TGETS	 14	14	26	; slot14 = love.window
		349	[  0]	TGETS	 14	14	25	; slot14 = love.window.hasFocus
		350	[  0]	CALL 	 12	2	2	; slot12 = uv2"unknown"(string.format)
		351	[  0]	GGET 	 13		43	; slot13 = _env["love"]
		352	[  0]	TGETS	 13	13	26	; slot13 = love.window
		353	[  0]	TGETS	 13	13	24	; slot13 = love.window.isVisible
		354	[  0]	ISF  	   		13	; if not love.window.isVisible
		355	[  0]	JMP  	 14		5	; 	goto 361
		356	[  0]	UGET 	 13		2	; slot13 = uv2"unknwon"
		357	[  0]	GGET 	 15		43	; slot15 = _env["love"]
		358	[  0]	TGETS	 15	15	26	; slot15 = love.window
		359	[  0]	TGETS	 15	15	24	; slot15 = love.window.isVisible
		360	[  0]	CALL 	 13	2	2	; slot13 = uv2"unknown"(love.window.hasFocus)
		361	[  0]	GGET 	 14		43	; slot14 = _env["love"]
		362	[  0]	TGETS	 14	14	26	; slot14 = love.window
		363	[  0]	TGETS	 14	14	23	; slot14 = love.window.isMinimized
		364	[  0]	ISF  	   		14	; if not love.window.isMinimized
		365	[  0]	JMP  	 15		5	; 	goto 371
		366	[  0]	UGET 	 14		2	; slot14 = uv2"unknwon"
		367	[  0]	GGET 	 16		43	; slot16 = _env["love"]
		368	[  0]	TGETS	 16	16	26	; slot16 = love.window
		369	[  0]	TGETS	 16	16	23	; slot16 = love.window.isMinimized
		370	[  0]	CALL 	 14	2	2	; slot14 = uv2"unknown"(love.window.isVisible)
		371	[  0]	KNIL 	 15		16	; love.window.isVisible, love.window.isMinimized = nil
		372	[  0]	GGET 	 17		43	; slot17 = _env["love"]
		373	[  0]	TGETS	 17	17	26	; slot17 = love.window
		374	[  0]	TGETS	 17	17	22	; slot17 = love.window.getFullscreen
		375	[  0]	ISF  	   		17	; if not love.window.getFullscreen
		376	[  0]	JMP  	 18		7	; 	goto 384
		377	[  0]	UGET 	 17		2	; slot17 = uv2"unknwon"
		378	[  0]	GGET 	 19		43	; slot19 = _env["love"]
		379	[  0]	TGETS	 19	19	26	; slot19 = love.window
		380	[  0]	TGETS	 19	19	22	; slot19 = love.window.getFullscreen
		381	[  0]	CALL 	 17	3	2	; slot17, slot18 = uv2"unknown"(slot18)
		382	[  0]	MOV  	 16		18	; slot16 = slot18
		383	[  0]	MOV  	 15		17	; slot15 = uv2"unknown"
		384	[  0]	KPRI 	 17		0	; slot17 = nil
		385	[  0]	GGET 	 18		43	; slot18 = _env["love"]
		386	[  0]	TGETS	 18	18	26	; slot18 = love.window
		387	[  0]	TGETS	 18	18	21	; slot18 = love.window.getMode
		388	[  0]	ISF  	   		18	; if not love.window.getMode
		389	[  0]	JMP  	 19		6	; 	goto 396
		390	[  0]	UGET 	 18		2	; slot18 = uv2"unknwon"
		391	[  0]	GGET 	 20		43	; slot20 = _env["love"]
		392	[  0]	TGETS	 20	20	26	; slot20 = love.window
		393	[  0]	TGETS	 20	20	21	; slot20 = love.window.getMode
		394	[  0]	CALL 	 18	4	2	; slot18, slot19, slot20 = uv2"unknown"(love.window.getFullscreen)
		395	[  0]	MOV  	 17		20	; slot17 = love.window.getMode
		396	[  0]	GGET 	 18		43	; slot18 = _env["love"]
		397	[  0]	TGETS	 18	18	26	; slot18 = love.window
		398	[  0]	TGETS	 18	18	20	; slot18 = love.window.getVSync
		399	[  0]	ISF  	   		18	; if not love.window.getVSync
		400	[  0]	JMP  	 19		5	; 	goto 406
		401	[  0]	UGET 	 18		2	; slot18 = uv2"unknwon"
		402	[  0]	GGET 	 20		43	; slot20 = _env["love"]
		403	[  0]	TGETS	 20	20	26	; slot20 = love.window
		404	[  0]	TGETS	 20	20	20	; slot20 = love.window.getVSync
		405	[  0]	CALL 	 18	2	2	; slot18 = uv2"unknown"(love.window.getFullscreen)
		406	[  0]	ISEQP	 12		0	; if uv2"unknown" == nil
		407	[  0]	JMP  	 19		12	; 	goto 420
		408	[  0]	LEN  	 19		8	; slot19 = #slot8
		409	[  0]	ADDVN	 19	19	2	; slot19 = slot19 + 1
		410	[  0]	KSTR 	 20		19	; slot20 = "focused="
		411	[  0]	GGET 	 21		80	; slot21 = _env["tostring"]
		412	[  0]	ISEQP	 12		2	; if uv2"unknown" == true
		413	[  0]	JMP  	 23		2	; 	goto 416
		414	[  0]	KPRI 	 23		1	; slot23 = false
		415	[  0]	JMP  	 24		1	; 	goto 417
		416	[  0]	KPRI 	 23		2	; slot23 = true
		417	[  0]	CALL 	 21	2	2	; slot21 = tostring(slot22)
		418	[  0]	CAT  	 20	20	21	; slot20 = slot20 .. tostring
		419	[  0]	TSETV	 20	8	19	; slot8[slot19] = slot20
		420	[  0]	ISEQP	 13		0	; if uv2"unknown" == nil
		421	[  0]	JMP  	 19		12	; 	goto 434
		422	[  0]	LEN  	 19		8	; slot19 = #slot8
		423	[  0]	ADDVN	 19	19	2	; slot19 = slot19 + 1
		424	[  0]	KSTR 	 20		18	; slot20 = "visible="
		425	[  0]	GGET 	 21		80	; slot21 = _env["tostring"]
		426	[  0]	ISEQP	 13		2	; if uv2"unknown" == true
		427	[  0]	JMP  	 23		2	; 	goto 430
		428	[  0]	KPRI 	 23		1	; slot23 = false
		429	[  0]	JMP  	 24		1	; 	goto 431
		430	[  0]	KPRI 	 23		2	; slot23 = true
		431	[  0]	CALL 	 21	2	2	; slot21 = tostring(slot22)
		432	[  0]	CAT  	 20	20	21	; slot20 = slot20 .. tostring
		433	[  0]	TSETV	 20	8	19	; slot8[slot19] = slot20
		434	[  0]	ISEQP	 14		0	; if uv2"unknown" == nil
		435	[  0]	JMP  	 19		12	; 	goto 448
		436	[  0]	LEN  	 19		8	; slot19 = #slot8
		437	[  0]	ADDVN	 19	19	2	; slot19 = slot19 + 1
		438	[  0]	KSTR 	 20		17	; slot20 = "minimized="
		439	[  0]	GGET 	 21		80	; slot21 = _env["tostring"]
		440	[  0]	ISEQP	 14		2	; if uv2"unknown" == true
		441	[  0]	JMP  	 23		2	; 	goto 444
		442	[  0]	KPRI 	 23		1	; slot23 = false
		443	[  0]	JMP  	 24		1	; 	goto 445
		444	[  0]	KPRI 	 23		2	; slot23 = true
		445	[  0]	CALL 	 21	2	2	; slot21 = tostring(slot22)
		446	[  0]	CAT  	 20	20	21	; slot20 = slot20 .. tostring
		447	[  0]	TSETV	 20	8	19	; slot8[slot19] = slot20
		448	[  0]	ISEQP	 15		0	; if uv2"unknown" == nil
		449	[  0]	JMP  	 19		22	; 	goto 472
		450	[  0]	LEN  	 19		8	; slot19 = #slot8
		451	[  0]	ADDVN	 19	19	2	; slot19 = slot19 + 1
		452	[  0]	KSTR 	 20		16	; slot20 = "fullscreen="
		453	[  0]	GGET 	 21		80	; slot21 = _env["tostring"]
		454	[  0]	ISEQP	 15		2	; if uv2"unknown" == true
		455	[  0]	JMP  	 23		2	; 	goto 458
		456	[  0]	KPRI 	 23		1	; slot23 = false
		457	[  0]	JMP  	 24		1	; 	goto 459
		458	[  0]	KPRI 	 23		2	; slot23 = true
		459	[  0]	CALL 	 21	2	2	; slot21 = tostring(slot22)
		460	[  0]	CAT  	 20	20	21	; slot20 = slot20 .. tostring
		461	[  0]	TSETV	 20	8	19	; slot8[slot19] = slot20
		462	[  0]	ISF  	   		16	; if not slot16
		463	[  0]	JMP  	 19		8	; 	goto 472
		464	[  0]	LEN  	 19		8	; slot19 = #slot8
		465	[  0]	ADDVN	 19	19	2	; slot19 = slot19 + 1
		466	[  0]	KSTR 	 20		15	; slot20 = "fullscreenType="
		467	[  0]	GGET 	 21		80	; slot21 = _env["tostring"]
		468	[  0]	MOV  	 23		16	; slot23 = slot16
		469	[  0]	CALL 	 21	2	2	; slot21 = tostring(slot22)
		470	[  0]	CAT  	 20	20	21	; slot20 = slot20 .. tostring
		471	[  0]	TSETV	 20	8	19	; slot8[slot19] = slot20
		472	[  0]	GGET 	 19		35	; slot19 = _env["type"]
		473	[  0]	MOV  	 21		17	; slot21 = love.window.getMode
		474	[  0]	CALL 	 19	2	2	; slot19 = type(slot20)
		475	[  0]	ISNES	 19		34	; if type ~= "table"
		476	[  0]	JMP  	 19		13	; 	goto 490
		477	[  0]	LEN  	 19		8	; slot19 = #slot8
		478	[  0]	ADDVN	 19	19	2	; slot19 = slot19 + 1
		479	[  0]	KSTR 	 20		14	; slot20 = "borderless="
		480	[  0]	GGET 	 21		80	; slot21 = _env["tostring"]
		481	[  0]	TGETS	 23	17	13	; slot23 = love.window.getMode.borderless
		482	[  0]	ISEQP	 23		2	; if love.window.getMode.borderless == true
		483	[  0]	JMP  	 23		2	; 	goto 486
		484	[  0]	KPRI 	 23		1	; slot23 = false
		485	[  0]	JMP  	 24		1	; 	goto 487
		486	[  0]	KPRI 	 23		2	; slot23 = true
		487	[  0]	CALL 	 21	2	2	; slot21 = tostring(slot22)
		488	[  0]	CAT  	 20	20	21	; slot20 = slot20 .. tostring
		489	[  0]	TSETV	 20	8	19	; slot8[slot19] = slot20
		490	[  0]	ISEQP	 18		0	; if uv2"unknown" == nil
		491	[  0]	JMP  	 19		8	; 	goto 500
		492	[  0]	LEN  	 19		8	; slot19 = #slot8
		493	[  0]	ADDVN	 19	19	2	; slot19 = slot19 + 1
		494	[  0]	KSTR 	 20		12	; slot20 = "vsync="
		495	[  0]	GGET 	 21		80	; slot21 = _env["tostring"]
		496	[  0]	MOV  	 23		18	; slot23 = uv2"unknown"
		497	[  0]	CALL 	 21	2	2	; slot21 = tostring(slot22)
		498	[  0]	CAT  	 20	20	21	; slot20 = slot20 .. tostring
		499	[  0]	TSETV	 20	8	19	; slot8[slot19] = slot20
		500	[  0]	GGET 	 12		91	; slot12 = _env["rawget"]
		501	[  0]	GGET 	 14		90	; slot14 = _env["_G"]
		502	[  0]	KSTR 	 15		11	; slot15 = "PresentationPacer"
		503	[  0]	CALL 	 12	2	3	; slot12 = rawget(uv2"unknown", _G)
		504	[  0]	ISF  	   		12	; if not rawget
		505	[  0]	JMP  	 13		69	; 	goto 575
		506	[  0]	TGETS	 13	12	10	; slot13 = rawget.getStatus
		507	[  0]	ISF  	   		13	; if not rawget.getStatus
		508	[  0]	JMP  	 14		66	; 	goto 575
		509	[  0]	UGET 	 13		2	; slot13 = uv2"unknwon"
		510	[  0]	TGETS	 15	12	10	; slot15 = rawget.getStatus
		511	[  0]	CALL 	 13	2	2	; slot13 = uv2"unknown"(_G)
		512	[  0]	GGET 	 14		35	; slot14 = _env["type"]
		513	[  0]	MOV  	 16		13	; slot16 = uv2"unknown"
		514	[  0]	CALL 	 14	2	2	; slot14 = type(rawget.getStatus)
		515	[  0]	ISNES	 14		34	; if type ~= "table"
		516	[  0]	JMP  	 14		58	; 	goto 575
		517	[  0]	LEN  	 14		8	; slot14 = #slot8
		518	[  0]	ADDVN	 14	14	2	; slot14 = slot14 + 1
		519	[  0]	KSTR 	 15		9	; slot15 = "presentationPacing="
		520	[  0]	GGET 	 16		80	; slot16 = _env["tostring"]
		521	[  0]	TGETS	 18	13	84	; slot18 = uv2"unknown".active
		522	[  0]	ISEQP	 18		2	; if uv2"unknown".active == true
		523	[  0]	JMP  	 18		2	; 	goto 526
		524	[  0]	KPRI 	 18		1	; slot18 = false
		525	[  0]	JMP  	 19		1	; 	goto 527
		526	[  0]	KPRI 	 18		2	; slot18 = true
		527	[  0]	CALL 	 16	2	2	; slot16 = tostring(love.window.getMode)
		528	[  0]	CAT  	 15	15	16	; slot15 = slot15 .. tostring
		529	[  0]	TSETV	 15	8	14	; slot8[slot14] = slot15
		530	[  0]	GGET 	 14		28	; slot14 = _env["tonumber"]
		531	[  0]	TGETS	 16	13	8	; slot16 = uv2"unknown".refreshHz
		532	[  0]	CALL 	 14	2	2	; slot14 = tonumber(slot15)
		533	[  0]	ISF  	   		14	; if not tonumber
		534	[  0]	JMP  	 15		10	; 	goto 545
		535	[  0]	LEN  	 14		8	; slot14 = #slot8
		536	[  0]	ADDVN	 14	14	2	; slot14 = slot14 + 1
		537	[  0]	GGET 	 15		51	; slot15 = _env["string"]
		538	[  0]	TGETS	 15	15	50	; slot15 = string.format
		539	[  0]	KSTR 	 17		7	; slot17 = "presentationHz=%.3f"
		540	[  0]	GGET 	 18		28	; slot18 = _env["tonumber"]
		541	[  0]	TGETS	 20	13	8	; slot20 = uv2"unknown".refreshHz
		542	[  0]	CALL 	 18	0	2	; MULTRES = tonumber(slot19)
		543	[  0]	CALLM	 15	2	1	; slot15 = string.format(uv2"unknown".refreshHz, ...MULTRES)
		544	[  0]	TSETV	 15	8	14	; slot8[slot14] = string.format
		545	[  0]	TGETS	 14	13	6	; slot14 = uv2"unknown".presentSuppressed
		546	[  0]	ISEQP	 14		0	; if uv2"unknown".presentSuppressed == nil
		547	[  0]	JMP  	 14		13	; 	goto 561
		548	[  0]	LEN  	 14		8	; slot14 = #slot8
		549	[  0]	ADDVN	 14	14	2	; slot14 = slot14 + 1
		550	[  0]	KSTR 	 15		5	; slot15 = "presentationSuppressed="
		551	[  0]	GGET 	 16		80	; slot16 = _env["tostring"]
		552	[  0]	TGETS	 18	13	6	; slot18 = uv2"unknown".presentSuppressed
		553	[  0]	ISEQP	 18		2	; if uv2"unknown".presentSuppressed == true
		554	[  0]	JMP  	 18		2	; 	goto 557
		555	[  0]	KPRI 	 18		1	; slot18 = false
		556	[  0]	JMP  	 19		1	; 	goto 558
		557	[  0]	KPRI 	 18		2	; slot18 = true
		558	[  0]	CALL 	 16	2	2	; slot16 = tostring(slot17)
		559	[  0]	CAT  	 15	15	16	; slot15 = slot15 .. tostring
		560	[  0]	TSETV	 15	8	14	; slot8[slot14] = slot15
		561	[  0]	TGETS	 14	13	4	; slot14 = uv2"unknown".fallbackActivated
		562	[  0]	ISF  	   		14	; if not uv2"unknown".fallbackActivated
		563	[  0]	JMP  	 15		11	; 	goto 575
		564	[  0]	LEN  	 14		8	; slot14 = #slot8
		565	[  0]	ADDVN	 14	14	2	; slot14 = slot14 + 1
		566	[  0]	KSTR 	 15		3	; slot15 = "presentationFallback="
		567	[  0]	GGET 	 16		80	; slot16 = _env["tostring"]
		568	[  0]	TGETS	 18	13	2	; slot18 = uv2"unknown".fallbackReason
		569	[  0]	IST  	   		18	; if uv2"unknown".fallbackReason
		570	[  0]	JMP  	 19		1	; 	goto 572
		571	[  0]	KPRI 	 18		2	; slot18 = true
		572	[  0]	CALL 	 16	2	2	; slot16 = tostring(slot17)
		573	[  0]	CAT  	 15	15	16	; slot15 = slot15 .. tostring
		574	[  0]	TSETV	 15	8	14	; slot8[slot14] = slot15
		575	[  0]	GGET 	  9		34	; slot9 = _env["table"]
		576	[  0]	TGETS	  9	9	1	; slot9 = table.concat
		577	[  0]	MOV  	 11		8	; slot11 = slot8
		578	[  0]	KSTR 	 12		0	; slot12 = ", "
		579	[  0]	CALLT	  9		3	; return table.concat(slot10, slot11)
	 24	[  0]	FNEW 	 23		24	; N/A:0-0: 0 args, 4 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  0		3	; slot0 = new table( array: 3, dict: 1)
		  2	[  0]	KSTR 	  1		18	; slot1 = "time="
		  3	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  4	[  0]	CALL 	  2	2	1	; slot2 = uv0"unknown"()
		  5	[  0]	CAT  	  1	1	2	; slot1 = slot1 .. uv0"unknown"
		  6	[  0]	TSETB	  1	0	1	; slot0[1] = slot1
		  7	[  0]	KSTR 	  1		17	; slot1 = "logPath="
		  8	[  0]	GGET 	  2		16	; slot2 = _env["tostring"]
		  9	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 10	[  0]	TGETS	  4	4	15	; slot4 = uv1"unknown".logPath
		 11	[  0]	IST  	   		4	; if uv1"unknown".logPath
		 12	[  0]	JMP  	  5		2	; 	goto 15
		 13	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 14	[  0]	CALL 	  4	2	1	; slot4 = uv2"unknown"()
		 15	[  0]	CALL 	  2	2	2	; slot2 = tostring(slot3)
		 16	[  0]	CAT  	  1	1	2	; slot1 = slot1 .. slot2
		 17	[  0]	TSETB	  1	0	2	; slot0[2] = slot1
		 18	[  0]	GGET 	  1		14	; slot1 = _env["love"]
		 19	[  0]	ISF  	   		1	; if not love
		 20	[  0]	JMP  	  2		31	; 	goto 52
		 21	[  0]	GGET 	  1		14	; slot1 = _env["love"]
		 22	[  0]	TGETS	  1	1	13	; slot1 = love.getVersion
		 23	[  0]	ISF  	   		1	; if not love.getVersion
		 24	[  0]	JMP  	  2		27	; 	goto 52
		 25	[  0]	UGET 	  1		3	; slot1 = uv3"unknwon"
		 26	[  0]	GGET 	  3		14	; slot3 = _env["love"]
		 27	[  0]	TGETS	  3	3	13	; slot3 = love.getVersion
		 28	[  0]	CALL 	  1	5	2	; slot1, slot2, slot3, slot4 = uv3"unknown"(slot2)
		 29	[  0]	ISF  	   		1	; if not slot1
		 30	[  0]	JMP  	  5		21	; 	goto 52
		 31	[  0]	LEN  	  5		0	; slot5 = #slot0
		 32	[  0]	ADDVN	  5	5	0	; slot5 = slot5 + 1
		 33	[  0]	KSTR 	  6		12	; slot6 = "love=%s.%s.%s %s"
		 34	[  0]	MOV  	  8		6	; slot8 = slot6
		 35	[  0]	TGETS	  6	6	11	; slot6 = slot6.format
		 36	[  0]	GGET 	  9		16	; slot9 = _env["tostring"]
		 37	[  0]	MOV  	 11		1	; slot11 = slot1
		 38	[  0]	CALL 	  9	2	2	; slot9 = tostring(slot10)
		 39	[  0]	GGET 	 10		16	; slot10 = _env["tostring"]
		 40	[  0]	MOV  	 12		2	; slot12 = slot2
		 41	[  0]	CALL 	 10	2	2	; slot10 = tostring(slot11)
		 42	[  0]	GGET 	 11		16	; slot11 = _env["tostring"]
		 43	[  0]	MOV  	 13		3	; slot13 = love.getVersion
		 44	[  0]	CALL 	 11	2	2	; slot11 = tostring(slot12)
		 45	[  0]	GGET 	 12		16	; slot12 = _env["tostring"]
		 46	[  0]	ISTC 	 14		4	; slot14 = uv2"unknown"; if uv2"unknown"
		 47	[  0]	JMP  	 14		1	; 	goto 49
		 48	[  0]	KSTR 	 14		10	; slot14 = ""
		 49	[  0]	CALL 	 12	0	2	; MULTRES = tostring(love.getVersion)
		 50	[  0]	CALLM	  6	2	4	; slot6 = <unknown table>.format(slot7, slot8, tostring, tostring, ...MULTRES)
		 51	[  0]	TSETV	  6	0	5	; slot0[slot5] = <unknown table>.format
		 52	[  0]	GGET 	  1		14	; slot1 = _env["love"]
		 53	[  0]	ISF  	   		1	; if not love
		 54	[  0]	JMP  	  2		24	; 	goto 79
		 55	[  0]	GGET 	  1		14	; slot1 = _env["love"]
		 56	[  0]	TGETS	  1	1	9	; slot1 = love.system
		 57	[  0]	ISF  	   		1	; if not love.system
		 58	[  0]	JMP  	  2		20	; 	goto 79
		 59	[  0]	GGET 	  1		14	; slot1 = _env["love"]
		 60	[  0]	TGETS	  1	1	9	; slot1 = love.system
		 61	[  0]	TGETS	  1	1	8	; slot1 = love.system.getOS
		 62	[  0]	ISF  	   		1	; if not love.system.getOS
		 63	[  0]	JMP  	  2		15	; 	goto 79
		 64	[  0]	LEN  	  1		0	; slot1 = #slot0
		 65	[  0]	ADDVN	  1	1	0	; slot1 = slot1 + 1
		 66	[  0]	KSTR 	  2		7	; slot2 = "os="
		 67	[  0]	GGET 	  3		16	; slot3 = _env["tostring"]
		 68	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
		 69	[  0]	GGET 	  7		14	; slot7 = _env["love"]
		 70	[  0]	TGETS	  7	7	9	; slot7 = love.system
		 71	[  0]	TGETS	  7	7	8	; slot7 = love.system.getOS
		 72	[  0]	CALL 	  5	2	2	; slot5 = uv3"unknown"(<unknown table>.format)
		 73	[  0]	IST  	   		5	; if uv3"unknown"
		 74	[  0]	JMP  	  6		1	; 	goto 76
		 75	[  0]	KSTR 	  5		6	; slot5 = "unknown"
		 76	[  0]	CALL 	  3	2	2	; slot3 = tostring(uv2"unknown")
		 77	[  0]	CAT  	  2	2	3	; slot2 = slot2 .. tostring
		 78	[  0]	TSETV	  2	0	1	; slot0[slot1] = slot2
		 79	[  0]	GGET 	  1		14	; slot1 = _env["love"]
		 80	[  0]	ISF  	   		1	; if not love
		 81	[  0]	JMP  	  2		35	; 	goto 117
		 82	[  0]	GGET 	  1		14	; slot1 = _env["love"]
		 83	[  0]	TGETS	  1	1	5	; slot1 = love.graphics
		 84	[  0]	ISF  	   		1	; if not love.graphics
		 85	[  0]	JMP  	  2		31	; 	goto 117
		 86	[  0]	GGET 	  1		14	; slot1 = _env["love"]
		 87	[  0]	TGETS	  1	1	5	; slot1 = love.graphics
		 88	[  0]	TGETS	  1	1	4	; slot1 = love.graphics.getRendererInfo
		 89	[  0]	ISF  	   		1	; if not love.graphics.getRendererInfo
		 90	[  0]	JMP  	  2		26	; 	goto 117
		 91	[  0]	UGET 	  1		3	; slot1 = uv3"unknwon"
		 92	[  0]	GGET 	  3		14	; slot3 = _env["love"]
		 93	[  0]	TGETS	  3	3	5	; slot3 = love.graphics
		 94	[  0]	TGETS	  3	3	4	; slot3 = love.graphics.getRendererInfo
		 95	[  0]	CALL 	  1	5	2	; slot1, slot2, slot3, slot4 = uv3"unknown"(slot2)
		 96	[  0]	ISF  	   		1	; if not slot1
		 97	[  0]	JMP  	  5		19	; 	goto 117
		 98	[  0]	LEN  	  5		0	; slot5 = #slot0
		 99	[  0]	ADDVN	  5	5	0	; slot5 = slot5 + 1
		100	[  0]	KSTR 	  6		3	; slot6 = "renderer=%s | %s | %s | %s"
		101	[  0]	MOV  	  8		6	; slot8 = slot6
		102	[  0]	TGETS	  6	6	11	; slot6 = slot6.format
		103	[  0]	GGET 	  9		16	; slot9 = _env["tostring"]
		104	[  0]	MOV  	 11		1	; slot11 = slot1
		105	[  0]	CALL 	  9	2	2	; slot9 = tostring(tostring)
		106	[  0]	GGET 	 10		16	; slot10 = _env["tostring"]
		107	[  0]	MOV  	 12		2	; slot12 = slot2
		108	[  0]	CALL 	 10	2	2	; slot10 = tostring(slot11)
		109	[  0]	GGET 	 11		16	; slot11 = _env["tostring"]
		110	[  0]	MOV  	 13		3	; slot13 = love.graphics.getRendererInfo
		111	[  0]	CALL 	 11	2	2	; slot11 = tostring(slot12)
		112	[  0]	GGET 	 12		16	; slot12 = _env["tostring"]
		113	[  0]	MOV  	 14		4	; slot14 = uv2"unknown"
		114	[  0]	CALL 	 12	0	2	; MULTRES = tostring(love.graphics.getRendererInfo)
		115	[  0]	CALLM	  6	2	4	; slot6 = <unknown table>.format(love.system.getOS, slot8, tostring, tostring, ...MULTRES)
		116	[  0]	TSETV	  6	0	5	; slot0[slot5] = <unknown table>.format
		117	[  0]	GGET 	  1		2	; slot1 = _env["table"]
		118	[  0]	TGETS	  1	1	1	; slot1 = table.concat
		119	[  0]	MOV  	  3		0	; slot3 = slot0
		120	[  0]	KSTR 	  4		0	; slot4 = "
		"
		121	[  0]	CALLT	  1		3	; return table.concat(slot2, slot3)
	 25	[  0]	FNEW 	 24		23	; N/A:0-0: 0 args, 5 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	3	; slot0 = uv0"unknown".sessionWritten
		  3	[  0]	ISF  	   		0	; if not uv0"unknown".sessionWritten
		  4	[  0]	JMP  	  1		1	; 	goto 6
		  5	[  0]	RET0 	  0		1	; return
		  6	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  7	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".logPath
		  8	[  0]	IST  	   		0	; if uv0"unknown".logPath
		  9	[  0]	JMP  	  0		4	; 	goto 14
		 10	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 11	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 12	[  0]	CALL 	  1	2	1	; slot1 = uv1"unknown"()
		 13	[  0]	TSETS	  1	0	2	; uv0"unknown".logPath = slot1
		 14	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 15	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 16	[  0]	KSTR 	  3		1	; slot3 = "
		===== SlotBound diagnostic session =====
		%s
		%s
		"
		 17	[  0]	MOV  	  5		3	; slot5 = slot3
		 18	[  0]	TGETS	  3	3	0	; slot3 = slot3.format
		 19	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		 20	[  0]	CALL 	  6	2	1	; slot6 = uv3"unknown"()
		 21	[  0]	UGET 	  7		4	; slot7 = uv4"unknwon"
		 22	[  0]	KPRI 	  9		2	; slot9 = true
		 23	[  0]	CALL 	  7	0	2	; MULTRES = uv4"unknown"(slot8)
		 24	[  0]	CALLM	  3	0	2	; MULTRES = <unknown table>.format(slot4, slot5, ...MULTRES)
		 25	[  0]	CALLM	  1	2	0	; slot1 = uv2"unknown"(, ...MULTRES)
		 26	[  0]	TSETS	  1	0	3	; uv0"unknown".sessionWritten = uv2"unknown"
		 27	[  0]	RET0 	  0		1	; return
	 26	[  0]	FNEW 	 25		22	; N/A:0-0: 4 args, 4 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  2	[  0]	CALL 	  4	1	1	;  = uv0"unknown"()
		  3	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		  4	[  0]	KSTR 	  6		4	; slot6 = "[%s] [%s] %s
		%s
		"
		  5	[  0]	MOV  	  8		6	; slot8 = slot6
		  6	[  0]	TGETS	  6	6	3	; slot6 = slot6.format
		  7	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
		  8	[  0]	CALL 	  9	2	1	; slot9 = uv2"unknown"()
		  9	[  0]	GGET 	 10		2	; slot10 = _env["tostring"]
		 10	[  0]	ISTC 	 12		0	; slot12 = slot0; if slot0
		 11	[  0]	JMP  	 12		1	; 	goto 13
		 12	[  0]	KSTR 	 12		1	; slot12 = "INFO"
		 13	[  0]	CALL 	 10	2	2	; slot10 = tostring(slot11)
		 14	[  0]	GGET 	 11		2	; slot11 = _env["tostring"]
		 15	[  0]	ISTC 	 13		1	; slot13 = slot1; if slot1
		 16	[  0]	JMP  	 13		1	; 	goto 18
		 17	[  0]	KSTR 	 13		0	; slot13 = ""
		 18	[  0]	CALL 	 11	2	2	; slot11 = tostring(slot12)
		 19	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		 20	[  0]	ISEQP	  2		2	; if slot2 == true
		 21	[  0]	JMP  	 14		2	; 	goto 24
		 22	[  0]	KPRI 	 14		1	; slot14 = false
		 23	[  0]	JMP  	 15		1	; 	goto 25
		 24	[  0]	KPRI 	 14		2	; slot14 = true
		 25	[  0]	CALL 	 12	0	2	; MULTRES = uv3"unknown"(slot13)
		 26	[  0]	CALLM	  6	2	4	; slot6 = <unknown table>.format(slot7, slot8, uv2"unknown", tostring, ...MULTRES)
		 27	[  0]	ISEQP	  3		2	; if slot3 == true
		 28	[  0]	JMP  	  7		2	; 	goto 31
		 29	[  0]	KPRI 	  7		1	; slot7 = false
		 30	[  0]	JMP  	  8		1	; 	goto 32
		 31	[  0]	KPRI 	  7		2	; slot7 = true
		 32	[  0]	CALL 	  4	1	3	;  = uv1"unknown"(slot5, <unknown table>.format)
		 33	[  0]	RET0 	  0		1	; return
	 27	[  0]	FNEW 	 26		20	; N/A:0-0: 0 args, 2 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".logPath
		  3	[  0]	IST  	   		0	; if uv0"unknown".logPath
		  4	[  0]	JMP  	  0		4	; 	goto 9
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  7	[  0]	CALL 	  1	2	1	; slot1 = uv1"unknown"()
		  8	[  0]	TSETS	  1	0	0	; uv0"unknown".logPath = slot1
		  9	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 10	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".logPath
		 11	[  0]	RET1 	  0		2	; return uv0"unknown".logPath
	 28	[  0]	TSETS	 26	0	21	; slot0.getLogPath = slot26
	 29	[  0]	FNEW 	 26		18	; N/A:0-0: 1 args, 1 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	GGET 	  2		1	; slot2 = _env["tostring"]
		  3	[  0]	ISTC 	  4		0	; slot4 = slot0; if slot0
		  4	[  0]	JMP  	  4		1	; 	goto 6
		  5	[  0]	KSTR 	  4		0	; slot4 = ""
		  6	[  0]	CALL 	  2	2	2	; slot2 = tostring(slot3)
		  7	[  0]	TSETS	  2	1	2	; uv0"unknown".lastNote = slot2
		  8	[  0]	RET0 	  0		1	; return
	 30	[  0]	TSETS	 26	0	19	; slot0.note = slot26
	 31	[  0]	FNEW 	 26		16	; N/A:0-0: 3 args, 1 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		7	; slot3 = _env["tonumber"]
		  2	[  0]	MOV  	  5		1	; slot5 = slot1
		  3	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		  4	[  0]	ISTC 	  1		3	; slot1 = tonumber; if tonumber
		  5	[  0]	JMP  	  4		1	; 	goto 7
		  6	[  0]	KSHORT	  1		0	; slot1 = 0
		  7	[  0]	KNUM 	  3		0	; slot3 = 0.25
		  8	[  0]	ISGE 	  1		3	; if slot1 >= slot3
		  9	[  0]	JMP  	  3		1	; 	goto 11
		 10	[  0]	RET0 	  0		1	; return
		 11	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 12	[  0]	KSTR 	  5		6	; slot5 = "SLOW_OPERATION"
		 13	[  0]	KSTR 	  6		5	; slot6 = "%s took %.1f ms%s"
		 14	[  0]	MOV  	  8		6	; slot8 = slot6
		 15	[  0]	TGETS	  6	6	4	; slot6 = slot6.format
		 16	[  0]	GGET 	  9		3	; slot9 = _env["tostring"]
		 17	[  0]	ISTC 	 11		0	; slot11 = slot0; if slot0
		 18	[  0]	JMP  	 11		1	; 	goto 20
		 19	[  0]	KSTR 	 11		2	; slot11 = "operation"
		 20	[  0]	CALL 	  9	2	2	; slot9 = tostring(slot10)
		 21	[  0]	MULVN	 10	1	1	; slot10 = slot1 * 1000
		 22	[  0]	ISF  	   		2	; if not slot2
		 23	[  0]	JMP  	 11		7	; 	goto 31
		 24	[  0]	KSTR 	 11		1	; slot11 = "; "
		 25	[  0]	GGET 	 12		3	; slot12 = _env["tostring"]
		 26	[  0]	MOV  	 14		2	; slot14 = slot2
		 27	[  0]	CALL 	 12	2	2	; slot12 = tostring(slot13)
		 28	[  0]	CAT  	 11	11	12	; slot11 = slot11 .. tostring
		 29	[  0]	IST  	   		11	; if slot11
		 30	[  0]	JMP  	 12		1	; 	goto 32
		 31	[  0]	KSTR 	 11		0	; slot11 = ""
		 32	[  0]	CALL 	  6	2	5	; slot6 = <unknown table>.format(slot7, slot8, tostring, slot10)
		 33	[  0]	KNUM 	  7		0	; slot7 = 0.25
		 34	[  0]	ISLE 	  7		1	; if slot7 <= slot1
		 35	[  0]	JMP  	  7		2	; 	goto 38
		 36	[  0]	KPRI 	  7		1	; slot7 = false
		 37	[  0]	JMP  	  8		1	; 	goto 39
		 38	[  0]	KPRI 	  7		2	; slot7 = true
		 39	[  0]	CALL 	  3	1	4	;  = uv0"unknown"(slot4, slot5, <unknown table>.format)
		 40	[  0]	RET0 	  0		1	; return
	 32	[  0]	TSETS	 26	0	17	; slot0.recordOperation = slot26
	 33	[  0]	FNEW 	 26		14	; N/A:0-0: 3 args, 1 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		5	; slot3 = _env["tostring"]
		  2	[  0]	ISTC 	  5		0	; slot5 = slot0; if slot0
		  3	[  0]	JMP  	  5		1	; 	goto 5
		  4	[  0]	KSTR 	  5		4	; slot5 = "unknown error"
		  5	[  0]	CALL 	  3	2	2	; slot3 = tostring(slot4)
		  6	[  0]	ISF  	   		2	; if not slot2
		  7	[  0]	JMP  	  4		8	; 	goto 16
		  8	[  0]	ISEQS	  2		3	; if slot2 == ""
		  9	[  0]	JMP  	  4		6	; 	goto 16
		 10	[  0]	MOV  	  4		3	; slot4 = tostring
		 11	[  0]	KSTR 	  5		2	; slot5 = "
		Context: "
		 12	[  0]	GGET 	  6		5	; slot6 = _env["tostring"]
		 13	[  0]	MOV  	  8		2	; slot8 = slot2
		 14	[  0]	CALL 	  6	2	2	; slot6 = tostring(slot7)
		 15	[  0]	CAT  	  3	4	6	; slot3 = tostring .. slot5 .. tostring
		 16	[  0]	ISF  	   		1	; if not slot1
		 17	[  0]	JMP  	  4		8	; 	goto 26
		 18	[  0]	ISEQS	  1		3	; if slot1 == ""
		 19	[  0]	JMP  	  4		6	; 	goto 26
		 20	[  0]	MOV  	  4		3	; slot4 = slot3
		 21	[  0]	KSTR 	  5		1	; slot5 = "
		Traceback:
		"
		 22	[  0]	GGET 	  6		5	; slot6 = _env["tostring"]
		 23	[  0]	MOV  	  8		1	; slot8 = slot1
		 24	[  0]	CALL 	  6	2	2	; slot6 = tostring(slot7)
		 25	[  0]	CAT  	  3	4	6	; slot3 = slot4 .. slot5 .. tostring
		 26	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 27	[  0]	KSTR 	  6		0	; slot6 = "FATAL_ERROR"
		 28	[  0]	MOV  	  7		3	; slot7 = slot3
		 29	[  0]	KPRI 	  8		2	; slot8 = true
		 30	[  0]	KPRI 	  9		2	; slot9 = true
		 31	[  0]	CALL 	  4	1	5	;  = uv0"unknown"(slot5, slot6, slot7, slot8)
		 32	[  0]	RET0 	  0		1	; return
	 34	[  0]	TSETS	 26	0	15	; slot0.recordFatal = slot26
	 35	[  0]	FNEW 	 26		12	; N/A:0-0: 0 args, 2 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	3	; slot0 = uv0"unknown".earlyHandlerInstalled
		  3	[  0]	IST  	   		0	; if uv0"unknown".earlyHandlerInstalled
		  4	[  0]	JMP  	  1		3	; 	goto 8
		  5	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		  6	[  0]	IST  	   		0	; if love
		  7	[  0]	JMP  	  0		1	; 	goto 9
		  8	[  0]	UCLO 	  0		10	; nil uvs >= r0; goto 19
		  9	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 10	[  0]	KPRI 	  1		2	; slot1 = true
		 11	[  0]	TSETS	  1	0	3	; uv0"unknown".earlyHandlerInstalled = slot1
		 12	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		 13	[  0]	TGETS	  0	0	1	; slot0 = love.errorhandler
		 14	[  0]	GGET 	  1		2	; slot1 = _env["love"]
		 15	[  0]	FNEW 	  2		0	; N/A:0-0: 1 args, 2 upvalues, 8 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  1		6	; slot1 = _env["debug"]
			  2	[  0]	ISF  	   		1	; if not debug
			  3	[  0]	JMP  	  2		11	; 	goto 15
			  4	[  0]	GGET 	  1		6	; slot1 = _env["debug"]
			  5	[  0]	TGETS	  1	1	5	; slot1 = debug.traceback
			  6	[  0]	ISF  	   		1	; if not debug.traceback
			  7	[  0]	JMP  	  2		7	; 	goto 15
			  8	[  0]	GGET 	  1		6	; slot1 = _env["debug"]
			  9	[  0]	TGETS	  1	1	5	; slot1 = debug.traceback
			 10	[  0]	KSTR 	  3		4	; slot3 = ""
			 11	[  0]	KSHORT	  4		2	; slot4 = 2
			 12	[  0]	CALL 	  1	2	3	; slot1 = debug.traceback(slot2, slot3)
			 13	[  0]	IST  	   		1	; if slot1
			 14	[  0]	JMP  	  2		1	; 	goto 16
			 15	[  0]	KSTR 	  1		4	; slot1 = ""
			 16	[  0]	GGET 	  2		3	; slot2 = _env["pcall"]
			 17	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			 18	[  0]	TGETS	  4	4	2	; slot4 = uv0"unknown".recordFatal
			 19	[  0]	MOV  	  5		0	; slot5 = slot0
			 20	[  0]	MOV  	  6		1	; slot6 = slot1
			 21	[  0]	KSTR 	  7		1	; slot7 = "startup=true"
			 22	[  0]	CALL 	  2	1	5	;  = pcall(slot3, uv0"unknown".recordFatal, slot5, slot6)
			 23	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			 24	[  0]	ISF  	   		2	; if not uv1"unknown"
			 25	[  0]	JMP  	  3		3	; 	goto 29
			 26	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			 27	[  0]	MOV  	  4		0	; slot4 = slot0
			 28	[  0]	UCLO 	  0		3	; nil uvs >= r0; goto 32
			 29	[  0]	FNEW 	  2		0	; N/A:0-0: 0 args, 0 upvalues, 1 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	KSHORT	  0		1	; slot0 = 1
				  2	[  0]	RET1 	  0		2	; return slot0
			 30	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 31
			 31	[  0]	RET1 	  2		2	; return slot2
			 32	[  0]	CALLT	  2		2	; return slot2(slot3)
		 16	[  0]	TSETS	  2	1	1	; love.errorhandler = slot2
		 17	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 18
		 18	[  0]	RET0 	  0		1	; return
		 19	[  0]	RET0 	  0		1	; return
	 36	[  0]	TSETS	 26	0	13	; slot0.installEarlyErrorHandler = slot26
	 37	[  0]	FNEW 	 26		11	; N/A:0-0: 0 args, 1 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		ktable#15 = [
			[textureMiB] = 0,
			[canvases] = 0,
			[images] = 0,
			[fonts] = 0,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TDUP 	  0		15	; slot0 = copy table#k15
		  2	[  0]	GGET 	  1		17	; slot1 = _env["collectgarbage"]
		  3	[  0]	KSTR 	  3		16	; slot3 = "count"
		  4	[  0]	CALL 	  1	2	2	; slot1 = collectgarbage(slot2)
		  5	[  0]	IST  	   		1	; if slot1
		  6	[  0]	JMP  	  2		1	; 	goto 8
		  7	[  0]	KSHORT	  1		0	; slot1 = 0
		  8	[  0]	TSETS	  1	0	14	; slot0.luaKiB = slot1
		  9	[  0]	GGET 	  1		13	; slot1 = _env["love"]
		 10	[  0]	ISF  	   		1	; if not love
		 11	[  0]	JMP  	  2		48	; 	goto 60
		 12	[  0]	GGET 	  1		13	; slot1 = _env["love"]
		 13	[  0]	TGETS	  1	1	12	; slot1 = love.graphics
		 14	[  0]	ISF  	   		1	; if not love.graphics
		 15	[  0]	JMP  	  2		44	; 	goto 60
		 16	[  0]	GGET 	  1		13	; slot1 = _env["love"]
		 17	[  0]	TGETS	  1	1	12	; slot1 = love.graphics
		 18	[  0]	TGETS	  1	1	11	; slot1 = love.graphics.getStats
		 19	[  0]	ISF  	   		1	; if not love.graphics.getStats
		 20	[  0]	JMP  	  2		39	; 	goto 60
		 21	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 22	[  0]	GGET 	  3		13	; slot3 = _env["love"]
		 23	[  0]	TGETS	  3	3	12	; slot3 = love.graphics
		 24	[  0]	TGETS	  3	3	11	; slot3 = love.graphics.getStats
		 25	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		 26	[  0]	GGET 	  2		10	; slot2 = _env["type"]
		 27	[  0]	MOV  	  4		1	; slot4 = slot1
		 28	[  0]	CALL 	  2	2	2	; slot2 = type(love.graphics.getStats)
		 29	[  0]	ISNES	  2		9	; if slot2 ~= "table"
		 30	[  0]	JMP  	  2		29	; 	goto 60
		 31	[  0]	GGET 	  2		7	; slot2 = _env["tonumber"]
		 32	[  0]	TGETS	  4	1	8	; slot4 = slot1.images
		 33	[  0]	CALL 	  2	2	2	; slot2 = tonumber(love.graphics.getStats)
		 34	[  0]	IST  	   		2	; if slot2
		 35	[  0]	JMP  	  3		1	; 	goto 37
		 36	[  0]	KSHORT	  2		0	; slot2 = 0
		 37	[  0]	TSETS	  2	0	8	; slot0.images = slot2
		 38	[  0]	GGET 	  2		7	; slot2 = _env["tonumber"]
		 39	[  0]	TGETS	  4	1	6	; slot4 = slot1.canvases
		 40	[  0]	CALL 	  2	2	2	; slot2 = tonumber(love.graphics.getStats)
		 41	[  0]	IST  	   		2	; if slot2
		 42	[  0]	JMP  	  3		1	; 	goto 44
		 43	[  0]	KSHORT	  2		0	; slot2 = 0
		 44	[  0]	TSETS	  2	0	6	; slot0.canvases = slot2
		 45	[  0]	GGET 	  2		7	; slot2 = _env["tonumber"]
		 46	[  0]	TGETS	  4	1	5	; slot4 = slot1.fonts
		 47	[  0]	CALL 	  2	2	2	; slot2 = tonumber(love.graphics.getStats)
		 48	[  0]	IST  	   		2	; if slot2
		 49	[  0]	JMP  	  3		1	; 	goto 51
		 50	[  0]	KSHORT	  2		0	; slot2 = 0
		 51	[  0]	TSETS	  2	0	5	; slot0.fonts = slot2
		 52	[  0]	GGET 	  2		7	; slot2 = _env["tonumber"]
		 53	[  0]	TGETS	  4	1	3	; slot4 = slot1.texturememory
		 54	[  0]	CALL 	  2	2	2	; slot2 = tonumber(love.graphics.getStats)
		 55	[  0]	IST  	   		2	; if slot2
		 56	[  0]	JMP  	  3		1	; 	goto 58
		 57	[  0]	KSHORT	  2		0	; slot2 = 0
		 58	[  0]	DIVVN	  2	2	0	; slot2 = slot2 / 1048576
		 59	[  0]	TSETS	  2	0	4	; slot0.textureMiB = slot2
		 60	[  0]	GGET 	  1		13	; slot1 = _env["love"]
		 61	[  0]	ISF  	   		1	; if not love
		 62	[  0]	JMP  	  2		20	; 	goto 83
		 63	[  0]	GGET 	  1		13	; slot1 = _env["love"]
		 64	[  0]	TGETS	  1	1	2	; slot1 = love.audio
		 65	[  0]	ISF  	   		1	; if not love.audio
		 66	[  0]	JMP  	  2		16	; 	goto 83
		 67	[  0]	GGET 	  1		13	; slot1 = _env["love"]
		 68	[  0]	TGETS	  1	1	2	; slot1 = love.audio
		 69	[  0]	TGETS	  1	1	1	; slot1 = love.audio.getActiveSourceCount
		 70	[  0]	ISF  	   		1	; if not love.audio.getActiveSourceCount
		 71	[  0]	JMP  	  2		11	; 	goto 83
		 72	[  0]	GGET 	  1		7	; slot1 = _env["tonumber"]
		 73	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 74	[  0]	GGET 	  5		13	; slot5 = _env["love"]
		 75	[  0]	TGETS	  5	5	2	; slot5 = love.audio
		 76	[  0]	TGETS	  5	5	1	; slot5 = love.audio.getActiveSourceCount
		 77	[  0]	CALL 	  3	0	2	; MULTRES = uv0"unknown"(<unknown table>.texturememory)
		 78	[  0]	CALLM	  1	2	0	; slot1 = tonumber(, ...MULTRES)
		 79	[  0]	IST  	   		1	; if tonumber
		 80	[  0]	JMP  	  2		1	; 	goto 82
		 81	[  0]	KSHORT	  1		0	; slot1 = 0
		 82	[  0]	TSETS	  1	0	0	; slot0.audioSources = slot1
		 83	[  0]	RET1 	  0		2	; return slot0
	 38	[  0]	FNEW 	 27		10	; N/A:0-0: 2 args, 0 upvalues, 19 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		13	; slot2 = _env["type"]
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  4	[  0]	ISNES	  2		12	; if slot2 ~= "table"
		  5	[  0]	JMP  	  2		5	; 	goto 11
		  6	[  0]	GGET 	  2		13	; slot2 = _env["type"]
		  7	[  0]	MOV  	  4		1	; slot4 = slot1
		  8	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  9	[  0]	ISEQS	  2		12	; if slot2 == "table"
		 10	[  0]	JMP  	  2		2	; 	goto 13
		 11	[  0]	KSTR 	  2		11	; slot2 = "unavailable"
		 12	[  0]	RET1 	  2		2	; return slot2
		 13	[  0]	KSTR 	  2		10	; slot2 = "luaMB %.1f->%.1f, images %d->%d, canvases %d->%d, fonts %d->%d, "
		 14	[  0]	KSTR 	  3		9	; slot3 = "textureMiB %.1f->%.1f, audioSources %s->%s"
		 15	[  0]	CAT  	  2	2	3	; slot2 = slot2 .. slot3
		 16	[  0]	MOV  	  4		2	; slot4 = slot2
		 17	[  0]	TGETS	  2	2	8	; slot2 = slot2.format
		 18	[  0]	TGETS	  5	0	7	; slot5 = slot0.luaKiB
		 19	[  0]	IST  	   		5	; if <unknown table>.luaKiB
		 20	[  0]	JMP  	  6		1	; 	goto 22
		 21	[  0]	KSHORT	  5		0	; slot5 = 0
		 22	[  0]	DIVVN	  5	5	0	; slot5 = slot5 / 1024
		 23	[  0]	TGETS	  6	1	7	; slot6 = slot1.luaKiB
		 24	[  0]	IST  	   		6	; if <unknown table>.luaKiB
		 25	[  0]	JMP  	  7		1	; 	goto 27
		 26	[  0]	KSHORT	  6		0	; slot6 = 0
		 27	[  0]	DIVVN	  6	6	0	; slot6 = slot6 / 1024
		 28	[  0]	TGETS	  7	0	6	; slot7 = slot0.images
		 29	[  0]	IST  	   		7	; if <unknown table>.images
		 30	[  0]	JMP  	  8		1	; 	goto 32
		 31	[  0]	KSHORT	  7		0	; slot7 = 0
		 32	[  0]	TGETS	  8	1	6	; slot8 = slot1.images
		 33	[  0]	IST  	   		8	; if <unknown table>.images
		 34	[  0]	JMP  	  9		1	; 	goto 36
		 35	[  0]	KSHORT	  8		0	; slot8 = 0
		 36	[  0]	TGETS	  9	0	5	; slot9 = slot0.canvases
		 37	[  0]	IST  	   		9	; if <unknown table>.canvases
		 38	[  0]	JMP  	 10		1	; 	goto 40
		 39	[  0]	KSHORT	  9		0	; slot9 = 0
		 40	[  0]	TGETS	 10	1	5	; slot10 = slot1.canvases
		 41	[  0]	IST  	   		10	; if <unknown table>.canvases
		 42	[  0]	JMP  	 11		1	; 	goto 44
		 43	[  0]	KSHORT	 10		0	; slot10 = 0
		 44	[  0]	TGETS	 11	0	4	; slot11 = slot0.fonts
		 45	[  0]	IST  	   		11	; if <unknown table>.fonts
		 46	[  0]	JMP  	 12		1	; 	goto 48
		 47	[  0]	KSHORT	 11		0	; slot11 = 0
		 48	[  0]	TGETS	 12	1	4	; slot12 = slot1.fonts
		 49	[  0]	IST  	   		12	; if <unknown table>.fonts
		 50	[  0]	JMP  	 13		1	; 	goto 52
		 51	[  0]	KSHORT	 12		0	; slot12 = 0
		 52	[  0]	TGETS	 13	0	3	; slot13 = slot0.textureMiB
		 53	[  0]	IST  	   		13	; if <unknown table>.textureMiB
		 54	[  0]	JMP  	 14		1	; 	goto 56
		 55	[  0]	KSHORT	 13		0	; slot13 = 0
		 56	[  0]	TGETS	 14	1	3	; slot14 = slot1.textureMiB
		 57	[  0]	IST  	   		14	; if <unknown table>.textureMiB
		 58	[  0]	JMP  	 15		1	; 	goto 60
		 59	[  0]	KSHORT	 14		0	; slot14 = 0
		 60	[  0]	GGET 	 15		2	; slot15 = _env["tostring"]
		 61	[  0]	TGETS	 17	0	1	; slot17 = slot0.audioSources
		 62	[  0]	IST  	   		17	; if <unknown table>.audioSources
		 63	[  0]	JMP  	 18		1	; 	goto 65
		 64	[  0]	KSTR 	 17		0	; slot17 = "?"
		 65	[  0]	CALL 	 15	2	2	; slot15 = tostring(slot16)
		 66	[  0]	GGET 	 16		2	; slot16 = _env["tostring"]
		 67	[  0]	TGETS	 18	1	1	; slot18 = slot1.audioSources
		 68	[  0]	IST  	   		18	; if <unknown table>.audioSources
		 69	[  0]	JMP  	 19		1	; 	goto 71
		 70	[  0]	KSTR 	 18		0	; slot18 = "?"
		 71	[  0]	CALL 	 16	0	2	; MULTRES = tostring(slot17)
		 72	[  0]	CALLMT	  2		12	; return <unknown table>.format(slot3, slot4, slot5, slot6, slot7, slot8, slot9, slot10, slot11, slot12, slot13, ...MULTRES)
	 39	[  0]	FNEW 	 28		9	; N/A:0-0: 1 args, 10 upvalues, 23 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	12	; slot1 = uv0"unknown".emaFrameSeconds
		  3	[  0]	IST  	   		1	; if uv0"unknown".emaFrameSeconds
		  4	[  0]	JMP  	  2		1	; 	goto 6
		  5	[  0]	RET0 	  0		1	; return
		  6	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  7	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  8	[  0]	TGETS	  3	3	11	; slot3 = uv0"unknown".sessionStartedAt
		  9	[  0]	IST  	   		3	; if uv0"unknown".sessionStartedAt
		 10	[  0]	JMP  	  4		1	; 	goto 12
		 11	[  0]	MOV  	  3		0	; slot3 = slot0
		 12	[  0]	TSETS	  3	2	11	; uv0"unknown".sessionStartedAt = slot3
		 13	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 14	[  0]	TGETS	  2	2	11	; slot2 = uv0"unknown".sessionStartedAt
		 15	[  0]	SUBVV	  2	0	2	; slot2 = slot0 - uv0"unknown".sessionStartedAt
		 16	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 17	[  0]	TGETS	  3	3	10	; slot3 = uv0"unknown".baselineFrameSeconds
		 18	[  0]	IST  	   		3	; if uv0"unknown".baselineFrameSeconds
		 19	[  0]	JMP  	  3		12	; 	goto 32
		 20	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 21	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 22	[  0]	ADDVV	  3	3	4	; slot3 = uv1"unknown" + uv2"unknown"
		 23	[  0]	ISGT 	  3		2	; if slot3 > slot2
		 24	[  0]	JMP  	  3		6	; 	goto 31
		 25	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 26	[  0]	TSETS	  1	3	10	; uv0"unknown".baselineFrameSeconds = uv0"unknown".emaFrameSeconds
		 27	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 28	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 29	[  0]	CALL 	  4	2	1	; slot4 = uv3"unknown"()
		 30	[  0]	TSETS	  4	3	9	; uv0"unknown".baselineSnapshot = uv3"unknown"
		 31	[  0]	RET0 	  0		1	; return
		 32	[  0]	GGET 	  3		8	; slot3 = _env["math"]
		 33	[  0]	TGETS	  3	3	7	; slot3 = math.max
		 34	[  0]	KNUM 	  5		0	; slot5 = 1e-06
		 35	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 36	[  0]	TGETS	  6	6	10	; slot6 = uv0"unknown".baselineFrameSeconds
		 37	[  0]	CALL 	  3	2	3	; slot3 = math.max(uv3"unknown", slot5)
		 38	[  0]	DIVVV	  3	1	3	; slot3 = uv0"unknown".emaFrameSeconds / slot3
		 39	[  0]	UGET 	  4		4	; slot4 = uv4"unknwon"
		 40	[  0]	ISGT 	  4		3	; if uv4"unknown" > slot3
		 41	[  0]	JMP  	  4		3	; 	goto 45
		 42	[  0]	UGET 	  4		5	; slot4 = uv5"unknwon"
		 43	[  0]	ISLE 	  4		1	; if uv5"unknown" <= uv0"unknown".emaFrameSeconds
		 44	[  0]	JMP  	  4		2	; 	goto 47
		 45	[  0]	KPRI 	  4		1	; slot4 = false
		 46	[  0]	JMP  	  5		1	; 	goto 48
		 47	[  0]	KPRI 	  4		2	; slot4 = true
		 48	[  0]	IST  	   		4	; if slot4
		 49	[  0]	JMP  	  5		4	; 	goto 54
		 50	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 51	[  0]	KPRI 	  6		0	; slot6 = nil
		 52	[  0]	TSETS	  6	5	6	; uv0"unknown".regressionSince = slot6
		 53	[  0]	RET0 	  0		1	; return
		 54	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 55	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 56	[  0]	TGETS	  6	6	6	; slot6 = uv0"unknown".regressionSince
		 57	[  0]	IST  	   		6	; if uv0"unknown".regressionSince
		 58	[  0]	JMP  	  7		1	; 	goto 60
		 59	[  0]	MOV  	  6		0	; slot6 = slot0
		 60	[  0]	TSETS	  6	5	6	; uv0"unknown".regressionSince = slot6
		 61	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 62	[  0]	TGETS	  5	5	6	; slot5 = uv0"unknown".regressionSince
		 63	[  0]	SUBVV	  5	0	5	; slot5 = slot0 - uv0"unknown".regressionSince
		 64	[  0]	UGET 	  6		6	; slot6 = uv6"unknwon"
		 65	[  0]	ISGE 	  5		6	; if slot5 >= uv6"unknown"
		 66	[  0]	JMP  	  5		1	; 	goto 68
		 67	[  0]	RET0 	  0		1	; return
		 68	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 69	[  0]	TGETS	  5	5	5	; slot5 = uv0"unknown".lastRegressionRatio
		 70	[  0]	MULVN	  5	5	1	; slot5 = uv0"unknown".lastRegressionRatio * 1.5
		 71	[  0]	ISLE 	  5		3	; if slot5 <= slot3
		 72	[  0]	JMP  	  5		2	; 	goto 75
		 73	[  0]	KPRI 	  5		1	; slot5 = false
		 74	[  0]	JMP  	  6		1	; 	goto 76
		 75	[  0]	KPRI 	  5		2	; slot5 = true
		 76	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 77	[  0]	TGETS	  6	6	4	; slot6 = uv0"unknown".lastRegressionLog
		 78	[  0]	SUBVV	  6	0	6	; slot6 = slot0 - uv0"unknown".lastRegressionLog
		 79	[  0]	UGET 	  7		7	; slot7 = uv7"unknwon"
		 80	[  0]	ISGE 	  6		7	; if slot6 >= uv7"unknown"
		 81	[  0]	JMP  	  6		3	; 	goto 85
		 82	[  0]	IST  	   		5	; if slot5
		 83	[  0]	JMP  	  6		1	; 	goto 85
		 84	[  0]	RET0 	  0		1	; return
		 85	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 86	[  0]	TSETS	  0	6	4	; uv0"unknown".lastRegressionLog = slot0
		 87	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 88	[  0]	TSETS	  3	6	5	; uv0"unknown".lastRegressionRatio = slot3
		 89	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		 90	[  0]	CALL 	  6	2	1	; slot6 = uv3"unknown"()
		 91	[  0]	UGET 	  7		8	; slot7 = uv8"unknwon"
		 92	[  0]	KSTR 	  9		3	; slot9 = "FRAME_TIME_REGRESSION"
		 93	[  0]	KSTR 	 10		2	; slot10 = "frame time %.1f ms (%.1f FPS) is %.1fx the session baseline %.1f ms "
		 94	[  0]	KSTR 	 11		1	; slot11 = "(%.1f FPS) after %.1f min; growth: %s"
		 95	[  0]	CAT  	 10	10	11	; slot10 = slot10 .. slot11
		 96	[  0]	MOV  	 12		10	; slot12 = slot10
		 97	[  0]	TGETS	 10	10	0	; slot10 = slot10.format
		 98	[  0]	MULVN	 13	1	2	; slot13 = uv0"unknown".emaFrameSeconds * 1000
		 99	[  0]	GGET 	 14		8	; slot14 = _env["math"]
		100	[  0]	TGETS	 14	14	7	; slot14 = math.max
		101	[  0]	KNUM 	 16		0	; slot16 = 1e-06
		102	[  0]	MOV  	 17		1	; slot17 = uv0"unknown".emaFrameSeconds
		103	[  0]	CALL 	 14	2	3	; slot14 = math.max(slot15, slot16)
		104	[  0]	DIVNV	 14	14	3	; slot14 = 1 / math.max
		105	[  0]	MOV  	 15		3	; slot15 = slot3
		106	[  0]	UGET 	 16		0	; slot16 = uv0"unknwon"
		107	[  0]	TGETS	 16	16	10	; slot16 = uv0"unknown".baselineFrameSeconds
		108	[  0]	MULVN	 16	16	2	; slot16 = uv0"unknown".baselineFrameSeconds * 1000
		109	[  0]	GGET 	 17		8	; slot17 = _env["math"]
		110	[  0]	TGETS	 17	17	7	; slot17 = math.max
		111	[  0]	KNUM 	 19		0	; slot19 = 1e-06
		112	[  0]	UGET 	 20		0	; slot20 = uv0"unknwon"
		113	[  0]	TGETS	 20	20	10	; slot20 = uv0"unknown".baselineFrameSeconds
		114	[  0]	CALL 	 17	2	3	; slot17 = math.max(slot18, slot19)
		115	[  0]	DIVNV	 17	17	3	; slot17 = 1 / math.max
		116	[  0]	DIVVN	 18	2	4	; slot18 = slot2 / 60
		117	[  0]	UGET 	 19		9	; slot19 = uv9"unknwon"
		118	[  0]	UGET 	 21		0	; slot21 = uv0"unknwon"
		119	[  0]	TGETS	 21	21	9	; slot21 = uv0"unknown".baselineSnapshot
		120	[  0]	MOV  	 22		6	; slot22 = uv3"unknown"
		121	[  0]	CALL 	 19	0	3	; MULTRES = uv9"unknown"(uv0"unknown".baselineFrameSeconds, uv0"unknown".baselineSnapshot)
		122	[  0]	CALLM	 10	2	7	; slot10 = <unknown table>.format(slot11, slot12, slot13, slot14, slot15, slot16, slot17, ...MULTRES)
		123	[  0]	KPRI 	 11		2	; slot11 = true
		124	[  0]	KPRI 	 12		2	; slot12 = true
		125	[  0]	CALL 	  7	1	5	;  = uv8"unknown"(slot8, slot9, <unknown table>.format, slot11)
		126	[  0]	RET0 	  0		1	; return
	 40	[  0]	FNEW 	 29		8	; N/A:0-0: 2 args, 9 upvalues, 28 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	18	; slot2 = uv0"unknown".baselineFrameSeconds
		  3	[  0]	IST  	   		2	; if uv0"unknown".baselineFrameSeconds
		  4	[  0]	JMP  	  3		1	; 	goto 6
		  5	[  0]	RET0 	  0		1	; return
		  6	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  7	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  8	[  0]	TGETS	  4	4	17	; slot4 = uv0"unknown".hitchWindowStartedAt
		  9	[  0]	IST  	   		4	; if uv0"unknown".hitchWindowStartedAt
		 10	[  0]	JMP  	  5		1	; 	goto 12
		 11	[  0]	MOV  	  4		0	; slot4 = slot0
		 12	[  0]	TSETS	  4	3	17	; uv0"unknown".hitchWindowStartedAt = slot4
		 13	[  0]	GGET 	  3		16	; slot3 = _env["math"]
		 14	[  0]	TGETS	  3	3	15	; slot3 = math.max
		 15	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 16	[  0]	MULVV	  5	2	5	; slot5 = uv0"unknown".baselineFrameSeconds * uv1"unknown"
		 17	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 18	[  0]	CALL 	  3	2	3	; slot3 = math.max(slot4, slot5)
		 19	[  0]	ISGT 	  3		1	; if slot3 > slot1
		 20	[  0]	JMP  	  3		23	; 	goto 44
		 21	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 22	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 23	[  0]	TGETS	  4	4	14	; slot4 = uv0"unknown".hitchCount
		 24	[  0]	ADDVN	  4	4	0	; slot4 = uv0"unknown".hitchCount + 1
		 25	[  0]	TSETS	  4	3	14	; uv0"unknown".hitchCount = slot4
		 26	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 27	[  0]	TGETS	  3	3	13	; slot3 = uv0"unknown".hitchWorstSeconds
		 28	[  0]	ISGE 	  3		1	; if uv0"unknown".hitchWorstSeconds >= slot1
		 29	[  0]	JMP  	  3		14	; 	goto 44
		 30	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 31	[  0]	TSETS	  1	3	13	; uv0"unknown".hitchWorstSeconds = slot1
		 32	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 33	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 34	[  0]	TGETS	  4	4	11	; slot4 = uv0"unknown".lastUpdateSeconds
		 35	[  0]	TSETS	  4	3	12	; uv0"unknown".hitchWorstUpdate = uv0"unknown".lastUpdateSeconds
		 36	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 37	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 38	[  0]	TGETS	  4	4	9	; slot4 = uv0"unknown".lastDrawSeconds
		 39	[  0]	TSETS	  4	3	10	; uv0"unknown".hitchWorstDraw = uv0"unknown".lastDrawSeconds
		 40	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 41	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 42	[  0]	TGETS	  4	4	7	; slot4 = uv0"unknown".lastPresentSeconds
		 43	[  0]	TSETS	  4	3	8	; uv0"unknown".hitchWorstPresent = uv0"unknown".lastPresentSeconds
		 44	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 45	[  0]	TGETS	  3	3	17	; slot3 = uv0"unknown".hitchWindowStartedAt
		 46	[  0]	SUBVV	  3	0	3	; slot3 = slot0 - uv0"unknown".hitchWindowStartedAt
		 47	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 48	[  0]	ISGE 	  3		4	; if slot3 >= uv3"unknown"
		 49	[  0]	JMP  	  4		1	; 	goto 51
		 50	[  0]	RET0 	  0		1	; return
		 51	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 52	[  0]	TGETS	  4	4	14	; slot4 = uv0"unknown".hitchCount
		 53	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 54	[  0]	TGETS	  5	5	13	; slot5 = uv0"unknown".hitchWorstSeconds
		 55	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 56	[  0]	TGETS	  6	6	12	; slot6 = uv0"unknown".hitchWorstUpdate
		 57	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 58	[  0]	TGETS	  7	7	10	; slot7 = uv0"unknown".hitchWorstDraw
		 59	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 60	[  0]	TGETS	  8	8	8	; slot8 = uv0"unknown".hitchWorstPresent
		 61	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 62	[  0]	TSETS	  0	9	17	; uv0"unknown".hitchWindowStartedAt = slot0
		 63	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 64	[  0]	KSHORT	 10		0	; slot10 = 0
		 65	[  0]	TSETS	 10	9	14	; uv0"unknown".hitchCount = slot10
		 66	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 67	[  0]	KSHORT	 10		0	; slot10 = 0
		 68	[  0]	TSETS	 10	9	13	; uv0"unknown".hitchWorstSeconds = slot10
		 69	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 70	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 71	[  0]	UGET 	 11		0	; slot11 = uv0"unknwon"
		 72	[  0]	KSHORT	 12		0	; slot12 = 0
		 73	[  0]	KSHORT	 13		0	; slot13 = 0
		 74	[  0]	KSHORT	 14		0	; slot14 = 0
		 75	[  0]	TSETS	 14	11	8	; uv0"unknown".hitchWorstPresent = slot14
		 76	[  0]	TSETS	 13	10	10	; uv0"unknown".hitchWorstDraw = slot13
		 77	[  0]	TSETS	 12	9	12	; uv0"unknown".hitchWorstUpdate = slot12
		 78	[  0]	UGET 	  9		4	; slot9 = uv4"unknwon"
		 79	[  0]	ISGE 	  4		9	; if uv0"unknown".hitchCount >= uv4"unknown"
		 80	[  0]	JMP  	  9		1	; 	goto 82
		 81	[  0]	RET0 	  0		1	; return
		 82	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 83	[  0]	TGETS	  9	9	6	; slot9 = uv0"unknown".lastHitchRateLog
		 84	[  0]	SUBVV	  9	0	9	; slot9 = slot0 - uv0"unknown".lastHitchRateLog
		 85	[  0]	UGET 	 10		5	; slot10 = uv5"unknwon"
		 86	[  0]	ISGE 	  9		10	; if slot9 >= uv5"unknown"
		 87	[  0]	JMP  	  9		1	; 	goto 89
		 88	[  0]	RET0 	  0		1	; return
		 89	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 90	[  0]	TSETS	  0	9	6	; uv0"unknown".lastHitchRateLog = slot0
		 91	[  0]	UGET 	  9		6	; slot9 = uv6"unknwon"
		 92	[  0]	KSTR 	 11		5	; slot11 = "HITCH_RATE"
		 93	[  0]	KSTR 	 12		4	; slot12 = "%d long frames in %.0f s (baseline %.1f ms); worst %.1f ms "
		 94	[  0]	KSTR 	 13		3	; slot13 = "= update %.1f + draw %.1f + present %.1f; session %.1f min; growth: %s"
		 95	[  0]	CAT  	 12	12	13	; slot12 = slot12 .. slot13
		 96	[  0]	MOV  	 14		12	; slot14 = slot12
		 97	[  0]	TGETS	 12	12	2	; slot12 = slot12.format
		 98	[  0]	MOV  	 15		4	; slot15 = uv0"unknown".hitchCount
		 99	[  0]	MOV  	 16		3	; slot16 = slot3
		100	[  0]	ISTC 	 17		2	; slot17 = uv0"unknown".baselineFrameSeconds; if uv0"unknown".baselineFrameSeconds
		101	[  0]	JMP  	 17		1	; 	goto 103
		102	[  0]	KSHORT	 17		0	; slot17 = 0
		103	[  0]	MULVN	 17	17	1	; slot17 = slot17 * 1000
		104	[  0]	MULVN	 18	5	1	; slot18 = uv0"unknown".hitchWorstSeconds * 1000
		105	[  0]	MULVN	 19	6	1	; slot19 = uv0"unknown".hitchWorstUpdate * 1000
		106	[  0]	MULVN	 20	7	1	; slot20 = uv0"unknown".hitchWorstDraw * 1000
		107	[  0]	MULVN	 21	8	1	; slot21 = uv0"unknown".hitchWorstPresent * 1000
		108	[  0]	UGET 	 22		0	; slot22 = uv0"unknwon"
		109	[  0]	TGETS	 22	22	1	; slot22 = uv0"unknown".sessionStartedAt
		110	[  0]	IST  	   		22	; if uv0"unknown".sessionStartedAt
		111	[  0]	JMP  	 23		1	; 	goto 113
		112	[  0]	MOV  	 22		0	; slot22 = slot0
		113	[  0]	SUBVV	 22	0	22	; slot22 = slot0 - slot22
		114	[  0]	DIVVN	 22	22	2	; slot22 = slot22 / 60
		115	[  0]	UGET 	 23		7	; slot23 = uv7"unknwon"
		116	[  0]	UGET 	 25		0	; slot25 = uv0"unknwon"
		117	[  0]	TGETS	 25	25	0	; slot25 = uv0"unknown".baselineSnapshot
		118	[  0]	UGET 	 26		8	; slot26 = uv8"unknwon"
		119	[  0]	CALL 	 26	0	1	; MULTRES = uv8"unknown"()
		120	[  0]	CALLM	 23	0	1	; MULTRES = uv7"unknown"(slot24, ...MULTRES)
		121	[  0]	CALLM	 12	2	9	; slot12 = <unknown table>.format(slot13, slot14, uv0"unknown".hitchCount, slot16, slot17, slot18, slot19, slot20, slot21, ...MULTRES)
		122	[  0]	KPRI 	 13		2	; slot13 = true
		123	[  0]	KPRI 	 14		2	; slot14 = true
		124	[  0]	CALL 	  9	1	5	;  = uv6"unknown"(uv5"unknown", slot11, <unknown table>.format, slot13)
		125	[  0]	RET0 	  0		1	; return
	 41	[  0]	FNEW 	 30		7	; N/A:0-0: 1 args, 6 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown"()
		  3	[  0]	GGET 	  2		20	; slot2 = _env["tonumber"]
		  4	[  0]	MOV  	  4		0	; slot4 = slot0
		  5	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		  6	[  0]	ISTC 	  0		2	; slot0 = slot2; if slot2
		  7	[  0]	JMP  	  3		1	; 	goto 9
		  8	[  0]	KSHORT	  0		0	; slot0 = 0
		  9	[  0]	ISNEV	  0		0	; if slot0 ~= slot0
		 10	[  0]	JMP  	  2		7	; 	goto 18
		 11	[  0]	KSHORT	  2		0	; slot2 = 0
		 12	[  0]	ISLT 	  0		2	; if slot0 < slot2
		 13	[  0]	JMP  	  2		4	; 	goto 18
		 14	[  0]	GGET 	  2		19	; slot2 = _env["math"]
		 15	[  0]	TGETS	  2	2	18	; slot2 = math.huge
		 16	[  0]	ISNEV	  0		2	; if slot0 ~= math.huge
		 17	[  0]	JMP  	  2		1	; 	goto 19
		 18	[  0]	KSHORT	  0		0	; slot0 = 0
		 19	[  0]	KPRI 	  2		2	; slot2 = true
		 20	[  0]	KPRI 	  3		2	; slot3 = true
		 21	[  0]	GGET 	  4		17	; slot4 = _env["love"]
		 22	[  0]	ISF  	   		4	; if not love
		 23	[  0]	JMP  	  5		34	; 	goto 58
		 24	[  0]	GGET 	  4		17	; slot4 = _env["love"]
		 25	[  0]	TGETS	  4	4	16	; slot4 = love.window
		 26	[  0]	ISF  	   		4	; if not love.window
		 27	[  0]	JMP  	  5		30	; 	goto 58
		 28	[  0]	GGET 	  4		17	; slot4 = _env["love"]
		 29	[  0]	TGETS	  4	4	16	; slot4 = love.window
		 30	[  0]	TGETS	  4	4	15	; slot4 = love.window.hasFocus
		 31	[  0]	ISF  	   		4	; if not love.window.hasFocus
		 32	[  0]	JMP  	  5		10	; 	goto 43
		 33	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 34	[  0]	GGET 	  6		17	; slot6 = _env["love"]
		 35	[  0]	TGETS	  6	6	16	; slot6 = love.window
		 36	[  0]	TGETS	  6	6	15	; slot6 = love.window.hasFocus
		 37	[  0]	CALL 	  4	2	2	; slot4 = uv1"unknown"(slot5)
		 38	[  0]	ISNEP	  4		1	; if uv1"unknown" ~= false
		 39	[  0]	JMP  	  4		2	; 	goto 42
		 40	[  0]	KPRI 	  2		1	; slot2 = false
		 41	[  0]	JMP  	  4		1	; 	goto 43
		 42	[  0]	KPRI 	  2		2	; slot2 = true
		 43	[  0]	GGET 	  4		17	; slot4 = _env["love"]
		 44	[  0]	TGETS	  4	4	16	; slot4 = love.window
		 45	[  0]	TGETS	  4	4	14	; slot4 = love.window.isVisible
		 46	[  0]	ISF  	   		4	; if not love.window.isVisible
		 47	[  0]	JMP  	  5		10	; 	goto 58
		 48	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 49	[  0]	GGET 	  6		17	; slot6 = _env["love"]
		 50	[  0]	TGETS	  6	6	16	; slot6 = love.window
		 51	[  0]	TGETS	  6	6	14	; slot6 = love.window.isVisible
		 52	[  0]	CALL 	  4	2	2	; slot4 = uv1"unknown"(slot5)
		 53	[  0]	ISNEP	  4		1	; if uv1"unknown" ~= false
		 54	[  0]	JMP  	  4		2	; 	goto 57
		 55	[  0]	KPRI 	  3		1	; slot3 = false
		 56	[  0]	JMP  	  4		1	; 	goto 58
		 57	[  0]	KPRI 	  3		2	; slot3 = true
		 58	[  0]	ISF  	   		2	; if not slot2
		 59	[  0]	JMP  	  4		2	; 	goto 62
		 60	[  0]	IST  	   		3	; if slot3
		 61	[  0]	JMP  	  4		7	; 	goto 69
		 62	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 63	[  0]	KPRI 	  5		0	; slot5 = nil
		 64	[  0]	TSETS	  5	4	13	; uv2"unknown".emaFrameSeconds = slot5
		 65	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 66	[  0]	KSHORT	  5		0	; slot5 = 0
		 67	[  0]	TSETS	  5	4	12	; uv2"unknown".slowSeconds = slot5
		 68	[  0]	RET0 	  0		1	; return
		 69	[  0]	GGET 	  4		19	; slot4 = _env["math"]
		 70	[  0]	TGETS	  4	4	11	; slot4 = math.min
		 71	[  0]	MOV  	  6		0	; slot6 = slot0
		 72	[  0]	KNUM 	  7		0	; slot7 = 0.5
		 73	[  0]	CALL 	  4	2	3	; slot4 = math.min(slot5, slot6)
		 74	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 75	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 76	[  0]	TGETS	  6	6	13	; slot6 = uv2"unknown".emaFrameSeconds
		 77	[  0]	ISF  	   		6	; if not uv2"unknown".emaFrameSeconds
		 78	[  0]	JMP  	  7		7	; 	goto 86
		 79	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 80	[  0]	TGETS	  6	6	13	; slot6 = uv2"unknown".emaFrameSeconds
		 81	[  0]	MULVN	  6	6	1	; slot6 = uv2"unknown".emaFrameSeconds * 0.9
		 82	[  0]	MULVN	  7	4	2	; slot7 = math.min * 0.1
		 83	[  0]	ADDVV	  6	6	7	; slot6 = slot6 + slot7
		 84	[  0]	IST  	   		6	; if slot6
		 85	[  0]	JMP  	  7		1	; 	goto 87
		 86	[  0]	MOV  	  6		4	; slot6 = math.min
		 87	[  0]	TSETS	  6	5	13	; uv2"unknown".emaFrameSeconds = math.min
		 88	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
		 89	[  0]	MOV  	  7		1	; slot7 = slot1
		 90	[  0]	CALL 	  5	1	2	;  = uv3"unknown"(math.min)
		 91	[  0]	UGET 	  5		4	; slot5 = uv4"unknwon"
		 92	[  0]	MOV  	  7		1	; slot7 = slot1
		 93	[  0]	MOV  	  8		4	; slot8 = math.min
		 94	[  0]	CALL 	  5	1	3	;  = uv4"unknown"(math.min, slot7)
		 95	[  0]	KNUM 	  5		3	; slot5 = 0.25
		 96	[  0]	ISGT 	  5		0	; if slot5 > slot0
		 97	[  0]	JMP  	  5		26	; 	goto 124
		 98	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 99	[  0]	TGETS	  5	5	10	; slot5 = uv2"unknown".lastStallLog
		100	[  0]	SUBVV	  5	1	5	; slot5 = slot1 - uv2"unknown".lastStallLog
		101	[  0]	KSHORT	  6		2	; slot6 = 2
		102	[  0]	ISGT 	  6		5	; if slot6 > slot5
		103	[  0]	JMP  	  5		20	; 	goto 124
		104	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		105	[  0]	TSETS	  1	5	10	; uv2"unknown".lastStallLog = slot1
		106	[  0]	UGET 	  5		5	; slot5 = uv5"unknwon"
		107	[  0]	KSTR 	  7		9	; slot7 = "FRAME_STALL"
		108	[  0]	KSTR 	  8		8	; slot8 = "frame interval %.1f ms; previous update %.1f ms; previous draw %.1f ms; previous present %.1f ms"
		109	[  0]	MOV  	 10		8	; slot10 = slot8
		110	[  0]	TGETS	  8	8	7	; slot8 = slot8.format
		111	[  0]	MULVN	 11	0	4	; slot11 = slot0 * 1000
		112	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		113	[  0]	TGETS	 12	12	6	; slot12 = uv2"unknown".lastUpdateSeconds
		114	[  0]	MULVN	 12	12	4	; slot12 = uv2"unknown".lastUpdateSeconds * 1000
		115	[  0]	UGET 	 13		2	; slot13 = uv2"unknwon"
		116	[  0]	TGETS	 13	13	5	; slot13 = uv2"unknown".lastDrawSeconds
		117	[  0]	MULVN	 13	13	4	; slot13 = uv2"unknown".lastDrawSeconds * 1000
		118	[  0]	UGET 	 14		2	; slot14 = uv2"unknwon"
		119	[  0]	TGETS	 14	14	4	; slot14 = uv2"unknown".lastPresentSeconds
		120	[  0]	MULVN	 14	14	4	; slot14 = uv2"unknown".lastPresentSeconds * 1000
		121	[  0]	CALL 	  8	2	6	; slot8 = <unknown table>.format(slot9, slot10, slot11, slot12, slot13)
		122	[  0]	KPRI 	  9		2	; slot9 = true
		123	[  0]	CALL 	  5	1	4	;  = uv5"unknown"(slot6, slot7, <unknown table>.format)
		124	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		125	[  0]	TGETS	  5	5	13	; slot5 = uv2"unknown".emaFrameSeconds
		126	[  0]	IST  	   		5	; if uv2"unknown".emaFrameSeconds
		127	[  0]	JMP  	  6		1	; 	goto 129
		128	[  0]	KSHORT	  5		0	; slot5 = 0
		129	[  0]	KNUM 	  6		5	; slot6 = 0.06666666666666667
		130	[  0]	ISGT 	  6		5	; if slot6 > slot5
		131	[  0]	JMP  	  5		48	; 	goto 180
		132	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		133	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		134	[  0]	TGETS	  6	6	12	; slot6 = uv2"unknown".slowSeconds
		135	[  0]	GGET 	  7		19	; slot7 = _env["math"]
		136	[  0]	TGETS	  7	7	11	; slot7 = math.min
		137	[  0]	MOV  	  9		0	; slot9 = slot0
		138	[  0]	KNUM 	 10		3	; slot10 = 0.25
		139	[  0]	CALL 	  7	2	3	; slot7 = math.min(<unknown table>.format, slot9)
		140	[  0]	ADDVV	  6	6	7	; slot6 = uv2"unknown".slowSeconds + math.min
		141	[  0]	TSETS	  6	5	12	; uv2"unknown".slowSeconds = slot6
		142	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		143	[  0]	TGETS	  5	5	12	; slot5 = uv2"unknown".slowSeconds
		144	[  0]	KSHORT	  6		1	; slot6 = 1
		145	[  0]	ISGT 	  6		5	; if slot6 > uv2"unknown".slowSeconds
		146	[  0]	JMP  	  5		43	; 	goto 190
		147	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		148	[  0]	TGETS	  5	5	3	; slot5 = uv2"unknown".lastLowFpsLog
		149	[  0]	SUBVV	  5	1	5	; slot5 = slot1 - uv2"unknown".lastLowFpsLog
		150	[  0]	KSHORT	  6		15	; slot6 = 15
		151	[  0]	ISGT 	  6		5	; if slot6 > slot5
		152	[  0]	JMP  	  5		37	; 	goto 190
		153	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		154	[  0]	TSETS	  1	5	3	; uv2"unknown".lastLowFpsLog = slot1
		155	[  0]	UGET 	  5		5	; slot5 = uv5"unknwon"
		156	[  0]	KSTR 	  7		2	; slot7 = "LOW_FPS"
		157	[  0]	KSTR 	  8		1	; slot8 = "estimated FPS %.1f; update %.1f ms; draw %.1f ms; present %.1f ms"
		158	[  0]	MOV  	 10		8	; slot10 = slot8
		159	[  0]	TGETS	  8	8	7	; slot8 = slot8.format
		160	[  0]	GGET 	 11		19	; slot11 = _env["math"]
		161	[  0]	TGETS	 11	11	0	; slot11 = math.max
		162	[  0]	KNUM 	 13		6	; slot13 = 0.001
		163	[  0]	UGET 	 14		2	; slot14 = uv2"unknwon"
		164	[  0]	TGETS	 14	14	13	; slot14 = uv2"unknown".emaFrameSeconds
		165	[  0]	CALL 	 11	2	3	; slot11 = math.max(slot12, slot13)
		166	[  0]	DIVNV	 11	11	7	; slot11 = 1 / math.max
		167	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		168	[  0]	TGETS	 12	12	6	; slot12 = uv2"unknown".lastUpdateSeconds
		169	[  0]	MULVN	 12	12	4	; slot12 = uv2"unknown".lastUpdateSeconds * 1000
		170	[  0]	UGET 	 13		2	; slot13 = uv2"unknwon"
		171	[  0]	TGETS	 13	13	5	; slot13 = uv2"unknown".lastDrawSeconds
		172	[  0]	MULVN	 13	13	4	; slot13 = uv2"unknown".lastDrawSeconds * 1000
		173	[  0]	UGET 	 14		2	; slot14 = uv2"unknwon"
		174	[  0]	TGETS	 14	14	4	; slot14 = uv2"unknown".lastPresentSeconds
		175	[  0]	MULVN	 14	14	4	; slot14 = uv2"unknown".lastPresentSeconds * 1000
		176	[  0]	CALL 	  8	2	6	; slot8 = <unknown table>.format(slot9, slot10, slot11, slot12, slot13)
		177	[  0]	KPRI 	  9		2	; slot9 = true
		178	[  0]	CALL 	  5	1	4	;  = uv5"unknown"(slot6, slot7, <unknown table>.format)
		179	[  0]	JMP  	  5		10	; 	goto 190
		180	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		181	[  0]	GGET 	  6		19	; slot6 = _env["math"]
		182	[  0]	TGETS	  6	6	0	; slot6 = math.max
		183	[  0]	KSHORT	  8		0	; slot8 = 0
		184	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
		185	[  0]	TGETS	  9	9	12	; slot9 = uv2"unknown".slowSeconds
		186	[  0]	MULVN	 10	0	8	; slot10 = slot0 * 2
		187	[  0]	SUBVV	  9	9	10	; slot9 = uv2"unknown".slowSeconds - slot10
		188	[  0]	CALL 	  6	2	3	; slot6 = math.max(slot7, slot8)
		189	[  0]	TSETS	  6	5	12	; uv2"unknown".slowSeconds = math.max
		190	[  0]	RET0 	  0		1	; return
	 42	[  0]	FNEW 	 31		6	; N/A:0-0: 1 args, 3 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		6	; slot1 = _env["math"]
		  2	[  0]	TGETS	  1	1	5	; slot1 = math.max
		  3	[  0]	KSHORT	  3		0	; slot3 = 0
		  4	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  5	[  0]	CALL 	  4	2	1	; slot4 = uv0"unknown"()
		  6	[  0]	SUBVV	  4	4	0	; slot4 = uv0"unknown" - slot0
		  7	[  0]	CALL 	  1	2	3	; slot1 = math.max(slot2, slot3)
		  8	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  9	[  0]	TSETS	  1	2	4	; uv1"unknown".lastUpdateSeconds = slot1
		 10	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 11	[  0]	CALL 	  2	2	1	; slot2 = uv0"unknown"()
		 12	[  0]	KNUM 	  3		0	; slot3 = 0.25
		 13	[  0]	ISGT 	  3		1	; if slot3 > slot1
		 14	[  0]	JMP  	  3		17	; 	goto 32
		 15	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 16	[  0]	TGETS	  3	3	3	; slot3 = uv1"unknown".lastSlowUpdateLog
		 17	[  0]	SUBVV	  3	2	3	; slot3 = uv0"unknown" - uv1"unknown".lastSlowUpdateLog
		 18	[  0]	KSHORT	  4		2	; slot4 = 2
		 19	[  0]	ISGT 	  4		3	; if slot4 > slot3
		 20	[  0]	JMP  	  3		11	; 	goto 32
		 21	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 22	[  0]	TSETS	  2	3	3	; uv1"unknown".lastSlowUpdateLog = uv0"unknown"
		 23	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 24	[  0]	KSTR 	  5		2	; slot5 = "SLOW_UPDATE"
		 25	[  0]	KSTR 	  6		1	; slot6 = "game update took %.1f ms"
		 26	[  0]	MOV  	  8		6	; slot8 = slot6
		 27	[  0]	TGETS	  6	6	0	; slot6 = slot6.format
		 28	[  0]	MULVN	  9	1	1	; slot9 = slot1 * 1000
		 29	[  0]	CALL 	  6	2	3	; slot6 = <unknown table>.format(slot7, slot8)
		 30	[  0]	KPRI 	  7		2	; slot7 = true
		 31	[  0]	CALL 	  3	1	4	;  = uv2"unknown"(slot4, slot5, <unknown table>.format)
		 32	[  0]	RET0 	  0		1	; return
	 43	[  0]	FNEW 	 32		5	; N/A:0-0: 1 args, 3 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		6	; slot1 = _env["math"]
		  2	[  0]	TGETS	  1	1	5	; slot1 = math.max
		  3	[  0]	KSHORT	  3		0	; slot3 = 0
		  4	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  5	[  0]	CALL 	  4	2	1	; slot4 = uv0"unknown"()
		  6	[  0]	SUBVV	  4	4	0	; slot4 = uv0"unknown" - slot0
		  7	[  0]	CALL 	  1	2	3	; slot1 = math.max(slot2, slot3)
		  8	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  9	[  0]	TSETS	  1	2	4	; uv1"unknown".lastDrawSeconds = slot1
		 10	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 11	[  0]	CALL 	  2	2	1	; slot2 = uv0"unknown"()
		 12	[  0]	KNUM 	  3		0	; slot3 = 0.25
		 13	[  0]	ISGT 	  3		1	; if slot3 > slot1
		 14	[  0]	JMP  	  3		17	; 	goto 32
		 15	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 16	[  0]	TGETS	  3	3	3	; slot3 = uv1"unknown".lastSlowDrawLog
		 17	[  0]	SUBVV	  3	2	3	; slot3 = uv0"unknown" - uv1"unknown".lastSlowDrawLog
		 18	[  0]	KSHORT	  4		2	; slot4 = 2
		 19	[  0]	ISGT 	  4		3	; if slot4 > slot3
		 20	[  0]	JMP  	  3		11	; 	goto 32
		 21	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 22	[  0]	TSETS	  2	3	3	; uv1"unknown".lastSlowDrawLog = uv0"unknown"
		 23	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 24	[  0]	KSTR 	  5		2	; slot5 = "SLOW_DRAW"
		 25	[  0]	KSTR 	  6		1	; slot6 = "render submission took %.1f ms"
		 26	[  0]	MOV  	  8		6	; slot8 = slot6
		 27	[  0]	TGETS	  6	6	0	; slot6 = slot6.format
		 28	[  0]	MULVN	  9	1	1	; slot9 = slot1 * 1000
		 29	[  0]	CALL 	  6	2	3	; slot6 = <unknown table>.format(slot7, slot8)
		 30	[  0]	KPRI 	  7		2	; slot7 = true
		 31	[  0]	CALL 	  3	1	4	;  = uv2"unknown"(slot4, slot5, <unknown table>.format)
		 32	[  0]	RET0 	  0		1	; return
	 44	[  0]	FNEW 	 33		4	; N/A:0-0: 1 args, 3 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		6	; slot1 = _env["math"]
		  2	[  0]	TGETS	  1	1	5	; slot1 = math.max
		  3	[  0]	KSHORT	  3		0	; slot3 = 0
		  4	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  5	[  0]	CALL 	  4	2	1	; slot4 = uv0"unknown"()
		  6	[  0]	SUBVV	  4	4	0	; slot4 = uv0"unknown" - slot0
		  7	[  0]	CALL 	  1	2	3	; slot1 = math.max(slot2, slot3)
		  8	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  9	[  0]	TSETS	  1	2	4	; uv1"unknown".lastPresentSeconds = slot1
		 10	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 11	[  0]	CALL 	  2	2	1	; slot2 = uv0"unknown"()
		 12	[  0]	KNUM 	  3		0	; slot3 = 0.25
		 13	[  0]	ISGT 	  3		1	; if slot3 > slot1
		 14	[  0]	JMP  	  3		17	; 	goto 32
		 15	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 16	[  0]	TGETS	  3	3	3	; slot3 = uv1"unknown".lastSlowPresentLog
		 17	[  0]	SUBVV	  3	2	3	; slot3 = uv0"unknown" - uv1"unknown".lastSlowPresentLog
		 18	[  0]	KSHORT	  4		2	; slot4 = 2
		 19	[  0]	ISGT 	  4		3	; if slot4 > slot3
		 20	[  0]	JMP  	  3		11	; 	goto 32
		 21	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 22	[  0]	TSETS	  2	3	3	; uv1"unknown".lastSlowPresentLog = uv0"unknown"
		 23	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 24	[  0]	KSTR 	  5		2	; slot5 = "SLOW_PRESENT"
		 25	[  0]	KSTR 	  6		1	; slot6 = "buffer presentation took %.1f ms"
		 26	[  0]	MOV  	  8		6	; slot8 = slot6
		 27	[  0]	TGETS	  6	6	0	; slot6 = slot6.format
		 28	[  0]	MULVN	  9	1	1	; slot9 = slot1 * 1000
		 29	[  0]	CALL 	  6	2	3	; slot6 = <unknown table>.format(slot7, slot8)
		 30	[  0]	KPRI 	  7		2	; slot7 = true
		 31	[  0]	CALL 	  3	1	4	;  = uv2"unknown"(slot4, slot5, <unknown table>.format)
		 32	[  0]	RET0 	  0		1	; return
	 45	[  0]	FNEW 	 34		2	; N/A:0-0: 0 args, 1 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	KPRI 	  2		2	; slot2 = true
		  3	[  0]	CALL 	  0	1	2	;  = uv0"unknown"(slot1)
		  4	[  0]	RET0 	  0		1	; return
	 46	[  0]	TSETS	 34	0	3	; slot0.shutdown = slot34
	 47	[  0]	FNEW 	 34		0	; N/A:0-0: 0 args, 7 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	10	; slot0 = uv0"unknown".installed
		  3	[  0]	IST  	   		0	; if uv0"unknown".installed
		  4	[  0]	JMP  	  1		3	; 	goto 8
		  5	[  0]	GGET 	  0		9	; slot0 = _env["love"]
		  6	[  0]	IST  	   		0	; if love
		  7	[  0]	JMP  	  0		1	; 	goto 9
		  8	[  0]	UCLO 	  0		37	; nil uvs >= r0; goto 46
		  9	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 10	[  0]	KPRI 	  1		2	; slot1 = true
		 11	[  0]	TSETS	  1	0	10	; uv0"unknown".installed = slot1
		 12	[  0]	GGET 	  0		9	; slot0 = _env["love"]
		 13	[  0]	TGETS	  0	0	8	; slot0 = love.update
		 14	[  0]	ISF  	   		0	; if not love.update
		 15	[  0]	JMP  	  1		3	; 	goto 19
		 16	[  0]	GGET 	  1		9	; slot1 = _env["love"]
		 17	[  0]	FNEW 	  2		7	; N/A:0-0: 1 args, 4 upvalues, 6 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown"()
			  3	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  4	[  0]	MOV  	  4		0	; slot4 = slot0
			  5	[  0]	CALL 	  2	1	2	;  = uv1"unknown"(slot3)
			  6	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
			  7	[  0]	MOV  	  4		0	; slot4 = slot0
			  8	[  0]	CALL 	  2	2	2	; slot2 = uv2"unknown"(slot3)
			  9	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
			 10	[  0]	MOV  	  5		1	; slot5 = slot1
			 11	[  0]	CALL 	  3	1	2	;  = uv3"unknown"(slot4)
			 12	[  0]	RET1 	  2		2	; return slot2
		 18	[  0]	TSETS	  2	1	8	; love.update = slot2
		 19	[  0]	GGET 	  1		9	; slot1 = _env["love"]
		 20	[  0]	TGETS	  1	1	6	; slot1 = love.draw
		 21	[  0]	ISF  	   		1	; if not love.draw
		 22	[  0]	JMP  	  2		3	; 	goto 26
		 23	[  0]	GGET 	  2		9	; slot2 = _env["love"]
		 24	[  0]	FNEW 	  3		5	; N/A:0-0: 0 args, 3 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	CALL 	  0	2	1	; slot0 = uv0"unknown"()
			  3	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			  4	[  0]	CALL 	  1	2	1	; slot1 = uv1"unknown"()
			  5	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
			  6	[  0]	MOV  	  4		0	; slot4 = slot0
			  7	[  0]	CALL 	  2	1	2	;  = uv2"unknown"(slot3)
			  8	[  0]	RET1 	  1		2	; return slot1
		 25	[  0]	TSETS	  3	2	6	; love.draw = slot3
		 26	[  0]	GGET 	  2		9	; slot2 = _env["love"]
		 27	[  0]	TGETS	  2	2	4	; slot2 = love.graphics
		 28	[  0]	ISF  	   		2	; if not love.graphics
		 29	[  0]	JMP  	  3		3	; 	goto 33
		 30	[  0]	GGET 	  2		9	; slot2 = _env["love"]
		 31	[  0]	TGETS	  2	2	4	; slot2 = love.graphics
		 32	[  0]	TGETS	  2	2	3	; slot2 = love.graphics.present
		 33	[  0]	ISF  	   		2	; if not love.graphics.present
		 34	[  0]	JMP  	  3		4	; 	goto 39
		 35	[  0]	GGET 	  3		9	; slot3 = _env["love"]
		 36	[  0]	TGETS	  3	3	4	; slot3 = love.graphics
		 37	[  0]	FNEW 	  4		2	; N/A:0-0: 0+ args, 3 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	CALL 	  0	2	1	; slot0 = uv0"unknown"()
			  3	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			  4	[  0]	VARG 	  3	0	0	; MULTRES = ...
			  5	[  0]	CALLM	  1	2	0	; slot1 = uv1"unknown"(, ...MULTRES)
			  6	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
			  7	[  0]	MOV  	  4		0	; slot4 = slot0
			  8	[  0]	CALL 	  2	1	2	;  = uv2"unknown"(slot3)
			  9	[  0]	RET1 	  1		2	; return uv1"unknown"
		 38	[  0]	TSETS	  4	3	3	; love.graphics.present = slot4
		 39	[  0]	GGET 	  3		9	; slot3 = _env["love"]
		 40	[  0]	TGETS	  3	3	1	; slot3 = love.quit
		 41	[  0]	GGET 	  4		9	; slot4 = _env["love"]
		 42	[  0]	FNEW 	  5		0	; N/A:0-0: 0+ args, 2 upvalues, 3 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	ISF  	   		0	; if not uv0"unknown"
			  3	[  0]	JMP  	  1		5	; 	goto 9
			  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  5	[  0]	VARG 	  2	0	0	; MULTRES = ...
			  6	[  0]	CALLM	  0	2	0	; slot0 = uv0"unknown"(, ...MULTRES)
			  7	[  0]	IST  	   		0	; if slot0
			  8	[  0]	JMP  	  1		1	; 	goto 10
			  9	[  0]	KPRI 	  0		0	; slot0 = nil
			 10	[  0]	ISNEP	  0		2	; if slot0 ~= true
			 11	[  0]	JMP  	  1		2	; 	goto 14
			 12	[  0]	KPRI 	  1		2	; slot1 = true
			 13	[  0]	RET1 	  1		2	; return slot1
			 14	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			 15	[  0]	TGETS	  1	1	0	; slot1 = uv1"unknown".shutdown
			 16	[  0]	CALL 	  1	1	1	;  = uv1"unknown".shutdown()
			 17	[  0]	RET1 	  0		2	; return slot0
		 43	[  0]	TSETS	  5	4	1	; love.quit = slot5
		 44	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 45
		 45	[  0]	RET0 	  0		1	; return
		 46	[  0]	RET0 	  0		1	; return
	 48	[  0]	TSETS	 34	0	1	; slot0.install = slot34
	 49	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 50
	 50	[  0]	RET1 	  0		2	; return slot0
	
