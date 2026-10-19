;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\presentation_pacer.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 18 slots
	;;;; constant tables ;;;;
	ktable#28 = [
		[hidden] = false,
		[focused] = true,
		[presentSuppressed] = false,
		[vsync] = true,
		[lastPresentSeconds] = 0,
		[installed] = false,
		[lastUpdateSeconds] = 0,
		[lastDrawSeconds] = 0,
		[lastSleepSeconds] = 0,
		[lastEventSeconds] = 0,
		]
	
	
	;;;; instructions ;;;;
	  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
	  2	[  0]	KSHORT	  1		60	; slot1 = 60
	  3	[  0]	KSHORT	  2		30	; slot2 = 30
	  4	[  0]	KSHORT	  3		1000	; slot3 = 1000
	  5	[  0]	KNUM 	  4		0	; slot4 = 0.001
	  6	[  0]	TDUP 	  5		28	; slot5 = copy table#k28
	  7	[  0]	TSETS	  1	5	27	; slot5.refreshHz = slot1
	  8	[  0]	TSETS	  1	5	26	; slot5.lastTargetHz = slot1
	  9	[  0]	FNEW 	  6		25	; N/A:0-0: 1+ args, 0 upvalues, 8 slots
		
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
		 11	[  0]	CALLM	  1	5	1	; slot1, slot2, slot3, slot4 = pcall(slot2, ...MULTRES)
		 12	[  0]	ISF  	   		1	; if not slot1
		 13	[  0]	JMP  	  5		4	; 	goto 18
		 14	[  0]	MOV  	  5		2	; slot5 = slot2
		 15	[  0]	MOV  	  6		3	; slot6 = slot3
		 16	[  0]	MOV  	  7		4	; slot7 = slot4
		 17	[  0]	RET  	  5		4	; return slot5, slot6, slot7
		 18	[  0]	KPRI 	  5		0	; slot5 = nil
		 19	[  0]	RET1 	  5		2	; return slot5
	 10	[  0]	FNEW 	  7		24	; N/A:0-0: 1 args, 1 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		4	; slot1 = _env["jit"]
		  2	[  0]	ISF  	   		1	; if not jit
		  3	[  0]	JMP  	  2		6	; 	goto 10
		  4	[  0]	GGET 	  1		4	; slot1 = _env["jit"]
		  5	[  0]	TGETS	  1	1	3	; slot1 = jit.os
		  6	[  0]	ISNES	  1		2	; if jit.os ~= "Windows"
		  7	[  0]	JMP  	  1		2	; 	goto 10
		  8	[  0]	KPRI 	  1		2	; slot1 = true
		  9	[  0]	RET1 	  1		2	; return slot1
		 10	[  0]	ISFC 	  1		0	; slot1 = slot0; if not slot0
		 11	[  0]	JMP  	  1		1	; 	goto 13
		 12	[  0]	TGETS	  1	0	1	; slot1 = slot0.system
		 13	[  0]	ISFC 	  2		1	; slot2 = <unknown table>.system; if not <unknown table>.system
		 14	[  0]	JMP  	  2		11	; 	goto 26
		 15	[  0]	TGETS	  2	1	0	; slot2 = <unknown table>.system.getOS
		 16	[  0]	ISF  	   		2	; if not <unknown table>.system.getOS
		 17	[  0]	JMP  	  3		8	; 	goto 26
		 18	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 19	[  0]	TGETS	  4	1	0	; slot4 = <unknown table>.system.getOS
		 20	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown"(slot3)
		 21	[  0]	ISEQS	  2		2	; if slot2 == "Windows"
		 22	[  0]	JMP  	  2		2	; 	goto 25
		 23	[  0]	KPRI 	  2		1	; slot2 = false
		 24	[  0]	JMP  	  3		1	; 	goto 26
		 25	[  0]	KPRI 	  2		2	; slot2 = true
		 26	[  0]	RET1 	  2		2	; return slot2
	 11	[  0]	FNEW 	  8		23	; N/A:0-0: 1 args, 1 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  1		0	; slot1 = slot0; if not slot0
		  2	[  0]	JMP  	  1		1	; 	goto 4
		  3	[  0]	TGETS	  1	0	3	; slot1 = slot0.timer
		  4	[  0]	ISF  	   		1	; if not <unknown table>.timer
		  5	[  0]	JMP  	  2		8	; 	goto 14
		  6	[  0]	TGETS	  2	1	2	; slot2 = <unknown table>.timer.getTime
		  7	[  0]	ISF  	   		2	; if not <unknown table>.timer.getTime
		  8	[  0]	JMP  	  3		5	; 	goto 14
		  9	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 10	[  0]	TGETS	  4	1	2	; slot4 = <unknown table>.timer.getTime
		 11	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown"(slot3)
		 12	[  0]	IST  	   		2	; if slot2
		 13	[  0]	JMP  	  3		3	; 	goto 17
		 14	[  0]	GGET 	  2		1	; slot2 = _env["os"]
		 15	[  0]	TGETS	  2	2	0	; slot2 = os.clock
		 16	[  0]	CALL 	  2	2	1	; slot2 = os.clock()
		 17	[  0]	RET1 	  2		2	; return os.clock
	 12	[  0]	FNEW 	  9		21	; N/A:0-0: 0 args, 4 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	11	; slot0 = uv0"unknown".loveApi
		  3	[  0]	IST  	   		0	; if uv0"unknown".loveApi
		  4	[  0]	JMP  	  1		1	; 	goto 6
		  5	[  0]	GGET 	  0		10	; slot0 = _env["love"]
		  6	[  0]	ISFC 	  1		0	; slot1 = love; if not love
		  7	[  0]	JMP  	  1		1	; 	goto 9
		  8	[  0]	TGETS	  1	0	9	; slot1 = love.window
		  9	[  0]	ISF  	   		1	; if not love.window
		 10	[  0]	JMP  	  2		3	; 	goto 14
		 11	[  0]	TGETS	  2	1	8	; slot2 = love.window.getMode
		 12	[  0]	IST  	   		2	; if love.window.getMode
		 13	[  0]	JMP  	  2		1	; 	goto 15
		 14	[  0]	RET0 	  0		1	; return
		 15	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 16	[  0]	TGETS	  4	1	8	; slot4 = love.window.getMode
		 17	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = uv1"unknown"(slot3)
		 18	[  0]	GGET 	  5		7	; slot5 = _env["type"]
		 19	[  0]	MOV  	  7		4	; slot7 = love.window.getMode
		 20	[  0]	CALL 	  5	2	2	; slot5 = type(slot6)
		 21	[  0]	ISNES	  5		6	; if type ~= "table"
		 22	[  0]	JMP  	  5		5	; 	goto 28
		 23	[  0]	GGET 	  5		5	; slot5 = _env["tonumber"]
		 24	[  0]	TGETS	  7	4	4	; slot7 = love.window.getMode.refreshrate
		 25	[  0]	CALL 	  5	2	2	; slot5 = tonumber(slot6)
		 26	[  0]	IST  	   		5	; if tonumber
		 27	[  0]	JMP  	  6		1	; 	goto 29
		 28	[  0]	KPRI 	  5		0	; slot5 = nil
		 29	[  0]	ISF  	   		5	; if not slot5
		 30	[  0]	JMP  	  6		8	; 	goto 39
		 31	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 32	[  0]	ISGT 	  6		5	; if uv2"unknown" > slot5
		 33	[  0]	JMP  	  6		5	; 	goto 39
		 34	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		 35	[  0]	ISGT 	  5		6	; if slot5 > uv3"unknown"
		 36	[  0]	JMP  	  6		2	; 	goto 39
		 37	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 38	[  0]	TSETS	  5	6	3	; uv0"unknown".refreshHz = slot5
		 39	[  0]	GGET 	  6		7	; slot6 = _env["type"]
		 40	[  0]	MOV  	  8		4	; slot8 = love.window.getMode
		 41	[  0]	CALL 	  6	2	2	; slot6 = type(love.window.getMode.refreshrate)
		 42	[  0]	ISNES	  6		6	; if type ~= "table"
		 43	[  0]	JMP  	  6		3	; 	goto 47
		 44	[  0]	TGETS	  6	4	2	; slot6 = love.window.getMode.vsync
		 45	[  0]	IST  	   		6	; if love.window.getMode.vsync
		 46	[  0]	JMP  	  7		1	; 	goto 48
		 47	[  0]	KPRI 	  6		0	; slot6 = nil
		 48	[  0]	ISNEP	  6		0	; if slot6 ~= nil
		 49	[  0]	JMP  	  7		7	; 	goto 57
		 50	[  0]	TGETS	  7	1	1	; slot7 = love.window.getVSync
		 51	[  0]	ISF  	   		7	; if not love.window.getVSync
		 52	[  0]	JMP  	  8		4	; 	goto 57
		 53	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 54	[  0]	TGETS	  9	1	1	; slot9 = love.window.getVSync
		 55	[  0]	CALL 	  7	2	2	; slot7 = uv1"unknown"(love.window.getMode)
		 56	[  0]	MOV  	  6		7	; slot6 = uv1"unknown"
		 57	[  0]	ISEQP	  6		0	; if uv1"unknown" == nil
		 58	[  0]	JMP  	  7		21	; 	goto 80
		 59	[  0]	GGET 	  7		7	; slot7 = _env["type"]
		 60	[  0]	MOV  	  9		6	; slot9 = uv1"unknown"
		 61	[  0]	CALL 	  7	2	2	; slot7 = type(love.window.getMode)
		 62	[  0]	ISNES	  7		0	; if type ~= "boolean"
		 63	[  0]	JMP  	  7		3	; 	goto 67
		 64	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 65	[  0]	TSETS	  6	7	2	; uv0"unknown".vsync = uv1"unknown"
		 66	[  0]	JMP  	  7		13	; 	goto 80
		 67	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 68	[  0]	GGET 	  8		5	; slot8 = _env["tonumber"]
		 69	[  0]	MOV  	 10		6	; slot10 = uv1"unknown"
		 70	[  0]	CALL 	  8	2	2	; slot8 = tonumber(uv1"unknown")
		 71	[  0]	IST  	   		8	; if tonumber
		 72	[  0]	JMP  	  9		1	; 	goto 74
		 73	[  0]	KSHORT	  8		0	; slot8 = 0
		 74	[  0]	ISNEN	  8		0	; if slot8 ~= 0
		 75	[  0]	JMP  	  8		2	; 	goto 78
		 76	[  0]	KPRI 	  8		1	; slot8 = false
		 77	[  0]	JMP  	  9		1	; 	goto 79
		 78	[  0]	KPRI 	  8		2	; slot8 = true
		 79	[  0]	TSETS	  8	7	2	; uv0"unknown".vsync = slot8
		 80	[  0]	RET0 	  0		1	; return
	 13	[  0]	TSETS	  9	0	22	; slot0.refresh = slot9
	 14	[  0]	FNEW 	  9		20	; N/A:0-0: 2 args, 0 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		4	; slot2 = _env["os"]
		  2	[  0]	ISF  	   		2	; if not os
		  3	[  0]	JMP  	  3		8	; 	goto 12
		  4	[  0]	GGET 	  2		4	; slot2 = _env["os"]
		  5	[  0]	TGETS	  2	2	3	; slot2 = os.getenv
		  6	[  0]	ISF  	   		2	; if not os.getenv
		  7	[  0]	JMP  	  3		4	; 	goto 12
		  8	[  0]	GGET 	  2		4	; slot2 = _env["os"]
		  9	[  0]	TGETS	  2	2	3	; slot2 = os.getenv
		 10	[  0]	MOV  	  4		0	; slot4 = slot0
		 11	[  0]	CALL 	  2	2	2	; slot2 = os.getenv(slot3)
		 12	[  0]	GGET 	  3		2	; slot3 = _env["tonumber"]
		 13	[  0]	ISTC 	  5		2	; slot5 = slot2; if slot2
		 14	[  0]	JMP  	  5		1	; 	goto 16
		 15	[  0]	KSTR 	  5		1	; slot5 = ""
		 16	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		 17	[  0]	ISF  	   		3	; if not tonumber
		 18	[  0]	JMP  	  4		4	; 	goto 23
		 19	[  0]	KSHORT	  4		0	; slot4 = 0
		 20	[  0]	ISGE 	  4		3	; if slot4 >= tonumber
		 21	[  0]	JMP  	  4		1	; 	goto 23
		 22	[  0]	RET1 	  3		2	; return tonumber
		 23	[  0]	ISNES	  2		0	; if slot2 ~= "0"
		 24	[  0]	JMP  	  4		2	; 	goto 27
		 25	[  0]	KPRI 	  4		0	; slot4 = nil
		 26	[  0]	RET1 	  4		2	; return slot4
		 27	[  0]	RET1 	  1		2	; return slot1
	 15	[  0]	GGET 	 10		19	; slot10 = _env["os"]
	 16	[  0]	ISF  	   		10	; if not os
	 17	[  0]	JMP  	 11		10	; 	goto 28
	 18	[  0]	GGET 	 10		19	; slot10 = _env["os"]
	 19	[  0]	TGETS	 10	10	18	; slot10 = os.getenv
	 20	[  0]	ISF  	   		10	; if not os.getenv
	 21	[  0]	JMP  	 11		6	; 	goto 28
	 22	[  0]	GGET 	 10		19	; slot10 = _env["os"]
	 23	[  0]	TGETS	 10	10	18	; slot10 = os.getenv
	 24	[  0]	KSTR 	 12		17	; slot12 = "SLOTBOUND_PACER_LEGACY_SLEEP"
	 25	[  0]	CALL 	 10	2	2	; slot10 = os.getenv(slot11)
	 26	[  0]	ISEQS	 10		16	; if os.getenv == "1"
	 27	[  0]	JMP  	 10		4	; 	goto 32
	 28	[  0]	KPRI 	 10		1	; slot10 = false
	 29	[  0]	JMP  	 11		3	; 	goto 33
	 30	[  0]	KPRI 	 10		1	; slot10 = false
	 31	[  0]	JMP  	 11		1	; 	goto 33
	 32	[  0]	KPRI 	 10		2	; slot10 = true
	 33	[  0]	MOV  	 11		9	; slot11 = slot9
	 34	[  0]	KSTR 	 13		15	; slot13 = "SLOTBOUND_PACER_BG_HZ"
	 35	[  0]	KPRI 	 14		0	; slot14 = nil
	 36	[  0]	CALL 	 11	2	3	; slot11 = slot11(slot12, slot13)
	 37	[  0]	MOV  	 12		9	; slot12 = slot9
	 38	[  0]	KSTR 	 14		14	; slot14 = "SLOTBOUND_PACER_HIDDEN_HZ"
	 39	[  0]	KSHORT	 15		20	; slot15 = 20
	 40	[  0]	CALL 	 12	2	3	; slot12 = slot12(slot13, slot14)
	 41	[  0]	FNEW 	 13		13	; N/A:0-0: 1 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  1		0	; slot1 = slot0; if not slot0
		  2	[  0]	JMP  	  1		1	; 	goto 4
		  3	[  0]	TGETS	  1	0	5	; slot1 = slot0.window
		  4	[  0]	IST  	   		1	; if <unknown table>.window
		  5	[  0]	JMP  	  2		4	; 	goto 10
		  6	[  0]	KPRI 	  2		2	; slot2 = true
		  7	[  0]	KPRI 	  3		1	; slot3 = false
		  8	[  0]	KPRI 	  4		1	; slot4 = false
		  9	[  0]	RET  	  2		4	; return slot2, slot3, slot4
		 10	[  0]	KPRI 	  2		2	; slot2 = true
		 11	[  0]	TGETS	  3	1	4	; slot3 = <unknown table>.window.hasFocus
		 12	[  0]	ISF  	   		3	; if not <unknown table>.window.hasFocus
		 13	[  0]	JMP  	  4		10	; 	goto 24
		 14	[  0]	GGET 	  3		3	; slot3 = _env["pcall"]
		 15	[  0]	TGETS	  5	1	4	; slot5 = <unknown table>.window.hasFocus
		 16	[  0]	CALL 	  3	3	2	; slot3, slot4 = pcall(slot4)
		 17	[  0]	ISF  	   		3	; if not pcall
		 18	[  0]	JMP  	  5		5	; 	goto 24
		 19	[  0]	ISEQP	  4		2	; if slot4 == true
		 20	[  0]	JMP  	  5		2	; 	goto 23
		 21	[  0]	KPRI 	  2		1	; slot2 = false
		 22	[  0]	JMP  	  5		1	; 	goto 24
		 23	[  0]	KPRI 	  2		2	; slot2 = true
		 24	[  0]	KPRI 	  3		1	; slot3 = false
		 25	[  0]	TGETS	  4	1	2	; slot4 = <unknown table>.window.isMinimized
		 26	[  0]	ISF  	   		4	; if not <unknown table>.window.isMinimized
		 27	[  0]	JMP  	  5		8	; 	goto 36
		 28	[  0]	GGET 	  4		3	; slot4 = _env["pcall"]
		 29	[  0]	TGETS	  6	1	2	; slot6 = <unknown table>.window.isMinimized
		 30	[  0]	CALL 	  4	3	2	; slot4, slot5 = pcall(<unknown table>.window.hasFocus)
		 31	[  0]	ISF  	   		4	; if not pcall
		 32	[  0]	JMP  	  6		3	; 	goto 36
		 33	[  0]	ISNEP	  5		2	; if <unknown table>.window.hasFocus ~= true
		 34	[  0]	JMP  	  6		1	; 	goto 36
		 35	[  0]	KPRI 	  3		2	; slot3 = true
		 36	[  0]	IST  	   		3	; if slot3
		 37	[  0]	JMP  	  4		11	; 	goto 49
		 38	[  0]	TGETS	  4	1	1	; slot4 = <unknown table>.window.isVisible
		 39	[  0]	ISF  	   		4	; if not <unknown table>.window.isVisible
		 40	[  0]	JMP  	  5		8	; 	goto 49
		 41	[  0]	GGET 	  4		3	; slot4 = _env["pcall"]
		 42	[  0]	TGETS	  6	1	1	; slot6 = <unknown table>.window.isVisible
		 43	[  0]	CALL 	  4	3	2	; slot4, slot5 = pcall(<unknown table>.window.hasFocus)
		 44	[  0]	ISF  	   		4	; if not pcall
		 45	[  0]	JMP  	  6		3	; 	goto 49
		 46	[  0]	ISNEP	  5		1	; if <unknown table>.window.hasFocus ~= false
		 47	[  0]	JMP  	  6		1	; 	goto 49
		 48	[  0]	KPRI 	  3		2	; slot3 = true
		 49	[  0]	MOV  	  4		2	; slot4 = slot2
		 50	[  0]	MOV  	  5		3	; slot5 = slot3
		 51	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 52	[  0]	TGETS	  6	6	0	; slot6 = uv0"unknown".vsync
		 53	[  0]	ISNEP	  6		1	; if uv0"unknown".vsync ~= false
		 54	[  0]	JMP  	  6		2	; 	goto 57
		 55	[  0]	KPRI 	  6		1	; slot6 = false
		 56	[  0]	JMP  	  7		1	; 	goto 58
		 57	[  0]	KPRI 	  6		2	; slot6 = true
		 58	[  0]	RET  	  4		4	; return slot4, slot5, slot6
	 42	[  0]	FNEW 	 14		12	; N/A:0-0: 1 args, 6 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = uv0"unknown"(slot2)
		  4	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		  5	[  0]	TSETS	  1	4	6	; uv1"unknown".focused = slot1
		  6	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		  7	[  0]	TSETS	  2	4	5	; uv1"unknown".hidden = slot2
		  8	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		  9	[  0]	TSETS	  3	4	4	; uv1"unknown".vsync = slot3
		 10	[  0]	GGET 	  4		3	; slot4 = _env["math"]
		 11	[  0]	TGETS	  4	4	2	; slot4 = math.max
		 12	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 13	[  0]	GGET 	  7		1	; slot7 = _env["tonumber"]
		 14	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 15	[  0]	TGETS	  9	9	0	; slot9 = uv1"unknown".refreshHz
		 16	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 17	[  0]	IST  	   		7	; if tonumber
		 18	[  0]	JMP  	  8		1	; 	goto 20
		 19	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		 20	[  0]	CALL 	  4	2	3	; slot4 = math.max(slot5, uv2"unknown")
		 21	[  0]	ISF  	   		1	; if not slot1
		 22	[  0]	JMP  	  5		3	; 	goto 26
		 23	[  0]	MOV  	  5		4	; slot5 = math.max
		 24	[  0]	NOT  	  6		3	; slot6 = not slot3
		 25	[  0]	RET  	  5		3	; return math.max, slot6
		 26	[  0]	ISF  	   		2	; if not slot2
		 27	[  0]	JMP  	  5		3	; 	goto 31
		 28	[  0]	UGET 	  5		4	; slot5 = uv4"unknwon"
		 29	[  0]	IST  	   		5	; if uv4"unknown"
		 30	[  0]	JMP  	  6		1	; 	goto 32
		 31	[  0]	UGET 	  5		5	; slot5 = uv5"unknwon"
		 32	[  0]	IST  	   		5	; if uv5"unknown"
		 33	[  0]	JMP  	  6		3	; 	goto 37
		 34	[  0]	MOV  	  6		4	; slot6 = math.max
		 35	[  0]	NOT  	  7		3	; slot7 = not slot3
		 36	[  0]	RET  	  6		3	; return math.max, slot7
		 37	[  0]	MOV  	  6		5	; slot6 = uv5"unknown"
		 38	[  0]	KPRI 	  7		2	; slot7 = true
		 39	[  0]	RET  	  6		3	; return uv5"unknown", slot7
	 43	[  0]	FNEW 	 15		11	; N/A:0-0: 4 args, 5 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  4		0	; slot4 = slot0; if not slot0
		  2	[  0]	JMP  	  4		1	; 	goto 4
		  3	[  0]	TGETS	  4	0	5	; slot4 = slot0.timer
		  4	[  0]	ISF  	   		4	; if not <unknown table>.timer
		  5	[  0]	JMP  	  5		3	; 	goto 9
		  6	[  0]	TGETS	  5	4	4	; slot5 = <unknown table>.timer.sleep
		  7	[  0]	IST  	   		5	; if <unknown table>.timer.sleep
		  8	[  0]	JMP  	  5		4	; 	goto 13
		  9	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 10	[  0]	KSHORT	  6		0	; slot6 = 0
		 11	[  0]	TSETS	  6	5	3	; uv0"unknown".lastSleepSeconds = slot6
		 12	[  0]	RET0 	  0		1	; return
		 13	[  0]	GGET 	  5		2	; slot5 = _env["math"]
		 14	[  0]	TGETS	  5	5	1	; slot5 = math.max
		 15	[  0]	KSHORT	  7		1	; slot7 = 1
		 16	[  0]	GGET 	  8		0	; slot8 = _env["tonumber"]
		 17	[  0]	MOV  	 10		2	; slot10 = slot2
		 18	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 19	[  0]	IST  	   		8	; if tonumber
		 20	[  0]	JMP  	  9		1	; 	goto 22
		 21	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 22	[  0]	CALL 	  5	2	3	; slot5 = math.max(slot6, slot7)
		 23	[  0]	DIVNV	  5	5	0	; slot5 = 1 / math.max
		 24	[  0]	GGET 	  6		2	; slot6 = _env["math"]
		 25	[  0]	TGETS	  6	6	1	; slot6 = math.max
		 26	[  0]	KSHORT	  8		0	; slot8 = 0
		 27	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
		 28	[  0]	MOV  	 11		0	; slot11 = slot0
		 29	[  0]	CALL 	  9	2	2	; slot9 = uv2"unknown"(slot10)
		 30	[  0]	SUBVV	  9	9	1	; slot9 = uv2"unknown" - slot1
		 31	[  0]	CALL 	  6	2	3	; slot6 = math.max(slot7, slot8)
		 32	[  0]	SUBVV	  7	5	6	; slot7 = slot5 - math.max
		 33	[  0]	KSHORT	  8		0	; slot8 = 0
		 34	[  0]	ISGT 	  7		8	; if slot7 > slot8
		 35	[  0]	JMP  	  8		16	; 	goto 52
		 36	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		 37	[  0]	IST  	   		8	; if uv3"unknown"
		 38	[  0]	JMP  	  8		13	; 	goto 52
		 39	[  0]	ISF  	   		3	; if not slot3
		 40	[  0]	JMP  	  8		4	; 	goto 45
		 41	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 42	[  0]	KSHORT	  9		0	; slot9 = 0
		 43	[  0]	TSETS	  9	8	3	; uv0"unknown".lastSleepSeconds = slot9
		 44	[  0]	RET0 	  0		1	; return
		 45	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 46	[  0]	UGET 	  9		4	; slot9 = uv4"unknwon"
		 47	[  0]	TSETS	  9	8	3	; uv0"unknown".lastSleepSeconds = uv4"unknown"
		 48	[  0]	TGETS	  8	4	4	; slot8 = <unknown table>.timer.sleep
		 49	[  0]	UGET 	 10		4	; slot10 = uv4"unknwon"
		 50	[  0]	CALL 	  8	1	2	;  = <unknown table>.timer.sleep(uv4"unknown")
		 51	[  0]	RET0 	  0		1	; return
		 52	[  0]	UGET 	  8		4	; slot8 = uv4"unknwon"
		 53	[  0]	ISGE 	  8		7	; if uv4"unknown" >= slot7
		 54	[  0]	JMP  	  8		2	; 	goto 57
		 55	[  0]	ISTC 	  8		7	; slot8 = slot7; if slot7
		 56	[  0]	JMP  	  8		1	; 	goto 58
		 57	[  0]	UGET 	  8		4	; slot8 = uv4"unknwon"
		 58	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 59	[  0]	TSETS	  8	9	3	; uv0"unknown".lastSleepSeconds = uv4"unknown"
		 60	[  0]	TGETS	  9	4	4	; slot9 = <unknown table>.timer.sleep
		 61	[  0]	MOV  	 11		8	; slot11 = uv4"unknown"
		 62	[  0]	CALL 	  9	1	2	;  = <unknown table>.timer.sleep(uv4"unknown")
		 63	[  0]	RET0 	  0		1	; return
	 44	[  0]	FNEW 	 16		10	; N/A:0-0: 1 args, 4 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	FNEW 	  1		0	; N/A:0-0: 0 args, 5 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	TGETS	  0	0	5	; slot0 = uv0"unknown".load
			  3	[  0]	ISF  	   		0	; if not uv0"unknown".load
			  4	[  0]	JMP  	  1		9	; 	goto 14
			  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  6	[  0]	TGETS	  0	0	5	; slot0 = uv0"unknown".load
			  7	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  8	[  0]	TGETS	  2	2	4	; slot2 = uv0"unknown".arg
			  9	[  0]	TGETS	  2	2	3	; slot2 = uv0"unknown".arg.parseGameArguments
			 10	[  0]	GGET 	  4		4	; slot4 = _env["arg"]
			 11	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown".arg.parseGameArguments(slot3)
			 12	[  0]	GGET 	  3		4	; slot3 = _env["arg"]
			 13	[  0]	CALL 	  0	1	3	;  = uv0"unknown".load(slot1, slot2)
			 14	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 15	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".timer
			 16	[  0]	ISF  	   		0	; if not uv0"unknown".timer
			 17	[  0]	JMP  	  1		4	; 	goto 22
			 18	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 19	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".timer
			 20	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".timer.step
			 21	[  0]	CALL 	  0	1	1	;  = uv0"unknown".timer.step()
			 22	[  0]	KSHORT	  0		0	; slot0 = 0
			 23	[  0]	FNEW 	  1		0	; N/A:0-0: 0 args, 6 upvalues, 22 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
				  2	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
				  3	[  0]	CALL 	  0	2	2	; slot0 = uv0"unknown"(slot1)
				  4	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
				  5	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
				  6	[  0]	CALL 	  1	3	2	; slot1, slot2 = uv2"unknown"(slot2)
				  7	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
				  8	[  0]	TGETS	  3	3	22	; slot3 = uv3"unknown".hidden
				  9	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
				 10	[  0]	TGETS	  4	4	21	; slot4 = uv1"unknown".event
				 11	[  0]	ISF  	   		4	; if not uv1"unknown".event
				 12	[  0]	JMP  	  5		36	; 	goto 49
				 13	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
				 14	[  0]	TGETS	  4	4	21	; slot4 = uv1"unknown".event
				 15	[  0]	TGETS	  4	4	20	; slot4 = uv1"unknown".event.pump
				 16	[  0]	CALL 	  4	1	1	;  = uv1"unknown".event.pump()
				 17	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
				 18	[  0]	TGETS	  4	4	21	; slot4 = uv1"unknown".event
				 19	[  0]	TGETS	  4	4	19	; slot4 = uv1"unknown".event.poll
				 20	[  0]	CALL 	  4	4	1	; slot4, slot5, slot6 = uv1"unknown".event.poll()
				 21	[  0]	JMP  	  7		25	; 	goto 47
				 22	[  0]	ISNES	  7		18	; if slot7 ~= "quit"
				 23	[  0]	JMP  	 14		13	; 	goto 37
				 24	[  0]	UGET 	 14		1	; slot14 = uv1"unknwon"
				 25	[  0]	TGETS	 14	14	18	; slot14 = uv1"unknown".quit
				 26	[  0]	ISF  	   		14	; if not uv1"unknown".quit
				 27	[  0]	JMP  	 14		5	; 	goto 33
				 28	[  0]	UGET 	 14		1	; slot14 = uv1"unknwon"
				 29	[  0]	TGETS	 14	14	18	; slot14 = uv1"unknown".quit
				 30	[  0]	CALL 	 14	2	1	; slot14 = uv1"unknown".quit()
				 31	[  0]	IST  	   		14	; if uv1"unknown".quit
				 32	[  0]	JMP  	 14		4	; 	goto 37
				 33	[  0]	ISTC 	 14		8	; slot14 = slot8; if slot8
				 34	[  0]	JMP  	 14		1	; 	goto 36
				 35	[  0]	KSHORT	 14		0	; slot14 = 0
				 36	[  0]	RET1 	 14		2	; return slot14
				 37	[  0]	UGET 	 14		1	; slot14 = uv1"unknwon"
				 38	[  0]	TGETS	 14	14	17	; slot14 = uv1"unknown".handlers
				 39	[  0]	TGETV	 14	14	7	; slot14 = uv1"unknown".handlers[slot7]
				 40	[  0]	MOV  	 16		8	; slot16 = slot8
				 41	[  0]	MOV  	 17		9	; slot17 = slot9
				 42	[  0]	MOV  	 18		10	; slot18 = slot10
				 43	[  0]	MOV  	 19		11	; slot19 = slot11
				 44	[  0]	MOV  	 20		12	; slot20 = slot12
				 45	[  0]	MOV  	 21		13	; slot21 = slot13
				 46	[  0]	CALL 	 14	1	7	;  = slot14(slot15, slot16, slot17, slot18, slot19, slot20)
				 47	[  0]	ITERC	  7	8	3	; slot7, slot8, slot9 = uv1"unknown".event.poll, slot5, slot6; slot7, slot8, slot9, slot10, slot11, slot12, slot13 = uv1"unknown".event.poll(slot5, slot6)
				 48	[  0]	ITERL	  7		-27	; slot6 = slot7; if slot7 != nil goto 22
				 49	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
				 50	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
				 51	[  0]	CALL 	  4	2	2	; slot4 = uv0"unknown"(slot5)
				 52	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
				 53	[  0]	TGETS	  5	5	16	; slot5 = uv1"unknown".timer
				 54	[  0]	ISF  	   		5	; if not uv1"unknown".timer
				 55	[  0]	JMP  	  6		5	; 	goto 61
				 56	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
				 57	[  0]	TGETS	  5	5	16	; slot5 = uv1"unknown".timer
				 58	[  0]	TGETS	  5	5	15	; slot5 = uv1"unknown".timer.step
				 59	[  0]	CALL 	  5	2	1	; slot5 = uv1"unknown".timer.step()
				 60	[  0]	USETV	  4		5	; uv4"unknwon" = uv1"unknown".timer.step
				 61	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
				 62	[  0]	TGETS	  5	5	14	; slot5 = uv1"unknown".update
				 63	[  0]	ISF  	   		5	; if not uv1"unknown".update
				 64	[  0]	JMP  	  6		4	; 	goto 69
				 65	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
				 66	[  0]	TGETS	  5	5	14	; slot5 = uv1"unknown".update
				 67	[  0]	UGET 	  7		4	; slot7 = uv4"unknwon"
				 68	[  0]	CALL 	  5	1	2	;  = uv1"unknown".update(uv1"unknown")
				 69	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
				 70	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
				 71	[  0]	CALL 	  5	2	2	; slot5 = uv0"unknown"(uv1"unknown")
				 72	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
				 73	[  0]	KPRI 	  7		1	; slot7 = false
				 74	[  0]	TSETS	  7	6	13	; uv3"unknown".presentSuppressed = slot7
				 75	[  0]	MOV  	  6		5	; slot6 = uv0"unknown"
				 76	[  0]	KPRI 	  7		1	; slot7 = false
				 77	[  0]	ISF  	   		3	; if not uv3"unknown".hidden
				 78	[  0]	JMP  	  8		4	; 	goto 83
				 79	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
				 80	[  0]	KPRI 	  9		2	; slot9 = true
				 81	[  0]	TSETS	  9	8	13	; uv3"unknown".presentSuppressed = slot9
				 82	[  0]	JMP  	  8		42	; 	goto 125
				 83	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
				 84	[  0]	TGETS	  8	8	12	; slot8 = uv1"unknown".graphics
				 85	[  0]	ISF  	   		8	; if not uv1"unknown".graphics
				 86	[  0]	JMP  	  9		35	; 	goto 122
				 87	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
				 88	[  0]	TGETS	  8	8	12	; slot8 = uv1"unknown".graphics
				 89	[  0]	TGETS	  8	8	11	; slot8 = uv1"unknown".graphics.isActive
				 90	[  0]	CALL 	  8	2	1	; slot8 = uv1"unknown".graphics.isActive()
				 91	[  0]	ISF  	   		8	; if not uv1"unknown".graphics.isActive
				 92	[  0]	JMP  	  9		29	; 	goto 122
				 93	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
				 94	[  0]	TGETS	  8	8	12	; slot8 = uv1"unknown".graphics
				 95	[  0]	TGETS	  8	8	10	; slot8 = uv1"unknown".graphics.origin
				 96	[  0]	CALL 	  8	1	1	;  = uv1"unknown".graphics.origin()
				 97	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
				 98	[  0]	TGETS	  8	8	12	; slot8 = uv1"unknown".graphics
				 99	[  0]	TGETS	  8	8	9	; slot8 = uv1"unknown".graphics.clear
				100	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
				101	[  0]	TGETS	 10	10	12	; slot10 = uv1"unknown".graphics
				102	[  0]	TGETS	 10	10	8	; slot10 = uv1"unknown".graphics.getBackgroundColor
				103	[  0]	CALL 	 10	0	1	; MULTRES = uv1"unknown".graphics.getBackgroundColor()
				104	[  0]	CALLM	  8	1	0	;  = uv1"unknown".graphics.clear(, ...MULTRES)
				105	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
				106	[  0]	TGETS	  8	8	7	; slot8 = uv1"unknown".draw
				107	[  0]	ISF  	   		8	; if not uv1"unknown".draw
				108	[  0]	JMP  	  9		3	; 	goto 112
				109	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
				110	[  0]	TGETS	  8	8	7	; slot8 = uv1"unknown".draw
				111	[  0]	CALL 	  8	1	1	;  = uv1"unknown".draw()
				112	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
				113	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
				114	[  0]	CALL 	  8	2	2	; slot8 = uv0"unknown"(slot9)
				115	[  0]	MOV  	  6		8	; slot6 = uv0"unknown"
				116	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
				117	[  0]	TGETS	  8	8	12	; slot8 = uv1"unknown".graphics
				118	[  0]	TGETS	  8	8	6	; slot8 = uv1"unknown".graphics.present
				119	[  0]	CALL 	  8	1	1	;  = uv1"unknown".graphics.present()
				120	[  0]	KPRI 	  7		2	; slot7 = true
				121	[  0]	JMP  	  8		3	; 	goto 125
				122	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
				123	[  0]	KPRI 	  9		2	; slot9 = true
				124	[  0]	TSETS	  9	8	13	; uv3"unknown".presentSuppressed = slot9
				125	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
				126	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
				127	[  0]	CALL 	  8	2	2	; slot8 = uv0"unknown"(slot9)
				128	[  0]	UGET 	  9		3	; slot9 = uv3"unknwon"
				129	[  0]	SUBVV	 10	4	0	; slot10 = uv0"unknown" - slot0
				130	[  0]	TSETS	 10	9	5	; uv3"unknown".lastEventSeconds = slot10
				131	[  0]	UGET 	  9		3	; slot9 = uv3"unknwon"
				132	[  0]	SUBVV	 10	5	4	; slot10 = uv0"unknown" - uv0"unknown"
				133	[  0]	TSETS	 10	9	4	; uv3"unknown".lastUpdateSeconds = slot10
				134	[  0]	UGET 	  9		3	; slot9 = uv3"unknwon"
				135	[  0]	SUBVV	 10	6	5	; slot10 = uv0"unknown" - uv0"unknown"
				136	[  0]	TSETS	 10	9	3	; uv3"unknown".lastDrawSeconds = slot10
				137	[  0]	UGET 	  9		3	; slot9 = uv3"unknwon"
				138	[  0]	SUBVV	 10	8	6	; slot10 = uv0"unknown" - uv0"unknown"
				139	[  0]	TSETS	 10	9	2	; uv3"unknown".lastPresentSeconds = slot10
				140	[  0]	UGET 	  9		3	; slot9 = uv3"unknwon"
				141	[  0]	TSETS	  1	9	1	; uv3"unknown".lastTargetHz = slot1
				142	[  0]	IST  	   		2	; if slot2
				143	[  0]	JMP  	  9		2	; 	goto 146
				144	[  0]	IST  	   		7	; if slot7
				145	[  0]	JMP  	  9		7	; 	goto 153
				146	[  0]	UGET 	  9		5	; slot9 = uv5"unknwon"
				147	[  0]	UGET 	 11		1	; slot11 = uv1"unknwon"
				148	[  0]	MOV  	 12		0	; slot12 = slot0
				149	[  0]	MOV  	 13		1	; slot13 = slot1
				150	[  0]	MOV  	 14		7	; slot14 = slot7
				151	[  0]	CALL 	  9	1	5	;  = uv5"unknown"(slot10, uv1"unknown", slot12, slot13)
				152	[  0]	JMP  	  9		3	; 	goto 156
				153	[  0]	UGET 	  9		3	; slot9 = uv3"unknwon"
				154	[  0]	KSHORT	 10		0	; slot10 = 0
				155	[  0]	TSETS	 10	9	0	; uv3"unknown".lastSleepSeconds = slot10
				156	[  0]	RET0 	  0		1	; return
			 24	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 25
			 25	[  0]	RET1 	  1		2	; return slot1
		  2	[  0]	TSETS	  1	0	1	; slot0.run = slot1
		  3	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 4
		  4	[  0]	RET0 	  0		1	; return
	 45	[  0]	FNEW 	 17		8	; N/A:0-0: 0 args, 2 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		ktable#20 = [
			[fallbackActivated] = false,
			[knownBlockedRenderer] = false,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TDUP 	  0		20	; slot0 = copy table#k20
		  2	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  3	[  0]	TGETS	  1	1	21	; slot1 = uv0"unknown".installed
		  4	[  0]	TSETS	  1	0	21	; slot0.installed = uv0"unknown".installed
		  5	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  6	[  0]	TGETS	  1	1	21	; slot1 = uv0"unknown".installed
		  7	[  0]	ISF  	   		1	; if not uv0"unknown".installed
		  8	[  0]	JMP  	  2		7	; 	goto 16
		  9	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 10	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 11	[  0]	TGETS	  3	3	19	; slot3 = uv0"unknown".loveApi
		 12	[  0]	IST  	   		3	; if uv0"unknown".loveApi
		 13	[  0]	JMP  	  4		1	; 	goto 15
		 14	[  0]	GGET 	  3		18	; slot3 = _env["love"]
		 15	[  0]	CALL 	  1	2	2	; slot1 = uv1"unknown"(slot2)
		 16	[  0]	TSETS	  1	0	17	; slot0.active = slot1
		 17	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 18	[  0]	TGETS	  1	1	16	; slot1 = uv0"unknown".refreshHz
		 19	[  0]	TSETS	  1	0	16	; slot0.refreshHz = uv0"unknown".refreshHz
		 20	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 21	[  0]	TGETS	  1	1	15	; slot1 = uv0"unknown".lastSleepSeconds
		 22	[  0]	TSETS	  1	0	15	; slot0.lastSleepSeconds = uv0"unknown".lastSleepSeconds
		 23	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 24	[  0]	TGETS	  1	1	14	; slot1 = uv0"unknown".presentSuppressed
		 25	[  0]	TSETS	  1	0	14	; slot0.presentSuppressed = uv0"unknown".presentSuppressed
		 26	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 27	[  0]	TGETS	  1	1	16	; slot1 = uv0"unknown".refreshHz
		 28	[  0]	TSETS	  1	0	13	; slot0.foregroundRefreshHz = uv0"unknown".refreshHz
		 29	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 30	[  0]	TGETS	  1	1	12	; slot1 = uv0"unknown".focused
		 31	[  0]	TSETS	  1	0	12	; slot0.focused = uv0"unknown".focused
		 32	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 33	[  0]	TGETS	  1	1	11	; slot1 = uv0"unknown".hidden
		 34	[  0]	TSETS	  1	0	11	; slot0.hidden = uv0"unknown".hidden
		 35	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 36	[  0]	TGETS	  1	1	10	; slot1 = uv0"unknown".vsync
		 37	[  0]	TSETS	  1	0	10	; slot0.vsync = uv0"unknown".vsync
		 38	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 39	[  0]	TGETS	  1	1	9	; slot1 = uv0"unknown".lastTargetHz
		 40	[  0]	TSETS	  1	0	8	; slot0.targetHz = uv0"unknown".lastTargetHz
		 41	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 42	[  0]	TGETS	  1	1	7	; slot1 = uv0"unknown".lastEventSeconds
		 43	[  0]	TSETS	  1	0	6	; slot0.eventSeconds = uv0"unknown".lastEventSeconds
		 44	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 45	[  0]	TGETS	  1	1	5	; slot1 = uv0"unknown".lastUpdateSeconds
		 46	[  0]	TSETS	  1	0	4	; slot0.updateSeconds = uv0"unknown".lastUpdateSeconds
		 47	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 48	[  0]	TGETS	  1	1	3	; slot1 = uv0"unknown".lastDrawSeconds
		 49	[  0]	TSETS	  1	0	2	; slot0.drawSeconds = uv0"unknown".lastDrawSeconds
		 50	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 51	[  0]	TGETS	  1	1	1	; slot1 = uv0"unknown".lastPresentSeconds
		 52	[  0]	TSETS	  1	0	0	; slot0.presentSeconds = uv0"unknown".lastPresentSeconds
		 53	[  0]	RET1 	  0		2	; return slot0
	 46	[  0]	TSETS	 17	0	9	; slot0.getStatus = slot17
	 47	[  0]	FNEW 	 17		6	; N/A:0-0: 0 args, 1 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	RET1 	  0		2	; return uv0"unknown"
	 48	[  0]	TSETS	 17	0	7	; slot0.getBackgroundRefreshHz = slot17
	 49	[  0]	FNEW 	 17		4	; N/A:0-0: 0 args, 1 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	RET1 	  0		2	; return uv0"unknown"
	 50	[  0]	TSETS	 17	0	5	; slot0.getHiddenRefreshHz = slot17
	 51	[  0]	FNEW 	 17		2	; N/A:0-0: 2 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	RET1 	  1		2	; return slot1
	 52	[  0]	TSETS	 17	0	3	; slot0.adjustVSyncForMode = slot17
	 53	[  0]	FNEW 	 17		0	; N/A:0-0: 1 args, 4 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	3	; slot1 = uv0"unknown".installed
		  3	[  0]	ISF  	   		1	; if not uv0"unknown".installed
		  4	[  0]	JMP  	  2		2	; 	goto 7
		  5	[  0]	KPRI 	  1		2	; slot1 = true
		  6	[  0]	RET1 	  1		2	; return slot1
		  7	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  8	[  0]	ISTC 	  2		0	; slot2 = slot0; if slot0
		  9	[  0]	JMP  	  2		1	; 	goto 11
		 10	[  0]	GGET 	  2		1	; slot2 = _env["love"]
		 11	[  0]	TSETS	  2	1	2	; uv0"unknown".loveApi = love
		 12	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 13	[  0]	TGETS	  1	1	2	; slot1 = uv0"unknown".loveApi
		 14	[  0]	IST  	   		1	; if uv0"unknown".loveApi
		 15	[  0]	JMP  	  1		2	; 	goto 18
		 16	[  0]	KPRI 	  1		1	; slot1 = false
		 17	[  0]	RET1 	  1		2	; return slot1
		 18	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 19	[  0]	KPRI 	  2		2	; slot2 = true
		 20	[  0]	TSETS	  2	1	3	; uv0"unknown".installed = slot2
		 21	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 22	[  0]	TGETS	  1	1	0	; slot1 = uv1"unknown".refresh
		 23	[  0]	CALL 	  1	1	1	;  = uv1"unknown".refresh()
		 24	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 25	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 26	[  0]	TGETS	  3	3	2	; slot3 = uv0"unknown".loveApi
		 27	[  0]	CALL 	  1	2	2	; slot1 = uv2"unknown"(slot2)
		 28	[  0]	ISF  	   		1	; if not slot1
		 29	[  0]	JMP  	  2		4	; 	goto 34
		 30	[  0]	UGET 	  1		3	; slot1 = uv3"unknwon"
		 31	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 32	[  0]	TGETS	  3	3	2	; slot3 = uv0"unknown".loveApi
		 33	[  0]	CALL 	  1	1	2	;  = uv3"unknown"(slot2)
		 34	[  0]	KPRI 	  1		2	; slot1 = true
		 35	[  0]	RET1 	  1		2	; return slot1
	 54	[  0]	TSETS	 17	0	1	; slot0.install = slot17
	 55	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 56
	 56	[  0]	RET1 	  0		2	; return slot0
	
