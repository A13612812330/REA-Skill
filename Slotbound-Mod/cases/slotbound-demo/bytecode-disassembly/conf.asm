;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\conf.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 12 slots
	;;;; constant tables ;;;;
	;;;; instructions ;;;;
	  1	[  0]	GGET 	  0		38	; slot0 = _env["pcall"]
	  2	[  0]	GGET 	  2		37	; slot2 = _env["require"]
	  3	[  0]	KSTR 	  3		36	; slot3 = "ffi"
	  4	[  0]	CALL 	  0	3	3	; slot0, slot1 = pcall(slot1, require)
	  5	[  0]	ISF  	   		0	; if not slot0
	  6	[  0]	JMP  	  2		38	; 	goto 45
	  7	[  0]	ISF  	   		1	; if not slot1
	  8	[  0]	JMP  	  2		36	; 	goto 45
	  9	[  0]	GGET 	  2		38	; slot2 = _env["pcall"]
	 10	[  0]	FNEW 	  4		35	; N/A:0-0: 0 args, 1 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".cdef
		  3	[  0]	KSTR 	  2		0	; slot2 = " int SetProcessDpiAwarenessContext(void* value); "
		  4	[  0]	CALL 	  0	1	2	;  = uv0"unknown".cdef(slot1)
		  5	[  0]	RET0 	  0		1	; return
	 11	[  0]	CALL 	  2	2	2	; slot2 = pcall(slot3)
	 12	[  0]	ISF  	   		2	; if not slot2
	 13	[  0]	JMP  	  3		15	; 	goto 29
	 14	[  0]	GGET 	  3		38	; slot3 = _env["pcall"]
	 15	[  0]	TGETS	  5	1	34	; slot5 = slot1.load
	 16	[  0]	KSTR 	  6		33	; slot6 = "user32"
	 17	[  0]	CALL 	  3	3	3	; slot3, slot4 = pcall(slot4, <unknown table>.load)
	 18	[  0]	ISF  	   		3	; if not slot3
	 19	[  0]	JMP  	  5		9	; 	goto 29
	 20	[  0]	ISF  	   		4	; if not slot4
	 21	[  0]	JMP  	  5		7	; 	goto 29
	 22	[  0]	GGET 	  5		38	; slot5 = _env["pcall"]
	 23	[  0]	TGETS	  7	4	32	; slot7 = slot4.SetProcessDpiAwarenessContext
	 24	[  0]	TGETS	  8	1	31	; slot8 = slot1.cast
	 25	[  0]	KSTR 	 10		30	; slot10 = "void*"
	 26	[  0]	KSHORT	 11		65532	; slot11 = 65532
	 27	[  0]	CALL 	  8	0	3	; MULTRES = <unknown table>.cast(slot9, slot10)
	 28	[  0]	CALLM	  5	1	1	;  = pcall(slot6, ...MULTRES)
	 29	[  0]	GGET 	  3		38	; slot3 = _env["pcall"]
	 30	[  0]	FNEW 	  5		29	; N/A:0-0: 0 args, 1 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".cdef
		  3	[  0]	KSTR 	  2		0	; slot2 = " int SetProcessDPIAware(void); "
		  4	[  0]	CALL 	  0	1	2	;  = uv0"unknown".cdef(slot1)
		  5	[  0]	RET0 	  0		1	; return
	 31	[  0]	CALL 	  3	2	2	; slot3 = pcall(slot4)
	 32	[  0]	ISF  	   		3	; if not pcall
	 33	[  0]	JMP  	  4		11	; 	goto 45
	 34	[  0]	GGET 	  4		38	; slot4 = _env["pcall"]
	 35	[  0]	TGETS	  6	1	34	; slot6 = slot1.load
	 36	[  0]	KSTR 	  7		33	; slot7 = "user32"
	 37	[  0]	CALL 	  4	3	3	; slot4, slot5 = pcall(slot5, <unknown table>.load)
	 38	[  0]	ISF  	   		4	; if not pcall
	 39	[  0]	JMP  	  6		5	; 	goto 45
	 40	[  0]	ISF  	   		5	; if not slot5
	 41	[  0]	JMP  	  6		3	; 	goto 45
	 42	[  0]	GGET 	  6		38	; slot6 = _env["pcall"]
	 43	[  0]	TGETS	  8	5	28	; slot8 = slot5.SetProcessDPIAware
	 44	[  0]	CALL 	  6	1	2	;  = pcall(slot7)
	 45	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 46
	 46	[  0]	GGET 	  0		27	; slot0 = _env["jit"]
	 47	[  0]	ISF  	   		0	; if not jit
	 48	[  0]	JMP  	  1		44	; 	goto 93
	 49	[  0]	GGET 	  0		27	; slot0 = _env["jit"]
	 50	[  0]	TGETS	  0	0	26	; slot0 = jit.os
	 51	[  0]	ISNES	  0		25	; if jit.os ~= "Windows"
	 52	[  0]	JMP  	  0		40	; 	goto 93
	 53	[  0]	GGET 	  0		38	; slot0 = _env["pcall"]
	 54	[  0]	GGET 	  2		37	; slot2 = _env["require"]
	 55	[  0]	KSTR 	  3		36	; slot3 = "ffi"
	 56	[  0]	CALL 	  0	3	3	; slot0, slot1 = pcall(slot1, require)
	 57	[  0]	ISF  	   		0	; if not slot0
	 58	[  0]	JMP  	  2		2	; 	goto 61
	 59	[  0]	IST  	   		1	; if slot1
	 60	[  0]	JMP  	  2		3	; 	goto 64
	 61	[  0]	GGET 	  2		24	; slot2 = _env["error"]
	 62	[  0]	KSTR 	  4		23	; slot4 = "SlotBound requires LuaJIT FFI to select its Windows D3D11 renderer"
	 63	[  0]	CALL 	  2	1	2	;  = error(slot3)
	 64	[  0]	GGET 	  2		38	; slot2 = _env["pcall"]
	 65	[  0]	TGETS	  4	1	22	; slot4 = slot1.cdef
	 66	[  0]	KSTR 	  5		21	; slot5 = "      int SDL_setenv(const char *name, const char *value, int overwrite);
	    "
	 67	[  0]	CALL 	  2	1	3	;  = pcall(slot3, <unknown table>.cdef)
	 68	[  0]	GGET 	  2		38	; slot2 = _env["pcall"]
	 69	[  0]	TGETS	  4	1	34	; slot4 = slot1.load
	 70	[  0]	KSTR 	  5		20	; slot5 = "SDL2"
	 71	[  0]	CALL 	  2	3	3	; slot2, slot3 = pcall(slot3, <unknown table>.load)
	 72	[  0]	ISF  	   		2	; if not slot2
	 73	[  0]	JMP  	  4		2	; 	goto 76
	 74	[  0]	IST  	   		3	; if slot3
	 75	[  0]	JMP  	  4		3	; 	goto 79
	 76	[  0]	GGET 	  4		24	; slot4 = _env["error"]
	 77	[  0]	KSTR 	  6		19	; slot6 = "SlotBound could not load SDL2 for its Windows renderer setup"
	 78	[  0]	CALL 	  4	1	2	;  = error(slot5)
	 79	[  0]	FNEW 	  4		18	; N/A:0-0: 2 args, 1 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		4	; slot2 = _env["pcall"]
		  2	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  3	[  0]	TGETS	  4	4	3	; slot4 = uv0"unknown".SDL_setenv
		  4	[  0]	MOV  	  5		0	; slot5 = slot0
		  5	[  0]	MOV  	  6		1	; slot6 = slot1
		  6	[  0]	KSHORT	  7		1	; slot7 = 1
		  7	[  0]	CALL 	  2	3	5	; slot2, slot3 = pcall(slot3, uv0"unknown".SDL_setenv, slot5, slot6)
		  8	[  0]	ISF  	   		2	; if not slot2
		  9	[  0]	JMP  	  4		2	; 	goto 12
		 10	[  0]	ISEQN	  3		0	; if slot3 == 0
		 11	[  0]	JMP  	  4		7	; 	goto 19
		 12	[  0]	GGET 	  4		2	; slot4 = _env["error"]
		 13	[  0]	KSTR 	  6		1	; slot6 = "SlotBound could not set Windows renderer value %s"
		 14	[  0]	MOV  	  8		6	; slot8 = slot6
		 15	[  0]	TGETS	  6	6	0	; slot6 = slot6.format
		 16	[  0]	MOV  	  9		0	; slot9 = slot0
		 17	[  0]	CALL 	  6	0	3	; MULTRES = <unknown table>.format(slot7, slot8)
		 18	[  0]	CALLM	  4	1	0	;  = error(, ...MULTRES)
		 19	[  0]	RET0 	  0		1	; return
	 80	[  0]	MOV  	  5		4	; slot5 = slot4
	 81	[  0]	KSTR 	  7		17	; slot7 = "LOVE_GRAPHICS_USE_OPENGLES"
	 82	[  0]	KSTR 	  8		16	; slot8 = "1"
	 83	[  0]	CALL 	  5	1	3	;  = slot5(slot6, slot7)
	 84	[  0]	MOV  	  5		4	; slot5 = slot4
	 85	[  0]	KSTR 	  7		15	; slot7 = "SDL_OPENGL_ES_DRIVER"
	 86	[  0]	KSTR 	  8		16	; slot8 = "1"
	 87	[  0]	CALL 	  5	1	3	;  = slot5(slot6, slot7)
	 88	[  0]	MOV  	  5		4	; slot5 = slot4
	 89	[  0]	KSTR 	  7		14	; slot7 = "LOVE_GRAPHICS_VSYNC_DWM"
	 90	[  0]	KSTR 	  8		13	; slot8 = "0"
	 91	[  0]	CALL 	  5	1	3	;  = slot5(slot6, slot7)
	 92	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 93
	 93	[  0]	GGET 	  0		12	; slot0 = _env["love"]
	 94	[  0]	ISF  	   		0	; if not love
	 95	[  0]	JMP  	  1		2	; 	goto 98
	 96	[  0]	GGET 	  0		12	; slot0 = _env["love"]
	 97	[  0]	TGETS	  0	0	11	; slot0 = love.filesystem
	 98	[  0]	ISF  	   		0	; if not love.filesystem
	 99	[  0]	JMP  	  1		8	; 	goto 108
	100	[  0]	TGETS	  1	0	10	; slot1 = love.filesystem.setIdentity
	101	[  0]	ISF  	   		1	; if not love.filesystem.setIdentity
	102	[  0]	JMP  	  2		5	; 	goto 108
	103	[  0]	GGET 	  1		38	; slot1 = _env["pcall"]
	104	[  0]	TGETS	  3	0	10	; slot3 = love.filesystem.setIdentity
	105	[  0]	KSTR 	  4		9	; slot4 = "slotbound"
	106	[  0]	KPRI 	  5		2	; slot5 = true
	107	[  0]	CALL 	  1	1	4	;  = pcall(slot2, love.filesystem.setIdentity, slot4)
	108	[  0]	GGET 	  0		8	; slot0 = _env["RuntimeDiagnostics"]
	109	[  0]	IST  	   		0	; if RuntimeDiagnostics
	110	[  0]	JMP  	  1		3	; 	goto 114
	111	[  0]	GGET 	  0		37	; slot0 = _env["require"]
	112	[  0]	KSTR 	  2		7	; slot2 = "src.runtime_diagnostics"
	113	[  0]	CALL 	  0	2	2	; slot0 = require(slot1)
	114	[  0]	GSET 	  0		8	; _env["RuntimeDiagnostics"] = slot0
	115	[  0]	GGET 	  0		8	; slot0 = _env["RuntimeDiagnostics"]
	116	[  0]	TGETS	  0	0	6	; slot0 = RuntimeDiagnostics.installEarlyErrorHandler
	117	[  0]	CALL 	  0	1	1	;  = RuntimeDiagnostics.installEarlyErrorHandler()
	118	[  0]	GGET 	  0		37	; slot0 = _env["require"]
	119	[  0]	KSTR 	  2		5	; slot2 = "src.audio.runtime_bootstrap"
	120	[  0]	CALL 	  0	2	2	; slot0 = require(slot1)
	121	[  0]	TGETS	  1	0	4	; slot1 = slot0.relaunchBundledWindowsRuntimeBeforeWindow
	122	[  0]	CALL 	  1	2	1	; slot1 = <unknown table>.relaunchBundledWindowsRuntimeBeforeWindow()
	123	[  0]	ISF  	   		1	; if not slot1
	124	[  0]	JMP  	  2		4	; 	goto 129
	125	[  0]	GGET 	  1		26	; slot1 = _env["os"]
	126	[  0]	TGETS	  1	1	3	; slot1 = os.exit
	127	[  0]	KSHORT	  3		0	; slot3 = 0
	128	[  0]	CALL 	  1	1	2	;  = os.exit(slot2)
	129	[  0]	GGET 	  1		37	; slot1 = _env["require"]
	130	[  0]	KSTR 	  3		2	; slot3 = "src.platform_window"
	131	[  0]	CALL 	  1	2	2	; slot1 = require(slot2)
	132	[  0]	GGET 	  2		12	; slot2 = _env["love"]
	133	[  0]	FNEW 	  3		0	; N/A:0-0: 1 args, 1 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KPRI 	  1		1	; slot1 = false
		  2	[  0]	TSETS	  1	0	37	; slot0.gammacorrect = slot1
		  3	[  0]	KNIL 	  1		2	; slot1, slot2 = nil
		  4	[  0]	GGET 	  3		36	; slot3 = _env["pcall"]
		  5	[  0]	GGET 	  5		35	; slot5 = _env["require"]
		  6	[  0]	KSTR 	  6		34	; slot6 = "src.save"
		  7	[  0]	CALL 	  3	3	3	; slot3, slot4 = pcall(slot4, require)
		  8	[  0]	ISF  	   		3	; if not slot3
		  9	[  0]	JMP  	  5		9	; 	goto 19
		 10	[  0]	ISF  	   		4	; if not slot4
		 11	[  0]	JMP  	  5		7	; 	goto 19
		 12	[  0]	TGETS	  5	4	33	; slot5 = slot4.load
		 13	[  0]	ISF  	   		5	; if not <unknown table>.load
		 14	[  0]	JMP  	  6		4	; 	goto 19
		 15	[  0]	TGETS	  5	4	33	; slot5 = slot4.load
		 16	[  0]	CALL 	  5	2	1	; slot5 = <unknown table>.load()
		 17	[  0]	IST  	   		5	; if <unknown table>.load
		 18	[  0]	JMP  	  6		1	; 	goto 20
		 19	[  0]	KPRI 	  5		0	; slot5 = nil
		 20	[  0]	ISF  	   		5	; if not slot5
		 21	[  0]	JMP  	  6		7	; 	goto 29
		 22	[  0]	TGETS	  6	5	32	; slot6 = slot5.settings
		 23	[  0]	ISF  	   		6	; if not <unknown table>.settings
		 24	[  0]	JMP  	  7		4	; 	goto 29
		 25	[  0]	TGETS	  6	5	32	; slot6 = slot5.settings
		 26	[  0]	TGETS	  6	6	31	; slot6 = <unknown table>.settings.displayMode
		 27	[  0]	ISTC 	  1		6	; slot1 = <unknown table>.settings.displayMode; if <unknown table>.settings.displayMode
		 28	[  0]	JMP  	  7		1	; 	goto 30
		 29	[  0]	KPRI 	  1		0	; slot1 = nil
		 30	[  0]	ISF  	   		5	; if not slot5
		 31	[  0]	JMP  	  6		5	; 	goto 37
		 32	[  0]	TGETS	  6	5	32	; slot6 = slot5.settings
		 33	[  0]	ISF  	   		6	; if not <unknown table>.settings
		 34	[  0]	JMP  	  7		2	; 	goto 37
		 35	[  0]	TGETS	  6	5	32	; slot6 = slot5.settings
		 36	[  0]	TGETS	  2	6	30	; slot2 = <unknown table>.settings.vsyncEnabled
		 37	[  0]	ISEQS	  1		29	; if slot1 == "windowed"
		 38	[  0]	JMP  	  3		5	; 	goto 44
		 39	[  0]	ISEQS	  1		28	; if slot1 == "fullscreen"
		 40	[  0]	JMP  	  3		3	; 	goto 44
		 41	[  0]	ISEQS	  1		27	; if slot1 == "borderless"
		 42	[  0]	JMP  	  3		1	; 	goto 44
		 43	[  0]	KSTR 	  1		27	; slot1 = "borderless"
		 44	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 45	[  0]	TGETS	  3	3	26	; slot3 = uv0"unknown".isBorderlessWindowMode
		 46	[  0]	MOV  	  5		1	; slot5 = slot1
		 47	[  0]	CALL 	  3	2	2	; slot3 = uv0"unknown".isBorderlessWindowMode(slot4)
		 48	[  0]	KNIL 	  4		7	; slot4, slot5, <unknown table>.settings, slot7 = nil
		 49	[  0]	ISF  	   		3	; if not uv0"unknown".isBorderlessWindowMode
		 50	[  0]	JMP  	  8		30	; 	goto 81
		 51	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 52	[  0]	TGETS	  8	8	25	; slot8 = uv0"unknown".getPrimaryDesktopArea
		 53	[  0]	ISF  	   		8	; if not uv0"unknown".getPrimaryDesktopArea
		 54	[  0]	JMP  	  9		26	; 	goto 81
		 55	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 56	[  0]	TGETS	  8	8	25	; slot8 = uv0"unknown".getPrimaryDesktopArea
		 57	[  0]	CALL 	  8	5	1	; slot8, slot9, slot10, slot11 = uv0"unknown".getPrimaryDesktopArea()
		 58	[  0]	MOV  	  7		11	; slot7 = slot11
		 59	[  0]	MOV  	  6		10	; slot6 = slot10
		 60	[  0]	MOV  	  5		9	; slot5 = slot9
		 61	[  0]	MOV  	  4		8	; slot4 = uv0"unknown".getPrimaryDesktopArea
		 62	[  0]	ISF  	   		6	; if not slot6
		 63	[  0]	JMP  	  8		17	; 	goto 81
		 64	[  0]	ISF  	   		7	; if not slot7
		 65	[  0]	JMP  	  8		15	; 	goto 81
		 66	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 67	[  0]	TGETS	  8	8	24	; slot8 = uv0"unknown".getBorderlessWindowBounds
		 68	[  0]	ISF  	   		8	; if not uv0"unknown".getBorderlessWindowBounds
		 69	[  0]	JMP  	  9		11	; 	goto 81
		 70	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 71	[  0]	TGETS	  8	8	24	; slot8 = uv0"unknown".getBorderlessWindowBounds
		 72	[  0]	MOV  	 10		4	; slot10 = uv0"unknown".getPrimaryDesktopArea
		 73	[  0]	MOV  	 11		5	; slot11 = slot5
		 74	[  0]	MOV  	 12		6	; slot12 = slot6
		 75	[  0]	MOV  	 13		7	; slot13 = slot7
		 76	[  0]	CALL 	  8	5	5	; slot8, slot9, slot10, slot11 = uv0"unknown".getBorderlessWindowBounds(slot9, uv0"unknown".getPrimaryDesktopArea, slot11, slot12)
		 77	[  0]	MOV  	  7		11	; slot7 = slot11
		 78	[  0]	MOV  	  6		10	; slot6 = uv0"unknown".getPrimaryDesktopArea
		 79	[  0]	MOV  	  5		9	; slot5 = slot9
		 80	[  0]	MOV  	  4		8	; slot4 = uv0"unknown".getBorderlessWindowBounds
		 81	[  0]	TGETS	  8	0	23	; slot8 = slot0.window
		 82	[  0]	KSTR 	  9		21	; slot9 = "SlotBound"
		 83	[  0]	TSETS	  9	8	22	; <unknown table>.window.title = slot9
		 84	[  0]	TGETS	  8	0	23	; slot8 = slot0.window
		 85	[  0]	KSTR 	  9		19	; slot9 = "icon.png"
		 86	[  0]	TSETS	  9	8	20	; <unknown table>.window.icon = slot9
		 87	[  0]	TGETS	  8	0	23	; slot8 = slot0.window
		 88	[  0]	ISF  	   		3	; if not uv0"unknown".isBorderlessWindowMode
		 89	[  0]	JMP  	  9		4	; 	goto 94
		 90	[  0]	ISTC 	  9		6	; slot9 = uv0"unknown".getPrimaryDesktopArea; if uv0"unknown".getPrimaryDesktopArea
		 91	[  0]	JMP  	  9		3	; 	goto 95
		 92	[  0]	KSHORT	  9		0	; slot9 = 0
		 93	[  0]	JMP  	 10		1	; 	goto 95
		 94	[  0]	KSHORT	  9		1280	; slot9 = 1280
		 95	[  0]	TSETS	  9	8	18	; <unknown table>.window.width = slot9
		 96	[  0]	TGETS	  8	0	23	; slot8 = slot0.window
		 97	[  0]	ISF  	   		3	; if not uv0"unknown".isBorderlessWindowMode
		 98	[  0]	JMP  	  9		4	; 	goto 103
		 99	[  0]	ISTC 	  9		7	; slot9 = slot7; if slot7
		100	[  0]	JMP  	  9		3	; 	goto 104
		101	[  0]	KSHORT	  9		0	; slot9 = 0
		102	[  0]	JMP  	 10		1	; 	goto 104
		103	[  0]	KSHORT	  9		720	; slot9 = 720
		104	[  0]	TSETS	  9	8	17	; <unknown table>.window.height = slot9
		105	[  0]	TGETS	  8	0	23	; slot8 = slot0.window
		106	[  0]	KPRI 	  9		2	; slot9 = true
		107	[  0]	TSETS	  9	8	16	; <unknown table>.window.highdpi = slot9
		108	[  0]	TGETS	  8	0	23	; slot8 = slot0.window
		109	[  0]	KPRI 	  9		1	; slot9 = false
		110	[  0]	TSETS	  9	8	15	; <unknown table>.window.usedpiscale = slot9
		111	[  0]	TGETS	  8	0	23	; slot8 = slot0.window
		112	[  0]	KSHORT	  9		0	; slot9 = 0
		113	[  0]	TSETS	  9	8	14	; <unknown table>.window.msaa = slot9
		114	[  0]	TGETS	  8	0	23	; slot8 = slot0.window
		115	[  0]	KPRI 	  9		1	; slot9 = false
		116	[  0]	TSETS	  9	8	13	; <unknown table>.window.stencil = slot9
		117	[  0]	TGETS	  8	0	23	; slot8 = slot0.window
		118	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		119	[  0]	TGETS	  9	9	11	; slot9 = uv0"unknown".vsyncForMode
		120	[  0]	MOV  	 11		1	; slot11 = slot1
		121	[  0]	MOV  	 12		2	; slot12 = <unknown table>.settings.vsyncEnabled
		122	[  0]	CALL 	  9	2	3	; slot9 = uv0"unknown".vsyncForMode(uv0"unknown".getPrimaryDesktopArea, slot11)
		123	[  0]	TSETS	  9	8	12	; <unknown table>.window.vsync = uv0"unknown".vsyncForMode
		124	[  0]	TGETS	  8	0	23	; slot8 = slot0.window
		125	[  0]	KPRI 	  9		1	; slot9 = false
		126	[  0]	TSETS	  9	8	10	; <unknown table>.window.resizable = slot9
		127	[  0]	TGETS	  8	0	23	; slot8 = slot0.window
		128	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		129	[  0]	TGETS	  9	9	9	; slot9 = uv0"unknown".isFullscreenMode
		130	[  0]	MOV  	 11		1	; slot11 = slot1
		131	[  0]	CALL 	  9	2	2	; slot9 = uv0"unknown".isFullscreenMode(uv0"unknown".getPrimaryDesktopArea)
		132	[  0]	TSETS	  9	8	28	; <unknown table>.window.fullscreen = uv0"unknown".isFullscreenMode
		133	[  0]	TGETS	  8	0	23	; slot8 = slot0.window
		134	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		135	[  0]	TGETS	  9	9	7	; slot9 = uv0"unknown".fullscreenTypeForMode
		136	[  0]	MOV  	 11		1	; slot11 = slot1
		137	[  0]	CALL 	  9	2	2	; slot9 = uv0"unknown".fullscreenTypeForMode(uv0"unknown".getPrimaryDesktopArea)
		138	[  0]	TSETS	  9	8	8	; <unknown table>.window.fullscreentype = uv0"unknown".fullscreenTypeForMode
		139	[  0]	TGETS	  8	0	23	; slot8 = slot0.window
		140	[  0]	TSETS	  3	8	27	; <unknown table>.window.borderless = uv0"unknown".isBorderlessWindowMode
		141	[  0]	TGETS	  8	0	23	; slot8 = slot0.window
		142	[  0]	NOT  	  9		3	; slot9 = not uv0"unknown".isBorderlessWindowMode
		143	[  0]	TSETS	  9	8	6	; <unknown table>.window.centered = slot9
		144	[  0]	ISF  	   		3	; if not uv0"unknown".isBorderlessWindowMode
		145	[  0]	JMP  	  8		10	; 	goto 156
		146	[  0]	TGETS	  8	0	23	; slot8 = slot0.window
		147	[  0]	ISTC 	  9		4	; slot9 = uv0"unknown".getBorderlessWindowBounds; if uv0"unknown".getBorderlessWindowBounds
		148	[  0]	JMP  	  9		1	; 	goto 150
		149	[  0]	KSHORT	  9		0	; slot9 = 0
		150	[  0]	TSETS	  9	8	5	; <unknown table>.window.x = slot9
		151	[  0]	TGETS	  8	0	23	; slot8 = slot0.window
		152	[  0]	ISTC 	  9		5	; slot9 = slot5; if slot5
		153	[  0]	JMP  	  9		1	; 	goto 155
		154	[  0]	KSHORT	  9		0	; slot9 = 0
		155	[  0]	TSETS	  9	8	4	; <unknown table>.window.y = slot9
		156	[  0]	TGETS	  8	0	23	; slot8 = slot0.window
		157	[  0]	KPRI 	  9		2	; slot9 = true
		158	[  0]	TSETS	  9	8	3	; <unknown table>.window.visible = slot9
		159	[  0]	KSTR 	  8		1	; slot8 = "slotbound"
		160	[  0]	TSETS	  8	0	2	; slot0.identity = slot8
		161	[  0]	KPRI 	  8		2	; slot8 = true
		162	[  0]	TSETS	  8	0	0	; slot0.appendidentity = slot8
		163	[  0]	RET0 	  0		1	; return
	134	[  0]	TSETS	  3	2	1	; love.conf = slot3
	135	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 136
	136	[  0]	RET0 	  0		1	; return
	
