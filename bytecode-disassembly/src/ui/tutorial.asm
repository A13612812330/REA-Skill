;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\ui\tutorial.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 86 slots
	;;;; constant tables ;;;;
	ktable#240 = [
		[active] = false,
		[pending] = false,
		[step] = 0,
		[skipped] = false,
		[running] = false,
		[t] = 0,
		]
	
	
	;;;; instructions ;;;;
	  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
	  2	[  0]	GGET 	  1		244	; slot1 = _env["require"]
	  3	[  0]	KSTR 	  3		243	; slot3 = "src.data.language"
	  4	[  0]	CALL 	  1	2	2	; slot1 = require(slot2)
	  5	[  0]	FNEW 	  2		242	; N/A:0-0: 0 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		3	; slot0 = _env["rawget"]
		  2	[  0]	GGET 	  2		2	; slot2 = _env["_G"]
		  3	[  0]	KSTR 	  3		1	; slot3 = "Controller"
		  4	[  0]	CALL 	  0	2	3	; slot0 = rawget(slot1, _G)
		  5	[  0]	ISF  	   		0	; if not slot0
		  6	[  0]	JMP  	  1		9	; 	goto 16
		  7	[  0]	TGETS	  1	0	0	; slot1 = slot0.isPad
		  8	[  0]	ISF  	   		1	; if not <unknown table>.isPad
		  9	[  0]	JMP  	  2		6	; 	goto 16
		 10	[  0]	TGETS	  1	0	0	; slot1 = slot0.isPad
		 11	[  0]	CALL 	  1	2	1	; slot1 = <unknown table>.isPad()
		 12	[  0]	ISF  	   		1	; if not slot1
		 13	[  0]	JMP  	  2		2	; 	goto 16
		 14	[  0]	ISTC 	  1		0	; slot1 = slot0; if slot0
		 15	[  0]	JMP  	  1		1	; 	goto 17
		 16	[  0]	KPRI 	  1		0	; slot1 = nil
		 17	[  0]	RET1 	  1		2	; return slot1
	  6	[  0]	FNEW 	  3		241	; N/A:0-0: 1 args, 2 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		6	; slot1 = _env["_G"]
		  2	[  0]	TGETS	  1	1	5	; slot1 = _G.currentGameLang
		  3	[  0]	IST  	   		1	; if _G.currentGameLang
		  4	[  0]	JMP  	  2		1	; 	goto 6
		  5	[  0]	KSTR 	  1		4	; slot1 = "ko"
		  6	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  7	[  0]	CALL 	  2	2	1	; slot2 = uv0"unknown"()
		  8	[  0]	ISF  	   		2	; if not uv0"unknown"
		  9	[  0]	JMP  	  3		13	; 	goto 23
		 10	[  0]	KSTR 	  2		3	; slot2 = "tutorial_pad_"
		 11	[  0]	GGET 	  3		2	; slot3 = _env["tostring"]
		 12	[  0]	MOV  	  5		0	; slot5 = slot0
		 13	[  0]	CALL 	  3	2	2	; slot3 = tostring(slot4)
		 14	[  0]	CAT  	  2	2	3	; slot2 = slot2 .. tostring
		 15	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 16	[  0]	TGETS	  3	3	1	; slot3 = uv1"unknown".getText
		 17	[  0]	MOV  	  5		2	; slot5 = slot2
		 18	[  0]	MOV  	  6		1	; slot6 = slot1
		 19	[  0]	CALL 	  3	2	3	; slot3 = uv1"unknown".getText(slot4, slot5)
		 20	[  0]	ISEQV	  3		2	; if slot3 == slot2
		 21	[  0]	JMP  	  4		1	; 	goto 23
		 22	[  0]	RET1 	  3		2	; return slot3
		 23	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 24	[  0]	TGETS	  2	2	1	; slot2 = uv1"unknown".getText
		 25	[  0]	KSTR 	  4		0	; slot4 = "tutorial_"
		 26	[  0]	GGET 	  5		2	; slot5 = _env["tostring"]
		 27	[  0]	MOV  	  7		0	; slot7 = slot0
		 28	[  0]	CALL 	  5	2	2	; slot5 = tostring(slot6)
		 29	[  0]	CAT  	  4	4	5	; slot4 = slot4 .. tostring
		 30	[  0]	MOV  	  5		1	; slot5 = slot1
		 31	[  0]	CALLT	  2		3	; return uv1"unknown".getText(slot3, slot4)
	  7	[  0]	TDUP 	  4		240	; slot4 = copy table#k240
	  8	[  0]	KNIL 	  5		12	; slot5, slot6, slot7, slot8, slot9, slot10, slot11, slot12 = nil
	  9	[  0]	TNEW 	 13		0	; slot13 = new table( array: 0, dict: 1)
	 10	[  0]	KNIL 	 14		15	; slot14, slot15 = nil
	 11	[  0]	KSHORT	 16		1	; slot16 = 1
	 12	[  0]	GSET 	 16		239	; _env["STEP_SLOT"] = slot16
	 13	[  0]	KSHORT	 16		2	; slot16 = 2
	 14	[  0]	GSET 	 16		238	; _env["STEP_GOLD"] = slot16
	 15	[  0]	KSHORT	 16		3	; slot16 = 3
	 16	[  0]	GSET 	 16		237	; _env["STEP_ARCHER_WIN"] = slot16
	 17	[  0]	KSHORT	 16		4	; slot16 = 4
	 18	[  0]	GSET 	 16		236	; _env["STEP_SECOND_SPIN"] = slot16
	 19	[  0]	KSHORT	 16		5	; slot16 = 5
	 20	[  0]	GSET 	 16		235	; _env["STEP_SECOND_SPINNING"] = slot16
	 21	[  0]	KSHORT	 16		6	; slot16 = 6
	 22	[  0]	GSET 	 16		234	; _env["STEP_WARRIOR_WIN"] = slot16
	 23	[  0]	KSHORT	 16		7	; slot16 = 7
	 24	[  0]	GSET 	 16		233	; _env["STEP_UNIT_HOVER"] = slot16
	 25	[  0]	KSHORT	 16		8	; slot16 = 8
	 26	[  0]	GSET 	 16		232	; _env["STEP_POSITION"] = slot16
	 27	[  0]	KSHORT	 16		9	; slot16 = 9
	 28	[  0]	GSET 	 16		231	; _env["STEP_BATTLE_READY"] = slot16
	 29	[  0]	KSHORT	 16		10	; slot16 = 10
	 30	[  0]	GSET 	 16		230	; _env["STEP_BATTLE_FREE"] = slot16
	 31	[  0]	KSHORT	 16		11	; slot16 = 11
	 32	[  0]	GSET 	 16		229	; _env["STEP_WAVE_REWARD"] = slot16
	 33	[  0]	KSHORT	 16		12	; slot16 = 12
	 34	[  0]	GSET 	 16		228	; _env["STEP_REWARD_SPIN"] = slot16
	 35	[  0]	KSHORT	 16		13	; slot16 = 13
	 36	[  0]	GSET 	 16		227	; _env["STEP_REWARD_SPINNING"] = slot16
	 37	[  0]	KSHORT	 16		14	; slot16 = 14
	 38	[  0]	GSET 	 16		226	; _env["STEP_MORE_SPIN"] = slot16
	 39	[  0]	KSHORT	 16		15	; slot16 = 15
	 40	[  0]	GSET 	 16		225	; _env["STEP_MORE_SPINNING"] = slot16
	 41	[  0]	KSHORT	 16		16	; slot16 = 16
	 42	[  0]	GSET 	 16		224	; _env["STEP_NUDGE_MISS"] = slot16
	 43	[  0]	KSHORT	 16		17	; slot16 = 17
	 44	[  0]	GSET 	 16		223	; _env["STEP_NUDGE_ACTION"] = slot16
	 45	[  0]	KSHORT	 16		18	; slot16 = 18
	 46	[  0]	GSET 	 16		222	; _env["STEP_NUDGE_WIN"] = slot16
	 47	[  0]	KSHORT	 16		19	; slot16 = 19
	 48	[  0]	GSET 	 16		221	; _env["STEP_ABSORB_BUTTON"] = slot16
	 49	[  0]	KSHORT	 16		20	; slot16 = 20
	 50	[  0]	GSET 	 16		220	; _env["STEP_ABSORB_DRAG"] = slot16
	 51	[  0]	KSHORT	 16		21	; slot16 = 21
	 52	[  0]	GSET 	 16		219	; _env["STEP_ABSORB_MODAL"] = slot16
	 53	[  0]	KSHORT	 16		22	; slot16 = 22
	 54	[  0]	GSET 	 16		218	; _env["STEP_IMPRINT_INSPECT"] = slot16
	 55	[  0]	KSHORT	 16		23	; slot16 = 23
	 56	[  0]	GSET 	 16		217	; _env["STEP_FINAL_READY"] = slot16
	 57	[  0]	KSHORT	 16		24	; slot16 = 24
	 58	[  0]	GSET 	 16		216	; _env["STEP_CORE_COUNTER"] = slot16
	 59	[  0]	KSHORT	 16		25	; slot16 = 25
	 60	[  0]	GSET 	 16		215	; _env["STEP_CORE_SPIN"] = slot16
	 61	[  0]	KSHORT	 16		26	; slot16 = 26
	 62	[  0]	GSET 	 16		214	; _env["STEP_CORE_SPINNING"] = slot16
	 63	[  0]	KSHORT	 16		27	; slot16 = 27
	 64	[  0]	GSET 	 16		213	; _env["STEP_CORE_SELECT"] = slot16
	 65	[  0]	KSHORT	 16		28	; slot16 = 28
	 66	[  0]	GSET 	 16		212	; _env["STEP_POST_CORE_SLOT"] = slot16
	 67	[  0]	KSHORT	 16		29	; slot16 = 29
	 68	[  0]	GSET 	 16		211	; _env["STEP_POST_CORE_SPINNING"] = slot16
	 69	[  0]	KSHORT	 16		30	; slot16 = 30
	 70	[  0]	GSET 	 16		210	; _env["STEP_POST_CORE_ARCHER_WIN"] = slot16
	 71	[  0]	KSHORT	 16		31	; slot16 = 31
	 72	[  0]	GSET 	 16		209	; _env["STEP_POST_CORE_SECOND_SPIN"] = slot16
	 73	[  0]	KSHORT	 16		32	; slot16 = 32
	 74	[  0]	GSET 	 16		208	; _env["STEP_POST_CORE_SECOND_SPINNING"] = slot16
	 75	[  0]	KSHORT	 16		33	; slot16 = 33
	 76	[  0]	GSET 	 16		207	; _env["STEP_SLOT_BROKEN"] = slot16
	 77	[  0]	KSHORT	 16		34	; slot16 = 34
	 78	[  0]	GSET 	 16		206	; _env["STEP_MAX_UNIT_NOTICE"] = slot16
	 79	[  0]	KSHORT	 16		35	; slot16 = 35
	 80	[  0]	GSET 	 16		205	; _env["STEP_FREE_ABSORB_BUTTON"] = slot16
	 81	[  0]	KSHORT	 16		36	; slot16 = 36
	 82	[  0]	GSET 	 16		204	; _env["STEP_FREE_ABSORB"] = slot16
	 83	[  0]	KSHORT	 16		37	; slot16 = 37
	 84	[  0]	GSET 	 16		203	; _env["STEP_CLASS_PROMOTION"] = slot16
	 85	[  0]	KSHORT	 16		38	; slot16 = 38
	 86	[  0]	GSET 	 16		202	; _env["STEP_CLASS_SKILL_HOVER"] = slot16
	 87	[  0]	KSHORT	 16		39	; slot16 = 39
	 88	[  0]	GSET 	 16		201	; _env["STEP_CLASS_CHOOSE"] = slot16
	 89	[  0]	KSHORT	 16		40	; slot16 = 40
	 90	[  0]	GSET 	 16		200	; _env["STEP_PROMOTED_ARCHER"] = slot16
	 91	[  0]	KSHORT	 16		41	; slot16 = 41
	 92	[  0]	GSET 	 16		199	; _env["STEP_SHOP_INTRO"] = slot16
	 93	[  0]	KSHORT	 16		42	; slot16 = 42
	 94	[  0]	GSET 	 16		198	; _env["STEP_SHOP_CURRENCY"] = slot16
	 95	[  0]	KSHORT	 16		43	; slot16 = 43
	 96	[  0]	GSET 	 16		197	; _env["STEP_SHOP_BUY"] = slot16
	 97	[  0]	KSHORT	 16		44	; slot16 = 44
	 98	[  0]	GSET 	 16		196	; _env["STEP_SHOP_ITEM_BOUGHT"] = slot16
	 99	[  0]	KSHORT	 16		45	; slot16 = 45
	100	[  0]	GSET 	 16		195	; _env["STEP_SHOP_RETURN"] = slot16
	101	[  0]	KSHORT	 16		46	; slot16 = 46
	102	[  0]	GSET 	 16		194	; _env["STEP_WAVE_TYPES"] = slot16
	103	[  0]	KSHORT	 16		47	; slot16 = 47
	104	[  0]	GSET 	 16		193	; _env["STEP_TUTORIAL_COMPLETE"] = slot16
	105	[  0]	KNUM 	 16		0	; slot16 = 1.2
	106	[  0]	KSHORT	 17		5	; slot17 = 5
	107	[  0]	KSHORT	 18		3	; slot18 = 3
	108	[  0]	KNUM 	 19		1	; slot19 = 2.5
	109	[  0]	FNEW 	 20		192	; N/A:0-0: 0 args, 2 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".skipLockElapsed
		  3	[  0]	IST  	   		0	; if uv0"unknown".skipLockElapsed
		  4	[  0]	JMP  	  1		1	; 	goto 6
		  5	[  0]	KSHORT	  0		0	; slot0 = 0
		  6	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  7	[  0]	ISLE 	  1		0	; if uv1"unknown" <= slot0
		  8	[  0]	JMP  	  0		2	; 	goto 11
		  9	[  0]	KPRI 	  0		1	; slot0 = false
		 10	[  0]	JMP  	  1		1	; 	goto 12
		 11	[  0]	KPRI 	  0		2	; slot0 = true
		 12	[  0]	RET1 	  0		2	; return slot0
	110	[  0]	FNEW 	 21		191	; N/A:0-0: 1 args, 0 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		9	; slot1 = _env["love"]
		  2	[  0]	ISF  	   		1	; if not love
		  3	[  0]	JMP  	  2		9	; 	goto 13
		  4	[  0]	GGET 	  1		9	; slot1 = _env["love"]
		  5	[  0]	TGETS	  1	1	8	; slot1 = love.graphics
		  6	[  0]	ISF  	   		1	; if not love.graphics
		  7	[  0]	JMP  	  2		5	; 	goto 13
		  8	[  0]	GGET 	  1		9	; slot1 = _env["love"]
		  9	[  0]	TGETS	  1	1	8	; slot1 = love.graphics
		 10	[  0]	TGETS	  1	1	7	; slot1 = love.graphics.newFont
		 11	[  0]	IST  	   		1	; if love.graphics.newFont
		 12	[  0]	JMP  	  1		2	; 	goto 15
		 13	[  0]	KPRI 	  1		0	; slot1 = nil
		 14	[  0]	RET1 	  1		2	; return slot1
		 15	[  0]	GGET 	  1		6	; slot1 = _env["require"]
		 16	[  0]	KSTR 	  3		5	; slot3 = "src.data.font_resolver"
		 17	[  0]	CALL 	  1	2	2	; slot1 = require(slot2)
		 18	[  0]	TGETS	  2	1	4	; slot2 = slot1.resolve
		 19	[  0]	MOV  	  4		0	; slot4 = slot0
		 20	[  0]	CALL 	  2	2	2	; slot2 = <unknown table>.resolve(slot3)
		 21	[  0]	MOV  	  0		2	; slot0 = slot2
		 22	[  0]	GGET 	  2		3	; slot2 = _env["pcall"]
		 23	[  0]	GGET 	  4		9	; slot4 = _env["love"]
		 24	[  0]	TGETS	  4	4	8	; slot4 = love.graphics
		 25	[  0]	TGETS	  4	4	7	; slot4 = love.graphics.newFont
		 26	[  0]	MOV  	  5		0	; slot5 = slot0
		 27	[  0]	CALL 	  2	3	3	; slot2, slot3 = pcall(slot3, love.graphics.newFont)
		 28	[  0]	ISF  	   		2	; if not slot2
		 29	[  0]	JMP  	  4		11	; 	goto 41
		 30	[  0]	ISF  	   		3	; if not slot3
		 31	[  0]	JMP  	  4		9	; 	goto 41
		 32	[  0]	MOV  	  6		3	; slot6 = slot3
		 33	[  0]	TGETS	  4	3	2	; slot4 = slot3.setFilter
		 34	[  0]	KSTR 	  7		1	; slot7 = "nearest"
		 35	[  0]	KSTR 	  8		1	; slot8 = "nearest"
		 36	[  0]	CALL 	  4	1	4	;  = <unknown table>.setFilter(slot5, slot6, slot7)
		 37	[  0]	TGETS	  4	1	0	; slot4 = slot1.attachFallbacks
		 38	[  0]	MOV  	  6		3	; slot6 = slot3
		 39	[  0]	MOV  	  7		0	; slot7 = slot0
		 40	[  0]	CALLT	  4		3	; return <unknown table>.attachFallbacks(slot5, slot6)
		 41	[  0]	KPRI 	  4		0	; slot4 = nil
		 42	[  0]	RET1 	  4		2	; return slot4
	111	[  0]	KPRI 	 22		1	; slot22 = false
	112	[  0]	FNEW 	 23		190	; N/A:0-0: 0 args, 3 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	IST  	   		0	; if uv0"unknown"
		  3	[  0]	JMP  	  1		3	; 	goto 7
		  4	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  5	[  0]	ISF  	   		0	; if not uv1"unknown"
		  6	[  0]	JMP  	  1		1	; 	goto 8
		  7	[  0]	RET0 	  0		1	; return
		  8	[  0]	USETP	  1		2	; uv1"unknwon" = true
		  9	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
		 10	[  0]	KSTR 	  2		0	; slot2 = "src/data/font/Galmuri9W.fnt"
		 11	[  0]	CALL 	  0	2	2	; slot0 = uv2"unknown"(slot1)
		 12	[  0]	USETV	  0		0	; uv0"unknwon" = slot0
		 13	[  0]	RET0 	  0		1	; return
	113	[  0]	FNEW 	 24		189	; N/A:0-0: 0 args, 1 upvalues, 7 slots
		
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
		  9	[  0]	GGET 	  0		6	; slot0 = _env["love"]
		 10	[  0]	ISF  	   		0	; if not love
		 11	[  0]	JMP  	  1		9	; 	goto 21
		 12	[  0]	GGET 	  0		6	; slot0 = _env["love"]
		 13	[  0]	TGETS	  0	0	5	; slot0 = love.graphics
		 14	[  0]	ISF  	   		0	; if not love.graphics
		 15	[  0]	JMP  	  1		5	; 	goto 21
		 16	[  0]	GGET 	  0		6	; slot0 = _env["love"]
		 17	[  0]	TGETS	  0	0	5	; slot0 = love.graphics
		 18	[  0]	TGETS	  0	0	4	; slot0 = love.graphics.newImage
		 19	[  0]	IST  	   		0	; if love.graphics.newImage
		 20	[  0]	JMP  	  0		2	; 	goto 23
		 21	[  0]	KPRI 	  0		0	; slot0 = nil
		 22	[  0]	RET1 	  0		2	; return slot0
		 23	[  0]	GGET 	  0		3	; slot0 = _env["pcall"]
		 24	[  0]	GGET 	  2		6	; slot2 = _env["love"]
		 25	[  0]	TGETS	  2	2	5	; slot2 = love.graphics
		 26	[  0]	TGETS	  2	2	4	; slot2 = love.graphics.newImage
		 27	[  0]	KSTR 	  3		2	; slot3 = "src/sprites/background/mainbackground/tutorialwindow.png"
		 28	[  0]	CALL 	  0	3	3	; slot0, slot1 = pcall(slot1, love.graphics.newImage)
		 29	[  0]	ISF  	   		0	; if not slot0
		 30	[  0]	JMP  	  2		10	; 	goto 41
		 31	[  0]	ISF  	   		1	; if not slot1
		 32	[  0]	JMP  	  2		8	; 	goto 41
		 33	[  0]	MOV  	  4		1	; slot4 = slot1
		 34	[  0]	TGETS	  2	1	1	; slot2 = slot1.setFilter
		 35	[  0]	KSTR 	  5		0	; slot5 = "nearest"
		 36	[  0]	KSTR 	  6		0	; slot6 = "nearest"
		 37	[  0]	CALL 	  2	1	4	;  = <unknown table>.setFilter(slot3, slot4, slot5)
		 38	[  0]	USETV	  0		1	; uv0"unknwon" = slot1
		 39	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 40	[  0]	RET1 	  2		2	; return uv0"unknown"
		 41	[  0]	USETP	  0		1	; uv0"unknwon" = false
		 42	[  0]	KPRI 	  2		0	; slot2 = nil
		 43	[  0]	RET1 	  2		2	; return slot2
	114	[  0]	FNEW 	 25		188	; N/A:0-0: 0 args, 1 upvalues, 7 slots
		
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
		  9	[  0]	GGET 	  0		6	; slot0 = _env["love"]
		 10	[  0]	ISF  	   		0	; if not love
		 11	[  0]	JMP  	  1		9	; 	goto 21
		 12	[  0]	GGET 	  0		6	; slot0 = _env["love"]
		 13	[  0]	TGETS	  0	0	5	; slot0 = love.graphics
		 14	[  0]	ISF  	   		0	; if not love.graphics
		 15	[  0]	JMP  	  1		5	; 	goto 21
		 16	[  0]	GGET 	  0		6	; slot0 = _env["love"]
		 17	[  0]	TGETS	  0	0	5	; slot0 = love.graphics
		 18	[  0]	TGETS	  0	0	4	; slot0 = love.graphics.newImage
		 19	[  0]	IST  	   		0	; if love.graphics.newImage
		 20	[  0]	JMP  	  0		2	; 	goto 23
		 21	[  0]	KPRI 	  0		0	; slot0 = nil
		 22	[  0]	RET1 	  0		2	; return slot0
		 23	[  0]	GGET 	  0		3	; slot0 = _env["pcall"]
		 24	[  0]	GGET 	  2		6	; slot2 = _env["love"]
		 25	[  0]	TGETS	  2	2	5	; slot2 = love.graphics
		 26	[  0]	TGETS	  2	2	4	; slot2 = love.graphics.newImage
		 27	[  0]	KSTR 	  3		2	; slot3 = "src/sprites/mainmenu/tutorial.png"
		 28	[  0]	CALL 	  0	3	3	; slot0, slot1 = pcall(slot1, love.graphics.newImage)
		 29	[  0]	ISF  	   		0	; if not slot0
		 30	[  0]	JMP  	  2		10	; 	goto 41
		 31	[  0]	ISF  	   		1	; if not slot1
		 32	[  0]	JMP  	  2		8	; 	goto 41
		 33	[  0]	MOV  	  4		1	; slot4 = slot1
		 34	[  0]	TGETS	  2	1	1	; slot2 = slot1.setFilter
		 35	[  0]	KSTR 	  5		0	; slot5 = "nearest"
		 36	[  0]	KSTR 	  6		0	; slot6 = "nearest"
		 37	[  0]	CALL 	  2	1	4	;  = <unknown table>.setFilter(slot3, slot4, slot5)
		 38	[  0]	USETV	  0		1	; uv0"unknwon" = slot1
		 39	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 40	[  0]	RET1 	  2		2	; return uv0"unknown"
		 41	[  0]	USETP	  0		1	; uv0"unknwon" = false
		 42	[  0]	KPRI 	  2		0	; slot2 = nil
		 43	[  0]	RET1 	  2		2	; return slot2
	115	[  0]	TNEW 	 26		0	; slot26 = new table( array: 0, dict: 1)
	116	[  0]	FNEW 	 27		187	; N/A:0-0: 0 args, 2 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			#1: src/sprites/icons/tooltip/gold.png,
			#2: src/sprites/icons/menu/gold.png,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		2	; 	goto 6
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	RET1 	  0		2	; return uv0"unknown"
		  6	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  7	[  0]	TGETS	  0	0	8	; slot0 = uv1"unknown".gold
		  8	[  0]	ISF  	   		0	; if not uv1"unknown".gold
		  9	[  0]	JMP  	  1		2	; 	goto 12
		 10	[  0]	KPRI 	  0		0	; slot0 = nil
		 11	[  0]	RET1 	  0		2	; return slot0
		 12	[  0]	GGET 	  0		7	; slot0 = _env["love"]
		 13	[  0]	ISF  	   		0	; if not love
		 14	[  0]	JMP  	  1		9	; 	goto 24
		 15	[  0]	GGET 	  0		7	; slot0 = _env["love"]
		 16	[  0]	TGETS	  0	0	6	; slot0 = love.graphics
		 17	[  0]	ISF  	   		0	; if not love.graphics
		 18	[  0]	JMP  	  1		5	; 	goto 24
		 19	[  0]	GGET 	  0		7	; slot0 = _env["love"]
		 20	[  0]	TGETS	  0	0	6	; slot0 = love.graphics
		 21	[  0]	TGETS	  0	0	5	; slot0 = love.graphics.newImage
		 22	[  0]	IST  	   		0	; if love.graphics.newImage
		 23	[  0]	JMP  	  0		2	; 	goto 26
		 24	[  0]	KPRI 	  0		0	; slot0 = nil
		 25	[  0]	RET1 	  0		2	; return slot0
		 26	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 27	[  0]	KPRI 	  1		2	; slot1 = true
		 28	[  0]	TSETS	  1	0	8	; uv1"unknown".gold = slot1
		 29	[  0]	TDUP 	  0		4	; slot0 = copy table#k4
		 30	[  0]	GGET 	  1		3	; slot1 = _env["ipairs"]
		 31	[  0]	MOV  	  3		0	; slot3 = slot0
		 32	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = ipairs(slot2)
		 33	[  0]	JMP  	  4		18	; 	goto 52
		 34	[  0]	GGET 	  6		2	; slot6 = _env["pcall"]
		 35	[  0]	GGET 	  8		7	; slot8 = _env["love"]
		 36	[  0]	TGETS	  8	8	6	; slot8 = love.graphics
		 37	[  0]	TGETS	  8	8	5	; slot8 = love.graphics.newImage
		 38	[  0]	MOV  	  9		5	; slot9 = slot5
		 39	[  0]	CALL 	  6	3	3	; slot6, slot7 = pcall(slot7, love.graphics.newImage)
		 40	[  0]	ISF  	   		6	; if not pcall
		 41	[  0]	JMP  	  8		10	; 	goto 52
		 42	[  0]	ISF  	   		7	; if not slot7
		 43	[  0]	JMP  	  8		8	; 	goto 52
		 44	[  0]	MOV  	 10		7	; slot10 = slot7
		 45	[  0]	TGETS	  8	7	1	; slot8 = slot7.setFilter
		 46	[  0]	KSTR 	 11		0	; slot11 = "nearest"
		 47	[  0]	KSTR 	 12		0	; slot12 = "nearest"
		 48	[  0]	CALL 	  8	1	4	;  = <unknown table>.setFilter(slot9, slot10, slot11)
		 49	[  0]	USETV	  0		7	; uv0"unknwon" = slot7
		 50	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 51	[  0]	RET1 	  8		2	; return uv0"unknown"
		 52	[  0]	ITERC	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, slot3; slot4, slot5 = slot1(slot2, slot3)
		 53	[  0]	ITERL	  4		-20	; slot3 = slot4; if slot4 != nil goto 34
		 54	[  0]	KPRI 	  1		0	; slot1 = nil
		 55	[  0]	RET1 	  1		2	; return slot1
	117	[  0]	FNEW 	 28		186	; N/A:0-0: 1 args, 3 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISNES	  0		13	; if slot0 ~= "mouseLeft"
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KSTR 	  0		13	; slot0 = "mouseLeft"
		  4	[  0]	JMP  	  1		1	; 	goto 6
		  5	[  0]	KSTR 	  0		12	; slot0 = "mouseRight"
		  6	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  7	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown"()
		  8	[  0]	ISF  	   		1	; if not slot1
		  9	[  0]	JMP  	  2		13	; 	goto 23
		 10	[  0]	TGETS	  2	1	11	; slot2 = slot1.actionGlyphImage
		 11	[  0]	ISF  	   		2	; if not <unknown table>.actionGlyphImage
		 12	[  0]	JMP  	  3		10	; 	goto 23
		 13	[  0]	TGETS	  2	1	11	; slot2 = slot1.actionGlyphImage
		 14	[  0]	ISNES	  0		13	; if slot0 ~= "mouseLeft"
		 15	[  0]	JMP  	  4		2	; 	goto 18
		 16	[  0]	KSTR 	  4		10	; slot4 = "confirm"
		 17	[  0]	JMP  	  5		1	; 	goto 19
		 18	[  0]	KSTR 	  4		9	; slot4 = "inspect"
		 19	[  0]	CALL 	  2	2	2	; slot2 = <unknown table>.actionGlyphImage(slot3)
		 20	[  0]	ISF  	   		2	; if not slot2
		 21	[  0]	JMP  	  3		1	; 	goto 23
		 22	[  0]	RET1 	  2		2	; return slot2
		 23	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 24	[  0]	TGETV	  2	2	0	; slot2 = uv1"unknown"[slot0]
		 25	[  0]	ISF  	   		2	; if not slot2
		 26	[  0]	JMP  	  3		3	; 	goto 30
		 27	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 28	[  0]	TGETV	  2	2	0	; slot2 = uv1"unknown"[slot0]
		 29	[  0]	RET1 	  2		2	; return slot2
		 30	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 31	[  0]	TGETV	  2	2	0	; slot2 = uv2"unknown"[slot0]
		 32	[  0]	ISF  	   		2	; if not slot2
		 33	[  0]	JMP  	  3		2	; 	goto 36
		 34	[  0]	KPRI 	  2		0	; slot2 = nil
		 35	[  0]	RET1 	  2		2	; return slot2
		 36	[  0]	GGET 	  2		8	; slot2 = _env["love"]
		 37	[  0]	ISF  	   		2	; if not love
		 38	[  0]	JMP  	  3		9	; 	goto 48
		 39	[  0]	GGET 	  2		8	; slot2 = _env["love"]
		 40	[  0]	TGETS	  2	2	7	; slot2 = love.graphics
		 41	[  0]	ISF  	   		2	; if not love.graphics
		 42	[  0]	JMP  	  3		5	; 	goto 48
		 43	[  0]	GGET 	  2		8	; slot2 = _env["love"]
		 44	[  0]	TGETS	  2	2	7	; slot2 = love.graphics
		 45	[  0]	TGETS	  2	2	6	; slot2 = love.graphics.newImage
		 46	[  0]	IST  	   		2	; if love.graphics.newImage
		 47	[  0]	JMP  	  2		2	; 	goto 50
		 48	[  0]	KPRI 	  2		0	; slot2 = nil
		 49	[  0]	RET1 	  2		2	; return slot2
		 50	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 51	[  0]	KPRI 	  3		2	; slot3 = true
		 52	[  0]	TSETV	  3	2	0	; uv2"unknown"[slot0] = slot3
		 53	[  0]	ISNES	  0		13	; if slot0 ~= "mouseLeft"
		 54	[  0]	JMP  	  2		2	; 	goto 57
		 55	[  0]	KSTR 	  2		5	; slot2 = "mouserleftsmall.png"
		 56	[  0]	JMP  	  3		1	; 	goto 58
		 57	[  0]	KSTR 	  2		4	; slot2 = "mouserightsmall.png"
		 58	[  0]	GGET 	  3		3	; slot3 = _env["pcall"]
		 59	[  0]	GGET 	  5		8	; slot5 = _env["love"]
		 60	[  0]	TGETS	  5	5	7	; slot5 = love.graphics
		 61	[  0]	TGETS	  5	5	6	; slot5 = love.graphics.newImage
		 62	[  0]	KSTR 	  6		2	; slot6 = "src/sprites/icons/tooltip/"
		 63	[  0]	MOV  	  7		2	; slot7 = slot2
		 64	[  0]	CAT  	  6	6	7	; slot6 = slot6 .. slot7
		 65	[  0]	CALL 	  3	3	3	; slot3, slot4 = pcall(slot4, love.graphics.newImage)
		 66	[  0]	ISF  	   		3	; if not slot3
		 67	[  0]	JMP  	  5		9	; 	goto 77
		 68	[  0]	ISF  	   		4	; if not slot4
		 69	[  0]	JMP  	  5		7	; 	goto 77
		 70	[  0]	MOV  	  7		4	; slot7 = slot4
		 71	[  0]	TGETS	  5	4	1	; slot5 = slot4.setFilter
		 72	[  0]	KSTR 	  8		0	; slot8 = "nearest"
		 73	[  0]	KSTR 	  9		0	; slot9 = "nearest"
		 74	[  0]	CALL 	  5	1	4	;  = <unknown table>.setFilter(slot6, slot7, slot8)
		 75	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 76	[  0]	TSETV	  4	5	0	; uv1"unknown"[slot0] = slot4
		 77	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 78	[  0]	TGETV	  5	5	0	; slot5 = uv1"unknown"[slot0]
		 79	[  0]	RET1 	  5		2	; return slot5
	118	[  0]	FNEW 	 29		185	; N/A:0-0: 1 args, 3 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISNES	  0		11	; if slot0 ~= "judgement"
		  2	[  0]	JMP  	  1		5	; 	goto 8
		  3	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  4	[  0]	ISF  	   		1	; if not uv0"unknown"
		  5	[  0]	JMP  	  2		2	; 	goto 8
		  6	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  7	[  0]	RET1 	  1		2	; return uv0"unknown"
		  8	[  0]	ISNES	  0		10	; if slot0 ~= "boss"
		  9	[  0]	JMP  	  1		5	; 	goto 15
		 10	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 11	[  0]	ISF  	   		1	; if not uv1"unknown"
		 12	[  0]	JMP  	  2		2	; 	goto 15
		 13	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 14	[  0]	RET1 	  1		2	; return uv1"unknown"
		 15	[  0]	ISNES	  0		11	; if slot0 ~= "judgement"
		 16	[  0]	JMP  	  1		2	; 	goto 19
		 17	[  0]	KSTR 	  1		9	; slot1 = "waveJudgement"
		 18	[  0]	JMP  	  2		1	; 	goto 20
		 19	[  0]	KSTR 	  1		8	; slot1 = "waveBoss"
		 20	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 21	[  0]	TGETV	  2	2	1	; slot2 = uv2"unknown"[slot1]
		 22	[  0]	ISF  	   		2	; if not slot2
		 23	[  0]	JMP  	  3		2	; 	goto 26
		 24	[  0]	KPRI 	  2		0	; slot2 = nil
		 25	[  0]	RET1 	  2		2	; return slot2
		 26	[  0]	GGET 	  2		7	; slot2 = _env["love"]
		 27	[  0]	ISF  	   		2	; if not love
		 28	[  0]	JMP  	  3		9	; 	goto 38
		 29	[  0]	GGET 	  2		7	; slot2 = _env["love"]
		 30	[  0]	TGETS	  2	2	6	; slot2 = love.graphics
		 31	[  0]	ISF  	   		2	; if not love.graphics
		 32	[  0]	JMP  	  3		5	; 	goto 38
		 33	[  0]	GGET 	  2		7	; slot2 = _env["love"]
		 34	[  0]	TGETS	  2	2	6	; slot2 = love.graphics
		 35	[  0]	TGETS	  2	2	5	; slot2 = love.graphics.newImage
		 36	[  0]	IST  	   		2	; if love.graphics.newImage
		 37	[  0]	JMP  	  2		2	; 	goto 40
		 38	[  0]	KPRI 	  2		0	; slot2 = nil
		 39	[  0]	RET1 	  2		2	; return slot2
		 40	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 41	[  0]	KPRI 	  3		2	; slot3 = true
		 42	[  0]	TSETV	  3	2	1	; uv2"unknown"[slot1] = slot3
		 43	[  0]	ISNES	  0		11	; if slot0 ~= "judgement"
		 44	[  0]	JMP  	  2		2	; 	goto 47
		 45	[  0]	KSTR 	  2		4	; slot2 = "src/sprites/icons/battlefieldicons/battle_small.png"
		 46	[  0]	JMP  	  3		1	; 	goto 48
		 47	[  0]	KSTR 	  2		3	; slot2 = "src/sprites/icons/battlefieldicons/boss.png"
		 48	[  0]	GGET 	  3		2	; slot3 = _env["pcall"]
		 49	[  0]	GGET 	  5		7	; slot5 = _env["love"]
		 50	[  0]	TGETS	  5	5	6	; slot5 = love.graphics
		 51	[  0]	TGETS	  5	5	5	; slot5 = love.graphics.newImage
		 52	[  0]	MOV  	  6		2	; slot6 = slot2
		 53	[  0]	CALL 	  3	3	3	; slot3, slot4 = pcall(slot4, love.graphics.newImage)
		 54	[  0]	ISF  	   		3	; if not slot3
		 55	[  0]	JMP  	  5		13	; 	goto 69
		 56	[  0]	ISF  	   		4	; if not slot4
		 57	[  0]	JMP  	  5		11	; 	goto 69
		 58	[  0]	MOV  	  7		4	; slot7 = slot4
		 59	[  0]	TGETS	  5	4	1	; slot5 = slot4.setFilter
		 60	[  0]	KSTR 	  8		0	; slot8 = "nearest"
		 61	[  0]	KSTR 	  9		0	; slot9 = "nearest"
		 62	[  0]	CALL 	  5	1	4	;  = <unknown table>.setFilter(slot6, slot7, slot8)
		 63	[  0]	ISNES	  0		11	; if slot0 ~= "judgement"
		 64	[  0]	JMP  	  5		2	; 	goto 67
		 65	[  0]	USETV	  0		4	; uv0"unknwon" = slot4
		 66	[  0]	JMP  	  5		1	; 	goto 68
		 67	[  0]	USETV	  1		4	; uv1"unknwon" = slot4
		 68	[  0]	RET1 	  4		2	; return slot4
		 69	[  0]	KPRI 	  5		0	; slot5 = nil
		 70	[  0]	RET1 	  5		2	; return slot5
	119	[  0]	FNEW 	 30		184	; N/A:0-0: 0 args, 3 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	IST  	   		0	; if uv0"unknown"
		  3	[  0]	JMP  	  0		49	; 	goto 53
		  4	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  5	[  0]	TGETS	  0	0	9	; slot0 = uv1"unknown".coreButton
		  6	[  0]	IST  	   		0	; if uv1"unknown".coreButton
		  7	[  0]	JMP  	  0		45	; 	goto 53
		  8	[  0]	GGET 	  0		8	; slot0 = _env["love"]
		  9	[  0]	ISF  	   		0	; if not love
		 10	[  0]	JMP  	  1		42	; 	goto 53
		 11	[  0]	GGET 	  0		8	; slot0 = _env["love"]
		 12	[  0]	TGETS	  0	0	7	; slot0 = love.graphics
		 13	[  0]	ISF  	   		0	; if not love.graphics
		 14	[  0]	JMP  	  1		38	; 	goto 53
		 15	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 16	[  0]	KPRI 	  1		2	; slot1 = true
		 17	[  0]	TSETS	  1	0	9	; uv1"unknown".coreButton = slot1
		 18	[  0]	KSTR 	  0		6	; slot0 = "src/sprites/background/button/corescrollbutton.png"
		 19	[  0]	GGET 	  1		5	; slot1 = _env["pcall"]
		 20	[  0]	GGET 	  3		8	; slot3 = _env["love"]
		 21	[  0]	TGETS	  3	3	7	; slot3 = love.graphics
		 22	[  0]	TGETS	  3	3	4	; slot3 = love.graphics.newImage
		 23	[  0]	MOV  	  4		0	; slot4 = slot0
		 24	[  0]	CALL 	  1	3	3	; slot1, slot2 = pcall(slot2, love.graphics.newImage)
		 25	[  0]	ISF  	   		1	; if not slot1
		 26	[  0]	JMP  	  3		8	; 	goto 35
		 27	[  0]	ISF  	   		2	; if not slot2
		 28	[  0]	JMP  	  3		6	; 	goto 35
		 29	[  0]	MOV  	  5		2	; slot5 = slot2
		 30	[  0]	TGETS	  3	2	3	; slot3 = slot2.setFilter
		 31	[  0]	KSTR 	  6		2	; slot6 = "nearest"
		 32	[  0]	KSTR 	  7		2	; slot7 = "nearest"
		 33	[  0]	CALL 	  3	1	4	;  = <unknown table>.setFilter(slot4, slot5, slot6)
		 34	[  0]	USETV	  0		2	; uv0"unknwon" = slot2
		 35	[  0]	GGET 	  3		8	; slot3 = _env["love"]
		 36	[  0]	TGETS	  3	3	1	; slot3 = love.image
		 37	[  0]	ISF  	   		3	; if not love.image
		 38	[  0]	JMP  	  4		14	; 	goto 53
		 39	[  0]	GGET 	  3		8	; slot3 = _env["love"]
		 40	[  0]	TGETS	  3	3	1	; slot3 = love.image
		 41	[  0]	TGETS	  3	3	0	; slot3 = love.image.newImageData
		 42	[  0]	ISF  	   		3	; if not love.image.newImageData
		 43	[  0]	JMP  	  4		9	; 	goto 53
		 44	[  0]	GGET 	  3		5	; slot3 = _env["pcall"]
		 45	[  0]	GGET 	  5		8	; slot5 = _env["love"]
		 46	[  0]	TGETS	  5	5	1	; slot5 = love.image
		 47	[  0]	TGETS	  5	5	0	; slot5 = love.image.newImageData
		 48	[  0]	MOV  	  6		0	; slot6 = slot0
		 49	[  0]	CALL 	  3	3	3	; slot3, slot4 = pcall(slot4, love.image.newImageData)
		 50	[  0]	ISF  	   		3	; if not slot3
		 51	[  0]	JMP  	  5		1	; 	goto 53
		 52	[  0]	USETV	  2		4	; uv2"unknwon" = slot4
		 53	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 54	[  0]	RET1 	  0		2	; return uv0"unknown"
	120	[  0]	FNEW 	 31		183	; N/A:0-0: 0 args, 1 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	IST  	   		0	; if uv0"unknown"
		  3	[  0]	JMP  	  1		12	; 	goto 16
		  4	[  0]	GGET 	  0		4	; slot0 = _env["love"]
		  5	[  0]	ISF  	   		0	; if not love
		  6	[  0]	JMP  	  1		9	; 	goto 16
		  7	[  0]	GGET 	  0		4	; slot0 = _env["love"]
		  8	[  0]	TGETS	  0	0	3	; slot0 = love.graphics
		  9	[  0]	ISF  	   		0	; if not love.graphics
		 10	[  0]	JMP  	  1		5	; 	goto 16
		 11	[  0]	GGET 	  0		4	; slot0 = _env["love"]
		 12	[  0]	TGETS	  0	0	3	; slot0 = love.graphics
		 13	[  0]	TGETS	  0	0	2	; slot0 = love.graphics.newShader
		 14	[  0]	IST  	   		0	; if love.graphics.newShader
		 15	[  0]	JMP  	  0		2	; 	goto 18
		 16	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 17	[  0]	RET1 	  0		2	; return uv0"unknown"
		 18	[  0]	KSTR 	  0		1	; slot0 = "    extern vec2 texelStep;
		    extern vec4 outlineColor;
		    extern float threshold;
		    extern float radiusPx;
		    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {
		      float a0 = Texel(tex, tc).a;
		      if (a0 <= threshold) {
		        vec2 s = texelStep;
		        float a1 = Texel(tex, tc + vec2( s.x, 0.0)).a;
		        float a2 = Texel(tex, tc + vec2(-s.x, 0.0)).a;
		        float a3 = Texel(tex, tc + vec2(0.0,  s.y)).a;
		        float a4 = Texel(tex, tc + vec2(0.0, -s.y)).a;
		        float a5 = Texel(tex, tc + vec2( s.x,  s.y)).a;
		        float a6 = Texel(tex, tc + vec2(-s.x, -s.y)).a;
		        float a7 = Texel(tex, tc + vec2( s.x, -s.y)).a;
		        float a8 = Texel(tex, tc + vec2(-s.x,  s.y)).a;
		        float neighbor = max(max(max(a1,a2),max(a3,a4)), max(max(a5,a6),max(a7,a8)));
		        if (radiusPx > 1.5) {
		          vec2 t = s * 2.0;
		          float b1 = Texel(tex, tc + vec2( t.x, 0.0)).a;
		          float b2 = Texel(tex, tc + vec2(-t.x, 0.0)).a;
		          float b3 = Texel(tex, tc + vec2(0.0,  t.y)).a;
		          float b4 = Texel(tex, tc + vec2(0.0, -t.y)).a;
		          float b5 = Texel(tex, tc + vec2( t.x,  t.y)).a;
		          float b6 = Texel(tex, tc + vec2(-t.x, -t.y)).a;
		          float b7 = Texel(tex, tc + vec2( t.x, -t.y)).a;
		          float b8 = Texel(tex, tc + vec2(-t.x,  t.y)).a;
		          float neighbor2 = max(max(max(b1,b2),max(b3,b4)), max(max(b5,b6),max(b7,b8)));
		          neighbor = max(neighbor, neighbor2);
		        }
		        if (neighbor > threshold) return outlineColor;
		      }
		      return vec4(0.0);
		    }
		  "
		 19	[  0]	GGET 	  1		0	; slot1 = _env["pcall"]
		 20	[  0]	GGET 	  3		4	; slot3 = _env["love"]
		 21	[  0]	TGETS	  3	3	3	; slot3 = love.graphics
		 22	[  0]	TGETS	  3	3	2	; slot3 = love.graphics.newShader
		 23	[  0]	MOV  	  4		0	; slot4 = slot0
		 24	[  0]	CALL 	  1	3	3	; slot1, slot2 = pcall(slot2, love.graphics.newShader)
		 25	[  0]	ISF  	   		1	; if not slot1
		 26	[  0]	JMP  	  3		1	; 	goto 28
		 27	[  0]	USETV	  0		2	; uv0"unknwon" = slot2
		 28	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 29	[  0]	RET1 	  3		2	; return uv0"unknown"
	121	[  0]	FNEW 	 32		182	; N/A:0-0: 0 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	IST  	   		0	; if uv0"unknown"
		  3	[  0]	JMP  	  1		12	; 	goto 16
		  4	[  0]	GGET 	  0		6	; slot0 = _env["love"]
		  5	[  0]	ISF  	   		0	; if not love
		  6	[  0]	JMP  	  1		9	; 	goto 16
		  7	[  0]	GGET 	  0		6	; slot0 = _env["love"]
		  8	[  0]	TGETS	  0	0	5	; slot0 = love.graphics
		  9	[  0]	ISF  	   		0	; if not love.graphics
		 10	[  0]	JMP  	  1		5	; 	goto 16
		 11	[  0]	GGET 	  0		6	; slot0 = _env["love"]
		 12	[  0]	TGETS	  0	0	5	; slot0 = love.graphics
		 13	[  0]	TGETS	  0	0	4	; slot0 = love.graphics.newShader
		 14	[  0]	IST  	   		0	; if love.graphics.newShader
		 15	[  0]	JMP  	  0		2	; 	goto 18
		 16	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 17	[  0]	RET1 	  0		2	; return uv0"unknown"
		 18	[  0]	KSTR 	  0		3	; slot0 = "    extern float threshold;
		    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {
		      vec4 px = Texel(tex, tc) * color;
		      if (px.a <= threshold) discard;
		      return px;
		    }
		  "
		 19	[  0]	GGET 	  1		2	; slot1 = _env["pcall"]
		 20	[  0]	GGET 	  3		6	; slot3 = _env["love"]
		 21	[  0]	TGETS	  3	3	5	; slot3 = love.graphics
		 22	[  0]	TGETS	  3	3	4	; slot3 = love.graphics.newShader
		 23	[  0]	MOV  	  4		0	; slot4 = slot0
		 24	[  0]	CALL 	  1	3	3	; slot1, slot2 = pcall(slot2, love.graphics.newShader)
		 25	[  0]	ISF  	   		1	; if not slot1
		 26	[  0]	JMP  	  3		7	; 	goto 34
		 27	[  0]	USETV	  0		2	; uv0"unknwon" = slot2
		 28	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 29	[  0]	MOV  	  5		3	; slot5 = uv0"unknown"
		 30	[  0]	TGETS	  3	3	1	; slot3 = uv0"unknown".send
		 31	[  0]	KSTR 	  6		0	; slot6 = "threshold"
		 32	[  0]	KNUM 	  7		0	; slot7 = 0.01
		 33	[  0]	CALL 	  3	1	4	;  = uv0"unknown".send(slot4, uv0"unknown", slot6)
		 34	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 35	[  0]	RET1 	  3		2	; return uv0"unknown"
	122	[  0]	FNEW 	 33		181	; N/A:0-0: 3 args, 0 upvalues, 5 slots
		
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
	123	[  0]	FNEW 	 34		180	; N/A:0-0: 1 args, 0 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		25	; 	goto 28
		  3	[  0]	TGETS	  1	0	6	; slot1 = slot0.battle
		  4	[  0]	ISF  	   		1	; if not <unknown table>.battle
		  5	[  0]	JMP  	  2		22	; 	goto 28
		  6	[  0]	GGET 	  1		5	; slot1 = _env["tonumber"]
		  7	[  0]	TGETS	  3	0	6	; slot3 = slot0.battle
		  8	[  0]	TGETS	  3	3	4	; slot3 = <unknown table>.battle.allySize32
		  9	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		 10	[  0]	ISF  	   		1	; if not slot1
		 11	[  0]	JMP  	  2		16	; 	goto 28
		 12	[  0]	TGETS	  1	0	6	; slot1 = slot0.battle
		 13	[  0]	TGETS	  1	1	4	; slot1 = <unknown table>.battle.allySize32
		 14	[  0]	KSHORT	  2		0	; slot2 = 0
		 15	[  0]	ISGE 	  2		1	; if slot2 >= <unknown table>.battle.allySize32
		 16	[  0]	JMP  	  1		11	; 	goto 28
		 17	[  0]	GGET 	  1		3	; slot1 = _env["math"]
		 18	[  0]	TGETS	  1	1	2	; slot1 = math.max
		 19	[  0]	KSHORT	  3		1	; slot3 = 1
		 20	[  0]	GGET 	  4		3	; slot4 = _env["math"]
		 21	[  0]	TGETS	  4	4	1	; slot4 = math.floor
		 22	[  0]	TGETS	  6	0	6	; slot6 = slot0.battle
		 23	[  0]	TGETS	  6	6	4	; slot6 = <unknown table>.battle.allySize32
		 24	[  0]	DIVVN	  6	6	0	; slot6 = <unknown table>.battle.allySize32 / 32
		 25	[  0]	ADDVN	  6	6	1	; slot6 = slot6 + 0.5
		 26	[  0]	CALL 	  4	0	2	; MULTRES = math.floor(slot5)
		 27	[  0]	CALLMT	  1		1	; return math.max(, ...MULTRES)
		 28	[  0]	GGET 	  1		3	; slot1 = _env["math"]
		 29	[  0]	TGETS	  1	1	2	; slot1 = math.max
		 30	[  0]	KSHORT	  3		1	; slot3 = 1
		 31	[  0]	GGET 	  4		3	; slot4 = _env["math"]
		 32	[  0]	TGETS	  4	4	1	; slot4 = math.floor
		 33	[  0]	GGET 	  6		5	; slot6 = _env["tonumber"]
		 34	[  0]	ISFC 	  8		0	; slot8 = slot0; if not slot0
		 35	[  0]	JMP  	  8		5	; 	goto 41
		 36	[  0]	TGETS	  8	0	6	; slot8 = slot0.battle
		 37	[  0]	ISF  	   		8	; if not <unknown table>.battle
		 38	[  0]	JMP  	  9		2	; 	goto 41
		 39	[  0]	TGETS	  8	0	6	; slot8 = slot0.battle
		 40	[  0]	TGETS	  8	8	0	; slot8 = <unknown table>.battle.unitScale
		 41	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
		 42	[  0]	IST  	   		6	; if tonumber
		 43	[  0]	JMP  	  7		1	; 	goto 45
		 44	[  0]	KSHORT	  6		2	; slot6 = 2
		 45	[  0]	CALL 	  4	0	2	; MULTRES = math.floor(slot5)
		 46	[  0]	CALLMT	  1		1	; return math.max(, ...MULTRES)
	124	[  0]	KSHORT	 35		168	; slot35 = 168
	125	[  0]	FNEW 	 36		179	; N/A:0-0: 1 args, 2 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	CALL 	  1	1	1	;  = uv0"unknown"()
		  3	[  0]	ISF  	   		0	; if not slot0
		  4	[  0]	JMP  	  1		7	; 	goto 12
		  5	[  0]	TGETS	  1	0	5	; slot1 = slot0.classCard
		  6	[  0]	ISF  	   		1	; if not <unknown table>.classCard
		  7	[  0]	JMP  	  2		4	; 	goto 12
		  8	[  0]	TGETS	  1	0	5	; slot1 = slot0.classCard
		  9	[  0]	TGETS	  1	1	4	; slot1 = <unknown table>.classCard.font
		 10	[  0]	IST  	   		1	; if <unknown table>.classCard.font
		 11	[  0]	JMP  	  2		19	; 	goto 31
		 12	[  0]	ISF  	   		0	; if not slot0
		 13	[  0]	JMP  	  1		3	; 	goto 17
		 14	[  0]	TGETS	  1	0	3	; slot1 = slot0.fontClassCard
		 15	[  0]	IST  	   		1	; if <unknown table>.fontClassCard
		 16	[  0]	JMP  	  2		14	; 	goto 31
		 17	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 18	[  0]	IST  	   		1	; if uv1"unknown"
		 19	[  0]	JMP  	  2		11	; 	goto 31
		 20	[  0]	GGET 	  1		2	; slot1 = _env["love"]
		 21	[  0]	ISF  	   		1	; if not love
		 22	[  0]	JMP  	  2		8	; 	goto 31
		 23	[  0]	GGET 	  1		2	; slot1 = _env["love"]
		 24	[  0]	TGETS	  1	1	1	; slot1 = love.graphics
		 25	[  0]	ISF  	   		1	; if not love.graphics
		 26	[  0]	JMP  	  2		4	; 	goto 31
		 27	[  0]	GGET 	  1		2	; slot1 = _env["love"]
		 28	[  0]	TGETS	  1	1	1	; slot1 = love.graphics
		 29	[  0]	TGETS	  1	1	0	; slot1 = love.graphics.getFont
		 30	[  0]	CALL 	  1	2	1	; slot1 = love.graphics.getFont()
		 31	[  0]	RET1 	  1		2	; return slot1
	126	[  0]	FNEW 	 37		178	; N/A:0-0: 2 args, 1 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			]
		
		
		ktable#2 = [
			]
		
		
		ktable#4 = [
			]
		
		
		ktable#13 = [
			]
		
		
		ktable#17 = [
			[text] = SlotBound,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		1	; if slot1
		  2	[  0]	JMP  	  2		1	; 	goto 4
		  3	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  4	[  0]	GGET 	  2		20	; slot2 = _env["_G"]
		  5	[  0]	TGETS	  2	2	19	; slot2 = _G.currentGameLang
		  6	[  0]	IST  	   		2	; if _G.currentGameLang
		  7	[  0]	JMP  	  3		1	; 	goto 9
		  8	[  0]	KSTR 	  2		18	; slot2 = "ko"
		  9	[  0]	ISNEN	  0		0	; if slot0 ~= 1
		 10	[  0]	JMP  	  3		12	; 	goto 23
		 11	[  0]	TNEW 	  3		3	; slot3 = new table( array: 3, dict: 1)
		 12	[  0]	TDUP 	  4		17	; slot4 = copy table#k17
		 13	[  0]	TGETS	  5	1	16	; slot5 = slot1.brand
		 14	[  0]	TSETS	  5	4	15	; slot4.color = <unknown table>.brand
		 15	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
		 16	[  0]	TDUP 	  4		13	; slot4 = copy table#k13
		 17	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 18	[  0]	KSTR 	  7		14	; slot7 = "welcome_suffix"
		 19	[  0]	CALL 	  5	2	2	; slot5 = uv0"unknown"(slot6)
		 20	[  0]	TSETS	  5	4	12	; slot4.text = uv0"unknown"
		 21	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
		 22	[  0]	RET1 	  3		2	; return slot3
		 23	[  0]	KPRI 	  3		0	; slot3 = nil
		 24	[  0]	ISNEN	  0		1	; if slot0 ~= 2
		 25	[  0]	JMP  	  4		6	; 	goto 32
		 26	[  0]	ISNES	  2		11	; if slot2 ~= "ja"
		 27	[  0]	JMP  	  4		2	; 	goto 30
		 28	[  0]	KSTR 	  3		10	; slot3 = "、"
		 29	[  0]	JMP  	  4		1	; 	goto 31
		 30	[  0]	KSTR 	  3		9	; slot3 = ","
		 31	[  0]	JMP  	  4		5	; 	goto 37
		 32	[  0]	ISNES	  2		11	; if slot2 ~= "ja"
		 33	[  0]	JMP  	  4		2	; 	goto 36
		 34	[  0]	KSTR 	  3		8	; slot3 = "。"
		 35	[  0]	JMP  	  4		1	; 	goto 37
		 36	[  0]	KSTR 	  3		7	; slot3 = "."
		 37	[  0]	TNEW 	  4		4	; slot4 = new table( array: 4, dict: 1)
		 38	[  0]	TDUP 	  5		4	; slot5 = copy table#k4
		 39	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 40	[  0]	KSTR 	  8		6	; slot8 = "welcome_body_"
		 41	[  0]	SUBVN	  9	0	0	; slot9 = slot0 - 1
		 42	[  0]	KSTR 	 10		5	; slot10 = "_prefix"
		 43	[  0]	CAT  	  8	8	10	; slot8 = slot8 .. slot9 .. slot10
		 44	[  0]	CALL 	  6	2	2	; slot6 = uv0"unknown"(slot7)
		 45	[  0]	TSETS	  6	5	12	; slot5.text = uv0"unknown"
		 46	[  0]	TSETB	  5	4	1	; slot4[1] = slot5
		 47	[  0]	TDUP 	  5		2	; slot5 = copy table#k2
		 48	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 49	[  0]	KSTR 	  8		6	; slot8 = "welcome_body_"
		 50	[  0]	SUBVN	  9	0	0	; slot9 = slot0 - 1
		 51	[  0]	KSTR 	 10		3	; slot10 = "_keyword"
		 52	[  0]	CAT  	  8	8	10	; slot8 = slot8 .. slot9 .. slot10
		 53	[  0]	CALL 	  6	2	2	; slot6 = uv0"unknown"(slot7)
		 54	[  0]	TSETS	  6	5	12	; slot5.text = uv0"unknown"
		 55	[  0]	TGETS	  6	1	1	; slot6 = slot1.keyword
		 56	[  0]	TSETS	  6	5	15	; slot5.color = <unknown table>.keyword
		 57	[  0]	TSETB	  5	4	2	; slot4[2] = slot5
		 58	[  0]	TDUP 	  5		0	; slot5 = copy table#k0
		 59	[  0]	TSETS	  3	5	12	; slot5.text = slot3
		 60	[  0]	TSETB	  5	4	3	; slot4[3] = slot5
		 61	[  0]	RET1 	  4		2	; return slot4
	127	[  0]	FNEW 	 38		177	; N/A:0-0: 3 args, 0 upvalues, 25 slots
		
		;;;; constant tables ;;;;
		ktable#1 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		  2	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		  3	[  0]	KSHORT	  5		0	; slot5 = 0
		  4	[  0]	FNEW 	  6		12	; N/A:0-0: 0 args, 3 upvalues, 6 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	LEN  	  0		0	; slot0 = #uv0"unknown"
			  3	[  0]	KSHORT	  1		0	; slot1 = 0
			  4	[  0]	ISGE 	  1		0	; if slot1 >= slot0
			  5	[  0]	JMP  	  0		21	; 	goto 27
			  6	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  7	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  8	[  0]	LEN  	  1		1	; slot1 = #uv0"unknown"
			  9	[  0]	TGETV	  0	0	1	; slot0 = uv0"unknown"[slot1]
			 10	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			 11	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			 12	[  0]	LEN  	  2		2	; slot2 = #uv0"unknown"
			 13	[  0]	TGETV	  1	1	2	; slot1 = uv0"unknown"[slot2]
			 14	[  0]	TGETS	  1	1	3	; slot1 = slot1.text
			 15	[  0]	MOV  	  3		1	; slot3 = <unknown table>.text
			 16	[  0]	TGETS	  1	1	2	; slot1 = <unknown table>.text.gsub
			 17	[  0]	KSTR 	  4		1	; slot4 = "%s+$"
			 18	[  0]	KSTR 	  5		0	; slot5 = ""
			 19	[  0]	CALL 	  1	2	4	; slot1 = <unknown table>.text.gsub(slot2, <unknown table>.text, slot4)
			 20	[  0]	TSETS	  1	0	3	; slot0.text = slot1
			 21	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
			 22	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			 23	[  0]	LEN  	  1		1	; slot1 = #uv1"unknown"
			 24	[  0]	ADDVN	  1	1	0	; slot1 = slot1 + 1
			 25	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			 26	[  0]	TSETV	  2	0	1	; uv1"unknown"[slot1] = uv0"unknown"
			 27	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
			 28	[  0]	USETN	  2		1	; uv2"unknwon" = 0
			 29	[  0]	USETV	  0		0	; uv0"unknwon" = slot0
			 30	[  0]	RET0 	  0		1	; return
		  5	[  0]	GGET 	  7		11	; slot7 = _env["ipairs"]
		  6	[  0]	MOV  	  9		1	; slot9 = slot1
		  7	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = ipairs(slot8)
		  8	[  0]	JMP  	 10		58	; 	goto 67
		  9	[  0]	GGET 	 12		10	; slot12 = _env["tostring"]
		 10	[  0]	TGETS	 14	11	9	; slot14 = slot11.text
		 11	[  0]	IST  	   		14	; if <unknown table>.text
		 12	[  0]	JMP  	 15		1	; 	goto 14
		 13	[  0]	KSTR 	 14		8	; slot14 = ""
		 14	[  0]	CALL 	 12	2	2	; slot12 = tostring(slot13)
		 15	[  0]	MOV  	 14		12	; slot14 = tostring
		 16	[  0]	TGETS	 12	12	7	; slot12 = tostring.gmatch
		 17	[  0]	KSTR 	 15		6	; slot15 = "%s*%S+%s*"
		 18	[  0]	CALL 	 12	4	3	; slot12, slot13, slot14 = tostring.gmatch(slot13, tostring)
		 19	[  0]	JMP  	 15		45	; 	goto 65
		 20	[  0]	MOV  	 16		15	; slot16 = slot15
		 21	[  0]	LEN  	 17		4	; slot17 = #slot4
		 22	[  0]	ISNEN	 17		0	; if slot17 ~= 0
		 23	[  0]	JMP  	 17		6	; 	goto 30
		 24	[  0]	MOV  	 19		16	; slot19 = slot16
		 25	[  0]	TGETS	 17	16	5	; slot17 = slot16.gsub
		 26	[  0]	KSTR 	 20		4	; slot20 = "^%s+"
		 27	[  0]	KSTR 	 21		8	; slot21 = ""
		 28	[  0]	CALL 	 17	2	4	; slot17 = <unknown table>.gsub(slot18, slot19, slot20)
		 29	[  0]	MOV  	 16		17	; slot16 = <unknown table>.gsub
		 30	[  0]	LEN  	 17		4	; slot17 = #slot4
		 31	[  0]	KSHORT	 18		0	; slot18 = 0
		 32	[  0]	ISGE 	 18		17	; if slot18 >= slot17
		 33	[  0]	JMP  	 17		19	; 	goto 53
		 34	[  0]	MOV  	 19		0	; slot19 = slot0
		 35	[  0]	TGETS	 17	0	3	; slot17 = slot0.getWidth
		 36	[  0]	MOV  	 22		16	; slot22 = <unknown table>.gsub
		 37	[  0]	TGETS	 20	16	5	; slot20 = <unknown table>.gsub.gsub
		 38	[  0]	KSTR 	 23		2	; slot23 = "%s+$"
		 39	[  0]	KSTR 	 24		8	; slot24 = ""
		 40	[  0]	CALL 	 20	2	4	; slot20 = <unknown table>.gsub.gsub(slot21, <unknown table>.gsub, slot23)
		 41	[  0]	CALL 	 17	2	3	; slot17 = <unknown table>.getWidth(slot18, slot19)
		 42	[  0]	ADDVV	 17	5	17	; slot17 = slot5 + <unknown table>.getWidth
		 43	[  0]	ISGE 	  2		17	; if slot2 >= slot17
		 44	[  0]	JMP  	 17		8	; 	goto 53
		 45	[  0]	MOV  	 17		6	; slot17 = slot6
		 46	[  0]	CALL 	 17	1	1	;  = slot17()
		 47	[  0]	MOV  	 19		15	; slot19 = slot15
		 48	[  0]	TGETS	 17	15	5	; slot17 = slot15.gsub
		 49	[  0]	KSTR 	 20		4	; slot20 = "^%s+"
		 50	[  0]	KSTR 	 21		8	; slot21 = ""
		 51	[  0]	CALL 	 17	2	4	; slot17 = <unknown table>.gsub(slot18, slot19, slot20)
		 52	[  0]	MOV  	 16		17	; slot16 = <unknown table>.gsub
		 53	[  0]	LEN  	 17		4	; slot17 = #slot4
		 54	[  0]	ADDVN	 17	17	1	; slot17 = slot17 + 1
		 55	[  0]	TDUP 	 18		1	; slot18 = copy table#k1
		 56	[  0]	TSETS	 16	18	9	; slot18.text = <unknown table>.gsub
		 57	[  0]	TGETS	 19	11	0	; slot19 = slot11.color
		 58	[  0]	TSETS	 19	18	0	; slot18.color = <unknown table>.color
		 59	[  0]	TSETV	 18	4	17	; slot4[slot17] = slot18
		 60	[  0]	MOV  	 19		0	; slot19 = slot0
		 61	[  0]	TGETS	 17	0	3	; slot17 = slot0.getWidth
		 62	[  0]	MOV  	 20		16	; slot20 = <unknown table>.gsub
		 63	[  0]	CALL 	 17	2	3	; slot17 = <unknown table>.getWidth(slot18, slot19)
		 64	[  0]	ADDVV	  5	5	17	; slot5 = slot5 + <unknown table>.getWidth
		 65	[  0]	ITERC	 15	2	3	; slot15, slot16, slot17 = tostring.gmatch, slot13, tostring; slot15 = tostring.gmatch(slot13, tostring)
		 66	[  0]	ITERL	 15		-47	; tostring = slot15; if slot15 != nil goto 20
		 67	[  0]	ITERC	 10	3	3	; slot10, slot11, slot12 = ipairs, slot8, slot9; slot10, slot11 = ipairs(slot8, slot9)
		 68	[  0]	ITERL	 10		-60	; slot9 = slot10; if slot10 != nil goto 9
		 69	[  0]	MOV  	  7		6	; slot7 = slot6
		 70	[  0]	CALL 	  7	1	1	;  = slot7()
		 71	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 72
		 72	[  0]	RET1 	  3		2	; return slot3
	128	[  0]	TNEW 	 39		0	; slot39 = new table( array: 0, dict: 1)
	129	[  0]	FNEW 	 40		176	; N/A:0-0: 5 args, 1 upvalues, 20 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISTC 	  5		4	; slot5 = slot4; if slot4
		  2	[  0]	JMP  	  5		1	; 	goto 4
		  3	[  0]	KSHORT	  5		0	; slot5 = 0
		  4	[  0]	KSHORT	  6		0	; slot6 = 0
		  5	[  0]	ISGT 	  5		6	; if slot5 > slot6
		  6	[  0]	JMP  	  5		11	; 	goto 18
		  7	[  0]	GGET 	  5		6	; slot5 = _env["love"]
		  8	[  0]	TGETS	  5	5	5	; slot5 = love.graphics
		  9	[  0]	TGETS	  5	5	4	; slot5 = love.graphics.draw
		 10	[  0]	MOV  	  7		0	; slot7 = slot0
		 11	[  0]	MOV  	  8		1	; slot8 = slot1
		 12	[  0]	MOV  	  9		2	; slot9 = slot2
		 13	[  0]	KSHORT	 10		0	; slot10 = 0
		 14	[  0]	MOV  	 11		3	; slot11 = slot3
		 15	[  0]	MOV  	 12		3	; slot12 = slot3
		 16	[  0]	CALL 	  5	1	7	;  = love.graphics.draw(slot6, slot7, slot8, slot9, slot10, slot11)
		 17	[  0]	UCLO 	  0		65	; nil uvs >= r0; goto 83
		 18	[  0]	MOV  	  7		0	; slot7 = slot0
		 19	[  0]	TGETS	  5	0	3	; slot5 = slot0.getDimensions
		 20	[  0]	CALL 	  5	3	2	; slot5, slot6 = <unknown table>.getDimensions(slot6)
		 21	[  0]	FNEW 	  7		2	; N/A:0-0: 2 args, 3 upvalues, 12 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	MULVN	  2	0	0	; slot2 = slot0 * 1000
			  2	[  0]	ADDVV	  2	2	1	; slot2 = slot2 + slot1
			  3	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			  4	[  0]	TGETV	  3	3	2	; slot3 = uv0"unknown"[slot2]
			  5	[  0]	IST  	   		3	; if slot3
			  6	[  0]	JMP  	  3		12	; 	goto 19
			  7	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			  8	[  0]	GGET 	  4		2	; slot4 = _env["love"]
			  9	[  0]	TGETS	  4	4	1	; slot4 = love.graphics
			 10	[  0]	TGETS	  4	4	0	; slot4 = love.graphics.newQuad
			 11	[  0]	KSHORT	  6		0	; slot6 = 0
			 12	[  0]	MOV  	  7		0	; slot7 = slot0
			 13	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
			 14	[  0]	MOV  	  9		1	; slot9 = slot1
			 15	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
			 16	[  0]	UGET 	 11		2	; slot11 = uv2"unknwon"
			 17	[  0]	CALL 	  4	2	7	; slot4 = love.graphics.newQuad(slot5, slot6, slot7, uv1"unknown", slot9, uv1"unknown")
			 18	[  0]	TSETV	  4	3	2	; uv0"unknown"[slot2] = slot4
			 19	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			 20	[  0]	TGETV	  3	3	2	; slot3 = uv0"unknown"[slot2]
			 21	[  0]	RET1 	  3		2	; return slot3
		 22	[  0]	GGET 	  8		6	; slot8 = _env["love"]
		 23	[  0]	TGETS	  8	8	5	; slot8 = love.graphics
		 24	[  0]	TGETS	  8	8	4	; slot8 = love.graphics.draw
		 25	[  0]	MOV  	 10		0	; slot10 = slot0
		 26	[  0]	MOV  	 11		7	; slot11 = slot7
		 27	[  0]	KSHORT	 13		0	; slot13 = 0
		 28	[  0]	KSHORT	 14		37	; slot14 = 37
		 29	[  0]	CALL 	 11	2	3	; slot11 = slot11(slot12, slot13)
		 30	[  0]	MOV  	 12		1	; slot12 = slot1
		 31	[  0]	MOV  	 13		2	; slot13 = slot2
		 32	[  0]	KSHORT	 14		0	; slot14 = 0
		 33	[  0]	MOV  	 15		3	; slot15 = slot3
		 34	[  0]	MOV  	 16		3	; slot16 = slot3
		 35	[  0]	CALL 	  8	1	8	;  = love.graphics.draw(slot9, slot10, slot11, slot12, slot13, slot14, slot15)
		 36	[  0]	MULNV	  8	3	0	; slot8 = 37 * slot3
		 37	[  0]	ADDVV	  8	2	8	; slot8 = slot2 + slot8
		 38	[  0]	MOV  	  9		4	; slot9 = slot4
		 39	[  0]	KSHORT	 10		0	; slot10 = 0
		 40	[  0]	ISGE 	 10		9	; if slot10 >= slot9
		 41	[  0]	JMP  	 10		25	; 	goto 67
		 42	[  0]	LOOP 	 10		24	; Loop start, exit goto 67
		 43	[  0]	GGET 	 10		1	; slot10 = _env["math"]
		 44	[  0]	TGETS	 10	10	0	; slot10 = math.min
		 45	[  0]	KSHORT	 12		3	; slot12 = 3
		 46	[  0]	MOV  	 13		9	; slot13 = slot9
		 47	[  0]	CALL 	 10	2	3	; slot10 = math.min(slot11, slot12)
		 48	[  0]	GGET 	 11		6	; slot11 = _env["love"]
		 49	[  0]	TGETS	 11	11	5	; slot11 = love.graphics
		 50	[  0]	TGETS	 11	11	4	; slot11 = love.graphics.draw
		 51	[  0]	MOV  	 13		0	; slot13 = slot0
		 52	[  0]	MOV  	 14		7	; slot14 = slot7
		 53	[  0]	KSHORT	 16		34	; slot16 = 34
		 54	[  0]	MOV  	 17		10	; slot17 = math.min
		 55	[  0]	CALL 	 14	2	3	; slot14 = slot14(slot15, slot16)
		 56	[  0]	MOV  	 15		1	; slot15 = slot1
		 57	[  0]	MOV  	 16		8	; slot16 = slot8
		 58	[  0]	KSHORT	 17		0	; slot17 = 0
		 59	[  0]	MOV  	 18		3	; slot18 = slot3
		 60	[  0]	MOV  	 19		3	; slot19 = slot3
		 61	[  0]	CALL 	 11	1	8	;  = love.graphics.draw(slot12, slot13, slot14, slot15, slot16, slot17, slot18)
		 62	[  0]	MULVV	 11	10	3	; slot11 = math.min * slot3
		 63	[  0]	ADDVV	 11	8	11	; slot11 = slot8 + slot11
		 64	[  0]	SUBVV	  9	9	10	; slot9 = slot9 - math.min
		 65	[  0]	MOV  	  8		11	; slot8 = slot11
		 66	[  0]	JMP  	 10		-28	; 	goto 39
		 67	[  0]	GGET 	 10		6	; slot10 = _env["love"]
		 68	[  0]	TGETS	 10	10	5	; slot10 = love.graphics
		 69	[  0]	TGETS	 10	10	4	; slot10 = love.graphics.draw
		 70	[  0]	MOV  	 12		0	; slot12 = slot0
		 71	[  0]	MOV  	 13		7	; slot13 = slot7
		 72	[  0]	KSHORT	 15		37	; slot15 = 37
		 73	[  0]	SUBVN	 16	6	0	; slot16 = slot6 - 37
		 74	[  0]	CALL 	 13	2	3	; slot13 = slot13(slot14, slot15)
		 75	[  0]	MOV  	 14		1	; slot14 = slot1
		 76	[  0]	MOV  	 15		8	; slot15 = slot8
		 77	[  0]	KSHORT	 16		0	; slot16 = 0
		 78	[  0]	MOV  	 17		3	; slot17 = slot3
		 79	[  0]	MOV  	 18		3	; slot18 = slot3
		 80	[  0]	CALL 	 10	1	8	;  = love.graphics.draw(slot11, slot12, slot13, slot14, slot15, slot16, slot17)
		 81	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 82
		 82	[  0]	RET0 	  0		1	; return
		 83	[  0]	RET0 	  0		1	; return
	130	[  0]	FNEW 	 41		175	; N/A:0-0: 1 args, 8 upvalues, 28 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			]
		
		
		ktable#1 = [
			]
		
		
		ktable#10 = [
			]
		
		
		ktable#11 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		7	; 	goto 10
		  3	[  0]	TGETS	  1	0	35	; slot1 = slot0.virtual
		  4	[  0]	ISF  	   		1	; if not <unknown table>.virtual
		  5	[  0]	JMP  	  2		4	; 	goto 10
		  6	[  0]	TGETS	  1	0	35	; slot1 = slot0.virtual
		  7	[  0]	TGETS	  1	1	34	; slot1 = <unknown table>.virtual.W
		  8	[  0]	IST  	   		1	; if <unknown table>.virtual.W
		  9	[  0]	JMP  	  2		1	; 	goto 11
		 10	[  0]	KSHORT	  1		640	; slot1 = 640
		 11	[  0]	ISF  	   		0	; if not slot0
		 12	[  0]	JMP  	  2		7	; 	goto 20
		 13	[  0]	TGETS	  2	0	35	; slot2 = slot0.virtual
		 14	[  0]	ISF  	   		2	; if not <unknown table>.virtual
		 15	[  0]	JMP  	  3		4	; 	goto 20
		 16	[  0]	TGETS	  2	0	35	; slot2 = slot0.virtual
		 17	[  0]	TGETS	  2	2	33	; slot2 = <unknown table>.virtual.H
		 18	[  0]	IST  	   		2	; if <unknown table>.virtual.H
		 19	[  0]	JMP  	  3		1	; 	goto 21
		 20	[  0]	KSHORT	  2		360	; slot2 = 360
		 21	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 22	[  0]	MOV  	  5		0	; slot5 = slot0
		 23	[  0]	CALL 	  3	2	2	; slot3 = uv0"unknown"(slot4)
		 24	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 25	[  0]	CALL 	  4	2	1	; slot4 = uv1"unknown"()
		 26	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 27	[  0]	CALL 	  5	2	1	; slot5 = uv2"unknown"()
		 28	[  0]	ISF  	   		4	; if not uv1"unknown"
		 29	[  0]	JMP  	  6		5	; 	goto 35
		 30	[  0]	MOV  	  8		4	; slot8 = uv1"unknown"
		 31	[  0]	TGETS	  6	4	32	; slot6 = uv1"unknown".getWidth
		 32	[  0]	CALL 	  6	2	2	; slot6 = uv1"unknown".getWidth(slot7)
		 33	[  0]	IST  	   		6	; if uv1"unknown".getWidth
		 34	[  0]	JMP  	  7		1	; 	goto 36
		 35	[  0]	KSHORT	  6		107	; slot6 = 107
		 36	[  0]	MULVV	  6	6	3	; slot6 = slot6 * uv0"unknown"
		 37	[  0]	ISF  	   		4	; if not uv1"unknown"
		 38	[  0]	JMP  	  7		5	; 	goto 44
		 39	[  0]	MOV  	  9		4	; slot9 = uv1"unknown"
		 40	[  0]	TGETS	  7	4	31	; slot7 = uv1"unknown".getHeight
		 41	[  0]	CALL 	  7	2	2	; slot7 = uv1"unknown".getHeight(uv1"unknown")
		 42	[  0]	IST  	   		7	; if uv1"unknown".getHeight
		 43	[  0]	JMP  	  8		1	; 	goto 45
		 44	[  0]	KSHORT	  7		109	; slot7 = 109
		 45	[  0]	MULVV	  7	7	3	; slot7 = slot7 * uv0"unknown"
		 46	[  0]	ISF  	   		0	; if not slot0
		 47	[  0]	JMP  	  8		12	; 	goto 60
		 48	[  0]	TGETS	  8	0	30	; slot8 = slot0.coreSelect
		 49	[  0]	ISF  	   		8	; if not <unknown table>.coreSelect
		 50	[  0]	JMP  	  9		9	; 	goto 60
		 51	[  0]	TGETS	  8	0	30	; slot8 = slot0.coreSelect
		 52	[  0]	TGETS	  8	8	29	; slot8 = <unknown table>.coreSelect.buttons
		 53	[  0]	ISF  	   		8	; if not <unknown table>.coreSelect.buttons
		 54	[  0]	JMP  	  9		5	; 	goto 60
		 55	[  0]	TGETS	  8	0	30	; slot8 = slot0.coreSelect
		 56	[  0]	TGETS	  8	8	29	; slot8 = <unknown table>.coreSelect.buttons
		 57	[  0]	TGETS	  8	8	28	; slot8 = <unknown table>.coreSelect.buttons.scale
		 58	[  0]	IST  	   		8	; if <unknown table>.coreSelect.buttons.scale
		 59	[  0]	JMP  	  9		1	; 	goto 61
		 60	[  0]	KSHORT	  8		2	; slot8 = 2
		 61	[  0]	UGET 	  9		3	; slot9 = uv3"unknwon"
		 62	[  0]	MOV  	 11		0	; slot11 = slot0
		 63	[  0]	CALL 	  9	2	2	; slot9 = uv3"unknown"(slot10)
		 64	[  0]	ISF  	   		0	; if not slot0
		 65	[  0]	JMP  	 10		7	; 	goto 73
		 66	[  0]	TGETS	 10	0	27	; slot10 = slot0.tutorial
		 67	[  0]	ISF  	   		10	; if not <unknown table>.tutorial
		 68	[  0]	JMP  	 11		4	; 	goto 73
		 69	[  0]	TGETS	 10	0	27	; slot10 = slot0.tutorial
		 70	[  0]	TGETS	 10	10	26	; slot10 = <unknown table>.tutorial.bodyLines
		 71	[  0]	IST  	   		10	; if <unknown table>.tutorial.bodyLines
		 72	[  0]	JMP  	 11		1	; 	goto 74
		 73	[  0]	TNEW 	 10		0	; slot10 = new table( array: 0, dict: 1)
		 74	[  0]	GGET 	 11		25	; slot11 = _env["tonumber"]
		 75	[  0]	TGETB	 13	10	2	; slot13 = slot10[2]
		 76	[  0]	IST  	   		13	; if slot13
		 77	[  0]	JMP  	 14		1	; 	goto 79
		 78	[  0]	TNEW 	 13		0	; slot13 = new table( array: 0, dict: 1)
		 79	[  0]	TGETS	 13	13	24	; slot13 = slot13.offsetY
		 80	[  0]	CALL 	 11	2	2	; slot11 = tonumber(slot12)
		 81	[  0]	IST  	   		11	; if tonumber
		 82	[  0]	JMP  	 12		1	; 	goto 84
		 83	[  0]	KSHORT	 11		61	; slot11 = 61
		 84	[  0]	GGET 	 12		25	; slot12 = _env["tonumber"]
		 85	[  0]	TGETB	 14	10	3	; slot14 = slot10[3]
		 86	[  0]	IST  	   		14	; if slot14
		 87	[  0]	JMP  	 15		1	; 	goto 89
		 88	[  0]	TNEW 	 14		0	; slot14 = new table( array: 0, dict: 1)
		 89	[  0]	TGETS	 14	14	24	; slot14 = slot14.offsetY
		 90	[  0]	CALL 	 12	2	2	; slot12 = tonumber(<unknown table>.offsetY)
		 91	[  0]	IST  	   		12	; if tonumber
		 92	[  0]	JMP  	 13		1	; 	goto 94
		 93	[  0]	KSHORT	 12		77	; slot12 = 77
		 94	[  0]	SUBVV	 12	12	11	; slot12 = slot12 - slot11
		 95	[  0]	KSHORT	 13		2	; slot13 = 2
		 96	[  0]	KSHORT	 14		0	; slot14 = 0
		 97	[  0]	ISF  	   		9	; if not uv3"unknown"
		 98	[  0]	JMP  	 15		57	; 	goto 156
		 99	[  0]	UGET 	 15		4	; slot15 = uv4"unknwon"
		100	[  0]	MOV  	 17		9	; slot17 = uv3"unknown"
		101	[  0]	UGET 	 18		5	; slot18 = uv5"unknwon"
		102	[  0]	KSHORT	 20		2	; slot20 = 2
		103	[  0]	CALL 	 18	2	2	; slot18 = uv5"unknown"(slot19)
		104	[  0]	UGET 	 19		6	; slot19 = uv6"unknwon"
		105	[  0]	CALL 	 15	2	4	; slot15 = uv4"unknown"(slot16, uv3"unknown", uv5"unknown")
		106	[  0]	LEN  	 15		15	; slot15 = #uv4"unknown"
		107	[  0]	UGET 	 16		4	; slot16 = uv4"unknwon"
		108	[  0]	MOV  	 18		9	; slot18 = uv3"unknown"
		109	[  0]	UGET 	 19		5	; slot19 = uv5"unknwon"
		110	[  0]	KSHORT	 21		3	; slot21 = 3
		111	[  0]	CALL 	 19	2	2	; slot19 = uv5"unknown"(slot20)
		112	[  0]	UGET 	 20		6	; slot20 = uv6"unknwon"
		113	[  0]	CALL 	 16	2	4	; slot16 = uv4"unknown"(uv3"unknown", uv3"unknown", uv5"unknown")
		114	[  0]	LEN  	 16		16	; slot16 = #uv4"unknown"
		115	[  0]	ADDVV	 13	15	16	; slot13 = slot15 + slot16
		116	[  0]	ISF  	   		0	; if not slot0
		117	[  0]	JMP  	 15		12	; 	goto 130
		118	[  0]	TGETS	 15	0	30	; slot15 = slot0.coreSelect
		119	[  0]	ISF  	   		15	; if not <unknown table>.coreSelect
		120	[  0]	JMP  	 16		9	; 	goto 130
		121	[  0]	TGETS	 15	0	30	; slot15 = slot0.coreSelect
		122	[  0]	TGETS	 15	15	29	; slot15 = <unknown table>.coreSelect.buttons
		123	[  0]	ISF  	   		15	; if not <unknown table>.coreSelect.buttons
		124	[  0]	JMP  	 16		5	; 	goto 130
		125	[  0]	TGETS	 15	0	30	; slot15 = slot0.coreSelect
		126	[  0]	TGETS	 15	15	29	; slot15 = <unknown table>.coreSelect.buttons
		127	[  0]	TGETS	 15	15	23	; slot15 = <unknown table>.coreSelect.buttons.labelScale
		128	[  0]	IST  	   		15	; if <unknown table>.coreSelect.buttons.labelScale
		129	[  0]	JMP  	 16		1	; 	goto 131
		130	[  0]	KSHORT	 15		1	; slot15 = 1
		131	[  0]	GGET 	 16		22	; slot16 = _env["math"]
		132	[  0]	TGETS	 16	16	21	; slot16 = math.max
		133	[  0]	MOV  	 20		9	; slot20 = uv3"unknown"
		134	[  0]	TGETS	 18	9	32	; slot18 = uv3"unknown".getWidth
		135	[  0]	UGET 	 21		7	; slot21 = uv7"unknwon"
		136	[  0]	KSTR 	 23		20	; slot23 = "start"
		137	[  0]	CALL 	 21	0	2	; MULTRES = uv7"unknown"(slot22)
		138	[  0]	CALLM	 18	2	1	; slot18 = uv3"unknown".getWidth(uv5"unknown", ...MULTRES)
		139	[  0]	MOV  	 21		9	; slot21 = uv3"unknown"
		140	[  0]	TGETS	 19	9	32	; slot19 = uv3"unknown".getWidth
		141	[  0]	UGET 	 22		7	; slot22 = uv7"unknwon"
		142	[  0]	KSTR 	 24		19	; slot24 = "skip"
		143	[  0]	CALL 	 22	0	2	; MULTRES = uv7"unknown"(slot23)
		144	[  0]	CALLM	 19	0	1	; MULTRES = uv3"unknown".getWidth(uv3"unknown", ...MULTRES)
		145	[  0]	CALLM	 16	2	1	; slot16 = math.max(uv3"unknown", ...MULTRES)
		146	[  0]	MULVV	 16	16	15	; slot16 = math.max * slot15
		147	[  0]	GGET 	 17		18	; slot17 = _env["require"]
		148	[  0]	KSTR 	 19		17	; slot19 = "src.ui.widgets"
		149	[  0]	CALL 	 17	2	2	; slot17 = require(uv3"unknown".getWidth)
		150	[  0]	TGETS	 17	17	16	; slot17 = require.core_button
		151	[  0]	TGETS	 17	17	15	; slot17 = require.core_button.extraFor
		152	[  0]	MOV  	 19		16	; slot19 = slot16
		153	[  0]	MOV  	 20		8	; slot20 = slot8
		154	[  0]	CALL 	 17	2	3	; slot17 = require.core_button.extraFor(uv3"unknown".getWidth, slot19)
		155	[  0]	MOV  	 14		17	; slot14 = require.core_button.extraFor
		156	[  0]	GGET 	 15		22	; slot15 = _env["math"]
		157	[  0]	TGETS	 15	15	14	; slot15 = math.ceil
		158	[  0]	GGET 	 17		22	; slot17 = _env["math"]
		159	[  0]	TGETS	 17	17	21	; slot17 = math.max
		160	[  0]	KSHORT	 19		0	; slot19 = 0
		161	[  0]	SUBVN	 20	13	0	; slot20 = slot13 - 2
		162	[  0]	CALL 	 17	2	3	; slot17 = math.max(uv3"unknown".getWidth, slot19)
		163	[  0]	MULVV	 17	17	12	; slot17 = math.max * slot12
		164	[  0]	DIVVV	 17	17	3	; slot17 = slot17 / uv0"unknown"
		165	[  0]	CALL 	 15	2	2	; slot15 = math.ceil(slot16)
		166	[  0]	MULVV	 16	15	3	; slot16 = math.ceil * uv0"unknown"
		167	[  0]	ADDVV	  7	7	16	; slot7 = slot7 + slot16
		168	[  0]	ISF  	   		5	; if not uv2"unknown"
		169	[  0]	JMP  	 16		5	; 	goto 175
		170	[  0]	MOV  	 18		5	; slot18 = uv2"unknown"
		171	[  0]	TGETS	 16	5	32	; slot16 = uv2"unknown".getWidth
		172	[  0]	CALL 	 16	2	2	; slot16 = uv2"unknown".getWidth(slot17)
		173	[  0]	IST  	   		16	; if uv2"unknown".getWidth
		174	[  0]	JMP  	 17		1	; 	goto 176
		175	[  0]	KSHORT	 16		64	; slot16 = 64
		176	[  0]	ADDVV	 16	16	14	; slot16 = slot16 + require.core_button.extraFor
		177	[  0]	MULVV	 16	16	8	; slot16 = slot16 * slot8
		178	[  0]	ISF  	   		5	; if not uv2"unknown"
		179	[  0]	JMP  	 17		5	; 	goto 185
		180	[  0]	MOV  	 19		5	; slot19 = uv2"unknown"
		181	[  0]	TGETS	 17	5	31	; slot17 = uv2"unknown".getHeight
		182	[  0]	CALL 	 17	2	2	; slot17 = uv2"unknown".getHeight(uv2"unknown")
		183	[  0]	IST  	   		17	; if uv2"unknown".getHeight
		184	[  0]	JMP  	 18		1	; 	goto 186
		185	[  0]	KSHORT	 17		16	; slot17 = 16
		186	[  0]	MULVV	 17	17	8	; slot17 = slot17 * slot8
		187	[  0]	ISF  	   		0	; if not slot0
		188	[  0]	JMP  	 18		12	; 	goto 201
		189	[  0]	TGETS	 18	0	30	; slot18 = slot0.coreSelect
		190	[  0]	ISF  	   		18	; if not <unknown table>.coreSelect
		191	[  0]	JMP  	 19		9	; 	goto 201
		192	[  0]	TGETS	 18	0	30	; slot18 = slot0.coreSelect
		193	[  0]	TGETS	 18	18	29	; slot18 = <unknown table>.coreSelect.buttons
		194	[  0]	ISF  	   		18	; if not <unknown table>.coreSelect.buttons
		195	[  0]	JMP  	 19		5	; 	goto 201
		196	[  0]	TGETS	 18	0	30	; slot18 = slot0.coreSelect
		197	[  0]	TGETS	 18	18	29	; slot18 = <unknown table>.coreSelect.buttons
		198	[  0]	TGETS	 18	18	13	; slot18 = <unknown table>.coreSelect.buttons.gapPx
		199	[  0]	IST  	   		18	; if <unknown table>.coreSelect.buttons.gapPx
		200	[  0]	JMP  	 19		1	; 	goto 202
		201	[  0]	KSHORT	 18		20	; slot18 = 20
		202	[  0]	KSHORT	 19		8	; slot19 = 8
		203	[  0]	ADDVV	 20	7	19	; slot20 = slot7 + slot19
		204	[  0]	ADDVV	 20	20	17	; slot20 = slot20 + slot17
		205	[  0]	GGET 	 21		22	; slot21 = _env["math"]
		206	[  0]	TGETS	 21	21	12	; slot21 = math.floor
		207	[  0]	SUBVV	 23	1	6	; slot23 = slot1 - slot6
		208	[  0]	MULVN	 23	23	1	; slot23 = slot23 * 0.5
		209	[  0]	DIVVV	 23	23	3	; slot23 = slot23 / uv0"unknown"
		210	[  0]	ADDVN	 23	23	1	; slot23 = slot23 + 0.5
		211	[  0]	CALL 	 21	2	2	; slot21 = math.floor(uv7"unknown")
		212	[  0]	MULVV	 21	21	3	; slot21 = math.floor * uv0"unknown"
		213	[  0]	GGET 	 22		22	; slot22 = _env["math"]
		214	[  0]	TGETS	 22	22	12	; slot22 = math.floor
		215	[  0]	SUBVV	 24	2	20	; slot24 = slot2 - slot20
		216	[  0]	MULVN	 24	24	1	; slot24 = slot24 * 0.5
		217	[  0]	DIVVV	 24	24	3	; slot24 = slot24 / uv0"unknown"
		218	[  0]	ADDVN	 24	24	1	; slot24 = slot24 + 0.5
		219	[  0]	CALL 	 22	2	2	; slot22 = math.floor(slot23)
		220	[  0]	MULVV	 22	22	3	; slot22 = math.floor * uv0"unknown"
		221	[  0]	GGET 	 23		22	; slot23 = _env["math"]
		222	[  0]	TGETS	 23	23	12	; slot23 = math.floor
		223	[  0]	MULVN	 25	16	0	; slot25 = slot16 * 2
		224	[  0]	ADDVV	 25	25	18	; slot25 = slot25 + slot18
		225	[  0]	SUBVV	 25	1	25	; slot25 = slot1 - slot25
		226	[  0]	MULVN	 25	25	1	; slot25 = slot25 * 0.5
		227	[  0]	ADDVN	 25	25	1	; slot25 = slot25 + 0.5
		228	[  0]	CALL 	 23	2	2	; slot23 = math.floor(slot24)
		229	[  0]	ADDVV	 24	22	7	; slot24 = slot22 + slot7
		230	[  0]	ADDVV	 24	24	19	; slot24 = slot24 + slot19
		231	[  0]	TDUP 	 25		11	; slot25 = copy table#k11
		232	[  0]	TSETS	  1	25	34	; slot25.W = slot1
		233	[  0]	TSETS	  2	25	33	; slot25.H = slot2
		234	[  0]	TDUP 	 26		10	; slot26 = copy table#k10
		235	[  0]	TSETS	 21	26	9	; slot26.x = slot21
		236	[  0]	TSETS	 22	26	8	; slot26.y = slot22
		237	[  0]	TSETS	  6	26	7	; slot26.w = slot6
		238	[  0]	TSETS	  7	26	6	; slot26.h = slot7
		239	[  0]	TSETS	  3	26	28	; slot26.scale = uv0"unknown"
		240	[  0]	TSETS	 26	25	5	; slot25.panel = slot26
		241	[  0]	TSETS	  8	25	4	; slot25.buttonScale = slot8
		242	[  0]	TSETS	 14	25	3	; slot25.buttonExtraSrc = require.core_button.extraFor
		243	[  0]	TSETS	 15	25	2	; slot25.windowExtraRows = math.ceil
		244	[  0]	TDUP 	 26		1	; slot26 = copy table#k1
		245	[  0]	TSETS	 23	26	9	; slot26.x = math.floor
		246	[  0]	TSETS	 24	26	8	; slot26.y = slot24
		247	[  0]	TSETS	 16	26	7	; slot26.w = slot16
		248	[  0]	TSETS	 17	26	6	; slot26.h = slot17
		249	[  0]	TSETS	 26	25	20	; slot25.start = slot26
		250	[  0]	TDUP 	 26		0	; slot26 = copy table#k0
		251	[  0]	ADDVV	 27	23	16	; slot27 = math.floor + slot16
		252	[  0]	ADDVV	 27	27	18	; slot27 = slot27 + slot18
		253	[  0]	TSETS	 27	26	9	; slot26.x = slot27
		254	[  0]	TSETS	 24	26	8	; slot26.y = slot24
		255	[  0]	TSETS	 16	26	7	; slot26.w = slot16
		256	[  0]	TSETS	 17	26	6	; slot26.h = slot17
		257	[  0]	TSETS	 26	25	19	; slot25.skip = slot26
		258	[  0]	RET1 	 25		2	; return slot25
	131	[  0]	FNEW 	 42		174	; N/A:0-0: 3 args, 1 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		ktable#5 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  3		0	; slot3 = slot0; if not slot0
		  2	[  0]	JMP  	  3		1	; 	goto 4
		  3	[  0]	TGETV	  3	0	1	; slot3 = slot0[slot1]
		  4	[  0]	IST  	   		3	; if slot3
		  5	[  0]	JMP  	  4		2	; 	goto 8
		  6	[  0]	KPRI 	  4		0	; slot4 = nil
		  7	[  0]	RET1 	  4		2	; return slot4
		  8	[  0]	ISF  	   		2	; if not slot2
		  9	[  0]	JMP  	  4		7	; 	goto 17
		 10	[  0]	TGETS	  4	2	13	; slot4 = slot2.coreSelect
		 11	[  0]	ISF  	   		4	; if not <unknown table>.coreSelect
		 12	[  0]	JMP  	  5		4	; 	goto 17
		 13	[  0]	TGETS	  4	2	13	; slot4 = slot2.coreSelect
		 14	[  0]	TGETS	  4	4	12	; slot4 = <unknown table>.coreSelect.buttons
		 15	[  0]	IST  	   		4	; if <unknown table>.coreSelect.buttons
		 16	[  0]	JMP  	  5		1	; 	goto 18
		 17	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 18	[  0]	TGETS	  5	4	11	; slot5 = slot4.hover
		 19	[  0]	ISF  	   		5	; if not <unknown table>.hover
		 20	[  0]	JMP  	  6		4	; 	goto 25
		 21	[  0]	TGETS	  5	4	11	; slot5 = slot4.hover
		 22	[  0]	TGETS	  5	5	10	; slot5 = <unknown table>.hover.liftPx
		 23	[  0]	IST  	   		5	; if <unknown table>.hover.liftPx
		 24	[  0]	JMP  	  6		1	; 	goto 26
		 25	[  0]	KSHORT	  5		4	; slot5 = 4
		 26	[  0]	ISNES	  1		9	; if slot1 ~= "start"
		 27	[  0]	JMP  	  6		6	; 	goto 34
		 28	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 29	[  0]	TGETS	  6	6	8	; slot6 = uv0"unknown".hoverStart
		 30	[  0]	IST  	   		6	; if uv0"unknown".hoverStart
		 31	[  0]	JMP  	  7		7	; 	goto 39
		 32	[  0]	KSHORT	  6		0	; slot6 = 0
		 33	[  0]	JMP  	  7		5	; 	goto 39
		 34	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 35	[  0]	TGETS	  6	6	7	; slot6 = uv0"unknown".hoverSkip
		 36	[  0]	IST  	   		6	; if uv0"unknown".hoverSkip
		 37	[  0]	JMP  	  7		1	; 	goto 39
		 38	[  0]	KSHORT	  6		0	; slot6 = 0
		 39	[  0]	TDUP 	  7		5	; slot7 = copy table#k5
		 40	[  0]	TGETS	  8	3	6	; slot8 = slot3.x
		 41	[  0]	TSETS	  8	7	6	; slot7.x = <unknown table>.x
		 42	[  0]	TGETS	  8	3	4	; slot8 = slot3.y
		 43	[  0]	GGET 	  9		3	; slot9 = _env["math"]
		 44	[  0]	TGETS	  9	9	2	; slot9 = math.floor
		 45	[  0]	MULVV	 11	5	6	; slot11 = slot5 * slot6
		 46	[  0]	ADDVN	 11	11	0	; slot11 = slot11 + 0.5
		 47	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		 48	[  0]	SUBVV	  8	8	9	; slot8 = <unknown table>.y - math.floor
		 49	[  0]	TSETS	  8	7	4	; slot7.y = slot8
		 50	[  0]	TGETS	  8	3	1	; slot8 = slot3.w
		 51	[  0]	TSETS	  8	7	1	; slot7.w = <unknown table>.w
		 52	[  0]	TGETS	  8	3	0	; slot8 = slot3.h
		 53	[  0]	TSETS	  8	7	0	; slot7.h = <unknown table>.h
		 54	[  0]	RET1 	  7		2	; return slot7
	132	[  0]	FNEW 	 43		173	; N/A:0-0: 5 args, 2 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		  2	[  0]	MOV  	  7		0	; slot7 = slot0
		  3	[  0]	MOV  	  8		1	; slot8 = slot1
		  4	[  0]	MOV  	  9		2	; slot9 = slot2
		  5	[  0]	CALL 	  5	2	4	; slot5 = uv0"unknown"(slot6, slot7, slot8)
		  6	[  0]	IST  	   		5	; if uv0"unknown"
		  7	[  0]	JMP  	  5		2	; 	goto 10
		  8	[  0]	KPRI 	  5		1	; slot5 = false
		  9	[  0]	RET1 	  5		2	; return slot5
		 10	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 11	[  0]	IST  	   		5	; if uv1"unknown"
		 12	[  0]	JMP  	  5		2	; 	goto 15
		 13	[  0]	KPRI 	  5		2	; slot5 = true
		 14	[  0]	RET1 	  5		2	; return slot5
		 15	[  0]	GGET 	  5		9	; slot5 = _env["math"]
		 16	[  0]	TGETS	  5	5	8	; slot5 = math.floor
		 17	[  0]	GGET 	  7		7	; slot7 = _env["require"]
		 18	[  0]	KSTR 	  9		6	; slot9 = "src.ui.widgets"
		 19	[  0]	CALL 	  7	2	2	; slot7 = require(slot8)
		 20	[  0]	TGETS	  7	7	5	; slot7 = require.core_button
		 21	[  0]	TGETS	  7	7	4	; slot7 = require.core_button.sourceX
		 22	[  0]	TGETS	  9	2	3	; slot9 = slot2.x
		 23	[  0]	SUBVV	  9	0	9	; slot9 = slot0 - <unknown table>.x
		 24	[  0]	DIVVV	  9	9	3	; slot9 = slot9 / slot3
		 25	[  0]	MOV  	 10		4	; slot10 = slot4
		 26	[  0]	CALL 	  7	0	3	; MULTRES = require.core_button.sourceX(slot8, slot9)
		 27	[  0]	CALLM	  5	2	0	; slot5 = math.floor(, ...MULTRES)
		 28	[  0]	GGET 	  6		9	; slot6 = _env["math"]
		 29	[  0]	TGETS	  6	6	8	; slot6 = math.floor
		 30	[  0]	TGETS	  8	2	2	; slot8 = slot2.y
		 31	[  0]	SUBVV	  8	1	8	; slot8 = slot1 - <unknown table>.y
		 32	[  0]	DIVVV	  8	8	3	; slot8 = slot8 / slot3
		 33	[  0]	CALL 	  6	2	2	; slot6 = math.floor(require.core_button.sourceX)
		 34	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 35	[  0]	MOV  	  9		7	; slot9 = uv1"unknown"
		 36	[  0]	TGETS	  7	7	1	; slot7 = uv1"unknown".getDimensions
		 37	[  0]	CALL 	  7	3	2	; slot7, slot8 = uv1"unknown".getDimensions(slot8)
		 38	[  0]	KSHORT	  9		0	; slot9 = 0
		 39	[  0]	ISLT 	  5		9	; if math.floor < slot9
		 40	[  0]	JMP  	  9		7	; 	goto 48
		 41	[  0]	KSHORT	  9		0	; slot9 = 0
		 42	[  0]	ISLT 	  6		9	; if math.floor < slot9
		 43	[  0]	JMP  	  9		4	; 	goto 48
		 44	[  0]	ISLE 	  7		5	; if uv1"unknown".getDimensions <= math.floor
		 45	[  0]	JMP  	  9		2	; 	goto 48
		 46	[  0]	ISGT 	  8		6	; if slot8 > math.floor
		 47	[  0]	JMP  	  9		2	; 	goto 50
		 48	[  0]	KPRI 	  9		1	; slot9 = false
		 49	[  0]	RET1 	  9		2	; return slot9
		 50	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 51	[  0]	MOV  	 11		9	; slot11 = uv1"unknown"
		 52	[  0]	TGETS	  9	9	0	; slot9 = uv1"unknown".getPixel
		 53	[  0]	MOV  	 12		5	; slot12 = math.floor
		 54	[  0]	MOV  	 13		6	; slot13 = math.floor
		 55	[  0]	CALL 	  9	5	4	; slot9, slot10, slot11, slot12 = uv1"unknown".getPixel(slot10, uv1"unknown", math.floor)
		 56	[  0]	ISTC 	 13		12	; slot13 = math.floor; if math.floor
		 57	[  0]	JMP  	 13		1	; 	goto 59
		 58	[  0]	KSHORT	 13		0	; slot13 = 0
		 59	[  0]	KNUM 	 14		0	; slot14 = 0.05
		 60	[  0]	ISLT 	 14		13	; if slot14 < slot13
		 61	[  0]	JMP  	 13		2	; 	goto 64
		 62	[  0]	KPRI 	 13		1	; slot13 = false
		 63	[  0]	JMP  	 14		1	; 	goto 65
		 64	[  0]	KPRI 	 13		2	; slot13 = true
		 65	[  0]	RET1 	 13		2	; return slot13
	133	[  0]	FNEW 	 44		171	; N/A:0-0: 3 args, 1 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		2	; if not slot2
		  2	[  0]	JMP  	  3		9	; 	goto 12
		  3	[  0]	TGETS	  3	2	36	; slot3 = slot2.menuSettings
		  4	[  0]	ISF  	   		3	; if not <unknown table>.menuSettings
		  5	[  0]	JMP  	  4		6	; 	goto 12
		  6	[  0]	TGETS	  3	2	36	; slot3 = slot2.menuSettings
		  7	[  0]	TGETS	  3	3	35	; slot3 = <unknown table>.menuSettings.tutorialEnabled
		  8	[  0]	ISNEP	  3		1	; if <unknown table>.menuSettings.tutorialEnabled ~= false
		  9	[  0]	JMP  	  3		2	; 	goto 12
		 10	[  0]	KPRI 	  3		1	; slot3 = false
		 11	[  0]	JMP  	  4		1	; 	goto 13
		 12	[  0]	KPRI 	  3		2	; slot3 = true
		 13	[  0]	ISF  	   		3	; if not slot3
		 14	[  0]	JMP  	  4		10	; 	goto 25
		 15	[  0]	GGET 	  4		34	; slot4 = _env["tonumber"]
		 16	[  0]	MOV  	  6		0	; slot6 = slot0
		 17	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		 18	[  0]	ISNEN	  4		0	; if tonumber ~= 1
		 19	[  0]	JMP  	  4		5	; 	goto 25
		 20	[  0]	GGET 	  4		34	; slot4 = _env["tonumber"]
		 21	[  0]	MOV  	  6		1	; slot6 = slot1
		 22	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		 23	[  0]	ISEQN	  4		0	; if tonumber == 1
		 24	[  0]	JMP  	  4		11	; 	goto 36
		 25	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 26	[  0]	KPRI 	  5		1	; slot5 = false
		 27	[  0]	TSETS	  5	4	33	; uv0"unknown".active = slot5
		 28	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 29	[  0]	KPRI 	  5		1	; slot5 = false
		 30	[  0]	TSETS	  5	4	32	; uv0"unknown".pending = slot5
		 31	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 32	[  0]	KPRI 	  5		1	; slot5 = false
		 33	[  0]	TSETS	  5	4	31	; uv0"unknown".running = slot5
		 34	[  0]	KPRI 	  4		1	; slot4 = false
		 35	[  0]	RET1 	  4		2	; return slot4
		 36	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 37	[  0]	KPRI 	  5		1	; slot5 = false
		 38	[  0]	TSETS	  5	4	33	; uv0"unknown".active = slot5
		 39	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 40	[  0]	KPRI 	  5		2	; slot5 = true
		 41	[  0]	TSETS	  5	4	32	; uv0"unknown".pending = slot5
		 42	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 43	[  0]	KPRI 	  5		1	; slot5 = false
		 44	[  0]	TSETS	  5	4	31	; uv0"unknown".running = slot5
		 45	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 46	[  0]	KPRI 	  5		1	; slot5 = false
		 47	[  0]	TSETS	  5	4	30	; uv0"unknown".skipped = slot5
		 48	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 49	[  0]	KSHORT	  5		0	; slot5 = 0
		 50	[  0]	TSETS	  5	4	29	; uv0"unknown".step = slot5
		 51	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 52	[  0]	KSHORT	  5		0	; slot5 = 0
		 53	[  0]	TSETS	  5	4	28	; uv0"unknown".t = slot5
		 54	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 55	[  0]	KSHORT	  5		0	; slot5 = 0
		 56	[  0]	TSETS	  5	4	27	; uv0"unknown".skipLockElapsed = slot5
		 57	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 58	[  0]	KSHORT	  5		0	; slot5 = 0
		 59	[  0]	TSETS	  5	4	26	; uv0"unknown".stepElapsed = slot5
		 60	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 61	[  0]	KPRI 	  5		0	; slot5 = nil
		 62	[  0]	TSETS	  5	4	25	; uv0"unknown".hovered = slot5
		 63	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 64	[  0]	KSHORT	  5		0	; slot5 = 0
		 65	[  0]	TSETS	  5	4	24	; uv0"unknown".hoverStart = slot5
		 66	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 67	[  0]	KSHORT	  5		0	; slot5 = 0
		 68	[  0]	TSETS	  5	4	23	; uv0"unknown".hoverSkip = slot5
		 69	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 70	[  0]	KPRI 	  5		0	; slot5 = nil
		 71	[  0]	TSETS	  5	4	22	; uv0"unknown".buttons = slot5
		 72	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 73	[  0]	KPRI 	  5		0	; slot5 = nil
		 74	[  0]	TSETS	  5	4	21	; uv0"unknown".winRosterIndex = slot5
		 75	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 76	[  0]	KPRI 	  5		0	; slot5 = nil
		 77	[  0]	TSETS	  5	4	20	; uv0"unknown".archerRosterIndex = slot5
		 78	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 79	[  0]	KPRI 	  5		0	; slot5 = nil
		 80	[  0]	TSETS	  5	4	19	; uv0"unknown".archerRef = slot5
		 81	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 82	[  0]	KPRI 	  5		0	; slot5 = nil
		 83	[  0]	TSETS	  5	4	18	; uv0"unknown".warriorRosterIndex = slot5
		 84	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 85	[  0]	KPRI 	  5		0	; slot5 = nil
		 86	[  0]	TSETS	  5	4	17	; uv0"unknown".mageRosterIndex = slot5
		 87	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 88	[  0]	KPRI 	  5		0	; slot5 = nil
		 89	[  0]	TSETS	  5	4	16	; uv0"unknown".spearRosterIndex = slot5
		 90	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 91	[  0]	KPRI 	  5		0	; slot5 = nil
		 92	[  0]	TSETS	  5	4	15	; uv0"unknown".extraWarriorRosterIndex = slot5
		 93	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 94	[  0]	KPRI 	  5		0	; slot5 = nil
		 95	[  0]	TSETS	  5	4	14	; uv0"unknown".postCoreArcherRosterIndex = slot5
		 96	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 97	[  0]	KPRI 	  5		0	; slot5 = nil
		 98	[  0]	TSETS	  5	4	13	; uv0"unknown".postCoreArcherRef = slot5
		 99	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		100	[  0]	KPRI 	  5		0	; slot5 = nil
		101	[  0]	TSETS	  5	4	12	; uv0"unknown".promotedUnitRef = slot5
		102	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		103	[  0]	KSHORT	  5		0	; slot5 = 0
		104	[  0]	TSETS	  5	4	11	; uv0"unknown".postCoreSpearCount = slot5
		105	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		106	[  0]	KPRI 	  5		0	; slot5 = nil
		107	[  0]	TSETS	  5	4	10	; uv0"unknown".classSkillHovered = slot5
		108	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		109	[  0]	KPRI 	  5		0	; slot5 = nil
		110	[  0]	TSETS	  5	4	9	; uv0"unknown".classSkillCompleteT = slot5
		111	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		112	[  0]	KPRI 	  5		0	; slot5 = nil
		113	[  0]	TSETS	  5	4	8	; uv0"unknown".promotedName = slot5
		114	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		115	[  0]	KSHORT	  5		0	; slot5 = 0
		116	[  0]	TSETS	  5	4	7	; uv0"unknown".unitHoverT = slot5
		117	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		118	[  0]	KSHORT	  5		0	; slot5 = 0
		119	[  0]	TSETS	  5	4	6	; uv0"unknown".unitHoverCount = slot5
		120	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		121	[  0]	KPRI 	  5		1	; slot5 = false
		122	[  0]	TSETS	  5	4	5	; uv0"unknown".unitHoverWasOver = slot5
		123	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		124	[  0]	KPRI 	  5		1	; slot5 = false
		125	[  0]	TSETS	  5	4	4	; uv0"unknown".movedArcher = slot5
		126	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		127	[  0]	KPRI 	  5		1	; slot5 = false
		128	[  0]	TSETS	  5	4	3	; uv0"unknown".movedWarrior = slot5
		129	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		130	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		131	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		132	[  0]	KNIL 	  7		9	; slot7, slot8, slot9 = nil
		133	[  0]	TSETS	  9	6	0	; uv0"unknown".dragStartY = slot9
		134	[  0]	TSETS	  8	5	1	; uv0"unknown".dragStartX = slot8
		135	[  0]	TSETS	  7	4	2	; uv0"unknown".dragStartRef = slot7
		136	[  0]	KPRI 	  4		2	; slot4 = true
		137	[  0]	RET1 	  4		2	; return slot4
	134	[  0]	TSETS	 44	0	172	; slot0.beginForRun = slot44
	135	[  0]	FNEW 	 44		169	; N/A:0-0: 0 args, 1 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".pending
		  3	[  0]	ISEQP	  0		2	; if uv0"unknown".pending == true
		  4	[  0]	JMP  	  0		2	; 	goto 7
		  5	[  0]	KPRI 	  0		1	; slot0 = false
		  6	[  0]	JMP  	  1		1	; 	goto 8
		  7	[  0]	KPRI 	  0		2	; slot0 = true
		  8	[  0]	RET1 	  0		2	; return slot0
	136	[  0]	TSETS	 44	0	170	; slot0.isPending = slot44
	137	[  0]	FNEW 	 44		167	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	7	; slot0 = uv0"unknown".pending
		  3	[  0]	IST  	   		0	; if uv0"unknown".pending
		  4	[  0]	JMP  	  0		2	; 	goto 7
		  5	[  0]	KPRI 	  0		1	; slot0 = false
		  6	[  0]	RET1 	  0		2	; return slot0
		  7	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  8	[  0]	KPRI 	  1		1	; slot1 = false
		  9	[  0]	TSETS	  1	0	7	; uv0"unknown".pending = slot1
		 10	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 11	[  0]	KPRI 	  1		2	; slot1 = true
		 12	[  0]	TSETS	  1	0	6	; uv0"unknown".active = slot1
		 13	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 14	[  0]	KSHORT	  1		0	; slot1 = 0
		 15	[  0]	TSETS	  1	0	5	; uv0"unknown".t = slot1
		 16	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 17	[  0]	KSHORT	  1		0	; slot1 = 0
		 18	[  0]	TSETS	  1	0	4	; uv0"unknown".skipLockElapsed = slot1
		 19	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 20	[  0]	KPRI 	  1		0	; slot1 = nil
		 21	[  0]	TSETS	  1	0	3	; uv0"unknown".hovered = slot1
		 22	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 23	[  0]	KSHORT	  1		0	; slot1 = 0
		 24	[  0]	TSETS	  1	0	2	; uv0"unknown".hoverStart = slot1
		 25	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 26	[  0]	KSHORT	  1		0	; slot1 = 0
		 27	[  0]	TSETS	  1	0	1	; uv0"unknown".hoverSkip = slot1
		 28	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 29	[  0]	KPRI 	  1		0	; slot1 = nil
		 30	[  0]	TSETS	  1	0	0	; uv0"unknown".buttons = slot1
		 31	[  0]	KPRI 	  0		2	; slot0 = true
		 32	[  0]	RET1 	  0		2	; return slot0
	138	[  0]	TSETS	 44	0	168	; slot0.activatePending = slot44
	139	[  0]	FNEW 	 44		165	; N/A:0-0: 0 args, 1 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".active
		  3	[  0]	ISEQP	  0		2	; if uv0"unknown".active == true
		  4	[  0]	JMP  	  0		2	; 	goto 7
		  5	[  0]	KPRI 	  0		1	; slot0 = false
		  6	[  0]	JMP  	  1		1	; 	goto 8
		  7	[  0]	KPRI 	  0		2	; slot0 = true
		  8	[  0]	RET1 	  0		2	; return slot0
	140	[  0]	TSETS	 44	0	166	; slot0.isActive = slot44
	141	[  0]	FNEW 	 44		163	; N/A:0-0: 0 args, 1 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".running
		  3	[  0]	ISEQP	  0		2	; if uv0"unknown".running == true
		  4	[  0]	JMP  	  0		2	; 	goto 7
		  5	[  0]	KPRI 	  0		1	; slot0 = false
		  6	[  0]	JMP  	  1		1	; 	goto 8
		  7	[  0]	KPRI 	  0		2	; slot0 = true
		  8	[  0]	RET1 	  0		2	; return slot0
	142	[  0]	TSETS	 44	0	164	; slot0.isRunning = slot44
	143	[  0]	FNEW 	 44		161	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	5	; slot0 = uv0"unknown".active
		  3	[  0]	ISEQP	  0		2	; if uv0"unknown".active == true
		  4	[  0]	JMP  	  0		21	; 	goto 26
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	4	; slot0 = uv0"unknown".running
		  7	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  8	[  0]	JMP  	  0		15	; 	goto 24
		  9	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 10	[  0]	TGETS	  0	0	3	; slot0 = uv0"unknown".step
		 11	[  0]	GGET 	  1		2	; slot1 = _env["STEP_BATTLE_FREE"]
		 12	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_BATTLE_FREE
		 13	[  0]	JMP  	  0		10	; 	goto 24
		 14	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 15	[  0]	TGETS	  0	0	3	; slot0 = uv0"unknown".step
		 16	[  0]	GGET 	  1		1	; slot1 = _env["STEP_SLOT"]
		 17	[  0]	ISGT 	  1		0	; if STEP_SLOT > uv0"unknown".step
		 18	[  0]	JMP  	  0		5	; 	goto 24
		 19	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 20	[  0]	TGETS	  0	0	3	; slot0 = uv0"unknown".step
		 21	[  0]	GGET 	  1		0	; slot1 = _env["STEP_TUTORIAL_COMPLETE"]
		 22	[  0]	ISLE 	  0		1	; if uv0"unknown".step <= STEP_TUTORIAL_COMPLETE
		 23	[  0]	JMP  	  0		2	; 	goto 26
		 24	[  0]	KPRI 	  0		1	; slot0 = false
		 25	[  0]	JMP  	  1		1	; 	goto 27
		 26	[  0]	KPRI 	  0		2	; slot0 = true
		 27	[  0]	RET1 	  0		2	; return slot0
	144	[  0]	TSETS	 44	0	162	; slot0.isOverlayVisible = slot44
	145	[  0]	FNEW 	 44		159	; N/A:0-0: 1 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	KPRI 	  2		1	; slot2 = false
		  3	[  0]	TSETS	  2	1	49	; uv0"unknown".active = slot2
		  4	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  5	[  0]	KPRI 	  2		1	; slot2 = false
		  6	[  0]	TSETS	  2	1	48	; uv0"unknown".pending = slot2
		  7	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  8	[  0]	KPRI 	  2		1	; slot2 = false
		  9	[  0]	TSETS	  2	1	47	; uv0"unknown".running = slot2
		 10	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 11	[  0]	KPRI 	  2		1	; slot2 = false
		 12	[  0]	TSETS	  2	1	46	; uv0"unknown".skipped = slot2
		 13	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 14	[  0]	KSHORT	  2		0	; slot2 = 0
		 15	[  0]	TSETS	  2	1	45	; uv0"unknown".step = slot2
		 16	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 17	[  0]	KSHORT	  2		0	; slot2 = 0
		 18	[  0]	TSETS	  2	1	44	; uv0"unknown".t = slot2
		 19	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 20	[  0]	KSHORT	  2		0	; slot2 = 0
		 21	[  0]	TSETS	  2	1	43	; uv0"unknown".skipLockElapsed = slot2
		 22	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 23	[  0]	KSHORT	  2		0	; slot2 = 0
		 24	[  0]	TSETS	  2	1	42	; uv0"unknown".stepT = slot2
		 25	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 26	[  0]	KSHORT	  2		0	; slot2 = 0
		 27	[  0]	TSETS	  2	1	41	; uv0"unknown".stepElapsed = slot2
		 28	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 29	[  0]	KPRI 	  2		1	; slot2 = false
		 30	[  0]	TSETS	  2	1	40	; uv0"unknown".spinStarted = slot2
		 31	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 32	[  0]	KPRI 	  2		0	; slot2 = nil
		 33	[  0]	TSETS	  2	1	39	; uv0"unknown".hovered = slot2
		 34	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 35	[  0]	KPRI 	  2		0	; slot2 = nil
		 36	[  0]	TSETS	  2	1	38	; uv0"unknown".buttons = slot2
		 37	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 38	[  0]	KPRI 	  2		0	; slot2 = nil
		 39	[  0]	TSETS	  2	1	37	; uv0"unknown".winLayout = slot2
		 40	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 41	[  0]	KPRI 	  2		0	; slot2 = nil
		 42	[  0]	TSETS	  2	1	36	; uv0"unknown".winRosterIndex = slot2
		 43	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 44	[  0]	KPRI 	  2		0	; slot2 = nil
		 45	[  0]	TSETS	  2	1	35	; uv0"unknown".archerRosterIndex = slot2
		 46	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 47	[  0]	KPRI 	  2		0	; slot2 = nil
		 48	[  0]	TSETS	  2	1	34	; uv0"unknown".archerRef = slot2
		 49	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 50	[  0]	KPRI 	  2		0	; slot2 = nil
		 51	[  0]	TSETS	  2	1	33	; uv0"unknown".warriorRosterIndex = slot2
		 52	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 53	[  0]	KPRI 	  2		0	; slot2 = nil
		 54	[  0]	TSETS	  2	1	32	; uv0"unknown".mageRosterIndex = slot2
		 55	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 56	[  0]	KPRI 	  2		0	; slot2 = nil
		 57	[  0]	TSETS	  2	1	31	; uv0"unknown".spearRosterIndex = slot2
		 58	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 59	[  0]	KPRI 	  2		0	; slot2 = nil
		 60	[  0]	TSETS	  2	1	30	; uv0"unknown".extraWarriorRosterIndex = slot2
		 61	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 62	[  0]	KPRI 	  2		0	; slot2 = nil
		 63	[  0]	TSETS	  2	1	29	; uv0"unknown".postCoreArcherRosterIndex = slot2
		 64	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 65	[  0]	KPRI 	  2		0	; slot2 = nil
		 66	[  0]	TSETS	  2	1	28	; uv0"unknown".postCoreArcherRef = slot2
		 67	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 68	[  0]	KPRI 	  2		0	; slot2 = nil
		 69	[  0]	TSETS	  2	1	27	; uv0"unknown".promotedUnitRef = slot2
		 70	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 71	[  0]	KSHORT	  2		0	; slot2 = 0
		 72	[  0]	TSETS	  2	1	26	; uv0"unknown".postCoreSpearCount = slot2
		 73	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 74	[  0]	KPRI 	  2		0	; slot2 = nil
		 75	[  0]	TSETS	  2	1	25	; uv0"unknown".classSkillHovered = slot2
		 76	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 77	[  0]	KPRI 	  2		0	; slot2 = nil
		 78	[  0]	TSETS	  2	1	24	; uv0"unknown".classSkillCompleteT = slot2
		 79	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 80	[  0]	KPRI 	  2		0	; slot2 = nil
		 81	[  0]	TSETS	  2	1	23	; uv0"unknown".promotedName = slot2
		 82	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 83	[  0]	KSHORT	  2		0	; slot2 = 0
		 84	[  0]	TSETS	  2	1	22	; uv0"unknown".unitHoverT = slot2
		 85	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 86	[  0]	KSHORT	  2		0	; slot2 = 0
		 87	[  0]	TSETS	  2	1	21	; uv0"unknown".unitHoverCount = slot2
		 88	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 89	[  0]	KPRI 	  2		1	; slot2 = false
		 90	[  0]	TSETS	  2	1	20	; uv0"unknown".unitHoverWasOver = slot2
		 91	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 92	[  0]	KPRI 	  2		1	; slot2 = false
		 93	[  0]	TSETS	  2	1	19	; uv0"unknown".movedArcher = slot2
		 94	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 95	[  0]	KPRI 	  2		1	; slot2 = false
		 96	[  0]	TSETS	  2	1	18	; uv0"unknown".movedWarrior = slot2
		 97	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 98	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 99	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		100	[  0]	KNIL 	  4		6	; slot4, slot5, slot6 = nil
		101	[  0]	TSETS	  6	3	15	; uv0"unknown".dragStartY = slot6
		102	[  0]	TSETS	  5	2	16	; uv0"unknown".dragStartX = slot5
		103	[  0]	TSETS	  4	1	17	; uv0"unknown".dragStartRef = slot4
		104	[  0]	GGET 	  1		14	; slot1 = _env["rawget"]
		105	[  0]	GGET 	  3		13	; slot3 = _env["_G"]
		106	[  0]	KSTR 	  4		12	; slot4 = "slot"
		107	[  0]	CALL 	  1	2	3	; slot1 = rawget(uv0"unknown", _G)
		108	[  0]	ISF  	   		1	; if not slot1
		109	[  0]	JMP  	  2		10	; 	goto 120
		110	[  0]	KPRI 	  2		1	; slot2 = false
		111	[  0]	TSETS	  2	1	11	; slot1._tutorialSpin = slot2
		112	[  0]	KPRI 	  2		0	; slot2 = nil
		113	[  0]	TSETS	  2	1	10	; slot1.stopTimes = slot2
		114	[  0]	TGETS	  2	1	9	; slot2 = slot1._coreSpinMods
		115	[  0]	ISF  	   		2	; if not <unknown table>._coreSpinMods
		116	[  0]	JMP  	  3		3	; 	goto 120
		117	[  0]	TGETS	  2	1	9	; slot2 = slot1._coreSpinMods
		118	[  0]	KPRI 	  3		0	; slot3 = nil
		119	[  0]	TSETS	  3	2	8	; <unknown table>._coreSpinMods.forceCells = slot3
		120	[  0]	ISF  	   		0	; if not slot0
		121	[  0]	JMP  	  2		16	; 	goto 138
		122	[  0]	KPRI 	  2		1	; slot2 = false
		123	[  0]	TSETS	  2	0	7	; slot0._tutorialBlockNonSlot = slot2
		124	[  0]	KPRI 	  2		1	; slot2 = false
		125	[  0]	TSETS	  2	0	6	; slot0._tutorialAllowReadyIcon = slot2
		126	[  0]	KPRI 	  2		1	; slot2 = false
		127	[  0]	TSETS	  2	0	5	; slot0._tutorialAllowUnitInteraction = slot2
		128	[  0]	KPRI 	  2		0	; slot2 = nil
		129	[  0]	TSETS	  2	0	4	; slot0._tutorialCursorX = slot2
		130	[  0]	KPRI 	  2		0	; slot2 = nil
		131	[  0]	TSETS	  2	0	3	; slot0._tutorialCursorY = slot2
		132	[  0]	KPRI 	  2		0	; slot2 = nil
		133	[  0]	TSETS	  2	0	2	; slot0._tutorialRunning = slot2
		134	[  0]	KPRI 	  2		0	; slot2 = nil
		135	[  0]	TSETS	  2	0	1	; slot0._tutorialShopIntroFocus = slot2
		136	[  0]	KPRI 	  2		0	; slot2 = nil
		137	[  0]	TSETS	  2	0	0	; slot0._tutorialBattleReturnFocus = slot2
		138	[  0]	KPRI 	  2		2	; slot2 = true
		139	[  0]	RET1 	  2		2	; return slot2
	146	[  0]	TSETS	 44	0	160	; slot0.stop = slot44
	147	[  0]	FNEW 	 44		157	; N/A:0-0: 0 args, 1 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".step
		  3	[  0]	IST  	   		0	; if uv0"unknown".step
		  4	[  0]	JMP  	  1		1	; 	goto 6
		  5	[  0]	KSHORT	  0		0	; slot0 = 0
		  6	[  0]	RET1 	  0		2	; return slot0
	148	[  0]	TSETS	 44	0	158	; slot0.getStep = slot44
	149	[  0]	FNEW 	 44		155	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	4	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		15	; 	goto 20
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	3	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		2	; slot1 = _env["STEP_BATTLE_FREE"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_BATTLE_FREE
		  9	[  0]	JMP  	  0		10	; 	goto 20
		 10	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 11	[  0]	TGETS	  0	0	3	; slot0 = uv0"unknown".step
		 12	[  0]	GGET 	  1		1	; slot1 = _env["STEP_SLOT"]
		 13	[  0]	ISGT 	  1		0	; if STEP_SLOT > uv0"unknown".step
		 14	[  0]	JMP  	  0		5	; 	goto 20
		 15	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 16	[  0]	TGETS	  0	0	3	; slot0 = uv0"unknown".step
		 17	[  0]	GGET 	  1		0	; slot1 = _env["STEP_TUTORIAL_COMPLETE"]
		 18	[  0]	ISLE 	  0		1	; if uv0"unknown".step <= STEP_TUTORIAL_COMPLETE
		 19	[  0]	JMP  	  0		2	; 	goto 22
		 20	[  0]	KPRI 	  0		1	; slot0 = false
		 21	[  0]	JMP  	  1		1	; 	goto 23
		 22	[  0]	KPRI 	  0		2	; slot0 = true
		 23	[  0]	RET1 	  0		2	; return slot0
	150	[  0]	TSETS	 44	0	156	; slot0.isSlotStep = slot44
	151	[  0]	FNEW 	 44		153	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	3	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		10	; 	goto 15
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		1	; slot1 = _env["STEP_BATTLE_READY"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_BATTLE_READY
		  9	[  0]	JMP  	  0		7	; 	goto 17
		 10	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 11	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".step
		 12	[  0]	GGET 	  1		0	; slot1 = _env["STEP_FINAL_READY"]
		 13	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_FINAL_READY
		 14	[  0]	JMP  	  0		2	; 	goto 17
		 15	[  0]	KPRI 	  0		1	; slot0 = false
		 16	[  0]	JMP  	  1		1	; 	goto 18
		 17	[  0]	KPRI 	  0		2	; slot0 = true
		 18	[  0]	RET1 	  0		2	; return slot0
	152	[  0]	TSETS	 44	0	154	; slot0.isBattleReadyStep = slot44
	153	[  0]	FNEW 	 44		151	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		5	; 	goto 10
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		0	; slot1 = _env["STEP_UNIT_HOVER"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_UNIT_HOVER
		  9	[  0]	JMP  	  0		2	; 	goto 12
		 10	[  0]	KPRI 	  0		1	; slot0 = false
		 11	[  0]	JMP  	  1		1	; 	goto 13
		 12	[  0]	KPRI 	  0		2	; slot0 = true
		 13	[  0]	RET1 	  0		2	; return slot0
	154	[  0]	TSETS	 44	0	152	; slot0.isUnitHoverStep = slot44
	155	[  0]	FNEW 	 44		149	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		5	; 	goto 10
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		0	; slot1 = _env["STEP_PROMOTED_ARCHER"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_PROMOTED_ARCHER
		  9	[  0]	JMP  	  0		2	; 	goto 12
		 10	[  0]	KPRI 	  0		1	; slot0 = false
		 11	[  0]	JMP  	  1		1	; 	goto 13
		 12	[  0]	KPRI 	  0		2	; slot0 = true
		 13	[  0]	RET1 	  0		2	; return slot0
	156	[  0]	TSETS	 44	0	150	; slot0.isPromotedUnitStep = slot44
	157	[  0]	FNEW 	 44		147	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		5	; 	goto 10
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		0	; slot1 = _env["STEP_POSITION"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_POSITION
		  9	[  0]	JMP  	  0		2	; 	goto 12
		 10	[  0]	KPRI 	  0		1	; slot0 = false
		 11	[  0]	JMP  	  1		1	; 	goto 13
		 12	[  0]	KPRI 	  0		2	; slot0 = true
		 13	[  0]	RET1 	  0		2	; return slot0
	158	[  0]	TSETS	 44	0	148	; slot0.isPositionStep = slot44
	159	[  0]	FNEW 	 44		145	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		5	; 	goto 10
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		0	; slot1 = _env["STEP_NUDGE_ACTION"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_NUDGE_ACTION
		  9	[  0]	JMP  	  0		2	; 	goto 12
		 10	[  0]	KPRI 	  0		1	; slot0 = false
		 11	[  0]	JMP  	  1		1	; 	goto 13
		 12	[  0]	KPRI 	  0		2	; slot0 = true
		 13	[  0]	RET1 	  0		2	; return slot0
	160	[  0]	TSETS	 44	0	146	; slot0.isNudgeActionStep = slot44
	161	[  0]	FNEW 	 44		143	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	3	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		10	; 	goto 15
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		1	; slot1 = _env["STEP_ABSORB_BUTTON"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_ABSORB_BUTTON
		  9	[  0]	JMP  	  0		7	; 	goto 17
		 10	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 11	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".step
		 12	[  0]	GGET 	  1		0	; slot1 = _env["STEP_FREE_ABSORB_BUTTON"]
		 13	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_FREE_ABSORB_BUTTON
		 14	[  0]	JMP  	  0		2	; 	goto 17
		 15	[  0]	KPRI 	  0		1	; slot0 = false
		 16	[  0]	JMP  	  1		1	; 	goto 18
		 17	[  0]	KPRI 	  0		2	; slot0 = true
		 18	[  0]	RET1 	  0		2	; return slot0
	162	[  0]	TSETS	 44	0	144	; slot0.isAbsorbButtonStep = slot44
	163	[  0]	FNEW 	 44		141	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		5	; 	goto 10
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		0	; slot1 = _env["STEP_ABSORB_DRAG"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_ABSORB_DRAG
		  9	[  0]	JMP  	  0		2	; 	goto 12
		 10	[  0]	KPRI 	  0		1	; slot0 = false
		 11	[  0]	JMP  	  1		1	; 	goto 13
		 12	[  0]	KPRI 	  0		2	; slot0 = true
		 13	[  0]	RET1 	  0		2	; return slot0
	164	[  0]	TSETS	 44	0	142	; slot0.isAbsorbDragStep = slot44
	165	[  0]	FNEW 	 44		139	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		5	; 	goto 10
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		0	; slot1 = _env["STEP_FREE_ABSORB"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_FREE_ABSORB
		  9	[  0]	JMP  	  0		2	; 	goto 12
		 10	[  0]	KPRI 	  0		1	; slot0 = false
		 11	[  0]	JMP  	  1		1	; 	goto 13
		 12	[  0]	KPRI 	  0		2	; slot0 = true
		 13	[  0]	RET1 	  0		2	; return slot0
	166	[  0]	TSETS	 44	0	140	; slot0.isFreeAbsorbStep = slot44
	167	[  0]	FNEW 	 44		137	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		5	; 	goto 10
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		0	; slot1 = _env["STEP_ABSORB_MODAL"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_ABSORB_MODAL
		  9	[  0]	JMP  	  0		2	; 	goto 12
		 10	[  0]	KPRI 	  0		1	; slot0 = false
		 11	[  0]	JMP  	  1		1	; 	goto 13
		 12	[  0]	KPRI 	  0		2	; slot0 = true
		 13	[  0]	RET1 	  0		2	; return slot0
	168	[  0]	TSETS	 44	0	138	; slot0.isAbsorbModalStep = slot44
	169	[  0]	FNEW 	 44		135	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		5	; 	goto 10
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		0	; slot1 = _env["STEP_IMPRINT_INSPECT"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_IMPRINT_INSPECT
		  9	[  0]	JMP  	  0		2	; 	goto 12
		 10	[  0]	KPRI 	  0		1	; slot0 = false
		 11	[  0]	JMP  	  1		1	; 	goto 13
		 12	[  0]	KPRI 	  0		2	; slot0 = true
		 13	[  0]	RET1 	  0		2	; return slot0
	170	[  0]	TSETS	 44	0	136	; slot0.isImprintInspectStep = slot44
	171	[  0]	FNEW 	 44		133	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		5	; 	goto 10
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		0	; slot1 = _env["STEP_FINAL_READY"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_FINAL_READY
		  9	[  0]	JMP  	  0		2	; 	goto 12
		 10	[  0]	KPRI 	  0		1	; slot0 = false
		 11	[  0]	JMP  	  1		1	; 	goto 13
		 12	[  0]	KPRI 	  0		2	; slot0 = true
		 13	[  0]	RET1 	  0		2	; return slot0
	172	[  0]	TSETS	 44	0	134	; slot0.isFinalReadyStep = slot44
	173	[  0]	FNEW 	 44		131	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		5	; 	goto 10
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		0	; slot1 = _env["STEP_CORE_SELECT"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_CORE_SELECT
		  9	[  0]	JMP  	  0		2	; 	goto 12
		 10	[  0]	KPRI 	  0		1	; slot0 = false
		 11	[  0]	JMP  	  1		1	; 	goto 13
		 12	[  0]	KPRI 	  0		2	; slot0 = true
		 13	[  0]	RET1 	  0		2	; return slot0
	174	[  0]	TSETS	 44	0	132	; slot0.isCoreSelectStep = slot44
	175	[  0]	FNEW 	 44		129	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	4	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		15	; 	goto 20
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	3	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		2	; slot1 = _env["STEP_CLASS_PROMOTION"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_CLASS_PROMOTION
		  9	[  0]	JMP  	  0		12	; 	goto 22
		 10	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 11	[  0]	TGETS	  0	0	3	; slot0 = uv0"unknown".step
		 12	[  0]	GGET 	  1		1	; slot1 = _env["STEP_CLASS_SKILL_HOVER"]
		 13	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_CLASS_SKILL_HOVER
		 14	[  0]	JMP  	  0		7	; 	goto 22
		 15	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 16	[  0]	TGETS	  0	0	3	; slot0 = uv0"unknown".step
		 17	[  0]	GGET 	  1		0	; slot1 = _env["STEP_CLASS_CHOOSE"]
		 18	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_CLASS_CHOOSE
		 19	[  0]	JMP  	  0		2	; 	goto 22
		 20	[  0]	KPRI 	  0		1	; slot0 = false
		 21	[  0]	JMP  	  1		1	; 	goto 23
		 22	[  0]	KPRI 	  0		2	; slot0 = true
		 23	[  0]	RET1 	  0		2	; return slot0
	176	[  0]	TSETS	 44	0	130	; slot0.isClassPromotionStep = slot44
	177	[  0]	FNEW 	 44		127	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		5	; 	goto 10
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		0	; slot1 = _env["STEP_CLASS_SKILL_HOVER"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_CLASS_SKILL_HOVER
		  9	[  0]	JMP  	  0		2	; 	goto 12
		 10	[  0]	KPRI 	  0		1	; slot0 = false
		 11	[  0]	JMP  	  1		1	; 	goto 13
		 12	[  0]	KPRI 	  0		2	; slot0 = true
		 13	[  0]	RET1 	  0		2	; return slot0
	178	[  0]	TSETS	 44	0	128	; slot0.isClassSkillHoverStep = slot44
	179	[  0]	FNEW 	 44		125	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		5	; 	goto 10
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		0	; slot1 = _env["STEP_CLASS_CHOOSE"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_CLASS_CHOOSE
		  9	[  0]	JMP  	  0		2	; 	goto 12
		 10	[  0]	KPRI 	  0		1	; slot0 = false
		 11	[  0]	JMP  	  1		1	; 	goto 13
		 12	[  0]	KPRI 	  0		2	; slot0 = true
		 13	[  0]	RET1 	  0		2	; return slot0
	180	[  0]	TSETS	 44	0	126	; slot0.isClassChooseStep = slot44
	181	[  0]	FNEW 	 44		123	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		5	; 	goto 10
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		0	; slot1 = _env["STEP_SHOP_INTRO"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_SHOP_INTRO
		  9	[  0]	JMP  	  0		2	; 	goto 12
		 10	[  0]	KPRI 	  0		1	; slot0 = false
		 11	[  0]	JMP  	  1		1	; 	goto 13
		 12	[  0]	KPRI 	  0		2	; slot0 = true
		 13	[  0]	RET1 	  0		2	; return slot0
	182	[  0]	TSETS	 44	0	124	; slot0.isShopIntroStep = slot44
	183	[  0]	FNEW 	 44		121	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		5	; 	goto 10
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		0	; slot1 = _env["STEP_SHOP_BUY"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_SHOP_BUY
		  9	[  0]	JMP  	  0		2	; 	goto 12
		 10	[  0]	KPRI 	  0		1	; slot0 = false
		 11	[  0]	JMP  	  1		1	; 	goto 13
		 12	[  0]	KPRI 	  0		2	; slot0 = true
		 13	[  0]	RET1 	  0		2	; return slot0
	184	[  0]	TSETS	 44	0	122	; slot0.isShopBuyStep = slot44
	185	[  0]	FNEW 	 44		119	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		5	; 	goto 10
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		0	; slot1 = _env["STEP_SHOP_RETURN"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_SHOP_RETURN
		  9	[  0]	JMP  	  0		2	; 	goto 12
		 10	[  0]	KPRI 	  0		1	; slot0 = false
		 11	[  0]	JMP  	  1		1	; 	goto 13
		 12	[  0]	KPRI 	  0		2	; slot0 = true
		 13	[  0]	RET1 	  0		2	; return slot0
	186	[  0]	TSETS	 44	0	120	; slot0.isShopReturnStep = slot44
	187	[  0]	FNEW 	 44		117	; N/A:0-0: 0 args, 2 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	4	; slot0 = uv0"unknown".isShopIntroStep
		  3	[  0]	CALL 	  0	2	1	; slot0 = uv0"unknown".isShopIntroStep()
		  4	[  0]	IST  	   		0	; if slot0
		  5	[  0]	JMP  	  0		2	; 	goto 8
		  6	[  0]	KPRI 	  0		1	; slot0 = false
		  7	[  0]	RET1 	  0		2	; return slot0
		  8	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  9	[  0]	GGET 	  1		2	; slot1 = _env["STEP_SHOP_CURRENCY"]
		 10	[  0]	TSETS	  1	0	3	; uv1"unknown".step = STEP_SHOP_CURRENCY
		 11	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 12	[  0]	KSHORT	  1		0	; slot1 = 0
		 13	[  0]	TSETS	  1	0	1	; uv1"unknown".stepT = slot1
		 14	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 15	[  0]	KSHORT	  1		0	; slot1 = 0
		 16	[  0]	TSETS	  1	0	0	; uv1"unknown".stepElapsed = slot1
		 17	[  0]	KPRI 	  0		2	; slot0 = true
		 18	[  0]	RET1 	  0		2	; return slot0
	188	[  0]	TSETS	 44	0	118	; slot0.onShopIntroOpened = slot44
	189	[  0]	FNEW 	 44		115	; N/A:0-0: 1 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	13	; slot1 = uv0"unknown".running
		  3	[  0]	ISF  	   		1	; if not uv0"unknown".running
		  4	[  0]	JMP  	  2		12	; 	goto 17
		  5	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  6	[  0]	TGETS	  1	1	12	; slot1 = uv0"unknown".step
		  7	[  0]	GGET 	  2		11	; slot2 = _env["STEP_SHOP_CURRENCY"]
		  8	[  0]	ISGT 	  2		1	; if STEP_SHOP_CURRENCY > uv0"unknown".step
		  9	[  0]	JMP  	  1		7	; 	goto 17
		 10	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 11	[  0]	TGETS	  1	1	12	; slot1 = uv0"unknown".step
		 12	[  0]	GGET 	  2		10	; slot2 = _env["STEP_SHOP_RETURN"]
		 13	[  0]	ISGT 	  1		2	; if uv0"unknown".step > STEP_SHOP_RETURN
		 14	[  0]	JMP  	  1		2	; 	goto 17
		 15	[  0]	IST  	   		0	; if slot0
		 16	[  0]	JMP  	  1		2	; 	goto 19
		 17	[  0]	KPRI 	  1		1	; slot1 = false
		 18	[  0]	RET1 	  1		2	; return slot1
		 19	[  0]	GGET 	  1		9	; slot1 = _env["pcall"]
		 20	[  0]	GGET 	  3		8	; slot3 = _env["require"]
		 21	[  0]	KSTR 	  4		7	; slot4 = "src.game.item"
		 22	[  0]	CALL 	  1	3	3	; slot1, slot2 = pcall(STEP_SHOP_RETURN, require)
		 23	[  0]	ISF  	   		1	; if not slot1
		 24	[  0]	JMP  	  3		5	; 	goto 30
		 25	[  0]	ISF  	   		2	; if not slot2
		 26	[  0]	JMP  	  3		3	; 	goto 30
		 27	[  0]	TGETS	  3	2	6	; slot3 = slot2.getById
		 28	[  0]	IST  	   		3	; if <unknown table>.getById
		 29	[  0]	JMP  	  3		2	; 	goto 32
		 30	[  0]	KPRI 	  3		1	; slot3 = false
		 31	[  0]	RET1 	  3		2	; return slot3
		 32	[  0]	TGETS	  3	2	6	; slot3 = slot2.getById
		 33	[  0]	KSTR 	  5		5	; slot5 = "SturdyFist"
		 34	[  0]	CALL 	  3	2	2	; slot3 = <unknown table>.getById(slot4)
		 35	[  0]	TGETS	  4	2	6	; slot4 = slot2.getById
		 36	[  0]	KSTR 	  6		4	; slot6 = "SturdyShield"
		 37	[  0]	CALL 	  4	2	2	; slot4 = <unknown table>.getById(slot5)
		 38	[  0]	TGETS	  5	2	6	; slot5 = slot2.getById
		 39	[  0]	KSTR 	  7		3	; slot7 = "FirstAid"
		 40	[  0]	CALL 	  5	2	2	; slot5 = <unknown table>.getById(slot6)
		 41	[  0]	ISF  	   		3	; if not <unknown table>.getById
		 42	[  0]	JMP  	  6		4	; 	goto 47
		 43	[  0]	ISF  	   		4	; if not <unknown table>.getById
		 44	[  0]	JMP  	  6		2	; 	goto 47
		 45	[  0]	IST  	   		5	; if <unknown table>.getById
		 46	[  0]	JMP  	  6		2	; 	goto 49
		 47	[  0]	KPRI 	  6		1	; slot6 = false
		 48	[  0]	RET1 	  6		2	; return slot6
		 49	[  0]	TNEW 	  6		4	; slot6 = new table( array: 4, dict: 1)
		 50	[  0]	TSETB	  3	6	1	; slot6[1] = <unknown table>.getById
		 51	[  0]	TSETB	  4	6	2	; slot6[2] = <unknown table>.getById
		 52	[  0]	TSETB	  5	6	3	; slot6[3] = <unknown table>.getById
		 53	[  0]	TSETS	  6	0	2	; slot0._itemOffers = slot6
		 54	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		 55	[  0]	TSETS	  6	0	1	; slot0._itemShopPurchased = slot6
		 56	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 57	[  0]	KSHORT	  7		1	; slot7 = 1
		 58	[  0]	TSETS	  7	6	0	; uv0"unknown".shopTargetIndex = slot7
		 59	[  0]	KPRI 	  6		2	; slot6 = true
		 60	[  0]	RET1 	  6		2	; return slot6
	190	[  0]	TSETS	 44	0	116	; slot0.prepareShopOffers = slot44
	191	[  0]	FNEW 	 44		113	; N/A:0-0: 3 args, 2 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  2	[  0]	TGETS	  3	3	6	; slot3 = uv0"unknown".isShopBuyStep
		  3	[  0]	CALL 	  3	2	1	; slot3 = uv0"unknown".isShopBuyStep()
		  4	[  0]	IST  	   		3	; if uv0"unknown".isShopBuyStep
		  5	[  0]	JMP  	  3		2	; 	goto 8
		  6	[  0]	KPRI 	  3		1	; slot3 = false
		  7	[  0]	RET1 	  3		2	; return slot3
		  8	[  0]	ISFC 	  3		0	; slot3 = slot0; if not slot0
		  9	[  0]	JMP  	  3		1	; 	goto 11
		 10	[  0]	TGETS	  3	0	5	; slot3 = slot0._tutorialShopOfferRects
		 11	[  0]	ISFC 	  4		3	; slot4 = <unknown table>._tutorialShopOfferRects; if not <unknown table>._tutorialShopOfferRects
		 12	[  0]	JMP  	  4		6	; 	goto 19
		 13	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 14	[  0]	TGETS	  4	4	4	; slot4 = uv1"unknown".shopTargetIndex
		 15	[  0]	IST  	   		4	; if uv1"unknown".shopTargetIndex
		 16	[  0]	JMP  	  5		1	; 	goto 18
		 17	[  0]	KSHORT	  4		1	; slot4 = 1
		 18	[  0]	TGETV	  4	3	4	; slot4 = <unknown table>._tutorialShopOfferRects[slot4]
		 19	[  0]	ISF  	   		4	; if not slot4
		 20	[  0]	JMP  	  5		16	; 	goto 37
		 21	[  0]	TGETS	  5	4	3	; slot5 = slot4.x
		 22	[  0]	ISGT 	  5		1	; if <unknown table>.x > slot1
		 23	[  0]	JMP  	  5		13	; 	goto 37
		 24	[  0]	TGETS	  5	4	3	; slot5 = slot4.x
		 25	[  0]	TGETS	  6	4	2	; slot6 = slot4.w
		 26	[  0]	ADDVV	  5	5	6	; slot5 = <unknown table>.x + <unknown table>.w
		 27	[  0]	ISGT 	  1		5	; if slot1 > slot5
		 28	[  0]	JMP  	  5		8	; 	goto 37
		 29	[  0]	TGETS	  5	4	1	; slot5 = slot4.y
		 30	[  0]	ISGT 	  5		2	; if <unknown table>.y > slot2
		 31	[  0]	JMP  	  5		5	; 	goto 37
		 32	[  0]	TGETS	  5	4	1	; slot5 = slot4.y
		 33	[  0]	TGETS	  6	4	0	; slot6 = slot4.h
		 34	[  0]	ADDVV	  5	5	6	; slot5 = <unknown table>.y + <unknown table>.h
		 35	[  0]	ISLE 	  2		5	; if slot2 <= slot5
		 36	[  0]	JMP  	  5		4	; 	goto 41
		 37	[  0]	KPRI 	  5		1	; slot5 = false
		 38	[  0]	JMP  	  6		3	; 	goto 42
		 39	[  0]	KPRI 	  5		1	; slot5 = false
		 40	[  0]	JMP  	  6		1	; 	goto 42
		 41	[  0]	KPRI 	  5		2	; slot5 = true
		 42	[  0]	RET1 	  5		2	; return slot5
	192	[  0]	TSETS	 44	0	114	; slot0.hitTestShopBuy = slot44
	193	[  0]	FNEW 	 44		111	; N/A:0-0: 2 args, 2 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	8	; slot2 = uv0"unknown".isShopBuyStep
		  3	[  0]	CALL 	  2	2	1	; slot2 = uv0"unknown".isShopBuyStep()
		  4	[  0]	IST  	   		2	; if uv0"unknown".isShopBuyStep
		  5	[  0]	JMP  	  2		2	; 	goto 8
		  6	[  0]	KPRI 	  2		1	; slot2 = false
		  7	[  0]	RET1 	  2		2	; return slot2
		  8	[  0]	ISF  	   		0	; if not slot0
		  9	[  0]	JMP  	  2		13	; 	goto 23
		 10	[  0]	TGETS	  2	0	7	; slot2 = slot0.key
		 11	[  0]	ISNES	  2		6	; if <unknown table>.key ~= "SturdyFist"
		 12	[  0]	JMP  	  2		10	; 	goto 23
		 13	[  0]	GGET 	  2		5	; slot2 = _env["tonumber"]
		 14	[  0]	MOV  	  4		1	; slot4 = slot1
		 15	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 16	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 17	[  0]	TGETS	  3	3	4	; slot3 = uv1"unknown".shopTargetIndex
		 18	[  0]	IST  	   		3	; if uv1"unknown".shopTargetIndex
		 19	[  0]	JMP  	  4		1	; 	goto 21
		 20	[  0]	KSHORT	  3		1	; slot3 = 1
		 21	[  0]	ISEQV	  2		3	; if slot2 == slot3
		 22	[  0]	JMP  	  2		2	; 	goto 25
		 23	[  0]	KPRI 	  2		1	; slot2 = false
		 24	[  0]	RET1 	  2		2	; return slot2
		 25	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 26	[  0]	GGET 	  3		2	; slot3 = _env["STEP_SHOP_ITEM_BOUGHT"]
		 27	[  0]	TSETS	  3	2	3	; uv1"unknown".step = STEP_SHOP_ITEM_BOUGHT
		 28	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 29	[  0]	KSHORT	  3		0	; slot3 = 0
		 30	[  0]	TSETS	  3	2	1	; uv1"unknown".stepT = slot3
		 31	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 32	[  0]	KSHORT	  3		0	; slot3 = 0
		 33	[  0]	TSETS	  3	2	0	; uv1"unknown".stepElapsed = slot3
		 34	[  0]	KPRI 	  2		2	; slot2 = true
		 35	[  0]	RET1 	  2		2	; return slot2
	194	[  0]	TSETS	 44	0	112	; slot0.onShopItemPurchased = slot44
	195	[  0]	FNEW 	 44		109	; N/A:0-0: 0 args, 2 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	4	; slot0 = uv0"unknown".isShopReturnStep
		  3	[  0]	CALL 	  0	2	1	; slot0 = uv0"unknown".isShopReturnStep()
		  4	[  0]	IST  	   		0	; if slot0
		  5	[  0]	JMP  	  0		2	; 	goto 8
		  6	[  0]	KPRI 	  0		1	; slot0 = false
		  7	[  0]	RET1 	  0		2	; return slot0
		  8	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  9	[  0]	GGET 	  1		2	; slot1 = _env["STEP_WAVE_TYPES"]
		 10	[  0]	TSETS	  1	0	3	; uv1"unknown".step = STEP_WAVE_TYPES
		 11	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 12	[  0]	KSHORT	  1		0	; slot1 = 0
		 13	[  0]	TSETS	  1	0	1	; uv1"unknown".stepT = slot1
		 14	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 15	[  0]	KSHORT	  1		0	; slot1 = 0
		 16	[  0]	TSETS	  1	0	0	; uv1"unknown".stepElapsed = slot1
		 17	[  0]	KPRI 	  0		2	; slot0 = true
		 18	[  0]	RET1 	  0		2	; return slot0
	196	[  0]	TSETS	 44	0	110	; slot0.onBattlefieldReturned = slot44
	197	[  0]	FNEW 	 44		107	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		5	; 	goto 10
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		0	; slot1 = _env["STEP_FINAL_READY"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_FINAL_READY
		  9	[  0]	JMP  	  0		2	; 	goto 12
		 10	[  0]	KPRI 	  0		1	; slot0 = false
		 11	[  0]	JMP  	  1		1	; 	goto 13
		 12	[  0]	KPRI 	  0		2	; slot0 = true
		 13	[  0]	RET1 	  0		2	; return slot0
	198	[  0]	TSETS	 44	0	108	; slot0.isFreeRosterControlStep = slot44
	199	[  0]	FNEW 	 44		105	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".running
		  3	[  0]	IST  	   		0	; if uv0"unknown".running
		  4	[  0]	JMP  	  0		2	; 	goto 7
		  5	[  0]	KPRI 	  0		1	; slot0 = false
		  6	[  0]	RET1 	  0		2	; return slot0
		  7	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  8	[  0]	TGETS	  0	0	7	; slot0 = uv0"unknown".step
		  9	[  0]	GGET 	  1		6	; slot1 = _env["STEP_POSITION"]
		 10	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_POSITION
		 11	[  0]	JMP  	  0		32	; 	goto 44
		 12	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 13	[  0]	TGETS	  0	0	7	; slot0 = uv0"unknown".step
		 14	[  0]	GGET 	  1		5	; slot1 = _env["STEP_ABSORB_DRAG"]
		 15	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_ABSORB_DRAG
		 16	[  0]	JMP  	  0		27	; 	goto 44
		 17	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 18	[  0]	TGETS	  0	0	7	; slot0 = uv0"unknown".step
		 19	[  0]	GGET 	  1		4	; slot1 = _env["STEP_FREE_ABSORB"]
		 20	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_FREE_ABSORB
		 21	[  0]	JMP  	  0		22	; 	goto 44
		 22	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 23	[  0]	TGETS	  0	0	7	; slot0 = uv0"unknown".step
		 24	[  0]	GGET 	  1		3	; slot1 = _env["STEP_IMPRINT_INSPECT"]
		 25	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_IMPRINT_INSPECT
		 26	[  0]	JMP  	  0		17	; 	goto 44
		 27	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 28	[  0]	TGETS	  0	0	7	; slot0 = uv0"unknown".step
		 29	[  0]	GGET 	  1		2	; slot1 = _env["STEP_FINAL_READY"]
		 30	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_FINAL_READY
		 31	[  0]	JMP  	  0		12	; 	goto 44
		 32	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 33	[  0]	TGETS	  0	0	7	; slot0 = uv0"unknown".step
		 34	[  0]	GGET 	  1		1	; slot1 = _env["STEP_WAVE_TYPES"]
		 35	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_WAVE_TYPES
		 36	[  0]	JMP  	  0		7	; 	goto 44
		 37	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 38	[  0]	TGETS	  0	0	7	; slot0 = uv0"unknown".step
		 39	[  0]	GGET 	  1		0	; slot1 = _env["STEP_TUTORIAL_COMPLETE"]
		 40	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_TUTORIAL_COMPLETE
		 41	[  0]	JMP  	  0		2	; 	goto 44
		 42	[  0]	KPRI 	  0		1	; slot0 = false
		 43	[  0]	JMP  	  1		1	; 	goto 45
		 44	[  0]	KPRI 	  0		2	; slot0 = true
		 45	[  0]	RET1 	  0		2	; return slot0
	200	[  0]	TSETS	 44	0	106	; slot0.shouldDimMainBackground = slot44
	201	[  0]	FNEW 	 44		103	; N/A:0-0: 0 args, 2 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	3	; slot0 = uv0"unknown".shouldDimMainBackground
		  3	[  0]	CALL 	  0	2	1	; slot0 = uv0"unknown".shouldDimMainBackground()
		  4	[  0]	IST  	   		0	; if slot0
		  5	[  0]	JMP  	  0		2	; 	goto 8
		  6	[  0]	KSHORT	  0		1	; slot0 = 1
		  7	[  0]	RET1 	  0		2	; return slot0
		  8	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  9	[  0]	TGETS	  0	0	2	; slot0 = uv1"unknown".step
		 10	[  0]	GGET 	  1		1	; slot1 = _env["STEP_ABSORB_DRAG"]
		 11	[  0]	ISEQV	  0		1	; if uv1"unknown".step == STEP_ABSORB_DRAG
		 12	[  0]	JMP  	  0		5	; 	goto 18
		 13	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 14	[  0]	TGETS	  0	0	2	; slot0 = uv1"unknown".step
		 15	[  0]	GGET 	  1		0	; slot1 = _env["STEP_FREE_ABSORB"]
		 16	[  0]	ISNEV	  0		1	; if uv1"unknown".step ~= STEP_FREE_ABSORB
		 17	[  0]	JMP  	  0		2	; 	goto 20
		 18	[  0]	KNUM 	  0		0	; slot0 = 0.62
		 19	[  0]	RET1 	  0		2	; return slot0
		 20	[  0]	KNUM 	  0		1	; slot0 = 0.35
		 21	[  0]	RET1 	  0		2	; return slot0
	202	[  0]	TSETS	 44	0	104	; slot0.getMainBackgroundDimAlpha = slot44
	203	[  0]	FNEW 	 44		101	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".isAbsorbModalStep
		  3	[  0]	CALLT	  0		1	; return uv0"unknown".isAbsorbModalStep()
	204	[  0]	TSETS	 44	0	102	; slot0.requiresAbsorbConfirmOnly = slot44
	205	[  0]	FNEW 	 44		99	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	9	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		40	; 	goto 45
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		7	; slot1 = _env["STEP_UNIT_HOVER"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_UNIT_HOVER
		  9	[  0]	JMP  	  0		37	; 	goto 47
		 10	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 11	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".step
		 12	[  0]	GGET 	  1		6	; slot1 = _env["STEP_POSITION"]
		 13	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_POSITION
		 14	[  0]	JMP  	  0		32	; 	goto 47
		 15	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 16	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".step
		 17	[  0]	GGET 	  1		5	; slot1 = _env["STEP_ABSORB_DRAG"]
		 18	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_ABSORB_DRAG
		 19	[  0]	JMP  	  0		27	; 	goto 47
		 20	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 21	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".step
		 22	[  0]	GGET 	  1		4	; slot1 = _env["STEP_FREE_ABSORB"]
		 23	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_FREE_ABSORB
		 24	[  0]	JMP  	  0		22	; 	goto 47
		 25	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 26	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".step
		 27	[  0]	GGET 	  1		3	; slot1 = _env["STEP_IMPRINT_INSPECT"]
		 28	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_IMPRINT_INSPECT
		 29	[  0]	JMP  	  0		17	; 	goto 47
		 30	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 31	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".step
		 32	[  0]	GGET 	  1		2	; slot1 = _env["STEP_FINAL_READY"]
		 33	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_FINAL_READY
		 34	[  0]	JMP  	  0		12	; 	goto 47
		 35	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 36	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".step
		 37	[  0]	GGET 	  1		1	; slot1 = _env["STEP_PROMOTED_ARCHER"]
		 38	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_PROMOTED_ARCHER
		 39	[  0]	JMP  	  0		7	; 	goto 47
		 40	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 41	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".step
		 42	[  0]	GGET 	  1		0	; slot1 = _env["STEP_SHOP_INTRO"]
		 43	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_SHOP_INTRO
		 44	[  0]	JMP  	  0		2	; 	goto 47
		 45	[  0]	KPRI 	  0		1	; slot0 = false
		 46	[  0]	JMP  	  1		1	; 	goto 48
		 47	[  0]	KPRI 	  0		2	; slot0 = true
		 48	[  0]	RET1 	  0		2	; return slot0
	206	[  0]	TSETS	 44	0	100	; slot0.allowsUnitHover = slot44
	207	[  0]	FNEW 	 44		97	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	15	; slot0 = uv0"unknown".running
		  3	[  0]	IST  	   		0	; if uv0"unknown".running
		  4	[  0]	JMP  	  0		2	; 	goto 7
		  5	[  0]	KPRI 	  0		0	; slot0 = nil
		  6	[  0]	RET1 	  0		2	; return slot0
		  7	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  8	[  0]	TGETS	  0	0	14	; slot0 = uv0"unknown".step
		  9	[  0]	GGET 	  1		13	; slot1 = _env["STEP_SLOT"]
		 10	[  0]	ISNEV	  0		1	; if uv0"unknown".step ~= STEP_SLOT
		 11	[  0]	JMP  	  0		2	; 	goto 14
		 12	[  0]	KSTR 	  0		12	; slot0 = "archer"
		 13	[  0]	RET1 	  0		2	; return slot0
		 14	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 15	[  0]	TGETS	  0	0	14	; slot0 = uv0"unknown".step
		 16	[  0]	GGET 	  1		11	; slot1 = _env["STEP_SECOND_SPIN"]
		 17	[  0]	ISNEV	  0		1	; if uv0"unknown".step ~= STEP_SECOND_SPIN
		 18	[  0]	JMP  	  0		2	; 	goto 21
		 19	[  0]	KSTR 	  0		10	; slot0 = "warrior"
		 20	[  0]	RET1 	  0		2	; return slot0
		 21	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 22	[  0]	TGETS	  0	0	14	; slot0 = uv0"unknown".step
		 23	[  0]	GGET 	  1		9	; slot1 = _env["STEP_REWARD_SPIN"]
		 24	[  0]	ISNEV	  0		1	; if uv0"unknown".step ~= STEP_REWARD_SPIN
		 25	[  0]	JMP  	  0		2	; 	goto 28
		 26	[  0]	KSTR 	  0		8	; slot0 = "mage_spear"
		 27	[  0]	RET1 	  0		2	; return slot0
		 28	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 29	[  0]	TGETS	  0	0	14	; slot0 = uv0"unknown".step
		 30	[  0]	GGET 	  1		7	; slot1 = _env["STEP_MORE_SPIN"]
		 31	[  0]	ISNEV	  0		1	; if uv0"unknown".step ~= STEP_MORE_SPIN
		 32	[  0]	JMP  	  0		2	; 	goto 35
		 33	[  0]	KSTR 	  0		6	; slot0 = "nudge_setup"
		 34	[  0]	RET1 	  0		2	; return slot0
		 35	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 36	[  0]	TGETS	  0	0	14	; slot0 = uv0"unknown".step
		 37	[  0]	GGET 	  1		5	; slot1 = _env["STEP_CORE_SPIN"]
		 38	[  0]	ISNEV	  0		1	; if uv0"unknown".step ~= STEP_CORE_SPIN
		 39	[  0]	JMP  	  0		2	; 	goto 42
		 40	[  0]	KSTR 	  0		4	; slot0 = "core_no_win"
		 41	[  0]	RET1 	  0		2	; return slot0
		 42	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 43	[  0]	TGETS	  0	0	14	; slot0 = uv0"unknown".step
		 44	[  0]	GGET 	  1		3	; slot1 = _env["STEP_POST_CORE_SLOT"]
		 45	[  0]	ISNEV	  0		1	; if uv0"unknown".step ~= STEP_POST_CORE_SLOT
		 46	[  0]	JMP  	  0		2	; 	goto 49
		 47	[  0]	KSTR 	  0		2	; slot0 = "post_core_archer"
		 48	[  0]	RET1 	  0		2	; return slot0
		 49	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 50	[  0]	TGETS	  0	0	14	; slot0 = uv0"unknown".step
		 51	[  0]	GGET 	  1		1	; slot1 = _env["STEP_POST_CORE_SECOND_SPIN"]
		 52	[  0]	ISNEV	  0		1	; if uv0"unknown".step ~= STEP_POST_CORE_SECOND_SPIN
		 53	[  0]	JMP  	  0		2	; 	goto 56
		 54	[  0]	KSTR 	  0		0	; slot0 = "post_core_spears"
		 55	[  0]	RET1 	  0		2	; return slot0
		 56	[  0]	KPRI 	  0		0	; slot0 = nil
		 57	[  0]	RET1 	  0		2	; return slot0
	208	[  0]	TSETS	 44	0	98	; slot0.getGuidedSpinKind = slot44
	209	[  0]	FNEW 	 44		95	; N/A:0-0: 0 args, 2 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	17	; slot0 = uv0"unknown".step
		  3	[  0]	GGET 	  1		16	; slot1 = _env["STEP_ARCHER_WIN"]
		  4	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_ARCHER_WIN
		  5	[  0]	JMP  	  0		72	; 	goto 78
		  6	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  7	[  0]	TGETS	  0	0	17	; slot0 = uv0"unknown".step
		  8	[  0]	GGET 	  1		15	; slot1 = _env["STEP_WARRIOR_WIN"]
		  9	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_WARRIOR_WIN
		 10	[  0]	JMP  	  0		67	; 	goto 78
		 11	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 12	[  0]	TGETS	  0	0	17	; slot0 = uv0"unknown".step
		 13	[  0]	GGET 	  1		14	; slot1 = _env["STEP_WAVE_REWARD"]
		 14	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_WAVE_REWARD
		 15	[  0]	JMP  	  0		62	; 	goto 78
		 16	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 17	[  0]	TGETS	  0	0	17	; slot0 = uv0"unknown".step
		 18	[  0]	GGET 	  1		13	; slot1 = _env["STEP_NUDGE_MISS"]
		 19	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_NUDGE_MISS
		 20	[  0]	JMP  	  0		57	; 	goto 78
		 21	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 22	[  0]	TGETS	  0	0	17	; slot0 = uv0"unknown".step
		 23	[  0]	GGET 	  1		12	; slot1 = _env["STEP_NUDGE_WIN"]
		 24	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_NUDGE_WIN
		 25	[  0]	JMP  	  0		52	; 	goto 78
		 26	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 27	[  0]	TGETS	  0	0	17	; slot0 = uv0"unknown".step
		 28	[  0]	GGET 	  1		11	; slot1 = _env["STEP_CORE_COUNTER"]
		 29	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_CORE_COUNTER
		 30	[  0]	JMP  	  0		47	; 	goto 78
		 31	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 32	[  0]	TGETS	  0	0	17	; slot0 = uv0"unknown".step
		 33	[  0]	GGET 	  1		10	; slot1 = _env["STEP_POST_CORE_ARCHER_WIN"]
		 34	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_POST_CORE_ARCHER_WIN
		 35	[  0]	JMP  	  0		42	; 	goto 78
		 36	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 37	[  0]	TGETS	  0	0	17	; slot0 = uv0"unknown".step
		 38	[  0]	GGET 	  1		9	; slot1 = _env["STEP_SLOT_BROKEN"]
		 39	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_SLOT_BROKEN
		 40	[  0]	JMP  	  0		37	; 	goto 78
		 41	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 42	[  0]	TGETS	  0	0	17	; slot0 = uv0"unknown".step
		 43	[  0]	GGET 	  1		8	; slot1 = _env["STEP_MAX_UNIT_NOTICE"]
		 44	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_MAX_UNIT_NOTICE
		 45	[  0]	JMP  	  0		32	; 	goto 78
		 46	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 47	[  0]	TGETS	  0	0	17	; slot0 = uv0"unknown".step
		 48	[  0]	GGET 	  1		7	; slot1 = _env["STEP_CLASS_PROMOTION"]
		 49	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_CLASS_PROMOTION
		 50	[  0]	JMP  	  0		27	; 	goto 78
		 51	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 52	[  0]	TGETS	  0	0	17	; slot0 = uv0"unknown".step
		 53	[  0]	GGET 	  1		6	; slot1 = _env["STEP_PROMOTED_ARCHER"]
		 54	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_PROMOTED_ARCHER
		 55	[  0]	JMP  	  0		22	; 	goto 78
		 56	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 57	[  0]	TGETS	  0	0	17	; slot0 = uv0"unknown".step
		 58	[  0]	GGET 	  1		5	; slot1 = _env["STEP_SHOP_CURRENCY"]
		 59	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_SHOP_CURRENCY
		 60	[  0]	JMP  	  0		17	; 	goto 78
		 61	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 62	[  0]	TGETS	  0	0	17	; slot0 = uv0"unknown".step
		 63	[  0]	GGET 	  1		4	; slot1 = _env["STEP_SHOP_ITEM_BOUGHT"]
		 64	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_SHOP_ITEM_BOUGHT
		 65	[  0]	JMP  	  0		12	; 	goto 78
		 66	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 67	[  0]	TGETS	  0	0	17	; slot0 = uv0"unknown".step
		 68	[  0]	GGET 	  1		3	; slot1 = _env["STEP_WAVE_TYPES"]
		 69	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_WAVE_TYPES
		 70	[  0]	JMP  	  0		7	; 	goto 78
		 71	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 72	[  0]	TGETS	  0	0	17	; slot0 = uv0"unknown".step
		 73	[  0]	GGET 	  1		2	; slot1 = _env["STEP_TUTORIAL_COMPLETE"]
		 74	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_TUTORIAL_COMPLETE
		 75	[  0]	JMP  	  0		2	; 	goto 78
		 76	[  0]	KPRI 	  0		1	; slot0 = false
		 77	[  0]	JMP  	  1		1	; 	goto 79
		 78	[  0]	KPRI 	  0		2	; slot0 = true
		 79	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 80	[  0]	TGETS	  1	1	1	; slot1 = uv0"unknown".running
		 81	[  0]	ISNEP	  1		2	; if uv0"unknown".running ~= true
		 82	[  0]	JMP  	  1		11	; 	goto 94
		 83	[  0]	ISFC 	  1		0	; slot1 = slot0; if not slot0
		 84	[  0]	JMP  	  1		12	; 	goto 97
		 85	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 86	[  0]	TGETS	  1	1	0	; slot1 = uv0"unknown".stepElapsed
		 87	[  0]	IST  	   		1	; if uv0"unknown".stepElapsed
		 88	[  0]	JMP  	  2		1	; 	goto 90
		 89	[  0]	KSHORT	  1		0	; slot1 = 0
		 90	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 91	[  0]	ADDVN	  2	2	0	; slot2 = uv1"unknown" + 0.35
		 92	[  0]	ISLE 	  2		1	; if slot2 <= slot1
		 93	[  0]	JMP  	  1		2	; 	goto 96
		 94	[  0]	KPRI 	  1		1	; slot1 = false
		 95	[  0]	JMP  	  2		1	; 	goto 97
		 96	[  0]	KPRI 	  1		2	; slot1 = true
		 97	[  0]	RET1 	  1		2	; return slot1
	210	[  0]	TSETS	 44	0	96	; slot0.canContinueFromWin = slot44
	211	[  0]	FNEW 	 44		93	; N/A:0-0: 0 args, 2 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	39	; slot0 = uv0"unknown".canContinueFromWin
		  3	[  0]	CALL 	  0	2	1	; slot0 = uv0"unknown".canContinueFromWin()
		  4	[  0]	IST  	   		0	; if slot0
		  5	[  0]	JMP  	  0		2	; 	goto 8
		  6	[  0]	KPRI 	  0		1	; slot0 = false
		  7	[  0]	RET1 	  0		2	; return slot0
		  8	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  9	[  0]	TGETS	  0	0	38	; slot0 = uv1"unknown".step
		 10	[  0]	GGET 	  1		37	; slot1 = _env["STEP_ARCHER_WIN"]
		 11	[  0]	ISNEV	  0		1	; if uv1"unknown".step ~= STEP_ARCHER_WIN
		 12	[  0]	JMP  	  0		7	; 	goto 20
		 13	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 14	[  0]	GGET 	  1		36	; slot1 = _env["STEP_SECOND_SPIN"]
		 15	[  0]	TSETS	  1	0	38	; uv1"unknown".step = STEP_SECOND_SPIN
		 16	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 17	[  0]	KSHORT	  1		0	; slot1 = 0
		 18	[  0]	TSETS	  1	0	35	; uv1"unknown".stepT = slot1
		 19	[  0]	JMP  	  0		182	; 	goto 202
		 20	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 21	[  0]	TGETS	  0	0	38	; slot0 = uv1"unknown".step
		 22	[  0]	GGET 	  1		34	; slot1 = _env["STEP_WARRIOR_WIN"]
		 23	[  0]	ISNEV	  0		1	; if uv1"unknown".step ~= STEP_WARRIOR_WIN
		 24	[  0]	JMP  	  0		16	; 	goto 41
		 25	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 26	[  0]	GGET 	  1		33	; slot1 = _env["STEP_UNIT_HOVER"]
		 27	[  0]	TSETS	  1	0	38	; uv1"unknown".step = STEP_UNIT_HOVER
		 28	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 29	[  0]	KSHORT	  1		0	; slot1 = 0
		 30	[  0]	TSETS	  1	0	32	; uv1"unknown".unitHoverT = slot1
		 31	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 32	[  0]	KSHORT	  1		0	; slot1 = 0
		 33	[  0]	TSETS	  1	0	31	; uv1"unknown".unitHoverCount = slot1
		 34	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 35	[  0]	KPRI 	  1		1	; slot1 = false
		 36	[  0]	TSETS	  1	0	30	; uv1"unknown".unitHoverWasOver = slot1
		 37	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 38	[  0]	KSHORT	  1		1	; slot1 = 1
		 39	[  0]	TSETS	  1	0	35	; uv1"unknown".stepT = slot1
		 40	[  0]	JMP  	  0		161	; 	goto 202
		 41	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 42	[  0]	TGETS	  0	0	38	; slot0 = uv1"unknown".step
		 43	[  0]	GGET 	  1		29	; slot1 = _env["STEP_WAVE_REWARD"]
		 44	[  0]	ISNEV	  0		1	; if uv1"unknown".step ~= STEP_WAVE_REWARD
		 45	[  0]	JMP  	  0		7	; 	goto 53
		 46	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 47	[  0]	GGET 	  1		28	; slot1 = _env["STEP_REWARD_SPIN"]
		 48	[  0]	TSETS	  1	0	38	; uv1"unknown".step = STEP_REWARD_SPIN
		 49	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 50	[  0]	KSHORT	  1		0	; slot1 = 0
		 51	[  0]	TSETS	  1	0	35	; uv1"unknown".stepT = slot1
		 52	[  0]	JMP  	  0		149	; 	goto 202
		 53	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 54	[  0]	TGETS	  0	0	38	; slot0 = uv1"unknown".step
		 55	[  0]	GGET 	  1		27	; slot1 = _env["STEP_NUDGE_MISS"]
		 56	[  0]	ISNEV	  0		1	; if uv1"unknown".step ~= STEP_NUDGE_MISS
		 57	[  0]	JMP  	  0		7	; 	goto 65
		 58	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 59	[  0]	GGET 	  1		26	; slot1 = _env["STEP_NUDGE_ACTION"]
		 60	[  0]	TSETS	  1	0	38	; uv1"unknown".step = STEP_NUDGE_ACTION
		 61	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 62	[  0]	KSHORT	  1		0	; slot1 = 0
		 63	[  0]	TSETS	  1	0	35	; uv1"unknown".stepT = slot1
		 64	[  0]	JMP  	  0		137	; 	goto 202
		 65	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 66	[  0]	TGETS	  0	0	38	; slot0 = uv1"unknown".step
		 67	[  0]	GGET 	  1		25	; slot1 = _env["STEP_NUDGE_WIN"]
		 68	[  0]	ISNEV	  0		1	; if uv1"unknown".step ~= STEP_NUDGE_WIN
		 69	[  0]	JMP  	  0		10	; 	goto 80
		 70	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 71	[  0]	KPRI 	  1		1	; slot1 = false
		 72	[  0]	TSETS	  1	0	24	; uv1"unknown".nudgePressed = slot1
		 73	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 74	[  0]	GGET 	  1		23	; slot1 = _env["STEP_ABSORB_BUTTON"]
		 75	[  0]	TSETS	  1	0	38	; uv1"unknown".step = STEP_ABSORB_BUTTON
		 76	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 77	[  0]	KSHORT	  1		0	; slot1 = 0
		 78	[  0]	TSETS	  1	0	35	; uv1"unknown".stepT = slot1
		 79	[  0]	JMP  	  0		122	; 	goto 202
		 80	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 81	[  0]	TGETS	  0	0	38	; slot0 = uv1"unknown".step
		 82	[  0]	GGET 	  1		22	; slot1 = _env["STEP_CORE_COUNTER"]
		 83	[  0]	ISNEV	  0		1	; if uv1"unknown".step ~= STEP_CORE_COUNTER
		 84	[  0]	JMP  	  0		7	; 	goto 92
		 85	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 86	[  0]	GGET 	  1		21	; slot1 = _env["STEP_CORE_SPIN"]
		 87	[  0]	TSETS	  1	0	38	; uv1"unknown".step = STEP_CORE_SPIN
		 88	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 89	[  0]	KSHORT	  1		0	; slot1 = 0
		 90	[  0]	TSETS	  1	0	35	; uv1"unknown".stepT = slot1
		 91	[  0]	JMP  	  0		110	; 	goto 202
		 92	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 93	[  0]	TGETS	  0	0	38	; slot0 = uv1"unknown".step
		 94	[  0]	GGET 	  1		20	; slot1 = _env["STEP_POST_CORE_ARCHER_WIN"]
		 95	[  0]	ISNEV	  0		1	; if uv1"unknown".step ~= STEP_POST_CORE_ARCHER_WIN
		 96	[  0]	JMP  	  0		7	; 	goto 104
		 97	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 98	[  0]	GGET 	  1		19	; slot1 = _env["STEP_POST_CORE_SECOND_SPIN"]
		 99	[  0]	TSETS	  1	0	38	; uv1"unknown".step = STEP_POST_CORE_SECOND_SPIN
		100	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		101	[  0]	KSHORT	  1		0	; slot1 = 0
		102	[  0]	TSETS	  1	0	35	; uv1"unknown".stepT = slot1
		103	[  0]	JMP  	  0		98	; 	goto 202
		104	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		105	[  0]	TGETS	  0	0	38	; slot0 = uv1"unknown".step
		106	[  0]	GGET 	  1		18	; slot1 = _env["STEP_SLOT_BROKEN"]
		107	[  0]	ISNEV	  0		1	; if uv1"unknown".step ~= STEP_SLOT_BROKEN
		108	[  0]	JMP  	  0		7	; 	goto 116
		109	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		110	[  0]	GGET 	  1		17	; slot1 = _env["STEP_MAX_UNIT_NOTICE"]
		111	[  0]	TSETS	  1	0	38	; uv1"unknown".step = STEP_MAX_UNIT_NOTICE
		112	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		113	[  0]	KSHORT	  1		0	; slot1 = 0
		114	[  0]	TSETS	  1	0	35	; uv1"unknown".stepT = slot1
		115	[  0]	JMP  	  0		86	; 	goto 202
		116	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		117	[  0]	TGETS	  0	0	38	; slot0 = uv1"unknown".step
		118	[  0]	GGET 	  1		17	; slot1 = _env["STEP_MAX_UNIT_NOTICE"]
		119	[  0]	ISNEV	  0		1	; if uv1"unknown".step ~= STEP_MAX_UNIT_NOTICE
		120	[  0]	JMP  	  0		7	; 	goto 128
		121	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		122	[  0]	GGET 	  1		16	; slot1 = _env["STEP_FREE_ABSORB_BUTTON"]
		123	[  0]	TSETS	  1	0	38	; uv1"unknown".step = STEP_FREE_ABSORB_BUTTON
		124	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		125	[  0]	KSHORT	  1		0	; slot1 = 0
		126	[  0]	TSETS	  1	0	35	; uv1"unknown".stepT = slot1
		127	[  0]	JMP  	  0		74	; 	goto 202
		128	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		129	[  0]	TGETS	  0	0	38	; slot0 = uv1"unknown".step
		130	[  0]	GGET 	  1		15	; slot1 = _env["STEP_CLASS_PROMOTION"]
		131	[  0]	ISNEV	  0		1	; if uv1"unknown".step ~= STEP_CLASS_PROMOTION
		132	[  0]	JMP  	  0		7	; 	goto 140
		133	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		134	[  0]	GGET 	  1		14	; slot1 = _env["STEP_CLASS_CHOOSE"]
		135	[  0]	TSETS	  1	0	38	; uv1"unknown".step = STEP_CLASS_CHOOSE
		136	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		137	[  0]	KSHORT	  1		0	; slot1 = 0
		138	[  0]	TSETS	  1	0	35	; uv1"unknown".stepT = slot1
		139	[  0]	JMP  	  0		62	; 	goto 202
		140	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		141	[  0]	TGETS	  0	0	38	; slot0 = uv1"unknown".step
		142	[  0]	GGET 	  1		13	; slot1 = _env["STEP_PROMOTED_ARCHER"]
		143	[  0]	ISNEV	  0		1	; if uv1"unknown".step ~= STEP_PROMOTED_ARCHER
		144	[  0]	JMP  	  0		7	; 	goto 152
		145	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		146	[  0]	GGET 	  1		12	; slot1 = _env["STEP_SHOP_INTRO"]
		147	[  0]	TSETS	  1	0	38	; uv1"unknown".step = STEP_SHOP_INTRO
		148	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		149	[  0]	KSHORT	  1		0	; slot1 = 0
		150	[  0]	TSETS	  1	0	35	; uv1"unknown".stepT = slot1
		151	[  0]	JMP  	  0		50	; 	goto 202
		152	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		153	[  0]	TGETS	  0	0	38	; slot0 = uv1"unknown".step
		154	[  0]	GGET 	  1		11	; slot1 = _env["STEP_SHOP_CURRENCY"]
		155	[  0]	ISNEV	  0		1	; if uv1"unknown".step ~= STEP_SHOP_CURRENCY
		156	[  0]	JMP  	  0		7	; 	goto 164
		157	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		158	[  0]	GGET 	  1		10	; slot1 = _env["STEP_SHOP_BUY"]
		159	[  0]	TSETS	  1	0	38	; uv1"unknown".step = STEP_SHOP_BUY
		160	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		161	[  0]	KSHORT	  1		0	; slot1 = 0
		162	[  0]	TSETS	  1	0	35	; uv1"unknown".stepT = slot1
		163	[  0]	JMP  	  0		38	; 	goto 202
		164	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		165	[  0]	TGETS	  0	0	38	; slot0 = uv1"unknown".step
		166	[  0]	GGET 	  1		9	; slot1 = _env["STEP_SHOP_ITEM_BOUGHT"]
		167	[  0]	ISNEV	  0		1	; if uv1"unknown".step ~= STEP_SHOP_ITEM_BOUGHT
		168	[  0]	JMP  	  0		7	; 	goto 176
		169	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		170	[  0]	GGET 	  1		8	; slot1 = _env["STEP_SHOP_RETURN"]
		171	[  0]	TSETS	  1	0	38	; uv1"unknown".step = STEP_SHOP_RETURN
		172	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		173	[  0]	KSHORT	  1		0	; slot1 = 0
		174	[  0]	TSETS	  1	0	35	; uv1"unknown".stepT = slot1
		175	[  0]	JMP  	  0		26	; 	goto 202
		176	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		177	[  0]	TGETS	  0	0	38	; slot0 = uv1"unknown".step
		178	[  0]	GGET 	  1		7	; slot1 = _env["STEP_WAVE_TYPES"]
		179	[  0]	ISNEV	  0		1	; if uv1"unknown".step ~= STEP_WAVE_TYPES
		180	[  0]	JMP  	  0		7	; 	goto 188
		181	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		182	[  0]	GGET 	  1		6	; slot1 = _env["STEP_TUTORIAL_COMPLETE"]
		183	[  0]	TSETS	  1	0	38	; uv1"unknown".step = STEP_TUTORIAL_COMPLETE
		184	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		185	[  0]	KSHORT	  1		0	; slot1 = 0
		186	[  0]	TSETS	  1	0	35	; uv1"unknown".stepT = slot1
		187	[  0]	JMP  	  0		14	; 	goto 202
		188	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		189	[  0]	TGETS	  0	0	38	; slot0 = uv1"unknown".step
		190	[  0]	GGET 	  1		6	; slot1 = _env["STEP_TUTORIAL_COMPLETE"]
		191	[  0]	ISNEV	  0		1	; if uv1"unknown".step ~= STEP_TUTORIAL_COMPLETE
		192	[  0]	JMP  	  0		9	; 	goto 202
		193	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		194	[  0]	TGETS	  0	0	5	; slot0 = uv0"unknown".stop
		195	[  0]	GGET 	  2		4	; slot2 = _env["rawget"]
		196	[  0]	GGET 	  4		3	; slot4 = _env["_G"]
		197	[  0]	KSTR 	  5		2	; slot5 = "ui"
		198	[  0]	CALL 	  2	0	3	; MULTRES = rawget(slot3, _G)
		199	[  0]	CALLM	  0	1	0	;  = uv0"unknown".stop(, ...MULTRES)
		200	[  0]	KSTR 	  0		1	; slot0 = "complete"
		201	[  0]	RET1 	  0		2	; return slot0
		202	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		203	[  0]	KSHORT	  1		0	; slot1 = 0
		204	[  0]	TSETS	  1	0	0	; uv1"unknown".stepElapsed = slot1
		205	[  0]	KPRI 	  0		2	; slot0 = true
		206	[  0]	RET1 	  0		2	; return slot0
	212	[  0]	TSETS	 44	0	94	; slot0.continueFromWin = slot44
	213	[  0]	FNEW 	 44		91	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	9	; slot0 = uv0"unknown".running
		  3	[  0]	ISNEP	  0		2	; if uv0"unknown".running ~= true
		  4	[  0]	JMP  	  0		39	; 	goto 44
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".step
		  7	[  0]	GGET 	  1		7	; slot1 = _env["STEP_SLOT"]
		  8	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_SLOT
		  9	[  0]	JMP  	  0		30	; 	goto 40
		 10	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 11	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".step
		 12	[  0]	GGET 	  1		6	; slot1 = _env["STEP_SECOND_SPIN"]
		 13	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_SECOND_SPIN
		 14	[  0]	JMP  	  0		25	; 	goto 40
		 15	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 16	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".step
		 17	[  0]	GGET 	  1		5	; slot1 = _env["STEP_REWARD_SPIN"]
		 18	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_REWARD_SPIN
		 19	[  0]	JMP  	  0		20	; 	goto 40
		 20	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 21	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".step
		 22	[  0]	GGET 	  1		4	; slot1 = _env["STEP_MORE_SPIN"]
		 23	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_MORE_SPIN
		 24	[  0]	JMP  	  0		15	; 	goto 40
		 25	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 26	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".step
		 27	[  0]	GGET 	  1		3	; slot1 = _env["STEP_CORE_SPIN"]
		 28	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_CORE_SPIN
		 29	[  0]	JMP  	  0		10	; 	goto 40
		 30	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 31	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".step
		 32	[  0]	GGET 	  1		2	; slot1 = _env["STEP_POST_CORE_SLOT"]
		 33	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_POST_CORE_SLOT
		 34	[  0]	JMP  	  0		5	; 	goto 40
		 35	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 36	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".step
		 37	[  0]	GGET 	  1		1	; slot1 = _env["STEP_POST_CORE_SECOND_SPIN"]
		 38	[  0]	ISNEV	  0		1	; if uv0"unknown".step ~= STEP_POST_CORE_SECOND_SPIN
		 39	[  0]	JMP  	  0		4	; 	goto 44
		 40	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 41	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".spinStarted
		 42	[  0]	ISNEP	  0		2	; if uv0"unknown".spinStarted ~= true
		 43	[  0]	JMP  	  0		2	; 	goto 46
		 44	[  0]	KPRI 	  0		1	; slot0 = false
		 45	[  0]	JMP  	  1		1	; 	goto 47
		 46	[  0]	KPRI 	  0		2	; slot0 = true
		 47	[  0]	RET1 	  0		2	; return slot0
	214	[  0]	TSETS	 44	0	92	; slot0.canSpin = slot44
	215	[  0]	FNEW 	 44		89	; N/A:0-0: 0 args, 2 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		ktable#2 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	11	; slot0 = uv0"unknown".canSpin
		  3	[  0]	CALL 	  0	2	1	; slot0 = uv0"unknown".canSpin()
		  4	[  0]	IST  	   		0	; if slot0
		  5	[  0]	JMP  	  0		2	; 	goto 8
		  6	[  0]	KPRI 	  0		0	; slot0 = nil
		  7	[  0]	RET1 	  0		2	; return slot0
		  8	[  0]	KSHORT	  0		0	; slot0 = 0
		  9	[  0]	GGET 	  1		10	; slot1 = _env["love"]
		 10	[  0]	ISF  	   		1	; if not love
		 11	[  0]	JMP  	  2		15	; 	goto 27
		 12	[  0]	GGET 	  1		10	; slot1 = _env["love"]
		 13	[  0]	TGETS	  1	1	9	; slot1 = love.timer
		 14	[  0]	ISF  	   		1	; if not love.timer
		 15	[  0]	JMP  	  2		11	; 	goto 27
		 16	[  0]	GGET 	  1		10	; slot1 = _env["love"]
		 17	[  0]	TGETS	  1	1	9	; slot1 = love.timer
		 18	[  0]	TGETS	  1	1	8	; slot1 = love.timer.getTime
		 19	[  0]	ISF  	   		1	; if not love.timer.getTime
		 20	[  0]	JMP  	  2		6	; 	goto 27
		 21	[  0]	GGET 	  1		10	; slot1 = _env["love"]
		 22	[  0]	TGETS	  1	1	9	; slot1 = love.timer
		 23	[  0]	TGETS	  1	1	8	; slot1 = love.timer.getTime
		 24	[  0]	CALL 	  1	2	1	; slot1 = love.timer.getTime()
		 25	[  0]	MOV  	  0		1	; slot0 = slot1
		 26	[  0]	JMP  	  1		9	; 	goto 36
		 27	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 28	[  0]	TGETS	  1	1	7	; slot1 = uv1"unknown".stepElapsed
		 29	[  0]	ISTC 	  0		1	; slot0 = uv1"unknown".stepElapsed; if uv1"unknown".stepElapsed
		 30	[  0]	JMP  	  2		5	; 	goto 36
		 31	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 32	[  0]	TGETS	  1	1	6	; slot1 = uv1"unknown".stepT
		 33	[  0]	ISTC 	  0		1	; slot0 = uv1"unknown".stepT; if uv1"unknown".stepT
		 34	[  0]	JMP  	  2		1	; 	goto 36
		 35	[  0]	KSHORT	  0		0	; slot0 = 0
		 36	[  0]	GGET 	  1		5	; slot1 = _env["math"]
		 37	[  0]	TGETS	  1	1	4	; slot1 = math.sin
		 38	[  0]	GGET 	  3		5	; slot3 = _env["math"]
		 39	[  0]	TGETS	  3	3	3	; slot3 = math.pi
		 40	[  0]	MULVV	  3	0	3	; slot3 = slot0 * math.pi
		 41	[  0]	MULVN	  3	3	0	; slot3 = slot3 * 2
		 42	[  0]	MULVN	  3	3	1	; slot3 = slot3 * 1.35
		 43	[  0]	CALL 	  1	2	2	; slot1 = math.sin(slot2)
		 44	[  0]	MULNV	  1	1	2	; slot1 = 0.5 * slot1
		 45	[  0]	ADDNV	  1	1	2	; slot1 = 0.5 + slot1
		 46	[  0]	TDUP 	  2		2	; slot2 = copy table#k2
		 47	[  0]	MULNV	  3	1	2	; slot3 = 0.5 * slot1
		 48	[  0]	ADDNV	  3	3	3	; slot3 = 0.45 + slot3
		 49	[  0]	TSETS	  3	2	1	; slot2.alpha = slot3
		 50	[  0]	MULNV	  3	1	4	; slot3 = 0.8 * slot1
		 51	[  0]	ADDNV	  3	3	5	; slot3 = 1.8 + slot3
		 52	[  0]	TSETS	  3	2	0	; slot2.radius = slot3
		 53	[  0]	RET1 	  2		2	; return slot2
	216	[  0]	TSETS	 44	0	90	; slot0.getSpinStickOutlinePulse = slot44
	217	[  0]	FNEW 	 44		87	; N/A:0-0: 0 args, 2 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	18	; slot0 = uv0"unknown".canSpin
		  3	[  0]	CALL 	  0	2	1	; slot0 = uv0"unknown".canSpin()
		  4	[  0]	IST  	   		0	; if slot0
		  5	[  0]	JMP  	  0		2	; 	goto 8
		  6	[  0]	KPRI 	  0		1	; slot0 = false
		  7	[  0]	RET1 	  0		2	; return slot0
		  8	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  9	[  0]	TGETS	  0	0	17	; slot0 = uv1"unknown".step
		 10	[  0]	GGET 	  1		16	; slot1 = _env["STEP_SECOND_SPIN"]
		 11	[  0]	ISEQV	  0		1	; if uv1"unknown".step == STEP_SECOND_SPIN
		 12	[  0]	JMP  	  0		2	; 	goto 15
		 13	[  0]	KPRI 	  0		1	; slot0 = false
		 14	[  0]	JMP  	  1		1	; 	goto 16
		 15	[  0]	KPRI 	  0		2	; slot0 = true
		 16	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 17	[  0]	TGETS	  1	1	17	; slot1 = uv1"unknown".step
		 18	[  0]	GGET 	  2		15	; slot2 = _env["STEP_REWARD_SPIN"]
		 19	[  0]	ISEQV	  1		2	; if uv1"unknown".step == STEP_REWARD_SPIN
		 20	[  0]	JMP  	  1		2	; 	goto 23
		 21	[  0]	KPRI 	  1		1	; slot1 = false
		 22	[  0]	JMP  	  2		1	; 	goto 24
		 23	[  0]	KPRI 	  1		2	; slot1 = true
		 24	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 25	[  0]	TGETS	  2	2	17	; slot2 = uv1"unknown".step
		 26	[  0]	GGET 	  3		14	; slot3 = _env["STEP_MORE_SPIN"]
		 27	[  0]	ISEQV	  2		3	; if uv1"unknown".step == STEP_MORE_SPIN
		 28	[  0]	JMP  	  2		2	; 	goto 31
		 29	[  0]	KPRI 	  2		1	; slot2 = false
		 30	[  0]	JMP  	  3		1	; 	goto 32
		 31	[  0]	KPRI 	  2		2	; slot2 = true
		 32	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 33	[  0]	TGETS	  3	3	17	; slot3 = uv1"unknown".step
		 34	[  0]	GGET 	  4		13	; slot4 = _env["STEP_CORE_SPIN"]
		 35	[  0]	ISEQV	  3		4	; if uv1"unknown".step == STEP_CORE_SPIN
		 36	[  0]	JMP  	  3		2	; 	goto 39
		 37	[  0]	KPRI 	  3		1	; slot3 = false
		 38	[  0]	JMP  	  4		1	; 	goto 40
		 39	[  0]	KPRI 	  3		2	; slot3 = true
		 40	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 41	[  0]	TGETS	  4	4	17	; slot4 = uv1"unknown".step
		 42	[  0]	GGET 	  5		12	; slot5 = _env["STEP_POST_CORE_SLOT"]
		 43	[  0]	ISEQV	  4		5	; if uv1"unknown".step == STEP_POST_CORE_SLOT
		 44	[  0]	JMP  	  4		2	; 	goto 47
		 45	[  0]	KPRI 	  4		1	; slot4 = false
		 46	[  0]	JMP  	  5		1	; 	goto 48
		 47	[  0]	KPRI 	  4		2	; slot4 = true
		 48	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 49	[  0]	TGETS	  5	5	17	; slot5 = uv1"unknown".step
		 50	[  0]	GGET 	  6		11	; slot6 = _env["STEP_POST_CORE_SECOND_SPIN"]
		 51	[  0]	ISEQV	  5		6	; if uv1"unknown".step == STEP_POST_CORE_SECOND_SPIN
		 52	[  0]	JMP  	  5		2	; 	goto 55
		 53	[  0]	KPRI 	  5		1	; slot5 = false
		 54	[  0]	JMP  	  6		1	; 	goto 56
		 55	[  0]	KPRI 	  5		2	; slot5 = true
		 56	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 57	[  0]	KPRI 	  7		2	; slot7 = true
		 58	[  0]	TSETS	  7	6	10	; uv1"unknown".spinStarted = slot7
		 59	[  0]	ISF  	   		2	; if not slot2
		 60	[  0]	JMP  	  6		3	; 	goto 64
		 61	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 62	[  0]	KPRI 	  7		1	; slot7 = false
		 63	[  0]	TSETS	  7	6	9	; uv1"unknown".nudgePressed = slot7
		 64	[  0]	ISF  	   		0	; if not slot0
		 65	[  0]	JMP  	  6		4	; 	goto 70
		 66	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 67	[  0]	GGET 	  7		8	; slot7 = _env["STEP_SECOND_SPINNING"]
		 68	[  0]	TSETS	  7	6	17	; uv1"unknown".step = STEP_SECOND_SPINNING
		 69	[  0]	JMP  	  6		33	; 	goto 103
		 70	[  0]	ISF  	   		1	; if not slot1
		 71	[  0]	JMP  	  6		4	; 	goto 76
		 72	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 73	[  0]	GGET 	  7		7	; slot7 = _env["STEP_REWARD_SPINNING"]
		 74	[  0]	TSETS	  7	6	17	; uv1"unknown".step = STEP_REWARD_SPINNING
		 75	[  0]	JMP  	  6		27	; 	goto 103
		 76	[  0]	ISF  	   		2	; if not slot2
		 77	[  0]	JMP  	  6		4	; 	goto 82
		 78	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 79	[  0]	GGET 	  7		6	; slot7 = _env["STEP_MORE_SPINNING"]
		 80	[  0]	TSETS	  7	6	17	; uv1"unknown".step = STEP_MORE_SPINNING
		 81	[  0]	JMP  	  6		21	; 	goto 103
		 82	[  0]	ISF  	   		3	; if not slot3
		 83	[  0]	JMP  	  6		4	; 	goto 88
		 84	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 85	[  0]	GGET 	  7		5	; slot7 = _env["STEP_CORE_SPINNING"]
		 86	[  0]	TSETS	  7	6	17	; uv1"unknown".step = STEP_CORE_SPINNING
		 87	[  0]	JMP  	  6		15	; 	goto 103
		 88	[  0]	ISF  	   		4	; if not slot4
		 89	[  0]	JMP  	  6		4	; 	goto 94
		 90	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 91	[  0]	GGET 	  7		4	; slot7 = _env["STEP_POST_CORE_SPINNING"]
		 92	[  0]	TSETS	  7	6	17	; uv1"unknown".step = STEP_POST_CORE_SPINNING
		 93	[  0]	JMP  	  6		9	; 	goto 103
		 94	[  0]	ISF  	   		5	; if not slot5
		 95	[  0]	JMP  	  6		4	; 	goto 100
		 96	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 97	[  0]	GGET 	  7		3	; slot7 = _env["STEP_POST_CORE_SECOND_SPINNING"]
		 98	[  0]	TSETS	  7	6	17	; uv1"unknown".step = STEP_POST_CORE_SECOND_SPINNING
		 99	[  0]	JMP  	  6		3	; 	goto 103
		100	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		101	[  0]	GGET 	  7		2	; slot7 = _env["STEP_GOLD"]
		102	[  0]	TSETS	  7	6	17	; uv1"unknown".step = STEP_GOLD
		103	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		104	[  0]	IST  	   		0	; if slot0
		105	[  0]	JMP  	  7		10	; 	goto 116
		106	[  0]	IST  	   		1	; if slot1
		107	[  0]	JMP  	  7		8	; 	goto 116
		108	[  0]	IST  	   		2	; if slot2
		109	[  0]	JMP  	  7		6	; 	goto 116
		110	[  0]	IST  	   		3	; if slot3
		111	[  0]	JMP  	  7		4	; 	goto 116
		112	[  0]	IST  	   		4	; if slot4
		113	[  0]	JMP  	  7		2	; 	goto 116
		114	[  0]	ISF  	   		5	; if not slot5
		115	[  0]	JMP  	  7		2	; 	goto 118
		116	[  0]	KSHORT	  7		1	; slot7 = 1
		117	[  0]	JMP  	  8		1	; 	goto 119
		118	[  0]	KSHORT	  7		0	; slot7 = 0
		119	[  0]	TSETS	  7	6	1	; uv1"unknown".stepT = slot7
		120	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		121	[  0]	KSHORT	  7		0	; slot7 = 0
		122	[  0]	TSETS	  7	6	0	; uv1"unknown".stepElapsed = slot7
		123	[  0]	KPRI 	  6		2	; slot6 = true
		124	[  0]	RET1 	  6		2	; return slot6
	218	[  0]	TSETS	 44	0	88	; slot0.onSpinStarted = slot44
	219	[  0]	KPRI 	 44		0	; slot44 = nil
	220	[  0]	FNEW 	 45		85	; N/A:0-0: 4 args, 2 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  2	[  0]	TGETS	  4	4	31	; slot4 = uv0"unknown".running
		  3	[  0]	IST  	   		4	; if uv0"unknown".running
		  4	[  0]	JMP  	  4		2	; 	goto 7
		  5	[  0]	KPRI 	  4		1	; slot4 = false
		  6	[  0]	RET1 	  4		2	; return slot4
		  7	[  0]	ISNES	  3		30	; if slot3 ~= "mage_spear"
		  8	[  0]	JMP  	  4		43	; 	goto 52
		  9	[  0]	GGET 	  4		29	; slot4 = _env["rawget"]
		 10	[  0]	GGET 	  6		28	; slot6 = _env["_G"]
		 11	[  0]	KSTR 	  7		27	; slot7 = "battlefield"
		 12	[  0]	CALL 	  4	2	3	; slot4 = rawget(slot5, _G)
		 13	[  0]	ISFC 	  5		4	; slot5 = rawget; if not rawget
		 14	[  0]	JMP  	  5		7	; 	goto 22
		 15	[  0]	TGETS	  5	4	26	; slot5 = rawget.rosterSymbols
		 16	[  0]	ISF  	   		5	; if not rawget.rosterSymbols
		 17	[  0]	JMP  	  6		4	; 	goto 22
		 18	[  0]	ISFC 	  5		2	; slot5 = slot2; if not slot2
		 19	[  0]	JMP  	  5		2	; 	goto 22
		 20	[  0]	TGETS	  5	4	26	; slot5 = rawget.rosterSymbols
		 21	[  0]	TGETV	  5	5	2	; slot5 = rawget.rosterSymbols[slot2]
		 22	[  0]	ISNES	  5		25	; if slot5 ~= "S"
		 23	[  0]	JMP  	  6		2	; 	goto 26
		 24	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 25	[  0]	TSETS	  2	6	24	; uv0"unknown".spearRosterIndex = slot2
		 26	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 27	[  0]	TGETS	  6	6	24	; slot6 = uv0"unknown".spearRosterIndex
		 28	[  0]	ISF  	   		6	; if not uv0"unknown".spearRosterIndex
		 29	[  0]	JMP  	  7		19	; 	goto 49
		 30	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 31	[  0]	GGET 	  7		22	; slot7 = _env["STEP_MORE_SPIN"]
		 32	[  0]	TSETS	  7	6	23	; uv0"unknown".step = STEP_MORE_SPIN
		 33	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 34	[  0]	KSHORT	  7		0	; slot7 = 0
		 35	[  0]	TSETS	  7	6	21	; uv0"unknown".stepT = slot7
		 36	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 37	[  0]	KSHORT	  7		0	; slot7 = 0
		 38	[  0]	TSETS	  7	6	20	; uv0"unknown".stepElapsed = slot7
		 39	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 40	[  0]	KPRI 	  7		1	; slot7 = false
		 41	[  0]	TSETS	  7	6	19	; uv0"unknown".spinStarted = slot7
		 42	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 43	[  0]	KPRI 	  7		1	; slot7 = false
		 44	[  0]	TSETS	  7	6	18	; uv0"unknown".nudgePressed = slot7
		 45	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 46	[  0]	TSETS	  1	6	17	; uv0"unknown".winLayout = slot1
		 47	[  0]	KPRI 	  6		2	; slot6 = true
		 48	[  0]	RET1 	  6		2	; return slot6
		 49	[  0]	KPRI 	  6		1	; slot6 = false
		 50	[  0]	RET1 	  6		2	; return slot6
		 51	[  0]	JMP  	  4		113	; 	goto 165
		 52	[  0]	ISNES	  3		16	; if slot3 ~= "post_core_archer"
		 53	[  0]	JMP  	  4		13	; 	goto 67
		 54	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 55	[  0]	GGET 	  5		15	; slot5 = _env["STEP_POST_CORE_ARCHER_WIN"]
		 56	[  0]	TSETS	  5	4	23	; uv0"unknown".step = STEP_POST_CORE_ARCHER_WIN
		 57	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 58	[  0]	TSETS	  2	4	14	; uv0"unknown".postCoreArcherRosterIndex = slot2
		 59	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 60	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 61	[  0]	MOV  	  7		2	; slot7 = slot2
		 62	[  0]	CALL 	  5	2	2	; slot5 = uv1"unknown"(slot6)
		 63	[  0]	TSETS	  5	4	13	; uv0"unknown".postCoreArcherRef = uv1"unknown"
		 64	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 65	[  0]	TSETS	  2	4	12	; uv0"unknown".winRosterIndex = slot2
		 66	[  0]	JMP  	  4		98	; 	goto 165
		 67	[  0]	ISNES	  3		11	; if slot3 ~= "post_core_spears"
		 68	[  0]	JMP  	  4		50	; 	goto 119
		 69	[  0]	GGET 	  4		29	; slot4 = _env["rawget"]
		 70	[  0]	GGET 	  6		28	; slot6 = _env["_G"]
		 71	[  0]	KSTR 	  7		27	; slot7 = "battlefield"
		 72	[  0]	CALL 	  4	2	3	; slot4 = rawget(uv1"unknown", _G)
		 73	[  0]	ISFC 	  5		4	; slot5 = rawget; if not rawget
		 74	[  0]	JMP  	  5		7	; 	goto 82
		 75	[  0]	TGETS	  5	4	26	; slot5 = rawget.rosterSymbols
		 76	[  0]	ISF  	   		5	; if not rawget.rosterSymbols
		 77	[  0]	JMP  	  6		4	; 	goto 82
		 78	[  0]	ISFC 	  5		2	; slot5 = slot2; if not slot2
		 79	[  0]	JMP  	  5		2	; 	goto 82
		 80	[  0]	TGETS	  5	4	26	; slot5 = rawget.rosterSymbols
		 81	[  0]	TGETV	  5	5	2	; slot5 = rawget.rosterSymbols[slot2]
		 82	[  0]	ISNES	  5		25	; if slot5 ~= "S"
		 83	[  0]	JMP  	  6		8	; 	goto 92
		 84	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 85	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 86	[  0]	TGETS	  7	7	10	; slot7 = uv0"unknown".postCoreSpearCount
		 87	[  0]	IST  	   		7	; if uv0"unknown".postCoreSpearCount
		 88	[  0]	JMP  	  8		1	; 	goto 90
		 89	[  0]	KSHORT	  7		0	; slot7 = 0
		 90	[  0]	ADDVN	  7	7	0	; slot7 = slot7 + 1
		 91	[  0]	TSETS	  7	6	10	; uv0"unknown".postCoreSpearCount = slot7
		 92	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 93	[  0]	TSETS	  1	6	17	; uv0"unknown".winLayout = slot1
		 94	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 95	[  0]	KPRI 	  7		1	; slot7 = false
		 96	[  0]	TSETS	  7	6	19	; uv0"unknown".spinStarted = slot7
		 97	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 98	[  0]	TGETS	  6	6	10	; slot6 = uv0"unknown".postCoreSpearCount
		 99	[  0]	IST  	   		6	; if uv0"unknown".postCoreSpearCount
		100	[  0]	JMP  	  7		1	; 	goto 102
		101	[  0]	KSHORT	  6		0	; slot6 = 0
		102	[  0]	KSHORT	  7		2	; slot7 = 2
		103	[  0]	ISGT 	  7		6	; if slot7 > slot6
		104	[  0]	JMP  	  6		11	; 	goto 116
		105	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		106	[  0]	GGET 	  7		9	; slot7 = _env["STEP_SLOT_BROKEN"]
		107	[  0]	TSETS	  7	6	23	; uv0"unknown".step = STEP_SLOT_BROKEN
		108	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		109	[  0]	KSHORT	  7		0	; slot7 = 0
		110	[  0]	TSETS	  7	6	21	; uv0"unknown".stepT = slot7
		111	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		112	[  0]	KSHORT	  7		0	; slot7 = 0
		113	[  0]	TSETS	  7	6	20	; uv0"unknown".stepElapsed = slot7
		114	[  0]	KPRI 	  6		2	; slot6 = true
		115	[  0]	RET1 	  6		2	; return slot6
		116	[  0]	KPRI 	  6		1	; slot6 = false
		117	[  0]	RET1 	  6		2	; return slot6
		118	[  0]	JMP  	  4		46	; 	goto 165
		119	[  0]	ISNES	  3		8	; if slot3 ~= "nudge_setup"
		120	[  0]	JMP  	  4		26	; 	goto 147
		121	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		122	[  0]	TGETS	  4	4	23	; slot4 = uv0"unknown".step
		123	[  0]	GGET 	  5		7	; slot5 = _env["STEP_NUDGE_WIN"]
		124	[  0]	ISNEV	  4		5	; if uv0"unknown".step ~= STEP_NUDGE_WIN
		125	[  0]	JMP  	  4		15	; 	goto 141
		126	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		127	[  0]	TGETS	  4	4	18	; slot4 = uv0"unknown".nudgePressed
		128	[  0]	ISF  	   		4	; if not uv0"unknown".nudgePressed
		129	[  0]	JMP  	  5		11	; 	goto 141
		130	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		131	[  0]	TSETS	  2	4	6	; uv0"unknown".extraWarriorRosterIndex = slot2
		132	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		133	[  0]	TSETS	  1	4	17	; uv0"unknown".winLayout = slot1
		134	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		135	[  0]	TSETS	  2	4	12	; uv0"unknown".winRosterIndex = slot2
		136	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		137	[  0]	KPRI 	  5		1	; slot5 = false
		138	[  0]	TSETS	  5	4	19	; uv0"unknown".spinStarted = slot5
		139	[  0]	KPRI 	  4		2	; slot4 = true
		140	[  0]	RET1 	  4		2	; return slot4
		141	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		142	[  0]	GGET 	  5		7	; slot5 = _env["STEP_NUDGE_WIN"]
		143	[  0]	TSETS	  5	4	23	; uv0"unknown".step = STEP_NUDGE_WIN
		144	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		145	[  0]	TSETS	  2	4	6	; uv0"unknown".extraWarriorRosterIndex = slot2
		146	[  0]	JMP  	  4		18	; 	goto 165
		147	[  0]	ISNES	  3		5	; if slot3 ~= "warrior"
		148	[  0]	JMP  	  4		6	; 	goto 155
		149	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		150	[  0]	GGET 	  5		4	; slot5 = _env["STEP_WARRIOR_WIN"]
		151	[  0]	TSETS	  5	4	23	; uv0"unknown".step = STEP_WARRIOR_WIN
		152	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		153	[  0]	TSETS	  2	4	3	; uv0"unknown".warriorRosterIndex = slot2
		154	[  0]	JMP  	  4		10	; 	goto 165
		155	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		156	[  0]	GGET 	  5		2	; slot5 = _env["STEP_ARCHER_WIN"]
		157	[  0]	TSETS	  5	4	23	; uv0"unknown".step = STEP_ARCHER_WIN
		158	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		159	[  0]	TSETS	  2	4	1	; uv0"unknown".archerRosterIndex = slot2
		160	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		161	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		162	[  0]	MOV  	  7		2	; slot7 = slot2
		163	[  0]	CALL 	  5	2	2	; slot5 = uv1"unknown"(slot6)
		164	[  0]	TSETS	  5	4	0	; uv0"unknown".archerRef = uv1"unknown"
		165	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		166	[  0]	KSHORT	  5		0	; slot5 = 0
		167	[  0]	TSETS	  5	4	21	; uv0"unknown".stepT = slot5
		168	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		169	[  0]	KSHORT	  5		0	; slot5 = 0
		170	[  0]	TSETS	  5	4	20	; uv0"unknown".stepElapsed = slot5
		171	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		172	[  0]	TSETS	  1	4	17	; uv0"unknown".winLayout = slot1
		173	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		174	[  0]	TSETS	  2	4	12	; uv0"unknown".winRosterIndex = slot2
		175	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		176	[  0]	KPRI 	  5		1	; slot5 = false
		177	[  0]	TSETS	  5	4	19	; uv0"unknown".spinStarted = slot5
		178	[  0]	KPRI 	  4		2	; slot4 = true
		179	[  0]	RET1 	  4		2	; return slot4
	221	[  0]	TSETS	 45	0	86	; slot0.onTutorialWinSpawned = slot45
	222	[  0]	FNEW 	 45		83	; N/A:0-0: 3 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		22	; slot3 = _env["tonumber"]
		  2	[  0]	ISFC 	  5		1	; slot5 = slot1; if not slot1
		  3	[  0]	JMP  	  5		1	; 	goto 5
		  4	[  0]	TGETS	  5	1	21	; slot5 = slot1.waveId
		  5	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		  6	[  0]	IST  	   		3	; if tonumber
		  7	[  0]	JMP  	  4		1	; 	goto 9
		  8	[  0]	KSHORT	  3		0	; slot3 = 0
		  9	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 10	[  0]	TGETS	  4	4	20	; slot4 = uv0"unknown".running
		 11	[  0]	ISF  	   		4	; if not uv0"unknown".running
		 12	[  0]	JMP  	  5		10	; 	goto 23
		 13	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 14	[  0]	TGETS	  4	4	19	; slot4 = uv0"unknown".step
		 15	[  0]	GGET 	  5		18	; slot5 = _env["STEP_BATTLE_FREE"]
		 16	[  0]	ISNEV	  4		5	; if uv0"unknown".step ~= STEP_BATTLE_FREE
		 17	[  0]	JMP  	  4		5	; 	goto 23
		 18	[  0]	ISF  	   		1	; if not slot1
		 19	[  0]	JMP  	  4		3	; 	goto 23
		 20	[  0]	TGETS	  4	1	17	; slot4 = slot1.victory
		 21	[  0]	IST  	   		4	; if <unknown table>.victory
		 22	[  0]	JMP  	  4		2	; 	goto 25
		 23	[  0]	KPRI 	  4		1	; slot4 = false
		 24	[  0]	RET1 	  4		2	; return slot4
		 25	[  0]	ISNEN	  3		0	; if slot3 ~= 1
		 26	[  0]	JMP  	  4		4	; 	goto 31
		 27	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 28	[  0]	GGET 	  5		16	; slot5 = _env["STEP_WAVE_REWARD"]
		 29	[  0]	TSETS	  5	4	19	; uv0"unknown".step = STEP_WAVE_REWARD
		 30	[  0]	JMP  	  4		40	; 	goto 71
		 31	[  0]	ISNEN	  3		1	; if slot3 ~= 2
		 32	[  0]	JMP  	  4		36	; 	goto 69
		 33	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 34	[  0]	GGET 	  5		15	; slot5 = _env["STEP_CORE_COUNTER"]
		 35	[  0]	TSETS	  5	4	19	; uv0"unknown".step = STEP_CORE_COUNTER
		 36	[  0]	GGET 	  4		14	; slot4 = _env["rawget"]
		 37	[  0]	GGET 	  6		13	; slot6 = _env["_G"]
		 38	[  0]	KSTR 	  7		12	; slot7 = "scrollIntroAnim"
		 39	[  0]	CALL 	  4	2	3	; slot4 = rawget(STEP_CORE_COUNTER, _G)
		 40	[  0]	ISF  	   		4	; if not rawget
		 41	[  0]	JMP  	  5		29	; 	goto 71
		 42	[  0]	KSHORT	  5		1	; slot5 = 1
		 43	[  0]	TSETS	  5	4	11	; rawget.spinCountdown = slot5
		 44	[  0]	KPRI 	  5		1	; slot5 = false
		 45	[  0]	TSETS	  5	4	10	; rawget.countdownModalPending = slot5
		 46	[  0]	KPRI 	  5		1	; slot5 = false
		 47	[  0]	TSETS	  5	4	9	; rawget.countdownModalTriggered = slot5
		 48	[  0]	GGET 	  5		7	; slot5 = _env["love"]
		 49	[  0]	ISF  	   		5	; if not love
		 50	[  0]	JMP  	  6		15	; 	goto 66
		 51	[  0]	GGET 	  5		7	; slot5 = _env["love"]
		 52	[  0]	TGETS	  5	5	6	; slot5 = love.timer
		 53	[  0]	ISF  	   		5	; if not love.timer
		 54	[  0]	JMP  	  6		11	; 	goto 66
		 55	[  0]	GGET 	  5		7	; slot5 = _env["love"]
		 56	[  0]	TGETS	  5	5	6	; slot5 = love.timer
		 57	[  0]	TGETS	  5	5	5	; slot5 = love.timer.getTime
		 58	[  0]	ISF  	   		5	; if not love.timer.getTime
		 59	[  0]	JMP  	  6		6	; 	goto 66
		 60	[  0]	GGET 	  5		7	; slot5 = _env["love"]
		 61	[  0]	TGETS	  5	5	6	; slot5 = love.timer
		 62	[  0]	TGETS	  5	5	5	; slot5 = love.timer.getTime
		 63	[  0]	CALL 	  5	2	1	; slot5 = love.timer.getTime()
		 64	[  0]	IST  	   		5	; if love.timer.getTime
		 65	[  0]	JMP  	  6		1	; 	goto 67
		 66	[  0]	TGETS	  5	4	8	; slot5 = rawget.squashT
		 67	[  0]	TSETS	  5	4	8	; rawget.squashT = rawget.squashT
		 68	[  0]	JMP  	  4		2	; 	goto 71
		 69	[  0]	KPRI 	  4		1	; slot4 = false
		 70	[  0]	RET1 	  4		2	; return slot4
		 71	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 72	[  0]	KSHORT	  5		0	; slot5 = 0
		 73	[  0]	TSETS	  5	4	4	; uv0"unknown".stepT = slot5
		 74	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 75	[  0]	KSHORT	  5		0	; slot5 = 0
		 76	[  0]	TSETS	  5	4	3	; uv0"unknown".stepElapsed = slot5
		 77	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 78	[  0]	GGET 	  5		22	; slot5 = _env["tonumber"]
		 79	[  0]	MOV  	  7		2	; slot7 = slot2
		 80	[  0]	CALL 	  5	2	2	; slot5 = tonumber(_G)
		 81	[  0]	IST  	   		5	; if tonumber
		 82	[  0]	JMP  	  6		1	; 	goto 84
		 83	[  0]	KSHORT	  5		0	; slot5 = 0
		 84	[  0]	TSETS	  5	4	2	; uv0"unknown".waveReward = slot5
		 85	[  0]	ISF  	   		0	; if not slot0
		 86	[  0]	JMP  	  4		4	; 	goto 91
		 87	[  0]	KPRI 	  4		1	; slot4 = false
		 88	[  0]	TSETS	  4	0	1	; slot0._shopMode = slot4
		 89	[  0]	KPRI 	  4		1	; slot4 = false
		 90	[  0]	TSETS	  4	0	0	; slot0._stoneMode = slot4
		 91	[  0]	KPRI 	  4		2	; slot4 = true
		 92	[  0]	RET1 	  4		2	; return slot4
	223	[  0]	TSETS	 45	0	84	; slot0.onWaveEnded = slot45
	224	[  0]	FNEW 	 45		81	; N/A:0-0: 1 args, 2 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	5	; slot1 = uv0"unknown".isCoreSelectStep
		  3	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown".isCoreSelectStep()
		  4	[  0]	IST  	   		1	; if slot1
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	KPRI 	  1		1	; slot1 = false
		  7	[  0]	RET1 	  1		2	; return slot1
		  8	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  9	[  0]	GGET 	  2		3	; slot2 = _env["STEP_POST_CORE_SLOT"]
		 10	[  0]	TSETS	  2	1	4	; uv1"unknown".step = STEP_POST_CORE_SLOT
		 11	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 12	[  0]	KSHORT	  2		0	; slot2 = 0
		 13	[  0]	TSETS	  2	1	2	; uv1"unknown".stepT = slot2
		 14	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 15	[  0]	KSHORT	  2		0	; slot2 = 0
		 16	[  0]	TSETS	  2	1	1	; uv1"unknown".stepElapsed = slot2
		 17	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 18	[  0]	KPRI 	  2		1	; slot2 = false
		 19	[  0]	TSETS	  2	1	0	; uv1"unknown".spinStarted = slot2
		 20	[  0]	KPRI 	  1		2	; slot1 = true
		 21	[  0]	RET1 	  1		2	; return slot1
	225	[  0]	TSETS	 45	0	82	; slot0.onCoreSelected = slot45
	226	[  0]	FNEW 	 45		79	; N/A:0-0: 1 args, 1 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	6	; slot1 = uv0"unknown".running
		  3	[  0]	ISF  	   		1	; if not uv0"unknown".running
		  4	[  0]	JMP  	  2		7	; 	goto 12
		  5	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  6	[  0]	TGETS	  1	1	5	; slot1 = uv0"unknown".step
		  7	[  0]	GGET 	  2		4	; slot2 = _env["STEP_NUDGE_ACTION"]
		  8	[  0]	ISNEV	  1		2	; if uv0"unknown".step ~= STEP_NUDGE_ACTION
		  9	[  0]	JMP  	  1		2	; 	goto 12
		 10	[  0]	ISEQN	  0		0	; if slot0 == 2
		 11	[  0]	JMP  	  1		2	; 	goto 14
		 12	[  0]	KPRI 	  1		1	; slot1 = false
		 13	[  0]	RET1 	  1		2	; return slot1
		 14	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 15	[  0]	GGET 	  2		3	; slot2 = _env["STEP_NUDGE_WIN"]
		 16	[  0]	TSETS	  2	1	5	; uv0"unknown".step = STEP_NUDGE_WIN
		 17	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 18	[  0]	KSHORT	  2		0	; slot2 = 0
		 19	[  0]	TSETS	  2	1	2	; uv0"unknown".stepT = slot2
		 20	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 21	[  0]	KSHORT	  2		0	; slot2 = 0
		 22	[  0]	TSETS	  2	1	1	; uv0"unknown".stepElapsed = slot2
		 23	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 24	[  0]	KPRI 	  2		2	; slot2 = true
		 25	[  0]	TSETS	  2	1	0	; uv0"unknown".nudgePressed = slot2
		 26	[  0]	KPRI 	  1		2	; slot1 = true
		 27	[  0]	RET1 	  1		2	; return slot1
	227	[  0]	TSETS	 45	0	80	; slot0.onNudgePressed = slot45
	228	[  0]	FNEW 	 45		77	; N/A:0-0: 0 args, 2 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	6	; slot0 = uv0"unknown".isAbsorbButtonStep
		  3	[  0]	CALL 	  0	2	1	; slot0 = uv0"unknown".isAbsorbButtonStep()
		  4	[  0]	IST  	   		0	; if slot0
		  5	[  0]	JMP  	  0		2	; 	goto 8
		  6	[  0]	KPRI 	  0		1	; slot0 = false
		  7	[  0]	RET1 	  0		2	; return slot0
		  8	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  9	[  0]	TGETS	  0	0	5	; slot0 = uv1"unknown".step
		 10	[  0]	GGET 	  1		4	; slot1 = _env["STEP_FREE_ABSORB_BUTTON"]
		 11	[  0]	ISNEV	  0		1	; if uv1"unknown".step ~= STEP_FREE_ABSORB_BUTTON
		 12	[  0]	JMP  	  0		4	; 	goto 17
		 13	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 14	[  0]	GGET 	  1		3	; slot1 = _env["STEP_FREE_ABSORB"]
		 15	[  0]	TSETS	  1	0	5	; uv1"unknown".step = STEP_FREE_ABSORB
		 16	[  0]	JMP  	  0		3	; 	goto 20
		 17	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 18	[  0]	GGET 	  1		2	; slot1 = _env["STEP_ABSORB_DRAG"]
		 19	[  0]	TSETS	  1	0	5	; uv1"unknown".step = STEP_ABSORB_DRAG
		 20	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 21	[  0]	KSHORT	  1		0	; slot1 = 0
		 22	[  0]	TSETS	  1	0	1	; uv1"unknown".stepT = slot1
		 23	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 24	[  0]	KSHORT	  1		0	; slot1 = 0
		 25	[  0]	TSETS	  1	0	0	; uv1"unknown".stepElapsed = slot1
		 26	[  0]	KPRI 	  0		2	; slot0 = true
		 27	[  0]	RET1 	  0		2	; return slot0
	229	[  0]	TSETS	 45	0	78	; slot0.onAbsorbButtonPressed = slot45
	230	[  0]	FNEW 	 45		75	; N/A:0-0: 0 args, 2 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	3	; slot0 = uv0"unknown".isAbsorbDragStep
		  3	[  0]	CALL 	  0	2	1	; slot0 = uv0"unknown".isAbsorbDragStep()
		  4	[  0]	IST  	   		0	; if slot0
		  5	[  0]	JMP  	  0		2	; 	goto 8
		  6	[  0]	KPRI 	  0		1	; slot0 = false
		  7	[  0]	RET1 	  0		2	; return slot0
		  8	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  9	[  0]	GGET 	  1		1	; slot1 = _env["STEP_ABSORB_MODAL"]
		 10	[  0]	TSETS	  1	0	2	; uv1"unknown".step = STEP_ABSORB_MODAL
		 11	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 12	[  0]	KSHORT	  1		1	; slot1 = 1
		 13	[  0]	TSETS	  1	0	0	; uv1"unknown".stepT = slot1
		 14	[  0]	KPRI 	  0		2	; slot0 = true
		 15	[  0]	RET1 	  0		2	; return slot0
	231	[  0]	TSETS	 45	0	76	; slot0.onAbsorbModalOpened = slot45
	232	[  0]	FNEW 	 45		74	; N/A:0-0: 1 args, 0 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		5	; 	goto 8
		  3	[  0]	GGET 	  1		3	; slot1 = _env["type"]
		  4	[  0]	TGETS	  3	0	2	; slot3 = slot0.imprints
		  5	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  6	[  0]	ISEQS	  1		1	; if slot1 == "table"
		  7	[  0]	JMP  	  1		2	; 	goto 10
		  8	[  0]	KPRI 	  1		1	; slot1 = false
		  9	[  0]	RET1 	  1		2	; return slot1
		 10	[  0]	GGET 	  1		0	; slot1 = _env["pairs"]
		 11	[  0]	TGETS	  3	0	2	; slot3 = slot0.imprints
		 12	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = pairs(slot2)
		 13	[  0]	ISNEXT	  4		4	; Verify ITERN at 18; goto 18
		 14	[  0]	ISEQP	  5		0	; if slot5 == nil
		 15	[  0]	JMP  	  6		2	; 	goto 18
		 16	[  0]	KPRI 	  6		2	; slot6 = true
		 17	[  0]	RET1 	  6		2	; return slot6
		 18	[  0]	ITERN	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, <unknown table>.imprints; slot4, slot5 = slot1(slot2, <unknown table>.imprints)
		 19	[  0]	ITERL	  4		-6	; <unknown table>.imprints = slot4; if slot4 != nil goto 14
		 20	[  0]	KPRI 	  1		1	; slot1 = false
		 21	[  0]	RET1 	  1		2	; return slot1
	233	[  0]	FNEW 	 46		73	; N/A:0-0: 1 args, 2 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISEQP	  0		0	; if slot0 == nil
		  2	[  0]	JMP  	  1		27	; 	goto 30
		  3	[  0]	TGETS	  1	0	6	; slot1 = slot0.sym
		  4	[  0]	ISEQS	  1		5	; if <unknown table>.sym == "A"
		  5	[  0]	JMP  	  1		26	; 	goto 32
		  6	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  7	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		  8	[  0]	TGETS	  3	3	4	; slot3 = uv1"unknown".archerRosterIndex
		  9	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		 10	[  0]	ISEQV	  0		1	; if slot0 == slot1
		 11	[  0]	JMP  	  1		20	; 	goto 32
		 12	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 13	[  0]	TGETS	  1	1	3	; slot1 = uv1"unknown".archerRef
		 14	[  0]	ISEQV	  0		1	; if slot0 == uv1"unknown".archerRef
		 15	[  0]	JMP  	  1		16	; 	goto 32
		 16	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 17	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 18	[  0]	TGETS	  3	3	2	; slot3 = uv1"unknown".postCoreArcherRosterIndex
		 19	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		 20	[  0]	ISEQV	  0		1	; if slot0 == slot1
		 21	[  0]	JMP  	  1		10	; 	goto 32
		 22	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 23	[  0]	TGETS	  1	1	1	; slot1 = uv1"unknown".postCoreArcherRef
		 24	[  0]	ISEQV	  0		1	; if slot0 == uv1"unknown".postCoreArcherRef
		 25	[  0]	JMP  	  1		6	; 	goto 32
		 26	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 27	[  0]	TGETS	  1	1	0	; slot1 = uv1"unknown".promotedUnitRef
		 28	[  0]	ISEQV	  0		1	; if slot0 == uv1"unknown".promotedUnitRef
		 29	[  0]	JMP  	  1		2	; 	goto 32
		 30	[  0]	KPRI 	  1		1	; slot1 = false
		 31	[  0]	JMP  	  2		1	; 	goto 33
		 32	[  0]	KPRI 	  1		2	; slot1 = true
		 33	[  0]	RET1 	  1		2	; return slot1
	234	[  0]	FNEW 	 47		72	; N/A:0-0: 0 args, 4 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  0		6	; slot0 = new table( array: 6, dict: 1)
		  2	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  3	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		  4	[  0]	TGETS	  3	3	13	; slot3 = uv1"unknown".archerRosterIndex
		  5	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		  6	[  0]	TSETB	  1	0	1	; slot0[1] = slot1
		  7	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  8	[  0]	TGETS	  1	1	12	; slot1 = uv1"unknown".archerRef
		  9	[  0]	TSETB	  1	0	2	; slot0[2] = uv1"unknown".archerRef
		 10	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 11	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 12	[  0]	TGETS	  3	3	11	; slot3 = uv1"unknown".postCoreArcherRosterIndex
		 13	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		 14	[  0]	TSETB	  1	0	3	; slot0[3] = slot1
		 15	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 16	[  0]	TGETS	  1	1	10	; slot1 = uv1"unknown".postCoreArcherRef
		 17	[  0]	TSETB	  1	0	4	; slot0[4] = uv1"unknown".postCoreArcherRef
		 18	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 19	[  0]	TGETS	  1	1	9	; slot1 = uv1"unknown".promotedUnitRef
		 20	[  0]	TSETB	  1	0	5	; slot0[5] = uv1"unknown".promotedUnitRef
		 21	[  0]	GGET 	  1		8	; slot1 = _env["rawget"]
		 22	[  0]	GGET 	  3		7	; slot3 = _env["_G"]
		 23	[  0]	KSTR 	  4		6	; slot4 = "battlefield"
		 24	[  0]	CALL 	  1	2	3	; slot1 = rawget(slot2, _G)
		 25	[  0]	ISF  	   		1	; if not slot1
		 26	[  0]	JMP  	  2		19	; 	goto 46
		 27	[  0]	TGETS	  2	1	5	; slot2 = slot1.rosterUnits
		 28	[  0]	ISF  	   		2	; if not <unknown table>.rosterUnits
		 29	[  0]	JMP  	  3		16	; 	goto 46
		 30	[  0]	GGET 	  2		4	; slot2 = _env["ipairs"]
		 31	[  0]	TGETS	  4	1	5	; slot4 = slot1.rosterUnits
		 32	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
		 33	[  0]	JMP  	  5		10	; 	goto 44
		 34	[  0]	ISF  	   		6	; if not slot6
		 35	[  0]	JMP  	  7		8	; 	goto 44
		 36	[  0]	TGETS	  7	6	3	; slot7 = slot6.sym
		 37	[  0]	ISNES	  7		2	; if <unknown table>.sym ~= "A"
		 38	[  0]	JMP  	  7		5	; 	goto 44
		 39	[  0]	GGET 	  7		1	; slot7 = _env["table"]
		 40	[  0]	TGETS	  7	7	0	; slot7 = table.insert
		 41	[  0]	MOV  	  9		0	; slot9 = slot0
		 42	[  0]	MOV  	 10		6	; slot10 = slot6
		 43	[  0]	CALL 	  7	1	3	;  = table.insert(slot8, slot9)
		 44	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, <unknown table>.rosterUnits; slot5, slot6 = slot2(slot3, <unknown table>.rosterUnits)
		 45	[  0]	ITERL	  5		-12	; <unknown table>.rosterUnits = slot5; if slot5 != nil goto 34
		 46	[  0]	GGET 	  2		4	; slot2 = _env["ipairs"]
		 47	[  0]	MOV  	  4		0	; slot4 = slot0
		 48	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
		 49	[  0]	JMP  	  5		11	; 	goto 61
		 50	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		 51	[  0]	MOV  	  9		6	; slot9 = slot6
		 52	[  0]	CALL 	  7	2	2	; slot7 = uv2"unknown"(slot8)
		 53	[  0]	ISF  	   		7	; if not uv2"unknown"
		 54	[  0]	JMP  	  8		6	; 	goto 61
		 55	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		 56	[  0]	MOV  	  9		6	; slot9 = slot6
		 57	[  0]	CALL 	  7	2	2	; slot7 = uv3"unknown"(slot8)
		 58	[  0]	ISF  	   		7	; if not uv3"unknown"
		 59	[  0]	JMP  	  8		1	; 	goto 61
		 60	[  0]	RET1 	  6		2	; return slot6
		 61	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5, slot6 = slot2(slot3, slot4)
		 62	[  0]	ITERL	  5		-13	; slot4 = slot5; if slot5 != nil goto 50
		 63	[  0]	KPRI 	  2		0	; slot2 = nil
		 64	[  0]	RET1 	  2		2	; return slot2
	235	[  0]	FNEW 	 48		70	; N/A:0-0: 1 args, 4 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISNEP	  0		0	; if slot0 ~= nil
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KPRI 	  1		1	; slot1 = false
		  4	[  0]	RET1 	  1		2	; return slot1
		  5	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  6	[  0]	TGETS	  1	1	3	; slot1 = uv0"unknown".running
		  7	[  0]	ISF  	   		1	; if not uv0"unknown".running
		  8	[  0]	JMP  	  2		19	; 	goto 28
		  9	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 10	[  0]	TGETS	  1	1	2	; slot1 = uv0"unknown".step
		 11	[  0]	GGET 	  2		1	; slot2 = _env["STEP_FREE_ABSORB"]
		 12	[  0]	ISNEV	  1		2	; if uv0"unknown".step ~= STEP_FREE_ABSORB
		 13	[  0]	JMP  	  1		14	; 	goto 28
		 14	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 15	[  0]	MOV  	  3		0	; slot3 = slot0
		 16	[  0]	CALL 	  1	2	2	; slot1 = uv1"unknown"(STEP_FREE_ABSORB)
		 17	[  0]	ISF  	   		1	; if not slot1
		 18	[  0]	JMP  	  2		7	; 	goto 26
		 19	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 20	[  0]	MOV  	  3		0	; slot3 = slot0
		 21	[  0]	CALL 	  1	2	2	; slot1 = uv2"unknown"(slot2)
		 22	[  0]	ISF  	   		1	; if not slot1
		 23	[  0]	JMP  	  2		2	; 	goto 26
		 24	[  0]	KPRI 	  1		1	; slot1 = false
		 25	[  0]	RET1 	  1		2	; return slot1
		 26	[  0]	KPRI 	  1		2	; slot1 = true
		 27	[  0]	RET1 	  1		2	; return slot1
		 28	[  0]	UGET 	  1		3	; slot1 = uv3"unknwon"
		 29	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 30	[  0]	TGETS	  3	3	0	; slot3 = uv0"unknown".spearRosterIndex
		 31	[  0]	CALL 	  1	2	2	; slot1 = uv3"unknown"(slot2)
		 32	[  0]	ISEQV	  0		1	; if slot0 == slot1
		 33	[  0]	JMP  	  1		2	; 	goto 36
		 34	[  0]	KPRI 	  1		1	; slot1 = false
		 35	[  0]	JMP  	  2		1	; 	goto 37
		 36	[  0]	KPRI 	  1		2	; slot1 = true
		 37	[  0]	RET1 	  1		2	; return slot1
	236	[  0]	TSETS	 48	0	71	; slot0.isAllowedAbsorbVictim = slot48
	237	[  0]	FNEW 	 48		68	; N/A:0-0: 2 args, 4 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		2	; 	goto 5
		  3	[  0]	IST  	   		1	; if slot1
		  4	[  0]	JMP  	  2		2	; 	goto 7
		  5	[  0]	KPRI 	  2		1	; slot2 = false
		  6	[  0]	RET1 	  2		2	; return slot2
		  7	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  8	[  0]	TGETS	  2	2	4	; slot2 = uv0"unknown".running
		  9	[  0]	ISF  	   		2	; if not uv0"unknown".running
		 10	[  0]	JMP  	  3		19	; 	goto 30
		 11	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 12	[  0]	TGETS	  2	2	3	; slot2 = uv0"unknown".step
		 13	[  0]	GGET 	  3		2	; slot3 = _env["STEP_FREE_ABSORB"]
		 14	[  0]	ISNEV	  2		3	; if uv0"unknown".step ~= STEP_FREE_ABSORB
		 15	[  0]	JMP  	  2		14	; 	goto 30
		 16	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 17	[  0]	TGETS	  2	2	1	; slot2 = uv1"unknown".isAllowedAbsorbVictim
		 18	[  0]	MOV  	  4		0	; slot4 = slot0
		 19	[  0]	CALL 	  2	2	2	; slot2 = uv1"unknown".isAllowedAbsorbVictim(STEP_FREE_ABSORB)
		 20	[  0]	ISF  	   		2	; if not slot2
		 21	[  0]	JMP  	  3		7	; 	goto 29
		 22	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 23	[  0]	CALL 	  2	2	1	; slot2 = uv2"unknown"()
		 24	[  0]	ISEQV	  1		2	; if slot1 == uv2"unknown"
		 25	[  0]	JMP  	  2		2	; 	goto 28
		 26	[  0]	KPRI 	  2		1	; slot2 = false
		 27	[  0]	JMP  	  3		1	; 	goto 29
		 28	[  0]	KPRI 	  2		2	; slot2 = true
		 29	[  0]	RET1 	  2		2	; return slot2
		 30	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 31	[  0]	TGETS	  2	2	1	; slot2 = uv1"unknown".isAllowedAbsorbVictim
		 32	[  0]	MOV  	  4		0	; slot4 = slot0
		 33	[  0]	CALL 	  2	2	2	; slot2 = uv1"unknown".isAllowedAbsorbVictim(STEP_FREE_ABSORB)
		 34	[  0]	ISF  	   		2	; if not slot2
		 35	[  0]	JMP  	  3		9	; 	goto 45
		 36	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 37	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 38	[  0]	TGETS	  4	4	0	; slot4 = uv0"unknown".archerRosterIndex
		 39	[  0]	CALL 	  2	2	2	; slot2 = uv3"unknown"(STEP_FREE_ABSORB)
		 40	[  0]	ISEQV	  1		2	; if slot1 == slot2
		 41	[  0]	JMP  	  2		2	; 	goto 44
		 42	[  0]	KPRI 	  2		1	; slot2 = false
		 43	[  0]	JMP  	  3		1	; 	goto 45
		 44	[  0]	KPRI 	  2		2	; slot2 = true
		 45	[  0]	RET1 	  2		2	; return slot2
	238	[  0]	TSETS	 48	0	69	; slot0.isAllowedAbsorbPair = slot48
	239	[  0]	FNEW 	 48		66	; N/A:0-0: 2 args, 2 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	14	; slot2 = uv0"unknown".running
		  3	[  0]	ISF  	   		2	; if not uv0"unknown".running
		  4	[  0]	JMP  	  3		7	; 	goto 12
		  5	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  6	[  0]	TGETS	  2	2	13	; slot2 = uv0"unknown".step
		  7	[  0]	GGET 	  3		12	; slot3 = _env["STEP_FREE_ABSORB"]
		  8	[  0]	ISNEV	  2		3	; if uv0"unknown".step ~= STEP_FREE_ABSORB
		  9	[  0]	JMP  	  2		2	; 	goto 12
		 10	[  0]	KPRI 	  2		2	; slot2 = true
		 11	[  0]	RET1 	  2		2	; return slot2
		 12	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 13	[  0]	TGETS	  2	2	14	; slot2 = uv0"unknown".running
		 14	[  0]	ISF  	   		2	; if not uv0"unknown".running
		 15	[  0]	JMP  	  3		10	; 	goto 26
		 16	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 17	[  0]	TGETS	  2	2	13	; slot2 = uv0"unknown".step
		 18	[  0]	GGET 	  3		11	; slot3 = _env["STEP_ABSORB_MODAL"]
		 19	[  0]	ISEQV	  2		3	; if uv0"unknown".step == STEP_ABSORB_MODAL
		 20	[  0]	JMP  	  2		7	; 	goto 28
		 21	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 22	[  0]	TGETS	  2	2	13	; slot2 = uv0"unknown".step
		 23	[  0]	GGET 	  3		10	; slot3 = _env["STEP_ABSORB_DRAG"]
		 24	[  0]	ISEQV	  2		3	; if uv0"unknown".step == STEP_ABSORB_DRAG
		 25	[  0]	JMP  	  2		2	; 	goto 28
		 26	[  0]	KPRI 	  2		1	; slot2 = false
		 27	[  0]	RET1 	  2		2	; return slot2
		 28	[  0]	ISF  	   		1	; if not slot1
		 29	[  0]	JMP  	  2		7	; 	goto 37
		 30	[  0]	TGETS	  2	1	9	; slot2 = slot1.absorber
		 31	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 32	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 33	[  0]	TGETS	  5	5	8	; slot5 = uv0"unknown".archerRosterIndex
		 34	[  0]	CALL 	  3	2	2	; slot3 = uv1"unknown"(slot4)
		 35	[  0]	ISEQV	  2		3	; if <unknown table>.absorber == uv1"unknown"
		 36	[  0]	JMP  	  2		2	; 	goto 39
		 37	[  0]	KPRI 	  2		1	; slot2 = false
		 38	[  0]	RET1 	  2		2	; return slot2
		 39	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 40	[  0]	GGET 	  3		7	; slot3 = _env["STEP_IMPRINT_INSPECT"]
		 41	[  0]	TSETS	  3	2	13	; uv0"unknown".step = STEP_IMPRINT_INSPECT
		 42	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 43	[  0]	KSHORT	  3		0	; slot3 = 0
		 44	[  0]	TSETS	  3	2	6	; uv0"unknown".stepT = slot3
		 45	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 46	[  0]	KSHORT	  3		0	; slot3 = 0
		 47	[  0]	TSETS	  3	2	5	; uv0"unknown".stepElapsed = slot3
		 48	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 49	[  0]	KSHORT	  3		0	; slot3 = 0
		 50	[  0]	TSETS	  3	2	4	; uv0"unknown".imprintInspectT = slot3
		 51	[  0]	GGET 	  2		3	; slot2 = _env["rawget"]
		 52	[  0]	GGET 	  4		2	; slot4 = _env["_G"]
		 53	[  0]	KSTR 	  5		1	; slot5 = "battlefield"
		 54	[  0]	CALL 	  2	2	3	; slot2 = rawget(slot3, _G)
		 55	[  0]	ISF  	   		2	; if not slot2
		 56	[  0]	JMP  	  3		2	; 	goto 59
		 57	[  0]	KPRI 	  3		1	; slot3 = false
		 58	[  0]	TSETS	  3	2	0	; slot2.absorbMode = slot3
		 59	[  0]	KPRI 	  3		2	; slot3 = true
		 60	[  0]	RET1 	  3		2	; return slot3
	240	[  0]	TSETS	 48	0	67	; slot0.onAbsorbCompleted = slot48
	241	[  0]	FNEW 	 44		65	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		3	; slot1 = _env["rawget"]
		  2	[  0]	GGET 	  3		2	; slot3 = _env["_G"]
		  3	[  0]	KSTR 	  4		1	; slot4 = "battlefield"
		  4	[  0]	CALL 	  1	2	3	; slot1 = rawget(slot2, _G)
		  5	[  0]	ISF  	   		1	; if not slot1
		  6	[  0]	JMP  	  2		9	; 	goto 16
		  7	[  0]	TGETS	  2	1	0	; slot2 = slot1.rosterUnits
		  8	[  0]	ISF  	   		2	; if not <unknown table>.rosterUnits
		  9	[  0]	JMP  	  3		6	; 	goto 16
		 10	[  0]	ISF  	   		0	; if not slot0
		 11	[  0]	JMP  	  2		4	; 	goto 16
		 12	[  0]	TGETS	  2	1	0	; slot2 = slot1.rosterUnits
		 13	[  0]	TGETV	  2	2	0	; slot2 = <unknown table>.rosterUnits[slot0]
		 14	[  0]	IST  	   		2	; if slot2
		 15	[  0]	JMP  	  3		1	; 	goto 17
		 16	[  0]	KPRI 	  2		0	; slot2 = nil
		 17	[  0]	RET1 	  2		2	; return slot2
	242	[  0]	FNEW 	 48		63	; N/A:0-0: 1 args, 2 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISEQP	  0		0	; if slot0 == nil
		  2	[  0]	JMP  	  1		12	; 	goto 15
		  3	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  4	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		  5	[  0]	TGETS	  3	3	1	; slot3 = uv1"unknown".archerRosterIndex
		  6	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		  7	[  0]	ISEQV	  0		1	; if slot0 == slot1
		  8	[  0]	JMP  	  1		8	; 	goto 17
		  9	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 10	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 11	[  0]	TGETS	  3	3	0	; slot3 = uv1"unknown".warriorRosterIndex
		 12	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		 13	[  0]	ISEQV	  0		1	; if slot0 == slot1
		 14	[  0]	JMP  	  1		2	; 	goto 17
		 15	[  0]	KPRI 	  1		1	; slot1 = false
		 16	[  0]	JMP  	  2		1	; 	goto 18
		 17	[  0]	KPRI 	  1		2	; slot1 = true
		 18	[  0]	RET1 	  1		2	; return slot1
	243	[  0]	TSETS	 48	0	64	; slot0.isTutorialRosterUnit = slot48
	244	[  0]	FNEW 	 48		61	; N/A:0-0: 1 args, 2 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISEQP	  0		0	; if slot0 == nil
		  2	[  0]	JMP  	  1		24	; 	goto 27
		  3	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  4	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		  5	[  0]	TGETS	  3	3	4	; slot3 = uv1"unknown".archerRosterIndex
		  6	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		  7	[  0]	ISEQV	  0		1	; if slot0 == slot1
		  8	[  0]	JMP  	  1		20	; 	goto 29
		  9	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 10	[  0]	TGETS	  1	1	3	; slot1 = uv1"unknown".archerRef
		 11	[  0]	ISEQV	  0		1	; if slot0 == uv1"unknown".archerRef
		 12	[  0]	JMP  	  1		16	; 	goto 29
		 13	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 14	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 15	[  0]	TGETS	  3	3	2	; slot3 = uv1"unknown".postCoreArcherRosterIndex
		 16	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		 17	[  0]	ISEQV	  0		1	; if slot0 == slot1
		 18	[  0]	JMP  	  1		10	; 	goto 29
		 19	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 20	[  0]	TGETS	  1	1	1	; slot1 = uv1"unknown".postCoreArcherRef
		 21	[  0]	ISEQV	  0		1	; if slot0 == uv1"unknown".postCoreArcherRef
		 22	[  0]	JMP  	  1		6	; 	goto 29
		 23	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 24	[  0]	TGETS	  1	1	0	; slot1 = uv1"unknown".promotedUnitRef
		 25	[  0]	ISEQV	  0		1	; if slot0 == uv1"unknown".promotedUnitRef
		 26	[  0]	JMP  	  1		2	; 	goto 29
		 27	[  0]	KPRI 	  1		1	; slot1 = false
		 28	[  0]	JMP  	  2		1	; 	goto 30
		 29	[  0]	KPRI 	  1		2	; slot1 = true
		 30	[  0]	RET1 	  1		2	; return slot1
	245	[  0]	TSETS	 48	0	62	; slot0.isArcherUnit = slot48
	246	[  0]	FNEW 	 48		59	; N/A:0-0: 1 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	5	; slot1 = uv0"unknown".running
		  3	[  0]	ISF  	   		1	; if not uv0"unknown".running
		  4	[  0]	JMP  	  2		5	; 	goto 10
		  5	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  6	[  0]	TGETS	  1	1	4	; slot1 = uv0"unknown".step
		  7	[  0]	GGET 	  2		3	; slot2 = _env["STEP_CLASS_SKILL_HOVER"]
		  8	[  0]	ISEQV	  1		2	; if uv0"unknown".step == STEP_CLASS_SKILL_HOVER
		  9	[  0]	JMP  	  1		2	; 	goto 12
		 10	[  0]	KPRI 	  1		1	; slot1 = false
		 11	[  0]	RET1 	  1		2	; return slot1
		 12	[  0]	GGET 	  1		2	; slot1 = _env["tonumber"]
		 13	[  0]	MOV  	  3		0	; slot3 = slot0
		 14	[  0]	CALL 	  1	2	2	; slot1 = tonumber(STEP_CLASS_SKILL_HOVER)
		 15	[  0]	ISTC 	  0		1	; slot0 = slot1; if slot1
		 16	[  0]	JMP  	  2		1	; 	goto 18
		 17	[  0]	KSHORT	  0		0	; slot0 = 0
		 18	[  0]	KSHORT	  1		0	; slot1 = 0
		 19	[  0]	ISGT 	  0		1	; if slot0 > slot1
		 20	[  0]	JMP  	  1		2	; 	goto 23
		 21	[  0]	KPRI 	  1		1	; slot1 = false
		 22	[  0]	RET1 	  1		2	; return slot1
		 23	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 24	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 25	[  0]	TGETS	  2	2	1	; slot2 = uv0"unknown".classSkillHovered
		 26	[  0]	IST  	   		2	; if uv0"unknown".classSkillHovered
		 27	[  0]	JMP  	  3		1	; 	goto 29
		 28	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		 29	[  0]	TSETS	  2	1	1	; uv0"unknown".classSkillHovered = slot2
		 30	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 31	[  0]	TGETS	  1	1	1	; slot1 = uv0"unknown".classSkillHovered
		 32	[  0]	KPRI 	  2		2	; slot2 = true
		 33	[  0]	TSETV	  2	1	0	; uv0"unknown".classSkillHovered[slot0] = slot2
		 34	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 35	[  0]	TGETS	  1	1	1	; slot1 = uv0"unknown".classSkillHovered
		 36	[  0]	TGETB	  1	1	1	; slot1 = uv0"unknown".classSkillHovered[1]
		 37	[  0]	ISF  	   		1	; if not slot1
		 38	[  0]	JMP  	  2		12	; 	goto 51
		 39	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 40	[  0]	TGETS	  1	1	1	; slot1 = uv0"unknown".classSkillHovered
		 41	[  0]	TGETB	  1	1	2	; slot1 = uv0"unknown".classSkillHovered[2]
		 42	[  0]	ISF  	   		1	; if not slot1
		 43	[  0]	JMP  	  2		7	; 	goto 51
		 44	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 45	[  0]	TGETS	  1	1	0	; slot1 = uv0"unknown".classSkillCompleteT
		 46	[  0]	ISNEP	  1		0	; if uv0"unknown".classSkillCompleteT ~= nil
		 47	[  0]	JMP  	  1		3	; 	goto 51
		 48	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 49	[  0]	KSHORT	  2		0	; slot2 = 0
		 50	[  0]	TSETS	  2	1	0	; uv0"unknown".classSkillCompleteT = slot2
		 51	[  0]	KPRI 	  1		2	; slot1 = true
		 52	[  0]	RET1 	  1		2	; return slot1
	247	[  0]	TSETS	 48	0	60	; slot0.onClassSkillHovered = slot48
	248	[  0]	FNEW 	 48		57	; N/A:0-0: 1 args, 2 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	8	; slot1 = uv0"unknown".running
		  3	[  0]	ISF  	   		1	; if not uv0"unknown".running
		  4	[  0]	JMP  	  2		11	; 	goto 16
		  5	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  6	[  0]	TGETS	  1	1	7	; slot1 = uv0"unknown".step
		  7	[  0]	GGET 	  2		6	; slot2 = _env["STEP_POSITION"]
		  8	[  0]	ISNEV	  1		2	; if uv0"unknown".step ~= STEP_POSITION
		  9	[  0]	JMP  	  1		6	; 	goto 16
		 10	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 11	[  0]	TGETS	  1	1	5	; slot1 = uv1"unknown".isTutorialRosterUnit
		 12	[  0]	MOV  	  3		0	; slot3 = slot0
		 13	[  0]	CALL 	  1	2	2	; slot1 = uv1"unknown".isTutorialRosterUnit(STEP_POSITION)
		 14	[  0]	IST  	   		1	; if slot1
		 15	[  0]	JMP  	  1		2	; 	goto 18
		 16	[  0]	KPRI 	  1		1	; slot1 = false
		 17	[  0]	RET1 	  1		2	; return slot1
		 18	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 19	[  0]	TSETS	  0	1	4	; uv0"unknown".dragStartRef = slot0
		 20	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 21	[  0]	TGETS	  2	0	2	; slot2 = slot0.x
		 22	[  0]	TSETS	  2	1	3	; uv0"unknown".dragStartX = <unknown table>.x
		 23	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 24	[  0]	TGETS	  2	0	0	; slot2 = slot0.y
		 25	[  0]	TSETS	  2	1	1	; uv0"unknown".dragStartY = <unknown table>.y
		 26	[  0]	KPRI 	  1		2	; slot1 = true
		 27	[  0]	RET1 	  1		2	; return slot1
	249	[  0]	TSETS	 48	0	58	; slot0.onRosterDragStarted = slot48
	250	[  0]	FNEW 	 48		55	; N/A:0-0: 1 args, 2 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	16	; slot1 = uv0"unknown".running
		  3	[  0]	ISF  	   		1	; if not uv0"unknown".running
		  4	[  0]	JMP  	  2		7	; 	goto 12
		  5	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  6	[  0]	TGETS	  1	1	15	; slot1 = uv0"unknown".step
		  7	[  0]	GGET 	  2		14	; slot2 = _env["STEP_POSITION"]
		  8	[  0]	ISNEV	  1		2	; if uv0"unknown".step ~= STEP_POSITION
		  9	[  0]	JMP  	  1		2	; 	goto 12
		 10	[  0]	IST  	   		0	; if slot0
		 11	[  0]	JMP  	  1		2	; 	goto 14
		 12	[  0]	KPRI 	  1		1	; slot1 = false
		 13	[  0]	RET1 	  1		2	; return slot1
		 14	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 15	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 16	[  0]	TGETS	  3	3	13	; slot3 = uv0"unknown".archerRosterIndex
		 17	[  0]	CALL 	  1	2	2	; slot1 = uv1"unknown"(STEP_POSITION)
		 18	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 19	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 20	[  0]	TGETS	  4	4	12	; slot4 = uv0"unknown".warriorRosterIndex
		 21	[  0]	CALL 	  2	2	2	; slot2 = uv1"unknown"(uv0"unknown".archerRosterIndex)
		 22	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 23	[  0]	TGETS	  3	3	11	; slot3 = uv0"unknown".dragStartRef
		 24	[  0]	ISNEV	  3		0	; if uv0"unknown".dragStartRef ~= slot0
		 25	[  0]	JMP  	  3		38	; 	goto 64
		 26	[  0]	GGET 	  3		10	; slot3 = _env["math"]
		 27	[  0]	TGETS	  3	3	9	; slot3 = math.abs
		 28	[  0]	TGETS	  5	0	8	; slot5 = slot0.x
		 29	[  0]	IST  	   		5	; if <unknown table>.x
		 30	[  0]	JMP  	  6		1	; 	goto 32
		 31	[  0]	KSHORT	  5		0	; slot5 = 0
		 32	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 33	[  0]	TGETS	  6	6	7	; slot6 = uv0"unknown".dragStartX
		 34	[  0]	IST  	   		6	; if uv0"unknown".dragStartX
		 35	[  0]	JMP  	  7		4	; 	goto 40
		 36	[  0]	TGETS	  6	0	8	; slot6 = slot0.x
		 37	[  0]	IST  	   		6	; if <unknown table>.x
		 38	[  0]	JMP  	  7		1	; 	goto 40
		 39	[  0]	KSHORT	  6		0	; slot6 = 0
		 40	[  0]	SUBVV	  5	5	6	; slot5 = slot5 - slot6
		 41	[  0]	CALL 	  3	2	2	; slot3 = math.abs(uv0"unknown".warriorRosterIndex)
		 42	[  0]	KSHORT	  4		2	; slot4 = 2
		 43	[  0]	ISLE 	  4		3	; if slot4 <= math.abs
		 44	[  0]	JMP  	  3		21	; 	goto 66
		 45	[  0]	GGET 	  3		10	; slot3 = _env["math"]
		 46	[  0]	TGETS	  3	3	9	; slot3 = math.abs
		 47	[  0]	TGETS	  5	0	6	; slot5 = slot0.y
		 48	[  0]	IST  	   		5	; if <unknown table>.y
		 49	[  0]	JMP  	  6		1	; 	goto 51
		 50	[  0]	KSHORT	  5		0	; slot5 = 0
		 51	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 52	[  0]	TGETS	  6	6	5	; slot6 = uv0"unknown".dragStartY
		 53	[  0]	IST  	   		6	; if uv0"unknown".dragStartY
		 54	[  0]	JMP  	  7		4	; 	goto 59
		 55	[  0]	TGETS	  6	0	6	; slot6 = slot0.y
		 56	[  0]	IST  	   		6	; if <unknown table>.y
		 57	[  0]	JMP  	  7		1	; 	goto 59
		 58	[  0]	KSHORT	  6		0	; slot6 = 0
		 59	[  0]	SUBVV	  5	5	6	; slot5 = slot5 - slot6
		 60	[  0]	CALL 	  3	2	2	; slot3 = math.abs(slot4)
		 61	[  0]	KSHORT	  4		2	; slot4 = 2
		 62	[  0]	ISLE 	  4		3	; if slot4 <= math.abs
		 63	[  0]	JMP  	  3		2	; 	goto 66
		 64	[  0]	KPRI 	  3		1	; slot3 = false
		 65	[  0]	JMP  	  4		1	; 	goto 67
		 66	[  0]	KPRI 	  3		2	; slot3 = true
		 67	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 68	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 69	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 70	[  0]	KNIL 	  7		9	; slot7, slot8, slot9 = nil
		 71	[  0]	TSETS	  9	6	5	; uv0"unknown".dragStartY = slot9
		 72	[  0]	TSETS	  8	5	7	; uv0"unknown".dragStartX = slot8
		 73	[  0]	TSETS	  7	4	11	; uv0"unknown".dragStartRef = slot7
		 74	[  0]	ISF  	   		3	; if not slot3
		 75	[  0]	JMP  	  4		5	; 	goto 81
		 76	[  0]	ISNEV	  0		1	; if slot0 ~= slot1
		 77	[  0]	JMP  	  4		3	; 	goto 81
		 78	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 79	[  0]	KPRI 	  5		2	; slot5 = true
		 80	[  0]	TSETS	  5	4	4	; uv0"unknown".movedArcher = slot5
		 81	[  0]	ISF  	   		3	; if not slot3
		 82	[  0]	JMP  	  4		5	; 	goto 88
		 83	[  0]	ISNEV	  0		2	; if slot0 ~= slot2
		 84	[  0]	JMP  	  4		3	; 	goto 88
		 85	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 86	[  0]	KPRI 	  5		2	; slot5 = true
		 87	[  0]	TSETS	  5	4	3	; uv0"unknown".movedWarrior = slot5
		 88	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 89	[  0]	TGETS	  4	4	4	; slot4 = uv0"unknown".movedArcher
		 90	[  0]	ISF  	   		4	; if not uv0"unknown".movedArcher
		 91	[  0]	JMP  	  5		30	; 	goto 122
		 92	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 93	[  0]	TGETS	  4	4	3	; slot4 = uv0"unknown".movedWarrior
		 94	[  0]	ISF  	   		4	; if not uv0"unknown".movedWarrior
		 95	[  0]	JMP  	  5		26	; 	goto 122
		 96	[  0]	ISF  	   		1	; if not slot1
		 97	[  0]	JMP  	  4		24	; 	goto 122
		 98	[  0]	ISF  	   		2	; if not slot2
		 99	[  0]	JMP  	  4		22	; 	goto 122
		100	[  0]	TGETS	  4	2	8	; slot4 = slot2.x
		101	[  0]	IST  	   		4	; if <unknown table>.x
		102	[  0]	JMP  	  5		1	; 	goto 104
		103	[  0]	KSHORT	  4		0	; slot4 = 0
		104	[  0]	TGETS	  5	1	8	; slot5 = slot1.x
		105	[  0]	IST  	   		5	; if <unknown table>.x
		106	[  0]	JMP  	  6		1	; 	goto 108
		107	[  0]	KSHORT	  5		0	; slot5 = 0
		108	[  0]	ADDVN	  5	5	0	; slot5 = slot5 + 4
		109	[  0]	ISGE 	  5		4	; if slot5 >= slot4
		110	[  0]	JMP  	  4		11	; 	goto 122
		111	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		112	[  0]	GGET 	  5		2	; slot5 = _env["STEP_BATTLE_READY"]
		113	[  0]	TSETS	  5	4	15	; uv0"unknown".step = STEP_BATTLE_READY
		114	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		115	[  0]	KSHORT	  5		0	; slot5 = 0
		116	[  0]	TSETS	  5	4	1	; uv0"unknown".stepT = slot5
		117	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		118	[  0]	KSHORT	  5		0	; slot5 = 0
		119	[  0]	TSETS	  5	4	0	; uv0"unknown".stepElapsed = slot5
		120	[  0]	KPRI 	  4		2	; slot4 = true
		121	[  0]	RET1 	  4		2	; return slot4
		122	[  0]	KPRI 	  4		1	; slot4 = false
		123	[  0]	RET1 	  4		2	; return slot4
	251	[  0]	TSETS	 48	0	56	; slot0.onRosterDropped = slot48
	252	[  0]	FNEW 	 48		53	; N/A:0-0: 4 args, 11 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		3	; if not slot3
		  2	[  0]	JMP  	  4		40	; 	goto 43
		  3	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  4	[  0]	TGETS	  4	4	97	; slot4 = uv0"unknown".running
		  5	[  0]	ISNEP	  4		2	; if uv0"unknown".running ~= true
		  6	[  0]	JMP  	  4		5	; 	goto 12
		  7	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  8	[  0]	TGETS	  4	4	96	; slot4 = uv0"unknown".step
		  9	[  0]	GGET 	  5		95	; slot5 = _env["STEP_SHOP_INTRO"]
		 10	[  0]	ISEQV	  4		5	; if uv0"unknown".step == STEP_SHOP_INTRO
		 11	[  0]	JMP  	  4		4	; 	goto 16
		 12	[  0]	KPRI 	  4		0	; slot4 = nil
		 13	[  0]	JMP  	  5		3	; 	goto 17
		 14	[  0]	KPRI 	  4		1	; slot4 = false
		 15	[  0]	JMP  	  5		1	; 	goto 17
		 16	[  0]	KPRI 	  4		2	; slot4 = true
		 17	[  0]	TSETS	  4	3	98	; slot3._tutorialShopIntroFocus = slot4
		 18	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 19	[  0]	TGETS	  4	4	97	; slot4 = uv0"unknown".running
		 20	[  0]	ISNEP	  4		2	; if uv0"unknown".running ~= true
		 21	[  0]	JMP  	  4		5	; 	goto 27
		 22	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 23	[  0]	TGETS	  4	4	96	; slot4 = uv0"unknown".step
		 24	[  0]	GGET 	  5		93	; slot5 = _env["STEP_SHOP_RETURN"]
		 25	[  0]	ISEQV	  4		5	; if uv0"unknown".step == STEP_SHOP_RETURN
		 26	[  0]	JMP  	  4		4	; 	goto 31
		 27	[  0]	KPRI 	  4		0	; slot4 = nil
		 28	[  0]	JMP  	  5		3	; 	goto 32
		 29	[  0]	KPRI 	  4		1	; slot4 = false
		 30	[  0]	JMP  	  5		1	; 	goto 32
		 31	[  0]	KPRI 	  4		2	; slot4 = true
		 32	[  0]	TSETS	  4	3	94	; slot3._tutorialBattleReturnFocus = slot4
		 33	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 34	[  0]	TGETS	  4	4	97	; slot4 = uv0"unknown".running
		 35	[  0]	ISEQP	  4		2	; if uv0"unknown".running == true
		 36	[  0]	JMP  	  4		4	; 	goto 41
		 37	[  0]	KPRI 	  4		0	; slot4 = nil
		 38	[  0]	JMP  	  5		3	; 	goto 42
		 39	[  0]	KPRI 	  4		1	; slot4 = false
		 40	[  0]	JMP  	  5		1	; 	goto 42
		 41	[  0]	KPRI 	  4		2	; slot4 = true
		 42	[  0]	TSETS	  4	3	92	; slot3._tutorialRunning = slot4
		 43	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 44	[  0]	TGETS	  4	4	97	; slot4 = uv0"unknown".running
		 45	[  0]	ISF  	   		4	; if not uv0"unknown".running
		 46	[  0]	JMP  	  5		592	; 	goto 639
		 47	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 48	[  0]	GGET 	  5		90	; slot5 = _env["math"]
		 49	[  0]	TGETS	  5	5	89	; slot5 = math.min
		 50	[  0]	KSHORT	  7		1	; slot7 = 1
		 51	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 52	[  0]	TGETS	  8	8	91	; slot8 = uv0"unknown".stepT
		 53	[  0]	IST  	   		8	; if uv0"unknown".stepT
		 54	[  0]	JMP  	  9		1	; 	goto 56
		 55	[  0]	KSHORT	  8		0	; slot8 = 0
		 56	[  0]	ISTC 	  9		0	; slot9 = slot0; if slot0
		 57	[  0]	JMP  	  9		1	; 	goto 59
		 58	[  0]	KSHORT	  9		0	; slot9 = 0
		 59	[  0]	MULVN	  9	9	0	; slot9 = slot9 * 3
		 60	[  0]	ADDVV	  8	8	9	; slot8 = slot8 + slot9
		 61	[  0]	CALL 	  5	2	3	; slot5 = math.min(slot6, slot7)
		 62	[  0]	TSETS	  5	4	91	; uv0"unknown".stepT = math.min
		 63	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 64	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 65	[  0]	TGETS	  5	5	88	; slot5 = uv0"unknown".stepElapsed
		 66	[  0]	IST  	   		5	; if uv0"unknown".stepElapsed
		 67	[  0]	JMP  	  6		1	; 	goto 69
		 68	[  0]	KSHORT	  5		0	; slot5 = 0
		 69	[  0]	ISTC 	  6		0	; slot6 = slot0; if slot0
		 70	[  0]	JMP  	  6		1	; 	goto 72
		 71	[  0]	KSHORT	  6		0	; slot6 = 0
		 72	[  0]	ADDVV	  5	5	6	; slot5 = slot5 + slot6
		 73	[  0]	TSETS	  5	4	88	; uv0"unknown".stepElapsed = slot5
		 74	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 75	[  0]	TGETS	  4	4	96	; slot4 = uv0"unknown".step
		 76	[  0]	GGET 	  5		87	; slot5 = _env["STEP_UNIT_HOVER"]
		 77	[  0]	ISNEV	  4		5	; if uv0"unknown".step ~= STEP_UNIT_HOVER
		 78	[  0]	JMP  	  4		127	; 	goto 206
		 79	[  0]	GGET 	  4		86	; slot4 = _env["tonumber"]
		 80	[  0]	ISFC 	  6		3	; slot6 = slot3; if not slot3
		 81	[  0]	JMP  	  6		5	; 	goto 87
		 82	[  0]	TGETS	  6	3	85	; slot6 = slot3.battle
		 83	[  0]	ISF  	   		6	; if not <unknown table>.battle
		 84	[  0]	JMP  	  7		2	; 	goto 87
		 85	[  0]	TGETS	  6	3	85	; slot6 = slot3.battle
		 86	[  0]	TGETS	  6	6	84	; slot6 = <unknown table>.battle.allySize32
		 87	[  0]	CALL 	  4	2	2	; slot4 = tonumber(STEP_UNIT_HOVER)
		 88	[  0]	IST  	   		4	; if tonumber
		 89	[  0]	JMP  	  5		1	; 	goto 91
		 90	[  0]	KSHORT	  4		64	; slot4 = 64
		 91	[  0]	KPRI 	  5		1	; slot5 = false
		 92	[  0]	GGET 	  6		83	; slot6 = _env["ipairs"]
		 93	[  0]	TNEW 	  8		3	; slot8 = new table( array: 3, dict: 1)
		 94	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 95	[  0]	TGETS	  9	9	82	; slot9 = uv0"unknown".archerRosterIndex
		 96	[  0]	TSETB	  9	8	1	; slot8[1] = uv0"unknown".archerRosterIndex
		 97	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 98	[  0]	TGETS	  9	9	81	; slot9 = uv0"unknown".warriorRosterIndex
		 99	[  0]	TSETB	  9	8	2	; slot8[2] = uv0"unknown".warriorRosterIndex
		100	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		101	[  0]	JMP  	  9		35	; 	goto 137
		102	[  0]	UGET 	 11		1	; slot11 = uv1"unknwon"
		103	[  0]	MOV  	 13		10	; slot13 = slot10
		104	[  0]	CALL 	 11	2	2	; slot11 = uv1"unknown"(slot12)
		105	[  0]	ISF  	   		11	; if not uv1"unknown"
		106	[  0]	JMP  	 12		30	; 	goto 137
		107	[  0]	TGETS	 12	11	80	; slot12 = uv1"unknown".x
		108	[  0]	ISF  	   		12	; if not uv1"unknown".x
		109	[  0]	JMP  	 13		27	; 	goto 137
		110	[  0]	TGETS	 12	11	79	; slot12 = uv1"unknown".y
		111	[  0]	ISF  	   		12	; if not uv1"unknown".y
		112	[  0]	JMP  	 13		24	; 	goto 137
		113	[  0]	GGET 	 12		90	; slot12 = _env["math"]
		114	[  0]	TGETS	 12	12	78	; slot12 = math.abs
		115	[  0]	ISTC 	 14		1	; slot14 = slot1; if slot1
		116	[  0]	JMP  	 14		1	; 	goto 118
		117	[  0]	KSHORT	 14		55537	; slot14 = 55537
		118	[  0]	TGETS	 15	11	80	; slot15 = uv1"unknown".x
		119	[  0]	SUBVV	 14	14	15	; slot14 = slot14 - uv1"unknown".x
		120	[  0]	CALL 	 12	2	2	; slot12 = math.abs(slot13)
		121	[  0]	MULVN	 13	4	1	; slot13 = slot4 * 0.5
		122	[  0]	ISGT 	 12		13	; if math.abs > slot13
		123	[  0]	JMP  	 12		13	; 	goto 137
		124	[  0]	GGET 	 12		90	; slot12 = _env["math"]
		125	[  0]	TGETS	 12	12	78	; slot12 = math.abs
		126	[  0]	ISTC 	 14		2	; slot14 = slot2; if slot2
		127	[  0]	JMP  	 14		1	; 	goto 129
		128	[  0]	KSHORT	 14		55537	; slot14 = 55537
		129	[  0]	TGETS	 15	11	79	; slot15 = uv1"unknown".y
		130	[  0]	SUBVV	 14	14	15	; slot14 = slot14 - uv1"unknown".y
		131	[  0]	CALL 	 12	2	2	; slot12 = math.abs(slot13)
		132	[  0]	MULVN	 13	4	1	; slot13 = slot4 * 0.5
		133	[  0]	ISGT 	 12		13	; if math.abs > slot13
		134	[  0]	JMP  	 12		2	; 	goto 137
		135	[  0]	KPRI 	  5		2	; slot5 = true
		136	[  0]	JMP  	  6		2	; 	goto 139
		137	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, slot8; slot9, slot10 = ipairs(slot7, slot8)
		138	[  0]	ITERL	  9		-37	; slot8 = uv0"unknown".warriorRosterIndex; if uv0"unknown".warriorRosterIndex != nil goto 102
		139	[  0]	ISF  	   		5	; if not slot5
		140	[  0]	JMP  	  6		16	; 	goto 157
		141	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		142	[  0]	TGETS	  6	6	77	; slot6 = uv0"unknown".unitHoverWasOver
		143	[  0]	IST  	   		6	; if uv0"unknown".unitHoverWasOver
		144	[  0]	JMP  	  6		12	; 	goto 157
		145	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		146	[  0]	GGET 	  7		90	; slot7 = _env["math"]
		147	[  0]	TGETS	  7	7	89	; slot7 = math.min
		148	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
		149	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		150	[  0]	TGETS	 10	10	76	; slot10 = uv0"unknown".unitHoverCount
		151	[  0]	IST  	   		10	; if uv0"unknown".unitHoverCount
		152	[  0]	JMP  	 11		1	; 	goto 154
		153	[  0]	KSHORT	 10		0	; slot10 = 0
		154	[  0]	ADDVN	 10	10	2	; slot10 = slot10 + 1
		155	[  0]	CALL 	  7	2	3	; slot7 = math.min(slot8, uv2"unknown")
		156	[  0]	TSETS	  7	6	76	; uv0"unknown".unitHoverCount = math.min
		157	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		158	[  0]	TSETS	  5	6	77	; uv0"unknown".unitHoverWasOver = slot5
		159	[  0]	ISF  	   		5	; if not slot5
		160	[  0]	JMP  	  6		16	; 	goto 177
		161	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		162	[  0]	GGET 	  7		90	; slot7 = _env["math"]
		163	[  0]	TGETS	  7	7	89	; slot7 = math.min
		164	[  0]	UGET 	  9		3	; slot9 = uv3"unknwon"
		165	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		166	[  0]	TGETS	 10	10	75	; slot10 = uv0"unknown".unitHoverT
		167	[  0]	IST  	   		10	; if uv0"unknown".unitHoverT
		168	[  0]	JMP  	 11		1	; 	goto 170
		169	[  0]	KSHORT	 10		0	; slot10 = 0
		170	[  0]	ISTC 	 11		0	; slot11 = slot0; if slot0
		171	[  0]	JMP  	 11		1	; 	goto 173
		172	[  0]	KSHORT	 11		0	; slot11 = 0
		173	[  0]	ADDVV	 10	10	11	; slot10 = slot10 + slot11
		174	[  0]	CALL 	  7	2	3	; slot7 = math.min(slot8, uv3"unknown")
		175	[  0]	TSETS	  7	6	75	; uv0"unknown".unitHoverT = math.min
		176	[  0]	JMP  	  6		3	; 	goto 180
		177	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		178	[  0]	KSHORT	  7		0	; slot7 = 0
		179	[  0]	TSETS	  7	6	75	; uv0"unknown".unitHoverT = slot7
		180	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		181	[  0]	TGETS	  6	6	76	; slot6 = uv0"unknown".unitHoverCount
		182	[  0]	IST  	   		6	; if uv0"unknown".unitHoverCount
		183	[  0]	JMP  	  7		1	; 	goto 185
		184	[  0]	KSHORT	  6		0	; slot6 = 0
		185	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		186	[  0]	ISLE 	  7		6	; if uv2"unknown" <= slot6
		187	[  0]	JMP  	  6		8	; 	goto 196
		188	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		189	[  0]	TGETS	  6	6	75	; slot6 = uv0"unknown".unitHoverT
		190	[  0]	IST  	   		6	; if uv0"unknown".unitHoverT
		191	[  0]	JMP  	  7		1	; 	goto 193
		192	[  0]	KSHORT	  6		0	; slot6 = 0
		193	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		194	[  0]	ISGT 	  7		6	; if uv3"unknown" > slot6
		195	[  0]	JMP  	  6		442	; 	goto 638
		196	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		197	[  0]	GGET 	  7		74	; slot7 = _env["STEP_POSITION"]
		198	[  0]	TSETS	  7	6	96	; uv0"unknown".step = STEP_POSITION
		199	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		200	[  0]	KSHORT	  7		0	; slot7 = 0
		201	[  0]	TSETS	  7	6	91	; uv0"unknown".stepT = slot7
		202	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		203	[  0]	KSHORT	  7		0	; slot7 = 0
		204	[  0]	TSETS	  7	6	88	; uv0"unknown".stepElapsed = slot7
		205	[  0]	JMP  	  4		432	; 	goto 638
		206	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		207	[  0]	TGETS	  4	4	96	; slot4 = uv0"unknown".step
		208	[  0]	GGET 	  5		73	; slot5 = _env["STEP_MORE_SPINNING"]
		209	[  0]	ISNEV	  4		5	; if uv0"unknown".step ~= STEP_MORE_SPINNING
		210	[  0]	JMP  	  4		50	; 	goto 261
		211	[  0]	GGET 	  4		72	; slot4 = _env["rawget"]
		212	[  0]	GGET 	  6		71	; slot6 = _env["_G"]
		213	[  0]	KSTR 	  7		70	; slot7 = "slot"
		214	[  0]	CALL 	  4	2	3	; slot4 = rawget(STEP_MORE_SPINNING, _G)
		215	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		216	[  0]	TGETS	  5	5	69	; slot5 = uv0"unknown".nudgePressed
		217	[  0]	IST  	   		5	; if uv0"unknown".nudgePressed
		218	[  0]	JMP  	  5		419	; 	goto 638
		219	[  0]	ISF  	   		4	; if not rawget
		220	[  0]	JMP  	  5		417	; 	goto 638
		221	[  0]	TGETS	  5	4	68	; slot5 = rawget.spin
		222	[  0]	ISF  	   		5	; if not rawget.spin
		223	[  0]	JMP  	  6		414	; 	goto 638
		224	[  0]	TGETS	  5	4	68	; slot5 = rawget.spin
		225	[  0]	TGETS	  5	5	67	; slot5 = rawget.spin.active
		226	[  0]	IST  	   		5	; if rawget.spin.active
		227	[  0]	JMP  	  5		410	; 	goto 638
		228	[  0]	TGETS	  5	4	66	; slot5 = rawget.result
		229	[  0]	ISF  	   		5	; if not rawget.result
		230	[  0]	JMP  	  6		407	; 	goto 638
		231	[  0]	TGETS	  5	4	66	; slot5 = rawget.result
		232	[  0]	TGETS	  5	5	65	; slot5 = rawget.result.checked
		233	[  0]	ISF  	   		5	; if not rawget.result.checked
		234	[  0]	JMP  	  6		403	; 	goto 638
		235	[  0]	TGETS	  5	4	66	; slot5 = rawget.result
		236	[  0]	TGETS	  5	5	64	; slot5 = rawget.result.won
		237	[  0]	IST  	   		5	; if rawget.result.won
		238	[  0]	JMP  	  5		399	; 	goto 638
		239	[  0]	TGETS	  5	4	66	; slot5 = rawget.result
		240	[  0]	TGETS	  5	5	63	; slot5 = rawget.result.winSeq
		241	[  0]	ISF  	   		5	; if not rawget.result.winSeq
		242	[  0]	JMP  	  6		5	; 	goto 248
		243	[  0]	TGETS	  5	4	66	; slot5 = rawget.result
		244	[  0]	TGETS	  5	5	63	; slot5 = rawget.result.winSeq
		245	[  0]	TGETS	  5	5	67	; slot5 = rawget.result.winSeq.active
		246	[  0]	IST  	   		5	; if rawget.result.winSeq.active
		247	[  0]	JMP  	  5		390	; 	goto 638
		248	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		249	[  0]	GGET 	  6		62	; slot6 = _env["STEP_NUDGE_ACTION"]
		250	[  0]	TSETS	  6	5	96	; uv0"unknown".step = STEP_NUDGE_ACTION
		251	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		252	[  0]	KSHORT	  6		0	; slot6 = 0
		253	[  0]	TSETS	  6	5	91	; uv0"unknown".stepT = slot6
		254	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		255	[  0]	KSHORT	  6		0	; slot6 = 0
		256	[  0]	TSETS	  6	5	88	; uv0"unknown".stepElapsed = slot6
		257	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		258	[  0]	KPRI 	  6		1	; slot6 = false
		259	[  0]	TSETS	  6	5	61	; uv0"unknown".spinStarted = slot6
		260	[  0]	JMP  	  4		377	; 	goto 638
		261	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		262	[  0]	TGETS	  4	4	96	; slot4 = uv0"unknown".step
		263	[  0]	GGET 	  5		60	; slot5 = _env["STEP_CORE_SPINNING"]
		264	[  0]	ISNEV	  4		5	; if uv0"unknown".step ~= STEP_CORE_SPINNING
		265	[  0]	JMP  	  4		25	; 	goto 291
		266	[  0]	ISF  	   		3	; if not slot3
		267	[  0]	JMP  	  4		370	; 	goto 638
		268	[  0]	TGETS	  4	3	59	; slot4 = slot3._coreSelect
		269	[  0]	ISF  	   		4	; if not <unknown table>._coreSelect
		270	[  0]	JMP  	  5		367	; 	goto 638
		271	[  0]	TGETS	  4	3	59	; slot4 = slot3._coreSelect
		272	[  0]	TGETS	  4	4	67	; slot4 = <unknown table>._coreSelect.active
		273	[  0]	ISF  	   		4	; if not <unknown table>._coreSelect.active
		274	[  0]	JMP  	  5		363	; 	goto 638
		275	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		276	[  0]	GGET 	  5		58	; slot5 = _env["STEP_CORE_SELECT"]
		277	[  0]	TSETS	  5	4	96	; uv0"unknown".step = STEP_CORE_SELECT
		278	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		279	[  0]	KSHORT	  5		0	; slot5 = 0
		280	[  0]	TSETS	  5	4	91	; uv0"unknown".stepT = slot5
		281	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		282	[  0]	KSHORT	  5		0	; slot5 = 0
		283	[  0]	TSETS	  5	4	88	; uv0"unknown".stepElapsed = slot5
		284	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		285	[  0]	KPRI 	  5		1	; slot5 = false
		286	[  0]	TSETS	  5	4	61	; uv0"unknown".spinStarted = slot5
		287	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		288	[  0]	KPRI 	  5		1	; slot5 = false
		289	[  0]	TSETS	  5	4	57	; uv0"unknown".coreSelectTipReady = slot5
		290	[  0]	JMP  	  4		347	; 	goto 638
		291	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		292	[  0]	TGETS	  4	4	96	; slot4 = uv0"unknown".step
		293	[  0]	GGET 	  5		56	; slot5 = _env["STEP_POST_CORE_SPINNING"]
		294	[  0]	ISNEV	  4		5	; if uv0"unknown".step ~= STEP_POST_CORE_SPINNING
		295	[  0]	JMP  	  4		42	; 	goto 338
		296	[  0]	GGET 	  4		72	; slot4 = _env["rawget"]
		297	[  0]	GGET 	  6		71	; slot6 = _env["_G"]
		298	[  0]	KSTR 	  7		70	; slot7 = "slot"
		299	[  0]	CALL 	  4	2	3	; slot4 = rawget(STEP_POST_CORE_SPINNING, _G)
		300	[  0]	ISF  	   		4	; if not rawget
		301	[  0]	JMP  	  5		336	; 	goto 638
		302	[  0]	TGETS	  5	4	68	; slot5 = rawget.spin
		303	[  0]	ISF  	   		5	; if not rawget.spin
		304	[  0]	JMP  	  6		333	; 	goto 638
		305	[  0]	TGETS	  5	4	68	; slot5 = rawget.spin
		306	[  0]	TGETS	  5	5	67	; slot5 = rawget.spin.active
		307	[  0]	IST  	   		5	; if rawget.spin.active
		308	[  0]	JMP  	  5		329	; 	goto 638
		309	[  0]	TGETS	  5	4	66	; slot5 = rawget.result
		310	[  0]	ISF  	   		5	; if not rawget.result
		311	[  0]	JMP  	  6		326	; 	goto 638
		312	[  0]	TGETS	  5	4	66	; slot5 = rawget.result
		313	[  0]	TGETS	  5	5	65	; slot5 = rawget.result.checked
		314	[  0]	ISF  	   		5	; if not rawget.result.checked
		315	[  0]	JMP  	  6		322	; 	goto 638
		316	[  0]	TGETS	  5	4	66	; slot5 = rawget.result
		317	[  0]	TGETS	  5	5	63	; slot5 = rawget.result.winSeq
		318	[  0]	ISF  	   		5	; if not rawget.result.winSeq
		319	[  0]	JMP  	  6		5	; 	goto 325
		320	[  0]	TGETS	  5	4	66	; slot5 = rawget.result
		321	[  0]	TGETS	  5	5	63	; slot5 = rawget.result.winSeq
		322	[  0]	TGETS	  5	5	67	; slot5 = rawget.result.winSeq.active
		323	[  0]	IST  	   		5	; if rawget.result.winSeq.active
		324	[  0]	JMP  	  5		313	; 	goto 638
		325	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		326	[  0]	GGET 	  6		55	; slot6 = _env["STEP_POST_CORE_ARCHER_WIN"]
		327	[  0]	TSETS	  6	5	96	; uv0"unknown".step = STEP_POST_CORE_ARCHER_WIN
		328	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		329	[  0]	KSHORT	  6		0	; slot6 = 0
		330	[  0]	TSETS	  6	5	91	; uv0"unknown".stepT = slot6
		331	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		332	[  0]	KSHORT	  6		0	; slot6 = 0
		333	[  0]	TSETS	  6	5	88	; uv0"unknown".stepElapsed = slot6
		334	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		335	[  0]	KPRI 	  6		1	; slot6 = false
		336	[  0]	TSETS	  6	5	61	; uv0"unknown".spinStarted = slot6
		337	[  0]	JMP  	  4		300	; 	goto 638
		338	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		339	[  0]	TGETS	  4	4	96	; slot4 = uv0"unknown".step
		340	[  0]	GGET 	  5		54	; slot5 = _env["STEP_POST_CORE_SECOND_SPINNING"]
		341	[  0]	ISNEV	  4		5	; if uv0"unknown".step ~= STEP_POST_CORE_SECOND_SPINNING
		342	[  0]	JMP  	  4		42	; 	goto 385
		343	[  0]	GGET 	  4		72	; slot4 = _env["rawget"]
		344	[  0]	GGET 	  6		71	; slot6 = _env["_G"]
		345	[  0]	KSTR 	  7		70	; slot7 = "slot"
		346	[  0]	CALL 	  4	2	3	; slot4 = rawget(STEP_POST_CORE_SECOND_SPINNING, _G)
		347	[  0]	ISF  	   		4	; if not rawget
		348	[  0]	JMP  	  5		289	; 	goto 638
		349	[  0]	TGETS	  5	4	68	; slot5 = rawget.spin
		350	[  0]	ISF  	   		5	; if not rawget.spin
		351	[  0]	JMP  	  6		286	; 	goto 638
		352	[  0]	TGETS	  5	4	68	; slot5 = rawget.spin
		353	[  0]	TGETS	  5	5	67	; slot5 = rawget.spin.active
		354	[  0]	IST  	   		5	; if rawget.spin.active
		355	[  0]	JMP  	  5		282	; 	goto 638
		356	[  0]	TGETS	  5	4	66	; slot5 = rawget.result
		357	[  0]	ISF  	   		5	; if not rawget.result
		358	[  0]	JMP  	  6		279	; 	goto 638
		359	[  0]	TGETS	  5	4	66	; slot5 = rawget.result
		360	[  0]	TGETS	  5	5	65	; slot5 = rawget.result.checked
		361	[  0]	ISF  	   		5	; if not rawget.result.checked
		362	[  0]	JMP  	  6		275	; 	goto 638
		363	[  0]	TGETS	  5	4	66	; slot5 = rawget.result
		364	[  0]	TGETS	  5	5	63	; slot5 = rawget.result.winSeq
		365	[  0]	ISF  	   		5	; if not rawget.result.winSeq
		366	[  0]	JMP  	  6		5	; 	goto 372
		367	[  0]	TGETS	  5	4	66	; slot5 = rawget.result
		368	[  0]	TGETS	  5	5	63	; slot5 = rawget.result.winSeq
		369	[  0]	TGETS	  5	5	67	; slot5 = rawget.result.winSeq.active
		370	[  0]	IST  	   		5	; if rawget.result.winSeq.active
		371	[  0]	JMP  	  5		266	; 	goto 638
		372	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		373	[  0]	GGET 	  6		53	; slot6 = _env["STEP_SLOT_BROKEN"]
		374	[  0]	TSETS	  6	5	96	; uv0"unknown".step = STEP_SLOT_BROKEN
		375	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		376	[  0]	KSHORT	  6		0	; slot6 = 0
		377	[  0]	TSETS	  6	5	91	; uv0"unknown".stepT = slot6
		378	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		379	[  0]	KSHORT	  6		0	; slot6 = 0
		380	[  0]	TSETS	  6	5	88	; uv0"unknown".stepElapsed = slot6
		381	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		382	[  0]	KPRI 	  6		1	; slot6 = false
		383	[  0]	TSETS	  6	5	61	; uv0"unknown".spinStarted = slot6
		384	[  0]	JMP  	  4		253	; 	goto 638
		385	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		386	[  0]	TGETS	  4	4	96	; slot4 = uv0"unknown".step
		387	[  0]	GGET 	  5		52	; slot5 = _env["STEP_FREE_ABSORB"]
		388	[  0]	ISNEV	  4		5	; if uv0"unknown".step ~= STEP_FREE_ABSORB
		389	[  0]	JMP  	  4		31	; 	goto 421
		390	[  0]	GGET 	  4		72	; slot4 = _env["rawget"]
		391	[  0]	GGET 	  6		71	; slot6 = _env["_G"]
		392	[  0]	KSTR 	  7		51	; slot7 = "battlefield"
		393	[  0]	CALL 	  4	2	3	; slot4 = rawget(STEP_FREE_ABSORB, _G)
		394	[  0]	ISFC 	  5		4	; slot5 = rawget; if not rawget
		395	[  0]	JMP  	  5		5	; 	goto 401
		396	[  0]	TGETS	  5	4	50	; slot5 = rawget.classSelect
		397	[  0]	ISF  	   		5	; if not rawget.classSelect
		398	[  0]	JMP  	  6		2	; 	goto 401
		399	[  0]	TGETS	  5	4	50	; slot5 = rawget.classSelect
		400	[  0]	TGETS	  5	5	49	; slot5 = rawget.classSelect.ru
		401	[  0]	ISF  	   		5	; if not rawget.classSelect.ru
		402	[  0]	JMP  	  6		235	; 	goto 638
		403	[  0]	TGETS	  6	5	48	; slot6 = rawget.classSelect.ru.sym
		404	[  0]	ISNES	  6		47	; if rawget.classSelect.ru.sym ~= "A"
		405	[  0]	JMP  	  6		232	; 	goto 638
		406	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		407	[  0]	TSETS	  5	6	46	; uv0"unknown".promotedUnitRef = rawget.classSelect.ru
		408	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		409	[  0]	GGET 	  7		45	; slot7 = _env["STEP_CLASS_PROMOTION"]
		410	[  0]	TSETS	  7	6	96	; uv0"unknown".step = STEP_CLASS_PROMOTION
		411	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		412	[  0]	KSHORT	  7		0	; slot7 = 0
		413	[  0]	TSETS	  7	6	91	; uv0"unknown".stepT = slot7
		414	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		415	[  0]	KSHORT	  7		0	; slot7 = 0
		416	[  0]	TSETS	  7	6	88	; uv0"unknown".stepElapsed = slot7
		417	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		418	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
		419	[  0]	TSETS	  7	6	44	; uv0"unknown".classSkillHovered = slot7
		420	[  0]	JMP  	  4		217	; 	goto 638
		421	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		422	[  0]	TGETS	  4	4	96	; slot4 = uv0"unknown".step
		423	[  0]	GGET 	  5		43	; slot5 = _env["STEP_CLASS_SKILL_HOVER"]
		424	[  0]	ISNEV	  4		5	; if uv0"unknown".step ~= STEP_CLASS_SKILL_HOVER
		425	[  0]	JMP  	  4		54	; 	goto 480
		426	[  0]	GGET 	  4		72	; slot4 = _env["rawget"]
		427	[  0]	GGET 	  6		71	; slot6 = _env["_G"]
		428	[  0]	KSTR 	  7		51	; slot7 = "battlefield"
		429	[  0]	CALL 	  4	2	3	; slot4 = rawget(STEP_CLASS_SKILL_HOVER, _G)
		430	[  0]	ISFC 	  5		4	; slot5 = rawget; if not rawget
		431	[  0]	JMP  	  5		5	; 	goto 437
		432	[  0]	TGETS	  5	4	50	; slot5 = rawget.classSelect
		433	[  0]	ISF  	   		5	; if not rawget.classSelect
		434	[  0]	JMP  	  6		2	; 	goto 437
		435	[  0]	TGETS	  5	4	50	; slot5 = rawget.classSelect
		436	[  0]	TGETS	  5	5	42	; slot5 = rawget.classSelect._hoveredSkill
		437	[  0]	ISF  	   		5	; if not rawget.classSelect._hoveredSkill
		438	[  0]	JMP  	  6		7	; 	goto 446
		439	[  0]	TGETS	  6	5	41	; slot6 = rawget.classSelect._hoveredSkill.cardIndex
		440	[  0]	ISF  	   		6	; if not rawget.classSelect._hoveredSkill.cardIndex
		441	[  0]	JMP  	  7		4	; 	goto 446
		442	[  0]	UGET 	  6		4	; slot6 = uv4"unknwon"
		443	[  0]	TGETS	  6	6	40	; slot6 = uv4"unknown".onClassSkillHovered
		444	[  0]	TGETS	  8	5	41	; slot8 = rawget.classSelect._hoveredSkill.cardIndex
		445	[  0]	CALL 	  6	1	2	;  = uv4"unknown".onClassSkillHovered(slot7)
		446	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		447	[  0]	TGETS	  6	6	39	; slot6 = uv0"unknown".classSkillCompleteT
		448	[  0]	ISEQP	  6		0	; if uv0"unknown".classSkillCompleteT == nil
		449	[  0]	JMP  	  6		188	; 	goto 638
		450	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		451	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		452	[  0]	TGETS	  7	7	39	; slot7 = uv0"unknown".classSkillCompleteT
		453	[  0]	GGET 	  8		90	; slot8 = _env["math"]
		454	[  0]	TGETS	  8	8	38	; slot8 = math.max
		455	[  0]	KSHORT	 10		0	; slot10 = 0
		456	[  0]	ISTC 	 11		0	; slot11 = slot0; if slot0
		457	[  0]	JMP  	 11		1	; 	goto 459
		458	[  0]	KSHORT	 11		0	; slot11 = 0
		459	[  0]	CALL 	  8	2	3	; slot8 = math.max(uv3"unknown", slot10)
		460	[  0]	ADDVV	  7	7	8	; slot7 = uv0"unknown".classSkillCompleteT + math.max
		461	[  0]	TSETS	  7	6	39	; uv0"unknown".classSkillCompleteT = slot7
		462	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		463	[  0]	TGETS	  6	6	39	; slot6 = uv0"unknown".classSkillCompleteT
		464	[  0]	KNUM 	  7		3	; slot7 = 0.7
		465	[  0]	ISGT 	  7		6	; if slot7 > uv0"unknown".classSkillCompleteT
		466	[  0]	JMP  	  6		171	; 	goto 638
		467	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		468	[  0]	GGET 	  7		37	; slot7 = _env["STEP_CLASS_CHOOSE"]
		469	[  0]	TSETS	  7	6	96	; uv0"unknown".step = STEP_CLASS_CHOOSE
		470	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		471	[  0]	KSHORT	  7		0	; slot7 = 0
		472	[  0]	TSETS	  7	6	91	; uv0"unknown".stepT = slot7
		473	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		474	[  0]	KSHORT	  7		0	; slot7 = 0
		475	[  0]	TSETS	  7	6	88	; uv0"unknown".stepElapsed = slot7
		476	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		477	[  0]	KPRI 	  7		0	; slot7 = nil
		478	[  0]	TSETS	  7	6	39	; uv0"unknown".classSkillCompleteT = slot7
		479	[  0]	JMP  	  4		158	; 	goto 638
		480	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		481	[  0]	TGETS	  4	4	96	; slot4 = uv0"unknown".step
		482	[  0]	GGET 	  5		37	; slot5 = _env["STEP_CLASS_CHOOSE"]
		483	[  0]	ISNEV	  4		5	; if uv0"unknown".step ~= STEP_CLASS_CHOOSE
		484	[  0]	JMP  	  4		75	; 	goto 560
		485	[  0]	GGET 	  4		72	; slot4 = _env["rawget"]
		486	[  0]	GGET 	  6		71	; slot6 = _env["_G"]
		487	[  0]	KSTR 	  7		51	; slot7 = "battlefield"
		488	[  0]	CALL 	  4	2	3	; slot4 = rawget(STEP_CLASS_CHOOSE, _G)
		489	[  0]	ISF  	   		4	; if not rawget
		490	[  0]	JMP  	  5		3	; 	goto 494
		491	[  0]	TGETS	  5	4	50	; slot5 = rawget.classSelect
		492	[  0]	IST  	   		5	; if rawget.classSelect
		493	[  0]	JMP  	  5		144	; 	goto 638
		494	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		495	[  0]	TGETS	  5	5	46	; slot5 = uv0"unknown".promotedUnitRef
		496	[  0]	IST  	   		5	; if uv0"unknown".promotedUnitRef
		497	[  0]	JMP  	  6		8	; 	goto 506
		498	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		499	[  0]	TGETS	  5	5	36	; slot5 = uv0"unknown".postCoreArcherRef
		500	[  0]	IST  	   		5	; if uv0"unknown".postCoreArcherRef
		501	[  0]	JMP  	  6		4	; 	goto 506
		502	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		503	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		504	[  0]	TGETS	  7	7	35	; slot7 = uv0"unknown".postCoreArcherRosterIndex
		505	[  0]	CALL 	  5	2	2	; slot5 = uv1"unknown"(_G)
		506	[  0]	ISF  	   		5	; if not uv1"unknown"
		507	[  0]	JMP  	  6		12	; 	goto 520
		508	[  0]	TGETS	  6	5	34	; slot6 = uv1"unknown".subclassName
		509	[  0]	IST  	   		6	; if uv1"unknown".subclassName
		510	[  0]	JMP  	  7		12	; 	goto 523
		511	[  0]	TGETS	  6	5	33	; slot6 = uv1"unknown".subclass
		512	[  0]	IST  	   		6	; if uv1"unknown".subclass
		513	[  0]	JMP  	  7		9	; 	goto 523
		514	[  0]	TGETS	  6	5	32	; slot6 = uv1"unknown".subclassKey
		515	[  0]	IST  	   		6	; if uv1"unknown".subclassKey
		516	[  0]	JMP  	  7		6	; 	goto 523
		517	[  0]	TGETS	  6	5	31	; slot6 = uv1"unknown".name
		518	[  0]	IST  	   		6	; if uv1"unknown".name
		519	[  0]	JMP  	  7		3	; 	goto 523
		520	[  0]	UGET 	  6		5	; slot6 = uv5"unknwon"
		521	[  0]	KSTR 	  8		30	; slot8 = "unit_archer"
		522	[  0]	CALL 	  6	2	2	; slot6 = uv5"unknown"(uv0"unknown".postCoreArcherRosterIndex)
		523	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		524	[  0]	UGET 	  8		6	; slot8 = uv6"unknwon"
		525	[  0]	TGETS	  8	8	28	; slot8 = uv6"unknown".translateUnitName
		526	[  0]	GGET 	 10		27	; slot10 = _env["tostring"]
		527	[  0]	MOV  	 12		6	; slot12 = uv5"unknown"
		528	[  0]	CALL 	 10	2	2	; slot10 = tostring(slot11)
		529	[  0]	GGET 	 11		71	; slot11 = _env["_G"]
		530	[  0]	TGETS	 11	11	26	; slot11 = _G.currentGameLang
		531	[  0]	IST  	   		11	; if _G.currentGameLang
		532	[  0]	JMP  	 12		1	; 	goto 534
		533	[  0]	KSTR 	 11		25	; slot11 = "ko"
		534	[  0]	CALL 	  8	2	3	; slot8 = uv6"unknown".translateUnitName(uv3"unknown", tostring)
		535	[  0]	TSETS	  8	7	29	; uv0"unknown".promotedName = uv6"unknown".translateUnitName
		536	[  0]	ISF  	   		4	; if not rawget
		537	[  0]	JMP  	  7		2	; 	goto 540
		538	[  0]	KPRI 	  7		1	; slot7 = false
		539	[  0]	TSETS	  7	4	24	; rawget.absorbMode = slot7
		540	[  0]	GGET 	  7		72	; slot7 = _env["rawget"]
		541	[  0]	GGET 	  9		71	; slot9 = _env["_G"]
		542	[  0]	KSTR 	 10		23	; slot10 = "firemanSetAnim"
		543	[  0]	CALL 	  7	2	3	; slot7 = rawget(uv6"unknown".translateUnitName, _G)
		544	[  0]	ISF  	   		7	; if not rawget
		545	[  0]	JMP  	  8		4	; 	goto 550
		546	[  0]	GGET 	  8		22	; slot8 = _env["pcall"]
		547	[  0]	MOV  	 10		7	; slot10 = rawget
		548	[  0]	KSTR 	 11		21	; slot11 = "off"
		549	[  0]	CALL 	  8	1	3	;  = pcall(_G, rawget)
		550	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		551	[  0]	GGET 	  9		20	; slot9 = _env["STEP_PROMOTED_ARCHER"]
		552	[  0]	TSETS	  9	8	96	; uv0"unknown".step = STEP_PROMOTED_ARCHER
		553	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		554	[  0]	KSHORT	  9		0	; slot9 = 0
		555	[  0]	TSETS	  9	8	91	; uv0"unknown".stepT = slot9
		556	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		557	[  0]	KSHORT	  9		0	; slot9 = 0
		558	[  0]	TSETS	  9	8	88	; uv0"unknown".stepElapsed = slot9
		559	[  0]	JMP  	  4		78	; 	goto 638
		560	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		561	[  0]	TGETS	  4	4	96	; slot4 = uv0"unknown".step
		562	[  0]	GGET 	  5		19	; slot5 = _env["STEP_ABSORB_DRAG"]
		563	[  0]	ISNEV	  4		5	; if uv0"unknown".step ~= STEP_ABSORB_DRAG
		564	[  0]	JMP  	  4		17	; 	goto 582
		565	[  0]	GGET 	  4		72	; slot4 = _env["rawget"]
		566	[  0]	GGET 	  6		71	; slot6 = _env["_G"]
		567	[  0]	KSTR 	  7		51	; slot7 = "battlefield"
		568	[  0]	CALL 	  4	2	3	; slot4 = rawget(STEP_ABSORB_DRAG, _G)
		569	[  0]	ISF  	   		4	; if not rawget
		570	[  0]	JMP  	  5		67	; 	goto 638
		571	[  0]	TGETS	  5	4	18	; slot5 = rawget.imprintModal
		572	[  0]	ISF  	   		5	; if not rawget.imprintModal
		573	[  0]	JMP  	  6		64	; 	goto 638
		574	[  0]	TGETS	  5	4	18	; slot5 = rawget.imprintModal
		575	[  0]	TGETS	  5	5	67	; slot5 = rawget.imprintModal.active
		576	[  0]	ISF  	   		5	; if not rawget.imprintModal.active
		577	[  0]	JMP  	  6		60	; 	goto 638
		578	[  0]	UGET 	  5		4	; slot5 = uv4"unknwon"
		579	[  0]	TGETS	  5	5	17	; slot5 = uv4"unknown".onAbsorbModalOpened
		580	[  0]	CALL 	  5	1	1	;  = uv4"unknown".onAbsorbModalOpened()
		581	[  0]	JMP  	  4		56	; 	goto 638
		582	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		583	[  0]	TGETS	  4	4	96	; slot4 = uv0"unknown".step
		584	[  0]	GGET 	  5		16	; slot5 = _env["STEP_IMPRINT_INSPECT"]
		585	[  0]	ISNEV	  4		5	; if uv0"unknown".step ~= STEP_IMPRINT_INSPECT
		586	[  0]	JMP  	  4		51	; 	goto 638
		587	[  0]	ISFC 	  4		3	; slot4 = slot3; if not slot3
		588	[  0]	JMP  	  4		1	; 	goto 590
		589	[  0]	TGETS	  4	3	15	; slot4 = slot3.tooltip
		590	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		591	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		592	[  0]	TGETS	  7	7	82	; slot7 = uv0"unknown".archerRosterIndex
		593	[  0]	CALL 	  5	2	2	; slot5 = uv1"unknown"(_G)
		594	[  0]	ISF  	   		4	; if not <unknown table>.tooltip
		595	[  0]	JMP  	  6		22	; 	goto 618
		596	[  0]	TGETS	  6	4	14	; slot6 = <unknown table>.tooltip.locked
		597	[  0]	ISF  	   		6	; if not <unknown table>.tooltip.locked
		598	[  0]	JMP  	  7		19	; 	goto 618
		599	[  0]	TGETS	  6	4	13	; slot6 = <unknown table>.tooltip.target
		600	[  0]	ISF  	   		6	; if not <unknown table>.tooltip.target
		601	[  0]	JMP  	  7		16	; 	goto 618
		602	[  0]	TGETS	  6	4	13	; slot6 = <unknown table>.tooltip.target
		603	[  0]	TGETS	  6	6	12	; slot6 = <unknown table>.tooltip.target.ref
		604	[  0]	ISNEV	  6		5	; if <unknown table>.tooltip.target.ref ~= uv1"unknown"
		605	[  0]	JMP  	  6		12	; 	goto 618
		606	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		607	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		608	[  0]	TGETS	  7	7	11	; slot7 = uv0"unknown".imprintInspectT
		609	[  0]	IST  	   		7	; if uv0"unknown".imprintInspectT
		610	[  0]	JMP  	  8		1	; 	goto 612
		611	[  0]	KSHORT	  7		0	; slot7 = 0
		612	[  0]	ISTC 	  8		0	; slot8 = slot0; if slot0
		613	[  0]	JMP  	  8		1	; 	goto 615
		614	[  0]	KSHORT	  8		0	; slot8 = 0
		615	[  0]	ADDVV	  7	7	8	; slot7 = slot7 + slot8
		616	[  0]	TSETS	  7	6	11	; uv0"unknown".imprintInspectT = slot7
		617	[  0]	JMP  	  6		3	; 	goto 621
		618	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		619	[  0]	KSHORT	  7		0	; slot7 = 0
		620	[  0]	TSETS	  7	6	11	; uv0"unknown".imprintInspectT = slot7
		621	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		622	[  0]	TGETS	  6	6	11	; slot6 = uv0"unknown".imprintInspectT
		623	[  0]	IST  	   		6	; if uv0"unknown".imprintInspectT
		624	[  0]	JMP  	  7		1	; 	goto 626
		625	[  0]	KSHORT	  6		0	; slot6 = 0
		626	[  0]	KSHORT	  7		3	; slot7 = 3
		627	[  0]	ISGT 	  7		6	; if slot7 > slot6
		628	[  0]	JMP  	  6		9	; 	goto 638
		629	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		630	[  0]	GGET 	  7		10	; slot7 = _env["STEP_FINAL_READY"]
		631	[  0]	TSETS	  7	6	96	; uv0"unknown".step = STEP_FINAL_READY
		632	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		633	[  0]	KSHORT	  7		0	; slot7 = 0
		634	[  0]	TSETS	  7	6	91	; uv0"unknown".stepT = slot7
		635	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		636	[  0]	KSHORT	  7		0	; slot7 = 0
		637	[  0]	TSETS	  7	6	88	; uv0"unknown".stepElapsed = slot7
		638	[  0]	RET0 	  0		1	; return
		639	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		640	[  0]	TGETS	  4	4	67	; slot4 = uv0"unknown".active
		641	[  0]	IST  	   		4	; if uv0"unknown".active
		642	[  0]	JMP  	  4		1	; 	goto 644
		643	[  0]	RET0 	  0		1	; return
		644	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		645	[  0]	GGET 	  5		90	; slot5 = _env["math"]
		646	[  0]	TGETS	  5	5	89	; slot5 = math.min
		647	[  0]	KSHORT	  7		1	; slot7 = 1
		648	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		649	[  0]	TGETS	  8	8	9	; slot8 = uv0"unknown".t
		650	[  0]	IST  	   		8	; if uv0"unknown".t
		651	[  0]	JMP  	  9		1	; 	goto 653
		652	[  0]	KSHORT	  8		0	; slot8 = 0
		653	[  0]	ISTC 	  9		0	; slot9 = slot0; if slot0
		654	[  0]	JMP  	  9		1	; 	goto 656
		655	[  0]	KSHORT	  9		0	; slot9 = 0
		656	[  0]	MULVN	  9	9	4	; slot9 = slot9 * 3.2
		657	[  0]	ADDVV	  8	8	9	; slot8 = slot8 + slot9
		658	[  0]	CALL 	  5	2	3	; slot5 = math.min(uv0"unknown", slot7)
		659	[  0]	TSETS	  5	4	9	; uv0"unknown".t = math.min
		660	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		661	[  0]	GGET 	  5		90	; slot5 = _env["math"]
		662	[  0]	TGETS	  5	5	89	; slot5 = math.min
		663	[  0]	UGET 	  7		7	; slot7 = uv7"unknwon"
		664	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		665	[  0]	TGETS	  8	8	8	; slot8 = uv0"unknown".skipLockElapsed
		666	[  0]	IST  	   		8	; if uv0"unknown".skipLockElapsed
		667	[  0]	JMP  	  9		1	; 	goto 669
		668	[  0]	KSHORT	  8		0	; slot8 = 0
		669	[  0]	GGET 	  9		90	; slot9 = _env["math"]
		670	[  0]	TGETS	  9	9	38	; slot9 = math.max
		671	[  0]	KSHORT	 11		0	; slot11 = 0
		672	[  0]	ISTC 	 12		0	; slot12 = slot0; if slot0
		673	[  0]	JMP  	 12		1	; 	goto 675
		674	[  0]	KSHORT	 12		0	; slot12 = 0
		675	[  0]	CALL 	  9	2	3	; slot9 = math.max(rawget, slot11)
		676	[  0]	ADDVV	  8	8	9	; slot8 = slot8 + math.max
		677	[  0]	CALL 	  5	2	3	; slot5 = math.min(uv0"unknown", uv7"unknown")
		678	[  0]	TSETS	  5	4	8	; uv0"unknown".skipLockElapsed = math.min
		679	[  0]	UGET 	  4		8	; slot4 = uv8"unknwon"
		680	[  0]	MOV  	  6		3	; slot6 = slot3
		681	[  0]	CALL 	  4	2	2	; slot4 = uv8"unknown"(math.min)
		682	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		683	[  0]	TSETS	  4	5	7	; uv0"unknown".buttons = uv8"unknown"
		684	[  0]	UGET 	  5		9	; slot5 = uv9"unknwon"
		685	[  0]	ISTC 	  7		1	; slot7 = slot1; if slot1
		686	[  0]	JMP  	  7		1	; 	goto 688
		687	[  0]	KSHORT	  7		55537	; slot7 = 55537
		688	[  0]	ISTC 	  8		2	; slot8 = slot2; if slot2
		689	[  0]	JMP  	  8		1	; 	goto 691
		690	[  0]	KSHORT	  8		55537	; slot8 = 55537
		691	[  0]	TGETS	  9	4	6	; slot9 = uv8"unknown".start
		692	[  0]	TGETS	 10	4	5	; slot10 = uv8"unknown".buttonScale
		693	[  0]	TGETS	 11	4	4	; slot11 = uv8"unknown".buttonExtraSrc
		694	[  0]	CALL 	  5	2	6	; slot5 = uv9"unknown"(slot6, slot7, slot8, uv8"unknown".start, uv8"unknown".buttonScale)
		695	[  0]	ISF  	   		5	; if not slot5
		696	[  0]	JMP  	  6		4	; 	goto 701
		697	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		698	[  0]	KSTR 	  6		6	; slot6 = "start"
		699	[  0]	TSETS	  6	5	3	; uv0"unknown".hovered = slot6
		700	[  0]	JMP  	  5		24	; 	goto 725
		701	[  0]	UGET 	  5		10	; slot5 = uv10"unknwon"
		702	[  0]	CALL 	  5	2	1	; slot5 = uv10"unknown"()
		703	[  0]	ISF  	   		5	; if not uv10"unknown"
		704	[  0]	JMP  	  6		17	; 	goto 722
		705	[  0]	UGET 	  5		9	; slot5 = uv9"unknwon"
		706	[  0]	ISTC 	  7		1	; slot7 = slot1; if slot1
		707	[  0]	JMP  	  7		1	; 	goto 709
		708	[  0]	KSHORT	  7		55537	; slot7 = 55537
		709	[  0]	ISTC 	  8		2	; slot8 = slot2; if slot2
		710	[  0]	JMP  	  8		1	; 	goto 712
		711	[  0]	KSHORT	  8		55537	; slot8 = 55537
		712	[  0]	TGETS	  9	4	2	; slot9 = uv8"unknown".skip
		713	[  0]	TGETS	 10	4	5	; slot10 = uv8"unknown".buttonScale
		714	[  0]	TGETS	 11	4	4	; slot11 = uv8"unknown".buttonExtraSrc
		715	[  0]	CALL 	  5	2	6	; slot5 = uv9"unknown"(slot6, slot7, slot8, uv8"unknown".skip, uv8"unknown".buttonScale)
		716	[  0]	ISF  	   		5	; if not slot5
		717	[  0]	JMP  	  6		4	; 	goto 722
		718	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		719	[  0]	KSTR 	  6		2	; slot6 = "skip"
		720	[  0]	TSETS	  6	5	3	; uv0"unknown".hovered = slot6
		721	[  0]	JMP  	  5		3	; 	goto 725
		722	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		723	[  0]	KPRI 	  6		0	; slot6 = nil
		724	[  0]	TSETS	  6	5	3	; uv0"unknown".hovered = slot6
		725	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		726	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		727	[  0]	TGETS	  6	6	1	; slot6 = uv0"unknown".hoverStart
		728	[  0]	IST  	   		6	; if uv0"unknown".hoverStart
		729	[  0]	JMP  	  7		1	; 	goto 731
		730	[  0]	KSHORT	  6		0	; slot6 = 0
		731	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		732	[  0]	TGETS	  7	7	3	; slot7 = uv0"unknown".hovered
		733	[  0]	ISNES	  7		6	; if uv0"unknown".hovered ~= "start"
		734	[  0]	JMP  	  7		2	; 	goto 737
		735	[  0]	KSHORT	  7		1	; slot7 = 1
		736	[  0]	JMP  	  8		1	; 	goto 738
		737	[  0]	KSHORT	  7		0	; slot7 = 0
		738	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		739	[  0]	TGETS	  8	8	1	; slot8 = uv0"unknown".hoverStart
		740	[  0]	IST  	   		8	; if uv0"unknown".hoverStart
		741	[  0]	JMP  	  9		1	; 	goto 743
		742	[  0]	KSHORT	  8		0	; slot8 = 0
		743	[  0]	SUBVV	  7	7	8	; slot7 = slot7 - slot8
		744	[  0]	MULVN	  7	7	5	; slot7 = slot7 * 0.25
		745	[  0]	ADDVV	  6	6	7	; slot6 = slot6 + slot7
		746	[  0]	TSETS	  6	5	1	; uv0"unknown".hoverStart = slot6
		747	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		748	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		749	[  0]	TGETS	  6	6	0	; slot6 = uv0"unknown".hoverSkip
		750	[  0]	IST  	   		6	; if uv0"unknown".hoverSkip
		751	[  0]	JMP  	  7		1	; 	goto 753
		752	[  0]	KSHORT	  6		0	; slot6 = 0
		753	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		754	[  0]	TGETS	  7	7	3	; slot7 = uv0"unknown".hovered
		755	[  0]	ISNES	  7		2	; if uv0"unknown".hovered ~= "skip"
		756	[  0]	JMP  	  7		2	; 	goto 759
		757	[  0]	KSHORT	  7		1	; slot7 = 1
		758	[  0]	JMP  	  8		1	; 	goto 760
		759	[  0]	KSHORT	  7		0	; slot7 = 0
		760	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		761	[  0]	TGETS	  8	8	0	; slot8 = uv0"unknown".hoverSkip
		762	[  0]	IST  	   		8	; if uv0"unknown".hoverSkip
		763	[  0]	JMP  	  9		1	; 	goto 765
		764	[  0]	KSHORT	  8		0	; slot8 = 0
		765	[  0]	SUBVV	  7	7	8	; slot7 = slot7 - slot8
		766	[  0]	MULVN	  7	7	5	; slot7 = slot7 * 0.25
		767	[  0]	ADDVV	  6	6	7	; slot6 = slot6 + slot7
		768	[  0]	TSETS	  6	5	0	; uv0"unknown".hoverSkip = slot6
		769	[  0]	RET0 	  0		1	; return
	253	[  0]	TSETS	 48	0	54	; slot0.update = slot48
	254	[  0]	FNEW 	 48		52	; N/A:0-0: 1 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	33	; slot1 = uv0"unknown".active
		  3	[  0]	IST  	   		1	; if uv0"unknown".active
		  4	[  0]	JMP  	  1		2	; 	goto 7
		  5	[  0]	KPRI 	  1		0	; slot1 = nil
		  6	[  0]	RET1 	  1		2	; return slot1
		  7	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  8	[  0]	KPRI 	  2		1	; slot2 = false
		  9	[  0]	TSETS	  2	1	32	; uv0"unknown".pending = slot2
		 10	[  0]	ISNES	  0		31	; if slot0 ~= "start"
		 11	[  0]	JMP  	  1		91	; 	goto 103
		 12	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 13	[  0]	KPRI 	  2		1	; slot2 = false
		 14	[  0]	TSETS	  2	1	33	; uv0"unknown".active = slot2
		 15	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 16	[  0]	KPRI 	  2		2	; slot2 = true
		 17	[  0]	TSETS	  2	1	30	; uv0"unknown".running = slot2
		 18	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 19	[  0]	KPRI 	  2		1	; slot2 = false
		 20	[  0]	TSETS	  2	1	29	; uv0"unknown".skipped = slot2
		 21	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 22	[  0]	GGET 	  2		27	; slot2 = _env["STEP_SLOT"]
		 23	[  0]	TSETS	  2	1	28	; uv0"unknown".step = STEP_SLOT
		 24	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 25	[  0]	KPRI 	  2		1	; slot2 = false
		 26	[  0]	TSETS	  2	1	26	; uv0"unknown".spinStarted = slot2
		 27	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 28	[  0]	KSHORT	  2		0	; slot2 = 0
		 29	[  0]	TSETS	  2	1	25	; uv0"unknown".stepT = slot2
		 30	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 31	[  0]	KSHORT	  2		0	; slot2 = 0
		 32	[  0]	TSETS	  2	1	24	; uv0"unknown".stepElapsed = slot2
		 33	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 34	[  0]	KPRI 	  2		0	; slot2 = nil
		 35	[  0]	TSETS	  2	1	23	; uv0"unknown".winLayout = slot2
		 36	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 37	[  0]	KPRI 	  2		0	; slot2 = nil
		 38	[  0]	TSETS	  2	1	22	; uv0"unknown".winRosterIndex = slot2
		 39	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 40	[  0]	KPRI 	  2		0	; slot2 = nil
		 41	[  0]	TSETS	  2	1	21	; uv0"unknown".archerRosterIndex = slot2
		 42	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 43	[  0]	KPRI 	  2		0	; slot2 = nil
		 44	[  0]	TSETS	  2	1	20	; uv0"unknown".archerRef = slot2
		 45	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 46	[  0]	KPRI 	  2		0	; slot2 = nil
		 47	[  0]	TSETS	  2	1	19	; uv0"unknown".warriorRosterIndex = slot2
		 48	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 49	[  0]	KPRI 	  2		0	; slot2 = nil
		 50	[  0]	TSETS	  2	1	18	; uv0"unknown".mageRosterIndex = slot2
		 51	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 52	[  0]	KPRI 	  2		0	; slot2 = nil
		 53	[  0]	TSETS	  2	1	17	; uv0"unknown".spearRosterIndex = slot2
		 54	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 55	[  0]	KPRI 	  2		0	; slot2 = nil
		 56	[  0]	TSETS	  2	1	16	; uv0"unknown".extraWarriorRosterIndex = slot2
		 57	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 58	[  0]	KPRI 	  2		0	; slot2 = nil
		 59	[  0]	TSETS	  2	1	15	; uv0"unknown".postCoreArcherRosterIndex = slot2
		 60	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 61	[  0]	KPRI 	  2		0	; slot2 = nil
		 62	[  0]	TSETS	  2	1	14	; uv0"unknown".postCoreArcherRef = slot2
		 63	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 64	[  0]	KPRI 	  2		0	; slot2 = nil
		 65	[  0]	TSETS	  2	1	13	; uv0"unknown".promotedUnitRef = slot2
		 66	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 67	[  0]	KSHORT	  2		0	; slot2 = 0
		 68	[  0]	TSETS	  2	1	12	; uv0"unknown".postCoreSpearCount = slot2
		 69	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 70	[  0]	KPRI 	  2		0	; slot2 = nil
		 71	[  0]	TSETS	  2	1	11	; uv0"unknown".classSkillHovered = slot2
		 72	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 73	[  0]	KPRI 	  2		0	; slot2 = nil
		 74	[  0]	TSETS	  2	1	10	; uv0"unknown".classSkillCompleteT = slot2
		 75	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 76	[  0]	KPRI 	  2		0	; slot2 = nil
		 77	[  0]	TSETS	  2	1	9	; uv0"unknown".promotedName = slot2
		 78	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 79	[  0]	KSHORT	  2		0	; slot2 = 0
		 80	[  0]	TSETS	  2	1	8	; uv0"unknown".unitHoverT = slot2
		 81	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 82	[  0]	KSHORT	  2		0	; slot2 = 0
		 83	[  0]	TSETS	  2	1	7	; uv0"unknown".unitHoverCount = slot2
		 84	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 85	[  0]	KPRI 	  2		1	; slot2 = false
		 86	[  0]	TSETS	  2	1	6	; uv0"unknown".unitHoverWasOver = slot2
		 87	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 88	[  0]	KPRI 	  2		1	; slot2 = false
		 89	[  0]	TSETS	  2	1	5	; uv0"unknown".movedArcher = slot2
		 90	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 91	[  0]	KPRI 	  2		1	; slot2 = false
		 92	[  0]	TSETS	  2	1	4	; uv0"unknown".movedWarrior = slot2
		 93	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 94	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 95	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 96	[  0]	KNIL 	  4		6	; slot4, slot5, slot6 = nil
		 97	[  0]	TSETS	  6	3	1	; uv0"unknown".dragStartY = slot6
		 98	[  0]	TSETS	  5	2	2	; uv0"unknown".dragStartX = slot5
		 99	[  0]	TSETS	  4	1	3	; uv0"unknown".dragStartRef = slot4
		100	[  0]	KSTR 	  1		31	; slot1 = "start"
		101	[  0]	RET1 	  1		2	; return slot1
		102	[  0]	JMP  	  1		16	; 	goto 119
		103	[  0]	ISNES	  0		0	; if slot0 ~= "skip"
		104	[  0]	JMP  	  1		14	; 	goto 119
		105	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		106	[  0]	KPRI 	  2		1	; slot2 = false
		107	[  0]	TSETS	  2	1	33	; uv0"unknown".active = slot2
		108	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		109	[  0]	KPRI 	  2		1	; slot2 = false
		110	[  0]	TSETS	  2	1	30	; uv0"unknown".running = slot2
		111	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		112	[  0]	KPRI 	  2		2	; slot2 = true
		113	[  0]	TSETS	  2	1	29	; uv0"unknown".skipped = slot2
		114	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		115	[  0]	KSHORT	  2		0	; slot2 = 0
		116	[  0]	TSETS	  2	1	28	; uv0"unknown".step = slot2
		117	[  0]	KSTR 	  1		0	; slot1 = "skip"
		118	[  0]	RET1 	  1		2	; return slot1
		119	[  0]	KPRI 	  1		0	; slot1 = nil
		120	[  0]	RET1 	  1		2	; return slot1
	255	[  0]	FNEW 	 49		50	; N/A:0-0: 4 args, 6 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  2	[  0]	TGETS	  4	4	7	; slot4 = uv0"unknown".active
		  3	[  0]	IST  	   		4	; if uv0"unknown".active
		  4	[  0]	JMP  	  4		2	; 	goto 7
		  5	[  0]	KPRI 	  4		0	; slot4 = nil
		  6	[  0]	RET1 	  4		2	; return slot4
		  7	[  0]	ISEQN	  2		0	; if slot2 == 1
		  8	[  0]	JMP  	  4		2	; 	goto 11
		  9	[  0]	KSTR 	  4		6	; slot4 = "blocked"
		 10	[  0]	RET1 	  4		2	; return slot4
		 11	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 12	[  0]	TGETS	  4	4	5	; slot4 = uv0"unknown".t
		 13	[  0]	IST  	   		4	; if uv0"unknown".t
		 14	[  0]	JMP  	  5		1	; 	goto 16
		 15	[  0]	KSHORT	  4		0	; slot4 = 0
		 16	[  0]	KNUM 	  5		1	; slot5 = 0.82
		 17	[  0]	ISGE 	  4		5	; if slot4 >= slot5
		 18	[  0]	JMP  	  4		2	; 	goto 21
		 19	[  0]	KSTR 	  4		6	; slot4 = "blocked"
		 20	[  0]	RET1 	  4		2	; return slot4
		 21	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 22	[  0]	TGETS	  4	4	4	; slot4 = uv0"unknown".buttons
		 23	[  0]	IST  	   		4	; if uv0"unknown".buttons
		 24	[  0]	JMP  	  5		3	; 	goto 28
		 25	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 26	[  0]	MOV  	  6		3	; slot6 = slot3
		 27	[  0]	CALL 	  4	2	2	; slot4 = uv1"unknown"(slot5)
		 28	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 29	[  0]	MOV  	  7		4	; slot7 = uv1"unknown"
		 30	[  0]	KSTR 	  8		3	; slot8 = "start"
		 31	[  0]	MOV  	  9		3	; slot9 = slot3
		 32	[  0]	CALL 	  5	2	4	; slot5 = uv2"unknown"(slot6, uv1"unknown", slot8)
		 33	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 34	[  0]	MOV  	  8		4	; slot8 = uv1"unknown"
		 35	[  0]	KSTR 	  9		2	; slot9 = "skip"
		 36	[  0]	MOV  	 10		3	; slot10 = slot3
		 37	[  0]	CALL 	  6	2	4	; slot6 = uv2"unknown"(uv1"unknown", uv1"unknown", slot9)
		 38	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		 39	[  0]	MOV  	  9		0	; slot9 = slot0
		 40	[  0]	MOV  	 10		1	; slot10 = slot1
		 41	[  0]	MOV  	 11		5	; slot11 = uv2"unknown"
		 42	[  0]	TGETS	 12	4	1	; slot12 = uv1"unknown".buttonScale
		 43	[  0]	TGETS	 13	4	0	; slot13 = uv1"unknown".buttonExtraSrc
		 44	[  0]	CALL 	  7	2	6	; slot7 = uv3"unknown"(uv1"unknown", slot9, slot10, uv2"unknown", uv1"unknown".buttonScale)
		 45	[  0]	ISF  	   		7	; if not uv3"unknown"
		 46	[  0]	JMP  	  8		3	; 	goto 50
		 47	[  0]	UGET 	  7		4	; slot7 = uv4"unknwon"
		 48	[  0]	KSTR 	  9		3	; slot9 = "start"
		 49	[  0]	CALLT	  7		2	; return uv4"unknown"(uv1"unknown")
		 50	[  0]	UGET 	  7		5	; slot7 = uv5"unknwon"
		 51	[  0]	CALL 	  7	2	1	; slot7 = uv5"unknown"()
		 52	[  0]	ISF  	   		7	; if not uv5"unknown"
		 53	[  0]	JMP  	  8		12	; 	goto 66
		 54	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		 55	[  0]	MOV  	  9		0	; slot9 = slot0
		 56	[  0]	MOV  	 10		1	; slot10 = slot1
		 57	[  0]	MOV  	 11		6	; slot11 = uv2"unknown"
		 58	[  0]	TGETS	 12	4	1	; slot12 = uv1"unknown".buttonScale
		 59	[  0]	TGETS	 13	4	0	; slot13 = uv1"unknown".buttonExtraSrc
		 60	[  0]	CALL 	  7	2	6	; slot7 = uv3"unknown"(uv1"unknown", slot9, slot10, uv2"unknown", uv1"unknown".buttonScale)
		 61	[  0]	ISF  	   		7	; if not uv3"unknown"
		 62	[  0]	JMP  	  8		3	; 	goto 66
		 63	[  0]	UGET 	  7		4	; slot7 = uv4"unknwon"
		 64	[  0]	KSTR 	  9		2	; slot9 = "skip"
		 65	[  0]	CALLT	  7		2	; return uv4"unknown"(uv1"unknown")
		 66	[  0]	KSTR 	  7		6	; slot7 = "blocked"
		 67	[  0]	RET1 	  7		2	; return slot7
	256	[  0]	TSETS	 49	0	51	; slot0.mousepressed = slot49
	257	[  0]	FNEW 	 49		48	; N/A:0-0: 1 args, 4 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			[order] = 2,
			[group] = tutorial,
			[id] = skip,
			]
		
		
		ktable#6 = [
			[order] = 1,
			[group] = tutorial,
			[default] = true,
			[id] = start,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	TGETS	  2	2	9	; slot2 = uv0"unknown".active
		  4	[  0]	IST  	   		2	; if uv0"unknown".active
		  5	[  0]	JMP  	  2		1	; 	goto 7
		  6	[  0]	RET1 	  1		2	; return slot1
		  7	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  8	[  0]	TGETS	  2	2	8	; slot2 = uv0"unknown".buttons
		  9	[  0]	IST  	   		2	; if uv0"unknown".buttons
		 10	[  0]	JMP  	  3		3	; 	goto 14
		 11	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 12	[  0]	MOV  	  4		0	; slot4 = slot0
		 13	[  0]	CALL 	  2	2	2	; slot2 = uv1"unknown"(slot3)
		 14	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 15	[  0]	MOV  	  5		2	; slot5 = slot2
		 16	[  0]	KSTR 	  6		7	; slot6 = "start"
		 17	[  0]	MOV  	  7		0	; slot7 = slot0
		 18	[  0]	CALL 	  3	2	4	; slot3 = uv2"unknown"(slot4, slot5, slot6)
		 19	[  0]	ISF  	   		3	; if not slot3
		 20	[  0]	JMP  	  4		12	; 	goto 33
		 21	[  0]	LEN  	  4		1	; slot4 = #slot1
		 22	[  0]	ADDVN	  4	4	0	; slot4 = slot4 + 1
		 23	[  0]	TDUP 	  5		6	; slot5 = copy table#k6
		 24	[  0]	TGETS	  6	3	5	; slot6 = slot3.x
		 25	[  0]	TSETS	  6	5	5	; slot5.x = <unknown table>.x
		 26	[  0]	TGETS	  6	3	4	; slot6 = slot3.y
		 27	[  0]	TSETS	  6	5	4	; slot5.y = <unknown table>.y
		 28	[  0]	TGETS	  6	3	3	; slot6 = slot3.w
		 29	[  0]	TSETS	  6	5	3	; slot5.w = <unknown table>.w
		 30	[  0]	TGETS	  6	3	2	; slot6 = slot3.h
		 31	[  0]	TSETS	  6	5	2	; slot5.h = <unknown table>.h
		 32	[  0]	TSETV	  5	1	4	; slot1[slot4] = slot5
		 33	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 34	[  0]	CALL 	  4	2	1	; slot4 = uv3"unknown"()
		 35	[  0]	ISF  	   		4	; if not uv3"unknown"
		 36	[  0]	JMP  	  5		19	; 	goto 56
		 37	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 38	[  0]	MOV  	  6		2	; slot6 = slot2
		 39	[  0]	KSTR 	  7		1	; slot7 = "skip"
		 40	[  0]	MOV  	  8		0	; slot8 = slot0
		 41	[  0]	CALL 	  4	2	4	; slot4 = uv2"unknown"(slot5, slot6, slot7)
		 42	[  0]	ISF  	   		4	; if not slot4
		 43	[  0]	JMP  	  5		12	; 	goto 56
		 44	[  0]	LEN  	  5		1	; slot5 = #slot1
		 45	[  0]	ADDVN	  5	5	0	; slot5 = slot5 + 1
		 46	[  0]	TDUP 	  6		0	; slot6 = copy table#k0
		 47	[  0]	TGETS	  7	4	5	; slot7 = slot4.x
		 48	[  0]	TSETS	  7	6	5	; slot6.x = <unknown table>.x
		 49	[  0]	TGETS	  7	4	4	; slot7 = slot4.y
		 50	[  0]	TSETS	  7	6	4	; slot6.y = <unknown table>.y
		 51	[  0]	TGETS	  7	4	3	; slot7 = slot4.w
		 52	[  0]	TSETS	  7	6	3	; slot6.w = <unknown table>.w
		 53	[  0]	TGETS	  7	4	2	; slot7 = slot4.h
		 54	[  0]	TSETS	  7	6	2	; slot6.h = <unknown table>.h
		 55	[  0]	TSETV	  6	1	5	; slot1[slot5] = slot6
		 56	[  0]	RET1 	  1		2	; return slot1
	258	[  0]	TSETS	 49	0	49	; slot0.padTargets = slot49
	259	[  0]	FNEW 	 49		46	; N/A:0-0: 1 args, 2 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	6	; slot1 = uv0"unknown".active
		  3	[  0]	IST  	   		1	; if uv0"unknown".active
		  4	[  0]	JMP  	  1		2	; 	goto 7
		  5	[  0]	KPRI 	  1		0	; slot1 = nil
		  6	[  0]	RET1 	  1		2	; return slot1
		  7	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  8	[  0]	TGETS	  1	1	5	; slot1 = uv0"unknown".t
		  9	[  0]	IST  	   		1	; if uv0"unknown".t
		 10	[  0]	JMP  	  2		1	; 	goto 12
		 11	[  0]	KSHORT	  1		0	; slot1 = 0
		 12	[  0]	KNUM 	  2		0	; slot2 = 0.82
		 13	[  0]	ISGE 	  1		2	; if slot1 >= slot2
		 14	[  0]	JMP  	  1		2	; 	goto 17
		 15	[  0]	KSTR 	  1		4	; slot1 = "blocked"
		 16	[  0]	RET1 	  1		2	; return slot1
		 17	[  0]	ISEQS	  0		3	; if slot0 == "return"
		 18	[  0]	JMP  	  1		4	; 	goto 23
		 19	[  0]	ISEQS	  0		2	; if slot0 == "kpenter"
		 20	[  0]	JMP  	  1		2	; 	goto 23
		 21	[  0]	ISNES	  0		1	; if slot0 ~= "space"
		 22	[  0]	JMP  	  1		3	; 	goto 26
		 23	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 24	[  0]	KSTR 	  3		0	; slot3 = "start"
		 25	[  0]	CALLT	  1		2	; return uv1"unknown"(slot2)
		 26	[  0]	KSTR 	  1		4	; slot1 = "blocked"
		 27	[  0]	RET1 	  1		2	; return slot1
	260	[  0]	TSETS	 49	0	47	; slot0.keypressed = slot49
	261	[  0]	FNEW 	 49		45	; N/A:0-0: 5 args, 0 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  5		5	; 	goto 8
		  3	[  0]	GGET 	  5		8	; slot5 = _env["love"]
		  4	[  0]	TGETS	  5	5	7	; slot5 = love.graphics
		  5	[  0]	TGETS	  5	5	6	; slot5 = love.graphics.setFont
		  6	[  0]	MOV  	  7		0	; slot7 = slot0
		  7	[  0]	CALL 	  5	1	2	;  = love.graphics.setFont(slot6)
		  8	[  0]	GGET 	  5		8	; slot5 = _env["love"]
		  9	[  0]	TGETS	  5	5	7	; slot5 = love.graphics
		 10	[  0]	TGETS	  5	5	5	; slot5 = love.graphics.getFont
		 11	[  0]	CALL 	  5	2	1	; slot5 = love.graphics.getFont()
		 12	[  0]	GGET 	  6		8	; slot6 = _env["love"]
		 13	[  0]	TGETS	  6	6	7	; slot6 = love.graphics
		 14	[  0]	TGETS	  6	6	4	; slot6 = love.graphics.setColor
		 15	[  0]	MOV  	  8		4	; slot8 = slot4
		 16	[  0]	CALL 	  6	1	2	;  = love.graphics.setColor(slot7)
		 17	[  0]	GGET 	  6		8	; slot6 = _env["love"]
		 18	[  0]	TGETS	  6	6	7	; slot6 = love.graphics
		 19	[  0]	TGETS	  6	6	3	; slot6 = love.graphics.print
		 20	[  0]	MOV  	  8		1	; slot8 = slot1
		 21	[  0]	GGET 	  9		2	; slot9 = _env["math"]
		 22	[  0]	TGETS	  9	9	1	; slot9 = math.floor
		 23	[  0]	MOV  	 13		5	; slot13 = love.graphics.getFont
		 24	[  0]	TGETS	 11	5	0	; slot11 = love.graphics.getFont.getWidth
		 25	[  0]	MOV  	 14		1	; slot14 = slot1
		 26	[  0]	CALL 	 11	2	3	; slot11 = love.graphics.getFont.getWidth(slot12, love.graphics.getFont)
		 27	[  0]	MULVN	 11	11	0	; slot11 = love.graphics.getFont.getWidth * 0.5
		 28	[  0]	SUBVV	 11	2	11	; slot11 = slot2 - slot11
		 29	[  0]	ADDVN	 11	11	0	; slot11 = slot11 + 0.5
		 30	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		 31	[  0]	GGET 	 10		2	; slot10 = _env["math"]
		 32	[  0]	TGETS	 10	10	1	; slot10 = math.floor
		 33	[  0]	ADDVN	 12	3	0	; slot12 = slot3 + 0.5
		 34	[  0]	CALL 	 10	0	2	; MULTRES = math.floor(slot11)
		 35	[  0]	CALLM	  6	1	2	;  = love.graphics.print(slot7, slot8, ...MULTRES)
		 36	[  0]	RET0 	  0		1	; return
	262	[  0]	FNEW 	 50		44	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
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
	263	[  0]	FNEW 	 51		43	; N/A:0-0: 1 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		  4	[  0]	MOV  	  0		1	; slot0 = slot1
		  5	[  0]	SUBNV	  1	0	0	; slot1 = 1 - slot0
		  6	[  0]	SUBNV	  2	0	0	; slot2 = 1 - slot0
		  7	[  0]	MULVV	  1	1	2	; slot1 = slot1 * slot2
		  8	[  0]	SUBNV	  2	0	0	; slot2 = 1 - slot0
		  9	[  0]	MULVV	  1	1	2	; slot1 = slot1 * slot2
		 10	[  0]	SUBNV	  1	1	0	; slot1 = 1 - slot1
		 11	[  0]	RET1 	  1		2	; return slot1
	264	[  0]	FNEW 	 52		42	; N/A:0-0: 1 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		  4	[  0]	MOV  	  0		1	; slot0 = slot1
		  5	[  0]	MULVV	  1	0	0	; slot1 = slot0 * slot0
		  6	[  0]	MULNV	  2	0	0	; slot2 = 2 * slot0
		  7	[  0]	SUBNV	  2	2	1	; slot2 = 3 - slot2
		  8	[  0]	MULVV	  1	1	2	; slot1 = slot1 * slot2
		  9	[  0]	RET1 	  1		2	; return slot1
	265	[  0]	FNEW 	 53		41	; N/A:0-0: 5 args, 0 upvalues, 20 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  5		5	; 	goto 8
		  3	[  0]	GGET 	  5		12	; slot5 = _env["love"]
		  4	[  0]	TGETS	  5	5	11	; slot5 = love.graphics
		  5	[  0]	TGETS	  5	5	10	; slot5 = love.graphics.setFont
		  6	[  0]	MOV  	  7		0	; slot7 = slot0
		  7	[  0]	CALL 	  5	1	2	;  = love.graphics.setFont(slot6)
		  8	[  0]	GGET 	  5		12	; slot5 = _env["love"]
		  9	[  0]	TGETS	  5	5	11	; slot5 = love.graphics
		 10	[  0]	TGETS	  5	5	9	; slot5 = love.graphics.getFont
		 11	[  0]	CALL 	  5	2	1	; slot5 = love.graphics.getFont()
		 12	[  0]	KSHORT	  6		0	; slot6 = 0
		 13	[  0]	GGET 	  7		8	; slot7 = _env["ipairs"]
		 14	[  0]	ISTC 	  9		1	; slot9 = slot1; if slot1
		 15	[  0]	JMP  	  9		1	; 	goto 17
		 16	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
		 17	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = ipairs(slot8)
		 18	[  0]	JMP  	 10		8	; 	goto 27
		 19	[  0]	MOV  	 14		5	; slot14 = love.graphics.getFont
		 20	[  0]	TGETS	 12	5	7	; slot12 = love.graphics.getFont.getWidth
		 21	[  0]	TGETS	 15	11	6	; slot15 = slot11.text
		 22	[  0]	IST  	   		15	; if <unknown table>.text
		 23	[  0]	JMP  	 16		1	; 	goto 25
		 24	[  0]	KSTR 	 15		5	; slot15 = ""
		 25	[  0]	CALL 	 12	2	3	; slot12 = love.graphics.getFont.getWidth(slot13, love.graphics.getFont)
		 26	[  0]	ADDVV	  6	6	12	; slot6 = slot6 + love.graphics.getFont.getWidth
		 27	[  0]	ITERC	 10	3	3	; slot10, slot11, slot12 = ipairs, slot8, slot9; slot10, slot11 = ipairs(slot8, slot9)
		 28	[  0]	ITERL	 10		-10	; slot9 = slot10; if slot10 != nil goto 19
		 29	[  0]	GGET 	  7		4	; slot7 = _env["math"]
		 30	[  0]	TGETS	  7	7	3	; slot7 = math.floor
		 31	[  0]	MULVN	  9	6	0	; slot9 = slot6 * 0.5
		 32	[  0]	SUBVV	  9	2	9	; slot9 = slot2 - slot9
		 33	[  0]	ADDVN	  9	9	0	; slot9 = slot9 + 0.5
		 34	[  0]	CALL 	  7	2	2	; slot7 = math.floor(slot8)
		 35	[  0]	GGET 	  8		4	; slot8 = _env["math"]
		 36	[  0]	TGETS	  8	8	3	; slot8 = math.floor
		 37	[  0]	ADDVN	 10	3	0	; slot10 = slot3 + 0.5
		 38	[  0]	CALL 	  8	2	2	; slot8 = math.floor(slot9)
		 39	[  0]	GGET 	  9		8	; slot9 = _env["ipairs"]
		 40	[  0]	ISTC 	 11		1	; slot11 = slot1; if slot1
		 41	[  0]	JMP  	 11		1	; 	goto 43
		 42	[  0]	TNEW 	 11		0	; slot11 = new table( array: 0, dict: 1)
		 43	[  0]	CALL 	  9	4	2	; slot9, slot10, slot11 = ipairs(slot10)
		 44	[  0]	JMP  	 12		24	; 	goto 69
		 45	[  0]	TGETS	 14	13	6	; slot14 = slot13.text
		 46	[  0]	IST  	   		14	; if <unknown table>.text
		 47	[  0]	JMP  	 15		1	; 	goto 49
		 48	[  0]	KSTR 	 14		5	; slot14 = ""
		 49	[  0]	GGET 	 15		12	; slot15 = _env["love"]
		 50	[  0]	TGETS	 15	15	11	; slot15 = love.graphics
		 51	[  0]	TGETS	 15	15	2	; slot15 = love.graphics.setColor
		 52	[  0]	TGETS	 17	13	1	; slot17 = slot13.color
		 53	[  0]	IST  	   		17	; if <unknown table>.color
		 54	[  0]	JMP  	 18		1	; 	goto 56
		 55	[  0]	MOV  	 17		4	; slot17 = slot4
		 56	[  0]	CALL 	 15	1	2	;  = love.graphics.setColor(slot16)
		 57	[  0]	GGET 	 15		12	; slot15 = _env["love"]
		 58	[  0]	TGETS	 15	15	11	; slot15 = love.graphics
		 59	[  0]	TGETS	 15	15	0	; slot15 = love.graphics.print
		 60	[  0]	MOV  	 17		14	; slot17 = slot14
		 61	[  0]	MOV  	 18		7	; slot18 = math.floor
		 62	[  0]	MOV  	 19		8	; slot19 = math.floor
		 63	[  0]	CALL 	 15	1	4	;  = love.graphics.print(slot16, slot17, math.floor)
		 64	[  0]	MOV  	 17		5	; slot17 = love.graphics.getFont
		 65	[  0]	TGETS	 15	5	7	; slot15 = love.graphics.getFont.getWidth
		 66	[  0]	MOV  	 18		14	; slot18 = slot14
		 67	[  0]	CALL 	 15	2	3	; slot15 = love.graphics.getFont.getWidth(slot16, love.graphics.getFont)
		 68	[  0]	ADDVV	  7	7	15	; slot7 = math.floor + love.graphics.getFont.getWidth
		 69	[  0]	ITERC	 12	3	3	; slot12, slot13, slot14 = ipairs, slot10, slot11; slot12, slot13 = ipairs(slot10, slot11)
		 70	[  0]	ITERL	 12		-26	; slot11 = love.graphics.getFont.getWidth; if love.graphics.getFont.getWidth != nil goto 45
		 71	[  0]	RET0 	  0		1	; return
	266	[  0]	FNEW 	 54		40	; N/A:0-0: 7 args, 1 upvalues, 22 slots
		
		;;;; constant tables ;;;;
		ktable#5 = [
			#1: 0.4627450980392157,
			#2: 0.3215686274509804,
			#3: 0.3568627450980392,
			#4: 0.98,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  7		8	; slot7 = _env["math"]
		  2	[  0]	TGETS	  7	7	7	; slot7 = math.max
		  3	[  0]	KSHORT	  9		1	; slot9 = 1
		  4	[  0]	GGET 	 10		8	; slot10 = _env["math"]
		  5	[  0]	TGETS	 10	10	6	; slot10 = math.floor
		  6	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		  7	[  0]	MOV  	 14		0	; slot14 = slot0
		  8	[  0]	CALL 	 12	2	2	; slot12 = uv0"unknown"(slot13)
		  9	[  0]	ADDVN	 12	12	0	; slot12 = uv0"unknown" + 0.5
		 10	[  0]	CALL 	 10	0	2	; MULTRES = math.floor(slot11)
		 11	[  0]	CALLM	  7	2	1	; slot7 = math.max(slot8, ...MULTRES)
		 12	[  0]	KSHORT	  8		2	; slot8 = 2
		 13	[  0]	ISTC 	  9		6	; slot9 = slot6; if slot6
		 14	[  0]	JMP  	  9		1	; 	goto 16
		 15	[  0]	TDUP 	  9		5	; slot9 = copy table#k5
		 16	[  0]	GGET 	 10		4	; slot10 = _env["love"]
		 17	[  0]	TGETS	 10	10	3	; slot10 = love.graphics
		 18	[  0]	TGETS	 10	10	2	; slot10 = love.graphics.setColor
		 19	[  0]	TGETB	 12	9	1	; slot12 = slot9[1]
		 20	[  0]	IST  	   		12	; if slot12
		 21	[  0]	JMP  	 13		1	; 	goto 23
		 22	[  0]	KSHORT	 12		1	; slot12 = 1
		 23	[  0]	TGETB	 13	9	2	; slot13 = slot9[2]
		 24	[  0]	IST  	   		13	; if slot13
		 25	[  0]	JMP  	 14		1	; 	goto 27
		 26	[  0]	KSHORT	 13		1	; slot13 = 1
		 27	[  0]	TGETB	 14	9	3	; slot14 = slot9[3]
		 28	[  0]	IST  	   		14	; if slot14
		 29	[  0]	JMP  	 15		1	; 	goto 31
		 30	[  0]	KSHORT	 14		1	; slot14 = 1
		 31	[  0]	TGETB	 15	9	4	; slot15 = slot9[4]
		 32	[  0]	IST  	   		15	; if slot15
		 33	[  0]	JMP  	 16		1	; 	goto 35
		 34	[  0]	KSHORT	 15		1	; slot15 = 1
		 35	[  0]	MULVV	 15	15	5	; slot15 = slot15 * slot5
		 36	[  0]	CALL 	 10	1	5	;  = love.graphics.setColor(slot11, slot12, slot13, slot14)
		 37	[  0]	KSHORT	 10		0	; slot10 = 0
		 38	[  0]	SUBVN	 11	8	1	; slot11 = slot8 - 1
		 39	[  0]	KSHORT	 12		1	; slot12 = 1
		 40	[  0]	FORI 	 10		27	; for slot13 = slot10,slot11,slot12 else goto 68
		 41	[  0]	SUBVV	 14	8	13	; slot14 = slot8 - slot13
		 42	[  0]	MULVV	 14	14	7	; slot14 = slot14 * math.max
		 43	[  0]	GGET 	 15		4	; slot15 = _env["love"]
		 44	[  0]	TGETS	 15	15	3	; slot15 = love.graphics
		 45	[  0]	TGETS	 15	15	1	; slot15 = love.graphics.rectangle
		 46	[  0]	KSTR 	 17		0	; slot17 = "fill"
		 47	[  0]	ADDVV	 18	1	14	; slot18 = slot1 + slot14
		 48	[  0]	MULVV	 19	13	7	; slot19 = slot13 * math.max
		 49	[  0]	ADDVV	 19	2	19	; slot19 = slot2 + slot19
		 50	[  0]	MULVN	 20	14	2	; slot20 = slot14 * 2
		 51	[  0]	SUBVV	 20	3	20	; slot20 = slot3 - slot20
		 52	[  0]	MOV  	 21		7	; slot21 = math.max
		 53	[  0]	CALL 	 15	1	6	;  = love.graphics.rectangle(slot16, slot17, slot18, slot19, slot20)
		 54	[  0]	GGET 	 15		4	; slot15 = _env["love"]
		 55	[  0]	TGETS	 15	15	3	; slot15 = love.graphics
		 56	[  0]	TGETS	 15	15	1	; slot15 = love.graphics.rectangle
		 57	[  0]	KSTR 	 17		0	; slot17 = "fill"
		 58	[  0]	ADDVV	 18	1	14	; slot18 = slot1 + slot14
		 59	[  0]	ADDVV	 19	2	4	; slot19 = slot2 + slot4
		 60	[  0]	ADDVN	 20	13	1	; slot20 = slot13 + 1
		 61	[  0]	MULVV	 20	20	7	; slot20 = slot20 * math.max
		 62	[  0]	SUBVV	 19	19	20	; slot19 = slot19 - slot20
		 63	[  0]	MULVN	 20	14	2	; slot20 = slot14 * 2
		 64	[  0]	SUBVV	 20	3	20	; slot20 = slot3 - slot20
		 65	[  0]	MOV  	 21		7	; slot21 = math.max
		 66	[  0]	CALL 	 15	1	6	;  = love.graphics.rectangle(slot16, slot17, slot18, slot19, slot20)
		 67	[  0]	FORL 	 10		-27	; slot13 = slot13 + slot12; if cmp(slot13, sign slot12,  slot11) goto 41
		 68	[  0]	GGET 	 10		4	; slot10 = _env["love"]
		 69	[  0]	TGETS	 10	10	3	; slot10 = love.graphics
		 70	[  0]	TGETS	 10	10	1	; slot10 = love.graphics.rectangle
		 71	[  0]	KSTR 	 12		0	; slot12 = "fill"
		 72	[  0]	MOV  	 13		1	; slot13 = slot1
		 73	[  0]	MULVV	 14	8	7	; slot14 = slot8 * math.max
		 74	[  0]	ADDVV	 14	2	14	; slot14 = slot2 + slot14
		 75	[  0]	MOV  	 15		3	; slot15 = slot3
		 76	[  0]	MULVV	 16	8	7	; slot16 = slot8 * math.max
		 77	[  0]	MULVN	 16	16	2	; slot16 = slot16 * 2
		 78	[  0]	SUBVV	 16	4	16	; slot16 = slot4 - slot16
		 79	[  0]	CALL 	 10	1	6	;  = love.graphics.rectangle(slot11, slot12, slot13, slot14, slot15)
		 80	[  0]	RET0 	  0		1	; return
	267	[  0]	FNEW 	 55		39	; N/A:0-0: 1 args, 0 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		ktable#1 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		6	; slot1 = _env["type"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  4	[  0]	ISNES	  1		5	; if slot1 ~= "table"
		  5	[  0]	JMP  	  1		5	; 	goto 11
		  6	[  0]	TGETS	  1	0	4	; slot1 = slot0.parts
		  7	[  0]	ISF  	   		1	; if not <unknown table>.parts
		  8	[  0]	JMP  	  2		2	; 	goto 11
		  9	[  0]	TGETS	  1	0	4	; slot1 = slot0.parts
		 10	[  0]	RET1 	  1		2	; return <unknown table>.parts
		 11	[  0]	GGET 	  1		6	; slot1 = _env["type"]
		 12	[  0]	MOV  	  3		0	; slot3 = slot0
		 13	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		 14	[  0]	ISNES	  1		5	; if slot1 ~= "table"
		 15	[  0]	JMP  	  1		4	; 	goto 20
		 16	[  0]	TGETB	  1	0	1	; slot1 = slot0[1]
		 17	[  0]	ISF  	   		1	; if not slot1
		 18	[  0]	JMP  	  2		1	; 	goto 20
		 19	[  0]	RET1 	  0		2	; return slot0
		 20	[  0]	TNEW 	  1		3	; slot1 = new table( array: 3, dict: 1)
		 21	[  0]	TDUP 	  2		1	; slot2 = copy table#k1
		 22	[  0]	GGET 	  3		3	; slot3 = _env["tostring"]
		 23	[  0]	ISTC 	  5		0	; slot5 = slot0; if slot0
		 24	[  0]	JMP  	  5		1	; 	goto 26
		 25	[  0]	KSTR 	  5		2	; slot5 = ""
		 26	[  0]	CALL 	  3	2	2	; slot3 = tostring(slot4)
		 27	[  0]	TSETS	  3	2	0	; slot2.text = tostring
		 28	[  0]	TSETB	  2	1	1	; slot1[1] = slot2
		 29	[  0]	RET1 	  1		2	; return slot1
	268	[  0]	FNEW 	 56		38	; N/A:0-0: 3 args, 4 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  2	[  0]	MOV  	  5		1	; slot5 = slot1
		  3	[  0]	CALL 	  3	2	2	; slot3 = uv0"unknown"(slot4)
		  4	[  0]	KSHORT	  4		0	; slot4 = 0
		  5	[  0]	GGET 	  5		13	; slot5 = _env["ipairs"]
		  6	[  0]	MOV  	  7		3	; slot7 = uv0"unknown"
		  7	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		  8	[  0]	JMP  	  8		91	; 	goto 100
		  9	[  0]	TGETS	 10	9	12	; slot10 = slot9.icon
		 10	[  0]	ISEQS	 10		11	; if <unknown table>.icon == "gold"
		 11	[  0]	JMP  	 10		12	; 	goto 24
		 12	[  0]	TGETS	 10	9	12	; slot10 = slot9.icon
		 13	[  0]	ISEQS	 10		10	; if <unknown table>.icon == "mouseRight"
		 14	[  0]	JMP  	 10		9	; 	goto 24
		 15	[  0]	TGETS	 10	9	12	; slot10 = slot9.icon
		 16	[  0]	ISEQS	 10		9	; if <unknown table>.icon == "mouseLeft"
		 17	[  0]	JMP  	 10		6	; 	goto 24
		 18	[  0]	TGETS	 10	9	12	; slot10 = slot9.icon
		 19	[  0]	ISEQS	 10		8	; if <unknown table>.icon == "judgement"
		 20	[  0]	JMP  	 10		3	; 	goto 24
		 21	[  0]	TGETS	 10	9	12	; slot10 = slot9.icon
		 22	[  0]	ISNES	 10		7	; if <unknown table>.icon ~= "boss"
		 23	[  0]	JMP  	 10		63	; 	goto 87
		 24	[  0]	TGETS	 10	9	12	; slot10 = slot9.icon
		 25	[  0]	ISNES	 10		11	; if <unknown table>.icon ~= "gold"
		 26	[  0]	JMP  	 10		4	; 	goto 31
		 27	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
		 28	[  0]	CALL 	 10	2	1	; slot10 = uv1"unknown"()
		 29	[  0]	IST  	   		10	; if uv1"unknown"
		 30	[  0]	JMP  	 11		14	; 	goto 45
		 31	[  0]	TGETS	 10	9	12	; slot10 = slot9.icon
		 32	[  0]	ISEQS	 10		10	; if <unknown table>.icon == "mouseRight"
		 33	[  0]	JMP  	 10		3	; 	goto 37
		 34	[  0]	TGETS	 10	9	12	; slot10 = slot9.icon
		 35	[  0]	ISNES	 10		9	; if <unknown table>.icon ~= "mouseLeft"
		 36	[  0]	JMP  	 10		5	; 	goto 42
		 37	[  0]	UGET 	 10		2	; slot10 = uv2"unknwon"
		 38	[  0]	TGETS	 12	9	12	; slot12 = slot9.icon
		 39	[  0]	CALL 	 10	2	2	; slot10 = uv2"unknown"(slot11)
		 40	[  0]	IST  	   		10	; if uv2"unknown"
		 41	[  0]	JMP  	 11		3	; 	goto 45
		 42	[  0]	UGET 	 10		3	; slot10 = uv3"unknwon"
		 43	[  0]	TGETS	 12	9	12	; slot12 = slot9.icon
		 44	[  0]	CALL 	 10	2	2	; slot10 = uv3"unknown"(slot11)
		 45	[  0]	ADDVN	 11	8	0	; slot11 = slot8 + 1
		 46	[  0]	TGETV	 11	3	11	; slot11 = uv0"unknown"[slot11]
		 47	[  0]	ISF  	   		11	; if not slot11
		 48	[  0]	JMP  	 12		5	; 	goto 54
		 49	[  0]	ADDVN	 11	8	0	; slot11 = slot8 + 1
		 50	[  0]	TGETV	 11	3	11	; slot11 = uv0"unknown"[slot11]
		 51	[  0]	TGETS	 11	11	6	; slot11 = slot11.text
		 52	[  0]	IST  	   		11	; if <unknown table>.text
		 53	[  0]	JMP  	 12		1	; 	goto 55
		 54	[  0]	KSTR 	 11		5	; slot11 = ""
		 55	[  0]	GGET 	 12		4	; slot12 = _env["tostring"]
		 56	[  0]	MOV  	 14		11	; slot14 = slot11
		 57	[  0]	CALL 	 12	2	2	; slot12 = tostring(slot13)
		 58	[  0]	MOV  	 14		12	; slot14 = tostring
		 59	[  0]	TGETS	 12	12	3	; slot12 = tostring.match
		 60	[  0]	KSTR 	 15		2	; slot15 = "^%s"
		 61	[  0]	CALL 	 12	2	3	; slot12 = tostring.match(slot13, tostring)
		 62	[  0]	ISF  	   		12	; if not tostring.match
		 63	[  0]	JMP  	 13		2	; 	goto 66
		 64	[  0]	KSHORT	 12		0	; slot12 = 0
		 65	[  0]	JMP  	 13		9	; 	goto 75
		 66	[  0]	ISF  	   		0	; if not slot0
		 67	[  0]	JMP  	 12		6	; 	goto 74
		 68	[  0]	MOV  	 14		0	; slot14 = slot0
		 69	[  0]	TGETS	 12	0	1	; slot12 = slot0.getWidth
		 70	[  0]	KSTR 	 15		0	; slot15 = " "
		 71	[  0]	CALL 	 12	2	3	; slot12 = <unknown table>.getWidth(slot13, slot14)
		 72	[  0]	IST  	   		12	; if <unknown table>.getWidth
		 73	[  0]	JMP  	 13		1	; 	goto 75
		 74	[  0]	KSHORT	 12		4	; slot12 = 4
		 75	[  0]	ISF  	   		10	; if not uv3"unknown"
		 76	[  0]	JMP  	 13		5	; 	goto 82
		 77	[  0]	MOV  	 15		10	; slot15 = uv3"unknown"
		 78	[  0]	TGETS	 13	10	1	; slot13 = uv3"unknown".getWidth
		 79	[  0]	CALL 	 13	2	2	; slot13 = uv3"unknown".getWidth(slot14)
		 80	[  0]	IST  	   		13	; if uv3"unknown".getWidth
		 81	[  0]	JMP  	 14		1	; 	goto 83
		 82	[  0]	KSHORT	 13		8	; slot13 = 8
		 83	[  0]	MULVV	 13	13	2	; slot13 = slot13 * slot2
		 84	[  0]	ADDVV	 13	4	13	; slot13 = slot4 + slot13
		 85	[  0]	ADDVV	  4	13	12	; slot4 = slot13 + slot12
		 86	[  0]	JMP  	 10		13	; 	goto 100
		 87	[  0]	ISF  	   		0	; if not slot0
		 88	[  0]	JMP  	 10		9	; 	goto 98
		 89	[  0]	MOV  	 12		0	; slot12 = slot0
		 90	[  0]	TGETS	 10	0	1	; slot10 = slot0.getWidth
		 91	[  0]	TGETS	 13	9	6	; slot13 = slot9.text
		 92	[  0]	IST  	   		13	; if <unknown table>.text
		 93	[  0]	JMP  	 14		1	; 	goto 95
		 94	[  0]	KSTR 	 13		5	; slot13 = ""
		 95	[  0]	CALL 	 10	2	3	; slot10 = <unknown table>.getWidth(slot11, slot12)
		 96	[  0]	IST  	   		10	; if <unknown table>.getWidth
		 97	[  0]	JMP  	 11		1	; 	goto 99
		 98	[  0]	KSHORT	 10		0	; slot10 = 0
		 99	[  0]	ADDVV	  4	4	10	; slot4 = slot4 + slot10
		100	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, uv0"unknown"; slot8, slot9 = ipairs(slot6, uv0"unknown")
		101	[  0]	ITERL	  8		-93	; uv0"unknown" = slot8; if slot8 != nil goto 9
		102	[  0]	RET1 	  4		2	; return slot4
	269	[  0]	FNEW 	 57		37	; N/A:0-0: 9 args, 4 upvalues, 31 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			#1: 0.96,
			#2: 0.78,
			#3: 0.32,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  9		5	; 	goto 8
		  3	[  0]	GGET 	  9		28	; slot9 = _env["love"]
		  4	[  0]	TGETS	  9	9	27	; slot9 = love.graphics
		  5	[  0]	TGETS	  9	9	26	; slot9 = love.graphics.setFont
		  6	[  0]	MOV  	 11		0	; slot11 = slot0
		  7	[  0]	CALL 	  9	1	2	;  = love.graphics.setFont(slot10)
		  8	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		  9	[  0]	MOV  	 11		1	; slot11 = slot1
		 10	[  0]	CALL 	  9	2	2	; slot9 = uv0"unknown"(slot10)
		 11	[  0]	MOV  	 10		2	; slot10 = slot2
		 12	[  0]	GGET 	 11		25	; slot11 = _env["ipairs"]
		 13	[  0]	MOV  	 13		9	; slot13 = uv0"unknown"
		 14	[  0]	CALL 	 11	4	2	; slot11, slot12, slot13 = ipairs(slot12)
		 15	[  0]	JMP  	 14		251	; 	goto 267
		 16	[  0]	TGETS	 16	15	24	; slot16 = slot15.icon
		 17	[  0]	ISEQS	 16		23	; if <unknown table>.icon == "gold"
		 18	[  0]	JMP  	 16		12	; 	goto 31
		 19	[  0]	TGETS	 16	15	24	; slot16 = slot15.icon
		 20	[  0]	ISEQS	 16		22	; if <unknown table>.icon == "mouseRight"
		 21	[  0]	JMP  	 16		9	; 	goto 31
		 22	[  0]	TGETS	 16	15	24	; slot16 = slot15.icon
		 23	[  0]	ISEQS	 16		21	; if <unknown table>.icon == "mouseLeft"
		 24	[  0]	JMP  	 16		6	; 	goto 31
		 25	[  0]	TGETS	 16	15	24	; slot16 = slot15.icon
		 26	[  0]	ISEQS	 16		20	; if <unknown table>.icon == "judgement"
		 27	[  0]	JMP  	 16		3	; 	goto 31
		 28	[  0]	TGETS	 16	15	24	; slot16 = slot15.icon
		 29	[  0]	ISNES	 16		19	; if <unknown table>.icon ~= "boss"
		 30	[  0]	JMP  	 16		109	; 	goto 140
		 31	[  0]	TGETS	 16	15	24	; slot16 = slot15.icon
		 32	[  0]	ISNES	 16		23	; if <unknown table>.icon ~= "gold"
		 33	[  0]	JMP  	 16		4	; 	goto 38
		 34	[  0]	UGET 	 16		1	; slot16 = uv1"unknwon"
		 35	[  0]	CALL 	 16	2	1	; slot16 = uv1"unknown"()
		 36	[  0]	IST  	   		16	; if uv1"unknown"
		 37	[  0]	JMP  	 17		14	; 	goto 52
		 38	[  0]	TGETS	 16	15	24	; slot16 = slot15.icon
		 39	[  0]	ISEQS	 16		22	; if <unknown table>.icon == "mouseRight"
		 40	[  0]	JMP  	 16		3	; 	goto 44
		 41	[  0]	TGETS	 16	15	24	; slot16 = slot15.icon
		 42	[  0]	ISNES	 16		21	; if <unknown table>.icon ~= "mouseLeft"
		 43	[  0]	JMP  	 16		5	; 	goto 49
		 44	[  0]	UGET 	 16		2	; slot16 = uv2"unknwon"
		 45	[  0]	TGETS	 18	15	24	; slot18 = slot15.icon
		 46	[  0]	CALL 	 16	2	2	; slot16 = uv2"unknown"(slot17)
		 47	[  0]	IST  	   		16	; if uv2"unknown"
		 48	[  0]	JMP  	 17		3	; 	goto 52
		 49	[  0]	UGET 	 16		3	; slot16 = uv3"unknwon"
		 50	[  0]	TGETS	 18	15	24	; slot18 = slot15.icon
		 51	[  0]	CALL 	 16	2	2	; slot16 = uv3"unknown"(slot17)
		 52	[  0]	ISF  	   		16	; if not uv3"unknown"
		 53	[  0]	JMP  	 17		213	; 	goto 267
		 54	[  0]	ISF  	   		0	; if not slot0
		 55	[  0]	JMP  	 17		8	; 	goto 64
		 56	[  0]	TGETS	 17	0	18	; slot17 = slot0.getHeight
		 57	[  0]	ISF  	   		17	; if not <unknown table>.getHeight
		 58	[  0]	JMP  	 18		5	; 	goto 64
		 59	[  0]	MOV  	 19		0	; slot19 = slot0
		 60	[  0]	TGETS	 17	0	18	; slot17 = slot0.getHeight
		 61	[  0]	CALL 	 17	2	2	; slot17 = <unknown table>.getHeight(<unknown table>.icon)
		 62	[  0]	IST  	   		17	; if <unknown table>.getHeight
		 63	[  0]	JMP  	 18		3	; 	goto 67
		 64	[  0]	MOV  	 19		16	; slot19 = uv3"unknown"
		 65	[  0]	TGETS	 17	16	18	; slot17 = uv3"unknown".getHeight
		 66	[  0]	CALL 	 17	2	2	; slot17 = uv3"unknown".getHeight(<unknown table>.icon)
		 67	[  0]	GGET 	 18		17	; slot18 = _env["math"]
		 68	[  0]	TGETS	 18	18	16	; slot18 = math.floor
		 69	[  0]	MOV  	 22		16	; slot22 = uv3"unknown"
		 70	[  0]	TGETS	 20	16	18	; slot20 = uv3"unknown".getHeight
		 71	[  0]	CALL 	 20	2	2	; slot20 = uv3"unknown".getHeight(slot21)
		 72	[  0]	MULVV	 20	20	6	; slot20 = uv3"unknown".getHeight * slot6
		 73	[  0]	SUBVV	 20	17	20	; slot20 = uv3"unknown".getHeight - slot20
		 74	[  0]	MULVN	 20	20	0	; slot20 = slot20 * 0.5
		 75	[  0]	ADDVV	 20	3	20	; slot20 = slot3 + slot20
		 76	[  0]	ISTC 	 21		7	; slot21 = slot7; if slot7
		 77	[  0]	JMP  	 21		1	; 	goto 79
		 78	[  0]	KSHORT	 21		0	; slot21 = 0
		 79	[  0]	ADDVV	 20	20	21	; slot20 = slot20 + slot21
		 80	[  0]	ADDVN	 20	20	0	; slot20 = slot20 + 0.5
		 81	[  0]	CALL 	 18	2	2	; slot18 = math.floor(uv3"unknown")
		 82	[  0]	GGET 	 19		28	; slot19 = _env["love"]
		 83	[  0]	TGETS	 19	19	27	; slot19 = love.graphics
		 84	[  0]	TGETS	 19	19	15	; slot19 = love.graphics.setColor
		 85	[  0]	KSHORT	 21		1	; slot21 = 1
		 86	[  0]	KSHORT	 22		1	; slot22 = 1
		 87	[  0]	KSHORT	 23		1	; slot23 = 1
		 88	[  0]	MOV  	 24		5	; slot24 = slot5
		 89	[  0]	CALL 	 19	1	5	;  = love.graphics.setColor(slot20, slot21, slot22, slot23)
		 90	[  0]	GGET 	 19		28	; slot19 = _env["love"]
		 91	[  0]	TGETS	 19	19	27	; slot19 = love.graphics
		 92	[  0]	TGETS	 19	19	14	; slot19 = love.graphics.draw
		 93	[  0]	MOV  	 21		16	; slot21 = uv3"unknown"
		 94	[  0]	GGET 	 22		17	; slot22 = _env["math"]
		 95	[  0]	TGETS	 22	22	16	; slot22 = math.floor
		 96	[  0]	ADDVN	 24	10	0	; slot24 = slot10 + 0.5
		 97	[  0]	CALL 	 22	2	2	; slot22 = math.floor(slot23)
		 98	[  0]	MOV  	 23		18	; slot23 = math.floor
		 99	[  0]	KSHORT	 24		0	; slot24 = 0
		100	[  0]	MOV  	 25		6	; slot25 = slot6
		101	[  0]	MOV  	 26		6	; slot26 = slot6
		102	[  0]	CALL 	 19	1	7	;  = love.graphics.draw(slot20, uv3"unknown", math.floor, math.floor, slot24, slot25)
		103	[  0]	ADDVN	 19	14	1	; slot19 = slot14 + 1
		104	[  0]	TGETV	 19	9	19	; slot19 = uv0"unknown"[slot19]
		105	[  0]	ISF  	   		19	; if not slot19
		106	[  0]	JMP  	 20		5	; 	goto 112
		107	[  0]	ADDVN	 19	14	1	; slot19 = slot14 + 1
		108	[  0]	TGETV	 19	9	19	; slot19 = uv0"unknown"[slot19]
		109	[  0]	TGETS	 19	19	13	; slot19 = slot19.text
		110	[  0]	IST  	   		19	; if <unknown table>.text
		111	[  0]	JMP  	 20		1	; 	goto 113
		112	[  0]	KSTR 	 19		12	; slot19 = ""
		113	[  0]	GGET 	 20		11	; slot20 = _env["tostring"]
		114	[  0]	MOV  	 22		19	; slot22 = slot19
		115	[  0]	CALL 	 20	2	2	; slot20 = tostring(uv3"unknown")
		116	[  0]	MOV  	 22		20	; slot22 = tostring
		117	[  0]	TGETS	 20	20	10	; slot20 = tostring.match
		118	[  0]	KSTR 	 23		9	; slot23 = "^%s"
		119	[  0]	CALL 	 20	2	3	; slot20 = tostring.match(uv3"unknown", tostring)
		120	[  0]	ISF  	   		20	; if not tostring.match
		121	[  0]	JMP  	 21		2	; 	goto 124
		122	[  0]	KSHORT	 20		0	; slot20 = 0
		123	[  0]	JMP  	 21		9	; 	goto 133
		124	[  0]	ISF  	   		0	; if not slot0
		125	[  0]	JMP  	 20		6	; 	goto 132
		126	[  0]	MOV  	 22		0	; slot22 = slot0
		127	[  0]	TGETS	 20	0	8	; slot20 = slot0.getWidth
		128	[  0]	KSTR 	 23		7	; slot23 = " "
		129	[  0]	CALL 	 20	2	3	; slot20 = <unknown table>.getWidth(uv3"unknown", slot22)
		130	[  0]	IST  	   		20	; if <unknown table>.getWidth
		131	[  0]	JMP  	 21		1	; 	goto 133
		132	[  0]	KSHORT	 20		4	; slot20 = 4
		133	[  0]	MOV  	 23		16	; slot23 = uv3"unknown"
		134	[  0]	TGETS	 21	16	8	; slot21 = uv3"unknown".getWidth
		135	[  0]	CALL 	 21	2	2	; slot21 = uv3"unknown".getWidth(slot22)
		136	[  0]	MULVV	 21	21	6	; slot21 = uv3"unknown".getWidth * slot6
		137	[  0]	ADDVV	 21	10	21	; slot21 = slot10 + slot21
		138	[  0]	ADDVV	 10	21	20	; slot10 = slot21 + slot20
		139	[  0]	JMP  	 16		127	; 	goto 267
		140	[  0]	TGETS	 16	15	13	; slot16 = slot15.text
		141	[  0]	IST  	   		16	; if <unknown table>.text
		142	[  0]	JMP  	 17		1	; 	goto 144
		143	[  0]	KSTR 	 16		12	; slot16 = ""
		144	[  0]	TGETS	 17	15	6	; slot17 = slot15.color
		145	[  0]	IST  	   		17	; if <unknown table>.color
		146	[  0]	JMP  	 18		1	; 	goto 148
		147	[  0]	MOV  	 17		4	; slot17 = slot4
		148	[  0]	KSHORT	 18		1	; slot18 = 1
		149	[  0]	LEN  	 19		16	; slot19 = #slot16
		150	[  0]	ISGT 	 18		19	; if slot18 > slot19
		151	[  0]	JMP  	 19		115	; 	goto 267
		152	[  0]	LOOP 	 19		114	; Loop start, exit goto 267
		153	[  0]	GGET 	 19		5	; slot19 = _env["string"]
		154	[  0]	TGETS	 19	19	4	; slot19 = string.find
		155	[  0]	MOV  	 21		16	; slot21 = slot16
		156	[  0]	KSTR 	 22		3	; slot22 = "%d+"
		157	[  0]	MOV  	 23		18	; slot23 = slot18
		158	[  0]	CALL 	 19	3	4	; slot19, slot20 = string.find(slot20, slot21, slot22)
		159	[  0]	ISF  	   		19	; if not string.find
		160	[  0]	JMP  	 21		3	; 	goto 164
		161	[  0]	SUBVN	 21	19	1	; slot21 = string.find - 1
		162	[  0]	IST  	   		21	; if slot21
		163	[  0]	JMP  	 22		1	; 	goto 165
		164	[  0]	LEN  	 21		16	; slot21 = #slot16
		165	[  0]	ISGT 	 18		21	; if slot18 > slot21
		166	[  0]	JMP  	 22		46	; 	goto 213
		167	[  0]	GGET 	 22		5	; slot22 = _env["string"]
		168	[  0]	TGETS	 22	22	2	; slot22 = string.sub
		169	[  0]	MOV  	 24		16	; slot24 = slot16
		170	[  0]	MOV  	 25		18	; slot25 = slot18
		171	[  0]	MOV  	 26		21	; slot26 = slot21
		172	[  0]	CALL 	 22	2	4	; slot22 = string.sub(slot23, slot24, slot25)
		173	[  0]	GGET 	 23		28	; slot23 = _env["love"]
		174	[  0]	TGETS	 23	23	27	; slot23 = love.graphics
		175	[  0]	TGETS	 23	23	15	; slot23 = love.graphics.setColor
		176	[  0]	TGETB	 25	17	1	; slot25 = slot17[1]
		177	[  0]	IST  	   		25	; if slot25
		178	[  0]	JMP  	 26		1	; 	goto 180
		179	[  0]	KSHORT	 25		1	; slot25 = 1
		180	[  0]	TGETB	 26	17	2	; slot26 = slot17[2]
		181	[  0]	IST  	   		26	; if slot26
		182	[  0]	JMP  	 27		1	; 	goto 184
		183	[  0]	KSHORT	 26		1	; slot26 = 1
		184	[  0]	TGETB	 27	17	3	; slot27 = slot17[3]
		185	[  0]	IST  	   		27	; if slot27
		186	[  0]	JMP  	 28		1	; 	goto 188
		187	[  0]	KSHORT	 27		1	; slot27 = 1
		188	[  0]	MOV  	 28		5	; slot28 = slot5
		189	[  0]	CALL 	 23	1	5	;  = love.graphics.setColor(slot24, slot25, slot26, slot27)
		190	[  0]	GGET 	 23		28	; slot23 = _env["love"]
		191	[  0]	TGETS	 23	23	27	; slot23 = love.graphics
		192	[  0]	TGETS	 23	23	1	; slot23 = love.graphics.print
		193	[  0]	MOV  	 25		22	; slot25 = string.sub
		194	[  0]	GGET 	 26		17	; slot26 = _env["math"]
		195	[  0]	TGETS	 26	26	16	; slot26 = math.floor
		196	[  0]	ADDVN	 28	10	0	; slot28 = slot10 + 0.5
		197	[  0]	CALL 	 26	2	2	; slot26 = math.floor(slot27)
		198	[  0]	GGET 	 27		17	; slot27 = _env["math"]
		199	[  0]	TGETS	 27	27	16	; slot27 = math.floor
		200	[  0]	ADDVN	 29	3	0	; slot29 = slot3 + 0.5
		201	[  0]	CALL 	 27	0	2	; MULTRES = math.floor(slot28)
		202	[  0]	CALLM	 23	1	2	;  = love.graphics.print(slot24, string.sub, ...MULTRES)
		203	[  0]	ISF  	   		0	; if not slot0
		204	[  0]	JMP  	 23		6	; 	goto 211
		205	[  0]	MOV  	 25		0	; slot25 = slot0
		206	[  0]	TGETS	 23	0	8	; slot23 = slot0.getWidth
		207	[  0]	MOV  	 26		22	; slot26 = string.sub
		208	[  0]	CALL 	 23	2	3	; slot23 = <unknown table>.getWidth(slot24, slot25)
		209	[  0]	IST  	   		23	; if <unknown table>.getWidth
		210	[  0]	JMP  	 24		1	; 	goto 212
		211	[  0]	KSHORT	 23		0	; slot23 = 0
		212	[  0]	ADDVV	 10	10	23	; slot10 = slot10 + slot23
		213	[  0]	IST  	   		19	; if string.find
		214	[  0]	JMP  	 22		1	; 	goto 216
		215	[  0]	JMP  	 19		51	; 	goto 267
		216	[  0]	GGET 	 22		5	; slot22 = _env["string"]
		217	[  0]	TGETS	 22	22	2	; slot22 = string.sub
		218	[  0]	MOV  	 24		16	; slot24 = slot16
		219	[  0]	MOV  	 25		19	; slot25 = string.find
		220	[  0]	MOV  	 26		20	; slot26 = slot20
		221	[  0]	CALL 	 22	2	4	; slot22 = string.sub(slot23, slot24, string.find)
		222	[  0]	ISTC 	 23		8	; slot23 = slot8; if slot8
		223	[  0]	JMP  	 23		1	; 	goto 225
		224	[  0]	TDUP 	 23		0	; slot23 = copy table#k0
		225	[  0]	GGET 	 24		28	; slot24 = _env["love"]
		226	[  0]	TGETS	 24	24	27	; slot24 = love.graphics
		227	[  0]	TGETS	 24	24	15	; slot24 = love.graphics.setColor
		228	[  0]	TGETB	 26	23	1	; slot26 = slot23[1]
		229	[  0]	IST  	   		26	; if slot26
		230	[  0]	JMP  	 27		1	; 	goto 232
		231	[  0]	KSHORT	 26		1	; slot26 = 1
		232	[  0]	TGETB	 27	23	2	; slot27 = slot23[2]
		233	[  0]	IST  	   		27	; if slot27
		234	[  0]	JMP  	 28		1	; 	goto 236
		235	[  0]	KSHORT	 27		1	; slot27 = 1
		236	[  0]	TGETB	 28	23	3	; slot28 = slot23[3]
		237	[  0]	IST  	   		28	; if slot28
		238	[  0]	JMP  	 29		1	; 	goto 240
		239	[  0]	KSHORT	 28		1	; slot28 = 1
		240	[  0]	MOV  	 29		5	; slot29 = slot5
		241	[  0]	CALL 	 24	1	5	;  = love.graphics.setColor(string.find, slot26, slot27, slot28)
		242	[  0]	GGET 	 24		28	; slot24 = _env["love"]
		243	[  0]	TGETS	 24	24	27	; slot24 = love.graphics
		244	[  0]	TGETS	 24	24	1	; slot24 = love.graphics.print
		245	[  0]	MOV  	 26		22	; slot26 = string.sub
		246	[  0]	GGET 	 27		17	; slot27 = _env["math"]
		247	[  0]	TGETS	 27	27	16	; slot27 = math.floor
		248	[  0]	ADDVN	 29	10	0	; slot29 = slot10 + 0.5
		249	[  0]	CALL 	 27	2	2	; slot27 = math.floor(slot28)
		250	[  0]	GGET 	 28		17	; slot28 = _env["math"]
		251	[  0]	TGETS	 28	28	16	; slot28 = math.floor
		252	[  0]	ADDVN	 30	3	0	; slot30 = slot3 + 0.5
		253	[  0]	CALL 	 28	0	2	; MULTRES = math.floor(slot29)
		254	[  0]	CALLM	 24	1	2	;  = love.graphics.print(string.find, string.sub, ...MULTRES)
		255	[  0]	ISF  	   		0	; if not slot0
		256	[  0]	JMP  	 24		6	; 	goto 263
		257	[  0]	MOV  	 26		0	; slot26 = slot0
		258	[  0]	TGETS	 24	0	8	; slot24 = slot0.getWidth
		259	[  0]	MOV  	 27		22	; slot27 = string.sub
		260	[  0]	CALL 	 24	2	3	; slot24 = <unknown table>.getWidth(string.find, slot26)
		261	[  0]	IST  	   		24	; if <unknown table>.getWidth
		262	[  0]	JMP  	 25		1	; 	goto 264
		263	[  0]	KSHORT	 24		0	; slot24 = 0
		264	[  0]	ADDVV	 10	10	24	; slot10 = slot10 + slot24
		265	[  0]	ADDVN	 18	20	1	; slot18 = slot20 + 1
		266	[  0]	JMP  	 19		-118	; 	goto 149
		267	[  0]	ITERC	 14	3	3	; slot14, slot15, slot16 = ipairs, slot12, uv0"unknown"; slot14, slot15 = ipairs(slot12, uv0"unknown")
		268	[  0]	ITERL	 14		-253	; uv0"unknown" = slot14; if slot14 != nil goto 16
		269	[  0]	RET0 	  0		1	; return
	270	[  0]	FNEW 	 58		36	; N/A:0-0: 5 args, 0 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  5		5	; 	goto 8
		  3	[  0]	GGET 	  5		6	; slot5 = _env["love"]
		  4	[  0]	TGETS	  5	5	5	; slot5 = love.graphics
		  5	[  0]	TGETS	  5	5	4	; slot5 = love.graphics.setFont
		  6	[  0]	MOV  	  7		0	; slot7 = slot0
		  7	[  0]	CALL 	  5	1	2	;  = love.graphics.setFont(slot6)
		  8	[  0]	GGET 	  5		6	; slot5 = _env["love"]
		  9	[  0]	TGETS	  5	5	5	; slot5 = love.graphics
		 10	[  0]	TGETS	  5	5	3	; slot5 = love.graphics.setColor
		 11	[  0]	MOV  	  7		4	; slot7 = slot4
		 12	[  0]	CALL 	  5	1	2	;  = love.graphics.setColor(slot6)
		 13	[  0]	GGET 	  5		6	; slot5 = _env["love"]
		 14	[  0]	TGETS	  5	5	5	; slot5 = love.graphics
		 15	[  0]	TGETS	  5	5	2	; slot5 = love.graphics.print
		 16	[  0]	MOV  	  7		1	; slot7 = slot1
		 17	[  0]	GGET 	  8		1	; slot8 = _env["math"]
		 18	[  0]	TGETS	  8	8	0	; slot8 = math.floor
		 19	[  0]	ADDVN	 10	2	0	; slot10 = slot2 + 0.5
		 20	[  0]	CALL 	  8	2	2	; slot8 = math.floor(slot9)
		 21	[  0]	GGET 	  9		1	; slot9 = _env["math"]
		 22	[  0]	TGETS	  9	9	0	; slot9 = math.floor
		 23	[  0]	ADDVN	 11	3	0	; slot11 = slot3 + 0.5
		 24	[  0]	CALL 	  9	0	2	; MULTRES = math.floor(slot10)
		 25	[  0]	CALLM	  5	1	2	;  = love.graphics.print(slot6, slot7, ...MULTRES)
		 26	[  0]	RET0 	  0		1	; return
	271	[  0]	FNEW 	 59		35	; N/A:0-0: 2 args, 0 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			]
		
		
		ktable#16 = [
			[y] = 0,
			[x] = 0,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		7	; 	goto 10
		  3	[  0]	TGETS	  2	0	20	; slot2 = slot0.virtual
		  4	[  0]	ISF  	   		2	; if not <unknown table>.virtual
		  5	[  0]	JMP  	  3		4	; 	goto 10
		  6	[  0]	TGETS	  2	0	20	; slot2 = slot0.virtual
		  7	[  0]	TGETS	  2	2	19	; slot2 = <unknown table>.virtual.W
		  8	[  0]	IST  	   		2	; if <unknown table>.virtual.W
		  9	[  0]	JMP  	  3		1	; 	goto 11
		 10	[  0]	KSHORT	  2		640	; slot2 = 640
		 11	[  0]	ISF  	   		0	; if not slot0
		 12	[  0]	JMP  	  3		7	; 	goto 20
		 13	[  0]	TGETS	  3	0	20	; slot3 = slot0.virtual
		 14	[  0]	ISF  	   		3	; if not <unknown table>.virtual
		 15	[  0]	JMP  	  4		4	; 	goto 20
		 16	[  0]	TGETS	  3	0	20	; slot3 = slot0.virtual
		 17	[  0]	TGETS	  3	3	18	; slot3 = <unknown table>.virtual.H
		 18	[  0]	IST  	   		3	; if <unknown table>.virtual.H
		 19	[  0]	JMP  	  4		1	; 	goto 21
		 20	[  0]	KSHORT	  3		360	; slot3 = 360
		 21	[  0]	ISFC 	  4		1	; slot4 = slot1; if not slot1
		 22	[  0]	JMP  	  4		1	; 	goto 24
		 23	[  0]	TGETS	  4	1	17	; slot4 = slot1.slotPanel
		 24	[  0]	IST  	   		4	; if <unknown table>.slotPanel
		 25	[  0]	JMP  	  5		8	; 	goto 34
		 26	[  0]	TDUP 	  5		16	; slot5 = copy table#k16
		 27	[  0]	GGET 	  6		15	; slot6 = _env["math"]
		 28	[  0]	TGETS	  6	6	14	; slot6 = math.floor
		 29	[  0]	MULVN	  8	2	0	; slot8 = slot2 * 0.48
		 30	[  0]	CALL 	  6	2	2	; slot6 = math.floor(slot7)
		 31	[  0]	TSETS	  6	5	13	; slot5.w = math.floor
		 32	[  0]	TSETS	  3	5	12	; slot5.h = slot3
		 33	[  0]	RET1 	  5		2	; return slot5
		 34	[  0]	ISF  	   		0	; if not slot0
		 35	[  0]	JMP  	  5		7	; 	goto 43
		 36	[  0]	TGETS	  5	0	11	; slot5 = slot0.tutorial
		 37	[  0]	ISF  	   		5	; if not <unknown table>.tutorial
		 38	[  0]	JMP  	  6		4	; 	goto 43
		 39	[  0]	TGETS	  5	0	11	; slot5 = slot0.tutorial
		 40	[  0]	TGETS	  5	5	10	; slot5 = <unknown table>.tutorial.slotFocus
		 41	[  0]	IST  	   		5	; if <unknown table>.tutorial.slotFocus
		 42	[  0]	JMP  	  6		1	; 	goto 44
		 43	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 44	[  0]	ISF  	   		0	; if not slot0
		 45	[  0]	JMP  	  6		7	; 	goto 53
		 46	[  0]	TGETS	  6	0	9	; slot6 = slot0.slot
		 47	[  0]	ISF  	   		6	; if not <unknown table>.slot
		 48	[  0]	JMP  	  7		4	; 	goto 53
		 49	[  0]	TGETS	  6	0	9	; slot6 = slot0.slot
		 50	[  0]	TGETS	  6	6	8	; slot6 = <unknown table>.slot.bgAnimY
		 51	[  0]	IST  	   		6	; if <unknown table>.slot.bgAnimY
		 52	[  0]	JMP  	  7		1	; 	goto 54
		 53	[  0]	KSHORT	  6		0	; slot6 = 0
		 54	[  0]	TGETS	  7	4	7	; slot7 = <unknown table>.slotPanel.x
		 55	[  0]	GGET 	  8		6	; slot8 = _env["tonumber"]
		 56	[  0]	TGETS	 10	5	5	; slot10 = slot5.offsetX
		 57	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 58	[  0]	IST  	   		8	; if tonumber
		 59	[  0]	JMP  	  9		1	; 	goto 61
		 60	[  0]	KSHORT	  8		65516	; slot8 = 65516
		 61	[  0]	ADDVV	  7	7	8	; slot7 = <unknown table>.slotPanel.x + slot8
		 62	[  0]	TGETS	  8	4	4	; slot8 = <unknown table>.slotPanel.y
		 63	[  0]	ADDVV	  8	8	6	; slot8 = <unknown table>.slotPanel.y + slot6
		 64	[  0]	GGET 	  9		6	; slot9 = _env["tonumber"]
		 65	[  0]	TGETS	 11	5	3	; slot11 = slot5.offsetY
		 66	[  0]	CALL 	  9	2	2	; slot9 = tonumber(<unknown table>.offsetX)
		 67	[  0]	IST  	   		9	; if tonumber
		 68	[  0]	JMP  	 10		1	; 	goto 70
		 69	[  0]	KSHORT	  9		65512	; slot9 = 65512
		 70	[  0]	ADDVV	  8	8	9	; slot8 = slot8 + slot9
		 71	[  0]	TGETS	  9	4	13	; slot9 = <unknown table>.slotPanel.w
		 72	[  0]	GGET 	 10		6	; slot10 = _env["tonumber"]
		 73	[  0]	TGETS	 12	5	2	; slot12 = slot5.extraW
		 74	[  0]	CALL 	 10	2	2	; slot10 = tonumber(<unknown table>.offsetY)
		 75	[  0]	IST  	   		10	; if tonumber
		 76	[  0]	JMP  	 11		1	; 	goto 78
		 77	[  0]	KSHORT	 10		64	; slot10 = 64
		 78	[  0]	ADDVV	  9	9	10	; slot9 = <unknown table>.slotPanel.w + slot10
		 79	[  0]	TGETS	 10	4	12	; slot10 = <unknown table>.slotPanel.h
		 80	[  0]	GGET 	 11		6	; slot11 = _env["tonumber"]
		 81	[  0]	TGETS	 13	5	1	; slot13 = slot5.extraH
		 82	[  0]	CALL 	 11	2	2	; slot11 = tonumber(<unknown table>.extraW)
		 83	[  0]	IST  	   		11	; if tonumber
		 84	[  0]	JMP  	 12		1	; 	goto 86
		 85	[  0]	KSHORT	 11		54	; slot11 = 54
		 86	[  0]	ADDVV	 10	10	11	; slot10 = <unknown table>.slotPanel.h + slot11
		 87	[  0]	KSHORT	 11		0	; slot11 = 0
		 88	[  0]	ISGE 	  7		11	; if slot7 >= slot11
		 89	[  0]	JMP  	 11		2	; 	goto 92
		 90	[  0]	ADDVV	  9	9	7	; slot9 = slot9 + slot7
		 91	[  0]	KSHORT	  7		0	; slot7 = 0
		 92	[  0]	KSHORT	 11		0	; slot11 = 0
		 93	[  0]	ISGE 	  8		11	; if slot8 >= slot11
		 94	[  0]	JMP  	 11		2	; 	goto 97
		 95	[  0]	ADDVV	 10	10	8	; slot10 = slot10 + slot8
		 96	[  0]	KSHORT	  8		0	; slot8 = 0
		 97	[  0]	ADDVV	 11	7	9	; slot11 = slot7 + slot9
		 98	[  0]	ISGE 	  2		11	; if slot2 >= slot11
		 99	[  0]	JMP  	 11		1	; 	goto 101
		100	[  0]	SUBVV	  9	2	7	; slot9 = slot2 - slot7
		101	[  0]	ADDVV	 11	8	10	; slot11 = slot8 + slot10
		102	[  0]	ISGE 	  3		11	; if slot3 >= slot11
		103	[  0]	JMP  	 11		1	; 	goto 105
		104	[  0]	SUBVV	 10	3	8	; slot10 = slot3 - slot8
		105	[  0]	TDUP 	 11		0	; slot11 = copy table#k0
		106	[  0]	GGET 	 12		15	; slot12 = _env["math"]
		107	[  0]	TGETS	 12	12	14	; slot12 = math.floor
		108	[  0]	ADDVN	 14	7	1	; slot14 = slot7 + 0.5
		109	[  0]	CALL 	 12	2	2	; slot12 = math.floor(<unknown table>.extraH)
		110	[  0]	TSETS	 12	11	7	; slot11.x = math.floor
		111	[  0]	GGET 	 12		15	; slot12 = _env["math"]
		112	[  0]	TGETS	 12	12	14	; slot12 = math.floor
		113	[  0]	ADDVN	 14	8	1	; slot14 = slot8 + 0.5
		114	[  0]	CALL 	 12	2	2	; slot12 = math.floor(<unknown table>.extraH)
		115	[  0]	TSETS	 12	11	4	; slot11.y = math.floor
		116	[  0]	GGET 	 12		15	; slot12 = _env["math"]
		117	[  0]	TGETS	 12	12	14	; slot12 = math.floor
		118	[  0]	ADDVN	 14	9	1	; slot14 = slot9 + 0.5
		119	[  0]	CALL 	 12	2	2	; slot12 = math.floor(<unknown table>.extraH)
		120	[  0]	TSETS	 12	11	13	; slot11.w = math.floor
		121	[  0]	GGET 	 12		15	; slot12 = _env["math"]
		122	[  0]	TGETS	 12	12	14	; slot12 = math.floor
		123	[  0]	ADDVN	 14	10	1	; slot14 = slot10 + 0.5
		124	[  0]	CALL 	 12	2	2	; slot12 = math.floor(<unknown table>.extraH)
		125	[  0]	TSETS	 12	11	12	; slot11.h = math.floor
		126	[  0]	RET1 	 11		2	; return slot11
	272	[  0]	FNEW 	 60		34	; N/A:0-0: 5 args, 0 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  5		1	; 	goto 4
		  3	[  0]	RET0 	  0		1	; return
		  4	[  0]	MOV  	  7		0	; slot7 = slot0
		  5	[  0]	TGETS	  5	0	4	; slot5 = slot0.getWidth
		  6	[  0]	CALL 	  5	2	2	; slot5 = <unknown table>.getWidth(slot6)
		  7	[  0]	MOV  	  8		0	; slot8 = slot0
		  8	[  0]	TGETS	  6	0	3	; slot6 = slot0.getHeight
		  9	[  0]	CALL 	  6	2	2	; slot6 = <unknown table>.getHeight(slot7)
		 10	[  0]	KSHORT	  7		0	; slot7 = 0
		 11	[  0]	ISLE 	  5		7	; if <unknown table>.getWidth <= slot7
		 12	[  0]	JMP  	  7		3	; 	goto 16
		 13	[  0]	KSHORT	  7		0	; slot7 = 0
		 14	[  0]	ISGT 	  6		7	; if <unknown table>.getHeight > slot7
		 15	[  0]	JMP  	  7		1	; 	goto 17
		 16	[  0]	RET0 	  0		1	; return
		 17	[  0]	ISNEV	  5		3	; if <unknown table>.getWidth ~= slot3
		 18	[  0]	JMP  	  7		14	; 	goto 33
		 19	[  0]	ISNEV	  6		4	; if <unknown table>.getHeight ~= slot4
		 20	[  0]	JMP  	  7		12	; 	goto 33
		 21	[  0]	GGET 	  7		2	; slot7 = _env["love"]
		 22	[  0]	TGETS	  7	7	1	; slot7 = love.graphics
		 23	[  0]	TGETS	  7	7	0	; slot7 = love.graphics.draw
		 24	[  0]	MOV  	  9		0	; slot9 = slot0
		 25	[  0]	ISTC 	 10		1	; slot10 = slot1; if slot1
		 26	[  0]	JMP  	 10		1	; 	goto 28
		 27	[  0]	KSHORT	 10		0	; slot10 = 0
		 28	[  0]	ISTC 	 11		2	; slot11 = slot2; if slot2
		 29	[  0]	JMP  	 11		1	; 	goto 31
		 30	[  0]	KSHORT	 11		0	; slot11 = 0
		 31	[  0]	CALL 	  7	1	4	;  = love.graphics.draw(slot8, slot9, slot10)
		 32	[  0]	JMP  	  7		14	; 	goto 47
		 33	[  0]	GGET 	  7		2	; slot7 = _env["love"]
		 34	[  0]	TGETS	  7	7	1	; slot7 = love.graphics
		 35	[  0]	TGETS	  7	7	0	; slot7 = love.graphics.draw
		 36	[  0]	MOV  	  9		0	; slot9 = slot0
		 37	[  0]	ISTC 	 10		1	; slot10 = slot1; if slot1
		 38	[  0]	JMP  	 10		1	; 	goto 40
		 39	[  0]	KSHORT	 10		0	; slot10 = 0
		 40	[  0]	ISTC 	 11		2	; slot11 = slot2; if slot2
		 41	[  0]	JMP  	 11		1	; 	goto 43
		 42	[  0]	KSHORT	 11		0	; slot11 = 0
		 43	[  0]	KSHORT	 12		0	; slot12 = 0
		 44	[  0]	DIVVV	 13	3	5	; slot13 = slot3 / <unknown table>.getWidth
		 45	[  0]	DIVVV	 14	4	6	; slot14 = slot4 / <unknown table>.getHeight
		 46	[  0]	CALL 	  7	1	7	;  = love.graphics.draw(slot8, slot9, slot10, slot11, slot12, slot13)
		 47	[  0]	RET0 	  0		1	; return
	273	[  0]	FNEW 	 61		33	; N/A:0-0: 2 args, 2 upvalues, 33 slots
		
		;;;; constant tables ;;;;
		ktable#27 = [
			[ampPx] = 1,
			[freq] = 0.5,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	CALL 	  2	2	1	; slot2 = uv0"unknown"()
		  3	[  0]	ISF  	   		2	; if not uv0"unknown"
		  4	[  0]	JMP  	  3		5	; 	goto 10
		  5	[  0]	GGET 	  3		67	; slot3 = _env["love"]
		  6	[  0]	TGETS	  3	3	66	; slot3 = love.graphics
		  7	[  0]	TGETS	  3	3	65	; slot3 = love.graphics.setShader
		  8	[  0]	MOV  	  5		2	; slot5 = uv0"unknown"
		  9	[  0]	CALL 	  3	1	2	;  = love.graphics.setShader(slot4)
		 10	[  0]	GGET 	  3		67	; slot3 = _env["love"]
		 11	[  0]	TGETS	  3	3	66	; slot3 = love.graphics
		 12	[  0]	TGETS	  3	3	64	; slot3 = love.graphics.setColor
		 13	[  0]	KSHORT	  5		1	; slot5 = 1
		 14	[  0]	KSHORT	  6		1	; slot6 = 1
		 15	[  0]	KSHORT	  7		1	; slot7 = 1
		 16	[  0]	KSHORT	  8		1	; slot8 = 1
		 17	[  0]	CALL 	  3	1	5	;  = love.graphics.setColor(slot4, slot5, slot6, slot7)
		 18	[  0]	ISF  	   		0	; if not slot0
		 19	[  0]	JMP  	  3		7	; 	goto 27
		 20	[  0]	TGETS	  3	0	63	; slot3 = slot0.virtual
		 21	[  0]	ISF  	   		3	; if not <unknown table>.virtual
		 22	[  0]	JMP  	  4		4	; 	goto 27
		 23	[  0]	TGETS	  3	0	63	; slot3 = slot0.virtual
		 24	[  0]	TGETS	  3	3	62	; slot3 = <unknown table>.virtual.W
		 25	[  0]	IST  	   		3	; if <unknown table>.virtual.W
		 26	[  0]	JMP  	  4		1	; 	goto 28
		 27	[  0]	KSHORT	  3		640	; slot3 = 640
		 28	[  0]	ISF  	   		0	; if not slot0
		 29	[  0]	JMP  	  4		7	; 	goto 37
		 30	[  0]	TGETS	  4	0	63	; slot4 = slot0.virtual
		 31	[  0]	ISF  	   		4	; if not <unknown table>.virtual
		 32	[  0]	JMP  	  5		4	; 	goto 37
		 33	[  0]	TGETS	  4	0	63	; slot4 = slot0.virtual
		 34	[  0]	TGETS	  4	4	61	; slot4 = <unknown table>.virtual.H
		 35	[  0]	IST  	   		4	; if <unknown table>.virtual.H
		 36	[  0]	JMP  	  5		1	; 	goto 38
		 37	[  0]	KSHORT	  4		360	; slot4 = 360
		 38	[  0]	ISFC 	  5		1	; slot5 = slot1; if not slot1
		 39	[  0]	JMP  	  5		1	; 	goto 41
		 40	[  0]	TGETS	  5	1	60	; slot5 = slot1.slotPanel
		 41	[  0]	GGET 	  6		59	; slot6 = _env["spinShake"]
		 42	[  0]	ISF  	   		6	; if not spinShake
		 43	[  0]	JMP  	  7		4	; 	goto 48
		 44	[  0]	GGET 	  6		59	; slot6 = _env["spinShake"]
		 45	[  0]	TGETS	  6	6	58	; slot6 = spinShake.x
		 46	[  0]	IST  	   		6	; if spinShake.x
		 47	[  0]	JMP  	  7		1	; 	goto 49
		 48	[  0]	KSHORT	  6		0	; slot6 = 0
		 49	[  0]	GGET 	  7		59	; slot7 = _env["spinShake"]
		 50	[  0]	ISF  	   		7	; if not spinShake
		 51	[  0]	JMP  	  8		4	; 	goto 56
		 52	[  0]	GGET 	  7		59	; slot7 = _env["spinShake"]
		 53	[  0]	TGETS	  7	7	57	; slot7 = spinShake.y
		 54	[  0]	IST  	   		7	; if spinShake.y
		 55	[  0]	JMP  	  8		1	; 	goto 57
		 56	[  0]	KSHORT	  7		0	; slot7 = 0
		 57	[  0]	GGET 	  8		56	; slot8 = _env["slotBgAnim"]
		 58	[  0]	ISF  	   		8	; if not slotBgAnim
		 59	[  0]	JMP  	  9		4	; 	goto 64
		 60	[  0]	GGET 	  8		56	; slot8 = _env["slotBgAnim"]
		 61	[  0]	TGETS	  8	8	57	; slot8 = slotBgAnim.y
		 62	[  0]	IST  	   		8	; if slotBgAnim.y
		 63	[  0]	JMP  	  9		1	; 	goto 65
		 64	[  0]	KSHORT	  8		0	; slot8 = 0
		 65	[  0]	ISF  	   		0	; if not slot0
		 66	[  0]	JMP  	  9		7	; 	goto 74
		 67	[  0]	TGETS	  9	0	55	; slot9 = slot0.slot
		 68	[  0]	ISF  	   		9	; if not <unknown table>.slot
		 69	[  0]	JMP  	 10		4	; 	goto 74
		 70	[  0]	TGETS	  9	0	55	; slot9 = slot0.slot
		 71	[  0]	TGETS	  9	9	54	; slot9 = <unknown table>.slot.stickyOffsetY
		 72	[  0]	IST  	   		9	; if <unknown table>.slot.stickyOffsetY
		 73	[  0]	JMP  	 10		1	; 	goto 75
		 74	[  0]	KSHORT	  9		0	; slot9 = 0
		 75	[  0]	GGET 	 10		53	; slot10 = _env["spinPressShake"]
		 76	[  0]	ISF  	   		10	; if not spinPressShake
		 77	[  0]	JMP  	 11		4	; 	goto 82
		 78	[  0]	GGET 	 10		53	; slot10 = _env["spinPressShake"]
		 79	[  0]	TGETS	 10	10	57	; slot10 = spinPressShake.y
		 80	[  0]	IST  	   		10	; if spinPressShake.y
		 81	[  0]	JMP  	 11		1	; 	goto 83
		 82	[  0]	KSHORT	 10		0	; slot10 = 0
		 83	[  0]	GGET 	 11		52	; slot11 = _env["slotBgJitter"]
		 84	[  0]	ISF  	   		11	; if not slotBgJitter
		 85	[  0]	JMP  	 12		4	; 	goto 90
		 86	[  0]	GGET 	 11		52	; slot11 = _env["slotBgJitter"]
		 87	[  0]	TGETS	 11	11	58	; slot11 = slotBgJitter.x
		 88	[  0]	IST  	   		11	; if slotBgJitter.x
		 89	[  0]	JMP  	 12		1	; 	goto 91
		 90	[  0]	KSHORT	 11		0	; slot11 = 0
		 91	[  0]	GGET 	 12		52	; slot12 = _env["slotBgJitter"]
		 92	[  0]	ISF  	   		12	; if not slotBgJitter
		 93	[  0]	JMP  	 13		4	; 	goto 98
		 94	[  0]	GGET 	 12		52	; slot12 = _env["slotBgJitter"]
		 95	[  0]	TGETS	 12	12	57	; slot12 = slotBgJitter.y
		 96	[  0]	IST  	   		12	; if slotBgJitter.y
		 97	[  0]	JMP  	 13		1	; 	goto 99
		 98	[  0]	KSHORT	 12		0	; slot12 = 0
		 99	[  0]	ISF  	   		0	; if not slot0
		100	[  0]	JMP  	 13		7	; 	goto 108
		101	[  0]	TGETS	 13	0	55	; slot13 = slot0.slot
		102	[  0]	ISF  	   		13	; if not <unknown table>.slot
		103	[  0]	JMP  	 14		4	; 	goto 108
		104	[  0]	TGETS	 13	0	55	; slot13 = slot0.slot
		105	[  0]	TGETS	 13	13	51	; slot13 = <unknown table>.slot.ropeOffsetY
		106	[  0]	IST  	   		13	; if <unknown table>.slot.ropeOffsetY
		107	[  0]	JMP  	 14		1	; 	goto 109
		108	[  0]	KSHORT	 13		0	; slot13 = 0
		109	[  0]	GGET 	 14		50	; slot14 = _env["slotBgSquash"]
		110	[  0]	ISF  	   		14	; if not slotBgSquash
		111	[  0]	JMP  	 15		4	; 	goto 116
		112	[  0]	GGET 	 14		50	; slot14 = _env["slotBgSquash"]
		113	[  0]	TGETS	 14	14	49	; slot14 = slotBgSquash.sx
		114	[  0]	IST  	   		14	; if slotBgSquash.sx
		115	[  0]	JMP  	 15		1	; 	goto 117
		116	[  0]	KSHORT	 14		1	; slot14 = 1
		117	[  0]	GGET 	 15		50	; slot15 = _env["slotBgSquash"]
		118	[  0]	ISF  	   		15	; if not slotBgSquash
		119	[  0]	JMP  	 16		4	; 	goto 124
		120	[  0]	GGET 	 15		50	; slot15 = _env["slotBgSquash"]
		121	[  0]	TGETS	 15	15	48	; slot15 = slotBgSquash.sy
		122	[  0]	IST  	   		15	; if slotBgSquash.sy
		123	[  0]	JMP  	 16		1	; 	goto 125
		124	[  0]	KSHORT	 15		1	; slot15 = 1
		125	[  0]	GGET 	 16		47	; slot16 = _env["math"]
		126	[  0]	TGETS	 16	16	46	; slot16 = math.floor
		127	[  0]	ADDVN	 18	6	0	; slot18 = slot6 + 0.5
		128	[  0]	CALL 	 16	2	2	; slot16 = math.floor(slot17)
		129	[  0]	ADDVV	 16	16	11	; slot16 = math.floor + slot11
		130	[  0]	GGET 	 17		47	; slot17 = _env["math"]
		131	[  0]	TGETS	 17	17	46	; slot17 = math.floor
		132	[  0]	ADDVV	 19	8	7	; slot19 = slot8 + slot7
		133	[  0]	ADDVV	 19	19	10	; slot19 = slot19 + slot10
		134	[  0]	ADDVV	 19	19	9	; slot19 = slot19 + slot9
		135	[  0]	ADDVN	 19	19	0	; slot19 = slot19 + 0.5
		136	[  0]	CALL 	 17	2	2	; slot17 = math.floor(slot18)
		137	[  0]	ADDVV	 17	17	12	; slot17 = math.floor + slot12
		138	[  0]	MULVN	 18	3	0	; slot18 = slot3 * 0.5
		139	[  0]	MULVN	 19	4	0	; slot19 = slot4 * 0.5
		140	[  0]	ISF  	   		5	; if not <unknown table>.slotPanel
		141	[  0]	JMP  	 20		28	; 	goto 170
		142	[  0]	ISF  	   		0	; if not slot0
		143	[  0]	JMP  	 20		7	; 	goto 151
		144	[  0]	TGETS	 20	0	55	; slot20 = slot0.slot
		145	[  0]	ISF  	   		20	; if not <unknown table>.slot
		146	[  0]	JMP  	 21		4	; 	goto 151
		147	[  0]	TGETS	 20	0	55	; slot20 = slot0.slot
		148	[  0]	TGETS	 20	20	45	; slot20 = <unknown table>.slot.lineHitSquash
		149	[  0]	IST  	   		20	; if <unknown table>.slot.lineHitSquash
		150	[  0]	JMP  	 21		1	; 	goto 152
		151	[  0]	TNEW 	 20		0	; slot20 = new table( array: 0, dict: 1)
		152	[  0]	TGETS	 21	5	58	; slot21 = <unknown table>.slotPanel.x
		153	[  0]	TGETS	 22	5	44	; slot22 = <unknown table>.slotPanel.w
		154	[  0]	MULVN	 22	22	0	; slot22 = <unknown table>.slotPanel.w * 0.5
		155	[  0]	ADDVV	 21	21	22	; slot21 = <unknown table>.slotPanel.x + slot22
		156	[  0]	TGETS	 22	20	43	; slot22 = slot20.anchorOffsetX
		157	[  0]	IST  	   		22	; if <unknown table>.anchorOffsetX
		158	[  0]	JMP  	 23		1	; 	goto 160
		159	[  0]	KSHORT	 22		0	; slot22 = 0
		160	[  0]	ADDVV	 18	21	22	; slot18 = slot21 + slot22
		161	[  0]	TGETS	 21	5	57	; slot21 = <unknown table>.slotPanel.y
		162	[  0]	TGETS	 22	5	42	; slot22 = <unknown table>.slotPanel.h
		163	[  0]	MULVN	 22	22	0	; slot22 = <unknown table>.slotPanel.h * 0.5
		164	[  0]	ADDVV	 21	21	22	; slot21 = <unknown table>.slotPanel.y + slot22
		165	[  0]	TGETS	 22	20	41	; slot22 = slot20.anchorOffsetY
		166	[  0]	IST  	   		22	; if <unknown table>.anchorOffsetY
		167	[  0]	JMP  	 23		1	; 	goto 169
		168	[  0]	KSHORT	 22		0	; slot22 = 0
		169	[  0]	ADDVV	 19	21	22	; slot19 = slot21 + slot22
		170	[  0]	GGET 	 20		40	; slot20 = _env["backgroundSlotImage"]
		171	[  0]	ISF  	   		20	; if not backgroundSlotImage
		172	[  0]	JMP  	 21		30	; 	goto 203
		173	[  0]	GGET 	 20		40	; slot20 = _env["backgroundSlotImage"]
		174	[  0]	MOV  	 22		20	; slot22 = backgroundSlotImage
		175	[  0]	TGETS	 20	20	39	; slot20 = backgroundSlotImage.getWidth
		176	[  0]	CALL 	 20	2	2	; slot20 = backgroundSlotImage.getWidth(slot21)
		177	[  0]	GGET 	 21		40	; slot21 = _env["backgroundSlotImage"]
		178	[  0]	MOV  	 23		21	; slot23 = backgroundSlotImage
		179	[  0]	TGETS	 21	21	38	; slot21 = backgroundSlotImage.getHeight
		180	[  0]	CALL 	 21	2	2	; slot21 = backgroundSlotImage.getHeight(backgroundSlotImage)
		181	[  0]	KSHORT	 22		0	; slot22 = 0
		182	[  0]	ISGE 	 22		20	; if slot22 >= backgroundSlotImage.getWidth
		183	[  0]	JMP  	 22		19	; 	goto 203
		184	[  0]	KSHORT	 22		0	; slot22 = 0
		185	[  0]	ISGE 	 22		21	; if slot22 >= backgroundSlotImage.getHeight
		186	[  0]	JMP  	 22		16	; 	goto 203
		187	[  0]	GGET 	 22		67	; slot22 = _env["love"]
		188	[  0]	TGETS	 22	22	66	; slot22 = love.graphics
		189	[  0]	TGETS	 22	22	37	; slot22 = love.graphics.draw
		190	[  0]	GGET 	 24		40	; slot24 = _env["backgroundSlotImage"]
		191	[  0]	SUBNV	 25	14	1	; slot25 = 1 - slot14
		192	[  0]	MULVV	 25	25	18	; slot25 = slot25 * slot18
		193	[  0]	ADDVV	 25	16	25	; slot25 = slot16 + slot25
		194	[  0]	SUBNV	 26	15	1	; slot26 = 1 - slot15
		195	[  0]	MULVV	 26	26	19	; slot26 = slot26 * slot19
		196	[  0]	ADDVV	 26	17	26	; slot26 = slot17 + slot26
		197	[  0]	KSHORT	 27		0	; slot27 = 0
		198	[  0]	DIVVV	 28	3	20	; slot28 = slot3 / backgroundSlotImage.getWidth
		199	[  0]	MULVV	 28	28	14	; slot28 = slot28 * slot14
		200	[  0]	DIVVV	 29	4	21	; slot29 = slot4 / backgroundSlotImage.getHeight
		201	[  0]	MULVV	 29	29	15	; slot29 = slot29 * slot15
		202	[  0]	CALL 	 22	1	7	;  = love.graphics.draw(backgroundSlotImage, backgroundSlotImage, slot25, slot26, slot27, slot28)
		203	[  0]	UGET 	 14		1	; slot14 = uv1"unknwon"
		204	[  0]	GGET 	 16		36	; slot16 = _env["backgroundSlotRopeImage"]
		205	[  0]	GGET 	 17		47	; slot17 = _env["math"]
		206	[  0]	TGETS	 17	17	46	; slot17 = math.floor
		207	[  0]	ADDVN	 19	6	0	; slot19 = slot6 + 0.5
		208	[  0]	CALL 	 17	2	2	; slot17 = math.floor(slot18)
		209	[  0]	ADDVV	 17	17	11	; slot17 = math.floor + slot11
		210	[  0]	GGET 	 18		47	; slot18 = _env["math"]
		211	[  0]	TGETS	 18	18	46	; slot18 = math.floor
		212	[  0]	ADDVV	 20	8	7	; slot20 = slot8 + slot7
		213	[  0]	ADDVV	 20	20	9	; slot20 = slot20 + slot9
		214	[  0]	ADDVV	 20	20	13	; slot20 = slot20 + slot13
		215	[  0]	ADDVN	 20	20	0	; slot20 = slot20 + 0.5
		216	[  0]	CALL 	 18	2	2	; slot18 = math.floor(slot19)
		217	[  0]	ADDVV	 18	18	12	; slot18 = math.floor + slot12
		218	[  0]	MOV  	 19		3	; slot19 = slot3
		219	[  0]	MOV  	 20		4	; slot20 = slot4
		220	[  0]	CALL 	 14	1	6	;  = uv1"unknown"(slot15, backgroundSlotRopeImage, slot17, slot18, slot19)
		221	[  0]	UGET 	 14		1	; slot14 = uv1"unknwon"
		222	[  0]	GGET 	 16		35	; slot16 = _env["backgroundMonsterBodyImage"]
		223	[  0]	GGET 	 17		47	; slot17 = _env["math"]
		224	[  0]	TGETS	 17	17	46	; slot17 = math.floor
		225	[  0]	ADDVN	 19	6	0	; slot19 = slot6 + 0.5
		226	[  0]	CALL 	 17	2	2	; slot17 = math.floor(slot18)
		227	[  0]	ADDVV	 17	17	11	; slot17 = math.floor + slot11
		228	[  0]	GGET 	 18		47	; slot18 = _env["math"]
		229	[  0]	TGETS	 18	18	46	; slot18 = math.floor
		230	[  0]	ADDVV	 20	8	7	; slot20 = slot8 + slot7
		231	[  0]	ADDVV	 20	20	9	; slot20 = slot20 + slot9
		232	[  0]	ADDVN	 20	20	0	; slot20 = slot20 + 0.5
		233	[  0]	CALL 	 18	2	2	; slot18 = math.floor(slot19)
		234	[  0]	ADDVV	 18	18	12	; slot18 = math.floor + slot12
		235	[  0]	MOV  	 19		3	; slot19 = slot3
		236	[  0]	MOV  	 20		4	; slot20 = slot4
		237	[  0]	CALL 	 14	1	6	;  = uv1"unknown"(slot15, backgroundMonsterBodyImage, slot17, slot18, slot19)
		238	[  0]	GGET 	 14		34	; slot14 = _env["backgroundMonsterHeadImage"]
		239	[  0]	GGET 	 15		33	; slot15 = _env["monsterHeadAnim"]
		240	[  0]	ISF  	   		15	; if not monsterHeadAnim
		241	[  0]	JMP  	 16		8	; 	goto 250
		242	[  0]	GGET 	 15		33	; slot15 = _env["monsterHeadAnim"]
		243	[  0]	TGETS	 15	15	32	; slot15 = monsterHeadAnim.mode
		244	[  0]	ISNES	 15		31	; if monsterHeadAnim.mode ~= "laugh"
		245	[  0]	JMP  	 15		4	; 	goto 250
		246	[  0]	GGET 	 15		30	; slot15 = _env["backgroundMonsterHeadLaughImage"]
		247	[  0]	ISF  	   		15	; if not backgroundMonsterHeadLaughImage
		248	[  0]	JMP  	 16		1	; 	goto 250
		249	[  0]	GGET 	 14		30	; slot14 = _env["backgroundMonsterHeadLaughImage"]
		250	[  0]	KSHORT	 15		0	; slot15 = 0
		251	[  0]	ISF  	   		0	; if not slot0
		252	[  0]	JMP  	 16		7	; 	goto 260
		253	[  0]	TGETS	 16	0	29	; slot16 = slot0.monster
		254	[  0]	ISF  	   		16	; if not <unknown table>.monster
		255	[  0]	JMP  	 17		4	; 	goto 260
		256	[  0]	TGETS	 16	0	29	; slot16 = slot0.monster
		257	[  0]	TGETS	 16	16	28	; slot16 = <unknown table>.monster.headIdle
		258	[  0]	IST  	   		16	; if <unknown table>.monster.headIdle
		259	[  0]	JMP  	 17		1	; 	goto 261
		260	[  0]	TDUP 	 16		27	; slot16 = copy table#k27
		261	[  0]	GGET 	 17		47	; slot17 = _env["math"]
		262	[  0]	TGETS	 17	17	26	; slot17 = math.max
		263	[  0]	KSHORT	 19		0	; slot19 = 0
		264	[  0]	TGETS	 20	16	25	; slot20 = slot16.ampPx
		265	[  0]	IST  	   		20	; if <unknown table>.ampPx
		266	[  0]	JMP  	 21		1	; 	goto 268
		267	[  0]	KSHORT	 20		1	; slot20 = 1
		268	[  0]	CALL 	 17	2	3	; slot17 = math.max(slot18, slot19)
		269	[  0]	TGETS	 18	16	24	; slot18 = slot16.freq
		270	[  0]	IST  	   		18	; if <unknown table>.freq
		271	[  0]	JMP  	 19		1	; 	goto 273
		272	[  0]	KNUM 	 18		0	; slot18 = 0.5
		273	[  0]	KSHORT	 19		0	; slot19 = 0
		274	[  0]	ISGE 	 19		17	; if slot19 >= math.max
		275	[  0]	JMP  	 19		58	; 	goto 334
		276	[  0]	KSHORT	 19		0	; slot19 = 0
		277	[  0]	ISGE 	 19		18	; if slot19 >= slot18
		278	[  0]	JMP  	 19		55	; 	goto 334
		279	[  0]	GGET 	 19		33	; slot19 = _env["monsterHeadAnim"]
		280	[  0]	ISF  	   		19	; if not monsterHeadAnim
		281	[  0]	JMP  	 20		34	; 	goto 316
		282	[  0]	GGET 	 19		33	; slot19 = _env["monsterHeadAnim"]
		283	[  0]	TGETS	 19	19	32	; slot19 = monsterHeadAnim.mode
		284	[  0]	ISNES	 19		31	; if monsterHeadAnim.mode ~= "laugh"
		285	[  0]	JMP  	 19		30	; 	goto 316
		286	[  0]	GGET 	 19		47	; slot19 = _env["math"]
		287	[  0]	TGETS	 19	19	46	; slot19 = math.floor
		288	[  0]	GGET 	 21		47	; slot21 = _env["math"]
		289	[  0]	TGETS	 21	21	23	; slot21 = math.sin
		290	[  0]	GGET 	 23		47	; slot23 = _env["math"]
		291	[  0]	TGETS	 23	23	22	; slot23 = math.pi
		292	[  0]	MULNV	 23	23	2	; slot23 = 2 * math.pi
		293	[  0]	GGET 	 24		33	; slot24 = _env["monsterHeadAnim"]
		294	[  0]	TGETS	 24	24	24	; slot24 = monsterHeadAnim.freq
		295	[  0]	IST  	   		24	; if monsterHeadAnim.freq
		296	[  0]	JMP  	 25		1	; 	goto 298
		297	[  0]	KSHORT	 24		12	; slot24 = 12
		298	[  0]	MULVV	 23	23	24	; slot23 = slot23 * slot24
		299	[  0]	GGET 	 24		33	; slot24 = _env["monsterHeadAnim"]
		300	[  0]	TGETS	 24	24	21	; slot24 = monsterHeadAnim.t
		301	[  0]	IST  	   		24	; if monsterHeadAnim.t
		302	[  0]	JMP  	 25		1	; 	goto 304
		303	[  0]	KSHORT	 24		0	; slot24 = 0
		304	[  0]	MULVV	 23	23	24	; slot23 = slot23 * slot24
		305	[  0]	CALL 	 21	2	2	; slot21 = math.sin(love.graphics.draw)
		306	[  0]	GGET 	 22		33	; slot22 = _env["monsterHeadAnim"]
		307	[  0]	TGETS	 22	22	25	; slot22 = monsterHeadAnim.ampPx
		308	[  0]	IST  	   		22	; if monsterHeadAnim.ampPx
		309	[  0]	JMP  	 23		1	; 	goto 311
		310	[  0]	KSHORT	 22		2	; slot22 = 2
		311	[  0]	MULVV	 21	21	22	; slot21 = math.sin * slot22
		312	[  0]	ADDVN	 21	21	0	; slot21 = slot21 + 0.5
		313	[  0]	CALL 	 19	2	2	; slot19 = math.floor(slot20)
		314	[  0]	MOV  	 15		19	; slot15 = math.floor
		315	[  0]	JMP  	 19		18	; 	goto 334
		316	[  0]	GGET 	 19		47	; slot19 = _env["math"]
		317	[  0]	TGETS	 19	19	46	; slot19 = math.floor
		318	[  0]	GGET 	 21		47	; slot21 = _env["math"]
		319	[  0]	TGETS	 21	21	23	; slot21 = math.sin
		320	[  0]	GGET 	 23		47	; slot23 = _env["math"]
		321	[  0]	TGETS	 23	23	22	; slot23 = math.pi
		322	[  0]	MULNV	 23	23	2	; slot23 = 2 * math.pi
		323	[  0]	MULVV	 23	23	18	; slot23 = slot23 * slot18
		324	[  0]	GGET 	 24		20	; slot24 = _env["monsterHeadIdleT"]
		325	[  0]	IST  	   		24	; if monsterHeadIdleT
		326	[  0]	JMP  	 25		1	; 	goto 328
		327	[  0]	KSHORT	 24		0	; slot24 = 0
		328	[  0]	MULVV	 23	23	24	; slot23 = slot23 * slot24
		329	[  0]	CALL 	 21	2	2	; slot21 = math.sin(slot22)
		330	[  0]	MULVV	 21	21	17	; slot21 = math.sin * math.max
		331	[  0]	ADDVN	 21	21	0	; slot21 = slot21 + 0.5
		332	[  0]	CALL 	 19	2	2	; slot19 = math.floor(slot20)
		333	[  0]	MOV  	 15		19	; slot15 = math.floor
		334	[  0]	UGET 	 19		1	; slot19 = uv1"unknwon"
		335	[  0]	GGET 	 21		19	; slot21 = _env["backgroundMonsterHeadShadowImage"]
		336	[  0]	GGET 	 22		47	; slot22 = _env["math"]
		337	[  0]	TGETS	 22	22	46	; slot22 = math.floor
		338	[  0]	ADDVN	 24	6	0	; slot24 = slot6 + 0.5
		339	[  0]	CALL 	 22	2	2	; slot22 = math.floor(slot23)
		340	[  0]	ADDVV	 22	22	11	; slot22 = math.floor + slot11
		341	[  0]	GGET 	 23		47	; slot23 = _env["math"]
		342	[  0]	TGETS	 23	23	46	; slot23 = math.floor
		343	[  0]	ADDVV	 25	8	7	; slot25 = slot8 + slot7
		344	[  0]	ADDVV	 25	25	9	; slot25 = slot25 + slot9
		345	[  0]	ADDVV	 25	25	15	; slot25 = slot25 + math.floor
		346	[  0]	ADDVN	 25	25	0	; slot25 = slot25 + 0.5
		347	[  0]	CALL 	 23	2	2	; slot23 = math.floor(slot24)
		348	[  0]	ADDVV	 23	23	12	; slot23 = math.floor + slot12
		349	[  0]	MOV  	 24		3	; slot24 = slot3
		350	[  0]	MOV  	 25		4	; slot25 = slot4
		351	[  0]	CALL 	 19	1	6	;  = uv1"unknown"(slot20, backgroundMonsterHeadShadowImage, slot22, slot23, slot24)
		352	[  0]	UGET 	 19		1	; slot19 = uv1"unknwon"
		353	[  0]	MOV  	 21		14	; slot21 = backgroundMonsterHeadLaughImage
		354	[  0]	GGET 	 22		47	; slot22 = _env["math"]
		355	[  0]	TGETS	 22	22	46	; slot22 = math.floor
		356	[  0]	ADDVN	 24	6	0	; slot24 = slot6 + 0.5
		357	[  0]	CALL 	 22	2	2	; slot22 = math.floor(slot23)
		358	[  0]	ADDVV	 22	22	11	; slot22 = math.floor + slot11
		359	[  0]	GGET 	 23		47	; slot23 = _env["math"]
		360	[  0]	TGETS	 23	23	46	; slot23 = math.floor
		361	[  0]	ADDVV	 25	8	7	; slot25 = slot8 + slot7
		362	[  0]	ADDVV	 25	25	9	; slot25 = slot25 + slot9
		363	[  0]	ADDVV	 25	25	15	; slot25 = slot25 + math.floor
		364	[  0]	ADDVN	 25	25	0	; slot25 = slot25 + 0.5
		365	[  0]	CALL 	 23	2	2	; slot23 = math.floor(slot24)
		366	[  0]	ADDVV	 23	23	12	; slot23 = math.floor + slot12
		367	[  0]	MOV  	 24		3	; slot24 = slot3
		368	[  0]	MOV  	 25		4	; slot25 = slot4
		369	[  0]	CALL 	 19	1	6	;  = uv1"unknown"(slot20, backgroundMonsterHeadLaughImage, slot22, slot23, slot24)
		370	[  0]	UGET 	 14		1	; slot14 = uv1"unknwon"
		371	[  0]	GGET 	 16		18	; slot16 = _env["backgroundSlotLeftImage"]
		372	[  0]	GGET 	 17		47	; slot17 = _env["math"]
		373	[  0]	TGETS	 17	17	46	; slot17 = math.floor
		374	[  0]	ADDVN	 19	6	0	; slot19 = slot6 + 0.5
		375	[  0]	CALL 	 17	2	2	; slot17 = math.floor(slot18)
		376	[  0]	ADDVV	 17	17	11	; slot17 = math.floor + slot11
		377	[  0]	GGET 	 18		47	; slot18 = _env["math"]
		378	[  0]	TGETS	 18	18	46	; slot18 = math.floor
		379	[  0]	ADDVV	 20	8	7	; slot20 = slot8 + slot7
		380	[  0]	ADDVV	 20	20	9	; slot20 = slot20 + slot9
		381	[  0]	ADDVN	 20	20	0	; slot20 = slot20 + 0.5
		382	[  0]	CALL 	 18	2	2	; slot18 = math.floor(slot19)
		383	[  0]	ADDVV	 18	18	12	; slot18 = math.floor + slot12
		384	[  0]	MOV  	 19		3	; slot19 = slot3
		385	[  0]	MOV  	 20		4	; slot20 = slot4
		386	[  0]	CALL 	 14	1	6	;  = uv1"unknown"(math.floor, backgroundSlotLeftImage, slot17, slot18, slot19)
		387	[  0]	GGET 	 14		50	; slot14 = _env["slotBgSquash"]
		388	[  0]	ISF  	   		14	; if not slotBgSquash
		389	[  0]	JMP  	 15		4	; 	goto 394
		390	[  0]	GGET 	 14		50	; slot14 = _env["slotBgSquash"]
		391	[  0]	TGETS	 14	14	49	; slot14 = slotBgSquash.sx
		392	[  0]	IST  	   		14	; if slotBgSquash.sx
		393	[  0]	JMP  	 15		1	; 	goto 395
		394	[  0]	KSHORT	 14		1	; slot14 = 1
		395	[  0]	GGET 	 15		50	; slot15 = _env["slotBgSquash"]
		396	[  0]	ISF  	   		15	; if not slotBgSquash
		397	[  0]	JMP  	 16		4	; 	goto 402
		398	[  0]	GGET 	 15		50	; slot15 = _env["slotBgSquash"]
		399	[  0]	TGETS	 15	15	48	; slot15 = slotBgSquash.sy
		400	[  0]	IST  	   		15	; if slotBgSquash.sy
		401	[  0]	JMP  	 16		1	; 	goto 403
		402	[  0]	KSHORT	 15		1	; slot15 = 1
		403	[  0]	GGET 	 16		47	; slot16 = _env["math"]
		404	[  0]	TGETS	 16	16	46	; slot16 = math.floor
		405	[  0]	ADDVN	 18	6	0	; slot18 = slot6 + 0.5
		406	[  0]	CALL 	 16	2	2	; slot16 = math.floor(slot17)
		407	[  0]	ADDVV	 16	16	11	; slot16 = math.floor + slot11
		408	[  0]	GGET 	 17		47	; slot17 = _env["math"]
		409	[  0]	TGETS	 17	17	46	; slot17 = math.floor
		410	[  0]	ADDVV	 19	8	7	; slot19 = slot8 + slot7
		411	[  0]	ADDVV	 19	19	9	; slot19 = slot19 + slot9
		412	[  0]	ADDVN	 19	19	0	; slot19 = slot19 + 0.5
		413	[  0]	CALL 	 17	2	2	; slot17 = math.floor(slot18)
		414	[  0]	ADDVV	 17	17	12	; slot17 = math.floor + slot12
		415	[  0]	MULVN	 18	3	0	; slot18 = slot3 * 0.5
		416	[  0]	MULVN	 19	4	0	; slot19 = slot4 * 0.5
		417	[  0]	ISF  	   		5	; if not <unknown table>.slotPanel
		418	[  0]	JMP  	 20		28	; 	goto 447
		419	[  0]	ISF  	   		0	; if not slot0
		420	[  0]	JMP  	 20		7	; 	goto 428
		421	[  0]	TGETS	 20	0	55	; slot20 = slot0.slot
		422	[  0]	ISF  	   		20	; if not <unknown table>.slot
		423	[  0]	JMP  	 21		4	; 	goto 428
		424	[  0]	TGETS	 20	0	55	; slot20 = slot0.slot
		425	[  0]	TGETS	 20	20	45	; slot20 = <unknown table>.slot.lineHitSquash
		426	[  0]	IST  	   		20	; if <unknown table>.slot.lineHitSquash
		427	[  0]	JMP  	 21		1	; 	goto 429
		428	[  0]	TNEW 	 20		0	; slot20 = new table( array: 0, dict: 1)
		429	[  0]	TGETS	 21	5	58	; slot21 = <unknown table>.slotPanel.x
		430	[  0]	TGETS	 22	5	44	; slot22 = <unknown table>.slotPanel.w
		431	[  0]	MULVN	 22	22	0	; slot22 = <unknown table>.slotPanel.w * 0.5
		432	[  0]	ADDVV	 21	21	22	; slot21 = <unknown table>.slotPanel.x + slot22
		433	[  0]	TGETS	 22	20	43	; slot22 = slot20.anchorOffsetX
		434	[  0]	IST  	   		22	; if <unknown table>.anchorOffsetX
		435	[  0]	JMP  	 23		1	; 	goto 437
		436	[  0]	KSHORT	 22		0	; slot22 = 0
		437	[  0]	ADDVV	 18	21	22	; slot18 = slot21 + slot22
		438	[  0]	TGETS	 21	5	57	; slot21 = <unknown table>.slotPanel.y
		439	[  0]	TGETS	 22	5	42	; slot22 = <unknown table>.slotPanel.h
		440	[  0]	MULVN	 22	22	0	; slot22 = <unknown table>.slotPanel.h * 0.5
		441	[  0]	ADDVV	 21	21	22	; slot21 = <unknown table>.slotPanel.y + slot22
		442	[  0]	TGETS	 22	20	41	; slot22 = slot20.anchorOffsetY
		443	[  0]	IST  	   		22	; if <unknown table>.anchorOffsetY
		444	[  0]	JMP  	 23		1	; 	goto 446
		445	[  0]	KSHORT	 22		0	; slot22 = 0
		446	[  0]	ADDVV	 19	21	22	; slot19 = slot21 + slot22
		447	[  0]	GGET 	 20		17	; slot20 = _env["backgroundSlotShadowImage"]
		448	[  0]	ISF  	   		20	; if not backgroundSlotShadowImage
		449	[  0]	JMP  	 21		30	; 	goto 480
		450	[  0]	GGET 	 20		17	; slot20 = _env["backgroundSlotShadowImage"]
		451	[  0]	MOV  	 22		20	; slot22 = backgroundSlotShadowImage
		452	[  0]	TGETS	 20	20	39	; slot20 = backgroundSlotShadowImage.getWidth
		453	[  0]	CALL 	 20	2	2	; slot20 = backgroundSlotShadowImage.getWidth(slot21)
		454	[  0]	GGET 	 21		17	; slot21 = _env["backgroundSlotShadowImage"]
		455	[  0]	MOV  	 23		21	; slot23 = backgroundSlotShadowImage
		456	[  0]	TGETS	 21	21	38	; slot21 = backgroundSlotShadowImage.getHeight
		457	[  0]	CALL 	 21	2	2	; slot21 = backgroundSlotShadowImage.getHeight(backgroundSlotShadowImage)
		458	[  0]	KSHORT	 22		0	; slot22 = 0
		459	[  0]	ISGE 	 22		20	; if slot22 >= backgroundSlotShadowImage.getWidth
		460	[  0]	JMP  	 22		19	; 	goto 480
		461	[  0]	KSHORT	 22		0	; slot22 = 0
		462	[  0]	ISGE 	 22		21	; if slot22 >= backgroundSlotShadowImage.getHeight
		463	[  0]	JMP  	 22		16	; 	goto 480
		464	[  0]	GGET 	 22		67	; slot22 = _env["love"]
		465	[  0]	TGETS	 22	22	66	; slot22 = love.graphics
		466	[  0]	TGETS	 22	22	37	; slot22 = love.graphics.draw
		467	[  0]	GGET 	 24		17	; slot24 = _env["backgroundSlotShadowImage"]
		468	[  0]	SUBNV	 25	14	1	; slot25 = 1 - slot14
		469	[  0]	MULVV	 25	25	18	; slot25 = slot25 * slot18
		470	[  0]	ADDVV	 25	16	25	; slot25 = slot16 + slot25
		471	[  0]	SUBNV	 26	15	1	; slot26 = 1 - slot15
		472	[  0]	MULVV	 26	26	19	; slot26 = slot26 * slot19
		473	[  0]	ADDVV	 26	17	26	; slot26 = slot17 + slot26
		474	[  0]	KSHORT	 27		0	; slot27 = 0
		475	[  0]	DIVVV	 28	3	20	; slot28 = slot3 / backgroundSlotShadowImage.getWidth
		476	[  0]	MULVV	 28	28	14	; slot28 = slot28 * slot14
		477	[  0]	DIVVV	 29	4	21	; slot29 = slot4 / backgroundSlotShadowImage.getHeight
		478	[  0]	MULVV	 29	29	15	; slot29 = slot29 * slot15
		479	[  0]	CALL 	 22	1	7	;  = love.graphics.draw(backgroundSlotShadowImage, backgroundSlotShadowImage, slot25, slot26, slot27, slot28)
		480	[  0]	GGET 	 14		16	; slot14 = _env["loadedAssets"]
		481	[  0]	ISF  	   		14	; if not loadedAssets
		482	[  0]	JMP  	 15		7	; 	goto 490
		483	[  0]	GGET 	 14		16	; slot14 = _env["loadedAssets"]
		484	[  0]	TGETS	 14	14	15	; slot14 = loadedAssets.ui
		485	[  0]	ISF  	   		14	; if not loadedAssets.ui
		486	[  0]	JMP  	 15		3	; 	goto 490
		487	[  0]	GGET 	 14		16	; slot14 = _env["loadedAssets"]
		488	[  0]	TGETS	 14	14	15	; slot14 = loadedAssets.ui
		489	[  0]	TGETS	 14	14	14	; slot14 = loadedAssets.ui.spinstick
		490	[  0]	ISF  	   		14	; if not loadedAssets.ui.spinstick
		491	[  0]	JMP  	 15		89	; 	goto 581
		492	[  0]	TGETS	 15	14	13	; slot15 = loadedAssets.ui.spinstick.image
		493	[  0]	ISF  	   		15	; if not loadedAssets.ui.spinstick.image
		494	[  0]	JMP  	 16		86	; 	goto 581
		495	[  0]	TGETS	 15	14	12	; slot15 = loadedAssets.ui.spinstick.quads
		496	[  0]	ISF  	   		15	; if not loadedAssets.ui.spinstick.quads
		497	[  0]	JMP  	 16		83	; 	goto 581
		498	[  0]	TGETS	 15	14	12	; slot15 = loadedAssets.ui.spinstick.quads
		499	[  0]	TGETB	 15	15	1	; slot15 = loadedAssets.ui.spinstick.quads[1]
		500	[  0]	ISF  	   		15	; if not slot15
		501	[  0]	JMP  	 16		79	; 	goto 581
		502	[  0]	ISF  	   		5	; if not <unknown table>.slotPanel
		503	[  0]	JMP  	 15		77	; 	goto 581
		504	[  0]	ISF  	   		0	; if not slot0
		505	[  0]	JMP  	 15		3	; 	goto 509
		506	[  0]	TGETS	 15	0	14	; slot15 = slot0.spinstick
		507	[  0]	IST  	   		15	; if <unknown table>.spinstick
		508	[  0]	JMP  	 16		1	; 	goto 510
		509	[  0]	TNEW 	 15		0	; slot15 = new table( array: 0, dict: 1)
		510	[  0]	TGETS	 16	5	58	; slot16 = <unknown table>.slotPanel.x
		511	[  0]	TGETS	 17	5	44	; slot17 = <unknown table>.slotPanel.w
		512	[  0]	ADDVV	 16	16	17	; slot16 = <unknown table>.slotPanel.x + <unknown table>.slotPanel.w
		513	[  0]	TGETS	 17	15	11	; slot17 = slot15.offsetX
		514	[  0]	IST  	   		17	; if <unknown table>.offsetX
		515	[  0]	JMP  	 18		1	; 	goto 517
		516	[  0]	KSHORT	 17		4	; slot17 = 4
		517	[  0]	ADDVV	 16	16	17	; slot16 = slot16 + slot17
		518	[  0]	TGETS	 17	5	57	; slot17 = <unknown table>.slotPanel.y
		519	[  0]	TGETS	 18	15	10	; slot18 = slot15.offsetY
		520	[  0]	IST  	   		18	; if <unknown table>.offsetY
		521	[  0]	JMP  	 19		1	; 	goto 523
		522	[  0]	KSHORT	 18		0	; slot18 = 0
		523	[  0]	ADDVV	 17	17	18	; slot17 = <unknown table>.slotPanel.y + slot18
		524	[  0]	GGET 	 18		47	; slot18 = _env["math"]
		525	[  0]	TGETS	 18	18	46	; slot18 = math.floor
		526	[  0]	ADDVV	 20	16	6	; slot20 = slot16 + slot6
		527	[  0]	ADDVV	 20	20	11	; slot20 = slot20 + slot11
		528	[  0]	ADDVN	 20	20	0	; slot20 = slot20 + 0.5
		529	[  0]	CALL 	 18	2	2	; slot18 = math.floor(slot19)
		530	[  0]	GGET 	 19		47	; slot19 = _env["math"]
		531	[  0]	TGETS	 19	19	46	; slot19 = math.floor
		532	[  0]	ADDVV	 21	17	8	; slot21 = slot17 + slot8
		533	[  0]	ADDVV	 21	21	7	; slot21 = slot21 + slot7
		534	[  0]	ADDVV	 21	21	9	; slot21 = slot21 + slot9
		535	[  0]	ADDVV	 21	21	12	; slot21 = slot21 + slot12
		536	[  0]	ADDVN	 21	21	0	; slot21 = slot21 + 0.5
		537	[  0]	CALL 	 19	2	2	; slot19 = math.floor(slot20)
		538	[  0]	TGETS	 20	14	9	; slot20 = loadedAssets.ui.spinstick.frames
		539	[  0]	IST  	   		20	; if loadedAssets.ui.spinstick.frames
		540	[  0]	JMP  	 21		2	; 	goto 543
		541	[  0]	TGETS	 20	14	12	; slot20 = loadedAssets.ui.spinstick.quads
		542	[  0]	LEN  	 20		20	; slot20 = #loadedAssets.ui.spinstick.quads
		543	[  0]	KSHORT	 21		1	; slot21 = 1
		544	[  0]	GGET 	 22		8	; slot22 = _env["spinStickAnim"]
		545	[  0]	ISF  	   		22	; if not spinStickAnim
		546	[  0]	JMP  	 23		21	; 	goto 568
		547	[  0]	GGET 	 22		8	; slot22 = _env["spinStickAnim"]
		548	[  0]	TGETS	 22	22	7	; slot22 = spinStickAnim.playing
		549	[  0]	ISF  	   		22	; if not spinStickAnim.playing
		550	[  0]	JMP  	 23		17	; 	goto 568
		551	[  0]	KSHORT	 22		1	; slot22 = 1
		552	[  0]	ISGE 	 22		20	; if slot22 >= slot20
		553	[  0]	JMP  	 22		14	; 	goto 568
		554	[  0]	GGET 	 22		47	; slot22 = _env["math"]
		555	[  0]	TGETS	 22	22	26	; slot22 = math.max
		556	[  0]	KSHORT	 24		1	; slot24 = 1
		557	[  0]	GGET 	 25		47	; slot25 = _env["math"]
		558	[  0]	TGETS	 25	25	6	; slot25 = math.min
		559	[  0]	MOV  	 27		20	; slot27 = slot20
		560	[  0]	GGET 	 28		8	; slot28 = _env["spinStickAnim"]
		561	[  0]	TGETS	 28	28	5	; slot28 = spinStickAnim.frame
		562	[  0]	IST  	   		28	; if spinStickAnim.frame
		563	[  0]	JMP  	 29		1	; 	goto 565
		564	[  0]	KSHORT	 28		1	; slot28 = 1
		565	[  0]	CALL 	 25	0	3	; MULTRES = math.min(slot26, slot27)
		566	[  0]	CALLM	 22	2	1	; slot22 = math.max(backgroundSlotShadowImage, ...MULTRES)
		567	[  0]	MOV  	 21		22	; slot21 = math.max
		568	[  0]	GGET 	 22		67	; slot22 = _env["love"]
		569	[  0]	TGETS	 22	22	66	; slot22 = love.graphics
		570	[  0]	TGETS	 22	22	37	; slot22 = love.graphics.draw
		571	[  0]	TGETS	 24	14	13	; slot24 = loadedAssets.ui.spinstick.image
		572	[  0]	TGETS	 25	14	12	; slot25 = loadedAssets.ui.spinstick.quads
		573	[  0]	TGETV	 25	25	21	; slot25 = loadedAssets.ui.spinstick.quads[math.max]
		574	[  0]	IST  	   		25	; if slot25
		575	[  0]	JMP  	 26		2	; 	goto 578
		576	[  0]	TGETS	 25	14	12	; slot25 = loadedAssets.ui.spinstick.quads
		577	[  0]	TGETB	 25	25	1	; slot25 = loadedAssets.ui.spinstick.quads[1]
		578	[  0]	MOV  	 26		18	; slot26 = math.floor
		579	[  0]	MOV  	 27		19	; slot27 = math.floor
		580	[  0]	CALL 	 22	1	5	;  = love.graphics.draw(backgroundSlotShadowImage, loadedAssets.ui.spinstick.image, slot25, math.floor)
		581	[  0]	ISF  	   		1	; if not slot1
		582	[  0]	JMP  	 14		84	; 	goto 667
		583	[  0]	TGETS	 14	1	4	; slot14 = slot1.nudgeBtns
		584	[  0]	ISF  	   		14	; if not <unknown table>.nudgeBtns
		585	[  0]	JMP  	 15		81	; 	goto 667
		586	[  0]	GGET 	 14		16	; slot14 = _env["loadedAssets"]
		587	[  0]	ISF  	   		14	; if not loadedAssets
		588	[  0]	JMP  	 15		7	; 	goto 596
		589	[  0]	GGET 	 14		16	; slot14 = _env["loadedAssets"]
		590	[  0]	TGETS	 14	14	15	; slot14 = loadedAssets.ui
		591	[  0]	ISF  	   		14	; if not loadedAssets.ui
		592	[  0]	JMP  	 15		3	; 	goto 596
		593	[  0]	GGET 	 14		16	; slot14 = _env["loadedAssets"]
		594	[  0]	TGETS	 14	14	15	; slot14 = loadedAssets.ui
		595	[  0]	TGETS	 14	14	3	; slot14 = loadedAssets.ui.nudgeButton
		596	[  0]	GGET 	 15		16	; slot15 = _env["loadedAssets"]
		597	[  0]	ISF  	   		15	; if not loadedAssets
		598	[  0]	JMP  	 16		7	; 	goto 606
		599	[  0]	GGET 	 15		16	; slot15 = _env["loadedAssets"]
		600	[  0]	TGETS	 15	15	15	; slot15 = loadedAssets.ui
		601	[  0]	ISF  	   		15	; if not loadedAssets.ui
		602	[  0]	JMP  	 16		3	; 	goto 606
		603	[  0]	GGET 	 15		16	; slot15 = _env["loadedAssets"]
		604	[  0]	TGETS	 15	15	15	; slot15 = loadedAssets.ui
		605	[  0]	TGETS	 15	15	2	; slot15 = loadedAssets.ui.nudgeButtonQuads
		606	[  0]	ISF  	   		14	; if not loadedAssets.ui.nudgeButton
		607	[  0]	JMP  	 16		59	; 	goto 667
		608	[  0]	ISF  	   		15	; if not loadedAssets.ui.nudgeButtonQuads
		609	[  0]	JMP  	 16		57	; 	goto 667
		610	[  0]	TGETB	 16	15	1	; slot16 = loadedAssets.ui.nudgeButtonQuads[1]
		611	[  0]	ISF  	   		16	; if not slot16
		612	[  0]	JMP  	 17		54	; 	goto 667
		613	[  0]	GGET 	 16		47	; slot16 = _env["math"]
		614	[  0]	TGETS	 16	16	26	; slot16 = math.max
		615	[  0]	KSHORT	 18		1	; slot18 = 1
		616	[  0]	GGET 	 19		47	; slot19 = _env["math"]
		617	[  0]	TGETS	 19	19	46	; slot19 = math.floor
		618	[  0]	ISF  	   		0	; if not slot0
		619	[  0]	JMP  	 21		3	; 	goto 623
		620	[  0]	TGETS	 21	0	1	; slot21 = slot0.scale
		621	[  0]	IST  	   		21	; if <unknown table>.scale
		622	[  0]	JMP  	 22		1	; 	goto 624
		623	[  0]	KSHORT	 21		1	; slot21 = 1
		624	[  0]	ADDVN	 21	21	0	; slot21 = slot21 + 0.5
		625	[  0]	CALL 	 19	0	2	; MULTRES = math.floor(slot20)
		626	[  0]	CALLM	 16	2	1	; slot16 = math.max(slot17, ...MULTRES)
		627	[  0]	GGET 	 17		47	; slot17 = _env["math"]
		628	[  0]	TGETS	 17	17	46	; slot17 = math.floor
		629	[  0]	ADDVV	 19	6	11	; slot19 = slot6 + slot11
		630	[  0]	ADDVN	 19	19	0	; slot19 = slot19 + 0.5
		631	[  0]	CALL 	 17	2	2	; slot17 = math.floor(slot18)
		632	[  0]	GGET 	 18		47	; slot18 = _env["math"]
		633	[  0]	TGETS	 18	18	46	; slot18 = math.floor
		634	[  0]	ADDVV	 20	8	7	; slot20 = slot8 + slot7
		635	[  0]	ADDVV	 20	20	9	; slot20 = slot20 + slot9
		636	[  0]	ADDVV	 20	20	10	; slot20 = slot20 + slot10
		637	[  0]	ADDVV	 20	20	12	; slot20 = slot20 + slot12
		638	[  0]	ADDVN	 20	20	0	; slot20 = slot20 + 0.5
		639	[  0]	CALL 	 18	2	2	; slot18 = math.floor(slot19)
		640	[  0]	GGET 	 19		0	; slot19 = _env["ipairs"]
		641	[  0]	TGETS	 21	1	4	; slot21 = slot1.nudgeBtns
		642	[  0]	CALL 	 19	4	2	; slot19, slot20, slot21 = ipairs(slot20)
		643	[  0]	JMP  	 22		21	; 	goto 665
		644	[  0]	GGET 	 24		67	; slot24 = _env["love"]
		645	[  0]	TGETS	 24	24	66	; slot24 = love.graphics
		646	[  0]	TGETS	 24	24	37	; slot24 = love.graphics.draw
		647	[  0]	MOV  	 26		14	; slot26 = loadedAssets.ui.nudgeButton
		648	[  0]	TGETB	 27	15	1	; slot27 = loadedAssets.ui.nudgeButtonQuads[1]
		649	[  0]	GGET 	 28		47	; slot28 = _env["math"]
		650	[  0]	TGETS	 28	28	46	; slot28 = math.floor
		651	[  0]	TGETS	 30	23	58	; slot30 = backgroundSlotShadowImage.x
		652	[  0]	ADDVV	 30	30	17	; slot30 = backgroundSlotShadowImage.x + math.floor
		653	[  0]	ADDVN	 30	30	0	; slot30 = slot30 + 0.5
		654	[  0]	CALL 	 28	2	2	; slot28 = math.floor(slot29)
		655	[  0]	GGET 	 29		47	; slot29 = _env["math"]
		656	[  0]	TGETS	 29	29	46	; slot29 = math.floor
		657	[  0]	TGETS	 31	23	57	; slot31 = backgroundSlotShadowImage.y
		658	[  0]	ADDVV	 31	31	18	; slot31 = backgroundSlotShadowImage.y + math.floor
		659	[  0]	ADDVN	 31	31	0	; slot31 = slot31 + 0.5
		660	[  0]	CALL 	 29	2	2	; slot29 = math.floor(slot30)
		661	[  0]	KSHORT	 30		0	; slot30 = 0
		662	[  0]	MOV  	 31		16	; slot31 = math.max
		663	[  0]	MOV  	 32		16	; slot32 = math.max
		664	[  0]	CALL 	 24	1	8	;  = love.graphics.draw(slot25, loadedAssets.ui.nudgeButton, slot27, math.floor, math.floor, slot30, math.max)
		665	[  0]	ITERC	 22	3	3	; slot22, slot23, slot24 = ipairs, slot20, <unknown table>.nudgeBtns; slot22, slot23 = ipairs(slot20, <unknown table>.nudgeBtns)
		666	[  0]	ITERL	 22		-23	; <unknown table>.nudgeBtns = love.graphics.draw; if love.graphics.draw != nil goto 644
		667	[  0]	GGET 	 14		67	; slot14 = _env["love"]
		668	[  0]	TGETS	 14	14	66	; slot14 = love.graphics
		669	[  0]	TGETS	 14	14	65	; slot14 = love.graphics.setShader
		670	[  0]	CALL 	 14	1	1	;  = love.graphics.setShader()
		671	[  0]	RET0 	  0		1	; return
	274	[  0]	FNEW 	 62		32	; N/A:0-0: 1 args, 0 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		7	; 	goto 10
		  3	[  0]	TGETS	  1	0	15	; slot1 = slot0.tutorial
		  4	[  0]	ISF  	   		1	; if not <unknown table>.tutorial
		  5	[  0]	JMP  	  2		4	; 	goto 10
		  6	[  0]	TGETS	  1	0	15	; slot1 = slot0.tutorial
		  7	[  0]	TGETS	  1	1	14	; slot1 = <unknown table>.tutorial.goldFocus
		  8	[  0]	IST  	   		1	; if <unknown table>.tutorial.goldFocus
		  9	[  0]	JMP  	  2		1	; 	goto 11
		 10	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		 11	[  0]	ISF  	   		0	; if not slot0
		 12	[  0]	JMP  	  2		3	; 	goto 16
		 13	[  0]	TGETS	  2	0	13	; slot2 = slot0.goldDisplay
		 14	[  0]	IST  	   		2	; if <unknown table>.goldDisplay
		 15	[  0]	JMP  	  3		1	; 	goto 17
		 16	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		 17	[  0]	GGET 	  3		12	; slot3 = _env["tonumber"]
		 18	[  0]	TGETS	  5	1	11	; slot5 = slot1.w
		 19	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		 20	[  0]	IST  	   		3	; if tonumber
		 21	[  0]	JMP  	  4		1	; 	goto 23
		 22	[  0]	KSHORT	  3		70	; slot3 = 70
		 23	[  0]	GGET 	  4		12	; slot4 = _env["tonumber"]
		 24	[  0]	TGETS	  6	1	10	; slot6 = slot1.h
		 25	[  0]	CALL 	  4	2	2	; slot4 = tonumber(<unknown table>.w)
		 26	[  0]	IST  	   		4	; if tonumber
		 27	[  0]	JMP  	  5		1	; 	goto 29
		 28	[  0]	KSHORT	  4		22	; slot4 = 22
		 29	[  0]	GGET 	  5		12	; slot5 = _env["tonumber"]
		 30	[  0]	TGETS	  7	1	9	; slot7 = slot1.x
		 31	[  0]	CALL 	  5	2	2	; slot5 = tonumber(<unknown table>.h)
		 32	[  0]	GGET 	  6		12	; slot6 = _env["tonumber"]
		 33	[  0]	TGETS	  8	1	8	; slot8 = slot1.y
		 34	[  0]	CALL 	  6	2	2	; slot6 = tonumber(<unknown table>.x)
		 35	[  0]	IST  	   		5	; if tonumber
		 36	[  0]	JMP  	  7		16	; 	goto 53
		 37	[  0]	GGET 	  7		12	; slot7 = _env["tonumber"]
		 38	[  0]	TGETS	  9	2	9	; slot9 = slot2.x
		 39	[  0]	CALL 	  7	2	2	; slot7 = tonumber(<unknown table>.y)
		 40	[  0]	IST  	   		7	; if tonumber
		 41	[  0]	JMP  	  8		1	; 	goto 43
		 42	[  0]	KSHORT	  7		288	; slot7 = 288
		 43	[  0]	TGETS	  8	2	7	; slot8 = slot2.align
		 44	[  0]	IST  	   		8	; if <unknown table>.align
		 45	[  0]	JMP  	  9		1	; 	goto 47
		 46	[  0]	KSTR 	  8		6	; slot8 = "right"
		 47	[  0]	ISNES	  8		6	; if slot8 ~= "right"
		 48	[  0]	JMP  	  9		3	; 	goto 52
		 49	[  0]	SUBVV	  9	7	3	; slot9 = slot7 - slot3
		 50	[  0]	ISTC 	  5		9	; slot5 = slot9; if slot9
		 51	[  0]	JMP  	 10		1	; 	goto 53
		 52	[  0]	MOV  	  5		7	; slot5 = slot7
		 53	[  0]	IST  	   		6	; if tonumber
		 54	[  0]	JMP  	  7		7	; 	goto 62
		 55	[  0]	GGET 	  7		12	; slot7 = _env["tonumber"]
		 56	[  0]	TGETS	  9	2	8	; slot9 = slot2.y
		 57	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 58	[  0]	IST  	   		7	; if tonumber
		 59	[  0]	JMP  	  8		1	; 	goto 61
		 60	[  0]	KSHORT	  7		10	; slot7 = 10
		 61	[  0]	SUBVN	  6	7	0	; slot6 = slot7 - 6
		 62	[  0]	GGET 	  7		5	; slot7 = _env["love"]
		 63	[  0]	TGETS	  7	7	4	; slot7 = love.graphics
		 64	[  0]	TGETS	  7	7	3	; slot7 = love.graphics.rectangle
		 65	[  0]	KSTR 	  9		2	; slot9 = "fill"
		 66	[  0]	GGET 	 10		1	; slot10 = _env["math"]
		 67	[  0]	TGETS	 10	10	0	; slot10 = math.floor
		 68	[  0]	ADDVN	 12	5	1	; slot12 = slot5 + 0.5
		 69	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
		 70	[  0]	GGET 	 11		1	; slot11 = _env["math"]
		 71	[  0]	TGETS	 11	11	0	; slot11 = math.floor
		 72	[  0]	ADDVN	 13	6	1	; slot13 = slot6 + 0.5
		 73	[  0]	CALL 	 11	2	2	; slot11 = math.floor(slot12)
		 74	[  0]	GGET 	 12		1	; slot12 = _env["math"]
		 75	[  0]	TGETS	 12	12	0	; slot12 = math.floor
		 76	[  0]	ADDVN	 14	3	1	; slot14 = slot3 + 0.5
		 77	[  0]	CALL 	 12	2	2	; slot12 = math.floor(slot13)
		 78	[  0]	GGET 	 13		1	; slot13 = _env["math"]
		 79	[  0]	TGETS	 13	13	0	; slot13 = math.floor
		 80	[  0]	ADDVN	 15	4	1	; slot15 = slot4 + 0.5
		 81	[  0]	CALL 	 13	0	2	; MULTRES = math.floor(slot14)
		 82	[  0]	CALLM	  7	1	4	;  = love.graphics.rectangle(slot8, slot9, math.floor, math.floor, ...MULTRES)
		 83	[  0]	RET0 	  0		1	; return
	275	[  0]	FNEW 	 63		31	; N/A:0-0: 1 args, 1 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		10	; slot1 = _env["rawget"]
		  2	[  0]	GGET 	  3		9	; slot3 = _env["_G"]
		  3	[  0]	KSTR 	  4		8	; slot4 = "battlefield"
		  4	[  0]	CALL 	  1	2	3	; slot1 = rawget(slot2, _G)
		  5	[  0]	KPRI 	  2		0	; slot2 = nil
		  6	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  7	[  0]	TGETS	  3	3	7	; slot3 = uv0"unknown".step
		  8	[  0]	GGET 	  4		6	; slot4 = _env["STEP_PROMOTED_ARCHER"]
		  9	[  0]	ISNEV	  3		4	; if uv0"unknown".step ~= STEP_PROMOTED_ARCHER
		 10	[  0]	JMP  	  3		3	; 	goto 14
		 11	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 12	[  0]	TGETS	  2	3	5	; slot2 = uv0"unknown".promotedUnitRef
		 13	[  0]	JMP  	  3		22	; 	goto 36
		 14	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 15	[  0]	TGETS	  3	3	7	; slot3 = uv0"unknown".step
		 16	[  0]	GGET 	  4		4	; slot4 = _env["STEP_POST_CORE_ARCHER_WIN"]
		 17	[  0]	ISNEV	  3		4	; if uv0"unknown".step ~= STEP_POST_CORE_ARCHER_WIN
		 18	[  0]	JMP  	  3		17	; 	goto 36
		 19	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 20	[  0]	TGETS	  3	3	3	; slot3 = uv0"unknown".postCoreArcherRef
		 21	[  0]	ISTC 	  2		3	; slot2 = uv0"unknown".postCoreArcherRef; if uv0"unknown".postCoreArcherRef
		 22	[  0]	JMP  	  4		13	; 	goto 36
		 23	[  0]	ISFC 	  2		1	; slot2 = slot1; if not slot1
		 24	[  0]	JMP  	  3		11	; 	goto 36
		 25	[  0]	TGETS	  3	1	2	; slot3 = slot1.rosterUnits
		 26	[  0]	ISFC 	  2		3	; slot2 = <unknown table>.rosterUnits; if not <unknown table>.rosterUnits
		 27	[  0]	JMP  	  4		8	; 	goto 36
		 28	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 29	[  0]	TGETS	  3	3	1	; slot3 = uv0"unknown".postCoreArcherRosterIndex
		 30	[  0]	ISFC 	  2		3	; slot2 = uv0"unknown".postCoreArcherRosterIndex; if not uv0"unknown".postCoreArcherRosterIndex
		 31	[  0]	JMP  	  4		4	; 	goto 36
		 32	[  0]	TGETS	  3	1	2	; slot3 = slot1.rosterUnits
		 33	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 34	[  0]	TGETS	  4	4	1	; slot4 = uv0"unknown".postCoreArcherRosterIndex
		 35	[  0]	TGETV	  2	3	4	; slot2 = <unknown table>.rosterUnits[uv0"unknown".postCoreArcherRosterIndex]
		 36	[  0]	IST  	   		2	; if slot2
		 37	[  0]	JMP  	  3		13	; 	goto 51
		 38	[  0]	ISFC 	  2		1	; slot2 = slot1; if not slot1
		 39	[  0]	JMP  	  3		11	; 	goto 51
		 40	[  0]	TGETS	  3	1	2	; slot3 = slot1.rosterUnits
		 41	[  0]	ISFC 	  2		3	; slot2 = <unknown table>.rosterUnits; if not <unknown table>.rosterUnits
		 42	[  0]	JMP  	  4		8	; 	goto 51
		 43	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 44	[  0]	TGETS	  3	3	0	; slot3 = uv0"unknown".winRosterIndex
		 45	[  0]	ISFC 	  2		3	; slot2 = uv0"unknown".winRosterIndex; if not uv0"unknown".winRosterIndex
		 46	[  0]	JMP  	  4		4	; 	goto 51
		 47	[  0]	TGETS	  3	1	2	; slot3 = slot1.rosterUnits
		 48	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 49	[  0]	TGETS	  4	4	0	; slot4 = uv0"unknown".winRosterIndex
		 50	[  0]	TGETV	  2	3	4	; slot2 = <unknown table>.rosterUnits[uv0"unknown".winRosterIndex]
		 51	[  0]	MOV  	  3		1	; slot3 = slot1
		 52	[  0]	MOV  	  4		2	; slot4 = slot2
		 53	[  0]	RET  	  3		3	; return slot3, slot4
	276	[  0]	FNEW 	 64		30	; N/A:0-0: 1 args, 1 upvalues, 18 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	3	2	; slot1, slot2 = uv0"unknown"(slot2)
		  4	[  0]	ISF  	   		2	; if not slot2
		  5	[  0]	JMP  	  3		6	; 	goto 12
		  6	[  0]	TGETS	  3	2	15	; slot3 = slot2.x
		  7	[  0]	ISF  	   		3	; if not <unknown table>.x
		  8	[  0]	JMP  	  4		3	; 	goto 12
		  9	[  0]	TGETS	  3	2	14	; slot3 = slot2.y
		 10	[  0]	IST  	   		3	; if <unknown table>.y
		 11	[  0]	JMP  	  3		1	; 	goto 13
		 12	[  0]	RET0 	  0		1	; return
		 13	[  0]	GGET 	  3		13	; slot3 = _env["tonumber"]
		 14	[  0]	ISFC 	  5		0	; slot5 = slot0; if not slot0
		 15	[  0]	JMP  	  5		5	; 	goto 21
		 16	[  0]	TGETS	  5	0	12	; slot5 = slot0.battle
		 17	[  0]	ISF  	   		5	; if not <unknown table>.battle
		 18	[  0]	JMP  	  6		2	; 	goto 21
		 19	[  0]	TGETS	  5	0	12	; slot5 = slot0.battle
		 20	[  0]	TGETS	  5	5	11	; slot5 = <unknown table>.battle.allySize32
		 21	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		 22	[  0]	IST  	   		3	; if tonumber
		 23	[  0]	JMP  	  4		1	; 	goto 25
		 24	[  0]	KSHORT	  3		64	; slot3 = 64
		 25	[  0]	ISF  	   		0	; if not slot0
		 26	[  0]	JMP  	  4		7	; 	goto 34
		 27	[  0]	TGETS	  4	0	10	; slot4 = slot0.tutorial
		 28	[  0]	ISF  	   		4	; if not <unknown table>.tutorial
		 29	[  0]	JMP  	  5		4	; 	goto 34
		 30	[  0]	TGETS	  4	0	10	; slot4 = slot0.tutorial
		 31	[  0]	TGETS	  4	4	9	; slot4 = <unknown table>.tutorial.unitFocus
		 32	[  0]	IST  	   		4	; if <unknown table>.tutorial.unitFocus
		 33	[  0]	JMP  	  5		1	; 	goto 35
		 34	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 35	[  0]	GGET 	  5		13	; slot5 = _env["tonumber"]
		 36	[  0]	TGETS	  7	4	8	; slot7 = slot4.padX
		 37	[  0]	CALL 	  5	2	2	; slot5 = tonumber(slot6)
		 38	[  0]	IST  	   		5	; if tonumber
		 39	[  0]	JMP  	  6		1	; 	goto 41
		 40	[  0]	KSHORT	  5		8	; slot5 = 8
		 41	[  0]	GGET 	  6		13	; slot6 = _env["tonumber"]
		 42	[  0]	TGETS	  8	4	7	; slot8 = slot4.padY
		 43	[  0]	CALL 	  6	2	2	; slot6 = tonumber(<unknown table>.padX)
		 44	[  0]	IST  	   		6	; if tonumber
		 45	[  0]	JMP  	  7		1	; 	goto 47
		 46	[  0]	KSHORT	  6		6	; slot6 = 6
		 47	[  0]	GGET 	  7		6	; slot7 = _env["math"]
		 48	[  0]	TGETS	  7	7	5	; slot7 = math.floor
		 49	[  0]	TGETS	  9	2	15	; slot9 = slot2.x
		 50	[  0]	MULVN	 10	3	0	; slot10 = slot3 * 0.5
		 51	[  0]	SUBVV	  9	9	10	; slot9 = <unknown table>.x - slot10
		 52	[  0]	SUBVV	  9	9	5	; slot9 = slot9 - slot5
		 53	[  0]	ADDVN	  9	9	0	; slot9 = slot9 + 0.5
		 54	[  0]	CALL 	  7	2	2	; slot7 = math.floor(<unknown table>.padY)
		 55	[  0]	GGET 	  8		6	; slot8 = _env["math"]
		 56	[  0]	TGETS	  8	8	5	; slot8 = math.floor
		 57	[  0]	TGETS	 10	2	14	; slot10 = slot2.y
		 58	[  0]	MULVN	 11	3	0	; slot11 = slot3 * 0.5
		 59	[  0]	SUBVV	 10	10	11	; slot10 = <unknown table>.y - slot11
		 60	[  0]	SUBVV	 10	10	6	; slot10 = slot10 - slot6
		 61	[  0]	ADDVN	 10	10	0	; slot10 = slot10 + 0.5
		 62	[  0]	CALL 	  8	2	2	; slot8 = math.floor(slot9)
		 63	[  0]	GGET 	  9		6	; slot9 = _env["math"]
		 64	[  0]	TGETS	  9	9	5	; slot9 = math.floor
		 65	[  0]	MULVN	 11	5	1	; slot11 = slot5 * 2
		 66	[  0]	ADDVV	 11	3	11	; slot11 = slot3 + slot11
		 67	[  0]	ADDVN	 11	11	0	; slot11 = slot11 + 0.5
		 68	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		 69	[  0]	GGET 	 10		6	; slot10 = _env["math"]
		 70	[  0]	TGETS	 10	10	5	; slot10 = math.floor
		 71	[  0]	MULVN	 12	6	1	; slot12 = slot6 * 2
		 72	[  0]	ADDVV	 12	3	12	; slot12 = slot3 + slot12
		 73	[  0]	ADDVN	 12	12	0	; slot12 = slot12 + 0.5
		 74	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
		 75	[  0]	GGET 	 11		4	; slot11 = _env["love"]
		 76	[  0]	TGETS	 11	11	3	; slot11 = love.graphics
		 77	[  0]	TGETS	 11	11	2	; slot11 = love.graphics.setColor
		 78	[  0]	KSHORT	 13		1	; slot13 = 1
		 79	[  0]	KSHORT	 14		1	; slot14 = 1
		 80	[  0]	KSHORT	 15		1	; slot15 = 1
		 81	[  0]	KSHORT	 16		1	; slot16 = 1
		 82	[  0]	CALL 	 11	1	5	;  = love.graphics.setColor(slot12, slot13, slot14, slot15)
		 83	[  0]	GGET 	 11		4	; slot11 = _env["love"]
		 84	[  0]	TGETS	 11	11	3	; slot11 = love.graphics
		 85	[  0]	TGETS	 11	11	1	; slot11 = love.graphics.rectangle
		 86	[  0]	KSTR 	 13		0	; slot13 = "fill"
		 87	[  0]	MOV  	 14		7	; slot14 = math.floor
		 88	[  0]	MOV  	 15		8	; slot15 = math.floor
		 89	[  0]	MOV  	 16		9	; slot16 = math.floor
		 90	[  0]	MOV  	 17		10	; slot17 = math.floor
		 91	[  0]	CALL 	 11	1	6	;  = love.graphics.rectangle(slot12, slot13, math.floor, math.floor, math.floor)
		 92	[  0]	RET0 	  0		1	; return
	277	[  0]	FNEW 	 65		29	; N/A:0-0: 1 args, 0 upvalues, 32 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		36	; slot1 = _env["pcall"]
		  2	[  0]	GGET 	  3		35	; slot3 = _env["require"]
		  3	[  0]	KSTR 	  4		34	; slot4 = "src.ui.imprint"
		  4	[  0]	CALL 	  1	3	3	; slot1, slot2 = pcall(slot2, require)
		  5	[  0]	ISFC 	  3		1	; slot3 = slot1; if not slot1
		  6	[  0]	JMP  	  3		3	; 	goto 10
		  7	[  0]	ISFC 	  3		2	; slot3 = slot2; if not slot2
		  8	[  0]	JMP  	  3		1	; 	goto 10
		  9	[  0]	TGETS	  3	2	33	; slot3 = slot2._panelRect
		 10	[  0]	ISF  	   		3	; if not <unknown table>._panelRect
		 11	[  0]	JMP  	  4		41	; 	goto 53
		 12	[  0]	TGETS	  4	3	32	; slot4 = <unknown table>._panelRect.w
		 13	[  0]	ISF  	   		4	; if not <unknown table>._panelRect.w
		 14	[  0]	JMP  	  5		38	; 	goto 53
		 15	[  0]	TGETS	  4	3	31	; slot4 = <unknown table>._panelRect.h
		 16	[  0]	ISF  	   		4	; if not <unknown table>._panelRect.h
		 17	[  0]	JMP  	  5		35	; 	goto 53
		 18	[  0]	GGET 	  4		30	; slot4 = _env["love"]
		 19	[  0]	TGETS	  4	4	29	; slot4 = love.graphics
		 20	[  0]	TGETS	  4	4	28	; slot4 = love.graphics.setColor
		 21	[  0]	KSHORT	  6		1	; slot6 = 1
		 22	[  0]	KSHORT	  7		1	; slot7 = 1
		 23	[  0]	KSHORT	  8		1	; slot8 = 1
		 24	[  0]	KSHORT	  9		1	; slot9 = 1
		 25	[  0]	CALL 	  4	1	5	;  = love.graphics.setColor(slot5, slot6, slot7, slot8)
		 26	[  0]	GGET 	  4		30	; slot4 = _env["love"]
		 27	[  0]	TGETS	  4	4	29	; slot4 = love.graphics
		 28	[  0]	TGETS	  4	4	27	; slot4 = love.graphics.rectangle
		 29	[  0]	KSTR 	  6		26	; slot6 = "fill"
		 30	[  0]	GGET 	  7		25	; slot7 = _env["math"]
		 31	[  0]	TGETS	  7	7	24	; slot7 = math.floor
		 32	[  0]	TGETS	  9	3	23	; slot9 = <unknown table>._panelRect.x
		 33	[  0]	ADDVN	  9	9	0	; slot9 = <unknown table>._panelRect.x + 0.5
		 34	[  0]	CALL 	  7	2	2	; slot7 = math.floor(slot8)
		 35	[  0]	GGET 	  8		25	; slot8 = _env["math"]
		 36	[  0]	TGETS	  8	8	24	; slot8 = math.floor
		 37	[  0]	TGETS	 10	3	22	; slot10 = <unknown table>._panelRect.y
		 38	[  0]	ADDVN	 10	10	0	; slot10 = <unknown table>._panelRect.y + 0.5
		 39	[  0]	CALL 	  8	2	2	; slot8 = math.floor(slot9)
		 40	[  0]	GGET 	  9		25	; slot9 = _env["math"]
		 41	[  0]	TGETS	  9	9	24	; slot9 = math.floor
		 42	[  0]	TGETS	 11	3	32	; slot11 = <unknown table>._panelRect.w
		 43	[  0]	ADDVN	 11	11	0	; slot11 = <unknown table>._panelRect.w + 0.5
		 44	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		 45	[  0]	GGET 	 10		25	; slot10 = _env["math"]
		 46	[  0]	TGETS	 10	10	24	; slot10 = math.floor
		 47	[  0]	TGETS	 12	3	31	; slot12 = <unknown table>._panelRect.h
		 48	[  0]	ADDVN	 12	12	0	; slot12 = <unknown table>._panelRect.h + 0.5
		 49	[  0]	CALL 	 10	0	2	; MULTRES = math.floor(slot11)
		 50	[  0]	CALLM	  4	1	4	;  = love.graphics.rectangle(slot5, slot6, math.floor, math.floor, ...MULTRES)
		 51	[  0]	RET0 	  0		1	; return
		 52	[  0]	JMP  	  4		1	; 	goto 54
		 53	[  0]	RET0 	  0		1	; return
		 54	[  0]	ISF  	   		0	; if not slot0
		 55	[  0]	JMP  	  4		7	; 	goto 63
		 56	[  0]	TGETS	  4	0	21	; slot4 = slot0.virtual
		 57	[  0]	ISF  	   		4	; if not <unknown table>.virtual
		 58	[  0]	JMP  	  5		4	; 	goto 63
		 59	[  0]	TGETS	  4	0	21	; slot4 = slot0.virtual
		 60	[  0]	TGETS	  4	4	20	; slot4 = <unknown table>.virtual.W
		 61	[  0]	IST  	   		4	; if <unknown table>.virtual.W
		 62	[  0]	JMP  	  5		1	; 	goto 64
		 63	[  0]	KSHORT	  4		640	; slot4 = 640
		 64	[  0]	ISF  	   		0	; if not slot0
		 65	[  0]	JMP  	  5		7	; 	goto 73
		 66	[  0]	TGETS	  5	0	21	; slot5 = slot0.virtual
		 67	[  0]	ISF  	   		5	; if not <unknown table>.virtual
		 68	[  0]	JMP  	  6		4	; 	goto 73
		 69	[  0]	TGETS	  5	0	21	; slot5 = slot0.virtual
		 70	[  0]	TGETS	  5	5	19	; slot5 = <unknown table>.virtual.H
		 71	[  0]	IST  	   		5	; if <unknown table>.virtual.H
		 72	[  0]	JMP  	  6		1	; 	goto 74
		 73	[  0]	KSHORT	  5		360	; slot5 = 360
		 74	[  0]	ISF  	   		0	; if not slot0
		 75	[  0]	JMP  	  6		3	; 	goto 79
		 76	[  0]	TGETS	  6	0	18	; slot6 = slot0.imprintPanel
		 77	[  0]	IST  	   		6	; if <unknown table>.imprintPanel
		 78	[  0]	JMP  	  7		1	; 	goto 80
		 79	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		 80	[  0]	GGET 	  7		17	; slot7 = _env["tonumber"]
		 81	[  0]	ISFC 	  9		0	; slot9 = slot0; if not slot0
		 82	[  0]	JMP  	  9		1	; 	goto 84
		 83	[  0]	TGETS	  9	0	16	; slot9 = slot0.scale
		 84	[  0]	CALL 	  7	2	2	; slot7 = tonumber(math.floor)
		 85	[  0]	IST  	   		7	; if tonumber
		 86	[  0]	JMP  	  8		1	; 	goto 88
		 87	[  0]	KSHORT	  7		1	; slot7 = 1
		 88	[  0]	TGETS	  8	6	15	; slot8 = slot6.slotBg
		 89	[  0]	IST  	   		8	; if <unknown table>.slotBg
		 90	[  0]	JMP  	  9		1	; 	goto 92
		 91	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
		 92	[  0]	GGET 	  9		17	; slot9 = _env["tonumber"]
		 93	[  0]	TGETS	 11	6	14	; slot11 = slot6.tutorialFocusPad
		 94	[  0]	CALL 	  9	2	2	; slot9 = tonumber(math.floor)
		 95	[  0]	IST  	   		9	; if tonumber
		 96	[  0]	JMP  	 10		1	; 	goto 98
		 97	[  0]	MULNV	  9	7	1	; slot9 = 6 * slot7
		 98	[  0]	GGET 	 10		17	; slot10 = _env["tonumber"]
		 99	[  0]	TGETS	 12	6	13	; slot12 = slot6.slotX
		100	[  0]	CALL 	 10	2	2	; slot10 = tonumber(<unknown table>.tutorialFocusPad)
		101	[  0]	IST  	   		10	; if tonumber
		102	[  0]	JMP  	 11		1	; 	goto 104
		103	[  0]	KSHORT	 10		15	; slot10 = 15
		104	[  0]	MULVV	 10	10	7	; slot10 = slot10 * slot7
		105	[  0]	GGET 	 11		17	; slot11 = _env["tonumber"]
		106	[  0]	TGETS	 13	6	12	; slot13 = slot6.slotY
		107	[  0]	CALL 	 11	2	2	; slot11 = tonumber(<unknown table>.slotX)
		108	[  0]	IST  	   		11	; if tonumber
		109	[  0]	JMP  	 12		1	; 	goto 111
		110	[  0]	KSHORT	 11		96	; slot11 = 96
		111	[  0]	MULVV	 11	11	7	; slot11 = slot11 * slot7
		112	[  0]	GGET 	 12		17	; slot12 = _env["tonumber"]
		113	[  0]	TGETS	 14	8	11	; slot14 = slot8.offsetX
		114	[  0]	CALL 	 12	2	2	; slot12 = tonumber(<unknown table>.slotY)
		115	[  0]	IST  	   		12	; if tonumber
		116	[  0]	JMP  	 13		1	; 	goto 118
		117	[  0]	KSHORT	 12		0	; slot12 = 0
		118	[  0]	GGET 	 13		17	; slot13 = _env["tonumber"]
		119	[  0]	TGETS	 15	8	10	; slot15 = slot8.offsetY
		120	[  0]	CALL 	 13	2	2	; slot13 = tonumber(<unknown table>.offsetX)
		121	[  0]	IST  	   		13	; if tonumber
		122	[  0]	JMP  	 14		1	; 	goto 124
		123	[  0]	KSHORT	 13		0	; slot13 = 0
		124	[  0]	GGET 	 14		17	; slot14 = _env["tonumber"]
		125	[  0]	TGETS	 16	6	9	; slot16 = slot6.slotW
		126	[  0]	CALL 	 14	2	2	; slot14 = tonumber(<unknown table>.offsetY)
		127	[  0]	IST  	   		14	; if tonumber
		128	[  0]	JMP  	 15		1	; 	goto 130
		129	[  0]	KSHORT	 14		180	; slot14 = 180
		130	[  0]	MULVV	 14	14	7	; slot14 = slot14 * slot7
		131	[  0]	GGET 	 15		17	; slot15 = _env["tonumber"]
		132	[  0]	TGETS	 17	6	8	; slot17 = slot6.tutorialFocusSlotH
		133	[  0]	CALL 	 15	2	2	; slot15 = tonumber(<unknown table>.slotW)
		134	[  0]	IST  	   		15	; if tonumber
		135	[  0]	JMP  	 16		1	; 	goto 137
		136	[  0]	KSHORT	 15		40	; slot15 = 40
		137	[  0]	GGET 	 16		17	; slot16 = _env["tonumber"]
		138	[  0]	TGETS	 18	6	7	; slot18 = slot6.tutorialFocusRows
		139	[  0]	CALL 	 16	2	2	; slot16 = tonumber(<unknown table>.tutorialFocusSlotH)
		140	[  0]	IST  	   		16	; if tonumber
		141	[  0]	JMP  	 17		1	; 	goto 143
		142	[  0]	KSHORT	 16		5	; slot16 = 5
		143	[  0]	GGET 	 17		17	; slot17 = _env["tonumber"]
		144	[  0]	TGETS	 19	6	6	; slot19 = slot6.slotGap
		145	[  0]	CALL 	 17	2	2	; slot17 = tonumber(<unknown table>.tutorialFocusRows)
		146	[  0]	IST  	   		17	; if tonumber
		147	[  0]	JMP  	 18		1	; 	goto 149
		148	[  0]	KSHORT	 17		65535	; slot17 = 65535
		149	[  0]	MULVV	 18	15	16	; slot18 = slot15 * slot16
		150	[  0]	GGET 	 19		25	; slot19 = _env["math"]
		151	[  0]	TGETS	 19	19	5	; slot19 = math.max
		152	[  0]	KSHORT	 21		0	; slot21 = 0
		153	[  0]	SUBVN	 22	16	2	; slot22 = slot16 - 1
		154	[  0]	CALL 	 19	2	3	; slot19 = math.max(slot20, slot21)
		155	[  0]	MULVV	 19	17	19	; slot19 = slot17 * math.max
		156	[  0]	ADDVV	 18	18	19	; slot18 = slot18 + slot19
		157	[  0]	GGET 	 19		17	; slot19 = _env["tonumber"]
		158	[  0]	TGETS	 21	6	4	; slot21 = slot6.tutorialFocusX
		159	[  0]	CALL 	 19	2	2	; slot19 = tonumber(slot20)
		160	[  0]	IST  	   		19	; if tonumber
		161	[  0]	JMP  	 20		2	; 	goto 164
		162	[  0]	ADDVV	 19	10	12	; slot19 = slot10 + slot12
		163	[  0]	SUBVV	 19	19	9	; slot19 = slot19 - slot9
		164	[  0]	GGET 	 20		17	; slot20 = _env["tonumber"]
		165	[  0]	TGETS	 22	6	3	; slot22 = slot6.tutorialFocusY
		166	[  0]	CALL 	 20	2	2	; slot20 = tonumber(<unknown table>.tutorialFocusX)
		167	[  0]	IST  	   		20	; if tonumber
		168	[  0]	JMP  	 21		2	; 	goto 171
		169	[  0]	ADDVV	 20	11	13	; slot20 = slot11 + slot13
		170	[  0]	SUBVV	 20	20	9	; slot20 = slot20 - slot9
		171	[  0]	GGET 	 21		17	; slot21 = _env["tonumber"]
		172	[  0]	TGETS	 23	6	2	; slot23 = slot6.tutorialFocusW
		173	[  0]	CALL 	 21	2	2	; slot21 = tonumber(<unknown table>.tutorialFocusY)
		174	[  0]	IST  	   		21	; if tonumber
		175	[  0]	JMP  	 22		2	; 	goto 178
		176	[  0]	MULVN	 21	9	3	; slot21 = slot9 * 2
		177	[  0]	ADDVV	 21	14	21	; slot21 = slot14 + slot21
		178	[  0]	GGET 	 22		17	; slot22 = _env["tonumber"]
		179	[  0]	TGETS	 24	6	1	; slot24 = slot6.tutorialFocusH
		180	[  0]	CALL 	 22	2	2	; slot22 = tonumber(<unknown table>.tutorialFocusW)
		181	[  0]	IST  	   		22	; if tonumber
		182	[  0]	JMP  	 23		2	; 	goto 185
		183	[  0]	MULVN	 22	9	3	; slot22 = slot9 * 2
		184	[  0]	ADDVV	 22	18	22	; slot22 = slot18 + slot22
		185	[  0]	GGET 	 23		25	; slot23 = _env["math"]
		186	[  0]	TGETS	 23	23	5	; slot23 = math.max
		187	[  0]	KSHORT	 25		0	; slot25 = 0
		188	[  0]	GGET 	 26		25	; slot26 = _env["math"]
		189	[  0]	TGETS	 26	26	0	; slot26 = math.min
		190	[  0]	MOV  	 28		4	; slot28 = slot4
		191	[  0]	MOV  	 29		19	; slot29 = slot19
		192	[  0]	CALL 	 26	0	3	; MULTRES = math.min(slot27, slot28)
		193	[  0]	CALLM	 23	2	1	; slot23 = math.max(<unknown table>.tutorialFocusH, ...MULTRES)
		194	[  0]	MOV  	 19		23	; slot19 = math.max
		195	[  0]	GGET 	 23		25	; slot23 = _env["math"]
		196	[  0]	TGETS	 23	23	5	; slot23 = math.max
		197	[  0]	KSHORT	 25		0	; slot25 = 0
		198	[  0]	GGET 	 26		25	; slot26 = _env["math"]
		199	[  0]	TGETS	 26	26	0	; slot26 = math.min
		200	[  0]	MOV  	 28		5	; slot28 = slot5
		201	[  0]	MOV  	 29		20	; slot29 = slot20
		202	[  0]	CALL 	 26	0	3	; MULTRES = math.min(slot27, slot28)
		203	[  0]	CALLM	 23	2	1	; slot23 = math.max(<unknown table>.tutorialFocusH, ...MULTRES)
		204	[  0]	MOV  	 20		23	; slot20 = math.max
		205	[  0]	GGET 	 23		25	; slot23 = _env["math"]
		206	[  0]	TGETS	 23	23	5	; slot23 = math.max
		207	[  0]	KSHORT	 25		0	; slot25 = 0
		208	[  0]	GGET 	 26		25	; slot26 = _env["math"]
		209	[  0]	TGETS	 26	26	0	; slot26 = math.min
		210	[  0]	SUBVV	 28	4	19	; slot28 = slot4 - math.max
		211	[  0]	MOV  	 29		21	; slot29 = slot21
		212	[  0]	CALL 	 26	0	3	; MULTRES = math.min(slot27, slot28)
		213	[  0]	CALLM	 23	2	1	; slot23 = math.max(<unknown table>.tutorialFocusH, ...MULTRES)
		214	[  0]	MOV  	 21		23	; slot21 = math.max
		215	[  0]	GGET 	 23		25	; slot23 = _env["math"]
		216	[  0]	TGETS	 23	23	5	; slot23 = math.max
		217	[  0]	KSHORT	 25		0	; slot25 = 0
		218	[  0]	GGET 	 26		25	; slot26 = _env["math"]
		219	[  0]	TGETS	 26	26	0	; slot26 = math.min
		220	[  0]	SUBVV	 28	5	20	; slot28 = slot5 - math.max
		221	[  0]	MOV  	 29		22	; slot29 = slot22
		222	[  0]	CALL 	 26	0	3	; MULTRES = math.min(slot27, slot28)
		223	[  0]	CALLM	 23	2	1	; slot23 = math.max(<unknown table>.tutorialFocusH, ...MULTRES)
		224	[  0]	MOV  	 22		23	; slot22 = math.max
		225	[  0]	GGET 	 23		30	; slot23 = _env["love"]
		226	[  0]	TGETS	 23	23	29	; slot23 = love.graphics
		227	[  0]	TGETS	 23	23	28	; slot23 = love.graphics.setColor
		228	[  0]	KSHORT	 25		1	; slot25 = 1
		229	[  0]	KSHORT	 26		1	; slot26 = 1
		230	[  0]	KSHORT	 27		1	; slot27 = 1
		231	[  0]	KSHORT	 28		1	; slot28 = 1
		232	[  0]	CALL 	 23	1	5	;  = love.graphics.setColor(<unknown table>.tutorialFocusH, slot25, slot26, slot27)
		233	[  0]	GGET 	 23		30	; slot23 = _env["love"]
		234	[  0]	TGETS	 23	23	29	; slot23 = love.graphics
		235	[  0]	TGETS	 23	23	27	; slot23 = love.graphics.rectangle
		236	[  0]	KSTR 	 25		26	; slot25 = "fill"
		237	[  0]	GGET 	 26		25	; slot26 = _env["math"]
		238	[  0]	TGETS	 26	26	24	; slot26 = math.floor
		239	[  0]	ADDVN	 28	19	0	; slot28 = math.max + 0.5
		240	[  0]	CALL 	 26	2	2	; slot26 = math.floor(slot27)
		241	[  0]	GGET 	 27		25	; slot27 = _env["math"]
		242	[  0]	TGETS	 27	27	24	; slot27 = math.floor
		243	[  0]	ADDVN	 29	20	0	; slot29 = math.max + 0.5
		244	[  0]	CALL 	 27	2	2	; slot27 = math.floor(slot28)
		245	[  0]	GGET 	 28		25	; slot28 = _env["math"]
		246	[  0]	TGETS	 28	28	24	; slot28 = math.floor
		247	[  0]	ADDVN	 30	21	0	; slot30 = math.max + 0.5
		248	[  0]	CALL 	 28	2	2	; slot28 = math.floor(slot29)
		249	[  0]	GGET 	 29		25	; slot29 = _env["math"]
		250	[  0]	TGETS	 29	29	24	; slot29 = math.floor
		251	[  0]	ADDVN	 31	22	0	; slot31 = math.max + 0.5
		252	[  0]	CALL 	 29	0	2	; MULTRES = math.floor(slot30)
		253	[  0]	CALLM	 23	1	4	;  = love.graphics.rectangle(<unknown table>.tutorialFocusH, slot25, math.floor, math.floor, ...MULTRES)
		254	[  0]	RET0 	  0		1	; return
	278	[  0]	FNEW 	 66		28	; N/A:0-0: 2 args, 0 upvalues, 29 slots
		
		;;;; constant tables ;;;;
		ktable#1 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		37	; slot2 = _env["rawget"]
		  2	[  0]	GGET 	  4		36	; slot4 = _env["_G"]
		  3	[  0]	KSTR 	  5		35	; slot5 = "battlefield"
		  4	[  0]	CALL 	  2	2	3	; slot2 = rawget(slot3, _G)
		  5	[  0]	GGET 	  3		37	; slot3 = _env["rawget"]
		  6	[  0]	GGET 	  5		36	; slot5 = _env["_G"]
		  7	[  0]	KSTR 	  6		34	; slot6 = "loadedAssets"
		  8	[  0]	CALL 	  3	2	3	; slot3 = rawget(_G, _G)
		  9	[  0]	ISFC 	  4		1	; slot4 = slot1; if not slot1
		 10	[  0]	JMP  	  4		1	; 	goto 12
		 11	[  0]	TGETS	  4	1	33	; slot4 = slot1.right
		 12	[  0]	ISFC 	  5		2	; slot5 = slot2; if not slot2
		 13	[  0]	JMP  	  5		1	; 	goto 15
		 14	[  0]	TGETS	  5	2	32	; slot5 = slot2.waveTimer
		 15	[  0]	ISF  	   		2	; if not slot2
		 16	[  0]	JMP  	  6		9	; 	goto 26
		 17	[  0]	ISF  	   		3	; if not slot3
		 18	[  0]	JMP  	  6		7	; 	goto 26
		 19	[  0]	TGETS	  6	3	31	; slot6 = slot3.ui
		 20	[  0]	ISF  	   		6	; if not <unknown table>.ui
		 21	[  0]	JMP  	  7		4	; 	goto 26
		 22	[  0]	ISF  	   		4	; if not <unknown table>.right
		 23	[  0]	JMP  	  6		2	; 	goto 26
		 24	[  0]	IST  	   		5	; if <unknown table>.waveTimer
		 25	[  0]	JMP  	  6		2	; 	goto 28
		 26	[  0]	KPRI 	  6		0	; slot6 = nil
		 27	[  0]	RET1 	  6		2	; return slot6
		 28	[  0]	TGETS	  6	5	30	; slot6 = <unknown table>.waveTimer.t
		 29	[  0]	IST  	   		6	; if <unknown table>.waveTimer.t
		 30	[  0]	JMP  	  7		1	; 	goto 32
		 31	[  0]	KSHORT	  6		0	; slot6 = 0
		 32	[  0]	TGETS	  7	5	29	; slot7 = <unknown table>.waveTimer.dur
		 33	[  0]	IST  	   		7	; if <unknown table>.waveTimer.dur
		 34	[  0]	JMP  	  8		1	; 	goto 36
		 35	[  0]	KSHORT	  7		0	; slot7 = 0
		 36	[  0]	ISLE 	  7		6	; if slot7 <= slot6
		 37	[  0]	JMP  	  6		5	; 	goto 43
		 38	[  0]	TGETS	  6	5	28	; slot6 = <unknown table>.waveTimer.state
		 39	[  0]	ISEQS	  6		27	; if <unknown table>.waveTimer.state == "fading"
		 40	[  0]	JMP  	  6		2	; 	goto 43
		 41	[  0]	KPRI 	  6		1	; slot6 = false
		 42	[  0]	JMP  	  7		1	; 	goto 44
		 43	[  0]	KPRI 	  6		2	; slot6 = true
		 44	[  0]	ISF  	   		6	; if not slot6
		 45	[  0]	JMP  	  7		8	; 	goto 54
		 46	[  0]	TGETS	  7	3	31	; slot7 = slot3.ui
		 47	[  0]	TGETS	  7	7	26	; slot7 = <unknown table>.ui.battleReadyOpen
		 48	[  0]	IST  	   		7	; if <unknown table>.ui.battleReadyOpen
		 49	[  0]	JMP  	  8		10	; 	goto 60
		 50	[  0]	TGETS	  7	3	31	; slot7 = slot3.ui
		 51	[  0]	TGETS	  7	7	25	; slot7 = <unknown table>.ui.battleReadyClosed
		 52	[  0]	IST  	   		7	; if <unknown table>.ui.battleReadyClosed
		 53	[  0]	JMP  	  8		6	; 	goto 60
		 54	[  0]	TGETS	  7	3	31	; slot7 = slot3.ui
		 55	[  0]	TGETS	  7	7	25	; slot7 = <unknown table>.ui.battleReadyClosed
		 56	[  0]	IST  	   		7	; if <unknown table>.ui.battleReadyClosed
		 57	[  0]	JMP  	  8		2	; 	goto 60
		 58	[  0]	TGETS	  7	3	31	; slot7 = slot3.ui
		 59	[  0]	TGETS	  7	7	26	; slot7 = <unknown table>.ui.battleReadyOpen
		 60	[  0]	IST  	   		7	; if <unknown table>.ui.battleReadyOpen
		 61	[  0]	JMP  	  8		2	; 	goto 64
		 62	[  0]	KPRI 	  8		0	; slot8 = nil
		 63	[  0]	RET1 	  8		2	; return slot8
		 64	[  0]	KSHORT	  8		32	; slot8 = 32
		 65	[  0]	GGET 	  9		24	; slot9 = _env["tonumber"]
		 66	[  0]	ISFC 	 11		0	; slot11 = slot0; if not slot0
		 67	[  0]	JMP  	 11		5	; 	goto 73
		 68	[  0]	TGETS	 11	0	23	; slot11 = slot0.battle
		 69	[  0]	ISF  	   		11	; if not <unknown table>.battle
		 70	[  0]	JMP  	 12		2	; 	goto 73
		 71	[  0]	TGETS	 11	0	23	; slot11 = slot0.battle
		 72	[  0]	TGETS	 11	11	22	; slot11 = <unknown table>.battle.allySize32
		 73	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
		 74	[  0]	IST  	   		9	; if tonumber
		 75	[  0]	JMP  	 10		1	; 	goto 77
		 76	[  0]	KSHORT	  9		64	; slot9 = 64
		 77	[  0]	TGETS	 10	3	21	; slot10 = slot3.units
		 78	[  0]	ISF  	   		10	; if not <unknown table>.units
		 79	[  0]	JMP  	 11		10	; 	goto 90
		 80	[  0]	TGETS	 10	3	21	; slot10 = slot3.units
		 81	[  0]	TGETS	 10	10	20	; slot10 = <unknown table>.units.MiniSwordMan
		 82	[  0]	IST  	   		10	; if <unknown table>.units.MiniSwordMan
		 83	[  0]	JMP  	 11		6	; 	goto 90
		 84	[  0]	TGETS	 10	3	21	; slot10 = slot3.units
		 85	[  0]	TGETS	 10	10	19	; slot10 = <unknown table>.units.MiniArcherMan
		 86	[  0]	IST  	   		10	; if <unknown table>.units.MiniArcherMan
		 87	[  0]	JMP  	 11		2	; 	goto 90
		 88	[  0]	TGETS	 10	3	21	; slot10 = slot3.units
		 89	[  0]	TGETS	 10	10	18	; slot10 = <unknown table>.units.MiniSpearMan
		 90	[  0]	GGET 	 11		17	; slot11 = _env["math"]
		 91	[  0]	TGETS	 11	11	16	; slot11 = math.max
		 92	[  0]	KSHORT	 13		1	; slot13 = 1
		 93	[  0]	ISF  	   		10	; if not <unknown table>.units.MiniSpearMan
		 94	[  0]	JMP  	 14		3	; 	goto 98
		 95	[  0]	TGETS	 14	10	15	; slot14 = <unknown table>.units.MiniSpearMan.frameW
		 96	[  0]	IST  	   		14	; if <unknown table>.units.MiniSpearMan.frameW
		 97	[  0]	JMP  	 15		1	; 	goto 99
		 98	[  0]	MOV  	 14		8	; slot14 = slot8
		 99	[  0]	CALL 	 11	2	3	; slot11 = math.max(slot12, slot13)
		100	[  0]	DIVVV	 11	9	11	; slot11 = slot9 / math.max
		101	[  0]	ISF  	   		0	; if not slot0
		102	[  0]	JMP  	 12		7	; 	goto 110
		103	[  0]	TGETS	 12	0	23	; slot12 = slot0.battle
		104	[  0]	ISF  	   		12	; if not <unknown table>.battle
		105	[  0]	JMP  	 13		4	; 	goto 110
		106	[  0]	TGETS	 12	0	23	; slot12 = slot0.battle
		107	[  0]	TGETS	 12	12	14	; slot12 = <unknown table>.battle.readyIcon
		108	[  0]	IST  	   		12	; if <unknown table>.battle.readyIcon
		109	[  0]	JMP  	 13		1	; 	goto 111
		110	[  0]	TNEW 	 12		0	; slot12 = new table( array: 0, dict: 1)
		111	[  0]	ISF  	   		0	; if not slot0
		112	[  0]	JMP  	 13		3	; 	goto 116
		113	[  0]	TGETS	 13	0	13	; slot13 = slot0.scale
		114	[  0]	IST  	   		13	; if <unknown table>.scale
		115	[  0]	JMP  	 14		1	; 	goto 117
		116	[  0]	KSHORT	 13		1	; slot13 = 1
		117	[  0]	GGET 	 14		17	; slot14 = _env["math"]
		118	[  0]	TGETS	 14	14	12	; slot14 = math.floor
		119	[  0]	TGETS	 16	12	11	; slot16 = slot12.padX
		120	[  0]	ISEQP	 16		0	; if <unknown table>.padX == nil
		121	[  0]	JMP  	 16		3	; 	goto 125
		122	[  0]	TGETS	 16	12	11	; slot16 = slot12.padX
		123	[  0]	IST  	   		16	; if <unknown table>.padX
		124	[  0]	JMP  	 17		1	; 	goto 126
		125	[  0]	KSHORT	 16		8	; slot16 = 8
		126	[  0]	MULVV	 16	16	13	; slot16 = slot16 * slot13
		127	[  0]	CALL 	 14	2	2	; slot14 = math.floor(slot15)
		128	[  0]	GGET 	 15		17	; slot15 = _env["math"]
		129	[  0]	TGETS	 15	15	12	; slot15 = math.floor
		130	[  0]	TGETS	 17	12	10	; slot17 = slot12.padY
		131	[  0]	ISEQP	 17		0	; if <unknown table>.padY == nil
		132	[  0]	JMP  	 17		3	; 	goto 136
		133	[  0]	TGETS	 17	12	10	; slot17 = slot12.padY
		134	[  0]	IST  	   		17	; if <unknown table>.padY
		135	[  0]	JMP  	 18		1	; 	goto 137
		136	[  0]	KSHORT	 17		12	; slot17 = 12
		137	[  0]	MULVV	 17	17	13	; slot17 = slot17 * slot13
		138	[  0]	CALL 	 15	2	2	; slot15 = math.floor(slot16)
		139	[  0]	GGET 	 16		17	; slot16 = _env["math"]
		140	[  0]	TGETS	 16	16	12	; slot16 = math.floor
		141	[  0]	MOV  	 20		7	; slot20 = <unknown table>.ui.battleReadyOpen
		142	[  0]	TGETS	 18	7	9	; slot18 = <unknown table>.ui.battleReadyOpen.getWidth
		143	[  0]	CALL 	 18	2	2	; slot18 = <unknown table>.ui.battleReadyOpen.getWidth(slot19)
		144	[  0]	MULVV	 18	18	11	; slot18 = <unknown table>.ui.battleReadyOpen.getWidth * slot11
		145	[  0]	ADDVN	 18	18	0	; slot18 = slot18 + 0.5
		146	[  0]	CALL 	 16	2	2	; slot16 = math.floor(slot17)
		147	[  0]	GGET 	 17		17	; slot17 = _env["math"]
		148	[  0]	TGETS	 17	17	12	; slot17 = math.floor
		149	[  0]	MOV  	 21		7	; slot21 = <unknown table>.ui.battleReadyOpen
		150	[  0]	TGETS	 19	7	8	; slot19 = <unknown table>.ui.battleReadyOpen.getHeight
		151	[  0]	CALL 	 19	2	2	; slot19 = <unknown table>.ui.battleReadyOpen.getHeight(<unknown table>.ui.battleReadyOpen)
		152	[  0]	MULVV	 19	19	11	; slot19 = <unknown table>.ui.battleReadyOpen.getHeight * slot11
		153	[  0]	ADDVN	 19	19	0	; slot19 = slot19 + 0.5
		154	[  0]	CALL 	 17	2	2	; slot17 = math.floor(slot18)
		155	[  0]	GGET 	 18		17	; slot18 = _env["math"]
		156	[  0]	TGETS	 18	18	12	; slot18 = math.floor
		157	[  0]	TGETS	 20	4	7	; slot20 = <unknown table>.right.x
		158	[  0]	TGETS	 21	4	6	; slot21 = <unknown table>.right.w
		159	[  0]	ADDVV	 20	20	21	; slot20 = <unknown table>.right.x + <unknown table>.right.w
		160	[  0]	SUBVV	 20	20	16	; slot20 = slot20 - math.floor
		161	[  0]	SUBVV	 20	20	14	; slot20 = slot20 - math.floor
		162	[  0]	ADDVN	 20	20	0	; slot20 = slot20 + 0.5
		163	[  0]	CALL 	 18	2	2	; slot18 = math.floor(slot19)
		164	[  0]	KPRI 	 19		0	; slot19 = nil
		165	[  0]	TGETS	 20	12	5	; slot20 = slot12.anchor
		166	[  0]	IST  	   		20	; if <unknown table>.anchor
		167	[  0]	JMP  	 21		1	; 	goto 169
		168	[  0]	KSTR 	 20		4	; slot20 = "bottom-right"
		169	[  0]	ISNES	 20		4	; if slot20 ~= "bottom-right"
		170	[  0]	JMP  	 20		11	; 	goto 182
		171	[  0]	GGET 	 20		17	; slot20 = _env["math"]
		172	[  0]	TGETS	 20	20	12	; slot20 = math.floor
		173	[  0]	TGETS	 22	4	3	; slot22 = <unknown table>.right.y
		174	[  0]	TGETS	 23	4	2	; slot23 = <unknown table>.right.h
		175	[  0]	ADDVV	 22	22	23	; slot22 = <unknown table>.right.y + <unknown table>.right.h
		176	[  0]	SUBVV	 22	22	17	; slot22 = slot22 - math.floor
		177	[  0]	SUBVV	 22	22	15	; slot22 = slot22 - math.floor
		178	[  0]	ADDVN	 22	22	0	; slot22 = slot22 + 0.5
		179	[  0]	CALL 	 20	2	2	; slot20 = math.floor(<unknown table>.right.w)
		180	[  0]	MOV  	 19		20	; slot19 = math.floor
		181	[  0]	JMP  	 20		16	; 	goto 198
		182	[  0]	GGET 	 20		17	; slot20 = _env["math"]
		183	[  0]	TGETS	 20	20	12	; slot20 = math.floor
		184	[  0]	TGETS	 22	4	3	; slot22 = <unknown table>.right.y
		185	[  0]	GGET 	 23		17	; slot23 = _env["math"]
		186	[  0]	TGETS	 23	23	16	; slot23 = math.max
		187	[  0]	KSHORT	 25		0	; slot25 = 0
		188	[  0]	GGET 	 26		17	; slot26 = _env["math"]
		189	[  0]	TGETS	 26	26	12	; slot26 = math.floor
		190	[  0]	TGETS	 28	4	2	; slot28 = <unknown table>.right.h
		191	[  0]	MULVN	 28	28	1	; slot28 = <unknown table>.right.h * 0.12
		192	[  0]	CALL 	 26	0	2	; MULTRES = math.floor(slot27)
		193	[  0]	CALLM	 23	2	1	; slot23 = math.max(slot24, ...MULTRES)
		194	[  0]	ADDVV	 22	22	23	; slot22 = <unknown table>.right.y + math.max
		195	[  0]	ADDVN	 22	22	0	; slot22 = slot22 + 0.5
		196	[  0]	CALL 	 20	2	2	; slot20 = math.floor(<unknown table>.right.w)
		197	[  0]	MOV  	 19		20	; slot19 = math.floor
		198	[  0]	TDUP 	 20		1	; slot20 = copy table#k1
		199	[  0]	TSETS	  7	20	0	; slot20.icon = <unknown table>.ui.battleReadyOpen
		200	[  0]	TSETS	 18	20	7	; slot20.x = math.floor
		201	[  0]	TSETS	 19	20	3	; slot20.y = math.floor
		202	[  0]	TSETS	 16	20	6	; slot20.w = math.floor
		203	[  0]	TSETS	 17	20	2	; slot20.h = math.floor
		204	[  0]	TSETS	 11	20	13	; slot20.scale = slot11
		205	[  0]	RET1 	 20		2	; return slot20
	279	[  0]	FNEW 	 67		26	; N/A:0-0: 4 args, 2 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  2	[  0]	TGETS	  4	4	4	; slot4 = uv0"unknown".isBattleReadyStep
		  3	[  0]	CALL 	  4	2	1	; slot4 = uv0"unknown".isBattleReadyStep()
		  4	[  0]	IST  	   		4	; if uv0"unknown".isBattleReadyStep
		  5	[  0]	JMP  	  4		2	; 	goto 8
		  6	[  0]	KPRI 	  4		1	; slot4 = false
		  7	[  0]	RET1 	  4		2	; return slot4
		  8	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		  9	[  0]	MOV  	  6		0	; slot6 = slot0
		 10	[  0]	MOV  	  7		1	; slot7 = slot1
		 11	[  0]	CALL 	  4	2	3	; slot4 = uv1"unknown"(slot5, slot6)
		 12	[  0]	IST  	   		4	; if uv1"unknown"
		 13	[  0]	JMP  	  5		2	; 	goto 16
		 14	[  0]	KPRI 	  5		1	; slot5 = false
		 15	[  0]	RET1 	  5		2	; return slot5
		 16	[  0]	KSHORT	  5		5	; slot5 = 5
		 17	[  0]	TGETS	  6	4	3	; slot6 = uv1"unknown".x
		 18	[  0]	SUBVV	  6	6	5	; slot6 = uv1"unknown".x - slot5
		 19	[  0]	ISGT 	  6		2	; if slot6 > slot2
		 20	[  0]	JMP  	  6		16	; 	goto 37
		 21	[  0]	TGETS	  6	4	3	; slot6 = uv1"unknown".x
		 22	[  0]	TGETS	  7	4	2	; slot7 = uv1"unknown".w
		 23	[  0]	ADDVV	  6	6	7	; slot6 = uv1"unknown".x + uv1"unknown".w
		 24	[  0]	ADDVV	  6	6	5	; slot6 = slot6 + slot5
		 25	[  0]	ISGT 	  2		6	; if slot2 > slot6
		 26	[  0]	JMP  	  6		10	; 	goto 37
		 27	[  0]	TGETS	  6	4	1	; slot6 = uv1"unknown".y
		 28	[  0]	SUBVV	  6	6	5	; slot6 = uv1"unknown".y - slot5
		 29	[  0]	ISGT 	  6		3	; if slot6 > slot3
		 30	[  0]	JMP  	  6		6	; 	goto 37
		 31	[  0]	TGETS	  6	4	1	; slot6 = uv1"unknown".y
		 32	[  0]	TGETS	  7	4	0	; slot7 = uv1"unknown".h
		 33	[  0]	ADDVV	  6	6	7	; slot6 = uv1"unknown".y + uv1"unknown".h
		 34	[  0]	ADDVV	  6	6	5	; slot6 = slot6 + slot5
		 35	[  0]	ISLE 	  3		6	; if slot3 <= slot6
		 36	[  0]	JMP  	  6		2	; 	goto 39
		 37	[  0]	KPRI 	  6		1	; slot6 = false
		 38	[  0]	JMP  	  7		1	; 	goto 40
		 39	[  0]	KPRI 	  6		2	; slot6 = true
		 40	[  0]	RET1 	  6		2	; return slot6
	280	[  0]	TSETS	 67	0	27	; slot0.hitTestBattleReady = slot67
	281	[  0]	FNEW 	 67		24	; N/A:0-0: 1 args, 2 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	16	; slot1 = uv0"unknown".isBattleReadyStep
		  3	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown".isBattleReadyStep()
		  4	[  0]	IST  	   		1	; if slot1
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	KPRI 	  1		1	; slot1 = false
		  7	[  0]	RET1 	  1		2	; return slot1
		  8	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  9	[  0]	GGET 	  2		14	; slot2 = _env["STEP_BATTLE_FREE"]
		 10	[  0]	TSETS	  2	1	15	; uv1"unknown".step = STEP_BATTLE_FREE
		 11	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 12	[  0]	KSHORT	  2		0	; slot2 = 0
		 13	[  0]	TSETS	  2	1	13	; uv1"unknown".stepT = slot2
		 14	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 15	[  0]	KSHORT	  2		0	; slot2 = 0
		 16	[  0]	TSETS	  2	1	12	; uv1"unknown".stepElapsed = slot2
		 17	[  0]	GGET 	  1		11	; slot1 = _env["rawget"]
		 18	[  0]	GGET 	  3		10	; slot3 = _env["_G"]
		 19	[  0]	KSTR 	  4		9	; slot4 = "slot"
		 20	[  0]	CALL 	  1	2	3	; slot1 = rawget(slot2, _G)
		 21	[  0]	ISF  	   		1	; if not slot1
		 22	[  0]	JMP  	  2		10	; 	goto 33
		 23	[  0]	KPRI 	  2		1	; slot2 = false
		 24	[  0]	TSETS	  2	1	8	; slot1._tutorialSpin = slot2
		 25	[  0]	KPRI 	  2		0	; slot2 = nil
		 26	[  0]	TSETS	  2	1	7	; slot1.stopTimes = slot2
		 27	[  0]	TGETS	  2	1	6	; slot2 = slot1._coreSpinMods
		 28	[  0]	ISF  	   		2	; if not <unknown table>._coreSpinMods
		 29	[  0]	JMP  	  3		3	; 	goto 33
		 30	[  0]	TGETS	  2	1	6	; slot2 = slot1._coreSpinMods
		 31	[  0]	KPRI 	  3		0	; slot3 = nil
		 32	[  0]	TSETS	  3	2	5	; <unknown table>._coreSpinMods.forceCells = slot3
		 33	[  0]	ISF  	   		0	; if not slot0
		 34	[  0]	JMP  	  2		10	; 	goto 45
		 35	[  0]	KPRI 	  2		1	; slot2 = false
		 36	[  0]	TSETS	  2	0	4	; slot0._tutorialBlockNonSlot = slot2
		 37	[  0]	KPRI 	  2		1	; slot2 = false
		 38	[  0]	TSETS	  2	0	3	; slot0._tutorialAllowReadyIcon = slot2
		 39	[  0]	KPRI 	  2		1	; slot2 = false
		 40	[  0]	TSETS	  2	0	2	; slot0._tutorialAllowUnitInteraction = slot2
		 41	[  0]	KPRI 	  2		0	; slot2 = nil
		 42	[  0]	TSETS	  2	0	1	; slot0._tutorialCursorX = slot2
		 43	[  0]	KPRI 	  2		0	; slot2 = nil
		 44	[  0]	TSETS	  2	0	0	; slot0._tutorialCursorY = slot2
		 45	[  0]	KPRI 	  2		2	; slot2 = true
		 46	[  0]	RET1 	  2		2	; return slot2
	282	[  0]	TSETS	 67	0	25	; slot0.onBattleStarted = slot67
	283	[  0]	FNEW 	 67		23	; N/A:0-0: 2 args, 1 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	MOV  	  5		1	; slot5 = slot1
		  4	[  0]	CALL 	  2	2	3	; slot2 = uv0"unknown"(slot3, slot4)
		  5	[  0]	IST  	   		2	; if slot2
		  6	[  0]	JMP  	  3		1	; 	goto 8
		  7	[  0]	RET0 	  0		1	; return
		  8	[  0]	ISF  	   		0	; if not slot0
		  9	[  0]	JMP  	  3		7	; 	goto 17
		 10	[  0]	TGETS	  3	0	15	; slot3 = slot0.tutorial
		 11	[  0]	ISF  	   		3	; if not <unknown table>.tutorial
		 12	[  0]	JMP  	  4		4	; 	goto 17
		 13	[  0]	TGETS	  3	0	15	; slot3 = slot0.tutorial
		 14	[  0]	TGETS	  3	3	14	; slot3 = <unknown table>.tutorial.readyFocus
		 15	[  0]	IST  	   		3	; if <unknown table>.tutorial.readyFocus
		 16	[  0]	JMP  	  4		1	; 	goto 18
		 17	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 18	[  0]	GGET 	  4		13	; slot4 = _env["tonumber"]
		 19	[  0]	TGETS	  6	3	12	; slot6 = slot3.padX
		 20	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		 21	[  0]	IST  	   		4	; if tonumber
		 22	[  0]	JMP  	  5		1	; 	goto 24
		 23	[  0]	KSHORT	  4		6	; slot4 = 6
		 24	[  0]	GGET 	  5		13	; slot5 = _env["tonumber"]
		 25	[  0]	TGETS	  7	3	11	; slot7 = slot3.padY
		 26	[  0]	CALL 	  5	2	2	; slot5 = tonumber(<unknown table>.padX)
		 27	[  0]	IST  	   		5	; if tonumber
		 28	[  0]	JMP  	  6		1	; 	goto 30
		 29	[  0]	KSHORT	  5		6	; slot5 = 6
		 30	[  0]	GGET 	  6		10	; slot6 = _env["love"]
		 31	[  0]	TGETS	  6	6	9	; slot6 = love.graphics
		 32	[  0]	TGETS	  6	6	8	; slot6 = love.graphics.setColor
		 33	[  0]	KSHORT	  8		1	; slot8 = 1
		 34	[  0]	KSHORT	  9		1	; slot9 = 1
		 35	[  0]	KSHORT	 10		1	; slot10 = 1
		 36	[  0]	KSHORT	 11		1	; slot11 = 1
		 37	[  0]	CALL 	  6	1	5	;  = love.graphics.setColor(<unknown table>.padY, slot8, slot9, slot10)
		 38	[  0]	GGET 	  6		10	; slot6 = _env["love"]
		 39	[  0]	TGETS	  6	6	9	; slot6 = love.graphics
		 40	[  0]	TGETS	  6	6	7	; slot6 = love.graphics.rectangle
		 41	[  0]	KSTR 	  8		6	; slot8 = "fill"
		 42	[  0]	GGET 	  9		5	; slot9 = _env["math"]
		 43	[  0]	TGETS	  9	9	4	; slot9 = math.floor
		 44	[  0]	TGETS	 11	2	3	; slot11 = slot2.x
		 45	[  0]	SUBVV	 11	11	4	; slot11 = <unknown table>.x - slot4
		 46	[  0]	ADDVN	 11	11	0	; slot11 = slot11 + 0.5
		 47	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		 48	[  0]	GGET 	 10		5	; slot10 = _env["math"]
		 49	[  0]	TGETS	 10	10	4	; slot10 = math.floor
		 50	[  0]	TGETS	 12	2	2	; slot12 = slot2.y
		 51	[  0]	SUBVV	 12	12	5	; slot12 = <unknown table>.y - slot5
		 52	[  0]	ADDVN	 12	12	0	; slot12 = slot12 + 0.5
		 53	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
		 54	[  0]	GGET 	 11		5	; slot11 = _env["math"]
		 55	[  0]	TGETS	 11	11	4	; slot11 = math.floor
		 56	[  0]	TGETS	 13	2	1	; slot13 = slot2.w
		 57	[  0]	MULVN	 14	4	1	; slot14 = slot4 * 2
		 58	[  0]	ADDVV	 13	13	14	; slot13 = <unknown table>.w + slot14
		 59	[  0]	ADDVN	 13	13	0	; slot13 = slot13 + 0.5
		 60	[  0]	CALL 	 11	2	2	; slot11 = math.floor(slot12)
		 61	[  0]	GGET 	 12		5	; slot12 = _env["math"]
		 62	[  0]	TGETS	 12	12	4	; slot12 = math.floor
		 63	[  0]	TGETS	 14	2	0	; slot14 = slot2.h
		 64	[  0]	MULVN	 15	5	1	; slot15 = slot5 * 2
		 65	[  0]	ADDVV	 14	14	15	; slot14 = <unknown table>.h + slot15
		 66	[  0]	ADDVN	 14	14	0	; slot14 = slot14 + 0.5
		 67	[  0]	CALL 	 12	0	2	; MULTRES = math.floor(slot13)
		 68	[  0]	CALLM	  6	1	4	;  = love.graphics.rectangle(<unknown table>.padY, slot8, math.floor, math.floor, ...MULTRES)
		 69	[  0]	RET0 	  0		1	; return
	284	[  0]	FNEW 	 68		22	; N/A:0-0: 2 args, 0 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  2		1	; slot2 = slot1; if not slot1
		  2	[  0]	JMP  	  2		5	; 	goto 8
		  3	[  0]	TGETS	  2	1	9	; slot2 = slot1.nudgeBtns
		  4	[  0]	ISF  	   		2	; if not <unknown table>.nudgeBtns
		  5	[  0]	JMP  	  3		2	; 	goto 8
		  6	[  0]	TGETS	  2	1	9	; slot2 = slot1.nudgeBtns
		  7	[  0]	TGETB	  2	2	2	; slot2 = <unknown table>.nudgeBtns[2]
		  8	[  0]	IST  	   		2	; if slot2
		  9	[  0]	JMP  	  3		1	; 	goto 11
		 10	[  0]	RET0 	  0		1	; return
		 11	[  0]	KSHORT	  3		5	; slot3 = 5
		 12	[  0]	GGET 	  4		8	; slot4 = _env["love"]
		 13	[  0]	TGETS	  4	4	7	; slot4 = love.graphics
		 14	[  0]	TGETS	  4	4	6	; slot4 = love.graphics.setColor
		 15	[  0]	KSHORT	  6		1	; slot6 = 1
		 16	[  0]	KSHORT	  7		1	; slot7 = 1
		 17	[  0]	KSHORT	  8		1	; slot8 = 1
		 18	[  0]	KSHORT	  9		1	; slot9 = 1
		 19	[  0]	CALL 	  4	1	5	;  = love.graphics.setColor(slot5, slot6, slot7, slot8)
		 20	[  0]	GGET 	  4		8	; slot4 = _env["love"]
		 21	[  0]	TGETS	  4	4	7	; slot4 = love.graphics
		 22	[  0]	TGETS	  4	4	5	; slot4 = love.graphics.rectangle
		 23	[  0]	KSTR 	  6		4	; slot6 = "fill"
		 24	[  0]	TGETS	  7	2	3	; slot7 = slot2.x
		 25	[  0]	SUBVV	  7	7	3	; slot7 = <unknown table>.x - slot3
		 26	[  0]	TGETS	  8	2	2	; slot8 = slot2.y
		 27	[  0]	SUBVV	  8	8	3	; slot8 = <unknown table>.y - slot3
		 28	[  0]	TGETS	  9	2	1	; slot9 = slot2.w
		 29	[  0]	MULVN	 10	3	0	; slot10 = slot3 * 2
		 30	[  0]	ADDVV	  9	9	10	; slot9 = <unknown table>.w + slot10
		 31	[  0]	TGETS	 10	2	0	; slot10 = slot2.h
		 32	[  0]	MULVN	 11	3	0	; slot11 = slot3 * 2
		 33	[  0]	ADDVV	 10	10	11	; slot10 = <unknown table>.h + slot11
		 34	[  0]	CALL 	  4	1	6	;  = love.graphics.rectangle(slot5, slot6, slot7, slot8, slot9)
		 35	[  0]	RET0 	  0		1	; return
	285	[  0]	FNEW 	 69		21	; N/A:0-0: 1 args, 0 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  1		0	; slot1 = slot0; if not slot0
		  2	[  0]	JMP  	  1		1	; 	goto 4
		  3	[  0]	TGETS	  1	0	14	; slot1 = slot0._tutorialFiremanRect
		  4	[  0]	IST  	   		1	; if <unknown table>._tutorialFiremanRect
		  5	[  0]	JMP  	  2		1	; 	goto 7
		  6	[  0]	RET0 	  0		1	; return
		  7	[  0]	ISF  	   		0	; if not slot0
		  8	[  0]	JMP  	  2		7	; 	goto 16
		  9	[  0]	TGETS	  2	0	13	; slot2 = slot0.tutorial
		 10	[  0]	ISF  	   		2	; if not <unknown table>.tutorial
		 11	[  0]	JMP  	  3		4	; 	goto 16
		 12	[  0]	TGETS	  2	0	13	; slot2 = slot0.tutorial
		 13	[  0]	TGETS	  2	2	12	; slot2 = <unknown table>.tutorial.firemanFocus
		 14	[  0]	IST  	   		2	; if <unknown table>.tutorial.firemanFocus
		 15	[  0]	JMP  	  3		1	; 	goto 17
		 16	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		 17	[  0]	GGET 	  3		11	; slot3 = _env["tonumber"]
		 18	[  0]	TGETS	  5	2	10	; slot5 = slot2.pad
		 19	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		 20	[  0]	IST  	   		3	; if tonumber
		 21	[  0]	JMP  	  4		1	; 	goto 23
		 22	[  0]	KSHORT	  3		6	; slot3 = 6
		 23	[  0]	GGET 	  4		11	; slot4 = _env["tonumber"]
		 24	[  0]	TGETS	  6	2	9	; slot6 = slot2.offsetY
		 25	[  0]	CALL 	  4	2	2	; slot4 = tonumber(<unknown table>.pad)
		 26	[  0]	IST  	   		4	; if tonumber
		 27	[  0]	JMP  	  5		1	; 	goto 29
		 28	[  0]	KSHORT	  4		0	; slot4 = 0
		 29	[  0]	GGET 	  5		8	; slot5 = _env["love"]
		 30	[  0]	TGETS	  5	5	7	; slot5 = love.graphics
		 31	[  0]	TGETS	  5	5	6	; slot5 = love.graphics.setColor
		 32	[  0]	KSHORT	  7		1	; slot7 = 1
		 33	[  0]	KSHORT	  8		1	; slot8 = 1
		 34	[  0]	KSHORT	  9		1	; slot9 = 1
		 35	[  0]	KSHORT	 10		1	; slot10 = 1
		 36	[  0]	CALL 	  5	1	5	;  = love.graphics.setColor(<unknown table>.offsetY, slot7, slot8, slot9)
		 37	[  0]	GGET 	  5		8	; slot5 = _env["love"]
		 38	[  0]	TGETS	  5	5	7	; slot5 = love.graphics
		 39	[  0]	TGETS	  5	5	5	; slot5 = love.graphics.rectangle
		 40	[  0]	KSTR 	  7		4	; slot7 = "fill"
		 41	[  0]	TGETS	  8	1	3	; slot8 = <unknown table>._tutorialFiremanRect.x
		 42	[  0]	SUBVV	  8	8	3	; slot8 = <unknown table>._tutorialFiremanRect.x - slot3
		 43	[  0]	TGETS	  9	1	2	; slot9 = <unknown table>._tutorialFiremanRect.y
		 44	[  0]	SUBVV	  9	9	3	; slot9 = <unknown table>._tutorialFiremanRect.y - slot3
		 45	[  0]	ADDVV	  9	9	4	; slot9 = slot9 + slot4
		 46	[  0]	TGETS	 10	1	1	; slot10 = <unknown table>._tutorialFiremanRect.w
		 47	[  0]	MULVN	 11	3	0	; slot11 = slot3 * 2
		 48	[  0]	ADDVV	 10	10	11	; slot10 = <unknown table>._tutorialFiremanRect.w + slot11
		 49	[  0]	TGETS	 11	1	0	; slot11 = <unknown table>._tutorialFiremanRect.h
		 50	[  0]	MULVN	 12	3	0	; slot12 = slot3 * 2
		 51	[  0]	ADDVV	 11	11	12	; slot11 = <unknown table>._tutorialFiremanRect.h + slot12
		 52	[  0]	CALL 	  5	1	6	;  = love.graphics.rectangle(<unknown table>.offsetY, slot7, slot8, slot9, slot10)
		 53	[  0]	RET0 	  0		1	; return
	286	[  0]	FNEW 	 70		20	; N/A:0-0: 1 args, 0 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		ktable#2 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		3	; 	goto 6
		  3	[  0]	TGETS	  1	0	18	; slot1 = slot0.maxUnit
		  4	[  0]	IST  	   		1	; if <unknown table>.maxUnit
		  5	[  0]	JMP  	  2		1	; 	goto 7
		  6	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  7	[  0]	GGET 	  2		17	; slot2 = _env["tonumber"]
		  8	[  0]	TGETS	  4	1	16	; slot4 = slot1.x
		  9	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 10	[  0]	IST  	   		2	; if slot2
		 11	[  0]	JMP  	  3		1	; 	goto 13
		 12	[  0]	KSHORT	  2		369	; slot2 = 369
		 13	[  0]	GGET 	  3		17	; slot3 = _env["tonumber"]
		 14	[  0]	TGETS	  5	1	15	; slot5 = slot1.y
		 15	[  0]	CALL 	  3	2	2	; slot3 = tonumber(<unknown table>.x)
		 16	[  0]	IST  	   		3	; if tonumber
		 17	[  0]	JMP  	  4		1	; 	goto 19
		 18	[  0]	KSHORT	  3		9	; slot3 = 9
		 19	[  0]	GGET 	  4		17	; slot4 = _env["tonumber"]
		 20	[  0]	TGETS	  6	1	14	; slot6 = slot1.tutorialFocusW
		 21	[  0]	CALL 	  4	2	2	; slot4 = tonumber(<unknown table>.y)
		 22	[  0]	IST  	   		4	; if tonumber
		 23	[  0]	JMP  	  5		6	; 	goto 30
		 24	[  0]	GGET 	  4		17	; slot4 = _env["tonumber"]
		 25	[  0]	TGETS	  6	1	13	; slot6 = slot1.focusW
		 26	[  0]	CALL 	  4	2	2	; slot4 = tonumber(<unknown table>.y)
		 27	[  0]	IST  	   		4	; if tonumber
		 28	[  0]	JMP  	  5		1	; 	goto 30
		 29	[  0]	KSHORT	  4		44	; slot4 = 44
		 30	[  0]	GGET 	  5		17	; slot5 = _env["tonumber"]
		 31	[  0]	TGETS	  7	1	12	; slot7 = slot1.tutorialFocusH
		 32	[  0]	CALL 	  5	2	2	; slot5 = tonumber(<unknown table>.focusW)
		 33	[  0]	IST  	   		5	; if tonumber
		 34	[  0]	JMP  	  6		6	; 	goto 41
		 35	[  0]	GGET 	  5		17	; slot5 = _env["tonumber"]
		 36	[  0]	TGETS	  7	1	11	; slot7 = slot1.focusH
		 37	[  0]	CALL 	  5	2	2	; slot5 = tonumber(<unknown table>.focusW)
		 38	[  0]	IST  	   		5	; if tonumber
		 39	[  0]	JMP  	  6		1	; 	goto 41
		 40	[  0]	KSHORT	  5		22	; slot5 = 22
		 41	[  0]	GGET 	  6		17	; slot6 = _env["tonumber"]
		 42	[  0]	TGETS	  8	1	10	; slot8 = slot1.tutorialFocusX
		 43	[  0]	CALL 	  6	2	2	; slot6 = tonumber(<unknown table>.focusH)
		 44	[  0]	IST  	   		6	; if tonumber
		 45	[  0]	JMP  	  7		15	; 	goto 61
		 46	[  0]	TGETS	  7	1	9	; slot7 = slot1.align
		 47	[  0]	IST  	   		7	; if <unknown table>.align
		 48	[  0]	JMP  	  8		1	; 	goto 50
		 49	[  0]	KSTR 	  7		8	; slot7 = "right"
		 50	[  0]	ISNES	  7		8	; if slot7 ~= "right"
		 51	[  0]	JMP  	  8		3	; 	goto 55
		 52	[  0]	SUBVV	  8	2	4	; slot8 = slot2 - slot4
		 53	[  0]	SUBVN	  6	8	0	; slot6 = slot8 - 4
		 54	[  0]	JMP  	  8		6	; 	goto 61
		 55	[  0]	ISNES	  7		7	; if slot7 ~= "center"
		 56	[  0]	JMP  	  8		3	; 	goto 60
		 57	[  0]	MULVN	  8	4	1	; slot8 = slot4 * 0.5
		 58	[  0]	SUBVV	  6	2	8	; slot6 = slot2 - slot8
		 59	[  0]	JMP  	  8		1	; 	goto 61
		 60	[  0]	SUBVN	  6	2	0	; slot6 = slot2 - 4
		 61	[  0]	GGET 	  7		17	; slot7 = _env["tonumber"]
		 62	[  0]	TGETS	  9	1	6	; slot9 = slot1.tutorialFocusOffsetX
		 63	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 64	[  0]	IST  	   		7	; if tonumber
		 65	[  0]	JMP  	  8		1	; 	goto 67
		 66	[  0]	KSHORT	  7		8	; slot7 = 8
		 67	[  0]	GGET 	  8		17	; slot8 = _env["tonumber"]
		 68	[  0]	TGETS	 10	1	5	; slot10 = slot1.tutorialFocusOffsetY
		 69	[  0]	CALL 	  8	2	2	; slot8 = tonumber(<unknown table>.tutorialFocusOffsetX)
		 70	[  0]	IST  	   		8	; if tonumber
		 71	[  0]	JMP  	  9		1	; 	goto 73
		 72	[  0]	KSHORT	  8		65531	; slot8 = 65531
		 73	[  0]	TDUP 	  9		2	; slot9 = copy table#k2
		 74	[  0]	GGET 	 10		4	; slot10 = _env["math"]
		 75	[  0]	TGETS	 10	10	3	; slot10 = math.floor
		 76	[  0]	ADDVV	 12	6	7	; slot12 = slot6 + slot7
		 77	[  0]	ADDVN	 12	12	1	; slot12 = slot12 + 0.5
		 78	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
		 79	[  0]	TSETS	 10	9	16	; slot9.x = math.floor
		 80	[  0]	GGET 	 10		4	; slot10 = _env["math"]
		 81	[  0]	TGETS	 10	10	3	; slot10 = math.floor
		 82	[  0]	ADDVV	 12	3	8	; slot12 = slot3 + slot8
		 83	[  0]	ADDVN	 12	12	1	; slot12 = slot12 + 0.5
		 84	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
		 85	[  0]	TSETS	 10	9	15	; slot9.y = math.floor
		 86	[  0]	GGET 	 10		4	; slot10 = _env["math"]
		 87	[  0]	TGETS	 10	10	3	; slot10 = math.floor
		 88	[  0]	ADDVN	 12	4	1	; slot12 = slot4 + 0.5
		 89	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
		 90	[  0]	TSETS	 10	9	1	; slot9.w = math.floor
		 91	[  0]	GGET 	 10		4	; slot10 = _env["math"]
		 92	[  0]	TGETS	 10	10	3	; slot10 = math.floor
		 93	[  0]	ADDVN	 12	5	1	; slot12 = slot5 + 0.5
		 94	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
		 95	[  0]	TSETS	 10	9	0	; slot9.h = math.floor
		 96	[  0]	RET1 	  9		2	; return slot9
	287	[  0]	FNEW 	 71		19	; N/A:0-0: 1 args, 1 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		  4	[  0]	GGET 	  2		8	; slot2 = _env["love"]
		  5	[  0]	TGETS	  2	2	7	; slot2 = love.graphics
		  6	[  0]	TGETS	  2	2	6	; slot2 = love.graphics.setColor
		  7	[  0]	KSHORT	  4		1	; slot4 = 1
		  8	[  0]	KSHORT	  5		1	; slot5 = 1
		  9	[  0]	KSHORT	  6		1	; slot6 = 1
		 10	[  0]	KSHORT	  7		1	; slot7 = 1
		 11	[  0]	CALL 	  2	1	5	;  = love.graphics.setColor(slot3, slot4, slot5, slot6)
		 12	[  0]	GGET 	  2		8	; slot2 = _env["love"]
		 13	[  0]	TGETS	  2	2	7	; slot2 = love.graphics
		 14	[  0]	TGETS	  2	2	5	; slot2 = love.graphics.rectangle
		 15	[  0]	KSTR 	  4		4	; slot4 = "fill"
		 16	[  0]	TGETS	  5	1	3	; slot5 = slot1.x
		 17	[  0]	TGETS	  6	1	2	; slot6 = slot1.y
		 18	[  0]	TGETS	  7	1	1	; slot7 = slot1.w
		 19	[  0]	TGETS	  8	1	0	; slot8 = slot1.h
		 20	[  0]	CALL 	  2	1	6	;  = love.graphics.rectangle(slot3, slot4, <unknown table>.x, <unknown table>.y, <unknown table>.w)
		 21	[  0]	RET0 	  0		1	; return
	288	[  0]	FNEW 	 72		18	; N/A:0-0: 2 args, 0 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		ktable#1 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  2		1	; slot2 = slot1; if not slot1
		  2	[  0]	JMP  	  2		1	; 	goto 4
		  3	[  0]	TGETS	  2	1	13	; slot2 = slot1.right
		  4	[  0]	ISFC 	  3		0	; slot3 = slot0; if not slot0
		  5	[  0]	JMP  	  3		5	; 	goto 11
		  6	[  0]	TGETS	  3	0	12	; slot3 = slot0.battlefieldSections
		  7	[  0]	ISF  	   		3	; if not <unknown table>.battlefieldSections
		  8	[  0]	JMP  	  4		2	; 	goto 11
		  9	[  0]	TGETS	  3	0	12	; slot3 = slot0.battlefieldSections
		 10	[  0]	TGETS	  3	3	11	; slot3 = <unknown table>.battlefieldSections.shop
		 11	[  0]	ISF  	   		2	; if not <unknown table>.right
		 12	[  0]	JMP  	  4		2	; 	goto 15
		 13	[  0]	IST  	   		3	; if <unknown table>.battlefieldSections.shop
		 14	[  0]	JMP  	  4		2	; 	goto 17
		 15	[  0]	KPRI 	  4		0	; slot4 = nil
		 16	[  0]	RET1 	  4		2	; return slot4
		 17	[  0]	GGET 	  4		10	; slot4 = _env["tonumber"]
		 18	[  0]	TGETS	  6	3	9	; slot6 = <unknown table>.battlefieldSections.shop.scale
		 19	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		 20	[  0]	IST  	   		4	; if tonumber
		 21	[  0]	JMP  	  5		1	; 	goto 23
		 22	[  0]	KSHORT	  4		1	; slot4 = 1
		 23	[  0]	ISFC 	  5		0	; slot5 = slot0; if not slot0
		 24	[  0]	JMP  	  5		1	; 	goto 26
		 25	[  0]	TGETS	  5	0	8	; slot5 = slot0._shopMode
		 26	[  0]	ISF  	   		5	; if not <unknown table>._shopMode
		 27	[  0]	JMP  	  6		2	; 	goto 30
		 28	[  0]	KSHORT	  6		376	; slot6 = 376
		 29	[  0]	JMP  	  7		6	; 	goto 36
		 30	[  0]	GGET 	  6		10	; slot6 = _env["tonumber"]
		 31	[  0]	TGETS	  8	3	7	; slot8 = <unknown table>.battlefieldSections.shop.x
		 32	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
		 33	[  0]	IST  	   		6	; if tonumber
		 34	[  0]	JMP  	  7		1	; 	goto 36
		 35	[  0]	KSHORT	  6		382	; slot6 = 382
		 36	[  0]	TGETS	  7	2	7	; slot7 = <unknown table>.right.x
		 37	[  0]	ADDVV	  7	7	6	; slot7 = <unknown table>.right.x + slot6
		 38	[  0]	TGETS	  8	3	6	; slot8 = <unknown table>.battlefieldSections.shop.anchor
		 39	[  0]	ISNES	  8		13	; if <unknown table>.battlefieldSections.shop.anchor ~= "right"
		 40	[  0]	JMP  	  8		10	; 	goto 51
		 41	[  0]	TGETS	  8	2	7	; slot8 = <unknown table>.right.x
		 42	[  0]	TGETS	  9	2	5	; slot9 = <unknown table>.right.w
		 43	[  0]	ADDVV	  8	8	9	; slot8 = <unknown table>.right.x + <unknown table>.right.w
		 44	[  0]	GGET 	  9		10	; slot9 = _env["tonumber"]
		 45	[  0]	TGETS	 11	3	7	; slot11 = <unknown table>.battlefieldSections.shop.x
		 46	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
		 47	[  0]	IST  	   		9	; if tonumber
		 48	[  0]	JMP  	 10		1	; 	goto 50
		 49	[  0]	KSHORT	  9		0	; slot9 = 0
		 50	[  0]	ADDVV	  7	8	9	; slot7 = slot8 + slot9
		 51	[  0]	TGETS	  8	2	4	; slot8 = <unknown table>.right.y
		 52	[  0]	GGET 	  9		10	; slot9 = _env["tonumber"]
		 53	[  0]	TGETS	 11	3	4	; slot11 = <unknown table>.battlefieldSections.shop.y
		 54	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
		 55	[  0]	IST  	   		9	; if tonumber
		 56	[  0]	JMP  	 10		1	; 	goto 58
		 57	[  0]	KSHORT	  9		0	; slot9 = 0
		 58	[  0]	ADDVV	  8	8	9	; slot8 = <unknown table>.right.y + slot9
		 59	[  0]	GGET 	  9		10	; slot9 = _env["tonumber"]
		 60	[  0]	TGETS	 11	3	3	; slot11 = <unknown table>.battlefieldSections.shop.focusW
		 61	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
		 62	[  0]	IST  	   		9	; if tonumber
		 63	[  0]	JMP  	 10		1	; 	goto 65
		 64	[  0]	MULNV	  9	4	0	; slot9 = 40 * slot4
		 65	[  0]	GGET 	 10		10	; slot10 = _env["tonumber"]
		 66	[  0]	TGETS	 12	3	2	; slot12 = <unknown table>.battlefieldSections.shop.focusH
		 67	[  0]	CALL 	 10	2	2	; slot10 = tonumber(<unknown table>.battlefieldSections.shop.focusW)
		 68	[  0]	IST  	   		10	; if tonumber
		 69	[  0]	JMP  	 11		1	; 	goto 71
		 70	[  0]	MULNV	 10	4	1	; slot10 = 32 * slot4
		 71	[  0]	TDUP 	 11		1	; slot11 = copy table#k1
		 72	[  0]	TSETS	  7	11	7	; slot11.x = slot7
		 73	[  0]	TSETS	  8	11	4	; slot11.y = slot8
		 74	[  0]	TSETS	  9	11	5	; slot11.w = slot9
		 75	[  0]	TSETS	 10	11	0	; slot11.h = slot10
		 76	[  0]	RET1 	 11		2	; return slot11
	289	[  0]	FNEW 	 73		17	; N/A:0-0: 2 args, 2 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	MOV  	  5		1	; slot5 = slot1
		  4	[  0]	CALL 	  2	2	3	; slot2 = uv0"unknown"(slot3, slot4)
		  5	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		  6	[  0]	TSETS	  2	3	11	; uv1"unknown".shopFocusRect = slot2
		  7	[  0]	IST  	   		2	; if slot2
		  8	[  0]	JMP  	  3		1	; 	goto 10
		  9	[  0]	RET0 	  0		1	; return
		 10	[  0]	GGET 	  3		10	; slot3 = _env["love"]
		 11	[  0]	TGETS	  3	3	9	; slot3 = love.graphics
		 12	[  0]	TGETS	  3	3	8	; slot3 = love.graphics.setColor
		 13	[  0]	KSHORT	  5		1	; slot5 = 1
		 14	[  0]	KSHORT	  6		1	; slot6 = 1
		 15	[  0]	KSHORT	  7		1	; slot7 = 1
		 16	[  0]	KSHORT	  8		1	; slot8 = 1
		 17	[  0]	CALL 	  3	1	5	;  = love.graphics.setColor(slot4, slot5, slot6, slot7)
		 18	[  0]	GGET 	  3		10	; slot3 = _env["love"]
		 19	[  0]	TGETS	  3	3	9	; slot3 = love.graphics
		 20	[  0]	TGETS	  3	3	7	; slot3 = love.graphics.rectangle
		 21	[  0]	KSTR 	  5		6	; slot5 = "fill"
		 22	[  0]	GGET 	  6		5	; slot6 = _env["math"]
		 23	[  0]	TGETS	  6	6	4	; slot6 = math.floor
		 24	[  0]	TGETS	  8	2	3	; slot8 = slot2.x
		 25	[  0]	SUBVN	  8	8	0	; slot8 = <unknown table>.x - 6
		 26	[  0]	ADDVN	  8	8	1	; slot8 = slot8 + 0.5
		 27	[  0]	CALL 	  6	2	2	; slot6 = math.floor(slot7)
		 28	[  0]	GGET 	  7		5	; slot7 = _env["math"]
		 29	[  0]	TGETS	  7	7	4	; slot7 = math.floor
		 30	[  0]	TGETS	  9	2	2	; slot9 = slot2.y
		 31	[  0]	SUBVN	  9	9	0	; slot9 = <unknown table>.y - 6
		 32	[  0]	ADDVN	  9	9	1	; slot9 = slot9 + 0.5
		 33	[  0]	CALL 	  7	2	2	; slot7 = math.floor(slot8)
		 34	[  0]	GGET 	  8		5	; slot8 = _env["math"]
		 35	[  0]	TGETS	  8	8	4	; slot8 = math.floor
		 36	[  0]	TGETS	 10	2	1	; slot10 = slot2.w
		 37	[  0]	ADDVN	 10	10	2	; slot10 = <unknown table>.w + 12
		 38	[  0]	ADDVN	 10	10	1	; slot10 = slot10 + 0.5
		 39	[  0]	CALL 	  8	2	2	; slot8 = math.floor(slot9)
		 40	[  0]	GGET 	  9		5	; slot9 = _env["math"]
		 41	[  0]	TGETS	  9	9	4	; slot9 = math.floor
		 42	[  0]	TGETS	 11	2	0	; slot11 = slot2.h
		 43	[  0]	ADDVN	 11	11	2	; slot11 = <unknown table>.h + 12
		 44	[  0]	ADDVN	 11	11	1	; slot11 = slot11 + 0.5
		 45	[  0]	CALL 	  9	0	2	; MULTRES = math.floor(slot10)
		 46	[  0]	CALLM	  3	1	4	;  = love.graphics.rectangle(slot4, slot5, math.floor, math.floor, ...MULTRES)
		 47	[  0]	RET0 	  0		1	; return
	290	[  0]	FNEW 	 74		16	; N/A:0-0: 1 args, 0 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			[h] = 23,
			[w] = 44,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		3	; 	goto 6
		  3	[  0]	TGETS	  1	0	4	; slot1 = slot0.jungsuDisplay
		  4	[  0]	IST  	   		1	; if <unknown table>.jungsuDisplay
		  5	[  0]	JMP  	  2		1	; 	goto 7
		  6	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  7	[  0]	GGET 	  2		3	; slot2 = _env["tonumber"]
		  8	[  0]	TGETS	  4	1	2	; slot4 = slot1.x
		  9	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 10	[  0]	IST  	   		2	; if slot2
		 11	[  0]	JMP  	  3		1	; 	goto 13
		 12	[  0]	KSHORT	  2		400	; slot2 = 400
		 13	[  0]	GGET 	  3		3	; slot3 = _env["tonumber"]
		 14	[  0]	TGETS	  5	1	1	; slot5 = slot1.y
		 15	[  0]	CALL 	  3	2	2	; slot3 = tonumber(<unknown table>.x)
		 16	[  0]	IST  	   		3	; if tonumber
		 17	[  0]	JMP  	  4		1	; 	goto 19
		 18	[  0]	KSHORT	  3		10	; slot3 = 10
		 19	[  0]	TDUP 	  4		0	; slot4 = copy table#k0
		 20	[  0]	SUBVN	  5	2	0	; slot5 = slot2 - 22
		 21	[  0]	TSETS	  5	4	2	; slot4.x = slot5
		 22	[  0]	SUBVN	  5	3	1	; slot5 = slot3 - 6
		 23	[  0]	TSETS	  5	4	1	; slot4.y = slot5
		 24	[  0]	RET1 	  4		2	; return slot4
	291	[  0]	FNEW 	 75		15	; N/A:0-0: 1 args, 1 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  1		0	; slot1 = slot0; if not slot0
		  2	[  0]	JMP  	  1		1	; 	goto 4
		  3	[  0]	TGETS	  1	0	1	; slot1 = slot0._tutorialShopOfferRects
		  4	[  0]	ISF  	   		1	; if not <unknown table>._tutorialShopOfferRects
		  5	[  0]	JMP  	  2		8	; 	goto 14
		  6	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  7	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".shopTargetIndex
		  8	[  0]	IST  	   		2	; if uv0"unknown".shopTargetIndex
		  9	[  0]	JMP  	  3		1	; 	goto 11
		 10	[  0]	KSHORT	  2		1	; slot2 = 1
		 11	[  0]	TGETV	  2	1	2	; slot2 = <unknown table>._tutorialShopOfferRects[slot2]
		 12	[  0]	IST  	   		2	; if slot2
		 13	[  0]	JMP  	  3		1	; 	goto 15
		 14	[  0]	KPRI 	  2		0	; slot2 = nil
		 15	[  0]	RET1 	  2		2	; return slot2
	292	[  0]	FNEW 	 76		14	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		3	; 	goto 6
		  3	[  0]	TGETS	  1	0	0	; slot1 = slot0._tutorialPurchasedItemRect
		  4	[  0]	IST  	   		1	; if <unknown table>._tutorialPurchasedItemRect
		  5	[  0]	JMP  	  2		1	; 	goto 7
		  6	[  0]	KPRI 	  1		0	; slot1 = nil
		  7	[  0]	RET1 	  1		2	; return slot1
	293	[  0]	FNEW 	 77		13	; N/A:0-0: 2 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		ktable#5 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  2		1	; slot2 = slot1; if not slot1
		  2	[  0]	JMP  	  2		1	; 	goto 4
		  3	[  0]	TGETS	  2	1	12	; slot2 = slot1.right
		  4	[  0]	ISFC 	  3		0	; slot3 = slot0; if not slot0
		  5	[  0]	JMP  	  3		5	; 	goto 11
		  6	[  0]	TGETS	  3	0	11	; slot3 = slot0.battlefieldSections
		  7	[  0]	ISF  	   		3	; if not <unknown table>.battlefieldSections
		  8	[  0]	JMP  	  4		2	; 	goto 11
		  9	[  0]	TGETS	  3	0	11	; slot3 = slot0.battlefieldSections
		 10	[  0]	TGETS	  3	3	10	; slot3 = <unknown table>.battlefieldSections.battlefield
		 11	[  0]	ISF  	   		2	; if not <unknown table>.right
		 12	[  0]	JMP  	  4		2	; 	goto 15
		 13	[  0]	IST  	   		3	; if <unknown table>.battlefieldSections.battlefield
		 14	[  0]	JMP  	  4		2	; 	goto 17
		 15	[  0]	KPRI 	  4		0	; slot4 = nil
		 16	[  0]	RET1 	  4		2	; return slot4
		 17	[  0]	GGET 	  4		9	; slot4 = _env["tonumber"]
		 18	[  0]	TGETS	  6	3	8	; slot6 = <unknown table>.battlefieldSections.battlefield.scale
		 19	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		 20	[  0]	IST  	   		4	; if tonumber
		 21	[  0]	JMP  	  5		1	; 	goto 23
		 22	[  0]	KSHORT	  4		1	; slot4 = 1
		 23	[  0]	TDUP 	  5		5	; slot5 = copy table#k5
		 24	[  0]	TGETS	  6	2	7	; slot6 = <unknown table>.right.x
		 25	[  0]	ISF  	   		0	; if not slot0
		 26	[  0]	JMP  	  7		5	; 	goto 32
		 27	[  0]	TGETS	  7	0	6	; slot7 = slot0._shopMode
		 28	[  0]	ISF  	   		7	; if not <unknown table>._shopMode
		 29	[  0]	JMP  	  8		2	; 	goto 32
		 30	[  0]	KSHORT	  7		382	; slot7 = 382
		 31	[  0]	JMP  	  8		6	; 	goto 38
		 32	[  0]	GGET 	  7		9	; slot7 = _env["tonumber"]
		 33	[  0]	TGETS	  9	3	7	; slot9 = <unknown table>.battlefieldSections.battlefield.x
		 34	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 35	[  0]	IST  	   		7	; if tonumber
		 36	[  0]	JMP  	  8		1	; 	goto 38
		 37	[  0]	KSHORT	  7		376	; slot7 = 376
		 38	[  0]	ADDVV	  6	6	7	; slot6 = <unknown table>.right.x + slot7
		 39	[  0]	TSETS	  6	5	7	; slot5.x = slot6
		 40	[  0]	TGETS	  6	2	4	; slot6 = <unknown table>.right.y
		 41	[  0]	GGET 	  7		9	; slot7 = _env["tonumber"]
		 42	[  0]	TGETS	  9	3	4	; slot9 = <unknown table>.battlefieldSections.battlefield.y
		 43	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 44	[  0]	IST  	   		7	; if tonumber
		 45	[  0]	JMP  	  8		1	; 	goto 47
		 46	[  0]	KSHORT	  7		230	; slot7 = 230
		 47	[  0]	ADDVV	  6	6	7	; slot6 = <unknown table>.right.y + slot7
		 48	[  0]	TSETS	  6	5	4	; slot5.y = slot6
		 49	[  0]	GGET 	  6		9	; slot6 = _env["tonumber"]
		 50	[  0]	TGETS	  8	3	3	; slot8 = <unknown table>.battlefieldSections.battlefield.focusW
		 51	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
		 52	[  0]	IST  	   		6	; if tonumber
		 53	[  0]	JMP  	  7		1	; 	goto 55
		 54	[  0]	KSHORT	  6		40	; slot6 = 40
		 55	[  0]	MULVV	  6	6	4	; slot6 = slot6 * slot4
		 56	[  0]	TSETS	  6	5	2	; slot5.w = slot6
		 57	[  0]	GGET 	  6		9	; slot6 = _env["tonumber"]
		 58	[  0]	TGETS	  8	3	1	; slot8 = <unknown table>.battlefieldSections.battlefield.focusH
		 59	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
		 60	[  0]	IST  	   		6	; if tonumber
		 61	[  0]	JMP  	  7		1	; 	goto 63
		 62	[  0]	KSHORT	  6		32	; slot6 = 32
		 63	[  0]	MULVV	  6	6	4	; slot6 = slot6 * slot4
		 64	[  0]	TSETS	  6	5	0	; slot5.h = slot6
		 65	[  0]	RET1 	  5		2	; return slot5
	294	[  0]	FNEW 	 78		12	; N/A:0-0: 2 args, 0 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  2		1	; 	goto 4
		  3	[  0]	RET0 	  0		1	; return
		  4	[  0]	GGET 	  2		11	; slot2 = _env["tonumber"]
		  5	[  0]	MOV  	  4		1	; slot4 = slot1
		  6	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		  7	[  0]	ISTC 	  1		2	; slot1 = slot2; if slot2
		  8	[  0]	JMP  	  3		1	; 	goto 10
		  9	[  0]	KSHORT	  1		6	; slot1 = 6
		 10	[  0]	GGET 	  2		10	; slot2 = _env["love"]
		 11	[  0]	TGETS	  2	2	9	; slot2 = love.graphics
		 12	[  0]	TGETS	  2	2	8	; slot2 = love.graphics.setColor
		 13	[  0]	KSHORT	  4		1	; slot4 = 1
		 14	[  0]	KSHORT	  5		1	; slot5 = 1
		 15	[  0]	KSHORT	  6		1	; slot6 = 1
		 16	[  0]	KSHORT	  7		1	; slot7 = 1
		 17	[  0]	CALL 	  2	1	5	;  = love.graphics.setColor(slot3, slot4, slot5, slot6)
		 18	[  0]	GGET 	  2		10	; slot2 = _env["love"]
		 19	[  0]	TGETS	  2	2	9	; slot2 = love.graphics
		 20	[  0]	TGETS	  2	2	7	; slot2 = love.graphics.rectangle
		 21	[  0]	KSTR 	  4		6	; slot4 = "fill"
		 22	[  0]	GGET 	  5		5	; slot5 = _env["math"]
		 23	[  0]	TGETS	  5	5	4	; slot5 = math.floor
		 24	[  0]	TGETS	  7	0	3	; slot7 = slot0.x
		 25	[  0]	SUBVV	  7	7	1	; slot7 = <unknown table>.x - slot1
		 26	[  0]	ADDVN	  7	7	0	; slot7 = slot7 + 0.5
		 27	[  0]	CALL 	  5	2	2	; slot5 = math.floor(slot6)
		 28	[  0]	GGET 	  6		5	; slot6 = _env["math"]
		 29	[  0]	TGETS	  6	6	4	; slot6 = math.floor
		 30	[  0]	TGETS	  8	0	2	; slot8 = slot0.y
		 31	[  0]	SUBVV	  8	8	1	; slot8 = <unknown table>.y - slot1
		 32	[  0]	ADDVN	  8	8	0	; slot8 = slot8 + 0.5
		 33	[  0]	CALL 	  6	2	2	; slot6 = math.floor(slot7)
		 34	[  0]	GGET 	  7		5	; slot7 = _env["math"]
		 35	[  0]	TGETS	  7	7	4	; slot7 = math.floor
		 36	[  0]	TGETS	  9	0	1	; slot9 = slot0.w
		 37	[  0]	MULVN	 10	1	1	; slot10 = slot1 * 2
		 38	[  0]	ADDVV	  9	9	10	; slot9 = <unknown table>.w + slot10
		 39	[  0]	ADDVN	  9	9	0	; slot9 = slot9 + 0.5
		 40	[  0]	CALL 	  7	2	2	; slot7 = math.floor(slot8)
		 41	[  0]	GGET 	  8		5	; slot8 = _env["math"]
		 42	[  0]	TGETS	  8	8	4	; slot8 = math.floor
		 43	[  0]	TGETS	 10	0	0	; slot10 = slot0.h
		 44	[  0]	MULVN	 11	1	1	; slot11 = slot1 * 2
		 45	[  0]	ADDVV	 10	10	11	; slot10 = <unknown table>.h + slot11
		 46	[  0]	ADDVN	 10	10	0	; slot10 = slot10 + 0.5
		 47	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 48	[  0]	CALLM	  2	1	4	;  = love.graphics.rectangle(slot3, slot4, math.floor, math.floor, ...MULTRES)
		 49	[  0]	RET0 	  0		1	; return
	295	[  0]	FNEW 	 79		10	; N/A:0-0: 4 args, 2 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  2	[  0]	TGETS	  4	4	4	; slot4 = uv0"unknown".isShopReturnStep
		  3	[  0]	CALL 	  4	2	1	; slot4 = uv0"unknown".isShopReturnStep()
		  4	[  0]	IST  	   		4	; if uv0"unknown".isShopReturnStep
		  5	[  0]	JMP  	  4		2	; 	goto 8
		  6	[  0]	KPRI 	  4		1	; slot4 = false
		  7	[  0]	RET1 	  4		2	; return slot4
		  8	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		  9	[  0]	MOV  	  6		0	; slot6 = slot0
		 10	[  0]	MOV  	  7		1	; slot7 = slot1
		 11	[  0]	CALL 	  4	2	3	; slot4 = uv1"unknown"(slot5, slot6)
		 12	[  0]	KSHORT	  5		7	; slot5 = 7
		 13	[  0]	ISF  	   		4	; if not uv1"unknown"
		 14	[  0]	JMP  	  6		20	; 	goto 35
		 15	[  0]	TGETS	  6	4	3	; slot6 = uv1"unknown".x
		 16	[  0]	SUBVV	  6	6	5	; slot6 = uv1"unknown".x - slot5
		 17	[  0]	ISGT 	  6		2	; if slot6 > slot2
		 18	[  0]	JMP  	  6		16	; 	goto 35
		 19	[  0]	TGETS	  6	4	3	; slot6 = uv1"unknown".x
		 20	[  0]	TGETS	  7	4	2	; slot7 = uv1"unknown".w
		 21	[  0]	ADDVV	  6	6	7	; slot6 = uv1"unknown".x + uv1"unknown".w
		 22	[  0]	ADDVV	  6	6	5	; slot6 = slot6 + slot5
		 23	[  0]	ISGT 	  2		6	; if slot2 > slot6
		 24	[  0]	JMP  	  6		10	; 	goto 35
		 25	[  0]	TGETS	  6	4	1	; slot6 = uv1"unknown".y
		 26	[  0]	SUBVV	  6	6	5	; slot6 = uv1"unknown".y - slot5
		 27	[  0]	ISGT 	  6		3	; if slot6 > slot3
		 28	[  0]	JMP  	  6		6	; 	goto 35
		 29	[  0]	TGETS	  6	4	1	; slot6 = uv1"unknown".y
		 30	[  0]	TGETS	  7	4	0	; slot7 = uv1"unknown".h
		 31	[  0]	ADDVV	  6	6	7	; slot6 = uv1"unknown".y + uv1"unknown".h
		 32	[  0]	ADDVV	  6	6	5	; slot6 = slot6 + slot5
		 33	[  0]	ISLE 	  3		6	; if slot3 <= slot6
		 34	[  0]	JMP  	  6		4	; 	goto 39
		 35	[  0]	KPRI 	  6		1	; slot6 = false
		 36	[  0]	JMP  	  7		3	; 	goto 40
		 37	[  0]	KPRI 	  6		1	; slot6 = false
		 38	[  0]	JMP  	  7		1	; 	goto 40
		 39	[  0]	KPRI 	  6		2	; slot6 = true
		 40	[  0]	RET1 	  6		2	; return slot6
	296	[  0]	TSETS	 79	0	11	; slot0.hitTestBattlefieldReturn = slot79
	297	[  0]	FNEW 	 79		8	; N/A:0-0: 4 args, 2 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  2	[  0]	TGETS	  4	4	4	; slot4 = uv0"unknown".isShopIntroStep
		  3	[  0]	CALL 	  4	2	1	; slot4 = uv0"unknown".isShopIntroStep()
		  4	[  0]	IST  	   		4	; if uv0"unknown".isShopIntroStep
		  5	[  0]	JMP  	  4		2	; 	goto 8
		  6	[  0]	KPRI 	  4		1	; slot4 = false
		  7	[  0]	RET1 	  4		2	; return slot4
		  8	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		  9	[  0]	MOV  	  6		0	; slot6 = slot0
		 10	[  0]	MOV  	  7		1	; slot7 = slot1
		 11	[  0]	CALL 	  4	2	3	; slot4 = uv1"unknown"(slot5, slot6)
		 12	[  0]	IST  	   		4	; if uv1"unknown"
		 13	[  0]	JMP  	  5		2	; 	goto 16
		 14	[  0]	KPRI 	  5		1	; slot5 = false
		 15	[  0]	RET1 	  5		2	; return slot5
		 16	[  0]	KSHORT	  5		8	; slot5 = 8
		 17	[  0]	TGETS	  6	4	3	; slot6 = uv1"unknown".x
		 18	[  0]	SUBVV	  6	6	5	; slot6 = uv1"unknown".x - slot5
		 19	[  0]	ISGT 	  6		2	; if slot6 > slot2
		 20	[  0]	JMP  	  6		16	; 	goto 37
		 21	[  0]	TGETS	  6	4	3	; slot6 = uv1"unknown".x
		 22	[  0]	TGETS	  7	4	2	; slot7 = uv1"unknown".w
		 23	[  0]	ADDVV	  6	6	7	; slot6 = uv1"unknown".x + uv1"unknown".w
		 24	[  0]	ADDVV	  6	6	5	; slot6 = slot6 + slot5
		 25	[  0]	ISGT 	  2		6	; if slot2 > slot6
		 26	[  0]	JMP  	  6		10	; 	goto 37
		 27	[  0]	TGETS	  6	4	1	; slot6 = uv1"unknown".y
		 28	[  0]	SUBVV	  6	6	5	; slot6 = uv1"unknown".y - slot5
		 29	[  0]	ISGT 	  6		3	; if slot6 > slot3
		 30	[  0]	JMP  	  6		6	; 	goto 37
		 31	[  0]	TGETS	  6	4	1	; slot6 = uv1"unknown".y
		 32	[  0]	TGETS	  7	4	0	; slot7 = uv1"unknown".h
		 33	[  0]	ADDVV	  6	6	7	; slot6 = uv1"unknown".y + uv1"unknown".h
		 34	[  0]	ADDVV	  6	6	5	; slot6 = slot6 + slot5
		 35	[  0]	ISLE 	  3		6	; if slot3 <= slot6
		 36	[  0]	JMP  	  6		2	; 	goto 39
		 37	[  0]	KPRI 	  6		1	; slot6 = false
		 38	[  0]	JMP  	  7		1	; 	goto 40
		 39	[  0]	KPRI 	  6		2	; slot6 = true
		 40	[  0]	RET1 	  6		2	; return slot6
	298	[  0]	TSETS	 79	0	9	; slot0.hitTestShopIntro = slot79
	299	[  0]	FNEW 	 79		7	; N/A:0-0: 3 args, 0 upvalues, 23 slots
		
		;;;; constant tables ;;;;
		ktable#7 = [
			]
		
		
		ktable#8 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		23	; slot3 = _env["rawget"]
		  2	[  0]	GGET 	  5		22	; slot5 = _env["_G"]
		  3	[  0]	KSTR 	  6		21	; slot6 = "battlefield"
		  4	[  0]	CALL 	  3	2	3	; slot3 = rawget(slot4, _G)
		  5	[  0]	ISFC 	  4		3	; slot4 = slot3; if not slot3
		  6	[  0]	JMP  	  4		1	; 	goto 8
		  7	[  0]	TGETS	  4	3	20	; slot4 = slot3.classSelect
		  8	[  0]	ISFC 	  5		1	; slot5 = slot1; if not slot1
		  9	[  0]	JMP  	  5		1	; 	goto 11
		 10	[  0]	TGETS	  5	1	19	; slot5 = slot1.right
		 11	[  0]	ISFC 	  6		4	; slot6 = <unknown table>.classSelect; if not <unknown table>.classSelect
		 12	[  0]	JMP  	  6		1	; 	goto 14
		 13	[  0]	TGETS	  6	4	18	; slot6 = <unknown table>.classSelect._tutorialCardRects
		 14	[  0]	IST  	   		6	; if <unknown table>.classSelect._tutorialCardRects
		 15	[  0]	JMP  	  7		69	; 	goto 85
		 16	[  0]	ISF  	   		5	; if not <unknown table>.right
		 17	[  0]	JMP  	  7		67	; 	goto 85
		 18	[  0]	KSHORT	  7		2	; slot7 = 2
		 19	[  0]	GGET 	  8		17	; slot8 = _env["math"]
		 20	[  0]	TGETS	  8	8	16	; slot8 = math.floor
		 21	[  0]	GGET 	 10		17	; slot10 = _env["math"]
		 22	[  0]	TGETS	 10	10	15	; slot10 = math.min
		 23	[  0]	KSHORT	 12		180	; slot12 = 180
		 24	[  0]	TGETS	 13	5	14	; slot13 = <unknown table>.right.w
		 25	[  0]	MULVN	 13	13	0	; slot13 = <unknown table>.right.w * 0.28
		 26	[  0]	CALL 	 10	0	3	; MULTRES = math.min(slot11, slot12)
		 27	[  0]	CALLM	  8	2	0	; slot8 = math.floor(, ...MULTRES)
		 28	[  0]	GGET 	  9		17	; slot9 = _env["math"]
		 29	[  0]	TGETS	  9	9	16	; slot9 = math.floor
		 30	[  0]	GGET 	 11		17	; slot11 = _env["math"]
		 31	[  0]	TGETS	 11	11	15	; slot11 = math.min
		 32	[  0]	KSHORT	 13		320	; slot13 = 320
		 33	[  0]	TGETS	 14	5	13	; slot14 = <unknown table>.right.h
		 34	[  0]	MULVN	 14	14	1	; slot14 = <unknown table>.right.h * 0.8
		 35	[  0]	CALL 	 11	0	3	; MULTRES = math.min(slot12, slot13)
		 36	[  0]	CALLM	  9	2	0	; slot9 = math.floor(, ...MULTRES)
		 37	[  0]	GGET 	 10		17	; slot10 = _env["math"]
		 38	[  0]	TGETS	 10	10	16	; slot10 = math.floor
		 39	[  0]	ISF  	   		0	; if not slot0
		 40	[  0]	JMP  	 12		7	; 	goto 48
		 41	[  0]	TGETS	 12	0	12	; slot12 = slot0.classCard
		 42	[  0]	ISF  	   		12	; if not <unknown table>.classCard
		 43	[  0]	JMP  	 13		4	; 	goto 48
		 44	[  0]	TGETS	 12	0	12	; slot12 = slot0.classCard
		 45	[  0]	TGETS	 12	12	11	; slot12 = <unknown table>.classCard.gapMul
		 46	[  0]	IST  	   		12	; if <unknown table>.classCard.gapMul
		 47	[  0]	JMP  	 13		1	; 	goto 49
		 48	[  0]	KNUM 	 12		2	; slot12 = 0.2
		 49	[  0]	MULVV	 12	8	12	; slot12 = math.floor * slot12
		 50	[  0]	CALL 	 10	2	2	; slot10 = math.floor(math.min)
		 51	[  0]	MULVV	 11	8	7	; slot11 = math.floor * slot7
		 52	[  0]	ADDVV	 11	11	10	; slot11 = slot11 + math.floor
		 53	[  0]	TGETS	 12	5	10	; slot12 = <unknown table>.right.x
		 54	[  0]	GGET 	 13		17	; slot13 = _env["math"]
		 55	[  0]	TGETS	 13	13	16	; slot13 = math.floor
		 56	[  0]	TGETS	 15	5	14	; slot15 = <unknown table>.right.w
		 57	[  0]	SUBVV	 15	15	11	; slot15 = <unknown table>.right.w - slot11
		 58	[  0]	DIVVN	 15	15	3	; slot15 = slot15 / 2
		 59	[  0]	CALL 	 13	2	2	; slot13 = math.floor(slot14)
		 60	[  0]	ADDVV	 12	12	13	; slot12 = <unknown table>.right.x + math.floor
		 61	[  0]	TGETS	 13	5	9	; slot13 = <unknown table>.right.y
		 62	[  0]	GGET 	 14		17	; slot14 = _env["math"]
		 63	[  0]	TGETS	 14	14	16	; slot14 = math.floor
		 64	[  0]	TGETS	 16	5	13	; slot16 = <unknown table>.right.h
		 65	[  0]	SUBVV	 16	16	9	; slot16 = <unknown table>.right.h - math.floor
		 66	[  0]	DIVVN	 16	16	3	; slot16 = slot16 / 2
		 67	[  0]	CALL 	 14	2	2	; slot14 = math.floor(slot15)
		 68	[  0]	ADDVV	 13	13	14	; slot13 = <unknown table>.right.y + math.floor
		 69	[  0]	TNEW 	 14		3	; slot14 = new table( array: 3, dict: 1)
		 70	[  0]	TDUP 	 15		8	; slot15 = copy table#k8
		 71	[  0]	TSETS	 12	15	10	; slot15.x = slot12
		 72	[  0]	TSETS	 13	15	9	; slot15.y = slot13
		 73	[  0]	TSETS	  8	15	14	; slot15.w = math.floor
		 74	[  0]	TSETS	  9	15	13	; slot15.h = math.floor
		 75	[  0]	TSETB	 15	14	1	; slot14[1] = slot15
		 76	[  0]	TDUP 	 15		7	; slot15 = copy table#k7
		 77	[  0]	ADDVV	 16	12	8	; slot16 = slot12 + math.floor
		 78	[  0]	ADDVV	 16	16	10	; slot16 = slot16 + math.floor
		 79	[  0]	TSETS	 16	15	10	; slot15.x = slot16
		 80	[  0]	TSETS	 13	15	9	; slot15.y = slot13
		 81	[  0]	TSETS	  8	15	14	; slot15.w = math.floor
		 82	[  0]	TSETS	  9	15	13	; slot15.h = math.floor
		 83	[  0]	TSETB	 15	14	2	; slot14[2] = slot15
		 84	[  0]	MOV  	  6		14	; slot6 = slot14
		 85	[  0]	IST  	   		6	; if slot6
		 86	[  0]	JMP  	  7		1	; 	goto 88
		 87	[  0]	RET0 	  0		1	; return
		 88	[  0]	GGET 	  7		6	; slot7 = _env["love"]
		 89	[  0]	TGETS	  7	7	5	; slot7 = love.graphics
		 90	[  0]	TGETS	  7	7	4	; slot7 = love.graphics.setColor
		 91	[  0]	KSHORT	  9		1	; slot9 = 1
		 92	[  0]	KSHORT	 10		1	; slot10 = 1
		 93	[  0]	KSHORT	 11		1	; slot11 = 1
		 94	[  0]	KSHORT	 12		1	; slot12 = 1
		 95	[  0]	CALL 	  7	1	5	;  = love.graphics.setColor(math.floor, slot9, slot10, slot11)
		 96	[  0]	KSHORT	  7		1	; slot7 = 1
		 97	[  0]	KSHORT	  8		2	; slot8 = 2
		 98	[  0]	KSHORT	  9		1	; slot9 = 1
		 99	[  0]	FORI 	  7		51	; for slot10 = slot7,slot8,slot9 else goto 151
		100	[  0]	ISNES	  2		3	; if slot2 ~= "skill"
		101	[  0]	JMP  	 11		9	; 	goto 111
		102	[  0]	ISF  	   		4	; if not <unknown table>.classSelect
		103	[  0]	JMP  	 11		7	; 	goto 111
		104	[  0]	TGETS	 11	4	2	; slot11 = <unknown table>.classSelect._tutorialSkillRects
		105	[  0]	ISF  	   		11	; if not <unknown table>.classSelect._tutorialSkillRects
		106	[  0]	JMP  	 12		4	; 	goto 111
		107	[  0]	TGETS	 11	4	2	; slot11 = <unknown table>.classSelect._tutorialSkillRects
		108	[  0]	TGETV	 11	11	10	; slot11 = <unknown table>.classSelect._tutorialSkillRects[slot10]
		109	[  0]	IST  	   		11	; if slot11
		110	[  0]	JMP  	 12		1	; 	goto 112
		111	[  0]	TGETV	 11	6	10	; slot11 = slot6[slot10]
		112	[  0]	ISF  	   		11	; if not slot11
		113	[  0]	JMP  	 12		36	; 	goto 150
		114	[  0]	ISNES	  2		3	; if slot2 ~= "skill"
		115	[  0]	JMP  	 12		2	; 	goto 118
		116	[  0]	KSHORT	 12		5	; slot12 = 5
		117	[  0]	JMP  	 13		1	; 	goto 119
		118	[  0]	KSHORT	 12		8	; slot12 = 8
		119	[  0]	GGET 	 13		6	; slot13 = _env["love"]
		120	[  0]	TGETS	 13	13	5	; slot13 = love.graphics
		121	[  0]	TGETS	 13	13	1	; slot13 = love.graphics.rectangle
		122	[  0]	KSTR 	 15		0	; slot15 = "fill"
		123	[  0]	GGET 	 16		17	; slot16 = _env["math"]
		124	[  0]	TGETS	 16	16	16	; slot16 = math.floor
		125	[  0]	TGETS	 18	11	10	; slot18 = slot11.x
		126	[  0]	SUBVV	 18	18	12	; slot18 = <unknown table>.x - slot12
		127	[  0]	ADDVN	 18	18	4	; slot18 = slot18 + 0.5
		128	[  0]	CALL 	 16	2	2	; slot16 = math.floor(slot17)
		129	[  0]	GGET 	 17		17	; slot17 = _env["math"]
		130	[  0]	TGETS	 17	17	16	; slot17 = math.floor
		131	[  0]	TGETS	 19	11	9	; slot19 = slot11.y
		132	[  0]	SUBVV	 19	19	12	; slot19 = <unknown table>.y - slot12
		133	[  0]	ADDVN	 19	19	4	; slot19 = slot19 + 0.5
		134	[  0]	CALL 	 17	2	2	; slot17 = math.floor(slot18)
		135	[  0]	GGET 	 18		17	; slot18 = _env["math"]
		136	[  0]	TGETS	 18	18	16	; slot18 = math.floor
		137	[  0]	TGETS	 20	11	14	; slot20 = slot11.w
		138	[  0]	MULVN	 21	12	3	; slot21 = slot12 * 2
		139	[  0]	ADDVV	 20	20	21	; slot20 = <unknown table>.w + slot21
		140	[  0]	ADDVN	 20	20	4	; slot20 = slot20 + 0.5
		141	[  0]	CALL 	 18	2	2	; slot18 = math.floor(slot19)
		142	[  0]	GGET 	 19		17	; slot19 = _env["math"]
		143	[  0]	TGETS	 19	19	16	; slot19 = math.floor
		144	[  0]	TGETS	 21	11	13	; slot21 = slot11.h
		145	[  0]	MULVN	 22	12	3	; slot22 = slot12 * 2
		146	[  0]	ADDVV	 21	21	22	; slot21 = <unknown table>.h + slot22
		147	[  0]	ADDVN	 21	21	4	; slot21 = slot21 + 0.5
		148	[  0]	CALL 	 19	0	2	; MULTRES = math.floor(slot20)
		149	[  0]	CALLM	 13	1	4	;  = love.graphics.rectangle(slot14, slot15, math.floor, math.floor, ...MULTRES)
		150	[  0]	FORL 	  7		-51	; slot10 = slot10 + slot9; if cmp(slot10, sign slot9,  slot8) goto 100
		151	[  0]	RET0 	  0		1	; return
	300	[  0]	FNEW 	 80		6	; N/A:0-0: 1 args, 0 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		7	; 	goto 10
		  3	[  0]	TGETS	  1	0	14	; slot1 = slot0.tutorial
		  4	[  0]	ISF  	   		1	; if not <unknown table>.tutorial
		  5	[  0]	JMP  	  2		4	; 	goto 10
		  6	[  0]	TGETS	  1	0	14	; slot1 = slot0.tutorial
		  7	[  0]	TGETS	  1	1	13	; slot1 = <unknown table>.tutorial.coreCounterFocus
		  8	[  0]	IST  	   		1	; if <unknown table>.tutorial.coreCounterFocus
		  9	[  0]	JMP  	  2		1	; 	goto 11
		 10	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		 11	[  0]	ISF  	   		0	; if not slot0
		 12	[  0]	JMP  	  2		3	; 	goto 16
		 13	[  0]	TGETS	  2	0	12	; slot2 = slot0.scrollIntroAnim
		 14	[  0]	IST  	   		2	; if <unknown table>.scrollIntroAnim
		 15	[  0]	JMP  	  3		1	; 	goto 17
		 16	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		 17	[  0]	GGET 	  3		11	; slot3 = _env["rawget"]
		 18	[  0]	GGET 	  5		10	; slot5 = _env["_G"]
		 19	[  0]	KSTR 	  6		12	; slot6 = "scrollIntroAnim"
		 20	[  0]	CALL 	  3	2	3	; slot3 = rawget(slot4, _G)
		 21	[  0]	GGET 	  4		9	; slot4 = _env["tonumber"]
		 22	[  0]	TGETS	  6	2	8	; slot6 = slot2.scale
		 23	[  0]	CALL 	  4	2	2	; slot4 = tonumber(_G)
		 24	[  0]	IST  	   		4	; if tonumber
		 25	[  0]	JMP  	  5		1	; 	goto 27
		 26	[  0]	KSHORT	  4		2	; slot4 = 2
		 27	[  0]	MULNV	  5	4	0	; slot5 = 21 * slot4
		 28	[  0]	MULNV	  6	4	1	; slot6 = 20 * slot4
		 29	[  0]	GGET 	  7		9	; slot7 = _env["tonumber"]
		 30	[  0]	TGETS	  9	1	7	; slot9 = slot1.x
		 31	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 32	[  0]	GGET 	  8		9	; slot8 = _env["tonumber"]
		 33	[  0]	TGETS	 10	1	6	; slot10 = slot1.y
		 34	[  0]	CALL 	  8	2	2	; slot8 = tonumber(<unknown table>.x)
		 35	[  0]	IST  	   		7	; if tonumber
		 36	[  0]	JMP  	  9		6	; 	goto 43
		 37	[  0]	GGET 	  9		9	; slot9 = _env["tonumber"]
		 38	[  0]	TGETS	 11	2	7	; slot11 = slot2.x
		 39	[  0]	CALL 	  9	2	2	; slot9 = tonumber(<unknown table>.y)
		 40	[  0]	ISTC 	  7		9	; slot7 = tonumber; if tonumber
		 41	[  0]	JMP  	 10		1	; 	goto 43
		 42	[  0]	KSHORT	  7		167	; slot7 = 167
		 43	[  0]	IST  	   		8	; if tonumber
		 44	[  0]	JMP  	  9		15	; 	goto 60
		 45	[  0]	GGET 	  9		9	; slot9 = _env["tonumber"]
		 46	[  0]	TGETS	 11	2	6	; slot11 = slot2.y
		 47	[  0]	CALL 	  9	2	2	; slot9 = tonumber(<unknown table>.y)
		 48	[  0]	IST  	   		9	; if tonumber
		 49	[  0]	JMP  	 10		1	; 	goto 51
		 50	[  0]	KSHORT	  9		65520	; slot9 = 65520
		 51	[  0]	ISF  	   		3	; if not slot3
		 52	[  0]	JMP  	 10		5	; 	goto 58
		 53	[  0]	GGET 	 10		9	; slot10 = _env["tonumber"]
		 54	[  0]	TGETS	 12	3	5	; slot12 = slot3.slideY
		 55	[  0]	CALL 	 10	2	2	; slot10 = tonumber(<unknown table>.y)
		 56	[  0]	IST  	   		10	; if tonumber
		 57	[  0]	JMP  	 11		1	; 	goto 59
		 58	[  0]	KSHORT	 10		0	; slot10 = 0
		 59	[  0]	ADDVV	  8	9	10	; slot8 = slot9 + slot10
		 60	[  0]	GGET 	  9		9	; slot9 = _env["tonumber"]
		 61	[  0]	TGETS	 11	1	4	; slot11 = slot1.w
		 62	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
		 63	[  0]	IST  	   		9	; if tonumber
		 64	[  0]	JMP  	 10		1	; 	goto 66
		 65	[  0]	MOV  	  9		5	; slot9 = slot5
		 66	[  0]	GGET 	 10		9	; slot10 = _env["tonumber"]
		 67	[  0]	TGETS	 12	1	3	; slot12 = slot1.h
		 68	[  0]	CALL 	 10	2	2	; slot10 = tonumber(<unknown table>.w)
		 69	[  0]	IST  	   		10	; if tonumber
		 70	[  0]	JMP  	 11		1	; 	goto 72
		 71	[  0]	MOV  	 10		6	; slot10 = slot6
		 72	[  0]	TDUP 	 11		0	; slot11 = copy table#k0
		 73	[  0]	GGET 	 12		2	; slot12 = _env["math"]
		 74	[  0]	TGETS	 12	12	1	; slot12 = math.floor
		 75	[  0]	ADDVN	 14	7	2	; slot14 = slot7 + 0.5
		 76	[  0]	CALL 	 12	2	2	; slot12 = math.floor(slot13)
		 77	[  0]	TSETS	 12	11	7	; slot11.x = math.floor
		 78	[  0]	GGET 	 12		2	; slot12 = _env["math"]
		 79	[  0]	TGETS	 12	12	1	; slot12 = math.floor
		 80	[  0]	ADDVN	 14	8	2	; slot14 = slot8 + 0.5
		 81	[  0]	CALL 	 12	2	2	; slot12 = math.floor(slot13)
		 82	[  0]	TSETS	 12	11	6	; slot11.y = math.floor
		 83	[  0]	GGET 	 12		2	; slot12 = _env["math"]
		 84	[  0]	TGETS	 12	12	1	; slot12 = math.floor
		 85	[  0]	ADDVN	 14	9	2	; slot14 = slot9 + 0.5
		 86	[  0]	CALL 	 12	2	2	; slot12 = math.floor(slot13)
		 87	[  0]	TSETS	 12	11	4	; slot11.w = math.floor
		 88	[  0]	GGET 	 12		2	; slot12 = _env["math"]
		 89	[  0]	TGETS	 12	12	1	; slot12 = math.floor
		 90	[  0]	ADDVN	 14	10	2	; slot14 = slot10 + 0.5
		 91	[  0]	CALL 	 12	2	2	; slot12 = math.floor(slot13)
		 92	[  0]	TSETS	 12	11	3	; slot11.h = math.floor
		 93	[  0]	RET1 	 11		2	; return slot11
	301	[  0]	FNEW 	 81		5	; N/A:0-0: 1 args, 1 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		  4	[  0]	ISF  	   		0	; if not slot0
		  5	[  0]	JMP  	  2		7	; 	goto 13
		  6	[  0]	TGETS	  2	0	12	; slot2 = slot0.tutorial
		  7	[  0]	ISF  	   		2	; if not <unknown table>.tutorial
		  8	[  0]	JMP  	  3		4	; 	goto 13
		  9	[  0]	TGETS	  2	0	12	; slot2 = slot0.tutorial
		 10	[  0]	TGETS	  2	2	11	; slot2 = <unknown table>.tutorial.coreCounterFocus
		 11	[  0]	IST  	   		2	; if <unknown table>.tutorial.coreCounterFocus
		 12	[  0]	JMP  	  3		1	; 	goto 14
		 13	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		 14	[  0]	GGET 	  3		10	; slot3 = _env["tonumber"]
		 15	[  0]	TGETS	  5	2	9	; slot5 = slot2.pad
		 16	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		 17	[  0]	IST  	   		3	; if tonumber
		 18	[  0]	JMP  	  4		1	; 	goto 20
		 19	[  0]	KSHORT	  3		3	; slot3 = 3
		 20	[  0]	GGET 	  4		8	; slot4 = _env["love"]
		 21	[  0]	TGETS	  4	4	7	; slot4 = love.graphics
		 22	[  0]	TGETS	  4	4	6	; slot4 = love.graphics.setColor
		 23	[  0]	KSHORT	  6		1	; slot6 = 1
		 24	[  0]	KSHORT	  7		1	; slot7 = 1
		 25	[  0]	KSHORT	  8		1	; slot8 = 1
		 26	[  0]	KSHORT	  9		1	; slot9 = 1
		 27	[  0]	CALL 	  4	1	5	;  = love.graphics.setColor(<unknown table>.pad, slot6, slot7, slot8)
		 28	[  0]	GGET 	  4		8	; slot4 = _env["love"]
		 29	[  0]	TGETS	  4	4	7	; slot4 = love.graphics
		 30	[  0]	TGETS	  4	4	5	; slot4 = love.graphics.rectangle
		 31	[  0]	KSTR 	  6		4	; slot6 = "fill"
		 32	[  0]	TGETS	  7	1	3	; slot7 = slot1.x
		 33	[  0]	SUBVV	  7	7	3	; slot7 = <unknown table>.x - slot3
		 34	[  0]	TGETS	  8	1	2	; slot8 = slot1.y
		 35	[  0]	SUBVV	  8	8	3	; slot8 = <unknown table>.y - slot3
		 36	[  0]	TGETS	  9	1	1	; slot9 = slot1.w
		 37	[  0]	MULVN	 10	3	0	; slot10 = slot3 * 2
		 38	[  0]	ADDVV	  9	9	10	; slot9 = <unknown table>.w + slot10
		 39	[  0]	TGETS	 10	1	0	; slot10 = slot1.h
		 40	[  0]	MULVN	 11	3	0	; slot11 = slot3 * 2
		 41	[  0]	ADDVV	 10	10	11	; slot10 = <unknown table>.h + slot11
		 42	[  0]	CALL 	  4	1	6	;  = love.graphics.rectangle(slot5, slot6, slot7, slot8, slot9)
		 43	[  0]	RET0 	  0		1	; return
	302	[  0]	FNEW 	 82		4	; N/A:0-0: 7 args, 3 upvalues, 37 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			#1: 0.9254901960784314,
			#2: 0.8980392156862745,
			#3: 0.8549019607843137,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  7		20	; slot7 = _env["tonumber"]
		  2	[  0]	TGETS	  9	5	19	; slot9 = slot5.lineGap
		  3	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		  4	[  0]	IST  	   		7	; if tonumber
		  5	[  0]	JMP  	  8		1	; 	goto 7
		  6	[  0]	KSHORT	  7		16	; slot7 = 16
		  7	[  0]	GGET 	  8		20	; slot8 = _env["tonumber"]
		  8	[  0]	TGETS	 10	5	18	; slot10 = slot5.padX
		  9	[  0]	CALL 	  8	2	2	; slot8 = tonumber(<unknown table>.lineGap)
		 10	[  0]	IST  	   		8	; if tonumber
		 11	[  0]	JMP  	  9		1	; 	goto 13
		 12	[  0]	KSHORT	  8		12	; slot8 = 12
		 13	[  0]	GGET 	  9		20	; slot9 = _env["tonumber"]
		 14	[  0]	TGETS	 11	5	17	; slot11 = slot5.padY
		 15	[  0]	CALL 	  9	2	2	; slot9 = tonumber(<unknown table>.padX)
		 16	[  0]	IST  	   		9	; if tonumber
		 17	[  0]	JMP  	 10		1	; 	goto 19
		 18	[  0]	KSHORT	  9		12	; slot9 = 12
		 19	[  0]	GGET 	 10		20	; slot10 = _env["tonumber"]
		 20	[  0]	TGETS	 12	5	16	; slot12 = slot5.iconScale
		 21	[  0]	CALL 	 10	2	2	; slot10 = tonumber(<unknown table>.padY)
		 22	[  0]	IST  	   		10	; if tonumber
		 23	[  0]	JMP  	 11		1	; 	goto 25
		 24	[  0]	KSHORT	 10		1	; slot10 = 1
		 25	[  0]	GGET 	 11		20	; slot11 = _env["tonumber"]
		 26	[  0]	TGETS	 13	5	15	; slot13 = slot5.iconOffsetY
		 27	[  0]	CALL 	 11	2	2	; slot11 = tonumber(<unknown table>.iconScale)
		 28	[  0]	IST  	   		11	; if tonumber
		 29	[  0]	JMP  	 12		1	; 	goto 31
		 30	[  0]	KSHORT	 11		0	; slot11 = 0
		 31	[  0]	TGETS	 12	5	14	; slot12 = slot5.numberColor
		 32	[  0]	IST  	   		12	; if <unknown table>.numberColor
		 33	[  0]	JMP  	 13		7	; 	goto 41
		 34	[  0]	ISFC 	 12		0	; slot12 = slot0; if not slot0
		 35	[  0]	JMP  	 12		5	; 	goto 41
		 36	[  0]	TGETS	 12	0	13	; slot12 = slot0.tutorial
		 37	[  0]	ISF  	   		12	; if not <unknown table>.tutorial
		 38	[  0]	JMP  	 13		2	; 	goto 41
		 39	[  0]	TGETS	 12	0	13	; slot12 = slot0.tutorial
		 40	[  0]	TGETS	 12	12	14	; slot12 = <unknown table>.tutorial.numberColor
		 41	[  0]	ISF  	   		1	; if not slot1
		 42	[  0]	JMP  	 13		8	; 	goto 51
		 43	[  0]	TGETS	 13	1	12	; slot13 = slot1.getHeight
		 44	[  0]	ISF  	   		13	; if not <unknown table>.getHeight
		 45	[  0]	JMP  	 14		5	; 	goto 51
		 46	[  0]	MOV  	 15		1	; slot15 = slot1
		 47	[  0]	TGETS	 13	1	12	; slot13 = slot1.getHeight
		 48	[  0]	CALL 	 13	2	2	; slot13 = <unknown table>.getHeight(slot14)
		 49	[  0]	IST  	   		13	; if <unknown table>.getHeight
		 50	[  0]	JMP  	 14		1	; 	goto 52
		 51	[  0]	KSHORT	 13		12	; slot13 = 12
		 52	[  0]	KSHORT	 14		0	; slot14 = 0
		 53	[  0]	GGET 	 15		11	; slot15 = _env["ipairs"]
		 54	[  0]	MOV  	 17		2	; slot17 = slot2
		 55	[  0]	CALL 	 15	4	2	; slot15, slot16, slot17 = ipairs(slot16)
		 56	[  0]	JMP  	 18		10	; 	goto 67
		 57	[  0]	GGET 	 20		10	; slot20 = _env["math"]
		 58	[  0]	TGETS	 20	20	9	; slot20 = math.max
		 59	[  0]	MOV  	 22		14	; slot22 = slot14
		 60	[  0]	UGET 	 23		0	; slot23 = uv0"unknwon"
		 61	[  0]	MOV  	 25		1	; slot25 = slot1
		 62	[  0]	MOV  	 26		19	; slot26 = slot19
		 63	[  0]	MOV  	 27		10	; slot27 = slot10
		 64	[  0]	CALL 	 23	0	4	; MULTRES = uv0"unknown"(slot24, slot25, slot26)
		 65	[  0]	CALLM	 20	2	1	; slot20 = math.max(slot21, ...MULTRES)
		 66	[  0]	MOV  	 14		20	; slot14 = math.max
		 67	[  0]	ITERC	 18	3	3	; slot18, slot19, slot20 = ipairs, slot16, slot17; slot18, slot19 = ipairs(slot16, slot17)
		 68	[  0]	ITERL	 18		-12	; slot17 = slot18; if slot18 != nil goto 57
		 69	[  0]	LEN  	 15		2	; slot15 = #slot2
		 70	[  0]	SUBVN	 15	15	0	; slot15 = slot15 - 1
		 71	[  0]	MULVV	 15	7	15	; slot15 = slot7 * slot15
		 72	[  0]	ADDVV	 15	13	15	; slot15 = slot13 + slot15
		 73	[  0]	GGET 	 16		10	; slot16 = _env["math"]
		 74	[  0]	TGETS	 16	16	9	; slot16 = math.max
		 75	[  0]	GGET 	 18		20	; slot18 = _env["tonumber"]
		 76	[  0]	TGETS	 20	5	8	; slot20 = slot5.minW
		 77	[  0]	CALL 	 18	2	2	; slot18 = tonumber(slot19)
		 78	[  0]	IST  	   		18	; if tonumber
		 79	[  0]	JMP  	 19		1	; 	goto 81
		 80	[  0]	KSHORT	 18		0	; slot18 = 0
		 81	[  0]	GGET 	 19		10	; slot19 = _env["math"]
		 82	[  0]	TGETS	 19	19	7	; slot19 = math.floor
		 83	[  0]	MULVN	 21	8	1	; slot21 = slot8 * 2
		 84	[  0]	ADDVV	 21	14	21	; slot21 = math.max + slot21
		 85	[  0]	ADDVN	 21	21	2	; slot21 = slot21 + 0.5
		 86	[  0]	CALL 	 19	0	2	; MULTRES = math.floor(<unknown table>.minW)
		 87	[  0]	CALLM	 16	2	1	; slot16 = math.max(slot17, ...MULTRES)
		 88	[  0]	GGET 	 17		10	; slot17 = _env["math"]
		 89	[  0]	TGETS	 17	17	9	; slot17 = math.max
		 90	[  0]	GGET 	 19		20	; slot19 = _env["tonumber"]
		 91	[  0]	TGETS	 21	5	6	; slot21 = slot5.minH
		 92	[  0]	CALL 	 19	2	2	; slot19 = tonumber(<unknown table>.minW)
		 93	[  0]	IST  	   		19	; if tonumber
		 94	[  0]	JMP  	 20		1	; 	goto 96
		 95	[  0]	KSHORT	 19		0	; slot19 = 0
		 96	[  0]	GGET 	 20		10	; slot20 = _env["math"]
		 97	[  0]	TGETS	 20	20	7	; slot20 = math.floor
		 98	[  0]	MULVN	 22	9	1	; slot22 = slot9 * 2
		 99	[  0]	ADDVV	 22	15	22	; slot22 = slot15 + slot22
		100	[  0]	ADDVN	 22	22	2	; slot22 = slot22 + 0.5
		101	[  0]	CALL 	 20	0	2	; MULTRES = math.floor(<unknown table>.minH)
		102	[  0]	CALLM	 17	2	1	; slot17 = math.max(slot18, ...MULTRES)
		103	[  0]	GGET 	 18		20	; slot18 = _env["tonumber"]
		104	[  0]	TGETS	 20	5	5	; slot20 = slot5.w
		105	[  0]	CALL 	 18	2	2	; slot18 = tonumber(slot19)
		106	[  0]	ISF  	   		18	; if not tonumber
		107	[  0]	JMP  	 19		7	; 	goto 115
		108	[  0]	TGETS	 18	5	4	; slot18 = slot5.autoSize
		109	[  0]	ISNEP	 18		1	; if <unknown table>.autoSize ~= false
		110	[  0]	JMP  	 18		4	; 	goto 115
		111	[  0]	GGET 	 18		20	; slot18 = _env["tonumber"]
		112	[  0]	TGETS	 20	5	5	; slot20 = slot5.w
		113	[  0]	CALL 	 18	2	2	; slot18 = tonumber(slot19)
		114	[  0]	MOV  	 16		18	; slot16 = tonumber
		115	[  0]	GGET 	 18		20	; slot18 = _env["tonumber"]
		116	[  0]	TGETS	 20	5	3	; slot20 = slot5.h
		117	[  0]	CALL 	 18	2	2	; slot18 = tonumber(slot19)
		118	[  0]	ISF  	   		18	; if not tonumber
		119	[  0]	JMP  	 19		7	; 	goto 127
		120	[  0]	TGETS	 18	5	4	; slot18 = slot5.autoSize
		121	[  0]	ISNEP	 18		1	; if <unknown table>.autoSize ~= false
		122	[  0]	JMP  	 18		4	; 	goto 127
		123	[  0]	GGET 	 18		20	; slot18 = _env["tonumber"]
		124	[  0]	TGETS	 20	5	3	; slot20 = slot5.h
		125	[  0]	CALL 	 18	2	2	; slot18 = tonumber(slot19)
		126	[  0]	MOV  	 17		18	; slot17 = tonumber
		127	[  0]	UGET 	 18		1	; slot18 = uv1"unknwon"
		128	[  0]	MOV  	 20		0	; slot20 = slot0
		129	[  0]	MOV  	 21		3	; slot21 = slot3
		130	[  0]	MOV  	 22		4	; slot22 = slot4
		131	[  0]	MOV  	 23		16	; slot23 = tonumber
		132	[  0]	MOV  	 24		17	; slot24 = tonumber
		133	[  0]	MOV  	 25		6	; slot25 = slot6
		134	[  0]	CALL 	 18	1	7	;  = uv1"unknown"(slot19, slot20, slot21, slot22, tonumber, tonumber)
		135	[  0]	ADDVV	 18	3	8	; slot18 = slot3 + slot8
		136	[  0]	GGET 	 19		20	; slot19 = _env["tonumber"]
		137	[  0]	TGETS	 21	5	2	; slot21 = slot5.textOffsetX
		138	[  0]	CALL 	 19	2	2	; slot19 = tonumber(slot20)
		139	[  0]	IST  	   		19	; if tonumber
		140	[  0]	JMP  	 20		1	; 	goto 142
		141	[  0]	KSHORT	 19		0	; slot19 = 0
		142	[  0]	ADDVV	 18	18	19	; slot18 = slot18 + slot19
		143	[  0]	GGET 	 19		10	; slot19 = _env["math"]
		144	[  0]	TGETS	 19	19	7	; slot19 = math.floor
		145	[  0]	SUBVV	 21	17	15	; slot21 = tonumber - slot15
		146	[  0]	MULVN	 21	21	2	; slot21 = slot21 * 0.5
		147	[  0]	ADDVN	 21	21	2	; slot21 = slot21 + 0.5
		148	[  0]	CALL 	 19	2	2	; slot19 = math.floor(slot20)
		149	[  0]	ADDVV	 19	4	19	; slot19 = slot4 + math.floor
		150	[  0]	GGET 	 20		20	; slot20 = _env["tonumber"]
		151	[  0]	TGETS	 22	5	1	; slot22 = slot5.textOffsetY
		152	[  0]	CALL 	 20	2	2	; slot20 = tonumber(slot21)
		153	[  0]	IST  	   		20	; if tonumber
		154	[  0]	JMP  	 21		1	; 	goto 156
		155	[  0]	KSHORT	 20		0	; slot20 = 0
		156	[  0]	ADDVV	 19	19	20	; slot19 = slot19 + slot20
		157	[  0]	TDUP 	 20		0	; slot20 = copy table#k0
		158	[  0]	TSETB	  6	20	4	; slot20[4] = slot6
		159	[  0]	GGET 	 21		11	; slot21 = _env["ipairs"]
		160	[  0]	MOV  	 23		2	; slot23 = slot2
		161	[  0]	CALL 	 21	4	2	; slot21, slot22, slot23 = ipairs(<unknown table>.textOffsetY)
		162	[  0]	JMP  	 24		13	; 	goto 176
		163	[  0]	UGET 	 26		2	; slot26 = uv2"unknwon"
		164	[  0]	MOV  	 28		1	; slot28 = slot1
		165	[  0]	MOV  	 29		25	; slot29 = slot25
		166	[  0]	MOV  	 30		18	; slot30 = slot18
		167	[  0]	SUBVN	 31	24	0	; slot31 = tonumber - 1
		168	[  0]	MULVV	 31	7	31	; slot31 = slot7 * slot31
		169	[  0]	ADDVV	 31	19	31	; slot31 = slot19 + slot31
		170	[  0]	MOV  	 32		20	; slot32 = slot20
		171	[  0]	MOV  	 33		6	; slot33 = slot6
		172	[  0]	MOV  	 34		10	; slot34 = slot10
		173	[  0]	MOV  	 35		11	; slot35 = slot11
		174	[  0]	MOV  	 36		12	; slot36 = <unknown table>.tutorial.numberColor
		175	[  0]	CALL 	 26	1	10	;  = uv2"unknown"(slot27, slot28, slot29, slot30, slot31, slot32, slot33, slot34, slot35)
		176	[  0]	ITERC	 24	3	3	; slot24, slot25, slot26 = ipairs, <unknown table>.textOffsetY, slot23; slot24, slot25 = ipairs(<unknown table>.textOffsetY, slot23)
		177	[  0]	ITERL	 24		-15	; slot23 = tonumber; if tonumber != nil goto 163
		178	[  0]	MOV  	 21		16	; slot21 = tonumber
		179	[  0]	MOV  	 22		17	; slot22 = tonumber
		180	[  0]	RET  	 21		3	; return tonumber, tonumber
	303	[  0]	FNEW 	 83		3	; N/A:0-0: 3 args, 1 upvalues, 22 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		14	; slot3 = _env["tonumber"]
		  2	[  0]	TGETS	  5	2	13	; slot5 = slot2.lineGap
		  3	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		  4	[  0]	IST  	   		3	; if tonumber
		  5	[  0]	JMP  	  4		1	; 	goto 7
		  6	[  0]	KSHORT	  3		16	; slot3 = 16
		  7	[  0]	GGET 	  4		14	; slot4 = _env["tonumber"]
		  8	[  0]	TGETS	  6	2	12	; slot6 = slot2.padX
		  9	[  0]	CALL 	  4	2	2	; slot4 = tonumber(<unknown table>.lineGap)
		 10	[  0]	IST  	   		4	; if tonumber
		 11	[  0]	JMP  	  5		1	; 	goto 13
		 12	[  0]	KSHORT	  4		12	; slot4 = 12
		 13	[  0]	GGET 	  5		14	; slot5 = _env["tonumber"]
		 14	[  0]	TGETS	  7	2	11	; slot7 = slot2.padY
		 15	[  0]	CALL 	  5	2	2	; slot5 = tonumber(<unknown table>.padX)
		 16	[  0]	IST  	   		5	; if tonumber
		 17	[  0]	JMP  	  6		1	; 	goto 19
		 18	[  0]	KSHORT	  5		12	; slot5 = 12
		 19	[  0]	GGET 	  6		14	; slot6 = _env["tonumber"]
		 20	[  0]	TGETS	  8	2	10	; slot8 = slot2.iconScale
		 21	[  0]	CALL 	  6	2	2	; slot6 = tonumber(<unknown table>.padY)
		 22	[  0]	IST  	   		6	; if tonumber
		 23	[  0]	JMP  	  7		1	; 	goto 25
		 24	[  0]	KSHORT	  6		1	; slot6 = 1
		 25	[  0]	ISF  	   		0	; if not slot0
		 26	[  0]	JMP  	  7		8	; 	goto 35
		 27	[  0]	TGETS	  7	0	9	; slot7 = slot0.getHeight
		 28	[  0]	ISF  	   		7	; if not <unknown table>.getHeight
		 29	[  0]	JMP  	  8		5	; 	goto 35
		 30	[  0]	MOV  	  9		0	; slot9 = slot0
		 31	[  0]	TGETS	  7	0	9	; slot7 = slot0.getHeight
		 32	[  0]	CALL 	  7	2	2	; slot7 = <unknown table>.getHeight(<unknown table>.iconScale)
		 33	[  0]	IST  	   		7	; if <unknown table>.getHeight
		 34	[  0]	JMP  	  8		1	; 	goto 36
		 35	[  0]	KSHORT	  7		12	; slot7 = 12
		 36	[  0]	KSHORT	  8		0	; slot8 = 0
		 37	[  0]	GGET 	  9		8	; slot9 = _env["ipairs"]
		 38	[  0]	MOV  	 11		1	; slot11 = slot1
		 39	[  0]	CALL 	  9	4	2	; slot9, slot10, slot11 = ipairs(slot10)
		 40	[  0]	JMP  	 12		10	; 	goto 51
		 41	[  0]	GGET 	 14		7	; slot14 = _env["math"]
		 42	[  0]	TGETS	 14	14	6	; slot14 = math.max
		 43	[  0]	MOV  	 16		8	; slot16 = slot8
		 44	[  0]	UGET 	 17		0	; slot17 = uv0"unknwon"
		 45	[  0]	MOV  	 19		0	; slot19 = slot0
		 46	[  0]	MOV  	 20		13	; slot20 = slot13
		 47	[  0]	MOV  	 21		6	; slot21 = slot6
		 48	[  0]	CALL 	 17	0	4	; MULTRES = uv0"unknown"(slot18, slot19, slot20)
		 49	[  0]	CALLM	 14	2	1	; slot14 = math.max(slot15, ...MULTRES)
		 50	[  0]	MOV  	  8		14	; slot8 = math.max
		 51	[  0]	ITERC	 12	3	3	; slot12, slot13, slot14 = ipairs, slot10, slot11; slot12, slot13 = ipairs(slot10, slot11)
		 52	[  0]	ITERL	 12		-12	; slot11 = slot12; if slot12 != nil goto 41
		 53	[  0]	LEN  	  9		1	; slot9 = #slot1
		 54	[  0]	SUBVN	  9	9	0	; slot9 = slot9 - 1
		 55	[  0]	MULVV	  9	3	9	; slot9 = slot3 * slot9
		 56	[  0]	ADDVV	  9	7	9	; slot9 = slot7 + slot9
		 57	[  0]	GGET 	 10		7	; slot10 = _env["math"]
		 58	[  0]	TGETS	 10	10	6	; slot10 = math.max
		 59	[  0]	GGET 	 12		14	; slot12 = _env["tonumber"]
		 60	[  0]	TGETS	 14	2	5	; slot14 = slot2.minW
		 61	[  0]	CALL 	 12	2	2	; slot12 = tonumber(slot13)
		 62	[  0]	IST  	   		12	; if tonumber
		 63	[  0]	JMP  	 13		1	; 	goto 65
		 64	[  0]	KSHORT	 12		0	; slot12 = 0
		 65	[  0]	GGET 	 13		7	; slot13 = _env["math"]
		 66	[  0]	TGETS	 13	13	4	; slot13 = math.floor
		 67	[  0]	MULVN	 15	4	1	; slot15 = slot4 * 2
		 68	[  0]	ADDVV	 15	8	15	; slot15 = math.max + slot15
		 69	[  0]	ADDVN	 15	15	2	; slot15 = slot15 + 0.5
		 70	[  0]	CALL 	 13	0	2	; MULTRES = math.floor(<unknown table>.minW)
		 71	[  0]	CALLM	 10	2	1	; slot10 = math.max(slot11, ...MULTRES)
		 72	[  0]	GGET 	 11		7	; slot11 = _env["math"]
		 73	[  0]	TGETS	 11	11	6	; slot11 = math.max
		 74	[  0]	GGET 	 13		14	; slot13 = _env["tonumber"]
		 75	[  0]	TGETS	 15	2	3	; slot15 = slot2.minH
		 76	[  0]	CALL 	 13	2	2	; slot13 = tonumber(<unknown table>.minW)
		 77	[  0]	IST  	   		13	; if tonumber
		 78	[  0]	JMP  	 14		1	; 	goto 80
		 79	[  0]	KSHORT	 13		0	; slot13 = 0
		 80	[  0]	GGET 	 14		7	; slot14 = _env["math"]
		 81	[  0]	TGETS	 14	14	4	; slot14 = math.floor
		 82	[  0]	MULVN	 16	5	1	; slot16 = slot5 * 2
		 83	[  0]	ADDVV	 16	9	16	; slot16 = slot9 + slot16
		 84	[  0]	ADDVN	 16	16	2	; slot16 = slot16 + 0.5
		 85	[  0]	CALL 	 14	0	2	; MULTRES = math.floor(<unknown table>.minH)
		 86	[  0]	CALLM	 11	2	1	; slot11 = math.max(slot12, ...MULTRES)
		 87	[  0]	GGET 	 12		14	; slot12 = _env["tonumber"]
		 88	[  0]	TGETS	 14	2	2	; slot14 = slot2.w
		 89	[  0]	CALL 	 12	2	2	; slot12 = tonumber(slot13)
		 90	[  0]	ISF  	   		12	; if not tonumber
		 91	[  0]	JMP  	 13		7	; 	goto 99
		 92	[  0]	TGETS	 12	2	1	; slot12 = slot2.autoSize
		 93	[  0]	ISNEP	 12		1	; if <unknown table>.autoSize ~= false
		 94	[  0]	JMP  	 12		4	; 	goto 99
		 95	[  0]	GGET 	 12		14	; slot12 = _env["tonumber"]
		 96	[  0]	TGETS	 14	2	2	; slot14 = slot2.w
		 97	[  0]	CALL 	 12	2	2	; slot12 = tonumber(slot13)
		 98	[  0]	MOV  	 10		12	; slot10 = tonumber
		 99	[  0]	GGET 	 12		14	; slot12 = _env["tonumber"]
		100	[  0]	TGETS	 14	2	0	; slot14 = slot2.h
		101	[  0]	CALL 	 12	2	2	; slot12 = tonumber(slot13)
		102	[  0]	ISF  	   		12	; if not tonumber
		103	[  0]	JMP  	 13		7	; 	goto 111
		104	[  0]	TGETS	 12	2	1	; slot12 = slot2.autoSize
		105	[  0]	ISNEP	 12		1	; if <unknown table>.autoSize ~= false
		106	[  0]	JMP  	 12		4	; 	goto 111
		107	[  0]	GGET 	 12		14	; slot12 = _env["tonumber"]
		108	[  0]	TGETS	 14	2	0	; slot14 = slot2.h
		109	[  0]	CALL 	 12	2	2	; slot12 = tonumber(slot13)
		110	[  0]	MOV  	 11		12	; slot11 = tonumber
		111	[  0]	MOV  	 12		10	; slot12 = tonumber
		112	[  0]	MOV  	 13		11	; slot13 = tonumber
		113	[  0]	RET  	 12		3	; return tonumber, tonumber
	304	[  0]	FNEW 	 84		2	; N/A:0-0: 2 args, 30 upvalues, 49 slots
		
		;;;; constant tables ;;;;
		ktable#3 = [
			#1: 0.10980392156862745,
			#2: 0.10588235294117647,
			#3: 0.12156862745098039,
			#4: 0.78,
			]
		
		
		ktable#60 = [
			]
		
		
		ktable#62 = [
			[icon] = boss,
			]
		
		
		ktable#63 = [
			]
		
		
		ktable#65 = [
			[icon] = judgement,
			]
		
		
		ktable#66 = [
			]
		
		
		ktable#70 = [
			]
		
		
		ktable#72 = [
			]
		
		
		ktable#74 = [
			]
		
		
		ktable#79 = [
			]
		
		
		ktable#81 = [
			]
		
		
		ktable#85 = [
			]
		
		
		ktable#87 = [
			]
		
		
		ktable#89 = [
			]
		
		
		ktable#94 = [
			]
		
		
		ktable#96 = [
			]
		
		
		ktable#97 = [
			]
		
		
		ktable#99 = [
			]
		
		
		ktable#101 = [
			]
		
		
		ktable#102 = [
			]
		
		
		ktable#104 = [
			]
		
		
		ktable#105 = [
			]
		
		
		ktable#107 = [
			]
		
		
		ktable#109 = [
			]
		
		
		ktable#116 = [
			]
		
		
		ktable#117 = [
			]
		
		
		ktable#129 = [
			]
		
		
		ktable#131 = [
			]
		
		
		ktable#132 = [
			]
		
		
		ktable#134 = [
			[icon] = mouseRight,
			]
		
		
		ktable#135 = [
			]
		
		
		ktable#136 = [
			]
		
		
		ktable#138 = [
			]
		
		
		ktable#139 = [
			]
		
		
		ktable#141 = [
			]
		
		
		ktable#142 = [
			]
		
		
		ktable#144 = [
			]
		
		
		ktable#145 = [
			]
		
		
		ktable#147 = [
			]
		
		
		ktable#148 = [
			]
		
		
		ktable#150 = [
			]
		
		
		ktable#152 = [
			]
		
		
		ktable#154 = [
			]
		
		
		ktable#155 = [
			]
		
		
		ktable#157 = [
			]
		
		
		ktable#159 = [
			]
		
		
		ktable#173 = [
			]
		
		
		ktable#175 = [
			[icon] = gold,
			]
		
		
		ktable#176 = [
			]
		
		
		ktable#180 = [
			]
		
		
		ktable#182 = [
			[icon] = gold,
			]
		
		
		ktable#183 = [
			]
		
		
		ktable#186 = [
			]
		
		
		ktable#188 = [
			]
		
		
		ktable#189 = [
			[text] =  ,
			]
		
		
		ktable#190 = [
			]
		
		
		ktable#192 = [
			]
		
		
		ktable#193 = [
			]
		
		
		ktable#195 = [
			[icon] = mouseLeft,
			]
		
		
		ktable#196 = [
			]
		
		
		ktable#201 = [
			]
		
		
		ktable#203 = [
			]
		
		
		ktable#205 = [
			]
		
		
		ktable#210 = [
			]
		
		
		ktable#213 = [
			]
		
		
		ktable#215 = [
			]
		
		
		ktable#217 = [
			]
		
		
		ktable#219 = [
			[icon] = gold,
			]
		
		
		ktable#221 = [
			]
		
		
		ktable#231 = [
			#1: 0.78,
			#2: 0.63,
			#3: 0.9,
			]
		
		
		ktable#233 = [
			#1: 1,
			#2: 0.82,
			#3: 0.36,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	CALL 	  2	1	1	;  = uv0"unknown"()
		  3	[  0]	ISF  	   		0	; if not slot0
		  4	[  0]	JMP  	  2		7	; 	goto 12
		  5	[  0]	TGETS	  2	0	298	; slot2 = slot0.restartConfirm
		  6	[  0]	ISF  	   		2	; if not <unknown table>.restartConfirm
		  7	[  0]	JMP  	  3		4	; 	goto 12
		  8	[  0]	TGETS	  2	0	298	; slot2 = slot0.restartConfirm
		  9	[  0]	TGETS	  2	2	297	; slot2 = <unknown table>.restartConfirm.font
		 10	[  0]	IST  	   		2	; if <unknown table>.restartConfirm.font
		 11	[  0]	JMP  	  3		21	; 	goto 33
		 12	[  0]	ISF  	   		0	; if not slot0
		 13	[  0]	JMP  	  2		7	; 	goto 21
		 14	[  0]	TGETS	  2	0	296	; slot2 = slot0.coreMessage
		 15	[  0]	ISF  	   		2	; if not <unknown table>.coreMessage
		 16	[  0]	JMP  	  3		4	; 	goto 21
		 17	[  0]	TGETS	  2	0	296	; slot2 = slot0.coreMessage
		 18	[  0]	TGETS	  2	2	297	; slot2 = <unknown table>.coreMessage.font
		 19	[  0]	IST  	   		2	; if <unknown table>.coreMessage.font
		 20	[  0]	JMP  	  3		12	; 	goto 33
		 21	[  0]	ISF  	   		0	; if not slot0
		 22	[  0]	JMP  	  2		3	; 	goto 26
		 23	[  0]	TGETS	  2	0	297	; slot2 = slot0.font
		 24	[  0]	IST  	   		2	; if <unknown table>.font
		 25	[  0]	JMP  	  3		7	; 	goto 33
		 26	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 27	[  0]	IST  	   		2	; if uv1"unknown"
		 28	[  0]	JMP  	  3		4	; 	goto 33
		 29	[  0]	GGET 	  2		295	; slot2 = _env["love"]
		 30	[  0]	TGETS	  2	2	294	; slot2 = love.graphics
		 31	[  0]	TGETS	  2	2	293	; slot2 = love.graphics.getFont
		 32	[  0]	CALL 	  2	2	1	; slot2 = love.graphics.getFont()
		 33	[  0]	ISF  	   		2	; if not love.graphics.getFont
		 34	[  0]	JMP  	  3		8	; 	goto 43
		 35	[  0]	TGETS	  3	2	292	; slot3 = love.graphics.getFont.setFilter
		 36	[  0]	ISF  	   		3	; if not love.graphics.getFont.setFilter
		 37	[  0]	JMP  	  4		5	; 	goto 43
		 38	[  0]	MOV  	  5		2	; slot5 = love.graphics.getFont
		 39	[  0]	TGETS	  3	2	292	; slot3 = love.graphics.getFont.setFilter
		 40	[  0]	KSTR 	  6		291	; slot6 = "nearest"
		 41	[  0]	KSTR 	  7		291	; slot7 = "nearest"
		 42	[  0]	CALL 	  3	1	4	;  = love.graphics.getFont.setFilter(slot4, love.graphics.getFont, slot6)
		 43	[  0]	ISF  	   		0	; if not slot0
		 44	[  0]	JMP  	  3		7	; 	goto 52
		 45	[  0]	TGETS	  3	0	290	; slot3 = slot0.virtual
		 46	[  0]	ISF  	   		3	; if not <unknown table>.virtual
		 47	[  0]	JMP  	  4		4	; 	goto 52
		 48	[  0]	TGETS	  3	0	290	; slot3 = slot0.virtual
		 49	[  0]	TGETS	  3	3	289	; slot3 = <unknown table>.virtual.W
		 50	[  0]	IST  	   		3	; if <unknown table>.virtual.W
		 51	[  0]	JMP  	  4		1	; 	goto 53
		 52	[  0]	KSHORT	  3		640	; slot3 = 640
		 53	[  0]	ISF  	   		0	; if not slot0
		 54	[  0]	JMP  	  4		7	; 	goto 62
		 55	[  0]	TGETS	  4	0	290	; slot4 = slot0.virtual
		 56	[  0]	ISF  	   		4	; if not <unknown table>.virtual
		 57	[  0]	JMP  	  5		4	; 	goto 62
		 58	[  0]	TGETS	  4	0	290	; slot4 = slot0.virtual
		 59	[  0]	TGETS	  4	4	288	; slot4 = <unknown table>.virtual.H
		 60	[  0]	IST  	   		4	; if <unknown table>.virtual.H
		 61	[  0]	JMP  	  5		1	; 	goto 63
		 62	[  0]	KSHORT	  4		360	; slot4 = 360
		 63	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 64	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		 65	[  0]	TGETS	  7	7	287	; slot7 = uv3"unknown".stepT
		 66	[  0]	IST  	   		7	; if uv3"unknown".stepT
		 67	[  0]	JMP  	  8		1	; 	goto 69
		 68	[  0]	KSHORT	  7		0	; slot7 = 0
		 69	[  0]	CALL 	  5	2	2	; slot5 = uv2"unknown"(slot6)
		 70	[  0]	MOV  	  6		5	; slot6 = uv2"unknown"
		 71	[  0]	UGET 	  7		4	; slot7 = uv4"unknwon"
		 72	[  0]	MOV  	  9		0	; slot9 = slot0
		 73	[  0]	MOV  	 10		1	; slot10 = slot1
		 74	[  0]	CALL 	  7	2	3	; slot7 = uv4"unknown"(slot8, slot9)
		 75	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		 76	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		 77	[  0]	GGET 	  9		285	; slot9 = _env["STEP_ARCHER_WIN"]
		 78	[  0]	ISEQV	  8		9	; if uv3"unknown".step == STEP_ARCHER_WIN
		 79	[  0]	JMP  	  8		20	; 	goto 100
		 80	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		 81	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		 82	[  0]	GGET 	  9		284	; slot9 = _env["STEP_WARRIOR_WIN"]
		 83	[  0]	ISEQV	  8		9	; if uv3"unknown".step == STEP_WARRIOR_WIN
		 84	[  0]	JMP  	  8		15	; 	goto 100
		 85	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		 86	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		 87	[  0]	GGET 	  9		283	; slot9 = _env["STEP_UNIT_HOVER"]
		 88	[  0]	ISEQV	  8		9	; if uv3"unknown".step == STEP_UNIT_HOVER
		 89	[  0]	JMP  	  8		10	; 	goto 100
		 90	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		 91	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		 92	[  0]	GGET 	  9		282	; slot9 = _env["STEP_POST_CORE_ARCHER_WIN"]
		 93	[  0]	ISEQV	  8		9	; if uv3"unknown".step == STEP_POST_CORE_ARCHER_WIN
		 94	[  0]	JMP  	  8		5	; 	goto 100
		 95	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		 96	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		 97	[  0]	GGET 	  9		281	; slot9 = _env["STEP_PROMOTED_ARCHER"]
		 98	[  0]	ISNEV	  8		9	; if uv3"unknown".step ~= STEP_PROMOTED_ARCHER
		 99	[  0]	JMP  	  8		35	; 	goto 135
		100	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		101	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		102	[  0]	TGETS	  8	8	280	; slot8 = love.graphics.stencil
		103	[  0]	FNEW 	 10		279	; N/A:0-0: 0 args, 2 upvalues, 3 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  3	[  0]	CALL 	  0	1	2	;  = uv0"unknown"(slot1)
			  4	[  0]	RET0 	  0		1	; return
		104	[  0]	KSTR 	 11		278	; slot11 = "replace"
		105	[  0]	KSHORT	 12		1	; slot12 = 1
		106	[  0]	CALL 	  8	1	4	;  = love.graphics.stencil(STEP_PROMOTED_ARCHER, slot10, slot11)
		107	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		108	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		109	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		110	[  0]	KSTR 	 10		276	; slot10 = "equal"
		111	[  0]	KSHORT	 11		0	; slot11 = 0
		112	[  0]	CALL 	  8	1	3	;  = love.graphics.setStencilTest(STEP_PROMOTED_ARCHER, slot10)
		113	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		114	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		115	[  0]	TGETS	  8	8	275	; slot8 = love.graphics.setColor
		116	[  0]	KSHORT	 10		0	; slot10 = 0
		117	[  0]	KSHORT	 11		0	; slot11 = 0
		118	[  0]	KSHORT	 12		0	; slot12 = 0
		119	[  0]	MULNV	 13	6	0	; slot13 = 0.65 * uv2"unknown"
		120	[  0]	CALL 	  8	1	5	;  = love.graphics.setColor(STEP_PROMOTED_ARCHER, slot10, slot11, slot12)
		121	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		122	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		123	[  0]	TGETS	  8	8	274	; slot8 = love.graphics.rectangle
		124	[  0]	KSTR 	 10		273	; slot10 = "fill"
		125	[  0]	KSHORT	 11		0	; slot11 = 0
		126	[  0]	KSHORT	 12		0	; slot12 = 0
		127	[  0]	MOV  	 13		3	; slot13 = slot3
		128	[  0]	MOV  	 14		4	; slot14 = slot4
		129	[  0]	CALL 	  8	1	6	;  = love.graphics.rectangle(STEP_PROMOTED_ARCHER, slot10, slot11, slot12, slot13)
		130	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		131	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		132	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		133	[  0]	CALL 	  8	1	1	;  = love.graphics.setStencilTest()
		134	[  0]	JMP  	  8		596	; 	goto 731
		135	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		136	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		137	[  0]	GGET 	  9		272	; slot9 = _env["STEP_BATTLE_READY"]
		138	[  0]	ISNEV	  8		9	; if uv3"unknown".step ~= STEP_BATTLE_READY
		139	[  0]	JMP  	  8		35	; 	goto 175
		140	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		141	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		142	[  0]	TGETS	  8	8	280	; slot8 = love.graphics.stencil
		143	[  0]	FNEW 	 10		271	; N/A:0-0: 0 args, 3 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  3	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
			  4	[  0]	CALL 	  0	1	3	;  = uv0"unknown"(slot1, uv1"unknown")
			  5	[  0]	RET0 	  0		1	; return
		144	[  0]	KSTR 	 11		278	; slot11 = "replace"
		145	[  0]	KSHORT	 12		1	; slot12 = 1
		146	[  0]	CALL 	  8	1	4	;  = love.graphics.stencil(STEP_BATTLE_READY, slot10, slot11)
		147	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		148	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		149	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		150	[  0]	KSTR 	 10		276	; slot10 = "equal"
		151	[  0]	KSHORT	 11		0	; slot11 = 0
		152	[  0]	CALL 	  8	1	3	;  = love.graphics.setStencilTest(STEP_BATTLE_READY, slot10)
		153	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		154	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		155	[  0]	TGETS	  8	8	275	; slot8 = love.graphics.setColor
		156	[  0]	KSHORT	 10		0	; slot10 = 0
		157	[  0]	KSHORT	 11		0	; slot11 = 0
		158	[  0]	KSHORT	 12		0	; slot12 = 0
		159	[  0]	MULNV	 13	6	0	; slot13 = 0.65 * uv2"unknown"
		160	[  0]	CALL 	  8	1	5	;  = love.graphics.setColor(STEP_BATTLE_READY, slot10, slot11, slot12)
		161	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		162	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		163	[  0]	TGETS	  8	8	274	; slot8 = love.graphics.rectangle
		164	[  0]	KSTR 	 10		273	; slot10 = "fill"
		165	[  0]	KSHORT	 11		0	; slot11 = 0
		166	[  0]	KSHORT	 12		0	; slot12 = 0
		167	[  0]	MOV  	 13		3	; slot13 = slot3
		168	[  0]	MOV  	 14		4	; slot14 = slot4
		169	[  0]	CALL 	  8	1	6	;  = love.graphics.rectangle(STEP_BATTLE_READY, slot10, slot11, slot12, slot13)
		170	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		171	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		172	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		173	[  0]	CALL 	  8	1	1	;  = love.graphics.setStencilTest()
		174	[  0]	JMP  	  8		556	; 	goto 731
		175	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		176	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		177	[  0]	GGET 	  9		270	; slot9 = _env["STEP_POSITION"]
		178	[  0]	ISEQV	  8		9	; if uv3"unknown".step == STEP_POSITION
		179	[  0]	JMP  	  8		20	; 	goto 200
		180	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		181	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		182	[  0]	GGET 	  9		269	; slot9 = _env["STEP_ABSORB_DRAG"]
		183	[  0]	ISEQV	  8		9	; if uv3"unknown".step == STEP_ABSORB_DRAG
		184	[  0]	JMP  	  8		15	; 	goto 200
		185	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		186	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		187	[  0]	GGET 	  9		268	; slot9 = _env["STEP_FREE_ABSORB"]
		188	[  0]	ISEQV	  8		9	; if uv3"unknown".step == STEP_FREE_ABSORB
		189	[  0]	JMP  	  8		10	; 	goto 200
		190	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		191	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		192	[  0]	GGET 	  9		267	; slot9 = _env["STEP_IMPRINT_INSPECT"]
		193	[  0]	ISEQV	  8		9	; if uv3"unknown".step == STEP_IMPRINT_INSPECT
		194	[  0]	JMP  	  8		5	; 	goto 200
		195	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		196	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		197	[  0]	GGET 	  9		266	; slot9 = _env["STEP_FINAL_READY"]
		198	[  0]	ISNEV	  8		9	; if uv3"unknown".step ~= STEP_FINAL_READY
		199	[  0]	JMP  	  8		59	; 	goto 259
		200	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		201	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		202	[  0]	TGETS	  8	8	280	; slot8 = love.graphics.stencil
		203	[  0]	FNEW 	 10		265	; N/A:0-0: 0 args, 5 upvalues, 8 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	ISF  	   		0	; if not uv0"unknown"
			  3	[  0]	JMP  	  1		2	; 	goto 6
			  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  5	[  0]	TGETS	  0	0	11	; slot0 = uv0"unknown".right
			  6	[  0]	ISF  	   		0	; if not uv0"unknown".right
			  7	[  0]	JMP  	  1		9	; 	goto 17
			  8	[  0]	GGET 	  1		10	; slot1 = _env["love"]
			  9	[  0]	TGETS	  1	1	9	; slot1 = love.graphics
			 10	[  0]	TGETS	  1	1	8	; slot1 = love.graphics.rectangle
			 11	[  0]	KSTR 	  3		7	; slot3 = "fill"
			 12	[  0]	TGETS	  4	0	6	; slot4 = uv0"unknown".right.x
			 13	[  0]	TGETS	  5	0	5	; slot5 = uv0"unknown".right.y
			 14	[  0]	TGETS	  6	0	4	; slot6 = uv0"unknown".right.w
			 15	[  0]	TGETS	  7	0	3	; slot7 = uv0"unknown".right.h
			 16	[  0]	CALL 	  1	1	6	;  = love.graphics.rectangle(slot2, slot3, uv0"unknown".right.x, uv0"unknown".right.y, uv0"unknown".right.w)
			 17	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			 18	[  0]	TGETS	  1	1	2	; slot1 = uv1"unknown".step
			 19	[  0]	GGET 	  2		1	; slot2 = _env["STEP_FREE_ABSORB"]
			 20	[  0]	ISNEV	  1		2	; if uv1"unknown".step ~= STEP_FREE_ABSORB
			 21	[  0]	JMP  	  1		3	; 	goto 25
			 22	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
			 23	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
			 24	[  0]	CALL 	  1	1	2	;  = uv2"unknown"(STEP_FREE_ABSORB)
			 25	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			 26	[  0]	TGETS	  1	1	2	; slot1 = uv1"unknown".step
			 27	[  0]	GGET 	  2		0	; slot2 = _env["STEP_FINAL_READY"]
			 28	[  0]	ISNEV	  1		2	; if uv1"unknown".step ~= STEP_FINAL_READY
			 29	[  0]	JMP  	  1		4	; 	goto 34
			 30	[  0]	UGET 	  1		4	; slot1 = uv4"unknwon"
			 31	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
			 32	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			 33	[  0]	CALL 	  1	1	3	;  = uv4"unknown"(STEP_FINAL_READY, uv3"unknown")
			 34	[  0]	RET0 	  0		1	; return
		204	[  0]	KSTR 	 11		278	; slot11 = "replace"
		205	[  0]	KSHORT	 12		1	; slot12 = 1
		206	[  0]	CALL 	  8	1	4	;  = love.graphics.stencil(STEP_FINAL_READY, slot10, slot11)
		207	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		208	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		209	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		210	[  0]	KSTR 	 10		276	; slot10 = "equal"
		211	[  0]	KSHORT	 11		0	; slot11 = 0
		212	[  0]	CALL 	  8	1	3	;  = love.graphics.setStencilTest(STEP_FINAL_READY, slot10)
		213	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		214	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		215	[  0]	TGETS	  8	8	275	; slot8 = love.graphics.setColor
		216	[  0]	KSHORT	 10		0	; slot10 = 0
		217	[  0]	KSHORT	 11		0	; slot11 = 0
		218	[  0]	KSHORT	 12		0	; slot12 = 0
		219	[  0]	KNUM 	 13		0	; slot13 = 0.65
		220	[  0]	CALL 	  8	1	5	;  = love.graphics.setColor(STEP_FINAL_READY, slot10, slot11, slot12)
		221	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		222	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		223	[  0]	TGETS	  8	8	274	; slot8 = love.graphics.rectangle
		224	[  0]	KSTR 	 10		273	; slot10 = "fill"
		225	[  0]	KSHORT	 11		0	; slot11 = 0
		226	[  0]	KSHORT	 12		0	; slot12 = 0
		227	[  0]	MOV  	 13		3	; slot13 = slot3
		228	[  0]	MOV  	 14		4	; slot14 = slot4
		229	[  0]	CALL 	  8	1	6	;  = love.graphics.rectangle(STEP_FINAL_READY, slot10, slot11, slot12, slot13)
		230	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		231	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		232	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		233	[  0]	KSTR 	 10		276	; slot10 = "equal"
		234	[  0]	KSHORT	 11		1	; slot11 = 1
		235	[  0]	CALL 	  8	1	3	;  = love.graphics.setStencilTest(STEP_FINAL_READY, slot10)
		236	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		237	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		238	[  0]	TGETS	  8	8	275	; slot8 = love.graphics.setColor
		239	[  0]	KSHORT	 10		0	; slot10 = 0
		240	[  0]	KSHORT	 11		0	; slot11 = 0
		241	[  0]	KSHORT	 12		0	; slot12 = 0
		242	[  0]	SUBNV	 13	5	1	; slot13 = 1 - uv2"unknown"
		243	[  0]	MULNV	 13	13	0	; slot13 = 0.65 * slot13
		244	[  0]	CALL 	  8	1	5	;  = love.graphics.setColor(STEP_FINAL_READY, slot10, slot11, slot12)
		245	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		246	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		247	[  0]	TGETS	  8	8	274	; slot8 = love.graphics.rectangle
		248	[  0]	KSTR 	 10		273	; slot10 = "fill"
		249	[  0]	KSHORT	 11		0	; slot11 = 0
		250	[  0]	KSHORT	 12		0	; slot12 = 0
		251	[  0]	MOV  	 13		3	; slot13 = slot3
		252	[  0]	MOV  	 14		4	; slot14 = slot4
		253	[  0]	CALL 	  8	1	6	;  = love.graphics.rectangle(STEP_FINAL_READY, slot10, slot11, slot12, slot13)
		254	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		255	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		256	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		257	[  0]	CALL 	  8	1	1	;  = love.graphics.setStencilTest()
		258	[  0]	JMP  	  8		472	; 	goto 731
		259	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		260	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		261	[  0]	GGET 	  9		264	; slot9 = _env["STEP_NUDGE_ACTION"]
		262	[  0]	ISNEV	  8		9	; if uv3"unknown".step ~= STEP_NUDGE_ACTION
		263	[  0]	JMP  	  8		35	; 	goto 299
		264	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		265	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		266	[  0]	TGETS	  8	8	280	; slot8 = love.graphics.stencil
		267	[  0]	FNEW 	 10		263	; N/A:0-0: 0 args, 3 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  3	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
			  4	[  0]	CALL 	  0	1	3	;  = uv0"unknown"(slot1, uv1"unknown")
			  5	[  0]	RET0 	  0		1	; return
		268	[  0]	KSTR 	 11		278	; slot11 = "replace"
		269	[  0]	KSHORT	 12		1	; slot12 = 1
		270	[  0]	CALL 	  8	1	4	;  = love.graphics.stencil(STEP_NUDGE_ACTION, slot10, slot11)
		271	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		272	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		273	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		274	[  0]	KSTR 	 10		276	; slot10 = "equal"
		275	[  0]	KSHORT	 11		0	; slot11 = 0
		276	[  0]	CALL 	  8	1	3	;  = love.graphics.setStencilTest(STEP_NUDGE_ACTION, slot10)
		277	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		278	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		279	[  0]	TGETS	  8	8	275	; slot8 = love.graphics.setColor
		280	[  0]	KSHORT	 10		0	; slot10 = 0
		281	[  0]	KSHORT	 11		0	; slot11 = 0
		282	[  0]	KSHORT	 12		0	; slot12 = 0
		283	[  0]	MULNV	 13	6	0	; slot13 = 0.65 * uv2"unknown"
		284	[  0]	CALL 	  8	1	5	;  = love.graphics.setColor(STEP_NUDGE_ACTION, slot10, slot11, slot12)
		285	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		286	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		287	[  0]	TGETS	  8	8	274	; slot8 = love.graphics.rectangle
		288	[  0]	KSTR 	 10		273	; slot10 = "fill"
		289	[  0]	KSHORT	 11		0	; slot11 = 0
		290	[  0]	KSHORT	 12		0	; slot12 = 0
		291	[  0]	MOV  	 13		3	; slot13 = slot3
		292	[  0]	MOV  	 14		4	; slot14 = slot4
		293	[  0]	CALL 	  8	1	6	;  = love.graphics.rectangle(STEP_NUDGE_ACTION, slot10, slot11, slot12, slot13)
		294	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		295	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		296	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		297	[  0]	CALL 	  8	1	1	;  = love.graphics.setStencilTest()
		298	[  0]	JMP  	  8		432	; 	goto 731
		299	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		300	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		301	[  0]	GGET 	  9		262	; slot9 = _env["STEP_ABSORB_BUTTON"]
		302	[  0]	ISEQV	  8		9	; if uv3"unknown".step == STEP_ABSORB_BUTTON
		303	[  0]	JMP  	  8		5	; 	goto 309
		304	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		305	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		306	[  0]	GGET 	  9		261	; slot9 = _env["STEP_FREE_ABSORB_BUTTON"]
		307	[  0]	ISNEV	  8		9	; if uv3"unknown".step ~= STEP_FREE_ABSORB_BUTTON
		308	[  0]	JMP  	  8		35	; 	goto 344
		309	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		310	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		311	[  0]	TGETS	  8	8	280	; slot8 = love.graphics.stencil
		312	[  0]	FNEW 	 10		260	; N/A:0-0: 0 args, 2 upvalues, 3 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  3	[  0]	CALL 	  0	1	2	;  = uv0"unknown"(slot1)
			  4	[  0]	RET0 	  0		1	; return
		313	[  0]	KSTR 	 11		278	; slot11 = "replace"
		314	[  0]	KSHORT	 12		1	; slot12 = 1
		315	[  0]	CALL 	  8	1	4	;  = love.graphics.stencil(STEP_FREE_ABSORB_BUTTON, slot10, slot11)
		316	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		317	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		318	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		319	[  0]	KSTR 	 10		276	; slot10 = "equal"
		320	[  0]	KSHORT	 11		0	; slot11 = 0
		321	[  0]	CALL 	  8	1	3	;  = love.graphics.setStencilTest(STEP_FREE_ABSORB_BUTTON, slot10)
		322	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		323	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		324	[  0]	TGETS	  8	8	275	; slot8 = love.graphics.setColor
		325	[  0]	KSHORT	 10		0	; slot10 = 0
		326	[  0]	KSHORT	 11		0	; slot11 = 0
		327	[  0]	KSHORT	 12		0	; slot12 = 0
		328	[  0]	MULNV	 13	6	0	; slot13 = 0.65 * uv2"unknown"
		329	[  0]	CALL 	  8	1	5	;  = love.graphics.setColor(STEP_FREE_ABSORB_BUTTON, slot10, slot11, slot12)
		330	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		331	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		332	[  0]	TGETS	  8	8	274	; slot8 = love.graphics.rectangle
		333	[  0]	KSTR 	 10		273	; slot10 = "fill"
		334	[  0]	KSHORT	 11		0	; slot11 = 0
		335	[  0]	KSHORT	 12		0	; slot12 = 0
		336	[  0]	MOV  	 13		3	; slot13 = slot3
		337	[  0]	MOV  	 14		4	; slot14 = slot4
		338	[  0]	CALL 	  8	1	6	;  = love.graphics.rectangle(STEP_FREE_ABSORB_BUTTON, slot10, slot11, slot12, slot13)
		339	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		340	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		341	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		342	[  0]	CALL 	  8	1	1	;  = love.graphics.setStencilTest()
		343	[  0]	JMP  	  8		387	; 	goto 731
		344	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		345	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		346	[  0]	GGET 	  9		259	; slot9 = _env["STEP_CORE_COUNTER"]
		347	[  0]	ISNEV	  8		9	; if uv3"unknown".step ~= STEP_CORE_COUNTER
		348	[  0]	JMP  	  8		35	; 	goto 384
		349	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		350	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		351	[  0]	TGETS	  8	8	280	; slot8 = love.graphics.stencil
		352	[  0]	FNEW 	 10		258	; N/A:0-0: 0 args, 2 upvalues, 3 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  3	[  0]	CALL 	  0	1	2	;  = uv0"unknown"(slot1)
			  4	[  0]	RET0 	  0		1	; return
		353	[  0]	KSTR 	 11		278	; slot11 = "replace"
		354	[  0]	KSHORT	 12		1	; slot12 = 1
		355	[  0]	CALL 	  8	1	4	;  = love.graphics.stencil(STEP_CORE_COUNTER, slot10, slot11)
		356	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		357	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		358	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		359	[  0]	KSTR 	 10		276	; slot10 = "equal"
		360	[  0]	KSHORT	 11		0	; slot11 = 0
		361	[  0]	CALL 	  8	1	3	;  = love.graphics.setStencilTest(STEP_CORE_COUNTER, slot10)
		362	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		363	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		364	[  0]	TGETS	  8	8	275	; slot8 = love.graphics.setColor
		365	[  0]	KSHORT	 10		0	; slot10 = 0
		366	[  0]	KSHORT	 11		0	; slot11 = 0
		367	[  0]	KSHORT	 12		0	; slot12 = 0
		368	[  0]	MULNV	 13	6	0	; slot13 = 0.65 * uv2"unknown"
		369	[  0]	CALL 	  8	1	5	;  = love.graphics.setColor(STEP_CORE_COUNTER, slot10, slot11, slot12)
		370	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		371	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		372	[  0]	TGETS	  8	8	274	; slot8 = love.graphics.rectangle
		373	[  0]	KSTR 	 10		273	; slot10 = "fill"
		374	[  0]	KSHORT	 11		0	; slot11 = 0
		375	[  0]	KSHORT	 12		0	; slot12 = 0
		376	[  0]	MOV  	 13		3	; slot13 = slot3
		377	[  0]	MOV  	 14		4	; slot14 = slot4
		378	[  0]	CALL 	  8	1	6	;  = love.graphics.rectangle(STEP_CORE_COUNTER, slot10, slot11, slot12, slot13)
		379	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		380	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		381	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		382	[  0]	CALL 	  8	1	1	;  = love.graphics.setStencilTest()
		383	[  0]	JMP  	  8		347	; 	goto 731
		384	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		385	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		386	[  0]	GGET 	  9		257	; slot9 = _env["STEP_CORE_SELECT"]
		387	[  0]	ISNEV	  8		9	; if uv3"unknown".step ~= STEP_CORE_SELECT
		388	[  0]	JMP  	  8		1	; 	goto 390
		389	[  0]	JMP  	  8		341	; 	goto 731
		390	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		391	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		392	[  0]	GGET 	  9		256	; slot9 = _env["STEP_CLASS_PROMOTION"]
		393	[  0]	ISEQV	  8		9	; if uv3"unknown".step == STEP_CLASS_PROMOTION
		394	[  0]	JMP  	  8		336	; 	goto 731
		395	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		396	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		397	[  0]	GGET 	  9		255	; slot9 = _env["STEP_CLASS_SKILL_HOVER"]
		398	[  0]	ISEQV	  8		9	; if uv3"unknown".step == STEP_CLASS_SKILL_HOVER
		399	[  0]	JMP  	  8		331	; 	goto 731
		400	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		401	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		402	[  0]	GGET 	  9		254	; slot9 = _env["STEP_CLASS_CHOOSE"]
		403	[  0]	ISNEV	  8		9	; if uv3"unknown".step ~= STEP_CLASS_CHOOSE
		404	[  0]	JMP  	  8		1	; 	goto 406
		405	[  0]	JMP  	  8		325	; 	goto 731
		406	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		407	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		408	[  0]	GGET 	  9		253	; slot9 = _env["STEP_MAX_UNIT_NOTICE"]
		409	[  0]	ISNEV	  8		9	; if uv3"unknown".step ~= STEP_MAX_UNIT_NOTICE
		410	[  0]	JMP  	  8		35	; 	goto 446
		411	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		412	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		413	[  0]	TGETS	  8	8	280	; slot8 = love.graphics.stencil
		414	[  0]	FNEW 	 10		252	; N/A:0-0: 0 args, 2 upvalues, 3 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  3	[  0]	CALL 	  0	1	2	;  = uv0"unknown"(slot1)
			  4	[  0]	RET0 	  0		1	; return
		415	[  0]	KSTR 	 11		278	; slot11 = "replace"
		416	[  0]	KSHORT	 12		1	; slot12 = 1
		417	[  0]	CALL 	  8	1	4	;  = love.graphics.stencil(STEP_MAX_UNIT_NOTICE, slot10, slot11)
		418	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		419	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		420	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		421	[  0]	KSTR 	 10		276	; slot10 = "equal"
		422	[  0]	KSHORT	 11		0	; slot11 = 0
		423	[  0]	CALL 	  8	1	3	;  = love.graphics.setStencilTest(STEP_MAX_UNIT_NOTICE, slot10)
		424	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		425	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		426	[  0]	TGETS	  8	8	275	; slot8 = love.graphics.setColor
		427	[  0]	KSHORT	 10		0	; slot10 = 0
		428	[  0]	KSHORT	 11		0	; slot11 = 0
		429	[  0]	KSHORT	 12		0	; slot12 = 0
		430	[  0]	MULNV	 13	6	0	; slot13 = 0.65 * uv2"unknown"
		431	[  0]	CALL 	  8	1	5	;  = love.graphics.setColor(STEP_MAX_UNIT_NOTICE, slot10, slot11, slot12)
		432	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		433	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		434	[  0]	TGETS	  8	8	274	; slot8 = love.graphics.rectangle
		435	[  0]	KSTR 	 10		273	; slot10 = "fill"
		436	[  0]	KSHORT	 11		0	; slot11 = 0
		437	[  0]	KSHORT	 12		0	; slot12 = 0
		438	[  0]	MOV  	 13		3	; slot13 = slot3
		439	[  0]	MOV  	 14		4	; slot14 = slot4
		440	[  0]	CALL 	  8	1	6	;  = love.graphics.rectangle(STEP_MAX_UNIT_NOTICE, slot10, slot11, slot12, slot13)
		441	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		442	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		443	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		444	[  0]	CALL 	  8	1	1	;  = love.graphics.setStencilTest()
		445	[  0]	JMP  	  8		285	; 	goto 731
		446	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		447	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		448	[  0]	GGET 	  9		251	; slot9 = _env["STEP_SHOP_INTRO"]
		449	[  0]	ISNEV	  8		9	; if uv3"unknown".step ~= STEP_SHOP_INTRO
		450	[  0]	JMP  	  8		35	; 	goto 486
		451	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		452	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		453	[  0]	TGETS	  8	8	280	; slot8 = love.graphics.stencil
		454	[  0]	FNEW 	 10		250	; N/A:0-0: 0 args, 3 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  3	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
			  4	[  0]	CALL 	  0	1	3	;  = uv0"unknown"(slot1, uv1"unknown")
			  5	[  0]	RET0 	  0		1	; return
		455	[  0]	KSTR 	 11		278	; slot11 = "replace"
		456	[  0]	KSHORT	 12		1	; slot12 = 1
		457	[  0]	CALL 	  8	1	4	;  = love.graphics.stencil(STEP_SHOP_INTRO, slot10, slot11)
		458	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		459	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		460	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		461	[  0]	KSTR 	 10		276	; slot10 = "equal"
		462	[  0]	KSHORT	 11		0	; slot11 = 0
		463	[  0]	CALL 	  8	1	3	;  = love.graphics.setStencilTest(STEP_SHOP_INTRO, slot10)
		464	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		465	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		466	[  0]	TGETS	  8	8	275	; slot8 = love.graphics.setColor
		467	[  0]	KSHORT	 10		0	; slot10 = 0
		468	[  0]	KSHORT	 11		0	; slot11 = 0
		469	[  0]	KSHORT	 12		0	; slot12 = 0
		470	[  0]	MULNV	 13	6	0	; slot13 = 0.65 * uv2"unknown"
		471	[  0]	CALL 	  8	1	5	;  = love.graphics.setColor(STEP_SHOP_INTRO, slot10, slot11, slot12)
		472	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		473	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		474	[  0]	TGETS	  8	8	274	; slot8 = love.graphics.rectangle
		475	[  0]	KSTR 	 10		273	; slot10 = "fill"
		476	[  0]	KSHORT	 11		0	; slot11 = 0
		477	[  0]	KSHORT	 12		0	; slot12 = 0
		478	[  0]	MOV  	 13		3	; slot13 = slot3
		479	[  0]	MOV  	 14		4	; slot14 = slot4
		480	[  0]	CALL 	  8	1	6	;  = love.graphics.rectangle(STEP_SHOP_INTRO, slot10, slot11, slot12, slot13)
		481	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		482	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		483	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		484	[  0]	CALL 	  8	1	1	;  = love.graphics.setStencilTest()
		485	[  0]	JMP  	  8		245	; 	goto 731
		486	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		487	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		488	[  0]	GGET 	  9		249	; slot9 = _env["STEP_SHOP_CURRENCY"]
		489	[  0]	ISNEV	  8		9	; if uv3"unknown".step ~= STEP_SHOP_CURRENCY
		490	[  0]	JMP  	  8		35	; 	goto 526
		491	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		492	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		493	[  0]	TGETS	  8	8	280	; slot8 = love.graphics.stencil
		494	[  0]	FNEW 	 10		248	; N/A:0-0: 0 args, 3 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  3	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
			  4	[  0]	CALL 	  2	2	2	; slot2 = uv1"unknown"(slot3)
			  5	[  0]	KSHORT	  3		5	; slot3 = 5
			  6	[  0]	CALL 	  0	1	3	;  = uv0"unknown"(slot1, slot2)
			  7	[  0]	RET0 	  0		1	; return
		495	[  0]	KSTR 	 11		278	; slot11 = "replace"
		496	[  0]	KSHORT	 12		1	; slot12 = 1
		497	[  0]	CALL 	  8	1	4	;  = love.graphics.stencil(STEP_SHOP_CURRENCY, slot10, slot11)
		498	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		499	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		500	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		501	[  0]	KSTR 	 10		276	; slot10 = "equal"
		502	[  0]	KSHORT	 11		0	; slot11 = 0
		503	[  0]	CALL 	  8	1	3	;  = love.graphics.setStencilTest(STEP_SHOP_CURRENCY, slot10)
		504	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		505	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		506	[  0]	TGETS	  8	8	275	; slot8 = love.graphics.setColor
		507	[  0]	KSHORT	 10		0	; slot10 = 0
		508	[  0]	KSHORT	 11		0	; slot11 = 0
		509	[  0]	KSHORT	 12		0	; slot12 = 0
		510	[  0]	MULNV	 13	6	0	; slot13 = 0.65 * uv2"unknown"
		511	[  0]	CALL 	  8	1	5	;  = love.graphics.setColor(STEP_SHOP_CURRENCY, slot10, slot11, slot12)
		512	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		513	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		514	[  0]	TGETS	  8	8	274	; slot8 = love.graphics.rectangle
		515	[  0]	KSTR 	 10		273	; slot10 = "fill"
		516	[  0]	KSHORT	 11		0	; slot11 = 0
		517	[  0]	KSHORT	 12		0	; slot12 = 0
		518	[  0]	MOV  	 13		3	; slot13 = slot3
		519	[  0]	MOV  	 14		4	; slot14 = slot4
		520	[  0]	CALL 	  8	1	6	;  = love.graphics.rectangle(STEP_SHOP_CURRENCY, slot10, slot11, slot12, slot13)
		521	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		522	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		523	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		524	[  0]	CALL 	  8	1	1	;  = love.graphics.setStencilTest()
		525	[  0]	JMP  	  8		205	; 	goto 731
		526	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		527	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		528	[  0]	GGET 	  9		247	; slot9 = _env["STEP_SHOP_BUY"]
		529	[  0]	ISNEV	  8		9	; if uv3"unknown".step ~= STEP_SHOP_BUY
		530	[  0]	JMP  	  8		35	; 	goto 566
		531	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		532	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		533	[  0]	TGETS	  8	8	280	; slot8 = love.graphics.stencil
		534	[  0]	FNEW 	 10		246	; N/A:0-0: 0 args, 3 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  3	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
			  4	[  0]	CALL 	  2	2	2	; slot2 = uv1"unknown"(slot3)
			  5	[  0]	KSHORT	  3		6	; slot3 = 6
			  6	[  0]	CALL 	  0	1	3	;  = uv0"unknown"(slot1, slot2)
			  7	[  0]	RET0 	  0		1	; return
		535	[  0]	KSTR 	 11		278	; slot11 = "replace"
		536	[  0]	KSHORT	 12		1	; slot12 = 1
		537	[  0]	CALL 	  8	1	4	;  = love.graphics.stencil(STEP_SHOP_BUY, slot10, slot11)
		538	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		539	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		540	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		541	[  0]	KSTR 	 10		276	; slot10 = "equal"
		542	[  0]	KSHORT	 11		0	; slot11 = 0
		543	[  0]	CALL 	  8	1	3	;  = love.graphics.setStencilTest(STEP_SHOP_BUY, slot10)
		544	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		545	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		546	[  0]	TGETS	  8	8	275	; slot8 = love.graphics.setColor
		547	[  0]	KSHORT	 10		0	; slot10 = 0
		548	[  0]	KSHORT	 11		0	; slot11 = 0
		549	[  0]	KSHORT	 12		0	; slot12 = 0
		550	[  0]	MULNV	 13	6	0	; slot13 = 0.65 * uv2"unknown"
		551	[  0]	CALL 	  8	1	5	;  = love.graphics.setColor(STEP_SHOP_BUY, slot10, slot11, slot12)
		552	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		553	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		554	[  0]	TGETS	  8	8	274	; slot8 = love.graphics.rectangle
		555	[  0]	KSTR 	 10		273	; slot10 = "fill"
		556	[  0]	KSHORT	 11		0	; slot11 = 0
		557	[  0]	KSHORT	 12		0	; slot12 = 0
		558	[  0]	MOV  	 13		3	; slot13 = slot3
		559	[  0]	MOV  	 14		4	; slot14 = slot4
		560	[  0]	CALL 	  8	1	6	;  = love.graphics.rectangle(STEP_SHOP_BUY, slot10, slot11, slot12, slot13)
		561	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		562	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		563	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		564	[  0]	CALL 	  8	1	1	;  = love.graphics.setStencilTest()
		565	[  0]	JMP  	  8		165	; 	goto 731
		566	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		567	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		568	[  0]	GGET 	  9		245	; slot9 = _env["STEP_SHOP_ITEM_BOUGHT"]
		569	[  0]	ISNEV	  8		9	; if uv3"unknown".step ~= STEP_SHOP_ITEM_BOUGHT
		570	[  0]	JMP  	  8		35	; 	goto 606
		571	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		572	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		573	[  0]	TGETS	  8	8	280	; slot8 = love.graphics.stencil
		574	[  0]	FNEW 	 10		244	; N/A:0-0: 0 args, 3 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  3	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
			  4	[  0]	CALL 	  2	2	2	; slot2 = uv1"unknown"(slot3)
			  5	[  0]	KSHORT	  3		6	; slot3 = 6
			  6	[  0]	CALL 	  0	1	3	;  = uv0"unknown"(slot1, slot2)
			  7	[  0]	RET0 	  0		1	; return
		575	[  0]	KSTR 	 11		278	; slot11 = "replace"
		576	[  0]	KSHORT	 12		1	; slot12 = 1
		577	[  0]	CALL 	  8	1	4	;  = love.graphics.stencil(STEP_SHOP_ITEM_BOUGHT, slot10, slot11)
		578	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		579	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		580	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		581	[  0]	KSTR 	 10		276	; slot10 = "equal"
		582	[  0]	KSHORT	 11		0	; slot11 = 0
		583	[  0]	CALL 	  8	1	3	;  = love.graphics.setStencilTest(STEP_SHOP_ITEM_BOUGHT, slot10)
		584	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		585	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		586	[  0]	TGETS	  8	8	275	; slot8 = love.graphics.setColor
		587	[  0]	KSHORT	 10		0	; slot10 = 0
		588	[  0]	KSHORT	 11		0	; slot11 = 0
		589	[  0]	KSHORT	 12		0	; slot12 = 0
		590	[  0]	MULNV	 13	6	0	; slot13 = 0.65 * uv2"unknown"
		591	[  0]	CALL 	  8	1	5	;  = love.graphics.setColor(STEP_SHOP_ITEM_BOUGHT, slot10, slot11, slot12)
		592	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		593	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		594	[  0]	TGETS	  8	8	274	; slot8 = love.graphics.rectangle
		595	[  0]	KSTR 	 10		273	; slot10 = "fill"
		596	[  0]	KSHORT	 11		0	; slot11 = 0
		597	[  0]	KSHORT	 12		0	; slot12 = 0
		598	[  0]	MOV  	 13		3	; slot13 = slot3
		599	[  0]	MOV  	 14		4	; slot14 = slot4
		600	[  0]	CALL 	  8	1	6	;  = love.graphics.rectangle(STEP_SHOP_ITEM_BOUGHT, slot10, slot11, slot12, slot13)
		601	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		602	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		603	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		604	[  0]	CALL 	  8	1	1	;  = love.graphics.setStencilTest()
		605	[  0]	JMP  	  8		125	; 	goto 731
		606	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		607	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		608	[  0]	GGET 	  9		243	; slot9 = _env["STEP_SHOP_RETURN"]
		609	[  0]	ISNEV	  8		9	; if uv3"unknown".step ~= STEP_SHOP_RETURN
		610	[  0]	JMP  	  8		35	; 	goto 646
		611	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		612	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		613	[  0]	TGETS	  8	8	280	; slot8 = love.graphics.stencil
		614	[  0]	FNEW 	 10		242	; N/A:0-0: 0 args, 4 upvalues, 6 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  3	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
			  4	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
			  5	[  0]	CALL 	  2	2	3	; slot2 = uv1"unknown"(slot3, uv2"unknown")
			  6	[  0]	KSHORT	  3		6	; slot3 = 6
			  7	[  0]	CALL 	  0	1	3	;  = uv0"unknown"(slot1, slot2)
			  8	[  0]	RET0 	  0		1	; return
		615	[  0]	KSTR 	 11		278	; slot11 = "replace"
		616	[  0]	KSHORT	 12		1	; slot12 = 1
		617	[  0]	CALL 	  8	1	4	;  = love.graphics.stencil(STEP_SHOP_RETURN, slot10, slot11)
		618	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		619	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		620	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		621	[  0]	KSTR 	 10		276	; slot10 = "equal"
		622	[  0]	KSHORT	 11		0	; slot11 = 0
		623	[  0]	CALL 	  8	1	3	;  = love.graphics.setStencilTest(STEP_SHOP_RETURN, slot10)
		624	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		625	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		626	[  0]	TGETS	  8	8	275	; slot8 = love.graphics.setColor
		627	[  0]	KSHORT	 10		0	; slot10 = 0
		628	[  0]	KSHORT	 11		0	; slot11 = 0
		629	[  0]	KSHORT	 12		0	; slot12 = 0
		630	[  0]	MULNV	 13	6	0	; slot13 = 0.65 * uv2"unknown"
		631	[  0]	CALL 	  8	1	5	;  = love.graphics.setColor(STEP_SHOP_RETURN, slot10, slot11, slot12)
		632	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		633	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		634	[  0]	TGETS	  8	8	274	; slot8 = love.graphics.rectangle
		635	[  0]	KSTR 	 10		273	; slot10 = "fill"
		636	[  0]	KSHORT	 11		0	; slot11 = 0
		637	[  0]	KSHORT	 12		0	; slot12 = 0
		638	[  0]	MOV  	 13		3	; slot13 = slot3
		639	[  0]	MOV  	 14		4	; slot14 = slot4
		640	[  0]	CALL 	  8	1	6	;  = love.graphics.rectangle(STEP_SHOP_RETURN, slot10, slot11, slot12, slot13)
		641	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		642	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		643	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		644	[  0]	CALL 	  8	1	1	;  = love.graphics.setStencilTest()
		645	[  0]	JMP  	  8		85	; 	goto 731
		646	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		647	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		648	[  0]	GGET 	  9		241	; slot9 = _env["STEP_WAVE_TYPES"]
		649	[  0]	ISEQV	  8		9	; if uv3"unknown".step == STEP_WAVE_TYPES
		650	[  0]	JMP  	  8		5	; 	goto 656
		651	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		652	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		653	[  0]	GGET 	  9		240	; slot9 = _env["STEP_TUTORIAL_COMPLETE"]
		654	[  0]	ISNEV	  8		9	; if uv3"unknown".step ~= STEP_TUTORIAL_COMPLETE
		655	[  0]	JMP  	  8		35	; 	goto 691
		656	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		657	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		658	[  0]	TGETS	  8	8	280	; slot8 = love.graphics.stencil
		659	[  0]	FNEW 	 10		239	; N/A:0-0: 0 args, 1 upvalues, 8 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	ISF  	   		0	; if not uv0"unknown"
			  3	[  0]	JMP  	  1		2	; 	goto 6
			  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  5	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".right
			  6	[  0]	ISF  	   		0	; if not uv0"unknown".right
			  7	[  0]	JMP  	  1		9	; 	goto 17
			  8	[  0]	GGET 	  1		7	; slot1 = _env["love"]
			  9	[  0]	TGETS	  1	1	6	; slot1 = love.graphics
			 10	[  0]	TGETS	  1	1	5	; slot1 = love.graphics.rectangle
			 11	[  0]	KSTR 	  3		4	; slot3 = "fill"
			 12	[  0]	TGETS	  4	0	3	; slot4 = uv0"unknown".right.x
			 13	[  0]	TGETS	  5	0	2	; slot5 = uv0"unknown".right.y
			 14	[  0]	TGETS	  6	0	1	; slot6 = uv0"unknown".right.w
			 15	[  0]	TGETS	  7	0	0	; slot7 = uv0"unknown".right.h
			 16	[  0]	CALL 	  1	1	6	;  = love.graphics.rectangle(slot2, slot3, uv0"unknown".right.x, uv0"unknown".right.y, uv0"unknown".right.w)
			 17	[  0]	RET0 	  0		1	; return
		660	[  0]	KSTR 	 11		278	; slot11 = "replace"
		661	[  0]	KSHORT	 12		1	; slot12 = 1
		662	[  0]	CALL 	  8	1	4	;  = love.graphics.stencil(STEP_TUTORIAL_COMPLETE, slot10, slot11)
		663	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		664	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		665	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		666	[  0]	KSTR 	 10		276	; slot10 = "equal"
		667	[  0]	KSHORT	 11		0	; slot11 = 0
		668	[  0]	CALL 	  8	1	3	;  = love.graphics.setStencilTest(STEP_TUTORIAL_COMPLETE, slot10)
		669	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		670	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		671	[  0]	TGETS	  8	8	275	; slot8 = love.graphics.setColor
		672	[  0]	KSHORT	 10		0	; slot10 = 0
		673	[  0]	KSHORT	 11		0	; slot11 = 0
		674	[  0]	KSHORT	 12		0	; slot12 = 0
		675	[  0]	MULNV	 13	6	0	; slot13 = 0.65 * uv2"unknown"
		676	[  0]	CALL 	  8	1	5	;  = love.graphics.setColor(STEP_TUTORIAL_COMPLETE, slot10, slot11, slot12)
		677	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		678	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		679	[  0]	TGETS	  8	8	274	; slot8 = love.graphics.rectangle
		680	[  0]	KSTR 	 10		273	; slot10 = "fill"
		681	[  0]	KSHORT	 11		0	; slot11 = 0
		682	[  0]	KSHORT	 12		0	; slot12 = 0
		683	[  0]	MOV  	 13		3	; slot13 = slot3
		684	[  0]	MOV  	 14		4	; slot14 = slot4
		685	[  0]	CALL 	  8	1	6	;  = love.graphics.rectangle(STEP_TUTORIAL_COMPLETE, slot10, slot11, slot12, slot13)
		686	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		687	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		688	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		689	[  0]	CALL 	  8	1	1	;  = love.graphics.setStencilTest()
		690	[  0]	JMP  	  8		40	; 	goto 731
		691	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		692	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		693	[  0]	GGET 	  9		238	; slot9 = _env["STEP_ABSORB_MODAL"]
		694	[  0]	ISNEV	  8		9	; if uv3"unknown".step ~= STEP_ABSORB_MODAL
		695	[  0]	JMP  	  8		1	; 	goto 697
		696	[  0]	JMP  	  8		34	; 	goto 731
		697	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		698	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		699	[  0]	TGETS	  8	8	280	; slot8 = love.graphics.stencil
		700	[  0]	FNEW 	 10		237	; N/A:0-0: 0 args, 5 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	TGETS	  0	0	18	; slot0 = uv0"unknown".step
			  3	[  0]	GGET 	  1		17	; slot1 = _env["STEP_SLOT"]
			  4	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_SLOT
			  5	[  0]	JMP  	  0		80	; 	goto 86
			  6	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  7	[  0]	TGETS	  0	0	18	; slot0 = uv0"unknown".step
			  8	[  0]	GGET 	  1		16	; slot1 = _env["STEP_GOLD"]
			  9	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_GOLD
			 10	[  0]	JMP  	  0		75	; 	goto 86
			 11	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 12	[  0]	TGETS	  0	0	18	; slot0 = uv0"unknown".step
			 13	[  0]	GGET 	  1		15	; slot1 = _env["STEP_SECOND_SPIN"]
			 14	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_SECOND_SPIN
			 15	[  0]	JMP  	  0		70	; 	goto 86
			 16	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 17	[  0]	TGETS	  0	0	18	; slot0 = uv0"unknown".step
			 18	[  0]	GGET 	  1		14	; slot1 = _env["STEP_SECOND_SPINNING"]
			 19	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_SECOND_SPINNING
			 20	[  0]	JMP  	  0		65	; 	goto 86
			 21	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 22	[  0]	TGETS	  0	0	18	; slot0 = uv0"unknown".step
			 23	[  0]	GGET 	  1		13	; slot1 = _env["STEP_REWARD_SPIN"]
			 24	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_REWARD_SPIN
			 25	[  0]	JMP  	  0		60	; 	goto 86
			 26	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 27	[  0]	TGETS	  0	0	18	; slot0 = uv0"unknown".step
			 28	[  0]	GGET 	  1		12	; slot1 = _env["STEP_REWARD_SPINNING"]
			 29	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_REWARD_SPINNING
			 30	[  0]	JMP  	  0		55	; 	goto 86
			 31	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 32	[  0]	TGETS	  0	0	18	; slot0 = uv0"unknown".step
			 33	[  0]	GGET 	  1		11	; slot1 = _env["STEP_MORE_SPIN"]
			 34	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_MORE_SPIN
			 35	[  0]	JMP  	  0		50	; 	goto 86
			 36	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 37	[  0]	TGETS	  0	0	18	; slot0 = uv0"unknown".step
			 38	[  0]	GGET 	  1		10	; slot1 = _env["STEP_MORE_SPINNING"]
			 39	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_MORE_SPINNING
			 40	[  0]	JMP  	  0		45	; 	goto 86
			 41	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 42	[  0]	TGETS	  0	0	18	; slot0 = uv0"unknown".step
			 43	[  0]	GGET 	  1		9	; slot1 = _env["STEP_NUDGE_MISS"]
			 44	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_NUDGE_MISS
			 45	[  0]	JMP  	  0		40	; 	goto 86
			 46	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 47	[  0]	TGETS	  0	0	18	; slot0 = uv0"unknown".step
			 48	[  0]	GGET 	  1		8	; slot1 = _env["STEP_NUDGE_WIN"]
			 49	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_NUDGE_WIN
			 50	[  0]	JMP  	  0		35	; 	goto 86
			 51	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 52	[  0]	TGETS	  0	0	18	; slot0 = uv0"unknown".step
			 53	[  0]	GGET 	  1		7	; slot1 = _env["STEP_CORE_SPIN"]
			 54	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_CORE_SPIN
			 55	[  0]	JMP  	  0		30	; 	goto 86
			 56	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 57	[  0]	TGETS	  0	0	18	; slot0 = uv0"unknown".step
			 58	[  0]	GGET 	  1		6	; slot1 = _env["STEP_CORE_SPINNING"]
			 59	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_CORE_SPINNING
			 60	[  0]	JMP  	  0		25	; 	goto 86
			 61	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 62	[  0]	TGETS	  0	0	18	; slot0 = uv0"unknown".step
			 63	[  0]	GGET 	  1		5	; slot1 = _env["STEP_POST_CORE_SLOT"]
			 64	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_POST_CORE_SLOT
			 65	[  0]	JMP  	  0		20	; 	goto 86
			 66	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 67	[  0]	TGETS	  0	0	18	; slot0 = uv0"unknown".step
			 68	[  0]	GGET 	  1		4	; slot1 = _env["STEP_POST_CORE_SPINNING"]
			 69	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_POST_CORE_SPINNING
			 70	[  0]	JMP  	  0		15	; 	goto 86
			 71	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 72	[  0]	TGETS	  0	0	18	; slot0 = uv0"unknown".step
			 73	[  0]	GGET 	  1		3	; slot1 = _env["STEP_POST_CORE_SECOND_SPIN"]
			 74	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_POST_CORE_SECOND_SPIN
			 75	[  0]	JMP  	  0		10	; 	goto 86
			 76	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 77	[  0]	TGETS	  0	0	18	; slot0 = uv0"unknown".step
			 78	[  0]	GGET 	  1		2	; slot1 = _env["STEP_POST_CORE_SECOND_SPINNING"]
			 79	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_POST_CORE_SECOND_SPINNING
			 80	[  0]	JMP  	  0		5	; 	goto 86
			 81	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 82	[  0]	TGETS	  0	0	18	; slot0 = uv0"unknown".step
			 83	[  0]	GGET 	  1		1	; slot1 = _env["STEP_SLOT_BROKEN"]
			 84	[  0]	ISNEV	  0		1	; if uv0"unknown".step ~= STEP_SLOT_BROKEN
			 85	[  0]	JMP  	  0		4	; 	goto 90
			 86	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
			 87	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
			 88	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
			 89	[  0]	CALL 	  0	1	3	;  = uv1"unknown"(STEP_SLOT_BROKEN, uv2"unknown")
			 90	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 91	[  0]	TGETS	  0	0	18	; slot0 = uv0"unknown".step
			 92	[  0]	GGET 	  1		16	; slot1 = _env["STEP_GOLD"]
			 93	[  0]	ISEQV	  0		1	; if uv0"unknown".step == STEP_GOLD
			 94	[  0]	JMP  	  0		5	; 	goto 100
			 95	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 96	[  0]	TGETS	  0	0	18	; slot0 = uv0"unknown".step
			 97	[  0]	GGET 	  1		0	; slot1 = _env["STEP_WAVE_REWARD"]
			 98	[  0]	ISNEV	  0		1	; if uv0"unknown".step ~= STEP_WAVE_REWARD
			 99	[  0]	JMP  	  0		3	; 	goto 103
			100	[  0]	UGET 	  0		4	; slot0 = uv4"unknwon"
			101	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
			102	[  0]	CALL 	  0	1	2	;  = uv4"unknown"(STEP_WAVE_REWARD)
			103	[  0]	RET0 	  0		1	; return
		701	[  0]	KSTR 	 11		278	; slot11 = "replace"
		702	[  0]	KSHORT	 12		1	; slot12 = 1
		703	[  0]	CALL 	  8	1	4	;  = love.graphics.stencil(STEP_ABSORB_MODAL, slot10, slot11)
		704	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		705	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		706	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		707	[  0]	KSTR 	 10		276	; slot10 = "equal"
		708	[  0]	KSHORT	 11		0	; slot11 = 0
		709	[  0]	CALL 	  8	1	3	;  = love.graphics.setStencilTest(STEP_ABSORB_MODAL, slot10)
		710	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		711	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		712	[  0]	TGETS	  8	8	275	; slot8 = love.graphics.setColor
		713	[  0]	KSHORT	 10		0	; slot10 = 0
		714	[  0]	KSHORT	 11		0	; slot11 = 0
		715	[  0]	KSHORT	 12		0	; slot12 = 0
		716	[  0]	MULNV	 13	6	0	; slot13 = 0.65 * uv2"unknown"
		717	[  0]	CALL 	  8	1	5	;  = love.graphics.setColor(STEP_ABSORB_MODAL, slot10, slot11, slot12)
		718	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		719	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		720	[  0]	TGETS	  8	8	274	; slot8 = love.graphics.rectangle
		721	[  0]	KSTR 	 10		273	; slot10 = "fill"
		722	[  0]	KSHORT	 11		0	; slot11 = 0
		723	[  0]	KSHORT	 12		0	; slot12 = 0
		724	[  0]	MOV  	 13		3	; slot13 = slot3
		725	[  0]	MOV  	 14		4	; slot14 = slot4
		726	[  0]	CALL 	  8	1	6	;  = love.graphics.rectangle(STEP_ABSORB_MODAL, slot10, slot11, slot12, slot13)
		727	[  0]	GGET 	  8		295	; slot8 = _env["love"]
		728	[  0]	TGETS	  8	8	294	; slot8 = love.graphics
		729	[  0]	TGETS	  8	8	277	; slot8 = love.graphics.setStencilTest
		730	[  0]	CALL 	  8	1	1	;  = love.graphics.setStencilTest()
		731	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		732	[  0]	TGETS	  8	8	286	; slot8 = uv3"unknown".step
		733	[  0]	GGET 	  9		238	; slot9 = _env["STEP_ABSORB_MODAL"]
		734	[  0]	ISNEV	  8		9	; if uv3"unknown".step ~= STEP_ABSORB_MODAL
		735	[  0]	JMP  	  8		2	; 	goto 738
		736	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 737
		737	[  0]	RET0 	  0		1	; return
		738	[  0]	ISF  	   		0	; if not slot0
		739	[  0]	JMP  	  8		7	; 	goto 747
		740	[  0]	TGETS	  8	0	236	; slot8 = slot0.tutorial
		741	[  0]	ISF  	   		8	; if not <unknown table>.tutorial
		742	[  0]	JMP  	  9		4	; 	goto 747
		743	[  0]	TGETS	  8	0	236	; slot8 = slot0.tutorial
		744	[  0]	TGETS	  8	8	235	; slot8 = <unknown table>.tutorial.slotTip
		745	[  0]	IST  	   		8	; if <unknown table>.tutorial.slotTip
		746	[  0]	JMP  	  9		1	; 	goto 748
		747	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
		748	[  0]	ISF  	   		0	; if not slot0
		749	[  0]	JMP  	  9		7	; 	goto 757
		750	[  0]	TGETS	  9	0	236	; slot9 = slot0.tutorial
		751	[  0]	ISF  	   		9	; if not <unknown table>.tutorial
		752	[  0]	JMP  	 10		4	; 	goto 757
		753	[  0]	TGETS	  9	0	236	; slot9 = slot0.tutorial
		754	[  0]	TGETS	  9	9	234	; slot9 = <unknown table>.tutorial.unitNameColor
		755	[  0]	IST  	   		9	; if <unknown table>.tutorial.unitNameColor
		756	[  0]	JMP  	 10		1	; 	goto 758
		757	[  0]	TDUP 	  9		233	; slot9 = copy table#k233
		758	[  0]	ISF  	   		0	; if not slot0
		759	[  0]	JMP  	 10		7	; 	goto 767
		760	[  0]	TGETS	 10	0	236	; slot10 = slot0.tutorial
		761	[  0]	ISF  	   		10	; if not <unknown table>.tutorial
		762	[  0]	JMP  	 11		4	; 	goto 767
		763	[  0]	TGETS	 10	0	236	; slot10 = slot0.tutorial
		764	[  0]	TGETS	 10	10	232	; slot10 = <unknown table>.tutorial.absorbColor
		765	[  0]	IST  	   		10	; if <unknown table>.tutorial.absorbColor
		766	[  0]	JMP  	 11		1	; 	goto 768
		767	[  0]	TDUP 	 10		231	; slot10 = copy table#k231
		768	[  0]	UGET 	 11		3	; slot11 = uv3"unknwon"
		769	[  0]	TGETS	 11	11	286	; slot11 = uv3"unknown".step
		770	[  0]	GGET 	 12		257	; slot12 = _env["STEP_CORE_SELECT"]
		771	[  0]	ISNEV	 11		12	; if uv3"unknown".step ~= STEP_CORE_SELECT
		772	[  0]	JMP  	 11		41	; 	goto 814
		773	[  0]	ISFC 	 11		0	; slot11 = slot0; if not slot0
		774	[  0]	JMP  	 11		1	; 	goto 776
		775	[  0]	TGETS	 11	0	230	; slot11 = slot0._coreSelect
		776	[  0]	ISFC 	 12		11	; slot12 = <unknown table>._coreSelect; if not <unknown table>._coreSelect
		777	[  0]	JMP  	 12		19	; 	goto 797
		778	[  0]	TGETS	 12	11	229	; slot12 = <unknown table>._coreSelect.left
		779	[  0]	ISF  	   		12	; if not <unknown table>._coreSelect.left
		780	[  0]	JMP  	 13		16	; 	goto 797
		781	[  0]	TGETS	 12	11	229	; slot12 = <unknown table>._coreSelect.left
		782	[  0]	TGETS	 12	12	228	; slot12 = <unknown table>._coreSelect.left.done
		783	[  0]	ISF  	   		12	; if not <unknown table>._coreSelect.left.done
		784	[  0]	JMP  	 13		12	; 	goto 797
		785	[  0]	TGETS	 12	11	227	; slot12 = <unknown table>._coreSelect.mid
		786	[  0]	ISF  	   		12	; if not <unknown table>._coreSelect.mid
		787	[  0]	JMP  	 13		9	; 	goto 797
		788	[  0]	TGETS	 12	11	227	; slot12 = <unknown table>._coreSelect.mid
		789	[  0]	TGETS	 12	12	228	; slot12 = <unknown table>._coreSelect.mid.done
		790	[  0]	ISF  	   		12	; if not <unknown table>._coreSelect.mid.done
		791	[  0]	JMP  	 13		5	; 	goto 797
		792	[  0]	TGETS	 12	11	226	; slot12 = <unknown table>._coreSelect.right
		793	[  0]	ISF  	   		12	; if not <unknown table>._coreSelect.right
		794	[  0]	JMP  	 13		2	; 	goto 797
		795	[  0]	TGETS	 12	11	226	; slot12 = <unknown table>._coreSelect.right
		796	[  0]	TGETS	 12	12	228	; slot12 = <unknown table>._coreSelect.right.done
		797	[  0]	IST  	   		12	; if <unknown table>._coreSelect.right.done
		798	[  0]	JMP  	 13		2	; 	goto 801
		799	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 800
		800	[  0]	RET0 	  0		1	; return
		801	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		802	[  0]	TGETS	 13	13	225	; slot13 = uv3"unknown".coreSelectTipReady
		803	[  0]	ISEQP	 13		2	; if uv3"unknown".coreSelectTipReady == true
		804	[  0]	JMP  	 13		9	; 	goto 814
		805	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		806	[  0]	KPRI 	 14		2	; slot14 = true
		807	[  0]	TSETS	 14	13	225	; uv3"unknown".coreSelectTipReady = slot14
		808	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		809	[  0]	KSHORT	 14		0	; slot14 = 0
		810	[  0]	TSETS	 14	13	287	; uv3"unknown".stepT = slot14
		811	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		812	[  0]	KSHORT	 14		0	; slot14 = 0
		813	[  0]	TSETS	 14	13	224	; uv3"unknown".stepElapsed = slot14
		814	[  0]	KPRI 	 11		0	; slot11 = nil
		815	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		816	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		817	[  0]	GGET 	 13		223	; slot13 = _env["STEP_GOLD"]
		818	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_GOLD
		819	[  0]	JMP  	 12		19	; 	goto 839
		820	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		821	[  0]	TNEW 	 13		4	; slot13 = new table( array: 4, dict: 1)
		822	[  0]	TDUP 	 14		221	; slot14 = copy table#k221
		823	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		824	[  0]	KSTR 	 17		222	; slot17 = "slot_cost_prefix"
		825	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		826	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		827	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		828	[  0]	TDUP 	 14		219	; slot14 = copy table#k219
		829	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		830	[  0]	TDUP 	 14		217	; slot14 = copy table#k217
		831	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		832	[  0]	KSTR 	 17		218	; slot17 = "slot_cost_suffix"
		833	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		834	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		835	[  0]	TSETB	 14	13	3	; slot13[3] = slot14
		836	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		837	[  0]	MOV  	 11		12	; slot11 = slot12
		838	[  0]	JMP  	 12		947	; 	goto 1786
		839	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		840	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		841	[  0]	GGET 	 13		285	; slot13 = _env["STEP_ARCHER_WIN"]
		842	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_ARCHER_WIN
		843	[  0]	JMP  	 12		24	; 	goto 868
		844	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		845	[  0]	TNEW 	 13		4	; slot13 = new table( array: 4, dict: 1)
		846	[  0]	TDUP 	 14		215	; slot14 = copy table#k215
		847	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		848	[  0]	KSTR 	 17		216	; slot17 = "good_prefix"
		849	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		850	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		851	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		852	[  0]	TDUP 	 14		213	; slot14 = copy table#k213
		853	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		854	[  0]	KSTR 	 17		214	; slot17 = "unit_archer"
		855	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		856	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		857	[  0]	TSETS	  9	14	212	; slot14.color = slot9
		858	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		859	[  0]	TDUP 	 14		210	; slot14 = copy table#k210
		860	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		861	[  0]	KSTR 	 17		211	; slot17 = "archer_summoned_suffix"
		862	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		863	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		864	[  0]	TSETB	 14	13	3	; slot13[3] = slot14
		865	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		866	[  0]	MOV  	 11		12	; slot11 = slot12
		867	[  0]	JMP  	 12		918	; 	goto 1786
		868	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		869	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		870	[  0]	GGET 	 13		209	; slot13 = _env["STEP_SECOND_SPIN"]
		871	[  0]	ISEQV	 12		13	; if uv3"unknown".step == STEP_SECOND_SPIN
		872	[  0]	JMP  	 12		5	; 	goto 878
		873	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		874	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		875	[  0]	GGET 	 13		208	; slot13 = _env["STEP_SECOND_SPINNING"]
		876	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_SECOND_SPINNING
		877	[  0]	JMP  	 12		7	; 	goto 885
		878	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		879	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		880	[  0]	KSTR 	 15		207	; slot15 = "second_spin"
		881	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		882	[  0]	TSETM	 13		2	; for i = 0, MULTRES, 1 do slot12[2 + i] = slot(13 + i)
		883	[  0]	MOV  	 11		12	; slot11 = slot12
		884	[  0]	JMP  	 12		901	; 	goto 1786
		885	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		886	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		887	[  0]	GGET 	 13		284	; slot13 = _env["STEP_WARRIOR_WIN"]
		888	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_WARRIOR_WIN
		889	[  0]	JMP  	 12		24	; 	goto 914
		890	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		891	[  0]	TNEW 	 13		4	; slot13 = new table( array: 4, dict: 1)
		892	[  0]	TDUP 	 14		205	; slot14 = copy table#k205
		893	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		894	[  0]	KSTR 	 17		206	; slot17 = "this_time_prefix"
		895	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		896	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		897	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		898	[  0]	TDUP 	 14		203	; slot14 = copy table#k203
		899	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		900	[  0]	KSTR 	 17		204	; slot17 = "unit_warrior"
		901	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		902	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		903	[  0]	TSETS	  9	14	212	; slot14.color = slot9
		904	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		905	[  0]	TDUP 	 14		201	; slot14 = copy table#k201
		906	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		907	[  0]	KSTR 	 17		202	; slot17 = "warrior_summoned_suffix"
		908	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		909	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		910	[  0]	TSETB	 14	13	3	; slot13[3] = slot14
		911	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		912	[  0]	MOV  	 11		12	; slot11 = slot12
		913	[  0]	JMP  	 12		872	; 	goto 1786
		914	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		915	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		916	[  0]	GGET 	 13		283	; slot13 = _env["STEP_UNIT_HOVER"]
		917	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_UNIT_HOVER
		918	[  0]	JMP  	 12		11	; 	goto 930
		919	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		920	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		921	[  0]	KSTR 	 15		200	; slot15 = "unit_hover_1"
		922	[  0]	CALL 	 13	2	2	; slot13 = uv20"unknown"(slot14)
		923	[  0]	TSETB	 13	12	1	; slot12[1] = uv20"unknown"
		924	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		925	[  0]	KSTR 	 15		199	; slot15 = "unit_hover_2"
		926	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		927	[  0]	TSETM	 13		3	; for i = 0, MULTRES, 1 do slot12[3 + i] = slot(13 + i)
		928	[  0]	MOV  	 11		12	; slot11 = slot12
		929	[  0]	JMP  	 12		856	; 	goto 1786
		930	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		931	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		932	[  0]	GGET 	 13		270	; slot13 = _env["STEP_POSITION"]
		933	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_POSITION
		934	[  0]	JMP  	 12		53	; 	goto 988
		935	[  0]	TNEW 	 12		4	; slot12 = new table( array: 4, dict: 1)
		936	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		937	[  0]	KSTR 	 15		198	; slot15 = "position_1"
		938	[  0]	CALL 	 13	2	2	; slot13 = uv20"unknown"(slot14)
		939	[  0]	TSETB	 13	12	1	; slot12[1] = uv20"unknown"
		940	[  0]	TNEW 	 13		4	; slot13 = new table( array: 4, dict: 1)
		941	[  0]	TDUP 	 14		196	; slot14 = copy table#k196
		942	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		943	[  0]	KSTR 	 17		197	; slot17 = "mouse_prefix"
		944	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		945	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		946	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		947	[  0]	TDUP 	 14		195	; slot14 = copy table#k195
		948	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		949	[  0]	TDUP 	 14		193	; slot14 = copy table#k193
		950	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		951	[  0]	KSTR 	 17		194	; slot17 = "position_drag_suffix"
		952	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		953	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		954	[  0]	TSETB	 14	13	3	; slot13[3] = slot14
		955	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		956	[  0]	TNEW 	 13		6	; slot13 = new table( array: 6, dict: 1)
		957	[  0]	TDUP 	 14		192	; slot14 = copy table#k192
		958	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		959	[  0]	KSTR 	 17		204	; slot17 = "unit_warrior"
		960	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		961	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		962	[  0]	TSETS	  9	14	212	; slot14.color = slot9
		963	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		964	[  0]	TDUP 	 14		190	; slot14 = copy table#k190
		965	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		966	[  0]	KSTR 	 17		191	; slot17 = "warrior_front_suffix"
		967	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		968	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		969	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		970	[  0]	TDUP 	 14		189	; slot14 = copy table#k189
		971	[  0]	TSETB	 14	13	3	; slot13[3] = slot14
		972	[  0]	TDUP 	 14		188	; slot14 = copy table#k188
		973	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		974	[  0]	KSTR 	 17		214	; slot17 = "unit_archer"
		975	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		976	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		977	[  0]	TSETS	  9	14	212	; slot14.color = slot9
		978	[  0]	TSETB	 14	13	4	; slot13[4] = slot14
		979	[  0]	TDUP 	 14		186	; slot14 = copy table#k186
		980	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		981	[  0]	KSTR 	 17		187	; slot17 = "archer_back_suffix"
		982	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		983	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		984	[  0]	TSETB	 14	13	5	; slot13[5] = slot14
		985	[  0]	TSETB	 13	12	3	; slot12[3] = slot13
		986	[  0]	MOV  	 11		12	; slot11 = slot12
		987	[  0]	JMP  	 12		798	; 	goto 1786
		988	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		989	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		990	[  0]	GGET 	 13		185	; slot13 = _env["STEP_WAVE_REWARD"]
		991	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_WAVE_REWARD
		992	[  0]	JMP  	 12		19	; 	goto 1012
		993	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		994	[  0]	TNEW 	 13		4	; slot13 = new table( array: 4, dict: 1)
		995	[  0]	TDUP 	 14		183	; slot14 = copy table#k183
		996	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		997	[  0]	KSTR 	 17		184	; slot17 = "wave_reward_prefix"
		998	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		999	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1000	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		1001	[  0]	TDUP 	 14		182	; slot14 = copy table#k182
		1002	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		1003	[  0]	TDUP 	 14		180	; slot14 = copy table#k180
		1004	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1005	[  0]	KSTR 	 17		181	; slot17 = "wave_reward_suffix"
		1006	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1007	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1008	[  0]	TSETB	 14	13	3	; slot13[3] = slot14
		1009	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1010	[  0]	MOV  	 11		12	; slot11 = slot12
		1011	[  0]	JMP  	 12		774	; 	goto 1786
		1012	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1013	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1014	[  0]	GGET 	 13		179	; slot13 = _env["STEP_REWARD_SPIN"]
		1015	[  0]	ISEQV	 12		13	; if uv3"unknown".step == STEP_REWARD_SPIN
		1016	[  0]	JMP  	 12		5	; 	goto 1022
		1017	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1018	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1019	[  0]	GGET 	 13		178	; slot13 = _env["STEP_REWARD_SPINNING"]
		1020	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_REWARD_SPINNING
		1021	[  0]	JMP  	 12		19	; 	goto 1041
		1022	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1023	[  0]	TNEW 	 13		4	; slot13 = new table( array: 4, dict: 1)
		1024	[  0]	TDUP 	 14		176	; slot14 = copy table#k176
		1025	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1026	[  0]	KSTR 	 17		177	; slot17 = "reward_spin_prefix"
		1027	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1028	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1029	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		1030	[  0]	TDUP 	 14		175	; slot14 = copy table#k175
		1031	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		1032	[  0]	TDUP 	 14		173	; slot14 = copy table#k173
		1033	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1034	[  0]	KSTR 	 17		174	; slot17 = "reward_spin_suffix"
		1035	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1036	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1037	[  0]	TSETB	 14	13	3	; slot13[3] = slot14
		1038	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1039	[  0]	MOV  	 11		12	; slot11 = slot12
		1040	[  0]	JMP  	 12		745	; 	goto 1786
		1041	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1042	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1043	[  0]	GGET 	 13		172	; slot13 = _env["STEP_MORE_SPIN"]
		1044	[  0]	ISEQV	 12		13	; if uv3"unknown".step == STEP_MORE_SPIN
		1045	[  0]	JMP  	 12		5	; 	goto 1051
		1046	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1047	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1048	[  0]	GGET 	 13		171	; slot13 = _env["STEP_MORE_SPINNING"]
		1049	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_MORE_SPINNING
		1050	[  0]	JMP  	 12		31	; 	goto 1082
		1051	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1052	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1053	[  0]	GGET 	 13		171	; slot13 = _env["STEP_MORE_SPINNING"]
		1054	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_MORE_SPINNING
		1055	[  0]	JMP  	 12		15	; 	goto 1071
		1056	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1057	[  0]	TGETS	 12	12	170	; slot12 = uv3"unknown".nudgePressed
		1058	[  0]	ISF  	   		12	; if not uv3"unknown".nudgePressed
		1059	[  0]	JMP  	 13		11	; 	goto 1071
		1060	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1061	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1062	[  0]	KSTR 	 15		169	; slot15 = "nudge_win_1"
		1063	[  0]	CALL 	 13	2	2	; slot13 = uv20"unknown"(slot14)
		1064	[  0]	TSETB	 13	12	1	; slot12[1] = uv20"unknown"
		1065	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1066	[  0]	KSTR 	 15		168	; slot15 = "nudge_win_2"
		1067	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1068	[  0]	TSETM	 13		3	; for i = 0, MULTRES, 1 do slot12[3 + i] = slot(13 + i)
		1069	[  0]	MOV  	 11		12	; slot11 = slot12
		1070	[  0]	JMP  	 12		715	; 	goto 1786
		1071	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1072	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1073	[  0]	KSTR 	 15		167	; slot15 = "more_spin_1"
		1074	[  0]	CALL 	 13	2	2	; slot13 = uv20"unknown"(slot14)
		1075	[  0]	TSETB	 13	12	1	; slot12[1] = uv20"unknown"
		1076	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1077	[  0]	KSTR 	 15		166	; slot15 = "more_spin_2"
		1078	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1079	[  0]	TSETM	 13		3	; for i = 0, MULTRES, 1 do slot12[3 + i] = slot(13 + i)
		1080	[  0]	MOV  	 11		12	; slot11 = slot12
		1081	[  0]	JMP  	 12		704	; 	goto 1786
		1082	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1083	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1084	[  0]	GGET 	 13		165	; slot13 = _env["STEP_NUDGE_MISS"]
		1085	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_NUDGE_MISS
		1086	[  0]	JMP  	 12		11	; 	goto 1098
		1087	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1088	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1089	[  0]	KSTR 	 15		164	; slot15 = "nudge_miss_1"
		1090	[  0]	CALL 	 13	2	2	; slot13 = uv20"unknown"(slot14)
		1091	[  0]	TSETB	 13	12	1	; slot12[1] = uv20"unknown"
		1092	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1093	[  0]	KSTR 	 15		163	; slot15 = "nudge_miss_2"
		1094	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1095	[  0]	TSETM	 13		3	; for i = 0, MULTRES, 1 do slot12[3 + i] = slot(13 + i)
		1096	[  0]	MOV  	 11		12	; slot11 = slot12
		1097	[  0]	JMP  	 12		688	; 	goto 1786
		1098	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1099	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1100	[  0]	GGET 	 13		264	; slot13 = _env["STEP_NUDGE_ACTION"]
		1101	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_NUDGE_ACTION
		1102	[  0]	JMP  	 12		22	; 	goto 1125
		1103	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1104	[  0]	TGETS	 12	12	170	; slot12 = uv3"unknown".nudgePressed
		1105	[  0]	ISF  	   		12	; if not uv3"unknown".nudgePressed
		1106	[  0]	JMP  	 13		11	; 	goto 1118
		1107	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1108	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1109	[  0]	KSTR 	 15		169	; slot15 = "nudge_win_1"
		1110	[  0]	CALL 	 13	2	2	; slot13 = uv20"unknown"(slot14)
		1111	[  0]	TSETB	 13	12	1	; slot12[1] = uv20"unknown"
		1112	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1113	[  0]	KSTR 	 15		168	; slot15 = "nudge_win_2"
		1114	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1115	[  0]	TSETM	 13		3	; for i = 0, MULTRES, 1 do slot12[3 + i] = slot(13 + i)
		1116	[  0]	MOV  	 11		12	; slot11 = slot12
		1117	[  0]	JMP  	 12		668	; 	goto 1786
		1118	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1119	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1120	[  0]	KSTR 	 15		162	; slot15 = "nudge_action"
		1121	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1122	[  0]	TSETM	 13		2	; for i = 0, MULTRES, 1 do slot12[2 + i] = slot(13 + i)
		1123	[  0]	MOV  	 11		12	; slot11 = slot12
		1124	[  0]	JMP  	 12		661	; 	goto 1786
		1125	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1126	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1127	[  0]	GGET 	 13		161	; slot13 = _env["STEP_NUDGE_WIN"]
		1128	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_NUDGE_WIN
		1129	[  0]	JMP  	 12		11	; 	goto 1141
		1130	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1131	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1132	[  0]	KSTR 	 15		169	; slot15 = "nudge_win_1"
		1133	[  0]	CALL 	 13	2	2	; slot13 = uv20"unknown"(slot14)
		1134	[  0]	TSETB	 13	12	1	; slot12[1] = uv20"unknown"
		1135	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1136	[  0]	KSTR 	 15		168	; slot15 = "nudge_win_2"
		1137	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1138	[  0]	TSETM	 13		3	; for i = 0, MULTRES, 1 do slot12[3 + i] = slot(13 + i)
		1139	[  0]	MOV  	 11		12	; slot11 = slot12
		1140	[  0]	JMP  	 12		645	; 	goto 1786
		1141	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1142	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1143	[  0]	GGET 	 13		262	; slot13 = _env["STEP_ABSORB_BUTTON"]
		1144	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_ABSORB_BUTTON
		1145	[  0]	JMP  	 12		39	; 	goto 1185
		1146	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1147	[  0]	TNEW 	 13		4	; slot13 = new table( array: 4, dict: 1)
		1148	[  0]	TDUP 	 14		159	; slot14 = copy table#k159
		1149	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1150	[  0]	KSTR 	 17		160	; slot17 = "absorb_intro_prefix"
		1151	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1152	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1153	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		1154	[  0]	TDUP 	 14		157	; slot14 = copy table#k157
		1155	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1156	[  0]	KSTR 	 17		158	; slot17 = "absorb_word"
		1157	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1158	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1159	[  0]	TSETS	 10	14	212	; slot14.color = slot10
		1160	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		1161	[  0]	TDUP 	 14		155	; slot14 = copy table#k155
		1162	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1163	[  0]	KSTR 	 17		156	; slot17 = "absorb_intro_suffix"
		1164	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1165	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1166	[  0]	TSETB	 14	13	3	; slot13[3] = slot14
		1167	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1168	[  0]	TNEW 	 13		3	; slot13 = new table( array: 3, dict: 1)
		1169	[  0]	TDUP 	 14		154	; slot14 = copy table#k154
		1170	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1171	[  0]	KSTR 	 17		158	; slot17 = "absorb_word"
		1172	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1173	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1174	[  0]	TSETS	 10	14	212	; slot14.color = slot10
		1175	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		1176	[  0]	TDUP 	 14		152	; slot14 = copy table#k152
		1177	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1178	[  0]	KSTR 	 17		153	; slot17 = "absorb_button_suffix"
		1179	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1180	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1181	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		1182	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		1183	[  0]	MOV  	 11		12	; slot11 = slot12
		1184	[  0]	JMP  	 12		601	; 	goto 1786
		1185	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1186	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1187	[  0]	GGET 	 13		269	; slot13 = _env["STEP_ABSORB_DRAG"]
		1188	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_ABSORB_DRAG
		1189	[  0]	JMP  	 12		44	; 	goto 1234
		1190	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1191	[  0]	TNEW 	 13		7	; slot13 = new table( array: 7, dict: 1)
		1192	[  0]	TDUP 	 14		150	; slot14 = copy table#k150
		1193	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1194	[  0]	KSTR 	 17		151	; slot17 = "unit_spearman"
		1195	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1196	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1197	[  0]	TSETS	  9	14	212	; slot14.color = slot9
		1198	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		1199	[  0]	TDUP 	 14		148	; slot14 = copy table#k148
		1200	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1201	[  0]	KSTR 	 17		149	; slot17 = "object_particle"
		1202	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1203	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1204	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		1205	[  0]	TDUP 	 14		147	; slot14 = copy table#k147
		1206	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1207	[  0]	KSTR 	 17		214	; slot17 = "unit_archer"
		1208	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1209	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1210	[  0]	TSETS	  9	14	212	; slot14.color = slot9
		1211	[  0]	TSETB	 14	13	3	; slot13[3] = slot14
		1212	[  0]	TDUP 	 14		145	; slot14 = copy table#k145
		1213	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1214	[  0]	KSTR 	 17		146	; slot17 = "absorb_drag_middle"
		1215	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1216	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1217	[  0]	TSETB	 14	13	4	; slot13[4] = slot14
		1218	[  0]	TDUP 	 14		144	; slot14 = copy table#k144
		1219	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1220	[  0]	KSTR 	 17		158	; slot17 = "absorb_word"
		1221	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1222	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1223	[  0]	TSETS	 10	14	212	; slot14.color = slot10
		1224	[  0]	TSETB	 14	13	5	; slot13[5] = slot14
		1225	[  0]	TDUP 	 14		142	; slot14 = copy table#k142
		1226	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1227	[  0]	KSTR 	 17		143	; slot17 = "try_suffix"
		1228	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1229	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1230	[  0]	TSETB	 14	13	6	; slot13[6] = slot14
		1231	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1232	[  0]	MOV  	 11		12	; slot11 = slot12
		1233	[  0]	JMP  	 12		552	; 	goto 1786
		1234	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1235	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1236	[  0]	GGET 	 13		267	; slot13 = _env["STEP_IMPRINT_INSPECT"]
		1237	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_IMPRINT_INSPECT
		1238	[  0]	JMP  	 12		60	; 	goto 1299
		1239	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1240	[  0]	TNEW 	 13		5	; slot13 = new table( array: 5, dict: 1)
		1241	[  0]	TDUP 	 14		141	; slot14 = copy table#k141
		1242	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1243	[  0]	KSTR 	 17		214	; slot17 = "unit_archer"
		1244	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1245	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1246	[  0]	TSETS	  9	14	212	; slot14.color = slot9
		1247	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		1248	[  0]	TDUP 	 14		139	; slot14 = copy table#k139
		1249	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1250	[  0]	KSTR 	 17		140	; slot17 = "subject_particle_space"
		1251	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1252	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1253	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		1254	[  0]	TDUP 	 14		138	; slot14 = copy table#k138
		1255	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1256	[  0]	KSTR 	 17		158	; slot17 = "absorb_word"
		1257	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1258	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1259	[  0]	TSETS	 10	14	212	; slot14.color = slot10
		1260	[  0]	TSETB	 14	13	3	; slot13[3] = slot14
		1261	[  0]	TDUP 	 14		136	; slot14 = copy table#k136
		1262	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1263	[  0]	KSTR 	 17		137	; slot17 = "imprint_inspect_1_suffix"
		1264	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1265	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1266	[  0]	TSETB	 14	13	4	; slot13[4] = slot14
		1267	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1268	[  0]	TNEW 	 13		6	; slot13 = new table( array: 6, dict: 1)
		1269	[  0]	TDUP 	 14		135	; slot14 = copy table#k135
		1270	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1271	[  0]	KSTR 	 17		197	; slot17 = "mouse_prefix"
		1272	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1273	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1274	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		1275	[  0]	TDUP 	 14		134	; slot14 = copy table#k134
		1276	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		1277	[  0]	TDUP 	 14		132	; slot14 = copy table#k132
		1278	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1279	[  0]	KSTR 	 17		133	; slot17 = "with_particle"
		1280	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1281	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1282	[  0]	TSETB	 14	13	3	; slot13[3] = slot14
		1283	[  0]	TDUP 	 14		131	; slot14 = copy table#k131
		1284	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1285	[  0]	KSTR 	 17		214	; slot17 = "unit_archer"
		1286	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1287	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1288	[  0]	TSETS	  9	14	212	; slot14.color = slot9
		1289	[  0]	TSETB	 14	13	4	; slot13[4] = slot14
		1290	[  0]	TDUP 	 14		129	; slot14 = copy table#k129
		1291	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1292	[  0]	KSTR 	 17		130	; slot17 = "imprint_inspect_2_suffix"
		1293	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1294	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1295	[  0]	TSETB	 14	13	5	; slot13[5] = slot14
		1296	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		1297	[  0]	MOV  	 11		12	; slot11 = slot12
		1298	[  0]	JMP  	 12		487	; 	goto 1786
		1299	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1300	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1301	[  0]	GGET 	 13		266	; slot13 = _env["STEP_FINAL_READY"]
		1302	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_FINAL_READY
		1303	[  0]	JMP  	 12		7	; 	goto 1311
		1304	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1305	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1306	[  0]	KSTR 	 15		128	; slot15 = "final_ready"
		1307	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1308	[  0]	TSETM	 13		2	; for i = 0, MULTRES, 1 do slot12[2 + i] = slot(13 + i)
		1309	[  0]	MOV  	 11		12	; slot11 = slot12
		1310	[  0]	JMP  	 12		475	; 	goto 1786
		1311	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1312	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1313	[  0]	GGET 	 13		259	; slot13 = _env["STEP_CORE_COUNTER"]
		1314	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_CORE_COUNTER
		1315	[  0]	JMP  	 12		11	; 	goto 1327
		1316	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1317	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1318	[  0]	KSTR 	 15		127	; slot15 = "core_counter_1"
		1319	[  0]	CALL 	 13	2	2	; slot13 = uv20"unknown"(slot14)
		1320	[  0]	TSETB	 13	12	1	; slot12[1] = uv20"unknown"
		1321	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1322	[  0]	KSTR 	 15		126	; slot15 = "core_counter_2"
		1323	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1324	[  0]	TSETM	 13		3	; for i = 0, MULTRES, 1 do slot12[3 + i] = slot(13 + i)
		1325	[  0]	MOV  	 11		12	; slot11 = slot12
		1326	[  0]	JMP  	 12		459	; 	goto 1786
		1327	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1328	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1329	[  0]	GGET 	 13		125	; slot13 = _env["STEP_CORE_SPIN"]
		1330	[  0]	ISEQV	 12		13	; if uv3"unknown".step == STEP_CORE_SPIN
		1331	[  0]	JMP  	 12		5	; 	goto 1337
		1332	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1333	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1334	[  0]	GGET 	 13		124	; slot13 = _env["STEP_CORE_SPINNING"]
		1335	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_CORE_SPINNING
		1336	[  0]	JMP  	 12		7	; 	goto 1344
		1337	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1338	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1339	[  0]	KSTR 	 15		123	; slot15 = "core_spin"
		1340	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1341	[  0]	TSETM	 13		2	; for i = 0, MULTRES, 1 do slot12[2 + i] = slot(13 + i)
		1342	[  0]	MOV  	 11		12	; slot11 = slot12
		1343	[  0]	JMP  	 12		442	; 	goto 1786
		1344	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1345	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1346	[  0]	GGET 	 13		257	; slot13 = _env["STEP_CORE_SELECT"]
		1347	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_CORE_SELECT
		1348	[  0]	JMP  	 12		11	; 	goto 1360
		1349	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1350	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1351	[  0]	KSTR 	 15		122	; slot15 = "core_select_1"
		1352	[  0]	CALL 	 13	2	2	; slot13 = uv20"unknown"(slot14)
		1353	[  0]	TSETB	 13	12	1	; slot12[1] = uv20"unknown"
		1354	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1355	[  0]	KSTR 	 15		121	; slot15 = "core_select_2"
		1356	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1357	[  0]	TSETM	 13		3	; for i = 0, MULTRES, 1 do slot12[3 + i] = slot(13 + i)
		1358	[  0]	MOV  	 11		12	; slot11 = slot12
		1359	[  0]	JMP  	 12		426	; 	goto 1786
		1360	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1361	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1362	[  0]	GGET 	 13		120	; slot13 = _env["STEP_POST_CORE_SLOT"]
		1363	[  0]	ISEQV	 12		13	; if uv3"unknown".step == STEP_POST_CORE_SLOT
		1364	[  0]	JMP  	 12		5	; 	goto 1370
		1365	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1366	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1367	[  0]	GGET 	 13		119	; slot13 = _env["STEP_POST_CORE_SPINNING"]
		1368	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_POST_CORE_SPINNING
		1369	[  0]	JMP  	 12		7	; 	goto 1377
		1370	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1371	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1372	[  0]	KSTR 	 15		118	; slot15 = "post_core_spin"
		1373	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1374	[  0]	TSETM	 13		2	; for i = 0, MULTRES, 1 do slot12[2 + i] = slot(13 + i)
		1375	[  0]	MOV  	 11		12	; slot11 = slot12
		1376	[  0]	JMP  	 12		409	; 	goto 1786
		1377	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1378	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1379	[  0]	GGET 	 13		282	; slot13 = _env["STEP_POST_CORE_ARCHER_WIN"]
		1380	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_POST_CORE_ARCHER_WIN
		1381	[  0]	JMP  	 12		18	; 	goto 1400
		1382	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1383	[  0]	TNEW 	 13		3	; slot13 = new table( array: 3, dict: 1)
		1384	[  0]	TDUP 	 14		117	; slot14 = copy table#k117
		1385	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1386	[  0]	KSTR 	 17		214	; slot17 = "unit_archer"
		1387	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1388	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1389	[  0]	TSETS	  9	14	212	; slot14.color = slot9
		1390	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		1391	[  0]	TDUP 	 14		116	; slot14 = copy table#k116
		1392	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1393	[  0]	KSTR 	 17		211	; slot17 = "archer_summoned_suffix"
		1394	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1395	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1396	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		1397	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1398	[  0]	MOV  	 11		12	; slot11 = slot12
		1399	[  0]	JMP  	 12		386	; 	goto 1786
		1400	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1401	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1402	[  0]	GGET 	 13		115	; slot13 = _env["STEP_POST_CORE_SECOND_SPIN"]
		1403	[  0]	ISEQV	 12		13	; if uv3"unknown".step == STEP_POST_CORE_SECOND_SPIN
		1404	[  0]	JMP  	 12		5	; 	goto 1410
		1405	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1406	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1407	[  0]	GGET 	 13		114	; slot13 = _env["STEP_POST_CORE_SECOND_SPINNING"]
		1408	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_POST_CORE_SECOND_SPINNING
		1409	[  0]	JMP  	 12		7	; 	goto 1417
		1410	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1411	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1412	[  0]	KSTR 	 15		113	; slot15 = "one_more_spin"
		1413	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1414	[  0]	TSETM	 13		2	; for i = 0, MULTRES, 1 do slot12[2 + i] = slot(13 + i)
		1415	[  0]	MOV  	 11		12	; slot11 = slot12
		1416	[  0]	JMP  	 12		369	; 	goto 1786
		1417	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1418	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1419	[  0]	GGET 	 13		112	; slot13 = _env["STEP_SLOT_BROKEN"]
		1420	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_SLOT_BROKEN
		1421	[  0]	JMP  	 12		7	; 	goto 1429
		1422	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1423	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1424	[  0]	KSTR 	 15		111	; slot15 = "slot_broken"
		1425	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1426	[  0]	TSETM	 13		2	; for i = 0, MULTRES, 1 do slot12[2 + i] = slot(13 + i)
		1427	[  0]	MOV  	 11		12	; slot11 = slot12
		1428	[  0]	JMP  	 12		357	; 	goto 1786
		1429	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1430	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1431	[  0]	GGET 	 13		253	; slot13 = _env["STEP_MAX_UNIT_NOTICE"]
		1432	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_MAX_UNIT_NOTICE
		1433	[  0]	JMP  	 12		7	; 	goto 1441
		1434	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1435	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1436	[  0]	KSTR 	 15		110	; slot15 = "max_unit_notice"
		1437	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1438	[  0]	TSETM	 13		2	; for i = 0, MULTRES, 1 do slot12[2 + i] = slot(13 + i)
		1439	[  0]	MOV  	 11		12	; slot11 = slot12
		1440	[  0]	JMP  	 12		345	; 	goto 1786
		1441	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1442	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1443	[  0]	GGET 	 13		261	; slot13 = _env["STEP_FREE_ABSORB_BUTTON"]
		1444	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_FREE_ABSORB_BUTTON
		1445	[  0]	JMP  	 12		18	; 	goto 1464
		1446	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1447	[  0]	TNEW 	 13		3	; slot13 = new table( array: 3, dict: 1)
		1448	[  0]	TDUP 	 14		109	; slot14 = copy table#k109
		1449	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1450	[  0]	KSTR 	 17		158	; slot17 = "absorb_word"
		1451	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1452	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1453	[  0]	TSETS	 10	14	212	; slot14.color = slot10
		1454	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		1455	[  0]	TDUP 	 14		107	; slot14 = copy table#k107
		1456	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1457	[  0]	KSTR 	 17		108	; slot17 = "free_absorb_button_suffix"
		1458	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1459	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1460	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		1461	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1462	[  0]	MOV  	 11		12	; slot11 = slot12
		1463	[  0]	JMP  	 12		322	; 	goto 1786
		1464	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1465	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1466	[  0]	GGET 	 13		268	; slot13 = _env["STEP_FREE_ABSORB"]
		1467	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_FREE_ABSORB
		1468	[  0]	JMP  	 12		37	; 	goto 1506
		1469	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1470	[  0]	TNEW 	 13		6	; slot13 = new table( array: 6, dict: 1)
		1471	[  0]	TDUP 	 14		105	; slot14 = copy table#k105
		1472	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1473	[  0]	KSTR 	 17		106	; slot17 = "freely_prefix"
		1474	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1475	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1476	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		1477	[  0]	TDUP 	 14		104	; slot14 = copy table#k104
		1478	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1479	[  0]	KSTR 	 17		158	; slot17 = "absorb_word"
		1480	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1481	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1482	[  0]	TSETS	 10	14	212	; slot14.color = slot10
		1483	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		1484	[  0]	TDUP 	 14		102	; slot14 = copy table#k102
		1485	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1486	[  0]	KSTR 	 17		103	; slot17 = "through_particle"
		1487	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1488	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1489	[  0]	TSETB	 14	13	3	; slot13[3] = slot14
		1490	[  0]	TDUP 	 14		101	; slot14 = copy table#k101
		1491	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1492	[  0]	KSTR 	 17		214	; slot17 = "unit_archer"
		1493	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1494	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1495	[  0]	TSETS	  9	14	212	; slot14.color = slot9
		1496	[  0]	TSETB	 14	13	4	; slot13[4] = slot14
		1497	[  0]	TDUP 	 14		99	; slot14 = copy table#k99
		1498	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1499	[  0]	KSTR 	 17		100	; slot17 = "free_absorb_suffix"
		1500	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1501	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1502	[  0]	TSETB	 14	13	5	; slot13[5] = slot14
		1503	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1504	[  0]	MOV  	 11		12	; slot11 = slot12
		1505	[  0]	JMP  	 12		280	; 	goto 1786
		1506	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1507	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1508	[  0]	GGET 	 13		256	; slot13 = _env["STEP_CLASS_PROMOTION"]
		1509	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_CLASS_PROMOTION
		1510	[  0]	JMP  	 12		28	; 	goto 1539
		1511	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1512	[  0]	TNEW 	 13		4	; slot13 = new table( array: 4, dict: 1)
		1513	[  0]	TDUP 	 14		97	; slot14 = copy table#k97
		1514	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1515	[  0]	KSTR 	 17		98	; slot17 = "class_promotion_prefix"
		1516	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1517	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1518	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		1519	[  0]	TDUP 	 14		96	; slot14 = copy table#k96
		1520	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1521	[  0]	KSTR 	 17		214	; slot17 = "unit_archer"
		1522	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1523	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1524	[  0]	TSETS	  9	14	212	; slot14.color = slot9
		1525	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		1526	[  0]	TDUP 	 14		94	; slot14 = copy table#k94
		1527	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1528	[  0]	KSTR 	 17		95	; slot17 = "class_promotion_middle"
		1529	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1530	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1531	[  0]	TSETB	 14	13	3	; slot13[3] = slot14
		1532	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1533	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1534	[  0]	KSTR 	 15		93	; slot15 = "class_promotion_2"
		1535	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1536	[  0]	TSETM	 13		3	; for i = 0, MULTRES, 1 do slot12[3 + i] = slot(13 + i)
		1537	[  0]	MOV  	 11		12	; slot11 = slot12
		1538	[  0]	JMP  	 12		247	; 	goto 1786
		1539	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1540	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1541	[  0]	GGET 	 13		255	; slot13 = _env["STEP_CLASS_SKILL_HOVER"]
		1542	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_CLASS_SKILL_HOVER
		1543	[  0]	JMP  	 12		11	; 	goto 1555
		1544	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1545	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1546	[  0]	KSTR 	 15		92	; slot15 = "class_skill_1"
		1547	[  0]	CALL 	 13	2	2	; slot13 = uv20"unknown"(slot14)
		1548	[  0]	TSETB	 13	12	1	; slot12[1] = uv20"unknown"
		1549	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1550	[  0]	KSTR 	 15		91	; slot15 = "class_skill_2"
		1551	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1552	[  0]	TSETM	 13		3	; for i = 0, MULTRES, 1 do slot12[3 + i] = slot(13 + i)
		1553	[  0]	MOV  	 11		12	; slot11 = slot12
		1554	[  0]	JMP  	 12		231	; 	goto 1786
		1555	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1556	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1557	[  0]	GGET 	 13		254	; slot13 = _env["STEP_CLASS_CHOOSE"]
		1558	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_CLASS_CHOOSE
		1559	[  0]	JMP  	 12		7	; 	goto 1567
		1560	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1561	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1562	[  0]	KSTR 	 15		90	; slot15 = "class_choose"
		1563	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1564	[  0]	TSETM	 13		2	; for i = 0, MULTRES, 1 do slot12[2 + i] = slot(13 + i)
		1565	[  0]	MOV  	 11		12	; slot11 = slot12
		1566	[  0]	JMP  	 12		219	; 	goto 1786
		1567	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1568	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1569	[  0]	GGET 	 13		281	; slot13 = _env["STEP_PROMOTED_ARCHER"]
		1570	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_PROMOTED_ARCHER
		1571	[  0]	JMP  	 12		45	; 	goto 1617
		1572	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1573	[  0]	TNEW 	 13		3	; slot13 = new table( array: 3, dict: 1)
		1574	[  0]	TDUP 	 14		89	; slot14 = copy table#k89
		1575	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1576	[  0]	KSTR 	 17		214	; slot17 = "unit_archer"
		1577	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1578	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1579	[  0]	TSETS	  9	14	212	; slot14.color = slot9
		1580	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		1581	[  0]	TDUP 	 14		87	; slot14 = copy table#k87
		1582	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1583	[  0]	KSTR 	 17		88	; slot17 = "promoted_archer_suffix"
		1584	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1585	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1586	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		1587	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1588	[  0]	TNEW 	 13		4	; slot13 = new table( array: 4, dict: 1)
		1589	[  0]	TDUP 	 14		85	; slot14 = copy table#k85
		1590	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1591	[  0]	KSTR 	 17		86	; slot17 = "new_class_prefix"
		1592	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1593	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1594	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		1595	[  0]	TDUP 	 14		81	; slot14 = copy table#k81
		1596	[  0]	GGET 	 15		84	; slot15 = _env["tostring"]
		1597	[  0]	UGET 	 17		3	; slot17 = uv3"unknwon"
		1598	[  0]	TGETS	 17	17	83	; slot17 = uv3"unknown".promotedName
		1599	[  0]	IST  	   		17	; if uv3"unknown".promotedName
		1600	[  0]	JMP  	 18		3	; 	goto 1604
		1601	[  0]	UGET 	 17		20	; slot17 = uv20"unknwon"
		1602	[  0]	KSTR 	 19		82	; slot19 = "new_unit_fallback"
		1603	[  0]	CALL 	 17	2	2	; slot17 = uv20"unknown"(slot18)
		1604	[  0]	CALL 	 15	2	2	; slot15 = tostring(slot16)
		1605	[  0]	TSETS	 15	14	220	; slot14.text = tostring
		1606	[  0]	TSETS	  9	14	212	; slot14.color = slot9
		1607	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		1608	[  0]	TDUP 	 14		79	; slot14 = copy table#k79
		1609	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1610	[  0]	KSTR 	 17		80	; slot17 = "new_class_suffix"
		1611	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1612	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1613	[  0]	TSETB	 14	13	3	; slot13[3] = slot14
		1614	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		1615	[  0]	MOV  	 11		12	; slot11 = slot12
		1616	[  0]	JMP  	 12		169	; 	goto 1786
		1617	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1618	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1619	[  0]	GGET 	 13		251	; slot13 = _env["STEP_SHOP_INTRO"]
		1620	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_SHOP_INTRO
		1621	[  0]	JMP  	 12		7	; 	goto 1629
		1622	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1623	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1624	[  0]	KSTR 	 15		78	; slot15 = "shop_intro"
		1625	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1626	[  0]	TSETM	 13		2	; for i = 0, MULTRES, 1 do slot12[2 + i] = slot(13 + i)
		1627	[  0]	MOV  	 11		12	; slot11 = slot12
		1628	[  0]	JMP  	 12		157	; 	goto 1786
		1629	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1630	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1631	[  0]	GGET 	 13		249	; slot13 = _env["STEP_SHOP_CURRENCY"]
		1632	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_SHOP_CURRENCY
		1633	[  0]	JMP  	 12		11	; 	goto 1645
		1634	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1635	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1636	[  0]	KSTR 	 15		77	; slot15 = "shop_currency_1"
		1637	[  0]	CALL 	 13	2	2	; slot13 = uv20"unknown"(slot14)
		1638	[  0]	TSETB	 13	12	1	; slot12[1] = uv20"unknown"
		1639	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1640	[  0]	KSTR 	 15		76	; slot15 = "shop_currency_2"
		1641	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1642	[  0]	TSETM	 13		3	; for i = 0, MULTRES, 1 do slot12[3 + i] = slot(13 + i)
		1643	[  0]	MOV  	 11		12	; slot11 = slot12
		1644	[  0]	JMP  	 12		141	; 	goto 1786
		1645	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1646	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1647	[  0]	GGET 	 13		247	; slot13 = _env["STEP_SHOP_BUY"]
		1648	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_SHOP_BUY
		1649	[  0]	JMP  	 12		24	; 	goto 1674
		1650	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1651	[  0]	TNEW 	 13		4	; slot13 = new table( array: 4, dict: 1)
		1652	[  0]	TDUP 	 14		74	; slot14 = copy table#k74
		1653	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1654	[  0]	KSTR 	 17		75	; slot17 = "shop_buy_prefix"
		1655	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1656	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1657	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		1658	[  0]	TDUP 	 14		72	; slot14 = copy table#k72
		1659	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1660	[  0]	KSTR 	 17		73	; slot17 = "item_sturdy_fist"
		1661	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1662	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1663	[  0]	TSETS	  9	14	212	; slot14.color = slot9
		1664	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		1665	[  0]	TDUP 	 14		70	; slot14 = copy table#k70
		1666	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1667	[  0]	KSTR 	 17		71	; slot17 = "shop_buy_suffix"
		1668	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1669	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1670	[  0]	TSETB	 14	13	3	; slot13[3] = slot14
		1671	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1672	[  0]	MOV  	 11		12	; slot11 = slot12
		1673	[  0]	JMP  	 12		112	; 	goto 1786
		1674	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1675	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1676	[  0]	GGET 	 13		245	; slot13 = _env["STEP_SHOP_ITEM_BOUGHT"]
		1677	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_SHOP_ITEM_BOUGHT
		1678	[  0]	JMP  	 12		7	; 	goto 1686
		1679	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1680	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1681	[  0]	KSTR 	 15		69	; slot15 = "shop_item_bought"
		1682	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1683	[  0]	TSETM	 13		2	; for i = 0, MULTRES, 1 do slot12[2 + i] = slot(13 + i)
		1684	[  0]	MOV  	 11		12	; slot11 = slot12
		1685	[  0]	JMP  	 12		100	; 	goto 1786
		1686	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1687	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1688	[  0]	GGET 	 13		243	; slot13 = _env["STEP_SHOP_RETURN"]
		1689	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_SHOP_RETURN
		1690	[  0]	JMP  	 12		7	; 	goto 1698
		1691	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1692	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1693	[  0]	KSTR 	 15		68	; slot15 = "shop_return"
		1694	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1695	[  0]	TSETM	 13		2	; for i = 0, MULTRES, 1 do slot12[2 + i] = slot(13 + i)
		1696	[  0]	MOV  	 11		12	; slot11 = slot12
		1697	[  0]	JMP  	 12		88	; 	goto 1786
		1698	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1699	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1700	[  0]	GGET 	 13		241	; slot13 = _env["STEP_WAVE_TYPES"]
		1701	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_WAVE_TYPES
		1702	[  0]	JMP  	 12		37	; 	goto 1740
		1703	[  0]	TNEW 	 12		5	; slot12 = new table( array: 5, dict: 1)
		1704	[  0]	TNEW 	 13		4	; slot13 = new table( array: 4, dict: 1)
		1705	[  0]	TDUP 	 14		66	; slot14 = copy table#k66
		1706	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1707	[  0]	KSTR 	 17		67	; slot17 = "wave_types_prefix"
		1708	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1709	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1710	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		1711	[  0]	TDUP 	 14		65	; slot14 = copy table#k65
		1712	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		1713	[  0]	TDUP 	 14		63	; slot14 = copy table#k63
		1714	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1715	[  0]	KSTR 	 17		64	; slot17 = "judgement_wave_suffix"
		1716	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1717	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1718	[  0]	TSETB	 14	13	3	; slot13[3] = slot14
		1719	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		1720	[  0]	TNEW 	 13		3	; slot13 = new table( array: 3, dict: 1)
		1721	[  0]	TDUP 	 14		62	; slot14 = copy table#k62
		1722	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		1723	[  0]	TDUP 	 14		60	; slot14 = copy table#k60
		1724	[  0]	UGET 	 15		20	; slot15 = uv20"unknwon"
		1725	[  0]	KSTR 	 17		61	; slot17 = "boss_wave_suffix"
		1726	[  0]	CALL 	 15	2	2	; slot15 = uv20"unknown"(slot16)
		1727	[  0]	TSETS	 15	14	220	; slot14.text = uv20"unknown"
		1728	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		1729	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		1730	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1731	[  0]	KSTR 	 15		59	; slot15 = "wave_types_3"
		1732	[  0]	CALL 	 13	2	2	; slot13 = uv20"unknown"(slot14)
		1733	[  0]	TSETB	 13	12	3	; slot12[3] = uv20"unknown"
		1734	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1735	[  0]	KSTR 	 15		58	; slot15 = "wave_types_4"
		1736	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1737	[  0]	TSETM	 13		4	; for i = 0, MULTRES, 1 do slot12[4 + i] = slot(13 + i)
		1738	[  0]	MOV  	 11		12	; slot11 = slot12
		1739	[  0]	JMP  	 12		46	; 	goto 1786
		1740	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1741	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1742	[  0]	GGET 	 13		240	; slot13 = _env["STEP_TUTORIAL_COMPLETE"]
		1743	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_TUTORIAL_COMPLETE
		1744	[  0]	JMP  	 12		11	; 	goto 1756
		1745	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1746	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1747	[  0]	KSTR 	 15		57	; slot15 = "complete_1"
		1748	[  0]	CALL 	 13	2	2	; slot13 = uv20"unknown"(slot14)
		1749	[  0]	TSETB	 13	12	1	; slot12[1] = uv20"unknown"
		1750	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1751	[  0]	KSTR 	 15		56	; slot15 = "complete_2"
		1752	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1753	[  0]	TSETM	 13		3	; for i = 0, MULTRES, 1 do slot12[3 + i] = slot(13 + i)
		1754	[  0]	MOV  	 11		12	; slot11 = slot12
		1755	[  0]	JMP  	 12		30	; 	goto 1786
		1756	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		1757	[  0]	TGETS	 12	12	286	; slot12 = uv3"unknown".step
		1758	[  0]	GGET 	 13		272	; slot13 = _env["STEP_BATTLE_READY"]
		1759	[  0]	ISNEV	 12		13	; if uv3"unknown".step ~= STEP_BATTLE_READY
		1760	[  0]	JMP  	 12		11	; 	goto 1772
		1761	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		1762	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1763	[  0]	KSTR 	 15		55	; slot15 = "battle_ready_1"
		1764	[  0]	CALL 	 13	2	2	; slot13 = uv20"unknown"(slot14)
		1765	[  0]	TSETB	 13	12	1	; slot12[1] = uv20"unknown"
		1766	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1767	[  0]	KSTR 	 15		54	; slot15 = "battle_ready_2"
		1768	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1769	[  0]	TSETM	 13		3	; for i = 0, MULTRES, 1 do slot12[3 + i] = slot(13 + i)
		1770	[  0]	MOV  	 11		12	; slot11 = slot12
		1771	[  0]	JMP  	 12		14	; 	goto 1786
		1772	[  0]	TNEW 	 12		4	; slot12 = new table( array: 4, dict: 1)
		1773	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1774	[  0]	KSTR 	 15		53	; slot15 = "slot_intro_1"
		1775	[  0]	CALL 	 13	2	2	; slot13 = uv20"unknown"(slot14)
		1776	[  0]	TSETB	 13	12	1	; slot12[1] = uv20"unknown"
		1777	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1778	[  0]	KSTR 	 15		52	; slot15 = "slot_intro_2"
		1779	[  0]	CALL 	 13	2	2	; slot13 = uv20"unknown"(slot14)
		1780	[  0]	TSETB	 13	12	2	; slot12[2] = uv20"unknown"
		1781	[  0]	UGET 	 13		20	; slot13 = uv20"unknwon"
		1782	[  0]	KSTR 	 15		51	; slot15 = "slot_intro_3"
		1783	[  0]	CALL 	 13	0	2	; MULTRES = uv20"unknown"(slot14)
		1784	[  0]	TSETM	 13		5	; for i = 0, MULTRES, 1 do slot12[5 + i] = slot(13 + i)
		1785	[  0]	MOV  	 11		12	; slot11 = slot12
		1786	[  0]	ISFC 	 12		1	; slot12 = slot1; if not slot1
		1787	[  0]	JMP  	 12		1	; 	goto 1789
		1788	[  0]	TGETS	 12	1	50	; slot12 = slot1.slotPanel
		1789	[  0]	ISF  	   		0	; if not slot0
		1790	[  0]	JMP  	 13		7	; 	goto 1798
		1791	[  0]	TGETS	 13	0	236	; slot13 = slot0.tutorial
		1792	[  0]	ISF  	   		13	; if not <unknown table>.tutorial
		1793	[  0]	JMP  	 14		4	; 	goto 1798
		1794	[  0]	TGETS	 13	0	236	; slot13 = slot0.tutorial
		1795	[  0]	TGETS	 13	13	49	; slot13 = <unknown table>.tutorial.slotFocus
		1796	[  0]	IST  	   		13	; if <unknown table>.tutorial.slotFocus
		1797	[  0]	JMP  	 14		1	; 	goto 1799
		1798	[  0]	TNEW 	 13		0	; slot13 = new table( array: 0, dict: 1)
		1799	[  0]	ISF  	   		12	; if not <unknown table>.slotPanel
		1800	[  0]	JMP  	 14		10	; 	goto 1811
		1801	[  0]	TGETS	 14	12	48	; slot14 = <unknown table>.slotPanel.x
		1802	[  0]	GGET 	 15		47	; slot15 = _env["tonumber"]
		1803	[  0]	TGETS	 17	13	46	; slot17 = slot13.offsetX
		1804	[  0]	CALL 	 15	2	2	; slot15 = tonumber(slot16)
		1805	[  0]	IST  	   		15	; if tonumber
		1806	[  0]	JMP  	 16		1	; 	goto 1808
		1807	[  0]	KSHORT	 15		65516	; slot15 = 65516
		1808	[  0]	ADDVV	 14	14	15	; slot14 = <unknown table>.slotPanel.x + slot15
		1809	[  0]	IST  	   		14	; if slot14
		1810	[  0]	JMP  	 15		1	; 	goto 1812
		1811	[  0]	TGETS	 14	7	48	; slot14 = uv4"unknown".x
		1812	[  0]	ISF  	   		12	; if not <unknown table>.slotPanel
		1813	[  0]	JMP  	 15		10	; 	goto 1824
		1814	[  0]	TGETS	 15	12	45	; slot15 = <unknown table>.slotPanel.y
		1815	[  0]	GGET 	 16		47	; slot16 = _env["tonumber"]
		1816	[  0]	TGETS	 18	13	44	; slot18 = slot13.offsetY
		1817	[  0]	CALL 	 16	2	2	; slot16 = tonumber(<unknown table>.offsetX)
		1818	[  0]	IST  	   		16	; if tonumber
		1819	[  0]	JMP  	 17		1	; 	goto 1821
		1820	[  0]	KSHORT	 16		65512	; slot16 = 65512
		1821	[  0]	ADDVV	 15	15	16	; slot15 = <unknown table>.slotPanel.y + slot16
		1822	[  0]	IST  	   		15	; if slot15
		1823	[  0]	JMP  	 16		1	; 	goto 1825
		1824	[  0]	TGETS	 15	7	45	; slot15 = uv4"unknown".y
		1825	[  0]	ISF  	   		12	; if not <unknown table>.slotPanel
		1826	[  0]	JMP  	 16		11	; 	goto 1838
		1827	[  0]	TGETS	 16	12	43	; slot16 = <unknown table>.slotPanel.w
		1828	[  0]	GGET 	 17		47	; slot17 = _env["tonumber"]
		1829	[  0]	KSTR 	 19		42	; slot19 = "extraW"
		1830	[  0]	TGETV	 19	13	19	; slot19 = slot13[slot19]
		1831	[  0]	CALL 	 17	2	2	; slot17 = tonumber(<unknown table>.offsetY)
		1832	[  0]	IST  	   		17	; if tonumber
		1833	[  0]	JMP  	 18		1	; 	goto 1835
		1834	[  0]	KSHORT	 17		64	; slot17 = 64
		1835	[  0]	ADDVV	 16	16	17	; slot16 = <unknown table>.slotPanel.w + slot17
		1836	[  0]	IST  	   		16	; if slot16
		1837	[  0]	JMP  	 17		1	; 	goto 1839
		1838	[  0]	TGETS	 16	7	43	; slot16 = uv4"unknown".w
		1839	[  0]	ADDVV	 17	14	16	; slot17 = uv4"unknown".x + uv4"unknown".w
		1840	[  0]	GGET 	 18		47	; slot18 = _env["tonumber"]
		1841	[  0]	KSTR 	 20		41	; slot20 = "gapX"
		1842	[  0]	TGETV	 20	8	20	; slot20 = slot8[slot20]
		1843	[  0]	CALL 	 18	2	2	; slot18 = tonumber(slot19)
		1844	[  0]	IST  	   		18	; if tonumber
		1845	[  0]	JMP  	 19		1	; 	goto 1847
		1846	[  0]	KSHORT	 18		14	; slot18 = 14
		1847	[  0]	ADDVV	 17	17	18	; slot17 = slot17 + slot18
		1848	[  0]	GGET 	 18		47	; slot18 = _env["tonumber"]
		1849	[  0]	TGETS	 20	8	44	; slot20 = slot8.offsetY
		1850	[  0]	CALL 	 18	2	2	; slot18 = tonumber(slot19)
		1851	[  0]	IST  	   		18	; if tonumber
		1852	[  0]	JMP  	 19		1	; 	goto 1854
		1853	[  0]	KSHORT	 18		24	; slot18 = 24
		1854	[  0]	ADDVV	 18	15	18	; slot18 = uv4"unknown".y + slot18
		1855	[  0]	UGET 	 19		3	; slot19 = uv3"unknwon"
		1856	[  0]	TGETS	 19	19	286	; slot19 = uv3"unknown".step
		1857	[  0]	GGET 	 20		285	; slot20 = _env["STEP_ARCHER_WIN"]
		1858	[  0]	ISEQV	 19		20	; if uv3"unknown".step == STEP_ARCHER_WIN
		1859	[  0]	JMP  	 19		20	; 	goto 1880
		1860	[  0]	UGET 	 19		3	; slot19 = uv3"unknwon"
		1861	[  0]	TGETS	 19	19	286	; slot19 = uv3"unknown".step
		1862	[  0]	GGET 	 20		284	; slot20 = _env["STEP_WARRIOR_WIN"]
		1863	[  0]	ISEQV	 19		20	; if uv3"unknown".step == STEP_WARRIOR_WIN
		1864	[  0]	JMP  	 19		15	; 	goto 1880
		1865	[  0]	UGET 	 19		3	; slot19 = uv3"unknwon"
		1866	[  0]	TGETS	 19	19	286	; slot19 = uv3"unknown".step
		1867	[  0]	GGET 	 20		283	; slot20 = _env["STEP_UNIT_HOVER"]
		1868	[  0]	ISEQV	 19		20	; if uv3"unknown".step == STEP_UNIT_HOVER
		1869	[  0]	JMP  	 19		10	; 	goto 1880
		1870	[  0]	UGET 	 19		3	; slot19 = uv3"unknwon"
		1871	[  0]	TGETS	 19	19	286	; slot19 = uv3"unknown".step
		1872	[  0]	GGET 	 20		282	; slot20 = _env["STEP_POST_CORE_ARCHER_WIN"]
		1873	[  0]	ISEQV	 19		20	; if uv3"unknown".step == STEP_POST_CORE_ARCHER_WIN
		1874	[  0]	JMP  	 19		5	; 	goto 1880
		1875	[  0]	UGET 	 19		3	; slot19 = uv3"unknwon"
		1876	[  0]	TGETS	 19	19	286	; slot19 = uv3"unknown".step
		1877	[  0]	GGET 	 20		281	; slot20 = _env["STEP_PROMOTED_ARCHER"]
		1878	[  0]	ISNEV	 19		20	; if uv3"unknown".step ~= STEP_PROMOTED_ARCHER
		1879	[  0]	JMP  	 19		44	; 	goto 1924
		1880	[  0]	ISF  	   		0	; if not slot0
		1881	[  0]	JMP  	 19		8	; 	goto 1890
		1882	[  0]	TGETS	 19	0	236	; slot19 = slot0.tutorial
		1883	[  0]	ISF  	   		19	; if not <unknown table>.tutorial
		1884	[  0]	JMP  	 20		5	; 	goto 1890
		1885	[  0]	TGETS	 19	0	236	; slot19 = slot0.tutorial
		1886	[  0]	KSTR 	 20		40	; slot20 = "winTip"
		1887	[  0]	TGETV	 19	19	20	; slot19 = <unknown table>.tutorial[slot20]
		1888	[  0]	IST  	   		19	; if slot19
		1889	[  0]	JMP  	 20		1	; 	goto 1891
		1890	[  0]	TNEW 	 19		0	; slot19 = new table( array: 0, dict: 1)
		1891	[  0]	ISF  	   		1	; if not slot1
		1892	[  0]	JMP  	 20		3	; 	goto 1896
		1893	[  0]	TGETS	 20	1	226	; slot20 = slot1.right
		1894	[  0]	IST  	   		20	; if <unknown table>.right
		1895	[  0]	JMP  	 21		9	; 	goto 1905
		1896	[  0]	UGET 	 20		3	; slot20 = uv3"unknwon"
		1897	[  0]	KSTR 	 21		39	; slot21 = "winLayout"
		1898	[  0]	TGETV	 20	20	21	; slot20 = uv3"unknown"[slot21]
		1899	[  0]	ISF  	   		20	; if not slot20
		1900	[  0]	JMP  	 21		4	; 	goto 1905
		1901	[  0]	UGET 	 20		3	; slot20 = uv3"unknwon"
		1902	[  0]	KSTR 	 21		39	; slot21 = "winLayout"
		1903	[  0]	TGETV	 20	20	21	; slot20 = uv3"unknown"[slot21]
		1904	[  0]	TGETS	 20	20	226	; slot20 = slot20.right
		1905	[  0]	ISF  	   		20	; if not <unknown table>.right
		1906	[  0]	JMP  	 21		131	; 	goto 2038
		1907	[  0]	TGETS	 21	20	48	; slot21 = <unknown table>.right.x
		1908	[  0]	GGET 	 22		47	; slot22 = _env["tonumber"]
		1909	[  0]	TGETS	 24	19	46	; slot24 = slot19.offsetX
		1910	[  0]	CALL 	 22	2	2	; slot22 = tonumber(slot23)
		1911	[  0]	IST  	   		22	; if tonumber
		1912	[  0]	JMP  	 23		1	; 	goto 1914
		1913	[  0]	KSHORT	 22		56	; slot22 = 56
		1914	[  0]	ADDVV	 17	21	22	; slot17 = <unknown table>.right.x + slot22
		1915	[  0]	TGETS	 21	20	45	; slot21 = <unknown table>.right.y
		1916	[  0]	GGET 	 22		47	; slot22 = _env["tonumber"]
		1917	[  0]	TGETS	 24	19	44	; slot24 = slot19.offsetY
		1918	[  0]	CALL 	 22	2	2	; slot22 = tonumber(slot23)
		1919	[  0]	IST  	   		22	; if tonumber
		1920	[  0]	JMP  	 23		1	; 	goto 1922
		1921	[  0]	KSHORT	 22		58	; slot22 = 58
		1922	[  0]	ADDVV	 18	21	22	; slot18 = <unknown table>.right.y + slot22
		1923	[  0]	JMP  	 19		114	; 	goto 2038
		1924	[  0]	UGET 	 19		3	; slot19 = uv3"unknwon"
		1925	[  0]	TGETS	 19	19	286	; slot19 = uv3"unknown".step
		1926	[  0]	GGET 	 20		270	; slot20 = _env["STEP_POSITION"]
		1927	[  0]	ISNEV	 19		20	; if uv3"unknown".step ~= STEP_POSITION
		1928	[  0]	JMP  	 19		30	; 	goto 1959
		1929	[  0]	ISF  	   		0	; if not slot0
		1930	[  0]	JMP  	 19		8	; 	goto 1939
		1931	[  0]	TGETS	 19	0	236	; slot19 = slot0.tutorial
		1932	[  0]	ISF  	   		19	; if not <unknown table>.tutorial
		1933	[  0]	JMP  	 20		5	; 	goto 1939
		1934	[  0]	TGETS	 19	0	236	; slot19 = slot0.tutorial
		1935	[  0]	KSTR 	 20		38	; slot20 = "positionTip"
		1936	[  0]	TGETV	 19	19	20	; slot19 = <unknown table>.tutorial[slot20]
		1937	[  0]	IST  	   		19	; if slot19
		1938	[  0]	JMP  	 20		1	; 	goto 1940
		1939	[  0]	TNEW 	 19		0	; slot19 = new table( array: 0, dict: 1)
		1940	[  0]	ISFC 	 20		1	; slot20 = slot1; if not slot1
		1941	[  0]	JMP  	 20		1	; 	goto 1943
		1942	[  0]	TGETS	 20	1	226	; slot20 = slot1.right
		1943	[  0]	ISF  	   		20	; if not <unknown table>.right
		1944	[  0]	JMP  	 21		93	; 	goto 2038
		1945	[  0]	TGETS	 21	20	48	; slot21 = <unknown table>.right.x
		1946	[  0]	TGETS	 22	20	43	; slot22 = <unknown table>.right.w
		1947	[  0]	MULVN	 22	22	6	; slot22 = <unknown table>.right.w * 0.5
		1948	[  0]	ADDVV	 17	21	22	; slot17 = <unknown table>.right.x + slot22
		1949	[  0]	TGETS	 21	20	45	; slot21 = <unknown table>.right.y
		1950	[  0]	GGET 	 22		47	; slot22 = _env["tonumber"]
		1951	[  0]	KSTR 	 24		37	; slot24 = "topY"
		1952	[  0]	TGETV	 24	19	24	; slot24 = slot19[slot24]
		1953	[  0]	CALL 	 22	2	2	; slot22 = tonumber(slot23)
		1954	[  0]	IST  	   		22	; if tonumber
		1955	[  0]	JMP  	 23		1	; 	goto 1957
		1956	[  0]	KSHORT	 22		12	; slot22 = 12
		1957	[  0]	ADDVV	 18	21	22	; slot18 = <unknown table>.right.y + slot22
		1958	[  0]	JMP  	 19		79	; 	goto 2038
		1959	[  0]	UGET 	 19		3	; slot19 = uv3"unknwon"
		1960	[  0]	TGETS	 19	19	286	; slot19 = uv3"unknown".step
		1961	[  0]	GGET 	 20		264	; slot20 = _env["STEP_NUDGE_ACTION"]
		1962	[  0]	ISNEV	 19		20	; if uv3"unknown".step ~= STEP_NUDGE_ACTION
		1963	[  0]	JMP  	 19		17	; 	goto 1981
		1964	[  0]	ISFC 	 19		1	; slot19 = slot1; if not slot1
		1965	[  0]	JMP  	 19		7	; 	goto 1973
		1966	[  0]	KSTR 	 19		36	; slot19 = "nudgeBtns"
		1967	[  0]	TGETV	 19	1	19	; slot19 = slot1[slot19]
		1968	[  0]	ISF  	   		19	; if not slot19
		1969	[  0]	JMP  	 20		3	; 	goto 1973
		1970	[  0]	KSTR 	 19		36	; slot19 = "nudgeBtns"
		1971	[  0]	TGETV	 19	1	19	; slot19 = slot1[slot19]
		1972	[  0]	TGETB	 19	19	2	; slot19 = slot19[2]
		1973	[  0]	ISF  	   		19	; if not slot19
		1974	[  0]	JMP  	 20		63	; 	goto 2038
		1975	[  0]	TGETS	 20	19	48	; slot20 = slot19.x
		1976	[  0]	TGETS	 21	19	43	; slot21 = slot19.w
		1977	[  0]	ADDVV	 20	20	21	; slot20 = <unknown table>.x + <unknown table>.w
		1978	[  0]	ADDVN	 17	20	7	; slot17 = slot20 + 8
		1979	[  0]	TGETS	 18	19	45	; slot18 = slot19.y
		1980	[  0]	JMP  	 19		57	; 	goto 2038
		1981	[  0]	UGET 	 19		3	; slot19 = uv3"unknwon"
		1982	[  0]	TGETS	 19	19	286	; slot19 = uv3"unknown".step
		1983	[  0]	GGET 	 20		262	; slot20 = _env["STEP_ABSORB_BUTTON"]
		1984	[  0]	ISEQV	 19		20	; if uv3"unknown".step == STEP_ABSORB_BUTTON
		1985	[  0]	JMP  	 19		5	; 	goto 1991
		1986	[  0]	UGET 	 19		3	; slot19 = uv3"unknwon"
		1987	[  0]	TGETS	 19	19	286	; slot19 = uv3"unknown".step
		1988	[  0]	GGET 	 20		261	; slot20 = _env["STEP_FREE_ABSORB_BUTTON"]
		1989	[  0]	ISNEV	 19		20	; if uv3"unknown".step ~= STEP_FREE_ABSORB_BUTTON
		1990	[  0]	JMP  	 19		12	; 	goto 2003
		1991	[  0]	ISFC 	 19		0	; slot19 = slot0; if not slot0
		1992	[  0]	JMP  	 19		2	; 	goto 1995
		1993	[  0]	KSTR 	 19		35	; slot19 = "_tutorialFiremanRect"
		1994	[  0]	TGETV	 19	0	19	; slot19 = slot0[slot19]
		1995	[  0]	ISF  	   		19	; if not slot19
		1996	[  0]	JMP  	 20		41	; 	goto 2038
		1997	[  0]	TGETS	 20	19	48	; slot20 = slot19.x
		1998	[  0]	TGETS	 21	19	43	; slot21 = slot19.w
		1999	[  0]	ADDVV	 20	20	21	; slot20 = <unknown table>.x + <unknown table>.w
		2000	[  0]	ADDVN	 17	20	7	; slot17 = slot20 + 8
		2001	[  0]	TGETS	 18	19	45	; slot18 = slot19.y
		2002	[  0]	JMP  	 19		35	; 	goto 2038
		2003	[  0]	UGET 	 19		3	; slot19 = uv3"unknwon"
		2004	[  0]	TGETS	 19	19	286	; slot19 = uv3"unknown".step
		2005	[  0]	GGET 	 20		272	; slot20 = _env["STEP_BATTLE_READY"]
		2006	[  0]	ISNEV	 19		20	; if uv3"unknown".step ~= STEP_BATTLE_READY
		2007	[  0]	JMP  	 19		30	; 	goto 2038
		2008	[  0]	ISF  	   		0	; if not slot0
		2009	[  0]	JMP  	 19		8	; 	goto 2018
		2010	[  0]	TGETS	 19	0	236	; slot19 = slot0.tutorial
		2011	[  0]	ISF  	   		19	; if not <unknown table>.tutorial
		2012	[  0]	JMP  	 20		5	; 	goto 2018
		2013	[  0]	TGETS	 19	0	236	; slot19 = slot0.tutorial
		2014	[  0]	KSTR 	 20		34	; slot20 = "readyTip"
		2015	[  0]	TGETV	 19	19	20	; slot19 = <unknown table>.tutorial[slot20]
		2016	[  0]	IST  	   		19	; if slot19
		2017	[  0]	JMP  	 20		1	; 	goto 2019
		2018	[  0]	TNEW 	 19		0	; slot19 = new table( array: 0, dict: 1)
		2019	[  0]	UGET 	 20		21	; slot20 = uv21"unknwon"
		2020	[  0]	MOV  	 22		0	; slot22 = slot0
		2021	[  0]	MOV  	 23		1	; slot23 = slot1
		2022	[  0]	CALL 	 20	2	3	; slot20 = uv21"unknown"(<unknown table>.w, slot22)
		2023	[  0]	ISF  	   		20	; if not uv21"unknown"
		2024	[  0]	JMP  	 21		13	; 	goto 2038
		2025	[  0]	TGETS	 21	20	48	; slot21 = uv21"unknown".x
		2026	[  0]	TGETS	 22	20	43	; slot22 = uv21"unknown".w
		2027	[  0]	MULVN	 22	22	6	; slot22 = uv21"unknown".w * 0.5
		2028	[  0]	ADDVV	 17	21	22	; slot17 = uv21"unknown".x + slot22
		2029	[  0]	TGETS	 21	20	45	; slot21 = uv21"unknown".y
		2030	[  0]	GGET 	 22		47	; slot22 = _env["tonumber"]
		2031	[  0]	KSTR 	 24		33	; slot24 = "gapY"
		2032	[  0]	TGETV	 24	19	24	; slot24 = slot19[slot24]
		2033	[  0]	CALL 	 22	2	2	; slot22 = tonumber(slot23)
		2034	[  0]	IST  	   		22	; if tonumber
		2035	[  0]	JMP  	 23		1	; 	goto 2037
		2036	[  0]	KSHORT	 22		8	; slot22 = 8
		2037	[  0]	SUBVV	 18	21	22	; slot18 = uv21"unknown".y - slot22
		2038	[  0]	GGET 	 19		32	; slot19 = _env["math"]
		2039	[  0]	KSTR 	 20		31	; slot20 = "floor"
		2040	[  0]	TGETV	 19	19	20	; slot19 = math[slot20]
		2041	[  0]	SUBNV	 21	5	1	; slot21 = 1 - uv2"unknown"
		2042	[  0]	MULVN	 21	21	7	; slot21 = slot21 * 8
		2043	[  0]	ADDVN	 21	21	6	; slot21 = slot21 + 0.5
		2044	[  0]	CALL 	 19	2	2	; slot19 = slot19(slot20)
		2045	[  0]	ADDVV	 18	18	19	; slot18 = slot18 + slot19
		2046	[  0]	TNEW 	 20		0	; slot20 = new table( array: 0, dict: 1)
		2047	[  0]	GGET 	 21		30	; slot21 = _env["pairs"]
		2048	[  0]	MOV  	 23		8	; slot23 = slot8
		2049	[  0]	CALL 	 21	4	2	; slot21, slot22, slot23 = pairs(slot22)
		2050	[  0]	ISNEXT	 24		1	; Verify ITERN at 2052; goto 2052
		2051	[  0]	TSETV	 25	20	24	; slot20[slot24] = slot25
		2052	[  0]	ITERN	 24	3	3	; slot24, slot25, slot26 = pairs, slot22, slot23; slot24, slot25 = pairs(slot22, slot23)
		2053	[  0]	ITERL	 24		-3	; slot23 = slot24; if slot24 != nil goto 2051
		2054	[  0]	UGET 	 21		3	; slot21 = uv3"unknwon"
		2055	[  0]	TGETS	 21	21	286	; slot21 = uv3"unknown".step
		2056	[  0]	GGET 	 22		285	; slot22 = _env["STEP_ARCHER_WIN"]
		2057	[  0]	ISEQV	 21		22	; if uv3"unknown".step == STEP_ARCHER_WIN
		2058	[  0]	JMP  	 21		20	; 	goto 2079
		2059	[  0]	UGET 	 21		3	; slot21 = uv3"unknwon"
		2060	[  0]	TGETS	 21	21	286	; slot21 = uv3"unknown".step
		2061	[  0]	GGET 	 22		284	; slot22 = _env["STEP_WARRIOR_WIN"]
		2062	[  0]	ISEQV	 21		22	; if uv3"unknown".step == STEP_WARRIOR_WIN
		2063	[  0]	JMP  	 21		15	; 	goto 2079
		2064	[  0]	UGET 	 21		3	; slot21 = uv3"unknwon"
		2065	[  0]	TGETS	 21	21	286	; slot21 = uv3"unknown".step
		2066	[  0]	GGET 	 22		283	; slot22 = _env["STEP_UNIT_HOVER"]
		2067	[  0]	ISEQV	 21		22	; if uv3"unknown".step == STEP_UNIT_HOVER
		2068	[  0]	JMP  	 21		10	; 	goto 2079
		2069	[  0]	UGET 	 21		3	; slot21 = uv3"unknwon"
		2070	[  0]	TGETS	 21	21	286	; slot21 = uv3"unknown".step
		2071	[  0]	GGET 	 22		282	; slot22 = _env["STEP_POST_CORE_ARCHER_WIN"]
		2072	[  0]	ISEQV	 21		22	; if uv3"unknown".step == STEP_POST_CORE_ARCHER_WIN
		2073	[  0]	JMP  	 21		5	; 	goto 2079
		2074	[  0]	UGET 	 21		3	; slot21 = uv3"unknwon"
		2075	[  0]	TGETS	 21	21	286	; slot21 = uv3"unknown".step
		2076	[  0]	GGET 	 22		281	; slot22 = _env["STEP_PROMOTED_ARCHER"]
		2077	[  0]	ISNEV	 21		22	; if uv3"unknown".step ~= STEP_PROMOTED_ARCHER
		2078	[  0]	JMP  	 21		19	; 	goto 2098
		2079	[  0]	ISF  	   		0	; if not slot0
		2080	[  0]	JMP  	 21		8	; 	goto 2089
		2081	[  0]	TGETS	 21	0	236	; slot21 = slot0.tutorial
		2082	[  0]	ISF  	   		21	; if not <unknown table>.tutorial
		2083	[  0]	JMP  	 22		5	; 	goto 2089
		2084	[  0]	TGETS	 21	0	236	; slot21 = slot0.tutorial
		2085	[  0]	KSTR 	 22		40	; slot22 = "winTip"
		2086	[  0]	TGETV	 21	21	22	; slot21 = <unknown table>.tutorial[slot22]
		2087	[  0]	IST  	   		21	; if slot21
		2088	[  0]	JMP  	 22		1	; 	goto 2090
		2089	[  0]	TNEW 	 21		0	; slot21 = new table( array: 0, dict: 1)
		2090	[  0]	GGET 	 22		30	; slot22 = _env["pairs"]
		2091	[  0]	MOV  	 24		21	; slot24 = slot21
		2092	[  0]	CALL 	 22	4	2	; slot22, slot23, slot24 = pairs(slot23)
		2093	[  0]	ISNEXT	 25		1	; Verify ITERN at 2095; goto 2095
		2094	[  0]	TSETV	 26	20	25	; slot20[slot25] = slot26
		2095	[  0]	ITERN	 25	3	3	; slot25, slot26, slot27 = pairs, slot23, slot24; slot25, slot26 = pairs(slot23, slot24)
		2096	[  0]	ITERL	 25		-3	; slot24 = slot25; if slot25 != nil goto 2094
		2097	[  0]	JMP  	 21		67	; 	goto 2165
		2098	[  0]	UGET 	 21		3	; slot21 = uv3"unknwon"
		2099	[  0]	TGETS	 21	21	286	; slot21 = uv3"unknown".step
		2100	[  0]	GGET 	 22		270	; slot22 = _env["STEP_POSITION"]
		2101	[  0]	ISEQV	 21		22	; if uv3"unknown".step == STEP_POSITION
		2102	[  0]	JMP  	 21		20	; 	goto 2123
		2103	[  0]	UGET 	 21		3	; slot21 = uv3"unknwon"
		2104	[  0]	TGETS	 21	21	286	; slot21 = uv3"unknown".step
		2105	[  0]	GGET 	 22		269	; slot22 = _env["STEP_ABSORB_DRAG"]
		2106	[  0]	ISEQV	 21		22	; if uv3"unknown".step == STEP_ABSORB_DRAG
		2107	[  0]	JMP  	 21		15	; 	goto 2123
		2108	[  0]	UGET 	 21		3	; slot21 = uv3"unknwon"
		2109	[  0]	TGETS	 21	21	286	; slot21 = uv3"unknown".step
		2110	[  0]	GGET 	 22		268	; slot22 = _env["STEP_FREE_ABSORB"]
		2111	[  0]	ISEQV	 21		22	; if uv3"unknown".step == STEP_FREE_ABSORB
		2112	[  0]	JMP  	 21		10	; 	goto 2123
		2113	[  0]	UGET 	 21		3	; slot21 = uv3"unknwon"
		2114	[  0]	TGETS	 21	21	286	; slot21 = uv3"unknown".step
		2115	[  0]	GGET 	 22		267	; slot22 = _env["STEP_IMPRINT_INSPECT"]
		2116	[  0]	ISEQV	 21		22	; if uv3"unknown".step == STEP_IMPRINT_INSPECT
		2117	[  0]	JMP  	 21		5	; 	goto 2123
		2118	[  0]	UGET 	 21		3	; slot21 = uv3"unknwon"
		2119	[  0]	TGETS	 21	21	286	; slot21 = uv3"unknown".step
		2120	[  0]	GGET 	 22		266	; slot22 = _env["STEP_FINAL_READY"]
		2121	[  0]	ISNEV	 21		22	; if uv3"unknown".step ~= STEP_FINAL_READY
		2122	[  0]	JMP  	 21		19	; 	goto 2142
		2123	[  0]	ISF  	   		0	; if not slot0
		2124	[  0]	JMP  	 21		8	; 	goto 2133
		2125	[  0]	TGETS	 21	0	236	; slot21 = slot0.tutorial
		2126	[  0]	ISF  	   		21	; if not <unknown table>.tutorial
		2127	[  0]	JMP  	 22		5	; 	goto 2133
		2128	[  0]	TGETS	 21	0	236	; slot21 = slot0.tutorial
		2129	[  0]	KSTR 	 22		38	; slot22 = "positionTip"
		2130	[  0]	TGETV	 21	21	22	; slot21 = <unknown table>.tutorial[slot22]
		2131	[  0]	IST  	   		21	; if slot21
		2132	[  0]	JMP  	 22		1	; 	goto 2134
		2133	[  0]	TNEW 	 21		0	; slot21 = new table( array: 0, dict: 1)
		2134	[  0]	GGET 	 22		30	; slot22 = _env["pairs"]
		2135	[  0]	MOV  	 24		21	; slot24 = slot21
		2136	[  0]	CALL 	 22	4	2	; slot22, slot23, slot24 = pairs(slot23)
		2137	[  0]	ISNEXT	 25		1	; Verify ITERN at 2139; goto 2139
		2138	[  0]	TSETV	 26	20	25	; slot20[slot25] = slot26
		2139	[  0]	ITERN	 25	3	3	; slot25, slot26, slot27 = pairs, slot23, slot24; slot25, slot26 = pairs(slot23, slot24)
		2140	[  0]	ITERL	 25		-3	; slot24 = slot25; if slot25 != nil goto 2138
		2141	[  0]	JMP  	 21		23	; 	goto 2165
		2142	[  0]	UGET 	 21		3	; slot21 = uv3"unknwon"
		2143	[  0]	TGETS	 21	21	286	; slot21 = uv3"unknown".step
		2144	[  0]	GGET 	 22		272	; slot22 = _env["STEP_BATTLE_READY"]
		2145	[  0]	ISNEV	 21		22	; if uv3"unknown".step ~= STEP_BATTLE_READY
		2146	[  0]	JMP  	 21		18	; 	goto 2165
		2147	[  0]	ISF  	   		0	; if not slot0
		2148	[  0]	JMP  	 21		8	; 	goto 2157
		2149	[  0]	TGETS	 21	0	236	; slot21 = slot0.tutorial
		2150	[  0]	ISF  	   		21	; if not <unknown table>.tutorial
		2151	[  0]	JMP  	 22		5	; 	goto 2157
		2152	[  0]	TGETS	 21	0	236	; slot21 = slot0.tutorial
		2153	[  0]	KSTR 	 22		34	; slot22 = "readyTip"
		2154	[  0]	TGETV	 21	21	22	; slot21 = <unknown table>.tutorial[slot22]
		2155	[  0]	IST  	   		21	; if slot21
		2156	[  0]	JMP  	 22		1	; 	goto 2158
		2157	[  0]	TNEW 	 21		0	; slot21 = new table( array: 0, dict: 1)
		2158	[  0]	GGET 	 22		30	; slot22 = _env["pairs"]
		2159	[  0]	MOV  	 24		21	; slot24 = slot21
		2160	[  0]	CALL 	 22	4	2	; slot22, slot23, slot24 = pairs(slot23)
		2161	[  0]	ISNEXT	 25		1	; Verify ITERN at 2163; goto 2163
		2162	[  0]	TSETV	 26	20	25	; slot20[slot25] = slot26
		2163	[  0]	ITERN	 25	3	3	; slot25, slot26, slot27 = pairs, slot23, slot24; slot25, slot26 = pairs(slot23, slot24)
		2164	[  0]	ITERL	 25		-3	; slot24 = slot25; if slot25 != nil goto 2162
		2165	[  0]	UGET 	 21		22	; slot21 = uv22"unknwon"
		2166	[  0]	MOV  	 23		2	; slot23 = love.graphics.getFont
		2167	[  0]	MOV  	 24		11	; slot24 = slot11
		2168	[  0]	MOV  	 25		20	; slot25 = slot20
		2169	[  0]	CALL 	 21	3	4	; slot21, slot22 = uv22"unknown"(pairs, love.graphics.getFont, slot24)
		2170	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2171	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2172	[  0]	GGET 	 24		223	; slot24 = _env["STEP_GOLD"]
		2173	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_GOLD
		2174	[  0]	JMP  	 23		5	; 	goto 2180
		2175	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2176	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2177	[  0]	GGET 	 24		185	; slot24 = _env["STEP_WAVE_REWARD"]
		2178	[  0]	ISNEV	 23		24	; if uv3"unknown".step ~= STEP_WAVE_REWARD
		2179	[  0]	JMP  	 23		105	; 	goto 2285
		2180	[  0]	ISF  	   		0	; if not slot0
		2181	[  0]	JMP  	 23		8	; 	goto 2190
		2182	[  0]	TGETS	 23	0	236	; slot23 = slot0.tutorial
		2183	[  0]	ISF  	   		23	; if not <unknown table>.tutorial
		2184	[  0]	JMP  	 24		5	; 	goto 2190
		2185	[  0]	TGETS	 23	0	236	; slot23 = slot0.tutorial
		2186	[  0]	KSTR 	 24		29	; slot24 = "goldFocus"
		2187	[  0]	TGETV	 23	23	24	; slot23 = <unknown table>.tutorial[slot24]
		2188	[  0]	IST  	   		23	; if slot23
		2189	[  0]	JMP  	 24		1	; 	goto 2191
		2190	[  0]	TNEW 	 23		0	; slot23 = new table( array: 0, dict: 1)
		2191	[  0]	ISF  	   		0	; if not slot0
		2192	[  0]	JMP  	 24		8	; 	goto 2201
		2193	[  0]	TGETS	 24	0	236	; slot24 = slot0.tutorial
		2194	[  0]	ISF  	   		24	; if not <unknown table>.tutorial
		2195	[  0]	JMP  	 25		5	; 	goto 2201
		2196	[  0]	TGETS	 24	0	236	; slot24 = slot0.tutorial
		2197	[  0]	KSTR 	 25		28	; slot25 = "goldTip"
		2198	[  0]	TGETV	 24	24	25	; slot24 = <unknown table>.tutorial[slot25]
		2199	[  0]	IST  	   		24	; if slot24
		2200	[  0]	JMP  	 25		1	; 	goto 2202
		2201	[  0]	TNEW 	 24		0	; slot24 = new table( array: 0, dict: 1)
		2202	[  0]	ISF  	   		0	; if not slot0
		2203	[  0]	JMP  	 25		4	; 	goto 2208
		2204	[  0]	KSTR 	 25		27	; slot25 = "goldDisplay"
		2205	[  0]	TGETV	 25	0	25	; slot25 = slot0[slot25]
		2206	[  0]	IST  	   		25	; if slot25
		2207	[  0]	JMP  	 26		1	; 	goto 2209
		2208	[  0]	TNEW 	 25		0	; slot25 = new table( array: 0, dict: 1)
		2209	[  0]	GGET 	 26		47	; slot26 = _env["tonumber"]
		2210	[  0]	TGETS	 28	23	43	; slot28 = slot23.w
		2211	[  0]	CALL 	 26	2	2	; slot26 = tonumber(slot27)
		2212	[  0]	IST  	   		26	; if tonumber
		2213	[  0]	JMP  	 27		1	; 	goto 2215
		2214	[  0]	KSHORT	 26		70	; slot26 = 70
		2215	[  0]	GGET 	 27		47	; slot27 = _env["tonumber"]
		2216	[  0]	KSTR 	 29		26	; slot29 = "h"
		2217	[  0]	TGETV	 29	23	29	; slot29 = slot23[slot29]
		2218	[  0]	CALL 	 27	2	2	; slot27 = tonumber(<unknown table>.w)
		2219	[  0]	IST  	   		27	; if tonumber
		2220	[  0]	JMP  	 28		1	; 	goto 2222
		2221	[  0]	KSHORT	 27		22	; slot27 = 22
		2222	[  0]	GGET 	 28		47	; slot28 = _env["tonumber"]
		2223	[  0]	TGETS	 30	23	48	; slot30 = slot23.x
		2224	[  0]	CALL 	 28	2	2	; slot28 = tonumber(slot29)
		2225	[  0]	GGET 	 29		47	; slot29 = _env["tonumber"]
		2226	[  0]	TGETS	 31	23	45	; slot31 = slot23.y
		2227	[  0]	CALL 	 29	2	2	; slot29 = tonumber(<unknown table>.x)
		2228	[  0]	IST  	   		28	; if tonumber
		2229	[  0]	JMP  	 30		17	; 	goto 2247
		2230	[  0]	GGET 	 30		47	; slot30 = _env["tonumber"]
		2231	[  0]	TGETS	 32	25	48	; slot32 = slot25.x
		2232	[  0]	CALL 	 30	2	2	; slot30 = tonumber(<unknown table>.y)
		2233	[  0]	IST  	   		30	; if tonumber
		2234	[  0]	JMP  	 31		1	; 	goto 2236
		2235	[  0]	KSHORT	 30		288	; slot30 = 288
		2236	[  0]	KSTR 	 31		25	; slot31 = "align"
		2237	[  0]	TGETV	 31	25	31	; slot31 = slot25[slot31]
		2238	[  0]	IST  	   		31	; if slot31
		2239	[  0]	JMP  	 32		1	; 	goto 2241
		2240	[  0]	KSTR 	 31		226	; slot31 = "right"
		2241	[  0]	ISNES	 31		226	; if slot31 ~= "right"
		2242	[  0]	JMP  	 31		3	; 	goto 2246
		2243	[  0]	SUBVV	 31	30	26	; slot31 = slot30 - slot26
		2244	[  0]	ISTC 	 28		31	; slot28 = slot31; if slot31
		2245	[  0]	JMP  	 32		1	; 	goto 2247
		2246	[  0]	MOV  	 28		30	; slot28 = slot30
		2247	[  0]	IST  	   		29	; if tonumber
		2248	[  0]	JMP  	 30		7	; 	goto 2256
		2249	[  0]	GGET 	 30		47	; slot30 = _env["tonumber"]
		2250	[  0]	TGETS	 32	25	45	; slot32 = slot25.y
		2251	[  0]	CALL 	 30	2	2	; slot30 = tonumber(slot31)
		2252	[  0]	IST  	   		30	; if tonumber
		2253	[  0]	JMP  	 31		1	; 	goto 2255
		2254	[  0]	KSHORT	 30		10	; slot30 = 10
		2255	[  0]	SUBVN	 29	30	8	; slot29 = slot30 - 6
		2256	[  0]	MULVN	 30	26	6	; slot30 = slot26 * 0.5
		2257	[  0]	ADDVV	 30	28	30	; slot30 = slot28 + slot30
		2258	[  0]	MULVN	 31	21	6	; slot31 = uv22"unknown" * 0.5
		2259	[  0]	SUBVV	 30	30	31	; slot30 = slot30 - slot31
		2260	[  0]	GGET 	 31		47	; slot31 = _env["tonumber"]
		2261	[  0]	TGETS	 33	24	46	; slot33 = slot24.offsetX
		2262	[  0]	CALL 	 31	2	2	; slot31 = tonumber(<unknown table>.y)
		2263	[  0]	IST  	   		31	; if tonumber
		2264	[  0]	JMP  	 32		1	; 	goto 2266
		2265	[  0]	KSHORT	 31		0	; slot31 = 0
		2266	[  0]	ADDVV	 17	30	31	; slot17 = slot30 + slot31
		2267	[  0]	ADDVV	 30	29	27	; slot30 = slot29 + slot27
		2268	[  0]	GGET 	 31		47	; slot31 = _env["tonumber"]
		2269	[  0]	KSTR 	 33		33	; slot33 = "gapY"
		2270	[  0]	TGETV	 33	24	33	; slot33 = slot24[slot33]
		2271	[  0]	CALL 	 31	2	2	; slot31 = tonumber(<unknown table>.y)
		2272	[  0]	IST  	   		31	; if tonumber
		2273	[  0]	JMP  	 32		1	; 	goto 2275
		2274	[  0]	KSHORT	 31		4	; slot31 = 4
		2275	[  0]	ADDVV	 30	30	31	; slot30 = slot30 + slot31
		2276	[  0]	GGET 	 31		47	; slot31 = _env["tonumber"]
		2277	[  0]	TGETS	 33	24	44	; slot33 = slot24.offsetY
		2278	[  0]	CALL 	 31	2	2	; slot31 = tonumber(<unknown table>.y)
		2279	[  0]	IST  	   		31	; if tonumber
		2280	[  0]	JMP  	 32		1	; 	goto 2282
		2281	[  0]	KSHORT	 31		0	; slot31 = 0
		2282	[  0]	ADDVV	 30	30	31	; slot30 = slot30 + slot31
		2283	[  0]	ADDVV	 18	30	19	; slot18 = slot30 + slot19
		2284	[  0]	JMP  	 23		663	; 	goto 2948
		2285	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2286	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2287	[  0]	GGET 	 24		259	; slot24 = _env["STEP_CORE_COUNTER"]
		2288	[  0]	ISNEV	 23		24	; if uv3"unknown".step ~= STEP_CORE_COUNTER
		2289	[  0]	JMP  	 23		48	; 	goto 2338
		2290	[  0]	UGET 	 23		23	; slot23 = uv23"unknwon"
		2291	[  0]	MOV  	 25		0	; slot25 = slot0
		2292	[  0]	CALL 	 23	2	2	; slot23 = uv23"unknown"(STEP_CORE_COUNTER)
		2293	[  0]	ISF  	   		0	; if not slot0
		2294	[  0]	JMP  	 24		8	; 	goto 2303
		2295	[  0]	TGETS	 24	0	236	; slot24 = slot0.tutorial
		2296	[  0]	ISF  	   		24	; if not <unknown table>.tutorial
		2297	[  0]	JMP  	 25		5	; 	goto 2303
		2298	[  0]	TGETS	 24	0	236	; slot24 = slot0.tutorial
		2299	[  0]	KSTR 	 25		24	; slot25 = "coreCounterTip"
		2300	[  0]	TGETV	 24	24	25	; slot24 = <unknown table>.tutorial[slot25]
		2301	[  0]	IST  	   		24	; if slot24
		2302	[  0]	JMP  	 25		1	; 	goto 2304
		2303	[  0]	TNEW 	 24		0	; slot24 = new table( array: 0, dict: 1)
		2304	[  0]	TGETS	 25	23	48	; slot25 = uv23"unknown".x
		2305	[  0]	TGETS	 26	23	43	; slot26 = uv23"unknown".w
		2306	[  0]	MULVN	 26	26	6	; slot26 = uv23"unknown".w * 0.5
		2307	[  0]	ADDVV	 25	25	26	; slot25 = uv23"unknown".x + slot26
		2308	[  0]	MULVN	 26	21	6	; slot26 = uv22"unknown" * 0.5
		2309	[  0]	SUBVV	 25	25	26	; slot25 = slot25 - slot26
		2310	[  0]	GGET 	 26		47	; slot26 = _env["tonumber"]
		2311	[  0]	TGETS	 28	24	46	; slot28 = slot24.offsetX
		2312	[  0]	CALL 	 26	2	2	; slot26 = tonumber(slot27)
		2313	[  0]	IST  	   		26	; if tonumber
		2314	[  0]	JMP  	 27		1	; 	goto 2316
		2315	[  0]	KSHORT	 26		0	; slot26 = 0
		2316	[  0]	ADDVV	 17	25	26	; slot17 = slot25 + slot26
		2317	[  0]	TGETS	 25	23	45	; slot25 = uv23"unknown".y
		2318	[  0]	KSTR 	 26		26	; slot26 = "h"
		2319	[  0]	TGETV	 26	23	26	; slot26 = uv23"unknown"[slot26]
		2320	[  0]	ADDVV	 25	25	26	; slot25 = uv23"unknown".y + slot26
		2321	[  0]	GGET 	 26		47	; slot26 = _env["tonumber"]
		2322	[  0]	KSTR 	 28		33	; slot28 = "gapY"
		2323	[  0]	TGETV	 28	24	28	; slot28 = slot24[slot28]
		2324	[  0]	CALL 	 26	2	2	; slot26 = tonumber(slot27)
		2325	[  0]	IST  	   		26	; if tonumber
		2326	[  0]	JMP  	 27		1	; 	goto 2328
		2327	[  0]	KSHORT	 26		8	; slot26 = 8
		2328	[  0]	ADDVV	 25	25	26	; slot25 = slot25 + slot26
		2329	[  0]	GGET 	 26		47	; slot26 = _env["tonumber"]
		2330	[  0]	TGETS	 28	24	44	; slot28 = slot24.offsetY
		2331	[  0]	CALL 	 26	2	2	; slot26 = tonumber(slot27)
		2332	[  0]	IST  	   		26	; if tonumber
		2333	[  0]	JMP  	 27		1	; 	goto 2335
		2334	[  0]	KSHORT	 26		0	; slot26 = 0
		2335	[  0]	ADDVV	 25	25	26	; slot25 = slot25 + slot26
		2336	[  0]	ADDVV	 18	25	19	; slot18 = slot25 + slot19
		2337	[  0]	JMP  	 23		610	; 	goto 2948
		2338	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2339	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2340	[  0]	GGET 	 24		257	; slot24 = _env["STEP_CORE_SELECT"]
		2341	[  0]	ISNEV	 23		24	; if uv3"unknown".step ~= STEP_CORE_SELECT
		2342	[  0]	JMP  	 23		36	; 	goto 2379
		2343	[  0]	ISF  	   		0	; if not slot0
		2344	[  0]	JMP  	 23		8	; 	goto 2353
		2345	[  0]	TGETS	 23	0	236	; slot23 = slot0.tutorial
		2346	[  0]	ISF  	   		23	; if not <unknown table>.tutorial
		2347	[  0]	JMP  	 24		5	; 	goto 2353
		2348	[  0]	TGETS	 23	0	236	; slot23 = slot0.tutorial
		2349	[  0]	KSTR 	 24		23	; slot24 = "coreSelectTip"
		2350	[  0]	TGETV	 23	23	24	; slot23 = <unknown table>.tutorial[slot24]
		2351	[  0]	IST  	   		23	; if slot23
		2352	[  0]	JMP  	 24		1	; 	goto 2354
		2353	[  0]	TNEW 	 23		0	; slot23 = new table( array: 0, dict: 1)
		2354	[  0]	MULVN	 24	3	6	; slot24 = slot3 * 0.5
		2355	[  0]	MULVN	 25	21	6	; slot25 = uv22"unknown" * 0.5
		2356	[  0]	SUBVV	 24	24	25	; slot24 = slot24 - slot25
		2357	[  0]	GGET 	 25		47	; slot25 = _env["tonumber"]
		2358	[  0]	TGETS	 27	23	46	; slot27 = slot23.offsetX
		2359	[  0]	CALL 	 25	2	2	; slot25 = tonumber(slot26)
		2360	[  0]	IST  	   		25	; if tonumber
		2361	[  0]	JMP  	 26		1	; 	goto 2363
		2362	[  0]	KSHORT	 25		0	; slot25 = 0
		2363	[  0]	ADDVV	 17	24	25	; slot17 = slot24 + slot25
		2364	[  0]	GGET 	 24		47	; slot24 = _env["tonumber"]
		2365	[  0]	TGETS	 26	23	45	; slot26 = slot23.y
		2366	[  0]	CALL 	 24	2	2	; slot24 = tonumber(slot25)
		2367	[  0]	IST  	   		24	; if tonumber
		2368	[  0]	JMP  	 25		1	; 	goto 2370
		2369	[  0]	KSHORT	 24		26	; slot24 = 26
		2370	[  0]	GGET 	 25		47	; slot25 = _env["tonumber"]
		2371	[  0]	TGETS	 27	23	44	; slot27 = slot23.offsetY
		2372	[  0]	CALL 	 25	2	2	; slot25 = tonumber(<unknown table>.y)
		2373	[  0]	IST  	   		25	; if tonumber
		2374	[  0]	JMP  	 26		1	; 	goto 2376
		2375	[  0]	KSHORT	 25		0	; slot25 = 0
		2376	[  0]	ADDVV	 24	24	25	; slot24 = slot24 + slot25
		2377	[  0]	ADDVV	 18	24	19	; slot18 = slot24 + slot19
		2378	[  0]	JMP  	 23		569	; 	goto 2948
		2379	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2380	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2381	[  0]	GGET 	 24		253	; slot24 = _env["STEP_MAX_UNIT_NOTICE"]
		2382	[  0]	ISNEV	 23		24	; if uv3"unknown".step ~= STEP_MAX_UNIT_NOTICE
		2383	[  0]	JMP  	 23		16	; 	goto 2400
		2384	[  0]	UGET 	 23		24	; slot23 = uv24"unknwon"
		2385	[  0]	MOV  	 25		0	; slot25 = slot0
		2386	[  0]	CALL 	 23	2	2	; slot23 = uv24"unknown"(STEP_MAX_UNIT_NOTICE)
		2387	[  0]	TGETS	 24	23	48	; slot24 = uv24"unknown".x
		2388	[  0]	TGETS	 25	23	43	; slot25 = uv24"unknown".w
		2389	[  0]	MULVN	 25	25	6	; slot25 = uv24"unknown".w * 0.5
		2390	[  0]	ADDVV	 24	24	25	; slot24 = uv24"unknown".x + slot25
		2391	[  0]	MULVN	 25	21	6	; slot25 = uv22"unknown" * 0.5
		2392	[  0]	SUBVV	 17	24	25	; slot17 = slot24 - slot25
		2393	[  0]	TGETS	 24	23	45	; slot24 = uv24"unknown".y
		2394	[  0]	KSTR 	 25		26	; slot25 = "h"
		2395	[  0]	TGETV	 25	23	25	; slot25 = uv24"unknown"[slot25]
		2396	[  0]	ADDVV	 24	24	25	; slot24 = uv24"unknown".y + slot25
		2397	[  0]	ADDVN	 24	24	7	; slot24 = slot24 + 8
		2398	[  0]	ADDVV	 18	24	19	; slot18 = slot24 + slot19
		2399	[  0]	JMP  	 23		548	; 	goto 2948
		2400	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2401	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2402	[  0]	GGET 	 24		256	; slot24 = _env["STEP_CLASS_PROMOTION"]
		2403	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_CLASS_PROMOTION
		2404	[  0]	JMP  	 23		10	; 	goto 2415
		2405	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2406	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2407	[  0]	GGET 	 24		255	; slot24 = _env["STEP_CLASS_SKILL_HOVER"]
		2408	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_CLASS_SKILL_HOVER
		2409	[  0]	JMP  	 23		5	; 	goto 2415
		2410	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2411	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2412	[  0]	GGET 	 24		254	; slot24 = _env["STEP_CLASS_CHOOSE"]
		2413	[  0]	ISNEV	 23		24	; if uv3"unknown".step ~= STEP_CLASS_CHOOSE
		2414	[  0]	JMP  	 23		19	; 	goto 2434
		2415	[  0]	ISFC 	 23		1	; slot23 = slot1; if not slot1
		2416	[  0]	JMP  	 23		1	; 	goto 2418
		2417	[  0]	TGETS	 23	1	226	; slot23 = slot1.right
		2418	[  0]	ISF  	   		23	; if not <unknown table>.right
		2419	[  0]	JMP  	 24		528	; 	goto 2948
		2420	[  0]	TGETS	 24	23	48	; slot24 = <unknown table>.right.x
		2421	[  0]	TGETS	 25	23	43	; slot25 = <unknown table>.right.w
		2422	[  0]	MULVN	 25	25	6	; slot25 = <unknown table>.right.w * 0.5
		2423	[  0]	ADDVV	 24	24	25	; slot24 = <unknown table>.right.x + slot25
		2424	[  0]	MULVN	 25	21	6	; slot25 = uv22"unknown" * 0.5
		2425	[  0]	SUBVV	 17	24	25	; slot17 = slot24 - slot25
		2426	[  0]	TGETS	 24	23	45	; slot24 = <unknown table>.right.y
		2427	[  0]	KSTR 	 25		26	; slot25 = "h"
		2428	[  0]	TGETV	 25	23	25	; slot25 = <unknown table>.right[slot25]
		2429	[  0]	ADDVV	 24	24	25	; slot24 = <unknown table>.right.y + slot25
		2430	[  0]	SUBVV	 24	24	22	; slot24 = slot24 - pairs
		2431	[  0]	SUBVN	 24	24	9	; slot24 = slot24 - 16
		2432	[  0]	ADDVV	 18	24	19	; slot18 = slot24 + slot19
		2433	[  0]	JMP  	 23		514	; 	goto 2948
		2434	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2435	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2436	[  0]	GGET 	 24		251	; slot24 = _env["STEP_SHOP_INTRO"]
		2437	[  0]	ISNEV	 23		24	; if uv3"unknown".step ~= STEP_SHOP_INTRO
		2438	[  0]	JMP  	 23		105	; 	goto 2544
		2439	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2440	[  0]	KSTR 	 24		22	; slot24 = "shopFocusRect"
		2441	[  0]	TGETV	 23	23	24	; slot23 = uv3"unknown"[slot24]
		2442	[  0]	ISF  	   		23	; if not slot23
		2443	[  0]	JMP  	 24		504	; 	goto 2948
		2444	[  0]	ISF  	   		0	; if not slot0
		2445	[  0]	JMP  	 24		8	; 	goto 2454
		2446	[  0]	TGETS	 24	0	236	; slot24 = slot0.tutorial
		2447	[  0]	ISF  	   		24	; if not <unknown table>.tutorial
		2448	[  0]	JMP  	 25		5	; 	goto 2454
		2449	[  0]	TGETS	 24	0	236	; slot24 = slot0.tutorial
		2450	[  0]	KSTR 	 25		21	; slot25 = "shopTip"
		2451	[  0]	TGETV	 24	24	25	; slot24 = <unknown table>.tutorial[slot25]
		2452	[  0]	IST  	   		24	; if slot24
		2453	[  0]	JMP  	 25		1	; 	goto 2455
		2454	[  0]	TNEW 	 24		0	; slot24 = new table( array: 0, dict: 1)
		2455	[  0]	KSTR 	 25		20	; slot25 = "side"
		2456	[  0]	TGETV	 25	24	25	; slot25 = slot24[slot25]
		2457	[  0]	IST  	   		25	; if slot25
		2458	[  0]	JMP  	 26		1	; 	goto 2460
		2459	[  0]	KSTR 	 25		19	; slot25 = "below"
		2460	[  0]	ISNES	 25		19	; if slot25 ~= "below"
		2461	[  0]	JMP  	 26		27	; 	goto 2489
		2462	[  0]	TGETS	 26	23	48	; slot26 = slot23.x
		2463	[  0]	TGETS	 27	23	43	; slot27 = slot23.w
		2464	[  0]	MULVN	 27	27	6	; slot27 = <unknown table>.w * 0.5
		2465	[  0]	ADDVV	 26	26	27	; slot26 = <unknown table>.x + slot27
		2466	[  0]	MULVN	 27	21	6	; slot27 = uv22"unknown" * 0.5
		2467	[  0]	SUBVV	 17	26	27	; slot17 = slot26 - slot27
		2468	[  0]	TGETS	 26	23	45	; slot26 = slot23.y
		2469	[  0]	KSTR 	 27		26	; slot27 = "h"
		2470	[  0]	TGETV	 27	23	27	; slot27 = slot23[slot27]
		2471	[  0]	ADDVV	 26	26	27	; slot26 = <unknown table>.y + slot27
		2472	[  0]	GGET 	 27		47	; slot27 = _env["tonumber"]
		2473	[  0]	KSTR 	 29		33	; slot29 = "gapY"
		2474	[  0]	TGETV	 29	24	29	; slot29 = slot24[slot29]
		2475	[  0]	CALL 	 27	2	2	; slot27 = tonumber(<unknown table>.offsetY)
		2476	[  0]	IST  	   		27	; if tonumber
		2477	[  0]	JMP  	 28		1	; 	goto 2479
		2478	[  0]	KSHORT	 27		8	; slot27 = 8
		2479	[  0]	ADDVV	 26	26	27	; slot26 = slot26 + slot27
		2480	[  0]	GGET 	 27		47	; slot27 = _env["tonumber"]
		2481	[  0]	TGETS	 29	24	44	; slot29 = slot24.offsetY
		2482	[  0]	CALL 	 27	2	2	; slot27 = tonumber(<unknown table>.offsetY)
		2483	[  0]	IST  	   		27	; if tonumber
		2484	[  0]	JMP  	 28		1	; 	goto 2486
		2485	[  0]	KSHORT	 27		0	; slot27 = 0
		2486	[  0]	ADDVV	 26	26	27	; slot26 = slot26 + slot27
		2487	[  0]	ADDVV	 18	26	19	; slot18 = slot26 + slot19
		2488	[  0]	JMP  	 26		459	; 	goto 2948
		2489	[  0]	ISNES	 25		226	; if slot25 ~= "right"
		2490	[  0]	JMP  	 26		27	; 	goto 2518
		2491	[  0]	TGETS	 26	23	48	; slot26 = slot23.x
		2492	[  0]	TGETS	 27	23	43	; slot27 = slot23.w
		2493	[  0]	ADDVV	 26	26	27	; slot26 = <unknown table>.x + <unknown table>.w
		2494	[  0]	GGET 	 27		47	; slot27 = _env["tonumber"]
		2495	[  0]	KSTR 	 29		41	; slot29 = "gapX"
		2496	[  0]	TGETV	 29	24	29	; slot29 = slot24[slot29]
		2497	[  0]	CALL 	 27	2	2	; slot27 = tonumber(<unknown table>.offsetY)
		2498	[  0]	IST  	   		27	; if tonumber
		2499	[  0]	JMP  	 28		1	; 	goto 2501
		2500	[  0]	KSHORT	 27		8	; slot27 = 8
		2501	[  0]	ADDVV	 17	26	27	; slot17 = slot26 + slot27
		2502	[  0]	TGETS	 26	23	45	; slot26 = slot23.y
		2503	[  0]	KSTR 	 27		26	; slot27 = "h"
		2504	[  0]	TGETV	 27	23	27	; slot27 = slot23[slot27]
		2505	[  0]	MULVN	 27	27	6	; slot27 = slot27 * 0.5
		2506	[  0]	ADDVV	 26	26	27	; slot26 = <unknown table>.y + slot27
		2507	[  0]	MULVN	 27	22	6	; slot27 = pairs * 0.5
		2508	[  0]	SUBVV	 26	26	27	; slot26 = slot26 - slot27
		2509	[  0]	GGET 	 27		47	; slot27 = _env["tonumber"]
		2510	[  0]	TGETS	 29	24	44	; slot29 = slot24.offsetY
		2511	[  0]	CALL 	 27	2	2	; slot27 = tonumber(<unknown table>.offsetY)
		2512	[  0]	IST  	   		27	; if tonumber
		2513	[  0]	JMP  	 28		1	; 	goto 2515
		2514	[  0]	KSHORT	 27		0	; slot27 = 0
		2515	[  0]	ADDVV	 26	26	27	; slot26 = slot26 + slot27
		2516	[  0]	ADDVV	 18	26	19	; slot18 = slot26 + slot19
		2517	[  0]	JMP  	 26		430	; 	goto 2948
		2518	[  0]	TGETS	 26	23	48	; slot26 = slot23.x
		2519	[  0]	SUBVV	 26	26	21	; slot26 = <unknown table>.x - uv22"unknown"
		2520	[  0]	GGET 	 27		47	; slot27 = _env["tonumber"]
		2521	[  0]	KSTR 	 29		41	; slot29 = "gapX"
		2522	[  0]	TGETV	 29	24	29	; slot29 = slot24[slot29]
		2523	[  0]	CALL 	 27	2	2	; slot27 = tonumber(<unknown table>.offsetY)
		2524	[  0]	IST  	   		27	; if tonumber
		2525	[  0]	JMP  	 28		1	; 	goto 2527
		2526	[  0]	KSHORT	 27		8	; slot27 = 8
		2527	[  0]	SUBVV	 17	26	27	; slot17 = slot26 - slot27
		2528	[  0]	TGETS	 26	23	45	; slot26 = slot23.y
		2529	[  0]	KSTR 	 27		26	; slot27 = "h"
		2530	[  0]	TGETV	 27	23	27	; slot27 = slot23[slot27]
		2531	[  0]	MULVN	 27	27	6	; slot27 = slot27 * 0.5
		2532	[  0]	ADDVV	 26	26	27	; slot26 = <unknown table>.y + slot27
		2533	[  0]	MULVN	 27	22	6	; slot27 = pairs * 0.5
		2534	[  0]	SUBVV	 26	26	27	; slot26 = slot26 - slot27
		2535	[  0]	GGET 	 27		47	; slot27 = _env["tonumber"]
		2536	[  0]	TGETS	 29	24	44	; slot29 = slot24.offsetY
		2537	[  0]	CALL 	 27	2	2	; slot27 = tonumber(<unknown table>.offsetY)
		2538	[  0]	IST  	   		27	; if tonumber
		2539	[  0]	JMP  	 28		1	; 	goto 2541
		2540	[  0]	KSHORT	 27		0	; slot27 = 0
		2541	[  0]	ADDVV	 26	26	27	; slot26 = slot26 + slot27
		2542	[  0]	ADDVV	 18	26	19	; slot18 = slot26 + slot19
		2543	[  0]	JMP  	 23		404	; 	goto 2948
		2544	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2545	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2546	[  0]	GGET 	 24		249	; slot24 = _env["STEP_SHOP_CURRENCY"]
		2547	[  0]	ISNEV	 23		24	; if uv3"unknown".step ~= STEP_SHOP_CURRENCY
		2548	[  0]	JMP  	 23		16	; 	goto 2565
		2549	[  0]	UGET 	 23		14	; slot23 = uv14"unknwon"
		2550	[  0]	MOV  	 25		0	; slot25 = slot0
		2551	[  0]	CALL 	 23	2	2	; slot23 = uv14"unknown"(STEP_SHOP_CURRENCY)
		2552	[  0]	TGETS	 24	23	48	; slot24 = uv14"unknown".x
		2553	[  0]	TGETS	 25	23	43	; slot25 = uv14"unknown".w
		2554	[  0]	MULVN	 25	25	6	; slot25 = uv14"unknown".w * 0.5
		2555	[  0]	ADDVV	 24	24	25	; slot24 = uv14"unknown".x + slot25
		2556	[  0]	MULVN	 25	21	6	; slot25 = uv22"unknown" * 0.5
		2557	[  0]	SUBVV	 17	24	25	; slot17 = slot24 - slot25
		2558	[  0]	TGETS	 24	23	45	; slot24 = uv14"unknown".y
		2559	[  0]	KSTR 	 25		26	; slot25 = "h"
		2560	[  0]	TGETV	 25	23	25	; slot25 = uv14"unknown"[slot25]
		2561	[  0]	ADDVV	 24	24	25	; slot24 = uv14"unknown".y + slot25
		2562	[  0]	ADDVN	 24	24	7	; slot24 = slot24 + 8
		2563	[  0]	ADDVV	 18	24	19	; slot18 = slot24 + slot19
		2564	[  0]	JMP  	 23		383	; 	goto 2948
		2565	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2566	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2567	[  0]	GGET 	 24		247	; slot24 = _env["STEP_SHOP_BUY"]
		2568	[  0]	ISNEV	 23		24	; if uv3"unknown".step ~= STEP_SHOP_BUY
		2569	[  0]	JMP  	 23		16	; 	goto 2586
		2570	[  0]	UGET 	 23		15	; slot23 = uv15"unknwon"
		2571	[  0]	MOV  	 25		0	; slot25 = slot0
		2572	[  0]	CALL 	 23	2	2	; slot23 = uv15"unknown"(STEP_SHOP_BUY)
		2573	[  0]	ISF  	   		23	; if not uv15"unknown"
		2574	[  0]	JMP  	 24		373	; 	goto 2948
		2575	[  0]	TGETS	 24	23	48	; slot24 = uv15"unknown".x
		2576	[  0]	TGETS	 25	23	43	; slot25 = uv15"unknown".w
		2577	[  0]	MULVN	 25	25	6	; slot25 = uv15"unknown".w * 0.5
		2578	[  0]	ADDVV	 24	24	25	; slot24 = uv15"unknown".x + slot25
		2579	[  0]	MULVN	 25	21	6	; slot25 = uv22"unknown" * 0.5
		2580	[  0]	SUBVV	 17	24	25	; slot17 = slot24 - slot25
		2581	[  0]	TGETS	 24	23	45	; slot24 = uv15"unknown".y
		2582	[  0]	SUBVV	 24	24	22	; slot24 = uv15"unknown".y - pairs
		2583	[  0]	SUBVN	 24	24	10	; slot24 = slot24 - 9
		2584	[  0]	ADDVV	 18	24	19	; slot18 = slot24 + slot19
		2585	[  0]	JMP  	 23		362	; 	goto 2948
		2586	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2587	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2588	[  0]	GGET 	 24		245	; slot24 = _env["STEP_SHOP_ITEM_BOUGHT"]
		2589	[  0]	ISNEV	 23		24	; if uv3"unknown".step ~= STEP_SHOP_ITEM_BOUGHT
		2590	[  0]	JMP  	 23		16	; 	goto 2607
		2591	[  0]	UGET 	 23		16	; slot23 = uv16"unknwon"
		2592	[  0]	MOV  	 25		0	; slot25 = slot0
		2593	[  0]	CALL 	 23	2	2	; slot23 = uv16"unknown"(STEP_SHOP_ITEM_BOUGHT)
		2594	[  0]	ISF  	   		23	; if not uv16"unknown"
		2595	[  0]	JMP  	 24		352	; 	goto 2948
		2596	[  0]	TGETS	 24	23	48	; slot24 = uv16"unknown".x
		2597	[  0]	TGETS	 25	23	43	; slot25 = uv16"unknown".w
		2598	[  0]	MULVN	 25	25	6	; slot25 = uv16"unknown".w * 0.5
		2599	[  0]	ADDVV	 24	24	25	; slot24 = uv16"unknown".x + slot25
		2600	[  0]	MULVN	 25	21	6	; slot25 = uv22"unknown" * 0.5
		2601	[  0]	SUBVV	 17	24	25	; slot17 = slot24 - slot25
		2602	[  0]	TGETS	 24	23	45	; slot24 = uv16"unknown".y
		2603	[  0]	SUBVV	 24	24	22	; slot24 = uv16"unknown".y - pairs
		2604	[  0]	SUBVN	 24	24	10	; slot24 = slot24 - 9
		2605	[  0]	ADDVV	 18	24	19	; slot18 = slot24 + slot19
		2606	[  0]	JMP  	 23		341	; 	goto 2948
		2607	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2608	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2609	[  0]	GGET 	 24		243	; slot24 = _env["STEP_SHOP_RETURN"]
		2610	[  0]	ISNEV	 23		24	; if uv3"unknown".step ~= STEP_SHOP_RETURN
		2611	[  0]	JMP  	 23		18	; 	goto 2630
		2612	[  0]	UGET 	 23		17	; slot23 = uv17"unknwon"
		2613	[  0]	MOV  	 25		0	; slot25 = slot0
		2614	[  0]	MOV  	 26		1	; slot26 = slot1
		2615	[  0]	CALL 	 23	2	3	; slot23 = uv17"unknown"(STEP_SHOP_RETURN, slot25)
		2616	[  0]	ISF  	   		23	; if not uv17"unknown"
		2617	[  0]	JMP  	 24		330	; 	goto 2948
		2618	[  0]	TGETS	 24	23	48	; slot24 = uv17"unknown".x
		2619	[  0]	SUBVV	 24	24	21	; slot24 = uv17"unknown".x - uv22"unknown"
		2620	[  0]	SUBVN	 17	24	10	; slot17 = slot24 - 9
		2621	[  0]	TGETS	 24	23	45	; slot24 = uv17"unknown".y
		2622	[  0]	KSTR 	 25		26	; slot25 = "h"
		2623	[  0]	TGETV	 25	23	25	; slot25 = uv17"unknown"[slot25]
		2624	[  0]	MULVN	 25	25	6	; slot25 = slot25 * 0.5
		2625	[  0]	ADDVV	 24	24	25	; slot24 = uv17"unknown".y + slot25
		2626	[  0]	MULVN	 25	22	6	; slot25 = pairs * 0.5
		2627	[  0]	SUBVV	 24	24	25	; slot24 = slot24 - slot25
		2628	[  0]	ADDVV	 18	24	19	; slot18 = slot24 + slot19
		2629	[  0]	JMP  	 23		318	; 	goto 2948
		2630	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2631	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2632	[  0]	GGET 	 24		241	; slot24 = _env["STEP_WAVE_TYPES"]
		2633	[  0]	ISNEV	 23		24	; if uv3"unknown".step ~= STEP_WAVE_TYPES
		2634	[  0]	JMP  	 23		15	; 	goto 2650
		2635	[  0]	ISFC 	 23		1	; slot23 = slot1; if not slot1
		2636	[  0]	JMP  	 23		1	; 	goto 2638
		2637	[  0]	TGETS	 23	1	226	; slot23 = slot1.right
		2638	[  0]	ISF  	   		23	; if not <unknown table>.right
		2639	[  0]	JMP  	 24		308	; 	goto 2948
		2640	[  0]	TGETS	 24	23	48	; slot24 = <unknown table>.right.x
		2641	[  0]	TGETS	 25	23	43	; slot25 = <unknown table>.right.w
		2642	[  0]	MULVN	 25	25	6	; slot25 = <unknown table>.right.w * 0.5
		2643	[  0]	ADDVV	 24	24	25	; slot24 = <unknown table>.right.x + slot25
		2644	[  0]	MULVN	 25	21	6	; slot25 = uv22"unknown" * 0.5
		2645	[  0]	SUBVV	 17	24	25	; slot17 = slot24 - slot25
		2646	[  0]	TGETS	 24	23	45	; slot24 = <unknown table>.right.y
		2647	[  0]	ADDVN	 24	24	11	; slot24 = <unknown table>.right.y + 5
		2648	[  0]	ADDVV	 18	24	19	; slot18 = slot24 + slot19
		2649	[  0]	JMP  	 23		298	; 	goto 2948
		2650	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2651	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2652	[  0]	GGET 	 24		240	; slot24 = _env["STEP_TUTORIAL_COMPLETE"]
		2653	[  0]	ISNEV	 23		24	; if uv3"unknown".step ~= STEP_TUTORIAL_COMPLETE
		2654	[  0]	JMP  	 23		15	; 	goto 2670
		2655	[  0]	ISFC 	 23		1	; slot23 = slot1; if not slot1
		2656	[  0]	JMP  	 23		1	; 	goto 2658
		2657	[  0]	TGETS	 23	1	226	; slot23 = slot1.right
		2658	[  0]	ISF  	   		23	; if not <unknown table>.right
		2659	[  0]	JMP  	 24		288	; 	goto 2948
		2660	[  0]	TGETS	 24	23	48	; slot24 = <unknown table>.right.x
		2661	[  0]	TGETS	 25	23	43	; slot25 = <unknown table>.right.w
		2662	[  0]	MULVN	 25	25	6	; slot25 = <unknown table>.right.w * 0.5
		2663	[  0]	ADDVV	 24	24	25	; slot24 = <unknown table>.right.x + slot25
		2664	[  0]	MULVN	 25	21	6	; slot25 = uv22"unknown" * 0.5
		2665	[  0]	SUBVV	 17	24	25	; slot17 = slot24 - slot25
		2666	[  0]	TGETS	 24	23	45	; slot24 = <unknown table>.right.y
		2667	[  0]	ADDVN	 24	24	9	; slot24 = <unknown table>.right.y + 16
		2668	[  0]	ADDVV	 18	24	19	; slot18 = slot24 + slot19
		2669	[  0]	JMP  	 23		278	; 	goto 2948
		2670	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2671	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2672	[  0]	GGET 	 24		285	; slot24 = _env["STEP_ARCHER_WIN"]
		2673	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_ARCHER_WIN
		2674	[  0]	JMP  	 23		20	; 	goto 2695
		2675	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2676	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2677	[  0]	GGET 	 24		284	; slot24 = _env["STEP_WARRIOR_WIN"]
		2678	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_WARRIOR_WIN
		2679	[  0]	JMP  	 23		15	; 	goto 2695
		2680	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2681	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2682	[  0]	GGET 	 24		283	; slot24 = _env["STEP_UNIT_HOVER"]
		2683	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_UNIT_HOVER
		2684	[  0]	JMP  	 23		10	; 	goto 2695
		2685	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2686	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2687	[  0]	GGET 	 24		282	; slot24 = _env["STEP_POST_CORE_ARCHER_WIN"]
		2688	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_POST_CORE_ARCHER_WIN
		2689	[  0]	JMP  	 23		5	; 	goto 2695
		2690	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2691	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2692	[  0]	GGET 	 24		281	; slot24 = _env["STEP_PROMOTED_ARCHER"]
		2693	[  0]	ISNEV	 23		24	; if uv3"unknown".step ~= STEP_PROMOTED_ARCHER
		2694	[  0]	JMP  	 23		70	; 	goto 2765
		2695	[  0]	UGET 	 23		25	; slot23 = uv25"unknwon"
		2696	[  0]	MOV  	 25		0	; slot25 = slot0
		2697	[  0]	CALL 	 23	3	2	; slot23, slot24 = uv25"unknown"(STEP_PROMOTED_ARCHER)
		2698	[  0]	ISF  	   		24	; if not STEP_PROMOTED_ARCHER
		2699	[  0]	JMP  	 25		248	; 	goto 2948
		2700	[  0]	TGETS	 25	24	48	; slot25 = STEP_PROMOTED_ARCHER.x
		2701	[  0]	ISF  	   		25	; if not STEP_PROMOTED_ARCHER.x
		2702	[  0]	JMP  	 26		245	; 	goto 2948
		2703	[  0]	TGETS	 25	24	45	; slot25 = STEP_PROMOTED_ARCHER.y
		2704	[  0]	ISF  	   		25	; if not STEP_PROMOTED_ARCHER.y
		2705	[  0]	JMP  	 26		242	; 	goto 2948
		2706	[  0]	ISF  	   		0	; if not slot0
		2707	[  0]	JMP  	 25		8	; 	goto 2716
		2708	[  0]	TGETS	 25	0	236	; slot25 = slot0.tutorial
		2709	[  0]	ISF  	   		25	; if not <unknown table>.tutorial
		2710	[  0]	JMP  	 26		5	; 	goto 2716
		2711	[  0]	TGETS	 25	0	236	; slot25 = slot0.tutorial
		2712	[  0]	KSTR 	 26		40	; slot26 = "winTip"
		2713	[  0]	TGETV	 25	25	26	; slot25 = <unknown table>.tutorial[slot26]
		2714	[  0]	IST  	   		25	; if slot25
		2715	[  0]	JMP  	 26		1	; 	goto 2717
		2716	[  0]	TNEW 	 25		0	; slot25 = new table( array: 0, dict: 1)
		2717	[  0]	GGET 	 26		47	; slot26 = _env["tonumber"]
		2718	[  0]	ISFC 	 28		0	; slot28 = slot0; if not slot0
		2719	[  0]	JMP  	 28		8	; 	goto 2728
		2720	[  0]	KSTR 	 28		18	; slot28 = "battle"
		2721	[  0]	TGETV	 28	0	28	; slot28 = slot0[slot28]
		2722	[  0]	ISF  	   		28	; if not slot28
		2723	[  0]	JMP  	 29		4	; 	goto 2728
		2724	[  0]	KSTR 	 28		18	; slot28 = "battle"
		2725	[  0]	TGETV	 28	0	28	; slot28 = slot0[slot28]
		2726	[  0]	KSTR 	 29		17	; slot29 = "allySize32"
		2727	[  0]	TGETV	 28	28	29	; slot28 = slot28[slot29]
		2728	[  0]	CALL 	 26	2	2	; slot26 = tonumber(slot27)
		2729	[  0]	IST  	   		26	; if tonumber
		2730	[  0]	JMP  	 27		1	; 	goto 2732
		2731	[  0]	KSHORT	 26		64	; slot26 = 64
		2732	[  0]	GGET 	 27		47	; slot27 = _env["tonumber"]
		2733	[  0]	KSTR 	 29		16	; slot29 = "unitGap"
		2734	[  0]	TGETV	 29	25	29	; slot29 = slot25[slot29]
		2735	[  0]	CALL 	 27	2	2	; slot27 = tonumber(slot28)
		2736	[  0]	IST  	   		27	; if tonumber
		2737	[  0]	JMP  	 28		1	; 	goto 2739
		2738	[  0]	KSHORT	 27		8	; slot27 = 8
		2739	[  0]	TGETS	 28	24	48	; slot28 = STEP_PROMOTED_ARCHER.x
		2740	[  0]	MULVN	 29	21	6	; slot29 = uv22"unknown" * 0.5
		2741	[  0]	SUBVV	 28	28	29	; slot28 = STEP_PROMOTED_ARCHER.x - slot29
		2742	[  0]	GGET 	 29		47	; slot29 = _env["tonumber"]
		2743	[  0]	KSTR 	 31		15	; slot31 = "unitOffsetX"
		2744	[  0]	TGETV	 31	25	31	; slot31 = slot25[slot31]
		2745	[  0]	CALL 	 29	2	2	; slot29 = tonumber(slot30)
		2746	[  0]	IST  	   		29	; if tonumber
		2747	[  0]	JMP  	 30		1	; 	goto 2749
		2748	[  0]	KSHORT	 29		0	; slot29 = 0
		2749	[  0]	ADDVV	 17	28	29	; slot17 = slot28 + slot29
		2750	[  0]	TGETS	 28	24	45	; slot28 = STEP_PROMOTED_ARCHER.y
		2751	[  0]	MULVN	 29	26	6	; slot29 = slot26 * 0.5
		2752	[  0]	SUBVV	 28	28	29	; slot28 = STEP_PROMOTED_ARCHER.y - slot29
		2753	[  0]	SUBVV	 28	28	22	; slot28 = slot28 - pairs
		2754	[  0]	SUBVV	 28	28	27	; slot28 = slot28 - slot27
		2755	[  0]	GGET 	 29		47	; slot29 = _env["tonumber"]
		2756	[  0]	KSTR 	 31		14	; slot31 = "unitOffsetY"
		2757	[  0]	TGETV	 31	25	31	; slot31 = slot25[slot31]
		2758	[  0]	CALL 	 29	2	2	; slot29 = tonumber(slot30)
		2759	[  0]	IST  	   		29	; if tonumber
		2760	[  0]	JMP  	 30		1	; 	goto 2762
		2761	[  0]	KSHORT	 29		0	; slot29 = 0
		2762	[  0]	ADDVV	 28	28	29	; slot28 = slot28 + slot29
		2763	[  0]	ADDVV	 18	28	19	; slot18 = slot28 + slot19
		2764	[  0]	JMP  	 23		183	; 	goto 2948
		2765	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2766	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2767	[  0]	GGET 	 24		270	; slot24 = _env["STEP_POSITION"]
		2768	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_POSITION
		2769	[  0]	JMP  	 23		20	; 	goto 2790
		2770	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2771	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2772	[  0]	GGET 	 24		269	; slot24 = _env["STEP_ABSORB_DRAG"]
		2773	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_ABSORB_DRAG
		2774	[  0]	JMP  	 23		15	; 	goto 2790
		2775	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2776	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2777	[  0]	GGET 	 24		268	; slot24 = _env["STEP_FREE_ABSORB"]
		2778	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_FREE_ABSORB
		2779	[  0]	JMP  	 23		10	; 	goto 2790
		2780	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2781	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2782	[  0]	GGET 	 24		267	; slot24 = _env["STEP_IMPRINT_INSPECT"]
		2783	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_IMPRINT_INSPECT
		2784	[  0]	JMP  	 23		5	; 	goto 2790
		2785	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2786	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2787	[  0]	GGET 	 24		266	; slot24 = _env["STEP_FINAL_READY"]
		2788	[  0]	ISNEV	 23		24	; if uv3"unknown".step ~= STEP_FINAL_READY
		2789	[  0]	JMP  	 23		47	; 	goto 2837
		2790	[  0]	ISFC 	 23		1	; slot23 = slot1; if not slot1
		2791	[  0]	JMP  	 23		1	; 	goto 2793
		2792	[  0]	TGETS	 23	1	226	; slot23 = slot1.right
		2793	[  0]	ISF  	   		0	; if not slot0
		2794	[  0]	JMP  	 24		8	; 	goto 2803
		2795	[  0]	TGETS	 24	0	236	; slot24 = slot0.tutorial
		2796	[  0]	ISF  	   		24	; if not <unknown table>.tutorial
		2797	[  0]	JMP  	 25		5	; 	goto 2803
		2798	[  0]	TGETS	 24	0	236	; slot24 = slot0.tutorial
		2799	[  0]	KSTR 	 25		38	; slot25 = "positionTip"
		2800	[  0]	TGETV	 24	24	25	; slot24 = <unknown table>.tutorial[slot25]
		2801	[  0]	IST  	   		24	; if slot24
		2802	[  0]	JMP  	 25		1	; 	goto 2804
		2803	[  0]	TNEW 	 24		0	; slot24 = new table( array: 0, dict: 1)
		2804	[  0]	ISF  	   		23	; if not <unknown table>.right
		2805	[  0]	JMP  	 25		142	; 	goto 2948
		2806	[  0]	TGETS	 25	23	48	; slot25 = <unknown table>.right.x
		2807	[  0]	TGETS	 26	23	43	; slot26 = <unknown table>.right.w
		2808	[  0]	MULVN	 26	26	6	; slot26 = <unknown table>.right.w * 0.5
		2809	[  0]	ADDVV	 25	25	26	; slot25 = <unknown table>.right.x + slot26
		2810	[  0]	MULVN	 26	21	6	; slot26 = uv22"unknown" * 0.5
		2811	[  0]	SUBVV	 25	25	26	; slot25 = slot25 - slot26
		2812	[  0]	GGET 	 26		47	; slot26 = _env["tonumber"]
		2813	[  0]	TGETS	 28	24	46	; slot28 = slot24.offsetX
		2814	[  0]	CALL 	 26	2	2	; slot26 = tonumber(slot27)
		2815	[  0]	IST  	   		26	; if tonumber
		2816	[  0]	JMP  	 27		1	; 	goto 2818
		2817	[  0]	KSHORT	 26		0	; slot26 = 0
		2818	[  0]	ADDVV	 17	25	26	; slot17 = slot25 + slot26
		2819	[  0]	TGETS	 25	23	45	; slot25 = <unknown table>.right.y
		2820	[  0]	GGET 	 26		47	; slot26 = _env["tonumber"]
		2821	[  0]	KSTR 	 28		37	; slot28 = "topY"
		2822	[  0]	TGETV	 28	24	28	; slot28 = slot24[slot28]
		2823	[  0]	CALL 	 26	2	2	; slot26 = tonumber(slot27)
		2824	[  0]	IST  	   		26	; if tonumber
		2825	[  0]	JMP  	 27		1	; 	goto 2827
		2826	[  0]	KSHORT	 26		12	; slot26 = 12
		2827	[  0]	ADDVV	 25	25	26	; slot25 = <unknown table>.right.y + slot26
		2828	[  0]	GGET 	 26		47	; slot26 = _env["tonumber"]
		2829	[  0]	TGETS	 28	24	44	; slot28 = slot24.offsetY
		2830	[  0]	CALL 	 26	2	2	; slot26 = tonumber(slot27)
		2831	[  0]	IST  	   		26	; if tonumber
		2832	[  0]	JMP  	 27		1	; 	goto 2834
		2833	[  0]	KSHORT	 26		0	; slot26 = 0
		2834	[  0]	ADDVV	 25	25	26	; slot25 = slot25 + slot26
		2835	[  0]	ADDVV	 18	25	19	; slot18 = slot25 + slot19
		2836	[  0]	JMP  	 23		111	; 	goto 2948
		2837	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2838	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2839	[  0]	GGET 	 24		264	; slot24 = _env["STEP_NUDGE_ACTION"]
		2840	[  0]	ISNEV	 23		24	; if uv3"unknown".step ~= STEP_NUDGE_ACTION
		2841	[  0]	JMP  	 23		24	; 	goto 2866
		2842	[  0]	ISFC 	 23		1	; slot23 = slot1; if not slot1
		2843	[  0]	JMP  	 23		7	; 	goto 2851
		2844	[  0]	KSTR 	 23		36	; slot23 = "nudgeBtns"
		2845	[  0]	TGETV	 23	1	23	; slot23 = slot1[slot23]
		2846	[  0]	ISF  	   		23	; if not slot23
		2847	[  0]	JMP  	 24		3	; 	goto 2851
		2848	[  0]	KSTR 	 23		36	; slot23 = "nudgeBtns"
		2849	[  0]	TGETV	 23	1	23	; slot23 = slot1[slot23]
		2850	[  0]	TGETB	 23	23	2	; slot23 = slot23[2]
		2851	[  0]	ISF  	   		23	; if not slot23
		2852	[  0]	JMP  	 24		95	; 	goto 2948
		2853	[  0]	TGETS	 24	23	48	; slot24 = slot23.x
		2854	[  0]	TGETS	 25	23	43	; slot25 = slot23.w
		2855	[  0]	ADDVV	 24	24	25	; slot24 = <unknown table>.x + <unknown table>.w
		2856	[  0]	ADDVN	 17	24	7	; slot17 = slot24 + 8
		2857	[  0]	TGETS	 24	23	45	; slot24 = slot23.y
		2858	[  0]	KSTR 	 25		26	; slot25 = "h"
		2859	[  0]	TGETV	 25	23	25	; slot25 = slot23[slot25]
		2860	[  0]	MULVN	 25	25	6	; slot25 = slot25 * 0.5
		2861	[  0]	ADDVV	 24	24	25	; slot24 = <unknown table>.y + slot25
		2862	[  0]	MULVN	 25	22	6	; slot25 = pairs * 0.5
		2863	[  0]	SUBVV	 24	24	25	; slot24 = slot24 - slot25
		2864	[  0]	ADDVV	 18	24	19	; slot18 = slot24 + slot19
		2865	[  0]	JMP  	 23		82	; 	goto 2948
		2866	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2867	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2868	[  0]	GGET 	 24		262	; slot24 = _env["STEP_ABSORB_BUTTON"]
		2869	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_ABSORB_BUTTON
		2870	[  0]	JMP  	 23		5	; 	goto 2876
		2871	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2872	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2873	[  0]	GGET 	 24		261	; slot24 = _env["STEP_FREE_ABSORB_BUTTON"]
		2874	[  0]	ISNEV	 23		24	; if uv3"unknown".step ~= STEP_FREE_ABSORB_BUTTON
		2875	[  0]	JMP  	 23		19	; 	goto 2895
		2876	[  0]	ISFC 	 23		0	; slot23 = slot0; if not slot0
		2877	[  0]	JMP  	 23		2	; 	goto 2880
		2878	[  0]	KSTR 	 23		35	; slot23 = "_tutorialFiremanRect"
		2879	[  0]	TGETV	 23	0	23	; slot23 = slot0[slot23]
		2880	[  0]	ISF  	   		23	; if not slot23
		2881	[  0]	JMP  	 24		66	; 	goto 2948
		2882	[  0]	TGETS	 24	23	48	; slot24 = slot23.x
		2883	[  0]	TGETS	 25	23	43	; slot25 = slot23.w
		2884	[  0]	ADDVV	 24	24	25	; slot24 = <unknown table>.x + <unknown table>.w
		2885	[  0]	ADDVN	 17	24	7	; slot17 = slot24 + 8
		2886	[  0]	TGETS	 24	23	45	; slot24 = slot23.y
		2887	[  0]	KSTR 	 25		26	; slot25 = "h"
		2888	[  0]	TGETV	 25	23	25	; slot25 = slot23[slot25]
		2889	[  0]	MULVN	 25	25	6	; slot25 = slot25 * 0.5
		2890	[  0]	ADDVV	 24	24	25	; slot24 = <unknown table>.y + slot25
		2891	[  0]	MULVN	 25	22	6	; slot25 = pairs * 0.5
		2892	[  0]	SUBVV	 24	24	25	; slot24 = slot24 - slot25
		2893	[  0]	ADDVV	 18	24	19	; slot18 = slot24 + slot19
		2894	[  0]	JMP  	 23		53	; 	goto 2948
		2895	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2896	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2897	[  0]	GGET 	 24		272	; slot24 = _env["STEP_BATTLE_READY"]
		2898	[  0]	ISNEV	 23		24	; if uv3"unknown".step ~= STEP_BATTLE_READY
		2899	[  0]	JMP  	 23		48	; 	goto 2948
		2900	[  0]	UGET 	 23		21	; slot23 = uv21"unknwon"
		2901	[  0]	MOV  	 25		0	; slot25 = slot0
		2902	[  0]	MOV  	 26		1	; slot26 = slot1
		2903	[  0]	CALL 	 23	2	3	; slot23 = uv21"unknown"(STEP_BATTLE_READY, slot25)
		2904	[  0]	ISF  	   		0	; if not slot0
		2905	[  0]	JMP  	 24		8	; 	goto 2914
		2906	[  0]	TGETS	 24	0	236	; slot24 = slot0.tutorial
		2907	[  0]	ISF  	   		24	; if not <unknown table>.tutorial
		2908	[  0]	JMP  	 25		5	; 	goto 2914
		2909	[  0]	TGETS	 24	0	236	; slot24 = slot0.tutorial
		2910	[  0]	KSTR 	 25		34	; slot25 = "readyTip"
		2911	[  0]	TGETV	 24	24	25	; slot24 = <unknown table>.tutorial[slot25]
		2912	[  0]	IST  	   		24	; if slot24
		2913	[  0]	JMP  	 25		1	; 	goto 2915
		2914	[  0]	TNEW 	 24		0	; slot24 = new table( array: 0, dict: 1)
		2915	[  0]	ISF  	   		23	; if not uv21"unknown"
		2916	[  0]	JMP  	 25		31	; 	goto 2948
		2917	[  0]	TGETS	 25	23	48	; slot25 = uv21"unknown".x
		2918	[  0]	TGETS	 26	23	43	; slot26 = uv21"unknown".w
		2919	[  0]	MULVN	 26	26	6	; slot26 = uv21"unknown".w * 0.5
		2920	[  0]	ADDVV	 25	25	26	; slot25 = uv21"unknown".x + slot26
		2921	[  0]	MULVN	 26	21	6	; slot26 = uv22"unknown" * 0.5
		2922	[  0]	SUBVV	 25	25	26	; slot25 = slot25 - slot26
		2923	[  0]	GGET 	 26		47	; slot26 = _env["tonumber"]
		2924	[  0]	TGETS	 28	24	46	; slot28 = slot24.offsetX
		2925	[  0]	CALL 	 26	2	2	; slot26 = tonumber(slot27)
		2926	[  0]	IST  	   		26	; if tonumber
		2927	[  0]	JMP  	 27		1	; 	goto 2929
		2928	[  0]	KSHORT	 26		0	; slot26 = 0
		2929	[  0]	ADDVV	 17	25	26	; slot17 = slot25 + slot26
		2930	[  0]	TGETS	 25	23	45	; slot25 = uv21"unknown".y
		2931	[  0]	SUBVV	 25	25	22	; slot25 = uv21"unknown".y - pairs
		2932	[  0]	GGET 	 26		47	; slot26 = _env["tonumber"]
		2933	[  0]	KSTR 	 28		33	; slot28 = "gapY"
		2934	[  0]	TGETV	 28	24	28	; slot28 = slot24[slot28]
		2935	[  0]	CALL 	 26	2	2	; slot26 = tonumber(slot27)
		2936	[  0]	IST  	   		26	; if tonumber
		2937	[  0]	JMP  	 27		1	; 	goto 2939
		2938	[  0]	KSHORT	 26		8	; slot26 = 8
		2939	[  0]	SUBVV	 25	25	26	; slot25 = slot25 - slot26
		2940	[  0]	GGET 	 26		47	; slot26 = _env["tonumber"]
		2941	[  0]	TGETS	 28	24	44	; slot28 = slot24.offsetY
		2942	[  0]	CALL 	 26	2	2	; slot26 = tonumber(slot27)
		2943	[  0]	IST  	   		26	; if tonumber
		2944	[  0]	JMP  	 27		1	; 	goto 2946
		2945	[  0]	KSHORT	 26		0	; slot26 = 0
		2946	[  0]	ADDVV	 25	25	26	; slot25 = slot25 + slot26
		2947	[  0]	ADDVV	 18	25	19	; slot18 = slot25 + slot19
		2948	[  0]	ADDVV	 23	17	21	; slot23 = slot17 + uv22"unknown"
		2949	[  0]	SUBVN	 24	3	7	; slot24 = slot3 - 8
		2950	[  0]	ISGE 	 24		23	; if slot24 >= slot23
		2951	[  0]	JMP  	 23		2	; 	goto 2954
		2952	[  0]	SUBVV	 23	3	21	; slot23 = slot3 - uv22"unknown"
		2953	[  0]	SUBVN	 17	23	7	; slot17 = slot23 - 8
		2954	[  0]	KSHORT	 23		8	; slot23 = 8
		2955	[  0]	ISGE 	 17		23	; if slot17 >= slot23
		2956	[  0]	JMP  	 23		1	; 	goto 2958
		2957	[  0]	KSHORT	 17		8	; slot17 = 8
		2958	[  0]	ADDVV	 23	18	22	; slot23 = slot18 + pairs
		2959	[  0]	SUBVN	 24	4	7	; slot24 = slot4 - 8
		2960	[  0]	ISGE 	 24		23	; if slot24 >= slot23
		2961	[  0]	JMP  	 23		2	; 	goto 2964
		2962	[  0]	SUBVV	 23	4	22	; slot23 = slot4 - pairs
		2963	[  0]	SUBVN	 18	23	7	; slot18 = slot23 - 8
		2964	[  0]	KSHORT	 23		8	; slot23 = 8
		2965	[  0]	ISGE 	 18		23	; if slot18 >= slot23
		2966	[  0]	JMP  	 23		1	; 	goto 2968
		2967	[  0]	KSHORT	 18		8	; slot18 = 8
		2968	[  0]	UGET 	 23		26	; slot23 = uv26"unknwon"
		2969	[  0]	MOV  	 25		0	; slot25 = slot0
		2970	[  0]	MOV  	 26		2	; slot26 = love.graphics.getFont
		2971	[  0]	MOV  	 27		11	; slot27 = slot11
		2972	[  0]	MOV  	 28		17	; slot28 = slot17
		2973	[  0]	MOV  	 29		18	; slot29 = slot18
		2974	[  0]	MOV  	 30		20	; slot30 = slot20
		2975	[  0]	MOV  	 31		6	; slot31 = uv2"unknown"
		2976	[  0]	CALL 	 23	1	8	;  = uv26"unknown"(slot24, slot25, love.graphics.getFont, slot27, slot28, slot29, slot30)
		2977	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2978	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2979	[  0]	GGET 	 24		285	; slot24 = _env["STEP_ARCHER_WIN"]
		2980	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_ARCHER_WIN
		2981	[  0]	JMP  	 23		70	; 	goto 3052
		2982	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2983	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2984	[  0]	GGET 	 24		284	; slot24 = _env["STEP_WARRIOR_WIN"]
		2985	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_WARRIOR_WIN
		2986	[  0]	JMP  	 23		65	; 	goto 3052
		2987	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2988	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2989	[  0]	GGET 	 24		185	; slot24 = _env["STEP_WAVE_REWARD"]
		2990	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_WAVE_REWARD
		2991	[  0]	JMP  	 23		60	; 	goto 3052
		2992	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2993	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2994	[  0]	GGET 	 24		165	; slot24 = _env["STEP_NUDGE_MISS"]
		2995	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_NUDGE_MISS
		2996	[  0]	JMP  	 23		55	; 	goto 3052
		2997	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		2998	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		2999	[  0]	GGET 	 24		161	; slot24 = _env["STEP_NUDGE_WIN"]
		3000	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_NUDGE_WIN
		3001	[  0]	JMP  	 23		50	; 	goto 3052
		3002	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		3003	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		3004	[  0]	GGET 	 24		259	; slot24 = _env["STEP_CORE_COUNTER"]
		3005	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_CORE_COUNTER
		3006	[  0]	JMP  	 23		45	; 	goto 3052
		3007	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		3008	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		3009	[  0]	GGET 	 24		282	; slot24 = _env["STEP_POST_CORE_ARCHER_WIN"]
		3010	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_POST_CORE_ARCHER_WIN
		3011	[  0]	JMP  	 23		40	; 	goto 3052
		3012	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		3013	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		3014	[  0]	GGET 	 24		112	; slot24 = _env["STEP_SLOT_BROKEN"]
		3015	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_SLOT_BROKEN
		3016	[  0]	JMP  	 23		35	; 	goto 3052
		3017	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		3018	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		3019	[  0]	GGET 	 24		253	; slot24 = _env["STEP_MAX_UNIT_NOTICE"]
		3020	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_MAX_UNIT_NOTICE
		3021	[  0]	JMP  	 23		30	; 	goto 3052
		3022	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		3023	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		3024	[  0]	GGET 	 24		256	; slot24 = _env["STEP_CLASS_PROMOTION"]
		3025	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_CLASS_PROMOTION
		3026	[  0]	JMP  	 23		25	; 	goto 3052
		3027	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		3028	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		3029	[  0]	GGET 	 24		281	; slot24 = _env["STEP_PROMOTED_ARCHER"]
		3030	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_PROMOTED_ARCHER
		3031	[  0]	JMP  	 23		20	; 	goto 3052
		3032	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		3033	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		3034	[  0]	GGET 	 24		249	; slot24 = _env["STEP_SHOP_CURRENCY"]
		3035	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_SHOP_CURRENCY
		3036	[  0]	JMP  	 23		15	; 	goto 3052
		3037	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		3038	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		3039	[  0]	GGET 	 24		245	; slot24 = _env["STEP_SHOP_ITEM_BOUGHT"]
		3040	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_SHOP_ITEM_BOUGHT
		3041	[  0]	JMP  	 23		10	; 	goto 3052
		3042	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		3043	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		3044	[  0]	GGET 	 24		241	; slot24 = _env["STEP_WAVE_TYPES"]
		3045	[  0]	ISEQV	 23		24	; if uv3"unknown".step == STEP_WAVE_TYPES
		3046	[  0]	JMP  	 23		5	; 	goto 3052
		3047	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		3048	[  0]	TGETS	 23	23	286	; slot23 = uv3"unknown".step
		3049	[  0]	GGET 	 24		240	; slot24 = _env["STEP_TUTORIAL_COMPLETE"]
		3050	[  0]	ISNEV	 23		24	; if uv3"unknown".step ~= STEP_TUTORIAL_COMPLETE
		3051	[  0]	JMP  	 23		326	; 	goto 3378
		3052	[  0]	UGET 	 23		3	; slot23 = uv3"unknwon"
		3053	[  0]	TGETS	 23	23	224	; slot23 = uv3"unknown".stepElapsed
		3054	[  0]	IST  	   		23	; if uv3"unknown".stepElapsed
		3055	[  0]	JMP  	 24		1	; 	goto 3057
		3056	[  0]	KSHORT	 23		0	; slot23 = 0
		3057	[  0]	GGET 	 24		32	; slot24 = _env["math"]
		3058	[  0]	KSTR 	 25		13	; slot25 = "max"
		3059	[  0]	TGETV	 24	24	25	; slot24 = math[slot25]
		3060	[  0]	KSHORT	 26		0	; slot26 = 0
		3061	[  0]	GGET 	 27		32	; slot27 = _env["math"]
		3062	[  0]	KSTR 	 28		12	; slot28 = "min"
		3063	[  0]	TGETV	 27	27	28	; slot27 = math[slot28]
		3064	[  0]	KSHORT	 29		1	; slot29 = 1
		3065	[  0]	UGET 	 30		27	; slot30 = uv27"unknwon"
		3066	[  0]	SUBVV	 30	23	30	; slot30 = slot23 - uv27"unknown"
		3067	[  0]	DIVVN	 30	30	12	; slot30 = slot30 / 0.35
		3068	[  0]	CALL 	 27	0	3	; MULTRES = slot27(slot28, slot29)
		3069	[  0]	CALLM	 24	2	1	; slot24 = slot24(slot25, ...MULTRES)
		3070	[  0]	KSHORT	 25		0	; slot25 = 0
		3071	[  0]	ISGE 	 25		24	; if slot25 >= slot24
		3072	[  0]	JMP  	 25		305	; 	goto 3378
		3073	[  0]	ISF  	   		0	; if not slot0
		3074	[  0]	JMP  	 25		8	; 	goto 3083
		3075	[  0]	TGETS	 25	0	236	; slot25 = slot0.tutorial
		3076	[  0]	ISF  	   		25	; if not <unknown table>.tutorial
		3077	[  0]	JMP  	 26		5	; 	goto 3083
		3078	[  0]	TGETS	 25	0	236	; slot25 = slot0.tutorial
		3079	[  0]	KSTR 	 26		11	; slot26 = "continuePrompt"
		3080	[  0]	TGETV	 25	25	26	; slot25 = <unknown table>.tutorial[slot26]
		3081	[  0]	IST  	   		25	; if slot25
		3082	[  0]	JMP  	 26		1	; 	goto 3084
		3083	[  0]	TNEW 	 25		0	; slot25 = new table( array: 0, dict: 1)
		3084	[  0]	UGET 	 26		3	; slot26 = uv3"unknwon"
		3085	[  0]	TGETS	 26	26	286	; slot26 = uv3"unknown".step
		3086	[  0]	GGET 	 27		240	; slot27 = _env["STEP_TUTORIAL_COMPLETE"]
		3087	[  0]	ISNEV	 26		27	; if uv3"unknown".step ~= STEP_TUTORIAL_COMPLETE
		3088	[  0]	JMP  	 26		5	; 	goto 3094
		3089	[  0]	UGET 	 26		20	; slot26 = uv20"unknwon"
		3090	[  0]	KSTR 	 28		10	; slot28 = "finish_prompt"
		3091	[  0]	CALL 	 26	2	2	; slot26 = uv20"unknown"(STEP_TUTORIAL_COMPLETE)
		3092	[  0]	IST  	   		26	; if uv20"unknown"
		3093	[  0]	JMP  	 27		3	; 	goto 3097
		3094	[  0]	UGET 	 26		20	; slot26 = uv20"unknwon"
		3095	[  0]	KSTR 	 28		9	; slot28 = "continue_prompt"
		3096	[  0]	CALL 	 26	2	2	; slot26 = uv20"unknown"(STEP_TUTORIAL_COMPLETE)
		3097	[  0]	UGET 	 27		28	; slot27 = uv28"unknwon"
		3098	[  0]	CALL 	 27	2	1	; slot27 = uv28"unknown"()
		3099	[  0]	ISF  	   		27	; if not uv28"unknown"
		3100	[  0]	JMP  	 28		10	; 	goto 3111
		3101	[  0]	KSTR 	 28		8	; slot28 = "actionGlyphImage"
		3102	[  0]	TGETV	 28	27	28	; slot28 = uv28"unknown"[slot28]
		3103	[  0]	ISF  	   		28	; if not slot28
		3104	[  0]	JMP  	 29		6	; 	goto 3111
		3105	[  0]	KSTR 	 28		8	; slot28 = "actionGlyphImage"
		3106	[  0]	TGETV	 28	27	28	; slot28 = uv28"unknown"[slot28]
		3107	[  0]	KSTR 	 30		7	; slot30 = "confirm"
		3108	[  0]	CALL 	 28	2	2	; slot28 = slot28(slot29)
		3109	[  0]	IST  	   		28	; if slot28
		3110	[  0]	JMP  	 29		1	; 	goto 3112
		3111	[  0]	KPRI 	 28		0	; slot28 = nil
		3112	[  0]	ISF  	   		28	; if not slot28
		3113	[  0]	JMP  	 29		7	; 	goto 3121
		3114	[  0]	MOV  	 31		28	; slot31 = slot28
		3115	[  0]	KSTR 	 32		6	; slot32 = "getWidth"
		3116	[  0]	TGETV	 29	28	32	; slot29 = slot28[slot32]
		3117	[  0]	CALL 	 29	2	2	; slot29 = slot29(slot30)
		3118	[  0]	ADDVN	 29	29	13	; slot29 = slot29 + 3
		3119	[  0]	IST  	   		29	; if slot29
		3120	[  0]	JMP  	 30		1	; 	goto 3122
		3121	[  0]	KSHORT	 29		0	; slot29 = 0
		3122	[  0]	GGET 	 30		295	; slot30 = _env["love"]
		3123	[  0]	TGETS	 30	30	294	; slot30 = love.graphics
		3124	[  0]	KSTR 	 31		5	; slot31 = "setFont"
		3125	[  0]	TGETV	 30	30	31	; slot30 = love.graphics[slot31]
		3126	[  0]	MOV  	 32		2	; slot32 = love.graphics.getFont
		3127	[  0]	CALL 	 30	1	2	;  = slot30(slot31)
		3128	[  0]	GGET 	 30		295	; slot30 = _env["love"]
		3129	[  0]	TGETS	 30	30	294	; slot30 = love.graphics
		3130	[  0]	TGETS	 30	30	275	; slot30 = love.graphics.setColor
		3131	[  0]	KNUM 	 32		14	; slot32 = 0.8627450980392157
		3132	[  0]	KNUM 	 33		15	; slot33 = 0.8274509803921568
		3133	[  0]	KNUM 	 34		16	; slot34 = 0.7607843137254902
		3134	[  0]	MULVV	 35	24	6	; slot35 = slot24 * uv2"unknown"
		3135	[  0]	CALL 	 30	1	5	;  = love.graphics.setColor(slot31, slot32, slot33, slot34)
		3136	[  0]	MULVN	 30	21	6	; slot30 = uv22"unknown" * 0.5
		3137	[  0]	ADDVV	 30	17	30	; slot30 = slot17 + slot30
		3138	[  0]	MOV  	 33		2	; slot33 = love.graphics.getFont
		3139	[  0]	KSTR 	 34		6	; slot34 = "getWidth"
		3140	[  0]	TGETV	 31	2	34	; slot31 = love.graphics.getFont[slot34]
		3141	[  0]	MOV  	 34		26	; slot34 = uv20"unknown"
		3142	[  0]	CALL 	 31	2	3	; slot31 = slot31(slot32, love.graphics.getFont)
		3143	[  0]	ADDVV	 31	31	29	; slot31 = slot31 + slot29
		3144	[  0]	MULVN	 31	31	6	; slot31 = slot31 * 0.5
		3145	[  0]	SUBVV	 30	30	31	; slot30 = slot30 - slot31
		3146	[  0]	GGET 	 31		47	; slot31 = _env["tonumber"]
		3147	[  0]	TGETS	 33	25	46	; slot33 = slot25.offsetX
		3148	[  0]	CALL 	 31	2	2	; slot31 = tonumber(slot32)
		3149	[  0]	IST  	   		31	; if tonumber
		3150	[  0]	JMP  	 32		1	; 	goto 3152
		3151	[  0]	KSHORT	 31		0	; slot31 = 0
		3152	[  0]	ADDVV	 30	30	31	; slot30 = slot30 + slot31
		3153	[  0]	KPRI 	 31		0	; slot31 = nil
		3154	[  0]	UGET 	 32		3	; slot32 = uv3"unknwon"
		3155	[  0]	TGETS	 32	32	286	; slot32 = uv3"unknown".step
		3156	[  0]	GGET 	 33		185	; slot33 = _env["STEP_WAVE_REWARD"]
		3157	[  0]	ISEQV	 32		33	; if uv3"unknown".step == STEP_WAVE_REWARD
		3158	[  0]	JMP  	 32		35	; 	goto 3194
		3159	[  0]	UGET 	 32		3	; slot32 = uv3"unknwon"
		3160	[  0]	TGETS	 32	32	286	; slot32 = uv3"unknown".step
		3161	[  0]	GGET 	 33		259	; slot33 = _env["STEP_CORE_COUNTER"]
		3162	[  0]	ISEQV	 32		33	; if uv3"unknown".step == STEP_CORE_COUNTER
		3163	[  0]	JMP  	 32		30	; 	goto 3194
		3164	[  0]	UGET 	 32		3	; slot32 = uv3"unknwon"
		3165	[  0]	TGETS	 32	32	286	; slot32 = uv3"unknown".step
		3166	[  0]	GGET 	 33		253	; slot33 = _env["STEP_MAX_UNIT_NOTICE"]
		3167	[  0]	ISEQV	 32		33	; if uv3"unknown".step == STEP_MAX_UNIT_NOTICE
		3168	[  0]	JMP  	 32		25	; 	goto 3194
		3169	[  0]	UGET 	 32		3	; slot32 = uv3"unknwon"
		3170	[  0]	TGETS	 32	32	286	; slot32 = uv3"unknown".step
		3171	[  0]	GGET 	 33		256	; slot33 = _env["STEP_CLASS_PROMOTION"]
		3172	[  0]	ISEQV	 32		33	; if uv3"unknown".step == STEP_CLASS_PROMOTION
		3173	[  0]	JMP  	 32		20	; 	goto 3194
		3174	[  0]	UGET 	 32		3	; slot32 = uv3"unknwon"
		3175	[  0]	TGETS	 32	32	286	; slot32 = uv3"unknown".step
		3176	[  0]	GGET 	 33		249	; slot33 = _env["STEP_SHOP_CURRENCY"]
		3177	[  0]	ISEQV	 32		33	; if uv3"unknown".step == STEP_SHOP_CURRENCY
		3178	[  0]	JMP  	 32		15	; 	goto 3194
		3179	[  0]	UGET 	 32		3	; slot32 = uv3"unknwon"
		3180	[  0]	TGETS	 32	32	286	; slot32 = uv3"unknown".step
		3181	[  0]	GGET 	 33		245	; slot33 = _env["STEP_SHOP_ITEM_BOUGHT"]
		3182	[  0]	ISEQV	 32		33	; if uv3"unknown".step == STEP_SHOP_ITEM_BOUGHT
		3183	[  0]	JMP  	 32		10	; 	goto 3194
		3184	[  0]	UGET 	 32		3	; slot32 = uv3"unknwon"
		3185	[  0]	TGETS	 32	32	286	; slot32 = uv3"unknown".step
		3186	[  0]	GGET 	 33		241	; slot33 = _env["STEP_WAVE_TYPES"]
		3187	[  0]	ISEQV	 32		33	; if uv3"unknown".step == STEP_WAVE_TYPES
		3188	[  0]	JMP  	 32		5	; 	goto 3194
		3189	[  0]	UGET 	 32		3	; slot32 = uv3"unknwon"
		3190	[  0]	TGETS	 32	32	286	; slot32 = uv3"unknown".step
		3191	[  0]	GGET 	 33		240	; slot33 = _env["STEP_TUTORIAL_COMPLETE"]
		3192	[  0]	ISNEV	 32		33	; if uv3"unknown".step ~= STEP_TUTORIAL_COMPLETE
		3193	[  0]	JMP  	 32		17	; 	goto 3211
		3194	[  0]	ADDVV	 32	18	22	; slot32 = slot18 + pairs
		3195	[  0]	GGET 	 33		47	; slot33 = _env["tonumber"]
		3196	[  0]	KSTR 	 35		33	; slot35 = "gapY"
		3197	[  0]	TGETV	 35	25	35	; slot35 = slot25[slot35]
		3198	[  0]	CALL 	 33	2	2	; slot33 = tonumber(uv20"unknown")
		3199	[  0]	IST  	   		33	; if tonumber
		3200	[  0]	JMP  	 34		1	; 	goto 3202
		3201	[  0]	KSHORT	 33		7	; slot33 = 7
		3202	[  0]	ADDVV	 32	32	33	; slot32 = slot32 + slot33
		3203	[  0]	GGET 	 33		47	; slot33 = _env["tonumber"]
		3204	[  0]	TGETS	 35	25	44	; slot35 = slot25.offsetY
		3205	[  0]	CALL 	 33	2	2	; slot33 = tonumber(uv20"unknown")
		3206	[  0]	IST  	   		33	; if tonumber
		3207	[  0]	JMP  	 34		1	; 	goto 3209
		3208	[  0]	KSHORT	 33		0	; slot33 = 0
		3209	[  0]	ADDVV	 31	32	33	; slot31 = slot32 + slot33
		3210	[  0]	JMP  	 32		20	; 	goto 3231
		3211	[  0]	MOV  	 34		2	; slot34 = love.graphics.getFont
		3212	[  0]	KSTR 	 35		4	; slot35 = "getHeight"
		3213	[  0]	TGETV	 32	2	35	; slot32 = love.graphics.getFont[slot35]
		3214	[  0]	CALL 	 32	2	2	; slot32 = slot32(slot33)
		3215	[  0]	SUBVV	 32	18	32	; slot32 = slot18 - slot32
		3216	[  0]	GGET 	 33		47	; slot33 = _env["tonumber"]
		3217	[  0]	KSTR 	 35		33	; slot35 = "gapY"
		3218	[  0]	TGETV	 35	25	35	; slot35 = slot25[slot35]
		3219	[  0]	CALL 	 33	2	2	; slot33 = tonumber(love.graphics.getFont)
		3220	[  0]	IST  	   		33	; if tonumber
		3221	[  0]	JMP  	 34		1	; 	goto 3223
		3222	[  0]	KSHORT	 33		7	; slot33 = 7
		3223	[  0]	SUBVV	 32	32	33	; slot32 = slot32 - slot33
		3224	[  0]	GGET 	 33		47	; slot33 = _env["tonumber"]
		3225	[  0]	TGETS	 35	25	44	; slot35 = slot25.offsetY
		3226	[  0]	CALL 	 33	2	2	; slot33 = tonumber(love.graphics.getFont)
		3227	[  0]	IST  	   		33	; if tonumber
		3228	[  0]	JMP  	 34		1	; 	goto 3230
		3229	[  0]	KSHORT	 33		0	; slot33 = 0
		3230	[  0]	ADDVV	 31	32	33	; slot31 = slot32 + slot33
		3231	[  0]	UGET 	 32		3	; slot32 = uv3"unknwon"
		3232	[  0]	TGETS	 32	32	286	; slot32 = uv3"unknown".step
		3233	[  0]	GGET 	 33		241	; slot33 = _env["STEP_WAVE_TYPES"]
		3234	[  0]	ISEQV	 32		33	; if uv3"unknown".step == STEP_WAVE_TYPES
		3235	[  0]	JMP  	 32		5	; 	goto 3241
		3236	[  0]	UGET 	 32		3	; slot32 = uv3"unknwon"
		3237	[  0]	TGETS	 32	32	286	; slot32 = uv3"unknown".step
		3238	[  0]	GGET 	 33		240	; slot33 = _env["STEP_TUTORIAL_COMPLETE"]
		3239	[  0]	ISNEV	 32		33	; if uv3"unknown".step ~= STEP_TUTORIAL_COMPLETE
		3240	[  0]	JMP  	 32		55	; 	goto 3296
		3241	[  0]	KSHORT	 32		7	; slot32 = 7
		3242	[  0]	KSHORT	 33		4	; slot33 = 4
		3243	[  0]	MOV  	 36		2	; slot36 = love.graphics.getFont
		3244	[  0]	KSTR 	 37		6	; slot37 = "getWidth"
		3245	[  0]	TGETV	 34	2	37	; slot34 = love.graphics.getFont[slot37]
		3246	[  0]	MOV  	 37		26	; slot37 = uv20"unknown"
		3247	[  0]	CALL 	 34	2	3	; slot34 = slot34(<unknown table>.offsetY, love.graphics.getFont)
		3248	[  0]	ADDVV	 34	34	29	; slot34 = slot34 + slot29
		3249	[  0]	MOV  	 37		2	; slot37 = love.graphics.getFont
		3250	[  0]	KSTR 	 38		4	; slot38 = "getHeight"
		3251	[  0]	TGETV	 35	2	38	; slot35 = love.graphics.getFont[slot38]
		3252	[  0]	CALL 	 35	2	2	; slot35 = slot35(love.graphics.getFont)
		3253	[  0]	GGET 	 36		32	; slot36 = _env["math"]
		3254	[  0]	KSTR 	 37		31	; slot37 = "floor"
		3255	[  0]	TGETV	 36	36	37	; slot36 = math[slot37]
		3256	[  0]	SUBVV	 38	30	32	; slot38 = slot30 - slot32
		3257	[  0]	ADDVN	 38	38	6	; slot38 = slot38 + 0.5
		3258	[  0]	CALL 	 36	2	2	; slot36 = slot36(slot37)
		3259	[  0]	GGET 	 37		32	; slot37 = _env["math"]
		3260	[  0]	KSTR 	 38		31	; slot38 = "floor"
		3261	[  0]	TGETV	 37	37	38	; slot37 = math[slot38]
		3262	[  0]	SUBVV	 39	31	33	; slot39 = slot31 - slot33
		3263	[  0]	ADDVN	 39	39	6	; slot39 = slot39 + 0.5
		3264	[  0]	CALL 	 37	2	2	; slot37 = slot37(slot38)
		3265	[  0]	GGET 	 38		32	; slot38 = _env["math"]
		3266	[  0]	KSTR 	 39		31	; slot39 = "floor"
		3267	[  0]	TGETV	 38	38	39	; slot38 = math[slot39]
		3268	[  0]	MULVN	 40	32	17	; slot40 = slot32 * 2
		3269	[  0]	ADDVV	 40	34	40	; slot40 = slot34 + slot40
		3270	[  0]	ADDVN	 40	40	6	; slot40 = slot40 + 0.5
		3271	[  0]	CALL 	 38	2	2	; slot38 = slot38(slot39)
		3272	[  0]	GGET 	 39		32	; slot39 = _env["math"]
		3273	[  0]	KSTR 	 40		31	; slot40 = "floor"
		3274	[  0]	TGETV	 39	39	40	; slot39 = math[slot40]
		3275	[  0]	MULVN	 41	33	17	; slot41 = slot33 * 2
		3276	[  0]	ADDVV	 41	35	41	; slot41 = slot35 + slot41
		3277	[  0]	ADDVN	 41	41	6	; slot41 = slot41 + 0.5
		3278	[  0]	CALL 	 39	2	2	; slot39 = slot39(slot40)
		3279	[  0]	UGET 	 40		29	; slot40 = uv29"unknwon"
		3280	[  0]	MOV  	 42		0	; slot42 = slot0
		3281	[  0]	MOV  	 43		36	; slot43 = slot36
		3282	[  0]	MOV  	 44		37	; slot44 = slot37
		3283	[  0]	MOV  	 45		38	; slot45 = slot38
		3284	[  0]	MOV  	 46		39	; slot46 = slot39
		3285	[  0]	MULVV	 47	24	6	; slot47 = slot24 * uv2"unknown"
		3286	[  0]	TDUP 	 48		3	; slot48 = copy table#k3
		3287	[  0]	CALL 	 40	1	8	;  = uv29"unknown"(slot41, slot42, slot43, slot44, slot45, slot46, slot47)
		3288	[  0]	GGET 	 40		295	; slot40 = _env["love"]
		3289	[  0]	TGETS	 40	40	294	; slot40 = love.graphics
		3290	[  0]	TGETS	 40	40	275	; slot40 = love.graphics.setColor
		3291	[  0]	KNUM 	 42		14	; slot42 = 0.8627450980392157
		3292	[  0]	KNUM 	 43		15	; slot43 = 0.8274509803921568
		3293	[  0]	KNUM 	 44		16	; slot44 = 0.7607843137254902
		3294	[  0]	MULVV	 45	24	6	; slot45 = slot24 * uv2"unknown"
		3295	[  0]	CALL 	 40	1	5	;  = love.graphics.setColor(slot41, slot42, slot43, slot44)
		3296	[  0]	UGET 	 32		3	; slot32 = uv3"unknwon"
		3297	[  0]	TGETS	 32	32	286	; slot32 = uv3"unknown".step
		3298	[  0]	GGET 	 33		241	; slot33 = _env["STEP_WAVE_TYPES"]
		3299	[  0]	ISEQV	 32		33	; if uv3"unknown".step == STEP_WAVE_TYPES
		3300	[  0]	JMP  	 32		5	; 	goto 3306
		3301	[  0]	UGET 	 32		3	; slot32 = uv3"unknwon"
		3302	[  0]	TGETS	 32	32	286	; slot32 = uv3"unknown".step
		3303	[  0]	GGET 	 33		240	; slot33 = _env["STEP_TUTORIAL_COMPLETE"]
		3304	[  0]	ISNEV	 32		33	; if uv3"unknown".step ~= STEP_TUTORIAL_COMPLETE
		3305	[  0]	JMP  	 32		2	; 	goto 3308
		3306	[  0]	KSHORT	 32		65535	; slot32 = 65535
		3307	[  0]	JMP  	 33		1	; 	goto 3309
		3308	[  0]	KSHORT	 32		0	; slot32 = 0
		3309	[  0]	ISF  	   		28	; if not slot28
		3310	[  0]	JMP  	 33		49	; 	goto 3360
		3311	[  0]	GGET 	 33		295	; slot33 = _env["love"]
		3312	[  0]	TGETS	 33	33	294	; slot33 = love.graphics
		3313	[  0]	KSTR 	 34		2	; slot34 = "getColor"
		3314	[  0]	TGETV	 33	33	34	; slot33 = love.graphics[slot34]
		3315	[  0]	CALL 	 33	5	1	; slot33, slot34, slot35, slot36 = slot33()
		3316	[  0]	GGET 	 37		295	; slot37 = _env["love"]
		3317	[  0]	TGETS	 37	37	294	; slot37 = love.graphics
		3318	[  0]	TGETS	 37	37	275	; slot37 = love.graphics.setColor
		3319	[  0]	KSHORT	 39		1	; slot39 = 1
		3320	[  0]	KSHORT	 40		1	; slot40 = 1
		3321	[  0]	KSHORT	 41		1	; slot41 = 1
		3322	[  0]	MULVV	 42	24	6	; slot42 = slot24 * uv2"unknown"
		3323	[  0]	CALL 	 37	1	5	;  = love.graphics.setColor(slot38, slot39, slot40, slot41)
		3324	[  0]	GGET 	 37		295	; slot37 = _env["love"]
		3325	[  0]	TGETS	 37	37	294	; slot37 = love.graphics
		3326	[  0]	KSTR 	 38		1	; slot38 = "draw"
		3327	[  0]	TGETV	 37	37	38	; slot37 = love.graphics[slot38]
		3328	[  0]	MOV  	 39		28	; slot39 = slot28
		3329	[  0]	GGET 	 40		32	; slot40 = _env["math"]
		3330	[  0]	KSTR 	 41		31	; slot41 = "floor"
		3331	[  0]	TGETV	 40	40	41	; slot40 = math[slot41]
		3332	[  0]	ADDVN	 42	30	6	; slot42 = slot30 + 0.5
		3333	[  0]	CALL 	 40	2	2	; slot40 = slot40(slot41)
		3334	[  0]	GGET 	 41		32	; slot41 = _env["math"]
		3335	[  0]	KSTR 	 42		31	; slot42 = "floor"
		3336	[  0]	TGETV	 41	41	42	; slot41 = math[slot42]
		3337	[  0]	ADDVV	 43	31	32	; slot43 = slot31 + slot32
		3338	[  0]	MOV  	 46		2	; slot46 = love.graphics.getFont
		3339	[  0]	KSTR 	 47		4	; slot47 = "getHeight"
		3340	[  0]	TGETV	 44	2	47	; slot44 = love.graphics.getFont[slot47]
		3341	[  0]	CALL 	 44	2	2	; slot44 = slot44(slot45)
		3342	[  0]	MOV  	 47		28	; slot47 = slot28
		3343	[  0]	KSTR 	 48		4	; slot48 = "getHeight"
		3344	[  0]	TGETV	 45	28	48	; slot45 = slot28[slot48]
		3345	[  0]	CALL 	 45	2	2	; slot45 = slot45(love.graphics.getFont)
		3346	[  0]	SUBVV	 44	44	45	; slot44 = slot44 - slot45
		3347	[  0]	MULVN	 44	44	6	; slot44 = slot44 * 0.5
		3348	[  0]	ADDVV	 43	43	44	; slot43 = slot43 + slot44
		3349	[  0]	ADDVN	 43	43	6	; slot43 = slot43 + 0.5
		3350	[  0]	CALL 	 41	0	2	; MULTRES = slot41(slot42)
		3351	[  0]	CALLM	 37	1	2	;  = slot37(slot38, slot39, ...MULTRES)
		3352	[  0]	GGET 	 37		295	; slot37 = _env["love"]
		3353	[  0]	TGETS	 37	37	294	; slot37 = love.graphics
		3354	[  0]	TGETS	 37	37	275	; slot37 = love.graphics.setColor
		3355	[  0]	MOV  	 39		33	; slot39 = slot33
		3356	[  0]	MOV  	 40		34	; slot40 = slot34
		3357	[  0]	MOV  	 41		35	; slot41 = slot35
		3358	[  0]	MOV  	 42		36	; slot42 = slot36
		3359	[  0]	CALL 	 37	1	5	;  = love.graphics.setColor(slot38, slot39, slot40, slot41)
		3360	[  0]	GGET 	 33		295	; slot33 = _env["love"]
		3361	[  0]	TGETS	 33	33	294	; slot33 = love.graphics
		3362	[  0]	KSTR 	 34		0	; slot34 = "print"
		3363	[  0]	TGETV	 33	33	34	; slot33 = love.graphics[slot34]
		3364	[  0]	MOV  	 35		26	; slot35 = uv20"unknown"
		3365	[  0]	GGET 	 36		32	; slot36 = _env["math"]
		3366	[  0]	KSTR 	 37		31	; slot37 = "floor"
		3367	[  0]	TGETV	 36	36	37	; slot36 = math[slot37]
		3368	[  0]	ADDVV	 38	30	29	; slot38 = slot30 + slot29
		3369	[  0]	ADDVN	 38	38	6	; slot38 = slot38 + 0.5
		3370	[  0]	CALL 	 36	2	2	; slot36 = slot36(slot37)
		3371	[  0]	GGET 	 37		32	; slot37 = _env["math"]
		3372	[  0]	KSTR 	 38		31	; slot38 = "floor"
		3373	[  0]	TGETV	 37	37	38	; slot37 = math[slot38]
		3374	[  0]	ADDVV	 39	31	32	; slot39 = slot31 + slot32
		3375	[  0]	ADDVN	 39	39	6	; slot39 = slot39 + 0.5
		3376	[  0]	CALL 	 37	0	2	; MULTRES = slot37(slot38)
		3377	[  0]	CALLM	 33	1	2	;  = slot33(slot34, uv20"unknown", ...MULTRES)
		3378	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 3379
		3379	[  0]	RET0 	  0		1	; return
	305	[  0]	FNEW 	 85		0	; N/A:0-0: 2 args, 21 upvalues, 59 slots
		
		;;;; constant tables ;;;;
		ktable#3 = [
			#1: 0.9254901960784314,
			#2: 0.8980392156862745,
			#3: 0.8549019607843137,
			#4: 1,
			]
		
		
		ktable#62 = [
			#1: 0.28627450980392155,
			#2: 0.49411764705882355,
			#3: 0.3058823529411765,
			]
		
		
		ktable#64 = [
			#1: 0.43529411764705883,
			#2: 0.26666666666666666,
			#3: 0.2980392156862745,
			]
		
		
		ktable#66 = [
			#1: 0.18823529411764706,
			#2: 0.1607843137254902,
			#3: 0.21176470588235294,
			]
		
		
		ktable#68 = [
			#1: 0.21568627450980393,
			#2: 0.4627450980392157,
			#3: 0.27450980392156865,
			]
		
		
		ktable#70 = [
			#1: 0.4,
			#2: 0.3254901960784314,
			#3: 0.5725490196078431,
			]
		
		
		ktable#72 = [
			#1: 0.4549019607843137,
			#2: 0.2627450980392157,
			#3: 0.4627450980392157,
			]
		
		
		ktable#74 = [
			]
		
		
		ktable#75 = [
			#1: 0.22745098039215686,
			#2: 0.19607843137254902,
			#3: 0.25098039215686274,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		30	; 	goto 33
		  3	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  4	[  0]	TGETS	  2	2	108	; slot2 = uv0"unknown".running
		  5	[  0]	ISNEP	  2		2	; if uv0"unknown".running ~= true
		  6	[  0]	JMP  	  2		5	; 	goto 12
		  7	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  8	[  0]	TGETS	  2	2	107	; slot2 = uv0"unknown".step
		  9	[  0]	GGET 	  3		106	; slot3 = _env["STEP_SHOP_INTRO"]
		 10	[  0]	ISEQV	  2		3	; if uv0"unknown".step == STEP_SHOP_INTRO
		 11	[  0]	JMP  	  2		4	; 	goto 16
		 12	[  0]	KPRI 	  2		0	; slot2 = nil
		 13	[  0]	JMP  	  3		3	; 	goto 17
		 14	[  0]	KPRI 	  2		1	; slot2 = false
		 15	[  0]	JMP  	  3		1	; 	goto 17
		 16	[  0]	KPRI 	  2		2	; slot2 = true
		 17	[  0]	TSETS	  2	0	109	; slot0._tutorialShopIntroFocus = slot2
		 18	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 19	[  0]	TGETS	  2	2	108	; slot2 = uv0"unknown".running
		 20	[  0]	ISNEP	  2		2	; if uv0"unknown".running ~= true
		 21	[  0]	JMP  	  2		5	; 	goto 27
		 22	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 23	[  0]	TGETS	  2	2	107	; slot2 = uv0"unknown".step
		 24	[  0]	GGET 	  3		104	; slot3 = _env["STEP_SHOP_RETURN"]
		 25	[  0]	ISEQV	  2		3	; if uv0"unknown".step == STEP_SHOP_RETURN
		 26	[  0]	JMP  	  2		4	; 	goto 31
		 27	[  0]	KPRI 	  2		0	; slot2 = nil
		 28	[  0]	JMP  	  3		3	; 	goto 32
		 29	[  0]	KPRI 	  2		1	; slot2 = false
		 30	[  0]	JMP  	  3		1	; 	goto 32
		 31	[  0]	KPRI 	  2		2	; slot2 = true
		 32	[  0]	TSETS	  2	0	105	; slot0._tutorialBattleReturnFocus = slot2
		 33	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 34	[  0]	TGETS	  2	2	108	; slot2 = uv0"unknown".running
		 35	[  0]	ISF  	   		2	; if not uv0"unknown".running
		 36	[  0]	JMP  	  3		20	; 	goto 57
		 37	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 38	[  0]	TGETS	  2	2	107	; slot2 = uv0"unknown".step
		 39	[  0]	GGET 	  3		103	; slot3 = _env["STEP_BATTLE_FREE"]
		 40	[  0]	ISEQV	  2		3	; if uv0"unknown".step == STEP_BATTLE_FREE
		 41	[  0]	JMP  	  2		15	; 	goto 57
		 42	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 43	[  0]	TGETS	  2	2	107	; slot2 = uv0"unknown".step
		 44	[  0]	GGET 	  3		102	; slot3 = _env["STEP_SLOT"]
		 45	[  0]	ISGT 	  3		2	; if STEP_SLOT > uv0"unknown".step
		 46	[  0]	JMP  	  2		10	; 	goto 57
		 47	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 48	[  0]	TGETS	  2	2	107	; slot2 = uv0"unknown".step
		 49	[  0]	GGET 	  3		101	; slot3 = _env["STEP_TUTORIAL_COMPLETE"]
		 50	[  0]	ISGT 	  2		3	; if uv0"unknown".step > STEP_TUTORIAL_COMPLETE
		 51	[  0]	JMP  	  2		5	; 	goto 57
		 52	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 53	[  0]	MOV  	  4		0	; slot4 = slot0
		 54	[  0]	MOV  	  5		1	; slot5 = slot1
		 55	[  0]	CALL 	  2	1	3	;  = uv1"unknown"(STEP_TUTORIAL_COMPLETE, slot4)
		 56	[  0]	UCLO 	  0		756	; nil uvs >= r0; goto 813
		 57	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 58	[  0]	TGETS	  2	2	100	; slot2 = uv0"unknown".active
		 59	[  0]	IST  	   		2	; if uv0"unknown".active
		 60	[  0]	JMP  	  2		1	; 	goto 62
		 61	[  0]	UCLO 	  0		752	; nil uvs >= r0; goto 814
		 62	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 63	[  0]	CALL 	  2	1	1	;  = uv2"unknown"()
		 64	[  0]	ISF  	   		0	; if not slot0
		 65	[  0]	JMP  	  2		7	; 	goto 73
		 66	[  0]	TGETS	  2	0	99	; slot2 = slot0.classCard
		 67	[  0]	ISF  	   		2	; if not <unknown table>.classCard
		 68	[  0]	JMP  	  3		4	; 	goto 73
		 69	[  0]	TGETS	  2	0	99	; slot2 = slot0.classCard
		 70	[  0]	TGETS	  2	2	98	; slot2 = <unknown table>.classCard.font
		 71	[  0]	IST  	   		2	; if <unknown table>.classCard.font
		 72	[  0]	JMP  	  3		12	; 	goto 85
		 73	[  0]	ISF  	   		0	; if not slot0
		 74	[  0]	JMP  	  2		3	; 	goto 78
		 75	[  0]	TGETS	  2	0	97	; slot2 = slot0.fontClassCard
		 76	[  0]	IST  	   		2	; if <unknown table>.fontClassCard
		 77	[  0]	JMP  	  3		7	; 	goto 85
		 78	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 79	[  0]	IST  	   		2	; if uv3"unknown"
		 80	[  0]	JMP  	  3		4	; 	goto 85
		 81	[  0]	GGET 	  2		96	; slot2 = _env["love"]
		 82	[  0]	TGETS	  2	2	95	; slot2 = love.graphics
		 83	[  0]	TGETS	  2	2	94	; slot2 = love.graphics.getFont
		 84	[  0]	CALL 	  2	2	1	; slot2 = love.graphics.getFont()
		 85	[  0]	ISF  	   		2	; if not love.graphics.getFont
		 86	[  0]	JMP  	  3		8	; 	goto 95
		 87	[  0]	TGETS	  3	2	93	; slot3 = love.graphics.getFont.setFilter
		 88	[  0]	ISF  	   		3	; if not love.graphics.getFont.setFilter
		 89	[  0]	JMP  	  4		5	; 	goto 95
		 90	[  0]	MOV  	  5		2	; slot5 = love.graphics.getFont
		 91	[  0]	TGETS	  3	2	93	; slot3 = love.graphics.getFont.setFilter
		 92	[  0]	KSTR 	  6		92	; slot6 = "nearest"
		 93	[  0]	KSTR 	  7		92	; slot7 = "nearest"
		 94	[  0]	CALL 	  3	1	4	;  = love.graphics.getFont.setFilter(slot4, love.graphics.getFont, slot6)
		 95	[  0]	UGET 	  3		4	; slot3 = uv4"unknwon"
		 96	[  0]	MOV  	  5		0	; slot5 = slot0
		 97	[  0]	CALL 	  3	2	2	; slot3 = uv4"unknown"(slot4)
		 98	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 99	[  0]	TSETS	  3	4	91	; uv0"unknown".buttons = uv4"unknown"
		100	[  0]	TGETS	  4	3	90	; slot4 = uv4"unknown".panel
		101	[  0]	UGET 	  5		5	; slot5 = uv5"unknwon"
		102	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		103	[  0]	TGETS	  7	7	89	; slot7 = uv0"unknown".t
		104	[  0]	IST  	   		7	; if uv0"unknown".t
		105	[  0]	JMP  	  8		1	; 	goto 107
		106	[  0]	KSHORT	  7		0	; slot7 = 0
		107	[  0]	CALL 	  5	2	2	; slot5 = uv5"unknown"(slot6)
		108	[  0]	UGET 	  6		6	; slot6 = uv6"unknwon"
		109	[  0]	MOV  	  8		5	; slot8 = uv5"unknown"
		110	[  0]	CALL 	  6	2	2	; slot6 = uv6"unknown"(slot7)
		111	[  0]	MOV  	  7		6	; slot7 = uv6"unknown"
		112	[  0]	UGET 	  8		7	; slot8 = uv7"unknwon"
		113	[  0]	SUBVN	 10	5	0	; slot10 = uv5"unknown" - 0.18
		114	[  0]	DIVVN	 10	10	1	; slot10 = slot10 / 0.82
		115	[  0]	CALL 	  8	2	2	; slot8 = uv7"unknown"(slot9)
		116	[  0]	GGET 	  9		88	; slot9 = _env["math"]
		117	[  0]	TGETS	  9	9	87	; slot9 = math.floor
		118	[  0]	SUBNV	 11	6	2	; slot11 = 1 - uv6"unknown"
		119	[  0]	MULVN	 11	11	3	; slot11 = slot11 * 10
		120	[  0]	ADDVN	 11	11	4	; slot11 = slot11 + 0.5
		121	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		122	[  0]	GGET 	 10		88	; slot10 = _env["math"]
		123	[  0]	TGETS	 10	10	86	; slot10 = math.sin
		124	[  0]	GGET 	 12		88	; slot12 = _env["math"]
		125	[  0]	TGETS	 12	12	85	; slot12 = math.min
		126	[  0]	KSHORT	 14		1	; slot14 = 1
		127	[  0]	MOV  	 15		5	; slot15 = uv5"unknown"
		128	[  0]	CALL 	 12	2	3	; slot12 = math.min(slot13, slot14)
		129	[  0]	GGET 	 13		88	; slot13 = _env["math"]
		130	[  0]	TGETS	 13	13	84	; slot13 = math.pi
		131	[  0]	MULVV	 12	12	13	; slot12 = math.min * math.pi
		132	[  0]	CALL 	 10	2	2	; slot10 = math.sin(slot11)
		133	[  0]	MULVN	 10	10	5	; slot10 = math.sin * 0.012
		134	[  0]	MULNV	 11	6	6	; slot11 = 0.04 * uv6"unknown"
		135	[  0]	ADDNV	 11	11	7	; slot11 = 0.96 + slot11
		136	[  0]	ADDVV	 11	11	10	; slot11 = slot11 + slot10
		137	[  0]	TGETS	 12	4	83	; slot12 = uv4"unknown".panel.x
		138	[  0]	TGETS	 13	4	82	; slot13 = uv4"unknown".panel.w
		139	[  0]	MULVN	 13	13	4	; slot13 = uv4"unknown".panel.w * 0.5
		140	[  0]	ADDVV	 12	12	13	; slot12 = uv4"unknown".panel.x + slot13
		141	[  0]	TGETS	 13	4	81	; slot13 = uv4"unknown".panel.y
		142	[  0]	TGETS	 14	4	80	; slot14 = uv4"unknown".panel.h
		143	[  0]	MULVN	 14	14	4	; slot14 = uv4"unknown".panel.h * 0.5
		144	[  0]	ADDVV	 13	13	14	; slot13 = uv4"unknown".panel.y + slot14
		145	[  0]	ISF  	   		0	; if not slot0
		146	[  0]	JMP  	 14		3	; 	goto 150
		147	[  0]	TGETS	 14	0	79	; slot14 = slot0.tutorial
		148	[  0]	IST  	   		14	; if <unknown table>.tutorial
		149	[  0]	JMP  	 15		1	; 	goto 151
		150	[  0]	TNEW 	 14		0	; slot14 = new table( array: 0, dict: 1)
		151	[  0]	GGET 	 15		78	; slot15 = _env["tonumber"]
		152	[  0]	TGETS	 17	14	77	; slot17 = slot14.contentOffsetX
		153	[  0]	CALL 	 15	2	2	; slot15 = tonumber(slot16)
		154	[  0]	IST  	   		15	; if tonumber
		155	[  0]	JMP  	 16		1	; 	goto 157
		156	[  0]	KSHORT	 15		0	; slot15 = 0
		157	[  0]	ADDVV	 15	12	15	; slot15 = slot12 + slot15
		158	[  0]	GGET 	 16		78	; slot16 = _env["tonumber"]
		159	[  0]	TGETS	 18	14	76	; slot18 = slot14.contentOffsetY
		160	[  0]	CALL 	 16	2	2	; slot16 = tonumber(<unknown table>.contentOffsetX)
		161	[  0]	IST  	   		16	; if tonumber
		162	[  0]	JMP  	 17		1	; 	goto 164
		163	[  0]	KSHORT	 16		25	; slot16 = 25
		164	[  0]	TDUP 	 17		74	; slot17 = copy table#k74
		165	[  0]	TDUP 	 18		75	; slot18 = copy table#k75
		166	[  0]	TSETB	  8	18	4	; slot18[4] = uv7"unknown"
		167	[  0]	TSETS	 18	17	73	; slot17.body = slot18
		168	[  0]	TDUP 	 18		72	; slot18 = copy table#k72
		169	[  0]	TSETB	  8	18	4	; slot18[4] = uv7"unknown"
		170	[  0]	TSETS	 18	17	71	; slot17.brand = slot18
		171	[  0]	TDUP 	 18		70	; slot18 = copy table#k70
		172	[  0]	TSETB	  8	18	4	; slot18[4] = uv7"unknown"
		173	[  0]	TSETS	 18	17	69	; slot17.keyword = slot18
		174	[  0]	TDUP 	 18		68	; slot18 = copy table#k68
		175	[  0]	TSETB	  8	18	4	; slot18[4] = uv7"unknown"
		176	[  0]	TSETS	 18	17	67	; slot17.prompt = slot18
		177	[  0]	TDUP 	 18		66	; slot18 = copy table#k66
		178	[  0]	TSETB	  8	18	4	; slot18[4] = uv7"unknown"
		179	[  0]	TSETS	 18	17	65	; slot17.buttonText = slot18
		180	[  0]	TDUP 	 18		64	; slot18 = copy table#k64
		181	[  0]	TSETB	  8	18	4	; slot18[4] = uv7"unknown"
		182	[  0]	TSETS	 18	17	63	; slot17.buttonOutline = slot18
		183	[  0]	TDUP 	 18		62	; slot18 = copy table#k62
		184	[  0]	TSETB	  8	18	4	; slot18[4] = uv7"unknown"
		185	[  0]	TSETS	 18	17	61	; slot17.startButtonOutline = slot18
		186	[  0]	GGET 	 18		96	; slot18 = _env["love"]
		187	[  0]	TGETS	 18	18	95	; slot18 = love.graphics
		188	[  0]	TGETS	 18	18	60	; slot18 = love.graphics.setColor
		189	[  0]	KSHORT	 20		0	; slot20 = 0
		190	[  0]	KSHORT	 21		0	; slot21 = 0
		191	[  0]	KSHORT	 22		0	; slot22 = 0
		192	[  0]	MULNV	 23	7	8	; slot23 = 0.65 * uv6"unknown"
		193	[  0]	CALL 	 18	1	5	;  = love.graphics.setColor(slot19, slot20, slot21, slot22)
		194	[  0]	GGET 	 18		96	; slot18 = _env["love"]
		195	[  0]	TGETS	 18	18	95	; slot18 = love.graphics
		196	[  0]	TGETS	 18	18	59	; slot18 = love.graphics.rectangle
		197	[  0]	KSTR 	 20		58	; slot20 = "fill"
		198	[  0]	KSHORT	 21		0	; slot21 = 0
		199	[  0]	KSHORT	 22		0	; slot22 = 0
		200	[  0]	TGETS	 23	3	57	; slot23 = uv4"unknown".W
		201	[  0]	TGETS	 24	3	56	; slot24 = uv4"unknown".H
		202	[  0]	CALL 	 18	1	6	;  = love.graphics.rectangle(slot19, slot20, slot21, slot22, uv4"unknown".W)
		203	[  0]	GGET 	 18		96	; slot18 = _env["love"]
		204	[  0]	TGETS	 18	18	95	; slot18 = love.graphics
		205	[  0]	TGETS	 18	18	55	; slot18 = love.graphics.push
		206	[  0]	CALL 	 18	1	1	;  = love.graphics.push()
		207	[  0]	GGET 	 18		96	; slot18 = _env["love"]
		208	[  0]	TGETS	 18	18	95	; slot18 = love.graphics
		209	[  0]	TGETS	 18	18	54	; slot18 = love.graphics.translate
		210	[  0]	MOV  	 20		12	; slot20 = slot12
		211	[  0]	ADDVV	 21	13	9	; slot21 = slot13 + math.floor
		212	[  0]	CALL 	 18	1	3	;  = love.graphics.translate(slot19, slot20)
		213	[  0]	GGET 	 18		96	; slot18 = _env["love"]
		214	[  0]	TGETS	 18	18	95	; slot18 = love.graphics
		215	[  0]	TGETS	 18	18	53	; slot18 = love.graphics.scale
		216	[  0]	MOV  	 20		11	; slot20 = slot11
		217	[  0]	MOV  	 21		11	; slot21 = slot11
		218	[  0]	CALL 	 18	1	3	;  = love.graphics.scale(slot19, slot20)
		219	[  0]	GGET 	 18		96	; slot18 = _env["love"]
		220	[  0]	TGETS	 18	18	95	; slot18 = love.graphics
		221	[  0]	TGETS	 18	18	54	; slot18 = love.graphics.translate
		222	[  0]	UNM  	 20		12	; slot20 = -slot12
		223	[  0]	UNM  	 21		13	; slot21 = -slot13
		224	[  0]	CALL 	 18	1	3	;  = love.graphics.translate(slot19, slot20)
		225	[  0]	UGET 	 18		8	; slot18 = uv8"unknwon"
		226	[  0]	CALL 	 18	2	1	; slot18 = uv8"unknown"()
		227	[  0]	ISF  	   		18	; if not uv8"unknown"
		228	[  0]	JMP  	 19		15	; 	goto 244
		229	[  0]	GGET 	 19		96	; slot19 = _env["love"]
		230	[  0]	TGETS	 19	19	95	; slot19 = love.graphics
		231	[  0]	TGETS	 19	19	60	; slot19 = love.graphics.setColor
		232	[  0]	KSHORT	 21		1	; slot21 = 1
		233	[  0]	KSHORT	 22		1	; slot22 = 1
		234	[  0]	KSHORT	 23		1	; slot23 = 1
		235	[  0]	MOV  	 24		7	; slot24 = uv6"unknown"
		236	[  0]	CALL 	 19	1	5	;  = love.graphics.setColor(slot20, slot21, slot22, slot23)
		237	[  0]	UGET 	 19		9	; slot19 = uv9"unknwon"
		238	[  0]	MOV  	 21		18	; slot21 = uv8"unknown"
		239	[  0]	TGETS	 22	4	83	; slot22 = uv4"unknown".panel.x
		240	[  0]	TGETS	 23	4	81	; slot23 = uv4"unknown".panel.y
		241	[  0]	TGETS	 24	4	53	; slot24 = uv4"unknown".panel.scale
		242	[  0]	TGETS	 25	3	52	; slot25 = uv4"unknown".windowExtraRows
		243	[  0]	CALL 	 19	1	6	;  = uv9"unknown"(slot20, uv8"unknown", uv4"unknown".panel.x, uv4"unknown".panel.y, uv4"unknown".panel.scale)
		244	[  0]	UGET 	 19		10	; slot19 = uv10"unknwon"
		245	[  0]	CALL 	 19	2	1	; slot19 = uv10"unknown"()
		246	[  0]	ISF  	   		19	; if not uv10"unknown"
		247	[  0]	JMP  	 20		57	; 	goto 305
		248	[  0]	TGETS	 20	14	51	; slot20 = slot14.titleImage
		249	[  0]	IST  	   		20	; if <unknown table>.titleImage
		250	[  0]	JMP  	 21		1	; 	goto 252
		251	[  0]	TNEW 	 20		0	; slot20 = new table( array: 0, dict: 1)
		252	[  0]	GGET 	 21		78	; slot21 = _env["tonumber"]
		253	[  0]	TGETS	 23	20	53	; slot23 = slot20.scale
		254	[  0]	CALL 	 21	2	2	; slot21 = tonumber(uv4"unknown".panel.x)
		255	[  0]	IST  	   		21	; if tonumber
		256	[  0]	JMP  	 22		1	; 	goto 258
		257	[  0]	KSHORT	 21		1	; slot21 = 1
		258	[  0]	GGET 	 22		88	; slot22 = _env["math"]
		259	[  0]	TGETS	 22	22	87	; slot22 = math.floor
		260	[  0]	GGET 	 24		78	; slot24 = _env["tonumber"]
		261	[  0]	TGETS	 26	20	50	; slot26 = slot20.offsetX
		262	[  0]	CALL 	 24	2	2	; slot24 = tonumber(uv4"unknown".windowExtraRows)
		263	[  0]	IST  	   		24	; if tonumber
		264	[  0]	JMP  	 25		1	; 	goto 266
		265	[  0]	KSHORT	 24		0	; slot24 = 0
		266	[  0]	ADDVV	 24	15	24	; slot24 = slot15 + slot24
		267	[  0]	MOV  	 27		19	; slot27 = uv10"unknown"
		268	[  0]	TGETS	 25	19	49	; slot25 = uv10"unknown".getWidth
		269	[  0]	CALL 	 25	2	2	; slot25 = uv10"unknown".getWidth(<unknown table>.offsetX)
		270	[  0]	MULVV	 25	25	21	; slot25 = uv10"unknown".getWidth * slot21
		271	[  0]	MULVN	 25	25	4	; slot25 = slot25 * 0.5
		272	[  0]	SUBVV	 24	24	25	; slot24 = slot24 - slot25
		273	[  0]	ADDVN	 24	24	4	; slot24 = slot24 + 0.5
		274	[  0]	CALL 	 22	2	2	; slot22 = math.floor(<unknown table>.scale)
		275	[  0]	GGET 	 23		88	; slot23 = _env["math"]
		276	[  0]	TGETS	 23	23	87	; slot23 = math.floor
		277	[  0]	TGETS	 25	4	81	; slot25 = uv4"unknown".panel.y
		278	[  0]	GGET 	 26		78	; slot26 = _env["tonumber"]
		279	[  0]	TGETS	 28	20	48	; slot28 = slot20.offsetY
		280	[  0]	CALL 	 26	2	2	; slot26 = tonumber(uv10"unknown")
		281	[  0]	IST  	   		26	; if tonumber
		282	[  0]	JMP  	 27		1	; 	goto 284
		283	[  0]	KSHORT	 26		10	; slot26 = 10
		284	[  0]	ADDVV	 25	25	26	; slot25 = uv4"unknown".panel.y + slot26
		285	[  0]	ADDVN	 25	25	4	; slot25 = slot25 + 0.5
		286	[  0]	CALL 	 23	2	2	; slot23 = math.floor(slot24)
		287	[  0]	GGET 	 24		96	; slot24 = _env["love"]
		288	[  0]	TGETS	 24	24	95	; slot24 = love.graphics
		289	[  0]	TGETS	 24	24	60	; slot24 = love.graphics.setColor
		290	[  0]	KSHORT	 26		1	; slot26 = 1
		291	[  0]	KSHORT	 27		1	; slot27 = 1
		292	[  0]	KSHORT	 28		1	; slot28 = 1
		293	[  0]	MOV  	 29		8	; slot29 = uv7"unknown"
		294	[  0]	CALL 	 24	1	5	;  = love.graphics.setColor(slot25, slot26, slot27, slot28)
		295	[  0]	GGET 	 24		96	; slot24 = _env["love"]
		296	[  0]	TGETS	 24	24	95	; slot24 = love.graphics
		297	[  0]	TGETS	 24	24	47	; slot24 = love.graphics.draw
		298	[  0]	MOV  	 26		19	; slot26 = uv10"unknown"
		299	[  0]	MOV  	 27		22	; slot27 = math.floor
		300	[  0]	MOV  	 28		23	; slot28 = math.floor
		301	[  0]	KSHORT	 29		0	; slot29 = 0
		302	[  0]	MOV  	 30		21	; slot30 = slot21
		303	[  0]	MOV  	 31		21	; slot31 = slot21
		304	[  0]	CALL 	 24	1	7	;  = love.graphics.draw(slot25, uv10"unknown", math.floor, math.floor, slot29, slot30)
		305	[  0]	TGETS	 20	17	73	; slot20 = slot17.body
		306	[  0]	TGETS	 21	14	46	; slot21 = slot14.bodyLines
		307	[  0]	IST  	   		21	; if <unknown table>.bodyLines
		308	[  0]	JMP  	 22		1	; 	goto 310
		309	[  0]	TNEW 	 21		0	; slot21 = new table( array: 0, dict: 1)
		310	[  0]	FNEW 	 22		45	; N/A:0-0: 2 args, 1 upvalues, 7 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  2	[  0]	TGETV	  2	2	0	; slot2 = uv0"unknown"[slot0]
			  3	[  0]	IST  	   		2	; if slot2
			  4	[  0]	JMP  	  3		1	; 	goto 6
			  5	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
			  6	[  0]	GGET 	  3		2	; slot3 = _env["tonumber"]
			  7	[  0]	TGETS	  5	2	1	; slot5 = slot2.offsetX
			  8	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
			  9	[  0]	IST  	   		3	; if tonumber
			 10	[  0]	JMP  	  4		1	; 	goto 12
			 11	[  0]	KSHORT	  3		0	; slot3 = 0
			 12	[  0]	GGET 	  4		2	; slot4 = _env["tonumber"]
			 13	[  0]	TGETS	  6	2	0	; slot6 = slot2.offsetY
			 14	[  0]	CALL 	  4	2	2	; slot4 = tonumber(<unknown table>.offsetX)
			 15	[  0]	IST  	   		4	; if tonumber
			 16	[  0]	JMP  	  5		1	; 	goto 18
			 17	[  0]	MOV  	  4		1	; slot4 = slot1
			 18	[  0]	RET  	  3		3	; return slot3, slot4
		311	[  0]	MOV  	 23		22	; slot23 = slot22
		312	[  0]	KSHORT	 25		1	; slot25 = 1
		313	[  0]	KSHORT	 26		37	; slot26 = 37
		314	[  0]	CALL 	 23	3	3	; slot23, slot24 = slot23(love.graphics.draw, slot25)
		315	[  0]	UGET 	 25		11	; slot25 = uv11"unknwon"
		316	[  0]	MOV  	 27		2	; slot27 = love.graphics.getFont
		317	[  0]	UGET 	 28		12	; slot28 = uv12"unknwon"
		318	[  0]	KSHORT	 30		1	; slot30 = 1
		319	[  0]	MOV  	 31		17	; slot31 = slot17
		320	[  0]	CALL 	 28	2	3	; slot28 = uv12"unknown"(slot29, slot30)
		321	[  0]	ADDVV	 29	15	23	; slot29 = slot15 + slot23
		322	[  0]	TGETS	 30	4	81	; slot30 = uv4"unknown".panel.y
		323	[  0]	ADDVV	 30	30	16	; slot30 = uv4"unknown".panel.y + slot16
		324	[  0]	ADDVV	 30	30	24	; slot30 = slot30 + love.graphics.draw
		325	[  0]	MOV  	 31		20	; slot31 = <unknown table>.body
		326	[  0]	CALL 	 25	1	6	;  = uv11"unknown"(slot26, love.graphics.getFont, uv12"unknown", slot29, slot30)
		327	[  0]	MOV  	 23		22	; slot23 = slot22
		328	[  0]	KSHORT	 25		2	; slot25 = 2
		329	[  0]	KSHORT	 26		61	; slot26 = 61
		330	[  0]	CALL 	 23	3	3	; slot23, slot24 = slot23(love.graphics.draw, slot25)
		331	[  0]	MOV  	 25		22	; slot25 = slot22
		332	[  0]	KSHORT	 27		3	; slot27 = 3
		333	[  0]	KSHORT	 28		77	; slot28 = 77
		334	[  0]	CALL 	 25	3	3	; slot25, slot26 = slot25(slot26, slot27)
		335	[  0]	KSHORT	 27		0	; slot27 = 0
		336	[  0]	KSHORT	 28		2	; slot28 = 2
		337	[  0]	KSHORT	 29		3	; slot29 = 3
		338	[  0]	KSHORT	 30		1	; slot30 = 1
		339	[  0]	FORI 	 28		31	; for <unknown table>.body = slot28,slot29,slot30 else goto 371
		340	[  0]	MOV  	 32		22	; slot32 = slot22
		341	[  0]	MOV  	 34		31	; slot34 = slot31
		342	[  0]	KSHORT	 35		0	; slot35 = 0
		343	[  0]	CALL 	 32	2	3	; slot32 = slot32(slot33, slot34)
		344	[  0]	GGET 	 33		44	; slot33 = _env["ipairs"]
		345	[  0]	UGET 	 35		13	; slot35 = uv13"unknwon"
		346	[  0]	MOV  	 37		2	; slot37 = love.graphics.getFont
		347	[  0]	UGET 	 38		12	; slot38 = uv12"unknwon"
		348	[  0]	MOV  	 40		31	; slot40 = slot31
		349	[  0]	MOV  	 41		17	; slot41 = slot17
		350	[  0]	CALL 	 38	2	3	; slot38 = uv12"unknown"(slot39, slot40)
		351	[  0]	UGET 	 39		14	; slot39 = uv14"unknwon"
		352	[  0]	CALL 	 35	0	4	; MULTRES = uv13"unknown"(slot36, love.graphics.getFont, uv12"unknown")
		353	[  0]	CALLM	 33	4	0	; slot33, slot34, slot35 = ipairs(, ...MULTRES)
		354	[  0]	JMP  	 36		13	; 	goto 368
		355	[  0]	UGET 	 38		11	; slot38 = uv11"unknwon"
		356	[  0]	MOV  	 40		2	; slot40 = love.graphics.getFont
		357	[  0]	MOV  	 41		37	; slot41 = love.graphics.getFont
		358	[  0]	ADDVV	 42	15	32	; slot42 = slot15 + slot32
		359	[  0]	TGETS	 43	4	81	; slot43 = uv4"unknown".panel.y
		360	[  0]	ADDVV	 43	43	16	; slot43 = uv4"unknown".panel.y + slot16
		361	[  0]	ADDVV	 43	43	24	; slot43 = slot43 + love.graphics.draw
		362	[  0]	SUBVV	 44	26	24	; slot44 = slot26 - love.graphics.draw
		363	[  0]	MULVV	 44	44	27	; slot44 = slot44 * slot27
		364	[  0]	ADDVV	 43	43	44	; slot43 = slot43 + slot44
		365	[  0]	MOV  	 44		20	; slot44 = <unknown table>.body
		366	[  0]	CALL 	 38	1	6	;  = uv11"unknown"(uv14"unknown", love.graphics.getFont, love.graphics.getFont, slot42, slot43)
		367	[  0]	ADDVN	 27	27	2	; slot27 = slot27 + 1
		368	[  0]	ITERC	 36	3	3	; slot36, slot37, slot38 = ipairs, slot34, uv13"unknown"; slot36, slot37 = ipairs(slot34, uv13"unknown")
		369	[  0]	ITERL	 36		-15	; uv13"unknown" = slot36; if slot36 != nil goto 355
		370	[  0]	FORL 	 28		-31	; slot31 = slot31 + slot30; if cmp(slot31, sign slot30,  slot29) goto 340
		371	[  0]	TGETS	 23	14	43	; slot23 = slot14.startPrompt
		372	[  0]	IST  	   		23	; if <unknown table>.startPrompt
		373	[  0]	JMP  	 24		1	; 	goto 375
		374	[  0]	TNEW 	 23		0	; slot23 = new table( array: 0, dict: 1)
		375	[  0]	UGET 	 24		15	; slot24 = uv15"unknwon"
		376	[  0]	MOV  	 26		2	; slot26 = love.graphics.getFont
		377	[  0]	UGET 	 27		16	; slot27 = uv16"unknwon"
		378	[  0]	KSTR 	 29		42	; slot29 = "welcome_question"
		379	[  0]	CALL 	 27	2	2	; slot27 = uv16"unknown"(slot28)
		380	[  0]	GGET 	 28		78	; slot28 = _env["tonumber"]
		381	[  0]	TGETS	 30	23	50	; slot30 = slot23.offsetX
		382	[  0]	CALL 	 28	2	2	; slot28 = tonumber(slot29)
		383	[  0]	IST  	   		28	; if tonumber
		384	[  0]	JMP  	 29		1	; 	goto 386
		385	[  0]	KSHORT	 28		0	; slot28 = 0
		386	[  0]	ADDVV	 28	15	28	; slot28 = slot15 + slot28
		387	[  0]	TGETS	 29	4	81	; slot29 = uv4"unknown".panel.y
		388	[  0]	ADDVV	 29	29	16	; slot29 = uv4"unknown".panel.y + slot16
		389	[  0]	GGET 	 30		78	; slot30 = _env["tonumber"]
		390	[  0]	TGETS	 32	23	48	; slot32 = slot23.offsetY
		391	[  0]	CALL 	 30	2	2	; slot30 = tonumber(slot31)
		392	[  0]	IST  	   		30	; if tonumber
		393	[  0]	JMP  	 31		1	; 	goto 395
		394	[  0]	KSHORT	 30		121	; slot30 = 121
		395	[  0]	ADDVV	 29	29	30	; slot29 = slot29 + slot30
		396	[  0]	TGETS	 30	3	52	; slot30 = uv4"unknown".windowExtraRows
		397	[  0]	IST  	   		30	; if uv4"unknown".windowExtraRows
		398	[  0]	JMP  	 31		1	; 	goto 400
		399	[  0]	KSHORT	 30		0	; slot30 = 0
		400	[  0]	TGETS	 31	4	53	; slot31 = uv4"unknown".panel.scale
		401	[  0]	MULVV	 30	30	31	; slot30 = slot30 * uv4"unknown".panel.scale
		402	[  0]	ADDVV	 29	29	30	; slot29 = slot29 + slot30
		403	[  0]	TGETS	 30	17	67	; slot30 = slot17.prompt
		404	[  0]	CALL 	 24	1	6	;  = uv15"unknown"(slot25, love.graphics.getFont, uv16"unknown", slot28, slot29)
		405	[  0]	MOV  	 24		2	; slot24 = love.graphics.getFont
		406	[  0]	GGET 	 25		96	; slot25 = _env["love"]
		407	[  0]	TGETS	 25	25	95	; slot25 = love.graphics
		408	[  0]	TGETS	 25	25	41	; slot25 = love.graphics.setFont
		409	[  0]	MOV  	 27		24	; slot27 = love.graphics.getFont
		410	[  0]	CALL 	 25	1	2	;  = love.graphics.setFont(love.graphics.getFont)
		411	[  0]	UGET 	 25		16	; slot25 = uv16"unknwon"
		412	[  0]	KSTR 	 27		40	; slot27 = "start"
		413	[  0]	CALL 	 25	2	2	; slot25 = uv16"unknown"(love.graphics.getFont)
		414	[  0]	UGET 	 26		16	; slot26 = uv16"unknwon"
		415	[  0]	KSTR 	 28		39	; slot28 = "skip"
		416	[  0]	CALL 	 26	2	2	; slot26 = uv16"unknown"(slot27)
		417	[  0]	UGET 	 27		17	; slot27 = uv17"unknwon"
		418	[  0]	CALL 	 27	2	1	; slot27 = uv17"unknown"()
		419	[  0]	ISF  	   		27	; if not uv17"unknown"
		420	[  0]	JMP  	 28		378	; 	goto 799
		421	[  0]	ISF  	   		0	; if not slot0
		422	[  0]	JMP  	 28		7	; 	goto 430
		423	[  0]	TGETS	 28	0	38	; slot28 = slot0.coreSelect
		424	[  0]	ISF  	   		28	; if not <unknown table>.coreSelect
		425	[  0]	JMP  	 29		4	; 	goto 430
		426	[  0]	TGETS	 28	0	38	; slot28 = slot0.coreSelect
		427	[  0]	TGETS	 28	28	91	; slot28 = <unknown table>.coreSelect.buttons
		428	[  0]	IST  	   		28	; if <unknown table>.coreSelect.buttons
		429	[  0]	JMP  	 29		1	; 	goto 431
		430	[  0]	TNEW 	 28		0	; slot28 = new table( array: 0, dict: 1)
		431	[  0]	TGETS	 29	14	37	; slot29 = slot14.welcomeSkip
		432	[  0]	IST  	   		29	; if <unknown table>.welcomeSkip
		433	[  0]	JMP  	 30		1	; 	goto 435
		434	[  0]	TNEW 	 29		0	; slot29 = new table( array: 0, dict: 1)
		435	[  0]	UGET 	 30		18	; slot30 = uv18"unknwon"
		436	[  0]	CALL 	 30	2	1	; slot30 = uv18"unknown"()
		437	[  0]	GGET 	 31		78	; slot31 = _env["tonumber"]
		438	[  0]	TGETS	 33	29	36	; slot33 = slot29.lockedAlpha
		439	[  0]	CALL 	 31	2	2	; slot31 = tonumber(<unknown table>.offsetY)
		440	[  0]	IST  	   		31	; if tonumber
		441	[  0]	JMP  	 32		1	; 	goto 443
		442	[  0]	KNUM 	 31		9	; slot31 = 0.35
		443	[  0]	ISF  	   		30	; if not uv18"unknown"
		444	[  0]	JMP  	 32		2	; 	goto 447
		445	[  0]	KSHORT	 32		1	; slot32 = 1
		446	[  0]	JMP  	 33		6	; 	goto 453
		447	[  0]	GGET 	 32		78	; slot32 = _env["tonumber"]
		448	[  0]	TGETS	 34	29	35	; slot34 = slot29.lockedLabelAlpha
		449	[  0]	CALL 	 32	2	2	; slot32 = tonumber(<unknown table>.lockedAlpha)
		450	[  0]	IST  	   		32	; if tonumber
		451	[  0]	JMP  	 33		1	; 	goto 453
		452	[  0]	KNUM 	 32		10	; slot32 = 0.85
		453	[  0]	ISF  	   		30	; if not uv18"unknown"
		454	[  0]	JMP  	 33		2	; 	goto 457
		455	[  0]	KSHORT	 33		1	; slot33 = 1
		456	[  0]	JMP  	 34		1	; 	goto 458
		457	[  0]	MOV  	 33		31	; slot33 = slot31
		458	[  0]	TGETS	 34	28	34	; slot34 = slot28.hover
		459	[  0]	ISF  	   		34	; if not <unknown table>.hover
		460	[  0]	JMP  	 35		4	; 	goto 465
		461	[  0]	TGETS	 34	28	34	; slot34 = slot28.hover
		462	[  0]	TGETS	 34	34	33	; slot34 = <unknown table>.hover.liftPx
		463	[  0]	IST  	   		34	; if <unknown table>.hover.liftPx
		464	[  0]	JMP  	 35		1	; 	goto 466
		465	[  0]	KSHORT	 34		4	; slot34 = 4
		466	[  0]	TGETS	 35	3	40	; slot35 = uv4"unknown".start
		467	[  0]	TGETS	 35	35	81	; slot35 = uv4"unknown".start.y
		468	[  0]	GGET 	 36		88	; slot36 = _env["math"]
		469	[  0]	TGETS	 36	36	87	; slot36 = math.floor
		470	[  0]	UGET 	 38		0	; slot38 = uv0"unknwon"
		471	[  0]	TGETS	 38	38	32	; slot38 = uv0"unknown".hoverStart
		472	[  0]	IST  	   		38	; if uv0"unknown".hoverStart
		473	[  0]	JMP  	 39		1	; 	goto 475
		474	[  0]	KSHORT	 38		0	; slot38 = 0
		475	[  0]	MULVV	 38	34	38	; slot38 = slot34 * slot38
		476	[  0]	ADDVN	 38	38	4	; slot38 = slot38 + 0.5
		477	[  0]	CALL 	 36	2	2	; slot36 = math.floor(love.graphics.getFont)
		478	[  0]	SUBVV	 35	35	36	; slot35 = uv4"unknown".start.y - math.floor
		479	[  0]	TGETS	 36	3	39	; slot36 = uv4"unknown".skip
		480	[  0]	TGETS	 36	36	81	; slot36 = uv4"unknown".skip.y
		481	[  0]	GGET 	 37		88	; slot37 = _env["math"]
		482	[  0]	TGETS	 37	37	87	; slot37 = math.floor
		483	[  0]	UGET 	 39		0	; slot39 = uv0"unknwon"
		484	[  0]	TGETS	 39	39	31	; slot39 = uv0"unknown".hoverSkip
		485	[  0]	IST  	   		39	; if uv0"unknown".hoverSkip
		486	[  0]	JMP  	 40		1	; 	goto 488
		487	[  0]	KSHORT	 39		0	; slot39 = 0
		488	[  0]	MULVV	 39	34	39	; slot39 = slot34 * slot39
		489	[  0]	ADDVN	 39	39	4	; slot39 = slot39 + 0.5
		490	[  0]	CALL 	 37	2	2	; slot37 = math.floor(slot38)
		491	[  0]	SUBVV	 36	36	37	; slot36 = uv4"unknown".skip.y - math.floor
		492	[  0]	GGET 	 37		30	; slot37 = _env["require"]
		493	[  0]	KSTR 	 39		29	; slot39 = "src.ui.widgets"
		494	[  0]	CALL 	 37	2	2	; slot37 = require(slot38)
		495	[  0]	TGETS	 37	37	28	; slot37 = require.core_button
		496	[  0]	GGET 	 38		96	; slot38 = _env["love"]
		497	[  0]	TGETS	 38	38	95	; slot38 = love.graphics
		498	[  0]	TGETS	 38	38	60	; slot38 = love.graphics.setColor
		499	[  0]	KSHORT	 40		1	; slot40 = 1
		500	[  0]	KSHORT	 41		1	; slot41 = 1
		501	[  0]	KSHORT	 42		1	; slot42 = 1
		502	[  0]	MOV  	 43		8	; slot43 = uv7"unknown"
		503	[  0]	CALL 	 38	1	5	;  = love.graphics.setColor(slot39, slot40, slot41, slot42)
		504	[  0]	TGETS	 38	37	47	; slot38 = require.core_button.draw
		505	[  0]	MOV  	 40		27	; slot40 = uv17"unknown"
		506	[  0]	TGETS	 41	3	40	; slot41 = uv4"unknown".start
		507	[  0]	TGETS	 41	41	83	; slot41 = uv4"unknown".start.x
		508	[  0]	MOV  	 42		35	; slot42 = slot35
		509	[  0]	TGETS	 43	3	27	; slot43 = uv4"unknown".buttonScale
		510	[  0]	TGETS	 44	3	26	; slot44 = uv4"unknown".buttonExtraSrc
		511	[  0]	CALL 	 38	1	6	;  = require.core_button.draw(slot39, uv17"unknown", uv4"unknown".start.x, slot42, uv4"unknown".buttonScale)
		512	[  0]	GGET 	 38		96	; slot38 = _env["love"]
		513	[  0]	TGETS	 38	38	95	; slot38 = love.graphics
		514	[  0]	TGETS	 38	38	60	; slot38 = love.graphics.setColor
		515	[  0]	KSHORT	 40		1	; slot40 = 1
		516	[  0]	KSHORT	 41		1	; slot41 = 1
		517	[  0]	KSHORT	 42		1	; slot42 = 1
		518	[  0]	MULVV	 43	8	33	; slot43 = uv7"unknown" * slot33
		519	[  0]	CALL 	 38	1	5	;  = love.graphics.setColor(slot39, slot40, slot41, slot42)
		520	[  0]	TGETS	 38	37	47	; slot38 = require.core_button.draw
		521	[  0]	MOV  	 40		27	; slot40 = uv17"unknown"
		522	[  0]	TGETS	 41	3	39	; slot41 = uv4"unknown".skip
		523	[  0]	TGETS	 41	41	83	; slot41 = uv4"unknown".skip.x
		524	[  0]	MOV  	 42		36	; slot42 = slot36
		525	[  0]	TGETS	 43	3	27	; slot43 = uv4"unknown".buttonScale
		526	[  0]	TGETS	 44	3	26	; slot44 = uv4"unknown".buttonExtraSrc
		527	[  0]	CALL 	 38	1	6	;  = require.core_button.draw(slot39, uv17"unknown", uv4"unknown".skip.x, slot42, uv4"unknown".buttonScale)
		528	[  0]	UGET 	 38		19	; slot38 = uv19"unknwon"
		529	[  0]	CALL 	 38	2	1	; slot38 = uv19"unknown"()
		530	[  0]	ISF  	   		38	; if not uv19"unknown"
		531	[  0]	JMP  	 39		103	; 	goto 635
		532	[  0]	MOV  	 41		38	; slot41 = uv19"unknown"
		533	[  0]	TGETS	 39	38	25	; slot39 = uv19"unknown".send
		534	[  0]	KSTR 	 42		24	; slot42 = "texelStep"
		535	[  0]	TNEW 	 43		3	; slot43 = new table( array: 3, dict: 1)
		536	[  0]	MOV  	 46		27	; slot46 = uv17"unknown"
		537	[  0]	TGETS	 44	27	49	; slot44 = uv17"unknown".getWidth
		538	[  0]	CALL 	 44	2	2	; slot44 = uv17"unknown".getWidth(slot45)
		539	[  0]	TGETS	 45	3	27	; slot45 = uv4"unknown".buttonScale
		540	[  0]	MULVV	 44	44	45	; slot44 = uv17"unknown".getWidth * uv4"unknown".buttonScale
		541	[  0]	DIVNV	 44	44	2	; slot44 = 1 / slot44
		542	[  0]	TSETB	 44	43	1	; slot43[1] = slot44
		543	[  0]	MOV  	 46		27	; slot46 = uv17"unknown"
		544	[  0]	TGETS	 44	27	23	; slot44 = uv17"unknown".getHeight
		545	[  0]	CALL 	 44	2	2	; slot44 = uv17"unknown".getHeight(uv4"unknown".buttonScale)
		546	[  0]	TGETS	 45	3	27	; slot45 = uv4"unknown".buttonScale
		547	[  0]	MULVV	 44	44	45	; slot44 = uv17"unknown".getHeight * uv4"unknown".buttonScale
		548	[  0]	DIVNV	 44	44	2	; slot44 = 1 / slot44
		549	[  0]	TSETB	 44	43	2	; slot43[2] = slot44
		550	[  0]	CALL 	 39	1	4	;  = uv19"unknown".send(uv17"unknown", uv19"unknown", slot42)
		551	[  0]	MOV  	 41		38	; slot41 = uv19"unknown"
		552	[  0]	TGETS	 39	38	25	; slot39 = uv19"unknown".send
		553	[  0]	KSTR 	 42		22	; slot42 = "outlineColor"
		554	[  0]	TGETS	 43	17	63	; slot43 = slot17.buttonOutline
		555	[  0]	CALL 	 39	1	4	;  = uv19"unknown".send(uv17"unknown", uv19"unknown", slot42)
		556	[  0]	MOV  	 41		38	; slot41 = uv19"unknown"
		557	[  0]	TGETS	 39	38	25	; slot39 = uv19"unknown".send
		558	[  0]	KSTR 	 42		21	; slot42 = "threshold"
		559	[  0]	KNUM 	 43		11	; slot43 = 0.01
		560	[  0]	CALL 	 39	1	4	;  = uv19"unknown".send(uv17"unknown", uv19"unknown", slot42)
		561	[  0]	MOV  	 41		38	; slot41 = uv19"unknown"
		562	[  0]	TGETS	 39	38	25	; slot39 = uv19"unknown".send
		563	[  0]	KSTR 	 42		20	; slot42 = "radiusPx"
		564	[  0]	TGETS	 43	28	34	; slot43 = slot28.hover
		565	[  0]	ISF  	   		43	; if not <unknown table>.hover
		566	[  0]	JMP  	 44		4	; 	goto 571
		567	[  0]	TGETS	 43	28	34	; slot43 = slot28.hover
		568	[  0]	TGETS	 43	43	19	; slot43 = <unknown table>.hover.outlineRadiusPx
		569	[  0]	IST  	   		43	; if <unknown table>.hover.outlineRadiusPx
		570	[  0]	JMP  	 44		1	; 	goto 572
		571	[  0]	KSHORT	 43		2	; slot43 = 2
		572	[  0]	CALL 	 39	1	4	;  = uv19"unknown".send(uv17"unknown", uv19"unknown", slot42)
		573	[  0]	UGET 	 39		0	; slot39 = uv0"unknwon"
		574	[  0]	TGETS	 39	39	32	; slot39 = uv0"unknown".hoverStart
		575	[  0]	IST  	   		39	; if uv0"unknown".hoverStart
		576	[  0]	JMP  	 40		1	; 	goto 578
		577	[  0]	KSHORT	 39		0	; slot39 = 0
		578	[  0]	KNUM 	 40		11	; slot40 = 0.01
		579	[  0]	ISGE 	 40		39	; if slot40 >= slot39
		580	[  0]	JMP  	 39		22	; 	goto 603
		581	[  0]	MOV  	 41		38	; slot41 = uv19"unknown"
		582	[  0]	TGETS	 39	38	25	; slot39 = uv19"unknown".send
		583	[  0]	KSTR 	 42		22	; slot42 = "outlineColor"
		584	[  0]	TGETS	 43	17	61	; slot43 = slot17.startButtonOutline
		585	[  0]	CALL 	 39	1	4	;  = uv19"unknown".send(slot40, uv19"unknown", slot42)
		586	[  0]	GGET 	 39		96	; slot39 = _env["love"]
		587	[  0]	TGETS	 39	39	95	; slot39 = love.graphics
		588	[  0]	TGETS	 39	39	18	; slot39 = love.graphics.setShader
		589	[  0]	MOV  	 41		38	; slot41 = uv19"unknown"
		590	[  0]	CALL 	 39	1	2	;  = love.graphics.setShader(slot40)
		591	[  0]	TGETS	 39	37	47	; slot39 = require.core_button.draw
		592	[  0]	MOV  	 41		27	; slot41 = uv17"unknown"
		593	[  0]	TGETS	 42	3	40	; slot42 = uv4"unknown".start
		594	[  0]	TGETS	 42	42	83	; slot42 = uv4"unknown".start.x
		595	[  0]	MOV  	 43		35	; slot43 = slot35
		596	[  0]	TGETS	 44	3	27	; slot44 = uv4"unknown".buttonScale
		597	[  0]	TGETS	 45	3	26	; slot45 = uv4"unknown".buttonExtraSrc
		598	[  0]	CALL 	 39	1	6	;  = require.core_button.draw(slot40, uv17"unknown", uv4"unknown".start.x, slot43, uv4"unknown".buttonScale)
		599	[  0]	GGET 	 39		96	; slot39 = _env["love"]
		600	[  0]	TGETS	 39	39	95	; slot39 = love.graphics
		601	[  0]	TGETS	 39	39	18	; slot39 = love.graphics.setShader
		602	[  0]	CALL 	 39	1	1	;  = love.graphics.setShader()
		603	[  0]	ISF  	   		30	; if not uv18"unknown"
		604	[  0]	JMP  	 39		30	; 	goto 635
		605	[  0]	UGET 	 39		0	; slot39 = uv0"unknwon"
		606	[  0]	TGETS	 39	39	31	; slot39 = uv0"unknown".hoverSkip
		607	[  0]	IST  	   		39	; if uv0"unknown".hoverSkip
		608	[  0]	JMP  	 40		1	; 	goto 610
		609	[  0]	KSHORT	 39		0	; slot39 = 0
		610	[  0]	KNUM 	 40		11	; slot40 = 0.01
		611	[  0]	ISGE 	 40		39	; if slot40 >= slot39
		612	[  0]	JMP  	 39		22	; 	goto 635
		613	[  0]	MOV  	 41		38	; slot41 = uv19"unknown"
		614	[  0]	TGETS	 39	38	25	; slot39 = uv19"unknown".send
		615	[  0]	KSTR 	 42		22	; slot42 = "outlineColor"
		616	[  0]	TGETS	 43	17	63	; slot43 = slot17.buttonOutline
		617	[  0]	CALL 	 39	1	4	;  = uv19"unknown".send(slot40, uv19"unknown", slot42)
		618	[  0]	GGET 	 39		96	; slot39 = _env["love"]
		619	[  0]	TGETS	 39	39	95	; slot39 = love.graphics
		620	[  0]	TGETS	 39	39	18	; slot39 = love.graphics.setShader
		621	[  0]	MOV  	 41		38	; slot41 = uv19"unknown"
		622	[  0]	CALL 	 39	1	2	;  = love.graphics.setShader(slot40)
		623	[  0]	TGETS	 39	37	47	; slot39 = require.core_button.draw
		624	[  0]	MOV  	 41		27	; slot41 = uv17"unknown"
		625	[  0]	TGETS	 42	3	39	; slot42 = uv4"unknown".skip
		626	[  0]	TGETS	 42	42	83	; slot42 = uv4"unknown".skip.x
		627	[  0]	MOV  	 43		36	; slot43 = slot36
		628	[  0]	TGETS	 44	3	27	; slot44 = uv4"unknown".buttonScale
		629	[  0]	TGETS	 45	3	26	; slot45 = uv4"unknown".buttonExtraSrc
		630	[  0]	CALL 	 39	1	6	;  = require.core_button.draw(slot40, uv17"unknown", uv4"unknown".skip.x, slot43, uv4"unknown".buttonScale)
		631	[  0]	GGET 	 39		96	; slot39 = _env["love"]
		632	[  0]	TGETS	 39	39	95	; slot39 = love.graphics
		633	[  0]	TGETS	 39	39	18	; slot39 = love.graphics.setShader
		634	[  0]	CALL 	 39	1	1	;  = love.graphics.setShader()
		635	[  0]	TGETS	 39	28	17	; slot39 = slot28.labelScale
		636	[  0]	IST  	   		39	; if <unknown table>.labelScale
		637	[  0]	JMP  	 40		1	; 	goto 639
		638	[  0]	KSHORT	 39		1	; slot39 = 1
		639	[  0]	TGETS	 40	28	16	; slot40 = slot28.labelYOffsetPx
		640	[  0]	IST  	   		40	; if <unknown table>.labelYOffsetPx
		641	[  0]	JMP  	 41		1	; 	goto 643
		642	[  0]	KSHORT	 40		65534	; slot40 = 65534
		643	[  0]	FNEW 	 41		15	; N/A:0-0: 4 args, 4 upvalues, 16 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			  2	[  0]	MOV  	  6		4	; slot6 = uv0"unknown"
			  3	[  0]	TGETS	  4	4	11	; slot4 = uv0"unknown".getWidth
			  4	[  0]	MOV  	  7		0	; slot7 = slot0
			  5	[  0]	CALL 	  4	2	3	; slot4 = uv0"unknown".getWidth(slot5, uv0"unknown")
			  6	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
			  7	[  0]	MULVV	  4	4	5	; slot4 = uv0"unknown".getWidth * uv1"unknown"
			  8	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
			  9	[  0]	MOV  	  7		5	; slot7 = uv0"unknown"
			 10	[  0]	TGETS	  5	5	10	; slot5 = uv0"unknown".getHeight
			 11	[  0]	CALL 	  5	2	2	; slot5 = uv0"unknown".getHeight(uv0"unknown")
			 12	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
			 13	[  0]	MULVV	  5	5	6	; slot5 = uv0"unknown".getHeight * uv1"unknown"
			 14	[  0]	GGET 	  6		9	; slot6 = _env["math"]
			 15	[  0]	TGETS	  6	6	8	; slot6 = math.floor
			 16	[  0]	TGETS	  8	1	7	; slot8 = slot1.x
			 17	[  0]	TGETS	  9	1	6	; slot9 = slot1.w
			 18	[  0]	SUBVV	  9	9	4	; slot9 = <unknown table>.w - slot4
			 19	[  0]	MULVN	  9	9	0	; slot9 = slot9 * 0.5
			 20	[  0]	ADDVV	  8	8	9	; slot8 = <unknown table>.x + slot9
			 21	[  0]	ADDVN	  8	8	0	; slot8 = slot8 + 0.5
			 22	[  0]	CALL 	  6	2	2	; slot6 = math.floor(uv0"unknown")
			 23	[  0]	GGET 	  7		9	; slot7 = _env["math"]
			 24	[  0]	TGETS	  7	7	8	; slot7 = math.floor
			 25	[  0]	TGETS	  9	1	5	; slot9 = slot1.h
			 26	[  0]	SUBVV	  9	9	5	; slot9 = <unknown table>.h - slot5
			 27	[  0]	MULVN	  9	9	0	; slot9 = slot9 * 0.5
			 28	[  0]	ADDVV	  9	2	9	; slot9 = slot2 + slot9
			 29	[  0]	UGET 	 10		2	; slot10 = uv2"unknwon"
			 30	[  0]	ADDVV	  9	9	10	; slot9 = slot9 + uv2"unknown"
			 31	[  0]	ADDVN	  9	9	0	; slot9 = slot9 + 0.5
			 32	[  0]	CALL 	  7	2	2	; slot7 = math.floor(slot8)
			 33	[  0]	GGET 	  8		4	; slot8 = _env["love"]
			 34	[  0]	TGETS	  8	8	3	; slot8 = love.graphics
			 35	[  0]	TGETS	  8	8	2	; slot8 = love.graphics.setColor
			 36	[  0]	UGET 	 10		3	; slot10 = uv3"unknwon"
			 37	[  0]	TGETS	 10	10	1	; slot10 = uv3"unknown".buttonText
			 38	[  0]	TGETB	 10	10	1	; slot10 = uv3"unknown".buttonText[1]
			 39	[  0]	UGET 	 11		3	; slot11 = uv3"unknwon"
			 40	[  0]	TGETS	 11	11	1	; slot11 = uv3"unknown".buttonText
			 41	[  0]	TGETB	 11	11	2	; slot11 = uv3"unknown".buttonText[2]
			 42	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
			 43	[  0]	TGETS	 12	12	1	; slot12 = uv3"unknown".buttonText
			 44	[  0]	TGETB	 12	12	3	; slot12 = uv3"unknown".buttonText[3]
			 45	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
			 46	[  0]	TGETS	 13	13	1	; slot13 = uv3"unknown".buttonText
			 47	[  0]	TGETB	 13	13	4	; slot13 = uv3"unknown".buttonText[4]
			 48	[  0]	IST  	   		13	; if slot13
			 49	[  0]	JMP  	 14		1	; 	goto 51
			 50	[  0]	KSHORT	 13		1	; slot13 = 1
			 51	[  0]	ISTC 	 14		3	; slot14 = slot3; if slot3
			 52	[  0]	JMP  	 14		1	; 	goto 54
			 53	[  0]	KSHORT	 14		1	; slot14 = 1
			 54	[  0]	MULVV	 13	13	14	; slot13 = slot13 * slot14
			 55	[  0]	CALL 	  8	1	5	;  = love.graphics.setColor(slot9, slot10, slot11, slot12)
			 56	[  0]	GGET 	  8		4	; slot8 = _env["love"]
			 57	[  0]	TGETS	  8	8	3	; slot8 = love.graphics
			 58	[  0]	TGETS	  8	8	0	; slot8 = love.graphics.print
			 59	[  0]	MOV  	 10		0	; slot10 = slot0
			 60	[  0]	MOV  	 11		6	; slot11 = math.floor
			 61	[  0]	MOV  	 12		7	; slot12 = math.floor
			 62	[  0]	KSHORT	 13		0	; slot13 = 0
			 63	[  0]	UGET 	 14		1	; slot14 = uv1"unknwon"
			 64	[  0]	UGET 	 15		1	; slot15 = uv1"unknwon"
			 65	[  0]	CALL 	  8	1	7	;  = love.graphics.print(slot9, slot10, math.floor, math.floor, slot13, uv1"unknown")
			 66	[  0]	RET0 	  0		1	; return
		644	[  0]	MOV  	 42		41	; slot42 = slot41
		645	[  0]	MOV  	 44		25	; slot44 = uv16"unknown"
		646	[  0]	TGETS	 45	3	40	; slot45 = uv4"unknown".start
		647	[  0]	MOV  	 46		35	; slot46 = slot35
		648	[  0]	CALL 	 42	1	4	;  = slot42(slot43, uv16"unknown", uv4"unknown".start)
		649	[  0]	MOV  	 42		41	; slot42 = slot41
		650	[  0]	MOV  	 44		26	; slot44 = uv16"unknown"
		651	[  0]	TGETS	 45	3	39	; slot45 = uv4"unknown".skip
		652	[  0]	MOV  	 46		36	; slot46 = slot36
		653	[  0]	MOV  	 47		32	; slot47 = slot32
		654	[  0]	CALL 	 42	1	5	;  = slot42(slot43, uv16"unknown", uv4"unknown".skip, slot46)
		655	[  0]	IST  	   		30	; if uv18"unknown"
		656	[  0]	JMP  	 42		141	; 	goto 798
		657	[  0]	GGET 	 42		88	; slot42 = _env["math"]
		658	[  0]	TGETS	 42	42	14	; slot42 = math.max
		659	[  0]	KSHORT	 44		1	; slot44 = 1
		660	[  0]	GGET 	 45		88	; slot45 = _env["math"]
		661	[  0]	TGETS	 45	45	13	; slot45 = math.ceil
		662	[  0]	UGET 	 47		20	; slot47 = uv20"unknwon"
		663	[  0]	UGET 	 48		0	; slot48 = uv0"unknwon"
		664	[  0]	TGETS	 48	48	12	; slot48 = uv0"unknown".skipLockElapsed
		665	[  0]	IST  	   		48	; if uv0"unknown".skipLockElapsed
		666	[  0]	JMP  	 49		1	; 	goto 668
		667	[  0]	KSHORT	 48		0	; slot48 = 0
		668	[  0]	SUBVV	 47	47	48	; slot47 = uv20"unknown" - slot48
		669	[  0]	CALL 	 45	0	2	; MULTRES = math.ceil(slot46)
		670	[  0]	CALLM	 42	2	1	; slot42 = math.max(slot43, ...MULTRES)
		671	[  0]	GGET 	 43		11	; slot43 = _env["string"]
		672	[  0]	TGETS	 43	43	10	; slot43 = string.format
		673	[  0]	UGET 	 45		16	; slot45 = uv16"unknwon"
		674	[  0]	KSTR 	 47		9	; slot47 = "skip_countdown_fmt"
		675	[  0]	CALL 	 45	2	2	; slot45 = uv16"unknown"(slot46)
		676	[  0]	MOV  	 46		42	; slot46 = math.max
		677	[  0]	CALL 	 43	2	3	; slot43 = string.format(slot44, uv16"unknown")
		678	[  0]	ISF  	   		0	; if not slot0
		679	[  0]	JMP  	 44		7	; 	goto 687
		680	[  0]	TGETS	 44	0	8	; slot44 = slot0.restartConfirm
		681	[  0]	ISF  	   		44	; if not <unknown table>.restartConfirm
		682	[  0]	JMP  	 45		4	; 	goto 687
		683	[  0]	TGETS	 44	0	8	; slot44 = slot0.restartConfirm
		684	[  0]	TGETS	 44	44	98	; slot44 = <unknown table>.restartConfirm.font
		685	[  0]	IST  	   		44	; if <unknown table>.restartConfirm.font
		686	[  0]	JMP  	 45		18	; 	goto 705
		687	[  0]	ISF  	   		0	; if not slot0
		688	[  0]	JMP  	 44		7	; 	goto 696
		689	[  0]	TGETS	 44	0	7	; slot44 = slot0.coreMessage
		690	[  0]	ISF  	   		44	; if not <unknown table>.coreMessage
		691	[  0]	JMP  	 45		4	; 	goto 696
		692	[  0]	TGETS	 44	0	7	; slot44 = slot0.coreMessage
		693	[  0]	TGETS	 44	44	98	; slot44 = <unknown table>.coreMessage.font
		694	[  0]	IST  	   		44	; if <unknown table>.coreMessage.font
		695	[  0]	JMP  	 45		9	; 	goto 705
		696	[  0]	ISF  	   		0	; if not slot0
		697	[  0]	JMP  	 44		3	; 	goto 701
		698	[  0]	TGETS	 44	0	98	; slot44 = slot0.font
		699	[  0]	IST  	   		44	; if <unknown table>.font
		700	[  0]	JMP  	 45		4	; 	goto 705
		701	[  0]	UGET 	 44		3	; slot44 = uv3"unknwon"
		702	[  0]	IST  	   		44	; if uv3"unknown"
		703	[  0]	JMP  	 45		1	; 	goto 705
		704	[  0]	MOV  	 44		24	; slot44 = love.graphics.getFont
		705	[  0]	ISF  	   		44	; if not love.graphics.getFont
		706	[  0]	JMP  	 45		8	; 	goto 715
		707	[  0]	TGETS	 45	44	93	; slot45 = love.graphics.getFont.setFilter
		708	[  0]	ISF  	   		45	; if not love.graphics.getFont.setFilter
		709	[  0]	JMP  	 46		5	; 	goto 715
		710	[  0]	MOV  	 47		44	; slot47 = love.graphics.getFont
		711	[  0]	TGETS	 45	44	93	; slot45 = love.graphics.getFont.setFilter
		712	[  0]	KSTR 	 48		92	; slot48 = "nearest"
		713	[  0]	KSTR 	 49		92	; slot49 = "nearest"
		714	[  0]	CALL 	 45	1	4	;  = love.graphics.getFont.setFilter(math.max, love.graphics.getFont, slot48)
		715	[  0]	GGET 	 45		96	; slot45 = _env["love"]
		716	[  0]	TGETS	 45	45	95	; slot45 = love.graphics
		717	[  0]	TGETS	 45	45	41	; slot45 = love.graphics.setFont
		718	[  0]	MOV  	 47		44	; slot47 = love.graphics.getFont
		719	[  0]	CALL 	 45	1	2	;  = love.graphics.setFont(math.max)
		720	[  0]	GGET 	 45		78	; slot45 = _env["tonumber"]
		721	[  0]	TGETS	 47	29	6	; slot47 = slot29.counterScale
		722	[  0]	CALL 	 45	2	2	; slot45 = tonumber(math.max)
		723	[  0]	IST  	   		45	; if tonumber
		724	[  0]	JMP  	 46		1	; 	goto 726
		725	[  0]	KSHORT	 45		1	; slot45 = 1
		726	[  0]	GGET 	 46		78	; slot46 = _env["tonumber"]
		727	[  0]	TGETS	 48	29	5	; slot48 = slot29.counterGapY
		728	[  0]	CALL 	 46	2	2	; slot46 = tonumber(<unknown table>.counterScale)
		729	[  0]	IST  	   		46	; if tonumber
		730	[  0]	JMP  	 47		1	; 	goto 732
		731	[  0]	KSHORT	 46		2	; slot46 = 2
		732	[  0]	MOV  	 49		44	; slot49 = love.graphics.getFont
		733	[  0]	TGETS	 47	44	49	; slot47 = love.graphics.getFont.getWidth
		734	[  0]	MOV  	 50		43	; slot50 = string.format
		735	[  0]	CALL 	 47	2	3	; slot47 = love.graphics.getFont.getWidth(<unknown table>.counterGapY, love.graphics.getFont)
		736	[  0]	MULVV	 47	47	45	; slot47 = love.graphics.getFont.getWidth * slot45
		737	[  0]	GGET 	 48		88	; slot48 = _env["math"]
		738	[  0]	TGETS	 48	48	87	; slot48 = math.floor
		739	[  0]	TGETS	 50	3	39	; slot50 = uv4"unknown".skip
		740	[  0]	TGETS	 50	50	83	; slot50 = uv4"unknown".skip.x
		741	[  0]	TGETS	 51	3	39	; slot51 = uv4"unknown".skip
		742	[  0]	TGETS	 51	51	82	; slot51 = uv4"unknown".skip.w
		743	[  0]	SUBVV	 51	51	47	; slot51 = uv4"unknown".skip.w - slot47
		744	[  0]	MULVN	 51	51	4	; slot51 = slot51 * 0.5
		745	[  0]	ADDVV	 50	50	51	; slot50 = uv4"unknown".skip.x + slot51
		746	[  0]	ADDVN	 50	50	4	; slot50 = slot50 + 0.5
		747	[  0]	CALL 	 48	2	2	; slot48 = math.floor(love.graphics.getFont)
		748	[  0]	GGET 	 49		88	; slot49 = _env["math"]
		749	[  0]	TGETS	 49	49	87	; slot49 = math.floor
		750	[  0]	TGETS	 51	3	39	; slot51 = uv4"unknown".skip
		751	[  0]	TGETS	 51	51	80	; slot51 = uv4"unknown".skip.h
		752	[  0]	ADDVV	 51	36	51	; slot51 = slot36 + uv4"unknown".skip.h
		753	[  0]	ADDVV	 51	51	46	; slot51 = slot51 + slot46
		754	[  0]	ADDVN	 51	51	4	; slot51 = slot51 + 0.5
		755	[  0]	CALL 	 49	2	2	; slot49 = math.floor(slot50)
		756	[  0]	TGETS	 50	29	4	; slot50 = slot29.counterColor
		757	[  0]	IST  	   		50	; if <unknown table>.counterColor
		758	[  0]	JMP  	 51		1	; 	goto 760
		759	[  0]	TDUP 	 50		3	; slot50 = copy table#k3
		760	[  0]	GGET 	 51		96	; slot51 = _env["love"]
		761	[  0]	TGETS	 51	51	95	; slot51 = love.graphics
		762	[  0]	TGETS	 51	51	60	; slot51 = love.graphics.setColor
		763	[  0]	TGETB	 53	50	1	; slot53 = slot50[1]
		764	[  0]	IST  	   		53	; if slot53
		765	[  0]	JMP  	 54		1	; 	goto 767
		766	[  0]	KSHORT	 53		1	; slot53 = 1
		767	[  0]	TGETB	 54	50	2	; slot54 = slot50[2]
		768	[  0]	IST  	   		54	; if slot54
		769	[  0]	JMP  	 55		1	; 	goto 771
		770	[  0]	KSHORT	 54		1	; slot54 = 1
		771	[  0]	TGETB	 55	50	3	; slot55 = slot50[3]
		772	[  0]	IST  	   		55	; if slot55
		773	[  0]	JMP  	 56		1	; 	goto 775
		774	[  0]	KSHORT	 55		1	; slot55 = 1
		775	[  0]	GGET 	 56		78	; slot56 = _env["tonumber"]
		776	[  0]	TGETS	 58	29	2	; slot58 = slot29.counterAlpha
		777	[  0]	CALL 	 56	2	2	; slot56 = tonumber(slot57)
		778	[  0]	IST  	   		56	; if tonumber
		779	[  0]	JMP  	 57		1	; 	goto 781
		780	[  0]	KSHORT	 56		1	; slot56 = 1
		781	[  0]	MULVV	 56	8	56	; slot56 = uv7"unknown" * slot56
		782	[  0]	CALL 	 51	1	5	;  = love.graphics.setColor(slot52, slot53, slot54, slot55)
		783	[  0]	GGET 	 51		96	; slot51 = _env["love"]
		784	[  0]	TGETS	 51	51	95	; slot51 = love.graphics
		785	[  0]	TGETS	 51	51	1	; slot51 = love.graphics.print
		786	[  0]	MOV  	 53		43	; slot53 = string.format
		787	[  0]	MOV  	 54		48	; slot54 = math.floor
		788	[  0]	MOV  	 55		49	; slot55 = math.floor
		789	[  0]	KSHORT	 56		0	; slot56 = 0
		790	[  0]	MOV  	 57		45	; slot57 = slot45
		791	[  0]	MOV  	 58		45	; slot58 = slot45
		792	[  0]	CALL 	 51	1	7	;  = love.graphics.print(slot52, string.format, math.floor, math.floor, slot56, slot57)
		793	[  0]	GGET 	 51		96	; slot51 = _env["love"]
		794	[  0]	TGETS	 51	51	95	; slot51 = love.graphics
		795	[  0]	TGETS	 51	51	41	; slot51 = love.graphics.setFont
		796	[  0]	MOV  	 53		24	; slot53 = love.graphics.getFont
		797	[  0]	CALL 	 51	1	2	;  = love.graphics.setFont(slot52)
		798	[  0]	UCLO 	 28		0	; nil uvs >= r28; goto 799
		799	[  0]	GGET 	 28		96	; slot28 = _env["love"]
		800	[  0]	TGETS	 28	28	95	; slot28 = love.graphics
		801	[  0]	TGETS	 28	28	0	; slot28 = love.graphics.pop
		802	[  0]	CALL 	 28	1	1	;  = love.graphics.pop()
		803	[  0]	GGET 	 28		96	; slot28 = _env["love"]
		804	[  0]	TGETS	 28	28	95	; slot28 = love.graphics
		805	[  0]	TGETS	 28	28	60	; slot28 = love.graphics.setColor
		806	[  0]	KSHORT	 30		1	; slot30 = 1
		807	[  0]	KSHORT	 31		1	; slot31 = 1
		808	[  0]	KSHORT	 32		1	; slot32 = 1
		809	[  0]	KSHORT	 33		1	; slot33 = 1
		810	[  0]	CALL 	 28	1	5	;  = love.graphics.setColor(slot29, slot30, slot31, slot32)
		811	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 812
		812	[  0]	RET0 	  0		1	; return
		813	[  0]	RET0 	  0		1	; return
		814	[  0]	RET0 	  0		1	; return
	306	[  0]	TSETS	 85	0	1	; slot0.draw = slot85
	307	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 308
	308	[  0]	RET1 	  0		2	; return slot0
	
