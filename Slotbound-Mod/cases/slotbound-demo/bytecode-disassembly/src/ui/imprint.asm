;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\ui\imprint.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 79 slots
	;;;; constant tables ;;;;
	ktable#51 = [
		[active] = false,
		]
	
	
	ktable#53 = [
		[active] = false,
		]
	
	
	ktable#55 = [
		[active] = false,
		]
	
	
	ktable#103 = [
		#1: 1,
		#2: 1,
		#3: 1,
		#4: 1,
		#5: 1,
		]
	
	
	ktable#105 = [
		#1: 0,
		#2: 0,
		#3: 0,
		#4: 0,
		#5: 0,
		]
	
	
	ktable#107 = [
		#1: 0,
		#2: 0,
		#3: 0,
		#4: 0,
		#5: 0,
		]
	
	
	ktable#109 = [
		#1: 1,
		#2: 1,
		#3: 1,
		#4: 1,
		#5: 1,
		]
	
	
	ktable#110 = [
		[confirmBtnPressed] = false,
		[upgradeBtnPressed] = false,
		[convertBtnPressed] = false,
		[cancelBtnPressed] = false,
		[changeBtnScale] = 1,
		[confirmBtnScale] = 1,
		[upgradeBtnScale] = 1,
		[convertBtnScale] = 1,
		[cancelBtnScale] = 1,
		[previewScale] = 1,
		[previewTargetY] = 0,
		[previewAlpha] = 0,
		[previewY] = -100,
		[blinkTimer] = 0,
		[holdTimer] = 0,
		[v] = 0,
		[replaceHoveringNext] = false,
		[replaceHovering] = false,
		[convertHovering] = false,
		[changeBtnTimer] = 0,
		[confirmBtnTimer] = 0,
		[upgradeBtnTimer] = 0,
		[convertBtnTimer] = 0,
		[cancelBtnTimer] = 0,
		[changeBtnPressed] = false,
		]
	
	
	;;;; instructions ;;;;
	  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
	  2	[  0]	KPRI 	  1		1	; slot1 = false
	  3	[  0]	TSETS	  1	0	147	; slot0._cancelTriggered = slot1
	  4	[  0]	KPRI 	  1		1	; slot1 = false
	  5	[  0]	TSETS	  1	0	146	; slot0._convertTriggered = slot1
	  6	[  0]	KPRI 	  1		1	; slot1 = false
	  7	[  0]	TSETS	  1	0	145	; slot0._upgradeTriggered = slot1
	  8	[  0]	KPRI 	  1		0	; slot1 = nil
	  9	[  0]	TSETS	  1	0	144	; slot0._upgradeSlot = slot1
	 10	[  0]	KPRI 	  1		1	; slot1 = false
	 11	[  0]	TSETS	  1	0	143	; slot0._confirmTriggered = slot1
	 12	[  0]	KPRI 	  1		0	; slot1 = nil
	 13	[  0]	TSETS	  1	0	142	; slot0._confirmSlot = slot1
	 14	[  0]	KPRI 	  1		0	; slot1 = nil
	 15	[  0]	TSETS	  1	0	141	; slot0._confirmAction = slot1
	 16	[  0]	KPRI 	  1		1	; slot1 = false
	 17	[  0]	TSETS	  1	0	140	; slot0._changeTriggered = slot1
	 18	[  0]	KPRI 	  1		0	; slot1 = nil
	 19	[  0]	TSETS	  1	0	139	; slot0._changeSlot = slot1
	 20	[  0]	GGET 	  1		138	; slot1 = _env["require"]
	 21	[  0]	KSTR 	  3		137	; slot3 = "src.data.constants"
	 22	[  0]	CALL 	  1	2	2	; slot1 = require(slot2)
	 23	[  0]	GGET 	  2		138	; slot2 = _env["require"]
	 24	[  0]	KSTR 	  4		136	; slot4 = "src.ui.screen"
	 25	[  0]	CALL 	  2	2	2	; slot2 = require(slot3)
	 26	[  0]	TGETS	  2	2	135	; slot2 = slot2.layout
	 27	[  0]	GGET 	  3		138	; slot3 = _env["require"]
	 28	[  0]	KSTR 	  5		134	; slot5 = "src.data.assets"
	 29	[  0]	CALL 	  3	2	2	; slot3 = require(slot4)
	 30	[  0]	GGET 	  4		138	; slot4 = _env["require"]
	 31	[  0]	KSTR 	  6		133	; slot6 = "src.data.randomoption"
	 32	[  0]	CALL 	  4	2	2	; slot4 = require(slot5)
	 33	[  0]	GGET 	  5		138	; slot5 = _env["require"]
	 34	[  0]	KSTR 	  7		132	; slot7 = "src.data.language"
	 35	[  0]	CALL 	  5	2	2	; slot5 = require(slot6)
	 36	[  0]	GGET 	  6		138	; slot6 = _env["require"]
	 37	[  0]	KSTR 	  8		131	; slot8 = "src.data.font_resolver"
	 38	[  0]	CALL 	  6	2	2	; slot6 = require(slot7)
	 39	[  0]	GGET 	  7		138	; slot7 = _env["require"]
	 40	[  0]	KSTR 	  9		130	; slot9 = "src.data.skill"
	 41	[  0]	CALL 	  7	2	2	; slot7 = require(slot8)
	 42	[  0]	GGET 	  8		138	; slot8 = _env["require"]
	 43	[  0]	KSTR 	 10		129	; slot10 = "src.data.faction"
	 44	[  0]	CALL 	  8	2	2	; slot8 = require(slot9)
	 45	[  0]	GGET 	  9		138	; slot9 = _env["require"]
	 46	[  0]	KSTR 	 11		128	; slot11 = "src.ui.widgets"
	 47	[  0]	CALL 	  9	2	2	; slot9 = require(slot10)
	 48	[  0]	TGETS	  9	9	127	; slot9 = require.progress_bar
	 49	[  0]	KSTR 	 10		126	; slot10 = "src/data/font/Chinese/arkpixel10.ttf"
	 50	[  0]	KSHORT	 11		10	; slot11 = 10
	 51	[  0]	KSTR 	 12		125	; slot12 = "normal"
	 52	[  0]	FNEW 	 13		124	; N/A:0-0: 0 args, 0 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		3	; slot0 = _env["_G"]
		  2	[  0]	TGETS	  0	0	2	; slot0 = _G.currentGameLang
		  3	[  0]	IST  	   		0	; if _G.currentGameLang
		  4	[  0]	JMP  	  1		1	; 	goto 6
		  5	[  0]	KSTR 	  0		1	; slot0 = "ko"
		  6	[  0]	ISEQS	  0		0	; if slot0 == "zh"
		  7	[  0]	JMP  	  0		2	; 	goto 10
		  8	[  0]	KPRI 	  0		1	; slot0 = false
		  9	[  0]	JMP  	  1		1	; 	goto 11
		 10	[  0]	KPRI 	  0		2	; slot0 = true
		 11	[  0]	RET1 	  0		2	; return slot0
	 53	[  0]	FNEW 	 14		123	; N/A:0-0: 0 args, 0 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		2	; slot0 = _env["_G"]
		  2	[  0]	TGETS	  0	0	1	; slot0 = _G.currentGameLang
		  3	[  0]	IST  	   		0	; if _G.currentGameLang
		  4	[  0]	JMP  	  1		1	; 	goto 6
		  5	[  0]	KSTR 	  0		0	; slot0 = "ko"
		  6	[  0]	RET1 	  0		2	; return slot0
	 54	[  0]	FNEW 	 15		122	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		4	; slot1 = _env["rawget"]
		  2	[  0]	GGET 	  3		3	; slot3 = _env["_G"]
		  3	[  0]	KSTR 	  4		2	; slot4 = "getChineseLatinFallbackFont"
		  4	[  0]	CALL 	  1	2	3	; slot1 = rawget(slot2, _G)
		  5	[  0]	GGET 	  2		1	; slot2 = _env["type"]
		  6	[  0]	MOV  	  4		1	; slot4 = slot1
		  7	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  8	[  0]	ISNES	  2		0	; if slot2 ~= "function"
		  9	[  0]	JMP  	  2		6	; 	goto 16
		 10	[  0]	MOV  	  2		1	; slot2 = slot1
		 11	[  0]	MOV  	  4		0	; slot4 = slot0
		 12	[  0]	CALL 	  2	2	2	; slot2 = slot2(slot3)
		 13	[  0]	ISF  	   		2	; if not slot2
		 14	[  0]	JMP  	  3		1	; 	goto 16
		 15	[  0]	RET1 	  2		2	; return slot2
		 16	[  0]	RET1 	  0		2	; return slot0
	 55	[  0]	FNEW 	 16		121	; N/A:0-0: 2 args, 0 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  2		2	; 	goto 5
		  3	[  0]	KSHORT	  2		0	; slot2 = 0
		  4	[  0]	RET1 	  2		2	; return slot2
		  5	[  0]	GGET 	  2		9	; slot2 = _env["rawget"]
		  6	[  0]	GGET 	  4		8	; slot4 = _env["_G"]
		  7	[  0]	KSTR 	  5		7	; slot5 = "measureChineseMixedTextWidth"
		  8	[  0]	CALL 	  2	2	3	; slot2 = rawget(slot3, _G)
		  9	[  0]	GGET 	  3		6	; slot3 = _env["type"]
		 10	[  0]	MOV  	  5		2	; slot5 = slot2
		 11	[  0]	CALL 	  3	2	2	; slot3 = type(_G)
		 12	[  0]	ISNES	  3		5	; if type ~= "function"
		 13	[  0]	JMP  	  3		17	; 	goto 31
		 14	[  0]	GGET 	  3		4	; slot3 = _env["pcall"]
		 15	[  0]	MOV  	  5		2	; slot5 = slot2
		 16	[  0]	GGET 	  6		3	; slot6 = _env["tostring"]
		 17	[  0]	ISTC 	  8		1	; slot8 = slot1; if slot1
		 18	[  0]	JMP  	  8		1	; 	goto 20
		 19	[  0]	KSTR 	  8		2	; slot8 = ""
		 20	[  0]	CALL 	  6	2	2	; slot6 = tostring(slot7)
		 21	[  0]	MOV  	  7		0	; slot7 = slot0
		 22	[  0]	CALL 	  3	3	4	; slot3, slot4 = pcall(_G, slot5, tostring)
		 23	[  0]	ISF  	   		3	; if not slot3
		 24	[  0]	JMP  	  5		6	; 	goto 31
		 25	[  0]	GGET 	  5		6	; slot5 = _env["type"]
		 26	[  0]	MOV  	  7		4	; slot7 = slot4
		 27	[  0]	CALL 	  5	2	2	; slot5 = type(tostring)
		 28	[  0]	ISNES	  5		1	; if type ~= "number"
		 29	[  0]	JMP  	  5		1	; 	goto 31
		 30	[  0]	RET1 	  4		2	; return slot4
		 31	[  0]	MOV  	  5		0	; slot5 = slot0
		 32	[  0]	TGETS	  3	0	0	; slot3 = slot0.getWidth
		 33	[  0]	GGET 	  6		3	; slot6 = _env["tostring"]
		 34	[  0]	ISTC 	  8		1	; slot8 = slot1; if slot1
		 35	[  0]	JMP  	  8		1	; 	goto 37
		 36	[  0]	KSTR 	  8		2	; slot8 = ""
		 37	[  0]	CALL 	  6	0	2	; MULTRES = tostring(slot7)
		 38	[  0]	CALLMT	  3		1	; return <unknown table>.getWidth(, ...MULTRES)
	 56	[  0]	FNEW 	 17		120	; N/A:0-0: 2 args, 1 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown"(slot3)
		  4	[  0]	ISF  	   		2	; if not slot2
		  5	[  0]	JMP  	  3		5	; 	goto 11
		  6	[  0]	MOV  	  5		2	; slot5 = slot2
		  7	[  0]	TGETS	  3	2	0	; slot3 = slot2.getHeight
		  8	[  0]	CALL 	  3	2	2	; slot3 = <unknown table>.getHeight(slot4)
		  9	[  0]	IST  	   		3	; if <unknown table>.getHeight
		 10	[  0]	JMP  	  4		10	; 	goto 21
		 11	[  0]	ISF  	   		0	; if not slot0
		 12	[  0]	JMP  	  3		5	; 	goto 18
		 13	[  0]	MOV  	  5		0	; slot5 = slot0
		 14	[  0]	TGETS	  3	0	0	; slot3 = slot0.getHeight
		 15	[  0]	CALL 	  3	2	2	; slot3 = <unknown table>.getHeight(slot4)
		 16	[  0]	IST  	   		3	; if <unknown table>.getHeight
		 17	[  0]	JMP  	  4		3	; 	goto 21
		 18	[  0]	ISTC 	  3		1	; slot3 = slot1; if slot1
		 19	[  0]	JMP  	  3		1	; 	goto 21
		 20	[  0]	KSHORT	  3		12	; slot3 = 12
		 21	[  0]	RET1 	  3		2	; return slot3
	 57	[  0]	FNEW 	 18		119	; N/A:0-0: 2 args, 5 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	CALL 	  2	2	1	; slot2 = uv0"unknown"()
		  3	[  0]	ISF  	   		2	; if not uv0"unknown"
		  4	[  0]	JMP  	  3		4	; 	goto 9
		  5	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  6	[  0]	IST  	   		1	; if slot1
		  7	[  0]	JMP  	  2		1	; 	goto 9
		  8	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		  9	[  0]	GGET 	  2		17	; slot2 = _env["type"]
		 10	[  0]	MOV  	  4		0	; slot4 = uv1"unknown"
		 11	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		 12	[  0]	ISNES	  2		16	; if slot2 ~= "string"
		 13	[  0]	JMP  	  2		9	; 	goto 23
		 14	[  0]	ISEQS	  0		15	; if uv1"unknown" == ""
		 15	[  0]	JMP  	  2		7	; 	goto 23
		 16	[  0]	GGET 	  2		14	; slot2 = _env["love"]
		 17	[  0]	TGETS	  2	2	13	; slot2 = love.filesystem
		 18	[  0]	TGETS	  2	2	12	; slot2 = love.filesystem.getInfo
		 19	[  0]	MOV  	  4		0	; slot4 = uv1"unknown"
		 20	[  0]	CALL 	  2	2	2	; slot2 = love.filesystem.getInfo(slot3)
		 21	[  0]	IST  	   		2	; if slot2
		 22	[  0]	JMP  	  2		2	; 	goto 25
		 23	[  0]	KPRI 	  2		0	; slot2 = nil
		 24	[  0]	RET1 	  2		2	; return slot2
		 25	[  0]	KNIL 	  2		3	; slot2, slot3 = nil
		 26	[  0]	MOV  	  6		0	; slot6 = uv1"unknown"
		 27	[  0]	TGETS	  4	0	11	; slot4 = uv1"unknown".lower
		 28	[  0]	CALL 	  4	2	2	; slot4 = uv1"unknown".lower(slot5)
		 29	[  0]	MOV  	  6		4	; slot6 = uv1"unknown".lower
		 30	[  0]	TGETS	  4	4	10	; slot4 = uv1"unknown".lower.match
		 31	[  0]	KSTR 	  7		9	; slot7 = "%.ttf$"
		 32	[  0]	CALL 	  4	2	3	; slot4 = uv1"unknown".lower.match(slot5, uv1"unknown".lower)
		 33	[  0]	IST  	   		4	; if uv1"unknown".lower.match
		 34	[  0]	JMP  	  5		9	; 	goto 44
		 35	[  0]	MOV  	  6		0	; slot6 = uv1"unknown"
		 36	[  0]	TGETS	  4	0	11	; slot4 = uv1"unknown".lower
		 37	[  0]	CALL 	  4	2	2	; slot4 = uv1"unknown".lower(slot5)
		 38	[  0]	MOV  	  6		4	; slot6 = uv1"unknown".lower
		 39	[  0]	TGETS	  4	4	10	; slot4 = uv1"unknown".lower.match
		 40	[  0]	KSTR 	  7		8	; slot7 = "%.otf$"
		 41	[  0]	CALL 	  4	2	3	; slot4 = uv1"unknown".lower.match(slot5, uv1"unknown".lower)
		 42	[  0]	ISF  	   		4	; if not uv1"unknown".lower.match
		 43	[  0]	JMP  	  5		13	; 	goto 57
		 44	[  0]	GGET 	  4		7	; slot4 = _env["pcall"]
		 45	[  0]	GGET 	  6		14	; slot6 = _env["love"]
		 46	[  0]	TGETS	  6	6	6	; slot6 = love.graphics
		 47	[  0]	TGETS	  6	6	5	; slot6 = love.graphics.newFont
		 48	[  0]	MOV  	  7		0	; slot7 = uv1"unknown"
		 49	[  0]	ISTC 	  8		1	; slot8 = uv2"unknown"; if uv2"unknown"
		 50	[  0]	JMP  	  8		1	; 	goto 52
		 51	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
		 52	[  0]	UGET 	  9		3	; slot9 = uv3"unknwon"
		 53	[  0]	CALL 	  4	3	5	; slot4, slot5 = pcall(slot5, love.graphics.newFont, uv1"unknown", uv2"unknown")
		 54	[  0]	MOV  	  3		5	; slot3 = slot5
		 55	[  0]	MOV  	  2		4	; slot2 = slot4
		 56	[  0]	JMP  	  4		8	; 	goto 65
		 57	[  0]	GGET 	  4		7	; slot4 = _env["pcall"]
		 58	[  0]	GGET 	  6		14	; slot6 = _env["love"]
		 59	[  0]	TGETS	  6	6	6	; slot6 = love.graphics
		 60	[  0]	TGETS	  6	6	5	; slot6 = love.graphics.newFont
		 61	[  0]	MOV  	  7		0	; slot7 = uv1"unknown"
		 62	[  0]	CALL 	  4	3	3	; slot4, slot5 = pcall(slot5, love.graphics.newFont)
		 63	[  0]	MOV  	  3		5	; slot3 = slot5
		 64	[  0]	MOV  	  2		4	; slot2 = pcall
		 65	[  0]	ISF  	   		2	; if not pcall
		 66	[  0]	JMP  	  4		25	; 	goto 92
		 67	[  0]	ISF  	   		3	; if not slot3
		 68	[  0]	JMP  	  4		23	; 	goto 92
		 69	[  0]	MOV  	  6		3	; slot6 = slot3
		 70	[  0]	TGETS	  4	3	4	; slot4 = slot3.setFilter
		 71	[  0]	KSTR 	  7		3	; slot7 = "nearest"
		 72	[  0]	KSTR 	  8		3	; slot8 = "nearest"
		 73	[  0]	CALL 	  4	1	4	;  = <unknown table>.setFilter(slot5, slot6, slot7)
		 74	[  0]	UGET 	  4		4	; slot4 = uv4"unknwon"
		 75	[  0]	TGETS	  4	4	2	; slot4 = uv4"unknown".attachFallbacks
		 76	[  0]	MOV  	  6		3	; slot6 = slot3
		 77	[  0]	MOV  	  7		0	; slot7 = uv1"unknown"
		 78	[  0]	CALL 	  4	1	3	;  = uv4"unknown".attachFallbacks(slot5, slot6)
		 79	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 80	[  0]	CALL 	  4	2	1	; slot4 = uv0"unknown"()
		 81	[  0]	ISF  	   		4	; if not uv0"unknown"
		 82	[  0]	JMP  	  5		8	; 	goto 91
		 83	[  0]	GGET 	  4		1	; slot4 = _env["_G"]
		 84	[  0]	TGETS	  4	4	0	; slot4 = _G.registerChineseShadowFont
		 85	[  0]	ISF  	   		4	; if not _G.registerChineseShadowFont
		 86	[  0]	JMP  	  5		4	; 	goto 91
		 87	[  0]	GGET 	  4		1	; slot4 = _env["_G"]
		 88	[  0]	TGETS	  4	4	0	; slot4 = _G.registerChineseShadowFont
		 89	[  0]	MOV  	  6		3	; slot6 = slot3
		 90	[  0]	CALL 	  4	1	2	;  = _G.registerChineseShadowFont(slot5)
		 91	[  0]	RET1 	  3		2	; return slot3
		 92	[  0]	KPRI 	  4		0	; slot4 = nil
		 93	[  0]	RET1 	  4		2	; return slot4
	 58	[  0]	FNEW 	 19		118	; N/A:0-0: 2 args, 2 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		15	; slot2 = _env["type"]
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  4	[  0]	ISNES	  2		14	; if slot2 ~= "string"
		  5	[  0]	JMP  	  2		9	; 	goto 15
		  6	[  0]	ISEQS	  0		13	; if slot0 == ""
		  7	[  0]	JMP  	  2		7	; 	goto 15
		  8	[  0]	GGET 	  2		12	; slot2 = _env["love"]
		  9	[  0]	TGETS	  2	2	11	; slot2 = love.filesystem
		 10	[  0]	TGETS	  2	2	10	; slot2 = love.filesystem.getInfo
		 11	[  0]	MOV  	  4		0	; slot4 = slot0
		 12	[  0]	CALL 	  2	2	2	; slot2 = love.filesystem.getInfo(slot3)
		 13	[  0]	IST  	   		2	; if slot2
		 14	[  0]	JMP  	  2		2	; 	goto 17
		 15	[  0]	KPRI 	  2		0	; slot2 = nil
		 16	[  0]	RET1 	  2		2	; return slot2
		 17	[  0]	KNIL 	  2		3	; slot2, slot3 = nil
		 18	[  0]	GGET 	  4		9	; slot4 = _env["tostring"]
		 19	[  0]	MOV  	  6		0	; slot6 = slot0
		 20	[  0]	CALL 	  4	2	2	; slot4 = tostring(slot5)
		 21	[  0]	MOV  	  6		4	; slot6 = tostring
		 22	[  0]	TGETS	  4	4	8	; slot4 = tostring.lower
		 23	[  0]	CALL 	  4	2	2	; slot4 = tostring.lower(slot5)
		 24	[  0]	MOV  	  7		4	; slot7 = tostring.lower
		 25	[  0]	TGETS	  5	4	7	; slot5 = tostring.lower.match
		 26	[  0]	KSTR 	  8		6	; slot8 = "%.ttf$"
		 27	[  0]	CALL 	  5	2	3	; slot5 = tostring.lower.match(tostring, tostring.lower)
		 28	[  0]	IST  	   		5	; if tostring.lower.match
		 29	[  0]	JMP  	  6		6	; 	goto 36
		 30	[  0]	MOV  	  7		4	; slot7 = tostring.lower
		 31	[  0]	TGETS	  5	4	7	; slot5 = tostring.lower.match
		 32	[  0]	KSTR 	  8		5	; slot8 = "%.otf$"
		 33	[  0]	CALL 	  5	2	3	; slot5 = tostring.lower.match(tostring, tostring.lower)
		 34	[  0]	ISF  	   		5	; if not tostring.lower.match
		 35	[  0]	JMP  	  6		13	; 	goto 49
		 36	[  0]	GGET 	  5		4	; slot5 = _env["pcall"]
		 37	[  0]	GGET 	  7		12	; slot7 = _env["love"]
		 38	[  0]	TGETS	  7	7	3	; slot7 = love.graphics
		 39	[  0]	TGETS	  7	7	2	; slot7 = love.graphics.newFont
		 40	[  0]	MOV  	  8		0	; slot8 = slot0
		 41	[  0]	ISTC 	  9		1	; slot9 = slot1; if slot1
		 42	[  0]	JMP  	  9		1	; 	goto 44
		 43	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 44	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
		 45	[  0]	CALL 	  5	3	5	; slot5, slot6 = pcall(tostring, love.graphics.newFont, slot8, uv0"unknown")
		 46	[  0]	MOV  	  3		6	; slot3 = tostring
		 47	[  0]	MOV  	  2		5	; slot2 = slot5
		 48	[  0]	JMP  	  5		8	; 	goto 57
		 49	[  0]	GGET 	  5		4	; slot5 = _env["pcall"]
		 50	[  0]	GGET 	  7		12	; slot7 = _env["love"]
		 51	[  0]	TGETS	  7	7	3	; slot7 = love.graphics
		 52	[  0]	TGETS	  7	7	2	; slot7 = love.graphics.newFont
		 53	[  0]	MOV  	  8		0	; slot8 = slot0
		 54	[  0]	CALL 	  5	3	3	; slot5, slot6 = pcall(tostring, love.graphics.newFont)
		 55	[  0]	MOV  	  3		6	; slot3 = tostring
		 56	[  0]	MOV  	  2		5	; slot2 = pcall
		 57	[  0]	ISF  	   		2	; if not pcall
		 58	[  0]	JMP  	  5		8	; 	goto 67
		 59	[  0]	ISF  	   		3	; if not tostring
		 60	[  0]	JMP  	  5		6	; 	goto 67
		 61	[  0]	MOV  	  7		3	; slot7 = tostring
		 62	[  0]	TGETS	  5	3	1	; slot5 = tostring.setFilter
		 63	[  0]	KSTR 	  8		0	; slot8 = "nearest"
		 64	[  0]	KSTR 	  9		0	; slot9 = "nearest"
		 65	[  0]	CALL 	  5	1	4	;  = tostring.setFilter(tostring, tostring, slot8)
		 66	[  0]	RET1 	  3		2	; return tostring
		 67	[  0]	KPRI 	  5		0	; slot5 = nil
		 68	[  0]	RET1 	  5		2	; return slot5
	 59	[  0]	FNEW 	 20		117	; N/A:0-0: 4 args, 3 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  4		3	; slot4 = _env["_G"]
		  2	[  0]	TGETS	  4	4	2	; slot4 = _G.maybeRegisterSLineTtfTextEffect
		  3	[  0]	ISF  	   		4	; if not _G.maybeRegisterSLineTtfTextEffect
		  4	[  0]	JMP  	  5		7	; 	goto 12
		  5	[  0]	GGET 	  4		3	; slot4 = _env["_G"]
		  6	[  0]	TGETS	  4	4	2	; slot4 = _G.maybeRegisterSLineTtfTextEffect
		  7	[  0]	MOV  	  6		0	; slot6 = slot0
		  8	[  0]	MOV  	  7		1	; slot7 = slot1
		  9	[  0]	MOV  	  8		2	; slot8 = slot2
		 10	[  0]	MOV  	  9		3	; slot9 = slot3
		 11	[  0]	CALL 	  4	1	5	;  = _G.maybeRegisterSLineTtfTextEffect(slot5, slot6, slot7, slot8)
		 12	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 13	[  0]	CALL 	  4	2	1	; slot4 = uv0"unknown"()
		 14	[  0]	ISF  	   		4	; if not uv0"unknown"
		 15	[  0]	JMP  	  5		23	; 	goto 39
		 16	[  0]	GGET 	  4		3	; slot4 = _env["_G"]
		 17	[  0]	TGETS	  4	4	1	; slot4 = _G.registerChineseLatinFallbackFont
		 18	[  0]	ISF  	   		4	; if not _G.registerChineseLatinFallbackFont
		 19	[  0]	JMP  	  5		19	; 	goto 39
		 20	[  0]	GGET 	  4		3	; slot4 = _env["_G"]
		 21	[  0]	TGETS	  4	4	0	; slot4 = _G.resolveChineseLatinFallbackPath
		 22	[  0]	ISF  	   		4	; if not _G.resolveChineseLatinFallbackPath
		 23	[  0]	JMP  	  5		6	; 	goto 30
		 24	[  0]	GGET 	  4		3	; slot4 = _env["_G"]
		 25	[  0]	TGETS	  4	4	0	; slot4 = _G.resolveChineseLatinFallbackPath
		 26	[  0]	MOV  	  6		1	; slot6 = slot1
		 27	[  0]	CALL 	  4	2	2	; slot4 = _G.resolveChineseLatinFallbackPath(slot5)
		 28	[  0]	IST  	   		4	; if _G.resolveChineseLatinFallbackPath
		 29	[  0]	JMP  	  5		1	; 	goto 31
		 30	[  0]	MOV  	  4		1	; slot4 = slot1
		 31	[  0]	GGET 	  5		3	; slot5 = _env["_G"]
		 32	[  0]	TGETS	  5	5	1	; slot5 = _G.registerChineseLatinFallbackFont
		 33	[  0]	MOV  	  7		0	; slot7 = slot0
		 34	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 35	[  0]	MOV  	 10		4	; slot10 = slot4
		 36	[  0]	UGET 	 11		2	; slot11 = uv2"unknwon"
		 37	[  0]	CALL 	  8	0	3	; MULTRES = uv1"unknown"(slot9, slot10)
		 38	[  0]	CALLM	  5	1	1	;  = _G.registerChineseLatinFallbackFont(slot6, ...MULTRES)
		 39	[  0]	RET1 	  0		2	; return slot0
	 60	[  0]	FNEW 	 21		116	; N/A:0-0: 1 args, 4 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown"()
		  3	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  4	[  0]	CALL 	  2	2	1	; slot2 = uv1"unknown"()
		  5	[  0]	ISF  	   		2	; if not uv1"unknown"
		  6	[  0]	JMP  	  3		3	; 	goto 10
		  7	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		  8	[  0]	IST  	   		2	; if uv2"unknown"
		  9	[  0]	JMP  	  3		5	; 	goto 15
		 10	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 11	[  0]	TGETS	  2	2	3	; slot2 = uv3"unknown".resolve
		 12	[  0]	MOV  	  4		0	; slot4 = slot0
		 13	[  0]	MOV  	  5		1	; slot5 = slot1
		 14	[  0]	CALL 	  2	2	3	; slot2 = uv3"unknown".resolve(slot3, slot4)
		 15	[  0]	GGET 	  3		2	; slot3 = _env["type"]
		 16	[  0]	MOV  	  5		2	; slot5 = slot2
		 17	[  0]	CALL 	  3	2	2	; slot3 = type(slot4)
		 18	[  0]	ISNES	  3		1	; if type ~= "string"
		 19	[  0]	JMP  	  3		2	; 	goto 22
		 20	[  0]	ISNES	  2		0	; if slot2 ~= ""
		 21	[  0]	JMP  	  3		1	; 	goto 23
		 22	[  0]	MOV  	  2		0	; slot2 = slot0
		 23	[  0]	MOV  	  3		2	; slot3 = slot2
		 24	[  0]	MOV  	  4		1	; slot4 = slot1
		 25	[  0]	RET  	  3		3	; return slot3, slot4
	 61	[  0]	KPRI 	 22		0	; slot22 = nil
	 62	[  0]	FNEW 	 23		115	; N/A:0-0: 0 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		2	; 	goto 6
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	RET1 	  0		2	; return uv0"unknown"
		  6	[  0]	KSTR 	  0		3	; slot0 = "    extern vec2 texelStep;      // texture coord offset equal to 1 screen pixel
		    extern vec4 outlineColor;   // RGBA
		    extern float threshold;     // alpha threshold
		    extern float radiusPx;      // outline radius in px (1.0 to 2.0 for sub-pixel logic)
		    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){
		      float a0 = Texel(tex, tc).a;
		      if (a0 <= threshold){
		        vec2 s = texelStep;
		
		        // Layer 1: Immediate cardinal neighbors (1px) -> Always Solid
		        float aL = Texel(tex, tc + vec2(-s.x, 0.0)).a;
		        float aR = Texel(tex, tc + vec2( s.x, 0.0)).a;
		        float aU = Texel(tex, tc + vec2(0.0, -s.y)).a;
		        float aD = Texel(tex, tc + vec2(0.0,  s.y)).a;
		        
		        if (max(max(aL, aR), max(aU, aD)) > threshold) {
		            return outlineColor;
		        }
		
		        // Layer 2: Sub-pixel extension (Hard Cut)
		        // If radius is 1.15, we draw 15% of the 2nd pixel layer solid, then cut off.
		        if (radiusPx > 1.0) {
		            float extra = radiusPx - 1.0;
		            vec2 pos = tc / texelStep;
		            vec2 f = fract(pos); // 0..1 within current texel
		
		            // Left-Left Source (Expanding Right)
		            float aLL = Texel(tex, tc + vec2(-s.x * 2.0, 0.0)).a;
		            if (aLL > threshold && f.x < extra) return outlineColor;
		
		            // Right-Right Source (Expanding Left)
		            float aRR = Texel(tex, tc + vec2( s.x * 2.0, 0.0)).a;
		            if (aRR > threshold && f.x > (1.0 - extra)) return outlineColor;
		
		            // Up-Up Source (Expanding Down)
		            float aUU = Texel(tex, tc + vec2(0.0, -s.y * 2.0)).a;
		            if (aUU > threshold && f.y < extra) return outlineColor;
		
		            // Down-Down Source (Expanding Up)
		            float aDD = Texel(tex, tc + vec2(0.0,  s.y * 2.0)).a;
		            if (aDD > threshold && f.y > (1.0 - extra)) return outlineColor;
		        }
		      }
		      return vec4(0.0);
		    }
		  "
		  7	[  0]	GGET 	  1		2	; slot1 = _env["love"]
		  8	[  0]	TGETS	  1	1	1	; slot1 = love.graphics
		  9	[  0]	TGETS	  1	1	0	; slot1 = love.graphics.newShader
		 10	[  0]	MOV  	  3		0	; slot3 = slot0
		 11	[  0]	CALL 	  1	2	2	; slot1 = love.graphics.newShader(slot2)
		 12	[  0]	USETV	  0		1	; uv0"unknwon" = slot1
		 13	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 14	[  0]	RET1 	  1		2	; return uv0"unknown"
	 63	[  0]	KPRI 	 24		0	; slot24 = nil
	 64	[  0]	FNEW 	 25		114	; N/A:0-0: 0 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		2	; 	goto 6
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	RET1 	  0		2	; return uv0"unknown"
		  6	[  0]	KSTR 	  0		3	; slot0 = "    extern vec4 glowColor;
		    vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {
		        vec2 uv = texture_coords - 0.5;
		        vec2 d = abs(uv) - 0.22; // Slightly larger core
		        float dist = length(max(d, 0.0)) + min(max(d.x, d.y), 0.0);
		        // Sharper transition for "less blurry" look
		        float alpha = 1.0 - smoothstep(0.0, 0.12, dist);
		        alpha = pow(alpha, 1.2);
		        return glowColor * alpha;
		    }
		  "
		  7	[  0]	GGET 	  1		2	; slot1 = _env["love"]
		  8	[  0]	TGETS	  1	1	1	; slot1 = love.graphics
		  9	[  0]	TGETS	  1	1	0	; slot1 = love.graphics.newShader
		 10	[  0]	MOV  	  3		0	; slot3 = slot0
		 11	[  0]	CALL 	  1	2	2	; slot1 = love.graphics.newShader(slot2)
		 12	[  0]	USETV	  0		1	; uv0"unknwon" = slot1
		 13	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 14	[  0]	RET1 	  1		2	; return uv0"unknown"
	 65	[  0]	KPRI 	 26		0	; slot26 = nil
	 66	[  0]	FNEW 	 27		113	; N/A:0-0: 0 args, 1 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		2	; 	goto 6
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	RET1 	  0		2	; return uv0"unknown"
		  6	[  0]	GGET 	  0		5	; slot0 = _env["love"]
		  7	[  0]	TGETS	  0	0	4	; slot0 = love.image
		  8	[  0]	TGETS	  0	0	3	; slot0 = love.image.newImageData
		  9	[  0]	KSHORT	  2		1	; slot2 = 1
		 10	[  0]	KSHORT	  3		1	; slot3 = 1
		 11	[  0]	CALL 	  0	2	3	; slot0 = love.image.newImageData(slot1, slot2)
		 12	[  0]	MOV  	  3		0	; slot3 = slot0
		 13	[  0]	TGETS	  1	0	2	; slot1 = slot0.setPixel
		 14	[  0]	KSHORT	  4		0	; slot4 = 0
		 15	[  0]	KSHORT	  5		0	; slot5 = 0
		 16	[  0]	KSHORT	  6		1	; slot6 = 1
		 17	[  0]	KSHORT	  7		1	; slot7 = 1
		 18	[  0]	KSHORT	  8		1	; slot8 = 1
		 19	[  0]	KSHORT	  9		1	; slot9 = 1
		 20	[  0]	CALL 	  1	1	8	;  = <unknown table>.setPixel(slot2, slot3, slot4, slot5, slot6, slot7, slot8)
		 21	[  0]	GGET 	  1		5	; slot1 = _env["love"]
		 22	[  0]	TGETS	  1	1	1	; slot1 = love.graphics
		 23	[  0]	TGETS	  1	1	0	; slot1 = love.graphics.newImage
		 24	[  0]	MOV  	  3		0	; slot3 = slot0
		 25	[  0]	CALL 	  1	2	2	; slot1 = love.graphics.newImage(slot2)
		 26	[  0]	USETV	  0		1	; uv0"unknwon" = slot1
		 27	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 28	[  0]	RET1 	  1		2	; return uv0"unknown"
	 67	[  0]	KPRI 	 28		0	; slot28 = nil
	 68	[  0]	FNEW 	 29		112	; N/A:0-0: 0 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISNEP	  0		1	; if uv0"unknown" ~= false
		  3	[  0]	JMP  	  0		2	; 	goto 6
		  4	[  0]	KPRI 	  0		0	; slot0 = nil
		  5	[  0]	RET1 	  0		2	; return slot0
		  6	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  7	[  0]	IST  	   		0	; if uv0"unknown"
		  8	[  0]	JMP  	  0		18	; 	goto 27
		  9	[  0]	GGET 	  0		6	; slot0 = _env["pcall"]
		 10	[  0]	GGET 	  2		5	; slot2 = _env["love"]
		 11	[  0]	TGETS	  2	2	4	; slot2 = love.graphics
		 12	[  0]	TGETS	  2	2	3	; slot2 = love.graphics.newImage
		 13	[  0]	KSTR 	  3		2	; slot3 = "src/sprites/icons/sloticons/statinfo.png"
		 14	[  0]	CALL 	  0	3	3	; slot0, slot1 = pcall(slot1, love.graphics.newImage)
		 15	[  0]	ISF  	   		0	; if not slot0
		 16	[  0]	JMP  	  2		9	; 	goto 26
		 17	[  0]	ISF  	   		1	; if not slot1
		 18	[  0]	JMP  	  2		7	; 	goto 26
		 19	[  0]	MOV  	  4		1	; slot4 = slot1
		 20	[  0]	TGETS	  2	1	1	; slot2 = slot1.setFilter
		 21	[  0]	KSTR 	  5		0	; slot5 = "nearest"
		 22	[  0]	KSTR 	  6		0	; slot6 = "nearest"
		 23	[  0]	CALL 	  2	1	4	;  = <unknown table>.setFilter(slot3, slot4, slot5)
		 24	[  0]	USETV	  0		1	; uv0"unknwon" = slot1
		 25	[  0]	JMP  	  2		1	; 	goto 27
		 26	[  0]	USETP	  0		1	; uv0"unknwon" = false
		 27	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 28	[  0]	IST  	   		0	; if uv0"unknown"
		 29	[  0]	JMP  	  1		1	; 	goto 31
		 30	[  0]	KPRI 	  0		0	; slot0 = nil
		 31	[  0]	RET1 	  0		2	; return slot0
	 69	[  0]	KPRI 	 30		0	; slot30 = nil
	 70	[  0]	FNEW 	 31		111	; N/A:0-0: 0 args, 1 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		ktable#7 = [
			[unlocked] = src/sprites/icons/sloticons/absorbunlock.png,
			[locked] = src/sprites/icons/sloticons/absorblock.png,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISNEP	  0		1	; if uv0"unknown" ~= false
		  3	[  0]	JMP  	  0		2	; 	goto 6
		  4	[  0]	KPRI 	  0		0	; slot0 = nil
		  5	[  0]	RET1 	  0		2	; return slot0
		  6	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  7	[  0]	IST  	   		0	; if uv0"unknown"
		  8	[  0]	JMP  	  0		28	; 	goto 37
		  9	[  0]	TDUP 	  0		7	; slot0 = copy table#k7
		 10	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		 11	[  0]	GGET 	  2		6	; slot2 = _env["pairs"]
		 12	[  0]	MOV  	  4		0	; slot4 = slot0
		 13	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = pairs(slot3)
		 14	[  0]	ISNEXT	  5		19	; Verify ITERN at 34; goto 34
		 15	[  0]	GGET 	  7		5	; slot7 = _env["pcall"]
		 16	[  0]	GGET 	  9		4	; slot9 = _env["love"]
		 17	[  0]	TGETS	  9	9	3	; slot9 = love.graphics
		 18	[  0]	TGETS	  9	9	2	; slot9 = love.graphics.newImage
		 19	[  0]	MOV  	 10		6	; slot10 = slot6
		 20	[  0]	CALL 	  7	3	3	; slot7, slot8 = pcall(slot8, love.graphics.newImage)
		 21	[  0]	ISF  	   		7	; if not pcall
		 22	[  0]	JMP  	  9		2	; 	goto 25
		 23	[  0]	IST  	   		8	; if slot8
		 24	[  0]	JMP  	  9		3	; 	goto 28
		 25	[  0]	USETP	  0		1	; uv0"unknwon" = false
		 26	[  0]	KPRI 	  9		0	; slot9 = nil
		 27	[  0]	RET1 	  9		2	; return slot9
		 28	[  0]	MOV  	 11		8	; slot11 = slot8
		 29	[  0]	TGETS	  9	8	1	; slot9 = slot8.setFilter
		 30	[  0]	KSTR 	 12		0	; slot12 = "nearest"
		 31	[  0]	KSTR 	 13		0	; slot13 = "nearest"
		 32	[  0]	CALL 	  9	1	4	;  = <unknown table>.setFilter(slot10, slot11, slot12)
		 33	[  0]	TSETV	  8	1	5	; slot1[slot5] = slot8
		 34	[  0]	ITERN	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5, slot6 = slot2(slot3, slot4)
		 35	[  0]	ITERL	  5		-21	; slot4 = slot5; if slot5 != nil goto 15
		 36	[  0]	USETV	  0		1	; uv0"unknwon" = slot1
		 37	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 38	[  0]	RET1 	  0		2	; return uv0"unknown"
	 71	[  0]	TDUP 	 32		110	; slot32 = copy table#k110
	 72	[  0]	TDUP 	 33		109	; slot33 = copy table#k109
	 73	[  0]	TSETS	 33	32	108	; slot32.slotScales = slot33
	 74	[  0]	TDUP 	 33		107	; slot33 = copy table#k107
	 75	[  0]	TSETS	 33	32	106	; slot32.impactScales = slot33
	 76	[  0]	TDUP 	 33		105	; slot33 = copy table#k105
	 77	[  0]	TSETS	 33	32	104	; slot32.floatOffsets = slot33
	 78	[  0]	TDUP 	 33		103	; slot33 = copy table#k103
	 79	[  0]	TSETS	 33	32	102	; slot32.actionBtnScales = slot33
	 80	[  0]	KNIL 	 33		34	; slot33, slot34 = nil
	 81	[  0]	FNEW 	 35		101	; N/A:0-0: 0 args, 7 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	KSTR 	  2		2	; slot2 = "src/data/font/Galmuri9WS.fnt"
		  3	[  0]	CALL 	  0	3	2	; slot0, slot1 = uv0"unknown"(slot1)
		  4	[  0]	GGET 	  2		1	; slot2 = _env["tostring"]
		  5	[  0]	MOV  	  4		1	; slot4 = slot1
		  6	[  0]	CALL 	  2	2	2	; slot2 = tostring(slot3)
		  7	[  0]	KSTR 	  3		0	; slot3 = "|"
		  8	[  0]	GGET 	  4		1	; slot4 = _env["tostring"]
		  9	[  0]	MOV  	  6		0	; slot6 = slot0
		 10	[  0]	CALL 	  4	2	2	; slot4 = tostring(slot5)
		 11	[  0]	CAT  	  2	2	4	; slot2 = slot2 .. slot3 .. tostring
		 12	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 13	[  0]	ISEQV	  3		2	; if uv1"unknown" == slot2
		 14	[  0]	JMP  	  3		24	; 	goto 39
		 15	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 16	[  0]	MOV  	  5		0	; slot5 = slot0
		 17	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		 18	[  0]	CALL 	  6	2	1	; slot6 = uv3"unknown"()
		 19	[  0]	ISF  	   		6	; if not uv3"unknown"
		 20	[  0]	JMP  	  7		3	; 	goto 24
		 21	[  0]	UGET 	  6		4	; slot6 = uv4"unknwon"
		 22	[  0]	IST  	   		6	; if uv4"unknown"
		 23	[  0]	JMP  	  7		1	; 	goto 25
		 24	[  0]	KPRI 	  6		0	; slot6 = nil
		 25	[  0]	CALL 	  3	2	3	; slot3 = uv2"unknown"(tostring, slot5)
		 26	[  0]	ISF  	   		3	; if not slot3
		 27	[  0]	JMP  	  4		6	; 	goto 34
		 28	[  0]	UGET 	  4		5	; slot4 = uv5"unknwon"
		 29	[  0]	MOV  	  6		3	; slot6 = slot3
		 30	[  0]	KSTR 	  7		2	; slot7 = "src/data/font/Galmuri9WS.fnt"
		 31	[  0]	MOV  	  8		0	; slot8 = slot0
		 32	[  0]	MOV  	  9		1	; slot9 = slot1
		 33	[  0]	CALL 	  4	1	5	;  = uv5"unknown"(slot5, slot6, slot7, slot8)
		 34	[  0]	ISTC 	  4		3	; slot4 = slot3; if slot3
		 35	[  0]	JMP  	  4		1	; 	goto 37
		 36	[  0]	KPRI 	  4		0	; slot4 = nil
		 37	[  0]	USETV	  6		4	; uv6"unknwon" = slot4
		 38	[  0]	USETV	  1		2	; uv1"unknwon" = slot2
		 39	[  0]	UGET 	  3		6	; slot3 = uv6"unknwon"
		 40	[  0]	RET1 	  3		2	; return uv6"unknown"
	 82	[  0]	KPRI 	 36		0	; slot36 = nil
	 83	[  0]	FNEW 	 37		100	; N/A:0-0: 0 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			#1: 0.44313725490196076,
			#2: 0.20392156862745098,
			#3: 0.3843137254901961,
			]
		
		
		ktable#2 = [
			#1: 0.24313725490196078,
			#2: 0.20784313725490197,
			#3: 0.27450980392156865,
			]
		
		
		ktable#4 = [
			#1: 0.25882352941176473,
			#2: 0.13333333333333333,
			#3: 0.23529411764705882,
			]
		
		
		ktable#6 = [
			#1: 0.1803921568627451,
			#2: 0.13333333333333333,
			#3: 0.1843137254901961,
			]
		
		
		ktable#8 = [
			#1: 0.6509803921568628,
			#2: 0.37254901960784315,
			#3: 0.6039215686274509,
			]
		
		
		ktable#10 = [
			#1: 0.3843137254901961,
			#2: 0.3333333333333333,
			#3: 0.396078431372549,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISNEP	  0		0	; if uv0"unknown" ~= nil
		  3	[  0]	JMP  	  0		44	; 	goto 48
		  4	[  0]	KSTR 	  0		17	; slot0 = "      extern vec3 u_old1; extern vec3 u_new1;
		      extern vec3 u_old2; extern vec3 u_new2;
		      extern vec3 u_old3; extern vec3 u_new3;
		
		      vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {
		          vec4 texColor = Texel(texture, texture_coords);
		          vec3 rgb = texColor.rgb;
		          float tol = 0.05;
		          if (distance(rgb, u_old1) < tol) {
		              rgb = u_new1;
		          } else if (distance(rgb, u_old2) < tol) {
		              rgb = u_new2;
		          } else if (distance(rgb, u_old3) < tol) {
		              rgb = u_new3;
		          }
		          return vec4(rgb, texColor.a) * color;
		      }
		    "
		  5	[  0]	GGET 	  1		16	; slot1 = _env["pcall"]
		  6	[  0]	GGET 	  3		15	; slot3 = _env["love"]
		  7	[  0]	TGETS	  3	3	14	; slot3 = love.graphics
		  8	[  0]	TGETS	  3	3	13	; slot3 = love.graphics.newShader
		  9	[  0]	MOV  	  4		0	; slot4 = slot0
		 10	[  0]	CALL 	  1	3	3	; slot1, slot2 = pcall(slot2, love.graphics.newShader)
		 11	[  0]	ISF  	   		1	; if not slot1
		 12	[  0]	JMP  	  3		34	; 	goto 47
		 13	[  0]	ISF  	   		2	; if not slot2
		 14	[  0]	JMP  	  3		32	; 	goto 47
		 15	[  0]	USETV	  0		2	; uv0"unknwon" = slot2
		 16	[  0]	MOV  	  5		2	; slot5 = slot2
		 17	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 18	[  0]	KSTR 	  6		11	; slot6 = "u_old1"
		 19	[  0]	TDUP 	  7		10	; slot7 = copy table#k10
		 20	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 21	[  0]	MOV  	  5		2	; slot5 = slot2
		 22	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 23	[  0]	KSTR 	  6		9	; slot6 = "u_new1"
		 24	[  0]	TDUP 	  7		8	; slot7 = copy table#k8
		 25	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 26	[  0]	MOV  	  5		2	; slot5 = slot2
		 27	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 28	[  0]	KSTR 	  6		7	; slot6 = "u_old2"
		 29	[  0]	TDUP 	  7		6	; slot7 = copy table#k6
		 30	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 31	[  0]	MOV  	  5		2	; slot5 = slot2
		 32	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 33	[  0]	KSTR 	  6		5	; slot6 = "u_new2"
		 34	[  0]	TDUP 	  7		4	; slot7 = copy table#k4
		 35	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 36	[  0]	MOV  	  5		2	; slot5 = slot2
		 37	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 38	[  0]	KSTR 	  6		3	; slot6 = "u_old3"
		 39	[  0]	TDUP 	  7		2	; slot7 = copy table#k2
		 40	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 41	[  0]	MOV  	  5		2	; slot5 = slot2
		 42	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 43	[  0]	KSTR 	  6		1	; slot6 = "u_new3"
		 44	[  0]	TDUP 	  7		0	; slot7 = copy table#k0
		 45	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 46	[  0]	JMP  	  3		1	; 	goto 48
		 47	[  0]	USETP	  0		1	; uv0"unknwon" = false
		 48	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 49	[  0]	IST  	   		0	; if uv0"unknown"
		 50	[  0]	JMP  	  1		1	; 	goto 52
		 51	[  0]	KPRI 	  0		0	; slot0 = nil
		 52	[  0]	RET1 	  0		2	; return slot0
	 84	[  0]	KPRI 	 38		0	; slot38 = nil
	 85	[  0]	FNEW 	 39		99	; N/A:0-0: 0 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			#1: 0.25882352941176473,
			#2: 0.3607843137254902,
			#3: 0.28627450980392155,
			]
		
		
		ktable#2 = [
			#1: 0.24313725490196078,
			#2: 0.20784313725490197,
			#3: 0.27450980392156865,
			]
		
		
		ktable#4 = [
			#1: 0.17647058823529413,
			#2: 0.23921568627450981,
			#3: 0.19215686274509805,
			]
		
		
		ktable#6 = [
			#1: 0.1803921568627451,
			#2: 0.13333333333333333,
			#3: 0.1843137254901961,
			]
		
		
		ktable#8 = [
			#1: 0.41568627450980394,
			#2: 0.5490196078431373,
			#3: 0.4470588235294118,
			]
		
		
		ktable#10 = [
			#1: 0.3843137254901961,
			#2: 0.3333333333333333,
			#3: 0.396078431372549,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISNEP	  0		0	; if uv0"unknown" ~= nil
		  3	[  0]	JMP  	  0		44	; 	goto 48
		  4	[  0]	KSTR 	  0		17	; slot0 = "      extern vec3 u_old1; extern vec3 u_new1;
		      extern vec3 u_old2; extern vec3 u_new2;
		      extern vec3 u_old3; extern vec3 u_new3;
		
		      vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {
		          vec4 texColor = Texel(texture, texture_coords);
		          vec3 rgb = texColor.rgb;
		          float tol = 0.05; // Increased tolerance for robust color matching
		          if (distance(rgb, u_old1) < tol) {
		              rgb = u_new1;
		          } else if (distance(rgb, u_old2) < tol) {
		              rgb = u_new2;
		          } else if (distance(rgb, u_old3) < tol) {
		              rgb = u_new3;
		          }
		          return vec4(rgb, texColor.a) * color;
		      }
		    "
		  5	[  0]	GGET 	  1		16	; slot1 = _env["pcall"]
		  6	[  0]	GGET 	  3		15	; slot3 = _env["love"]
		  7	[  0]	TGETS	  3	3	14	; slot3 = love.graphics
		  8	[  0]	TGETS	  3	3	13	; slot3 = love.graphics.newShader
		  9	[  0]	MOV  	  4		0	; slot4 = slot0
		 10	[  0]	CALL 	  1	3	3	; slot1, slot2 = pcall(slot2, love.graphics.newShader)
		 11	[  0]	ISF  	   		1	; if not slot1
		 12	[  0]	JMP  	  3		34	; 	goto 47
		 13	[  0]	ISF  	   		2	; if not slot2
		 14	[  0]	JMP  	  3		32	; 	goto 47
		 15	[  0]	USETV	  0		2	; uv0"unknwon" = slot2
		 16	[  0]	MOV  	  5		2	; slot5 = slot2
		 17	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 18	[  0]	KSTR 	  6		11	; slot6 = "u_old1"
		 19	[  0]	TDUP 	  7		10	; slot7 = copy table#k10
		 20	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 21	[  0]	MOV  	  5		2	; slot5 = slot2
		 22	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 23	[  0]	KSTR 	  6		9	; slot6 = "u_new1"
		 24	[  0]	TDUP 	  7		8	; slot7 = copy table#k8
		 25	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 26	[  0]	MOV  	  5		2	; slot5 = slot2
		 27	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 28	[  0]	KSTR 	  6		7	; slot6 = "u_old2"
		 29	[  0]	TDUP 	  7		6	; slot7 = copy table#k6
		 30	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 31	[  0]	MOV  	  5		2	; slot5 = slot2
		 32	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 33	[  0]	KSTR 	  6		5	; slot6 = "u_new2"
		 34	[  0]	TDUP 	  7		4	; slot7 = copy table#k4
		 35	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 36	[  0]	MOV  	  5		2	; slot5 = slot2
		 37	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 38	[  0]	KSTR 	  6		3	; slot6 = "u_old3"
		 39	[  0]	TDUP 	  7		2	; slot7 = copy table#k2
		 40	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 41	[  0]	MOV  	  5		2	; slot5 = slot2
		 42	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 43	[  0]	KSTR 	  6		1	; slot6 = "u_new3"
		 44	[  0]	TDUP 	  7		0	; slot7 = copy table#k0
		 45	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 46	[  0]	JMP  	  3		1	; 	goto 48
		 47	[  0]	USETP	  0		1	; uv0"unknwon" = false
		 48	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 49	[  0]	IST  	   		0	; if uv0"unknown"
		 50	[  0]	JMP  	  1		1	; 	goto 52
		 51	[  0]	KPRI 	  0		0	; slot0 = nil
		 52	[  0]	RET1 	  0		2	; return slot0
	 86	[  0]	KPRI 	 40		0	; slot40 = nil
	 87	[  0]	FNEW 	 41		98	; N/A:0-0: 0 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			#1: 0.20784313725490197,
			#2: 0.29411764705882354,
			#3: 0.4196078431372549,
			]
		
		
		ktable#2 = [
			#1: 0.24313725490196078,
			#2: 0.20784313725490197,
			#3: 0.27450980392156865,
			]
		
		
		ktable#4 = [
			#1: 0.13725490196078433,
			#2: 0.17647058823529413,
			#3: 0.23921568627450981,
			]
		
		
		ktable#6 = [
			#1: 0.1803921568627451,
			#2: 0.13333333333333333,
			#3: 0.1843137254901961,
			]
		
		
		ktable#8 = [
			#1: 0.3607843137254902,
			#2: 0.4549019607843137,
			#3: 0.5725490196078431,
			]
		
		
		ktable#10 = [
			#1: 0.3843137254901961,
			#2: 0.3333333333333333,
			#3: 0.396078431372549,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISNEP	  0		0	; if uv0"unknown" ~= nil
		  3	[  0]	JMP  	  0		44	; 	goto 48
		  4	[  0]	KSTR 	  0		17	; slot0 = "      extern vec3 u_old1; extern vec3 u_new1;
		      extern vec3 u_old2; extern vec3 u_new2;
		      extern vec3 u_old3; extern vec3 u_new3;
		
		      vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {
		          vec4 texColor = Texel(texture, texture_coords);
		          vec3 rgb = texColor.rgb;
		          float tol = 0.05; // Increased tolerance for robust color matching
		          if (distance(rgb, u_old1) < tol) {
		              rgb = u_new1;
		          } else if (distance(rgb, u_old2) < tol) {
		              rgb = u_new2;
		          } else if (distance(rgb, u_old3) < tol) {
		              rgb = u_new3;
		          }
		          return vec4(rgb, texColor.a) * color;
		      }
		    "
		  5	[  0]	GGET 	  1		16	; slot1 = _env["pcall"]
		  6	[  0]	GGET 	  3		15	; slot3 = _env["love"]
		  7	[  0]	TGETS	  3	3	14	; slot3 = love.graphics
		  8	[  0]	TGETS	  3	3	13	; slot3 = love.graphics.newShader
		  9	[  0]	MOV  	  4		0	; slot4 = slot0
		 10	[  0]	CALL 	  1	3	3	; slot1, slot2 = pcall(slot2, love.graphics.newShader)
		 11	[  0]	ISF  	   		1	; if not slot1
		 12	[  0]	JMP  	  3		34	; 	goto 47
		 13	[  0]	ISF  	   		2	; if not slot2
		 14	[  0]	JMP  	  3		32	; 	goto 47
		 15	[  0]	USETV	  0		2	; uv0"unknwon" = slot2
		 16	[  0]	MOV  	  5		2	; slot5 = slot2
		 17	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 18	[  0]	KSTR 	  6		11	; slot6 = "u_old1"
		 19	[  0]	TDUP 	  7		10	; slot7 = copy table#k10
		 20	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 21	[  0]	MOV  	  5		2	; slot5 = slot2
		 22	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 23	[  0]	KSTR 	  6		9	; slot6 = "u_new1"
		 24	[  0]	TDUP 	  7		8	; slot7 = copy table#k8
		 25	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 26	[  0]	MOV  	  5		2	; slot5 = slot2
		 27	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 28	[  0]	KSTR 	  6		7	; slot6 = "u_old2"
		 29	[  0]	TDUP 	  7		6	; slot7 = copy table#k6
		 30	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 31	[  0]	MOV  	  5		2	; slot5 = slot2
		 32	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 33	[  0]	KSTR 	  6		5	; slot6 = "u_new2"
		 34	[  0]	TDUP 	  7		4	; slot7 = copy table#k4
		 35	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 36	[  0]	MOV  	  5		2	; slot5 = slot2
		 37	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 38	[  0]	KSTR 	  6		3	; slot6 = "u_old3"
		 39	[  0]	TDUP 	  7		2	; slot7 = copy table#k2
		 40	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 41	[  0]	MOV  	  5		2	; slot5 = slot2
		 42	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 43	[  0]	KSTR 	  6		1	; slot6 = "u_new3"
		 44	[  0]	TDUP 	  7		0	; slot7 = copy table#k0
		 45	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 46	[  0]	JMP  	  3		1	; 	goto 48
		 47	[  0]	USETP	  0		1	; uv0"unknwon" = false
		 48	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 49	[  0]	IST  	   		0	; if uv0"unknown"
		 50	[  0]	JMP  	  1		1	; 	goto 52
		 51	[  0]	KPRI 	  0		0	; slot0 = nil
		 52	[  0]	RET1 	  0		2	; return slot0
	 88	[  0]	KPRI 	 42		0	; slot42 = nil
	 89	[  0]	FNEW 	 43		97	; N/A:0-0: 0 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			#1: 0.43137254901960786,
			#2: 0.3333333333333333,
			#3: 0.19607843137254902,
			]
		
		
		ktable#2 = [
			#1: 0.24313725490196078,
			#2: 0.20784313725490197,
			#3: 0.27450980392156865,
			]
		
		
		ktable#4 = [
			#1: 0.21568627450980393,
			#2: 0.16470588235294117,
			#3: 0.11764705882352941,
			]
		
		
		ktable#6 = [
			#1: 0.1803921568627451,
			#2: 0.13333333333333333,
			#3: 0.1843137254901961,
			]
		
		
		ktable#8 = [
			#1: 0.6274509803921569,
			#2: 0.5294117647058824,
			#3: 0.35294117647058826,
			]
		
		
		ktable#10 = [
			#1: 0.3843137254901961,
			#2: 0.3333333333333333,
			#3: 0.396078431372549,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISNEP	  0		0	; if uv0"unknown" ~= nil
		  3	[  0]	JMP  	  0		44	; 	goto 48
		  4	[  0]	KSTR 	  0		17	; slot0 = "      extern vec3 u_old1; extern vec3 u_new1;
		      extern vec3 u_old2; extern vec3 u_new2;
		      extern vec3 u_old3; extern vec3 u_new3;
		
		      vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {
		          vec4 texColor = Texel(texture, texture_coords);
		          vec3 rgb = texColor.rgb;
		          float tol = 0.05;
		          if (distance(rgb, u_old1) < tol) {
		              rgb = u_new1;
		          } else if (distance(rgb, u_old2) < tol) {
		              rgb = u_new2;
		          } else if (distance(rgb, u_old3) < tol) {
		              rgb = u_new3;
		          }
		          return vec4(rgb, texColor.a) * color;
		      }
		    "
		  5	[  0]	GGET 	  1		16	; slot1 = _env["pcall"]
		  6	[  0]	GGET 	  3		15	; slot3 = _env["love"]
		  7	[  0]	TGETS	  3	3	14	; slot3 = love.graphics
		  8	[  0]	TGETS	  3	3	13	; slot3 = love.graphics.newShader
		  9	[  0]	MOV  	  4		0	; slot4 = slot0
		 10	[  0]	CALL 	  1	3	3	; slot1, slot2 = pcall(slot2, love.graphics.newShader)
		 11	[  0]	ISF  	   		1	; if not slot1
		 12	[  0]	JMP  	  3		34	; 	goto 47
		 13	[  0]	ISF  	   		2	; if not slot2
		 14	[  0]	JMP  	  3		32	; 	goto 47
		 15	[  0]	USETV	  0		2	; uv0"unknwon" = slot2
		 16	[  0]	MOV  	  5		2	; slot5 = slot2
		 17	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 18	[  0]	KSTR 	  6		11	; slot6 = "u_old1"
		 19	[  0]	TDUP 	  7		10	; slot7 = copy table#k10
		 20	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 21	[  0]	MOV  	  5		2	; slot5 = slot2
		 22	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 23	[  0]	KSTR 	  6		9	; slot6 = "u_new1"
		 24	[  0]	TDUP 	  7		8	; slot7 = copy table#k8
		 25	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 26	[  0]	MOV  	  5		2	; slot5 = slot2
		 27	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 28	[  0]	KSTR 	  6		7	; slot6 = "u_old2"
		 29	[  0]	TDUP 	  7		6	; slot7 = copy table#k6
		 30	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 31	[  0]	MOV  	  5		2	; slot5 = slot2
		 32	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 33	[  0]	KSTR 	  6		5	; slot6 = "u_new2"
		 34	[  0]	TDUP 	  7		4	; slot7 = copy table#k4
		 35	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 36	[  0]	MOV  	  5		2	; slot5 = slot2
		 37	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 38	[  0]	KSTR 	  6		3	; slot6 = "u_old3"
		 39	[  0]	TDUP 	  7		2	; slot7 = copy table#k2
		 40	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 41	[  0]	MOV  	  5		2	; slot5 = slot2
		 42	[  0]	TGETS	  3	2	12	; slot3 = slot2.send
		 43	[  0]	KSTR 	  6		1	; slot6 = "u_new3"
		 44	[  0]	TDUP 	  7		0	; slot7 = copy table#k0
		 45	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 46	[  0]	JMP  	  3		1	; 	goto 48
		 47	[  0]	USETP	  0		1	; uv0"unknwon" = false
		 48	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 49	[  0]	IST  	   		0	; if uv0"unknown"
		 50	[  0]	JMP  	  1		1	; 	goto 52
		 51	[  0]	KPRI 	  0		0	; slot0 = nil
		 52	[  0]	RET1 	  0		2	; return slot0
	 90	[  0]	KPRI 	 44		0	; slot44 = nil
	 91	[  0]	FNEW 	 45		96	; N/A:0-0: 0 args, 1 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISNEP	  0		0	; if uv0"unknown" ~= nil
		  3	[  0]	JMP  	  0		14	; 	goto 18
		  4	[  0]	KSTR 	  0		4	; slot0 = "      extern number u_time;
		      extern vec3   u_uiBase;   // #3e3546
		      extern vec2   u_dir;      
		      extern number u_cycle;    
		      extern number u_scale;    
		      extern number u_grainScale;
		      extern number u_grainAmp;
		      extern number u_filmFreq;
		      extern number u_filmAmp;
		      extern number u_specular;
		      extern number u_fresnelPow;
		      extern number u_colorGain;
		      extern number u_saturation;
		      extern number u_mixBP;
		
		      vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){
		        return a + b * cos(6.28318 * (c * x + d));
		      }
		      float hash(vec2 p){
		        return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);
		      }
		      vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){
		        vec4 base = Texel(tex, tc); // The slot background image
		        if (base.a <= 0.001) return vec4(0.0);
		        
		        vec2 dir = u_dir;
		        if (length(dir) < 0.001) dir = vec2(0.94, 0.34);
		        else dir = normalize(dir);
		        vec2 ortho = vec2(-dir.y, dir.x); 
		        
		        float u = dot(tc, dir) * u_scale + (u_time / max(u_cycle, 0.001));
		        float v = dot(tc, ortho) * u_scale;
		        
		        // Use grain uniforms as requested to match the tooltip filter perfectly
		        float grainLine = abs(sin(dot(tc, ortho) * u_grainScale));
		        float grainNoise = hash(tc * 97.0);
		        float grain = mix(grainLine, grainNoise, 0.25);
		        
		        float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));
		        float x = u + film;
		        
		        // Rainbow palettes matching the tooltip specifically (Substantially increased brightness)
		        vec3 colBP = palette(x, vec3(0.75, 0.70, 0.78), vec3(0.25, 0.20, 0.28), vec3(1.00, 1.00, 1.00), vec3(0.10, 0.43, 0.78));
		        vec3 colWide = palette(u, vec3(0.72), vec3(0.12), vec3(1.0), vec3(0.00, 0.33, 0.66));
		        vec3 foil = mix(colWide, colBP, clamp(u_mixBP, 0.0, 1.0));
		        
		        float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));
		        float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));
		        float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.15;
		        
		        // Apply grain multiplier like in tooltip foil
		        float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);
		        vec3 outRGB = foil * grainMul + spec;
		        
		        // Harmonize with UI Base (#3e3546) - Reduced UI base weight to let rainbow shine through much more
		        outRGB = mix(u_uiBase, outRGB, 0.82);
		        
		        // Saturation & Gain
		        float Y = dot(outRGB, vec3(0.2126, 0.7152, 0.0722));
		        outRGB = mix(vec3(Y), outRGB, max(0.0, u_saturation));
		        
		        // Apply to base slot lighting with massive gain multiplier to prevent "darkening" the slot
		        float luma = dot(base.rgb, vec3(0.299, 0.587, 0.114));
		        outRGB *= (luma * u_colorGain * 1.5);
		        
		        return vec4(outRGB, base.a) * color;
		      }
		    "
		  5	[  0]	GGET 	  1		3	; slot1 = _env["pcall"]
		  6	[  0]	GGET 	  3		2	; slot3 = _env["love"]
		  7	[  0]	TGETS	  3	3	1	; slot3 = love.graphics
		  8	[  0]	TGETS	  3	3	0	; slot3 = love.graphics.newShader
		  9	[  0]	MOV  	  4		0	; slot4 = slot0
		 10	[  0]	CALL 	  1	3	3	; slot1, slot2 = pcall(slot2, love.graphics.newShader)
		 11	[  0]	ISF  	   		1	; if not slot1
		 12	[  0]	JMP  	  3		4	; 	goto 17
		 13	[  0]	ISF  	   		2	; if not slot2
		 14	[  0]	JMP  	  3		2	; 	goto 17
		 15	[  0]	USETV	  0		2	; uv0"unknwon" = slot2
		 16	[  0]	JMP  	  3		1	; 	goto 18
		 17	[  0]	USETP	  0		1	; uv0"unknwon" = false
		 18	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 19	[  0]	IST  	   		0	; if uv0"unknown"
		 20	[  0]	JMP  	  1		1	; 	goto 22
		 21	[  0]	KPRI 	  0		0	; slot0 = nil
		 22	[  0]	RET1 	  0		2	; return slot0
	 92	[  0]	KPRI 	 46		0	; slot46 = nil
	 93	[  0]	FNEW 	 47		95	; N/A:0-0: 0 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			#1: 0.24313725490196078,
			#2: 0.35294117647058826,
			#3: 0.24705882352941178,
			]
		
		
		ktable#2 = [
			#1: 0.30980392156862746,
			#2: 0.20392156862745098,
			#3: 0.23921568627450981,
			]
		
		
		ktable#4 = [
			#1: 0.43137254901960786,
			#2: 0.5411764705882353,
			#3: 0.43529411764705883,
			]
		
		
		ktable#6 = [
			#1: 0.5411764705882353,
			#2: 0.35294117647058826,
			#3: 0.41568627450980394,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISNEP	  0		0	; if uv0"unknown" ~= nil
		  3	[  0]	JMP  	  0		34	; 	goto 38
		  4	[  0]	KSTR 	  0		13	; slot0 = "      extern vec3 u_old1; extern vec3 u_new1;
		      extern vec3 u_old2; extern vec3 u_new2;
		
		      vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {
		          vec4 texColor = Texel(texture, texture_coords);
		          vec3 rgb = texColor.rgb;
		          float tol = 0.05;
		          if (distance(rgb, u_old1) < tol) {
		              rgb = u_new1;
		          } else if (distance(rgb, u_old2) < tol) {
		              rgb = u_new2;
		          }
		          return vec4(rgb, texColor.a) * color;
		      }
		    "
		  5	[  0]	GGET 	  1		12	; slot1 = _env["pcall"]
		  6	[  0]	GGET 	  3		11	; slot3 = _env["love"]
		  7	[  0]	TGETS	  3	3	10	; slot3 = love.graphics
		  8	[  0]	TGETS	  3	3	9	; slot3 = love.graphics.newShader
		  9	[  0]	MOV  	  4		0	; slot4 = slot0
		 10	[  0]	CALL 	  1	3	3	; slot1, slot2 = pcall(slot2, love.graphics.newShader)
		 11	[  0]	ISF  	   		1	; if not slot1
		 12	[  0]	JMP  	  3		24	; 	goto 37
		 13	[  0]	ISF  	   		2	; if not slot2
		 14	[  0]	JMP  	  3		22	; 	goto 37
		 15	[  0]	USETV	  0		2	; uv0"unknwon" = slot2
		 16	[  0]	MOV  	  5		2	; slot5 = slot2
		 17	[  0]	TGETS	  3	2	8	; slot3 = slot2.send
		 18	[  0]	KSTR 	  6		7	; slot6 = "u_old1"
		 19	[  0]	TDUP 	  7		6	; slot7 = copy table#k6
		 20	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 21	[  0]	MOV  	  5		2	; slot5 = slot2
		 22	[  0]	TGETS	  3	2	8	; slot3 = slot2.send
		 23	[  0]	KSTR 	  6		5	; slot6 = "u_new1"
		 24	[  0]	TDUP 	  7		4	; slot7 = copy table#k4
		 25	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 26	[  0]	MOV  	  5		2	; slot5 = slot2
		 27	[  0]	TGETS	  3	2	8	; slot3 = slot2.send
		 28	[  0]	KSTR 	  6		3	; slot6 = "u_old2"
		 29	[  0]	TDUP 	  7		2	; slot7 = copy table#k2
		 30	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 31	[  0]	MOV  	  5		2	; slot5 = slot2
		 32	[  0]	TGETS	  3	2	8	; slot3 = slot2.send
		 33	[  0]	KSTR 	  6		1	; slot6 = "u_new2"
		 34	[  0]	TDUP 	  7		0	; slot7 = copy table#k0
		 35	[  0]	CALL 	  3	1	4	;  = <unknown table>.send(slot4, slot5, slot6)
		 36	[  0]	JMP  	  3		1	; 	goto 38
		 37	[  0]	USETP	  0		1	; uv0"unknwon" = false
		 38	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 39	[  0]	IST  	   		0	; if uv0"unknown"
		 40	[  0]	JMP  	  1		1	; 	goto 42
		 41	[  0]	KPRI 	  0		0	; slot0 = nil
		 42	[  0]	RET1 	  0		2	; return slot0
	 94	[  0]	FNEW 	 48		94	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KSHORT	  1		0	; slot1 = 0
		  2	[  0]	ISGE 	  0		1	; if slot0 >= slot1
		  3	[  0]	JMP  	  1		2	; 	goto 6
		  4	[  0]	KSHORT	  1		0	; slot1 = 0
		  5	[  0]	RET1 	  1		2	; return slot1
		  6	[  0]	KSHORT	  1		1	; slot1 = 1
		  7	[  0]	ISGE 	  1		0	; if slot1 >= slot0
		  8	[  0]	JMP  	  1		2	; 	goto 11
		  9	[  0]	KSHORT	  1		1	; slot1 = 1
		 10	[  0]	RET1 	  1		2	; return slot1
		 11	[  0]	RET1 	  0		2	; return slot0
	 95	[  0]	FNEW 	 49		93	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		ktable#2 = [
			#1: I,
			#2: II,
			#3: III,
			#4: IV,
			#5: V,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TDUP 	  1		2	; slot1 = copy table#k2
		  2	[  0]	GGET 	  2		1	; slot2 = _env["tonumber"]
		  3	[  0]	MOV  	  4		0	; slot4 = slot0
		  4	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		  5	[  0]	IST  	   		2	; if slot2
		  6	[  0]	JMP  	  3		1	; 	goto 8
		  7	[  0]	KSHORT	  2		1	; slot2 = 1
		  8	[  0]	TGETV	  2	1	2	; slot2 = slot1[slot2]
		  9	[  0]	IST  	   		2	; if slot2
		 10	[  0]	JMP  	  3		3	; 	goto 14
		 11	[  0]	GGET 	  2		0	; slot2 = _env["tostring"]
		 12	[  0]	MOV  	  4		0	; slot4 = slot0
		 13	[  0]	CALL 	  2	2	2	; slot2 = tostring(slot3)
		 14	[  0]	RET1 	  2		2	; return slot2
	 96	[  0]	FNEW 	 50		92	; N/A:0-0: 1 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		1	; slot1 = _env["math"]
		  2	[  0]	TGETS	  1	1	0	; slot1 = math.floor
		  3	[  0]	ISTC 	  3		0	; slot3 = slot0; if slot0
		  4	[  0]	JMP  	  3		1	; 	goto 6
		  5	[  0]	KSHORT	  3		0	; slot3 = 0
		  6	[  0]	ADDVN	  3	3	0	; slot3 = slot3 + 0.5
		  7	[  0]	CALLT	  1		2	; return math.floor(slot2)
	 97	[  0]	FNEW 	 51		91	; N/A:0-0: 3 args, 1 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  3		2	; 	goto 5
		  3	[  0]	IST  	   		1	; if slot1
		  4	[  0]	JMP  	  3		1	; 	goto 6
		  5	[  0]	RET1 	  1		2	; return slot1
		  6	[  0]	KSHORT	  3		0	; slot3 = 0
		  7	[  0]	ISGT 	  2		3	; if slot2 > slot3
		  8	[  0]	JMP  	  3		2	; 	goto 11
		  9	[  0]	KSTR 	  3		3	; slot3 = ""
		 10	[  0]	RET1 	  3		2	; return slot3
		 11	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 12	[  0]	MOV  	  5		0	; slot5 = slot0
		 13	[  0]	MOV  	  6		1	; slot6 = slot1
		 14	[  0]	CALL 	  3	2	3	; slot3 = uv0"unknown"(slot4, slot5)
		 15	[  0]	ISGT 	  3		2	; if slot3 > slot2
		 16	[  0]	JMP  	  3		1	; 	goto 18
		 17	[  0]	RET1 	  1		2	; return slot1
		 18	[  0]	MOV  	  3		1	; slot3 = slot1
		 19	[  0]	LEN  	  4		3	; slot4 = #slot3
		 20	[  0]	KSHORT	  5		0	; slot5 = 0
		 21	[  0]	ISGE 	  5		4	; if slot5 >= slot4
		 22	[  0]	JMP  	  4		16	; 	goto 39
		 23	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 24	[  0]	MOV  	  6		0	; slot6 = slot0
		 25	[  0]	MOV  	  7		3	; slot7 = slot3
		 26	[  0]	KSTR 	  8		2	; slot8 = "…"
		 27	[  0]	CAT  	  7	7	8	; slot7 = slot7 .. slot8
		 28	[  0]	CALL 	  4	2	3	; slot4 = uv0"unknown"(slot5, slot6)
		 29	[  0]	ISGE 	  2		4	; if slot2 >= uv0"unknown"
		 30	[  0]	JMP  	  4		8	; 	goto 39
		 31	[  0]	LOOP 	  4		7	; Loop start, exit goto 39
		 32	[  0]	MOV  	  6		3	; slot6 = slot3
		 33	[  0]	TGETS	  4	3	1	; slot4 = slot3.gsub
		 34	[  0]	KSTR 	  7		0	; slot7 = "[%z-\xc2-\xf4][\x80-\xbf]*$"
		 35	[  0]	KSTR 	  8		3	; slot8 = ""
		 36	[  0]	CALL 	  4	2	4	; slot4 = <unknown table>.gsub(slot5, slot6, slot7)
		 37	[  0]	MOV  	  3		4	; slot3 = slot4
		 38	[  0]	JMP  	  4		-20	; 	goto 19
		 39	[  0]	LEN  	  4		3	; slot4 = #slot3
		 40	[  0]	ISNEN	  4		0	; if slot4 ~= 0
		 41	[  0]	JMP  	  4		2	; 	goto 44
		 42	[  0]	KSTR 	  4		3	; slot4 = ""
		 43	[  0]	RET1 	  4		2	; return slot4
		 44	[  0]	MOV  	  4		3	; slot4 = slot3
		 45	[  0]	KSTR 	  5		2	; slot5 = "…"
		 46	[  0]	CAT  	  4	4	5	; slot4 = slot4 .. slot5
		 47	[  0]	RET1 	  4		2	; return slot4
	 98	[  0]	FNEW 	 52		90	; N/A:0-0: 7 args, 0 upvalues, 22 slots
		
		;;;; constant tables ;;;;
		ktable#1 = [
			]
		
		
		ktable#2 = [
			]
		
		
		ktable#3 = [
			]
		
		
		ktable#8 = [
			]
		
		
		ktable#12 = [
			]
		
		
		ktable#19 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  7		12	; 	goto 15
		  3	[  0]	GGET 	  7		33	; slot7 = _env["love"]
		  4	[  0]	TGETS	  7	7	32	; slot7 = love.graphics
		  5	[  0]	TGETS	  7	7	31	; slot7 = love.graphics.printf
		  6	[  0]	ISTC 	  9		1	; slot9 = slot1; if slot1
		  7	[  0]	JMP  	  9		1	; 	goto 9
		  8	[  0]	KSTR 	  9		30	; slot9 = ""
		  9	[  0]	MOV  	 10		2	; slot10 = slot2
		 10	[  0]	MOV  	 11		3	; slot11 = slot3
		 11	[  0]	MOV  	 12		4	; slot12 = slot4
		 12	[  0]	KSTR 	 13		29	; slot13 = "left"
		 13	[  0]	CALL 	  7	1	6	;  = love.graphics.printf(slot8, slot9, slot10, slot11, slot12)
		 14	[  0]	RET0 	  0		1	; return
		 15	[  0]	GGET 	  7		28	; slot7 = _env["tostring"]
		 16	[  0]	ISTC 	  9		1	; slot9 = slot1; if slot1
		 17	[  0]	JMP  	  9		1	; 	goto 19
		 18	[  0]	KSTR 	  9		30	; slot9 = ""
		 19	[  0]	CALL 	  7	2	2	; slot7 = tostring(slot8)
		 20	[  0]	ISEQS	  7		30	; if tostring == ""
		 21	[  0]	JMP  	  8		3	; 	goto 25
		 22	[  0]	KSHORT	  8		0	; slot8 = 0
		 23	[  0]	ISGT 	  4		8	; if slot4 > slot8
		 24	[  0]	JMP  	  8		1	; 	goto 26
		 25	[  0]	RET0 	  0		1	; return
		 26	[  0]	MOV  	 10		7	; slot10 = tostring
		 27	[  0]	TGETS	  8	7	27	; slot8 = tostring.find
		 28	[  0]	KSTR 	 11		26	; slot11 = "{hp.png}"
		 29	[  0]	KSHORT	 12		1	; slot12 = 1
		 30	[  0]	KPRI 	 13		2	; slot13 = true
		 31	[  0]	CALL 	  8	2	5	; slot8 = tostring.find(slot9, tostring, slot11, slot12)
		 32	[  0]	ISF  	   		8	; if not tostring.find
		 33	[  0]	JMP  	  9		58	; 	goto 92
		 34	[  0]	GGET 	  8		25	; slot8 = _env["_G"]
		 35	[  0]	TGETS	  8	8	24	; slot8 = _G.__slotWrapRichTextWithStatIcons
		 36	[  0]	ISF  	   		8	; if not _G.__slotWrapRichTextWithStatIcons
		 37	[  0]	JMP  	  9		54	; 	goto 92
		 38	[  0]	GGET 	  8		25	; slot8 = _env["_G"]
		 39	[  0]	TGETS	  8	8	23	; slot8 = _G.__slotDrawRichTextWithStatIcons
		 40	[  0]	ISF  	   		8	; if not _G.__slotDrawRichTextWithStatIcons
		 41	[  0]	JMP  	  9		50	; 	goto 92
		 42	[  0]	GGET 	  8		22	; slot8 = _env["require"]
		 43	[  0]	KSTR 	 10		21	; slot10 = "src.ui.widgets"
		 44	[  0]	CALL 	  8	2	2	; slot8 = require(slot9)
		 45	[  0]	TGETS	  8	8	20	; slot8 = require.text_fit
		 46	[  0]	GGET 	  9		25	; slot9 = _env["_G"]
		 47	[  0]	TGETS	  9	9	24	; slot9 = _G.__slotWrapRichTextWithStatIcons
		 48	[  0]	MOV  	 11		7	; slot11 = tostring
		 49	[  0]	MOV  	 12		4	; slot12 = slot4
		 50	[  0]	TDUP 	 13		19	; slot13 = copy table#k19
		 51	[  0]	TSETS	  0	13	18	; slot13.font = slot0
		 52	[  0]	CALL 	  9	2	4	; slot9 = _G.__slotWrapRichTextWithStatIcons(slot10, tostring, slot12)
		 53	[  0]	GGET 	 10		17	; slot10 = _env["math"]
		 54	[  0]	TGETS	 10	10	16	; slot10 = math.max
		 55	[  0]	KSHORT	 12		1	; slot12 = 1
		 56	[  0]	ISTC 	 13		6	; slot13 = slot6; if slot6
		 57	[  0]	JMP  	 13		1	; 	goto 59
		 58	[  0]	LEN  	 13		9	; slot13 = #_G.__slotWrapRichTextWithStatIcons
		 59	[  0]	CALL 	 10	2	3	; slot10 = math.max(tostring, slot12)
		 60	[  0]	SUBVN	 10	10	0	; slot10 = math.max - 1
		 61	[  0]	MULVV	 10	10	5	; slot10 = slot10 * slot5
		 62	[  0]	MOV  	 13		0	; slot13 = slot0
		 63	[  0]	TGETS	 11	0	15	; slot11 = slot0.getHeight
		 64	[  0]	CALL 	 11	2	2	; slot11 = <unknown table>.getHeight(slot12)
		 65	[  0]	ADDVV	 10	10	11	; slot10 = slot10 + <unknown table>.getHeight
		 66	[  0]	TGETS	 11	8	14	; slot11 = require.text_fit.drawBlock
		 67	[  0]	TGETS	 13	8	13	; slot13 = require.text_fit.fitBlock
		 68	[  0]	MOV  	 15		7	; slot15 = tostring
		 69	[  0]	MOV  	 16		4	; slot16 = slot4
		 70	[  0]	MOV  	 17		10	; slot17 = slot10
		 71	[  0]	MOV  	 18		0	; slot18 = slot0
		 72	[  0]	TDUP 	 19		12	; slot19 = copy table#k12
		 73	[  0]	TSETS	  5	19	11	; slot19.lineH = slot5
		 74	[  0]	GGET 	 20		25	; slot20 = _env["_G"]
		 75	[  0]	TGETS	 20	20	24	; slot20 = _G.__slotWrapRichTextWithStatIcons
		 76	[  0]	TSETS	 20	19	10	; slot19.wrap = _G.__slotWrapRichTextWithStatIcons
		 77	[  0]	CALL 	 13	2	6	; slot13 = require.text_fit.fitBlock(slot14, tostring, slot16, slot17, slot18)
		 78	[  0]	MOV  	 14		2	; slot14 = slot2
		 79	[  0]	MOV  	 15		3	; slot15 = slot3
		 80	[  0]	MOV  	 16		4	; slot16 = slot4
		 81	[  0]	MOV  	 17		10	; slot17 = slot10
		 82	[  0]	TDUP 	 18		8	; slot18 = copy table#k8
		 83	[  0]	KSTR 	 19		9	; slot19 = "imprint:"
		 84	[  0]	MOV  	 20		7	; slot20 = tostring
		 85	[  0]	CAT  	 19	19	20	; slot19 = slot19 .. tostring
		 86	[  0]	TSETS	 19	18	7	; slot18.key = slot19
		 87	[  0]	GGET 	 19		25	; slot19 = _env["_G"]
		 88	[  0]	TGETS	 19	19	23	; slot19 = _G.__slotDrawRichTextWithStatIcons
		 89	[  0]	TSETS	 19	18	6	; slot18.draw = _G.__slotDrawRichTextWithStatIcons
		 90	[  0]	CALL 	 11	1	7	;  = require.text_fit.drawBlock(slot12, require.text_fit.fitBlock, slot14, slot15, slot16, slot17)
		 91	[  0]	RET0 	  0		1	; return
		 92	[  0]	MOV  	 10		0	; slot10 = slot0
		 93	[  0]	TGETS	  8	0	5	; slot8 = slot0.getWrap
		 94	[  0]	MOV  	 11		7	; slot11 = tostring
		 95	[  0]	MOV  	 12		4	; slot12 = slot4
		 96	[  0]	CALL 	  8	3	4	; slot8, slot9 = <unknown table>.getWrap(_G.__slotWrapRichTextWithStatIcons, slot10, tostring)
		 97	[  0]	ISF  	   		9	; if not _G.__slotWrapRichTextWithStatIcons
		 98	[  0]	JMP  	 10		3	; 	goto 102
		 99	[  0]	LEN  	 10		9	; slot10 = #_G.__slotWrapRichTextWithStatIcons
		100	[  0]	ISNEN	 10		1	; if slot10 ~= 0
		101	[  0]	JMP  	 10		1	; 	goto 103
		102	[  0]	RET0 	  0		1	; return
		103	[  0]	ISF  	   		6	; if not slot6
		104	[  0]	JMP  	 10		58	; 	goto 163
		105	[  0]	KSHORT	 10		0	; slot10 = 0
		106	[  0]	ISGE 	 10		6	; if slot10 >= slot6
		107	[  0]	JMP  	 10		55	; 	goto 163
		108	[  0]	LEN  	 10		9	; slot10 = #_G.__slotWrapRichTextWithStatIcons
		109	[  0]	ISGE 	  6		10	; if slot6 >= slot10
		110	[  0]	JMP  	 10		52	; 	goto 163
		111	[  0]	GGET 	 10		22	; slot10 = _env["require"]
		112	[  0]	KSTR 	 12		21	; slot12 = "src.ui.widgets"
		113	[  0]	CALL 	 10	2	2	; slot10 = require(tostring)
		114	[  0]	TGETS	 10	10	20	; slot10 = require.text_fit
		115	[  0]	ISNEN	  6		0	; if slot6 ~= 1
		116	[  0]	JMP  	 11		20	; 	goto 137
		117	[  0]	TGETS	 11	10	6	; slot11 = require.text_fit.draw
		118	[  0]	TGETS	 13	10	4	; slot13 = require.text_fit.fit
		119	[  0]	MOV  	 15		7	; slot15 = tostring
		120	[  0]	MOV  	 16		4	; slot16 = slot4
		121	[  0]	MOV  	 17		0	; slot17 = slot0
		122	[  0]	TNEW 	 18		0	; slot18 = new table( array: 0, dict: 1)
		123	[  0]	CALL 	 13	2	5	; slot13 = require.text_fit.fit(slot14, tostring, slot16, slot17)
		124	[  0]	MOV  	 14		2	; slot14 = slot2
		125	[  0]	MOV  	 15		3	; slot15 = slot3
		126	[  0]	MOV  	 16		4	; slot16 = slot4
		127	[  0]	MOV  	 19		0	; slot19 = slot0
		128	[  0]	TGETS	 17	0	15	; slot17 = slot0.getHeight
		129	[  0]	CALL 	 17	2	2	; slot17 = <unknown table>.getHeight(slot18)
		130	[  0]	TDUP 	 18		3	; slot18 = copy table#k3
		131	[  0]	KSTR 	 19		9	; slot19 = "imprint:"
		132	[  0]	MOV  	 20		7	; slot20 = tostring
		133	[  0]	CAT  	 19	19	20	; slot19 = slot19 .. tostring
		134	[  0]	TSETS	 19	18	7	; slot18.key = slot19
		135	[  0]	CALL 	 11	1	7	;  = require.text_fit.draw(slot12, require.text_fit.fit, slot14, slot15, slot16, <unknown table>.getHeight)
		136	[  0]	RET0 	  0		1	; return
		137	[  0]	SUBVN	 11	6	0	; slot11 = slot6 - 1
		138	[  0]	MULVV	 11	11	5	; slot11 = slot11 * slot5
		139	[  0]	MOV  	 14		0	; slot14 = slot0
		140	[  0]	TGETS	 12	0	15	; slot12 = slot0.getHeight
		141	[  0]	CALL 	 12	2	2	; slot12 = <unknown table>.getHeight(require.text_fit.fit)
		142	[  0]	ADDVV	 11	11	12	; slot11 = slot11 + <unknown table>.getHeight
		143	[  0]	TGETS	 12	10	14	; slot12 = require.text_fit.drawBlock
		144	[  0]	TGETS	 14	10	13	; slot14 = require.text_fit.fitBlock
		145	[  0]	MOV  	 16		7	; slot16 = tostring
		146	[  0]	MOV  	 17		4	; slot17 = slot4
		147	[  0]	MOV  	 18		11	; slot18 = slot11
		148	[  0]	MOV  	 19		0	; slot19 = slot0
		149	[  0]	TDUP 	 20		2	; slot20 = copy table#k2
		150	[  0]	TSETS	  5	20	11	; slot20.lineH = slot5
		151	[  0]	CALL 	 14	2	6	; slot14 = require.text_fit.fitBlock(slot15, tostring, slot17, slot18, slot19)
		152	[  0]	MOV  	 15		2	; slot15 = slot2
		153	[  0]	MOV  	 16		3	; slot16 = slot3
		154	[  0]	MOV  	 17		4	; slot17 = slot4
		155	[  0]	MOV  	 18		11	; slot18 = slot11
		156	[  0]	TDUP 	 19		1	; slot19 = copy table#k1
		157	[  0]	KSTR 	 20		9	; slot20 = "imprint:"
		158	[  0]	MOV  	 21		7	; slot21 = tostring
		159	[  0]	CAT  	 20	20	21	; slot20 = slot20 .. tostring
		160	[  0]	TSETS	 20	19	7	; slot19.key = slot20
		161	[  0]	CALL 	 12	1	7	;  = require.text_fit.drawBlock(require.text_fit.fit, require.text_fit.fitBlock, slot15, slot16, slot17, slot18)
		162	[  0]	RET0 	  0		1	; return
		163	[  0]	KSHORT	 10		1	; slot10 = 1
		164	[  0]	LEN  	 11		9	; slot11 = #_G.__slotWrapRichTextWithStatIcons
		165	[  0]	KSHORT	 12		1	; slot12 = 1
		166	[  0]	FORI 	 10		10	; for require.text_fit.fit = slot10,slot11,slot12 else goto 177
		167	[  0]	GGET 	 14		33	; slot14 = _env["love"]
		168	[  0]	TGETS	 14	14	32	; slot14 = love.graphics
		169	[  0]	TGETS	 14	14	0	; slot14 = love.graphics.print
		170	[  0]	TGETV	 16	9	13	; slot16 = _G.__slotWrapRichTextWithStatIcons[require.text_fit.fit]
		171	[  0]	MOV  	 17		2	; slot17 = slot2
		172	[  0]	SUBVN	 18	13	0	; slot18 = require.text_fit.fit - 1
		173	[  0]	MULVV	 18	18	5	; slot18 = slot18 * slot5
		174	[  0]	ADDVV	 18	3	18	; slot18 = slot3 + slot18
		175	[  0]	CALL 	 14	1	4	;  = love.graphics.print(slot15, slot16, slot17)
		176	[  0]	FORL 	 10		-10	; require.text_fit.fit = require.text_fit.fit + slot12; if cmp(require.text_fit.fit, sign slot12,  slot11) goto 167
		177	[  0]	RET0 	  0		1	; return
	 99	[  0]	FNEW 	 53		88	; N/A:0-0: 5 args, 0 upvalues, 19 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  5		12	; slot5 = _env["require"]
		  2	[  0]	KSTR 	  7		11	; slot7 = "src.ui.widgets"
		  3	[  0]	CALL 	  5	2	2	; slot5 = require(slot6)
		  4	[  0]	TGETS	  5	5	10	; slot5 = require.text_fit
		  5	[  0]	TGETS	  6	5	9	; slot6 = require.text_fit.fit
		  6	[  0]	MOV  	  8		1	; slot8 = slot1
		  7	[  0]	MOV  	  9		4	; slot9 = slot4
		  8	[  0]	MOV  	 10		0	; slot10 = slot0
		  9	[  0]	TNEW 	 11		0	; slot11 = new table( array: 0, dict: 1)
		 10	[  0]	CALL 	  6	2	5	; slot6 = require.text_fit.fit(slot7, slot8, slot9, slot10)
		 11	[  0]	TGETS	  7	5	8	; slot7 = require.text_fit.draw
		 12	[  0]	MOV  	  9		6	; slot9 = require.text_fit.fit
		 13	[  0]	MOV  	 10		2	; slot10 = slot2
		 14	[  0]	MOV  	 11		3	; slot11 = slot3
		 15	[  0]	MOV  	 12		4	; slot12 = slot4
		 16	[  0]	MOV  	 15		0	; slot15 = slot0
		 17	[  0]	TGETS	 13	0	7	; slot13 = slot0.getHeight
		 18	[  0]	CALL 	 13	2	2	; slot13 = <unknown table>.getHeight(slot14)
		 19	[  0]	TDUP 	 14		4	; slot14 = copy table#k4
		 20	[  0]	KSTR 	 15		6	; slot15 = "imprint_name:"
		 21	[  0]	GGET 	 16		5	; slot16 = _env["tostring"]
		 22	[  0]	MOV  	 18		1	; slot18 = slot1
		 23	[  0]	CALL 	 16	2	2	; slot16 = tostring(slot17)
		 24	[  0]	CAT  	 15	15	16	; slot15 = slot15 .. tostring
		 25	[  0]	TSETS	 15	14	3	; slot14.key = slot15
		 26	[  0]	CALL 	  7	1	7	;  = require.text_fit.draw(slot8, require.text_fit.fit, slot10, slot11, slot12, <unknown table>.getHeight)
		 27	[  0]	TGETS	  7	6	2	; slot7 = require.text_fit.fit.width
		 28	[  0]	TGETS	  8	6	1	; slot8 = require.text_fit.fit.font
		 29	[  0]	TGETS	  9	6	0	; slot9 = require.text_fit.fit.scale
		 30	[  0]	IST  	   		9	; if require.text_fit.fit.scale
		 31	[  0]	JMP  	 10		1	; 	goto 33
		 32	[  0]	KSHORT	  9		1	; slot9 = 1
		 33	[  0]	RET  	  7		4	; return require.text_fit.fit.width, require.text_fit.fit.font, slot9
	100	[  0]	TSETS	 53	0	89	; slot0._printFitted = slot53
	101	[  0]	FNEW 	 53		86	; N/A:0-0: 2 args, 0 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		3	; 	goto 6
		  3	[  0]	SUBVN	  2	1	0	; slot2 = slot1 - 6
		  4	[  0]	IST  	   		2	; if slot2
		  5	[  0]	JMP  	  3		1	; 	goto 7
		  6	[  0]	MOV  	  2		1	; slot2 = slot1
		  7	[  0]	GGET 	  3		1	; slot3 = _env["math"]
		  8	[  0]	TGETS	  3	3	0	; slot3 = math.max
		  9	[  0]	KSHORT	  5		16	; slot5 = 16
		 10	[  0]	SUBVN	  6	2	1	; slot6 = slot2 - 16
		 11	[  0]	CALLT	  3		3	; return math.max(slot4, slot5)
	102	[  0]	TSETS	 53	0	87	; slot0._buttonTextW = slot53
	103	[  0]	KSHORT	 53		49	; slot53 = 49
	104	[  0]	TSETS	 53	0	85	; slot0.GAIN_TAB_INNER_W = slot53
	105	[  0]	KSHORT	 53		70	; slot53 = 70
	106	[  0]	TSETS	 53	0	84	; slot0.GAIN_TAB_MAX_EXTRA = slot53
	107	[  0]	FNEW 	 53		82	; N/A:0-0: 4 args, 1 upvalues, 20 slots
		
		;;;; constant tables ;;;;
		ktable#9 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		3	; if not slot3
		  2	[  0]	JMP  	  4		3	; 	goto 6
		  3	[  0]	KSHORT	  4		0	; slot4 = 0
		  4	[  0]	ISGT 	  3		4	; if slot3 > slot4
		  5	[  0]	JMP  	  4		8	; 	goto 14
		  6	[  0]	GGET 	  4		20	; slot4 = _env["love"]
		  7	[  0]	TGETS	  4	4	19	; slot4 = love.graphics
		  8	[  0]	TGETS	  4	4	18	; slot4 = love.graphics.draw
		  9	[  0]	MOV  	  6		0	; slot6 = slot0
		 10	[  0]	MOV  	  7		1	; slot7 = slot1
		 11	[  0]	MOV  	  8		2	; slot8 = slot2
		 12	[  0]	CALL 	  4	1	4	;  = love.graphics.draw(slot5, slot6, slot7)
		 13	[  0]	RET0 	  0		1	; return
		 14	[  0]	MOV  	  6		0	; slot6 = slot0
		 15	[  0]	TGETS	  4	0	17	; slot4 = slot0.getDimensions
		 16	[  0]	CALL 	  4	3	2	; slot4, slot5 = <unknown table>.getDimensions(slot5)
		 17	[  0]	GGET 	  6		16	; slot6 = _env["math"]
		 18	[  0]	TGETS	  6	6	15	; slot6 = math.min
		 19	[  0]	MOV  	  8		3	; slot8 = slot3
		 20	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 21	[  0]	TGETS	  9	9	14	; slot9 = uv0"unknown".GAIN_TAB_MAX_EXTRA
		 22	[  0]	CALL 	  6	2	3	; slot6 = math.min(slot7, slot8)
		 23	[  0]	MOV  	  3		6	; slot3 = math.min
		 24	[  0]	KSHORT	  6		41	; slot6 = 41
		 25	[  0]	KSHORT	  7		20	; slot7 = 20
		 26	[  0]	KSHORT	  8		8	; slot8 = 8
		 27	[  0]	KSHORT	  9		24	; slot9 = 24
		 28	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 29	[  0]	TGETS	 10	10	13	; slot10 = uv0"unknown"._gainPlateQuads
		 30	[  0]	ISF  	   		10	; if not uv0"unknown"._gainPlateQuads
		 31	[  0]	JMP  	 11		9	; 	goto 41
		 32	[  0]	TGETS	 11	10	12	; slot11 = uv0"unknown"._gainPlateQuads.w
		 33	[  0]	ISNEV	 11		4	; if uv0"unknown"._gainPlateQuads.w ~= <unknown table>.getDimensions
		 34	[  0]	JMP  	 11		6	; 	goto 41
		 35	[  0]	TGETS	 11	10	11	; slot11 = uv0"unknown"._gainPlateQuads.h
		 36	[  0]	ISNEV	 11		5	; if uv0"unknown"._gainPlateQuads.h ~= slot5
		 37	[  0]	JMP  	 11		3	; 	goto 41
		 38	[  0]	TGETS	 11	10	10	; slot11 = uv0"unknown"._gainPlateQuads.extra
		 39	[  0]	ISEQV	 11		3	; if uv0"unknown"._gainPlateQuads.extra == math.min
		 40	[  0]	JMP  	 11		98	; 	goto 139
		 41	[  0]	TDUP 	 11		9	; slot11 = copy table#k9
		 42	[  0]	TSETS	  4	11	12	; slot11.w = <unknown table>.getDimensions
		 43	[  0]	TSETS	  5	11	11	; slot11.h = slot5
		 44	[  0]	TSETS	  3	11	10	; slot11.extra = math.min
		 45	[  0]	GGET 	 12		20	; slot12 = _env["love"]
		 46	[  0]	TGETS	 12	12	19	; slot12 = love.graphics
		 47	[  0]	TGETS	 12	12	8	; slot12 = love.graphics.newQuad
		 48	[  0]	KSHORT	 14		0	; slot14 = 0
		 49	[  0]	KSHORT	 15		0	; slot15 = 0
		 50	[  0]	MOV  	 16		6	; slot16 = slot6
		 51	[  0]	MOV  	 17		7	; slot17 = slot7
		 52	[  0]	MOV  	 18		4	; slot18 = <unknown table>.getDimensions
		 53	[  0]	MOV  	 19		5	; slot19 = slot5
		 54	[  0]	CALL 	 12	2	7	; slot12 = love.graphics.newQuad(slot13, slot14, slot15, slot16, slot17, <unknown table>.getDimensions)
		 55	[  0]	TSETS	 12	11	7	; slot11.tabLeft = love.graphics.newQuad
		 56	[  0]	GGET 	 12		20	; slot12 = _env["love"]
		 57	[  0]	TGETS	 12	12	19	; slot12 = love.graphics
		 58	[  0]	TGETS	 12	12	8	; slot12 = love.graphics.newQuad
		 59	[  0]	SUBVN	 14	6	0	; slot14 = slot6 - 1
		 60	[  0]	KSHORT	 15		0	; slot15 = 0
		 61	[  0]	KSHORT	 16		1	; slot16 = 1
		 62	[  0]	MOV  	 17		7	; slot17 = slot7
		 63	[  0]	MOV  	 18		4	; slot18 = <unknown table>.getDimensions
		 64	[  0]	MOV  	 19		5	; slot19 = slot5
		 65	[  0]	CALL 	 12	2	7	; slot12 = love.graphics.newQuad(slot13, slot14, slot15, slot16, slot17, <unknown table>.getDimensions)
		 66	[  0]	TSETS	 12	11	6	; slot11.tabMid = love.graphics.newQuad
		 67	[  0]	GGET 	 12		20	; slot12 = _env["love"]
		 68	[  0]	TGETS	 12	12	19	; slot12 = love.graphics
		 69	[  0]	TGETS	 12	12	8	; slot12 = love.graphics.newQuad
		 70	[  0]	MOV  	 14		6	; slot14 = slot6
		 71	[  0]	KSHORT	 15		0	; slot15 = 0
		 72	[  0]	SUBVV	 16	4	6	; slot16 = <unknown table>.getDimensions - slot6
		 73	[  0]	MOV  	 17		7	; slot17 = slot7
		 74	[  0]	MOV  	 18		4	; slot18 = <unknown table>.getDimensions
		 75	[  0]	MOV  	 19		5	; slot19 = slot5
		 76	[  0]	CALL 	 12	2	7	; slot12 = love.graphics.newQuad(slot13, slot14, slot15, slot16, slot17, <unknown table>.getDimensions)
		 77	[  0]	TSETS	 12	11	5	; slot11.tabRight = love.graphics.newQuad
		 78	[  0]	GGET 	 12		20	; slot12 = _env["love"]
		 79	[  0]	TGETS	 12	12	19	; slot12 = love.graphics
		 80	[  0]	TGETS	 12	12	8	; slot12 = love.graphics.newQuad
		 81	[  0]	KSHORT	 14		0	; slot14 = 0
		 82	[  0]	MOV  	 15		7	; slot15 = slot7
		 83	[  0]	MOV  	 16		6	; slot16 = slot6
		 84	[  0]	MOV  	 17		8	; slot17 = slot8
		 85	[  0]	MOV  	 18		4	; slot18 = <unknown table>.getDimensions
		 86	[  0]	MOV  	 19		5	; slot19 = slot5
		 87	[  0]	CALL 	 12	2	7	; slot12 = love.graphics.newQuad(slot13, slot14, slot15, slot16, slot17, <unknown table>.getDimensions)
		 88	[  0]	TSETS	 12	11	4	; slot11.lipLeft = love.graphics.newQuad
		 89	[  0]	GGET 	 12		20	; slot12 = _env["love"]
		 90	[  0]	TGETS	 12	12	19	; slot12 = love.graphics
		 91	[  0]	TGETS	 12	12	8	; slot12 = love.graphics.newQuad
		 92	[  0]	SUBVN	 14	6	0	; slot14 = slot6 - 1
		 93	[  0]	MOV  	 15		7	; slot15 = slot7
		 94	[  0]	KSHORT	 16		1	; slot16 = 1
		 95	[  0]	MOV  	 17		8	; slot17 = slot8
		 96	[  0]	MOV  	 18		4	; slot18 = <unknown table>.getDimensions
		 97	[  0]	MOV  	 19		5	; slot19 = slot5
		 98	[  0]	CALL 	 12	2	7	; slot12 = love.graphics.newQuad(slot13, slot14, slot15, slot16, slot17, <unknown table>.getDimensions)
		 99	[  0]	TSETS	 12	11	3	; slot11.lipMid = love.graphics.newQuad
		100	[  0]	GGET 	 12		20	; slot12 = _env["love"]
		101	[  0]	TGETS	 12	12	19	; slot12 = love.graphics
		102	[  0]	TGETS	 12	12	8	; slot12 = love.graphics.newQuad
		103	[  0]	MOV  	 14		6	; slot14 = slot6
		104	[  0]	MOV  	 15		7	; slot15 = slot7
		105	[  0]	SUBVV	 16	4	9	; slot16 = <unknown table>.getDimensions - slot9
		106	[  0]	SUBVV	 16	16	3	; slot16 = slot16 - math.min
		107	[  0]	SUBVV	 16	16	6	; slot16 = slot16 - slot6
		108	[  0]	MOV  	 17		8	; slot17 = slot8
		109	[  0]	MOV  	 18		4	; slot18 = <unknown table>.getDimensions
		110	[  0]	MOV  	 19		5	; slot19 = slot5
		111	[  0]	CALL 	 12	2	7	; slot12 = love.graphics.newQuad(slot13, slot14, slot15, slot16, slot17, <unknown table>.getDimensions)
		112	[  0]	TSETS	 12	11	2	; slot11.lipRight = love.graphics.newQuad
		113	[  0]	GGET 	 12		20	; slot12 = _env["love"]
		114	[  0]	TGETS	 12	12	19	; slot12 = love.graphics
		115	[  0]	TGETS	 12	12	8	; slot12 = love.graphics.newQuad
		116	[  0]	SUBVV	 14	4	9	; slot14 = <unknown table>.getDimensions - slot9
		117	[  0]	MOV  	 15		7	; slot15 = slot7
		118	[  0]	MOV  	 16		9	; slot16 = slot9
		119	[  0]	MOV  	 17		8	; slot17 = slot8
		120	[  0]	MOV  	 18		4	; slot18 = <unknown table>.getDimensions
		121	[  0]	MOV  	 19		5	; slot19 = slot5
		122	[  0]	CALL 	 12	2	7	; slot12 = love.graphics.newQuad(slot13, slot14, slot15, slot16, slot17, <unknown table>.getDimensions)
		123	[  0]	TSETS	 12	11	1	; slot11.lipCorner = love.graphics.newQuad
		124	[  0]	GGET 	 12		20	; slot12 = _env["love"]
		125	[  0]	TGETS	 12	12	19	; slot12 = love.graphics
		126	[  0]	TGETS	 12	12	8	; slot12 = love.graphics.newQuad
		127	[  0]	KSHORT	 14		0	; slot14 = 0
		128	[  0]	ADDVV	 15	7	8	; slot15 = slot7 + slot8
		129	[  0]	MOV  	 16		4	; slot16 = <unknown table>.getDimensions
		130	[  0]	SUBVV	 17	5	7	; slot17 = slot5 - slot7
		131	[  0]	SUBVV	 17	17	8	; slot17 = slot17 - slot8
		132	[  0]	MOV  	 18		4	; slot18 = <unknown table>.getDimensions
		133	[  0]	MOV  	 19		5	; slot19 = slot5
		134	[  0]	CALL 	 12	2	7	; slot12 = love.graphics.newQuad(slot13, slot14, slot15, <unknown table>.getDimensions, slot17, <unknown table>.getDimensions)
		135	[  0]	TSETS	 12	11	0	; slot11.body = love.graphics.newQuad
		136	[  0]	MOV  	 10		11	; slot10 = slot11
		137	[  0]	UGET 	 11		0	; slot11 = uv0"unknwon"
		138	[  0]	TSETS	 10	11	13	; uv0"unknown"._gainPlateQuads = slot10
		139	[  0]	GGET 	 11		20	; slot11 = _env["love"]
		140	[  0]	TGETS	 11	11	19	; slot11 = love.graphics
		141	[  0]	TGETS	 11	11	18	; slot11 = love.graphics.draw
		142	[  0]	MOV  	 13		0	; slot13 = slot0
		143	[  0]	TGETS	 14	10	7	; slot14 = slot10.tabLeft
		144	[  0]	MOV  	 15		1	; slot15 = slot1
		145	[  0]	MOV  	 16		2	; slot16 = slot2
		146	[  0]	CALL 	 11	1	5	;  = love.graphics.draw(love.graphics.newQuad, slot13, <unknown table>.tabLeft, slot15)
		147	[  0]	GGET 	 11		20	; slot11 = _env["love"]
		148	[  0]	TGETS	 11	11	19	; slot11 = love.graphics
		149	[  0]	TGETS	 11	11	18	; slot11 = love.graphics.draw
		150	[  0]	MOV  	 13		0	; slot13 = slot0
		151	[  0]	TGETS	 14	10	6	; slot14 = slot10.tabMid
		152	[  0]	ADDVV	 15	1	6	; slot15 = slot1 + slot6
		153	[  0]	MOV  	 16		2	; slot16 = slot2
		154	[  0]	KSHORT	 17		0	; slot17 = 0
		155	[  0]	MOV  	 18		3	; slot18 = math.min
		156	[  0]	KSHORT	 19		1	; slot19 = 1
		157	[  0]	CALL 	 11	1	8	;  = love.graphics.draw(love.graphics.newQuad, slot13, <unknown table>.tabMid, slot15, slot16, slot17, math.min)
		158	[  0]	GGET 	 11		20	; slot11 = _env["love"]
		159	[  0]	TGETS	 11	11	19	; slot11 = love.graphics
		160	[  0]	TGETS	 11	11	18	; slot11 = love.graphics.draw
		161	[  0]	MOV  	 13		0	; slot13 = slot0
		162	[  0]	TGETS	 14	10	5	; slot14 = slot10.tabRight
		163	[  0]	ADDVV	 15	1	6	; slot15 = slot1 + slot6
		164	[  0]	ADDVV	 15	15	3	; slot15 = slot15 + math.min
		165	[  0]	MOV  	 16		2	; slot16 = slot2
		166	[  0]	CALL 	 11	1	5	;  = love.graphics.draw(love.graphics.newQuad, slot13, <unknown table>.tabRight, slot15)
		167	[  0]	GGET 	 11		20	; slot11 = _env["love"]
		168	[  0]	TGETS	 11	11	19	; slot11 = love.graphics
		169	[  0]	TGETS	 11	11	18	; slot11 = love.graphics.draw
		170	[  0]	MOV  	 13		0	; slot13 = slot0
		171	[  0]	TGETS	 14	10	4	; slot14 = slot10.lipLeft
		172	[  0]	MOV  	 15		1	; slot15 = slot1
		173	[  0]	ADDVV	 16	2	7	; slot16 = slot2 + slot7
		174	[  0]	CALL 	 11	1	5	;  = love.graphics.draw(love.graphics.newQuad, slot13, <unknown table>.lipLeft, slot15)
		175	[  0]	GGET 	 11		20	; slot11 = _env["love"]
		176	[  0]	TGETS	 11	11	19	; slot11 = love.graphics
		177	[  0]	TGETS	 11	11	18	; slot11 = love.graphics.draw
		178	[  0]	MOV  	 13		0	; slot13 = slot0
		179	[  0]	TGETS	 14	10	3	; slot14 = slot10.lipMid
		180	[  0]	ADDVV	 15	1	6	; slot15 = slot1 + slot6
		181	[  0]	ADDVV	 16	2	7	; slot16 = slot2 + slot7
		182	[  0]	KSHORT	 17		0	; slot17 = 0
		183	[  0]	MOV  	 18		3	; slot18 = math.min
		184	[  0]	KSHORT	 19		1	; slot19 = 1
		185	[  0]	CALL 	 11	1	8	;  = love.graphics.draw(love.graphics.newQuad, slot13, <unknown table>.lipMid, slot15, slot16, slot17, math.min)
		186	[  0]	GGET 	 11		20	; slot11 = _env["love"]
		187	[  0]	TGETS	 11	11	19	; slot11 = love.graphics
		188	[  0]	TGETS	 11	11	18	; slot11 = love.graphics.draw
		189	[  0]	MOV  	 13		0	; slot13 = slot0
		190	[  0]	TGETS	 14	10	2	; slot14 = slot10.lipRight
		191	[  0]	ADDVV	 15	1	6	; slot15 = slot1 + slot6
		192	[  0]	ADDVV	 15	15	3	; slot15 = slot15 + math.min
		193	[  0]	ADDVV	 16	2	7	; slot16 = slot2 + slot7
		194	[  0]	CALL 	 11	1	5	;  = love.graphics.draw(love.graphics.newQuad, slot13, <unknown table>.lipRight, slot15)
		195	[  0]	GGET 	 11		20	; slot11 = _env["love"]
		196	[  0]	TGETS	 11	11	19	; slot11 = love.graphics
		197	[  0]	TGETS	 11	11	18	; slot11 = love.graphics.draw
		198	[  0]	MOV  	 13		0	; slot13 = slot0
		199	[  0]	TGETS	 14	10	1	; slot14 = slot10.lipCorner
		200	[  0]	ADDVV	 15	1	4	; slot15 = slot1 + <unknown table>.getDimensions
		201	[  0]	SUBVV	 15	15	9	; slot15 = slot15 - slot9
		202	[  0]	ADDVV	 16	2	7	; slot16 = slot2 + slot7
		203	[  0]	CALL 	 11	1	5	;  = love.graphics.draw(love.graphics.newQuad, slot13, <unknown table>.lipCorner, slot15)
		204	[  0]	GGET 	 11		20	; slot11 = _env["love"]
		205	[  0]	TGETS	 11	11	19	; slot11 = love.graphics
		206	[  0]	TGETS	 11	11	18	; slot11 = love.graphics.draw
		207	[  0]	MOV  	 13		0	; slot13 = slot0
		208	[  0]	TGETS	 14	10	0	; slot14 = slot10.body
		209	[  0]	MOV  	 15		1	; slot15 = slot1
		210	[  0]	ADDVV	 16	2	7	; slot16 = slot2 + slot7
		211	[  0]	ADDVV	 16	16	8	; slot16 = slot16 + slot8
		212	[  0]	CALL 	 11	1	5	;  = love.graphics.draw(love.graphics.newQuad, slot13, <unknown table>.body, slot15)
		213	[  0]	RET0 	  0		1	; return
	108	[  0]	TSETS	 53	0	83	; slot0._drawGainPlate = slot53
	109	[  0]	FNEW 	 53		81	; N/A:0-0: 2 args, 0 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		5	; 	goto 8
		  3	[  0]	ISF  	   		1	; if not slot1
		  4	[  0]	JMP  	  2		3	; 	goto 8
		  5	[  0]	KSHORT	  2		0	; slot2 = 0
		  6	[  0]	ISGT 	  1		2	; if slot1 > slot2
		  7	[  0]	JMP  	  2		2	; 	goto 10
		  8	[  0]	KSHORT	  2		1	; slot2 = 1
		  9	[  0]	RET1 	  2		2	; return slot2
		 10	[  0]	GGET 	  2		2	; slot2 = _env["math"]
		 11	[  0]	TGETS	  2	2	1	; slot2 = math.max
		 12	[  0]	KSHORT	  4		1	; slot4 = 1
		 13	[  0]	GGET 	  5		2	; slot5 = _env["math"]
		 14	[  0]	TGETS	  5	5	0	; slot5 = math.floor
		 15	[  0]	DIVVV	  7	0	1	; slot7 = slot0 / slot1
		 16	[  0]	CALL 	  5	0	2	; MULTRES = math.floor(slot6)
		 17	[  0]	CALLMT	  2		1	; return math.max(, ...MULTRES)
	110	[  0]	FNEW 	 54		80	; N/A:0-0: 3 args, 0 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		ktable#1 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		1	; if slot1
		  2	[  0]	JMP  	  3		2	; 	goto 5
		  3	[  0]	KSHORT	  3		1	; slot3 = 1
		  4	[  0]	RET1 	  3		2	; return slot3
		  5	[  0]	ISF  	   		0	; if not slot0
		  6	[  0]	JMP  	  3		3	; 	goto 10
		  7	[  0]	TGETS	  3	0	9	; slot3 = slot0.getWrap
		  8	[  0]	IST  	   		3	; if <unknown table>.getWrap
		  9	[  0]	JMP  	  3		2	; 	goto 12
		 10	[  0]	KSHORT	  3		1	; slot3 = 1
		 11	[  0]	RET1 	  3		2	; return slot3
		 12	[  0]	ISF  	   		2	; if not slot2
		 13	[  0]	JMP  	  3		3	; 	goto 17
		 14	[  0]	KSHORT	  3		0	; slot3 = 0
		 15	[  0]	ISGT 	  2		3	; if slot2 > slot3
		 16	[  0]	JMP  	  3		2	; 	goto 19
		 17	[  0]	KSHORT	  3		1	; slot3 = 1
		 18	[  0]	RET1 	  3		2	; return slot3
		 19	[  0]	GGET 	  3		8	; slot3 = _env["tostring"]
		 20	[  0]	MOV  	  5		1	; slot5 = slot1
		 21	[  0]	CALL 	  3	2	2	; slot3 = tostring(slot4)
		 22	[  0]	MOV  	  5		3	; slot5 = tostring
		 23	[  0]	TGETS	  3	3	7	; slot3 = tostring.find
		 24	[  0]	KSTR 	  6		6	; slot6 = "{hp.png}"
		 25	[  0]	KSHORT	  7		1	; slot7 = 1
		 26	[  0]	KPRI 	  8		2	; slot8 = true
		 27	[  0]	CALL 	  3	2	5	; slot3 = tostring.find(slot4, tostring, slot6, slot7)
		 28	[  0]	ISF  	   		3	; if not slot3
		 29	[  0]	JMP  	  4		16	; 	goto 46
		 30	[  0]	GGET 	  3		5	; slot3 = _env["_G"]
		 31	[  0]	TGETS	  3	3	4	; slot3 = _G.__slotWrapRichTextWithStatIcons
		 32	[  0]	ISF  	   		3	; if not _G.__slotWrapRichTextWithStatIcons
		 33	[  0]	JMP  	  4		12	; 	goto 46
		 34	[  0]	GGET 	  3		3	; slot3 = _env["math"]
		 35	[  0]	TGETS	  3	3	2	; slot3 = math.max
		 36	[  0]	KSHORT	  5		1	; slot5 = 1
		 37	[  0]	GGET 	  6		5	; slot6 = _env["_G"]
		 38	[  0]	TGETS	  6	6	4	; slot6 = _G.__slotWrapRichTextWithStatIcons
		 39	[  0]	MOV  	  8		1	; slot8 = slot1
		 40	[  0]	MOV  	  9		2	; slot9 = slot2
		 41	[  0]	TDUP 	 10		1	; slot10 = copy table#k1
		 42	[  0]	TSETS	  0	10	0	; slot10.font = slot0
		 43	[  0]	CALL 	  6	2	4	; slot6 = _G.__slotWrapRichTextWithStatIcons(slot7, slot8, slot9)
		 44	[  0]	LEN  	  6		6	; slot6 = #_G.__slotWrapRichTextWithStatIcons
		 45	[  0]	CALLT	  3		3	; return math.max(slot4, slot5)
		 46	[  0]	MOV  	  5		0	; slot5 = slot0
		 47	[  0]	TGETS	  3	0	9	; slot3 = slot0.getWrap
		 48	[  0]	GGET 	  6		8	; slot6 = _env["tostring"]
		 49	[  0]	MOV  	  8		1	; slot8 = slot1
		 50	[  0]	CALL 	  6	2	2	; slot6 = tostring(slot7)
		 51	[  0]	MOV  	  7		2	; slot7 = slot2
		 52	[  0]	CALL 	  3	3	4	; slot3, slot4 = <unknown table>.getWrap(slot4, slot5, tostring)
		 53	[  0]	ISF  	   		4	; if not slot4
		 54	[  0]	JMP  	  5		3	; 	goto 58
		 55	[  0]	LEN  	  5		4	; slot5 = #slot4
		 56	[  0]	ISNEN	  5		0	; if slot5 ~= 0
		 57	[  0]	JMP  	  5		2	; 	goto 60
		 58	[  0]	KSHORT	  5		1	; slot5 = 1
		 59	[  0]	RET1 	  5		2	; return slot5
		 60	[  0]	LEN  	  5		4	; slot5 = #slot4
		 61	[  0]	RET1 	  5		2	; return slot5
	111	[  0]	FNEW 	 55		79	; N/A:0-0: 1 args, 1 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		9	; 	goto 12
		  3	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  4	[  0]	TGETS	  1	1	22	; slot1 = uv0"unknown".getText
		  5	[  0]	KSTR 	  3		21	; slot3 = "unit.name.유닛"
		  6	[  0]	GGET 	  4		20	; slot4 = _env["_G"]
		  7	[  0]	TGETS	  4	4	19	; slot4 = _G.currentGameLang
		  8	[  0]	IST  	   		4	; if _G.currentGameLang
		  9	[  0]	JMP  	  5		1	; 	goto 11
		 10	[  0]	KSTR 	  4		18	; slot4 = "ko"
		 11	[  0]	CALLT	  1		3	; return uv0"unknown".getText(slot2, slot3)
		 12	[  0]	TGETS	  1	0	17	; slot1 = slot0.sym
		 13	[  0]	IST  	   		1	; if <unknown table>.sym
		 14	[  0]	JMP  	  2		11	; 	goto 26
		 15	[  0]	TGETS	  1	0	16	; slot1 = slot0.role
		 16	[  0]	ISNES	  1		15	; if <unknown table>.role ~= "archer"
		 17	[  0]	JMP  	  1		2	; 	goto 20
		 18	[  0]	KSTR 	  1		14	; slot1 = "A"
		 19	[  0]	JMP  	  2		6	; 	goto 26
		 20	[  0]	TGETS	  1	0	16	; slot1 = slot0.role
		 21	[  0]	ISNES	  1		13	; if <unknown table>.role ~= "spear"
		 22	[  0]	JMP  	  1		2	; 	goto 25
		 23	[  0]	KSTR 	  1		12	; slot1 = "S"
		 24	[  0]	JMP  	  2		1	; 	goto 26
		 25	[  0]	KSTR 	  1		11	; slot1 = "W"
		 26	[  0]	TGETS	  2	0	10	; slot2 = slot0.rank
		 27	[  0]	IST  	   		2	; if <unknown table>.rank
		 28	[  0]	JMP  	  3		4	; 	goto 33
		 29	[  0]	TGETS	  2	0	9	; slot2 = slot0.star
		 30	[  0]	IST  	   		2	; if <unknown table>.star
		 31	[  0]	JMP  	  3		1	; 	goto 33
		 32	[  0]	KSHORT	  2		1	; slot2 = 1
		 33	[  0]	GGET 	  3		20	; slot3 = _env["_G"]
		 34	[  0]	TGETS	  3	3	19	; slot3 = _G.currentGameLang
		 35	[  0]	IST  	   		3	; if _G.currentGameLang
		 36	[  0]	JMP  	  4		1	; 	goto 38
		 37	[  0]	KSTR 	  3		18	; slot3 = "ko"
		 38	[  0]	KPRI 	  4		0	; slot4 = nil
		 39	[  0]	GGET 	  5		8	; slot5 = _env["type"]
		 40	[  0]	GGET 	  7		20	; slot7 = _env["_G"]
		 41	[  0]	TGETS	  7	7	7	; slot7 = _G.classNameBy
		 42	[  0]	CALL 	  5	2	2	; slot5 = type(slot6)
		 43	[  0]	ISNES	  5		6	; if type ~= "function"
		 44	[  0]	JMP  	  5		9	; 	goto 54
		 45	[  0]	GGET 	  5		5	; slot5 = _env["pcall"]
		 46	[  0]	GGET 	  7		20	; slot7 = _env["_G"]
		 47	[  0]	TGETS	  7	7	7	; slot7 = _G.classNameBy
		 48	[  0]	MOV  	  8		1	; slot8 = slot1
		 49	[  0]	MOV  	  9		2	; slot9 = slot2
		 50	[  0]	CALL 	  5	3	4	; slot5, slot6 = pcall(slot6, _G.classNameBy, slot8)
		 51	[  0]	ISF  	   		5	; if not pcall
		 52	[  0]	JMP  	  7		1	; 	goto 54
		 53	[  0]	MOV  	  4		6	; slot4 = slot6
		 54	[  0]	TGETS	  5	0	4	; slot5 = slot0.subclassName
		 55	[  0]	ISF  	   		5	; if not <unknown table>.subclassName
		 56	[  0]	JMP  	  6		7	; 	goto 64
		 57	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 58	[  0]	TGETS	  5	5	3	; slot5 = uv0"unknown".translateUnitName
		 59	[  0]	GGET 	  7		2	; slot7 = _env["tostring"]
		 60	[  0]	TGETS	  9	0	4	; slot9 = slot0.subclassName
		 61	[  0]	CALL 	  7	2	2	; slot7 = tostring(slot8)
		 62	[  0]	MOV  	  8		3	; slot8 = slot3
		 63	[  0]	CALLT	  5		3	; return uv0"unknown".translateUnitName(slot6, tostring)
		 64	[  0]	TGETS	  5	0	1	; slot5 = slot0.name
		 65	[  0]	ISF  	   		5	; if not <unknown table>.name
		 66	[  0]	JMP  	  6		7	; 	goto 74
		 67	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 68	[  0]	TGETS	  5	5	3	; slot5 = uv0"unknown".translateUnitName
		 69	[  0]	GGET 	  7		2	; slot7 = _env["tostring"]
		 70	[  0]	TGETS	  9	0	1	; slot9 = slot0.name
		 71	[  0]	CALL 	  7	2	2	; slot7 = tostring(slot8)
		 72	[  0]	MOV  	  8		3	; slot8 = slot3
		 73	[  0]	CALLT	  5		3	; return uv0"unknown".translateUnitName(slot6, tostring)
		 74	[  0]	ISF  	   		4	; if not slot4
		 75	[  0]	JMP  	  5		7	; 	goto 83
		 76	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 77	[  0]	TGETS	  5	5	3	; slot5 = uv0"unknown".translateUnitName
		 78	[  0]	GGET 	  7		2	; slot7 = _env["tostring"]
		 79	[  0]	MOV  	  9		4	; slot9 = slot4
		 80	[  0]	CALL 	  7	2	2	; slot7 = tostring(slot8)
		 81	[  0]	MOV  	  8		3	; slot8 = slot3
		 82	[  0]	CALLT	  5		3	; return uv0"unknown".translateUnitName(slot6, tostring)
		 83	[  0]	TGETS	  5	0	0	; slot5 = slot0.subclass
		 84	[  0]	ISF  	   		5	; if not <unknown table>.subclass
		 85	[  0]	JMP  	  6		7	; 	goto 93
		 86	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 87	[  0]	TGETS	  5	5	3	; slot5 = uv0"unknown".translateUnitName
		 88	[  0]	GGET 	  7		2	; slot7 = _env["tostring"]
		 89	[  0]	TGETS	  9	0	0	; slot9 = slot0.subclass
		 90	[  0]	CALL 	  7	2	2	; slot7 = tostring(slot8)
		 91	[  0]	MOV  	  8		3	; slot8 = slot3
		 92	[  0]	CALLT	  5		3	; return uv0"unknown".translateUnitName(slot6, tostring)
		 93	[  0]	GGET 	  5		2	; slot5 = _env["tostring"]
		 94	[  0]	MOV  	  7		1	; slot7 = slot1
		 95	[  0]	CALLT	  5		2	; return tostring(slot6)
	112	[  0]	FNEW 	 56		78	; N/A:0-0: 1 args, 0 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KSTR 	  1		14	; slot1 = "⚔"
		  4	[  0]	RET1 	  1		2	; return slot1
		  5	[  0]	TGETS	  1	0	13	; slot1 = slot0.sym
		  6	[  0]	TGETS	  2	0	12	; slot2 = slot0.role
		  7	[  0]	ISEQS	  2		11	; if <unknown table>.role == "archer"
		  8	[  0]	JMP  	  2		2	; 	goto 11
		  9	[  0]	ISNES	  1		10	; if <unknown table>.sym ~= "A"
		 10	[  0]	JMP  	  2		2	; 	goto 13
		 11	[  0]	KSTR 	  2		9	; slot2 = "🏹"
		 12	[  0]	RET1 	  2		2	; return slot2
		 13	[  0]	TGETS	  2	0	12	; slot2 = slot0.role
		 14	[  0]	ISEQS	  2		8	; if <unknown table>.role == "spear"
		 15	[  0]	JMP  	  2		2	; 	goto 18
		 16	[  0]	ISNES	  1		7	; if <unknown table>.sym ~= "S"
		 17	[  0]	JMP  	  2		2	; 	goto 20
		 18	[  0]	KSTR 	  2		6	; slot2 = "🔱"
		 19	[  0]	RET1 	  2		2	; return slot2
		 20	[  0]	ISNES	  1		5	; if <unknown table>.sym ~= "M"
		 21	[  0]	JMP  	  2		2	; 	goto 24
		 22	[  0]	KSTR 	  2		4	; slot2 = "✨"
		 23	[  0]	RET1 	  2		2	; return slot2
		 24	[  0]	ISNES	  1		3	; if <unknown table>.sym ~= "H"
		 25	[  0]	JMP  	  2		2	; 	goto 28
		 26	[  0]	KSTR 	  2		2	; slot2 = "🐎"
		 27	[  0]	RET1 	  2		2	; return slot2
		 28	[  0]	ISNES	  1		1	; if <unknown table>.sym ~= "D"
		 29	[  0]	JMP  	  2		2	; 	goto 32
		 30	[  0]	KSTR 	  2		0	; slot2 = "🗡"
		 31	[  0]	RET1 	  2		2	; return slot2
		 32	[  0]	KSTR 	  2		14	; slot2 = "⚔"
		 33	[  0]	RET1 	  2		2	; return slot2
	113	[  0]	FNEW 	 57		77	; N/A:0-0: 1 args, 2 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		  4	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  5	[  0]	MOV  	  4		0	; slot4 = slot0
		  6	[  0]	CALL 	  2	2	2	; slot2 = uv1"unknown"(slot3)
		  7	[  0]	GGET 	  3		1	; slot3 = _env["tostring"]
		  8	[  0]	MOV  	  5		2	; slot5 = slot2
		  9	[  0]	CALL 	  3	2	2	; slot3 = tostring(slot4)
		 10	[  0]	KSTR 	  4		0	; slot4 = " "
		 11	[  0]	GGET 	  5		1	; slot5 = _env["tostring"]
		 12	[  0]	MOV  	  7		1	; slot7 = slot1
		 13	[  0]	CALL 	  5	2	2	; slot5 = tostring(slot6)
		 14	[  0]	CAT  	  3	3	5	; slot3 = tostring .. slot4 .. tostring
		 15	[  0]	RET1 	  3		2	; return slot3
	114	[  0]	FNEW 	 58		76	; N/A:0-0: 1 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KSTR 	  1		12	; slot1 = "normal"
		  4	[  0]	RET1 	  1		2	; return slot1
		  5	[  0]	GGET 	  1		11	; slot1 = _env["tostring"]
		  6	[  0]	MOV  	  3		0	; slot3 = slot0
		  7	[  0]	CALL 	  1	2	2	; slot1 = tostring(slot2)
		  8	[  0]	MOV  	  3		1	; slot3 = slot1
		  9	[  0]	TGETS	  1	1	10	; slot1 = slot1.lower
		 10	[  0]	CALL 	  1	2	2	; slot1 = <unknown table>.lower(slot2)
		 11	[  0]	ISEQS	  1		12	; if slot1 == "normal"
		 12	[  0]	JMP  	  2		2	; 	goto 15
		 13	[  0]	ISNES	  1		9	; if slot1 ~= "common"
		 14	[  0]	JMP  	  2		2	; 	goto 17
		 15	[  0]	KSTR 	  2		12	; slot2 = "normal"
		 16	[  0]	RET1 	  2		2	; return slot2
		 17	[  0]	ISNES	  1		8	; if slot1 ~= "special"
		 18	[  0]	JMP  	  2		2	; 	goto 21
		 19	[  0]	KSTR 	  2		8	; slot2 = "special"
		 20	[  0]	RET1 	  2		2	; return slot2
		 21	[  0]	ISNES	  1		7	; if slot1 ~= "advanced"
		 22	[  0]	JMP  	  2		2	; 	goto 25
		 23	[  0]	KSTR 	  2		7	; slot2 = "advanced"
		 24	[  0]	RET1 	  2		2	; return slot2
		 25	[  0]	ISEQS	  1		6	; if slot1 == "rare"
		 26	[  0]	JMP  	  2		2	; 	goto 29
		 27	[  0]	ISNES	  1		5	; if slot1 ~= "r"
		 28	[  0]	JMP  	  2		2	; 	goto 31
		 29	[  0]	KSTR 	  2		6	; slot2 = "rare"
		 30	[  0]	RET1 	  2		2	; return slot2
		 31	[  0]	ISEQS	  1		4	; if slot1 == "legendary"
		 32	[  0]	JMP  	  2		4	; 	goto 37
		 33	[  0]	ISEQS	  1		3	; if slot1 == "legend"
		 34	[  0]	JMP  	  2		2	; 	goto 37
		 35	[  0]	ISNES	  1		2	; if slot1 ~= "l"
		 36	[  0]	JMP  	  2		2	; 	goto 39
		 37	[  0]	KSTR 	  2		4	; slot2 = "legendary"
		 38	[  0]	RET1 	  2		2	; return slot2
		 39	[  0]	ISEQS	  1		1	; if slot1 == "prism"
		 40	[  0]	JMP  	  2		2	; 	goto 43
		 41	[  0]	ISNES	  1		0	; if slot1 ~= "p"
		 42	[  0]	JMP  	  2		2	; 	goto 45
		 43	[  0]	KSTR 	  2		1	; slot2 = "prism"
		 44	[  0]	RET1 	  2		2	; return slot2
		 45	[  0]	KSTR 	  2		12	; slot2 = "normal"
		 46	[  0]	RET1 	  2		2	; return slot2
	115	[  0]	FNEW 	 59		75	; N/A:0-0: 1 args, 2 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KPRI 	  1		0	; slot1 = nil
		  4	[  0]	RET1 	  1		2	; return slot1
		  5	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  6	[  0]	TGETS	  1	1	50	; slot1 = uv0"unknown".imprint
		  7	[  0]	ISF  	   		1	; if not uv0"unknown".imprint
		  8	[  0]	JMP  	  2		3	; 	goto 12
		  9	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 10	[  0]	TGETS	  1	1	50	; slot1 = uv0"unknown".imprint
		 11	[  0]	TGETS	  1	1	49	; slot1 = uv0"unknown".imprint.definitions
		 12	[  0]	IST  	   		1	; if uv0"unknown".imprint.definitions
		 13	[  0]	JMP  	  2		2	; 	goto 16
		 14	[  0]	KPRI 	  2		0	; slot2 = nil
		 15	[  0]	RET1 	  2		2	; return slot2
		 16	[  0]	KPRI 	  2		0	; slot2 = nil
		 17	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 18	[  0]	TGETS	  5	0	48	; slot5 = slot0.grade
		 19	[  0]	CALL 	  3	2	2	; slot3 = uv1"unknown"(slot4)
		 20	[  0]	TGETS	  4	0	47	; slot4 = slot0.sym
		 21	[  0]	ISEQS	  4		46	; if <unknown table>.sym == "Joker"
		 22	[  0]	JMP  	  4		3	; 	goto 26
		 23	[  0]	TGETS	  4	0	47	; slot4 = slot0.sym
		 24	[  0]	ISNES	  4		45	; if <unknown table>.sym ~= "J"
		 25	[  0]	JMP  	  4		4	; 	goto 30
		 26	[  0]	ISNES	  3		44	; if uv1"unknown" ~= "special"
		 27	[  0]	JMP  	  4		2	; 	goto 30
		 28	[  0]	TGETS	  2	1	43	; slot2 = uv0"unknown".imprint.definitions.shrink
		 29	[  0]	JMP  	  4		127	; 	goto 157
		 30	[  0]	TGETS	  4	0	47	; slot4 = slot0.sym
		 31	[  0]	ISNES	  4		42	; if <unknown table>.sym ~= "W"
		 32	[  0]	JMP  	  4		18	; 	goto 51
		 33	[  0]	ISNES	  3		41	; if uv1"unknown" ~= "prism"
		 34	[  0]	JMP  	  4		2	; 	goto 37
		 35	[  0]	TGETS	  2	1	40	; slot2 = uv0"unknown".imprint.definitions.majesty
		 36	[  0]	JMP  	  4		120	; 	goto 157
		 37	[  0]	ISNES	  3		39	; if uv1"unknown" ~= "legendary"
		 38	[  0]	JMP  	  4		2	; 	goto 41
		 39	[  0]	TGETS	  2	1	38	; slot2 = uv0"unknown".imprint.definitions.earthquake
		 40	[  0]	JMP  	  4		116	; 	goto 157
		 41	[  0]	ISNES	  3		37	; if uv1"unknown" ~= "rare"
		 42	[  0]	JMP  	  4		2	; 	goto 45
		 43	[  0]	TGETS	  2	1	36	; slot2 = uv0"unknown".imprint.definitions.self_destruct
		 44	[  0]	JMP  	  4		112	; 	goto 157
		 45	[  0]	ISNES	  3		35	; if uv1"unknown" ~= "advanced"
		 46	[  0]	JMP  	  4		2	; 	goto 49
		 47	[  0]	TGETS	  2	1	34	; slot2 = uv0"unknown".imprint.definitions.bash
		 48	[  0]	JMP  	  4		108	; 	goto 157
		 49	[  0]	TGETS	  2	1	33	; slot2 = uv0"unknown".imprint.definitions.brace
		 50	[  0]	JMP  	  4		106	; 	goto 157
		 51	[  0]	TGETS	  4	0	47	; slot4 = slot0.sym
		 52	[  0]	ISNES	  4		32	; if <unknown table>.sym ~= "S"
		 53	[  0]	JMP  	  4		18	; 	goto 72
		 54	[  0]	ISNES	  3		41	; if uv1"unknown" ~= "prism"
		 55	[  0]	JMP  	  4		2	; 	goto 58
		 56	[  0]	TGETS	  2	1	31	; slot2 = uv0"unknown".imprint.definitions.undying_soul
		 57	[  0]	JMP  	  4		99	; 	goto 157
		 58	[  0]	ISNES	  3		39	; if uv1"unknown" ~= "legendary"
		 59	[  0]	JMP  	  4		2	; 	goto 62
		 60	[  0]	TGETS	  2	1	30	; slot2 = uv0"unknown".imprint.definitions.soul_split
		 61	[  0]	JMP  	  4		95	; 	goto 157
		 62	[  0]	ISNES	  3		37	; if uv1"unknown" ~= "rare"
		 63	[  0]	JMP  	  4		2	; 	goto 66
		 64	[  0]	TGETS	  2	1	29	; slot2 = uv0"unknown".imprint.definitions.fear
		 65	[  0]	JMP  	  4		91	; 	goto 157
		 66	[  0]	ISNES	  3		35	; if uv1"unknown" ~= "advanced"
		 67	[  0]	JMP  	  4		2	; 	goto 70
		 68	[  0]	TGETS	  2	1	28	; slot2 = uv0"unknown".imprint.definitions.knockback
		 69	[  0]	JMP  	  4		87	; 	goto 157
		 70	[  0]	TGETS	  2	1	27	; slot2 = uv0"unknown".imprint.definitions.pierce
		 71	[  0]	JMP  	  4		85	; 	goto 157
		 72	[  0]	TGETS	  4	0	47	; slot4 = slot0.sym
		 73	[  0]	ISNES	  4		26	; if <unknown table>.sym ~= "A"
		 74	[  0]	JMP  	  4		18	; 	goto 93
		 75	[  0]	ISNES	  3		41	; if uv1"unknown" ~= "prism"
		 76	[  0]	JMP  	  4		2	; 	goto 79
		 77	[  0]	TGETS	  2	1	25	; slot2 = uv0"unknown".imprint.definitions.timeless
		 78	[  0]	JMP  	  4		78	; 	goto 157
		 79	[  0]	ISNES	  3		39	; if uv1"unknown" ~= "legendary"
		 80	[  0]	JMP  	  4		2	; 	goto 83
		 81	[  0]	TGETS	  2	1	24	; slot2 = uv0"unknown".imprint.definitions.rewind
		 82	[  0]	JMP  	  4		74	; 	goto 157
		 83	[  0]	ISNES	  3		37	; if uv1"unknown" ~= "rare"
		 84	[  0]	JMP  	  4		2	; 	goto 87
		 85	[  0]	TGETS	  2	1	23	; slot2 = uv0"unknown".imprint.definitions.chain
		 86	[  0]	JMP  	  4		70	; 	goto 157
		 87	[  0]	ISNES	  3		35	; if uv1"unknown" ~= "advanced"
		 88	[  0]	JMP  	  4		2	; 	goto 91
		 89	[  0]	TGETS	  2	1	22	; slot2 = uv0"unknown".imprint.definitions.blind
		 90	[  0]	JMP  	  4		66	; 	goto 157
		 91	[  0]	TGETS	  2	1	21	; slot2 = uv0"unknown".imprint.definitions.volley
		 92	[  0]	JMP  	  4		64	; 	goto 157
		 93	[  0]	TGETS	  4	0	47	; slot4 = slot0.sym
		 94	[  0]	ISNES	  4		20	; if <unknown table>.sym ~= "M"
		 95	[  0]	JMP  	  4		18	; 	goto 114
		 96	[  0]	ISNES	  3		41	; if uv1"unknown" ~= "prism"
		 97	[  0]	JMP  	  4		2	; 	goto 100
		 98	[  0]	TGETS	  2	1	19	; slot2 = uv0"unknown".imprint.definitions.colossus_descent
		 99	[  0]	JMP  	  4		57	; 	goto 157
		100	[  0]	ISNES	  3		39	; if uv1"unknown" ~= "legendary"
		101	[  0]	JMP  	  4		2	; 	goto 104
		102	[  0]	TGETS	  2	1	18	; slot2 = uv0"unknown".imprint.definitions.meteor
		103	[  0]	JMP  	  4		53	; 	goto 157
		104	[  0]	ISNES	  3		37	; if uv1"unknown" ~= "rare"
		105	[  0]	JMP  	  4		2	; 	goto 108
		106	[  0]	TGETS	  2	1	17	; slot2 = uv0"unknown".imprint.definitions.chill
		107	[  0]	JMP  	  4		49	; 	goto 157
		108	[  0]	ISNES	  3		35	; if uv1"unknown" ~= "advanced"
		109	[  0]	JMP  	  4		2	; 	goto 112
		110	[  0]	TGETS	  2	1	16	; slot2 = uv0"unknown".imprint.definitions.poison
		111	[  0]	JMP  	  4		45	; 	goto 157
		112	[  0]	TGETS	  2	1	15	; slot2 = uv0"unknown".imprint.definitions.transfer
		113	[  0]	JMP  	  4		43	; 	goto 157
		114	[  0]	TGETS	  4	0	47	; slot4 = slot0.sym
		115	[  0]	ISNES	  4		14	; if <unknown table>.sym ~= "H"
		116	[  0]	JMP  	  4		18	; 	goto 135
		117	[  0]	ISNES	  3		41	; if uv1"unknown" ~= "prism"
		118	[  0]	JMP  	  4		2	; 	goto 121
		119	[  0]	TGETS	  2	1	13	; slot2 = uv0"unknown".imprint.definitions.ruin
		120	[  0]	JMP  	  4		36	; 	goto 157
		121	[  0]	ISNES	  3		39	; if uv1"unknown" ~= "legendary"
		122	[  0]	JMP  	  4		2	; 	goto 125
		123	[  0]	TGETS	  2	1	12	; slot2 = uv0"unknown".imprint.definitions.revival
		124	[  0]	JMP  	  4		32	; 	goto 157
		125	[  0]	ISNES	  3		37	; if uv1"unknown" ~= "rare"
		126	[  0]	JMP  	  4		2	; 	goto 129
		127	[  0]	TGETS	  2	1	11	; slot2 = uv0"unknown".imprint.definitions.enlarge
		128	[  0]	JMP  	  4		28	; 	goto 157
		129	[  0]	ISNES	  3		35	; if uv1"unknown" ~= "advanced"
		130	[  0]	JMP  	  4		2	; 	goto 133
		131	[  0]	TGETS	  2	1	10	; slot2 = uv0"unknown".imprint.definitions.block
		132	[  0]	JMP  	  4		24	; 	goto 157
		133	[  0]	TGETS	  2	1	9	; slot2 = uv0"unknown".imprint.definitions.overdrive
		134	[  0]	JMP  	  4		22	; 	goto 157
		135	[  0]	TGETS	  4	0	47	; slot4 = slot0.sym
		136	[  0]	ISNES	  4		8	; if <unknown table>.sym ~= "D"
		137	[  0]	JMP  	  4		18	; 	goto 156
		138	[  0]	ISNES	  3		41	; if uv1"unknown" ~= "prism"
		139	[  0]	JMP  	  4		2	; 	goto 142
		140	[  0]	TGETS	  2	1	7	; slot2 = uv0"unknown".imprint.definitions.overlord
		141	[  0]	JMP  	  4		15	; 	goto 157
		142	[  0]	ISNES	  3		39	; if uv1"unknown" ~= "legendary"
		143	[  0]	JMP  	  4		2	; 	goto 146
		144	[  0]	TGETS	  2	1	6	; slot2 = uv0"unknown".imprint.definitions.shadow_clone
		145	[  0]	JMP  	  4		11	; 	goto 157
		146	[  0]	ISNES	  3		37	; if uv1"unknown" ~= "rare"
		147	[  0]	JMP  	  4		2	; 	goto 150
		148	[  0]	TGETS	  2	1	5	; slot2 = uv0"unknown".imprint.definitions.execute
		149	[  0]	JMP  	  4		7	; 	goto 157
		150	[  0]	ISNES	  3		35	; if uv1"unknown" ~= "advanced"
		151	[  0]	JMP  	  4		2	; 	goto 154
		152	[  0]	TGETS	  2	1	4	; slot2 = uv0"unknown".imprint.definitions.lifesteal
		153	[  0]	JMP  	  4		3	; 	goto 157
		154	[  0]	TGETS	  2	1	3	; slot2 = uv0"unknown".imprint.definitions.relentless
		155	[  0]	JMP  	  4		1	; 	goto 157
		156	[  0]	KPRI 	  2		0	; slot2 = nil
		157	[  0]	IST  	   		2	; if slot2
		158	[  0]	JMP  	  4		2	; 	goto 161
		159	[  0]	KPRI 	  4		0	; slot4 = nil
		160	[  0]	RET1 	  4		2	; return slot4
		161	[  0]	MOV  	  4		3	; slot4 = uv1"unknown"
		162	[  0]	TGETS	  5	0	2	; slot5 = slot0.jackpot5th
		163	[  0]	ISNEP	  5		2	; if <unknown table>.jackpot5th ~= true
		164	[  0]	JMP  	  5		1	; 	goto 166
		165	[  0]	KSTR 	  4		41	; slot4 = "prism"
		166	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		167	[  0]	GGET 	  6		1	; slot6 = _env["pairs"]
		168	[  0]	MOV  	  8		2	; slot8 = slot2
		169	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = pairs(slot7)
		170	[  0]	ISNEXT	  9		1	; Verify ITERN at 172; goto 172
		171	[  0]	TSETV	 10	5	9	; slot5[slot9] = slot10
		172	[  0]	ITERN	  9	3	3	; slot9, slot10, slot11 = pairs, slot7, slot8; slot9, slot10 = pairs(slot7, slot8)
		173	[  0]	ITERL	  9		-3	; slot8 = slot9; if slot9 != nil goto 171
		174	[  0]	TSETS	  4	5	0	; slot5.rarity = slot4
		175	[  0]	RET1 	  5		2	; return slot5
	116	[  0]	TSETS	 59	0	74	; slot0.getImprintFromUnit = slot59
	117	[  0]	FNEW 	 60		73	; N/A:0-0: 1 args, 1 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		14	; slot1 = _env["require"]
		  2	[  0]	KSTR 	  3		13	; slot3 = "src.game.combat"
		  3	[  0]	CALL 	  1	2	2	; slot1 = require(slot2)
		  4	[  0]	TGETS	  1	1	12	; slot1 = slot1.soul_split
		  5	[  0]	TGETS	  1	1	11	; slot1 = <unknown table>.soul_split.migrate
		  6	[  0]	MOV  	  3		0	; slot3 = slot0
		  7	[  0]	CALL 	  1	1	2	;  = <unknown table>.soul_split.migrate(slot2)
		  8	[  0]	ISF  	   		0	; if not slot0
		  9	[  0]	JMP  	  1		3	; 	goto 13
		 10	[  0]	TGETS	  1	0	10	; slot1 = slot0.id
		 11	[  0]	IST  	   		1	; if <unknown table>.id
		 12	[  0]	JMP  	  1		1	; 	goto 14
		 13	[  0]	RET1 	  0		2	; return slot0
		 14	[  0]	TGETS	  1	0	9	; slot1 = slot0.name
		 15	[  0]	ISF  	   		1	; if not <unknown table>.name
		 16	[  0]	JMP  	  2		10	; 	goto 27
		 17	[  0]	TGETS	  1	0	8	; slot1 = slot0.desc
		 18	[  0]	ISF  	   		1	; if not <unknown table>.desc
		 19	[  0]	JMP  	  2		7	; 	goto 27
		 20	[  0]	TGETS	  1	0	7	; slot1 = slot0.shortDesc
		 21	[  0]	ISF  	   		1	; if not <unknown table>.shortDesc
		 22	[  0]	JMP  	  2		4	; 	goto 27
		 23	[  0]	TGETS	  1	0	6	; slot1 = slot0.icon
		 24	[  0]	ISF  	   		1	; if not <unknown table>.icon
		 25	[  0]	JMP  	  2		1	; 	goto 27
		 26	[  0]	RET1 	  0		2	; return slot0
		 27	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 28	[  0]	TGETS	  1	1	5	; slot1 = uv0"unknown".imprint
		 29	[  0]	ISF  	   		1	; if not uv0"unknown".imprint
		 30	[  0]	JMP  	  2		3	; 	goto 34
		 31	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 32	[  0]	TGETS	  1	1	5	; slot1 = uv0"unknown".imprint
		 33	[  0]	TGETS	  1	1	4	; slot1 = uv0"unknown".imprint.definitions
		 34	[  0]	ISFC 	  2		1	; slot2 = uv0"unknown".imprint.definitions; if not uv0"unknown".imprint.definitions
		 35	[  0]	JMP  	  2		2	; 	goto 38
		 36	[  0]	TGETS	  2	0	10	; slot2 = slot0.id
		 37	[  0]	TGETV	  2	1	2	; slot2 = uv0"unknown".imprint.definitions[<unknown table>.id]
		 38	[  0]	IST  	   		2	; if slot2
		 39	[  0]	JMP  	  3		1	; 	goto 41
		 40	[  0]	RET1 	  0		2	; return slot0
		 41	[  0]	TGETS	  3	0	9	; slot3 = slot0.name
		 42	[  0]	IST  	   		3	; if <unknown table>.name
		 43	[  0]	JMP  	  4		1	; 	goto 45
		 44	[  0]	TGETS	  3	2	9	; slot3 = slot2.name
		 45	[  0]	TSETS	  3	0	9	; slot0.name = <unknown table>.name
		 46	[  0]	TGETS	  3	0	6	; slot3 = slot0.icon
		 47	[  0]	IST  	   		3	; if <unknown table>.icon
		 48	[  0]	JMP  	  4		1	; 	goto 50
		 49	[  0]	TGETS	  3	2	6	; slot3 = slot2.icon
		 50	[  0]	TSETS	  3	0	6	; slot0.icon = <unknown table>.icon
		 51	[  0]	TGETS	  3	0	3	; slot3 = slot0.maxLevel
		 52	[  0]	IST  	   		3	; if <unknown table>.maxLevel
		 53	[  0]	JMP  	  4		4	; 	goto 58
		 54	[  0]	TGETS	  3	2	3	; slot3 = slot2.maxLevel
		 55	[  0]	IST  	   		3	; if <unknown table>.maxLevel
		 56	[  0]	JMP  	  4		1	; 	goto 58
		 57	[  0]	KSHORT	  3		5	; slot3 = 5
		 58	[  0]	TSETS	  3	0	3	; slot0.maxLevel = slot3
		 59	[  0]	GGET 	  3		2	; slot3 = _env["tonumber"]
		 60	[  0]	TGETS	  5	0	1	; slot5 = slot0.level
		 61	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		 62	[  0]	IST  	   		3	; if tonumber
		 63	[  0]	JMP  	  4		1	; 	goto 65
		 64	[  0]	KSHORT	  3		1	; slot3 = 1
		 65	[  0]	TGETS	  4	2	0	; slot4 = slot2.levels
		 66	[  0]	ISF  	   		4	; if not <unknown table>.levels
		 67	[  0]	JMP  	  5		2	; 	goto 70
		 68	[  0]	TGETS	  4	2	0	; slot4 = slot2.levels
		 69	[  0]	TGETV	  4	4	3	; slot4 = <unknown table>.levels[slot3]
		 70	[  0]	TGETS	  5	0	8	; slot5 = slot0.desc
		 71	[  0]	IST  	   		5	; if <unknown table>.desc
		 72	[  0]	JMP  	  5		7	; 	goto 80
		 73	[  0]	ISF  	   		4	; if not slot4
		 74	[  0]	JMP  	  5		3	; 	goto 78
		 75	[  0]	TGETS	  5	4	8	; slot5 = slot4.desc
		 76	[  0]	IST  	   		5	; if <unknown table>.desc
		 77	[  0]	JMP  	  6		1	; 	goto 79
		 78	[  0]	TGETS	  5	2	8	; slot5 = slot2.desc
		 79	[  0]	TSETS	  5	0	8	; slot0.desc = <unknown table>.desc
		 80	[  0]	TGETS	  5	0	7	; slot5 = slot0.shortDesc
		 81	[  0]	IST  	   		5	; if <unknown table>.shortDesc
		 82	[  0]	JMP  	  5		7	; 	goto 90
		 83	[  0]	ISF  	   		4	; if not slot4
		 84	[  0]	JMP  	  5		3	; 	goto 88
		 85	[  0]	TGETS	  5	4	7	; slot5 = slot4.shortDesc
		 86	[  0]	IST  	   		5	; if <unknown table>.shortDesc
		 87	[  0]	JMP  	  6		1	; 	goto 89
		 88	[  0]	TGETS	  5	2	7	; slot5 = slot2.shortDesc
		 89	[  0]	TSETS	  5	0	7	; slot0.shortDesc = <unknown table>.shortDesc
		 90	[  0]	TGETS	  5	0	8	; slot5 = slot0.desc
		 91	[  0]	IST  	   		5	; if <unknown table>.desc
		 92	[  0]	JMP  	  5		11	; 	goto 104
		 93	[  0]	TGETS	  5	2	0	; slot5 = slot2.levels
		 94	[  0]	ISF  	   		5	; if not <unknown table>.levels
		 95	[  0]	JMP  	  6		8	; 	goto 104
		 96	[  0]	TGETS	  5	2	0	; slot5 = slot2.levels
		 97	[  0]	TGETB	  5	5	1	; slot5 = <unknown table>.levels[1]
		 98	[  0]	ISF  	   		5	; if not slot5
		 99	[  0]	JMP  	  6		4	; 	goto 104
		100	[  0]	TGETS	  5	2	0	; slot5 = slot2.levels
		101	[  0]	TGETB	  5	5	1	; slot5 = <unknown table>.levels[1]
		102	[  0]	TGETS	  5	5	8	; slot5 = slot5.desc
		103	[  0]	TSETS	  5	0	8	; slot0.desc = <unknown table>.desc
		104	[  0]	TGETS	  5	0	7	; slot5 = slot0.shortDesc
		105	[  0]	IST  	   		5	; if <unknown table>.shortDesc
		106	[  0]	JMP  	  5		11	; 	goto 118
		107	[  0]	TGETS	  5	2	0	; slot5 = slot2.levels
		108	[  0]	ISF  	   		5	; if not <unknown table>.levels
		109	[  0]	JMP  	  6		8	; 	goto 118
		110	[  0]	TGETS	  5	2	0	; slot5 = slot2.levels
		111	[  0]	TGETB	  5	5	1	; slot5 = <unknown table>.levels[1]
		112	[  0]	ISF  	   		5	; if not slot5
		113	[  0]	JMP  	  6		4	; 	goto 118
		114	[  0]	TGETS	  5	2	0	; slot5 = slot2.levels
		115	[  0]	TGETB	  5	5	1	; slot5 = <unknown table>.levels[1]
		116	[  0]	TGETS	  5	5	7	; slot5 = slot5.shortDesc
		117	[  0]	TSETS	  5	0	7	; slot0.shortDesc = <unknown table>.shortDesc
		118	[  0]	RET1 	  0		2	; return slot0
	118	[  0]	FNEW 	 61		72	; N/A:0-0: 1 args, 0 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KPRI 	  1		0	; slot1 = nil
		  4	[  0]	RET1 	  1		2	; return slot1
		  5	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  6	[  0]	GGET 	  2		0	; slot2 = _env["pairs"]
		  7	[  0]	MOV  	  4		0	; slot4 = slot0
		  8	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = pairs(slot3)
		  9	[  0]	ISNEXT	  5		1	; Verify ITERN at 11; goto 11
		 10	[  0]	TSETV	  6	1	5	; slot1[slot5] = slot6
		 11	[  0]	ITERN	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5, slot6 = slot2(slot3, slot4)
		 12	[  0]	ITERL	  5		-3	; slot4 = slot5; if slot5 != nil goto 10
		 13	[  0]	RET1 	  1		2	; return slot1
	119	[  0]	FNEW 	 62		71	; N/A:0-0: 1 args, 0 upvalues, 25 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	17	; slot1 = slot0._bgImage
		  2	[  0]	ISNEP	  1		0	; if <unknown table>._bgImage ~= nil
		  3	[  0]	JMP  	  1		81	; 	goto 85
		  4	[  0]	KSTR 	  1		16	; slot1 = "src/sprites/background/mainbackground/Imprintbackground.png"
		  5	[  0]	GGET 	  2		15	; slot2 = _env["pcall"]
		  6	[  0]	GGET 	  4		14	; slot4 = _env["love"]
		  7	[  0]	TGETS	  4	4	13	; slot4 = love.graphics
		  8	[  0]	TGETS	  4	4	12	; slot4 = love.graphics.newImage
		  9	[  0]	MOV  	  5		1	; slot5 = slot1
		 10	[  0]	CALL 	  2	3	3	; slot2, slot3 = pcall(slot3, love.graphics.newImage)
		 11	[  0]	ISF  	   		2	; if not slot2
		 12	[  0]	JMP  	  4		70	; 	goto 83
		 13	[  0]	ISF  	   		3	; if not slot3
		 14	[  0]	JMP  	  4		68	; 	goto 83
		 15	[  0]	MOV  	  6		3	; slot6 = slot3
		 16	[  0]	TGETS	  4	3	11	; slot4 = slot3.setFilter
		 17	[  0]	KSTR 	  7		10	; slot7 = "nearest"
		 18	[  0]	KSTR 	  8		10	; slot8 = "nearest"
		 19	[  0]	CALL 	  4	1	4	;  = <unknown table>.setFilter(slot5, slot6, slot7)
		 20	[  0]	TSETS	  3	0	17	; slot0._bgImage = slot3
		 21	[  0]	GGET 	  4		15	; slot4 = _env["pcall"]
		 22	[  0]	GGET 	  6		14	; slot6 = _env["love"]
		 23	[  0]	TGETS	  6	6	9	; slot6 = love.image
		 24	[  0]	TGETS	  6	6	8	; slot6 = love.image.newImageData
		 25	[  0]	MOV  	  7		1	; slot7 = slot1
		 26	[  0]	CALL 	  4	3	3	; slot4, slot5 = pcall(slot5, love.image.newImageData)
		 27	[  0]	ISF  	   		4	; if not pcall
		 28	[  0]	JMP  	  6		56	; 	goto 85
		 29	[  0]	ISF  	   		5	; if not slot5
		 30	[  0]	JMP  	  6		54	; 	goto 85
		 31	[  0]	MOV  	  8		5	; slot8 = slot5
		 32	[  0]	TGETS	  6	5	7	; slot6 = slot5.getDimensions
		 33	[  0]	CALL 	  6	3	2	; slot6, slot7 = <unknown table>.getDimensions(slot7)
		 34	[  0]	MOV  	  8		6	; slot8 = <unknown table>.getDimensions
		 35	[  0]	MOV  	  9		7	; slot9 = slot7
		 36	[  0]	KSHORT	 10		65535	; slot10 = 65535
		 37	[  0]	KSHORT	 11		65535	; slot11 = 65535
		 38	[  0]	KSHORT	 12		0	; slot12 = 0
		 39	[  0]	SUBVN	 13	7	0	; slot13 = slot7 - 1
		 40	[  0]	KSHORT	 14		1	; slot14 = 1
		 41	[  0]	FORI 	 12		26	; for slot15 = slot12,slot13,slot14 else goto 68
		 42	[  0]	KSHORT	 16		0	; slot16 = 0
		 43	[  0]	SUBVN	 17	6	0	; slot17 = <unknown table>.getDimensions - 1
		 44	[  0]	KSHORT	 18		1	; slot18 = 1
		 45	[  0]	FORI 	 16		21	; for slot19 = slot16,slot17,slot18 else goto 67
		 46	[  0]	MOV  	 22		5	; slot22 = slot5
		 47	[  0]	TGETS	 20	5	6	; slot20 = slot5.getPixel
		 48	[  0]	MOV  	 23		19	; slot23 = slot19
		 49	[  0]	MOV  	 24		15	; slot24 = slot15
		 50	[  0]	CALL 	 20	5	4	; slot20, slot21, slot22, slot23 = <unknown table>.getPixel(slot21, slot22, slot23)
		 51	[  0]	KSHORT	 24		0	; slot24 = 0
		 52	[  0]	ISGE 	 24		23	; if slot24 >= slot23
		 53	[  0]	JMP  	 24		12	; 	goto 66
		 54	[  0]	ISGE 	 19		8	; if slot19 >= <unknown table>.getDimensions
		 55	[  0]	JMP  	 24		1	; 	goto 57
		 56	[  0]	MOV  	  8		19	; slot8 = slot19
		 57	[  0]	ISGE 	 15		9	; if slot15 >= slot9
		 58	[  0]	JMP  	 24		1	; 	goto 60
		 59	[  0]	MOV  	  9		15	; slot9 = slot15
		 60	[  0]	ISGE 	 10		19	; if slot10 >= slot19
		 61	[  0]	JMP  	 24		1	; 	goto 63
		 62	[  0]	MOV  	 10		19	; slot10 = slot19
		 63	[  0]	ISGE 	 11		15	; if slot11 >= slot15
		 64	[  0]	JMP  	 24		1	; 	goto 66
		 65	[  0]	MOV  	 11		15	; slot11 = slot15
		 66	[  0]	FORL 	 16		-21	; slot19 = slot19 + slot18; if cmp(slot19, sign slot18,  slot17) goto 46
		 67	[  0]	FORL 	 12		-26	; slot15 = slot15 + slot14; if cmp(slot15, sign slot14,  slot13) goto 42
		 68	[  0]	ISGT 	  8		10	; if slot8 > slot10
		 69	[  0]	JMP  	 12		15	; 	goto 85
		 70	[  0]	ISGT 	  9		11	; if slot9 > slot11
		 71	[  0]	JMP  	 12		13	; 	goto 85
		 72	[  0]	TDUP 	 12		4	; slot12 = copy table#k4
		 73	[  0]	TSETS	  8	12	3	; slot12.x = slot8
		 74	[  0]	TSETS	  9	12	2	; slot12.y = slot9
		 75	[  0]	SUBVV	 13	10	8	; slot13 = slot10 - slot8
		 76	[  0]	ADDVN	 13	13	0	; slot13 = slot13 + 1
		 77	[  0]	TSETS	 13	12	1	; slot12.w = slot13
		 78	[  0]	SUBVV	 13	11	9	; slot13 = slot11 - slot9
		 79	[  0]	ADDVN	 13	13	0	; slot13 = slot13 + 1
		 80	[  0]	TSETS	 13	12	0	; slot12.h = slot13
		 81	[  0]	TSETS	 12	0	5	; slot0._bgVisibleBounds = slot12
		 82	[  0]	JMP  	  4		2	; 	goto 85
		 83	[  0]	KPRI 	  4		1	; slot4 = false
		 84	[  0]	TSETS	  4	0	17	; slot0._bgImage = slot4
		 85	[  0]	TGETS	  1	0	17	; slot1 = slot0._bgImage
		 86	[  0]	IST  	   		1	; if <unknown table>._bgImage
		 87	[  0]	JMP  	  2		1	; 	goto 89
		 88	[  0]	KPRI 	  1		0	; slot1 = nil
		 89	[  0]	RET1 	  1		2	; return slot1
	120	[  0]	FNEW 	 63		70	; N/A:0-0: 2 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		1	; if slot1
		  2	[  0]	JMP  	  2		2	; 	goto 5
		  3	[  0]	KPRI 	  2		0	; slot2 = nil
		  4	[  0]	RET1 	  2		2	; return slot2
		  5	[  0]	GGET 	  2		9	; slot2 = _env["type"]
		  6	[  0]	MOV  	  4		1	; slot4 = slot1
		  7	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  8	[  0]	ISNES	  2		8	; if slot2 ~= "userdata"
		  9	[  0]	JMP  	  2		1	; 	goto 11
		 10	[  0]	RET1 	  1		2	; return slot1
		 11	[  0]	GGET 	  2		9	; slot2 = _env["type"]
		 12	[  0]	MOV  	  4		1	; slot4 = slot1
		 13	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		 14	[  0]	ISEQS	  2		7	; if slot2 == "string"
		 15	[  0]	JMP  	  2		2	; 	goto 18
		 16	[  0]	KPRI 	  2		0	; slot2 = nil
		 17	[  0]	RET1 	  2		2	; return slot2
		 18	[  0]	TGETS	  2	0	6	; slot2 = slot0._iconCache
		 19	[  0]	IST  	   		2	; if <unknown table>._iconCache
		 20	[  0]	JMP  	  2		2	; 	goto 23
		 21	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		 22	[  0]	TSETS	  2	0	6	; slot0._iconCache = slot2
		 23	[  0]	TGETS	  2	0	6	; slot2 = slot0._iconCache
		 24	[  0]	TGETV	  2	2	1	; slot2 = <unknown table>._iconCache[slot1]
		 25	[  0]	ISEQP	  2		0	; if slot2 == nil
		 26	[  0]	JMP  	  3		4	; 	goto 31
		 27	[  0]	ISTC 	  3		2	; slot3 = slot2; if slot2
		 28	[  0]	JMP  	  3		1	; 	goto 30
		 29	[  0]	KPRI 	  3		0	; slot3 = nil
		 30	[  0]	RET1 	  3		2	; return slot3
		 31	[  0]	GGET 	  3		5	; slot3 = _env["pcall"]
		 32	[  0]	GGET 	  5		4	; slot5 = _env["love"]
		 33	[  0]	TGETS	  5	5	3	; slot5 = love.graphics
		 34	[  0]	TGETS	  5	5	2	; slot5 = love.graphics.newImage
		 35	[  0]	MOV  	  6		1	; slot6 = slot1
		 36	[  0]	CALL 	  3	3	3	; slot3, slot4 = pcall(slot4, love.graphics.newImage)
		 37	[  0]	ISF  	   		3	; if not slot3
		 38	[  0]	JMP  	  5		10	; 	goto 49
		 39	[  0]	ISF  	   		4	; if not slot4
		 40	[  0]	JMP  	  5		8	; 	goto 49
		 41	[  0]	MOV  	  7		4	; slot7 = slot4
		 42	[  0]	TGETS	  5	4	1	; slot5 = slot4.setFilter
		 43	[  0]	KSTR 	  8		0	; slot8 = "nearest"
		 44	[  0]	KSTR 	  9		0	; slot9 = "nearest"
		 45	[  0]	CALL 	  5	1	4	;  = <unknown table>.setFilter(slot6, slot7, slot8)
		 46	[  0]	TGETS	  5	0	6	; slot5 = slot0._iconCache
		 47	[  0]	TSETV	  4	5	1	; <unknown table>._iconCache[slot1] = slot4
		 48	[  0]	RET1 	  4		2	; return slot4
		 49	[  0]	TGETS	  5	0	6	; slot5 = slot0._iconCache
		 50	[  0]	KPRI 	  6		1	; slot6 = false
		 51	[  0]	TSETV	  6	5	1	; <unknown table>._iconCache[slot1] = slot6
		 52	[  0]	KPRI 	  5		0	; slot5 = nil
		 53	[  0]	RET1 	  5		2	; return slot5
	121	[  0]	FNEW 	 64		69	; N/A:0-0: 2 args, 0 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		1	; if slot1
		  2	[  0]	JMP  	  2		2	; 	goto 5
		  3	[  0]	KPRI 	  2		0	; slot2 = nil
		  4	[  0]	RET1 	  2		2	; return slot2
		  5	[  0]	GGET 	  2		6	; slot2 = _env["type"]
		  6	[  0]	MOV  	  4		1	; slot4 = slot1
		  7	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  8	[  0]	ISEQS	  2		5	; if slot2 == "string"
		  9	[  0]	JMP  	  2		2	; 	goto 12
		 10	[  0]	KPRI 	  2		0	; slot2 = nil
		 11	[  0]	RET1 	  2		2	; return slot2
		 12	[  0]	TGETS	  2	0	4	; slot2 = slot0._iconDataCache
		 13	[  0]	IST  	   		2	; if <unknown table>._iconDataCache
		 14	[  0]	JMP  	  2		2	; 	goto 17
		 15	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		 16	[  0]	TSETS	  2	0	4	; slot0._iconDataCache = slot2
		 17	[  0]	TGETS	  2	0	4	; slot2 = slot0._iconDataCache
		 18	[  0]	TGETV	  2	2	1	; slot2 = <unknown table>._iconDataCache[slot1]
		 19	[  0]	ISEQP	  2		0	; if slot2 == nil
		 20	[  0]	JMP  	  3		4	; 	goto 25
		 21	[  0]	ISTC 	  3		2	; slot3 = slot2; if slot2
		 22	[  0]	JMP  	  3		1	; 	goto 24
		 23	[  0]	KPRI 	  3		0	; slot3 = nil
		 24	[  0]	RET1 	  3		2	; return slot3
		 25	[  0]	GGET 	  3		3	; slot3 = _env["pcall"]
		 26	[  0]	GGET 	  5		2	; slot5 = _env["love"]
		 27	[  0]	TGETS	  5	5	1	; slot5 = love.image
		 28	[  0]	TGETS	  5	5	0	; slot5 = love.image.newImageData
		 29	[  0]	MOV  	  6		1	; slot6 = slot1
		 30	[  0]	CALL 	  3	3	3	; slot3, slot4 = pcall(slot4, love.image.newImageData)
		 31	[  0]	ISF  	   		3	; if not slot3
		 32	[  0]	JMP  	  5		5	; 	goto 38
		 33	[  0]	ISF  	   		4	; if not slot4
		 34	[  0]	JMP  	  5		3	; 	goto 38
		 35	[  0]	TGETS	  5	0	4	; slot5 = slot0._iconDataCache
		 36	[  0]	TSETV	  4	5	1	; <unknown table>._iconDataCache[slot1] = slot4
		 37	[  0]	RET1 	  4		2	; return slot4
		 38	[  0]	TGETS	  5	0	4	; slot5 = slot0._iconDataCache
		 39	[  0]	KPRI 	  6		1	; slot6 = false
		 40	[  0]	TSETV	  6	5	1	; <unknown table>._iconDataCache[slot1] = slot6
		 41	[  0]	KPRI 	  5		0	; slot5 = nil
		 42	[  0]	RET1 	  5		2	; return slot5
	122	[  0]	FNEW 	 65		68	; N/A:0-0: 2 args, 0 upvalues, 23 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		1	; if not slot1
		  2	[  0]	JMP  	  2		5	; 	goto 8
		  3	[  0]	GGET 	  2		13	; slot2 = _env["type"]
		  4	[  0]	MOV  	  4		1	; slot4 = slot1
		  5	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  6	[  0]	ISEQS	  2		12	; if slot2 == "string"
		  7	[  0]	JMP  	  2		2	; 	goto 10
		  8	[  0]	KPRI 	  2		0	; slot2 = nil
		  9	[  0]	RET1 	  2		2	; return slot2
		 10	[  0]	TGETS	  2	0	11	; slot2 = slot0._iconBounds
		 11	[  0]	IST  	   		2	; if <unknown table>._iconBounds
		 12	[  0]	JMP  	  2		2	; 	goto 15
		 13	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		 14	[  0]	TSETS	  2	0	11	; slot0._iconBounds = slot2
		 15	[  0]	TGETS	  2	0	11	; slot2 = slot0._iconBounds
		 16	[  0]	TGETV	  2	2	1	; slot2 = <unknown table>._iconBounds[slot1]
		 17	[  0]	ISEQP	  2		0	; if slot2 == nil
		 18	[  0]	JMP  	  2		6	; 	goto 25
		 19	[  0]	TGETS	  2	0	11	; slot2 = slot0._iconBounds
		 20	[  0]	TGETV	  2	2	1	; slot2 = <unknown table>._iconBounds[slot1]
		 21	[  0]	IST  	   		2	; if slot2
		 22	[  0]	JMP  	  3		1	; 	goto 24
		 23	[  0]	KPRI 	  2		0	; slot2 = nil
		 24	[  0]	RET1 	  2		2	; return slot2
		 25	[  0]	GGET 	  2		10	; slot2 = _env["love"]
		 26	[  0]	ISF  	   		2	; if not love
		 27	[  0]	JMP  	  3		9	; 	goto 37
		 28	[  0]	GGET 	  2		10	; slot2 = _env["love"]
		 29	[  0]	TGETS	  2	2	9	; slot2 = love.image
		 30	[  0]	ISF  	   		2	; if not love.image
		 31	[  0]	JMP  	  3		5	; 	goto 37
		 32	[  0]	GGET 	  2		10	; slot2 = _env["love"]
		 33	[  0]	TGETS	  2	2	9	; slot2 = love.image
		 34	[  0]	TGETS	  2	2	8	; slot2 = love.image.newImageData
		 35	[  0]	IST  	   		2	; if love.image.newImageData
		 36	[  0]	JMP  	  2		5	; 	goto 42
		 37	[  0]	TGETS	  2	0	11	; slot2 = slot0._iconBounds
		 38	[  0]	KPRI 	  3		1	; slot3 = false
		 39	[  0]	TSETV	  3	2	1	; <unknown table>._iconBounds[slot1] = slot3
		 40	[  0]	KPRI 	  2		0	; slot2 = nil
		 41	[  0]	RET1 	  2		2	; return slot2
		 42	[  0]	GGET 	  2		7	; slot2 = _env["pcall"]
		 43	[  0]	GGET 	  4		10	; slot4 = _env["love"]
		 44	[  0]	TGETS	  4	4	9	; slot4 = love.image
		 45	[  0]	TGETS	  4	4	8	; slot4 = love.image.newImageData
		 46	[  0]	MOV  	  5		1	; slot5 = slot1
		 47	[  0]	CALL 	  2	3	3	; slot2, slot3 = pcall(slot3, love.image.newImageData)
		 48	[  0]	ISF  	   		2	; if not slot2
		 49	[  0]	JMP  	  4		2	; 	goto 52
		 50	[  0]	IST  	   		3	; if slot3
		 51	[  0]	JMP  	  4		5	; 	goto 57
		 52	[  0]	TGETS	  4	0	11	; slot4 = slot0._iconBounds
		 53	[  0]	KPRI 	  5		1	; slot5 = false
		 54	[  0]	TSETV	  5	4	1	; <unknown table>._iconBounds[slot1] = slot5
		 55	[  0]	KPRI 	  4		0	; slot4 = nil
		 56	[  0]	RET1 	  4		2	; return slot4
		 57	[  0]	MOV  	  6		3	; slot6 = slot3
		 58	[  0]	TGETS	  4	3	6	; slot4 = slot3.getDimensions
		 59	[  0]	CALL 	  4	3	2	; slot4, slot5 = <unknown table>.getDimensions(slot5)
		 60	[  0]	MOV  	  6		4	; slot6 = <unknown table>.getDimensions
		 61	[  0]	MOV  	  7		5	; slot7 = slot5
		 62	[  0]	KSHORT	  8		65535	; slot8 = 65535
		 63	[  0]	KSHORT	  9		65535	; slot9 = 65535
		 64	[  0]	KSHORT	 10		0	; slot10 = 0
		 65	[  0]	SUBVN	 11	5	0	; slot11 = slot5 - 1
		 66	[  0]	KSHORT	 12		1	; slot12 = 1
		 67	[  0]	FORI 	 10		28	; for slot13 = slot10,slot11,slot12 else goto 96
		 68	[  0]	KSHORT	 14		0	; slot14 = 0
		 69	[  0]	SUBVN	 15	4	0	; slot15 = <unknown table>.getDimensions - 1
		 70	[  0]	KSHORT	 16		1	; slot16 = 1
		 71	[  0]	FORI 	 14		23	; for slot17 = slot14,slot15,slot16 else goto 95
		 72	[  0]	MOV  	 20		3	; slot20 = slot3
		 73	[  0]	TGETS	 18	3	5	; slot18 = slot3.getPixel
		 74	[  0]	MOV  	 21		17	; slot21 = slot17
		 75	[  0]	MOV  	 22		13	; slot22 = slot13
		 76	[  0]	CALL 	 18	5	4	; slot18, slot19, slot20, slot21 = <unknown table>.getPixel(slot19, slot20, slot21)
		 77	[  0]	ISF  	   		21	; if not slot21
		 78	[  0]	JMP  	 22		15	; 	goto 94
		 79	[  0]	KNUM 	 22		1	; slot22 = 0.05
		 80	[  0]	ISGE 	 22		21	; if slot22 >= slot21
		 81	[  0]	JMP  	 22		12	; 	goto 94
		 82	[  0]	ISGE 	 17		6	; if slot17 >= <unknown table>.getDimensions
		 83	[  0]	JMP  	 22		1	; 	goto 85
		 84	[  0]	MOV  	  6		17	; slot6 = slot17
		 85	[  0]	ISGE 	 13		7	; if slot13 >= slot7
		 86	[  0]	JMP  	 22		1	; 	goto 88
		 87	[  0]	MOV  	  7		13	; slot7 = slot13
		 88	[  0]	ISGE 	  8		17	; if slot8 >= slot17
		 89	[  0]	JMP  	 22		1	; 	goto 91
		 90	[  0]	MOV  	  8		17	; slot8 = slot17
		 91	[  0]	ISGE 	  9		13	; if slot9 >= slot13
		 92	[  0]	JMP  	 22		1	; 	goto 94
		 93	[  0]	MOV  	  9		13	; slot9 = slot13
		 94	[  0]	FORL 	 14		-23	; slot17 = slot17 + slot16; if cmp(slot17, sign slot16,  slot15) goto 72
		 95	[  0]	FORL 	 10		-28	; slot13 = slot13 + slot12; if cmp(slot13, sign slot12,  slot11) goto 68
		 96	[  0]	ISGT 	  6		8	; if slot6 > slot8
		 97	[  0]	JMP  	 10		10	; 	goto 108
		 98	[  0]	ISGT 	  7		9	; if slot7 > slot9
		 99	[  0]	JMP  	 10		8	; 	goto 108
		100	[  0]	TGETS	 10	0	11	; slot10 = slot0._iconBounds
		101	[  0]	TDUP 	 11		4	; slot11 = copy table#k4
		102	[  0]	TSETS	  6	11	3	; slot11.minX = slot6
		103	[  0]	TSETS	  7	11	2	; slot11.minY = slot7
		104	[  0]	TSETS	  8	11	1	; slot11.maxX = slot8
		105	[  0]	TSETS	  9	11	0	; slot11.maxY = slot9
		106	[  0]	TSETV	 11	10	1	; <unknown table>._iconBounds[slot1] = slot11
		107	[  0]	JMP  	 10		3	; 	goto 111
		108	[  0]	TGETS	 10	0	11	; slot10 = slot0._iconBounds
		109	[  0]	KPRI 	 11		1	; slot11 = false
		110	[  0]	TSETV	 11	10	1	; <unknown table>._iconBounds[slot1] = slot11
		111	[  0]	TGETS	 10	0	11	; slot10 = slot0._iconBounds
		112	[  0]	TGETV	 10	10	1	; slot10 = <unknown table>._iconBounds[slot1]
		113	[  0]	IST  	   		10	; if slot10
		114	[  0]	JMP  	 11		1	; 	goto 116
		115	[  0]	KPRI 	 10		0	; slot10 = nil
		116	[  0]	RET1 	 10		2	; return slot10
	123	[  0]	FNEW 	 66		66	; N/A:0-0: 2 args, 0 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		1	; if slot1
		  2	[  0]	JMP  	  2		2	; 	goto 5
		  3	[  0]	KPRI 	  2		0	; slot2 = nil
		  4	[  0]	RET1 	  2		2	; return slot2
		  5	[  0]	TGETS	  2	0	76	; slot2 = slot0._shortIconCache
		  6	[  0]	IST  	   		2	; if <unknown table>._shortIconCache
		  7	[  0]	JMP  	  2		2	; 	goto 10
		  8	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		  9	[  0]	TSETS	  2	0	76	; slot0._shortIconCache = slot2
		 10	[  0]	TGETS	  2	0	76	; slot2 = slot0._shortIconCache
		 11	[  0]	TGETV	  2	2	1	; slot2 = <unknown table>._shortIconCache[slot1]
		 12	[  0]	ISEQP	  2		0	; if slot2 == nil
		 13	[  0]	JMP  	  3		4	; 	goto 18
		 14	[  0]	ISTC 	  3		2	; slot3 = slot2; if slot2
		 15	[  0]	JMP  	  3		1	; 	goto 17
		 16	[  0]	KPRI 	  3		0	; slot3 = nil
		 17	[  0]	RET1 	  3		2	; return slot3
		 18	[  0]	KPRI 	  3		0	; slot3 = nil
		 19	[  0]	ISNES	  1		75	; if slot1 ~= "fortify"
		 20	[  0]	JMP  	  4		2	; 	goto 23
		 21	[  0]	KSTR 	  3		74	; slot3 = "src/sprites/icons/imprinticons/shortsicons/shield.png"
		 22	[  0]	JMP  	  4		139	; 	goto 162
		 23	[  0]	ISNES	  1		73	; if slot1 ~= "pierce"
		 24	[  0]	JMP  	  4		2	; 	goto 27
		 25	[  0]	KSTR 	  3		72	; slot3 = "src/sprites/icons/imprinticons/shortsicons/multihit.png"
		 26	[  0]	JMP  	  4		135	; 	goto 162
		 27	[  0]	ISNES	  1		71	; if slot1 ~= "volley"
		 28	[  0]	JMP  	  4		2	; 	goto 31
		 29	[  0]	KSTR 	  3		70	; slot3 = "src/sprites/icons/imprinticons/shortsicons/swordplus.png"
		 30	[  0]	JMP  	  4		131	; 	goto 162
		 31	[  0]	ISNES	  1		69	; if slot1 ~= "brace"
		 32	[  0]	JMP  	  4		2	; 	goto 35
		 33	[  0]	KSTR 	  3		68	; slot3 = "src/sprites/icons/imprinticons/shortsicons/swordupgrade.png"
		 34	[  0]	JMP  	  4		127	; 	goto 162
		 35	[  0]	ISNES	  1		67	; if slot1 ~= "relentless"
		 36	[  0]	JMP  	  4		2	; 	goto 39
		 37	[  0]	KSTR 	  3		66	; slot3 = "src/sprites/icons/imprinticons/shortsicons/mad.png"
		 38	[  0]	JMP  	  4		123	; 	goto 162
		 39	[  0]	ISNES	  1		65	; if slot1 ~= "transfer"
		 40	[  0]	JMP  	  4		2	; 	goto 43
		 41	[  0]	KSTR 	  3		64	; slot3 = "src/sprites/icons/imprinticons/shortsicons/diffusion.png"
		 42	[  0]	JMP  	  4		119	; 	goto 162
		 43	[  0]	ISNES	  1		63	; if slot1 ~= "overdrive"
		 44	[  0]	JMP  	  4		2	; 	goto 47
		 45	[  0]	KSTR 	  3		62	; slot3 = "src/sprites/icons/imprinticons/shortsicons/hit.png"
		 46	[  0]	JMP  	  4		115	; 	goto 162
		 47	[  0]	ISNES	  1		61	; if slot1 ~= "bash"
		 48	[  0]	JMP  	  4		2	; 	goto 51
		 49	[  0]	KSTR 	  3		60	; slot3 = "src/sprites/icons/imprinticons/shortsicons/dizzy.png"
		 50	[  0]	JMP  	  4		111	; 	goto 162
		 51	[  0]	ISNES	  1		59	; if slot1 ~= "knockback"
		 52	[  0]	JMP  	  4		2	; 	goto 55
		 53	[  0]	KSTR 	  3		58	; slot3 = "src/sprites/icons/imprinticons/shortsicons/fist.png"
		 54	[  0]	JMP  	  4		107	; 	goto 162
		 55	[  0]	ISNES	  1		57	; if slot1 ~= "blind"
		 56	[  0]	JMP  	  4		2	; 	goto 59
		 57	[  0]	KSTR 	  3		56	; slot3 = "src/sprites/icons/imprinticons/shortsicons/blindx.png"
		 58	[  0]	JMP  	  4		103	; 	goto 162
		 59	[  0]	ISNES	  1		55	; if slot1 ~= "noskill"
		 60	[  0]	JMP  	  4		2	; 	goto 63
		 61	[  0]	KSTR 	  3		54	; slot3 = "src/sprites/icons/imprinticons/shortsicons/noskill.png"
		 62	[  0]	JMP  	  4		99	; 	goto 162
		 63	[  0]	ISNES	  1		53	; if slot1 ~= "poison"
		 64	[  0]	JMP  	  4		2	; 	goto 67
		 65	[  0]	KSTR 	  3		52	; slot3 = "src/sprites/icons/imprinticons/shortsicons/poison.png"
		 66	[  0]	JMP  	  4		95	; 	goto 162
		 67	[  0]	ISNES	  1		51	; if slot1 ~= "block"
		 68	[  0]	JMP  	  4		2	; 	goto 71
		 69	[  0]	KSTR 	  3		50	; slot3 = "src/sprites/icons/imprinticons/shortsicons/blockshield.png"
		 70	[  0]	JMP  	  4		91	; 	goto 162
		 71	[  0]	ISNES	  1		49	; if slot1 ~= "lifesteal"
		 72	[  0]	JMP  	  4		2	; 	goto 75
		 73	[  0]	KSTR 	  3		48	; slot3 = "src/sprites/icons/imprinticons/shortsicons/teeth.png"
		 74	[  0]	JMP  	  4		87	; 	goto 162
		 75	[  0]	ISNES	  1		47	; if slot1 ~= "self_destruct"
		 76	[  0]	JMP  	  4		2	; 	goto 79
		 77	[  0]	KSTR 	  3		46	; slot3 = "src/sprites/icons/imprinticons/shortsicons/explosion.png"
		 78	[  0]	JMP  	  4		83	; 	goto 162
		 79	[  0]	ISNES	  1		45	; if slot1 ~= "earthquake"
		 80	[  0]	JMP  	  4		2	; 	goto 83
		 81	[  0]	KSTR 	  3		44	; slot3 = "src/sprites/icons/imprinticons/shortsicons/earthquake.png"
		 82	[  0]	JMP  	  4		79	; 	goto 162
		 83	[  0]	ISNES	  1		43	; if slot1 ~= "fear"
		 84	[  0]	JMP  	  4		2	; 	goto 87
		 85	[  0]	KSTR 	  3		42	; slot3 = "src/sprites/icons/imprinticons/shortsicons/fireskeleton.png"
		 86	[  0]	JMP  	  4		75	; 	goto 162
		 87	[  0]	ISNES	  1		41	; if slot1 ~= "chain"
		 88	[  0]	JMP  	  4		2	; 	goto 91
		 89	[  0]	KSTR 	  3		72	; slot3 = "src/sprites/icons/imprinticons/shortsicons/multihit.png"
		 90	[  0]	JMP  	  4		71	; 	goto 162
		 91	[  0]	ISNES	  1		40	; if slot1 ~= "chill"
		 92	[  0]	JMP  	  4		2	; 	goto 95
		 93	[  0]	KSTR 	  3		39	; slot3 = "src/sprites/icons/imprinticons/shortsicons/ice.png"
		 94	[  0]	JMP  	  4		67	; 	goto 162
		 95	[  0]	ISNES	  1		38	; if slot1 ~= "shrink"
		 96	[  0]	JMP  	  4		2	; 	goto 99
		 97	[  0]	KSTR 	  3		37	; slot3 = "src/sprites/icons/imprinticons/shortsicons/shrink.png"
		 98	[  0]	JMP  	  4		63	; 	goto 162
		 99	[  0]	ISNES	  1		36	; if slot1 ~= "enlarge"
		100	[  0]	JMP  	  4		2	; 	goto 103
		101	[  0]	KSTR 	  3		35	; slot3 = "src/sprites/icons/imprinticons/shortsicons/enlarge.png"
		102	[  0]	JMP  	  4		59	; 	goto 162
		103	[  0]	ISNES	  1		34	; if slot1 ~= "execute"
		104	[  0]	JMP  	  4		2	; 	goto 107
		105	[  0]	KSTR 	  3		33	; slot3 = "src/sprites/icons/imprinticons/shortsicons/execute.png"
		106	[  0]	JMP  	  4		55	; 	goto 162
		107	[  0]	ISNES	  1		32	; if slot1 ~= "annihilation"
		108	[  0]	JMP  	  4		2	; 	goto 111
		109	[  0]	KSTR 	  3		31	; slot3 = "src/sprites/icons/imprinticons/shortsicons/fire.png"
		110	[  0]	JMP  	  4		51	; 	goto 162
		111	[  0]	ISNES	  1		30	; if slot1 ~= "meteor"
		112	[  0]	JMP  	  4		2	; 	goto 115
		113	[  0]	KSTR 	  3		29	; slot3 = "src/sprites/icons/imprinticons/shortsicons/meteor.png"
		114	[  0]	JMP  	  4		47	; 	goto 162
		115	[  0]	ISNES	  1		28	; if slot1 ~= "shadow_clone"
		116	[  0]	JMP  	  4		2	; 	goto 119
		117	[  0]	KSTR 	  3		27	; slot3 = "src/sprites/icons/imprinticons/shortsicons/shadowclone.png"
		118	[  0]	JMP  	  4		43	; 	goto 162
		119	[  0]	ISNES	  1		26	; if slot1 ~= "soul_split"
		120	[  0]	JMP  	  4		2	; 	goto 123
		121	[  0]	KSTR 	  3		25	; slot3 = "src/sprites/icons/imprinticons/shortsicons/soul.png"
		122	[  0]	JMP  	  4		39	; 	goto 162
		123	[  0]	ISNES	  1		24	; if slot1 ~= "revival"
		124	[  0]	JMP  	  4		2	; 	goto 127
		125	[  0]	KSTR 	  3		23	; slot3 = "src/sprites/icons/imprinticons/shortsicons/cross.png"
		126	[  0]	JMP  	  4		35	; 	goto 162
		127	[  0]	ISNES	  1		22	; if slot1 ~= "majesty"
		128	[  0]	JMP  	  4		2	; 	goto 131
		129	[  0]	KSTR 	  3		21	; slot3 = "src/sprites/icons/imprinticons/shortsicons/angry.png"
		130	[  0]	JMP  	  4		31	; 	goto 162
		131	[  0]	ISNES	  1		20	; if slot1 ~= "ruin"
		132	[  0]	JMP  	  4		2	; 	goto 135
		133	[  0]	KSTR 	  3		19	; slot3 = "src/sprites/icons/imprinticons/shortsicons/eye.png"
		134	[  0]	JMP  	  4		27	; 	goto 162
		135	[  0]	ISNES	  1		18	; if slot1 ~= "colossus_descent"
		136	[  0]	JMP  	  4		2	; 	goto 139
		137	[  0]	KSTR 	  3		17	; slot3 = "src/sprites/icons/imprinticons/shortsicons/golem.png"
		138	[  0]	JMP  	  4		23	; 	goto 162
		139	[  0]	ISNES	  1		16	; if slot1 ~= "overlord"
		140	[  0]	JMP  	  4		2	; 	goto 143
		141	[  0]	KSTR 	  3		15	; slot3 = "src/sprites/icons/imprinticons/shortsicons/fear.png"
		142	[  0]	JMP  	  4		19	; 	goto 162
		143	[  0]	ISNES	  1		14	; if slot1 ~= "undying_soul"
		144	[  0]	JMP  	  4		2	; 	goto 147
		145	[  0]	KSTR 	  3		13	; slot3 = "src/sprites/icons/imprinticons/shortsicons/holy.png"
		146	[  0]	JMP  	  4		15	; 	goto 162
		147	[  0]	ISNES	  1		12	; if slot1 ~= "timeless"
		148	[  0]	JMP  	  4		2	; 	goto 151
		149	[  0]	KSTR 	  3		11	; slot3 = "src/sprites/icons/imprinticons/shortsicons/hourglass.png"
		150	[  0]	JMP  	  4		11	; 	goto 162
		151	[  0]	ISNES	  1		10	; if slot1 ~= "rewind"
		152	[  0]	JMP  	  4		2	; 	goto 155
		153	[  0]	KSTR 	  3		11	; slot3 = "src/sprites/icons/imprinticons/shortsicons/hourglass.png"
		154	[  0]	JMP  	  4		7	; 	goto 162
		155	[  0]	ISNES	  1		9	; if slot1 ~= "amplify"
		156	[  0]	JMP  	  4		2	; 	goto 159
		157	[  0]	KSTR 	  3		8	; slot3 = "src/sprites/icons/imprinticons/shortsicons/skillsizeupgrade.png"
		158	[  0]	JMP  	  4		3	; 	goto 162
		159	[  0]	ISNES	  1		7	; if slot1 ~= "starlight_theft"
		160	[  0]	JMP  	  4		1	; 	goto 162
		161	[  0]	KSTR 	  3		6	; slot3 = "src/sprites/icons/imprinticons/shortsicons/stardebuff.png"
		162	[  0]	ISF  	   		3	; if not slot3
		163	[  0]	JMP  	  4		18	; 	goto 182
		164	[  0]	GGET 	  4		5	; slot4 = _env["pcall"]
		165	[  0]	GGET 	  6		4	; slot6 = _env["love"]
		166	[  0]	TGETS	  6	6	3	; slot6 = love.graphics
		167	[  0]	TGETS	  6	6	2	; slot6 = love.graphics.newImage
		168	[  0]	MOV  	  7		3	; slot7 = slot3
		169	[  0]	CALL 	  4	3	3	; slot4, slot5 = pcall(slot5, love.graphics.newImage)
		170	[  0]	ISF  	   		4	; if not pcall
		171	[  0]	JMP  	  6		10	; 	goto 182
		172	[  0]	ISF  	   		5	; if not slot5
		173	[  0]	JMP  	  6		8	; 	goto 182
		174	[  0]	MOV  	  8		5	; slot8 = slot5
		175	[  0]	TGETS	  6	5	1	; slot6 = slot5.setFilter
		176	[  0]	KSTR 	  9		0	; slot9 = "nearest"
		177	[  0]	KSTR 	 10		0	; slot10 = "nearest"
		178	[  0]	CALL 	  6	1	4	;  = <unknown table>.setFilter(slot7, slot8, slot9)
		179	[  0]	TGETS	  6	0	76	; slot6 = slot0._shortIconCache
		180	[  0]	TSETV	  5	6	1	; <unknown table>._shortIconCache[slot1] = slot5
		181	[  0]	RET1 	  5		2	; return slot5
		182	[  0]	TGETS	  4	0	76	; slot4 = slot0._shortIconCache
		183	[  0]	KPRI 	  5		1	; slot5 = false
		184	[  0]	TSETV	  5	4	1	; <unknown table>._shortIconCache[slot1] = slot5
		185	[  0]	KPRI 	  4		0	; slot4 = nil
		186	[  0]	RET1 	  4		2	; return slot4
	124	[  0]	TSETS	 66	0	67	; slot0.getShortIconImage = slot66
	125	[  0]	FNEW 	 66		65	; N/A:0-0: 6 args, 1 upvalues, 23 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  6		10	; slot6 = _env["love"]
		  2	[  0]	TGETS	  6	6	9	; slot6 = love.graphics
		  3	[  0]	TGETS	  6	6	8	; slot6 = love.graphics.setColor
		  4	[  0]	KSHORT	  8		0	; slot8 = 0
		  5	[  0]	KSHORT	  9		0	; slot9 = 0
		  6	[  0]	KSHORT	 10		0	; slot10 = 0
		  7	[  0]	ISTC 	 11		5	; slot11 = slot5; if slot5
		  8	[  0]	JMP  	 11		1	; 	goto 10
		  9	[  0]	KSHORT	 11		1	; slot11 = 1
		 10	[  0]	MULNV	 11	11	0	; slot11 = 0.5 * slot11
		 11	[  0]	CALL 	  6	1	5	;  = love.graphics.setColor(slot7, slot8, slot9, slot10)
		 12	[  0]	GGET 	  6		10	; slot6 = _env["love"]
		 13	[  0]	TGETS	  6	6	9	; slot6 = love.graphics
		 14	[  0]	TGETS	  6	6	7	; slot6 = love.graphics.rectangle
		 15	[  0]	KSTR 	  8		6	; slot8 = "fill"
		 16	[  0]	MOV  	  9		2	; slot9 = slot2
		 17	[  0]	MOV  	 10		3	; slot10 = slot3
		 18	[  0]	MOV  	 11		4	; slot11 = slot4
		 19	[  0]	MOV  	 12		4	; slot12 = slot4
		 20	[  0]	CALL 	  6	1	6	;  = love.graphics.rectangle(slot7, slot8, slot9, slot10, slot11)
		 21	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 22	[  0]	MOV  	  8		0	; slot8 = slot0
		 23	[  0]	MOV  	  9		1	; slot9 = slot1
		 24	[  0]	CALL 	  6	2	3	; slot6 = uv0"unknown"(slot7, slot8)
		 25	[  0]	IST  	   		6	; if uv0"unknown"
		 26	[  0]	JMP  	  7		1	; 	goto 28
		 27	[  0]	RET0 	  0		1	; return
		 28	[  0]	GGET 	  7		10	; slot7 = _env["love"]
		 29	[  0]	TGETS	  7	7	9	; slot7 = love.graphics
		 30	[  0]	TGETS	  7	7	8	; slot7 = love.graphics.setColor
		 31	[  0]	KSHORT	  9		1	; slot9 = 1
		 32	[  0]	KSHORT	 10		1	; slot10 = 1
		 33	[  0]	KSHORT	 11		1	; slot11 = 1
		 34	[  0]	ISTC 	 12		5	; slot12 = slot5; if slot5
		 35	[  0]	JMP  	 12		1	; 	goto 37
		 36	[  0]	KSHORT	 12		1	; slot12 = 1
		 37	[  0]	MULNV	 12	12	1	; slot12 = 1 * slot12
		 38	[  0]	CALL 	  7	1	5	;  = love.graphics.setColor(slot8, slot9, slot10, slot11)
		 39	[  0]	MOV  	  9		6	; slot9 = uv0"unknown"
		 40	[  0]	TGETS	  7	6	5	; slot7 = uv0"unknown".getDimensions
		 41	[  0]	CALL 	  7	3	2	; slot7, slot8 = uv0"unknown".getDimensions(slot8)
		 42	[  0]	KSHORT	  9		0	; slot9 = 0
		 43	[  0]	ISLE 	  7		9	; if uv0"unknown".getDimensions <= slot9
		 44	[  0]	JMP  	  9		3	; 	goto 48
		 45	[  0]	KSHORT	  9		0	; slot9 = 0
		 46	[  0]	ISGT 	  8		9	; if slot8 > slot9
		 47	[  0]	JMP  	  9		1	; 	goto 49
		 48	[  0]	RET0 	  0		1	; return
		 49	[  0]	GGET 	  9		4	; slot9 = _env["math"]
		 50	[  0]	TGETS	  9	9	3	; slot9 = math.min
		 51	[  0]	DIVVV	 11	4	7	; slot11 = slot4 / uv0"unknown".getDimensions
		 52	[  0]	DIVVV	 12	4	8	; slot12 = slot4 / slot8
		 53	[  0]	CALL 	  9	2	3	; slot9 = math.min(slot10, slot11)
		 54	[  0]	KPRI 	 10		0	; slot10 = nil
		 55	[  0]	KSHORT	 11		1	; slot11 = 1
		 56	[  0]	ISGT 	 11		9	; if slot11 > math.min
		 57	[  0]	JMP  	 11		10	; 	goto 68
		 58	[  0]	GGET 	 11		4	; slot11 = _env["math"]
		 59	[  0]	TGETS	 11	11	2	; slot11 = math.max
		 60	[  0]	KSHORT	 13		1	; slot13 = 1
		 61	[  0]	GGET 	 14		4	; slot14 = _env["math"]
		 62	[  0]	TGETS	 14	14	1	; slot14 = math.floor
		 63	[  0]	MOV  	 16		9	; slot16 = math.min
		 64	[  0]	CALL 	 14	0	2	; MULTRES = math.floor(slot15)
		 65	[  0]	CALLM	 11	2	1	; slot11 = math.max(slot12, ...MULTRES)
		 66	[  0]	MOV  	 10		11	; slot10 = math.max
		 67	[  0]	JMP  	 11		1	; 	goto 69
		 68	[  0]	MOV  	 10		9	; slot10 = math.min
		 69	[  0]	MULVV	 11	7	10	; slot11 = uv0"unknown".getDimensions * math.min
		 70	[  0]	MULVV	 12	8	10	; slot12 = slot8 * math.min
		 71	[  0]	GGET 	 13		4	; slot13 = _env["math"]
		 72	[  0]	TGETS	 13	13	1	; slot13 = math.floor
		 73	[  0]	SUBVV	 15	4	11	; slot15 = slot4 - slot11
		 74	[  0]	MULVN	 15	15	0	; slot15 = slot15 * 0.5
		 75	[  0]	ADDVV	 15	2	15	; slot15 = slot2 + slot15
		 76	[  0]	ADDVN	 15	15	0	; slot15 = slot15 + 0.5
		 77	[  0]	CALL 	 13	2	2	; slot13 = math.floor(math.floor)
		 78	[  0]	GGET 	 14		4	; slot14 = _env["math"]
		 79	[  0]	TGETS	 14	14	1	; slot14 = math.floor
		 80	[  0]	SUBVV	 16	4	12	; slot16 = slot4 - slot12
		 81	[  0]	MULVN	 16	16	0	; slot16 = slot16 * 0.5
		 82	[  0]	ADDVV	 16	3	16	; slot16 = slot3 + slot16
		 83	[  0]	ADDVN	 16	16	0	; slot16 = slot16 + 0.5
		 84	[  0]	CALL 	 14	2	2	; slot14 = math.floor(slot15)
		 85	[  0]	GGET 	 15		10	; slot15 = _env["love"]
		 86	[  0]	TGETS	 15	15	9	; slot15 = love.graphics
		 87	[  0]	TGETS	 15	15	0	; slot15 = love.graphics.draw
		 88	[  0]	MOV  	 17		6	; slot17 = uv0"unknown"
		 89	[  0]	MOV  	 18		13	; slot18 = math.floor
		 90	[  0]	MOV  	 19		14	; slot19 = math.floor
		 91	[  0]	KSHORT	 20		0	; slot20 = 0
		 92	[  0]	MOV  	 21		10	; slot21 = math.min
		 93	[  0]	MOV  	 22		10	; slot22 = math.min
		 94	[  0]	CALL 	 15	1	7	;  = love.graphics.draw(slot16, uv0"unknown", math.floor, math.floor, slot20, math.min)
		 95	[  0]	RET0 	  0		1	; return
	126	[  0]	KPRI 	 67		0	; slot67 = nil
	127	[  0]	FNEW 	 68		64	; N/A:0-0: 0 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISEQP	  0		0	; if uv0"unknown" == nil
		  3	[  0]	JMP  	  0		5	; 	goto 9
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	IST  	   		0	; if uv0"unknown"
		  6	[  0]	JMP  	  1		1	; 	goto 8
		  7	[  0]	KPRI 	  0		0	; slot0 = nil
		  8	[  0]	RET1 	  0		2	; return slot0
		  9	[  0]	GGET 	  0		4	; slot0 = _env["pcall"]
		 10	[  0]	GGET 	  2		3	; slot2 = _env["love"]
		 11	[  0]	TGETS	  2	2	2	; slot2 = love.graphics
		 12	[  0]	TGETS	  2	2	1	; slot2 = love.graphics.newShader
		 13	[  0]	KSTR 	  3		0	; slot3 = "    vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){
		      vec4 t = Texel(texture, texture_coords);
		      return vec4(color.rgb, t.a * color.a);
		    }
		  "
		 14	[  0]	CALL 	  0	3	3	; slot0, slot1 = pcall(slot1, love.graphics.newShader)
		 15	[  0]	ISF  	   		0	; if not slot0
		 16	[  0]	JMP  	  2		4	; 	goto 21
		 17	[  0]	ISF  	   		1	; if not slot1
		 18	[  0]	JMP  	  2		2	; 	goto 21
		 19	[  0]	ISTC 	  2		1	; slot2 = slot1; if slot1
		 20	[  0]	JMP  	  2		1	; 	goto 22
		 21	[  0]	KPRI 	  2		1	; slot2 = false
		 22	[  0]	USETV	  0		2	; uv0"unknwon" = slot2
		 23	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 24	[  0]	IST  	   		2	; if uv0"unknown"
		 25	[  0]	JMP  	  3		1	; 	goto 27
		 26	[  0]	KPRI 	  2		0	; slot2 = nil
		 27	[  0]	RET1 	  2		2	; return slot2
	128	[  0]	KPRI 	 69		0	; slot69 = nil
	129	[  0]	FNEW 	 70		63	; N/A:0-0: 0 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		2	; 	goto 6
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	RET1 	  0		2	; return uv0"unknown"
		  6	[  0]	KSTR 	  0		3	; slot0 = "    extern number u_time;     // seconds
		    extern number u_alpha;    // overlay opacity (0..1), masked by sprite alpha
		    extern vec2   u_dir;      // normalized drift direction in UV space
		    extern number u_cycle;    // seconds per full color cycle (3..5)
		    extern number u_scale;    // spatial scale of pattern
		    extern number u_grainScale; // grain density (screen-space)
		    extern number u_grainAmp; // grain strength (0..1)
		    extern number u_filmFreq; // thin-film interference frequency
		    extern number u_filmAmp;  // thin-film amplitude
		    extern number u_specular; // metallic/specular band strength
		    extern number u_fresnelPow; // fresnel shaping power (>=1)
		    extern vec4   u_frameUV;  // {minU, minV, sizeU, sizeV}; for full images use {0,0,1,1}
		    extern number u_colorGain; // overall color gain (1.0 = neutral)
		    extern number u_saturation; // color saturation multiplier (1.0 = neutral)
		    extern number u_mixBP;    // mix factor between wide and blue-purple palette (0..1)
		
		    vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){
		      return a + b * cos(6.28318 * (c * x + d));
		    }
		    float hash(vec2 p){
		      return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);
		    }
		    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){
		      vec4 base = Texel(tex, tc) * color; // includes source alpha
		      if (base.a <= 0.001) return vec4(0.0);
		      float alpha = clamp(u_alpha, 0.0, 1.0) * base.a;
		      if (alpha <= 0.0) return vec4(0.0);
		
		      vec2 dir = u_dir;
		      if (length(dir) < 0.001) dir = vec2(0.94, 0.34);
		      else dir = normalize(dir);
		      vec2 ortho = vec2(-dir.y, dir.x); 
		      vec2 tcL = tc;
		      if (u_frameUV.z > 0.0 && u_frameUV.w > 0.0){
		        tcL = (tc - u_frameUV.xy) / u_frameUV.zw;
		        tcL = clamp(tcL, 0.0, 1.0);
		      }
		      float u = dot(tcL, dir) * u_scale + (u_time / max(u_cycle, 0.001));
		      float v = dot(tcL, ortho) * u_scale;
		      float grainLine = abs(sin(dot(tcL, ortho) * u_grainScale));
		      float grainNoise = hash(tcL * 97.0 + vec2(13.3,7.7));
		      float grain = mix(grainLine, grainNoise, 0.25);
		      float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));
		      float x = u + film;
		      vec3 colBP = palette(x,
		        vec3(0.55, 0.50, 0.58),
		        vec3(0.25, 0.20, 0.28),
		        vec3(1.00, 1.00, 1.00),
		        vec3(0.10, 0.43, 0.78)
		      );
		      vec3 colWide = palette(u, vec3(0.52), vec3(0.12), vec3(1.0), vec3(0.00, 0.33, 0.66));
		      vec3 foil = mix(colWide, colBP, clamp(u_mixBP, 0.0, 1.0));
		      float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));
		      float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));
		      float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.15;
		      float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);
		      vec3 outRGB = foil * grainMul + spec;
		      // Apply saturation boost and color gain (icon-sized legibility)
		      float Y = dot(outRGB, vec3(0.2126, 0.7152, 0.0722));
		      outRGB = mix(vec3(Y), outRGB, max(0.0, u_saturation));
		      outRGB *= max(0.0, u_colorGain);
		      return vec4(outRGB, alpha);
		    }
		  "
		  7	[  0]	GGET 	  1		2	; slot1 = _env["love"]
		  8	[  0]	TGETS	  1	1	1	; slot1 = love.graphics
		  9	[  0]	TGETS	  1	1	0	; slot1 = love.graphics.newShader
		 10	[  0]	MOV  	  3		0	; slot3 = slot0
		 11	[  0]	CALL 	  1	2	2	; slot1 = love.graphics.newShader(slot2)
		 12	[  0]	USETV	  0		1	; uv0"unknwon" = slot1
		 13	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 14	[  0]	RET1 	  1		2	; return uv0"unknown"
	130	[  0]	KPRI 	 71		0	; slot71 = nil
	131	[  0]	FNEW 	 72		62	; N/A:0-0: 0 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		2	; 	goto 6
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	RET1 	  0		2	; return uv0"unknown"
		  6	[  0]	KSTR 	  0		3	; slot0 = "    extern number u_time;     // seconds
		    extern number u_alpha;    // overlay opacity (0..1), masked by sprite alpha
		    extern vec2   u_dir;      // normalized drift direction in UV space
		    extern number u_cycle;    // seconds per full color cycle (3..5)
		    extern number u_scale;    // spatial scale of pattern
		    extern number u_grainScale; // grain density (screen-space)
		    extern number u_grainAmp; // grain strength (0..1)
		    extern number u_filmFreq; // thin-film interference frequency
		    extern number u_filmAmp;  // thin-film amplitude
		    extern number u_specular; // metallic/specular band strength
		    extern number u_fresnelPow; // fresnel shaping power (>=1)
		    extern vec4   u_frameUV;  // {minU, minV, sizeU, sizeV}; for full images use {0,0,1,1}
		    extern number u_colorGain; // overall color gain (1.0 = neutral)
		    extern number u_saturation; // color saturation multiplier (1.0 = neutral)
		    extern number u_mixBP;    // mix factor between wide and blue-purple palette (0..1)
		
		    vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){
		      return a + b * cos(6.28318 * (c * x + d));
		    }
		    float hash(vec2 p){
		      return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);
		    }
		    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){
		      // IMPORTANT: treat input as an ALPHA MASK (text canvas). Only alpha matters.
		      float maskA = Texel(tex, tc).a;
		      if (maskA <= 0.001) return vec4(0.0);
		      float alpha = clamp(u_alpha, 0.0, 1.0) * maskA;
		      if (alpha <= 0.0) return vec4(0.0);
		
		      vec2 dir = u_dir;
		      if (length(dir) < 0.001) dir = vec2(0.94, 0.34);
		      else dir = normalize(dir);
		      vec2 ortho = vec2(-dir.y, dir.x);
		      vec2 tcL = tc;
		      if (u_frameUV.z > 0.0 && u_frameUV.w > 0.0){
		        tcL = (tc - u_frameUV.xy) / u_frameUV.zw;
		        tcL = clamp(tcL, 0.0, 1.0);
		      }
		      float u = dot(tcL, dir) * u_scale + (u_time / max(u_cycle, 0.001));
		      float v = dot(tcL, ortho) * u_scale;
		      float grainLine = abs(sin(dot(tcL, ortho) * u_grainScale));
		      float grainNoise = hash(tcL * 97.0 + vec2(13.3,7.7));
		      float grain = mix(grainLine, grainNoise, 0.25);
		      float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));
		      float x = u + film;
		      vec3 colBP = palette(x,
		        vec3(0.55, 0.50, 0.58),
		        vec3(0.25, 0.20, 0.28),
		        vec3(1.00, 1.00, 1.00),
		        vec3(0.10, 0.43, 0.78)
		      );
		      vec3 colWide = palette(u, vec3(0.52), vec3(0.12), vec3(1.0), vec3(0.00, 0.33, 0.66));
		      vec3 foil = mix(colWide, colBP, clamp(u_mixBP, 0.0, 1.0));
		      float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));
		      float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));
		      float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.15;
		      float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);
		      vec3 outRGB = foil * grainMul + spec;
		      float Y = dot(outRGB, vec3(0.2126, 0.7152, 0.0722));
		      outRGB = mix(vec3(Y), outRGB, max(0.0, u_saturation));
		      outRGB *= max(0.0, u_colorGain);
		      // Premultiply to guarantee no color outside the mask.
		      return vec4(outRGB * alpha, alpha);
		    }
		  "
		  7	[  0]	GGET 	  1		2	; slot1 = _env["love"]
		  8	[  0]	TGETS	  1	1	1	; slot1 = love.graphics
		  9	[  0]	TGETS	  1	1	0	; slot1 = love.graphics.newShader
		 10	[  0]	MOV  	  3		0	; slot3 = slot0
		 11	[  0]	CALL 	  1	2	2	; slot1 = love.graphics.newShader(slot2)
		 12	[  0]	USETV	  0		1	; uv0"unknwon" = slot1
		 13	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 14	[  0]	RET1 	  1		2	; return uv0"unknown"
	132	[  0]	KNIL 	 73		74	; slot73, slot74 = nil
	133	[  0]	FNEW 	 75		61	; N/A:0-0: 0 args, 7 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	KSTR 	  2		2	; slot2 = "src/data/font/Galmuri9WS.fnt"
		  3	[  0]	CALL 	  0	3	2	; slot0, slot1 = uv0"unknown"(slot1)
		  4	[  0]	GGET 	  2		1	; slot2 = _env["tostring"]
		  5	[  0]	MOV  	  4		1	; slot4 = slot1
		  6	[  0]	CALL 	  2	2	2	; slot2 = tostring(slot3)
		  7	[  0]	KSTR 	  3		0	; slot3 = "|"
		  8	[  0]	GGET 	  4		1	; slot4 = _env["tostring"]
		  9	[  0]	MOV  	  6		0	; slot6 = slot0
		 10	[  0]	CALL 	  4	2	2	; slot4 = tostring(slot5)
		 11	[  0]	CAT  	  2	2	4	; slot2 = slot2 .. slot3 .. tostring
		 12	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 13	[  0]	ISEQV	  3		2	; if uv1"unknown" == slot2
		 14	[  0]	JMP  	  3		24	; 	goto 39
		 15	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 16	[  0]	MOV  	  5		0	; slot5 = slot0
		 17	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		 18	[  0]	CALL 	  6	2	1	; slot6 = uv3"unknown"()
		 19	[  0]	ISF  	   		6	; if not uv3"unknown"
		 20	[  0]	JMP  	  7		3	; 	goto 24
		 21	[  0]	UGET 	  6		4	; slot6 = uv4"unknwon"
		 22	[  0]	IST  	   		6	; if uv4"unknown"
		 23	[  0]	JMP  	  7		1	; 	goto 25
		 24	[  0]	KPRI 	  6		0	; slot6 = nil
		 25	[  0]	CALL 	  3	2	3	; slot3 = uv2"unknown"(tostring, slot5)
		 26	[  0]	ISF  	   		3	; if not slot3
		 27	[  0]	JMP  	  4		6	; 	goto 34
		 28	[  0]	UGET 	  4		5	; slot4 = uv5"unknwon"
		 29	[  0]	MOV  	  6		3	; slot6 = slot3
		 30	[  0]	KSTR 	  7		2	; slot7 = "src/data/font/Galmuri9WS.fnt"
		 31	[  0]	MOV  	  8		0	; slot8 = slot0
		 32	[  0]	MOV  	  9		1	; slot9 = slot1
		 33	[  0]	CALL 	  4	1	5	;  = uv5"unknown"(slot5, slot6, slot7, slot8)
		 34	[  0]	ISTC 	  4		3	; slot4 = slot3; if slot3
		 35	[  0]	JMP  	  4		1	; 	goto 37
		 36	[  0]	KPRI 	  4		0	; slot4 = nil
		 37	[  0]	USETV	  6		4	; uv6"unknwon" = slot4
		 38	[  0]	USETV	  1		2	; uv1"unknwon" = slot2
		 39	[  0]	UGET 	  3		6	; slot3 = uv6"unknwon"
		 40	[  0]	RET1 	  3		2	; return uv6"unknown"
	134	[  0]	TSETS	 75	0	60	; slot0.getNameFont = slot75
	135	[  0]	FNEW 	 76		58	; N/A:0-0: 0 args, 4 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	USETP	  0		0	; uv0"unknwon" = nil
		  2	[  0]	USETP	  1		0	; uv1"unknwon" = nil
		  3	[  0]	USETP	  2		0	; uv2"unknwon" = nil
		  4	[  0]	USETP	  3		0	; uv3"unknwon" = nil
		  5	[  0]	RET0 	  0		1	; return
	136	[  0]	TSETS	 76	0	59	; slot0.reloadLanguageFonts = slot76
	137	[  0]	FNEW 	 76		57	; N/A:0-0: 1 args, 0 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			#1: 1,
			#2: 1,
			#3: 1,
			#4: 1,
			]
		
		
		ktable#1 = [
			#1: 0.9215686274509803,
			#2: 0.5725490196078431,
			#3: 0.16862745098039217,
			#4: 1,
			]
		
		
		ktable#3 = [
			#1: 0.6,
			#2: 0.75,
			#3: 1,
			#4: 1,
			]
		
		
		ktable#5 = [
			#1: 0.6,
			#2: 0.85,
			#3: 0.65,
			#4: 1,
			]
		
		
		ktable#7 = [
			#1: 0.9411764705882353,
			#2: 0.30980392156862746,
			#3: 0.8470588235294118,
			#4: 1,
			]
		
		
		ktable#11 = [
			#1: 1,
			#2: 1,
			#3: 1,
			#4: 1,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	TDUP 	  1		11	; slot1 = copy table#k11
		  4	[  0]	RET1 	  1		2	; return slot1
		  5	[  0]	TGETS	  1	0	10	; slot1 = slot0.grade
		  6	[  0]	IST  	   		1	; if <unknown table>.grade
		  7	[  0]	JMP  	  2		1	; 	goto 9
		  8	[  0]	KSTR 	  1		9	; slot1 = "normal"
		  9	[  0]	ISNES	  1		8	; if slot1 ~= "special"
		 10	[  0]	JMP  	  2		2	; 	goto 13
		 11	[  0]	TDUP 	  2		7	; slot2 = copy table#k7
		 12	[  0]	RET1 	  2		2	; return slot2
		 13	[  0]	ISNES	  1		6	; if slot1 ~= "advanced"
		 14	[  0]	JMP  	  2		2	; 	goto 17
		 15	[  0]	TDUP 	  2		5	; slot2 = copy table#k5
		 16	[  0]	RET1 	  2		2	; return slot2
		 17	[  0]	ISNES	  1		4	; if slot1 ~= "rare"
		 18	[  0]	JMP  	  2		2	; 	goto 21
		 19	[  0]	TDUP 	  2		3	; slot2 = copy table#k3
		 20	[  0]	RET1 	  2		2	; return slot2
		 21	[  0]	ISNES	  1		2	; if slot1 ~= "legendary"
		 22	[  0]	JMP  	  2		2	; 	goto 25
		 23	[  0]	TDUP 	  2		1	; slot2 = copy table#k1
		 24	[  0]	RET1 	  2		2	; return slot2
		 25	[  0]	TDUP 	  2		0	; slot2 = copy table#k0
		 26	[  0]	RET1 	  2		2	; return slot2
	138	[  0]	TGETS	 77	0	56	; slot77 = slot0._hit
	139	[  0]	IST  	   		77	; if <unknown table>._hit
	140	[  0]	JMP  	 78		1	; 	goto 142
	141	[  0]	TDUP 	 77		55	; slot77 = copy table#k55
	142	[  0]	TSETS	 77	0	56	; slot0._hit = slot77
	143	[  0]	TGETS	 77	0	54	; slot77 = slot0._modalHit
	144	[  0]	IST  	   		77	; if <unknown table>._modalHit
	145	[  0]	JMP  	 78		1	; 	goto 147
	146	[  0]	TDUP 	 77		53	; slot77 = copy table#k53
	147	[  0]	TSETS	 77	0	54	; slot0._modalHit = slot77
	148	[  0]	TGETS	 77	0	52	; slot77 = slot0._hudHit
	149	[  0]	IST  	   		77	; if <unknown table>._hudHit
	150	[  0]	JMP  	 78		1	; 	goto 152
	151	[  0]	TDUP 	 77		51	; slot77 = copy table#k51
	152	[  0]	TSETS	 77	0	52	; slot0._hudHit = slot77
	153	[  0]	FNEW 	 77		49	; N/A:0-0: 3 args, 8 upvalues, 49 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			[active] = false,
			]
		
		
		ktable#1 = [
			[active] = false,
			]
		
		
		ktable#4 = [
			[kind] = cancel,
			]
		
		
		ktable#5 = [
			[active] = true,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  3		2	; 	goto 5
		  3	[  0]	IST  	   		1	; if slot1
		  4	[  0]	JMP  	  3		1	; 	goto 6
		  5	[  0]	RET0 	  0		1	; return
		  6	[  0]	IST  	   		2	; if slot2
		  7	[  0]	JMP  	  3		1	; 	goto 9
		  8	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		  9	[  0]	TGETS	  3	0	47	; slot3 = slot0.scale
		 10	[  0]	IST  	   		3	; if <unknown table>.scale
		 11	[  0]	JMP  	  4		1	; 	goto 13
		 12	[  0]	KSHORT	  3		1	; slot3 = 1
		 13	[  0]	TGETS	  4	0	46	; slot4 = slot0.font
		 14	[  0]	ISF  	   		4	; if not <unknown table>.font
		 15	[  0]	JMP  	  5		5	; 	goto 21
		 16	[  0]	GGET 	  5		45	; slot5 = _env["love"]
		 17	[  0]	TGETS	  5	5	44	; slot5 = love.graphics
		 18	[  0]	TGETS	  5	5	43	; slot5 = love.graphics.setFont
		 19	[  0]	MOV  	  7		4	; slot7 = <unknown table>.font
		 20	[  0]	CALL 	  5	1	2	;  = love.graphics.setFont(slot6)
		 21	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 22	[  0]	TGETS	  5	5	42	; slot5 = uv0"unknown".compute
		 23	[  0]	MOV  	  7		0	; slot7 = slot0
		 24	[  0]	CALL 	  5	2	2	; slot5 = uv0"unknown".compute(slot6)
		 25	[  0]	TGETS	  6	0	41	; slot6 = slot0.virtual
		 26	[  0]	ISF  	   		6	; if not <unknown table>.virtual
		 27	[  0]	JMP  	  7		4	; 	goto 32
		 28	[  0]	TGETS	  6	0	41	; slot6 = slot0.virtual
		 29	[  0]	TGETS	  6	6	40	; slot6 = <unknown table>.virtual.W
		 30	[  0]	IST  	   		6	; if <unknown table>.virtual.W
		 31	[  0]	JMP  	  7		10	; 	goto 42
		 32	[  0]	ISF  	   		5	; if not uv0"unknown".compute
		 33	[  0]	JMP  	  6		7	; 	goto 41
		 34	[  0]	TGETS	  6	5	39	; slot6 = uv0"unknown".compute.screen
		 35	[  0]	ISF  	   		6	; if not uv0"unknown".compute.screen
		 36	[  0]	JMP  	  7		4	; 	goto 41
		 37	[  0]	TGETS	  6	5	39	; slot6 = uv0"unknown".compute.screen
		 38	[  0]	TGETS	  6	6	40	; slot6 = uv0"unknown".compute.screen.W
		 39	[  0]	IST  	   		6	; if uv0"unknown".compute.screen.W
		 40	[  0]	JMP  	  7		1	; 	goto 42
		 41	[  0]	KSHORT	  6		1280	; slot6 = 1280
		 42	[  0]	TGETS	  7	0	41	; slot7 = slot0.virtual
		 43	[  0]	ISF  	   		7	; if not <unknown table>.virtual
		 44	[  0]	JMP  	  8		4	; 	goto 49
		 45	[  0]	TGETS	  7	0	41	; slot7 = slot0.virtual
		 46	[  0]	TGETS	  7	7	38	; slot7 = <unknown table>.virtual.H
		 47	[  0]	IST  	   		7	; if <unknown table>.virtual.H
		 48	[  0]	JMP  	  8		10	; 	goto 59
		 49	[  0]	ISF  	   		5	; if not uv0"unknown".compute
		 50	[  0]	JMP  	  7		7	; 	goto 58
		 51	[  0]	TGETS	  7	5	39	; slot7 = uv0"unknown".compute.screen
		 52	[  0]	ISF  	   		7	; if not uv0"unknown".compute.screen
		 53	[  0]	JMP  	  8		4	; 	goto 58
		 54	[  0]	TGETS	  7	5	39	; slot7 = uv0"unknown".compute.screen
		 55	[  0]	TGETS	  7	7	38	; slot7 = uv0"unknown".compute.screen.H
		 56	[  0]	IST  	   		7	; if uv0"unknown".compute.screen.H
		 57	[  0]	JMP  	  8		1	; 	goto 59
		 58	[  0]	KSHORT	  7		720	; slot7 = 720
		 59	[  0]	GGET 	  8		37	; slot8 = _env["math"]
		 60	[  0]	TGETS	  8	8	36	; slot8 = math.floor
		 61	[  0]	MULNV	 10	3	0	; slot10 = 200 * slot3
		 62	[  0]	ADDVN	 10	10	1	; slot10 = slot10 + 0.5
		 63	[  0]	CALL 	  8	2	2	; slot8 = math.floor(slot9)
		 64	[  0]	GGET 	  9		37	; slot9 = _env["math"]
		 65	[  0]	TGETS	  9	9	36	; slot9 = math.floor
		 66	[  0]	MULNV	 11	3	2	; slot11 = 56 * slot3
		 67	[  0]	ADDVN	 11	11	1	; slot11 = slot11 + 0.5
		 68	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		 69	[  0]	GGET 	 10		37	; slot10 = _env["math"]
		 70	[  0]	TGETS	 10	10	36	; slot10 = math.floor
		 71	[  0]	MULNV	 12	3	3	; slot12 = 4 * slot3
		 72	[  0]	ADDVN	 12	12	1	; slot12 = slot12 + 0.5
		 73	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
		 74	[  0]	GGET 	 11		37	; slot11 = _env["math"]
		 75	[  0]	TGETS	 11	11	36	; slot11 = math.floor
		 76	[  0]	MULNV	 13	3	4	; slot13 = 6 * slot3
		 77	[  0]	ADDVN	 13	13	1	; slot13 = slot13 + 0.5
		 78	[  0]	CALL 	 11	2	2	; slot11 = math.floor(slot12)
		 79	[  0]	GGET 	 12		37	; slot12 = _env["math"]
		 80	[  0]	TGETS	 12	12	36	; slot12 = math.floor
		 81	[  0]	MULNV	 14	3	3	; slot14 = 4 * slot3
		 82	[  0]	ADDVN	 14	14	1	; slot14 = slot14 + 0.5
		 83	[  0]	CALL 	 12	2	2	; slot12 = math.floor(slot13)
		 84	[  0]	GGET 	 13		37	; slot13 = _env["math"]
		 85	[  0]	TGETS	 13	13	36	; slot13 = math.floor
		 86	[  0]	MULNV	 15	3	3	; slot15 = 4 * slot3
		 87	[  0]	ADDVN	 15	15	1	; slot15 = slot15 + 0.5
		 88	[  0]	CALL 	 13	2	2	; slot13 = math.floor(slot14)
		 89	[  0]	GGET 	 14		37	; slot14 = _env["math"]
		 90	[  0]	TGETS	 14	14	36	; slot14 = math.floor
		 91	[  0]	MULNV	 16	3	5	; slot16 = 22 * slot3
		 92	[  0]	ADDVN	 16	16	1	; slot16 = slot16 + 0.5
		 93	[  0]	CALL 	 14	2	2	; slot14 = math.floor(slot15)
		 94	[  0]	KSHORT	 15		12	; slot15 = 12
		 95	[  0]	ISGE 	 14		15	; if math.floor >= slot15
		 96	[  0]	JMP  	 15		1	; 	goto 98
		 97	[  0]	KSHORT	 14		12	; slot14 = 12
		 98	[  0]	UGET 	 15		1	; slot15 = uv1"unknwon"
		 99	[  0]	MOV  	 17		4	; slot17 = <unknown table>.font
		100	[  0]	GGET 	 18		37	; slot18 = _env["math"]
		101	[  0]	TGETS	 18	18	36	; slot18 = math.floor
		102	[  0]	MULNV	 20	3	6	; slot20 = 12 * slot3
		103	[  0]	ADDVN	 20	20	1	; slot20 = slot20 + 0.5
		104	[  0]	CALL 	 18	0	2	; MULTRES = math.floor(slot19)
		105	[  0]	CALLM	 15	2	1	; slot15 = uv1"unknown"(slot16, ...MULTRES)
		106	[  0]	GGET 	 16		37	; slot16 = _env["math"]
		107	[  0]	TGETS	 16	16	35	; slot16 = math.max
		108	[  0]	KSHORT	 18		1	; slot18 = 1
		109	[  0]	MOV  	 19		15	; slot19 = uv1"unknown"
		110	[  0]	CALL 	 16	2	3	; slot16 = math.max(<unknown table>.font, slot18)
		111	[  0]	GGET 	 17		37	; slot17 = _env["math"]
		112	[  0]	TGETS	 17	17	35	; slot17 = math.max
		113	[  0]	KSHORT	 19		1	; slot19 = 1
		114	[  0]	GGET 	 20		37	; slot20 = _env["math"]
		115	[  0]	TGETS	 20	20	36	; slot20 = math.floor
		116	[  0]	MULNV	 22	3	7	; slot22 = 7 * slot3
		117	[  0]	ADDVN	 22	22	1	; slot22 = slot22 + 0.5
		118	[  0]	CALL 	 20	0	2	; MULTRES = math.floor(slot21)
		119	[  0]	CALLM	 17	2	1	; slot17 = math.max(slot18, ...MULTRES)
		120	[  0]	GGET 	 18		37	; slot18 = _env["math"]
		121	[  0]	TGETS	 18	18	35	; slot18 = math.max
		122	[  0]	KSHORT	 20		1	; slot20 = 1
		123	[  0]	GGET 	 21		37	; slot21 = _env["math"]
		124	[  0]	TGETS	 21	21	35	; slot21 = math.max
		125	[  0]	KSHORT	 23		1	; slot23 = 1
		126	[  0]	GGET 	 24		37	; slot24 = _env["math"]
		127	[  0]	TGETS	 24	24	36	; slot24 = math.floor
		128	[  0]	MULNV	 26	3	8	; slot26 = 5 * slot3
		129	[  0]	ADDVN	 26	26	1	; slot26 = slot26 + 0.5
		130	[  0]	CALL 	 24	0	2	; MULTRES = math.floor(slot25)
		131	[  0]	CALLM	 21	2	1	; slot21 = math.max(slot22, ...MULTRES)
		132	[  0]	ADDVV	 21	15	21	; slot21 = uv1"unknown" + math.max
		133	[  0]	CALL 	 18	2	3	; slot18 = math.max(slot19, slot20)
		134	[  0]	MULVN	 19	11	9	; slot19 = math.floor * 3
		135	[  0]	SUBVV	 19	8	19	; slot19 = math.floor - slot19
		136	[  0]	SUBVV	 19	19	14	; slot19 = slot19 - slot14
		137	[  0]	KSHORT	 20		10	; slot20 = 10
		138	[  0]	ISGE 	 19		20	; if slot19 >= slot20
		139	[  0]	JMP  	 20		1	; 	goto 141
		140	[  0]	KSHORT	 19		10	; slot19 = 10
		141	[  0]	UGET 	 20		2	; slot20 = uv2"unknwon"
		142	[  0]	MOV  	 22		4	; slot22 = <unknown table>.font
		143	[  0]	TGETS	 23	1	34	; slot23 = slot1.desc
		144	[  0]	IST  	   		23	; if <unknown table>.desc
		145	[  0]	JMP  	 24		1	; 	goto 147
		146	[  0]	KSTR 	 23		33	; slot23 = ""
		147	[  0]	MOV  	 24		19	; slot24 = slot19
		148	[  0]	CALL 	 20	2	4	; slot20 = uv2"unknown"(slot21, <unknown table>.font, slot23)
		149	[  0]	ADDVV	 21	12	16	; slot21 = math.floor + math.max
		150	[  0]	ADDVV	 21	21	17	; slot21 = slot21 + math.max
		151	[  0]	MULVV	 22	20	18	; slot22 = uv2"unknown" * math.max
		152	[  0]	ADDVV	 21	21	22	; slot21 = slot21 + slot22
		153	[  0]	ADDVV	 21	21	13	; slot21 = slot21 + math.floor
		154	[  0]	GGET 	 22		37	; slot22 = _env["math"]
		155	[  0]	TGETS	 22	22	36	; slot22 = math.floor
		156	[  0]	ADDVV	 24	14	12	; slot24 = slot14 + math.floor
		157	[  0]	ADDVV	 24	24	13	; slot24 = slot24 + math.floor
		158	[  0]	ADDVN	 24	24	1	; slot24 = slot24 + 0.5
		159	[  0]	CALL 	 22	2	2	; slot22 = math.floor(slot23)
		160	[  0]	GGET 	 23		37	; slot23 = _env["math"]
		161	[  0]	TGETS	 23	23	35	; slot23 = math.max
		162	[  0]	MOV  	 25		9	; slot25 = math.floor
		163	[  0]	MOV  	 26		21	; slot26 = slot21
		164	[  0]	MOV  	 27		22	; slot27 = math.floor
		165	[  0]	CALL 	 23	2	4	; slot23 = math.max(slot24, math.floor, slot26)
		166	[  0]	KNIL 	 24		25	; slot24, math.floor = nil
		167	[  0]	ISF  	   		5	; if not uv0"unknown".compute
		168	[  0]	JMP  	 26		25	; 	goto 194
		169	[  0]	TGETS	 26	5	32	; slot26 = uv0"unknown".compute.right
		170	[  0]	ISF  	   		26	; if not uv0"unknown".compute.right
		171	[  0]	JMP  	 27		22	; 	goto 194
		172	[  0]	GGET 	 26		37	; slot26 = _env["math"]
		173	[  0]	TGETS	 26	26	36	; slot26 = math.floor
		174	[  0]	TGETS	 28	5	32	; slot28 = uv0"unknown".compute.right
		175	[  0]	TGETS	 28	28	31	; slot28 = uv0"unknown".compute.right.x
		176	[  0]	TGETS	 29	5	32	; slot29 = uv0"unknown".compute.right
		177	[  0]	TGETS	 29	29	30	; slot29 = uv0"unknown".compute.right.w
		178	[  0]	SUBVV	 29	29	8	; slot29 = uv0"unknown".compute.right.w - math.floor
		179	[  0]	MULVN	 29	29	1	; slot29 = slot29 * 0.5
		180	[  0]	ADDVV	 28	28	29	; slot28 = uv0"unknown".compute.right.x + slot29
		181	[  0]	ADDVN	 28	28	1	; slot28 = slot28 + 0.5
		182	[  0]	CALL 	 26	2	2	; slot26 = math.floor(slot27)
		183	[  0]	MOV  	 24		26	; slot24 = math.floor
		184	[  0]	GGET 	 26		37	; slot26 = _env["math"]
		185	[  0]	TGETS	 26	26	36	; slot26 = math.floor
		186	[  0]	TGETS	 28	5	32	; slot28 = uv0"unknown".compute.right
		187	[  0]	TGETS	 28	28	29	; slot28 = uv0"unknown".compute.right.y
		188	[  0]	SUBVV	 28	28	23	; slot28 = uv0"unknown".compute.right.y - math.max
		189	[  0]	SUBVV	 28	28	10	; slot28 = slot28 - math.floor
		190	[  0]	ADDVN	 28	28	1	; slot28 = slot28 + 0.5
		191	[  0]	CALL 	 26	2	2	; slot26 = math.floor(slot27)
		192	[  0]	MOV  	 25		26	; slot25 = math.floor
		193	[  0]	JMP  	 26		13	; 	goto 207
		194	[  0]	GGET 	 26		37	; slot26 = _env["math"]
		195	[  0]	TGETS	 26	26	36	; slot26 = math.floor
		196	[  0]	SUBVV	 28	6	8	; slot28 = slot6 - math.floor
		197	[  0]	DIVVN	 28	28	10	; slot28 = slot28 / 2
		198	[  0]	ADDVN	 28	28	1	; slot28 = slot28 + 0.5
		199	[  0]	CALL 	 26	2	2	; slot26 = math.floor(slot27)
		200	[  0]	MOV  	 24		26	; slot24 = math.floor
		201	[  0]	GGET 	 26		37	; slot26 = _env["math"]
		202	[  0]	TGETS	 26	26	36	; slot26 = math.floor
		203	[  0]	MULNV	 28	3	10	; slot28 = 2 * slot3
		204	[  0]	ADDVN	 28	28	1	; slot28 = slot28 + 0.5
		205	[  0]	CALL 	 26	2	2	; slot26 = math.floor(slot27)
		206	[  0]	MOV  	 25		26	; slot25 = math.floor
		207	[  0]	TGETS	 26	0	28	; slot26 = slot0.margin
		208	[  0]	IST  	   		26	; if <unknown table>.margin
		209	[  0]	JMP  	 27		1	; 	goto 211
		210	[  0]	KSHORT	 26		0	; slot26 = 0
		211	[  0]	ISGE 	 24		26	; if math.floor >= slot26
		212	[  0]	JMP  	 27		1	; 	goto 214
		213	[  0]	MOV  	 24		26	; slot24 = slot26
		214	[  0]	ADDVV	 27	24	8	; slot27 = slot24 + math.floor
		215	[  0]	SUBVV	 28	6	26	; slot28 = slot6 - slot26
		216	[  0]	ISGE 	 28		27	; if slot28 >= slot27
		217	[  0]	JMP  	 27		2	; 	goto 220
		218	[  0]	SUBVV	 27	6	26	; slot27 = slot6 - slot26
		219	[  0]	SUBVV	 24	27	8	; slot24 = slot27 - math.floor
		220	[  0]	ISGE 	 25		26	; if math.floor >= slot26
		221	[  0]	JMP  	 27		1	; 	goto 223
		222	[  0]	MOV  	 25		26	; slot25 = slot26
		223	[  0]	ADDVV	 27	25	23	; slot27 = slot25 + math.max
		224	[  0]	SUBVV	 28	7	26	; slot28 = slot7 - slot26
		225	[  0]	ISGE 	 28		27	; if slot28 >= slot27
		226	[  0]	JMP  	 27		2	; 	goto 229
		227	[  0]	SUBVV	 27	7	26	; slot27 = slot7 - slot26
		228	[  0]	SUBVV	 25	27	23	; slot25 = slot27 - math.max
		229	[  0]	GGET 	 27		45	; slot27 = _env["love"]
		230	[  0]	TGETS	 27	27	44	; slot27 = love.graphics
		231	[  0]	TGETS	 27	27	27	; slot27 = love.graphics.setColor
		232	[  0]	KNUM 	 29		11	; slot29 = 0.1
		233	[  0]	KNUM 	 30		11	; slot30 = 0.1
		234	[  0]	KNUM 	 31		11	; slot31 = 0.1
		235	[  0]	KNUM 	 32		12	; slot32 = 0.92
		236	[  0]	CALL 	 27	1	5	;  = love.graphics.setColor(slot28, slot29, slot30, slot31)
		237	[  0]	GGET 	 27		45	; slot27 = _env["love"]
		238	[  0]	TGETS	 27	27	44	; slot27 = love.graphics
		239	[  0]	TGETS	 27	27	26	; slot27 = love.graphics.rectangle
		240	[  0]	KSTR 	 29		25	; slot29 = "fill"
		241	[  0]	MOV  	 30		24	; slot30 = slot24
		242	[  0]	MOV  	 31		25	; slot31 = slot25
		243	[  0]	MOV  	 32		8	; slot32 = math.floor
		244	[  0]	MOV  	 33		23	; slot33 = math.max
		245	[  0]	CALL 	 27	1	6	;  = love.graphics.rectangle(slot28, slot29, slot30, slot31, math.floor)
		246	[  0]	GGET 	 27		45	; slot27 = _env["love"]
		247	[  0]	TGETS	 27	27	44	; slot27 = love.graphics
		248	[  0]	TGETS	 27	27	27	; slot27 = love.graphics.setColor
		249	[  0]	KNUM 	 29		13	; slot29 = 0.45
		250	[  0]	KNUM 	 30		13	; slot30 = 0.45
		251	[  0]	KNUM 	 31		13	; slot31 = 0.45
		252	[  0]	KSHORT	 32		1	; slot32 = 1
		253	[  0]	CALL 	 27	1	5	;  = love.graphics.setColor(slot28, slot29, slot30, slot31)
		254	[  0]	GGET 	 27		45	; slot27 = _env["love"]
		255	[  0]	TGETS	 27	27	44	; slot27 = love.graphics
		256	[  0]	TGETS	 27	27	26	; slot27 = love.graphics.rectangle
		257	[  0]	KSTR 	 29		24	; slot29 = "line"
		258	[  0]	ADDVN	 30	24	1	; slot30 = slot24 + 0.5
		259	[  0]	ADDVN	 31	25	1	; slot31 = slot25 + 0.5
		260	[  0]	SUBVN	 32	8	14	; slot32 = math.floor - 1
		261	[  0]	SUBVN	 33	23	14	; slot33 = math.max - 1
		262	[  0]	CALL 	 27	1	6	;  = love.graphics.rectangle(slot28, slot29, slot30, slot31, slot32)
		263	[  0]	ADDVV	 27	24	11	; slot27 = slot24 + math.floor
		264	[  0]	GGET 	 28		37	; slot28 = _env["math"]
		265	[  0]	TGETS	 28	28	36	; slot28 = math.floor
		266	[  0]	SUBVV	 30	23	14	; slot30 = math.max - slot14
		267	[  0]	DIVVN	 30	30	10	; slot30 = slot30 / 2
		268	[  0]	ADDVN	 30	30	1	; slot30 = slot30 + 0.5
		269	[  0]	CALL 	 28	2	2	; slot28 = math.floor(slot29)
		270	[  0]	ADDVV	 28	25	28	; slot28 = slot25 + math.floor
		271	[  0]	UGET 	 29		3	; slot29 = uv3"unknwon"
		272	[  0]	UGET 	 31		4	; slot31 = uv4"unknwon"
		273	[  0]	TGETS	 32	1	23	; slot32 = slot1.icon
		274	[  0]	MOV  	 33		27	; slot33 = slot27
		275	[  0]	MOV  	 34		28	; slot34 = slot28
		276	[  0]	MOV  	 35		14	; slot35 = slot14
		277	[  0]	KSHORT	 36		1	; slot36 = 1
		278	[  0]	CALL 	 29	1	7	;  = uv3"unknown"(slot30, uv4"unknown", <unknown table>.icon, slot33, slot34, slot35)
		279	[  0]	ADDVV	 29	27	14	; slot29 = slot27 + slot14
		280	[  0]	ADDVV	 29	29	11	; slot29 = slot29 + math.floor
		281	[  0]	ADDVV	 30	24	8	; slot30 = slot24 + math.floor
		282	[  0]	SUBVV	 30	30	29	; slot30 = slot30 - slot29
		283	[  0]	SUBVV	 30	30	11	; slot30 = slot30 - math.floor
		284	[  0]	KSHORT	 31		10	; slot31 = 10
		285	[  0]	ISGE 	 30		31	; if slot30 >= slot31
		286	[  0]	JMP  	 31		1	; 	goto 288
		287	[  0]	KSHORT	 30		10	; slot30 = 10
		288	[  0]	ADDVV	 31	25	12	; slot31 = slot25 + math.floor
		289	[  0]	GGET 	 32		45	; slot32 = _env["love"]
		290	[  0]	TGETS	 32	32	44	; slot32 = love.graphics
		291	[  0]	TGETS	 32	32	27	; slot32 = love.graphics.setColor
		292	[  0]	KNUM 	 34		15	; slot34 = 0.65
		293	[  0]	KSHORT	 35		1	; slot35 = 1
		294	[  0]	KNUM 	 36		15	; slot36 = 0.65
		295	[  0]	KSHORT	 37		1	; slot37 = 1
		296	[  0]	CALL 	 32	1	5	;  = love.graphics.setColor(slot33, slot34, slot35, slot36)
		297	[  0]	UGET 	 32		4	; slot32 = uv4"unknwon"
		298	[  0]	TGETS	 32	32	22	; slot32 = uv4"unknown"._printFitted
		299	[  0]	GGET 	 34		45	; slot34 = _env["love"]
		300	[  0]	TGETS	 34	34	44	; slot34 = love.graphics
		301	[  0]	TGETS	 34	34	21	; slot34 = love.graphics.getFont
		302	[  0]	CALL 	 34	2	1	; slot34 = love.graphics.getFont()
		303	[  0]	UGET 	 35		5	; slot35 = uv5"unknwon"
		304	[  0]	TGETS	 35	35	20	; slot35 = uv5"unknown".getImprintName
		305	[  0]	TGETS	 37	1	19	; slot37 = slot1.id
		306	[  0]	TGETS	 38	1	18	; slot38 = slot1.name
		307	[  0]	IST  	   		38	; if <unknown table>.name
		308	[  0]	JMP  	 39		1	; 	goto 310
		309	[  0]	KSTR 	 38		17	; slot38 = "New Imprint"
		310	[  0]	GGET 	 39		16	; slot39 = _env["_G"]
		311	[  0]	TGETS	 39	39	15	; slot39 = _G.currentGameLang
		312	[  0]	IST  	   		39	; if _G.currentGameLang
		313	[  0]	JMP  	 40		1	; 	goto 315
		314	[  0]	KSTR 	 39		14	; slot39 = "ko"
		315	[  0]	CALL 	 35	2	4	; slot35 = uv5"unknown".getImprintName(slot36, <unknown table>.id, slot38)
		316	[  0]	MOV  	 36		29	; slot36 = slot29
		317	[  0]	MOV  	 37		31	; slot37 = slot31
		318	[  0]	MOV  	 38		30	; slot38 = slot30
		319	[  0]	CALL 	 32	1	6	;  = uv4"unknown"._printFitted(slot33, love.graphics.getFont, uv5"unknown".getImprintName, slot36, slot37)
		320	[  0]	GGET 	 32		45	; slot32 = _env["love"]
		321	[  0]	TGETS	 32	32	44	; slot32 = love.graphics
		322	[  0]	TGETS	 32	32	27	; slot32 = love.graphics.setColor
		323	[  0]	KNUM 	 34		16	; slot34 = 0.9
		324	[  0]	KNUM 	 35		16	; slot35 = 0.9
		325	[  0]	KNUM 	 36		16	; slot36 = 0.9
		326	[  0]	KSHORT	 37		1	; slot37 = 1
		327	[  0]	CALL 	 32	1	5	;  = love.graphics.setColor(slot33, slot34, slot35, slot36)
		328	[  0]	ADDVV	 32	31	16	; slot32 = slot31 + math.max
		329	[  0]	ADDVV	 32	32	17	; slot32 = slot32 + math.max
		330	[  0]	UGET 	 33		6	; slot33 = uv6"unknwon"
		331	[  0]	MOV  	 35		4	; slot35 = <unknown table>.font
		332	[  0]	UGET 	 36		5	; slot36 = uv5"unknwon"
		333	[  0]	TGETS	 36	36	13	; slot36 = uv5"unknown".getImprintDesc
		334	[  0]	TGETS	 38	1	19	; slot38 = slot1.id
		335	[  0]	TGETS	 39	1	12	; slot39 = slot1.level
		336	[  0]	TGETS	 40	1	34	; slot40 = slot1.desc
		337	[  0]	IST  	   		40	; if <unknown table>.desc
		338	[  0]	JMP  	 41		1	; 	goto 340
		339	[  0]	KSTR 	 40		33	; slot40 = ""
		340	[  0]	GGET 	 41		16	; slot41 = _env["_G"]
		341	[  0]	TGETS	 41	41	15	; slot41 = _G.currentGameLang
		342	[  0]	IST  	   		41	; if _G.currentGameLang
		343	[  0]	JMP  	 42		1	; 	goto 345
		344	[  0]	KSTR 	 41		14	; slot41 = "ko"
		345	[  0]	CALL 	 36	2	5	; slot36 = uv5"unknown".getImprintDesc(slot37, <unknown table>.id, <unknown table>.level, slot40)
		346	[  0]	MOV  	 37		29	; slot37 = slot29
		347	[  0]	MOV  	 38		32	; slot38 = slot32
		348	[  0]	MOV  	 39		30	; slot39 = slot30
		349	[  0]	MOV  	 40		18	; slot40 = math.max
		350	[  0]	KPRI 	 41		0	; slot41 = nil
		351	[  0]	CALL 	 33	1	8	;  = uv6"unknown"(slot34, <unknown table>.font, uv5"unknown".getImprintDesc, slot37, slot38, slot39, math.max)
		352	[  0]	GGET 	 33		45	; slot33 = _env["love"]
		353	[  0]	TGETS	 33	33	44	; slot33 = love.graphics
		354	[  0]	TGETS	 33	33	27	; slot33 = love.graphics.setColor
		355	[  0]	KSHORT	 35		1	; slot35 = 1
		356	[  0]	KSHORT	 36		1	; slot36 = 1
		357	[  0]	KSHORT	 37		1	; slot37 = 1
		358	[  0]	KSHORT	 38		1	; slot38 = 1
		359	[  0]	CALL 	 33	1	5	;  = love.graphics.setColor(slot34, slot35, slot36, slot37)
		360	[  0]	TGETS	 33	2	11	; slot33 = slot2.showCancel
		361	[  0]	ISF  	   		33	; if not <unknown table>.showCancel
		362	[  0]	JMP  	 34		127	; 	goto 490
		363	[  0]	GGET 	 33		37	; slot33 = _env["math"]
		364	[  0]	TGETS	 33	33	36	; slot33 = math.floor
		365	[  0]	MULNV	 35	3	17	; slot35 = 26 * slot3
		366	[  0]	ADDVN	 35	35	1	; slot35 = slot35 + 0.5
		367	[  0]	CALL 	 33	2	2	; slot33 = math.floor(slot34)
		368	[  0]	GGET 	 34		37	; slot34 = _env["math"]
		369	[  0]	TGETS	 34	34	36	; slot34 = math.floor
		370	[  0]	MULNV	 36	3	4	; slot36 = 6 * slot3
		371	[  0]	ADDVN	 36	36	1	; slot36 = slot36 + 0.5
		372	[  0]	CALL 	 34	2	2	; slot34 = math.floor(slot35)
		373	[  0]	MOV  	 35		24	; slot35 = slot24
		374	[  0]	ADDVV	 36	25	23	; slot36 = slot25 + math.max
		375	[  0]	ADDVV	 36	36	34	; slot36 = slot36 + math.floor
		376	[  0]	MOV  	 37		8	; slot37 = math.floor
		377	[  0]	TGETS	 38	2	10	; slot38 = slot2.cancelLabel
		378	[  0]	IST  	   		38	; if <unknown table>.cancelLabel
		379	[  0]	JMP  	 39		9	; 	goto 389
		380	[  0]	UGET 	 38		5	; slot38 = uv5"unknwon"
		381	[  0]	TGETS	 38	38	9	; slot38 = uv5"unknown".getText
		382	[  0]	KSTR 	 40		8	; slot40 = "imprint_absorb_cancel"
		383	[  0]	GGET 	 41		16	; slot41 = _env["_G"]
		384	[  0]	TGETS	 41	41	15	; slot41 = _G.currentGameLang
		385	[  0]	IST  	   		41	; if _G.currentGameLang
		386	[  0]	JMP  	 42		1	; 	goto 388
		387	[  0]	KSTR 	 41		14	; slot41 = "ko"
		388	[  0]	CALL 	 38	2	3	; slot38 = uv5"unknown".getText(slot39, slot40)
		389	[  0]	ADDVV	 39	36	33	; slot39 = slot36 + math.floor
		390	[  0]	SUBVV	 40	7	26	; slot40 = slot7 - slot26
		391	[  0]	ISGT 	 39		40	; if slot39 > slot40
		392	[  0]	JMP  	 39		93	; 	goto 486
		393	[  0]	GGET 	 39		45	; slot39 = _env["love"]
		394	[  0]	TGETS	 39	39	44	; slot39 = love.graphics
		395	[  0]	TGETS	 39	39	27	; slot39 = love.graphics.setColor
		396	[  0]	KNUM 	 41		18	; slot41 = 0.12
		397	[  0]	KNUM 	 42		18	; slot42 = 0.12
		398	[  0]	KNUM 	 43		18	; slot43 = 0.12
		399	[  0]	KNUM 	 44		19	; slot44 = 0.94
		400	[  0]	CALL 	 39	1	5	;  = love.graphics.setColor(slot40, slot41, slot42, slot43)
		401	[  0]	GGET 	 39		45	; slot39 = _env["love"]
		402	[  0]	TGETS	 39	39	44	; slot39 = love.graphics
		403	[  0]	TGETS	 39	39	26	; slot39 = love.graphics.rectangle
		404	[  0]	KSTR 	 41		25	; slot41 = "fill"
		405	[  0]	MOV  	 42		35	; slot42 = slot35
		406	[  0]	MOV  	 43		36	; slot43 = slot36
		407	[  0]	MOV  	 44		37	; slot44 = math.floor
		408	[  0]	MOV  	 45		33	; slot45 = math.floor
		409	[  0]	CALL 	 39	1	6	;  = love.graphics.rectangle(slot40, slot41, slot42, slot43, math.floor)
		410	[  0]	GGET 	 39		45	; slot39 = _env["love"]
		411	[  0]	TGETS	 39	39	44	; slot39 = love.graphics
		412	[  0]	TGETS	 39	39	27	; slot39 = love.graphics.setColor
		413	[  0]	KNUM 	 41		20	; slot41 = 0.55
		414	[  0]	KNUM 	 42		20	; slot42 = 0.55
		415	[  0]	KNUM 	 43		20	; slot43 = 0.55
		416	[  0]	KSHORT	 44		1	; slot44 = 1
		417	[  0]	CALL 	 39	1	5	;  = love.graphics.setColor(slot40, slot41, slot42, slot43)
		418	[  0]	GGET 	 39		45	; slot39 = _env["love"]
		419	[  0]	TGETS	 39	39	44	; slot39 = love.graphics
		420	[  0]	TGETS	 39	39	26	; slot39 = love.graphics.rectangle
		421	[  0]	KSTR 	 41		24	; slot41 = "line"
		422	[  0]	ADDVN	 42	35	1	; slot42 = slot35 + 0.5
		423	[  0]	ADDVN	 43	36	1	; slot43 = slot36 + 0.5
		424	[  0]	SUBVN	 44	37	14	; slot44 = math.floor - 1
		425	[  0]	SUBVN	 45	33	14	; slot45 = math.floor - 1
		426	[  0]	CALL 	 39	1	6	;  = love.graphics.rectangle(slot40, slot41, slot42, slot43, slot44)
		427	[  0]	UGET 	 39		7	; slot39 = uv7"unknwon"
		428	[  0]	MOV  	 41		4	; slot41 = <unknown table>.font
		429	[  0]	MOV  	 42		38	; slot42 = uv5"unknown".getText
		430	[  0]	CALL 	 39	2	3	; slot39 = uv7"unknown"(slot40, <unknown table>.font)
		431	[  0]	UGET 	 40		1	; slot40 = uv1"unknwon"
		432	[  0]	MOV  	 42		4	; slot42 = <unknown table>.font
		433	[  0]	GGET 	 43		37	; slot43 = _env["math"]
		434	[  0]	TGETS	 43	43	36	; slot43 = math.floor
		435	[  0]	MULNV	 45	3	6	; slot45 = 12 * slot3
		436	[  0]	ADDVN	 45	45	1	; slot45 = slot45 + 0.5
		437	[  0]	CALL 	 43	0	2	; MULTRES = math.floor(slot44)
		438	[  0]	CALLM	 40	2	1	; slot40 = uv1"unknown"(<unknown table>.font, ...MULTRES)
		439	[  0]	GGET 	 41		37	; slot41 = _env["math"]
		440	[  0]	TGETS	 41	41	36	; slot41 = math.floor
		441	[  0]	SUBVV	 43	37	39	; slot43 = math.floor - uv7"unknown"
		442	[  0]	MULVN	 43	43	1	; slot43 = slot43 * 0.5
		443	[  0]	ADDVN	 43	43	1	; slot43 = slot43 + 0.5
		444	[  0]	CALL 	 41	2	2	; slot41 = math.floor(<unknown table>.font)
		445	[  0]	ADDVV	 41	35	41	; slot41 = slot35 + math.floor
		446	[  0]	GGET 	 42		37	; slot42 = _env["math"]
		447	[  0]	TGETS	 42	42	36	; slot42 = math.floor
		448	[  0]	SUBVV	 44	33	40	; slot44 = math.floor - uv1"unknown"
		449	[  0]	MULVN	 44	44	1	; slot44 = slot44 * 0.5
		450	[  0]	ADDVN	 44	44	1	; slot44 = slot44 + 0.5
		451	[  0]	CALL 	 42	2	2	; slot42 = math.floor(slot43)
		452	[  0]	ADDVV	 42	36	42	; slot42 = slot36 + math.floor
		453	[  0]	GGET 	 43		45	; slot43 = _env["love"]
		454	[  0]	TGETS	 43	43	44	; slot43 = love.graphics
		455	[  0]	TGETS	 43	43	27	; slot43 = love.graphics.setColor
		456	[  0]	KNUM 	 45		21	; slot45 = 0.95
		457	[  0]	KNUM 	 46		21	; slot46 = 0.95
		458	[  0]	KNUM 	 47		21	; slot47 = 0.95
		459	[  0]	KSHORT	 48		1	; slot48 = 1
		460	[  0]	CALL 	 43	1	5	;  = love.graphics.setColor(slot44, slot45, slot46, slot47)
		461	[  0]	GGET 	 43		45	; slot43 = _env["love"]
		462	[  0]	TGETS	 43	43	44	; slot43 = love.graphics
		463	[  0]	TGETS	 43	43	7	; slot43 = love.graphics.print
		464	[  0]	MOV  	 45		38	; slot45 = uv5"unknown".getText
		465	[  0]	MOV  	 46		41	; slot46 = slot41
		466	[  0]	MOV  	 47		42	; slot47 = slot42
		467	[  0]	CALL 	 43	1	4	;  = love.graphics.print(slot44, uv5"unknown".getText, slot46)
		468	[  0]	GGET 	 43		45	; slot43 = _env["love"]
		469	[  0]	TGETS	 43	43	44	; slot43 = love.graphics
		470	[  0]	TGETS	 43	43	27	; slot43 = love.graphics.setColor
		471	[  0]	KSHORT	 45		1	; slot45 = 1
		472	[  0]	KSHORT	 46		1	; slot46 = 1
		473	[  0]	KSHORT	 47		1	; slot47 = 1
		474	[  0]	KSHORT	 48		1	; slot48 = 1
		475	[  0]	CALL 	 43	1	5	;  = love.graphics.setColor(slot44, slot45, slot46, slot47)
		476	[  0]	UGET 	 43		4	; slot43 = uv4"unknwon"
		477	[  0]	TDUP 	 44		5	; slot44 = copy table#k5
		478	[  0]	TDUP 	 45		4	; slot45 = copy table#k4
		479	[  0]	TSETS	 35	45	31	; slot45.x = slot35
		480	[  0]	TSETS	 36	45	29	; slot45.y = slot36
		481	[  0]	TSETS	 37	45	30	; slot45.w = math.floor
		482	[  0]	TSETS	 33	45	3	; slot45.h = math.floor
		483	[  0]	TSETS	 45	44	2	; slot44.cancelBtn = slot45
		484	[  0]	TSETS	 44	43	6	; uv4"unknown"._hudHit = slot44
		485	[  0]	JMP  	 39		7	; 	goto 493
		486	[  0]	UGET 	 39		4	; slot39 = uv4"unknwon"
		487	[  0]	TDUP 	 40		1	; slot40 = copy table#k1
		488	[  0]	TSETS	 40	39	6	; uv4"unknown"._hudHit = slot40
		489	[  0]	JMP  	 33		3	; 	goto 493
		490	[  0]	UGET 	 33		4	; slot33 = uv4"unknwon"
		491	[  0]	TDUP 	 34		0	; slot34 = copy table#k0
		492	[  0]	TSETS	 34	33	6	; uv4"unknown"._hudHit = slot34
		493	[  0]	RET0 	  0		1	; return
	154	[  0]	TSETS	 77	0	50	; slot0.drawHudTab = slot77
	155	[  0]	FNEW 	 77		47	; N/A:0-0: 2 args, 1 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			[kind] = cancel,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	7	; slot2 = uv0"unknown"._hudHit
		  3	[  0]	ISF  	   		2	; if not uv0"unknown"._hudHit
		  4	[  0]	JMP  	  3		3	; 	goto 8
		  5	[  0]	TGETS	  3	2	6	; slot3 = uv0"unknown"._hudHit.active
		  6	[  0]	IST  	   		3	; if uv0"unknown"._hudHit.active
		  7	[  0]	JMP  	  3		2	; 	goto 10
		  8	[  0]	KPRI 	  3		0	; slot3 = nil
		  9	[  0]	RET1 	  3		2	; return slot3
		 10	[  0]	TGETS	  3	2	5	; slot3 = uv0"unknown"._hudHit.cancelBtn
		 11	[  0]	ISF  	   		3	; if not uv0"unknown"._hudHit.cancelBtn
		 12	[  0]	JMP  	  4		18	; 	goto 31
		 13	[  0]	TGETS	  4	3	4	; slot4 = uv0"unknown"._hudHit.cancelBtn.x
		 14	[  0]	ISGT 	  4		0	; if uv0"unknown"._hudHit.cancelBtn.x > slot0
		 15	[  0]	JMP  	  4		15	; 	goto 31
		 16	[  0]	TGETS	  4	3	4	; slot4 = uv0"unknown"._hudHit.cancelBtn.x
		 17	[  0]	TGETS	  5	3	3	; slot5 = uv0"unknown"._hudHit.cancelBtn.w
		 18	[  0]	ADDVV	  4	4	5	; slot4 = uv0"unknown"._hudHit.cancelBtn.x + uv0"unknown"._hudHit.cancelBtn.w
		 19	[  0]	ISGT 	  0		4	; if slot0 > slot4
		 20	[  0]	JMP  	  4		10	; 	goto 31
		 21	[  0]	TGETS	  4	3	2	; slot4 = uv0"unknown"._hudHit.cancelBtn.y
		 22	[  0]	ISGT 	  4		1	; if uv0"unknown"._hudHit.cancelBtn.y > slot1
		 23	[  0]	JMP  	  4		7	; 	goto 31
		 24	[  0]	TGETS	  4	3	2	; slot4 = uv0"unknown"._hudHit.cancelBtn.y
		 25	[  0]	TGETS	  5	3	1	; slot5 = uv0"unknown"._hudHit.cancelBtn.h
		 26	[  0]	ADDVV	  4	4	5	; slot4 = uv0"unknown"._hudHit.cancelBtn.y + uv0"unknown"._hudHit.cancelBtn.h
		 27	[  0]	ISGT 	  1		4	; if slot1 > slot4
		 28	[  0]	JMP  	  4		2	; 	goto 31
		 29	[  0]	TDUP 	  4		0	; slot4 = copy table#k0
		 30	[  0]	RET1 	  4		2	; return slot4
		 31	[  0]	KPRI 	  4		0	; slot4 = nil
		 32	[  0]	RET1 	  4		2	; return slot4
	156	[  0]	TSETS	 77	0	48	; slot0.hudHitTest = slot77
	157	[  0]	FNEW 	 77		45	; N/A:0-0: 0 args, 2 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	KPRI 	  1		2	; slot1 = true
		  3	[  0]	TSETS	  1	0	2	; uv0"unknown".cancelBtnPressed = slot1
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	KNUM 	  1		0	; slot1 = 0.15
		  6	[  0]	TSETS	  1	0	1	; uv0"unknown".cancelBtnTimer = slot1
		  7	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  8	[  0]	KPRI 	  1		1	; slot1 = false
		  9	[  0]	TSETS	  1	0	0	; uv1"unknown"._cancelTriggered = slot1
		 10	[  0]	RET0 	  0		1	; return
	158	[  0]	TSETS	 77	0	46	; slot0.triggerCancel = slot77
	159	[  0]	FNEW 	 77		43	; N/A:0-0: 0 args, 2 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	KPRI 	  1		2	; slot1 = true
		  3	[  0]	TSETS	  1	0	2	; uv0"unknown".convertBtnPressed = slot1
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	KNUM 	  1		0	; slot1 = 0.15
		  6	[  0]	TSETS	  1	0	1	; uv0"unknown".convertBtnTimer = slot1
		  7	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  8	[  0]	KPRI 	  1		1	; slot1 = false
		  9	[  0]	TSETS	  1	0	0	; uv1"unknown"._convertTriggered = slot1
		 10	[  0]	RET0 	  0		1	; return
	160	[  0]	TSETS	 77	0	44	; slot0.triggerConvert = slot77
	161	[  0]	FNEW 	 77		41	; N/A:0-0: 1 args, 2 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	KPRI 	  2		2	; slot2 = true
		  3	[  0]	TSETS	  2	1	3	; uv0"unknown".upgradeBtnPressed = slot2
		  4	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  5	[  0]	KNUM 	  2		0	; slot2 = 0.15
		  6	[  0]	TSETS	  2	1	2	; uv0"unknown".upgradeBtnTimer = slot2
		  7	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  8	[  0]	TSETS	  0	1	1	; uv1"unknown"._upgradeSlot = slot0
		  9	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 10	[  0]	KPRI 	  2		1	; slot2 = false
		 11	[  0]	TSETS	  2	1	0	; uv1"unknown"._upgradeTriggered = slot2
		 12	[  0]	RET0 	  0		1	; return
	162	[  0]	TSETS	 77	0	42	; slot0.triggerUpgrade = slot77
	163	[  0]	FNEW 	 77		39	; N/A:0-0: 2 args, 2 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	KPRI 	  3		2	; slot3 = true
		  3	[  0]	TSETS	  3	2	4	; uv0"unknown".confirmBtnPressed = slot3
		  4	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  5	[  0]	KNUM 	  3		0	; slot3 = 0.15
		  6	[  0]	TSETS	  3	2	3	; uv0"unknown".confirmBtnTimer = slot3
		  7	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  8	[  0]	TSETS	  0	2	2	; uv1"unknown"._confirmSlot = slot0
		  9	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 10	[  0]	TSETS	  1	2	1	; uv1"unknown"._confirmAction = slot1
		 11	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 12	[  0]	KPRI 	  3		1	; slot3 = false
		 13	[  0]	TSETS	  3	2	0	; uv1"unknown"._confirmTriggered = slot3
		 14	[  0]	RET0 	  0		1	; return
	164	[  0]	TSETS	 77	0	40	; slot0.triggerConfirm = slot77
	165	[  0]	FNEW 	 77		37	; N/A:0-0: 1 args, 2 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	KPRI 	  2		2	; slot2 = true
		  3	[  0]	TSETS	  2	1	3	; uv0"unknown".changeBtnPressed = slot2
		  4	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  5	[  0]	KNUM 	  2		0	; slot2 = 0.15
		  6	[  0]	TSETS	  2	1	2	; uv0"unknown".changeBtnTimer = slot2
		  7	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  8	[  0]	TSETS	  0	1	1	; uv1"unknown"._changeSlot = slot0
		  9	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 10	[  0]	KPRI 	  2		1	; slot2 = false
		 11	[  0]	TSETS	  2	1	0	; uv1"unknown"._changeTriggered = slot2
		 12	[  0]	RET0 	  0		1	; return
	166	[  0]	TSETS	 77	0	38	; slot0.triggerChange = slot77
	167	[  0]	FNEW 	 77		36	; N/A:0-0: 3 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  3		2	; slot3 = slot2; if not slot2
		  2	[  0]	JMP  	  3		19	; 	goto 22
		  3	[  0]	TGETS	  3	2	3	; slot3 = slot2.x
		  4	[  0]	ISGT 	  3		0	; if <unknown table>.x > slot0
		  5	[  0]	JMP  	  3		13	; 	goto 19
		  6	[  0]	TGETS	  3	2	3	; slot3 = slot2.x
		  7	[  0]	TGETS	  4	2	2	; slot4 = slot2.w
		  8	[  0]	ADDVV	  3	3	4	; slot3 = <unknown table>.x + <unknown table>.w
		  9	[  0]	ISGT 	  0		3	; if slot0 > slot3
		 10	[  0]	JMP  	  3		8	; 	goto 19
		 11	[  0]	TGETS	  3	2	1	; slot3 = slot2.y
		 12	[  0]	ISGT 	  3		1	; if <unknown table>.y > slot1
		 13	[  0]	JMP  	  3		5	; 	goto 19
		 14	[  0]	TGETS	  3	2	1	; slot3 = slot2.y
		 15	[  0]	TGETS	  4	2	0	; slot4 = slot2.h
		 16	[  0]	ADDVV	  3	3	4	; slot3 = <unknown table>.y + <unknown table>.h
		 17	[  0]	ISLE 	  1		3	; if slot1 <= slot3
		 18	[  0]	JMP  	  3		2	; 	goto 21
		 19	[  0]	KPRI 	  3		1	; slot3 = false
		 20	[  0]	JMP  	  4		1	; 	goto 22
		 21	[  0]	KPRI 	  3		2	; slot3 = true
		 22	[  0]	RET1 	  3		2	; return slot3
	168	[  0]	FNEW 	 78		34	; N/A:0-0: 2 args, 2 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			[kind] = mode,
			[mode] = keep,
			]
		
		
		ktable#2 = [
			[kind] = mode,
			[mode] = replace,
			]
		
		
		ktable#5 = [
			[kind] = slot,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	9	; slot2 = uv0"unknown"._hit
		  3	[  0]	ISF  	   		2	; if not uv0"unknown"._hit
		  4	[  0]	JMP  	  3		3	; 	goto 8
		  5	[  0]	TGETS	  3	2	8	; slot3 = uv0"unknown"._hit.active
		  6	[  0]	IST  	   		3	; if uv0"unknown"._hit.active
		  7	[  0]	JMP  	  3		2	; 	goto 10
		  8	[  0]	KPRI 	  3		0	; slot3 = nil
		  9	[  0]	RET1 	  3		2	; return slot3
		 10	[  0]	TGETS	  3	2	7	; slot3 = uv0"unknown"._hit.slots
		 11	[  0]	ISF  	   		3	; if not uv0"unknown"._hit.slots
		 12	[  0]	JMP  	  4		17	; 	goto 30
		 13	[  0]	GGET 	  3		6	; slot3 = _env["ipairs"]
		 14	[  0]	TGETS	  5	2	7	; slot5 = uv0"unknown"._hit.slots
		 15	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
		 16	[  0]	JMP  	  6		11	; 	goto 28
		 17	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 18	[  0]	MOV  	 10		0	; slot10 = slot0
		 19	[  0]	MOV  	 11		1	; slot11 = slot1
		 20	[  0]	MOV  	 12		7	; slot12 = slot7
		 21	[  0]	CALL 	  8	2	4	; slot8 = uv1"unknown"(slot9, slot10, slot11)
		 22	[  0]	ISF  	   		8	; if not uv1"unknown"
		 23	[  0]	JMP  	  9		4	; 	goto 28
		 24	[  0]	TDUP 	  8		5	; slot8 = copy table#k5
		 25	[  0]	TGETS	  9	7	4	; slot9 = slot7.slot
		 26	[  0]	TSETS	  9	8	4	; slot8.slot = <unknown table>.slot
		 27	[  0]	RET1 	  8		2	; return slot8
		 28	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, uv0"unknown"._hit.slots; slot6, slot7 = ipairs(slot4, uv0"unknown"._hit.slots)
		 29	[  0]	ITERL	  6		-13	; uv0"unknown"._hit.slots = slot6; if slot6 != nil goto 17
		 30	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 31	[  0]	MOV  	  5		0	; slot5 = slot0
		 32	[  0]	MOV  	  6		1	; slot6 = slot1
		 33	[  0]	TGETS	  7	2	3	; slot7 = uv0"unknown"._hit.replaceBtn
		 34	[  0]	CALL 	  3	2	4	; slot3 = uv1"unknown"(slot4, slot5, slot6)
		 35	[  0]	ISF  	   		3	; if not slot3
		 36	[  0]	JMP  	  4		2	; 	goto 39
		 37	[  0]	TDUP 	  3		2	; slot3 = copy table#k2
		 38	[  0]	RET1 	  3		2	; return slot3
		 39	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 40	[  0]	MOV  	  5		0	; slot5 = slot0
		 41	[  0]	MOV  	  6		1	; slot6 = slot1
		 42	[  0]	TGETS	  7	2	1	; slot7 = uv0"unknown"._hit.keepBtn
		 43	[  0]	CALL 	  3	2	4	; slot3 = uv1"unknown"(slot4, slot5, slot6)
		 44	[  0]	ISF  	   		3	; if not slot3
		 45	[  0]	JMP  	  4		2	; 	goto 48
		 46	[  0]	TDUP 	  3		0	; slot3 = copy table#k0
		 47	[  0]	RET1 	  3		2	; return slot3
		 48	[  0]	KPRI 	  3		0	; slot3 = nil
		 49	[  0]	RET1 	  3		2	; return slot3
	169	[  0]	TSETS	 78	0	35	; slot0.hitTest = slot78
	170	[  0]	FNEW 	 78		32	; N/A:0-0: 2 args, 2 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			[kind] = arrow,
			]
		
		
		ktable#3 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	8	; slot2 = uv0"unknown"._modalHit
		  3	[  0]	ISF  	   		2	; if not uv0"unknown"._modalHit
		  4	[  0]	JMP  	  3		3	; 	goto 8
		  5	[  0]	TGETS	  3	2	7	; slot3 = uv0"unknown"._modalHit.active
		  6	[  0]	IST  	   		3	; if uv0"unknown"._modalHit.active
		  7	[  0]	JMP  	  3		2	; 	goto 10
		  8	[  0]	KPRI 	  3		0	; slot3 = nil
		  9	[  0]	RET1 	  3		2	; return slot3
		 10	[  0]	TGETS	  3	2	6	; slot3 = uv0"unknown"._modalHit.buttons
		 11	[  0]	ISF  	   		3	; if not uv0"unknown"._modalHit.buttons
		 12	[  0]	JMP  	  4		19	; 	goto 32
		 13	[  0]	GGET 	  3		5	; slot3 = _env["ipairs"]
		 14	[  0]	TGETS	  5	2	6	; slot5 = uv0"unknown"._modalHit.buttons
		 15	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
		 16	[  0]	JMP  	  6		13	; 	goto 30
		 17	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 18	[  0]	MOV  	 10		0	; slot10 = slot0
		 19	[  0]	MOV  	 11		1	; slot11 = slot1
		 20	[  0]	MOV  	 12		7	; slot12 = slot7
		 21	[  0]	CALL 	  8	2	4	; slot8 = uv1"unknown"(slot9, slot10, slot11)
		 22	[  0]	ISF  	   		8	; if not uv1"unknown"
		 23	[  0]	JMP  	  9		6	; 	goto 30
		 24	[  0]	TDUP 	  8		3	; slot8 = copy table#k3
		 25	[  0]	TGETS	  9	7	4	; slot9 = slot7.kind
		 26	[  0]	TSETS	  9	8	4	; slot8.kind = <unknown table>.kind
		 27	[  0]	TGETS	  9	7	2	; slot9 = slot7.slot
		 28	[  0]	TSETS	  9	8	2	; slot8.slot = <unknown table>.slot
		 29	[  0]	RET1 	  8		2	; return slot8
		 30	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, uv0"unknown"._modalHit.buttons; slot6, slot7 = ipairs(slot4, uv0"unknown"._modalHit.buttons)
		 31	[  0]	ITERL	  6		-15	; uv0"unknown"._modalHit.buttons = slot6; if slot6 != nil goto 17
		 32	[  0]	TGETS	  3	2	1	; slot3 = uv0"unknown"._modalHit.arrows
		 33	[  0]	ISF  	   		3	; if not uv0"unknown"._modalHit.arrows
		 34	[  0]	JMP  	  4		17	; 	goto 52
		 35	[  0]	GGET 	  3		5	; slot3 = _env["ipairs"]
		 36	[  0]	TGETS	  5	2	1	; slot5 = uv0"unknown"._modalHit.arrows
		 37	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
		 38	[  0]	JMP  	  6		11	; 	goto 50
		 39	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 40	[  0]	MOV  	 10		0	; slot10 = slot0
		 41	[  0]	MOV  	 11		1	; slot11 = slot1
		 42	[  0]	MOV  	 12		7	; slot12 = slot7
		 43	[  0]	CALL 	  8	2	4	; slot8 = uv1"unknown"(<unknown table>.slot, slot10, slot11)
		 44	[  0]	ISF  	   		8	; if not uv1"unknown"
		 45	[  0]	JMP  	  9		4	; 	goto 50
		 46	[  0]	TDUP 	  8		0	; slot8 = copy table#k0
		 47	[  0]	TGETS	  9	7	2	; slot9 = slot7.slot
		 48	[  0]	TSETS	  9	8	2	; slot8.slot = <unknown table>.slot
		 49	[  0]	RET1 	  8		2	; return slot8
		 50	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, uv0"unknown"._modalHit.arrows; slot6, slot7 = ipairs(slot4, uv0"unknown"._modalHit.arrows)
		 51	[  0]	ITERL	  6		-13	; uv0"unknown"._modalHit.arrows = slot6; if slot6 != nil goto 39
		 52	[  0]	KPRI 	  3		0	; slot3 = nil
		 53	[  0]	RET1 	  3		2	; return slot3
	171	[  0]	TSETS	 78	0	33	; slot0.modalHitTest = slot78
	172	[  0]	FNEW 	 78		30	; N/A:0-0: 2 args, 1 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	4	; slot2 = uv0"unknown"._absorbLvRect
		  3	[  0]	IST  	   		2	; if uv0"unknown"._absorbLvRect
		  4	[  0]	JMP  	  3		2	; 	goto 7
		  5	[  0]	KPRI 	  3		1	; slot3 = false
		  6	[  0]	RET1 	  3		2	; return slot3
		  7	[  0]	TGETS	  3	2	3	; slot3 = uv0"unknown"._absorbLvRect.x
		  8	[  0]	ISGT 	  3		0	; if uv0"unknown"._absorbLvRect.x > slot0
		  9	[  0]	JMP  	  3		15	; 	goto 25
		 10	[  0]	TGETS	  3	2	3	; slot3 = uv0"unknown"._absorbLvRect.x
		 11	[  0]	TGETS	  4	2	2	; slot4 = uv0"unknown"._absorbLvRect.w
		 12	[  0]	ADDVV	  3	3	4	; slot3 = uv0"unknown"._absorbLvRect.x + uv0"unknown"._absorbLvRect.w
		 13	[  0]	ISGT 	  0		3	; if slot0 > slot3
		 14	[  0]	JMP  	  3		10	; 	goto 25
		 15	[  0]	TGETS	  3	2	1	; slot3 = uv0"unknown"._absorbLvRect.y
		 16	[  0]	ISGT 	  3		1	; if uv0"unknown"._absorbLvRect.y > slot1
		 17	[  0]	JMP  	  3		7	; 	goto 25
		 18	[  0]	TGETS	  3	2	1	; slot3 = uv0"unknown"._absorbLvRect.y
		 19	[  0]	TGETS	  4	2	0	; slot4 = uv0"unknown"._absorbLvRect.h
		 20	[  0]	ADDVV	  3	3	4	; slot3 = uv0"unknown"._absorbLvRect.y + uv0"unknown"._absorbLvRect.h
		 21	[  0]	ISGT 	  1		3	; if slot1 > slot3
		 22	[  0]	JMP  	  3		2	; 	goto 25
		 23	[  0]	KPRI 	  3		2	; slot3 = true
		 24	[  0]	RET1 	  3		2	; return slot3
		 25	[  0]	KPRI 	  3		1	; slot3 = false
		 26	[  0]	RET1 	  3		2	; return slot3
	173	[  0]	TSETS	 78	0	31	; slot0.absorbLvHitTest = slot78
	174	[  0]	FNEW 	 78		28	; N/A:0-0: 2 args, 1 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	5	; slot2 = uv0"unknown"._absorbLockRect
		  3	[  0]	ISF  	   		2	; if not uv0"unknown"._absorbLockRect
		  4	[  0]	JMP  	  3		4	; 	goto 9
		  5	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  6	[  0]	TGETS	  3	3	4	; slot3 = uv0"unknown"._absorbLockUnit
		  7	[  0]	IST  	   		3	; if uv0"unknown"._absorbLockUnit
		  8	[  0]	JMP  	  3		2	; 	goto 11
		  9	[  0]	KPRI 	  3		0	; slot3 = nil
		 10	[  0]	RET1 	  3		2	; return slot3
		 11	[  0]	TGETS	  3	2	3	; slot3 = uv0"unknown"._absorbLockRect.x
		 12	[  0]	ISGT 	  3		0	; if uv0"unknown"._absorbLockRect.x > slot0
		 13	[  0]	JMP  	  3		16	; 	goto 30
		 14	[  0]	TGETS	  3	2	3	; slot3 = uv0"unknown"._absorbLockRect.x
		 15	[  0]	TGETS	  4	2	2	; slot4 = uv0"unknown"._absorbLockRect.w
		 16	[  0]	ADDVV	  3	3	4	; slot3 = uv0"unknown"._absorbLockRect.x + uv0"unknown"._absorbLockRect.w
		 17	[  0]	ISGT 	  0		3	; if slot0 > slot3
		 18	[  0]	JMP  	  3		11	; 	goto 30
		 19	[  0]	TGETS	  3	2	1	; slot3 = uv0"unknown"._absorbLockRect.y
		 20	[  0]	ISGT 	  3		1	; if uv0"unknown"._absorbLockRect.y > slot1
		 21	[  0]	JMP  	  3		8	; 	goto 30
		 22	[  0]	TGETS	  3	2	1	; slot3 = uv0"unknown"._absorbLockRect.y
		 23	[  0]	TGETS	  4	2	0	; slot4 = uv0"unknown"._absorbLockRect.h
		 24	[  0]	ADDVV	  3	3	4	; slot3 = uv0"unknown"._absorbLockRect.y + uv0"unknown"._absorbLockRect.h
		 25	[  0]	ISGT 	  1		3	; if slot1 > slot3
		 26	[  0]	JMP  	  3		3	; 	goto 30
		 27	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 28	[  0]	TGETS	  3	3	4	; slot3 = uv0"unknown"._absorbLockUnit
		 29	[  0]	RET1 	  3		2	; return uv0"unknown"._absorbLockUnit
		 30	[  0]	KPRI 	  3		0	; slot3 = nil
		 31	[  0]	RET1 	  3		2	; return slot3
	175	[  0]	TSETS	 78	0	29	; slot0.absorbLockHitTest = slot78
	176	[  0]	FNEW 	 78		26	; N/A:0-0: 1 args, 1 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		ktable#2 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		11	; slot1 = _env["math"]
		  2	[  0]	TGETS	  1	1	10	; slot1 = math.max
		  3	[  0]	KSHORT	  3		1	; slot3 = 1
		  4	[  0]	GGET 	  4		11	; slot4 = _env["math"]
		  5	[  0]	TGETS	  4	4	9	; slot4 = math.floor
		  6	[  0]	GGET 	  6		8	; slot6 = _env["tonumber"]
		  7	[  0]	ISF  	   		0	; if not slot0
		  8	[  0]	JMP  	  8		3	; 	goto 12
		  9	[  0]	TGETS	  8	0	7	; slot8 = slot0.absorbLV
		 10	[  0]	IST  	   		8	; if <unknown table>.absorbLV
		 11	[  0]	JMP  	  9		1	; 	goto 13
		 12	[  0]	KSHORT	  8		1	; slot8 = 1
		 13	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
		 14	[  0]	IST  	   		6	; if tonumber
		 15	[  0]	JMP  	  7		1	; 	goto 17
		 16	[  0]	KSHORT	  6		1	; slot6 = 1
		 17	[  0]	CALL 	  4	0	2	; MULTRES = math.floor(slot5)
		 18	[  0]	CALLM	  1	2	1	; slot1 = math.max(slot2, ...MULTRES)
		 19	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 20	[  0]	TGETS	  2	2	6	; slot2 = uv0"unknown".evolution
		 21	[  0]	TGETS	  2	2	5	; slot2 = uv0"unknown".evolution.getAbsorbLvMultipliers
		 22	[  0]	SUBVN	  4	1	0	; slot4 = slot1 - 1
		 23	[  0]	ISFC 	  5		0	; slot5 = slot0; if not slot0
		 24	[  0]	JMP  	  5		1	; 	goto 26
		 25	[  0]	TGETS	  5	0	4	; slot5 = slot0.grade
		 26	[  0]	CALL 	  2	2	3	; slot2 = uv0"unknown".evolution.getAbsorbLvMultipliers(slot3, slot4)
		 27	[  0]	TDUP 	  3		2	; slot3 = copy table#k2
		 28	[  0]	TGETS	  4	2	3	; slot4 = slot2.atk
		 29	[  0]	SUBVN	  4	4	0	; slot4 = <unknown table>.atk - 1
		 30	[  0]	MULVN	  4	4	1	; slot4 = slot4 * 100
		 31	[  0]	TSETS	  4	3	3	; slot3.atk = slot4
		 32	[  0]	TGETS	  4	2	1	; slot4 = slot2.aspd
		 33	[  0]	SUBVN	  4	4	0	; slot4 = <unknown table>.aspd - 1
		 34	[  0]	MULVN	  4	4	1	; slot4 = slot4 * 100
		 35	[  0]	TSETS	  4	3	1	; slot3.aspd = slot4
		 36	[  0]	TGETS	  4	2	0	; slot4 = slot2.hp
		 37	[  0]	SUBVN	  4	4	0	; slot4 = <unknown table>.hp - 1
		 38	[  0]	MULVN	  4	4	1	; slot4 = slot4 * 100
		 39	[  0]	TSETS	  4	3	0	; slot3.hp = slot4
		 40	[  0]	RET1 	  3		2	; return slot3
	177	[  0]	TSETS	 78	0	27	; slot0.getAbsorbLvStats = slot78
	178	[  0]	FNEW 	 78		24	; N/A:0-0: 1 args, 2 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	10	; slot1 = uv0"unknown".getAbsorbLvStats
		  3	[  0]	MOV  	  3		0	; slot3 = slot0
		  4	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown".getAbsorbLvStats(slot2)
		  5	[  0]	GGET 	  2		9	; slot2 = _env["string"]
		  6	[  0]	TGETS	  2	2	8	; slot2 = string.format
		  7	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		  8	[  0]	TGETS	  4	4	7	; slot4 = uv1"unknown".getText
		  9	[  0]	KSTR 	  6		6	; slot6 = "imprint_absorb_stat_fmt"
		 10	[  0]	GGET 	  7		5	; slot7 = _env["_G"]
		 11	[  0]	TGETS	  7	7	4	; slot7 = _G.currentGameLang
		 12	[  0]	IST  	   		7	; if _G.currentGameLang
		 13	[  0]	JMP  	  8		1	; 	goto 15
		 14	[  0]	KSTR 	  7		3	; slot7 = "ko"
		 15	[  0]	CALL 	  4	2	3	; slot4 = uv1"unknown".getText(slot5, slot6)
		 16	[  0]	TGETS	  5	1	2	; slot5 = slot1.atk
		 17	[  0]	TGETS	  6	1	1	; slot6 = slot1.aspd
		 18	[  0]	TGETS	  7	1	0	; slot7 = slot1.hp
		 19	[  0]	CALLT	  2		5	; return string.format(slot3, uv1"unknown".getText, <unknown table>.atk, <unknown table>.aspd)
	179	[  0]	TSETS	 78	0	25	; slot0.getAbsorbLvHoverText = slot78
	180	[  0]	FNEW 	 78		22	; N/A:0-0: 2 args, 9 upvalues, 60 slots
		
		;;;; constant tables ;;;;
		ktable#25 = [
			]
		
		
		ktable#30 = [
			[active] = true,
			]
		
		
		ktable#56 = [
			[active] = false,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		11	; 	goto 14
		  3	[  0]	ISF  	   		1	; if not slot1
		  4	[  0]	JMP  	  2		9	; 	goto 14
		  5	[  0]	TGETS	  2	1	60	; slot2 = slot1.active
		  6	[  0]	ISF  	   		2	; if not <unknown table>.active
		  7	[  0]	JMP  	  3		6	; 	goto 14
		  8	[  0]	TGETS	  2	1	59	; slot2 = slot1.absorber
		  9	[  0]	ISF  	   		2	; if not <unknown table>.absorber
		 10	[  0]	JMP  	  3		3	; 	goto 14
		 11	[  0]	TGETS	  2	1	58	; slot2 = slot1.pending
		 12	[  0]	IST  	   		2	; if <unknown table>.pending
		 13	[  0]	JMP  	  2		4	; 	goto 18
		 14	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 15	[  0]	TDUP 	  3		56	; slot3 = copy table#k56
		 16	[  0]	TSETS	  3	2	57	; uv0"unknown"._modalHit = slot3
		 17	[  0]	RET0 	  0		1	; return
		 18	[  0]	TGETS	  2	0	55	; slot2 = slot0.scale
		 19	[  0]	IST  	   		2	; if <unknown table>.scale
		 20	[  0]	JMP  	  3		1	; 	goto 22
		 21	[  0]	KSHORT	  2		1	; slot2 = 1
		 22	[  0]	TGETS	  3	0	54	; slot3 = slot0.font
		 23	[  0]	ISF  	   		3	; if not <unknown table>.font
		 24	[  0]	JMP  	  4		5	; 	goto 30
		 25	[  0]	GGET 	  4		53	; slot4 = _env["love"]
		 26	[  0]	TGETS	  4	4	52	; slot4 = love.graphics
		 27	[  0]	TGETS	  4	4	51	; slot4 = love.graphics.setFont
		 28	[  0]	MOV  	  6		3	; slot6 = <unknown table>.font
		 29	[  0]	CALL 	  4	1	2	;  = love.graphics.setFont(slot5)
		 30	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 31	[  0]	TGETS	  4	4	50	; slot4 = uv1"unknown".compute
		 32	[  0]	MOV  	  6		0	; slot6 = slot0
		 33	[  0]	CALL 	  4	2	2	; slot4 = uv1"unknown".compute(slot5)
		 34	[  0]	TGETS	  5	0	49	; slot5 = slot0.virtual
		 35	[  0]	ISF  	   		5	; if not <unknown table>.virtual
		 36	[  0]	JMP  	  6		4	; 	goto 41
		 37	[  0]	TGETS	  5	0	49	; slot5 = slot0.virtual
		 38	[  0]	TGETS	  5	5	48	; slot5 = <unknown table>.virtual.W
		 39	[  0]	IST  	   		5	; if <unknown table>.virtual.W
		 40	[  0]	JMP  	  6		10	; 	goto 51
		 41	[  0]	ISF  	   		4	; if not uv1"unknown".compute
		 42	[  0]	JMP  	  5		7	; 	goto 50
		 43	[  0]	TGETS	  5	4	47	; slot5 = uv1"unknown".compute.screen
		 44	[  0]	ISF  	   		5	; if not uv1"unknown".compute.screen
		 45	[  0]	JMP  	  6		4	; 	goto 50
		 46	[  0]	TGETS	  5	4	47	; slot5 = uv1"unknown".compute.screen
		 47	[  0]	TGETS	  5	5	48	; slot5 = uv1"unknown".compute.screen.W
		 48	[  0]	IST  	   		5	; if uv1"unknown".compute.screen.W
		 49	[  0]	JMP  	  6		1	; 	goto 51
		 50	[  0]	KSHORT	  5		1280	; slot5 = 1280
		 51	[  0]	TGETS	  6	0	49	; slot6 = slot0.virtual
		 52	[  0]	ISF  	   		6	; if not <unknown table>.virtual
		 53	[  0]	JMP  	  7		4	; 	goto 58
		 54	[  0]	TGETS	  6	0	49	; slot6 = slot0.virtual
		 55	[  0]	TGETS	  6	6	46	; slot6 = <unknown table>.virtual.H
		 56	[  0]	IST  	   		6	; if <unknown table>.virtual.H
		 57	[  0]	JMP  	  7		10	; 	goto 68
		 58	[  0]	ISF  	   		4	; if not uv1"unknown".compute
		 59	[  0]	JMP  	  6		7	; 	goto 67
		 60	[  0]	TGETS	  6	4	47	; slot6 = uv1"unknown".compute.screen
		 61	[  0]	ISF  	   		6	; if not uv1"unknown".compute.screen
		 62	[  0]	JMP  	  7		4	; 	goto 67
		 63	[  0]	TGETS	  6	4	47	; slot6 = uv1"unknown".compute.screen
		 64	[  0]	TGETS	  6	6	46	; slot6 = uv1"unknown".compute.screen.H
		 65	[  0]	IST  	   		6	; if uv1"unknown".compute.screen.H
		 66	[  0]	JMP  	  7		1	; 	goto 68
		 67	[  0]	KSHORT	  6		720	; slot6 = 720
		 68	[  0]	GGET 	  7		45	; slot7 = _env["math"]
		 69	[  0]	TGETS	  7	7	44	; slot7 = math.floor
		 70	[  0]	MULNV	  9	2	0	; slot9 = 520 * slot2
		 71	[  0]	ADDVN	  9	9	1	; slot9 = slot9 + 0.5
		 72	[  0]	CALL 	  7	2	2	; slot7 = math.floor(slot8)
		 73	[  0]	GGET 	  8		45	; slot8 = _env["math"]
		 74	[  0]	TGETS	  8	8	44	; slot8 = math.floor
		 75	[  0]	MULNV	 10	2	2	; slot10 = 190 * slot2
		 76	[  0]	ADDVN	 10	10	1	; slot10 = slot10 + 0.5
		 77	[  0]	CALL 	  8	2	2	; slot8 = math.floor(slot9)
		 78	[  0]	GGET 	  9		45	; slot9 = _env["math"]
		 79	[  0]	TGETS	  9	9	44	; slot9 = math.floor
		 80	[  0]	SUBVV	 11	5	7	; slot11 = slot5 - math.floor
		 81	[  0]	DIVVN	 11	11	3	; slot11 = slot11 / 2
		 82	[  0]	ADDVN	 11	11	1	; slot11 = slot11 + 0.5
		 83	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		 84	[  0]	ISF  	   		4	; if not uv1"unknown".compute
		 85	[  0]	JMP  	 10		7	; 	goto 93
		 86	[  0]	TGETS	 10	4	43	; slot10 = uv1"unknown".compute.right
		 87	[  0]	ISF  	   		10	; if not uv1"unknown".compute.right
		 88	[  0]	JMP  	 11		4	; 	goto 93
		 89	[  0]	TGETS	 10	4	43	; slot10 = uv1"unknown".compute.right
		 90	[  0]	TGETS	 10	10	42	; slot10 = uv1"unknown".compute.right.y
		 91	[  0]	IST  	   		10	; if uv1"unknown".compute.right.y
		 92	[  0]	JMP  	 11		5	; 	goto 98
		 93	[  0]	GGET 	 10		45	; slot10 = _env["math"]
		 94	[  0]	TGETS	 10	10	44	; slot10 = math.floor
		 95	[  0]	MULNV	 12	2	4	; slot12 = 40 * slot2
		 96	[  0]	ADDVN	 12	12	1	; slot12 = slot12 + 0.5
		 97	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
		 98	[  0]	GGET 	 11		45	; slot11 = _env["math"]
		 99	[  0]	TGETS	 11	11	44	; slot11 = math.floor
		100	[  0]	GGET 	 13		45	; slot13 = _env["math"]
		101	[  0]	TGETS	 13	13	41	; slot13 = math.max
		102	[  0]	TGETS	 15	0	40	; slot15 = slot0.margin
		103	[  0]	IST  	   		15	; if <unknown table>.margin
		104	[  0]	JMP  	 16		1	; 	goto 106
		105	[  0]	KSHORT	 15		0	; slot15 = 0
		106	[  0]	MULNV	 16	2	5	; slot16 = 6 * slot2
		107	[  0]	ADDVV	 15	15	16	; slot15 = slot15 + slot16
		108	[  0]	GGET 	 16		45	; slot16 = _env["math"]
		109	[  0]	TGETS	 16	16	44	; slot16 = math.floor
		110	[  0]	MULNV	 18	2	6	; slot18 = 26 * slot2
		111	[  0]	ADDVN	 18	18	1	; slot18 = slot18 + 0.5
		112	[  0]	CALL 	 16	2	2	; slot16 = math.floor(slot17)
		113	[  0]	SUBVV	 16	10	16	; slot16 = math.floor - math.floor
		114	[  0]	CALL 	 13	2	3	; slot13 = math.max(slot14, slot15)
		115	[  0]	ADDVN	 13	13	1	; slot13 = math.max + 0.5
		116	[  0]	CALL 	 11	2	2	; slot11 = math.floor(slot12)
		117	[  0]	ADDVV	 12	11	8	; slot12 = math.floor + math.floor
		118	[  0]	TGETS	 13	0	40	; slot13 = slot0.margin
		119	[  0]	IST  	   		13	; if <unknown table>.margin
		120	[  0]	JMP  	 14		1	; 	goto 122
		121	[  0]	KSHORT	 13		0	; slot13 = 0
		122	[  0]	SUBVV	 13	6	13	; slot13 = slot6 - slot13
		123	[  0]	ISGE 	 13		12	; if slot13 >= slot12
		124	[  0]	JMP  	 12		14	; 	goto 139
		125	[  0]	GGET 	 12		45	; slot12 = _env["math"]
		126	[  0]	TGETS	 12	12	41	; slot12 = math.max
		127	[  0]	TGETS	 14	0	40	; slot14 = slot0.margin
		128	[  0]	IST  	   		14	; if <unknown table>.margin
		129	[  0]	JMP  	 15		1	; 	goto 131
		130	[  0]	KSHORT	 14		0	; slot14 = 0
		131	[  0]	TGETS	 15	0	40	; slot15 = slot0.margin
		132	[  0]	IST  	   		15	; if <unknown table>.margin
		133	[  0]	JMP  	 16		1	; 	goto 135
		134	[  0]	KSHORT	 15		0	; slot15 = 0
		135	[  0]	SUBVV	 15	6	15	; slot15 = slot6 - slot15
		136	[  0]	SUBVV	 15	15	8	; slot15 = slot15 - math.floor
		137	[  0]	CALL 	 12	2	3	; slot12 = math.max(slot13, slot14)
		138	[  0]	MOV  	 11		12	; slot11 = math.max
		139	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		140	[  0]	UGET 	 14		0	; slot14 = uv0"unknwon"
		141	[  0]	CALL 	 12	2	2	; slot12 = uv2"unknown"(slot13)
		142	[  0]	ISF  	   		12	; if not uv2"unknown"
		143	[  0]	JMP  	 13		16	; 	goto 160
		144	[  0]	GGET 	 13		53	; slot13 = _env["love"]
		145	[  0]	TGETS	 13	13	52	; slot13 = love.graphics
		146	[  0]	TGETS	 13	13	39	; slot13 = love.graphics.setColor
		147	[  0]	KSHORT	 15		1	; slot15 = 1
		148	[  0]	KSHORT	 16		1	; slot16 = 1
		149	[  0]	KSHORT	 17		1	; slot17 = 1
		150	[  0]	KSHORT	 18		1	; slot18 = 1
		151	[  0]	CALL 	 13	1	5	;  = love.graphics.setColor(uv0"unknown", slot15, slot16, slot17)
		152	[  0]	GGET 	 13		53	; slot13 = _env["love"]
		153	[  0]	TGETS	 13	13	52	; slot13 = love.graphics
		154	[  0]	TGETS	 13	13	38	; slot13 = love.graphics.draw
		155	[  0]	MOV  	 15		12	; slot15 = uv2"unknown"
		156	[  0]	KSHORT	 16		0	; slot16 = 0
		157	[  0]	KSHORT	 17		0	; slot17 = 0
		158	[  0]	CALL 	 13	1	4	;  = love.graphics.draw(uv0"unknown", uv2"unknown", slot16)
		159	[  0]	JMP  	 13		34	; 	goto 194
		160	[  0]	GGET 	 13		53	; slot13 = _env["love"]
		161	[  0]	TGETS	 13	13	52	; slot13 = love.graphics
		162	[  0]	TGETS	 13	13	39	; slot13 = love.graphics.setColor
		163	[  0]	KNUM 	 15		7	; slot15 = 0.08
		164	[  0]	KNUM 	 16		7	; slot16 = 0.08
		165	[  0]	KNUM 	 17		7	; slot17 = 0.08
		166	[  0]	KNUM 	 18		8	; slot18 = 0.96
		167	[  0]	CALL 	 13	1	5	;  = love.graphics.setColor(uv0"unknown", slot15, slot16, slot17)
		168	[  0]	GGET 	 13		53	; slot13 = _env["love"]
		169	[  0]	TGETS	 13	13	52	; slot13 = love.graphics
		170	[  0]	TGETS	 13	13	37	; slot13 = love.graphics.rectangle
		171	[  0]	KSTR 	 15		36	; slot15 = "fill"
		172	[  0]	MOV  	 16		9	; slot16 = math.floor
		173	[  0]	MOV  	 17		11	; slot17 = math.max
		174	[  0]	MOV  	 18		7	; slot18 = math.floor
		175	[  0]	MOV  	 19		8	; slot19 = math.floor
		176	[  0]	CALL 	 13	1	6	;  = love.graphics.rectangle(uv0"unknown", slot15, math.floor, math.max, math.floor)
		177	[  0]	GGET 	 13		53	; slot13 = _env["love"]
		178	[  0]	TGETS	 13	13	52	; slot13 = love.graphics
		179	[  0]	TGETS	 13	13	39	; slot13 = love.graphics.setColor
		180	[  0]	KNUM 	 15		9	; slot15 = 0.55
		181	[  0]	KNUM 	 16		9	; slot16 = 0.55
		182	[  0]	KNUM 	 17		9	; slot17 = 0.55
		183	[  0]	KSHORT	 18		1	; slot18 = 1
		184	[  0]	CALL 	 13	1	5	;  = love.graphics.setColor(uv0"unknown", slot15, slot16, slot17)
		185	[  0]	GGET 	 13		53	; slot13 = _env["love"]
		186	[  0]	TGETS	 13	13	52	; slot13 = love.graphics
		187	[  0]	TGETS	 13	13	37	; slot13 = love.graphics.rectangle
		188	[  0]	KSTR 	 15		35	; slot15 = "line"
		189	[  0]	ADDVN	 16	9	1	; slot16 = math.floor + 0.5
		190	[  0]	ADDVN	 17	11	1	; slot17 = math.max + 0.5
		191	[  0]	SUBVN	 18	7	10	; slot18 = math.floor - 1
		192	[  0]	SUBVN	 19	8	10	; slot19 = math.floor - 1
		193	[  0]	CALL 	 13	1	6	;  = love.graphics.rectangle(uv0"unknown", slot15, slot16, slot17, slot18)
		194	[  0]	GGET 	 13		45	; slot13 = _env["math"]
		195	[  0]	TGETS	 13	13	44	; slot13 = math.floor
		196	[  0]	MULNV	 15	2	11	; slot15 = 10 * slot2
		197	[  0]	ADDVN	 15	15	1	; slot15 = slot15 + 0.5
		198	[  0]	CALL 	 13	2	2	; slot13 = math.floor(uv0"unknown")
		199	[  0]	ADDVV	 14	9	13	; slot14 = math.floor + math.floor
		200	[  0]	ADDVV	 15	11	13	; slot15 = math.max + math.floor
		201	[  0]	MULVN	 16	13	3	; slot16 = math.floor * 2
		202	[  0]	SUBVV	 16	7	16	; slot16 = math.floor - slot16
		203	[  0]	MULVN	 17	13	3	; slot17 = math.floor * 2
		204	[  0]	SUBVV	 17	8	17	; slot17 = math.floor - slot17
		205	[  0]	GGET 	 18		45	; slot18 = _env["math"]
		206	[  0]	TGETS	 18	18	44	; slot18 = math.floor
		207	[  0]	MULVN	 20	16	12	; slot20 = slot16 * 0.62
		208	[  0]	ADDVN	 20	20	1	; slot20 = slot20 + 0.5
		209	[  0]	CALL 	 18	2	2	; slot18 = math.floor(slot19)
		210	[  0]	SUBVV	 19	16	18	; slot19 = slot16 - math.floor
		211	[  0]	GGET 	 20		45	; slot20 = _env["math"]
		212	[  0]	TGETS	 20	20	44	; slot20 = math.floor
		213	[  0]	MULNV	 22	2	11	; slot22 = 10 * slot2
		214	[  0]	ADDVN	 22	22	1	; slot22 = slot22 + 0.5
		215	[  0]	CALL 	 20	2	2	; slot20 = math.floor(slot21)
		216	[  0]	SUBVV	 19	19	20	; slot19 = slot19 - math.floor
		217	[  0]	MOV  	 20		14	; slot20 = slot14
		218	[  0]	ADDVV	 21	20	18	; slot21 = slot20 + math.floor
		219	[  0]	GGET 	 22		45	; slot22 = _env["math"]
		220	[  0]	TGETS	 22	22	44	; slot22 = math.floor
		221	[  0]	MULNV	 24	2	11	; slot24 = 10 * slot2
		222	[  0]	ADDVN	 24	24	1	; slot24 = slot24 + 0.5
		223	[  0]	CALL 	 22	2	2	; slot22 = math.floor(slot23)
		224	[  0]	ADDVV	 21	21	22	; slot21 = slot21 + math.floor
		225	[  0]	GGET 	 22		45	; slot22 = _env["math"]
		226	[  0]	TGETS	 22	22	41	; slot22 = math.max
		227	[  0]	KSHORT	 24		1	; slot24 = 1
		228	[  0]	GGET 	 25		45	; slot25 = _env["math"]
		229	[  0]	TGETS	 25	25	34	; slot25 = math.min
		230	[  0]	KSHORT	 27		5	; slot27 = 5
		231	[  0]	GGET 	 28		45	; slot28 = _env["math"]
		232	[  0]	TGETS	 28	28	44	; slot28 = math.floor
		233	[  0]	GGET 	 30		33	; slot30 = _env["tonumber"]
		234	[  0]	TGETS	 32	1	32	; slot32 = slot1.maxSlots
		235	[  0]	IST  	   		32	; if <unknown table>.maxSlots
		236	[  0]	JMP  	 33		1	; 	goto 238
		237	[  0]	KSHORT	 32		1	; slot32 = 1
		238	[  0]	CALL 	 30	2	2	; slot30 = tonumber(slot31)
		239	[  0]	IST  	   		30	; if tonumber
		240	[  0]	JMP  	 31		1	; 	goto 242
		241	[  0]	KSHORT	 30		1	; slot30 = 1
		242	[  0]	CALL 	 28	0	2	; MULTRES = math.floor(slot29)
		243	[  0]	CALLM	 25	0	1	; MULTRES = math.min(slot26, ...MULTRES)
		244	[  0]	CALLM	 22	2	1	; slot22 = math.max(slot23, ...MULTRES)
		245	[  0]	TGETS	 23	1	59	; slot23 = slot1.absorber
		246	[  0]	TGETS	 23	23	31	; slot23 = <unknown table>.absorber.imprints
		247	[  0]	IST  	   		23	; if <unknown table>.absorber.imprints
		248	[  0]	JMP  	 24		1	; 	goto 250
		249	[  0]	TNEW 	 23		0	; slot23 = new table( array: 0, dict: 1)
		250	[  0]	GGET 	 24		45	; slot24 = _env["math"]
		251	[  0]	TGETS	 24	24	44	; slot24 = math.floor
		252	[  0]	MULNV	 26	2	13	; slot26 = 4 * slot2
		253	[  0]	ADDVN	 26	26	1	; slot26 = slot26 + 0.5
		254	[  0]	CALL 	 24	2	2	; slot24 = math.floor(math.min)
		255	[  0]	GGET 	 25		45	; slot25 = _env["math"]
		256	[  0]	TGETS	 25	25	44	; slot25 = math.floor
		257	[  0]	SUBVN	 27	22	10	; slot27 = math.max - 1
		258	[  0]	MULVV	 27	24	27	; slot27 = math.floor * slot27
		259	[  0]	SUBVV	 27	17	27	; slot27 = slot17 - slot27
		260	[  0]	DIVVV	 27	27	22	; slot27 = slot27 / math.max
		261	[  0]	CALL 	 25	2	2	; slot25 = math.floor(slot26)
		262	[  0]	GGET 	 26		45	; slot26 = _env["math"]
		263	[  0]	TGETS	 26	26	44	; slot26 = math.floor
		264	[  0]	MULNV	 28	2	14	; slot28 = 24 * slot2
		265	[  0]	ADDVN	 28	28	1	; slot28 = slot28 + 0.5
		266	[  0]	CALL 	 26	2	2	; slot26 = math.floor(slot27)
		267	[  0]	ISGE 	 25		26	; if math.floor >= math.floor
		268	[  0]	JMP  	 26		6	; 	goto 275
		269	[  0]	GGET 	 26		45	; slot26 = _env["math"]
		270	[  0]	TGETS	 26	26	44	; slot26 = math.floor
		271	[  0]	MULNV	 28	2	14	; slot28 = 24 * slot2
		272	[  0]	ADDVN	 28	28	1	; slot28 = slot28 + 0.5
		273	[  0]	CALL 	 26	2	2	; slot26 = math.floor(slot27)
		274	[  0]	MOV  	 25		26	; slot25 = math.floor
		275	[  0]	UGET 	 26		3	; slot26 = uv3"unknwon"
		276	[  0]	MOV  	 28		3	; slot28 = <unknown table>.font
		277	[  0]	GGET 	 29		45	; slot29 = _env["math"]
		278	[  0]	TGETS	 29	29	44	; slot29 = math.floor
		279	[  0]	MULNV	 31	2	15	; slot31 = 12 * slot2
		280	[  0]	ADDVN	 31	31	1	; slot31 = slot31 + 0.5
		281	[  0]	CALL 	 29	0	2	; MULTRES = math.floor(slot30)
		282	[  0]	CALLM	 26	2	1	; slot26 = uv3"unknown"(slot27, ...MULTRES)
		283	[  0]	GGET 	 27		45	; slot27 = _env["math"]
		284	[  0]	TGETS	 27	27	41	; slot27 = math.max
		285	[  0]	KSHORT	 29		1	; slot29 = 1
		286	[  0]	MOV  	 30		26	; slot30 = uv3"unknown"
		287	[  0]	CALL 	 27	2	3	; slot27 = math.max(<unknown table>.font, slot29)
		288	[  0]	GGET 	 28		45	; slot28 = _env["math"]
		289	[  0]	TGETS	 28	28	41	; slot28 = math.max
		290	[  0]	KSHORT	 30		1	; slot30 = 1
		291	[  0]	GGET 	 31		45	; slot31 = _env["math"]
		292	[  0]	TGETS	 31	31	44	; slot31 = math.floor
		293	[  0]	MULNV	 33	2	16	; slot33 = 7 * slot2
		294	[  0]	ADDVN	 33	33	1	; slot33 = slot33 + 0.5
		295	[  0]	CALL 	 31	0	2	; MULTRES = math.floor(slot32)
		296	[  0]	CALLM	 28	2	1	; slot28 = math.max(slot29, ...MULTRES)
		297	[  0]	GGET 	 29		45	; slot29 = _env["math"]
		298	[  0]	TGETS	 29	29	41	; slot29 = math.max
		299	[  0]	KSHORT	 31		1	; slot31 = 1
		300	[  0]	GGET 	 32		45	; slot32 = _env["math"]
		301	[  0]	TGETS	 32	32	41	; slot32 = math.max
		302	[  0]	KSHORT	 34		1	; slot34 = 1
		303	[  0]	GGET 	 35		45	; slot35 = _env["math"]
		304	[  0]	TGETS	 35	35	44	; slot35 = math.floor
		305	[  0]	MULNV	 37	2	17	; slot37 = 5 * slot2
		306	[  0]	ADDVN	 37	37	1	; slot37 = slot37 + 0.5
		307	[  0]	CALL 	 35	0	2	; MULTRES = math.floor(slot36)
		308	[  0]	CALLM	 32	2	1	; slot32 = math.max(slot33, ...MULTRES)
		309	[  0]	ADDVV	 32	26	32	; slot32 = uv3"unknown" + math.max
		310	[  0]	CALL 	 29	2	3	; slot29 = math.max(slot30, slot31)
		311	[  0]	GGET 	 30		45	; slot30 = _env["math"]
		312	[  0]	TGETS	 30	30	44	; slot30 = math.floor
		313	[  0]	MULNV	 32	2	18	; slot32 = 20 * slot2
		314	[  0]	ADDVN	 32	32	1	; slot32 = slot32 + 0.5
		315	[  0]	CALL 	 30	2	2	; slot30 = math.floor(slot31)
		316	[  0]	KSHORT	 31		12	; slot31 = 12
		317	[  0]	ISGE 	 30		31	; if math.floor >= slot31
		318	[  0]	JMP  	 31		1	; 	goto 320
		319	[  0]	KSHORT	 30		12	; slot30 = 12
		320	[  0]	GGET 	 31		45	; slot31 = _env["math"]
		321	[  0]	TGETS	 31	31	44	; slot31 = math.floor
		322	[  0]	MULNV	 33	2	19	; slot33 = 18 * slot2
		323	[  0]	ADDVN	 33	33	1	; slot33 = slot33 + 0.5
		324	[  0]	CALL 	 31	2	2	; slot31 = math.floor(slot32)
		325	[  0]	KSHORT	 32		14	; slot32 = 14
		326	[  0]	ISGE 	 31		32	; if math.floor >= slot32
		327	[  0]	JMP  	 32		1	; 	goto 329
		328	[  0]	KSHORT	 31		14	; slot31 = 14
		329	[  0]	GGET 	 32		45	; slot32 = _env["math"]
		330	[  0]	TGETS	 32	32	44	; slot32 = math.floor
		331	[  0]	MULNV	 34	2	19	; slot34 = 18 * slot2
		332	[  0]	ADDVN	 34	34	1	; slot34 = slot34 + 0.5
		333	[  0]	CALL 	 32	2	2	; slot32 = math.floor(slot33)
		334	[  0]	KSHORT	 33		14	; slot33 = 14
		335	[  0]	ISGE 	 32		33	; if math.floor >= slot33
		336	[  0]	JMP  	 33		1	; 	goto 338
		337	[  0]	KSHORT	 32		14	; slot32 = 14
		338	[  0]	UGET 	 33		0	; slot33 = uv0"unknwon"
		339	[  0]	TDUP 	 34		30	; slot34 = copy table#k30
		340	[  0]	TNEW 	 35		0	; slot35 = new table( array: 0, dict: 1)
		341	[  0]	TSETS	 35	34	29	; slot34.arrows = slot35
		342	[  0]	TSETS	 34	33	57	; uv0"unknown"._modalHit = slot34
		343	[  0]	KSHORT	 33		1	; slot33 = 1
		344	[  0]	MOV  	 34		22	; slot34 = math.max
		345	[  0]	KSHORT	 35		1	; slot35 = 1
		346	[  0]	FORI 	 33		289	; for slot36 = slot33,slot34,slot35 else goto 636
		347	[  0]	SUBVN	 37	36	10	; slot37 = slot36 - 1
		348	[  0]	ADDVV	 38	25	24	; slot38 = math.floor + math.floor
		349	[  0]	MULVV	 37	37	38	; slot37 = slot37 * slot38
		350	[  0]	ADDVV	 37	15	37	; slot37 = slot15 + slot37
		351	[  0]	GGET 	 38		53	; slot38 = _env["love"]
		352	[  0]	TGETS	 38	38	52	; slot38 = love.graphics
		353	[  0]	TGETS	 38	38	39	; slot38 = love.graphics.setColor
		354	[  0]	KNUM 	 40		20	; slot40 = 0.14
		355	[  0]	KNUM 	 41		20	; slot41 = 0.14
		356	[  0]	KNUM 	 42		20	; slot42 = 0.14
		357	[  0]	KSHORT	 43		1	; slot43 = 1
		358	[  0]	CALL 	 38	1	5	;  = love.graphics.setColor(slot39, slot40, slot41, slot42)
		359	[  0]	GGET 	 38		53	; slot38 = _env["love"]
		360	[  0]	TGETS	 38	38	52	; slot38 = love.graphics
		361	[  0]	TGETS	 38	38	37	; slot38 = love.graphics.rectangle
		362	[  0]	KSTR 	 40		36	; slot40 = "fill"
		363	[  0]	MOV  	 41		20	; slot41 = slot20
		364	[  0]	MOV  	 42		37	; slot42 = slot37
		365	[  0]	MOV  	 43		18	; slot43 = math.floor
		366	[  0]	MOV  	 44		25	; slot44 = math.floor
		367	[  0]	CALL 	 38	1	6	;  = love.graphics.rectangle(slot39, slot40, slot41, slot42, math.floor)
		368	[  0]	GGET 	 38		53	; slot38 = _env["love"]
		369	[  0]	TGETS	 38	38	52	; slot38 = love.graphics
		370	[  0]	TGETS	 38	38	39	; slot38 = love.graphics.setColor
		371	[  0]	KNUM 	 40		21	; slot40 = 0.25
		372	[  0]	KNUM 	 41		21	; slot41 = 0.25
		373	[  0]	KNUM 	 42		21	; slot42 = 0.25
		374	[  0]	KSHORT	 43		1	; slot43 = 1
		375	[  0]	CALL 	 38	1	5	;  = love.graphics.setColor(slot39, slot40, slot41, slot42)
		376	[  0]	GGET 	 38		53	; slot38 = _env["love"]
		377	[  0]	TGETS	 38	38	52	; slot38 = love.graphics
		378	[  0]	TGETS	 38	38	37	; slot38 = love.graphics.rectangle
		379	[  0]	KSTR 	 40		35	; slot40 = "line"
		380	[  0]	ADDVN	 41	20	1	; slot41 = slot20 + 0.5
		381	[  0]	ADDVN	 42	37	1	; slot42 = slot37 + 0.5
		382	[  0]	SUBVN	 43	18	10	; slot43 = math.floor - 1
		383	[  0]	SUBVN	 44	25	10	; slot44 = math.floor - 1
		384	[  0]	CALL 	 38	1	6	;  = love.graphics.rectangle(slot39, slot40, slot41, slot42, slot43)
		385	[  0]	TGETV	 38	23	36	; slot38 = slot23[slot36]
		386	[  0]	GGET 	 39		45	; slot39 = _env["math"]
		387	[  0]	TGETS	 39	39	44	; slot39 = math.floor
		388	[  0]	MULNV	 41	2	13	; slot41 = 4 * slot2
		389	[  0]	ADDVN	 41	41	1	; slot41 = slot41 + 0.5
		390	[  0]	CALL 	 39	2	2	; slot39 = math.floor(slot40)
		391	[  0]	ADDVV	 39	20	39	; slot39 = slot20 + math.floor
		392	[  0]	GGET 	 40		45	; slot40 = _env["math"]
		393	[  0]	TGETS	 40	40	44	; slot40 = math.floor
		394	[  0]	MULNV	 42	2	13	; slot42 = 4 * slot2
		395	[  0]	ADDVN	 42	42	1	; slot42 = slot42 + 0.5
		396	[  0]	CALL 	 40	2	2	; slot40 = math.floor(slot41)
		397	[  0]	ADDVV	 40	37	40	; slot40 = slot37 + math.floor
		398	[  0]	UGET 	 41		4	; slot41 = uv4"unknwon"
		399	[  0]	UGET 	 43		0	; slot43 = uv0"unknwon"
		400	[  0]	ISFC 	 44		38	; slot44 = slot38; if not slot38
		401	[  0]	JMP  	 44		1	; 	goto 403
		402	[  0]	TGETS	 44	38	28	; slot44 = slot38.icon
		403	[  0]	MOV  	 45		39	; slot45 = slot39
		404	[  0]	MOV  	 46		40	; slot46 = slot40
		405	[  0]	GGET 	 47		45	; slot47 = _env["math"]
		406	[  0]	TGETS	 47	47	34	; slot47 = math.min
		407	[  0]	MOV  	 49		30	; slot49 = slot30
		408	[  0]	GGET 	 50		45	; slot50 = _env["math"]
		409	[  0]	TGETS	 50	50	44	; slot50 = math.floor
		410	[  0]	MULNV	 52	2	22	; slot52 = 8 * slot2
		411	[  0]	ADDVN	 52	52	1	; slot52 = slot52 + 0.5
		412	[  0]	CALL 	 50	2	2	; slot50 = math.floor(slot51)
		413	[  0]	SUBVV	 50	25	50	; slot50 = math.floor - math.floor
		414	[  0]	CALL 	 47	2	3	; slot47 = math.min(slot48, slot49)
		415	[  0]	KSHORT	 48		1	; slot48 = 1
		416	[  0]	CALL 	 41	1	7	;  = uv4"unknown"(slot42, uv0"unknown", <unknown table>.icon, slot45, slot46, math.min)
		417	[  0]	ADDVV	 41	39	30	; slot41 = slot39 + slot30
		418	[  0]	GGET 	 42		45	; slot42 = _env["math"]
		419	[  0]	TGETS	 42	42	44	; slot42 = math.floor
		420	[  0]	MULNV	 44	2	5	; slot44 = 6 * slot2
		421	[  0]	ADDVN	 44	44	1	; slot44 = slot44 + 0.5
		422	[  0]	CALL 	 42	2	2	; slot42 = math.floor(uv0"unknown")
		423	[  0]	ADDVV	 41	41	42	; slot41 = slot41 + math.floor
		424	[  0]	GGET 	 42		45	; slot42 = _env["math"]
		425	[  0]	TGETS	 42	42	44	; slot42 = math.floor
		426	[  0]	MULNV	 44	2	5	; slot44 = 6 * slot2
		427	[  0]	ADDVN	 44	44	1	; slot44 = slot44 + 0.5
		428	[  0]	CALL 	 42	2	2	; slot42 = math.floor(uv0"unknown")
		429	[  0]	ADDVV	 43	20	18	; slot43 = slot20 + math.floor
		430	[  0]	SUBVV	 43	43	42	; slot43 = slot43 - math.floor
		431	[  0]	SUBVV	 43	43	31	; slot43 = slot43 - slot31
		432	[  0]	GGET 	 44		45	; slot44 = _env["math"]
		433	[  0]	TGETS	 44	44	44	; slot44 = math.floor
		434	[  0]	SUBVV	 46	25	32	; slot46 = math.floor - slot32
		435	[  0]	DIVVN	 46	46	3	; slot46 = slot46 / 2
		436	[  0]	ADDVN	 46	46	1	; slot46 = slot46 + 0.5
		437	[  0]	CALL 	 44	2	2	; slot44 = math.floor(slot45)
		438	[  0]	ADDVV	 44	37	44	; slot44 = slot37 + math.floor
		439	[  0]	GGET 	 45		27	; slot45 = _env["table"]
		440	[  0]	TGETS	 45	45	26	; slot45 = table.insert
		441	[  0]	UGET 	 47		0	; slot47 = uv0"unknwon"
		442	[  0]	TGETS	 47	47	57	; slot47 = uv0"unknown"._modalHit
		443	[  0]	TGETS	 47	47	29	; slot47 = uv0"unknown"._modalHit.arrows
		444	[  0]	TDUP 	 48		25	; slot48 = copy table#k25
		445	[  0]	TSETS	 43	48	24	; slot48.x = slot43
		446	[  0]	TSETS	 44	48	42	; slot48.y = slot44
		447	[  0]	TSETS	 31	48	23	; slot48.w = slot31
		448	[  0]	TSETS	 32	48	22	; slot48.h = slot32
		449	[  0]	TSETS	 36	48	21	; slot48.slot = slot36
		450	[  0]	CALL 	 45	1	3	;  = table.insert(slot46, uv0"unknown"._modalHit.arrows)
		451	[  0]	GGET 	 45		53	; slot45 = _env["love"]
		452	[  0]	TGETS	 45	45	52	; slot45 = love.graphics
		453	[  0]	TGETS	 45	45	39	; slot45 = love.graphics.setColor
		454	[  0]	KNUM 	 47		23	; slot47 = 0.1
		455	[  0]	KNUM 	 48		23	; slot48 = 0.1
		456	[  0]	KNUM 	 49		23	; slot49 = 0.1
		457	[  0]	KSHORT	 50		1	; slot50 = 1
		458	[  0]	CALL 	 45	1	5	;  = love.graphics.setColor(slot46, slot47, slot48, slot49)
		459	[  0]	GGET 	 45		53	; slot45 = _env["love"]
		460	[  0]	TGETS	 45	45	52	; slot45 = love.graphics
		461	[  0]	TGETS	 45	45	37	; slot45 = love.graphics.rectangle
		462	[  0]	KSTR 	 47		36	; slot47 = "fill"
		463	[  0]	MOV  	 48		43	; slot48 = slot43
		464	[  0]	MOV  	 49		44	; slot49 = slot44
		465	[  0]	MOV  	 50		31	; slot50 = slot31
		466	[  0]	MOV  	 51		32	; slot51 = slot32
		467	[  0]	CALL 	 45	1	6	;  = love.graphics.rectangle(slot46, slot47, slot48, slot49, slot50)
		468	[  0]	GGET 	 45		53	; slot45 = _env["love"]
		469	[  0]	TGETS	 45	45	52	; slot45 = love.graphics
		470	[  0]	TGETS	 45	45	39	; slot45 = love.graphics.setColor
		471	[  0]	KNUM 	 47		9	; slot47 = 0.55
		472	[  0]	KNUM 	 48		9	; slot48 = 0.55
		473	[  0]	KNUM 	 49		9	; slot49 = 0.55
		474	[  0]	KSHORT	 50		1	; slot50 = 1
		475	[  0]	CALL 	 45	1	5	;  = love.graphics.setColor(slot46, slot47, slot48, slot49)
		476	[  0]	GGET 	 45		53	; slot45 = _env["love"]
		477	[  0]	TGETS	 45	45	52	; slot45 = love.graphics
		478	[  0]	TGETS	 45	45	37	; slot45 = love.graphics.rectangle
		479	[  0]	KSTR 	 47		35	; slot47 = "line"
		480	[  0]	ADDVN	 48	43	1	; slot48 = slot43 + 0.5
		481	[  0]	ADDVN	 49	44	1	; slot49 = slot44 + 0.5
		482	[  0]	SUBVN	 50	31	10	; slot50 = slot31 - 1
		483	[  0]	SUBVN	 51	32	10	; slot51 = slot32 - 1
		484	[  0]	CALL 	 45	1	6	;  = love.graphics.rectangle(slot46, slot47, slot48, slot49, slot50)
		485	[  0]	GGET 	 45		53	; slot45 = _env["love"]
		486	[  0]	TGETS	 45	45	52	; slot45 = love.graphics
		487	[  0]	TGETS	 45	45	39	; slot45 = love.graphics.setColor
		488	[  0]	KNUM 	 47		24	; slot47 = 0.9
		489	[  0]	KNUM 	 48		24	; slot48 = 0.9
		490	[  0]	KNUM 	 49		24	; slot49 = 0.9
		491	[  0]	KSHORT	 50		1	; slot50 = 1
		492	[  0]	CALL 	 45	1	5	;  = love.graphics.setColor(slot46, slot47, slot48, slot49)
		493	[  0]	GGET 	 45		53	; slot45 = _env["love"]
		494	[  0]	TGETS	 45	45	52	; slot45 = love.graphics
		495	[  0]	TGETS	 45	45	20	; slot45 = love.graphics.printf
		496	[  0]	KSTR 	 47		19	; slot47 = ">"
		497	[  0]	MOV  	 48		43	; slot48 = slot43
		498	[  0]	GGET 	 49		45	; slot49 = _env["math"]
		499	[  0]	TGETS	 49	49	44	; slot49 = math.floor
		500	[  0]	SUBVV	 51	32	26	; slot51 = slot32 - uv3"unknown"
		501	[  0]	DIVVN	 51	51	3	; slot51 = slot51 / 2
		502	[  0]	ADDVN	 51	51	1	; slot51 = slot51 + 0.5
		503	[  0]	CALL 	 49	2	2	; slot49 = math.floor(slot50)
		504	[  0]	ADDVV	 49	44	49	; slot49 = slot44 + math.floor
		505	[  0]	MOV  	 50		31	; slot50 = slot31
		506	[  0]	KSTR 	 51		18	; slot51 = "center"
		507	[  0]	CALL 	 45	1	6	;  = love.graphics.printf(slot46, slot47, slot48, slot49, slot50)
		508	[  0]	GGET 	 45		45	; slot45 = _env["math"]
		509	[  0]	TGETS	 45	45	44	; slot45 = math.floor
		510	[  0]	MULNV	 47	2	5	; slot47 = 6 * slot2
		511	[  0]	ADDVN	 47	47	1	; slot47 = slot47 + 0.5
		512	[  0]	CALL 	 45	2	2	; slot45 = math.floor(slot46)
		513	[  0]	SUBVV	 45	43	45	; slot45 = slot43 - math.floor
		514	[  0]	SUBVV	 45	45	41	; slot45 = slot45 - slot41
		515	[  0]	KSHORT	 46		10	; slot46 = 10
		516	[  0]	ISGE 	 45		46	; if slot45 >= slot46
		517	[  0]	JMP  	 46		1	; 	goto 519
		518	[  0]	KSHORT	 45		10	; slot45 = 10
		519	[  0]	GGET 	 46		45	; slot46 = _env["math"]
		520	[  0]	TGETS	 46	46	44	; slot46 = math.floor
		521	[  0]	MULNV	 48	2	25	; slot48 = 3 * slot2
		522	[  0]	ADDVN	 48	48	1	; slot48 = slot48 + 0.5
		523	[  0]	CALL 	 46	2	2	; slot46 = math.floor(slot47)
		524	[  0]	ADDVV	 46	37	46	; slot46 = slot37 + math.floor
		525	[  0]	ISF  	   		38	; if not slot38
		526	[  0]	JMP  	 47		85	; 	goto 612
		527	[  0]	GGET 	 47		53	; slot47 = _env["love"]
		528	[  0]	TGETS	 47	47	52	; slot47 = love.graphics
		529	[  0]	TGETS	 47	47	39	; slot47 = love.graphics.setColor
		530	[  0]	KSHORT	 49		1	; slot49 = 1
		531	[  0]	KNUM 	 50		24	; slot50 = 0.9
		532	[  0]	KNUM 	 51		1	; slot51 = 0.5
		533	[  0]	KSHORT	 52		1	; slot52 = 1
		534	[  0]	CALL 	 47	1	5	;  = love.graphics.setColor(slot48, slot49, slot50, slot51)
		535	[  0]	UGET 	 47		5	; slot47 = uv5"unknwon"
		536	[  0]	TGETS	 47	47	17	; slot47 = uv5"unknown".getImprintName
		537	[  0]	TGETS	 49	38	16	; slot49 = slot38.id
		538	[  0]	TGETS	 50	38	15	; slot50 = slot38.name
		539	[  0]	IST  	   		50	; if <unknown table>.name
		540	[  0]	JMP  	 51		1	; 	goto 542
		541	[  0]	KSTR 	 50		14	; slot50 = "Unknown"
		542	[  0]	GGET 	 51		13	; slot51 = _env["_G"]
		543	[  0]	TGETS	 51	51	12	; slot51 = _G.currentGameLang
		544	[  0]	IST  	   		51	; if _G.currentGameLang
		545	[  0]	JMP  	 52		1	; 	goto 547
		546	[  0]	KSTR 	 51		11	; slot51 = "ko"
		547	[  0]	CALL 	 47	2	4	; slot47 = uv5"unknown".getImprintName(slot48, <unknown table>.id, slot50)
		548	[  0]	KSTR 	 48		10	; slot48 = " "
		549	[  0]	UGET 	 49		6	; slot49 = uv6"unknwon"
		550	[  0]	TGETS	 51	38	9	; slot51 = slot38.level
		551	[  0]	IST  	   		51	; if <unknown table>.level
		552	[  0]	JMP  	 52		1	; 	goto 554
		553	[  0]	KSHORT	 51		1	; slot51 = 1
		554	[  0]	CALL 	 49	2	2	; slot49 = uv6"unknown"(slot50)
		555	[  0]	CAT  	 47	47	49	; slot47 = uv5"unknown".getImprintName .. slot48 .. uv6"unknown"
		556	[  0]	UGET 	 48		0	; slot48 = uv0"unknwon"
		557	[  0]	TGETS	 48	48	8	; slot48 = uv0"unknown"._printFitted
		558	[  0]	GGET 	 50		53	; slot50 = _env["love"]
		559	[  0]	TGETS	 50	50	52	; slot50 = love.graphics
		560	[  0]	TGETS	 50	50	7	; slot50 = love.graphics.getFont
		561	[  0]	CALL 	 50	2	1	; slot50 = love.graphics.getFont()
		562	[  0]	MOV  	 51		47	; slot51 = slot47
		563	[  0]	MOV  	 52		41	; slot52 = slot41
		564	[  0]	MOV  	 53		46	; slot53 = slot46
		565	[  0]	MOV  	 54		45	; slot54 = slot45
		566	[  0]	CALL 	 48	1	6	;  = uv0"unknown"._printFitted(uv6"unknown", love.graphics.getFont, slot51, slot52, slot53)
		567	[  0]	GGET 	 48		53	; slot48 = _env["love"]
		568	[  0]	TGETS	 48	48	52	; slot48 = love.graphics
		569	[  0]	TGETS	 48	48	39	; slot48 = love.graphics.setColor
		570	[  0]	KNUM 	 50		24	; slot50 = 0.9
		571	[  0]	KNUM 	 51		24	; slot51 = 0.9
		572	[  0]	KNUM 	 52		24	; slot52 = 0.9
		573	[  0]	KSHORT	 53		1	; slot53 = 1
		574	[  0]	CALL 	 48	1	5	;  = love.graphics.setColor(uv6"unknown", slot50, slot51, slot52)
		575	[  0]	ADDVV	 48	46	27	; slot48 = slot46 + math.max
		576	[  0]	ADDVV	 48	48	28	; slot48 = slot48 + math.max
		577	[  0]	ADDVV	 49	37	25	; slot49 = slot37 + math.floor
		578	[  0]	SUBVV	 49	49	48	; slot49 = slot49 - slot48
		579	[  0]	GGET 	 50		45	; slot50 = _env["math"]
		580	[  0]	TGETS	 50	50	44	; slot50 = math.floor
		581	[  0]	MULNV	 52	2	25	; slot52 = 3 * slot2
		582	[  0]	ADDVN	 52	52	1	; slot52 = slot52 + 0.5
		583	[  0]	CALL 	 50	2	2	; slot50 = math.floor(slot51)
		584	[  0]	SUBVV	 49	49	50	; slot49 = slot49 - math.floor
		585	[  0]	UGET 	 50		7	; slot50 = uv7"unknwon"
		586	[  0]	MOV  	 52		49	; slot52 = slot49
		587	[  0]	MOV  	 53		29	; slot53 = math.max
		588	[  0]	CALL 	 50	2	3	; slot50 = uv7"unknown"(slot51, slot52)
		589	[  0]	UGET 	 51		8	; slot51 = uv8"unknwon"
		590	[  0]	MOV  	 53		3	; slot53 = <unknown table>.font
		591	[  0]	UGET 	 54		5	; slot54 = uv5"unknwon"
		592	[  0]	TGETS	 54	54	6	; slot54 = uv5"unknown".getImprintDesc
		593	[  0]	TGETS	 56	38	16	; slot56 = slot38.id
		594	[  0]	TGETS	 57	38	9	; slot57 = slot38.level
		595	[  0]	TGETS	 58	38	5	; slot58 = slot38.desc
		596	[  0]	IST  	   		58	; if <unknown table>.desc
		597	[  0]	JMP  	 59		1	; 	goto 599
		598	[  0]	KSTR 	 58		4	; slot58 = ""
		599	[  0]	GGET 	 59		13	; slot59 = _env["_G"]
		600	[  0]	TGETS	 59	59	12	; slot59 = _G.currentGameLang
		601	[  0]	IST  	   		59	; if _G.currentGameLang
		602	[  0]	JMP  	 60		1	; 	goto 604
		603	[  0]	KSTR 	 59		11	; slot59 = "ko"
		604	[  0]	CALL 	 54	2	5	; slot54 = uv5"unknown".getImprintDesc(slot55, <unknown table>.id, <unknown table>.level, slot58)
		605	[  0]	MOV  	 55		41	; slot55 = slot41
		606	[  0]	MOV  	 56		48	; slot56 = slot48
		607	[  0]	MOV  	 57		45	; slot57 = slot45
		608	[  0]	MOV  	 58		29	; slot58 = math.max
		609	[  0]	MOV  	 59		50	; slot59 = uv7"unknown"
		610	[  0]	CALL 	 51	1	8	;  = uv8"unknown"(slot52, <unknown table>.font, uv5"unknown".getImprintDesc, slot55, slot56, slot57, math.max)
		611	[  0]	JMP  	 47		23	; 	goto 635
		612	[  0]	GGET 	 47		53	; slot47 = _env["love"]
		613	[  0]	TGETS	 47	47	52	; slot47 = love.graphics
		614	[  0]	TGETS	 47	47	39	; slot47 = love.graphics.setColor
		615	[  0]	KNUM 	 49		26	; slot49 = 0.6
		616	[  0]	KNUM 	 50		26	; slot50 = 0.6
		617	[  0]	KNUM 	 51		26	; slot51 = 0.6
		618	[  0]	KSHORT	 52		1	; slot52 = 1
		619	[  0]	CALL 	 47	1	5	;  = love.graphics.setColor(slot48, slot49, slot50, slot51)
		620	[  0]	GGET 	 47		53	; slot47 = _env["love"]
		621	[  0]	TGETS	 47	47	52	; slot47 = love.graphics
		622	[  0]	TGETS	 47	47	3	; slot47 = love.graphics.print
		623	[  0]	UGET 	 49		5	; slot49 = uv5"unknwon"
		624	[  0]	TGETS	 49	49	2	; slot49 = uv5"unknown".getText
		625	[  0]	KSTR 	 51		1	; slot51 = "imprint_empty_slot"
		626	[  0]	GGET 	 52		13	; slot52 = _env["_G"]
		627	[  0]	TGETS	 52	52	12	; slot52 = _G.currentGameLang
		628	[  0]	IST  	   		52	; if _G.currentGameLang
		629	[  0]	JMP  	 53		1	; 	goto 631
		630	[  0]	KSTR 	 52		11	; slot52 = "ko"
		631	[  0]	CALL 	 49	2	3	; slot49 = uv5"unknown".getText(slot50, slot51)
		632	[  0]	MOV  	 50		41	; slot50 = slot41
		633	[  0]	MOV  	 51		46	; slot51 = slot46
		634	[  0]	CALL 	 47	1	4	;  = love.graphics.print(slot48, uv5"unknown".getText, slot50)
		635	[  0]	FORL 	 33		-289	; slot36 = slot36 + slot35; if cmp(slot36, sign slot35,  slot34) goto 347
		636	[  0]	GGET 	 33		53	; slot33 = _env["love"]
		637	[  0]	TGETS	 33	33	52	; slot33 = love.graphics
		638	[  0]	TGETS	 33	33	39	; slot33 = love.graphics.setColor
		639	[  0]	KNUM 	 35		20	; slot35 = 0.14
		640	[  0]	KNUM 	 36		20	; slot36 = 0.14
		641	[  0]	KNUM 	 37		20	; slot37 = 0.14
		642	[  0]	KSHORT	 38		1	; slot38 = 1
		643	[  0]	CALL 	 33	1	5	;  = love.graphics.setColor(slot34, slot35, slot36, slot37)
		644	[  0]	GGET 	 33		53	; slot33 = _env["love"]
		645	[  0]	TGETS	 33	33	52	; slot33 = love.graphics
		646	[  0]	TGETS	 33	33	37	; slot33 = love.graphics.rectangle
		647	[  0]	KSTR 	 35		36	; slot35 = "fill"
		648	[  0]	MOV  	 36		21	; slot36 = slot21
		649	[  0]	MOV  	 37		15	; slot37 = slot15
		650	[  0]	MOV  	 38		19	; slot38 = slot19
		651	[  0]	MOV  	 39		17	; slot39 = slot17
		652	[  0]	CALL 	 33	1	6	;  = love.graphics.rectangle(slot34, slot35, slot36, slot37, slot38)
		653	[  0]	GGET 	 33		53	; slot33 = _env["love"]
		654	[  0]	TGETS	 33	33	52	; slot33 = love.graphics
		655	[  0]	TGETS	 33	33	39	; slot33 = love.graphics.setColor
		656	[  0]	KNUM 	 35		21	; slot35 = 0.25
		657	[  0]	KNUM 	 36		21	; slot36 = 0.25
		658	[  0]	KNUM 	 37		21	; slot37 = 0.25
		659	[  0]	KSHORT	 38		1	; slot38 = 1
		660	[  0]	CALL 	 33	1	5	;  = love.graphics.setColor(slot34, slot35, slot36, slot37)
		661	[  0]	GGET 	 33		53	; slot33 = _env["love"]
		662	[  0]	TGETS	 33	33	52	; slot33 = love.graphics
		663	[  0]	TGETS	 33	33	37	; slot33 = love.graphics.rectangle
		664	[  0]	KSTR 	 35		35	; slot35 = "line"
		665	[  0]	ADDVN	 36	21	1	; slot36 = slot21 + 0.5
		666	[  0]	ADDVN	 37	15	1	; slot37 = slot15 + 0.5
		667	[  0]	SUBVN	 38	19	10	; slot38 = slot19 - 1
		668	[  0]	SUBVN	 39	17	10	; slot39 = slot17 - 1
		669	[  0]	CALL 	 33	1	6	;  = love.graphics.rectangle(slot34, slot35, slot36, slot37, slot38)
		670	[  0]	TGETS	 33	1	58	; slot33 = slot1.pending
		671	[  0]	GGET 	 34		45	; slot34 = _env["math"]
		672	[  0]	TGETS	 34	34	44	; slot34 = math.floor
		673	[  0]	MULNV	 36	2	5	; slot36 = 6 * slot2
		674	[  0]	ADDVN	 36	36	1	; slot36 = slot36 + 0.5
		675	[  0]	CALL 	 34	2	2	; slot34 = math.floor(slot35)
		676	[  0]	ADDVV	 34	21	34	; slot34 = slot21 + math.floor
		677	[  0]	GGET 	 35		45	; slot35 = _env["math"]
		678	[  0]	TGETS	 35	35	44	; slot35 = math.floor
		679	[  0]	MULNV	 37	2	5	; slot37 = 6 * slot2
		680	[  0]	ADDVN	 37	37	1	; slot37 = slot37 + 0.5
		681	[  0]	CALL 	 35	2	2	; slot35 = math.floor(slot36)
		682	[  0]	ADDVV	 35	15	35	; slot35 = slot15 + math.floor
		683	[  0]	GGET 	 36		45	; slot36 = _env["math"]
		684	[  0]	TGETS	 36	36	44	; slot36 = math.floor
		685	[  0]	MULNV	 38	2	27	; slot38 = 28 * slot2
		686	[  0]	ADDVN	 38	38	1	; slot38 = slot38 + 0.5
		687	[  0]	CALL 	 36	2	2	; slot36 = math.floor(slot37)
		688	[  0]	KSHORT	 37		14	; slot37 = 14
		689	[  0]	ISGE 	 36		37	; if math.floor >= slot37
		690	[  0]	JMP  	 37		1	; 	goto 692
		691	[  0]	KSHORT	 36		14	; slot36 = 14
		692	[  0]	UGET 	 37		4	; slot37 = uv4"unknwon"
		693	[  0]	UGET 	 39		0	; slot39 = uv0"unknwon"
		694	[  0]	ISFC 	 40		33	; slot40 = <unknown table>.pending; if not <unknown table>.pending
		695	[  0]	JMP  	 40		1	; 	goto 697
		696	[  0]	TGETS	 40	33	28	; slot40 = <unknown table>.pending.icon
		697	[  0]	MOV  	 41		34	; slot41 = slot34
		698	[  0]	MOV  	 42		35	; slot42 = slot35
		699	[  0]	MOV  	 43		36	; slot43 = slot36
		700	[  0]	KSHORT	 44		1	; slot44 = 1
		701	[  0]	CALL 	 37	1	7	;  = uv4"unknown"(slot38, uv0"unknown", <unknown table>.pending.icon, slot41, slot42, slot43)
		702	[  0]	ADDVV	 37	34	36	; slot37 = slot34 + slot36
		703	[  0]	GGET 	 38		45	; slot38 = _env["math"]
		704	[  0]	TGETS	 38	38	44	; slot38 = math.floor
		705	[  0]	MULNV	 40	2	22	; slot40 = 8 * slot2
		706	[  0]	ADDVN	 40	40	1	; slot40 = slot40 + 0.5
		707	[  0]	CALL 	 38	2	2	; slot38 = math.floor(uv0"unknown")
		708	[  0]	ADDVV	 37	37	38	; slot37 = slot37 + math.floor
		709	[  0]	ADDVV	 38	21	19	; slot38 = slot21 + slot19
		710	[  0]	SUBVV	 38	38	37	; slot38 = slot38 - slot37
		711	[  0]	GGET 	 39		45	; slot39 = _env["math"]
		712	[  0]	TGETS	 39	39	44	; slot39 = math.floor
		713	[  0]	MULNV	 41	2	5	; slot41 = 6 * slot2
		714	[  0]	ADDVN	 41	41	1	; slot41 = slot41 + 0.5
		715	[  0]	CALL 	 39	2	2	; slot39 = math.floor(slot40)
		716	[  0]	SUBVV	 38	38	39	; slot38 = slot38 - math.floor
		717	[  0]	KSHORT	 39		10	; slot39 = 10
		718	[  0]	ISGE 	 38		39	; if slot38 >= slot39
		719	[  0]	JMP  	 39		1	; 	goto 721
		720	[  0]	KSHORT	 38		10	; slot38 = 10
		721	[  0]	GGET 	 39		45	; slot39 = _env["math"]
		722	[  0]	TGETS	 39	39	44	; slot39 = math.floor
		723	[  0]	MULNV	 41	2	5	; slot41 = 6 * slot2
		724	[  0]	ADDVN	 41	41	1	; slot41 = slot41 + 0.5
		725	[  0]	CALL 	 39	2	2	; slot39 = math.floor(slot40)
		726	[  0]	ADDVV	 39	15	39	; slot39 = slot15 + math.floor
		727	[  0]	GGET 	 40		53	; slot40 = _env["love"]
		728	[  0]	TGETS	 40	40	52	; slot40 = love.graphics
		729	[  0]	TGETS	 40	40	39	; slot40 = love.graphics.setColor
		730	[  0]	KNUM 	 42		28	; slot42 = 0.65
		731	[  0]	KSHORT	 43		1	; slot43 = 1
		732	[  0]	KNUM 	 44		28	; slot44 = 0.65
		733	[  0]	KSHORT	 45		1	; slot45 = 1
		734	[  0]	CALL 	 40	1	5	;  = love.graphics.setColor(slot41, slot42, slot43, slot44)
		735	[  0]	UGET 	 40		5	; slot40 = uv5"unknwon"
		736	[  0]	TGETS	 40	40	17	; slot40 = uv5"unknown".getImprintName
		737	[  0]	TGETS	 42	33	16	; slot42 = <unknown table>.pending.id
		738	[  0]	TGETS	 43	33	15	; slot43 = <unknown table>.pending.name
		739	[  0]	IST  	   		43	; if <unknown table>.pending.name
		740	[  0]	JMP  	 44		1	; 	goto 742
		741	[  0]	KSTR 	 43		0	; slot43 = "New Imprint"
		742	[  0]	GGET 	 44		13	; slot44 = _env["_G"]
		743	[  0]	TGETS	 44	44	12	; slot44 = _G.currentGameLang
		744	[  0]	IST  	   		44	; if _G.currentGameLang
		745	[  0]	JMP  	 45		1	; 	goto 747
		746	[  0]	KSTR 	 44		11	; slot44 = "ko"
		747	[  0]	CALL 	 40	2	4	; slot40 = uv5"unknown".getImprintName(slot41, <unknown table>.pending.id, slot43)
		748	[  0]	KSTR 	 41		10	; slot41 = " "
		749	[  0]	UGET 	 42		6	; slot42 = uv6"unknwon"
		750	[  0]	TGETS	 44	33	9	; slot44 = <unknown table>.pending.level
		751	[  0]	IST  	   		44	; if <unknown table>.pending.level
		752	[  0]	JMP  	 45		1	; 	goto 754
		753	[  0]	KSHORT	 44		1	; slot44 = 1
		754	[  0]	CALL 	 42	2	2	; slot42 = uv6"unknown"(slot43)
		755	[  0]	CAT  	 40	40	42	; slot40 = uv5"unknown".getImprintName .. slot41 .. uv6"unknown"
		756	[  0]	UGET 	 41		0	; slot41 = uv0"unknwon"
		757	[  0]	TGETS	 41	41	8	; slot41 = uv0"unknown"._printFitted
		758	[  0]	GGET 	 43		53	; slot43 = _env["love"]
		759	[  0]	TGETS	 43	43	52	; slot43 = love.graphics
		760	[  0]	TGETS	 43	43	7	; slot43 = love.graphics.getFont
		761	[  0]	CALL 	 43	2	1	; slot43 = love.graphics.getFont()
		762	[  0]	MOV  	 44		40	; slot44 = slot40
		763	[  0]	MOV  	 45		37	; slot45 = slot37
		764	[  0]	MOV  	 46		39	; slot46 = slot39
		765	[  0]	MOV  	 47		38	; slot47 = slot38
		766	[  0]	CALL 	 41	1	6	;  = uv0"unknown"._printFitted(uv6"unknown", love.graphics.getFont, slot44, slot45, slot46)
		767	[  0]	GGET 	 41		53	; slot41 = _env["love"]
		768	[  0]	TGETS	 41	41	52	; slot41 = love.graphics
		769	[  0]	TGETS	 41	41	39	; slot41 = love.graphics.setColor
		770	[  0]	KNUM 	 43		24	; slot43 = 0.9
		771	[  0]	KNUM 	 44		24	; slot44 = 0.9
		772	[  0]	KNUM 	 45		24	; slot45 = 0.9
		773	[  0]	KSHORT	 46		1	; slot46 = 1
		774	[  0]	CALL 	 41	1	5	;  = love.graphics.setColor(uv6"unknown", slot43, slot44, slot45)
		775	[  0]	ADDVV	 41	39	27	; slot41 = slot39 + math.max
		776	[  0]	ADDVV	 41	41	28	; slot41 = slot41 + math.max
		777	[  0]	ADDVV	 42	15	17	; slot42 = slot15 + slot17
		778	[  0]	SUBVV	 42	42	41	; slot42 = slot42 - slot41
		779	[  0]	GGET 	 43		45	; slot43 = _env["math"]
		780	[  0]	TGETS	 43	43	44	; slot43 = math.floor
		781	[  0]	MULNV	 45	2	5	; slot45 = 6 * slot2
		782	[  0]	ADDVN	 45	45	1	; slot45 = slot45 + 0.5
		783	[  0]	CALL 	 43	2	2	; slot43 = math.floor(slot44)
		784	[  0]	SUBVV	 42	42	43	; slot42 = slot42 - math.floor
		785	[  0]	UGET 	 43		7	; slot43 = uv7"unknwon"
		786	[  0]	MOV  	 45		42	; slot45 = slot42
		787	[  0]	MOV  	 46		29	; slot46 = math.max
		788	[  0]	CALL 	 43	2	3	; slot43 = uv7"unknown"(slot44, slot45)
		789	[  0]	UGET 	 44		8	; slot44 = uv8"unknwon"
		790	[  0]	MOV  	 46		3	; slot46 = <unknown table>.font
		791	[  0]	UGET 	 47		5	; slot47 = uv5"unknwon"
		792	[  0]	TGETS	 47	47	6	; slot47 = uv5"unknown".getImprintDesc
		793	[  0]	TGETS	 49	33	16	; slot49 = <unknown table>.pending.id
		794	[  0]	TGETS	 50	33	9	; slot50 = <unknown table>.pending.level
		795	[  0]	TGETS	 51	33	5	; slot51 = <unknown table>.pending.desc
		796	[  0]	IST  	   		51	; if <unknown table>.pending.desc
		797	[  0]	JMP  	 52		1	; 	goto 799
		798	[  0]	KSTR 	 51		4	; slot51 = ""
		799	[  0]	GGET 	 52		13	; slot52 = _env["_G"]
		800	[  0]	TGETS	 52	52	12	; slot52 = _G.currentGameLang
		801	[  0]	IST  	   		52	; if _G.currentGameLang
		802	[  0]	JMP  	 53		1	; 	goto 804
		803	[  0]	KSTR 	 52		11	; slot52 = "ko"
		804	[  0]	CALL 	 47	2	5	; slot47 = uv5"unknown".getImprintDesc(slot48, <unknown table>.pending.id, <unknown table>.pending.level, slot51)
		805	[  0]	MOV  	 48		37	; slot48 = slot37
		806	[  0]	MOV  	 49		41	; slot49 = slot41
		807	[  0]	MOV  	 50		38	; slot50 = slot38
		808	[  0]	MOV  	 51		29	; slot51 = math.max
		809	[  0]	MOV  	 52		43	; slot52 = uv7"unknown"
		810	[  0]	CALL 	 44	1	8	;  = uv8"unknown"(slot45, <unknown table>.font, uv5"unknown".getImprintDesc, slot48, slot49, slot50, math.max)
		811	[  0]	RET0 	  0		1	; return
	181	[  0]	TSETS	 78	0	23	; slot0.drawModal = slot78
	182	[  0]	FNEW 	 78		20	; N/A:0-0: 2 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  2		1	; 	goto 4
		  3	[  0]	RET0 	  0		1	; return
		  4	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  5	[  0]	TSETS	  0	2	6	; uv0"unknown".lastUnit = slot0
		  6	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  7	[  0]	KNUM 	  3		0	; slot3 = 1.3
		  8	[  0]	TSETS	  3	2	5	; uv0"unknown".holdTimer = slot3
		  9	[  0]	ISF  	   		1	; if not slot1
		 10	[  0]	JMP  	  2		15	; 	goto 26
		 11	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 12	[  0]	TSETS	  0	2	4	; uv0"unknown".blinkUnit = slot0
		 13	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 14	[  0]	TSETS	  1	2	3	; uv0"unknown".blinkSlot = slot1
		 15	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 16	[  0]	KSHORT	  3		1	; slot3 = 1
		 17	[  0]	TSETS	  3	2	2	; uv0"unknown".blinkTimer = slot3
		 18	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 19	[  0]	TGETS	  2	2	1	; slot2 = uv0"unknown".impactScales
		 20	[  0]	KSHORT	  3		1	; slot3 = 1
		 21	[  0]	TSETV	  3	2	1	; uv0"unknown".impactScales[slot1] = slot3
		 22	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 23	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".floatOffsets
		 24	[  0]	KSHORT	  3		65528	; slot3 = 65528
		 25	[  0]	TSETV	  3	2	1	; uv0"unknown".floatOffsets[slot1] = slot3
		 26	[  0]	RET0 	  0		1	; return
	183	[  0]	TSETS	 78	0	21	; slot0.notifyAbsorb = slot78
	184	[  0]	FNEW 	 78		18	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".holdTimer
		  3	[  0]	IST  	   		0	; if uv0"unknown".holdTimer
		  4	[  0]	JMP  	  1		1	; 	goto 6
		  5	[  0]	KSHORT	  0		0	; slot0 = 0
		  6	[  0]	KSHORT	  1		0	; slot1 = 0
		  7	[  0]	ISLT 	  1		0	; if slot1 < slot0
		  8	[  0]	JMP  	  0		2	; 	goto 11
		  9	[  0]	KPRI 	  0		1	; slot0 = false
		 10	[  0]	JMP  	  1		1	; 	goto 12
		 11	[  0]	KPRI 	  0		2	; slot0 = true
		 12	[  0]	RET1 	  0		2	; return slot0
	185	[  0]	TSETS	 78	0	19	; slot0.isHoldActive = slot78
	186	[  0]	FNEW 	 78		16	; N/A:0-0: 0 args, 1 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	KSHORT	  1		0	; slot1 = 0
		  3	[  0]	TSETS	  1	0	5	; uv0"unknown".holdTimer = slot1
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	KSHORT	  1		0	; slot1 = 0
		  6	[  0]	TSETS	  1	0	4	; uv0"unknown".blinkTimer = slot1
		  7	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  8	[  0]	KPRI 	  1		0	; slot1 = nil
		  9	[  0]	TSETS	  1	0	3	; uv0"unknown".blinkSlot = slot1
		 10	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 11	[  0]	KPRI 	  1		0	; slot1 = nil
		 12	[  0]	TSETS	  1	0	2	; uv0"unknown".blinkUnit = slot1
		 13	[  0]	KSHORT	  0		1	; slot0 = 1
		 14	[  0]	KSHORT	  1		5	; slot1 = 5
		 15	[  0]	KSHORT	  2		1	; slot2 = 1
		 16	[  0]	FORI 	  0		9	; for slot3 = slot0,slot1,slot2 else goto 26
		 17	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 18	[  0]	TGETS	  4	4	1	; slot4 = uv0"unknown".impactScales
		 19	[  0]	KSHORT	  5		0	; slot5 = 0
		 20	[  0]	TSETV	  5	4	3	; uv0"unknown".impactScales[slot3] = slot5
		 21	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 22	[  0]	TGETS	  4	4	0	; slot4 = uv0"unknown".floatOffsets
		 23	[  0]	KSHORT	  5		0	; slot5 = 0
		 24	[  0]	TSETV	  5	4	3	; uv0"unknown".floatOffsets[slot3] = slot5
		 25	[  0]	FORL 	  0		-9	; slot3 = slot3 + slot2; if cmp(slot3, sign slot2,  slot1) goto 17
		 26	[  0]	RET0 	  0		1	; return
	187	[  0]	TSETS	 78	0	17	; slot0.cancelHold = slot78
	188	[  0]	FNEW 	 78		14	; N/A:0-0: 0 args, 2 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		ktable#12 = [
			[active] = false,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	KPRI 	  1		0	; slot1 = nil
		  3	[  0]	TSETS	  1	0	26	; uv0"unknown".x = slot1
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	KSHORT	  1		0	; slot1 = 0
		  6	[  0]	TSETS	  1	0	25	; uv0"unknown".v = slot1
		  7	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  8	[  0]	KPRI 	  1		0	; slot1 = nil
		  9	[  0]	TSETS	  1	0	24	; uv0"unknown".lastUnit = slot1
		 10	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 11	[  0]	KSHORT	  1		0	; slot1 = 0
		 12	[  0]	TSETS	  1	0	23	; uv0"unknown".holdTimer = slot1
		 13	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 14	[  0]	KSHORT	  1		0	; slot1 = 0
		 15	[  0]	TSETS	  1	0	22	; uv0"unknown".blinkTimer = slot1
		 16	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 17	[  0]	KPRI 	  1		0	; slot1 = nil
		 18	[  0]	TSETS	  1	0	21	; uv0"unknown".blinkSlot = slot1
		 19	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 20	[  0]	KPRI 	  1		0	; slot1 = nil
		 21	[  0]	TSETS	  1	0	20	; uv0"unknown".blinkUnit = slot1
		 22	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 23	[  0]	KPRI 	  1		0	; slot1 = nil
		 24	[  0]	TSETS	  1	0	19	; uv0"unknown".previewImprint = slot1
		 25	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 26	[  0]	KPRI 	  1		0	; slot1 = nil
		 27	[  0]	TSETS	  1	0	18	; uv0"unknown".lastPreviewImprint = slot1
		 28	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 29	[  0]	KSHORT	  1		0	; slot1 = 0
		 30	[  0]	TSETS	  1	0	17	; uv0"unknown".previewAlpha = slot1
		 31	[  0]	KSHORT	  0		1	; slot0 = 1
		 32	[  0]	KSHORT	  1		5	; slot1 = 5
		 33	[  0]	KSHORT	  2		1	; slot2 = 1
		 34	[  0]	FORI 	  0		9	; for slot3 = slot0,slot1,slot2 else goto 44
		 35	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 36	[  0]	TGETS	  4	4	16	; slot4 = uv0"unknown".impactScales
		 37	[  0]	KSHORT	  5		0	; slot5 = 0
		 38	[  0]	TSETV	  5	4	3	; uv0"unknown".impactScales[slot3] = slot5
		 39	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 40	[  0]	TGETS	  4	4	15	; slot4 = uv0"unknown".floatOffsets
		 41	[  0]	KSHORT	  5		0	; slot5 = 0
		 42	[  0]	TSETV	  5	4	3	; uv0"unknown".floatOffsets[slot3] = slot5
		 43	[  0]	FORL 	  0		-9	; slot3 = slot3 + slot2; if cmp(slot3, sign slot2,  slot1) goto 35
		 44	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 45	[  0]	KPRI 	  1		0	; slot1 = nil
		 46	[  0]	TSETS	  1	0	14	; uv1"unknown"._panelRect = slot1
		 47	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 48	[  0]	TDUP 	  1		12	; slot1 = copy table#k12
		 49	[  0]	TSETS	  1	0	13	; uv1"unknown"._hit = slot1
		 50	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 51	[  0]	KPRI 	  1		0	; slot1 = nil
		 52	[  0]	TSETS	  1	0	11	; uv1"unknown"._hoveredSlot = slot1
		 53	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 54	[  0]	KPRI 	  1		0	; slot1 = nil
		 55	[  0]	TSETS	  1	0	10	; uv1"unknown"._hoveredAbsorbIcon = slot1
		 56	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 57	[  0]	KPRI 	  1		0	; slot1 = nil
		 58	[  0]	TSETS	  1	0	9	; uv1"unknown"._awakeningRuneRect = slot1
		 59	[  0]	GGET 	  0		8	; slot0 = _env["ui"]
		 60	[  0]	KPRI 	  1		0	; slot1 = nil
		 61	[  0]	TSETS	  1	0	7	; ui._awakeningPanelRect = slot1
		 62	[  0]	GGET 	  0		8	; slot0 = _env["ui"]
		 63	[  0]	KPRI 	  1		0	; slot1 = nil
		 64	[  0]	TSETS	  1	0	6	; ui._awakeningInfo = slot1
		 65	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 66	[  0]	KPRI 	  1		0	; slot1 = nil
		 67	[  0]	TSETS	  1	0	5	; uv1"unknown"._hoveredFaction = slot1
		 68	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 69	[  0]	KPRI 	  1		0	; slot1 = nil
		 70	[  0]	TSETS	  1	0	4	; uv1"unknown"._hoveredRandomOption = slot1
		 71	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 72	[  0]	KPRI 	  1		0	; slot1 = nil
		 73	[  0]	TSETS	  1	0	3	; uv1"unknown"._hoveredSkill = slot1
		 74	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 75	[  0]	KPRI 	  1		0	; slot1 = nil
		 76	[  0]	TSETS	  1	0	2	; uv1"unknown"._absorbLockRect = slot1
		 77	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 78	[  0]	KPRI 	  1		0	; slot1 = nil
		 79	[  0]	TSETS	  1	0	1	; uv1"unknown"._absorbLockUnit = slot1
		 80	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 81	[  0]	KPRI 	  1		0	; slot1 = nil
		 82	[  0]	TSETS	  1	0	0	; uv1"unknown"._absorbLockDisplayUnit = slot1
		 83	[  0]	RET0 	  0		1	; return
	189	[  0]	TSETS	 78	0	15	; slot0.hidePanelImmediately = slot78
	190	[  0]	FNEW 	 78		12	; N/A:0-0: 1 args, 2 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		3	; 	goto 6
		  3	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  4	[  0]	MOV  	  3		0	; slot3 = slot0
		  5	[  0]	CALL 	  1	1	2	;  = uv0"unknown"(slot2)
		  6	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  7	[  0]	TSETS	  0	1	0	; uv1"unknown".previewImprint = slot0
		  8	[  0]	RET0 	  0		1	; return
	191	[  0]	TSETS	 78	0	13	; slot0.showBattlefieldPreview = slot78
	192	[  0]	FNEW 	 78		10	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	KPRI 	  1		0	; slot1 = nil
		  3	[  0]	TSETS	  1	0	0	; uv0"unknown".previewImprint = slot1
		  4	[  0]	RET0 	  0		1	; return
	193	[  0]	TSETS	 78	0	11	; slot0.hideBattlefieldPreview = slot78
	194	[  0]	FNEW 	 78		8	; N/A:0-0: 5 args, 17 upvalues, 87 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			[active] = false,
			]
		
		
		ktable#9 = [
			[active] = true,
			]
		
		
		ktable#11 = [
			[kind] = cancel,
			]
		
		
		ktable#12 = [
			[active] = true,
			]
		
		
		ktable#14 = [
			[align] = center,
			[key] = imprint_absorb_cancel,
			]
		
		
		ktable#21 = [
			[align] = center,
			[key] = imprint_convert,
			]
		
		
		ktable#30 = [
			[kind] = convert,
			]
		
		
		ktable#63 = [
			#1: 1,
			#2: 0.4,
			]
		
		
		ktable#65 = [
			#1: 0.24313725490196078,
			#2: 0.20784313725490197,
			#3: 0.27450980392156865,
			]
		
		
		ktable#90 = [
			]
		
		
		ktable#120 = [
			[index] = -1,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		  2	[  0]	KPRI 	  6		1	; slot6 = false
		  3	[  0]	TSETS	  6	5	150	; uv0"unknown".convertHovering = slot6
		  4	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		  5	[  0]	TGETS	  5	5	149	; slot5 = uv1"unknown".compute
		  6	[  0]	MOV  	  7		0	; slot7 = slot0
		  7	[  0]	CALL 	  5	2	2	; slot5 = uv1"unknown".compute(slot6)
		  8	[  0]	ISFC 	  6		5	; slot6 = uv1"unknown".compute; if not uv1"unknown".compute
		  9	[  0]	JMP  	  6		1	; 	goto 11
		 10	[  0]	TGETS	  6	5	148	; slot6 = uv1"unknown".compute.right
		 11	[  0]	IST  	   		6	; if uv1"unknown".compute.right
		 12	[  0]	JMP  	  7		1	; 	goto 14
		 13	[  0]	UCLO 	  0		1955	; nil uvs >= r0; goto 1969
		 14	[  0]	TGETS	  7	0	147	; slot7 = slot0.scale
		 15	[  0]	IST  	   		7	; if <unknown table>.scale
		 16	[  0]	JMP  	  8		1	; 	goto 18
		 17	[  0]	KSHORT	  7		1	; slot7 = 1
		 18	[  0]	TGETS	  8	6	146	; slot8 = uv1"unknown".compute.right.y
		 19	[  0]	GGET 	  9		145	; slot9 = _env["math"]
		 20	[  0]	TGETS	  9	9	144	; slot9 = math.floor
		 21	[  0]	MULNV	 11	7	0	; slot11 = 10 * slot7
		 22	[  0]	ADDVN	 11	11	1	; slot11 = slot11 + 0.5
		 23	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		 24	[  0]	ADDVV	  8	8	9	; slot8 = uv1"unknown".compute.right.y + math.floor
		 25	[  0]	TGETS	  9	6	146	; slot9 = uv1"unknown".compute.right.y
		 26	[  0]	GGET 	 10		145	; slot10 = _env["math"]
		 27	[  0]	TGETS	 10	10	144	; slot10 = math.floor
		 28	[  0]	MULNV	 12	7	2	; slot12 = 80 * slot7
		 29	[  0]	ADDVN	 12	12	1	; slot12 = slot12 + 0.5
		 30	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
		 31	[  0]	SUBVV	  9	9	10	; slot9 = uv1"unknown".compute.right.y - math.floor
		 32	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 33	[  0]	TGETS	 10	10	143	; slot10 = uv0"unknown".previewImprint
		 34	[  0]	ISF  	   		10	; if not uv0"unknown".previewImprint
		 35	[  0]	JMP  	 11		53	; 	goto 89
		 36	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 37	[  0]	TGETS	 10	10	142	; slot10 = uv0"unknown".previewAlpha
		 38	[  0]	KSHORT	 11		0	; slot11 = 0
		 39	[  0]	ISLE 	 10		11	; if uv0"unknown".previewAlpha <= slot11
		 40	[  0]	JMP  	 10		4	; 	goto 45
		 41	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 42	[  0]	TGETS	 10	10	141	; slot10 = uv0"unknown".lastPreviewImprint
		 43	[  0]	IST  	   		10	; if uv0"unknown".lastPreviewImprint
		 44	[  0]	JMP  	 10		7	; 	goto 52
		 45	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 46	[  0]	TSETS	  9	10	140	; uv0"unknown".previewY = slot9
		 47	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 48	[  0]	UGET 	 11		0	; slot11 = uv0"unknwon"
		 49	[  0]	TGETS	 11	11	143	; slot11 = uv0"unknown".previewImprint
		 50	[  0]	TSETS	 11	10	141	; uv0"unknown".lastPreviewImprint = uv0"unknown".previewImprint
		 51	[  0]	JMP  	 10		12	; 	goto 64
		 52	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 53	[  0]	TGETS	 10	10	141	; slot10 = uv0"unknown".lastPreviewImprint
		 54	[  0]	TGETS	 10	10	139	; slot10 = uv0"unknown".lastPreviewImprint.id
		 55	[  0]	UGET 	 11		0	; slot11 = uv0"unknwon"
		 56	[  0]	TGETS	 11	11	143	; slot11 = uv0"unknown".previewImprint
		 57	[  0]	TGETS	 11	11	139	; slot11 = uv0"unknown".previewImprint.id
		 58	[  0]	ISEQV	 10		11	; if uv0"unknown".lastPreviewImprint.id == uv0"unknown".previewImprint.id
		 59	[  0]	JMP  	 10		4	; 	goto 64
		 60	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 61	[  0]	UGET 	 11		0	; slot11 = uv0"unknwon"
		 62	[  0]	TGETS	 11	11	143	; slot11 = uv0"unknown".previewImprint
		 63	[  0]	TSETS	 11	10	141	; uv0"unknown".lastPreviewImprint = uv0"unknown".previewImprint
		 64	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 65	[  0]	UGET 	 11		0	; slot11 = uv0"unknwon"
		 66	[  0]	TGETS	 11	11	140	; slot11 = uv0"unknown".previewY
		 67	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		 68	[  0]	TGETS	 12	12	140	; slot12 = uv0"unknown".previewY
		 69	[  0]	SUBVV	 12	8	12	; slot12 = slot8 - uv0"unknown".previewY
		 70	[  0]	GGET 	 13		145	; slot13 = _env["math"]
		 71	[  0]	TGETS	 13	13	138	; slot13 = math.min
		 72	[  0]	KSHORT	 15		1	; slot15 = 1
		 73	[  0]	MULVN	 16	1	3	; slot16 = slot1 * 12
		 74	[  0]	CALL 	 13	2	3	; slot13 = math.min(slot14, slot15)
		 75	[  0]	MULVV	 12	12	13	; slot12 = slot12 * math.min
		 76	[  0]	ADDVV	 11	11	12	; slot11 = uv0"unknown".previewY + slot12
		 77	[  0]	TSETS	 11	10	140	; uv0"unknown".previewY = slot11
		 78	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 79	[  0]	GGET 	 11		145	; slot11 = _env["math"]
		 80	[  0]	TGETS	 11	11	138	; slot11 = math.min
		 81	[  0]	KSHORT	 13		1	; slot13 = 1
		 82	[  0]	UGET 	 14		0	; slot14 = uv0"unknwon"
		 83	[  0]	TGETS	 14	14	142	; slot14 = uv0"unknown".previewAlpha
		 84	[  0]	MULVN	 15	1	4	; slot15 = slot1 * 8
		 85	[  0]	ADDVV	 14	14	15	; slot14 = uv0"unknown".previewAlpha + slot15
		 86	[  0]	CALL 	 11	2	3	; slot11 = math.min(slot12, slot13)
		 87	[  0]	TSETS	 11	10	142	; uv0"unknown".previewAlpha = math.min
		 88	[  0]	JMP  	 10		24	; 	goto 113
		 89	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 90	[  0]	UGET 	 11		0	; slot11 = uv0"unknwon"
		 91	[  0]	TGETS	 11	11	140	; slot11 = uv0"unknown".previewY
		 92	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		 93	[  0]	TGETS	 12	12	140	; slot12 = uv0"unknown".previewY
		 94	[  0]	SUBVV	 12	9	12	; slot12 = slot9 - uv0"unknown".previewY
		 95	[  0]	GGET 	 13		145	; slot13 = _env["math"]
		 96	[  0]	TGETS	 13	13	138	; slot13 = math.min
		 97	[  0]	KSHORT	 15		1	; slot15 = 1
		 98	[  0]	MULVN	 16	1	0	; slot16 = slot1 * 10
		 99	[  0]	CALL 	 13	2	3	; slot13 = math.min(slot14, slot15)
		100	[  0]	MULVV	 12	12	13	; slot12 = slot12 * math.min
		101	[  0]	ADDVV	 11	11	12	; slot11 = uv0"unknown".previewY + slot12
		102	[  0]	TSETS	 11	10	140	; uv0"unknown".previewY = slot11
		103	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		104	[  0]	GGET 	 11		145	; slot11 = _env["math"]
		105	[  0]	TGETS	 11	11	137	; slot11 = math.max
		106	[  0]	KSHORT	 13		0	; slot13 = 0
		107	[  0]	UGET 	 14		0	; slot14 = uv0"unknwon"
		108	[  0]	TGETS	 14	14	142	; slot14 = uv0"unknown".previewAlpha
		109	[  0]	MULVN	 15	1	0	; slot15 = slot1 * 10
		110	[  0]	SUBVV	 14	14	15	; slot14 = uv0"unknown".previewAlpha - slot15
		111	[  0]	CALL 	 11	2	3	; slot11 = math.max(slot12, slot13)
		112	[  0]	TSETS	 11	10	142	; uv0"unknown".previewAlpha = math.max
		113	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		114	[  0]	TGETS	 10	10	142	; slot10 = uv0"unknown".previewAlpha
		115	[  0]	KSHORT	 11		0	; slot11 = 0
		116	[  0]	ISGT 	 10		11	; if uv0"unknown".previewAlpha > slot11
		117	[  0]	JMP  	 10		11	; 	goto 129
		118	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		119	[  0]	TGETS	 10	10	143	; slot10 = uv0"unknown".previewImprint
		120	[  0]	IST  	   		10	; if uv0"unknown".previewImprint
		121	[  0]	JMP  	 10		7	; 	goto 129
		122	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		123	[  0]	KPRI 	 11		0	; slot11 = nil
		124	[  0]	TSETS	 11	10	141	; uv0"unknown".lastPreviewImprint = slot11
		125	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		126	[  0]	KSHORT	 11		1	; slot11 = 1
		127	[  0]	TSETS	 11	10	136	; uv0"unknown".previewScale = slot11
		128	[  0]	UCLO 	  0		1841	; nil uvs >= r0; goto 1970
		129	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		130	[  0]	TGETS	 10	10	141	; slot10 = uv0"unknown".lastPreviewImprint
		131	[  0]	IST  	   		10	; if uv0"unknown".lastPreviewImprint
		132	[  0]	JMP  	 11		1	; 	goto 134
		133	[  0]	UCLO 	  0		1837	; nil uvs >= r0; goto 1971
		134	[  0]	UGET 	 11		2	; slot11 = uv2"unknwon"
		135	[  0]	TGETS	 11	11	135	; slot11 = uv2"unknown"._slotBgImage
		136	[  0]	ISF  	   		11	; if not uv2"unknown"._slotBgImage
		137	[  0]	JMP  	 12		5	; 	goto 143
		138	[  0]	MOV  	 14		11	; slot14 = uv2"unknown"._slotBgImage
		139	[  0]	TGETS	 12	11	134	; slot12 = uv2"unknown"._slotBgImage.getWidth
		140	[  0]	CALL 	 12	2	2	; slot12 = uv2"unknown"._slotBgImage.getWidth(slot13)
		141	[  0]	IST  	   		12	; if uv2"unknown"._slotBgImage.getWidth
		142	[  0]	JMP  	 13		1	; 	goto 144
		143	[  0]	KSHORT	 12		160	; slot12 = 160
		144	[  0]	ISF  	   		11	; if not uv2"unknown"._slotBgImage
		145	[  0]	JMP  	 13		5	; 	goto 151
		146	[  0]	MOV  	 15		11	; slot15 = uv2"unknown"._slotBgImage
		147	[  0]	TGETS	 13	11	133	; slot13 = uv2"unknown"._slotBgImage.getHeight
		148	[  0]	CALL 	 13	2	2	; slot13 = uv2"unknown"._slotBgImage.getHeight(uv2"unknown"._slotBgImage)
		149	[  0]	IST  	   		13	; if uv2"unknown"._slotBgImage.getHeight
		150	[  0]	JMP  	 14		1	; 	goto 152
		151	[  0]	KSHORT	 13		40	; slot13 = 40
		152	[  0]	MOV  	 14		12	; slot14 = slot12
		153	[  0]	TGETS	 15	0	132	; slot15 = slot0.imprintPanel
		154	[  0]	ISF  	   		15	; if not <unknown table>.imprintPanel
		155	[  0]	JMP  	 16		12	; 	goto 168
		156	[  0]	TGETS	 15	0	132	; slot15 = slot0.imprintPanel
		157	[  0]	TGETS	 15	15	131	; slot15 = <unknown table>.imprintPanel.slotW
		158	[  0]	ISF  	   		15	; if not <unknown table>.imprintPanel.slotW
		159	[  0]	JMP  	 16		8	; 	goto 168
		160	[  0]	GGET 	 15		145	; slot15 = _env["math"]
		161	[  0]	TGETS	 15	15	144	; slot15 = math.floor
		162	[  0]	TGETS	 17	0	132	; slot17 = slot0.imprintPanel
		163	[  0]	TGETS	 17	17	131	; slot17 = <unknown table>.imprintPanel.slotW
		164	[  0]	MULVV	 17	17	7	; slot17 = <unknown table>.imprintPanel.slotW * slot7
		165	[  0]	ADDVN	 17	17	1	; slot17 = slot17 + 0.5
		166	[  0]	CALL 	 15	2	2	; slot15 = math.floor(slot16)
		167	[  0]	MOV  	 14		15	; slot14 = math.floor
		168	[  0]	TGETS	 15	6	130	; slot15 = uv1"unknown".compute.right.x
		169	[  0]	TGETS	 16	6	129	; slot16 = uv1"unknown".compute.right.w
		170	[  0]	SUBVV	 16	16	14	; slot16 = uv1"unknown".compute.right.w - math.floor
		171	[  0]	DIVVN	 16	16	5	; slot16 = slot16 / 2
		172	[  0]	ADDVV	 15	15	16	; slot15 = uv1"unknown".compute.right.x + slot16
		173	[  0]	KSHORT	 16		0	; slot16 = 0
		174	[  0]	KSHORT	 17		0	; slot17 = 0
		175	[  0]	TGETS	 18	0	132	; slot18 = slot0.imprintPanel
		176	[  0]	ISF  	   		18	; if not <unknown table>.imprintPanel
		177	[  0]	JMP  	 19		22	; 	goto 200
		178	[  0]	TGETS	 18	0	132	; slot18 = slot0.imprintPanel
		179	[  0]	TGETS	 18	18	128	; slot18 = <unknown table>.imprintPanel.preview
		180	[  0]	ISF  	   		18	; if not <unknown table>.imprintPanel.preview
		181	[  0]	JMP  	 19		18	; 	goto 200
		182	[  0]	GGET 	 18		127	; slot18 = _env["tonumber"]
		183	[  0]	TGETS	 20	0	132	; slot20 = slot0.imprintPanel
		184	[  0]	TGETS	 20	20	128	; slot20 = <unknown table>.imprintPanel.preview
		185	[  0]	TGETS	 20	20	126	; slot20 = <unknown table>.imprintPanel.preview.offsetX
		186	[  0]	IST  	   		20	; if <unknown table>.imprintPanel.preview.offsetX
		187	[  0]	JMP  	 21		1	; 	goto 189
		188	[  0]	KSHORT	 20		0	; slot20 = 0
		189	[  0]	CALL 	 18	2	2	; slot18 = tonumber(slot19)
		190	[  0]	MULVV	 16	18	7	; slot16 = tonumber * slot7
		191	[  0]	GGET 	 18		127	; slot18 = _env["tonumber"]
		192	[  0]	TGETS	 20	0	132	; slot20 = slot0.imprintPanel
		193	[  0]	TGETS	 20	20	128	; slot20 = <unknown table>.imprintPanel.preview
		194	[  0]	TGETS	 20	20	125	; slot20 = <unknown table>.imprintPanel.preview.offsetY
		195	[  0]	IST  	   		20	; if <unknown table>.imprintPanel.preview.offsetY
		196	[  0]	JMP  	 21		1	; 	goto 198
		197	[  0]	KSHORT	 20		0	; slot20 = 0
		198	[  0]	CALL 	 18	2	2	; slot18 = tonumber(slot19)
		199	[  0]	MULVV	 17	18	7	; slot17 = tonumber * slot7
		200	[  0]	ADDVV	 15	15	16	; slot15 = slot15 + slot16
		201	[  0]	GGET 	 18		145	; slot18 = _env["math"]
		202	[  0]	TGETS	 18	18	144	; slot18 = math.floor
		203	[  0]	UGET 	 20		0	; slot20 = uv0"unknwon"
		204	[  0]	TGETS	 20	20	140	; slot20 = uv0"unknown".previewY
		205	[  0]	ADDVV	 20	20	17	; slot20 = uv0"unknown".previewY + slot17
		206	[  0]	ADDVN	 20	20	1	; slot20 = slot20 + 0.5
		207	[  0]	CALL 	 18	2	2	; slot18 = math.floor(slot19)
		208	[  0]	UGET 	 19		2	; slot19 = uv2"unknwon"
		209	[  0]	UGET 	 20		2	; slot20 = uv2"unknwon"
		210	[  0]	TGETS	 20	20	124	; slot20 = uv2"unknown"._hoveredSlot
		211	[  0]	IST  	   		20	; if uv2"unknown"._hoveredSlot
		212	[  0]	JMP  	 21		1	; 	goto 214
		213	[  0]	KPRI 	 20		0	; slot20 = nil
		214	[  0]	TSETS	 20	19	124	; uv2"unknown"._hoveredSlot = slot20
		215	[  0]	KSHORT	 19		0	; slot19 = 0
		216	[  0]	KSHORT	 20		0	; slot20 = 0
		217	[  0]	TGETS	 21	0	132	; slot21 = slot0.imprintPanel
		218	[  0]	ISF  	   		21	; if not <unknown table>.imprintPanel
		219	[  0]	JMP  	 22		22	; 	goto 242
		220	[  0]	TGETS	 21	0	132	; slot21 = slot0.imprintPanel
		221	[  0]	TGETS	 21	21	123	; slot21 = <unknown table>.imprintPanel.slotBg
		222	[  0]	ISF  	   		21	; if not <unknown table>.imprintPanel.slotBg
		223	[  0]	JMP  	 22		18	; 	goto 242
		224	[  0]	GGET 	 21		127	; slot21 = _env["tonumber"]
		225	[  0]	TGETS	 23	0	132	; slot23 = slot0.imprintPanel
		226	[  0]	TGETS	 23	23	123	; slot23 = <unknown table>.imprintPanel.slotBg
		227	[  0]	TGETS	 23	23	126	; slot23 = <unknown table>.imprintPanel.slotBg.offsetX
		228	[  0]	IST  	   		23	; if <unknown table>.imprintPanel.slotBg.offsetX
		229	[  0]	JMP  	 24		1	; 	goto 231
		230	[  0]	KSHORT	 23		0	; slot23 = 0
		231	[  0]	CALL 	 21	2	2	; slot21 = tonumber(slot22)
		232	[  0]	MOV  	 19		21	; slot19 = tonumber
		233	[  0]	GGET 	 21		127	; slot21 = _env["tonumber"]
		234	[  0]	TGETS	 23	0	132	; slot23 = slot0.imprintPanel
		235	[  0]	TGETS	 23	23	123	; slot23 = <unknown table>.imprintPanel.slotBg
		236	[  0]	TGETS	 23	23	125	; slot23 = <unknown table>.imprintPanel.slotBg.offsetY
		237	[  0]	IST  	   		23	; if <unknown table>.imprintPanel.slotBg.offsetY
		238	[  0]	JMP  	 24		1	; 	goto 240
		239	[  0]	KSHORT	 23		0	; slot23 = 0
		240	[  0]	CALL 	 21	2	2	; slot21 = tonumber(slot22)
		241	[  0]	MOV  	 20		21	; slot20 = tonumber
		242	[  0]	KPRI 	 21		1	; slot21 = false
		243	[  0]	UGET 	 22		0	; slot22 = uv0"unknwon"
		244	[  0]	TGETS	 22	22	143	; slot22 = uv0"unknown".previewImprint
		245	[  0]	ISF  	   		22	; if not uv0"unknown".previewImprint
		246	[  0]	JMP  	 23		18	; 	goto 265
		247	[  0]	UGET 	 22		0	; slot22 = uv0"unknwon"
		248	[  0]	TGETS	 22	22	142	; slot22 = uv0"unknown".previewAlpha
		249	[  0]	KNUM 	 23		1	; slot23 = 0.5
		250	[  0]	ISGE 	 23		22	; if slot23 >= uv0"unknown".previewAlpha
		251	[  0]	JMP  	 22		13	; 	goto 265
		252	[  0]	ADDVV	 22	15	19	; slot22 = slot15 + tonumber
		253	[  0]	ADDVV	 23	18	20	; slot23 = math.floor + tonumber
		254	[  0]	ISGT 	 22		3	; if slot22 > slot3
		255	[  0]	JMP  	 24		9	; 	goto 265
		256	[  0]	ADDVV	 24	22	12	; slot24 = slot22 + slot12
		257	[  0]	ISGT 	  3		24	; if slot3 > slot24
		258	[  0]	JMP  	 24		6	; 	goto 265
		259	[  0]	ISGT 	 23		4	; if slot23 > slot4
		260	[  0]	JMP  	 24		4	; 	goto 265
		261	[  0]	ADDVV	 24	23	13	; slot24 = slot23 + slot13
		262	[  0]	ISGT 	  4		24	; if slot4 > slot24
		263	[  0]	JMP  	 24		1	; 	goto 265
		264	[  0]	KPRI 	 21		2	; slot21 = true
		265	[  0]	ISF  	   		21	; if not slot21
		266	[  0]	JMP  	 22		2	; 	goto 269
		267	[  0]	KNUM 	 22		6	; slot22 = 1.15
		268	[  0]	JMP  	 23		1	; 	goto 270
		269	[  0]	KSHORT	 22		1	; slot22 = 1
		270	[  0]	UGET 	 23		0	; slot23 = uv0"unknwon"
		271	[  0]	UGET 	 24		0	; slot24 = uv0"unknwon"
		272	[  0]	TGETS	 24	24	136	; slot24 = uv0"unknown".previewScale
		273	[  0]	UGET 	 25		0	; slot25 = uv0"unknwon"
		274	[  0]	TGETS	 25	25	136	; slot25 = uv0"unknown".previewScale
		275	[  0]	SUBVV	 25	22	25	; slot25 = slot22 - uv0"unknown".previewScale
		276	[  0]	GGET 	 26		145	; slot26 = _env["math"]
		277	[  0]	TGETS	 26	26	138	; slot26 = math.min
		278	[  0]	KSHORT	 28		1	; slot28 = 1
		279	[  0]	MULVN	 29	1	3	; slot29 = slot1 * 12
		280	[  0]	CALL 	 26	2	3	; slot26 = math.min(slot27, slot28)
		281	[  0]	MULVV	 25	25	26	; slot25 = slot25 * math.min
		282	[  0]	ADDVV	 24	24	25	; slot24 = uv0"unknown".previewScale + slot25
		283	[  0]	TSETS	 24	23	136	; uv0"unknown".previewScale = slot24
		284	[  0]	UGET 	 23		0	; slot23 = uv0"unknwon"
		285	[  0]	TGETS	 23	23	136	; slot23 = uv0"unknown".previewScale
		286	[  0]	ISF  	   		21	; if not slot21
		287	[  0]	JMP  	 24		38	; 	goto 326
		288	[  0]	MOV  	 24		22	; slot24 = slot22
		289	[  0]	ADDVV	 25	15	19	; slot25 = slot15 + tonumber
		290	[  0]	DIVVN	 26	12	5	; slot26 = slot12 / 2
		291	[  0]	ADDVV	 25	25	26	; slot25 = slot25 + slot26
		292	[  0]	ADDVV	 26	18	20	; slot26 = math.floor + tonumber
		293	[  0]	DIVVN	 27	13	5	; slot27 = slot13 / 2
		294	[  0]	ADDVV	 26	26	27	; slot26 = slot26 + slot27
		295	[  0]	UGET 	 27		2	; slot27 = uv2"unknwon"
		296	[  0]	TGETS	 27	27	122	; slot27 = uv2"unknown"._slotTrimmedOffsetX
		297	[  0]	IST  	   		27	; if uv2"unknown"._slotTrimmedOffsetX
		298	[  0]	JMP  	 28		1	; 	goto 300
		299	[  0]	KSHORT	 27		0	; slot27 = 0
		300	[  0]	UGET 	 28		2	; slot28 = uv2"unknwon"
		301	[  0]	TGETS	 28	28	121	; slot28 = uv2"unknown"._slotTrimmedW
		302	[  0]	IST  	   		28	; if uv2"unknown"._slotTrimmedW
		303	[  0]	JMP  	 29		1	; 	goto 305
		304	[  0]	MOV  	 28		12	; slot28 = slot12
		305	[  0]	ADDVV	 29	15	19	; slot29 = slot15 + tonumber
		306	[  0]	ADDVV	 29	29	27	; slot29 = slot29 + slot27
		307	[  0]	ADDVV	 30	18	20	; slot30 = math.floor + tonumber
		308	[  0]	SUBVV	 31	29	25	; slot31 = slot29 - slot25
		309	[  0]	MULVV	 31	31	24	; slot31 = slot31 * slot24
		310	[  0]	ADDVV	 31	25	31	; slot31 = slot25 + slot31
		311	[  0]	SUBVV	 32	30	26	; slot32 = slot30 - slot26
		312	[  0]	MULVV	 32	32	24	; slot32 = slot32 * slot24
		313	[  0]	ADDVV	 32	26	32	; slot32 = slot26 + slot32
		314	[  0]	UGET 	 33		2	; slot33 = uv2"unknwon"
		315	[  0]	TDUP 	 34		120	; slot34 = copy table#k120
		316	[  0]	TSETS	 10	34	119	; slot34.imprint = uv0"unknown".lastPreviewImprint
		317	[  0]	TSETS	 31	34	130	; slot34.x = slot31
		318	[  0]	TSETS	 32	34	146	; slot34.y = slot32
		319	[  0]	MULVV	 35	28	24	; slot35 = slot28 * slot24
		320	[  0]	TSETS	 35	34	129	; slot34.w = slot35
		321	[  0]	MULVV	 35	13	24	; slot35 = slot13 * slot24
		322	[  0]	TSETS	 35	34	118	; slot34.h = slot35
		323	[  0]	TSETS	 23	34	147	; slot34.scale = uv0"unknown".previewScale
		324	[  0]	TSETS	 24	34	117	; slot34.tooltipScale = slot24
		325	[  0]	TSETS	 34	33	124	; uv2"unknown"._hoveredSlot = slot34
		326	[  0]	ADDVV	 24	15	19	; slot24 = slot15 + tonumber
		327	[  0]	DIVVN	 25	12	5	; slot25 = slot12 / 2
		328	[  0]	ADDVV	 24	24	25	; slot24 = slot24 + slot25
		329	[  0]	ADDVV	 25	18	20	; slot25 = math.floor + tonumber
		330	[  0]	DIVVN	 26	13	5	; slot26 = slot13 / 2
		331	[  0]	ADDVV	 25	25	26	; slot25 = slot25 + slot26
		332	[  0]	UGET 	 26		2	; slot26 = uv2"unknwon"
		333	[  0]	TGETS	 26	26	116	; slot26 = uv2"unknown"._gainBgImage
		334	[  0]	ISF  	   		26	; if not uv2"unknown"._gainBgImage
		335	[  0]	JMP  	 27		220	; 	goto 556
		336	[  0]	UGET 	 26		2	; slot26 = uv2"unknwon"
		337	[  0]	TGETS	 26	26	116	; slot26 = uv2"unknown"._gainBgImage
		338	[  0]	MOV  	 29		26	; slot29 = uv2"unknown"._gainBgImage
		339	[  0]	TGETS	 27	26	115	; slot27 = uv2"unknown"._gainBgImage.getDimensions
		340	[  0]	CALL 	 27	3	2	; slot27, slot28 = uv2"unknown"._gainBgImage.getDimensions(slot28)
		341	[  0]	KSHORT	 29		0	; slot29 = 0
		342	[  0]	KSHORT	 30		65526	; slot30 = 65526
		343	[  0]	TGETS	 31	0	132	; slot31 = slot0.imprintPanel
		344	[  0]	ISF  	   		31	; if not <unknown table>.imprintPanel
		345	[  0]	JMP  	 32		29	; 	goto 375
		346	[  0]	TGETS	 31	0	132	; slot31 = slot0.imprintPanel
		347	[  0]	TGETS	 31	31	128	; slot31 = <unknown table>.imprintPanel.preview
		348	[  0]	ISF  	   		31	; if not <unknown table>.imprintPanel.preview
		349	[  0]	JMP  	 32		25	; 	goto 375
		350	[  0]	TGETS	 31	0	132	; slot31 = slot0.imprintPanel
		351	[  0]	TGETS	 31	31	128	; slot31 = <unknown table>.imprintPanel.preview
		352	[  0]	TGETS	 31	31	114	; slot31 = <unknown table>.imprintPanel.preview.gainBg
		353	[  0]	ISF  	   		31	; if not <unknown table>.imprintPanel.preview.gainBg
		354	[  0]	JMP  	 32		20	; 	goto 375
		355	[  0]	GGET 	 31		127	; slot31 = _env["tonumber"]
		356	[  0]	TGETS	 33	0	132	; slot33 = slot0.imprintPanel
		357	[  0]	TGETS	 33	33	128	; slot33 = <unknown table>.imprintPanel.preview
		358	[  0]	TGETS	 33	33	114	; slot33 = <unknown table>.imprintPanel.preview.gainBg
		359	[  0]	TGETS	 33	33	126	; slot33 = <unknown table>.imprintPanel.preview.gainBg.offsetX
		360	[  0]	IST  	   		33	; if <unknown table>.imprintPanel.preview.gainBg.offsetX
		361	[  0]	JMP  	 34		1	; 	goto 363
		362	[  0]	KSHORT	 33		0	; slot33 = 0
		363	[  0]	CALL 	 31	2	2	; slot31 = tonumber(slot32)
		364	[  0]	MOV  	 29		31	; slot29 = tonumber
		365	[  0]	GGET 	 31		127	; slot31 = _env["tonumber"]
		366	[  0]	TGETS	 33	0	132	; slot33 = slot0.imprintPanel
		367	[  0]	TGETS	 33	33	128	; slot33 = <unknown table>.imprintPanel.preview
		368	[  0]	TGETS	 33	33	114	; slot33 = <unknown table>.imprintPanel.preview.gainBg
		369	[  0]	TGETS	 33	33	125	; slot33 = <unknown table>.imprintPanel.preview.gainBg.offsetY
		370	[  0]	IST  	   		33	; if <unknown table>.imprintPanel.preview.gainBg.offsetY
		371	[  0]	JMP  	 34		1	; 	goto 373
		372	[  0]	KSHORT	 33		65526	; slot33 = 65526
		373	[  0]	CALL 	 31	2	2	; slot31 = tonumber(slot32)
		374	[  0]	MOV  	 30		31	; slot30 = tonumber
		375	[  0]	GGET 	 31		145	; slot31 = _env["math"]
		376	[  0]	TGETS	 31	31	144	; slot31 = math.floor
		377	[  0]	DIVVN	 33	27	5	; slot33 = uv2"unknown"._gainBgImage.getDimensions / 2
		378	[  0]	SUBVV	 33	24	33	; slot33 = slot24 - slot33
		379	[  0]	ADDVV	 33	33	29	; slot33 = slot33 + tonumber
		380	[  0]	ADDVN	 33	33	1	; slot33 = slot33 + 0.5
		381	[  0]	CALL 	 31	2	2	; slot31 = math.floor(slot32)
		382	[  0]	GGET 	 32		145	; slot32 = _env["math"]
		383	[  0]	TGETS	 32	32	144	; slot32 = math.floor
		384	[  0]	DIVVN	 34	28	5	; slot34 = slot28 / 2
		385	[  0]	SUBVV	 34	25	34	; slot34 = slot25 - slot34
		386	[  0]	ADDVV	 34	34	30	; slot34 = slot34 + tonumber
		387	[  0]	ADDVN	 34	34	1	; slot34 = slot34 + 0.5
		388	[  0]	CALL 	 32	2	2	; slot32 = math.floor(slot33)
		389	[  0]	TGETS	 33	0	132	; slot33 = slot0.imprintPanel
		390	[  0]	ISF  	   		33	; if not <unknown table>.imprintPanel
		391	[  0]	JMP  	 34		7	; 	goto 399
		392	[  0]	TGETS	 33	0	132	; slot33 = slot0.imprintPanel
		393	[  0]	TGETS	 33	33	128	; slot33 = <unknown table>.imprintPanel.preview
		394	[  0]	ISF  	   		33	; if not <unknown table>.imprintPanel.preview
		395	[  0]	JMP  	 34		3	; 	goto 399
		396	[  0]	TGETS	 33	0	132	; slot33 = slot0.imprintPanel
		397	[  0]	TGETS	 33	33	128	; slot33 = <unknown table>.imprintPanel.preview
		398	[  0]	TGETS	 33	33	113	; slot33 = <unknown table>.imprintPanel.preview.gainLabel
		399	[  0]	ISF  	   		33	; if not <unknown table>.imprintPanel.preview.gainLabel
		400	[  0]	JMP  	 34		3	; 	goto 404
		401	[  0]	TGETS	 34	33	112	; slot34 = <unknown table>.imprintPanel.preview.gainLabel.text
		402	[  0]	IST  	   		34	; if <unknown table>.imprintPanel.preview.gainLabel.text
		403	[  0]	JMP  	 35		9	; 	goto 413
		404	[  0]	UGET 	 34		3	; slot34 = uv3"unknwon"
		405	[  0]	TGETS	 34	34	111	; slot34 = uv3"unknown".getText
		406	[  0]	KSTR 	 36		110	; slot36 = "imprint_gained_label"
		407	[  0]	GGET 	 37		109	; slot37 = _env["_G"]
		408	[  0]	TGETS	 37	37	108	; slot37 = _G.currentGameLang
		409	[  0]	IST  	   		37	; if _G.currentGameLang
		410	[  0]	JMP  	 38		1	; 	goto 412
		411	[  0]	KSTR 	 37		107	; slot37 = "ko"
		412	[  0]	CALL 	 34	2	3	; slot34 = uv3"unknown".getText(slot35, slot36)
		413	[  0]	UGET 	 35		4	; slot35 = uv4"unknwon"
		414	[  0]	CALL 	 35	2	1	; slot35 = uv4"unknown"()
		415	[  0]	IST  	   		35	; if uv4"unknown"
		416	[  0]	JMP  	 36		1	; 	goto 418
		417	[  0]	TGETS	 35	0	106	; slot35 = slot0.font
		418	[  0]	ISF  	   		35	; if not <unknown table>.font
		419	[  0]	JMP  	 36		6	; 	goto 426
		420	[  0]	UGET 	 36		5	; slot36 = uv5"unknwon"
		421	[  0]	MOV  	 38		35	; slot38 = <unknown table>.font
		422	[  0]	MOV  	 39		34	; slot39 = uv3"unknown".getText
		423	[  0]	CALL 	 36	2	3	; slot36 = uv5"unknown"(slot37, <unknown table>.font)
		424	[  0]	IST  	   		36	; if uv5"unknown"
		425	[  0]	JMP  	 37		1	; 	goto 427
		426	[  0]	KSHORT	 36		0	; slot36 = 0
		427	[  0]	GGET 	 37		145	; slot37 = _env["math"]
		428	[  0]	TGETS	 37	37	137	; slot37 = math.max
		429	[  0]	KSHORT	 39		0	; slot39 = 0
		430	[  0]	GGET 	 40		145	; slot40 = _env["math"]
		431	[  0]	TGETS	 40	40	105	; slot40 = math.ceil
		432	[  0]	ADDVN	 42	36	7	; slot42 = slot36 + 16
		433	[  0]	UGET 	 43		2	; slot43 = uv2"unknwon"
		434	[  0]	TGETS	 43	43	104	; slot43 = uv2"unknown".GAIN_TAB_INNER_W
		435	[  0]	SUBVV	 42	42	43	; slot42 = slot42 - uv2"unknown".GAIN_TAB_INNER_W
		436	[  0]	CALL 	 40	0	2	; MULTRES = math.ceil(slot41)
		437	[  0]	CALLM	 37	2	1	; slot37 = math.max(<unknown table>.font, ...MULTRES)
		438	[  0]	GGET 	 38		145	; slot38 = _env["math"]
		439	[  0]	TGETS	 38	38	138	; slot38 = math.min
		440	[  0]	MOV  	 40		37	; slot40 = math.max
		441	[  0]	UGET 	 41		2	; slot41 = uv2"unknwon"
		442	[  0]	TGETS	 41	41	103	; slot41 = uv2"unknown".GAIN_TAB_MAX_EXTRA
		443	[  0]	CALL 	 38	2	3	; slot38 = math.min(slot39, math.max)
		444	[  0]	MOV  	 37		38	; slot37 = math.min
		445	[  0]	GGET 	 38		102	; slot38 = _env["love"]
		446	[  0]	TGETS	 38	38	101	; slot38 = love.graphics
		447	[  0]	TGETS	 38	38	100	; slot38 = love.graphics.setColor
		448	[  0]	KSHORT	 40		1	; slot40 = 1
		449	[  0]	KSHORT	 41		1	; slot41 = 1
		450	[  0]	KSHORT	 42		1	; slot42 = 1
		451	[  0]	UGET 	 43		0	; slot43 = uv0"unknwon"
		452	[  0]	TGETS	 43	43	142	; slot43 = uv0"unknown".previewAlpha
		453	[  0]	CALL 	 38	1	5	;  = love.graphics.setColor(slot39, slot40, slot41, slot42)
		454	[  0]	UGET 	 38		2	; slot38 = uv2"unknwon"
		455	[  0]	TGETS	 38	38	99	; slot38 = uv2"unknown"._drawGainPlate
		456	[  0]	MOV  	 40		26	; slot40 = uv2"unknown"._gainBgImage
		457	[  0]	MOV  	 41		31	; slot41 = math.floor
		458	[  0]	MOV  	 42		32	; slot42 = math.floor
		459	[  0]	MOV  	 43		37	; slot43 = math.min
		460	[  0]	CALL 	 38	1	5	;  = uv2"unknown"._drawGainPlate(slot39, uv2"unknown"._gainBgImage, math.floor, math.floor)
		461	[  0]	ISF  	   		35	; if not <unknown table>.font
		462	[  0]	JMP  	 38		93	; 	goto 556
		463	[  0]	GGET 	 38		102	; slot38 = _env["love"]
		464	[  0]	TGETS	 38	38	101	; slot38 = love.graphics
		465	[  0]	TGETS	 38	38	98	; slot38 = love.graphics.getFont
		466	[  0]	CALL 	 38	2	1	; slot38 = love.graphics.getFont()
		467	[  0]	GGET 	 39		102	; slot39 = _env["love"]
		468	[  0]	TGETS	 39	39	101	; slot39 = love.graphics
		469	[  0]	TGETS	 39	39	97	; slot39 = love.graphics.setFont
		470	[  0]	MOV  	 41		35	; slot41 = <unknown table>.font
		471	[  0]	CALL 	 39	1	2	;  = love.graphics.setFont(uv2"unknown"._gainBgImage)
		472	[  0]	GGET 	 39		145	; slot39 = _env["math"]
		473	[  0]	TGETS	 39	39	138	; slot39 = math.min
		474	[  0]	MOV  	 41		36	; slot41 = slot36
		475	[  0]	UGET 	 42		2	; slot42 = uv2"unknwon"
		476	[  0]	TGETS	 42	42	104	; slot42 = uv2"unknown".GAIN_TAB_INNER_W
		477	[  0]	ADDVV	 42	42	37	; slot42 = uv2"unknown".GAIN_TAB_INNER_W + math.min
		478	[  0]	SUBVN	 42	42	7	; slot42 = slot42 - 16
		479	[  0]	CALL 	 39	2	3	; slot39 = math.min(uv2"unknown"._gainBgImage, slot41)
		480	[  0]	SUBVV	 39	39	37	; slot39 = math.min - math.min
		481	[  0]	KSHORT	 40		65494	; slot40 = 65494
		482	[  0]	KSHORT	 41		5	; slot41 = 5
		483	[  0]	ISF  	   		33	; if not <unknown table>.imprintPanel.preview.gainLabel
		484	[  0]	JMP  	 42		14	; 	goto 499
		485	[  0]	GGET 	 42		127	; slot42 = _env["tonumber"]
		486	[  0]	TGETS	 44	33	126	; slot44 = <unknown table>.imprintPanel.preview.gainLabel.offsetX
		487	[  0]	IST  	   		44	; if <unknown table>.imprintPanel.preview.gainLabel.offsetX
		488	[  0]	JMP  	 45		1	; 	goto 490
		489	[  0]	KSHORT	 44		65494	; slot44 = 65494
		490	[  0]	CALL 	 42	2	2	; slot42 = tonumber(math.min)
		491	[  0]	MOV  	 40		42	; slot40 = tonumber
		492	[  0]	GGET 	 42		127	; slot42 = _env["tonumber"]
		493	[  0]	TGETS	 44	33	125	; slot44 = <unknown table>.imprintPanel.preview.gainLabel.offsetY
		494	[  0]	IST  	   		44	; if <unknown table>.imprintPanel.preview.gainLabel.offsetY
		495	[  0]	JMP  	 45		1	; 	goto 497
		496	[  0]	KSHORT	 44		5	; slot44 = 5
		497	[  0]	CALL 	 42	2	2	; slot42 = tonumber(math.min)
		498	[  0]	MOV  	 41		42	; slot41 = tonumber
		499	[  0]	GGET 	 42		145	; slot42 = _env["math"]
		500	[  0]	TGETS	 42	42	144	; slot42 = math.floor
		501	[  0]	DIVVN	 44	39	5	; slot44 = slot39 / 2
		502	[  0]	SUBVV	 44	24	44	; slot44 = slot24 - slot44
		503	[  0]	ADDVV	 44	44	40	; slot44 = slot44 + tonumber
		504	[  0]	ADDVN	 44	44	1	; slot44 = slot44 + 0.5
		505	[  0]	CALL 	 42	2	2	; slot42 = math.floor(math.min)
		506	[  0]	GGET 	 43		145	; slot43 = _env["math"]
		507	[  0]	TGETS	 43	43	144	; slot43 = math.floor
		508	[  0]	ADDVN	 45	41	1	; slot45 = tonumber + 0.5
		509	[  0]	CALL 	 43	2	2	; slot43 = math.floor(slot44)
		510	[  0]	ADDVV	 43	32	43	; slot43 = math.floor + math.floor
		511	[  0]	GGET 	 44		102	; slot44 = _env["love"]
		512	[  0]	TGETS	 44	44	101	; slot44 = love.graphics
		513	[  0]	TGETS	 44	44	100	; slot44 = love.graphics.setColor
		514	[  0]	KSHORT	 46		1	; slot46 = 1
		515	[  0]	KNUM 	 47		8	; slot47 = 0.95
		516	[  0]	KNUM 	 48		9	; slot48 = 0.8
		517	[  0]	UGET 	 49		0	; slot49 = uv0"unknwon"
		518	[  0]	TGETS	 49	49	142	; slot49 = uv0"unknown".previewAlpha
		519	[  0]	CALL 	 44	1	5	;  = love.graphics.setColor(slot45, slot46, slot47, slot48)
		520	[  0]	GGET 	 44		145	; slot44 = _env["math"]
		521	[  0]	TGETS	 44	44	138	; slot44 = math.min
		522	[  0]	MOV  	 46		36	; slot46 = slot36
		523	[  0]	UGET 	 47		2	; slot47 = uv2"unknwon"
		524	[  0]	TGETS	 47	47	104	; slot47 = uv2"unknown".GAIN_TAB_INNER_W
		525	[  0]	ADDVV	 47	47	37	; slot47 = uv2"unknown".GAIN_TAB_INNER_W + math.min
		526	[  0]	SUBVN	 47	47	7	; slot47 = slot47 - 16
		527	[  0]	CALL 	 44	2	3	; slot44 = math.min(slot45, slot46)
		528	[  0]	GGET 	 45		96	; slot45 = _env["require"]
		529	[  0]	KSTR 	 47		95	; slot47 = "src.ui.widgets"
		530	[  0]	CALL 	 45	2	2	; slot45 = require(slot46)
		531	[  0]	TGETS	 45	45	94	; slot45 = require.text_fit
		532	[  0]	TGETS	 46	45	93	; slot46 = require.text_fit.draw
		533	[  0]	TGETS	 48	45	92	; slot48 = require.text_fit.fit
		534	[  0]	MOV  	 50		34	; slot50 = uv3"unknown".getText
		535	[  0]	MOV  	 51		44	; slot51 = math.min
		536	[  0]	MOV  	 52		35	; slot52 = <unknown table>.font
		537	[  0]	TNEW 	 53		0	; slot53 = new table( array: 0, dict: 1)
		538	[  0]	CALL 	 48	2	5	; slot48 = require.text_fit.fit(uv0"unknown".previewAlpha, uv3"unknown".getText, math.min, <unknown table>.font)
		539	[  0]	MOV  	 49		42	; slot49 = math.floor
		540	[  0]	MOV  	 50		43	; slot50 = slot43
		541	[  0]	MOV  	 51		44	; slot51 = math.min
		542	[  0]	MOV  	 54		35	; slot54 = <unknown table>.font
		543	[  0]	TGETS	 52	35	133	; slot52 = <unknown table>.font.getHeight
		544	[  0]	CALL 	 52	2	2	; slot52 = <unknown table>.font.getHeight(slot53)
		545	[  0]	TDUP 	 53		90	; slot53 = copy table#k90
		546	[  0]	KSTR 	 54		91	; slot54 = "imprint_gain:"
		547	[  0]	MOV  	 55		34	; slot55 = uv3"unknown".getText
		548	[  0]	CAT  	 54	54	55	; slot54 = slot54 .. uv3"unknown".getText
		549	[  0]	TSETS	 54	53	89	; slot53.key = slot54
		550	[  0]	CALL 	 46	1	7	;  = require.text_fit.draw(slot47, require.text_fit.fit, math.floor, slot50, math.min, <unknown table>.font.getHeight)
		551	[  0]	GGET 	 46		102	; slot46 = _env["love"]
		552	[  0]	TGETS	 46	46	101	; slot46 = love.graphics
		553	[  0]	TGETS	 46	46	97	; slot46 = love.graphics.setFont
		554	[  0]	MOV  	 48		38	; slot48 = love.graphics.getFont
		555	[  0]	CALL 	 46	1	2	;  = love.graphics.setFont(slot47)
		556	[  0]	GGET 	 26		102	; slot26 = _env["love"]
		557	[  0]	TGETS	 26	26	101	; slot26 = love.graphics
		558	[  0]	TGETS	 26	26	88	; slot26 = love.graphics.push
		559	[  0]	CALL 	 26	1	1	;  = love.graphics.push()
		560	[  0]	GGET 	 26		102	; slot26 = _env["love"]
		561	[  0]	TGETS	 26	26	101	; slot26 = love.graphics
		562	[  0]	TGETS	 26	26	87	; slot26 = love.graphics.translate
		563	[  0]	MOV  	 28		24	; slot28 = slot24
		564	[  0]	MOV  	 29		25	; slot29 = slot25
		565	[  0]	CALL 	 26	1	3	;  = love.graphics.translate(uv2"unknown"._gainBgImage.getDimensions, slot28)
		566	[  0]	GGET 	 26		102	; slot26 = _env["love"]
		567	[  0]	TGETS	 26	26	101	; slot26 = love.graphics
		568	[  0]	TGETS	 26	26	147	; slot26 = love.graphics.scale
		569	[  0]	MOV  	 28		23	; slot28 = uv0"unknown".previewScale
		570	[  0]	MOV  	 29		23	; slot29 = uv0"unknown".previewScale
		571	[  0]	CALL 	 26	1	3	;  = love.graphics.scale(uv2"unknown"._gainBgImage.getDimensions, uv0"unknown".previewScale)
		572	[  0]	GGET 	 26		102	; slot26 = _env["love"]
		573	[  0]	TGETS	 26	26	101	; slot26 = love.graphics
		574	[  0]	TGETS	 26	26	87	; slot26 = love.graphics.translate
		575	[  0]	UNM  	 28		24	; slot28 = -slot24
		576	[  0]	UNM  	 29		25	; slot29 = -slot25
		577	[  0]	CALL 	 26	1	3	;  = love.graphics.translate(uv2"unknown"._gainBgImage.getDimensions, slot28)
		578	[  0]	TGETS	 26	10	86	; slot26 = uv0"unknown".lastPreviewImprint.icon
		579	[  0]	ISF  	   		26	; if not uv0"unknown".lastPreviewImprint.icon
		580	[  0]	JMP  	 27		66	; 	goto 647
		581	[  0]	UGET 	 26		6	; slot26 = uv6"unknwon"
		582	[  0]	UGET 	 28		2	; slot28 = uv2"unknwon"
		583	[  0]	TGETS	 29	10	86	; slot29 = uv0"unknown".lastPreviewImprint.icon
		584	[  0]	CALL 	 26	2	3	; slot26 = uv6"unknown"(uv2"unknown"._gainBgImage.getDimensions, uv2"unknown")
		585	[  0]	ISF  	   		26	; if not uv6"unknown"
		586	[  0]	JMP  	 27		60	; 	goto 647
		587	[  0]	MOV  	 29		26	; slot29 = uv6"unknown"
		588	[  0]	TGETS	 27	26	115	; slot27 = uv6"unknown".getDimensions
		589	[  0]	CALL 	 27	3	2	; slot27, slot28 = uv6"unknown".getDimensions(uv2"unknown")
		590	[  0]	KSHORT	 29		4	; slot29 = 4
		591	[  0]	KSHORT	 30		0	; slot30 = 0
		592	[  0]	TGETS	 31	0	132	; slot31 = slot0.imprintPanel
		593	[  0]	ISF  	   		31	; if not <unknown table>.imprintPanel
		594	[  0]	JMP  	 32		20	; 	goto 615
		595	[  0]	TGETS	 31	0	132	; slot31 = slot0.imprintPanel
		596	[  0]	TGETS	 31	31	85	; slot31 = <unknown table>.imprintPanel.iconOffset
		597	[  0]	ISF  	   		31	; if not <unknown table>.imprintPanel.iconOffset
		598	[  0]	JMP  	 32		16	; 	goto 615
		599	[  0]	GGET 	 31		127	; slot31 = _env["tonumber"]
		600	[  0]	TGETS	 33	0	132	; slot33 = slot0.imprintPanel
		601	[  0]	TGETS	 33	33	85	; slot33 = <unknown table>.imprintPanel.iconOffset
		602	[  0]	TGETS	 33	33	130	; slot33 = <unknown table>.imprintPanel.iconOffset.x
		603	[  0]	CALL 	 31	2	2	; slot31 = tonumber(math.floor)
		604	[  0]	ISTC 	 29		31	; slot29 = tonumber; if tonumber
		605	[  0]	JMP  	 32		1	; 	goto 607
		606	[  0]	KSHORT	 29		4	; slot29 = 4
		607	[  0]	GGET 	 31		127	; slot31 = _env["tonumber"]
		608	[  0]	TGETS	 33	0	132	; slot33 = slot0.imprintPanel
		609	[  0]	TGETS	 33	33	85	; slot33 = <unknown table>.imprintPanel.iconOffset
		610	[  0]	TGETS	 33	33	146	; slot33 = <unknown table>.imprintPanel.iconOffset.y
		611	[  0]	CALL 	 31	2	2	; slot31 = tonumber(math.floor)
		612	[  0]	ISTC 	 30		31	; slot30 = tonumber; if tonumber
		613	[  0]	JMP  	 32		1	; 	goto 615
		614	[  0]	KSHORT	 30		0	; slot30 = 0
		615	[  0]	GGET 	 31		102	; slot31 = _env["love"]
		616	[  0]	TGETS	 31	31	101	; slot31 = love.graphics
		617	[  0]	TGETS	 31	31	100	; slot31 = love.graphics.setColor
		618	[  0]	KSHORT	 33		1	; slot33 = 1
		619	[  0]	KSHORT	 34		1	; slot34 = 1
		620	[  0]	KSHORT	 35		1	; slot35 = 1
		621	[  0]	UGET 	 36		0	; slot36 = uv0"unknwon"
		622	[  0]	TGETS	 36	36	142	; slot36 = uv0"unknown".previewAlpha
		623	[  0]	CALL 	 31	1	5	;  = love.graphics.setColor(math.floor, slot33, slot34, slot35)
		624	[  0]	GGET 	 31		102	; slot31 = _env["love"]
		625	[  0]	TGETS	 31	31	101	; slot31 = love.graphics
		626	[  0]	TGETS	 31	31	93	; slot31 = love.graphics.draw
		627	[  0]	MOV  	 33		26	; slot33 = uv6"unknown"
		628	[  0]	GGET 	 34		145	; slot34 = _env["math"]
		629	[  0]	TGETS	 34	34	144	; slot34 = math.floor
		630	[  0]	MULVV	 36	29	7	; slot36 = slot29 * slot7
		631	[  0]	ADDVN	 36	36	1	; slot36 = slot36 + 0.5
		632	[  0]	CALL 	 34	2	2	; slot34 = math.floor(slot35)
		633	[  0]	ADDVV	 34	15	34	; slot34 = slot15 + math.floor
		634	[  0]	GGET 	 35		145	; slot35 = _env["math"]
		635	[  0]	TGETS	 35	35	144	; slot35 = math.floor
		636	[  0]	SUBVV	 37	13	28	; slot37 = slot13 - uv2"unknown"
		637	[  0]	DIVVN	 37	37	5	; slot37 = slot37 / 2
		638	[  0]	CALL 	 35	2	2	; slot35 = math.floor(slot36)
		639	[  0]	ADDVV	 35	18	35	; slot35 = math.floor + math.floor
		640	[  0]	GGET 	 36		145	; slot36 = _env["math"]
		641	[  0]	TGETS	 36	36	144	; slot36 = math.floor
		642	[  0]	MULVV	 38	30	7	; slot38 = slot30 * slot7
		643	[  0]	ADDVN	 38	38	1	; slot38 = slot38 + 0.5
		644	[  0]	CALL 	 36	2	2	; slot36 = math.floor(slot37)
		645	[  0]	ADDVV	 35	35	36	; slot35 = slot35 + math.floor
		646	[  0]	CALL 	 31	1	4	;  = love.graphics.draw(math.floor, uv6"unknown", slot34)
		647	[  0]	ISF  	   		11	; if not uv2"unknown"._slotBgImage
		648	[  0]	JMP  	 26		176	; 	goto 825
		649	[  0]	ISFC 	 26		10	; slot26 = uv0"unknown".lastPreviewImprint; if not uv0"unknown".lastPreviewImprint
		650	[  0]	JMP  	 26		9	; 	goto 660
		651	[  0]	GGET 	 26		84	; slot26 = _env["tostring"]
		652	[  0]	TGETS	 28	10	83	; slot28 = uv0"unknown".lastPreviewImprint.rarity
		653	[  0]	IST  	   		28	; if uv0"unknown".lastPreviewImprint.rarity
		654	[  0]	JMP  	 29		1	; 	goto 656
		655	[  0]	KSTR 	 28		82	; slot28 = ""
		656	[  0]	CALL 	 26	2	2	; slot26 = tostring(uv6"unknown".getDimensions)
		657	[  0]	MOV  	 28		26	; slot28 = tostring
		658	[  0]	TGETS	 26	26	81	; slot26 = tostring.lower
		659	[  0]	CALL 	 26	2	2	; slot26 = tostring.lower(uv6"unknown".getDimensions)
		660	[  0]	ISEQS	 26		80	; if tostring.lower == "special"
		661	[  0]	JMP  	 27		2	; 	goto 664
		662	[  0]	KPRI 	 27		1	; slot27 = false
		663	[  0]	JMP  	 28		1	; 	goto 665
		664	[  0]	KPRI 	 27		2	; slot27 = true
		665	[  0]	ISEQS	 26		79	; if tostring.lower == "advanced"
		666	[  0]	JMP  	 28		2	; 	goto 669
		667	[  0]	KPRI 	 28		1	; slot28 = false
		668	[  0]	JMP  	 29		1	; 	goto 670
		669	[  0]	KPRI 	 28		2	; slot28 = true
		670	[  0]	ISEQS	 26		78	; if tostring.lower == "rare"
		671	[  0]	JMP  	 29		4	; 	goto 676
		672	[  0]	ISEQS	 26		77	; if tostring.lower == "r"
		673	[  0]	JMP  	 29		2	; 	goto 676
		674	[  0]	KPRI 	 29		1	; slot29 = false
		675	[  0]	JMP  	 30		1	; 	goto 677
		676	[  0]	KPRI 	 29		2	; slot29 = true
		677	[  0]	ISEQS	 26		76	; if tostring.lower == "legendary"
		678	[  0]	JMP  	 30		6	; 	goto 685
		679	[  0]	ISEQS	 26		75	; if tostring.lower == "legend"
		680	[  0]	JMP  	 30		4	; 	goto 685
		681	[  0]	ISEQS	 26		74	; if tostring.lower == "l"
		682	[  0]	JMP  	 30		2	; 	goto 685
		683	[  0]	KPRI 	 30		1	; slot30 = false
		684	[  0]	JMP  	 31		1	; 	goto 686
		685	[  0]	KPRI 	 30		2	; slot30 = true
		686	[  0]	ISEQS	 26		73	; if tostring.lower == "prism"
		687	[  0]	JMP  	 31		4	; 	goto 692
		688	[  0]	ISEQS	 26		72	; if tostring.lower == "p"
		689	[  0]	JMP  	 31		2	; 	goto 692
		690	[  0]	KPRI 	 31		1	; slot31 = false
		691	[  0]	JMP  	 32		1	; 	goto 693
		692	[  0]	KPRI 	 31		2	; slot31 = true
		693	[  0]	ISFC 	 32		27	; slot32 = slot27; if not slot27
		694	[  0]	JMP  	 32		2	; 	goto 697
		695	[  0]	UGET 	 32		7	; slot32 = uv7"unknwon"
		696	[  0]	CALL 	 32	2	1	; slot32 = uv7"unknown"()
		697	[  0]	ISFC 	 33		28	; slot33 = slot28; if not slot28
		698	[  0]	JMP  	 33		2	; 	goto 701
		699	[  0]	UGET 	 33		8	; slot33 = uv8"unknwon"
		700	[  0]	CALL 	 33	2	1	; slot33 = uv8"unknown"()
		701	[  0]	ISFC 	 34		29	; slot34 = slot29; if not slot29
		702	[  0]	JMP  	 34		2	; 	goto 705
		703	[  0]	UGET 	 34		9	; slot34 = uv9"unknwon"
		704	[  0]	CALL 	 34	2	1	; slot34 = uv9"unknown"()
		705	[  0]	ISFC 	 35		30	; slot35 = slot30; if not slot30
		706	[  0]	JMP  	 35		2	; 	goto 709
		707	[  0]	UGET 	 35		10	; slot35 = uv10"unknwon"
		708	[  0]	CALL 	 35	2	1	; slot35 = uv10"unknown"()
		709	[  0]	ISFC 	 36		31	; slot36 = slot31; if not slot31
		710	[  0]	JMP  	 36		2	; 	goto 713
		711	[  0]	UGET 	 36		11	; slot36 = uv11"unknwon"
		712	[  0]	CALL 	 36	2	1	; slot36 = uv11"unknown"()
		713	[  0]	ISTC 	 37		32	; slot37 = uv7"unknown"; if uv7"unknown"
		714	[  0]	JMP  	 37		7	; 	goto 722
		715	[  0]	ISTC 	 37		33	; slot37 = uv8"unknown"; if uv8"unknown"
		716	[  0]	JMP  	 37		5	; 	goto 722
		717	[  0]	ISTC 	 37		34	; slot37 = uv9"unknown"; if uv9"unknown"
		718	[  0]	JMP  	 37		3	; 	goto 722
		719	[  0]	ISTC 	 37		35	; slot37 = uv10"unknown"; if uv10"unknown"
		720	[  0]	JMP  	 37		1	; 	goto 722
		721	[  0]	MOV  	 37		36	; slot37 = uv11"unknown"
		722	[  0]	ISF  	   		37	; if not uv11"unknown"
		723	[  0]	JMP  	 38		76	; 	goto 800
		724	[  0]	ISF  	   		31	; if not slot31
		725	[  0]	JMP  	 38		69	; 	goto 795
		726	[  0]	MOV  	 40		37	; slot40 = uv11"unknown"
		727	[  0]	TGETS	 38	37	71	; slot38 = uv11"unknown".hasUniform
		728	[  0]	KSTR 	 41		70	; slot41 = "u_time"
		729	[  0]	CALL 	 38	2	3	; slot38 = uv11"unknown".hasUniform(slot39, uv11"unknown")
		730	[  0]	ISF  	   		38	; if not uv11"unknown".hasUniform
		731	[  0]	JMP  	 39		63	; 	goto 795
		732	[  0]	MOV  	 38		37	; slot38 = uv11"unknown"
		733	[  0]	FNEW 	 39		69	; N/A:0-0: 2 args, 1 upvalues, 7 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  2	[  0]	MOV  	  4		2	; slot4 = uv0"unknown"
			  3	[  0]	TGETS	  2	2	1	; slot2 = uv0"unknown".hasUniform
			  4	[  0]	MOV  	  5		0	; slot5 = slot0
			  5	[  0]	CALL 	  2	2	3	; slot2 = uv0"unknown".hasUniform(slot3, uv0"unknown")
			  6	[  0]	ISF  	   		2	; if not slot2
			  7	[  0]	JMP  	  3		6	; 	goto 14
			  8	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  9	[  0]	MOV  	  4		2	; slot4 = uv0"unknown"
			 10	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".send
			 11	[  0]	MOV  	  5		0	; slot5 = slot0
			 12	[  0]	MOV  	  6		1	; slot6 = slot1
			 13	[  0]	CALL 	  2	1	4	;  = uv0"unknown".send(slot3, uv0"unknown", slot5)
			 14	[  0]	RET0 	  0		1	; return
		734	[  0]	MOV  	 40		39	; slot40 = slot39
		735	[  0]	KSTR 	 42		70	; slot42 = "u_time"
		736	[  0]	GGET 	 43		102	; slot43 = _env["love"]
		737	[  0]	TGETS	 43	43	68	; slot43 = love.timer
		738	[  0]	TGETS	 43	43	67	; slot43 = love.timer.getTime
		739	[  0]	CALL 	 43	2	1	; slot43 = love.timer.getTime()
		740	[  0]	MODVN	 43	43	10	; slot43 = love.timer.getTime % 10000
		741	[  0]	CALL 	 40	1	3	;  = slot40(slot41, slot42)
		742	[  0]	MOV  	 40		39	; slot40 = slot39
		743	[  0]	KSTR 	 42		66	; slot42 = "u_uiBase"
		744	[  0]	TDUP 	 43		65	; slot43 = copy table#k65
		745	[  0]	CALL 	 40	1	3	;  = slot40(slot41, slot42)
		746	[  0]	MOV  	 40		39	; slot40 = slot39
		747	[  0]	KSTR 	 42		64	; slot42 = "u_dir"
		748	[  0]	TDUP 	 43		63	; slot43 = copy table#k63
		749	[  0]	CALL 	 40	1	3	;  = slot40(slot41, slot42)
		750	[  0]	MOV  	 40		39	; slot40 = slot39
		751	[  0]	KSTR 	 42		62	; slot42 = "u_cycle"
		752	[  0]	KSHORT	 43		4	; slot43 = 4
		753	[  0]	CALL 	 40	1	3	;  = slot40(slot41, slot42)
		754	[  0]	MOV  	 40		39	; slot40 = slot39
		755	[  0]	KSTR 	 42		61	; slot42 = "u_scale"
		756	[  0]	KSHORT	 43		2	; slot43 = 2
		757	[  0]	CALL 	 40	1	3	;  = slot40(slot41, slot42)
		758	[  0]	MOV  	 40		39	; slot40 = slot39
		759	[  0]	KSTR 	 42		60	; slot42 = "u_grainScale"
		760	[  0]	KSHORT	 43		3	; slot43 = 3
		761	[  0]	CALL 	 40	1	3	;  = slot40(slot41, slot42)
		762	[  0]	MOV  	 40		39	; slot40 = slot39
		763	[  0]	KSTR 	 42		59	; slot42 = "u_grainAmp"
		764	[  0]	KNUM 	 43		11	; slot43 = 0.2
		765	[  0]	CALL 	 40	1	3	;  = slot40(slot41, slot42)
		766	[  0]	MOV  	 40		39	; slot40 = slot39
		767	[  0]	KSTR 	 42		58	; slot42 = "u_filmFreq"
		768	[  0]	KSHORT	 43		2	; slot43 = 2
		769	[  0]	CALL 	 40	1	3	;  = slot40(slot41, slot42)
		770	[  0]	MOV  	 40		39	; slot40 = slot39
		771	[  0]	KSTR 	 42		57	; slot42 = "u_filmAmp"
		772	[  0]	KNUM 	 43		12	; slot43 = 0.25
		773	[  0]	CALL 	 40	1	3	;  = slot40(slot41, slot42)
		774	[  0]	MOV  	 40		39	; slot40 = slot39
		775	[  0]	KSTR 	 42		56	; slot42 = "u_specular"
		776	[  0]	KNUM 	 43		1	; slot43 = 0.5
		777	[  0]	CALL 	 40	1	3	;  = slot40(slot41, slot42)
		778	[  0]	MOV  	 40		39	; slot40 = slot39
		779	[  0]	KSTR 	 42		55	; slot42 = "u_fresnelPow"
		780	[  0]	KNUM 	 43		13	; slot43 = 2.5
		781	[  0]	CALL 	 40	1	3	;  = slot40(slot41, slot42)
		782	[  0]	MOV  	 40		39	; slot40 = slot39
		783	[  0]	KSTR 	 42		54	; slot42 = "u_colorGain"
		784	[  0]	KNUM 	 43		14	; slot43 = 1.8
		785	[  0]	CALL 	 40	1	3	;  = slot40(slot41, slot42)
		786	[  0]	MOV  	 40		39	; slot40 = slot39
		787	[  0]	KSTR 	 42		53	; slot42 = "u_saturation"
		788	[  0]	KNUM 	 43		15	; slot43 = 1.5
		789	[  0]	CALL 	 40	1	3	;  = slot40(slot41, slot42)
		790	[  0]	MOV  	 40		39	; slot40 = slot39
		791	[  0]	KSTR 	 42		52	; slot42 = "u_mixBP"
		792	[  0]	KNUM 	 43		16	; slot43 = 0.32
		793	[  0]	CALL 	 40	1	3	;  = slot40(slot41, slot42)
		794	[  0]	UCLO 	 38		0	; nil uvs >= r38; goto 795
		795	[  0]	GGET 	 38		102	; slot38 = _env["love"]
		796	[  0]	TGETS	 38	38	101	; slot38 = love.graphics
		797	[  0]	TGETS	 38	38	51	; slot38 = love.graphics.setShader
		798	[  0]	MOV  	 40		37	; slot40 = uv11"unknown"
		799	[  0]	CALL 	 38	1	2	;  = love.graphics.setShader(slot39)
		800	[  0]	GGET 	 38		102	; slot38 = _env["love"]
		801	[  0]	TGETS	 38	38	101	; slot38 = love.graphics
		802	[  0]	TGETS	 38	38	100	; slot38 = love.graphics.setColor
		803	[  0]	KSHORT	 40		1	; slot40 = 1
		804	[  0]	KSHORT	 41		1	; slot41 = 1
		805	[  0]	KSHORT	 42		1	; slot42 = 1
		806	[  0]	UGET 	 43		0	; slot43 = uv0"unknwon"
		807	[  0]	TGETS	 43	43	142	; slot43 = uv0"unknown".previewAlpha
		808	[  0]	CALL 	 38	1	5	;  = love.graphics.setColor(slot39, slot40, slot41, slot42)
		809	[  0]	GGET 	 38		102	; slot38 = _env["love"]
		810	[  0]	TGETS	 38	38	101	; slot38 = love.graphics
		811	[  0]	TGETS	 38	38	93	; slot38 = love.graphics.draw
		812	[  0]	MOV  	 40		11	; slot40 = uv2"unknown"._slotBgImage
		813	[  0]	ADDVV	 41	15	19	; slot41 = slot15 + tonumber
		814	[  0]	ADDVV	 42	18	20	; slot42 = math.floor + tonumber
		815	[  0]	KSHORT	 43		0	; slot43 = 0
		816	[  0]	KSHORT	 44		1	; slot44 = 1
		817	[  0]	KSHORT	 45		1	; slot45 = 1
		818	[  0]	CALL 	 38	1	7	;  = love.graphics.draw(slot39, uv2"unknown"._slotBgImage, slot41, slot42, slot43, slot44)
		819	[  0]	ISF  	   		37	; if not uv11"unknown"
		820	[  0]	JMP  	 38		4	; 	goto 825
		821	[  0]	GGET 	 38		102	; slot38 = _env["love"]
		822	[  0]	TGETS	 38	38	101	; slot38 = love.graphics
		823	[  0]	TGETS	 38	38	51	; slot38 = love.graphics.setShader
		824	[  0]	CALL 	 38	1	1	;  = love.graphics.setShader()
		825	[  0]	UGET 	 26		4	; slot26 = uv4"unknwon"
		826	[  0]	CALL 	 26	2	1	; slot26 = uv4"unknown"()
		827	[  0]	GGET 	 27		102	; slot27 = _env["love"]
		828	[  0]	TGETS	 27	27	101	; slot27 = love.graphics
		829	[  0]	TGETS	 27	27	98	; slot27 = love.graphics.getFont
		830	[  0]	CALL 	 27	2	1	; slot27 = love.graphics.getFont()
		831	[  0]	ISF  	   		26	; if not uv4"unknown"
		832	[  0]	JMP  	 28		5	; 	goto 838
		833	[  0]	GGET 	 28		102	; slot28 = _env["love"]
		834	[  0]	TGETS	 28	28	101	; slot28 = love.graphics
		835	[  0]	TGETS	 28	28	97	; slot28 = love.graphics.setFont
		836	[  0]	MOV  	 30		26	; slot30 = uv4"unknown"
		837	[  0]	CALL 	 28	1	2	;  = love.graphics.setFont(slot29)
		838	[  0]	UGET 	 28		12	; slot28 = uv12"unknwon"
		839	[  0]	ISTC 	 30		26	; slot30 = uv4"unknown"; if uv4"unknown"
		840	[  0]	JMP  	 30		3	; 	goto 844
		841	[  0]	ISFC 	 30		0	; slot30 = slot0; if not slot0
		842	[  0]	JMP  	 30		1	; 	goto 844
		843	[  0]	TGETS	 30	0	106	; slot30 = slot0.font
		844	[  0]	KSHORT	 31		12	; slot31 = 12
		845	[  0]	CALL 	 28	2	3	; slot28 = uv12"unknown"(slot29, <unknown table>.font)
		846	[  0]	KSHORT	 29		32	; slot29 = 32
		847	[  0]	TGETS	 30	10	86	; slot30 = uv0"unknown".lastPreviewImprint.icon
		848	[  0]	ISF  	   		30	; if not uv0"unknown".lastPreviewImprint.icon
		849	[  0]	JMP  	 31		10	; 	goto 860
		850	[  0]	UGET 	 30		6	; slot30 = uv6"unknwon"
		851	[  0]	UGET 	 32		2	; slot32 = uv2"unknwon"
		852	[  0]	TGETS	 33	10	86	; slot33 = uv0"unknown".lastPreviewImprint.icon
		853	[  0]	CALL 	 30	2	3	; slot30 = uv6"unknown"(slot31, uv2"unknown")
		854	[  0]	ISF  	   		30	; if not uv6"unknown"
		855	[  0]	JMP  	 31		4	; 	goto 860
		856	[  0]	MOV  	 33		30	; slot33 = uv6"unknown"
		857	[  0]	TGETS	 31	30	134	; slot31 = uv6"unknown".getWidth
		858	[  0]	CALL 	 31	2	2	; slot31 = uv6"unknown".getWidth(uv2"unknown")
		859	[  0]	MOV  	 29		31	; slot29 = uv6"unknown".getWidth
		860	[  0]	KSHORT	 30		8	; slot30 = 8
		861	[  0]	KSHORT	 31		3	; slot31 = 3
		862	[  0]	KSHORT	 32		8	; slot32 = 8
		863	[  0]	KSHORT	 33		4	; slot33 = 4
		864	[  0]	TGETS	 34	0	132	; slot34 = slot0.imprintPanel
		865	[  0]	ISF  	   		34	; if not <unknown table>.imprintPanel
		866	[  0]	JMP  	 35		40	; 	goto 907
		867	[  0]	TGETS	 34	0	132	; slot34 = slot0.imprintPanel
		868	[  0]	TGETS	 34	34	50	; slot34 = <unknown table>.imprintPanel.imprintName
		869	[  0]	ISF  	   		34	; if not <unknown table>.imprintPanel.imprintName
		870	[  0]	JMP  	 35		16	; 	goto 887
		871	[  0]	GGET 	 34		127	; slot34 = _env["tonumber"]
		872	[  0]	TGETS	 36	0	132	; slot36 = slot0.imprintPanel
		873	[  0]	TGETS	 36	36	50	; slot36 = <unknown table>.imprintPanel.imprintName
		874	[  0]	TGETS	 36	36	126	; slot36 = <unknown table>.imprintPanel.imprintName.offsetX
		875	[  0]	CALL 	 34	2	2	; slot34 = tonumber(uv10"unknown")
		876	[  0]	ISTC 	 30		34	; slot30 = tonumber; if tonumber
		877	[  0]	JMP  	 35		1	; 	goto 879
		878	[  0]	KSHORT	 30		8	; slot30 = 8
		879	[  0]	GGET 	 34		127	; slot34 = _env["tonumber"]
		880	[  0]	TGETS	 36	0	132	; slot36 = slot0.imprintPanel
		881	[  0]	TGETS	 36	36	50	; slot36 = <unknown table>.imprintPanel.imprintName
		882	[  0]	TGETS	 36	36	125	; slot36 = <unknown table>.imprintPanel.imprintName.offsetY
		883	[  0]	CALL 	 34	2	2	; slot34 = tonumber(uv10"unknown")
		884	[  0]	ISTC 	 31		34	; slot31 = tonumber; if tonumber
		885	[  0]	JMP  	 35		1	; 	goto 887
		886	[  0]	KSHORT	 31		3	; slot31 = 3
		887	[  0]	TGETS	 34	0	132	; slot34 = slot0.imprintPanel
		888	[  0]	TGETS	 34	34	49	; slot34 = <unknown table>.imprintPanel.imprintDesc
		889	[  0]	ISF  	   		34	; if not <unknown table>.imprintPanel.imprintDesc
		890	[  0]	JMP  	 35		16	; 	goto 907
		891	[  0]	GGET 	 34		127	; slot34 = _env["tonumber"]
		892	[  0]	TGETS	 36	0	132	; slot36 = slot0.imprintPanel
		893	[  0]	TGETS	 36	36	49	; slot36 = <unknown table>.imprintPanel.imprintDesc
		894	[  0]	TGETS	 36	36	126	; slot36 = <unknown table>.imprintPanel.imprintDesc.offsetX
		895	[  0]	CALL 	 34	2	2	; slot34 = tonumber(uv10"unknown")
		896	[  0]	ISTC 	 32		34	; slot32 = tonumber; if tonumber
		897	[  0]	JMP  	 35		1	; 	goto 899
		898	[  0]	KSHORT	 32		8	; slot32 = 8
		899	[  0]	GGET 	 34		127	; slot34 = _env["tonumber"]
		900	[  0]	TGETS	 36	0	132	; slot36 = slot0.imprintPanel
		901	[  0]	TGETS	 36	36	49	; slot36 = <unknown table>.imprintPanel.imprintDesc
		902	[  0]	TGETS	 36	36	48	; slot36 = <unknown table>.imprintPanel.imprintDesc.gapY
		903	[  0]	CALL 	 34	2	2	; slot34 = tonumber(uv10"unknown")
		904	[  0]	ISTC 	 33		34	; slot33 = tonumber; if tonumber
		905	[  0]	JMP  	 35		1	; 	goto 907
		906	[  0]	KSHORT	 33		4	; slot33 = 4
		907	[  0]	ADDVV	 34	15	29	; slot34 = slot15 + uv6"unknown".getWidth
		908	[  0]	GGET 	 35		145	; slot35 = _env["math"]
		909	[  0]	TGETS	 35	35	144	; slot35 = math.floor
		910	[  0]	MULVV	 37	30	7	; slot37 = slot30 * slot7
		911	[  0]	ADDVN	 37	37	1	; slot37 = slot37 + 0.5
		912	[  0]	CALL 	 35	2	2	; slot35 = math.floor(<unknown table>.imprintPanel.imprintDesc.gapY)
		913	[  0]	ADDVV	 34	34	35	; slot34 = slot34 + math.floor
		914	[  0]	GGET 	 35		145	; slot35 = _env["math"]
		915	[  0]	TGETS	 35	35	144	; slot35 = math.floor
		916	[  0]	MULVV	 37	31	7	; slot37 = slot31 * slot7
		917	[  0]	ADDVN	 37	37	1	; slot37 = slot37 + 0.5
		918	[  0]	CALL 	 35	2	2	; slot35 = math.floor(<unknown table>.imprintPanel.imprintDesc.gapY)
		919	[  0]	ADDVV	 35	18	35	; slot35 = math.floor + math.floor
		920	[  0]	GGET 	 36		102	; slot36 = _env["love"]
		921	[  0]	TGETS	 36	36	101	; slot36 = love.graphics
		922	[  0]	TGETS	 36	36	100	; slot36 = love.graphics.setColor
		923	[  0]	KSHORT	 38		1	; slot38 = 1
		924	[  0]	KNUM 	 39		17	; slot39 = 0.9
		925	[  0]	KNUM 	 40		1	; slot40 = 0.5
		926	[  0]	UGET 	 41		0	; slot41 = uv0"unknwon"
		927	[  0]	TGETS	 41	41	142	; slot41 = uv0"unknown".previewAlpha
		928	[  0]	CALL 	 36	1	5	;  = love.graphics.setColor(slot37, slot38, slot39, slot40)
		929	[  0]	UGET 	 36		3	; slot36 = uv3"unknwon"
		930	[  0]	TGETS	 36	36	47	; slot36 = uv3"unknown".getImprintName
		931	[  0]	TGETS	 38	10	139	; slot38 = uv0"unknown".lastPreviewImprint.id
		932	[  0]	TGETS	 39	10	46	; slot39 = uv0"unknown".lastPreviewImprint.name
		933	[  0]	IST  	   		39	; if uv0"unknown".lastPreviewImprint.name
		934	[  0]	JMP  	 40		1	; 	goto 936
		935	[  0]	KSTR 	 39		45	; slot39 = "Unknown Imprint"
		936	[  0]	GGET 	 40		109	; slot40 = _env["_G"]
		937	[  0]	TGETS	 40	40	108	; slot40 = _G.currentGameLang
		938	[  0]	IST  	   		40	; if _G.currentGameLang
		939	[  0]	JMP  	 41		1	; 	goto 941
		940	[  0]	KSTR 	 40		107	; slot40 = "ko"
		941	[  0]	CALL 	 36	2	4	; slot36 = uv3"unknown".getImprintName(slot37, uv0"unknown".lastPreviewImprint.id, slot39)
		942	[  0]	KSTR 	 37		44	; slot37 = " "
		943	[  0]	UGET 	 38		13	; slot38 = uv13"unknwon"
		944	[  0]	TGETS	 40	10	43	; slot40 = uv0"unknown".lastPreviewImprint.level
		945	[  0]	IST  	   		40	; if uv0"unknown".lastPreviewImprint.level
		946	[  0]	JMP  	 41		1	; 	goto 948
		947	[  0]	KSHORT	 40		1	; slot40 = 1
		948	[  0]	CALL 	 38	2	2	; slot38 = uv13"unknown"(slot39)
		949	[  0]	CAT  	 36	36	38	; slot36 = uv3"unknown".getImprintName .. slot37 .. uv13"unknown"
		950	[  0]	UGET 	 37		2	; slot37 = uv2"unknwon"
		951	[  0]	TGETS	 37	37	42	; slot37 = uv2"unknown"._printFitted
		952	[  0]	ISTC 	 39		26	; slot39 = uv4"unknown"; if uv4"unknown"
		953	[  0]	JMP  	 39		1	; 	goto 955
		954	[  0]	TGETS	 39	0	106	; slot39 = slot0.font
		955	[  0]	MOV  	 40		36	; slot40 = slot36
		956	[  0]	MOV  	 41		34	; slot41 = slot34
		957	[  0]	MOV  	 42		35	; slot42 = slot35
		958	[  0]	ADDVV	 43	15	14	; slot43 = slot15 + math.floor
		959	[  0]	SUBVV	 43	43	34	; slot43 = slot43 - slot34
		960	[  0]	GGET 	 44		145	; slot44 = _env["math"]
		961	[  0]	TGETS	 44	44	144	; slot44 = math.floor
		962	[  0]	MULNV	 46	7	4	; slot46 = 8 * slot7
		963	[  0]	ADDVN	 46	46	1	; slot46 = slot46 + 0.5
		964	[  0]	CALL 	 44	2	2	; slot44 = math.floor(slot45)
		965	[  0]	SUBVV	 43	43	44	; slot43 = slot43 - math.floor
		966	[  0]	CALL 	 37	1	6	;  = uv2"unknown"._printFitted(uv13"unknown", <unknown table>.font, slot40, slot41, slot42)
		967	[  0]	ADDVV	 37	15	29	; slot37 = slot15 + uv6"unknown".getWidth
		968	[  0]	GGET 	 38		145	; slot38 = _env["math"]
		969	[  0]	TGETS	 38	38	144	; slot38 = math.floor
		970	[  0]	MULVV	 40	32	7	; slot40 = slot32 * slot7
		971	[  0]	ADDVN	 40	40	1	; slot40 = slot40 + 0.5
		972	[  0]	CALL 	 38	2	2	; slot38 = math.floor(<unknown table>.font)
		973	[  0]	ADDVV	 37	37	38	; slot37 = slot37 + math.floor
		974	[  0]	ADDVV	 38	35	28	; slot38 = slot35 + uv12"unknown"
		975	[  0]	GGET 	 39		145	; slot39 = _env["math"]
		976	[  0]	TGETS	 39	39	144	; slot39 = math.floor
		977	[  0]	MULVV	 41	33	7	; slot41 = slot33 * slot7
		978	[  0]	ADDVN	 41	41	1	; slot41 = slot41 + 0.5
		979	[  0]	CALL 	 39	2	2	; slot39 = math.floor(slot40)
		980	[  0]	ADDVV	 38	38	39	; slot38 = slot38 + math.floor
		981	[  0]	ADDVV	 39	15	14	; slot39 = slot15 + math.floor
		982	[  0]	SUBVV	 39	39	37	; slot39 = slot39 - slot37
		983	[  0]	GGET 	 40		145	; slot40 = _env["math"]
		984	[  0]	TGETS	 40	40	144	; slot40 = math.floor
		985	[  0]	MULNV	 42	7	18	; slot42 = 4 * slot7
		986	[  0]	ADDVN	 42	42	1	; slot42 = slot42 + 0.5
		987	[  0]	CALL 	 40	2	2	; slot40 = math.floor(slot41)
		988	[  0]	SUBVV	 39	39	40	; slot39 = slot39 - math.floor
		989	[  0]	KSHORT	 40		10	; slot40 = 10
		990	[  0]	ISGE 	 39		40	; if slot39 >= slot40
		991	[  0]	JMP  	 40		1	; 	goto 993
		992	[  0]	KSHORT	 39		10	; slot39 = 10
		993	[  0]	GGET 	 40		145	; slot40 = _env["math"]
		994	[  0]	TGETS	 40	40	137	; slot40 = math.max
		995	[  0]	KSHORT	 42		1	; slot42 = 1
		996	[  0]	GGET 	 43		145	; slot43 = _env["math"]
		997	[  0]	TGETS	 43	43	137	; slot43 = math.max
		998	[  0]	KSHORT	 45		1	; slot45 = 1
		999	[  0]	GGET 	 46		145	; slot46 = _env["math"]
		1000	[  0]	TGETS	 46	46	144	; slot46 = math.floor
		1001	[  0]	MULNV	 48	7	19	; slot48 = 5 * slot7
		1002	[  0]	ADDVN	 48	48	1	; slot48 = slot48 + 0.5
		1003	[  0]	CALL 	 46	0	2	; MULTRES = math.floor(slot47)
		1004	[  0]	CALLM	 43	2	1	; slot43 = math.max(math.floor, ...MULTRES)
		1005	[  0]	ADDVV	 43	28	43	; slot43 = uv12"unknown" + math.max
		1006	[  0]	CALL 	 40	2	3	; slot40 = math.max(slot41, slot42)
		1007	[  0]	ADDVV	 41	18	13	; slot41 = math.floor + slot13
		1008	[  0]	SUBVV	 41	41	38	; slot41 = slot41 - slot38
		1009	[  0]	GGET 	 42		145	; slot42 = _env["math"]
		1010	[  0]	TGETS	 42	42	144	; slot42 = math.floor
		1011	[  0]	MULNV	 44	7	20	; slot44 = 3 * slot7
		1012	[  0]	ADDVN	 44	44	1	; slot44 = slot44 + 0.5
		1013	[  0]	CALL 	 42	2	2	; slot42 = math.floor(slot43)
		1014	[  0]	SUBVV	 41	41	42	; slot41 = slot41 - math.floor
		1015	[  0]	UGET 	 42		14	; slot42 = uv14"unknwon"
		1016	[  0]	MOV  	 44		41	; slot44 = slot41
		1017	[  0]	MOV  	 45		40	; slot45 = math.max
		1018	[  0]	CALL 	 42	2	3	; slot42 = uv14"unknown"(slot43, slot44)
		1019	[  0]	GGET 	 43		102	; slot43 = _env["love"]
		1020	[  0]	TGETS	 43	43	101	; slot43 = love.graphics
		1021	[  0]	TGETS	 43	43	100	; slot43 = love.graphics.setColor
		1022	[  0]	KNUM 	 45		17	; slot45 = 0.9
		1023	[  0]	KNUM 	 46		17	; slot46 = 0.9
		1024	[  0]	KNUM 	 47		17	; slot47 = 0.9
		1025	[  0]	UGET 	 48		0	; slot48 = uv0"unknwon"
		1026	[  0]	TGETS	 48	48	142	; slot48 = uv0"unknown".previewAlpha
		1027	[  0]	CALL 	 43	1	5	;  = love.graphics.setColor(slot44, slot45, slot46, slot47)
		1028	[  0]	UGET 	 43		2	; slot43 = uv2"unknwon"
		1029	[  0]	TGETS	 43	43	41	; slot43 = uv2"unknown".getShortIconImage
		1030	[  0]	UGET 	 45		2	; slot45 = uv2"unknwon"
		1031	[  0]	TGETS	 46	10	139	; slot46 = uv0"unknown".lastPreviewImprint.id
		1032	[  0]	CALL 	 43	2	3	; slot43 = uv2"unknown".getShortIconImage(slot44, uv2"unknown")
		1033	[  0]	MOV  	 44		37	; slot44 = slot37
		1034	[  0]	ISF  	   		43	; if not uv2"unknown".getShortIconImage
		1035	[  0]	JMP  	 45		33	; 	goto 1069
		1036	[  0]	MOV  	 47		43	; slot47 = uv2"unknown".getShortIconImage
		1037	[  0]	TGETS	 45	43	115	; slot45 = uv2"unknown".getShortIconImage.getDimensions
		1038	[  0]	CALL 	 45	3	2	; slot45, slot46 = uv2"unknown".getShortIconImage.getDimensions(uv0"unknown".lastPreviewImprint.id)
		1039	[  0]	MOV  	 47		37	; slot47 = slot37
		1040	[  0]	GGET 	 48		145	; slot48 = _env["math"]
		1041	[  0]	TGETS	 48	48	144	; slot48 = math.floor
		1042	[  0]	SUBVV	 50	40	46	; slot50 = math.max - uv0"unknown".lastPreviewImprint.id
		1043	[  0]	DIVVN	 50	50	5	; slot50 = slot50 / 2
		1044	[  0]	CALL 	 48	2	2	; slot48 = math.floor(math.floor)
		1045	[  0]	ADDVV	 48	38	48	; slot48 = slot38 + math.floor
		1046	[  0]	GGET 	 49		102	; slot49 = _env["love"]
		1047	[  0]	TGETS	 49	49	101	; slot49 = love.graphics
		1048	[  0]	TGETS	 49	49	100	; slot49 = love.graphics.setColor
		1049	[  0]	KSHORT	 51		1	; slot51 = 1
		1050	[  0]	KSHORT	 52		1	; slot52 = 1
		1051	[  0]	KSHORT	 53		1	; slot53 = 1
		1052	[  0]	UGET 	 54		0	; slot54 = uv0"unknwon"
		1053	[  0]	TGETS	 54	54	142	; slot54 = uv0"unknown".previewAlpha
		1054	[  0]	CALL 	 49	1	5	;  = love.graphics.setColor(slot50, slot51, slot52, slot53)
		1055	[  0]	GGET 	 49		102	; slot49 = _env["love"]
		1056	[  0]	TGETS	 49	49	101	; slot49 = love.graphics
		1057	[  0]	TGETS	 49	49	93	; slot49 = love.graphics.draw
		1058	[  0]	MOV  	 51		43	; slot51 = uv2"unknown".getShortIconImage
		1059	[  0]	MOV  	 52		47	; slot52 = slot47
		1060	[  0]	MOV  	 53		48	; slot53 = slot48
		1061	[  0]	CALL 	 49	1	4	;  = love.graphics.draw(slot50, uv2"unknown".getShortIconImage, slot52)
		1062	[  0]	ADDVV	 49	44	45	; slot49 = slot44 + uv2"unknown".getShortIconImage.getDimensions
		1063	[  0]	GGET 	 50		145	; slot50 = _env["math"]
		1064	[  0]	TGETS	 50	50	144	; slot50 = math.floor
		1065	[  0]	MULNV	 52	7	5	; slot52 = 2 * slot7
		1066	[  0]	ADDVN	 52	52	1	; slot52 = slot52 + 0.5
		1067	[  0]	CALL 	 50	2	2	; slot50 = math.floor(uv2"unknown".getShortIconImage)
		1068	[  0]	ADDVV	 44	49	50	; slot44 = slot49 + math.floor
		1069	[  0]	GGET 	 45		102	; slot45 = _env["love"]
		1070	[  0]	TGETS	 45	45	101	; slot45 = love.graphics
		1071	[  0]	TGETS	 45	45	100	; slot45 = love.graphics.setColor
		1072	[  0]	KNUM 	 47		17	; slot47 = 0.9
		1073	[  0]	KNUM 	 48		17	; slot48 = 0.9
		1074	[  0]	KNUM 	 49		17	; slot49 = 0.9
		1075	[  0]	UGET 	 50		0	; slot50 = uv0"unknwon"
		1076	[  0]	TGETS	 50	50	142	; slot50 = uv0"unknown".previewAlpha
		1077	[  0]	CALL 	 45	1	5	;  = love.graphics.setColor(uv0"unknown".lastPreviewImprint.id, slot47, slot48, slot49)
		1078	[  0]	UGET 	 45		15	; slot45 = uv15"unknwon"
		1079	[  0]	ISTC 	 47		26	; slot47 = uv4"unknown"; if uv4"unknown"
		1080	[  0]	JMP  	 47		1	; 	goto 1082
		1081	[  0]	TGETS	 47	0	106	; slot47 = slot0.font
		1082	[  0]	UGET 	 48		3	; slot48 = uv3"unknwon"
		1083	[  0]	TGETS	 48	48	40	; slot48 = uv3"unknown".getImprintShortDesc
		1084	[  0]	TGETS	 50	10	139	; slot50 = uv0"unknown".lastPreviewImprint.id
		1085	[  0]	TGETS	 51	10	39	; slot51 = uv0"unknown".lastPreviewImprint.shortDesc
		1086	[  0]	IST  	   		51	; if uv0"unknown".lastPreviewImprint.shortDesc
		1087	[  0]	JMP  	 52		1	; 	goto 1089
		1088	[  0]	KSTR 	 51		82	; slot51 = ""
		1089	[  0]	GGET 	 52		109	; slot52 = _env["_G"]
		1090	[  0]	TGETS	 52	52	108	; slot52 = _G.currentGameLang
		1091	[  0]	IST  	   		52	; if _G.currentGameLang
		1092	[  0]	JMP  	 53		1	; 	goto 1094
		1093	[  0]	KSTR 	 52		107	; slot52 = "ko"
		1094	[  0]	CALL 	 48	2	4	; slot48 = uv3"unknown".getImprintShortDesc(slot49, uv0"unknown".lastPreviewImprint.id, slot51)
		1095	[  0]	MOV  	 49		44	; slot49 = slot44
		1096	[  0]	MOV  	 50		38	; slot50 = slot38
		1097	[  0]	SUBVV	 51	44	37	; slot51 = slot44 - slot37
		1098	[  0]	SUBVV	 51	39	51	; slot51 = slot39 - slot51
		1099	[  0]	MOV  	 52		40	; slot52 = math.max
		1100	[  0]	MOV  	 53		42	; slot53 = uv14"unknown"
		1101	[  0]	CALL 	 45	1	8	;  = uv15"unknown"(uv0"unknown".lastPreviewImprint.id, <unknown table>.font, uv3"unknown".getImprintShortDesc, slot49, slot50, slot51, math.max)
		1102	[  0]	ISF  	   		26	; if not uv4"unknown"
		1103	[  0]	JMP  	 45		5	; 	goto 1109
		1104	[  0]	GGET 	 45		102	; slot45 = _env["love"]
		1105	[  0]	TGETS	 45	45	101	; slot45 = love.graphics
		1106	[  0]	TGETS	 45	45	97	; slot45 = love.graphics.setFont
		1107	[  0]	MOV  	 47		27	; slot47 = love.graphics.getFont
		1108	[  0]	CALL 	 45	1	2	;  = love.graphics.setFont(uv0"unknown".lastPreviewImprint.id)
		1109	[  0]	GGET 	 45		102	; slot45 = _env["love"]
		1110	[  0]	TGETS	 45	45	101	; slot45 = love.graphics
		1111	[  0]	TGETS	 45	45	38	; slot45 = love.graphics.pop
		1112	[  0]	CALL 	 45	1	1	;  = love.graphics.pop()
		1113	[  0]	ISF  	   		2	; if not slot2
		1114	[  0]	JMP  	 45		824	; 	goto 1939
		1115	[  0]	UGET 	 45		0	; slot45 = uv0"unknwon"
		1116	[  0]	TGETS	 45	45	142	; slot45 = uv0"unknown".previewAlpha
		1117	[  0]	KNUM 	 46		1	; slot46 = 0.5
		1118	[  0]	ISGE 	 46		45	; if slot46 >= uv0"unknown".previewAlpha
		1119	[  0]	JMP  	 45		819	; 	goto 1939
		1120	[  0]	UGET 	 45		2	; slot45 = uv2"unknwon"
		1121	[  0]	TGETS	 45	45	37	; slot45 = uv2"unknown"._cancelBtnImage
		1122	[  0]	MOV  	 46		14	; slot46 = math.floor
		1123	[  0]	GGET 	 47		145	; slot47 = _env["math"]
		1124	[  0]	TGETS	 47	47	144	; slot47 = math.floor
		1125	[  0]	MULNV	 49	7	21	; slot49 = 26 * slot7
		1126	[  0]	ADDVN	 49	49	1	; slot49 = slot49 + 0.5
		1127	[  0]	CALL 	 47	2	2	; slot47 = math.floor(uv3"unknown".getImprintShortDesc)
		1128	[  0]	ISF  	   		45	; if not uv2"unknown"._cancelBtnImage
		1129	[  0]	JMP  	 48		5	; 	goto 1135
		1130	[  0]	MOV  	 50		45	; slot50 = uv2"unknown"._cancelBtnImage
		1131	[  0]	TGETS	 48	45	115	; slot48 = uv2"unknown"._cancelBtnImage.getDimensions
		1132	[  0]	CALL 	 48	3	2	; slot48, slot49 = uv2"unknown"._cancelBtnImage.getDimensions(slot49)
		1133	[  0]	MOV  	 47		49	; slot47 = slot49
		1134	[  0]	MOV  	 46		48	; slot46 = uv2"unknown"._cancelBtnImage.getDimensions
		1135	[  0]	GGET 	 48		145	; slot48 = _env["math"]
		1136	[  0]	TGETS	 48	48	144	; slot48 = math.floor
		1137	[  0]	MULNV	 50	7	22	; slot50 = 6 * slot7
		1138	[  0]	ADDVN	 50	50	1	; slot50 = slot50 + 0.5
		1139	[  0]	CALL 	 48	2	2	; slot48 = math.floor(slot49)
		1140	[  0]	ISF  	   		2	; if not slot2
		1141	[  0]	JMP  	 49		4	; 	goto 1146
		1142	[  0]	UGET 	 49		2	; slot49 = uv2"unknwon"
		1143	[  0]	TGETS	 49	49	36	; slot49 = uv2"unknown"._previewConvertInfo
		1144	[  0]	IST  	   		49	; if uv2"unknown"._previewConvertInfo
		1145	[  0]	JMP  	 50		1	; 	goto 1147
		1146	[  0]	KPRI 	 49		0	; slot49 = nil
		1147	[  0]	ISFC 	 50		49	; slot50 = slot49; if not slot49
		1148	[  0]	JMP  	 50		1	; 	goto 1150
		1149	[  0]	TGETS	 50	49	35	; slot50 = slot49.label
		1150	[  0]	ISNEP	 50		0	; if <unknown table>.label ~= nil
		1151	[  0]	JMP  	 50		2	; 	goto 1154
		1152	[  0]	KPRI 	 50		1	; slot50 = false
		1153	[  0]	JMP  	 51		1	; 	goto 1155
		1154	[  0]	KPRI 	 50		2	; slot50 = true
		1155	[  0]	KSHORT	 51		0	; slot51 = 0
		1156	[  0]	ISF  	   		50	; if not slot50
		1157	[  0]	JMP  	 52		23	; 	goto 1181
		1158	[  0]	TGETS	 52	0	132	; slot52 = slot0.imprintPanel
		1159	[  0]	ISF  	   		52	; if not <unknown table>.imprintPanel
		1160	[  0]	JMP  	 53		20	; 	goto 1181
		1161	[  0]	TGETS	 52	0	132	; slot52 = slot0.imprintPanel
		1162	[  0]	TGETS	 52	52	128	; slot52 = <unknown table>.imprintPanel.preview
		1163	[  0]	ISF  	   		52	; if not <unknown table>.imprintPanel.preview
		1164	[  0]	JMP  	 53		16	; 	goto 1181
		1165	[  0]	TGETS	 52	0	132	; slot52 = slot0.imprintPanel
		1166	[  0]	TGETS	 52	52	128	; slot52 = <unknown table>.imprintPanel.preview
		1167	[  0]	TGETS	 52	52	34	; slot52 = <unknown table>.imprintPanel.preview.cancelBtnWhenConvert
		1168	[  0]	ISF  	   		52	; if not <unknown table>.imprintPanel.preview.cancelBtnWhenConvert
		1169	[  0]	JMP  	 53		11	; 	goto 1181
		1170	[  0]	GGET 	 52		127	; slot52 = _env["tonumber"]
		1171	[  0]	TGETS	 54	0	132	; slot54 = slot0.imprintPanel
		1172	[  0]	TGETS	 54	54	128	; slot54 = <unknown table>.imprintPanel.preview
		1173	[  0]	TGETS	 54	54	34	; slot54 = <unknown table>.imprintPanel.preview.cancelBtnWhenConvert
		1174	[  0]	TGETS	 54	54	33	; slot54 = <unknown table>.imprintPanel.preview.cancelBtnWhenConvert.extraDown
		1175	[  0]	IST  	   		54	; if <unknown table>.imprintPanel.preview.cancelBtnWhenConvert.extraDown
		1176	[  0]	JMP  	 55		1	; 	goto 1178
		1177	[  0]	KSHORT	 54		0	; slot54 = 0
		1178	[  0]	CALL 	 52	2	2	; slot52 = tonumber(uv14"unknown")
		1179	[  0]	MULVV	 51	52	7	; slot51 = tonumber * slot7
		1180	[  0]	JMP  	 52		8	; 	goto 1189
		1181	[  0]	ISF  	   		50	; if not slot50
		1182	[  0]	JMP  	 52		6	; 	goto 1189
		1183	[  0]	GGET 	 52		145	; slot52 = _env["math"]
		1184	[  0]	TGETS	 52	52	144	; slot52 = math.floor
		1185	[  0]	MULNV	 54	7	4	; slot54 = 8 * slot7
		1186	[  0]	ADDVN	 54	54	1	; slot54 = slot54 + 0.5
		1187	[  0]	CALL 	 52	2	2	; slot52 = math.floor(uv14"unknown")
		1188	[  0]	MOV  	 51		52	; slot51 = math.floor
		1189	[  0]	KSHORT	 52		0	; slot52 = 0
		1190	[  0]	KSHORT	 53		0	; slot53 = 0
		1191	[  0]	TGETS	 54	0	132	; slot54 = slot0.imprintPanel
		1192	[  0]	ISF  	   		54	; if not <unknown table>.imprintPanel
		1193	[  0]	JMP  	 55		29	; 	goto 1223
		1194	[  0]	TGETS	 54	0	132	; slot54 = slot0.imprintPanel
		1195	[  0]	TGETS	 54	54	128	; slot54 = <unknown table>.imprintPanel.preview
		1196	[  0]	ISF  	   		54	; if not <unknown table>.imprintPanel.preview
		1197	[  0]	JMP  	 55		25	; 	goto 1223
		1198	[  0]	TGETS	 54	0	132	; slot54 = slot0.imprintPanel
		1199	[  0]	TGETS	 54	54	128	; slot54 = <unknown table>.imprintPanel.preview
		1200	[  0]	TGETS	 54	54	32	; slot54 = <unknown table>.imprintPanel.preview.cancelBtn
		1201	[  0]	ISF  	   		54	; if not <unknown table>.imprintPanel.preview.cancelBtn
		1202	[  0]	JMP  	 55		20	; 	goto 1223
		1203	[  0]	GGET 	 54		127	; slot54 = _env["tonumber"]
		1204	[  0]	TGETS	 56	0	132	; slot56 = slot0.imprintPanel
		1205	[  0]	TGETS	 56	56	128	; slot56 = <unknown table>.imprintPanel.preview
		1206	[  0]	TGETS	 56	56	32	; slot56 = <unknown table>.imprintPanel.preview.cancelBtn
		1207	[  0]	TGETS	 56	56	126	; slot56 = <unknown table>.imprintPanel.preview.cancelBtn.offsetX
		1208	[  0]	IST  	   		56	; if <unknown table>.imprintPanel.preview.cancelBtn.offsetX
		1209	[  0]	JMP  	 57		1	; 	goto 1211
		1210	[  0]	KSHORT	 56		0	; slot56 = 0
		1211	[  0]	CALL 	 54	2	2	; slot54 = tonumber(uv3"unknown".getText)
		1212	[  0]	MULVV	 52	54	7	; slot52 = tonumber * slot7
		1213	[  0]	GGET 	 54		127	; slot54 = _env["tonumber"]
		1214	[  0]	TGETS	 56	0	132	; slot56 = slot0.imprintPanel
		1215	[  0]	TGETS	 56	56	128	; slot56 = <unknown table>.imprintPanel.preview
		1216	[  0]	TGETS	 56	56	32	; slot56 = <unknown table>.imprintPanel.preview.cancelBtn
		1217	[  0]	TGETS	 56	56	125	; slot56 = <unknown table>.imprintPanel.preview.cancelBtn.offsetY
		1218	[  0]	IST  	   		56	; if <unknown table>.imprintPanel.preview.cancelBtn.offsetY
		1219	[  0]	JMP  	 57		1	; 	goto 1221
		1220	[  0]	KSHORT	 56		0	; slot56 = 0
		1221	[  0]	CALL 	 54	2	2	; slot54 = tonumber(uv3"unknown".getText)
		1222	[  0]	MULVV	 53	54	7	; slot53 = tonumber * slot7
		1223	[  0]	SUBVV	 54	14	46	; slot54 = math.floor - uv2"unknown"._cancelBtnImage.getDimensions
		1224	[  0]	DIVVN	 54	54	5	; slot54 = slot54 / 2
		1225	[  0]	ADDVV	 54	15	54	; slot54 = slot15 + slot54
		1226	[  0]	ADDVV	 54	54	52	; slot54 = slot54 + slot52
		1227	[  0]	ADDVV	 55	18	13	; slot55 = math.floor + slot13
		1228	[  0]	ADDVV	 55	55	48	; slot55 = slot55 + math.floor
		1229	[  0]	ADDVV	 55	55	53	; slot55 = slot55 + slot53
		1230	[  0]	ADDVV	 56	55	51	; slot56 = slot55 + math.floor
		1231	[  0]	KPRI 	 57		0	; slot57 = nil
		1232	[  0]	KPRI 	 58		1	; slot58 = false
		1233	[  0]	ISF  	   		50	; if not slot50
		1234	[  0]	JMP  	 59		300	; 	goto 1535
		1235	[  0]	KSHORT	 59		0	; slot59 = 0
		1236	[  0]	KSHORT	 60		0	; slot60 = 0
		1237	[  0]	TGETS	 61	0	132	; slot61 = slot0.imprintPanel
		1238	[  0]	ISF  	   		61	; if not <unknown table>.imprintPanel
		1239	[  0]	JMP  	 62		29	; 	goto 1269
		1240	[  0]	TGETS	 61	0	132	; slot61 = slot0.imprintPanel
		1241	[  0]	TGETS	 61	61	128	; slot61 = <unknown table>.imprintPanel.preview
		1242	[  0]	ISF  	   		61	; if not <unknown table>.imprintPanel.preview
		1243	[  0]	JMP  	 62		25	; 	goto 1269
		1244	[  0]	TGETS	 61	0	132	; slot61 = slot0.imprintPanel
		1245	[  0]	TGETS	 61	61	128	; slot61 = <unknown table>.imprintPanel.preview
		1246	[  0]	TGETS	 61	61	31	; slot61 = <unknown table>.imprintPanel.preview.convertBtn
		1247	[  0]	ISF  	   		61	; if not <unknown table>.imprintPanel.preview.convertBtn
		1248	[  0]	JMP  	 62		20	; 	goto 1269
		1249	[  0]	GGET 	 61		127	; slot61 = _env["tonumber"]
		1250	[  0]	TGETS	 63	0	132	; slot63 = slot0.imprintPanel
		1251	[  0]	TGETS	 63	63	128	; slot63 = <unknown table>.imprintPanel.preview
		1252	[  0]	TGETS	 63	63	31	; slot63 = <unknown table>.imprintPanel.preview.convertBtn
		1253	[  0]	TGETS	 63	63	126	; slot63 = <unknown table>.imprintPanel.preview.convertBtn.offsetX
		1254	[  0]	IST  	   		63	; if <unknown table>.imprintPanel.preview.convertBtn.offsetX
		1255	[  0]	JMP  	 64		1	; 	goto 1257
		1256	[  0]	KSHORT	 63		0	; slot63 = 0
		1257	[  0]	CALL 	 61	2	2	; slot61 = tonumber(slot62)
		1258	[  0]	MULVV	 59	61	7	; slot59 = tonumber * slot7
		1259	[  0]	GGET 	 61		127	; slot61 = _env["tonumber"]
		1260	[  0]	TGETS	 63	0	132	; slot63 = slot0.imprintPanel
		1261	[  0]	TGETS	 63	63	128	; slot63 = <unknown table>.imprintPanel.preview
		1262	[  0]	TGETS	 63	63	31	; slot63 = <unknown table>.imprintPanel.preview.convertBtn
		1263	[  0]	TGETS	 63	63	125	; slot63 = <unknown table>.imprintPanel.preview.convertBtn.offsetY
		1264	[  0]	IST  	   		63	; if <unknown table>.imprintPanel.preview.convertBtn.offsetY
		1265	[  0]	JMP  	 64		1	; 	goto 1267
		1266	[  0]	KSHORT	 63		0	; slot63 = 0
		1267	[  0]	CALL 	 61	2	2	; slot61 = tonumber(slot62)
		1268	[  0]	MULVV	 60	61	7	; slot60 = tonumber * slot7
		1269	[  0]	ADDVV	 61	54	59	; slot61 = slot54 + slot59
		1270	[  0]	ADDVV	 62	47	48	; slot62 = slot47 + math.floor
		1271	[  0]	SUBVV	 62	55	62	; slot62 = slot55 - slot62
		1272	[  0]	ADDVV	 62	62	60	; slot62 = slot62 + slot60
		1273	[  0]	TDUP 	 63		30	; slot63 = copy table#k30
		1274	[  0]	TSETS	 61	63	130	; slot63.x = slot61
		1275	[  0]	TSETS	 62	63	146	; slot63.y = slot62
		1276	[  0]	TSETS	 46	63	129	; slot63.w = uv2"unknown"._cancelBtnImage.getDimensions
		1277	[  0]	TSETS	 47	63	118	; slot63.h = slot47
		1278	[  0]	MOV  	 57		63	; slot57 = slot63
		1279	[  0]	ISGT 	 61		3	; if slot61 > slot3
		1280	[  0]	JMP  	 63		12	; 	goto 1293
		1281	[  0]	ADDVV	 63	61	46	; slot63 = slot61 + uv2"unknown"._cancelBtnImage.getDimensions
		1282	[  0]	ISGT 	  3		63	; if slot3 > slot63
		1283	[  0]	JMP  	 63		9	; 	goto 1293
		1284	[  0]	ISGT 	 62		4	; if slot62 > slot4
		1285	[  0]	JMP  	 63		7	; 	goto 1293
		1286	[  0]	ADDVV	 63	62	47	; slot63 = slot62 + slot47
		1287	[  0]	ISGT 	  4		63	; if slot4 > slot63
		1288	[  0]	JMP  	 63		4	; 	goto 1293
		1289	[  0]	KPRI 	 58		2	; slot58 = true
		1290	[  0]	UGET 	 63		0	; slot63 = uv0"unknwon"
		1291	[  0]	KPRI 	 64		2	; slot64 = true
		1292	[  0]	TSETS	 64	63	150	; uv0"unknown".convertHovering = slot64
		1293	[  0]	KSHORT	 63		1	; slot63 = 1
		1294	[  0]	UGET 	 64		0	; slot64 = uv0"unknwon"
		1295	[  0]	TGETS	 64	64	29	; slot64 = uv0"unknown".convertBtnPressed
		1296	[  0]	ISF  	   		64	; if not uv0"unknown".convertBtnPressed
		1297	[  0]	JMP  	 65		2	; 	goto 1300
		1298	[  0]	KNUM 	 63		17	; slot63 = 0.9
		1299	[  0]	JMP  	 64		3	; 	goto 1303
		1300	[  0]	ISF  	   		58	; if not slot58
		1301	[  0]	JMP  	 64		1	; 	goto 1303
		1302	[  0]	KNUM 	 63		23	; slot63 = 1.08
		1303	[  0]	UGET 	 64		0	; slot64 = uv0"unknwon"
		1304	[  0]	UGET 	 65		0	; slot65 = uv0"unknwon"
		1305	[  0]	TGETS	 65	65	28	; slot65 = uv0"unknown".convertBtnScale
		1306	[  0]	UGET 	 66		0	; slot66 = uv0"unknwon"
		1307	[  0]	TGETS	 66	66	28	; slot66 = uv0"unknown".convertBtnScale
		1308	[  0]	SUBVV	 66	63	66	; slot66 = slot63 - uv0"unknown".convertBtnScale
		1309	[  0]	GGET 	 67		145	; slot67 = _env["math"]
		1310	[  0]	TGETS	 67	67	138	; slot67 = math.min
		1311	[  0]	KSHORT	 69		1	; slot69 = 1
		1312	[  0]	MULVN	 70	1	24	; slot70 = slot1 * 15
		1313	[  0]	CALL 	 67	2	3	; slot67 = math.min(slot68, slot69)
		1314	[  0]	MULVV	 66	66	67	; slot66 = slot66 * math.min
		1315	[  0]	ADDVV	 65	65	66	; slot65 = uv0"unknown".convertBtnScale + slot66
		1316	[  0]	TSETS	 65	64	28	; uv0"unknown".convertBtnScale = slot65
		1317	[  0]	UGET 	 64		0	; slot64 = uv0"unknwon"
		1318	[  0]	TGETS	 64	64	28	; slot64 = uv0"unknown".convertBtnScale
		1319	[  0]	GGET 	 65		102	; slot65 = _env["love"]
		1320	[  0]	TGETS	 65	65	101	; slot65 = love.graphics
		1321	[  0]	TGETS	 65	65	88	; slot65 = love.graphics.push
		1322	[  0]	CALL 	 65	1	1	;  = love.graphics.push()
		1323	[  0]	DIVVN	 65	46	5	; slot65 = uv2"unknown"._cancelBtnImage.getDimensions / 2
		1324	[  0]	ADDVV	 65	61	65	; slot65 = slot61 + slot65
		1325	[  0]	DIVVN	 66	47	5	; slot66 = slot47 / 2
		1326	[  0]	ADDVV	 66	62	66	; slot66 = slot62 + slot66
		1327	[  0]	GGET 	 67		102	; slot67 = _env["love"]
		1328	[  0]	TGETS	 67	67	101	; slot67 = love.graphics
		1329	[  0]	TGETS	 67	67	87	; slot67 = love.graphics.translate
		1330	[  0]	MOV  	 69		65	; slot69 = slot65
		1331	[  0]	MOV  	 70		66	; slot70 = slot66
		1332	[  0]	CALL 	 67	1	3	;  = love.graphics.translate(slot68, slot69)
		1333	[  0]	GGET 	 67		102	; slot67 = _env["love"]
		1334	[  0]	TGETS	 67	67	101	; slot67 = love.graphics
		1335	[  0]	TGETS	 67	67	147	; slot67 = love.graphics.scale
		1336	[  0]	MOV  	 69		64	; slot69 = uv0"unknown".convertBtnScale
		1337	[  0]	MOV  	 70		64	; slot70 = uv0"unknown".convertBtnScale
		1338	[  0]	CALL 	 67	1	3	;  = love.graphics.scale(slot68, uv0"unknown".convertBtnScale)
		1339	[  0]	GGET 	 67		102	; slot67 = _env["love"]
		1340	[  0]	TGETS	 67	67	101	; slot67 = love.graphics
		1341	[  0]	TGETS	 67	67	87	; slot67 = love.graphics.translate
		1342	[  0]	UNM  	 69		65	; slot69 = -slot65
		1343	[  0]	UNM  	 70		66	; slot70 = -slot66
		1344	[  0]	CALL 	 67	1	3	;  = love.graphics.translate(slot68, slot69)
		1345	[  0]	GGET 	 67		102	; slot67 = _env["love"]
		1346	[  0]	TGETS	 67	67	101	; slot67 = love.graphics
		1347	[  0]	TGETS	 67	67	100	; slot67 = love.graphics.setColor
		1348	[  0]	KSHORT	 69		1	; slot69 = 1
		1349	[  0]	KSHORT	 70		1	; slot70 = 1
		1350	[  0]	KSHORT	 71		1	; slot71 = 1
		1351	[  0]	UGET 	 72		0	; slot72 = uv0"unknwon"
		1352	[  0]	TGETS	 72	72	142	; slot72 = uv0"unknown".previewAlpha
		1353	[  0]	CALL 	 67	1	5	;  = love.graphics.setColor(slot68, slot69, slot70, slot71)
		1354	[  0]	UGET 	 67		16	; slot67 = uv16"unknwon"
		1355	[  0]	CALL 	 67	2	1	; slot67 = uv16"unknown"()
		1356	[  0]	GGET 	 68		102	; slot68 = _env["love"]
		1357	[  0]	TGETS	 68	68	101	; slot68 = love.graphics
		1358	[  0]	TGETS	 68	68	27	; slot68 = love.graphics.getShader
		1359	[  0]	CALL 	 68	2	1	; slot68 = love.graphics.getShader()
		1360	[  0]	ISF  	   		67	; if not uv16"unknown"
		1361	[  0]	JMP  	 69		5	; 	goto 1367
		1362	[  0]	GGET 	 69		102	; slot69 = _env["love"]
		1363	[  0]	TGETS	 69	69	101	; slot69 = love.graphics
		1364	[  0]	TGETS	 69	69	51	; slot69 = love.graphics.setShader
		1365	[  0]	MOV  	 71		67	; slot71 = uv16"unknown"
		1366	[  0]	CALL 	 69	1	2	;  = love.graphics.setShader(slot70)
		1367	[  0]	ISF  	   		45	; if not uv2"unknown"._cancelBtnImage
		1368	[  0]	JMP  	 69		8	; 	goto 1377
		1369	[  0]	GGET 	 69		102	; slot69 = _env["love"]
		1370	[  0]	TGETS	 69	69	101	; slot69 = love.graphics
		1371	[  0]	TGETS	 69	69	93	; slot69 = love.graphics.draw
		1372	[  0]	MOV  	 71		45	; slot71 = uv2"unknown"._cancelBtnImage
		1373	[  0]	MOV  	 72		61	; slot72 = slot61
		1374	[  0]	MOV  	 73		62	; slot73 = slot62
		1375	[  0]	CALL 	 69	1	4	;  = love.graphics.draw(slot70, uv2"unknown"._cancelBtnImage, slot72)
		1376	[  0]	JMP  	 69		37	; 	goto 1414
		1377	[  0]	GGET 	 69		102	; slot69 = _env["love"]
		1378	[  0]	TGETS	 69	69	101	; slot69 = love.graphics
		1379	[  0]	TGETS	 69	69	100	; slot69 = love.graphics.setColor
		1380	[  0]	KNUM 	 71		25	; slot71 = 0.12
		1381	[  0]	KNUM 	 72		25	; slot72 = 0.12
		1382	[  0]	KNUM 	 73		25	; slot73 = 0.12
		1383	[  0]	UGET 	 74		0	; slot74 = uv0"unknwon"
		1384	[  0]	TGETS	 74	74	142	; slot74 = uv0"unknown".previewAlpha
		1385	[  0]	MULNV	 74	74	26	; slot74 = 0.94 * uv0"unknown".previewAlpha
		1386	[  0]	CALL 	 69	1	5	;  = love.graphics.setColor(slot70, slot71, slot72, slot73)
		1387	[  0]	GGET 	 69		102	; slot69 = _env["love"]
		1388	[  0]	TGETS	 69	69	101	; slot69 = love.graphics
		1389	[  0]	TGETS	 69	69	26	; slot69 = love.graphics.rectangle
		1390	[  0]	KSTR 	 71		25	; slot71 = "fill"
		1391	[  0]	MOV  	 72		61	; slot72 = slot61
		1392	[  0]	MOV  	 73		62	; slot73 = slot62
		1393	[  0]	MOV  	 74		46	; slot74 = uv2"unknown"._cancelBtnImage.getDimensions
		1394	[  0]	MOV  	 75		47	; slot75 = slot47
		1395	[  0]	CALL 	 69	1	6	;  = love.graphics.rectangle(slot70, slot71, slot72, slot73, uv2"unknown"._cancelBtnImage.getDimensions)
		1396	[  0]	GGET 	 69		102	; slot69 = _env["love"]
		1397	[  0]	TGETS	 69	69	101	; slot69 = love.graphics
		1398	[  0]	TGETS	 69	69	100	; slot69 = love.graphics.setColor
		1399	[  0]	KNUM 	 71		27	; slot71 = 0.55
		1400	[  0]	KNUM 	 72		27	; slot72 = 0.55
		1401	[  0]	KNUM 	 73		27	; slot73 = 0.55
		1402	[  0]	UGET 	 74		0	; slot74 = uv0"unknwon"
		1403	[  0]	TGETS	 74	74	142	; slot74 = uv0"unknown".previewAlpha
		1404	[  0]	CALL 	 69	1	5	;  = love.graphics.setColor(slot70, slot71, slot72, slot73)
		1405	[  0]	GGET 	 69		102	; slot69 = _env["love"]
		1406	[  0]	TGETS	 69	69	101	; slot69 = love.graphics
		1407	[  0]	TGETS	 69	69	26	; slot69 = love.graphics.rectangle
		1408	[  0]	KSTR 	 71		24	; slot71 = "line"
		1409	[  0]	ADDVN	 72	61	1	; slot72 = slot61 + 0.5
		1410	[  0]	ADDVN	 73	62	1	; slot73 = slot62 + 0.5
		1411	[  0]	SUBVN	 74	46	28	; slot74 = uv2"unknown"._cancelBtnImage.getDimensions - 1
		1412	[  0]	SUBVN	 75	47	28	; slot75 = slot47 - 1
		1413	[  0]	CALL 	 69	1	6	;  = love.graphics.rectangle(slot70, slot71, slot72, slot73, slot74)
		1414	[  0]	ISF  	   		67	; if not uv16"unknown"
		1415	[  0]	JMP  	 69		5	; 	goto 1421
		1416	[  0]	GGET 	 69		102	; slot69 = _env["love"]
		1417	[  0]	TGETS	 69	69	101	; slot69 = love.graphics
		1418	[  0]	TGETS	 69	69	51	; slot69 = love.graphics.setShader
		1419	[  0]	MOV  	 71		68	; slot71 = love.graphics.getShader
		1420	[  0]	CALL 	 69	1	2	;  = love.graphics.setShader(slot70)
		1421	[  0]	GGET 	 69		84	; slot69 = _env["tostring"]
		1422	[  0]	TGETS	 71	49	35	; slot71 = slot49.label
		1423	[  0]	CALL 	 69	2	2	; slot69 = tostring(slot70)
		1424	[  0]	UGET 	 70		4	; slot70 = uv4"unknwon"
		1425	[  0]	CALL 	 70	2	1	; slot70 = uv4"unknown"()
		1426	[  0]	IST  	   		70	; if uv4"unknown"
		1427	[  0]	JMP  	 71		1	; 	goto 1429
		1428	[  0]	TGETS	 70	0	106	; slot70 = slot0.font
		1429	[  0]	KSHORT	 71		0	; slot71 = 0
		1430	[  0]	KSHORT	 72		0	; slot72 = 0
		1431	[  0]	TGETS	 73	0	132	; slot73 = slot0.imprintPanel
		1432	[  0]	ISF  	   		73	; if not <unknown table>.imprintPanel
		1433	[  0]	JMP  	 74		29	; 	goto 1463
		1434	[  0]	TGETS	 73	0	132	; slot73 = slot0.imprintPanel
		1435	[  0]	TGETS	 73	73	128	; slot73 = <unknown table>.imprintPanel.preview
		1436	[  0]	ISF  	   		73	; if not <unknown table>.imprintPanel.preview
		1437	[  0]	JMP  	 74		25	; 	goto 1463
		1438	[  0]	TGETS	 73	0	132	; slot73 = slot0.imprintPanel
		1439	[  0]	TGETS	 73	73	128	; slot73 = <unknown table>.imprintPanel.preview
		1440	[  0]	TGETS	 73	73	23	; slot73 = <unknown table>.imprintPanel.preview.convertLabel
		1441	[  0]	ISF  	   		73	; if not <unknown table>.imprintPanel.preview.convertLabel
		1442	[  0]	JMP  	 74		20	; 	goto 1463
		1443	[  0]	GGET 	 73		127	; slot73 = _env["tonumber"]
		1444	[  0]	TGETS	 75	0	132	; slot75 = slot0.imprintPanel
		1445	[  0]	TGETS	 75	75	128	; slot75 = <unknown table>.imprintPanel.preview
		1446	[  0]	TGETS	 75	75	23	; slot75 = <unknown table>.imprintPanel.preview.convertLabel
		1447	[  0]	TGETS	 75	75	126	; slot75 = <unknown table>.imprintPanel.preview.convertLabel.offsetX
		1448	[  0]	IST  	   		75	; if <unknown table>.imprintPanel.preview.convertLabel.offsetX
		1449	[  0]	JMP  	 76		1	; 	goto 1451
		1450	[  0]	KSHORT	 75		0	; slot75 = 0
		1451	[  0]	CALL 	 73	2	2	; slot73 = tonumber(slot74)
		1452	[  0]	MULVV	 71	73	7	; slot71 = tonumber * slot7
		1453	[  0]	GGET 	 73		127	; slot73 = _env["tonumber"]
		1454	[  0]	TGETS	 75	0	132	; slot75 = slot0.imprintPanel
		1455	[  0]	TGETS	 75	75	128	; slot75 = <unknown table>.imprintPanel.preview
		1456	[  0]	TGETS	 75	75	23	; slot75 = <unknown table>.imprintPanel.preview.convertLabel
		1457	[  0]	TGETS	 75	75	125	; slot75 = <unknown table>.imprintPanel.preview.convertLabel.offsetY
		1458	[  0]	IST  	   		75	; if <unknown table>.imprintPanel.preview.convertLabel.offsetY
		1459	[  0]	JMP  	 76		1	; 	goto 1461
		1460	[  0]	KSHORT	 75		0	; slot75 = 0
		1461	[  0]	CALL 	 73	2	2	; slot73 = tonumber(slot74)
		1462	[  0]	MULVV	 72	73	7	; slot72 = tonumber * slot7
		1463	[  0]	ISF  	   		70	; if not <unknown table>.font
		1464	[  0]	JMP  	 73		65	; 	goto 1530
		1465	[  0]	GGET 	 73		102	; slot73 = _env["love"]
		1466	[  0]	TGETS	 73	73	101	; slot73 = love.graphics
		1467	[  0]	TGETS	 73	73	98	; slot73 = love.graphics.getFont
		1468	[  0]	CALL 	 73	2	1	; slot73 = love.graphics.getFont()
		1469	[  0]	GGET 	 74		102	; slot74 = _env["love"]
		1470	[  0]	TGETS	 74	74	101	; slot74 = love.graphics
		1471	[  0]	TGETS	 74	74	97	; slot74 = love.graphics.setFont
		1472	[  0]	MOV  	 76		70	; slot76 = <unknown table>.font
		1473	[  0]	CALL 	 74	1	2	;  = love.graphics.setFont(slot75)
		1474	[  0]	MOV  	 76		70	; slot76 = <unknown table>.font
		1475	[  0]	TGETS	 74	70	133	; slot74 = <unknown table>.font.getHeight
		1476	[  0]	CALL 	 74	2	2	; slot74 = <unknown table>.font.getHeight(slot75)
		1477	[  0]	UGET 	 75		2	; slot75 = uv2"unknwon"
		1478	[  0]	TGETS	 75	75	22	; slot75 = uv2"unknown"._buttonTextW
		1479	[  0]	MOV  	 77		45	; slot77 = uv2"unknown"._cancelBtnImage
		1480	[  0]	MOV  	 78		46	; slot78 = uv2"unknown"._cancelBtnImage.getDimensions
		1481	[  0]	CALL 	 75	2	3	; slot75 = uv2"unknown"._buttonTextW(<unknown table>.font, uv2"unknown"._cancelBtnImage)
		1482	[  0]	GGET 	 76		96	; slot76 = _env["require"]
		1483	[  0]	KSTR 	 78		95	; slot78 = "src.ui.widgets"
		1484	[  0]	CALL 	 76	2	2	; slot76 = require(uv2"unknown"._cancelBtnImage)
		1485	[  0]	TGETS	 76	76	94	; slot76 = require.text_fit
		1486	[  0]	GGET 	 77		145	; slot77 = _env["math"]
		1487	[  0]	TGETS	 77	77	144	; slot77 = math.floor
		1488	[  0]	DIVVN	 79	46	5	; slot79 = uv2"unknown"._cancelBtnImage.getDimensions / 2
		1489	[  0]	ADDVV	 79	61	79	; slot79 = slot61 + slot79
		1490	[  0]	DIVVN	 80	75	5	; slot80 = uv2"unknown"._buttonTextW / 2
		1491	[  0]	SUBVV	 79	79	80	; slot79 = slot79 - slot80
		1492	[  0]	ADDVV	 79	79	71	; slot79 = slot79 + slot71
		1493	[  0]	ADDVN	 79	79	1	; slot79 = slot79 + 0.5
		1494	[  0]	CALL 	 77	2	2	; slot77 = math.floor(slot78)
		1495	[  0]	GGET 	 78		145	; slot78 = _env["math"]
		1496	[  0]	TGETS	 78	78	144	; slot78 = math.floor
		1497	[  0]	SUBVV	 80	47	74	; slot80 = slot47 - <unknown table>.font.getHeight
		1498	[  0]	DIVVN	 80	80	5	; slot80 = slot80 / 2
		1499	[  0]	ADDVV	 80	62	80	; slot80 = slot62 + slot80
		1500	[  0]	ADDVV	 80	80	72	; slot80 = slot80 + slot72
		1501	[  0]	ADDVN	 80	80	1	; slot80 = slot80 + 0.5
		1502	[  0]	CALL 	 78	2	2	; slot78 = math.floor(slot79)
		1503	[  0]	GGET 	 79		102	; slot79 = _env["love"]
		1504	[  0]	TGETS	 79	79	101	; slot79 = love.graphics
		1505	[  0]	TGETS	 79	79	100	; slot79 = love.graphics.setColor
		1506	[  0]	KSHORT	 81		1	; slot81 = 1
		1507	[  0]	KNUM 	 82		8	; slot82 = 0.95
		1508	[  0]	KNUM 	 83		9	; slot83 = 0.8
		1509	[  0]	UGET 	 84		0	; slot84 = uv0"unknwon"
		1510	[  0]	TGETS	 84	84	142	; slot84 = uv0"unknown".previewAlpha
		1511	[  0]	CALL 	 79	1	5	;  = love.graphics.setColor(slot80, slot81, slot82, slot83)
		1512	[  0]	TGETS	 79	76	93	; slot79 = require.text_fit.draw
		1513	[  0]	TGETS	 81	76	92	; slot81 = require.text_fit.fit
		1514	[  0]	MOV  	 83		69	; slot83 = tostring
		1515	[  0]	MOV  	 84		75	; slot84 = uv2"unknown"._buttonTextW
		1516	[  0]	MOV  	 85		70	; slot85 = <unknown table>.font
		1517	[  0]	TNEW 	 86		0	; slot86 = new table( array: 0, dict: 1)
		1518	[  0]	CALL 	 81	2	5	; slot81 = require.text_fit.fit(slot82, tostring, uv2"unknown"._buttonTextW, <unknown table>.font)
		1519	[  0]	MOV  	 82		77	; slot82 = math.floor
		1520	[  0]	MOV  	 83		78	; slot83 = math.floor
		1521	[  0]	MOV  	 84		75	; slot84 = uv2"unknown"._buttonTextW
		1522	[  0]	MOV  	 85		74	; slot85 = <unknown table>.font.getHeight
		1523	[  0]	TDUP 	 86		21	; slot86 = copy table#k21
		1524	[  0]	CALL 	 79	1	7	;  = require.text_fit.draw(slot80, require.text_fit.fit, math.floor, math.floor, uv2"unknown"._buttonTextW, <unknown table>.font.getHeight)
		1525	[  0]	GGET 	 79		102	; slot79 = _env["love"]
		1526	[  0]	TGETS	 79	79	101	; slot79 = love.graphics
		1527	[  0]	TGETS	 79	79	97	; slot79 = love.graphics.setFont
		1528	[  0]	MOV  	 81		73	; slot81 = love.graphics.getFont
		1529	[  0]	CALL 	 79	1	2	;  = love.graphics.setFont(slot80)
		1530	[  0]	GGET 	 73		102	; slot73 = _env["love"]
		1531	[  0]	TGETS	 73	73	101	; slot73 = love.graphics
		1532	[  0]	TGETS	 73	73	38	; slot73 = love.graphics.pop
		1533	[  0]	CALL 	 73	1	1	;  = love.graphics.pop()
		1534	[  0]	JMP  	 59		9	; 	goto 1544
		1535	[  0]	UGET 	 59		0	; slot59 = uv0"unknwon"
		1536	[  0]	KSHORT	 60		1	; slot60 = 1
		1537	[  0]	TSETS	 60	59	28	; uv0"unknown".convertBtnScale = slot60
		1538	[  0]	UGET 	 59		0	; slot59 = uv0"unknwon"
		1539	[  0]	KPRI 	 60		1	; slot60 = false
		1540	[  0]	TSETS	 60	59	29	; uv0"unknown".convertBtnPressed = slot60
		1541	[  0]	UGET 	 59		0	; slot59 = uv0"unknwon"
		1542	[  0]	KSHORT	 60		0	; slot60 = 0
		1543	[  0]	TSETS	 60	59	20	; uv0"unknown".convertBtnTimer = slot60
		1544	[  0]	KPRI 	 59		1	; slot59 = false
		1545	[  0]	ISGT 	 54		3	; if slot54 > slot3
		1546	[  0]	JMP  	 60		9	; 	goto 1556
		1547	[  0]	ADDVV	 60	54	46	; slot60 = slot54 + uv2"unknown"._cancelBtnImage.getDimensions
		1548	[  0]	ISGT 	  3		60	; if slot3 > slot60
		1549	[  0]	JMP  	 60		6	; 	goto 1556
		1550	[  0]	ISGT 	 56		4	; if slot56 > slot4
		1551	[  0]	JMP  	 60		4	; 	goto 1556
		1552	[  0]	ADDVV	 60	56	47	; slot60 = slot56 + slot47
		1553	[  0]	ISGT 	  4		60	; if slot4 > slot60
		1554	[  0]	JMP  	 60		1	; 	goto 1556
		1555	[  0]	KPRI 	 59		2	; slot59 = true
		1556	[  0]	KSHORT	 60		1	; slot60 = 1
		1557	[  0]	UGET 	 61		0	; slot61 = uv0"unknwon"
		1558	[  0]	TGETS	 61	61	19	; slot61 = uv0"unknown".cancelBtnPressed
		1559	[  0]	ISF  	   		61	; if not uv0"unknown".cancelBtnPressed
		1560	[  0]	JMP  	 62		2	; 	goto 1563
		1561	[  0]	KNUM 	 60		17	; slot60 = 0.9
		1562	[  0]	JMP  	 61		3	; 	goto 1566
		1563	[  0]	ISF  	   		59	; if not slot59
		1564	[  0]	JMP  	 61		1	; 	goto 1566
		1565	[  0]	KNUM 	 60		23	; slot60 = 1.08
		1566	[  0]	UGET 	 61		0	; slot61 = uv0"unknwon"
		1567	[  0]	UGET 	 62		0	; slot62 = uv0"unknwon"
		1568	[  0]	TGETS	 62	62	18	; slot62 = uv0"unknown".cancelBtnScale
		1569	[  0]	UGET 	 63		0	; slot63 = uv0"unknwon"
		1570	[  0]	TGETS	 63	63	18	; slot63 = uv0"unknown".cancelBtnScale
		1571	[  0]	SUBVV	 63	60	63	; slot63 = slot60 - uv0"unknown".cancelBtnScale
		1572	[  0]	GGET 	 64		145	; slot64 = _env["math"]
		1573	[  0]	TGETS	 64	64	138	; slot64 = math.min
		1574	[  0]	KSHORT	 66		1	; slot66 = 1
		1575	[  0]	MULVN	 67	1	24	; slot67 = slot1 * 15
		1576	[  0]	CALL 	 64	2	3	; slot64 = math.min(slot65, slot66)
		1577	[  0]	MULVV	 63	63	64	; slot63 = slot63 * math.min
		1578	[  0]	ADDVV	 62	62	63	; slot62 = uv0"unknown".cancelBtnScale + slot63
		1579	[  0]	TSETS	 62	61	18	; uv0"unknown".cancelBtnScale = slot62
		1580	[  0]	UGET 	 61		0	; slot61 = uv0"unknwon"
		1581	[  0]	TGETS	 61	61	18	; slot61 = uv0"unknown".cancelBtnScale
		1582	[  0]	GGET 	 62		102	; slot62 = _env["love"]
		1583	[  0]	TGETS	 62	62	101	; slot62 = love.graphics
		1584	[  0]	TGETS	 62	62	88	; slot62 = love.graphics.push
		1585	[  0]	CALL 	 62	1	1	;  = love.graphics.push()
		1586	[  0]	DIVVN	 62	46	5	; slot62 = uv2"unknown"._cancelBtnImage.getDimensions / 2
		1587	[  0]	ADDVV	 62	54	62	; slot62 = slot54 + slot62
		1588	[  0]	DIVVN	 63	47	5	; slot63 = slot47 / 2
		1589	[  0]	ADDVV	 63	56	63	; slot63 = slot56 + slot63
		1590	[  0]	GGET 	 64		102	; slot64 = _env["love"]
		1591	[  0]	TGETS	 64	64	101	; slot64 = love.graphics
		1592	[  0]	TGETS	 64	64	87	; slot64 = love.graphics.translate
		1593	[  0]	MOV  	 66		62	; slot66 = slot62
		1594	[  0]	MOV  	 67		63	; slot67 = slot63
		1595	[  0]	CALL 	 64	1	3	;  = love.graphics.translate(slot65, slot66)
		1596	[  0]	GGET 	 64		102	; slot64 = _env["love"]
		1597	[  0]	TGETS	 64	64	101	; slot64 = love.graphics
		1598	[  0]	TGETS	 64	64	147	; slot64 = love.graphics.scale
		1599	[  0]	MOV  	 66		61	; slot66 = uv0"unknown".cancelBtnScale
		1600	[  0]	MOV  	 67		61	; slot67 = uv0"unknown".cancelBtnScale
		1601	[  0]	CALL 	 64	1	3	;  = love.graphics.scale(slot65, uv0"unknown".cancelBtnScale)
		1602	[  0]	GGET 	 64		102	; slot64 = _env["love"]
		1603	[  0]	TGETS	 64	64	101	; slot64 = love.graphics
		1604	[  0]	TGETS	 64	64	87	; slot64 = love.graphics.translate
		1605	[  0]	UNM  	 66		62	; slot66 = -slot62
		1606	[  0]	UNM  	 67		63	; slot67 = -slot63
		1607	[  0]	CALL 	 64	1	3	;  = love.graphics.translate(slot65, slot66)
		1608	[  0]	GGET 	 64		102	; slot64 = _env["love"]
		1609	[  0]	TGETS	 64	64	101	; slot64 = love.graphics
		1610	[  0]	TGETS	 64	64	100	; slot64 = love.graphics.setColor
		1611	[  0]	KSHORT	 66		1	; slot66 = 1
		1612	[  0]	KSHORT	 67		1	; slot67 = 1
		1613	[  0]	KSHORT	 68		1	; slot68 = 1
		1614	[  0]	UGET 	 69		0	; slot69 = uv0"unknwon"
		1615	[  0]	TGETS	 69	69	142	; slot69 = uv0"unknown".previewAlpha
		1616	[  0]	CALL 	 64	1	5	;  = love.graphics.setColor(slot65, slot66, slot67, slot68)
		1617	[  0]	ISF  	   		45	; if not uv2"unknown"._cancelBtnImage
		1618	[  0]	JMP  	 64		8	; 	goto 1627
		1619	[  0]	GGET 	 64		102	; slot64 = _env["love"]
		1620	[  0]	TGETS	 64	64	101	; slot64 = love.graphics
		1621	[  0]	TGETS	 64	64	93	; slot64 = love.graphics.draw
		1622	[  0]	MOV  	 66		45	; slot66 = uv2"unknown"._cancelBtnImage
		1623	[  0]	MOV  	 67		54	; slot67 = slot54
		1624	[  0]	MOV  	 68		56	; slot68 = slot56
		1625	[  0]	CALL 	 64	1	4	;  = love.graphics.draw(slot65, uv2"unknown"._cancelBtnImage, slot67)
		1626	[  0]	JMP  	 64		105	; 	goto 1732
		1627	[  0]	GGET 	 64		102	; slot64 = _env["love"]
		1628	[  0]	TGETS	 64	64	101	; slot64 = love.graphics
		1629	[  0]	TGETS	 64	64	100	; slot64 = love.graphics.setColor
		1630	[  0]	KNUM 	 66		25	; slot66 = 0.12
		1631	[  0]	KNUM 	 67		25	; slot67 = 0.12
		1632	[  0]	KNUM 	 68		25	; slot68 = 0.12
		1633	[  0]	UGET 	 69		0	; slot69 = uv0"unknwon"
		1634	[  0]	TGETS	 69	69	142	; slot69 = uv0"unknown".previewAlpha
		1635	[  0]	MULNV	 69	69	26	; slot69 = 0.94 * uv0"unknown".previewAlpha
		1636	[  0]	CALL 	 64	1	5	;  = love.graphics.setColor(slot65, slot66, slot67, slot68)
		1637	[  0]	GGET 	 64		102	; slot64 = _env["love"]
		1638	[  0]	TGETS	 64	64	101	; slot64 = love.graphics
		1639	[  0]	TGETS	 64	64	26	; slot64 = love.graphics.rectangle
		1640	[  0]	KSTR 	 66		25	; slot66 = "fill"
		1641	[  0]	MOV  	 67		54	; slot67 = slot54
		1642	[  0]	MOV  	 68		56	; slot68 = slot56
		1643	[  0]	MOV  	 69		46	; slot69 = uv2"unknown"._cancelBtnImage.getDimensions
		1644	[  0]	MOV  	 70		47	; slot70 = slot47
		1645	[  0]	CALL 	 64	1	6	;  = love.graphics.rectangle(slot65, slot66, slot67, slot68, uv2"unknown"._cancelBtnImage.getDimensions)
		1646	[  0]	GGET 	 64		102	; slot64 = _env["love"]
		1647	[  0]	TGETS	 64	64	101	; slot64 = love.graphics
		1648	[  0]	TGETS	 64	64	100	; slot64 = love.graphics.setColor
		1649	[  0]	KNUM 	 66		27	; slot66 = 0.55
		1650	[  0]	KNUM 	 67		27	; slot67 = 0.55
		1651	[  0]	KNUM 	 68		27	; slot68 = 0.55
		1652	[  0]	UGET 	 69		0	; slot69 = uv0"unknwon"
		1653	[  0]	TGETS	 69	69	142	; slot69 = uv0"unknown".previewAlpha
		1654	[  0]	CALL 	 64	1	5	;  = love.graphics.setColor(slot65, slot66, slot67, slot68)
		1655	[  0]	GGET 	 64		102	; slot64 = _env["love"]
		1656	[  0]	TGETS	 64	64	101	; slot64 = love.graphics
		1657	[  0]	TGETS	 64	64	26	; slot64 = love.graphics.rectangle
		1658	[  0]	KSTR 	 66		24	; slot66 = "line"
		1659	[  0]	ADDVN	 67	54	1	; slot67 = slot54 + 0.5
		1660	[  0]	ADDVN	 68	56	1	; slot68 = slot56 + 0.5
		1661	[  0]	SUBVN	 69	46	28	; slot69 = uv2"unknown"._cancelBtnImage.getDimensions - 1
		1662	[  0]	SUBVN	 70	47	28	; slot70 = slot47 - 1
		1663	[  0]	CALL 	 64	1	6	;  = love.graphics.rectangle(slot65, slot66, slot67, slot68, slot69)
		1664	[  0]	UGET 	 64		3	; slot64 = uv3"unknwon"
		1665	[  0]	TGETS	 64	64	111	; slot64 = uv3"unknown".getText
		1666	[  0]	KSTR 	 66		17	; slot66 = "imprint_absorb_cancel"
		1667	[  0]	GGET 	 67		109	; slot67 = _env["_G"]
		1668	[  0]	TGETS	 67	67	108	; slot67 = _G.currentGameLang
		1669	[  0]	IST  	   		67	; if _G.currentGameLang
		1670	[  0]	JMP  	 68		1	; 	goto 1672
		1671	[  0]	KSTR 	 67		107	; slot67 = "ko"
		1672	[  0]	CALL 	 64	2	3	; slot64 = uv3"unknown".getText(slot65, slot66)
		1673	[  0]	TGETS	 65	0	106	; slot65 = slot0.font
		1674	[  0]	UGET 	 66		5	; slot66 = uv5"unknwon"
		1675	[  0]	MOV  	 68		65	; slot68 = <unknown table>.font
		1676	[  0]	MOV  	 69		64	; slot69 = uv3"unknown".getText
		1677	[  0]	CALL 	 66	2	3	; slot66 = uv5"unknown"(slot67, <unknown table>.font)
		1678	[  0]	UGET 	 67		12	; slot67 = uv12"unknwon"
		1679	[  0]	MOV  	 69		65	; slot69 = <unknown table>.font
		1680	[  0]	GGET 	 70		145	; slot70 = _env["math"]
		1681	[  0]	TGETS	 70	70	144	; slot70 = math.floor
		1682	[  0]	MULNV	 72	7	3	; slot72 = 12 * slot7
		1683	[  0]	ADDVN	 72	72	1	; slot72 = slot72 + 0.5
		1684	[  0]	CALL 	 70	0	2	; MULTRES = math.floor(slot71)
		1685	[  0]	CALLM	 67	2	1	; slot67 = uv12"unknown"(<unknown table>.font, ...MULTRES)
		1686	[  0]	GGET 	 68		145	; slot68 = _env["math"]
		1687	[  0]	TGETS	 68	68	144	; slot68 = math.floor
		1688	[  0]	SUBVV	 70	46	66	; slot70 = uv2"unknown"._cancelBtnImage.getDimensions - uv5"unknown"
		1689	[  0]	MULVN	 70	70	1	; slot70 = slot70 * 0.5
		1690	[  0]	ADDVN	 70	70	1	; slot70 = slot70 + 0.5
		1691	[  0]	CALL 	 68	2	2	; slot68 = math.floor(<unknown table>.font)
		1692	[  0]	ADDVV	 68	54	68	; slot68 = slot54 + math.floor
		1693	[  0]	GGET 	 69		145	; slot69 = _env["math"]
		1694	[  0]	TGETS	 69	69	144	; slot69 = math.floor
		1695	[  0]	SUBVV	 71	47	67	; slot71 = slot47 - uv12"unknown"
		1696	[  0]	MULVN	 71	71	1	; slot71 = slot71 * 0.5
		1697	[  0]	ADDVN	 71	71	1	; slot71 = slot71 + 0.5
		1698	[  0]	CALL 	 69	2	2	; slot69 = math.floor(slot70)
		1699	[  0]	ADDVV	 69	56	69	; slot69 = slot56 + math.floor
		1700	[  0]	GGET 	 70		102	; slot70 = _env["love"]
		1701	[  0]	TGETS	 70	70	101	; slot70 = love.graphics
		1702	[  0]	TGETS	 70	70	100	; slot70 = love.graphics.setColor
		1703	[  0]	KNUM 	 72		8	; slot72 = 0.95
		1704	[  0]	KNUM 	 73		8	; slot73 = 0.95
		1705	[  0]	KNUM 	 74		8	; slot74 = 0.95
		1706	[  0]	UGET 	 75		0	; slot75 = uv0"unknwon"
		1707	[  0]	TGETS	 75	75	142	; slot75 = uv0"unknown".previewAlpha
		1708	[  0]	CALL 	 70	1	5	;  = love.graphics.setColor(slot71, slot72, slot73, slot74)
		1709	[  0]	GGET 	 70		102	; slot70 = _env["love"]
		1710	[  0]	TGETS	 70	70	101	; slot70 = love.graphics
		1711	[  0]	TGETS	 70	70	98	; slot70 = love.graphics.getFont
		1712	[  0]	CALL 	 70	2	1	; slot70 = love.graphics.getFont()
		1713	[  0]	ISF  	   		65	; if not <unknown table>.font
		1714	[  0]	JMP  	 71		5	; 	goto 1720
		1715	[  0]	GGET 	 71		102	; slot71 = _env["love"]
		1716	[  0]	TGETS	 71	71	101	; slot71 = love.graphics
		1717	[  0]	TGETS	 71	71	97	; slot71 = love.graphics.setFont
		1718	[  0]	MOV  	 73		65	; slot73 = <unknown table>.font
		1719	[  0]	CALL 	 71	1	2	;  = love.graphics.setFont(slot72)
		1720	[  0]	GGET 	 71		102	; slot71 = _env["love"]
		1721	[  0]	TGETS	 71	71	101	; slot71 = love.graphics
		1722	[  0]	TGETS	 71	71	16	; slot71 = love.graphics.print
		1723	[  0]	MOV  	 73		64	; slot73 = uv3"unknown".getText
		1724	[  0]	MOV  	 74		68	; slot74 = slot68
		1725	[  0]	MOV  	 75		69	; slot75 = slot69
		1726	[  0]	CALL 	 71	1	4	;  = love.graphics.print(slot72, uv3"unknown".getText, slot74)
		1727	[  0]	GGET 	 71		102	; slot71 = _env["love"]
		1728	[  0]	TGETS	 71	71	101	; slot71 = love.graphics
		1729	[  0]	TGETS	 71	71	97	; slot71 = love.graphics.setFont
		1730	[  0]	MOV  	 73		70	; slot73 = love.graphics.getFont
		1731	[  0]	CALL 	 71	1	2	;  = love.graphics.setFont(slot72)
		1732	[  0]	TGETS	 64	0	132	; slot64 = slot0.imprintPanel
		1733	[  0]	ISF  	   		64	; if not <unknown table>.imprintPanel
		1734	[  0]	JMP  	 65		7	; 	goto 1742
		1735	[  0]	TGETS	 64	0	132	; slot64 = slot0.imprintPanel
		1736	[  0]	TGETS	 64	64	128	; slot64 = <unknown table>.imprintPanel.preview
		1737	[  0]	ISF  	   		64	; if not <unknown table>.imprintPanel.preview
		1738	[  0]	JMP  	 65		3	; 	goto 1742
		1739	[  0]	TGETS	 64	0	132	; slot64 = slot0.imprintPanel
		1740	[  0]	TGETS	 64	64	128	; slot64 = <unknown table>.imprintPanel.preview
		1741	[  0]	TGETS	 64	64	15	; slot64 = <unknown table>.imprintPanel.preview.cancelLabel
		1742	[  0]	ISF  	   		64	; if not <unknown table>.imprintPanel.preview.cancelLabel
		1743	[  0]	JMP  	 65		3	; 	goto 1747
		1744	[  0]	TGETS	 65	64	112	; slot65 = <unknown table>.imprintPanel.preview.cancelLabel.text
		1745	[  0]	IST  	   		65	; if <unknown table>.imprintPanel.preview.cancelLabel.text
		1746	[  0]	JMP  	 66		9	; 	goto 1756
		1747	[  0]	UGET 	 65		3	; slot65 = uv3"unknwon"
		1748	[  0]	TGETS	 65	65	111	; slot65 = uv3"unknown".getText
		1749	[  0]	KSTR 	 67		17	; slot67 = "imprint_absorb_cancel"
		1750	[  0]	GGET 	 68		109	; slot68 = _env["_G"]
		1751	[  0]	TGETS	 68	68	108	; slot68 = _G.currentGameLang
		1752	[  0]	IST  	   		68	; if _G.currentGameLang
		1753	[  0]	JMP  	 69		1	; 	goto 1755
		1754	[  0]	KSTR 	 68		107	; slot68 = "ko"
		1755	[  0]	CALL 	 65	2	3	; slot65 = uv3"unknown".getText(uv5"unknown", slot67)
		1756	[  0]	UGET 	 66		4	; slot66 = uv4"unknwon"
		1757	[  0]	CALL 	 66	2	1	; slot66 = uv4"unknown"()
		1758	[  0]	IST  	   		66	; if uv4"unknown"
		1759	[  0]	JMP  	 67		1	; 	goto 1761
		1760	[  0]	TGETS	 66	0	106	; slot66 = slot0.font
		1761	[  0]	ISF  	   		66	; if not <unknown table>.font
		1762	[  0]	JMP  	 67		79	; 	goto 1842
		1763	[  0]	GGET 	 67		102	; slot67 = _env["love"]
		1764	[  0]	TGETS	 67	67	101	; slot67 = love.graphics
		1765	[  0]	TGETS	 67	67	98	; slot67 = love.graphics.getFont
		1766	[  0]	CALL 	 67	2	1	; slot67 = love.graphics.getFont()
		1767	[  0]	GGET 	 68		102	; slot68 = _env["love"]
		1768	[  0]	TGETS	 68	68	101	; slot68 = love.graphics
		1769	[  0]	TGETS	 68	68	97	; slot68 = love.graphics.setFont
		1770	[  0]	MOV  	 70		66	; slot70 = <unknown table>.font
		1771	[  0]	CALL 	 68	1	2	;  = love.graphics.setFont(slot69)
		1772	[  0]	KSHORT	 68		0	; slot68 = 0
		1773	[  0]	KSHORT	 69		65524	; slot69 = 65524
		1774	[  0]	ISF  	   		64	; if not <unknown table>.imprintPanel.preview.cancelLabel
		1775	[  0]	JMP  	 70		14	; 	goto 1790
		1776	[  0]	GGET 	 70		127	; slot70 = _env["tonumber"]
		1777	[  0]	TGETS	 72	64	126	; slot72 = <unknown table>.imprintPanel.preview.cancelLabel.offsetX
		1778	[  0]	IST  	   		72	; if <unknown table>.imprintPanel.preview.cancelLabel.offsetX
		1779	[  0]	JMP  	 73		1	; 	goto 1781
		1780	[  0]	KSHORT	 72		0	; slot72 = 0
		1781	[  0]	CALL 	 70	2	2	; slot70 = tonumber(love.graphics.setFont)
		1782	[  0]	MULVV	 68	70	7	; slot68 = tonumber * slot7
		1783	[  0]	GGET 	 70		127	; slot70 = _env["tonumber"]
		1784	[  0]	TGETS	 72	64	125	; slot72 = <unknown table>.imprintPanel.preview.cancelLabel.offsetY
		1785	[  0]	IST  	   		72	; if <unknown table>.imprintPanel.preview.cancelLabel.offsetY
		1786	[  0]	JMP  	 73		1	; 	goto 1788
		1787	[  0]	KSHORT	 72		65524	; slot72 = 65524
		1788	[  0]	CALL 	 70	2	2	; slot70 = tonumber(love.graphics.setFont)
		1789	[  0]	MULVV	 69	70	7	; slot69 = tonumber * slot7
		1790	[  0]	UGET 	 70		2	; slot70 = uv2"unknwon"
		1791	[  0]	TGETS	 70	70	22	; slot70 = uv2"unknown"._buttonTextW
		1792	[  0]	MOV  	 72		45	; slot72 = uv2"unknown"._cancelBtnImage
		1793	[  0]	MOV  	 73		46	; slot73 = uv2"unknown"._cancelBtnImage.getDimensions
		1794	[  0]	CALL 	 70	2	3	; slot70 = uv2"unknown"._buttonTextW(love.graphics.setFont, uv2"unknown"._cancelBtnImage)
		1795	[  0]	GGET 	 71		96	; slot71 = _env["require"]
		1796	[  0]	KSTR 	 73		95	; slot73 = "src.ui.widgets"
		1797	[  0]	CALL 	 71	2	2	; slot71 = require(uv2"unknown"._cancelBtnImage)
		1798	[  0]	TGETS	 71	71	94	; slot71 = require.text_fit
		1799	[  0]	GGET 	 72		145	; slot72 = _env["math"]
		1800	[  0]	TGETS	 72	72	144	; slot72 = math.floor
		1801	[  0]	DIVVN	 74	46	5	; slot74 = uv2"unknown"._cancelBtnImage.getDimensions / 2
		1802	[  0]	ADDVV	 74	54	74	; slot74 = slot54 + slot74
		1803	[  0]	DIVVN	 75	70	5	; slot75 = uv2"unknown"._buttonTextW / 2
		1804	[  0]	SUBVV	 74	74	75	; slot74 = slot74 - slot75
		1805	[  0]	ADDVV	 74	74	68	; slot74 = slot74 + slot68
		1806	[  0]	ADDVN	 74	74	1	; slot74 = slot74 + 0.5
		1807	[  0]	CALL 	 72	2	2	; slot72 = math.floor(slot73)
		1808	[  0]	GGET 	 73		145	; slot73 = _env["math"]
		1809	[  0]	TGETS	 73	73	144	; slot73 = math.floor
		1810	[  0]	ADDVV	 75	56	69	; slot75 = slot56 + slot69
		1811	[  0]	ADDVN	 75	75	1	; slot75 = slot75 + 0.5
		1812	[  0]	CALL 	 73	2	2	; slot73 = math.floor(slot74)
		1813	[  0]	GGET 	 74		102	; slot74 = _env["love"]
		1814	[  0]	TGETS	 74	74	101	; slot74 = love.graphics
		1815	[  0]	TGETS	 74	74	100	; slot74 = love.graphics.setColor
		1816	[  0]	KSHORT	 76		1	; slot76 = 1
		1817	[  0]	KNUM 	 77		8	; slot77 = 0.95
		1818	[  0]	KNUM 	 78		9	; slot78 = 0.8
		1819	[  0]	UGET 	 79		0	; slot79 = uv0"unknwon"
		1820	[  0]	TGETS	 79	79	142	; slot79 = uv0"unknown".previewAlpha
		1821	[  0]	CALL 	 74	1	5	;  = love.graphics.setColor(slot75, slot76, slot77, slot78)
		1822	[  0]	TGETS	 74	71	93	; slot74 = require.text_fit.draw
		1823	[  0]	TGETS	 76	71	92	; slot76 = require.text_fit.fit
		1824	[  0]	MOV  	 78		65	; slot78 = uv3"unknown".getText
		1825	[  0]	MOV  	 79		70	; slot79 = uv2"unknown"._buttonTextW
		1826	[  0]	MOV  	 80		66	; slot80 = <unknown table>.font
		1827	[  0]	TNEW 	 81		0	; slot81 = new table( array: 0, dict: 1)
		1828	[  0]	CALL 	 76	2	5	; slot76 = require.text_fit.fit(slot77, uv3"unknown".getText, uv2"unknown"._buttonTextW, <unknown table>.font)
		1829	[  0]	MOV  	 77		72	; slot77 = math.floor
		1830	[  0]	MOV  	 78		73	; slot78 = math.floor
		1831	[  0]	MOV  	 79		70	; slot79 = uv2"unknown"._buttonTextW
		1832	[  0]	MOV  	 82		66	; slot82 = <unknown table>.font
		1833	[  0]	TGETS	 80	66	133	; slot80 = <unknown table>.font.getHeight
		1834	[  0]	CALL 	 80	2	2	; slot80 = <unknown table>.font.getHeight(slot81)
		1835	[  0]	TDUP 	 81		14	; slot81 = copy table#k14
		1836	[  0]	CALL 	 74	1	7	;  = require.text_fit.draw(slot75, require.text_fit.fit, math.floor, math.floor, uv2"unknown"._buttonTextW, <unknown table>.font.getHeight)
		1837	[  0]	GGET 	 74		102	; slot74 = _env["love"]
		1838	[  0]	TGETS	 74	74	101	; slot74 = love.graphics
		1839	[  0]	TGETS	 74	74	97	; slot74 = love.graphics.setFont
		1840	[  0]	MOV  	 76		67	; slot76 = love.graphics.getFont
		1841	[  0]	CALL 	 74	1	2	;  = love.graphics.setFont(slot75)
		1842	[  0]	GGET 	 67		102	; slot67 = _env["love"]
		1843	[  0]	TGETS	 67	67	101	; slot67 = love.graphics
		1844	[  0]	TGETS	 67	67	38	; slot67 = love.graphics.pop
		1845	[  0]	CALL 	 67	1	1	;  = love.graphics.pop()
		1846	[  0]	GGET 	 67		102	; slot67 = _env["love"]
		1847	[  0]	TGETS	 67	67	101	; slot67 = love.graphics
		1848	[  0]	TGETS	 67	67	100	; slot67 = love.graphics.setColor
		1849	[  0]	KSHORT	 69		1	; slot69 = 1
		1850	[  0]	KSHORT	 70		1	; slot70 = 1
		1851	[  0]	KSHORT	 71		1	; slot71 = 1
		1852	[  0]	KSHORT	 72		1	; slot72 = 1
		1853	[  0]	CALL 	 67	1	5	;  = love.graphics.setColor(slot68, slot69, slot70, slot71)
		1854	[  0]	UGET 	 67		2	; slot67 = uv2"unknwon"
		1855	[  0]	TDUP 	 68		12	; slot68 = copy table#k12
		1856	[  0]	TDUP 	 69		11	; slot69 = copy table#k11
		1857	[  0]	TSETS	 54	69	130	; slot69.x = slot54
		1858	[  0]	TSETS	 56	69	146	; slot69.y = slot56
		1859	[  0]	TSETS	 46	69	129	; slot69.w = uv2"unknown"._cancelBtnImage.getDimensions
		1860	[  0]	TSETS	 47	69	118	; slot69.h = slot47
		1861	[  0]	TSETS	 69	68	32	; slot68.cancelBtn = slot69
		1862	[  0]	TSETS	 68	67	13	; uv2"unknown"._hudHit = slot68
		1863	[  0]	ISF  	   		57	; if not slot57
		1864	[  0]	JMP  	 67		31	; 	goto 1896
		1865	[  0]	UGET 	 67		2	; slot67 = uv2"unknwon"
		1866	[  0]	UGET 	 68		2	; slot68 = uv2"unknwon"
		1867	[  0]	TGETS	 68	68	10	; slot68 = uv2"unknown"._modalHit
		1868	[  0]	IST  	   		68	; if uv2"unknown"._modalHit
		1869	[  0]	JMP  	 69		5	; 	goto 1875
		1870	[  0]	TDUP 	 68		9	; slot68 = copy table#k9
		1871	[  0]	TNEW 	 69		0	; slot69 = new table( array: 0, dict: 1)
		1872	[  0]	TSETS	 69	68	8	; slot68.buttons = slot69
		1873	[  0]	TNEW 	 69		0	; slot69 = new table( array: 0, dict: 1)
		1874	[  0]	TSETS	 69	68	7	; slot68.arrows = slot69
		1875	[  0]	TSETS	 68	67	10	; uv2"unknown"._modalHit = slot68
		1876	[  0]	UGET 	 67		2	; slot67 = uv2"unknwon"
		1877	[  0]	TGETS	 67	67	10	; slot67 = uv2"unknown"._modalHit
		1878	[  0]	KPRI 	 68		2	; slot68 = true
		1879	[  0]	TSETS	 68	67	6	; uv2"unknown"._modalHit.active = slot68
		1880	[  0]	UGET 	 67		2	; slot67 = uv2"unknwon"
		1881	[  0]	TGETS	 67	67	10	; slot67 = uv2"unknown"._modalHit
		1882	[  0]	UGET 	 68		2	; slot68 = uv2"unknwon"
		1883	[  0]	TGETS	 68	68	10	; slot68 = uv2"unknown"._modalHit
		1884	[  0]	TGETS	 68	68	8	; slot68 = uv2"unknown"._modalHit.buttons
		1885	[  0]	IST  	   		68	; if uv2"unknown"._modalHit.buttons
		1886	[  0]	JMP  	 69		1	; 	goto 1888
		1887	[  0]	TNEW 	 68		0	; slot68 = new table( array: 0, dict: 1)
		1888	[  0]	TSETS	 68	67	8	; uv2"unknown"._modalHit.buttons = slot68
		1889	[  0]	GGET 	 67		5	; slot67 = _env["table"]
		1890	[  0]	TGETS	 67	67	4	; slot67 = table.insert
		1891	[  0]	UGET 	 69		2	; slot69 = uv2"unknwon"
		1892	[  0]	TGETS	 69	69	10	; slot69 = uv2"unknown"._modalHit
		1893	[  0]	TGETS	 69	69	8	; slot69 = uv2"unknown"._modalHit.buttons
		1894	[  0]	MOV  	 70		57	; slot70 = slot57
		1895	[  0]	CALL 	 67	1	3	;  = table.insert(slot68, uv2"unknown"._modalHit.buttons)
		1896	[  0]	UGET 	 67		0	; slot67 = uv0"unknwon"
		1897	[  0]	TGETS	 67	67	20	; slot67 = uv0"unknown".convertBtnTimer
		1898	[  0]	KSHORT	 68		0	; slot68 = 0
		1899	[  0]	ISGE 	 68		67	; if slot68 >= uv0"unknown".convertBtnTimer
		1900	[  0]	JMP  	 67		16	; 	goto 1917
		1901	[  0]	UGET 	 67		0	; slot67 = uv0"unknwon"
		1902	[  0]	UGET 	 68		0	; slot68 = uv0"unknwon"
		1903	[  0]	TGETS	 68	68	20	; slot68 = uv0"unknown".convertBtnTimer
		1904	[  0]	SUBVV	 68	68	1	; slot68 = uv0"unknown".convertBtnTimer - slot1
		1905	[  0]	TSETS	 68	67	20	; uv0"unknown".convertBtnTimer = slot68
		1906	[  0]	UGET 	 67		0	; slot67 = uv0"unknwon"
		1907	[  0]	TGETS	 67	67	20	; slot67 = uv0"unknown".convertBtnTimer
		1908	[  0]	KSHORT	 68		0	; slot68 = 0
		1909	[  0]	ISGT 	 67		68	; if uv0"unknown".convertBtnTimer > slot68
		1910	[  0]	JMP  	 67		6	; 	goto 1917
		1911	[  0]	UGET 	 67		0	; slot67 = uv0"unknwon"
		1912	[  0]	KPRI 	 68		1	; slot68 = false
		1913	[  0]	TSETS	 68	67	29	; uv0"unknown".convertBtnPressed = slot68
		1914	[  0]	UGET 	 67		2	; slot67 = uv2"unknwon"
		1915	[  0]	KPRI 	 68		2	; slot68 = true
		1916	[  0]	TSETS	 68	67	3	; uv2"unknown"._convertTriggered = slot68
		1917	[  0]	UGET 	 67		0	; slot67 = uv0"unknwon"
		1918	[  0]	TGETS	 67	67	2	; slot67 = uv0"unknown".cancelBtnTimer
		1919	[  0]	KSHORT	 68		0	; slot68 = 0
		1920	[  0]	ISGE 	 68		67	; if slot68 >= uv0"unknown".cancelBtnTimer
		1921	[  0]	JMP  	 67		46	; 	goto 1968
		1922	[  0]	UGET 	 67		0	; slot67 = uv0"unknwon"
		1923	[  0]	UGET 	 68		0	; slot68 = uv0"unknwon"
		1924	[  0]	TGETS	 68	68	2	; slot68 = uv0"unknown".cancelBtnTimer
		1925	[  0]	SUBVV	 68	68	1	; slot68 = uv0"unknown".cancelBtnTimer - slot1
		1926	[  0]	TSETS	 68	67	2	; uv0"unknown".cancelBtnTimer = slot68
		1927	[  0]	UGET 	 67		0	; slot67 = uv0"unknwon"
		1928	[  0]	TGETS	 67	67	2	; slot67 = uv0"unknown".cancelBtnTimer
		1929	[  0]	KSHORT	 68		0	; slot68 = 0
		1930	[  0]	ISGT 	 67		68	; if uv0"unknown".cancelBtnTimer > slot68
		1931	[  0]	JMP  	 67		36	; 	goto 1968
		1932	[  0]	UGET 	 67		0	; slot67 = uv0"unknwon"
		1933	[  0]	KPRI 	 68		1	; slot68 = false
		1934	[  0]	TSETS	 68	67	19	; uv0"unknown".cancelBtnPressed = slot68
		1935	[  0]	UGET 	 67		2	; slot67 = uv2"unknwon"
		1936	[  0]	KPRI 	 68		2	; slot68 = true
		1937	[  0]	TSETS	 68	67	1	; uv2"unknown"._cancelTriggered = slot68
		1938	[  0]	JMP  	 45		29	; 	goto 1968
		1939	[  0]	UGET 	 45		2	; slot45 = uv2"unknwon"
		1940	[  0]	TDUP 	 46		0	; slot46 = copy table#k0
		1941	[  0]	TSETS	 46	45	13	; uv2"unknown"._hudHit = slot46
		1942	[  0]	UGET 	 45		0	; slot45 = uv0"unknwon"
		1943	[  0]	KSHORT	 46		1	; slot46 = 1
		1944	[  0]	TSETS	 46	45	18	; uv0"unknown".cancelBtnScale = slot46
		1945	[  0]	UGET 	 45		0	; slot45 = uv0"unknwon"
		1946	[  0]	KPRI 	 46		1	; slot46 = false
		1947	[  0]	TSETS	 46	45	19	; uv0"unknown".cancelBtnPressed = slot46
		1948	[  0]	UGET 	 45		0	; slot45 = uv0"unknwon"
		1949	[  0]	KSHORT	 46		0	; slot46 = 0
		1950	[  0]	TSETS	 46	45	2	; uv0"unknown".cancelBtnTimer = slot46
		1951	[  0]	UGET 	 45		0	; slot45 = uv0"unknwon"
		1952	[  0]	KSHORT	 46		1	; slot46 = 1
		1953	[  0]	TSETS	 46	45	28	; uv0"unknown".convertBtnScale = slot46
		1954	[  0]	UGET 	 45		0	; slot45 = uv0"unknwon"
		1955	[  0]	KPRI 	 46		1	; slot46 = false
		1956	[  0]	TSETS	 46	45	29	; uv0"unknown".convertBtnPressed = slot46
		1957	[  0]	UGET 	 45		0	; slot45 = uv0"unknwon"
		1958	[  0]	KSHORT	 46		0	; slot46 = 0
		1959	[  0]	TSETS	 46	45	20	; uv0"unknown".convertBtnTimer = slot46
		1960	[  0]	IST  	   		2	; if slot2
		1961	[  0]	JMP  	 45		6	; 	goto 1968
		1962	[  0]	UGET 	 45		2	; slot45 = uv2"unknwon"
		1963	[  0]	KPRI 	 46		1	; slot46 = false
		1964	[  0]	TSETS	 46	45	1	; uv2"unknown"._cancelTriggered = slot46
		1965	[  0]	UGET 	 45		2	; slot45 = uv2"unknwon"
		1966	[  0]	KPRI 	 46		1	; slot46 = false
		1967	[  0]	TSETS	 46	45	3	; uv2"unknown"._convertTriggered = slot46
		1968	[  0]	RET0 	  0		1	; return
		1969	[  0]	RET0 	  0		1	; return
		1970	[  0]	RET0 	  0		1	; return
		1971	[  0]	RET0 	  0		1	; return
	195	[  0]	TSETS	 78	0	9	; slot0.drawBattlefieldPreview = slot78
	196	[  0]	FNEW 	 78		6	; N/A:0-0: 3 args, 40 upvalues, 159 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			[source] = imprint,
			]
		
		
		ktable#2 = [
			]
		
		
		ktable#3 = [
			#1: 0,
			#2: 0,
			#3: 1,
			#4: 1,
			]
		
		
		ktable#21 = [
			#1: 0.55,
			#2: 0.48,
			#3: 0.43,
			#4: 1,
			]
		
		
		ktable#23 = [
			#1: 0.99,
			#2: 0.82,
			#3: 0.18,
			]
		
		
		ktable#45 = [
			]
		
		
		ktable#46 = [
			]
		
		
		ktable#49 = [
			]
		
		
		ktable#50 = [
			[active] = true,
			]
		
		
		ktable#74 = [
			#1: 1,
			#2: 0.4,
			]
		
		
		ktable#76 = [
			#1: 0.24313725490196078,
			#2: 0.20784313725490197,
			#3: 0.27450980392156865,
			]
		
		
		ktable#88 = [
			]
		
		
		ktable#99 = [
			[active] = false,
			]
		
		
		ktable#133 = [
			]
		
		
		ktable#162 = [
			[kind] = none,
			]
		
		
		ktable#169 = [
			]
		
		
		ktable#171 = [
			]
		
		
		ktable#173 = [
			]
		
		
		ktable#183 = [
			#1: 0.9,
			#2: 0.7,
			#3: 0.2,
			#4: 1,
			]
		
		
		ktable#185 = [
			#1: 1,
			#2: 1,
			#3: 1,
			#4: 1,
			]
		
		
		ktable#191 = [
			#1: 0,
			#2: 0,
			#3: 0,
			#4: 0.15,
			]
		
		
		ktable#193 = [
			]
		
		
		ktable#200 = [
			]
		
		
		ktable#203 = [
			]
		
		
		ktable#205 = [
			#1: 1,
			#2: 1,
			#3: 1,
			#4: 0.15,
			]
		
		
		ktable#207 = [
			#1: 0.6,
			#2: 0.6,
			#3: 0.6,
			#4: 0.8,
			]
		
		
		ktable#209 = [
			#1: 0.05,
			#2: 0.05,
			#3: 0.05,
			#4: 0.85,
			]
		
		
		ktable#212 = [
			#1: 0.2,
			#2: 0.8,
			#3: 0.4,
			#4: 0.95,
			]
		
		
		ktable#224 = [
			]
		
		
		ktable#239 = [
			#1: 0.55,
			#2: 0.48,
			#3: 0.43,
			#4: 1,
			]
		
		
		ktable#245 = [
			[source] = imprintFaction,
			]
		
		
		ktable#247 = [
			]
		
		
		ktable#273 = [
			]
		
		
		ktable#276 = [
			#1: 1,
			]
		
		
		ktable#277 = [
			]
		
		
		ktable#314 = [
			[source] = imprintSkill,
			]
		
		
		ktable#316 = [
			]
		
		
		ktable#322 = [
			]
		
		
		ktable#329 = [
			]
		
		
		ktable#371 = [
			[active] = false,
			]
		
		
		ktable#373 = [
			]
		
		
		ktable#375 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  3		1	; 	goto 4
		  3	[  0]	UCLO 	  0		8266	; nil uvs >= r0; goto 8270
		  4	[  0]	ISF  	   		2	; if not slot2
		  5	[  0]	JMP  	  3		3	; 	goto 9
		  6	[  0]	TGETS	  3	2	443	; slot3 = slot2.mx
		  7	[  0]	IST  	   		3	; if <unknown table>.mx
		  8	[  0]	JMP  	  4		1	; 	goto 10
		  9	[  0]	KSHORT	  3		55537	; slot3 = 55537
		 10	[  0]	ISF  	   		2	; if not slot2
		 11	[  0]	JMP  	  4		3	; 	goto 15
		 12	[  0]	TGETS	  4	2	442	; slot4 = slot2.my
		 13	[  0]	IST  	   		4	; if <unknown table>.my
		 14	[  0]	JMP  	  5		1	; 	goto 16
		 15	[  0]	KSHORT	  4		55537	; slot4 = 55537
		 16	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 17	[  0]	TGETS	  5	5	441	; slot5 = uv0"unknown"._hoveredRandomOption
		 18	[  0]	ISF  	   		5	; if not uv0"unknown"._hoveredRandomOption
		 19	[  0]	JMP  	  6		9	; 	goto 29
		 20	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 21	[  0]	TGETS	  5	5	441	; slot5 = uv0"unknown"._hoveredRandomOption
		 22	[  0]	TGETS	  5	5	440	; slot5 = uv0"unknown"._hoveredRandomOption.anchor
		 23	[  0]	ISF  	   		5	; if not uv0"unknown"._hoveredRandomOption.anchor
		 24	[  0]	JMP  	  6		4	; 	goto 29
		 25	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 26	[  0]	TGETS	  5	5	441	; slot5 = uv0"unknown"._hoveredRandomOption
		 27	[  0]	TGETS	  5	5	440	; slot5 = uv0"unknown"._hoveredRandomOption.anchor
		 28	[  0]	TGETS	  5	5	439	; slot5 = uv0"unknown"._hoveredRandomOption.anchor.index
		 29	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 30	[  0]	KPRI 	  7		0	; slot7 = nil
		 31	[  0]	TSETS	  7	6	438	; uv0"unknown"._hoveredSlot = slot7
		 32	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 33	[  0]	KPRI 	  7		0	; slot7 = nil
		 34	[  0]	TSETS	  7	6	437	; uv0"unknown"._hoveredAbsorbIcon = slot7
		 35	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 36	[  0]	KPRI 	  7		0	; slot7 = nil
		 37	[  0]	TSETS	  7	6	436	; uv0"unknown"._hoveredFaction = slot7
		 38	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 39	[  0]	KPRI 	  7		0	; slot7 = nil
		 40	[  0]	TSETS	  7	6	435	; uv0"unknown"._absorbLockRect = slot7
		 41	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 42	[  0]	KPRI 	  7		0	; slot7 = nil
		 43	[  0]	TSETS	  7	6	434	; uv0"unknown"._absorbLockUnit = slot7
		 44	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 45	[  0]	KPRI 	  7		0	; slot7 = nil
		 46	[  0]	TSETS	  7	6	433	; uv0"unknown"._absorbLockDisplayUnit = slot7
		 47	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 48	[  0]	KPRI 	  7		0	; slot7 = nil
		 49	[  0]	TSETS	  7	6	432	; uv0"unknown"._previewConvertInfo = slot7
		 50	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 51	[  0]	KPRI 	  7		0	; slot7 = nil
		 52	[  0]	TSETS	  7	6	441	; uv0"unknown"._hoveredRandomOption = slot7
		 53	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 54	[  0]	KPRI 	  7		0	; slot7 = nil
		 55	[  0]	TSETS	  7	6	431	; uv0"unknown"._hoveredSkill = slot7
		 56	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 57	[  0]	KPRI 	  7		0	; slot7 = nil
		 58	[  0]	TSETS	  7	6	430	; uv0"unknown"._skillFrameRect = slot7
		 59	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 60	[  0]	KPRI 	  7		0	; slot7 = nil
		 61	[  0]	TSETS	  7	6	429	; uv0"unknown"._awakeningRuneRect = slot7
		 62	[  0]	KPRI 	  6		0	; slot6 = nil
		 63	[  0]	TSETS	  6	0	428	; slot0._awakeningPanelRect = slot6
		 64	[  0]	KPRI 	  6		0	; slot6 = nil
		 65	[  0]	TSETS	  6	0	427	; slot0._awakeningInfo = slot6
		 66	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 67	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 68	[  0]	TGETS	  7	7	425	; slot7 = uv1"unknown".replaceHoveringNext
		 69	[  0]	ISEQP	  7		2	; if uv1"unknown".replaceHoveringNext == true
		 70	[  0]	JMP  	  7		2	; 	goto 73
		 71	[  0]	KPRI 	  7		1	; slot7 = false
		 72	[  0]	JMP  	  8		1	; 	goto 74
		 73	[  0]	KPRI 	  7		2	; slot7 = true
		 74	[  0]	TSETS	  7	6	426	; uv1"unknown".replaceHovering = slot7
		 75	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 76	[  0]	KPRI 	  7		1	; slot7 = false
		 77	[  0]	TSETS	  7	6	425	; uv1"unknown".replaceHoveringNext = slot7
		 78	[  0]	GGET 	  6		424	; slot6 = _env["love"]
		 79	[  0]	TGETS	  6	6	423	; slot6 = love.timer
		 80	[  0]	ISF  	   		6	; if not love.timer
		 81	[  0]	JMP  	  7		11	; 	goto 93
		 82	[  0]	GGET 	  6		424	; slot6 = _env["love"]
		 83	[  0]	TGETS	  6	6	423	; slot6 = love.timer
		 84	[  0]	TGETS	  6	6	422	; slot6 = love.timer.getTime
		 85	[  0]	ISF  	   		6	; if not love.timer.getTime
		 86	[  0]	JMP  	  7		6	; 	goto 93
		 87	[  0]	GGET 	  6		424	; slot6 = _env["love"]
		 88	[  0]	TGETS	  6	6	423	; slot6 = love.timer
		 89	[  0]	TGETS	  6	6	422	; slot6 = love.timer.getTime
		 90	[  0]	CALL 	  6	2	1	; slot6 = love.timer.getTime()
		 91	[  0]	IST  	   		6	; if love.timer.getTime
		 92	[  0]	JMP  	  7		1	; 	goto 94
		 93	[  0]	KSHORT	  6		0	; slot6 = 0
		 94	[  0]	KPRI 	  7		0	; slot7 = nil
		 95	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 96	[  0]	TGETS	  8	8	421	; slot8 = uv1"unknown".lastTime
		 97	[  0]	ISF  	   		8	; if not uv1"unknown".lastTime
		 98	[  0]	JMP  	  9		4	; 	goto 103
		 99	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		100	[  0]	TGETS	  8	8	421	; slot8 = uv1"unknown".lastTime
		101	[  0]	SUBVV	  7	6	8	; slot7 = slot6 - uv1"unknown".lastTime
		102	[  0]	JMP  	  8		1	; 	goto 104
		103	[  0]	KSHORT	  7		0	; slot7 = 0
		104	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		105	[  0]	TSETS	  6	8	421	; uv1"unknown".lastTime = slot6
		106	[  0]	KSHORT	  8		0	; slot8 = 0
		107	[  0]	ISGE 	  7		8	; if slot7 >= slot8
		108	[  0]	JMP  	  8		1	; 	goto 110
		109	[  0]	KSHORT	  7		0	; slot7 = 0
		110	[  0]	KNUM 	  8		0	; slot8 = 0.1
		111	[  0]	ISGE 	  8		7	; if slot8 >= slot7
		112	[  0]	JMP  	  8		1	; 	goto 114
		113	[  0]	KNUM 	  7		0	; slot7 = 0.1
		114	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		115	[  0]	TGETS	  8	8	420	; slot8 = uv1"unknown".holdTimer
		116	[  0]	KSHORT	  9		0	; slot9 = 0
		117	[  0]	ISGE 	  9		8	; if slot9 >= uv1"unknown".holdTimer
		118	[  0]	JMP  	  8		5	; 	goto 124
		119	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		120	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		121	[  0]	TGETS	  9	9	420	; slot9 = uv1"unknown".holdTimer
		122	[  0]	SUBVV	  9	9	7	; slot9 = uv1"unknown".holdTimer - slot7
		123	[  0]	TSETS	  9	8	420	; uv1"unknown".holdTimer = slot9
		124	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		125	[  0]	TGETS	  8	8	419	; slot8 = uv1"unknown".blinkTimer
		126	[  0]	KSHORT	  9		0	; slot9 = 0
		127	[  0]	ISGE 	  9		8	; if slot9 >= uv1"unknown".blinkTimer
		128	[  0]	JMP  	  8		16	; 	goto 145
		129	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		130	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		131	[  0]	TGETS	  9	9	419	; slot9 = uv1"unknown".blinkTimer
		132	[  0]	SUBVV	  9	9	7	; slot9 = uv1"unknown".blinkTimer - slot7
		133	[  0]	TSETS	  9	8	419	; uv1"unknown".blinkTimer = slot9
		134	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		135	[  0]	TGETS	  8	8	419	; slot8 = uv1"unknown".blinkTimer
		136	[  0]	KSHORT	  9		0	; slot9 = 0
		137	[  0]	ISGT 	  8		9	; if uv1"unknown".blinkTimer > slot9
		138	[  0]	JMP  	  8		6	; 	goto 145
		139	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		140	[  0]	KPRI 	  9		0	; slot9 = nil
		141	[  0]	TSETS	  9	8	418	; uv1"unknown".blinkUnit = slot9
		142	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		143	[  0]	KPRI 	  9		0	; slot9 = nil
		144	[  0]	TSETS	  9	8	417	; uv1"unknown".blinkSlot = slot9
		145	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		146	[  0]	TGETS	  8	8	416	; slot8 = uv1"unknown".upgradeBtnTimer
		147	[  0]	KSHORT	  9		0	; slot9 = 0
		148	[  0]	ISGE 	  9		8	; if slot9 >= uv1"unknown".upgradeBtnTimer
		149	[  0]	JMP  	  8		17	; 	goto 167
		150	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		151	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		152	[  0]	TGETS	  9	9	416	; slot9 = uv1"unknown".upgradeBtnTimer
		153	[  0]	SUBVV	  9	9	7	; slot9 = uv1"unknown".upgradeBtnTimer - slot7
		154	[  0]	TSETS	  9	8	416	; uv1"unknown".upgradeBtnTimer = slot9
		155	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		156	[  0]	TGETS	  8	8	416	; slot8 = uv1"unknown".upgradeBtnTimer
		157	[  0]	KSHORT	  9		0	; slot9 = 0
		158	[  0]	ISGT 	  8		9	; if uv1"unknown".upgradeBtnTimer > slot9
		159	[  0]	JMP  	  8		28	; 	goto 188
		160	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		161	[  0]	KPRI 	  9		1	; slot9 = false
		162	[  0]	TSETS	  9	8	415	; uv1"unknown".upgradeBtnPressed = slot9
		163	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		164	[  0]	KPRI 	  9		2	; slot9 = true
		165	[  0]	TSETS	  9	8	414	; uv0"unknown"._upgradeTriggered = slot9
		166	[  0]	JMP  	  8		21	; 	goto 188
		167	[  0]	ISFC 	  8		2	; slot8 = slot2; if not slot2
		168	[  0]	JMP  	  8		5	; 	goto 174
		169	[  0]	TGETS	  8	2	413	; slot8 = slot2.modal
		170	[  0]	ISF  	   		8	; if not <unknown table>.modal
		171	[  0]	JMP  	  9		2	; 	goto 174
		172	[  0]	TGETS	  8	2	413	; slot8 = slot2.modal
		173	[  0]	TGETS	  8	8	412	; slot8 = <unknown table>.modal.active
		174	[  0]	IST  	   		8	; if <unknown table>.modal.active
		175	[  0]	JMP  	  9		12	; 	goto 188
		176	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		177	[  0]	KPRI 	 10		1	; slot10 = false
		178	[  0]	TSETS	 10	9	414	; uv0"unknown"._upgradeTriggered = slot10
		179	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		180	[  0]	KPRI 	 10		0	; slot10 = nil
		181	[  0]	TSETS	 10	9	411	; uv0"unknown"._upgradeSlot = slot10
		182	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		183	[  0]	KPRI 	 10		1	; slot10 = false
		184	[  0]	TSETS	 10	9	415	; uv1"unknown".upgradeBtnPressed = slot10
		185	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		186	[  0]	KSHORT	 10		0	; slot10 = 0
		187	[  0]	TSETS	 10	9	416	; uv1"unknown".upgradeBtnTimer = slot10
		188	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		189	[  0]	TGETS	  8	8	410	; slot8 = uv1"unknown".confirmBtnTimer
		190	[  0]	KSHORT	  9		0	; slot9 = 0
		191	[  0]	ISGE 	  9		8	; if slot9 >= uv1"unknown".confirmBtnTimer
		192	[  0]	JMP  	  8		17	; 	goto 210
		193	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		194	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		195	[  0]	TGETS	  9	9	410	; slot9 = uv1"unknown".confirmBtnTimer
		196	[  0]	SUBVV	  9	9	7	; slot9 = uv1"unknown".confirmBtnTimer - slot7
		197	[  0]	TSETS	  9	8	410	; uv1"unknown".confirmBtnTimer = slot9
		198	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		199	[  0]	TGETS	  8	8	410	; slot8 = uv1"unknown".confirmBtnTimer
		200	[  0]	KSHORT	  9		0	; slot9 = 0
		201	[  0]	ISGT 	  8		9	; if uv1"unknown".confirmBtnTimer > slot9
		202	[  0]	JMP  	  8		40	; 	goto 243
		203	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		204	[  0]	KPRI 	  9		1	; slot9 = false
		205	[  0]	TSETS	  9	8	409	; uv1"unknown".confirmBtnPressed = slot9
		206	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		207	[  0]	KPRI 	  9		2	; slot9 = true
		208	[  0]	TSETS	  9	8	408	; uv0"unknown"._confirmTriggered = slot9
		209	[  0]	JMP  	  8		33	; 	goto 243
		210	[  0]	ISFC 	  8		2	; slot8 = slot2; if not slot2
		211	[  0]	JMP  	  8		5	; 	goto 217
		212	[  0]	TGETS	  8	2	413	; slot8 = slot2.modal
		213	[  0]	ISF  	   		8	; if not <unknown table>.modal
		214	[  0]	JMP  	  9		2	; 	goto 217
		215	[  0]	TGETS	  8	2	413	; slot8 = slot2.modal
		216	[  0]	TGETS	  8	8	412	; slot8 = <unknown table>.modal.active
		217	[  0]	IST  	   		8	; if <unknown table>.modal.active
		218	[  0]	JMP  	  9		24	; 	goto 243
		219	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		220	[  0]	KPRI 	 10		1	; slot10 = false
		221	[  0]	TSETS	 10	9	408	; uv0"unknown"._confirmTriggered = slot10
		222	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		223	[  0]	KPRI 	 10		0	; slot10 = nil
		224	[  0]	TSETS	 10	9	407	; uv0"unknown"._confirmSlot = slot10
		225	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		226	[  0]	KPRI 	 10		0	; slot10 = nil
		227	[  0]	TSETS	 10	9	406	; uv0"unknown"._confirmAction = slot10
		228	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		229	[  0]	KPRI 	 10		1	; slot10 = false
		230	[  0]	TSETS	 10	9	409	; uv1"unknown".confirmBtnPressed = slot10
		231	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		232	[  0]	KSHORT	 10		0	; slot10 = 0
		233	[  0]	TSETS	 10	9	410	; uv1"unknown".confirmBtnTimer = slot10
		234	[  0]	KSHORT	  9		1	; slot9 = 1
		235	[  0]	KSHORT	 10		5	; slot10 = 5
		236	[  0]	KSHORT	 11		1	; slot11 = 1
		237	[  0]	FORI 	  9		5	; for slot12 = slot9,slot10,slot11 else goto 243
		238	[  0]	UGET 	 13		1	; slot13 = uv1"unknwon"
		239	[  0]	TGETS	 13	13	405	; slot13 = uv1"unknown".actionBtnScales
		240	[  0]	KNUM 	 14		1	; slot14 = 0.8
		241	[  0]	TSETV	 14	13	12	; uv1"unknown".actionBtnScales[slot12] = slot14
		242	[  0]	FORL 	  9		-5	; slot12 = slot12 + slot11; if cmp(slot12, sign slot11,  slot10) goto 238
		243	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		244	[  0]	TGETS	  8	8	404	; slot8 = uv1"unknown".changeBtnTimer
		245	[  0]	KSHORT	  9		0	; slot9 = 0
		246	[  0]	ISGE 	  9		8	; if slot9 >= uv1"unknown".changeBtnTimer
		247	[  0]	JMP  	  8		17	; 	goto 265
		248	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		249	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		250	[  0]	TGETS	  9	9	404	; slot9 = uv1"unknown".changeBtnTimer
		251	[  0]	SUBVV	  9	9	7	; slot9 = uv1"unknown".changeBtnTimer - slot7
		252	[  0]	TSETS	  9	8	404	; uv1"unknown".changeBtnTimer = slot9
		253	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		254	[  0]	TGETS	  8	8	404	; slot8 = uv1"unknown".changeBtnTimer
		255	[  0]	KSHORT	  9		0	; slot9 = 0
		256	[  0]	ISGT 	  8		9	; if uv1"unknown".changeBtnTimer > slot9
		257	[  0]	JMP  	  8		28	; 	goto 286
		258	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		259	[  0]	KPRI 	  9		1	; slot9 = false
		260	[  0]	TSETS	  9	8	403	; uv1"unknown".changeBtnPressed = slot9
		261	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		262	[  0]	KPRI 	  9		2	; slot9 = true
		263	[  0]	TSETS	  9	8	402	; uv0"unknown"._changeTriggered = slot9
		264	[  0]	JMP  	  8		21	; 	goto 286
		265	[  0]	ISFC 	  8		2	; slot8 = slot2; if not slot2
		266	[  0]	JMP  	  8		5	; 	goto 272
		267	[  0]	TGETS	  8	2	413	; slot8 = slot2.modal
		268	[  0]	ISF  	   		8	; if not <unknown table>.modal
		269	[  0]	JMP  	  9		2	; 	goto 272
		270	[  0]	TGETS	  8	2	413	; slot8 = slot2.modal
		271	[  0]	TGETS	  8	8	412	; slot8 = <unknown table>.modal.active
		272	[  0]	IST  	   		8	; if <unknown table>.modal.active
		273	[  0]	JMP  	  9		12	; 	goto 286
		274	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		275	[  0]	KPRI 	 10		1	; slot10 = false
		276	[  0]	TSETS	 10	9	402	; uv0"unknown"._changeTriggered = slot10
		277	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		278	[  0]	KPRI 	 10		0	; slot10 = nil
		279	[  0]	TSETS	 10	9	401	; uv0"unknown"._changeSlot = slot10
		280	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		281	[  0]	KPRI 	 10		1	; slot10 = false
		282	[  0]	TSETS	 10	9	403	; uv1"unknown".changeBtnPressed = slot10
		283	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		284	[  0]	KSHORT	 10		0	; slot10 = 0
		285	[  0]	TSETS	 10	9	404	; uv1"unknown".changeBtnTimer = slot10
		286	[  0]	KSHORT	  8		1	; slot8 = 1
		287	[  0]	KSHORT	  9		5	; slot9 = 5
		288	[  0]	KSHORT	 10		1	; slot10 = 1
		289	[  0]	FORI 	  8		55	; for slot11 = slot8,slot9,slot10 else goto 345
		290	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		291	[  0]	TGETS	 12	12	400	; slot12 = uv1"unknown".impactScales
		292	[  0]	TGETV	 12	12	11	; slot12 = uv1"unknown".impactScales[slot11]
		293	[  0]	KSHORT	 13		0	; slot13 = 0
		294	[  0]	ISGE 	 13		12	; if slot13 >= slot12
		295	[  0]	JMP  	 12		18	; 	goto 314
		296	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		297	[  0]	TGETS	 12	12	400	; slot12 = uv1"unknown".impactScales
		298	[  0]	UGET 	 13		1	; slot13 = uv1"unknwon"
		299	[  0]	TGETS	 13	13	400	; slot13 = uv1"unknown".impactScales
		300	[  0]	TGETV	 13	13	11	; slot13 = uv1"unknown".impactScales[slot11]
		301	[  0]	MULVN	 14	7	2	; slot14 = slot7 * 3
		302	[  0]	SUBVV	 13	13	14	; slot13 = slot13 - slot14
		303	[  0]	TSETV	 13	12	11	; uv1"unknown".impactScales[slot11] = slot13
		304	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		305	[  0]	TGETS	 12	12	400	; slot12 = uv1"unknown".impactScales
		306	[  0]	TGETV	 12	12	11	; slot12 = uv1"unknown".impactScales[slot11]
		307	[  0]	KSHORT	 13		0	; slot13 = 0
		308	[  0]	ISGE 	 12		13	; if slot12 >= slot13
		309	[  0]	JMP  	 12		4	; 	goto 314
		310	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		311	[  0]	TGETS	 12	12	400	; slot12 = uv1"unknown".impactScales
		312	[  0]	KSHORT	 13		0	; slot13 = 0
		313	[  0]	TSETV	 13	12	11	; uv1"unknown".impactScales[slot11] = slot13
		314	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		315	[  0]	TGETS	 12	12	399	; slot12 = uv1"unknown".floatOffsets
		316	[  0]	TGETV	 12	12	11	; slot12 = uv1"unknown".floatOffsets[slot11]
		317	[  0]	ISEQN	 12		3	; if slot12 == 0
		318	[  0]	JMP  	 12		25	; 	goto 344
		319	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		320	[  0]	TGETS	 12	12	399	; slot12 = uv1"unknown".floatOffsets
		321	[  0]	UGET 	 13		1	; slot13 = uv1"unknwon"
		322	[  0]	TGETS	 13	13	399	; slot13 = uv1"unknown".floatOffsets
		323	[  0]	TGETV	 13	13	11	; slot13 = uv1"unknown".floatOffsets[slot11]
		324	[  0]	GGET 	 14		398	; slot14 = _env["math"]
		325	[  0]	TGETS	 14	14	397	; slot14 = math.exp
		326	[  0]	UNM  	 16		7	; slot16 = -slot7
		327	[  0]	MULVN	 16	16	4	; slot16 = slot16 * 10
		328	[  0]	CALL 	 14	2	2	; slot14 = math.exp(slot15)
		329	[  0]	MULVV	 13	13	14	; slot13 = slot13 * math.exp
		330	[  0]	TSETV	 13	12	11	; uv1"unknown".floatOffsets[slot11] = slot13
		331	[  0]	GGET 	 12		398	; slot12 = _env["math"]
		332	[  0]	TGETS	 12	12	396	; slot12 = math.abs
		333	[  0]	UGET 	 14		1	; slot14 = uv1"unknwon"
		334	[  0]	TGETS	 14	14	399	; slot14 = uv1"unknown".floatOffsets
		335	[  0]	TGETV	 14	14	11	; slot14 = uv1"unknown".floatOffsets[slot11]
		336	[  0]	CALL 	 12	2	2	; slot12 = math.abs(slot13)
		337	[  0]	KNUM 	 13		0	; slot13 = 0.1
		338	[  0]	ISGE 	 12		13	; if math.abs >= slot13
		339	[  0]	JMP  	 12		4	; 	goto 344
		340	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		341	[  0]	TGETS	 12	12	399	; slot12 = uv1"unknown".floatOffsets
		342	[  0]	KSHORT	 13		0	; slot13 = 0
		343	[  0]	TSETV	 13	12	11	; uv1"unknown".floatOffsets[slot11] = slot13
		344	[  0]	FORL 	  8		-55	; slot11 = slot11 + slot10; if cmp(slot11, sign slot10,  slot9) goto 290
		345	[  0]	ISNEP	  1		0	; if slot1 ~= nil
		346	[  0]	JMP  	  8		2	; 	goto 349
		347	[  0]	KPRI 	  8		1	; slot8 = false
		348	[  0]	JMP  	  9		1	; 	goto 350
		349	[  0]	KPRI 	  8		2	; slot8 = true
		350	[  0]	ISF  	   		2	; if not slot2
		351	[  0]	JMP  	  9		3	; 	goto 355
		352	[  0]	TGETS	  9	2	413	; slot9 = slot2.modal
		353	[  0]	IST  	   		9	; if <unknown table>.modal
		354	[  0]	JMP  	 10		1	; 	goto 356
		355	[  0]	KPRI 	  9		0	; slot9 = nil
		356	[  0]	ISFC 	 10		9	; slot10 = slot9; if not slot9
		357	[  0]	JMP  	 10		4	; 	goto 362
		358	[  0]	TGETS	 10	9	412	; slot10 = slot9.active
		359	[  0]	ISF  	   		10	; if not <unknown table>.active
		360	[  0]	JMP  	 11		1	; 	goto 362
		361	[  0]	TGETS	 10	9	395	; slot10 = slot9.absorber
		362	[  0]	ISF  	   		2	; if not slot2
		363	[  0]	JMP  	 11		17	; 	goto 381
		364	[  0]	TGETS	 11	2	394	; slot11 = slot2.progress
		365	[  0]	ISEQP	 11		0	; if <unknown table>.progress == nil
		366	[  0]	JMP  	 11		14	; 	goto 381
		367	[  0]	UGET 	 11		2	; slot11 = uv2"unknwon"
		368	[  0]	GGET 	 13		393	; slot13 = _env["tonumber"]
		369	[  0]	TGETS	 15	2	394	; slot15 = slot2.progress
		370	[  0]	CALL 	 13	2	2	; slot13 = tonumber(slot14)
		371	[  0]	IST  	   		13	; if tonumber
		372	[  0]	JMP  	 14		1	; 	goto 374
		373	[  0]	KSHORT	 13		0	; slot13 = 0
		374	[  0]	CALL 	 11	2	2	; slot11 = uv2"unknown"(uv1"unknown".floatOffsets)
		375	[  0]	KSHORT	 12		0	; slot12 = 0
		376	[  0]	ISLT 	 12		11	; if slot12 < uv2"unknown"
		377	[  0]	JMP  	 12		2	; 	goto 380
		378	[  0]	KPRI 	  8		1	; slot8 = false
		379	[  0]	JMP  	 12		1	; 	goto 381
		380	[  0]	KPRI 	  8		2	; slot8 = true
		381	[  0]	ISF  	   		2	; if not slot2
		382	[  0]	JMP  	 11		9	; 	goto 392
		383	[  0]	TGETS	 11	2	412	; slot11 = slot2.active
		384	[  0]	ISEQP	 11		0	; if <unknown table>.active == nil
		385	[  0]	JMP  	 11		6	; 	goto 392
		386	[  0]	TGETS	 11	2	412	; slot11 = slot2.active
		387	[  0]	ISEQP	 11		2	; if <unknown table>.active == true
		388	[  0]	JMP  	 11		2	; 	goto 391
		389	[  0]	KPRI 	  8		1	; slot8 = false
		390	[  0]	JMP  	 11		1	; 	goto 392
		391	[  0]	KPRI 	  8		2	; slot8 = true
		392	[  0]	UGET 	 11		1	; slot11 = uv1"unknwon"
		393	[  0]	TGETS	 11	11	420	; slot11 = uv1"unknown".holdTimer
		394	[  0]	KSHORT	 12		0	; slot12 = 0
		395	[  0]	ISGE 	 12		11	; if slot12 >= uv1"unknown".holdTimer
		396	[  0]	JMP  	 11		1	; 	goto 398
		397	[  0]	KPRI 	  8		2	; slot8 = true
		398	[  0]	ISF  	   		8	; if not slot8
		399	[  0]	JMP  	 11		4	; 	goto 404
		400	[  0]	ISF  	   		1	; if not slot1
		401	[  0]	JMP  	 11		2	; 	goto 404
		402	[  0]	UGET 	 11		1	; slot11 = uv1"unknwon"
		403	[  0]	TSETS	  1	11	392	; uv1"unknown".lastUnit = slot1
		404	[  0]	ISTC 	 11		1	; slot11 = slot1; if slot1
		405	[  0]	JMP  	 11		2	; 	goto 408
		406	[  0]	UGET 	 11		1	; slot11 = uv1"unknwon"
		407	[  0]	TGETS	 11	11	392	; slot11 = uv1"unknown".lastUnit
		408	[  0]	ISF  	   		8	; if not slot8
		409	[  0]	JMP  	 12		7	; 	goto 417
		410	[  0]	ISF  	   		2	; if not slot2
		411	[  0]	JMP  	 12		3	; 	goto 415
		412	[  0]	TGETS	 12	2	391	; slot12 = slot2.absorbLockUnit
		413	[  0]	IST  	   		12	; if <unknown table>.absorbLockUnit
		414	[  0]	JMP  	 13		3	; 	goto 418
		415	[  0]	ISTC 	 12		11	; slot12 = uv1"unknown".lastUnit; if uv1"unknown".lastUnit
		416	[  0]	JMP  	 12		1	; 	goto 418
		417	[  0]	KPRI 	 12		0	; slot12 = nil
		418	[  0]	ISF  	   		12	; if not slot12
		419	[  0]	JMP  	 13		4	; 	goto 424
		420	[  0]	TGETS	 13	12	390	; slot13 = slot12.isShadowMinion
		421	[  0]	ISF  	   		13	; if not <unknown table>.isShadowMinion
		422	[  0]	JMP  	 14		1	; 	goto 424
		423	[  0]	KPRI 	 12		0	; slot12 = nil
		424	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		425	[  0]	TGETS	 13	13	389	; slot13 = uv3"unknown".compute
		426	[  0]	MOV  	 15		0	; slot15 = slot0
		427	[  0]	CALL 	 13	2	2	; slot13 = uv3"unknown".compute(slot14)
		428	[  0]	IST  	   		13	; if uv3"unknown".compute
		429	[  0]	JMP  	 14		1	; 	goto 431
		430	[  0]	UCLO 	  0		7840	; nil uvs >= r0; goto 8271
		431	[  0]	TGETS	 14	13	388	; slot14 = uv3"unknown".compute.slotPanel
		432	[  0]	IST  	   		14	; if uv3"unknown".compute.slotPanel
		433	[  0]	JMP  	 15		1	; 	goto 435
		434	[  0]	UCLO 	  0		7837	; nil uvs >= r0; goto 8272
		435	[  0]	UGET 	 15		4	; slot15 = uv4"unknwon"
		436	[  0]	UGET 	 17		0	; slot17 = uv0"unknwon"
		437	[  0]	CALL 	 15	2	2	; slot15 = uv4"unknown"(slot16)
		438	[  0]	TGETS	 16	14	387	; slot16 = uv3"unknown".compute.slotPanel.w
		439	[  0]	TGETS	 17	13	386	; slot17 = uv3"unknown".compute.left
		440	[  0]	ISF  	   		17	; if not uv3"unknown".compute.left
		441	[  0]	JMP  	 18		4	; 	goto 446
		442	[  0]	TGETS	 17	13	386	; slot17 = uv3"unknown".compute.left
		443	[  0]	TGETS	 17	17	385	; slot17 = uv3"unknown".compute.left.h
		444	[  0]	IST  	   		17	; if uv3"unknown".compute.left.h
		445	[  0]	JMP  	 18		1	; 	goto 447
		446	[  0]	TGETS	 17	14	385	; slot17 = uv3"unknown".compute.slotPanel.h
		447	[  0]	TGETS	 18	14	384	; slot18 = uv3"unknown".compute.slotPanel.x
		448	[  0]	TGETS	 19	13	386	; slot19 = uv3"unknown".compute.left
		449	[  0]	ISF  	   		19	; if not uv3"unknown".compute.left
		450	[  0]	JMP  	 20		4	; 	goto 455
		451	[  0]	TGETS	 19	13	386	; slot19 = uv3"unknown".compute.left
		452	[  0]	TGETS	 19	19	383	; slot19 = uv3"unknown".compute.left.y
		453	[  0]	IST  	   		19	; if uv3"unknown".compute.left.y
		454	[  0]	JMP  	 20		1	; 	goto 456
		455	[  0]	TGETS	 19	14	383	; slot19 = uv3"unknown".compute.slotPanel.y
		456	[  0]	ISF  	   		15	; if not uv4"unknown"
		457	[  0]	JMP  	 20		10	; 	goto 468
		458	[  0]	MOV  	 22		15	; slot22 = uv4"unknown"
		459	[  0]	TGETS	 20	15	382	; slot20 = uv4"unknown".getWidth
		460	[  0]	CALL 	 20	2	2	; slot20 = uv4"unknown".getWidth(slot21)
		461	[  0]	MOV  	 16		20	; slot16 = uv4"unknown".getWidth
		462	[  0]	MOV  	 22		15	; slot22 = uv4"unknown"
		463	[  0]	TGETS	 20	15	381	; slot20 = uv4"unknown".getHeight
		464	[  0]	CALL 	 20	2	2	; slot20 = uv4"unknown".getHeight(slot21)
		465	[  0]	MOV  	 17		20	; slot17 = uv4"unknown".getHeight
		466	[  0]	KSHORT	 18		0	; slot18 = 0
		467	[  0]	KSHORT	 19		0	; slot19 = 0
		468	[  0]	UNM  	 20		16	; slot20 = -uv4"unknown".getWidth
		469	[  0]	GGET 	 21		398	; slot21 = _env["math"]
		470	[  0]	TGETS	 21	21	380	; slot21 = math.floor
		471	[  0]	TGETS	 23	0	379	; slot23 = slot0.scale
		472	[  0]	IST  	   		23	; if <unknown table>.scale
		473	[  0]	JMP  	 24		1	; 	goto 475
		474	[  0]	KSHORT	 23		1	; slot23 = 1
		475	[  0]	MULNV	 23	23	5	; slot23 = 8 * slot23
		476	[  0]	ADDVN	 23	23	6	; slot23 = slot23 + 0.5
		477	[  0]	CALL 	 21	2	2	; slot21 = math.floor(uv4"unknown")
		478	[  0]	SUBVV	 20	20	21	; slot20 = slot20 - math.floor
		479	[  0]	UGET 	 21		1	; slot21 = uv1"unknwon"
		480	[  0]	TGETS	 21	21	384	; slot21 = uv1"unknown".x
		481	[  0]	ISNEP	 21		0	; if uv1"unknown".x ~= nil
		482	[  0]	JMP  	 21		2	; 	goto 485
		483	[  0]	UGET 	 21		1	; slot21 = uv1"unknwon"
		484	[  0]	TSETS	 20	21	384	; uv1"unknown".x = slot20
		485	[  0]	ISF  	   		8	; if not slot8
		486	[  0]	JMP  	 21		2	; 	goto 489
		487	[  0]	ISTC 	 21		18	; slot21 = slot18; if slot18
		488	[  0]	JMP  	 21		1	; 	goto 490
		489	[  0]	MOV  	 21		20	; slot21 = slot20
		490	[  0]	KSHORT	 22		85	; slot22 = 85
		491	[  0]	KSHORT	 23		15	; slot23 = 15
		492	[  0]	KSHORT	 24		2000	; slot24 = 2000
		493	[  0]	UGET 	 25		1	; slot25 = uv1"unknwon"
		494	[  0]	TGETS	 25	25	384	; slot25 = uv1"unknown".x
		495	[  0]	UGET 	 26		1	; slot26 = uv1"unknwon"
		496	[  0]	TGETS	 26	26	378	; slot26 = uv1"unknown".v
		497	[  0]	SUBVV	 27	21	25	; slot27 = slot21 - uv1"unknown".x
		498	[  0]	MULVV	 27	27	22	; slot27 = slot27 * slot22
		499	[  0]	MULVV	 28	23	26	; slot28 = slot23 * uv1"unknown".v
		500	[  0]	SUBVV	 27	27	28	; slot27 = slot27 - slot28
		501	[  0]	MULVV	 28	27	7	; slot28 = slot27 * slot7
		502	[  0]	ADDVV	 26	26	28	; slot26 = uv1"unknown".v + slot28
		503	[  0]	ISF  	   		24	; if not slot24
		504	[  0]	JMP  	 28		11	; 	goto 516
		505	[  0]	KSHORT	 28		0	; slot28 = 0
		506	[  0]	ISGE 	 28		24	; if slot28 >= slot24
		507	[  0]	JMP  	 28		8	; 	goto 516
		508	[  0]	ISGE 	 24		26	; if slot24 >= slot26
		509	[  0]	JMP  	 28		2	; 	goto 512
		510	[  0]	MOV  	 26		24	; slot26 = slot24
		511	[  0]	JMP  	 28		4	; 	goto 516
		512	[  0]	UNM  	 28		24	; slot28 = -slot24
		513	[  0]	ISGE 	 26		28	; if slot26 >= slot28
		514	[  0]	JMP  	 28		1	; 	goto 516
		515	[  0]	UNM  	 26		24	; slot26 = -slot24
		516	[  0]	MULVV	 28	26	7	; slot28 = slot26 * slot7
		517	[  0]	ADDVV	 25	25	28	; slot25 = uv1"unknown".x + slot28
		518	[  0]	KNUM 	 28		6	; slot28 = 0.5
		519	[  0]	GGET 	 29		398	; slot29 = _env["math"]
		520	[  0]	TGETS	 29	29	396	; slot29 = math.abs
		521	[  0]	MOV  	 31		26	; slot31 = slot26
		522	[  0]	CALL 	 29	2	2	; slot29 = math.abs(slot30)
		523	[  0]	KNUM 	 30		7	; slot30 = 0.02
		524	[  0]	ISGE 	 29		30	; if math.abs >= slot30
		525	[  0]	JMP  	 29		8	; 	goto 534
		526	[  0]	GGET 	 29		398	; slot29 = _env["math"]
		527	[  0]	TGETS	 29	29	396	; slot29 = math.abs
		528	[  0]	SUBVV	 31	21	25	; slot31 = slot21 - slot25
		529	[  0]	CALL 	 29	2	2	; slot29 = math.abs(slot30)
		530	[  0]	ISGE 	 29		28	; if math.abs >= slot28
		531	[  0]	JMP  	 29		2	; 	goto 534
		532	[  0]	MOV  	 25		21	; slot25 = slot21
		533	[  0]	KSHORT	 26		0	; slot26 = 0
		534	[  0]	UGET 	 29		1	; slot29 = uv1"unknwon"
		535	[  0]	TSETS	 25	29	384	; uv1"unknown".x = slot25
		536	[  0]	UGET 	 29		1	; slot29 = uv1"unknwon"
		537	[  0]	TSETS	 26	29	378	; uv1"unknown".v = slot26
		538	[  0]	IST  	   		8	; if slot8
		539	[  0]	JMP  	 29		23	; 	goto 563
		540	[  0]	GGET 	 29		398	; slot29 = _env["math"]
		541	[  0]	TGETS	 29	29	396	; slot29 = math.abs
		542	[  0]	SUBVV	 31	25	20	; slot31 = slot25 - slot20
		543	[  0]	CALL 	 29	2	2	; slot29 = math.abs(slot30)
		544	[  0]	KSHORT	 30		1	; slot30 = 1
		545	[  0]	ISGE 	 29		30	; if math.abs >= slot30
		546	[  0]	JMP  	 29		16	; 	goto 563
		547	[  0]	UGET 	 29		0	; slot29 = uv0"unknwon"
		548	[  0]	KPRI 	 30		0	; slot30 = nil
		549	[  0]	TSETS	 30	29	377	; uv0"unknown"._panelRect = slot30
		550	[  0]	UGET 	 29		1	; slot29 = uv1"unknwon"
		551	[  0]	KPRI 	 30		0	; slot30 = nil
		552	[  0]	TSETS	 30	29	392	; uv1"unknown".lastUnit = slot30
		553	[  0]	UGET 	 29		1	; slot29 = uv1"unknwon"
		554	[  0]	KSHORT	 30		0	; slot30 = 0
		555	[  0]	TSETS	 30	29	420	; uv1"unknown".holdTimer = slot30
		556	[  0]	UGET 	 29		1	; slot29 = uv1"unknwon"
		557	[  0]	KSHORT	 30		0	; slot30 = 0
		558	[  0]	TSETS	 30	29	419	; uv1"unknown".blinkTimer = slot30
		559	[  0]	UGET 	 29		1	; slot29 = uv1"unknwon"
		560	[  0]	KPRI 	 30		0	; slot30 = nil
		561	[  0]	TSETS	 30	29	417	; uv1"unknown".blinkSlot = slot30
		562	[  0]	UCLO 	  0		7710	; nil uvs >= r0; goto 8273
		563	[  0]	IST  	   		11	; if uv1"unknown".lastUnit
		564	[  0]	JMP  	 29		4	; 	goto 569
		565	[  0]	UGET 	 29		0	; slot29 = uv0"unknwon"
		566	[  0]	KPRI 	 30		0	; slot30 = nil
		567	[  0]	TSETS	 30	29	377	; uv0"unknown"._panelRect = slot30
		568	[  0]	UCLO 	  0		7705	; nil uvs >= r0; goto 8274
		569	[  0]	TGETS	 29	0	379	; slot29 = slot0.scale
		570	[  0]	IST  	   		29	; if <unknown table>.scale
		571	[  0]	JMP  	 30		1	; 	goto 573
		572	[  0]	KSHORT	 29		1	; slot29 = 1
		573	[  0]	MOV  	 30		17	; slot30 = uv4"unknown".getHeight
		574	[  0]	MOV  	 31		16	; slot31 = uv4"unknown".getWidth
		575	[  0]	UGET 	 32		5	; slot32 = uv5"unknwon"
		576	[  0]	UGET 	 34		1	; slot34 = uv1"unknwon"
		577	[  0]	TGETS	 34	34	384	; slot34 = uv1"unknown".x
		578	[  0]	CALL 	 32	2	2	; slot32 = uv5"unknown"(slot33)
		579	[  0]	UGET 	 33		5	; slot33 = uv5"unknwon"
		580	[  0]	MOV  	 35		19	; slot35 = slot19
		581	[  0]	CALL 	 33	2	2	; slot33 = uv5"unknown"(uv1"unknown".x)
		582	[  0]	UGET 	 34		0	; slot34 = uv0"unknwon"
		583	[  0]	TGETS	 34	34	376	; slot34 = uv0"unknown"._bgVisibleBounds
		584	[  0]	ISF  	   		34	; if not uv0"unknown"._bgVisibleBounds
		585	[  0]	JMP  	 35		15	; 	goto 601
		586	[  0]	UGET 	 35		0	; slot35 = uv0"unknwon"
		587	[  0]	TDUP 	 36		375	; slot36 = copy table#k375
		588	[  0]	TGETS	 37	34	384	; slot37 = uv0"unknown"._bgVisibleBounds.x
		589	[  0]	ADDVV	 37	32	37	; slot37 = uv5"unknown" + uv0"unknown"._bgVisibleBounds.x
		590	[  0]	TSETS	 37	36	384	; slot36.x = slot37
		591	[  0]	TGETS	 37	34	383	; slot37 = uv0"unknown"._bgVisibleBounds.y
		592	[  0]	ADDVV	 37	33	37	; slot37 = uv5"unknown" + uv0"unknown"._bgVisibleBounds.y
		593	[  0]	TSETS	 37	36	383	; slot36.y = slot37
		594	[  0]	TGETS	 37	34	387	; slot37 = uv0"unknown"._bgVisibleBounds.w
		595	[  0]	TSETS	 37	36	387	; slot36.w = uv0"unknown"._bgVisibleBounds.w
		596	[  0]	TGETS	 37	34	385	; slot37 = uv0"unknown"._bgVisibleBounds.h
		597	[  0]	TSETS	 37	36	385	; slot36.h = uv0"unknown"._bgVisibleBounds.h
		598	[  0]	TSETS	  6	36	374	; slot36.drawnAt = slot6
		599	[  0]	TSETS	 36	35	377	; uv0"unknown"._panelRect = slot36
		600	[  0]	JMP  	 35		8	; 	goto 609
		601	[  0]	UGET 	 35		0	; slot35 = uv0"unknwon"
		602	[  0]	TDUP 	 36		373	; slot36 = copy table#k373
		603	[  0]	TSETS	 32	36	384	; slot36.x = uv5"unknown"
		604	[  0]	TSETS	 33	36	383	; slot36.y = uv5"unknown"
		605	[  0]	TSETS	 31	36	387	; slot36.w = uv4"unknown".getWidth
		606	[  0]	TSETS	 30	36	385	; slot36.h = uv4"unknown".getHeight
		607	[  0]	TSETS	  6	36	374	; slot36.drawnAt = slot6
		608	[  0]	TSETS	 36	35	377	; uv0"unknown"._panelRect = slot36
		609	[  0]	UGET 	 35		0	; slot35 = uv0"unknwon"
		610	[  0]	UGET 	 36		0	; slot36 = uv0"unknwon"
		611	[  0]	TGETS	 36	36	372	; slot36 = uv0"unknown"._modalHit
		612	[  0]	IST  	   		36	; if uv0"unknown"._modalHit
		613	[  0]	JMP  	 37		1	; 	goto 615
		614	[  0]	TDUP 	 36		371	; slot36 = copy table#k371
		615	[  0]	TSETS	 36	35	372	; uv0"unknown"._modalHit = slot36
		616	[  0]	UGET 	 35		0	; slot35 = uv0"unknwon"
		617	[  0]	TGETS	 35	35	372	; slot35 = uv0"unknown"._modalHit
		618	[  0]	KPRI 	 36		1	; slot36 = false
		619	[  0]	TSETS	 36	35	412	; uv0"unknown"._modalHit.active = slot36
		620	[  0]	UGET 	 35		0	; slot35 = uv0"unknwon"
		621	[  0]	TGETS	 35	35	372	; slot35 = uv0"unknown"._modalHit
		622	[  0]	TNEW 	 36		0	; slot36 = new table( array: 0, dict: 1)
		623	[  0]	TSETS	 36	35	370	; uv0"unknown"._modalHit.buttons = slot36
		624	[  0]	UGET 	 35		0	; slot35 = uv0"unknwon"
		625	[  0]	TGETS	 35	35	372	; slot35 = uv0"unknown"._modalHit
		626	[  0]	TNEW 	 36		0	; slot36 = new table( array: 0, dict: 1)
		627	[  0]	TSETS	 36	35	369	; uv0"unknown"._modalHit.arrows = slot36
		628	[  0]	KSHORT	 35		1	; slot35 = 1
		629	[  0]	TGETS	 36	0	368	; slot36 = slot0.imprintPanel
		630	[  0]	ISF  	   		36	; if not <unknown table>.imprintPanel
		631	[  0]	JMP  	 37		2	; 	goto 634
		632	[  0]	TGETS	 36	0	368	; slot36 = slot0.imprintPanel
		633	[  0]	TGETS	 36	36	367	; slot36 = <unknown table>.imprintPanel.skillFrame
		634	[  0]	ISF  	   		36	; if not <unknown table>.imprintPanel.skillFrame
		635	[  0]	JMP  	 37		445	; 	goto 1081
		636	[  0]	TGETS	 37	36	366	; slot37 = <unknown table>.imprintPanel.skillFrame.enabled
		637	[  0]	ISEQP	 37		1	; if <unknown table>.imprintPanel.skillFrame.enabled == false
		638	[  0]	JMP  	 37		442	; 	goto 1081
		639	[  0]	UGET 	 37		6	; slot37 = uv6"unknwon"
		640	[  0]	ISFC 	 38		37	; slot38 = uv6"unknown"; if not uv6"unknown"
		641	[  0]	JMP  	 38		5	; 	goto 647
		642	[  0]	TGETS	 38	37	365	; slot38 = uv6"unknown".ui
		643	[  0]	ISF  	   		38	; if not uv6"unknown".ui
		644	[  0]	JMP  	 39		2	; 	goto 647
		645	[  0]	TGETS	 38	37	365	; slot38 = uv6"unknown".ui
		646	[  0]	TGETS	 38	38	364	; slot38 = uv6"unknown".ui.classCardSkillFrame
		647	[  0]	GGET 	 39		363	; slot39 = _env["require"]
		648	[  0]	KSTR 	 41		362	; slot41 = "src.ui.effects"
		649	[  0]	CALL 	 39	2	2	; slot39 = require(slot40)
		650	[  0]	TGETS	 39	39	361	; slot39 = require.grade_filter
		651	[  0]	TGETS	 39	39	360	; slot39 = require.grade_filter.isPrism
		652	[  0]	MOV  	 41		11	; slot41 = uv1"unknown".lastUnit
		653	[  0]	CALL 	 39	2	2	; slot39 = require.grade_filter.isPrism(slot40)
		654	[  0]	ISF  	   		39	; if not require.grade_filter.isPrism
		655	[  0]	JMP  	 40		12	; 	goto 668
		656	[  0]	ISF  	   		37	; if not uv6"unknown"
		657	[  0]	JMP  	 39		10	; 	goto 668
		658	[  0]	TGETS	 39	37	365	; slot39 = uv6"unknown".ui
		659	[  0]	ISF  	   		39	; if not uv6"unknown".ui
		660	[  0]	JMP  	 40		7	; 	goto 668
		661	[  0]	TGETS	 39	37	365	; slot39 = uv6"unknown".ui
		662	[  0]	TGETS	 39	39	359	; slot39 = uv6"unknown".ui.classCardSkillFramePrism
		663	[  0]	ISF  	   		39	; if not uv6"unknown".ui.classCardSkillFramePrism
		664	[  0]	JMP  	 40		3	; 	goto 668
		665	[  0]	TGETS	 39	37	365	; slot39 = uv6"unknown".ui
		666	[  0]	TGETS	 38	39	359	; slot38 = uv6"unknown".ui.classCardSkillFramePrism
		667	[  0]	JMP  	 39		59	; 	goto 727
		668	[  0]	TGETS	 39	11	358	; slot39 = uv1"unknown".lastUnit.grade
		669	[  0]	ISNES	 39		357	; if uv1"unknown".lastUnit.grade ~= "legendary"
		670	[  0]	JMP  	 39		12	; 	goto 683
		671	[  0]	ISF  	   		37	; if not uv6"unknown"
		672	[  0]	JMP  	 39		10	; 	goto 683
		673	[  0]	TGETS	 39	37	365	; slot39 = uv6"unknown".ui
		674	[  0]	ISF  	   		39	; if not uv6"unknown".ui
		675	[  0]	JMP  	 40		7	; 	goto 683
		676	[  0]	TGETS	 39	37	365	; slot39 = uv6"unknown".ui
		677	[  0]	TGETS	 39	39	356	; slot39 = uv6"unknown".ui.classCardSkillFrameLegendary
		678	[  0]	ISF  	   		39	; if not uv6"unknown".ui.classCardSkillFrameLegendary
		679	[  0]	JMP  	 40		3	; 	goto 683
		680	[  0]	TGETS	 39	37	365	; slot39 = uv6"unknown".ui
		681	[  0]	TGETS	 38	39	356	; slot38 = uv6"unknown".ui.classCardSkillFrameLegendary
		682	[  0]	JMP  	 39		44	; 	goto 727
		683	[  0]	TGETS	 39	11	358	; slot39 = uv1"unknown".lastUnit.grade
		684	[  0]	ISNES	 39		355	; if uv1"unknown".lastUnit.grade ~= "rare"
		685	[  0]	JMP  	 39		12	; 	goto 698
		686	[  0]	ISF  	   		37	; if not uv6"unknown"
		687	[  0]	JMP  	 39		10	; 	goto 698
		688	[  0]	TGETS	 39	37	365	; slot39 = uv6"unknown".ui
		689	[  0]	ISF  	   		39	; if not uv6"unknown".ui
		690	[  0]	JMP  	 40		7	; 	goto 698
		691	[  0]	TGETS	 39	37	365	; slot39 = uv6"unknown".ui
		692	[  0]	TGETS	 39	39	354	; slot39 = uv6"unknown".ui.classCardSkillFrameRare
		693	[  0]	ISF  	   		39	; if not uv6"unknown".ui.classCardSkillFrameRare
		694	[  0]	JMP  	 40		3	; 	goto 698
		695	[  0]	TGETS	 39	37	365	; slot39 = uv6"unknown".ui
		696	[  0]	TGETS	 38	39	354	; slot38 = uv6"unknown".ui.classCardSkillFrameRare
		697	[  0]	JMP  	 39		29	; 	goto 727
		698	[  0]	TGETS	 39	11	358	; slot39 = uv1"unknown".lastUnit.grade
		699	[  0]	ISNES	 39		353	; if uv1"unknown".lastUnit.grade ~= "special"
		700	[  0]	JMP  	 39		12	; 	goto 713
		701	[  0]	ISF  	   		37	; if not uv6"unknown"
		702	[  0]	JMP  	 39		10	; 	goto 713
		703	[  0]	TGETS	 39	37	365	; slot39 = uv6"unknown".ui
		704	[  0]	ISF  	   		39	; if not uv6"unknown".ui
		705	[  0]	JMP  	 40		7	; 	goto 713
		706	[  0]	TGETS	 39	37	365	; slot39 = uv6"unknown".ui
		707	[  0]	TGETS	 39	39	352	; slot39 = uv6"unknown".ui.classCardSkillFrameSpecial
		708	[  0]	ISF  	   		39	; if not uv6"unknown".ui.classCardSkillFrameSpecial
		709	[  0]	JMP  	 40		3	; 	goto 713
		710	[  0]	TGETS	 39	37	365	; slot39 = uv6"unknown".ui
		711	[  0]	TGETS	 38	39	352	; slot38 = uv6"unknown".ui.classCardSkillFrameSpecial
		712	[  0]	JMP  	 39		14	; 	goto 727
		713	[  0]	TGETS	 39	11	358	; slot39 = uv1"unknown".lastUnit.grade
		714	[  0]	ISNES	 39		351	; if uv1"unknown".lastUnit.grade ~= "advanced"
		715	[  0]	JMP  	 39		11	; 	goto 727
		716	[  0]	ISF  	   		37	; if not uv6"unknown"
		717	[  0]	JMP  	 39		9	; 	goto 727
		718	[  0]	TGETS	 39	37	365	; slot39 = uv6"unknown".ui
		719	[  0]	ISF  	   		39	; if not uv6"unknown".ui
		720	[  0]	JMP  	 40		6	; 	goto 727
		721	[  0]	TGETS	 39	37	365	; slot39 = uv6"unknown".ui
		722	[  0]	TGETS	 39	39	350	; slot39 = uv6"unknown".ui.classCardSkillFrameAdvanced
		723	[  0]	ISF  	   		39	; if not uv6"unknown".ui.classCardSkillFrameAdvanced
		724	[  0]	JMP  	 40		2	; 	goto 727
		725	[  0]	TGETS	 39	37	365	; slot39 = uv6"unknown".ui
		726	[  0]	TGETS	 38	39	350	; slot38 = uv6"unknown".ui.classCardSkillFrameAdvanced
		727	[  0]	ISFC 	 39		37	; slot39 = uv6"unknown"; if not uv6"unknown"
		728	[  0]	JMP  	 39		5	; 	goto 734
		729	[  0]	TGETS	 39	37	365	; slot39 = uv6"unknown".ui
		730	[  0]	ISF  	   		39	; if not uv6"unknown".ui
		731	[  0]	JMP  	 40		2	; 	goto 734
		732	[  0]	TGETS	 39	37	365	; slot39 = uv6"unknown".ui
		733	[  0]	TGETS	 39	39	349	; slot39 = uv6"unknown".ui.classCardSkillFrameShadow
		734	[  0]	ISF  	   		38	; if not uv6"unknown".ui.classCardSkillFrameAdvanced
		735	[  0]	JMP  	 40		345	; 	goto 1081
		736	[  0]	UGET 	 40		7	; slot40 = uv7"unknwon"
		737	[  0]	TGETS	 40	40	348	; slot40 = uv7"unknown".getSkillsForUnit
		738	[  0]	MOV  	 42		11	; slot42 = uv1"unknown".lastUnit
		739	[  0]	CALL 	 40	2	2	; slot40 = uv7"unknown".getSkillsForUnit(uv1"unknown".lastUnit)
		740	[  0]	ISFC 	 41		40	; slot41 = uv7"unknown".getSkillsForUnit; if not uv7"unknown".getSkillsForUnit
		741	[  0]	JMP  	 41		1	; 	goto 743
		742	[  0]	TGETB	 41	40	1	; slot41 = uv7"unknown".getSkillsForUnit[1]
		743	[  0]	KPRI 	 42		0	; slot42 = nil
		744	[  0]	ISF  	   		41	; if not slot41
		745	[  0]	JMP  	 43		48	; 	goto 794
		746	[  0]	TGETS	 43	41	347	; slot43 = slot41.icon
		747	[  0]	ISF  	   		43	; if not <unknown table>.icon
		748	[  0]	JMP  	 44		45	; 	goto 794
		749	[  0]	TGETS	 43	41	347	; slot43 = slot41.icon
		750	[  0]	ISEQS	 43		346	; if <unknown table>.icon == ""
		751	[  0]	JMP  	 43		42	; 	goto 794
		752	[  0]	UGET 	 43		0	; slot43 = uv0"unknwon"
		753	[  0]	TGETS	 43	43	345	; slot43 = uv0"unknown"._imprintSkillIconCache
		754	[  0]	IST  	   		43	; if uv0"unknown"._imprintSkillIconCache
		755	[  0]	JMP  	 43		3	; 	goto 759
		756	[  0]	UGET 	 43		0	; slot43 = uv0"unknwon"
		757	[  0]	TNEW 	 44		0	; slot44 = new table( array: 0, dict: 1)
		758	[  0]	TSETS	 44	43	345	; uv0"unknown"._imprintSkillIconCache = slot44
		759	[  0]	TGETS	 43	41	347	; slot43 = slot41.icon
		760	[  0]	UGET 	 44		0	; slot44 = uv0"unknwon"
		761	[  0]	TGETS	 44	44	345	; slot44 = uv0"unknown"._imprintSkillIconCache
		762	[  0]	TGETV	 44	44	43	; slot44 = uv0"unknown"._imprintSkillIconCache[<unknown table>.icon]
		763	[  0]	ISNEP	 44		0	; if slot44 ~= nil
		764	[  0]	JMP  	 44		23	; 	goto 788
		765	[  0]	GGET 	 44		344	; slot44 = _env["pcall"]
		766	[  0]	GGET 	 46		424	; slot46 = _env["love"]
		767	[  0]	TGETS	 46	46	343	; slot46 = love.graphics
		768	[  0]	TGETS	 46	46	342	; slot46 = love.graphics.newImage
		769	[  0]	MOV  	 47		43	; slot47 = <unknown table>.icon
		770	[  0]	CALL 	 44	3	3	; slot44, slot45 = pcall(slot45, love.graphics.newImage)
		771	[  0]	ISF  	   		44	; if not pcall
		772	[  0]	JMP  	 46		11	; 	goto 784
		773	[  0]	ISF  	   		45	; if not slot45
		774	[  0]	JMP  	 46		9	; 	goto 784
		775	[  0]	MOV  	 48		45	; slot48 = slot45
		776	[  0]	TGETS	 46	45	341	; slot46 = slot45.setFilter
		777	[  0]	KSTR 	 49		340	; slot49 = "nearest"
		778	[  0]	KSTR 	 50		340	; slot50 = "nearest"
		779	[  0]	CALL 	 46	1	4	;  = <unknown table>.setFilter(<unknown table>.icon, slot48, slot49)
		780	[  0]	UGET 	 46		0	; slot46 = uv0"unknwon"
		781	[  0]	TGETS	 46	46	345	; slot46 = uv0"unknown"._imprintSkillIconCache
		782	[  0]	TSETV	 45	46	43	; uv0"unknown"._imprintSkillIconCache[<unknown table>.icon] = slot45
		783	[  0]	JMP  	 46		4	; 	goto 788
		784	[  0]	UGET 	 46		0	; slot46 = uv0"unknwon"
		785	[  0]	TGETS	 46	46	345	; slot46 = uv0"unknown"._imprintSkillIconCache
		786	[  0]	KPRI 	 47		1	; slot47 = false
		787	[  0]	TSETV	 47	46	43	; uv0"unknown"._imprintSkillIconCache[<unknown table>.icon] = slot47
		788	[  0]	UGET 	 44		0	; slot44 = uv0"unknwon"
		789	[  0]	TGETS	 44	44	345	; slot44 = uv0"unknown"._imprintSkillIconCache
		790	[  0]	TGETV	 44	44	43	; slot44 = uv0"unknown"._imprintSkillIconCache[<unknown table>.icon]
		791	[  0]	ISTC 	 42		44	; slot42 = slot44; if slot44
		792	[  0]	JMP  	 45		1	; 	goto 794
		793	[  0]	KPRI 	 42		0	; slot42 = nil
		794	[  0]	TGETS	 43	36	379	; slot43 = <unknown table>.imprintPanel.skillFrame.scale
		795	[  0]	IST  	   		43	; if <unknown table>.imprintPanel.skillFrame.scale
		796	[  0]	JMP  	 44		1	; 	goto 798
		797	[  0]	KSHORT	 43		1	; slot43 = 1
		798	[  0]	MOV  	 46		38	; slot46 = uv6"unknown".ui.classCardSkillFrameAdvanced
		799	[  0]	TGETS	 44	38	339	; slot44 = uv6"unknown".ui.classCardSkillFrameAdvanced.getDimensions
		800	[  0]	CALL 	 44	3	2	; slot44, slot45 = uv6"unknown".ui.classCardSkillFrameAdvanced.getDimensions(slot45)
		801	[  0]	MULVV	 46	44	43	; slot46 = uv6"unknown".ui.classCardSkillFrameAdvanced.getDimensions * slot43
		802	[  0]	MULVV	 47	45	43	; slot47 = slot45 * slot43
		803	[  0]	ADDVV	 48	32	31	; slot48 = uv5"unknown" + uv4"unknown".getWidth
		804	[  0]	SUBVV	 48	48	46	; slot48 = slot48 - slot46
		805	[  0]	GGET 	 49		398	; slot49 = _env["math"]
		806	[  0]	TGETS	 49	49	380	; slot49 = math.floor
		807	[  0]	TGETS	 51	36	338	; slot51 = <unknown table>.imprintPanel.skillFrame.rightInsetPx
		808	[  0]	IST  	   		51	; if <unknown table>.imprintPanel.skillFrame.rightInsetPx
		809	[  0]	JMP  	 52		1	; 	goto 811
		810	[  0]	KSHORT	 51		65520	; slot51 = 65520
		811	[  0]	ADDVN	 51	51	6	; slot51 = slot51 + 0.5
		812	[  0]	CALL 	 49	2	2	; slot49 = math.floor(slot50)
		813	[  0]	SUBVV	 48	48	49	; slot48 = slot48 - math.floor
		814	[  0]	GGET 	 49		398	; slot49 = _env["math"]
		815	[  0]	TGETS	 49	49	380	; slot49 = math.floor
		816	[  0]	TGETS	 51	36	337	; slot51 = <unknown table>.imprintPanel.skillFrame.offsetX
		817	[  0]	IST  	   		51	; if <unknown table>.imprintPanel.skillFrame.offsetX
		818	[  0]	JMP  	 52		1	; 	goto 820
		819	[  0]	KSHORT	 51		0	; slot51 = 0
		820	[  0]	ADDVN	 51	51	6	; slot51 = slot51 + 0.5
		821	[  0]	CALL 	 49	2	2	; slot49 = math.floor(slot50)
		822	[  0]	ADDVV	 48	48	49	; slot48 = slot48 + math.floor
		823	[  0]	GGET 	 49		398	; slot49 = _env["math"]
		824	[  0]	TGETS	 49	49	380	; slot49 = math.floor
		825	[  0]	TGETS	 51	36	336	; slot51 = <unknown table>.imprintPanel.skillFrame.topOffsetPx
		826	[  0]	IST  	   		51	; if <unknown table>.imprintPanel.skillFrame.topOffsetPx
		827	[  0]	JMP  	 52		1	; 	goto 829
		828	[  0]	KSHORT	 51		80	; slot51 = 80
		829	[  0]	ADDVN	 51	51	6	; slot51 = slot51 + 0.5
		830	[  0]	CALL 	 49	2	2	; slot49 = math.floor(slot50)
		831	[  0]	ADDVV	 49	33	49	; slot49 = uv5"unknown" + math.floor
		832	[  0]	GGET 	 50		398	; slot50 = _env["math"]
		833	[  0]	TGETS	 50	50	380	; slot50 = math.floor
		834	[  0]	TGETS	 52	36	335	; slot52 = <unknown table>.imprintPanel.skillFrame.offsetY
		835	[  0]	IST  	   		52	; if <unknown table>.imprintPanel.skillFrame.offsetY
		836	[  0]	JMP  	 53		1	; 	goto 838
		837	[  0]	KSHORT	 52		0	; slot52 = 0
		838	[  0]	ADDVN	 52	52	6	; slot52 = slot52 + 0.5
		839	[  0]	CALL 	 50	2	2	; slot50 = math.floor(slot51)
		840	[  0]	ADDVV	 49	49	50	; slot49 = slot49 + math.floor
		841	[  0]	UGET 	 50		0	; slot50 = uv0"unknwon"
		842	[  0]	GGET 	 51		363	; slot51 = _env["require"]
		843	[  0]	KSTR 	 53		334	; slot53 = "src.ui.flow"
		844	[  0]	CALL 	 51	2	2	; slot51 = require(slot52)
		845	[  0]	TGETS	 51	51	333	; slot51 = require.awakening
		846	[  0]	TGETS	 51	51	332	; slot51 = require.awakening.drawRunes
		847	[  0]	MOV  	 53		0	; slot53 = slot0
		848	[  0]	MOV  	 54		11	; slot54 = uv1"unknown".lastUnit
		849	[  0]	UGET 	 55		0	; slot55 = uv0"unknwon"
		850	[  0]	TGETS	 55	55	377	; slot55 = uv0"unknown"._panelRect
		851	[  0]	MOV  	 56		48	; slot56 = slot48
		852	[  0]	MOV  	 57		49	; slot57 = slot49
		853	[  0]	MOV  	 58		3	; slot58 = slot3
		854	[  0]	MOV  	 59		4	; slot59 = slot4
		855	[  0]	MOV  	 60		7	; slot60 = slot7
		856	[  0]	ISFC 	 61		2	; slot61 = slot2; if not slot2
		857	[  0]	JMP  	 61		1	; 	goto 859
		858	[  0]	TGETS	 61	2	331	; slot61 = slot2.battlefield
		859	[  0]	CALL 	 51	2	10	; slot51 = require.awakening.drawRunes(slot52, slot53, uv1"unknown".lastUnit, uv0"unknown"._panelRect, slot56, slot57, slot58, slot59, slot60)
		860	[  0]	TSETS	 51	50	429	; uv0"unknown"._awakeningRuneRect = require.awakening.drawRunes
		861	[  0]	ISF  	   		41	; if not slot41
		862	[  0]	JMP  	 50		218	; 	goto 1081
		863	[  0]	GGET 	 50		398	; slot50 = _env["math"]
		864	[  0]	TGETS	 50	50	380	; slot50 = math.floor
		865	[  0]	TGETS	 52	36	330	; slot52 = <unknown table>.imprintPanel.skillFrame.iconInsetPx
		866	[  0]	IST  	   		52	; if <unknown table>.imprintPanel.skillFrame.iconInsetPx
		867	[  0]	JMP  	 53		1	; 	goto 869
		868	[  0]	KSHORT	 52		4	; slot52 = 4
		869	[  0]	ADDVN	 52	52	6	; slot52 = slot52 + 0.5
		870	[  0]	CALL 	 50	2	2	; slot50 = math.floor(require.awakening.drawRunes)
		871	[  0]	UGET 	 51		0	; slot51 = uv0"unknwon"
		872	[  0]	TDUP 	 52		329	; slot52 = copy table#k329
		873	[  0]	TSETS	 48	52	384	; slot52.x = slot48
		874	[  0]	TSETS	 49	52	383	; slot52.y = slot49
		875	[  0]	TSETS	 46	52	387	; slot52.w = slot46
		876	[  0]	TSETS	 47	52	385	; slot52.h = slot47
		877	[  0]	GGET 	 53		424	; slot53 = _env["love"]
		878	[  0]	TGETS	 53	53	423	; slot53 = love.timer
		879	[  0]	ISF  	   		53	; if not love.timer
		880	[  0]	JMP  	 54		11	; 	goto 892
		881	[  0]	GGET 	 53		424	; slot53 = _env["love"]
		882	[  0]	TGETS	 53	53	423	; slot53 = love.timer
		883	[  0]	TGETS	 53	53	422	; slot53 = love.timer.getTime
		884	[  0]	ISF  	   		53	; if not love.timer.getTime
		885	[  0]	JMP  	 54		6	; 	goto 892
		886	[  0]	GGET 	 53		424	; slot53 = _env["love"]
		887	[  0]	TGETS	 53	53	423	; slot53 = love.timer
		888	[  0]	TGETS	 53	53	422	; slot53 = love.timer.getTime
		889	[  0]	CALL 	 53	2	1	; slot53 = love.timer.getTime()
		890	[  0]	IST  	   		53	; if love.timer.getTime
		891	[  0]	JMP  	 54		1	; 	goto 893
		892	[  0]	KSHORT	 53		0	; slot53 = 0
		893	[  0]	TSETS	 53	52	374	; slot52.drawnAt = slot53
		894	[  0]	TSETS	 52	51	430	; uv0"unknown"._skillFrameRect = slot52
		895	[  0]	ISGT 	 48		3	; if slot48 > slot3
		896	[  0]	JMP  	 51		8	; 	goto 905
		897	[  0]	ADDVV	 51	48	46	; slot51 = slot48 + slot46
		898	[  0]	ISGT 	  3		51	; if slot3 > slot51
		899	[  0]	JMP  	 51		5	; 	goto 905
		900	[  0]	ISGT 	 49		4	; if slot49 > slot4
		901	[  0]	JMP  	 51		3	; 	goto 905
		902	[  0]	ADDVV	 51	49	47	; slot51 = slot49 + slot47
		903	[  0]	ISLE 	  4		51	; if slot4 <= slot51
		904	[  0]	JMP  	 51		2	; 	goto 907
		905	[  0]	KPRI 	 51		1	; slot51 = false
		906	[  0]	JMP  	 52		1	; 	goto 908
		907	[  0]	KPRI 	 51		2	; slot51 = true
		908	[  0]	UGET 	 52		0	; slot52 = uv0"unknwon"
		909	[  0]	TGETS	 52	52	328	; slot52 = uv0"unknown"._skillHoverProg
		910	[  0]	ISNEP	 52		0	; if uv0"unknown"._skillHoverProg ~= nil
		911	[  0]	JMP  	 52		3	; 	goto 915
		912	[  0]	UGET 	 52		0	; slot52 = uv0"unknwon"
		913	[  0]	KSHORT	 53		0	; slot53 = 0
		914	[  0]	TSETS	 53	52	328	; uv0"unknown"._skillHoverProg = slot53
		915	[  0]	ISF  	   		51	; if not slot51
		916	[  0]	JMP  	 52		2	; 	goto 919
		917	[  0]	KSHORT	 52		1	; slot52 = 1
		918	[  0]	JMP  	 53		1	; 	goto 920
		919	[  0]	KSHORT	 52		0	; slot52 = 0
		920	[  0]	GGET 	 53		363	; slot53 = _env["require"]
		921	[  0]	KSTR 	 55		327	; slot55 = "src.ui.widgets"
		922	[  0]	CALL 	 53	2	2	; slot53 = require(uv1"unknown".lastUnit)
		923	[  0]	TGETS	 53	53	326	; slot53 = require.panel_hover_motion
		924	[  0]	UGET 	 54		0	; slot54 = uv0"unknwon"
		925	[  0]	TGETS	 55	53	325	; slot55 = require.panel_hover_motion.step
		926	[  0]	UGET 	 57		0	; slot57 = uv0"unknwon"
		927	[  0]	TGETS	 57	57	328	; slot57 = uv0"unknown"._skillHoverProg
		928	[  0]	MOV  	 58		52	; slot58 = slot52
		929	[  0]	MOV  	 59		7	; slot59 = slot7
		930	[  0]	MOV  	 60		36	; slot60 = <unknown table>.imprintPanel.skillFrame
		931	[  0]	CALL 	 55	2	5	; slot55 = require.panel_hover_motion.step(slot56, uv0"unknown"._skillHoverProg, slot58, slot59)
		932	[  0]	TSETS	 55	54	328	; uv0"unknown"._skillHoverProg = require.panel_hover_motion.step
		933	[  0]	TGETS	 54	53	324	; slot54 = require.panel_hover_motion.shift
		934	[  0]	UGET 	 56		0	; slot56 = uv0"unknwon"
		935	[  0]	TGETS	 56	56	328	; slot56 = uv0"unknown"._skillHoverProg
		936	[  0]	MOV  	 57		36	; slot57 = <unknown table>.imprintPanel.skillFrame
		937	[  0]	CALL 	 54	2	3	; slot54 = require.panel_hover_motion.shift(require.panel_hover_motion.step, uv0"unknown"._skillHoverProg)
		938	[  0]	SUBVV	 55	48	54	; slot55 = slot48 - require.panel_hover_motion.shift
		939	[  0]	ISF  	   		51	; if not slot51
		940	[  0]	JMP  	 56		22	; 	goto 963
		941	[  0]	UGET 	 56		0	; slot56 = uv0"unknwon"
		942	[  0]	TDUP 	 57		316	; slot57 = copy table#k316
		943	[  0]	TDUP 	 58		322	; slot58 = copy table#k322
		944	[  0]	TGETS	 59	41	323	; slot59 = slot41.id
		945	[  0]	TSETS	 59	58	323	; slot58.id = <unknown table>.id
		946	[  0]	TGETS	 59	41	321	; slot59 = slot41.name
		947	[  0]	TSETS	 59	58	321	; slot58.name = <unknown table>.name
		948	[  0]	TGETS	 59	41	320	; slot59 = slot41.description
		949	[  0]	TSETS	 59	58	319	; slot58.desc = <unknown table>.description
		950	[  0]	TGETS	 59	41	318	; slot59 = slot41.cooldownLabel
		951	[  0]	IST  	   		59	; if <unknown table>.cooldownLabel
		952	[  0]	JMP  	 60		1	; 	goto 954
		953	[  0]	TGETS	 59	41	317	; slot59 = slot41.cooldown
		954	[  0]	TSETS	 59	58	317	; slot58.cooldown = <unknown table>.cooldown
		955	[  0]	TSETS	 58	57	315	; slot57.skill = slot58
		956	[  0]	TDUP 	 58		314	; slot58 = copy table#k314
		957	[  0]	TSETS	 48	58	384	; slot58.x = slot48
		958	[  0]	TSETS	 49	58	383	; slot58.y = slot49
		959	[  0]	TSETS	 46	58	387	; slot58.w = slot46
		960	[  0]	TSETS	 47	58	385	; slot58.h = slot47
		961	[  0]	TSETS	 58	57	440	; slot57.anchor = slot58
		962	[  0]	TSETS	 57	56	431	; uv0"unknown"._hoveredSkill = slot57
		963	[  0]	ISF  	   		42	; if not slot42
		964	[  0]	JMP  	 56		70	; 	goto 1035
		965	[  0]	MOV  	 58		42	; slot58 = slot42
		966	[  0]	TGETS	 56	42	339	; slot56 = slot42.getDimensions
		967	[  0]	CALL 	 56	3	2	; slot56, slot57 = <unknown table>.getDimensions(slot57)
		968	[  0]	GGET 	 58		398	; slot58 = _env["math"]
		969	[  0]	TGETS	 58	58	313	; slot58 = math.max
		970	[  0]	KSHORT	 60		1	; slot60 = 1
		971	[  0]	MULVN	 61	50	8	; slot61 = math.floor * 2
		972	[  0]	SUBVV	 61	46	61	; slot61 = slot46 - slot61
		973	[  0]	CALL 	 58	2	3	; slot58 = math.max(<unknown table>.cooldown, slot60)
		974	[  0]	GGET 	 59		398	; slot59 = _env["math"]
		975	[  0]	TGETS	 59	59	313	; slot59 = math.max
		976	[  0]	KSHORT	 61		1	; slot61 = 1
		977	[  0]	MULVN	 62	50	8	; slot62 = math.floor * 2
		978	[  0]	SUBVV	 62	47	62	; slot62 = slot47 - slot62
		979	[  0]	CALL 	 59	2	3	; slot59 = math.max(slot60, slot61)
		980	[  0]	KSHORT	 60		1	; slot60 = 1
		981	[  0]	MULVV	 61	56	60	; slot61 = <unknown table>.getDimensions * slot60
		982	[  0]	MULVV	 62	57	60	; slot62 = slot57 * slot60
		983	[  0]	ADDVV	 63	55	50	; slot63 = slot55 + math.floor
		984	[  0]	GGET 	 64		398	; slot64 = _env["math"]
		985	[  0]	TGETS	 64	64	380	; slot64 = math.floor
		986	[  0]	SUBVV	 66	58	61	; slot66 = math.max - slot61
		987	[  0]	DIVVN	 66	66	8	; slot66 = slot66 / 2
		988	[  0]	ADDVN	 66	66	6	; slot66 = slot66 + 0.5
		989	[  0]	CALL 	 64	2	2	; slot64 = math.floor(slot65)
		990	[  0]	ADDVV	 63	63	64	; slot63 = slot63 + math.floor
		991	[  0]	GGET 	 64		398	; slot64 = _env["math"]
		992	[  0]	TGETS	 64	64	380	; slot64 = math.floor
		993	[  0]	TGETS	 66	36	312	; slot66 = <unknown table>.imprintPanel.skillFrame.iconOffsetX
		994	[  0]	IST  	   		66	; if <unknown table>.imprintPanel.skillFrame.iconOffsetX
		995	[  0]	JMP  	 67		1	; 	goto 997
		996	[  0]	KSHORT	 66		0	; slot66 = 0
		997	[  0]	ADDVN	 66	66	6	; slot66 = slot66 + 0.5
		998	[  0]	CALL 	 64	2	2	; slot64 = math.floor(slot65)
		999	[  0]	ADDVV	 63	63	64	; slot63 = slot63 + math.floor
		1000	[  0]	ADDVV	 64	49	50	; slot64 = slot49 + math.floor
		1001	[  0]	GGET 	 65		398	; slot65 = _env["math"]
		1002	[  0]	TGETS	 65	65	380	; slot65 = math.floor
		1003	[  0]	SUBVV	 67	59	62	; slot67 = math.max - slot62
		1004	[  0]	DIVVN	 67	67	8	; slot67 = slot67 / 2
		1005	[  0]	ADDVN	 67	67	6	; slot67 = slot67 + 0.5
		1006	[  0]	CALL 	 65	2	2	; slot65 = math.floor(slot66)
		1007	[  0]	ADDVV	 64	64	65	; slot64 = slot64 + math.floor
		1008	[  0]	GGET 	 65		398	; slot65 = _env["math"]
		1009	[  0]	TGETS	 65	65	380	; slot65 = math.floor
		1010	[  0]	TGETS	 67	36	311	; slot67 = <unknown table>.imprintPanel.skillFrame.iconOffsetY
		1011	[  0]	IST  	   		67	; if <unknown table>.imprintPanel.skillFrame.iconOffsetY
		1012	[  0]	JMP  	 68		1	; 	goto 1014
		1013	[  0]	KSHORT	 67		0	; slot67 = 0
		1014	[  0]	ADDVN	 67	67	6	; slot67 = slot67 + 0.5
		1015	[  0]	CALL 	 65	2	2	; slot65 = math.floor(slot66)
		1016	[  0]	ADDVV	 64	64	65	; slot64 = slot64 + math.floor
		1017	[  0]	GGET 	 65		424	; slot65 = _env["love"]
		1018	[  0]	TGETS	 65	65	343	; slot65 = love.graphics
		1019	[  0]	TGETS	 65	65	310	; slot65 = love.graphics.setColor
		1020	[  0]	KSHORT	 67		1	; slot67 = 1
		1021	[  0]	KSHORT	 68		1	; slot68 = 1
		1022	[  0]	KSHORT	 69		1	; slot69 = 1
		1023	[  0]	KSHORT	 70		1	; slot70 = 1
		1024	[  0]	CALL 	 65	1	5	;  = love.graphics.setColor(slot66, slot67, slot68, slot69)
		1025	[  0]	GGET 	 65		424	; slot65 = _env["love"]
		1026	[  0]	TGETS	 65	65	343	; slot65 = love.graphics
		1027	[  0]	TGETS	 65	65	309	; slot65 = love.graphics.draw
		1028	[  0]	MOV  	 67		42	; slot67 = slot42
		1029	[  0]	MOV  	 68		63	; slot68 = slot63
		1030	[  0]	MOV  	 69		64	; slot69 = slot64
		1031	[  0]	KSHORT	 70		0	; slot70 = 0
		1032	[  0]	MOV  	 71		60	; slot71 = slot60
		1033	[  0]	MOV  	 72		60	; slot72 = slot60
		1034	[  0]	CALL 	 65	1	7	;  = love.graphics.draw(slot66, slot67, slot68, slot69, slot70, slot71)
		1035	[  0]	GGET 	 56		424	; slot56 = _env["love"]
		1036	[  0]	TGETS	 56	56	343	; slot56 = love.graphics
		1037	[  0]	TGETS	 56	56	310	; slot56 = love.graphics.setColor
		1038	[  0]	KSHORT	 58		1	; slot58 = 1
		1039	[  0]	KSHORT	 59		1	; slot59 = 1
		1040	[  0]	KSHORT	 60		1	; slot60 = 1
		1041	[  0]	KSHORT	 61		1	; slot61 = 1
		1042	[  0]	CALL 	 56	1	5	;  = love.graphics.setColor(slot57, slot58, slot59, slot60)
		1043	[  0]	GGET 	 56		424	; slot56 = _env["love"]
		1044	[  0]	TGETS	 56	56	343	; slot56 = love.graphics
		1045	[  0]	TGETS	 56	56	309	; slot56 = love.graphics.draw
		1046	[  0]	MOV  	 58		38	; slot58 = uv6"unknown".ui.classCardSkillFrameAdvanced
		1047	[  0]	MOV  	 59		55	; slot59 = slot55
		1048	[  0]	MOV  	 60		49	; slot60 = slot49
		1049	[  0]	KSHORT	 61		0	; slot61 = 0
		1050	[  0]	MOV  	 62		43	; slot62 = slot43
		1051	[  0]	MOV  	 63		43	; slot63 = slot43
		1052	[  0]	CALL 	 56	1	7	;  = love.graphics.draw(slot57, uv6"unknown".ui.classCardSkillFrameAdvanced, slot59, slot60, slot61, slot62)
		1053	[  0]	ISF  	   		39	; if not uv6"unknown".ui.classCardSkillFrameShadow
		1054	[  0]	JMP  	 56		18	; 	goto 1073
		1055	[  0]	GGET 	 56		424	; slot56 = _env["love"]
		1056	[  0]	TGETS	 56	56	343	; slot56 = love.graphics
		1057	[  0]	TGETS	 56	56	310	; slot56 = love.graphics.setColor
		1058	[  0]	KSHORT	 58		1	; slot58 = 1
		1059	[  0]	KSHORT	 59		1	; slot59 = 1
		1060	[  0]	KSHORT	 60		1	; slot60 = 1
		1061	[  0]	KSHORT	 61		1	; slot61 = 1
		1062	[  0]	CALL 	 56	1	5	;  = love.graphics.setColor(slot57, slot58, slot59, slot60)
		1063	[  0]	GGET 	 56		424	; slot56 = _env["love"]
		1064	[  0]	TGETS	 56	56	343	; slot56 = love.graphics
		1065	[  0]	TGETS	 56	56	309	; slot56 = love.graphics.draw
		1066	[  0]	MOV  	 58		39	; slot58 = uv6"unknown".ui.classCardSkillFrameShadow
		1067	[  0]	MOV  	 59		48	; slot59 = slot48
		1068	[  0]	MOV  	 60		49	; slot60 = slot49
		1069	[  0]	KSHORT	 61		0	; slot61 = 0
		1070	[  0]	MOV  	 62		43	; slot62 = slot43
		1071	[  0]	MOV  	 63		43	; slot63 = slot43
		1072	[  0]	CALL 	 56	1	7	;  = love.graphics.draw(slot57, uv6"unknown".ui.classCardSkillFrameShadow, slot59, slot60, slot61, slot62)
		1073	[  0]	GGET 	 56		424	; slot56 = _env["love"]
		1074	[  0]	TGETS	 56	56	343	; slot56 = love.graphics
		1075	[  0]	TGETS	 56	56	310	; slot56 = love.graphics.setColor
		1076	[  0]	KSHORT	 58		1	; slot58 = 1
		1077	[  0]	KSHORT	 59		1	; slot59 = 1
		1078	[  0]	KSHORT	 60		1	; slot60 = 1
		1079	[  0]	KSHORT	 61		1	; slot61 = 1
		1080	[  0]	CALL 	 56	1	5	;  = love.graphics.setColor(slot57, slot58, slot59, slot60)
		1081	[  0]	UGET 	 36		4	; slot36 = uv4"unknwon"
		1082	[  0]	UGET 	 38		0	; slot38 = uv0"unknwon"
		1083	[  0]	CALL 	 36	2	2	; slot36 = uv4"unknown"(uv6"unknown")
		1084	[  0]	ISF  	   		36	; if not uv4"unknown"
		1085	[  0]	JMP  	 37		16	; 	goto 1102
		1086	[  0]	GGET 	 37		424	; slot37 = _env["love"]
		1087	[  0]	TGETS	 37	37	343	; slot37 = love.graphics
		1088	[  0]	TGETS	 37	37	310	; slot37 = love.graphics.setColor
		1089	[  0]	KSHORT	 39		1	; slot39 = 1
		1090	[  0]	KSHORT	 40		1	; slot40 = 1
		1091	[  0]	KSHORT	 41		1	; slot41 = 1
		1092	[  0]	MOV  	 42		35	; slot42 = slot35
		1093	[  0]	CALL 	 37	1	5	;  = love.graphics.setColor(uv0"unknown", slot39, slot40, slot41)
		1094	[  0]	GGET 	 37		424	; slot37 = _env["love"]
		1095	[  0]	TGETS	 37	37	343	; slot37 = love.graphics
		1096	[  0]	TGETS	 37	37	309	; slot37 = love.graphics.draw
		1097	[  0]	MOV  	 39		36	; slot39 = uv4"unknown"
		1098	[  0]	MOV  	 40		32	; slot40 = uv5"unknown"
		1099	[  0]	MOV  	 41		33	; slot41 = uv5"unknown"
		1100	[  0]	CALL 	 37	1	4	;  = love.graphics.draw(uv0"unknown", uv4"unknown", uv5"unknown")
		1101	[  0]	JMP  	 37		34	; 	goto 1136
		1102	[  0]	GGET 	 37		424	; slot37 = _env["love"]
		1103	[  0]	TGETS	 37	37	343	; slot37 = love.graphics
		1104	[  0]	TGETS	 37	37	310	; slot37 = love.graphics.setColor
		1105	[  0]	KNUM 	 39		0	; slot39 = 0.1
		1106	[  0]	KNUM 	 40		0	; slot40 = 0.1
		1107	[  0]	KNUM 	 41		0	; slot41 = 0.1
		1108	[  0]	MULNV	 42	35	9	; slot42 = 0.95 * slot35
		1109	[  0]	CALL 	 37	1	5	;  = love.graphics.setColor(uv0"unknown", slot39, slot40, slot41)
		1110	[  0]	GGET 	 37		424	; slot37 = _env["love"]
		1111	[  0]	TGETS	 37	37	343	; slot37 = love.graphics
		1112	[  0]	TGETS	 37	37	308	; slot37 = love.graphics.rectangle
		1113	[  0]	KSTR 	 39		307	; slot39 = "fill"
		1114	[  0]	MOV  	 40		32	; slot40 = uv5"unknown"
		1115	[  0]	MOV  	 41		33	; slot41 = uv5"unknown"
		1116	[  0]	MOV  	 42		31	; slot42 = uv4"unknown".getWidth
		1117	[  0]	MOV  	 43		30	; slot43 = uv4"unknown".getHeight
		1118	[  0]	CALL 	 37	1	6	;  = love.graphics.rectangle(uv0"unknown", slot39, uv5"unknown", uv5"unknown", uv4"unknown".getWidth)
		1119	[  0]	GGET 	 37		424	; slot37 = _env["love"]
		1120	[  0]	TGETS	 37	37	343	; slot37 = love.graphics
		1121	[  0]	TGETS	 37	37	310	; slot37 = love.graphics.setColor
		1122	[  0]	KNUM 	 39		6	; slot39 = 0.5
		1123	[  0]	KNUM 	 40		6	; slot40 = 0.5
		1124	[  0]	KNUM 	 41		6	; slot41 = 0.5
		1125	[  0]	MULNV	 42	35	10	; slot42 = 1 * slot35
		1126	[  0]	CALL 	 37	1	5	;  = love.graphics.setColor(uv0"unknown", slot39, slot40, slot41)
		1127	[  0]	GGET 	 37		424	; slot37 = _env["love"]
		1128	[  0]	TGETS	 37	37	343	; slot37 = love.graphics
		1129	[  0]	TGETS	 37	37	308	; slot37 = love.graphics.rectangle
		1130	[  0]	KSTR 	 39		306	; slot39 = "line"
		1131	[  0]	MOV  	 40		32	; slot40 = uv5"unknown"
		1132	[  0]	MOV  	 41		33	; slot41 = uv5"unknown"
		1133	[  0]	MOV  	 42		31	; slot42 = uv4"unknown".getWidth
		1134	[  0]	MOV  	 43		30	; slot43 = uv4"unknown".getHeight
		1135	[  0]	CALL 	 37	1	6	;  = love.graphics.rectangle(uv0"unknown", slot39, uv5"unknown", uv5"unknown", uv4"unknown".getWidth)
		1136	[  0]	UGET 	 37		8	; slot37 = uv8"unknwon"
		1137	[  0]	CALL 	 37	2	1	; slot37 = uv8"unknown"()
		1138	[  0]	ISF  	   		37	; if not uv8"unknown"
		1139	[  0]	JMP  	 38		10	; 	goto 1150
		1140	[  0]	MOV  	 40		37	; slot40 = uv8"unknown"
		1141	[  0]	TGETS	 38	37	341	; slot38 = uv8"unknown".setFilter
		1142	[  0]	KSTR 	 41		340	; slot41 = "nearest"
		1143	[  0]	KSTR 	 42		340	; slot42 = "nearest"
		1144	[  0]	CALL 	 38	1	4	;  = uv8"unknown".setFilter(slot39, uv8"unknown", slot41)
		1145	[  0]	GGET 	 38		424	; slot38 = _env["love"]
		1146	[  0]	TGETS	 38	38	343	; slot38 = love.graphics
		1147	[  0]	TGETS	 38	38	305	; slot38 = love.graphics.setFont
		1148	[  0]	MOV  	 40		37	; slot40 = uv8"unknown"
		1149	[  0]	CALL 	 38	1	2	;  = love.graphics.setFont(slot39)
		1150	[  0]	KNUM 	 38		11	; slot38 = 1.5
		1151	[  0]	TGETS	 39	0	368	; slot39 = slot0.imprintPanel
		1152	[  0]	ISF  	   		39	; if not <unknown table>.imprintPanel
		1153	[  0]	JMP  	 40		4	; 	goto 1158
		1154	[  0]	TGETS	 39	0	368	; slot39 = slot0.imprintPanel
		1155	[  0]	TGETS	 39	39	304	; slot39 = <unknown table>.imprintPanel.text
		1156	[  0]	IST  	   		39	; if <unknown table>.imprintPanel.text
		1157	[  0]	JMP  	 40		1	; 	goto 1159
		1158	[  0]	KPRI 	 39		0	; slot39 = nil
		1159	[  0]	ISF  	   		39	; if not slot39
		1160	[  0]	JMP  	 40		3	; 	goto 1164
		1161	[  0]	TGETS	 40	39	321	; slot40 = slot39.name
		1162	[  0]	IST  	   		40	; if <unknown table>.name
		1163	[  0]	JMP  	 41		1	; 	goto 1165
		1164	[  0]	KPRI 	 40		0	; slot40 = nil
		1165	[  0]	GGET 	 41		393	; slot41 = _env["tonumber"]
		1166	[  0]	ISFC 	 43		40	; slot43 = slot40; if not slot40
		1167	[  0]	JMP  	 43		1	; 	goto 1169
		1168	[  0]	TGETS	 43	40	384	; slot43 = slot40.x
		1169	[  0]	CALL 	 41	2	2	; slot41 = tonumber(slot42)
		1170	[  0]	IST  	   		41	; if tonumber
		1171	[  0]	JMP  	 42		1	; 	goto 1173
		1172	[  0]	KSHORT	 41		10	; slot41 = 10
		1173	[  0]	GGET 	 42		393	; slot42 = _env["tonumber"]
		1174	[  0]	ISFC 	 44		40	; slot44 = slot40; if not slot40
		1175	[  0]	JMP  	 44		1	; 	goto 1177
		1176	[  0]	TGETS	 44	40	383	; slot44 = slot40.y
		1177	[  0]	CALL 	 42	2	2	; slot42 = tonumber(<unknown table>.x)
		1178	[  0]	IST  	   		42	; if tonumber
		1179	[  0]	JMP  	 43		1	; 	goto 1181
		1180	[  0]	KSHORT	 42		8	; slot42 = 8
		1181	[  0]	UGET 	 43		5	; slot43 = uv5"unknwon"
		1182	[  0]	MULVV	 45	41	29	; slot45 = slot41 * slot29
		1183	[  0]	CALL 	 43	2	2	; slot43 = uv5"unknown"(<unknown table>.y)
		1184	[  0]	ADDVV	 43	32	43	; slot43 = uv5"unknown" + uv5"unknown"
		1185	[  0]	UGET 	 44		5	; slot44 = uv5"unknwon"
		1186	[  0]	MULVV	 46	42	29	; slot46 = slot42 * slot29
		1187	[  0]	CALL 	 44	2	2	; slot44 = uv5"unknown"(slot45)
		1188	[  0]	ADDVV	 44	33	44	; slot44 = uv5"unknown" + uv5"unknown"
		1189	[  0]	TGETS	 45	11	303	; slot45 = uv1"unknown".lastUnit.sym
		1190	[  0]	IST  	   		45	; if uv1"unknown".lastUnit.sym
		1191	[  0]	JMP  	 46		11	; 	goto 1203
		1192	[  0]	TGETS	 46	11	302	; slot46 = uv1"unknown".lastUnit.role
		1193	[  0]	ISNES	 46		301	; if uv1"unknown".lastUnit.role ~= "archer"
		1194	[  0]	JMP  	 46		2	; 	goto 1197
		1195	[  0]	KSTR 	 45		300	; slot45 = "A"
		1196	[  0]	JMP  	 46		6	; 	goto 1203
		1197	[  0]	TGETS	 46	11	302	; slot46 = uv1"unknown".lastUnit.role
		1198	[  0]	ISNES	 46		299	; if uv1"unknown".lastUnit.role ~= "spear"
		1199	[  0]	JMP  	 46		2	; 	goto 1202
		1200	[  0]	KSTR 	 45		298	; slot45 = "S"
		1201	[  0]	JMP  	 46		1	; 	goto 1203
		1202	[  0]	KSTR 	 45		297	; slot45 = "W"
		1203	[  0]	UGET 	 46		6	; slot46 = uv6"unknwon"
		1204	[  0]	TGETS	 46	46	296	; slot46 = uv6"unknown".iconsSmall
		1205	[  0]	ISF  	   		46	; if not uv6"unknown".iconsSmall
		1206	[  0]	JMP  	 47		3	; 	goto 1210
		1207	[  0]	UGET 	 46		6	; slot46 = uv6"unknwon"
		1208	[  0]	TGETS	 46	46	296	; slot46 = uv6"unknown".iconsSmall
		1209	[  0]	TGETV	 46	46	45	; slot46 = uv6"unknown".iconsSmall[slot45]
		1210	[  0]	IST  	   		46	; if slot46
		1211	[  0]	JMP  	 47		7	; 	goto 1219
		1212	[  0]	UGET 	 47		6	; slot47 = uv6"unknwon"
		1213	[  0]	TGETS	 47	47	295	; slot47 = uv6"unknown".icons
		1214	[  0]	ISFC 	 46		47	; slot46 = uv6"unknown".icons; if not uv6"unknown".icons
		1215	[  0]	JMP  	 48		3	; 	goto 1219
		1216	[  0]	UGET 	 47		6	; slot47 = uv6"unknwon"
		1217	[  0]	TGETS	 47	47	295	; slot47 = uv6"unknown".icons
		1218	[  0]	TGETV	 46	47	45	; slot46 = uv6"unknown".icons[slot45]
		1219	[  0]	GGET 	 47		363	; slot47 = _env["require"]
		1220	[  0]	KSTR 	 49		362	; slot49 = "src.ui.effects"
		1221	[  0]	CALL 	 47	2	2	; slot47 = require(slot48)
		1222	[  0]	TGETS	 47	47	361	; slot47 = require.grade_filter
		1223	[  0]	TGETS	 47	47	360	; slot47 = require.grade_filter.isPrism
		1224	[  0]	MOV  	 49		11	; slot49 = uv1"unknown".lastUnit
		1225	[  0]	CALL 	 47	2	2	; slot47 = require.grade_filter.isPrism(slot48)
		1226	[  0]	ISEQS	 45		294	; if slot45 == "Joker"
		1227	[  0]	JMP  	 48		4	; 	goto 1232
		1228	[  0]	ISEQS	 45		293	; if slot45 == "J"
		1229	[  0]	JMP  	 48		2	; 	goto 1232
		1230	[  0]	KPRI 	 48		1	; slot48 = false
		1231	[  0]	JMP  	 49		1	; 	goto 1233
		1232	[  0]	KPRI 	 48		2	; slot48 = true
		1233	[  0]	ISF  	   		46	; if not slot46
		1234	[  0]	JMP  	 49		163	; 	goto 1398
		1235	[  0]	MOV  	 51		46	; slot51 = slot46
		1236	[  0]	TGETS	 49	46	341	; slot49 = slot46.setFilter
		1237	[  0]	KSTR 	 52		340	; slot52 = "nearest"
		1238	[  0]	KSTR 	 53		340	; slot53 = "nearest"
		1239	[  0]	CALL 	 49	1	4	;  = <unknown table>.setFilter(math.floor, slot51, slot52)
		1240	[  0]	UGET 	 49		9	; slot49 = uv9"unknwon"
		1241	[  0]	CALL 	 49	2	1	; slot49 = uv9"unknown"()
		1242	[  0]	ISF  	   		49	; if not uv9"unknown"
		1243	[  0]	JMP  	 50		5	; 	goto 1249
		1244	[  0]	GGET 	 50		424	; slot50 = _env["love"]
		1245	[  0]	TGETS	 50	50	343	; slot50 = love.graphics
		1246	[  0]	TGETS	 50	50	292	; slot50 = love.graphics.setShader
		1247	[  0]	MOV  	 52		49	; slot52 = uv9"unknown"
		1248	[  0]	CALL 	 50	1	2	;  = love.graphics.setShader(slot51)
		1249	[  0]	GGET 	 50		424	; slot50 = _env["love"]
		1250	[  0]	TGETS	 50	50	343	; slot50 = love.graphics
		1251	[  0]	TGETS	 50	50	310	; slot50 = love.graphics.setColor
		1252	[  0]	KSHORT	 52		0	; slot52 = 0
		1253	[  0]	KSHORT	 53		0	; slot53 = 0
		1254	[  0]	KSHORT	 54		0	; slot54 = 0
		1255	[  0]	MULNV	 55	35	6	; slot55 = 0.5 * slot35
		1256	[  0]	CALL 	 50	1	5	;  = love.graphics.setColor(slot51, slot52, slot53, slot54)
		1257	[  0]	GGET 	 50		424	; slot50 = _env["love"]
		1258	[  0]	TGETS	 50	50	343	; slot50 = love.graphics
		1259	[  0]	TGETS	 50	50	309	; slot50 = love.graphics.draw
		1260	[  0]	MOV  	 52		46	; slot52 = slot46
		1261	[  0]	ADDVN	 53	43	10	; slot53 = slot43 + 1
		1262	[  0]	ADDVN	 54	44	10	; slot54 = slot44 + 1
		1263	[  0]	KSHORT	 55		0	; slot55 = 0
		1264	[  0]	MOV  	 56		38	; slot56 = slot38
		1265	[  0]	MOV  	 57		38	; slot57 = slot38
		1266	[  0]	CALL 	 50	1	7	;  = love.graphics.draw(slot51, slot52, slot53, slot54, slot55, slot56)
		1267	[  0]	ISF  	   		49	; if not uv9"unknown"
		1268	[  0]	JMP  	 50		4	; 	goto 1273
		1269	[  0]	GGET 	 50		424	; slot50 = _env["love"]
		1270	[  0]	TGETS	 50	50	343	; slot50 = love.graphics
		1271	[  0]	TGETS	 50	50	292	; slot50 = love.graphics.setShader
		1272	[  0]	CALL 	 50	1	1	;  = love.graphics.setShader()
		1273	[  0]	ISF  	   		48	; if not slot48
		1274	[  0]	JMP  	 50		23	; 	goto 1298
		1275	[  0]	GGET 	 50		424	; slot50 = _env["love"]
		1276	[  0]	TGETS	 50	50	343	; slot50 = love.graphics
		1277	[  0]	TGETS	 50	50	292	; slot50 = love.graphics.setShader
		1278	[  0]	CALL 	 50	1	1	;  = love.graphics.setShader()
		1279	[  0]	GGET 	 50		424	; slot50 = _env["love"]
		1280	[  0]	TGETS	 50	50	343	; slot50 = love.graphics
		1281	[  0]	TGETS	 50	50	310	; slot50 = love.graphics.setColor
		1282	[  0]	KSHORT	 52		1	; slot52 = 1
		1283	[  0]	KSHORT	 53		1	; slot53 = 1
		1284	[  0]	KSHORT	 54		1	; slot54 = 1
		1285	[  0]	MULNV	 55	35	10	; slot55 = 1 * slot35
		1286	[  0]	CALL 	 50	1	5	;  = love.graphics.setColor(slot51, slot52, slot53, slot54)
		1287	[  0]	GGET 	 50		424	; slot50 = _env["love"]
		1288	[  0]	TGETS	 50	50	343	; slot50 = love.graphics
		1289	[  0]	TGETS	 50	50	309	; slot50 = love.graphics.draw
		1290	[  0]	MOV  	 52		46	; slot52 = slot46
		1291	[  0]	MOV  	 53		43	; slot53 = slot43
		1292	[  0]	MOV  	 54		44	; slot54 = slot44
		1293	[  0]	KSHORT	 55		0	; slot55 = 0
		1294	[  0]	MOV  	 56		38	; slot56 = slot38
		1295	[  0]	MOV  	 57		38	; slot57 = slot38
		1296	[  0]	CALL 	 50	1	7	;  = love.graphics.draw(slot51, slot52, slot53, slot54, slot55, slot56)
		1297	[  0]	JMP  	 50		94	; 	goto 1392
		1298	[  0]	ISF  	   		47	; if not require.grade_filter.isPrism
		1299	[  0]	JMP  	 50		52	; 	goto 1352
		1300	[  0]	UGET 	 50		9	; slot50 = uv9"unknwon"
		1301	[  0]	CALL 	 50	2	1	; slot50 = uv9"unknown"()
		1302	[  0]	ISF  	   		50	; if not uv9"unknown"
		1303	[  0]	JMP  	 51		5	; 	goto 1309
		1304	[  0]	GGET 	 51		424	; slot51 = _env["love"]
		1305	[  0]	TGETS	 51	51	343	; slot51 = love.graphics
		1306	[  0]	TGETS	 51	51	292	; slot51 = love.graphics.setShader
		1307	[  0]	MOV  	 53		50	; slot53 = uv9"unknown"
		1308	[  0]	CALL 	 51	1	2	;  = love.graphics.setShader(slot52)
		1309	[  0]	GGET 	 51		424	; slot51 = _env["love"]
		1310	[  0]	TGETS	 51	51	343	; slot51 = love.graphics
		1311	[  0]	TGETS	 51	51	310	; slot51 = love.graphics.setColor
		1312	[  0]	KSHORT	 53		1	; slot53 = 1
		1313	[  0]	KSHORT	 54		1	; slot54 = 1
		1314	[  0]	KSHORT	 55		1	; slot55 = 1
		1315	[  0]	MULNV	 56	35	10	; slot56 = 1 * slot35
		1316	[  0]	CALL 	 51	1	5	;  = love.graphics.setColor(slot52, slot53, slot54, slot55)
		1317	[  0]	GGET 	 51		424	; slot51 = _env["love"]
		1318	[  0]	TGETS	 51	51	343	; slot51 = love.graphics
		1319	[  0]	TGETS	 51	51	309	; slot51 = love.graphics.draw
		1320	[  0]	MOV  	 53		46	; slot53 = slot46
		1321	[  0]	MOV  	 54		43	; slot54 = slot43
		1322	[  0]	MOV  	 55		44	; slot55 = slot44
		1323	[  0]	KSHORT	 56		0	; slot56 = 0
		1324	[  0]	MOV  	 57		38	; slot57 = slot38
		1325	[  0]	MOV  	 58		38	; slot58 = slot38
		1326	[  0]	CALL 	 51	1	7	;  = love.graphics.draw(slot52, slot53, slot54, slot55, slot56, slot57)
		1327	[  0]	ISF  	   		50	; if not uv9"unknown"
		1328	[  0]	JMP  	 51		4	; 	goto 1333
		1329	[  0]	GGET 	 51		424	; slot51 = _env["love"]
		1330	[  0]	TGETS	 51	51	343	; slot51 = love.graphics
		1331	[  0]	TGETS	 51	51	292	; slot51 = love.graphics.setShader
		1332	[  0]	CALL 	 51	1	1	;  = love.graphics.setShader()
		1333	[  0]	GGET 	 51		363	; slot51 = _env["require"]
		1334	[  0]	KSTR 	 53		362	; slot53 = "src.ui.effects"
		1335	[  0]	CALL 	 51	2	2	; slot51 = require(slot52)
		1336	[  0]	TGETS	 51	51	361	; slot51 = require.grade_filter
		1337	[  0]	TGETS	 51	51	291	; slot51 = require.grade_filter.drawIconFoil
		1338	[  0]	MOV  	 53		0	; slot53 = slot0
		1339	[  0]	MOV  	 54		46	; slot54 = slot46
		1340	[  0]	MOV  	 55		43	; slot55 = slot43
		1341	[  0]	MOV  	 56		44	; slot56 = slot44
		1342	[  0]	MOV  	 57		38	; slot57 = slot38
		1343	[  0]	MOV  	 58		35	; slot58 = slot35
		1344	[  0]	UGET 	 59		10	; slot59 = uv10"unknwon"
		1345	[  0]	CALL 	 59	2	1	; slot59 = uv10"unknown"()
		1346	[  0]	GGET 	 60		424	; slot60 = _env["love"]
		1347	[  0]	TGETS	 60	60	423	; slot60 = love.timer
		1348	[  0]	TGETS	 60	60	422	; slot60 = love.timer.getTime
		1349	[  0]	CALL 	 60	0	1	; MULTRES = love.timer.getTime()
		1350	[  0]	CALLM	 51	1	7	;  = require.grade_filter.drawIconFoil(slot52, slot53, slot54, slot55, slot56, slot57, slot58, ...MULTRES)
		1351	[  0]	JMP  	 50		40	; 	goto 1392
		1352	[  0]	UGET 	 50		9	; slot50 = uv9"unknwon"
		1353	[  0]	CALL 	 50	2	1	; slot50 = uv9"unknown"()
		1354	[  0]	ISF  	   		50	; if not uv9"unknown"
		1355	[  0]	JMP  	 51		5	; 	goto 1361
		1356	[  0]	GGET 	 51		424	; slot51 = _env["love"]
		1357	[  0]	TGETS	 51	51	343	; slot51 = love.graphics
		1358	[  0]	TGETS	 51	51	292	; slot51 = love.graphics.setShader
		1359	[  0]	MOV  	 53		50	; slot53 = uv9"unknown"
		1360	[  0]	CALL 	 51	1	2	;  = love.graphics.setShader(slot52)
		1361	[  0]	UGET 	 51		11	; slot51 = uv11"unknwon"
		1362	[  0]	MOV  	 53		11	; slot53 = uv1"unknown".lastUnit
		1363	[  0]	CALL 	 51	2	2	; slot51 = uv11"unknown"(slot52)
		1364	[  0]	GGET 	 52		424	; slot52 = _env["love"]
		1365	[  0]	TGETS	 52	52	343	; slot52 = love.graphics
		1366	[  0]	TGETS	 52	52	310	; slot52 = love.graphics.setColor
		1367	[  0]	TGETB	 54	51	1	; slot54 = uv11"unknown"[1]
		1368	[  0]	TGETB	 55	51	2	; slot55 = uv11"unknown"[2]
		1369	[  0]	TGETB	 56	51	3	; slot56 = uv11"unknown"[3]
		1370	[  0]	TGETB	 57	51	4	; slot57 = uv11"unknown"[4]
		1371	[  0]	IST  	   		57	; if slot57
		1372	[  0]	JMP  	 58		1	; 	goto 1374
		1373	[  0]	KSHORT	 57		1	; slot57 = 1
		1374	[  0]	MULVV	 57	57	35	; slot57 = slot57 * slot35
		1375	[  0]	CALL 	 52	1	5	;  = love.graphics.setColor(uv1"unknown".lastUnit, slot54, slot55, slot56)
		1376	[  0]	GGET 	 52		424	; slot52 = _env["love"]
		1377	[  0]	TGETS	 52	52	343	; slot52 = love.graphics
		1378	[  0]	TGETS	 52	52	309	; slot52 = love.graphics.draw
		1379	[  0]	MOV  	 54		46	; slot54 = slot46
		1380	[  0]	MOV  	 55		43	; slot55 = slot43
		1381	[  0]	MOV  	 56		44	; slot56 = slot44
		1382	[  0]	KSHORT	 57		0	; slot57 = 0
		1383	[  0]	MOV  	 58		38	; slot58 = slot38
		1384	[  0]	MOV  	 59		38	; slot59 = slot38
		1385	[  0]	CALL 	 52	1	7	;  = love.graphics.draw(uv1"unknown".lastUnit, slot54, slot55, slot56, slot57, slot58)
		1386	[  0]	ISF  	   		50	; if not uv9"unknown"
		1387	[  0]	JMP  	 52		4	; 	goto 1392
		1388	[  0]	GGET 	 52		424	; slot52 = _env["love"]
		1389	[  0]	TGETS	 52	52	343	; slot52 = love.graphics
		1390	[  0]	TGETS	 52	52	292	; slot52 = love.graphics.setShader
		1391	[  0]	CALL 	 52	1	1	;  = love.graphics.setShader()
		1392	[  0]	MOV  	 52		46	; slot52 = slot46
		1393	[  0]	TGETS	 50	46	382	; slot50 = slot46.getWidth
		1394	[  0]	CALL 	 50	2	2	; slot50 = <unknown table>.getWidth(uv11"unknown")
		1395	[  0]	MULVV	 50	50	38	; slot50 = <unknown table>.getWidth * slot38
		1396	[  0]	ADDVV	 50	43	50	; slot50 = slot43 + slot50
		1397	[  0]	ADDVN	 43	50	8	; slot43 = slot50 + 2
		1398	[  0]	ISF  	   		47	; if not require.grade_filter.isPrism
		1399	[  0]	JMP  	 49		72	; 	goto 1472
		1400	[  0]	ISF  	   		0	; if not slot0
		1401	[  0]	JMP  	 49		7	; 	goto 1409
		1402	[  0]	TGETS	 49	0	290	; slot49 = slot0.tooltipCfg
		1403	[  0]	ISF  	   		49	; if not <unknown table>.tooltipCfg
		1404	[  0]	JMP  	 50		4	; 	goto 1409
		1405	[  0]	TGETS	 49	0	290	; slot49 = slot0.tooltipCfg
		1406	[  0]	TGETS	 49	49	289	; slot49 = <unknown table>.tooltipCfg.iconFoil
		1407	[  0]	IST  	   		49	; if <unknown table>.tooltipCfg.iconFoil
		1408	[  0]	JMP  	 50		23	; 	goto 1432
		1409	[  0]	ISF  	   		0	; if not slot0
		1410	[  0]	JMP  	 49		7	; 	goto 1418
		1411	[  0]	TGETS	 49	0	288	; slot49 = slot0.tooltip
		1412	[  0]	ISF  	   		49	; if not <unknown table>.tooltip
		1413	[  0]	JMP  	 50		4	; 	goto 1418
		1414	[  0]	TGETS	 49	0	288	; slot49 = slot0.tooltip
		1415	[  0]	TGETS	 49	49	289	; slot49 = <unknown table>.tooltip.iconFoil
		1416	[  0]	IST  	   		49	; if <unknown table>.tooltip.iconFoil
		1417	[  0]	JMP  	 50		14	; 	goto 1432
		1418	[  0]	ISF  	   		0	; if not slot0
		1419	[  0]	JMP  	 49		11	; 	goto 1431
		1420	[  0]	TGETS	 49	0	287	; slot49 = slot0.battle
		1421	[  0]	ISF  	   		49	; if not <unknown table>.battle
		1422	[  0]	JMP  	 50		8	; 	goto 1431
		1423	[  0]	TGETS	 49	0	287	; slot49 = slot0.battle
		1424	[  0]	TGETS	 49	49	286	; slot49 = <unknown table>.battle.jackpotFoil
		1425	[  0]	IST  	   		49	; if <unknown table>.battle.jackpotFoil
		1426	[  0]	JMP  	 50		5	; 	goto 1432
		1427	[  0]	TGETS	 49	0	287	; slot49 = slot0.battle
		1428	[  0]	TGETS	 49	49	285	; slot49 = <unknown table>.battle.jackpotRainbow
		1429	[  0]	IST  	   		49	; if <unknown table>.battle.jackpotRainbow
		1430	[  0]	JMP  	 50		1	; 	goto 1432
		1431	[  0]	TNEW 	 49		0	; slot49 = new table( array: 0, dict: 1)
		1432	[  0]	GGET 	 50		424	; slot50 = _env["love"]
		1433	[  0]	TGETS	 50	50	423	; slot50 = love.timer
		1434	[  0]	TGETS	 50	50	422	; slot50 = love.timer.getTime
		1435	[  0]	CALL 	 50	2	1	; slot50 = love.timer.getTime()
		1436	[  0]	TGETS	 51	49	284	; slot51 = slot49.cycleSec
		1437	[  0]	IST  	   		51	; if <unknown table>.cycleSec
		1438	[  0]	JMP  	 52		1	; 	goto 1440
		1439	[  0]	KSHORT	 51		4	; slot51 = 4
		1440	[  0]	DIVVV	 52	50	51	; slot52 = love.timer.getTime / slot51
		1441	[  0]	MULVN	 52	52	8	; slot52 = slot52 * 2
		1442	[  0]	GGET 	 53		398	; slot53 = _env["math"]
		1443	[  0]	TGETS	 53	53	283	; slot53 = math.pi
		1444	[  0]	MULVV	 52	52	53	; slot52 = slot52 * math.pi
		1445	[  0]	GGET 	 53		398	; slot53 = _env["math"]
		1446	[  0]	TGETS	 53	53	282	; slot53 = math.sin
		1447	[  0]	ADDVN	 55	52	3	; slot55 = slot52 + 0
		1448	[  0]	CALL 	 53	2	2	; slot53 = math.sin(slot54)
		1449	[  0]	MULNV	 53	53	12	; slot53 = 0.4 * math.sin
		1450	[  0]	ADDNV	 53	53	13	; slot53 = 0.6 + slot53
		1451	[  0]	GGET 	 54		398	; slot54 = _env["math"]
		1452	[  0]	TGETS	 54	54	282	; slot54 = math.sin
		1453	[  0]	ADDVN	 56	52	14	; slot56 = slot52 + 2.1
		1454	[  0]	CALL 	 54	2	2	; slot54 = math.sin(slot55)
		1455	[  0]	MULNV	 54	54	15	; slot54 = 0.3 * math.sin
		1456	[  0]	ADDNV	 54	54	16	; slot54 = 0.45 + slot54
		1457	[  0]	GGET 	 55		398	; slot55 = _env["math"]
		1458	[  0]	TGETS	 55	55	282	; slot55 = math.sin
		1459	[  0]	ADDVN	 57	52	17	; slot57 = slot52 + 4.2
		1460	[  0]	CALL 	 55	2	2	; slot55 = math.sin(slot56)
		1461	[  0]	MULNV	 55	55	18	; slot55 = 0.2 * math.sin
		1462	[  0]	ADDNV	 55	55	1	; slot55 = 0.8 + slot55
		1463	[  0]	GGET 	 56		424	; slot56 = _env["love"]
		1464	[  0]	TGETS	 56	56	343	; slot56 = love.graphics
		1465	[  0]	TGETS	 56	56	310	; slot56 = love.graphics.setColor
		1466	[  0]	MOV  	 58		53	; slot58 = slot53
		1467	[  0]	MOV  	 59		54	; slot59 = slot54
		1468	[  0]	MOV  	 60		55	; slot60 = slot55
		1469	[  0]	MULNV	 61	35	10	; slot61 = 1 * slot35
		1470	[  0]	CALL 	 56	1	5	;  = love.graphics.setColor(slot57, slot58, slot59, slot60)
		1471	[  0]	JMP  	 49		15	; 	goto 1487
		1472	[  0]	UGET 	 49		11	; slot49 = uv11"unknwon"
		1473	[  0]	MOV  	 51		11	; slot51 = uv1"unknown".lastUnit
		1474	[  0]	CALL 	 49	2	2	; slot49 = uv11"unknown"(love.timer.getTime)
		1475	[  0]	GGET 	 50		424	; slot50 = _env["love"]
		1476	[  0]	TGETS	 50	50	343	; slot50 = love.graphics
		1477	[  0]	TGETS	 50	50	310	; slot50 = love.graphics.setColor
		1478	[  0]	TGETB	 52	49	1	; slot52 = uv11"unknown"[1]
		1479	[  0]	TGETB	 53	49	2	; slot53 = uv11"unknown"[2]
		1480	[  0]	TGETB	 54	49	3	; slot54 = uv11"unknown"[3]
		1481	[  0]	TGETB	 55	49	4	; slot55 = uv11"unknown"[4]
		1482	[  0]	IST  	   		55	; if slot55
		1483	[  0]	JMP  	 56		1	; 	goto 1485
		1484	[  0]	KSHORT	 55		1	; slot55 = 1
		1485	[  0]	MULVV	 55	55	35	; slot55 = slot55 * slot35
		1486	[  0]	CALL 	 50	1	5	;  = love.graphics.setColor(uv1"unknown".lastUnit, slot52, slot53, slot54)
		1487	[  0]	UGET 	 49		12	; slot49 = uv12"unknwon"
		1488	[  0]	MOV  	 51		11	; slot51 = uv1"unknown".lastUnit
		1489	[  0]	CALL 	 49	2	2	; slot49 = uv12"unknown"(love.graphics.setColor)
		1490	[  0]	GGET 	 50		363	; slot50 = _env["require"]
		1491	[  0]	KSTR 	 52		327	; slot52 = "src.ui.widgets"
		1492	[  0]	CALL 	 50	2	2	; slot50 = require(uv1"unknown".lastUnit)
		1493	[  0]	TGETS	 50	50	281	; slot50 = require.text_fit
		1494	[  0]	ISTC 	 51		37	; slot51 = uv8"unknown"; if uv8"unknown"
		1495	[  0]	JMP  	 51		4	; 	goto 1500
		1496	[  0]	GGET 	 51		424	; slot51 = _env["love"]
		1497	[  0]	TGETS	 51	51	343	; slot51 = love.graphics
		1498	[  0]	TGETS	 51	51	280	; slot51 = love.graphics.getFont
		1499	[  0]	CALL 	 51	2	1	; slot51 = love.graphics.getFont()
		1500	[  0]	UGET 	 52		0	; slot52 = uv0"unknwon"
		1501	[  0]	TGETS	 52	52	376	; slot52 = uv0"unknown"._bgVisibleBounds
		1502	[  0]	ISF  	   		52	; if not uv0"unknown"._bgVisibleBounds
		1503	[  0]	JMP  	 53		5	; 	goto 1509
		1504	[  0]	TGETS	 53	52	384	; slot53 = uv0"unknown"._bgVisibleBounds.x
		1505	[  0]	TGETS	 54	52	387	; slot54 = uv0"unknown"._bgVisibleBounds.w
		1506	[  0]	ADDVV	 53	53	54	; slot53 = uv0"unknown"._bgVisibleBounds.x + uv0"unknown"._bgVisibleBounds.w
		1507	[  0]	IST  	   		53	; if slot53
		1508	[  0]	JMP  	 54		8	; 	goto 1517
		1509	[  0]	ISF  	   		36	; if not uv4"unknown"
		1510	[  0]	JMP  	 53		5	; 	goto 1516
		1511	[  0]	MOV  	 55		36	; slot55 = uv4"unknown"
		1512	[  0]	TGETS	 53	36	382	; slot53 = uv4"unknown".getWidth
		1513	[  0]	CALL 	 53	2	2	; slot53 = uv4"unknown".getWidth(uv0"unknown"._bgVisibleBounds.w)
		1514	[  0]	IST  	   		53	; if uv4"unknown".getWidth
		1515	[  0]	JMP  	 54		1	; 	goto 1517
		1516	[  0]	MOV  	 53		31	; slot53 = uv4"unknown".getWidth
		1517	[  0]	ADDVV	 53	32	53	; slot53 = uv5"unknown" + uv4"unknown".getWidth
		1518	[  0]	GGET 	 54		398	; slot54 = _env["math"]
		1519	[  0]	TGETS	 54	54	313	; slot54 = math.max
		1520	[  0]	KSHORT	 56		16	; slot56 = 16
		1521	[  0]	UGET 	 57		5	; slot57 = uv5"unknwon"
		1522	[  0]	MULNV	 59	29	19	; slot59 = 12 * slot29
		1523	[  0]	CALL 	 57	2	2	; slot57 = uv5"unknown"(slot58)
		1524	[  0]	SUBVV	 57	53	57	; slot57 = slot53 - uv5"unknown"
		1525	[  0]	SUBVV	 57	57	43	; slot57 = slot57 - slot43
		1526	[  0]	CALL 	 54	2	3	; slot54 = math.max(uv4"unknown", slot56)
		1527	[  0]	GGET 	 55		398	; slot55 = _env["math"]
		1528	[  0]	TGETS	 55	55	279	; slot55 = math.ceil
		1529	[  0]	MOV  	 59		51	; slot59 = love.graphics.getFont
		1530	[  0]	TGETS	 57	51	381	; slot57 = love.graphics.getFont.getHeight
		1531	[  0]	CALL 	 57	2	2	; slot57 = love.graphics.getFont.getHeight(slot58)
		1532	[  0]	MULVV	 57	57	38	; slot57 = love.graphics.getFont.getHeight * slot38
		1533	[  0]	CALL 	 55	2	2	; slot55 = math.ceil(slot56)
		1534	[  0]	TGETS	 56	50	278	; slot56 = require.text_fit.fit
		1535	[  0]	MOV  	 58		49	; slot58 = uv12"unknown"
		1536	[  0]	MOV  	 59		54	; slot59 = math.max
		1537	[  0]	MOV  	 60		51	; slot60 = love.graphics.getFont
		1538	[  0]	TDUP 	 61		277	; slot61 = copy table#k277
		1539	[  0]	TSETS	 38	61	379	; slot61.scale = slot38
		1540	[  0]	TDUP 	 62		276	; slot62 = copy table#k276
		1541	[  0]	TSETS	 62	61	275	; slot61.steps = slot62
		1542	[  0]	CALL 	 56	2	5	; slot56 = require.text_fit.fit(slot57, uv12"unknown", math.max, love.graphics.getFont)
		1543	[  0]	TGETS	 57	50	309	; slot57 = require.text_fit.draw
		1544	[  0]	MOV  	 59		56	; slot59 = require.text_fit.fit
		1545	[  0]	MOV  	 60		43	; slot60 = slot43
		1546	[  0]	MOV  	 61		44	; slot61 = slot44
		1547	[  0]	MOV  	 62		54	; slot62 = math.max
		1548	[  0]	MOV  	 63		55	; slot63 = math.ceil
		1549	[  0]	TDUP 	 64		273	; slot64 = copy table#k273
		1550	[  0]	KSTR 	 65		274	; slot65 = "imprint_title:"
		1551	[  0]	MOV  	 66		49	; slot66 = uv12"unknown"
		1552	[  0]	CAT  	 65	65	66	; slot65 = slot65 .. uv12"unknown"
		1553	[  0]	TSETS	 65	64	272	; slot64.key = slot65
		1554	[  0]	CALL 	 57	1	7	;  = require.text_fit.draw(uv12"unknown", require.text_fit.fit, slot60, slot61, math.max, math.ceil)
		1555	[  0]	TGETS	 57	56	271	; slot57 = require.text_fit.fit.scroll
		1556	[  0]	IST  	   		57	; if require.text_fit.fit.scroll
		1557	[  0]	JMP  	 57		41	; 	goto 1599
		1558	[  0]	GGET 	 57		398	; slot57 = _env["math"]
		1559	[  0]	TGETS	 57	57	380	; slot57 = math.floor
		1560	[  0]	GGET 	 59		398	; slot59 = _env["math"]
		1561	[  0]	TGETS	 59	59	279	; slot59 = math.ceil
		1562	[  0]	TGETS	 61	56	270	; slot61 = require.text_fit.fit.font
		1563	[  0]	MOV  	 63		61	; slot63 = require.text_fit.fit.font
		1564	[  0]	TGETS	 61	61	381	; slot61 = require.text_fit.fit.font.getHeight
		1565	[  0]	CALL 	 61	2	2	; slot61 = require.text_fit.fit.font.getHeight(math.max)
		1566	[  0]	TGETS	 62	56	379	; slot62 = require.text_fit.fit.scale
		1567	[  0]	MULVV	 61	61	62	; slot61 = require.text_fit.fit.font.getHeight * require.text_fit.fit.scale
		1568	[  0]	CALL 	 59	2	2	; slot59 = math.ceil(slot60)
		1569	[  0]	SUBVV	 59	55	59	; slot59 = math.ceil - math.ceil
		1570	[  0]	MULVN	 59	59	6	; slot59 = slot59 * 0.5
		1571	[  0]	ADDVN	 59	59	6	; slot59 = slot59 + 0.5
		1572	[  0]	CALL 	 57	2	2	; slot57 = math.floor(uv12"unknown")
		1573	[  0]	ADDVV	 57	44	57	; slot57 = slot44 + math.floor
		1574	[  0]	TGETS	 58	56	269	; slot58 = require.text_fit.fit.small
		1575	[  0]	ISF  	   		58	; if not require.text_fit.fit.small
		1576	[  0]	JMP  	 59		2	; 	goto 1579
		1577	[  0]	KSHORT	 58		1	; slot58 = 1
		1578	[  0]	JMP  	 59		1	; 	goto 1580
		1579	[  0]	KSHORT	 58		0	; slot58 = 0
		1580	[  0]	ADDVV	 57	57	58	; slot57 = slot57 + slot58
		1581	[  0]	GGET 	 58		363	; slot58 = _env["require"]
		1582	[  0]	KSTR 	 60		327	; slot60 = "src.ui.widgets"
		1583	[  0]	CALL 	 58	2	2	; slot58 = require(slot59)
		1584	[  0]	TGETS	 58	58	268	; slot58 = require.unit_name_sweep
		1585	[  0]	TGETS	 58	58	309	; slot58 = require.unit_name_sweep.draw
		1586	[  0]	MOV  	 60		49	; slot60 = uv12"unknown"
		1587	[  0]	MOV  	 61		43	; slot61 = slot43
		1588	[  0]	MOV  	 62		57	; slot62 = slot57
		1589	[  0]	TGETS	 63	56	379	; slot63 = require.text_fit.fit.scale
		1590	[  0]	TGETS	 64	56	379	; slot64 = require.text_fit.fit.scale
		1591	[  0]	ISF  	   		47	; if not require.grade_filter.isPrism
		1592	[  0]	JMP  	 65		2	; 	goto 1595
		1593	[  0]	KSTR 	 65		267	; slot65 = "prism"
		1594	[  0]	JMP  	 66		1	; 	goto 1596
		1595	[  0]	TGETS	 65	11	358	; slot65 = uv1"unknown".lastUnit.grade
		1596	[  0]	MOV  	 66		35	; slot66 = slot35
		1597	[  0]	TGETS	 67	56	270	; slot67 = require.text_fit.fit.font
		1598	[  0]	CALL 	 58	1	9	;  = require.unit_name_sweep.draw(slot59, uv12"unknown", slot61, slot62, require.text_fit.fit.scale, require.text_fit.fit.scale, uv1"unknown".lastUnit.grade, slot66)
		1599	[  0]	TGETS	 50	0	270	; slot50 = slot0.font
		1600	[  0]	ISF  	   		50	; if not <unknown table>.font
		1601	[  0]	JMP  	 51		5	; 	goto 1607
		1602	[  0]	GGET 	 50		424	; slot50 = _env["love"]
		1603	[  0]	TGETS	 50	50	343	; slot50 = love.graphics
		1604	[  0]	TGETS	 50	50	305	; slot50 = love.graphics.setFont
		1605	[  0]	TGETS	 52	0	270	; slot52 = slot0.font
		1606	[  0]	CALL 	 50	1	2	;  = love.graphics.setFont(love.graphics.getFont)
		1607	[  0]	UGET 	 50		8	; slot50 = uv8"unknwon"
		1608	[  0]	CALL 	 50	2	1	; slot50 = uv8"unknown"()
		1609	[  0]	IST  	   		50	; if uv8"unknown"
		1610	[  0]	JMP  	 51		7	; 	goto 1618
		1611	[  0]	TGETS	 50	0	270	; slot50 = slot0.font
		1612	[  0]	IST  	   		50	; if <unknown table>.font
		1613	[  0]	JMP  	 51		4	; 	goto 1618
		1614	[  0]	GGET 	 50		424	; slot50 = _env["love"]
		1615	[  0]	TGETS	 50	50	343	; slot50 = love.graphics
		1616	[  0]	TGETS	 50	50	280	; slot50 = love.graphics.getFont
		1617	[  0]	CALL 	 50	2	1	; slot50 = love.graphics.getFont()
		1618	[  0]	KNUM 	 51		11	; slot51 = 1.5
		1619	[  0]	ISF  	   		50	; if not love.graphics.getFont
		1620	[  0]	JMP  	 52		5	; 	goto 1626
		1621	[  0]	MOV  	 54		50	; slot54 = love.graphics.getFont
		1622	[  0]	TGETS	 52	50	381	; slot52 = love.graphics.getFont.getHeight
		1623	[  0]	CALL 	 52	2	2	; slot52 = love.graphics.getFont.getHeight(slot53)
		1624	[  0]	IST  	   		52	; if love.graphics.getFont.getHeight
		1625	[  0]	JMP  	 53		1	; 	goto 1627
		1626	[  0]	KSHORT	 52		12	; slot52 = 12
		1627	[  0]	GGET 	 53		398	; slot53 = _env["math"]
		1628	[  0]	TGETS	 53	53	313	; slot53 = math.max
		1629	[  0]	KSHORT	 55		1	; slot55 = 1
		1630	[  0]	GGET 	 56		398	; slot56 = _env["math"]
		1631	[  0]	TGETS	 56	56	380	; slot56 = math.floor
		1632	[  0]	GGET 	 58		393	; slot58 = _env["tonumber"]
		1633	[  0]	ISF  	   		11	; if not uv1"unknown".lastUnit
		1634	[  0]	JMP  	 60		3	; 	goto 1638
		1635	[  0]	TGETS	 60	11	266	; slot60 = uv1"unknown".lastUnit.absorbLV
		1636	[  0]	IST  	   		60	; if uv1"unknown".lastUnit.absorbLV
		1637	[  0]	JMP  	 61		1	; 	goto 1639
		1638	[  0]	KSHORT	 60		1	; slot60 = 1
		1639	[  0]	CALL 	 58	2	2	; slot58 = tonumber(slot59)
		1640	[  0]	IST  	   		58	; if tonumber
		1641	[  0]	JMP  	 59		1	; 	goto 1643
		1642	[  0]	KSHORT	 58		1	; slot58 = 1
		1643	[  0]	CALL 	 56	0	2	; MULTRES = math.floor(slot57)
		1644	[  0]	CALLM	 53	2	1	; slot53 = math.max(love.graphics.getFont, ...MULTRES)
		1645	[  0]	KSTR 	 54		265	; slot54 = "LV. "
		1646	[  0]	GGET 	 55		264	; slot55 = _env["tostring"]
		1647	[  0]	MOV  	 57		53	; slot57 = math.max
		1648	[  0]	CALL 	 55	2	2	; slot55 = tostring(math.floor)
		1649	[  0]	CAT  	 54	54	55	; slot54 = slot54 .. tostring
		1650	[  0]	KSHORT	 55		0	; slot55 = 0
		1651	[  0]	KPRI 	 56		2	; slot56 = true
		1652	[  0]	ISF  	   		10	; if not <unknown table>.absorber
		1653	[  0]	JMP  	 57		57	; 	goto 1711
		1654	[  0]	ISF  	   		9	; if not slot9
		1655	[  0]	JMP  	 57		55	; 	goto 1711
		1656	[  0]	TGETS	 57	9	263	; slot57 = slot9.preview
		1657	[  0]	ISF  	   		57	; if not <unknown table>.preview
		1658	[  0]	JMP  	 58		52	; 	goto 1711
		1659	[  0]	GGET 	 57		398	; slot57 = _env["math"]
		1660	[  0]	TGETS	 57	57	313	; slot57 = math.max
		1661	[  0]	KSHORT	 59		0	; slot59 = 0
		1662	[  0]	GGET 	 60		398	; slot60 = _env["math"]
		1663	[  0]	TGETS	 60	60	380	; slot60 = math.floor
		1664	[  0]	GGET 	 62		393	; slot62 = _env["tonumber"]
		1665	[  0]	TGETS	 64	9	263	; slot64 = slot9.preview
		1666	[  0]	TGETS	 64	64	262	; slot64 = <unknown table>.preview.totalAbsorbLvGain
		1667	[  0]	IST  	   		64	; if <unknown table>.preview.totalAbsorbLvGain
		1668	[  0]	JMP  	 65		1	; 	goto 1670
		1669	[  0]	KSHORT	 64		0	; slot64 = 0
		1670	[  0]	CALL 	 62	2	2	; slot62 = tonumber(require.text_fit.fit.scale)
		1671	[  0]	IST  	   		62	; if tonumber
		1672	[  0]	JMP  	 63		1	; 	goto 1674
		1673	[  0]	KSHORT	 62		0	; slot62 = 0
		1674	[  0]	CALL 	 60	0	2	; MULTRES = math.floor(slot61)
		1675	[  0]	CALLM	 57	2	1	; slot57 = math.max(slot58, ...MULTRES)
		1676	[  0]	GGET 	 58		398	; slot58 = _env["math"]
		1677	[  0]	TGETS	 58	58	313	; slot58 = math.max
		1678	[  0]	KSHORT	 60		0	; slot60 = 0
		1679	[  0]	GGET 	 61		398	; slot61 = _env["math"]
		1680	[  0]	TGETS	 61	61	380	; slot61 = math.floor
		1681	[  0]	GGET 	 63		393	; slot63 = _env["tonumber"]
		1682	[  0]	TGETS	 65	9	263	; slot65 = slot9.preview
		1683	[  0]	TGETS	 65	65	261	; slot65 = <unknown table>.preview.convertBonus
		1684	[  0]	IST  	   		65	; if <unknown table>.preview.convertBonus
		1685	[  0]	JMP  	 66		1	; 	goto 1687
		1686	[  0]	KSHORT	 65		0	; slot65 = 0
		1687	[  0]	CALL 	 63	2	2	; slot63 = tonumber(slot64)
		1688	[  0]	IST  	   		63	; if tonumber
		1689	[  0]	JMP  	 64		1	; 	goto 1691
		1690	[  0]	KSHORT	 63		0	; slot63 = 0
		1691	[  0]	CALL 	 61	0	2	; MULTRES = math.floor(slot62)
		1692	[  0]	CALLM	 58	2	1	; slot58 = math.max(slot59, ...MULTRES)
		1693	[  0]	MOV  	 55		57	; slot55 = math.max
		1694	[  0]	TGETS	 59	9	263	; slot59 = slot9.preview
		1695	[  0]	TGETS	 59	59	260	; slot59 = <unknown table>.preview.convertAvailable
		1696	[  0]	ISF  	   		59	; if not <unknown table>.preview.convertAvailable
		1697	[  0]	JMP  	 60		13	; 	goto 1711
		1698	[  0]	UGET 	 59		1	; slot59 = uv1"unknwon"
		1699	[  0]	TGETS	 59	59	259	; slot59 = uv1"unknown".convertHovering
		1700	[  0]	ISF  	   		59	; if not uv1"unknown".convertHovering
		1701	[  0]	JMP  	 60		2	; 	goto 1704
		1702	[  0]	ADDVV	 55	57	58	; slot55 = math.max + math.max
		1703	[  0]	JMP  	 59		7	; 	goto 1711
		1704	[  0]	UGET 	 59		1	; slot59 = uv1"unknwon"
		1705	[  0]	TGETS	 59	59	426	; slot59 = uv1"unknown".replaceHovering
		1706	[  0]	ISF  	   		59	; if not uv1"unknown".replaceHovering
		1707	[  0]	JMP  	 60		2	; 	goto 1710
		1708	[  0]	MOV  	 55		57	; slot55 = math.max
		1709	[  0]	JMP  	 59		1	; 	goto 1711
		1710	[  0]	KPRI 	 56		1	; slot56 = false
		1711	[  0]	KSTR 	 57		346	; slot57 = ""
		1712	[  0]	ISF  	   		56	; if not slot56
		1713	[  0]	JMP  	 58		8	; 	goto 1722
		1714	[  0]	KSHORT	 58		0	; slot58 = 0
		1715	[  0]	ISGE 	 58		55	; if slot58 >= math.max
		1716	[  0]	JMP  	 58		5	; 	goto 1722
		1717	[  0]	KSTR 	 58		258	; slot58 = " +"
		1718	[  0]	GGET 	 59		264	; slot59 = _env["tostring"]
		1719	[  0]	MOV  	 61		55	; slot61 = math.max
		1720	[  0]	CALL 	 59	2	2	; slot59 = tostring(slot60)
		1721	[  0]	CAT  	 57	58	59	; slot57 = slot58 .. tostring
		1722	[  0]	ISF  	   		39	; if not slot39
		1723	[  0]	JMP  	 58		3	; 	goto 1727
		1724	[  0]	TGETS	 58	39	257	; slot58 = slot39.absorbLv
		1725	[  0]	IST  	   		58	; if <unknown table>.absorbLv
		1726	[  0]	JMP  	 59		1	; 	goto 1728
		1727	[  0]	KPRI 	 58		0	; slot58 = nil
		1728	[  0]	GGET 	 59		393	; slot59 = _env["tonumber"]
		1729	[  0]	ISFC 	 61		58	; slot61 = slot58; if not slot58
		1730	[  0]	JMP  	 61		1	; 	goto 1732
		1731	[  0]	TGETS	 61	58	384	; slot61 = slot58.x
		1732	[  0]	CALL 	 59	2	2	; slot59 = tonumber(slot60)
		1733	[  0]	IST  	   		59	; if tonumber
		1734	[  0]	JMP  	 60		1	; 	goto 1736
		1735	[  0]	MOV  	 59		41	; slot59 = slot41
		1736	[  0]	UGET 	 60		5	; slot60 = uv5"unknwon"
		1737	[  0]	MULVV	 62	59	29	; slot62 = slot59 * slot29
		1738	[  0]	CALL 	 60	2	2	; slot60 = uv5"unknown"(<unknown table>.x)
		1739	[  0]	ADDVV	 60	32	60	; slot60 = uv5"unknown" + uv5"unknown"
		1740	[  0]	KPRI 	 61		0	; slot61 = nil
		1741	[  0]	GGET 	 62		393	; slot62 = _env["tonumber"]
		1742	[  0]	ISFC 	 64		58	; slot64 = slot58; if not slot58
		1743	[  0]	JMP  	 64		1	; 	goto 1745
		1744	[  0]	TGETS	 64	58	383	; slot64 = slot58.y
		1745	[  0]	CALL 	 62	2	2	; slot62 = tonumber(slot63)
		1746	[  0]	ISF  	   		62	; if not tonumber
		1747	[  0]	JMP  	 63		5	; 	goto 1753
		1748	[  0]	UGET 	 63		5	; slot63 = uv5"unknwon"
		1749	[  0]	MULVV	 65	62	29	; slot65 = tonumber * slot29
		1750	[  0]	CALL 	 63	2	2	; slot63 = uv5"unknown"(<unknown table>.y)
		1751	[  0]	ADDVV	 61	33	63	; slot61 = uv5"unknown" + uv5"unknown"
		1752	[  0]	JMP  	 63		13	; 	goto 1766
		1753	[  0]	GGET 	 63		393	; slot63 = _env["tonumber"]
		1754	[  0]	ISFC 	 65		58	; slot65 = slot58; if not slot58
		1755	[  0]	JMP  	 65		1	; 	goto 1757
		1756	[  0]	TGETS	 65	58	256	; slot65 = slot58.dyFromName
		1757	[  0]	CALL 	 63	2	2	; slot63 = tonumber(<unknown table>.y)
		1758	[  0]	IST  	   		63	; if tonumber
		1759	[  0]	JMP  	 64		1	; 	goto 1761
		1760	[  0]	KSHORT	 63		2	; slot63 = 2
		1761	[  0]	ADDVV	 64	44	52	; slot64 = slot44 + slot52
		1762	[  0]	UGET 	 65		5	; slot65 = uv5"unknwon"
		1763	[  0]	MULVV	 67	63	29	; slot67 = slot63 * slot29
		1764	[  0]	CALL 	 65	2	2	; slot65 = uv5"unknown"(slot66)
		1765	[  0]	ADDVV	 61	64	65	; slot61 = slot64 + uv5"unknown"
		1766	[  0]	ISF  	   		50	; if not love.graphics.getFont
		1767	[  0]	JMP  	 63		5	; 	goto 1773
		1768	[  0]	GGET 	 63		424	; slot63 = _env["love"]
		1769	[  0]	TGETS	 63	63	343	; slot63 = love.graphics
		1770	[  0]	TGETS	 63	63	305	; slot63 = love.graphics.setFont
		1771	[  0]	MOV  	 65		50	; slot65 = love.graphics.getFont
		1772	[  0]	CALL 	 63	1	2	;  = love.graphics.setFont(slot64)
		1773	[  0]	GGET 	 63		424	; slot63 = _env["love"]
		1774	[  0]	TGETS	 63	63	343	; slot63 = love.graphics
		1775	[  0]	TGETS	 63	63	310	; slot63 = love.graphics.setColor
		1776	[  0]	KNUM 	 65		20	; slot65 = 0.9
		1777	[  0]	KNUM 	 66		20	; slot66 = 0.9
		1778	[  0]	KNUM 	 67		20	; slot67 = 0.9
		1779	[  0]	MULNV	 68	35	10	; slot68 = 1 * slot35
		1780	[  0]	CALL 	 63	1	5	;  = love.graphics.setColor(slot64, slot65, slot66, slot67)
		1781	[  0]	MOV  	 65		50	; slot65 = love.graphics.getFont
		1782	[  0]	TGETS	 63	50	382	; slot63 = love.graphics.getFont.getWidth
		1783	[  0]	MOV  	 66		54	; slot66 = slot54
		1784	[  0]	CALL 	 63	2	3	; slot63 = love.graphics.getFont.getWidth(slot64, love.graphics.getFont)
		1785	[  0]	MOV  	 66		50	; slot66 = love.graphics.getFont
		1786	[  0]	TGETS	 64	50	381	; slot64 = love.graphics.getFont.getHeight
		1787	[  0]	CALL 	 64	2	2	; slot64 = love.graphics.getFont.getHeight(love.graphics.getFont)
		1788	[  0]	GGET 	 65		398	; slot65 = _env["math"]
		1789	[  0]	TGETS	 65	65	279	; slot65 = math.ceil
		1790	[  0]	MULVV	 67	63	51	; slot67 = love.graphics.getFont.getWidth * slot51
		1791	[  0]	CALL 	 65	2	2	; slot65 = math.ceil(love.graphics.getFont)
		1792	[  0]	GGET 	 66		398	; slot66 = _env["math"]
		1793	[  0]	TGETS	 66	66	279	; slot66 = math.ceil
		1794	[  0]	MULVV	 68	64	51	; slot68 = love.graphics.getFont.getHeight * slot51
		1795	[  0]	CALL 	 66	2	2	; slot66 = math.ceil(slot67)
		1796	[  0]	MOV  	 69		50	; slot69 = love.graphics.getFont
		1797	[  0]	TGETS	 67	50	341	; slot67 = love.graphics.getFont.setFilter
		1798	[  0]	KSTR 	 70		340	; slot70 = "nearest"
		1799	[  0]	KSTR 	 71		340	; slot71 = "nearest"
		1800	[  0]	CALL 	 67	1	4	;  = love.graphics.getFont.setFilter(slot68, love.graphics.getFont, slot70)
		1801	[  0]	GGET 	 67		424	; slot67 = _env["love"]
		1802	[  0]	TGETS	 67	67	343	; slot67 = love.graphics
		1803	[  0]	TGETS	 67	67	255	; slot67 = love.graphics.print
		1804	[  0]	MOV  	 69		54	; slot69 = slot54
		1805	[  0]	GGET 	 70		398	; slot70 = _env["math"]
		1806	[  0]	TGETS	 70	70	380	; slot70 = math.floor
		1807	[  0]	MOV  	 72		60	; slot72 = slot60
		1808	[  0]	CALL 	 70	2	2	; slot70 = math.floor(slot71)
		1809	[  0]	GGET 	 71		398	; slot71 = _env["math"]
		1810	[  0]	TGETS	 71	71	380	; slot71 = math.floor
		1811	[  0]	MOV  	 73		61	; slot73 = slot61
		1812	[  0]	CALL 	 71	2	2	; slot71 = math.floor(slot72)
		1813	[  0]	KSHORT	 72		0	; slot72 = 0
		1814	[  0]	MOV  	 73		51	; slot73 = slot51
		1815	[  0]	MOV  	 74		51	; slot74 = slot51
		1816	[  0]	CALL 	 67	1	7	;  = love.graphics.print(slot68, slot69, math.floor, math.floor, slot72, slot73)
		1817	[  0]	MULVV	 67	63	51	; slot67 = love.graphics.getFont.getWidth * slot51
		1818	[  0]	MULVV	 68	64	51	; slot68 = love.graphics.getFont.getHeight * slot51
		1819	[  0]	UGET 	 69		13	; slot69 = uv13"unknwon"
		1820	[  0]	TGETS	 69	69	254	; slot69 = uv13"unknown".getForUnit
		1821	[  0]	MOV  	 71		11	; slot71 = uv1"unknown".lastUnit
		1822	[  0]	CALL 	 69	2	2	; slot69 = uv13"unknown".getForUnit(math.floor)
		1823	[  0]	ISF  	   		69	; if not uv13"unknown".getForUnit
		1824	[  0]	JMP  	 70		6	; 	goto 1831
		1825	[  0]	UGET 	 70		13	; slot70 = uv13"unknwon"
		1826	[  0]	TGETS	 70	70	253	; slot70 = uv13"unknown".getIconPath
		1827	[  0]	MOV  	 72		69	; slot72 = uv13"unknown".getForUnit
		1828	[  0]	CALL 	 70	2	2	; slot70 = uv13"unknown".getIconPath(uv1"unknown".lastUnit)
		1829	[  0]	IST  	   		70	; if uv13"unknown".getIconPath
		1830	[  0]	JMP  	 71		1	; 	goto 1832
		1831	[  0]	KPRI 	 70		0	; slot70 = nil
		1832	[  0]	ISF  	   		70	; if not slot70
		1833	[  0]	JMP  	 71		6	; 	goto 1840
		1834	[  0]	UGET 	 71		14	; slot71 = uv14"unknwon"
		1835	[  0]	UGET 	 73		0	; slot73 = uv0"unknwon"
		1836	[  0]	MOV  	 74		70	; slot74 = slot70
		1837	[  0]	CALL 	 71	2	3	; slot71 = uv14"unknown"(uv13"unknown".getForUnit, uv0"unknown")
		1838	[  0]	IST  	   		71	; if uv14"unknown"
		1839	[  0]	JMP  	 72		1	; 	goto 1841
		1840	[  0]	KPRI 	 71		0	; slot71 = nil
		1841	[  0]	ADDVV	 72	60	67	; slot72 = slot60 + slot67
		1842	[  0]	ISF  	   		71	; if not slot71
		1843	[  0]	JMP  	 73		273	; 	goto 2117
		1844	[  0]	ISF  	   		39	; if not slot39
		1845	[  0]	JMP  	 73		3	; 	goto 1849
		1846	[  0]	TGETS	 73	39	252	; slot73 = slot39.faction
		1847	[  0]	IST  	   		73	; if <unknown table>.faction
		1848	[  0]	JMP  	 74		1	; 	goto 1850
		1849	[  0]	KPRI 	 73		0	; slot73 = nil
		1850	[  0]	GGET 	 74		393	; slot74 = _env["tonumber"]
		1851	[  0]	ISFC 	 76		73	; slot76 = slot73; if not slot73
		1852	[  0]	JMP  	 76		1	; 	goto 1854
		1853	[  0]	TGETS	 76	73	251	; slot76 = slot73.gap
		1854	[  0]	CALL 	 74	2	2	; slot74 = tonumber(slot75)
		1855	[  0]	IST  	   		74	; if tonumber
		1856	[  0]	JMP  	 75		1	; 	goto 1858
		1857	[  0]	KSHORT	 74		8	; slot74 = 8
		1858	[  0]	GGET 	 75		393	; slot75 = _env["tonumber"]
		1859	[  0]	ISFC 	 77		73	; slot77 = slot73; if not slot73
		1860	[  0]	JMP  	 77		1	; 	goto 1862
		1861	[  0]	TGETS	 77	73	250	; slot77 = slot73.dx
		1862	[  0]	CALL 	 75	2	2	; slot75 = tonumber(<unknown table>.gap)
		1863	[  0]	IST  	   		75	; if tonumber
		1864	[  0]	JMP  	 76		1	; 	goto 1866
		1865	[  0]	KSHORT	 75		0	; slot75 = 0
		1866	[  0]	GGET 	 76		393	; slot76 = _env["tonumber"]
		1867	[  0]	ISFC 	 78		73	; slot78 = slot73; if not slot73
		1868	[  0]	JMP  	 78		1	; 	goto 1870
		1869	[  0]	TGETS	 78	73	249	; slot78 = slot73.dy
		1870	[  0]	CALL 	 76	2	2	; slot76 = tonumber(<unknown table>.dx)
		1871	[  0]	IST  	   		76	; if tonumber
		1872	[  0]	JMP  	 77		1	; 	goto 1874
		1873	[  0]	KSHORT	 76		0	; slot76 = 0
		1874	[  0]	MOV  	 79		71	; slot79 = slot71
		1875	[  0]	TGETS	 77	71	339	; slot77 = slot71.getDimensions
		1876	[  0]	CALL 	 77	3	2	; slot77, slot78 = <unknown table>.getDimensions(<unknown table>.dy)
		1877	[  0]	GGET 	 79		398	; slot79 = _env["math"]
		1878	[  0]	TGETS	 79	79	313	; slot79 = math.max
		1879	[  0]	KNUM 	 81		21	; slot81 = 0.25
		1880	[  0]	GGET 	 82		393	; slot82 = _env["tonumber"]
		1881	[  0]	ISFC 	 84		73	; slot84 = slot73; if not slot73
		1882	[  0]	JMP  	 84		1	; 	goto 1884
		1883	[  0]	TGETS	 84	73	379	; slot84 = slot73.scale
		1884	[  0]	CALL 	 82	2	2	; slot82 = tonumber(slot83)
		1885	[  0]	IST  	   		82	; if tonumber
		1886	[  0]	JMP  	 83		1	; 	goto 1888
		1887	[  0]	KSHORT	 82		1	; slot82 = 1
		1888	[  0]	CALL 	 79	2	3	; slot79 = math.max(slot80, slot81)
		1889	[  0]	MULVV	 80	77	79	; slot80 = <unknown table>.getDimensions * math.max
		1890	[  0]	MULVV	 81	78	79	; slot81 = <unknown table>.dy * math.max
		1891	[  0]	GGET 	 82		398	; slot82 = _env["math"]
		1892	[  0]	TGETS	 82	82	380	; slot82 = math.floor
		1893	[  0]	ADDVV	 84	60	67	; slot84 = slot60 + slot67
		1894	[  0]	ADDVV	 84	84	74	; slot84 = slot84 + slot74
		1895	[  0]	ADDVV	 84	84	75	; slot84 = slot84 + slot75
		1896	[  0]	CALL 	 82	2	2	; slot82 = math.floor(slot83)
		1897	[  0]	GGET 	 83		398	; slot83 = _env["math"]
		1898	[  0]	TGETS	 83	83	380	; slot83 = math.floor
		1899	[  0]	SUBVV	 85	68	81	; slot85 = slot68 - slot81
		1900	[  0]	MULVN	 85	85	6	; slot85 = slot85 * 0.5
		1901	[  0]	ADDVV	 85	61	85	; slot85 = slot61 + slot85
		1902	[  0]	ADDVV	 85	85	76	; slot85 = slot85 + slot76
		1903	[  0]	CALL 	 83	2	2	; slot83 = math.floor(slot84)
		1904	[  0]	GGET 	 84		398	; slot84 = _env["math"]
		1905	[  0]	TGETS	 84	84	380	; slot84 = math.floor
		1906	[  0]	MULVN	 86	80	6	; slot86 = slot80 * 0.5
		1907	[  0]	ADDVV	 86	82	86	; slot86 = math.floor + slot86
		1908	[  0]	CALL 	 84	2	2	; slot84 = math.floor(slot85)
		1909	[  0]	GGET 	 85		398	; slot85 = _env["math"]
		1910	[  0]	TGETS	 85	85	380	; slot85 = math.floor
		1911	[  0]	MULVN	 87	81	6	; slot87 = slot81 * 0.5
		1912	[  0]	ADDVV	 87	83	87	; slot87 = math.floor + slot87
		1913	[  0]	CALL 	 85	2	2	; slot85 = math.floor(slot86)
		1914	[  0]	MULVN	 86	77	6	; slot86 = <unknown table>.getDimensions * 0.5
		1915	[  0]	MULVN	 87	78	6	; slot87 = <unknown table>.dy * 0.5
		1916	[  0]	GGET 	 88		393	; slot88 = _env["tonumber"]
		1917	[  0]	ISFC 	 90		73	; slot90 = slot73; if not slot73
		1918	[  0]	JMP  	 90		1	; 	goto 1920
		1919	[  0]	TGETS	 90	73	248	; slot90 = slot73.hoverPad
		1920	[  0]	CALL 	 88	2	2	; slot88 = tonumber(slot89)
		1921	[  0]	IST  	   		88	; if tonumber
		1922	[  0]	JMP  	 89		1	; 	goto 1924
		1923	[  0]	KSHORT	 88		2	; slot88 = 2
		1924	[  0]	SUBVV	 89	82	88	; slot89 = math.floor - slot88
		1925	[  0]	ISGT 	 89		3	; if slot89 > slot3
		1926	[  0]	JMP  	 89		11	; 	goto 1938
		1927	[  0]	ADDVV	 89	82	80	; slot89 = math.floor + slot80
		1928	[  0]	ADDVV	 89	89	88	; slot89 = slot89 + slot88
		1929	[  0]	ISGT 	  3		89	; if slot3 > slot89
		1930	[  0]	JMP  	 89		7	; 	goto 1938
		1931	[  0]	SUBVV	 89	83	88	; slot89 = math.floor - slot88
		1932	[  0]	ISGT 	 89		4	; if slot89 > slot4
		1933	[  0]	JMP  	 89		4	; 	goto 1938
		1934	[  0]	ADDVV	 89	83	81	; slot89 = math.floor + slot81
		1935	[  0]	ADDVV	 89	89	88	; slot89 = slot89 + slot88
		1936	[  0]	ISLE 	  4		89	; if slot4 <= slot89
		1937	[  0]	JMP  	 89		2	; 	goto 1940
		1938	[  0]	KPRI 	 89		1	; slot89 = false
		1939	[  0]	JMP  	 90		1	; 	goto 1941
		1940	[  0]	KPRI 	 89		2	; slot89 = true
		1941	[  0]	ISF  	   		89	; if not slot89
		1942	[  0]	JMP  	 90		16	; 	goto 1959
		1943	[  0]	UGET 	 90		0	; slot90 = uv0"unknwon"
		1944	[  0]	TDUP 	 91		247	; slot91 = copy table#k247
		1945	[  0]	TSETS	 69	91	246	; slot91.factionId = uv13"unknown".getForUnit
		1946	[  0]	TDUP 	 92		245	; slot92 = copy table#k245
		1947	[  0]	SUBVV	 93	82	88	; slot93 = math.floor - slot88
		1948	[  0]	TSETS	 93	92	384	; slot92.x = slot93
		1949	[  0]	SUBVV	 93	83	88	; slot93 = math.floor - slot88
		1950	[  0]	TSETS	 93	92	383	; slot92.y = slot93
		1951	[  0]	MULVN	 93	88	8	; slot93 = slot88 * 2
		1952	[  0]	ADDVV	 93	80	93	; slot93 = slot80 + slot93
		1953	[  0]	TSETS	 93	92	387	; slot92.w = slot93
		1954	[  0]	MULVN	 93	88	8	; slot93 = slot88 * 2
		1955	[  0]	ADDVV	 93	81	93	; slot93 = slot81 + slot93
		1956	[  0]	TSETS	 93	92	385	; slot92.h = slot93
		1957	[  0]	TSETS	 92	91	440	; slot91.anchor = slot92
		1958	[  0]	TSETS	 91	90	436	; uv0"unknown"._hoveredFaction = slot91
		1959	[  0]	ISF  	   		73	; if not slot73
		1960	[  0]	JMP  	 90		3	; 	goto 1964
		1961	[  0]	TGETS	 90	73	244	; slot90 = slot73.outline
		1962	[  0]	ISEQP	 90		1	; if <unknown table>.outline == false
		1963	[  0]	JMP  	 90		82	; 	goto 2046
		1964	[  0]	UGET 	 90		15	; slot90 = uv15"unknwon"
		1965	[  0]	CALL 	 90	2	1	; slot90 = uv15"unknown"()
		1966	[  0]	ISF  	   		90	; if not uv15"unknown"
		1967	[  0]	JMP  	 91		78	; 	goto 2046
		1968	[  0]	MOV  	 93		90	; slot93 = uv15"unknown"
		1969	[  0]	TGETS	 91	90	243	; slot91 = uv15"unknown".send
		1970	[  0]	KSTR 	 94		242	; slot94 = "texelStep"
		1971	[  0]	TNEW 	 95		3	; slot95 = new table( array: 3, dict: 1)
		1972	[  0]	DIVNV	 96	77	10	; slot96 = 1 / <unknown table>.getDimensions
		1973	[  0]	TSETB	 96	95	1	; slot95[1] = slot96
		1974	[  0]	DIVNV	 96	78	10	; slot96 = 1 / <unknown table>.dy
		1975	[  0]	TSETB	 96	95	2	; slot95[2] = slot96
		1976	[  0]	CALL 	 91	1	4	;  = uv15"unknown".send(slot92, uv15"unknown", slot94)
		1977	[  0]	ISFC 	 91		0	; slot91 = slot0; if not slot0
		1978	[  0]	JMP  	 91		5	; 	goto 1984
		1979	[  0]	TGETS	 91	0	368	; slot91 = slot0.imprintPanel
		1980	[  0]	ISF  	   		91	; if not <unknown table>.imprintPanel
		1981	[  0]	JMP  	 92		2	; 	goto 1984
		1982	[  0]	TGETS	 91	0	368	; slot91 = slot0.imprintPanel
		1983	[  0]	TGETS	 91	91	241	; slot91 = <unknown table>.imprintPanel.randomOption
		1984	[  0]	ISF  	   		91	; if not <unknown table>.imprintPanel.randomOption
		1985	[  0]	JMP  	 92		3	; 	goto 1989
		1986	[  0]	TGETS	 92	91	240	; slot92 = <unknown table>.imprintPanel.randomOption.outlineColor
		1987	[  0]	IST  	   		92	; if <unknown table>.imprintPanel.randomOption.outlineColor
		1988	[  0]	JMP  	 93		1	; 	goto 1990
		1989	[  0]	TDUP 	 92		239	; slot92 = copy table#k239
		1990	[  0]	MOV  	 95		90	; slot95 = uv15"unknown"
		1991	[  0]	TGETS	 93	90	243	; slot93 = uv15"unknown".send
		1992	[  0]	KSTR 	 96		240	; slot96 = "outlineColor"
		1993	[  0]	TNEW 	 97		5	; slot97 = new table( array: 5, dict: 1)
		1994	[  0]	TGETB	 98	92	1	; slot98 = slot92[1]
		1995	[  0]	TSETB	 98	97	1	; slot97[1] = slot98
		1996	[  0]	TGETB	 98	92	2	; slot98 = slot92[2]
		1997	[  0]	TSETB	 98	97	2	; slot97[2] = slot98
		1998	[  0]	TGETB	 98	92	3	; slot98 = slot92[3]
		1999	[  0]	TSETB	 98	97	3	; slot97[3] = slot98
		2000	[  0]	TGETB	 98	92	4	; slot98 = slot92[4]
		2001	[  0]	IST  	   		98	; if slot98
		2002	[  0]	JMP  	 99		1	; 	goto 2004
		2003	[  0]	KSHORT	 98		1	; slot98 = 1
		2004	[  0]	MULVV	 98	98	35	; slot98 = slot98 * slot35
		2005	[  0]	TSETB	 98	97	4	; slot97[4] = slot98
		2006	[  0]	CALL 	 93	1	4	;  = uv15"unknown".send(slot94, uv15"unknown", slot96)
		2007	[  0]	MOV  	 95		90	; slot95 = uv15"unknown"
		2008	[  0]	TGETS	 93	90	243	; slot93 = uv15"unknown".send
		2009	[  0]	KSTR 	 96		238	; slot96 = "threshold"
		2010	[  0]	KNUM 	 97		22	; slot97 = 0.05
		2011	[  0]	CALL 	 93	1	4	;  = uv15"unknown".send(slot94, uv15"unknown", slot96)
		2012	[  0]	MOV  	 95		90	; slot95 = uv15"unknown"
		2013	[  0]	TGETS	 93	90	243	; slot93 = uv15"unknown".send
		2014	[  0]	KSTR 	 96		237	; slot96 = "radiusPx"
		2015	[  0]	KNUM 	 97		23	; slot97 = 1.15
		2016	[  0]	CALL 	 93	1	4	;  = uv15"unknown".send(slot94, uv15"unknown", slot96)
		2017	[  0]	GGET 	 93		424	; slot93 = _env["love"]
		2018	[  0]	TGETS	 93	93	343	; slot93 = love.graphics
		2019	[  0]	TGETS	 93	93	310	; slot93 = love.graphics.setColor
		2020	[  0]	KSHORT	 95		1	; slot95 = 1
		2021	[  0]	KSHORT	 96		1	; slot96 = 1
		2022	[  0]	KSHORT	 97		1	; slot97 = 1
		2023	[  0]	MULNV	 98	35	10	; slot98 = 1 * slot35
		2024	[  0]	CALL 	 93	1	5	;  = love.graphics.setColor(slot94, slot95, slot96, slot97)
		2025	[  0]	GGET 	 93		424	; slot93 = _env["love"]
		2026	[  0]	TGETS	 93	93	343	; slot93 = love.graphics
		2027	[  0]	TGETS	 93	93	292	; slot93 = love.graphics.setShader
		2028	[  0]	MOV  	 95		90	; slot95 = uv15"unknown"
		2029	[  0]	CALL 	 93	1	2	;  = love.graphics.setShader(slot94)
		2030	[  0]	GGET 	 93		424	; slot93 = _env["love"]
		2031	[  0]	TGETS	 93	93	343	; slot93 = love.graphics
		2032	[  0]	TGETS	 93	93	309	; slot93 = love.graphics.draw
		2033	[  0]	MOV  	 95		71	; slot95 = slot71
		2034	[  0]	MOV  	 96		84	; slot96 = math.floor
		2035	[  0]	MOV  	 97		85	; slot97 = math.floor
		2036	[  0]	KSHORT	 98		0	; slot98 = 0
		2037	[  0]	MOV  	 99		79	; slot99 = math.max
		2038	[  0]	MOV  	100		79	; slot100 = math.max
		2039	[  0]	MOV  	101		86	; slot101 = slot86
		2040	[  0]	MOV  	102		87	; slot102 = slot87
		2041	[  0]	CALL 	 93	1	9	;  = love.graphics.draw(slot94, slot95, math.floor, math.floor, slot98, math.max, math.max, slot101)
		2042	[  0]	GGET 	 93		424	; slot93 = _env["love"]
		2043	[  0]	TGETS	 93	93	343	; slot93 = love.graphics
		2044	[  0]	TGETS	 93	93	292	; slot93 = love.graphics.setShader
		2045	[  0]	CALL 	 93	1	1	;  = love.graphics.setShader()
		2046	[  0]	GGET 	 90		424	; slot90 = _env["love"]
		2047	[  0]	TGETS	 90	90	343	; slot90 = love.graphics
		2048	[  0]	TGETS	 90	90	310	; slot90 = love.graphics.setColor
		2049	[  0]	KSHORT	 92		1	; slot92 = 1
		2050	[  0]	KSHORT	 93		1	; slot93 = 1
		2051	[  0]	KSHORT	 94		1	; slot94 = 1
		2052	[  0]	MULNV	 95	35	10	; slot95 = 1 * slot35
		2053	[  0]	CALL 	 90	1	5	;  = love.graphics.setColor(<unknown table>.imprintPanel.randomOption, slot92, slot93, slot94)
		2054	[  0]	GGET 	 90		424	; slot90 = _env["love"]
		2055	[  0]	TGETS	 90	90	343	; slot90 = love.graphics
		2056	[  0]	TGETS	 90	90	309	; slot90 = love.graphics.draw
		2057	[  0]	MOV  	 92		71	; slot92 = slot71
		2058	[  0]	MOV  	 93		84	; slot93 = math.floor
		2059	[  0]	MOV  	 94		85	; slot94 = math.floor
		2060	[  0]	KSHORT	 95		0	; slot95 = 0
		2061	[  0]	MOV  	 96		79	; slot96 = math.max
		2062	[  0]	MOV  	 97		79	; slot97 = math.max
		2063	[  0]	MOV  	 98		86	; slot98 = slot86
		2064	[  0]	MOV  	 99		87	; slot99 = slot87
		2065	[  0]	CALL 	 90	1	9	;  = love.graphics.draw(<unknown table>.imprintPanel.randomOption, slot92, math.floor, math.floor, slot95, math.max, math.max, slot98)
		2066	[  0]	ISF  	   		89	; if not slot89
		2067	[  0]	JMP  	 90		48	; 	goto 2116
		2068	[  0]	GGET 	 90		424	; slot90 = _env["love"]
		2069	[  0]	TGETS	 90	90	343	; slot90 = love.graphics
		2070	[  0]	TGETS	 90	90	236	; slot90 = love.graphics.getBlendMode
		2071	[  0]	CALL 	 90	3	1	; slot90, slot91 = love.graphics.getBlendMode()
		2072	[  0]	GGET 	 92		424	; slot92 = _env["love"]
		2073	[  0]	TGETS	 92	92	343	; slot92 = love.graphics
		2074	[  0]	TGETS	 92	92	235	; slot92 = love.graphics.setBlendMode
		2075	[  0]	KSTR 	 94		234	; slot94 = "add"
		2076	[  0]	KSTR 	 95		233	; slot95 = "alphamultiply"
		2077	[  0]	CALL 	 92	1	3	;  = love.graphics.setBlendMode(math.floor, slot94)
		2078	[  0]	GGET 	 92		424	; slot92 = _env["love"]
		2079	[  0]	TGETS	 92	92	343	; slot92 = love.graphics
		2080	[  0]	TGETS	 92	92	310	; slot92 = love.graphics.setColor
		2081	[  0]	KSHORT	 94		1	; slot94 = 1
		2082	[  0]	KSHORT	 95		1	; slot95 = 1
		2083	[  0]	KSHORT	 96		1	; slot96 = 1
		2084	[  0]	GGET 	 97		393	; slot97 = _env["tonumber"]
		2085	[  0]	ISFC 	 99		73	; slot99 = slot73; if not slot73
		2086	[  0]	JMP  	 99		1	; 	goto 2088
		2087	[  0]	TGETS	 99	73	232	; slot99 = slot73.hoverBrightAlpha
		2088	[  0]	CALL 	 97	2	2	; slot97 = tonumber(slot98)
		2089	[  0]	IST  	   		97	; if tonumber
		2090	[  0]	JMP  	 98		1	; 	goto 2092
		2091	[  0]	KNUM 	 97		24	; slot97 = 0.22
		2092	[  0]	MULVV	 97	97	35	; slot97 = slot97 * slot35
		2093	[  0]	CALL 	 92	1	5	;  = love.graphics.setColor(math.floor, slot94, slot95, slot96)
		2094	[  0]	GGET 	 92		424	; slot92 = _env["love"]
		2095	[  0]	TGETS	 92	92	343	; slot92 = love.graphics
		2096	[  0]	TGETS	 92	92	309	; slot92 = love.graphics.draw
		2097	[  0]	MOV  	 94		71	; slot94 = slot71
		2098	[  0]	MOV  	 95		84	; slot95 = math.floor
		2099	[  0]	MOV  	 96		85	; slot96 = math.floor
		2100	[  0]	KSHORT	 97		0	; slot97 = 0
		2101	[  0]	MOV  	 98		79	; slot98 = math.max
		2102	[  0]	MOV  	 99		79	; slot99 = math.max
		2103	[  0]	MOV  	100		86	; slot100 = slot86
		2104	[  0]	MOV  	101		87	; slot101 = slot87
		2105	[  0]	CALL 	 92	1	9	;  = love.graphics.draw(math.floor, slot94, math.floor, math.floor, slot97, math.max, math.max, slot100)
		2106	[  0]	GGET 	 92		424	; slot92 = _env["love"]
		2107	[  0]	TGETS	 92	92	343	; slot92 = love.graphics
		2108	[  0]	TGETS	 92	92	235	; slot92 = love.graphics.setBlendMode
		2109	[  0]	ISTC 	 94		90	; slot94 = love.graphics.getBlendMode; if love.graphics.getBlendMode
		2110	[  0]	JMP  	 94		1	; 	goto 2112
		2111	[  0]	KSTR 	 94		231	; slot94 = "alpha"
		2112	[  0]	ISTC 	 95		91	; slot95 = <unknown table>.imprintPanel.randomOption; if <unknown table>.imprintPanel.randomOption
		2113	[  0]	JMP  	 95		1	; 	goto 2115
		2114	[  0]	KSTR 	 95		233	; slot95 = "alphamultiply"
		2115	[  0]	CALL 	 92	1	3	;  = love.graphics.setBlendMode(math.floor, slot94)
		2116	[  0]	ADDVV	 72	82	80	; slot72 = math.floor + slot80
		2117	[  0]	KSHORT	 73		8	; slot73 = 8
		2118	[  0]	ISF  	   		39	; if not slot39
		2119	[  0]	JMP  	 74		3	; 	goto 2123
		2120	[  0]	TGETS	 74	39	230	; slot74 = slot39.infoIcon
		2121	[  0]	IST  	   		74	; if <unknown table>.infoIcon
		2122	[  0]	JMP  	 75		1	; 	goto 2124
		2123	[  0]	KPRI 	 74		0	; slot74 = nil
		2124	[  0]	UGET 	 75		16	; slot75 = uv16"unknwon"
		2125	[  0]	CALL 	 75	2	1	; slot75 = uv16"unknown"()
		2126	[  0]	GGET 	 76		398	; slot76 = _env["math"]
		2127	[  0]	TGETS	 76	76	313	; slot76 = math.max
		2128	[  0]	KNUM 	 78		21	; slot78 = 0.25
		2129	[  0]	GGET 	 79		393	; slot79 = _env["tonumber"]
		2130	[  0]	ISFC 	 81		74	; slot81 = slot74; if not slot74
		2131	[  0]	JMP  	 81		1	; 	goto 2133
		2132	[  0]	TGETS	 81	74	379	; slot81 = slot74.scale
		2133	[  0]	CALL 	 79	2	2	; slot79 = tonumber(slot80)
		2134	[  0]	IST  	   		79	; if tonumber
		2135	[  0]	JMP  	 80		1	; 	goto 2137
		2136	[  0]	KSHORT	 79		1	; slot79 = 1
		2137	[  0]	CALL 	 76	2	3	; slot76 = math.max(<unknown table>.getDimensions, slot78)
		2138	[  0]	ISF  	   		75	; if not uv16"unknown"
		2139	[  0]	JMP  	 77		5	; 	goto 2145
		2140	[  0]	MOV  	 79		75	; slot79 = uv16"unknown"
		2141	[  0]	TGETS	 77	75	382	; slot77 = uv16"unknown".getWidth
		2142	[  0]	CALL 	 77	2	2	; slot77 = uv16"unknown".getWidth(slot78)
		2143	[  0]	IST  	   		77	; if uv16"unknown".getWidth
		2144	[  0]	JMP  	 78		1	; 	goto 2146
		2145	[  0]	KSHORT	 77		16	; slot77 = 16
		2146	[  0]	ISF  	   		75	; if not uv16"unknown"
		2147	[  0]	JMP  	 78		5	; 	goto 2153
		2148	[  0]	MOV  	 80		75	; slot80 = uv16"unknown"
		2149	[  0]	TGETS	 78	75	381	; slot78 = uv16"unknown".getHeight
		2150	[  0]	CALL 	 78	2	2	; slot78 = uv16"unknown".getHeight(uv16"unknown")
		2151	[  0]	IST  	   		78	; if uv16"unknown".getHeight
		2152	[  0]	JMP  	 79		1	; 	goto 2154
		2153	[  0]	KSHORT	 78		16	; slot78 = 16
		2154	[  0]	GGET 	 79		398	; slot79 = _env["math"]
		2155	[  0]	TGETS	 79	79	313	; slot79 = math.max
		2156	[  0]	KSHORT	 81		1	; slot81 = 1
		2157	[  0]	GGET 	 82		398	; slot82 = _env["math"]
		2158	[  0]	TGETS	 82	82	380	; slot82 = math.floor
		2159	[  0]	GGET 	 84		398	; slot84 = _env["math"]
		2160	[  0]	TGETS	 84	84	313	; slot84 = math.max
		2161	[  0]	MOV  	 86		77	; slot86 = slot77
		2162	[  0]	MOV  	 87		78	; slot87 = slot78
		2163	[  0]	CALL 	 84	2	3	; slot84 = math.max(math.floor, slot86)
		2164	[  0]	MULVV	 84	84	76	; slot84 = math.max * math.max
		2165	[  0]	ADDVN	 84	84	6	; slot84 = slot84 + 0.5
		2166	[  0]	CALL 	 82	0	2	; MULTRES = math.floor(math.floor)
		2167	[  0]	CALLM	 79	2	1	; slot79 = math.max(uv16"unknown", ...MULTRES)
		2168	[  0]	GGET 	 80		393	; slot80 = _env["tonumber"]
		2169	[  0]	ISFC 	 82		74	; slot82 = slot74; if not slot74
		2170	[  0]	JMP  	 82		1	; 	goto 2172
		2171	[  0]	TGETS	 82	74	250	; slot82 = slot74.dx
		2172	[  0]	CALL 	 80	2	2	; slot80 = tonumber(slot81)
		2173	[  0]	IST  	   		80	; if tonumber
		2174	[  0]	JMP  	 81		1	; 	goto 2176
		2175	[  0]	KSHORT	 80		0	; slot80 = 0
		2176	[  0]	GGET 	 81		393	; slot81 = _env["tonumber"]
		2177	[  0]	ISFC 	 83		74	; slot83 = slot74; if not slot74
		2178	[  0]	JMP  	 83		1	; 	goto 2180
		2179	[  0]	TGETS	 83	74	249	; slot83 = slot74.dy
		2180	[  0]	CALL 	 81	2	2	; slot81 = tonumber(<unknown table>.dx)
		2181	[  0]	IST  	   		81	; if tonumber
		2182	[  0]	JMP  	 82		1	; 	goto 2184
		2183	[  0]	KSHORT	 81		0	; slot81 = 0
		2184	[  0]	MOV  	 84		50	; slot84 = love.graphics.getFont
		2185	[  0]	TGETS	 82	50	382	; slot82 = love.graphics.getFont.getWidth
		2186	[  0]	KSTR 	 85		229	; slot85 = "LV. 0"
		2187	[  0]	CALL 	 82	2	3	; slot82 = love.graphics.getFont.getWidth(<unknown table>.dy, love.graphics.getFont)
		2188	[  0]	MULVV	 82	82	51	; slot82 = love.graphics.getFont.getWidth * slot51
		2189	[  0]	GGET 	 83		398	; slot83 = _env["math"]
		2190	[  0]	TGETS	 83	83	380	; slot83 = math.floor
		2191	[  0]	ADDVV	 85	60	82	; slot85 = slot60 + slot82
		2192	[  0]	ADDVV	 85	85	73	; slot85 = slot85 + slot73
		2193	[  0]	ADDVV	 85	85	80	; slot85 = slot85 + slot80
		2194	[  0]	CALL 	 83	2	2	; slot83 = math.floor(love.graphics.getFont)
		2195	[  0]	GGET 	 84		398	; slot84 = _env["math"]
		2196	[  0]	TGETS	 84	84	380	; slot84 = math.floor
		2197	[  0]	SUBVV	 86	68	79	; slot86 = slot68 - math.max
		2198	[  0]	DIVVN	 86	86	8	; slot86 = slot86 / 2
		2199	[  0]	ADDVV	 86	61	86	; slot86 = slot61 + slot86
		2200	[  0]	ADDVV	 86	86	81	; slot86 = slot86 + slot81
		2201	[  0]	CALL 	 84	2	2	; slot84 = math.floor(slot85)
		2202	[  0]	ISF  	   		39	; if not slot39
		2203	[  0]	JMP  	 85		3	; 	goto 2207
		2204	[  0]	TGETS	 85	39	228	; slot85 = slot39.absorbLockIcon
		2205	[  0]	IST  	   		85	; if <unknown table>.absorbLockIcon
		2206	[  0]	JMP  	 86		1	; 	goto 2208
		2207	[  0]	KPRI 	 85		0	; slot85 = nil
		2208	[  0]	UGET 	 86		17	; slot86 = uv17"unknwon"
		2209	[  0]	CALL 	 86	2	1	; slot86 = uv17"unknown"()
		2210	[  0]	GGET 	 87		398	; slot87 = _env["math"]
		2211	[  0]	TGETS	 87	87	313	; slot87 = math.max
		2212	[  0]	KNUM 	 89		21	; slot89 = 0.25
		2213	[  0]	GGET 	 90		393	; slot90 = _env["tonumber"]
		2214	[  0]	ISFC 	 92		85	; slot92 = slot85; if not slot85
		2215	[  0]	JMP  	 92		1	; 	goto 2217
		2216	[  0]	TGETS	 92	85	379	; slot92 = slot85.scale
		2217	[  0]	CALL 	 90	2	2	; slot90 = tonumber(<unknown table>.imprintPanel.randomOption)
		2218	[  0]	IST  	   		90	; if tonumber
		2219	[  0]	JMP  	 91		1	; 	goto 2221
		2220	[  0]	KSHORT	 90		1	; slot90 = 1
		2221	[  0]	CALL 	 87	2	3	; slot87 = math.max(slot88, slot89)
		2222	[  0]	ISF  	   		86	; if not uv17"unknown"
		2223	[  0]	JMP  	 88		6	; 	goto 2230
		2224	[  0]	TGETS	 88	86	227	; slot88 = uv17"unknown".unlocked
		2225	[  0]	MOV  	 90		88	; slot90 = uv17"unknown".unlocked
		2226	[  0]	TGETS	 88	88	382	; slot88 = uv17"unknown".unlocked.getWidth
		2227	[  0]	CALL 	 88	2	2	; slot88 = uv17"unknown".unlocked.getWidth(slot89)
		2228	[  0]	IST  	   		88	; if uv17"unknown".unlocked.getWidth
		2229	[  0]	JMP  	 89		1	; 	goto 2231
		2230	[  0]	KSHORT	 88		14	; slot88 = 14
		2231	[  0]	ISF  	   		86	; if not uv17"unknown"
		2232	[  0]	JMP  	 89		6	; 	goto 2239
		2233	[  0]	TGETS	 89	86	227	; slot89 = uv17"unknown".unlocked
		2234	[  0]	MOV  	 91		89	; slot91 = uv17"unknown".unlocked
		2235	[  0]	TGETS	 89	89	381	; slot89 = uv17"unknown".unlocked.getHeight
		2236	[  0]	CALL 	 89	2	2	; slot89 = uv17"unknown".unlocked.getHeight(uv17"unknown".unlocked)
		2237	[  0]	IST  	   		89	; if uv17"unknown".unlocked.getHeight
		2238	[  0]	JMP  	 90		1	; 	goto 2240
		2239	[  0]	KSHORT	 89		14	; slot89 = 14
		2240	[  0]	GGET 	 90		398	; slot90 = _env["math"]
		2241	[  0]	TGETS	 90	90	313	; slot90 = math.max
		2242	[  0]	KSHORT	 92		1	; slot92 = 1
		2243	[  0]	GGET 	 93		398	; slot93 = _env["math"]
		2244	[  0]	TGETS	 93	93	380	; slot93 = math.floor
		2245	[  0]	MULVV	 95	88	87	; slot95 = slot88 * math.max
		2246	[  0]	ADDVN	 95	95	6	; slot95 = slot95 + 0.5
		2247	[  0]	CALL 	 93	0	2	; MULTRES = math.floor(slot94)
		2248	[  0]	CALLM	 90	2	1	; slot90 = math.max(uv17"unknown".unlocked, ...MULTRES)
		2249	[  0]	GGET 	 91		398	; slot91 = _env["math"]
		2250	[  0]	TGETS	 91	91	313	; slot91 = math.max
		2251	[  0]	KSHORT	 93		1	; slot93 = 1
		2252	[  0]	GGET 	 94		398	; slot94 = _env["math"]
		2253	[  0]	TGETS	 94	94	380	; slot94 = math.floor
		2254	[  0]	MULVV	 96	89	87	; slot96 = slot89 * math.max
		2255	[  0]	ADDVN	 96	96	6	; slot96 = slot96 + 0.5
		2256	[  0]	CALL 	 94	0	2	; MULTRES = math.floor(slot95)
		2257	[  0]	CALLM	 91	2	1	; slot91 = math.max(slot92, ...MULTRES)
		2258	[  0]	GGET 	 92		393	; slot92 = _env["tonumber"]
		2259	[  0]	ISFC 	 94		85	; slot94 = slot85; if not slot85
		2260	[  0]	JMP  	 94		1	; 	goto 2262
		2261	[  0]	TGETS	 94	85	251	; slot94 = slot85.gap
		2262	[  0]	CALL 	 92	2	2	; slot92 = tonumber(slot93)
		2263	[  0]	IST  	   		92	; if tonumber
		2264	[  0]	JMP  	 93		1	; 	goto 2266
		2265	[  0]	KSHORT	 92		4	; slot92 = 4
		2266	[  0]	GGET 	 93		398	; slot93 = _env["math"]
		2267	[  0]	TGETS	 93	93	380	; slot93 = math.floor
		2268	[  0]	ADDVV	 95	83	79	; slot95 = math.floor + math.max
		2269	[  0]	ADDVV	 95	95	92	; slot95 = slot95 + slot92
		2270	[  0]	GGET 	 96		393	; slot96 = _env["tonumber"]
		2271	[  0]	ISFC 	 98		85	; slot98 = slot85; if not slot85
		2272	[  0]	JMP  	 98		1	; 	goto 2274
		2273	[  0]	TGETS	 98	85	250	; slot98 = slot85.dx
		2274	[  0]	CALL 	 96	2	2	; slot96 = tonumber(slot97)
		2275	[  0]	IST  	   		96	; if tonumber
		2276	[  0]	JMP  	 97		1	; 	goto 2278
		2277	[  0]	KSHORT	 96		0	; slot96 = 0
		2278	[  0]	ADDVV	 95	95	96	; slot95 = slot95 + slot96
		2279	[  0]	CALL 	 93	2	2	; slot93 = math.floor(<unknown table>.gap)
		2280	[  0]	GGET 	 94		398	; slot94 = _env["math"]
		2281	[  0]	TGETS	 94	94	380	; slot94 = math.floor
		2282	[  0]	SUBVV	 96	79	91	; slot96 = math.max - math.max
		2283	[  0]	MULVN	 96	96	6	; slot96 = slot96 * 0.5
		2284	[  0]	ADDVV	 96	84	96	; slot96 = math.floor + slot96
		2285	[  0]	GGET 	 97		393	; slot97 = _env["tonumber"]
		2286	[  0]	ISFC 	 99		85	; slot99 = slot85; if not slot85
		2287	[  0]	JMP  	 99		1	; 	goto 2289
		2288	[  0]	TGETS	 99	85	249	; slot99 = slot85.dy
		2289	[  0]	CALL 	 97	2	2	; slot97 = tonumber(<unknown table>.dx)
		2290	[  0]	IST  	   		97	; if tonumber
		2291	[  0]	JMP  	 98		1	; 	goto 2293
		2292	[  0]	KSHORT	 97		0	; slot97 = 0
		2293	[  0]	ADDVV	 96	96	97	; slot96 = slot96 + slot97
		2294	[  0]	CALL 	 94	2	2	; slot94 = math.floor(slot95)
		2295	[  0]	KPRI 	 95		1	; slot95 = false
		2296	[  0]	KSHORT	 96		8	; slot96 = 8
		2297	[  0]	KSHORT	 97		0	; slot97 = 0
		2298	[  0]	KSHORT	 98		2	; slot98 = 2
		2299	[  0]	SUBVV	 99	83	96	; slot99 = math.floor - slot96
		2300	[  0]	SUBVV	100	84	98	; slot100 = math.floor - slot98
		2301	[  0]	ADDVV	101	79	96	; slot101 = math.max + slot96
		2302	[  0]	ADDVV	101	101	97	; slot101 = slot101 + slot97
		2303	[  0]	MULVN	102	98	8	; slot102 = slot98 * 2
		2304	[  0]	ADDVV	102	79	102	; slot102 = math.max + slot102
		2305	[  0]	ISGT 	 99		3	; if slot99 > slot3
		2306	[  0]	JMP  	103		9	; 	goto 2316
		2307	[  0]	ADDVV	103	99	101	; slot103 = slot99 + slot101
		2308	[  0]	ISGT 	  3		103	; if slot3 > slot103
		2309	[  0]	JMP  	103		6	; 	goto 2316
		2310	[  0]	ISGT 	100		4	; if slot100 > slot4
		2311	[  0]	JMP  	103		4	; 	goto 2316
		2312	[  0]	ADDVV	103	100	102	; slot103 = slot100 + slot102
		2313	[  0]	ISGT 	  4		103	; if slot4 > slot103
		2314	[  0]	JMP  	103		1	; 	goto 2316
		2315	[  0]	KPRI 	 95		2	; slot95 = true
		2316	[  0]	ISF  	   		75	; if not uv16"unknown"
		2317	[  0]	JMP  	103		79	; 	goto 2397
		2318	[  0]	GGET 	103		424	; slot103 = _env["love"]
		2319	[  0]	TGETS	103	103	343	; slot103 = love.graphics
		2320	[  0]	TGETS	103	103	310	; slot103 = love.graphics.setColor
		2321	[  0]	KSHORT	105		1	; slot105 = 1
		2322	[  0]	KSHORT	106		1	; slot106 = 1
		2323	[  0]	KSHORT	107		1	; slot107 = 1
		2324	[  0]	MULNV	108	35	10	; slot108 = 1 * slot35
		2325	[  0]	CALL 	103	1	5	;  = love.graphics.setColor(slot104, slot105, slot106, slot107)
		2326	[  0]	GGET 	103		398	; slot103 = _env["math"]
		2327	[  0]	TGETS	103	103	313	; slot103 = math.max
		2328	[  0]	KSHORT	105		1	; slot105 = 1
		2329	[  0]	MOV  	106		77	; slot106 = slot77
		2330	[  0]	CALL 	103	2	3	; slot103 = math.max(slot104, slot105)
		2331	[  0]	DIVVV	103	79	103	; slot103 = math.max / math.max
		2332	[  0]	GGET 	104		398	; slot104 = _env["math"]
		2333	[  0]	TGETS	104	104	313	; slot104 = math.max
		2334	[  0]	KSHORT	106		1	; slot106 = 1
		2335	[  0]	MOV  	107		78	; slot107 = slot78
		2336	[  0]	CALL 	104	2	3	; slot104 = math.max(slot105, slot106)
		2337	[  0]	DIVVV	104	79	104	; slot104 = math.max / math.max
		2338	[  0]	GGET 	105		424	; slot105 = _env["love"]
		2339	[  0]	TGETS	105	105	343	; slot105 = love.graphics
		2340	[  0]	TGETS	105	105	309	; slot105 = love.graphics.draw
		2341	[  0]	MOV  	107		75	; slot107 = uv16"unknown"
		2342	[  0]	MOV  	108		83	; slot108 = math.floor
		2343	[  0]	MOV  	109		84	; slot109 = math.floor
		2344	[  0]	KSHORT	110		0	; slot110 = 0
		2345	[  0]	MOV  	111		103	; slot111 = slot103
		2346	[  0]	MOV  	112		104	; slot112 = slot104
		2347	[  0]	CALL 	105	1	7	;  = love.graphics.draw(slot106, uv16"unknown", math.floor, math.floor, slot110, slot111)
		2348	[  0]	ISF  	   		95	; if not slot95
		2349	[  0]	JMP  	105		117	; 	goto 2467
		2350	[  0]	GGET 	105		424	; slot105 = _env["love"]
		2351	[  0]	TGETS	105	105	343	; slot105 = love.graphics
		2352	[  0]	TGETS	105	105	236	; slot105 = love.graphics.getBlendMode
		2353	[  0]	CALL 	105	3	1	; slot105, slot106 = love.graphics.getBlendMode()
		2354	[  0]	GGET 	107		424	; slot107 = _env["love"]
		2355	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		2356	[  0]	TGETS	107	107	235	; slot107 = love.graphics.setBlendMode
		2357	[  0]	KSTR 	109		234	; slot109 = "add"
		2358	[  0]	KSTR 	110		233	; slot110 = "alphamultiply"
		2359	[  0]	CALL 	107	1	3	;  = love.graphics.setBlendMode(math.floor, slot109)
		2360	[  0]	GGET 	107		424	; slot107 = _env["love"]
		2361	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		2362	[  0]	TGETS	107	107	310	; slot107 = love.graphics.setColor
		2363	[  0]	KSHORT	109		1	; slot109 = 1
		2364	[  0]	KSHORT	110		1	; slot110 = 1
		2365	[  0]	KSHORT	111		1	; slot111 = 1
		2366	[  0]	GGET 	112		393	; slot112 = _env["tonumber"]
		2367	[  0]	ISFC 	114		74	; slot114 = slot74; if not slot74
		2368	[  0]	JMP  	114		1	; 	goto 2370
		2369	[  0]	TGETS	114	74	232	; slot114 = slot74.hoverBrightAlpha
		2370	[  0]	CALL 	112	2	2	; slot112 = tonumber(slot113)
		2371	[  0]	IST  	   		112	; if tonumber
		2372	[  0]	JMP  	113		1	; 	goto 2374
		2373	[  0]	KNUM 	112		24	; slot112 = 0.22
		2374	[  0]	MULVV	112	112	35	; slot112 = slot112 * slot35
		2375	[  0]	CALL 	107	1	5	;  = love.graphics.setColor(math.floor, slot109, slot110, slot111)
		2376	[  0]	GGET 	107		424	; slot107 = _env["love"]
		2377	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		2378	[  0]	TGETS	107	107	309	; slot107 = love.graphics.draw
		2379	[  0]	MOV  	109		75	; slot109 = uv16"unknown"
		2380	[  0]	MOV  	110		83	; slot110 = math.floor
		2381	[  0]	MOV  	111		84	; slot111 = math.floor
		2382	[  0]	KSHORT	112		0	; slot112 = 0
		2383	[  0]	MOV  	113		103	; slot113 = slot103
		2384	[  0]	MOV  	114		104	; slot114 = slot104
		2385	[  0]	CALL 	107	1	7	;  = love.graphics.draw(math.floor, uv16"unknown", math.floor, math.floor, slot112, slot113)
		2386	[  0]	GGET 	107		424	; slot107 = _env["love"]
		2387	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		2388	[  0]	TGETS	107	107	235	; slot107 = love.graphics.setBlendMode
		2389	[  0]	ISTC 	109		105	; slot109 = love.graphics.getBlendMode; if love.graphics.getBlendMode
		2390	[  0]	JMP  	109		1	; 	goto 2392
		2391	[  0]	KSTR 	109		231	; slot109 = "alpha"
		2392	[  0]	ISTC 	110		106	; slot110 = slot106; if slot106
		2393	[  0]	JMP  	110		1	; 	goto 2395
		2394	[  0]	KSTR 	110		233	; slot110 = "alphamultiply"
		2395	[  0]	CALL 	107	1	3	;  = love.graphics.setBlendMode(math.floor, slot109)
		2396	[  0]	JMP  	103		70	; 	goto 2467
		2397	[  0]	GGET 	103		424	; slot103 = _env["love"]
		2398	[  0]	TGETS	103	103	343	; slot103 = love.graphics
		2399	[  0]	TGETS	103	103	310	; slot103 = love.graphics.setColor
		2400	[  0]	KNUM 	105		18	; slot105 = 0.2
		2401	[  0]	KNUM 	106		18	; slot106 = 0.2
		2402	[  0]	KNUM 	107		18	; slot107 = 0.2
		2403	[  0]	MULNV	108	35	20	; slot108 = 0.9 * slot35
		2404	[  0]	CALL 	103	1	5	;  = love.graphics.setColor(slot104, slot105, slot106, slot107)
		2405	[  0]	GGET 	103		424	; slot103 = _env["love"]
		2406	[  0]	TGETS	103	103	343	; slot103 = love.graphics
		2407	[  0]	TGETS	103	103	308	; slot103 = love.graphics.rectangle
		2408	[  0]	KSTR 	105		307	; slot105 = "fill"
		2409	[  0]	MOV  	106		83	; slot106 = math.floor
		2410	[  0]	MOV  	107		84	; slot107 = math.floor
		2411	[  0]	MOV  	108		79	; slot108 = math.max
		2412	[  0]	MOV  	109		79	; slot109 = math.max
		2413	[  0]	CALL 	103	1	6	;  = love.graphics.rectangle(slot104, slot105, math.floor, math.floor, math.max)
		2414	[  0]	GGET 	103		424	; slot103 = _env["love"]
		2415	[  0]	TGETS	103	103	343	; slot103 = love.graphics
		2416	[  0]	TGETS	103	103	310	; slot103 = love.graphics.setColor
		2417	[  0]	KNUM 	105		20	; slot105 = 0.9
		2418	[  0]	KNUM 	106		20	; slot106 = 0.9
		2419	[  0]	KNUM 	107		20	; slot107 = 0.9
		2420	[  0]	MULNV	108	35	10	; slot108 = 1 * slot35
		2421	[  0]	CALL 	103	1	5	;  = love.graphics.setColor(slot104, slot105, slot106, slot107)
		2422	[  0]	GGET 	103		424	; slot103 = _env["love"]
		2423	[  0]	TGETS	103	103	343	; slot103 = love.graphics
		2424	[  0]	TGETS	103	103	308	; slot103 = love.graphics.rectangle
		2425	[  0]	KSTR 	105		306	; slot105 = "line"
		2426	[  0]	ADDVN	106	83	6	; slot106 = math.floor + 0.5
		2427	[  0]	ADDVN	107	84	6	; slot107 = math.floor + 0.5
		2428	[  0]	SUBVN	108	79	10	; slot108 = math.max - 1
		2429	[  0]	SUBVN	109	79	10	; slot109 = math.max - 1
		2430	[  0]	CALL 	103	1	6	;  = love.graphics.rectangle(slot104, slot105, slot106, slot107, slot108)
		2431	[  0]	GGET 	103		398	; slot103 = _env["math"]
		2432	[  0]	TGETS	103	103	313	; slot103 = math.max
		2433	[  0]	KSHORT	105		1	; slot105 = 1
		2434	[  0]	GGET 	106		398	; slot106 = _env["math"]
		2435	[  0]	TGETS	106	106	380	; slot106 = math.floor
		2436	[  0]	DIVVN	108	79	5	; slot108 = math.max / 8
		2437	[  0]	CALL 	106	0	2	; MULTRES = math.floor(slot107)
		2438	[  0]	CALLM	103	2	1	; slot103 = math.max(slot104, ...MULTRES)
		2439	[  0]	GGET 	104		398	; slot104 = _env["math"]
		2440	[  0]	TGETS	104	104	380	; slot104 = math.floor
		2441	[  0]	SUBVV	106	79	103	; slot106 = math.max - math.max
		2442	[  0]	DIVVN	106	106	8	; slot106 = slot106 / 2
		2443	[  0]	CALL 	104	2	2	; slot104 = math.floor(slot105)
		2444	[  0]	ADDVV	104	83	104	; slot104 = math.floor + math.floor
		2445	[  0]	GGET 	105		424	; slot105 = _env["love"]
		2446	[  0]	TGETS	105	105	343	; slot105 = love.graphics
		2447	[  0]	TGETS	105	105	308	; slot105 = love.graphics.rectangle
		2448	[  0]	KSTR 	107		307	; slot107 = "fill"
		2449	[  0]	MOV  	108		104	; slot108 = slot104
		2450	[  0]	ADDVN	109	84	2	; slot109 = math.floor + 3
		2451	[  0]	MOV  	110		103	; slot110 = math.max
		2452	[  0]	MOV  	111		103	; slot111 = math.max
		2453	[  0]	CALL 	105	1	6	;  = love.graphics.rectangle(slot106, slot107, slot108, slot109, math.max)
		2454	[  0]	GGET 	105		424	; slot105 = _env["love"]
		2455	[  0]	TGETS	105	105	343	; slot105 = love.graphics
		2456	[  0]	TGETS	105	105	308	; slot105 = love.graphics.rectangle
		2457	[  0]	KSTR 	107		307	; slot107 = "fill"
		2458	[  0]	MOV  	108		104	; slot108 = slot104
		2459	[  0]	ADDVN	109	84	25	; slot109 = math.floor + 6
		2460	[  0]	MOV  	110		103	; slot110 = math.max
		2461	[  0]	GGET 	111		398	; slot111 = _env["math"]
		2462	[  0]	TGETS	111	111	313	; slot111 = math.max
		2463	[  0]	KSHORT	113		2	; slot113 = 2
		2464	[  0]	SUBVN	114	79	26	; slot114 = math.max - 9
		2465	[  0]	CALL 	111	0	3	; MULTRES = math.max(slot112, slot113)
		2466	[  0]	CALLM	105	1	4	;  = love.graphics.rectangle(slot106, slot107, slot108, slot109, ...MULTRES)
		2467	[  0]	ISF  	   		12	; if not slot12
		2468	[  0]	JMP  	103		158	; 	goto 2627
		2469	[  0]	KSHORT	103		2	; slot103 = 2
		2470	[  0]	SUBVV	104	93	103	; slot104 = math.floor - slot103
		2471	[  0]	ISGT 	104		3	; if slot104 > slot3
		2472	[  0]	JMP  	104		11	; 	goto 2484
		2473	[  0]	ADDVV	104	93	90	; slot104 = math.floor + math.max
		2474	[  0]	ADDVV	104	104	103	; slot104 = slot104 + slot103
		2475	[  0]	ISGT 	  3		104	; if slot3 > slot104
		2476	[  0]	JMP  	104		7	; 	goto 2484
		2477	[  0]	SUBVV	104	94	103	; slot104 = math.floor - slot103
		2478	[  0]	ISGT 	104		4	; if slot104 > slot4
		2479	[  0]	JMP  	104		4	; 	goto 2484
		2480	[  0]	ADDVV	104	94	91	; slot104 = math.floor + math.max
		2481	[  0]	ADDVV	104	104	103	; slot104 = slot104 + slot103
		2482	[  0]	ISLE 	  4		104	; if slot4 <= slot104
		2483	[  0]	JMP  	104		2	; 	goto 2486
		2484	[  0]	KPRI 	104		1	; slot104 = false
		2485	[  0]	JMP  	105		1	; 	goto 2487
		2486	[  0]	KPRI 	104		2	; slot104 = true
		2487	[  0]	TGETS	105	12	226	; slot105 = slot12.absorbLocked
		2488	[  0]	ISEQP	105		2	; if <unknown table>.absorbLocked == true
		2489	[  0]	JMP  	105		2	; 	goto 2492
		2490	[  0]	KPRI 	105		1	; slot105 = false
		2491	[  0]	JMP  	106		1	; 	goto 2493
		2492	[  0]	KPRI 	105		2	; slot105 = true
		2493	[  0]	ISF  	   		86	; if not uv17"unknown"
		2494	[  0]	JMP  	106		8	; 	goto 2503
		2495	[  0]	ISF  	   		105	; if not slot105
		2496	[  0]	JMP  	106		3	; 	goto 2500
		2497	[  0]	TGETS	106	86	225	; slot106 = uv17"unknown".locked
		2498	[  0]	IST  	   		106	; if uv17"unknown".locked
		2499	[  0]	JMP  	107		4	; 	goto 2504
		2500	[  0]	TGETS	106	86	227	; slot106 = uv17"unknown".unlocked
		2501	[  0]	IST  	   		106	; if uv17"unknown".unlocked
		2502	[  0]	JMP  	107		1	; 	goto 2504
		2503	[  0]	KPRI 	106		0	; slot106 = nil
		2504	[  0]	ISF  	   		106	; if not slot106
		2505	[  0]	JMP  	107		83	; 	goto 2589
		2506	[  0]	GGET 	107		398	; slot107 = _env["math"]
		2507	[  0]	TGETS	107	107	313	; slot107 = math.max
		2508	[  0]	KSHORT	109		1	; slot109 = 1
		2509	[  0]	MOV  	112		106	; slot112 = slot106
		2510	[  0]	TGETS	110	106	382	; slot110 = slot106.getWidth
		2511	[  0]	CALL 	110	0	2	; MULTRES = <unknown table>.getWidth(math.max)
		2512	[  0]	CALLM	107	2	1	; slot107 = math.max(slot108, ...MULTRES)
		2513	[  0]	DIVVV	107	90	107	; slot107 = math.max / math.max
		2514	[  0]	GGET 	108		398	; slot108 = _env["math"]
		2515	[  0]	TGETS	108	108	313	; slot108 = math.max
		2516	[  0]	KSHORT	110		1	; slot110 = 1
		2517	[  0]	MOV  	113		106	; slot113 = slot106
		2518	[  0]	TGETS	111	106	381	; slot111 = slot106.getHeight
		2519	[  0]	CALL 	111	0	2	; MULTRES = <unknown table>.getHeight(slot112)
		2520	[  0]	CALLM	108	2	1	; slot108 = math.max(slot109, ...MULTRES)
		2521	[  0]	DIVVV	108	91	108	; slot108 = math.max / math.max
		2522	[  0]	GGET 	109		424	; slot109 = _env["love"]
		2523	[  0]	TGETS	109	109	343	; slot109 = love.graphics
		2524	[  0]	TGETS	109	109	310	; slot109 = love.graphics.setColor
		2525	[  0]	KSHORT	111		1	; slot111 = 1
		2526	[  0]	KSHORT	112		1	; slot112 = 1
		2527	[  0]	KSHORT	113		1	; slot113 = 1
		2528	[  0]	MULNV	114	35	10	; slot114 = 1 * slot35
		2529	[  0]	CALL 	109	1	5	;  = love.graphics.setColor(slot110, slot111, slot112, slot113)
		2530	[  0]	GGET 	109		424	; slot109 = _env["love"]
		2531	[  0]	TGETS	109	109	343	; slot109 = love.graphics
		2532	[  0]	TGETS	109	109	309	; slot109 = love.graphics.draw
		2533	[  0]	MOV  	111		106	; slot111 = slot106
		2534	[  0]	MOV  	112		93	; slot112 = math.floor
		2535	[  0]	MOV  	113		94	; slot113 = math.floor
		2536	[  0]	KSHORT	114		0	; slot114 = 0
		2537	[  0]	MOV  	115		107	; slot115 = slot107
		2538	[  0]	MOV  	116		108	; slot116 = slot108
		2539	[  0]	CALL 	109	1	7	;  = love.graphics.draw(slot110, slot111, math.floor, math.floor, slot114, slot115)
		2540	[  0]	ISF  	   		104	; if not slot104
		2541	[  0]	JMP  	109		68	; 	goto 2610
		2542	[  0]	GGET 	109		424	; slot109 = _env["love"]
		2543	[  0]	TGETS	109	109	343	; slot109 = love.graphics
		2544	[  0]	TGETS	109	109	236	; slot109 = love.graphics.getBlendMode
		2545	[  0]	CALL 	109	3	1	; slot109, slot110 = love.graphics.getBlendMode()
		2546	[  0]	GGET 	111		424	; slot111 = _env["love"]
		2547	[  0]	TGETS	111	111	343	; slot111 = love.graphics
		2548	[  0]	TGETS	111	111	235	; slot111 = love.graphics.setBlendMode
		2549	[  0]	KSTR 	113		234	; slot113 = "add"
		2550	[  0]	KSTR 	114		233	; slot114 = "alphamultiply"
		2551	[  0]	CALL 	111	1	3	;  = love.graphics.setBlendMode(math.floor, slot113)
		2552	[  0]	GGET 	111		424	; slot111 = _env["love"]
		2553	[  0]	TGETS	111	111	343	; slot111 = love.graphics
		2554	[  0]	TGETS	111	111	310	; slot111 = love.graphics.setColor
		2555	[  0]	KSHORT	113		1	; slot113 = 1
		2556	[  0]	KSHORT	114		1	; slot114 = 1
		2557	[  0]	KSHORT	115		1	; slot115 = 1
		2558	[  0]	GGET 	116		393	; slot116 = _env["tonumber"]
		2559	[  0]	ISFC 	118		85	; slot118 = slot85; if not slot85
		2560	[  0]	JMP  	118		1	; 	goto 2562
		2561	[  0]	TGETS	118	85	232	; slot118 = slot85.hoverBrightAlpha
		2562	[  0]	CALL 	116	2	2	; slot116 = tonumber(slot117)
		2563	[  0]	IST  	   		116	; if tonumber
		2564	[  0]	JMP  	117		1	; 	goto 2566
		2565	[  0]	KNUM 	116		21	; slot116 = 0.25
		2566	[  0]	MULVV	116	116	35	; slot116 = slot116 * slot35
		2567	[  0]	CALL 	111	1	5	;  = love.graphics.setColor(math.floor, slot113, slot114, slot115)
		2568	[  0]	GGET 	111		424	; slot111 = _env["love"]
		2569	[  0]	TGETS	111	111	343	; slot111 = love.graphics
		2570	[  0]	TGETS	111	111	309	; slot111 = love.graphics.draw
		2571	[  0]	MOV  	113		106	; slot113 = slot106
		2572	[  0]	MOV  	114		93	; slot114 = math.floor
		2573	[  0]	MOV  	115		94	; slot115 = math.floor
		2574	[  0]	KSHORT	116		0	; slot116 = 0
		2575	[  0]	MOV  	117		107	; slot117 = slot107
		2576	[  0]	MOV  	118		108	; slot118 = slot108
		2577	[  0]	CALL 	111	1	7	;  = love.graphics.draw(math.floor, slot113, math.floor, math.floor, slot116, slot117)
		2578	[  0]	GGET 	111		424	; slot111 = _env["love"]
		2579	[  0]	TGETS	111	111	343	; slot111 = love.graphics
		2580	[  0]	TGETS	111	111	235	; slot111 = love.graphics.setBlendMode
		2581	[  0]	ISTC 	113		109	; slot113 = love.graphics.getBlendMode; if love.graphics.getBlendMode
		2582	[  0]	JMP  	113		1	; 	goto 2584
		2583	[  0]	KSTR 	113		231	; slot113 = "alpha"
		2584	[  0]	ISTC 	114		110	; slot114 = slot110; if slot110
		2585	[  0]	JMP  	114		1	; 	goto 2587
		2586	[  0]	KSTR 	114		233	; slot114 = "alphamultiply"
		2587	[  0]	CALL 	111	1	3	;  = love.graphics.setBlendMode(math.floor, slot113)
		2588	[  0]	JMP  	107		21	; 	goto 2610
		2589	[  0]	GGET 	107		424	; slot107 = _env["love"]
		2590	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		2591	[  0]	TGETS	107	107	310	; slot107 = love.graphics.setColor
		2592	[  0]	ISF  	   		105	; if not slot105
		2593	[  0]	JMP  	109		2	; 	goto 2596
		2594	[  0]	KNUM 	109		27	; slot109 = 0.75
		2595	[  0]	JMP  	110		1	; 	goto 2597
		2596	[  0]	KNUM 	109		16	; slot109 = 0.45
		2597	[  0]	KNUM 	110		16	; slot110 = 0.45
		2598	[  0]	KNUM 	111		1	; slot111 = 0.8
		2599	[  0]	MULNV	112	35	10	; slot112 = 1 * slot35
		2600	[  0]	CALL 	107	1	5	;  = love.graphics.setColor(slot108, slot109, slot110, slot111)
		2601	[  0]	GGET 	107		424	; slot107 = _env["love"]
		2602	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		2603	[  0]	TGETS	107	107	308	; slot107 = love.graphics.rectangle
		2604	[  0]	KSTR 	109		306	; slot109 = "line"
		2605	[  0]	ADDVN	110	93	6	; slot110 = math.floor + 0.5
		2606	[  0]	ADDVN	111	94	6	; slot111 = math.floor + 0.5
		2607	[  0]	SUBVN	112	90	10	; slot112 = math.max - 1
		2608	[  0]	SUBVN	113	91	10	; slot113 = math.max - 1
		2609	[  0]	CALL 	107	1	6	;  = love.graphics.rectangle(slot108, slot109, slot110, slot111, slot112)
		2610	[  0]	UGET 	107		0	; slot107 = uv0"unknwon"
		2611	[  0]	TDUP 	108		224	; slot108 = copy table#k224
		2612	[  0]	SUBVV	109	93	103	; slot109 = math.floor - slot103
		2613	[  0]	TSETS	109	108	384	; slot108.x = slot109
		2614	[  0]	SUBVV	109	94	103	; slot109 = math.floor - slot103
		2615	[  0]	TSETS	109	108	383	; slot108.y = slot109
		2616	[  0]	MULVN	109	103	8	; slot109 = slot103 * 2
		2617	[  0]	ADDVV	109	90	109	; slot109 = math.max + slot109
		2618	[  0]	TSETS	109	108	387	; slot108.w = slot109
		2619	[  0]	MULVN	109	103	8	; slot109 = slot103 * 2
		2620	[  0]	ADDVV	109	91	109	; slot109 = math.max + slot109
		2621	[  0]	TSETS	109	108	385	; slot108.h = slot109
		2622	[  0]	TSETS	108	107	435	; uv0"unknown"._absorbLockRect = slot108
		2623	[  0]	UGET 	107		0	; slot107 = uv0"unknwon"
		2624	[  0]	TSETS	 12	107	434	; uv0"unknown"._absorbLockUnit = slot12
		2625	[  0]	UGET 	107		0	; slot107 = uv0"unknwon"
		2626	[  0]	TSETS	 11	107	433	; uv0"unknown"._absorbLockDisplayUnit = uv1"unknown".lastUnit
		2627	[  0]	TGETS	103	0	368	; slot103 = slot0.imprintPanel
		2628	[  0]	ISF  	   		103	; if not <unknown table>.imprintPanel
		2629	[  0]	JMP  	104		2	; 	goto 2632
		2630	[  0]	TGETS	103	0	368	; slot103 = slot0.imprintPanel
		2631	[  0]	TGETS	103	103	223	; slot103 = <unknown table>.imprintPanel.promotionBar
		2632	[  0]	TGETS	104	0	368	; slot104 = slot0.imprintPanel
		2633	[  0]	KSHORT	105		0	; slot105 = 0
		2634	[  0]	ISF  	   		103	; if not <unknown table>.imprintPanel.promotionBar
		2635	[  0]	JMP  	106		11	; 	goto 2647
		2636	[  0]	TGETS	106	103	337	; slot106 = <unknown table>.imprintPanel.promotionBar.offsetX
		2637	[  0]	ISF  	   		106	; if not <unknown table>.imprintPanel.promotionBar.offsetX
		2638	[  0]	JMP  	107		8	; 	goto 2647
		2639	[  0]	UGET 	106		5	; slot106 = uv5"unknwon"
		2640	[  0]	TGETS	108	103	337	; slot108 = <unknown table>.imprintPanel.promotionBar.offsetX
		2641	[  0]	IST  	   		108	; if <unknown table>.imprintPanel.promotionBar.offsetX
		2642	[  0]	JMP  	109		1	; 	goto 2644
		2643	[  0]	KSHORT	108		0	; slot108 = 0
		2644	[  0]	MULVV	108	108	29	; slot108 = slot108 * slot29
		2645	[  0]	CALL 	106	2	2	; slot106 = uv5"unknown"(uv0"unknown")
		2646	[  0]	MOV  	105		106	; slot105 = uv5"unknown"
		2647	[  0]	ISFC 	106		103	; slot106 = <unknown table>.imprintPanel.promotionBar; if not <unknown table>.imprintPanel.promotionBar
		2648	[  0]	JMP  	106		1	; 	goto 2650
		2649	[  0]	TGETS	106	103	335	; slot106 = <unknown table>.imprintPanel.promotionBar.offsetY
		2650	[  0]	GGET 	107		393	; slot107 = _env["tonumber"]
		2651	[  0]	MOV  	109		106	; slot109 = <unknown table>.imprintPanel.promotionBar.offsetY
		2652	[  0]	CALL 	107	2	2	; slot107 = tonumber(slot108)
		2653	[  0]	MOV  	106		107	; slot106 = tonumber
		2654	[  0]	ISNEP	106		0	; if tonumber ~= nil
		2655	[  0]	JMP  	107		1	; 	goto 2657
		2656	[  0]	KSHORT	106		6	; slot106 = 6
		2657	[  0]	MULVV	106	106	29	; slot106 = slot106 * slot29
		2658	[  0]	KSHORT	107		3	; slot107 = 3
		2659	[  0]	UGET 	108		5	; slot108 = uv5"unknwon"
		2660	[  0]	MULNV	110	29	4	; slot110 = 10 * slot29
		2661	[  0]	CALL 	108	2	2	; slot108 = uv5"unknown"(<unknown table>.imprintPanel.promotionBar.offsetY)
		2662	[  0]	UGET 	109		5	; slot109 = uv5"unknwon"
		2663	[  0]	MULVN	111	108	8	; slot111 = uv5"unknown" * 2
		2664	[  0]	SUBVV	111	31	111	; slot111 = uv4"unknown".getWidth - slot111
		2665	[  0]	CALL 	109	2	2	; slot109 = uv5"unknown"(slot110)
		2666	[  0]	MOV  	110		109	; slot110 = uv5"unknown"
		2667	[  0]	UGET 	111		5	; slot111 = uv5"unknwon"
		2668	[  0]	ADDVV	113	32	108	; slot113 = uv5"unknown" + uv5"unknown"
		2669	[  0]	CALL 	111	2	2	; slot111 = uv5"unknown"(slot112)
		2670	[  0]	TGETS	112	0	368	; slot112 = slot0.imprintPanel
		2671	[  0]	ISF  	   		112	; if not <unknown table>.imprintPanel
		2672	[  0]	JMP  	113		41	; 	goto 2714
		2673	[  0]	GGET 	113		393	; slot113 = _env["tonumber"]
		2674	[  0]	TGETS	115	112	222	; slot115 = <unknown table>.imprintPanel.slotW
		2675	[  0]	CALL 	113	2	2	; slot113 = tonumber(slot114)
		2676	[  0]	ISF  	   		113	; if not tonumber
		2677	[  0]	JMP  	114		26	; 	goto 2704
		2678	[  0]	KSHORT	114		0	; slot114 = 0
		2679	[  0]	ISGE 	114		113	; if slot114 >= tonumber
		2680	[  0]	JMP  	114		23	; 	goto 2704
		2681	[  0]	UGET 	114		5	; slot114 = uv5"unknwon"
		2682	[  0]	MULVV	116	113	29	; slot116 = tonumber * slot29
		2683	[  0]	CALL 	114	2	2	; slot114 = uv5"unknown"(<unknown table>.imprintPanel.slotW)
		2684	[  0]	GGET 	115		398	; slot115 = _env["math"]
		2685	[  0]	TGETS	115	115	313	; slot115 = math.max
		2686	[  0]	KSHORT	117		60	; slot117 = 60
		2687	[  0]	GGET 	118		398	; slot118 = _env["math"]
		2688	[  0]	TGETS	118	118	221	; slot118 = math.min
		2689	[  0]	MOV  	120		109	; slot120 = uv5"unknown"
		2690	[  0]	MOV  	121		114	; slot121 = uv5"unknown"
		2691	[  0]	CALL 	118	0	3	; MULTRES = math.min(slot119, uv5"unknown")
		2692	[  0]	CALLM	115	2	1	; slot115 = math.max(slot116, ...MULTRES)
		2693	[  0]	MOV  	114		115	; slot114 = math.max
		2694	[  0]	MOV  	110		114	; slot110 = math.max
		2695	[  0]	UGET 	115		5	; slot115 = uv5"unknwon"
		2696	[  0]	UGET 	117		5	; slot117 = uv5"unknwon"
		2697	[  0]	ADDVV	119	32	108	; slot119 = uv5"unknown" + uv5"unknown"
		2698	[  0]	CALL 	117	2	2	; slot117 = uv5"unknown"(math.min)
		2699	[  0]	SUBVV	118	109	110	; slot118 = uv5"unknown" - math.max
		2700	[  0]	MULVN	118	118	6	; slot118 = slot118 * 0.5
		2701	[  0]	ADDVV	117	117	118	; slot117 = uv5"unknown" + slot118
		2702	[  0]	CALL 	115	2	2	; slot115 = uv5"unknown"(slot116)
		2703	[  0]	MOV  	111		115	; slot111 = uv5"unknown"
		2704	[  0]	GGET 	114		393	; slot114 = _env["tonumber"]
		2705	[  0]	TGETS	116	112	220	; slot116 = <unknown table>.imprintPanel.slotX
		2706	[  0]	CALL 	114	2	2	; slot114 = tonumber(uv5"unknown")
		2707	[  0]	ISF  	   		114	; if not tonumber
		2708	[  0]	JMP  	115		5	; 	goto 2714
		2709	[  0]	UGET 	115		5	; slot115 = uv5"unknwon"
		2710	[  0]	MULVV	117	114	29	; slot117 = tonumber * slot29
		2711	[  0]	ADDVV	117	32	117	; slot117 = uv5"unknown" + slot117
		2712	[  0]	CALL 	115	2	2	; slot115 = uv5"unknown"(<unknown table>.imprintPanel.slotX)
		2713	[  0]	MOV  	111		115	; slot111 = uv5"unknown"
		2714	[  0]	ISF  	   		103	; if not <unknown table>.imprintPanel.promotionBar
		2715	[  0]	JMP  	113		8	; 	goto 2724
		2716	[  0]	TGETS	113	103	219	; slot113 = <unknown table>.imprintPanel.promotionBar.width
		2717	[  0]	ISF  	   		113	; if not <unknown table>.imprintPanel.promotionBar.width
		2718	[  0]	JMP  	114		5	; 	goto 2724
		2719	[  0]	UGET 	113		5	; slot113 = uv5"unknwon"
		2720	[  0]	TGETS	115	103	219	; slot115 = <unknown table>.imprintPanel.promotionBar.width
		2721	[  0]	MULVV	115	115	29	; slot115 = <unknown table>.imprintPanel.promotionBar.width * slot29
		2722	[  0]	CALL 	113	2	2	; slot113 = uv5"unknown"(tonumber)
		2723	[  0]	MOV  	110		113	; slot110 = uv5"unknown"
		2724	[  0]	TGETS	113	11	218	; slot113 = uv1"unknown".lastUnit.rank
		2725	[  0]	IST  	   		113	; if uv1"unknown".lastUnit.rank
		2726	[  0]	JMP  	114		1	; 	goto 2728
		2727	[  0]	KSHORT	113		1	; slot113 = 1
		2728	[  0]	TGETS	114	11	217	; slot114 = uv1"unknown".lastUnit.jackpot5th
		2729	[  0]	ISNEP	114		2	; if uv1"unknown".lastUnit.jackpot5th ~= true
		2730	[  0]	JMP  	114		2	; 	goto 2733
		2731	[  0]	KSTR 	114		267	; slot114 = "prism"
		2732	[  0]	JMP  	115		4	; 	goto 2737
		2733	[  0]	TGETS	114	11	358	; slot114 = uv1"unknown".lastUnit.grade
		2734	[  0]	IST  	   		114	; if uv1"unknown".lastUnit.grade
		2735	[  0]	JMP  	115		1	; 	goto 2737
		2736	[  0]	KSTR 	114		216	; slot114 = "normal"
		2737	[  0]	GGET 	115		398	; slot115 = _env["math"]
		2738	[  0]	TGETS	115	115	313	; slot115 = math.max
		2739	[  0]	KSHORT	117		0	; slot117 = 0
		2740	[  0]	GGET 	118		398	; slot118 = _env["math"]
		2741	[  0]	TGETS	118	118	380	; slot118 = math.floor
		2742	[  0]	GGET 	120		393	; slot120 = _env["tonumber"]
		2743	[  0]	ISF  	   		11	; if not uv1"unknown".lastUnit
		2744	[  0]	JMP  	122		3	; 	goto 2748
		2745	[  0]	TGETS	122	11	266	; slot122 = uv1"unknown".lastUnit.absorbLV
		2746	[  0]	IST  	   		122	; if uv1"unknown".lastUnit.absorbLV
		2747	[  0]	JMP  	123		1	; 	goto 2749
		2748	[  0]	KSHORT	122		0	; slot122 = 0
		2749	[  0]	CALL 	120	2	2	; slot120 = tonumber(uv5"unknown")
		2750	[  0]	IST  	   		120	; if tonumber
		2751	[  0]	JMP  	121		1	; 	goto 2753
		2752	[  0]	KSHORT	120		0	; slot120 = 0
		2753	[  0]	CALL 	118	0	2	; MULTRES = math.floor(slot119)
		2754	[  0]	CALLM	115	2	1	; slot115 = math.max(<unknown table>.imprintPanel.slotX, ...MULTRES)
		2755	[  0]	UGET 	116		18	; slot116 = uv18"unknwon"
		2756	[  0]	TGETS	116	116	215	; slot116 = uv18"unknown".evolution
		2757	[  0]	TGETS	116	116	214	; slot116 = uv18"unknown".evolution.rankThresholds
		2758	[  0]	TGETV	116	116	114	; slot116 = uv18"unknown".evolution.rankThresholds[slot114]
		2759	[  0]	ISFC 	117		116	; slot117 = slot116; if not slot116
		2760	[  0]	JMP  	117		2	; 	goto 2763
		2761	[  0]	ADDVN	117	113	10	; slot117 = slot113 + 1
		2762	[  0]	TGETV	117	116	117	; slot117 = slot116[slot117]
		2763	[  0]	KSHORT	118		0	; slot118 = 0
		2764	[  0]	ISF  	   		116	; if not slot116
		2765	[  0]	JMP  	119		4	; 	goto 2770
		2766	[  0]	TGETV	119	116	113	; slot119 = slot116[slot113]
		2767	[  0]	ISF  	   		119	; if not slot119
		2768	[  0]	JMP  	120		1	; 	goto 2770
		2769	[  0]	TGETV	118	116	113	; slot118 = slot116[slot113]
		2770	[  0]	KSHORT	119		0	; slot119 = 0
		2771	[  0]	ISF  	   		10	; if not <unknown table>.absorber
		2772	[  0]	JMP  	120		56	; 	goto 2829
		2773	[  0]	ISF  	   		9	; if not slot9
		2774	[  0]	JMP  	120		54	; 	goto 2829
		2775	[  0]	TGETS	120	9	263	; slot120 = slot9.preview
		2776	[  0]	ISF  	   		120	; if not <unknown table>.preview
		2777	[  0]	JMP  	121		51	; 	goto 2829
		2778	[  0]	GGET 	120		398	; slot120 = _env["math"]
		2779	[  0]	TGETS	120	120	313	; slot120 = math.max
		2780	[  0]	KSHORT	122		0	; slot122 = 0
		2781	[  0]	GGET 	123		398	; slot123 = _env["math"]
		2782	[  0]	TGETS	123	123	380	; slot123 = math.floor
		2783	[  0]	GGET 	125		393	; slot125 = _env["tonumber"]
		2784	[  0]	TGETS	127	9	263	; slot127 = slot9.preview
		2785	[  0]	TGETS	127	127	262	; slot127 = <unknown table>.preview.totalAbsorbLvGain
		2786	[  0]	IST  	   		127	; if <unknown table>.preview.totalAbsorbLvGain
		2787	[  0]	JMP  	128		1	; 	goto 2789
		2788	[  0]	KSHORT	127		0	; slot127 = 0
		2789	[  0]	CALL 	125	2	2	; slot125 = tonumber(slot126)
		2790	[  0]	IST  	   		125	; if tonumber
		2791	[  0]	JMP  	126		1	; 	goto 2793
		2792	[  0]	KSHORT	125		0	; slot125 = 0
		2793	[  0]	CALL 	123	0	2	; MULTRES = math.floor(slot124)
		2794	[  0]	CALLM	120	2	1	; slot120 = math.max(uv5"unknown", ...MULTRES)
		2795	[  0]	GGET 	121		398	; slot121 = _env["math"]
		2796	[  0]	TGETS	121	121	313	; slot121 = math.max
		2797	[  0]	KSHORT	123		0	; slot123 = 0
		2798	[  0]	GGET 	124		398	; slot124 = _env["math"]
		2799	[  0]	TGETS	124	124	380	; slot124 = math.floor
		2800	[  0]	GGET 	126		393	; slot126 = _env["tonumber"]
		2801	[  0]	TGETS	128	9	263	; slot128 = slot9.preview
		2802	[  0]	TGETS	128	128	261	; slot128 = <unknown table>.preview.convertBonus
		2803	[  0]	IST  	   		128	; if <unknown table>.preview.convertBonus
		2804	[  0]	JMP  	129		1	; 	goto 2806
		2805	[  0]	KSHORT	128		0	; slot128 = 0
		2806	[  0]	CALL 	126	2	2	; slot126 = tonumber(slot127)
		2807	[  0]	IST  	   		126	; if tonumber
		2808	[  0]	JMP  	127		1	; 	goto 2810
		2809	[  0]	KSHORT	126		0	; slot126 = 0
		2810	[  0]	CALL 	124	0	2	; MULTRES = math.floor(slot125)
		2811	[  0]	CALLM	121	2	1	; slot121 = math.max(slot122, ...MULTRES)
		2812	[  0]	TGETS	122	9	263	; slot122 = slot9.preview
		2813	[  0]	TGETS	122	122	260	; slot122 = <unknown table>.preview.convertAvailable
		2814	[  0]	ISF  	   		122	; if not <unknown table>.preview.convertAvailable
		2815	[  0]	JMP  	123		12	; 	goto 2828
		2816	[  0]	UGET 	122		1	; slot122 = uv1"unknwon"
		2817	[  0]	TGETS	122	122	259	; slot122 = uv1"unknown".convertHovering
		2818	[  0]	ISF  	   		122	; if not uv1"unknown".convertHovering
		2819	[  0]	JMP  	123		2	; 	goto 2822
		2820	[  0]	ADDVV	119	120	121	; slot119 = math.max + math.max
		2821	[  0]	JMP  	122		7	; 	goto 2829
		2822	[  0]	UGET 	122		1	; slot122 = uv1"unknwon"
		2823	[  0]	TGETS	122	122	426	; slot122 = uv1"unknown".replaceHovering
		2824	[  0]	ISF  	   		122	; if not uv1"unknown".replaceHovering
		2825	[  0]	JMP  	123		3	; 	goto 2829
		2826	[  0]	MOV  	119		120	; slot119 = math.max
		2827	[  0]	JMP  	122		1	; 	goto 2829
		2828	[  0]	MOV  	119		120	; slot119 = math.max
		2829	[  0]	MOV  	120		110	; slot120 = uv5"unknown"
		2830	[  0]	GGET 	121		398	; slot121 = _env["math"]
		2831	[  0]	TGETS	121	121	380	; slot121 = math.floor
		2832	[  0]	MULVV	123	107	29	; slot123 = slot107 * slot29
		2833	[  0]	ADDVN	123	123	6	; slot123 = slot123 + 0.5
		2834	[  0]	CALL 	121	2	2	; slot121 = math.floor(uv1"unknown".replaceHovering)
		2835	[  0]	ADDVV	122	111	105	; slot122 = uv5"unknown" + uv5"unknown"
		2836	[  0]	UGET 	123		5	; slot123 = uv5"unknwon"
		2837	[  0]	ADDVV	125	61	68	; slot125 = slot61 + slot68
		2838	[  0]	ADDVV	125	125	106	; slot125 = slot125 + slot106
		2839	[  0]	CALL 	123	2	2	; slot123 = uv5"unknown"(math.floor)
		2840	[  0]	KSHORT	124		0	; slot124 = 0
		2841	[  0]	MOV  	125		122	; slot125 = slot122
		2842	[  0]	MOV  	126		120	; slot126 = uv5"unknown"
		2843	[  0]	ISF  	   		103	; if not <unknown table>.imprintPanel.promotionBar
		2844	[  0]	JMP  	127		3	; 	goto 2848
		2845	[  0]	TGETS	127	103	213	; slot127 = <unknown table>.imprintPanel.promotionBar.fillColor
		2846	[  0]	IST  	   		127	; if <unknown table>.imprintPanel.promotionBar.fillColor
		2847	[  0]	JMP  	128		1	; 	goto 2849
		2848	[  0]	TDUP 	127		212	; slot127 = copy table#k212
		2849	[  0]	ISF  	   		103	; if not <unknown table>.imprintPanel.promotionBar
		2850	[  0]	JMP  	128		3	; 	goto 2854
		2851	[  0]	TGETS	128	103	211	; slot128 = <unknown table>.imprintPanel.promotionBar.previewColor
		2852	[  0]	IST  	   		128	; if <unknown table>.imprintPanel.promotionBar.previewColor
		2853	[  0]	JMP  	129		1	; 	goto 2855
		2854	[  0]	MOV  	128		127	; slot128 = slot127
		2855	[  0]	ISF  	   		103	; if not <unknown table>.imprintPanel.promotionBar
		2856	[  0]	JMP  	129		3	; 	goto 2860
		2857	[  0]	TGETS	129	103	210	; slot129 = <unknown table>.imprintPanel.promotionBar.bgColor
		2858	[  0]	IST  	   		129	; if <unknown table>.imprintPanel.promotionBar.bgColor
		2859	[  0]	JMP  	130		1	; 	goto 2861
		2860	[  0]	TDUP 	129		209	; slot129 = copy table#k209
		2861	[  0]	ISF  	   		103	; if not <unknown table>.imprintPanel.promotionBar
		2862	[  0]	JMP  	130		3	; 	goto 2866
		2863	[  0]	TGETS	130	103	208	; slot130 = <unknown table>.imprintPanel.promotionBar.borderColor
		2864	[  0]	IST  	   		130	; if <unknown table>.imprintPanel.promotionBar.borderColor
		2865	[  0]	JMP  	131		1	; 	goto 2867
		2866	[  0]	TDUP 	130		207	; slot130 = copy table#k207
		2867	[  0]	ISF  	   		103	; if not <unknown table>.imprintPanel.promotionBar
		2868	[  0]	JMP  	131		3	; 	goto 2872
		2869	[  0]	TGETS	131	103	206	; slot131 = <unknown table>.imprintPanel.promotionBar.accentColor
		2870	[  0]	IST  	   		131	; if <unknown table>.imprintPanel.promotionBar.accentColor
		2871	[  0]	JMP  	132		1	; 	goto 2873
		2872	[  0]	TDUP 	131		205	; slot131 = copy table#k205
		2873	[  0]	UGET 	132		19	; slot132 = uv19"unknwon"
		2874	[  0]	TGETS	132	132	204	; slot132 = uv19"unknown".drawTrack
		2875	[  0]	TDUP 	134		203	; slot134 = copy table#k203
		2876	[  0]	TSETS	125	134	384	; slot134.x = slot125
		2877	[  0]	TSETS	123	134	383	; slot134.y = uv5"unknown"
		2878	[  0]	TSETS	126	134	387	; slot134.w = uv5"unknown"
		2879	[  0]	TSETS	121	134	385	; slot134.h = math.floor
		2880	[  0]	TSETS	129	134	210	; slot134.bgColor = slot129
		2881	[  0]	TSETS	 35	134	202	; slot134.alphaMul = slot35
		2882	[  0]	CALL 	132	1	2	;  = uv19"unknown".drawTrack(slot133)
		2883	[  0]	ISF  	   		117	; if not slot117
		2884	[  0]	JMP  	132		303	; 	goto 3188
		2885	[  0]	SUBVV	132	117	118	; slot132 = slot117 - slot118
		2886	[  0]	SUBVV	133	115	118	; slot133 = math.max - slot118
		2887	[  0]	ISNEN	118		3	; if slot118 ~= 0
		2888	[  0]	JMP  	134		12	; 	goto 2901
		2889	[  0]	GGET 	134		398	; slot134 = _env["math"]
		2890	[  0]	TGETS	134	134	313	; slot134 = math.max
		2891	[  0]	KSHORT	136		1	; slot136 = 1
		2892	[  0]	SUBVN	137	117	10	; slot137 = slot117 - 1
		2893	[  0]	CALL 	134	2	3	; slot134 = math.max(slot135, slot136)
		2894	[  0]	MOV  	132		134	; slot132 = math.max
		2895	[  0]	GGET 	134		398	; slot134 = _env["math"]
		2896	[  0]	TGETS	134	134	313	; slot134 = math.max
		2897	[  0]	KSHORT	136		0	; slot136 = 0
		2898	[  0]	SUBVN	137	115	10	; slot137 = math.max - 1
		2899	[  0]	CALL 	134	2	3	; slot134 = math.max(slot135, slot136)
		2900	[  0]	MOV  	133		134	; slot133 = math.max
		2901	[  0]	KSHORT	134		0	; slot134 = 0
		2902	[  0]	KSHORT	135		0	; slot135 = 0
		2903	[  0]	ISGE 	135		132	; if slot135 >= math.max
		2904	[  0]	JMP  	135		10	; 	goto 2915
		2905	[  0]	GGET 	135		398	; slot135 = _env["math"]
		2906	[  0]	TGETS	135	135	313	; slot135 = math.max
		2907	[  0]	KSHORT	137		0	; slot137 = 0
		2908	[  0]	GGET 	138		398	; slot138 = _env["math"]
		2909	[  0]	TGETS	138	138	221	; slot138 = math.min
		2910	[  0]	KSHORT	140		1	; slot140 = 1
		2911	[  0]	DIVVV	141	133	132	; slot141 = math.max / math.max
		2912	[  0]	CALL 	138	0	3	; MULTRES = math.min(slot139, slot140)
		2913	[  0]	CALLM	135	2	1	; slot135 = math.max(slot136, ...MULTRES)
		2914	[  0]	MOV  	134		135	; slot134 = math.max
		2915	[  0]	MOV  	135		121	; slot135 = math.floor
		2916	[  0]	MOV  	136		120	; slot136 = uv5"unknown"
		2917	[  0]	UGET 	137		19	; slot137 = uv19"unknwon"
		2918	[  0]	TGETS	137	137	201	; slot137 = uv19"unknown".drawFill
		2919	[  0]	TDUP 	139		200	; slot139 = copy table#k200
		2920	[  0]	TSETS	125	139	384	; slot139.x = slot125
		2921	[  0]	TSETS	123	139	383	; slot139.y = uv5"unknown"
		2922	[  0]	TSETS	136	139	387	; slot139.w = uv5"unknown"
		2923	[  0]	TSETS	135	139	385	; slot139.h = math.floor
		2924	[  0]	TSETS	134	139	394	; slot139.progress = math.max
		2925	[  0]	TSETS	127	139	213	; slot139.fillColor = slot127
		2926	[  0]	TSETS	128	139	211	; slot139.previewColor = slot128
		2927	[  0]	ISF  	   		103	; if not <unknown table>.imprintPanel.promotionBar
		2928	[  0]	JMP  	140		3	; 	goto 2932
		2929	[  0]	TGETS	140	103	199	; slot140 = <unknown table>.imprintPanel.promotionBar.bloom
		2930	[  0]	IST  	   		140	; if <unknown table>.imprintPanel.promotionBar.bloom
		2931	[  0]	JMP  	141		1	; 	goto 2933
		2932	[  0]	KPRI 	140		0	; slot140 = nil
		2933	[  0]	TSETS	140	139	199	; slot139.bloom = slot140
		2934	[  0]	TSETS	 35	139	202	; slot139.alphaMul = slot35
		2935	[  0]	TSETS	 29	139	379	; slot139.scale = slot29
		2936	[  0]	CALL 	137	1	2	;  = uv19"unknown".drawFill(math.min)
		2937	[  0]	KSHORT	137		0	; slot137 = 0
		2938	[  0]	ISGE 	137		119	; if slot137 >= math.max
		2939	[  0]	JMP  	137		132	; 	goto 3072
		2940	[  0]	ISFC 	137		103	; slot137 = <unknown table>.imprintPanel.promotionBar; if not <unknown table>.imprintPanel.promotionBar
		2941	[  0]	JMP  	137		1	; 	goto 2943
		2942	[  0]	TGETS	137	103	198	; slot137 = <unknown table>.imprintPanel.promotionBar.previewAlphaMin
		2943	[  0]	ISFC 	138		103	; slot138 = <unknown table>.imprintPanel.promotionBar; if not <unknown table>.imprintPanel.promotionBar
		2944	[  0]	JMP  	138		1	; 	goto 2946
		2945	[  0]	TGETS	138	103	197	; slot138 = <unknown table>.imprintPanel.promotionBar.previewAlphaMax
		2946	[  0]	ISFC 	139		103	; slot139 = <unknown table>.imprintPanel.promotionBar; if not <unknown table>.imprintPanel.promotionBar
		2947	[  0]	JMP  	139		1	; 	goto 2949
		2948	[  0]	TGETS	139	103	196	; slot139 = <unknown table>.imprintPanel.promotionBar.previewPulseHz
		2949	[  0]	ISFC 	140		103	; slot140 = <unknown table>.imprintPanel.promotionBar; if not <unknown table>.imprintPanel.promotionBar
		2950	[  0]	JMP  	140		1	; 	goto 2952
		2951	[  0]	TGETS	140	103	195	; slot140 = <unknown table>.imprintPanel.promotionBar.previewWhiteMixMax
		2952	[  0]	ISNEP	137		0	; if <unknown table>.imprintPanel.promotionBar.previewAlphaMin ~= nil
		2953	[  0]	JMP  	141		1	; 	goto 2955
		2954	[  0]	KSHORT	137		0	; slot137 = 0
		2955	[  0]	ISNEP	138		0	; if <unknown table>.imprintPanel.promotionBar.previewAlphaMax ~= nil
		2956	[  0]	JMP  	141		1	; 	goto 2958
		2957	[  0]	KNUM 	138		9	; slot138 = 0.95
		2958	[  0]	ISNEP	139		0	; if <unknown table>.imprintPanel.promotionBar.previewPulseHz ~= nil
		2959	[  0]	JMP  	141		1	; 	goto 2961
		2960	[  0]	KNUM 	139		28	; slot139 = 1.6
		2961	[  0]	ISNEP	140		0	; if <unknown table>.imprintPanel.promotionBar.previewWhiteMixMax ~= nil
		2962	[  0]	JMP  	141		1	; 	goto 2964
		2963	[  0]	KSHORT	140		1	; slot140 = 1
		2964	[  0]	GGET 	141		398	; slot141 = _env["math"]
		2965	[  0]	TGETS	141	141	282	; slot141 = math.sin
		2966	[  0]	GGET 	143		424	; slot143 = _env["love"]
		2967	[  0]	TGETS	143	143	423	; slot143 = love.timer
		2968	[  0]	TGETS	143	143	422	; slot143 = love.timer.getTime
		2969	[  0]	CALL 	143	2	1	; slot143 = love.timer.getTime()
		2970	[  0]	GGET 	144		398	; slot144 = _env["math"]
		2971	[  0]	TGETS	144	144	283	; slot144 = math.pi
		2972	[  0]	MULVN	144	144	8	; slot144 = math.pi * 2
		2973	[  0]	MULVV	143	143	144	; slot143 = love.timer.getTime * slot144
		2974	[  0]	MULVV	143	143	139	; slot143 = slot143 * slot139
		2975	[  0]	CALL 	141	2	2	; slot141 = math.sin(slot142)
		2976	[  0]	MULNV	141	141	6	; slot141 = 0.5 * math.sin
		2977	[  0]	ADDNV	141	141	6	; slot141 = 0.5 + slot141
		2978	[  0]	SUBVV	142	138	137	; slot142 = slot138 - slot137
		2979	[  0]	MULVV	142	142	141	; slot142 = slot142 * slot141
		2980	[  0]	ADDVV	142	137	142	; slot142 = slot137 + slot142
		2981	[  0]	GGET 	143		398	; slot143 = _env["math"]
		2982	[  0]	TGETS	143	143	313	; slot143 = math.max
		2983	[  0]	KSHORT	145		0	; slot145 = 0
		2984	[  0]	MOV  	146		133	; slot146 = math.max
		2985	[  0]	CALL 	143	2	3	; slot143 = math.max(slot144, slot145)
		2986	[  0]	GGET 	144		398	; slot144 = _env["math"]
		2987	[  0]	TGETS	144	144	313	; slot144 = math.max
		2988	[  0]	KSHORT	146		0	; slot146 = 0
		2989	[  0]	ADDVV	147	133	119	; slot147 = math.max + math.max
		2990	[  0]	CALL 	144	2	3	; slot144 = math.max(slot145, slot146)
		2991	[  0]	GGET 	145		398	; slot145 = _env["math"]
		2992	[  0]	TGETS	145	145	380	; slot145 = math.floor
		2993	[  0]	DIVVV	147	143	132	; slot147 = math.max / math.max
		2994	[  0]	MULVV	147	147	136	; slot147 = slot147 * uv5"unknown"
		2995	[  0]	ADDVV	147	125	147	; slot147 = slot125 + slot147
		2996	[  0]	CALL 	145	2	2	; slot145 = math.floor(slot146)
		2997	[  0]	GGET 	146		398	; slot146 = _env["math"]
		2998	[  0]	TGETS	146	146	380	; slot146 = math.floor
		2999	[  0]	GGET 	148		398	; slot148 = _env["math"]
		3000	[  0]	TGETS	148	148	221	; slot148 = math.min
		3001	[  0]	KSHORT	150		1	; slot150 = 1
		3002	[  0]	DIVVV	151	144	132	; slot151 = math.max / math.max
		3003	[  0]	CALL 	148	2	3	; slot148 = math.min(slot149, slot150)
		3004	[  0]	MULVV	148	148	136	; slot148 = math.min * uv5"unknown"
		3005	[  0]	ADDVV	148	125	148	; slot148 = slot125 + slot148
		3006	[  0]	CALL 	146	2	2	; slot146 = math.floor(slot147)
		3007	[  0]	SUBVV	147	146	145	; slot147 = math.floor - math.floor
		3008	[  0]	KSHORT	148		0	; slot148 = 0
		3009	[  0]	ISGE 	148		147	; if slot148 >= slot147
		3010	[  0]	JMP  	148		61	; 	goto 3072
		3011	[  0]	GGET 	148		398	; slot148 = _env["math"]
		3012	[  0]	TGETS	148	148	313	; slot148 = math.max
		3013	[  0]	KSHORT	150		0	; slot150 = 0
		3014	[  0]	GGET 	151		398	; slot151 = _env["math"]
		3015	[  0]	TGETS	151	151	221	; slot151 = math.min
		3016	[  0]	KSHORT	153		1	; slot153 = 1
		3017	[  0]	MULVV	154	140	141	; slot154 = slot140 * slot141
		3018	[  0]	CALL 	151	0	3	; MULTRES = math.min(slot152, slot153)
		3019	[  0]	CALLM	148	2	1	; slot148 = math.max(slot149, ...MULTRES)
		3020	[  0]	TGETB	149	128	1	; slot149 = slot128[1]
		3021	[  0]	TGETB	150	128	1	; slot150 = slot128[1]
		3022	[  0]	SUBNV	150	150	10	; slot150 = 1 - slot150
		3023	[  0]	MULVV	150	150	148	; slot150 = slot150 * math.max
		3024	[  0]	ADDVV	149	149	150	; slot149 = slot149 + slot150
		3025	[  0]	TGETB	150	128	2	; slot150 = slot128[2]
		3026	[  0]	TGETB	151	128	2	; slot151 = slot128[2]
		3027	[  0]	SUBNV	151	151	10	; slot151 = 1 - slot151
		3028	[  0]	MULVV	151	151	148	; slot151 = slot151 * math.max
		3029	[  0]	ADDVV	150	150	151	; slot150 = slot150 + slot151
		3030	[  0]	TGETB	151	128	3	; slot151 = slot128[3]
		3031	[  0]	TGETB	152	128	3	; slot152 = slot128[3]
		3032	[  0]	SUBNV	152	152	10	; slot152 = 1 - slot152
		3033	[  0]	MULVV	152	152	148	; slot152 = slot152 * math.max
		3034	[  0]	ADDVV	151	151	152	; slot151 = slot151 + slot152
		3035	[  0]	GGET 	152		424	; slot152 = _env["love"]
		3036	[  0]	TGETS	152	152	343	; slot152 = love.graphics
		3037	[  0]	TGETS	152	152	310	; slot152 = love.graphics.setColor
		3038	[  0]	MOV  	154		149	; slot154 = slot149
		3039	[  0]	MOV  	155		150	; slot155 = slot150
		3040	[  0]	MOV  	156		151	; slot156 = slot151
		3041	[  0]	TGETB	157	128	4	; slot157 = slot128[4]
		3042	[  0]	MULVV	157	157	142	; slot157 = slot157 * slot142
		3043	[  0]	MULVV	157	157	35	; slot157 = slot157 * slot35
		3044	[  0]	CALL 	152	1	5	;  = love.graphics.setColor(slot153, slot154, slot155, slot156)
		3045	[  0]	GGET 	152		424	; slot152 = _env["love"]
		3046	[  0]	TGETS	152	152	343	; slot152 = love.graphics
		3047	[  0]	TGETS	152	152	308	; slot152 = love.graphics.rectangle
		3048	[  0]	KSTR 	154		307	; slot154 = "fill"
		3049	[  0]	MOV  	155		145	; slot155 = math.floor
		3050	[  0]	MOV  	156		123	; slot156 = uv5"unknown"
		3051	[  0]	MOV  	157		147	; slot157 = slot147
		3052	[  0]	MOV  	158		135	; slot158 = math.floor
		3053	[  0]	CALL 	152	1	6	;  = love.graphics.rectangle(slot153, slot154, math.floor, uv5"unknown", slot157)
		3054	[  0]	GGET 	152		424	; slot152 = _env["love"]
		3055	[  0]	TGETS	152	152	343	; slot152 = love.graphics
		3056	[  0]	TGETS	152	152	310	; slot152 = love.graphics.setColor
		3057	[  0]	KSHORT	154		1	; slot154 = 1
		3058	[  0]	KSHORT	155		1	; slot155 = 1
		3059	[  0]	KSHORT	156		1	; slot156 = 1
		3060	[  0]	MULNV	157	142	29	; slot157 = 0.35 * slot142
		3061	[  0]	MULVV	157	157	35	; slot157 = slot157 * slot35
		3062	[  0]	CALL 	152	1	5	;  = love.graphics.setColor(slot153, slot154, slot155, slot156)
		3063	[  0]	GGET 	152		424	; slot152 = _env["love"]
		3064	[  0]	TGETS	152	152	343	; slot152 = love.graphics
		3065	[  0]	TGETS	152	152	308	; slot152 = love.graphics.rectangle
		3066	[  0]	KSTR 	154		306	; slot154 = "line"
		3067	[  0]	ADDVN	155	145	6	; slot155 = math.floor + 0.5
		3068	[  0]	ADDVN	156	123	6	; slot156 = uv5"unknown" + 0.5
		3069	[  0]	SUBVN	157	147	10	; slot157 = slot147 - 1
		3070	[  0]	SUBVN	158	135	10	; slot158 = math.floor - 1
		3071	[  0]	CALL 	152	1	6	;  = love.graphics.rectangle(slot153, slot154, slot155, slot156, slot157)
		3072	[  0]	KSHORT	137		30	; slot137 = 30
		3073	[  0]	ISGE 	132		137	; if math.max >= slot137
		3074	[  0]	JMP  	137		17	; 	goto 3092
		3075	[  0]	UGET 	137		19	; slot137 = uv19"unknwon"
		3076	[  0]	TGETS	137	137	194	; slot137 = uv19"unknown".drawGrid
		3077	[  0]	TDUP 	139		193	; slot139 = copy table#k193
		3078	[  0]	TSETS	125	139	384	; slot139.x = slot125
		3079	[  0]	TSETS	123	139	383	; slot139.y = uv5"unknown"
		3080	[  0]	TSETS	136	139	387	; slot139.w = uv5"unknown"
		3081	[  0]	TSETS	135	139	385	; slot139.h = math.floor
		3082	[  0]	TSETS	132	139	275	; slot139.steps = math.max
		3083	[  0]	ISF  	   		103	; if not <unknown table>.imprintPanel.promotionBar
		3084	[  0]	JMP  	140		3	; 	goto 3088
		3085	[  0]	TGETS	140	103	192	; slot140 = <unknown table>.imprintPanel.promotionBar.gridColor
		3086	[  0]	IST  	   		140	; if <unknown table>.imprintPanel.promotionBar.gridColor
		3087	[  0]	JMP  	141		1	; 	goto 3089
		3088	[  0]	TDUP 	140		191	; slot140 = copy table#k191
		3089	[  0]	TSETS	140	139	192	; slot139.gridColor = slot140
		3090	[  0]	TSETS	 35	139	202	; slot139.alphaMul = slot35
		3091	[  0]	CALL 	137	1	2	;  = uv19"unknown".drawGrid(slot138)
		3092	[  0]	GGET 	137		264	; slot137 = _env["tostring"]
		3093	[  0]	MOV  	139		115	; slot139 = math.max
		3094	[  0]	CALL 	137	2	2	; slot137 = tostring(slot138)
		3095	[  0]	KSTR 	138		190	; slot138 = " / "
		3096	[  0]	GGET 	139		264	; slot139 = _env["tostring"]
		3097	[  0]	MOV  	141		117	; slot141 = slot117
		3098	[  0]	CALL 	139	2	2	; slot139 = tostring(slot140)
		3099	[  0]	CAT  	137	137	139	; slot137 = tostring .. slot138 .. tostring
		3100	[  0]	UGET 	138		8	; slot138 = uv8"unknwon"
		3101	[  0]	CALL 	138	2	1	; slot138 = uv8"unknown"()
		3102	[  0]	ISF  	   		138	; if not uv8"unknown"
		3103	[  0]	JMP  	139		186	; 	goto 3290
		3104	[  0]	GGET 	139		424	; slot139 = _env["love"]
		3105	[  0]	TGETS	139	139	343	; slot139 = love.graphics
		3106	[  0]	TGETS	139	139	280	; slot139 = love.graphics.getFont
		3107	[  0]	CALL 	139	2	1	; slot139 = love.graphics.getFont()
		3108	[  0]	GGET 	140		424	; slot140 = _env["love"]
		3109	[  0]	TGETS	140	140	343	; slot140 = love.graphics
		3110	[  0]	TGETS	140	140	305	; slot140 = love.graphics.setFont
		3111	[  0]	MOV  	142		138	; slot142 = uv8"unknown"
		3112	[  0]	CALL 	140	1	2	;  = love.graphics.setFont(slot141)
		3113	[  0]	ISF  	   		103	; if not <unknown table>.imprintPanel.promotionBar
		3114	[  0]	JMP  	140		3	; 	goto 3118
		3115	[  0]	TGETS	140	103	189	; slot140 = <unknown table>.imprintPanel.promotionBar.textScale
		3116	[  0]	IST  	   		140	; if <unknown table>.imprintPanel.promotionBar.textScale
		3117	[  0]	JMP  	141		1	; 	goto 3119
		3118	[  0]	KNUM 	140		30	; slot140 = 1.3
		3119	[  0]	ISF  	   		103	; if not <unknown table>.imprintPanel.promotionBar
		3120	[  0]	JMP  	141		3	; 	goto 3124
		3121	[  0]	TGETS	141	103	188	; slot141 = <unknown table>.imprintPanel.promotionBar.textOffsetX
		3122	[  0]	IST  	   		141	; if <unknown table>.imprintPanel.promotionBar.textOffsetX
		3123	[  0]	JMP  	142		1	; 	goto 3125
		3124	[  0]	KSHORT	141		0	; slot141 = 0
		3125	[  0]	MULVV	141	141	29	; slot141 = slot141 * slot29
		3126	[  0]	ISF  	   		103	; if not <unknown table>.imprintPanel.promotionBar
		3127	[  0]	JMP  	142		4	; 	goto 3132
		3128	[  0]	KSTR 	142		187	; slot142 = "textOffsetY"
		3129	[  0]	TGETV	142	103	142	; slot142 = <unknown table>.imprintPanel.promotionBar[slot142]
		3130	[  0]	IST  	   		142	; if slot142
		3131	[  0]	JMP  	143		1	; 	goto 3133
		3132	[  0]	KSHORT	142		0	; slot142 = 0
		3133	[  0]	MULVV	142	142	29	; slot142 = slot142 * slot29
		3134	[  0]	ISF  	   		103	; if not <unknown table>.imprintPanel.promotionBar
		3135	[  0]	JMP  	143		4	; 	goto 3140
		3136	[  0]	KSTR 	143		186	; slot143 = "textColor"
		3137	[  0]	TGETV	143	103	143	; slot143 = <unknown table>.imprintPanel.promotionBar[slot143]
		3138	[  0]	IST  	   		143	; if slot143
		3139	[  0]	JMP  	144		1	; 	goto 3141
		3140	[  0]	TDUP 	143		185	; slot143 = copy table#k185
		3141	[  0]	MOV  	146		138	; slot146 = uv8"unknown"
		3142	[  0]	TGETS	144	138	382	; slot144 = uv8"unknown".getWidth
		3143	[  0]	MOV  	147		137	; slot147 = slot137
		3144	[  0]	CALL 	144	2	3	; slot144 = uv8"unknown".getWidth(math.floor, uv8"unknown")
		3145	[  0]	MULVV	144	144	140	; slot144 = uv8"unknown".getWidth * slot140
		3146	[  0]	MOV  	147		138	; slot147 = uv8"unknown"
		3147	[  0]	TGETS	145	138	381	; slot145 = uv8"unknown".getHeight
		3148	[  0]	CALL 	145	2	2	; slot145 = uv8"unknown".getHeight(uv8"unknown")
		3149	[  0]	MULVV	145	145	140	; slot145 = uv8"unknown".getHeight * slot140
		3150	[  0]	GGET 	146		398	; slot146 = _env["math"]
		3151	[  0]	TGETS	146	146	380	; slot146 = math.floor
		3152	[  0]	ADDVV	148	125	141	; slot148 = slot125 + slot141
		3153	[  0]	CALL 	146	2	2	; slot146 = math.floor(uv8"unknown")
		3154	[  0]	GGET 	147		398	; slot147 = _env["math"]
		3155	[  0]	TGETS	147	147	380	; slot147 = math.floor
		3156	[  0]	SUBVV	149	121	145	; slot149 = math.floor - slot145
		3157	[  0]	DIVVN	149	149	8	; slot149 = slot149 / 2
		3158	[  0]	ADDVV	149	123	149	; slot149 = uv5"unknown" + slot149
		3159	[  0]	ADDVV	149	149	142	; slot149 = slot149 + slot142
		3160	[  0]	MULNV	150	29	31	; slot150 = 4 * slot29
		3161	[  0]	SUBVV	149	149	150	; slot149 = slot149 - slot150
		3162	[  0]	CALL 	147	2	2	; slot147 = math.floor(slot148)
		3163	[  0]	GGET 	148		424	; slot148 = _env["love"]
		3164	[  0]	TGETS	148	148	343	; slot148 = love.graphics
		3165	[  0]	TGETS	148	148	310	; slot148 = love.graphics.setColor
		3166	[  0]	TGETB	150	143	1	; slot150 = slot143[1]
		3167	[  0]	TGETB	151	143	2	; slot151 = slot143[2]
		3168	[  0]	TGETB	152	143	3	; slot152 = slot143[3]
		3169	[  0]	TGETB	153	143	4	; slot153 = slot143[4]
		3170	[  0]	MULVV	153	153	35	; slot153 = slot153 * slot35
		3171	[  0]	CALL 	148	1	5	;  = love.graphics.setColor(slot149, slot150, slot151, slot152)
		3172	[  0]	GGET 	148		424	; slot148 = _env["love"]
		3173	[  0]	TGETS	148	148	343	; slot148 = love.graphics
		3174	[  0]	TGETS	148	148	255	; slot148 = love.graphics.print
		3175	[  0]	MOV  	150		137	; slot150 = slot137
		3176	[  0]	MOV  	151		146	; slot151 = math.floor
		3177	[  0]	MOV  	152		147	; slot152 = math.floor
		3178	[  0]	KSHORT	153		0	; slot153 = 0
		3179	[  0]	MOV  	154		140	; slot154 = slot140
		3180	[  0]	MOV  	155		140	; slot155 = slot140
		3181	[  0]	CALL 	148	1	7	;  = love.graphics.print(slot149, slot150, math.floor, math.floor, slot153, slot154)
		3182	[  0]	GGET 	148		424	; slot148 = _env["love"]
		3183	[  0]	TGETS	148	148	343	; slot148 = love.graphics
		3184	[  0]	TGETS	148	148	305	; slot148 = love.graphics.setFont
		3185	[  0]	MOV  	150		139	; slot150 = love.graphics.getFont
		3186	[  0]	CALL 	148	1	2	;  = love.graphics.setFont(slot149)
		3187	[  0]	JMP  	132		102	; 	goto 3290
		3188	[  0]	GGET 	132		424	; slot132 = _env["love"]
		3189	[  0]	TGETS	132	132	343	; slot132 = love.graphics
		3190	[  0]	TGETS	132	132	310	; slot132 = love.graphics.setColor
		3191	[  0]	KNUM 	134		29	; slot134 = 0.35
		3192	[  0]	KNUM 	135		29	; slot135 = 0.35
		3193	[  0]	KNUM 	136		29	; slot136 = 0.35
		3194	[  0]	MULNV	137	35	32	; slot137 = 0.7 * slot35
		3195	[  0]	CALL 	132	1	5	;  = love.graphics.setColor(math.max, slot134, slot135, slot136)
		3196	[  0]	GGET 	132		424	; slot132 = _env["love"]
		3197	[  0]	TGETS	132	132	343	; slot132 = love.graphics
		3198	[  0]	TGETS	132	132	308	; slot132 = love.graphics.rectangle
		3199	[  0]	KSTR 	134		307	; slot134 = "fill"
		3200	[  0]	MOV  	135		125	; slot135 = slot125
		3201	[  0]	MOV  	136		123	; slot136 = uv5"unknown"
		3202	[  0]	MOV  	137		126	; slot137 = uv5"unknown"
		3203	[  0]	MOV  	138		121	; slot138 = math.floor
		3204	[  0]	CALL 	132	1	6	;  = love.graphics.rectangle(math.max, slot134, slot135, uv5"unknown", uv5"unknown")
		3205	[  0]	KSTR 	132		184	; slot132 = "MAX"
		3206	[  0]	UGET 	133		8	; slot133 = uv8"unknwon"
		3207	[  0]	CALL 	133	2	1	; slot133 = uv8"unknown"()
		3208	[  0]	ISF  	   		133	; if not uv8"unknown"
		3209	[  0]	JMP  	134		80	; 	goto 3290
		3210	[  0]	GGET 	134		424	; slot134 = _env["love"]
		3211	[  0]	TGETS	134	134	343	; slot134 = love.graphics
		3212	[  0]	TGETS	134	134	280	; slot134 = love.graphics.getFont
		3213	[  0]	CALL 	134	2	1	; slot134 = love.graphics.getFont()
		3214	[  0]	GGET 	135		424	; slot135 = _env["love"]
		3215	[  0]	TGETS	135	135	343	; slot135 = love.graphics
		3216	[  0]	TGETS	135	135	305	; slot135 = love.graphics.setFont
		3217	[  0]	MOV  	137		133	; slot137 = uv8"unknown"
		3218	[  0]	CALL 	135	1	2	;  = love.graphics.setFont(uv5"unknown")
		3219	[  0]	ISF  	   		103	; if not <unknown table>.imprintPanel.promotionBar
		3220	[  0]	JMP  	135		3	; 	goto 3224
		3221	[  0]	TGETS	135	103	189	; slot135 = <unknown table>.imprintPanel.promotionBar.textScale
		3222	[  0]	IST  	   		135	; if <unknown table>.imprintPanel.promotionBar.textScale
		3223	[  0]	JMP  	136		1	; 	goto 3225
		3224	[  0]	KNUM 	135		30	; slot135 = 1.3
		3225	[  0]	ISF  	   		103	; if not <unknown table>.imprintPanel.promotionBar
		3226	[  0]	JMP  	136		3	; 	goto 3230
		3227	[  0]	TGETS	136	103	188	; slot136 = <unknown table>.imprintPanel.promotionBar.textOffsetX
		3228	[  0]	IST  	   		136	; if <unknown table>.imprintPanel.promotionBar.textOffsetX
		3229	[  0]	JMP  	137		1	; 	goto 3231
		3230	[  0]	KSHORT	136		0	; slot136 = 0
		3231	[  0]	MULVV	136	136	29	; slot136 = slot136 * slot29
		3232	[  0]	ISF  	   		103	; if not <unknown table>.imprintPanel.promotionBar
		3233	[  0]	JMP  	137		4	; 	goto 3238
		3234	[  0]	KSTR 	137		187	; slot137 = "textOffsetY"
		3235	[  0]	TGETV	137	103	137	; slot137 = <unknown table>.imprintPanel.promotionBar[slot137]
		3236	[  0]	IST  	   		137	; if slot137
		3237	[  0]	JMP  	138		1	; 	goto 3239
		3238	[  0]	KSHORT	137		0	; slot137 = 0
		3239	[  0]	MULVV	137	137	29	; slot137 = slot137 * slot29
		3240	[  0]	TDUP 	138		183	; slot138 = copy table#k183
		3241	[  0]	MOV  	141		133	; slot141 = uv8"unknown"
		3242	[  0]	TGETS	139	133	382	; slot139 = uv8"unknown".getWidth
		3243	[  0]	MOV  	142		132	; slot142 = slot132
		3244	[  0]	CALL 	139	2	3	; slot139 = uv8"unknown".getWidth(slot140, uv8"unknown")
		3245	[  0]	MULVV	139	139	135	; slot139 = uv8"unknown".getWidth * slot135
		3246	[  0]	MOV  	142		133	; slot142 = uv8"unknown"
		3247	[  0]	TGETS	140	133	381	; slot140 = uv8"unknown".getHeight
		3248	[  0]	CALL 	140	2	2	; slot140 = uv8"unknown".getHeight(uv8"unknown")
		3249	[  0]	MULVV	140	140	135	; slot140 = uv8"unknown".getHeight * slot135
		3250	[  0]	GGET 	141		398	; slot141 = _env["math"]
		3251	[  0]	TGETS	141	141	380	; slot141 = math.floor
		3252	[  0]	ADDVV	143	125	136	; slot143 = slot125 + slot136
		3253	[  0]	CALL 	141	2	2	; slot141 = math.floor(uv8"unknown")
		3254	[  0]	GGET 	142		398	; slot142 = _env["math"]
		3255	[  0]	TGETS	142	142	380	; slot142 = math.floor
		3256	[  0]	SUBVV	144	121	140	; slot144 = math.floor - slot140
		3257	[  0]	DIVVN	144	144	8	; slot144 = slot144 / 2
		3258	[  0]	ADDVV	144	123	144	; slot144 = uv5"unknown" + slot144
		3259	[  0]	ADDVV	144	144	137	; slot144 = slot144 + slot137
		3260	[  0]	MULNV	145	29	31	; slot145 = 4 * slot29
		3261	[  0]	SUBVV	144	144	145	; slot144 = slot144 - slot145
		3262	[  0]	CALL 	142	2	2	; slot142 = math.floor(slot143)
		3263	[  0]	GGET 	143		424	; slot143 = _env["love"]
		3264	[  0]	TGETS	143	143	343	; slot143 = love.graphics
		3265	[  0]	TGETS	143	143	310	; slot143 = love.graphics.setColor
		3266	[  0]	TGETB	145	138	1	; slot145 = slot138[1]
		3267	[  0]	TGETB	146	138	2	; slot146 = slot138[2]
		3268	[  0]	TGETB	147	138	3	; slot147 = slot138[3]
		3269	[  0]	TGETB	148	138	4	; slot148 = slot138[4]
		3270	[  0]	IST  	   		148	; if slot148
		3271	[  0]	JMP  	149		1	; 	goto 3273
		3272	[  0]	KSHORT	148		1	; slot148 = 1
		3273	[  0]	MULVV	148	148	35	; slot148 = slot148 * slot35
		3274	[  0]	CALL 	143	1	5	;  = love.graphics.setColor(slot144, slot145, slot146, slot147)
		3275	[  0]	GGET 	143		424	; slot143 = _env["love"]
		3276	[  0]	TGETS	143	143	343	; slot143 = love.graphics
		3277	[  0]	TGETS	143	143	255	; slot143 = love.graphics.print
		3278	[  0]	MOV  	145		132	; slot145 = slot132
		3279	[  0]	MOV  	146		141	; slot146 = math.floor
		3280	[  0]	MOV  	147		142	; slot147 = math.floor
		3281	[  0]	KSHORT	148		0	; slot148 = 0
		3282	[  0]	MOV  	149		135	; slot149 = slot135
		3283	[  0]	MOV  	150		135	; slot150 = slot135
		3284	[  0]	CALL 	143	1	7	;  = love.graphics.print(slot144, slot145, math.floor, math.floor, slot148, slot149)
		3285	[  0]	GGET 	143		424	; slot143 = _env["love"]
		3286	[  0]	TGETS	143	143	343	; slot143 = love.graphics
		3287	[  0]	TGETS	143	143	305	; slot143 = love.graphics.setFont
		3288	[  0]	MOV  	145		134	; slot145 = love.graphics.getFont
		3289	[  0]	CALL 	143	1	2	;  = love.graphics.setFont(slot144)
		3290	[  0]	MOV  	132		11	; slot132 = uv1"unknown".lastUnit
		3291	[  0]	ISF  	   		132	; if not uv1"unknown".lastUnit
		3292	[  0]	JMP  	133		122	; 	goto 3415
		3293	[  0]	TGETS	133	132	390	; slot133 = uv1"unknown".lastUnit.isShadowMinion
		3294	[  0]	IST  	   		133	; if uv1"unknown".lastUnit.isShadowMinion
		3295	[  0]	JMP  	133		119	; 	goto 3415
		3296	[  0]	GGET 	133		363	; slot133 = _env["require"]
		3297	[  0]	KSTR 	135		182	; slot135 = "src.game.awakening"
		3298	[  0]	CALL 	133	2	2	; slot133 = require(love.graphics.getFont)
		3299	[  0]	KSTR 	134		181	; slot134 = "maxRank"
		3300	[  0]	TGETV	133	133	134	; slot133 = require[slot134]
		3301	[  0]	MOV  	135		132	; slot135 = uv1"unknown".lastUnit
		3302	[  0]	CALL 	133	2	2	; slot133 = slot133(slot134)
		3303	[  0]	GGET 	134		393	; slot134 = _env["tonumber"]
		3304	[  0]	TGETS	136	132	218	; slot136 = uv1"unknown".lastUnit.rank
		3305	[  0]	IST  	   		136	; if uv1"unknown".lastUnit.rank
		3306	[  0]	JMP  	137		5	; 	goto 3312
		3307	[  0]	KSTR 	136		180	; slot136 = "star"
		3308	[  0]	TGETV	136	132	136	; slot136 = uv1"unknown".lastUnit[slot136]
		3309	[  0]	IST  	   		136	; if slot136
		3310	[  0]	JMP  	137		1	; 	goto 3312
		3311	[  0]	KSHORT	136		1	; slot136 = 1
		3312	[  0]	CALL 	134	2	2	; slot134 = tonumber(uv1"unknown".lastUnit)
		3313	[  0]	IST  	   		134	; if tonumber
		3314	[  0]	JMP  	135		1	; 	goto 3316
		3315	[  0]	KSHORT	134		1	; slot134 = 1
		3316	[  0]	KSHORT	135		1	; slot135 = 1
		3317	[  0]	ISGE 	134		135	; if slot134 >= slot135
		3318	[  0]	JMP  	135		2	; 	goto 3321
		3319	[  0]	KSHORT	134		1	; slot134 = 1
		3320	[  0]	JMP  	135		3	; 	goto 3324
		3321	[  0]	ISGE 	133		134	; if slot133 >= slot134
		3322	[  0]	JMP  	135		1	; 	goto 3324
		3323	[  0]	MOV  	134		133	; slot134 = slot133
		3324	[  0]	KSHORT	135		7	; slot135 = 7
		3325	[  0]	GGET 	136		398	; slot136 = _env["math"]
		3326	[  0]	TGETS	136	136	313	; slot136 = math.max
		3327	[  0]	KSHORT	138		1	; slot138 = 1
		3328	[  0]	GGET 	139		398	; slot139 = _env["math"]
		3329	[  0]	TGETS	139	139	380	; slot139 = math.floor
		3330	[  0]	MULNV	141	29	10	; slot141 = 1 * slot29
		3331	[  0]	ADDVN	141	141	6	; slot141 = slot141 + 0.5
		3332	[  0]	CALL 	139	0	2	; MULTRES = math.floor(slot140)
		3333	[  0]	CALLM	136	2	1	; slot136 = math.max(slot137, ...MULTRES)
		3334	[  0]	MULNV	137	136	8	; slot137 = 2 * math.max
		3335	[  0]	MULVV	138	135	136	; slot138 = slot135 * math.max
		3336	[  0]	MULVV	139	133	138	; slot139 = slot133 * slot138
		3337	[  0]	SUBVN	140	133	10	; slot140 = slot133 - 1
		3338	[  0]	MULVV	140	140	137	; slot140 = slot140 * slot137
		3339	[  0]	ADDVV	139	139	140	; slot139 = slot139 + slot140
		3340	[  0]	ISF  	   		103	; if not <unknown table>.imprintPanel.promotionBar
		3341	[  0]	JMP  	140		4	; 	goto 3346
		3342	[  0]	KSTR 	140		179	; slot140 = "starOffsetX"
		3343	[  0]	TGETV	140	103	140	; slot140 = <unknown table>.imprintPanel.promotionBar[slot140]
		3344	[  0]	IST  	   		140	; if slot140
		3345	[  0]	JMP  	141		1	; 	goto 3347
		3346	[  0]	KSHORT	140		0	; slot140 = 0
		3347	[  0]	MULVV	140	140	29	; slot140 = slot140 * slot29
		3348	[  0]	ISF  	   		103	; if not <unknown table>.imprintPanel.promotionBar
		3349	[  0]	JMP  	141		4	; 	goto 3354
		3350	[  0]	KSTR 	141		178	; slot141 = "starOffsetY"
		3351	[  0]	TGETV	141	103	141	; slot141 = <unknown table>.imprintPanel.promotionBar[slot141]
		3352	[  0]	IST  	   		141	; if slot141
		3353	[  0]	JMP  	142		1	; 	goto 3355
		3354	[  0]	KSHORT	141		0	; slot141 = 0
		3355	[  0]	MULVV	141	141	29	; slot141 = slot141 * slot29
		3356	[  0]	GGET 	142		398	; slot142 = _env["math"]
		3357	[  0]	TGETS	142	142	380	; slot142 = math.floor
		3358	[  0]	ADDVV	144	125	126	; slot144 = slot125 + uv5"unknown"
		3359	[  0]	SUBVV	144	144	139	; slot144 = slot144 - slot139
		3360	[  0]	ADDVV	144	144	140	; slot144 = slot144 + slot140
		3361	[  0]	CALL 	142	2	2	; slot142 = math.floor(love.graphics.setFont)
		3362	[  0]	GGET 	143		398	; slot143 = _env["math"]
		3363	[  0]	TGETS	143	143	380	; slot143 = math.floor
		3364	[  0]	ADDVV	145	123	121	; slot145 = uv5"unknown" + math.floor
		3365	[  0]	MULNV	146	29	2	; slot146 = 3 * slot29
		3366	[  0]	ADDVV	145	145	146	; slot145 = slot145 + slot146
		3367	[  0]	ADDVV	145	145	141	; slot145 = slot145 + slot141
		3368	[  0]	CALL 	143	2	2	; slot143 = math.floor(slot144)
		3369	[  0]	MOV  	144		35	; slot144 = slot35
		3370	[  0]	GGET 	145		363	; slot145 = _env["require"]
		3371	[  0]	KSTR 	147		182	; slot147 = "src.game.awakening"
		3372	[  0]	CALL 	145	2	2	; slot145 = require(slot146)
		3373	[  0]	KSTR 	146		177	; slot146 = "stage"
		3374	[  0]	TGETV	145	145	146	; slot145 = require[slot146]
		3375	[  0]	MOV  	147		132	; slot147 = uv1"unknown".lastUnit
		3376	[  0]	CALL 	145	2	2	; slot145 = slot145(slot146)
		3377	[  0]	KSHORT	146		1	; slot146 = 1
		3378	[  0]	MOV  	147		133	; slot147 = slot133
		3379	[  0]	KSHORT	148		1	; slot148 = 1
		3380	[  0]	FORI 	146		26	; for slot149 = slot146,slot147,slot148 else goto 3407
		3381	[  0]	SUBVN	150	149	10	; slot150 = slot149 - 1
		3382	[  0]	ADDVV	151	138	137	; slot151 = slot138 + slot137
		3383	[  0]	MULVV	150	150	151	; slot150 = slot150 * slot151
		3384	[  0]	ADDVV	150	142	150	; slot150 = math.floor + slot150
		3385	[  0]	GGET 	151		363	; slot151 = _env["require"]
		3386	[  0]	KSTR 	153		327	; slot153 = "src.ui.widgets"
		3387	[  0]	CALL 	151	2	2	; slot151 = require(math.floor)
		3388	[  0]	KSTR 	152		176	; slot152 = "awakening_star"
		3389	[  0]	TGETV	151	151	152	; slot151 = require[slot152]
		3390	[  0]	TGETS	151	151	309	; slot151 = slot151.draw
		3391	[  0]	MOV  	153		150	; slot153 = slot150
		3392	[  0]	MOV  	154		143	; slot154 = math.floor
		3393	[  0]	MOV  	155		136	; slot155 = math.max
		3394	[  0]	ISLE 	149		134	; if slot149 <= slot134
		3395	[  0]	JMP  	156		2	; 	goto 3398
		3396	[  0]	KPRI 	156		1	; slot156 = false
		3397	[  0]	JMP  	157		1	; 	goto 3399
		3398	[  0]	KPRI 	156		2	; slot156 = true
		3399	[  0]	ISLE 	149		145	; if slot149 <= slot145
		3400	[  0]	JMP  	157		2	; 	goto 3403
		3401	[  0]	KPRI 	157		1	; slot157 = false
		3402	[  0]	JMP  	158		1	; 	goto 3404
		3403	[  0]	KPRI 	157		2	; slot157 = true
		3404	[  0]	MOV  	158		144	; slot158 = slot144
		3405	[  0]	CALL 	151	1	7	;  = <unknown table>.draw(slot152, slot153, math.floor, math.max, slot156, slot157)
		3406	[  0]	FORL 	146		-26	; slot149 = slot149 + slot148; if cmp(slot149, sign slot148,  slot147) goto 3381
		3407	[  0]	GGET 	146		424	; slot146 = _env["love"]
		3408	[  0]	TGETS	146	146	343	; slot146 = love.graphics
		3409	[  0]	TGETS	146	146	310	; slot146 = love.graphics.setColor
		3410	[  0]	KSHORT	148		1	; slot148 = 1
		3411	[  0]	KSHORT	149		1	; slot149 = 1
		3412	[  0]	KSHORT	150		1	; slot150 = 1
		3413	[  0]	KSHORT	151		1	; slot151 = 1
		3414	[  0]	CALL 	146	1	5	;  = love.graphics.setColor(slot147, slot148, slot149, slot150)
		3415	[  0]	GGET 	132		424	; slot132 = _env["love"]
		3416	[  0]	TGETS	132	132	343	; slot132 = love.graphics
		3417	[  0]	TGETS	132	132	310	; slot132 = love.graphics.setColor
		3418	[  0]	TGETB	134	130	1	; slot134 = slot130[1]
		3419	[  0]	TGETB	135	130	2	; slot135 = slot130[2]
		3420	[  0]	TGETB	136	130	3	; slot136 = slot130[3]
		3421	[  0]	TGETB	137	130	4	; slot137 = slot130[4]
		3422	[  0]	MULVN	137	137	6	; slot137 = slot137 * 0.5
		3423	[  0]	MULVV	137	137	35	; slot137 = slot137 * slot35
		3424	[  0]	CALL 	132	1	5	;  = love.graphics.setColor(slot133, slot134, slot135, slot136)
		3425	[  0]	GGET 	132		424	; slot132 = _env["love"]
		3426	[  0]	TGETS	132	132	343	; slot132 = love.graphics
		3427	[  0]	KSTR 	133		175	; slot133 = "setLineWidth"
		3428	[  0]	TGETV	132	132	133	; slot132 = love.graphics[slot133]
		3429	[  0]	KSHORT	134		1	; slot134 = 1
		3430	[  0]	CALL 	132	1	2	;  = slot132(slot133)
		3431	[  0]	GGET 	132		424	; slot132 = _env["love"]
		3432	[  0]	TGETS	132	132	343	; slot132 = love.graphics
		3433	[  0]	TGETS	132	132	308	; slot132 = love.graphics.rectangle
		3434	[  0]	KSTR 	134		306	; slot134 = "line"
		3435	[  0]	ADDVN	135	125	6	; slot135 = slot125 + 0.5
		3436	[  0]	ADDVN	136	123	6	; slot136 = uv5"unknown" + 0.5
		3437	[  0]	SUBVN	137	126	10	; slot137 = uv5"unknown" - 1
		3438	[  0]	SUBVN	138	121	10	; slot138 = math.floor - 1
		3439	[  0]	CALL 	132	1	6	;  = love.graphics.rectangle(slot133, slot134, slot135, slot136, slot137)
		3440	[  0]	ISEQS	 57		346	; if slot57 == ""
		3441	[  0]	JMP  	103		26	; 	goto 3468
		3442	[  0]	MOV  	103		72	; slot103 = slot72
		3443	[  0]	MOV  	104		61	; slot104 = slot61
		3444	[  0]	GGET 	105		424	; slot105 = _env["love"]
		3445	[  0]	TGETS	105	105	343	; slot105 = love.graphics
		3446	[  0]	TGETS	105	105	310	; slot105 = love.graphics.setColor
		3447	[  0]	KNUM 	107		20	; slot107 = 0.9
		3448	[  0]	KNUM 	108		20	; slot108 = 0.9
		3449	[  0]	KNUM 	109		20	; slot109 = 0.9
		3450	[  0]	MULNV	110	35	10	; slot110 = 1 * slot35
		3451	[  0]	CALL 	105	1	5	;  = love.graphics.setColor(slot106, slot107, slot108, slot109)
		3452	[  0]	GGET 	105		424	; slot105 = _env["love"]
		3453	[  0]	TGETS	105	105	343	; slot105 = love.graphics
		3454	[  0]	TGETS	105	105	255	; slot105 = love.graphics.print
		3455	[  0]	MOV  	107		57	; slot107 = slot57
		3456	[  0]	GGET 	108		398	; slot108 = _env["math"]
		3457	[  0]	TGETS	108	108	380	; slot108 = math.floor
		3458	[  0]	MOV  	110		103	; slot110 = slot103
		3459	[  0]	CALL 	108	2	2	; slot108 = math.floor(slot109)
		3460	[  0]	GGET 	109		398	; slot109 = _env["math"]
		3461	[  0]	TGETS	109	109	380	; slot109 = math.floor
		3462	[  0]	MOV  	111		104	; slot111 = slot104
		3463	[  0]	CALL 	109	2	2	; slot109 = math.floor(slot110)
		3464	[  0]	KSHORT	110		0	; slot110 = 0
		3465	[  0]	MOV  	111		51	; slot111 = slot51
		3466	[  0]	MOV  	112		51	; slot112 = slot51
		3467	[  0]	CALL 	105	1	7	;  = love.graphics.print(slot106, slot107, math.floor, math.floor, slot110, slot111)
		3468	[  0]	UGET 	103		0	; slot103 = uv0"unknwon"
		3469	[  0]	KSTR 	104		174	; slot104 = "_absorbLvRect"
		3470	[  0]	TDUP 	105		173	; slot105 = copy table#k173
		3471	[  0]	TSETS	 99	105	384	; slot105.x = slot99
		3472	[  0]	TSETS	100	105	383	; slot105.y = slot100
		3473	[  0]	TSETS	101	105	387	; slot105.w = slot101
		3474	[  0]	TSETS	102	105	385	; slot105.h = slot102
		3475	[  0]	TSETV	105	103	104	; uv0"unknown"[slot104] = slot105
		3476	[  0]	UGET 	103		0	; slot103 = uv0"unknwon"
		3477	[  0]	KSTR 	104		172	; slot104 = "_absorbLvAnchor"
		3478	[  0]	TDUP 	105		171	; slot105 = copy table#k171
		3479	[  0]	TSETS	 83	105	384	; slot105.x = math.floor
		3480	[  0]	TSETS	 84	105	383	; slot105.y = math.floor
		3481	[  0]	TSETS	 79	105	387	; slot105.w = math.max
		3482	[  0]	TSETS	 79	105	385	; slot105.h = math.max
		3483	[  0]	TSETV	105	103	104	; uv0"unknown"[slot104] = slot105
		3484	[  0]	ISF  	   		95	; if not slot95
		3485	[  0]	JMP  	103		14	; 	goto 3500
		3486	[  0]	UGET 	103		0	; slot103 = uv0"unknwon"
		3487	[  0]	TDUP 	104		169	; slot104 = copy table#k169
		3488	[  0]	UGET 	105		0	; slot105 = uv0"unknwon"
		3489	[  0]	KSTR 	106		170	; slot106 = "getAbsorbLvStats"
		3490	[  0]	TGETV	105	105	106	; slot105 = uv0"unknown"[slot106]
		3491	[  0]	MOV  	107		11	; slot107 = uv1"unknown".lastUnit
		3492	[  0]	CALL 	105	2	2	; slot105 = slot105(slot106)
		3493	[  0]	KSTR 	106		168	; slot106 = "stats"
		3494	[  0]	TSETV	105	104	106	; slot104[slot106] = slot105
		3495	[  0]	UGET 	105		0	; slot105 = uv0"unknwon"
		3496	[  0]	KSTR 	106		172	; slot106 = "_absorbLvAnchor"
		3497	[  0]	TGETV	105	105	106	; slot105 = uv0"unknown"[slot106]
		3498	[  0]	TSETS	105	104	440	; slot104.anchor = slot105
		3499	[  0]	TSETS	104	103	437	; uv0"unknown"._hoveredAbsorbIcon = slot104
		3500	[  0]	TGETS	103	0	270	; slot103 = slot0.font
		3501	[  0]	ISF  	   		103	; if not <unknown table>.font
		3502	[  0]	JMP  	104		5	; 	goto 3508
		3503	[  0]	GGET 	103		424	; slot103 = _env["love"]
		3504	[  0]	TGETS	103	103	343	; slot103 = love.graphics
		3505	[  0]	TGETS	103	103	305	; slot103 = love.graphics.setFont
		3506	[  0]	TGETS	105	0	270	; slot105 = slot0.font
		3507	[  0]	CALL 	103	1	2	;  = love.graphics.setFont(slot104)
		3508	[  0]	ISF  	   		10	; if not <unknown table>.absorber
		3509	[  0]	JMP  	 50		264	; 	goto 3774
		3510	[  0]	ISF  	   		9	; if not slot9
		3511	[  0]	JMP  	 50		262	; 	goto 3774
		3512	[  0]	TGETS	 50	9	263	; slot50 = slot9.preview
		3513	[  0]	ISF  	   		50	; if not <unknown table>.preview
		3514	[  0]	JMP  	 51		259	; 	goto 3774
		3515	[  0]	TGETS	 50	9	263	; slot50 = slot9.preview
		3516	[  0]	UGET 	 51		20	; slot51 = uv20"unknwon"
		3517	[  0]	GGET 	 53		270	; slot53 = _env["font"]
		3518	[  0]	KSHORT	 54		12	; slot54 = 12
		3519	[  0]	CALL 	 51	2	3	; slot51 = uv20"unknown"(slot52, font)
		3520	[  0]	MOV  	 52		43	; slot52 = slot43
		3521	[  0]	MULVN	 53	51	8	; slot53 = uv20"unknown" * 2
		3522	[  0]	ADDVV	 53	44	53	; slot53 = slot44 + slot53
		3523	[  0]	UGET 	 54		5	; slot54 = uv5"unknwon"
		3524	[  0]	MULNV	 56	29	25	; slot56 = 6 * slot29
		3525	[  0]	CALL 	 54	2	2	; slot54 = uv5"unknown"(math.max)
		3526	[  0]	ADDVV	 53	53	54	; slot53 = slot53 + uv5"unknown"
		3527	[  0]	GGET 	 54		398	; slot54 = _env["math"]
		3528	[  0]	TGETS	 54	54	313	; slot54 = math.max
		3529	[  0]	KSHORT	 56		0	; slot56 = 0
		3530	[  0]	GGET 	 57		398	; slot57 = _env["math"]
		3531	[  0]	TGETS	 57	57	380	; slot57 = math.floor
		3532	[  0]	GGET 	 59		393	; slot59 = _env["tonumber"]
		3533	[  0]	TGETS	 61	50	262	; slot61 = <unknown table>.preview.totalAbsorbLvGain
		3534	[  0]	IST  	   		61	; if <unknown table>.preview.totalAbsorbLvGain
		3535	[  0]	JMP  	 62		1	; 	goto 3537
		3536	[  0]	KSHORT	 61		0	; slot61 = 0
		3537	[  0]	CALL 	 59	2	2	; slot59 = tonumber(slot60)
		3538	[  0]	IST  	   		59	; if tonumber
		3539	[  0]	JMP  	 60		1	; 	goto 3541
		3540	[  0]	KSHORT	 59		0	; slot59 = 0
		3541	[  0]	CALL 	 57	0	2	; MULTRES = math.floor(slot58)
		3542	[  0]	CALLM	 54	2	1	; slot54 = math.max(math.max, ...MULTRES)
		3543	[  0]	KSTR 	 55		167	; slot55 = "흡수 결과: 흡수 LV +"
		3544	[  0]	GGET 	 56		264	; slot56 = _env["tostring"]
		3545	[  0]	MOV  	 58		54	; slot58 = math.max
		3546	[  0]	CALL 	 56	2	2	; slot56 = tostring(math.floor)
		3547	[  0]	CAT  	 55	55	56	; slot55 = slot55 .. tostring
		3548	[  0]	TGETS	 56	50	260	; slot56 = <unknown table>.preview.convertAvailable
		3549	[  0]	ISF  	   		56	; if not <unknown table>.preview.convertAvailable
		3550	[  0]	JMP  	 57		23	; 	goto 3574
		3551	[  0]	TGETS	 56	50	261	; slot56 = <unknown table>.preview.convertBonus
		3552	[  0]	ISF  	   		56	; if not <unknown table>.preview.convertBonus
		3553	[  0]	JMP  	 57		20	; 	goto 3574
		3554	[  0]	GGET 	 56		398	; slot56 = _env["math"]
		3555	[  0]	TGETS	 56	56	313	; slot56 = math.max
		3556	[  0]	KSHORT	 58		0	; slot58 = 0
		3557	[  0]	GGET 	 59		398	; slot59 = _env["math"]
		3558	[  0]	TGETS	 59	59	380	; slot59 = math.floor
		3559	[  0]	GGET 	 61		393	; slot61 = _env["tonumber"]
		3560	[  0]	TGETS	 63	50	261	; slot63 = <unknown table>.preview.convertBonus
		3561	[  0]	CALL 	 61	2	2	; slot61 = tonumber(tonumber)
		3562	[  0]	IST  	   		61	; if tonumber
		3563	[  0]	JMP  	 62		1	; 	goto 3565
		3564	[  0]	KSHORT	 61		0	; slot61 = 0
		3565	[  0]	CALL 	 59	0	2	; MULTRES = math.floor(slot60)
		3566	[  0]	CALLM	 56	2	1	; slot56 = math.max(math.floor, ...MULTRES)
		3567	[  0]	MOV  	 57		55	; slot57 = slot55
		3568	[  0]	KSTR 	 58		166	; slot58 = " (전환 +"
		3569	[  0]	GGET 	 59		264	; slot59 = _env["tostring"]
		3570	[  0]	MOV  	 61		56	; slot61 = math.max
		3571	[  0]	CALL 	 59	2	2	; slot59 = tostring(slot60)
		3572	[  0]	KSTR 	 60		165	; slot60 = ")"
		3573	[  0]	CAT  	 55	57	60	; slot55 = slot57 .. slot58 .. tostring .. slot60
		3574	[  0]	KSTR 	 54		164	; slot54 = "incomingImprint"
		3575	[  0]	TGETV	 54	50	54	; slot54 = <unknown table>.preview[slot54]
		3576	[  0]	KSTR 	 55		163	; slot55 = "action"
		3577	[  0]	TGETV	 55	50	55	; slot55 = <unknown table>.preview[slot55]
		3578	[  0]	IST  	   		55	; if slot55
		3579	[  0]	JMP  	 56		1	; 	goto 3581
		3580	[  0]	TDUP 	 55		162	; slot55 = copy table#k162
		3581	[  0]	KSTR 	 56		161	; slot56 = "각인: 변화 없음"
		3582	[  0]	ISF  	   		54	; if not slot54
		3583	[  0]	JMP  	 57		123	; 	goto 3707
		3584	[  0]	KSTR 	 57		160	; slot57 = "rarity"
		3585	[  0]	TGETV	 57	54	57	; slot57 = slot54[slot57]
		3586	[  0]	UGET 	 58		18	; slot58 = uv18"unknwon"
		3587	[  0]	ISF  	   		58	; if not uv18"unknown"
		3588	[  0]	JMP  	 59		20	; 	goto 3609
		3589	[  0]	UGET 	 58		18	; slot58 = uv18"unknwon"
		3590	[  0]	KSTR 	 59		159	; slot59 = "unitGrades"
		3591	[  0]	TGETV	 58	58	59	; slot58 = uv18"unknown"[slot59]
		3592	[  0]	ISF  	   		58	; if not slot58
		3593	[  0]	JMP  	 59		15	; 	goto 3609
		3594	[  0]	UGET 	 58		18	; slot58 = uv18"unknwon"
		3595	[  0]	KSTR 	 59		159	; slot59 = "unitGrades"
		3596	[  0]	TGETV	 58	58	59	; slot58 = uv18"unknown"[slot59]
		3597	[  0]	KSTR 	 59		158	; slot59 = "labels"
		3598	[  0]	TGETV	 58	58	59	; slot58 = slot58[slot59]
		3599	[  0]	ISF  	   		58	; if not slot58
		3600	[  0]	JMP  	 59		8	; 	goto 3609
		3601	[  0]	UGET 	 58		18	; slot58 = uv18"unknwon"
		3602	[  0]	KSTR 	 59		159	; slot59 = "unitGrades"
		3603	[  0]	TGETV	 58	58	59	; slot58 = uv18"unknown"[slot59]
		3604	[  0]	KSTR 	 59		158	; slot59 = "labels"
		3605	[  0]	TGETV	 58	58	59	; slot58 = slot58[slot59]
		3606	[  0]	TGETV	 58	58	57	; slot58 = slot58[slot57]
		3607	[  0]	IST  	   		58	; if slot58
		3608	[  0]	JMP  	 59		3	; 	goto 3612
		3609	[  0]	ISTC 	 58		57	; slot58 = slot57; if slot57
		3610	[  0]	JMP  	 58		1	; 	goto 3612
		3611	[  0]	KSTR 	 58		346	; slot58 = ""
		3612	[  0]	ISEQS	 58		346	; if slot58 == ""
		3613	[  0]	JMP  	 59		6	; 	goto 3620
		3614	[  0]	KSTR 	 59		157	; slot59 = "("
		3615	[  0]	GGET 	 60		264	; slot60 = _env["tostring"]
		3616	[  0]	MOV  	 62		58	; slot62 = slot58
		3617	[  0]	CALL 	 60	2	2	; slot60 = tostring(math.max)
		3618	[  0]	KSTR 	 61		165	; slot61 = ")"
		3619	[  0]	CAT  	 58	59	61	; slot58 = slot59 .. tostring .. slot61
		3620	[  0]	GGET 	 59		264	; slot59 = _env["tostring"]
		3621	[  0]	TGETS	 61	54	321	; slot61 = slot54.name
		3622	[  0]	IST  	   		61	; if <unknown table>.name
		3623	[  0]	JMP  	 62		4	; 	goto 3628
		3624	[  0]	TGETS	 61	54	323	; slot61 = slot54.id
		3625	[  0]	IST  	   		61	; if <unknown table>.id
		3626	[  0]	JMP  	 62		1	; 	goto 3628
		3627	[  0]	KSTR 	 61		156	; slot61 = "각인"
		3628	[  0]	CALL 	 59	2	2	; slot59 = tostring(tostring)
		3629	[  0]	KSTR 	 60		155	; slot60 = " "
		3630	[  0]	UGET 	 61		21	; slot61 = uv21"unknwon"
		3631	[  0]	KSTR 	 63		154	; slot63 = "level"
		3632	[  0]	TGETV	 63	54	63	; slot63 = slot54[slot63]
		3633	[  0]	IST  	   		63	; if slot63
		3634	[  0]	JMP  	 64		1	; 	goto 3636
		3635	[  0]	KSHORT	 63		1	; slot63 = 1
		3636	[  0]	CALL 	 61	2	2	; slot61 = uv21"unknown"(slot62)
		3637	[  0]	CAT  	 59	59	61	; slot59 = tostring .. slot60 .. uv21"unknown"
		3638	[  0]	KSTR 	 60		153	; slot60 = "kind"
		3639	[  0]	TGETV	 60	55	60	; slot60 = slot55[slot60]
		3640	[  0]	ISNES	 60		152	; if slot60 ~= "insert"
		3641	[  0]	JMP  	 60		5	; 	goto 3647
		3642	[  0]	KSTR 	 60		151	; slot60 = "각인 획득: "
		3643	[  0]	MOV  	 61		59	; slot61 = slot59
		3644	[  0]	MOV  	 62		58	; slot62 = slot58
		3645	[  0]	CAT  	 56	60	62	; slot56 = slot60 .. slot61 .. slot62
		3646	[  0]	JMP  	 60		60	; 	goto 3707
		3647	[  0]	KSTR 	 60		153	; slot60 = "kind"
		3648	[  0]	TGETV	 60	55	60	; slot60 = slot55[slot60]
		3649	[  0]	ISNES	 60		150	; if slot60 ~= "replace"
		3650	[  0]	JMP  	 60		6	; 	goto 3657
		3651	[  0]	KSTR 	 60		149	; slot60 = "각인 교체: "
		3652	[  0]	MOV  	 61		59	; slot61 = slot59
		3653	[  0]	MOV  	 62		58	; slot62 = slot58
		3654	[  0]	KSTR 	 63		148	; slot63 = " (슬롯 선택)"
		3655	[  0]	CAT  	 56	60	63	; slot56 = slot60 .. slot61 .. slot62 .. slot63
		3656	[  0]	JMP  	 60		50	; 	goto 3707
		3657	[  0]	KSTR 	 60		153	; slot60 = "kind"
		3658	[  0]	TGETV	 60	55	60	; slot60 = slot55[slot60]
		3659	[  0]	ISNES	 60		147	; if slot60 ~= "upgradeLevel"
		3660	[  0]	JMP  	 60		33	; 	goto 3694
		3661	[  0]	GGET 	 60		393	; slot60 = _env["tonumber"]
		3662	[  0]	KSTR 	 62		146	; slot62 = "curLevel"
		3663	[  0]	TGETV	 62	55	62	; slot62 = slot55[slot62]
		3664	[  0]	CALL 	 60	2	2	; slot60 = tonumber(slot61)
		3665	[  0]	IST  	   		60	; if tonumber
		3666	[  0]	JMP  	 61		1	; 	goto 3668
		3667	[  0]	KSHORT	 60		1	; slot60 = 1
		3668	[  0]	GGET 	 61		393	; slot61 = _env["tonumber"]
		3669	[  0]	KSTR 	 63		145	; slot63 = "toLevel"
		3670	[  0]	TGETV	 63	55	63	; slot63 = slot55[slot63]
		3671	[  0]	CALL 	 61	2	2	; slot61 = tonumber(slot62)
		3672	[  0]	IST  	   		61	; if tonumber
		3673	[  0]	JMP  	 62		1	; 	goto 3675
		3674	[  0]	ADDVN	 61	60	10	; slot61 = slot60 + 1
		3675	[  0]	KSHORT	 62		1	; slot62 = 1
		3676	[  0]	ISGE 	 61		62	; if slot61 >= slot62
		3677	[  0]	JMP  	 62		1	; 	goto 3679
		3678	[  0]	KSHORT	 61		1	; slot61 = 1
		3679	[  0]	KSTR 	 62		144	; slot62 = " (Lv."
		3680	[  0]	GGET 	 63		264	; slot63 = _env["tostring"]
		3681	[  0]	MOV  	 65		60	; slot65 = slot60
		3682	[  0]	CALL 	 63	2	2	; slot63 = tostring(love.graphics.getFont.getHeight)
		3683	[  0]	KSTR 	 64		143	; slot64 = "→Lv."
		3684	[  0]	GGET 	 65		264	; slot65 = _env["tostring"]
		3685	[  0]	MOV  	 67		61	; slot67 = slot61
		3686	[  0]	CALL 	 65	2	2	; slot65 = tostring(math.ceil)
		3687	[  0]	KSTR 	 66		165	; slot66 = ")"
		3688	[  0]	CAT  	 62	62	66	; slot62 = slot62 .. tostring .. slot64 .. tostring .. slot66
		3689	[  0]	KSTR 	 63		142	; slot63 = "각인 업그레이드: "
		3690	[  0]	MOV  	 64		59	; slot64 = slot59
		3691	[  0]	MOV  	 65		62	; slot65 = slot62
		3692	[  0]	CAT  	 56	63	65	; slot56 = slot63 .. slot64 .. slot65
		3693	[  0]	JMP  	 60		13	; 	goto 3707
		3694	[  0]	KSTR 	 60		153	; slot60 = "kind"
		3695	[  0]	TGETV	 60	55	60	; slot60 = slot55[slot60]
		3696	[  0]	ISNES	 60		313	; if slot60 ~= "max"
		3697	[  0]	JMP  	 60		5	; 	goto 3703
		3698	[  0]	KSTR 	 60		141	; slot60 = "각인 최대: "
		3699	[  0]	MOV  	 61		59	; slot61 = slot59
		3700	[  0]	MOV  	 62		58	; slot62 = slot58
		3701	[  0]	CAT  	 56	60	62	; slot56 = slot60 .. slot61 .. slot62
		3702	[  0]	JMP  	 60		4	; 	goto 3707
		3703	[  0]	KSTR 	 60		140	; slot60 = "각인 유지: "
		3704	[  0]	MOV  	 61		59	; slot61 = slot59
		3705	[  0]	MOV  	 62		58	; slot62 = slot58
		3706	[  0]	CAT  	 56	60	62	; slot56 = slot60 .. slot61 .. slot62
		3707	[  0]	KSTR 	 54		139	; slot54 = "needsChoice"
		3708	[  0]	TGETV	 54	50	54	; slot54 = <unknown table>.preview[slot54]
		3709	[  0]	ISF  	   		54	; if not slot54
		3710	[  0]	JMP  	 54		7	; 	goto 3718
		3711	[  0]	KSTR 	 54		139	; slot54 = "needsChoice"
		3712	[  0]	TGETV	 54	50	54	; slot54 = <unknown table>.preview[slot54]
		3713	[  0]	ISF  	   		54	; if not slot54
		3714	[  0]	JMP  	 55		59	; 	goto 3774
		3715	[  0]	TGETS	 54	50	260	; slot54 = <unknown table>.preview.convertAvailable
		3716	[  0]	ISF  	   		54	; if not <unknown table>.preview.convertAvailable
		3717	[  0]	JMP  	 55		56	; 	goto 3774
		3718	[  0]	TGETS	 54	50	260	; slot54 = <unknown table>.preview.convertAvailable
		3719	[  0]	ISF  	   		54	; if not <unknown table>.preview.convertAvailable
		3720	[  0]	JMP  	 55		53	; 	goto 3774
		3721	[  0]	GGET 	 54		398	; slot54 = _env["math"]
		3722	[  0]	TGETS	 54	54	313	; slot54 = math.max
		3723	[  0]	KSHORT	 56		0	; slot56 = 0
		3724	[  0]	GGET 	 57		398	; slot57 = _env["math"]
		3725	[  0]	TGETS	 57	57	380	; slot57 = math.floor
		3726	[  0]	GGET 	 59		393	; slot59 = _env["tonumber"]
		3727	[  0]	TGETS	 61	50	261	; slot61 = <unknown table>.preview.convertBonus
		3728	[  0]	IST  	   		61	; if <unknown table>.preview.convertBonus
		3729	[  0]	JMP  	 62		1	; 	goto 3731
		3730	[  0]	KSHORT	 61		0	; slot61 = 0
		3731	[  0]	CALL 	 59	2	2	; slot59 = tonumber(slot60)
		3732	[  0]	IST  	   		59	; if tonumber
		3733	[  0]	JMP  	 60		1	; 	goto 3735
		3734	[  0]	KSHORT	 59		0	; slot59 = 0
		3735	[  0]	CALL 	 57	0	2	; MULTRES = math.floor(slot58)
		3736	[  0]	CALLM	 54	2	1	; slot54 = math.max(slot55, ...MULTRES)
		3737	[  0]	GGET 	 55		398	; slot55 = _env["math"]
		3738	[  0]	TGETS	 55	55	313	; slot55 = math.max
		3739	[  0]	KSHORT	 57		0	; slot57 = 0
		3740	[  0]	GGET 	 58		398	; slot58 = _env["math"]
		3741	[  0]	TGETS	 58	58	380	; slot58 = math.floor
		3742	[  0]	GGET 	 60		393	; slot60 = _env["tonumber"]
		3743	[  0]	TGETS	 62	50	262	; slot62 = <unknown table>.preview.totalAbsorbLvGain
		3744	[  0]	IST  	   		62	; if <unknown table>.preview.totalAbsorbLvGain
		3745	[  0]	JMP  	 63		1	; 	goto 3747
		3746	[  0]	KSHORT	 62		0	; slot62 = 0
		3747	[  0]	CALL 	 60	2	2	; slot60 = tonumber(slot61)
		3748	[  0]	IST  	   		60	; if tonumber
		3749	[  0]	JMP  	 61		1	; 	goto 3751
		3750	[  0]	KSHORT	 60		0	; slot60 = 0
		3751	[  0]	CALL 	 58	0	2	; MULTRES = math.floor(slot59)
		3752	[  0]	CALLM	 55	2	1	; slot55 = math.max(slot56, ...MULTRES)
		3753	[  0]	ADDVV	 56	55	54	; slot56 = math.max + math.max
		3754	[  0]	UGET 	 57		22	; slot57 = uv22"unknwon"
		3755	[  0]	KSTR 	 58		138	; slot58 = "getText"
		3756	[  0]	TGETV	 57	57	58	; slot57 = uv22"unknown"[slot58]
		3757	[  0]	KSTR 	 59		137	; slot59 = "imprint_convert_prefix"
		3758	[  0]	GGET 	 60		136	; slot60 = _env["_G"]
		3759	[  0]	KSTR 	 61		135	; slot61 = "currentGameLang"
		3760	[  0]	TGETV	 60	60	61	; slot60 = _G[slot61]
		3761	[  0]	IST  	   		60	; if slot60
		3762	[  0]	JMP  	 61		1	; 	goto 3764
		3763	[  0]	KSTR 	 60		134	; slot60 = "ko"
		3764	[  0]	CALL 	 57	2	3	; slot57 = slot57(slot58, slot59)
		3765	[  0]	GGET 	 58		264	; slot58 = _env["tostring"]
		3766	[  0]	MOV  	 60		56	; slot60 = slot56
		3767	[  0]	CALL 	 58	2	2	; slot58 = tostring(slot59)
		3768	[  0]	CAT  	 57	57	58	; slot57 = slot57 .. tostring
		3769	[  0]	UGET 	 58		0	; slot58 = uv0"unknwon"
		3770	[  0]	TDUP 	 59		133	; slot59 = copy table#k133
		3771	[  0]	KSTR 	 60		132	; slot60 = "label"
		3772	[  0]	TSETV	 57	59	60	; slot59[slot60] = slot57
		3773	[  0]	TSETS	 59	58	432	; uv0"unknown"._previewConvertInfo = slot59
		3774	[  0]	TGETS	 50	11	358	; slot50 = uv1"unknown".lastUnit.grade
		3775	[  0]	IST  	   		50	; if uv1"unknown".lastUnit.grade
		3776	[  0]	JMP  	 51		1	; 	goto 3778
		3777	[  0]	KSTR 	 50		216	; slot50 = "normal"
		3778	[  0]	TGETS	 51	11	217	; slot51 = uv1"unknown".lastUnit.jackpot5th
		3779	[  0]	ISNEP	 51		2	; if uv1"unknown".lastUnit.jackpot5th ~= true
		3780	[  0]	JMP  	 51		1	; 	goto 3782
		3781	[  0]	KSTR 	 50		267	; slot50 = "prism"
		3782	[  0]	KSTR 	 51		131	; slot51 = "maxImprintSlots"
		3783	[  0]	TGETV	 51	11	51	; slot51 = uv1"unknown".lastUnit[slot51]
		3784	[  0]	IST  	   		51	; if slot51
		3785	[  0]	JMP  	 52		24	; 	goto 3810
		3786	[  0]	UGET 	 52		18	; slot52 = uv18"unknwon"
		3787	[  0]	ISF  	   		52	; if not uv18"unknown"
		3788	[  0]	JMP  	 53		20	; 	goto 3809
		3789	[  0]	UGET 	 52		18	; slot52 = uv18"unknwon"
		3790	[  0]	KSTR 	 53		130	; slot53 = "imprint"
		3791	[  0]	TGETV	 52	52	53	; slot52 = uv18"unknown"[slot53]
		3792	[  0]	ISF  	   		52	; if not slot52
		3793	[  0]	JMP  	 53		15	; 	goto 3809
		3794	[  0]	UGET 	 52		18	; slot52 = uv18"unknwon"
		3795	[  0]	KSTR 	 53		130	; slot53 = "imprint"
		3796	[  0]	TGETV	 52	52	53	; slot52 = uv18"unknown"[slot53]
		3797	[  0]	KSTR 	 53		129	; slot53 = "slots"
		3798	[  0]	TGETV	 52	52	53	; slot52 = slot52[slot53]
		3799	[  0]	ISF  	   		52	; if not slot52
		3800	[  0]	JMP  	 53		8	; 	goto 3809
		3801	[  0]	UGET 	 52		18	; slot52 = uv18"unknwon"
		3802	[  0]	KSTR 	 53		130	; slot53 = "imprint"
		3803	[  0]	TGETV	 52	52	53	; slot52 = uv18"unknown"[slot53]
		3804	[  0]	KSTR 	 53		129	; slot53 = "slots"
		3805	[  0]	TGETV	 52	52	53	; slot52 = slot52[slot53]
		3806	[  0]	TGETV	 52	52	50	; slot52 = slot52[slot50]
		3807	[  0]	ISTC 	 51		52	; slot51 = slot52; if slot52
		3808	[  0]	JMP  	 53		1	; 	goto 3810
		3809	[  0]	KSHORT	 51		1	; slot51 = 1
		3810	[  0]	GGET 	 52		398	; slot52 = _env["math"]
		3811	[  0]	TGETS	 52	52	313	; slot52 = math.max
		3812	[  0]	KSHORT	 54		1	; slot54 = 1
		3813	[  0]	GGET 	 55		398	; slot55 = _env["math"]
		3814	[  0]	TGETS	 55	55	221	; slot55 = math.min
		3815	[  0]	KSHORT	 57		5	; slot57 = 5
		3816	[  0]	GGET 	 58		398	; slot58 = _env["math"]
		3817	[  0]	TGETS	 58	58	380	; slot58 = math.floor
		3818	[  0]	GGET 	 60		393	; slot60 = _env["tonumber"]
		3819	[  0]	MOV  	 62		51	; slot62 = slot51
		3820	[  0]	CALL 	 60	2	2	; slot60 = tonumber(slot61)
		3821	[  0]	IST  	   		60	; if tonumber
		3822	[  0]	JMP  	 61		1	; 	goto 3824
		3823	[  0]	KSHORT	 60		1	; slot60 = 1
		3824	[  0]	CALL 	 58	0	2	; MULTRES = math.floor(slot59)
		3825	[  0]	CALLM	 55	0	1	; MULTRES = math.min(slot56, ...MULTRES)
		3826	[  0]	CALLM	 52	2	1	; slot52 = math.max(slot53, ...MULTRES)
		3827	[  0]	MOV  	 51		52	; slot51 = math.max
		3828	[  0]	KSTR 	 52		128	; slot52 = "imprints"
		3829	[  0]	TGETV	 52	11	52	; slot52 = uv1"unknown".lastUnit[slot52]
		3830	[  0]	IST  	   		52	; if slot52
		3831	[  0]	JMP  	 53		1	; 	goto 3833
		3832	[  0]	TNEW 	 52		0	; slot52 = new table( array: 0, dict: 1)
		3833	[  0]	TNEW 	 53		0	; slot53 = new table( array: 0, dict: 1)
		3834	[  0]	KSHORT	 54		1	; slot54 = 1
		3835	[  0]	MOV  	 55		51	; slot55 = math.max
		3836	[  0]	KSHORT	 56		1	; slot56 = 1
		3837	[  0]	FORI 	 54		9	; for slot57 = slot54,slot55,slot56 else goto 3847
		3838	[  0]	TGETV	 58	52	57	; slot58 = slot52[slot57]
		3839	[  0]	TSETV	 58	53	57	; slot53[slot57] = slot58
		3840	[  0]	TGETV	 58	53	57	; slot58 = slot53[slot57]
		3841	[  0]	ISF  	   		58	; if not slot58
		3842	[  0]	JMP  	 59		3	; 	goto 3846
		3843	[  0]	UGET 	 58		23	; slot58 = uv23"unknwon"
		3844	[  0]	TGETV	 60	53	57	; slot60 = slot53[slot57]
		3845	[  0]	CALL 	 58	1	2	;  = uv23"unknown"(slot59)
		3846	[  0]	FORL 	 54		-9	; slot57 = slot57 + slot56; if cmp(slot57, sign slot56,  math.max) goto 3838
		3847	[  0]	KPRI 	 54		0	; slot54 = nil
		3848	[  0]	ISF  	   		2	; if not slot2
		3849	[  0]	JMP  	 55		68	; 	goto 3918
		3850	[  0]	KSTR 	 55		127	; slot55 = "predictionSource"
		3851	[  0]	TGETV	 55	2	55	; slot55 = slot2[slot55]
		3852	[  0]	ISF  	   		55	; if not slot55
		3853	[  0]	JMP  	 56		64	; 	goto 3918
		3854	[  0]	UGET 	 55		24	; slot55 = uv24"unknwon"
		3855	[  0]	KSTR 	 57		127	; slot57 = "predictionSource"
		3856	[  0]	TGETV	 57	2	57	; slot57 = slot2[slot57]
		3857	[  0]	CALL 	 55	2	2	; slot55 = uv24"unknown"(slot56)
		3858	[  0]	ISF  	   		55	; if not uv24"unknown"
		3859	[  0]	JMP  	 56		58	; 	goto 3918
		3860	[  0]	KPRI 	 56		1	; slot56 = false
		3861	[  0]	KSHORT	 57		1	; slot57 = 1
		3862	[  0]	MOV  	 58		51	; slot58 = math.max
		3863	[  0]	KSHORT	 59		1	; slot59 = 1
		3864	[  0]	FORI 	 57		10	; for slot60 = slot57,slot58,slot59 else goto 3875
		3865	[  0]	TGETV	 61	53	60	; slot61 = slot53[slot60]
		3866	[  0]	ISF  	   		61	; if not slot61
		3867	[  0]	JMP  	 62		6	; 	goto 3874
		3868	[  0]	TGETS	 62	61	323	; slot62 = slot61.id
		3869	[  0]	TGETS	 63	55	323	; slot63 = uv24"unknown".id
		3870	[  0]	ISNEV	 62		63	; if <unknown table>.id ~= uv24"unknown".id
		3871	[  0]	JMP  	 62		2	; 	goto 3874
		3872	[  0]	KPRI 	 56		2	; slot56 = true
		3873	[  0]	JMP  	 57		1	; 	goto 3875
		3874	[  0]	FORL 	 57		-10	; slot60 = slot60 + slot59; if cmp(slot60, sign slot59,  math.max) goto 3865
		3875	[  0]	KSTR 	 57		126	; slot57 = "predictionSlot"
		3876	[  0]	TGETV	 57	2	57	; slot57 = slot2[slot57]
		3877	[  0]	GGET 	 58		125	; slot58 = _env["type"]
		3878	[  0]	MOV  	 60		57	; slot60 = slot57
		3879	[  0]	CALL 	 58	2	2	; slot58 = type(slot59)
		3880	[  0]	ISEQS	 58		124	; if type == "number"
		3881	[  0]	JMP  	 58		4	; 	goto 3886
		3882	[  0]	GGET 	 58		393	; slot58 = _env["tonumber"]
		3883	[  0]	MOV  	 60		57	; slot60 = slot57
		3884	[  0]	CALL 	 58	2	2	; slot58 = tonumber(slot59)
		3885	[  0]	MOV  	 57		58	; slot57 = tonumber
		3886	[  0]	IST  	   		56	; if slot56
		3887	[  0]	JMP  	 58		30	; 	goto 3918
		3888	[  0]	KPRI 	 58		0	; slot58 = nil
		3889	[  0]	ISF  	   		57	; if not tonumber
		3890	[  0]	JMP  	 59		7	; 	goto 3898
		3891	[  0]	KSHORT	 59		1	; slot59 = 1
		3892	[  0]	ISGT 	 59		57	; if slot59 > tonumber
		3893	[  0]	JMP  	 59		4	; 	goto 3898
		3894	[  0]	ISGT 	 57		51	; if tonumber > math.max
		3895	[  0]	JMP  	 59		2	; 	goto 3898
		3896	[  0]	MOV  	 58		57	; slot58 = tonumber
		3897	[  0]	JMP  	 59		10	; 	goto 3908
		3898	[  0]	KSHORT	 59		1	; slot59 = 1
		3899	[  0]	MOV  	 60		51	; slot60 = math.max
		3900	[  0]	KSHORT	 61		1	; slot61 = 1
		3901	[  0]	FORI 	 59		6	; for <unknown table>.id = slot59,slot60,slot61 else goto 3908
		3902	[  0]	TGETV	 63	53	62	; slot63 = slot53[<unknown table>.id]
		3903	[  0]	ISNEP	 63		0	; if slot63 ~= nil
		3904	[  0]	JMP  	 63		2	; 	goto 3907
		3905	[  0]	MOV  	 58		62	; slot58 = <unknown table>.id
		3906	[  0]	JMP  	 59		1	; 	goto 3908
		3907	[  0]	FORL 	 59		-6	; <unknown table>.id = <unknown table>.id + slot61; if cmp(<unknown table>.id, sign slot61,  math.max) goto 3902
		3908	[  0]	ISF  	   		58	; if not <unknown table>.id
		3909	[  0]	JMP  	 59		8	; 	goto 3918
		3910	[  0]	UGET 	 59		25	; slot59 = uv25"unknwon"
		3911	[  0]	MOV  	 61		55	; slot61 = uv24"unknown"
		3912	[  0]	CALL 	 59	2	2	; slot59 = uv25"unknown"(math.max)
		3913	[  0]	KSTR 	 60		123	; slot60 = "_isPrediction"
		3914	[  0]	KPRI 	 61		2	; slot61 = true
		3915	[  0]	TSETV	 61	59	60	; uv25"unknown"[slot60] = slot61
		3916	[  0]	TSETV	 59	53	58	; slot53[<unknown table>.id] = uv25"unknown"
		3917	[  0]	MOV  	 54		58	; slot54 = <unknown table>.id
		3918	[  0]	UGET 	 55		5	; slot55 = uv5"unknwon"
		3919	[  0]	MULNV	 57	29	4	; slot57 = 10 * slot29
		3920	[  0]	CALL 	 55	2	2	; slot55 = uv5"unknown"(slot56)
		3921	[  0]	UGET 	 56		5	; slot56 = uv5"unknwon"
		3922	[  0]	MULNV	 58	29	33	; slot58 = 52 * slot29
		3923	[  0]	CALL 	 56	2	2	; slot56 = uv5"unknown"(slot57)
		3924	[  0]	UGET 	 57		5	; slot57 = uv5"unknwon"
		3925	[  0]	MULNV	 59	29	5	; slot59 = 8 * slot29
		3926	[  0]	CALL 	 57	2	2	; slot57 = uv5"unknown"(slot58)
		3927	[  0]	UGET 	 58		5	; slot58 = uv5"unknwon"
		3928	[  0]	MULNV	 60	29	2	; slot60 = 3 * slot29
		3929	[  0]	CALL 	 58	2	2	; slot58 = uv5"unknown"(slot59)
		3930	[  0]	UGET 	 59		5	; slot59 = uv5"unknwon"
		3931	[  0]	ADDVV	 61	32	55	; slot61 = uv5"unknown" + uv5"unknown"
		3932	[  0]	CALL 	 59	2	2	; slot59 = uv5"unknown"(slot60)
		3933	[  0]	UGET 	 60		5	; slot60 = uv5"unknwon"
		3934	[  0]	ADDVV	 62	33	56	; slot62 = uv5"unknown" + uv5"unknown"
		3935	[  0]	CALL 	 60	2	2	; slot60 = uv5"unknown"(slot61)
		3936	[  0]	UGET 	 61		5	; slot61 = uv5"unknwon"
		3937	[  0]	MULVN	 63	55	8	; slot63 = uv5"unknown" * 2
		3938	[  0]	SUBVV	 63	31	63	; slot63 = uv4"unknown".getWidth - slot63
		3939	[  0]	CALL 	 61	2	2	; slot61 = uv5"unknown"(slot62)
		3940	[  0]	UGET 	 62		5	; slot62 = uv5"unknwon"
		3941	[  0]	SUBVV	 64	30	56	; slot64 = uv4"unknown".getHeight - uv5"unknown"
		3942	[  0]	SUBVV	 64	64	57	; slot64 = slot64 - uv5"unknown"
		3943	[  0]	CALL 	 62	2	2	; slot62 = uv5"unknown"(slot63)
		3944	[  0]	KSHORT	 63		1	; slot63 = 1
		3945	[  0]	ISLE 	 61		63	; if uv5"unknown" <= slot63
		3946	[  0]	JMP  	 63		3	; 	goto 3950
		3947	[  0]	KSHORT	 63		1	; slot63 = 1
		3948	[  0]	ISGT 	 62		63	; if uv5"unknown" > slot63
		3949	[  0]	JMP  	 63		1	; 	goto 3951
		3950	[  0]	UCLO 	  0		4324	; nil uvs >= r0; goto 8275
		3951	[  0]	MOV  	 63		59	; slot63 = uv5"unknown"
		3952	[  0]	MOV  	 64		61	; slot64 = uv5"unknown"
		3953	[  0]	MOV  	 65		60	; slot65 = uv5"unknown"
		3954	[  0]	MOV  	 66		62	; slot66 = uv5"unknown"
		3955	[  0]	TGETS	 67	0	368	; slot67 = slot0.imprintPanel
		3956	[  0]	ISF  	   		67	; if not <unknown table>.imprintPanel
		3957	[  0]	JMP  	 68		62	; 	goto 4020
		3958	[  0]	GGET 	 68		393	; slot68 = _env["tonumber"]
		3959	[  0]	TGETS	 70	67	222	; slot70 = <unknown table>.imprintPanel.slotW
		3960	[  0]	CALL 	 68	2	2	; slot68 = tonumber(uv13"unknown".getForUnit)
		3961	[  0]	ISF  	   		68	; if not tonumber
		3962	[  0]	JMP  	 69		23	; 	goto 3986
		3963	[  0]	KSHORT	 69		0	; slot69 = 0
		3964	[  0]	ISGE 	 69		68	; if slot69 >= tonumber
		3965	[  0]	JMP  	 69		20	; 	goto 3986
		3966	[  0]	UGET 	 69		5	; slot69 = uv5"unknwon"
		3967	[  0]	MULVV	 71	68	29	; slot71 = tonumber * slot29
		3968	[  0]	CALL 	 69	2	2	; slot69 = uv5"unknown"(<unknown table>.imprintPanel.slotW)
		3969	[  0]	GGET 	 70		398	; slot70 = _env["math"]
		3970	[  0]	TGETS	 70	70	313	; slot70 = math.max
		3971	[  0]	KSHORT	 72		60	; slot72 = 60
		3972	[  0]	GGET 	 73		398	; slot73 = _env["math"]
		3973	[  0]	TGETS	 73	73	221	; slot73 = math.min
		3974	[  0]	MOV  	 75		61	; slot75 = uv5"unknown"
		3975	[  0]	MOV  	 76		69	; slot76 = uv5"unknown"
		3976	[  0]	CALL 	 73	0	3	; MULTRES = math.min(slot74, uv5"unknown")
		3977	[  0]	CALLM	 70	2	1	; slot70 = math.max(slot71, ...MULTRES)
		3978	[  0]	MOV  	 69		70	; slot69 = math.max
		3979	[  0]	MOV  	 64		69	; slot64 = math.max
		3980	[  0]	UGET 	 70		5	; slot70 = uv5"unknwon"
		3981	[  0]	SUBVV	 72	61	64	; slot72 = uv5"unknown" - math.max
		3982	[  0]	MULVN	 72	72	6	; slot72 = slot72 * 0.5
		3983	[  0]	ADDVV	 72	59	72	; slot72 = uv5"unknown" + slot72
		3984	[  0]	CALL 	 70	2	2	; slot70 = uv5"unknown"(slot71)
		3985	[  0]	MOV  	 63		70	; slot63 = uv5"unknown"
		3986	[  0]	GGET 	 69		393	; slot69 = _env["tonumber"]
		3987	[  0]	TGETS	 71	67	220	; slot71 = <unknown table>.imprintPanel.slotX
		3988	[  0]	CALL 	 69	2	2	; slot69 = tonumber(uv5"unknown")
		3989	[  0]	ISF  	   		69	; if not tonumber
		3990	[  0]	JMP  	 70		5	; 	goto 3996
		3991	[  0]	UGET 	 70		5	; slot70 = uv5"unknwon"
		3992	[  0]	MULVV	 72	69	29	; slot72 = tonumber * slot29
		3993	[  0]	ADDVV	 72	32	72	; slot72 = uv5"unknown" + slot72
		3994	[  0]	CALL 	 70	2	2	; slot70 = uv5"unknown"(<unknown table>.imprintPanel.slotX)
		3995	[  0]	MOV  	 63		70	; slot63 = uv5"unknown"
		3996	[  0]	GGET 	 70		393	; slot70 = _env["tonumber"]
		3997	[  0]	KSTR 	 72		122	; slot72 = "slotY"
		3998	[  0]	TGETV	 72	67	72	; slot72 = <unknown table>.imprintPanel[slot72]
		3999	[  0]	CALL 	 70	2	2	; slot70 = tonumber(<unknown table>.imprintPanel.slotX)
		4000	[  0]	ISF  	   		70	; if not tonumber
		4001	[  0]	JMP  	 71		5	; 	goto 4007
		4002	[  0]	UGET 	 71		5	; slot71 = uv5"unknwon"
		4003	[  0]	MULVV	 73	70	29	; slot73 = tonumber * slot29
		4004	[  0]	ADDVV	 73	33	73	; slot73 = uv5"unknown" + slot73
		4005	[  0]	CALL 	 71	2	2	; slot71 = uv5"unknown"(slot72)
		4006	[  0]	MOV  	 65		71	; slot65 = uv5"unknown"
		4007	[  0]	GGET 	 71		393	; slot71 = _env["tonumber"]
		4008	[  0]	KSTR 	 73		121	; slot73 = "slotH"
		4009	[  0]	TGETV	 73	67	73	; slot73 = <unknown table>.imprintPanel[slot73]
		4010	[  0]	CALL 	 71	2	2	; slot71 = tonumber(slot72)
		4011	[  0]	ISF  	   		71	; if not tonumber
		4012	[  0]	JMP  	 72		7	; 	goto 4020
		4013	[  0]	KSHORT	 72		0	; slot72 = 0
		4014	[  0]	ISGE 	 72		71	; if slot72 >= tonumber
		4015	[  0]	JMP  	 72		4	; 	goto 4020
		4016	[  0]	UGET 	 72		5	; slot72 = uv5"unknwon"
		4017	[  0]	MULVV	 74	71	29	; slot74 = tonumber * slot29
		4018	[  0]	CALL 	 72	2	2	; slot72 = uv5"unknown"(slot73)
		4019	[  0]	MOV  	 66		72	; slot66 = uv5"unknown"
		4020	[  0]	KSHORT	 67		5	; slot67 = 5
		4021	[  0]	GGET 	 68		398	; slot68 = _env["math"]
		4022	[  0]	TGETS	 68	68	313	; slot68 = math.max
		4023	[  0]	KSHORT	 70		1	; slot70 = 1
		4024	[  0]	GGET 	 71		398	; slot71 = _env["math"]
		4025	[  0]	TGETS	 71	71	221	; slot71 = math.min
		4026	[  0]	MOV  	 73		67	; slot73 = slot67
		4027	[  0]	ISTC 	 74		51	; slot74 = math.max; if math.max
		4028	[  0]	JMP  	 74		1	; 	goto 4030
		4029	[  0]	KSHORT	 74		1	; slot74 = 1
		4030	[  0]	CALL 	 71	0	3	; MULTRES = math.min(uv5"unknown", slot73)
		4031	[  0]	CALLM	 68	2	1	; slot68 = math.max(tonumber, ...MULTRES)
		4032	[  0]	UGET 	 69		0	; slot69 = uv0"unknwon"
		4033	[  0]	KSTR 	 70		120	; slot70 = "_slotBgImage"
		4034	[  0]	TGETV	 69	69	70	; slot69 = uv0"unknown"[slot70]
		4035	[  0]	ISNEP	 69		0	; if slot69 ~= nil
		4036	[  0]	JMP  	 69		84	; 	goto 4121
		4037	[  0]	KSTR 	 69		119	; slot69 = "src/sprites/background/mainbackground/Imprintslot.png"
		4038	[  0]	GGET 	 70		344	; slot70 = _env["pcall"]
		4039	[  0]	GGET 	 72		424	; slot72 = _env["love"]
		4040	[  0]	TGETS	 72	72	343	; slot72 = love.graphics
		4041	[  0]	TGETS	 72	72	342	; slot72 = love.graphics.newImage
		4042	[  0]	MOV  	 73		69	; slot73 = slot69
		4043	[  0]	CALL 	 70	3	3	; slot70, slot71 = pcall(math.min, love.graphics.newImage)
		4044	[  0]	ISF  	   		70	; if not pcall
		4045	[  0]	JMP  	 72		71	; 	goto 4117
		4046	[  0]	ISF  	   		71	; if not math.min
		4047	[  0]	JMP  	 72		69	; 	goto 4117
		4048	[  0]	MOV  	 74		71	; slot74 = math.min
		4049	[  0]	TGETS	 72	71	341	; slot72 = math.min.setFilter
		4050	[  0]	KSTR 	 75		340	; slot75 = "nearest"
		4051	[  0]	KSTR 	 76		340	; slot76 = "nearest"
		4052	[  0]	CALL 	 72	1	4	;  = math.min.setFilter(slot73, math.min, slot75)
		4053	[  0]	UGET 	 72		0	; slot72 = uv0"unknwon"
		4054	[  0]	KSTR 	 73		120	; slot73 = "_slotBgImage"
		4055	[  0]	TSETV	 71	72	73	; uv0"unknown"[slot73] = math.min
		4056	[  0]	GGET 	 72		344	; slot72 = _env["pcall"]
		4057	[  0]	GGET 	 74		424	; slot74 = _env["love"]
		4058	[  0]	KSTR 	 75		118	; slot75 = "image"
		4059	[  0]	TGETV	 74	74	75	; slot74 = love[slot75]
		4060	[  0]	KSTR 	 75		117	; slot75 = "newImageData"
		4061	[  0]	TGETV	 74	74	75	; slot74 = slot74[slot75]
		4062	[  0]	MOV  	 75		69	; slot75 = slot69
		4063	[  0]	CALL 	 72	3	3	; slot72, slot73 = pcall(slot73, slot74)
		4064	[  0]	ISF  	   		72	; if not pcall
		4065	[  0]	JMP  	 74		55	; 	goto 4121
		4066	[  0]	ISF  	   		73	; if not slot73
		4067	[  0]	JMP  	 74		53	; 	goto 4121
		4068	[  0]	MOV  	 76		73	; slot76 = slot73
		4069	[  0]	TGETS	 74	73	339	; slot74 = slot73.getDimensions
		4070	[  0]	CALL 	 74	3	2	; slot74, slot75 = <unknown table>.getDimensions(slot75)
		4071	[  0]	MOV  	 76		74	; slot76 = <unknown table>.getDimensions
		4072	[  0]	KSHORT	 77		0	; slot77 = 0
		4073	[  0]	KSHORT	 78		0	; slot78 = 0
		4074	[  0]	SUBVN	 79	75	10	; slot79 = slot75 - 1
		4075	[  0]	KSHORT	 80		1	; slot80 = 1
		4076	[  0]	FORI 	 78		21	; for slot81 = slot78,slot79,slot80 else goto 4098
		4077	[  0]	KSHORT	 82		0	; slot82 = 0
		4078	[  0]	SUBVN	 83	74	10	; slot83 = <unknown table>.getDimensions - 1
		4079	[  0]	KSHORT	 84		1	; slot84 = 1
		4080	[  0]	FORI 	 82		16	; for slot85 = slot82,slot83,slot84 else goto 4097
		4081	[  0]	MOV  	 88		73	; slot88 = slot73
		4082	[  0]	KSTR 	 89		116	; slot89 = "getPixel"
		4083	[  0]	TGETV	 86	73	89	; slot86 = slot73[slot89]
		4084	[  0]	MOV  	 89		85	; slot89 = slot85
		4085	[  0]	MOV  	 90		81	; slot90 = slot81
		4086	[  0]	CALL 	 86	5	4	; slot86, slot87, slot88, slot89 = slot86(math.max, slot88, slot89)
		4087	[  0]	KSHORT	 90		0	; slot90 = 0
		4088	[  0]	ISGE 	 90		89	; if slot90 >= slot89
		4089	[  0]	JMP  	 90		6	; 	goto 4096
		4090	[  0]	ISGE 	 85		76	; if slot85 >= <unknown table>.getDimensions
		4091	[  0]	JMP  	 90		1	; 	goto 4093
		4092	[  0]	MOV  	 76		85	; slot76 = slot85
		4093	[  0]	ISGE 	 77		85	; if slot77 >= slot85
		4094	[  0]	JMP  	 90		1	; 	goto 4096
		4095	[  0]	MOV  	 77		85	; slot77 = slot85
		4096	[  0]	FORL 	 82		-16	; slot85 = slot85 + slot84; if cmp(slot85, sign slot84,  slot83) goto 4081
		4097	[  0]	FORL 	 78		-21	; slot81 = slot81 + slot80; if cmp(slot81, sign slot80,  slot79) goto 4077
		4098	[  0]	ISGT 	 76		77	; if slot76 > slot77
		4099	[  0]	JMP  	 78		9	; 	goto 4109
		4100	[  0]	UGET 	 78		0	; slot78 = uv0"unknwon"
		4101	[  0]	KSTR 	 79		115	; slot79 = "_slotTrimmedW"
		4102	[  0]	SUBVV	 80	77	76	; slot80 = slot77 - slot76
		4103	[  0]	ADDVN	 80	80	10	; slot80 = slot80 + 1
		4104	[  0]	TSETV	 80	78	79	; uv0"unknown"[slot79] = slot80
		4105	[  0]	UGET 	 78		0	; slot78 = uv0"unknwon"
		4106	[  0]	KSTR 	 79		114	; slot79 = "_slotTrimmedOffsetX"
		4107	[  0]	TSETV	 76	78	79	; uv0"unknown"[slot79] = slot76
		4108	[  0]	JMP  	 78		12	; 	goto 4121
		4109	[  0]	UGET 	 78		0	; slot78 = uv0"unknwon"
		4110	[  0]	KSTR 	 79		115	; slot79 = "_slotTrimmedW"
		4111	[  0]	TSETV	 74	78	79	; uv0"unknown"[slot79] = <unknown table>.getDimensions
		4112	[  0]	UGET 	 78		0	; slot78 = uv0"unknwon"
		4113	[  0]	KSTR 	 79		114	; slot79 = "_slotTrimmedOffsetX"
		4114	[  0]	KSHORT	 80		0	; slot80 = 0
		4115	[  0]	TSETV	 80	78	79	; uv0"unknown"[slot79] = slot80
		4116	[  0]	JMP  	 72		4	; 	goto 4121
		4117	[  0]	UGET 	 72		0	; slot72 = uv0"unknwon"
		4118	[  0]	KSTR 	 73		120	; slot73 = "_slotBgImage"
		4119	[  0]	KPRI 	 74		1	; slot74 = false
		4120	[  0]	TSETV	 74	72	73	; uv0"unknown"[slot73] = slot74
		4121	[  0]	UGET 	 69		0	; slot69 = uv0"unknwon"
		4122	[  0]	KSTR 	 70		113	; slot70 = "_gainBgImage"
		4123	[  0]	TGETV	 69	69	70	; slot69 = uv0"unknown"[slot70]
		4124	[  0]	ISNEP	 69		0	; if slot69 ~= nil
		4125	[  0]	JMP  	 69		24	; 	goto 4150
		4126	[  0]	KSTR 	 69		112	; slot69 = "src/sprites/background/mainbackground/Imprintgainbackground.png"
		4127	[  0]	GGET 	 70		344	; slot70 = _env["pcall"]
		4128	[  0]	GGET 	 72		424	; slot72 = _env["love"]
		4129	[  0]	TGETS	 72	72	343	; slot72 = love.graphics
		4130	[  0]	TGETS	 72	72	342	; slot72 = love.graphics.newImage
		4131	[  0]	MOV  	 73		69	; slot73 = slot69
		4132	[  0]	CALL 	 70	3	3	; slot70, slot71 = pcall(math.min, love.graphics.newImage)
		4133	[  0]	ISF  	   		70	; if not pcall
		4134	[  0]	JMP  	 72		11	; 	goto 4146
		4135	[  0]	ISF  	   		71	; if not math.min
		4136	[  0]	JMP  	 72		9	; 	goto 4146
		4137	[  0]	MOV  	 74		71	; slot74 = math.min
		4138	[  0]	TGETS	 72	71	341	; slot72 = math.min.setFilter
		4139	[  0]	KSTR 	 75		340	; slot75 = "nearest"
		4140	[  0]	KSTR 	 76		340	; slot76 = "nearest"
		4141	[  0]	CALL 	 72	1	4	;  = math.min.setFilter(slot73, math.min, slot75)
		4142	[  0]	UGET 	 72		0	; slot72 = uv0"unknwon"
		4143	[  0]	KSTR 	 73		113	; slot73 = "_gainBgImage"
		4144	[  0]	TSETV	 71	72	73	; uv0"unknown"[slot73] = math.min
		4145	[  0]	JMP  	 72		4	; 	goto 4150
		4146	[  0]	UGET 	 72		0	; slot72 = uv0"unknwon"
		4147	[  0]	KSTR 	 73		113	; slot73 = "_gainBgImage"
		4148	[  0]	KPRI 	 74		1	; slot74 = false
		4149	[  0]	TSETV	 74	72	73	; uv0"unknown"[slot73] = slot74
		4150	[  0]	UGET 	 69		0	; slot69 = uv0"unknwon"
		4151	[  0]	KSTR 	 70		111	; slot70 = "_cancelBtnImage"
		4152	[  0]	TGETV	 69	69	70	; slot69 = uv0"unknown"[slot70]
		4153	[  0]	ISNEP	 69		0	; if slot69 ~= nil
		4154	[  0]	JMP  	 69		24	; 	goto 4179
		4155	[  0]	KSTR 	 69		110	; slot69 = "src/sprites/background/button/cancelbutton.png"
		4156	[  0]	GGET 	 70		344	; slot70 = _env["pcall"]
		4157	[  0]	GGET 	 72		424	; slot72 = _env["love"]
		4158	[  0]	TGETS	 72	72	343	; slot72 = love.graphics
		4159	[  0]	TGETS	 72	72	342	; slot72 = love.graphics.newImage
		4160	[  0]	MOV  	 73		69	; slot73 = slot69
		4161	[  0]	CALL 	 70	3	3	; slot70, slot71 = pcall(math.min, love.graphics.newImage)
		4162	[  0]	ISF  	   		70	; if not pcall
		4163	[  0]	JMP  	 72		11	; 	goto 4175
		4164	[  0]	ISF  	   		71	; if not math.min
		4165	[  0]	JMP  	 72		9	; 	goto 4175
		4166	[  0]	MOV  	 74		71	; slot74 = math.min
		4167	[  0]	TGETS	 72	71	341	; slot72 = math.min.setFilter
		4168	[  0]	KSTR 	 75		340	; slot75 = "nearest"
		4169	[  0]	KSTR 	 76		340	; slot76 = "nearest"
		4170	[  0]	CALL 	 72	1	4	;  = math.min.setFilter(slot73, math.min, slot75)
		4171	[  0]	UGET 	 72		0	; slot72 = uv0"unknwon"
		4172	[  0]	KSTR 	 73		111	; slot73 = "_cancelBtnImage"
		4173	[  0]	TSETV	 71	72	73	; uv0"unknown"[slot73] = math.min
		4174	[  0]	JMP  	 72		4	; 	goto 4179
		4175	[  0]	UGET 	 72		0	; slot72 = uv0"unknwon"
		4176	[  0]	KSTR 	 73		111	; slot73 = "_cancelBtnImage"
		4177	[  0]	KPRI 	 74		1	; slot74 = false
		4178	[  0]	TSETV	 74	72	73	; uv0"unknown"[slot73] = slot74
		4179	[  0]	UGET 	 69		0	; slot69 = uv0"unknwon"
		4180	[  0]	KSTR 	 70		109	; slot70 = "_upgradeBtnImage"
		4181	[  0]	TGETV	 69	69	70	; slot69 = uv0"unknown"[slot70]
		4182	[  0]	ISNEP	 69		0	; if slot69 ~= nil
		4183	[  0]	JMP  	 69		24	; 	goto 4208
		4184	[  0]	KSTR 	 69		108	; slot69 = "src/sprites/background/button/imprintupgrade.png"
		4185	[  0]	GGET 	 70		344	; slot70 = _env["pcall"]
		4186	[  0]	GGET 	 72		424	; slot72 = _env["love"]
		4187	[  0]	TGETS	 72	72	343	; slot72 = love.graphics
		4188	[  0]	TGETS	 72	72	342	; slot72 = love.graphics.newImage
		4189	[  0]	MOV  	 73		69	; slot73 = slot69
		4190	[  0]	CALL 	 70	3	3	; slot70, slot71 = pcall(math.min, love.graphics.newImage)
		4191	[  0]	ISF  	   		70	; if not pcall
		4192	[  0]	JMP  	 72		11	; 	goto 4204
		4193	[  0]	ISF  	   		71	; if not math.min
		4194	[  0]	JMP  	 72		9	; 	goto 4204
		4195	[  0]	MOV  	 74		71	; slot74 = math.min
		4196	[  0]	TGETS	 72	71	341	; slot72 = math.min.setFilter
		4197	[  0]	KSTR 	 75		340	; slot75 = "nearest"
		4198	[  0]	KSTR 	 76		340	; slot76 = "nearest"
		4199	[  0]	CALL 	 72	1	4	;  = math.min.setFilter(slot73, math.min, slot75)
		4200	[  0]	UGET 	 72		0	; slot72 = uv0"unknwon"
		4201	[  0]	KSTR 	 73		109	; slot73 = "_upgradeBtnImage"
		4202	[  0]	TSETV	 71	72	73	; uv0"unknown"[slot73] = math.min
		4203	[  0]	JMP  	 72		4	; 	goto 4208
		4204	[  0]	UGET 	 72		0	; slot72 = uv0"unknwon"
		4205	[  0]	KSTR 	 73		109	; slot73 = "_upgradeBtnImage"
		4206	[  0]	KPRI 	 74		1	; slot74 = false
		4207	[  0]	TSETV	 74	72	73	; uv0"unknown"[slot73] = slot74
		4208	[  0]	UGET 	 69		0	; slot69 = uv0"unknwon"
		4209	[  0]	KSTR 	 70		107	; slot70 = "_confirmBtnImage"
		4210	[  0]	TGETV	 69	69	70	; slot69 = uv0"unknown"[slot70]
		4211	[  0]	ISNEP	 69		0	; if slot69 ~= nil
		4212	[  0]	JMP  	 69		24	; 	goto 4237
		4213	[  0]	KSTR 	 69		106	; slot69 = "src/sprites/background/button/imprintconfirm.png"
		4214	[  0]	GGET 	 70		344	; slot70 = _env["pcall"]
		4215	[  0]	GGET 	 72		424	; slot72 = _env["love"]
		4216	[  0]	TGETS	 72	72	343	; slot72 = love.graphics
		4217	[  0]	TGETS	 72	72	342	; slot72 = love.graphics.newImage
		4218	[  0]	MOV  	 73		69	; slot73 = slot69
		4219	[  0]	CALL 	 70	3	3	; slot70, slot71 = pcall(math.min, love.graphics.newImage)
		4220	[  0]	ISF  	   		70	; if not pcall
		4221	[  0]	JMP  	 72		11	; 	goto 4233
		4222	[  0]	ISF  	   		71	; if not math.min
		4223	[  0]	JMP  	 72		9	; 	goto 4233
		4224	[  0]	MOV  	 74		71	; slot74 = math.min
		4225	[  0]	TGETS	 72	71	341	; slot72 = math.min.setFilter
		4226	[  0]	KSTR 	 75		340	; slot75 = "nearest"
		4227	[  0]	KSTR 	 76		340	; slot76 = "nearest"
		4228	[  0]	CALL 	 72	1	4	;  = math.min.setFilter(slot73, math.min, slot75)
		4229	[  0]	UGET 	 72		0	; slot72 = uv0"unknwon"
		4230	[  0]	KSTR 	 73		107	; slot73 = "_confirmBtnImage"
		4231	[  0]	TSETV	 71	72	73	; uv0"unknown"[slot73] = math.min
		4232	[  0]	JMP  	 72		4	; 	goto 4237
		4233	[  0]	UGET 	 72		0	; slot72 = uv0"unknwon"
		4234	[  0]	KSTR 	 73		107	; slot73 = "_confirmBtnImage"
		4235	[  0]	KPRI 	 74		1	; slot74 = false
		4236	[  0]	TSETV	 74	72	73	; uv0"unknown"[slot73] = slot74
		4237	[  0]	UGET 	 69		0	; slot69 = uv0"unknwon"
		4238	[  0]	KSTR 	 70		105	; slot70 = "_changeBtnImage"
		4239	[  0]	TGETV	 69	69	70	; slot69 = uv0"unknown"[slot70]
		4240	[  0]	ISNEP	 69		0	; if slot69 ~= nil
		4241	[  0]	JMP  	 69		24	; 	goto 4266
		4242	[  0]	KSTR 	 69		104	; slot69 = "src/sprites/background/button/imprintchange.png"
		4243	[  0]	GGET 	 70		344	; slot70 = _env["pcall"]
		4244	[  0]	GGET 	 72		424	; slot72 = _env["love"]
		4245	[  0]	TGETS	 72	72	343	; slot72 = love.graphics
		4246	[  0]	TGETS	 72	72	342	; slot72 = love.graphics.newImage
		4247	[  0]	MOV  	 73		69	; slot73 = slot69
		4248	[  0]	CALL 	 70	3	3	; slot70, slot71 = pcall(math.min, love.graphics.newImage)
		4249	[  0]	ISF  	   		70	; if not pcall
		4250	[  0]	JMP  	 72		11	; 	goto 4262
		4251	[  0]	ISF  	   		71	; if not math.min
		4252	[  0]	JMP  	 72		9	; 	goto 4262
		4253	[  0]	MOV  	 74		71	; slot74 = math.min
		4254	[  0]	TGETS	 72	71	341	; slot72 = math.min.setFilter
		4255	[  0]	KSTR 	 75		340	; slot75 = "nearest"
		4256	[  0]	KSTR 	 76		340	; slot76 = "nearest"
		4257	[  0]	CALL 	 72	1	4	;  = math.min.setFilter(slot73, math.min, slot75)
		4258	[  0]	UGET 	 72		0	; slot72 = uv0"unknwon"
		4259	[  0]	KSTR 	 73		105	; slot73 = "_changeBtnImage"
		4260	[  0]	TSETV	 71	72	73	; uv0"unknown"[slot73] = math.min
		4261	[  0]	JMP  	 72		4	; 	goto 4266
		4262	[  0]	UGET 	 72		0	; slot72 = uv0"unknwon"
		4263	[  0]	KSTR 	 73		105	; slot73 = "_changeBtnImage"
		4264	[  0]	KPRI 	 74		1	; slot74 = false
		4265	[  0]	TSETV	 74	72	73	; uv0"unknown"[slot73] = slot74
		4266	[  0]	UGET 	 69		0	; slot69 = uv0"unknwon"
		4267	[  0]	KSTR 	 70		103	; slot70 = "_lockedIconImage"
		4268	[  0]	TGETV	 69	69	70	; slot69 = uv0"unknown"[slot70]
		4269	[  0]	ISNEP	 69		0	; if slot69 ~= nil
		4270	[  0]	JMP  	 69		24	; 	goto 4295
		4271	[  0]	KSTR 	 69		102	; slot69 = "src/sprites/icons/imprinticons/00locked.png"
		4272	[  0]	GGET 	 70		344	; slot70 = _env["pcall"]
		4273	[  0]	GGET 	 72		424	; slot72 = _env["love"]
		4274	[  0]	TGETS	 72	72	343	; slot72 = love.graphics
		4275	[  0]	TGETS	 72	72	342	; slot72 = love.graphics.newImage
		4276	[  0]	MOV  	 73		69	; slot73 = slot69
		4277	[  0]	CALL 	 70	3	3	; slot70, slot71 = pcall(math.min, love.graphics.newImage)
		4278	[  0]	ISF  	   		70	; if not pcall
		4279	[  0]	JMP  	 72		11	; 	goto 4291
		4280	[  0]	ISF  	   		71	; if not math.min
		4281	[  0]	JMP  	 72		9	; 	goto 4291
		4282	[  0]	MOV  	 74		71	; slot74 = math.min
		4283	[  0]	TGETS	 72	71	341	; slot72 = math.min.setFilter
		4284	[  0]	KSTR 	 75		340	; slot75 = "nearest"
		4285	[  0]	KSTR 	 76		340	; slot76 = "nearest"
		4286	[  0]	CALL 	 72	1	4	;  = math.min.setFilter(slot73, math.min, slot75)
		4287	[  0]	UGET 	 72		0	; slot72 = uv0"unknwon"
		4288	[  0]	KSTR 	 73		103	; slot73 = "_lockedIconImage"
		4289	[  0]	TSETV	 71	72	73	; uv0"unknown"[slot73] = math.min
		4290	[  0]	JMP  	 72		4	; 	goto 4295
		4291	[  0]	UGET 	 72		0	; slot72 = uv0"unknwon"
		4292	[  0]	KSTR 	 73		103	; slot73 = "_lockedIconImage"
		4293	[  0]	KPRI 	 74		1	; slot74 = false
		4294	[  0]	TSETV	 74	72	73	; uv0"unknown"[slot73] = slot74
		4295	[  0]	UGET 	 69		0	; slot69 = uv0"unknwon"
		4296	[  0]	KSTR 	 70		120	; slot70 = "_slotBgImage"
		4297	[  0]	TGETV	 69	69	70	; slot69 = uv0"unknown"[slot70]
		4298	[  0]	UGET 	 70		0	; slot70 = uv0"unknwon"
		4299	[  0]	KSTR 	 71		115	; slot71 = "_slotTrimmedW"
		4300	[  0]	TGETV	 70	70	71	; slot70 = uv0"unknown"[slot71]
		4301	[  0]	IST  	   		70	; if slot70
		4302	[  0]	JMP  	 71		8	; 	goto 4311
		4303	[  0]	ISF  	   		69	; if not slot69
		4304	[  0]	JMP  	 70		5	; 	goto 4310
		4305	[  0]	MOV  	 72		69	; slot72 = slot69
		4306	[  0]	TGETS	 70	69	382	; slot70 = slot69.getWidth
		4307	[  0]	CALL 	 70	2	2	; slot70 = <unknown table>.getWidth(slot71)
		4308	[  0]	IST  	   		70	; if <unknown table>.getWidth
		4309	[  0]	JMP  	 71		1	; 	goto 4311
		4310	[  0]	MOV  	 70		64	; slot70 = math.max
		4311	[  0]	UGET 	 71		0	; slot71 = uv0"unknwon"
		4312	[  0]	KSTR 	 72		114	; slot72 = "_slotTrimmedOffsetX"
		4313	[  0]	TGETV	 71	71	72	; slot71 = uv0"unknown"[slot72]
		4314	[  0]	IST  	   		71	; if slot71
		4315	[  0]	JMP  	 72		1	; 	goto 4317
		4316	[  0]	KSHORT	 71		0	; slot71 = 0
		4317	[  0]	KSHORT	 72		40	; slot72 = 40
		4318	[  0]	ISF  	   		69	; if not slot69
		4319	[  0]	JMP  	 73		4	; 	goto 4324
		4320	[  0]	MOV  	 75		69	; slot75 = slot69
		4321	[  0]	TGETS	 73	69	381	; slot73 = slot69.getHeight
		4322	[  0]	CALL 	 73	2	2	; slot73 = <unknown table>.getHeight(slot74)
		4323	[  0]	MOV  	 72		73	; slot72 = <unknown table>.getHeight
		4324	[  0]	IST  	   		69	; if slot69
		4325	[  0]	JMP  	 73		6	; 	goto 4332
		4326	[  0]	GGET 	 73		398	; slot73 = _env["math"]
		4327	[  0]	TGETS	 73	73	380	; slot73 = math.floor
		4328	[  0]	MULVV	 75	72	29	; slot75 = <unknown table>.getHeight * slot29
		4329	[  0]	ADDVN	 75	75	6	; slot75 = slot75 + 0.5
		4330	[  0]	CALL 	 73	2	2	; slot73 = math.floor(slot74)
		4331	[  0]	MOV  	 72		73	; slot72 = math.floor
		4332	[  0]	KSHORT	 58		3	; slot58 = 3
		4333	[  0]	TGETS	 73	0	368	; slot73 = slot0.imprintPanel
		4334	[  0]	ISF  	   		73	; if not <unknown table>.imprintPanel
		4335	[  0]	JMP  	 74		13	; 	goto 4349
		4336	[  0]	TGETS	 73	0	368	; slot73 = slot0.imprintPanel
		4337	[  0]	KSTR 	 74		101	; slot74 = "slotGap"
		4338	[  0]	TGETV	 73	73	74	; slot73 = <unknown table>.imprintPanel[slot74]
		4339	[  0]	ISF  	   		73	; if not slot73
		4340	[  0]	JMP  	 74		8	; 	goto 4349
		4341	[  0]	GGET 	 73		393	; slot73 = _env["tonumber"]
		4342	[  0]	TGETS	 75	0	368	; slot75 = slot0.imprintPanel
		4343	[  0]	KSTR 	 76		101	; slot76 = "slotGap"
		4344	[  0]	TGETV	 75	75	76	; slot75 = <unknown table>.imprintPanel[slot76]
		4345	[  0]	CALL 	 73	2	2	; slot73 = tonumber(slot74)
		4346	[  0]	ISTC 	 58		73	; slot58 = tonumber; if tonumber
		4347	[  0]	JMP  	 74		1	; 	goto 4349
		4348	[  0]	KSHORT	 58		3	; slot58 = 3
		4349	[  0]	MOV  	 73		65	; slot73 = uv5"unknown"
		4350	[  0]	UGET 	 74		0	; slot74 = uv0"unknwon"
		4351	[  0]	KSTR 	 75		100	; slot75 = "_hit"
		4352	[  0]	TDUP 	 76		99	; slot76 = copy table#k99
		4353	[  0]	TSETV	 76	74	75	; uv0"unknown"[slot75] = slot76
		4354	[  0]	ISF  	   		10	; if not <unknown table>.absorber
		4355	[  0]	JMP  	 74		5	; 	goto 4361
		4356	[  0]	ISF  	   		9	; if not slot9
		4357	[  0]	JMP  	 74		3	; 	goto 4361
		4358	[  0]	TGETS	 74	9	263	; slot74 = slot9.preview
		4359	[  0]	IST  	   		74	; if <unknown table>.preview
		4360	[  0]	JMP  	 75		1	; 	goto 4362
		4361	[  0]	KPRI 	 74		0	; slot74 = nil
		4362	[  0]	ISF  	   		74	; if not slot74
		4363	[  0]	JMP  	 75		10	; 	goto 4374
		4364	[  0]	KSTR 	 75		163	; slot75 = "action"
		4365	[  0]	TGETV	 75	74	75	; slot75 = slot74[slot75]
		4366	[  0]	ISF  	   		75	; if not slot75
		4367	[  0]	JMP  	 76		6	; 	goto 4374
		4368	[  0]	KSTR 	 75		163	; slot75 = "action"
		4369	[  0]	TGETV	 75	74	75	; slot75 = slot74[slot75]
		4370	[  0]	KSTR 	 76		153	; slot76 = "kind"
		4371	[  0]	TGETV	 75	75	76	; slot75 = slot75[slot76]
		4372	[  0]	IST  	   		75	; if slot75
		4373	[  0]	JMP  	 76		1	; 	goto 4375
		4374	[  0]	KPRI 	 75		0	; slot75 = nil
		4375	[  0]	ISF  	   		10	; if not <unknown table>.absorber
		4376	[  0]	JMP  	 76		2	; 	goto 4379
		4377	[  0]	ISEQS	 75		147	; if slot75 == "upgradeLevel"
		4378	[  0]	JMP  	 76		17	; 	goto 4396
		4379	[  0]	UGET 	 76		1	; slot76 = uv1"unknwon"
		4380	[  0]	KSTR 	 77		98	; slot77 = "upgradeBtnScale"
		4381	[  0]	UGET 	 78		1	; slot78 = uv1"unknwon"
		4382	[  0]	KSTR 	 79		98	; slot79 = "upgradeBtnScale"
		4383	[  0]	TGETV	 78	78	79	; slot78 = uv1"unknown"[slot79]
		4384	[  0]	UGET 	 79		1	; slot79 = uv1"unknwon"
		4385	[  0]	KSTR 	 80		98	; slot80 = "upgradeBtnScale"
		4386	[  0]	TGETV	 79	79	80	; slot79 = uv1"unknown"[slot80]
		4387	[  0]	SUBNV	 79	79	1	; slot79 = 0.8 - slot79
		4388	[  0]	GGET 	 80		398	; slot80 = _env["math"]
		4389	[  0]	TGETS	 80	80	221	; slot80 = math.min
		4390	[  0]	KSHORT	 82		1	; slot82 = 1
		4391	[  0]	MULVN	 83	7	34	; slot83 = slot7 * 15
		4392	[  0]	CALL 	 80	2	3	; slot80 = math.min(slot81, slot82)
		4393	[  0]	MULVV	 79	79	80	; slot79 = slot79 * math.min
		4394	[  0]	ADDVV	 78	78	79	; slot78 = slot78 + slot79
		4395	[  0]	TSETV	 78	76	77	; uv1"unknown"[slot77] = slot78
		4396	[  0]	ISF  	   		10	; if not <unknown table>.absorber
		4397	[  0]	JMP  	 76		22	; 	goto 4420
		4398	[  0]	UGET 	 76		0	; slot76 = uv0"unknwon"
		4399	[  0]	TGETS	 76	76	372	; slot76 = uv0"unknown"._modalHit
		4400	[  0]	KPRI 	 77		2	; slot77 = true
		4401	[  0]	TSETS	 77	76	412	; uv0"unknown"._modalHit.active = slot77
		4402	[  0]	UGET 	 76		0	; slot76 = uv0"unknwon"
		4403	[  0]	TGETS	 76	76	372	; slot76 = uv0"unknown"._modalHit
		4404	[  0]	UGET 	 77		0	; slot77 = uv0"unknwon"
		4405	[  0]	TGETS	 77	77	372	; slot77 = uv0"unknown"._modalHit
		4406	[  0]	TGETS	 77	77	370	; slot77 = uv0"unknown"._modalHit.buttons
		4407	[  0]	IST  	   		77	; if uv0"unknown"._modalHit.buttons
		4408	[  0]	JMP  	 78		1	; 	goto 4410
		4409	[  0]	TNEW 	 77		0	; slot77 = new table( array: 0, dict: 1)
		4410	[  0]	TSETS	 77	76	370	; uv0"unknown"._modalHit.buttons = slot77
		4411	[  0]	UGET 	 76		0	; slot76 = uv0"unknwon"
		4412	[  0]	TGETS	 76	76	372	; slot76 = uv0"unknown"._modalHit
		4413	[  0]	UGET 	 77		0	; slot77 = uv0"unknwon"
		4414	[  0]	TGETS	 77	77	372	; slot77 = uv0"unknown"._modalHit
		4415	[  0]	TGETS	 77	77	369	; slot77 = uv0"unknown"._modalHit.arrows
		4416	[  0]	IST  	   		77	; if uv0"unknown"._modalHit.arrows
		4417	[  0]	JMP  	 78		1	; 	goto 4419
		4418	[  0]	TNEW 	 77		0	; slot77 = new table( array: 0, dict: 1)
		4419	[  0]	TSETS	 77	76	369	; uv0"unknown"._modalHit.arrows = slot77
		4420	[  0]	KSHORT	 76		0	; slot76 = 0
		4421	[  0]	KSHORT	 77		0	; slot77 = 0
		4422	[  0]	TGETS	 78	0	368	; slot78 = slot0.imprintPanel
		4423	[  0]	ISF  	   		78	; if not <unknown table>.imprintPanel
		4424	[  0]	JMP  	 79		25	; 	goto 4450
		4425	[  0]	TGETS	 78	0	368	; slot78 = slot0.imprintPanel
		4426	[  0]	KSTR 	 79		97	; slot79 = "slotBg"
		4427	[  0]	TGETV	 78	78	79	; slot78 = <unknown table>.imprintPanel[slot79]
		4428	[  0]	ISF  	   		78	; if not slot78
		4429	[  0]	JMP  	 79		20	; 	goto 4450
		4430	[  0]	GGET 	 78		393	; slot78 = _env["tonumber"]
		4431	[  0]	TGETS	 80	0	368	; slot80 = slot0.imprintPanel
		4432	[  0]	KSTR 	 81		97	; slot81 = "slotBg"
		4433	[  0]	TGETV	 80	80	81	; slot80 = <unknown table>.imprintPanel[slot81]
		4434	[  0]	TGETS	 80	80	337	; slot80 = slot80.offsetX
		4435	[  0]	IST  	   		80	; if <unknown table>.offsetX
		4436	[  0]	JMP  	 81		1	; 	goto 4438
		4437	[  0]	KSHORT	 80		0	; slot80 = 0
		4438	[  0]	CALL 	 78	2	2	; slot78 = tonumber(slot79)
		4439	[  0]	MOV  	 76		78	; slot76 = tonumber
		4440	[  0]	GGET 	 78		393	; slot78 = _env["tonumber"]
		4441	[  0]	TGETS	 80	0	368	; slot80 = slot0.imprintPanel
		4442	[  0]	KSTR 	 81		97	; slot81 = "slotBg"
		4443	[  0]	TGETV	 80	80	81	; slot80 = <unknown table>.imprintPanel[slot81]
		4444	[  0]	TGETS	 80	80	335	; slot80 = slot80.offsetY
		4445	[  0]	IST  	   		80	; if <unknown table>.offsetY
		4446	[  0]	JMP  	 81		1	; 	goto 4448
		4447	[  0]	KSHORT	 80		0	; slot80 = 0
		4448	[  0]	CALL 	 78	2	2	; slot78 = tonumber(slot79)
		4449	[  0]	MOV  	 77		78	; slot77 = tonumber
		4450	[  0]	KSHORT	 78		65527	; slot78 = 65527
		4451	[  0]	KSHORT	 79		14	; slot79 = 14
		4452	[  0]	TGETS	 80	0	368	; slot80 = slot0.imprintPanel
		4453	[  0]	ISF  	   		80	; if not <unknown table>.imprintPanel
		4454	[  0]	JMP  	 81		25	; 	goto 4480
		4455	[  0]	TGETS	 80	0	368	; slot80 = slot0.imprintPanel
		4456	[  0]	KSTR 	 81		96	; slot81 = "upgradeBtn"
		4457	[  0]	TGETV	 80	80	81	; slot80 = <unknown table>.imprintPanel[slot81]
		4458	[  0]	ISF  	   		80	; if not slot80
		4459	[  0]	JMP  	 81		20	; 	goto 4480
		4460	[  0]	GGET 	 80		393	; slot80 = _env["tonumber"]
		4461	[  0]	TGETS	 82	0	368	; slot82 = slot0.imprintPanel
		4462	[  0]	KSTR 	 83		96	; slot83 = "upgradeBtn"
		4463	[  0]	TGETV	 82	82	83	; slot82 = <unknown table>.imprintPanel[slot83]
		4464	[  0]	TGETS	 82	82	337	; slot82 = slot82.offsetX
		4465	[  0]	IST  	   		82	; if <unknown table>.offsetX
		4466	[  0]	JMP  	 83		1	; 	goto 4468
		4467	[  0]	KSHORT	 82		0	; slot82 = 0
		4468	[  0]	CALL 	 80	2	2	; slot80 = tonumber(slot81)
		4469	[  0]	MOV  	 78		80	; slot78 = tonumber
		4470	[  0]	GGET 	 80		393	; slot80 = _env["tonumber"]
		4471	[  0]	TGETS	 82	0	368	; slot82 = slot0.imprintPanel
		4472	[  0]	KSTR 	 83		96	; slot83 = "upgradeBtn"
		4473	[  0]	TGETV	 82	82	83	; slot82 = <unknown table>.imprintPanel[slot83]
		4474	[  0]	TGETS	 82	82	335	; slot82 = slot82.offsetY
		4475	[  0]	IST  	   		82	; if <unknown table>.offsetY
		4476	[  0]	JMP  	 83		1	; 	goto 4478
		4477	[  0]	KSHORT	 82		0	; slot82 = 0
		4478	[  0]	CALL 	 80	2	2	; slot80 = tonumber(slot81)
		4479	[  0]	MOV  	 79		80	; slot79 = tonumber
		4480	[  0]	KSHORT	 80		1	; slot80 = 1
		4481	[  0]	KSHORT	 81		5	; slot81 = 5
		4482	[  0]	KSHORT	 82		1	; slot82 = 1
		4483	[  0]	FORI 	 80		2917	; for slot83 = slot80,slot81,slot82 else goto 7401
		4484	[  0]	MOV  	 84		73	; slot84 = uv5"unknown"
		4485	[  0]	ADDVV	 85	73	72	; slot85 = uv5"unknown" + math.floor
		4486	[  0]	ADDVV	 73	85	58	; slot73 = slot85 + slot58
		4487	[  0]	ISGT 	 83		51	; if slot83 > math.max
		4488	[  0]	JMP  	 85		3	; 	goto 4492
		4489	[  0]	TGETV	 85	53	83	; slot85 = slot53[slot83]
		4490	[  0]	IST  	   		85	; if slot85
		4491	[  0]	JMP  	 86		1	; 	goto 4493
		4492	[  0]	KPRI 	 85		0	; slot85 = nil
		4493	[  0]	ISLT 	 51		83	; if math.max < slot83
		4494	[  0]	JMP  	 86		2	; 	goto 4497
		4495	[  0]	KPRI 	 86		1	; slot86 = false
		4496	[  0]	JMP  	 87		1	; 	goto 4498
		4497	[  0]	KPRI 	 86		2	; slot86 = true
		4498	[  0]	ISEQP	 85		0	; if slot85 == nil
		4499	[  0]	JMP  	 87		2	; 	goto 4502
		4500	[  0]	KPRI 	 87		1	; slot87 = false
		4501	[  0]	JMP  	 88		1	; 	goto 4503
		4502	[  0]	KPRI 	 87		2	; slot87 = true
		4503	[  0]	KPRI 	 88		1	; slot88 = false
		4504	[  0]	ISF  	   		69	; if not slot69
		4505	[  0]	JMP  	 89		5	; 	goto 4511
		4506	[  0]	MOV  	 91		69	; slot91 = slot69
		4507	[  0]	TGETS	 89	69	382	; slot89 = slot69.getWidth
		4508	[  0]	CALL 	 89	2	2	; slot89 = <unknown table>.getWidth(slot90)
		4509	[  0]	IST  	   		89	; if <unknown table>.getWidth
		4510	[  0]	JMP  	 90		1	; 	goto 4512
		4511	[  0]	MOV  	 89		64	; slot89 = math.max
		4512	[  0]	MOV  	 90		72	; slot90 = math.floor
		4513	[  0]	IST  	   		86	; if slot86
		4514	[  0]	JMP  	 91		15	; 	goto 4530
		4515	[  0]	IST  	   		87	; if slot87
		4516	[  0]	JMP  	 91		13	; 	goto 4530
		4517	[  0]	ADDVV	 91	63	76	; slot91 = uv5"unknown" + tonumber
		4518	[  0]	ADDVV	 92	84	77	; slot92 = uv5"unknown" + tonumber
		4519	[  0]	ISGT 	 91		3	; if slot91 > slot3
		4520	[  0]	JMP  	 93		9	; 	goto 4530
		4521	[  0]	ADDVV	 93	91	89	; slot93 = slot91 + math.max
		4522	[  0]	ISGT 	  3		93	; if slot3 > slot93
		4523	[  0]	JMP  	 93		6	; 	goto 4530
		4524	[  0]	ISGT 	 92		4	; if slot92 > slot4
		4525	[  0]	JMP  	 93		4	; 	goto 4530
		4526	[  0]	ADDVV	 93	92	90	; slot93 = slot92 + math.floor
		4527	[  0]	ISGT 	  4		93	; if slot4 > slot93
		4528	[  0]	JMP  	 93		1	; 	goto 4530
		4529	[  0]	KPRI 	 88		2	; slot88 = true
		4530	[  0]	UGET 	 91		1	; slot91 = uv1"unknwon"
		4531	[  0]	KSTR 	 92		95	; slot92 = "slotScales"
		4532	[  0]	TGETV	 91	91	92	; slot91 = uv1"unknown"[slot92]
		4533	[  0]	UGET 	 92		1	; slot92 = uv1"unknwon"
		4534	[  0]	KSTR 	 93		95	; slot93 = "slotScales"
		4535	[  0]	TGETV	 92	92	93	; slot92 = uv1"unknown"[slot93]
		4536	[  0]	TGETV	 92	92	83	; slot92 = slot92[slot83]
		4537	[  0]	IST  	   		92	; if slot92
		4538	[  0]	JMP  	 93		1	; 	goto 4540
		4539	[  0]	KSHORT	 92		1	; slot92 = 1
		4540	[  0]	TSETV	 92	91	83	; slot91[slot83] = slot92
		4541	[  0]	ISF  	   		88	; if not slot88
		4542	[  0]	JMP  	 91		2	; 	goto 4545
		4543	[  0]	KNUM 	 91		23	; slot91 = 1.15
		4544	[  0]	JMP  	 92		1	; 	goto 4546
		4545	[  0]	KSHORT	 91		1	; slot91 = 1
		4546	[  0]	UGET 	 92		1	; slot92 = uv1"unknwon"
		4547	[  0]	KSTR 	 93		95	; slot93 = "slotScales"
		4548	[  0]	TGETV	 92	92	93	; slot92 = uv1"unknown"[slot93]
		4549	[  0]	UGET 	 93		1	; slot93 = uv1"unknwon"
		4550	[  0]	KSTR 	 94		95	; slot94 = "slotScales"
		4551	[  0]	TGETV	 93	93	94	; slot93 = uv1"unknown"[slot94]
		4552	[  0]	TGETV	 93	93	83	; slot93 = slot93[slot83]
		4553	[  0]	UGET 	 94		1	; slot94 = uv1"unknwon"
		4554	[  0]	KSTR 	 95		95	; slot95 = "slotScales"
		4555	[  0]	TGETV	 94	94	95	; slot94 = uv1"unknown"[slot95]
		4556	[  0]	TGETV	 94	94	83	; slot94 = slot94[slot83]
		4557	[  0]	SUBVV	 94	91	94	; slot94 = slot91 - slot94
		4558	[  0]	GGET 	 95		398	; slot95 = _env["math"]
		4559	[  0]	TGETS	 95	95	221	; slot95 = math.min
		4560	[  0]	KSHORT	 97		1	; slot97 = 1
		4561	[  0]	MULVN	 98	7	19	; slot98 = slot7 * 12
		4562	[  0]	CALL 	 95	2	3	; slot95 = math.min(slot96, slot97)
		4563	[  0]	MULVV	 94	94	95	; slot94 = slot94 * math.min
		4564	[  0]	ADDVV	 93	93	94	; slot93 = slot93 + slot94
		4565	[  0]	TSETV	 93	92	83	; slot92[slot83] = slot93
		4566	[  0]	UGET 	 92		1	; slot92 = uv1"unknwon"
		4567	[  0]	TGETS	 92	92	418	; slot92 = uv1"unknown".blinkUnit
		4568	[  0]	ISNEV	 11		92	; if uv1"unknown".lastUnit ~= uv1"unknown".blinkUnit
		4569	[  0]	JMP  	 92		7	; 	goto 4577
		4570	[  0]	UGET 	 92		1	; slot92 = uv1"unknwon"
		4571	[  0]	TGETS	 92	92	400	; slot92 = uv1"unknown".impactScales
		4572	[  0]	TGETV	 92	92	83	; slot92 = uv1"unknown".impactScales[slot83]
		4573	[  0]	IST  	   		92	; if slot92
		4574	[  0]	JMP  	 93		3	; 	goto 4578
		4575	[  0]	KSHORT	 92		0	; slot92 = 0
		4576	[  0]	JMP  	 93		1	; 	goto 4578
		4577	[  0]	KSHORT	 92		0	; slot92 = 0
		4578	[  0]	UGET 	 93		1	; slot93 = uv1"unknwon"
		4579	[  0]	KSTR 	 94		95	; slot94 = "slotScales"
		4580	[  0]	TGETV	 93	93	94	; slot93 = uv1"unknown"[slot94]
		4581	[  0]	TGETV	 93	93	83	; slot93 = slot93[slot83]
		4582	[  0]	MULVN	 94	92	0	; slot94 = slot92 * 0.1
		4583	[  0]	ADDVV	 93	93	94	; slot93 = slot93 + slot94
		4584	[  0]	UGET 	 94		1	; slot94 = uv1"unknwon"
		4585	[  0]	TGETS	 94	94	418	; slot94 = uv1"unknown".blinkUnit
		4586	[  0]	ISNEV	 11		94	; if uv1"unknown".lastUnit ~= uv1"unknown".blinkUnit
		4587	[  0]	JMP  	 94		7	; 	goto 4595
		4588	[  0]	UGET 	 94		1	; slot94 = uv1"unknwon"
		4589	[  0]	TGETS	 94	94	399	; slot94 = uv1"unknown".floatOffsets
		4590	[  0]	TGETV	 94	94	83	; slot94 = uv1"unknown".floatOffsets[slot83]
		4591	[  0]	IST  	   		94	; if slot94
		4592	[  0]	JMP  	 95		3	; 	goto 4596
		4593	[  0]	KSHORT	 94		0	; slot94 = 0
		4594	[  0]	JMP  	 95		1	; 	goto 4596
		4595	[  0]	KSHORT	 94		0	; slot94 = 0
		4596	[  0]	FNEW 	 95		94	; N/A:0-0: 3 args, 12 upvalues, 17 slots
			
			;;;; constant tables ;;;;
			ktable#9 = [
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	KNUM 	  3		0	; slot3 = 1.15
			  2	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			  3	[  0]	ISF  	   		4	; if not uv0"unknown"
			  4	[  0]	JMP  	  5		6	; 	goto 11
			  5	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			  6	[  0]	MOV  	  6		4	; slot6 = uv0"unknown"
			  7	[  0]	TGETS	  4	4	11	; slot4 = uv0"unknown".getWidth
			  8	[  0]	CALL 	  4	2	2	; slot4 = uv0"unknown".getWidth(slot5)
			  9	[  0]	IST  	   		4	; if uv0"unknown".getWidth
			 10	[  0]	JMP  	  5		1	; 	goto 12
			 11	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
			 12	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
			 13	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
			 14	[  0]	UGET 	  7		4	; slot7 = uv4"unknwon"
			 15	[  0]	ADDVV	  6	6	7	; slot6 = uv3"unknown" + uv4"unknown"
			 16	[  0]	DIVVN	  7	4	1	; slot7 = uv1"unknown" / 2
			 17	[  0]	ADDVV	  6	6	7	; slot6 = slot6 + slot7
			 18	[  0]	UGET 	  7		5	; slot7 = uv5"unknwon"
			 19	[  0]	UGET 	  8		6	; slot8 = uv6"unknwon"
			 20	[  0]	ADDVV	  7	7	8	; slot7 = uv5"unknown" + uv6"unknown"
			 21	[  0]	DIVVN	  8	5	1	; slot8 = uv2"unknown" / 2
			 22	[  0]	ADDVV	  7	7	8	; slot7 = slot7 + slot8
			 23	[  0]	UGET 	  8		7	; slot8 = uv7"unknwon"
			 24	[  0]	ADDVV	  7	7	8	; slot7 = slot7 + uv7"unknown"
			 25	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
			 26	[  0]	UGET 	  9		4	; slot9 = uv4"unknwon"
			 27	[  0]	ADDVV	  8	8	9	; slot8 = uv3"unknown" + uv4"unknown"
			 28	[  0]	UGET 	  9		8	; slot9 = uv8"unknwon"
			 29	[  0]	ADDVV	  8	8	9	; slot8 = slot8 + uv8"unknown"
			 30	[  0]	UGET 	  9		5	; slot9 = uv5"unknwon"
			 31	[  0]	UGET 	 10		6	; slot10 = uv6"unknwon"
			 32	[  0]	ADDVV	  9	9	10	; slot9 = uv5"unknown" + uv6"unknown"
			 33	[  0]	UGET 	 10		7	; slot10 = uv7"unknwon"
			 34	[  0]	ADDVV	  9	9	10	; slot9 = slot9 + uv7"unknown"
			 35	[  0]	SUBVV	 10	8	6	; slot10 = slot8 - slot6
			 36	[  0]	MULVV	 10	10	3	; slot10 = slot10 * slot3
			 37	[  0]	ADDVV	 10	6	10	; slot10 = slot6 + slot10
			 38	[  0]	SUBVV	 11	9	7	; slot11 = slot9 - slot7
			 39	[  0]	MULVV	 11	11	3	; slot11 = slot11 * slot3
			 40	[  0]	ADDVV	 11	7	11	; slot11 = slot7 + slot11
			 41	[  0]	ISF  	   		2	; if not slot2
			 42	[  0]	JMP  	 12		2	; 	goto 45
			 43	[  0]	ISTC 	 12		8	; slot12 = slot8; if slot8
			 44	[  0]	JMP  	 12		1	; 	goto 46
			 45	[  0]	MOV  	 12		10	; slot12 = slot10
			 46	[  0]	ISF  	   		2	; if not slot2
			 47	[  0]	JMP  	 13		3	; 	goto 51
			 48	[  0]	UGET 	 13		9	; slot13 = uv9"unknwon"
			 49	[  0]	IST  	   		13	; if uv9"unknown"
			 50	[  0]	JMP  	 14		2	; 	goto 53
			 51	[  0]	UGET 	 13		9	; slot13 = uv9"unknwon"
			 52	[  0]	MULVV	 13	13	3	; slot13 = uv9"unknown" * slot3
			 53	[  0]	UGET 	 14		10	; slot14 = uv10"unknwon"
			 54	[  0]	TDUP 	 15		9	; slot15 = copy table#k9
			 55	[  0]	TSETS	  0	15	8	; slot15.index = slot0
			 56	[  0]	TSETS	  1	15	7	; slot15.imprint = slot1
			 57	[  0]	TSETS	 12	15	6	; slot15.x = slot12
			 58	[  0]	TSETS	 11	15	5	; slot15.y = slot11
			 59	[  0]	TSETS	 13	15	4	; slot15.w = slot13
			 60	[  0]	MULVV	 16	5	3	; slot16 = uv2"unknown" * slot3
			 61	[  0]	TSETS	 16	15	3	; slot15.h = slot16
			 62	[  0]	UGET 	 16		11	; slot16 = uv11"unknwon"
			 63	[  0]	TSETS	 16	15	2	; slot15.scale = uv11"unknown"
			 64	[  0]	TSETS	  3	15	1	; slot15.tooltipScale = slot3
			 65	[  0]	ISTC 	 16		2	; slot16 = slot2; if slot2
			 66	[  0]	JMP  	 16		1	; 	goto 68
			 67	[  0]	KPRI 	 16		1	; slot16 = false
			 68	[  0]	TSETS	 16	15	0	; slot15.previewUpgrade = slot16
			 69	[  0]	TSETS	 15	14	10	; uv10"unknown"._hoveredSlot = slot15
			 70	[  0]	RET0 	  0		1	; return
		4597	[  0]	ISF  	   		88	; if not slot88
		4598	[  0]	JMP  	 96		5	; 	goto 4604
		4599	[  0]	MOV  	 96		95	; slot96 = slot95
		4600	[  0]	MOV  	 98		83	; slot98 = slot83
		4601	[  0]	MOV  	 99		85	; slot99 = slot85
		4602	[  0]	KPRI 	100		1	; slot100 = false
		4603	[  0]	CALL 	 96	1	4	;  = slot96(slot97, slot98, slot99)
		4604	[  0]	GGET 	 96		424	; slot96 = _env["love"]
		4605	[  0]	TGETS	 96	96	343	; slot96 = love.graphics
		4606	[  0]	KSTR 	 97		93	; slot97 = "push"
		4607	[  0]	TGETV	 96	96	97	; slot96 = love.graphics[slot97]
		4608	[  0]	CALL 	 96	1	1	;  = slot96()
		4609	[  0]	GGET 	 96		424	; slot96 = _env["love"]
		4610	[  0]	TGETS	 96	96	343	; slot96 = love.graphics
		4611	[  0]	KSTR 	 97		92	; slot97 = "translate"
		4612	[  0]	TGETV	 96	96	97	; slot96 = love.graphics[slot97]
		4613	[  0]	KSHORT	 98		0	; slot98 = 0
		4614	[  0]	MOV  	 99		94	; slot99 = slot94
		4615	[  0]	CALL 	 96	1	3	;  = slot96(slot97, slot98)
		4616	[  0]	KNIL 	 96		97	; slot96, slot97 = nil
		4617	[  0]	ISF  	   		10	; if not <unknown table>.absorber
		4618	[  0]	JMP  	 98		40	; 	goto 4659
		4619	[  0]	IST  	   		86	; if slot86
		4620	[  0]	JMP  	 98		38	; 	goto 4659
		4621	[  0]	ISNES	 75		147	; if slot75 ~= "upgradeLevel"
		4622	[  0]	JMP  	 98		15	; 	goto 4638
		4623	[  0]	KSTR 	 98		163	; slot98 = "action"
		4624	[  0]	TGETV	 98	74	98	; slot98 = slot74[slot98]
		4625	[  0]	ISF  	   		98	; if not slot98
		4626	[  0]	JMP  	 99		4	; 	goto 4631
		4627	[  0]	KSTR 	 98		163	; slot98 = "action"
		4628	[  0]	TGETV	 98	74	98	; slot98 = slot74[slot98]
		4629	[  0]	KSTR 	 99		91	; slot99 = "slot"
		4630	[  0]	TGETV	 98	98	99	; slot98 = slot98[slot99]
		4631	[  0]	ISNEV	 83		98	; if slot83 ~= slot98
		4632	[  0]	JMP  	 98		26	; 	goto 4659
		4633	[  0]	UGET 	 98		0	; slot98 = uv0"unknwon"
		4634	[  0]	KSTR 	 99		109	; slot99 = "_upgradeBtnImage"
		4635	[  0]	TGETV	 96	98	99	; slot96 = uv0"unknown"[slot99]
		4636	[  0]	KSTR 	 97		90	; slot97 = "upgrade"
		4637	[  0]	JMP  	 98		21	; 	goto 4659
		4638	[  0]	ISNES	 75		152	; if slot75 ~= "insert"
		4639	[  0]	JMP  	 98		7	; 	goto 4647
		4640	[  0]	ISNEP	 85		0	; if slot85 ~= nil
		4641	[  0]	JMP  	 98		5	; 	goto 4647
		4642	[  0]	UGET 	 98		0	; slot98 = uv0"unknwon"
		4643	[  0]	KSTR 	 99		107	; slot99 = "_confirmBtnImage"
		4644	[  0]	TGETV	 96	98	99	; slot96 = uv0"unknown"[slot99]
		4645	[  0]	KSTR 	 97		152	; slot97 = "insert"
		4646	[  0]	JMP  	 98		12	; 	goto 4659
		4647	[  0]	ISF  	   		74	; if not slot74
		4648	[  0]	JMP  	 98		10	; 	goto 4659
		4649	[  0]	KSTR 	 98		139	; slot98 = "needsChoice"
		4650	[  0]	TGETV	 98	74	98	; slot98 = slot74[slot98]
		4651	[  0]	ISF  	   		98	; if not slot98
		4652	[  0]	JMP  	 99		6	; 	goto 4659
		4653	[  0]	ISF  	   		85	; if not slot85
		4654	[  0]	JMP  	 98		4	; 	goto 4659
		4655	[  0]	UGET 	 98		0	; slot98 = uv0"unknwon"
		4656	[  0]	KSTR 	 99		105	; slot99 = "_changeBtnImage"
		4657	[  0]	TGETV	 96	98	99	; slot96 = uv0"unknown"[slot99]
		4658	[  0]	KSTR 	 97		150	; slot97 = "replace"
		4659	[  0]	ISF  	   		96	; if not slot96
		4660	[  0]	JMP  	 98		219	; 	goto 4880
		4661	[  0]	ISF  	   		97	; if not slot97
		4662	[  0]	JMP  	 98		217	; 	goto 4880
		4663	[  0]	MOV  	100		96	; slot100 = slot96
		4664	[  0]	TGETS	 98	96	339	; slot98 = slot96.getDimensions
		4665	[  0]	CALL 	 98	3	2	; slot98, slot99 = <unknown table>.getDimensions(slot99)
		4666	[  0]	ADDVV	100	63	76	; slot100 = uv5"unknown" + tonumber
		4667	[  0]	ADDVV	100	100	89	; slot100 = slot100 + math.max
		4668	[  0]	GGET 	101		398	; slot101 = _env["math"]
		4669	[  0]	TGETS	101	101	380	; slot101 = math.floor
		4670	[  0]	MULNV	103	29	31	; slot103 = 4 * slot29
		4671	[  0]	ADDVN	103	103	6	; slot103 = slot103 + 0.5
		4672	[  0]	CALL 	101	2	2	; slot101 = math.floor(slot102)
		4673	[  0]	ADDVV	100	100	101	; slot100 = slot100 + math.floor
		4674	[  0]	GGET 	101		398	; slot101 = _env["math"]
		4675	[  0]	TGETS	101	101	380	; slot101 = math.floor
		4676	[  0]	MULVV	103	78	29	; slot103 = tonumber * slot29
		4677	[  0]	ADDVN	103	103	6	; slot103 = slot103 + 0.5
		4678	[  0]	CALL 	101	2	2	; slot101 = math.floor(slot102)
		4679	[  0]	ADDVV	100	100	101	; slot100 = slot100 + math.floor
		4680	[  0]	GGET 	101		398	; slot101 = _env["math"]
		4681	[  0]	TGETS	101	101	380	; slot101 = math.floor
		4682	[  0]	SUBVV	103	72	99	; slot103 = math.floor - slot99
		4683	[  0]	DIVVN	103	103	8	; slot103 = slot103 / 2
		4684	[  0]	ADDVN	103	103	6	; slot103 = slot103 + 0.5
		4685	[  0]	CALL 	101	2	2	; slot101 = math.floor(slot102)
		4686	[  0]	ADDVV	101	84	101	; slot101 = uv5"unknown" + math.floor
		4687	[  0]	GGET 	102		398	; slot102 = _env["math"]
		4688	[  0]	TGETS	102	102	380	; slot102 = math.floor
		4689	[  0]	MULVV	104	79	29	; slot104 = tonumber * slot29
		4690	[  0]	ADDVN	104	104	6	; slot104 = slot104 + 0.5
		4691	[  0]	CALL 	102	2	2	; slot102 = math.floor(slot103)
		4692	[  0]	ADDVV	101	101	102	; slot101 = slot101 + math.floor
		4693	[  0]	KPRI 	102		1	; slot102 = false
		4694	[  0]	ISGT 	100		3	; if slot100 > slot3
		4695	[  0]	JMP  	103		9	; 	goto 4705
		4696	[  0]	ADDVV	103	100	98	; slot103 = slot100 + <unknown table>.getDimensions
		4697	[  0]	ISGT 	  3		103	; if slot3 > slot103
		4698	[  0]	JMP  	103		6	; 	goto 4705
		4699	[  0]	ISGT 	101		4	; if slot101 > slot4
		4700	[  0]	JMP  	103		4	; 	goto 4705
		4701	[  0]	ADDVV	103	101	99	; slot103 = slot101 + slot99
		4702	[  0]	ISGT 	  4		103	; if slot4 > slot103
		4703	[  0]	JMP  	103		1	; 	goto 4705
		4704	[  0]	KPRI 	102		2	; slot102 = true
		4705	[  0]	KNUM 	103		1	; slot103 = 0.8
		4706	[  0]	KPRI 	104		1	; slot104 = false
		4707	[  0]	ISNES	 97		90	; if slot97 ~= "upgrade"
		4708	[  0]	JMP  	105		12	; 	goto 4721
		4709	[  0]	UGET 	105		1	; slot105 = uv1"unknwon"
		4710	[  0]	TGETS	105	105	415	; slot105 = uv1"unknown".upgradeBtnPressed
		4711	[  0]	ISFC 	104		105	; slot104 = uv1"unknown".upgradeBtnPressed; if not uv1"unknown".upgradeBtnPressed
		4712	[  0]	JMP  	106		7	; 	goto 4720
		4713	[  0]	UGET 	105		0	; slot105 = uv0"unknwon"
		4714	[  0]	TGETS	105	105	411	; slot105 = uv0"unknown"._upgradeSlot
		4715	[  0]	ISEQV	105		83	; if uv0"unknown"._upgradeSlot == slot83
		4716	[  0]	JMP  	105		2	; 	goto 4719
		4717	[  0]	KPRI 	104		1	; slot104 = false
		4718	[  0]	JMP  	105		1	; 	goto 4720
		4719	[  0]	KPRI 	104		2	; slot104 = true
		4720	[  0]	JMP  	105		25	; 	goto 4746
		4721	[  0]	ISNES	 97		150	; if slot97 ~= "replace"
		4722	[  0]	JMP  	105		12	; 	goto 4735
		4723	[  0]	UGET 	105		1	; slot105 = uv1"unknwon"
		4724	[  0]	TGETS	105	105	403	; slot105 = uv1"unknown".changeBtnPressed
		4725	[  0]	ISFC 	104		105	; slot104 = uv1"unknown".changeBtnPressed; if not uv1"unknown".changeBtnPressed
		4726	[  0]	JMP  	106		7	; 	goto 4734
		4727	[  0]	UGET 	105		0	; slot105 = uv0"unknwon"
		4728	[  0]	TGETS	105	105	401	; slot105 = uv0"unknown"._changeSlot
		4729	[  0]	ISEQV	105		83	; if uv0"unknown"._changeSlot == slot83
		4730	[  0]	JMP  	105		2	; 	goto 4733
		4731	[  0]	KPRI 	104		1	; slot104 = false
		4732	[  0]	JMP  	105		1	; 	goto 4734
		4733	[  0]	KPRI 	104		2	; slot104 = true
		4734	[  0]	JMP  	105		11	; 	goto 4746
		4735	[  0]	UGET 	105		1	; slot105 = uv1"unknwon"
		4736	[  0]	TGETS	105	105	409	; slot105 = uv1"unknown".confirmBtnPressed
		4737	[  0]	ISFC 	104		105	; slot104 = uv1"unknown".confirmBtnPressed; if not uv1"unknown".confirmBtnPressed
		4738	[  0]	JMP  	106		7	; 	goto 4746
		4739	[  0]	UGET 	105		0	; slot105 = uv0"unknwon"
		4740	[  0]	TGETS	105	105	407	; slot105 = uv0"unknown"._confirmSlot
		4741	[  0]	ISEQV	105		83	; if uv0"unknown"._confirmSlot == slot83
		4742	[  0]	JMP  	105		2	; 	goto 4745
		4743	[  0]	KPRI 	104		1	; slot104 = false
		4744	[  0]	JMP  	105		1	; 	goto 4746
		4745	[  0]	KPRI 	104		2	; slot104 = true
		4746	[  0]	ISF  	   		104	; if not slot104
		4747	[  0]	JMP  	105		2	; 	goto 4750
		4748	[  0]	KNUM 	103		32	; slot103 = 0.7
		4749	[  0]	JMP  	105		25	; 	goto 4775
		4750	[  0]	ISF  	   		102	; if not slot102
		4751	[  0]	JMP  	105		23	; 	goto 4775
		4752	[  0]	KNUM 	103		9	; slot103 = 0.95
		4753	[  0]	ISNES	 97		90	; if slot97 ~= "upgrade"
		4754	[  0]	JMP  	105		8	; 	goto 4763
		4755	[  0]	ISF  	   		85	; if not slot85
		4756	[  0]	JMP  	105		6	; 	goto 4763
		4757	[  0]	MOV  	105		95	; slot105 = slot95
		4758	[  0]	MOV  	107		83	; slot107 = slot83
		4759	[  0]	MOV  	108		85	; slot108 = slot85
		4760	[  0]	KPRI 	109		2	; slot109 = true
		4761	[  0]	CALL 	105	1	4	;  = slot105(slot106, slot107, slot108)
		4762	[  0]	JMP  	105		12	; 	goto 4775
		4763	[  0]	ISNES	 97		150	; if slot97 ~= "replace"
		4764	[  0]	JMP  	105		10	; 	goto 4775
		4765	[  0]	ISF  	   		85	; if not slot85
		4766	[  0]	JMP  	105		8	; 	goto 4775
		4767	[  0]	UGET 	105		1	; slot105 = uv1"unknwon"
		4768	[  0]	KPRI 	106		2	; slot106 = true
		4769	[  0]	TSETS	106	105	425	; uv1"unknown".replaceHoveringNext = slot106
		4770	[  0]	MOV  	105		95	; slot105 = slot95
		4771	[  0]	MOV  	107		83	; slot107 = slot83
		4772	[  0]	MOV  	108		85	; slot108 = slot85
		4773	[  0]	KPRI 	109		1	; slot109 = false
		4774	[  0]	CALL 	105	1	4	;  = slot105(slot106, slot107, slot108)
		4775	[  0]	UGET 	105		1	; slot105 = uv1"unknwon"
		4776	[  0]	TGETS	105	105	405	; slot105 = uv1"unknown".actionBtnScales
		4777	[  0]	UGET 	106		1	; slot106 = uv1"unknwon"
		4778	[  0]	TGETS	106	106	405	; slot106 = uv1"unknown".actionBtnScales
		4779	[  0]	TGETV	106	106	83	; slot106 = uv1"unknown".actionBtnScales[slot83]
		4780	[  0]	IST  	   		106	; if slot106
		4781	[  0]	JMP  	107		1	; 	goto 4783
		4782	[  0]	KNUM 	106		1	; slot106 = 0.8
		4783	[  0]	TSETV	106	105	83	; uv1"unknown".actionBtnScales[slot83] = slot106
		4784	[  0]	UGET 	105		1	; slot105 = uv1"unknwon"
		4785	[  0]	TGETS	105	105	405	; slot105 = uv1"unknown".actionBtnScales
		4786	[  0]	UGET 	106		1	; slot106 = uv1"unknwon"
		4787	[  0]	TGETS	106	106	405	; slot106 = uv1"unknown".actionBtnScales
		4788	[  0]	TGETV	106	106	83	; slot106 = uv1"unknown".actionBtnScales[slot83]
		4789	[  0]	UGET 	107		1	; slot107 = uv1"unknwon"
		4790	[  0]	TGETS	107	107	405	; slot107 = uv1"unknown".actionBtnScales
		4791	[  0]	TGETV	107	107	83	; slot107 = uv1"unknown".actionBtnScales[slot83]
		4792	[  0]	SUBVV	107	103	107	; slot107 = slot103 - slot107
		4793	[  0]	GGET 	108		398	; slot108 = _env["math"]
		4794	[  0]	TGETS	108	108	221	; slot108 = math.min
		4795	[  0]	KSHORT	110		1	; slot110 = 1
		4796	[  0]	MULVN	111	7	34	; slot111 = slot7 * 15
		4797	[  0]	CALL 	108	2	3	; slot108 = math.min(slot109, slot110)
		4798	[  0]	MULVV	107	107	108	; slot107 = slot107 * math.min
		4799	[  0]	ADDVV	106	106	107	; slot106 = slot106 + slot107
		4800	[  0]	TSETV	106	105	83	; uv1"unknown".actionBtnScales[slot83] = slot106
		4801	[  0]	UGET 	105		1	; slot105 = uv1"unknwon"
		4802	[  0]	TGETS	105	105	405	; slot105 = uv1"unknown".actionBtnScales
		4803	[  0]	TGETV	105	105	83	; slot105 = uv1"unknown".actionBtnScales[slot83]
		4804	[  0]	GGET 	106		424	; slot106 = _env["love"]
		4805	[  0]	TGETS	106	106	343	; slot106 = love.graphics
		4806	[  0]	KSTR 	107		93	; slot107 = "push"
		4807	[  0]	TGETV	106	106	107	; slot106 = love.graphics[slot107]
		4808	[  0]	CALL 	106	1	1	;  = slot106()
		4809	[  0]	GGET 	106		424	; slot106 = _env["love"]
		4810	[  0]	TGETS	106	106	343	; slot106 = love.graphics
		4811	[  0]	KSTR 	107		92	; slot107 = "translate"
		4812	[  0]	TGETV	106	106	107	; slot106 = love.graphics[slot107]
		4813	[  0]	DIVVN	108	98	8	; slot108 = <unknown table>.getDimensions / 2
		4814	[  0]	ADDVV	108	100	108	; slot108 = slot100 + slot108
		4815	[  0]	DIVVN	109	99	8	; slot109 = slot99 / 2
		4816	[  0]	ADDVV	109	101	109	; slot109 = slot101 + slot109
		4817	[  0]	CALL 	106	1	3	;  = slot106(slot107, slot108)
		4818	[  0]	GGET 	106		424	; slot106 = _env["love"]
		4819	[  0]	TGETS	106	106	343	; slot106 = love.graphics
		4820	[  0]	TGETS	106	106	379	; slot106 = love.graphics.scale
		4821	[  0]	MOV  	108		105	; slot108 = slot105
		4822	[  0]	MOV  	109		105	; slot109 = slot105
		4823	[  0]	CALL 	106	1	3	;  = love.graphics.scale(slot107, slot108)
		4824	[  0]	GGET 	106		424	; slot106 = _env["love"]
		4825	[  0]	TGETS	106	106	343	; slot106 = love.graphics
		4826	[  0]	KSTR 	107		92	; slot107 = "translate"
		4827	[  0]	TGETV	106	106	107	; slot106 = love.graphics[slot107]
		4828	[  0]	DIVVN	108	98	8	; slot108 = <unknown table>.getDimensions / 2
		4829	[  0]	ADDVV	108	100	108	; slot108 = slot100 + slot108
		4830	[  0]	UNM  	108		108	; slot108 = -slot108
		4831	[  0]	DIVVN	109	99	8	; slot109 = slot99 / 2
		4832	[  0]	ADDVV	109	101	109	; slot109 = slot101 + slot109
		4833	[  0]	UNM  	109		109	; slot109 = -slot109
		4834	[  0]	CALL 	106	1	3	;  = slot106(slot107, slot108)
		4835	[  0]	GGET 	106		424	; slot106 = _env["love"]
		4836	[  0]	TGETS	106	106	343	; slot106 = love.graphics
		4837	[  0]	TGETS	106	106	310	; slot106 = love.graphics.setColor
		4838	[  0]	KSHORT	108		1	; slot108 = 1
		4839	[  0]	KSHORT	109		1	; slot109 = 1
		4840	[  0]	KSHORT	110		1	; slot110 = 1
		4841	[  0]	MULNV	111	35	10	; slot111 = 1 * slot35
		4842	[  0]	CALL 	106	1	5	;  = love.graphics.setColor(slot107, slot108, slot109, slot110)
		4843	[  0]	GGET 	106		424	; slot106 = _env["love"]
		4844	[  0]	TGETS	106	106	343	; slot106 = love.graphics
		4845	[  0]	TGETS	106	106	309	; slot106 = love.graphics.draw
		4846	[  0]	MOV  	108		96	; slot108 = slot96
		4847	[  0]	MOV  	109		100	; slot109 = slot100
		4848	[  0]	MOV  	110		101	; slot110 = slot101
		4849	[  0]	CALL 	106	1	4	;  = love.graphics.draw(slot107, slot108, slot109)
		4850	[  0]	GGET 	106		424	; slot106 = _env["love"]
		4851	[  0]	TGETS	106	106	343	; slot106 = love.graphics
		4852	[  0]	KSTR 	107		89	; slot107 = "pop"
		4853	[  0]	TGETV	106	106	107	; slot106 = love.graphics[slot107]
		4854	[  0]	CALL 	106	1	1	;  = slot106()
		4855	[  0]	MULVV	106	98	105	; slot106 = <unknown table>.getDimensions * slot105
		4856	[  0]	MULVV	107	99	105	; slot107 = slot99 * slot105
		4857	[  0]	SUBVV	108	98	106	; slot108 = <unknown table>.getDimensions - slot106
		4858	[  0]	DIVVN	108	108	8	; slot108 = slot108 / 2
		4859	[  0]	ADDVV	108	100	108	; slot108 = slot100 + slot108
		4860	[  0]	SUBVV	109	99	107	; slot109 = slot99 - slot107
		4861	[  0]	DIVVN	109	109	8	; slot109 = slot109 / 2
		4862	[  0]	ADDVV	109	101	109	; slot109 = slot101 + slot109
		4863	[  0]	TDUP 	110		88	; slot110 = copy table#k88
		4864	[  0]	TSETS	108	110	384	; slot110.x = slot108
		4865	[  0]	TSETS	109	110	383	; slot110.y = slot109
		4866	[  0]	TSETS	106	110	387	; slot110.w = slot106
		4867	[  0]	TSETS	107	110	385	; slot110.h = slot107
		4868	[  0]	KSTR 	111		153	; slot111 = "kind"
		4869	[  0]	TSETV	 97	110	111	; slot110[slot111] = slot97
		4870	[  0]	KSTR 	111		91	; slot111 = "slot"
		4871	[  0]	TSETV	 83	110	111	; slot110[slot111] = slot83
		4872	[  0]	GGET 	111		87	; slot111 = _env["table"]
		4873	[  0]	KSTR 	112		152	; slot112 = "insert"
		4874	[  0]	TGETV	111	111	112	; slot111 = table[slot112]
		4875	[  0]	UGET 	113		0	; slot113 = uv0"unknwon"
		4876	[  0]	TGETS	113	113	372	; slot113 = uv0"unknown"._modalHit
		4877	[  0]	TGETS	113	113	370	; slot113 = uv0"unknown"._modalHit.buttons
		4878	[  0]	MOV  	114		110	; slot114 = slot110
		4879	[  0]	CALL 	111	1	3	;  = slot111(slot112, uv0"unknown"._modalHit.buttons)
		4880	[  0]	GGET 	 98		424	; slot98 = _env["love"]
		4881	[  0]	TGETS	 98	98	343	; slot98 = love.graphics
		4882	[  0]	KSTR 	 99		93	; slot99 = "push"
		4883	[  0]	TGETV	 98	98	99	; slot98 = love.graphics[slot99]
		4884	[  0]	CALL 	 98	1	1	;  = slot98()
		4885	[  0]	ADDVV	 98	63	76	; slot98 = uv5"unknown" + tonumber
		4886	[  0]	DIVVN	 99	89	8	; slot99 = math.max / 2
		4887	[  0]	ADDVV	 98	98	99	; slot98 = slot98 + slot99
		4888	[  0]	ADDVV	 99	84	77	; slot99 = uv5"unknown" + tonumber
		4889	[  0]	DIVVN	100	90	8	; slot100 = math.floor / 2
		4890	[  0]	ADDVV	 99	99	100	; slot99 = slot99 + slot100
		4891	[  0]	GGET 	100		424	; slot100 = _env["love"]
		4892	[  0]	TGETS	100	100	343	; slot100 = love.graphics
		4893	[  0]	KSTR 	101		92	; slot101 = "translate"
		4894	[  0]	TGETV	100	100	101	; slot100 = love.graphics[slot101]
		4895	[  0]	MOV  	102		98	; slot102 = slot98
		4896	[  0]	MOV  	103		99	; slot103 = slot99
		4897	[  0]	CALL 	100	1	3	;  = slot100(slot101, slot102)
		4898	[  0]	MOV  	100		93	; slot100 = slot93
		4899	[  0]	GGET 	101		424	; slot101 = _env["love"]
		4900	[  0]	TGETS	101	101	343	; slot101 = love.graphics
		4901	[  0]	TGETS	101	101	379	; slot101 = love.graphics.scale
		4902	[  0]	MOV  	103		100	; slot103 = slot100
		4903	[  0]	MOV  	104		100	; slot104 = slot100
		4904	[  0]	CALL 	101	1	3	;  = love.graphics.scale(slot102, slot103)
		4905	[  0]	GGET 	101		424	; slot101 = _env["love"]
		4906	[  0]	TGETS	101	101	343	; slot101 = love.graphics
		4907	[  0]	KSTR 	102		92	; slot102 = "translate"
		4908	[  0]	TGETV	101	101	102	; slot101 = love.graphics[slot102]
		4909	[  0]	UNM  	103		98	; slot103 = -slot98
		4910	[  0]	UNM  	104		99	; slot104 = -slot99
		4911	[  0]	CALL 	101	1	3	;  = slot101(slot102, slot103)
		4912	[  0]	ISGT 	 83		51	; if slot83 > math.max
		4913	[  0]	JMP  	101		80	; 	goto 4994
		4914	[  0]	ISF  	   		85	; if not slot85
		4915	[  0]	JMP  	101		147	; 	goto 5063
		4916	[  0]	TGETS	101	85	347	; slot101 = slot85.icon
		4917	[  0]	ISF  	   		101	; if not <unknown table>.icon
		4918	[  0]	JMP  	102		144	; 	goto 5063
		4919	[  0]	KSTR 	101		123	; slot101 = "_isPrediction"
		4920	[  0]	TGETV	101	85	101	; slot101 = slot85[slot101]
		4921	[  0]	IST  	   		101	; if slot101
		4922	[  0]	JMP  	101		140	; 	goto 5063
		4923	[  0]	UGET 	101		14	; slot101 = uv14"unknwon"
		4924	[  0]	UGET 	103		0	; slot103 = uv0"unknwon"
		4925	[  0]	TGETS	104	85	347	; slot104 = slot85.icon
		4926	[  0]	CALL 	101	2	3	; slot101 = uv14"unknown"(slot102, uv0"unknown")
		4927	[  0]	ISF  	   		101	; if not uv14"unknown"
		4928	[  0]	JMP  	102		134	; 	goto 5063
		4929	[  0]	MOV  	104		101	; slot104 = uv14"unknown"
		4930	[  0]	TGETS	102	101	339	; slot102 = uv14"unknown".getDimensions
		4931	[  0]	CALL 	102	3	2	; slot102, slot103 = uv14"unknown".getDimensions(uv0"unknown")
		4932	[  0]	KSHORT	104		4	; slot104 = 4
		4933	[  0]	KSHORT	105		0	; slot105 = 0
		4934	[  0]	TGETS	106	0	368	; slot106 = slot0.imprintPanel
		4935	[  0]	ISF  	   		106	; if not <unknown table>.imprintPanel
		4936	[  0]	JMP  	107		23	; 	goto 4960
		4937	[  0]	TGETS	106	0	368	; slot106 = slot0.imprintPanel
		4938	[  0]	KSTR 	107		86	; slot107 = "iconOffset"
		4939	[  0]	TGETV	106	106	107	; slot106 = <unknown table>.imprintPanel[slot107]
		4940	[  0]	ISF  	   		106	; if not slot106
		4941	[  0]	JMP  	107		18	; 	goto 4960
		4942	[  0]	GGET 	106		393	; slot106 = _env["tonumber"]
		4943	[  0]	TGETS	108	0	368	; slot108 = slot0.imprintPanel
		4944	[  0]	KSTR 	109		86	; slot109 = "iconOffset"
		4945	[  0]	TGETV	108	108	109	; slot108 = <unknown table>.imprintPanel[slot109]
		4946	[  0]	TGETS	108	108	384	; slot108 = slot108.x
		4947	[  0]	CALL 	106	2	2	; slot106 = tonumber(slot107)
		4948	[  0]	ISTC 	104		106	; slot104 = tonumber; if tonumber
		4949	[  0]	JMP  	107		1	; 	goto 4951
		4950	[  0]	KSHORT	104		4	; slot104 = 4
		4951	[  0]	GGET 	106		393	; slot106 = _env["tonumber"]
		4952	[  0]	TGETS	108	0	368	; slot108 = slot0.imprintPanel
		4953	[  0]	KSTR 	109		86	; slot109 = "iconOffset"
		4954	[  0]	TGETV	108	108	109	; slot108 = <unknown table>.imprintPanel[slot109]
		4955	[  0]	TGETS	108	108	383	; slot108 = slot108.y
		4956	[  0]	CALL 	106	2	2	; slot106 = tonumber(slot107)
		4957	[  0]	ISTC 	105		106	; slot105 = tonumber; if tonumber
		4958	[  0]	JMP  	107		1	; 	goto 4960
		4959	[  0]	KSHORT	105		0	; slot105 = 0
		4960	[  0]	GGET 	106		398	; slot106 = _env["math"]
		4961	[  0]	TGETS	106	106	380	; slot106 = math.floor
		4962	[  0]	MULVV	108	104	29	; slot108 = slot104 * slot29
		4963	[  0]	ADDVN	108	108	6	; slot108 = slot108 + 0.5
		4964	[  0]	CALL 	106	2	2	; slot106 = math.floor(slot107)
		4965	[  0]	ADDVV	106	63	106	; slot106 = uv5"unknown" + math.floor
		4966	[  0]	GGET 	107		398	; slot107 = _env["math"]
		4967	[  0]	TGETS	107	107	380	; slot107 = math.floor
		4968	[  0]	SUBVV	109	72	103	; slot109 = math.floor - uv0"unknown"
		4969	[  0]	DIVVN	109	109	8	; slot109 = slot109 / 2
		4970	[  0]	CALL 	107	2	2	; slot107 = math.floor(slot108)
		4971	[  0]	ADDVV	107	84	107	; slot107 = uv5"unknown" + math.floor
		4972	[  0]	GGET 	108		398	; slot108 = _env["math"]
		4973	[  0]	TGETS	108	108	380	; slot108 = math.floor
		4974	[  0]	MULVV	110	105	29	; slot110 = slot105 * slot29
		4975	[  0]	ADDVN	110	110	6	; slot110 = slot110 + 0.5
		4976	[  0]	CALL 	108	2	2	; slot108 = math.floor(slot109)
		4977	[  0]	ADDVV	107	107	108	; slot107 = slot107 + math.floor
		4978	[  0]	GGET 	108		424	; slot108 = _env["love"]
		4979	[  0]	TGETS	108	108	343	; slot108 = love.graphics
		4980	[  0]	TGETS	108	108	310	; slot108 = love.graphics.setColor
		4981	[  0]	KSHORT	110		1	; slot110 = 1
		4982	[  0]	KSHORT	111		1	; slot111 = 1
		4983	[  0]	KSHORT	112		1	; slot112 = 1
		4984	[  0]	MULNV	113	35	10	; slot113 = 1 * slot35
		4985	[  0]	CALL 	108	1	5	;  = love.graphics.setColor(slot109, slot110, slot111, slot112)
		4986	[  0]	GGET 	108		424	; slot108 = _env["love"]
		4987	[  0]	TGETS	108	108	343	; slot108 = love.graphics
		4988	[  0]	TGETS	108	108	309	; slot108 = love.graphics.draw
		4989	[  0]	MOV  	110		101	; slot110 = uv14"unknown"
		4990	[  0]	MOV  	111		106	; slot111 = slot106
		4991	[  0]	MOV  	112		107	; slot112 = slot107
		4992	[  0]	CALL 	108	1	4	;  = love.graphics.draw(slot109, uv14"unknown", slot111)
		4993	[  0]	JMP  	101		69	; 	goto 5063
		4994	[  0]	UGET 	101		0	; slot101 = uv0"unknwon"
		4995	[  0]	KSTR 	102		103	; slot102 = "_lockedIconImage"
		4996	[  0]	TGETV	101	101	102	; slot101 = uv0"unknown"[slot102]
		4997	[  0]	ISF  	   		101	; if not slot101
		4998	[  0]	JMP  	102		64	; 	goto 5063
		4999	[  0]	MOV  	104		101	; slot104 = slot101
		5000	[  0]	TGETS	102	101	339	; slot102 = slot101.getDimensions
		5001	[  0]	CALL 	102	3	2	; slot102, slot103 = <unknown table>.getDimensions(uv0"unknown")
		5002	[  0]	KSHORT	104		4	; slot104 = 4
		5003	[  0]	KSHORT	105		0	; slot105 = 0
		5004	[  0]	TGETS	106	0	368	; slot106 = slot0.imprintPanel
		5005	[  0]	ISF  	   		106	; if not <unknown table>.imprintPanel
		5006	[  0]	JMP  	107		23	; 	goto 5030
		5007	[  0]	TGETS	106	0	368	; slot106 = slot0.imprintPanel
		5008	[  0]	KSTR 	107		86	; slot107 = "iconOffset"
		5009	[  0]	TGETV	106	106	107	; slot106 = <unknown table>.imprintPanel[slot107]
		5010	[  0]	ISF  	   		106	; if not slot106
		5011	[  0]	JMP  	107		18	; 	goto 5030
		5012	[  0]	GGET 	106		393	; slot106 = _env["tonumber"]
		5013	[  0]	TGETS	108	0	368	; slot108 = slot0.imprintPanel
		5014	[  0]	KSTR 	109		86	; slot109 = "iconOffset"
		5015	[  0]	TGETV	108	108	109	; slot108 = <unknown table>.imprintPanel[slot109]
		5016	[  0]	TGETS	108	108	384	; slot108 = slot108.x
		5017	[  0]	CALL 	106	2	2	; slot106 = tonumber(slot107)
		5018	[  0]	ISTC 	104		106	; slot104 = tonumber; if tonumber
		5019	[  0]	JMP  	107		1	; 	goto 5021
		5020	[  0]	KSHORT	104		4	; slot104 = 4
		5021	[  0]	GGET 	106		393	; slot106 = _env["tonumber"]
		5022	[  0]	TGETS	108	0	368	; slot108 = slot0.imprintPanel
		5023	[  0]	KSTR 	109		86	; slot109 = "iconOffset"
		5024	[  0]	TGETV	108	108	109	; slot108 = <unknown table>.imprintPanel[slot109]
		5025	[  0]	TGETS	108	108	383	; slot108 = slot108.y
		5026	[  0]	CALL 	106	2	2	; slot106 = tonumber(slot107)
		5027	[  0]	ISTC 	105		106	; slot105 = tonumber; if tonumber
		5028	[  0]	JMP  	107		1	; 	goto 5030
		5029	[  0]	KSHORT	105		0	; slot105 = 0
		5030	[  0]	GGET 	106		398	; slot106 = _env["math"]
		5031	[  0]	TGETS	106	106	380	; slot106 = math.floor
		5032	[  0]	MULVV	108	104	29	; slot108 = slot104 * slot29
		5033	[  0]	ADDVN	108	108	6	; slot108 = slot108 + 0.5
		5034	[  0]	CALL 	106	2	2	; slot106 = math.floor(slot107)
		5035	[  0]	ADDVV	106	63	106	; slot106 = uv5"unknown" + math.floor
		5036	[  0]	GGET 	107		398	; slot107 = _env["math"]
		5037	[  0]	TGETS	107	107	380	; slot107 = math.floor
		5038	[  0]	SUBVV	109	72	103	; slot109 = math.floor - uv0"unknown"
		5039	[  0]	DIVVN	109	109	8	; slot109 = slot109 / 2
		5040	[  0]	CALL 	107	2	2	; slot107 = math.floor(slot108)
		5041	[  0]	ADDVV	107	84	107	; slot107 = uv5"unknown" + math.floor
		5042	[  0]	GGET 	108		398	; slot108 = _env["math"]
		5043	[  0]	TGETS	108	108	380	; slot108 = math.floor
		5044	[  0]	MULVV	110	105	29	; slot110 = slot105 * slot29
		5045	[  0]	ADDVN	110	110	6	; slot110 = slot110 + 0.5
		5046	[  0]	CALL 	108	2	2	; slot108 = math.floor(slot109)
		5047	[  0]	ADDVV	107	107	108	; slot107 = slot107 + math.floor
		5048	[  0]	GGET 	108		424	; slot108 = _env["love"]
		5049	[  0]	TGETS	108	108	343	; slot108 = love.graphics
		5050	[  0]	TGETS	108	108	310	; slot108 = love.graphics.setColor
		5051	[  0]	KNUM 	110		6	; slot110 = 0.5
		5052	[  0]	KNUM 	111		6	; slot111 = 0.5
		5053	[  0]	KNUM 	112		6	; slot112 = 0.5
		5054	[  0]	MULNV	113	35	10	; slot113 = 1 * slot35
		5055	[  0]	CALL 	108	1	5	;  = love.graphics.setColor(slot109, slot110, slot111, slot112)
		5056	[  0]	GGET 	108		424	; slot108 = _env["love"]
		5057	[  0]	TGETS	108	108	343	; slot108 = love.graphics
		5058	[  0]	TGETS	108	108	309	; slot108 = love.graphics.draw
		5059	[  0]	MOV  	110		101	; slot110 = slot101
		5060	[  0]	MOV  	111		106	; slot111 = slot106
		5061	[  0]	MOV  	112		107	; slot112 = slot107
		5062	[  0]	CALL 	108	1	4	;  = love.graphics.draw(slot109, slot110, slot111)
		5063	[  0]	ISF  	   		69	; if not slot69
		5064	[  0]	JMP  	101		427	; 	goto 5492
		5065	[  0]	ISFC 	101		85	; slot101 = slot85; if not slot85
		5066	[  0]	JMP  	101		11	; 	goto 5078
		5067	[  0]	GGET 	101		264	; slot101 = _env["tostring"]
		5068	[  0]	KSTR 	103		160	; slot103 = "rarity"
		5069	[  0]	TGETV	103	85	103	; slot103 = slot85[slot103]
		5070	[  0]	IST  	   		103	; if slot103
		5071	[  0]	JMP  	104		1	; 	goto 5073
		5072	[  0]	KSTR 	103		346	; slot103 = ""
		5073	[  0]	CALL 	101	2	2	; slot101 = tostring(<unknown table>.getDimensions)
		5074	[  0]	MOV  	103		101	; slot103 = tostring
		5075	[  0]	KSTR 	104		85	; slot104 = "lower"
		5076	[  0]	TGETV	101	101	104	; slot101 = tostring[slot104]
		5077	[  0]	CALL 	101	2	2	; slot101 = slot101(<unknown table>.getDimensions)
		5078	[  0]	ISEQS	101		353	; if slot101 == "special"
		5079	[  0]	JMP  	102		2	; 	goto 5082
		5080	[  0]	KPRI 	102		1	; slot102 = false
		5081	[  0]	JMP  	103		1	; 	goto 5083
		5082	[  0]	KPRI 	102		2	; slot102 = true
		5083	[  0]	ISEQS	101		351	; if slot101 == "advanced"
		5084	[  0]	JMP  	103		2	; 	goto 5087
		5085	[  0]	KPRI 	103		1	; slot103 = false
		5086	[  0]	JMP  	104		1	; 	goto 5088
		5087	[  0]	KPRI 	103		2	; slot103 = true
		5088	[  0]	ISEQS	101		355	; if slot101 == "rare"
		5089	[  0]	JMP  	104		4	; 	goto 5094
		5090	[  0]	ISEQS	101		84	; if slot101 == "r"
		5091	[  0]	JMP  	104		2	; 	goto 5094
		5092	[  0]	KPRI 	104		1	; slot104 = false
		5093	[  0]	JMP  	105		1	; 	goto 5095
		5094	[  0]	KPRI 	104		2	; slot104 = true
		5095	[  0]	ISEQS	101		357	; if slot101 == "legendary"
		5096	[  0]	JMP  	105		6	; 	goto 5103
		5097	[  0]	ISEQS	101		83	; if slot101 == "legend"
		5098	[  0]	JMP  	105		4	; 	goto 5103
		5099	[  0]	ISEQS	101		82	; if slot101 == "l"
		5100	[  0]	JMP  	105		2	; 	goto 5103
		5101	[  0]	KPRI 	105		1	; slot105 = false
		5102	[  0]	JMP  	106		1	; 	goto 5104
		5103	[  0]	KPRI 	105		2	; slot105 = true
		5104	[  0]	ISEQS	101		267	; if slot101 == "prism"
		5105	[  0]	JMP  	106		4	; 	goto 5110
		5106	[  0]	ISEQS	101		81	; if slot101 == "p"
		5107	[  0]	JMP  	106		2	; 	goto 5110
		5108	[  0]	KPRI 	106		1	; slot106 = false
		5109	[  0]	JMP  	107		1	; 	goto 5111
		5110	[  0]	KPRI 	106		2	; slot106 = true
		5111	[  0]	ISFC 	107		102	; slot107 = slot102; if not slot102
		5112	[  0]	JMP  	107		2	; 	goto 5115
		5113	[  0]	UGET 	107		26	; slot107 = uv26"unknwon"
		5114	[  0]	CALL 	107	2	1	; slot107 = uv26"unknown"()
		5115	[  0]	ISFC 	108		103	; slot108 = slot103; if not slot103
		5116	[  0]	JMP  	108		2	; 	goto 5119
		5117	[  0]	UGET 	108		27	; slot108 = uv27"unknwon"
		5118	[  0]	CALL 	108	2	1	; slot108 = uv27"unknown"()
		5119	[  0]	ISFC 	109		104	; slot109 = slot104; if not slot104
		5120	[  0]	JMP  	109		2	; 	goto 5123
		5121	[  0]	UGET 	109		28	; slot109 = uv28"unknwon"
		5122	[  0]	CALL 	109	2	1	; slot109 = uv28"unknown"()
		5123	[  0]	ISFC 	110		105	; slot110 = slot105; if not slot105
		5124	[  0]	JMP  	110		2	; 	goto 5127
		5125	[  0]	UGET 	110		29	; slot110 = uv29"unknwon"
		5126	[  0]	CALL 	110	2	1	; slot110 = uv29"unknown"()
		5127	[  0]	ISFC 	111		106	; slot111 = slot106; if not slot106
		5128	[  0]	JMP  	111		2	; 	goto 5131
		5129	[  0]	UGET 	111		30	; slot111 = uv30"unknwon"
		5130	[  0]	CALL 	111	2	1	; slot111 = uv30"unknown"()
		5131	[  0]	ISTC 	112		107	; slot112 = uv26"unknown"; if uv26"unknown"
		5132	[  0]	JMP  	112		7	; 	goto 5140
		5133	[  0]	ISTC 	112		108	; slot112 = uv27"unknown"; if uv27"unknown"
		5134	[  0]	JMP  	112		5	; 	goto 5140
		5135	[  0]	ISTC 	112		109	; slot112 = uv28"unknown"; if uv28"unknown"
		5136	[  0]	JMP  	112		3	; 	goto 5140
		5137	[  0]	ISTC 	112		110	; slot112 = uv29"unknown"; if uv29"unknown"
		5138	[  0]	JMP  	112		1	; 	goto 5140
		5139	[  0]	MOV  	112		111	; slot112 = uv30"unknown"
		5140	[  0]	ISGT 	 83		51	; if slot83 > math.max
		5141	[  0]	JMP  	113		9	; 	goto 5151
		5142	[  0]	GGET 	113		424	; slot113 = _env["love"]
		5143	[  0]	TGETS	113	113	343	; slot113 = love.graphics
		5144	[  0]	TGETS	113	113	310	; slot113 = love.graphics.setColor
		5145	[  0]	KSHORT	115		1	; slot115 = 1
		5146	[  0]	KSHORT	116		1	; slot116 = 1
		5147	[  0]	KSHORT	117		1	; slot117 = 1
		5148	[  0]	MULNV	118	35	10	; slot118 = 1 * slot35
		5149	[  0]	CALL 	113	1	5	;  = love.graphics.setColor(slot114, slot115, slot116, slot117)
		5150	[  0]	JMP  	113		8	; 	goto 5159
		5151	[  0]	GGET 	113		424	; slot113 = _env["love"]
		5152	[  0]	TGETS	113	113	343	; slot113 = love.graphics
		5153	[  0]	TGETS	113	113	310	; slot113 = love.graphics.setColor
		5154	[  0]	KNUM 	115		6	; slot115 = 0.5
		5155	[  0]	KNUM 	116		6	; slot116 = 0.5
		5156	[  0]	KNUM 	117		6	; slot117 = 0.5
		5157	[  0]	MULNV	118	35	10	; slot118 = 1 * slot35
		5158	[  0]	CALL 	113	1	5	;  = love.graphics.setColor(slot114, slot115, slot116, slot117)
		5159	[  0]	ISF  	   		112	; if not uv30"unknown"
		5160	[  0]	JMP  	113		77	; 	goto 5238
		5161	[  0]	ISF  	   		106	; if not slot106
		5162	[  0]	JMP  	113		70	; 	goto 5233
		5163	[  0]	MOV  	115		112	; slot115 = uv30"unknown"
		5164	[  0]	KSTR 	116		80	; slot116 = "hasUniform"
		5165	[  0]	TGETV	113	112	116	; slot113 = uv30"unknown"[slot116]
		5166	[  0]	KSTR 	116		79	; slot116 = "u_time"
		5167	[  0]	CALL 	113	2	3	; slot113 = slot113(slot114, uv30"unknown")
		5168	[  0]	ISF  	   		113	; if not slot113
		5169	[  0]	JMP  	114		63	; 	goto 5233
		5170	[  0]	MOV  	113		112	; slot113 = uv30"unknown"
		5171	[  0]	FNEW 	114		78	; N/A:0-0: 2 args, 1 upvalues, 7 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  2	[  0]	MOV  	  4		2	; slot4 = uv0"unknown"
			  3	[  0]	TGETS	  2	2	1	; slot2 = uv0"unknown".hasUniform
			  4	[  0]	MOV  	  5		0	; slot5 = slot0
			  5	[  0]	CALL 	  2	2	3	; slot2 = uv0"unknown".hasUniform(slot3, uv0"unknown")
			  6	[  0]	ISF  	   		2	; if not slot2
			  7	[  0]	JMP  	  3		6	; 	goto 14
			  8	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  9	[  0]	MOV  	  4		2	; slot4 = uv0"unknown"
			 10	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".send
			 11	[  0]	MOV  	  5		0	; slot5 = slot0
			 12	[  0]	MOV  	  6		1	; slot6 = slot1
			 13	[  0]	CALL 	  2	1	4	;  = uv0"unknown".send(slot3, uv0"unknown", slot5)
			 14	[  0]	RET0 	  0		1	; return
		5172	[  0]	MOV  	115		114	; slot115 = slot114
		5173	[  0]	KSTR 	117		79	; slot117 = "u_time"
		5174	[  0]	GGET 	118		424	; slot118 = _env["love"]
		5175	[  0]	TGETS	118	118	423	; slot118 = love.timer
		5176	[  0]	TGETS	118	118	422	; slot118 = love.timer.getTime
		5177	[  0]	CALL 	118	2	1	; slot118 = love.timer.getTime()
		5178	[  0]	MODVN	118	118	35	; slot118 = love.timer.getTime % 10000
		5179	[  0]	CALL 	115	1	3	;  = slot115(slot116, slot117)
		5180	[  0]	MOV  	115		114	; slot115 = slot114
		5181	[  0]	KSTR 	117		77	; slot117 = "u_uiBase"
		5182	[  0]	TDUP 	118		76	; slot118 = copy table#k76
		5183	[  0]	CALL 	115	1	3	;  = slot115(slot116, slot117)
		5184	[  0]	MOV  	115		114	; slot115 = slot114
		5185	[  0]	KSTR 	117		75	; slot117 = "u_dir"
		5186	[  0]	TDUP 	118		74	; slot118 = copy table#k74
		5187	[  0]	CALL 	115	1	3	;  = slot115(slot116, slot117)
		5188	[  0]	MOV  	115		114	; slot115 = slot114
		5189	[  0]	KSTR 	117		73	; slot117 = "u_cycle"
		5190	[  0]	KSHORT	118		4	; slot118 = 4
		5191	[  0]	CALL 	115	1	3	;  = slot115(slot116, slot117)
		5192	[  0]	MOV  	115		114	; slot115 = slot114
		5193	[  0]	KSTR 	117		72	; slot117 = "u_scale"
		5194	[  0]	KSHORT	118		2	; slot118 = 2
		5195	[  0]	CALL 	115	1	3	;  = slot115(slot116, slot117)
		5196	[  0]	MOV  	115		114	; slot115 = slot114
		5197	[  0]	KSTR 	117		71	; slot117 = "u_grainScale"
		5198	[  0]	KSHORT	118		3	; slot118 = 3
		5199	[  0]	CALL 	115	1	3	;  = slot115(slot116, slot117)
		5200	[  0]	MOV  	115		114	; slot115 = slot114
		5201	[  0]	KSTR 	117		70	; slot117 = "u_grainAmp"
		5202	[  0]	KNUM 	118		18	; slot118 = 0.2
		5203	[  0]	CALL 	115	1	3	;  = slot115(slot116, slot117)
		5204	[  0]	MOV  	115		114	; slot115 = slot114
		5205	[  0]	KSTR 	117		69	; slot117 = "u_filmFreq"
		5206	[  0]	KSHORT	118		2	; slot118 = 2
		5207	[  0]	CALL 	115	1	3	;  = slot115(slot116, slot117)
		5208	[  0]	MOV  	115		114	; slot115 = slot114
		5209	[  0]	KSTR 	117		68	; slot117 = "u_filmAmp"
		5210	[  0]	KNUM 	118		21	; slot118 = 0.25
		5211	[  0]	CALL 	115	1	3	;  = slot115(slot116, slot117)
		5212	[  0]	MOV  	115		114	; slot115 = slot114
		5213	[  0]	KSTR 	117		67	; slot117 = "u_specular"
		5214	[  0]	KNUM 	118		6	; slot118 = 0.5
		5215	[  0]	CALL 	115	1	3	;  = slot115(slot116, slot117)
		5216	[  0]	MOV  	115		114	; slot115 = slot114
		5217	[  0]	KSTR 	117		66	; slot117 = "u_fresnelPow"
		5218	[  0]	KNUM 	118		36	; slot118 = 2.5
		5219	[  0]	CALL 	115	1	3	;  = slot115(slot116, slot117)
		5220	[  0]	MOV  	115		114	; slot115 = slot114
		5221	[  0]	KSTR 	117		65	; slot117 = "u_colorGain"
		5222	[  0]	KNUM 	118		37	; slot118 = 1.8
		5223	[  0]	CALL 	115	1	3	;  = slot115(slot116, slot117)
		5224	[  0]	MOV  	115		114	; slot115 = slot114
		5225	[  0]	KSTR 	117		64	; slot117 = "u_saturation"
		5226	[  0]	KNUM 	118		11	; slot118 = 1.5
		5227	[  0]	CALL 	115	1	3	;  = slot115(slot116, slot117)
		5228	[  0]	MOV  	115		114	; slot115 = slot114
		5229	[  0]	KSTR 	117		63	; slot117 = "u_mixBP"
		5230	[  0]	KNUM 	118		38	; slot118 = 0.32
		5231	[  0]	CALL 	115	1	3	;  = slot115(slot116, slot117)
		5232	[  0]	UCLO 	113		0	; nil uvs >= r113; goto 5233
		5233	[  0]	GGET 	113		424	; slot113 = _env["love"]
		5234	[  0]	TGETS	113	113	343	; slot113 = love.graphics
		5235	[  0]	TGETS	113	113	292	; slot113 = love.graphics.setShader
		5236	[  0]	MOV  	115		112	; slot115 = uv30"unknown"
		5237	[  0]	CALL 	113	1	2	;  = love.graphics.setShader(slot114)
		5238	[  0]	GGET 	113		424	; slot113 = _env["love"]
		5239	[  0]	TGETS	113	113	343	; slot113 = love.graphics
		5240	[  0]	TGETS	113	113	309	; slot113 = love.graphics.draw
		5241	[  0]	MOV  	115		69	; slot115 = slot69
		5242	[  0]	ADDVV	116	63	76	; slot116 = uv5"unknown" + tonumber
		5243	[  0]	ADDVV	117	84	77	; slot117 = uv5"unknown" + tonumber
		5244	[  0]	KSHORT	118		0	; slot118 = 0
		5245	[  0]	KSHORT	119		1	; slot119 = 1
		5246	[  0]	KSHORT	120		1	; slot120 = 1
		5247	[  0]	CALL 	113	1	7	;  = love.graphics.draw(slot114, slot115, slot116, slot117, slot118, slot119)
		5248	[  0]	ISF  	   		112	; if not uv30"unknown"
		5249	[  0]	JMP  	113		4	; 	goto 5254
		5250	[  0]	GGET 	113		424	; slot113 = _env["love"]
		5251	[  0]	TGETS	113	113	343	; slot113 = love.graphics
		5252	[  0]	TGETS	113	113	292	; slot113 = love.graphics.setShader
		5253	[  0]	CALL 	113	1	1	;  = love.graphics.setShader()
		5254	[  0]	UGET 	113		0	; slot113 = uv0"unknwon"
		5255	[  0]	TGETS	113	113	438	; slot113 = uv0"unknown"._hoveredSlot
		5256	[  0]	ISF  	   		113	; if not uv0"unknown"._hoveredSlot
		5257	[  0]	JMP  	114		63	; 	goto 5321
		5258	[  0]	UGET 	113		0	; slot113 = uv0"unknwon"
		5259	[  0]	TGETS	113	113	438	; slot113 = uv0"unknown"._hoveredSlot
		5260	[  0]	TGETS	113	113	439	; slot113 = uv0"unknown"._hoveredSlot.index
		5261	[  0]	ISNEV	113		83	; if uv0"unknown"._hoveredSlot.index ~= slot83
		5262	[  0]	JMP  	113		58	; 	goto 5321
		5263	[  0]	UGET 	113		0	; slot113 = uv0"unknwon"
		5264	[  0]	TGETS	113	113	438	; slot113 = uv0"unknown"._hoveredSlot
		5265	[  0]	KSTR 	114		62	; slot114 = "previewUpgrade"
		5266	[  0]	TGETV	113	113	114	; slot113 = uv0"unknown"._hoveredSlot[slot114]
		5267	[  0]	ISF  	   		113	; if not slot113
		5268	[  0]	JMP  	114		52	; 	goto 5321
		5269	[  0]	GGET 	113		424	; slot113 = _env["love"]
		5270	[  0]	TGETS	113	113	343	; slot113 = love.graphics
		5271	[  0]	TGETS	113	113	235	; slot113 = love.graphics.setBlendMode
		5272	[  0]	KSTR 	115		234	; slot115 = "add"
		5273	[  0]	CALL 	113	1	2	;  = love.graphics.setBlendMode(slot114)
		5274	[  0]	GGET 	113		398	; slot113 = _env["math"]
		5275	[  0]	TGETS	113	113	282	; slot113 = math.sin
		5276	[  0]	GGET 	115		424	; slot115 = _env["love"]
		5277	[  0]	TGETS	115	115	423	; slot115 = love.timer
		5278	[  0]	TGETS	115	115	422	; slot115 = love.timer.getTime
		5279	[  0]	CALL 	115	2	1	; slot115 = love.timer.getTime()
		5280	[  0]	MULVN	115	115	34	; slot115 = love.timer.getTime * 15
		5281	[  0]	CALL 	113	2	2	; slot113 = math.sin(slot114)
		5282	[  0]	MULNV	113	113	6	; slot113 = 0.5 * math.sin
		5283	[  0]	ADDNV	113	113	6	; slot113 = 0.5 + slot113
		5284	[  0]	MULVN	113	113	12	; slot113 = slot113 * 0.4
		5285	[  0]	GGET 	114		424	; slot114 = _env["love"]
		5286	[  0]	TGETS	114	114	343	; slot114 = love.graphics
		5287	[  0]	TGETS	114	114	310	; slot114 = love.graphics.setColor
		5288	[  0]	KSHORT	116		1	; slot116 = 1
		5289	[  0]	KSHORT	117		1	; slot117 = 1
		5290	[  0]	KSHORT	118		1	; slot118 = 1
		5291	[  0]	MULVV	119	113	35	; slot119 = slot113 * slot35
		5292	[  0]	CALL 	114	1	5	;  = love.graphics.setColor(slot115, slot116, slot117, slot118)
		5293	[  0]	ISF  	   		112	; if not uv30"unknown"
		5294	[  0]	JMP  	114		5	; 	goto 5300
		5295	[  0]	GGET 	114		424	; slot114 = _env["love"]
		5296	[  0]	TGETS	114	114	343	; slot114 = love.graphics
		5297	[  0]	TGETS	114	114	292	; slot114 = love.graphics.setShader
		5298	[  0]	MOV  	116		112	; slot116 = uv30"unknown"
		5299	[  0]	CALL 	114	1	2	;  = love.graphics.setShader(slot115)
		5300	[  0]	GGET 	114		424	; slot114 = _env["love"]
		5301	[  0]	TGETS	114	114	343	; slot114 = love.graphics
		5302	[  0]	TGETS	114	114	309	; slot114 = love.graphics.draw
		5303	[  0]	MOV  	116		69	; slot116 = slot69
		5304	[  0]	ADDVV	117	63	76	; slot117 = uv5"unknown" + tonumber
		5305	[  0]	ADDVV	118	84	77	; slot118 = uv5"unknown" + tonumber
		5306	[  0]	KSHORT	119		0	; slot119 = 0
		5307	[  0]	KSHORT	120		1	; slot120 = 1
		5308	[  0]	KSHORT	121		1	; slot121 = 1
		5309	[  0]	CALL 	114	1	7	;  = love.graphics.draw(slot115, slot116, slot117, slot118, slot119, slot120)
		5310	[  0]	ISF  	   		112	; if not uv30"unknown"
		5311	[  0]	JMP  	114		4	; 	goto 5316
		5312	[  0]	GGET 	114		424	; slot114 = _env["love"]
		5313	[  0]	TGETS	114	114	343	; slot114 = love.graphics
		5314	[  0]	TGETS	114	114	292	; slot114 = love.graphics.setShader
		5315	[  0]	CALL 	114	1	1	;  = love.graphics.setShader()
		5316	[  0]	GGET 	114		424	; slot114 = _env["love"]
		5317	[  0]	TGETS	114	114	343	; slot114 = love.graphics
		5318	[  0]	TGETS	114	114	235	; slot114 = love.graphics.setBlendMode
		5319	[  0]	KSTR 	116		231	; slot116 = "alpha"
		5320	[  0]	CALL 	114	1	2	;  = love.graphics.setBlendMode(slot115)
		5321	[  0]	KSHORT	113		0	; slot113 = 0
		5322	[  0]	ISGE 	113		92	; if slot113 >= slot92
		5323	[  0]	JMP  	113		88	; 	goto 5412
		5324	[  0]	GGET 	113		424	; slot113 = _env["love"]
		5325	[  0]	TGETS	113	113	343	; slot113 = love.graphics
		5326	[  0]	TGETS	113	113	235	; slot113 = love.graphics.setBlendMode
		5327	[  0]	KSTR 	115		234	; slot115 = "add"
		5328	[  0]	CALL 	113	1	2	;  = love.graphics.setBlendMode(love.graphics.setBlendMode)
		5329	[  0]	GGET 	113		424	; slot113 = _env["love"]
		5330	[  0]	TGETS	113	113	343	; slot113 = love.graphics
		5331	[  0]	TGETS	113	113	310	; slot113 = love.graphics.setColor
		5332	[  0]	KSHORT	115		1	; slot115 = 1
		5333	[  0]	KNUM 	116		20	; slot116 = 0.9
		5334	[  0]	KNUM 	117		6	; slot117 = 0.5
		5335	[  0]	MULVN	118	92	12	; slot118 = slot92 * 0.4
		5336	[  0]	MULVV	118	118	35	; slot118 = slot118 * slot35
		5337	[  0]	CALL 	113	1	5	;  = love.graphics.setColor(love.graphics.setBlendMode, slot115, slot116, slot117)
		5338	[  0]	KSHORT	113		1	; slot113 = 1
		5339	[  0]	KSHORT	114		3	; slot114 = 3
		5340	[  0]	KSHORT	115		1	; slot115 = 1
		5341	[  0]	FORI 	113		33	; for slot116 = slot113,slot114,slot115 else goto 5375
		5342	[  0]	MULVN	117	116	7	; slot117 = slot116 * 0.02
		5343	[  0]	MULVV	117	117	92	; slot117 = slot117 * slot92
		5344	[  0]	ADDNV	117	117	10	; slot117 = 1 + slot117
		5345	[  0]	ISF  	   		112	; if not uv30"unknown"
		5346	[  0]	JMP  	118		5	; 	goto 5352
		5347	[  0]	GGET 	118		424	; slot118 = _env["love"]
		5348	[  0]	TGETS	118	118	343	; slot118 = love.graphics
		5349	[  0]	TGETS	118	118	292	; slot118 = love.graphics.setShader
		5350	[  0]	MOV  	120		112	; slot120 = uv30"unknown"
		5351	[  0]	CALL 	118	1	2	;  = love.graphics.setShader(slot119)
		5352	[  0]	GGET 	118		424	; slot118 = _env["love"]
		5353	[  0]	TGETS	118	118	343	; slot118 = love.graphics
		5354	[  0]	TGETS	118	118	309	; slot118 = love.graphics.draw
		5355	[  0]	MOV  	120		69	; slot120 = slot69
		5356	[  0]	ADDVV	121	63	76	; slot121 = uv5"unknown" + tonumber
		5357	[  0]	DIVVN	122	89	8	; slot122 = math.max / 2
		5358	[  0]	ADDVV	121	121	122	; slot121 = slot121 + slot122
		5359	[  0]	ADDVV	122	84	77	; slot122 = uv5"unknown" + tonumber
		5360	[  0]	DIVVN	123	90	8	; slot123 = math.floor / 2
		5361	[  0]	ADDVV	122	122	123	; slot122 = slot122 + slot123
		5362	[  0]	KSHORT	123		0	; slot123 = 0
		5363	[  0]	MOV  	124		117	; slot124 = slot117
		5364	[  0]	MOV  	125		117	; slot125 = slot117
		5365	[  0]	DIVVN	126	89	8	; slot126 = math.max / 2
		5366	[  0]	DIVVN	127	90	8	; slot127 = math.floor / 2
		5367	[  0]	CALL 	118	1	9	;  = love.graphics.draw(slot119, slot120, slot121, slot122, slot123, slot124, slot125, slot126)
		5368	[  0]	ISF  	   		112	; if not uv30"unknown"
		5369	[  0]	JMP  	118		4	; 	goto 5374
		5370	[  0]	GGET 	118		424	; slot118 = _env["love"]
		5371	[  0]	TGETS	118	118	343	; slot118 = love.graphics
		5372	[  0]	TGETS	118	118	292	; slot118 = love.graphics.setShader
		5373	[  0]	CALL 	118	1	1	;  = love.graphics.setShader()
		5374	[  0]	FORL 	113		-33	; slot116 = slot116 + slot115; if cmp(slot116, sign slot115,  slot114) goto 5342
		5375	[  0]	GGET 	113		424	; slot113 = _env["love"]
		5376	[  0]	TGETS	113	113	343	; slot113 = love.graphics
		5377	[  0]	TGETS	113	113	310	; slot113 = love.graphics.setColor
		5378	[  0]	KSHORT	115		1	; slot115 = 1
		5379	[  0]	KSHORT	116		1	; slot116 = 1
		5380	[  0]	KSHORT	117		1	; slot117 = 1
		5381	[  0]	MULVN	118	92	1	; slot118 = slot92 * 0.8
		5382	[  0]	MULVV	118	118	35	; slot118 = slot118 * slot35
		5383	[  0]	CALL 	113	1	5	;  = love.graphics.setColor(slot114, slot115, slot116, slot117)
		5384	[  0]	ISF  	   		112	; if not uv30"unknown"
		5385	[  0]	JMP  	113		5	; 	goto 5391
		5386	[  0]	GGET 	113		424	; slot113 = _env["love"]
		5387	[  0]	TGETS	113	113	343	; slot113 = love.graphics
		5388	[  0]	TGETS	113	113	292	; slot113 = love.graphics.setShader
		5389	[  0]	MOV  	115		112	; slot115 = uv30"unknown"
		5390	[  0]	CALL 	113	1	2	;  = love.graphics.setShader(slot114)
		5391	[  0]	GGET 	113		424	; slot113 = _env["love"]
		5392	[  0]	TGETS	113	113	343	; slot113 = love.graphics
		5393	[  0]	TGETS	113	113	309	; slot113 = love.graphics.draw
		5394	[  0]	MOV  	115		69	; slot115 = slot69
		5395	[  0]	ADDVV	116	63	76	; slot116 = uv5"unknown" + tonumber
		5396	[  0]	ADDVV	117	84	77	; slot117 = uv5"unknown" + tonumber
		5397	[  0]	KSHORT	118		0	; slot118 = 0
		5398	[  0]	KSHORT	119		1	; slot119 = 1
		5399	[  0]	KSHORT	120		1	; slot120 = 1
		5400	[  0]	CALL 	113	1	7	;  = love.graphics.draw(slot114, slot115, slot116, slot117, slot118, slot119)
		5401	[  0]	ISF  	   		112	; if not uv30"unknown"
		5402	[  0]	JMP  	113		4	; 	goto 5407
		5403	[  0]	GGET 	113		424	; slot113 = _env["love"]
		5404	[  0]	TGETS	113	113	343	; slot113 = love.graphics
		5405	[  0]	TGETS	113	113	292	; slot113 = love.graphics.setShader
		5406	[  0]	CALL 	113	1	1	;  = love.graphics.setShader()
		5407	[  0]	GGET 	113		424	; slot113 = _env["love"]
		5408	[  0]	TGETS	113	113	343	; slot113 = love.graphics
		5409	[  0]	TGETS	113	113	235	; slot113 = love.graphics.setBlendMode
		5410	[  0]	KSTR 	115		231	; slot115 = "alpha"
		5411	[  0]	CALL 	113	1	2	;  = love.graphics.setBlendMode(slot114)
		5412	[  0]	UGET 	113		1	; slot113 = uv1"unknwon"
		5413	[  0]	TGETS	113	113	417	; slot113 = uv1"unknown".blinkSlot
		5414	[  0]	ISNEV	113		83	; if uv1"unknown".blinkSlot ~= slot83
		5415	[  0]	JMP  	113		357	; 	goto 5773
		5416	[  0]	UGET 	113		1	; slot113 = uv1"unknwon"
		5417	[  0]	TGETS	113	113	418	; slot113 = uv1"unknown".blinkUnit
		5418	[  0]	ISNEV	 11		113	; if uv1"unknown".lastUnit ~= uv1"unknown".blinkUnit
		5419	[  0]	JMP  	113		353	; 	goto 5773
		5420	[  0]	GGET 	113		398	; slot113 = _env["math"]
		5421	[  0]	TGETS	113	113	396	; slot113 = math.abs
		5422	[  0]	UGET 	115		1	; slot115 = uv1"unknwon"
		5423	[  0]	TGETS	115	115	384	; slot115 = uv1"unknown".x
		5424	[  0]	SUBVV	115	115	20	; slot115 = uv1"unknown".x - slot20
		5425	[  0]	CALL 	113	2	2	; slot113 = math.abs(slot114)
		5426	[  0]	KSHORT	114		2	; slot114 = 2
		5427	[  0]	ISLT 	114		113	; if slot114 < math.abs
		5428	[  0]	JMP  	113		2	; 	goto 5431
		5429	[  0]	KPRI 	113		1	; slot113 = false
		5430	[  0]	JMP  	114		1	; 	goto 5432
		5431	[  0]	KPRI 	113		2	; slot113 = true
		5432	[  0]	ISF  	   		113	; if not slot113
		5433	[  0]	JMP  	114		339	; 	goto 5773
		5434	[  0]	KSHORT	114		8	; slot114 = 8
		5435	[  0]	KNUM 	115		15	; slot115 = 0.3
		5436	[  0]	UGET 	116		1	; slot116 = uv1"unknwon"
		5437	[  0]	TGETS	116	116	419	; slot116 = uv1"unknown".blinkTimer
		5438	[  0]	KSHORT	117		0	; slot117 = 0
		5439	[  0]	ISGE 	117		116	; if slot117 >= uv1"unknown".blinkTimer
		5440	[  0]	JMP  	116		2	; 	goto 5443
		5441	[  0]	KSHORT	114		15	; slot114 = 15
		5442	[  0]	KNUM 	115		6	; slot115 = 0.5
		5443	[  0]	GGET 	116		424	; slot116 = _env["love"]
		5444	[  0]	TGETS	116	116	343	; slot116 = love.graphics
		5445	[  0]	TGETS	116	116	235	; slot116 = love.graphics.setBlendMode
		5446	[  0]	KSTR 	118		234	; slot118 = "add"
		5447	[  0]	CALL 	116	1	2	;  = love.graphics.setBlendMode(slot117)
		5448	[  0]	GGET 	116		398	; slot116 = _env["math"]
		5449	[  0]	TGETS	116	116	282	; slot116 = math.sin
		5450	[  0]	MULVV	118	6	114	; slot118 = slot6 * slot114
		5451	[  0]	CALL 	116	2	2	; slot116 = math.sin(slot117)
		5452	[  0]	MULNV	116	116	6	; slot116 = 0.5 * math.sin
		5453	[  0]	ADDNV	116	116	6	; slot116 = 0.5 + slot116
		5454	[  0]	MULVV	116	116	115	; slot116 = slot116 * slot115
		5455	[  0]	GGET 	117		424	; slot117 = _env["love"]
		5456	[  0]	TGETS	117	117	343	; slot117 = love.graphics
		5457	[  0]	TGETS	117	117	310	; slot117 = love.graphics.setColor
		5458	[  0]	KSHORT	119		1	; slot119 = 1
		5459	[  0]	KNUM 	120		20	; slot120 = 0.9
		5460	[  0]	KNUM 	121		13	; slot121 = 0.6
		5461	[  0]	MULVV	122	116	35	; slot122 = slot116 * slot35
		5462	[  0]	CALL 	117	1	5	;  = love.graphics.setColor(slot118, slot119, slot120, slot121)
		5463	[  0]	ISF  	   		112	; if not uv30"unknown"
		5464	[  0]	JMP  	117		5	; 	goto 5470
		5465	[  0]	GGET 	117		424	; slot117 = _env["love"]
		5466	[  0]	TGETS	117	117	343	; slot117 = love.graphics
		5467	[  0]	TGETS	117	117	292	; slot117 = love.graphics.setShader
		5468	[  0]	MOV  	119		112	; slot119 = uv30"unknown"
		5469	[  0]	CALL 	117	1	2	;  = love.graphics.setShader(slot118)
		5470	[  0]	GGET 	117		424	; slot117 = _env["love"]
		5471	[  0]	TGETS	117	117	343	; slot117 = love.graphics
		5472	[  0]	TGETS	117	117	309	; slot117 = love.graphics.draw
		5473	[  0]	MOV  	119		69	; slot119 = slot69
		5474	[  0]	ADDVV	120	63	76	; slot120 = uv5"unknown" + tonumber
		5475	[  0]	ADDVV	121	84	77	; slot121 = uv5"unknown" + tonumber
		5476	[  0]	KSHORT	122		0	; slot122 = 0
		5477	[  0]	KSHORT	123		1	; slot123 = 1
		5478	[  0]	KSHORT	124		1	; slot124 = 1
		5479	[  0]	CALL 	117	1	7	;  = love.graphics.draw(slot118, slot119, slot120, slot121, slot122, slot123)
		5480	[  0]	ISF  	   		112	; if not uv30"unknown"
		5481	[  0]	JMP  	117		4	; 	goto 5486
		5482	[  0]	GGET 	117		424	; slot117 = _env["love"]
		5483	[  0]	TGETS	117	117	343	; slot117 = love.graphics
		5484	[  0]	TGETS	117	117	292	; slot117 = love.graphics.setShader
		5485	[  0]	CALL 	117	1	1	;  = love.graphics.setShader()
		5486	[  0]	GGET 	117		424	; slot117 = _env["love"]
		5487	[  0]	TGETS	117	117	343	; slot117 = love.graphics
		5488	[  0]	TGETS	117	117	235	; slot117 = love.graphics.setBlendMode
		5489	[  0]	KSTR 	119		231	; slot119 = "alpha"
		5490	[  0]	CALL 	117	1	2	;  = love.graphics.setBlendMode(slot118)
		5491	[  0]	JMP  	101		281	; 	goto 5773
		5492	[  0]	ISFC 	101		85	; slot101 = slot85; if not slot85
		5493	[  0]	JMP  	101		11	; 	goto 5505
		5494	[  0]	GGET 	101		264	; slot101 = _env["tostring"]
		5495	[  0]	KSTR 	103		160	; slot103 = "rarity"
		5496	[  0]	TGETV	103	85	103	; slot103 = slot85[slot103]
		5497	[  0]	IST  	   		103	; if slot103
		5498	[  0]	JMP  	104		1	; 	goto 5500
		5499	[  0]	KSTR 	103		346	; slot103 = ""
		5500	[  0]	CALL 	101	2	2	; slot101 = tostring(slot102)
		5501	[  0]	MOV  	103		101	; slot103 = tostring
		5502	[  0]	KSTR 	104		85	; slot104 = "lower"
		5503	[  0]	TGETV	101	101	104	; slot101 = tostring[slot104]
		5504	[  0]	CALL 	101	2	2	; slot101 = slot101(slot102)
		5505	[  0]	ISEQS	101		353	; if slot101 == "special"
		5506	[  0]	JMP  	102		2	; 	goto 5509
		5507	[  0]	KPRI 	102		1	; slot102 = false
		5508	[  0]	JMP  	103		1	; 	goto 5510
		5509	[  0]	KPRI 	102		2	; slot102 = true
		5510	[  0]	ISEQS	101		351	; if slot101 == "advanced"
		5511	[  0]	JMP  	103		2	; 	goto 5514
		5512	[  0]	KPRI 	103		1	; slot103 = false
		5513	[  0]	JMP  	104		1	; 	goto 5515
		5514	[  0]	KPRI 	103		2	; slot103 = true
		5515	[  0]	ISEQS	101		355	; if slot101 == "rare"
		5516	[  0]	JMP  	104		4	; 	goto 5521
		5517	[  0]	ISEQS	101		84	; if slot101 == "r"
		5518	[  0]	JMP  	104		2	; 	goto 5521
		5519	[  0]	KPRI 	104		1	; slot104 = false
		5520	[  0]	JMP  	105		1	; 	goto 5522
		5521	[  0]	KPRI 	104		2	; slot104 = true
		5522	[  0]	ISEQS	101		357	; if slot101 == "legendary"
		5523	[  0]	JMP  	105		6	; 	goto 5530
		5524	[  0]	ISEQS	101		83	; if slot101 == "legend"
		5525	[  0]	JMP  	105		4	; 	goto 5530
		5526	[  0]	ISEQS	101		82	; if slot101 == "l"
		5527	[  0]	JMP  	105		2	; 	goto 5530
		5528	[  0]	KPRI 	105		1	; slot105 = false
		5529	[  0]	JMP  	106		1	; 	goto 5531
		5530	[  0]	KPRI 	105		2	; slot105 = true
		5531	[  0]	ISEQS	101		267	; if slot101 == "prism"
		5532	[  0]	JMP  	106		4	; 	goto 5537
		5533	[  0]	ISEQS	101		81	; if slot101 == "p"
		5534	[  0]	JMP  	106		2	; 	goto 5537
		5535	[  0]	KPRI 	106		1	; slot106 = false
		5536	[  0]	JMP  	107		1	; 	goto 5538
		5537	[  0]	KPRI 	106		2	; slot106 = true
		5538	[  0]	ISGT 	 83		51	; if slot83 > math.max
		5539	[  0]	JMP  	107		64	; 	goto 5604
		5540	[  0]	ISF  	   		106	; if not slot106
		5541	[  0]	JMP  	107		9	; 	goto 5551
		5542	[  0]	GGET 	107		424	; slot107 = _env["love"]
		5543	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		5544	[  0]	TGETS	107	107	310	; slot107 = love.graphics.setColor
		5545	[  0]	KNUM 	109		39	; slot109 = 0.35294117647058826
		5546	[  0]	KNUM 	110		40	; slot110 = 0.1568627450980392
		5547	[  0]	KNUM 	111		41	; slot111 = 0.47058823529411764
		5548	[  0]	MULNV	112	35	10	; slot112 = 1 * slot35
		5549	[  0]	CALL 	107	1	5	;  = love.graphics.setColor(uv27"unknown", slot109, slot110, slot111)
		5550	[  0]	JMP  	107		61	; 	goto 5612
		5551	[  0]	ISF  	   		102	; if not slot102
		5552	[  0]	JMP  	107		9	; 	goto 5562
		5553	[  0]	GGET 	107		424	; slot107 = _env["love"]
		5554	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		5555	[  0]	TGETS	107	107	310	; slot107 = love.graphics.setColor
		5556	[  0]	KNUM 	109		42	; slot109 = 0.44313725490196076
		5557	[  0]	KNUM 	110		43	; slot110 = 0.20392156862745098
		5558	[  0]	KNUM 	111		44	; slot111 = 0.3843137254901961
		5559	[  0]	MULNV	112	35	10	; slot112 = 1 * slot35
		5560	[  0]	CALL 	107	1	5	;  = love.graphics.setColor(uv27"unknown", slot109, slot110, slot111)
		5561	[  0]	JMP  	107		50	; 	goto 5612
		5562	[  0]	ISF  	   		105	; if not slot105
		5563	[  0]	JMP  	107		9	; 	goto 5573
		5564	[  0]	GGET 	107		424	; slot107 = _env["love"]
		5565	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		5566	[  0]	TGETS	107	107	310	; slot107 = love.graphics.setColor
		5567	[  0]	KNUM 	109		45	; slot109 = 0.43137254901960786
		5568	[  0]	KNUM 	110		46	; slot110 = 0.3333333333333333
		5569	[  0]	KNUM 	111		47	; slot111 = 0.19607843137254902
		5570	[  0]	MULNV	112	35	10	; slot112 = 1 * slot35
		5571	[  0]	CALL 	107	1	5	;  = love.graphics.setColor(uv27"unknown", slot109, slot110, slot111)
		5572	[  0]	JMP  	107		39	; 	goto 5612
		5573	[  0]	ISF  	   		104	; if not slot104
		5574	[  0]	JMP  	107		9	; 	goto 5584
		5575	[  0]	GGET 	107		424	; slot107 = _env["love"]
		5576	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		5577	[  0]	TGETS	107	107	310	; slot107 = love.graphics.setColor
		5578	[  0]	KNUM 	109		48	; slot109 = 0.20784313725490197
		5579	[  0]	KNUM 	110		49	; slot110 = 0.29411764705882354
		5580	[  0]	KNUM 	111		50	; slot111 = 0.4196078431372549
		5581	[  0]	MULNV	112	35	10	; slot112 = 1 * slot35
		5582	[  0]	CALL 	107	1	5	;  = love.graphics.setColor(uv27"unknown", slot109, slot110, slot111)
		5583	[  0]	JMP  	107		28	; 	goto 5612
		5584	[  0]	ISF  	   		103	; if not slot103
		5585	[  0]	JMP  	107		9	; 	goto 5595
		5586	[  0]	GGET 	107		424	; slot107 = _env["love"]
		5587	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		5588	[  0]	TGETS	107	107	310	; slot107 = love.graphics.setColor
		5589	[  0]	KNUM 	109		40	; slot109 = 0.1568627450980392
		5590	[  0]	KNUM 	110		51	; slot110 = 0.30196078431372547
		5591	[  0]	KNUM 	111		52	; slot111 = 0.18823529411764706
		5592	[  0]	MULNV	112	35	10	; slot112 = 1 * slot35
		5593	[  0]	CALL 	107	1	5	;  = love.graphics.setColor(uv27"unknown", slot109, slot110, slot111)
		5594	[  0]	JMP  	107		17	; 	goto 5612
		5595	[  0]	GGET 	107		424	; slot107 = _env["love"]
		5596	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		5597	[  0]	TGETS	107	107	310	; slot107 = love.graphics.setColor
		5598	[  0]	KNUM 	109		18	; slot109 = 0.2
		5599	[  0]	KNUM 	110		18	; slot110 = 0.2
		5600	[  0]	KNUM 	111		18	; slot111 = 0.2
		5601	[  0]	MULNV	112	35	10	; slot112 = 1 * slot35
		5602	[  0]	CALL 	107	1	5	;  = love.graphics.setColor(uv27"unknown", slot109, slot110, slot111)
		5603	[  0]	JMP  	107		8	; 	goto 5612
		5604	[  0]	GGET 	107		424	; slot107 = _env["love"]
		5605	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		5606	[  0]	TGETS	107	107	310	; slot107 = love.graphics.setColor
		5607	[  0]	KNUM 	109		0	; slot109 = 0.1
		5608	[  0]	KNUM 	110		0	; slot110 = 0.1
		5609	[  0]	KNUM 	111		0	; slot111 = 0.1
		5610	[  0]	MULNV	112	35	6	; slot112 = 0.5 * slot35
		5611	[  0]	CALL 	107	1	5	;  = love.graphics.setColor(uv27"unknown", slot109, slot110, slot111)
		5612	[  0]	GGET 	107		424	; slot107 = _env["love"]
		5613	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		5614	[  0]	TGETS	107	107	308	; slot107 = love.graphics.rectangle
		5615	[  0]	KSTR 	109		307	; slot109 = "fill"
		5616	[  0]	MOV  	110		63	; slot110 = uv5"unknown"
		5617	[  0]	MOV  	111		84	; slot111 = uv5"unknown"
		5618	[  0]	MOV  	112		64	; slot112 = math.max
		5619	[  0]	MOV  	113		72	; slot113 = math.floor
		5620	[  0]	CALL 	107	1	6	;  = love.graphics.rectangle(uv27"unknown", slot109, uv5"unknown", uv5"unknown", math.max)
		5621	[  0]	KSHORT	107		0	; slot107 = 0
		5622	[  0]	ISGE 	107		92	; if slot107 >= slot92
		5623	[  0]	JMP  	107		28	; 	goto 5652
		5624	[  0]	GGET 	107		424	; slot107 = _env["love"]
		5625	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		5626	[  0]	TGETS	107	107	235	; slot107 = love.graphics.setBlendMode
		5627	[  0]	KSTR 	109		234	; slot109 = "add"
		5628	[  0]	CALL 	107	1	2	;  = love.graphics.setBlendMode(uv27"unknown")
		5629	[  0]	GGET 	107		424	; slot107 = _env["love"]
		5630	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		5631	[  0]	TGETS	107	107	310	; slot107 = love.graphics.setColor
		5632	[  0]	KSHORT	109		1	; slot109 = 1
		5633	[  0]	KNUM 	110		20	; slot110 = 0.9
		5634	[  0]	KNUM 	111		6	; slot111 = 0.5
		5635	[  0]	MULVN	112	92	13	; slot112 = slot92 * 0.6
		5636	[  0]	MULVV	112	112	35	; slot112 = slot112 * slot35
		5637	[  0]	CALL 	107	1	5	;  = love.graphics.setColor(uv27"unknown", slot109, slot110, slot111)
		5638	[  0]	GGET 	107		424	; slot107 = _env["love"]
		5639	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		5640	[  0]	TGETS	107	107	308	; slot107 = love.graphics.rectangle
		5641	[  0]	KSTR 	109		307	; slot109 = "fill"
		5642	[  0]	SUBVN	110	63	8	; slot110 = uv5"unknown" - 2
		5643	[  0]	SUBVN	111	84	8	; slot111 = uv5"unknown" - 2
		5644	[  0]	ADDVN	112	64	31	; slot112 = math.max + 4
		5645	[  0]	ADDVN	113	72	31	; slot113 = math.floor + 4
		5646	[  0]	CALL 	107	1	6	;  = love.graphics.rectangle(uv27"unknown", slot109, slot110, slot111, slot112)
		5647	[  0]	GGET 	107		424	; slot107 = _env["love"]
		5648	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		5649	[  0]	TGETS	107	107	235	; slot107 = love.graphics.setBlendMode
		5650	[  0]	KSTR 	109		231	; slot109 = "alpha"
		5651	[  0]	CALL 	107	1	2	;  = love.graphics.setBlendMode(uv27"unknown")
		5652	[  0]	UGET 	107		1	; slot107 = uv1"unknwon"
		5653	[  0]	TGETS	107	107	417	; slot107 = uv1"unknown".blinkSlot
		5654	[  0]	ISNEV	107		83	; if uv1"unknown".blinkSlot ~= slot83
		5655	[  0]	JMP  	107		61	; 	goto 5717
		5656	[  0]	UGET 	107		1	; slot107 = uv1"unknwon"
		5657	[  0]	TGETS	107	107	418	; slot107 = uv1"unknown".blinkUnit
		5658	[  0]	ISNEV	 11		107	; if uv1"unknown".lastUnit ~= uv1"unknown".blinkUnit
		5659	[  0]	JMP  	107		57	; 	goto 5717
		5660	[  0]	GGET 	107		398	; slot107 = _env["math"]
		5661	[  0]	TGETS	107	107	396	; slot107 = math.abs
		5662	[  0]	UGET 	109		1	; slot109 = uv1"unknwon"
		5663	[  0]	TGETS	109	109	384	; slot109 = uv1"unknown".x
		5664	[  0]	SUBVV	109	109	20	; slot109 = uv1"unknown".x - slot20
		5665	[  0]	CALL 	107	2	2	; slot107 = math.abs(uv27"unknown")
		5666	[  0]	KSHORT	108		2	; slot108 = 2
		5667	[  0]	ISLT 	108		107	; if slot108 < math.abs
		5668	[  0]	JMP  	107		2	; 	goto 5671
		5669	[  0]	KPRI 	107		1	; slot107 = false
		5670	[  0]	JMP  	108		1	; 	goto 5672
		5671	[  0]	KPRI 	107		2	; slot107 = true
		5672	[  0]	ISF  	   		107	; if not slot107
		5673	[  0]	JMP  	108		43	; 	goto 5717
		5674	[  0]	KSHORT	108		8	; slot108 = 8
		5675	[  0]	KNUM 	109		15	; slot109 = 0.3
		5676	[  0]	UGET 	110		1	; slot110 = uv1"unknwon"
		5677	[  0]	TGETS	110	110	419	; slot110 = uv1"unknown".blinkTimer
		5678	[  0]	KSHORT	111		0	; slot111 = 0
		5679	[  0]	ISGE 	111		110	; if slot111 >= uv1"unknown".blinkTimer
		5680	[  0]	JMP  	110		2	; 	goto 5683
		5681	[  0]	KSHORT	108		15	; slot108 = 15
		5682	[  0]	KNUM 	109		6	; slot109 = 0.5
		5683	[  0]	GGET 	110		424	; slot110 = _env["love"]
		5684	[  0]	TGETS	110	110	343	; slot110 = love.graphics
		5685	[  0]	TGETS	110	110	235	; slot110 = love.graphics.setBlendMode
		5686	[  0]	KSTR 	112		234	; slot112 = "add"
		5687	[  0]	CALL 	110	1	2	;  = love.graphics.setBlendMode(slot111)
		5688	[  0]	GGET 	110		398	; slot110 = _env["math"]
		5689	[  0]	TGETS	110	110	282	; slot110 = math.sin
		5690	[  0]	MULVV	112	6	108	; slot112 = slot6 * slot108
		5691	[  0]	CALL 	110	2	2	; slot110 = math.sin(slot111)
		5692	[  0]	MULNV	110	110	6	; slot110 = 0.5 * math.sin
		5693	[  0]	ADDNV	110	110	6	; slot110 = 0.5 + slot110
		5694	[  0]	MULVV	110	110	109	; slot110 = slot110 * slot109
		5695	[  0]	GGET 	111		424	; slot111 = _env["love"]
		5696	[  0]	TGETS	111	111	343	; slot111 = love.graphics
		5697	[  0]	TGETS	111	111	310	; slot111 = love.graphics.setColor
		5698	[  0]	KSHORT	113		1	; slot113 = 1
		5699	[  0]	KNUM 	114		20	; slot114 = 0.9
		5700	[  0]	KNUM 	115		13	; slot115 = 0.6
		5701	[  0]	MULVV	116	110	35	; slot116 = slot110 * slot35
		5702	[  0]	CALL 	111	1	5	;  = love.graphics.setColor(slot112, slot113, slot114, slot115)
		5703	[  0]	GGET 	111		424	; slot111 = _env["love"]
		5704	[  0]	TGETS	111	111	343	; slot111 = love.graphics
		5705	[  0]	TGETS	111	111	308	; slot111 = love.graphics.rectangle
		5706	[  0]	KSTR 	113		307	; slot113 = "fill"
		5707	[  0]	MOV  	114		63	; slot114 = uv5"unknown"
		5708	[  0]	MOV  	115		84	; slot115 = uv5"unknown"
		5709	[  0]	MOV  	116		64	; slot116 = math.max
		5710	[  0]	MOV  	117		72	; slot117 = math.floor
		5711	[  0]	CALL 	111	1	6	;  = love.graphics.rectangle(slot112, slot113, uv5"unknown", uv5"unknown", math.max)
		5712	[  0]	GGET 	111		424	; slot111 = _env["love"]
		5713	[  0]	TGETS	111	111	343	; slot111 = love.graphics
		5714	[  0]	TGETS	111	111	235	; slot111 = love.graphics.setBlendMode
		5715	[  0]	KSTR 	113		231	; slot113 = "alpha"
		5716	[  0]	CALL 	111	1	2	;  = love.graphics.setBlendMode(slot112)
		5717	[  0]	ISF  	   		102	; if not slot102
		5718	[  0]	JMP  	107		9	; 	goto 5728
		5719	[  0]	GGET 	107		424	; slot107 = _env["love"]
		5720	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		5721	[  0]	TGETS	107	107	310	; slot107 = love.graphics.setColor
		5722	[  0]	KNUM 	109		53	; slot109 = 0.6509803921568628
		5723	[  0]	KNUM 	110		54	; slot110 = 0.37254901960784315
		5724	[  0]	KNUM 	111		55	; slot111 = 0.6039215686274509
		5725	[  0]	MULNV	112	35	10	; slot112 = 1 * slot35
		5726	[  0]	CALL 	107	1	5	;  = love.graphics.setColor(slot108, slot109, slot110, slot111)
		5727	[  0]	JMP  	107		19	; 	goto 5747
		5728	[  0]	ISF  	   		103	; if not slot103
		5729	[  0]	JMP  	107		9	; 	goto 5739
		5730	[  0]	GGET 	107		424	; slot107 = _env["love"]
		5731	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		5732	[  0]	TGETS	107	107	310	; slot107 = love.graphics.setColor
		5733	[  0]	KNUM 	109		56	; slot109 = 0.2901960784313726
		5734	[  0]	KNUM 	110		57	; slot110 = 0.5568627450980392
		5735	[  0]	KNUM 	111		58	; slot111 = 0.34901960784313724
		5736	[  0]	MULNV	112	35	10	; slot112 = 1 * slot35
		5737	[  0]	CALL 	107	1	5	;  = love.graphics.setColor(slot108, slot109, slot110, slot111)
		5738	[  0]	JMP  	107		8	; 	goto 5747
		5739	[  0]	GGET 	107		424	; slot107 = _env["love"]
		5740	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		5741	[  0]	TGETS	107	107	310	; slot107 = love.graphics.setColor
		5742	[  0]	KNUM 	109		15	; slot109 = 0.3
		5743	[  0]	KNUM 	110		15	; slot110 = 0.3
		5744	[  0]	KNUM 	111		15	; slot111 = 0.3
		5745	[  0]	MULNV	112	35	10	; slot112 = 1 * slot35
		5746	[  0]	CALL 	107	1	5	;  = love.graphics.setColor(slot108, slot109, slot110, slot111)
		5747	[  0]	GGET 	107		424	; slot107 = _env["love"]
		5748	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		5749	[  0]	KSTR 	108		61	; slot108 = "getLineWidth"
		5750	[  0]	TGETV	107	107	108	; slot107 = love.graphics[slot108]
		5751	[  0]	CALL 	107	2	1	; slot107 = slot107()
		5752	[  0]	GGET 	108		424	; slot108 = _env["love"]
		5753	[  0]	TGETS	108	108	343	; slot108 = love.graphics
		5754	[  0]	KSTR 	109		175	; slot109 = "setLineWidth"
		5755	[  0]	TGETV	108	108	109	; slot108 = love.graphics[slot109]
		5756	[  0]	KSHORT	110		1	; slot110 = 1
		5757	[  0]	CALL 	108	1	2	;  = slot108(slot109)
		5758	[  0]	GGET 	108		424	; slot108 = _env["love"]
		5759	[  0]	TGETS	108	108	343	; slot108 = love.graphics
		5760	[  0]	TGETS	108	108	308	; slot108 = love.graphics.rectangle
		5761	[  0]	KSTR 	110		306	; slot110 = "line"
		5762	[  0]	ADDVN	111	63	6	; slot111 = uv5"unknown" + 0.5
		5763	[  0]	ADDVN	112	84	6	; slot112 = uv5"unknown" + 0.5
		5764	[  0]	SUBVN	113	64	10	; slot113 = math.max - 1
		5765	[  0]	SUBVN	114	72	10	; slot114 = math.floor - 1
		5766	[  0]	CALL 	108	1	6	;  = love.graphics.rectangle(slot109, slot110, slot111, slot112, slot113)
		5767	[  0]	GGET 	108		424	; slot108 = _env["love"]
		5768	[  0]	TGETS	108	108	343	; slot108 = love.graphics
		5769	[  0]	KSTR 	109		175	; slot109 = "setLineWidth"
		5770	[  0]	TGETV	108	108	109	; slot108 = love.graphics[slot109]
		5771	[  0]	MOV  	110		107	; slot110 = slot107
		5772	[  0]	CALL 	108	1	2	;  = slot108(slot109)
		5773	[  0]	ISGT 	 83		51	; if slot83 > math.max
		5774	[  0]	JMP  	101		1529	; 	goto 7304
		5775	[  0]	ISF  	   		85	; if not slot85
		5776	[  0]	JMP  	101		1070	; 	goto 6847
		5777	[  0]	KSTR 	101		123	; slot101 = "_isPrediction"
		5778	[  0]	TGETV	101	85	101	; slot101 = slot85[slot101]
		5779	[  0]	ISF  	   		101	; if not slot101
		5780	[  0]	JMP  	102		1066	; 	goto 6847
		5781	[  0]	TGETV	101	52	83	; slot101 = slot52[slot83]
		5782	[  0]	MOV  	102		85	; slot102 = slot85
		5783	[  0]	GGET 	103		424	; slot103 = _env["love"]
		5784	[  0]	TGETS	103	103	423	; slot103 = love.timer
		5785	[  0]	TGETS	103	103	422	; slot103 = love.timer.getTime
		5786	[  0]	CALL 	103	2	1	; slot103 = love.timer.getTime()
		5787	[  0]	GGET 	104		398	; slot104 = _env["math"]
		5788	[  0]	TGETS	104	104	396	; slot104 = math.abs
		5789	[  0]	GGET 	106		398	; slot106 = _env["math"]
		5790	[  0]	TGETS	106	106	282	; slot106 = math.sin
		5791	[  0]	MULVN	108	103	25	; slot108 = love.timer.getTime * 6
		5792	[  0]	CALL 	106	0	2	; MULTRES = math.sin(slot107)
		5793	[  0]	CALLM	104	2	0	; slot104 = math.abs(, ...MULTRES)
		5794	[  0]	MULNV	104	104	12	; slot104 = 0.4 * math.abs
		5795	[  0]	ADDNV	104	104	13	; slot104 = 0.6 + slot104
		5796	[  0]	GGET 	105		398	; slot105 = _env["math"]
		5797	[  0]	TGETS	105	105	380	; slot105 = math.floor
		5798	[  0]	MULNV	107	29	31	; slot107 = 4 * slot29
		5799	[  0]	ADDVN	107	107	6	; slot107 = slot107 + 0.5
		5800	[  0]	CALL 	105	2	2	; slot105 = math.floor(math.sin)
		5801	[  0]	GGET 	106		398	; slot106 = _env["math"]
		5802	[  0]	TGETS	106	106	380	; slot106 = math.floor
		5803	[  0]	MULNV	108	29	31	; slot108 = 4 * slot29
		5804	[  0]	ADDVN	108	108	6	; slot108 = slot108 + 0.5
		5805	[  0]	CALL 	106	2	2	; slot106 = math.floor(slot107)
		5806	[  0]	UGET 	107		20	; slot107 = uv20"unknwon"
		5807	[  0]	GGET 	109		270	; slot109 = _env["font"]
		5808	[  0]	GGET 	110		398	; slot110 = _env["math"]
		5809	[  0]	TGETS	110	110	380	; slot110 = math.floor
		5810	[  0]	MULNV	112	29	19	; slot112 = 12 * slot29
		5811	[  0]	ADDVN	112	112	6	; slot112 = slot112 + 0.5
		5812	[  0]	CALL 	110	0	2	; MULTRES = math.floor(slot111)
		5813	[  0]	CALLM	107	2	1	; slot107 = uv20"unknown"(slot108, ...MULTRES)
		5814	[  0]	GGET 	108		398	; slot108 = _env["math"]
		5815	[  0]	TGETS	108	108	313	; slot108 = math.max
		5816	[  0]	KSHORT	110		1	; slot110 = 1
		5817	[  0]	GGET 	111		398	; slot111 = _env["math"]
		5818	[  0]	TGETS	111	111	380	; slot111 = math.floor
		5819	[  0]	MULNV	113	29	8	; slot113 = 2 * slot29
		5820	[  0]	ADDVV	113	107	113	; slot113 = uv20"unknown" + slot113
		5821	[  0]	ADDVN	113	113	6	; slot113 = slot113 + 0.5
		5822	[  0]	CALL 	111	0	2	; MULTRES = math.floor(slot112)
		5823	[  0]	CALLM	108	2	1	; slot108 = math.max(font, ...MULTRES)
		5824	[  0]	GGET 	109		398	; slot109 = _env["math"]
		5825	[  0]	TGETS	109	109	313	; slot109 = math.max
		5826	[  0]	KSHORT	111		1	; slot111 = 1
		5827	[  0]	GGET 	112		398	; slot112 = _env["math"]
		5828	[  0]	TGETS	112	112	313	; slot112 = math.max
		5829	[  0]	KSHORT	114		1	; slot114 = 1
		5830	[  0]	GGET 	115		398	; slot115 = _env["math"]
		5831	[  0]	TGETS	115	115	380	; slot115 = math.floor
		5832	[  0]	MULNV	117	29	59	; slot117 = 5 * slot29
		5833	[  0]	ADDVN	117	117	6	; slot117 = slot117 + 0.5
		5834	[  0]	CALL 	115	0	2	; MULTRES = math.floor(math.max)
		5835	[  0]	CALLM	112	2	1	; slot112 = math.max(slot113, ...MULTRES)
		5836	[  0]	ADDVV	112	107	112	; slot112 = uv20"unknown" + math.max
		5837	[  0]	CALL 	109	2	3	; slot109 = math.max(slot110, slot111)
		5838	[  0]	GGET 	110		398	; slot110 = _env["math"]
		5839	[  0]	TGETS	110	110	380	; slot110 = math.floor
		5840	[  0]	MULVN	112	105	8	; slot112 = math.floor * 2
		5841	[  0]	SUBVV	112	64	112	; slot112 = math.max - slot112
		5842	[  0]	SUBVV	112	112	106	; slot112 = slot112 - math.floor
		5843	[  0]	DIVVN	112	112	8	; slot112 = slot112 / 2
		5844	[  0]	CALL 	110	2	2	; slot110 = math.floor(slot111)
		5845	[  0]	KSHORT	111		10	; slot111 = 10
		5846	[  0]	ISGE 	110		111	; if math.floor >= slot111
		5847	[  0]	JMP  	111		1	; 	goto 5849
		5848	[  0]	KSHORT	110		10	; slot110 = 10
		5849	[  0]	ADDVV	111	63	105	; slot111 = uv5"unknown" + math.floor
		5850	[  0]	ADDVV	112	111	110	; slot112 = slot111 + slot110
		5851	[  0]	ADDVV	112	112	106	; slot112 = slot112 + math.floor
		5852	[  0]	GGET 	113		398	; slot113 = _env["math"]
		5853	[  0]	TGETS	113	113	380	; slot113 = math.floor
		5854	[  0]	MULNV	115	29	60	; slot115 = 18 * slot29
		5855	[  0]	ADDVN	115	115	6	; slot115 = slot115 + 0.5
		5856	[  0]	CALL 	113	2	2	; slot113 = math.floor(slot114)
		5857	[  0]	GGET 	114		398	; slot114 = _env["math"]
		5858	[  0]	TGETS	114	114	380	; slot114 = math.floor
		5859	[  0]	GGET 	116		398	; slot116 = _env["math"]
		5860	[  0]	TGETS	116	116	380	; slot116 = math.floor
		5861	[  0]	MULNV	118	29	5	; slot118 = 8 * slot29
		5862	[  0]	ADDVN	118	118	6	; slot118 = slot118 + 0.5
		5863	[  0]	CALL 	116	2	2	; slot116 = math.floor(slot117)
		5864	[  0]	SUBVV	116	72	116	; slot116 = math.floor - math.floor
		5865	[  0]	CALL 	114	2	2	; slot114 = math.floor(slot115)
		5866	[  0]	ISGE 	114		113	; if math.floor >= math.floor
		5867	[  0]	JMP  	115		1	; 	goto 5869
		5868	[  0]	MOV  	113		114	; slot113 = math.floor
		5869	[  0]	KSHORT	115		10	; slot115 = 10
		5870	[  0]	ISGE 	113		115	; if math.floor >= slot115
		5871	[  0]	JMP  	115		1	; 	goto 5873
		5872	[  0]	KSHORT	113		10	; slot113 = 10
		5873	[  0]	GGET 	115		398	; slot115 = _env["math"]
		5874	[  0]	TGETS	115	115	380	; slot115 = math.floor
		5875	[  0]	MULNV	117	29	31	; slot117 = 4 * slot29
		5876	[  0]	ADDVN	117	117	6	; slot117 = slot117 + 0.5
		5877	[  0]	CALL 	115	2	2	; slot115 = math.floor(slot116)
		5878	[  0]	ADDVV	115	84	115	; slot115 = uv5"unknown" + math.floor
		5879	[  0]	MOV  	116		115	; slot116 = slot115
		5880	[  0]	ADDVV	117	116	108	; slot117 = slot116 + math.max
		5881	[  0]	GGET 	118		398	; slot118 = _env["math"]
		5882	[  0]	TGETS	118	118	380	; slot118 = math.floor
		5883	[  0]	MULNV	120	29	31	; slot120 = 4 * slot29
		5884	[  0]	ADDVN	120	120	6	; slot120 = slot120 + 0.5
		5885	[  0]	CALL 	118	2	2	; slot118 = math.floor(slot119)
		5886	[  0]	ADDVV	118	113	118	; slot118 = slot113 + math.floor
		5887	[  0]	SUBVV	118	110	118	; slot118 = slot110 - slot118
		5888	[  0]	KSHORT	119		10	; slot119 = 10
		5889	[  0]	ISGE 	118		119	; if slot118 >= slot119
		5890	[  0]	JMP  	119		1	; 	goto 5892
		5891	[  0]	KSHORT	118		10	; slot118 = 10
		5892	[  0]	GGET 	119		398	; slot119 = _env["math"]
		5893	[  0]	TGETS	119	119	380	; slot119 = math.floor
		5894	[  0]	MULNV	121	29	61	; slot121 = 90 * slot29
		5895	[  0]	ADDVN	121	121	6	; slot121 = slot121 + 0.5
		5896	[  0]	CALL 	119	2	2	; slot119 = math.floor(slot120)
		5897	[  0]	ISLT 	118		119	; if slot118 < math.floor
		5898	[  0]	JMP  	120		2	; 	goto 5901
		5899	[  0]	KPRI 	120		1	; slot120 = false
		5900	[  0]	JMP  	121		1	; 	goto 5902
		5901	[  0]	KPRI 	120		2	; slot120 = true
		5902	[  0]	ISF  	   		120	; if not slot120
		5903	[  0]	JMP  	121		348	; 	goto 6252
		5904	[  0]	GGET 	121		398	; slot121 = _env["math"]
		5905	[  0]	TGETS	121	121	380	; slot121 = math.floor
		5906	[  0]	MULNV	123	29	25	; slot123 = 6 * slot29
		5907	[  0]	ADDVN	123	123	6	; slot123 = slot123 + 0.5
		5908	[  0]	CALL 	121	2	2	; slot121 = math.floor(slot122)
		5909	[  0]	GGET 	122		398	; slot122 = _env["math"]
		5910	[  0]	TGETS	122	122	380	; slot122 = math.floor
		5911	[  0]	MULNV	124	29	25	; slot124 = 6 * slot29
		5912	[  0]	ADDVN	124	124	6	; slot124 = slot124 + 0.5
		5913	[  0]	CALL 	122	2	2	; slot122 = math.floor(slot123)
		5914	[  0]	GGET 	123		398	; slot123 = _env["math"]
		5915	[  0]	TGETS	123	123	380	; slot123 = math.floor
		5916	[  0]	MULVN	125	122	8	; slot125 = math.floor * 2
		5917	[  0]	SUBVV	125	72	125	; slot125 = math.floor - slot125
		5918	[  0]	SUBVV	125	125	121	; slot125 = slot125 - math.floor
		5919	[  0]	DIVVN	125	125	8	; slot125 = slot125 / 2
		5920	[  0]	CALL 	123	2	2	; slot123 = math.floor(slot124)
		5921	[  0]	GGET 	124		398	; slot124 = _env["math"]
		5922	[  0]	TGETS	124	124	380	; slot124 = math.floor
		5923	[  0]	MULNV	126	29	62	; slot126 = 14 * slot29
		5924	[  0]	ADDVN	126	126	6	; slot126 = slot126 + 0.5
		5925	[  0]	CALL 	124	2	2	; slot124 = math.floor(slot125)
		5926	[  0]	ISGE 	123		124	; if math.floor >= math.floor
		5927	[  0]	JMP  	124		6	; 	goto 5934
		5928	[  0]	GGET 	124		398	; slot124 = _env["math"]
		5929	[  0]	TGETS	124	124	380	; slot124 = math.floor
		5930	[  0]	MULNV	126	29	62	; slot126 = 14 * slot29
		5931	[  0]	ADDVN	126	126	6	; slot126 = slot126 + 0.5
		5932	[  0]	CALL 	124	2	2	; slot124 = math.floor(slot125)
		5933	[  0]	MOV  	123		124	; slot123 = math.floor
		5934	[  0]	ADDVV	124	84	122	; slot124 = uv5"unknown" + math.floor
		5935	[  0]	ADDVV	125	124	123	; slot125 = slot124 + math.floor
		5936	[  0]	ADDVV	125	125	121	; slot125 = slot125 + math.floor
		5937	[  0]	GGET 	126		398	; slot126 = _env["math"]
		5938	[  0]	TGETS	126	126	221	; slot126 = math.min
		5939	[  0]	MOV  	128		113	; slot128 = slot113
		5940	[  0]	MOV  	129		123	; slot129 = math.floor
		5941	[  0]	CALL 	126	2	3	; slot126 = math.min(slot127, slot128)
		5942	[  0]	MOV  	127		124	; slot127 = slot124
		5943	[  0]	MOV  	128		125	; slot128 = slot125
		5944	[  0]	GGET 	129		424	; slot129 = _env["love"]
		5945	[  0]	TGETS	129	129	343	; slot129 = love.graphics
		5946	[  0]	KSTR 	130		61	; slot130 = "getLineWidth"
		5947	[  0]	TGETV	129	129	130	; slot129 = love.graphics[slot130]
		5948	[  0]	CALL 	129	2	1	; slot129 = slot129()
		5949	[  0]	GGET 	130		424	; slot130 = _env["love"]
		5950	[  0]	TGETS	130	130	343	; slot130 = love.graphics
		5951	[  0]	KSTR 	131		175	; slot131 = "setLineWidth"
		5952	[  0]	TGETV	130	130	131	; slot130 = love.graphics[slot131]
		5953	[  0]	KSHORT	132		1	; slot132 = 1
		5954	[  0]	CALL 	130	1	2	;  = slot130(slot131)
		5955	[  0]	GGET 	130		424	; slot130 = _env["love"]
		5956	[  0]	TGETS	130	130	343	; slot130 = love.graphics
		5957	[  0]	TGETS	130	130	310	; slot130 = love.graphics.setColor
		5958	[  0]	KNUM 	132		21	; slot132 = 0.25
		5959	[  0]	KNUM 	133		21	; slot133 = 0.25
		5960	[  0]	KNUM 	134		21	; slot134 = 0.25
		5961	[  0]	MULNV	135	35	10	; slot135 = 1 * slot35
		5962	[  0]	CALL 	130	1	5	;  = love.graphics.setColor(slot131, slot132, slot133, slot134)
		5963	[  0]	ADDVV	130	124	123	; slot130 = slot124 + math.floor
		5964	[  0]	GGET 	131		398	; slot131 = _env["math"]
		5965	[  0]	TGETS	131	131	380	; slot131 = math.floor
		5966	[  0]	DIVVN	133	121	8	; slot133 = math.floor / 2
		5967	[  0]	CALL 	131	2	2	; slot131 = math.floor(slot132)
		5968	[  0]	ADDVV	130	130	131	; slot130 = slot130 + math.floor
		5969	[  0]	GGET 	131		424	; slot131 = _env["love"]
		5970	[  0]	TGETS	131	131	343	; slot131 = love.graphics
		5971	[  0]	TGETS	131	131	306	; slot131 = love.graphics.line
		5972	[  0]	ADDVN	133	63	8	; slot133 = uv5"unknown" + 2
		5973	[  0]	ADDVN	134	130	6	; slot134 = slot130 + 0.5
		5974	[  0]	ADDVV	135	63	64	; slot135 = uv5"unknown" + math.max
		5975	[  0]	SUBVN	135	135	8	; slot135 = slot135 - 2
		5976	[  0]	ADDVN	136	130	6	; slot136 = slot130 + 0.5
		5977	[  0]	CALL 	131	1	5	;  = love.graphics.line(slot132, slot133, slot134, slot135)
		5978	[  0]	GGET 	131		424	; slot131 = _env["love"]
		5979	[  0]	TGETS	131	131	343	; slot131 = love.graphics
		5980	[  0]	KSTR 	132		175	; slot132 = "setLineWidth"
		5981	[  0]	TGETV	131	131	132	; slot131 = love.graphics[slot132]
		5982	[  0]	MOV  	133		129	; slot133 = slot129
		5983	[  0]	CALL 	131	1	2	;  = slot131(slot132)
		5984	[  0]	ADDVV	129	63	105	; slot129 = uv5"unknown" + math.floor
		5985	[  0]	ADDVV	129	129	126	; slot129 = slot129 + math.min
		5986	[  0]	GGET 	130		398	; slot130 = _env["math"]
		5987	[  0]	TGETS	130	130	380	; slot130 = math.floor
		5988	[  0]	MULNV	132	29	31	; slot132 = 4 * slot29
		5989	[  0]	ADDVN	132	132	6	; slot132 = slot132 + 0.5
		5990	[  0]	CALL 	130	2	2	; slot130 = math.floor(slot131)
		5991	[  0]	ADDVV	129	129	130	; slot129 = slot129 + math.floor
		5992	[  0]	ADDVV	130	63	64	; slot130 = uv5"unknown" + math.max
		5993	[  0]	SUBVV	130	130	105	; slot130 = slot130 - math.floor
		5994	[  0]	SUBVV	130	130	129	; slot130 = slot130 - slot129
		5995	[  0]	KSHORT	131		10	; slot131 = 10
		5996	[  0]	ISGE 	130		131	; if slot130 >= slot131
		5997	[  0]	JMP  	131		1	; 	goto 5999
		5998	[  0]	KSHORT	130		10	; slot130 = 10
		5999	[  0]	UGET 	131		31	; slot131 = uv31"unknwon"
		6000	[  0]	SUBVV	133	123	108	; slot133 = math.floor - math.max
		6001	[  0]	MOV  	134		109	; slot134 = math.max
		6002	[  0]	CALL 	131	2	3	; slot131 = uv31"unknown"(slot132, slot133)
		6003	[  0]	UGET 	132		32	; slot132 = uv32"unknwon"
		6004	[  0]	UGET 	134		0	; slot134 = uv0"unknwon"
		6005	[  0]	ISFC 	135		101	; slot135 = slot101; if not slot101
		6006	[  0]	JMP  	135		1	; 	goto 6008
		6007	[  0]	TGETS	135	101	347	; slot135 = slot101.icon
		6008	[  0]	ADDVV	136	63	105	; slot136 = uv5"unknown" + math.floor
		6009	[  0]	MOV  	137		127	; slot137 = slot127
		6010	[  0]	MOV  	138		126	; slot138 = math.min
		6011	[  0]	MULNV	139	35	10	; slot139 = 1 * slot35
		6012	[  0]	CALL 	132	1	7	;  = uv32"unknown"(slot133, uv0"unknown", <unknown table>.icon, slot136, slot137, math.min)
		6013	[  0]	GGET 	132		136	; slot132 = _env["_G"]
		6014	[  0]	KSTR 	133		135	; slot133 = "currentGameLang"
		6015	[  0]	TGETV	132	132	133	; slot132 = _G[slot133]
		6016	[  0]	IST  	   		132	; if slot132
		6017	[  0]	JMP  	133		1	; 	goto 6019
		6018	[  0]	KSTR 	132		134	; slot132 = "ko"
		6019	[  0]	GGET 	133		424	; slot133 = _env["love"]
		6020	[  0]	TGETS	133	133	343	; slot133 = love.graphics
		6021	[  0]	TGETS	133	133	310	; slot133 = love.graphics.setColor
		6022	[  0]	KNUM 	135		13	; slot135 = 0.6
		6023	[  0]	KNUM 	136		13	; slot136 = 0.6
		6024	[  0]	KNUM 	137		13	; slot137 = 0.6
		6025	[  0]	MULNV	138	35	10	; slot138 = 1 * slot35
		6026	[  0]	CALL 	133	1	5	;  = love.graphics.setColor(uv0"unknown", slot135, slot136, slot137)
		6027	[  0]	UGET 	133		0	; slot133 = uv0"unknwon"
		6028	[  0]	KSTR 	134		60	; slot134 = "_printFitted"
		6029	[  0]	TGETV	133	133	134	; slot133 = uv0"unknown"[slot134]
		6030	[  0]	GGET 	135		424	; slot135 = _env["love"]
		6031	[  0]	TGETS	135	135	343	; slot135 = love.graphics
		6032	[  0]	TGETS	135	135	280	; slot135 = love.graphics.getFont
		6033	[  0]	CALL 	135	2	1	; slot135 = love.graphics.getFont()
		6034	[  0]	ISF  	   		101	; if not slot101
		6035	[  0]	JMP  	136		9	; 	goto 6045
		6036	[  0]	UGET 	136		22	; slot136 = uv22"unknwon"
		6037	[  0]	KSTR 	137		59	; slot137 = "getImprintName"
		6038	[  0]	TGETV	136	136	137	; slot136 = uv22"unknown"[slot137]
		6039	[  0]	TGETS	138	101	323	; slot138 = slot101.id
		6040	[  0]	TGETS	139	101	321	; slot139 = slot101.name
		6041	[  0]	MOV  	140		132	; slot140 = slot132
		6042	[  0]	CALL 	136	2	4	; slot136 = slot136(slot137, <unknown table>.id, <unknown table>.name)
		6043	[  0]	IST  	   		136	; if slot136
		6044	[  0]	JMP  	137		1	; 	goto 6046
		6045	[  0]	KSTR 	136		58	; slot136 = "Empty"
		6046	[  0]	MOV  	137		129	; slot137 = slot129
		6047	[  0]	MOV  	138		124	; slot138 = slot124
		6048	[  0]	MOV  	139		130	; slot139 = slot130
		6049	[  0]	CALL 	133	1	6	;  = slot133(slot134, love.graphics.getFont, slot136, slot137, slot138)
		6050	[  0]	GGET 	133		424	; slot133 = _env["love"]
		6051	[  0]	TGETS	133	133	343	; slot133 = love.graphics
		6052	[  0]	TGETS	133	133	310	; slot133 = love.graphics.setColor
		6053	[  0]	KNUM 	135		63	; slot135 = 0.85
		6054	[  0]	KNUM 	136		63	; slot136 = 0.85
		6055	[  0]	KNUM 	137		63	; slot137 = 0.85
		6056	[  0]	MULNV	138	35	10	; slot138 = 1 * slot35
		6057	[  0]	CALL 	133	1	5	;  = love.graphics.setColor(slot134, slot135, slot136, slot137)
		6058	[  0]	ISFC 	133		101	; slot133 = slot101; if not slot101
		6059	[  0]	JMP  	133		6	; 	goto 6066
		6060	[  0]	UGET 	133		0	; slot133 = uv0"unknwon"
		6061	[  0]	KSTR 	134		57	; slot134 = "getShortIconImage"
		6062	[  0]	TGETV	133	133	134	; slot133 = uv0"unknown"[slot134]
		6063	[  0]	UGET 	135		0	; slot135 = uv0"unknwon"
		6064	[  0]	TGETS	136	101	323	; slot136 = slot101.id
		6065	[  0]	CALL 	133	2	3	; slot133 = slot133(slot134, uv0"unknown")
		6066	[  0]	MOV  	134		129	; slot134 = slot129
		6067	[  0]	ISF  	   		133	; if not slot133
		6068	[  0]	JMP  	135		31	; 	goto 6100
		6069	[  0]	MOV  	137		133	; slot137 = slot133
		6070	[  0]	TGETS	135	133	339	; slot135 = slot133.getDimensions
		6071	[  0]	CALL 	135	3	2	; slot135, slot136 = <unknown table>.getDimensions(<unknown table>.id)
		6072	[  0]	GGET 	137		424	; slot137 = _env["love"]
		6073	[  0]	TGETS	137	137	343	; slot137 = love.graphics
		6074	[  0]	TGETS	137	137	310	; slot137 = love.graphics.setColor
		6075	[  0]	KSHORT	139		1	; slot139 = 1
		6076	[  0]	KSHORT	140		1	; slot140 = 1
		6077	[  0]	KSHORT	141		1	; slot141 = 1
		6078	[  0]	MULNV	142	35	10	; slot142 = 1 * slot35
		6079	[  0]	CALL 	137	1	5	;  = love.graphics.setColor(slot138, slot139, slot140, slot141)
		6080	[  0]	GGET 	137		424	; slot137 = _env["love"]
		6081	[  0]	TGETS	137	137	343	; slot137 = love.graphics
		6082	[  0]	TGETS	137	137	309	; slot137 = love.graphics.draw
		6083	[  0]	MOV  	139		133	; slot139 = slot133
		6084	[  0]	MOV  	140		134	; slot140 = slot134
		6085	[  0]	ADDVV	141	124	108	; slot141 = slot124 + math.max
		6086	[  0]	GGET 	142		398	; slot142 = _env["math"]
		6087	[  0]	TGETS	142	142	380	; slot142 = math.floor
		6088	[  0]	SUBVV	144	109	136	; slot144 = math.max - <unknown table>.id
		6089	[  0]	DIVVN	144	144	8	; slot144 = slot144 / 2
		6090	[  0]	CALL 	142	2	2	; slot142 = math.floor(slot143)
		6091	[  0]	ADDVV	141	141	142	; slot141 = slot141 + math.floor
		6092	[  0]	CALL 	137	1	4	;  = love.graphics.draw(slot138, slot139, slot140)
		6093	[  0]	ADDVV	137	134	135	; slot137 = slot134 + <unknown table>.getDimensions
		6094	[  0]	GGET 	138		398	; slot138 = _env["math"]
		6095	[  0]	TGETS	138	138	380	; slot138 = math.floor
		6096	[  0]	MULNV	140	29	8	; slot140 = 2 * slot29
		6097	[  0]	ADDVN	140	140	6	; slot140 = slot140 + 0.5
		6098	[  0]	CALL 	138	2	2	; slot138 = math.floor(slot139)
		6099	[  0]	ADDVV	134	137	138	; slot134 = slot137 + math.floor
		6100	[  0]	GGET 	135		424	; slot135 = _env["love"]
		6101	[  0]	TGETS	135	135	343	; slot135 = love.graphics
		6102	[  0]	TGETS	135	135	310	; slot135 = love.graphics.setColor
		6103	[  0]	KNUM 	137		63	; slot137 = 0.85
		6104	[  0]	KNUM 	138		63	; slot138 = 0.85
		6105	[  0]	KNUM 	139		63	; slot139 = 0.85
		6106	[  0]	MULNV	140	35	10	; slot140 = 1 * slot35
		6107	[  0]	CALL 	135	1	5	;  = love.graphics.setColor(<unknown table>.id, slot137, slot138, slot139)
		6108	[  0]	UGET 	135		33	; slot135 = uv33"unknwon"
		6109	[  0]	GGET 	137		270	; slot137 = _env["font"]
		6110	[  0]	ISF  	   		101	; if not slot101
		6111	[  0]	JMP  	138		10	; 	goto 6122
		6112	[  0]	UGET 	138		22	; slot138 = uv22"unknwon"
		6113	[  0]	KSTR 	139		56	; slot139 = "getImprintShortDesc"
		6114	[  0]	TGETV	138	138	139	; slot138 = uv22"unknown"[slot139]
		6115	[  0]	TGETS	140	101	323	; slot140 = slot101.id
		6116	[  0]	KSTR 	141		55	; slot141 = "shortDesc"
		6117	[  0]	TGETV	141	101	141	; slot141 = slot101[slot141]
		6118	[  0]	MOV  	142		132	; slot142 = slot132
		6119	[  0]	CALL 	138	2	4	; slot138 = slot138(slot139, <unknown table>.id, slot141)
		6120	[  0]	IST  	   		138	; if slot138
		6121	[  0]	JMP  	139		1	; 	goto 6123
		6122	[  0]	KSTR 	138		346	; slot138 = ""
		6123	[  0]	MOV  	139		134	; slot139 = slot134
		6124	[  0]	ADDVV	140	124	108	; slot140 = slot124 + math.max
		6125	[  0]	SUBVV	141	134	129	; slot141 = slot134 - slot129
		6126	[  0]	SUBVV	141	130	141	; slot141 = slot130 - slot141
		6127	[  0]	MOV  	142		109	; slot142 = math.max
		6128	[  0]	MOV  	143		131	; slot143 = uv31"unknown"
		6129	[  0]	CALL 	135	1	8	;  = uv33"unknown"(<unknown table>.id, font, slot138, slot139, slot140, slot141, math.max)
		6130	[  0]	UGET 	135		32	; slot135 = uv32"unknwon"
		6131	[  0]	UGET 	137		0	; slot137 = uv0"unknwon"
		6132	[  0]	ISFC 	138		102	; slot138 = slot102; if not slot102
		6133	[  0]	JMP  	138		1	; 	goto 6135
		6134	[  0]	TGETS	138	102	347	; slot138 = slot102.icon
		6135	[  0]	ADDVV	139	63	105	; slot139 = uv5"unknown" + math.floor
		6136	[  0]	MOV  	140		128	; slot140 = slot128
		6137	[  0]	MOV  	141		126	; slot141 = math.min
		6138	[  0]	MULNV	142	35	10	; slot142 = 1 * slot35
		6139	[  0]	CALL 	135	1	7	;  = uv32"unknown"(<unknown table>.id, uv0"unknown", <unknown table>.icon, slot139, slot140, math.min)
		6140	[  0]	GGET 	135		424	; slot135 = _env["love"]
		6141	[  0]	TGETS	135	135	343	; slot135 = love.graphics
		6142	[  0]	TGETS	135	135	310	; slot135 = love.graphics.setColor
		6143	[  0]	KNUM 	137		12	; slot137 = 0.4
		6144	[  0]	KSHORT	138		1	; slot138 = 1
		6145	[  0]	KNUM 	139		12	; slot139 = 0.4
		6146	[  0]	MULVV	140	104	35	; slot140 = slot104 * slot35
		6147	[  0]	CALL 	135	1	5	;  = love.graphics.setColor(<unknown table>.id, slot137, slot138, slot139)
		6148	[  0]	UGET 	135		0	; slot135 = uv0"unknwon"
		6149	[  0]	KSTR 	136		60	; slot136 = "_printFitted"
		6150	[  0]	TGETV	135	135	136	; slot135 = uv0"unknown"[slot136]
		6151	[  0]	GGET 	137		424	; slot137 = _env["love"]
		6152	[  0]	TGETS	137	137	343	; slot137 = love.graphics
		6153	[  0]	TGETS	137	137	280	; slot137 = love.graphics.getFont
		6154	[  0]	CALL 	137	2	1	; slot137 = love.graphics.getFont()
		6155	[  0]	ISF  	   		102	; if not slot102
		6156	[  0]	JMP  	138		9	; 	goto 6166
		6157	[  0]	UGET 	138		22	; slot138 = uv22"unknwon"
		6158	[  0]	KSTR 	139		59	; slot139 = "getImprintName"
		6159	[  0]	TGETV	138	138	139	; slot138 = uv22"unknown"[slot139]
		6160	[  0]	TGETS	140	102	323	; slot140 = slot102.id
		6161	[  0]	TGETS	141	102	321	; slot141 = slot102.name
		6162	[  0]	MOV  	142		132	; slot142 = slot132
		6163	[  0]	CALL 	138	2	4	; slot138 = slot138(slot139, <unknown table>.id, <unknown table>.name)
		6164	[  0]	IST  	   		138	; if slot138
		6165	[  0]	JMP  	139		1	; 	goto 6167
		6166	[  0]	KSTR 	138		58	; slot138 = "Empty"
		6167	[  0]	MOV  	139		129	; slot139 = slot129
		6168	[  0]	MOV  	140		125	; slot140 = slot125
		6169	[  0]	MOV  	141		130	; slot141 = slot130
		6170	[  0]	CALL 	135	1	6	;  = slot135(slot136, love.graphics.getFont, slot138, slot139, slot140)
		6171	[  0]	GGET 	135		424	; slot135 = _env["love"]
		6172	[  0]	TGETS	135	135	343	; slot135 = love.graphics
		6173	[  0]	TGETS	135	135	310	; slot135 = love.graphics.setColor
		6174	[  0]	KNUM 	137		20	; slot137 = 0.9
		6175	[  0]	KNUM 	138		20	; slot138 = 0.9
		6176	[  0]	KNUM 	139		20	; slot139 = 0.9
		6177	[  0]	MULNV	140	35	10	; slot140 = 1 * slot35
		6178	[  0]	CALL 	135	1	5	;  = love.graphics.setColor(slot136, slot137, slot138, slot139)
		6179	[  0]	ISFC 	135		102	; slot135 = slot102; if not slot102
		6180	[  0]	JMP  	135		6	; 	goto 6187
		6181	[  0]	UGET 	135		0	; slot135 = uv0"unknwon"
		6182	[  0]	KSTR 	136		57	; slot136 = "getShortIconImage"
		6183	[  0]	TGETV	135	135	136	; slot135 = uv0"unknown"[slot136]
		6184	[  0]	UGET 	137		0	; slot137 = uv0"unknwon"
		6185	[  0]	TGETS	138	102	323	; slot138 = slot102.id
		6186	[  0]	CALL 	135	2	3	; slot135 = slot135(slot136, uv0"unknown")
		6187	[  0]	MOV  	136		129	; slot136 = slot129
		6188	[  0]	ISF  	   		135	; if not slot135
		6189	[  0]	JMP  	137		31	; 	goto 6221
		6190	[  0]	MOV  	139		135	; slot139 = slot135
		6191	[  0]	TGETS	137	135	339	; slot137 = slot135.getDimensions
		6192	[  0]	CALL 	137	3	2	; slot137, slot138 = <unknown table>.getDimensions(<unknown table>.id)
		6193	[  0]	GGET 	139		424	; slot139 = _env["love"]
		6194	[  0]	TGETS	139	139	343	; slot139 = love.graphics
		6195	[  0]	TGETS	139	139	310	; slot139 = love.graphics.setColor
		6196	[  0]	KSHORT	141		1	; slot141 = 1
		6197	[  0]	KSHORT	142		1	; slot142 = 1
		6198	[  0]	KSHORT	143		1	; slot143 = 1
		6199	[  0]	MULNV	144	35	10	; slot144 = 1 * slot35
		6200	[  0]	CALL 	139	1	5	;  = love.graphics.setColor(slot140, slot141, slot142, slot143)
		6201	[  0]	GGET 	139		424	; slot139 = _env["love"]
		6202	[  0]	TGETS	139	139	343	; slot139 = love.graphics
		6203	[  0]	TGETS	139	139	309	; slot139 = love.graphics.draw
		6204	[  0]	MOV  	141		135	; slot141 = slot135
		6205	[  0]	MOV  	142		136	; slot142 = slot136
		6206	[  0]	ADDVV	143	125	108	; slot143 = slot125 + math.max
		6207	[  0]	GGET 	144		398	; slot144 = _env["math"]
		6208	[  0]	TGETS	144	144	380	; slot144 = math.floor
		6209	[  0]	SUBVV	146	109	138	; slot146 = math.max - <unknown table>.id
		6210	[  0]	DIVVN	146	146	8	; slot146 = slot146 / 2
		6211	[  0]	CALL 	144	2	2	; slot144 = math.floor(slot145)
		6212	[  0]	ADDVV	143	143	144	; slot143 = slot143 + math.floor
		6213	[  0]	CALL 	139	1	4	;  = love.graphics.draw(slot140, slot141, slot142)
		6214	[  0]	ADDVV	139	136	137	; slot139 = slot136 + <unknown table>.getDimensions
		6215	[  0]	GGET 	140		398	; slot140 = _env["math"]
		6216	[  0]	TGETS	140	140	380	; slot140 = math.floor
		6217	[  0]	MULNV	142	29	8	; slot142 = 2 * slot29
		6218	[  0]	ADDVN	142	142	6	; slot142 = slot142 + 0.5
		6219	[  0]	CALL 	140	2	2	; slot140 = math.floor(slot141)
		6220	[  0]	ADDVV	136	139	140	; slot136 = slot139 + math.floor
		6221	[  0]	GGET 	137		424	; slot137 = _env["love"]
		6222	[  0]	TGETS	137	137	343	; slot137 = love.graphics
		6223	[  0]	TGETS	137	137	310	; slot137 = love.graphics.setColor
		6224	[  0]	KNUM 	139		20	; slot139 = 0.9
		6225	[  0]	KNUM 	140		20	; slot140 = 0.9
		6226	[  0]	KNUM 	141		20	; slot141 = 0.9
		6227	[  0]	MULNV	142	35	10	; slot142 = 1 * slot35
		6228	[  0]	CALL 	137	1	5	;  = love.graphics.setColor(<unknown table>.id, slot139, slot140, slot141)
		6229	[  0]	UGET 	137		33	; slot137 = uv33"unknwon"
		6230	[  0]	GGET 	139		270	; slot139 = _env["font"]
		6231	[  0]	ISF  	   		102	; if not slot102
		6232	[  0]	JMP  	140		10	; 	goto 6243
		6233	[  0]	UGET 	140		22	; slot140 = uv22"unknwon"
		6234	[  0]	KSTR 	141		56	; slot141 = "getImprintShortDesc"
		6235	[  0]	TGETV	140	140	141	; slot140 = uv22"unknown"[slot141]
		6236	[  0]	TGETS	142	102	323	; slot142 = slot102.id
		6237	[  0]	KSTR 	143		55	; slot143 = "shortDesc"
		6238	[  0]	TGETV	143	102	143	; slot143 = slot102[slot143]
		6239	[  0]	MOV  	144		132	; slot144 = slot132
		6240	[  0]	CALL 	140	2	4	; slot140 = slot140(slot141, <unknown table>.id, slot143)
		6241	[  0]	IST  	   		140	; if slot140
		6242	[  0]	JMP  	141		1	; 	goto 6244
		6243	[  0]	KSTR 	140		346	; slot140 = ""
		6244	[  0]	MOV  	141		136	; slot141 = slot136
		6245	[  0]	ADDVV	142	125	108	; slot142 = slot125 + math.max
		6246	[  0]	SUBVV	143	136	129	; slot143 = slot136 - slot129
		6247	[  0]	SUBVV	143	130	143	; slot143 = slot130 - slot143
		6248	[  0]	MOV  	144		109	; slot144 = math.max
		6249	[  0]	MOV  	145		131	; slot145 = uv31"unknown"
		6250	[  0]	CALL 	137	1	8	;  = uv33"unknown"(<unknown table>.id, font, slot140, slot141, slot142, slot143, math.max)
		6251	[  0]	JMP  	121		315	; 	goto 6567
		6252	[  0]	GGET 	121		424	; slot121 = _env["love"]
		6253	[  0]	TGETS	121	121	343	; slot121 = love.graphics
		6254	[  0]	KSTR 	122		61	; slot122 = "getLineWidth"
		6255	[  0]	TGETV	121	121	122	; slot121 = love.graphics[slot122]
		6256	[  0]	CALL 	121	2	1	; slot121 = slot121()
		6257	[  0]	GGET 	122		424	; slot122 = _env["love"]
		6258	[  0]	TGETS	122	122	343	; slot122 = love.graphics
		6259	[  0]	KSTR 	123		175	; slot123 = "setLineWidth"
		6260	[  0]	TGETV	122	122	123	; slot122 = love.graphics[slot123]
		6261	[  0]	KSHORT	124		1	; slot124 = 1
		6262	[  0]	CALL 	122	1	2	;  = slot122(slot123)
		6263	[  0]	GGET 	122		424	; slot122 = _env["love"]
		6264	[  0]	TGETS	122	122	343	; slot122 = love.graphics
		6265	[  0]	TGETS	122	122	310	; slot122 = love.graphics.setColor
		6266	[  0]	KNUM 	124		21	; slot124 = 0.25
		6267	[  0]	KNUM 	125		21	; slot125 = 0.25
		6268	[  0]	KNUM 	126		21	; slot126 = 0.25
		6269	[  0]	MULNV	127	35	10	; slot127 = 1 * slot35
		6270	[  0]	CALL 	122	1	5	;  = love.graphics.setColor(slot123, slot124, slot125, slot126)
		6271	[  0]	GGET 	122		398	; slot122 = _env["math"]
		6272	[  0]	TGETS	122	122	380	; slot122 = math.floor
		6273	[  0]	DIVVN	124	64	8	; slot124 = math.max / 2
		6274	[  0]	CALL 	122	2	2	; slot122 = math.floor(slot123)
		6275	[  0]	ADDVV	122	63	122	; slot122 = uv5"unknown" + math.floor
		6276	[  0]	GGET 	123		424	; slot123 = _env["love"]
		6277	[  0]	TGETS	123	123	343	; slot123 = love.graphics
		6278	[  0]	TGETS	123	123	306	; slot123 = love.graphics.line
		6279	[  0]	ADDVN	125	122	6	; slot125 = slot122 + 0.5
		6280	[  0]	ADDVN	126	84	8	; slot126 = uv5"unknown" + 2
		6281	[  0]	ADDVN	127	122	6	; slot127 = slot122 + 0.5
		6282	[  0]	ADDVV	128	84	72	; slot128 = uv5"unknown" + math.floor
		6283	[  0]	SUBVN	128	128	8	; slot128 = slot128 - 2
		6284	[  0]	CALL 	123	1	5	;  = love.graphics.line(slot124, slot125, slot126, slot127)
		6285	[  0]	GGET 	123		424	; slot123 = _env["love"]
		6286	[  0]	TGETS	123	123	343	; slot123 = love.graphics
		6287	[  0]	KSTR 	124		175	; slot124 = "setLineWidth"
		6288	[  0]	TGETV	123	123	124	; slot123 = love.graphics[slot124]
		6289	[  0]	MOV  	125		121	; slot125 = slot121
		6290	[  0]	CALL 	123	1	2	;  = slot123(slot124)
		6291	[  0]	UGET 	121		32	; slot121 = uv32"unknwon"
		6292	[  0]	UGET 	123		0	; slot123 = uv0"unknwon"
		6293	[  0]	ISFC 	124		101	; slot124 = slot101; if not slot101
		6294	[  0]	JMP  	124		1	; 	goto 6296
		6295	[  0]	TGETS	124	101	347	; slot124 = slot101.icon
		6296	[  0]	MOV  	125		111	; slot125 = slot111
		6297	[  0]	MOV  	126		115	; slot126 = slot115
		6298	[  0]	MOV  	127		113	; slot127 = slot113
		6299	[  0]	MULNV	128	35	10	; slot128 = 1 * slot35
		6300	[  0]	CALL 	121	1	7	;  = uv32"unknown"(slot122, uv0"unknown", <unknown table>.icon, slot125, slot126, slot127)
		6301	[  0]	ADDVV	121	111	113	; slot121 = slot111 + slot113
		6302	[  0]	GGET 	122		398	; slot122 = _env["math"]
		6303	[  0]	TGETS	122	122	380	; slot122 = math.floor
		6304	[  0]	MULNV	124	29	25	; slot124 = 6 * slot29
		6305	[  0]	ADDVN	124	124	6	; slot124 = slot124 + 0.5
		6306	[  0]	CALL 	122	2	2	; slot122 = math.floor(uv0"unknown")
		6307	[  0]	ADDVV	121	121	122	; slot121 = slot121 + math.floor
		6308	[  0]	GGET 	122		136	; slot122 = _env["_G"]
		6309	[  0]	KSTR 	123		135	; slot123 = "currentGameLang"
		6310	[  0]	TGETV	122	122	123	; slot122 = _G[slot123]
		6311	[  0]	IST  	   		122	; if slot122
		6312	[  0]	JMP  	123		1	; 	goto 6314
		6313	[  0]	KSTR 	122		134	; slot122 = "ko"
		6314	[  0]	ISF  	   		101	; if not slot101
		6315	[  0]	JMP  	123		9	; 	goto 6325
		6316	[  0]	UGET 	123		22	; slot123 = uv22"unknwon"
		6317	[  0]	KSTR 	124		59	; slot124 = "getImprintName"
		6318	[  0]	TGETV	123	123	124	; slot123 = uv22"unknown"[slot124]
		6319	[  0]	TGETS	125	101	323	; slot125 = slot101.id
		6320	[  0]	TGETS	126	101	321	; slot126 = slot101.name
		6321	[  0]	MOV  	127		122	; slot127 = slot122
		6322	[  0]	CALL 	123	2	4	; slot123 = slot123(slot124, <unknown table>.id, <unknown table>.name)
		6323	[  0]	IST  	   		123	; if slot123
		6324	[  0]	JMP  	124		1	; 	goto 6326
		6325	[  0]	KSTR 	123		58	; slot123 = "Empty"
		6326	[  0]	ISF  	   		101	; if not slot101
		6327	[  0]	JMP  	124		10	; 	goto 6338
		6328	[  0]	UGET 	124		22	; slot124 = uv22"unknwon"
		6329	[  0]	KSTR 	125		56	; slot125 = "getImprintShortDesc"
		6330	[  0]	TGETV	124	124	125	; slot124 = uv22"unknown"[slot125]
		6331	[  0]	TGETS	126	101	323	; slot126 = slot101.id
		6332	[  0]	KSTR 	127		55	; slot127 = "shortDesc"
		6333	[  0]	TGETV	127	101	127	; slot127 = slot101[slot127]
		6334	[  0]	MOV  	128		122	; slot128 = slot122
		6335	[  0]	CALL 	124	2	4	; slot124 = slot124(slot125, <unknown table>.id, slot127)
		6336	[  0]	IST  	   		124	; if slot124
		6337	[  0]	JMP  	125		1	; 	goto 6339
		6338	[  0]	KSTR 	124		346	; slot124 = ""
		6339	[  0]	GGET 	125		424	; slot125 = _env["love"]
		6340	[  0]	TGETS	125	125	343	; slot125 = love.graphics
		6341	[  0]	TGETS	125	125	310	; slot125 = love.graphics.setColor
		6342	[  0]	KNUM 	127		13	; slot127 = 0.6
		6343	[  0]	KNUM 	128		13	; slot128 = 0.6
		6344	[  0]	KNUM 	129		13	; slot129 = 0.6
		6345	[  0]	MULNV	130	35	10	; slot130 = 1 * slot35
		6346	[  0]	CALL 	125	1	5	;  = love.graphics.setColor(<unknown table>.id, slot127, slot128, slot129)
		6347	[  0]	UGET 	125		0	; slot125 = uv0"unknwon"
		6348	[  0]	KSTR 	126		60	; slot126 = "_printFitted"
		6349	[  0]	TGETV	125	125	126	; slot125 = uv0"unknown"[slot126]
		6350	[  0]	GGET 	127		424	; slot127 = _env["love"]
		6351	[  0]	TGETS	127	127	343	; slot127 = love.graphics
		6352	[  0]	TGETS	127	127	280	; slot127 = love.graphics.getFont
		6353	[  0]	CALL 	127	2	1	; slot127 = love.graphics.getFont()
		6354	[  0]	MOV  	128		123	; slot128 = slot123
		6355	[  0]	MOV  	129		121	; slot129 = slot121
		6356	[  0]	MOV  	130		116	; slot130 = slot116
		6357	[  0]	MOV  	131		118	; slot131 = slot118
		6358	[  0]	CALL 	125	1	6	;  = slot125(slot126, love.graphics.getFont, slot128, slot129, slot130)
		6359	[  0]	GGET 	125		424	; slot125 = _env["love"]
		6360	[  0]	TGETS	125	125	343	; slot125 = love.graphics
		6361	[  0]	TGETS	125	125	310	; slot125 = love.graphics.setColor
		6362	[  0]	KNUM 	127		63	; slot127 = 0.85
		6363	[  0]	KNUM 	128		63	; slot128 = 0.85
		6364	[  0]	KNUM 	129		63	; slot129 = 0.85
		6365	[  0]	MULNV	130	35	10	; slot130 = 1 * slot35
		6366	[  0]	CALL 	125	1	5	;  = love.graphics.setColor(slot126, slot127, slot128, slot129)
		6367	[  0]	ADDVV	125	84	72	; slot125 = uv5"unknown" + math.floor
		6368	[  0]	SUBVV	125	125	117	; slot125 = slot125 - slot117
		6369	[  0]	GGET 	126		398	; slot126 = _env["math"]
		6370	[  0]	TGETS	126	126	380	; slot126 = math.floor
		6371	[  0]	MULNV	128	29	31	; slot128 = 4 * slot29
		6372	[  0]	ADDVN	128	128	6	; slot128 = slot128 + 0.5
		6373	[  0]	CALL 	126	2	2	; slot126 = math.floor(slot127)
		6374	[  0]	SUBVV	125	125	126	; slot125 = slot125 - math.floor
		6375	[  0]	UGET 	126		31	; slot126 = uv31"unknwon"
		6376	[  0]	MOV  	128		125	; slot128 = slot125
		6377	[  0]	MOV  	129		109	; slot129 = math.max
		6378	[  0]	CALL 	126	2	3	; slot126 = uv31"unknown"(slot127, slot128)
		6379	[  0]	ISFC 	127		101	; slot127 = slot101; if not slot101
		6380	[  0]	JMP  	127		6	; 	goto 6387
		6381	[  0]	UGET 	127		0	; slot127 = uv0"unknwon"
		6382	[  0]	KSTR 	128		57	; slot128 = "getShortIconImage"
		6383	[  0]	TGETV	127	127	128	; slot127 = uv0"unknown"[slot128]
		6384	[  0]	UGET 	129		0	; slot129 = uv0"unknwon"
		6385	[  0]	TGETS	130	101	323	; slot130 = slot101.id
		6386	[  0]	CALL 	127	2	3	; slot127 = slot127(slot128, uv0"unknown")
		6387	[  0]	MOV  	128		121	; slot128 = slot121
		6388	[  0]	ISF  	   		127	; if not slot127
		6389	[  0]	JMP  	129		30	; 	goto 6420
		6390	[  0]	MOV  	131		127	; slot131 = slot127
		6391	[  0]	TGETS	129	127	339	; slot129 = slot127.getDimensions
		6392	[  0]	CALL 	129	3	2	; slot129, slot130 = <unknown table>.getDimensions(<unknown table>.id)
		6393	[  0]	GGET 	131		424	; slot131 = _env["love"]
		6394	[  0]	TGETS	131	131	343	; slot131 = love.graphics
		6395	[  0]	TGETS	131	131	310	; slot131 = love.graphics.setColor
		6396	[  0]	KSHORT	133		1	; slot133 = 1
		6397	[  0]	KSHORT	134		1	; slot134 = 1
		6398	[  0]	KSHORT	135		1	; slot135 = 1
		6399	[  0]	MULNV	136	35	10	; slot136 = 1 * slot35
		6400	[  0]	CALL 	131	1	5	;  = love.graphics.setColor(slot132, slot133, slot134, slot135)
		6401	[  0]	GGET 	131		424	; slot131 = _env["love"]
		6402	[  0]	TGETS	131	131	343	; slot131 = love.graphics
		6403	[  0]	TGETS	131	131	309	; slot131 = love.graphics.draw
		6404	[  0]	MOV  	133		127	; slot133 = slot127
		6405	[  0]	MOV  	134		128	; slot134 = slot128
		6406	[  0]	GGET 	135		398	; slot135 = _env["math"]
		6407	[  0]	TGETS	135	135	380	; slot135 = math.floor
		6408	[  0]	SUBVV	137	109	130	; slot137 = math.max - <unknown table>.id
		6409	[  0]	DIVVN	137	137	8	; slot137 = slot137 / 2
		6410	[  0]	CALL 	135	2	2	; slot135 = math.floor(slot136)
		6411	[  0]	ADDVV	135	117	135	; slot135 = slot117 + math.floor
		6412	[  0]	CALL 	131	1	4	;  = love.graphics.draw(slot132, slot133, slot134)
		6413	[  0]	ADDVV	131	128	129	; slot131 = slot128 + <unknown table>.getDimensions
		6414	[  0]	GGET 	132		398	; slot132 = _env["math"]
		6415	[  0]	TGETS	132	132	380	; slot132 = math.floor
		6416	[  0]	MULNV	134	29	8	; slot134 = 2 * slot29
		6417	[  0]	ADDVN	134	134	6	; slot134 = slot134 + 0.5
		6418	[  0]	CALL 	132	2	2	; slot132 = math.floor(slot133)
		6419	[  0]	ADDVV	128	131	132	; slot128 = slot131 + math.floor
		6420	[  0]	GGET 	129		424	; slot129 = _env["love"]
		6421	[  0]	TGETS	129	129	343	; slot129 = love.graphics
		6422	[  0]	TGETS	129	129	310	; slot129 = love.graphics.setColor
		6423	[  0]	KNUM 	131		63	; slot131 = 0.85
		6424	[  0]	KNUM 	132		63	; slot132 = 0.85
		6425	[  0]	KNUM 	133		63	; slot133 = 0.85
		6426	[  0]	MULNV	134	35	10	; slot134 = 1 * slot35
		6427	[  0]	CALL 	129	1	5	;  = love.graphics.setColor(<unknown table>.id, slot131, slot132, slot133)
		6428	[  0]	UGET 	129		33	; slot129 = uv33"unknwon"
		6429	[  0]	GGET 	131		270	; slot131 = _env["font"]
		6430	[  0]	MOV  	132		124	; slot132 = slot124
		6431	[  0]	MOV  	133		128	; slot133 = slot128
		6432	[  0]	MOV  	134		117	; slot134 = slot117
		6433	[  0]	SUBVV	135	128	121	; slot135 = slot128 - slot121
		6434	[  0]	SUBVV	135	118	135	; slot135 = slot118 - slot135
		6435	[  0]	MOV  	136		109	; slot136 = math.max
		6436	[  0]	MOV  	137		126	; slot137 = uv31"unknown"
		6437	[  0]	CALL 	129	1	8	;  = uv33"unknown"(<unknown table>.id, font, slot132, slot133, slot134, slot135, math.max)
		6438	[  0]	UGET 	129		32	; slot129 = uv32"unknwon"
		6439	[  0]	UGET 	131		0	; slot131 = uv0"unknwon"
		6440	[  0]	ISFC 	132		102	; slot132 = slot102; if not slot102
		6441	[  0]	JMP  	132		1	; 	goto 6443
		6442	[  0]	TGETS	132	102	347	; slot132 = slot102.icon
		6443	[  0]	MOV  	133		112	; slot133 = slot112
		6444	[  0]	MOV  	134		115	; slot134 = slot115
		6445	[  0]	MOV  	135		113	; slot135 = slot113
		6446	[  0]	MULNV	136	35	10	; slot136 = 1 * slot35
		6447	[  0]	CALL 	129	1	7	;  = uv32"unknown"(<unknown table>.id, uv0"unknown", <unknown table>.icon, slot133, slot134, slot135)
		6448	[  0]	ADDVV	129	112	113	; slot129 = slot112 + slot113
		6449	[  0]	GGET 	130		398	; slot130 = _env["math"]
		6450	[  0]	TGETS	130	130	380	; slot130 = math.floor
		6451	[  0]	MULNV	132	29	25	; slot132 = 6 * slot29
		6452	[  0]	ADDVN	132	132	6	; slot132 = slot132 + 0.5
		6453	[  0]	CALL 	130	2	2	; slot130 = math.floor(uv0"unknown")
		6454	[  0]	ADDVV	129	129	130	; slot129 = slot129 + math.floor
		6455	[  0]	ISF  	   		102	; if not slot102
		6456	[  0]	JMP  	130		9	; 	goto 6466
		6457	[  0]	UGET 	130		22	; slot130 = uv22"unknwon"
		6458	[  0]	KSTR 	131		59	; slot131 = "getImprintName"
		6459	[  0]	TGETV	130	130	131	; slot130 = uv22"unknown"[slot131]
		6460	[  0]	TGETS	132	102	323	; slot132 = slot102.id
		6461	[  0]	TGETS	133	102	321	; slot133 = slot102.name
		6462	[  0]	MOV  	134		122	; slot134 = slot122
		6463	[  0]	CALL 	130	2	4	; slot130 = slot130(slot131, <unknown table>.id, <unknown table>.name)
		6464	[  0]	IST  	   		130	; if slot130
		6465	[  0]	JMP  	131		1	; 	goto 6467
		6466	[  0]	KSTR 	130		58	; slot130 = "Empty"
		6467	[  0]	ISF  	   		102	; if not slot102
		6468	[  0]	JMP  	131		10	; 	goto 6479
		6469	[  0]	UGET 	131		22	; slot131 = uv22"unknwon"
		6470	[  0]	KSTR 	132		56	; slot132 = "getImprintShortDesc"
		6471	[  0]	TGETV	131	131	132	; slot131 = uv22"unknown"[slot132]
		6472	[  0]	TGETS	133	102	323	; slot133 = slot102.id
		6473	[  0]	KSTR 	134		55	; slot134 = "shortDesc"
		6474	[  0]	TGETV	134	102	134	; slot134 = slot102[slot134]
		6475	[  0]	MOV  	135		122	; slot135 = slot122
		6476	[  0]	CALL 	131	2	4	; slot131 = slot131(slot132, <unknown table>.id, slot134)
		6477	[  0]	IST  	   		131	; if slot131
		6478	[  0]	JMP  	132		1	; 	goto 6480
		6479	[  0]	KSTR 	131		346	; slot131 = ""
		6480	[  0]	GGET 	132		424	; slot132 = _env["love"]
		6481	[  0]	TGETS	132	132	343	; slot132 = love.graphics
		6482	[  0]	TGETS	132	132	310	; slot132 = love.graphics.setColor
		6483	[  0]	KNUM 	134		12	; slot134 = 0.4
		6484	[  0]	KSHORT	135		1	; slot135 = 1
		6485	[  0]	KNUM 	136		12	; slot136 = 0.4
		6486	[  0]	MULVV	137	104	35	; slot137 = slot104 * slot35
		6487	[  0]	CALL 	132	1	5	;  = love.graphics.setColor(<unknown table>.id, slot134, slot135, slot136)
		6488	[  0]	UGET 	132		0	; slot132 = uv0"unknwon"
		6489	[  0]	KSTR 	133		60	; slot133 = "_printFitted"
		6490	[  0]	TGETV	132	132	133	; slot132 = uv0"unknown"[slot133]
		6491	[  0]	GGET 	134		424	; slot134 = _env["love"]
		6492	[  0]	TGETS	134	134	343	; slot134 = love.graphics
		6493	[  0]	TGETS	134	134	280	; slot134 = love.graphics.getFont
		6494	[  0]	CALL 	134	2	1	; slot134 = love.graphics.getFont()
		6495	[  0]	MOV  	135		130	; slot135 = slot130
		6496	[  0]	MOV  	136		129	; slot136 = slot129
		6497	[  0]	MOV  	137		116	; slot137 = slot116
		6498	[  0]	MOV  	138		118	; slot138 = slot118
		6499	[  0]	CALL 	132	1	6	;  = slot132(slot133, love.graphics.getFont, slot135, slot136, slot137)
		6500	[  0]	GGET 	132		424	; slot132 = _env["love"]
		6501	[  0]	TGETS	132	132	343	; slot132 = love.graphics
		6502	[  0]	TGETS	132	132	310	; slot132 = love.graphics.setColor
		6503	[  0]	KNUM 	134		20	; slot134 = 0.9
		6504	[  0]	KNUM 	135		20	; slot135 = 0.9
		6505	[  0]	KNUM 	136		20	; slot136 = 0.9
		6506	[  0]	MULNV	137	35	10	; slot137 = 1 * slot35
		6507	[  0]	CALL 	132	1	5	;  = love.graphics.setColor(slot133, slot134, slot135, slot136)
		6508	[  0]	ISFC 	132		102	; slot132 = slot102; if not slot102
		6509	[  0]	JMP  	132		6	; 	goto 6516
		6510	[  0]	UGET 	132		0	; slot132 = uv0"unknwon"
		6511	[  0]	KSTR 	133		57	; slot133 = "getShortIconImage"
		6512	[  0]	TGETV	132	132	133	; slot132 = uv0"unknown"[slot133]
		6513	[  0]	UGET 	134		0	; slot134 = uv0"unknwon"
		6514	[  0]	TGETS	135	102	323	; slot135 = slot102.id
		6515	[  0]	CALL 	132	2	3	; slot132 = slot132(slot133, uv0"unknown")
		6516	[  0]	MOV  	133		129	; slot133 = slot129
		6517	[  0]	ISF  	   		132	; if not slot132
		6518	[  0]	JMP  	134		30	; 	goto 6549
		6519	[  0]	MOV  	136		132	; slot136 = slot132
		6520	[  0]	TGETS	134	132	339	; slot134 = slot132.getDimensions
		6521	[  0]	CALL 	134	3	2	; slot134, slot135 = <unknown table>.getDimensions(<unknown table>.id)
		6522	[  0]	GGET 	136		424	; slot136 = _env["love"]
		6523	[  0]	TGETS	136	136	343	; slot136 = love.graphics
		6524	[  0]	TGETS	136	136	310	; slot136 = love.graphics.setColor
		6525	[  0]	KSHORT	138		1	; slot138 = 1
		6526	[  0]	KSHORT	139		1	; slot139 = 1
		6527	[  0]	KSHORT	140		1	; slot140 = 1
		6528	[  0]	MULNV	141	35	10	; slot141 = 1 * slot35
		6529	[  0]	CALL 	136	1	5	;  = love.graphics.setColor(slot137, slot138, slot139, slot140)
		6530	[  0]	GGET 	136		424	; slot136 = _env["love"]
		6531	[  0]	TGETS	136	136	343	; slot136 = love.graphics
		6532	[  0]	TGETS	136	136	309	; slot136 = love.graphics.draw
		6533	[  0]	MOV  	138		132	; slot138 = slot132
		6534	[  0]	MOV  	139		133	; slot139 = slot133
		6535	[  0]	GGET 	140		398	; slot140 = _env["math"]
		6536	[  0]	TGETS	140	140	380	; slot140 = math.floor
		6537	[  0]	SUBVV	142	109	135	; slot142 = math.max - <unknown table>.id
		6538	[  0]	DIVVN	142	142	8	; slot142 = slot142 / 2
		6539	[  0]	CALL 	140	2	2	; slot140 = math.floor(slot141)
		6540	[  0]	ADDVV	140	117	140	; slot140 = slot117 + math.floor
		6541	[  0]	CALL 	136	1	4	;  = love.graphics.draw(slot137, slot138, slot139)
		6542	[  0]	ADDVV	136	133	134	; slot136 = slot133 + <unknown table>.getDimensions
		6543	[  0]	GGET 	137		398	; slot137 = _env["math"]
		6544	[  0]	TGETS	137	137	380	; slot137 = math.floor
		6545	[  0]	MULNV	139	29	8	; slot139 = 2 * slot29
		6546	[  0]	ADDVN	139	139	6	; slot139 = slot139 + 0.5
		6547	[  0]	CALL 	137	2	2	; slot137 = math.floor(slot138)
		6548	[  0]	ADDVV	133	136	137	; slot133 = slot136 + math.floor
		6549	[  0]	GGET 	134		424	; slot134 = _env["love"]
		6550	[  0]	TGETS	134	134	343	; slot134 = love.graphics
		6551	[  0]	TGETS	134	134	310	; slot134 = love.graphics.setColor
		6552	[  0]	KNUM 	136		20	; slot136 = 0.9
		6553	[  0]	KNUM 	137		20	; slot137 = 0.9
		6554	[  0]	KNUM 	138		20	; slot138 = 0.9
		6555	[  0]	MULNV	139	35	10	; slot139 = 1 * slot35
		6556	[  0]	CALL 	134	1	5	;  = love.graphics.setColor(<unknown table>.id, slot136, slot137, slot138)
		6557	[  0]	UGET 	134		33	; slot134 = uv33"unknwon"
		6558	[  0]	GGET 	136		270	; slot136 = _env["font"]
		6559	[  0]	MOV  	137		131	; slot137 = slot131
		6560	[  0]	MOV  	138		133	; slot138 = slot133
		6561	[  0]	MOV  	139		117	; slot139 = slot117
		6562	[  0]	SUBVV	140	133	129	; slot140 = slot133 - slot129
		6563	[  0]	SUBVV	140	118	140	; slot140 = slot118 - slot140
		6564	[  0]	MOV  	141		109	; slot141 = math.max
		6565	[  0]	MOV  	142		126	; slot142 = uv31"unknown"
		6566	[  0]	CALL 	134	1	8	;  = uv33"unknown"(<unknown table>.id, font, slot137, slot138, slot139, slot140, math.max)
		6567	[  0]	ISF  	   		2	; if not slot2
		6568	[  0]	JMP  	121		277	; 	goto 6846
		6569	[  0]	KSTR 	121		54	; slot121 = "replaceUI"
		6570	[  0]	TGETV	121	2	121	; slot121 = slot2[slot121]
		6571	[  0]	ISF  	   		121	; if not slot121
		6572	[  0]	JMP  	122		273	; 	goto 6846
		6573	[  0]	GGET 	121		393	; slot121 = _env["tonumber"]
		6574	[  0]	KSTR 	123		53	; slot123 = "replaceSlot"
		6575	[  0]	TGETV	123	2	123	; slot123 = slot2[slot123]
		6576	[  0]	CALL 	121	2	2	; slot121 = tonumber(slot122)
		6577	[  0]	IST  	   		121	; if tonumber
		6578	[  0]	JMP  	122		7	; 	goto 6586
		6579	[  0]	GGET 	121		393	; slot121 = _env["tonumber"]
		6580	[  0]	KSTR 	123		126	; slot123 = "predictionSlot"
		6581	[  0]	TGETV	123	2	123	; slot123 = slot2[slot123]
		6582	[  0]	CALL 	121	2	2	; slot121 = tonumber(slot122)
		6583	[  0]	IST  	   		121	; if tonumber
		6584	[  0]	JMP  	122		1	; 	goto 6586
		6585	[  0]	MOV  	121		83	; slot121 = slot83
		6586	[  0]	KSTR 	122		52	; slot122 = "replaceMode"
		6587	[  0]	TGETV	122	2	122	; slot122 = slot2[slot122]
		6588	[  0]	ISNES	122		51	; if slot122 ~= "keep"
		6589	[  0]	JMP  	122		2	; 	goto 6592
		6590	[  0]	KSTR 	122		51	; slot122 = "keep"
		6591	[  0]	JMP  	123		1	; 	goto 6593
		6592	[  0]	KSTR 	122		150	; slot122 = "replace"
		6593	[  0]	GGET 	123		398	; slot123 = _env["math"]
		6594	[  0]	TGETS	123	123	380	; slot123 = math.floor
		6595	[  0]	MULNV	125	29	62	; slot125 = 14 * slot29
		6596	[  0]	ADDVN	125	125	6	; slot125 = slot125 + 0.5
		6597	[  0]	CALL 	123	2	2	; slot123 = math.floor(slot124)
		6598	[  0]	GGET 	124		398	; slot124 = _env["math"]
		6599	[  0]	TGETS	124	124	380	; slot124 = math.floor
		6600	[  0]	MULNV	126	29	31	; slot126 = 4 * slot29
		6601	[  0]	ADDVN	126	126	6	; slot126 = slot126 + 0.5
		6602	[  0]	CALL 	124	2	2	; slot124 = math.floor(slot125)
		6603	[  0]	ADDVV	125	84	72	; slot125 = uv5"unknown" + math.floor
		6604	[  0]	SUBVV	125	125	123	; slot125 = slot125 - math.floor
		6605	[  0]	SUBVV	125	125	124	; slot125 = slot125 - math.floor
		6606	[  0]	ADDVV	126	63	124	; slot126 = uv5"unknown" + math.floor
		6607	[  0]	MULVN	127	124	8	; slot127 = math.floor * 2
		6608	[  0]	SUBVV	127	64	127	; slot127 = math.max - slot127
		6609	[  0]	KSHORT	128		20	; slot128 = 20
		6610	[  0]	ISGE 	128		127	; if slot128 >= slot127
		6611	[  0]	JMP  	128		233	; 	goto 6845
		6612	[  0]	ADDVV	128	84	124	; slot128 = uv5"unknown" + math.floor
		6613	[  0]	ISGT 	128		125	; if slot128 > slot125
		6614	[  0]	JMP  	128		230	; 	goto 6845
		6615	[  0]	GGET 	128		398	; slot128 = _env["math"]
		6616	[  0]	TGETS	128	128	380	; slot128 = math.floor
		6617	[  0]	MULNV	130	29	64	; slot130 = 16 * slot29
		6618	[  0]	ADDVN	130	130	6	; slot130 = slot130 + 0.5
		6619	[  0]	CALL 	128	2	2	; slot128 = math.floor(slot129)
		6620	[  0]	KSHORT	129		12	; slot129 = 12
		6621	[  0]	ISGE 	128		129	; if math.floor >= slot129
		6622	[  0]	JMP  	129		1	; 	goto 6624
		6623	[  0]	KSHORT	128		12	; slot128 = 12
		6624	[  0]	GGET 	129		398	; slot129 = _env["math"]
		6625	[  0]	TGETS	129	129	380	; slot129 = math.floor
		6626	[  0]	MULNV	131	29	2	; slot131 = 3 * slot29
		6627	[  0]	ADDVN	131	131	6	; slot131 = slot131 + 0.5
		6628	[  0]	CALL 	129	2	2	; slot129 = math.floor(slot130)
		6629	[  0]	GGET 	130		398	; slot130 = _env["math"]
		6630	[  0]	TGETS	130	130	380	; slot130 = math.floor
		6631	[  0]	MULNV	132	29	25	; slot132 = 6 * slot29
		6632	[  0]	ADDVN	132	132	6	; slot132 = slot132 + 0.5
		6633	[  0]	CALL 	130	2	2	; slot130 = math.floor(slot131)
		6634	[  0]	GGET 	131		398	; slot131 = _env["math"]
		6635	[  0]	TGETS	131	131	380	; slot131 = math.floor
		6636	[  0]	MULNV	133	29	65	; slot133 = 50 * slot29
		6637	[  0]	ADDVN	133	133	6	; slot133 = slot133 + 0.5
		6638	[  0]	CALL 	131	2	2	; slot131 = math.floor(slot132)
		6639	[  0]	KSHORT	132		38	; slot132 = 38
		6640	[  0]	ISGE 	131		132	; if math.floor >= slot132
		6641	[  0]	JMP  	132		1	; 	goto 6643
		6642	[  0]	KSHORT	131		38	; slot131 = 38
		6643	[  0]	MULVV	132	128	51	; slot132 = slot128 * math.max
		6644	[  0]	SUBVN	133	51	10	; slot133 = math.max - 1
		6645	[  0]	MULVV	133	129	133	; slot133 = math.floor * slot133
		6646	[  0]	ADDVV	132	132	133	; slot132 = slot132 + slot133
		6647	[  0]	ADDVV	132	132	130	; slot132 = slot132 + math.floor
		6648	[  0]	MULVN	133	131	8	; slot133 = slot131 * 2
		6649	[  0]	ADDVV	132	132	133	; slot132 = slot132 + slot133
		6650	[  0]	ADDVV	132	132	129	; slot132 = slot132 + math.floor
		6651	[  0]	ISGE 	127		132	; if slot127 >= slot132
		6652	[  0]	JMP  	133		16	; 	goto 6669
		6653	[  0]	GGET 	133		398	; slot133 = _env["math"]
		6654	[  0]	TGETS	133	133	313	; slot133 = math.max
		6655	[  0]	KSHORT	135		34	; slot135 = 34
		6656	[  0]	GGET 	136		398	; slot136 = _env["math"]
		6657	[  0]	TGETS	136	136	380	; slot136 = math.floor
		6658	[  0]	MULVV	138	128	51	; slot138 = slot128 * math.max
		6659	[  0]	SUBVV	138	127	138	; slot138 = slot127 - slot138
		6660	[  0]	SUBVN	139	51	10	; slot139 = math.max - 1
		6661	[  0]	MULVV	139	129	139	; slot139 = math.floor * slot139
		6662	[  0]	SUBVV	138	138	139	; slot138 = slot138 - slot139
		6663	[  0]	SUBVV	138	138	130	; slot138 = slot138 - math.floor
		6664	[  0]	SUBVV	138	138	129	; slot138 = slot138 - math.floor
		6665	[  0]	DIVVN	138	138	8	; slot138 = slot138 / 2
		6666	[  0]	CALL 	136	0	2	; MULTRES = math.floor(slot137)
		6667	[  0]	CALLM	133	2	1	; slot133 = math.max(uv33"unknown", ...MULTRES)
		6668	[  0]	MOV  	131		133	; slot131 = math.max
		6669	[  0]	UGET 	133		0	; slot133 = uv0"unknwon"
		6670	[  0]	KSTR 	134		100	; slot134 = "_hit"
		6671	[  0]	TDUP 	135		50	; slot135 = copy table#k50
		6672	[  0]	TNEW 	136		0	; slot136 = new table( array: 0, dict: 1)
		6673	[  0]	KSTR 	137		129	; slot137 = "slots"
		6674	[  0]	TSETV	136	135	137	; slot135[slot137] = slot136
		6675	[  0]	TSETV	135	133	134	; uv0"unknown"[slot134] = slot135
		6676	[  0]	MOV  	133		126	; slot133 = slot126
		6677	[  0]	KSHORT	134		1	; slot134 = 1
		6678	[  0]	MOV  	135		51	; slot135 = math.max
		6679	[  0]	KSHORT	136		1	; slot136 = 1
		6680	[  0]	FORI 	134		102	; for slot137 = slot134,slot135,slot136 else goto 6783
		6681	[  0]	TDUP 	138		49	; slot138 = copy table#k49
		6682	[  0]	TSETS	133	138	384	; slot138.x = slot133
		6683	[  0]	TSETS	125	138	383	; slot138.y = slot125
		6684	[  0]	TSETS	128	138	387	; slot138.w = slot128
		6685	[  0]	TSETS	123	138	385	; slot138.h = math.floor
		6686	[  0]	KSTR 	139		91	; slot139 = "slot"
		6687	[  0]	TSETV	137	138	139	; slot138[slot139] = slot137
		6688	[  0]	GGET 	139		87	; slot139 = _env["table"]
		6689	[  0]	KSTR 	140		152	; slot140 = "insert"
		6690	[  0]	TGETV	139	139	140	; slot139 = table[slot140]
		6691	[  0]	UGET 	141		0	; slot141 = uv0"unknwon"
		6692	[  0]	KSTR 	142		100	; slot142 = "_hit"
		6693	[  0]	TGETV	141	141	142	; slot141 = uv0"unknown"[slot142]
		6694	[  0]	KSTR 	142		129	; slot142 = "slots"
		6695	[  0]	TGETV	141	141	142	; slot141 = slot141[slot142]
		6696	[  0]	MOV  	142		138	; slot142 = slot138
		6697	[  0]	CALL 	139	1	3	;  = slot139(slot140, slot141)
		6698	[  0]	ISEQV	137		121	; if slot137 == slot121
		6699	[  0]	JMP  	139		2	; 	goto 6702
		6700	[  0]	KPRI 	139		1	; slot139 = false
		6701	[  0]	JMP  	140		1	; 	goto 6703
		6702	[  0]	KPRI 	139		2	; slot139 = true
		6703	[  0]	GGET 	140		424	; slot140 = _env["love"]
		6704	[  0]	TGETS	140	140	343	; slot140 = love.graphics
		6705	[  0]	TGETS	140	140	310	; slot140 = love.graphics.setColor
		6706	[  0]	KNUM 	142		66	; slot142 = 0.15
		6707	[  0]	KNUM 	143		66	; slot143 = 0.15
		6708	[  0]	KNUM 	144		66	; slot144 = 0.15
		6709	[  0]	MULNV	145	35	63	; slot145 = 0.85 * slot35
		6710	[  0]	CALL 	140	1	5	;  = love.graphics.setColor(slot141, slot142, slot143, slot144)
		6711	[  0]	GGET 	140		424	; slot140 = _env["love"]
		6712	[  0]	TGETS	140	140	343	; slot140 = love.graphics
		6713	[  0]	TGETS	140	140	308	; slot140 = love.graphics.rectangle
		6714	[  0]	KSTR 	142		307	; slot142 = "fill"
		6715	[  0]	TGETS	143	138	384	; slot143 = slot138.x
		6716	[  0]	TGETS	144	138	383	; slot144 = slot138.y
		6717	[  0]	TGETS	145	138	387	; slot145 = slot138.w
		6718	[  0]	TGETS	146	138	385	; slot146 = slot138.h
		6719	[  0]	CALL 	140	1	6	;  = love.graphics.rectangle(slot141, slot142, <unknown table>.x, <unknown table>.y, <unknown table>.w)
		6720	[  0]	GGET 	140		424	; slot140 = _env["love"]
		6721	[  0]	TGETS	140	140	343	; slot140 = love.graphics
		6722	[  0]	TGETS	140	140	310	; slot140 = love.graphics.setColor
		6723	[  0]	ISF  	   		139	; if not slot139
		6724	[  0]	JMP  	142		2	; 	goto 6727
		6725	[  0]	KNUM 	142		20	; slot142 = 0.9
		6726	[  0]	JMP  	143		1	; 	goto 6728
		6727	[  0]	KNUM 	142		12	; slot142 = 0.4
		6728	[  0]	ISF  	   		139	; if not slot139
		6729	[  0]	JMP  	143		2	; 	goto 6732
		6730	[  0]	KNUM 	143		20	; slot143 = 0.9
		6731	[  0]	JMP  	144		1	; 	goto 6733
		6732	[  0]	KNUM 	143		12	; slot143 = 0.4
		6733	[  0]	ISF  	   		139	; if not slot139
		6734	[  0]	JMP  	144		2	; 	goto 6737
		6735	[  0]	KNUM 	144		20	; slot144 = 0.9
		6736	[  0]	JMP  	145		1	; 	goto 6738
		6737	[  0]	KNUM 	144		12	; slot144 = 0.4
		6738	[  0]	MULNV	145	35	10	; slot145 = 1 * slot35
		6739	[  0]	CALL 	140	1	5	;  = love.graphics.setColor(slot141, slot142, slot143, slot144)
		6740	[  0]	GGET 	140		424	; slot140 = _env["love"]
		6741	[  0]	TGETS	140	140	343	; slot140 = love.graphics
		6742	[  0]	TGETS	140	140	308	; slot140 = love.graphics.rectangle
		6743	[  0]	KSTR 	142		306	; slot142 = "line"
		6744	[  0]	TGETS	143	138	384	; slot143 = slot138.x
		6745	[  0]	ADDVN	143	143	6	; slot143 = <unknown table>.x + 0.5
		6746	[  0]	TGETS	144	138	383	; slot144 = slot138.y
		6747	[  0]	ADDVN	144	144	6	; slot144 = <unknown table>.y + 0.5
		6748	[  0]	TGETS	145	138	387	; slot145 = slot138.w
		6749	[  0]	SUBVN	145	145	10	; slot145 = <unknown table>.w - 1
		6750	[  0]	TGETS	146	138	385	; slot146 = slot138.h
		6751	[  0]	SUBVN	146	146	10	; slot146 = <unknown table>.h - 1
		6752	[  0]	CALL 	140	1	6	;  = love.graphics.rectangle(slot141, slot142, slot143, slot144, slot145)
		6753	[  0]	GGET 	140		424	; slot140 = _env["love"]
		6754	[  0]	TGETS	140	140	343	; slot140 = love.graphics
		6755	[  0]	TGETS	140	140	310	; slot140 = love.graphics.setColor
		6756	[  0]	KNUM 	142		20	; slot142 = 0.9
		6757	[  0]	KNUM 	143		20	; slot143 = 0.9
		6758	[  0]	KNUM 	144		20	; slot144 = 0.9
		6759	[  0]	MULNV	145	35	10	; slot145 = 1 * slot35
		6760	[  0]	CALL 	140	1	5	;  = love.graphics.setColor(slot141, slot142, slot143, slot144)
		6761	[  0]	GGET 	140		424	; slot140 = _env["love"]
		6762	[  0]	TGETS	140	140	343	; slot140 = love.graphics
		6763	[  0]	KSTR 	141		48	; slot141 = "printf"
		6764	[  0]	TGETV	140	140	141	; slot140 = love.graphics[slot141]
		6765	[  0]	GGET 	142		264	; slot142 = _env["tostring"]
		6766	[  0]	MOV  	144		137	; slot144 = slot137
		6767	[  0]	CALL 	142	2	2	; slot142 = tostring(slot143)
		6768	[  0]	TGETS	143	138	384	; slot143 = slot138.x
		6769	[  0]	TGETS	144	138	383	; slot144 = slot138.y
		6770	[  0]	GGET 	145		398	; slot145 = _env["math"]
		6771	[  0]	TGETS	145	145	380	; slot145 = math.floor
		6772	[  0]	SUBVV	147	123	107	; slot147 = math.floor - uv20"unknown"
		6773	[  0]	DIVVN	147	147	8	; slot147 = slot147 / 2
		6774	[  0]	ADDVN	147	147	6	; slot147 = slot147 + 0.5
		6775	[  0]	CALL 	145	2	2	; slot145 = math.floor(slot146)
		6776	[  0]	ADDVV	144	144	145	; slot144 = <unknown table>.y + math.floor
		6777	[  0]	TGETS	145	138	387	; slot145 = slot138.w
		6778	[  0]	KSTR 	146		47	; slot146 = "center"
		6779	[  0]	CALL 	140	1	6	;  = slot140(slot141, tostring, <unknown table>.x, slot144, <unknown table>.w)
		6780	[  0]	ADDVV	140	133	128	; slot140 = slot133 + slot128
		6781	[  0]	ADDVV	133	140	129	; slot133 = slot140 + math.floor
		6782	[  0]	FORL 	134		-102	; slot137 = slot137 + slot136; if cmp(slot137, sign slot136,  math.max) goto 6681
		6783	[  0]	ADDVV	133	133	130	; slot133 = slot133 + math.floor
		6784	[  0]	TDUP 	134		46	; slot134 = copy table#k46
		6785	[  0]	TSETS	133	134	384	; slot134.x = slot133
		6786	[  0]	TSETS	125	134	383	; slot134.y = slot125
		6787	[  0]	TSETS	131	134	387	; slot134.w = math.max
		6788	[  0]	TSETS	123	134	385	; slot134.h = math.floor
		6789	[  0]	ADDVV	135	133	131	; slot135 = slot133 + math.max
		6790	[  0]	ADDVV	133	135	129	; slot133 = slot135 + math.floor
		6791	[  0]	TDUP 	135		45	; slot135 = copy table#k45
		6792	[  0]	TSETS	133	135	384	; slot135.x = slot133
		6793	[  0]	TSETS	125	135	383	; slot135.y = slot125
		6794	[  0]	TSETS	131	135	387	; slot135.w = math.max
		6795	[  0]	TSETS	123	135	385	; slot135.h = math.floor
		6796	[  0]	UGET 	136		0	; slot136 = uv0"unknwon"
		6797	[  0]	KSTR 	137		100	; slot137 = "_hit"
		6798	[  0]	TGETV	136	136	137	; slot136 = uv0"unknown"[slot137]
		6799	[  0]	KSTR 	137		44	; slot137 = "replaceBtn"
		6800	[  0]	TSETV	134	136	137	; slot136[slot137] = slot134
		6801	[  0]	UGET 	136		0	; slot136 = uv0"unknwon"
		6802	[  0]	KSTR 	137		100	; slot137 = "_hit"
		6803	[  0]	TGETV	136	136	137	; slot136 = uv0"unknown"[slot137]
		6804	[  0]	KSTR 	137		43	; slot137 = "keepBtn"
		6805	[  0]	TSETV	135	136	137	; slot136[slot137] = slot135
		6806	[  0]	FNEW 	136		42	; N/A:0-0: 3 args, 3 upvalues, 12 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  3		13	; slot3 = _env["love"]
			  2	[  0]	TGETS	  3	3	12	; slot3 = love.graphics
			  3	[  0]	TGETS	  3	3	11	; slot3 = love.graphics.setColor
			  4	[  0]	KNUM 	  5		0	; slot5 = 0.15
			  5	[  0]	KNUM 	  6		0	; slot6 = 0.15
			  6	[  0]	KNUM 	  7		0	; slot7 = 0.15
			  7	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
			  8	[  0]	MULNV	  8	8	1	; slot8 = 0.85 * uv0"unknown"
			  9	[  0]	CALL 	  3	1	5	;  = love.graphics.setColor(slot4, slot5, slot6, slot7)
			 10	[  0]	GGET 	  3		13	; slot3 = _env["love"]
			 11	[  0]	TGETS	  3	3	12	; slot3 = love.graphics
			 12	[  0]	TGETS	  3	3	10	; slot3 = love.graphics.rectangle
			 13	[  0]	KSTR 	  5		9	; slot5 = "fill"
			 14	[  0]	TGETS	  6	0	8	; slot6 = slot0.x
			 15	[  0]	TGETS	  7	0	7	; slot7 = slot0.y
			 16	[  0]	TGETS	  8	0	6	; slot8 = slot0.w
			 17	[  0]	TGETS	  9	0	5	; slot9 = slot0.h
			 18	[  0]	CALL 	  3	1	6	;  = love.graphics.rectangle(slot4, slot5, <unknown table>.x, <unknown table>.y, <unknown table>.w)
			 19	[  0]	GGET 	  3		13	; slot3 = _env["love"]
			 20	[  0]	TGETS	  3	3	12	; slot3 = love.graphics
			 21	[  0]	TGETS	  3	3	11	; slot3 = love.graphics.setColor
			 22	[  0]	ISF  	   		2	; if not slot2
			 23	[  0]	JMP  	  5		2	; 	goto 26
			 24	[  0]	KNUM 	  5		2	; slot5 = 0.9
			 25	[  0]	JMP  	  6		1	; 	goto 27
			 26	[  0]	KNUM 	  5		3	; slot5 = 0.4
			 27	[  0]	ISF  	   		2	; if not slot2
			 28	[  0]	JMP  	  6		2	; 	goto 31
			 29	[  0]	KNUM 	  6		2	; slot6 = 0.9
			 30	[  0]	JMP  	  7		1	; 	goto 32
			 31	[  0]	KNUM 	  6		3	; slot6 = 0.4
			 32	[  0]	ISF  	   		2	; if not slot2
			 33	[  0]	JMP  	  7		2	; 	goto 36
			 34	[  0]	KNUM 	  7		2	; slot7 = 0.9
			 35	[  0]	JMP  	  8		1	; 	goto 37
			 36	[  0]	KNUM 	  7		3	; slot7 = 0.4
			 37	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
			 38	[  0]	MULNV	  8	8	4	; slot8 = 1 * uv0"unknown"
			 39	[  0]	CALL 	  3	1	5	;  = love.graphics.setColor(slot4, slot5, slot6, slot7)
			 40	[  0]	GGET 	  3		13	; slot3 = _env["love"]
			 41	[  0]	TGETS	  3	3	12	; slot3 = love.graphics
			 42	[  0]	TGETS	  3	3	10	; slot3 = love.graphics.rectangle
			 43	[  0]	KSTR 	  5		4	; slot5 = "line"
			 44	[  0]	TGETS	  6	0	8	; slot6 = slot0.x
			 45	[  0]	ADDVN	  6	6	5	; slot6 = <unknown table>.x + 0.5
			 46	[  0]	TGETS	  7	0	7	; slot7 = slot0.y
			 47	[  0]	ADDVN	  7	7	5	; slot7 = <unknown table>.y + 0.5
			 48	[  0]	TGETS	  8	0	6	; slot8 = slot0.w
			 49	[  0]	SUBVN	  8	8	4	; slot8 = <unknown table>.w - 1
			 50	[  0]	TGETS	  9	0	5	; slot9 = slot0.h
			 51	[  0]	SUBVN	  9	9	4	; slot9 = <unknown table>.h - 1
			 52	[  0]	CALL 	  3	1	6	;  = love.graphics.rectangle(slot4, slot5, slot6, slot7, slot8)
			 53	[  0]	GGET 	  3		13	; slot3 = _env["love"]
			 54	[  0]	TGETS	  3	3	12	; slot3 = love.graphics
			 55	[  0]	TGETS	  3	3	11	; slot3 = love.graphics.setColor
			 56	[  0]	KNUM 	  5		2	; slot5 = 0.9
			 57	[  0]	KNUM 	  6		2	; slot6 = 0.9
			 58	[  0]	KNUM 	  7		2	; slot7 = 0.9
			 59	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
			 60	[  0]	MULNV	  8	8	4	; slot8 = 1 * uv0"unknown"
			 61	[  0]	CALL 	  3	1	5	;  = love.graphics.setColor(slot4, slot5, slot6, slot7)
			 62	[  0]	GGET 	  3		13	; slot3 = _env["love"]
			 63	[  0]	TGETS	  3	3	12	; slot3 = love.graphics
			 64	[  0]	TGETS	  3	3	3	; slot3 = love.graphics.printf
			 65	[  0]	MOV  	  5		1	; slot5 = slot1
			 66	[  0]	TGETS	  6	0	8	; slot6 = slot0.x
			 67	[  0]	ADDVN	  6	6	6	; slot6 = <unknown table>.x + 2
			 68	[  0]	TGETS	  7	0	7	; slot7 = slot0.y
			 69	[  0]	GGET 	  8		2	; slot8 = _env["math"]
			 70	[  0]	TGETS	  8	8	1	; slot8 = math.floor
			 71	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
			 72	[  0]	UGET 	 11		2	; slot11 = uv2"unknwon"
			 73	[  0]	SUBVV	 10	10	11	; slot10 = uv1"unknown" - uv2"unknown"
			 74	[  0]	DIVVN	 10	10	6	; slot10 = slot10 / 2
			 75	[  0]	ADDVN	 10	10	5	; slot10 = slot10 + 0.5
			 76	[  0]	CALL 	  8	2	2	; slot8 = math.floor(slot9)
			 77	[  0]	ADDVV	  7	7	8	; slot7 = <unknown table>.y + math.floor
			 78	[  0]	TGETS	  8	0	6	; slot8 = slot0.w
			 79	[  0]	SUBVN	  8	8	7	; slot8 = <unknown table>.w - 4
			 80	[  0]	KSTR 	  9		0	; slot9 = "center"
			 81	[  0]	CALL 	  3	1	6	;  = love.graphics.printf(slot4, slot5, slot6, slot7, slot8)
			 82	[  0]	RET0 	  0		1	; return
		6807	[  0]	MOV  	137		136	; slot137 = slot136
		6808	[  0]	MOV  	139		134	; slot139 = slot134
		6809	[  0]	UGET 	140		22	; slot140 = uv22"unknwon"
		6810	[  0]	KSTR 	141		138	; slot141 = "getText"
		6811	[  0]	TGETV	140	140	141	; slot140 = uv22"unknown"[slot141]
		6812	[  0]	KSTR 	142		41	; slot142 = "imprint_mode_replace"
		6813	[  0]	GGET 	143		136	; slot143 = _env["_G"]
		6814	[  0]	KSTR 	144		135	; slot144 = "currentGameLang"
		6815	[  0]	TGETV	143	143	144	; slot143 = _G[slot144]
		6816	[  0]	IST  	   		143	; if slot143
		6817	[  0]	JMP  	144		1	; 	goto 6819
		6818	[  0]	KSTR 	143		134	; slot143 = "ko"
		6819	[  0]	CALL 	140	2	3	; slot140 = slot140(slot141, slot142)
		6820	[  0]	ISEQS	122		150	; if slot122 == "replace"
		6821	[  0]	JMP  	141		2	; 	goto 6824
		6822	[  0]	KPRI 	141		1	; slot141 = false
		6823	[  0]	JMP  	142		1	; 	goto 6825
		6824	[  0]	KPRI 	141		2	; slot141 = true
		6825	[  0]	CALL 	137	1	4	;  = slot137(slot138, slot139, slot140)
		6826	[  0]	MOV  	137		136	; slot137 = slot136
		6827	[  0]	MOV  	139		135	; slot139 = slot135
		6828	[  0]	UGET 	140		22	; slot140 = uv22"unknwon"
		6829	[  0]	KSTR 	141		138	; slot141 = "getText"
		6830	[  0]	TGETV	140	140	141	; slot140 = uv22"unknown"[slot141]
		6831	[  0]	KSTR 	142		40	; slot142 = "imprint_mode_keep"
		6832	[  0]	GGET 	143		136	; slot143 = _env["_G"]
		6833	[  0]	KSTR 	144		135	; slot144 = "currentGameLang"
		6834	[  0]	TGETV	143	143	144	; slot143 = _G[slot144]
		6835	[  0]	IST  	   		143	; if slot143
		6836	[  0]	JMP  	144		1	; 	goto 6838
		6837	[  0]	KSTR 	143		134	; slot143 = "ko"
		6838	[  0]	CALL 	140	2	3	; slot140 = slot140(slot141, slot142)
		6839	[  0]	ISEQS	122		51	; if slot122 == "keep"
		6840	[  0]	JMP  	141		2	; 	goto 6843
		6841	[  0]	KPRI 	141		1	; slot141 = false
		6842	[  0]	JMP  	142		1	; 	goto 6844
		6843	[  0]	KPRI 	141		2	; slot141 = true
		6844	[  0]	CALL 	137	1	4	;  = slot137(slot138, slot139, slot140)
		6845	[  0]	UCLO 	121		0	; nil uvs >= r121; goto 6846
		6846	[  0]	UCLO 	101		542	; nil uvs >= r101; goto 7389
		6847	[  0]	GGET 	101		398	; slot101 = _env["math"]
		6848	[  0]	TGETS	101	101	380	; slot101 = math.floor
		6849	[  0]	MULNV	103	29	60	; slot103 = 18 * slot29
		6850	[  0]	ADDVN	103	103	6	; slot103 = slot103 + 0.5
		6851	[  0]	CALL 	101	2	2	; slot101 = math.floor(slot102)
		6852	[  0]	GGET 	102		398	; slot102 = _env["math"]
		6853	[  0]	TGETS	102	102	380	; slot102 = math.floor
		6854	[  0]	MULNV	104	29	25	; slot104 = 6 * slot29
		6855	[  0]	SUBVV	104	72	104	; slot104 = math.floor - slot104
		6856	[  0]	CALL 	102	2	2	; slot102 = math.floor(slot103)
		6857	[  0]	ISGE 	102		101	; if math.floor >= math.floor
		6858	[  0]	JMP  	102		10	; 	goto 6869
		6859	[  0]	GGET 	102		398	; slot102 = _env["math"]
		6860	[  0]	TGETS	102	102	313	; slot102 = math.max
		6861	[  0]	KSHORT	104		10	; slot104 = 10
		6862	[  0]	GGET 	105		398	; slot105 = _env["math"]
		6863	[  0]	TGETS	105	105	380	; slot105 = math.floor
		6864	[  0]	MULNV	107	29	25	; slot107 = 6 * slot29
		6865	[  0]	SUBVV	107	72	107	; slot107 = math.floor - slot107
		6866	[  0]	CALL 	105	0	2	; MULTRES = math.floor(math.floor)
		6867	[  0]	CALLM	102	2	1	; slot102 = math.max(slot103, ...MULTRES)
		6868	[  0]	MOV  	101		102	; slot101 = math.max
		6869	[  0]	ISF  	   		85	; if not slot85
		6870	[  0]	JMP  	102		347	; 	goto 7218
		6871	[  0]	UGET 	102		34	; slot102 = uv34"unknwon"
		6872	[  0]	CALL 	102	2	1	; slot102 = uv34"unknown"()
		6873	[  0]	GGET 	103		424	; slot103 = _env["love"]
		6874	[  0]	TGETS	103	103	343	; slot103 = love.graphics
		6875	[  0]	TGETS	103	103	280	; slot103 = love.graphics.getFont
		6876	[  0]	CALL 	103	2	1	; slot103 = love.graphics.getFont()
		6877	[  0]	ISTC 	104		102	; slot104 = uv34"unknown"; if uv34"unknown"
		6878	[  0]	JMP  	104		6	; 	goto 6885
		6879	[  0]	ISF  	   		0	; if not slot0
		6880	[  0]	JMP  	104		3	; 	goto 6884
		6881	[  0]	TGETS	104	0	270	; slot104 = slot0.font
		6882	[  0]	IST  	   		104	; if <unknown table>.font
		6883	[  0]	JMP  	105		1	; 	goto 6885
		6884	[  0]	MOV  	104		103	; slot104 = love.graphics.getFont
		6885	[  0]	ISF  	   		102	; if not uv34"unknown"
		6886	[  0]	JMP  	105		5	; 	goto 6892
		6887	[  0]	GGET 	105		424	; slot105 = _env["love"]
		6888	[  0]	TGETS	105	105	343	; slot105 = love.graphics
		6889	[  0]	TGETS	105	105	305	; slot105 = love.graphics.setFont
		6890	[  0]	MOV  	107		102	; slot107 = uv34"unknown"
		6891	[  0]	CALL 	105	1	2	;  = love.graphics.setFont(math.floor)
		6892	[  0]	UGET 	105		20	; slot105 = uv20"unknwon"
		6893	[  0]	MOV  	107		104	; slot107 = love.graphics.getFont
		6894	[  0]	KSHORT	108		12	; slot108 = 12
		6895	[  0]	CALL 	105	2	3	; slot105 = uv20"unknown"(math.floor, love.graphics.getFont)
		6896	[  0]	KSHORT	106		32	; slot106 = 32
		6897	[  0]	TGETS	107	85	347	; slot107 = slot85.icon
		6898	[  0]	ISF  	   		107	; if not <unknown table>.icon
		6899	[  0]	JMP  	108		10	; 	goto 6910
		6900	[  0]	UGET 	107		14	; slot107 = uv14"unknwon"
		6901	[  0]	UGET 	109		0	; slot109 = uv0"unknwon"
		6902	[  0]	TGETS	110	85	347	; slot110 = slot85.icon
		6903	[  0]	CALL 	107	2	3	; slot107 = uv14"unknown"(slot108, uv0"unknown")
		6904	[  0]	ISF  	   		107	; if not uv14"unknown"
		6905	[  0]	JMP  	108		4	; 	goto 6910
		6906	[  0]	MOV  	110		107	; slot110 = uv14"unknown"
		6907	[  0]	TGETS	108	107	382	; slot108 = uv14"unknown".getWidth
		6908	[  0]	CALL 	108	2	2	; slot108 = uv14"unknown".getWidth(uv0"unknown")
		6909	[  0]	MOV  	106		108	; slot106 = uv14"unknown".getWidth
		6910	[  0]	KSHORT	107		8	; slot107 = 8
		6911	[  0]	KSHORT	108		3	; slot108 = 3
		6912	[  0]	KSHORT	109		8	; slot109 = 8
		6913	[  0]	KSHORT	110		4	; slot110 = 4
		6914	[  0]	TGETS	111	0	368	; slot111 = slot0.imprintPanel
		6915	[  0]	ISF  	   		111	; if not <unknown table>.imprintPanel
		6916	[  0]	JMP  	112		47	; 	goto 6964
		6917	[  0]	TGETS	111	0	368	; slot111 = slot0.imprintPanel
		6918	[  0]	KSTR 	112		39	; slot112 = "imprintName"
		6919	[  0]	TGETV	111	111	112	; slot111 = <unknown table>.imprintPanel[slot112]
		6920	[  0]	ISF  	   		111	; if not slot111
		6921	[  0]	JMP  	112		18	; 	goto 6940
		6922	[  0]	GGET 	111		393	; slot111 = _env["tonumber"]
		6923	[  0]	TGETS	113	0	368	; slot113 = slot0.imprintPanel
		6924	[  0]	KSTR 	114		39	; slot114 = "imprintName"
		6925	[  0]	TGETV	113	113	114	; slot113 = <unknown table>.imprintPanel[slot114]
		6926	[  0]	TGETS	113	113	337	; slot113 = slot113.offsetX
		6927	[  0]	CALL 	111	2	2	; slot111 = tonumber(slot112)
		6928	[  0]	ISTC 	107		111	; slot107 = tonumber; if tonumber
		6929	[  0]	JMP  	112		1	; 	goto 6931
		6930	[  0]	KSHORT	107		8	; slot107 = 8
		6931	[  0]	GGET 	111		393	; slot111 = _env["tonumber"]
		6932	[  0]	TGETS	113	0	368	; slot113 = slot0.imprintPanel
		6933	[  0]	KSTR 	114		39	; slot114 = "imprintName"
		6934	[  0]	TGETV	113	113	114	; slot113 = <unknown table>.imprintPanel[slot114]
		6935	[  0]	TGETS	113	113	335	; slot113 = slot113.offsetY
		6936	[  0]	CALL 	111	2	2	; slot111 = tonumber(slot112)
		6937	[  0]	ISTC 	108		111	; slot108 = tonumber; if tonumber
		6938	[  0]	JMP  	112		1	; 	goto 6940
		6939	[  0]	KSHORT	108		3	; slot108 = 3
		6940	[  0]	TGETS	111	0	368	; slot111 = slot0.imprintPanel
		6941	[  0]	KSTR 	112		38	; slot112 = "imprintDesc"
		6942	[  0]	TGETV	111	111	112	; slot111 = <unknown table>.imprintPanel[slot112]
		6943	[  0]	ISF  	   		111	; if not slot111
		6944	[  0]	JMP  	112		19	; 	goto 6964
		6945	[  0]	GGET 	111		393	; slot111 = _env["tonumber"]
		6946	[  0]	TGETS	113	0	368	; slot113 = slot0.imprintPanel
		6947	[  0]	KSTR 	114		38	; slot114 = "imprintDesc"
		6948	[  0]	TGETV	113	113	114	; slot113 = <unknown table>.imprintPanel[slot114]
		6949	[  0]	TGETS	113	113	337	; slot113 = slot113.offsetX
		6950	[  0]	CALL 	111	2	2	; slot111 = tonumber(slot112)
		6951	[  0]	ISTC 	109		111	; slot109 = tonumber; if tonumber
		6952	[  0]	JMP  	112		1	; 	goto 6954
		6953	[  0]	KSHORT	109		8	; slot109 = 8
		6954	[  0]	GGET 	111		393	; slot111 = _env["tonumber"]
		6955	[  0]	TGETS	113	0	368	; slot113 = slot0.imprintPanel
		6956	[  0]	KSTR 	114		38	; slot114 = "imprintDesc"
		6957	[  0]	TGETV	113	113	114	; slot113 = <unknown table>.imprintPanel[slot114]
		6958	[  0]	KSTR 	114		37	; slot114 = "gapY"
		6959	[  0]	TGETV	113	113	114	; slot113 = slot113[slot114]
		6960	[  0]	CALL 	111	2	2	; slot111 = tonumber(slot112)
		6961	[  0]	ISTC 	110		111	; slot110 = tonumber; if tonumber
		6962	[  0]	JMP  	112		1	; 	goto 6964
		6963	[  0]	KSHORT	110		4	; slot110 = 4
		6964	[  0]	ADDVV	111	63	106	; slot111 = uv5"unknown" + uv14"unknown".getWidth
		6965	[  0]	GGET 	112		398	; slot112 = _env["math"]
		6966	[  0]	TGETS	112	112	380	; slot112 = math.floor
		6967	[  0]	MULVV	114	107	29	; slot114 = slot107 * slot29
		6968	[  0]	ADDVN	114	114	6	; slot114 = slot114 + 0.5
		6969	[  0]	CALL 	112	2	2	; slot112 = math.floor(slot113)
		6970	[  0]	ADDVV	111	111	112	; slot111 = slot111 + math.floor
		6971	[  0]	GGET 	112		398	; slot112 = _env["math"]
		6972	[  0]	TGETS	112	112	380	; slot112 = math.floor
		6973	[  0]	MULVV	114	108	29	; slot114 = slot108 * slot29
		6974	[  0]	ADDVN	114	114	6	; slot114 = slot114 + 0.5
		6975	[  0]	CALL 	112	2	2	; slot112 = math.floor(slot113)
		6976	[  0]	ADDVV	112	84	112	; slot112 = uv5"unknown" + math.floor
		6977	[  0]	KSHORT	113		1	; slot113 = 1
		6978	[  0]	KSTR 	114		154	; slot114 = "level"
		6979	[  0]	TGETV	114	85	114	; slot114 = slot85[slot114]
		6980	[  0]	IST  	   		114	; if slot114
		6981	[  0]	JMP  	115		1	; 	goto 6983
		6982	[  0]	KSHORT	114		1	; slot114 = 1
		6983	[  0]	UGET 	115		0	; slot115 = uv0"unknwon"
		6984	[  0]	TGETS	115	115	438	; slot115 = uv0"unknown"._hoveredSlot
		6985	[  0]	ISF  	   		115	; if not uv0"unknown"._hoveredSlot
		6986	[  0]	JMP  	116		24	; 	goto 7011
		6987	[  0]	UGET 	115		0	; slot115 = uv0"unknwon"
		6988	[  0]	TGETS	115	115	438	; slot115 = uv0"unknown"._hoveredSlot
		6989	[  0]	TGETS	115	115	439	; slot115 = uv0"unknown"._hoveredSlot.index
		6990	[  0]	ISNEV	115		83	; if uv0"unknown"._hoveredSlot.index ~= slot83
		6991	[  0]	JMP  	115		19	; 	goto 7011
		6992	[  0]	UGET 	115		0	; slot115 = uv0"unknwon"
		6993	[  0]	TGETS	115	115	438	; slot115 = uv0"unknown"._hoveredSlot
		6994	[  0]	KSTR 	116		62	; slot116 = "previewUpgrade"
		6995	[  0]	TGETV	115	115	116	; slot115 = uv0"unknown"._hoveredSlot[slot116]
		6996	[  0]	ISF  	   		115	; if not slot115
		6997	[  0]	JMP  	116		13	; 	goto 7011
		6998	[  0]	GGET 	115		398	; slot115 = _env["math"]
		6999	[  0]	TGETS	115	115	282	; slot115 = math.sin
		7000	[  0]	GGET 	117		424	; slot117 = _env["love"]
		7001	[  0]	TGETS	117	117	423	; slot117 = love.timer
		7002	[  0]	TGETS	117	117	422	; slot117 = love.timer.getTime
		7003	[  0]	CALL 	117	2	1	; slot117 = love.timer.getTime()
		7004	[  0]	MULVN	117	117	34	; slot117 = love.timer.getTime * 15
		7005	[  0]	CALL 	115	2	2	; slot115 = math.sin(slot116)
		7006	[  0]	MULNV	115	115	6	; slot115 = 0.5 * math.sin
		7007	[  0]	ADDNV	115	115	6	; slot115 = 0.5 + slot115
		7008	[  0]	MULNV	115	115	13	; slot115 = 0.6 * slot115
		7009	[  0]	ADDNV	113	115	12	; slot113 = 0.4 + slot115
		7010	[  0]	ADDVN	114	114	10	; slot114 = slot114 + 1
		7011	[  0]	UGET 	115		22	; slot115 = uv22"unknwon"
		7012	[  0]	KSTR 	116		59	; slot116 = "getImprintName"
		7013	[  0]	TGETV	115	115	116	; slot115 = uv22"unknown"[slot116]
		7014	[  0]	TGETS	117	85	323	; slot117 = slot85.id
		7015	[  0]	TGETS	118	85	321	; slot118 = slot85.name
		7016	[  0]	IST  	   		118	; if <unknown table>.name
		7017	[  0]	JMP  	119		1	; 	goto 7019
		7018	[  0]	KSTR 	118		36	; slot118 = "Unknown Imprint"
		7019	[  0]	GGET 	119		136	; slot119 = _env["_G"]
		7020	[  0]	KSTR 	120		135	; slot120 = "currentGameLang"
		7021	[  0]	TGETV	119	119	120	; slot119 = _G[slot120]
		7022	[  0]	IST  	   		119	; if slot119
		7023	[  0]	JMP  	120		1	; 	goto 7025
		7024	[  0]	KSTR 	119		134	; slot119 = "ko"
		7025	[  0]	CALL 	115	2	4	; slot115 = slot115(slot116, <unknown table>.id, slot118)
		7026	[  0]	KSTR 	116		155	; slot116 = " "
		7027	[  0]	UGET 	117		21	; slot117 = uv21"unknwon"
		7028	[  0]	MOV  	119		114	; slot119 = slot114
		7029	[  0]	CALL 	117	2	2	; slot117 = uv21"unknown"(slot118)
		7030	[  0]	CAT  	116	116	117	; slot116 = slot116 .. uv21"unknown"
		7031	[  0]	GGET 	117		424	; slot117 = _env["love"]
		7032	[  0]	TGETS	117	117	343	; slot117 = love.graphics
		7033	[  0]	TGETS	117	117	310	; slot117 = love.graphics.setColor
		7034	[  0]	KSHORT	119		1	; slot119 = 1
		7035	[  0]	KNUM 	120		20	; slot120 = 0.9
		7036	[  0]	KNUM 	121		6	; slot121 = 0.5
		7037	[  0]	MULNV	122	35	10	; slot122 = 1 * slot35
		7038	[  0]	CALL 	117	1	5	;  = love.graphics.setColor(slot118, slot119, slot120, slot121)
		7039	[  0]	ADDVV	117	63	64	; slot117 = uv5"unknown" + math.max
		7040	[  0]	SUBVV	117	117	111	; slot117 = slot117 - slot111
		7041	[  0]	GGET 	118		398	; slot118 = _env["math"]
		7042	[  0]	TGETS	118	118	380	; slot118 = math.floor
		7043	[  0]	MULNV	120	29	5	; slot120 = 8 * slot29
		7044	[  0]	ADDVN	120	120	6	; slot120 = slot120 + 0.5
		7045	[  0]	CALL 	118	2	2	; slot118 = math.floor(slot119)
		7046	[  0]	SUBVV	117	117	118	; slot117 = slot117 - math.floor
		7047	[  0]	UGET 	118		35	; slot118 = uv35"unknwon"
		7048	[  0]	MOV  	120		104	; slot120 = love.graphics.getFont
		7049	[  0]	MOV  	121		116	; slot121 = slot116
		7050	[  0]	CALL 	118	2	3	; slot118 = uv35"unknown"(slot119, love.graphics.getFont)
		7051	[  0]	SUBVV	117	117	118	; slot117 = slot117 - uv35"unknown"
		7052	[  0]	UGET 	118		0	; slot118 = uv0"unknwon"
		7053	[  0]	KSTR 	119		60	; slot119 = "_printFitted"
		7054	[  0]	TGETV	118	118	119	; slot118 = uv0"unknown"[slot119]
		7055	[  0]	MOV  	120		104	; slot120 = love.graphics.getFont
		7056	[  0]	MOV  	121		115	; slot121 = slot115
		7057	[  0]	MOV  	122		111	; slot122 = slot111
		7058	[  0]	MOV  	123		112	; slot123 = slot112
		7059	[  0]	MOV  	124		117	; slot124 = slot117
		7060	[  0]	CALL 	118	2	6	; slot118 = slot118(slot119, love.graphics.getFont, slot121, slot122, slot123)
		7061	[  0]	GGET 	119		424	; slot119 = _env["love"]
		7062	[  0]	TGETS	119	119	343	; slot119 = love.graphics
		7063	[  0]	TGETS	119	119	310	; slot119 = love.graphics.setColor
		7064	[  0]	KSHORT	121		1	; slot121 = 1
		7065	[  0]	KNUM 	122		20	; slot122 = 0.9
		7066	[  0]	KNUM 	123		6	; slot123 = 0.5
		7067	[  0]	MULVV	124	113	35	; slot124 = slot113 * slot35
		7068	[  0]	CALL 	119	1	5	;  = love.graphics.setColor(love.graphics.getFont, slot121, slot122, slot123)
		7069	[  0]	GGET 	119		424	; slot119 = _env["love"]
		7070	[  0]	TGETS	119	119	343	; slot119 = love.graphics
		7071	[  0]	TGETS	119	119	255	; slot119 = love.graphics.print
		7072	[  0]	MOV  	121		116	; slot121 = slot116
		7073	[  0]	ADDVV	122	111	118	; slot122 = slot111 + slot118
		7074	[  0]	MOV  	123		112	; slot123 = slot112
		7075	[  0]	CALL 	119	1	4	;  = love.graphics.print(love.graphics.getFont, slot121, slot122)
		7076	[  0]	ADDVV	119	63	106	; slot119 = uv5"unknown" + uv14"unknown".getWidth
		7077	[  0]	GGET 	120		398	; slot120 = _env["math"]
		7078	[  0]	TGETS	120	120	380	; slot120 = math.floor
		7079	[  0]	MULVV	122	109	29	; slot122 = slot109 * slot29
		7080	[  0]	ADDVN	122	122	6	; slot122 = slot122 + 0.5
		7081	[  0]	CALL 	120	2	2	; slot120 = math.floor(slot121)
		7082	[  0]	ADDVV	119	119	120	; slot119 = slot119 + math.floor
		7083	[  0]	ADDVV	120	112	105	; slot120 = slot112 + uv20"unknown"
		7084	[  0]	GGET 	121		398	; slot121 = _env["math"]
		7085	[  0]	TGETS	121	121	380	; slot121 = math.floor
		7086	[  0]	MULVV	123	110	29	; slot123 = slot110 * slot29
		7087	[  0]	ADDVN	123	123	6	; slot123 = slot123 + 0.5
		7088	[  0]	CALL 	121	2	2	; slot121 = math.floor(slot122)
		7089	[  0]	ADDVV	120	120	121	; slot120 = slot120 + math.floor
		7090	[  0]	ADDVV	121	63	64	; slot121 = uv5"unknown" + math.max
		7091	[  0]	SUBVV	121	121	119	; slot121 = slot121 - slot119
		7092	[  0]	GGET 	122		398	; slot122 = _env["math"]
		7093	[  0]	TGETS	122	122	380	; slot122 = math.floor
		7094	[  0]	MULNV	124	29	31	; slot124 = 4 * slot29
		7095	[  0]	ADDVN	124	124	6	; slot124 = slot124 + 0.5
		7096	[  0]	CALL 	122	2	2	; slot122 = math.floor(slot123)
		7097	[  0]	SUBVV	121	121	122	; slot121 = slot121 - math.floor
		7098	[  0]	KSHORT	122		10	; slot122 = 10
		7099	[  0]	ISGE 	121		122	; if slot121 >= slot122
		7100	[  0]	JMP  	122		1	; 	goto 7102
		7101	[  0]	KSHORT	121		10	; slot121 = 10
		7102	[  0]	GGET 	122		398	; slot122 = _env["math"]
		7103	[  0]	TGETS	122	122	313	; slot122 = math.max
		7104	[  0]	KSHORT	124		1	; slot124 = 1
		7105	[  0]	GGET 	125		398	; slot125 = _env["math"]
		7106	[  0]	TGETS	125	125	313	; slot125 = math.max
		7107	[  0]	KSHORT	127		1	; slot127 = 1
		7108	[  0]	GGET 	128		398	; slot128 = _env["math"]
		7109	[  0]	TGETS	128	128	380	; slot128 = math.floor
		7110	[  0]	MULNV	130	29	59	; slot130 = 5 * slot29
		7111	[  0]	ADDVN	130	130	6	; slot130 = slot130 + 0.5
		7112	[  0]	CALL 	128	0	2	; MULTRES = math.floor(math.floor)
		7113	[  0]	CALLM	125	2	1	; slot125 = math.max(slot126, ...MULTRES)
		7114	[  0]	ADDVV	125	105	125	; slot125 = uv20"unknown" + math.max
		7115	[  0]	CALL 	122	2	3	; slot122 = math.max(slot123, slot124)
		7116	[  0]	ADDVV	123	84	72	; slot123 = uv5"unknown" + math.floor
		7117	[  0]	SUBVV	123	123	120	; slot123 = slot123 - slot120
		7118	[  0]	GGET 	124		398	; slot124 = _env["math"]
		7119	[  0]	TGETS	124	124	380	; slot124 = math.floor
		7120	[  0]	MULNV	126	29	2	; slot126 = 3 * slot29
		7121	[  0]	ADDVN	126	126	6	; slot126 = slot126 + 0.5
		7122	[  0]	CALL 	124	2	2	; slot124 = math.floor(slot125)
		7123	[  0]	SUBVV	123	123	124	; slot123 = slot123 - math.floor
		7124	[  0]	UGET 	124		31	; slot124 = uv31"unknwon"
		7125	[  0]	MOV  	126		123	; slot126 = slot123
		7126	[  0]	MOV  	127		122	; slot127 = math.max
		7127	[  0]	CALL 	124	2	3	; slot124 = uv31"unknown"(slot125, slot126)
		7128	[  0]	GGET 	125		424	; slot125 = _env["love"]
		7129	[  0]	TGETS	125	125	343	; slot125 = love.graphics
		7130	[  0]	TGETS	125	125	310	; slot125 = love.graphics.setColor
		7131	[  0]	KNUM 	127		20	; slot127 = 0.9
		7132	[  0]	KNUM 	128		20	; slot128 = 0.9
		7133	[  0]	KNUM 	129		20	; slot129 = 0.9
		7134	[  0]	MULNV	130	35	10	; slot130 = 1 * slot35
		7135	[  0]	CALL 	125	1	5	;  = love.graphics.setColor(slot126, slot127, slot128, slot129)
		7136	[  0]	UGET 	125		0	; slot125 = uv0"unknwon"
		7137	[  0]	KSTR 	126		57	; slot126 = "getShortIconImage"
		7138	[  0]	TGETV	125	125	126	; slot125 = uv0"unknown"[slot126]
		7139	[  0]	UGET 	127		0	; slot127 = uv0"unknwon"
		7140	[  0]	TGETS	128	85	323	; slot128 = slot85.id
		7141	[  0]	CALL 	125	2	3	; slot125 = slot125(slot126, uv0"unknown")
		7142	[  0]	MOV  	126		119	; slot126 = slot119
		7143	[  0]	ISF  	   		125	; if not slot125
		7144	[  0]	JMP  	127		32	; 	goto 7177
		7145	[  0]	MOV  	129		125	; slot129 = slot125
		7146	[  0]	TGETS	127	125	339	; slot127 = slot125.getDimensions
		7147	[  0]	CALL 	127	3	2	; slot127, slot128 = <unknown table>.getDimensions(<unknown table>.id)
		7148	[  0]	MOV  	129		119	; slot129 = slot119
		7149	[  0]	GGET 	130		398	; slot130 = _env["math"]
		7150	[  0]	TGETS	130	130	380	; slot130 = math.floor
		7151	[  0]	SUBVV	132	122	128	; slot132 = math.max - <unknown table>.id
		7152	[  0]	DIVVN	132	132	8	; slot132 = slot132 / 2
		7153	[  0]	CALL 	130	2	2	; slot130 = math.floor(math.max)
		7154	[  0]	ADDVV	130	120	130	; slot130 = slot120 + math.floor
		7155	[  0]	GGET 	131		424	; slot131 = _env["love"]
		7156	[  0]	TGETS	131	131	343	; slot131 = love.graphics
		7157	[  0]	TGETS	131	131	310	; slot131 = love.graphics.setColor
		7158	[  0]	KSHORT	133		1	; slot133 = 1
		7159	[  0]	KSHORT	134		1	; slot134 = 1
		7160	[  0]	KSHORT	135		1	; slot135 = 1
		7161	[  0]	MULNV	136	35	10	; slot136 = 1 * slot35
		7162	[  0]	CALL 	131	1	5	;  = love.graphics.setColor(slot132, slot133, slot134, slot135)
		7163	[  0]	GGET 	131		424	; slot131 = _env["love"]
		7164	[  0]	TGETS	131	131	343	; slot131 = love.graphics
		7165	[  0]	TGETS	131	131	309	; slot131 = love.graphics.draw
		7166	[  0]	MOV  	133		125	; slot133 = slot125
		7167	[  0]	MOV  	134		129	; slot134 = slot129
		7168	[  0]	MOV  	135		130	; slot135 = slot130
		7169	[  0]	CALL 	131	1	4	;  = love.graphics.draw(slot132, slot133, slot134)
		7170	[  0]	ADDVV	131	126	127	; slot131 = slot126 + <unknown table>.getDimensions
		7171	[  0]	GGET 	132		398	; slot132 = _env["math"]
		7172	[  0]	TGETS	132	132	380	; slot132 = math.floor
		7173	[  0]	MULNV	134	29	8	; slot134 = 2 * slot29
		7174	[  0]	ADDVN	134	134	6	; slot134 = slot134 + 0.5
		7175	[  0]	CALL 	132	2	2	; slot132 = math.floor(slot133)
		7176	[  0]	ADDVV	126	131	132	; slot126 = slot131 + math.floor
		7177	[  0]	GGET 	127		424	; slot127 = _env["love"]
		7178	[  0]	TGETS	127	127	343	; slot127 = love.graphics
		7179	[  0]	TGETS	127	127	310	; slot127 = love.graphics.setColor
		7180	[  0]	KNUM 	129		20	; slot129 = 0.9
		7181	[  0]	KNUM 	130		20	; slot130 = 0.9
		7182	[  0]	KNUM 	131		20	; slot131 = 0.9
		7183	[  0]	MULNV	132	35	10	; slot132 = 1 * slot35
		7184	[  0]	CALL 	127	1	5	;  = love.graphics.setColor(<unknown table>.id, slot129, slot130, slot131)
		7185	[  0]	UGET 	127		33	; slot127 = uv33"unknwon"
		7186	[  0]	MOV  	129		104	; slot129 = love.graphics.getFont
		7187	[  0]	UGET 	130		22	; slot130 = uv22"unknwon"
		7188	[  0]	KSTR 	131		56	; slot131 = "getImprintShortDesc"
		7189	[  0]	TGETV	130	130	131	; slot130 = uv22"unknown"[slot131]
		7190	[  0]	TGETS	132	85	323	; slot132 = slot85.id
		7191	[  0]	KSTR 	133		55	; slot133 = "shortDesc"
		7192	[  0]	TGETV	133	85	133	; slot133 = slot85[slot133]
		7193	[  0]	IST  	   		133	; if slot133
		7194	[  0]	JMP  	134		1	; 	goto 7196
		7195	[  0]	KSTR 	133		346	; slot133 = ""
		7196	[  0]	GGET 	134		136	; slot134 = _env["_G"]
		7197	[  0]	KSTR 	135		135	; slot135 = "currentGameLang"
		7198	[  0]	TGETV	134	134	135	; slot134 = _G[slot135]
		7199	[  0]	IST  	   		134	; if slot134
		7200	[  0]	JMP  	135		1	; 	goto 7202
		7201	[  0]	KSTR 	134		134	; slot134 = "ko"
		7202	[  0]	CALL 	130	2	4	; slot130 = slot130(slot131, <unknown table>.id, slot133)
		7203	[  0]	MOV  	131		126	; slot131 = slot126
		7204	[  0]	MOV  	132		120	; slot132 = slot120
		7205	[  0]	SUBVV	133	126	119	; slot133 = slot126 - slot119
		7206	[  0]	SUBVV	133	121	133	; slot133 = slot121 - slot133
		7207	[  0]	MOV  	134		122	; slot134 = math.max
		7208	[  0]	MOV  	135		124	; slot135 = uv31"unknown"
		7209	[  0]	CALL 	127	1	8	;  = uv33"unknown"(<unknown table>.id, love.graphics.getFont, slot130, slot131, slot132, slot133, math.max)
		7210	[  0]	ISF  	   		102	; if not uv34"unknown"
		7211	[  0]	JMP  	127		177	; 	goto 7389
		7212	[  0]	GGET 	127		424	; slot127 = _env["love"]
		7213	[  0]	TGETS	127	127	343	; slot127 = love.graphics
		7214	[  0]	TGETS	127	127	305	; slot127 = love.graphics.setFont
		7215	[  0]	MOV  	129		103	; slot129 = love.graphics.getFont
		7216	[  0]	CALL 	127	1	2	;  = love.graphics.setFont(<unknown table>.id)
		7217	[  0]	JMP  	102		171	; 	goto 7389
		7218	[  0]	UGET 	102		34	; slot102 = uv34"unknwon"
		7219	[  0]	CALL 	102	2	1	; slot102 = uv34"unknown"()
		7220	[  0]	GGET 	103		424	; slot103 = _env["love"]
		7221	[  0]	TGETS	103	103	343	; slot103 = love.graphics
		7222	[  0]	TGETS	103	103	280	; slot103 = love.graphics.getFont
		7223	[  0]	CALL 	103	2	1	; slot103 = love.graphics.getFont()
		7224	[  0]	ISF  	   		102	; if not uv34"unknown"
		7225	[  0]	JMP  	104		5	; 	goto 7231
		7226	[  0]	GGET 	104		424	; slot104 = _env["love"]
		7227	[  0]	TGETS	104	104	343	; slot104 = love.graphics
		7228	[  0]	TGETS	104	104	305	; slot104 = love.graphics.setFont
		7229	[  0]	MOV  	106		102	; slot106 = uv34"unknown"
		7230	[  0]	CALL 	104	1	2	;  = love.graphics.setFont(uv20"unknown")
		7231	[  0]	GGET 	104		424	; slot104 = _env["love"]
		7232	[  0]	TGETS	104	104	343	; slot104 = love.graphics
		7233	[  0]	TGETS	104	104	310	; slot104 = love.graphics.setColor
		7234	[  0]	KNUM 	106		20	; slot106 = 0.9
		7235	[  0]	KNUM 	107		20	; slot107 = 0.9
		7236	[  0]	KNUM 	108		20	; slot108 = 0.9
		7237	[  0]	MULNV	109	35	10	; slot109 = 1 * slot35
		7238	[  0]	CALL 	104	1	5	;  = love.graphics.setColor(uv20"unknown", slot106, slot107, slot108)
		7239	[  0]	UGET 	104		22	; slot104 = uv22"unknwon"
		7240	[  0]	KSTR 	105		138	; slot105 = "getText"
		7241	[  0]	TGETV	104	104	105	; slot104 = uv22"unknown"[slot105]
		7242	[  0]	KSTR 	106		35	; slot106 = "imprint_empty_slot"
		7243	[  0]	GGET 	107		136	; slot107 = _env["_G"]
		7244	[  0]	KSTR 	108		135	; slot108 = "currentGameLang"
		7245	[  0]	TGETV	107	107	108	; slot107 = _G[slot108]
		7246	[  0]	IST  	   		107	; if slot107
		7247	[  0]	JMP  	108		1	; 	goto 7249
		7248	[  0]	KSTR 	107		134	; slot107 = "ko"
		7249	[  0]	CALL 	104	2	3	; slot104 = slot104(slot105, slot106)
		7250	[  0]	KSHORT	105		40	; slot105 = 40
		7251	[  0]	KSHORT	106		65529	; slot106 = 65529
		7252	[  0]	TGETS	107	0	368	; slot107 = slot0.imprintPanel
		7253	[  0]	ISF  	   		107	; if not <unknown table>.imprintPanel
		7254	[  0]	JMP  	108		23	; 	goto 7278
		7255	[  0]	TGETS	107	0	368	; slot107 = slot0.imprintPanel
		7256	[  0]	KSTR 	108		34	; slot108 = "emptyText"
		7257	[  0]	TGETV	107	107	108	; slot107 = <unknown table>.imprintPanel[slot108]
		7258	[  0]	ISF  	   		107	; if not slot107
		7259	[  0]	JMP  	108		18	; 	goto 7278
		7260	[  0]	GGET 	107		393	; slot107 = _env["tonumber"]
		7261	[  0]	TGETS	109	0	368	; slot109 = slot0.imprintPanel
		7262	[  0]	KSTR 	110		34	; slot110 = "emptyText"
		7263	[  0]	TGETV	109	109	110	; slot109 = <unknown table>.imprintPanel[slot110]
		7264	[  0]	TGETS	109	109	337	; slot109 = slot109.offsetX
		7265	[  0]	CALL 	107	2	2	; slot107 = tonumber(slot108)
		7266	[  0]	ISTC 	105		107	; slot105 = tonumber; if tonumber
		7267	[  0]	JMP  	108		1	; 	goto 7269
		7268	[  0]	KSHORT	105		40	; slot105 = 40
		7269	[  0]	GGET 	107		393	; slot107 = _env["tonumber"]
		7270	[  0]	TGETS	109	0	368	; slot109 = slot0.imprintPanel
		7271	[  0]	KSTR 	110		34	; slot110 = "emptyText"
		7272	[  0]	TGETV	109	109	110	; slot109 = <unknown table>.imprintPanel[slot110]
		7273	[  0]	TGETS	109	109	335	; slot109 = slot109.offsetY
		7274	[  0]	CALL 	107	2	2	; slot107 = tonumber(slot108)
		7275	[  0]	ISTC 	106		107	; slot106 = tonumber; if tonumber
		7276	[  0]	JMP  	108		1	; 	goto 7278
		7277	[  0]	KSHORT	106		65529	; slot106 = 65529
		7278	[  0]	GGET 	107		424	; slot107 = _env["love"]
		7279	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		7280	[  0]	TGETS	107	107	255	; slot107 = love.graphics.print
		7281	[  0]	MOV  	109		104	; slot109 = slot104
		7282	[  0]	GGET 	110		398	; slot110 = _env["math"]
		7283	[  0]	TGETS	110	110	380	; slot110 = math.floor
		7284	[  0]	MULVV	112	105	29	; slot112 = slot105 * slot29
		7285	[  0]	ADDVN	112	112	6	; slot112 = slot112 + 0.5
		7286	[  0]	CALL 	110	2	2	; slot110 = math.floor(slot111)
		7287	[  0]	ADDVV	110	63	110	; slot110 = uv5"unknown" + math.floor
		7288	[  0]	GGET 	111		398	; slot111 = _env["math"]
		7289	[  0]	TGETS	111	111	380	; slot111 = math.floor
		7290	[  0]	DIVVN	113	72	8	; slot113 = math.floor / 2
		7291	[  0]	MULVV	114	106	29	; slot114 = slot106 * slot29
		7292	[  0]	ADDVV	113	113	114	; slot113 = slot113 + slot114
		7293	[  0]	CALL 	111	2	2	; slot111 = math.floor(slot112)
		7294	[  0]	ADDVV	111	84	111	; slot111 = uv5"unknown" + math.floor
		7295	[  0]	CALL 	107	1	4	;  = love.graphics.print(slot108, slot109, slot110)
		7296	[  0]	ISF  	   		102	; if not uv34"unknown"
		7297	[  0]	JMP  	107		91	; 	goto 7389
		7298	[  0]	GGET 	107		424	; slot107 = _env["love"]
		7299	[  0]	TGETS	107	107	343	; slot107 = love.graphics
		7300	[  0]	TGETS	107	107	305	; slot107 = love.graphics.setFont
		7301	[  0]	MOV  	109		103	; slot109 = love.graphics.getFont
		7302	[  0]	CALL 	107	1	2	;  = love.graphics.setFont(slot108)
		7303	[  0]	JMP  	101		85	; 	goto 7389
		7304	[  0]	UGET 	101		34	; slot101 = uv34"unknwon"
		7305	[  0]	CALL 	101	2	1	; slot101 = uv34"unknown"()
		7306	[  0]	GGET 	102		424	; slot102 = _env["love"]
		7307	[  0]	TGETS	102	102	343	; slot102 = love.graphics
		7308	[  0]	TGETS	102	102	280	; slot102 = love.graphics.getFont
		7309	[  0]	CALL 	102	2	1	; slot102 = love.graphics.getFont()
		7310	[  0]	ISF  	   		101	; if not uv34"unknown"
		7311	[  0]	JMP  	103		5	; 	goto 7317
		7312	[  0]	GGET 	103		424	; slot103 = _env["love"]
		7313	[  0]	TGETS	103	103	343	; slot103 = love.graphics
		7314	[  0]	TGETS	103	103	305	; slot103 = love.graphics.setFont
		7315	[  0]	MOV  	105		101	; slot105 = uv34"unknown"
		7316	[  0]	CALL 	103	1	2	;  = love.graphics.setFont(slot104)
		7317	[  0]	GGET 	103		424	; slot103 = _env["love"]
		7318	[  0]	TGETS	103	103	343	; slot103 = love.graphics
		7319	[  0]	TGETS	103	103	310	; slot103 = love.graphics.setColor
		7320	[  0]	KNUM 	105		32	; slot105 = 0.7
		7321	[  0]	KNUM 	106		32	; slot106 = 0.7
		7322	[  0]	KNUM 	107		32	; slot107 = 0.7
		7323	[  0]	MULNV	108	35	10	; slot108 = 1 * slot35
		7324	[  0]	CALL 	103	1	5	;  = love.graphics.setColor(slot104, slot105, slot106, slot107)
		7325	[  0]	UGET 	103		22	; slot103 = uv22"unknwon"
		7326	[  0]	KSTR 	104		138	; slot104 = "getText"
		7327	[  0]	TGETV	103	103	104	; slot103 = uv22"unknown"[slot104]
		7328	[  0]	KSTR 	105		33	; slot105 = "imprint_locked"
		7329	[  0]	GGET 	106		136	; slot106 = _env["_G"]
		7330	[  0]	KSTR 	107		135	; slot107 = "currentGameLang"
		7331	[  0]	TGETV	106	106	107	; slot106 = _G[slot107]
		7332	[  0]	IST  	   		106	; if slot106
		7333	[  0]	JMP  	107		1	; 	goto 7335
		7334	[  0]	KSTR 	106		134	; slot106 = "ko"
		7335	[  0]	CALL 	103	2	3	; slot103 = slot103(slot104, slot105)
		7336	[  0]	KSHORT	104		42	; slot104 = 42
		7337	[  0]	KSHORT	105		65529	; slot105 = 65529
		7338	[  0]	TGETS	106	0	368	; slot106 = slot0.imprintPanel
		7339	[  0]	ISF  	   		106	; if not <unknown table>.imprintPanel
		7340	[  0]	JMP  	107		23	; 	goto 7364
		7341	[  0]	TGETS	106	0	368	; slot106 = slot0.imprintPanel
		7342	[  0]	KSTR 	107		32	; slot107 = "lockedText"
		7343	[  0]	TGETV	106	106	107	; slot106 = <unknown table>.imprintPanel[slot107]
		7344	[  0]	ISF  	   		106	; if not slot106
		7345	[  0]	JMP  	107		18	; 	goto 7364
		7346	[  0]	GGET 	106		393	; slot106 = _env["tonumber"]
		7347	[  0]	TGETS	108	0	368	; slot108 = slot0.imprintPanel
		7348	[  0]	KSTR 	109		32	; slot109 = "lockedText"
		7349	[  0]	TGETV	108	108	109	; slot108 = <unknown table>.imprintPanel[slot109]
		7350	[  0]	TGETS	108	108	337	; slot108 = slot108.offsetX
		7351	[  0]	CALL 	106	2	2	; slot106 = tonumber(slot107)
		7352	[  0]	ISTC 	104		106	; slot104 = tonumber; if tonumber
		7353	[  0]	JMP  	107		1	; 	goto 7355
		7354	[  0]	KSHORT	104		42	; slot104 = 42
		7355	[  0]	GGET 	106		393	; slot106 = _env["tonumber"]
		7356	[  0]	TGETS	108	0	368	; slot108 = slot0.imprintPanel
		7357	[  0]	KSTR 	109		32	; slot109 = "lockedText"
		7358	[  0]	TGETV	108	108	109	; slot108 = <unknown table>.imprintPanel[slot109]
		7359	[  0]	TGETS	108	108	335	; slot108 = slot108.offsetY
		7360	[  0]	CALL 	106	2	2	; slot106 = tonumber(slot107)
		7361	[  0]	ISTC 	105		106	; slot105 = tonumber; if tonumber
		7362	[  0]	JMP  	107		1	; 	goto 7364
		7363	[  0]	KSHORT	105		65529	; slot105 = 65529
		7364	[  0]	GGET 	106		424	; slot106 = _env["love"]
		7365	[  0]	TGETS	106	106	343	; slot106 = love.graphics
		7366	[  0]	TGETS	106	106	255	; slot106 = love.graphics.print
		7367	[  0]	MOV  	108		103	; slot108 = slot103
		7368	[  0]	GGET 	109		398	; slot109 = _env["math"]
		7369	[  0]	TGETS	109	109	380	; slot109 = math.floor
		7370	[  0]	MULVV	111	104	29	; slot111 = slot104 * slot29
		7371	[  0]	ADDVN	111	111	6	; slot111 = slot111 + 0.5
		7372	[  0]	CALL 	109	2	2	; slot109 = math.floor(slot110)
		7373	[  0]	ADDVV	109	63	109	; slot109 = uv5"unknown" + math.floor
		7374	[  0]	GGET 	110		398	; slot110 = _env["math"]
		7375	[  0]	TGETS	110	110	380	; slot110 = math.floor
		7376	[  0]	DIVVN	112	72	8	; slot112 = math.floor / 2
		7377	[  0]	MULVV	113	105	29	; slot113 = slot105 * slot29
		7378	[  0]	ADDVV	112	112	113	; slot112 = slot112 + slot113
		7379	[  0]	CALL 	110	2	2	; slot110 = math.floor(slot111)
		7380	[  0]	ADDVV	110	84	110	; slot110 = uv5"unknown" + math.floor
		7381	[  0]	CALL 	106	1	4	;  = love.graphics.print(slot107, slot108, slot109)
		7382	[  0]	ISF  	   		101	; if not uv34"unknown"
		7383	[  0]	JMP  	106		5	; 	goto 7389
		7384	[  0]	GGET 	106		424	; slot106 = _env["love"]
		7385	[  0]	TGETS	106	106	343	; slot106 = love.graphics
		7386	[  0]	TGETS	106	106	305	; slot106 = love.graphics.setFont
		7387	[  0]	MOV  	108		102	; slot108 = love.graphics.getFont
		7388	[  0]	CALL 	106	1	2	;  = love.graphics.setFont(slot107)
		7389	[  0]	GGET 	101		424	; slot101 = _env["love"]
		7390	[  0]	TGETS	101	101	343	; slot101 = love.graphics
		7391	[  0]	KSTR 	102		89	; slot102 = "pop"
		7392	[  0]	TGETV	101	101	102	; slot101 = love.graphics[slot102]
		7393	[  0]	CALL 	101	1	1	;  = slot101()
		7394	[  0]	GGET 	101		424	; slot101 = _env["love"]
		7395	[  0]	TGETS	101	101	343	; slot101 = love.graphics
		7396	[  0]	KSTR 	102		89	; slot102 = "pop"
		7397	[  0]	TGETV	101	101	102	; slot101 = love.graphics[slot102]
		7398	[  0]	CALL 	101	1	1	;  = slot101()
		7399	[  0]	UCLO 	 84		0	; nil uvs >= r84; goto 7400
		7400	[  0]	FORL 	 80		-2917	; slot83 = slot83 + slot82; if cmp(slot83, sign slot82,  slot81) goto 4484
		7401	[  0]	KSTR 	 80		31	; slot80 = "randomOptions"
		7402	[  0]	TGETV	 80	11	80	; slot80 = uv1"unknown".lastUnit[slot80]
		7403	[  0]	IST  	   		80	; if slot80
		7404	[  0]	JMP  	 81		18	; 	goto 7423
		7405	[  0]	KSTR 	 80		30	; slot80 = "meta"
		7406	[  0]	TGETV	 80	11	80	; slot80 = uv1"unknown".lastUnit[slot80]
		7407	[  0]	ISF  	   		80	; if not slot80
		7408	[  0]	JMP  	 81		6	; 	goto 7415
		7409	[  0]	KSTR 	 80		30	; slot80 = "meta"
		7410	[  0]	TGETV	 80	11	80	; slot80 = uv1"unknown".lastUnit[slot80]
		7411	[  0]	KSTR 	 81		31	; slot81 = "randomOptions"
		7412	[  0]	TGETV	 80	80	81	; slot80 = slot80[slot81]
		7413	[  0]	IST  	   		80	; if slot80
		7414	[  0]	JMP  	 81		8	; 	goto 7423
		7415	[  0]	KSTR 	 80		29	; slot80 = "rosterSpawnMeta"
		7416	[  0]	TGETV	 80	11	80	; slot80 = uv1"unknown".lastUnit[slot80]
		7417	[  0]	ISF  	   		80	; if not slot80
		7418	[  0]	JMP  	 81		4	; 	goto 7423
		7419	[  0]	KSTR 	 80		29	; slot80 = "rosterSpawnMeta"
		7420	[  0]	TGETV	 80	11	80	; slot80 = uv1"unknown".lastUnit[slot80]
		7421	[  0]	KSTR 	 81		31	; slot81 = "randomOptions"
		7422	[  0]	TGETV	 80	80	81	; slot80 = slot80[slot81]
		7423	[  0]	IST  	   		80	; if slot80
		7424	[  0]	JMP  	 81		24	; 	goto 7449
		7425	[  0]	TGETS	 81	11	241	; slot81 = uv1"unknown".lastUnit.randomOption
		7426	[  0]	IST  	   		81	; if uv1"unknown".lastUnit.randomOption
		7427	[  0]	JMP  	 82		16	; 	goto 7444
		7428	[  0]	KSTR 	 81		30	; slot81 = "meta"
		7429	[  0]	TGETV	 81	11	81	; slot81 = uv1"unknown".lastUnit[slot81]
		7430	[  0]	ISF  	   		81	; if not slot81
		7431	[  0]	JMP  	 82		5	; 	goto 7437
		7432	[  0]	KSTR 	 81		30	; slot81 = "meta"
		7433	[  0]	TGETV	 81	11	81	; slot81 = uv1"unknown".lastUnit[slot81]
		7434	[  0]	TGETS	 81	81	241	; slot81 = slot81.randomOption
		7435	[  0]	IST  	   		81	; if <unknown table>.randomOption
		7436	[  0]	JMP  	 82		7	; 	goto 7444
		7437	[  0]	KSTR 	 81		29	; slot81 = "rosterSpawnMeta"
		7438	[  0]	TGETV	 81	11	81	; slot81 = uv1"unknown".lastUnit[slot81]
		7439	[  0]	ISF  	   		81	; if not slot81
		7440	[  0]	JMP  	 82		3	; 	goto 7444
		7441	[  0]	KSTR 	 81		29	; slot81 = "rosterSpawnMeta"
		7442	[  0]	TGETV	 81	11	81	; slot81 = uv1"unknown".lastUnit[slot81]
		7443	[  0]	TGETS	 81	81	241	; slot81 = slot81.randomOption
		7444	[  0]	ISF  	   		81	; if not <unknown table>.randomOption
		7445	[  0]	JMP  	 82		3	; 	goto 7449
		7446	[  0]	TNEW 	 82		3	; slot82 = new table( array: 3, dict: 1)
		7447	[  0]	TSETB	 81	82	1	; slot82[1] = <unknown table>.randomOption
		7448	[  0]	MOV  	 80		82	; slot80 = slot82
		7449	[  0]	TGETS	 81	0	368	; slot81 = slot0.imprintPanel
		7450	[  0]	ISF  	   		81	; if not <unknown table>.imprintPanel
		7451	[  0]	JMP  	 82		4	; 	goto 7456
		7452	[  0]	TGETS	 81	0	368	; slot81 = slot0.imprintPanel
		7453	[  0]	TGETS	 81	81	241	; slot81 = <unknown table>.imprintPanel.randomOption
		7454	[  0]	IST  	   		81	; if <unknown table>.imprintPanel.randomOption
		7455	[  0]	JMP  	 82		1	; 	goto 7457
		7456	[  0]	KPRI 	 81		0	; slot81 = nil
		7457	[  0]	UGET 	 82		5	; slot82 = uv5"unknwon"
		7458	[  0]	ISF  	   		81	; if not slot81
		7459	[  0]	JMP  	 84		3	; 	goto 7463
		7460	[  0]	TGETS	 84	81	384	; slot84 = slot81.x
		7461	[  0]	IST  	   		84	; if <unknown table>.x
		7462	[  0]	JMP  	 85		1	; 	goto 7464
		7463	[  0]	KSHORT	 84		168	; slot84 = 168
		7464	[  0]	MULVV	 84	84	29	; slot84 = slot84 * slot29
		7465	[  0]	CALL 	 82	2	2	; slot82 = uv5"unknown"(slot83)
		7466	[  0]	ADDVV	 82	32	82	; slot82 = uv5"unknown" + uv5"unknown"
		7467	[  0]	UGET 	 83		5	; slot83 = uv5"unknwon"
		7468	[  0]	ISF  	   		81	; if not slot81
		7469	[  0]	JMP  	 85		3	; 	goto 7473
		7470	[  0]	TGETS	 85	81	383	; slot85 = slot81.y
		7471	[  0]	IST  	   		85	; if <unknown table>.y
		7472	[  0]	JMP  	 86		1	; 	goto 7474
		7473	[  0]	KSHORT	 85		24	; slot85 = 24
		7474	[  0]	MULVV	 85	85	29	; slot85 = slot85 * slot29
		7475	[  0]	CALL 	 83	2	2	; slot83 = uv5"unknown"(slot84)
		7476	[  0]	ADDVV	 83	33	83	; slot83 = uv5"unknown" + uv5"unknown"
		7477	[  0]	UGET 	 84		5	; slot84 = uv5"unknwon"
		7478	[  0]	ISF  	   		81	; if not slot81
		7479	[  0]	JMP  	 86		4	; 	goto 7484
		7480	[  0]	KSTR 	 86		28	; slot86 = "size"
		7481	[  0]	TGETV	 86	81	86	; slot86 = slot81[slot86]
		7482	[  0]	IST  	   		86	; if slot86
		7483	[  0]	JMP  	 87		1	; 	goto 7485
		7484	[  0]	KSHORT	 86		22	; slot86 = 22
		7485	[  0]	MULVV	 86	86	29	; slot86 = slot86 * slot29
		7486	[  0]	CALL 	 84	2	2	; slot84 = uv5"unknown"(slot85)
		7487	[  0]	UGET 	 85		5	; slot85 = uv5"unknwon"
		7488	[  0]	ISF  	   		81	; if not slot81
		7489	[  0]	JMP  	 87		3	; 	goto 7493
		7490	[  0]	TGETS	 87	81	251	; slot87 = slot81.gap
		7491	[  0]	IST  	   		87	; if <unknown table>.gap
		7492	[  0]	JMP  	 88		1	; 	goto 7494
		7493	[  0]	KSHORT	 87		4	; slot87 = 4
		7494	[  0]	MULVV	 87	87	29	; slot87 = slot87 * slot29
		7495	[  0]	CALL 	 85	2	2	; slot85 = uv5"unknown"(slot86)
		7496	[  0]	GGET 	 86		398	; slot86 = _env["math"]
		7497	[  0]	TGETS	 86	86	313	; slot86 = math.max
		7498	[  0]	KSHORT	 88		1	; slot88 = 1
		7499	[  0]	GGET 	 89		398	; slot89 = _env["math"]
		7500	[  0]	TGETS	 89	89	380	; slot89 = math.floor
		7501	[  0]	GGET 	 91		393	; slot91 = _env["tonumber"]
		7502	[  0]	ISF  	   		81	; if not slot81
		7503	[  0]	JMP  	 93		4	; 	goto 7508
		7504	[  0]	KSTR 	 93		27	; slot93 = "maxSlots"
		7505	[  0]	TGETV	 93	81	93	; slot93 = slot81[slot93]
		7506	[  0]	IST  	   		93	; if slot93
		7507	[  0]	JMP  	 94		1	; 	goto 7509
		7508	[  0]	KSHORT	 93		5	; slot93 = 5
		7509	[  0]	CALL 	 91	2	2	; slot91 = tonumber(slot92)
		7510	[  0]	IST  	   		91	; if tonumber
		7511	[  0]	JMP  	 92		1	; 	goto 7513
		7512	[  0]	KSHORT	 91		5	; slot91 = 5
		7513	[  0]	CALL 	 89	0	2	; MULTRES = math.floor(math.floor)
		7514	[  0]	CALLM	 86	2	1	; slot86 = math.max(slot87, ...MULTRES)
		7515	[  0]	KSHORT	 87		1	; slot87 = 1
		7516	[  0]	MOV  	 88		86	; slot88 = math.max
		7517	[  0]	KSHORT	 89		1	; slot89 = 1
		7518	[  0]	FORI 	 87		637	; for math.floor = slot87,slot88,slot89 else goto 8156
		7519	[  0]	ISFC 	 91		80	; slot91 = slot80; if not slot80
		7520	[  0]	JMP  	 91		1	; 	goto 7522
		7521	[  0]	TGETV	 91	80	90	; slot91 = slot80[slot90]
		7522	[  0]	ISF  	   		91	; if not slot91
		7523	[  0]	JMP  	 92		631	; 	goto 8155
		7524	[  0]	UGET 	 92		36	; slot92 = uv36"unknwon"
		7525	[  0]	ISF  	   		92	; if not uv36"unknown"
		7526	[  0]	JMP  	 93		8	; 	goto 7535
		7527	[  0]	UGET 	 92		36	; slot92 = uv36"unknwon"
		7528	[  0]	TGETS	 92	92	253	; slot92 = uv36"unknown".getIconPath
		7529	[  0]	ISF  	   		92	; if not uv36"unknown".getIconPath
		7530	[  0]	JMP  	 93		4	; 	goto 7535
		7531	[  0]	UGET 	 92		36	; slot92 = uv36"unknwon"
		7532	[  0]	TGETS	 92	92	253	; slot92 = uv36"unknown".getIconPath
		7533	[  0]	MOV  	 94		91	; slot94 = slot91
		7534	[  0]	CALL 	 92	2	2	; slot92 = uv36"unknown".getIconPath(slot93)
		7535	[  0]	ISF  	   		92	; if not uv36"unknown".getIconPath
		7536	[  0]	JMP  	 93		618	; 	goto 8155
		7537	[  0]	UGET 	 93		14	; slot93 = uv14"unknwon"
		7538	[  0]	UGET 	 95		0	; slot95 = uv0"unknwon"
		7539	[  0]	MOV  	 96		92	; slot96 = uv36"unknown".getIconPath
		7540	[  0]	CALL 	 93	2	3	; slot93 = uv14"unknown"(slot94, uv0"unknown")
		7541	[  0]	ISF  	   		93	; if not uv14"unknown"
		7542	[  0]	JMP  	 94		612	; 	goto 8155
		7543	[  0]	UGET 	 94		0	; slot94 = uv0"unknwon"
		7544	[  0]	KSTR 	 95		26	; slot95 = "_roHoverProgs"
		7545	[  0]	UGET 	 96		0	; slot96 = uv0"unknwon"
		7546	[  0]	KSTR 	 97		26	; slot97 = "_roHoverProgs"
		7547	[  0]	TGETV	 96	96	97	; slot96 = uv0"unknown"[slot97]
		7548	[  0]	IST  	   		96	; if slot96
		7549	[  0]	JMP  	 97		1	; 	goto 7551
		7550	[  0]	TNEW 	 96		0	; slot96 = new table( array: 0, dict: 1)
		7551	[  0]	TSETV	 96	94	95	; uv0"unknown"[slot95] = slot96
		7552	[  0]	UGET 	 94		0	; slot94 = uv0"unknwon"
		7553	[  0]	KSTR 	 95		26	; slot95 = "_roHoverProgs"
		7554	[  0]	TGETV	 94	94	95	; slot94 = uv0"unknown"[slot95]
		7555	[  0]	UGET 	 95		0	; slot95 = uv0"unknwon"
		7556	[  0]	KSTR 	 96		26	; slot96 = "_roHoverProgs"
		7557	[  0]	TGETV	 95	95	96	; slot95 = uv0"unknown"[slot96]
		7558	[  0]	TGETV	 95	95	90	; slot95 = slot95[slot90]
		7559	[  0]	IST  	   		95	; if slot95
		7560	[  0]	JMP  	 96		1	; 	goto 7562
		7561	[  0]	KSHORT	 95		0	; slot95 = 0
		7562	[  0]	TSETV	 95	94	90	; slot94[slot90] = slot95
		7563	[  0]	GGET 	 94		393	; slot94 = _env["tonumber"]
		7564	[  0]	ISTC 	 96		5	; slot96 = uv0"unknown"._hoveredRandomOption.anchor.index; if uv0"unknown"._hoveredRandomOption.anchor.index
		7565	[  0]	JMP  	 96		1	; 	goto 7567
		7566	[  0]	KSHORT	 96		0	; slot96 = 0
		7567	[  0]	CALL 	 94	2	2	; slot94 = tonumber(slot95)
		7568	[  0]	ISNEV	 94		90	; if tonumber ~= slot90
		7569	[  0]	JMP  	 94		2	; 	goto 7572
		7570	[  0]	KSHORT	 94		1	; slot94 = 1
		7571	[  0]	JMP  	 95		1	; 	goto 7573
		7572	[  0]	KSHORT	 94		0	; slot94 = 0
		7573	[  0]	UGET 	 95		0	; slot95 = uv0"unknwon"
		7574	[  0]	KSTR 	 96		26	; slot96 = "_roHoverProgs"
		7575	[  0]	TGETV	 95	95	96	; slot95 = uv0"unknown"[slot96]
		7576	[  0]	TGETV	 95	95	90	; slot95 = slot95[slot90]
		7577	[  0]	KSHORT	 96		12	; slot96 = 12
		7578	[  0]	UGET 	 97		0	; slot97 = uv0"unknwon"
		7579	[  0]	KSTR 	 98		26	; slot98 = "_roHoverProgs"
		7580	[  0]	TGETV	 97	97	98	; slot97 = uv0"unknown"[slot98]
		7581	[  0]	SUBVV	 98	94	95	; slot98 = slot94 - slot95
		7582	[  0]	GGET 	 99		398	; slot99 = _env["math"]
		7583	[  0]	TGETS	 99	99	221	; slot99 = math.min
		7584	[  0]	ISTC 	101		7	; slot101 = slot7; if slot7
		7585	[  0]	JMP  	101		1	; 	goto 7587
		7586	[  0]	KNUM 	101		67	; slot101 = 0.016
		7587	[  0]	MULVV	101	101	96	; slot101 = slot101 * slot96
		7588	[  0]	KSHORT	102		1	; slot102 = 1
		7589	[  0]	CALL 	 99	2	3	; slot99 = math.min(slot100, slot101)
		7590	[  0]	MULVV	 98	98	99	; slot98 = slot98 * math.min
		7591	[  0]	ADDVV	 98	95	98	; slot98 = slot95 + slot98
		7592	[  0]	TSETV	 98	97	90	; slot97[slot90] = slot98
		7593	[  0]	UGET 	 97		0	; slot97 = uv0"unknwon"
		7594	[  0]	KSTR 	 98		26	; slot98 = "_roHoverProgs"
		7595	[  0]	TGETV	 97	97	98	; slot97 = uv0"unknown"[slot98]
		7596	[  0]	TGETV	 97	97	90	; slot97 = slot97[slot90]
		7597	[  0]	MULNV	 97	97	66	; slot97 = 0.15 * slot97
		7598	[  0]	ADDNV	 97	97	10	; slot97 = 1 + slot97
		7599	[  0]	MOV  	100		93	; slot100 = uv14"unknown"
		7600	[  0]	TGETS	 98	93	339	; slot98 = uv14"unknown".getDimensions
		7601	[  0]	CALL 	 98	3	2	; slot98, slot99 = uv14"unknown".getDimensions(math.min)
		7602	[  0]	UGET 	100		36	; slot100 = uv36"unknwon"
		7603	[  0]	KSTR 	101		25	; slot101 = "iconCanvasSize"
		7604	[  0]	TGETV	100	100	101	; slot100 = uv36"unknown"[slot101]
		7605	[  0]	DIVVV	100	84	100	; slot100 = uv5"unknown" / slot100
		7606	[  0]	MULVV	101	100	97	; slot101 = slot100 * slot97
		7607	[  0]	SUBVN	102	90	10	; slot102 = slot90 - 1
		7608	[  0]	ADDVV	103	84	85	; slot103 = uv5"unknown" + uv5"unknown"
		7609	[  0]	MULVV	102	102	103	; slot102 = slot102 * slot103
		7610	[  0]	ADDVV	102	82	102	; slot102 = slot82 + slot102
		7611	[  0]	GGET 	103		398	; slot103 = _env["math"]
		7612	[  0]	TGETS	103	103	380	; slot103 = math.floor
		7613	[  0]	MULVN	105	84	6	; slot105 = uv5"unknown" * 0.5
		7614	[  0]	ADDVV	105	102	105	; slot105 = slot102 + slot105
		7615	[  0]	CALL 	103	2	2	; slot103 = math.floor(slot104)
		7616	[  0]	GGET 	104		398	; slot104 = _env["math"]
		7617	[  0]	TGETS	104	104	380	; slot104 = math.floor
		7618	[  0]	MULVN	106	84	6	; slot106 = uv5"unknown" * 0.5
		7619	[  0]	ADDVV	106	83	106	; slot106 = slot83 + slot106
		7620	[  0]	CALL 	104	2	2	; slot104 = math.floor(slot105)
		7621	[  0]	MULVN	105	98	6	; slot105 = uv14"unknown".getDimensions * 0.5
		7622	[  0]	MULVN	106	99	6	; slot106 = math.min * 0.5
		7623	[  0]	UGET 	107		37	; slot107 = uv37"unknwon"
		7624	[  0]	KSTR 	109		160	; slot109 = "rarity"
		7625	[  0]	TGETV	109	91	109	; slot109 = slot91[slot109]
		7626	[  0]	CALL 	107	2	2	; slot107 = uv37"unknown"(slot108)
		7627	[  0]	ISNES	107		357	; if uv37"unknown" ~= "legendary"
		7628	[  0]	JMP  	108		67	; 	goto 7696
		7629	[  0]	UGET 	108		38	; slot108 = uv38"unknwon"
		7630	[  0]	CALL 	108	2	1	; slot108 = uv38"unknown"()
		7631	[  0]	UGET 	109		39	; slot109 = uv39"unknwon"
		7632	[  0]	CALL 	109	2	1	; slot109 = uv39"unknown"()
		7633	[  0]	ISF  	   		108	; if not uv38"unknown"
		7634	[  0]	JMP  	110		61	; 	goto 7696
		7635	[  0]	ISF  	   		109	; if not uv39"unknown"
		7636	[  0]	JMP  	110		59	; 	goto 7696
		7637	[  0]	GGET 	110		424	; slot110 = _env["love"]
		7638	[  0]	TGETS	110	110	343	; slot110 = love.graphics
		7639	[  0]	KSTR 	111		24	; slot111 = "getShader"
		7640	[  0]	TGETV	110	110	111	; slot110 = love.graphics[slot111]
		7641	[  0]	CALL 	110	2	1	; slot110 = slot110()
		7642	[  0]	GGET 	111		424	; slot111 = _env["love"]
		7643	[  0]	TGETS	111	111	343	; slot111 = love.graphics
		7644	[  0]	TGETS	111	111	236	; slot111 = love.graphics.getBlendMode
		7645	[  0]	CALL 	111	3	1	; slot111, slot112 = love.graphics.getBlendMode()
		7646	[  0]	GGET 	113		424	; slot113 = _env["love"]
		7647	[  0]	TGETS	113	113	343	; slot113 = love.graphics
		7648	[  0]	TGETS	113	113	292	; slot113 = love.graphics.setShader
		7649	[  0]	MOV  	115		108	; slot115 = uv38"unknown"
		7650	[  0]	CALL 	113	1	2	;  = love.graphics.setShader(slot114)
		7651	[  0]	GGET 	113		424	; slot113 = _env["love"]
		7652	[  0]	TGETS	113	113	343	; slot113 = love.graphics
		7653	[  0]	TGETS	113	113	235	; slot113 = love.graphics.setBlendMode
		7654	[  0]	KSTR 	115		234	; slot115 = "add"
		7655	[  0]	KSTR 	116		233	; slot116 = "alphamultiply"
		7656	[  0]	CALL 	113	1	3	;  = love.graphics.setBlendMode(slot114, slot115)
		7657	[  0]	TDUP 	113		23	; slot113 = copy table#k23
		7658	[  0]	MOV  	116		108	; slot116 = uv38"unknown"
		7659	[  0]	TGETS	114	108	243	; slot114 = uv38"unknown".send
		7660	[  0]	KSTR 	117		22	; slot117 = "glowColor"
		7661	[  0]	TNEW 	118		5	; slot118 = new table( array: 5, dict: 1)
		7662	[  0]	TGETB	119	113	1	; slot119 = slot113[1]
		7663	[  0]	TSETB	119	118	1	; slot118[1] = slot119
		7664	[  0]	TGETB	119	113	2	; slot119 = slot113[2]
		7665	[  0]	TSETB	119	118	2	; slot118[2] = slot119
		7666	[  0]	TGETB	119	113	3	; slot119 = slot113[3]
		7667	[  0]	TSETB	119	118	3	; slot118[3] = slot119
		7668	[  0]	MULNV	119	35	68	; slot119 = 0.55 * slot35
		7669	[  0]	TSETB	119	118	4	; slot118[4] = slot119
		7670	[  0]	CALL 	114	1	4	;  = uv38"unknown".send(slot115, uv38"unknown", slot117)
		7671	[  0]	MULVN	114	84	69	; slot114 = uv5"unknown" * 1.7
		7672	[  0]	MULVV	114	114	97	; slot114 = slot114 * slot97
		7673	[  0]	GGET 	115		424	; slot115 = _env["love"]
		7674	[  0]	TGETS	115	115	343	; slot115 = love.graphics
		7675	[  0]	TGETS	115	115	309	; slot115 = love.graphics.draw
		7676	[  0]	MOV  	117		109	; slot117 = uv39"unknown"
		7677	[  0]	MOV  	118		103	; slot118 = math.floor
		7678	[  0]	MOV  	119		104	; slot119 = math.floor
		7679	[  0]	KSHORT	120		0	; slot120 = 0
		7680	[  0]	MOV  	121		114	; slot121 = slot114
		7681	[  0]	MOV  	122		114	; slot122 = slot114
		7682	[  0]	KNUM 	123		6	; slot123 = 0.5
		7683	[  0]	KNUM 	124		6	; slot124 = 0.5
		7684	[  0]	CALL 	115	1	9	;  = love.graphics.draw(uv38"unknown", uv39"unknown", math.floor, math.floor, slot120, slot121, slot122, slot123)
		7685	[  0]	GGET 	115		424	; slot115 = _env["love"]
		7686	[  0]	TGETS	115	115	343	; slot115 = love.graphics
		7687	[  0]	TGETS	115	115	292	; slot115 = love.graphics.setShader
		7688	[  0]	MOV  	117		110	; slot117 = slot110
		7689	[  0]	CALL 	115	1	2	;  = love.graphics.setShader(uv38"unknown")
		7690	[  0]	GGET 	115		424	; slot115 = _env["love"]
		7691	[  0]	TGETS	115	115	343	; slot115 = love.graphics
		7692	[  0]	TGETS	115	115	235	; slot115 = love.graphics.setBlendMode
		7693	[  0]	MOV  	117		111	; slot117 = love.graphics.getBlendMode
		7694	[  0]	MOV  	118		112	; slot118 = slot112
		7695	[  0]	CALL 	115	1	3	;  = love.graphics.setBlendMode(uv38"unknown", love.graphics.getBlendMode)
		7696	[  0]	UGET 	108		15	; slot108 = uv15"unknwon"
		7697	[  0]	CALL 	108	2	1	; slot108 = uv15"unknown"()
		7698	[  0]	ISF  	   		108	; if not uv15"unknown"
		7699	[  0]	JMP  	109		70	; 	goto 7770
		7700	[  0]	MOV  	111		108	; slot111 = uv15"unknown"
		7701	[  0]	TGETS	109	108	243	; slot109 = uv15"unknown".send
		7702	[  0]	KSTR 	112		242	; slot112 = "texelStep"
		7703	[  0]	TNEW 	113		3	; slot113 = new table( array: 3, dict: 1)
		7704	[  0]	DIVNV	114	98	10	; slot114 = 1 / uv14"unknown".getDimensions
		7705	[  0]	TSETB	114	113	1	; slot113[1] = slot114
		7706	[  0]	DIVNV	114	99	10	; slot114 = 1 / math.min
		7707	[  0]	TSETB	114	113	2	; slot113[2] = slot114
		7708	[  0]	CALL 	109	1	4	;  = uv15"unknown".send(slot110, uv15"unknown", slot112)
		7709	[  0]	ISFC 	109		0	; slot109 = slot0; if not slot0
		7710	[  0]	JMP  	109		5	; 	goto 7716
		7711	[  0]	TGETS	109	0	368	; slot109 = slot0.imprintPanel
		7712	[  0]	ISF  	   		109	; if not <unknown table>.imprintPanel
		7713	[  0]	JMP  	110		2	; 	goto 7716
		7714	[  0]	TGETS	109	0	368	; slot109 = slot0.imprintPanel
		7715	[  0]	TGETS	109	109	241	; slot109 = <unknown table>.imprintPanel.randomOption
		7716	[  0]	ISF  	   		109	; if not <unknown table>.imprintPanel.randomOption
		7717	[  0]	JMP  	110		3	; 	goto 7721
		7718	[  0]	TGETS	110	109	240	; slot110 = <unknown table>.imprintPanel.randomOption.outlineColor
		7719	[  0]	IST  	   		110	; if <unknown table>.imprintPanel.randomOption.outlineColor
		7720	[  0]	JMP  	111		1	; 	goto 7722
		7721	[  0]	TDUP 	110		21	; slot110 = copy table#k21
		7722	[  0]	MOV  	113		108	; slot113 = uv15"unknown"
		7723	[  0]	TGETS	111	108	243	; slot111 = uv15"unknown".send
		7724	[  0]	KSTR 	114		240	; slot114 = "outlineColor"
		7725	[  0]	TNEW 	115		5	; slot115 = new table( array: 5, dict: 1)
		7726	[  0]	TGETB	116	110	1	; slot116 = slot110[1]
		7727	[  0]	TSETB	116	115	1	; slot115[1] = slot116
		7728	[  0]	TGETB	116	110	2	; slot116 = slot110[2]
		7729	[  0]	TSETB	116	115	2	; slot115[2] = slot116
		7730	[  0]	TGETB	116	110	3	; slot116 = slot110[3]
		7731	[  0]	TSETB	116	115	3	; slot115[3] = slot116
		7732	[  0]	TGETB	116	110	4	; slot116 = slot110[4]
		7733	[  0]	IST  	   		116	; if slot116
		7734	[  0]	JMP  	117		1	; 	goto 7736
		7735	[  0]	KSHORT	116		1	; slot116 = 1
		7736	[  0]	MULVV	116	116	35	; slot116 = slot116 * slot35
		7737	[  0]	TSETB	116	115	4	; slot115[4] = slot116
		7738	[  0]	CALL 	111	1	4	;  = uv15"unknown".send(slot112, uv15"unknown", slot114)
		7739	[  0]	MOV  	113		108	; slot113 = uv15"unknown"
		7740	[  0]	TGETS	111	108	243	; slot111 = uv15"unknown".send
		7741	[  0]	KSTR 	114		238	; slot114 = "threshold"
		7742	[  0]	KNUM 	115		22	; slot115 = 0.05
		7743	[  0]	CALL 	111	1	4	;  = uv15"unknown".send(slot112, uv15"unknown", slot114)
		7744	[  0]	MOV  	113		108	; slot113 = uv15"unknown"
		7745	[  0]	TGETS	111	108	243	; slot111 = uv15"unknown".send
		7746	[  0]	KSTR 	114		237	; slot114 = "radiusPx"
		7747	[  0]	KNUM 	115		23	; slot115 = 1.15
		7748	[  0]	CALL 	111	1	4	;  = uv15"unknown".send(slot112, uv15"unknown", slot114)
		7749	[  0]	GGET 	111		424	; slot111 = _env["love"]
		7750	[  0]	TGETS	111	111	343	; slot111 = love.graphics
		7751	[  0]	TGETS	111	111	292	; slot111 = love.graphics.setShader
		7752	[  0]	MOV  	113		108	; slot113 = uv15"unknown"
		7753	[  0]	CALL 	111	1	2	;  = love.graphics.setShader(slot112)
		7754	[  0]	GGET 	111		424	; slot111 = _env["love"]
		7755	[  0]	TGETS	111	111	343	; slot111 = love.graphics
		7756	[  0]	TGETS	111	111	309	; slot111 = love.graphics.draw
		7757	[  0]	MOV  	113		93	; slot113 = uv14"unknown"
		7758	[  0]	MOV  	114		103	; slot114 = math.floor
		7759	[  0]	MOV  	115		104	; slot115 = math.floor
		7760	[  0]	KSHORT	116		0	; slot116 = 0
		7761	[  0]	MOV  	117		101	; slot117 = slot101
		7762	[  0]	MOV  	118		101	; slot118 = slot101
		7763	[  0]	MOV  	119		105	; slot119 = slot105
		7764	[  0]	MOV  	120		106	; slot120 = slot106
		7765	[  0]	CALL 	111	1	9	;  = love.graphics.draw(slot112, uv14"unknown", math.floor, math.floor, slot116, slot117, slot118, slot119)
		7766	[  0]	GGET 	111		424	; slot111 = _env["love"]
		7767	[  0]	TGETS	111	111	343	; slot111 = love.graphics
		7768	[  0]	TGETS	111	111	292	; slot111 = love.graphics.setShader
		7769	[  0]	CALL 	111	1	1	;  = love.graphics.setShader()
		7770	[  0]	GGET 	109		424	; slot109 = _env["love"]
		7771	[  0]	TGETS	109	109	343	; slot109 = love.graphics
		7772	[  0]	TGETS	109	109	310	; slot109 = love.graphics.setColor
		7773	[  0]	KSHORT	111		1	; slot111 = 1
		7774	[  0]	KSHORT	112		1	; slot112 = 1
		7775	[  0]	KSHORT	113		1	; slot113 = 1
		7776	[  0]	MULNV	114	35	10	; slot114 = 1 * slot35
		7777	[  0]	CALL 	109	1	5	;  = love.graphics.setColor(slot110, slot111, slot112, slot113)
		7778	[  0]	GGET 	109		424	; slot109 = _env["love"]
		7779	[  0]	TGETS	109	109	343	; slot109 = love.graphics
		7780	[  0]	TGETS	109	109	309	; slot109 = love.graphics.draw
		7781	[  0]	MOV  	111		93	; slot111 = uv14"unknown"
		7782	[  0]	MOV  	112		103	; slot112 = math.floor
		7783	[  0]	MOV  	113		104	; slot113 = math.floor
		7784	[  0]	KSHORT	114		0	; slot114 = 0
		7785	[  0]	MOV  	115		101	; slot115 = slot101
		7786	[  0]	MOV  	116		101	; slot116 = slot101
		7787	[  0]	MOV  	117		105	; slot117 = slot105
		7788	[  0]	MOV  	118		106	; slot118 = slot106
		7789	[  0]	CALL 	109	1	9	;  = love.graphics.draw(slot110, uv14"unknown", math.floor, math.floor, slot114, slot115, slot116, slot117)
		7790	[  0]	ISF  	   		91	; if not slot91
		7791	[  0]	JMP  	109		317	; 	goto 8109
		7792	[  0]	KSTR 	109		160	; slot109 = "rarity"
		7793	[  0]	TGETV	109	91	109	; slot109 = slot91[slot109]
		7794	[  0]	ISF  	   		109	; if not slot109
		7795	[  0]	JMP  	110		313	; 	goto 8109
		7796	[  0]	GGET 	109		136	; slot109 = _env["_G"]
		7797	[  0]	KSTR 	110		20	; slot110 = "Render"
		7798	[  0]	TGETV	109	109	110	; slot109 = _G[slot110]
		7799	[  0]	ISF  	   		109	; if not slot109
		7800	[  0]	JMP  	110		308	; 	goto 8109
		7801	[  0]	GGET 	109		136	; slot109 = _env["_G"]
		7802	[  0]	KSTR 	110		20	; slot110 = "Render"
		7803	[  0]	TGETV	109	109	110	; slot109 = _G[slot110]
		7804	[  0]	KSTR 	110		19	; slot110 = "drawLegendarySpriteEffects"
		7805	[  0]	TGETV	109	109	110	; slot109 = slot109[slot110]
		7806	[  0]	ISF  	   		109	; if not slot109
		7807	[  0]	JMP  	110		301	; 	goto 8109
		7808	[  0]	MOV  	109		107	; slot109 = uv37"unknown"
		7809	[  0]	ISEQS	109		355	; if uv37"unknown" == "rare"
		7810	[  0]	JMP  	110		4	; 	goto 7815
		7811	[  0]	ISEQS	109		357	; if uv37"unknown" == "legendary"
		7812	[  0]	JMP  	110		2	; 	goto 7815
		7813	[  0]	ISNES	109		351	; if uv37"unknown" ~= "advanced"
		7814	[  0]	JMP  	110		18	; 	goto 7833
		7815	[  0]	GGET 	110		136	; slot110 = _env["_G"]
		7816	[  0]	KSTR 	111		20	; slot111 = "Render"
		7817	[  0]	TGETV	110	110	111	; slot110 = _G[slot111]
		7818	[  0]	KSTR 	111		19	; slot111 = "drawLegendarySpriteEffects"
		7819	[  0]	TGETV	110	110	111	; slot110 = slot110[slot111]
		7820	[  0]	MOV  	112		0	; slot112 = slot0
		7821	[  0]	MOV  	113		91	; slot113 = slot91
		7822	[  0]	MOV  	114		93	; slot114 = uv14"unknown"
		7823	[  0]	KPRI 	115		0	; slot115 = nil
		7824	[  0]	MOV  	116		103	; slot116 = math.floor
		7825	[  0]	MOV  	117		104	; slot117 = math.floor
		7826	[  0]	MOV  	118		101	; slot118 = slot101
		7827	[  0]	MOV  	119		101	; slot119 = slot101
		7828	[  0]	KSHORT	120		0	; slot120 = 0
		7829	[  0]	MOV  	121		105	; slot121 = slot105
		7830	[  0]	MOV  	122		106	; slot122 = slot106
		7831	[  0]	CALL 	110	1	12	;  = slot110(slot111, slot112, slot113, uv14"unknown", slot115, math.floor, math.floor, slot118, slot119, slot120, slot121)
		7832	[  0]	JMP  	110		276	; 	goto 8109
		7833	[  0]	ISNES	109		267	; if uv37"unknown" ~= "prism"
		7834	[  0]	JMP  	110		274	; 	goto 8109
		7835	[  0]	GGET 	110		136	; slot110 = _env["_G"]
		7836	[  0]	KSTR 	111		20	; slot111 = "Render"
		7837	[  0]	TGETV	110	110	111	; slot110 = _G[slot111]
		7838	[  0]	KSTR 	111		18	; slot111 = "getPrismFoilShader"
		7839	[  0]	TGETV	110	110	111	; slot110 = slot110[slot111]
		7840	[  0]	ISF  	   		110	; if not slot110
		7841	[  0]	JMP  	111		267	; 	goto 8109
		7842	[  0]	GGET 	110		136	; slot110 = _env["_G"]
		7843	[  0]	KSTR 	111		20	; slot111 = "Render"
		7844	[  0]	TGETV	110	110	111	; slot110 = _G[slot111]
		7845	[  0]	KSTR 	111		18	; slot111 = "getPrismFoilShader"
		7846	[  0]	TGETV	110	110	111	; slot110 = slot110[slot111]
		7847	[  0]	CALL 	110	2	1	; slot110 = slot110()
		7848	[  0]	ISF  	   		110	; if not slot110
		7849	[  0]	JMP  	111		259	; 	goto 8109
		7850	[  0]	ISF  	   		0	; if not slot0
		7851	[  0]	JMP  	111		11	; 	goto 7863
		7852	[  0]	TGETS	111	0	287	; slot111 = slot0.battle
		7853	[  0]	ISF  	   		111	; if not <unknown table>.battle
		7854	[  0]	JMP  	112		8	; 	goto 7863
		7855	[  0]	TGETS	111	0	287	; slot111 = slot0.battle
		7856	[  0]	TGETS	111	111	286	; slot111 = <unknown table>.battle.jackpotFoil
		7857	[  0]	IST  	   		111	; if <unknown table>.battle.jackpotFoil
		7858	[  0]	JMP  	112		5	; 	goto 7864
		7859	[  0]	TGETS	111	0	287	; slot111 = slot0.battle
		7860	[  0]	TGETS	111	111	285	; slot111 = <unknown table>.battle.jackpotRainbow
		7861	[  0]	IST  	   		111	; if <unknown table>.battle.jackpotRainbow
		7862	[  0]	JMP  	112		1	; 	goto 7864
		7863	[  0]	TNEW 	111		0	; slot111 = new table( array: 0, dict: 1)
		7864	[  0]	TGETS	112	111	231	; slot112 = slot111.alpha
		7865	[  0]	ISEQP	112		0	; if <unknown table>.alpha == nil
		7866	[  0]	JMP  	112		3	; 	goto 7870
		7867	[  0]	TGETS	112	111	231	; slot112 = slot111.alpha
		7868	[  0]	IST  	   		112	; if <unknown table>.alpha
		7869	[  0]	JMP  	113		1	; 	goto 7871
		7870	[  0]	KNUM 	112		38	; slot112 = 0.32
		7871	[  0]	GGET 	113		424	; slot113 = _env["love"]
		7872	[  0]	TGETS	113	113	343	; slot113 = love.graphics
		7873	[  0]	KSTR 	114		24	; slot114 = "getShader"
		7874	[  0]	TGETV	113	113	114	; slot113 = love.graphics[slot114]
		7875	[  0]	CALL 	113	2	1	; slot113 = slot113()
		7876	[  0]	GGET 	114		424	; slot114 = _env["love"]
		7877	[  0]	TGETS	114	114	343	; slot114 = love.graphics
		7878	[  0]	TGETS	114	114	236	; slot114 = love.graphics.getBlendMode
		7879	[  0]	CALL 	114	3	1	; slot114, slot115 = love.graphics.getBlendMode()
		7880	[  0]	GGET 	116		424	; slot116 = _env["love"]
		7881	[  0]	TGETS	116	116	343	; slot116 = love.graphics
		7882	[  0]	TGETS	116	116	292	; slot116 = love.graphics.setShader
		7883	[  0]	MOV  	118		110	; slot118 = slot110
		7884	[  0]	CALL 	116	1	2	;  = love.graphics.setShader(math.floor)
		7885	[  0]	KSTR 	116		17	; slot116 = "angleDeg"
		7886	[  0]	TGETV	116	111	116	; slot116 = slot111[slot116]
		7887	[  0]	IST  	   		116	; if slot116
		7888	[  0]	JMP  	117		1	; 	goto 7890
		7889	[  0]	KSHORT	116		20	; slot116 = 20
		7890	[  0]	GGET 	117		398	; slot117 = _env["math"]
		7891	[  0]	TGETS	117	117	283	; slot117 = math.pi
		7892	[  0]	MULVV	116	116	117	; slot116 = slot116 * math.pi
		7893	[  0]	DIVVN	116	116	70	; slot116 = slot116 / 180
		7894	[  0]	GGET 	117		398	; slot117 = _env["math"]
		7895	[  0]	KSTR 	118		16	; slot118 = "cos"
		7896	[  0]	TGETV	117	117	118	; slot117 = math[slot118]
		7897	[  0]	MOV  	119		116	; slot119 = slot116
		7898	[  0]	CALL 	117	2	2	; slot117 = slot117(slot118)
		7899	[  0]	GGET 	118		398	; slot118 = _env["math"]
		7900	[  0]	TGETS	118	118	282	; slot118 = math.sin
		7901	[  0]	MOV  	120		116	; slot120 = slot116
		7902	[  0]	CALL 	118	2	2	; slot118 = math.sin(slot119)
		7903	[  0]	TGETS	119	111	284	; slot119 = slot111.cycleSec
		7904	[  0]	IST  	   		119	; if <unknown table>.cycleSec
		7905	[  0]	JMP  	120		1	; 	goto 7907
		7906	[  0]	KSHORT	119		4	; slot119 = 4
		7907	[  0]	MOV  	122		110	; slot122 = slot110
		7908	[  0]	TGETS	120	110	243	; slot120 = slot110.send
		7909	[  0]	KSTR 	123		79	; slot123 = "u_time"
		7910	[  0]	GGET 	124		136	; slot124 = _env["_G"]
		7911	[  0]	KSTR 	125		20	; slot125 = "Render"
		7912	[  0]	TGETV	124	124	125	; slot124 = _G[slot125]
		7913	[  0]	KSTR 	125		15	; slot125 = "getPhasedSweepTime"
		7914	[  0]	TGETV	124	124	125	; slot124 = slot124[slot125]
		7915	[  0]	GGET 	126		424	; slot126 = _env["love"]
		7916	[  0]	TGETS	126	126	423	; slot126 = love.timer
		7917	[  0]	TGETS	126	126	422	; slot126 = love.timer.getTime
		7918	[  0]	CALL 	126	2	1	; slot126 = love.timer.getTime()
		7919	[  0]	MOV  	127		91	; slot127 = slot91
		7920	[  0]	MOV  	128		119	; slot128 = slot119
		7921	[  0]	CALL 	124	0	4	; MULTRES = slot124(slot125, love.timer.getTime, slot127)
		7922	[  0]	CALLM	120	1	2	;  = <unknown table>.send(slot121, slot122, ...MULTRES)
		7923	[  0]	MOV  	122		110	; slot122 = slot110
		7924	[  0]	TGETS	120	110	243	; slot120 = slot110.send
		7925	[  0]	KSTR 	123		14	; slot123 = "u_alpha"
		7926	[  0]	ISTC 	124		35	; slot124 = slot35; if slot35
		7927	[  0]	JMP  	124		1	; 	goto 7929
		7928	[  0]	KSHORT	124		1	; slot124 = 1
		7929	[  0]	MULVV	124	112	124	; slot124 = slot112 * slot124
		7930	[  0]	CALL 	120	1	4	;  = <unknown table>.send(slot121, slot122, slot123)
		7931	[  0]	MOV  	122		110	; slot122 = slot110
		7932	[  0]	TGETS	120	110	243	; slot120 = slot110.send
		7933	[  0]	KSTR 	123		75	; slot123 = "u_dir"
		7934	[  0]	TNEW 	124		3	; slot124 = new table( array: 3, dict: 1)
		7935	[  0]	TSETB	117	124	1	; slot124[1] = slot117
		7936	[  0]	TSETB	118	124	2	; slot124[2] = math.sin
		7937	[  0]	CALL 	120	1	4	;  = <unknown table>.send(slot121, slot122, slot123)
		7938	[  0]	MOV  	122		110	; slot122 = slot110
		7939	[  0]	TGETS	120	110	243	; slot120 = slot110.send
		7940	[  0]	KSTR 	123		73	; slot123 = "u_cycle"
		7941	[  0]	MOV  	124		119	; slot124 = slot119
		7942	[  0]	CALL 	120	1	4	;  = <unknown table>.send(slot121, slot122, slot123)
		7943	[  0]	MOV  	122		110	; slot122 = slot110
		7944	[  0]	TGETS	120	110	243	; slot120 = slot110.send
		7945	[  0]	KSTR 	123		72	; slot123 = "u_scale"
		7946	[  0]	TGETS	124	111	379	; slot124 = slot111.scale
		7947	[  0]	IST  	   		124	; if <unknown table>.scale
		7948	[  0]	JMP  	125		1	; 	goto 7950
		7949	[  0]	KNUM 	124		36	; slot124 = 2.5
		7950	[  0]	CALL 	120	1	4	;  = <unknown table>.send(slot121, slot122, slot123)
		7951	[  0]	KSTR 	120		13	; slot120 = "grain"
		7952	[  0]	TGETV	120	111	120	; slot120 = slot111[slot120]
		7953	[  0]	IST  	   		120	; if slot120
		7954	[  0]	JMP  	121		1	; 	goto 7956
		7955	[  0]	TNEW 	120		0	; slot120 = new table( array: 0, dict: 1)
		7956	[  0]	KSTR 	121		12	; slot121 = "film"
		7957	[  0]	TGETV	121	111	121	; slot121 = slot111[slot121]
		7958	[  0]	IST  	   		121	; if slot121
		7959	[  0]	JMP  	122		1	; 	goto 7961
		7960	[  0]	TNEW 	121		0	; slot121 = new table( array: 0, dict: 1)
		7961	[  0]	MOV  	124		110	; slot124 = slot110
		7962	[  0]	TGETS	122	110	243	; slot122 = slot110.send
		7963	[  0]	KSTR 	125		71	; slot125 = "u_grainScale"
		7964	[  0]	TGETS	126	120	379	; slot126 = slot120.scale
		7965	[  0]	IST  	   		126	; if <unknown table>.scale
		7966	[  0]	JMP  	127		1	; 	goto 7968
		7967	[  0]	KSHORT	126		3	; slot126 = 3
		7968	[  0]	CALL 	122	1	4	;  = <unknown table>.send(slot123, slot124, slot125)
		7969	[  0]	MOV  	124		110	; slot124 = slot110
		7970	[  0]	TGETS	122	110	243	; slot122 = slot110.send
		7971	[  0]	KSTR 	125		70	; slot125 = "u_grainAmp"
		7972	[  0]	KSTR 	126		11	; slot126 = "amp"
		7973	[  0]	TGETV	126	120	126	; slot126 = slot120[slot126]
		7974	[  0]	IST  	   		126	; if slot126
		7975	[  0]	JMP  	127		1	; 	goto 7977
		7976	[  0]	KNUM 	126		18	; slot126 = 0.2
		7977	[  0]	CALL 	122	1	4	;  = <unknown table>.send(slot123, slot124, slot125)
		7978	[  0]	MOV  	124		110	; slot124 = slot110
		7979	[  0]	TGETS	122	110	243	; slot122 = slot110.send
		7980	[  0]	KSTR 	125		69	; slot125 = "u_filmFreq"
		7981	[  0]	KSTR 	126		10	; slot126 = "freq"
		7982	[  0]	TGETV	126	121	126	; slot126 = slot121[slot126]
		7983	[  0]	IST  	   		126	; if slot126
		7984	[  0]	JMP  	127		1	; 	goto 7986
		7985	[  0]	KSHORT	126		2	; slot126 = 2
		7986	[  0]	CALL 	122	1	4	;  = <unknown table>.send(slot123, slot124, slot125)
		7987	[  0]	MOV  	124		110	; slot124 = slot110
		7988	[  0]	TGETS	122	110	243	; slot122 = slot110.send
		7989	[  0]	KSTR 	125		68	; slot125 = "u_filmAmp"
		7990	[  0]	KSTR 	126		11	; slot126 = "amp"
		7991	[  0]	TGETV	126	121	126	; slot126 = slot121[slot126]
		7992	[  0]	IST  	   		126	; if slot126
		7993	[  0]	JMP  	127		1	; 	goto 7995
		7994	[  0]	KNUM 	126		21	; slot126 = 0.25
		7995	[  0]	CALL 	122	1	4	;  = <unknown table>.send(slot123, slot124, slot125)
		7996	[  0]	MOV  	124		110	; slot124 = slot110
		7997	[  0]	TGETS	122	110	243	; slot122 = slot110.send
		7998	[  0]	KSTR 	125		67	; slot125 = "u_specular"
		7999	[  0]	KSTR 	126		9	; slot126 = "specular"
		8000	[  0]	TGETV	126	111	126	; slot126 = slot111[slot126]
		8001	[  0]	IST  	   		126	; if slot126
		8002	[  0]	JMP  	127		1	; 	goto 8004
		8003	[  0]	KNUM 	126		29	; slot126 = 0.35
		8004	[  0]	CALL 	122	1	4	;  = <unknown table>.send(slot123, slot124, slot125)
		8005	[  0]	MOV  	124		110	; slot124 = slot110
		8006	[  0]	TGETS	122	110	243	; slot122 = slot110.send
		8007	[  0]	KSTR 	125		66	; slot125 = "u_fresnelPow"
		8008	[  0]	KSTR 	126		8	; slot126 = "fresnelPow"
		8009	[  0]	TGETV	126	111	126	; slot126 = slot111[slot126]
		8010	[  0]	IST  	   		126	; if slot126
		8011	[  0]	JMP  	127		1	; 	goto 8013
		8012	[  0]	KNUM 	126		36	; slot126 = 2.5
		8013	[  0]	CALL 	122	1	4	;  = <unknown table>.send(slot123, slot124, slot125)
		8014	[  0]	MOV  	124		110	; slot124 = slot110
		8015	[  0]	TGETS	122	110	243	; slot122 = slot110.send
		8016	[  0]	KSTR 	125		65	; slot125 = "u_colorGain"
		8017	[  0]	KSTR 	126		7	; slot126 = "colorGain"
		8018	[  0]	TGETV	126	111	126	; slot126 = slot111[slot126]
		8019	[  0]	IST  	   		126	; if slot126
		8020	[  0]	JMP  	127		1	; 	goto 8022
		8021	[  0]	KSHORT	126		1	; slot126 = 1
		8022	[  0]	CALL 	122	1	4	;  = <unknown table>.send(slot123, slot124, slot125)
		8023	[  0]	MOV  	124		110	; slot124 = slot110
		8024	[  0]	TGETS	122	110	243	; slot122 = slot110.send
		8025	[  0]	KSTR 	125		64	; slot125 = "u_saturation"
		8026	[  0]	KSTR 	126		6	; slot126 = "saturation"
		8027	[  0]	TGETV	126	111	126	; slot126 = slot111[slot126]
		8028	[  0]	IST  	   		126	; if slot126
		8029	[  0]	JMP  	127		1	; 	goto 8031
		8030	[  0]	KSHORT	126		1	; slot126 = 1
		8031	[  0]	CALL 	122	1	4	;  = <unknown table>.send(slot123, slot124, slot125)
		8032	[  0]	MOV  	124		110	; slot124 = slot110
		8033	[  0]	TGETS	122	110	243	; slot122 = slot110.send
		8034	[  0]	KSTR 	125		63	; slot125 = "u_mixBP"
		8035	[  0]	KSTR 	126		5	; slot126 = "mixBP"
		8036	[  0]	TGETV	126	111	126	; slot126 = slot111[slot126]
		8037	[  0]	IST  	   		126	; if slot126
		8038	[  0]	JMP  	127		1	; 	goto 8040
		8039	[  0]	KNUM 	126		68	; slot126 = 0.55
		8040	[  0]	CALL 	122	1	4	;  = <unknown table>.send(slot123, slot124, slot125)
		8041	[  0]	MOV  	124		110	; slot124 = slot110
		8042	[  0]	TGETS	122	110	243	; slot122 = slot110.send
		8043	[  0]	KSTR 	125		4	; slot125 = "u_frameUV"
		8044	[  0]	TDUP 	126		3	; slot126 = copy table#k3
		8045	[  0]	CALL 	122	1	4	;  = <unknown table>.send(slot123, slot124, slot125)
		8046	[  0]	GGET 	122		424	; slot122 = _env["love"]
		8047	[  0]	TGETS	122	122	343	; slot122 = love.graphics
		8048	[  0]	TGETS	122	122	310	; slot122 = love.graphics.setColor
		8049	[  0]	KSHORT	124		1	; slot124 = 1
		8050	[  0]	KSHORT	125		1	; slot125 = 1
		8051	[  0]	KSHORT	126		1	; slot126 = 1
		8052	[  0]	ISTC 	127		35	; slot127 = slot35; if slot35
		8053	[  0]	JMP  	127		1	; 	goto 8055
		8054	[  0]	KSHORT	127		1	; slot127 = 1
		8055	[  0]	CALL 	122	1	5	;  = love.graphics.setColor(slot123, slot124, slot125, slot126)
		8056	[  0]	ISEQP	115		0	; if slot115 == nil
		8057	[  0]	JMP  	122		7	; 	goto 8065
		8058	[  0]	GGET 	122		424	; slot122 = _env["love"]
		8059	[  0]	TGETS	122	122	343	; slot122 = love.graphics
		8060	[  0]	TGETS	122	122	235	; slot122 = love.graphics.setBlendMode
		8061	[  0]	KSTR 	124		234	; slot124 = "add"
		8062	[  0]	KSTR 	125		233	; slot125 = "alphamultiply"
		8063	[  0]	CALL 	122	1	3	;  = love.graphics.setBlendMode(slot123, slot124)
		8064	[  0]	JMP  	122		5	; 	goto 8070
		8065	[  0]	GGET 	122		424	; slot122 = _env["love"]
		8066	[  0]	TGETS	122	122	343	; slot122 = love.graphics
		8067	[  0]	TGETS	122	122	235	; slot122 = love.graphics.setBlendMode
		8068	[  0]	KSTR 	124		234	; slot124 = "add"
		8069	[  0]	CALL 	122	1	2	;  = love.graphics.setBlendMode(slot123)
		8070	[  0]	GGET 	122		424	; slot122 = _env["love"]
		8071	[  0]	TGETS	122	122	343	; slot122 = love.graphics
		8072	[  0]	TGETS	122	122	309	; slot122 = love.graphics.draw
		8073	[  0]	MOV  	124		93	; slot124 = uv14"unknown"
		8074	[  0]	MOV  	125		103	; slot125 = math.floor
		8075	[  0]	MOV  	126		104	; slot126 = math.floor
		8076	[  0]	KSHORT	127		0	; slot127 = 0
		8077	[  0]	MOV  	128		101	; slot128 = slot101
		8078	[  0]	MOV  	129		101	; slot129 = slot101
		8079	[  0]	MOV  	130		105	; slot130 = slot105
		8080	[  0]	MOV  	131		106	; slot131 = slot106
		8081	[  0]	CALL 	122	1	9	;  = love.graphics.draw(slot123, uv14"unknown", math.floor, math.floor, slot127, slot128, slot129, slot130)
		8082	[  0]	GGET 	122		424	; slot122 = _env["love"]
		8083	[  0]	TGETS	122	122	343	; slot122 = love.graphics
		8084	[  0]	TGETS	122	122	310	; slot122 = love.graphics.setColor
		8085	[  0]	KSHORT	124		1	; slot124 = 1
		8086	[  0]	KSHORT	125		1	; slot125 = 1
		8087	[  0]	KSHORT	126		1	; slot126 = 1
		8088	[  0]	KSHORT	127		1	; slot127 = 1
		8089	[  0]	CALL 	122	1	5	;  = love.graphics.setColor(slot123, slot124, slot125, slot126)
		8090	[  0]	GGET 	122		424	; slot122 = _env["love"]
		8091	[  0]	TGETS	122	122	343	; slot122 = love.graphics
		8092	[  0]	TGETS	122	122	292	; slot122 = love.graphics.setShader
		8093	[  0]	MOV  	124		113	; slot124 = slot113
		8094	[  0]	CALL 	122	1	2	;  = love.graphics.setShader(slot123)
		8095	[  0]	ISEQP	115		0	; if slot115 == nil
		8096	[  0]	JMP  	122		7	; 	goto 8104
		8097	[  0]	GGET 	122		424	; slot122 = _env["love"]
		8098	[  0]	TGETS	122	122	343	; slot122 = love.graphics
		8099	[  0]	TGETS	122	122	235	; slot122 = love.graphics.setBlendMode
		8100	[  0]	MOV  	124		114	; slot124 = love.graphics.getBlendMode
		8101	[  0]	MOV  	125		115	; slot125 = slot115
		8102	[  0]	CALL 	122	1	3	;  = love.graphics.setBlendMode(slot123, love.graphics.getBlendMode)
		8103	[  0]	JMP  	122		5	; 	goto 8109
		8104	[  0]	GGET 	122		424	; slot122 = _env["love"]
		8105	[  0]	TGETS	122	122	343	; slot122 = love.graphics
		8106	[  0]	TGETS	122	122	235	; slot122 = love.graphics.setBlendMode
		8107	[  0]	MOV  	124		114	; slot124 = love.graphics.getBlendMode
		8108	[  0]	CALL 	122	1	2	;  = love.graphics.setBlendMode(slot123)
		8109	[  0]	GGET 	109		424	; slot109 = _env["love"]
		8110	[  0]	TGETS	109	109	343	; slot109 = love.graphics
		8111	[  0]	TGETS	109	109	310	; slot109 = love.graphics.setColor
		8112	[  0]	KSHORT	111		1	; slot111 = 1
		8113	[  0]	KSHORT	112		1	; slot112 = 1
		8114	[  0]	KSHORT	113		1	; slot113 = 1
		8115	[  0]	KSHORT	114		1	; slot114 = 1
		8116	[  0]	CALL 	109	1	5	;  = love.graphics.setColor(slot110, slot111, slot112, slot113)
		8117	[  0]	UGET 	109		0	; slot109 = uv0"unknwon"
		8118	[  0]	TGETS	109	109	441	; slot109 = uv0"unknown"._hoveredRandomOption
		8119	[  0]	IST  	   		109	; if uv0"unknown"._hoveredRandomOption
		8120	[  0]	JMP  	109		34	; 	goto 8155
		8121	[  0]	ISGT 	102		3	; if slot102 > slot3
		8122	[  0]	JMP  	109		8	; 	goto 8131
		8123	[  0]	ADDVV	109	102	84	; slot109 = slot102 + uv5"unknown"
		8124	[  0]	ISGT 	  3		109	; if slot3 > slot109
		8125	[  0]	JMP  	109		5	; 	goto 8131
		8126	[  0]	ISGT 	 83		4	; if slot83 > slot4
		8127	[  0]	JMP  	109		3	; 	goto 8131
		8128	[  0]	ADDVV	109	83	84	; slot109 = slot83 + uv5"unknown"
		8129	[  0]	ISLE 	  4		109	; if slot4 <= slot109
		8130	[  0]	JMP  	109		2	; 	goto 8133
		8131	[  0]	KPRI 	109		1	; slot109 = false
		8132	[  0]	JMP  	110		1	; 	goto 8134
		8133	[  0]	KPRI 	109		2	; slot109 = true
		8134	[  0]	ISF  	   		109	; if not slot109
		8135	[  0]	JMP  	110		19	; 	goto 8155
		8136	[  0]	UGET 	110		0	; slot110 = uv0"unknwon"
		8137	[  0]	TDUP 	111		2	; slot111 = copy table#k2
		8138	[  0]	KSTR 	112		1	; slot112 = "option"
		8139	[  0]	TSETV	 91	111	112	; slot111[slot112] = slot91
		8140	[  0]	TDUP 	112		0	; slot112 = copy table#k0
		8141	[  0]	TSETS	102	112	384	; slot112.x = slot102
		8142	[  0]	TSETS	 83	112	383	; slot112.y = slot83
		8143	[  0]	TSETS	 84	112	387	; slot112.w = uv5"unknown"
		8144	[  0]	TSETS	 84	112	385	; slot112.h = uv5"unknown"
		8145	[  0]	TSETS	 90	112	439	; slot112.index = slot90
		8146	[  0]	TSETS	112	111	440	; slot111.anchor = slot112
		8147	[  0]	ISF  	   		11	; if not uv1"unknown".lastUnit
		8148	[  0]	JMP  	112		3	; 	goto 8152
		8149	[  0]	TGETS	112	11	303	; slot112 = uv1"unknown".lastUnit.sym
		8150	[  0]	IST  	   		112	; if uv1"unknown".lastUnit.sym
		8151	[  0]	JMP  	113		1	; 	goto 8153
		8152	[  0]	KSTR 	112		297	; slot112 = "W"
		8153	[  0]	TSETS	112	111	303	; slot111.sym = slot112
		8154	[  0]	TSETS	111	110	441	; uv0"unknown"._hoveredRandomOption = slot111
		8155	[  0]	FORL 	 87		-637	; slot90 = slot90 + slot89; if cmp(slot90, sign slot89,  slot88) goto 7519
		8156	[  0]	TGETS	 80	11	218	; slot80 = uv1"unknown".lastUnit.rank
		8157	[  0]	IST  	   		80	; if uv1"unknown".lastUnit.rank
		8158	[  0]	JMP  	 81		1	; 	goto 8160
		8159	[  0]	KSHORT	 80		1	; slot80 = 1
		8160	[  0]	TGETS	 81	11	217	; slot81 = uv1"unknown".lastUnit.jackpot5th
		8161	[  0]	ISNEP	 81		2	; if uv1"unknown".lastUnit.jackpot5th ~= true
		8162	[  0]	JMP  	 81		2	; 	goto 8165
		8163	[  0]	KSTR 	 81		267	; slot81 = "prism"
		8164	[  0]	JMP  	 82		4	; 	goto 8169
		8165	[  0]	TGETS	 81	11	358	; slot81 = uv1"unknown".lastUnit.grade
		8166	[  0]	IST  	   		81	; if uv1"unknown".lastUnit.grade
		8167	[  0]	JMP  	 82		1	; 	goto 8169
		8168	[  0]	KSTR 	 81		216	; slot81 = "normal"
		8169	[  0]	UGET 	 82		18	; slot82 = uv18"unknwon"
		8170	[  0]	TGETS	 82	82	215	; slot82 = uv18"unknown".evolution
		8171	[  0]	TGETS	 82	82	214	; slot82 = uv18"unknown".evolution.rankThresholds
		8172	[  0]	TGETV	 82	82	81	; slot82 = uv18"unknown".evolution.rankThresholds[slot81]
		8173	[  0]	ADDVN	 83	80	10	; slot83 = slot80 + 1
		8174	[  0]	ISFC 	 84		82	; slot84 = slot82; if not slot82
		8175	[  0]	JMP  	 84		1	; 	goto 8177
		8176	[  0]	TGETV	 84	82	83	; slot84 = slot82[slot83]
		8177	[  0]	JMP  	 85		0	; 	goto 8178
		8178	[  0]	JMP  	 85		45	; 	goto 8224
		8179	[  0]	UGET 	 85		8	; slot85 = uv8"unknwon"
		8180	[  0]	CALL 	 85	2	1	; slot85 = uv8"unknown"()
		8181	[  0]	KNUM 	 86		11	; slot86 = 1.5
		8182	[  0]	ISF  	   		85	; if not uv8"unknown"
		8183	[  0]	JMP  	 87		10	; 	goto 8194
		8184	[  0]	MOV  	 89		85	; slot89 = uv8"unknown"
		8185	[  0]	TGETS	 87	85	341	; slot87 = uv8"unknown".setFilter
		8186	[  0]	KSTR 	 90		340	; slot90 = "nearest"
		8187	[  0]	KSTR 	 91		340	; slot91 = "nearest"
		8188	[  0]	CALL 	 87	1	4	;  = uv8"unknown".setFilter(slot88, uv8"unknown", slot90)
		8189	[  0]	GGET 	 87		424	; slot87 = _env["love"]
		8190	[  0]	TGETS	 87	87	343	; slot87 = love.graphics
		8191	[  0]	TGETS	 87	87	305	; slot87 = love.graphics.setFont
		8192	[  0]	MOV  	 89		85	; slot89 = uv8"unknown"
		8193	[  0]	CALL 	 87	1	2	;  = love.graphics.setFont(slot88)
		8194	[  0]	GGET 	 87		424	; slot87 = _env["love"]
		8195	[  0]	TGETS	 87	87	343	; slot87 = love.graphics
		8196	[  0]	TGETS	 87	87	310	; slot87 = love.graphics.setColor
		8197	[  0]	KNUM 	 89		20	; slot89 = 0.9
		8198	[  0]	KNUM 	 90		20	; slot90 = 0.9
		8199	[  0]	KNUM 	 91		20	; slot91 = 0.9
		8200	[  0]	MULNV	 92	35	10	; slot92 = 1 * slot35
		8201	[  0]	CALL 	 87	1	5	;  = love.graphics.setColor(slot88, slot89, slot90, slot91)
		8202	[  0]	ADDVN	 87	63	5	; slot87 = uv5"unknown" + 8
		8203	[  0]	UGET 	 88		5	; slot88 = uv5"unknwon"
		8204	[  0]	MULNV	 90	29	31	; slot90 = 4 * slot29
		8205	[  0]	CALL 	 88	2	2	; slot88 = uv5"unknown"(slot89)
		8206	[  0]	ADDVV	 88	73	88	; slot88 = slot73 + uv5"unknown"
		8207	[  0]	ADDVN	 88	88	64	; slot88 = slot88 + 16
		8208	[  0]	GGET 	 89		424	; slot89 = _env["love"]
		8209	[  0]	TGETS	 89	89	343	; slot89 = love.graphics
		8210	[  0]	TGETS	 89	89	255	; slot89 = love.graphics.print
		8211	[  0]	GGET 	 91		132	; slot91 = _env["label"]
		8212	[  0]	GGET 	 92		398	; slot92 = _env["math"]
		8213	[  0]	TGETS	 92	92	380	; slot92 = math.floor
		8214	[  0]	MOV  	 94		87	; slot94 = slot87
		8215	[  0]	CALL 	 92	2	2	; slot92 = math.floor(uv14"unknown")
		8216	[  0]	GGET 	 93		398	; slot93 = _env["math"]
		8217	[  0]	TGETS	 93	93	380	; slot93 = math.floor
		8218	[  0]	MOV  	 95		88	; slot95 = slot88
		8219	[  0]	CALL 	 93	2	2	; slot93 = math.floor(slot94)
		8220	[  0]	KSHORT	 94		0	; slot94 = 0
		8221	[  0]	MOV  	 95		86	; slot95 = slot86
		8222	[  0]	MOV  	 96		86	; slot96 = slot86
		8223	[  0]	CALL 	 89	1	7	;  = love.graphics.print(slot90, label, math.floor, math.floor, slot94, slot95)
		8224	[  0]	IST  	   		8	; if slot8
		8225	[  0]	JMP  	 85		42	; 	goto 8268
		8226	[  0]	GGET 	 85		398	; slot85 = _env["math"]
		8227	[  0]	TGETS	 85	85	396	; slot85 = math.abs
		8228	[  0]	UGET 	 87		1	; slot87 = uv1"unknwon"
		8229	[  0]	TGETS	 87	87	384	; slot87 = uv1"unknown".x
		8230	[  0]	SUBVV	 87	87	20	; slot87 = uv1"unknown".x - slot20
		8231	[  0]	CALL 	 85	2	2	; slot85 = math.abs(slot86)
		8232	[  0]	KSHORT	 86		1	; slot86 = 1
		8233	[  0]	ISGE 	 85		86	; if math.abs >= slot86
		8234	[  0]	JMP  	 85		33	; 	goto 8268
		8235	[  0]	GGET 	 85		398	; slot85 = _env["math"]
		8236	[  0]	TGETS	 85	85	396	; slot85 = math.abs
		8237	[  0]	UGET 	 87		1	; slot87 = uv1"unknwon"
		8238	[  0]	TGETS	 87	87	378	; slot87 = uv1"unknown".v
		8239	[  0]	CALL 	 85	2	2	; slot85 = math.abs(slot86)
		8240	[  0]	KSHORT	 86		1	; slot86 = 1
		8241	[  0]	ISGE 	 85		86	; if math.abs >= slot86
		8242	[  0]	JMP  	 85		25	; 	goto 8268
		8243	[  0]	UGET 	 85		1	; slot85 = uv1"unknwon"
		8244	[  0]	KPRI 	 86		0	; slot86 = nil
		8245	[  0]	TSETS	 86	85	392	; uv1"unknown".lastUnit = slot86
		8246	[  0]	UGET 	 85		1	; slot85 = uv1"unknwon"
		8247	[  0]	KSHORT	 86		0	; slot86 = 0
		8248	[  0]	TSETS	 86	85	420	; uv1"unknown".holdTimer = slot86
		8249	[  0]	UGET 	 85		1	; slot85 = uv1"unknwon"
		8250	[  0]	KSHORT	 86		0	; slot86 = 0
		8251	[  0]	TSETS	 86	85	419	; uv1"unknown".blinkTimer = slot86
		8252	[  0]	UGET 	 85		1	; slot85 = uv1"unknwon"
		8253	[  0]	KPRI 	 86		0	; slot86 = nil
		8254	[  0]	TSETS	 86	85	417	; uv1"unknown".blinkSlot = slot86
		8255	[  0]	KSHORT	 85		1	; slot85 = 1
		8256	[  0]	KSHORT	 86		5	; slot86 = 5
		8257	[  0]	KSHORT	 87		1	; slot87 = 1
		8258	[  0]	FORI 	 85		9	; for slot88 = slot85,slot86,slot87 else goto 8268
		8259	[  0]	UGET 	 89		1	; slot89 = uv1"unknwon"
		8260	[  0]	TGETS	 89	89	400	; slot89 = uv1"unknown".impactScales
		8261	[  0]	KSHORT	 90		0	; slot90 = 0
		8262	[  0]	TSETV	 90	89	88	; uv1"unknown".impactScales[slot88] = slot90
		8263	[  0]	UGET 	 89		1	; slot89 = uv1"unknwon"
		8264	[  0]	TGETS	 89	89	399	; slot89 = uv1"unknown".floatOffsets
		8265	[  0]	KSHORT	 90		0	; slot90 = 0
		8266	[  0]	TSETV	 90	89	88	; uv1"unknown".floatOffsets[slot88] = slot90
		8267	[  0]	FORL 	 85		-9	; slot88 = slot88 + slot87; if cmp(slot88, sign slot87,  slot86) goto 8259
		8268	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 8269
		8269	[  0]	RET0 	  0		1	; return
		8270	[  0]	RET0 	  0		1	; return
		8271	[  0]	RET0 	  0		1	; return
		8272	[  0]	RET0 	  0		1	; return
		8273	[  0]	RET0 	  0		1	; return
		8274	[  0]	RET0 	  0		1	; return
		8275	[  0]	RET0 	  0		1	; return
	197	[  0]	TSETS	 78	0	7	; slot0.draw = slot78
	198	[  0]	FNEW 	 78		4	; N/A:0-0: 2 args, 1 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	8	; slot2 = uv0"unknown"._skillFrameRect
		  3	[  0]	ISF  	   		2	; if not uv0"unknown"._skillFrameRect
		  4	[  0]	JMP  	  3		4	; 	goto 9
		  5	[  0]	ISF  	   		0	; if not slot0
		  6	[  0]	JMP  	  3		2	; 	goto 9
		  7	[  0]	IST  	   		1	; if slot1
		  8	[  0]	JMP  	  3		2	; 	goto 11
		  9	[  0]	KPRI 	  3		1	; slot3 = false
		 10	[  0]	RET1 	  3		2	; return slot3
		 11	[  0]	GGET 	  3		7	; slot3 = _env["love"]
		 12	[  0]	TGETS	  3	3	6	; slot3 = love.timer
		 13	[  0]	ISF  	   		3	; if not love.timer
		 14	[  0]	JMP  	  4		11	; 	goto 26
		 15	[  0]	GGET 	  3		7	; slot3 = _env["love"]
		 16	[  0]	TGETS	  3	3	6	; slot3 = love.timer
		 17	[  0]	TGETS	  3	3	5	; slot3 = love.timer.getTime
		 18	[  0]	ISF  	   		3	; if not love.timer.getTime
		 19	[  0]	JMP  	  4		6	; 	goto 26
		 20	[  0]	GGET 	  3		7	; slot3 = _env["love"]
		 21	[  0]	TGETS	  3	3	6	; slot3 = love.timer
		 22	[  0]	TGETS	  3	3	5	; slot3 = love.timer.getTime
		 23	[  0]	CALL 	  3	2	1	; slot3 = love.timer.getTime()
		 24	[  0]	IST  	   		3	; if love.timer.getTime
		 25	[  0]	JMP  	  4		1	; 	goto 27
		 26	[  0]	KSHORT	  3		0	; slot3 = 0
		 27	[  0]	TGETS	  4	2	4	; slot4 = uv0"unknown"._skillFrameRect.drawnAt
		 28	[  0]	ISF  	   		4	; if not uv0"unknown"._skillFrameRect.drawnAt
		 29	[  0]	JMP  	  5		7	; 	goto 37
		 30	[  0]	TGETS	  4	2	4	; slot4 = uv0"unknown"._skillFrameRect.drawnAt
		 31	[  0]	SUBVV	  4	3	4	; slot4 = slot3 - uv0"unknown"._skillFrameRect.drawnAt
		 32	[  0]	KNUM 	  5		0	; slot5 = 0.25
		 33	[  0]	ISGE 	  5		4	; if slot5 >= slot4
		 34	[  0]	JMP  	  4		2	; 	goto 37
		 35	[  0]	KPRI 	  4		1	; slot4 = false
		 36	[  0]	RET1 	  4		2	; return slot4
		 37	[  0]	TGETS	  4	2	3	; slot4 = uv0"unknown"._skillFrameRect.x
		 38	[  0]	ISGT 	  4		0	; if uv0"unknown"._skillFrameRect.x > slot0
		 39	[  0]	JMP  	  4		13	; 	goto 53
		 40	[  0]	TGETS	  4	2	3	; slot4 = uv0"unknown"._skillFrameRect.x
		 41	[  0]	TGETS	  5	2	2	; slot5 = uv0"unknown"._skillFrameRect.w
		 42	[  0]	ADDVV	  4	4	5	; slot4 = uv0"unknown"._skillFrameRect.x + uv0"unknown"._skillFrameRect.w
		 43	[  0]	ISGT 	  0		4	; if slot0 > slot4
		 44	[  0]	JMP  	  4		8	; 	goto 53
		 45	[  0]	TGETS	  4	2	1	; slot4 = uv0"unknown"._skillFrameRect.y
		 46	[  0]	ISGT 	  4		1	; if uv0"unknown"._skillFrameRect.y > slot1
		 47	[  0]	JMP  	  4		5	; 	goto 53
		 48	[  0]	TGETS	  4	2	1	; slot4 = uv0"unknown"._skillFrameRect.y
		 49	[  0]	TGETS	  5	2	0	; slot5 = uv0"unknown"._skillFrameRect.h
		 50	[  0]	ADDVV	  4	4	5	; slot4 = uv0"unknown"._skillFrameRect.y + uv0"unknown"._skillFrameRect.h
		 51	[  0]	ISLE 	  1		4	; if slot1 <= slot4
		 52	[  0]	JMP  	  4		2	; 	goto 55
		 53	[  0]	KPRI 	  4		1	; slot4 = false
		 54	[  0]	JMP  	  5		1	; 	goto 56
		 55	[  0]	KPRI 	  4		2	; slot4 = true
		 56	[  0]	RET1 	  4		2	; return slot4
	199	[  0]	TSETS	 78	0	5	; slot0.isSkillFrameHovered = slot78
	200	[  0]	FNEW 	 78		2	; N/A:0-0: 2 args, 2 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	9	; slot2 = uv0"unknown"._panelRect
		  3	[  0]	ISF  	   		2	; if not uv0"unknown"._panelRect
		  4	[  0]	JMP  	  3		4	; 	goto 9
		  5	[  0]	ISF  	   		0	; if not slot0
		  6	[  0]	JMP  	  3		2	; 	goto 9
		  7	[  0]	IST  	   		1	; if slot1
		  8	[  0]	JMP  	  3		2	; 	goto 11
		  9	[  0]	KPRI 	  3		1	; slot3 = false
		 10	[  0]	RET1 	  3		2	; return slot3
		 11	[  0]	GGET 	  3		8	; slot3 = _env["love"]
		 12	[  0]	TGETS	  3	3	7	; slot3 = love.timer
		 13	[  0]	ISF  	   		3	; if not love.timer
		 14	[  0]	JMP  	  4		11	; 	goto 26
		 15	[  0]	GGET 	  3		8	; slot3 = _env["love"]
		 16	[  0]	TGETS	  3	3	7	; slot3 = love.timer
		 17	[  0]	TGETS	  3	3	6	; slot3 = love.timer.getTime
		 18	[  0]	ISF  	   		3	; if not love.timer.getTime
		 19	[  0]	JMP  	  4		6	; 	goto 26
		 20	[  0]	GGET 	  3		8	; slot3 = _env["love"]
		 21	[  0]	TGETS	  3	3	7	; slot3 = love.timer
		 22	[  0]	TGETS	  3	3	6	; slot3 = love.timer.getTime
		 23	[  0]	CALL 	  3	2	1	; slot3 = love.timer.getTime()
		 24	[  0]	IST  	   		3	; if love.timer.getTime
		 25	[  0]	JMP  	  4		1	; 	goto 27
		 26	[  0]	KSHORT	  3		0	; slot3 = 0
		 27	[  0]	TGETS	  4	2	5	; slot4 = uv0"unknown"._panelRect.drawnAt
		 28	[  0]	ISF  	   		4	; if not uv0"unknown"._panelRect.drawnAt
		 29	[  0]	JMP  	  5		7	; 	goto 37
		 30	[  0]	TGETS	  4	2	5	; slot4 = uv0"unknown"._panelRect.drawnAt
		 31	[  0]	SUBVV	  4	3	4	; slot4 = slot3 - uv0"unknown"._panelRect.drawnAt
		 32	[  0]	KNUM 	  5		0	; slot5 = 0.25
		 33	[  0]	ISGE 	  5		4	; if slot5 >= slot4
		 34	[  0]	JMP  	  4		2	; 	goto 37
		 35	[  0]	KPRI 	  4		1	; slot4 = false
		 36	[  0]	RET1 	  4		2	; return slot4
		 37	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 38	[  0]	TGETS	  4	4	4	; slot4 = uv0"unknown"._awakeningRuneRect
		 39	[  0]	ISF  	   		4	; if not uv0"unknown"._awakeningRuneRect
		 40	[  0]	JMP  	  5		21	; 	goto 62
		 41	[  0]	TGETS	  5	4	5	; slot5 = uv0"unknown"._awakeningRuneRect.drawnAt
		 42	[  0]	ISF  	   		5	; if not uv0"unknown"._awakeningRuneRect.drawnAt
		 43	[  0]	JMP  	  6		5	; 	goto 49
		 44	[  0]	TGETS	  5	4	5	; slot5 = uv0"unknown"._awakeningRuneRect.drawnAt
		 45	[  0]	SUBVV	  5	3	5	; slot5 = slot3 - uv0"unknown"._awakeningRuneRect.drawnAt
		 46	[  0]	KNUM 	  6		0	; slot6 = 0.25
		 47	[  0]	ISLT 	  6		5	; if slot6 < slot5
		 48	[  0]	JMP  	  5		13	; 	goto 62
		 49	[  0]	GGET 	  5		3	; slot5 = _env["require"]
		 50	[  0]	KSTR 	  7		2	; slot7 = "src.ui.flow"
		 51	[  0]	CALL 	  5	2	2	; slot5 = require(slot6)
		 52	[  0]	TGETS	  5	5	1	; slot5 = require.awakening
		 53	[  0]	TGETS	  5	5	0	; slot5 = require.awakening.hitRunes
		 54	[  0]	MOV  	  7		4	; slot7 = uv0"unknown"._awakeningRuneRect
		 55	[  0]	MOV  	  8		0	; slot8 = slot0
		 56	[  0]	MOV  	  9		1	; slot9 = slot1
		 57	[  0]	CALL 	  5	2	4	; slot5 = require.awakening.hitRunes(slot6, uv0"unknown"._awakeningRuneRect, slot8)
		 58	[  0]	ISF  	   		5	; if not require.awakening.hitRunes
		 59	[  0]	JMP  	  6		2	; 	goto 62
		 60	[  0]	KPRI 	  5		2	; slot5 = true
		 61	[  0]	RET1 	  5		2	; return slot5
		 62	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 63	[  0]	MOV  	  7		0	; slot7 = slot0
		 64	[  0]	MOV  	  8		1	; slot8 = slot1
		 65	[  0]	MOV  	  9		2	; slot9 = uv0"unknown"._panelRect
		 66	[  0]	CALLT	  5		4	; return uv1"unknown"(slot6, slot7, slot8)
	201	[  0]	TSETS	 78	0	3	; slot0.isPanelHovered = slot78
	202	[  0]	FNEW 	 78		0	; N/A:0-0: 0 args, 1 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown"._hoveredSlot
		  3	[  0]	RET1 	  0		2	; return uv0"unknown"._hoveredSlot
	203	[  0]	TSETS	 78	0	1	; slot0.getHoveredSlot = slot78
	204	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 205
	205	[  0]	RET1 	  0		2	; return slot0
	
