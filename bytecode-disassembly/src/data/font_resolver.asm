;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\data\font_resolver.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 13 slots
	;;;; constant tables ;;;;
	ktable#16 = [
		[__mode] = k,
		]
	
	
	ktable#22 = [
		[galmuri9ws] = src/data/font/Galmuri9WS.fnt,
		[galmuri7ws] = src/data/font/Galmuri7WS.fnt,
		[galmuri9w] = src/data/font/Galmuri9W.fnt,
		[galmuri7w] = src/data/font/Galmuri7W.fnt,
		[galmuri9wsline] = src/data/font/Galmuri9WSLine.fnt,
		]
	
	
	ktable#25 = [
		[galmuri9ws] = Galmuri9WS_Ru,
		[galmuri7ws] = PizelWS_Ru,
		[galmuri9w] = Galmuri9W_Ru,
		[galmuri7w] = Pizel7W_Ru,
		[galmuri9wsline] = Galmuri9WSLine_Ru,
		]
	
	
	;;;; instructions ;;;;
	  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
	  2	[  0]	FNEW 	  1		27	; N/A:0-0: 0 args, 0 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		2	; slot0 = _env["_G"]
		  2	[  0]	TGETS	  0	0	1	; slot0 = _G.currentGameLang
		  3	[  0]	IST  	   		0	; if _G.currentGameLang
		  4	[  0]	JMP  	  1		1	; 	goto 6
		  5	[  0]	KSTR 	  0		0	; slot0 = "ko"
		  6	[  0]	RET1 	  0		2	; return slot0
	  3	[  0]	FNEW 	  2		26	; N/A:0-0: 1 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		5	; slot1 = _env["type"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  4	[  0]	ISNES	  1		4	; if slot1 ~= "string"
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	ISNES	  0		3	; if slot0 ~= ""
		  7	[  0]	JMP  	  1		2	; 	goto 10
		  8	[  0]	KPRI 	  1		1	; slot1 = false
		  9	[  0]	RET1 	  1		2	; return slot1
		 10	[  0]	GGET 	  1		2	; slot1 = _env["love"]
		 11	[  0]	ISF  	   		1	; if not love
		 12	[  0]	JMP  	  2		19	; 	goto 32
		 13	[  0]	GGET 	  1		2	; slot1 = _env["love"]
		 14	[  0]	TGETS	  1	1	1	; slot1 = love.filesystem
		 15	[  0]	ISF  	   		1	; if not love.filesystem
		 16	[  0]	JMP  	  2		15	; 	goto 32
		 17	[  0]	GGET 	  1		2	; slot1 = _env["love"]
		 18	[  0]	TGETS	  1	1	1	; slot1 = love.filesystem
		 19	[  0]	TGETS	  1	1	0	; slot1 = love.filesystem.getInfo
		 20	[  0]	ISF  	   		1	; if not love.filesystem.getInfo
		 21	[  0]	JMP  	  2		10	; 	goto 32
		 22	[  0]	GGET 	  1		2	; slot1 = _env["love"]
		 23	[  0]	TGETS	  1	1	1	; slot1 = love.filesystem
		 24	[  0]	TGETS	  1	1	0	; slot1 = love.filesystem.getInfo
		 25	[  0]	MOV  	  3		0	; slot3 = slot0
		 26	[  0]	CALL 	  1	2	2	; slot1 = love.filesystem.getInfo(slot2)
		 27	[  0]	ISNEP	  1		0	; if slot1 ~= nil
		 28	[  0]	JMP  	  1		2	; 	goto 31
		 29	[  0]	KPRI 	  1		1	; slot1 = false
		 30	[  0]	JMP  	  2		1	; 	goto 32
		 31	[  0]	KPRI 	  1		2	; slot1 = true
		 32	[  0]	RET1 	  1		2	; return slot1
	  4	[  0]	TDUP 	  3		25	; slot3 = copy table#k25
	  5	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
	  6	[  0]	GGET 	  5		24	; slot5 = _env["pairs"]
	  7	[  0]	MOV  	  7		3	; slot7 = slot3
	  8	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = pairs(slot6)
	  9	[  0]	ISNEXT	  8		4	; Verify ITERN at 14; goto 14
	 10	[  0]	MOV  	 12		9	; slot12 = slot9
	 11	[  0]	TGETS	 10	9	23	; slot10 = slot9.lower
	 12	[  0]	CALL 	 10	2	2	; slot10 = <unknown table>.lower(slot11)
	 13	[  0]	TSETV	  8	4	10	; slot4[<unknown table>.lower] = slot8
	 14	[  0]	ITERN	  8	3	3	; slot8, slot9, slot10 = pairs, slot6, slot7; slot8, slot9 = pairs(slot6, slot7)
	 15	[  0]	ITERL	  8		-6	; slot7 = slot8; if slot8 != nil goto 10
	 16	[  0]	TDUP 	  5		22	; slot5 = copy table#k22
	 17	[  0]	FNEW 	  6		20	; N/A:0-0: 2 args, 3 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		38	; slot2 = _env["type"]
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  4	[  0]	ISNES	  2		37	; if slot2 ~= "string"
		  5	[  0]	JMP  	  2		2	; 	goto 8
		  6	[  0]	ISNES	  0		36	; if slot0 ~= ""
		  7	[  0]	JMP  	  2		1	; 	goto 9
		  8	[  0]	RET1 	  0		2	; return slot0
		  9	[  0]	MOV  	  4		0	; slot4 = slot0
		 10	[  0]	TGETS	  2	0	35	; slot2 = slot0.find
		 11	[  0]	KSTR 	  5		34	; slot5 = "/coinfont/"
		 12	[  0]	KSHORT	  6		1	; slot6 = 1
		 13	[  0]	KPRI 	  7		2	; slot7 = true
		 14	[  0]	CALL 	  2	2	5	; slot2 = <unknown table>.find(slot3, slot4, slot5, slot6)
		 15	[  0]	IST  	   		2	; if slot2
		 16	[  0]	JMP  	  3		8	; 	goto 25
		 17	[  0]	MOV  	  4		0	; slot4 = slot0
		 18	[  0]	TGETS	  2	0	35	; slot2 = slot0.find
		 19	[  0]	KSTR 	  5		33	; slot5 = "\coinfont\"
		 20	[  0]	KSHORT	  6		1	; slot6 = 1
		 21	[  0]	KPRI 	  7		2	; slot7 = true
		 22	[  0]	CALL 	  2	2	5	; slot2 = <unknown table>.find(slot3, slot4, slot5, slot6)
		 23	[  0]	ISF  	   		2	; if not slot2
		 24	[  0]	JMP  	  3		1	; 	goto 26
		 25	[  0]	RET1 	  0		2	; return slot0
		 26	[  0]	IST  	   		1	; if slot1
		 27	[  0]	JMP  	  2		3	; 	goto 31
		 28	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 29	[  0]	CALL 	  2	2	1	; slot2 = uv0"unknown"()
		 30	[  0]	MOV  	  1		2	; slot1 = uv0"unknown"
		 31	[  0]	MOV  	  4		0	; slot4 = slot0
		 32	[  0]	TGETS	  2	0	32	; slot2 = slot0.gsub
		 33	[  0]	KSTR 	  5		31	; slot5 = "\"
		 34	[  0]	KSTR 	  6		30	; slot6 = "/"
		 35	[  0]	CALL 	  2	2	4	; slot2 = <unknown table>.gsub(slot3, slot4, slot5)
		 36	[  0]	MOV  	  5		2	; slot5 = slot2
		 37	[  0]	TGETS	  3	2	29	; slot3 = slot2.match
		 38	[  0]	KSTR 	  6		28	; slot6 = "^(.-)([^/]+)$"
		 39	[  0]	CALL 	  3	3	3	; slot3, slot4 = <unknown table>.match(slot4, slot5)
		 40	[  0]	IST  	   		4	; if slot4
		 41	[  0]	JMP  	  5		1	; 	goto 43
		 42	[  0]	RET1 	  0		2	; return slot0
		 43	[  0]	MOV  	  7		4	; slot7 = slot4
		 44	[  0]	TGETS	  5	4	29	; slot5 = slot4.match
		 45	[  0]	KSTR 	  8		27	; slot8 = "^(.*)(%.[^%.]+)$"
		 46	[  0]	CALL 	  5	3	3	; slot5, slot6 = <unknown table>.match(slot6, slot7)
		 47	[  0]	ISF  	   		5	; if not <unknown table>.match
		 48	[  0]	JMP  	  7		5	; 	goto 54
		 49	[  0]	MOV  	  9		6	; slot9 = slot6
		 50	[  0]	TGETS	  7	6	26	; slot7 = slot6.lower
		 51	[  0]	CALL 	  7	2	2	; slot7 = <unknown table>.lower(slot8)
		 52	[  0]	ISEQS	  7		25	; if <unknown table>.lower == ".fnt"
		 53	[  0]	JMP  	  7		1	; 	goto 55
		 54	[  0]	RET1 	  0		2	; return slot0
		 55	[  0]	ISEQS	  1		24	; if uv0"unknown" == "ko"
		 56	[  0]	JMP  	  7		2	; 	goto 59
		 57	[  0]	ISNES	  1		23	; if uv0"unknown" ~= "en"
		 58	[  0]	JMP  	  7		31	; 	goto 90
		 59	[  0]	MOV  	  9		5	; slot9 = <unknown table>.match
		 60	[  0]	TGETS	  7	5	26	; slot7 = <unknown table>.match.lower
		 61	[  0]	CALL 	  7	2	2	; slot7 = <unknown table>.match.lower(slot8)
		 62	[  0]	MOV  	  9		7	; slot9 = <unknown table>.match.lower
		 63	[  0]	TGETS	  7	7	35	; slot7 = <unknown table>.match.lower.find
		 64	[  0]	KSTR 	 10		22	; slot10 = "sline"
		 65	[  0]	KSHORT	 11		1	; slot11 = 1
		 66	[  0]	KPRI 	 12		2	; slot12 = true
		 67	[  0]	CALL 	  7	2	5	; slot7 = <unknown table>.match.lower.find(slot8, <unknown table>.match.lower, slot10, slot11)
		 68	[  0]	ISF  	   		7	; if not <unknown table>.match.lower.find
		 69	[  0]	JMP  	  8		20	; 	goto 90
		 70	[  0]	MOV  	  7		3	; slot7 = slot3
		 71	[  0]	MOV  	  8		5	; slot8 = <unknown table>.match
		 72	[  0]	KSTR 	  9		21	; slot9 = ".ttf"
		 73	[  0]	CAT  	  7	7	9	; slot7 = slot7 .. <unknown table>.match .. slot9
		 74	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 75	[  0]	MOV  	 10		7	; slot10 = slot7
		 76	[  0]	CALL 	  8	2	2	; slot8 = uv1"unknown"(slot9)
		 77	[  0]	ISF  	   		8	; if not uv1"unknown"
		 78	[  0]	JMP  	  9		1	; 	goto 80
		 79	[  0]	RET1 	  7		2	; return slot7
		 80	[  0]	MOV  	  8		3	; slot8 = slot3
		 81	[  0]	MOV  	  9		5	; slot9 = <unknown table>.match
		 82	[  0]	KSTR 	 10		20	; slot10 = ".otf"
		 83	[  0]	CAT  	  8	8	10	; slot8 = slot8 .. <unknown table>.match .. slot10
		 84	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 85	[  0]	MOV  	 11		8	; slot11 = slot8
		 86	[  0]	CALL 	  9	2	2	; slot9 = uv1"unknown"(slot10)
		 87	[  0]	ISF  	   		9	; if not uv1"unknown"
		 88	[  0]	JMP  	 10		1	; 	goto 90
		 89	[  0]	RET1 	  8		2	; return slot8
		 90	[  0]	ISEQS	  1		19	; if uv0"unknown" == "fr"
		 91	[  0]	JMP  	  7		6	; 	goto 98
		 92	[  0]	ISEQS	  1		18	; if uv0"unknown" == "it"
		 93	[  0]	JMP  	  7		4	; 	goto 98
		 94	[  0]	ISEQS	  1		17	; if uv0"unknown" == "de"
		 95	[  0]	JMP  	  7		2	; 	goto 98
		 96	[  0]	ISNES	  1		16	; if uv0"unknown" ~= "es"
		 97	[  0]	JMP  	  7		11	; 	goto 109
		 98	[  0]	KSTR 	  7		15	; slot7 = "src/data/font/Latin/"
		 99	[  0]	MOV  	  8		5	; slot8 = <unknown table>.match
		100	[  0]	KSTR 	  9		14	; slot9 = "_La"
		101	[  0]	MOV  	 10		6	; slot10 = slot6
		102	[  0]	CAT  	  7	7	10	; slot7 = slot7 .. <unknown table>.match .. slot9 .. slot10
		103	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		104	[  0]	MOV  	 10		7	; slot10 = slot7
		105	[  0]	CALL 	  8	2	2	; slot8 = uv1"unknown"(slot9)
		106	[  0]	ISF  	   		8	; if not uv1"unknown"
		107	[  0]	JMP  	  9		1	; 	goto 109
		108	[  0]	RET1 	  7		2	; return slot7
		109	[  0]	ISNES	  1		13	; if uv0"unknown" ~= "ru"
		110	[  0]	JMP  	  7		20	; 	goto 131
		111	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		112	[  0]	MOV  	 10		5	; slot10 = <unknown table>.match
		113	[  0]	TGETS	  8	5	26	; slot8 = <unknown table>.match.lower
		114	[  0]	CALL 	  8	2	2	; slot8 = <unknown table>.match.lower(slot9)
		115	[  0]	TGETV	  7	7	8	; slot7 = uv2"unknown"[<unknown table>.match.lower]
		116	[  0]	ISFC 	  8		7	; slot8 = slot7; if not slot7
		117	[  0]	JMP  	  8		4	; 	goto 122
		118	[  0]	KSTR 	  8		12	; slot8 = "src/data/font/Russian/"
		119	[  0]	MOV  	  9		7	; slot9 = slot7
		120	[  0]	MOV  	 10		6	; slot10 = slot6
		121	[  0]	CAT  	  8	8	10	; slot8 = slot8 .. slot9 .. slot10
		122	[  0]	ISF  	   		8	; if not slot8
		123	[  0]	JMP  	  9		6	; 	goto 130
		124	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		125	[  0]	MOV  	 11		8	; slot11 = slot8
		126	[  0]	CALL 	  9	2	2	; slot9 = uv1"unknown"(slot10)
		127	[  0]	ISF  	   		9	; if not uv1"unknown"
		128	[  0]	JMP  	 10		1	; 	goto 130
		129	[  0]	RET1 	  8		2	; return slot8
		130	[  0]	RET1 	  0		2	; return slot0
		131	[  0]	ISEQS	  1		11	; if uv0"unknown" == "pl"
		132	[  0]	JMP  	  7		2	; 	goto 135
		133	[  0]	ISNES	  1		10	; if uv0"unknown" ~= "pt"
		134	[  0]	JMP  	  7		11	; 	goto 146
		135	[  0]	KSTR 	  7		9	; slot7 = "src/data/font/Other/"
		136	[  0]	MOV  	  8		5	; slot8 = <unknown table>.match
		137	[  0]	KSTR 	  9		8	; slot9 = "_L"
		138	[  0]	MOV  	 10		6	; slot10 = slot6
		139	[  0]	CAT  	  7	7	10	; slot7 = slot7 .. <unknown table>.match .. slot9 .. slot10
		140	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		141	[  0]	MOV  	 10		7	; slot10 = slot7
		142	[  0]	CALL 	  8	2	2	; slot8 = uv1"unknown"(slot9)
		143	[  0]	ISF  	   		8	; if not uv1"unknown"
		144	[  0]	JMP  	  9		1	; 	goto 146
		145	[  0]	RET1 	  7		2	; return slot7
		146	[  0]	ISEQS	  1		7	; if uv0"unknown" == "ja"
		147	[  0]	JMP  	  7		3	; 	goto 151
		148	[  0]	ISEQS	  1		6	; if uv0"unknown" == "zh"
		149	[  0]	JMP  	  7		1	; 	goto 151
		150	[  0]	RET1 	  0		2	; return slot0
		151	[  0]	ISNES	  1		7	; if uv0"unknown" ~= "ja"
		152	[  0]	JMP  	  7		12	; 	goto 165
		153	[  0]	KSTR 	  7		5	; slot7 = "src/data/font/Japanese/"
		154	[  0]	MOV  	  8		5	; slot8 = <unknown table>.match
		155	[  0]	KSTR 	  9		4	; slot9 = "_J"
		156	[  0]	MOV  	 10		6	; slot10 = slot6
		157	[  0]	CAT  	  7	7	10	; slot7 = slot7 .. <unknown table>.match .. slot9 .. slot10
		158	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		159	[  0]	MOV  	 10		7	; slot10 = slot7
		160	[  0]	CALL 	  8	2	2	; slot8 = uv1"unknown"(slot9)
		161	[  0]	ISF  	   		8	; if not uv1"unknown"
		162	[  0]	JMP  	  9		22	; 	goto 185
		163	[  0]	RET1 	  7		2	; return slot7
		164	[  0]	JMP  	  7		20	; 	goto 185
		165	[  0]	ISNES	  1		6	; if uv0"unknown" ~= "zh"
		166	[  0]	JMP  	  7		18	; 	goto 185
		167	[  0]	KSTR 	  7		3	; slot7 = "src/data/font/Chinese/arkpixel10.ttf"
		168	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		169	[  0]	GGET 	 10		2	; slot10 = _env["arkpixelPath"]
		170	[  0]	CALL 	  8	2	2	; slot8 = uv1"unknown"(slot9)
		171	[  0]	ISF  	   		8	; if not uv1"unknown"
		172	[  0]	JMP  	  9		1	; 	goto 174
		173	[  0]	RET1 	  7		2	; return slot7
		174	[  0]	KSTR 	  8		1	; slot8 = "src/data/font/Chinese/"
		175	[  0]	MOV  	  9		5	; slot9 = <unknown table>.match
		176	[  0]	KSTR 	 10		0	; slot10 = "_Zh"
		177	[  0]	MOV  	 11		6	; slot11 = slot6
		178	[  0]	CAT  	  8	8	11	; slot8 = slot8 .. <unknown table>.match .. slot10 .. slot11
		179	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		180	[  0]	MOV  	 11		8	; slot11 = slot8
		181	[  0]	CALL 	  9	2	2	; slot9 = uv1"unknown"(slot10)
		182	[  0]	ISF  	   		9	; if not uv1"unknown"
		183	[  0]	JMP  	 10		1	; 	goto 185
		184	[  0]	RET1 	  8		2	; return slot8
		185	[  0]	RET1 	  0		2	; return slot0
	 18	[  0]	TSETS	  6	0	21	; slot0.resolve = slot6
	 19	[  0]	FNEW 	  6		18	; N/A:0-0: 1 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	0	; slot1 = uv0"unknown".resolve
		  3	[  0]	MOV  	  3		0	; slot3 = slot0
		  4	[  0]	CALLT	  1		2	; return uv0"unknown".resolve(slot2)
	 20	[  0]	TSETS	  6	0	19	; slot0.pagePath = slot6
	 21	[  0]	GGET 	  6		17	; slot6 = _env["setmetatable"]
	 22	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
	 23	[  0]	TDUP 	  9		16	; slot9 = copy table#k16
	 24	[  0]	CALL 	  6	2	3	; slot6 = setmetatable(slot7, slot8)
	 25	[  0]	FNEW 	  7		14	; N/A:0-0: 2 args, 1 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		7	; 	goto 10
		  3	[  0]	GGET 	  2		1	; slot2 = _env["type"]
		  4	[  0]	MOV  	  4		1	; slot4 = slot1
		  5	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  6	[  0]	ISNES	  2		0	; if slot2 ~= "string"
		  7	[  0]	JMP  	  2		2	; 	goto 10
		  8	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  9	[  0]	TSETV	  1	2	0	; uv0"unknown"[slot0] = slot1
		 10	[  0]	RET1 	  0		2	; return slot0
	 26	[  0]	TSETS	  7	0	15	; slot0.rememberPath = slot7
	 27	[  0]	FNEW 	  7		12	; N/A:0-0: 1 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		4	; 	goto 7
		  3	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  4	[  0]	TGETV	  1	1	0	; slot1 = uv0"unknown"[slot0]
		  5	[  0]	IST  	   		1	; if slot1
		  6	[  0]	JMP  	  2		1	; 	goto 8
		  7	[  0]	KPRI 	  1		0	; slot1 = nil
		  8	[  0]	RET1 	  1		2	; return slot1
	 28	[  0]	TSETS	  7	0	13	; slot0.pathOf = slot7
	 29	[  0]	FNEW 	  7		10	; N/A:0-0: 1 args, 1 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	10	; slot1 = uv0"unknown".pathOf
		  3	[  0]	MOV  	  3		0	; slot3 = slot0
		  4	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown".pathOf(slot2)
		  5	[  0]	IST  	   		1	; if slot1
		  6	[  0]	JMP  	  2		2	; 	goto 9
		  7	[  0]	KPRI 	  2		0	; slot2 = nil
		  8	[  0]	RET1 	  2		2	; return slot2
		  9	[  0]	MOV  	  4		1	; slot4 = slot1
		 10	[  0]	TGETS	  2	1	9	; slot2 = slot1.gsub
		 11	[  0]	KSTR 	  5		8	; slot5 = "\"
		 12	[  0]	KSTR 	  6		7	; slot6 = "/"
		 13	[  0]	CALL 	  2	2	4	; slot2 = <unknown table>.gsub(slot3, slot4, slot5)
		 14	[  0]	MOV  	  4		2	; slot4 = slot2
		 15	[  0]	TGETS	  2	2	6	; slot2 = slot2.match
		 16	[  0]	KSTR 	  5		5	; slot5 = "([^/]+)$"
		 17	[  0]	CALL 	  2	2	3	; slot2 = <unknown table>.match(slot3, slot4)
		 18	[  0]	IST  	   		2	; if slot2
		 19	[  0]	JMP  	  3		1	; 	goto 21
		 20	[  0]	MOV  	  2		1	; slot2 = slot1
		 21	[  0]	MOV  	  4		2	; slot4 = slot2
		 22	[  0]	TGETS	  2	2	4	; slot2 = slot2.lower
		 23	[  0]	CALL 	  2	2	2	; slot2 = <unknown table>.lower(slot3)
		 24	[  0]	MOV  	  5		2	; slot5 = slot2
		 25	[  0]	TGETS	  3	2	3	; slot3 = slot2.find
		 26	[  0]	KSTR 	  6		2	; slot6 = "ws"
		 27	[  0]	KSHORT	  7		1	; slot7 = 1
		 28	[  0]	KPRI 	  8		2	; slot8 = true
		 29	[  0]	CALL 	  3	2	5	; slot3 = <unknown table>.find(slot4, slot5, slot6, slot7)
		 30	[  0]	ISF  	   		3	; if not slot3
		 31	[  0]	JMP  	  4		2	; 	goto 34
		 32	[  0]	KSTR 	  3		1	; slot3 = "shadow"
		 33	[  0]	RET1 	  3		2	; return slot3
		 34	[  0]	KSTR 	  3		0	; slot3 = "plain"
		 35	[  0]	RET1 	  3		2	; return slot3
	 30	[  0]	TSETS	  7	0	11	; slot0.styleOf = slot7
	 31	[  0]	GGET 	  7		9	; slot7 = _env["love"]
	 32	[  0]	ISF  	   		7	; if not love
	 33	[  0]	JMP  	  8		22	; 	goto 56
	 34	[  0]	GGET 	  7		9	; slot7 = _env["love"]
	 35	[  0]	TGETS	  7	7	8	; slot7 = love.graphics
	 36	[  0]	ISF  	   		7	; if not love.graphics
	 37	[  0]	JMP  	  8		18	; 	goto 56
	 38	[  0]	GGET 	  7		9	; slot7 = _env["love"]
	 39	[  0]	TGETS	  7	7	8	; slot7 = love.graphics
	 40	[  0]	TGETS	  7	7	7	; slot7 = love.graphics.newFont
	 41	[  0]	ISF  	   		7	; if not love.graphics.newFont
	 42	[  0]	JMP  	  8		13	; 	goto 56
	 43	[  0]	TGETS	  7	0	6	; slot7 = slot0._newFontHooked
	 44	[  0]	IST  	   		7	; if <unknown table>._newFontHooked
	 45	[  0]	JMP  	  7		10	; 	goto 56
	 46	[  0]	KPRI 	  7		2	; slot7 = true
	 47	[  0]	TSETS	  7	0	6	; slot0._newFontHooked = slot7
	 48	[  0]	GGET 	  7		9	; slot7 = _env["love"]
	 49	[  0]	TGETS	  7	7	8	; slot7 = love.graphics
	 50	[  0]	TGETS	  7	7	7	; slot7 = love.graphics.newFont
	 51	[  0]	GGET 	  8		9	; slot8 = _env["love"]
	 52	[  0]	TGETS	  8	8	8	; slot8 = love.graphics
	 53	[  0]	FNEW 	  9		5	; N/A:0-0: 1+ args, 2 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	VARG 	  4	0	1	; MULTRES = ...
		  4	[  0]	CALLM	  1	2	1	; slot1 = uv0"unknown"(slot2, ...MULTRES)
		  5	[  0]	ISF  	   		1	; if not slot1
		  6	[  0]	JMP  	  2		27	; 	goto 34
		  7	[  0]	GGET 	  2		5	; slot2 = _env["type"]
		  8	[  0]	MOV  	  4		0	; slot4 = slot0
		  9	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		 10	[  0]	ISNES	  2		4	; if slot2 ~= "string"
		 11	[  0]	JMP  	  2		3	; 	goto 15
		 12	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 13	[  0]	TSETV	  0	2	1	; uv1"unknown"[slot1] = slot0
		 14	[  0]	JMP  	  2		19	; 	goto 34
		 15	[  0]	GGET 	  2		5	; slot2 = _env["type"]
		 16	[  0]	MOV  	  4		0	; slot4 = slot0
		 17	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		 18	[  0]	ISNES	  2		3	; if slot2 ~= "userdata"
		 19	[  0]	JMP  	  2		14	; 	goto 34
		 20	[  0]	TGETS	  2	0	2	; slot2 = slot0.typeOf
		 21	[  0]	ISF  	   		2	; if not <unknown table>.typeOf
		 22	[  0]	JMP  	  3		11	; 	goto 34
		 23	[  0]	MOV  	  4		0	; slot4 = slot0
		 24	[  0]	TGETS	  2	0	2	; slot2 = slot0.typeOf
		 25	[  0]	KSTR 	  5		1	; slot5 = "FileData"
		 26	[  0]	CALL 	  2	2	3	; slot2 = <unknown table>.typeOf(slot3, slot4)
		 27	[  0]	ISF  	   		2	; if not slot2
		 28	[  0]	JMP  	  3		5	; 	goto 34
		 29	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 30	[  0]	MOV  	  5		0	; slot5 = slot0
		 31	[  0]	TGETS	  3	0	0	; slot3 = slot0.getFilename
		 32	[  0]	CALL 	  3	2	2	; slot3 = <unknown table>.getFilename(slot4)
		 33	[  0]	TSETV	  3	2	1	; uv1"unknown"[slot1] = <unknown table>.getFilename
		 34	[  0]	RET1 	  1		2	; return slot1
	 54	[  0]	TSETS	  9	8	7	; love.graphics.newFont = slot9
	 55	[  0]	UCLO 	  7		0	; nil uvs >= r7; goto 56
	 56	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
	 57	[  0]	FNEW 	  8		4	; N/A:0-0: 1 args, 2 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		  4	[  0]	IST  	   		1	; if slot1
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	KPRI 	  1		0	; slot1 = nil
		  7	[  0]	RET1 	  1		2	; return slot1
		  8	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  9	[  0]	TGETV	  1	1	0	; slot1 = uv1"unknown"[slot0]
		 10	[  0]	ISNEP	  1		0	; if slot1 ~= nil
		 11	[  0]	JMP  	  2		20	; 	goto 32
		 12	[  0]	GGET 	  2		5	; slot2 = _env["pcall"]
		 13	[  0]	GGET 	  4		4	; slot4 = _env["love"]
		 14	[  0]	TGETS	  4	4	3	; slot4 = love.graphics
		 15	[  0]	TGETS	  4	4	2	; slot4 = love.graphics.newFont
		 16	[  0]	MOV  	  5		0	; slot5 = slot0
		 17	[  0]	CALL 	  2	3	3	; slot2, slot3 = pcall(slot3, love.graphics.newFont)
		 18	[  0]	ISF  	   		2	; if not slot2
		 19	[  0]	JMP  	  4		2	; 	goto 22
		 20	[  0]	ISTC 	  1		3	; slot1 = slot3; if slot3
		 21	[  0]	JMP  	  4		1	; 	goto 23
		 22	[  0]	KPRI 	  1		1	; slot1 = false
		 23	[  0]	ISF  	   		1	; if not slot1
		 24	[  0]	JMP  	  4		5	; 	goto 30
		 25	[  0]	MOV  	  6		1	; slot6 = slot1
		 26	[  0]	TGETS	  4	1	1	; slot4 = slot1.setFilter
		 27	[  0]	KSTR 	  7		0	; slot7 = "nearest"
		 28	[  0]	KSTR 	  8		0	; slot8 = "nearest"
		 29	[  0]	CALL 	  4	1	4	;  = <unknown table>.setFilter(slot5, slot6, slot7)
		 30	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 31	[  0]	TSETV	  1	4	0	; uv1"unknown"[slot0] = slot1
		 32	[  0]	ISTC 	  2		1	; slot2 = slot1; if slot1
		 33	[  0]	JMP  	  2		1	; 	goto 35
		 34	[  0]	KPRI 	  2		0	; slot2 = nil
		 35	[  0]	RET1 	  2		2	; return slot2
	 58	[  0]	FNEW 	  9		2	; N/A:0-0: 2 args, 4 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	13	; slot2 = uv0"unknown".rememberPath
		  3	[  0]	MOV  	  4		0	; slot4 = slot0
		  4	[  0]	MOV  	  5		1	; slot5 = slot1
		  5	[  0]	CALL 	  2	1	3	;  = uv0"unknown".rememberPath(slot3, slot4)
		  6	[  0]	ISF  	   		0	; if not slot0
		  7	[  0]	JMP  	  2		8	; 	goto 16
		  8	[  0]	TGETS	  2	0	12	; slot2 = slot0.setFallbacks
		  9	[  0]	ISF  	   		2	; if not <unknown table>.setFallbacks
		 10	[  0]	JMP  	  3		5	; 	goto 16
		 11	[  0]	GGET 	  2		11	; slot2 = _env["type"]
		 12	[  0]	MOV  	  4		1	; slot4 = slot1
		 13	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		 14	[  0]	ISEQS	  2		10	; if slot2 == "string"
		 15	[  0]	JMP  	  2		1	; 	goto 17
		 16	[  0]	RET1 	  0		2	; return slot0
		 17	[  0]	MOV  	  4		1	; slot4 = slot1
		 18	[  0]	TGETS	  2	1	9	; slot2 = slot1.gsub
		 19	[  0]	KSTR 	  5		8	; slot5 = "\"
		 20	[  0]	KSTR 	  6		7	; slot6 = "/"
		 21	[  0]	CALL 	  2	2	4	; slot2 = <unknown table>.gsub(slot3, slot4, slot5)
		 22	[  0]	MOV  	  4		2	; slot4 = slot2
		 23	[  0]	TGETS	  2	2	6	; slot2 = slot2.match
		 24	[  0]	KSTR 	  5		5	; slot5 = "/Russian/([^/]+)%.fnt$"
		 25	[  0]	CALL 	  2	2	3	; slot2 = <unknown table>.match(slot3, slot4)
		 26	[  0]	ISFC 	  3		2	; slot3 = slot2; if not slot2
		 27	[  0]	JMP  	  3		5	; 	goto 33
		 28	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 29	[  0]	MOV  	  6		2	; slot6 = slot2
		 30	[  0]	TGETS	  4	2	4	; slot4 = slot2.lower
		 31	[  0]	CALL 	  4	2	2	; slot4 = <unknown table>.lower(slot5)
		 32	[  0]	TGETV	  3	3	4	; slot3 = uv1"unknown"[<unknown table>.lower]
		 33	[  0]	ISFC 	  4		3	; slot4 = slot3; if not slot3
		 34	[  0]	JMP  	  4		2	; 	goto 37
		 35	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 36	[  0]	TGETV	  4	4	3	; slot4 = uv2"unknown"[slot3]
		 37	[  0]	IST  	   		4	; if slot4
		 38	[  0]	JMP  	  5		1	; 	goto 40
		 39	[  0]	RET1 	  0		2	; return slot0
		 40	[  0]	MOV  	  7		4	; slot7 = slot4
		 41	[  0]	TGETS	  5	4	9	; slot5 = slot4.gsub
		 42	[  0]	KSTR 	  8		3	; slot8 = "^src/data/font/(.+)%.fnt$"
		 43	[  0]	KSTR 	  9		2	; slot9 = "src/data/font/Latin/%1_La.fnt"
		 44	[  0]	CALL 	  5	2	4	; slot5 = <unknown table>.gsub(slot6, slot7, slot8)
		 45	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		 46	[  0]	LEN  	  7		6	; slot7 = #slot6
		 47	[  0]	ADDVN	  7	7	0	; slot7 = slot7 + 1
		 48	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		 49	[  0]	MOV  	 10		5	; slot10 = <unknown table>.gsub
		 50	[  0]	CALL 	  8	2	2	; slot8 = uv3"unknown"(slot9)
		 51	[  0]	TSETV	  8	6	7	; slot6[slot7] = uv3"unknown"
		 52	[  0]	LEN  	  7		6	; slot7 = #slot6
		 53	[  0]	ADDVN	  7	7	0	; slot7 = slot7 + 1
		 54	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		 55	[  0]	MOV  	 10		4	; slot10 = slot4
		 56	[  0]	CALL 	  8	2	2	; slot8 = uv3"unknown"(slot9)
		 57	[  0]	TSETV	  8	6	7	; slot6[slot7] = uv3"unknown"
		 58	[  0]	LEN  	  7		6	; slot7 = #slot6
		 59	[  0]	KSHORT	  8		0	; slot8 = 0
		 60	[  0]	ISGE 	  8		7	; if slot8 >= slot7
		 61	[  0]	JMP  	  7		7	; 	goto 69
		 62	[  0]	GGET 	  7		1	; slot7 = _env["pcall"]
		 63	[  0]	TGETS	  9	0	12	; slot9 = slot0.setFallbacks
		 64	[  0]	MOV  	 10		0	; slot10 = slot0
		 65	[  0]	GGET 	 11		0	; slot11 = _env["unpack"]
		 66	[  0]	MOV  	 13		6	; slot13 = slot6
		 67	[  0]	CALL 	 11	0	2	; MULTRES = unpack(slot12)
		 68	[  0]	CALLM	  7	1	2	;  = pcall(slot8, <unknown table>.setFallbacks, ...MULTRES)
		 69	[  0]	RET1 	  0		2	; return slot0
	 59	[  0]	TSETS	  9	0	3	; slot0.attachFallbacks = slot9
	 60	[  0]	FNEW 	  9		0	; N/A:0-0: 1 args, 1 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	6	; slot1 = uv0"unknown"._developerFont
		  3	[  0]	IST  	   		1	; if uv0"unknown"._developerFont
		  4	[  0]	JMP  	  1		26	; 	goto 31
		  5	[  0]	GGET 	  1		5	; slot1 = _env["love"]
		  6	[  0]	ISF  	   		1	; if not love
		  7	[  0]	JMP  	  2		23	; 	goto 31
		  8	[  0]	GGET 	  1		5	; slot1 = _env["love"]
		  9	[  0]	TGETS	  1	1	4	; slot1 = love.graphics
		 10	[  0]	ISF  	   		1	; if not love.graphics
		 11	[  0]	JMP  	  2		19	; 	goto 31
		 12	[  0]	GGET 	  1		5	; slot1 = _env["love"]
		 13	[  0]	TGETS	  1	1	4	; slot1 = love.graphics
		 14	[  0]	TGETS	  1	1	3	; slot1 = love.graphics.newFont
		 15	[  0]	ISF  	   		1	; if not love.graphics.newFont
		 16	[  0]	JMP  	  2		14	; 	goto 31
		 17	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 18	[  0]	GGET 	  2		5	; slot2 = _env["love"]
		 19	[  0]	TGETS	  2	2	4	; slot2 = love.graphics
		 20	[  0]	TGETS	  2	2	3	; slot2 = love.graphics.newFont
		 21	[  0]	KSTR 	  4		2	; slot4 = "src/data/font/Galmuri9W.fnt"
		 22	[  0]	CALL 	  2	2	2	; slot2 = love.graphics.newFont(slot3)
		 23	[  0]	TSETS	  2	1	6	; uv0"unknown"._developerFont = slot2
		 24	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 25	[  0]	TGETS	  1	1	6	; slot1 = uv0"unknown"._developerFont
		 26	[  0]	MOV  	  3		1	; slot3 = uv0"unknown"._developerFont
		 27	[  0]	TGETS	  1	1	1	; slot1 = uv0"unknown"._developerFont.setFilter
		 28	[  0]	KSTR 	  4		0	; slot4 = "nearest"
		 29	[  0]	KSTR 	  5		0	; slot5 = "nearest"
		 30	[  0]	CALL 	  1	1	4	;  = uv0"unknown"._developerFont.setFilter(slot2, uv0"unknown"._developerFont, slot4)
		 31	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 32	[  0]	TGETS	  1	1	6	; slot1 = uv0"unknown"._developerFont
		 33	[  0]	IST  	   		1	; if uv0"unknown"._developerFont
		 34	[  0]	JMP  	  2		1	; 	goto 36
		 35	[  0]	MOV  	  1		0	; slot1 = slot0
		 36	[  0]	RET1 	  1		2	; return slot1
	 61	[  0]	TSETS	  9	0	1	; slot0.developerFont = slot9
	 62	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 63
	 63	[  0]	RET1 	  0		2	; return slot0
	
