;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\ui\config.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 8 slots
	;;;; constant tables ;;;;
	;;;; instructions ;;;;
	  1	[  0]	GGET 	  0		7	; slot0 = _env["require"]
	  2	[  0]	KSTR 	  2		6	; slot2 = "src.data.constants"
	  3	[  0]	CALL 	  0	2	2	; slot0 = require(slot1)
	  4	[  0]	GGET 	  1		7	; slot1 = _env["require"]
	  5	[  0]	KSTR 	  3		5	; slot3 = "src.data.font_resolver"
	  6	[  0]	CALL 	  1	2	2	; slot1 = require(slot2)
	  7	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
	  8	[  0]	KSTR 	  3		4	; slot3 = "src/data/font/Chinese/arkpixel10.ttf"
	  9	[  0]	KSTR 	  4		3	; slot4 = "normal"
	 10	[  0]	FNEW 	  5		2	; N/A:0-0: 0 args, 0 upvalues, 42 slots
		
		;;;; constant tables ;;;;
		ktable#55 = [
			#1: 1,
			#2: 1,
			]
		
		
		ktable#56 = [
			#1: 0,
			#2: 1,
			]
		
		
		ktable#57 = [
			#1: -1,
			#2: 1,
			]
		
		
		ktable#58 = [
			#1: 1,
			#2: 0,
			]
		
		
		ktable#59 = [
			#1: -1,
			#2: 0,
			]
		
		
		ktable#60 = [
			#1: 1,
			#2: -1,
			]
		
		
		ktable#61 = [
			#1: 0,
			#2: -1,
			]
		
		
		ktable#62 = [
			#1: -1,
			#2: -1,
			]
		
		
		ktable#64 = [
			#1: 0,
			#2: 1,
			]
		
		
		ktable#66 = [
			[strokeAlpha] = 1,
			[shadowIncludesStroke] = true,
			[shadowAlpha] = 1,
			[uniformAlpha] = true,
			]
		
		
		ktable#67 = [
			[zh] = true,
			]
		
		
		ktable#69 = [
			#1: 0,
			#2: 1,
			]
		
		
		ktable#71 = [
			#1: 0,
			#2: 1,
			]
		
		
		ktable#72 = [
			[largeAlpha] = 0.7,
			[largeAtScale] = 1.3,
			[alpha] = 0.62,
			[lang] = zh,
			]
		
		
		ktable#75 = [
			[__mode] = k,
			]
		
		
		ktable#76 = [
			[__mode] = k,
			]
		
		
		ktable#77 = [
			[__mode] = k,
			]
		
		
		ktable#78 = [
			[__mode] = k,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		81	; slot0 = _env["_G"]
		  2	[  0]	TGETS	  0	0	80	; slot0 = _G.__slotboundChineseFontShadowInstalled
		  3	[  0]	ISF  	   		0	; if not _G.__slotboundChineseFontShadowInstalled
		  4	[  0]	JMP  	  1		1	; 	goto 6
		  5	[  0]	UCLO 	  0		132	; nil uvs >= r0; goto 138
		  6	[  0]	GGET 	  0		81	; slot0 = _env["_G"]
		  7	[  0]	KPRI 	  1		2	; slot1 = true
		  8	[  0]	TSETS	  1	0	80	; _G.__slotboundChineseFontShadowInstalled = slot1
		  9	[  0]	GGET 	  0		79	; slot0 = _env["setmetatable"]
		 10	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		 11	[  0]	TDUP 	  3		78	; slot3 = copy table#k78
		 12	[  0]	CALL 	  0	2	3	; slot0 = setmetatable(slot1, slot2)
		 13	[  0]	GGET 	  1		79	; slot1 = _env["setmetatable"]
		 14	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 15	[  0]	TDUP 	  4		77	; slot4 = copy table#k77
		 16	[  0]	CALL 	  1	2	3	; slot1 = setmetatable(slot2, slot3)
		 17	[  0]	GGET 	  2		79	; slot2 = _env["setmetatable"]
		 18	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 19	[  0]	TDUP 	  5		76	; slot5 = copy table#k76
		 20	[  0]	CALL 	  2	2	3	; slot2 = setmetatable(slot3, slot4)
		 21	[  0]	GGET 	  3		79	; slot3 = _env["setmetatable"]
		 22	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 23	[  0]	TDUP 	  6		75	; slot6 = copy table#k75
		 24	[  0]	CALL 	  3	2	3	; slot3 = setmetatable(slot4, slot5)
		 25	[  0]	GGET 	  4		81	; slot4 = _env["_G"]
		 26	[  0]	TSETS	  0	4	74	; _G.__slotboundChineseShadowFonts = slot0
		 27	[  0]	GGET 	  4		81	; slot4 = _env["_G"]
		 28	[  0]	TSETS	  1	4	73	; _G.__slotboundChineseLatinFallbackFonts = slot1
		 29	[  0]	TDUP 	  4		72	; slot4 = copy table#k72
		 30	[  0]	TNEW 	  5		3	; slot5 = new table( array: 3, dict: 1)
		 31	[  0]	TDUP 	  6		71	; slot6 = copy table#k71
		 32	[  0]	TSETB	  6	5	1	; slot5[1] = slot6
		 33	[  0]	TSETS	  5	4	70	; slot4.offsets = slot5
		 34	[  0]	TNEW 	  5		3	; slot5 = new table( array: 3, dict: 1)
		 35	[  0]	TDUP 	  6		69	; slot6 = copy table#k69
		 36	[  0]	TSETB	  6	5	1	; slot5[1] = slot6
		 37	[  0]	TSETS	  5	4	68	; slot4.largeOffsets = slot5
		 38	[  0]	TDUP 	  5		66	; slot5 = copy table#k66
		 39	[  0]	TDUP 	  6		67	; slot6 = copy table#k67
		 40	[  0]	TSETS	  6	5	65	; slot5.langs = slot6
		 41	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		 42	[  0]	TDUP 	  7		64	; slot7 = copy table#k64
		 43	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		 44	[  0]	TSETS	  6	5	63	; slot5.shadowOffsets = slot6
		 45	[  0]	TNEW 	  6		9	; slot6 = new table( array: 9, dict: 1)
		 46	[  0]	TDUP 	  7		62	; slot7 = copy table#k62
		 47	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		 48	[  0]	TDUP 	  7		61	; slot7 = copy table#k61
		 49	[  0]	TSETB	  7	6	2	; slot6[2] = slot7
		 50	[  0]	TDUP 	  7		60	; slot7 = copy table#k60
		 51	[  0]	TSETB	  7	6	3	; slot6[3] = slot7
		 52	[  0]	TDUP 	  7		59	; slot7 = copy table#k59
		 53	[  0]	TSETB	  7	6	4	; slot6[4] = slot7
		 54	[  0]	TDUP 	  7		58	; slot7 = copy table#k58
		 55	[  0]	TSETB	  7	6	5	; slot6[5] = slot7
		 56	[  0]	TDUP 	  7		57	; slot7 = copy table#k57
		 57	[  0]	TSETB	  7	6	6	; slot6[6] = slot7
		 58	[  0]	TDUP 	  7		56	; slot7 = copy table#k56
		 59	[  0]	TSETB	  7	6	7	; slot6[7] = slot7
		 60	[  0]	TDUP 	  7		55	; slot7 = copy table#k55
		 61	[  0]	TSETB	  7	6	8	; slot6[8] = slot7
		 62	[  0]	TSETS	  6	5	54	; slot5.strokeOffsets = slot6
		 63	[  0]	GGET 	  6		81	; slot6 = _env["_G"]
		 64	[  0]	FNEW 	  7		52	; N/A:0-0: 2 args, 2 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	ISF  	   		0	; if not slot0
			  2	[  0]	JMP  	  2		5	; 	goto 8
			  3	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  4	[  0]	ISTC 	  3		1	; slot3 = slot1; if slot1
			  5	[  0]	JMP  	  3		1	; 	goto 7
			  6	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
			  7	[  0]	TSETV	  3	2	0	; uv0"unknown"[slot0] = uv1"unknown"
			  8	[  0]	RET1 	  0		2	; return slot0
		 65	[  0]	TSETS	  7	6	53	; _G.registerChineseShadowFont = slot7
		 66	[  0]	GGET 	  6		81	; slot6 = _env["_G"]
		 67	[  0]	FNEW 	  7		50	; N/A:0-0: 2 args, 1 upvalues, 3 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	ISF  	   		0	; if not slot0
			  2	[  0]	JMP  	  2		4	; 	goto 7
			  3	[  0]	ISF  	   		1	; if not slot1
			  4	[  0]	JMP  	  2		2	; 	goto 7
			  5	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  6	[  0]	TSETV	  1	2	0	; uv0"unknown"[slot0] = slot1
			  7	[  0]	RET1 	  0		2	; return slot0
		 68	[  0]	TSETS	  7	6	51	; _G.registerTextEffectFont = slot7
		 69	[  0]	GGET 	  6		81	; slot6 = _env["_G"]
		 70	[  0]	FNEW 	  7		48	; N/A:0-0: 2 args, 1 upvalues, 3 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	ISF  	   		0	; if not slot0
			  2	[  0]	JMP  	  2		4	; 	goto 7
			  3	[  0]	ISF  	   		1	; if not slot1
			  4	[  0]	JMP  	  2		2	; 	goto 7
			  5	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  6	[  0]	TSETV	  1	2	0	; uv0"unknown"[slot0] = slot1
			  7	[  0]	RET1 	  0		2	; return slot0
		 71	[  0]	TSETS	  7	6	49	; _G.registerChineseLatinFallbackFont = slot7
		 72	[  0]	GGET 	  6		81	; slot6 = _env["_G"]
		 73	[  0]	FNEW 	  7		46	; N/A:0-0: 1 args, 0 upvalues, 1 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	RET1 	  0		2	; return slot0
		 74	[  0]	TSETS	  7	6	47	; _G.resolveChineseLatinFallbackPath = slot7
		 75	[  0]	GGET 	  6		81	; slot6 = _env["_G"]
		 76	[  0]	FNEW 	  7		44	; N/A:0-0: 1 args, 2 upvalues, 3 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	ISF  	   		0	; if not slot0
			  2	[  0]	JMP  	  1		10	; 	goto 13
			  3	[  0]	GGET 	  1		3	; slot1 = _env["_G"]
			  4	[  0]	TGETS	  1	1	2	; slot1 = _G.currentGameLang
			  5	[  0]	IST  	   		1	; if _G.currentGameLang
			  6	[  0]	JMP  	  2		1	; 	goto 8
			  7	[  0]	KSTR 	  1		1	; slot1 = "ko"
			  8	[  0]	ISNES	  1		0	; if slot1 ~= "zh"
			  9	[  0]	JMP  	  1		3	; 	goto 13
			 10	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			 11	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			 12	[  0]	TSETV	  2	1	0	; uv0"unknown"[slot0] = uv1"unknown"
			 13	[  0]	RET1 	  0		2	; return slot0
		 77	[  0]	TSETS	  7	6	45	; _G.registerSLineTtfTextEffect = slot7
		 78	[  0]	GGET 	  6		81	; slot6 = _env["_G"]
		 79	[  0]	FNEW 	  7		42	; N/A:0-0: 4 args, 2 upvalues, 11 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	IST  	   		0	; if slot0
			  2	[  0]	JMP  	  4		1	; 	goto 4
			  3	[  0]	RET1 	  0		2	; return slot0
			  4	[  0]	IST  	   		3	; if slot3
			  5	[  0]	JMP  	  4		5	; 	goto 11
			  6	[  0]	GGET 	  4		8	; slot4 = _env["_G"]
			  7	[  0]	TGETS	  4	4	7	; slot4 = _G.currentGameLang
			  8	[  0]	ISTC 	  3		4	; slot3 = _G.currentGameLang; if _G.currentGameLang
			  9	[  0]	JMP  	  5		1	; 	goto 11
			 10	[  0]	KSTR 	  3		6	; slot3 = "ko"
			 11	[  0]	ISEQS	  3		5	; if slot3 == "zh"
			 12	[  0]	JMP  	  4		1	; 	goto 14
			 13	[  0]	RET1 	  0		2	; return slot0
			 14	[  0]	GGET 	  4		4	; slot4 = _env["tostring"]
			 15	[  0]	ISTC 	  6		1	; slot6 = slot1; if slot1
			 16	[  0]	JMP  	  6		1	; 	goto 18
			 17	[  0]	KSTR 	  6		3	; slot6 = ""
			 18	[  0]	CALL 	  4	2	2	; slot4 = tostring(slot5)
			 19	[  0]	MOV  	  6		4	; slot6 = tostring
			 20	[  0]	TGETS	  4	4	2	; slot4 = tostring.lower
			 21	[  0]	CALL 	  4	2	2	; slot4 = tostring.lower(slot5)
			 22	[  0]	MOV  	  7		4	; slot7 = tostring.lower
			 23	[  0]	TGETS	  5	4	1	; slot5 = tostring.lower.find
			 24	[  0]	KSTR 	  8		0	; slot8 = "sline"
			 25	[  0]	KSHORT	  9		1	; slot9 = 1
			 26	[  0]	KPRI 	 10		2	; slot10 = true
			 27	[  0]	CALL 	  5	2	5	; slot5 = tostring.lower.find(tostring, tostring.lower, slot8, slot9)
			 28	[  0]	IST  	   		5	; if slot5
			 29	[  0]	JMP  	  5		1	; 	goto 31
			 30	[  0]	RET1 	  0		2	; return slot0
			 31	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
			 32	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
			 33	[  0]	TSETV	  6	5	0	; uv0"unknown"[slot0] = uv1"unknown"
			 34	[  0]	RET1 	  0		2	; return slot0
		 80	[  0]	TSETS	  7	6	43	; _G.maybeRegisterSLineTtfTextEffect = slot7
		 81	[  0]	GGET 	  6		81	; slot6 = _env["_G"]
		 82	[  0]	FNEW 	  7		40	; N/A:0-0: 0 args, 4 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			ktable#3 = [
				[__mode] = k,
				]
			
			
			ktable#4 = [
				[__mode] = k,
				]
			
			
			ktable#5 = [
				[__mode] = k,
				]
			
			
			ktable#6 = [
				[__mode] = k,
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  0		7	; slot0 = _env["setmetatable"]
			  2	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
			  3	[  0]	TDUP 	  3		6	; slot3 = copy table#k6
			  4	[  0]	CALL 	  0	2	3	; slot0 = setmetatable(slot1, slot2)
			  5	[  0]	USETV	  0		0	; uv0"unknwon" = slot0
			  6	[  0]	GGET 	  0		7	; slot0 = _env["setmetatable"]
			  7	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
			  8	[  0]	TDUP 	  3		5	; slot3 = copy table#k5
			  9	[  0]	CALL 	  0	2	3	; slot0 = setmetatable(slot1, slot2)
			 10	[  0]	USETV	  1		0	; uv1"unknwon" = slot0
			 11	[  0]	GGET 	  0		7	; slot0 = _env["setmetatable"]
			 12	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
			 13	[  0]	TDUP 	  3		4	; slot3 = copy table#k4
			 14	[  0]	CALL 	  0	2	3	; slot0 = setmetatable(slot1, slot2)
			 15	[  0]	USETV	  2		0	; uv2"unknwon" = slot0
			 16	[  0]	GGET 	  0		7	; slot0 = _env["setmetatable"]
			 17	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
			 18	[  0]	TDUP 	  3		3	; slot3 = copy table#k3
			 19	[  0]	CALL 	  0	2	3	; slot0 = setmetatable(slot1, slot2)
			 20	[  0]	USETV	  3		0	; uv3"unknwon" = slot0
			 21	[  0]	GGET 	  0		2	; slot0 = _env["_G"]
			 22	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			 23	[  0]	TSETS	  1	0	1	; _G.__slotboundChineseShadowFonts = uv0"unknown"
			 24	[  0]	GGET 	  0		2	; slot0 = _env["_G"]
			 25	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			 26	[  0]	TSETS	  1	0	0	; _G.__slotboundChineseLatinFallbackFonts = uv1"unknown"
			 27	[  0]	RET0 	  0		1	; return
		 83	[  0]	TSETS	  7	6	41	; _G.clearChineseShadowFonts = slot7
		 84	[  0]	GGET 	  6		39	; slot6 = _env["love"]
		 85	[  0]	TGETS	  6	6	38	; slot6 = love.graphics
		 86	[  0]	TGETS	  6	6	37	; slot6 = love.graphics.print
		 87	[  0]	GGET 	  7		39	; slot7 = _env["love"]
		 88	[  0]	TGETS	  7	7	38	; slot7 = love.graphics
		 89	[  0]	TGETS	  7	7	36	; slot7 = love.graphics.printf
		 90	[  0]	KPRI 	  8		1	; slot8 = false
		 91	[  0]	KPRI 	  9		0	; slot9 = nil
		 92	[  0]	FNEW 	 10		35	; N/A:0-0: 1 args, 0 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  1		8	; slot1 = _env["type"]
			  2	[  0]	MOV  	  3		0	; slot3 = slot0
			  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
			  4	[  0]	ISEQS	  1		7	; if slot1 == "string"
			  5	[  0]	JMP  	  2		6	; 	goto 12
			  6	[  0]	ISEQS	  1		6	; if slot1 == "number"
			  7	[  0]	JMP  	  2		4	; 	goto 12
			  8	[  0]	ISEQS	  1		5	; if slot1 == "table"
			  9	[  0]	JMP  	  2		2	; 	goto 12
			 10	[  0]	ISNES	  1		4	; if slot1 ~= "userdata"
			 11	[  0]	JMP  	  2		1	; 	goto 13
			 12	[  0]	RET1 	  0		2	; return slot0
			 13	[  0]	ISEQP	  0		0	; if slot0 == nil
			 14	[  0]	JMP  	  2		4	; 	goto 19
			 15	[  0]	ISEQS	  1		3	; if slot1 == "function"
			 16	[  0]	JMP  	  2		2	; 	goto 19
			 17	[  0]	ISNES	  1		2	; if slot1 ~= "thread"
			 18	[  0]	JMP  	  2		2	; 	goto 21
			 19	[  0]	KSTR 	  2		1	; slot2 = ""
			 20	[  0]	RET1 	  2		2	; return slot2
			 21	[  0]	GGET 	  2		0	; slot2 = _env["tostring"]
			 22	[  0]	MOV  	  4		0	; slot4 = slot0
			 23	[  0]	CALLT	  2		2	; return tostring(slot3)
		 93	[  0]	FNEW 	 11		34	; N/A:0-0: 1 args, 0 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  1		2	; slot1 = _env["type"]
			  2	[  0]	MOV  	  3		0	; slot3 = slot0
			  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
			  4	[  0]	ISNES	  1		1	; if slot1 ~= "string"
			  5	[  0]	JMP  	  1		9	; 	goto 15
			  6	[  0]	LEN  	  1		0	; slot1 = #slot0
			  7	[  0]	ISNEN	  1		0	; if slot1 ~= 1
			  8	[  0]	JMP  	  1		6	; 	goto 15
			  9	[  0]	MOV  	  3		0	; slot3 = slot0
			 10	[  0]	TGETS	  1	0	0	; slot1 = slot0.byte
			 11	[  0]	CALL 	  1	2	2	; slot1 = <unknown table>.byte(slot2)
			 12	[  0]	KSHORT	  2		127	; slot2 = 127
			 13	[  0]	ISLE 	  1		2	; if slot1 <= slot2
			 14	[  0]	JMP  	  1		2	; 	goto 17
			 15	[  0]	KPRI 	  1		1	; slot1 = false
			 16	[  0]	JMP  	  2		1	; 	goto 18
			 17	[  0]	KPRI 	  1		2	; slot1 = true
			 18	[  0]	RET1 	  1		2	; return slot1
		 94	[  0]	FNEW 	 12		33	; N/A:0-0: 1 args, 1 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	MOV  	  3		0	; slot3 = slot0
			  3	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
			  4	[  0]	IST  	   		1	; if slot1
			  5	[  0]	JMP  	  1		2	; 	goto 8
			  6	[  0]	KSTR 	  1		11	; slot1 = "nonAscii"
			  7	[  0]	RET1 	  1		2	; return slot1
			  8	[  0]	MOV  	  3		0	; slot3 = slot0
			  9	[  0]	TGETS	  1	0	10	; slot1 = slot0.match
			 10	[  0]	KSTR 	  4		9	; slot4 = "%s"
			 11	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.match(slot2, slot3)
			 12	[  0]	ISF  	   		1	; if not slot1
			 13	[  0]	JMP  	  2		2	; 	goto 16
			 14	[  0]	KSTR 	  1		8	; slot1 = "space"
			 15	[  0]	RET1 	  1		2	; return slot1
			 16	[  0]	MOV  	  3		0	; slot3 = slot0
			 17	[  0]	TGETS	  1	0	10	; slot1 = slot0.match
			 18	[  0]	KSTR 	  4		7	; slot4 = "%a"
			 19	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.match(slot2, slot3)
			 20	[  0]	ISF  	   		1	; if not slot1
			 21	[  0]	JMP  	  2		2	; 	goto 24
			 22	[  0]	KSTR 	  1		6	; slot1 = "letter"
			 23	[  0]	RET1 	  1		2	; return slot1
			 24	[  0]	MOV  	  3		0	; slot3 = slot0
			 25	[  0]	TGETS	  1	0	10	; slot1 = slot0.match
			 26	[  0]	KSTR 	  4		5	; slot4 = "%d"
			 27	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.match(slot2, slot3)
			 28	[  0]	IST  	   		1	; if slot1
			 29	[  0]	JMP  	  2		6	; 	goto 36
			 30	[  0]	ISEQS	  0		4	; if slot0 == "+"
			 31	[  0]	JMP  	  1		4	; 	goto 36
			 32	[  0]	ISEQS	  0		3	; if slot0 == "-"
			 33	[  0]	JMP  	  1		2	; 	goto 36
			 34	[  0]	ISNES	  0		2	; if slot0 ~= "%"
			 35	[  0]	JMP  	  1		2	; 	goto 38
			 36	[  0]	KSTR 	  1		1	; slot1 = "number"
			 37	[  0]	RET1 	  1		2	; return slot1
			 38	[  0]	KSTR 	  1		0	; slot1 = "punct"
			 39	[  0]	RET1 	  1		2	; return slot1
		 95	[  0]	FNEW 	 13		32	; N/A:0-0: 1 args, 0 upvalues, 2 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	ISEQP	  0		0	; if slot0 == nil
			  2	[  0]	JMP  	  1		2	; 	goto 5
			  3	[  0]	ISNES	  0		0	; if slot0 ~= "nonAscii"
			  4	[  0]	JMP  	  1		2	; 	goto 7
			  5	[  0]	KPRI 	  1		1	; slot1 = false
			  6	[  0]	JMP  	  2		1	; 	goto 8
			  7	[  0]	KPRI 	  1		2	; slot1 = true
			  8	[  0]	RET1 	  1		2	; return slot1
		 96	[  0]	FNEW 	 14		31	; N/A:0-0: 1 args, 0 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  1		3	; slot1 = _env["tostring"]
			  2	[  0]	ISTC 	  3		0	; slot3 = slot0; if slot0
			  3	[  0]	JMP  	  3		1	; 	goto 5
			  4	[  0]	KSTR 	  3		2	; slot3 = ""
			  5	[  0]	CALL 	  1	2	2	; slot1 = tostring(slot2)
			  6	[  0]	MOV  	  3		1	; slot3 = slot1
			  7	[  0]	TGETS	  1	1	1	; slot1 = slot1.gmatch
			  8	[  0]	KSTR 	  4		0	; slot4 = "[%z-\xc2-\xf4][\x80-\xbf]*"
			  9	[  0]	CALLT	  1		3	; return <unknown table>.gmatch(slot2, slot3)
		 97	[  0]	FNEW 	 15		30	; N/A:0-0: 3 args, 0 upvalues, 8 slots
			
			;;;; constant tables ;;;;
			ktable#1 = [
				[count] = 0,
				]
			
			
			ktable#2 = [
				[__mode] = k,
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	TGETV	  3	0	1	; slot3 = slot0[slot1]
			  2	[  0]	IST  	   		3	; if slot3
			  3	[  0]	JMP  	  4		6	; 	goto 10
			  4	[  0]	GGET 	  4		3	; slot4 = _env["setmetatable"]
			  5	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
			  6	[  0]	TDUP 	  7		2	; slot7 = copy table#k2
			  7	[  0]	CALL 	  4	2	3	; slot4 = setmetatable(slot5, slot6)
			  8	[  0]	MOV  	  3		4	; slot3 = setmetatable
			  9	[  0]	TSETV	  3	0	1	; slot0[slot1] = setmetatable
			 10	[  0]	TGETV	  4	3	2	; slot4 = setmetatable[slot2]
			 11	[  0]	IST  	   		4	; if slot4
			 12	[  0]	JMP  	  5		5	; 	goto 18
			 13	[  0]	TDUP 	  5		1	; slot5 = copy table#k1
			 14	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
			 15	[  0]	TSETS	  6	5	0	; slot5.values = slot6
			 16	[  0]	MOV  	  4		5	; slot4 = slot5
			 17	[  0]	TSETV	  4	3	2	; setmetatable[slot2] = slot4
			 18	[  0]	RET1 	  4		2	; return slot4
		 98	[  0]	FNEW 	 16		29	; N/A:0-0: 4 args, 0 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	TGETS	  4	0	1	; slot4 = slot0.count
			  2	[  0]	ISGT 	  3		4	; if slot3 > <unknown table>.count
			  3	[  0]	JMP  	  4		4	; 	goto 8
			  4	[  0]	KSHORT	  4		0	; slot4 = 0
			  5	[  0]	TSETS	  4	0	1	; slot0.count = slot4
			  6	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
			  7	[  0]	TSETS	  4	0	0	; slot0.values = slot4
			  8	[  0]	TGETS	  4	0	0	; slot4 = slot0.values
			  9	[  0]	TGETV	  4	4	1	; slot4 = <unknown table>.values[slot1]
			 10	[  0]	ISNEP	  4		0	; if slot4 ~= nil
			 11	[  0]	JMP  	  4		3	; 	goto 15
			 12	[  0]	TGETS	  4	0	1	; slot4 = slot0.count
			 13	[  0]	ADDVN	  4	4	0	; slot4 = <unknown table>.count + 1
			 14	[  0]	TSETS	  4	0	1	; slot0.count = slot4
			 15	[  0]	TGETS	  4	0	0	; slot4 = slot0.values
			 16	[  0]	TSETV	  2	4	1	; <unknown table>.values[slot1] = slot2
			 17	[  0]	RET1 	  2		2	; return slot2
		 99	[  0]	FNEW 	 17		28	; N/A:0-0: 1 args, 2 upvalues, 8 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	MOV  	  3		0	; slot3 = slot0
			  3	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = uv0"unknown"(slot2)
			  4	[  0]	JMP  	  4		7	; 	goto 12
			  5	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
			  6	[  0]	MOV  	  7		4	; slot7 = slot4
			  7	[  0]	CALL 	  5	2	2	; slot5 = uv1"unknown"(slot6)
			  8	[  0]	IST  	   		5	; if uv1"unknown"
			  9	[  0]	JMP  	  5		2	; 	goto 12
			 10	[  0]	KPRI 	  5		2	; slot5 = true
			 11	[  0]	RET1 	  5		2	; return slot5
			 12	[  0]	ITERC	  4	2	3	; slot4, slot5, slot6 = slot1, slot2, slot3; slot4 = slot1(slot2, slot3)
			 13	[  0]	ITERL	  4		-9	; slot3 = slot4; if slot4 != nil goto 5
			 14	[  0]	KPRI 	  1		1	; slot1 = false
			 15	[  0]	RET1 	  1		2	; return slot1
		100	[  0]	FNEW 	 18		27	; N/A:0-0: 0 args, 1 upvalues, 2 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  0		6	; slot0 = _env["_G"]
			  2	[  0]	TGETS	  0	0	5	; slot0 = _G.currentGameLang
			  3	[  0]	IST  	   		0	; if _G.currentGameLang
			  4	[  0]	JMP  	  1		1	; 	goto 6
			  5	[  0]	KSTR 	  0		4	; slot0 = "ko"
			  6	[  0]	ISEQS	  0		3	; if slot0 == "zh"
			  7	[  0]	JMP  	  0		2	; 	goto 10
			  8	[  0]	KPRI 	  0		0	; slot0 = nil
			  9	[  0]	RET1 	  0		2	; return slot0
			 10	[  0]	GGET 	  0		2	; slot0 = _env["love"]
			 11	[  0]	TGETS	  0	0	1	; slot0 = love.graphics
			 12	[  0]	TGETS	  0	0	0	; slot0 = love.graphics.getFont
			 13	[  0]	ISF  	   		0	; if not love.graphics.getFont
			 14	[  0]	JMP  	  1		6	; 	goto 21
			 15	[  0]	GGET 	  0		2	; slot0 = _env["love"]
			 16	[  0]	TGETS	  0	0	1	; slot0 = love.graphics
			 17	[  0]	TGETS	  0	0	0	; slot0 = love.graphics.getFont
			 18	[  0]	CALL 	  0	2	1	; slot0 = love.graphics.getFont()
			 19	[  0]	IST  	   		0	; if slot0
			 20	[  0]	JMP  	  1		1	; 	goto 22
			 21	[  0]	KPRI 	  0		0	; slot0 = nil
			 22	[  0]	ISF  	   		0	; if not slot0
			 23	[  0]	JMP  	  1		4	; 	goto 28
			 24	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			 25	[  0]	TGETV	  1	1	0	; slot1 = uv0"unknown"[slot0]
			 26	[  0]	IST  	   		1	; if slot1
			 27	[  0]	JMP  	  2		1	; 	goto 29
			 28	[  0]	KPRI 	  1		0	; slot1 = nil
			 29	[  0]	RET1 	  1		2	; return slot1
		101	[  0]	FNEW 	 19		26	; N/A:0-0: 3 args, 3 upvalues, 15 slots
			
			;;;; constant tables ;;;;
			ktable#2 = [
				[width] = 0,
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	TDUP 	  3		2	; slot3 = copy table#k2
			  2	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
			  3	[  0]	TSETS	  4	3	1	; slot3.runs = slot4
			  4	[  0]	KNIL 	  4		5	; slot4, slot5 = nil
			  5	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
			  6	[  0]	FNEW 	  7		0	; N/A:0-0: 0 args, 7 upvalues, 10 slots
				
				;;;; constant tables ;;;;
				ktable#4 = [
					]
				
				
				;;;; instructions ;;;;
				  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
				  2	[  0]	LEN  	  0		0	; slot0 = #uv0"unknown"
				  3	[  0]	ISNEN	  0		0	; if slot0 ~= 0
				  4	[  0]	JMP  	  0		1	; 	goto 6
				  5	[  0]	RET0 	  0		1	; return
				  6	[  0]	GGET 	  0		9	; slot0 = _env["table"]
				  7	[  0]	TGETS	  0	0	8	; slot0 = table.concat
				  8	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
				  9	[  0]	CALL 	  0	2	2	; slot0 = table.concat(slot1)
				 10	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
				 11	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
				 12	[  0]	CALL 	  1	2	2	; slot1 = uv1"unknown"(slot2)
				 13	[  0]	ISF  	   		1	; if not slot1
				 14	[  0]	JMP  	  2		3	; 	goto 18
				 15	[  0]	UGET 	  1		3	; slot1 = uv3"unknwon"
				 16	[  0]	IST  	   		1	; if uv3"unknown"
				 17	[  0]	JMP  	  2		1	; 	goto 19
				 18	[  0]	UGET 	  1		4	; slot1 = uv4"unknwon"
				 19	[  0]	KPRI 	  2		1	; slot2 = false
				 20	[  0]	UGET 	  3		5	; slot3 = uv5"unknwon"
				 21	[  0]	ISEQP	  3		0	; if uv5"unknown" == nil
				 22	[  0]	JMP  	  3		18	; 	goto 41
				 23	[  0]	UGET 	  3		5	; slot3 = uv5"unknwon"
				 24	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
				 25	[  0]	ISEQV	  3		4	; if uv5"unknown" == uv2"unknown"
				 26	[  0]	JMP  	  3		14	; 	goto 41
				 27	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
				 28	[  0]	UGET 	  5		5	; slot5 = uv5"unknwon"
				 29	[  0]	CALL 	  3	2	2	; slot3 = uv1"unknown"(uv2"unknown")
				 30	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
				 31	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
				 32	[  0]	CALL 	  4	2	2	; slot4 = uv1"unknown"(uv5"unknown")
				 33	[  0]	ISEQV	  3		4	; if uv1"unknown" == uv1"unknown"
				 34	[  0]	JMP  	  3		6	; 	goto 41
				 35	[  0]	KPRI 	  2		2	; slot2 = true
				 36	[  0]	UGET 	  3		6	; slot3 = uv6"unknwon"
				 37	[  0]	UGET 	  4		6	; slot4 = uv6"unknwon"
				 38	[  0]	TGETS	  4	4	7	; slot4 = uv6"unknown".width
				 39	[  0]	ADDVN	  4	4	1	; slot4 = uv6"unknown".width + 2
				 40	[  0]	TSETS	  4	3	7	; uv6"unknown".width = slot4
				 41	[  0]	ISF  	   		1	; if not uv4"unknown"
				 42	[  0]	JMP  	  3		6	; 	goto 49
				 43	[  0]	MOV  	  5		1	; slot5 = uv4"unknown"
				 44	[  0]	TGETS	  3	1	6	; slot3 = uv4"unknown".getWidth
				 45	[  0]	MOV  	  6		0	; slot6 = slot0
				 46	[  0]	CALL 	  3	2	3	; slot3 = uv4"unknown".getWidth(slot4, uv4"unknown")
				 47	[  0]	IST  	   		3	; if slot3
				 48	[  0]	JMP  	  4		1	; 	goto 50
				 49	[  0]	KSHORT	  3		0	; slot3 = 0
				 50	[  0]	UGET 	  4		6	; slot4 = uv6"unknwon"
				 51	[  0]	TGETS	  4	4	5	; slot4 = uv6"unknown".runs
				 52	[  0]	UGET 	  5		6	; slot5 = uv6"unknwon"
				 53	[  0]	TGETS	  5	5	5	; slot5 = uv6"unknown".runs
				 54	[  0]	LEN  	  5		5	; slot5 = #uv6"unknown".runs
				 55	[  0]	ADDVN	  5	5	2	; slot5 = slot5 + 1
				 56	[  0]	TDUP 	  6		4	; slot6 = copy table#k4
				 57	[  0]	TSETS	  0	6	3	; slot6.text = slot0
				 58	[  0]	TSETS	  1	6	2	; slot6.font = uv4"unknown"
				 59	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
				 60	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
				 61	[  0]	CALL 	  7	2	2	; slot7 = uv1"unknown"(slot8)
				 62	[  0]	TSETS	  7	6	1	; slot6.ascii = uv1"unknown"
				 63	[  0]	TSETS	  2	6	0	; slot6.transition = slot2
				 64	[  0]	TSETS	  3	6	7	; slot6.width = slot3
				 65	[  0]	TSETV	  6	4	5	; uv6"unknown".runs[slot5] = slot6
				 66	[  0]	UGET 	  4		6	; slot4 = uv6"unknwon"
				 67	[  0]	UGET 	  5		6	; slot5 = uv6"unknwon"
				 68	[  0]	TGETS	  5	5	7	; slot5 = uv6"unknown".width
				 69	[  0]	ADDVV	  5	5	3	; slot5 = uv6"unknown".width + slot3
				 70	[  0]	TSETS	  5	4	7	; uv6"unknown".width = slot5
				 71	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
				 72	[  0]	USETV	  5		4	; uv5"unknwon" = uv2"unknown"
				 73	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
				 74	[  0]	USETV	  0		4	; uv0"unknwon" = slot4
				 75	[  0]	RET0 	  0		1	; return
			  7	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
			  8	[  0]	MOV  	 10		0	; slot10 = slot0
			  9	[  0]	CALL 	  8	4	2	; slot8, slot9, slot10 = uv1"unknown"(slot9)
			 10	[  0]	JMP  	 11		15	; 	goto 26
			 11	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
			 12	[  0]	MOV  	 14		11	; slot14 = slot11
			 13	[  0]	CALL 	 12	2	2	; slot12 = uv2"unknown"(slot13)
			 14	[  0]	ISNEP	  4		0	; if slot4 ~= nil
			 15	[  0]	JMP  	 13		2	; 	goto 18
			 16	[  0]	MOV  	  4		12	; slot4 = uv2"unknown"
			 17	[  0]	JMP  	 13		5	; 	goto 23
			 18	[  0]	ISEQV	 12		4	; if uv2"unknown" == uv2"unknown"
			 19	[  0]	JMP  	 13		3	; 	goto 23
			 20	[  0]	MOV  	 13		7	; slot13 = slot7
			 21	[  0]	CALL 	 13	1	1	;  = slot13()
			 22	[  0]	MOV  	  4		12	; slot4 = uv2"unknown"
			 23	[  0]	LEN  	 13		6	; slot13 = #slot6
			 24	[  0]	ADDVN	 13	13	0	; slot13 = slot13 + 1
			 25	[  0]	TSETV	 11	6	13	; slot6[slot13] = slot11
			 26	[  0]	ITERC	 11	2	3	; slot11, slot12, slot13 = uv1"unknown", slot9, slot10; slot11 = uv1"unknown"(slot9, slot10)
			 27	[  0]	ITERL	 11		-17	; slot10 = slot11; if slot11 != nil goto 11
			 28	[  0]	MOV  	  8		7	; slot8 = slot7
			 29	[  0]	CALL 	  8	1	1	;  = slot8()
			 30	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 31
			 31	[  0]	RET1 	  3		2	; return slot3
		102	[  0]	FNEW 	 20		25	; N/A:0-0: 3 args, 4 upvalues, 14 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  3		2	; slot3 = _env["tostring"]
			  2	[  0]	ISTC 	  5		0	; slot5 = slot0; if slot0
			  3	[  0]	JMP  	  5		1	; 	goto 5
			  4	[  0]	KSTR 	  5		1	; slot5 = ""
			  5	[  0]	CALL 	  3	2	2	; slot3 = tostring(slot4)
			  6	[  0]	MOV  	  0		3	; slot0 = tostring
			  7	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			  8	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
			  9	[  0]	MOV  	  6		1	; slot6 = slot1
			 10	[  0]	MOV  	  7		2	; slot7 = slot2
			 11	[  0]	CALL 	  3	2	4	; slot3 = uv0"unknown"(slot4, uv1"unknown", slot6)
			 12	[  0]	TGETS	  4	3	0	; slot4 = slot3.values
			 13	[  0]	TGETV	  4	4	0	; slot4 = <unknown table>.values[tostring]
			 14	[  0]	ISF  	   		4	; if not slot4
			 15	[  0]	JMP  	  5		1	; 	goto 17
			 16	[  0]	RET1 	  4		2	; return slot4
			 17	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
			 18	[  0]	MOV  	  7		3	; slot7 = slot3
			 19	[  0]	MOV  	  8		0	; slot8 = tostring
			 20	[  0]	UGET 	  9		3	; slot9 = uv3"unknwon"
			 21	[  0]	MOV  	 11		0	; slot11 = tostring
			 22	[  0]	MOV  	 12		1	; slot12 = slot1
			 23	[  0]	MOV  	 13		2	; slot13 = slot2
			 24	[  0]	CALL 	  9	2	4	; slot9 = uv3"unknown"(slot10, tostring, slot12)
			 25	[  0]	KSHORT	 10		1024	; slot10 = 1024
			 26	[  0]	CALLT	  5		5	; return uv2"unknown"(slot6, slot7, tostring, uv3"unknown")
		103	[  0]	FNEW 	 21		24	; N/A:0-0: 3 args, 1 upvalues, 8 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			  2	[  0]	MOV  	  5		0	; slot5 = slot0
			  3	[  0]	MOV  	  6		1	; slot6 = slot1
			  4	[  0]	MOV  	  7		2	; slot7 = slot2
			  5	[  0]	CALL 	  3	2	4	; slot3 = uv0"unknown"(slot4, slot5, slot6)
			  6	[  0]	TGETS	  3	3	0	; slot3 = slot3.width
			  7	[  0]	RET1 	  3		2	; return <unknown table>.width
		104	[  0]	FNEW 	 22		23	; N/A:0-0: 3 args, 1 upvalues, 8 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			  2	[  0]	MOV  	  5		0	; slot5 = slot0
			  3	[  0]	MOV  	  6		1	; slot6 = slot1
			  4	[  0]	MOV  	  7		2	; slot7 = slot2
			  5	[  0]	CALL 	  3	2	4	; slot3 = uv0"unknown"(slot4, slot5, slot6)
			  6	[  0]	TGETS	  3	3	0	; slot3 = slot3.width
			  7	[  0]	RET1 	  3		2	; return <unknown table>.width
		105	[  0]	GGET 	 23		81	; slot23 = _env["_G"]
		106	[  0]	FNEW 	 24		21	; N/A:0-0: 2 args, 2 upvalues, 8 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  2		6	; slot2 = _env["_G"]
			  2	[  0]	TGETS	  2	2	5	; slot2 = _G.currentGameLang
			  3	[  0]	IST  	   		2	; if _G.currentGameLang
			  4	[  0]	JMP  	  3		1	; 	goto 6
			  5	[  0]	KSTR 	  2		4	; slot2 = "ko"
			  6	[  0]	ISEQS	  2		3	; if slot2 == "zh"
			  7	[  0]	JMP  	  2		2	; 	goto 10
			  8	[  0]	KPRI 	  2		0	; slot2 = nil
			  9	[  0]	RET1 	  2		2	; return slot2
			 10	[  0]	IST  	   		1	; if slot1
			 11	[  0]	JMP  	  2		12	; 	goto 24
			 12	[  0]	GGET 	  2		2	; slot2 = _env["love"]
			 13	[  0]	TGETS	  2	2	1	; slot2 = love.graphics
			 14	[  0]	TGETS	  2	2	0	; slot2 = love.graphics.getFont
			 15	[  0]	ISF  	   		2	; if not love.graphics.getFont
			 16	[  0]	JMP  	  3		6	; 	goto 23
			 17	[  0]	GGET 	  2		2	; slot2 = _env["love"]
			 18	[  0]	TGETS	  2	2	1	; slot2 = love.graphics
			 19	[  0]	TGETS	  2	2	0	; slot2 = love.graphics.getFont
			 20	[  0]	CALL 	  2	2	1	; slot2 = love.graphics.getFont()
			 21	[  0]	ISTC 	  1		2	; slot1 = love.graphics.getFont; if love.graphics.getFont
			 22	[  0]	JMP  	  3		1	; 	goto 24
			 23	[  0]	KPRI 	  1		0	; slot1 = nil
			 24	[  0]	ISF  	   		1	; if not slot1
			 25	[  0]	JMP  	  2		4	; 	goto 30
			 26	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			 27	[  0]	TGETV	  2	2	1	; slot2 = uv0"unknown"[slot1]
			 28	[  0]	IST  	   		2	; if slot2
			 29	[  0]	JMP  	  3		1	; 	goto 31
			 30	[  0]	KPRI 	  2		0	; slot2 = nil
			 31	[  0]	ISF  	   		1	; if not slot1
			 32	[  0]	JMP  	  3		2	; 	goto 35
			 33	[  0]	IST  	   		2	; if slot2
			 34	[  0]	JMP  	  3		2	; 	goto 37
			 35	[  0]	KPRI 	  3		0	; slot3 = nil
			 36	[  0]	RET1 	  3		2	; return slot3
			 37	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
			 38	[  0]	MOV  	  5		0	; slot5 = slot0
			 39	[  0]	MOV  	  6		1	; slot6 = slot1
			 40	[  0]	MOV  	  7		2	; slot7 = slot2
			 41	[  0]	CALLT	  3		4	; return uv1"unknown"(slot4, slot5, slot6)
		107	[  0]	TSETS	 24	23	22	; _G.measureChineseMixedTextWidth = slot24
		108	[  0]	GGET 	 23		81	; slot23 = _env["_G"]
		109	[  0]	FNEW 	 24		19	; N/A:0-0: 1 args, 1 upvalues, 3 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  1		6	; slot1 = _env["_G"]
			  2	[  0]	TGETS	  1	1	5	; slot1 = _G.currentGameLang
			  3	[  0]	IST  	   		1	; if _G.currentGameLang
			  4	[  0]	JMP  	  2		1	; 	goto 6
			  5	[  0]	KSTR 	  1		4	; slot1 = "ko"
			  6	[  0]	ISEQS	  1		3	; if slot1 == "zh"
			  7	[  0]	JMP  	  1		2	; 	goto 10
			  8	[  0]	KPRI 	  1		0	; slot1 = nil
			  9	[  0]	RET1 	  1		2	; return slot1
			 10	[  0]	IST  	   		0	; if slot0
			 11	[  0]	JMP  	  1		12	; 	goto 24
			 12	[  0]	GGET 	  1		2	; slot1 = _env["love"]
			 13	[  0]	TGETS	  1	1	1	; slot1 = love.graphics
			 14	[  0]	TGETS	  1	1	0	; slot1 = love.graphics.getFont
			 15	[  0]	ISF  	   		1	; if not love.graphics.getFont
			 16	[  0]	JMP  	  2		6	; 	goto 23
			 17	[  0]	GGET 	  1		2	; slot1 = _env["love"]
			 18	[  0]	TGETS	  1	1	1	; slot1 = love.graphics
			 19	[  0]	TGETS	  1	1	0	; slot1 = love.graphics.getFont
			 20	[  0]	CALL 	  1	2	1	; slot1 = love.graphics.getFont()
			 21	[  0]	ISTC 	  0		1	; slot0 = slot1; if slot1
			 22	[  0]	JMP  	  2		1	; 	goto 24
			 23	[  0]	KPRI 	  0		0	; slot0 = nil
			 24	[  0]	ISF  	   		0	; if not slot0
			 25	[  0]	JMP  	  1		4	; 	goto 30
			 26	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			 27	[  0]	TGETV	  1	1	0	; slot1 = uv0"unknown"[slot0]
			 28	[  0]	IST  	   		1	; if slot1
			 29	[  0]	JMP  	  2		1	; 	goto 31
			 30	[  0]	KPRI 	  1		0	; slot1 = nil
			 31	[  0]	RET1 	  1		2	; return slot1
		110	[  0]	TSETS	 24	23	20	; _G.getChineseLatinFallbackFont = slot24
		111	[  0]	FNEW 	 23		18	; N/A:0-0: 4+ args, 3 upvalues, 24 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  4		17	; slot4 = _env["love"]
			  2	[  0]	TGETS	  4	4	16	; slot4 = love.graphics
			  3	[  0]	TGETS	  4	4	15	; slot4 = love.graphics.getFont
			  4	[  0]	ISF  	   		4	; if not love.graphics.getFont
			  5	[  0]	JMP  	  5		6	; 	goto 12
			  6	[  0]	GGET 	  4		17	; slot4 = _env["love"]
			  7	[  0]	TGETS	  4	4	16	; slot4 = love.graphics
			  8	[  0]	TGETS	  4	4	15	; slot4 = love.graphics.getFont
			  9	[  0]	CALL 	  4	2	1	; slot4 = love.graphics.getFont()
			 10	[  0]	IST  	   		4	; if love.graphics.getFont
			 11	[  0]	JMP  	  5		1	; 	goto 13
			 12	[  0]	KPRI 	  4		0	; slot4 = nil
			 13	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
			 14	[  0]	CALL 	  5	2	1	; slot5 = uv0"unknown"()
			 15	[  0]	ISF  	   		4	; if not slot4
			 16	[  0]	JMP  	  6		2	; 	goto 19
			 17	[  0]	IST  	   		5	; if uv0"unknown"
			 18	[  0]	JMP  	  6		6	; 	goto 25
			 19	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
			 20	[  0]	MOV  	  8		0	; slot8 = slot0
			 21	[  0]	MOV  	  9		1	; slot9 = slot1
			 22	[  0]	MOV  	 10		2	; slot10 = slot2
			 23	[  0]	VARG 	 11	0	4	; MULTRES = ...
			 24	[  0]	CALLMT	  6		3	; return uv1"unknown"(slot7, slot8, ...MULTRES)
			 25	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
			 26	[  0]	VARG 	  7	0	4	; MULTRES = ...
			 27	[  0]	TSETM	  7		0	; for i = 0, MULTRES, 1 do slot6[0 + i] = slot(7 + i)
			 28	[  0]	GGET 	  7		14	; slot7 = _env["math"]
			 29	[  0]	TGETS	  7	7	13	; slot7 = math.abs
			 30	[  0]	GGET 	  9		12	; slot9 = _env["tonumber"]
			 31	[  0]	TGETB	 11	6	2	; slot11 = slot6[2]
			 32	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
			 33	[  0]	IST  	   		9	; if tonumber
			 34	[  0]	JMP  	 10		1	; 	goto 36
			 35	[  0]	KSHORT	  9		1	; slot9 = 1
			 36	[  0]	CALL 	  7	2	2	; slot7 = math.abs(slot8)
			 37	[  0]	MULNV	  8	7	1	; slot8 = 2 * math.abs
			 38	[  0]	GGET 	  9		11	; slot9 = _env["tostring"]
			 39	[  0]	ISTC 	 11		0	; slot11 = slot0; if slot0
			 40	[  0]	JMP  	 11		1	; 	goto 42
			 41	[  0]	KSTR 	 11		10	; slot11 = ""
			 42	[  0]	CALL 	  9	2	2	; slot9 = tostring(slot10)
			 43	[  0]	MOV  	  0		9	; slot0 = tostring
			 44	[  0]	ISTC 	  9		1	; slot9 = slot1; if slot1
			 45	[  0]	JMP  	  9		1	; 	goto 47
			 46	[  0]	KSHORT	  9		0	; slot9 = 0
			 47	[  0]	UGET 	 10		2	; slot10 = uv2"unknwon"
			 48	[  0]	MOV  	 12		0	; slot12 = tostring
			 49	[  0]	MOV  	 13		4	; slot13 = slot4
			 50	[  0]	MOV  	 14		5	; slot14 = uv0"unknown"
			 51	[  0]	CALL 	 10	2	4	; slot10 = uv2"unknown"(slot11, tostring, slot13)
			 52	[  0]	GGET 	 11		9	; slot11 = _env["ipairs"]
			 53	[  0]	TGETS	 13	10	8	; slot13 = uv2"unknown".runs
			 54	[  0]	CALL 	 11	4	2	; slot11, slot12, slot13 = ipairs(tostring)
			 55	[  0]	JMP  	 14		25	; 	goto 81
			 56	[  0]	TGETS	 16	15	7	; slot16 = slot15.transition
			 57	[  0]	ISF  	   		16	; if not <unknown table>.transition
			 58	[  0]	JMP  	 17		1	; 	goto 60
			 59	[  0]	ADDVV	  9	9	8	; slot9 = slot9 + slot8
			 60	[  0]	ISNES	  3		6	; if slot3 ~= "nonAsciiOnly"
			 61	[  0]	JMP  	 16		3	; 	goto 65
			 62	[  0]	TGETS	 16	15	5	; slot16 = slot15.ascii
			 63	[  0]	IST  	   		16	; if <unknown table>.ascii
			 64	[  0]	JMP  	 16		13	; 	goto 78
			 65	[  0]	GGET 	 16		17	; slot16 = _env["love"]
			 66	[  0]	TGETS	 16	16	16	; slot16 = love.graphics
			 67	[  0]	TGETS	 16	16	4	; slot16 = love.graphics.setFont
			 68	[  0]	TGETS	 18	15	3	; slot18 = slot15.font
			 69	[  0]	CALL 	 16	1	2	;  = love.graphics.setFont(slot17)
			 70	[  0]	UGET 	 16		1	; slot16 = uv1"unknwon"
			 71	[  0]	TGETS	 18	15	2	; slot18 = slot15.text
			 72	[  0]	MOV  	 19		9	; slot19 = slot9
			 73	[  0]	MOV  	 20		2	; slot20 = slot2
			 74	[  0]	GGET 	 21		1	; slot21 = _env["unpack"]
			 75	[  0]	MOV  	 23		6	; slot23 = slot6
			 76	[  0]	CALL 	 21	0	2	; MULTRES = unpack(slot22)
			 77	[  0]	CALLM	 16	1	3	;  = uv1"unknown"(slot17, <unknown table>.text, slot19, ...MULTRES)
			 78	[  0]	TGETS	 16	15	0	; slot16 = slot15.width
			 79	[  0]	MULVV	 16	16	7	; slot16 = <unknown table>.width * math.abs
			 80	[  0]	ADDVV	  9	9	16	; slot9 = slot9 + slot16
			 81	[  0]	ITERC	 14	3	3	; slot14, slot15, slot16 = ipairs, tostring, uv2"unknown".runs; slot14, slot15 = ipairs(tostring, uv2"unknown".runs)
			 82	[  0]	ITERL	 14		-27	; uv2"unknown".runs = uv0"unknown"; if uv0"unknown" != nil goto 56
			 83	[  0]	GGET 	 11		17	; slot11 = _env["love"]
			 84	[  0]	TGETS	 11	11	16	; slot11 = love.graphics
			 85	[  0]	TGETS	 11	11	4	; slot11 = love.graphics.setFont
			 86	[  0]	MOV  	 13		4	; slot13 = slot4
			 87	[  0]	CALL 	 11	1	2	;  = love.graphics.setFont(tostring)
			 88	[  0]	RET0 	  0		1	; return
		112	[  0]	FNEW 	 24		17	; N/A:0-0: 3+ args, 1 upvalues, 10 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			  2	[  0]	MOV  	  5		0	; slot5 = slot0
			  3	[  0]	MOV  	  6		1	; slot6 = slot1
			  4	[  0]	MOV  	  7		2	; slot7 = slot2
			  5	[  0]	KSTR 	  8		0	; slot8 = "all"
			  6	[  0]	VARG 	  9	0	3	; MULTRES = ...
			  7	[  0]	CALLMT	  3		4	; return uv0"unknown"(slot4, slot5, slot6, ...MULTRES)
		113	[  0]	FNEW 	 25		16	; N/A:0-0: 3+ args, 1 upvalues, 10 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			  2	[  0]	MOV  	  5		0	; slot5 = slot0
			  3	[  0]	MOV  	  6		1	; slot6 = slot1
			  4	[  0]	MOV  	  7		2	; slot7 = slot2
			  5	[  0]	KSTR 	  8		0	; slot8 = "nonAsciiOnly"
			  6	[  0]	VARG 	  9	0	3	; MULTRES = ...
			  7	[  0]	CALLMT	  3		4	; return uv0"unknown"(slot4, slot5, slot6, ...MULTRES)
		114	[  0]	FNEW 	 26		15	; N/A:0-0: 5+ args, 10 upvalues, 41 slots
			
			;;;; constant tables ;;;;
			ktable#9 = [
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  5		26	; slot5 = _env["love"]
			  2	[  0]	TGETS	  5	5	25	; slot5 = love.graphics
			  3	[  0]	TGETS	  5	5	24	; slot5 = love.graphics.getFont
			  4	[  0]	ISF  	   		5	; if not love.graphics.getFont
			  5	[  0]	JMP  	  6		6	; 	goto 12
			  6	[  0]	GGET 	  5		26	; slot5 = _env["love"]
			  7	[  0]	TGETS	  5	5	25	; slot5 = love.graphics
			  8	[  0]	TGETS	  5	5	24	; slot5 = love.graphics.getFont
			  9	[  0]	CALL 	  5	2	1	; slot5 = love.graphics.getFont()
			 10	[  0]	IST  	   		5	; if love.graphics.getFont
			 11	[  0]	JMP  	  6		1	; 	goto 13
			 12	[  0]	KPRI 	  5		0	; slot5 = nil
			 13	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
			 14	[  0]	CALL 	  6	2	1	; slot6 = uv0"unknown"()
			 15	[  0]	ISF  	   		5	; if not slot5
			 16	[  0]	JMP  	  7		2	; 	goto 19
			 17	[  0]	IST  	   		6	; if uv0"unknown"
			 18	[  0]	JMP  	  7		7	; 	goto 26
			 19	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
			 20	[  0]	MOV  	  9		0	; slot9 = slot0
			 21	[  0]	MOV  	 10		1	; slot10 = slot1
			 22	[  0]	MOV  	 11		2	; slot11 = slot2
			 23	[  0]	MOV  	 12		3	; slot12 = slot3
			 24	[  0]	VARG 	 13	0	5	; MULTRES = ...
			 25	[  0]	UCLO 	  0		187	; nil uvs >= r0; goto 213
			 26	[  0]	VARG 	  7	9	5	; slot7, slot8, slot9, slot10, slot11, slot12, slot13, slot14 = ...
			 27	[  0]	KSTR 	 15		23	; slot15 = "left"
			 28	[  0]	GGET 	 16		22	; slot16 = _env["type"]
			 29	[  0]	MOV  	 18		7	; slot18 = uv1"unknown"
			 30	[  0]	CALL 	 16	2	2	; slot16 = type(slot17)
			 31	[  0]	ISNES	 16		21	; if type ~= "string"
			 32	[  0]	JMP  	 16		13	; 	goto 46
			 33	[  0]	MOV  	 15		7	; slot15 = uv1"unknown"
			 34	[  0]	GGET 	 16		20	; slot16 = _env["select"]
			 35	[  0]	KSHORT	 18		2	; slot18 = 2
			 36	[  0]	VARG 	 19	0	5	; MULTRES = ...
			 37	[  0]	CALLM	 16	8	1	; slot16, slot17, slot18, slot19, slot20, slot21, slot22 = select(slot17, ...MULTRES)
			 38	[  0]	MOV  	 14		22	; slot14 = slot22
			 39	[  0]	MOV  	 13		21	; slot13 = slot21
			 40	[  0]	MOV  	 12		20	; slot12 = slot20
			 41	[  0]	MOV  	 11		19	; slot11 = slot19
			 42	[  0]	MOV  	 10		18	; slot10 = slot18
			 43	[  0]	MOV  	  9		17	; slot9 = slot17
			 44	[  0]	MOV  	  8		16	; slot8 = select
			 45	[  0]	JMP  	 16		8	; 	goto 54
			 46	[  0]	VARG 	 16	8	5	; slot16, slot17, slot18, slot19, slot20, slot21, slot22 = ...
			 47	[  0]	MOV  	 14		22	; slot14 = slot22
			 48	[  0]	MOV  	 13		21	; slot13 = slot21
			 49	[  0]	MOV  	 12		20	; slot12 = slot20
			 50	[  0]	MOV  	 11		19	; slot11 = slot19
			 51	[  0]	MOV  	 10		18	; slot10 = slot18
			 52	[  0]	MOV  	  9		17	; slot9 = slot17
			 53	[  0]	MOV  	  8		16	; slot8 = select
			 54	[  0]	IST  	   		8	; if select
			 55	[  0]	JMP  	 16		1	; 	goto 57
			 56	[  0]	KSHORT	  8		0	; slot8 = 0
			 57	[  0]	IST  	   		9	; if slot9
			 58	[  0]	JMP  	 16		1	; 	goto 60
			 59	[  0]	KSHORT	  9		1	; slot9 = 1
			 60	[  0]	IST  	   		10	; if slot10
			 61	[  0]	JMP  	 16		1	; 	goto 63
			 62	[  0]	MOV  	 10		9	; slot10 = slot9
			 63	[  0]	IST  	   		11	; if slot11
			 64	[  0]	JMP  	 16		1	; 	goto 66
			 65	[  0]	KSHORT	 11		0	; slot11 = 0
			 66	[  0]	IST  	   		12	; if slot12
			 67	[  0]	JMP  	 16		1	; 	goto 69
			 68	[  0]	KSHORT	 12		0	; slot12 = 0
			 69	[  0]	IST  	   		13	; if slot13
			 70	[  0]	JMP  	 16		1	; 	goto 72
			 71	[  0]	KSHORT	 13		0	; slot13 = 0
			 72	[  0]	IST  	   		14	; if slot14
			 73	[  0]	JMP  	 16		1	; 	goto 75
			 74	[  0]	KSHORT	 14		0	; slot14 = 0
			 75	[  0]	GGET 	 16		19	; slot16 = _env["tostring"]
			 76	[  0]	ISTC 	 18		0	; slot18 = slot0; if slot0
			 77	[  0]	JMP  	 18		1	; 	goto 79
			 78	[  0]	KSTR 	 18		18	; slot18 = ""
			 79	[  0]	CALL 	 16	2	2	; slot16 = tostring(slot17)
			 80	[  0]	MOV  	  0		16	; slot0 = tostring
			 81	[  0]	GGET 	 16		17	; slot16 = _env["tonumber"]
			 82	[  0]	MOV  	 18		3	; slot18 = slot3
			 83	[  0]	CALL 	 16	2	2	; slot16 = tonumber(slot17)
			 84	[  0]	IST  	   		16	; if tonumber
			 85	[  0]	JMP  	 17		1	; 	goto 87
			 86	[  0]	KSHORT	 16		0	; slot16 = 0
			 87	[  0]	UGET 	 17		2	; slot17 = uv2"unknwon"
			 88	[  0]	UGET 	 19		3	; slot19 = uv3"unknwon"
			 89	[  0]	MOV  	 20		5	; slot20 = slot5
			 90	[  0]	MOV  	 21		6	; slot21 = uv0"unknown"
			 91	[  0]	CALL 	 17	2	4	; slot17 = uv2"unknown"(slot18, uv3"unknown", slot20)
			 92	[  0]	GGET 	 18		19	; slot18 = _env["tostring"]
			 93	[  0]	MOV  	 20		16	; slot20 = slot16
			 94	[  0]	CALL 	 18	2	2	; slot18 = tostring(uv3"unknown")
			 95	[  0]	KSTR 	 19		16	; slot19 = " "
			 96	[  0]	MOV  	 20		0	; slot20 = tostring
			 97	[  0]	CAT  	 18	18	20	; slot18 = tostring .. slot19 .. tostring
			 98	[  0]	TGETS	 19	17	15	; slot19 = uv2"unknown".values
			 99	[  0]	TGETV	 19	19	18	; slot19 = uv2"unknown".values[slot18]
			100	[  0]	IST  	   		19	; if slot19
			101	[  0]	JMP  	 20		34	; 	goto 136
			102	[  0]	TNEW 	 20		0	; slot20 = new table( array: 0, dict: 1)
			103	[  0]	FNEW 	 21		14	; N/A:0-0: 1 args, 1 upvalues, 3 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
				  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
				  3	[  0]	LEN  	  2		2	; slot2 = #uv0"unknown"
				  4	[  0]	ADDVN	  2	2	0	; slot2 = slot2 + 1
				  5	[  0]	TSETV	  0	1	2	; uv0"unknown"[slot2] = slot0
				  6	[  0]	RET0 	  0		1	; return
			104	[  0]	FNEW 	 22		13	; N/A:0-0: 2 args, 5 upvalues, 13 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	GGET 	  2		2	; slot2 = _env["tostring"]
				  2	[  0]	ISTC 	  4		0	; slot4 = slot0; if slot0
				  3	[  0]	JMP  	  4		1	; 	goto 5
				  4	[  0]	KSTR 	  4		1	; slot4 = ""
				  5	[  0]	CALL 	  2	2	2	; slot2 = tostring(slot3)
				  6	[  0]	MOV  	  0		2	; slot0 = slot2
				  7	[  0]	GGET 	  2		0	; slot2 = _env["tonumber"]
				  8	[  0]	MOV  	  4		1	; slot4 = slot1
				  9	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
				 10	[  0]	ISTC 	  1		2	; slot1 = slot2; if slot2
				 11	[  0]	JMP  	  3		1	; 	goto 13
				 12	[  0]	KSHORT	  1		0	; slot1 = 0
				 13	[  0]	KSHORT	  2		0	; slot2 = 0
				 14	[  0]	ISLE 	  1		2	; if slot1 <= slot2
				 15	[  0]	JMP  	  2		7	; 	goto 23
				 16	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
				 17	[  0]	MOV  	  4		0	; slot4 = slot0
				 18	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
				 19	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
				 20	[  0]	CALL 	  2	2	4	; slot2 = uv0"unknown"(slot3, slot4, uv1"unknown")
				 21	[  0]	ISGT 	  2		1	; if slot2 > slot1
				 22	[  0]	JMP  	  2		4	; 	goto 27
				 23	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
				 24	[  0]	MOV  	  4		0	; slot4 = slot0
				 25	[  0]	CALL 	  2	1	2	;  = uv3"unknown"(slot3)
				 26	[  0]	RET0 	  0		1	; return
				 27	[  0]	KSTR 	  2		1	; slot2 = ""
				 28	[  0]	UGET 	  3		4	; slot3 = uv4"unknwon"
				 29	[  0]	MOV  	  5		0	; slot5 = slot0
				 30	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = uv4"unknown"(slot4)
				 31	[  0]	JMP  	  6		18	; 	goto 50
				 32	[  0]	MOV  	  7		2	; slot7 = slot2
				 33	[  0]	MOV  	  8		6	; slot8 = uv2"unknown"
				 34	[  0]	CAT  	  7	7	8	; slot7 = slot7 .. uv2"unknown"
				 35	[  0]	ISEQS	  2		1	; if slot2 == ""
				 36	[  0]	JMP  	  8		7	; 	goto 44
				 37	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
				 38	[  0]	MOV  	 10		7	; slot10 = slot7
				 39	[  0]	UGET 	 11		1	; slot11 = uv1"unknwon"
				 40	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
				 41	[  0]	CALL 	  8	2	4	; slot8 = uv0"unknown"(slot9, slot10, uv1"unknown")
				 42	[  0]	ISGT 	  8		1	; if uv0"unknown" > slot1
				 43	[  0]	JMP  	  8		2	; 	goto 46
				 44	[  0]	MOV  	  2		7	; slot2 = slot7
				 45	[  0]	JMP  	  8		4	; 	goto 50
				 46	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
				 47	[  0]	MOV  	 10		2	; slot10 = slot2
				 48	[  0]	CALL 	  8	1	2	;  = uv3"unknown"(slot9)
				 49	[  0]	MOV  	  2		6	; slot2 = uv2"unknown"
				 50	[  0]	ITERC	  6	2	3	; slot6, slot7, slot8 = uv4"unknown", slot4, slot5; slot6 = uv4"unknown"(slot4, slot5)
				 51	[  0]	ITERL	  6		-20	; slot5 = uv2"unknown"; if uv2"unknown" != nil goto 32
				 52	[  0]	ISEQS	  2		1	; if uv2"unknown" == ""
				 53	[  0]	JMP  	  3		3	; 	goto 57
				 54	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
				 55	[  0]	MOV  	  5		2	; slot5 = uv2"unknown"
				 56	[  0]	CALL 	  3	1	2	;  = uv3"unknown"(slot4)
				 57	[  0]	RET0 	  0		1	; return
			105	[  0]	MOV  	 23		0	; slot23 = tostring
			106	[  0]	KSTR 	 24		12	; slot24 = "
			"
			107	[  0]	CAT  	 23	23	24	; slot23 = tostring .. slot24
			108	[  0]	MOV  	 25		23	; slot25 = slot23
			109	[  0]	TGETS	 23	23	11	; slot23 = slot23.gmatch
			110	[  0]	KSTR 	 26		10	; slot26 = "(.-)
			"
			111	[  0]	CALL 	 23	4	3	; slot23, slot24, slot25 = <unknown table>.gmatch(slot24, slot25)
			112	[  0]	JMP  	 26		4	; 	goto 117
			113	[  0]	MOV  	 27		22	; slot27 = slot22
			114	[  0]	MOV  	 29		26	; slot29 = slot26
			115	[  0]	MOV  	 30		16	; slot30 = slot16
			116	[  0]	CALL 	 27	1	3	;  = slot27(slot28, slot29)
			117	[  0]	ITERC	 26	2	3	; slot26, slot27, slot28 = <unknown table>.gmatch, slot24, slot25; slot26 = <unknown table>.gmatch(slot24, slot25)
			118	[  0]	ITERL	 26		-6	; slot25 = slot26; if slot26 != nil goto 113
			119	[  0]	LEN  	 23		20	; slot23 = #slot20
			120	[  0]	ISNEN	 23		0	; if slot23 ~= 0
			121	[  0]	JMP  	 23		1	; 	goto 123
			122	[  0]	TSETB	  0	20	1	; slot20[1] = tostring
			123	[  0]	UGET 	 23		6	; slot23 = uv6"unknwon"
			124	[  0]	MOV  	 25		17	; slot25 = uv2"unknown"
			125	[  0]	MOV  	 26		18	; slot26 = slot18
			126	[  0]	TDUP 	 27		9	; slot27 = copy table#k9
			127	[  0]	TSETS	 20	27	8	; slot27.lines = slot20
			128	[  0]	UGET 	 28		7	; slot28 = uv7"unknwon"
			129	[  0]	MOV  	 30		0	; slot30 = tostring
			130	[  0]	CALL 	 28	2	2	; slot28 = uv7"unknown"(slot29)
			131	[  0]	TSETS	 28	27	7	; slot27.hasNonAscii = uv7"unknown"
			132	[  0]	KSHORT	 28		512	; slot28 = 512
			133	[  0]	CALL 	 23	2	5	; slot23 = uv6"unknown"(slot24, uv2"unknown", slot26, slot27)
			134	[  0]	MOV  	 19		23	; slot19 = uv6"unknown"
			135	[  0]	UCLO 	 20		0	; nil uvs >= r20; goto 136
			136	[  0]	TGETS	 20	19	7	; slot20 = uv6"unknown".hasNonAscii
			137	[  0]	ISF  	   		20	; if not uv6"unknown".hasNonAscii
			138	[  0]	JMP  	 21		5	; 	goto 144
			139	[  0]	MOV  	 22		5	; slot22 = slot5
			140	[  0]	TGETS	 20	5	6	; slot20 = slot5.getHeight
			141	[  0]	CALL 	 20	2	2	; slot20 = <unknown table>.getHeight(slot21)
			142	[  0]	IST  	   		20	; if <unknown table>.getHeight
			143	[  0]	JMP  	 21		3	; 	goto 147
			144	[  0]	MOV  	 22		6	; slot22 = uv0"unknown"
			145	[  0]	TGETS	 20	6	6	; slot20 = uv0"unknown".getHeight
			146	[  0]	CALL 	 20	2	2	; slot20 = uv0"unknown".getHeight(slot21)
			147	[  0]	GGET 	 21		5	; slot21 = _env["ipairs"]
			148	[  0]	TGETS	 23	19	8	; slot23 = uv6"unknown".lines
			149	[  0]	CALL 	 21	4	2	; slot21, slot22, slot23 = ipairs(uv0"unknown")
			150	[  0]	JMP  	 24		53	; 	goto 204
			151	[  0]	UGET 	 26		8	; slot26 = uv8"unknwon"
			152	[  0]	MOV  	 28		25	; slot28 = uv2"unknown"
			153	[  0]	MOV  	 29		5	; slot29 = slot5
			154	[  0]	MOV  	 30		6	; slot30 = uv0"unknown"
			155	[  0]	CALL 	 26	2	4	; slot26 = uv8"unknown"(slot27, uv2"unknown", slot29)
			156	[  0]	ISTC 	 27		1	; slot27 = slot1; if slot1
			157	[  0]	JMP  	 27		1	; 	goto 159
			158	[  0]	KSHORT	 27		0	; slot27 = 0
			159	[  0]	ISNES	 15		4	; if uv1"unknown" ~= "center"
			160	[  0]	JMP  	 28		12	; 	goto 173
			161	[  0]	GGET 	 28		3	; slot28 = _env["math"]
			162	[  0]	TGETS	 28	28	2	; slot28 = math.floor
			163	[  0]	ISTC 	 30		3	; slot30 = slot3; if slot3
			164	[  0]	JMP  	 30		1	; 	goto 166
			165	[  0]	KSHORT	 30		0	; slot30 = 0
			166	[  0]	SUBVV	 30	30	26	; slot30 = slot30 - uv8"unknown"
			167	[  0]	MULVV	 30	30	9	; slot30 = slot30 * slot9
			168	[  0]	MULVN	 30	30	1	; slot30 = slot30 * 0.5
			169	[  0]	ADDVN	 30	30	1	; slot30 = slot30 + 0.5
			170	[  0]	CALL 	 28	2	2	; slot28 = math.floor(slot29)
			171	[  0]	ADDVV	 27	27	28	; slot27 = slot27 + math.floor
			172	[  0]	JMP  	 28		12	; 	goto 185
			173	[  0]	ISNES	 15		1	; if uv1"unknown" ~= "right"
			174	[  0]	JMP  	 28		10	; 	goto 185
			175	[  0]	GGET 	 28		3	; slot28 = _env["math"]
			176	[  0]	TGETS	 28	28	2	; slot28 = math.floor
			177	[  0]	ISTC 	 30		3	; slot30 = slot3; if slot3
			178	[  0]	JMP  	 30		1	; 	goto 180
			179	[  0]	KSHORT	 30		0	; slot30 = 0
			180	[  0]	SUBVV	 30	30	26	; slot30 = slot30 - uv8"unknown"
			181	[  0]	MULVV	 30	30	9	; slot30 = slot30 * slot9
			182	[  0]	ADDVN	 30	30	1	; slot30 = slot30 + 0.5
			183	[  0]	CALL 	 28	2	2	; slot28 = math.floor(slot29)
			184	[  0]	ADDVV	 27	27	28	; slot27 = slot27 + math.floor
			185	[  0]	UGET 	 28		9	; slot28 = uv9"unknwon"
			186	[  0]	MOV  	 30		25	; slot30 = uv2"unknown"
			187	[  0]	MOV  	 31		27	; slot31 = slot27
			188	[  0]	ISTC 	 32		2	; slot32 = slot2; if slot2
			189	[  0]	JMP  	 32		1	; 	goto 191
			190	[  0]	KSHORT	 32		0	; slot32 = 0
			191	[  0]	SUBVN	 33	24	2	; slot33 = slot24 - 1
			192	[  0]	MULVV	 33	33	20	; slot33 = slot33 * uv0"unknown".getHeight
			193	[  0]	MULVV	 33	33	10	; slot33 = slot33 * slot10
			194	[  0]	ADDVV	 32	32	33	; slot32 = slot32 + slot33
			195	[  0]	MOV  	 33		4	; slot33 = slot4
			196	[  0]	MOV  	 34		8	; slot34 = slot8
			197	[  0]	MOV  	 35		9	; slot35 = slot9
			198	[  0]	MOV  	 36		10	; slot36 = slot10
			199	[  0]	MOV  	 37		11	; slot37 = slot11
			200	[  0]	MOV  	 38		12	; slot38 = slot12
			201	[  0]	MOV  	 39		13	; slot39 = slot13
			202	[  0]	MOV  	 40		14	; slot40 = slot14
			203	[  0]	CALL 	 28	1	12	;  = uv9"unknown"(slot29, uv2"unknown", slot31, slot32, slot33, slot34, slot35, slot36, slot37, slot38, slot39)
			204	[  0]	ITERC	 24	3	3	; slot24, slot25, slot26 = ipairs, uv0"unknown", uv6"unknown".lines; slot24, slot25 = ipairs(uv0"unknown", uv6"unknown".lines)
			205	[  0]	ITERL	 24		-55	; uv6"unknown".lines = slot24; if slot24 != nil goto 151
			206	[  0]	GGET 	 21		26	; slot21 = _env["love"]
			207	[  0]	TGETS	 21	21	25	; slot21 = love.graphics
			208	[  0]	TGETS	 21	21	0	; slot21 = love.graphics.setFont
			209	[  0]	MOV  	 23		5	; slot23 = slot5
			210	[  0]	CALL 	 21	1	2	;  = love.graphics.setFont(uv0"unknown")
			211	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 212
			212	[  0]	RET0 	  0		1	; return
			213	[  0]	CALLMT	  7		4	; return uv1"unknown"(slot8, slot9, slot10, ...MULTRES)
		115	[  0]	FNEW 	 27		14	; N/A:0-0: 4+ args, 1 upvalues, 12 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			  2	[  0]	MOV  	  6		0	; slot6 = slot0
			  3	[  0]	MOV  	  7		1	; slot7 = slot1
			  4	[  0]	MOV  	  8		2	; slot8 = slot2
			  5	[  0]	MOV  	  9		3	; slot9 = slot3
			  6	[  0]	KSTR 	 10		0	; slot10 = "all"
			  7	[  0]	VARG 	 11	0	4	; MULTRES = ...
			  8	[  0]	CALLMT	  4		5	; return uv0"unknown"(slot5, slot6, slot7, slot8, ...MULTRES)
		116	[  0]	FNEW 	 28		13	; N/A:0-0: 4+ args, 1 upvalues, 12 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			  2	[  0]	MOV  	  6		0	; slot6 = slot0
			  3	[  0]	MOV  	  7		1	; slot7 = slot1
			  4	[  0]	MOV  	  8		2	; slot8 = slot2
			  5	[  0]	MOV  	  9		3	; slot9 = slot3
			  6	[  0]	KSTR 	 10		0	; slot10 = "nonAsciiOnly"
			  7	[  0]	VARG 	 11	0	4	; MULTRES = ...
			  8	[  0]	CALLMT	  4		5	; return uv0"unknown"(slot5, slot6, slot7, slot8, ...MULTRES)
		117	[  0]	FNEW 	 29		12	; N/A:0-0: 0 args, 3 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	ISF  	   		0	; if not uv0"unknown"
			  3	[  0]	JMP  	  1		2	; 	goto 6
			  4	[  0]	KPRI 	  0		0	; slot0 = nil
			  5	[  0]	RET1 	  0		2	; return slot0
			  6	[  0]	GGET 	  0		7	; slot0 = _env["love"]
			  7	[  0]	TGETS	  0	0	6	; slot0 = love.graphics
			  8	[  0]	TGETS	  0	0	5	; slot0 = love.graphics.getFont
			  9	[  0]	ISF  	   		0	; if not love.graphics.getFont
			 10	[  0]	JMP  	  1		6	; 	goto 17
			 11	[  0]	GGET 	  0		7	; slot0 = _env["love"]
			 12	[  0]	TGETS	  0	0	6	; slot0 = love.graphics
			 13	[  0]	TGETS	  0	0	5	; slot0 = love.graphics.getFont
			 14	[  0]	CALL 	  0	2	1	; slot0 = love.graphics.getFont()
			 15	[  0]	IST  	   		0	; if slot0
			 16	[  0]	JMP  	  1		1	; 	goto 18
			 17	[  0]	KPRI 	  0		0	; slot0 = nil
			 18	[  0]	ISF  	   		0	; if not slot0
			 19	[  0]	JMP  	  1		4	; 	goto 24
			 20	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			 21	[  0]	TGETV	  1	1	0	; slot1 = uv1"unknown"[slot0]
			 22	[  0]	IST  	   		1	; if slot1
			 23	[  0]	JMP  	  2		1	; 	goto 25
			 24	[  0]	KPRI 	  1		0	; slot1 = nil
			 25	[  0]	ISNEP	  1		2	; if slot1 ~= true
			 26	[  0]	JMP  	  2		1	; 	goto 28
			 27	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
			 28	[  0]	IST  	   		1	; if uv2"unknown"
			 29	[  0]	JMP  	  2		2	; 	goto 32
			 30	[  0]	KPRI 	  2		0	; slot2 = nil
			 31	[  0]	RET1 	  2		2	; return slot2
			 32	[  0]	GGET 	  2		4	; slot2 = _env["_G"]
			 33	[  0]	TGETS	  2	2	3	; slot2 = _G.currentGameLang
			 34	[  0]	IST  	   		2	; if _G.currentGameLang
			 35	[  0]	JMP  	  3		1	; 	goto 37
			 36	[  0]	KSTR 	  2		2	; slot2 = "ko"
			 37	[  0]	TGETS	  3	1	1	; slot3 = uv2"unknown".lang
			 38	[  0]	ISF  	   		3	; if not uv2"unknown".lang
			 39	[  0]	JMP  	  4		5	; 	goto 45
			 40	[  0]	TGETS	  3	1	1	; slot3 = uv2"unknown".lang
			 41	[  0]	ISEQV	  3		2	; if uv2"unknown".lang == slot2
			 42	[  0]	JMP  	  3		2	; 	goto 45
			 43	[  0]	KPRI 	  3		0	; slot3 = nil
			 44	[  0]	RET1 	  3		2	; return slot3
			 45	[  0]	TGETS	  3	1	0	; slot3 = uv2"unknown".langs
			 46	[  0]	ISF  	   		3	; if not uv2"unknown".langs
			 47	[  0]	JMP  	  4		6	; 	goto 54
			 48	[  0]	TGETS	  3	1	0	; slot3 = uv2"unknown".langs
			 49	[  0]	TGETV	  3	3	2	; slot3 = uv2"unknown".langs[slot2]
			 50	[  0]	IST  	   		3	; if slot3
			 51	[  0]	JMP  	  3		2	; 	goto 54
			 52	[  0]	KPRI 	  3		0	; slot3 = nil
			 53	[  0]	RET1 	  3		2	; return slot3
			 54	[  0]	RET1 	  1		2	; return uv2"unknown"
		118	[  0]	FNEW 	 30		11	; N/A:0-0: 1 args, 0 upvalues, 10 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  1		2	; slot1 = _env["love"]
			  2	[  0]	TGETS	  1	1	1	; slot1 = love.graphics
			  3	[  0]	TGETS	  1	1	0	; slot1 = love.graphics.getColor
			  4	[  0]	CALL 	  1	5	1	; slot1, slot2, slot3, slot4 = love.graphics.getColor()
			  5	[  0]	KSHORT	  5		0	; slot5 = 0
			  6	[  0]	KSHORT	  6		0	; slot6 = 0
			  7	[  0]	KSHORT	  7		0	; slot7 = 0
			  8	[  0]	ISTC 	  8		4	; slot8 = slot4; if slot4
			  9	[  0]	JMP  	  8		1	; 	goto 11
			 10	[  0]	KSHORT	  8		1	; slot8 = 1
			 11	[  0]	ISTC 	  9		0	; slot9 = slot0; if slot0
			 12	[  0]	JMP  	  9		1	; 	goto 14
			 13	[  0]	KSHORT	  9		1	; slot9 = 1
			 14	[  0]	MULVV	  8	8	9	; slot8 = slot8 * slot9
			 15	[  0]	RET  	  5		5	; return slot5, slot6, slot7, slot8
		119	[  0]	FNEW 	 31		10	; N/A:0-0: 2 args, 1 upvalues, 6 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	IST  	   		0	; if slot0
			  2	[  0]	JMP  	  2		2	; 	goto 5
			  3	[  0]	KNIL 	  2		3	; slot2, slot3 = nil
			  4	[  0]	RET  	  2		3	; return slot2, slot3
			  5	[  0]	TGETS	  2	0	11	; slot2 = slot0.shadowOffsets
			  6	[  0]	IST  	   		2	; if <unknown table>.shadowOffsets
			  7	[  0]	JMP  	  3		3	; 	goto 11
			  8	[  0]	TGETS	  2	0	10	; slot2 = slot0.strokeOffsets
			  9	[  0]	ISF  	   		2	; if not <unknown table>.strokeOffsets
			 10	[  0]	JMP  	  3		17	; 	goto 28
			 11	[  0]	TGETS	  2	0	11	; slot2 = slot0.shadowOffsets
			 12	[  0]	IST  	   		2	; if <unknown table>.shadowOffsets
			 13	[  0]	JMP  	  3		1	; 	goto 15
			 14	[  0]	TGETS	  2	0	9	; slot2 = slot0.offsets
			 15	[  0]	TGETS	  3	0	8	; slot3 = slot0.shadowAlpha
			 16	[  0]	IST  	   		3	; if <unknown table>.shadowAlpha
			 17	[  0]	JMP  	  4		4	; 	goto 22
			 18	[  0]	TGETS	  3	0	7	; slot3 = slot0.alpha
			 19	[  0]	IST  	   		3	; if <unknown table>.alpha
			 20	[  0]	JMP  	  4		1	; 	goto 22
			 21	[  0]	KSHORT	  3		1	; slot3 = 1
			 22	[  0]	TGETS	  4	0	10	; slot4 = slot0.strokeOffsets
			 23	[  0]	TGETS	  5	0	6	; slot5 = slot0.strokeAlpha
			 24	[  0]	IST  	   		5	; if <unknown table>.strokeAlpha
			 25	[  0]	JMP  	  6		1	; 	goto 27
			 26	[  0]	KSHORT	  5		1	; slot5 = 1
			 27	[  0]	RET  	  2		5	; return <unknown table>.offsets, slot3, <unknown table>.strokeOffsets, slot5
			 28	[  0]	GGET 	  2		5	; slot2 = _env["tonumber"]
			 29	[  0]	ISTC 	  4		1	; slot4 = slot1; if slot1
			 30	[  0]	JMP  	  4		1	; 	goto 32
			 31	[  0]	KSHORT	  4		1	; slot4 = 1
			 32	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
			 33	[  0]	IST  	   		2	; if slot2
			 34	[  0]	JMP  	  3		1	; 	goto 36
			 35	[  0]	KSHORT	  2		1	; slot2 = 1
			 36	[  0]	TGETS	  3	0	4	; slot3 = slot0.largeAtScale
			 37	[  0]	IST  	   		3	; if <unknown table>.largeAtScale
			 38	[  0]	JMP  	  4		2	; 	goto 41
			 39	[  0]	GGET 	  3		3	; slot3 = _env["math"]
			 40	[  0]	TGETS	  3	3	2	; slot3 = math.huge
			 41	[  0]	ISGT 	  3		2	; if math.huge > slot2
			 42	[  0]	JMP  	  3		17	; 	goto 60
			 43	[  0]	TGETS	  3	0	1	; slot3 = slot0.largeOffsets
			 44	[  0]	IST  	   		3	; if <unknown table>.largeOffsets
			 45	[  0]	JMP  	  4		5	; 	goto 51
			 46	[  0]	TGETS	  3	0	9	; slot3 = slot0.offsets
			 47	[  0]	IST  	   		3	; if <unknown table>.offsets
			 48	[  0]	JMP  	  4		2	; 	goto 51
			 49	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			 50	[  0]	TGETS	  3	3	9	; slot3 = uv0"unknown".offsets
			 51	[  0]	TGETS	  4	0	0	; slot4 = slot0.largeAlpha
			 52	[  0]	IST  	   		4	; if <unknown table>.largeAlpha
			 53	[  0]	JMP  	  5		5	; 	goto 59
			 54	[  0]	TGETS	  4	0	7	; slot4 = slot0.alpha
			 55	[  0]	IST  	   		4	; if <unknown table>.alpha
			 56	[  0]	JMP  	  5		2	; 	goto 59
			 57	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			 58	[  0]	TGETS	  4	4	7	; slot4 = uv0"unknown".alpha
			 59	[  0]	RET  	  3		3	; return uv0"unknown".offsets, uv0"unknown".alpha
			 60	[  0]	TGETS	  3	0	9	; slot3 = slot0.offsets
			 61	[  0]	IST  	   		3	; if <unknown table>.offsets
			 62	[  0]	JMP  	  4		2	; 	goto 65
			 63	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			 64	[  0]	TGETS	  3	3	9	; slot3 = uv0"unknown".offsets
			 65	[  0]	TGETS	  4	0	7	; slot4 = slot0.alpha
			 66	[  0]	IST  	   		4	; if <unknown table>.alpha
			 67	[  0]	JMP  	  5		2	; 	goto 70
			 68	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			 69	[  0]	TGETS	  4	4	7	; slot4 = uv0"unknown".alpha
			 70	[  0]	RET  	  3		3	; return uv0"unknown".offsets, uv0"unknown".alpha
		120	[  0]	FNEW 	 32		9	; N/A:0-0: 0+ args, 0 upvalues, 9 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	VARG 	  0	4	0	; slot0, slot1, slot2 = ...
			  2	[  0]	GGET 	  3		3	; slot3 = _env["tonumber"]
			  3	[  0]	MOV  	  5		1	; slot5 = slot1
			  4	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
			  5	[  0]	ISTC 	  1		3	; slot1 = tonumber; if tonumber
			  6	[  0]	JMP  	  4		1	; 	goto 8
			  7	[  0]	KSHORT	  1		1	; slot1 = 1
			  8	[  0]	GGET 	  3		3	; slot3 = _env["tonumber"]
			  9	[  0]	MOV  	  5		2	; slot5 = slot2
			 10	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
			 11	[  0]	ISTC 	  2		3	; slot2 = tonumber; if tonumber
			 12	[  0]	JMP  	  4		1	; 	goto 14
			 13	[  0]	MOV  	  2		1	; slot2 = slot1
			 14	[  0]	GGET 	  3		2	; slot3 = _env["math"]
			 15	[  0]	TGETS	  3	3	1	; slot3 = math.max
			 16	[  0]	GGET 	  5		2	; slot5 = _env["math"]
			 17	[  0]	TGETS	  5	5	0	; slot5 = math.abs
			 18	[  0]	MOV  	  7		1	; slot7 = slot1
			 19	[  0]	CALL 	  5	2	2	; slot5 = math.abs(slot6)
			 20	[  0]	GGET 	  6		2	; slot6 = _env["math"]
			 21	[  0]	TGETS	  6	6	0	; slot6 = math.abs
			 22	[  0]	MOV  	  8		2	; slot8 = slot2
			 23	[  0]	CALL 	  6	0	2	; MULTRES = math.abs(slot7)
			 24	[  0]	CALLMT	  3		1	; return math.max(, ...MULTRES)
		121	[  0]	FNEW 	 33		8	; N/A:0-0: 0+ args, 0 upvalues, 12 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	VARG 	  0	5	0	; slot0, slot1, slot2, slot3 = ...
			  2	[  0]	KSHORT	  4		1	; slot4 = 1
			  3	[  0]	KSHORT	  5		1	; slot5 = 1
			  4	[  0]	GGET 	  6		5	; slot6 = _env["type"]
			  5	[  0]	MOV  	  8		0	; slot8 = slot0
			  6	[  0]	CALL 	  6	2	2	; slot6 = type(slot7)
			  7	[  0]	ISNES	  6		4	; if type ~= "string"
			  8	[  0]	JMP  	  6		13	; 	goto 22
			  9	[  0]	GGET 	  6		3	; slot6 = _env["tonumber"]
			 10	[  0]	MOV  	  8		2	; slot8 = slot2
			 11	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
			 12	[  0]	ISTC 	  4		6	; slot4 = tonumber; if tonumber
			 13	[  0]	JMP  	  7		1	; 	goto 15
			 14	[  0]	KSHORT	  4		1	; slot4 = 1
			 15	[  0]	GGET 	  6		3	; slot6 = _env["tonumber"]
			 16	[  0]	MOV  	  8		3	; slot8 = slot3
			 17	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
			 18	[  0]	ISTC 	  5		6	; slot5 = tonumber; if tonumber
			 19	[  0]	JMP  	  7		1	; 	goto 21
			 20	[  0]	MOV  	  5		4	; slot5 = slot4
			 21	[  0]	JMP  	  6		12	; 	goto 34
			 22	[  0]	GGET 	  6		3	; slot6 = _env["tonumber"]
			 23	[  0]	MOV  	  8		1	; slot8 = slot1
			 24	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
			 25	[  0]	ISTC 	  4		6	; slot4 = tonumber; if tonumber
			 26	[  0]	JMP  	  7		1	; 	goto 28
			 27	[  0]	KSHORT	  4		1	; slot4 = 1
			 28	[  0]	GGET 	  6		3	; slot6 = _env["tonumber"]
			 29	[  0]	MOV  	  8		2	; slot8 = slot2
			 30	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
			 31	[  0]	ISTC 	  5		6	; slot5 = tonumber; if tonumber
			 32	[  0]	JMP  	  7		1	; 	goto 34
			 33	[  0]	MOV  	  5		4	; slot5 = slot4
			 34	[  0]	GGET 	  6		2	; slot6 = _env["math"]
			 35	[  0]	TGETS	  6	6	1	; slot6 = math.max
			 36	[  0]	GGET 	  8		2	; slot8 = _env["math"]
			 37	[  0]	TGETS	  8	8	0	; slot8 = math.abs
			 38	[  0]	MOV  	 10		4	; slot10 = slot4
			 39	[  0]	CALL 	  8	2	2	; slot8 = math.abs(slot9)
			 40	[  0]	GGET 	  9		2	; slot9 = _env["math"]
			 41	[  0]	TGETS	  9	9	0	; slot9 = math.abs
			 42	[  0]	MOV  	 11		5	; slot11 = slot5
			 43	[  0]	CALL 	  9	0	2	; MULTRES = math.abs(slot10)
			 44	[  0]	CALLMT	  6		1	; return math.max(, ...MULTRES)
		122	[  0]	FNEW 	 34		7	; N/A:0-0: 0 args, 0 upvalues, 11 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	KNIL 	  0		1	; slot0, slot1 = nil
			  2	[  0]	GGET 	  2		10	; slot2 = _env["love"]
			  3	[  0]	TGETS	  2	2	9	; slot2 = love.graphics
			  4	[  0]	TGETS	  2	2	8	; slot2 = love.graphics.getCanvas
			  5	[  0]	ISF  	   		2	; if not love.graphics.getCanvas
			  6	[  0]	JMP  	  3		23	; 	goto 30
			  7	[  0]	GGET 	  2		10	; slot2 = _env["love"]
			  8	[  0]	TGETS	  2	2	9	; slot2 = love.graphics
			  9	[  0]	TGETS	  2	2	8	; slot2 = love.graphics.getCanvas
			 10	[  0]	CALL 	  2	2	1	; slot2 = love.graphics.getCanvas()
			 11	[  0]	GGET 	  3		7	; slot3 = _env["type"]
			 12	[  0]	MOV  	  5		2	; slot5 = love.graphics.getCanvas
			 13	[  0]	CALL 	  3	2	2	; slot3 = type(slot4)
			 14	[  0]	ISNES	  3		6	; if type ~= "table"
			 15	[  0]	JMP  	  3		4	; 	goto 20
			 16	[  0]	TGETB	  3	2	1	; slot3 = love.graphics.getCanvas[1]
			 17	[  0]	ISTC 	  2		3	; slot2 = slot3; if slot3
			 18	[  0]	JMP  	  4		1	; 	goto 20
			 19	[  0]	TGETS	  2	2	5	; slot2 = slot2.canvas
			 20	[  0]	ISF  	   		2	; if not <unknown table>.canvas
			 21	[  0]	JMP  	  3		8	; 	goto 30
			 22	[  0]	TGETS	  3	2	4	; slot3 = <unknown table>.canvas.getDimensions
			 23	[  0]	ISF  	   		3	; if not <unknown table>.canvas.getDimensions
			 24	[  0]	JMP  	  4		5	; 	goto 30
			 25	[  0]	MOV  	  5		2	; slot5 = <unknown table>.canvas
			 26	[  0]	TGETS	  3	2	4	; slot3 = <unknown table>.canvas.getDimensions
			 27	[  0]	CALL 	  3	3	2	; slot3, slot4 = <unknown table>.canvas.getDimensions(slot4)
			 28	[  0]	MOV  	  1		4	; slot1 = slot4
			 29	[  0]	MOV  	  0		3	; slot0 = <unknown table>.canvas.getDimensions
			 30	[  0]	ISF  	   		0	; if not <unknown table>.canvas.getDimensions
			 31	[  0]	JMP  	  2		2	; 	goto 34
			 32	[  0]	IST  	   		1	; if slot1
			 33	[  0]	JMP  	  2		6	; 	goto 40
			 34	[  0]	GGET 	  2		10	; slot2 = _env["love"]
			 35	[  0]	TGETS	  2	2	9	; slot2 = love.graphics
			 36	[  0]	TGETS	  2	2	4	; slot2 = love.graphics.getDimensions
			 37	[  0]	CALL 	  2	3	1	; slot2, slot3 = love.graphics.getDimensions()
			 38	[  0]	MOV  	  1		3	; slot1 = <unknown table>.canvas.getDimensions
			 39	[  0]	MOV  	  0		2	; slot0 = love.graphics.getDimensions
			 40	[  0]	GGET 	  2		3	; slot2 = _env["math"]
			 41	[  0]	TGETS	  2	2	2	; slot2 = math.max
			 42	[  0]	KSHORT	  4		1	; slot4 = 1
			 43	[  0]	GGET 	  5		3	; slot5 = _env["math"]
			 44	[  0]	TGETS	  5	5	1	; slot5 = math.ceil
			 45	[  0]	GGET 	  7		0	; slot7 = _env["tonumber"]
			 46	[  0]	MOV  	  9		0	; slot9 = love.graphics.getDimensions
			 47	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
			 48	[  0]	IST  	   		7	; if tonumber
			 49	[  0]	JMP  	  8		1	; 	goto 51
			 50	[  0]	KSHORT	  7		1	; slot7 = 1
			 51	[  0]	CALL 	  5	0	2	; MULTRES = math.ceil(slot6)
			 52	[  0]	CALLM	  2	2	1	; slot2 = math.max(<unknown table>.canvas.getDimensions, ...MULTRES)
			 53	[  0]	GGET 	  3		3	; slot3 = _env["math"]
			 54	[  0]	TGETS	  3	3	2	; slot3 = math.max
			 55	[  0]	KSHORT	  5		1	; slot5 = 1
			 56	[  0]	GGET 	  6		3	; slot6 = _env["math"]
			 57	[  0]	TGETS	  6	6	1	; slot6 = math.ceil
			 58	[  0]	GGET 	  8		0	; slot8 = _env["tonumber"]
			 59	[  0]	MOV  	 10		1	; slot10 = <unknown table>.canvas.getDimensions
			 60	[  0]	CALL 	  8	2	2	; slot8 = tonumber(love.graphics.getDimensions)
			 61	[  0]	IST  	   		8	; if tonumber
			 62	[  0]	JMP  	  9		1	; 	goto 64
			 63	[  0]	KSHORT	  8		1	; slot8 = 1
			 64	[  0]	CALL 	  6	0	2	; MULTRES = math.ceil(slot7)
			 65	[  0]	CALLM	  3	0	1	; MULTRES = math.max(slot4, ...MULTRES)
			 66	[  0]	RETM 	  2		1	; return , ...MULTRES
		123	[  0]	FNEW 	 35		6	; N/A:0-0: 0 args, 2 upvalues, 9 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  0		9	; slot0 = _env["love"]
			  2	[  0]	TGETS	  0	0	8	; slot0 = love.graphics
			  3	[  0]	TGETS	  0	0	7	; slot0 = love.graphics.newCanvas
			  4	[  0]	ISF  	   		0	; if not love.graphics.newCanvas
			  5	[  0]	JMP  	  1		5	; 	goto 11
			  6	[  0]	GGET 	  0		9	; slot0 = _env["love"]
			  7	[  0]	TGETS	  0	0	8	; slot0 = love.graphics
			  8	[  0]	TGETS	  0	0	6	; slot0 = love.graphics.getDimensions
			  9	[  0]	IST  	   		0	; if love.graphics.getDimensions
			 10	[  0]	JMP  	  0		2	; 	goto 13
			 11	[  0]	KPRI 	  0		0	; slot0 = nil
			 12	[  0]	RET1 	  0		2	; return slot0
			 13	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 14	[  0]	CALL 	  0	3	1	; slot0, slot1 = uv0"unknown"()
			 15	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			 16	[  0]	ISF  	   		2	; if not uv1"unknown"
			 17	[  0]	JMP  	  2		12	; 	goto 30
			 18	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			 19	[  0]	MOV  	  4		2	; slot4 = uv1"unknown"
			 20	[  0]	TGETS	  2	2	5	; slot2 = uv1"unknown".getWidth
			 21	[  0]	CALL 	  2	2	2	; slot2 = uv1"unknown".getWidth(slot3)
			 22	[  0]	ISLT 	  2		0	; if slot2 < slot0
			 23	[  0]	JMP  	  2		6	; 	goto 30
			 24	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			 25	[  0]	MOV  	  4		2	; slot4 = uv1"unknown"
			 26	[  0]	TGETS	  2	2	4	; slot2 = uv1"unknown".getHeight
			 27	[  0]	CALL 	  2	2	2	; slot2 = uv1"unknown".getHeight(slot3)
			 28	[  0]	ISGE 	  2		1	; if slot2 >= slot1
			 29	[  0]	JMP  	  2		26	; 	goto 56
			 30	[  0]	GGET 	  2		3	; slot2 = _env["pcall"]
			 31	[  0]	GGET 	  4		9	; slot4 = _env["love"]
			 32	[  0]	TGETS	  4	4	8	; slot4 = love.graphics
			 33	[  0]	TGETS	  4	4	7	; slot4 = love.graphics.newCanvas
			 34	[  0]	MOV  	  5		0	; slot5 = slot0
			 35	[  0]	MOV  	  6		1	; slot6 = slot1
			 36	[  0]	CALL 	  2	3	4	; slot2, slot3 = pcall(slot3, love.graphics.newCanvas, slot5)
			 37	[  0]	ISF  	   		2	; if not slot2
			 38	[  0]	JMP  	  4		2	; 	goto 41
			 39	[  0]	IST  	   		3	; if slot3
			 40	[  0]	JMP  	  4		2	; 	goto 43
			 41	[  0]	KPRI 	  4		0	; slot4 = nil
			 42	[  0]	RET1 	  4		2	; return slot4
			 43	[  0]	MOV  	  6		3	; slot6 = slot3
			 44	[  0]	TGETS	  4	3	2	; slot4 = slot3.setFilter
			 45	[  0]	KSTR 	  7		1	; slot7 = "nearest"
			 46	[  0]	KSTR 	  8		1	; slot8 = "nearest"
			 47	[  0]	CALL 	  4	1	4	;  = <unknown table>.setFilter(slot5, slot6, slot7)
			 48	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
			 49	[  0]	ISF  	   		4	; if not uv1"unknown"
			 50	[  0]	JMP  	  5		4	; 	goto 55
			 51	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
			 52	[  0]	MOV  	  6		4	; slot6 = uv1"unknown"
			 53	[  0]	TGETS	  4	4	0	; slot4 = uv1"unknown".release
			 54	[  0]	CALL 	  4	1	2	;  = uv1"unknown".release(slot5)
			 55	[  0]	USETV	  1		3	; uv1"unknwon" = slot3
			 56	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			 57	[  0]	MOV  	  3		0	; slot3 = slot0
			 58	[  0]	MOV  	  4		1	; slot4 = slot1
			 59	[  0]	RET  	  2		4	; return uv1"unknown", slot3, slot4
		124	[  0]	FNEW 	 36		5	; N/A:0-0: 7+ args, 3 upvalues, 23 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  7		5	; slot7 = _env["love"]
			  2	[  0]	TGETS	  7	7	4	; slot7 = love.graphics
			  3	[  0]	TGETS	  7	7	3	; slot7 = love.graphics.setColor
			  4	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
			  5	[  0]	MOV  	 11		4	; slot11 = slot4
			  6	[  0]	CALL 	  9	0	2	; MULTRES = uv0"unknown"(slot10)
			  7	[  0]	CALLM	  7	1	0	;  = love.graphics.setColor(, ...MULTRES)
			  8	[  0]	GGET 	  7		2	; slot7 = _env["ipairs"]
			  9	[  0]	ISTC 	  9		5	; slot9 = slot5; if slot5
			 10	[  0]	JMP  	  9		2	; 	goto 13
			 11	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
			 12	[  0]	TGETS	  9	9	1	; slot9 = uv1"unknown".offsets
			 13	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = ipairs(slot8)
			 14	[  0]	JMP  	 10		63	; 	goto 78
			 15	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
			 16	[  0]	MOV  	 14		1	; slot14 = slot1
			 17	[  0]	ISTC 	 15		2	; slot15 = slot2; if slot2
			 18	[  0]	JMP  	 15		1	; 	goto 20
			 19	[  0]	KSHORT	 15		0	; slot15 = 0
			 20	[  0]	TGETB	 16	11	1	; slot16 = slot11[1]
			 21	[  0]	IST  	   		16	; if slot16
			 22	[  0]	JMP  	 17		1	; 	goto 24
			 23	[  0]	KSHORT	 16		0	; slot16 = 0
			 24	[  0]	ADDVV	 15	15	16	; slot15 = slot15 + slot16
			 25	[  0]	ISTC 	 16		3	; slot16 = slot3; if slot3
			 26	[  0]	JMP  	 16		1	; 	goto 28
			 27	[  0]	KSHORT	 16		0	; slot16 = 0
			 28	[  0]	TGETB	 17	11	2	; slot17 = slot11[2]
			 29	[  0]	IST  	   		17	; if slot17
			 30	[  0]	JMP  	 18		1	; 	goto 32
			 31	[  0]	KSHORT	 17		0	; slot17 = 0
			 32	[  0]	ADDVV	 16	16	17	; slot16 = slot16 + slot17
			 33	[  0]	VARG 	 17	0	7	; MULTRES = ...
			 34	[  0]	CALLM	 12	1	3	;  = uv2"unknown"(slot13, slot14, slot15, ...MULTRES)
			 35	[  0]	ISF  	   		0	; if not slot0
			 36	[  0]	JMP  	 12		41	; 	goto 78
			 37	[  0]	TGETS	 12	0	0	; slot12 = slot0.shadowIncludesStroke
			 38	[  0]	ISF  	   		12	; if not <unknown table>.shadowIncludesStroke
			 39	[  0]	JMP  	 13		38	; 	goto 78
			 40	[  0]	GGET 	 12		2	; slot12 = _env["ipairs"]
			 41	[  0]	ISTC 	 14		6	; slot14 = slot6; if slot6
			 42	[  0]	JMP  	 14		1	; 	goto 44
			 43	[  0]	TNEW 	 14		0	; slot14 = new table( array: 0, dict: 1)
			 44	[  0]	CALL 	 12	4	2	; slot12, slot13, slot14 = ipairs(slot13)
			 45	[  0]	JMP  	 15		30	; 	goto 76
			 46	[  0]	UGET 	 17		2	; slot17 = uv2"unknwon"
			 47	[  0]	MOV  	 19		1	; slot19 = slot1
			 48	[  0]	ISTC 	 20		2	; slot20 = slot2; if slot2
			 49	[  0]	JMP  	 20		1	; 	goto 51
			 50	[  0]	KSHORT	 20		0	; slot20 = 0
			 51	[  0]	TGETB	 21	11	1	; slot21 = slot11[1]
			 52	[  0]	IST  	   		21	; if slot21
			 53	[  0]	JMP  	 22		1	; 	goto 55
			 54	[  0]	KSHORT	 21		0	; slot21 = 0
			 55	[  0]	ADDVV	 20	20	21	; slot20 = slot20 + slot21
			 56	[  0]	TGETB	 21	16	1	; slot21 = slot16[1]
			 57	[  0]	IST  	   		21	; if slot21
			 58	[  0]	JMP  	 22		1	; 	goto 60
			 59	[  0]	KSHORT	 21		0	; slot21 = 0
			 60	[  0]	ADDVV	 20	20	21	; slot20 = slot20 + slot21
			 61	[  0]	ISTC 	 21		3	; slot21 = slot3; if slot3
			 62	[  0]	JMP  	 21		1	; 	goto 64
			 63	[  0]	KSHORT	 21		0	; slot21 = 0
			 64	[  0]	TGETB	 22	11	2	; slot22 = slot11[2]
			 65	[  0]	IST  	   		22	; if slot22
			 66	[  0]	JMP  	 23		1	; 	goto 68
			 67	[  0]	KSHORT	 22		0	; slot22 = 0
			 68	[  0]	ADDVV	 21	21	22	; slot21 = slot21 + slot22
			 69	[  0]	TGETB	 22	16	2	; slot22 = slot16[2]
			 70	[  0]	IST  	   		22	; if slot22
			 71	[  0]	JMP  	 23		1	; 	goto 73
			 72	[  0]	KSHORT	 22		0	; slot22 = 0
			 73	[  0]	ADDVV	 21	21	22	; slot21 = slot21 + slot22
			 74	[  0]	VARG 	 22	0	7	; MULTRES = ...
			 75	[  0]	CALLM	 17	1	3	;  = uv2"unknown"(slot18, slot19, slot20, ...MULTRES)
			 76	[  0]	ITERC	 15	3	3	; slot15, slot16, slot17 = ipairs, slot13, slot14; slot15, slot16 = ipairs(slot13, slot14)
			 77	[  0]	ITERL	 15		-32	; slot14 = slot15; if slot15 != nil goto 46
			 78	[  0]	ITERC	 10	3	3	; slot10, slot11, slot12 = ipairs, slot8, uv1"unknown".offsets; slot10, slot11 = ipairs(slot8, uv1"unknown".offsets)
			 79	[  0]	ITERL	 10		-65	; uv1"unknown".offsets = slot10; if slot10 != nil goto 15
			 80	[  0]	RET0 	  0		1	; return
		125	[  0]	FNEW 	 37		4	; N/A:0-0: 8+ args, 3 upvalues, 25 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  8		5	; slot8 = _env["love"]
			  2	[  0]	TGETS	  8	8	4	; slot8 = love.graphics
			  3	[  0]	TGETS	  8	8	3	; slot8 = love.graphics.setColor
			  4	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
			  5	[  0]	MOV  	 12		5	; slot12 = slot5
			  6	[  0]	CALL 	 10	0	2	; MULTRES = uv0"unknown"(slot11)
			  7	[  0]	CALLM	  8	1	0	;  = love.graphics.setColor(, ...MULTRES)
			  8	[  0]	GGET 	  8		2	; slot8 = _env["ipairs"]
			  9	[  0]	ISTC 	 10		6	; slot10 = slot6; if slot6
			 10	[  0]	JMP  	 10		2	; 	goto 13
			 11	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
			 12	[  0]	TGETS	 10	10	1	; slot10 = uv1"unknown".offsets
			 13	[  0]	CALL 	  8	4	2	; slot8, slot9, slot10 = ipairs(slot9)
			 14	[  0]	JMP  	 11		65	; 	goto 80
			 15	[  0]	UGET 	 13		2	; slot13 = uv2"unknwon"
			 16	[  0]	MOV  	 15		1	; slot15 = slot1
			 17	[  0]	ISTC 	 16		2	; slot16 = slot2; if slot2
			 18	[  0]	JMP  	 16		1	; 	goto 20
			 19	[  0]	KSHORT	 16		0	; slot16 = 0
			 20	[  0]	TGETB	 17	12	1	; slot17 = slot12[1]
			 21	[  0]	IST  	   		17	; if slot17
			 22	[  0]	JMP  	 18		1	; 	goto 24
			 23	[  0]	KSHORT	 17		0	; slot17 = 0
			 24	[  0]	ADDVV	 16	16	17	; slot16 = slot16 + slot17
			 25	[  0]	ISTC 	 17		3	; slot17 = slot3; if slot3
			 26	[  0]	JMP  	 17		1	; 	goto 28
			 27	[  0]	KSHORT	 17		0	; slot17 = 0
			 28	[  0]	TGETB	 18	12	2	; slot18 = slot12[2]
			 29	[  0]	IST  	   		18	; if slot18
			 30	[  0]	JMP  	 19		1	; 	goto 32
			 31	[  0]	KSHORT	 18		0	; slot18 = 0
			 32	[  0]	ADDVV	 17	17	18	; slot17 = slot17 + slot18
			 33	[  0]	MOV  	 18		4	; slot18 = slot4
			 34	[  0]	VARG 	 19	0	8	; MULTRES = ...
			 35	[  0]	CALLM	 13	1	4	;  = uv2"unknown"(slot14, slot15, slot16, slot17, ...MULTRES)
			 36	[  0]	ISF  	   		0	; if not slot0
			 37	[  0]	JMP  	 13		42	; 	goto 80
			 38	[  0]	TGETS	 13	0	0	; slot13 = slot0.shadowIncludesStroke
			 39	[  0]	ISF  	   		13	; if not <unknown table>.shadowIncludesStroke
			 40	[  0]	JMP  	 14		39	; 	goto 80
			 41	[  0]	GGET 	 13		2	; slot13 = _env["ipairs"]
			 42	[  0]	ISTC 	 15		7	; slot15 = slot7; if slot7
			 43	[  0]	JMP  	 15		1	; 	goto 45
			 44	[  0]	TNEW 	 15		0	; slot15 = new table( array: 0, dict: 1)
			 45	[  0]	CALL 	 13	4	2	; slot13, slot14, slot15 = ipairs(slot14)
			 46	[  0]	JMP  	 16		31	; 	goto 78
			 47	[  0]	UGET 	 18		2	; slot18 = uv2"unknwon"
			 48	[  0]	MOV  	 20		1	; slot20 = slot1
			 49	[  0]	ISTC 	 21		2	; slot21 = slot2; if slot2
			 50	[  0]	JMP  	 21		1	; 	goto 52
			 51	[  0]	KSHORT	 21		0	; slot21 = 0
			 52	[  0]	TGETB	 22	12	1	; slot22 = slot12[1]
			 53	[  0]	IST  	   		22	; if slot22
			 54	[  0]	JMP  	 23		1	; 	goto 56
			 55	[  0]	KSHORT	 22		0	; slot22 = 0
			 56	[  0]	ADDVV	 21	21	22	; slot21 = slot21 + slot22
			 57	[  0]	TGETB	 22	17	1	; slot22 = slot17[1]
			 58	[  0]	IST  	   		22	; if slot22
			 59	[  0]	JMP  	 23		1	; 	goto 61
			 60	[  0]	KSHORT	 22		0	; slot22 = 0
			 61	[  0]	ADDVV	 21	21	22	; slot21 = slot21 + slot22
			 62	[  0]	ISTC 	 22		3	; slot22 = slot3; if slot3
			 63	[  0]	JMP  	 22		1	; 	goto 65
			 64	[  0]	KSHORT	 22		0	; slot22 = 0
			 65	[  0]	TGETB	 23	12	2	; slot23 = slot12[2]
			 66	[  0]	IST  	   		23	; if slot23
			 67	[  0]	JMP  	 24		1	; 	goto 69
			 68	[  0]	KSHORT	 23		0	; slot23 = 0
			 69	[  0]	ADDVV	 22	22	23	; slot22 = slot22 + slot23
			 70	[  0]	TGETB	 23	17	2	; slot23 = slot17[2]
			 71	[  0]	IST  	   		23	; if slot23
			 72	[  0]	JMP  	 24		1	; 	goto 74
			 73	[  0]	KSHORT	 23		0	; slot23 = 0
			 74	[  0]	ADDVV	 22	22	23	; slot22 = slot22 + slot23
			 75	[  0]	MOV  	 23		4	; slot23 = slot4
			 76	[  0]	VARG 	 24	0	8	; MULTRES = ...
			 77	[  0]	CALLM	 18	1	4	;  = uv2"unknown"(slot19, slot20, slot21, slot22, ...MULTRES)
			 78	[  0]	ITERC	 16	3	3	; slot16, slot17, slot18 = ipairs, slot14, slot15; slot16, slot17 = ipairs(slot14, slot15)
			 79	[  0]	ITERL	 16		-33	; slot15 = slot16; if slot16 != nil goto 47
			 80	[  0]	ITERC	 11	3	3	; slot11, slot12, slot13 = ipairs, slot9, uv1"unknown".offsets; slot11, slot12 = ipairs(slot9, uv1"unknown".offsets)
			 81	[  0]	ITERL	 11		-67	; uv1"unknown".offsets = slot11; if slot11 != nil goto 15
			 82	[  0]	RET0 	  0		1	; return
		126	[  0]	FNEW 	 38		3	; N/A:0-0: 9+ args, 5 upvalues, 27 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	ISF  	   		0	; if not slot0
			  2	[  0]	JMP  	  9		9	; 	goto 12
			  3	[  0]	TGETS	  9	0	12	; slot9 = slot0.uniformAlpha
			  4	[  0]	ISF  	   		9	; if not <unknown table>.uniformAlpha
			  5	[  0]	JMP  	  9		6	; 	goto 12
			  6	[  0]	ISTC 	  9		4	; slot9 = slot4; if slot4
			  7	[  0]	JMP  	  9		1	; 	goto 9
			  8	[  0]	KSHORT	  9		1	; slot9 = 1
			  9	[  0]	KNUM 	 10		0	; slot10 = 0.999
			 10	[  0]	ISGT 	 10		9	; if slot10 > slot9
			 11	[  0]	JMP  	  9		2	; 	goto 14
			 12	[  0]	KPRI 	  9		1	; slot9 = false
			 13	[  0]	RET1 	  9		2	; return slot9
			 14	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
			 15	[  0]	CALL 	  9	4	1	; slot9, slot10, slot11 = uv0"unknown"()
			 16	[  0]	IST  	   		9	; if uv0"unknown"
			 17	[  0]	JMP  	 12		2	; 	goto 20
			 18	[  0]	KPRI 	 12		1	; slot12 = false
			 19	[  0]	RET1 	 12		2	; return slot12
			 20	[  0]	GGET 	 12		11	; slot12 = _env["love"]
			 21	[  0]	TGETS	 12	12	10	; slot12 = love.graphics
			 22	[  0]	TGETS	 12	12	9	; slot12 = love.graphics.getColor
			 23	[  0]	CALL 	 12	4	1	; slot12, slot13, slot14 = love.graphics.getColor()
			 24	[  0]	GGET 	 15		11	; slot15 = _env["love"]
			 25	[  0]	TGETS	 15	15	10	; slot15 = love.graphics
			 26	[  0]	TGETS	 15	15	8	; slot15 = love.graphics.push
			 27	[  0]	KSTR 	 17		7	; slot17 = "all"
			 28	[  0]	CALL 	 15	1	2	;  = love.graphics.push(slot16)
			 29	[  0]	GGET 	 15		11	; slot15 = _env["love"]
			 30	[  0]	TGETS	 15	15	10	; slot15 = love.graphics
			 31	[  0]	TGETS	 15	15	6	; slot15 = love.graphics.setCanvas
			 32	[  0]	MOV  	 17		9	; slot17 = uv0"unknown"
			 33	[  0]	CALL 	 15	1	2	;  = love.graphics.setCanvas(slot16)
			 34	[  0]	GGET 	 15		11	; slot15 = _env["love"]
			 35	[  0]	TGETS	 15	15	10	; slot15 = love.graphics
			 36	[  0]	TGETS	 15	15	5	; slot15 = love.graphics.clear
			 37	[  0]	KSHORT	 17		0	; slot17 = 0
			 38	[  0]	KSHORT	 18		0	; slot18 = 0
			 39	[  0]	KSHORT	 19		0	; slot19 = 0
			 40	[  0]	KSHORT	 20		0	; slot20 = 0
			 41	[  0]	CALL 	 15	1	5	;  = love.graphics.clear(slot16, slot17, slot18, slot19)
			 42	[  0]	USETP	  1		2	; uv1"unknwon" = true
			 43	[  0]	UGET 	 15		2	; slot15 = uv2"unknwon"
			 44	[  0]	MOV  	 17		0	; slot17 = slot0
			 45	[  0]	MOV  	 18		1	; slot18 = slot1
			 46	[  0]	MOV  	 19		2	; slot19 = slot2
			 47	[  0]	MOV  	 20		3	; slot20 = slot3
			 48	[  0]	MOV  	 21		6	; slot21 = slot6
			 49	[  0]	MOV  	 22		5	; slot22 = slot5
			 50	[  0]	MOV  	 23		7	; slot23 = slot7
			 51	[  0]	VARG 	 24	0	9	; MULTRES = ...
			 52	[  0]	CALLM	 15	1	7	;  = uv2"unknown"(slot16, slot17, slot18, slot19, slot20, slot21, slot22, ...MULTRES)
			 53	[  0]	GGET 	 15		4	; slot15 = _env["ipairs"]
			 54	[  0]	ISTC 	 17		7	; slot17 = slot7; if slot7
			 55	[  0]	JMP  	 17		1	; 	goto 57
			 56	[  0]	TNEW 	 17		0	; slot17 = new table( array: 0, dict: 1)
			 57	[  0]	CALL 	 15	4	2	; slot15, slot16, slot17 = ipairs(slot16)
			 58	[  0]	JMP  	 18		30	; 	goto 89
			 59	[  0]	GGET 	 20		11	; slot20 = _env["love"]
			 60	[  0]	TGETS	 20	20	10	; slot20 = love.graphics
			 61	[  0]	TGETS	 20	20	3	; slot20 = love.graphics.setColor
			 62	[  0]	KSHORT	 22		0	; slot22 = 0
			 63	[  0]	KSHORT	 23		0	; slot23 = 0
			 64	[  0]	KSHORT	 24		0	; slot24 = 0
			 65	[  0]	ISTC 	 25		8	; slot25 = slot8; if slot8
			 66	[  0]	JMP  	 25		1	; 	goto 68
			 67	[  0]	KSHORT	 25		1	; slot25 = 1
			 68	[  0]	CALL 	 20	1	5	;  = love.graphics.setColor(slot21, slot22, slot23, slot24)
			 69	[  0]	UGET 	 20		3	; slot20 = uv3"unknwon"
			 70	[  0]	MOV  	 22		1	; slot22 = slot1
			 71	[  0]	ISTC 	 23		2	; slot23 = slot2; if slot2
			 72	[  0]	JMP  	 23		1	; 	goto 74
			 73	[  0]	KSHORT	 23		0	; slot23 = 0
			 74	[  0]	TGETB	 24	19	1	; slot24 = slot19[1]
			 75	[  0]	IST  	   		24	; if slot24
			 76	[  0]	JMP  	 25		1	; 	goto 78
			 77	[  0]	KSHORT	 24		0	; slot24 = 0
			 78	[  0]	ADDVV	 23	23	24	; slot23 = slot23 + slot24
			 79	[  0]	ISTC 	 24		3	; slot24 = slot3; if slot3
			 80	[  0]	JMP  	 24		1	; 	goto 82
			 81	[  0]	KSHORT	 24		0	; slot24 = 0
			 82	[  0]	TGETB	 25	19	2	; slot25 = slot19[2]
			 83	[  0]	IST  	   		25	; if slot25
			 84	[  0]	JMP  	 26		1	; 	goto 86
			 85	[  0]	KSHORT	 25		0	; slot25 = 0
			 86	[  0]	ADDVV	 24	24	25	; slot24 = slot24 + slot25
			 87	[  0]	VARG 	 25	0	9	; MULTRES = ...
			 88	[  0]	CALLM	 20	1	3	;  = uv3"unknown"(slot21, slot22, slot23, ...MULTRES)
			 89	[  0]	ITERC	 18	3	3	; slot18, slot19, slot20 = ipairs, slot16, slot17; slot18, slot19 = ipairs(slot16, slot17)
			 90	[  0]	ITERL	 18		-32	; slot17 = slot18; if slot18 != nil goto 59
			 91	[  0]	GGET 	 15		11	; slot15 = _env["love"]
			 92	[  0]	TGETS	 15	15	10	; slot15 = love.graphics
			 93	[  0]	TGETS	 15	15	3	; slot15 = love.graphics.setColor
			 94	[  0]	MOV  	 17		12	; slot17 = love.graphics.getColor
			 95	[  0]	MOV  	 18		13	; slot18 = slot13
			 96	[  0]	MOV  	 19		14	; slot19 = slot14
			 97	[  0]	KSHORT	 20		1	; slot20 = 1
			 98	[  0]	CALL 	 15	1	5	;  = love.graphics.setColor(slot16, love.graphics.getColor, slot18, slot19)
			 99	[  0]	UGET 	 15		4	; slot15 = uv4"unknwon"
			100	[  0]	MOV  	 17		1	; slot17 = slot1
			101	[  0]	MOV  	 18		2	; slot18 = slot2
			102	[  0]	MOV  	 19		3	; slot19 = slot3
			103	[  0]	VARG 	 20	0	9	; MULTRES = ...
			104	[  0]	CALLM	 15	1	3	;  = uv4"unknown"(slot16, slot17, slot18, ...MULTRES)
			105	[  0]	USETP	  1		1	; uv1"unknwon" = false
			106	[  0]	GGET 	 15		11	; slot15 = _env["love"]
			107	[  0]	TGETS	 15	15	10	; slot15 = love.graphics
			108	[  0]	TGETS	 15	15	2	; slot15 = love.graphics.pop
			109	[  0]	CALL 	 15	1	1	;  = love.graphics.pop()
			110	[  0]	GGET 	 15		11	; slot15 = _env["love"]
			111	[  0]	TGETS	 15	15	10	; slot15 = love.graphics
			112	[  0]	TGETS	 15	15	8	; slot15 = love.graphics.push
			113	[  0]	KSTR 	 17		7	; slot17 = "all"
			114	[  0]	CALL 	 15	1	2	;  = love.graphics.push(slot16)
			115	[  0]	GGET 	 15		11	; slot15 = _env["love"]
			116	[  0]	TGETS	 15	15	10	; slot15 = love.graphics
			117	[  0]	TGETS	 15	15	1	; slot15 = love.graphics.origin
			118	[  0]	CALL 	 15	1	1	;  = love.graphics.origin()
			119	[  0]	GGET 	 15		11	; slot15 = _env["love"]
			120	[  0]	TGETS	 15	15	10	; slot15 = love.graphics
			121	[  0]	TGETS	 15	15	3	; slot15 = love.graphics.setColor
			122	[  0]	KSHORT	 17		1	; slot17 = 1
			123	[  0]	KSHORT	 18		1	; slot18 = 1
			124	[  0]	KSHORT	 19		1	; slot19 = 1
			125	[  0]	ISTC 	 20		4	; slot20 = slot4; if slot4
			126	[  0]	JMP  	 20		1	; 	goto 128
			127	[  0]	KSHORT	 20		1	; slot20 = 1
			128	[  0]	CALL 	 15	1	5	;  = love.graphics.setColor(slot16, slot17, slot18, slot19)
			129	[  0]	GGET 	 15		11	; slot15 = _env["love"]
			130	[  0]	TGETS	 15	15	10	; slot15 = love.graphics
			131	[  0]	TGETS	 15	15	0	; slot15 = love.graphics.draw
			132	[  0]	MOV  	 17		9	; slot17 = uv0"unknown"
			133	[  0]	KSHORT	 18		0	; slot18 = 0
			134	[  0]	KSHORT	 19		0	; slot19 = 0
			135	[  0]	KSHORT	 20		0	; slot20 = 0
			136	[  0]	KSHORT	 21		1	; slot21 = 1
			137	[  0]	KSHORT	 22		1	; slot22 = 1
			138	[  0]	KSHORT	 23		0	; slot23 = 0
			139	[  0]	KSHORT	 24		0	; slot24 = 0
			140	[  0]	KSHORT	 25		0	; slot25 = 0
			141	[  0]	KSHORT	 26		0	; slot26 = 0
			142	[  0]	CALL 	 15	1	11	;  = love.graphics.draw(slot16, uv0"unknown", slot18, slot19, slot20, slot21, slot22, slot23, slot24, slot25)
			143	[  0]	GGET 	 15		11	; slot15 = _env["love"]
			144	[  0]	TGETS	 15	15	10	; slot15 = love.graphics
			145	[  0]	TGETS	 15	15	2	; slot15 = love.graphics.pop
			146	[  0]	CALL 	 15	1	1	;  = love.graphics.pop()
			147	[  0]	KPRI 	 15		2	; slot15 = true
			148	[  0]	RET1 	 15		2	; return slot15
		127	[  0]	FNEW 	 39		2	; N/A:0-0: 10+ args, 5 upvalues, 28 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	ISF  	   		0	; if not slot0
			  2	[  0]	JMP  	 10		9	; 	goto 12
			  3	[  0]	TGETS	 10	0	12	; slot10 = slot0.uniformAlpha
			  4	[  0]	ISF  	   		10	; if not <unknown table>.uniformAlpha
			  5	[  0]	JMP  	 10		6	; 	goto 12
			  6	[  0]	ISTC 	 10		5	; slot10 = slot5; if slot5
			  7	[  0]	JMP  	 10		1	; 	goto 9
			  8	[  0]	KSHORT	 10		1	; slot10 = 1
			  9	[  0]	KNUM 	 11		0	; slot11 = 0.999
			 10	[  0]	ISGT 	 11		10	; if slot11 > slot10
			 11	[  0]	JMP  	 10		2	; 	goto 14
			 12	[  0]	KPRI 	 10		1	; slot10 = false
			 13	[  0]	RET1 	 10		2	; return slot10
			 14	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
			 15	[  0]	CALL 	 10	4	1	; slot10, slot11, slot12 = uv0"unknown"()
			 16	[  0]	IST  	   		10	; if uv0"unknown"
			 17	[  0]	JMP  	 13		2	; 	goto 20
			 18	[  0]	KPRI 	 13		1	; slot13 = false
			 19	[  0]	RET1 	 13		2	; return slot13
			 20	[  0]	GGET 	 13		11	; slot13 = _env["love"]
			 21	[  0]	TGETS	 13	13	10	; slot13 = love.graphics
			 22	[  0]	TGETS	 13	13	9	; slot13 = love.graphics.getColor
			 23	[  0]	CALL 	 13	4	1	; slot13, slot14, slot15 = love.graphics.getColor()
			 24	[  0]	GGET 	 16		11	; slot16 = _env["love"]
			 25	[  0]	TGETS	 16	16	10	; slot16 = love.graphics
			 26	[  0]	TGETS	 16	16	8	; slot16 = love.graphics.push
			 27	[  0]	KSTR 	 18		7	; slot18 = "all"
			 28	[  0]	CALL 	 16	1	2	;  = love.graphics.push(slot17)
			 29	[  0]	GGET 	 16		11	; slot16 = _env["love"]
			 30	[  0]	TGETS	 16	16	10	; slot16 = love.graphics
			 31	[  0]	TGETS	 16	16	6	; slot16 = love.graphics.setCanvas
			 32	[  0]	MOV  	 18		10	; slot18 = uv0"unknown"
			 33	[  0]	CALL 	 16	1	2	;  = love.graphics.setCanvas(slot17)
			 34	[  0]	GGET 	 16		11	; slot16 = _env["love"]
			 35	[  0]	TGETS	 16	16	10	; slot16 = love.graphics
			 36	[  0]	TGETS	 16	16	5	; slot16 = love.graphics.clear
			 37	[  0]	KSHORT	 18		0	; slot18 = 0
			 38	[  0]	KSHORT	 19		0	; slot19 = 0
			 39	[  0]	KSHORT	 20		0	; slot20 = 0
			 40	[  0]	KSHORT	 21		0	; slot21 = 0
			 41	[  0]	CALL 	 16	1	5	;  = love.graphics.clear(slot17, slot18, slot19, slot20)
			 42	[  0]	USETP	  1		2	; uv1"unknwon" = true
			 43	[  0]	UGET 	 16		2	; slot16 = uv2"unknwon"
			 44	[  0]	MOV  	 18		0	; slot18 = slot0
			 45	[  0]	MOV  	 19		1	; slot19 = slot1
			 46	[  0]	MOV  	 20		2	; slot20 = slot2
			 47	[  0]	MOV  	 21		3	; slot21 = slot3
			 48	[  0]	MOV  	 22		4	; slot22 = slot4
			 49	[  0]	MOV  	 23		7	; slot23 = slot7
			 50	[  0]	MOV  	 24		6	; slot24 = slot6
			 51	[  0]	MOV  	 25		8	; slot25 = slot8
			 52	[  0]	VARG 	 26	0	10	; MULTRES = ...
			 53	[  0]	CALLM	 16	1	8	;  = uv2"unknown"(slot17, slot18, slot19, slot20, slot21, slot22, slot23, slot24, ...MULTRES)
			 54	[  0]	GGET 	 16		4	; slot16 = _env["ipairs"]
			 55	[  0]	ISTC 	 18		8	; slot18 = slot8; if slot8
			 56	[  0]	JMP  	 18		1	; 	goto 58
			 57	[  0]	TNEW 	 18		0	; slot18 = new table( array: 0, dict: 1)
			 58	[  0]	CALL 	 16	4	2	; slot16, slot17, slot18 = ipairs(slot17)
			 59	[  0]	JMP  	 19		31	; 	goto 91
			 60	[  0]	GGET 	 21		11	; slot21 = _env["love"]
			 61	[  0]	TGETS	 21	21	10	; slot21 = love.graphics
			 62	[  0]	TGETS	 21	21	3	; slot21 = love.graphics.setColor
			 63	[  0]	KSHORT	 23		0	; slot23 = 0
			 64	[  0]	KSHORT	 24		0	; slot24 = 0
			 65	[  0]	KSHORT	 25		0	; slot25 = 0
			 66	[  0]	ISTC 	 26		9	; slot26 = slot9; if slot9
			 67	[  0]	JMP  	 26		1	; 	goto 69
			 68	[  0]	KSHORT	 26		1	; slot26 = 1
			 69	[  0]	CALL 	 21	1	5	;  = love.graphics.setColor(slot22, slot23, slot24, slot25)
			 70	[  0]	UGET 	 21		3	; slot21 = uv3"unknwon"
			 71	[  0]	MOV  	 23		1	; slot23 = slot1
			 72	[  0]	ISTC 	 24		2	; slot24 = slot2; if slot2
			 73	[  0]	JMP  	 24		1	; 	goto 75
			 74	[  0]	KSHORT	 24		0	; slot24 = 0
			 75	[  0]	TGETB	 25	20	1	; slot25 = slot20[1]
			 76	[  0]	IST  	   		25	; if slot25
			 77	[  0]	JMP  	 26		1	; 	goto 79
			 78	[  0]	KSHORT	 25		0	; slot25 = 0
			 79	[  0]	ADDVV	 24	24	25	; slot24 = slot24 + slot25
			 80	[  0]	ISTC 	 25		3	; slot25 = slot3; if slot3
			 81	[  0]	JMP  	 25		1	; 	goto 83
			 82	[  0]	KSHORT	 25		0	; slot25 = 0
			 83	[  0]	TGETB	 26	20	2	; slot26 = slot20[2]
			 84	[  0]	IST  	   		26	; if slot26
			 85	[  0]	JMP  	 27		1	; 	goto 87
			 86	[  0]	KSHORT	 26		0	; slot26 = 0
			 87	[  0]	ADDVV	 25	25	26	; slot25 = slot25 + slot26
			 88	[  0]	MOV  	 26		4	; slot26 = slot4
			 89	[  0]	VARG 	 27	0	10	; MULTRES = ...
			 90	[  0]	CALLM	 21	1	4	;  = uv3"unknown"(slot22, slot23, slot24, slot25, ...MULTRES)
			 91	[  0]	ITERC	 19	3	3	; slot19, slot20, slot21 = ipairs, slot17, slot18; slot19, slot20 = ipairs(slot17, slot18)
			 92	[  0]	ITERL	 19		-33	; slot18 = slot19; if slot19 != nil goto 60
			 93	[  0]	GGET 	 16		11	; slot16 = _env["love"]
			 94	[  0]	TGETS	 16	16	10	; slot16 = love.graphics
			 95	[  0]	TGETS	 16	16	3	; slot16 = love.graphics.setColor
			 96	[  0]	MOV  	 18		13	; slot18 = love.graphics.getColor
			 97	[  0]	MOV  	 19		14	; slot19 = slot14
			 98	[  0]	MOV  	 20		15	; slot20 = slot15
			 99	[  0]	KSHORT	 21		1	; slot21 = 1
			100	[  0]	CALL 	 16	1	5	;  = love.graphics.setColor(slot17, love.graphics.getColor, slot19, slot20)
			101	[  0]	UGET 	 16		4	; slot16 = uv4"unknwon"
			102	[  0]	MOV  	 18		1	; slot18 = slot1
			103	[  0]	MOV  	 19		2	; slot19 = slot2
			104	[  0]	MOV  	 20		3	; slot20 = slot3
			105	[  0]	MOV  	 21		4	; slot21 = slot4
			106	[  0]	VARG 	 22	0	10	; MULTRES = ...
			107	[  0]	CALLM	 16	1	4	;  = uv4"unknown"(slot17, slot18, slot19, slot20, ...MULTRES)
			108	[  0]	USETP	  1		1	; uv1"unknwon" = false
			109	[  0]	GGET 	 16		11	; slot16 = _env["love"]
			110	[  0]	TGETS	 16	16	10	; slot16 = love.graphics
			111	[  0]	TGETS	 16	16	2	; slot16 = love.graphics.pop
			112	[  0]	CALL 	 16	1	1	;  = love.graphics.pop()
			113	[  0]	GGET 	 16		11	; slot16 = _env["love"]
			114	[  0]	TGETS	 16	16	10	; slot16 = love.graphics
			115	[  0]	TGETS	 16	16	8	; slot16 = love.graphics.push
			116	[  0]	KSTR 	 18		7	; slot18 = "all"
			117	[  0]	CALL 	 16	1	2	;  = love.graphics.push(slot17)
			118	[  0]	GGET 	 16		11	; slot16 = _env["love"]
			119	[  0]	TGETS	 16	16	10	; slot16 = love.graphics
			120	[  0]	TGETS	 16	16	1	; slot16 = love.graphics.origin
			121	[  0]	CALL 	 16	1	1	;  = love.graphics.origin()
			122	[  0]	GGET 	 16		11	; slot16 = _env["love"]
			123	[  0]	TGETS	 16	16	10	; slot16 = love.graphics
			124	[  0]	TGETS	 16	16	3	; slot16 = love.graphics.setColor
			125	[  0]	KSHORT	 18		1	; slot18 = 1
			126	[  0]	KSHORT	 19		1	; slot19 = 1
			127	[  0]	KSHORT	 20		1	; slot20 = 1
			128	[  0]	ISTC 	 21		5	; slot21 = slot5; if slot5
			129	[  0]	JMP  	 21		1	; 	goto 131
			130	[  0]	KSHORT	 21		1	; slot21 = 1
			131	[  0]	CALL 	 16	1	5	;  = love.graphics.setColor(slot17, slot18, slot19, slot20)
			132	[  0]	GGET 	 16		11	; slot16 = _env["love"]
			133	[  0]	TGETS	 16	16	10	; slot16 = love.graphics
			134	[  0]	TGETS	 16	16	0	; slot16 = love.graphics.draw
			135	[  0]	MOV  	 18		10	; slot18 = uv0"unknown"
			136	[  0]	KSHORT	 19		0	; slot19 = 0
			137	[  0]	KSHORT	 20		0	; slot20 = 0
			138	[  0]	KSHORT	 21		0	; slot21 = 0
			139	[  0]	KSHORT	 22		1	; slot22 = 1
			140	[  0]	KSHORT	 23		1	; slot23 = 1
			141	[  0]	KSHORT	 24		0	; slot24 = 0
			142	[  0]	KSHORT	 25		0	; slot25 = 0
			143	[  0]	KSHORT	 26		0	; slot26 = 0
			144	[  0]	KSHORT	 27		0	; slot27 = 0
			145	[  0]	CALL 	 16	1	11	;  = love.graphics.draw(slot17, uv0"unknown", slot19, slot20, slot21, slot22, slot23, slot24, slot25, slot26)
			146	[  0]	GGET 	 16		11	; slot16 = _env["love"]
			147	[  0]	TGETS	 16	16	10	; slot16 = love.graphics
			148	[  0]	TGETS	 16	16	2	; slot16 = love.graphics.pop
			149	[  0]	CALL 	 16	1	1	;  = love.graphics.pop()
			150	[  0]	KPRI 	 16		2	; slot16 = true
			151	[  0]	RET1 	 16		2	; return slot16
		128	[  0]	GGET 	 40		39	; slot40 = _env["love"]
		129	[  0]	TGETS	 40	40	38	; slot40 = love.graphics
		130	[  0]	FNEW 	 41		1	; N/A:0-0: 3+ args, 10 upvalues, 24 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			  2	[  0]	MOV  	  5		0	; slot5 = slot0
			  3	[  0]	CALL 	  3	2	2	; slot3 = uv0"unknown"(slot4)
			  4	[  0]	MOV  	  0		3	; slot0 = uv0"unknown"
			  5	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
			  6	[  0]	CALL 	  3	2	1	; slot3 = uv1"unknown"()
			  7	[  0]	ISF  	   		3	; if not uv1"unknown"
			  8	[  0]	JMP  	  4		80	; 	goto 89
			  9	[  0]	GGET 	  4		4	; slot4 = _env["love"]
			 10	[  0]	TGETS	  4	4	3	; slot4 = love.graphics
			 11	[  0]	TGETS	  4	4	2	; slot4 = love.graphics.getColor
			 12	[  0]	CALL 	  4	5	1	; slot4, slot5, slot6, slot7 = love.graphics.getColor()
			 13	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
			 14	[  0]	MOV  	 10		3	; slot10 = uv1"unknown"
			 15	[  0]	UGET 	 11		3	; slot11 = uv3"unknwon"
			 16	[  0]	VARG 	 13	0	3	; MULTRES = ...
			 17	[  0]	CALLM	 11	0	0	; MULTRES = uv3"unknown"(, ...MULTRES)
			 18	[  0]	CALLM	  8	5	1	; slot8, slot9, slot10, slot11 = uv2"unknown"(slot9, ...MULTRES)
			 19	[  0]	UGET 	 12		4	; slot12 = uv4"unknwon"
			 20	[  0]	MOV  	 14		3	; slot14 = uv1"unknown"
			 21	[  0]	MOV  	 15		0	; slot15 = uv0"unknown"
			 22	[  0]	MOV  	 16		1	; slot16 = slot1
			 23	[  0]	MOV  	 17		2	; slot17 = slot2
			 24	[  0]	MOV  	 18		7	; slot18 = slot7
			 25	[  0]	MOV  	 19		8	; slot19 = uv2"unknown"
			 26	[  0]	MOV  	 20		9	; slot20 = slot9
			 27	[  0]	MOV  	 21		10	; slot21 = uv1"unknown"
			 28	[  0]	MOV  	 22		11	; slot22 = uv3"unknown"
			 29	[  0]	VARG 	 23	0	3	; MULTRES = ...
			 30	[  0]	CALLM	 12	2	9	; slot12 = uv4"unknown"(slot13, uv1"unknown", uv0"unknown", slot16, slot17, slot18, uv2"unknown", slot20, uv1"unknown", ...MULTRES)
			 31	[  0]	ISF  	   		12	; if not uv4"unknown"
			 32	[  0]	JMP  	 13		1	; 	goto 34
			 33	[  0]	RET0 	  0		1	; return
			 34	[  0]	USETP	  5		2	; uv5"unknwon" = true
			 35	[  0]	UGET 	 12		6	; slot12 = uv6"unknwon"
			 36	[  0]	MOV  	 14		3	; slot14 = uv1"unknown"
			 37	[  0]	MOV  	 15		0	; slot15 = uv0"unknown"
			 38	[  0]	MOV  	 16		1	; slot16 = slot1
			 39	[  0]	MOV  	 17		2	; slot17 = slot2
			 40	[  0]	MOV  	 18		9	; slot18 = slot9
			 41	[  0]	MOV  	 19		8	; slot19 = uv2"unknown"
			 42	[  0]	MOV  	 20		10	; slot20 = uv1"unknown"
			 43	[  0]	VARG 	 21	0	3	; MULTRES = ...
			 44	[  0]	CALLM	 12	1	7	;  = uv6"unknown"(slot13, uv1"unknown", uv0"unknown", slot16, slot17, slot18, uv2"unknown", ...MULTRES)
			 45	[  0]	GGET 	 12		1	; slot12 = _env["ipairs"]
			 46	[  0]	ISTC 	 14		10	; slot14 = uv1"unknown"; if uv1"unknown"
			 47	[  0]	JMP  	 14		1	; 	goto 49
			 48	[  0]	TNEW 	 14		0	; slot14 = new table( array: 0, dict: 1)
			 49	[  0]	CALL 	 12	4	2	; slot12, slot13, slot14 = ipairs(slot13)
			 50	[  0]	JMP  	 15		27	; 	goto 78
			 51	[  0]	GGET 	 17		4	; slot17 = _env["love"]
			 52	[  0]	TGETS	 17	17	3	; slot17 = love.graphics
			 53	[  0]	TGETS	 17	17	0	; slot17 = love.graphics.setColor
			 54	[  0]	UGET 	 19		7	; slot19 = uv7"unknwon"
			 55	[  0]	MOV  	 21		11	; slot21 = uv3"unknown"
			 56	[  0]	CALL 	 19	0	2	; MULTRES = uv7"unknown"(uv1"unknown")
			 57	[  0]	CALLM	 17	1	0	;  = love.graphics.setColor(, ...MULTRES)
			 58	[  0]	UGET 	 17		8	; slot17 = uv8"unknwon"
			 59	[  0]	MOV  	 19		0	; slot19 = uv0"unknown"
			 60	[  0]	ISTC 	 20		1	; slot20 = slot1; if slot1
			 61	[  0]	JMP  	 20		1	; 	goto 63
			 62	[  0]	KSHORT	 20		0	; slot20 = 0
			 63	[  0]	TGETB	 21	16	1	; slot21 = slot16[1]
			 64	[  0]	IST  	   		21	; if slot21
			 65	[  0]	JMP  	 22		1	; 	goto 67
			 66	[  0]	KSHORT	 21		0	; slot21 = 0
			 67	[  0]	ADDVV	 20	20	21	; slot20 = slot20 + slot21
			 68	[  0]	ISTC 	 21		2	; slot21 = slot2; if slot2
			 69	[  0]	JMP  	 21		1	; 	goto 71
			 70	[  0]	KSHORT	 21		0	; slot21 = 0
			 71	[  0]	TGETB	 22	16	2	; slot22 = slot16[2]
			 72	[  0]	IST  	   		22	; if slot22
			 73	[  0]	JMP  	 23		1	; 	goto 75
			 74	[  0]	KSHORT	 22		0	; slot22 = 0
			 75	[  0]	ADDVV	 21	21	22	; slot21 = slot21 + slot22
			 76	[  0]	VARG 	 22	0	3	; MULTRES = ...
			 77	[  0]	CALLM	 17	1	3	;  = uv8"unknown"(slot18, uv0"unknown", slot20, ...MULTRES)
			 78	[  0]	ITERC	 15	3	3	; slot15, slot16, slot17 = ipairs, slot13, slot14; slot15, slot16 = ipairs(slot13, slot14)
			 79	[  0]	ITERL	 15		-29	; slot14 = uv0"unknown"; if uv0"unknown" != nil goto 51
			 80	[  0]	GGET 	 12		4	; slot12 = _env["love"]
			 81	[  0]	TGETS	 12	12	3	; slot12 = love.graphics
			 82	[  0]	TGETS	 12	12	0	; slot12 = love.graphics.setColor
			 83	[  0]	MOV  	 14		4	; slot14 = love.graphics.getColor
			 84	[  0]	MOV  	 15		5	; slot15 = slot5
			 85	[  0]	MOV  	 16		6	; slot16 = slot6
			 86	[  0]	MOV  	 17		7	; slot17 = slot7
			 87	[  0]	CALL 	 12	1	5	;  = love.graphics.setColor(slot13, love.graphics.getColor, slot15, slot16)
			 88	[  0]	USETP	  5		1	; uv5"unknwon" = false
			 89	[  0]	UGET 	  4		9	; slot4 = uv9"unknwon"
			 90	[  0]	MOV  	  6		0	; slot6 = uv0"unknown"
			 91	[  0]	MOV  	  7		1	; slot7 = slot1
			 92	[  0]	MOV  	  8		2	; slot8 = slot2
			 93	[  0]	VARG 	  9	0	3	; MULTRES = ...
			 94	[  0]	CALLMT	  4		3	; return uv9"unknown"(slot5, uv0"unknown", ...MULTRES)
		131	[  0]	TSETS	 41	40	37	; love.graphics.print = slot41
		132	[  0]	GGET 	 40		39	; slot40 = _env["love"]
		133	[  0]	TGETS	 40	40	38	; slot40 = love.graphics
		134	[  0]	FNEW 	 41		0	; N/A:0-0: 4+ args, 10 upvalues, 26 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			  2	[  0]	MOV  	  6		0	; slot6 = slot0
			  3	[  0]	CALL 	  4	2	2	; slot4 = uv0"unknown"(slot5)
			  4	[  0]	MOV  	  0		4	; slot0 = uv0"unknown"
			  5	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
			  6	[  0]	CALL 	  4	2	1	; slot4 = uv1"unknown"()
			  7	[  0]	ISF  	   		4	; if not uv1"unknown"
			  8	[  0]	JMP  	  5		83	; 	goto 92
			  9	[  0]	GGET 	  5		4	; slot5 = _env["love"]
			 10	[  0]	TGETS	  5	5	3	; slot5 = love.graphics
			 11	[  0]	TGETS	  5	5	2	; slot5 = love.graphics.getColor
			 12	[  0]	CALL 	  5	5	1	; slot5, slot6, slot7, slot8 = love.graphics.getColor()
			 13	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
			 14	[  0]	MOV  	 11		4	; slot11 = uv1"unknown"
			 15	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
			 16	[  0]	VARG 	 14	0	4	; MULTRES = ...
			 17	[  0]	CALLM	 12	0	0	; MULTRES = uv3"unknown"(, ...MULTRES)
			 18	[  0]	CALLM	  9	5	1	; slot9, slot10, slot11, slot12 = uv2"unknown"(slot10, ...MULTRES)
			 19	[  0]	UGET 	 13		4	; slot13 = uv4"unknwon"
			 20	[  0]	MOV  	 15		4	; slot15 = uv1"unknown"
			 21	[  0]	MOV  	 16		0	; slot16 = uv0"unknown"
			 22	[  0]	MOV  	 17		1	; slot17 = slot1
			 23	[  0]	MOV  	 18		2	; slot18 = slot2
			 24	[  0]	MOV  	 19		3	; slot19 = slot3
			 25	[  0]	MOV  	 20		8	; slot20 = slot8
			 26	[  0]	MOV  	 21		9	; slot21 = uv2"unknown"
			 27	[  0]	MOV  	 22		10	; slot22 = slot10
			 28	[  0]	MOV  	 23		11	; slot23 = uv1"unknown"
			 29	[  0]	MOV  	 24		12	; slot24 = uv3"unknown"
			 30	[  0]	VARG 	 25	0	4	; MULTRES = ...
			 31	[  0]	CALLM	 13	2	10	; slot13 = uv4"unknown"(slot14, uv1"unknown", uv0"unknown", slot17, slot18, slot19, slot20, uv2"unknown", slot22, uv1"unknown", ...MULTRES)
			 32	[  0]	ISF  	   		13	; if not uv4"unknown"
			 33	[  0]	JMP  	 14		1	; 	goto 35
			 34	[  0]	RET0 	  0		1	; return
			 35	[  0]	USETP	  5		2	; uv5"unknwon" = true
			 36	[  0]	UGET 	 13		6	; slot13 = uv6"unknwon"
			 37	[  0]	MOV  	 15		4	; slot15 = uv1"unknown"
			 38	[  0]	MOV  	 16		0	; slot16 = uv0"unknown"
			 39	[  0]	MOV  	 17		1	; slot17 = slot1
			 40	[  0]	MOV  	 18		2	; slot18 = slot2
			 41	[  0]	MOV  	 19		3	; slot19 = slot3
			 42	[  0]	MOV  	 20		10	; slot20 = slot10
			 43	[  0]	MOV  	 21		9	; slot21 = uv2"unknown"
			 44	[  0]	MOV  	 22		11	; slot22 = uv1"unknown"
			 45	[  0]	VARG 	 23	0	4	; MULTRES = ...
			 46	[  0]	CALLM	 13	1	8	;  = uv6"unknown"(slot14, uv1"unknown", uv0"unknown", slot17, slot18, slot19, slot20, uv2"unknown", ...MULTRES)
			 47	[  0]	GGET 	 13		1	; slot13 = _env["ipairs"]
			 48	[  0]	ISTC 	 15		11	; slot15 = uv1"unknown"; if uv1"unknown"
			 49	[  0]	JMP  	 15		1	; 	goto 51
			 50	[  0]	TNEW 	 15		0	; slot15 = new table( array: 0, dict: 1)
			 51	[  0]	CALL 	 13	4	2	; slot13, slot14, slot15 = ipairs(slot14)
			 52	[  0]	JMP  	 16		28	; 	goto 81
			 53	[  0]	GGET 	 18		4	; slot18 = _env["love"]
			 54	[  0]	TGETS	 18	18	3	; slot18 = love.graphics
			 55	[  0]	TGETS	 18	18	0	; slot18 = love.graphics.setColor
			 56	[  0]	UGET 	 20		7	; slot20 = uv7"unknwon"
			 57	[  0]	MOV  	 22		12	; slot22 = uv3"unknown"
			 58	[  0]	CALL 	 20	0	2	; MULTRES = uv7"unknown"(uv2"unknown")
			 59	[  0]	CALLM	 18	1	0	;  = love.graphics.setColor(, ...MULTRES)
			 60	[  0]	UGET 	 18		8	; slot18 = uv8"unknwon"
			 61	[  0]	MOV  	 20		0	; slot20 = uv0"unknown"
			 62	[  0]	ISTC 	 21		1	; slot21 = slot1; if slot1
			 63	[  0]	JMP  	 21		1	; 	goto 65
			 64	[  0]	KSHORT	 21		0	; slot21 = 0
			 65	[  0]	TGETB	 22	17	1	; slot22 = slot17[1]
			 66	[  0]	IST  	   		22	; if slot22
			 67	[  0]	JMP  	 23		1	; 	goto 69
			 68	[  0]	KSHORT	 22		0	; slot22 = 0
			 69	[  0]	ADDVV	 21	21	22	; slot21 = slot21 + slot22
			 70	[  0]	ISTC 	 22		2	; slot22 = slot2; if slot2
			 71	[  0]	JMP  	 22		1	; 	goto 73
			 72	[  0]	KSHORT	 22		0	; slot22 = 0
			 73	[  0]	TGETB	 23	17	2	; slot23 = slot17[2]
			 74	[  0]	IST  	   		23	; if slot23
			 75	[  0]	JMP  	 24		1	; 	goto 77
			 76	[  0]	KSHORT	 23		0	; slot23 = 0
			 77	[  0]	ADDVV	 22	22	23	; slot22 = slot22 + slot23
			 78	[  0]	MOV  	 23		3	; slot23 = slot3
			 79	[  0]	VARG 	 24	0	4	; MULTRES = ...
			 80	[  0]	CALLM	 18	1	4	;  = uv8"unknown"(slot19, uv0"unknown", slot21, slot22, ...MULTRES)
			 81	[  0]	ITERC	 16	3	3	; slot16, slot17, slot18 = ipairs, slot14, slot15; slot16, slot17 = ipairs(slot14, slot15)
			 82	[  0]	ITERL	 16		-30	; slot15 = uv0"unknown"; if uv0"unknown" != nil goto 53
			 83	[  0]	GGET 	 13		4	; slot13 = _env["love"]
			 84	[  0]	TGETS	 13	13	3	; slot13 = love.graphics
			 85	[  0]	TGETS	 13	13	0	; slot13 = love.graphics.setColor
			 86	[  0]	MOV  	 15		5	; slot15 = love.graphics.getColor
			 87	[  0]	MOV  	 16		6	; slot16 = slot6
			 88	[  0]	MOV  	 17		7	; slot17 = slot7
			 89	[  0]	MOV  	 18		8	; slot18 = slot8
			 90	[  0]	CALL 	 13	1	5	;  = love.graphics.setColor(slot14, love.graphics.getColor, slot16, slot17)
			 91	[  0]	USETP	  5		1	; uv5"unknwon" = false
			 92	[  0]	UGET 	  5		9	; slot5 = uv9"unknwon"
			 93	[  0]	MOV  	  7		0	; slot7 = uv0"unknown"
			 94	[  0]	MOV  	  8		1	; slot8 = slot1
			 95	[  0]	MOV  	  9		2	; slot9 = slot2
			 96	[  0]	MOV  	 10		3	; slot10 = slot3
			 97	[  0]	VARG 	 11	0	4	; MULTRES = ...
			 98	[  0]	CALLMT	  5		4	; return uv9"unknown"(slot6, uv0"unknown", slot8, ...MULTRES)
		135	[  0]	TSETS	 41	40	36	; love.graphics.printf = slot41
		136	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 137
		137	[  0]	RET0 	  0		1	; return
		138	[  0]	RET0 	  0		1	; return
	 11	[  0]	MOV  	  6		5	; slot6 = slot5
	 12	[  0]	CALL 	  6	1	1	;  = slot6()
	 13	[  0]	FNEW 	  6		0	; N/A:0-0: 0 args, 5 upvalues, 26 slots
		
		;;;; constant tables ;;;;
		ktable#3 = [
			#1: 1,
			#2: 0.68,
			#3: 0.22,
			#4: 1,
			]
		
		
		ktable#4 = [
			[outlineRadiusPx] = 2,
			[minAlpha] = 0.9,
			[pulseHz] = 0.6,
			[scaleAmp] = 0.08,
			]
		
		
		ktable#5 = [
			#1: 0.8,
			#2: 0.52,
			#3: 0.18,
			#4: 1,
			]
		
		
		ktable#7 = [
			#1: 0.8,
			#2: 0.52,
			#3: 0.18,
			#4: 1,
			]
		
		
		ktable#8 = [
			#1: 0.22745098039215686,
			#2: 0.1607843137254902,
			#3: 0.2235294117647059,
			#4: 1,
			]
		
		
		ktable#9 = [
			#1: 0.4235294118,
			#2: 0.2980392157,
			#3: 0.168627451,
			#4: 1,
			]
		
		
		ktable#10 = [
			[outlineStep] = 1,
			[pulseAmp] = 0.22,
			[letterSpacing] = 1,
			[completeOffsetX] = -1,
			[pulseCount] = 3,
			[pulseFreq] = 1.6,
			[urgentThreshold] = 2,
			[scale] = 1,
			[maxCount] = 5,
			[offsetY] = 2,
			[offsetX] = 0,
			]
		
		
		ktable#11 = [
			[y] = -16,
			[x] = 167,
			[scale] = 2,
			[slideDur] = 0.4,
			[slideFromY] = -30,
			]
		
		
		ktable#13 = [
			[speedPx] = 6,
			[tileH] = 130,
			[scale] = 2,
			[tileW] = 190,
			]
		
		
		ktable#16 = [
			[quantize] = true,
			[pixelStep] = 1,
			[ampPx] = 2,
			[freqHz] = 9,
			]
		
		
		ktable#18 = [
			[offsetX] = 20,
			[offsetY] = -42,
			[anchor] = slot-bottom-center,
			]
		
		
		ktable#20 = [
			#1: Triggerchest,
			#2: EchoMirror,
			#3: Resonoscope,
			#4: StellarBlessing,
			#5: JokerSeed,
			#6: Wildcard,
			]
		
		
		ktable#21 = [
			[enabled] = true,
			[returnSec] = 0.25,
			[moveSec] = 0.25,
			[holdSec] = 0.3,
			]
		
		
		ktable#25 = [
			[mul] = 1,
			]
		
		
		ktable#26 = [
			#1: 0.6,
			#2: 0.5,
			#3: 0.4,
			]
		
		
		ktable#27 = [
			]
		
		
		ktable#28 = [
			[amp] = 0.08,
			[enabled] = true,
			[speedHz] = 2,
			]
		
		
		ktable#30 = [
			[radiusPx] = 3,
			[pressDropPx] = 3,
			[pressScaleDepth] = 0.14,
			[pulseHz] = 1.25,
			[alphaMax] = 0.68,
			[alphaMin] = 0.12,
			[pressDurSec] = 0.24,
			]
		
		
		ktable#31 = [
			#1: 1,
			#2: 0.72,
			#3: 0.18,
			#4: 1,
			]
		
		
		ktable#34 = [
			#1: 1,
			#2: 0.95,
			#3: 0.72,
			]
		
		
		ktable#35 = [
			[hoverAlpha] = 1,
			[padSpritePx] = 2,
			[armSpritePx] = 7,
			[pulseHz] = 1.2,
			[alphaMax] = 0.95,
			[alphaMin] = 0.52,
			]
		
		
		ktable#36 = [
			#1: 1,
			#2: 0.82,
			#3: 0.3,
			]
		
		
		ktable#38 = [
			[y] = 1,
			[x] = 0.82,
			]
		
		
		ktable#39 = [
			[y] = 1,
			[x] = 0.18,
			]
		
		
		ktable#41 = [
			[swapDurSec] = 0.3,
			]
		
		
		ktable#43 = [
			[stampAmpPx] = 2,
			[landingRatio] = 0.52,
			[screenFreqHz] = 28,
			[screenDurSec] = 0.14,
			[screenAmpPx] = 0.55,
			[stampFreqHz] = 28,
			]
		
		
		ktable#44 = [
			[dropPx] = 10,
			[impactDurSec] = 0.24,
			[selectedAlpha] = 1,
			[hoverAlpha] = 0.52,
			[markSizeMul] = 0.72,
			]
		
		
		ktable#46 = [
			#1: 0.88,
			#2: 0.82,
			#3: 0.73,
			#4: 0.95,
			]
		
		
		ktable#47 = [
			[scale] = 1,
			[offsetY] = -6,
			[offsetX] = -1,
			]
		
		
		ktable#50 = [
			#1: 0.18,
			#2: 0.1,
			#3: 0.02,
			#4: 0.72,
			]
		
		
		ktable#51 = [
			#1: 1,
			#2: 0.78,
			#3: 0.2,
			#4: 1,
			]
		
		
		ktable#52 = [
			[scale] = 1,
			[offsetY] = 0,
			[offsetX] = 0,
			]
		
		
		ktable#53 = [
			[y] = 290,
			[x] = 21,
			[sizePx] = 16,
			[align] = left,
			[anchor] = below,
			[wrapCols] = 4,
			[rowGapPx] = 4,
			[gapPx] = 4,
			]
		
		
		ktable#56 = [
			[offsetY] = 190,
			[offsetX] = 0,
			]
		
		
		ktable#58 = [
			[shiftLeftPx] = 4,
			[radiusPx] = 2,
			[liftPx] = 4,
			[alphaThreshold] = 0.05,
			]
		
		
		ktable#59 = [
			#1: 0.9294117647058824,
			#2: 0.9019607843137255,
			#3: 0.9529411764705882,
			#4: 1,
			]
		
		
		ktable#61 = [
			[y] = 158,
			[x] = 382,
			[scale] = 1,
			[anchor] = battlefield-top-left,
			]
		
		
		ktable#63 = [
			[y] = 194,
			[x] = 382,
			[scale] = 1,
			[anchor] = battlefield-top-left,
			]
		
		
		ktable#65 = [
			[y] = 230,
			[x] = 376,
			[scale] = 1,
			[anchor] = battlefield-top-left,
			]
		
		
		ktable#66 = [
			[enabled] = true,
			[alpha] = 1,
			]
		
		
		ktable#68 = [
			#1: 0.6980392156862745,
			#2: 0.2,
			#3: 0.23921568627450981,
			#4: 1,
			]
		
		
		ktable#69 = [
			[yOffsetPx] = -60,
			[nameGapPx] = 10,
			]
		
		
		ktable#72 = [
			[enabled] = true,
			[sharpen] = 0.1,
			[grain] = 0.018,
			]
		
		
		ktable#74 = [
			[enabled] = true,
			[roundness] = 0.55,
			[strength] = 0.12,
			]
		
		
		ktable#76 = [
			[enabled] = true,
			[hold] = 0.85,
			]
		
		
		ktable#77 = [
			[enabled] = true,
			[threshold] = 0.85,
			[strength] = 0.8,
			[radius] = 1.25,
			[knee] = 0.2,
			]
		
		
		ktable#79 = [
			[exposure] = 1.1,
			[enabled] = true,
			[gamma] = 2,
			]
		
		
		ktable#80 = [
			[enabled] = true,
			]
		
		
		ktable#82 = [
			[liftPx] = 4,
			]
		
		
		ktable#83 = [
			[labelYOffsetPx] = -2,
			[scale] = 2,
			[gapPx] = 20,
			[yOffsetPx] = 20,
			]
		
		
		ktable#85 = [
			[insetEnterPx] = 6,
			[outlineRadiusPx] = 2,
			[liftPx] = 10,
			[leaveExpandPx] = 2,
			]
		
		
		ktable#86 = [
			[animationFrameSec] = 0.07,
			[yOffsetPx] = -30,
			]
		
		
		ktable#88 = [
			[enabled] = true,
			[freq] = 6,
			[ampPx] = 1,
			[axis] = xy,
			]
		
		
		ktable#89 = [
			#1: 1,
			#2: 0.4196078431,
			#3: 0.368627451,
			#4: 1,
			]
		
		
		ktable#90 = [
			[enabled] = true,
			[minAlpha] = 0.01,
			[speedHz] = 0.4,
			[maxAlpha] = 0.15,
			[waveShape] = abs-sin,
			]
		
		
		ktable#92 = [
			#1: 0.615686274509804,
			#2: 0.792156862745098,
			#3: 0.9411764705882353,
			#4: 1,
			]
		
		
		ktable#93 = [
			[y] = 10,
			[x] = 400,
			[align] = center,
			[enabled] = true,
			[scale] = 1,
			[integerScale] = true,
			]
		
		
		ktable#97 = [
			#1: 10,
			#2: 20,
			#3: 30,
			]
		
		
		ktable#98 = [
			#1: 1,
			#2: 1,
			#3: 1,
			#4: 1,
			]
		
		
		ktable#99 = [
			[y] = 10,
			[x] = 445,
			[scale] = 1,
			[enabled] = true,
			[align] = center,
			]
		
		
		ktable#101 = [
			[alpha] = 0.75,
			[blend] = alpha,
			]
		
		
		ktable#103 = [
			#1: 1,
			#2: 0.4196078431,
			#3: 0.368627451,
			#4: 1,
			]
		
		
		ktable#104 = [
			#1: 1,
			#2: 1,
			#3: 1,
			#4: 1,
			]
		
		
		ktable#105 = [
			[y] = 10,
			[x] = 369,
			[scale] = 1,
			[iconOffsetY] = 0,
			[max] = 10,
			[iconOffsetX] = 88,
			[enabled] = true,
			[align] = right,
			]
		
		
		ktable#107 = [
			[bgOffsetY] = 0,
			[integerScale] = true,
			[bgOffsetX] = 0,
			[hideAfterSec] = 2.5,
			[textOffsetY] = -1,
			[textOffsetX] = 0,
			[scale] = 1,
			[cornerRadiusPx] = 4,
			[offsetY] = 0,
			[offsetX] = 0,
			]
		
		
		ktable#110 = [
			#1: 0.1568627450980392,
			#2: 0.1411764705882353,
			#3: 0.1803921568627451,
			#4: 0.85,
			]
		
		
		ktable#111 = [
			[basePx] = 1,
			[enabled] = true,
			[scaleWith] = true,
			]
		
		
		ktable#112 = [
			#1: 0.22745098039215686,
			#2: 0.1607843137254902,
			#3: 0.2235294117647059,
			#4: 1,
			]
		
		
		ktable#113 = [
			[basePx] = 1,
			[enabled] = true,
			[scaleWith] = true,
			]
		
		
		ktable#115 = [
			#1: 0.6,
			#2: 0.62,
			#3: 0.66,
			#4: 0.85,
			]
		
		
		ktable#117 = [
			#1: 0.9,
			#2: 0.92,
			#3: 0.95,
			#4: 1,
			]
		
		
		ktable#118 = [
			[spacing] = 1,
			[slideDuration] = 0.3,
			[waveGapPx] = 5,
			[centerNeighborGapPx] = 0,
			[visibleSlots] = 5,
			[easing] = easeOutCubic,
			[scaleOther] = 1,
			[scaleCurrent] = 2,
			[offsetY] = -5,
			[offsetX] = -8,
			]
		
		
		ktable#123 = [
			[typeCharsPerSec] = 70,
			]
		
		
		ktable#124 = [
			#1: 0.9294117647058824,
			#2: 0.9019607843137255,
			#3: 0.9529411764705882,
			#4: 1,
			]
		
		
		ktable#125 = [
			[outlineRadiusPx] = 2,
			[liftPx] = 4,
			[outlineThreshold] = 0.5,
			[useUnitPixelThickness] = true,
			]
		
		
		ktable#126 = [
			[countDelete] = 1,
			[countSell] = 3,
			[rerollGapPx] = 6,
			[deleteGapPx] = 30,
			[spacingPx] = 6,
			[baseY] = 185,
			[baseX] = 254,
			[scale] = 1,
			[countReroll] = 1,
			]
		
		
		ktable#128 = [
			[y] = 54,
			[x] = 247,
			[offsetY] = 0,
			[holdFrame] = 1,
			[pauseDur] = 1.4,
			[frameDur] = 0.5,
			[drawScale] = 2,
			[frameCount] = 4,
			[frameH] = 68,
			[frameW] = 63,
			[offsetX] = 0,
			]
		
		
		ktable#131 = [
			[enabled] = true,
			[quantize] = true,
			[restDurSec] = 0,
			[bounceDurSec] = 0.26,
			[perCharDelaySec] = 0.35,
			[ampPx] = 3,
			[pixelStep] = 1,
			]
		
		
		ktable#132 = [
			#1: 1,
			#2: 1,
			#3: 1,
			#4: 1,
			]
		
		
		ktable#133 = [
			[y] = 82,
			[x] = 385,
			[value] = SHOP,
			]
		
		
		ktable#134 = [
			[quantize] = false,
			[enabled] = true,
			[pixelStep] = 1,
			[ampPx] = 3,
			[freqHz] = 0.45,
			]
		
		
		ktable#135 = [
			[k] = 64,
			[maxVel] = 1500,
			[damping] = 12,
			]
		
		
		ktable#136 = [
			[snapEps] = 0.5,
			[visibleY] = 0,
			[offsetX] = -4,
			]
		
		
		ktable#139 = [
			[enabled] = true,
			[ampPx] = 2,
			[speedHz] = 6.5,
			[quantize] = true,
			[axis] = xy,
			[pixelStep] = 1,
			]
		
		
		ktable#140 = [
			[quantize] = true,
			[freqJitter] = 0.1,
			[minAmpPx] = 0.53,
			[ampPx] = 0.53,
			[ampJitter] = 0.15,
			[enabled] = true,
			[speedHz] = 4,
			[axis] = xy,
			[pixelStep] = 1,
			]
		
		
		ktable#142 = [
			[enabled] = false,
			[phasePerChar] = 0,
			[ampPx] = 0.8,
			[speedHz] = 0.8,
			]
		
		
		ktable#143 = [
			#1: 0.898,
			#2: 0.886,
			#3: 0.941,
			#4: 1,
			]
		
		
		ktable#144 = [
			[leaveDur] = 0.2,
			[hold] = 10000,
			[appearDur] = 0.25,
			[everyWave] = 3,
			[yOffsetPx] = -115,
			[scale] = 1,
			[xOffsetPx] = 73,
			[align] = left,
			[typeCharsPerSec] = 14,
			[appearOffsetPx] = -10,
			[showSprite] = false,
			[showText] = false,
			]
		
		
		ktable#148 = [
			#1: 1,
			#2: 0.839,
			#3: 0.353,
			#4: 1,
			]
		
		
		ktable#149 = [
			#1: 0.898,
			#2: 0.886,
			#3: 0.941,
			#4: 1,
			]
		
		
		ktable#150 = [
			#1: 0.949,
			#2: 0.902,
			#3: 0.788,
			#4: 1,
			]
		
		
		ktable#151 = [
			[y] = 93,
			[x] = 478,
			[lineGapPx] = 1,
			[bodyScale] = 1,
			[titleScale] = 1,
			[lineSpacingMul] = 1.45,
			]
		
		
		ktable#152 = [
			[k] = 90,
			[maxVel] = 2000,
			[damping] = 14,
			]
		
		
		ktable#153 = [
			[snapEps] = 0.5,
			[ropeYOffsetPx] = -10,
			[visibleY] = 0,
			]
		
		
		ktable#156 = [
			#1: 0.22745098039215686,
			#2: 0.1607843137254902,
			#3: 0.2235294117647059,
			#4: 1,
			]
		
		
		ktable#157 = [
			[basePx] = 1,
			[enabled] = false,
			[scaleWith] = true,
			]
		
		
		ktable#158 = [
			#1: 0.949,
			#2: 0.902,
			#3: 0.788,
			#4: 1,
			]
		
		
		ktable#159 = [
			[y] = 68,
			[x] = 527,
			[scale] = 1,
			[bottomPadPx] = 22,
			[align] = center,
			[tier3YOffsetPx] = -158,
			]
		
		
		ktable#160 = [
			#1: 1,
			#2: 0.839,
			#3: 0.353,
			#4: 1,
			]
		
		
		ktable#161 = [
			#1: 0.898,
			#2: 0.886,
			#3: 0.941,
			#4: 1,
			]
		
		
		ktable#162 = [
			#1: 0.949,
			#2: 0.902,
			#3: 0.788,
			#4: 1,
			]
		
		
		ktable#165 = [
			[descOffsetY] = 18,
			[lineGapPx] = 1,
			[bodyScale] = 1,
			[titleScale] = 1,
			[titleOffsetY] = -11,
			[xOffsetPx] = 300,
			[lineSpacingMul] = 1.45,
			]
		
		
		ktable#167 = [
			[quantize] = true,
			[enabled] = true,
			[pixelStep] = 1,
			[ampPx] = 4,
			[freqHz] = 0.18,
			]
		
		
		ktable#168 = [
			[k] = 90,
			[maxVel] = 2000,
			[damping] = 14,
			]
		
		
		ktable#169 = [
			[snapEps] = 0.5,
			[ropeYOffsetPx] = -10,
			[visibleY] = 0,
			]
		
		
		ktable#171 = [
			#1: 0.9490196078431372,
			#2: 0.6509803921568628,
			#3: 0.3686274509803922,
			#4: 1,
			]
		
		
		ktable#172 = [
			[enabled] = true,
			[drawDurSec] = 0.2,
			[thicknessSourcePx] = 1,
			[gapPx] = 8,
			[retractDurSec] = 0.1,
			[padX] = 0,
			]
		
		
		ktable#173 = [
			[k] = 90,
			[maxVel] = 2000,
			[damping] = 12,
			]
		
		
		ktable#175 = [
			[y] = 6,
			[x] = 12,
			]
		
		
		ktable#177 = [
			#1: 0.949,
			#2: 0.902,
			#3: 0.788,
			#4: 1,
			]
		
		
		ktable#178 = [
			[yFracFromBottom] = 0.1,
			[xFrac] = 0.06,
			[offsetY] = -10,
			[offsetX] = -70,
			]
		
		
		ktable#180 = [
			#1: 0.949,
			#2: 0.902,
			#3: 0.788,
			#4: 1,
			]
		
		
		ktable#181 = [
			[yFracFromBottom] = 0.1,
			[xFrac] = 0.06,
			[offsetY] = -10,
			[offsetX] = 70,
			]
		
		
		ktable#183 = [
			#1: 0.898,
			#2: 0.886,
			#3: 0.941,
			#4: 1,
			]
		
		
		ktable#184 = [
			[align] = center,
			[topPadMinPx] = 16,
			[yFrac] = 0.24,
			[offsetY] = 0,
			[offsetX] = 0,
			]
		
		
		ktable#185 = [
			[centerFracX] = 0.5,
			[bottomPadMinPx] = 10,
			[sidePadMinPx] = 10,
			[boardOffsetY] = 120,
			[boardOffsetX] = 0,
			[centerFracY] = 0.5,
			]
		
		
		ktable#186 = [
			#1: 0,
			#2: 0,
			#3: 0,
			#4: 0.8,
			]
		
		
		ktable#187 = [
			[enabled] = false,
			[offsetY] = 4,
			[offsetX] = 4,
			]
		
		
		ktable#193 = [
			[dy] = 0,
			[dx] = 0,
			]
		
		
		ktable#195 = [
			[dy] = 0,
			[dx] = 0,
			]
		
		
		ktable#197 = [
			[dy] = 0,
			[dx] = 0,
			]
		
		
		ktable#199 = [
			]
		
		
		ktable#200 = [
			[dy] = 0,
			[dx] = 0,
			]
		
		
		ktable#201 = [
			[offsetY] = -1,
			[offsetX] = 10,
			]
		
		
		ktable#202 = [
			#1: 0.22745098039215686,
			#2: 0.1607843137254902,
			#3: 0.2235294117647059,
			#4: 1,
			]
		
		
		ktable#203 = [
			[outlineRadiusPx] = 0,
			[liftPx] = 4,
			[alphaThreshold] = 0.01,
			]
		
		
		ktable#205 = [
			[startY] = 210,
			[scale] = 1,
			[gapPx] = 12,
			[centerX] = true,
			]
		
		
		ktable#206 = [
			#1: option,
			#2: play,
			#3: replay,
			#4: tomainmenu,
			]
		
		
		ktable#208 = [
			[enabled] = true,
			[scale] = 1,
			[hoverDropPx] = 6,
			[alignCenterX] = true,
			[offsetY] = 20,
			[offsetX] = 22,
			]
		
		
		ktable#210 = [
			[enabled] = true,
			[scale] = 1,
			[hoverDropPx] = 6,
			[alignCenterX] = true,
			[offsetY] = 20,
			[offsetX] = 22,
			]
		
		
		ktable#212 = [
			[enabled] = false,
			[scale] = 1,
			[hoverDropPx] = 6,
			[alignCenterX] = true,
			[offsetY] = 20,
			[offsetX] = 22,
			]
		
		
		ktable#214 = [
			[enabled] = true,
			[scale] = 1,
			[hoverDropPx] = 6,
			[alignCenterX] = true,
			[offsetY] = 20,
			[offsetX] = 22,
			]
		
		
		ktable#216 = [
			[enabled] = true,
			[scale] = 1,
			[hoverDropPx] = 6,
			[alignCenterX] = true,
			[offsetY] = 20,
			[offsetX] = 22,
			]
		
		
		ktable#219 = [
			[y] = 53,
			[x] = 278,
			]
		
		
		ktable#220 = [
			[y] = 48,
			[x] = 230,
			]
		
		
		ktable#221 = [
			[y] = 45,
			[x] = 182,
			]
		
		
		ktable#222 = [
			[y] = 50,
			[x] = 134,
			]
		
		
		ktable#224 = [
			[enabled] = true,
			[phaseStep] = 0.8,
			[periodSec] = 4,
			[basePhase] = 0,
			[amplitudePx] = 2,
			]
		
		
		ktable#225 = [
			[enabled] = true,
			[scale] = 1,
			[offsetY] = -3,
			[offsetX] = 8,
			]
		
		
		ktable#228 = [
			#1: 0.1803921568627451,
			#2: 0.13333333333333333,
			#3: 0.1843137254901961,
			#4: 1,
			]
		
		
		ktable#229 = [
			#1: 0.1803921568627451,
			#2: 0.13333333333333333,
			#3: 0.1843137254901961,
			#4: 1,
			]
		
		
		ktable#230 = [
			[yFracTitle] = 0.18,
			[titleMaxW] = 71,
			[timeScale] = 1,
			[time] = 00:00:00,
			[offsetX] = -81,
			[title] = 플레이 시간,
			[enabled] = true,
			[titleScale] = 1,
			[align] = center,
			[titleOffsetY] = 92,
			[timeOffsetY] = 50,
			[yFracTime] = 0.35,
			]
		
		
		ktable#233 = [
			#1: Slotbound,
			#2: ,
			#3: 制作,
			#4: Min Kim / Optima Arch,
			#5: ,
			#6: 关卡音乐,
			#7: Tsiya,
			#8: ,
			#9: 特别鸣谢,
			#10: Hyeongjun Lyu,
			#11: Axin,
			#12: cchhuumm,
			#13: ,
			#14: 感谢游玩。,
			#15: ,
			#16: © 2026 Optima Arch,
			]
		
		
		ktable#235 = [
			#1: Slotbound,
			#2: ,
			#3: 制作,
			#4: ミン・キム / Optima Arch,
			#5: ,
			#6: ステージ音楽,
			#7: Tsiya,
			#8: ,
			#9: Special Thanks,
			#10: リュ・ヒョンジュン,
			#11: Axin,
			#12: cchhuumm,
			#13: ,
			#14: 遊んでいただき,
			#15: ありがとうございます。,
			#16: ,
			#17: © 2026 Optima Arch,
			]
		
		
		ktable#237 = [
			#1: Slotbound,
			#2: ,
			#3: Created by,
			#4: Min Kim / Optima Arch,
			#5: ,
			#6: Stage Music,
			#7: Tsiya,
			#8: ,
			#9: Special Thanks,
			#10: Hyeongjun Lyu,
			#11: Axin,
			#12: cchhuumm,
			#13: ,
			#14: Thank you for playing.,
			#15: ,
			#16: © 2026 Optima Arch,
			]
		
		
		ktable#239 = [
			#1: Slotbound,
			#2: ,
			#3: 제작,
			#4: 김민 / Optima Arch,
			#5: ,
			#6: 스테이지 음악,
			#7: Tsiya,
			#8: ,
			#9: Special Thanks,
			#10: 류형준,
			#11: Axin,
			#12: cchhuumm,
			#13: ,
			#14: 플레이해주셔서,
			#15: 감사합니다.,
			#16: ,
			#17: © 2026 Optima Arch,
			]
		
		
		ktable#241 = [
			#1: Slotbound,
			#2: ,
			#3: Création,
			#4: Min Kim / Optima Arch,
			#5: ,
			#6: Musique des zones,
			#7: Tsiya,
			#8: ,
			#9: Remerciements,
			#10: Hyeongjun Lyu,
			#11: Axin,
			#12: cchhuumm,
			#13: ,
			#14: Merci d'avoir joué !,
			#15: ,
			#16: © 2026 Optima Arch,
			]
		
		
		ktable#243 = [
			#1: Slotbound,
			#2: ,
			#3: Creato da,
			#4: Min Kim / Optima Arch,
			#5: ,
			#6: Musica delle aree,
			#7: Tsiya,
			#8: ,
			#9: Ringraziamenti speciali,
			#10: Hyeongjun Lyu,
			#11: Axin,
			#12: cchhuumm,
			#13: ,
			#14: Grazie per aver giocato!,
			#15: ,
			#16: © 2026 Optima Arch,
			]
		
		
		ktable#245 = [
			#1: Slotbound,
			#2: ,
			#3: Entwickelt von,
			#4: Min Kim / Optima Arch,
			#5: ,
			#6: Gebietsmusik,
			#7: Tsiya,
			#8: ,
			#9: Besonderer Dank,
			#10: Hyeongjun Lyu,
			#11: Axin,
			#12: cchhuumm,
			#13: ,
			#14: Danke fürs Spielen!,
			#15: ,
			#16: © 2026 Optima Arch,
			]
		
		
		ktable#247 = [
			#1: Slotbound,
			#2: ,
			#3: Creado por,
			#4: Min Kim / Optima Arch,
			#5: ,
			#6: Música de las zonas,
			#7: Tsiya,
			#8: ,
			#9: Agradecimientos especiales,
			#10: Hyeongjun Lyu,
			#11: Axin,
			#12: cchhuumm,
			#13: ,
			#14: ¡Gracias por jugar!,
			#15: ,
			#16: © 2026 Optima Arch,
			]
		
		
		ktable#249 = [
			#1: Slotbound,
			#2: ,
			#3: Разработка,
			#4: Min Kim / Optima Arch,
			#5: ,
			#6: Музыка зон,
			#7: Tsiya,
			#8: ,
			#9: Особая благодарность,
			#10: Hyeongjun Lyu,
			#11: Axin,
			#12: cchhuumm,
			#13: ,
			#14: Спасибо за игру!,
			#15: ,
			#16: © 2026 Optima Arch,
			]
		
		
		ktable#251 = [
			#1: Slotbound,
			#2: ,
			#3: Twórca,
			#4: Min Kim / Optima Arch,
			#5: ,
			#6: Muzyka obszarów,
			#7: Tsiya,
			#8: ,
			#9: Specjalne podziękowania,
			#10: Hyeongjun Lyu,
			#11: Axin,
			#12: cchhuumm,
			#13: ,
			#14: Dziękujemy za grę!,
			#15: ,
			#16: © 2026 Optima Arch,
			]
		
		
		ktable#253 = [
			#1: Slotbound,
			#2: ,
			#3: Criação,
			#4: Min Kim / Optima Arch,
			#5: ,
			#6: Música das áreas,
			#7: Tsiya,
			#8: ,
			#9: Agradecimentos especiais,
			#10: Hyeongjun Lyu,
			#11: Axin,
			#12: cchhuumm,
			#13: ,
			#14: Obrigado por jogar!,
			#15: ,
			#16: © 2026 Optima Arch,
			]
		
		
		ktable#256 = [
			#1: 0.39,
			#2: 0.34,
			#3: 0.24,
			#4: 1,
			]
		
		
		ktable#258 = [
			#1: 0.39,
			#2: 0.34,
			#3: 0.24,
			#4: 1,
			]
		
		
		ktable#260 = [
			#1: 0.38,
			#2: 0.25,
			#3: 0.14,
			#4: 1,
			]
		
		
		ktable#262 = [
			#1: 0.27,
			#2: 0.3,
			#3: 0.37,
			#4: 1,
			]
		
		
		ktable#264 = [
			#1: 0.38,
			#2: 0.25,
			#3: 0.14,
			#4: 1,
			]
		
		
		ktable#266 = [
			#1: 0.38,
			#2: 0.25,
			#3: 0.14,
			#4: 1,
			]
		
		
		ktable#268 = [
			#1: 0.39,
			#2: 0.34,
			#3: 0.24,
			#4: 1,
			]
		
		
		ktable#269 = [
			#1: 0.27,
			#2: 0.3,
			#3: 0.37,
			#4: 1,
			]
		
		
		ktable#271 = [
			]
		
		
		ktable#272 = [
			#1: 0.38,
			#2: 0.25,
			#3: 0.14,
			#4: 1,
			]
		
		
		ktable#274 = [
			#1: 0.29,
			#2: 0.24,
			#3: 0.17,
			#4: 1,
			]
		
		
		ktable#276 = [
			#1: 0.38,
			#2: 0.25,
			#3: 0.14,
			#4: 1,
			]
		
		
		ktable#277 = [
			[y] = 116,
			[x] = 318,
			[w] = 126,
			]
		
		
		ktable#279 = [
			[y] = 178,
			[x] = 319,
			[h] = 83,
			[w] = 124,
			]
		
		
		ktable#280 = [
			[titleEn] = CREDITS,
			[titleOffsetY] = 44,
			[resetGapPx] = 40,
			[titlePt] = CRÉDITOS,
			[titleRu] = АВТОРЫ,
			[titleOffsetX] = 0,
			[titleEs] = CRÉDITOS,
			[titleDe] = MITWIRKENDE,
			[titleIt] = RICONOSCIMENTI,
			[titleFr] = CRÉDITS,
			[titleZh] = 制作人员,
			[titleJa] = クレジット,
			[enabled] = true,
			[titleKo] = 크레딧,
			[blankLineGapPx] = 10,
			[lineGapPx] = 3,
			[bodyScale] = 1,
			[titleScale] = 1,
			[align] = center,
			[speedPxPerSec] = 13,
			[bodyTopGapPx] = 12,
			[textScaleWithBackground] = true,
			[scaleWithBackground] = true,
			[syncWithBackground] = true,
			[titlePl] = TWÓRCY,
			]
		
		
		ktable#282 = [
			[enabled] = true,
			[scale] = 1,
			[offsetY] = 0,
			[offsetX] = 0,
			]
		
		
		ktable#285 = [
			[offsetY] = 90,
			[widthAlign] = left,
			[widthPx] = -260,
			[extraTop] = 16,
			[padY] = 48,
			[padX] = 72,
			[offsetX] = 135,
			]
		
		
		ktable#286 = [
			[enabled] = true,
			[scale] = 1,
			[offsetY] = 0,
			[offsetX] = 0,
			]
		
		
		ktable#288 = [
			[enabled] = true,
			[scale] = 1,
			[offsetY] = 0,
			[offsetX] = 0,
			]
		
		
		ktable#290 = [
			[enabled] = true,
			[scale] = 1,
			[offsetY] = 0,
			[offsetX] = -20,
			]
		
		
		ktable#292 = [
			#1: 0.1803921568627451,
			#2: 0.13333333333333333,
			#3: 0.1843137254901961,
			#4: 1,
			]
		
		
		ktable#293 = [
			[enabled] = true,
			[yFrac] = 0.22,
			[scale] = 1,
			[align] = center,
			[text] = menu_pause,
			[offsetY] = 15,
			[offsetX] = 106,
			]
		
		
		ktable#294 = [
			[k] = 90,
			[maxVel] = 2000,
			[damping] = 14,
			]
		
		
		ktable#295 = [
			[visibleY] = 0,
			[ropeYOffsetPx] = -8,
			[snapEps] = 0.5,
			[settingsDelaySec] = 0.35,
			[topbarYOffsetPx] = 0,
			]
		
		
		ktable#299 = [
			#1: x,
			#2: y,
			#3: viewH,
			#4: wheelW,
			#5: scrollbarX,
			#6: scrollbarY,
			#7: scrollbarH,
			]
		
		
		ktable#307 = [
			]
		
		
		ktable#308 = [
			#1: 0.89,
			#2: 0.776,
			#3: 0.353,
			#4: 1,
			]
		
		
		ktable#309 = [
			#1: 0.08,
			#2: 0.045,
			#3: 0.01,
			#4: 0.95,
			]
		
		
		ktable#310 = [
			#1: 0.16,
			#2: 0.12,
			#3: 0.03,
			#4: 0.85,
			]
		
		
		ktable#311 = [
			#1: 0.89,
			#2: 0.776,
			#3: 0.353,
			#4: 1,
			]
		
		
		ktable#312 = [
			#1: 0.89,
			#2: 0.776,
			#3: 0.353,
			#4: 1,
			]
		
		
		ktable#314 = [
			#1: 1,
			#2: 1,
			#3: 1,
			#4: 1,
			]
		
		
		ktable#316 = [
			#1: 0.08235294117647059,
			#2: 0.08235294117647059,
			#3: 0.10980392156862745,
			#4: 1,
			]
		
		
		ktable#317 = [
			[y] = 56,
			[x] = -3,
			[iconOffsetY] = 1,
			[scale] = 1,
			[highRes] = true,
			[barH] = 4,
			[barW] = 76,
			[barOffsetY] = 2,
			[barX] = 560,
			[countX] = 538,
			[iconHoverBrightAlpha] = 0.22,
			[iconHoverPad] = 2,
			[iconOutlineRadiusPx] = 1.15,
			[iconOutlineThreshold] = 0.05,
			[iconOutline] = true,
			[iconX] = 513,
			[rowGap] = 22,
			[iconScale] = 1,
			]
		
		
		ktable#320 = [
			#1: 0.9,
			#2: 0.78,
			#3: 0.6,
			#4: 1,
			]
		
		
		ktable#322 = [
			#1: 1,
			#2: 0.94,
			#3: 0.7,
			#4: 1,
			]
		
		
		ktable#324 = [
			#1: 0.52,
			#2: 0.92,
			#3: 0.82,
			#4: 1,
			]
		
		
		ktable#326 = [
			#1: 0.52,
			#2: 0.82,
			#3: 1,
			#4: 1,
			]
		
		
		ktable#328 = [
			#1: 1,
			#2: 0.88,
			#3: 0.42,
			#4: 1,
			]
		
		
		ktable#330 = [
			#1: 0.74,
			#2: 0.54,
			#3: 1,
			#4: 1,
			]
		
		
		ktable#332 = [
			#1: 1,
			#2: 0.68,
			#3: 0.32,
			#4: 1,
			]
		
		
		ktable#334 = [
			#1: 0.48,
			#2: 0.88,
			#3: 0.54,
			#4: 1,
			]
		
		
		ktable#336 = [
			#1: 1,
			#2: 0.52,
			#3: 0.42,
			#4: 1,
			]
		
		
		ktable#338 = [
			]
		
		
		ktable#339 = [
			#1: 0.55,
			#2: 0.78,
			#3: 1,
			#4: 1,
			]
		
		
		ktable#340 = [
			[effectDescriptionGap] = 6,
			[descriptionLineGap] = 3,
			[headerSeparatorGap] = 5,
			[risePx] = 2,
			[fadeTime] = 0.15,
			[hoverDelay] = 0.12,
			]
		
		
		ktable#341 = [
			[y] = 110,
			[text] = 진영 시너지 없음,
			[textKey] = synergy_window_empty,
			[highRes] = true,
			]
		
		
		ktable#342 = [
			#1: 1,
			#2: 0.9,
			#3: 0.5,
			#4: 1,
			]
		
		
		ktable#343 = [
			[y] = 19,
			[x] = 510,
			[scale] = 1.5,
			[highRes] = true,
			[textKey] = synergy_window_title,
			[text] = 진영 시너지,
			]
		
		
		ktable#344 = [
			[offsetY] = 0,
			[slideDur] = 0.52,
			[ease] = outCubic,
			[alpha] = 1,
			[offsetX] = 0,
			]
		
		
		ktable#348 = [
			#1: 0.45098039215686275,
			#2: 0.40784313725490196,
			#3: 0.4980392156862745,
			#4: 0.95,
			]
		
		
		ktable#350 = [
			#1: 0.1843137254901961,
			#2: 0.1607843137254902,
			#3: 0.2196078431372549,
			#4: 0.9,
			]
		
		
		ktable#352 = [
			#1: 0.2901960784313726,
			#2: 0.5607843137254902,
			#3: 0.9058823529411765,
			#4: 1,
			]
		
		
		ktable#354 = [
			[enabled] = false,
			]
		
		
		ktable#356 = [
			[foil] = true,
			]
		
		
		ktable#358 = [
			]
		
		
		ktable#359 = [
			]
		
		
		ktable#360 = [
			#1: 0.43137254901960786,
			#2: 0.3333333333333333,
			#3: 0.19607843137254902,
			]
		
		
		ktable#361 = [
			]
		
		
		ktable#362 = [
			#1: 0.21568627450980393,
			#2: 0.16470588235294117,
			#3: 0.11764705882352941,
			]
		
		
		ktable#363 = [
			]
		
		
		ktable#364 = [
			#1: 0.6274509803921569,
			#2: 0.5294117647058824,
			#3: 0.35294117647058826,
			]
		
		
		ktable#366 = [
			]
		
		
		ktable#367 = [
			]
		
		
		ktable#368 = [
			#1: 0.20784313725490197,
			#2: 0.29411764705882354,
			#3: 0.4196078431372549,
			]
		
		
		ktable#369 = [
			]
		
		
		ktable#370 = [
			#1: 0.13725490196078433,
			#2: 0.17647058823529413,
			#3: 0.23921568627450981,
			]
		
		
		ktable#371 = [
			]
		
		
		ktable#372 = [
			#1: 0.3607843137254902,
			#2: 0.4549019607843137,
			#3: 0.5725490196078431,
			]
		
		
		ktable#374 = [
			]
		
		
		ktable#375 = [
			]
		
		
		ktable#376 = [
			#1: 0.25882352941176473,
			#2: 0.3607843137254902,
			#3: 0.28627450980392155,
			]
		
		
		ktable#377 = [
			]
		
		
		ktable#378 = [
			#1: 0.17647058823529413,
			#2: 0.23921568627450981,
			#3: 0.19215686274509805,
			]
		
		
		ktable#379 = [
			]
		
		
		ktable#380 = [
			#1: 0.41568627450980394,
			#2: 0.5490196078431373,
			#3: 0.4470588235294118,
			]
		
		
		ktable#383 = [
			]
		
		
		ktable#384 = [
			]
		
		
		ktable#385 = [
			#1: 0.44313725490196076,
			#2: 0.20392156862745098,
			#3: 0.3843137254901961,
			]
		
		
		ktable#386 = [
			]
		
		
		ktable#387 = [
			#1: 0.25882352941176473,
			#2: 0.13333333333333333,
			#3: 0.23529411764705882,
			]
		
		
		ktable#389 = [
			]
		
		
		ktable#390 = [
			#1: 0.6509803921568628,
			#2: 0.37254901960784315,
			#3: 0.6039215686274509,
			]
		
		
		ktable#392 = [
			#1: 0.24313725490196078,
			#2: 0.20784313725490197,
			#3: 0.27450980392156865,
			]
		
		
		ktable#393 = [
			#1: 0.1803921568627451,
			#2: 0.13333333333333333,
			#3: 0.1843137254901961,
			]
		
		
		ktable#394 = [
			#1: 0.3843137254901961,
			#2: 0.3333333333333333,
			#3: 0.396078431372549,
			]
		
		
		ktable#395 = [
			[enabled] = true,
			[threshold] = 0.05,
			]
		
		
		ktable#396 = [
			[viewH] = 172,
			[x] = 507,
			[scale] = 2,
			[y] = 48,
			[portraitX] = 6,
			[orderFollowSpeed] = 8,
			[barFollowSpeed] = 9,
			[countUpDur] = 0.65,
			[scrollbarH] = 172,
			[scrollbarW] = 2,
			[scrollbarY] = 48,
			[scrollbarX] = 634,
			[portraitScale] = 2,
			[portraitY] = 6,
			[gap] = -2,
			[damageTextOffsetY] = 12,
			[damageTextOffsetX] = 0,
			[damageBarShadowLeftPx] = 2.3,
			[damageBarShadowBottomPx] = 2.3,
			[damageBarOffsetY] = 15,
			[damageBarH] = 6,
			[damageBarW] = 88,
			[damageBarX] = 32,
			[wheelW] = 131,
			[scrollSpeed] = 18,
			]
		
		
		ktable#397 = [
			[y] = 126,
			[x] = 573,
			[highRes] = true,
			[textKey] = dps_window_empty,
			[text] = 전투 기록 없음,
			]
		
		
		ktable#398 = [
			#1: 1,
			#2: 0.9,
			#3: 0.5,
			#4: 1,
			]
		
		
		ktable#399 = [
			[y] = 19,
			[x] = 510,
			[scale] = 1.5,
			[highRes] = true,
			[textKey] = dps_window_title,
			[text] = 지난 전투 피해량,
			]
		
		
		ktable#400 = [
			[offsetY] = 0,
			[slideDur] = 0.52,
			[alpha] = 1,
			[ease] = outCubic,
			[offsetX] = 0,
			]
		
		
		ktable#402 = [
			[pressDur] = 0.1,
			[offsetY] = 18,
			[offsetX] = -8,
			]
		
		
		ktable#404 = [
			#1: 0.9294117647058824,
			#2: 0.9019607843137255,
			#3: 0.9529411764705882,
			#4: 1,
			]
		
		
		ktable#405 = [
			[pressDur] = 0.12,
			[offsetX] = 6.5,
			[scaleStep] = 1,
			[offsetY] = -6,
			[gapY] = 4,
			[hover] = true,
			[outlineRadiusPx] = 2,
			[outlineThreshold] = 0.5,
			[followFiremanY] = true,
			[alignRight] = true,
			[panelLeftX] = 493,
			[attachToWindow] = true,
			]
		
		
		ktable#407 = [
			#1: 0.9294117647058824,
			#2: 0.9019607843137255,
			#3: 0.9529411764705882,
			#4: 1,
			]
		
		
		ktable#408 = [
			[pressDur] = 0.12,
			[shadowOffsetY] = 0,
			[scaleStep] = 1,
			[offsetY] = 0,
			[shadowOffsetX] = 0,
			[offsetX] = 6.5,
			[hover] = true,
			[outlineRadiusPx] = 2,
			[outlineThreshold] = 0.5,
			[followFiremanY] = true,
			[alignRight] = true,
			[panelLeftX] = 493,
			[attachToWindow] = true,
			]
		
		
		ktable#410 = [
			[offsetX] = 16,
			[offsetY] = -200,
			[scaleStep] = 2,
			[anchor] = battlefield-bottom-left,
			]
		
		
		ktable#417 = [
			[offsetY] = 8,
			[offsetX] = 0,
			]
		
		
		ktable#419 = [
			[offsetY] = -70,
			[offsetX] = 10,
			]
		
		
		ktable#422 = [
			[offsetY] = 160,
			[offsetX] = 0,
			]
		
		
		ktable#424 = [
			[hitOffsetY] = -15,
			[hitOffsetX] = -3,
			[hitExpandY] = -26,
			[animSpeedSecPerFrame] = 0.08,
			[hitExpandPx] = 2,
			[offsetY] = 6,
			[offsetX] = -40,
			]
		
		
		ktable#433 = [
			[enabled] = true,
			[tooltipOffsetX] = 0,
			[tooltipOffsetY] = -5,
			[outlineRadiusPx] = 3,
			[scale] = 1,
			[offsetY] = -2,
			[offsetX] = -61,
			]
		
		
		ktable#435 = [
			[align] = center,
			[targetH] = 8,
			[offsetY] = -191,
			[offsetX] = -21,
			]
		
		
		ktable#437 = [
			[align] = right,
			[targetH] = 8,
			[offsetY] = -24,
			[offsetX] = 28,
			]
		
		
		ktable#439 = [
			[center] = true,
			[scale] = 1,
			[offsetY] = 13,
			[offsetX] = 0,
			]
		
		
		ktable#441 = [
			]
		
		
		ktable#442 = [
			[greyoutBrightness] = 0.7,
			]
		
		
		ktable#445 = [
			#1: 0,
			#2: 0,
			#3: 0,
			#4: 1,
			]
		
		
		ktable#446 = [
			#1: 0,
			#2: 0,
			#3: 0,
			#4: 1,
			]
		
		
		ktable#447 = [
			[durSec] = 3,
			[alpha] = 0.45,
			[progressAlpha] = 0.35,
			]
		
		
		ktable#449 = [
			[downDurSec] = 0.16,
			[upDurSec] = 0.16,
			[upPx] = 10,
			]
		
		
		ktable#450 = [
			[hoverOutRate] = 10,
			[hoverInRate] = 12,
			[hoverUpOnCooldownPx] = 4,
			[hoverDownPx] = 3,
			[anchor] = battlefield-bottom-left,
			[scale] = 1,
			[dropDur] = 0.7,
			[dropEndOffsetPx] = 0,
			[dropStartOffsetPx] = -50,
			[cooltimeOffsetY] = 13,
			[shadowOffsetY] = 4,
			[shadowOffsetX] = 0,
			[gapX] = 0,
			[offsetY] = -55,
			[offsetX] = 5,
			]
		
		
		ktable#452 = [
			#1: 0.8431372549,
			#2: 0.7058823529,
			#3: 0.4156862745,
			#4: 1,
			]
		
		
		ktable#453 = [
			[y] = 10,
			[x] = 288,
			[align] = right,
			[enabled] = true,
			[scale] = 1,
			[integerScale] = true,
			]
		
		
		ktable#455 = [
			[enabled] = false,
			[align] = right,
			[offsetY] = -24,
			[offsetX] = -50,
			]
		
		
		ktable#457 = [
			[yOffsetPx] = -14,
			[xOffsetPx] = 0,
			]
		
		
		ktable#459 = [
			[ampPx] = 2,
			[freq] = 0.6,
			]
		
		
		ktable#461 = [
			[dur] = 0.22,
			[freq] = 20,
			[ampPx] = 2,
			]
		
		
		ktable#463 = [
			#1: 1,
			#2: 0.5215686275,
			#3: 0.5215686275,
			#4: 1,
			]
		
		
		ktable#464 = [
			[integerScale] = true,
			[align] = center,
			[useFont] = true,
			[targetH] = 8,
			[offsetY] = -69,
			[offsetX] = -258,
			]
		
		
		ktable#466 = [
			[thicknessPx] = 1,
			[passes] = 4,
			[diagonal] = false,
			]
		
		
		ktable#467 = [
			#1: 0,
			#2: 0,
			#3: 0,
			#4: 1,
			]
		
		
		ktable#468 = [
			#1: 1,
			#2: 1,
			#3: 1,
			#4: 1,
			]
		
		
		ktable#469 = [
			[maxWidthPadPx] = 8,
			[baselineShiftPx] = 0,
			[insetPx] = 0,
			[text] = 클래스 승급,
			[align] = center,
			[offsetY] = -6.5,
			[offsetX] = 0,
			]
		
		
		ktable#471 = [
			[rightInsetPx] = -40,
			[enabled] = true,
			[iconInsetPx] = 4,
			[iconOffsetY] = -1,
			[iconOffsetX] = -2,
			[hoverLerpOut] = 20,
			[hoverLerpIn] = 28,
			[hoverShiftLeftPx] = 4,
			[topOffsetPx] = 20,
			[scale] = 1,
			[offsetY] = 0,
			[offsetX] = 0,
			]
		
		
		ktable#473 = [
			#1: 0.08,
			#2: 0.55,
			#3: 0.22,
			#4: 1,
			]
		
		
		ktable#475 = [
			#1: 0.1,
			#2: 0.1,
			#3: 0.1,
			#4: 1,
			]
		
		
		ktable#477 = [
			#1: 0.33,
			#2: 0.28,
			#3: 0.22,
			#4: 1,
			]
		
		
		ktable#478 = [
			[followOffsetX] = 9,
			[gap] = 6,
			[followOffsetY] = -4,
			]
		
		
		ktable#479 = [
			[outTotalMul] = 0.45,
			[outDurMul] = 0.45,
			[targetOffsetY] = 0,
			[targetOffsetX] = 0,
			[settleScale] = 0.95,
			[slamMaxScale] = 1.3,
			[slamMinScale] = 0.75,
			[preScaleAdd] = 0.28,
			[moveDur] = 0.35,
			]
		
		
		ktable#481 = [
			[scale] = 0.94,
			[dur] = 0.12,
			]
		
		
		ktable#482 = [
			[insetEnterPx] = 6,
			[liftPx] = 6,
			[leaveExpandPx] = 2,
			]
		
		
		ktable#484 = [
			[padPx] = 0,
			[holeFracH] = 0.075,
			[holeFracW] = 0.053,
			]
		
		
		ktable#486 = [
			[dur] = 0.4,
			[delay] = 0.4,
			[offsetPx] = 24,
			]
		
		
		ktable#487 = [
			[descOffsetY] = 14,
			[rightCardNudgeX] = 3,
			[gapMul] = 0.2,
			[randomOptionIconOffsetX] = -55,
			[titleOffsetY] = 6,
			[titleOffsetX] = 8,
			[descTextOffsetX] = 5,
			[descSidePadPx] = -2,
			[descLineSpacing] = 1.45,
			[randomOptionIconSizePx] = 32,
			[middleCardNudgeX] = 2,
			[leftCardNudgeX] = 2,
			[statOffsetY] = 13,
			[iconOffsetY] = -40,
			[nameOffsetY] = -11.5,
			[statOffsetX] = 3,
			[randomOptionIconOffsetY] = 158,
			[randomOptionTooltipOffsetY] = 2.5,
			[randomOptionTooltipWidth] = 120,
			[classSkillTooltipOffsetY] = 8,
			[classSkillTooltipWidth] = 160,
			]
		
		
		ktable#489 = [
			[costTextOffsetY] = -1,
			[costOffsetY] = 0,
			[statOffsetY] = 0.7,
			[descOffsetY] = 0,
			[nameOffsetY] = 0,
			]
		
		
		ktable#491 = [
			[dur] = 3,
			[scale] = 2,
			[offsetY] = 100,
			[offsetX] = 0,
			]
		
		
		ktable#493 = [
			[dur] = 3,
			[scale] = 2,
			[offsetY] = 100,
			[offsetX] = 0,
			]
		
		
		ktable#495 = [
			[y] = 16,
			[x] = 16,
			[text2Scale] = 0.9,
			[gapPx] = 6,
			[textOffsetX] = 0,
			[fadeOutSec] = 0.9,
			[textOffsetY] = 1,
			[anchor] = battlefield_top,
			[durationSec] = 4.4,
			[singleLine] = false,
			[scale] = 1,
			[text1Scale] = 1,
			[fadeInSec] = 0.2,
			[offsetY] = 60,
			[offsetX] = 0,
			]
		
		
		ktable#498 = [
			[enabled] = true,
			[freqHz] = 3,
			[square] = true,
			[max] = 2,
			[min] = 1,
			]
		
		
		ktable#500 = [
			#1: 0.95,
			#2: 0.22,
			#3: 0.26,
			#4: 1,
			]
		
		
		ktable#501 = [
			#1: 0.98,
			#2: 0.84,
			#3: 0.55,
			#4: 1,
			]
		
		
		ktable#502 = [
			]
		
		
		ktable#503 = [
			#1: 0.95,
			#2: 0.95,
			#3: 0.97,
			#4: 1,
			]
		
		
		ktable#518 = [
			[enabled] = true,
			[square] = true,
			[freqHz] = 3,
			]
		
		
		ktable#521 = [
			#1: 0.62,
			#2: 0.88,
			#3: 0.8,
			#4: 1,
			]
		
		
		ktable#523 = [
			#1: 0.95,
			#2: 0.22,
			#3: 0.26,
			#4: 1,
			]
		
		
		ktable#525 = [
			#1: 0.96,
			#2: 0.58,
			#3: 0.64,
			#4: 1,
			]
		
		
		ktable#527 = [
			#1: 0.98,
			#2: 0.84,
			#3: 0.55,
			#4: 1,
			]
		
		
		ktable#529 = [
			]
		
		
		ktable#530 = [
			#1: 0.95,
			#2: 0.95,
			#3: 0.97,
			#4: 1,
			]
		
		
		ktable#539 = [
			[k] = 90,
			[maxVel] = 2000,
			[damping] = 14,
			]
		
		
		ktable#545 = [
			]
		
		
		ktable#547 = [
			[amp] = 0.1,
			[freq] = 2,
			]
		
		
		ktable#548 = [
			[scale] = 2,
			[amp] = 0.04,
			]
		
		
		ktable#549 = [
			[specular] = 0.04,
			[angleDeg] = 20,
			[cycleSec] = 3.2,
			[scale] = 0.5,
			[alpha] = 0.7,
			[mixBP] = 0.72,
			[saturation] = 1.35,
			[colorGain] = 1.35,
			[fresnelPow] = 2,
			]
		
		
		ktable#552 = [
			[y] = 15,
			[x] = 0,
			]
		
		
		ktable#555 = [
			[enabled] = true,
			[variancePx] = 24,
			[offsetPx] = 30,
			]
		
		
		ktable#557 = [
			[outlineAlphaThreshold] = 0.01,
			[innerTintAlpha] = 0.25,
			[glowFalloff] = 1,
			[glowMaxRadiusPx] = 15,
			[glowPulseHz] = 0.6,
			[glowAlpha] = 0.9,
			]
		
		
		ktable#558 = [
			#1: 0.525,
			#2: 0.294,
			#3: 0.757,
			#4: 1,
			]
		
		
		ktable#561 = [
			#1: 0.4,
			#2: 0.6,
			]
		
		
		ktable#562 = [
			[peakThreshold] = 0.94,
			[axis] = x,
			[flashTriThreshold] = 0.9,
			[ampPx] = 1,
			[flashAmpPx] = 0,
			]
		
		
		ktable#564 = [
			[hpScaleSub] = 1,
			[padY] = 30,
			[padX] = 30,
			[anchor] = top-left,
			]
		
		
		ktable#566 = [
			[cooldown] = 0.6,
			[padY] = 30,
			[padX] = 8,
			[anchor] = bottom-right,
			]
		
		
		ktable#568 = [
			[strengthEase] = linear,
			[riseSpanPx] = 80,
			[extraStartPx] = -10,
			[finalLiftPx] = 10,
			[sunDropPx] = 120,
			]
		
		
		ktable#570 = [
			[hz] = 0.3,
			[amp] = 0.05,
			[minMul] = 0.6,
			[sharpness] = 0.3,
			]
		
		
		ktable#571 = [
			[amp] = 0.25,
			[freq] = 2,
			]
		
		
		ktable#572 = [
			[scale] = 3,
			[amp] = 0.2,
			]
		
		
		ktable#573 = [
			[specular] = 0.35,
			[angleDeg] = 20,
			[cycleSec] = 2,
			[scale] = 2.5,
			[alpha] = 0.15,
			[mixBP] = 0.55,
			[saturation] = 0.9,
			[colorGain] = 1,
			[fresnelPow] = 2.5,
			]
		
		
		ktable#575 = [
			[amp] = 0.06,
			[freq] = 2,
			]
		
		
		ktable#576 = [
			[scale] = 2.2,
			[amp] = 0.08,
			]
		
		
		ktable#577 = [
			[specular] = 0.15,
			[angleDeg] = 20,
			[cycleSec] = 1.6,
			[scale] = 3,
			[alpha] = 0.22,
			[mixBP] = 0.72,
			[saturation] = 2.8,
			[colorGain] = 1.1,
			[fresnelPow] = 2,
			]
		
		
		ktable#579 = [
			[angleDeg] = 30,
			[speed] = 1.45,
			[scale] = 2,
			[alpha] = 0.18,
			]
		
		
		ktable#582 = [
			#1: 1,
			#2: 0.55,
			#3: 0.25,
			]
		
		
		ktable#583 = [
			[opaqueAlphaThresh] = 0.2,
			[useOpaqueWidth] = true,
			[widthPaddingPx] = 0,
			[widthScale] = 1,
			[lengthFactor] = 0.65,
			[alphaTop] = 0,
			[alphaBottom] = 0.65,
			[debugWidth] = false,
			[widthEdgePadPx] = 10,
			[preciseAlphaThresh] = 0.15,
			[preciseWidth] = true,
			[sparkDirection] = up,
			[sparkCount] = 4,
			[enableSparks] = true,
			[additiveBlend] = true,
			[minOpaqueRunY] = 6,
			]
		
		
		ktable#584 = [
			#1: 1,
			#2: 0.45,
			#3: 0.2,
			]
		
		
		ktable#586 = [
			#1: 0.7,
			#2: 0.4,
			#3: 1,
			]
		
		
		ktable#588 = [
			#1: 0.55,
			#2: 0.8,
			#3: 1,
			]
		
		
		ktable#589 = [
			[enabled] = false,
			[alpha] = 0.45,
			[yScaleMul] = 1.3,
			[xScaleMul] = 2.2,
			]
		
		
		ktable#590 = [
			[cavalryOffsetXPx] = -2,
			[dyingStrength] = 0.35,
			[strength] = 0.9,
			[yOffsetPx] = 4,
			[maxHeightPx] = 10,
			[minHeightPx] = 6,
			[heightRatio] = 0.3,
			[maxWidthPx] = 30,
			[minWidthPx] = 11,
			[widthMul] = 0.78,
			]
		
		
		ktable#592 = [
			[attackOffsetMax] = 0.12,
			]
		
		
		ktable#594 = [
			[dur] = 0.18,
			[amt] = 0.08,
			]
		
		
		ktable#596 = [
			[ampPx] = 4,
			[dur] = 0.18,
			]
		
		
		ktable#598 = [
			[cycleSec] = 8,
			[amplitudePx] = 1,
			[phase] = -0.25,
			]
		
		
		ktable#599 = [
			[hitFlashMaxAlpha] = 0.85,
			[hitFlashDur] = 0.16,
			[allySize32] = 64,
			[judgementEnemySpawnDelay] = 0,
			[enemySpawnDelay] = 1,
			[unitScale] = 2,
			[rosterScale] = 1.8,
			[rangeEllipseYScale] = 0.4,
			[enemyScale] = 2,
			[suddenDeathWipeoutDelay] = 2.5,
			[enemyDetectXFrac] = 0.8,
			[glowRadiusOutSec] = 0.5,
			[glowRadiusInSec] = 0.5,
			[glowFadeOutSec] = 0.5,
			[glowFadeInSec] = 0.5,
			[glowPulseHz] = 1.2,
			[hpbarGap] = 5,
			[gradeGlazeAlpha] = 0,
			]
		
		
		ktable#602 = [
			#1: 0.85,
			#2: 0.45,
			#3: 0.45,
			]
		
		
		ktable#604 = [
			#1: 0.6,
			#2: 0.22,
			#3: 0.24,
			]
		
		
		ktable#606 = [
			#1: 0.32,
			#2: 0.1,
			#3: 0.12,
			]
		
		
		ktable#607 = [
			[enabled] = true,
			[previewAlways] = false,
			[blueCut] = 0.45,
			[mixKeep] = 0.15,
			[strengthMul] = 0.85,
			]
		
		
		ktable#611 = [
			[amp] = 0.32,
			[freq] = 1.8,
			[minScale] = 1.1,
			[maxScale] = 1.6,
			]
		
		
		ktable#613 = [
			[y] = 24,
			[x] = 78,
			]
		
		
		ktable#615 = [
			[y] = 24,
			[x] = 101,
			]
		
		
		ktable#616 = [
			[scaleFrom] = 0.1,
			[fadeIn] = 0.25,
			[dur] = 0.45,
			[enabled] = true,
			[scaleTo] = 1.6,
			]
		
		
		ktable#619 = [
			#1: 1,
			#2: 0.68,
			#3: 0.18,
			]
		
		
		ktable#620 = [
			#1: 1,
			#2: 0.78,
			#3: 0.28,
			#4: 1,
			]
		
		
		ktable#621 = [
			[bounceDecay] = 2.2,
			[alphaThreshold] = 0.01,
			[pulseHz] = 2.4,
			[bounceHz] = 3.6,
			[bouncePx] = 3,
			[glowAlpha] = 0.18,
			[outlineRadiusPx] = 3,
			[fadeOut] = 0.45,
			[fadeIn] = 0.12,
			[duration] = 2.8,
			]
		
		
		ktable#623 = [
			[ampPx] = 1,
			[freq] = 0.5,
			]
		
		
		ktable#625 = [
			]
		
		
		ktable#626 = [
			[dur] = 1.2,
			[freq] = 2,
			[ampPx] = 3,
			]
		
		
		ktable#628 = [
			#1: 1,
			#2: 1,
			#3: 1,
			#4: 1,
			]
		
		
		ktable#629 = [
			[y] = 330,
			[x] = 179,
			[scale] = 1,
			[align] = left,
			[max] = 8,
			]
		
		
		ktable#631 = [
			[fromX] = -32,
			[startAfter] = rise,
			[slideDur] = 0.7,
			[startDelay] = 0.9,
			]
		
		
		ktable#633 = [
			[startU] = 0.5,
			[startPhase] = drop,
			[riseDur] = 1,
			]
		
		
		ktable#636 = [
			]
		
		
		ktable#644 = [
			[freqMul] = 1,
			[durMul] = 1,
			[ampMul] = 1.3,
			]
		
		
		ktable#646 = [
			[freqMul] = 1,
			[durMul] = 0.8,
			[ampMul] = 0.8,
			]
		
		
		ktable#648 = [
			[durMul] = 1,
			[ampMul] = 0.6,
			]
		
		
		ktable#649 = [
			[emulateLineIndex] = 3,
			]
		
		
		ktable#652 = [
			#1: 0.5,
			#2: 0.7,
			#3: 1,
			#4: 1.25,
			#5: 1.5,
			]
		
		
		ktable#653 = [
			[dur] = 0.3,
			[freq] = 22,
			[ampPx] = 0.7,
			[axis] = xy,
			]
		
		
		ktable#655 = [
			#1: 0.55,
			#2: 0.75,
			#3: 1,
			#4: 1.4,
			#5: 1.8,
			]
		
		
		ktable#656 = [
			[dur] = 0.4,
			[freq] = 5,
			[ampPx] = 2,
			[axis] = xy,
			]
		
		
		ktable#658 = [
			#1: 0.55,
			#2: 0.75,
			#3: 1,
			#4: 1.5,
			#5: 2,
			]
		
		
		ktable#659 = [
			[dur] = 0.4,
			[anchorOffsetX] = 0,
			[startIndex] = 1,
			[amp] = 0.04,
			[anchorOffsetY] = 0,
			]
		
		
		ktable#661 = [
			[decay] = true,
			[freq] = 5,
			[ampPx] = 3,
			[quantize] = true,
			]
		
		
		ktable#663 = [
			[amp] = 0.12,
			]
		
		
		ktable#665 = [
			[ampPx] = 3.6,
			[dur] = 0.18,
			]
		
		
		ktable#667 = [
			[phaseB] = 0.8,
			[mixA] = 0.7,
			[freqB] = 1.6,
			[freqA] = 1,
			[ampPx] = 4,
			]
		
		
		ktable#669 = [
			[bgAnimX] = 0,
			[bgAnimY] = 0,
			[title] = slots,
			[winOutlinePixelMul] = 2,
			[scale] = 0.58,
			[ropeOffsetY] = -32,
			[stickyOffsetY] = 14,
			[bgOffsetY] = -14,
			[bgOffsetX] = -21,
			[rightmostColOffsetPx] = -1,
			[lockSpin] = true,
			[gutter] = 0,
			[cellSize] = 0,
			[rows] = 3,
			[cols] = 3,
			]
		
		
		ktable#674 = [
			[amp] = 0.1,
			[freq] = 0.8,
			]
		
		
		ktable#676 = [
			[scale] = 85,
			[amp] = 0.12,
			]
		
		
		ktable#677 = [
			[specular] = 0.1,
			[angleDeg] = 12,
			[cycleSec] = 4,
			[scale] = 1.6,
			[alpha] = 0.6,
			[mixBP] = 0.85,
			[saturation] = 2,
			[colorGain] = 1,
			[fresnelPow] = 2,
			]
		
		
		ktable#679 = [
			[quantize] = true,
			[enabled] = true,
			[pixelStep] = 1,
			[ampPx] = 3,
			[freqHz] = 2.8,
			]
		
		
		ktable#681 = [
			[enabled] = true,
			[step] = 3,
			[minMul] = 1.5,
			[phase] = 0,
			[amp] = 0.8,
			[smooth] = true,
			[duty] = 1.58,
			[freqHz] = 1,
			]
		
		
		ktable#683 = [
			[quantize] = true,
			[enabled] = false,
			[pixelStep] = 1,
			[ampPx] = 1.5,
			[freqHz] = 2.2,
			]
		
		
		ktable#685 = [
			[phaseShift] = 0.45,
			[restDurSec] = 0,
			[bounceDurSec] = 0.26,
			[perCharDelaySec] = 0.08,
			[ampPx] = 8,
			[freqHz] = 4,
			]
		
		
		ktable#686 = [
			#1: 1,
			#2: 1,
			#3: 1,
			#4: 1,
			]
		
		
		ktable#688 = [
			#1: 0.20392156862745098,
			#2: 0.15294117647058825,
			#3: 0.18823529411764706,
			#4: 1,
			]
		
		
		ktable#689 = [
			[radiusPx] = 2,
			]
		
		
		ktable#691 = [
			#1: 0,
			#2: 0,
			#3: 0,
			#4: 0.55,
			]
		
		
		ktable#692 = [
			[dy] = 1,
			[dx] = 1,
			]
		
		
		ktable#693 = [
			[fadeOutSec] = 0.5,
			[holdSec] = 4,
			[fadeInSec] = 0.2,
			[offsetY] = -25,
			[offsetX] = -20,
			]
		
		
		ktable#706 = [
			#1: 0.9098039215686274,
			#2: 0.47058823529411764,
			#3: 0.47058823529411764,
			#4: 1,
			]
		
		
		ktable#708 = [
			#1: 0.9098039215686274,
			#2: 0.7843137254901961,
			#3: 0.4588235294117647,
			#4: 1,
			]
		
		
		ktable#710 = [
			]
		
		
		ktable#711 = [
			#1: 0.5607843137254902,
			#2: 0.8117647058823529,
			#3: 0.5294117647058824,
			#4: 1,
			]
		
		
		ktable#712 = [
			[scale] = 2.3,
			[subtitleCenterYFrac] = 0.67,
			[titleCenterYFrac] = 0.31,
			[textRightFrac] = 0.945,
			[textLeftFrac] = 0.245,
			[appearSpeed] = 1.6,
			[appearAfterHardProgress] = 0.18,
			[waveTextOffsetX] = -2,
			[stageTextOffsetX] = -11,
			[infoTextOffsetY] = -10,
			[infoTextScale] = 1.15,
			[titleSpriteOffsetY] = -12,
			[titleSpriteOffsetX] = 30,
			[titleSpriteScale] = 1.5,
			[bottomMargin] = 42,
			[offsetY] = 0,
			[offsetX] = 0,
			]
		
		
		ktable#714 = [
			[enabled] = true,
			[scale] = 1,
			[gapPx] = 35,
			[offsetY] = -60,
			[offsetX] = 0,
			]
		
		
		ktable#716 = [
			[totalDur] = 0.72,
			[startY] = -80,
			[overshoot] = 5,
			[targetY] = 25,
			[outDur] = 0.48,
			]
		
		
		ktable#718 = [
			#1: STAGE 1,
			#2: Deep Cave,
			#3: Wasteland,
			#4: Lost Ruins,
			#5: Crimson Hell,
			#6: Split Space,
			]
		
		
		ktable#720 = [
			[enabled] = true,
			[yPx] = 194,
			[scale] = 1.15,
			[text] = menu_stage_name_4,
			[offsetY] = -4,
			[offsetX] = 0,
			]
		
		
		ktable#722 = [
			[enabled] = true,
			[yPx] = 194,
			[scale] = 1.15,
			[text] = menu_stage_name_3,
			[offsetY] = -4,
			[offsetX] = 0,
			]
		
		
		ktable#724 = [
			[enabled] = true,
			[yPx] = 194,
			[scale] = 1.15,
			[text] = menu_stage_name_2,
			[offsetY] = -4,
			[offsetX] = 0,
			]
		
		
		ktable#726 = [
			[enabled] = true,
			[yPx] = 194,
			[scale] = 1.15,
			[text] = menu_stage_1_title,
			[offsetY] = -4,
			[offsetX] = 0,
			]
		
		
		ktable#728 = [
			[enabled] = true,
			[offsetX] = 0,
			[offsetY] = -63,
			[gapPx] = 12,
			]
		
		
		ktable#731 = [
			]
		
		
		ktable#732 = [
			[enabled] = true,
			[offsetY] = -37,
			[yFrac] = 0.18,
			[spriteScale] = 1.15,
			[offsetX] = 0,
			]
		
		
		ktable#734 = [
			[unitsFrameDur] = 0.26,
			[mainlayers2ScrollSpeed] = 10,
			[mainlayers1ScrollSpeed] = 5,
			[goblinsFrameDur] = 0.15,
			]
		
		
		ktable#736 = [
			[lockedHintTextOffsetY] = -2,
			[lockedHintPadPx] = 6,
			[lockedHintScale] = 0.95,
			[lockedHintGapPx] = 8,
			[offsetY] = 0,
			[iconScale] = 1.5,
			[labelOffsetX] = 0,
			[labelGapPx] = 3,
			[labelScale] = 1.1,
			[gapFromCollectionPx] = 28,
			[offsetX] = -14,
			]
		
		
		ktable#738 = [
			[lockedHintTextOffsetY] = -1,
			[lockedHintPadPx] = 6,
			[lockedHintScale] = 0.95,
			[lockedHintGapPx] = 8,
			[gapFromUpgradePx] = 28,
			[iconScale] = 1.5,
			[labelOffsetX] = 0,
			[labelGapPx] = 3,
			[labelScale] = 1.1,
			[offsetY] = 0,
			[offsetX] = 142,
			]
		
		
		ktable#740 = [
			[labelOffsetX] = 0,
			[paddingBottom] = 40,
			[offsetY] = 2,
			[labelGapPx] = 3,
			[labelScale] = 1.1,
			[iconScale] = 1.5,
			[paddingLeft] = 26,
			[offsetX] = 0,
			]
		
		
		ktable#742 = [
			[labelOffsetX] = 0,
			[paddingBottom] = 40,
			[paddingRight] = 40,
			[labelGapPx] = 3,
			[labelScale] = 1.1,
			[iconScale] = 1.5,
			[offsetY] = 2,
			[offsetX] = -318,
			]
		
		
		ktable#744 = [
			[offsetY] = -10,
			[targetY] = 16,
			[scale] = 2.3,
			[offsetX] = 0,
			]
		
		
		ktable#778 = [
			[buttonGap] = 14,
			[buttonYOffset] = -95,
			[rewardYOffset] = 30,
			[rewardY] = 320,
			[rewardBlockOffsetX] = -2,
			[rewardIconOffsetY] = -3,
			[rewardIconOffsetX] = 0,
			[spriteOffsetY] = -10,
			[spriteOffsetX] = 0,
			[unitNameY] = 237,
			[sharedInfoY] = 241,
			[playTimeValueY] = 205,
			[playTimeLabelY] = 185,
			[bestUnitLabelY] = 150,
			[waveY] = 148,
			[rightColRatio] = 0.58,
			[leftColRatio] = 0.425,
			[titleY] = 105,
			[windowOffsetY] = -20,
			]
		
		
		ktable#794 = [
			[hotspotY] = 0,
			[hotspotX] = 4,
			]
		
		
		ktable#798 = [
			[offsetY] = 5.5,
			[offsetX] = 0,
			]
		
		
		ktable#800 = [
			[offsetY] = -5,
			[offsetX] = 0,
			]
		
		
		ktable#802 = [
			[offsetY] = 36,
			[offsetX] = 0,
			]
		
		
		ktable#804 = [
			[extraDown] = 27,
			]
		
		
		ktable#806 = [
			[offsetY] = 16,
			[offsetX] = 10,
			]
		
		
		ktable#808 = [
			[offsetY] = 8,
			[offsetX] = -42,
			]
		
		
		ktable#810 = [
			[offsetY] = -10,
			[offsetX] = 0,
			]
		
		
		ktable#811 = [
			[offsetY] = -5,
			[offsetX] = -125,
			]
		
		
		ktable#814 = [
			#1: 1,
			#2: 1,
			#3: 1,
			#4: 1,
			]
		
		
		ktable#816 = [
			#1: 0.35,
			#2: 1,
			#3: 0.45,
			#4: 1,
			]
		
		
		ktable#817 = [
			[enabled] = true,
			[layers] = 18,
			[expand] = 10,
			[alpha] = 0.06,
			[pulseAmp] = 0,
			[pulseHz] = 0,
			[softness] = 2.8,
			]
		
		
		ktable#819 = [
			[y] = 11,
			[x] = 0,
			]
		
		
		ktable#820 = [
			[y] = 85,
			[x] = 3,
			]
		
		
		ktable#821 = [
			[y] = 12,
			[x] = 10,
			]
		
		
		ktable#822 = [
			[y] = 202,
			[x] = 4,
			]
		
		
		ktable#823 = [
			[y] = 18,
			[x] = 3,
			]
		
		
		ktable#824 = [
			[y] = 3,
			[x] = 3,
			]
		
		
		ktable#825 = [
			[y] = 7,
			[x] = 0,
			]
		
		
		ktable#826 = [
			[y] = -14,
			[x] = 2,
			]
		
		
		ktable#827 = [
			]
		
		
		ktable#828 = [
			[y] = 27,
			[x] = 2,
			]
		
		
		ktable#829 = [
			[y] = 11,
			[x] = 0,
			]
		
		
		ktable#830 = [
			[y] = 85,
			[x] = 3,
			]
		
		
		ktable#831 = [
			[y] = 12,
			[x] = 10,
			]
		
		
		ktable#832 = [
			[y] = 202,
			[x] = 4,
			]
		
		
		ktable#833 = [
			[y] = 18,
			[x] = 3,
			]
		
		
		ktable#834 = [
			[y] = 3,
			[x] = 3,
			]
		
		
		ktable#835 = [
			[y] = 7,
			[x] = 0,
			]
		
		
		ktable#836 = [
			[y] = -14,
			[x] = 2,
			]
		
		
		ktable#837 = [
			]
		
		
		ktable#838 = [
			[y] = 27,
			[x] = 2,
			]
		
		
		ktable#839 = [
			[y] = 11,
			[x] = 0,
			]
		
		
		ktable#841 = [
			[y] = 85,
			[x] = 3,
			]
		
		
		ktable#842 = [
			[y] = 60,
			[x] = 100,
			]
		
		
		ktable#843 = [
			[y] = 202,
			[x] = 4,
			]
		
		
		ktable#845 = [
			[y] = 18,
			[x] = 3,
			]
		
		
		ktable#847 = [
			[y] = 3,
			[x] = 3,
			]
		
		
		ktable#849 = [
			[y] = 7,
			[x] = 0,
			]
		
		
		ktable#850 = [
			[y] = -14,
			[x] = 2,
			]
		
		
		ktable#852 = [
			]
		
		
		ktable#853 = [
			[y] = 27,
			[x] = 2,
			]
		
		
		ktable#855 = [
			[liftPx] = 6,
			]
		
		
		ktable#857 = [
			#1: 1,
			#2: 1,
			#3: 1,
			#4: 1,
			]
		
		
		ktable#858 = [
			[y] = 11,
			[x] = 0,
			[scale] = 1,
			[letterSpacing] = 4,
			]
		
		
		ktable#859 = [
			[y] = 12,
			[x] = 10,
			[scale] = 2,
			]
		
		
		ktable#861 = [
			[y] = 12,
			[x] = -10,
			[scale] = 2,
			]
		
		
		ktable#863 = [
			#1: 0.62,
			#2: 0.58,
			#3: 0.45,
			#4: 0.65,
			]
		
		
		ktable#865 = [
			#1: 0.58,
			#2: 0.4,
			#3: 0.12,
			#4: 1,
			]
		
		
		ktable#867 = [
			#1: 0.15,
			#2: 0.55,
			#3: 0.25,
			#4: 1,
			]
		
		
		ktable#868 = [
			[lineSpacing] = 7,
			[progTextScale] = 1,
			[descW] = 105,
			[barH] = 3,
			[barW] = 100,
			[gapMul] = 0.2,
			[cardH] = 320,
			[cardW] = 180,
			]
		
		
		ktable#870 = [
			#1: 1,
			#2: 1,
			#3: 1,
			#4: 0.15,
			]
		
		
		ktable#872 = [
			#1: 0.6,
			#2: 0.6,
			#3: 0.6,
			#4: 0.8,
			]
		
		
		ktable#874 = [
			#1: 0.03,
			#2: 0.16,
			#3: 0.08,
			#4: 0.85,
			]
		
		
		ktable#876 = [
			#1: 0.02,
			#2: 0.12,
			#3: 0.05,
			#4: 0.55,
			]
		
		
		ktable#878 = [
			#1: 0.35,
			#2: 1,
			#3: 0.45,
			#4: 1,
			]
		
		
		ktable#880 = [
			#1: 0.2,
			#2: 0.88,
			#3: 0.35,
			#4: 1,
			]
		
		
		ktable#881 = [
			[previewWhiteMixMax] = 1,
			[height] = 14,
			[starOffsetX] = 0,
			[starOffsetY] = 0.5,
			[textScale] = 0.8,
			[previewPulseHz] = 1.6,
			[previewAlphaMax] = 0.95,
			[previewAlphaMin] = 0,
			[textOffsetY] = 12,
			[textOffsetX] = 2,
			[offsetY] = 12,
			[offsetX] = 10,
			]
		
		
		ktable#883 = [
			[rightInsetPx] = 432,
			[enabled] = true,
			[iconOffsetY] = -1,
			[iconOffsetX] = -2,
			[iconInsetPx] = 4,
			[topOffsetPx] = 24,
			[scale] = 1,
			[tooltipOffsetY] = 2,
			[offsetY] = 0,
			[offsetX] = 0,
			]
		
		
		ktable#886 = [
			#1: 0.08235294117647059,
			#2: 0.08235294117647059,
			#3: 0.10980392156862745,
			#4: 1,
			]
		
		
		ktable#887 = [
			[y] = 393,
			[x] = 34,
			[gap] = 0,
			[tooltipOffsetY] = 14,
			[maxSlots] = 5,
			[size] = 32,
			]
		
		
		ktable#890 = [
			[scale] = 1,
			[hoverBrightAlpha] = 0.25,
			[dy] = 0,
			[dx] = 0,
			[gap] = 4,
			]
		
		
		ktable#892 = [
			[scale] = 1,
			[hoverBrightAlpha] = 0.4,
			[dy] = 3,
			[dx] = 68,
			]
		
		
		ktable#894 = [
			[scale] = 1,
			[outline] = true,
			[dy] = 3,
			[dx] = 0,
			[gap] = 8,
			[hoverPad] = 2,
			[hoverBrightAlpha] = 0.22,
			]
		
		
		ktable#896 = [
			[y] = 65,
			[x] = 26,
			[dyFromName] = 2,
			]
		
		
		ktable#898 = [
			]
		
		
		ktable#899 = [
			[y] = 26,
			[x] = 24,
			]
		
		
		ktable#901 = [
			[gapY] = 8,
			[offsetX] = 18,
			]
		
		
		ktable#903 = [
			[offsetY] = 26,
			[offsetX] = 24,
			]
		
		
		ktable#905 = [
			[y] = 14,
			[x] = 11,
			]
		
		
		ktable#907 = [
			[offsetY] = 7,
			[offsetX] = 70,
			]
		
		
		ktable#909 = [
			[offsetY] = 7,
			[offsetX] = 70,
			]
		
		
		ktable#911 = [
			[offsetY] = 11,
			[offsetX] = 4,
			]
		
		
		ktable#912 = [
			[slotH] = 320,
			[slotY] = 96,
			[slotX] = 15,
			[slotW] = 180,
			[slotGap] = -1,
			]
		
		
		ktable#915 = [
			[padX] = 8,
			[padY] = 8,
			[textOffsetY] = -1,
			[lineGap] = 14,
			[topY] = 12,
			[offsetY] = 0,
			[offsetX] = 0,
			]
		
		
		ktable#917 = [
			[gapY] = 8,
			[padX] = 8,
			[textOffsetY] = -1,
			[lineGap] = 14,
			[padY] = 8,
			[offsetY] = 0,
			[offsetX] = 0,
			]
		
		
		ktable#919 = [
			[gapY] = 7,
			[offsetY] = 0,
			[offsetX] = 0,
			]
		
		
		ktable#921 = [
			[padX] = 8,
			[lineGap] = 14,
			[textOffsetY] = -1,
			[unitOffsetY] = 0,
			[unitOffsetX] = 0,
			[unitGap] = 8,
			[padY] = 8,
			[offsetY] = 48,
			[offsetX] = 42,
			]
		
		
		ktable#923 = [
			[y] = 8,
			[offsetY] = 0,
			[offsetX] = 0,
			]
		
		
		ktable#925 = [
			[gapY] = 8,
			[offsetY] = 0,
			[offsetX] = 68,
			]
		
		
		ktable#927 = [
			[y] = -18,
			[x] = 164,
			[h] = 44,
			[w] = 48,
			[pad] = 3,
			]
		
		
		ktable#929 = [
			[gapY] = 4,
			[offsetY] = 0,
			[offsetX] = 0,
			]
		
		
		ktable#931 = [
			[y] = 4,
			[x] = 242,
			[h] = 22,
			[w] = 52,
			]
		
		
		ktable#933 = [
			[padX] = 8,
			[iconOffsetY] = 2,
			[lineGap] = 14,
			[iconScale] = 1,
			[textOffsetY] = -1,
			[textOffsetX] = 0,
			[gapX] = -24,
			[minH] = 0,
			[minW] = 0,
			[autoSize] = true,
			[padY] = 8,
			[offsetY] = 24,
			]
		
		
		ktable#935 = [
			[extraW] = 64,
			[extraH] = 54,
			[offsetY] = -24,
			[offsetX] = -20,
			]
		
		
		ktable#937 = [
			[counterAlpha] = 1,
			[counterGapY] = 2,
			[counterScale] = 1,
			[lockedAlpha] = 0.35,
			]
		
		
		ktable#939 = [
			[offsetY] = 102,
			[offsetX] = 0,
			]
		
		
		ktable#941 = [
			[offsetY] = 77,
			[offsetX] = 0,
			]
		
		
		ktable#942 = [
			[offsetY] = 61,
			[offsetX] = 0,
			]
		
		
		ktable#943 = [
			[offsetY] = 37,
			[offsetX] = 0,
			]
		
		
		ktable#945 = [
			[scale] = 1,
			[offsetY] = -10,
			[offsetX] = 0,
			]
		
		
		ktable#947 = [
			[pad] = 6,
			[offsetY] = 5,
			]
		
		
		ktable#949 = [
			[padX] = 6,
			[padY] = 6,
			]
		
		
		ktable#951 = [
			[padX] = 8,
			[padY] = 6,
			]
		
		
		ktable#953 = [
			#1: 0.78,
			#2: 0.63,
			#3: 0.9,
			]
		
		
		ktable#955 = [
			#1: 1,
			#2: 0.82,
			#3: 0.36,
			]
		
		
		ktable#957 = [
			[contentOffsetY] = -9,
			[contentOffsetX] = 2,
			]
		
		
		ktable#958 = [
			#1: 0.96,
			#2: 0.78,
			#3: 0.32,
			]
		
		
		ktable#962 = [
			#1: 1,
			#2: 1,
			#3: 1,
			]
		
		
		ktable#963 = [
			[enabled] = true,
			[alphaMax] = 0.2,
			[alphaMin] = 0.06,
			[freqHz] = 1.15,
			]
		
		
		ktable#964 = [
			[disabledDimMul] = 0.72,
			[pressAnimDurSec] = 0.15,
			[reelAnimDurSec] = 0.18,
			[gapAboveSpin] = 3,
			[offsetY] = 12,
			[offsetX] = 0,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
		  2	[  0]	KNUM 	  1		0	; slot1 = 0.8
		  3	[  0]	TSETS	  1	0	969	; slot0.scale = slot1
		  4	[  0]	KSTR 	  1		967	; slot1 = "ko"
		  5	[  0]	TSETS	  1	0	968	; slot0.language = slot1
		  6	[  0]	KPRI 	  1		2	; slot1 = true
		  7	[  0]	TSETS	  1	0	966	; slot0.windowIntegerScale = slot1
		  8	[  0]	TDUP 	  1		964	; slot1 = copy table#k964
		  9	[  0]	TDUP 	  2		963	; slot2 = copy table#k963
		 10	[  0]	TDUP 	  3		962	; slot3 = copy table#k962
		 11	[  0]	TSETS	  3	2	961	; slot2.color = slot3
		 12	[  0]	TSETS	  2	1	960	; slot1.enabledPulse = slot2
		 13	[  0]	TSETS	  1	0	965	; slot0.nudgeButtons = slot1
		 14	[  0]	TDUP 	  1		957	; slot1 = copy table#k957
		 15	[  0]	TDUP 	  2		958	; slot2 = copy table#k958
		 16	[  0]	TSETS	  2	1	956	; slot1.numberColor = slot2
		 17	[  0]	TDUP 	  2		955	; slot2 = copy table#k955
		 18	[  0]	TSETS	  2	1	954	; slot1.unitNameColor = slot2
		 19	[  0]	TDUP 	  2		953	; slot2 = copy table#k953
		 20	[  0]	TSETS	  2	1	952	; slot1.absorbColor = slot2
		 21	[  0]	TDUP 	  2		951	; slot2 = copy table#k951
		 22	[  0]	TSETS	  2	1	950	; slot1.unitFocus = slot2
		 23	[  0]	TDUP 	  2		949	; slot2 = copy table#k949
		 24	[  0]	TSETS	  2	1	948	; slot1.readyFocus = slot2
		 25	[  0]	TDUP 	  2		947	; slot2 = copy table#k947
		 26	[  0]	TSETS	  2	1	946	; slot1.firemanFocus = slot2
		 27	[  0]	TDUP 	  2		945	; slot2 = copy table#k945
		 28	[  0]	TSETS	  2	1	944	; slot1.titleImage = slot2
		 29	[  0]	TNEW 	  2		4	; slot2 = new table( array: 4, dict: 1)
		 30	[  0]	TDUP 	  3		943	; slot3 = copy table#k943
		 31	[  0]	TSETB	  3	2	1	; slot2[1] = slot3
		 32	[  0]	TDUP 	  3		942	; slot3 = copy table#k942
		 33	[  0]	TSETB	  3	2	2	; slot2[2] = slot3
		 34	[  0]	TDUP 	  3		941	; slot3 = copy table#k941
		 35	[  0]	TSETB	  3	2	3	; slot2[3] = slot3
		 36	[  0]	TSETS	  2	1	940	; slot1.bodyLines = slot2
		 37	[  0]	TDUP 	  2		939	; slot2 = copy table#k939
		 38	[  0]	TSETS	  2	1	938	; slot1.startPrompt = slot2
		 39	[  0]	TDUP 	  2		937	; slot2 = copy table#k937
		 40	[  0]	TSETS	  2	1	936	; slot1.welcomeSkip = slot2
		 41	[  0]	TDUP 	  2		935	; slot2 = copy table#k935
		 42	[  0]	TSETS	  2	1	934	; slot1.slotFocus = slot2
		 43	[  0]	TDUP 	  2		933	; slot2 = copy table#k933
		 44	[  0]	TSETS	  2	1	932	; slot1.slotTip = slot2
		 45	[  0]	TDUP 	  2		931	; slot2 = copy table#k931
		 46	[  0]	TSETS	  2	1	930	; slot1.goldFocus = slot2
		 47	[  0]	TDUP 	  2		929	; slot2 = copy table#k929
		 48	[  0]	TSETS	  2	1	928	; slot1.goldTip = slot2
		 49	[  0]	TDUP 	  2		927	; slot2 = copy table#k927
		 50	[  0]	TSETS	  2	1	926	; slot1.coreCounterFocus = slot2
		 51	[  0]	TDUP 	  2		925	; slot2 = copy table#k925
		 52	[  0]	TSETS	  2	1	924	; slot1.coreCounterTip = slot2
		 53	[  0]	TDUP 	  2		923	; slot2 = copy table#k923
		 54	[  0]	TSETS	  2	1	922	; slot1.coreSelectTip = slot2
		 55	[  0]	TDUP 	  2		921	; slot2 = copy table#k921
		 56	[  0]	TSETS	  2	1	920	; slot1.winTip = slot2
		 57	[  0]	TDUP 	  2		919	; slot2 = copy table#k919
		 58	[  0]	TSETS	  2	1	918	; slot1.continuePrompt = slot2
		 59	[  0]	TDUP 	  2		917	; slot2 = copy table#k917
		 60	[  0]	TSETS	  2	1	916	; slot1.readyTip = slot2
		 61	[  0]	TDUP 	  2		915	; slot2 = copy table#k915
		 62	[  0]	TSETS	  2	1	914	; slot1.positionTip = slot2
		 63	[  0]	TSETS	  1	0	959	; slot0.tutorial = slot1
		 64	[  0]	TDUP 	  1		912	; slot1 = copy table#k912
		 65	[  0]	TDUP 	  2		911	; slot2 = copy table#k911
		 66	[  0]	TSETS	  2	1	910	; slot1.slotBg = slot2
		 67	[  0]	TDUP 	  2		909	; slot2 = copy table#k909
		 68	[  0]	TSETS	  2	1	908	; slot1.emptyText = slot2
		 69	[  0]	TDUP 	  2		907	; slot2 = copy table#k907
		 70	[  0]	TSETS	  2	1	906	; slot1.lockedText = slot2
		 71	[  0]	TDUP 	  2		905	; slot2 = copy table#k905
		 72	[  0]	TSETS	  2	1	904	; slot1.iconOffset = slot2
		 73	[  0]	TDUP 	  2		903	; slot2 = copy table#k903
		 74	[  0]	TSETS	  2	1	902	; slot1.imprintName = slot2
		 75	[  0]	TDUP 	  2		901	; slot2 = copy table#k901
		 76	[  0]	TSETS	  2	1	900	; slot1.imprintDesc = slot2
		 77	[  0]	TDUP 	  2		898	; slot2 = copy table#k898
		 78	[  0]	TDUP 	  3		899	; slot3 = copy table#k899
		 79	[  0]	TSETS	  3	2	897	; slot2.name = slot3
		 80	[  0]	TDUP 	  3		896	; slot3 = copy table#k896
		 81	[  0]	TSETS	  3	2	895	; slot2.absorbLv = slot3
		 82	[  0]	TDUP 	  3		894	; slot3 = copy table#k894
		 83	[  0]	TSETS	  3	2	893	; slot2.faction = slot3
		 84	[  0]	TDUP 	  3		892	; slot3 = copy table#k892
		 85	[  0]	TSETS	  3	2	891	; slot2.infoIcon = slot3
		 86	[  0]	TDUP 	  3		890	; slot3 = copy table#k890
		 87	[  0]	TSETS	  3	2	889	; slot2.absorbLockIcon = slot3
		 88	[  0]	TSETS	  2	1	888	; slot1.text = slot2
		 89	[  0]	TDUP 	  2		887	; slot2 = copy table#k887
		 90	[  0]	TDUP 	  3		886	; slot3 = copy table#k886
		 91	[  0]	TSETS	  3	2	885	; slot2.outlineColor = slot3
		 92	[  0]	TSETS	  2	1	884	; slot1.randomOption = slot2
		 93	[  0]	TDUP 	  2		883	; slot2 = copy table#k883
		 94	[  0]	TSETS	  2	1	882	; slot1.skillFrame = slot2
		 95	[  0]	TDUP 	  2		881	; slot2 = copy table#k881
		 96	[  0]	TDUP 	  3		880	; slot3 = copy table#k880
		 97	[  0]	TSETS	  3	2	879	; slot2.fillColor = slot3
		 98	[  0]	TDUP 	  3		878	; slot3 = copy table#k878
		 99	[  0]	TSETS	  3	2	877	; slot2.previewColor = slot3
		100	[  0]	TDUP 	  3		876	; slot3 = copy table#k876
		101	[  0]	TSETS	  3	2	875	; slot2.gridColor = slot3
		102	[  0]	TDUP 	  3		874	; slot3 = copy table#k874
		103	[  0]	TSETS	  3	2	873	; slot2.bgColor = slot3
		104	[  0]	TDUP 	  3		872	; slot3 = copy table#k872
		105	[  0]	TSETS	  3	2	871	; slot2.borderColor = slot3
		106	[  0]	TDUP 	  3		870	; slot3 = copy table#k870
		107	[  0]	TSETS	  3	2	869	; slot2.accentColor = slot3
		108	[  0]	TDUP 	  3		868	; slot3 = copy table#k868
		109	[  0]	TDUP 	  4		867	; slot4 = copy table#k867
		110	[  0]	TSETS	  4	3	866	; slot3.completeColor = slot4
		111	[  0]	TDUP 	  4		865	; slot4 = copy table#k865
		112	[  0]	TSETS	  4	3	864	; slot3.incompleteColor = slot4
		113	[  0]	TDUP 	  4		863	; slot4 = copy table#k863
		114	[  0]	TSETS	  4	3	862	; slot3.barBgColor = slot4
		115	[  0]	TDUP 	  4		861	; slot4 = copy table#k861
		116	[  0]	TSETS	  4	3	860	; slot3.grade = slot4
		117	[  0]	TDUP 	  4		859	; slot4 = copy table#k859
		118	[  0]	TSETS	  4	3	891	; slot3.infoIcon = slot4
		119	[  0]	TDUP 	  4		858	; slot4 = copy table#k858
		120	[  0]	TDUP 	  5		857	; slot5 = copy table#k857
		121	[  0]	TSETS	  5	4	961	; slot4.color = slot5
		122	[  0]	TSETS	  4	3	856	; slot3.slotText = slot4
		123	[  0]	TDUP 	  4		855	; slot4 = copy table#k855
		124	[  0]	TSETS	  4	3	854	; slot3.hover = slot4
		125	[  0]	TDUP 	  4		852	; slot4 = copy table#k852
		126	[  0]	TDUP 	  5		853	; slot5 = copy table#k853
		127	[  0]	TSETS	  5	4	851	; slot4.icon = slot5
		128	[  0]	TDUP 	  5		850	; slot5 = copy table#k850
		129	[  0]	TSETS	  5	4	897	; slot4.name = slot5
		130	[  0]	TDUP 	  5		849	; slot5 = copy table#k849
		131	[  0]	TSETS	  5	4	848	; slot4.desc = slot5
		132	[  0]	TDUP 	  5		847	; slot5 = copy table#k847
		133	[  0]	TSETS	  5	4	846	; slot4.bar = slot5
		134	[  0]	TDUP 	  5		845	; slot5 = copy table#k845
		135	[  0]	TSETS	  5	4	844	; slot4.progText = slot5
		136	[  0]	TDUP 	  5		843	; slot5 = copy table#k843
		137	[  0]	TSETS	  5	4	860	; slot4.grade = slot5
		138	[  0]	TDUP 	  5		842	; slot5 = copy table#k842
		139	[  0]	TSETS	  5	4	891	; slot4.infoIcon = slot5
		140	[  0]	TDUP 	  5		841	; slot5 = copy table#k841
		141	[  0]	TSETS	  5	4	840	; slot4.status = slot5
		142	[  0]	TDUP 	  5		839	; slot5 = copy table#k839
		143	[  0]	TSETS	  5	4	856	; slot4.slotText = slot5
		144	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
		145	[  0]	TDUP 	  4		837	; slot4 = copy table#k837
		146	[  0]	TDUP 	  5		838	; slot5 = copy table#k838
		147	[  0]	TSETS	  5	4	851	; slot4.icon = slot5
		148	[  0]	TDUP 	  5		836	; slot5 = copy table#k836
		149	[  0]	TSETS	  5	4	897	; slot4.name = slot5
		150	[  0]	TDUP 	  5		835	; slot5 = copy table#k835
		151	[  0]	TSETS	  5	4	848	; slot4.desc = slot5
		152	[  0]	TDUP 	  5		834	; slot5 = copy table#k834
		153	[  0]	TSETS	  5	4	846	; slot4.bar = slot5
		154	[  0]	TDUP 	  5		833	; slot5 = copy table#k833
		155	[  0]	TSETS	  5	4	844	; slot4.progText = slot5
		156	[  0]	TDUP 	  5		832	; slot5 = copy table#k832
		157	[  0]	TSETS	  5	4	860	; slot4.grade = slot5
		158	[  0]	TDUP 	  5		831	; slot5 = copy table#k831
		159	[  0]	TSETS	  5	4	891	; slot4.infoIcon = slot5
		160	[  0]	TDUP 	  5		830	; slot5 = copy table#k830
		161	[  0]	TSETS	  5	4	840	; slot4.status = slot5
		162	[  0]	TDUP 	  5		829	; slot5 = copy table#k829
		163	[  0]	TSETS	  5	4	856	; slot4.slotText = slot5
		164	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
		165	[  0]	TDUP 	  4		827	; slot4 = copy table#k827
		166	[  0]	TDUP 	  5		828	; slot5 = copy table#k828
		167	[  0]	TSETS	  5	4	851	; slot4.icon = slot5
		168	[  0]	TDUP 	  5		826	; slot5 = copy table#k826
		169	[  0]	TSETS	  5	4	897	; slot4.name = slot5
		170	[  0]	TDUP 	  5		825	; slot5 = copy table#k825
		171	[  0]	TSETS	  5	4	848	; slot4.desc = slot5
		172	[  0]	TDUP 	  5		824	; slot5 = copy table#k824
		173	[  0]	TSETS	  5	4	846	; slot4.bar = slot5
		174	[  0]	TDUP 	  5		823	; slot5 = copy table#k823
		175	[  0]	TSETS	  5	4	844	; slot4.progText = slot5
		176	[  0]	TDUP 	  5		822	; slot5 = copy table#k822
		177	[  0]	TSETS	  5	4	860	; slot4.grade = slot5
		178	[  0]	TDUP 	  5		821	; slot5 = copy table#k821
		179	[  0]	TSETS	  5	4	891	; slot4.infoIcon = slot5
		180	[  0]	TDUP 	  5		820	; slot5 = copy table#k820
		181	[  0]	TSETS	  5	4	840	; slot4.status = slot5
		182	[  0]	TDUP 	  5		819	; slot5 = copy table#k819
		183	[  0]	TSETS	  5	4	856	; slot4.slotText = slot5
		184	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
		185	[  0]	TSETS	  3	2	818	; slot2.stoneQuestCards = slot3
		186	[  0]	TDUP 	  3		817	; slot3 = copy table#k817
		187	[  0]	TDUP 	  4		816	; slot4 = copy table#k816
		188	[  0]	TSETS	  4	3	961	; slot3.color = slot4
		189	[  0]	TSETS	  3	2	815	; slot2.bloom = slot3
		190	[  0]	TDUP 	  3		814	; slot3 = copy table#k814
		191	[  0]	TSETS	  3	2	813	; slot2.textColor = slot3
		192	[  0]	TSETS	  2	1	812	; slot1.promotionBar = slot2
		193	[  0]	TDUP 	  2		811	; slot2 = copy table#k811
		194	[  0]	TDUP 	  3		810	; slot3 = copy table#k810
		195	[  0]	TSETS	  3	2	809	; slot2.gainBg = slot3
		196	[  0]	TDUP 	  3		808	; slot3 = copy table#k808
		197	[  0]	TSETS	  3	2	807	; slot2.gainLabel = slot3
		198	[  0]	TDUP 	  3		806	; slot3 = copy table#k806
		199	[  0]	TSETS	  3	2	805	; slot2.cancelBtn = slot3
		200	[  0]	TDUP 	  3		804	; slot3 = copy table#k804
		201	[  0]	TSETS	  3	2	803	; slot2.cancelBtnWhenConvert = slot3
		202	[  0]	TDUP 	  3		802	; slot3 = copy table#k802
		203	[  0]	TSETS	  3	2	801	; slot2.convertBtn = slot3
		204	[  0]	TDUP 	  3		800	; slot3 = copy table#k800
		205	[  0]	TSETS	  3	2	799	; slot2.convertLabel = slot3
		206	[  0]	TDUP 	  3		798	; slot3 = copy table#k798
		207	[  0]	TSETS	  3	2	797	; slot2.cancelLabel = slot3
		208	[  0]	TSETS	  2	1	796	; slot1.preview = slot2
		209	[  0]	TSETS	  1	0	913	; slot0.imprintPanel = slot1
		210	[  0]	TDUP 	  1		794	; slot1 = copy table#k794
		211	[  0]	TSETS	  1	0	795	; slot0.cursor = slot1
		212	[  0]	FNEW 	  1		793	; N/A:0-0: 0 args, 1 upvalues, 16 slots
			
			;;;; constant tables ;;;;
			ktable#5 = [
				[priority] = 3,
				[kind] = vector,
				]
			
			
			ktable#7 = [
				[priority] = 3,
				[kind] = vector,
				]
			
			
			ktable#9 = [
				[priority] = 2,
				[kind] = vector,
				]
			
			
			ktable#11 = [
				[priority] = 2,
				[kind] = vector,
				]
			
			
			ktable#13 = [
				[priority] = 1,
				[kind] = bmfont,
				]
			
			
			ktable#14 = [
				]
			
			
			ktable#15 = [
				[priority] = 1,
				[kind] = bmfont,
				]
			
			
			ktable#16 = [
				#1: src/data/font,
				#2: data/font,
				#3: src/font,
				#4: font,
				]
			
			
			ktable#19 = [
				[priority] = 0,
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	TGETS	  0	0	31	; slot0 = uv0"unknown".resolve
			  3	[  0]	KSTR 	  2		30	; slot2 = "src/data/font/Galmuri9W.fnt"
			  4	[  0]	CALL 	  0	2	2	; slot0 = uv0"unknown".resolve(slot1)
			  5	[  0]	GGET 	  1		29	; slot1 = _env["love"]
			  6	[  0]	TGETS	  1	1	28	; slot1 = love.filesystem
			  7	[  0]	TGETS	  1	1	27	; slot1 = love.filesystem.getInfo
			  8	[  0]	MOV  	  3		0	; slot3 = slot0
			  9	[  0]	CALL 	  1	2	2	; slot1 = love.filesystem.getInfo(slot2)
			 10	[  0]	ISF  	   		1	; if not slot1
			 11	[  0]	JMP  	  2		21	; 	goto 33
			 12	[  0]	GGET 	  2		26	; slot2 = _env["tostring"]
			 13	[  0]	MOV  	  4		0	; slot4 = slot0
			 14	[  0]	CALL 	  2	2	2	; slot2 = tostring(slot3)
			 15	[  0]	MOV  	  4		2	; slot4 = slot2
			 16	[  0]	TGETS	  2	2	25	; slot2 = slot2.match
			 17	[  0]	KSTR 	  5		24	; slot5 = "(%.%a+)$"
			 18	[  0]	CALL 	  2	2	3	; slot2 = <unknown table>.match(slot3, slot4)
			 19	[  0]	ISF  	   		2	; if not slot2
			 20	[  0]	JMP  	  3		7	; 	goto 28
			 21	[  0]	MOV  	  5		2	; slot5 = slot2
			 22	[  0]	TGETS	  3	2	23	; slot3 = slot2.lower
			 23	[  0]	CALL 	  3	2	2	; slot3 = <unknown table>.lower(slot4)
			 24	[  0]	ISNES	  3		22	; if <unknown table>.lower ~= ".fnt"
			 25	[  0]	JMP  	  3		2	; 	goto 28
			 26	[  0]	KSTR 	  3		21	; slot3 = "bmfont"
			 27	[  0]	JMP  	  4		1	; 	goto 29
			 28	[  0]	KSTR 	  3		20	; slot3 = "vector"
			 29	[  0]	TDUP 	  4		19	; slot4 = copy table#k19
			 30	[  0]	TSETS	  0	4	18	; slot4.path = slot0
			 31	[  0]	TSETS	  3	4	17	; slot4.kind = slot3
			 32	[  0]	UCLO 	  0		35	; nil uvs >= r0; goto 68
			 33	[  0]	TDUP 	  2		16	; slot2 = copy table#k16
			 34	[  0]	TDUP 	  3		14	; slot3 = copy table#k14
			 35	[  0]	TDUP 	  4		15	; slot4 = copy table#k15
			 36	[  0]	TSETS	  4	3	22	; slot3..fnt = slot4
			 37	[  0]	TDUP 	  4		13	; slot4 = copy table#k13
			 38	[  0]	TSETS	  4	3	12	; slot3..FNT = slot4
			 39	[  0]	TDUP 	  4		11	; slot4 = copy table#k11
			 40	[  0]	TSETS	  4	3	10	; slot3..ttf = slot4
			 41	[  0]	TDUP 	  4		9	; slot4 = copy table#k9
			 42	[  0]	TSETS	  4	3	8	; slot3..TTF = slot4
			 43	[  0]	TDUP 	  4		7	; slot4 = copy table#k7
			 44	[  0]	TSETS	  4	3	6	; slot3..otf = slot4
			 45	[  0]	TDUP 	  4		5	; slot4 = copy table#k5
			 46	[  0]	TSETS	  4	3	4	; slot3..OTF = slot4
			 47	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
			 48	[  0]	KPRI 	  5		0	; slot5 = nil
			 49	[  0]	FNEW 	  6		3	; N/A:0-0: 2 args, 1 upvalues, 4 slots
				
				;;;; constant tables ;;;;
				ktable#1 = [
					]
				
				
				;;;; instructions ;;;;
				  1	[  0]	IST  	   		1	; if slot1
				  2	[  0]	JMP  	  2		1	; 	goto 4
				  3	[  0]	RET0 	  0		1	; return
				  4	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
				  5	[  0]	ISF  	   		2	; if not uv0"unknown"
				  6	[  0]	JMP  	  2		14	; 	goto 21
				  7	[  0]	TGETS	  2	1	3	; slot2 = slot1.priority
				  8	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
				  9	[  0]	TGETS	  3	3	3	; slot3 = uv0"unknown".priority
				 10	[  0]	ISLT 	  2		3	; if <unknown table>.priority < uv0"unknown".priority
				 11	[  0]	JMP  	  2		9	; 	goto 21
				 12	[  0]	TGETS	  2	1	3	; slot2 = slot1.priority
				 13	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
				 14	[  0]	TGETS	  3	3	3	; slot3 = uv0"unknown".priority
				 15	[  0]	ISNEV	  2		3	; if <unknown table>.priority ~= uv0"unknown".priority
				 16	[  0]	JMP  	  2		11	; 	goto 28
				 17	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
				 18	[  0]	TGETS	  2	2	2	; slot2 = uv0"unknown".path
				 19	[  0]	ISGE 	  0		2	; if slot0 >= uv0"unknown".path
				 20	[  0]	JMP  	  2		7	; 	goto 28
				 21	[  0]	TDUP 	  2		1	; slot2 = copy table#k1
				 22	[  0]	TSETS	  0	2	2	; slot2.path = slot0
				 23	[  0]	TGETS	  3	1	0	; slot3 = slot1.kind
				 24	[  0]	TSETS	  3	2	0	; slot2.kind = <unknown table>.kind
				 25	[  0]	TGETS	  3	1	3	; slot3 = slot1.priority
				 26	[  0]	TSETS	  3	2	3	; slot2.priority = <unknown table>.priority
				 27	[  0]	USETV	  0		2	; uv0"unknwon" = slot2
				 28	[  0]	RET0 	  0		1	; return
			 50	[  0]	FNEW 	  7		2	; N/A:0-0: 1 args, 4 upvalues, 15 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
				  2	[  0]	TGETV	  1	1	0	; slot1 = uv0"unknown"[slot0]
				  3	[  0]	ISF  	   		1	; if not slot1
				  4	[  0]	JMP  	  2		1	; 	goto 6
				  5	[  0]	RET0 	  0		1	; return
				  6	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
				  7	[  0]	KPRI 	  2		2	; slot2 = true
				  8	[  0]	TSETV	  2	1	0	; uv0"unknown"[slot0] = slot2
				  9	[  0]	GGET 	  1		12	; slot1 = _env["love"]
				 10	[  0]	TGETS	  1	1	11	; slot1 = love.filesystem
				 11	[  0]	TGETS	  1	1	10	; slot1 = love.filesystem.getInfo
				 12	[  0]	MOV  	  3		0	; slot3 = slot0
				 13	[  0]	KSTR 	  4		9	; slot4 = "directory"
				 14	[  0]	CALL 	  1	2	3	; slot1 = love.filesystem.getInfo(slot2, slot3)
				 15	[  0]	IST  	   		1	; if slot1
				 16	[  0]	JMP  	  2		1	; 	goto 18
				 17	[  0]	RET0 	  0		1	; return
				 18	[  0]	GGET 	  2		12	; slot2 = _env["love"]
				 19	[  0]	TGETS	  2	2	11	; slot2 = love.filesystem
				 20	[  0]	TGETS	  2	2	8	; slot2 = love.filesystem.getDirectoryItems
				 21	[  0]	MOV  	  4		0	; slot4 = slot0
				 22	[  0]	CALL 	  2	2	2	; slot2 = love.filesystem.getDirectoryItems(slot3)
				 23	[  0]	GGET 	  3		7	; slot3 = _env["table"]
				 24	[  0]	TGETS	  3	3	6	; slot3 = table.sort
				 25	[  0]	MOV  	  5		2	; slot5 = slot2
				 26	[  0]	CALL 	  3	1	2	;  = table.sort(slot4)
				 27	[  0]	GGET 	  3		5	; slot3 = _env["ipairs"]
				 28	[  0]	MOV  	  5		2	; slot5 = slot2
				 29	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
				 30	[  0]	JMP  	  6		30	; 	goto 61
				 31	[  0]	MOV  	  8		0	; slot8 = slot0
				 32	[  0]	KSTR 	  9		4	; slot9 = "/"
				 33	[  0]	MOV  	 10		7	; slot10 = slot7
				 34	[  0]	CAT  	  8	8	10	; slot8 = slot8 .. slot9 .. slot10
				 35	[  0]	GGET 	  9		12	; slot9 = _env["love"]
				 36	[  0]	TGETS	  9	9	11	; slot9 = love.filesystem
				 37	[  0]	TGETS	  9	9	10	; slot9 = love.filesystem.getInfo
				 38	[  0]	MOV  	 11		8	; slot11 = slot8
				 39	[  0]	CALL 	  9	2	2	; slot9 = love.filesystem.getInfo(slot10)
				 40	[  0]	ISF  	   		9	; if not love.filesystem.getInfo
				 41	[  0]	JMP  	 10		19	; 	goto 61
				 42	[  0]	TGETS	 10	9	3	; slot10 = love.filesystem.getInfo.type
				 43	[  0]	ISNES	 10		2	; if love.filesystem.getInfo.type ~= "file"
				 44	[  0]	JMP  	 10		10	; 	goto 55
				 45	[  0]	MOV  	 12		7	; slot12 = slot7
				 46	[  0]	TGETS	 10	7	1	; slot10 = slot7.match
				 47	[  0]	KSTR 	 13		0	; slot13 = "(%.%a+)$"
				 48	[  0]	CALL 	 10	2	3	; slot10 = <unknown table>.match(slot11, slot12)
				 49	[  0]	UGET 	 11		1	; slot11 = uv1"unknwon"
				 50	[  0]	MOV  	 13		8	; slot13 = slot8
				 51	[  0]	UGET 	 14		2	; slot14 = uv2"unknwon"
				 52	[  0]	TGETV	 14	14	10	; slot14 = uv2"unknown"[<unknown table>.match]
				 53	[  0]	CALL 	 11	1	3	;  = uv1"unknown"(slot12, slot13)
				 54	[  0]	JMP  	 10		6	; 	goto 61
				 55	[  0]	TGETS	 10	9	3	; slot10 = love.filesystem.getInfo.type
				 56	[  0]	ISNES	 10		9	; if love.filesystem.getInfo.type ~= "directory"
				 57	[  0]	JMP  	 10		3	; 	goto 61
				 58	[  0]	UGET 	 10		3	; slot10 = uv3"unknwon"
				 59	[  0]	MOV  	 12		8	; slot12 = slot8
				 60	[  0]	CALL 	 10	1	2	;  = uv3"unknown"(uv1"unknown")
				 61	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, slot5; slot6, slot7 = ipairs(slot4, slot5)
				 62	[  0]	ITERL	  6		-32	; slot5 = slot6; if slot6 != nil goto 31
				 63	[  0]	RET0 	  0		1	; return
			 51	[  0]	GGET 	  8		1	; slot8 = _env["ipairs"]
			 52	[  0]	MOV  	 10		2	; slot10 = slot2
			 53	[  0]	CALL 	  8	4	2	; slot8, slot9, slot10 = ipairs(slot9)
			 54	[  0]	JMP  	 11		9	; 	goto 64
			 55	[  0]	MOV  	 13		7	; slot13 = slot7
			 56	[  0]	MOV  	 15		12	; slot15 = slot12
			 57	[  0]	CALL 	 13	1	2	;  = slot13(slot14)
			 58	[  0]	ISF  	   		5	; if not slot5
			 59	[  0]	JMP  	 13		4	; 	goto 64
			 60	[  0]	TGETS	 13	5	0	; slot13 = slot5.priority
			 61	[  0]	ISNEN	 13		0	; if <unknown table>.priority ~= 1
			 62	[  0]	JMP  	 13		1	; 	goto 64
			 63	[  0]	JMP  	  8		2	; 	goto 66
			 64	[  0]	ITERC	 11	3	3	; slot11, slot12, slot13 = ipairs, slot9, slot10; slot11, slot12 = ipairs(slot9, slot10)
			 65	[  0]	ITERL	 11		-11	; slot10 = slot11; if slot11 != nil goto 55
			 66	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 67
			 67	[  0]	RET1 	  5		2	; return slot5
			 68	[  0]	RET1 	  4		2	; return slot4
		213	[  0]	FNEW 	  2		792	; N/A:0-0: 1 args, 2 upvalues, 12 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  1		25	; slot1 = _env["type"]
			  2	[  0]	MOV  	  3		0	; slot3 = slot0
			  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
			  4	[  0]	ISNES	  1		24	; if slot1 ~= "string"
			  5	[  0]	JMP  	  1		2	; 	goto 8
			  6	[  0]	ISNES	  0		23	; if slot0 ~= ""
			  7	[  0]	JMP  	  1		3	; 	goto 11
			  8	[  0]	KPRI 	  1		0	; slot1 = nil
			  9	[  0]	KSTR 	  2		22	; slot2 = "missing font path"
			 10	[  0]	RET  	  1		3	; return slot1, slot2
			 11	[  0]	MOV  	  3		0	; slot3 = slot0
			 12	[  0]	TGETS	  1	0	21	; slot1 = slot0.lower
			 13	[  0]	CALL 	  1	2	2	; slot1 = <unknown table>.lower(slot2)
			 14	[  0]	MOV  	  3		1	; slot3 = slot1
			 15	[  0]	TGETS	  1	1	20	; slot1 = slot1.match
			 16	[  0]	KSTR 	  4		19	; slot4 = "%.ttf$"
			 17	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.match(slot2, slot3)
			 18	[  0]	IST  	   		1	; if slot1
			 19	[  0]	JMP  	  2		9	; 	goto 29
			 20	[  0]	MOV  	  3		0	; slot3 = slot0
			 21	[  0]	TGETS	  1	0	21	; slot1 = slot0.lower
			 22	[  0]	CALL 	  1	2	2	; slot1 = <unknown table>.lower(slot2)
			 23	[  0]	MOV  	  3		1	; slot3 = slot1
			 24	[  0]	TGETS	  1	1	20	; slot1 = slot1.match
			 25	[  0]	KSTR 	  4		18	; slot4 = "%.otf$"
			 26	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.match(slot2, slot3)
			 27	[  0]	ISF  	   		1	; if not slot1
			 28	[  0]	JMP  	  2		13	; 	goto 42
			 29	[  0]	GGET 	  1		17	; slot1 = _env["love"]
			 30	[  0]	TGETS	  1	1	16	; slot1 = love.graphics
			 31	[  0]	TGETS	  1	1	15	; slot1 = love.graphics.newFont
			 32	[  0]	MOV  	  3		0	; slot3 = slot0
			 33	[  0]	KSHORT	  4		10	; slot4 = 10
			 34	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
			 35	[  0]	CALL 	  1	2	4	; slot1 = love.graphics.newFont(slot2, slot3, slot4)
			 36	[  0]	MOV  	  4		1	; slot4 = slot1
			 37	[  0]	TGETS	  2	1	14	; slot2 = slot1.setFilter
			 38	[  0]	KSTR 	  5		13	; slot5 = "nearest"
			 39	[  0]	KSTR 	  6		13	; slot6 = "nearest"
			 40	[  0]	CALL 	  2	1	4	;  = <unknown table>.setFilter(slot3, slot4, slot5)
			 41	[  0]	RET1 	  1		2	; return slot1
			 42	[  0]	GGET 	  1		17	; slot1 = _env["love"]
			 43	[  0]	TGETS	  1	1	12	; slot1 = love.filesystem
			 44	[  0]	TGETS	  1	1	11	; slot1 = love.filesystem.read
			 45	[  0]	MOV  	  3		0	; slot3 = slot0
			 46	[  0]	CALL 	  1	3	2	; slot1, slot2 = love.filesystem.read(slot2)
			 47	[  0]	IST  	   		1	; if slot1
			 48	[  0]	JMP  	  3		3	; 	goto 52
			 49	[  0]	KPRI 	  3		0	; slot3 = nil
			 50	[  0]	MOV  	  4		2	; slot4 = slot2
			 51	[  0]	RET  	  3		3	; return slot3, slot4
			 52	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
			 53	[  0]	MOV  	  6		1	; slot6 = slot1
			 54	[  0]	TGETS	  4	1	10	; slot4 = slot1.gmatch
			 55	[  0]	KSTR 	  7		9	; slot7 = "([^
			]+)"
			 56	[  0]	CALL 	  4	4	3	; slot4, slot5, slot6 = <unknown table>.gmatch(slot5, slot6)
			 57	[  0]	JMP  	  7		11	; 	goto 69
			 58	[  0]	MOV  	 10		7	; slot10 = slot7
			 59	[  0]	TGETS	  8	7	20	; slot8 = slot7.match
			 60	[  0]	KSTR 	 11		8	; slot11 = "^%s*#"
			 61	[  0]	CALL 	  8	2	3	; slot8 = <unknown table>.match(slot9, slot10)
			 62	[  0]	IST  	   		8	; if <unknown table>.match
			 63	[  0]	JMP  	  8		5	; 	goto 69
			 64	[  0]	GGET 	  8		7	; slot8 = _env["table"]
			 65	[  0]	TGETS	  8	8	6	; slot8 = table.insert
			 66	[  0]	MOV  	 10		3	; slot10 = slot3
			 67	[  0]	MOV  	 11		7	; slot11 = slot7
			 68	[  0]	CALL 	  8	1	3	;  = table.insert(slot9, slot10)
			 69	[  0]	ITERC	  7	2	3	; slot7, slot8, slot9 = <unknown table>.gmatch, slot5, slot6; slot7 = <unknown table>.gmatch(slot5, slot6)
			 70	[  0]	ITERL	  7		-13	; slot6 = slot7; if slot7 != nil goto 58
			 71	[  0]	GGET 	  4		7	; slot4 = _env["table"]
			 72	[  0]	TGETS	  4	4	5	; slot4 = table.concat
			 73	[  0]	MOV  	  6		3	; slot6 = slot3
			 74	[  0]	KSTR 	  7		4	; slot7 = "
			"
			 75	[  0]	CALL 	  4	2	3	; slot4 = table.concat(slot5, slot6)
			 76	[  0]	ISNES	  4		23	; if table.concat ~= ""
			 77	[  0]	JMP  	  5		3	; 	goto 81
			 78	[  0]	KPRI 	  5		0	; slot5 = nil
			 79	[  0]	KSTR 	  6		3	; slot6 = "empty font data"
			 80	[  0]	RET  	  5		3	; return slot5, slot6
			 81	[  0]	MOV  	  7		4	; slot7 = table.concat
			 82	[  0]	TGETS	  5	4	20	; slot5 = table.concat.match
			 83	[  0]	KSTR 	  8		2	; slot8 = "
			$"
			 84	[  0]	CALL 	  5	2	3	; slot5 = table.concat.match(slot6, table.concat)
			 85	[  0]	IST  	   		5	; if table.concat.match
			 86	[  0]	JMP  	  5		3	; 	goto 90
			 87	[  0]	MOV  	  5		4	; slot5 = table.concat
			 88	[  0]	KSTR 	  6		4	; slot6 = "
			"
			 89	[  0]	CAT  	  4	5	6	; slot4 = table.concat .. slot6
			 90	[  0]	GGET 	  5		17	; slot5 = _env["love"]
			 91	[  0]	TGETS	  5	5	12	; slot5 = love.filesystem
			 92	[  0]	TGETS	  5	5	1	; slot5 = love.filesystem.newFileData
			 93	[  0]	MOV  	  7		4	; slot7 = slot4
			 94	[  0]	MOV  	  8		0	; slot8 = slot0
			 95	[  0]	CALL 	  5	2	3	; slot5 = love.filesystem.newFileData(slot6, slot7)
			 96	[  0]	GGET 	  6		17	; slot6 = _env["love"]
			 97	[  0]	TGETS	  6	6	16	; slot6 = love.graphics
			 98	[  0]	TGETS	  6	6	15	; slot6 = love.graphics.newFont
			 99	[  0]	MOV  	  8		5	; slot8 = love.filesystem.newFileData
			100	[  0]	CALL 	  6	2	2	; slot6 = love.graphics.newFont(slot7)
			101	[  0]	MOV  	  9		6	; slot9 = love.graphics.newFont
			102	[  0]	TGETS	  7	6	14	; slot7 = love.graphics.newFont.setFilter
			103	[  0]	KSTR 	 10		13	; slot10 = "nearest"
			104	[  0]	KSTR 	 11		13	; slot11 = "nearest"
			105	[  0]	CALL 	  7	1	4	;  = love.graphics.newFont.setFilter(love.filesystem.newFileData, love.graphics.newFont, slot10)
			106	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
			107	[  0]	TGETS	  7	7	0	; slot7 = uv1"unknown".attachFallbacks
			108	[  0]	MOV  	  9		6	; slot9 = love.graphics.newFont
			109	[  0]	MOV  	 10		0	; slot10 = slot0
			110	[  0]	CALLT	  7		3	; return uv1"unknown".attachFallbacks(love.filesystem.newFileData, love.graphics.newFont)
		214	[  0]	FNEW 	  3		791	; N/A:0-0: 2 args, 2 upvalues, 9 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  2		12	; slot2 = _env["love"]
			  2	[  0]	TGETS	  2	2	11	; slot2 = love.filesystem
			  3	[  0]	TGETS	  2	2	10	; slot2 = love.filesystem.getInfo
			  4	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			  5	[  0]	CALL 	  2	2	2	; slot2 = love.filesystem.getInfo(slot3)
			  6	[  0]	IST  	   		2	; if slot2
			  7	[  0]	JMP  	  2		3	; 	goto 11
			  8	[  0]	KPRI 	  2		0	; slot2 = nil
			  9	[  0]	KSTR 	  3		9	; slot3 = "missing Chinese font"
			 10	[  0]	RET  	  2		3	; return slot2, slot3
			 11	[  0]	GGET 	  2		8	; slot2 = _env["pcall"]
			 12	[  0]	GGET 	  4		12	; slot4 = _env["love"]
			 13	[  0]	TGETS	  4	4	7	; slot4 = love.graphics
			 14	[  0]	TGETS	  4	4	6	; slot4 = love.graphics.newFont
			 15	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
			 16	[  0]	ISTC 	  6		0	; slot6 = slot0; if slot0
			 17	[  0]	JMP  	  6		1	; 	goto 19
			 18	[  0]	KSHORT	  6		10	; slot6 = 10
			 19	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
			 20	[  0]	CALL 	  2	3	5	; slot2, slot3 = pcall(slot3, love.graphics.newFont, uv0"unknown", slot6)
			 21	[  0]	ISF  	   		2	; if not slot2
			 22	[  0]	JMP  	  4		2	; 	goto 25
			 23	[  0]	IST  	   		3	; if slot3
			 24	[  0]	JMP  	  4		7	; 	goto 32
			 25	[  0]	KPRI 	  4		0	; slot4 = nil
			 26	[  0]	GGET 	  5		5	; slot5 = _env["tostring"]
			 27	[  0]	ISTC 	  7		3	; slot7 = slot3; if slot3
			 28	[  0]	JMP  	  7		1	; 	goto 30
			 29	[  0]	KSTR 	  7		4	; slot7 = "Chinese font load failed"
			 30	[  0]	CALL 	  5	0	2	; MULTRES = tostring(slot6)
			 31	[  0]	RETM 	  4		1	; return , ...MULTRES
			 32	[  0]	MOV  	  6		3	; slot6 = slot3
			 33	[  0]	TGETS	  4	3	3	; slot4 = slot3.setFilter
			 34	[  0]	KSTR 	  7		2	; slot7 = "nearest"
			 35	[  0]	KSTR 	  8		2	; slot8 = "nearest"
			 36	[  0]	CALL 	  4	1	4	;  = <unknown table>.setFilter(tostring, slot6, slot7)
			 37	[  0]	ISF  	   		1	; if not slot1
			 38	[  0]	JMP  	  4		8	; 	goto 47
			 39	[  0]	GGET 	  4		1	; slot4 = _env["_G"]
			 40	[  0]	TGETS	  4	4	0	; slot4 = _G.registerChineseShadowFont
			 41	[  0]	ISF  	   		4	; if not _G.registerChineseShadowFont
			 42	[  0]	JMP  	  5		4	; 	goto 47
			 43	[  0]	GGET 	  4		1	; slot4 = _env["_G"]
			 44	[  0]	TGETS	  4	4	0	; slot4 = _G.registerChineseShadowFont
			 45	[  0]	MOV  	  6		3	; slot6 = slot3
			 46	[  0]	CALL 	  4	1	2	;  = _G.registerChineseShadowFont(tostring)
			 47	[  0]	RET1 	  3		2	; return slot3
		215	[  0]	MOV  	  4		1	; slot4 = slot1
		216	[  0]	CALL 	  4	2	1	; slot4 = slot4()
		217	[  0]	TSETS	  4	0	790	; slot0.fontInfo = slot4
		218	[  0]	ISF  	   		4	; if not slot4
		219	[  0]	JMP  	  5		3	; 	goto 223
		220	[  0]	TGETS	  5	4	788	; slot5 = slot4.path
		221	[  0]	IST  	   		5	; if <unknown table>.path
		222	[  0]	JMP  	  6		1	; 	goto 224
		223	[  0]	KPRI 	  5		0	; slot5 = nil
		224	[  0]	TSETS	  5	0	789	; slot0.fontPath = slot5
		225	[  0]	ISF  	   		4	; if not slot4
		226	[  0]	JMP  	  5		3	; 	goto 230
		227	[  0]	TGETS	  5	4	786	; slot5 = slot4.kind
		228	[  0]	IST  	   		5	; if <unknown table>.kind
		229	[  0]	JMP  	  6		1	; 	goto 231
		230	[  0]	KSTR 	  5		785	; slot5 = "builtin"
		231	[  0]	TSETS	  5	0	787	; slot0.fontKind = slot5
		232	[  0]	KSHORT	  5		1	; slot5 = 1
		233	[  0]	TSETS	  5	0	784	; slot0.fontScale = slot5
		234	[  0]	KSHORT	  5		1	; slot5 = 1
		235	[  0]	TSETS	  5	0	783	; slot0.fontTitleScale = slot5
		236	[  0]	GGET 	  5		782	; slot5 = _env["math"]
		237	[  0]	TGETS	  5	5	781	; slot5 = math.max
		238	[  0]	KSHORT	  7		1	; slot7 = 1
		239	[  0]	GGET 	  8		782	; slot8 = _env["math"]
		240	[  0]	TGETS	  8	8	780	; slot8 = math.floor
		241	[  0]	TGETS	 10	0	969	; slot10 = slot0.scale
		242	[  0]	MULNV	 10	10	1	; slot10 = 18 * <unknown table>.scale
		243	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		244	[  0]	CALLM	  5	2	1	; slot5 = math.max(slot6, ...MULTRES)
		245	[  0]	GGET 	  6		782	; slot6 = _env["math"]
		246	[  0]	TGETS	  6	6	781	; slot6 = math.max
		247	[  0]	KSHORT	  8		1	; slot8 = 1
		248	[  0]	GGET 	  9		782	; slot9 = _env["math"]
		249	[  0]	TGETS	  9	9	780	; slot9 = math.floor
		250	[  0]	TGETS	 11	0	969	; slot11 = slot0.scale
		251	[  0]	MULNV	 11	11	2	; slot11 = 28 * <unknown table>.scale
		252	[  0]	CALL 	  9	0	2	; MULTRES = math.floor(slot10)
		253	[  0]	CALLM	  6	2	1	; slot6 = math.max(slot7, ...MULTRES)
		254	[  0]	TDUP 	  7		778	; slot7 = copy table#k778
		255	[  0]	TSETS	  7	0	779	; slot0.gameOver = slot7
		256	[  0]	ISF  	   		4	; if not slot4
		257	[  0]	JMP  	  7		52	; 	goto 310
		258	[  0]	TGETS	  7	4	786	; slot7 = slot4.kind
		259	[  0]	ISNES	  7		777	; if <unknown table>.kind ~= "bmfont"
		260	[  0]	JMP  	  7		49	; 	goto 310
		261	[  0]	GGET 	  7		776	; slot7 = _env["pcall"]
		262	[  0]	MOV  	  9		2	; slot9 = slot2
		263	[  0]	TGETS	 10	4	788	; slot10 = slot4.path
		264	[  0]	CALL 	  7	4	3	; slot7, slot8, slot9 = pcall(slot8, slot9)
		265	[  0]	IST  	   		7	; if pcall
		266	[  0]	JMP  	 10		7	; 	goto 274
		267	[  0]	KPRI 	  8		0	; slot8 = nil
		268	[  0]	GGET 	 10		775	; slot10 = _env["tostring"]
		269	[  0]	ISTC 	 12		8	; slot12 = slot8; if slot8
		270	[  0]	JMP  	 12		1	; 	goto 272
		271	[  0]	KSTR 	 12		774	; slot12 = "bitmap font load failure"
		272	[  0]	CALL 	 10	2	2	; slot10 = tostring(slot11)
		273	[  0]	MOV  	  9		10	; slot9 = tostring
		274	[  0]	ISF  	   		8	; if not slot8
		275	[  0]	JMP  	 10		28	; 	goto 304
		276	[  0]	GGET 	 10		773	; slot10 = _env["type"]
		277	[  0]	MOV  	 12		8	; slot12 = slot8
		278	[  0]	CALL 	 10	2	2	; slot10 = type(slot11)
		279	[  0]	ISEQS	 10		772	; if type == "function"
		280	[  0]	JMP  	 10		23	; 	goto 304
		281	[  0]	TGETS	 10	8	771	; slot10 = slot8.getHeight
		282	[  0]	ISF  	   		10	; if not <unknown table>.getHeight
		283	[  0]	JMP  	 11		20	; 	goto 304
		284	[  0]	TSETS	  8	0	770	; slot0.font = slot8
		285	[  0]	TSETS	  8	0	769	; slot0.fontTitle = slot8
		286	[  0]	GGET 	 10		782	; slot10 = _env["math"]
		287	[  0]	TGETS	 10	10	781	; slot10 = math.max
		288	[  0]	KSHORT	 12		1	; slot12 = 1
		289	[  0]	MOV  	 15		8	; slot15 = slot8
		290	[  0]	TGETS	 13	8	771	; slot13 = slot8.getHeight
		291	[  0]	CALL 	 13	0	2	; MULTRES = <unknown table>.getHeight(slot14)
		292	[  0]	CALLM	 10	2	1	; slot10 = math.max(slot11, ...MULTRES)
		293	[  0]	FNEW 	 11		768	; N/A:0-0: 1 args, 1 upvalues, 8 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	KSHORT	  1		0	; slot1 = 0
			  2	[  0]	ISGT 	  0		1	; if slot0 > slot1
			  3	[  0]	JMP  	  1		2	; 	goto 6
			  4	[  0]	KSHORT	  1		1	; slot1 = 1
			  5	[  0]	RET1 	  1		2	; return slot1
			  6	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  7	[  0]	DIVVV	  1	0	1	; slot1 = slot0 / uv0"unknown"
			  8	[  0]	GGET 	  2		2	; slot2 = _env["math"]
			  9	[  0]	TGETS	  2	2	1	; slot2 = math.max
			 10	[  0]	KSHORT	  4		1	; slot4 = 1
			 11	[  0]	GGET 	  5		2	; slot5 = _env["math"]
			 12	[  0]	TGETS	  5	5	0	; slot5 = math.floor
			 13	[  0]	ADDVN	  7	1	0	; slot7 = slot1 + 0.5
			 14	[  0]	CALL 	  5	0	2	; MULTRES = math.floor(slot6)
			 15	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
			 16	[  0]	RET1 	  2		2	; return math.max
		294	[  0]	MOV  	 12		11	; slot12 = slot11
		295	[  0]	MOV  	 14		5	; slot14 = math.max
		296	[  0]	CALL 	 12	2	2	; slot12 = slot12(<unknown table>.getHeight)
		297	[  0]	TSETS	 12	0	784	; slot0.fontScale = slot12
		298	[  0]	MOV  	 12		11	; slot12 = slot11
		299	[  0]	MOV  	 14		6	; slot14 = math.max
		300	[  0]	CALL 	 12	2	2	; slot12 = slot12(<unknown table>.getHeight)
		301	[  0]	TSETS	 12	0	783	; slot0.fontTitleScale = slot12
		302	[  0]	TSETS	 10	0	767	; slot0.fontBaseLineHeight = math.max
		303	[  0]	UCLO 	 10		6	; nil uvs >= r10; goto 310
		304	[  0]	KSTR 	 10		766	; slot10 = "vector"
		305	[  0]	TSETS	 10	0	787	; slot0.fontKind = slot10
		306	[  0]	ISTC 	 10		9	; slot10 = tostring; if tostring
		307	[  0]	JMP  	 10		1	; 	goto 309
		308	[  0]	KSTR 	 10		764	; slot10 = "unknown bitmap font load failure"
		309	[  0]	TSETS	 10	0	765	; slot0.fontError = slot10
		310	[  0]	TGETS	  7	0	770	; slot7 = slot0.font
		311	[  0]	ISF  	   		7	; if not <unknown table>.font
		312	[  0]	JMP  	  7		3	; 	goto 316
		313	[  0]	TGETS	  7	0	769	; slot7 = slot0.fontTitle
		314	[  0]	IST  	   		7	; if <unknown table>.fontTitle
		315	[  0]	JMP  	  7		9	; 	goto 325
		316	[  0]	FNEW 	  7		763	; N/A:0-0: 1 args, 2 upvalues, 9 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	KPRI 	  1		0	; slot1 = nil
			  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  3	[  0]	ISF  	   		2	; if not uv0"unknown"
			  4	[  0]	JMP  	  3		48	; 	goto 53
			  5	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  6	[  0]	TGETS	  2	2	14	; slot2 = uv0"unknown".path
			  7	[  0]	ISF  	   		2	; if not uv0"unknown".path
			  8	[  0]	JMP  	  3		44	; 	goto 53
			  9	[  0]	GGET 	  2		13	; slot2 = _env["tostring"]
			 10	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			 11	[  0]	TGETS	  4	4	14	; slot4 = uv0"unknown".path
			 12	[  0]	CALL 	  2	2	2	; slot2 = tostring(slot3)
			 13	[  0]	MOV  	  4		2	; slot4 = slot2
			 14	[  0]	TGETS	  2	2	12	; slot2 = slot2.lower
			 15	[  0]	CALL 	  2	2	2	; slot2 = <unknown table>.lower(slot3)
			 16	[  0]	MOV  	  4		2	; slot4 = slot2
			 17	[  0]	TGETS	  2	2	11	; slot2 = slot2.find
			 18	[  0]	KSTR 	  5		10	; slot5 = "arkpixel10%.ttf"
			 19	[  0]	KSHORT	  6		1	; slot6 = 1
			 20	[  0]	CALL 	  2	2	4	; slot2 = <unknown table>.find(slot3, slot4, slot5)
			 21	[  0]	ISNEP	  2		0	; if slot2 ~= nil
			 22	[  0]	JMP  	  2		2	; 	goto 25
			 23	[  0]	KPRI 	  2		1	; slot2 = false
			 24	[  0]	JMP  	  3		1	; 	goto 26
			 25	[  0]	KPRI 	  2		2	; slot2 = true
			 26	[  0]	GGET 	  3		9	; slot3 = _env["pcall"]
			 27	[  0]	GGET 	  5		8	; slot5 = _env["love"]
			 28	[  0]	TGETS	  5	5	7	; slot5 = love.graphics
			 29	[  0]	TGETS	  5	5	6	; slot5 = love.graphics.newFont
			 30	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
			 31	[  0]	TGETS	  6	6	14	; slot6 = uv0"unknown".path
			 32	[  0]	MOV  	  7		0	; slot7 = slot0
			 33	[  0]	ISF  	   		2	; if not slot2
			 34	[  0]	JMP  	  8		3	; 	goto 38
			 35	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
			 36	[  0]	IST  	   		8	; if uv1"unknown"
			 37	[  0]	JMP  	  9		1	; 	goto 39
			 38	[  0]	KSTR 	  8		5	; slot8 = "normal"
			 39	[  0]	CALL 	  3	3	5	; slot3, slot4 = pcall(slot4, love.graphics.newFont, uv0"unknown".path, slot7)
			 40	[  0]	ISF  	   		3	; if not slot3
			 41	[  0]	JMP  	  5		11	; 	goto 53
			 42	[  0]	ISF  	   		4	; if not slot4
			 43	[  0]	JMP  	  5		9	; 	goto 53
			 44	[  0]	GGET 	  5		4	; slot5 = _env["type"]
			 45	[  0]	MOV  	  7		4	; slot7 = slot4
			 46	[  0]	CALL 	  5	2	2	; slot5 = type(uv0"unknown".path)
			 47	[  0]	ISEQS	  5		3	; if type == "function"
			 48	[  0]	JMP  	  5		4	; 	goto 53
			 49	[  0]	TGETS	  5	4	2	; slot5 = slot4.setFilter
			 50	[  0]	ISF  	   		5	; if not <unknown table>.setFilter
			 51	[  0]	JMP  	  6		1	; 	goto 53
			 52	[  0]	MOV  	  1		4	; slot1 = slot4
			 53	[  0]	IST  	   		1	; if slot1
			 54	[  0]	JMP  	  2		6	; 	goto 61
			 55	[  0]	GGET 	  2		8	; slot2 = _env["love"]
			 56	[  0]	TGETS	  2	2	7	; slot2 = love.graphics
			 57	[  0]	TGETS	  2	2	6	; slot2 = love.graphics.newFont
			 58	[  0]	MOV  	  4		0	; slot4 = slot0
			 59	[  0]	CALL 	  2	2	2	; slot2 = love.graphics.newFont(slot3)
			 60	[  0]	MOV  	  1		2	; slot1 = slot2
			 61	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			 62	[  0]	ISF  	   		2	; if not uv0"unknown"
			 63	[  0]	JMP  	  3		24	; 	goto 88
			 64	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			 65	[  0]	TGETS	  2	2	14	; slot2 = uv0"unknown".path
			 66	[  0]	ISF  	   		2	; if not uv0"unknown".path
			 67	[  0]	JMP  	  3		20	; 	goto 88
			 68	[  0]	GGET 	  2		13	; slot2 = _env["tostring"]
			 69	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			 70	[  0]	TGETS	  4	4	14	; slot4 = uv0"unknown".path
			 71	[  0]	CALL 	  2	2	2	; slot2 = tostring(slot3)
			 72	[  0]	MOV  	  4		2	; slot4 = slot2
			 73	[  0]	TGETS	  2	2	12	; slot2 = slot2.lower
			 74	[  0]	CALL 	  2	2	2	; slot2 = <unknown table>.lower(slot3)
			 75	[  0]	MOV  	  4		2	; slot4 = slot2
			 76	[  0]	TGETS	  2	2	11	; slot2 = slot2.find
			 77	[  0]	KSTR 	  5		10	; slot5 = "arkpixel10%.ttf"
			 78	[  0]	KSHORT	  6		1	; slot6 = 1
			 79	[  0]	CALL 	  2	2	4	; slot2 = <unknown table>.find(slot3, slot4, slot5)
			 80	[  0]	ISF  	   		2	; if not slot2
			 81	[  0]	JMP  	  3		6	; 	goto 88
			 82	[  0]	MOV  	  4		1	; slot4 = slot1
			 83	[  0]	TGETS	  2	1	2	; slot2 = slot1.setFilter
			 84	[  0]	KSTR 	  5		1	; slot5 = "nearest"
			 85	[  0]	KSTR 	  6		1	; slot6 = "nearest"
			 86	[  0]	CALL 	  2	1	4	;  = <unknown table>.setFilter(slot3, slot4, slot5)
			 87	[  0]	JMP  	  2		5	; 	goto 93
			 88	[  0]	MOV  	  4		1	; slot4 = slot1
			 89	[  0]	TGETS	  2	1	2	; slot2 = slot1.setFilter
			 90	[  0]	KSTR 	  5		0	; slot5 = "linear"
			 91	[  0]	KSTR 	  6		0	; slot6 = "linear"
			 92	[  0]	CALL 	  2	1	4	;  = <unknown table>.setFilter(slot3, slot4, slot5)
			 93	[  0]	RET1 	  1		2	; return slot1
		317	[  0]	MOV  	  8		7	; slot8 = slot7
		318	[  0]	MOV  	 10		6	; slot10 = math.max
		319	[  0]	CALL 	  8	2	2	; slot8 = slot8(tostring)
		320	[  0]	TSETS	  8	0	769	; slot0.fontTitle = slot8
		321	[  0]	MOV  	  8		7	; slot8 = slot7
		322	[  0]	MOV  	 10		5	; slot10 = math.max
		323	[  0]	CALL 	  8	2	2	; slot8 = slot8(tostring)
		324	[  0]	TSETS	  8	0	770	; slot0.font = slot8
		325	[  0]	KPRI 	  7		0	; slot7 = nil
		326	[  0]	TSETS	  7	0	762	; slot0.fontBattlefieldTitle = slot7
		327	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		328	[  0]	TGETS	  7	7	761	; slot7 = uv0"unknown".resolve
		329	[  0]	KSTR 	  9		760	; slot9 = "src/data/font/Galmuri9W.fnt"
		330	[  0]	CALL 	  7	2	2	; slot7 = uv0"unknown".resolve(slot8)
		331	[  0]	GGET 	  8		759	; slot8 = _env["love"]
		332	[  0]	TGETS	  8	8	758	; slot8 = love.filesystem
		333	[  0]	TGETS	  8	8	757	; slot8 = love.filesystem.getInfo
		334	[  0]	MOV  	 10		7	; slot10 = uv0"unknown".resolve
		335	[  0]	CALL 	  8	2	2	; slot8 = love.filesystem.getInfo(slot9)
		336	[  0]	ISF  	   		8	; if not love.filesystem.getInfo
		337	[  0]	JMP  	  9		9	; 	goto 347
		338	[  0]	GGET 	  9		776	; slot9 = _env["pcall"]
		339	[  0]	MOV  	 11		2	; slot11 = slot2
		340	[  0]	MOV  	 12		7	; slot12 = uv0"unknown".resolve
		341	[  0]	CALL 	  9	3	3	; slot9, slot10 = pcall(uv0"unknown".resolve, slot11)
		342	[  0]	ISF  	   		9	; if not pcall
		343	[  0]	JMP  	 11		3	; 	goto 347
		344	[  0]	ISF  	   		10	; if not uv0"unknown".resolve
		345	[  0]	JMP  	 11		1	; 	goto 347
		346	[  0]	TSETS	 10	0	762	; slot0.fontBattlefieldTitle = uv0"unknown".resolve
		347	[  0]	TGETS	  7	0	762	; slot7 = slot0.fontBattlefieldTitle
		348	[  0]	IST  	   		7	; if <unknown table>.fontBattlefieldTitle
		349	[  0]	JMP  	  8		1	; 	goto 351
		350	[  0]	TGETS	  7	0	769	; slot7 = slot0.fontTitle
		351	[  0]	TSETS	  7	0	756	; slot0.fontPauseTitle = <unknown table>.fontTitle
		352	[  0]	KPRI 	  7		0	; slot7 = nil
		353	[  0]	TSETS	  7	0	755	; slot0.fontStageSelectTitle = slot7
		354	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		355	[  0]	TGETS	  7	7	761	; slot7 = uv0"unknown".resolve
		356	[  0]	KSTR 	  9		760	; slot9 = "src/data/font/Galmuri9W.fnt"
		357	[  0]	CALL 	  7	2	2	; slot7 = uv0"unknown".resolve(love.filesystem.getInfo)
		358	[  0]	GGET 	  8		759	; slot8 = _env["love"]
		359	[  0]	TGETS	  8	8	758	; slot8 = love.filesystem
		360	[  0]	TGETS	  8	8	757	; slot8 = love.filesystem.getInfo
		361	[  0]	MOV  	 10		7	; slot10 = uv0"unknown".resolve
		362	[  0]	CALL 	  8	2	2	; slot8 = love.filesystem.getInfo(slot9)
		363	[  0]	ISF  	   		8	; if not love.filesystem.getInfo
		364	[  0]	JMP  	  9		9	; 	goto 374
		365	[  0]	GGET 	  9		776	; slot9 = _env["pcall"]
		366	[  0]	MOV  	 11		2	; slot11 = slot2
		367	[  0]	MOV  	 12		7	; slot12 = uv0"unknown".resolve
		368	[  0]	CALL 	  9	3	3	; slot9, slot10 = pcall(uv0"unknown".resolve, slot11)
		369	[  0]	ISF  	   		9	; if not pcall
		370	[  0]	JMP  	 11		3	; 	goto 374
		371	[  0]	ISF  	   		10	; if not uv0"unknown".resolve
		372	[  0]	JMP  	 11		1	; 	goto 374
		373	[  0]	TSETS	 10	0	755	; slot0.fontStageSelectTitle = uv0"unknown".resolve
		374	[  0]	TGETS	  7	0	755	; slot7 = slot0.fontStageSelectTitle
		375	[  0]	IST  	   		7	; if <unknown table>.fontStageSelectTitle
		376	[  0]	JMP  	  8		1	; 	goto 378
		377	[  0]	TGETS	  7	0	769	; slot7 = slot0.fontTitle
		378	[  0]	TSETS	  7	0	755	; slot0.fontStageSelectTitle = <unknown table>.fontTitle
		379	[  0]	KPRI 	  7		0	; slot7 = nil
		380	[  0]	TSETS	  7	0	754	; slot0.fontClassCard = slot7
		381	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		382	[  0]	TGETS	  7	7	761	; slot7 = uv0"unknown".resolve
		383	[  0]	KSTR 	  9		760	; slot9 = "src/data/font/Galmuri9W.fnt"
		384	[  0]	CALL 	  7	2	2	; slot7 = uv0"unknown".resolve(love.filesystem.getInfo)
		385	[  0]	GGET 	  8		759	; slot8 = _env["love"]
		386	[  0]	TGETS	  8	8	758	; slot8 = love.filesystem
		387	[  0]	TGETS	  8	8	757	; slot8 = love.filesystem.getInfo
		388	[  0]	MOV  	 10		7	; slot10 = uv0"unknown".resolve
		389	[  0]	CALL 	  8	2	2	; slot8 = love.filesystem.getInfo(slot9)
		390	[  0]	ISF  	   		8	; if not love.filesystem.getInfo
		391	[  0]	JMP  	  9		9	; 	goto 401
		392	[  0]	GGET 	  9		776	; slot9 = _env["pcall"]
		393	[  0]	MOV  	 11		2	; slot11 = slot2
		394	[  0]	MOV  	 12		7	; slot12 = uv0"unknown".resolve
		395	[  0]	CALL 	  9	3	3	; slot9, slot10 = pcall(uv0"unknown".resolve, slot11)
		396	[  0]	ISF  	   		9	; if not pcall
		397	[  0]	JMP  	 11		3	; 	goto 401
		398	[  0]	ISF  	   		10	; if not uv0"unknown".resolve
		399	[  0]	JMP  	 11		1	; 	goto 401
		400	[  0]	TSETS	 10	0	754	; slot0.fontClassCard = uv0"unknown".resolve
		401	[  0]	TGETS	  7	0	754	; slot7 = slot0.fontClassCard
		402	[  0]	IST  	   		7	; if <unknown table>.fontClassCard
		403	[  0]	JMP  	  8		1	; 	goto 405
		404	[  0]	TGETS	  7	0	770	; slot7 = slot0.font
		405	[  0]	TSETS	  7	0	754	; slot0.fontClassCard = <unknown table>.font
		406	[  0]	KPRI 	  7		0	; slot7 = nil
		407	[  0]	TSETS	  7	0	753	; slot0.fontGameOver = slot7
		408	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		409	[  0]	TGETS	  7	7	761	; slot7 = uv0"unknown".resolve
		410	[  0]	KSTR 	  9		752	; slot9 = "src/data/font/Galmuri9WS.fnt"
		411	[  0]	CALL 	  7	2	2	; slot7 = uv0"unknown".resolve(love.filesystem.getInfo)
		412	[  0]	GGET 	  8		759	; slot8 = _env["love"]
		413	[  0]	TGETS	  8	8	758	; slot8 = love.filesystem
		414	[  0]	TGETS	  8	8	757	; slot8 = love.filesystem.getInfo
		415	[  0]	MOV  	 10		7	; slot10 = uv0"unknown".resolve
		416	[  0]	CALL 	  8	2	2	; slot8 = love.filesystem.getInfo(slot9)
		417	[  0]	ISF  	   		8	; if not love.filesystem.getInfo
		418	[  0]	JMP  	  9		31	; 	goto 450
		419	[  0]	GGET 	  9		776	; slot9 = _env["pcall"]
		420	[  0]	GGET 	 11		759	; slot11 = _env["love"]
		421	[  0]	TGETS	 11	11	751	; slot11 = love.graphics
		422	[  0]	TGETS	 11	11	750	; slot11 = love.graphics.newFont
		423	[  0]	MOV  	 12		7	; slot12 = uv0"unknown".resolve
		424	[  0]	CALL 	  9	3	3	; slot9, slot10 = pcall(uv0"unknown".resolve, love.graphics.newFont)
		425	[  0]	ISF  	   		9	; if not pcall
		426	[  0]	JMP  	 11		14	; 	goto 441
		427	[  0]	ISF  	   		10	; if not uv0"unknown".resolve
		428	[  0]	JMP  	 11		12	; 	goto 441
		429	[  0]	MOV  	 13		10	; slot13 = uv0"unknown".resolve
		430	[  0]	TGETS	 11	10	749	; slot11 = uv0"unknown".resolve.setFilter
		431	[  0]	KSTR 	 14		748	; slot14 = "nearest"
		432	[  0]	KSTR 	 15		748	; slot15 = "nearest"
		433	[  0]	CALL 	 11	1	4	;  = uv0"unknown".resolve.setFilter(uv0"unknown".resolve, uv0"unknown".resolve, slot14)
		434	[  0]	UGET 	 11		0	; slot11 = uv0"unknwon"
		435	[  0]	TGETS	 11	11	747	; slot11 = uv0"unknown".attachFallbacks
		436	[  0]	MOV  	 13		10	; slot13 = uv0"unknown".resolve
		437	[  0]	MOV  	 14		7	; slot14 = uv0"unknown".resolve
		438	[  0]	CALL 	 11	1	3	;  = uv0"unknown".attachFallbacks(uv0"unknown".resolve, uv0"unknown".resolve)
		439	[  0]	TSETS	 10	0	753	; slot0.fontGameOver = uv0"unknown".resolve
		440	[  0]	JMP  	 11		9	; 	goto 450
		441	[  0]	GGET 	 11		776	; slot11 = _env["pcall"]
		442	[  0]	MOV  	 13		2	; slot13 = slot2
		443	[  0]	MOV  	 14		7	; slot14 = uv0"unknown".resolve
		444	[  0]	CALL 	 11	3	3	; slot11, slot12 = pcall(uv0"unknown".resolve, slot13)
		445	[  0]	ISF  	   		11	; if not pcall
		446	[  0]	JMP  	 13		3	; 	goto 450
		447	[  0]	ISF  	   		12	; if not uv0"unknown".resolve
		448	[  0]	JMP  	 13		1	; 	goto 450
		449	[  0]	TSETS	 12	0	753	; slot0.fontGameOver = uv0"unknown".resolve
		450	[  0]	TGETS	  7	0	753	; slot7 = slot0.fontGameOver
		451	[  0]	IST  	   		7	; if <unknown table>.fontGameOver
		452	[  0]	JMP  	  8		1	; 	goto 454
		453	[  0]	TGETS	  7	0	770	; slot7 = slot0.font
		454	[  0]	TSETS	  7	0	753	; slot0.fontGameOver = <unknown table>.font
		455	[  0]	TGETS	  7	0	753	; slot7 = slot0.fontGameOver
		456	[  0]	TSETS	  7	0	746	; slot0.fontAwakeningCard = <unknown table>.fontGameOver
		457	[  0]	TGETS	  7	0	745	; slot7 = slot0.mainMenuLogo
		458	[  0]	IST  	   		7	; if <unknown table>.mainMenuLogo
		459	[  0]	JMP  	  8		1	; 	goto 461
		460	[  0]	TDUP 	  7		744	; slot7 = copy table#k744
		461	[  0]	TSETS	  7	0	745	; slot0.mainMenuLogo = slot7
		462	[  0]	TGETS	  7	0	743	; slot7 = slot0.mainMenuUpgradeButton
		463	[  0]	IST  	   		7	; if <unknown table>.mainMenuUpgradeButton
		464	[  0]	JMP  	  8		1	; 	goto 466
		465	[  0]	TDUP 	  7		742	; slot7 = copy table#k742
		466	[  0]	TSETS	  7	0	743	; slot0.mainMenuUpgradeButton = slot7
		467	[  0]	TGETS	  7	0	741	; slot7 = slot0.mainMenuDiscordButton
		468	[  0]	IST  	   		7	; if <unknown table>.mainMenuDiscordButton
		469	[  0]	JMP  	  8		1	; 	goto 471
		470	[  0]	TDUP 	  7		740	; slot7 = copy table#k740
		471	[  0]	TSETS	  7	0	741	; slot0.mainMenuDiscordButton = slot7
		472	[  0]	TGETS	  7	0	739	; slot7 = slot0.mainMenuCollectionButton
		473	[  0]	IST  	   		7	; if <unknown table>.mainMenuCollectionButton
		474	[  0]	JMP  	  8		1	; 	goto 476
		475	[  0]	TDUP 	  7		738	; slot7 = copy table#k738
		476	[  0]	TSETS	  7	0	739	; slot0.mainMenuCollectionButton = slot7
		477	[  0]	TGETS	  7	0	737	; slot7 = slot0.mainMenuAchievementButton
		478	[  0]	IST  	   		7	; if <unknown table>.mainMenuAchievementButton
		479	[  0]	JMP  	  8		1	; 	goto 481
		480	[  0]	TDUP 	  7		736	; slot7 = copy table#k736
		481	[  0]	TSETS	  7	0	737	; slot0.mainMenuAchievementButton = slot7
		482	[  0]	TGETS	  7	0	735	; slot7 = slot0.mainMenuBackground
		483	[  0]	IST  	   		7	; if <unknown table>.mainMenuBackground
		484	[  0]	JMP  	  8		1	; 	goto 486
		485	[  0]	TDUP 	  7		734	; slot7 = copy table#k734
		486	[  0]	TSETS	  7	0	735	; slot0.mainMenuBackground = slot7
		487	[  0]	TGETS	  7	0	733	; slot7 = slot0.stageSelectOverlay
		488	[  0]	IST  	   		7	; if <unknown table>.stageSelectOverlay
		489	[  0]	JMP  	  8		3	; 	goto 493
		490	[  0]	TDUP 	  7		731	; slot7 = copy table#k731
		491	[  0]	TDUP 	  8		732	; slot8 = copy table#k732
		492	[  0]	TSETS	  8	7	730	; slot7.title = slot8
		493	[  0]	TSETS	  7	0	733	; slot0.stageSelectOverlay = slot7
		494	[  0]	TGETS	  7	0	733	; slot7 = slot0.stageSelectOverlay
		495	[  0]	TGETS	  8	0	733	; slot8 = slot0.stageSelectOverlay
		496	[  0]	TGETS	  8	8	729	; slot8 = <unknown table>.stageSelectOverlay.stageCards
		497	[  0]	IST  	   		8	; if <unknown table>.stageSelectOverlay.stageCards
		498	[  0]	JMP  	  9		1	; 	goto 500
		499	[  0]	TDUP 	  8		728	; slot8 = copy table#k728
		500	[  0]	TSETS	  8	7	729	; <unknown table>.stageSelectOverlay.stageCards = slot8
		501	[  0]	TGETS	  7	0	733	; slot7 = slot0.stageSelectOverlay
		502	[  0]	TGETS	  8	0	733	; slot8 = slot0.stageSelectOverlay
		503	[  0]	TGETS	  8	8	727	; slot8 = <unknown table>.stageSelectOverlay.stage1Title
		504	[  0]	IST  	   		8	; if <unknown table>.stageSelectOverlay.stage1Title
		505	[  0]	JMP  	  9		1	; 	goto 507
		506	[  0]	TDUP 	  8		726	; slot8 = copy table#k726
		507	[  0]	TSETS	  8	7	727	; <unknown table>.stageSelectOverlay.stage1Title = slot8
		508	[  0]	TGETS	  7	0	733	; slot7 = slot0.stageSelectOverlay
		509	[  0]	TGETS	  8	0	733	; slot8 = slot0.stageSelectOverlay
		510	[  0]	TGETS	  8	8	725	; slot8 = <unknown table>.stageSelectOverlay.stage2Title
		511	[  0]	IST  	   		8	; if <unknown table>.stageSelectOverlay.stage2Title
		512	[  0]	JMP  	  9		1	; 	goto 514
		513	[  0]	TDUP 	  8		724	; slot8 = copy table#k724
		514	[  0]	TSETS	  8	7	725	; <unknown table>.stageSelectOverlay.stage2Title = slot8
		515	[  0]	TGETS	  7	0	733	; slot7 = slot0.stageSelectOverlay
		516	[  0]	TGETS	  8	0	733	; slot8 = slot0.stageSelectOverlay
		517	[  0]	TGETS	  8	8	723	; slot8 = <unknown table>.stageSelectOverlay.stage3Title
		518	[  0]	IST  	   		8	; if <unknown table>.stageSelectOverlay.stage3Title
		519	[  0]	JMP  	  9		1	; 	goto 521
		520	[  0]	TDUP 	  8		722	; slot8 = copy table#k722
		521	[  0]	TSETS	  8	7	723	; <unknown table>.stageSelectOverlay.stage3Title = slot8
		522	[  0]	TGETS	  7	0	733	; slot7 = slot0.stageSelectOverlay
		523	[  0]	TGETS	  8	0	733	; slot8 = slot0.stageSelectOverlay
		524	[  0]	TGETS	  8	8	721	; slot8 = <unknown table>.stageSelectOverlay.stage4Title
		525	[  0]	IST  	   		8	; if <unknown table>.stageSelectOverlay.stage4Title
		526	[  0]	JMP  	  9		1	; 	goto 528
		527	[  0]	TDUP 	  8		720	; slot8 = copy table#k720
		528	[  0]	TSETS	  8	7	721	; <unknown table>.stageSelectOverlay.stage4Title = slot8
		529	[  0]	TGETS	  7	0	733	; slot7 = slot0.stageSelectOverlay
		530	[  0]	TDUP 	  8		718	; slot8 = copy table#k718
		531	[  0]	TSETS	  8	7	719	; <unknown table>.stageSelectOverlay.stageNames = slot8
		532	[  0]	TGETS	  7	0	733	; slot7 = slot0.stageSelectOverlay
		533	[  0]	TGETS	  8	0	733	; slot8 = slot0.stageSelectOverlay
		534	[  0]	TGETS	  8	8	717	; slot8 = <unknown table>.stageSelectOverlay.difficultyTitle
		535	[  0]	IST  	   		8	; if <unknown table>.stageSelectOverlay.difficultyTitle
		536	[  0]	JMP  	  9		1	; 	goto 538
		537	[  0]	TDUP 	  8		716	; slot8 = copy table#k716
		538	[  0]	TSETS	  8	7	717	; <unknown table>.stageSelectOverlay.difficultyTitle = slot8
		539	[  0]	TGETS	  7	0	733	; slot7 = slot0.stageSelectOverlay
		540	[  0]	TGETS	  8	0	733	; slot8 = slot0.stageSelectOverlay
		541	[  0]	TGETS	  8	8	715	; slot8 = <unknown table>.stageSelectOverlay.difficultySelect
		542	[  0]	IST  	   		8	; if <unknown table>.stageSelectOverlay.difficultySelect
		543	[  0]	JMP  	  9		1	; 	goto 545
		544	[  0]	TDUP 	  8		714	; slot8 = copy table#k714
		545	[  0]	TSETS	  8	7	715	; <unknown table>.stageSelectOverlay.difficultySelect = slot8
		546	[  0]	TGETS	  7	0	733	; slot7 = slot0.stageSelectOverlay
		547	[  0]	KSTR 	  8		713	; slot8 = "runSaveSlot"
		548	[  0]	TGETS	  9	0	733	; slot9 = slot0.stageSelectOverlay
		549	[  0]	KSTR 	 10		713	; slot10 = "runSaveSlot"
		550	[  0]	TGETV	  9	9	10	; slot9 = <unknown table>.stageSelectOverlay[slot10]
		551	[  0]	IST  	   		9	; if slot9
		552	[  0]	JMP  	 10		13	; 	goto 566
		553	[  0]	TDUP 	  9		712	; slot9 = copy table#k712
		554	[  0]	TDUP 	 10		710	; slot10 = copy table#k710
		555	[  0]	TDUP 	 11		711	; slot11 = copy table#k711
		556	[  0]	KSTR 	 12		709	; slot12 = "easy"
		557	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		558	[  0]	TDUP 	 11		708	; slot11 = copy table#k708
		559	[  0]	KSTR 	 12		707	; slot12 = "normal"
		560	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		561	[  0]	TDUP 	 11		706	; slot11 = copy table#k706
		562	[  0]	KSTR 	 12		705	; slot12 = "hard"
		563	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		564	[  0]	KSTR 	 11		704	; slot11 = "difficultyTextColors"
		565	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		566	[  0]	TSETV	  9	7	8	; <unknown table>.stageSelectOverlay[slot8] = slot9
		567	[  0]	KSTR 	  7		703	; slot7 = "fontCoin"
		568	[  0]	KPRI 	  8		0	; slot8 = nil
		569	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		570	[  0]	KSTR 	  7		702	; slot7 = "fontCoinScale"
		571	[  0]	KSHORT	  8		1	; slot8 = 1
		572	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		573	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		574	[  0]	TGETS	  7	7	761	; slot7 = uv0"unknown".resolve
		575	[  0]	KSTR 	  9		701	; slot9 = "src/data/font/Galmuri7W.fnt"
		576	[  0]	CALL 	  7	2	2	; slot7 = uv0"unknown".resolve(slot8)
		577	[  0]	GGET 	  8		759	; slot8 = _env["love"]
		578	[  0]	TGETS	  8	8	758	; slot8 = love.filesystem
		579	[  0]	TGETS	  8	8	757	; slot8 = love.filesystem.getInfo
		580	[  0]	MOV  	 10		7	; slot10 = uv0"unknown".resolve
		581	[  0]	CALL 	  8	2	2	; slot8 = love.filesystem.getInfo(slot9)
		582	[  0]	ISF  	   		8	; if not love.filesystem.getInfo
		583	[  0]	JMP  	  9		21	; 	goto 605
		584	[  0]	GGET 	  9		776	; slot9 = _env["pcall"]
		585	[  0]	MOV  	 11		2	; slot11 = slot2
		586	[  0]	MOV  	 12		7	; slot12 = uv0"unknown".resolve
		587	[  0]	CALL 	  9	3	3	; slot9, slot10 = pcall(uv0"unknown".resolve, slot11)
		588	[  0]	ISF  	   		9	; if not pcall
		589	[  0]	JMP  	 11		15	; 	goto 605
		590	[  0]	ISF  	   		10	; if not uv0"unknown".resolve
		591	[  0]	JMP  	 11		13	; 	goto 605
		592	[  0]	KSTR 	 11		703	; slot11 = "fontCoin"
		593	[  0]	TSETV	 10	0	11	; slot0[slot11] = uv0"unknown".resolve
		594	[  0]	GGET 	 11		782	; slot11 = _env["math"]
		595	[  0]	TGETS	 11	11	781	; slot11 = math.max
		596	[  0]	KSHORT	 13		1	; slot13 = 1
		597	[  0]	MOV  	 16		10	; slot16 = uv0"unknown".resolve
		598	[  0]	TGETS	 14	10	771	; slot14 = uv0"unknown".resolve.getHeight
		599	[  0]	CALL 	 14	0	2	; MULTRES = uv0"unknown".resolve.getHeight(slot15)
		600	[  0]	CALLM	 11	2	1	; slot11 = math.max(uv0"unknown".resolve, ...MULTRES)
		601	[  0]	KSHORT	 12		8	; slot12 = 8
		602	[  0]	KSTR 	 13		702	; slot13 = "fontCoinScale"
		603	[  0]	DIVVV	 14	12	11	; slot14 = slot12 / math.max
		604	[  0]	TSETV	 14	0	13	; slot0[slot13] = slot14
		605	[  0]	KSTR 	  7		700	; slot7 = "fontJackpot"
		606	[  0]	KPRI 	  8		0	; slot8 = nil
		607	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		608	[  0]	KSTR 	  7		699	; slot7 = "fontJackpotScale"
		609	[  0]	KSHORT	  8		1	; slot8 = 1
		610	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		611	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		612	[  0]	TGETS	  7	7	761	; slot7 = uv0"unknown".resolve
		613	[  0]	KSTR 	  9		701	; slot9 = "src/data/font/Galmuri7W.fnt"
		614	[  0]	CALL 	  7	2	2	; slot7 = uv0"unknown".resolve(slot8)
		615	[  0]	GGET 	  8		759	; slot8 = _env["love"]
		616	[  0]	TGETS	  8	8	758	; slot8 = love.filesystem
		617	[  0]	TGETS	  8	8	757	; slot8 = love.filesystem.getInfo
		618	[  0]	MOV  	 10		7	; slot10 = uv0"unknown".resolve
		619	[  0]	CALL 	  8	2	2	; slot8 = love.filesystem.getInfo(slot9)
		620	[  0]	ISF  	   		8	; if not love.filesystem.getInfo
		621	[  0]	JMP  	  9		37	; 	goto 659
		622	[  0]	GGET 	  9		776	; slot9 = _env["pcall"]
		623	[  0]	MOV  	 11		2	; slot11 = slot2
		624	[  0]	MOV  	 12		7	; slot12 = uv0"unknown".resolve
		625	[  0]	CALL 	  9	3	3	; slot9, slot10 = pcall(uv0"unknown".resolve, slot11)
		626	[  0]	ISF  	   		9	; if not pcall
		627	[  0]	JMP  	 11		31	; 	goto 659
		628	[  0]	ISF  	   		10	; if not uv0"unknown".resolve
		629	[  0]	JMP  	 11		29	; 	goto 659
		630	[  0]	KSTR 	 11		700	; slot11 = "fontJackpot"
		631	[  0]	TSETV	 10	0	11	; slot0[slot11] = uv0"unknown".resolve
		632	[  0]	GGET 	 11		782	; slot11 = _env["math"]
		633	[  0]	TGETS	 11	11	781	; slot11 = math.max
		634	[  0]	KSHORT	 13		1	; slot13 = 1
		635	[  0]	MOV  	 16		10	; slot16 = uv0"unknown".resolve
		636	[  0]	TGETS	 14	10	771	; slot14 = uv0"unknown".resolve.getHeight
		637	[  0]	CALL 	 14	0	2	; MULTRES = uv0"unknown".resolve.getHeight(slot15)
		638	[  0]	CALLM	 11	2	1	; slot11 = math.max(uv0"unknown".resolve, ...MULTRES)
		639	[  0]	GGET 	 12		782	; slot12 = _env["math"]
		640	[  0]	TGETS	 12	12	781	; slot12 = math.max
		641	[  0]	KSHORT	 14		8	; slot14 = 8
		642	[  0]	GGET 	 15		782	; slot15 = _env["math"]
		643	[  0]	TGETS	 15	15	780	; slot15 = math.floor
		644	[  0]	TGETS	 17	0	969	; slot17 = slot0.scale
		645	[  0]	MULNV	 17	17	3	; slot17 = 14 * <unknown table>.scale
		646	[  0]	CALL 	 15	0	2	; MULTRES = math.floor(uv0"unknown".resolve)
		647	[  0]	CALLM	 12	2	1	; slot12 = math.max(slot13, ...MULTRES)
		648	[  0]	DIVVV	 13	12	11	; slot13 = math.max / math.max
		649	[  0]	GGET 	 14		782	; slot14 = _env["math"]
		650	[  0]	TGETS	 14	14	781	; slot14 = math.max
		651	[  0]	KSHORT	 16		1	; slot16 = 1
		652	[  0]	GGET 	 17		782	; slot17 = _env["math"]
		653	[  0]	TGETS	 17	17	780	; slot17 = math.floor
		654	[  0]	ADDVN	 19	13	4	; slot19 = slot13 + 0.5
		655	[  0]	CALL 	 17	0	2	; MULTRES = math.floor(slot18)
		656	[  0]	CALLM	 14	2	1	; slot14 = math.max(math.floor, ...MULTRES)
		657	[  0]	KSTR 	 15		699	; slot15 = "fontJackpotScale"
		658	[  0]	TSETV	 14	0	15	; slot0[slot15] = math.max
		659	[  0]	KSTR 	  7		698	; slot7 = "fontShopTitle"
		660	[  0]	KPRI 	  8		0	; slot8 = nil
		661	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		662	[  0]	KSTR 	  7		697	; slot7 = "fontShopTitleScale"
		663	[  0]	KSHORT	  8		1	; slot8 = 1
		664	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		665	[  0]	TNEW 	  7		3	; slot7 = new table( array: 3, dict: 1)
		666	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		667	[  0]	TGETS	  8	8	761	; slot8 = uv0"unknown".resolve
		668	[  0]	KSTR 	 10		696	; slot10 = "src/data/font/Galmuri7WS.fnt"
		669	[  0]	CALL 	  8	2	2	; slot8 = uv0"unknown".resolve(pcall)
		670	[  0]	TSETB	  8	7	1	; slot7[1] = uv0"unknown".resolve
		671	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		672	[  0]	TGETS	  8	8	761	; slot8 = uv0"unknown".resolve
		673	[  0]	KSTR 	 10		701	; slot10 = "src/data/font/Galmuri7W.fnt"
		674	[  0]	CALL 	  8	0	2	; MULTRES = uv0"unknown".resolve(pcall)
		675	[  0]	TSETM	  8		5	; for i = 0, MULTRES, 1 do slot7[5 + i] = slot(8 + i)
		676	[  0]	KPRI 	  8		0	; slot8 = nil
		677	[  0]	GGET 	  9		695	; slot9 = _env["ipairs"]
		678	[  0]	MOV  	 11		7	; slot11 = slot7
		679	[  0]	CALL 	  9	4	2	; slot9, slot10, slot11 = ipairs(slot10)
		680	[  0]	JMP  	 12		46	; 	goto 727
		681	[  0]	GGET 	 14		759	; slot14 = _env["love"]
		682	[  0]	TGETS	 14	14	758	; slot14 = love.filesystem
		683	[  0]	TGETS	 14	14	757	; slot14 = love.filesystem.getInfo
		684	[  0]	MOV  	 16		13	; slot16 = slot13
		685	[  0]	CALL 	 14	2	2	; slot14 = love.filesystem.getInfo(slot15)
		686	[  0]	ISF  	   		14	; if not love.filesystem.getInfo
		687	[  0]	JMP  	 15		39	; 	goto 727
		688	[  0]	GGET 	 15		776	; slot15 = _env["pcall"]
		689	[  0]	MOV  	 17		2	; slot17 = slot2
		690	[  0]	MOV  	 18		13	; slot18 = slot13
		691	[  0]	CALL 	 15	3	3	; slot15, slot16 = pcall(slot16, slot17)
		692	[  0]	ISF  	   		15	; if not pcall
		693	[  0]	JMP  	 17		33	; 	goto 727
		694	[  0]	ISF  	   		16	; if not slot16
		695	[  0]	JMP  	 17		31	; 	goto 727
		696	[  0]	KSTR 	 17		698	; slot17 = "fontShopTitle"
		697	[  0]	TSETV	 16	0	17	; slot0[slot17] = slot16
		698	[  0]	GGET 	 17		782	; slot17 = _env["math"]
		699	[  0]	TGETS	 17	17	781	; slot17 = math.max
		700	[  0]	KSHORT	 19		1	; slot19 = 1
		701	[  0]	MOV  	 22		16	; slot22 = slot16
		702	[  0]	TGETS	 20	16	771	; slot20 = slot16.getHeight
		703	[  0]	CALL 	 20	0	2	; MULTRES = <unknown table>.getHeight(slot21)
		704	[  0]	CALLM	 17	2	1	; slot17 = math.max(slot18, ...MULTRES)
		705	[  0]	GGET 	 18		782	; slot18 = _env["math"]
		706	[  0]	TGETS	 18	18	781	; slot18 = math.max
		707	[  0]	KSHORT	 20		8	; slot20 = 8
		708	[  0]	GGET 	 21		782	; slot21 = _env["math"]
		709	[  0]	TGETS	 21	21	780	; slot21 = math.floor
		710	[  0]	TGETS	 23	0	969	; slot23 = slot0.scale
		711	[  0]	MULNV	 23	23	6	; slot23 = 12 * <unknown table>.scale
		712	[  0]	CALL 	 21	0	2	; MULTRES = math.floor(slot22)
		713	[  0]	CALLM	 18	2	1	; slot18 = math.max(slot19, ...MULTRES)
		714	[  0]	DIVVV	 19	18	17	; slot19 = math.max / math.max
		715	[  0]	GGET 	 20		782	; slot20 = _env["math"]
		716	[  0]	TGETS	 20	20	781	; slot20 = math.max
		717	[  0]	KSHORT	 22		1	; slot22 = 1
		718	[  0]	GGET 	 23		782	; slot23 = _env["math"]
		719	[  0]	TGETS	 23	23	780	; slot23 = math.floor
		720	[  0]	ADDVN	 25	19	4	; slot25 = slot19 + 0.5
		721	[  0]	CALL 	 23	0	2	; MULTRES = math.floor(slot24)
		722	[  0]	CALLM	 20	2	1	; slot20 = math.max(math.floor, ...MULTRES)
		723	[  0]	KSTR 	 21		697	; slot21 = "fontShopTitleScale"
		724	[  0]	TSETV	 20	0	21	; slot0[slot21] = math.max
		725	[  0]	KPRI 	  8		2	; slot8 = true
		726	[  0]	JMP  	  9		2	; 	goto 729
		727	[  0]	ITERC	 12	3	3	; slot12, slot13, slot14 = ipairs, slot10, slot11; slot12, slot13 = ipairs(slot10, slot11)
		728	[  0]	ITERL	 12		-48	; slot11 = math.max; if math.max != nil goto 681
		729	[  0]	IST  	   		8	; if slot8
		730	[  0]	JMP  	  9		9	; 	goto 740
		731	[  0]	KSTR 	  9		698	; slot9 = "fontShopTitle"
		732	[  0]	TGETS	 10	0	769	; slot10 = slot0.fontTitle
		733	[  0]	IST  	   		10	; if <unknown table>.fontTitle
		734	[  0]	JMP  	 11		1	; 	goto 736
		735	[  0]	TGETS	 10	0	770	; slot10 = slot0.font
		736	[  0]	TSETV	 10	0	9	; slot0[slot9] = <unknown table>.font
		737	[  0]	KSTR 	  9		697	; slot9 = "fontShopTitleScale"
		738	[  0]	KSHORT	 10		1	; slot10 = 1
		739	[  0]	TSETV	 10	0	9	; slot0[slot9] = slot10
		740	[  0]	KSTR 	  7		694	; slot7 = "jackpotBanner"
		741	[  0]	TDUP 	  8		693	; slot8 = copy table#k693
		742	[  0]	TDUP 	  9		692	; slot9 = copy table#k692
		743	[  0]	TDUP 	 10		691	; slot10 = copy table#k691
		744	[  0]	TSETS	 10	9	961	; slot9.color = slot10
		745	[  0]	KSTR 	 10		690	; slot10 = "shadow"
		746	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		747	[  0]	TDUP 	  9		689	; slot9 = copy table#k689
		748	[  0]	TDUP 	 10		688	; slot10 = copy table#k688
		749	[  0]	TSETS	 10	9	961	; slot9.color = slot10
		750	[  0]	KSTR 	 10		687	; slot10 = "outline"
		751	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		752	[  0]	TDUP 	  9		686	; slot9 = copy table#k686
		753	[  0]	TSETS	  9	8	961	; slot8.color = slot9
		754	[  0]	TDUP 	  9		685	; slot9 = copy table#k685
		755	[  0]	KSTR 	 10		684	; slot10 = "wave"
		756	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		757	[  0]	TDUP 	  9		683	; slot9 = copy table#k683
		758	[  0]	KSTR 	 10		682	; slot10 = "shake"
		759	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		760	[  0]	TDUP 	  9		681	; slot9 = copy table#k681
		761	[  0]	KSTR 	 10		680	; slot10 = "scalePulse"
		762	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		763	[  0]	TDUP 	  9		679	; slot9 = copy table#k679
		764	[  0]	KSTR 	 10		678	; slot10 = "machineShake"
		765	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		766	[  0]	TDUP 	  9		677	; slot9 = copy table#k677
		767	[  0]	TDUP 	 10		676	; slot10 = copy table#k676
		768	[  0]	KSTR 	 11		675	; slot11 = "grain"
		769	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		770	[  0]	TDUP 	 10		674	; slot10 = copy table#k674
		771	[  0]	KSTR 	 11		673	; slot11 = "film"
		772	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		773	[  0]	KSTR 	 10		672	; slot10 = "foil"
		774	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		775	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		776	[  0]	KSTR 	  7		671	; slot7 = "margin"
		777	[  0]	GGET 	  8		782	; slot8 = _env["math"]
		778	[  0]	TGETS	  8	8	780	; slot8 = math.floor
		779	[  0]	TGETS	 10	0	969	; slot10 = slot0.scale
		780	[  0]	MULNV	 10	10	7	; slot10 = 16 * <unknown table>.scale
		781	[  0]	CALL 	  8	2	2	; slot8 = math.floor(slot9)
		782	[  0]	TSETV	  8	0	7	; slot0[slot7] = math.floor
		783	[  0]	KSTR 	  7		670	; slot7 = "slot"
		784	[  0]	TDUP 	  8		669	; slot8 = copy table#k669
		785	[  0]	GGET 	  9		782	; slot9 = _env["math"]
		786	[  0]	TGETS	  9	9	780	; slot9 = math.floor
		787	[  0]	TGETS	 11	0	969	; slot11 = slot0.scale
		788	[  0]	MULNV	 11	11	8	; slot11 = 10 * <unknown table>.scale
		789	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		790	[  0]	KSTR 	 10		668	; slot10 = "panelPad"
		791	[  0]	TSETV	  9	8	10	; slot8[slot10] = math.floor
		792	[  0]	TDUP 	  9		667	; slot9 = copy table#k667
		793	[  0]	KSTR 	 10		666	; slot10 = "spinShake"
		794	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		795	[  0]	TDUP 	  9		665	; slot9 = copy table#k665
		796	[  0]	KSTR 	 10		664	; slot10 = "spinImpact"
		797	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		798	[  0]	TDUP 	  9		663	; slot9 = copy table#k663
		799	[  0]	KSTR 	 10		662	; slot10 = "winPulse"
		800	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		801	[  0]	TDUP 	  9		661	; slot9 = copy table#k661
		802	[  0]	KSTR 	 10		660	; slot10 = "winSymbolWobble"
		803	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		804	[  0]	TDUP 	  9		659	; slot9 = copy table#k659
		805	[  0]	TDUP 	 10		658	; slot10 = copy table#k658
		806	[  0]	KSTR 	 11		657	; slot11 = "ampByLine"
		807	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		808	[  0]	TDUP 	 10		656	; slot10 = copy table#k656
		809	[  0]	TDUP 	 11		655	; slot11 = copy table#k655
		810	[  0]	KSTR 	 12		654	; slot12 = "byLine"
		811	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		812	[  0]	KSTR 	 11		682	; slot11 = "shake"
		813	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		814	[  0]	TDUP 	 10		653	; slot10 = copy table#k653
		815	[  0]	TDUP 	 11		652	; slot11 = copy table#k652
		816	[  0]	KSTR 	 12		654	; slot12 = "byLine"
		817	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		818	[  0]	KSTR 	 11		651	; slot11 = "screenShake"
		819	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		820	[  0]	KSTR 	 10		650	; slot10 = "lineHitSquash"
		821	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		822	[  0]	TDUP 	  9		649	; slot9 = copy table#k649
		823	[  0]	TDUP 	 10		648	; slot10 = copy table#k648
		824	[  0]	KSTR 	 11		647	; slot11 = "squash"
		825	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		826	[  0]	TDUP 	 10		646	; slot10 = copy table#k646
		827	[  0]	KSTR 	 11		645	; slot11 = "jitter"
		828	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		829	[  0]	TDUP 	 10		644	; slot10 = copy table#k644
		830	[  0]	KSTR 	 11		651	; slot11 = "screenShake"
		831	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		832	[  0]	KSTR 	 10		643	; slot10 = "spinPressFX"
		833	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		834	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		835	[  0]	KSTR 	  7		670	; slot7 = "slot"
		836	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		837	[  0]	KSTR 	  8		642	; slot8 = "cellSize"
		838	[  0]	GGET 	  9		782	; slot9 = _env["math"]
		839	[  0]	TGETS	  9	9	780	; slot9 = math.floor
		840	[  0]	TGETS	 11	0	969	; slot11 = slot0.scale
		841	[  0]	MULNV	 11	11	9	; slot11 = 96 * <unknown table>.scale
		842	[  0]	KSTR 	 12		670	; slot12 = "slot"
		843	[  0]	TGETV	 12	0	12	; slot12 = slot0[slot12]
		844	[  0]	TGETS	 12	12	969	; slot12 = slot12.scale
		845	[  0]	MULVV	 11	11	12	; slot11 = slot11 * <unknown table>.scale
		846	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		847	[  0]	TSETV	  9	7	8	; slot7[slot8] = math.floor
		848	[  0]	KSTR 	  7		670	; slot7 = "slot"
		849	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		850	[  0]	KSTR 	  8		641	; slot8 = "gutter"
		851	[  0]	GGET 	  9		782	; slot9 = _env["math"]
		852	[  0]	TGETS	  9	9	780	; slot9 = math.floor
		853	[  0]	TGETS	 11	0	969	; slot11 = slot0.scale
		854	[  0]	MULNV	 11	11	10	; slot11 = 6 * <unknown table>.scale
		855	[  0]	KSTR 	 12		670	; slot12 = "slot"
		856	[  0]	TGETV	 12	0	12	; slot12 = slot0[slot12]
		857	[  0]	TGETS	 12	12	969	; slot12 = slot12.scale
		858	[  0]	MULVV	 11	11	12	; slot11 = slot11 * <unknown table>.scale
		859	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		860	[  0]	TSETV	  9	7	8	; slot7[slot8] = math.floor
		861	[  0]	KSTR 	  7		640	; slot7 = "colors"
		862	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		863	[  0]	KSTR 	  9		640	; slot9 = "colors"
		864	[  0]	TGETV	  8	8	9	; slot8 = uv3"unknown"[slot9]
		865	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		866	[  0]	KSTR 	  7		639	; slot7 = "virtual"
		867	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		868	[  0]	KSTR 	  9		639	; slot9 = "virtual"
		869	[  0]	TGETV	  8	8	9	; slot8 = uv3"unknown"[slot9]
		870	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		871	[  0]	KSTR 	  7		638	; slot7 = "virtualBase"
		872	[  0]	TDUP 	  8		636	; slot8 = copy table#k636
		873	[  0]	KSTR 	  9		639	; slot9 = "virtual"
		874	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		875	[  0]	KSTR 	 10		637	; slot10 = "W"
		876	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		877	[  0]	KSTR 	 10		637	; slot10 = "W"
		878	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		879	[  0]	KSTR 	  9		639	; slot9 = "virtual"
		880	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		881	[  0]	KSTR 	 10		635	; slot10 = "H"
		882	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		883	[  0]	KSTR 	 10		635	; slot10 = "H"
		884	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		885	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		886	[  0]	KSTR 	  7		634	; slot7 = "coreBackground"
		887	[  0]	TDUP 	  8		633	; slot8 = copy table#k633
		888	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		889	[  0]	KSTR 	  7		632	; slot7 = "coreBackgroundNumber"
		890	[  0]	TDUP 	  8		631	; slot8 = copy table#k631
		891	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		892	[  0]	KSTR 	  7		630	; slot7 = "coreCountDisplay"
		893	[  0]	TDUP 	  8		629	; slot8 = copy table#k629
		894	[  0]	TDUP 	  9		628	; slot9 = copy table#k628
		895	[  0]	TSETS	  9	8	961	; slot8.color = slot9
		896	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		897	[  0]	KSTR 	  7		627	; slot7 = "monster"
		898	[  0]	TDUP 	  8		625	; slot8 = copy table#k625
		899	[  0]	TDUP 	  9		626	; slot9 = copy table#k626
		900	[  0]	KSTR 	 10		624	; slot10 = "headLaugh"
		901	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		902	[  0]	TDUP 	  9		623	; slot9 = copy table#k623
		903	[  0]	KSTR 	 10		622	; slot10 = "headIdle"
		904	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		905	[  0]	TDUP 	  9		621	; slot9 = copy table#k621
		906	[  0]	TDUP 	 10		620	; slot10 = copy table#k620
		907	[  0]	TSETS	 10	9	885	; slot9.outlineColor = slot10
		908	[  0]	TDUP 	 10		619	; slot10 = copy table#k619
		909	[  0]	KSTR 	 11		618	; slot11 = "glowColor"
		910	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		911	[  0]	KSTR 	 10		617	; slot10 = "oddsAttention"
		912	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		913	[  0]	TDUP 	  9		616	; slot9 = copy table#k616
		914	[  0]	TDUP 	 10		615	; slot10 = copy table#k615
		915	[  0]	KSTR 	 11		614	; slot11 = "left"
		916	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		917	[  0]	TDUP 	 10		613	; slot10 = copy table#k613
		918	[  0]	KSTR 	 11		612	; slot11 = "right"
		919	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		920	[  0]	TDUP 	 10		611	; slot10 = copy table#k611
		921	[  0]	KSTR 	 11		610	; slot11 = "pulse"
		922	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		923	[  0]	KSTR 	 10		609	; slot10 = "eyesShine"
		924	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		925	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		926	[  0]	KSTR 	  7		608	; slot7 = "judgementSky"
		927	[  0]	TDUP 	  8		607	; slot8 = copy table#k607
		928	[  0]	TDUP 	  9		606	; slot9 = copy table#k606
		929	[  0]	KSTR 	 10		605	; slot10 = "dark"
		930	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		931	[  0]	TDUP 	  9		604	; slot9 = copy table#k604
		932	[  0]	KSTR 	 10		603	; slot10 = "mid"
		933	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		934	[  0]	TDUP 	  9		602	; slot9 = copy table#k602
		935	[  0]	KSTR 	 10		601	; slot10 = "light"
		936	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		937	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		938	[  0]	KSTR 	  7		600	; slot7 = "battle"
		939	[  0]	TDUP 	  8		599	; slot8 = copy table#k599
		940	[  0]	TDUP 	  9		598	; slot9 = copy table#k598
		941	[  0]	KSTR 	 10		597	; slot10 = "stage6PlanetIdle"
		942	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		943	[  0]	TDUP 	  9		596	; slot9 = copy table#k596
		944	[  0]	KSTR 	 10		595	; slot10 = "hitShake"
		945	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		946	[  0]	TDUP 	  9		594	; slot9 = copy table#k594
		947	[  0]	KSTR 	 10		593	; slot10 = "hitSquash"
		948	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		949	[  0]	TDUP 	  9		592	; slot9 = copy table#k592
		950	[  0]	KSTR 	 10		591	; slot10 = "animDesync"
		951	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		952	[  0]	TDUP 	  9		590	; slot9 = copy table#k590
		953	[  0]	KSTR 	 10		690	; slot10 = "shadow"
		954	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		955	[  0]	TDUP 	  9		589	; slot9 = copy table#k589
		956	[  0]	TDUP 	 10		588	; slot10 = copy table#k588
		957	[  0]	TSETS	 10	9	961	; slot9.color = slot10
		958	[  0]	KSTR 	 10		587	; slot10 = "aura"
		959	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		960	[  0]	TDUP 	  9		586	; slot9 = copy table#k586
		961	[  0]	KSTR 	 10		585	; slot10 = "darkHarvestColor"
		962	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		963	[  0]	TDUP 	  9		583	; slot9 = copy table#k583
		964	[  0]	TDUP 	 10		584	; slot10 = copy table#k584
		965	[  0]	TSETS	 10	9	961	; slot9.color = slot10
		966	[  0]	TDUP 	 10		582	; slot10 = copy table#k582
		967	[  0]	KSTR 	 11		581	; slot11 = "sparkColor"
		968	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		969	[  0]	KSTR 	 10		580	; slot10 = "primeStrengthBeam"
		970	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		971	[  0]	TDUP 	  9		579	; slot9 = copy table#k579
		972	[  0]	KSTR 	 10		578	; slot10 = "jackpotRainbow"
		973	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		974	[  0]	TDUP 	  9		577	; slot9 = copy table#k577
		975	[  0]	TDUP 	 10		576	; slot10 = copy table#k576
		976	[  0]	KSTR 	 11		675	; slot11 = "grain"
		977	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		978	[  0]	TDUP 	 10		575	; slot10 = copy table#k575
		979	[  0]	KSTR 	 11		673	; slot11 = "film"
		980	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		981	[  0]	KSTR 	 10		574	; slot10 = "jackpotFoil"
		982	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		983	[  0]	TDUP 	  9		573	; slot9 = copy table#k573
		984	[  0]	TDUP 	 10		572	; slot10 = copy table#k572
		985	[  0]	KSTR 	 11		675	; slot11 = "grain"
		986	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		987	[  0]	TDUP 	 10		571	; slot10 = copy table#k571
		988	[  0]	KSTR 	 11		673	; slot11 = "film"
		989	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		990	[  0]	TDUP 	 10		570	; slot10 = copy table#k570
		991	[  0]	KSTR 	 11		610	; slot11 = "pulse"
		992	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		993	[  0]	KSTR 	 10		569	; slot10 = "legendaryFoil"
		994	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		995	[  0]	TDUP 	  9		568	; slot9 = copy table#k568
		996	[  0]	KSTR 	 10		567	; slot10 = "moonRise"
		997	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		998	[  0]	TDUP 	  9		566	; slot9 = copy table#k566
		999	[  0]	KSTR 	 10		565	; slot10 = "readyIcon"
		1000	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		1001	[  0]	TDUP 	  9		564	; slot9 = copy table#k564
		1002	[  0]	KSTR 	 10		563	; slot10 = "heartIcon"
		1003	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		1004	[  0]	TDUP 	  9		562	; slot9 = copy table#k562
		1005	[  0]	TDUP 	 10		561	; slot10 = copy table#k561
		1006	[  0]	KSTR 	 11		560	; slot11 = "flashWindow"
		1007	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		1008	[  0]	KSTR 	 10		559	; slot10 = "absorbJitter"
		1009	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		1010	[  0]	TDUP 	  9		557	; slot9 = copy table#k557
		1011	[  0]	TDUP 	 10		558	; slot10 = copy table#k558
		1012	[  0]	TSETS	 10	9	871	; slot9.borderColor = slot10
		1013	[  0]	KSTR 	 10		556	; slot10 = "absorb"
		1014	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		1015	[  0]	TDUP 	  9		555	; slot9 = copy table#k555
		1016	[  0]	KSTR 	 10		554	; slot10 = "enemyOffscreenSpawn"
		1017	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		1018	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1019	[  0]	KSTR 	  7		600	; slot7 = "battle"
		1020	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1021	[  0]	KSTR 	  8		553	; slot8 = "warlordEffectOffset"
		1022	[  0]	TDUP 	  9		552	; slot9 = copy table#k552
		1023	[  0]	TSETV	  9	7	8	; slot7[slot8] = slot9
		1024	[  0]	KSTR 	  7		551	; slot7 = "tooltip"
		1025	[  0]	KSTR 	  8		551	; slot8 = "tooltip"
		1026	[  0]	TGETV	  8	0	8	; slot8 = slot0[slot8]
		1027	[  0]	IST  	   		8	; if slot8
		1028	[  0]	JMP  	  9		1	; 	goto 1030
		1029	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
		1030	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1031	[  0]	KSTR 	  7		551	; slot7 = "tooltip"
		1032	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1033	[  0]	KSTR 	  8		550	; slot8 = "iconFoil"
		1034	[  0]	TDUP 	  9		549	; slot9 = copy table#k549
		1035	[  0]	TDUP 	 10		548	; slot10 = copy table#k548
		1036	[  0]	KSTR 	 11		675	; slot11 = "grain"
		1037	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		1038	[  0]	TDUP 	 10		547	; slot10 = copy table#k547
		1039	[  0]	KSTR 	 11		673	; slot11 = "film"
		1040	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		1041	[  0]	TSETV	  9	7	8	; slot7[slot8] = slot9
		1042	[  0]	KSTR 	  7		546	; slot7 = "tooltipCfg"
		1043	[  0]	TDUP 	  8		545	; slot8 = copy table#k545
		1044	[  0]	KSTR 	  9		551	; slot9 = "tooltip"
		1045	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1046	[  0]	KSTR 	 10		550	; slot10 = "iconFoil"
		1047	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1048	[  0]	KSTR 	 10		550	; slot10 = "iconFoil"
		1049	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		1050	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1051	[  0]	KSTR 	  7		551	; slot7 = "tooltip"
		1052	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1053	[  0]	KSTR 	  8		544	; slot8 = "cornerRadiusPx"
		1054	[  0]	KSTR 	  9		551	; slot9 = "tooltip"
		1055	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1056	[  0]	KSTR 	 10		544	; slot10 = "cornerRadiusPx"
		1057	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1058	[  0]	IST  	   		9	; if slot9
		1059	[  0]	JMP  	 10		1	; 	goto 1061
		1060	[  0]	KSHORT	  9		6	; slot9 = 6
		1061	[  0]	TSETV	  9	7	8	; slot7[slot8] = slot9
		1062	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1063	[  0]	KSTR 	  8		543	; slot8 = "suddenDeathAlert"
		1064	[  0]	TGETV	  8	0	8	; slot8 = slot0[slot8]
		1065	[  0]	IST  	   		8	; if slot8
		1066	[  0]	JMP  	  9		1	; 	goto 1068
		1067	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
		1068	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1069	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1070	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1071	[  0]	KSTR 	  8		542	; slot8 = "enabled"
		1072	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1073	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1074	[  0]	KSTR 	 10		542	; slot10 = "enabled"
		1075	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1076	[  0]	ISNEP	  9		1	; if slot9 ~= false
		1077	[  0]	JMP  	  9		2	; 	goto 1080
		1078	[  0]	KPRI 	  9		1	; slot9 = false
		1079	[  0]	JMP  	 10		1	; 	goto 1081
		1080	[  0]	KPRI 	  9		2	; slot9 = true
		1081	[  0]	TSETV	  9	7	8	; slot7[slot8] = slot9
		1082	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1083	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1084	[  0]	KSTR 	  8		541	; slot8 = "spring"
		1085	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1086	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1087	[  0]	KSTR 	 10		541	; slot10 = "spring"
		1088	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1089	[  0]	IST  	   		9	; if slot9
		1090	[  0]	JMP  	 10		11	; 	goto 1102
		1091	[  0]	KSTR 	  9		540	; slot9 = "infoOverlay"
		1092	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1093	[  0]	ISF  	   		9	; if not slot9
		1094	[  0]	JMP  	 10		6	; 	goto 1101
		1095	[  0]	KSTR 	  9		540	; slot9 = "infoOverlay"
		1096	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1097	[  0]	KSTR 	 10		541	; slot10 = "spring"
		1098	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1099	[  0]	IST  	   		9	; if slot9
		1100	[  0]	JMP  	 10		1	; 	goto 1102
		1101	[  0]	TDUP 	  9		539	; slot9 = copy table#k539
		1102	[  0]	TSETV	  9	7	8	; slot7[slot8] = slot9
		1103	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1104	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1105	[  0]	KSTR 	  8		538	; slot8 = "visibleY"
		1106	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1107	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1108	[  0]	KSTR 	 10		538	; slot10 = "visibleY"
		1109	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1110	[  0]	ISEQP	  9		0	; if slot9 == nil
		1111	[  0]	JMP  	  9		6	; 	goto 1118
		1112	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1113	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1114	[  0]	KSTR 	 10		538	; slot10 = "visibleY"
		1115	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1116	[  0]	IST  	   		9	; if slot9
		1117	[  0]	JMP  	 10		11	; 	goto 1129
		1118	[  0]	KSTR 	  9		540	; slot9 = "infoOverlay"
		1119	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1120	[  0]	ISF  	   		9	; if not slot9
		1121	[  0]	JMP  	 10		6	; 	goto 1128
		1122	[  0]	KSTR 	  9		540	; slot9 = "infoOverlay"
		1123	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1124	[  0]	KSTR 	 10		538	; slot10 = "visibleY"
		1125	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1126	[  0]	IST  	   		9	; if slot9
		1127	[  0]	JMP  	 10		1	; 	goto 1129
		1128	[  0]	KSHORT	  9		0	; slot9 = 0
		1129	[  0]	TSETV	  9	7	8	; slot7[slot8] = slot9
		1130	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1131	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1132	[  0]	KSTR 	  8		537	; slot8 = "hiddenY"
		1133	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1134	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1135	[  0]	KSTR 	 10		537	; slot10 = "hiddenY"
		1136	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1137	[  0]	ISEQP	  9		0	; if slot9 == nil
		1138	[  0]	JMP  	  9		6	; 	goto 1145
		1139	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1140	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1141	[  0]	KSTR 	 10		537	; slot10 = "hiddenY"
		1142	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1143	[  0]	IST  	   		9	; if slot9
		1144	[  0]	JMP  	 10		22	; 	goto 1167
		1145	[  0]	KSTR 	  9		540	; slot9 = "infoOverlay"
		1146	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1147	[  0]	ISF  	   		9	; if not slot9
		1148	[  0]	JMP  	 10		6	; 	goto 1155
		1149	[  0]	KSTR 	  9		540	; slot9 = "infoOverlay"
		1150	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1151	[  0]	KSTR 	 10		537	; slot10 = "hiddenY"
		1152	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1153	[  0]	IST  	   		9	; if slot9
		1154	[  0]	JMP  	 10		12	; 	goto 1167
		1155	[  0]	KSTR 	  9		639	; slot9 = "virtual"
		1156	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1157	[  0]	ISF  	   		9	; if not slot9
		1158	[  0]	JMP  	 10		6	; 	goto 1165
		1159	[  0]	KSTR 	  9		639	; slot9 = "virtual"
		1160	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1161	[  0]	KSTR 	 10		635	; slot10 = "H"
		1162	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1163	[  0]	IST  	   		9	; if slot9
		1164	[  0]	JMP  	 10		1	; 	goto 1166
		1165	[  0]	KSHORT	  9		128	; slot9 = 128
		1166	[  0]	UNM  	  9		9	; slot9 = -slot9
		1167	[  0]	TSETV	  9	7	8	; slot7[slot8] = slot9
		1168	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1169	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1170	[  0]	KSTR 	  8		536	; slot8 = "holdSec"
		1171	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1172	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1173	[  0]	KSTR 	 10		536	; slot10 = "holdSec"
		1174	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1175	[  0]	IST  	   		9	; if slot9
		1176	[  0]	JMP  	 10		1	; 	goto 1178
		1177	[  0]	KSHORT	  9		4	; slot9 = 4
		1178	[  0]	TSETV	  9	7	8	; slot7[slot8] = slot9
		1179	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1180	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1181	[  0]	KSTR 	  8		535	; slot8 = "ropeEnabled"
		1182	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1183	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1184	[  0]	KSTR 	 10		535	; slot10 = "ropeEnabled"
		1185	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1186	[  0]	ISNEP	  9		1	; if slot9 ~= false
		1187	[  0]	JMP  	  9		2	; 	goto 1190
		1188	[  0]	KPRI 	  9		1	; slot9 = false
		1189	[  0]	JMP  	 10		1	; 	goto 1191
		1190	[  0]	KPRI 	  9		2	; slot9 = true
		1191	[  0]	TSETV	  9	7	8	; slot7[slot8] = slot9
		1192	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1193	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1194	[  0]	KSTR 	  8		534	; slot8 = "ropeYOffsetPx"
		1195	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1196	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1197	[  0]	KSTR 	 10		534	; slot10 = "ropeYOffsetPx"
		1198	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1199	[  0]	ISEQP	  9		0	; if slot9 == nil
		1200	[  0]	JMP  	  9		6	; 	goto 1207
		1201	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1202	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1203	[  0]	KSTR 	 10		534	; slot10 = "ropeYOffsetPx"
		1204	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1205	[  0]	IST  	   		9	; if slot9
		1206	[  0]	JMP  	 10		12	; 	goto 1219
		1207	[  0]	KSTR 	  9		540	; slot9 = "infoOverlay"
		1208	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1209	[  0]	ISF  	   		9	; if not slot9
		1210	[  0]	JMP  	 10		6	; 	goto 1217
		1211	[  0]	KSTR 	  9		540	; slot9 = "infoOverlay"
		1212	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1213	[  0]	KSTR 	 10		534	; slot10 = "ropeYOffsetPx"
		1214	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1215	[  0]	IST  	   		9	; if slot9
		1216	[  0]	JMP  	 10		1	; 	goto 1218
		1217	[  0]	KSHORT	  9		0	; slot9 = 0
		1218	[  0]	SUBVN	  9	9	8	; slot9 = slot9 - 10
		1219	[  0]	TSETV	  9	7	8	; slot7[slot8] = slot9
		1220	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1221	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1222	[  0]	KSTR 	  8		543	; slot8 = "suddenDeathAlert"
		1223	[  0]	TGETV	  8	0	8	; slot8 = slot0[slot8]
		1224	[  0]	TGETS	  8	8	888	; slot8 = slot8.text
		1225	[  0]	IST  	   		8	; if <unknown table>.text
		1226	[  0]	JMP  	  9		1	; 	goto 1228
		1227	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
		1228	[  0]	TSETS	  8	7	888	; slot7.text = slot8
		1229	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1230	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1231	[  0]	TGETS	  7	7	888	; slot7 = slot7.text
		1232	[  0]	KSTR 	  8		543	; slot8 = "suddenDeathAlert"
		1233	[  0]	TGETV	  8	0	8	; slot8 = slot0[slot8]
		1234	[  0]	TGETS	  8	8	888	; slot8 = slot8.text
		1235	[  0]	TGETS	  8	8	969	; slot8 = <unknown table>.text.scale
		1236	[  0]	IST  	   		8	; if <unknown table>.text.scale
		1237	[  0]	JMP  	  9		1	; 	goto 1239
		1238	[  0]	KSHORT	  8		1	; slot8 = 1
		1239	[  0]	TSETS	  8	7	969	; <unknown table>.text.scale = slot8
		1240	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1241	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1242	[  0]	TGETS	  7	7	888	; slot7 = slot7.text
		1243	[  0]	KSTR 	  8		533	; slot8 = "integerScale"
		1244	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1245	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1246	[  0]	TGETS	  9	9	888	; slot9 = slot9.text
		1247	[  0]	KSTR 	 10		533	; slot10 = "integerScale"
		1248	[  0]	TGETV	  9	9	10	; slot9 = <unknown table>.text[slot10]
		1249	[  0]	ISNEP	  9		1	; if slot9 ~= false
		1250	[  0]	JMP  	  9		2	; 	goto 1253
		1251	[  0]	KPRI 	  9		1	; slot9 = false
		1252	[  0]	JMP  	 10		1	; 	goto 1254
		1253	[  0]	KPRI 	  9		2	; slot9 = true
		1254	[  0]	TSETV	  9	7	8	; <unknown table>.text[slot8] = slot9
		1255	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1256	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1257	[  0]	TGETS	  7	7	888	; slot7 = slot7.text
		1258	[  0]	KSTR 	  8		532	; slot8 = "titleX"
		1259	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1260	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1261	[  0]	TGETS	  9	9	888	; slot9 = slot9.text
		1262	[  0]	KSTR 	 10		532	; slot10 = "titleX"
		1263	[  0]	TGETV	  9	9	10	; slot9 = <unknown table>.text[slot10]
		1264	[  0]	IST  	   		9	; if slot9
		1265	[  0]	JMP  	 10		1	; 	goto 1267
		1266	[  0]	KSHORT	  9		474	; slot9 = 474
		1267	[  0]	TSETV	  9	7	8	; <unknown table>.text[slot8] = slot9
		1268	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1269	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1270	[  0]	TGETS	  7	7	888	; slot7 = slot7.text
		1271	[  0]	KSTR 	  8		531	; slot8 = "titleY"
		1272	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1273	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1274	[  0]	TGETS	  9	9	888	; slot9 = slot9.text
		1275	[  0]	KSTR 	 10		531	; slot10 = "titleY"
		1276	[  0]	TGETV	  9	9	10	; slot9 = <unknown table>.text[slot10]
		1277	[  0]	IST  	   		9	; if slot9
		1278	[  0]	JMP  	 10		1	; 	goto 1280
		1279	[  0]	KSHORT	  9		68	; slot9 = 68
		1280	[  0]	TSETV	  9	7	8	; <unknown table>.text[slot8] = slot9
		1281	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1282	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1283	[  0]	TGETS	  7	7	888	; slot7 = slot7.text
		1284	[  0]	KSTR 	  8		640	; slot8 = "colors"
		1285	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1286	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1287	[  0]	TGETS	  9	9	888	; slot9 = slot9.text
		1288	[  0]	KSTR 	 10		640	; slot10 = "colors"
		1289	[  0]	TGETV	  9	9	10	; slot9 = <unknown table>.text[slot10]
		1290	[  0]	IST  	   		9	; if slot9
		1291	[  0]	JMP  	 10		16	; 	goto 1308
		1292	[  0]	TDUP 	  9		529	; slot9 = copy table#k529
		1293	[  0]	TDUP 	 10		530	; slot10 = copy table#k530
		1294	[  0]	KSTR 	 11		528	; slot11 = "base"
		1295	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		1296	[  0]	TDUP 	 10		527	; slot10 = copy table#k527
		1297	[  0]	KSTR 	 11		526	; slot11 = "judge"
		1298	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		1299	[  0]	TDUP 	 10		525	; slot10 = copy table#k525
		1300	[  0]	KSTR 	 11		524	; slot11 = "boss"
		1301	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		1302	[  0]	TDUP 	 10		523	; slot10 = copy table#k523
		1303	[  0]	KSTR 	 11		522	; slot11 = "numberBlink"
		1304	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		1305	[  0]	TDUP 	 10		521	; slot10 = copy table#k521
		1306	[  0]	KSTR 	 11		520	; slot11 = "powerGap"
		1307	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		1308	[  0]	TSETV	  9	7	8	; <unknown table>.text[slot8] = slot9
		1309	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1310	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1311	[  0]	TGETS	  7	7	888	; slot7 = slot7.text
		1312	[  0]	KSTR 	  8		519	; slot8 = "titleNumberBlink"
		1313	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1314	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1315	[  0]	TGETS	  9	9	888	; slot9 = slot9.text
		1316	[  0]	KSTR 	 10		519	; slot10 = "titleNumberBlink"
		1317	[  0]	TGETV	  9	9	10	; slot9 = <unknown table>.text[slot10]
		1318	[  0]	IST  	   		9	; if slot9
		1319	[  0]	JMP  	 10		1	; 	goto 1321
		1320	[  0]	TDUP 	  9		518	; slot9 = copy table#k518
		1321	[  0]	TSETV	  9	7	8	; <unknown table>.text[slot8] = slot9
		1322	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1323	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1324	[  0]	TGETS	  7	7	888	; slot7 = slot7.text
		1325	[  0]	KSTR 	  8		517	; slot8 = "dangerX"
		1326	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1327	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1328	[  0]	TGETS	  9	9	888	; slot9 = slot9.text
		1329	[  0]	KSTR 	 10		517	; slot10 = "dangerX"
		1330	[  0]	TGETV	  9	9	10	; slot9 = <unknown table>.text[slot10]
		1331	[  0]	IST  	   		9	; if slot9
		1332	[  0]	JMP  	 10		1	; 	goto 1334
		1333	[  0]	KSHORT	  9		474	; slot9 = 474
		1334	[  0]	TSETV	  9	7	8	; <unknown table>.text[slot8] = slot9
		1335	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1336	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1337	[  0]	TGETS	  7	7	888	; slot7 = slot7.text
		1338	[  0]	KSTR 	  8		516	; slot8 = "dangerY"
		1339	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1340	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1341	[  0]	TGETS	  9	9	888	; slot9 = slot9.text
		1342	[  0]	KSTR 	 10		516	; slot10 = "dangerY"
		1343	[  0]	TGETV	  9	9	10	; slot9 = <unknown table>.text[slot10]
		1344	[  0]	IST  	   		9	; if slot9
		1345	[  0]	JMP  	 10		1	; 	goto 1347
		1346	[  0]	KSHORT	  9		92	; slot9 = 92
		1347	[  0]	TSETV	  9	7	8	; <unknown table>.text[slot8] = slot9
		1348	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1349	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1350	[  0]	TGETS	  7	7	888	; slot7 = slot7.text
		1351	[  0]	KSTR 	  8		515	; slot8 = "dangerLabelYOffsetPx"
		1352	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1353	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1354	[  0]	TGETS	  9	9	888	; slot9 = slot9.text
		1355	[  0]	KSTR 	 10		515	; slot10 = "dangerLabelYOffsetPx"
		1356	[  0]	TGETV	  9	9	10	; slot9 = <unknown table>.text[slot10]
		1357	[  0]	IST  	   		9	; if slot9
		1358	[  0]	JMP  	 10		1	; 	goto 1360
		1359	[  0]	KSHORT	  9		65534	; slot9 = 65534
		1360	[  0]	TSETV	  9	7	8	; <unknown table>.text[slot8] = slot9
		1361	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1362	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1363	[  0]	TGETS	  7	7	888	; slot7 = slot7.text
		1364	[  0]	KSTR 	  8		514	; slot8 = "titleXOffsetEn"
		1365	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1366	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1367	[  0]	TGETS	  9	9	888	; slot9 = slot9.text
		1368	[  0]	KSTR 	 10		514	; slot10 = "titleXOffsetEn"
		1369	[  0]	TGETV	  9	9	10	; slot9 = <unknown table>.text[slot10]
		1370	[  0]	IST  	   		9	; if slot9
		1371	[  0]	JMP  	 10		1	; 	goto 1373
		1372	[  0]	KSHORT	  9		65534	; slot9 = 65534
		1373	[  0]	TSETV	  9	7	8	; <unknown table>.text[slot8] = slot9
		1374	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1375	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1376	[  0]	TGETS	  7	7	888	; slot7 = slot7.text
		1377	[  0]	KSTR 	  8		513	; slot8 = "dangerXOffsetEn"
		1378	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1379	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1380	[  0]	TGETS	  9	9	888	; slot9 = slot9.text
		1381	[  0]	KSTR 	 10		513	; slot10 = "dangerXOffsetEn"
		1382	[  0]	TGETV	  9	9	10	; slot9 = <unknown table>.text[slot10]
		1383	[  0]	IST  	   		9	; if slot9
		1384	[  0]	JMP  	 10		1	; 	goto 1386
		1385	[  0]	KSHORT	  9		65532	; slot9 = 65532
		1386	[  0]	TSETV	  9	7	8	; <unknown table>.text[slot8] = slot9
		1387	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1388	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1389	[  0]	TGETS	  7	7	888	; slot7 = slot7.text
		1390	[  0]	KSTR 	  8		512	; slot8 = "iconStartGapPx"
		1391	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1392	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1393	[  0]	TGETS	  9	9	888	; slot9 = slot9.text
		1394	[  0]	KSTR 	 10		512	; slot10 = "iconStartGapPx"
		1395	[  0]	TGETV	  9	9	10	; slot9 = <unknown table>.text[slot10]
		1396	[  0]	IST  	   		9	; if slot9
		1397	[  0]	JMP  	 10		1	; 	goto 1399
		1398	[  0]	KSHORT	  9		4	; slot9 = 4
		1399	[  0]	TSETV	  9	7	8	; <unknown table>.text[slot8] = slot9
		1400	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1401	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1402	[  0]	TGETS	  7	7	888	; slot7 = slot7.text
		1403	[  0]	KSTR 	  8		511	; slot8 = "iconScale"
		1404	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1405	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1406	[  0]	TGETS	  9	9	888	; slot9 = slot9.text
		1407	[  0]	KSTR 	 10		511	; slot10 = "iconScale"
		1408	[  0]	TGETV	  9	9	10	; slot9 = <unknown table>.text[slot10]
		1409	[  0]	IST  	   		9	; if slot9
		1410	[  0]	JMP  	 10		1	; 	goto 1412
		1411	[  0]	KSHORT	  9		1	; slot9 = 1
		1412	[  0]	TSETV	  9	7	8	; <unknown table>.text[slot8] = slot9
		1413	[  0]	KSTR 	  7		543	; slot7 = "suddenDeathAlert"
		1414	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1415	[  0]	TGETS	  7	7	888	; slot7 = slot7.text
		1416	[  0]	KSTR 	  8		510	; slot8 = "iconGapPx"
		1417	[  0]	KSTR 	  9		543	; slot9 = "suddenDeathAlert"
		1418	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1419	[  0]	TGETS	  9	9	888	; slot9 = slot9.text
		1420	[  0]	KSTR 	 10		510	; slot10 = "iconGapPx"
		1421	[  0]	TGETV	  9	9	10	; slot9 = <unknown table>.text[slot10]
		1422	[  0]	IST  	   		9	; if slot9
		1423	[  0]	JMP  	 10		1	; 	goto 1425
		1424	[  0]	KSHORT	  9		2	; slot9 = 2
		1425	[  0]	TSETV	  9	7	8	; <unknown table>.text[slot8] = slot9
		1426	[  0]	KSTR 	  7		509	; slot7 = "judgementCountdownText"
		1427	[  0]	KSTR 	  8		509	; slot8 = "judgementCountdownText"
		1428	[  0]	TGETV	  8	0	8	; slot8 = slot0[slot8]
		1429	[  0]	IST  	   		8	; if slot8
		1430	[  0]	JMP  	  9		5	; 	goto 1436
		1431	[  0]	KSTR 	  8		508	; slot8 = "judgementWavesLeftHud"
		1432	[  0]	TGETV	  8	0	8	; slot8 = slot0[slot8]
		1433	[  0]	IST  	   		8	; if slot8
		1434	[  0]	JMP  	  9		1	; 	goto 1436
		1435	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
		1436	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1437	[  0]	KSTR 	  7		509	; slot7 = "judgementCountdownText"
		1438	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1439	[  0]	KSTR 	  8		542	; slot8 = "enabled"
		1440	[  0]	KSTR 	  9		509	; slot9 = "judgementCountdownText"
		1441	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1442	[  0]	KSTR 	 10		542	; slot10 = "enabled"
		1443	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1444	[  0]	ISNEP	  9		1	; if slot9 ~= false
		1445	[  0]	JMP  	  9		2	; 	goto 1448
		1446	[  0]	KPRI 	  9		1	; slot9 = false
		1447	[  0]	JMP  	 10		1	; 	goto 1449
		1448	[  0]	KPRI 	  9		2	; slot9 = true
		1449	[  0]	TSETV	  9	7	8	; slot7[slot8] = slot9
		1450	[  0]	KSTR 	  7		509	; slot7 = "judgementCountdownText"
		1451	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1452	[  0]	KSTR 	  8		507	; slot8 = "x"
		1453	[  0]	KSTR 	  9		509	; slot9 = "judgementCountdownText"
		1454	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1455	[  0]	KSTR 	 10		507	; slot10 = "x"
		1456	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1457	[  0]	ISEQP	  9		0	; if slot9 == nil
		1458	[  0]	JMP  	  9		6	; 	goto 1465
		1459	[  0]	KSTR 	  9		509	; slot9 = "judgementCountdownText"
		1460	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1461	[  0]	KSTR 	 10		507	; slot10 = "x"
		1462	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1463	[  0]	IST  	   		9	; if slot9
		1464	[  0]	JMP  	 10		1	; 	goto 1466
		1465	[  0]	KSHORT	  9		472	; slot9 = 472
		1466	[  0]	TSETV	  9	7	8	; slot7[slot8] = slot9
		1467	[  0]	KSTR 	  7		509	; slot7 = "judgementCountdownText"
		1468	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1469	[  0]	KSTR 	  8		506	; slot8 = "y"
		1470	[  0]	KSTR 	  9		509	; slot9 = "judgementCountdownText"
		1471	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1472	[  0]	KSTR 	 10		506	; slot10 = "y"
		1473	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1474	[  0]	ISEQP	  9		0	; if slot9 == nil
		1475	[  0]	JMP  	  9		6	; 	goto 1482
		1476	[  0]	KSTR 	  9		509	; slot9 = "judgementCountdownText"
		1477	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1478	[  0]	KSTR 	 10		506	; slot10 = "y"
		1479	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1480	[  0]	IST  	   		9	; if slot9
		1481	[  0]	JMP  	 10		1	; 	goto 1483
		1482	[  0]	KSHORT	  9		10	; slot9 = 10
		1483	[  0]	TSETV	  9	7	8	; slot7[slot8] = slot9
		1484	[  0]	KSTR 	  7		509	; slot7 = "judgementCountdownText"
		1485	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1486	[  0]	KSTR 	  8		505	; slot8 = "maxW"
		1487	[  0]	KSTR 	  9		509	; slot9 = "judgementCountdownText"
		1488	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1489	[  0]	KSTR 	 10		505	; slot10 = "maxW"
		1490	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1491	[  0]	IST  	   		9	; if slot9
		1492	[  0]	JMP  	 10		1	; 	goto 1494
		1493	[  0]	KSHORT	  9		76	; slot9 = 76
		1494	[  0]	TSETV	  9	7	8	; slot7[slot8] = slot9
		1495	[  0]	KSTR 	  7		509	; slot7 = "judgementCountdownText"
		1496	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1497	[  0]	KSTR 	  8		509	; slot8 = "judgementCountdownText"
		1498	[  0]	TGETV	  8	0	8	; slot8 = slot0[slot8]
		1499	[  0]	TGETS	  8	8	969	; slot8 = slot8.scale
		1500	[  0]	IST  	   		8	; if <unknown table>.scale
		1501	[  0]	JMP  	  9		1	; 	goto 1503
		1502	[  0]	KSHORT	  8		1	; slot8 = 1
		1503	[  0]	TSETS	  8	7	969	; slot7.scale = slot8
		1504	[  0]	KSTR 	  7		509	; slot7 = "judgementCountdownText"
		1505	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1506	[  0]	KSTR 	  8		533	; slot8 = "integerScale"
		1507	[  0]	KSTR 	  9		509	; slot9 = "judgementCountdownText"
		1508	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1509	[  0]	KSTR 	 10		533	; slot10 = "integerScale"
		1510	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1511	[  0]	ISNEP	  9		1	; if slot9 ~= false
		1512	[  0]	JMP  	  9		2	; 	goto 1515
		1513	[  0]	KPRI 	  9		1	; slot9 = false
		1514	[  0]	JMP  	 10		1	; 	goto 1516
		1515	[  0]	KPRI 	  9		2	; slot9 = true
		1516	[  0]	TSETV	  9	7	8	; slot7[slot8] = slot9
		1517	[  0]	KSTR 	  7		509	; slot7 = "judgementCountdownText"
		1518	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1519	[  0]	KSTR 	  8		511	; slot8 = "iconScale"
		1520	[  0]	KSTR 	  9		509	; slot9 = "judgementCountdownText"
		1521	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1522	[  0]	KSTR 	 10		511	; slot10 = "iconScale"
		1523	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1524	[  0]	IST  	   		9	; if slot9
		1525	[  0]	JMP  	 10		1	; 	goto 1527
		1526	[  0]	KSHORT	  9		1	; slot9 = 1
		1527	[  0]	TSETV	  9	7	8	; slot7[slot8] = slot9
		1528	[  0]	KSTR 	  7		509	; slot7 = "judgementCountdownText"
		1529	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1530	[  0]	KSTR 	  8		510	; slot8 = "iconGapPx"
		1531	[  0]	KSTR 	  9		509	; slot9 = "judgementCountdownText"
		1532	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1533	[  0]	KSTR 	 10		510	; slot10 = "iconGapPx"
		1534	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1535	[  0]	ISEQP	  9		0	; if slot9 == nil
		1536	[  0]	JMP  	  9		6	; 	goto 1543
		1537	[  0]	KSTR 	  9		509	; slot9 = "judgementCountdownText"
		1538	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1539	[  0]	KSTR 	 10		510	; slot10 = "iconGapPx"
		1540	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1541	[  0]	IST  	   		9	; if slot9
		1542	[  0]	JMP  	 10		1	; 	goto 1544
		1543	[  0]	KSHORT	  9		2	; slot9 = 2
		1544	[  0]	TSETV	  9	7	8	; slot7[slot8] = slot9
		1545	[  0]	KSTR 	  7		509	; slot7 = "judgementCountdownText"
		1546	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1547	[  0]	KSTR 	  8		504	; slot8 = "inWaveIconGapPx"
		1548	[  0]	KSTR 	  9		509	; slot9 = "judgementCountdownText"
		1549	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1550	[  0]	KSTR 	 10		504	; slot10 = "inWaveIconGapPx"
		1551	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1552	[  0]	ISEQP	  9		0	; if slot9 == nil
		1553	[  0]	JMP  	  9		6	; 	goto 1560
		1554	[  0]	KSTR 	  9		509	; slot9 = "judgementCountdownText"
		1555	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1556	[  0]	KSTR 	 10		504	; slot10 = "inWaveIconGapPx"
		1557	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1558	[  0]	IST  	   		9	; if slot9
		1559	[  0]	JMP  	 10		1	; 	goto 1561
		1560	[  0]	KSHORT	  9		6	; slot9 = 6
		1561	[  0]	TSETV	  9	7	8	; slot7[slot8] = slot9
		1562	[  0]	KSTR 	  7		509	; slot7 = "judgementCountdownText"
		1563	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1564	[  0]	KSTR 	  8		640	; slot8 = "colors"
		1565	[  0]	KSTR 	  9		509	; slot9 = "judgementCountdownText"
		1566	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1567	[  0]	KSTR 	 10		640	; slot10 = "colors"
		1568	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1569	[  0]	IST  	   		9	; if slot9
		1570	[  0]	JMP  	 10		10	; 	goto 1581
		1571	[  0]	TDUP 	  9		502	; slot9 = copy table#k502
		1572	[  0]	TDUP 	 10		503	; slot10 = copy table#k503
		1573	[  0]	KSTR 	 11		528	; slot11 = "base"
		1574	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		1575	[  0]	TDUP 	 10		501	; slot10 = copy table#k501
		1576	[  0]	KSTR 	 11		526	; slot11 = "judge"
		1577	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		1578	[  0]	TDUP 	 10		500	; slot10 = copy table#k500
		1579	[  0]	KSTR 	 11		522	; slot11 = "numberBlink"
		1580	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		1581	[  0]	TSETV	  9	7	8	; slot7[slot8] = slot9
		1582	[  0]	KSTR 	  7		509	; slot7 = "judgementCountdownText"
		1583	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1584	[  0]	KSTR 	  8		499	; slot8 = "blink"
		1585	[  0]	KSTR 	  9		509	; slot9 = "judgementCountdownText"
		1586	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1587	[  0]	KSTR 	 10		499	; slot10 = "blink"
		1588	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1589	[  0]	IST  	   		9	; if slot9
		1590	[  0]	JMP  	 10		1	; 	goto 1592
		1591	[  0]	TDUP 	  9		498	; slot9 = copy table#k498
		1592	[  0]	TSETV	  9	7	8	; slot7[slot8] = slot9
		1593	[  0]	KSTR 	  7		551	; slot7 = "tooltip"
		1594	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1595	[  0]	KSTR 	  8		497	; slot8 = "padPx"
		1596	[  0]	KSTR 	  9		551	; slot9 = "tooltip"
		1597	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		1598	[  0]	KSTR 	 10		497	; slot10 = "padPx"
		1599	[  0]	TGETV	  9	9	10	; slot9 = slot9[slot10]
		1600	[  0]	IST  	   		9	; if slot9
		1601	[  0]	JMP  	 10		5	; 	goto 1607
		1602	[  0]	GGET 	  9		782	; slot9 = _env["math"]
		1603	[  0]	TGETS	  9	9	780	; slot9 = math.floor
		1604	[  0]	TGETS	 11	0	969	; slot11 = slot0.scale
		1605	[  0]	MULNV	 11	11	10	; slot11 = 6 * <unknown table>.scale
		1606	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		1607	[  0]	TSETV	  9	7	8	; slot7[slot8] = math.floor
		1608	[  0]	KSTR 	  7		496	; slot7 = "unitSpawnBanner"
		1609	[  0]	KSTR 	  8		496	; slot8 = "unitSpawnBanner"
		1610	[  0]	TGETV	  8	0	8	; slot8 = slot0[slot8]
		1611	[  0]	IST  	   		8	; if slot8
		1612	[  0]	JMP  	  9		1	; 	goto 1614
		1613	[  0]	TDUP 	  8		495	; slot8 = copy table#k495
		1614	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1615	[  0]	KSTR 	  7		494	; slot7 = "victorySprite"
		1616	[  0]	KSTR 	  8		494	; slot8 = "victorySprite"
		1617	[  0]	TGETV	  8	0	8	; slot8 = slot0[slot8]
		1618	[  0]	IST  	   		8	; if slot8
		1619	[  0]	JMP  	  9		1	; 	goto 1621
		1620	[  0]	TDUP 	  8		493	; slot8 = copy table#k493
		1621	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1622	[  0]	KSTR 	  7		492	; slot7 = "defeatSprite"
		1623	[  0]	KSTR 	  8		492	; slot8 = "defeatSprite"
		1624	[  0]	TGETV	  8	0	8	; slot8 = slot0[slot8]
		1625	[  0]	IST  	   		8	; if slot8
		1626	[  0]	JMP  	  9		1	; 	goto 1628
		1627	[  0]	TDUP 	  8		491	; slot8 = copy table#k491
		1628	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1629	[  0]	KSTR 	  7		490	; slot7 = "upgrade"
		1630	[  0]	KSTR 	  8		490	; slot8 = "upgrade"
		1631	[  0]	TGETV	  8	0	8	; slot8 = slot0[slot8]
		1632	[  0]	IST  	   		8	; if slot8
		1633	[  0]	JMP  	  9		1	; 	goto 1635
		1634	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
		1635	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1636	[  0]	KSTR 	  7		490	; slot7 = "upgrade"
		1637	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		1638	[  0]	KSTR 	  8		551	; slot8 = "tooltip"
		1639	[  0]	TDUP 	  9		489	; slot9 = copy table#k489
		1640	[  0]	TSETV	  9	7	8	; slot7[slot8] = slot9
		1641	[  0]	KSTR 	  7		488	; slot7 = "classCard"
		1642	[  0]	TDUP 	  8		487	; slot8 = copy table#k487
		1643	[  0]	TGETS	  9	0	754	; slot9 = slot0.fontClassCard
		1644	[  0]	TSETS	  9	8	770	; slot8.font = <unknown table>.fontClassCard
		1645	[  0]	TDUP 	  9		486	; slot9 = copy table#k486
		1646	[  0]	KSTR 	 10		485	; slot10 = "appear"
		1647	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		1648	[  0]	TDUP 	  9		484	; slot9 = copy table#k484
		1649	[  0]	KSTR 	 10		483	; slot10 = "overlayMask"
		1650	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		1651	[  0]	TDUP 	  9		482	; slot9 = copy table#k482
		1652	[  0]	TSETS	  9	8	854	; slot8.hover = slot9
		1653	[  0]	TDUP 	  9		481	; slot9 = copy table#k481
		1654	[  0]	KSTR 	 10		480	; slot10 = "press"
		1655	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		1656	[  0]	TDUP 	  9		479	; slot9 = copy table#k479
		1657	[  0]	TSETS	  9	8	761	; slot8.resolve = slot9
		1658	[  0]	TDUP 	  9		478	; slot9 = copy table#k478
		1659	[  0]	KSTR 	 10		551	; slot10 = "tooltip"
		1660	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		1661	[  0]	TDUP 	  9		477	; slot9 = copy table#k477
		1662	[  0]	KSTR 	 10		476	; slot10 = "statLabelColor"
		1663	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		1664	[  0]	TDUP 	  9		475	; slot9 = copy table#k475
		1665	[  0]	KSTR 	 10		474	; slot10 = "statValueColor"
		1666	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		1667	[  0]	TDUP 	  9		473	; slot9 = copy table#k473
		1668	[  0]	KSTR 	 10		472	; slot10 = "statDeltaColor"
		1669	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		1670	[  0]	TDUP 	  9		471	; slot9 = copy table#k471
		1671	[  0]	TSETS	  9	8	882	; slot8.skillFrame = slot9
		1672	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1673	[  0]	KSTR 	  7		470	; slot7 = "classTitleText"
		1674	[  0]	TDUP 	  8		469	; slot8 = copy table#k469
		1675	[  0]	TDUP 	  9		468	; slot9 = copy table#k468
		1676	[  0]	TSETS	  9	8	961	; slot8.color = slot9
		1677	[  0]	TDUP 	  9		466	; slot9 = copy table#k466
		1678	[  0]	TDUP 	 10		467	; slot10 = copy table#k467
		1679	[  0]	TSETS	 10	9	961	; slot9.color = slot10
		1680	[  0]	KSTR 	 10		687	; slot10 = "outline"
		1681	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		1682	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1683	[  0]	KSTR 	  7		465	; slot7 = "heartNumber"
		1684	[  0]	TDUP 	  8		464	; slot8 = copy table#k464
		1685	[  0]	GGET 	  9		782	; slot9 = _env["math"]
		1686	[  0]	TGETS	  9	9	780	; slot9 = math.floor
		1687	[  0]	KSTR 	 11		639	; slot11 = "virtual"
		1688	[  0]	TGETV	 11	0	11	; slot11 = slot0[slot11]
		1689	[  0]	KSTR 	 12		637	; slot12 = "W"
		1690	[  0]	TGETV	 11	11	12	; slot11 = slot11[slot12]
		1691	[  0]	MULVN	 11	11	11	; slot11 = slot11 * 0.9
		1692	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		1693	[  0]	KSTR 	 10		507	; slot10 = "x"
		1694	[  0]	TSETV	  9	8	10	; slot8[slot10] = math.floor
		1695	[  0]	GGET 	  9		782	; slot9 = _env["math"]
		1696	[  0]	TGETS	  9	9	780	; slot9 = math.floor
		1697	[  0]	KSTR 	 11		639	; slot11 = "virtual"
		1698	[  0]	TGETV	 11	0	11	; slot11 = slot0[slot11]
		1699	[  0]	KSTR 	 12		635	; slot12 = "H"
		1700	[  0]	TGETV	 11	11	12	; slot11 = slot11[slot12]
		1701	[  0]	MULVN	 11	11	12	; slot11 = slot11 * 0.22
		1702	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		1703	[  0]	KSTR 	 10		506	; slot10 = "y"
		1704	[  0]	TSETV	  9	8	10	; slot8[slot10] = math.floor
		1705	[  0]	TDUP 	  9		463	; slot9 = copy table#k463
		1706	[  0]	TSETS	  9	8	961	; slot8.color = slot9
		1707	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1708	[  0]	KSTR 	  7		462	; slot7 = "heartShake"
		1709	[  0]	TDUP 	  8		461	; slot8 = copy table#k461
		1710	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1711	[  0]	KSTR 	  7		460	; slot7 = "heartIdle"
		1712	[  0]	TDUP 	  8		459	; slot8 = copy table#k459
		1713	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1714	[  0]	KSTR 	  7		458	; slot7 = "heartOverlay"
		1715	[  0]	TDUP 	  8		457	; slot8 = copy table#k457
		1716	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1717	[  0]	KSTR 	  7		456	; slot7 = "moneyDisplay"
		1718	[  0]	TDUP 	  8		455	; slot8 = copy table#k455
		1719	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1720	[  0]	KSTR 	  7		454	; slot7 = "goldDisplay"
		1721	[  0]	TDUP 	  8		453	; slot8 = copy table#k453
		1722	[  0]	TDUP 	  9		452	; slot9 = copy table#k452
		1723	[  0]	TSETS	  9	8	961	; slot8.color = slot9
		1724	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1725	[  0]	KSTR 	  7		451	; slot7 = "itemInventory"
		1726	[  0]	TDUP 	  8		441	; slot8 = copy table#k441
		1727	[  0]	TDUP 	  9		450	; slot9 = copy table#k450
		1728	[  0]	TDUP 	 10		449	; slot10 = copy table#k449
		1729	[  0]	KSTR 	 11		448	; slot11 = "clickPop"
		1730	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		1731	[  0]	TDUP 	 10		447	; slot10 = copy table#k447
		1732	[  0]	TDUP 	 11		446	; slot11 = copy table#k446
		1733	[  0]	TSETS	 11	10	961	; slot10.color = slot11
		1734	[  0]	TDUP 	 11		445	; slot11 = copy table#k445
		1735	[  0]	KSTR 	 12		444	; slot12 = "progressColor"
		1736	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		1737	[  0]	KSTR 	 11		443	; slot11 = "cooldown"
		1738	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		1739	[  0]	TDUP 	 10		442	; slot10 = copy table#k442
		1740	[  0]	KSTR 	 11		690	; slot11 = "shadow"
		1741	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		1742	[  0]	KSTR 	 10		440	; slot10 = "panel"
		1743	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		1744	[  0]	TDUP 	  9		439	; slot9 = copy table#k439
		1745	[  0]	TSETS	  9	8	851	; slot8.icon = slot9
		1746	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1747	[  0]	KSTR 	  7		438	; slot7 = "spinCountDisplay"
		1748	[  0]	TDUP 	  8		437	; slot8 = copy table#k437
		1749	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1750	[  0]	KSTR 	  7		436	; slot7 = "spinPriceDisplay"
		1751	[  0]	TDUP 	  8		435	; slot8 = copy table#k435
		1752	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1753	[  0]	KSTR 	  7		434	; slot7 = "slotBookIcon"
		1754	[  0]	TDUP 	  8		433	; slot8 = copy table#k433
		1755	[  0]	GGET 	  9		782	; slot9 = _env["math"]
		1756	[  0]	TGETS	  9	9	780	; slot9 = math.floor
		1757	[  0]	TGETS	 11	0	969	; slot11 = slot0.scale
		1758	[  0]	MULNV	 11	11	13	; slot11 = 3 * <unknown table>.scale
		1759	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		1760	[  0]	KSTR 	 10		432	; slot10 = "tooltipPadTopPx"
		1761	[  0]	TSETV	  9	8	10	; slot8[slot10] = math.floor
		1762	[  0]	GGET 	  9		782	; slot9 = _env["math"]
		1763	[  0]	TGETS	  9	9	780	; slot9 = math.floor
		1764	[  0]	TGETS	 11	0	969	; slot11 = slot0.scale
		1765	[  0]	MULNV	 11	11	13	; slot11 = 3 * <unknown table>.scale
		1766	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		1767	[  0]	KSTR 	 10		431	; slot10 = "tooltipPadBottomPx"
		1768	[  0]	TSETV	  9	8	10	; slot8[slot10] = math.floor
		1769	[  0]	GGET 	  9		782	; slot9 = _env["math"]
		1770	[  0]	TGETS	  9	9	780	; slot9 = math.floor
		1771	[  0]	TGETS	 11	0	969	; slot11 = slot0.scale
		1772	[  0]	MULNV	 11	11	13	; slot11 = 3 * <unknown table>.scale
		1773	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		1774	[  0]	KSTR 	 10		430	; slot10 = "tooltipPadLeftPx"
		1775	[  0]	TSETV	  9	8	10	; slot8[slot10] = math.floor
		1776	[  0]	GGET 	  9		782	; slot9 = _env["math"]
		1777	[  0]	TGETS	  9	9	780	; slot9 = math.floor
		1778	[  0]	TGETS	 11	0	969	; slot11 = slot0.scale
		1779	[  0]	MULNV	 11	11	13	; slot11 = 3 * <unknown table>.scale
		1780	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		1781	[  0]	KSTR 	 10		429	; slot10 = "tooltipPadRightPx"
		1782	[  0]	TSETV	  9	8	10	; slot8[slot10] = math.floor
		1783	[  0]	GGET 	  9		782	; slot9 = _env["math"]
		1784	[  0]	TGETS	  9	9	780	; slot9 = math.floor
		1785	[  0]	TGETS	 11	0	969	; slot11 = slot0.scale
		1786	[  0]	MULNV	 11	11	10	; slot11 = 6 * <unknown table>.scale
		1787	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		1788	[  0]	KSTR 	 10		428	; slot10 = "tooltipGapPx"
		1789	[  0]	TSETV	  9	8	10	; slot8[slot10] = math.floor
		1790	[  0]	GGET 	  9		782	; slot9 = _env["math"]
		1791	[  0]	TGETS	  9	9	780	; slot9 = math.floor
		1792	[  0]	TGETS	 11	0	969	; slot11 = slot0.scale
		1793	[  0]	MULNV	 11	11	10	; slot11 = 6 * <unknown table>.scale
		1794	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		1795	[  0]	KSTR 	 10		427	; slot10 = "tooltipRowGapPx"
		1796	[  0]	TSETV	  9	8	10	; slot8[slot10] = math.floor
		1797	[  0]	GGET 	  9		782	; slot9 = _env["math"]
		1798	[  0]	TGETS	  9	9	780	; slot9 = math.floor
		1799	[  0]	TGETS	 11	0	969	; slot11 = slot0.scale
		1800	[  0]	MULNV	 11	11	14	; slot11 = 8 * <unknown table>.scale
		1801	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		1802	[  0]	KSTR 	 10		426	; slot10 = "tooltipIconGapPx"
		1803	[  0]	TSETV	  9	8	10	; slot8[slot10] = math.floor
		1804	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1805	[  0]	KSTR 	  7		425	; slot7 = "spinstick"
		1806	[  0]	TDUP 	  8		424	; slot8 = copy table#k424
		1807	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1808	[  0]	KSTR 	  7		423	; slot7 = "sandboxNextLines"
		1809	[  0]	TDUP 	  8		422	; slot8 = copy table#k422
		1810	[  0]	GGET 	  9		782	; slot9 = _env["math"]
		1811	[  0]	TGETS	  9	9	780	; slot9 = math.floor
		1812	[  0]	TGETS	 11	0	969	; slot11 = slot0.scale
		1813	[  0]	MULNV	 11	11	10	; slot11 = 6 * <unknown table>.scale
		1814	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		1815	[  0]	KSTR 	 10		421	; slot10 = "labelDY"
		1816	[  0]	TSETV	  9	8	10	; slot8[slot10] = math.floor
		1817	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1818	[  0]	KSTR 	  7		420	; slot7 = "sandboxJungsu"
		1819	[  0]	TDUP 	  8		419	; slot8 = copy table#k419
		1820	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1821	[  0]	KSTR 	  7		418	; slot7 = "sandboxCoreEquip"
		1822	[  0]	TDUP 	  8		417	; slot8 = copy table#k417
		1823	[  0]	GGET 	  9		782	; slot9 = _env["math"]
		1824	[  0]	TGETS	  9	9	780	; slot9 = math.floor
		1825	[  0]	TGETS	 11	0	969	; slot11 = slot0.scale
		1826	[  0]	MULNV	 11	11	3	; slot11 = 14 * <unknown table>.scale
		1827	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		1828	[  0]	KSTR 	 10		416	; slot10 = "btnW"
		1829	[  0]	TSETV	  9	8	10	; slot8[slot10] = math.floor
		1830	[  0]	GGET 	  9		782	; slot9 = _env["math"]
		1831	[  0]	TGETS	  9	9	780	; slot9 = math.floor
		1832	[  0]	TGETS	 11	0	969	; slot11 = slot0.scale
		1833	[  0]	MULNV	 11	11	8	; slot11 = 10 * <unknown table>.scale
		1834	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		1835	[  0]	KSTR 	 10		415	; slot10 = "btnH"
		1836	[  0]	TSETV	  9	8	10	; slot8[slot10] = math.floor
		1837	[  0]	GGET 	  9		782	; slot9 = _env["math"]
		1838	[  0]	TGETS	  9	9	780	; slot9 = math.floor
		1839	[  0]	TGETS	 11	0	969	; slot11 = slot0.scale
		1840	[  0]	MULNV	 11	11	15	; slot11 = 4 * <unknown table>.scale
		1841	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		1842	[  0]	KSTR 	 10		414	; slot10 = "gap"
		1843	[  0]	TSETV	  9	8	10	; slot8[slot10] = math.floor
		1844	[  0]	GGET 	  9		782	; slot9 = _env["math"]
		1845	[  0]	TGETS	  9	9	780	; slot9 = math.floor
		1846	[  0]	TGETS	 11	0	969	; slot11 = slot0.scale
		1847	[  0]	MULNV	 11	11	16	; slot11 = 40 * <unknown table>.scale
		1848	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		1849	[  0]	KSTR 	 10		413	; slot10 = "equipW"
		1850	[  0]	TSETV	  9	8	10	; slot8[slot10] = math.floor
		1851	[  0]	GGET 	  9		782	; slot9 = _env["math"]
		1852	[  0]	TGETS	  9	9	780	; slot9 = math.floor
		1853	[  0]	TGETS	 11	0	969	; slot11 = slot0.scale
		1854	[  0]	MULNV	 11	11	6	; slot11 = 12 * <unknown table>.scale
		1855	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		1856	[  0]	KSTR 	 10		412	; slot10 = "equipH"
		1857	[  0]	TSETV	  9	8	10	; slot8[slot10] = math.floor
		1858	[  0]	GGET 	  9		782	; slot9 = _env["math"]
		1859	[  0]	TGETS	  9	9	780	; slot9 = math.floor
		1860	[  0]	TGETS	 11	0	969	; slot11 = slot0.scale
		1861	[  0]	MULNV	 11	11	10	; slot11 = 6 * <unknown table>.scale
		1862	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		1863	[  0]	KSTR 	 10		421	; slot10 = "labelDY"
		1864	[  0]	TSETV	  9	8	10	; slot8[slot10] = math.floor
		1865	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1866	[  0]	KSTR 	  7		411	; slot7 = "fireman"
		1867	[  0]	TDUP 	  8		410	; slot8 = copy table#k410
		1868	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1869	[  0]	KSTR 	  7		409	; slot7 = "dpsButton"
		1870	[  0]	TDUP 	  8		408	; slot8 = copy table#k408
		1871	[  0]	TDUP 	  9		407	; slot9 = copy table#k407
		1872	[  0]	TSETS	  9	8	885	; slot8.outlineColor = slot9
		1873	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1874	[  0]	KSTR 	  7		406	; slot7 = "synergyButton"
		1875	[  0]	TDUP 	  8		405	; slot8 = copy table#k405
		1876	[  0]	TDUP 	  9		404	; slot9 = copy table#k404
		1877	[  0]	TSETS	  9	8	885	; slot8.outlineColor = slot9
		1878	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1879	[  0]	KSTR 	  7		403	; slot7 = "fastForwardButton"
		1880	[  0]	TDUP 	  8		402	; slot8 = copy table#k402
		1881	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		1882	[  0]	KSTR 	  7		401	; slot7 = "dpsWindow"
		1883	[  0]	TDUP 	  8		400	; slot8 = copy table#k400
		1884	[  0]	TDUP 	  9		399	; slot9 = copy table#k399
		1885	[  0]	TDUP 	 10		398	; slot10 = copy table#k398
		1886	[  0]	TSETS	 10	9	961	; slot9.color = slot10
		1887	[  0]	TSETS	  9	8	730	; slot8.title = slot9
		1888	[  0]	TDUP 	  9		397	; slot9 = copy table#k397
		1889	[  0]	TSETS	  9	8	908	; slot8.emptyText = slot9
		1890	[  0]	TDUP 	  9		396	; slot9 = copy table#k396
		1891	[  0]	TDUP 	 10		395	; slot10 = copy table#k395
		1892	[  0]	TNEW 	 11		4	; slot11 = new table( array: 4, dict: 1)
		1893	[  0]	TDUP 	 12		394	; slot12 = copy table#k394
		1894	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		1895	[  0]	TDUP 	 12		393	; slot12 = copy table#k393
		1896	[  0]	TSETB	 12	11	2	; slot11[2] = slot12
		1897	[  0]	TDUP 	 12		392	; slot12 = copy table#k392
		1898	[  0]	TSETB	 12	11	3	; slot11[3] = slot12
		1899	[  0]	KSTR 	 12		391	; slot12 = "source"
		1900	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		1901	[  0]	TDUP 	 11		383	; slot11 = copy table#k383
		1902	[  0]	TNEW 	 12		4	; slot12 = new table( array: 4, dict: 1)
		1903	[  0]	TDUP 	 13		389	; slot13 = copy table#k389
		1904	[  0]	TDUP 	 14		390	; slot14 = copy table#k390
		1905	[  0]	KSTR 	 15		388	; slot15 = "to"
		1906	[  0]	TSETV	 14	13	15	; slot13[slot15] = slot14
		1907	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1908	[  0]	TDUP 	 13		386	; slot13 = copy table#k386
		1909	[  0]	TDUP 	 14		387	; slot14 = copy table#k387
		1910	[  0]	KSTR 	 15		388	; slot15 = "to"
		1911	[  0]	TSETV	 14	13	15	; slot13[slot15] = slot14
		1912	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		1913	[  0]	TDUP 	 13		384	; slot13 = copy table#k384
		1914	[  0]	TDUP 	 14		385	; slot14 = copy table#k385
		1915	[  0]	KSTR 	 15		388	; slot15 = "to"
		1916	[  0]	TSETV	 14	13	15	; slot13[slot15] = slot14
		1917	[  0]	TSETB	 13	12	3	; slot12[3] = slot13
		1918	[  0]	KSTR 	 13		382	; slot13 = "swaps"
		1919	[  0]	TSETV	 12	11	13	; slot11[slot13] = slot12
		1920	[  0]	KSTR 	 12		381	; slot12 = "special"
		1921	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		1922	[  0]	TDUP 	 11		374	; slot11 = copy table#k374
		1923	[  0]	TNEW 	 12		4	; slot12 = new table( array: 4, dict: 1)
		1924	[  0]	TDUP 	 13		379	; slot13 = copy table#k379
		1925	[  0]	TDUP 	 14		380	; slot14 = copy table#k380
		1926	[  0]	KSTR 	 15		388	; slot15 = "to"
		1927	[  0]	TSETV	 14	13	15	; slot13[slot15] = slot14
		1928	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1929	[  0]	TDUP 	 13		377	; slot13 = copy table#k377
		1930	[  0]	TDUP 	 14		378	; slot14 = copy table#k378
		1931	[  0]	KSTR 	 15		388	; slot15 = "to"
		1932	[  0]	TSETV	 14	13	15	; slot13[slot15] = slot14
		1933	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		1934	[  0]	TDUP 	 13		375	; slot13 = copy table#k375
		1935	[  0]	TDUP 	 14		376	; slot14 = copy table#k376
		1936	[  0]	KSTR 	 15		388	; slot15 = "to"
		1937	[  0]	TSETV	 14	13	15	; slot13[slot15] = slot14
		1938	[  0]	TSETB	 13	12	3	; slot12[3] = slot13
		1939	[  0]	KSTR 	 13		382	; slot13 = "swaps"
		1940	[  0]	TSETV	 12	11	13	; slot11[slot13] = slot12
		1941	[  0]	KSTR 	 12		373	; slot12 = "advanced"
		1942	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		1943	[  0]	TDUP 	 11		366	; slot11 = copy table#k366
		1944	[  0]	TNEW 	 12		4	; slot12 = new table( array: 4, dict: 1)
		1945	[  0]	TDUP 	 13		371	; slot13 = copy table#k371
		1946	[  0]	TDUP 	 14		372	; slot14 = copy table#k372
		1947	[  0]	KSTR 	 15		388	; slot15 = "to"
		1948	[  0]	TSETV	 14	13	15	; slot13[slot15] = slot14
		1949	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1950	[  0]	TDUP 	 13		369	; slot13 = copy table#k369
		1951	[  0]	TDUP 	 14		370	; slot14 = copy table#k370
		1952	[  0]	KSTR 	 15		388	; slot15 = "to"
		1953	[  0]	TSETV	 14	13	15	; slot13[slot15] = slot14
		1954	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		1955	[  0]	TDUP 	 13		367	; slot13 = copy table#k367
		1956	[  0]	TDUP 	 14		368	; slot14 = copy table#k368
		1957	[  0]	KSTR 	 15		388	; slot15 = "to"
		1958	[  0]	TSETV	 14	13	15	; slot13[slot15] = slot14
		1959	[  0]	TSETB	 13	12	3	; slot12[3] = slot13
		1960	[  0]	KSTR 	 13		382	; slot13 = "swaps"
		1961	[  0]	TSETV	 12	11	13	; slot11[slot13] = slot12
		1962	[  0]	KSTR 	 12		365	; slot12 = "rare"
		1963	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		1964	[  0]	TDUP 	 11		358	; slot11 = copy table#k358
		1965	[  0]	TNEW 	 12		4	; slot12 = new table( array: 4, dict: 1)
		1966	[  0]	TDUP 	 13		363	; slot13 = copy table#k363
		1967	[  0]	TDUP 	 14		364	; slot14 = copy table#k364
		1968	[  0]	KSTR 	 15		388	; slot15 = "to"
		1969	[  0]	TSETV	 14	13	15	; slot13[slot15] = slot14
		1970	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1971	[  0]	TDUP 	 13		361	; slot13 = copy table#k361
		1972	[  0]	TDUP 	 14		362	; slot14 = copy table#k362
		1973	[  0]	KSTR 	 15		388	; slot15 = "to"
		1974	[  0]	TSETV	 14	13	15	; slot13[slot15] = slot14
		1975	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		1976	[  0]	TDUP 	 13		359	; slot13 = copy table#k359
		1977	[  0]	TDUP 	 14		360	; slot14 = copy table#k360
		1978	[  0]	KSTR 	 15		388	; slot15 = "to"
		1979	[  0]	TSETV	 14	13	15	; slot13[slot15] = slot14
		1980	[  0]	TSETB	 13	12	3	; slot12[3] = slot13
		1981	[  0]	KSTR 	 13		382	; slot13 = "swaps"
		1982	[  0]	TSETV	 12	11	13	; slot11[slot13] = slot12
		1983	[  0]	KSTR 	 12		357	; slot12 = "legendary"
		1984	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		1985	[  0]	TDUP 	 11		356	; slot11 = copy table#k356
		1986	[  0]	KSTR 	 12		355	; slot12 = "prism"
		1987	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		1988	[  0]	TDUP 	 11		354	; slot11 = copy table#k354
		1989	[  0]	KSTR 	 12		707	; slot12 = "normal"
		1990	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		1991	[  0]	KSTR 	 11		353	; slot11 = "gradePalette"
		1992	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		1993	[  0]	TDUP 	 10		352	; slot10 = copy table#k352
		1994	[  0]	KSTR 	 11		351	; slot11 = "skillDamageColor"
		1995	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		1996	[  0]	TDUP 	 10		350	; slot10 = copy table#k350
		1997	[  0]	KSTR 	 11		349	; slot11 = "scrollbarTrackColor"
		1998	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		1999	[  0]	TDUP 	 10		348	; slot10 = copy table#k348
		2000	[  0]	KSTR 	 11		347	; slot11 = "scrollbarColor"
		2001	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2002	[  0]	KSTR 	 10		346	; slot10 = "slotList"
		2003	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		2004	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		2005	[  0]	KSTR 	  7		345	; slot7 = "synergyWindow"
		2006	[  0]	TDUP 	  8		344	; slot8 = copy table#k344
		2007	[  0]	TDUP 	  9		343	; slot9 = copy table#k343
		2008	[  0]	TDUP 	 10		342	; slot10 = copy table#k342
		2009	[  0]	TSETS	 10	9	961	; slot9.color = slot10
		2010	[  0]	TSETS	  9	8	730	; slot8.title = slot9
		2011	[  0]	TDUP 	  9		341	; slot9 = copy table#k341
		2012	[  0]	TSETS	  9	8	908	; slot8.emptyText = slot9
		2013	[  0]	TDUP 	  9		340	; slot9 = copy table#k340
		2014	[  0]	TDUP 	 10		338	; slot10 = copy table#k338
		2015	[  0]	TDUP 	 11		339	; slot11 = copy table#k339
		2016	[  0]	KSTR 	 12		337	; slot12 = "empire"
		2017	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2018	[  0]	TDUP 	 11		336	; slot11 = copy table#k336
		2019	[  0]	KSTR 	 12		335	; slot12 = "outlaw"
		2020	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2021	[  0]	TDUP 	 11		334	; slot11 = copy table#k334
		2022	[  0]	KSTR 	 12		333	; slot12 = "forest"
		2023	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2024	[  0]	TDUP 	 11		332	; slot11 = copy table#k332
		2025	[  0]	KSTR 	 12		331	; slot12 = "tribe"
		2026	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2027	[  0]	TDUP 	 11		330	; slot11 = copy table#k330
		2028	[  0]	KSTR 	 12		329	; slot12 = "abyss"
		2029	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2030	[  0]	TDUP 	 11		328	; slot11 = copy table#k328
		2031	[  0]	KSTR 	 12		327	; slot12 = "celestial"
		2032	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2033	[  0]	TDUP 	 11		326	; slot11 = copy table#k326
		2034	[  0]	KSTR 	 12		325	; slot12 = "arcane"
		2035	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2036	[  0]	TDUP 	 11		324	; slot11 = copy table#k324
		2037	[  0]	KSTR 	 12		323	; slot12 = "undead"
		2038	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2039	[  0]	TDUP 	 11		322	; slot11 = copy table#k322
		2040	[  0]	KSTR 	 12		321	; slot12 = "holy"
		2041	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2042	[  0]	TDUP 	 11		320	; slot11 = copy table#k320
		2043	[  0]	KSTR 	 12		319	; slot12 = "engineer"
		2044	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2045	[  0]	KSTR 	 11		318	; slot11 = "factionTextColors"
		2046	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2047	[  0]	KSTR 	 10		551	; slot10 = "tooltip"
		2048	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		2049	[  0]	TDUP 	  9		317	; slot9 = copy table#k317
		2050	[  0]	TDUP 	 10		316	; slot10 = copy table#k316
		2051	[  0]	KSTR 	 11		315	; slot11 = "iconOutlineColor"
		2052	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2053	[  0]	TDUP 	 10		314	; slot10 = copy table#k314
		2054	[  0]	KSTR 	 11		313	; slot11 = "countColor"
		2055	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2056	[  0]	TDUP 	 10		312	; slot10 = copy table#k312
		2057	[  0]	TSETS	 10	9	879	; slot9.fillColor = slot10
		2058	[  0]	TDUP 	 10		311	; slot10 = copy table#k311
		2059	[  0]	TSETS	 10	9	877	; slot9.previewColor = slot10
		2060	[  0]	TDUP 	 10		310	; slot10 = copy table#k310
		2061	[  0]	TSETS	 10	9	873	; slot9.bgColor = slot10
		2062	[  0]	TDUP 	 10		309	; slot10 = copy table#k309
		2063	[  0]	TSETS	 10	9	875	; slot9.gridColor = slot10
		2064	[  0]	TDUP 	 10		307	; slot10 = copy table#k307
		2065	[  0]	TDUP 	 11		308	; slot11 = copy table#k308
		2066	[  0]	TSETS	 11	10	961	; slot10.color = slot11
		2067	[  0]	TSETS	 10	9	815	; slot9.bloom = slot10
		2068	[  0]	KSTR 	 10		306	; slot10 = "factionList"
		2069	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
		2070	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		2071	[  0]	GGET 	  7		759	; slot7 = _env["love"]
		2072	[  0]	ISF  	   		7	; if not love
		2073	[  0]	JMP  	  8		2	; 	goto 2076
		2074	[  0]	GGET 	  7		759	; slot7 = _env["love"]
		2075	[  0]	TGETS	  7	7	758	; slot7 = love.filesystem
		2076	[  0]	ISFC 	  8		7	; slot8 = love.filesystem; if not love.filesystem
		2077	[  0]	JMP  	  8		13	; 	goto 2091
		2078	[  0]	TGETS	  8	7	757	; slot8 = love.filesystem.getInfo
		2079	[  0]	ISF  	   		8	; if not love.filesystem.getInfo
		2080	[  0]	JMP  	  9		10	; 	goto 2091
		2081	[  0]	TGETS	  8	7	757	; slot8 = love.filesystem.getInfo
		2082	[  0]	KSTR 	 10		305	; slot10 = "release.flag"
		2083	[  0]	KSTR 	 11		304	; slot11 = "file"
		2084	[  0]	CALL 	  8	2	3	; slot8 = love.filesystem.getInfo(slot9, slot10)
		2085	[  0]	IST  	   		8	; if love.filesystem.getInfo
		2086	[  0]	JMP  	  9		4	; 	goto 2091
		2087	[  0]	TGETS	  8	7	757	; slot8 = love.filesystem.getInfo
		2088	[  0]	KSTR 	 10		303	; slot10 = "build_release.flag"
		2089	[  0]	KSTR 	 11		304	; slot11 = "file"
		2090	[  0]	CALL 	  8	2	3	; slot8 = love.filesystem.getInfo(slot9, slot10)
		2091	[  0]	IST  	   		8	; if love.filesystem.getInfo
		2092	[  0]	JMP  	  9		59	; 	goto 2152
		2093	[  0]	ISF  	   		7	; if not love.filesystem
		2094	[  0]	JMP  	  9		57	; 	goto 2152
		2095	[  0]	TGETS	  9	7	757	; slot9 = love.filesystem.getInfo
		2096	[  0]	ISF  	   		9	; if not love.filesystem.getInfo
		2097	[  0]	JMP  	 10		54	; 	goto 2152
		2098	[  0]	KSTR 	  9		302	; slot9 = "load"
		2099	[  0]	TGETV	  9	7	9	; slot9 = love.filesystem[slot9]
		2100	[  0]	ISF  	   		9	; if not slot9
		2101	[  0]	JMP  	 10		50	; 	goto 2152
		2102	[  0]	TGETS	  9	7	757	; slot9 = love.filesystem.getInfo
		2103	[  0]	KSTR 	 11		301	; slot11 = "dps_scroll_tuning.lua"
		2104	[  0]	CALL 	  9	2	2	; slot9 = love.filesystem.getInfo(slot10)
		2105	[  0]	ISF  	   		9	; if not love.filesystem.getInfo
		2106	[  0]	JMP  	 10		45	; 	goto 2152
		2107	[  0]	GGET 	  9		776	; slot9 = _env["pcall"]
		2108	[  0]	KSTR 	 11		302	; slot11 = "load"
		2109	[  0]	TGETV	 11	7	11	; slot11 = love.filesystem[slot11]
		2110	[  0]	KSTR 	 12		301	; slot12 = "dps_scroll_tuning.lua"
		2111	[  0]	CALL 	  9	3	3	; slot9, slot10 = pcall(slot10, slot11)
		2112	[  0]	ISF  	   		9	; if not pcall
		2113	[  0]	JMP  	 11		38	; 	goto 2152
		2114	[  0]	ISF  	   		10	; if not slot10
		2115	[  0]	JMP  	 11		36	; 	goto 2152
		2116	[  0]	GGET 	 11		776	; slot11 = _env["pcall"]
		2117	[  0]	MOV  	 13		10	; slot13 = slot10
		2118	[  0]	CALL 	 11	3	2	; slot11, slot12 = pcall(slot12)
		2119	[  0]	ISF  	   		11	; if not pcall
		2120	[  0]	JMP  	 13		31	; 	goto 2152
		2121	[  0]	GGET 	 13		773	; slot13 = _env["type"]
		2122	[  0]	MOV  	 15		12	; slot15 = slot12
		2123	[  0]	CALL 	 13	2	2	; slot13 = type(slot14)
		2124	[  0]	ISNES	 13		300	; if type ~= "table"
		2125	[  0]	JMP  	 13		26	; 	goto 2152
		2126	[  0]	GGET 	 13		773	; slot13 = _env["type"]
		2127	[  0]	KSTR 	 15		346	; slot15 = "slotList"
		2128	[  0]	TGETV	 15	12	15	; slot15 = slot12[slot15]
		2129	[  0]	CALL 	 13	2	2	; slot13 = type(slot14)
		2130	[  0]	ISNES	 13		300	; if type ~= "table"
		2131	[  0]	JMP  	 13		20	; 	goto 2152
		2132	[  0]	KSTR 	 13		401	; slot13 = "dpsWindow"
		2133	[  0]	TGETV	 13	0	13	; slot13 = slot0[slot13]
		2134	[  0]	KSTR 	 14		346	; slot14 = "slotList"
		2135	[  0]	TGETV	 13	13	14	; slot13 = slot13[slot14]
		2136	[  0]	KSTR 	 14		346	; slot14 = "slotList"
		2137	[  0]	TGETV	 14	12	14	; slot14 = slot12[slot14]
		2138	[  0]	TDUP 	 15		299	; slot15 = copy table#k299
		2139	[  0]	GGET 	 16		695	; slot16 = _env["ipairs"]
		2140	[  0]	MOV  	 18		15	; slot18 = slot15
		2141	[  0]	CALL 	 16	4	2	; slot16, slot17, slot18 = ipairs(math.max)
		2142	[  0]	JMP  	 19		7	; 	goto 2150
		2143	[  0]	GGET 	 21		773	; slot21 = _env["type"]
		2144	[  0]	TGETV	 23	14	20	; slot23 = slot14[math.max]
		2145	[  0]	CALL 	 21	2	2	; slot21 = type(slot22)
		2146	[  0]	ISNES	 21		298	; if type ~= "number"
		2147	[  0]	JMP  	 21		2	; 	goto 2150
		2148	[  0]	TGETV	 21	14	20	; slot21 = slot14[math.max]
		2149	[  0]	TSETV	 21	13	20	; slot13[math.max] = slot21
		2150	[  0]	ITERC	 19	3	3	; slot19, slot20, slot21 = ipairs, math.max, slot18; slot19, slot20 = ipairs(math.max, slot18)
		2151	[  0]	ITERL	 19		-9	; slot18 = slot19; if slot19 != nil goto 2143
		2152	[  0]	FNEW 	  7		297	; N/A:0-0: 1 args, 0 upvalues, 14 slots
			
			;;;; constant tables ;;;;
			ktable#1 = [
				#1: x,
				#2: y,
				#3: w,
				#4: h,
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	IST  	   		0	; if slot0
			  2	[  0]	JMP  	  1		1	; 	goto 4
			  3	[  0]	UCLO 	  0		57	; nil uvs >= r0; goto 61
			  4	[  0]	FNEW 	  1		8	; N/A:0-0: 0 args, 0 upvalues, 14 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	GGET 	  0		25	; slot0 = _env["love"]
				  2	[  0]	ISF  	   		0	; if not love
				  3	[  0]	JMP  	  1		2	; 	goto 6
				  4	[  0]	GGET 	  0		25	; slot0 = _env["love"]
				  5	[  0]	TGETS	  0	0	24	; slot0 = love.filesystem
				  6	[  0]	ISF  	   		0	; if not love.filesystem
				  7	[  0]	JMP  	  1		17	; 	goto 25
				  8	[  0]	TGETS	  1	0	23	; slot1 = love.filesystem.getInfo
				  9	[  0]	ISF  	   		1	; if not love.filesystem.getInfo
				 10	[  0]	JMP  	  2		14	; 	goto 25
				 11	[  0]	TGETS	  1	0	23	; slot1 = love.filesystem.getInfo
				 12	[  0]	KSTR 	  3		22	; slot3 = "release.flag"
				 13	[  0]	KSTR 	  4		21	; slot4 = "file"
				 14	[  0]	CALL 	  1	2	3	; slot1 = love.filesystem.getInfo(slot2, slot3)
				 15	[  0]	IST  	   		1	; if slot1
				 16	[  0]	JMP  	  2		6	; 	goto 23
				 17	[  0]	TGETS	  1	0	23	; slot1 = love.filesystem.getInfo
				 18	[  0]	KSTR 	  3		20	; slot3 = "build_release.flag"
				 19	[  0]	KSTR 	  4		21	; slot4 = "file"
				 20	[  0]	CALL 	  1	2	3	; slot1 = love.filesystem.getInfo(slot2, slot3)
				 21	[  0]	ISF  	   		1	; if not slot1
				 22	[  0]	JMP  	  2		2	; 	goto 25
				 23	[  0]	KPRI 	  1		0	; slot1 = nil
				 24	[  0]	RET1 	  1		2	; return slot1
				 25	[  0]	ISF  	   		0	; if not love.filesystem
				 26	[  0]	JMP  	  1		20	; 	goto 47
				 27	[  0]	TGETS	  1	0	23	; slot1 = love.filesystem.getInfo
				 28	[  0]	ISF  	   		1	; if not love.filesystem.getInfo
				 29	[  0]	JMP  	  2		17	; 	goto 47
				 30	[  0]	TGETS	  1	0	19	; slot1 = love.filesystem.load
				 31	[  0]	ISF  	   		1	; if not love.filesystem.load
				 32	[  0]	JMP  	  2		14	; 	goto 47
				 33	[  0]	TGETS	  1	0	23	; slot1 = love.filesystem.getInfo
				 34	[  0]	KSTR 	  3		18	; slot3 = "credits_scroll_tuning.lua"
				 35	[  0]	CALL 	  1	2	2	; slot1 = love.filesystem.getInfo(slot2)
				 36	[  0]	ISF  	   		1	; if not slot1
				 37	[  0]	JMP  	  2		9	; 	goto 47
				 38	[  0]	GGET 	  1		17	; slot1 = _env["pcall"]
				 39	[  0]	TGETS	  3	0	19	; slot3 = love.filesystem.load
				 40	[  0]	KSTR 	  4		18	; slot4 = "credits_scroll_tuning.lua"
				 41	[  0]	CALL 	  1	3	3	; slot1, slot2 = pcall(slot2, love.filesystem.load)
				 42	[  0]	ISF  	   		1	; if not slot1
				 43	[  0]	JMP  	  3		3	; 	goto 47
				 44	[  0]	ISF  	   		2	; if not slot2
				 45	[  0]	JMP  	  3		1	; 	goto 47
				 46	[  0]	RET1 	  2		2	; return slot2
				 47	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
				 48	[  0]	GGET 	  2		16	; slot2 = _env["os"]
				 49	[  0]	ISF  	   		2	; if not os
				 50	[  0]	JMP  	  3		10	; 	goto 61
				 51	[  0]	GGET 	  2		16	; slot2 = _env["os"]
				 52	[  0]	TGETS	  2	2	15	; slot2 = os.getenv
				 53	[  0]	ISF  	   		2	; if not os.getenv
				 54	[  0]	JMP  	  3		6	; 	goto 61
				 55	[  0]	GGET 	  2		16	; slot2 = _env["os"]
				 56	[  0]	TGETS	  2	2	15	; slot2 = os.getenv
				 57	[  0]	KSTR 	  4		14	; slot4 = "APPDATA"
				 58	[  0]	CALL 	  2	2	2	; slot2 = os.getenv(slot3)
				 59	[  0]	IST  	   		2	; if slot2
				 60	[  0]	JMP  	  3		1	; 	goto 62
				 61	[  0]	KPRI 	  2		0	; slot2 = nil
				 62	[  0]	ISF  	   		2	; if not slot2
				 63	[  0]	JMP  	  3		14	; 	goto 78
				 64	[  0]	ISEQS	  2		13	; if slot2 == ""
				 65	[  0]	JMP  	  3		12	; 	goto 78
				 66	[  0]	LEN  	  3		1	; slot3 = #slot1
				 67	[  0]	ADDVN	  3	3	0	; slot3 = slot3 + 1
				 68	[  0]	MOV  	  4		2	; slot4 = slot2
				 69	[  0]	KSTR 	  5		12	; slot5 = "\LOVE\slotbound\credits_scroll_tuning.lua"
				 70	[  0]	CAT  	  4	4	5	; slot4 = slot4 .. slot5
				 71	[  0]	TSETV	  4	1	3	; slot1[slot3] = slot4
				 72	[  0]	LEN  	  3		1	; slot3 = #slot1
				 73	[  0]	ADDVN	  3	3	0	; slot3 = slot3 + 1
				 74	[  0]	MOV  	  4		2	; slot4 = slot2
				 75	[  0]	KSTR 	  5		11	; slot5 = "\LOVE\SlotBound\credits_scroll_tuning.lua"
				 76	[  0]	CAT  	  4	4	5	; slot4 = slot4 .. slot5
				 77	[  0]	TSETV	  4	1	3	; slot1[slot3] = slot4
				 78	[  0]	GGET 	  3		16	; slot3 = _env["os"]
				 79	[  0]	ISF  	   		3	; if not os
				 80	[  0]	JMP  	  4		10	; 	goto 91
				 81	[  0]	GGET 	  3		16	; slot3 = _env["os"]
				 82	[  0]	TGETS	  3	3	15	; slot3 = os.getenv
				 83	[  0]	ISF  	   		3	; if not os.getenv
				 84	[  0]	JMP  	  4		6	; 	goto 91
				 85	[  0]	GGET 	  3		16	; slot3 = _env["os"]
				 86	[  0]	TGETS	  3	3	15	; slot3 = os.getenv
				 87	[  0]	KSTR 	  5		10	; slot5 = "USERPROFILE"
				 88	[  0]	CALL 	  3	2	2	; slot3 = os.getenv(slot4)
				 89	[  0]	IST  	   		3	; if os.getenv
				 90	[  0]	JMP  	  4		1	; 	goto 92
				 91	[  0]	KPRI 	  3		0	; slot3 = nil
				 92	[  0]	ISF  	   		3	; if not slot3
				 93	[  0]	JMP  	  4		14	; 	goto 108
				 94	[  0]	ISEQS	  3		13	; if slot3 == ""
				 95	[  0]	JMP  	  4		12	; 	goto 108
				 96	[  0]	LEN  	  4		1	; slot4 = #slot1
				 97	[  0]	ADDVN	  4	4	0	; slot4 = slot4 + 1
				 98	[  0]	MOV  	  5		3	; slot5 = slot3
				 99	[  0]	KSTR 	  6		9	; slot6 = "\Documents\SlotBound\credits_scroll_tuning.lua"
				100	[  0]	CAT  	  5	5	6	; slot5 = slot5 .. slot6
				101	[  0]	TSETV	  5	1	4	; slot1[slot4] = slot5
				102	[  0]	LEN  	  4		1	; slot4 = #slot1
				103	[  0]	ADDVN	  4	4	0	; slot4 = slot4 + 1
				104	[  0]	MOV  	  5		3	; slot5 = slot3
				105	[  0]	KSTR 	  6		8	; slot6 = "\문서\SlotBound\credits_scroll_tuning.lua"
				106	[  0]	CAT  	  5	5	6	; slot5 = slot5 .. slot6
				107	[  0]	TSETV	  5	1	4	; slot1[slot4] = slot5
				108	[  0]	GGET 	  4		7	; slot4 = _env["ipairs"]
				109	[  0]	MOV  	  6		1	; slot6 = slot1
				110	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
				111	[  0]	JMP  	  7		34	; 	goto 146
				112	[  0]	GGET 	  9		6	; slot9 = _env["io"]
				113	[  0]	ISF  	   		9	; if not io
				114	[  0]	JMP  	 10		11	; 	goto 126
				115	[  0]	GGET 	  9		6	; slot9 = _env["io"]
				116	[  0]	TGETS	  9	9	5	; slot9 = io.open
				117	[  0]	ISF  	   		9	; if not io.open
				118	[  0]	JMP  	 10		7	; 	goto 126
				119	[  0]	GGET 	  9		6	; slot9 = _env["io"]
				120	[  0]	TGETS	  9	9	5	; slot9 = io.open
				121	[  0]	MOV  	 11		8	; slot11 = slot8
				122	[  0]	KSTR 	 12		4	; slot12 = "rb"
				123	[  0]	CALL 	  9	2	3	; slot9 = io.open(slot10, slot11)
				124	[  0]	IST  	   		9	; if io.open
				125	[  0]	JMP  	 10		1	; 	goto 127
				126	[  0]	KPRI 	  9		0	; slot9 = nil
				127	[  0]	ISF  	   		9	; if not slot9
				128	[  0]	JMP  	 10		17	; 	goto 146
				129	[  0]	MOV  	 12		9	; slot12 = slot9
				130	[  0]	TGETS	 10	9	3	; slot10 = slot9.read
				131	[  0]	KSTR 	 13		2	; slot13 = "*all"
				132	[  0]	CALL 	 10	2	3	; slot10 = <unknown table>.read(slot11, slot12)
				133	[  0]	MOV  	 13		9	; slot13 = slot9
				134	[  0]	TGETS	 11	9	1	; slot11 = slot9.close
				135	[  0]	CALL 	 11	1	2	;  = <unknown table>.close(slot12)
				136	[  0]	ISF  	   		10	; if not <unknown table>.read
				137	[  0]	JMP  	 11		8	; 	goto 146
				138	[  0]	ISEQS	 10		13	; if <unknown table>.read == ""
				139	[  0]	JMP  	 11		6	; 	goto 146
				140	[  0]	GGET 	 11		0	; slot11 = _env["loadstring"]
				141	[  0]	MOV  	 13		10	; slot13 = <unknown table>.read
				142	[  0]	CALL 	 11	2	2	; slot11 = loadstring(slot12)
				143	[  0]	ISF  	   		11	; if not loadstring
				144	[  0]	JMP  	 12		1	; 	goto 146
				145	[  0]	RET1 	 11		2	; return loadstring
				146	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, slot6; slot7, slot8 = ipairs(slot5, slot6)
				147	[  0]	ITERL	  7		-36	; slot6 = slot7; if slot7 != nil goto 112
				148	[  0]	KPRI 	  4		0	; slot4 = nil
				149	[  0]	RET1 	  4		2	; return slot4
			  5	[  0]	MOV  	  2		1	; slot2 = slot1
			  6	[  0]	CALL 	  2	2	1	; slot2 = slot2()
			  7	[  0]	IST  	   		2	; if slot2
			  8	[  0]	JMP  	  3		2	; 	goto 11
			  9	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 10
			 10	[  0]	RET0 	  0		1	; return
			 11	[  0]	GGET 	  3		7	; slot3 = _env["pcall"]
			 12	[  0]	MOV  	  5		2	; slot5 = slot2
			 13	[  0]	CALL 	  3	3	2	; slot3, slot4 = pcall(slot4)
			 14	[  0]	ISF  	   		3	; if not pcall
			 15	[  0]	JMP  	  5		5	; 	goto 21
			 16	[  0]	GGET 	  5		6	; slot5 = _env["type"]
			 17	[  0]	MOV  	  7		4	; slot7 = slot4
			 18	[  0]	CALL 	  5	2	2	; slot5 = type(slot6)
			 19	[  0]	ISEQS	  5		5	; if type == "table"
			 20	[  0]	JMP  	  5		2	; 	goto 23
			 21	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 22
			 22	[  0]	RET0 	  0		1	; return
			 23	[  0]	TGETS	  5	4	4	; slot5 = slot4.creditsText
			 24	[  0]	IST  	   		5	; if <unknown table>.creditsText
			 25	[  0]	JMP  	  6		1	; 	goto 27
			 26	[  0]	MOV  	  5		4	; slot5 = slot4
			 27	[  0]	GGET 	  6		6	; slot6 = _env["type"]
			 28	[  0]	MOV  	  8		5	; slot8 = slot5
			 29	[  0]	CALL 	  6	2	2	; slot6 = type(slot7)
			 30	[  0]	ISEQS	  6		5	; if type == "table"
			 31	[  0]	JMP  	  6		2	; 	goto 34
			 32	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 33
			 33	[  0]	RET0 	  0		1	; return
			 34	[  0]	GGET 	  6		6	; slot6 = _env["type"]
			 35	[  0]	TGETS	  8	5	3	; slot8 = slot5.scrollArea
			 36	[  0]	CALL 	  6	2	2	; slot6 = type(slot7)
			 37	[  0]	ISNES	  6		5	; if type ~= "table"
			 38	[  0]	JMP  	  6		21	; 	goto 60
			 39	[  0]	TGETS	  6	0	3	; slot6 = slot0.scrollArea
			 40	[  0]	IST  	   		6	; if <unknown table>.scrollArea
			 41	[  0]	JMP  	  7		1	; 	goto 43
			 42	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
			 43	[  0]	TSETS	  6	0	3	; slot0.scrollArea = slot6
			 44	[  0]	GGET 	  6		2	; slot6 = _env["ipairs"]
			 45	[  0]	TDUP 	  8		1	; slot8 = copy table#k1
			 46	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
			 47	[  0]	JMP  	  9		10	; 	goto 58
			 48	[  0]	GGET 	 11		6	; slot11 = _env["type"]
			 49	[  0]	TGETS	 13	5	3	; slot13 = slot5.scrollArea
			 50	[  0]	TGETV	 13	13	10	; slot13 = <unknown table>.scrollArea[slot10]
			 51	[  0]	CALL 	 11	2	2	; slot11 = type(slot12)
			 52	[  0]	ISNES	 11		0	; if type ~= "number"
			 53	[  0]	JMP  	 11		4	; 	goto 58
			 54	[  0]	TGETS	 11	0	3	; slot11 = slot0.scrollArea
			 55	[  0]	TGETS	 12	5	3	; slot12 = slot5.scrollArea
			 56	[  0]	TGETV	 12	12	10	; slot12 = <unknown table>.scrollArea[slot10]
			 57	[  0]	TSETV	 12	11	10	; <unknown table>.scrollArea[slot10] = slot12
			 58	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, slot8; slot9, slot10 = ipairs(slot7, slot8)
			 59	[  0]	ITERL	  9		-12	; slot8 = slot9; if slot9 != nil goto 48
			 60	[  0]	RET0 	  0		1	; return
			 61	[  0]	RET0 	  0		1	; return
		2153	[  0]	KSTR 	  8		296	; slot8 = "pauseOverlay"
		2154	[  0]	TDUP 	  9		295	; slot9 = copy table#k295
		2155	[  0]	KSTR 	 10		639	; slot10 = "virtual"
		2156	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
		2157	[  0]	KSTR 	 11		635	; slot11 = "H"
		2158	[  0]	TGETV	 10	10	11	; slot10 = slot10[slot11]
		2159	[  0]	UNM  	 10		10	; slot10 = -slot10
		2160	[  0]	KSTR 	 11		537	; slot11 = "hiddenY"
		2161	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2162	[  0]	TDUP 	 10		294	; slot10 = copy table#k294
		2163	[  0]	KSTR 	 11		541	; slot11 = "spring"
		2164	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2165	[  0]	TDUP 	 10		293	; slot10 = copy table#k293
		2166	[  0]	TDUP 	 11		292	; slot11 = copy table#k292
		2167	[  0]	TSETS	 11	10	961	; slot10.color = slot11
		2168	[  0]	KSTR 	 11		291	; slot11 = "pauseTitle"
		2169	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2170	[  0]	TDUP 	 10		290	; slot10 = copy table#k290
		2171	[  0]	KSTR 	 11		289	; slot11 = "pauseBackground"
		2172	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2173	[  0]	TDUP 	 10		288	; slot10 = copy table#k288
		2174	[  0]	KSTR 	 11		287	; slot11 = "playtimeBackground"
		2175	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2176	[  0]	TDUP 	 10		286	; slot10 = copy table#k286
		2177	[  0]	TDUP 	 11		285	; slot11 = copy table#k285
		2178	[  0]	KSTR 	 12		284	; slot12 = "content"
		2179	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2180	[  0]	KSTR 	 11		283	; slot11 = "optionPaperBackground"
		2181	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2182	[  0]	TDUP 	 10		282	; slot10 = copy table#k282
		2183	[  0]	KSTR 	 11		281	; slot11 = "creditsBackground"
		2184	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2185	[  0]	TDUP 	 10		280	; slot10 = copy table#k280
		2186	[  0]	TDUP 	 11		279	; slot11 = copy table#k279
		2187	[  0]	KSTR 	 12		278	; slot12 = "scrollArea"
		2188	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2189	[  0]	TDUP 	 11		277	; slot11 = copy table#k277
		2190	[  0]	TSETS	 11	10	730	; slot10.title = slot11
		2191	[  0]	TDUP 	 11		276	; slot11 = copy table#k276
		2192	[  0]	KSTR 	 12		275	; slot12 = "titleColor"
		2193	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2194	[  0]	TDUP 	 11		274	; slot11 = copy table#k274
		2195	[  0]	KSTR 	 12		273	; slot12 = "bodyColor"
		2196	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2197	[  0]	TDUP 	 11		271	; slot11 = copy table#k271
		2198	[  0]	TDUP 	 12		272	; slot12 = copy table#k272
		2199	[  0]	KSTR 	 13		270	; slot13 = "heading"
		2200	[  0]	TSETV	 12	11	13	; slot11[slot13] = slot12
		2201	[  0]	TDUP 	 12		269	; slot12 = copy table#k269
		2202	[  0]	TSETS	 12	11	897	; slot11.name = slot12
		2203	[  0]	TDUP 	 12		268	; slot12 = copy table#k268
		2204	[  0]	KSTR 	 13		267	; slot13 = "footer"
		2205	[  0]	TSETV	 12	11	13	; slot11[slot13] = slot12
		2206	[  0]	TDUP 	 12		266	; slot12 = copy table#k266
		2207	[  0]	KSTR 	 13		265	; slot13 = "brand"
		2208	[  0]	TSETV	 12	11	13	; slot11[slot13] = slot12
		2209	[  0]	TDUP 	 12		264	; slot12 = copy table#k264
		2210	[  0]	KSTR 	 13		263	; slot13 = "label"
		2211	[  0]	TSETV	 12	11	13	; slot11[slot13] = slot12
		2212	[  0]	TDUP 	 12		262	; slot12 = copy table#k262
		2213	[  0]	KSTR 	 13		261	; slot13 = "credit"
		2214	[  0]	TSETV	 12	11	13	; slot11[slot13] = slot12
		2215	[  0]	TDUP 	 12		260	; slot12 = copy table#k260
		2216	[  0]	KSTR 	 13		259	; slot13 = "music"
		2217	[  0]	TSETV	 12	11	13	; slot11[slot13] = slot12
		2218	[  0]	TDUP 	 12		258	; slot12 = copy table#k258
		2219	[  0]	KSTR 	 13		257	; slot13 = "thanks"
		2220	[  0]	TSETV	 12	11	13	; slot11[slot13] = slot12
		2221	[  0]	TDUP 	 12		256	; slot12 = copy table#k256
		2222	[  0]	KSTR 	 13		255	; slot13 = "copyright"
		2223	[  0]	TSETV	 12	11	13	; slot11[slot13] = slot12
		2224	[  0]	KSTR 	 12		254	; slot12 = "palette"
		2225	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2226	[  0]	TDUP 	 11		253	; slot11 = copy table#k253
		2227	[  0]	KSTR 	 12		252	; slot12 = "bodyPt"
		2228	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2229	[  0]	TDUP 	 11		251	; slot11 = copy table#k251
		2230	[  0]	KSTR 	 12		250	; slot12 = "bodyPl"
		2231	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2232	[  0]	TDUP 	 11		249	; slot11 = copy table#k249
		2233	[  0]	KSTR 	 12		248	; slot12 = "bodyRu"
		2234	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2235	[  0]	TDUP 	 11		247	; slot11 = copy table#k247
		2236	[  0]	KSTR 	 12		246	; slot12 = "bodyEs"
		2237	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2238	[  0]	TDUP 	 11		245	; slot11 = copy table#k245
		2239	[  0]	KSTR 	 12		244	; slot12 = "bodyDe"
		2240	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2241	[  0]	TDUP 	 11		243	; slot11 = copy table#k243
		2242	[  0]	KSTR 	 12		242	; slot12 = "bodyIt"
		2243	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2244	[  0]	TDUP 	 11		241	; slot11 = copy table#k241
		2245	[  0]	KSTR 	 12		240	; slot12 = "bodyFr"
		2246	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2247	[  0]	TDUP 	 11		239	; slot11 = copy table#k239
		2248	[  0]	KSTR 	 12		238	; slot12 = "bodyKo"
		2249	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2250	[  0]	TDUP 	 11		237	; slot11 = copy table#k237
		2251	[  0]	KSTR 	 12		236	; slot12 = "bodyEn"
		2252	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2253	[  0]	TDUP 	 11		235	; slot11 = copy table#k235
		2254	[  0]	KSTR 	 12		234	; slot12 = "bodyJa"
		2255	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2256	[  0]	TDUP 	 11		233	; slot11 = copy table#k233
		2257	[  0]	KSTR 	 12		232	; slot12 = "bodyZh"
		2258	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2259	[  0]	KSTR 	 11		231	; slot11 = "creditsText"
		2260	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2261	[  0]	TDUP 	 10		230	; slot10 = copy table#k230
		2262	[  0]	TDUP 	 11		229	; slot11 = copy table#k229
		2263	[  0]	KSTR 	 12		275	; slot12 = "titleColor"
		2264	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2265	[  0]	TDUP 	 11		228	; slot11 = copy table#k228
		2266	[  0]	KSTR 	 12		227	; slot12 = "timeColor"
		2267	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2268	[  0]	KSTR 	 11		226	; slot11 = "playtimeText"
		2269	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2270	[  0]	TDUP 	 10		225	; slot10 = copy table#k225
		2271	[  0]	TDUP 	 11		224	; slot11 = copy table#k224
		2272	[  0]	KSTR 	 12		223	; slot12 = "motion"
		2273	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2274	[  0]	TNEW 	 11		5	; slot11 = new table( array: 5, dict: 1)
		2275	[  0]	TDUP 	 12		222	; slot12 = copy table#k222
		2276	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		2277	[  0]	TDUP 	 12		221	; slot12 = copy table#k221
		2278	[  0]	TSETB	 12	11	2	; slot11[2] = slot12
		2279	[  0]	TDUP 	 12		220	; slot12 = copy table#k220
		2280	[  0]	TSETB	 12	11	3	; slot11[3] = slot12
		2281	[  0]	TDUP 	 12		219	; slot12 = copy table#k219
		2282	[  0]	TSETB	 12	11	4	; slot11[4] = slot12
		2283	[  0]	KSTR 	 12		218	; slot12 = "positions"
		2284	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2285	[  0]	KSTR 	 11		217	; slot11 = "buttonRopes"
		2286	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2287	[  0]	TDUP 	 10		216	; slot10 = copy table#k216
		2288	[  0]	KSTR 	 11		215	; slot11 = "playButtonDark"
		2289	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2290	[  0]	TDUP 	 10		214	; slot10 = copy table#k214
		2291	[  0]	KSTR 	 11		213	; slot11 = "replayButtonDark"
		2292	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2293	[  0]	TDUP 	 10		212	; slot10 = copy table#k212
		2294	[  0]	KSTR 	 11		211	; slot11 = "wikiButtonDark"
		2295	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2296	[  0]	TDUP 	 10		210	; slot10 = copy table#k210
		2297	[  0]	KSTR 	 11		209	; slot11 = "optionButtonDark"
		2298	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2299	[  0]	TDUP 	 10		208	; slot10 = copy table#k208
		2300	[  0]	KSTR 	 11		207	; slot11 = "toMainMenuButtonDark"
		2301	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2302	[  0]	TDUP 	 10		205	; slot10 = copy table#k205
		2303	[  0]	TDUP 	 11		206	; slot11 = copy table#k206
		2304	[  0]	KSTR 	 12		204	; slot12 = "order"
		2305	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2306	[  0]	TNEW 	 11		0	; slot11 = new table( array: 0, dict: 1)
		2307	[  0]	KSTR 	 12		218	; slot12 = "positions"
		2308	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2309	[  0]	TDUP 	 11		203	; slot11 = copy table#k203
		2310	[  0]	TDUP 	 12		202	; slot12 = copy table#k202
		2311	[  0]	TSETS	 12	11	885	; slot11.outlineColor = slot12
		2312	[  0]	TSETS	 11	10	854	; slot10.hover = slot11
		2313	[  0]	TDUP 	 11		201	; slot11 = copy table#k201
		2314	[  0]	TDUP 	 12		199	; slot12 = copy table#k199
		2315	[  0]	TDUP 	 13		200	; slot13 = copy table#k200
		2316	[  0]	KSTR 	 14		198	; slot14 = "optionButton"
		2317	[  0]	TSETV	 13	12	14	; slot12[slot14] = slot13
		2318	[  0]	TDUP 	 13		197	; slot13 = copy table#k197
		2319	[  0]	KSTR 	 14		196	; slot14 = "playButton"
		2320	[  0]	TSETV	 13	12	14	; slot12[slot14] = slot13
		2321	[  0]	TDUP 	 13		195	; slot13 = copy table#k195
		2322	[  0]	KSTR 	 14		194	; slot14 = "replayButton"
		2323	[  0]	TSETV	 13	12	14	; slot12[slot14] = slot13
		2324	[  0]	TDUP 	 13		193	; slot13 = copy table#k193
		2325	[  0]	KSTR 	 14		192	; slot14 = "toMainMenuButton"
		2326	[  0]	TSETV	 13	12	14	; slot12[slot14] = slot13
		2327	[  0]	KSTR 	 13		191	; slot13 = "perButton"
		2328	[  0]	TSETV	 12	11	13	; slot11[slot13] = slot12
		2329	[  0]	KSTR 	 12		190	; slot12 = "labels"
		2330	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2331	[  0]	KSTR 	 11		189	; slot11 = "buttons"
		2332	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2333	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		2334	[  0]	KSTR 	  8		188	; slot8 = "restartConfirm"
		2335	[  0]	TDUP 	  9		185	; slot9 = copy table#k185
		2336	[  0]	TDUP 	 10		187	; slot10 = copy table#k187
		2337	[  0]	TDUP 	 11		186	; slot11 = copy table#k186
		2338	[  0]	TSETS	 11	10	961	; slot10.color = slot11
		2339	[  0]	KSTR 	 11		690	; slot11 = "shadow"
		2340	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2341	[  0]	TDUP 	 10		184	; slot10 = copy table#k184
		2342	[  0]	TDUP 	 11		183	; slot11 = copy table#k183
		2343	[  0]	TSETS	 11	10	961	; slot10.color = slot11
		2344	[  0]	KSTR 	 11		182	; slot11 = "prompt"
		2345	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2346	[  0]	TDUP 	 10		181	; slot10 = copy table#k181
		2347	[  0]	TDUP 	 11		180	; slot11 = copy table#k180
		2348	[  0]	TSETS	 11	10	961	; slot10.color = slot11
		2349	[  0]	KSTR 	 11		179	; slot11 = "yes"
		2350	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2351	[  0]	TDUP 	 10		178	; slot10 = copy table#k178
		2352	[  0]	TDUP 	 11		177	; slot11 = copy table#k177
		2353	[  0]	TSETS	 11	10	961	; slot10.color = slot11
		2354	[  0]	KSTR 	 11		176	; slot11 = "no"
		2355	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2356	[  0]	TDUP 	 10		175	; slot10 = copy table#k175
		2357	[  0]	KSTR 	 11		174	; slot11 = "hitPad"
		2358	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2359	[  0]	TDUP 	 10		173	; slot10 = copy table#k173
		2360	[  0]	KSTR 	 11		541	; slot11 = "spring"
		2361	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2362	[  0]	TDUP 	 10		172	; slot10 = copy table#k172
		2363	[  0]	TDUP 	 11		171	; slot11 = copy table#k171
		2364	[  0]	TSETS	 11	10	961	; slot10.color = slot11
		2365	[  0]	KSTR 	 11		170	; slot11 = "hoverUnderline"
		2366	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2367	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		2368	[  0]	KSTR 	  8		540	; slot8 = "infoOverlay"
		2369	[  0]	TDUP 	  9		169	; slot9 = copy table#k169
		2370	[  0]	KSTR 	 10		639	; slot10 = "virtual"
		2371	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
		2372	[  0]	KSTR 	 11		635	; slot11 = "H"
		2373	[  0]	TGETV	 10	10	11	; slot10 = slot10[slot11]
		2374	[  0]	UNM  	 10		10	; slot10 = -slot10
		2375	[  0]	KSTR 	 11		537	; slot11 = "hiddenY"
		2376	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2377	[  0]	TDUP 	 10		168	; slot10 = copy table#k168
		2378	[  0]	KSTR 	 11		541	; slot11 = "spring"
		2379	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2380	[  0]	TDUP 	 10		167	; slot10 = copy table#k167
		2381	[  0]	KSTR 	 11		166	; slot11 = "bob"
		2382	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2383	[  0]	TDUP 	 10		165	; slot10 = copy table#k165
		2384	[  0]	GGET 	 11		782	; slot11 = _env["math"]
		2385	[  0]	TGETS	 11	11	780	; slot11 = math.floor
		2386	[  0]	KSTR 	 13		639	; slot13 = "virtual"
		2387	[  0]	TGETV	 13	0	13	; slot13 = slot0[slot13]
		2388	[  0]	KSTR 	 14		637	; slot14 = "W"
		2389	[  0]	TGETV	 13	13	14	; slot13 = slot13[slot14]
		2390	[  0]	MULVN	 13	13	17	; slot13 = slot13 * 0.28
		2391	[  0]	CALL 	 11	2	2	; slot11 = math.floor(slot12)
		2392	[  0]	KSTR 	 12		507	; slot12 = "x"
		2393	[  0]	TSETV	 11	10	12	; slot10[slot12] = math.floor
		2394	[  0]	GGET 	 11		782	; slot11 = _env["math"]
		2395	[  0]	TGETS	 11	11	780	; slot11 = math.floor
		2396	[  0]	KSTR 	 13		639	; slot13 = "virtual"
		2397	[  0]	TGETV	 13	0	13	; slot13 = slot0[slot13]
		2398	[  0]	KSTR 	 14		635	; slot14 = "H"
		2399	[  0]	TGETV	 13	13	14	; slot13 = slot13[slot14]
		2400	[  0]	MULVN	 13	13	12	; slot13 = slot13 * 0.22
		2401	[  0]	CALL 	 11	2	2	; slot11 = math.floor(slot12)
		2402	[  0]	KSTR 	 12		506	; slot12 = "y"
		2403	[  0]	TSETV	 11	10	12	; slot10[slot12] = math.floor
		2404	[  0]	GGET 	 11		782	; slot11 = _env["math"]
		2405	[  0]	TGETS	 11	11	780	; slot11 = math.floor
		2406	[  0]	KSTR 	 13		639	; slot13 = "virtual"
		2407	[  0]	TGETV	 13	0	13	; slot13 = slot0[slot13]
		2408	[  0]	KSTR 	 14		637	; slot14 = "W"
		2409	[  0]	TGETV	 13	13	14	; slot13 = slot13[slot14]
		2410	[  0]	MULVN	 13	13	18	; slot13 = slot13 * 0.54
		2411	[  0]	CALL 	 11	2	2	; slot11 = math.floor(slot12)
		2412	[  0]	KSTR 	 12		164	; slot12 = "w"
		2413	[  0]	TSETV	 11	10	12	; slot10[slot12] = math.floor
		2414	[  0]	GGET 	 11		782	; slot11 = _env["math"]
		2415	[  0]	TGETS	 11	11	780	; slot11 = math.floor
		2416	[  0]	KSTR 	 13		639	; slot13 = "virtual"
		2417	[  0]	TGETV	 13	0	13	; slot13 = slot0[slot13]
		2418	[  0]	KSTR 	 14		637	; slot14 = "W"
		2419	[  0]	TGETV	 13	13	14	; slot13 = slot13[slot14]
		2420	[  0]	MULVN	 13	13	19	; slot13 = slot13 * 0.15
		2421	[  0]	CALL 	 11	2	2	; slot11 = math.floor(slot12)
		2422	[  0]	KSTR 	 12		163	; slot12 = "descWrapWidthPx"
		2423	[  0]	TSETV	 11	10	12	; slot10[slot12] = math.floor
		2424	[  0]	TDUP 	 11		162	; slot11 = copy table#k162
		2425	[  0]	KSTR 	 12		275	; slot12 = "titleColor"
		2426	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2427	[  0]	TDUP 	 11		161	; slot11 = copy table#k161
		2428	[  0]	KSTR 	 12		273	; slot12 = "bodyColor"
		2429	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2430	[  0]	TDUP 	 11		160	; slot11 = copy table#k160
		2431	[  0]	TSETS	 11	10	956	; slot10.numberColor = slot11
		2432	[  0]	TSETS	 10	9	888	; slot9.text = slot10
		2433	[  0]	TDUP 	 10		159	; slot10 = copy table#k159
		2434	[  0]	TDUP 	 11		158	; slot11 = copy table#k158
		2435	[  0]	TSETS	 11	10	961	; slot10.color = slot11
		2436	[  0]	TDUP 	 11		157	; slot11 = copy table#k157
		2437	[  0]	TDUP 	 12		156	; slot12 = copy table#k156
		2438	[  0]	TSETS	 12	11	961	; slot11.color = slot12
		2439	[  0]	KSTR 	 12		687	; slot12 = "outline"
		2440	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2441	[  0]	KSTR 	 11		155	; slot11 = "targetLabel"
		2442	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2443	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		2444	[  0]	KSTR 	  8		154	; slot8 = "itemInfoOverlay"
		2445	[  0]	TDUP 	  9		153	; slot9 = copy table#k153
		2446	[  0]	KSTR 	 10		639	; slot10 = "virtual"
		2447	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
		2448	[  0]	KSTR 	 11		635	; slot11 = "H"
		2449	[  0]	TGETV	 10	10	11	; slot10 = slot10[slot11]
		2450	[  0]	UNM  	 10		10	; slot10 = -slot10
		2451	[  0]	KSTR 	 11		537	; slot11 = "hiddenY"
		2452	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2453	[  0]	TDUP 	 10		152	; slot10 = copy table#k152
		2454	[  0]	KSTR 	 11		541	; slot11 = "spring"
		2455	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2456	[  0]	TDUP 	 10		151	; slot10 = copy table#k151
		2457	[  0]	GGET 	 11		782	; slot11 = _env["math"]
		2458	[  0]	TGETS	 11	11	780	; slot11 = math.floor
		2459	[  0]	KSTR 	 13		639	; slot13 = "virtual"
		2460	[  0]	TGETV	 13	0	13	; slot13 = slot0[slot13]
		2461	[  0]	KSTR 	 14		637	; slot14 = "W"
		2462	[  0]	TGETV	 13	13	14	; slot13 = slot13[slot14]
		2463	[  0]	MULVN	 13	13	18	; slot13 = slot13 * 0.54
		2464	[  0]	CALL 	 11	2	2	; slot11 = math.floor(slot12)
		2465	[  0]	KSTR 	 12		164	; slot12 = "w"
		2466	[  0]	TSETV	 11	10	12	; slot10[slot12] = math.floor
		2467	[  0]	TDUP 	 11		150	; slot11 = copy table#k150
		2468	[  0]	KSTR 	 12		275	; slot12 = "titleColor"
		2469	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2470	[  0]	TDUP 	 11		149	; slot11 = copy table#k149
		2471	[  0]	KSTR 	 12		273	; slot12 = "bodyColor"
		2472	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2473	[  0]	TDUP 	 11		148	; slot11 = copy table#k148
		2474	[  0]	TSETS	 11	10	956	; slot10.numberColor = slot11
		2475	[  0]	GGET 	 11		782	; slot11 = _env["math"]
		2476	[  0]	TGETS	 11	11	780	; slot11 = math.floor
		2477	[  0]	KSTR 	 13		639	; slot13 = "virtual"
		2478	[  0]	TGETV	 13	0	13	; slot13 = slot0[slot13]
		2479	[  0]	KSTR 	 14		637	; slot14 = "W"
		2480	[  0]	TGETV	 13	13	14	; slot13 = slot13[slot14]
		2481	[  0]	MULVN	 13	13	18	; slot13 = slot13 * 0.54
		2482	[  0]	CALL 	 11	2	2	; slot11 = math.floor(slot12)
		2483	[  0]	KSTR 	 12		163	; slot12 = "descWrapWidthPx"
		2484	[  0]	TSETV	 11	10	12	; slot10[slot12] = math.floor
		2485	[  0]	TSETS	 10	9	888	; slot9.text = slot10
		2486	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		2487	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		2488	[  0]	TGETS	  8	8	761	; slot8 = uv0"unknown".resolve
		2489	[  0]	KSTR 	 10		752	; slot10 = "src/data/font/Galmuri9WS.fnt"
		2490	[  0]	CALL 	  8	2	2	; slot8 = uv0"unknown".resolve(slot9)
		2491	[  0]	GGET 	  9		759	; slot9 = _env["love"]
		2492	[  0]	TGETS	  9	9	758	; slot9 = love.filesystem
		2493	[  0]	TGETS	  9	9	757	; slot9 = love.filesystem.getInfo
		2494	[  0]	MOV  	 11		8	; slot11 = uv0"unknown".resolve
		2495	[  0]	CALL 	  9	2	2	; slot9 = love.filesystem.getInfo(slot10)
		2496	[  0]	ISF  	   		9	; if not love.filesystem.getInfo
		2497	[  0]	JMP  	 10		27	; 	goto 2525
		2498	[  0]	KSTR 	 10		540	; slot10 = "infoOverlay"
		2499	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
		2500	[  0]	ISF  	   		10	; if not slot10
		2501	[  0]	JMP  	 11		23	; 	goto 2525
		2502	[  0]	KSTR 	 10		540	; slot10 = "infoOverlay"
		2503	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
		2504	[  0]	TGETS	 10	10	888	; slot10 = slot10.text
		2505	[  0]	ISF  	   		10	; if not <unknown table>.text
		2506	[  0]	JMP  	 11		18	; 	goto 2525
		2507	[  0]	GGET 	 10		776	; slot10 = _env["pcall"]
		2508	[  0]	MOV  	 12		2	; slot12 = slot2
		2509	[  0]	MOV  	 13		8	; slot13 = uv0"unknown".resolve
		2510	[  0]	CALL 	 10	3	3	; slot10, slot11 = pcall(uv0"unknown".resolve, slot12)
		2511	[  0]	ISF  	   		10	; if not pcall
		2512	[  0]	JMP  	 12		12	; 	goto 2525
		2513	[  0]	ISF  	   		11	; if not uv0"unknown".resolve
		2514	[  0]	JMP  	 12		10	; 	goto 2525
		2515	[  0]	KSTR 	 12		540	; slot12 = "infoOverlay"
		2516	[  0]	TGETV	 12	0	12	; slot12 = slot0[slot12]
		2517	[  0]	TGETS	 12	12	888	; slot12 = slot12.text
		2518	[  0]	KSTR 	 13		147	; slot13 = "titleFont"
		2519	[  0]	TSETV	 11	12	13	; <unknown table>.text[slot13] = uv0"unknown".resolve
		2520	[  0]	KSTR 	 12		540	; slot12 = "infoOverlay"
		2521	[  0]	TGETV	 12	0	12	; slot12 = slot0[slot12]
		2522	[  0]	TGETS	 12	12	888	; slot12 = slot12.text
		2523	[  0]	KSTR 	 13		146	; slot13 = "bodyFont"
		2524	[  0]	TSETV	 11	12	13	; <unknown table>.text[slot13] = uv0"unknown".resolve
		2525	[  0]	KSTR 	  8		145	; slot8 = "coreMessage"
		2526	[  0]	TDUP 	  9		144	; slot9 = copy table#k144
		2527	[  0]	TDUP 	 10		143	; slot10 = copy table#k143
		2528	[  0]	TSETS	 10	9	961	; slot9.color = slot10
		2529	[  0]	TDUP 	 10		142	; slot10 = copy table#k142
		2530	[  0]	KSTR 	 11		141	; slot11 = "float"
		2531	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2532	[  0]	TDUP 	 10		140	; slot10 = copy table#k140
		2533	[  0]	KSTR 	 11		645	; slot11 = "jitter"
		2534	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2535	[  0]	TDUP 	 10		139	; slot10 = copy table#k139
		2536	[  0]	KSTR 	 11		138	; slot11 = "scrollJitter"
		2537	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2538	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		2539	[  0]	MOV  	  8		7	; slot8 = slot7
		2540	[  0]	KSTR 	 10		296	; slot10 = "pauseOverlay"
		2541	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
		2542	[  0]	KSTR 	 11		231	; slot11 = "creditsText"
		2543	[  0]	TGETV	 10	10	11	; slot10 = slot10[slot11]
		2544	[  0]	CALL 	  8	1	2	;  = slot8(slot9)
		2545	[  0]	KSTR 	  8		137	; slot8 = "shopOverlay"
		2546	[  0]	TDUP 	  9		136	; slot9 = copy table#k136
		2547	[  0]	KSTR 	 10		639	; slot10 = "virtual"
		2548	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
		2549	[  0]	KSTR 	 11		635	; slot11 = "H"
		2550	[  0]	TGETV	 10	10	11	; slot10 = slot10[slot11]
		2551	[  0]	UNM  	 10		10	; slot10 = -slot10
		2552	[  0]	KSTR 	 11		537	; slot11 = "hiddenY"
		2553	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2554	[  0]	TDUP 	 10		135	; slot10 = copy table#k135
		2555	[  0]	KSTR 	 11		541	; slot11 = "spring"
		2556	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2557	[  0]	TDUP 	 10		134	; slot10 = copy table#k134
		2558	[  0]	KSTR 	 11		166	; slot11 = "bob"
		2559	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2560	[  0]	TDUP 	 10		133	; slot10 = copy table#k133
		2561	[  0]	TDUP 	 11		132	; slot11 = copy table#k132
		2562	[  0]	TSETS	 11	10	961	; slot10.color = slot11
		2563	[  0]	TDUP 	 11		131	; slot11 = copy table#k131
		2564	[  0]	KSTR 	 12		130	; slot12 = "piano"
		2565	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2566	[  0]	TSETS	 10	9	888	; slot9.text = slot10
		2567	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		2568	[  0]	KSTR 	  8		129	; slot8 = "shopKeeper"
		2569	[  0]	KSTR 	  9		129	; slot9 = "shopKeeper"
		2570	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		2571	[  0]	IST  	   		9	; if slot9
		2572	[  0]	JMP  	 10		1	; 	goto 2574
		2573	[  0]	TDUP 	  9		128	; slot9 = copy table#k128
		2574	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		2575	[  0]	KSTR 	  8		127	; slot8 = "itemShop"
		2576	[  0]	TDUP 	  9		123	; slot9 = copy table#k123
		2577	[  0]	TDUP 	 10		126	; slot10 = copy table#k126
		2578	[  0]	TDUP 	 11		125	; slot11 = copy table#k125
		2579	[  0]	TDUP 	 12		124	; slot12 = copy table#k124
		2580	[  0]	TSETS	 12	11	885	; slot11.outlineColor = slot12
		2581	[  0]	TSETS	 11	10	854	; slot10.hover = slot11
		2582	[  0]	KSTR 	 11		122	; slot11 = "slots"
		2583	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2584	[  0]	FNEW 	 10		121	; N/A:0-0: 0 args, 1 upvalues, 15 slots
			
			;;;; constant tables ;;;;
			ktable#1 = [
				#1: 1,
				#2: 0.839,
				#3: 0.353,
				#4: 1,
				]
			
			
			ktable#2 = [
				[scale] = 1,
				[gapPx] = 25,
				[fixedLines] = 3,
				[absolute] = false,
				[offsetY] = -130,
				[offsetX] = 216,
				]
			
			
			ktable#7 = [
				#1: 0.82,
				#2: 0.84,
				#3: 0.86,
				#4: 1,
				]
			
			
			ktable#14 = [
				#1: 0.9647058823529412,
				#2: 0.7411764705882353,
				#3: 0.40784313725490196,
				#4: 1,
				]
			
			
			ktable#16 = [
				#1: 0.5529411764705883,
				#2: 0.7333333333333333,
				#3: 1,
				#4: 1,
				]
			
			
			ktable#18 = [
				]
			
			
			ktable#19 = [
				#1: 0.5568627450980392,
				#2: 0.8509803921568627,
				#3: 0.6274509803921569,
				#4: 1,
				]
			
			
			ktable#21 = [
				#1: 1,
				#2: 1,
				#3: 1,
				#4: 1,
				]
			
			
			ktable#53 = [
				#1: 0.615686274509804,
				#2: 0.792156862745098,
				#3: 0.9411764705882353,
				#4: 1,
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
			  2	[  0]	KPRI 	  1		2	; slot1 = true
			  3	[  0]	TSETS	  1	0	61	; slot0.centerIcon = slot1
			  4	[  0]	KSHORT	  1		0	; slot1 = 0
			  5	[  0]	TSETS	  1	0	60	; slot0.iconOffsetX = slot1
			  6	[  0]	KSHORT	  1		7	; slot1 = 7
			  7	[  0]	TSETS	  1	0	59	; slot0.iconOffsetY = slot1
			  8	[  0]	KSHORT	  1		1	; slot1 = 1
			  9	[  0]	TSETS	  1	0	58	; slot0.iconScale = slot1
			 10	[  0]	KSHORT	  1		10	; slot1 = 10
			 11	[  0]	TSETS	  1	0	57	; slot0.priceOffsetX = slot1
			 12	[  0]	KSHORT	  1		54	; slot1 = 54
			 13	[  0]	TSETS	  1	0	56	; slot0.priceOffsetY = slot1
			 14	[  0]	KSHORT	  1		1	; slot1 = 1
			 15	[  0]	TSETS	  1	0	55	; slot0.priceScale = slot1
			 16	[  0]	TDUP 	  1		53	; slot1 = copy table#k53
			 17	[  0]	TSETS	  1	0	54	; slot0.priceColor = slot1
			 18	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			 19	[  0]	TGETS	  1	1	52	; slot1 = uv0"unknown".resolve
			 20	[  0]	KSTR 	  3		51	; slot3 = "src/data/font/Galmuri9WS.fnt"
			 21	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown".resolve(slot2)
			 22	[  0]	GGET 	  2		50	; slot2 = _env["love"]
			 23	[  0]	TGETS	  2	2	49	; slot2 = love.filesystem
			 24	[  0]	TGETS	  2	2	48	; slot2 = love.filesystem.getInfo
			 25	[  0]	MOV  	  4		1	; slot4 = slot1
			 26	[  0]	CALL 	  2	2	2	; slot2 = love.filesystem.getInfo(slot3)
			 27	[  0]	ISF  	   		2	; if not slot2
			 28	[  0]	JMP  	  3		93	; 	goto 122
			 29	[  0]	GGET 	  3		47	; slot3 = _env["pcall"]
			 30	[  0]	FNEW 	  5		46	; N/A:0-0: 0 args, 2 upvalues, 3 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
				  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown"._loader
				  3	[  0]	ISF  	   		0	; if not uv0"unknown"._loader
				  4	[  0]	JMP  	  1		4	; 	goto 9
				  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
				  6	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown"._loader
				  7	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
				  8	[  0]	CALL 	  0	2	2	; slot0 = uv0"unknown"._loader(slot1)
				  9	[  0]	RET1 	  0		2	; return slot0
			 31	[  0]	CALL 	  3	3	2	; slot3, slot4 = pcall(slot4)
			 32	[  0]	IST  	   		4	; if slot4
			 33	[  0]	JMP  	  5		75	; 	goto 109
			 34	[  0]	GGET 	  5		50	; slot5 = _env["love"]
			 35	[  0]	TGETS	  5	5	49	; slot5 = love.filesystem
			 36	[  0]	TGETS	  5	5	45	; slot5 = love.filesystem.read
			 37	[  0]	MOV  	  7		1	; slot7 = slot1
			 38	[  0]	CALL 	  5	2	2	; slot5 = love.filesystem.read(slot6)
			 39	[  0]	ISF  	   		5	; if not love.filesystem.read
			 40	[  0]	JMP  	  6		81	; 	goto 122
			 41	[  0]	ISEQS	  5		44	; if love.filesystem.read == ""
			 42	[  0]	JMP  	  6		79	; 	goto 122
			 43	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
			 44	[  0]	MOV  	  9		5	; slot9 = love.filesystem.read
			 45	[  0]	TGETS	  7	5	43	; slot7 = love.filesystem.read.gmatch
			 46	[  0]	KSTR 	 10		42	; slot10 = "([^
			]+)"
			 47	[  0]	CALL 	  7	4	3	; slot7, slot8, slot9 = love.filesystem.read.gmatch(slot8, love.filesystem.read)
			 48	[  0]	JMP  	 10		11	; 	goto 60
			 49	[  0]	MOV  	 13		10	; slot13 = slot10
			 50	[  0]	TGETS	 11	10	41	; slot11 = slot10.match
			 51	[  0]	KSTR 	 14		40	; slot14 = "^%s*#"
			 52	[  0]	CALL 	 11	2	3	; slot11 = <unknown table>.match(slot12, slot13)
			 53	[  0]	IST  	   		11	; if <unknown table>.match
			 54	[  0]	JMP  	 11		5	; 	goto 60
			 55	[  0]	GGET 	 11		39	; slot11 = _env["table"]
			 56	[  0]	TGETS	 11	11	38	; slot11 = table.insert
			 57	[  0]	MOV  	 13		6	; slot13 = slot6
			 58	[  0]	MOV  	 14		10	; slot14 = slot10
			 59	[  0]	CALL 	 11	1	3	;  = table.insert(slot12, slot13)
			 60	[  0]	ITERC	 10	2	3	; slot10, slot11, slot12 = love.filesystem.read.gmatch, slot8, love.filesystem.read; slot10 = love.filesystem.read.gmatch(slot8, love.filesystem.read)
			 61	[  0]	ITERL	 10		-13	; love.filesystem.read = slot10; if slot10 != nil goto 49
			 62	[  0]	GGET 	  7		39	; slot7 = _env["table"]
			 63	[  0]	TGETS	  7	7	37	; slot7 = table.concat
			 64	[  0]	MOV  	  9		6	; slot9 = slot6
			 65	[  0]	KSTR 	 10		36	; slot10 = "
			"
			 66	[  0]	CALL 	  7	2	3	; slot7 = table.concat(slot8, slot9)
			 67	[  0]	MOV  	 10		7	; slot10 = table.concat
			 68	[  0]	TGETS	  8	7	41	; slot8 = table.concat.match
			 69	[  0]	KSTR 	 11		35	; slot11 = "
			$"
			 70	[  0]	CALL 	  8	2	3	; slot8 = table.concat.match(slot9, table.concat)
			 71	[  0]	IST  	   		8	; if table.concat.match
			 72	[  0]	JMP  	  8		3	; 	goto 76
			 73	[  0]	MOV  	  8		7	; slot8 = table.concat
			 74	[  0]	KSTR 	  9		36	; slot9 = "
			"
			 75	[  0]	CAT  	  7	8	9	; slot7 = table.concat .. slot9
			 76	[  0]	GGET 	  8		50	; slot8 = _env["love"]
			 77	[  0]	TGETS	  8	8	49	; slot8 = love.filesystem
			 78	[  0]	TGETS	  8	8	34	; slot8 = love.filesystem.newFileData
			 79	[  0]	MOV  	 10		7	; slot10 = slot7
			 80	[  0]	MOV  	 11		1	; slot11 = slot1
			 81	[  0]	CALL 	  8	2	3	; slot8 = love.filesystem.newFileData(slot9, slot10)
			 82	[  0]	GGET 	  9		50	; slot9 = _env["love"]
			 83	[  0]	TGETS	  9	9	33	; slot9 = love.graphics
			 84	[  0]	TGETS	  9	9	32	; slot9 = love.graphics.newFont
			 85	[  0]	MOV  	 11		8	; slot11 = love.filesystem.newFileData
			 86	[  0]	CALL 	  9	2	2	; slot9 = love.graphics.newFont(slot10)
			 87	[  0]	MOV  	 12		9	; slot12 = love.graphics.newFont
			 88	[  0]	TGETS	 10	9	31	; slot10 = love.graphics.newFont.setFilter
			 89	[  0]	KSTR 	 13		30	; slot13 = "nearest"
			 90	[  0]	KSTR 	 14		30	; slot14 = "nearest"
			 91	[  0]	CALL 	 10	1	4	;  = love.graphics.newFont.setFilter(love.filesystem.newFileData, love.graphics.newFont, slot13)
			 92	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
			 93	[  0]	TGETS	 10	10	29	; slot10 = uv0"unknown".attachFallbacks
			 94	[  0]	MOV  	 12		9	; slot12 = love.graphics.newFont
			 95	[  0]	MOV  	 13		1	; slot13 = slot1
			 96	[  0]	CALL 	 10	1	3	;  = uv0"unknown".attachFallbacks(love.filesystem.newFileData, love.graphics.newFont)
			 97	[  0]	TSETS	  9	0	28	; slot0.priceFont = love.graphics.newFont
			 98	[  0]	TGETS	 10	0	27	; slot10 = slot0.nameFont
			 99	[  0]	IST  	   		10	; if <unknown table>.nameFont
			100	[  0]	JMP  	 11		1	; 	goto 102
			101	[  0]	MOV  	 10		9	; slot10 = love.graphics.newFont
			102	[  0]	TSETS	 10	0	27	; slot0.nameFont = love.graphics.newFont
			103	[  0]	TGETS	 10	0	26	; slot10 = slot0.effectFont
			104	[  0]	IST  	   		10	; if <unknown table>.effectFont
			105	[  0]	JMP  	 11		1	; 	goto 107
			106	[  0]	MOV  	 10		9	; slot10 = love.graphics.newFont
			107	[  0]	TSETS	 10	0	26	; slot0.effectFont = love.graphics.newFont
			108	[  0]	JMP  	  5		13	; 	goto 122
			109	[  0]	ISF  	   		4	; if not slot4
			110	[  0]	JMP  	  5		11	; 	goto 122
			111	[  0]	TSETS	  4	0	28	; slot0.priceFont = slot4
			112	[  0]	TGETS	  5	0	27	; slot5 = slot0.nameFont
			113	[  0]	IST  	   		5	; if <unknown table>.nameFont
			114	[  0]	JMP  	  6		1	; 	goto 116
			115	[  0]	MOV  	  5		4	; slot5 = slot4
			116	[  0]	TSETS	  5	0	27	; slot0.nameFont = slot5
			117	[  0]	TGETS	  5	0	26	; slot5 = slot0.effectFont
			118	[  0]	IST  	   		5	; if <unknown table>.effectFont
			119	[  0]	JMP  	  6		1	; 	goto 121
			120	[  0]	MOV  	  5		4	; slot5 = slot4
			121	[  0]	TSETS	  5	0	26	; slot0.effectFont = slot5
			122	[  0]	UCLO 	  1		0	; nil uvs >= r1; goto 123
			123	[  0]	KSHORT	  1		217	; slot1 = 217
			124	[  0]	TSETS	  1	0	25	; slot0.nameOffsetX = slot1
			125	[  0]	KSHORT	  1		65402	; slot1 = 65402
			126	[  0]	TSETS	  1	0	24	; slot0.nameOffsetY = slot1
			127	[  0]	KSHORT	  1		1	; slot1 = 1
			128	[  0]	TSETS	  1	0	23	; slot0.nameScale = slot1
			129	[  0]	TDUP 	  1		21	; slot1 = copy table#k21
			130	[  0]	TSETS	  1	0	22	; slot0.nameColor = slot1
			131	[  0]	TDUP 	  1		18	; slot1 = copy table#k18
			132	[  0]	TDUP 	  2		19	; slot2 = copy table#k19
			133	[  0]	TSETS	  2	1	17	; slot1.U = slot2
			134	[  0]	TDUP 	  2		16	; slot2 = copy table#k16
			135	[  0]	TSETS	  2	1	15	; slot1.R = slot2
			136	[  0]	TDUP 	  2		14	; slot2 = copy table#k14
			137	[  0]	TSETS	  2	1	13	; slot1.L = slot2
			138	[  0]	TSETS	  1	0	20	; slot0.nameRarityColors = slot1
			139	[  0]	KPRI 	  1		2	; slot1 = true
			140	[  0]	TSETS	  1	0	12	; slot0.stripEnglishParen = slot1
			141	[  0]	KSHORT	  1		216	; slot1 = 216
			142	[  0]	TSETS	  1	0	11	; slot0.effectOffsetX = slot1
			143	[  0]	KSHORT	  1		65427	; slot1 = 65427
			144	[  0]	TSETS	  1	0	10	; slot0.effectOffsetY = slot1
			145	[  0]	KSHORT	  1		1	; slot1 = 1
			146	[  0]	TSETS	  1	0	9	; slot0.effectScale = slot1
			147	[  0]	TDUP 	  1		7	; slot1 = copy table#k7
			148	[  0]	TSETS	  1	0	8	; slot0.effectColor = slot1
			149	[  0]	KSHORT	  1		95	; slot1 = 95
			150	[  0]	TSETS	  1	0	6	; slot0.descMaxWidth = slot1
			151	[  0]	KSHORT	  1		5	; slot1 = 5
			152	[  0]	TSETS	  1	0	5	; slot0.descLineGapPx = slot1
			153	[  0]	KSHORT	  1		80	; slot1 = 80
			154	[  0]	TSETS	  1	0	4	; slot0.descViewportHeightPx = slot1
			155	[  0]	TDUP 	  1		2	; slot1 = copy table#k2
			156	[  0]	TDUP 	  2		1	; slot2 = copy table#k1
			157	[  0]	TSETS	  2	1	0	; slot1.color = slot2
			158	[  0]	TSETS	  1	0	3	; slot0.cooldown = slot1
			159	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 160
			160	[  0]	RET1 	  0		2	; return slot0
		2585	[  0]	CALL 	 10	2	1	; slot10 = slot10()
		2586	[  0]	KSTR 	 11		120	; slot11 = "itemLayout"
		2587	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2588	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		2589	[  0]	KSTR 	  8		119	; slot8 = "waveCounter"
		2590	[  0]	TDUP 	  9		118	; slot9 = copy table#k118
		2591	[  0]	TDUP 	 10		117	; slot10 = copy table#k117
		2592	[  0]	KSTR 	 11		116	; slot11 = "colorCurrent"
		2593	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2594	[  0]	TDUP 	 10		115	; slot10 = copy table#k115
		2595	[  0]	KSTR 	 11		114	; slot11 = "colorOther"
		2596	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2597	[  0]	TDUP 	 10		113	; slot10 = copy table#k113
		2598	[  0]	TDUP 	 11		112	; slot11 = copy table#k112
		2599	[  0]	TSETS	 11	10	961	; slot10.color = slot11
		2600	[  0]	KSTR 	 11		687	; slot11 = "outline"
		2601	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2602	[  0]	TDUP 	 10		111	; slot10 = copy table#k111
		2603	[  0]	TDUP 	 11		110	; slot11 = copy table#k110
		2604	[  0]	TSETS	 11	10	961	; slot10.color = slot11
		2605	[  0]	KSTR 	 11		109	; slot11 = "outlineOther"
		2606	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2607	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		2608	[  0]	KSTR 	  8		108	; slot8 = "waveLabel"
		2609	[  0]	TDUP 	  9		107	; slot9 = copy table#k107
		2610	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		2611	[  0]	KSTR 	  8		106	; slot8 = "maxUnit"
		2612	[  0]	TDUP 	  9		105	; slot9 = copy table#k105
		2613	[  0]	TDUP 	 10		104	; slot10 = copy table#k104
		2614	[  0]	TSETS	 10	9	961	; slot9.color = slot10
		2615	[  0]	TDUP 	 10		103	; slot10 = copy table#k103
		2616	[  0]	KSTR 	 11		102	; slot11 = "overColor"
		2617	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2618	[  0]	TDUP 	 10		101	; slot10 = copy table#k101
		2619	[  0]	KSTR 	 11		100	; slot11 = "iconFilter"
		2620	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2621	[  0]	TDUP 	 10		99	; slot10 = copy table#k99
		2622	[  0]	TDUP 	 11		98	; slot11 = copy table#k98
		2623	[  0]	TSETS	 11	10	961	; slot10.color = slot11
		2624	[  0]	TDUP 	 11		97	; slot11 = copy table#k97
		2625	[  0]	KSTR 	 12		96	; slot12 = "difficultyMaxWaves"
		2626	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2627	[  0]	KSTR 	 11		95	; slot11 = "waveText"
		2628	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2629	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		2630	[  0]	KSTR 	  8		94	; slot8 = "jungsuDisplay"
		2631	[  0]	TDUP 	  9		93	; slot9 = copy table#k93
		2632	[  0]	TDUP 	 10		92	; slot10 = copy table#k92
		2633	[  0]	TSETS	 10	9	961	; slot9.color = slot10
		2634	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		2635	[  0]	KSTR 	  8		91	; slot8 = "slotBlink"
		2636	[  0]	TDUP 	  9		90	; slot9 = copy table#k90
		2637	[  0]	TDUP 	 10		89	; slot10 = copy table#k89
		2638	[  0]	TSETS	 10	9	961	; slot9.color = slot10
		2639	[  0]	TDUP 	 10		88	; slot10 = copy table#k88
		2640	[  0]	KSTR 	 11		682	; slot11 = "shake"
		2641	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2642	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		2643	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		2644	[  0]	TGETS	  8	8	761	; slot8 = uv0"unknown".resolve
		2645	[  0]	KSTR 	 10		752	; slot10 = "src/data/font/Galmuri9WS.fnt"
		2646	[  0]	CALL 	  8	2	2	; slot8 = uv0"unknown".resolve(slot9)
		2647	[  0]	GGET 	  9		759	; slot9 = _env["love"]
		2648	[  0]	TGETS	  9	9	758	; slot9 = love.filesystem
		2649	[  0]	TGETS	  9	9	757	; slot9 = love.filesystem.getInfo
		2650	[  0]	MOV  	 11		8	; slot11 = uv0"unknown".resolve
		2651	[  0]	CALL 	  9	2	2	; slot9 = love.filesystem.getInfo(slot10)
		2652	[  0]	ISF  	   		9	; if not love.filesystem.getInfo
		2653	[  0]	JMP  	 10		37	; 	goto 2691
		2654	[  0]	GGET 	 10		776	; slot10 = _env["pcall"]
		2655	[  0]	MOV  	 12		2	; slot12 = slot2
		2656	[  0]	MOV  	 13		8	; slot13 = uv0"unknown".resolve
		2657	[  0]	CALL 	 10	3	3	; slot10, slot11 = pcall(uv0"unknown".resolve, slot12)
		2658	[  0]	ISF  	   		10	; if not pcall
		2659	[  0]	JMP  	 12		31	; 	goto 2691
		2660	[  0]	ISF  	   		11	; if not uv0"unknown".resolve
		2661	[  0]	JMP  	 12		29	; 	goto 2691
		2662	[  0]	KSTR 	 12		145	; slot12 = "coreMessage"
		2663	[  0]	TGETV	 12	0	12	; slot12 = slot0[slot12]
		2664	[  0]	TSETS	 11	12	770	; slot12.font = uv0"unknown".resolve
		2665	[  0]	KSTR 	 12		108	; slot12 = "waveLabel"
		2666	[  0]	TGETV	 12	0	12	; slot12 = slot0[slot12]
		2667	[  0]	ISF  	   		12	; if not slot12
		2668	[  0]	JMP  	 13		3	; 	goto 2672
		2669	[  0]	KSTR 	 12		108	; slot12 = "waveLabel"
		2670	[  0]	TGETV	 12	0	12	; slot12 = slot0[slot12]
		2671	[  0]	TSETS	 11	12	770	; slot12.font = uv0"unknown".resolve
		2672	[  0]	KSTR 	 12		630	; slot12 = "coreCountDisplay"
		2673	[  0]	TGETV	 12	0	12	; slot12 = slot0[slot12]
		2674	[  0]	ISF  	   		12	; if not slot12
		2675	[  0]	JMP  	 13		3	; 	goto 2679
		2676	[  0]	KSTR 	 12		630	; slot12 = "coreCountDisplay"
		2677	[  0]	TGETV	 12	0	12	; slot12 = slot0[slot12]
		2678	[  0]	TSETS	 11	12	770	; slot12.font = uv0"unknown".resolve
		2679	[  0]	KSTR 	 12		94	; slot12 = "jungsuDisplay"
		2680	[  0]	TGETV	 12	0	12	; slot12 = slot0[slot12]
		2681	[  0]	ISF  	   		12	; if not slot12
		2682	[  0]	JMP  	 13		8	; 	goto 2691
		2683	[  0]	KSTR 	 12		94	; slot12 = "jungsuDisplay"
		2684	[  0]	TGETV	 12	0	12	; slot12 = slot0[slot12]
		2685	[  0]	TGETS	 12	12	770	; slot12 = slot12.font
		2686	[  0]	IST  	   		12	; if <unknown table>.font
		2687	[  0]	JMP  	 12		3	; 	goto 2691
		2688	[  0]	KSTR 	 12		94	; slot12 = "jungsuDisplay"
		2689	[  0]	TGETV	 12	0	12	; slot12 = slot0[slot12]
		2690	[  0]	TSETS	 11	12	770	; slot12.font = uv0"unknown".resolve
		2691	[  0]	KSTR 	 10		145	; slot10 = "coreMessage"
		2692	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
		2693	[  0]	TGETS	 10	10	770	; slot10 = slot10.font
		2694	[  0]	IST  	   		10	; if <unknown table>.font
		2695	[  0]	JMP  	 10		20	; 	goto 2716
		2696	[  0]	KSTR 	 10		540	; slot10 = "infoOverlay"
		2697	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
		2698	[  0]	ISF  	   		10	; if not slot10
		2699	[  0]	JMP  	 11		16	; 	goto 2716
		2700	[  0]	KSTR 	 10		540	; slot10 = "infoOverlay"
		2701	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
		2702	[  0]	TGETS	 10	10	888	; slot10 = slot10.text
		2703	[  0]	ISF  	   		10	; if not <unknown table>.text
		2704	[  0]	JMP  	 11		11	; 	goto 2716
		2705	[  0]	KSTR 	 10		145	; slot10 = "coreMessage"
		2706	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
		2707	[  0]	KSTR 	 11		540	; slot11 = "infoOverlay"
		2708	[  0]	TGETV	 11	0	11	; slot11 = slot0[slot11]
		2709	[  0]	TGETS	 11	11	888	; slot11 = slot11.text
		2710	[  0]	KSTR 	 12		147	; slot12 = "titleFont"
		2711	[  0]	TGETV	 11	11	12	; slot11 = <unknown table>.text[slot12]
		2712	[  0]	IST  	   		11	; if slot11
		2713	[  0]	JMP  	 12		1	; 	goto 2715
		2714	[  0]	TGETS	 11	0	769	; slot11 = slot0.fontTitle
		2715	[  0]	TSETS	 11	10	770	; slot10.font = <unknown table>.fontTitle
		2716	[  0]	KSTR 	 10		630	; slot10 = "coreCountDisplay"
		2717	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
		2718	[  0]	ISF  	   		10	; if not slot10
		2719	[  0]	JMP  	 11		33	; 	goto 2753
		2720	[  0]	KSTR 	 10		630	; slot10 = "coreCountDisplay"
		2721	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
		2722	[  0]	TGETS	 10	10	770	; slot10 = slot10.font
		2723	[  0]	IST  	   		10	; if <unknown table>.font
		2724	[  0]	JMP  	 10		28	; 	goto 2753
		2725	[  0]	KSTR 	 10		630	; slot10 = "coreCountDisplay"
		2726	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
		2727	[  0]	KSTR 	 11		145	; slot11 = "coreMessage"
		2728	[  0]	TGETV	 11	0	11	; slot11 = slot0[slot11]
		2729	[  0]	TGETS	 11	11	770	; slot11 = slot11.font
		2730	[  0]	IST  	   		11	; if <unknown table>.font
		2731	[  0]	JMP  	 12		20	; 	goto 2752
		2732	[  0]	KSTR 	 11		540	; slot11 = "infoOverlay"
		2733	[  0]	TGETV	 11	0	11	; slot11 = slot0[slot11]
		2734	[  0]	ISF  	   		11	; if not slot11
		2735	[  0]	JMP  	 12		12	; 	goto 2748
		2736	[  0]	KSTR 	 11		540	; slot11 = "infoOverlay"
		2737	[  0]	TGETV	 11	0	11	; slot11 = slot0[slot11]
		2738	[  0]	TGETS	 11	11	888	; slot11 = slot11.text
		2739	[  0]	ISF  	   		11	; if not <unknown table>.text
		2740	[  0]	JMP  	 12		7	; 	goto 2748
		2741	[  0]	KSTR 	 11		540	; slot11 = "infoOverlay"
		2742	[  0]	TGETV	 11	0	11	; slot11 = slot0[slot11]
		2743	[  0]	TGETS	 11	11	888	; slot11 = slot11.text
		2744	[  0]	KSTR 	 12		147	; slot12 = "titleFont"
		2745	[  0]	TGETV	 11	11	12	; slot11 = <unknown table>.text[slot12]
		2746	[  0]	IST  	   		11	; if slot11
		2747	[  0]	JMP  	 12		4	; 	goto 2752
		2748	[  0]	TGETS	 11	0	769	; slot11 = slot0.fontTitle
		2749	[  0]	IST  	   		11	; if <unknown table>.fontTitle
		2750	[  0]	JMP  	 12		1	; 	goto 2752
		2751	[  0]	TGETS	 11	0	770	; slot11 = slot0.font
		2752	[  0]	TSETS	 11	10	770	; slot10.font = <unknown table>.font
		2753	[  0]	KSTR 	  8		87	; slot8 = "coreSelect"
		2754	[  0]	TDUP 	  9		86	; slot9 = copy table#k86
		2755	[  0]	TDUP 	 10		85	; slot10 = copy table#k85
		2756	[  0]	TSETS	 10	9	854	; slot9.hover = slot10
		2757	[  0]	FNEW 	 10		84	; N/A:0-0: 0 args, 1 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			ktable#2 = [
				#1: 0.3098039216,
				#2: 0.2705882353,
				#3: 0.2156862745,
				#4: 1,
				]
			
			
			ktable#4 = [
				#1: 0.5411764706,
				#2: 0.4784313725,
				#3: 0.3725490196,
				#4: 1,
				]
			
			
			ktable#6 = [
				[y] = 220,
				[x] = 2,
				]
			
			
			ktable#9 = [
				#1: 0.027450980392156862,
				#2: 0.37254901960784315,
				#3: 0.47843137254901963,
				#4: 1,
				]
			
			
			ktable#11 = [
				#1: 0.4392156863,
				#2: 0.2980392157,
				#3: 0.7058823529,
				#4: 1,
				]
			
			
			ktable#12 = [
				#1: 0.1803921569,
				#2: 0.1647058824,
				#3: 0.1411764706,
				#4: 1,
				]
			
			
			ktable#14 = [
				[wrapW] = 110,
				[x] = 28,
				[maxLines] = 5,
				[y] = 120,
				]
			
			
			ktable#16 = [
				#1: 0.1803921569,
				#2: 0.1647058824,
				#3: 0.1411764706,
				#4: 1,
				]
			
			
			ktable#18 = [
				[y] = 110,
				[x] = 0,
				]
			
			
			ktable#21 = [
				#1: 0.4235294118,
				#2: 0.2980392157,
				#3: 0.168627451,
				#4: 1,
				]
			
			
			ktable#23 = [
				[y] = 25,
				]
			
			
			ktable#26 = [
				[y] = 50,
				[x] = 0,
				]
			
			
			ktable#28 = [
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	TGETS	  0	0	30	; slot0 = uv0"unknown".coreSelect
			  3	[  0]	IST  	   		0	; if uv0"unknown".coreSelect
			  4	[  0]	JMP  	  1		1	; 	goto 6
			  5	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
			  6	[  0]	TGETS	  1	0	29	; slot1 = slot0.scale
			  7	[  0]	IST  	   		1	; if <unknown table>.scale
			  8	[  0]	JMP  	  2		1	; 	goto 10
			  9	[  0]	KSHORT	  1		2	; slot1 = 2
			 10	[  0]	TDUP 	  2		28	; slot2 = copy table#k28
			 11	[  0]	MULNV	  3	1	0	; slot3 = 8 * slot1
			 12	[  0]	TSETS	  3	2	27	; slot2.padPx = slot3
			 13	[  0]	TDUP 	  3		26	; slot3 = copy table#k26
			 14	[  0]	MULNV	  4	1	1	; slot4 = 16 * slot1
			 15	[  0]	TSETS	  4	3	25	; slot3.sizePx = slot4
			 16	[  0]	TSETS	  3	2	24	; slot2.icon = slot3
			 17	[  0]	TDUP 	  3		23	; slot3 = copy table#k23
			 18	[  0]	TSETS	  1	3	22	; slot3.x = slot1
			 19	[  0]	TDUP 	  4		21	; slot4 = copy table#k21
			 20	[  0]	TSETS	  4	3	20	; slot3.color = slot4
			 21	[  0]	TSETS	  3	2	19	; slot2.name = slot3
			 22	[  0]	TDUP 	  3		18	; slot3 = copy table#k18
			 23	[  0]	MULNV	  4	1	2	; slot4 = 2 * slot1
			 24	[  0]	TSETS	  4	3	17	; slot3.gapPx = slot4
			 25	[  0]	TDUP 	  4		16	; slot4 = copy table#k16
			 26	[  0]	TSETS	  4	3	20	; slot3.color = slot4
			 27	[  0]	TSETS	  3	2	15	; slot2.rarity = slot3
			 28	[  0]	TDUP 	  3		14	; slot3 = copy table#k14
			 29	[  0]	MULNV	  4	1	2	; slot4 = 2 * slot1
			 30	[  0]	TSETS	  4	3	13	; slot3.lineGapPx = slot4
			 31	[  0]	TDUP 	  4		12	; slot4 = copy table#k12
			 32	[  0]	TSETS	  4	3	20	; slot3.color = slot4
			 33	[  0]	TDUP 	  4		11	; slot4 = copy table#k11
			 34	[  0]	TSETS	  4	3	10	; slot3.numberColor = slot4
			 35	[  0]	TDUP 	  4		9	; slot4 = copy table#k9
			 36	[  0]	TSETS	  4	3	8	; slot3.symbolColor = slot4
			 37	[  0]	TSETS	  3	2	7	; slot2.desc = slot3
			 38	[  0]	TDUP 	  3		6	; slot3 = copy table#k6
			 39	[  0]	MULNV	  4	1	3	; slot4 = 6 * slot1
			 40	[  0]	TSETS	  4	3	5	; slot3.bottomPadPx = slot4
			 41	[  0]	TDUP 	  4		4	; slot4 = copy table#k4
			 42	[  0]	TSETS	  4	3	3	; slot3.labelColor = slot4
			 43	[  0]	TDUP 	  4		2	; slot4 = copy table#k2
			 44	[  0]	TSETS	  4	3	1	; slot3.valueColor = slot4
			 45	[  0]	TSETS	  3	2	0	; slot2.duration = slot3
			 46	[  0]	RET1 	  2		2	; return slot2
		2758	[  0]	CALL 	 10	2	1	; slot10 = slot10()
		2759	[  0]	KSTR 	 11		284	; slot11 = "content"
		2760	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2761	[  0]	TDUP 	 10		83	; slot10 = copy table#k83
		2762	[  0]	TDUP 	 11		82	; slot11 = copy table#k82
		2763	[  0]	TSETS	 11	10	854	; slot10.hover = slot11
		2764	[  0]	KSTR 	 11		189	; slot11 = "buttons"
		2765	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2766	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		2767	[  0]	KSTR 	  8		81	; slot8 = "postfx"
		2768	[  0]	TDUP 	  9		80	; slot9 = copy table#k80
		2769	[  0]	TDUP 	 10		79	; slot10 = copy table#k79
		2770	[  0]	KSTR 	 11		78	; slot11 = "toneMap"
		2771	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2772	[  0]	TDUP 	 10		77	; slot10 = copy table#k77
		2773	[  0]	TDUP 	 11		76	; slot11 = copy table#k76
		2774	[  0]	KSTR 	 12		75	; slot12 = "temporal"
		2775	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2776	[  0]	TSETS	 10	9	815	; slot9.bloom = slot10
		2777	[  0]	TDUP 	 10		74	; slot10 = copy table#k74
		2778	[  0]	KSTR 	 11		73	; slot11 = "vignette"
		2779	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2780	[  0]	TDUP 	 10		72	; slot10 = copy table#k72
		2781	[  0]	KSTR 	 11		71	; slot11 = "grainSharpen"
		2782	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2783	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		2784	[  0]	KSTR 	  8		70	; slot8 = "bossBar"
		2785	[  0]	TDUP 	  9		69	; slot9 = copy table#k69
		2786	[  0]	TDUP 	 10		68	; slot10 = copy table#k68
		2787	[  0]	TSETS	 10	9	961	; slot9.color = slot10
		2788	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		2789	[  0]	KSTR 	  8		67	; slot8 = "battlefieldSections"
		2790	[  0]	TDUP 	  9		66	; slot9 = copy table#k66
		2791	[  0]	TDUP 	 10		65	; slot10 = copy table#k65
		2792	[  0]	KSTR 	 11		64	; slot11 = "battlefield"
		2793	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2794	[  0]	TDUP 	 10		63	; slot10 = copy table#k63
		2795	[  0]	KSTR 	 11		62	; slot11 = "shop"
		2796	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2797	[  0]	TDUP 	 10		61	; slot10 = copy table#k61
		2798	[  0]	KSTR 	 11		60	; slot11 = "stone"
		2799	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2800	[  0]	TDUP 	 10		58	; slot10 = copy table#k58
		2801	[  0]	TDUP 	 11		59	; slot11 = copy table#k59
		2802	[  0]	TSETS	 11	10	885	; slot10.outlineColor = slot11
		2803	[  0]	TSETS	 10	9	854	; slot9.hover = slot10
		2804	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		2805	[  0]	KSTR 	  8		57	; slot8 = "sandboxPostFX"
		2806	[  0]	TDUP 	  9		56	; slot9 = copy table#k56
		2807	[  0]	GGET 	 10		782	; slot10 = _env["math"]
		2808	[  0]	TGETS	 10	10	780	; slot10 = math.floor
		2809	[  0]	TGETS	 12	0	969	; slot12 = slot0.scale
		2810	[  0]	MULNV	 12	12	10	; slot12 = 6 * <unknown table>.scale
		2811	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
		2812	[  0]	KSTR 	 11		55	; slot11 = "gapX"
		2813	[  0]	TSETV	 10	9	11	; slot9[slot11] = math.floor
		2814	[  0]	GGET 	 10		782	; slot10 = _env["math"]
		2815	[  0]	TGETS	 10	10	780	; slot10 = math.floor
		2816	[  0]	TGETS	 12	0	969	; slot12 = slot0.scale
		2817	[  0]	MULNV	 12	12	20	; slot12 = 26 * <unknown table>.scale
		2818	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
		2819	[  0]	KSTR 	 11		416	; slot11 = "btnW"
		2820	[  0]	TSETV	 10	9	11	; slot9[slot11] = math.floor
		2821	[  0]	GGET 	 10		782	; slot10 = _env["math"]
		2822	[  0]	TGETS	 10	10	780	; slot10 = math.floor
		2823	[  0]	TGETS	 12	0	969	; slot12 = slot0.scale
		2824	[  0]	MULNV	 12	12	8	; slot12 = 10 * <unknown table>.scale
		2825	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
		2826	[  0]	KSTR 	 11		415	; slot11 = "btnH"
		2827	[  0]	TSETV	 10	9	11	; slot9[slot11] = math.floor
		2828	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		2829	[  0]	KSTR 	  8		54	; slot8 = "coreEquipped"
		2830	[  0]	TDUP 	  9		53	; slot9 = copy table#k53
		2831	[  0]	TDUP 	 10		52	; slot10 = copy table#k52
		2832	[  0]	TDUP 	 11		51	; slot11 = copy table#k51
		2833	[  0]	TSETS	 11	10	961	; slot10.color = slot11
		2834	[  0]	TDUP 	 11		50	; slot11 = copy table#k50
		2835	[  0]	KSTR 	 12		49	; slot12 = "shadowColor"
		2836	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2837	[  0]	KSTR 	 11		48	; slot11 = "coinSackAmount"
		2838	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2839	[  0]	TDUP 	 10		47	; slot10 = copy table#k47
		2840	[  0]	TDUP 	 11		46	; slot11 = copy table#k46
		2841	[  0]	TSETS	 11	10	961	; slot10.color = slot11
		2842	[  0]	KSTR 	 11		45	; slot11 = "mercContractUses"
		2843	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2844	[  0]	TDUP 	 10		44	; slot10 = copy table#k44
		2845	[  0]	TDUP 	 11		43	; slot11 = copy table#k43
		2846	[  0]	KSTR 	 12		682	; slot12 = "shake"
		2847	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2848	[  0]	KSTR 	 11		42	; slot11 = "banStamp"
		2849	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2850	[  0]	TDUP 	 10		41	; slot10 = copy table#k41
		2851	[  0]	KSTR 	 11		40	; slot11 = "crookedFang"
		2852	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2853	[  0]	TNEW 	 10		3	; slot10 = new table( array: 3, dict: 1)
		2854	[  0]	TDUP 	 11		39	; slot11 = copy table#k39
		2855	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		2856	[  0]	TDUP 	 11		38	; slot11 = copy table#k38
		2857	[  0]	TSETB	 11	10	2	; slot10[2] = slot11
		2858	[  0]	KSTR 	 11		37	; slot11 = "greedyTailSparkPositions"
		2859	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2860	[  0]	TDUP 	 10		35	; slot10 = copy table#k35
		2861	[  0]	TDUP 	 11		36	; slot11 = copy table#k36
		2862	[  0]	TSETS	 11	10	961	; slot10.color = slot11
		2863	[  0]	TDUP 	 11		34	; slot11 = copy table#k34
		2864	[  0]	KSTR 	 12		33	; slot12 = "hoverColor"
		2865	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2866	[  0]	KSTR 	 11		32	; slot11 = "manualTarget"
		2867	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2868	[  0]	TDUP 	 10		30	; slot10 = copy table#k30
		2869	[  0]	TDUP 	 11		31	; slot11 = copy table#k31
		2870	[  0]	TSETS	 11	10	961	; slot10.color = slot11
		2871	[  0]	KSTR 	 11		29	; slot11 = "manualReady"
		2872	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2873	[  0]	TDUP 	 10		27	; slot10 = copy table#k27
		2874	[  0]	TDUP 	 11		28	; slot11 = copy table#k28
		2875	[  0]	TSETS	 11	10	969	; slot10.scale = slot11
		2876	[  0]	TDUP 	 11		25	; slot11 = copy table#k25
		2877	[  0]	TDUP 	 12		26	; slot12 = copy table#k26
		2878	[  0]	KSTR 	 13		24	; slot13 = "dur"
		2879	[  0]	TSETV	 12	11	13	; slot11[slot13] = slot12
		2880	[  0]	KSTR 	 12		23	; slot12 = "spawn"
		2881	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2882	[  0]	KSTR 	 11		22	; slot11 = "fx"
		2883	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2884	[  0]	TDUP 	 10		21	; slot10 = copy table#k21
		2885	[  0]	TDUP 	 11		20	; slot11 = copy table#k20
		2886	[  0]	KSTR 	 12		19	; slot12 = "exclude"
		2887	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2888	[  0]	TDUP 	 11		18	; slot11 = copy table#k18
		2889	[  0]	KSTR 	 12		17	; slot12 = "dest"
		2890	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2891	[  0]	TDUP 	 11		16	; slot11 = copy table#k16
		2892	[  0]	KSTR 	 12		682	; slot12 = "shake"
		2893	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2894	[  0]	KSTR 	 11		15	; slot11 = "preSpin"
		2895	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2896	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		2897	[  0]	KSTR 	  8		14	; slot8 = "cloudScroll"
		2898	[  0]	TDUP 	  9		13	; slot9 = copy table#k13
		2899	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		2900	[  0]	KSTR 	  8		12	; slot8 = "scrollIntroAnim"
		2901	[  0]	TDUP 	  9		11	; slot9 = copy table#k11
		2902	[  0]	TDUP 	 10		10	; slot10 = copy table#k10
		2903	[  0]	TDUP 	 11		9	; slot11 = copy table#k9
		2904	[  0]	TSETS	 11	10	961	; slot10.color = slot11
		2905	[  0]	TDUP 	 11		8	; slot11 = copy table#k8
		2906	[  0]	TSETS	 11	10	885	; slot10.outlineColor = slot11
		2907	[  0]	TDUP 	 11		7	; slot11 = copy table#k7
		2908	[  0]	KSTR 	 12		6	; slot12 = "urgentColor"
		2909	[  0]	TSETV	 11	10	12	; slot10[slot12] = slot11
		2910	[  0]	TDUP 	 11		5	; slot11 = copy table#k5
		2911	[  0]	TSETS	 11	10	866	; slot10.completeColor = slot11
		2912	[  0]	KSTR 	 11		263	; slot11 = "label"
		2913	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2914	[  0]	TDUP 	 10		4	; slot10 = copy table#k4
		2915	[  0]	TDUP 	 11		3	; slot11 = copy table#k3
		2916	[  0]	TSETS	 11	10	885	; slot10.outlineColor = slot11
		2917	[  0]	KSTR 	 11		2	; slot11 = "returnPrompt"
		2918	[  0]	TSETV	 10	9	11	; slot9[slot11] = slot10
		2919	[  0]	TSETV	  9	0	8	; slot0[slot8] = slot9
		2920	[  0]	KSTR 	  8		87	; slot8 = "coreSelect"
		2921	[  0]	TGETV	  8	0	8	; slot8 = slot0[slot8]
		2922	[  0]	ISF  	   		8	; if not slot8
		2923	[  0]	JMP  	  9		5	; 	goto 2929
		2924	[  0]	KSTR 	  8		87	; slot8 = "coreSelect"
		2925	[  0]	TGETV	  8	0	8	; slot8 = slot0[slot8]
		2926	[  0]	TGETS	  8	8	770	; slot8 = slot8.font
		2927	[  0]	IST  	   		8	; if <unknown table>.font
		2928	[  0]	JMP  	  8		63	; 	goto 2992
		2929	[  0]	KSTR 	  8		145	; slot8 = "coreMessage"
		2930	[  0]	TGETV	  8	0	8	; slot8 = slot0[slot8]
		2931	[  0]	ISF  	   		8	; if not slot8
		2932	[  0]	JMP  	  9		12	; 	goto 2945
		2933	[  0]	KSTR 	  8		145	; slot8 = "coreMessage"
		2934	[  0]	TGETV	  8	0	8	; slot8 = slot0[slot8]
		2935	[  0]	TGETS	  8	8	770	; slot8 = slot8.font
		2936	[  0]	ISF  	   		8	; if not <unknown table>.font
		2937	[  0]	JMP  	  9		7	; 	goto 2945
		2938	[  0]	KSTR 	  8		87	; slot8 = "coreSelect"
		2939	[  0]	TGETV	  8	0	8	; slot8 = slot0[slot8]
		2940	[  0]	KSTR 	  9		145	; slot9 = "coreMessage"
		2941	[  0]	TGETV	  9	0	9	; slot9 = slot0[slot9]
		2942	[  0]	TGETS	  9	9	770	; slot9 = slot9.font
		2943	[  0]	TSETS	  9	8	770	; slot8.font = <unknown table>.font
		2944	[  0]	JMP  	  8		47	; 	goto 2992
		2945	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		2946	[  0]	TGETS	  8	8	761	; slot8 = uv0"unknown".resolve
		2947	[  0]	KSTR 	 10		752	; slot10 = "src/data/font/Galmuri9WS.fnt"
		2948	[  0]	CALL 	  8	2	2	; slot8 = uv0"unknown".resolve(<unknown table>.font)
		2949	[  0]	GGET 	  9		759	; slot9 = _env["love"]
		2950	[  0]	TGETS	  9	9	758	; slot9 = love.filesystem
		2951	[  0]	TGETS	  9	9	757	; slot9 = love.filesystem.getInfo
		2952	[  0]	MOV  	 11		8	; slot11 = uv0"unknown".resolve
		2953	[  0]	CALL 	  9	2	2	; slot9 = love.filesystem.getInfo(slot10)
		2954	[  0]	ISF  	   		9	; if not love.filesystem.getInfo
		2955	[  0]	JMP  	 10		11	; 	goto 2967
		2956	[  0]	GGET 	 10		776	; slot10 = _env["pcall"]
		2957	[  0]	MOV  	 12		2	; slot12 = slot2
		2958	[  0]	MOV  	 13		8	; slot13 = uv0"unknown".resolve
		2959	[  0]	CALL 	 10	3	3	; slot10, slot11 = pcall(uv0"unknown".resolve, slot12)
		2960	[  0]	ISF  	   		10	; if not pcall
		2961	[  0]	JMP  	 12		5	; 	goto 2967
		2962	[  0]	ISF  	   		11	; if not uv0"unknown".resolve
		2963	[  0]	JMP  	 12		3	; 	goto 2967
		2964	[  0]	KSTR 	 12		87	; slot12 = "coreSelect"
		2965	[  0]	TGETV	 12	0	12	; slot12 = slot0[slot12]
		2966	[  0]	TSETS	 11	12	770	; slot12.font = uv0"unknown".resolve
		2967	[  0]	KSTR 	 10		87	; slot10 = "coreSelect"
		2968	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
		2969	[  0]	TGETS	 10	10	770	; slot10 = slot10.font
		2970	[  0]	IST  	   		10	; if <unknown table>.font
		2971	[  0]	JMP  	 10		20	; 	goto 2992
		2972	[  0]	KSTR 	 10		540	; slot10 = "infoOverlay"
		2973	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
		2974	[  0]	ISF  	   		10	; if not slot10
		2975	[  0]	JMP  	 11		16	; 	goto 2992
		2976	[  0]	KSTR 	 10		540	; slot10 = "infoOverlay"
		2977	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
		2978	[  0]	TGETS	 10	10	888	; slot10 = slot10.text
		2979	[  0]	ISF  	   		10	; if not <unknown table>.text
		2980	[  0]	JMP  	 11		11	; 	goto 2992
		2981	[  0]	KSTR 	 10		87	; slot10 = "coreSelect"
		2982	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
		2983	[  0]	KSTR 	 11		540	; slot11 = "infoOverlay"
		2984	[  0]	TGETV	 11	0	11	; slot11 = slot0[slot11]
		2985	[  0]	TGETS	 11	11	888	; slot11 = slot11.text
		2986	[  0]	KSTR 	 12		147	; slot12 = "titleFont"
		2987	[  0]	TGETV	 11	11	12	; slot11 = <unknown table>.text[slot12]
		2988	[  0]	IST  	   		11	; if slot11
		2989	[  0]	JMP  	 12		1	; 	goto 2991
		2990	[  0]	TGETS	 11	0	769	; slot11 = slot0.fontTitle
		2991	[  0]	TSETS	 11	10	770	; slot10.font = <unknown table>.fontTitle
		2992	[  0]	KSTR 	  8		465	; slot8 = "heartNumber"
		2993	[  0]	TGETV	  8	0	8	; slot8 = slot0[slot8]
		2994	[  0]	ISF  	   		8	; if not slot8
		2995	[  0]	JMP  	  9		48	; 	goto 3044
		2996	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		2997	[  0]	TGETS	  8	8	761	; slot8 = uv0"unknown".resolve
		2998	[  0]	KSTR 	 10		752	; slot10 = "src/data/font/Galmuri9WS.fnt"
		2999	[  0]	CALL 	  8	2	2	; slot8 = uv0"unknown".resolve(love.filesystem.getInfo)
		3000	[  0]	GGET 	  9		759	; slot9 = _env["love"]
		3001	[  0]	TGETS	  9	9	758	; slot9 = love.filesystem
		3002	[  0]	TGETS	  9	9	757	; slot9 = love.filesystem.getInfo
		3003	[  0]	MOV  	 11		8	; slot11 = uv0"unknown".resolve
		3004	[  0]	CALL 	  9	2	2	; slot9 = love.filesystem.getInfo(slot10)
		3005	[  0]	KPRI 	 10		1	; slot10 = false
		3006	[  0]	ISF  	   		9	; if not love.filesystem.getInfo
		3007	[  0]	JMP  	 11		12	; 	goto 3020
		3008	[  0]	GGET 	 11		776	; slot11 = _env["pcall"]
		3009	[  0]	MOV  	 13		2	; slot13 = slot2
		3010	[  0]	MOV  	 14		8	; slot14 = uv0"unknown".resolve
		3011	[  0]	CALL 	 11	3	3	; slot11, slot12 = pcall(slot12, slot13)
		3012	[  0]	ISF  	   		11	; if not pcall
		3013	[  0]	JMP  	 13		6	; 	goto 3020
		3014	[  0]	ISF  	   		12	; if not slot12
		3015	[  0]	JMP  	 13		4	; 	goto 3020
		3016	[  0]	KSTR 	 13		465	; slot13 = "heartNumber"
		3017	[  0]	TGETV	 13	0	13	; slot13 = slot0[slot13]
		3018	[  0]	TSETS	 12	13	770	; slot13.font = slot12
		3019	[  0]	KPRI 	 10		2	; slot10 = true
		3020	[  0]	IST  	   		10	; if slot10
		3021	[  0]	JMP  	 11		22	; 	goto 3044
		3022	[  0]	UGET 	 11		0	; slot11 = uv0"unknwon"
		3023	[  0]	TGETS	 11	11	761	; slot11 = uv0"unknown".resolve
		3024	[  0]	KSTR 	 13		760	; slot13 = "src/data/font/Galmuri9W.fnt"
		3025	[  0]	CALL 	 11	2	2	; slot11 = uv0"unknown".resolve(slot12)
		3026	[  0]	GGET 	 12		759	; slot12 = _env["love"]
		3027	[  0]	TGETS	 12	12	758	; slot12 = love.filesystem
		3028	[  0]	TGETS	 12	12	757	; slot12 = love.filesystem.getInfo
		3029	[  0]	MOV  	 14		11	; slot14 = uv0"unknown".resolve
		3030	[  0]	CALL 	 12	2	2	; slot12 = love.filesystem.getInfo(slot13)
		3031	[  0]	ISF  	   		12	; if not love.filesystem.getInfo
		3032	[  0]	JMP  	 13		11	; 	goto 3044
		3033	[  0]	GGET 	 13		776	; slot13 = _env["pcall"]
		3034	[  0]	MOV  	 15		2	; slot15 = slot2
		3035	[  0]	MOV  	 16		11	; slot16 = uv0"unknown".resolve
		3036	[  0]	CALL 	 13	3	3	; slot13, slot14 = pcall(uv0"unknown".resolve, slot15)
		3037	[  0]	ISF  	   		13	; if not pcall
		3038	[  0]	JMP  	 15		5	; 	goto 3044
		3039	[  0]	ISF  	   		14	; if not uv0"unknown".resolve
		3040	[  0]	JMP  	 15		3	; 	goto 3044
		3041	[  0]	KSTR 	 15		465	; slot15 = "heartNumber"
		3042	[  0]	TGETV	 15	0	15	; slot15 = slot0[slot15]
		3043	[  0]	TSETS	 14	15	770	; slot15.font = uv0"unknown".resolve
		3044	[  0]	UGET 	  8		4	; slot8 = uv4"unknwon"
		3045	[  0]	KSTR 	  9		1	; slot9 = "reloadLanguageFonts"
		3046	[  0]	FNEW 	 10		0	; N/A:0-0: 1 args, 6 upvalues, 23 slots
			
			;;;; constant tables ;;;;
			ktable#4 = [
				[priority] = 0,
				]
			
			
			ktable#52 = [
				[priority] = 0,
				[kind] = vector,
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  1		71	; slot1 = _env["package"]
			  2	[  0]	TGETS	  1	1	70	; slot1 = package.loaded
			  3	[  0]	ISF  	   		1	; if not package.loaded
			  4	[  0]	JMP  	  2		3	; 	goto 8
			  5	[  0]	GGET 	  1		71	; slot1 = _env["package"]
			  6	[  0]	TGETS	  1	1	70	; slot1 = package.loaded
			  7	[  0]	TGETS	  1	1	69	; slot1 = package.loaded.src.ui.imprint
			  8	[  0]	ISF  	   		1	; if not package.loaded.src.ui.imprint
			  9	[  0]	JMP  	  2		5	; 	goto 15
			 10	[  0]	TGETS	  2	1	68	; slot2 = package.loaded.src.ui.imprint.reloadLanguageFonts
			 11	[  0]	ISF  	   		2	; if not package.loaded.src.ui.imprint.reloadLanguageFonts
			 12	[  0]	JMP  	  3		2	; 	goto 15
			 13	[  0]	TGETS	  2	1	68	; slot2 = package.loaded.src.ui.imprint.reloadLanguageFonts
			 14	[  0]	CALL 	  2	1	1	;  = package.loaded.src.ui.imprint.reloadLanguageFonts()
			 15	[  0]	IST  	   		0	; if slot0
			 16	[  0]	JMP  	  2		1	; 	goto 18
			 17	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 18	[  0]	IST  	   		0	; if uv0"unknown"
			 19	[  0]	JMP  	  2		1	; 	goto 21
			 20	[  0]	UCLO 	  0		495	; nil uvs >= r0; goto 516
			 21	[  0]	FNEW 	  2		67	; N/A:0-0: 2 args, 3 upvalues, 13 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
				  2	[  0]	TGETS	  2	2	20	; slot2 = uv0"unknown".resolve
				  3	[  0]	MOV  	  4		0	; slot4 = slot0
				  4	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown".resolve(slot3)
				  5	[  0]	GGET 	  3		19	; slot3 = _env["type"]
				  6	[  0]	MOV  	  5		2	; slot5 = slot2
				  7	[  0]	CALL 	  3	2	2	; slot3 = type(slot4)
				  8	[  0]	ISNES	  3		18	; if type ~= "string"
				  9	[  0]	JMP  	  3		86	; 	goto 96
				 10	[  0]	ISEQS	  2		17	; if slot2 == ""
				 11	[  0]	JMP  	  3		84	; 	goto 96
				 12	[  0]	GGET 	  3		16	; slot3 = _env["love"]
				 13	[  0]	TGETS	  3	3	15	; slot3 = love.filesystem
				 14	[  0]	TGETS	  3	3	14	; slot3 = love.filesystem.getInfo
				 15	[  0]	MOV  	  5		2	; slot5 = slot2
				 16	[  0]	CALL 	  3	2	2	; slot3 = love.filesystem.getInfo(slot4)
				 17	[  0]	ISF  	   		3	; if not love.filesystem.getInfo
				 18	[  0]	JMP  	  4		77	; 	goto 96
				 19	[  0]	GGET 	  3		13	; slot3 = _env["tostring"]
				 20	[  0]	MOV  	  5		2	; slot5 = slot2
				 21	[  0]	CALL 	  3	2	2	; slot3 = tostring(slot4)
				 22	[  0]	MOV  	  5		3	; slot5 = tostring
				 23	[  0]	TGETS	  3	3	12	; slot3 = tostring.lower
				 24	[  0]	CALL 	  3	2	2	; slot3 = tostring.lower(slot4)
				 25	[  0]	MOV  	  6		3	; slot6 = tostring.lower
				 26	[  0]	TGETS	  4	3	11	; slot4 = tostring.lower.match
				 27	[  0]	KSTR 	  7		10	; slot7 = "%.ttf$"
				 28	[  0]	CALL 	  4	2	3	; slot4 = tostring.lower.match(tostring, tostring.lower)
				 29	[  0]	ISNEP	  4		0	; if tostring.lower.match ~= nil
				 30	[  0]	JMP  	  4		8	; 	goto 39
				 31	[  0]	MOV  	  6		3	; slot6 = tostring.lower
				 32	[  0]	TGETS	  4	3	11	; slot4 = tostring.lower.match
				 33	[  0]	KSTR 	  7		9	; slot7 = "%.otf$"
				 34	[  0]	CALL 	  4	2	3	; slot4 = tostring.lower.match(tostring, tostring.lower)
				 35	[  0]	ISNEP	  4		0	; if tostring.lower.match ~= nil
				 36	[  0]	JMP  	  4		2	; 	goto 39
				 37	[  0]	KPRI 	  4		1	; slot4 = false
				 38	[  0]	JMP  	  5		1	; 	goto 40
				 39	[  0]	KPRI 	  4		2	; slot4 = true
				 40	[  0]	KNIL 	  5		6	; tostring, tostring.lower = nil
				 41	[  0]	ISF  	   		4	; if not slot4
				 42	[  0]	JMP  	  7		25	; 	goto 68
				 43	[  0]	GGET 	  7		8	; slot7 = _env["pcall"]
				 44	[  0]	GGET 	  9		16	; slot9 = _env["love"]
				 45	[  0]	TGETS	  9	9	7	; slot9 = love.graphics
				 46	[  0]	TGETS	  9	9	6	; slot9 = love.graphics.newFont
				 47	[  0]	MOV  	 10		2	; slot10 = slot2
				 48	[  0]	ISTC 	 11		1	; slot11 = slot1; if slot1
				 49	[  0]	JMP  	 11		1	; 	goto 51
				 50	[  0]	KSHORT	 11		10	; slot11 = 10
				 51	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
				 52	[  0]	CALL 	  7	3	5	; slot7, slot8 = pcall(slot8, love.graphics.newFont, slot10, slot11)
				 53	[  0]	MOV  	  6		8	; slot6 = slot8
				 54	[  0]	MOV  	  5		7	; slot5 = pcall
				 55	[  0]	ISF  	   		5	; if not pcall
				 56	[  0]	JMP  	  7		17	; 	goto 74
				 57	[  0]	ISF  	   		6	; if not slot6
				 58	[  0]	JMP  	  7		15	; 	goto 74
				 59	[  0]	TGETS	  7	6	5	; slot7 = slot6.setFilter
				 60	[  0]	ISF  	   		7	; if not <unknown table>.setFilter
				 61	[  0]	JMP  	  8		12	; 	goto 74
				 62	[  0]	MOV  	  9		6	; slot9 = slot6
				 63	[  0]	TGETS	  7	6	5	; slot7 = slot6.setFilter
				 64	[  0]	KSTR 	 10		4	; slot10 = "nearest"
				 65	[  0]	KSTR 	 11		4	; slot11 = "nearest"
				 66	[  0]	CALL 	  7	1	4	;  = <unknown table>.setFilter(slot8, slot9, slot10)
				 67	[  0]	JMP  	  7		6	; 	goto 74
				 68	[  0]	GGET 	  7		8	; slot7 = _env["pcall"]
				 69	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
				 70	[  0]	MOV  	 10		2	; slot10 = slot2
				 71	[  0]	CALL 	  7	3	3	; slot7, slot8 = pcall(slot8, uv2"unknown")
				 72	[  0]	MOV  	  6		8	; slot6 = slot8
				 73	[  0]	MOV  	  5		7	; slot5 = pcall
				 74	[  0]	ISF  	   		5	; if not pcall
				 75	[  0]	JMP  	  7		20	; 	goto 96
				 76	[  0]	ISF  	   		6	; if not slot6
				 77	[  0]	JMP  	  7		18	; 	goto 96
				 78	[  0]	GGET 	  7		3	; slot7 = _env["_G"]
				 79	[  0]	TGETS	  7	7	2	; slot7 = _G.maybeRegisterSLineTtfTextEffect
				 80	[  0]	ISF  	   		7	; if not _G.maybeRegisterSLineTtfTextEffect
				 81	[  0]	JMP  	  8		11	; 	goto 93
				 82	[  0]	GGET 	  7		3	; slot7 = _env["_G"]
				 83	[  0]	TGETS	  7	7	2	; slot7 = _G.maybeRegisterSLineTtfTextEffect
				 84	[  0]	MOV  	  9		6	; slot9 = slot6
				 85	[  0]	MOV  	 10		0	; slot10 = slot0
				 86	[  0]	MOV  	 11		2	; slot11 = slot2
				 87	[  0]	GGET 	 12		3	; slot12 = _env["_G"]
				 88	[  0]	TGETS	 12	12	1	; slot12 = _G.currentGameLang
				 89	[  0]	IST  	   		12	; if _G.currentGameLang
				 90	[  0]	JMP  	 13		1	; 	goto 92
				 91	[  0]	KSTR 	 12		0	; slot12 = "ko"
				 92	[  0]	CALL 	  7	1	5	;  = _G.maybeRegisterSLineTtfTextEffect(slot8, slot9, slot10, slot11)
				 93	[  0]	MOV  	  7		6	; slot7 = slot6
				 94	[  0]	MOV  	  8		2	; slot8 = slot2
				 95	[  0]	RET  	  7		3	; return slot7, slot8
				 96	[  0]	KPRI 	  3		0	; slot3 = nil
				 97	[  0]	MOV  	  4		2	; slot4 = slot2
				 98	[  0]	RET  	  3		3	; return slot3, slot4
			 22	[  0]	FNEW 	  3		66	; N/A:0-0: 1 args, 1 upvalues, 5 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	GGET 	  1		6	; slot1 = _env["type"]
				  2	[  0]	MOV  	  3		0	; slot3 = slot0
				  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
				  4	[  0]	ISNES	  1		5	; if slot1 ~= "string"
				  5	[  0]	JMP  	  1		2	; 	goto 8
				  6	[  0]	ISNES	  0		4	; if slot0 ~= ""
				  7	[  0]	JMP  	  1		2	; 	goto 10
				  8	[  0]	KPRI 	  1		0	; slot1 = nil
				  9	[  0]	RET1 	  1		2	; return slot1
				 10	[  0]	GGET 	  1		3	; slot1 = _env["love"]
				 11	[  0]	TGETS	  1	1	2	; slot1 = love.filesystem
				 12	[  0]	TGETS	  1	1	1	; slot1 = love.filesystem.getInfo
				 13	[  0]	MOV  	  3		0	; slot3 = slot0
				 14	[  0]	CALL 	  1	2	2	; slot1 = love.filesystem.getInfo(slot2)
				 15	[  0]	ISF  	   		1	; if not slot1
				 16	[  0]	JMP  	  2		9	; 	goto 26
				 17	[  0]	GGET 	  1		0	; slot1 = _env["pcall"]
				 18	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
				 19	[  0]	MOV  	  4		0	; slot4 = slot0
				 20	[  0]	CALL 	  1	3	3	; slot1, slot2 = pcall(slot2, uv0"unknown")
				 21	[  0]	ISF  	   		1	; if not slot1
				 22	[  0]	JMP  	  3		3	; 	goto 26
				 23	[  0]	ISF  	   		2	; if not slot2
				 24	[  0]	JMP  	  3		1	; 	goto 26
				 25	[  0]	RET1 	  2		2	; return slot2
				 26	[  0]	KPRI 	  1		0	; slot1 = nil
				 27	[  0]	RET1 	  1		2	; return slot1
			 23	[  0]	FNEW 	  4		65	; N/A:0-0: 2 args, 2 upvalues, 11 slots
				
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
				 17	[  0]	GGET 	  2		9	; slot2 = _env["tostring"]
				 18	[  0]	MOV  	  4		0	; slot4 = slot0
				 19	[  0]	CALL 	  2	2	2	; slot2 = tostring(slot3)
				 20	[  0]	MOV  	  4		2	; slot4 = slot2
				 21	[  0]	TGETS	  2	2	8	; slot2 = slot2.lower
				 22	[  0]	CALL 	  2	2	2	; slot2 = <unknown table>.lower(slot3)
				 23	[  0]	KNIL 	  3		4	; slot3, slot4 = nil
				 24	[  0]	MOV  	  7		2	; slot7 = slot2
				 25	[  0]	TGETS	  5	2	7	; slot5 = slot2.match
				 26	[  0]	KSTR 	  8		6	; slot8 = "%.ttf$"
				 27	[  0]	CALL 	  5	2	3	; slot5 = <unknown table>.match(slot6, slot7)
				 28	[  0]	IST  	   		5	; if <unknown table>.match
				 29	[  0]	JMP  	  6		6	; 	goto 36
				 30	[  0]	MOV  	  7		2	; slot7 = slot2
				 31	[  0]	TGETS	  5	2	7	; slot5 = slot2.match
				 32	[  0]	KSTR 	  8		5	; slot8 = "%.otf$"
				 33	[  0]	CALL 	  5	2	3	; slot5 = <unknown table>.match(slot6, slot7)
				 34	[  0]	ISF  	   		5	; if not <unknown table>.match
				 35	[  0]	JMP  	  6		13	; 	goto 49
				 36	[  0]	GGET 	  5		4	; slot5 = _env["pcall"]
				 37	[  0]	GGET 	  7		12	; slot7 = _env["love"]
				 38	[  0]	TGETS	  7	7	3	; slot7 = love.graphics
				 39	[  0]	TGETS	  7	7	2	; slot7 = love.graphics.newFont
				 40	[  0]	MOV  	  8		0	; slot8 = slot0
				 41	[  0]	ISTC 	  9		1	; slot9 = slot1; if slot1
				 42	[  0]	JMP  	  9		1	; 	goto 44
				 43	[  0]	KSHORT	  9		10	; slot9 = 10
				 44	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
				 45	[  0]	CALL 	  5	3	5	; slot5, slot6 = pcall(slot6, love.graphics.newFont, slot8, slot9)
				 46	[  0]	MOV  	  4		6	; slot4 = slot6
				 47	[  0]	MOV  	  3		5	; slot3 = slot5
				 48	[  0]	JMP  	  5		6	; 	goto 55
				 49	[  0]	GGET 	  5		4	; slot5 = _env["pcall"]
				 50	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
				 51	[  0]	MOV  	  8		0	; slot8 = slot0
				 52	[  0]	CALL 	  5	3	3	; slot5, slot6 = pcall(slot6, uv1"unknown")
				 53	[  0]	MOV  	  4		6	; slot4 = slot6
				 54	[  0]	MOV  	  3		5	; slot3 = pcall
				 55	[  0]	ISF  	   		3	; if not pcall
				 56	[  0]	JMP  	  5		8	; 	goto 65
				 57	[  0]	ISF  	   		4	; if not slot4
				 58	[  0]	JMP  	  5		6	; 	goto 65
				 59	[  0]	MOV  	  7		4	; slot7 = slot4
				 60	[  0]	TGETS	  5	4	1	; slot5 = slot4.setFilter
				 61	[  0]	KSTR 	  8		0	; slot8 = "nearest"
				 62	[  0]	KSTR 	  9		0	; slot9 = "nearest"
				 63	[  0]	CALL 	  5	1	4	;  = <unknown table>.setFilter(slot6, slot7, slot8)
				 64	[  0]	RET1 	  4		2	; return slot4
				 65	[  0]	KPRI 	  5		0	; slot5 = nil
				 66	[  0]	RET1 	  5		2	; return slot5
			 24	[  0]	FNEW 	  5		64	; N/A:0-0: 3 args, 1 upvalues, 11 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	ISF  	   		0	; if not slot0
				  2	[  0]	JMP  	  3		23	; 	goto 26
				  3	[  0]	GGET 	  3		2	; slot3 = _env["_G"]
				  4	[  0]	TGETS	  3	3	1	; slot3 = _G.registerChineseLatinFallbackFont
				  5	[  0]	ISF  	   		3	; if not _G.registerChineseLatinFallbackFont
				  6	[  0]	JMP  	  4		19	; 	goto 26
				  7	[  0]	GGET 	  3		2	; slot3 = _env["_G"]
				  8	[  0]	TGETS	  3	3	0	; slot3 = _G.resolveChineseLatinFallbackPath
				  9	[  0]	ISF  	   		3	; if not _G.resolveChineseLatinFallbackPath
				 10	[  0]	JMP  	  4		6	; 	goto 17
				 11	[  0]	GGET 	  3		2	; slot3 = _env["_G"]
				 12	[  0]	TGETS	  3	3	0	; slot3 = _G.resolveChineseLatinFallbackPath
				 13	[  0]	MOV  	  5		1	; slot5 = slot1
				 14	[  0]	CALL 	  3	2	2	; slot3 = _G.resolveChineseLatinFallbackPath(slot4)
				 15	[  0]	IST  	   		3	; if _G.resolveChineseLatinFallbackPath
				 16	[  0]	JMP  	  4		1	; 	goto 18
				 17	[  0]	MOV  	  3		1	; slot3 = slot1
				 18	[  0]	GGET 	  4		2	; slot4 = _env["_G"]
				 19	[  0]	TGETS	  4	4	1	; slot4 = _G.registerChineseLatinFallbackFont
				 20	[  0]	MOV  	  6		0	; slot6 = slot0
				 21	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
				 22	[  0]	MOV  	  9		3	; slot9 = slot3
				 23	[  0]	MOV  	 10		2	; slot10 = slot2
				 24	[  0]	CALL 	  7	0	3	; MULTRES = uv0"unknown"(slot8, slot9)
				 25	[  0]	CALLM	  4	1	1	;  = _G.registerChineseLatinFallbackFont(slot5, ...MULTRES)
				 26	[  0]	RET1 	  0		2	; return slot0
			 25	[  0]	FNEW 	  6		63	; N/A:0-0: 2 args, 0 upvalues, 7 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	ISF  	   		0	; if not slot0
				  2	[  0]	JMP  	  2		10	; 	goto 13
				  3	[  0]	ISF  	   		1	; if not slot1
				  4	[  0]	JMP  	  2		8	; 	goto 13
				  5	[  0]	TGETS	  2	0	1	; slot2 = slot0.setFallbacks
				  6	[  0]	ISF  	   		2	; if not <unknown table>.setFallbacks
				  7	[  0]	JMP  	  3		5	; 	goto 13
				  8	[  0]	GGET 	  2		0	; slot2 = _env["pcall"]
				  9	[  0]	TGETS	  4	0	1	; slot4 = slot0.setFallbacks
				 10	[  0]	MOV  	  5		0	; slot5 = slot0
				 11	[  0]	MOV  	  6		1	; slot6 = slot1
				 12	[  0]	CALL 	  2	1	4	;  = pcall(slot3, <unknown table>.setFallbacks, slot5)
				 13	[  0]	RET1 	  0		2	; return slot0
			 26	[  0]	GGET 	  7		62	; slot7 = _env["_G"]
			 27	[  0]	TGETS	  7	7	61	; slot7 = _G.currentGameLang
			 28	[  0]	IST  	   		7	; if _G.currentGameLang
			 29	[  0]	JMP  	  8		1	; 	goto 31
			 30	[  0]	KSTR 	  7		60	; slot7 = "ko"
			 31	[  0]	ISNES	  7		59	; if slot7 ~= "zh"
			 32	[  0]	JMP  	  7		258	; 	goto 291
			 33	[  0]	GGET 	  7		62	; slot7 = _env["_G"]
			 34	[  0]	TGETS	  7	7	58	; slot7 = _G.clearChineseShadowFonts
			 35	[  0]	ISF  	   		7	; if not _G.clearChineseShadowFonts
			 36	[  0]	JMP  	  8		3	; 	goto 40
			 37	[  0]	GGET 	  7		62	; slot7 = _env["_G"]
			 38	[  0]	TGETS	  7	7	58	; slot7 = _G.clearChineseShadowFonts
			 39	[  0]	CALL 	  7	1	1	;  = _G.clearChineseShadowFonts()
			 40	[  0]	MOV  	  7		5	; slot7 = slot5
			 41	[  0]	UGET 	  9		4	; slot9 = uv4"unknwon"
			 42	[  0]	KSHORT	 11		10	; slot11 = 10
			 43	[  0]	KPRI 	 12		1	; slot12 = false
			 44	[  0]	CALL 	  9	2	3	; slot9 = uv4"unknown"(slot10, slot11)
			 45	[  0]	KSTR 	 10		57	; slot10 = "src/data/font/Galmuri9W.fnt"
			 46	[  0]	KSHORT	 11		10	; slot11 = 10
			 47	[  0]	CALL 	  7	2	4	; slot7 = slot7(slot8, uv4"unknown", slot10)
			 48	[  0]	MOV  	  8		5	; slot8 = slot5
			 49	[  0]	UGET 	 10		4	; slot10 = uv4"unknwon"
			 50	[  0]	KSHORT	 12		10	; slot12 = 10
			 51	[  0]	KPRI 	 13		1	; slot13 = false
			 52	[  0]	CALL 	 10	2	3	; slot10 = uv4"unknown"(slot11, slot12)
			 53	[  0]	KSTR 	 11		57	; slot11 = "src/data/font/Galmuri9W.fnt"
			 54	[  0]	KSHORT	 12		10	; slot12 = 10
			 55	[  0]	CALL 	  8	2	4	; slot8 = slot8(uv4"unknown", uv4"unknown", slot11)
			 56	[  0]	MOV  	  9		5	; slot9 = slot5
			 57	[  0]	UGET 	 11		4	; slot11 = uv4"unknwon"
			 58	[  0]	KSHORT	 13		10	; slot13 = 10
			 59	[  0]	KPRI 	 14		2	; slot14 = true
			 60	[  0]	CALL 	 11	2	3	; slot11 = uv4"unknown"(slot12, slot13)
			 61	[  0]	KSTR 	 12		56	; slot12 = "src/data/font/Galmuri9WS.fnt"
			 62	[  0]	KSHORT	 13		10	; slot13 = 10
			 63	[  0]	CALL 	  9	2	4	; slot9 = slot9(uv4"unknown", uv4"unknown", slot12)
			 64	[  0]	MOV  	 10		5	; slot10 = slot5
			 65	[  0]	UGET 	 12		4	; slot12 = uv4"unknwon"
			 66	[  0]	KSHORT	 14		10	; slot14 = 10
			 67	[  0]	KPRI 	 15		1	; slot15 = false
			 68	[  0]	CALL 	 12	2	3	; slot12 = uv4"unknown"(slot13, slot14)
			 69	[  0]	KSTR 	 13		55	; slot13 = "src/data/font/Galmuri7W.fnt"
			 70	[  0]	KSHORT	 14		10	; slot14 = 10
			 71	[  0]	CALL 	 10	2	4	; slot10 = slot10(uv4"unknown", uv4"unknown", slot13)
			 72	[  0]	MOV  	 11		5	; slot11 = slot5
			 73	[  0]	UGET 	 13		4	; slot13 = uv4"unknwon"
			 74	[  0]	KSHORT	 15		10	; slot15 = 10
			 75	[  0]	KPRI 	 16		2	; slot16 = true
			 76	[  0]	CALL 	 13	2	3	; slot13 = uv4"unknown"(slot14, slot15)
			 77	[  0]	KSTR 	 14		56	; slot14 = "src/data/font/Galmuri9WS.fnt"
			 78	[  0]	KSHORT	 15		10	; slot15 = 10
			 79	[  0]	CALL 	 11	2	4	; slot11 = slot11(uv4"unknown", uv4"unknown", slot14)
			 80	[  0]	MOV  	 12		4	; slot12 = slot4
			 81	[  0]	KSTR 	 14		54	; slot14 = "src/data/font/Galmuri7WS.fnt"
			 82	[  0]	KSHORT	 15		10	; slot15 = 10
			 83	[  0]	CALL 	 12	2	3	; slot12 = slot12(uv4"unknown", slot14)
			 84	[  0]	MOV  	 13		4	; slot13 = slot4
			 85	[  0]	KSTR 	 15		57	; slot15 = "src/data/font/Galmuri9W.fnt"
			 86	[  0]	KSHORT	 16		10	; slot16 = 10
			 87	[  0]	CALL 	 13	2	3	; slot13 = slot13(slot14, slot15)
			 88	[  0]	MOV  	 14		4	; slot14 = slot4
			 89	[  0]	KSTR 	 16		56	; slot16 = "src/data/font/Galmuri9WS.fnt"
			 90	[  0]	KSHORT	 17		10	; slot17 = 10
			 91	[  0]	CALL 	 14	2	3	; slot14 = slot14(slot15, slot16)
			 92	[  0]	MOV  	 15		4	; slot15 = slot4
			 93	[  0]	KSTR 	 17		55	; slot17 = "src/data/font/Galmuri7W.fnt"
			 94	[  0]	KSHORT	 18		10	; slot18 = 10
			 95	[  0]	CALL 	 15	2	3	; slot15 = slot15(slot16, slot17)
			 96	[  0]	ISTC 	 16		14	; slot16 = slot14; if slot14
			 97	[  0]	JMP  	 16		1	; 	goto 99
			 98	[  0]	MOV  	 16		13	; slot16 = slot13
			 99	[  0]	ISTC 	 17		13	; slot17 = slot13; if slot13
			100	[  0]	JMP  	 17		1	; 	goto 102
			101	[  0]	MOV  	 17		14	; slot17 = slot14
			102	[  0]	ISF  	   		7	; if not slot7
			103	[  0]	JMP  	 18		185	; 	goto 289
			104	[  0]	TDUP 	 18		52	; slot18 = copy table#k52
			105	[  0]	UGET 	 19		5	; slot19 = uv5"unknwon"
			106	[  0]	TSETS	 19	18	51	; slot18.path = uv5"unknown"
			107	[  0]	TSETS	 18	0	53	; uv0"unknown".fontInfo = slot18
			108	[  0]	UGET 	 18		5	; slot18 = uv5"unknwon"
			109	[  0]	TSETS	 18	0	50	; uv0"unknown".fontPath = uv5"unknown"
			110	[  0]	KSTR 	 18		48	; slot18 = "vector"
			111	[  0]	TSETS	 18	0	49	; uv0"unknown".fontKind = slot18
			112	[  0]	KSHORT	 18		1	; slot18 = 1
			113	[  0]	TSETS	 18	0	47	; uv0"unknown".fontScale = slot18
			114	[  0]	KSHORT	 18		1	; slot18 = 1
			115	[  0]	TSETS	 18	0	46	; uv0"unknown".fontTitleScale = slot18
			116	[  0]	TSETS	  7	0	45	; uv0"unknown".font = slot7
			117	[  0]	ISTC 	 18		8	; slot18 = slot8; if slot8
			118	[  0]	JMP  	 18		1	; 	goto 120
			119	[  0]	MOV  	 18		7	; slot18 = slot7
			120	[  0]	TSETS	 18	0	44	; uv0"unknown".fontTitle = slot18
			121	[  0]	ISTC 	 18		8	; slot18 = slot8; if slot8
			122	[  0]	JMP  	 18		1	; 	goto 124
			123	[  0]	MOV  	 18		7	; slot18 = slot7
			124	[  0]	TSETS	 18	0	43	; uv0"unknown".fontBattlefieldTitle = slot18
			125	[  0]	ISTC 	 18		8	; slot18 = slot8; if slot8
			126	[  0]	JMP  	 18		1	; 	goto 128
			127	[  0]	MOV  	 18		7	; slot18 = slot7
			128	[  0]	TSETS	 18	0	42	; uv0"unknown".fontPauseTitle = slot18
			129	[  0]	ISTC 	 18		8	; slot18 = slot8; if slot8
			130	[  0]	JMP  	 18		1	; 	goto 132
			131	[  0]	MOV  	 18		7	; slot18 = slot7
			132	[  0]	TSETS	 18	0	41	; uv0"unknown".fontStageSelectTitle = slot18
			133	[  0]	TSETS	  7	0	40	; uv0"unknown".fontClassCard = slot7
			134	[  0]	ISTC 	 18		9	; slot18 = slot9; if slot9
			135	[  0]	JMP  	 18		1	; 	goto 137
			136	[  0]	MOV  	 18		7	; slot18 = slot7
			137	[  0]	TSETS	 18	0	39	; uv0"unknown".fontGameOver = slot18
			138	[  0]	ISTC 	 18		15	; slot18 = slot15; if slot15
			139	[  0]	JMP  	 18		3	; 	goto 143
			140	[  0]	ISTC 	 18		10	; slot18 = slot10; if slot10
			141	[  0]	JMP  	 18		1	; 	goto 143
			142	[  0]	MOV  	 18		7	; slot18 = slot7
			143	[  0]	TSETS	 18	0	38	; uv0"unknown".fontCoin = slot18
			144	[  0]	KSHORT	 18		1	; slot18 = 1
			145	[  0]	TSETS	 18	0	37	; uv0"unknown".fontCoinScale = slot18
			146	[  0]	ISTC 	 18		15	; slot18 = slot15; if slot15
			147	[  0]	JMP  	 18		3	; 	goto 151
			148	[  0]	ISTC 	 18		10	; slot18 = slot10; if slot10
			149	[  0]	JMP  	 18		1	; 	goto 151
			150	[  0]	MOV  	 18		7	; slot18 = slot7
			151	[  0]	TSETS	 18	0	36	; uv0"unknown".fontJackpot = slot18
			152	[  0]	KSHORT	 18		1	; slot18 = 1
			153	[  0]	TSETS	 18	0	35	; uv0"unknown".fontJackpotScale = slot18
			154	[  0]	ISTC 	 18		12	; slot18 = slot12; if slot12
			155	[  0]	JMP  	 18		3	; 	goto 159
			156	[  0]	ISTC 	 18		11	; slot18 = slot11; if slot11
			157	[  0]	JMP  	 18		1	; 	goto 159
			158	[  0]	MOV  	 18		7	; slot18 = slot7
			159	[  0]	TSETS	 18	0	34	; uv0"unknown".fontShopTitle = slot18
			160	[  0]	KSHORT	 18		1	; slot18 = 1
			161	[  0]	TSETS	 18	0	33	; uv0"unknown".fontShopTitleScale = slot18
			162	[  0]	ISF  	   		17	; if not slot17
			163	[  0]	JMP  	 18		1	; 	goto 165
			164	[  0]	TSETS	 17	0	32	; uv0"unknown".combatNumberFont = slot17
			165	[  0]	TGETS	 18	0	31	; slot18 = uv0"unknown".classCard
			166	[  0]	ISF  	   		18	; if not uv0"unknown".classCard
			167	[  0]	JMP  	 19		2	; 	goto 170
			168	[  0]	TGETS	 18	0	31	; slot18 = uv0"unknown".classCard
			169	[  0]	TSETS	  7	18	45	; uv0"unknown".classCard.font = slot7
			170	[  0]	TGETS	 18	0	30	; slot18 = uv0"unknown".infoOverlay
			171	[  0]	ISF  	   		18	; if not uv0"unknown".infoOverlay
			172	[  0]	JMP  	 19		18	; 	goto 191
			173	[  0]	TGETS	 18	0	30	; slot18 = uv0"unknown".infoOverlay
			174	[  0]	TGETS	 18	18	29	; slot18 = uv0"unknown".infoOverlay.text
			175	[  0]	ISF  	   		18	; if not uv0"unknown".infoOverlay.text
			176	[  0]	JMP  	 19		14	; 	goto 191
			177	[  0]	TGETS	 18	0	30	; slot18 = uv0"unknown".infoOverlay
			178	[  0]	TGETS	 18	18	29	; slot18 = uv0"unknown".infoOverlay.text
			179	[  0]	ISTC 	 19		9	; slot19 = slot9; if slot9
			180	[  0]	JMP  	 19		3	; 	goto 184
			181	[  0]	ISTC 	 19		8	; slot19 = slot8; if slot8
			182	[  0]	JMP  	 19		1	; 	goto 184
			183	[  0]	MOV  	 19		7	; slot19 = slot7
			184	[  0]	TSETS	 19	18	28	; uv0"unknown".infoOverlay.text.titleFont = slot19
			185	[  0]	TGETS	 18	0	30	; slot18 = uv0"unknown".infoOverlay
			186	[  0]	TGETS	 18	18	29	; slot18 = uv0"unknown".infoOverlay.text
			187	[  0]	ISTC 	 19		9	; slot19 = slot9; if slot9
			188	[  0]	JMP  	 19		1	; 	goto 190
			189	[  0]	MOV  	 19		7	; slot19 = slot7
			190	[  0]	TSETS	 19	18	27	; uv0"unknown".infoOverlay.text.bodyFont = slot19
			191	[  0]	TGETS	 18	0	26	; slot18 = uv0"unknown".itemShop
			192	[  0]	ISF  	   		18	; if not uv0"unknown".itemShop
			193	[  0]	JMP  	 19		22	; 	goto 216
			194	[  0]	TGETS	 18	0	26	; slot18 = uv0"unknown".itemShop
			195	[  0]	TGETS	 18	18	25	; slot18 = uv0"unknown".itemShop.itemLayout
			196	[  0]	ISF  	   		18	; if not uv0"unknown".itemShop.itemLayout
			197	[  0]	JMP  	 19		18	; 	goto 216
			198	[  0]	TGETS	 18	0	26	; slot18 = uv0"unknown".itemShop
			199	[  0]	TGETS	 18	18	25	; slot18 = uv0"unknown".itemShop.itemLayout
			200	[  0]	ISTC 	 19		11	; slot19 = slot11; if slot11
			201	[  0]	JMP  	 19		1	; 	goto 203
			202	[  0]	MOV  	 19		7	; slot19 = slot7
			203	[  0]	TSETS	 19	18	24	; uv0"unknown".itemShop.itemLayout.priceFont = slot19
			204	[  0]	TGETS	 18	0	26	; slot18 = uv0"unknown".itemShop
			205	[  0]	TGETS	 18	18	25	; slot18 = uv0"unknown".itemShop.itemLayout
			206	[  0]	ISTC 	 19		9	; slot19 = slot9; if slot9
			207	[  0]	JMP  	 19		1	; 	goto 209
			208	[  0]	MOV  	 19		7	; slot19 = slot7
			209	[  0]	TSETS	 19	18	23	; uv0"unknown".itemShop.itemLayout.nameFont = slot19
			210	[  0]	TGETS	 18	0	26	; slot18 = uv0"unknown".itemShop
			211	[  0]	TGETS	 18	18	25	; slot18 = uv0"unknown".itemShop.itemLayout
			212	[  0]	ISTC 	 19		9	; slot19 = slot9; if slot9
			213	[  0]	JMP  	 19		1	; 	goto 215
			214	[  0]	MOV  	 19		7	; slot19 = slot7
			215	[  0]	TSETS	 19	18	22	; uv0"unknown".itemShop.itemLayout.effectFont = slot19
			216	[  0]	TGETS	 18	0	21	; slot18 = uv0"unknown".coreMessage
			217	[  0]	ISF  	   		18	; if not uv0"unknown".coreMessage
			218	[  0]	JMP  	 19		5	; 	goto 224
			219	[  0]	TGETS	 18	0	21	; slot18 = uv0"unknown".coreMessage
			220	[  0]	ISTC 	 19		9	; slot19 = slot9; if slot9
			221	[  0]	JMP  	 19		1	; 	goto 223
			222	[  0]	MOV  	 19		7	; slot19 = slot7
			223	[  0]	TSETS	 19	18	45	; uv0"unknown".coreMessage.font = slot19
			224	[  0]	TGETS	 18	0	20	; slot18 = uv0"unknown".waveLabel
			225	[  0]	ISF  	   		18	; if not uv0"unknown".waveLabel
			226	[  0]	JMP  	 19		5	; 	goto 232
			227	[  0]	TGETS	 18	0	20	; slot18 = uv0"unknown".waveLabel
			228	[  0]	ISTC 	 19		9	; slot19 = slot9; if slot9
			229	[  0]	JMP  	 19		1	; 	goto 231
			230	[  0]	MOV  	 19		7	; slot19 = slot7
			231	[  0]	TSETS	 19	18	45	; uv0"unknown".waveLabel.font = slot19
			232	[  0]	TGETS	 18	0	19	; slot18 = uv0"unknown".coreCountDisplay
			233	[  0]	ISF  	   		18	; if not uv0"unknown".coreCountDisplay
			234	[  0]	JMP  	 19		5	; 	goto 240
			235	[  0]	TGETS	 18	0	19	; slot18 = uv0"unknown".coreCountDisplay
			236	[  0]	ISTC 	 19		9	; slot19 = slot9; if slot9
			237	[  0]	JMP  	 19		1	; 	goto 239
			238	[  0]	MOV  	 19		7	; slot19 = slot7
			239	[  0]	TSETS	 19	18	45	; uv0"unknown".coreCountDisplay.font = slot19
			240	[  0]	ISF  	   		16	; if not slot16
			241	[  0]	JMP  	 18		5	; 	goto 247
			242	[  0]	TGETS	 18	0	18	; slot18 = uv0"unknown".goldDisplay
			243	[  0]	ISF  	   		18	; if not uv0"unknown".goldDisplay
			244	[  0]	JMP  	 19		2	; 	goto 247
			245	[  0]	TGETS	 18	0	18	; slot18 = uv0"unknown".goldDisplay
			246	[  0]	TSETS	 16	18	45	; uv0"unknown".goldDisplay.font = slot16
			247	[  0]	ISF  	   		16	; if not slot16
			248	[  0]	JMP  	 18		5	; 	goto 254
			249	[  0]	TGETS	 18	0	17	; slot18 = uv0"unknown".jungsuDisplay
			250	[  0]	ISF  	   		18	; if not uv0"unknown".jungsuDisplay
			251	[  0]	JMP  	 19		2	; 	goto 254
			252	[  0]	TGETS	 18	0	17	; slot18 = uv0"unknown".jungsuDisplay
			253	[  0]	TSETS	 16	18	45	; uv0"unknown".jungsuDisplay.font = slot16
			254	[  0]	TGETS	 18	0	16	; slot18 = uv0"unknown".maxUnit
			255	[  0]	ISF  	   		18	; if not uv0"unknown".maxUnit
			256	[  0]	JMP  	 19		15	; 	goto 272
			257	[  0]	TGETS	 18	0	16	; slot18 = uv0"unknown".maxUnit
			258	[  0]	ISTC 	 19		9	; slot19 = slot9; if slot9
			259	[  0]	JMP  	 19		1	; 	goto 261
			260	[  0]	MOV  	 19		7	; slot19 = slot7
			261	[  0]	TSETS	 19	18	45	; uv0"unknown".maxUnit.font = slot19
			262	[  0]	TGETS	 18	0	16	; slot18 = uv0"unknown".maxUnit
			263	[  0]	TGETS	 18	18	15	; slot18 = uv0"unknown".maxUnit.waveText
			264	[  0]	ISF  	   		18	; if not uv0"unknown".maxUnit.waveText
			265	[  0]	JMP  	 19		6	; 	goto 272
			266	[  0]	TGETS	 18	0	16	; slot18 = uv0"unknown".maxUnit
			267	[  0]	TGETS	 18	18	15	; slot18 = uv0"unknown".maxUnit.waveText
			268	[  0]	ISTC 	 19		9	; slot19 = slot9; if slot9
			269	[  0]	JMP  	 19		1	; 	goto 271
			270	[  0]	MOV  	 19		7	; slot19 = slot7
			271	[  0]	TSETS	 19	18	45	; uv0"unknown".maxUnit.waveText.font = slot19
			272	[  0]	TGETS	 18	0	14	; slot18 = uv0"unknown".coreSelect
			273	[  0]	ISF  	   		18	; if not uv0"unknown".coreSelect
			274	[  0]	JMP  	 19		5	; 	goto 280
			275	[  0]	TGETS	 18	0	14	; slot18 = uv0"unknown".coreSelect
			276	[  0]	ISTC 	 19		9	; slot19 = slot9; if slot9
			277	[  0]	JMP  	 19		1	; 	goto 279
			278	[  0]	MOV  	 19		7	; slot19 = slot7
			279	[  0]	TSETS	 19	18	45	; uv0"unknown".coreSelect.font = slot19
			280	[  0]	ISF  	   		16	; if not slot16
			281	[  0]	JMP  	 18		7	; 	goto 289
			282	[  0]	TGETS	 18	0	13	; slot18 = uv0"unknown".heartNumber
			283	[  0]	ISF  	   		18	; if not uv0"unknown".heartNumber
			284	[  0]	JMP  	 19		4	; 	goto 289
			285	[  0]	TGETS	 18	0	13	; slot18 = uv0"unknown".heartNumber
			286	[  0]	TSETS	 16	18	45	; uv0"unknown".heartNumber.font = slot16
			287	[  0]	TGETS	 18	0	13	; slot18 = uv0"unknown".heartNumber
			288	[  0]	TSETS	 16	18	12	; uv0"unknown".heartNumber.popupFont = slot16
			289	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 290
			290	[  0]	RET0 	  0		1	; return
			291	[  0]	GGET 	  7		62	; slot7 = _env["_G"]
			292	[  0]	TGETS	  7	7	58	; slot7 = _G.clearChineseShadowFonts
			293	[  0]	ISF  	   		7	; if not _G.clearChineseShadowFonts
			294	[  0]	JMP  	  8		3	; 	goto 298
			295	[  0]	GGET 	  7		62	; slot7 = _env["_G"]
			296	[  0]	TGETS	  7	7	58	; slot7 = _G.clearChineseShadowFonts
			297	[  0]	CALL 	  7	1	1	;  = _G.clearChineseShadowFonts()
			298	[  0]	GGET 	  7		62	; slot7 = _env["_G"]
			299	[  0]	TGETS	  7	7	61	; slot7 = _G.currentGameLang
			300	[  0]	IST  	   		7	; if _G.currentGameLang
			301	[  0]	JMP  	  8		1	; 	goto 303
			302	[  0]	KSTR 	  7		60	; slot7 = "ko"
			303	[  0]	ISEQS	  7		11	; if slot7 == "ja"
			304	[  0]	JMP  	  7		2	; 	goto 307
			305	[  0]	KPRI 	  7		1	; slot7 = false
			306	[  0]	JMP  	  8		1	; 	goto 308
			307	[  0]	KPRI 	  7		2	; slot7 = true
			308	[  0]	ISF  	   		7	; if not slot7
			309	[  0]	JMP  	  8		5	; 	goto 315
			310	[  0]	MOV  	  8		3	; slot8 = slot3
			311	[  0]	KSTR 	 10		57	; slot10 = "src/data/font/Galmuri9W.fnt"
			312	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
			313	[  0]	IST  	   		8	; if slot8
			314	[  0]	JMP  	  9		1	; 	goto 316
			315	[  0]	KPRI 	  8		0	; slot8 = nil
			316	[  0]	ISF  	   		7	; if not slot7
			317	[  0]	JMP  	  9		5	; 	goto 323
			318	[  0]	MOV  	  9		3	; slot9 = slot3
			319	[  0]	KSTR 	 11		56	; slot11 = "src/data/font/Galmuri9WS.fnt"
			320	[  0]	CALL 	  9	2	2	; slot9 = slot9(slot10)
			321	[  0]	IST  	   		9	; if slot9
			322	[  0]	JMP  	 10		1	; 	goto 324
			323	[  0]	KPRI 	  9		0	; slot9 = nil
			324	[  0]	ISF  	   		7	; if not slot7
			325	[  0]	JMP  	 10		5	; 	goto 331
			326	[  0]	MOV  	 10		3	; slot10 = slot3
			327	[  0]	KSTR 	 12		55	; slot12 = "src/data/font/Galmuri7W.fnt"
			328	[  0]	CALL 	 10	2	2	; slot10 = slot10(slot11)
			329	[  0]	IST  	   		10	; if slot10
			330	[  0]	JMP  	 11		1	; 	goto 332
			331	[  0]	KPRI 	 10		0	; slot10 = nil
			332	[  0]	ISF  	   		7	; if not slot7
			333	[  0]	JMP  	 11		5	; 	goto 339
			334	[  0]	MOV  	 11		3	; slot11 = slot3
			335	[  0]	KSTR 	 13		54	; slot13 = "src/data/font/Galmuri7WS.fnt"
			336	[  0]	CALL 	 11	2	2	; slot11 = slot11(slot12)
			337	[  0]	IST  	   		11	; if slot11
			338	[  0]	JMP  	 12		1	; 	goto 340
			339	[  0]	KPRI 	 11		0	; slot11 = nil
			340	[  0]	MOV  	 12		2	; slot12 = slot2
			341	[  0]	KSTR 	 14		57	; slot14 = "src/data/font/Galmuri9W.fnt"
			342	[  0]	CALL 	 12	3	2	; slot12, slot13 = slot12(slot13)
			343	[  0]	ISF  	   		12	; if not slot12
			344	[  0]	JMP  	 14		42	; 	goto 387
			345	[  0]	MOV  	 14		6	; slot14 = slot6
			346	[  0]	MOV  	 16		12	; slot16 = slot12
			347	[  0]	MOV  	 17		8	; slot17 = slot8
			348	[  0]	CALL 	 14	1	3	;  = slot14(slot15, slot16)
			349	[  0]	GGET 	 14		10	; slot14 = _env["tostring"]
			350	[  0]	MOV  	 16		13	; slot16 = slot13
			351	[  0]	CALL 	 14	2	2	; slot14 = tostring(slot15)
			352	[  0]	MOV  	 16		14	; slot16 = tostring
			353	[  0]	TGETS	 14	14	9	; slot14 = tostring.lower
			354	[  0]	CALL 	 14	2	2	; slot14 = tostring.lower(slot15)
			355	[  0]	MOV  	 17		14	; slot17 = tostring.lower
			356	[  0]	TGETS	 15	14	8	; slot15 = tostring.lower.match
			357	[  0]	KSTR 	 18		7	; slot18 = "%.ttf$"
			358	[  0]	CALL 	 15	2	3	; slot15 = tostring.lower.match(tostring, tostring.lower)
			359	[  0]	IST  	   		15	; if tostring.lower.match
			360	[  0]	JMP  	 16		6	; 	goto 367
			361	[  0]	MOV  	 17		14	; slot17 = tostring.lower
			362	[  0]	TGETS	 15	14	8	; slot15 = tostring.lower.match
			363	[  0]	KSTR 	 18		6	; slot18 = "%.otf$"
			364	[  0]	CALL 	 15	2	3	; slot15 = tostring.lower.match(tostring, tostring.lower)
			365	[  0]	ISF  	   		15	; if not tostring.lower.match
			366	[  0]	JMP  	 16		2	; 	goto 369
			367	[  0]	KSTR 	 15		48	; slot15 = "vector"
			368	[  0]	JMP  	 16		1	; 	goto 370
			369	[  0]	KSTR 	 15		5	; slot15 = "bmfont"
			370	[  0]	TDUP 	 16		4	; slot16 = copy table#k4
			371	[  0]	TSETS	 13	16	51	; slot16.path = slot13
			372	[  0]	TSETS	 15	16	3	; slot16.kind = slot15
			373	[  0]	TSETS	 16	0	53	; uv0"unknown".fontInfo = slot16
			374	[  0]	TSETS	 13	0	50	; uv0"unknown".fontPath = slot13
			375	[  0]	TSETS	 15	0	49	; uv0"unknown".fontKind = slot15
			376	[  0]	TSETS	 12	0	45	; uv0"unknown".font = slot12
			377	[  0]	TSETS	 12	0	44	; uv0"unknown".fontTitle = slot12
			378	[  0]	TSETS	 12	0	43	; uv0"unknown".fontBattlefieldTitle = slot12
			379	[  0]	TSETS	 12	0	42	; uv0"unknown".fontPauseTitle = slot12
			380	[  0]	TSETS	 12	0	41	; uv0"unknown".fontStageSelectTitle = slot12
			381	[  0]	TSETS	 12	0	40	; uv0"unknown".fontClassCard = slot12
			382	[  0]	TGETS	 16	0	31	; slot16 = uv0"unknown".classCard
			383	[  0]	ISF  	   		16	; if not uv0"unknown".classCard
			384	[  0]	JMP  	 17		2	; 	goto 387
			385	[  0]	TGETS	 16	0	31	; slot16 = uv0"unknown".classCard
			386	[  0]	TSETS	 12	16	45	; uv0"unknown".classCard.font = slot12
			387	[  0]	MOV  	 14		2	; slot14 = slot2
			388	[  0]	KSTR 	 16		56	; slot16 = "src/data/font/Galmuri9WS.fnt"
			389	[  0]	CALL 	 14	2	2	; slot14 = slot14(slot15)
			390	[  0]	ISF  	   		14	; if not slot14
			391	[  0]	JMP  	 15		66	; 	goto 458
			392	[  0]	MOV  	 15		6	; slot15 = slot6
			393	[  0]	MOV  	 17		14	; slot17 = slot14
			394	[  0]	ISTC 	 18		9	; slot18 = slot9; if slot9
			395	[  0]	JMP  	 18		1	; 	goto 397
			396	[  0]	MOV  	 18		8	; slot18 = slot8
			397	[  0]	CALL 	 15	1	3	;  = slot15(slot16, slot17)
			398	[  0]	TSETS	 14	0	39	; uv0"unknown".fontGameOver = slot14
			399	[  0]	TGETS	 15	0	30	; slot15 = uv0"unknown".infoOverlay
			400	[  0]	ISF  	   		15	; if not uv0"unknown".infoOverlay
			401	[  0]	JMP  	 16		10	; 	goto 412
			402	[  0]	TGETS	 15	0	30	; slot15 = uv0"unknown".infoOverlay
			403	[  0]	TGETS	 15	15	29	; slot15 = uv0"unknown".infoOverlay.text
			404	[  0]	ISF  	   		15	; if not uv0"unknown".infoOverlay.text
			405	[  0]	JMP  	 16		6	; 	goto 412
			406	[  0]	TGETS	 15	0	30	; slot15 = uv0"unknown".infoOverlay
			407	[  0]	TGETS	 15	15	29	; slot15 = uv0"unknown".infoOverlay.text
			408	[  0]	TSETS	 14	15	28	; uv0"unknown".infoOverlay.text.titleFont = slot14
			409	[  0]	TGETS	 15	0	30	; slot15 = uv0"unknown".infoOverlay
			410	[  0]	TGETS	 15	15	29	; slot15 = uv0"unknown".infoOverlay.text
			411	[  0]	TSETS	 14	15	27	; uv0"unknown".infoOverlay.text.bodyFont = slot14
			412	[  0]	TGETS	 15	0	26	; slot15 = uv0"unknown".itemShop
			413	[  0]	ISF  	   		15	; if not uv0"unknown".itemShop
			414	[  0]	JMP  	 16		13	; 	goto 428
			415	[  0]	TGETS	 15	0	26	; slot15 = uv0"unknown".itemShop
			416	[  0]	TGETS	 15	15	25	; slot15 = uv0"unknown".itemShop.itemLayout
			417	[  0]	ISF  	   		15	; if not uv0"unknown".itemShop.itemLayout
			418	[  0]	JMP  	 16		9	; 	goto 428
			419	[  0]	TGETS	 15	0	26	; slot15 = uv0"unknown".itemShop
			420	[  0]	TGETS	 15	15	25	; slot15 = uv0"unknown".itemShop.itemLayout
			421	[  0]	TSETS	 14	15	24	; uv0"unknown".itemShop.itemLayout.priceFont = slot14
			422	[  0]	TGETS	 15	0	26	; slot15 = uv0"unknown".itemShop
			423	[  0]	TGETS	 15	15	25	; slot15 = uv0"unknown".itemShop.itemLayout
			424	[  0]	TSETS	 14	15	23	; uv0"unknown".itemShop.itemLayout.nameFont = slot14
			425	[  0]	TGETS	 15	0	26	; slot15 = uv0"unknown".itemShop
			426	[  0]	TGETS	 15	15	25	; slot15 = uv0"unknown".itemShop.itemLayout
			427	[  0]	TSETS	 14	15	22	; uv0"unknown".itemShop.itemLayout.effectFont = slot14
			428	[  0]	TGETS	 15	0	21	; slot15 = uv0"unknown".coreMessage
			429	[  0]	ISF  	   		15	; if not uv0"unknown".coreMessage
			430	[  0]	JMP  	 16		2	; 	goto 433
			431	[  0]	TGETS	 15	0	21	; slot15 = uv0"unknown".coreMessage
			432	[  0]	TSETS	 14	15	45	; uv0"unknown".coreMessage.font = slot14
			433	[  0]	TGETS	 15	0	20	; slot15 = uv0"unknown".waveLabel
			434	[  0]	ISF  	   		15	; if not uv0"unknown".waveLabel
			435	[  0]	JMP  	 16		2	; 	goto 438
			436	[  0]	TGETS	 15	0	20	; slot15 = uv0"unknown".waveLabel
			437	[  0]	TSETS	 14	15	45	; uv0"unknown".waveLabel.font = slot14
			438	[  0]	TGETS	 15	0	19	; slot15 = uv0"unknown".coreCountDisplay
			439	[  0]	ISF  	   		15	; if not uv0"unknown".coreCountDisplay
			440	[  0]	JMP  	 16		2	; 	goto 443
			441	[  0]	TGETS	 15	0	19	; slot15 = uv0"unknown".coreCountDisplay
			442	[  0]	TSETS	 14	15	45	; uv0"unknown".coreCountDisplay.font = slot14
			443	[  0]	TGETS	 15	0	17	; slot15 = uv0"unknown".jungsuDisplay
			444	[  0]	ISF  	   		15	; if not uv0"unknown".jungsuDisplay
			445	[  0]	JMP  	 16		2	; 	goto 448
			446	[  0]	TGETS	 15	0	17	; slot15 = uv0"unknown".jungsuDisplay
			447	[  0]	TSETS	 14	15	45	; uv0"unknown".jungsuDisplay.font = slot14
			448	[  0]	TGETS	 15	0	14	; slot15 = uv0"unknown".coreSelect
			449	[  0]	ISF  	   		15	; if not uv0"unknown".coreSelect
			450	[  0]	JMP  	 16		2	; 	goto 453
			451	[  0]	TGETS	 15	0	14	; slot15 = uv0"unknown".coreSelect
			452	[  0]	TSETS	 14	15	45	; uv0"unknown".coreSelect.font = slot14
			453	[  0]	TGETS	 15	0	13	; slot15 = uv0"unknown".heartNumber
			454	[  0]	ISF  	   		15	; if not uv0"unknown".heartNumber
			455	[  0]	JMP  	 16		2	; 	goto 458
			456	[  0]	TGETS	 15	0	13	; slot15 = uv0"unknown".heartNumber
			457	[  0]	TSETS	 14	15	45	; uv0"unknown".heartNumber.font = slot14
			458	[  0]	ISTC 	 15		14	; slot15 = slot14; if slot14
			459	[  0]	JMP  	 15		1	; 	goto 461
			460	[  0]	MOV  	 15		12	; slot15 = slot12
			461	[  0]	TGETS	 16	0	16	; slot16 = uv0"unknown".maxUnit
			462	[  0]	ISF  	   		16	; if not uv0"unknown".maxUnit
			463	[  0]	JMP  	 17		11	; 	goto 475
			464	[  0]	ISF  	   		15	; if not slot15
			465	[  0]	JMP  	 16		9	; 	goto 475
			466	[  0]	TGETS	 16	0	16	; slot16 = uv0"unknown".maxUnit
			467	[  0]	TSETS	 15	16	45	; uv0"unknown".maxUnit.font = slot15
			468	[  0]	TGETS	 16	0	16	; slot16 = uv0"unknown".maxUnit
			469	[  0]	TGETS	 16	16	15	; slot16 = uv0"unknown".maxUnit.waveText
			470	[  0]	ISF  	   		16	; if not uv0"unknown".maxUnit.waveText
			471	[  0]	JMP  	 17		3	; 	goto 475
			472	[  0]	TGETS	 16	0	16	; slot16 = uv0"unknown".maxUnit
			473	[  0]	TGETS	 16	16	15	; slot16 = uv0"unknown".maxUnit.waveText
			474	[  0]	TSETS	 15	16	45	; uv0"unknown".maxUnit.waveText.font = slot15
			475	[  0]	MOV  	 16		2	; slot16 = slot2
			476	[  0]	KSTR 	 18		55	; slot18 = "src/data/font/Galmuri7W.fnt"
			477	[  0]	CALL 	 16	2	2	; slot16 = slot16(slot17)
			478	[  0]	ISF  	   		16	; if not slot16
			479	[  0]	JMP  	 17		17	; 	goto 497
			480	[  0]	MOV  	 17		6	; slot17 = slot6
			481	[  0]	MOV  	 19		16	; slot19 = slot16
			482	[  0]	ISTC 	 20		10	; slot20 = slot10; if slot10
			483	[  0]	JMP  	 20		1	; 	goto 485
			484	[  0]	MOV  	 20		8	; slot20 = slot8
			485	[  0]	CALL 	 17	1	3	;  = slot17(slot18, slot19)
			486	[  0]	TSETS	 16	0	38	; uv0"unknown".fontCoin = slot16
			487	[  0]	GGET 	 17		2	; slot17 = _env["math"]
			488	[  0]	TGETS	 17	17	1	; slot17 = math.max
			489	[  0]	KSHORT	 19		1	; slot19 = 1
			490	[  0]	MOV  	 22		16	; slot22 = slot16
			491	[  0]	TGETS	 20	16	0	; slot20 = slot16.getHeight
			492	[  0]	CALL 	 20	0	2	; MULTRES = <unknown table>.getHeight(slot21)
			493	[  0]	CALLM	 17	2	1	; slot17 = math.max(slot18, ...MULTRES)
			494	[  0]	DIVNV	 17	17	0	; slot17 = 8 / math.max
			495	[  0]	TSETS	 17	0	37	; uv0"unknown".fontCoinScale = slot17
			496	[  0]	TSETS	 16	0	36	; uv0"unknown".fontJackpot = slot16
			497	[  0]	MOV  	 17		2	; slot17 = slot2
			498	[  0]	KSTR 	 19		54	; slot19 = "src/data/font/Galmuri7WS.fnt"
			499	[  0]	CALL 	 17	2	2	; slot17 = slot17(slot18)
			500	[  0]	IST  	   		17	; if slot17
			501	[  0]	JMP  	 18		1	; 	goto 503
			502	[  0]	MOV  	 17		16	; slot17 = slot16
			503	[  0]	ISF  	   		17	; if not slot17
			504	[  0]	JMP  	 18		9	; 	goto 514
			505	[  0]	MOV  	 18		6	; slot18 = slot6
			506	[  0]	MOV  	 20		17	; slot20 = slot17
			507	[  0]	ISTC 	 21		11	; slot21 = slot11; if slot11
			508	[  0]	JMP  	 21		3	; 	goto 512
			509	[  0]	ISTC 	 21		10	; slot21 = slot10; if slot10
			510	[  0]	JMP  	 21		1	; 	goto 512
			511	[  0]	MOV  	 21		8	; slot21 = slot8
			512	[  0]	CALL 	 18	1	3	;  = slot18(slot19, slot20)
			513	[  0]	TSETS	 17	0	34	; uv0"unknown".fontShopTitle = slot17
			514	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 515
			515	[  0]	RET0 	  0		1	; return
			516	[  0]	RET0 	  0		1	; return
		3047	[  0]	TSETV	 10	8	9	; uv4"unknown"[slot9] = slot10
		3048	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 3049
		3049	[  0]	RET1 	  0		2	; return slot0
	 14	[  0]	TSETS	  6	2	1	; slot2.init = slot6
	 15	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 16
	 16	[  0]	RET1 	  2		2	; return slot2
	
