;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\ui\widgets.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 32 slots
	;;;; constant tables ;;;;
	ktable#21 = [
		]
	
	
	ktable#26 = [
		[__mode] = k,
		]
	
	
	ktable#27 = [
		[__mode] = k,
		]
	
	
	ktable#33 = [
		[__mode] = k,
		]
	
	
	ktable#53 = [
		[__mode] = k,
		]
	
	
	ktable#79 = [
		#1: 0.16,
		#2: 0.6,
		#3: 0.62,
		]
	
	
	ktable#80 = [
		#1: 0.17,
		#2: 0.63,
		#3: 0.64,
		]
	
	
	ktable#81 = [
		#1: 0.18,
		#2: 0.66,
		#3: 0.66,
		]
	
	
	ktable#82 = [
		#1: 0.2,
		#2: 0.69,
		#3: 0.68,
		]
	
	
	ktable#83 = [
		#1: 0.22,
		#2: 0.72,
		#3: 0.7,
		]
	
	
	ktable#84 = [
		#1: 0.26,
		#2: 0.75,
		#3: 0.71,
		]
	
	
	ktable#85 = [
		#1: 0.31,
		#2: 0.78,
		#3: 0.72,
		]
	
	
	ktable#86 = [
		#1: 0,
		#2: 1,
		#3: 0,
		#4: 0,
		#5: 0,
		#6: 1,
		#7: 0,
		]
	
	
	ktable#87 = [
		#1: 0,
		#2: 1,
		#3: 1,
		#4: 0,
		#5: 1,
		#6: 1,
		#7: 0,
		]
	
	
	ktable#88 = [
		#1: 0,
		#2: 0,
		#3: 1,
		#4: 1,
		#5: 1,
		#6: 0,
		#7: 0,
		]
	
	
	ktable#89 = [
		#1: 0,
		#2: 1,
		#3: 1,
		#4: 1,
		#5: 1,
		#6: 1,
		#7: 0,
		]
	
	
	ktable#90 = [
		#1: 1,
		#2: 1,
		#3: 1,
		#4: 1,
		#5: 1,
		#6: 1,
		#7: 1,
		]
	
	
	ktable#91 = [
		#1: 0,
		#2: 0,
		#3: 1,
		#4: 1,
		#5: 1,
		#6: 0,
		#7: 0,
		]
	
	
	ktable#92 = [
		#1: 0,
		#2: 0,
		#3: 0,
		#4: 1,
		#5: 0,
		#6: 0,
		#7: 0,
		]
	
	
	ktable#97 = [
		[__mode] = k,
		]
	
	
	ktable#106 = [
		#1: 0.173,
		#2: 0.227,
		#3: 0.173,
		]
	
	
	ktable#107 = [
		#1: 0.333,
		#2: 0.396,
		#3: 0.333,
		]
	
	
	ktable#109 = [
		#1: 0.5568627450980392,
		#2: 0.3607843137254902,
		#3: 0.1803921568627451,
		]
	
	
	ktable#110 = [
		#1: 0.7764705882352941,
		#2: 0.5333333333333333,
		#3: 0.30980392156862746,
		]
	
	
	ktable#112 = [
		#1: 0.22745098039215686,
		#2: 0.23921568627450981,
		#3: 0.3411764705882353,
		]
	
	
	ktable#113 = [
		#1: 0.4235294117647059,
		#2: 0.43529411764705883,
		#3: 0.5568627450980392,
		]
	
	
	ktable#115 = [
		]
	
	
	ktable#116 = [
		#1: 0.24313725490196078,
		#2: 0.35294117647058826,
		#3: 0.24705882352941178,
		]
	
	
	ktable#117 = [
		#1: 0.43137254901960786,
		#2: 0.5411764705882353,
		#3: 0.43529411764705883,
		]
	
	
	ktable#188 = [
		#1: 1,
		#2: 1,
		#3: 1,
		#4: 1,
		]
	
	
	ktable#193 = [
		[__mode] = k,
		]
	
	
	;;;; instructions ;;;;
	  1	[  0]	KPRI 	  0		0	; slot0 = nil
	  2	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
	  3	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
	  4	[  0]	FNEW 	  3		217	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
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
	  5	[  0]	FNEW 	  4		216	; N/A:0-0: 3 args, 0 upvalues, 30 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		11	; slot3 = _env["love"]
		  2	[  0]	TGETS	  3	3	10	; slot3 = love.image
		  3	[  0]	TGETS	  3	3	9	; slot3 = love.image.newImageData
		  4	[  0]	MOV  	  5		0	; slot5 = slot0
		  5	[  0]	MOV  	  6		1	; slot6 = slot1
		  6	[  0]	CALL 	  3	2	3	; slot3 = love.image.newImageData(slot4, slot5)
		  7	[  0]	SUBVN	  4	0	0	; slot4 = slot0 - 1
		  8	[  0]	MULVN	  4	4	1	; slot4 = slot4 * 0.5
		  9	[  0]	SUBVN	  5	1	0	; slot5 = slot1 - 1
		 10	[  0]	MULVN	  5	5	2	; slot5 = slot5 * 0.62
		 11	[  0]	GGET 	  6		8	; slot6 = _env["math"]
		 12	[  0]	TGETS	  6	6	7	; slot6 = math.max
		 13	[  0]	KSHORT	  8		1	; slot8 = 1
		 14	[  0]	SUBVN	  9	0	3	; slot9 = slot0 - 2
		 15	[  0]	MULVN	  9	9	1	; slot9 = slot9 * 0.5
		 16	[  0]	CALL 	  6	2	3	; slot6 = math.max(slot7, slot8)
		 17	[  0]	GGET 	  7		8	; slot7 = _env["math"]
		 18	[  0]	TGETS	  7	7	7	; slot7 = math.max
		 19	[  0]	KSHORT	  9		1	; slot9 = 1
		 20	[  0]	SUBVN	 10	1	3	; slot10 = slot1 - 2
		 21	[  0]	MULVN	 10	10	1	; slot10 = slot10 * 0.5
		 22	[  0]	CALL 	  7	2	3	; slot7 = math.max(slot8, slot9)
		 23	[  0]	ISTC 	  8		2	; slot8 = slot2; if slot2
		 24	[  0]	JMP  	  8		1	; 	goto 26
		 25	[  0]	KSHORT	  8		2	; slot8 = 2
		 26	[  0]	KSHORT	  9		0	; slot9 = 0
		 27	[  0]	SUBVN	 10	1	0	; slot10 = slot1 - 1
		 28	[  0]	KSHORT	 11		1	; slot11 = 1
		 29	[  0]	FORI 	  9		44	; for slot12 = slot9,slot10,slot11 else goto 74
		 30	[  0]	KSHORT	 13		0	; slot13 = 0
		 31	[  0]	SUBVN	 14	0	0	; slot14 = slot0 - 1
		 32	[  0]	KSHORT	 15		1	; slot15 = 1
		 33	[  0]	FORI 	 13		39	; for slot16 = slot13,slot14,slot15 else goto 73
		 34	[  0]	SUBVV	 17	16	4	; slot17 = slot16 - slot4
		 35	[  0]	DIVVV	 17	17	6	; slot17 = slot17 / math.max
		 36	[  0]	SUBVV	 18	12	5	; slot18 = slot12 - slot5
		 37	[  0]	DIVVV	 18	18	7	; slot18 = slot18 / math.max
		 38	[  0]	GGET 	 19		8	; slot19 = _env["math"]
		 39	[  0]	TGETS	 19	19	6	; slot19 = math.pow
		 40	[  0]	GGET 	 21		8	; slot21 = _env["math"]
		 41	[  0]	TGETS	 21	21	5	; slot21 = math.abs
		 42	[  0]	MOV  	 23		17	; slot23 = slot17
		 43	[  0]	CALL 	 21	2	2	; slot21 = math.abs(slot22)
		 44	[  0]	MOV  	 22		8	; slot22 = slot8
		 45	[  0]	CALL 	 19	2	3	; slot19 = math.pow(slot20, math.abs)
		 46	[  0]	GGET 	 20		8	; slot20 = _env["math"]
		 47	[  0]	TGETS	 20	20	6	; slot20 = math.pow
		 48	[  0]	GGET 	 22		8	; slot22 = _env["math"]
		 49	[  0]	TGETS	 22	22	5	; slot22 = math.abs
		 50	[  0]	MOV  	 24		18	; slot24 = slot18
		 51	[  0]	CALL 	 22	2	2	; slot22 = math.abs(slot23)
		 52	[  0]	MOV  	 23		8	; slot23 = slot8
		 53	[  0]	CALL 	 20	2	3	; slot20 = math.pow(math.abs, math.abs)
		 54	[  0]	ADDVV	 19	19	20	; slot19 = math.pow + math.pow
		 55	[  0]	KSHORT	 20		0	; slot20 = 0
		 56	[  0]	SUBVN	 21	1	0	; slot21 = slot1 - 1
		 57	[  0]	ISGE 	 12		21	; if slot12 >= slot21
		 58	[  0]	JMP  	 21		4	; 	goto 63
		 59	[  0]	KSHORT	 21		1	; slot21 = 1
		 60	[  0]	ISGT 	 19		21	; if slot19 > slot21
		 61	[  0]	JMP  	 21		1	; 	goto 63
		 62	[  0]	KNUM 	 20		4	; slot20 = 0.36
		 63	[  0]	MOV  	 23		3	; slot23 = slot3
		 64	[  0]	TGETS	 21	3	4	; slot21 = slot3.setPixel
		 65	[  0]	MOV  	 24		16	; slot24 = slot16
		 66	[  0]	MOV  	 25		12	; slot25 = slot12
		 67	[  0]	KSHORT	 26		0	; slot26 = 0
		 68	[  0]	KSHORT	 27		0	; slot27 = 0
		 69	[  0]	KSHORT	 28		0	; slot28 = 0
		 70	[  0]	MOV  	 29		20	; slot29 = slot20
		 71	[  0]	CALL 	 21	1	8	;  = <unknown table>.setPixel(math.abs, slot23, slot24, slot25, slot26, slot27, slot28)
		 72	[  0]	FORL 	 13		-39	; slot16 = slot16 + slot15; if cmp(slot16, sign slot15,  slot14) goto 34
		 73	[  0]	FORL 	  9		-44	; slot12 = slot12 + slot11; if cmp(slot12, sign slot11,  slot10) goto 30
		 74	[  0]	GGET 	  9		11	; slot9 = _env["love"]
		 75	[  0]	TGETS	  9	9	3	; slot9 = love.graphics
		 76	[  0]	TGETS	  9	9	2	; slot9 = love.graphics.newImage
		 77	[  0]	MOV  	 11		3	; slot11 = slot3
		 78	[  0]	CALL 	  9	2	2	; slot9 = love.graphics.newImage(slot10)
		 79	[  0]	MOV  	 12		9	; slot12 = love.graphics.newImage
		 80	[  0]	TGETS	 10	9	1	; slot10 = love.graphics.newImage.setFilter
		 81	[  0]	KSTR 	 13		0	; slot13 = "nearest"
		 82	[  0]	KSTR 	 14		0	; slot14 = "nearest"
		 83	[  0]	CALL 	 10	1	4	;  = love.graphics.newImage.setFilter(slot11, love.graphics.newImage, slot13)
		 84	[  0]	RET1 	  9		2	; return love.graphics.newImage
	  6	[  0]	FNEW 	  5		215	; N/A:0-0: 3 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		2	; slot3 = _env["tostring"]
		  2	[  0]	MOV  	  5		0	; slot5 = slot0
		  3	[  0]	CALL 	  3	2	2	; slot3 = tostring(slot4)
		  4	[  0]	KSTR 	  4		1	; slot4 = "x"
		  5	[  0]	GGET 	  5		2	; slot5 = _env["tostring"]
		  6	[  0]	MOV  	  7		1	; slot7 = slot1
		  7	[  0]	CALL 	  5	2	2	; slot5 = tostring(slot6)
		  8	[  0]	KSTR 	  6		0	; slot6 = "p"
		  9	[  0]	GGET 	  7		2	; slot7 = _env["tostring"]
		 10	[  0]	ISTC 	  9		2	; slot9 = slot2; if slot2
		 11	[  0]	JMP  	  9		1	; 	goto 13
		 12	[  0]	KSHORT	  9		2	; slot9 = 2
		 13	[  0]	CALL 	  7	2	2	; slot7 = tostring(slot8)
		 14	[  0]	CAT  	  3	3	7	; slot3 = tostring .. slot4 .. tostring .. slot6 .. tostring
		 15	[  0]	RET1 	  3		2	; return slot3
	  7	[  0]	FNEW 	  6		213	; N/A:0-0: 3 args, 3 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		2	; slot3 = _env["math"]
		  2	[  0]	TGETS	  3	3	1	; slot3 = math.max
		  3	[  0]	KSHORT	  5		1	; slot5 = 1
		  4	[  0]	GGET 	  6		2	; slot6 = _env["math"]
		  5	[  0]	TGETS	  6	6	0	; slot6 = math.floor
		  6	[  0]	ISTC 	  8		0	; slot8 = slot0; if slot0
		  7	[  0]	JMP  	  8		1	; 	goto 9
		  8	[  0]	KSHORT	  8		1	; slot8 = 1
		  9	[  0]	CALL 	  6	0	2	; MULTRES = math.floor(slot7)
		 10	[  0]	CALLM	  3	2	1	; slot3 = math.max(slot4, ...MULTRES)
		 11	[  0]	MOV  	  0		3	; slot0 = math.max
		 12	[  0]	GGET 	  3		2	; slot3 = _env["math"]
		 13	[  0]	TGETS	  3	3	1	; slot3 = math.max
		 14	[  0]	KSHORT	  5		1	; slot5 = 1
		 15	[  0]	GGET 	  6		2	; slot6 = _env["math"]
		 16	[  0]	TGETS	  6	6	0	; slot6 = math.floor
		 17	[  0]	ISTC 	  8		1	; slot8 = slot1; if slot1
		 18	[  0]	JMP  	  8		1	; 	goto 20
		 19	[  0]	KSHORT	  8		1	; slot8 = 1
		 20	[  0]	CALL 	  6	0	2	; MULTRES = math.floor(slot7)
		 21	[  0]	CALLM	  3	2	1	; slot3 = math.max(slot4, ...MULTRES)
		 22	[  0]	MOV  	  1		3	; slot1 = math.max
		 23	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 24	[  0]	MOV  	  5		0	; slot5 = math.max
		 25	[  0]	MOV  	  6		1	; slot6 = math.max
		 26	[  0]	MOV  	  7		2	; slot7 = slot2
		 27	[  0]	CALL 	  3	2	4	; slot3 = uv0"unknown"(slot4, math.max, math.max)
		 28	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 29	[  0]	TGETV	  4	4	3	; slot4 = uv1"unknown"[slot3]
		 30	[  0]	IST  	   		4	; if slot4
		 31	[  0]	JMP  	  5		8	; 	goto 40
		 32	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 33	[  0]	MOV  	  7		0	; slot7 = math.max
		 34	[  0]	MOV  	  8		1	; slot8 = math.max
		 35	[  0]	MOV  	  9		2	; slot9 = slot2
		 36	[  0]	CALL 	  5	2	4	; slot5 = uv2"unknown"(math.max, math.max, math.max)
		 37	[  0]	MOV  	  4		5	; slot4 = uv2"unknown"
		 38	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 39	[  0]	TSETV	  4	5	3	; uv1"unknown"[slot3] = uv2"unknown"
		 40	[  0]	MOV  	  5		4	; slot5 = uv2"unknown"
		 41	[  0]	MOV  	  6		0	; slot6 = math.max
		 42	[  0]	MOV  	  7		1	; slot7 = math.max
		 43	[  0]	RET  	  5		4	; return uv2"unknown", math.max, math.max
	  8	[  0]	TSETS	  6	1	214	; slot1.get = slot6
	  9	[  0]	FNEW 	  6		211	; N/A:0-0: 8 args, 2 upvalues, 26 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		4	; if not slot4
		  2	[  0]	JMP  	  8		3	; 	goto 6
		  3	[  0]	KSHORT	  8		0	; slot8 = 0
		  4	[  0]	ISGT 	  4		8	; if slot4 > slot8
		  5	[  0]	JMP  	  8		1	; 	goto 7
		  6	[  0]	RET0 	  0		1	; return
		  7	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		  8	[  0]	TGETS	  8	8	11	; slot8 = uv0"unknown".get
		  9	[  0]	MOV  	 10		2	; slot10 = slot2
		 10	[  0]	MOV  	 11		3	; slot11 = slot3
		 11	[  0]	MOV  	 12		7	; slot12 = slot7
		 12	[  0]	CALL 	  8	4	4	; slot8, slot9, slot10 = uv0"unknown".get(slot9, slot10, slot11)
		 13	[  0]	IST  	   		8	; if uv0"unknown".get
		 14	[  0]	JMP  	 11		1	; 	goto 16
		 15	[  0]	RET0 	  0		1	; return
		 16	[  0]	UGET 	 11		1	; slot11 = uv1"unknwon"
		 17	[  0]	ISTC 	 13		5	; slot13 = slot5; if slot5
		 18	[  0]	JMP  	 13		1	; 	goto 20
		 19	[  0]	KSHORT	 13		1	; slot13 = 1
		 20	[  0]	CALL 	 11	2	2	; slot11 = uv1"unknown"(slot12)
		 21	[  0]	MOV  	  5		11	; slot5 = uv1"unknown"
		 22	[  0]	GGET 	 11		10	; slot11 = _env["love"]
		 23	[  0]	TGETS	 11	11	9	; slot11 = love.graphics
		 24	[  0]	TGETS	 11	11	8	; slot11 = love.graphics.getBlendMode
		 25	[  0]	CALL 	 11	3	1	; slot11, slot12 = love.graphics.getBlendMode()
		 26	[  0]	GGET 	 13		10	; slot13 = _env["love"]
		 27	[  0]	TGETS	 13	13	9	; slot13 = love.graphics
		 28	[  0]	TGETS	 13	13	7	; slot13 = love.graphics.setBlendMode
		 29	[  0]	KSTR 	 15		6	; slot15 = "alpha"
		 30	[  0]	CALL 	 13	1	2	;  = love.graphics.setBlendMode(slot14)
		 31	[  0]	KSHORT	 13		1	; slot13 = 1
		 32	[  0]	KSHORT	 14		1	; slot14 = 1
		 33	[  0]	KSHORT	 15		1	; slot15 = 1
		 34	[  0]	ISF  	   		6	; if not slot6
		 35	[  0]	JMP  	 16		17	; 	goto 53
		 36	[  0]	GGET 	 16		5	; slot16 = _env["type"]
		 37	[  0]	MOV  	 18		6	; slot18 = slot6
		 38	[  0]	CALL 	 16	2	2	; slot16 = type(slot17)
		 39	[  0]	ISNES	 16		4	; if type ~= "table"
		 40	[  0]	JMP  	 16		12	; 	goto 53
		 41	[  0]	TGETB	 16	6	1	; slot16 = slot6[1]
		 42	[  0]	ISTC 	 13		16	; slot13 = slot16; if slot16
		 43	[  0]	JMP  	 17		1	; 	goto 45
		 44	[  0]	KSHORT	 13		1	; slot13 = 1
		 45	[  0]	TGETB	 16	6	2	; slot16 = slot6[2]
		 46	[  0]	ISTC 	 14		16	; slot14 = slot16; if slot16
		 47	[  0]	JMP  	 17		1	; 	goto 49
		 48	[  0]	KSHORT	 14		1	; slot14 = 1
		 49	[  0]	TGETB	 16	6	3	; slot16 = slot6[3]
		 50	[  0]	ISTC 	 15		16	; slot15 = slot16; if slot16
		 51	[  0]	JMP  	 17		1	; 	goto 53
		 52	[  0]	KSHORT	 15		1	; slot15 = 1
		 53	[  0]	GGET 	 16		10	; slot16 = _env["love"]
		 54	[  0]	TGETS	 16	16	9	; slot16 = love.graphics
		 55	[  0]	TGETS	 16	16	3	; slot16 = love.graphics.setColor
		 56	[  0]	MOV  	 18		13	; slot18 = slot13
		 57	[  0]	MOV  	 19		14	; slot19 = slot14
		 58	[  0]	MOV  	 20		15	; slot20 = slot15
		 59	[  0]	MOV  	 21		5	; slot21 = uv1"unknown"
		 60	[  0]	CALL 	 16	1	5	;  = love.graphics.setColor(slot17, slot18, slot19, slot20)
		 61	[  0]	GGET 	 16		10	; slot16 = _env["love"]
		 62	[  0]	TGETS	 16	16	9	; slot16 = love.graphics
		 63	[  0]	TGETS	 16	16	2	; slot16 = love.graphics.draw
		 64	[  0]	MOV  	 18		8	; slot18 = uv0"unknown".get
		 65	[  0]	GGET 	 19		1	; slot19 = _env["math"]
		 66	[  0]	TGETS	 19	19	0	; slot19 = math.floor
		 67	[  0]	ADDVN	 21	0	0	; slot21 = slot0 + 0.5
		 68	[  0]	CALL 	 19	2	2	; slot19 = math.floor(slot20)
		 69	[  0]	GGET 	 20		1	; slot20 = _env["math"]
		 70	[  0]	TGETS	 20	20	0	; slot20 = math.floor
		 71	[  0]	ADDVN	 22	1	0	; slot22 = slot1 + 0.5
		 72	[  0]	CALL 	 20	2	2	; slot20 = math.floor(slot21)
		 73	[  0]	KSHORT	 21		0	; slot21 = 0
		 74	[  0]	MOV  	 22		4	; slot22 = slot4
		 75	[  0]	MOV  	 23		4	; slot23 = slot4
		 76	[  0]	DIVVN	 24	9	1	; slot24 = slot9 / 2
		 77	[  0]	MOV  	 25		10	; slot25 = slot10
		 78	[  0]	CALL 	 16	1	9	;  = love.graphics.draw(slot17, uv0"unknown".get, math.floor, math.floor, slot21, slot22, slot23, slot24)
		 79	[  0]	GGET 	 16		10	; slot16 = _env["love"]
		 80	[  0]	TGETS	 16	16	9	; slot16 = love.graphics
		 81	[  0]	TGETS	 16	16	3	; slot16 = love.graphics.setColor
		 82	[  0]	KSHORT	 18		1	; slot18 = 1
		 83	[  0]	KSHORT	 19		1	; slot19 = 1
		 84	[  0]	KSHORT	 20		1	; slot20 = 1
		 85	[  0]	KSHORT	 21		1	; slot21 = 1
		 86	[  0]	CALL 	 16	1	5	;  = love.graphics.setColor(slot17, slot18, slot19, slot20)
		 87	[  0]	ISF  	   		11	; if not love.graphics.getBlendMode
		 88	[  0]	JMP  	 16		6	; 	goto 95
		 89	[  0]	GGET 	 16		10	; slot16 = _env["love"]
		 90	[  0]	TGETS	 16	16	9	; slot16 = love.graphics
		 91	[  0]	TGETS	 16	16	7	; slot16 = love.graphics.setBlendMode
		 92	[  0]	MOV  	 18		11	; slot18 = love.graphics.getBlendMode
		 93	[  0]	MOV  	 19		12	; slot19 = slot12
		 94	[  0]	CALL 	 16	1	3	;  = love.graphics.setBlendMode(slot17, love.graphics.getBlendMode)
		 95	[  0]	RET0 	  0		1	; return
	 10	[  0]	TSETS	  6	1	212	; slot1.draw = slot6
	 11	[  0]	MOV  	  0		1	; slot0 = slot1
	 12	[  0]	UCLO 	  1		0	; nil uvs >= r1; goto 13
	 13	[  0]	KPRI 	  1		0	; slot1 = nil
	 14	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
	 15	[  0]	FNEW 	  3		210	; N/A:0-0: 1 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		0	; slot1 = _env["tonumber"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		  4	[  0]	ISTC 	  0		1	; slot0 = slot1; if slot1
		  5	[  0]	JMP  	  2		1	; 	goto 7
		  6	[  0]	KSHORT	  0		0	; slot0 = 0
		  7	[  0]	KSHORT	  1		0	; slot1 = 0
		  8	[  0]	ISGE 	  0		1	; if slot0 >= slot1
		  9	[  0]	JMP  	  1		2	; 	goto 12
		 10	[  0]	KSHORT	  1		0	; slot1 = 0
		 11	[  0]	RET1 	  1		2	; return slot1
		 12	[  0]	KSHORT	  1		1	; slot1 = 1
		 13	[  0]	ISGE 	  1		0	; if slot1 >= slot0
		 14	[  0]	JMP  	  1		2	; 	goto 17
		 15	[  0]	KSHORT	  1		1	; slot1 = 1
		 16	[  0]	RET1 	  1		2	; return slot1
		 17	[  0]	RET1 	  0		2	; return slot0
	 16	[  0]	FNEW 	  4		208	; N/A:0-0: 1 args, 0 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		ktable#13 = [
			#1: 0.05,
			#2: 0.05,
			#3: 0.05,
			#4: 0.85,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		1	; 	goto 4
		  3	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
		  4	[  0]	TGETS	  1	0	14	; slot1 = slot0.bgColor
		  5	[  0]	IST  	   		1	; if <unknown table>.bgColor
		  6	[  0]	JMP  	  2		1	; 	goto 8
		  7	[  0]	TDUP 	  1		13	; slot1 = copy table#k13
		  8	[  0]	GGET 	  2		12	; slot2 = _env["tonumber"]
		  9	[  0]	TGETS	  4	0	11	; slot4 = slot0.alphaMul
		 10	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 11	[  0]	IST  	   		2	; if slot2
		 12	[  0]	JMP  	  3		1	; 	goto 14
		 13	[  0]	KSHORT	  2		1	; slot2 = 1
		 14	[  0]	GGET 	  3		10	; slot3 = _env["love"]
		 15	[  0]	TGETS	  3	3	9	; slot3 = love.graphics
		 16	[  0]	TGETS	  3	3	8	; slot3 = love.graphics.setColor
		 17	[  0]	TGETB	  5	1	1	; slot5 = slot1[1]
		 18	[  0]	IST  	   		5	; if slot5
		 19	[  0]	JMP  	  6		1	; 	goto 21
		 20	[  0]	KSHORT	  5		0	; slot5 = 0
		 21	[  0]	TGETB	  6	1	2	; slot6 = slot1[2]
		 22	[  0]	IST  	   		6	; if slot6
		 23	[  0]	JMP  	  7		1	; 	goto 25
		 24	[  0]	KSHORT	  6		0	; slot6 = 0
		 25	[  0]	TGETB	  7	1	3	; slot7 = slot1[3]
		 26	[  0]	IST  	   		7	; if slot7
		 27	[  0]	JMP  	  8		1	; 	goto 29
		 28	[  0]	KSHORT	  7		0	; slot7 = 0
		 29	[  0]	TGETB	  8	1	4	; slot8 = slot1[4]
		 30	[  0]	IST  	   		8	; if slot8
		 31	[  0]	JMP  	  9		1	; 	goto 33
		 32	[  0]	KSHORT	  8		1	; slot8 = 1
		 33	[  0]	MULVV	  8	8	2	; slot8 = slot8 * slot2
		 34	[  0]	CALL 	  3	1	5	;  = love.graphics.setColor(<unknown table>.alphaMul, slot5, slot6, slot7)
		 35	[  0]	GGET 	  3		10	; slot3 = _env["love"]
		 36	[  0]	TGETS	  3	3	9	; slot3 = love.graphics
		 37	[  0]	TGETS	  3	3	7	; slot3 = love.graphics.rectangle
		 38	[  0]	KSTR 	  5		6	; slot5 = "fill"
		 39	[  0]	TGETS	  6	0	5	; slot6 = slot0.x
		 40	[  0]	IST  	   		6	; if <unknown table>.x
		 41	[  0]	JMP  	  7		1	; 	goto 43
		 42	[  0]	KSHORT	  6		0	; slot6 = 0
		 43	[  0]	TGETS	  7	0	4	; slot7 = slot0.y
		 44	[  0]	IST  	   		7	; if <unknown table>.y
		 45	[  0]	JMP  	  8		1	; 	goto 47
		 46	[  0]	KSHORT	  7		0	; slot7 = 0
		 47	[  0]	GGET 	  8		3	; slot8 = _env["math"]
		 48	[  0]	TGETS	  8	8	2	; slot8 = math.max
		 49	[  0]	KSHORT	 10		0	; slot10 = 0
		 50	[  0]	GGET 	 11		12	; slot11 = _env["tonumber"]
		 51	[  0]	TGETS	 13	0	1	; slot13 = slot0.w
		 52	[  0]	CALL 	 11	2	2	; slot11 = tonumber(slot12)
		 53	[  0]	IST  	   		11	; if tonumber
		 54	[  0]	JMP  	 12		1	; 	goto 56
		 55	[  0]	KSHORT	 11		0	; slot11 = 0
		 56	[  0]	CALL 	  8	2	3	; slot8 = math.max(slot9, slot10)
		 57	[  0]	GGET 	  9		3	; slot9 = _env["math"]
		 58	[  0]	TGETS	  9	9	2	; slot9 = math.max
		 59	[  0]	KSHORT	 11		0	; slot11 = 0
		 60	[  0]	GGET 	 12		12	; slot12 = _env["tonumber"]
		 61	[  0]	TGETS	 14	0	0	; slot14 = slot0.h
		 62	[  0]	CALL 	 12	2	2	; slot12 = tonumber(<unknown table>.w)
		 63	[  0]	IST  	   		12	; if tonumber
		 64	[  0]	JMP  	 13		1	; 	goto 66
		 65	[  0]	KSHORT	 12		0	; slot12 = 0
		 66	[  0]	CALL 	  9	0	3	; MULTRES = math.max(slot10, slot11)
		 67	[  0]	CALLM	  3	1	4	;  = love.graphics.rectangle(slot4, slot5, slot6, slot7, ...MULTRES)
		 68	[  0]	RET0 	  0		1	; return
	 17	[  0]	TSETS	  4	2	209	; slot2.drawTrack = slot4
	 18	[  0]	FNEW 	  4		206	; N/A:0-0: 1 args, 1 upvalues, 47 slots
		
		;;;; constant tables ;;;;
		ktable#28 = [
			#1: 0.2,
			#2: 0.8,
			#3: 0.4,
			#4: 0.95,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		1	; 	goto 4
		  3	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
		  4	[  0]	GGET 	  1		37	; slot1 = _env["tonumber"]
		  5	[  0]	TGETS	  3	0	36	; slot3 = slot0.x
		  6	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		  7	[  0]	IST  	   		1	; if slot1
		  8	[  0]	JMP  	  2		1	; 	goto 10
		  9	[  0]	KSHORT	  1		0	; slot1 = 0
		 10	[  0]	GGET 	  2		37	; slot2 = _env["tonumber"]
		 11	[  0]	TGETS	  4	0	35	; slot4 = slot0.y
		 12	[  0]	CALL 	  2	2	2	; slot2 = tonumber(<unknown table>.x)
		 13	[  0]	IST  	   		2	; if slot2
		 14	[  0]	JMP  	  3		1	; 	goto 16
		 15	[  0]	KSHORT	  2		0	; slot2 = 0
		 16	[  0]	GGET 	  3		34	; slot3 = _env["math"]
		 17	[  0]	TGETS	  3	3	33	; slot3 = math.max
		 18	[  0]	KSHORT	  5		0	; slot5 = 0
		 19	[  0]	GGET 	  6		37	; slot6 = _env["tonumber"]
		 20	[  0]	TGETS	  8	0	32	; slot8 = slot0.w
		 21	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
		 22	[  0]	IST  	   		6	; if tonumber
		 23	[  0]	JMP  	  7		1	; 	goto 25
		 24	[  0]	KSHORT	  6		0	; slot6 = 0
		 25	[  0]	CALL 	  3	2	3	; slot3 = math.max(<unknown table>.y, slot5)
		 26	[  0]	GGET 	  4		34	; slot4 = _env["math"]
		 27	[  0]	TGETS	  4	4	33	; slot4 = math.max
		 28	[  0]	KSHORT	  6		0	; slot6 = 0
		 29	[  0]	GGET 	  7		37	; slot7 = _env["tonumber"]
		 30	[  0]	TGETS	  9	0	31	; slot9 = slot0.h
		 31	[  0]	CALL 	  7	2	2	; slot7 = tonumber(<unknown table>.w)
		 32	[  0]	IST  	   		7	; if tonumber
		 33	[  0]	JMP  	  8		1	; 	goto 35
		 34	[  0]	KSHORT	  7		0	; slot7 = 0
		 35	[  0]	CALL 	  4	2	3	; slot4 = math.max(slot5, slot6)
		 36	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 37	[  0]	TGETS	  7	0	30	; slot7 = slot0.progress
		 38	[  0]	CALL 	  5	2	2	; slot5 = uv0"unknown"(slot6)
		 39	[  0]	MULVV	  6	3	5	; slot6 = slot3 * uv0"unknown"
		 40	[  0]	KSHORT	  7		0	; slot7 = 0
		 41	[  0]	ISLE 	  6		7	; if slot6 <= slot7
		 42	[  0]	JMP  	  7		3	; 	goto 46
		 43	[  0]	KSHORT	  7		0	; slot7 = 0
		 44	[  0]	ISGT 	  4		7	; if math.max > slot7
		 45	[  0]	JMP  	  7		2	; 	goto 48
		 46	[  0]	KSHORT	  7		0	; slot7 = 0
		 47	[  0]	RET1 	  7		2	; return slot7
		 48	[  0]	TGETS	  7	0	29	; slot7 = slot0.fillColor
		 49	[  0]	IST  	   		7	; if <unknown table>.fillColor
		 50	[  0]	JMP  	  8		1	; 	goto 52
		 51	[  0]	TDUP 	  7		28	; slot7 = copy table#k28
		 52	[  0]	GGET 	  8		37	; slot8 = _env["tonumber"]
		 53	[  0]	TGETS	 10	0	27	; slot10 = slot0.alphaMul
		 54	[  0]	CALL 	  8	2	2	; slot8 = tonumber(<unknown table>.h)
		 55	[  0]	IST  	   		8	; if tonumber
		 56	[  0]	JMP  	  9		1	; 	goto 58
		 57	[  0]	KSHORT	  8		1	; slot8 = 1
		 58	[  0]	GGET 	  9		26	; slot9 = _env["love"]
		 59	[  0]	TGETS	  9	9	25	; slot9 = love.graphics
		 60	[  0]	TGETS	  9	9	24	; slot9 = love.graphics.setColor
		 61	[  0]	TGETB	 11	7	1	; slot11 = slot7[1]
		 62	[  0]	IST  	   		11	; if slot11
		 63	[  0]	JMP  	 12		1	; 	goto 65
		 64	[  0]	KSHORT	 11		1	; slot11 = 1
		 65	[  0]	TGETB	 12	7	2	; slot12 = slot7[2]
		 66	[  0]	IST  	   		12	; if slot12
		 67	[  0]	JMP  	 13		1	; 	goto 69
		 68	[  0]	KSHORT	 12		1	; slot12 = 1
		 69	[  0]	TGETB	 13	7	3	; slot13 = slot7[3]
		 70	[  0]	IST  	   		13	; if slot13
		 71	[  0]	JMP  	 14		1	; 	goto 73
		 72	[  0]	KSHORT	 13		1	; slot13 = 1
		 73	[  0]	TGETB	 14	7	4	; slot14 = slot7[4]
		 74	[  0]	IST  	   		14	; if slot14
		 75	[  0]	JMP  	 15		1	; 	goto 77
		 76	[  0]	KSHORT	 14		1	; slot14 = 1
		 77	[  0]	MULVV	 14	14	8	; slot14 = slot14 * slot8
		 78	[  0]	CALL 	  9	1	5	;  = love.graphics.setColor(<unknown table>.alphaMul, slot11, slot12, slot13)
		 79	[  0]	GGET 	  9		26	; slot9 = _env["love"]
		 80	[  0]	TGETS	  9	9	25	; slot9 = love.graphics
		 81	[  0]	TGETS	  9	9	23	; slot9 = love.graphics.rectangle
		 82	[  0]	KSTR 	 11		22	; slot11 = "fill"
		 83	[  0]	MOV  	 12		1	; slot12 = slot1
		 84	[  0]	MOV  	 13		2	; slot13 = slot2
		 85	[  0]	MOV  	 14		6	; slot14 = slot6
		 86	[  0]	MOV  	 15		4	; slot15 = math.max
		 87	[  0]	CALL 	  9	1	6	;  = love.graphics.rectangle(<unknown table>.alphaMul, slot11, slot12, slot13, slot14)
		 88	[  0]	TGETS	  9	0	21	; slot9 = slot0.bloom
		 89	[  0]	ISNEP	  9		1	; if <unknown table>.bloom ~= false
		 90	[  0]	JMP  	 10		1	; 	goto 92
		 91	[  0]	RET1 	  6		2	; return slot6
		 92	[  0]	ISEQP	  9		0	; if <unknown table>.bloom == nil
		 93	[  0]	JMP  	 10		3	; 	goto 97
		 94	[  0]	TGETS	 10	9	20	; slot10 = <unknown table>.bloom.enabled
		 95	[  0]	ISEQP	 10		1	; if <unknown table>.bloom.enabled == false
		 96	[  0]	JMP  	 10		176	; 	goto 273
		 97	[  0]	TGETS	 10	0	19	; slot10 = slot0.bloomProgress
		 98	[  0]	ISNEP	 10		0	; if <unknown table>.bloomProgress ~= nil
		 99	[  0]	JMP  	 11		1	; 	goto 101
		100	[  0]	MOV  	 10		5	; slot10 = uv0"unknown"
		101	[  0]	UGET 	 11		0	; slot11 = uv0"unknwon"
		102	[  0]	MOV  	 13		10	; slot13 = uv0"unknown"
		103	[  0]	CALL 	 11	2	2	; slot11 = uv0"unknown"(slot12)
		104	[  0]	MULVV	 11	3	11	; slot11 = slot3 * uv0"unknown"
		105	[  0]	KSHORT	 12		0	; slot12 = 0
		106	[  0]	ISGT 	 11		12	; if slot11 > slot12
		107	[  0]	JMP  	 12		1	; 	goto 109
		108	[  0]	RET1 	  6		2	; return slot6
		109	[  0]	IST  	   		9	; if <unknown table>.bloom
		110	[  0]	JMP  	 12		1	; 	goto 112
		111	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
		112	[  0]	TGETS	 12	9	18	; slot12 = slot9.color
		113	[  0]	IST  	   		12	; if <unknown table>.color
		114	[  0]	JMP  	 13		4	; 	goto 119
		115	[  0]	TGETS	 12	0	17	; slot12 = slot0.previewColor
		116	[  0]	IST  	   		12	; if <unknown table>.previewColor
		117	[  0]	JMP  	 13		1	; 	goto 119
		118	[  0]	MOV  	 12		7	; slot12 = slot7
		119	[  0]	GGET 	 13		37	; slot13 = _env["tonumber"]
		120	[  0]	TGETS	 15	9	16	; slot15 = slot9.alpha
		121	[  0]	CALL 	 13	2	2	; slot13 = tonumber(slot14)
		122	[  0]	IST  	   		13	; if tonumber
		123	[  0]	JMP  	 14		1	; 	goto 125
		124	[  0]	KNUM 	 13		0	; slot13 = 0.16
		125	[  0]	GGET 	 14		37	; slot14 = _env["tonumber"]
		126	[  0]	TGETS	 16	9	15	; slot16 = slot9.pulseAmp
		127	[  0]	CALL 	 14	2	2	; slot14 = tonumber(<unknown table>.alpha)
		128	[  0]	IST  	   		14	; if tonumber
		129	[  0]	JMP  	 15		1	; 	goto 131
		130	[  0]	KSHORT	 14		0	; slot14 = 0
		131	[  0]	GGET 	 15		37	; slot15 = _env["tonumber"]
		132	[  0]	TGETS	 17	9	14	; slot17 = slot9.pulseHz
		133	[  0]	CALL 	 15	2	2	; slot15 = tonumber(<unknown table>.pulseAmp)
		134	[  0]	IST  	   		15	; if tonumber
		135	[  0]	JMP  	 16		1	; 	goto 137
		136	[  0]	KSHORT	 15		0	; slot15 = 0
		137	[  0]	GGET 	 16		37	; slot16 = _env["tonumber"]
		138	[  0]	TGETS	 18	9	13	; slot18 = slot9.expand
		139	[  0]	CALL 	 16	2	2	; slot16 = tonumber(<unknown table>.pulseHz)
		140	[  0]	IST  	   		16	; if tonumber
		141	[  0]	JMP  	 17		1	; 	goto 143
		142	[  0]	KSHORT	 16		6	; slot16 = 6
		143	[  0]	GGET 	 17		34	; slot17 = _env["math"]
		144	[  0]	TGETS	 17	17	33	; slot17 = math.max
		145	[  0]	KSHORT	 19		1	; slot19 = 1
		146	[  0]	GGET 	 20		34	; slot20 = _env["math"]
		147	[  0]	TGETS	 20	20	12	; slot20 = math.floor
		148	[  0]	GGET 	 22		37	; slot22 = _env["tonumber"]
		149	[  0]	TGETS	 24	9	11	; slot24 = slot9.layers
		150	[  0]	CALL 	 22	2	2	; slot22 = tonumber(slot23)
		151	[  0]	IST  	   		22	; if tonumber
		152	[  0]	JMP  	 23		1	; 	goto 154
		153	[  0]	KSHORT	 22		12	; slot22 = 12
		154	[  0]	CALL 	 20	0	2	; MULTRES = math.floor(slot21)
		155	[  0]	CALLM	 17	2	1	; slot17 = math.max(<unknown table>.expand, ...MULTRES)
		156	[  0]	GGET 	 18		37	; slot18 = _env["tonumber"]
		157	[  0]	TGETS	 20	9	10	; slot20 = slot9.softness
		158	[  0]	CALL 	 18	2	2	; slot18 = tonumber(slot19)
		159	[  0]	IST  	   		18	; if tonumber
		160	[  0]	JMP  	 19		1	; 	goto 162
		161	[  0]	KNUM 	 18		1	; slot18 = 2.4
		162	[  0]	KSHORT	 19		1	; slot19 = 1
		163	[  0]	KSHORT	 20		0	; slot20 = 0
		164	[  0]	ISGE 	 20		14	; if slot20 >= slot14
		165	[  0]	JMP  	 20		17	; 	goto 183
		166	[  0]	KSHORT	 20		0	; slot20 = 0
		167	[  0]	ISGE 	 20		15	; if slot20 >= slot15
		168	[  0]	JMP  	 20		14	; 	goto 183
		169	[  0]	GGET 	 20		34	; slot20 = _env["math"]
		170	[  0]	TGETS	 20	20	9	; slot20 = math.sin
		171	[  0]	GGET 	 22		26	; slot22 = _env["love"]
		172	[  0]	TGETS	 22	22	8	; slot22 = love.timer
		173	[  0]	TGETS	 22	22	7	; slot22 = love.timer.getTime
		174	[  0]	CALL 	 22	2	1	; slot22 = love.timer.getTime()
		175	[  0]	GGET 	 23		34	; slot23 = _env["math"]
		176	[  0]	TGETS	 23	23	6	; slot23 = math.pi
		177	[  0]	MULVN	 23	23	2	; slot23 = math.pi * 2
		178	[  0]	MULVV	 22	22	23	; slot22 = love.timer.getTime * slot23
		179	[  0]	MULVV	 22	22	15	; slot22 = slot22 * slot15
		180	[  0]	CALL 	 20	2	2	; slot20 = math.sin(slot21)
		181	[  0]	MULNV	 20	20	3	; slot20 = 0.5 * math.sin
		182	[  0]	ADDNV	 19	20	3	; slot19 = 0.5 + slot20
		183	[  0]	MULVV	 20	14	19	; slot20 = slot14 * slot19
		184	[  0]	ADDVV	 20	13	20	; slot20 = slot13 + slot20
		185	[  0]	MULVV	 20	20	8	; slot20 = slot20 * slot8
		186	[  0]	TGETB	 21	12	1	; slot21 = slot12[1]
		187	[  0]	IST  	   		21	; if slot21
		188	[  0]	JMP  	 22		1	; 	goto 190
		189	[  0]	KSHORT	 21		1	; slot21 = 1
		190	[  0]	TGETB	 22	12	2	; slot22 = slot12[2]
		191	[  0]	IST  	   		22	; if slot22
		192	[  0]	JMP  	 23		1	; 	goto 194
		193	[  0]	KSHORT	 22		1	; slot22 = 1
		194	[  0]	TGETB	 23	12	3	; slot23 = slot12[3]
		195	[  0]	IST  	   		23	; if slot23
		196	[  0]	JMP  	 24		1	; 	goto 198
		197	[  0]	KSHORT	 23		1	; slot23 = 1
		198	[  0]	TGETB	 24	12	4	; slot24 = slot12[4]
		199	[  0]	IST  	   		24	; if slot24
		200	[  0]	JMP  	 25		1	; 	goto 202
		201	[  0]	KSHORT	 24		1	; slot24 = 1
		202	[  0]	GGET 	 25		26	; slot25 = _env["love"]
		203	[  0]	TGETS	 25	25	25	; slot25 = love.graphics
		204	[  0]	TGETS	 25	25	5	; slot25 = love.graphics.getBlendMode
		205	[  0]	CALL 	 25	3	1	; slot25, slot26 = love.graphics.getBlendMode()
		206	[  0]	GGET 	 27		26	; slot27 = _env["love"]
		207	[  0]	TGETS	 27	27	25	; slot27 = love.graphics
		208	[  0]	TGETS	 27	27	4	; slot27 = love.graphics.setBlendMode
		209	[  0]	KSTR 	 29		3	; slot29 = "add"
		210	[  0]	KSTR 	 30		2	; slot30 = "alphamultiply"
		211	[  0]	CALL 	 27	1	3	;  = love.graphics.setBlendMode(slot28, slot29)
		212	[  0]	GGET 	 27		37	; slot27 = _env["tonumber"]
		213	[  0]	TGETS	 29	0	1	; slot29 = slot0.scale
		214	[  0]	CALL 	 27	2	2	; slot27 = tonumber(slot28)
		215	[  0]	IST  	   		27	; if tonumber
		216	[  0]	JMP  	 28		1	; 	goto 218
		217	[  0]	KSHORT	 27		1	; slot27 = 1
		218	[  0]	MULVV	 28	16	27	; slot28 = slot16 * slot27
		219	[  0]	KSHORT	 29		1	; slot29 = 1
		220	[  0]	MOV  	 30		17	; slot30 = math.max
		221	[  0]	KSHORT	 31		1	; slot31 = 1
		222	[  0]	FORI 	 29		40	; for slot32 = slot29,slot30,slot31 else goto 263
		223	[  0]	SUBVN	 33	32	3	; slot33 = slot32 - 0.5
		224	[  0]	DIVVV	 33	33	17	; slot33 = slot33 / math.max
		225	[  0]	KNUM 	 34		4	; slot34 = 1.05
		226	[  0]	POW  	 34	33	34	; slot34 = slot33 ^ slot34 (pow)
		227	[  0]	MULVV	 34	28	34	; slot34 = slot28 * slot34
		228	[  0]	GGET 	 35		34	; slot35 = _env["math"]
		229	[  0]	TGETS	 35	35	0	; slot35 = math.exp
		230	[  0]	UNM  	 37		33	; slot37 = -slot33
		231	[  0]	MULVV	 37	37	18	; slot37 = slot37 * slot18
		232	[  0]	CALL 	 35	2	2	; slot35 = math.exp(slot36)
		233	[  0]	MULVV	 36	20	35	; slot36 = slot20 * math.exp
		234	[  0]	MULVN	 36	36	5	; slot36 = slot36 * 0.7
		235	[  0]	GGET 	 37		26	; slot37 = _env["love"]
		236	[  0]	TGETS	 37	37	25	; slot37 = love.graphics
		237	[  0]	TGETS	 37	37	24	; slot37 = love.graphics.setColor
		238	[  0]	MOV  	 39		21	; slot39 = slot21
		239	[  0]	MOV  	 40		22	; slot40 = slot22
		240	[  0]	MOV  	 41		23	; slot41 = slot23
		241	[  0]	MULVV	 42	24	36	; slot42 = slot24 * slot36
		242	[  0]	CALL 	 37	1	5	;  = love.graphics.setColor(slot38, slot39, slot40, slot41)
		243	[  0]	GGET 	 37		34	; slot37 = _env["math"]
		244	[  0]	TGETS	 37	37	33	; slot37 = math.max
		245	[  0]	KSHORT	 39		2	; slot39 = 2
		246	[  0]	MULVN	 40	4	6	; slot40 = math.max * 0.6
		247	[  0]	ADDVV	 40	40	34	; slot40 = slot40 + slot34
		248	[  0]	CALL 	 37	2	3	; slot37 = math.max(slot38, slot39)
		249	[  0]	GGET 	 38		26	; slot38 = _env["love"]
		250	[  0]	TGETS	 38	38	25	; slot38 = love.graphics
		251	[  0]	TGETS	 38	38	23	; slot38 = love.graphics.rectangle
		252	[  0]	KSTR 	 40		22	; slot40 = "fill"
		253	[  0]	SUBVV	 41	1	34	; slot41 = slot1 - slot34
		254	[  0]	SUBVV	 42	2	34	; slot42 = slot2 - slot34
		255	[  0]	MULVN	 43	34	2	; slot43 = slot34 * 2
		256	[  0]	ADDVV	 43	11	43	; slot43 = slot11 + slot43
		257	[  0]	MULVN	 44	34	2	; slot44 = slot34 * 2
		258	[  0]	ADDVV	 44	4	44	; slot44 = math.max + slot44
		259	[  0]	MOV  	 45		37	; slot45 = math.max
		260	[  0]	MOV  	 46		37	; slot46 = math.max
		261	[  0]	CALL 	 38	1	8	;  = love.graphics.rectangle(slot39, slot40, slot41, slot42, slot43, slot44, math.max)
		262	[  0]	FORL 	 29		-40	; slot32 = slot32 + slot31; if cmp(slot32, sign slot31,  slot30) goto 223
		263	[  0]	GGET 	 29		26	; slot29 = _env["love"]
		264	[  0]	TGETS	 29	29	25	; slot29 = love.graphics
		265	[  0]	TGETS	 29	29	4	; slot29 = love.graphics.setBlendMode
		266	[  0]	ISTC 	 31		25	; slot31 = love.graphics.getBlendMode; if love.graphics.getBlendMode
		267	[  0]	JMP  	 31		1	; 	goto 269
		268	[  0]	KSTR 	 31		16	; slot31 = "alpha"
		269	[  0]	ISTC 	 32		26	; slot32 = slot26; if slot26
		270	[  0]	JMP  	 32		1	; 	goto 272
		271	[  0]	KSTR 	 32		2	; slot32 = "alphamultiply"
		272	[  0]	CALL 	 29	1	3	;  = love.graphics.setBlendMode(slot30, slot31)
		273	[  0]	RET1 	  6		2	; return slot6
	 19	[  0]	TSETS	  4	2	207	; slot2.drawFill = slot4
	 20	[  0]	FNEW 	  4		204	; N/A:0-0: 1 args, 0 upvalues, 24 slots
		
		;;;; constant tables ;;;;
		ktable#7 = [
			#1: 0,
			#2: 0,
			#3: 0,
			#4: 0.15,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		1	; 	goto 4
		  3	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
		  4	[  0]	GGET 	  1		17	; slot1 = _env["math"]
		  5	[  0]	TGETS	  1	1	16	; slot1 = math.max
		  6	[  0]	KSHORT	  3		1	; slot3 = 1
		  7	[  0]	GGET 	  4		17	; slot4 = _env["math"]
		  8	[  0]	TGETS	  4	4	15	; slot4 = math.floor
		  9	[  0]	GGET 	  6		14	; slot6 = _env["tonumber"]
		 10	[  0]	TGETS	  8	0	13	; slot8 = slot0.steps
		 11	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
		 12	[  0]	IST  	   		6	; if tonumber
		 13	[  0]	JMP  	  7		1	; 	goto 15
		 14	[  0]	KSHORT	  6		1	; slot6 = 1
		 15	[  0]	CALL 	  4	0	2	; MULTRES = math.floor(slot5)
		 16	[  0]	CALLM	  1	2	1	; slot1 = math.max(slot2, ...MULTRES)
		 17	[  0]	KSHORT	  2		1	; slot2 = 1
		 18	[  0]	ISGT 	  1		2	; if slot1 > slot2
		 19	[  0]	JMP  	  2		1	; 	goto 21
		 20	[  0]	RET0 	  0		1	; return
		 21	[  0]	GGET 	  2		14	; slot2 = _env["tonumber"]
		 22	[  0]	TGETS	  4	0	12	; slot4 = slot0.x
		 23	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 24	[  0]	IST  	   		2	; if slot2
		 25	[  0]	JMP  	  3		1	; 	goto 27
		 26	[  0]	KSHORT	  2		0	; slot2 = 0
		 27	[  0]	GGET 	  3		14	; slot3 = _env["tonumber"]
		 28	[  0]	TGETS	  5	0	11	; slot5 = slot0.y
		 29	[  0]	CALL 	  3	2	2	; slot3 = tonumber(<unknown table>.x)
		 30	[  0]	IST  	   		3	; if tonumber
		 31	[  0]	JMP  	  4		1	; 	goto 33
		 32	[  0]	KSHORT	  3		0	; slot3 = 0
		 33	[  0]	GGET 	  4		17	; slot4 = _env["math"]
		 34	[  0]	TGETS	  4	4	16	; slot4 = math.max
		 35	[  0]	KSHORT	  6		0	; slot6 = 0
		 36	[  0]	GGET 	  7		14	; slot7 = _env["tonumber"]
		 37	[  0]	TGETS	  9	0	10	; slot9 = slot0.w
		 38	[  0]	CALL 	  7	2	2	; slot7 = tonumber(<unknown table>.steps)
		 39	[  0]	IST  	   		7	; if tonumber
		 40	[  0]	JMP  	  8		1	; 	goto 42
		 41	[  0]	KSHORT	  7		0	; slot7 = 0
		 42	[  0]	CALL 	  4	2	3	; slot4 = math.max(<unknown table>.y, slot6)
		 43	[  0]	GGET 	  5		17	; slot5 = _env["math"]
		 44	[  0]	TGETS	  5	5	16	; slot5 = math.max
		 45	[  0]	KSHORT	  7		0	; slot7 = 0
		 46	[  0]	GGET 	  8		14	; slot8 = _env["tonumber"]
		 47	[  0]	TGETS	 10	0	9	; slot10 = slot0.h
		 48	[  0]	CALL 	  8	2	2	; slot8 = tonumber(<unknown table>.w)
		 49	[  0]	IST  	   		8	; if tonumber
		 50	[  0]	JMP  	  9		1	; 	goto 52
		 51	[  0]	KSHORT	  8		0	; slot8 = 0
		 52	[  0]	CALL 	  5	2	3	; slot5 = math.max(slot6, slot7)
		 53	[  0]	TGETS	  6	0	8	; slot6 = slot0.gridColor
		 54	[  0]	IST  	   		6	; if <unknown table>.gridColor
		 55	[  0]	JMP  	  7		1	; 	goto 57
		 56	[  0]	TDUP 	  6		7	; slot6 = copy table#k7
		 57	[  0]	TGETS	  7	0	6	; slot7 = slot0.cellTintColor
		 58	[  0]	GGET 	  8		14	; slot8 = _env["tonumber"]
		 59	[  0]	TGETS	 10	0	5	; slot10 = slot0.alphaMul
		 60	[  0]	CALL 	  8	2	2	; slot8 = tonumber(<unknown table>.w)
		 61	[  0]	IST  	   		8	; if tonumber
		 62	[  0]	JMP  	  9		1	; 	goto 64
		 63	[  0]	KSHORT	  8		1	; slot8 = 1
		 64	[  0]	ISF  	   		7	; if not <unknown table>.cellTintColor
		 65	[  0]	JMP  	  9		52	; 	goto 118
		 66	[  0]	GGET 	  9		4	; slot9 = _env["love"]
		 67	[  0]	TGETS	  9	9	3	; slot9 = love.graphics
		 68	[  0]	TGETS	  9	9	2	; slot9 = love.graphics.setColor
		 69	[  0]	TGETB	 11	7	1	; slot11 = <unknown table>.cellTintColor[1]
		 70	[  0]	IST  	   		11	; if slot11
		 71	[  0]	JMP  	 12		1	; 	goto 73
		 72	[  0]	KSHORT	 11		0	; slot11 = 0
		 73	[  0]	TGETB	 12	7	2	; slot12 = <unknown table>.cellTintColor[2]
		 74	[  0]	IST  	   		12	; if slot12
		 75	[  0]	JMP  	 13		1	; 	goto 77
		 76	[  0]	KSHORT	 12		0	; slot12 = 0
		 77	[  0]	TGETB	 13	7	3	; slot13 = <unknown table>.cellTintColor[3]
		 78	[  0]	IST  	   		13	; if slot13
		 79	[  0]	JMP  	 14		1	; 	goto 81
		 80	[  0]	KSHORT	 13		0	; slot13 = 0
		 81	[  0]	TGETB	 14	7	4	; slot14 = <unknown table>.cellTintColor[4]
		 82	[  0]	IST  	   		14	; if slot14
		 83	[  0]	JMP  	 15		1	; 	goto 85
		 84	[  0]	KSHORT	 14		1	; slot14 = 1
		 85	[  0]	MULVV	 14	14	8	; slot14 = slot14 * slot8
		 86	[  0]	CALL 	  9	1	5	;  = love.graphics.setColor(<unknown table>.alphaMul, slot11, slot12, slot13)
		 87	[  0]	KSHORT	  9		2	; slot9 = 2
		 88	[  0]	MOV  	 10		1	; slot10 = slot1
		 89	[  0]	KSHORT	 11		2	; slot11 = 2
		 90	[  0]	FORI 	  9		27	; for slot12 = slot9,slot10,slot11 else goto 118
		 91	[  0]	GGET 	 13		17	; slot13 = _env["math"]
		 92	[  0]	TGETS	 13	13	15	; slot13 = math.floor
		 93	[  0]	DIVVV	 15	4	1	; slot15 = math.max / slot1
		 94	[  0]	SUBVN	 16	12	0	; slot16 = slot12 - 1
		 95	[  0]	MULVV	 15	15	16	; slot15 = slot15 * slot16
		 96	[  0]	ADDVV	 15	2	15	; slot15 = slot2 + slot15
		 97	[  0]	CALL 	 13	2	2	; slot13 = math.floor(slot14)
		 98	[  0]	GGET 	 14		17	; slot14 = _env["math"]
		 99	[  0]	TGETS	 14	14	15	; slot14 = math.floor
		100	[  0]	DIVVV	 16	4	1	; slot16 = math.max / slot1
		101	[  0]	MULVV	 16	16	12	; slot16 = slot16 * slot12
		102	[  0]	ADDVV	 16	2	16	; slot16 = slot2 + slot16
		103	[  0]	CALL 	 14	2	2	; slot14 = math.floor(slot15)
		104	[  0]	GGET 	 15		4	; slot15 = _env["love"]
		105	[  0]	TGETS	 15	15	3	; slot15 = love.graphics
		106	[  0]	TGETS	 15	15	1	; slot15 = love.graphics.rectangle
		107	[  0]	KSTR 	 17		0	; slot17 = "fill"
		108	[  0]	MOV  	 18		13	; slot18 = math.floor
		109	[  0]	MOV  	 19		3	; slot19 = slot3
		110	[  0]	GGET 	 20		17	; slot20 = _env["math"]
		111	[  0]	TGETS	 20	20	16	; slot20 = math.max
		112	[  0]	KSHORT	 22		0	; slot22 = 0
		113	[  0]	SUBVV	 23	14	13	; slot23 = math.floor - math.floor
		114	[  0]	CALL 	 20	2	3	; slot20 = math.max(slot21, slot22)
		115	[  0]	MOV  	 21		5	; slot21 = math.max
		116	[  0]	CALL 	 15	1	6	;  = love.graphics.rectangle(slot16, slot17, math.floor, slot19, math.max)
		117	[  0]	FORL 	  9		-27	; slot12 = slot12 + slot11; if cmp(slot12, sign slot11,  slot10) goto 91
		118	[  0]	GGET 	  9		4	; slot9 = _env["love"]
		119	[  0]	TGETS	  9	9	3	; slot9 = love.graphics
		120	[  0]	TGETS	  9	9	2	; slot9 = love.graphics.setColor
		121	[  0]	TGETB	 11	6	1	; slot11 = slot6[1]
		122	[  0]	IST  	   		11	; if slot11
		123	[  0]	JMP  	 12		1	; 	goto 125
		124	[  0]	KSHORT	 11		0	; slot11 = 0
		125	[  0]	TGETB	 12	6	2	; slot12 = slot6[2]
		126	[  0]	IST  	   		12	; if slot12
		127	[  0]	JMP  	 13		1	; 	goto 129
		128	[  0]	KSHORT	 12		0	; slot12 = 0
		129	[  0]	TGETB	 13	6	3	; slot13 = slot6[3]
		130	[  0]	IST  	   		13	; if slot13
		131	[  0]	JMP  	 14		1	; 	goto 133
		132	[  0]	KSHORT	 13		0	; slot13 = 0
		133	[  0]	TGETB	 14	6	4	; slot14 = slot6[4]
		134	[  0]	IST  	   		14	; if slot14
		135	[  0]	JMP  	 15		1	; 	goto 137
		136	[  0]	KSHORT	 14		1	; slot14 = 1
		137	[  0]	MULVV	 14	14	8	; slot14 = slot14 * slot8
		138	[  0]	CALL 	  9	1	5	;  = love.graphics.setColor(slot10, slot11, slot12, slot13)
		139	[  0]	KSHORT	  9		1	; slot9 = 1
		140	[  0]	SUBVN	 10	1	0	; slot10 = slot1 - 1
		141	[  0]	KSHORT	 11		1	; slot11 = 1
		142	[  0]	FORI 	  9		16	; for slot12 = slot9,slot10,slot11 else goto 159
		143	[  0]	GGET 	 13		17	; slot13 = _env["math"]
		144	[  0]	TGETS	 13	13	15	; slot13 = math.floor
		145	[  0]	DIVVV	 15	4	1	; slot15 = math.max / slot1
		146	[  0]	MULVV	 15	15	12	; slot15 = slot15 * slot12
		147	[  0]	ADDVV	 15	2	15	; slot15 = slot2 + slot15
		148	[  0]	CALL 	 13	2	2	; slot13 = math.floor(slot14)
		149	[  0]	GGET 	 14		4	; slot14 = _env["love"]
		150	[  0]	TGETS	 14	14	3	; slot14 = love.graphics
		151	[  0]	TGETS	 14	14	1	; slot14 = love.graphics.rectangle
		152	[  0]	KSTR 	 16		0	; slot16 = "fill"
		153	[  0]	MOV  	 17		13	; slot17 = math.floor
		154	[  0]	MOV  	 18		3	; slot18 = slot3
		155	[  0]	KSHORT	 19		1	; slot19 = 1
		156	[  0]	MOV  	 20		5	; slot20 = math.max
		157	[  0]	CALL 	 14	1	6	;  = love.graphics.rectangle(slot15, slot16, math.floor, slot18, slot19)
		158	[  0]	FORL 	  9		-16	; slot12 = slot12 + slot11; if cmp(slot12, sign slot11,  slot10) goto 143
		159	[  0]	RET0 	  0		1	; return
	 21	[  0]	TSETS	  4	2	205	; slot2.drawGrid = slot4
	 22	[  0]	FNEW 	  4		203	; N/A:0-0: 1 args, 1 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	2	; slot1 = uv0"unknown".drawTrack
		  3	[  0]	MOV  	  3		0	; slot3 = slot0
		  4	[  0]	CALL 	  1	1	2	;  = uv0"unknown".drawTrack(slot2)
		  5	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  6	[  0]	TGETS	  1	1	1	; slot1 = uv0"unknown".drawFill
		  7	[  0]	MOV  	  3		0	; slot3 = slot0
		  8	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown".drawFill(slot2)
		  9	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 10	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".drawGrid
		 11	[  0]	MOV  	  4		0	; slot4 = slot0
		 12	[  0]	CALL 	  2	1	2	;  = uv0"unknown".drawGrid(slot3)
		 13	[  0]	RET1 	  1		2	; return slot1
	 23	[  0]	TSETS	  4	2	212	; slot2.draw = slot4
	 24	[  0]	MOV  	  1		2	; slot1 = slot2
	 25	[  0]	UCLO 	  2		0	; nil uvs >= r2; goto 26
	 26	[  0]	KPRI 	  2		0	; slot2 = nil
	 27	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
	 28	[  0]	KSHORT	  4		4	; slot4 = 4
	 29	[  0]	FNEW 	  5		202	; N/A:0-0: 0 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		  2	[  0]	TGETS	  0	0	1	; slot0 = love.timer
		  3	[  0]	ISF  	   		0	; if not love.timer
		  4	[  0]	JMP  	  1		11	; 	goto 16
		  5	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		  6	[  0]	TGETS	  0	0	1	; slot0 = love.timer
		  7	[  0]	TGETS	  0	0	0	; slot0 = love.timer.getTime
		  8	[  0]	ISF  	   		0	; if not love.timer.getTime
		  9	[  0]	JMP  	  1		6	; 	goto 16
		 10	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		 11	[  0]	TGETS	  0	0	1	; slot0 = love.timer
		 12	[  0]	TGETS	  0	0	0	; slot0 = love.timer.getTime
		 13	[  0]	CALL 	  0	2	1	; slot0 = love.timer.getTime()
		 14	[  0]	IST  	   		0	; if slot0
		 15	[  0]	JMP  	  1		1	; 	goto 17
		 16	[  0]	KSHORT	  0		0	; slot0 = 0
		 17	[  0]	RET1 	  0		2	; return slot0
	 30	[  0]	FNEW 	  6		201	; N/A:0-0: 2 args, 2 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	CALL 	  2	2	1	; slot2 = uv0"unknown"()
		  3	[  0]	TGETS	  3	0	15	; slot3 = slot0.lastSoundT
		  4	[  0]	IST  	   		3	; if <unknown table>.lastSoundT
		  5	[  0]	JMP  	  4		1	; 	goto 7
		  6	[  0]	KSHORT	  3		65526	; slot3 = 65526
		  7	[  0]	SUBVV	  3	2	3	; slot3 = uv0"unknown" - slot3
		  8	[  0]	KNUM 	  4		0	; slot4 = 0.035
		  9	[  0]	ISGE 	  3		4	; if slot3 >= slot4
		 10	[  0]	JMP  	  3		1	; 	goto 12
		 11	[  0]	RET0 	  0		1	; return
		 12	[  0]	GGET 	  3		14	; slot3 = _env["rawget"]
		 13	[  0]	GGET 	  5		13	; slot5 = _env["_G"]
		 14	[  0]	KSTR 	  6		12	; slot6 = "loadedAssets"
		 15	[  0]	CALL 	  3	2	3	; slot3 = rawget(slot4, _G)
		 16	[  0]	ISFC 	  4		3	; slot4 = slot3; if not slot3
		 17	[  0]	JMP  	  4		5	; 	goto 23
		 18	[  0]	TGETS	  4	3	11	; slot4 = slot3.audio
		 19	[  0]	ISF  	   		4	; if not <unknown table>.audio
		 20	[  0]	JMP  	  5		2	; 	goto 23
		 21	[  0]	TGETS	  4	3	11	; slot4 = slot3.audio
		 22	[  0]	TGETS	  4	4	10	; slot4 = <unknown table>.audio.buttonHover
		 23	[  0]	ISF  	   		4	; if not <unknown table>.audio.buttonHover
		 24	[  0]	JMP  	  5		3	; 	goto 28
		 25	[  0]	TGETS	  5	4	9	; slot5 = <unknown table>.audio.buttonHover.clone
		 26	[  0]	IST  	   		5	; if <unknown table>.audio.buttonHover.clone
		 27	[  0]	JMP  	  5		1	; 	goto 29
		 28	[  0]	RET0 	  0		1	; return
		 29	[  0]	TGETS	  5	0	8	; slot5 = slot0.sounds
		 30	[  0]	IST  	   		5	; if <unknown table>.sounds
		 31	[  0]	JMP  	  6		1	; 	goto 33
		 32	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 33	[  0]	TSETS	  5	0	8	; slot0.sounds = slot5
		 34	[  0]	KPRI 	  5		0	; slot5 = nil
		 35	[  0]	GGET 	  6		7	; slot6 = _env["ipairs"]
		 36	[  0]	TGETS	  8	0	8	; slot8 = slot0.sounds
		 37	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		 38	[  0]	JMP  	  9		12	; 	goto 51
		 39	[  0]	ISF  	   		10	; if not slot10
		 40	[  0]	JMP  	 11		10	; 	goto 51
		 41	[  0]	TGETS	 11	10	6	; slot11 = slot10.isPlaying
		 42	[  0]	ISF  	   		11	; if not <unknown table>.isPlaying
		 43	[  0]	JMP  	 12		7	; 	goto 51
		 44	[  0]	MOV  	 13		10	; slot13 = slot10
		 45	[  0]	TGETS	 11	10	6	; slot11 = slot10.isPlaying
		 46	[  0]	CALL 	 11	2	2	; slot11 = <unknown table>.isPlaying(slot12)
		 47	[  0]	IST  	   		11	; if <unknown table>.isPlaying
		 48	[  0]	JMP  	 11		2	; 	goto 51
		 49	[  0]	MOV  	  5		10	; slot5 = slot10
		 50	[  0]	JMP  	  6		2	; 	goto 53
		 51	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, <unknown table>.sounds; slot9, slot10 = ipairs(slot7, <unknown table>.sounds)
		 52	[  0]	ITERL	  9		-14	; <unknown table>.sounds = slot9; if slot9 != nil goto 39
		 53	[  0]	IST  	   		5	; if slot5
		 54	[  0]	JMP  	  6		14	; 	goto 69
		 55	[  0]	TGETS	  6	0	8	; slot6 = slot0.sounds
		 56	[  0]	LEN  	  6		6	; slot6 = #<unknown table>.sounds
		 57	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 58	[  0]	ISGE 	  6		7	; if slot6 >= uv1"unknown"
		 59	[  0]	JMP  	  6		9	; 	goto 69
		 60	[  0]	MOV  	  8		4	; slot8 = <unknown table>.audio.buttonHover
		 61	[  0]	TGETS	  6	4	9	; slot6 = <unknown table>.audio.buttonHover.clone
		 62	[  0]	CALL 	  6	2	2	; slot6 = <unknown table>.audio.buttonHover.clone(uv1"unknown")
		 63	[  0]	MOV  	  5		6	; slot5 = <unknown table>.audio.buttonHover.clone
		 64	[  0]	TGETS	  6	0	8	; slot6 = slot0.sounds
		 65	[  0]	TGETS	  7	0	8	; slot7 = slot0.sounds
		 66	[  0]	LEN  	  7		7	; slot7 = #<unknown table>.sounds
		 67	[  0]	ADDVN	  7	7	1	; slot7 = slot7 + 1
		 68	[  0]	TSETV	  5	6	7	; <unknown table>.sounds[slot7] = <unknown table>.audio.buttonHover.clone
		 69	[  0]	IST  	   		5	; if <unknown table>.audio.buttonHover.clone
		 70	[  0]	JMP  	  6		1	; 	goto 72
		 71	[  0]	RET0 	  0		1	; return
		 72	[  0]	ISF  	   		1	; if not slot1
		 73	[  0]	JMP  	  6		7	; 	goto 81
		 74	[  0]	TGETS	  6	1	5	; slot6 = slot1.menuSettings
		 75	[  0]	ISF  	   		6	; if not <unknown table>.menuSettings
		 76	[  0]	JMP  	  7		4	; 	goto 81
		 77	[  0]	TGETS	  6	1	5	; slot6 = slot1.menuSettings
		 78	[  0]	TGETS	  6	6	4	; slot6 = <unknown table>.menuSettings.sfxVolume
		 79	[  0]	IST  	   		6	; if <unknown table>.menuSettings.sfxVolume
		 80	[  0]	JMP  	  7		1	; 	goto 82
		 81	[  0]	KSHORT	  6		1	; slot6 = 1
		 82	[  0]	TGETS	  7	5	3	; slot7 = <unknown table>.audio.buttonHover.clone.setVolume
		 83	[  0]	ISF  	   		7	; if not <unknown table>.audio.buttonHover.clone.setVolume
		 84	[  0]	JMP  	  8		4	; 	goto 89
		 85	[  0]	MOV  	  9		5	; slot9 = <unknown table>.audio.buttonHover.clone
		 86	[  0]	TGETS	  7	5	3	; slot7 = <unknown table>.audio.buttonHover.clone.setVolume
		 87	[  0]	MULVN	 10	6	2	; slot10 = slot6 * 0.28
		 88	[  0]	CALL 	  7	1	3	;  = <unknown table>.audio.buttonHover.clone.setVolume(<unknown table>.audio.buttonHover, <unknown table>.audio.buttonHover.clone)
		 89	[  0]	TGETS	  7	5	2	; slot7 = <unknown table>.audio.buttonHover.clone.setPitch
		 90	[  0]	ISF  	   		7	; if not <unknown table>.audio.buttonHover.clone.setPitch
		 91	[  0]	JMP  	  8		10	; 	goto 102
		 92	[  0]	MOV  	  9		5	; slot9 = <unknown table>.audio.buttonHover.clone
		 93	[  0]	TGETS	  7	5	2	; slot7 = <unknown table>.audio.buttonHover.clone.setPitch
		 94	[  0]	TGETS	 10	0	1	; slot10 = slot0.serial
		 95	[  0]	IST  	   		10	; if <unknown table>.serial
		 96	[  0]	JMP  	 11		1	; 	goto 98
		 97	[  0]	KSHORT	 10		0	; slot10 = 0
		 98	[  0]	MODVN	 10	10	3	; slot10 = slot10 % 2
		 99	[  0]	MULNV	 10	10	4	; slot10 = 0.03 * slot10
		100	[  0]	ADDNV	 10	10	5	; slot10 = 1.15 + slot10
		101	[  0]	CALL 	  7	1	3	;  = <unknown table>.audio.buttonHover.clone.setPitch(<unknown table>.audio.buttonHover, <unknown table>.audio.buttonHover.clone)
		102	[  0]	MOV  	  9		5	; slot9 = <unknown table>.audio.buttonHover.clone
		103	[  0]	TGETS	  7	5	0	; slot7 = <unknown table>.audio.buttonHover.clone.play
		104	[  0]	CALL 	  7	1	2	;  = <unknown table>.audio.buttonHover.clone.play(<unknown table>.audio.buttonHover)
		105	[  0]	TSETS	  2	0	15	; slot0.lastSoundT = uv0"unknown"
		106	[  0]	RET0 	  0		1	; return
	 31	[  0]	FNEW 	  7		199	; N/A:0-0: 3 args, 2 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  3		1	; 	goto 4
		  3	[  0]	RET0 	  0		1	; return
		  4	[  0]	GGET 	  3		7	; slot3 = _env["math"]
		  5	[  0]	TGETS	  3	3	6	; slot3 = math.floor
		  6	[  0]	GGET 	  5		5	; slot5 = _env["tonumber"]
		  7	[  0]	MOV  	  7		1	; slot7 = slot1
		  8	[  0]	CALL 	  5	2	2	; slot5 = tonumber(slot6)
		  9	[  0]	IST  	   		5	; if tonumber
		 10	[  0]	JMP  	  6		1	; 	goto 12
		 11	[  0]	KSHORT	  5		0	; slot5 = 0
		 12	[  0]	ADDVN	  5	5	0	; slot5 = slot5 + 0.5
		 13	[  0]	CALL 	  3	2	2	; slot3 = math.floor(slot4)
		 14	[  0]	TGETS	  4	0	4	; slot4 = slot0.value
		 15	[  0]	ISNEP	  4		0	; if <unknown table>.value ~= nil
		 16	[  0]	JMP  	  4		2	; 	goto 19
		 17	[  0]	TSETS	  3	0	4	; slot0.value = math.floor
		 18	[  0]	RET0 	  0		1	; return
		 19	[  0]	TGETS	  4	0	4	; slot4 = slot0.value
		 20	[  0]	ISEQV	  3		4	; if math.floor == <unknown table>.value
		 21	[  0]	JMP  	  4		23	; 	goto 45
		 22	[  0]	TGETS	  4	0	4	; slot4 = slot0.value
		 23	[  0]	SUBVV	  4	3	4	; slot4 = math.floor - <unknown table>.value
		 24	[  0]	TSETS	  3	0	4	; slot0.value = math.floor
		 25	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 26	[  0]	CALL 	  5	2	1	; slot5 = uv0"unknown"()
		 27	[  0]	TSETS	  5	0	3	; slot0.impactT = uv0"unknown"
		 28	[  0]	TGETS	  5	0	2	; slot5 = slot0.serial
		 29	[  0]	IST  	   		5	; if <unknown table>.serial
		 30	[  0]	JMP  	  6		1	; 	goto 32
		 31	[  0]	KSHORT	  5		0	; slot5 = 0
		 32	[  0]	ADDVN	  5	5	1	; slot5 = slot5 + 1
		 33	[  0]	TSETS	  5	0	2	; slot0.serial = slot5
		 34	[  0]	KSHORT	  5		0	; slot5 = 0
		 35	[  0]	ISGE 	  4		5	; if slot4 >= slot5
		 36	[  0]	JMP  	  5		4	; 	goto 41
		 37	[  0]	TGETS	  5	0	3	; slot5 = slot0.impactT
		 38	[  0]	TSETS	  5	0	1	; slot0.damageT = <unknown table>.impactT
		 39	[  0]	TGETS	  5	0	2	; slot5 = slot0.serial
		 40	[  0]	TSETS	  5	0	0	; slot0.damageSerial = <unknown table>.serial
		 41	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 42	[  0]	MOV  	  7		0	; slot7 = slot0
		 43	[  0]	MOV  	  8		2	; slot8 = slot2
		 44	[  0]	CALL 	  5	1	3	;  = uv1"unknown"(slot6, slot7)
		 45	[  0]	RET0 	  0		1	; return
	 32	[  0]	TSETS	  7	3	200	; slot3.track = slot7
	 33	[  0]	FNEW 	  7		197	; N/A:0-0: 1 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		4	; 	goto 7
		  3	[  0]	KSHORT	  1		1	; slot1 = 1
		  4	[  0]	KSHORT	  2		1	; slot2 = 1
		  5	[  0]	KSHORT	  3		0	; slot3 = 0
		  6	[  0]	RET  	  1		4	; return slot1, slot2, slot3
		  7	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  8	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown"()
		  9	[  0]	TGETS	  2	0	3	; slot2 = slot0.impactT
		 10	[  0]	IST  	   		2	; if <unknown table>.impactT
		 11	[  0]	JMP  	  3		1	; 	goto 13
		 12	[  0]	KSHORT	  2		65526	; slot2 = 65526
		 13	[  0]	SUBVV	  1	1	2	; slot1 = slot1 - slot2
		 14	[  0]	KSHORT	  2		0	; slot2 = 0
		 15	[  0]	KSHORT	  3		0	; slot3 = 0
		 16	[  0]	ISGT 	  3		1	; if slot3 > slot1
		 17	[  0]	JMP  	  3		8	; 	goto 26
		 18	[  0]	KNUM 	  3		0	; slot3 = 0.09
		 19	[  0]	ISGE 	  1		3	; if slot1 >= slot3
		 20	[  0]	JMP  	  3		5	; 	goto 26
		 21	[  0]	GGET 	  3		2	; slot3 = _env["math"]
		 22	[  0]	TGETS	  3	3	1	; slot3 = math.exp
		 23	[  0]	MULNV	  5	1	1	; slot5 = -32 * slot1
		 24	[  0]	CALL 	  3	2	2	; slot3 = math.exp(slot4)
		 25	[  0]	MOV  	  2		3	; slot2 = math.exp
		 26	[  0]	TGETS	  3	0	0	; slot3 = slot0.serial
		 27	[  0]	IST  	   		3	; if <unknown table>.serial
		 28	[  0]	JMP  	  4		1	; 	goto 30
		 29	[  0]	KSHORT	  3		0	; slot3 = 0
		 30	[  0]	MODVN	  3	3	2	; slot3 = slot3 % 2
		 31	[  0]	ISNEN	  3		3	; if slot3 ~= 0
		 32	[  0]	JMP  	  3		2	; 	goto 35
		 33	[  0]	KSHORT	  3		65535	; slot3 = 65535
		 34	[  0]	JMP  	  4		1	; 	goto 36
		 35	[  0]	KSHORT	  3		1	; slot3 = 1
		 36	[  0]	MULNV	  4	2	4	; slot4 = 0.18 * math.exp
		 37	[  0]	ADDNV	  4	4	5	; slot4 = 1 + slot4
		 38	[  0]	MULNV	  5	2	0	; slot5 = 0.09 * math.exp
		 39	[  0]	SUBNV	  5	5	5	; slot5 = 1 - slot5
		 40	[  0]	MULVN	  6	3	6	; slot6 = slot3 * 1.5
		 41	[  0]	MULVV	  6	6	2	; slot6 = slot6 * math.exp
		 42	[  0]	RET  	  4		4	; return slot4, slot5, slot6
	 34	[  0]	TSETS	  7	3	198	; slot3.getPunch = slot7
	 35	[  0]	FNEW 	  7		195	; N/A:0-0: 1 args, 1 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		3	; 	goto 6
		  3	[  0]	KSHORT	  1		0	; slot1 = 0
		  4	[  0]	KSHORT	  2		0	; slot2 = 0
		  5	[  0]	RET  	  1		3	; return slot1, slot2
		  6	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  7	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown"()
		  8	[  0]	TGETS	  2	0	4	; slot2 = slot0.damageT
		  9	[  0]	IST  	   		2	; if <unknown table>.damageT
		 10	[  0]	JMP  	  3		1	; 	goto 12
		 11	[  0]	KSHORT	  2		65526	; slot2 = 65526
		 12	[  0]	SUBVV	  1	1	2	; slot1 = slot1 - slot2
		 13	[  0]	KSHORT	  2		0	; slot2 = 0
		 14	[  0]	ISLT 	  1		2	; if slot1 < slot2
		 15	[  0]	JMP  	  2		3	; 	goto 19
		 16	[  0]	KNUM 	  2		0	; slot2 = 0.28
		 17	[  0]	ISGT 	  2		1	; if slot2 > slot1
		 18	[  0]	JMP  	  2		3	; 	goto 22
		 19	[  0]	KSHORT	  2		0	; slot2 = 0
		 20	[  0]	KSHORT	  3		0	; slot3 = 0
		 21	[  0]	RET  	  2		3	; return slot2, slot3
		 22	[  0]	DIVVN	  2	1	0	; slot2 = slot1 / 0.28
		 23	[  0]	KNUM 	  3		1	; slot3 = 0.18
		 24	[  0]	ISGE 	  2		3	; if slot2 >= slot3
		 25	[  0]	JMP  	  3		3	; 	goto 29
		 26	[  0]	DIVVN	  3	2	1	; slot3 = slot2 / 0.18
		 27	[  0]	IST  	   		3	; if slot3
		 28	[  0]	JMP  	  4		3	; 	goto 32
		 29	[  0]	SUBVN	  3	2	1	; slot3 = slot2 - 0.18
		 30	[  0]	DIVVN	  3	3	2	; slot3 = slot3 / 0.82
		 31	[  0]	SUBNV	  3	3	3	; slot3 = 1 - slot3
		 32	[  0]	GGET 	  4		3	; slot4 = _env["math"]
		 33	[  0]	TGETS	  4	4	2	; slot4 = math.max
		 34	[  0]	KSHORT	  6		0	; slot6 = 0
		 35	[  0]	GGET 	  7		3	; slot7 = _env["math"]
		 36	[  0]	TGETS	  7	7	1	; slot7 = math.min
		 37	[  0]	KSHORT	  9		1	; slot9 = 1
		 38	[  0]	MOV  	 10		3	; slot10 = slot3
		 39	[  0]	CALL 	  7	0	3	; MULTRES = math.min(slot8, slot9)
		 40	[  0]	CALLM	  4	2	1	; slot4 = math.max(slot5, ...MULTRES)
		 41	[  0]	MOV  	  3		4	; slot3 = math.max
		 42	[  0]	TGETS	  4	0	0	; slot4 = slot0.damageSerial
		 43	[  0]	IST  	   		4	; if <unknown table>.damageSerial
		 44	[  0]	JMP  	  5		1	; 	goto 46
		 45	[  0]	KSHORT	  4		0	; slot4 = 0
		 46	[  0]	MODVN	  4	4	4	; slot4 = slot4 % 2
		 47	[  0]	ISNEN	  4		5	; if slot4 ~= 0
		 48	[  0]	JMP  	  4		2	; 	goto 51
		 49	[  0]	KSHORT	  4		65535	; slot4 = 65535
		 50	[  0]	JMP  	  5		1	; 	goto 52
		 51	[  0]	KSHORT	  4		1	; slot4 = 1
		 52	[  0]	MOV  	  5		3	; slot5 = math.max
		 53	[  0]	MOV  	  6		4	; slot6 = slot4
		 54	[  0]	RET  	  5		3	; return math.max, slot6
	 36	[  0]	TSETS	  7	3	196	; slot3.getDamageSlice = slot7
	 37	[  0]	GGET 	  7		194	; slot7 = _env["setmetatable"]
	 38	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
	 39	[  0]	TDUP 	 10		193	; slot10 = copy table#k193
	 40	[  0]	CALL 	  7	2	3	; slot7 = setmetatable(slot8, slot9)
	 41	[  0]	FNEW 	  8		191	; N/A:0-0: 7 args, 2 upvalues, 24 slots
		
		;;;; constant tables ;;;;
		ktable#24 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		  2	[  0]	TGETV	  7	7	0	; slot7 = uv0"unknown"[slot0]
		  3	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		  4	[  0]	CALL 	  8	2	1	; slot8 = uv1"unknown"()
		  5	[  0]	IST  	   		7	; if slot7
		  6	[  0]	JMP  	  9		6	; 	goto 13
		  7	[  0]	TDUP 	  9		24	; slot9 = copy table#k24
		  8	[  0]	TSETS	  1	9	23	; slot9.value = slot1
		  9	[  0]	MOV  	  7		9	; slot7 = slot9
		 10	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 11	[  0]	TSETV	  7	9	0	; uv0"unknown"[slot0] = slot7
		 12	[  0]	JMP  	  9		11	; 	goto 24
		 13	[  0]	TGETS	  9	7	23	; slot9 = slot7.value
		 14	[  0]	ISEQV	  9		1	; if <unknown table>.value == slot1
		 15	[  0]	JMP  	  9		8	; 	goto 24
		 16	[  0]	TGETS	  9	7	20	; slot9 = slot7.displayed
		 17	[  0]	IST  	   		9	; if <unknown table>.displayed
		 18	[  0]	JMP  	 10		1	; 	goto 20
		 19	[  0]	TGETS	  9	7	23	; slot9 = slot7.value
		 20	[  0]	MOV  	 10		1	; slot10 = slot1
		 21	[  0]	TSETS	  8	7	21	; slot7.started = uv1"unknown"
		 22	[  0]	TSETS	 10	7	23	; slot7.value = slot10
		 23	[  0]	TSETS	  9	7	22	; slot7.previous = <unknown table>.value
		 24	[  0]	ISNEP	  1		0	; if slot1 ~= nil
		 25	[  0]	JMP  	  9		5	; 	goto 31
		 26	[  0]	KNIL 	  9		11	; <unknown table>.value, slot10, slot11 = nil
		 27	[  0]	TSETS	 11	7	20	; slot7.displayed = slot11
		 28	[  0]	TSETS	 10	7	21	; slot7.started = slot10
		 29	[  0]	TSETS	  9	7	22	; slot7.previous = slot9
		 30	[  0]	RET0 	  0		1	; return
		 31	[  0]	GGET 	  9		19	; slot9 = _env["math"]
		 32	[  0]	TGETS	  9	9	18	; slot9 = math.max
		 33	[  0]	KSHORT	 11		0	; slot11 = 0
		 34	[  0]	GGET 	 12		19	; slot12 = _env["math"]
		 35	[  0]	TGETS	 12	12	17	; slot12 = math.min
		 36	[  0]	KSHORT	 14		1	; slot14 = 1
		 37	[  0]	TGETS	 15	7	21	; slot15 = slot7.started
		 38	[  0]	IST  	   		15	; if <unknown table>.started
		 39	[  0]	JMP  	 16		1	; 	goto 41
		 40	[  0]	SUBVN	 15	8	0	; slot15 = uv1"unknown" - 1
		 41	[  0]	SUBVV	 15	8	15	; slot15 = uv1"unknown" - slot15
		 42	[  0]	DIVVN	 15	15	1	; slot15 = slot15 / 0.62
		 43	[  0]	CALL 	 12	0	3	; MULTRES = math.min(slot13, slot14)
		 44	[  0]	CALLM	  9	2	1	; slot9 = math.max(slot10, ...MULTRES)
		 45	[  0]	SUBNV	 10	9	0	; slot10 = 1 - math.max
		 46	[  0]	KSHORT	 11		3	; slot11 = 3
		 47	[  0]	POW  	 10	10	11	; slot10 = slot10 ^ slot11 (pow)
		 48	[  0]	SUBNV	 10	10	0	; slot10 = 1 - slot10
		 49	[  0]	KSHORT	 11		1	; slot11 = 1
		 50	[  0]	KSHORT	 12		0	; slot12 = 0
		 51	[  0]	KSHORT	 13		0	; slot13 = 0
		 52	[  0]	KSHORT	 14		0	; slot14 = 0
		 53	[  0]	TGETS	 15	7	22	; slot15 = slot7.previous
		 54	[  0]	ISEQP	 15		0	; if <unknown table>.previous == nil
		 55	[  0]	JMP  	 15		47	; 	goto 103
		 56	[  0]	KNUM 	 15		2	; slot15 = 0.16
		 57	[  0]	ISGE 	  9		15	; if math.max >= slot15
		 58	[  0]	JMP  	 15		8	; 	goto 67
		 59	[  0]	DIVVN	 15	9	2	; slot15 = math.max / 0.16
		 60	[  0]	MULNV	 15	15	3	; slot15 = 0.73 * slot15
		 61	[  0]	ADDNV	 11	15	4	; slot11 = 0.72 + slot15
		 62	[  0]	DIVVN	 15	9	2	; slot15 = math.max / 0.16
		 63	[  0]	SUBNV	 15	15	0	; slot15 = 1 - slot15
		 64	[  0]	MULNV	 13	15	5	; slot13 = -3 * slot15
		 65	[  0]	DIVVN	 14	9	2	; slot14 = math.max / 0.16
		 66	[  0]	JMP  	 15		36	; 	goto 103
		 67	[  0]	KNUM 	 15		6	; slot15 = 0.3
		 68	[  0]	ISGE 	  9		15	; if math.max >= slot15
		 69	[  0]	JMP  	 15		21	; 	goto 91
		 70	[  0]	SUBVN	 15	9	2	; slot15 = math.max - 0.16
		 71	[  0]	DIVVN	 15	15	7	; slot15 = slot15 / 0.14
		 72	[  0]	MULNV	 16	15	8	; slot16 = 0.57 * slot15
		 73	[  0]	SUBNV	 11	16	9	; slot11 = 1.45 - slot16
		 74	[  0]	GGET 	 16		19	; slot16 = _env["math"]
		 75	[  0]	TGETS	 16	16	16	; slot16 = math.floor
		 76	[  0]	GGET 	 18		19	; slot18 = _env["math"]
		 77	[  0]	TGETS	 18	18	15	; slot18 = math.sin
		 78	[  0]	GGET 	 20		19	; slot20 = _env["math"]
		 79	[  0]	TGETS	 20	20	14	; slot20 = math.pi
		 80	[  0]	MULVV	 20	15	20	; slot20 = slot15 * math.pi
		 81	[  0]	MULVN	 20	20	10	; slot20 = slot20 * 5
		 82	[  0]	CALL 	 18	2	2	; slot18 = math.sin(slot19)
		 83	[  0]	MULVN	 18	18	11	; slot18 = math.sin * 1.5
		 84	[  0]	SUBNV	 19	15	0	; slot19 = 1 - slot15
		 85	[  0]	MULVV	 18	18	19	; slot18 = slot18 * slot19
		 86	[  0]	ADDVN	 18	18	12	; slot18 = slot18 + 0.5
		 87	[  0]	CALL 	 16	2	2	; slot16 = math.floor(slot17)
		 88	[  0]	MOV  	 12		16	; slot12 = math.floor
		 89	[  0]	SUBNV	 14	15	0	; slot14 = 1 - slot15
		 90	[  0]	JMP  	 15		12	; 	goto 103
		 91	[  0]	KNUM 	 15		13	; slot15 = 0.46
		 92	[  0]	ISGE 	  9		15	; if math.max >= slot15
		 93	[  0]	JMP  	 15		5	; 	goto 99
		 94	[  0]	SUBVN	 15	9	6	; slot15 = math.max - 0.3
		 95	[  0]	DIVVN	 15	15	2	; slot15 = slot15 / 0.16
		 96	[  0]	MULNV	 15	15	14	; slot15 = 0.2 * slot15
		 97	[  0]	ADDNV	 11	15	15	; slot11 = 0.88 + slot15
		 98	[  0]	JMP  	 15		4	; 	goto 103
		 99	[  0]	SUBVN	 15	9	13	; slot15 = math.max - 0.46
		100	[  0]	DIVVN	 15	15	16	; slot15 = slot15 / 0.54
		101	[  0]	MULNV	 15	15	17	; slot15 = 0.08 * slot15
		102	[  0]	SUBNV	 11	15	18	; slot11 = 1.08 - slot15
		103	[  0]	GGET 	 15		19	; slot15 = _env["math"]
		104	[  0]	TGETS	 15	15	18	; slot15 = math.max
		105	[  0]	KSHORT	 17		0	; slot17 = 0
		106	[  0]	GGET 	 18		19	; slot18 = _env["math"]
		107	[  0]	TGETS	 18	18	16	; slot18 = math.floor
		108	[  0]	TGETS	 20	7	22	; slot20 = slot7.previous
		109	[  0]	IST  	   		20	; if <unknown table>.previous
		110	[  0]	JMP  	 21		1	; 	goto 112
		111	[  0]	MOV  	 20		1	; slot20 = slot1
		112	[  0]	TGETS	 21	7	22	; slot21 = slot7.previous
		113	[  0]	IST  	   		21	; if <unknown table>.previous
		114	[  0]	JMP  	 22		1	; 	goto 116
		115	[  0]	MOV  	 21		1	; slot21 = slot1
		116	[  0]	SUBVV	 21	1	21	; slot21 = slot1 - slot21
		117	[  0]	MULVV	 21	21	10	; slot21 = slot21 * slot10
		118	[  0]	ADDVV	 20	20	21	; slot20 = slot20 + slot21
		119	[  0]	ADDVN	 20	20	12	; slot20 = slot20 + 0.5
		120	[  0]	CALL 	 18	0	2	; MULTRES = math.floor(slot19)
		121	[  0]	CALLM	 15	2	1	; slot15 = math.max(math.floor, ...MULTRES)
		122	[  0]	TSETS	 15	7	20	; slot7.displayed = math.max
		123	[  0]	GGET 	 15		13	; slot15 = _env["love"]
		124	[  0]	TGETS	 15	15	12	; slot15 = love.graphics
		125	[  0]	TGETS	 16	15	11	; slot16 = love.graphics.push
		126	[  0]	KSTR 	 18		10	; slot18 = "all"
		127	[  0]	CALL 	 16	1	2	;  = love.graphics.push(slot17)
		128	[  0]	TGETS	 16	15	9	; slot16 = love.graphics.setShader
		129	[  0]	CALL 	 16	1	1	;  = love.graphics.setShader()
		130	[  0]	TGETS	 16	15	8	; slot16 = love.graphics.setFont
		131	[  0]	MOV  	 18		2	; slot18 = slot2
		132	[  0]	CALL 	 16	1	2	;  = love.graphics.setFont(slot17)
		133	[  0]	TGETS	 16	15	7	; slot16 = love.graphics.translate
		134	[  0]	ADDVV	 18	3	12	; slot18 = slot3 + math.floor
		135	[  0]	ADDVV	 19	4	13	; slot19 = slot4 + slot13
		136	[  0]	CALL 	 16	1	3	;  = love.graphics.translate(slot17, slot18)
		137	[  0]	TGETS	 16	15	6	; slot16 = love.graphics.scale
		138	[  0]	MULVV	 18	5	11	; slot18 = slot5 * slot11
		139	[  0]	MULVV	 19	5	11	; slot19 = slot5 * slot11
		140	[  0]	CALL 	 16	1	3	;  = love.graphics.scale(slot17, slot18)
		141	[  0]	GGET 	 16		5	; slot16 = _env["tostring"]
		142	[  0]	TGETS	 18	7	20	; slot18 = slot7.displayed
		143	[  0]	CALL 	 16	2	2	; slot16 = tostring(slot17)
		144	[  0]	TGETS	 17	15	4	; slot17 = love.graphics.setColor
		145	[  0]	TGETB	 19	6	1	; slot19 = slot6[1]
		146	[  0]	TGETB	 20	6	1	; slot20 = slot6[1]
		147	[  0]	SUBNV	 20	20	0	; slot20 = 1 - slot20
		148	[  0]	MULVV	 20	20	14	; slot20 = slot20 * slot14
		149	[  0]	ADDVV	 19	19	20	; slot19 = slot19 + slot20
		150	[  0]	TGETB	 20	6	2	; slot20 = slot6[2]
		151	[  0]	TGETB	 21	6	2	; slot21 = slot6[2]
		152	[  0]	SUBNV	 21	21	0	; slot21 = 1 - slot21
		153	[  0]	MULVV	 21	21	14	; slot21 = slot21 * slot14
		154	[  0]	ADDVV	 20	20	21	; slot20 = slot20 + slot21
		155	[  0]	TGETB	 21	6	3	; slot21 = slot6[3]
		156	[  0]	TGETB	 22	6	3	; slot22 = slot6[3]
		157	[  0]	SUBNV	 22	22	0	; slot22 = 1 - slot22
		158	[  0]	MULVV	 22	22	14	; slot22 = slot22 * slot14
		159	[  0]	ADDVV	 21	21	22	; slot21 = slot21 + slot22
		160	[  0]	TGETB	 22	6	4	; slot22 = slot6[4]
		161	[  0]	IST  	   		22	; if slot22
		162	[  0]	JMP  	 23		1	; 	goto 164
		163	[  0]	KSHORT	 22		1	; slot22 = 1
		164	[  0]	CALL 	 17	1	5	;  = love.graphics.setColor(<unknown table>.displayed, slot19, slot20, slot21)
		165	[  0]	TGETS	 17	15	3	; slot17 = love.graphics.print
		166	[  0]	MOV  	 19		16	; slot19 = tostring
		167	[  0]	MOV  	 22		2	; slot22 = slot2
		168	[  0]	TGETS	 20	2	2	; slot20 = slot2.getWidth
		169	[  0]	MOV  	 23		16	; slot23 = tostring
		170	[  0]	CALL 	 20	2	3	; slot20 = <unknown table>.getWidth(slot21, slot22)
		171	[  0]	UNM  	 20		20	; slot20 = -<unknown table>.getWidth
		172	[  0]	MULVN	 20	20	12	; slot20 = slot20 * 0.5
		173	[  0]	MOV  	 23		2	; slot23 = slot2
		174	[  0]	TGETS	 21	2	1	; slot21 = slot2.getHeight
		175	[  0]	CALL 	 21	2	2	; slot21 = <unknown table>.getHeight(slot22)
		176	[  0]	UNM  	 21		21	; slot21 = -<unknown table>.getHeight
		177	[  0]	MULVN	 21	21	12	; slot21 = slot21 * 0.5
		178	[  0]	CALL 	 17	1	4	;  = love.graphics.print(<unknown table>.displayed, tostring, slot20)
		179	[  0]	TGETS	 17	15	0	; slot17 = love.graphics.pop
		180	[  0]	CALL 	 17	1	1	;  = love.graphics.pop()
		181	[  0]	KSHORT	 17		1	; slot17 = 1
		182	[  0]	ISGT 	 17		9	; if slot17 > math.max
		183	[  0]	JMP  	 17		3	; 	goto 187
		184	[  0]	KNIL 	 17		18	; slot17, <unknown table>.displayed = nil
		185	[  0]	TSETS	 18	7	21	; slot7.started = slot18
		186	[  0]	TSETS	 17	7	22	; slot7.previous = slot17
		187	[  0]	RET0 	  0		1	; return
	 42	[  0]	TSETS	  8	3	192	; slot3.drawCounter = slot8
	 43	[  0]	MOV  	  2		3	; slot2 = slot3
	 44	[  0]	UCLO 	  3		0	; nil uvs >= r3; goto 45
	 45	[  0]	KPRI 	  3		0	; slot3 = nil
	 46	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
	 47	[  0]	GGET 	  5		190	; slot5 = _env["require"]
	 48	[  0]	KSTR 	  7		189	; slot7 = "src.data.font_resolver"
	 49	[  0]	CALL 	  5	2	2	; slot5 = require(slot6)
	 50	[  0]	KSHORT	  6		640	; slot6 = 640
	 51	[  0]	KSHORT	  7		360	; slot7 = 360
	 52	[  0]	KSHORT	  8		3	; slot8 = 3
	 53	[  0]	KSHORT	  9		2	; slot9 = 2
	 54	[  0]	KPRI 	 10		0	; slot10 = nil
	 55	[  0]	KPRI 	 11		1	; slot11 = false
	 56	[  0]	KPRI 	 12		0	; slot12 = nil
	 57	[  0]	TNEW 	 13		0	; slot13 = new table( array: 0, dict: 1)
	 58	[  0]	TNEW 	 14		0	; slot14 = new table( array: 0, dict: 1)
	 59	[  0]	KSHORT	 15		0	; slot15 = 0
	 60	[  0]	TDUP 	 16		188	; slot16 = copy table#k188
	 61	[  0]	FNEW 	 17		187	; N/A:0-0: 0 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		0	; slot0 = _env["pairs"]
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	CALL 	  0	4	2	; slot0, slot1, slot2 = pairs(slot1)
		  4	[  0]	ISNEXT	  3		3	; Verify ITERN at 8; goto 8
		  5	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  6	[  0]	KPRI 	  5		0	; slot5 = nil
		  7	[  0]	TSETV	  5	4	3	; uv0"unknown"[slot3] = slot5
		  8	[  0]	ITERN	  3	2	3	; slot3, slot4, slot5 = slot0, slot1, slot2; slot3 = slot0(slot1, slot2)
		  9	[  0]	ITERL	  3		-5	; slot2 = slot3; if slot3 != nil goto 5
		 10	[  0]	RET0 	  0		1	; return
	 62	[  0]	FNEW 	 18		186	; N/A:0-0: 1 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  1		0	; slot1 = slot0
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	LEN  	  2		2	; slot2 = #uv0"unknown"
		  4	[  0]	KSHORT	  3		1	; slot3 = 1
		  5	[  0]	FORI 	  1		11	; for slot4 = slot1,slot2,slot3 else goto 17
		  6	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		  7	[  0]	TGETV	  5	5	4	; slot5 = uv0"unknown"[slot4]
		  8	[  0]	KPRI 	  6		0	; slot6 = nil
		  9	[  0]	TSETS	  6	5	3	; slot5.key = slot6
		 10	[  0]	KPRI 	  6		0	; slot6 = nil
		 11	[  0]	TSETS	  6	5	2	; slot5.text = slot6
		 12	[  0]	KPRI 	  6		0	; slot6 = nil
		 13	[  0]	TSETS	  6	5	1	; slot5.font = slot6
		 14	[  0]	KPRI 	  6		1	; slot6 = false
		 15	[  0]	TSETS	  6	5	0	; slot5.ready = slot6
		 16	[  0]	FORL 	  1		-11	; slot4 = slot4 + slot3; if cmp(slot4, sign slot3,  slot2) goto 6
		 17	[  0]	RET0 	  0		1	; return
	 63	[  0]	FNEW 	 19		185	; N/A:0-0: 0 args, 4 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		12	; 	goto 16
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	ISEQP	  0		1	; if uv0"unknown" == false
		  6	[  0]	JMP  	  0		9	; 	goto 16
		  7	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  8	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".release
		  9	[  0]	ISF  	   		0	; if not uv0"unknown".release
		 10	[  0]	JMP  	  1		5	; 	goto 16
		 11	[  0]	GGET 	  0		0	; slot0 = _env["pcall"]
		 12	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 13	[  0]	TGETS	  2	2	1	; slot2 = uv0"unknown".release
		 14	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 15	[  0]	CALL 	  0	1	3	;  = pcall(slot1, uv0"unknown".release)
		 16	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 17	[  0]	ISF  	   		0	; if not uv1"unknown"
		 18	[  0]	JMP  	  1		12	; 	goto 31
		 19	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 20	[  0]	ISEQP	  0		1	; if uv1"unknown" == false
		 21	[  0]	JMP  	  0		9	; 	goto 31
		 22	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 23	[  0]	TGETS	  0	0	1	; slot0 = uv1"unknown".release
		 24	[  0]	ISF  	   		0	; if not uv1"unknown".release
		 25	[  0]	JMP  	  1		5	; 	goto 31
		 26	[  0]	GGET 	  0		0	; slot0 = _env["pcall"]
		 27	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 28	[  0]	TGETS	  2	2	1	; slot2 = uv1"unknown".release
		 29	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 30	[  0]	CALL 	  0	1	3	;  = pcall(slot1, uv1"unknown".release)
		 31	[  0]	USETP	  0		1	; uv0"unknwon" = false
		 32	[  0]	USETP	  2		1	; uv2"unknwon" = false
		 33	[  0]	USETP	  1		1	; uv1"unknwon" = false
		 34	[  0]	UGET 	  0		3	; slot0 = uv3"unknwon"
		 35	[  0]	CALL 	  0	1	1	;  = uv3"unknown"()
		 36	[  0]	RET0 	  0		1	; return
	 64	[  0]	FNEW 	 20		184	; N/A:0-0: 0 args, 5 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			[dpiscale] = 1,
			[msaa] = 0,
			[format] = rgba8,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISEQP	  0		0	; if uv0"unknown" == nil
		  3	[  0]	JMP  	  0		5	; 	goto 9
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	IST  	   		0	; if uv0"unknown"
		  6	[  0]	JMP  	  1		1	; 	goto 8
		  7	[  0]	KPRI 	  0		0	; slot0 = nil
		  8	[  0]	RET1 	  0		2	; return slot0
		  9	[  0]	GGET 	  0		8	; slot0 = _env["pcall"]
		 10	[  0]	GGET 	  2		7	; slot2 = _env["love"]
		 11	[  0]	TGETS	  2	2	6	; slot2 = love.graphics
		 12	[  0]	TGETS	  2	2	5	; slot2 = love.graphics.newCanvas
		 13	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 14	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 15	[  0]	TDUP 	  5		4	; slot5 = copy table#k4
		 16	[  0]	CALL 	  0	3	5	; slot0, slot1 = pcall(slot1, love.graphics.newCanvas, uv1"unknown", uv2"unknown")
		 17	[  0]	ISF  	   		0	; if not slot0
		 18	[  0]	JMP  	  2		2	; 	goto 21
		 19	[  0]	IST  	   		1	; if slot1
		 20	[  0]	JMP  	  2		4	; 	goto 25
		 21	[  0]	USETP	  0		1	; uv0"unknwon" = false
		 22	[  0]	USETP	  3		1	; uv3"unknwon" = false
		 23	[  0]	KPRI 	  2		0	; slot2 = nil
		 24	[  0]	RET1 	  2		2	; return slot2
		 25	[  0]	MOV  	  4		1	; slot4 = slot1
		 26	[  0]	TGETS	  2	1	3	; slot2 = slot1.setFilter
		 27	[  0]	KSTR 	  5		2	; slot5 = "nearest"
		 28	[  0]	KSTR 	  6		2	; slot6 = "nearest"
		 29	[  0]	CALL 	  2	1	4	;  = <unknown table>.setFilter(slot3, slot4, slot5)
		 30	[  0]	GGET 	  2		8	; slot2 = _env["pcall"]
		 31	[  0]	GGET 	  4		7	; slot4 = _env["love"]
		 32	[  0]	TGETS	  4	4	6	; slot4 = love.graphics
		 33	[  0]	TGETS	  4	4	1	; slot4 = love.graphics.newQuad
		 34	[  0]	KSHORT	  5		0	; slot5 = 0
		 35	[  0]	KSHORT	  6		0	; slot6 = 0
		 36	[  0]	KSHORT	  7		1	; slot7 = 1
		 37	[  0]	KSHORT	  8		1	; slot8 = 1
		 38	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 39	[  0]	UGET 	 10		2	; slot10 = uv2"unknwon"
		 40	[  0]	CALL 	  2	3	8	; slot2, slot3 = pcall(slot3, love.graphics.newQuad, slot5, slot6, slot7, slot8, uv1"unknown")
		 41	[  0]	ISF  	   		2	; if not slot2
		 42	[  0]	JMP  	  4		2	; 	goto 45
		 43	[  0]	IST  	   		3	; if slot3
		 44	[  0]	JMP  	  4		8	; 	goto 53
		 45	[  0]	GGET 	  4		8	; slot4 = _env["pcall"]
		 46	[  0]	TGETS	  6	1	0	; slot6 = slot1.release
		 47	[  0]	MOV  	  7		1	; slot7 = slot1
		 48	[  0]	CALL 	  4	1	3	;  = pcall(slot5, <unknown table>.release)
		 49	[  0]	USETP	  0		1	; uv0"unknwon" = false
		 50	[  0]	USETP	  3		1	; uv3"unknwon" = false
		 51	[  0]	KPRI 	  4		0	; slot4 = nil
		 52	[  0]	RET1 	  4		2	; return slot4
		 53	[  0]	USETV	  0		1	; uv0"unknwon" = slot1
		 54	[  0]	USETP	  4		1	; uv4"unknwon" = false
		 55	[  0]	USETV	  3		3	; uv3"unknwon" = slot3
		 56	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 57	[  0]	RET1 	  4		2	; return uv0"unknown"
	 65	[  0]	FNEW 	 21		183	; N/A:0-0: 1 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KPRI 	  1		0	; slot1 = nil
		  4	[  0]	RET1 	  1		2	; return slot1
		  5	[  0]	TGETS	  1	0	5	; slot1 = slot0.combatNumberFont
		  6	[  0]	ISF  	   		1	; if not <unknown table>.combatNumberFont
		  7	[  0]	JMP  	  2		2	; 	goto 10
		  8	[  0]	TGETS	  1	0	5	; slot1 = slot0.combatNumberFont
		  9	[  0]	RET1 	  1		2	; return <unknown table>.combatNumberFont
		 10	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 11	[  0]	TGETS	  1	1	4	; slot1 = uv0"unknown".resolve
		 12	[  0]	KSTR 	  3		3	; slot3 = "src/data/font/Galmuri9W.fnt"
		 13	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown".resolve(slot2)
		 14	[  0]	TGETS	  2	0	2	; slot2 = slot0.fontInfo
		 15	[  0]	ISF  	   		2	; if not <unknown table>.fontInfo
		 16	[  0]	JMP  	  3		6	; 	goto 23
		 17	[  0]	TGETS	  2	0	2	; slot2 = slot0.fontInfo
		 18	[  0]	TGETS	  2	2	1	; slot2 = <unknown table>.fontInfo.path
		 19	[  0]	ISNEV	  2		1	; if <unknown table>.fontInfo.path ~= slot1
		 20	[  0]	JMP  	  2		2	; 	goto 23
		 21	[  0]	TGETS	  2	0	0	; slot2 = slot0.font
		 22	[  0]	RET1 	  2		2	; return <unknown table>.font
		 23	[  0]	KPRI 	  2		0	; slot2 = nil
		 24	[  0]	RET1 	  2		2	; return slot2
	 66	[  0]	FNEW 	 22		182	; N/A:0-0: 8 args, 3 upvalues, 18 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  8		8	; 	goto 11
		  3	[  0]	ISF  	   		1	; if not slot1
		  4	[  0]	JMP  	  8		6	; 	goto 11
		  5	[  0]	ISF  	   		2	; if not slot2
		  6	[  0]	JMP  	  8		4	; 	goto 11
		  7	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		  8	[  0]	TGETV	  8	8	0	; slot8 = uv0"unknown"[slot0]
		  9	[  0]	ISEQP	  8		0	; if slot8 == nil
		 10	[  0]	JMP  	  8		1	; 	goto 12
		 11	[  0]	RET0 	  0		1	; return
		 12	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 13	[  0]	ADDVN	  8	8	0	; slot8 = uv1"unknown" + 1
		 14	[  0]	USETV	  1		8	; uv1"unknwon" = slot8
		 15	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
		 16	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 17	[  0]	TGETV	  8	8	9	; slot8 = uv2"unknown"[uv1"unknown"]
		 18	[  0]	IST  	   		8	; if slot8
		 19	[  0]	JMP  	  9		4	; 	goto 24
		 20	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
		 21	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
		 22	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
		 23	[  0]	TSETV	  8	9	10	; uv2"unknown"[uv1"unknown"] = slot8
		 24	[  0]	TSETS	  0	8	13	; slot8.key = slot0
		 25	[  0]	GGET 	  9		11	; slot9 = _env["tostring"]
		 26	[  0]	MOV  	 11		1	; slot11 = slot1
		 27	[  0]	CALL 	  9	2	2	; slot9 = tostring(uv1"unknown")
		 28	[  0]	TSETS	  9	8	12	; slot8.text = tostring
		 29	[  0]	TSETS	  2	8	10	; slot8.font = slot2
		 30	[  0]	GGET 	  9		8	; slot9 = _env["tonumber"]
		 31	[  0]	MOV  	 11		3	; slot11 = slot3
		 32	[  0]	CALL 	  9	2	2	; slot9 = tonumber(uv1"unknown")
		 33	[  0]	IST  	   		9	; if tonumber
		 34	[  0]	JMP  	 10		1	; 	goto 36
		 35	[  0]	KSHORT	  9		1	; slot9 = 1
		 36	[  0]	TSETS	  9	8	9	; slot8.scale = slot9
		 37	[  0]	ISTC 	  9		4	; slot9 = slot4; if slot4
		 38	[  0]	JMP  	  9		1	; 	goto 40
		 39	[  0]	KSHORT	  9		1	; slot9 = 1
		 40	[  0]	TSETS	  9	8	7	; slot8.fillR = slot9
		 41	[  0]	ISTC 	  9		5	; slot9 = slot5; if slot5
		 42	[  0]	JMP  	  9		1	; 	goto 44
		 43	[  0]	KSHORT	  9		1	; slot9 = 1
		 44	[  0]	TSETS	  9	8	6	; slot8.fillG = slot9
		 45	[  0]	ISTC 	  9		6	; slot9 = slot6; if slot6
		 46	[  0]	JMP  	  9		1	; 	goto 48
		 47	[  0]	KSHORT	  9		1	; slot9 = 1
		 48	[  0]	TSETS	  9	8	5	; slot8.fillB = slot9
		 49	[  0]	GGET 	  9		3	; slot9 = _env["math"]
		 50	[  0]	TGETS	  9	9	2	; slot9 = math.max
		 51	[  0]	KSHORT	 11		0	; slot11 = 0
		 52	[  0]	GGET 	 12		3	; slot12 = _env["math"]
		 53	[  0]	TGETS	 12	12	1	; slot12 = math.min
		 54	[  0]	KSHORT	 14		1	; slot14 = 1
		 55	[  0]	GGET 	 15		8	; slot15 = _env["tonumber"]
		 56	[  0]	MOV  	 17		7	; slot17 = slot7
		 57	[  0]	CALL 	 15	2	2	; slot15 = tonumber(slot16)
		 58	[  0]	IST  	   		15	; if tonumber
		 59	[  0]	JMP  	 16		1	; 	goto 61
		 60	[  0]	KSHORT	 15		0	; slot15 = 0
		 61	[  0]	CALL 	 12	0	3	; MULTRES = math.min(slot13, slot14)
		 62	[  0]	CALLM	  9	2	1	; slot9 = math.max(uv1"unknown", ...MULTRES)
		 63	[  0]	TSETS	  9	8	4	; slot8.outline = math.max
		 64	[  0]	KPRI 	  9		1	; slot9 = false
		 65	[  0]	TSETS	  9	8	0	; slot8.ready = slot9
		 66	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 67	[  0]	KPRI 	 10		1	; slot10 = false
		 68	[  0]	TSETV	 10	9	0	; uv0"unknown"[slot0] = slot10
		 69	[  0]	RET0 	  0		1	; return
	 67	[  0]	FNEW 	 23		181	; N/A:0-0: 9 args, 1 upvalues, 27 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  9		1	; 	goto 4
		  3	[  0]	RET0 	  0		1	; return
		  4	[  0]	LEN  	  9		0	; slot9 = #slot0
		  5	[  0]	KSHORT	 10		1	; slot10 = 1
		  6	[  0]	KSHORT	 11		65535	; slot11 = 65535
		  7	[  0]	FORI 	  9		47	; for slot12 = slot9,slot10,slot11 else goto 55
		  8	[  0]	TGETV	 13	0	12	; slot13 = slot0[slot12]
		  9	[  0]	TGETS	 14	13	5	; slot14 = slot13.amt
		 10	[  0]	IST  	   		14	; if <unknown table>.amt
		 11	[  0]	JMP  	 15		1	; 	goto 13
		 12	[  0]	KSHORT	 14		0	; slot14 = 0
		 13	[  0]	KSHORT	 15		0	; slot15 = 0
		 14	[  0]	ISLE 	 15		14	; if slot15 <= slot14
		 15	[  0]	JMP  	 15		2	; 	goto 18
		 16	[  0]	KPRI 	 15		1	; slot15 = false
		 17	[  0]	JMP  	 16		1	; 	goto 19
		 18	[  0]	KPRI 	 15		2	; slot15 = true
		 19	[  0]	ISF  	   		15	; if not slot15
		 20	[  0]	JMP  	 16		2	; 	goto 23
		 21	[  0]	KSTR 	 16		4	; slot16 = "+"
		 22	[  0]	JMP  	 17		1	; 	goto 24
		 23	[  0]	KSTR 	 16		3	; slot16 = "-"
		 24	[  0]	GGET 	 17		2	; slot17 = _env["tostring"]
		 25	[  0]	GGET 	 19		1	; slot19 = _env["math"]
		 26	[  0]	TGETS	 19	19	0	; slot19 = math.abs
		 27	[  0]	MOV  	 21		14	; slot21 = slot14
		 28	[  0]	CALL 	 19	0	2	; MULTRES = math.abs(slot20)
		 29	[  0]	CALLM	 17	2	0	; slot17 = tostring(, ...MULTRES)
		 30	[  0]	CAT  	 16	16	17	; slot16 = slot16 .. tostring
		 31	[  0]	ISF  	   		15	; if not slot15
		 32	[  0]	JMP  	 17		11	; 	goto 44
		 33	[  0]	UGET 	 17		0	; slot17 = uv0"unknwon"
		 34	[  0]	MOV  	 19		13	; slot19 = slot13
		 35	[  0]	MOV  	 20		16	; slot20 = slot16
		 36	[  0]	MOV  	 21		1	; slot21 = slot1
		 37	[  0]	MOV  	 22		2	; slot22 = slot2
		 38	[  0]	MOV  	 23		3	; slot23 = slot3
		 39	[  0]	MOV  	 24		4	; slot24 = slot4
		 40	[  0]	MOV  	 25		5	; slot25 = slot5
		 41	[  0]	KSHORT	 26		0	; slot26 = 0
		 42	[  0]	CALL 	 17	1	9	;  = uv0"unknown"(slot18, slot19, slot20, slot21, slot22, slot23, slot24, slot25)
		 43	[  0]	JMP  	 17		10	; 	goto 54
		 44	[  0]	UGET 	 17		0	; slot17 = uv0"unknwon"
		 45	[  0]	MOV  	 19		13	; slot19 = slot13
		 46	[  0]	MOV  	 20		16	; slot20 = slot16
		 47	[  0]	MOV  	 21		1	; slot21 = slot1
		 48	[  0]	MOV  	 22		2	; slot22 = slot2
		 49	[  0]	MOV  	 23		6	; slot23 = slot6
		 50	[  0]	MOV  	 24		7	; slot24 = slot7
		 51	[  0]	MOV  	 25		8	; slot25 = slot8
		 52	[  0]	KSHORT	 26		0	; slot26 = 0
		 53	[  0]	CALL 	 17	1	9	;  = uv0"unknown"(slot18, slot19, slot20, slot21, slot22, slot23, slot24, slot25)
		 54	[  0]	FORL 	  9		-47	; slot12 = slot12 + slot11; if cmp(slot12, sign slot11,  slot10) goto 8
		 55	[  0]	RET0 	  0		1	; return
	 68	[  0]	FNEW 	 24		180	; N/A:0-0: 2 args, 1 upvalues, 38 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  2		1	; 	goto 4
		  3	[  0]	RET0 	  0		1	; return
		  4	[  0]	GGET 	  2		17	; slot2 = _env["ipairs"]
		  5	[  0]	MOV  	  4		0	; slot4 = slot0
		  6	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
		  7	[  0]	JMP  	  5		174	; 	goto 182
		  8	[  0]	ISFC 	  7		6	; slot7 = slot6; if not slot6
		  9	[  0]	JMP  	  7		1	; 	goto 11
		 10	[  0]	TGETS	  7	6	16	; slot7 = slot6.damagePopups
		 11	[  0]	ISF  	   		7	; if not <unknown table>.damagePopups
		 12	[  0]	JMP  	  8		169	; 	goto 182
		 13	[  0]	LEN  	  8		7	; slot8 = #<unknown table>.damagePopups
		 14	[  0]	KSHORT	  9		1	; slot9 = 1
		 15	[  0]	KSHORT	 10		65535	; slot10 = 65535
		 16	[  0]	FORI 	  8		165	; for slot11 = slot8,slot9,slot10 else goto 182
		 17	[  0]	TGETV	 12	7	11	; slot12 = <unknown table>.damagePopups[slot11]
		 18	[  0]	GGET 	 13		15	; slot13 = _env["math"]
		 19	[  0]	TGETS	 13	13	14	; slot13 = math.max
		 20	[  0]	KNUM 	 15		0	; slot15 = 0.0001
		 21	[  0]	GGET 	 16		13	; slot16 = _env["tonumber"]
		 22	[  0]	TGETS	 18	12	12	; slot18 = slot12.dur
		 23	[  0]	CALL 	 16	2	2	; slot16 = tonumber(slot17)
		 24	[  0]	IST  	   		16	; if tonumber
		 25	[  0]	JMP  	 17		1	; 	goto 27
		 26	[  0]	KNUM 	 16		0	; slot16 = 0.0001
		 27	[  0]	CALL 	 13	2	3	; slot13 = math.max(slot14, slot15)
		 28	[  0]	GGET 	 14		15	; slot14 = _env["math"]
		 29	[  0]	TGETS	 14	14	11	; slot14 = math.min
		 30	[  0]	KSHORT	 16		1	; slot16 = 1
		 31	[  0]	GGET 	 17		13	; slot17 = _env["tonumber"]
		 32	[  0]	TGETS	 19	12	10	; slot19 = slot12.t
		 33	[  0]	CALL 	 17	2	2	; slot17 = tonumber(<unknown table>.dur)
		 34	[  0]	IST  	   		17	; if tonumber
		 35	[  0]	JMP  	 18		1	; 	goto 37
		 36	[  0]	KSHORT	 17		0	; slot17 = 0
		 37	[  0]	DIVVV	 17	17	13	; slot17 = slot17 / math.max
		 38	[  0]	CALL 	 14	2	3	; slot14 = math.min(slot15, slot16)
		 39	[  0]	KNUM 	 15		1	; slot15 = 0.24
		 40	[  0]	GGET 	 16		15	; slot16 = _env["math"]
		 41	[  0]	TGETS	 16	16	11	; slot16 = math.min
		 42	[  0]	KSHORT	 18		1	; slot18 = 1
		 43	[  0]	DIVVV	 19	14	15	; slot19 = math.min / slot15
		 44	[  0]	CALL 	 16	2	3	; slot16 = math.min(slot17, slot18)
		 45	[  0]	MULVV	 17	16	16	; slot17 = math.min * math.min
		 46	[  0]	MULNV	 18	16	2	; slot18 = 2 * math.min
		 47	[  0]	SUBNV	 18	18	3	; slot18 = 3 - slot18
		 48	[  0]	MULVV	 17	17	18	; slot17 = slot17 * slot18
		 49	[  0]	MULNV	 18	17	4	; slot18 = 0.64 * slot17
		 50	[  0]	ADDNV	 18	18	5	; slot18 = 0.36 + slot18
		 51	[  0]	TGETS	 19	12	9	; slot19 = slot12.skillBig
		 52	[  0]	ISEQP	 19		2	; if <unknown table>.skillBig == true
		 53	[  0]	JMP  	 19		2	; 	goto 56
		 54	[  0]	KPRI 	 19		1	; slot19 = false
		 55	[  0]	JMP  	 20		1	; 	goto 57
		 56	[  0]	KPRI 	 19		2	; slot19 = true
		 57	[  0]	ISF  	   		19	; if not slot19
		 58	[  0]	JMP  	 20		10	; 	goto 69
		 59	[  0]	GGET 	 20		8	; slot20 = _env["tostring"]
		 60	[  0]	GGET 	 22		15	; slot22 = _env["math"]
		 61	[  0]	TGETS	 22	22	7	; slot22 = math.abs
		 62	[  0]	TGETS	 24	12	6	; slot24 = slot12.amt
		 63	[  0]	CALL 	 22	0	2	; MULTRES = math.abs(slot23)
		 64	[  0]	CALLM	 20	2	0	; slot20 = tostring(, ...MULTRES)
		 65	[  0]	KSTR 	 21		5	; slot21 = "!"
		 66	[  0]	CAT  	 20	20	21	; slot20 = tostring .. slot21
		 67	[  0]	IST  	   		20	; if slot20
		 68	[  0]	JMP  	 21		6	; 	goto 75
		 69	[  0]	GGET 	 20		8	; slot20 = _env["tostring"]
		 70	[  0]	GGET 	 22		15	; slot22 = _env["math"]
		 71	[  0]	TGETS	 22	22	7	; slot22 = math.abs
		 72	[  0]	TGETS	 24	12	6	; slot24 = slot12.amt
		 73	[  0]	CALL 	 22	0	2	; MULTRES = math.abs(slot23)
		 74	[  0]	CALLM	 20	2	0	; slot20 = tostring(, ...MULTRES)
		 75	[  0]	KNIL 	 21		23	; slot21, math.abs, slot23 = nil
		 76	[  0]	TGETS	 24	12	4	; slot24 = slot12.kind
		 77	[  0]	ISNES	 24		3	; if <unknown table>.kind ~= "heal"
		 78	[  0]	JMP  	 24		6	; 	goto 85
		 79	[  0]	KNUM 	 24		6	; slot24 = 0.3
		 80	[  0]	KSHORT	 25		1	; slot25 = 1
		 81	[  0]	KNUM 	 23		7	; slot23 = 0.48
		 82	[  0]	MOV  	 22		25	; slot22 = slot25
		 83	[  0]	MOV  	 21		24	; slot21 = slot24
		 84	[  0]	JMP  	 24		31	; 	goto 116
		 85	[  0]	TGETS	 24	12	4	; slot24 = slot12.kind
		 86	[  0]	ISNES	 24		2	; if <unknown table>.kind ~= "enemySkill"
		 87	[  0]	JMP  	 24		6	; 	goto 94
		 88	[  0]	KSHORT	 24		1	; slot24 = 1
		 89	[  0]	KNUM 	 25		8	; slot25 = 0.26
		 90	[  0]	KNUM 	 23		9	; slot23 = 0.14
		 91	[  0]	MOV  	 22		25	; slot22 = slot25
		 92	[  0]	MOV  	 21		24	; slot21 = slot24
		 93	[  0]	JMP  	 24		22	; 	goto 116
		 94	[  0]	ISF  	   		19	; if not slot19
		 95	[  0]	JMP  	 24		6	; 	goto 102
		 96	[  0]	KSHORT	 24		1	; slot24 = 1
		 97	[  0]	KNUM 	 25		10	; slot25 = 0.86
		 98	[  0]	KNUM 	 23		11	; slot23 = 0.25
		 99	[  0]	MOV  	 22		25	; slot22 = slot25
		100	[  0]	MOV  	 21		24	; slot21 = slot24
		101	[  0]	JMP  	 24		14	; 	goto 116
		102	[  0]	TGETS	 24	6	1	; slot24 = slot6.side
		103	[  0]	ISNES	 24		0	; if <unknown table>.side ~= "enemy"
		104	[  0]	JMP  	 24		6	; 	goto 111
		105	[  0]	KNUM 	 24		10	; slot24 = 0.86
		106	[  0]	KNUM 	 25		10	; slot25 = 0.86
		107	[  0]	KNUM 	 23		10	; slot23 = 0.86
		108	[  0]	MOV  	 22		25	; slot22 = slot25
		109	[  0]	MOV  	 21		24	; slot21 = slot24
		110	[  0]	JMP  	 24		5	; 	goto 116
		111	[  0]	KSHORT	 24		1	; slot24 = 1
		112	[  0]	KNUM 	 25		12	; slot25 = 0.6
		113	[  0]	KNUM 	 23		13	; slot23 = 0.2
		114	[  0]	MOV  	 22		25	; slot22 = slot25
		115	[  0]	MOV  	 21		24	; slot21 = slot24
		116	[  0]	ISF  	   		19	; if not slot19
		117	[  0]	JMP  	 24		2	; 	goto 120
		118	[  0]	KNUM 	 24		14	; slot24 = 0.19
		119	[  0]	JMP  	 25		1	; 	goto 121
		120	[  0]	KNUM 	 24		15	; slot24 = 0.15
		121	[  0]	GGET 	 25		15	; slot25 = _env["math"]
		122	[  0]	TGETS	 25	25	14	; slot25 = math.max
		123	[  0]	KSHORT	 27		0	; slot27 = 0
		124	[  0]	GGET 	 28		15	; slot28 = _env["math"]
		125	[  0]	TGETS	 28	28	11	; slot28 = math.min
		126	[  0]	KSHORT	 30		1	; slot30 = 1
		127	[  0]	GGET 	 31		13	; slot31 = _env["tonumber"]
		128	[  0]	TGETS	 33	12	10	; slot33 = slot12.t
		129	[  0]	CALL 	 31	2	2	; slot31 = tonumber(slot32)
		130	[  0]	IST  	   		31	; if tonumber
		131	[  0]	JMP  	 32		1	; 	goto 133
		132	[  0]	KSHORT	 31		0	; slot31 = 0
		133	[  0]	DIVVV	 31	31	24	; slot31 = slot31 / slot24
		134	[  0]	CALL 	 28	0	3	; MULTRES = math.min(slot29, slot30)
		135	[  0]	CALLM	 25	2	1	; slot25 = math.max(slot26, ...MULTRES)
		136	[  0]	ISF  	   		19	; if not slot19
		137	[  0]	JMP  	 26		2	; 	goto 140
		138	[  0]	KNUM 	 26		16	; slot26 = 0.38
		139	[  0]	JMP  	 27		1	; 	goto 141
		140	[  0]	KNUM 	 26		17	; slot26 = 0.33
		141	[  0]	KPRI 	 27		0	; slot27 = nil
		142	[  0]	ISGE 	 25		26	; if math.max >= slot26
		143	[  0]	JMP  	 28		2	; 	goto 146
		144	[  0]	KSHORT	 27		1	; slot27 = 1
		145	[  0]	JMP  	 28		9	; 	goto 155
		146	[  0]	SUBVV	 28	25	26	; slot28 = math.max - slot26
		147	[  0]	GGET 	 29		15	; slot29 = _env["math"]
		148	[  0]	TGETS	 29	29	14	; slot29 = math.max
		149	[  0]	KNUM 	 31		18	; slot31 = 0.001
		150	[  0]	SUBNV	 32	26	19	; slot32 = 1 - slot26
		151	[  0]	CALL 	 29	2	3	; slot29 = math.max(slot30, slot31)
		152	[  0]	DIVVV	 28	28	29	; slot28 = slot28 / math.max
		153	[  0]	MULVV	 29	28	28	; slot29 = slot28 * slot28
		154	[  0]	SUBNV	 27	29	19	; slot27 = 1 - slot29
		155	[  0]	GGET 	 28		15	; slot28 = _env["math"]
		156	[  0]	TGETS	 28	28	14	; slot28 = math.max
		157	[  0]	KSHORT	 30		0	; slot30 = 0
		158	[  0]	GGET 	 31		15	; slot31 = _env["math"]
		159	[  0]	TGETS	 31	31	11	; slot31 = math.min
		160	[  0]	KSHORT	 33		1	; slot33 = 1
		161	[  0]	MOV  	 34		27	; slot34 = slot27
		162	[  0]	CALL 	 31	0	3	; MULTRES = math.min(slot32, slot33)
		163	[  0]	CALLM	 28	2	1	; slot28 = math.max(slot29, ...MULTRES)
		164	[  0]	MOV  	 27		28	; slot27 = math.max
		165	[  0]	UGET 	 28		0	; slot28 = uv0"unknwon"
		166	[  0]	MOV  	 30		12	; slot30 = slot12
		167	[  0]	MOV  	 31		20	; slot31 = tostring
		168	[  0]	MOV  	 32		1	; slot32 = slot1
		169	[  0]	MOV  	 33		18	; slot33 = slot18
		170	[  0]	SUBNV	 34	21	19	; slot34 = 1 - slot21
		171	[  0]	MULVV	 34	34	27	; slot34 = slot34 * math.max
		172	[  0]	ADDVV	 34	21	34	; slot34 = slot21 + slot34
		173	[  0]	SUBNV	 35	22	19	; slot35 = 1 - slot22
		174	[  0]	MULVV	 35	35	27	; slot35 = slot35 * math.max
		175	[  0]	ADDVV	 35	22	35	; slot35 = slot22 + slot35
		176	[  0]	SUBNV	 36	23	19	; slot36 = 1 - slot23
		177	[  0]	MULVV	 36	36	27	; slot36 = slot36 * math.max
		178	[  0]	ADDVV	 36	23	36	; slot36 = slot23 + slot36
		179	[  0]	MOV  	 37		27	; slot37 = math.max
		180	[  0]	CALL 	 28	1	9	;  = uv0"unknown"(slot29, slot30, tostring, slot32, slot33, slot34, slot35, slot36)
		181	[  0]	FORL 	  8		-165	; slot11 = slot11 + slot10; if cmp(slot11, sign slot10,  slot9) goto 17
		182	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5, slot6 = slot2(slot3, slot4)
		183	[  0]	ITERL	  5		-176	; slot4 = slot5; if slot5 != nil goto 8
		184	[  0]	RET0 	  0		1	; return
	 69	[  0]	FNEW 	 25		179	; N/A:0-0: 2 args, 3 upvalues, 18 slots
		
		;;;; constant tables ;;;;
		ktable#6 = [
			#1: 1,
			#2: 0.5215686275,
			#3: 0.5215686275,
			#4: 1,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown"(slot3)
		  4	[  0]	IST  	   		2	; if slot2
		  5	[  0]	JMP  	  3		1	; 	goto 7
		  6	[  0]	RET0 	  0		1	; return
		  7	[  0]	TGETS	  3	0	17	; slot3 = slot0.goldDisplay
		  8	[  0]	IST  	   		3	; if <unknown table>.goldDisplay
		  9	[  0]	JMP  	  4		1	; 	goto 11
		 10	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 11	[  0]	TGETS	  4	3	16	; slot4 = slot3.enabled
		 12	[  0]	ISF  	   		4	; if not <unknown table>.enabled
		 13	[  0]	JMP  	  5		27	; 	goto 41
		 14	[  0]	TGETS	  4	3	15	; slot4 = slot3.scale
		 15	[  0]	IST  	   		4	; if <unknown table>.scale
		 16	[  0]	JMP  	  5		1	; 	goto 18
		 17	[  0]	KSHORT	  4		1	; slot4 = 1
		 18	[  0]	TGETS	  5	3	14	; slot5 = slot3.integerScale
		 19	[  0]	ISF  	   		5	; if not <unknown table>.integerScale
		 20	[  0]	JMP  	  6		9	; 	goto 30
		 21	[  0]	GGET 	  5		13	; slot5 = _env["math"]
		 22	[  0]	TGETS	  5	5	12	; slot5 = math.max
		 23	[  0]	KSHORT	  7		1	; slot7 = 1
		 24	[  0]	GGET 	  8		13	; slot8 = _env["math"]
		 25	[  0]	TGETS	  8	8	11	; slot8 = math.floor
		 26	[  0]	ADDVN	 10	4	0	; slot10 = slot4 + 0.5
		 27	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 28	[  0]	CALLM	  5	2	1	; slot5 = math.max(slot6, ...MULTRES)
		 29	[  0]	MOV  	  4		5	; slot4 = math.max
		 30	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 31	[  0]	TGETS	  7	0	10	; slot7 = slot0._goldPopups
		 32	[  0]	MOV  	  8		2	; slot8 = slot2
		 33	[  0]	MOV  	  9		4	; slot9 = math.max
		 34	[  0]	KNUM 	 10		1	; slot10 = 0.6274509803921569
		 35	[  0]	KNUM 	 11		2	; slot11 = 0.9019607843137255
		 36	[  0]	KNUM 	 12		1	; slot12 = 0.6274509803921569
		 37	[  0]	KSHORT	 13		1	; slot13 = 1
		 38	[  0]	KNUM 	 14		3	; slot14 = 0.42
		 39	[  0]	KNUM 	 15		4	; slot15 = 0.37
		 40	[  0]	CALL 	  5	1	10	;  = uv1"unknown"(slot6, <unknown table>._goldPopups, slot8, math.max, slot10, slot11, slot12, slot13, slot14)
		 41	[  0]	TGETS	  4	0	9	; slot4 = slot0.jungsuDisplay
		 42	[  0]	IST  	   		4	; if <unknown table>.jungsuDisplay
		 43	[  0]	JMP  	  5		1	; 	goto 45
		 44	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 45	[  0]	TGETS	  5	4	16	; slot5 = slot4.enabled
		 46	[  0]	ISF  	   		5	; if not <unknown table>.enabled
		 47	[  0]	JMP  	  6		44	; 	goto 92
		 48	[  0]	TGETS	  5	4	15	; slot5 = slot4.scale
		 49	[  0]	IST  	   		5	; if <unknown table>.scale
		 50	[  0]	JMP  	  6		1	; 	goto 52
		 51	[  0]	KSHORT	  5		1	; slot5 = 1
		 52	[  0]	TGETS	  6	4	14	; slot6 = slot4.integerScale
		 53	[  0]	ISF  	   		6	; if not <unknown table>.integerScale
		 54	[  0]	JMP  	  7		9	; 	goto 64
		 55	[  0]	GGET 	  6		13	; slot6 = _env["math"]
		 56	[  0]	TGETS	  6	6	12	; slot6 = math.max
		 57	[  0]	KSHORT	  8		1	; slot8 = 1
		 58	[  0]	GGET 	  9		13	; slot9 = _env["math"]
		 59	[  0]	TGETS	  9	9	11	; slot9 = math.floor
		 60	[  0]	ADDVN	 11	5	0	; slot11 = slot5 + 0.5
		 61	[  0]	CALL 	  9	0	2	; MULTRES = math.floor(slot10)
		 62	[  0]	CALLM	  6	2	1	; slot6 = math.max(slot7, ...MULTRES)
		 63	[  0]	MOV  	  5		6	; slot5 = math.max
		 64	[  0]	TGETS	  6	0	8	; slot6 = slot0.heartNumber
		 65	[  0]	ISF  	   		6	; if not <unknown table>.heartNumber
		 66	[  0]	JMP  	  7		4	; 	goto 71
		 67	[  0]	TGETS	  6	0	8	; slot6 = slot0.heartNumber
		 68	[  0]	TGETS	  6	6	7	; slot6 = <unknown table>.heartNumber.color
		 69	[  0]	IST  	   		6	; if <unknown table>.heartNumber.color
		 70	[  0]	JMP  	  7		1	; 	goto 72
		 71	[  0]	TDUP 	  6		6	; slot6 = copy table#k6
		 72	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 73	[  0]	TGETS	  9	0	5	; slot9 = slot0._jungsuPopups
		 74	[  0]	MOV  	 10		2	; slot10 = slot2
		 75	[  0]	MOV  	 11		5	; slot11 = math.max
		 76	[  0]	KNUM 	 12		1	; slot12 = 0.6274509803921569
		 77	[  0]	KNUM 	 13		2	; slot13 = 0.9019607843137255
		 78	[  0]	KNUM 	 14		1	; slot14 = 0.6274509803921569
		 79	[  0]	TGETB	 15	6	1	; slot15 = slot6[1]
		 80	[  0]	IST  	   		15	; if slot15
		 81	[  0]	JMP  	 16		1	; 	goto 83
		 82	[  0]	KSHORT	 15		1	; slot15 = 1
		 83	[  0]	TGETB	 16	6	2	; slot16 = slot6[2]
		 84	[  0]	IST  	   		16	; if slot16
		 85	[  0]	JMP  	 17		1	; 	goto 87
		 86	[  0]	KNUM 	 16		5	; slot16 = 0.52
		 87	[  0]	TGETB	 17	6	3	; slot17 = slot6[3]
		 88	[  0]	IST  	   		17	; if slot17
		 89	[  0]	JMP  	 18		1	; 	goto 91
		 90	[  0]	KNUM 	 17		5	; slot17 = 0.52
		 91	[  0]	CALL 	  7	1	10	;  = uv1"unknown"(slot8, <unknown table>._jungsuPopups, slot10, math.max, slot12, slot13, slot14, slot15, slot16)
		 92	[  0]	ISF  	   		1	; if not slot1
		 93	[  0]	JMP  	  5		21	; 	goto 115
		 94	[  0]	TGETS	  5	1	4	; slot5 = slot1.baseHP
		 95	[  0]	ISEQP	  5		0	; if <unknown table>.baseHP == nil
		 96	[  0]	JMP  	  5		18	; 	goto 115
		 97	[  0]	TGETS	  5	0	8	; slot5 = slot0.heartNumber
		 98	[  0]	IST  	   		5	; if <unknown table>.heartNumber
		 99	[  0]	JMP  	  6		1	; 	goto 101
		100	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		101	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		102	[  0]	TGETS	  8	0	3	; slot8 = slot0._hpPopups
		103	[  0]	MOV  	  9		2	; slot9 = slot2
		104	[  0]	TGETS	 10	5	2	; slot10 = slot5.popupScale
		105	[  0]	IST  	   		10	; if <unknown table>.popupScale
		106	[  0]	JMP  	 11		1	; 	goto 108
		107	[  0]	KSHORT	 10		1	; slot10 = 1
		108	[  0]	KNUM 	 11		1	; slot11 = 0.6274509803921569
		109	[  0]	KNUM 	 12		2	; slot12 = 0.9019607843137255
		110	[  0]	KNUM 	 13		1	; slot13 = 0.6274509803921569
		111	[  0]	KSHORT	 14		1	; slot14 = 1
		112	[  0]	KNUM 	 15		3	; slot15 = 0.42
		113	[  0]	KNUM 	 16		4	; slot16 = 0.37
		114	[  0]	CALL 	  6	1	10	;  = uv1"unknown"(slot7, <unknown table>._hpPopups, slot9, slot10, slot11, slot12, slot13, slot14, slot15)
		115	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		116	[  0]	ISFC 	  7		1	; slot7 = slot1; if not slot1
		117	[  0]	JMP  	  7		1	; 	goto 119
		118	[  0]	TGETS	  7	1	1	; slot7 = slot1.allies
		119	[  0]	MOV  	  8		2	; slot8 = slot2
		120	[  0]	CALL 	  5	1	3	;  = uv2"unknown"(slot6, <unknown table>.allies)
		121	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		122	[  0]	ISFC 	  7		1	; slot7 = slot1; if not slot1
		123	[  0]	JMP  	  7		1	; 	goto 125
		124	[  0]	TGETS	  7	1	0	; slot7 = slot1.enemies
		125	[  0]	MOV  	  8		2	; slot8 = slot2
		126	[  0]	CALL 	  5	1	3	;  = uv2"unknown"(slot6, <unknown table>.enemies)
		127	[  0]	RET0 	  0		1	; return
	 70	[  0]	FNEW 	 26		178	; N/A:0-0: 0 args, 7 upvalues, 17 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  3	[  0]	KSHORT	  2		0	; slot2 = 0
		  4	[  0]	KSHORT	  3		1	; slot3 = 1
		  5	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		  6	[  0]	KSHORT	  5		1	; slot5 = 1
		  7	[  0]	FORI 	  3		83	; for slot6 = slot3,slot4,slot5 else goto 91
		  8	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		  9	[  0]	TGETV	  7	7	6	; slot7 = uv2"unknown"[slot6]
		 10	[  0]	GGET 	  8		13	; slot8 = _env["math"]
		 11	[  0]	TGETS	  8	8	12	; slot8 = math.max
		 12	[  0]	KSHORT	 10		1	; slot10 = 1
		 13	[  0]	GGET 	 11		13	; slot11 = _env["math"]
		 14	[  0]	TGETS	 11	11	11	; slot11 = math.ceil
		 15	[  0]	TGETS	 13	7	10	; slot13 = slot7.font
		 16	[  0]	MOV  	 15		13	; slot15 = <unknown table>.font
		 17	[  0]	TGETS	 13	13	9	; slot13 = <unknown table>.font.getWidth
		 18	[  0]	TGETS	 16	7	8	; slot16 = slot7.text
		 19	[  0]	CALL 	 13	2	3	; slot13 = <unknown table>.font.getWidth(slot14, <unknown table>.font)
		 20	[  0]	TGETS	 14	7	7	; slot14 = slot7.scale
		 21	[  0]	MULVV	 13	13	14	; slot13 = <unknown table>.font.getWidth * <unknown table>.scale
		 22	[  0]	CALL 	 11	0	2	; MULTRES = math.ceil(slot12)
		 23	[  0]	CALLM	  8	2	1	; slot8 = math.max(slot9, ...MULTRES)
		 24	[  0]	GGET 	  9		13	; slot9 = _env["math"]
		 25	[  0]	TGETS	  9	9	12	; slot9 = math.max
		 26	[  0]	KSHORT	 11		1	; slot11 = 1
		 27	[  0]	GGET 	 12		13	; slot12 = _env["math"]
		 28	[  0]	TGETS	 12	12	11	; slot12 = math.ceil
		 29	[  0]	TGETS	 14	7	10	; slot14 = slot7.font
		 30	[  0]	MOV  	 16		14	; slot16 = <unknown table>.font
		 31	[  0]	TGETS	 14	14	6	; slot14 = <unknown table>.font.getHeight
		 32	[  0]	CALL 	 14	2	2	; slot14 = <unknown table>.font.getHeight(<unknown table>.font)
		 33	[  0]	TGETS	 15	7	7	; slot15 = slot7.scale
		 34	[  0]	MULVV	 14	14	15	; slot14 = <unknown table>.font.getHeight * <unknown table>.scale
		 35	[  0]	CALL 	 12	0	2	; MULTRES = math.ceil(slot13)
		 36	[  0]	CALLM	  9	2	1	; slot9 = math.max(slot10, ...MULTRES)
		 37	[  0]	UGET 	 10		3	; slot10 = uv3"unknwon"
		 38	[  0]	MULVN	 10	10	0	; slot10 = uv3"unknown" * 2
		 39	[  0]	ADDVV	 10	8	10	; slot10 = math.max + slot10
		 40	[  0]	UGET 	 11		3	; slot11 = uv3"unknwon"
		 41	[  0]	MULVN	 11	11	0	; slot11 = uv3"unknown" * 2
		 42	[  0]	ADDVV	 11	9	11	; slot11 = math.max + slot11
		 43	[  0]	ADDVV	 12	0	10	; slot12 = uv0"unknown" + slot10
		 44	[  0]	UGET 	 13		4	; slot13 = uv4"unknwon"
		 45	[  0]	UGET 	 14		0	; slot14 = uv0"unknwon"
		 46	[  0]	SUBVV	 13	13	14	; slot13 = uv4"unknown" - uv0"unknown"
		 47	[  0]	ISGE 	 13		12	; if slot13 >= slot12
		 48	[  0]	JMP  	 12		5	; 	goto 54
		 49	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 50	[  0]	ADDVV	 12	1	2	; slot12 = uv0"unknown" + slot2
		 51	[  0]	UGET 	 13		0	; slot13 = uv0"unknwon"
		 52	[  0]	ADDVV	  1	12	13	; slot1 = slot12 + uv0"unknown"
		 53	[  0]	KSHORT	  2		0	; slot2 = 0
		 54	[  0]	UGET 	 12		4	; slot12 = uv4"unknwon"
		 55	[  0]	UGET 	 13		0	; slot13 = uv0"unknwon"
		 56	[  0]	MULVN	 13	13	0	; slot13 = uv0"unknown" * 2
		 57	[  0]	SUBVV	 12	12	13	; slot12 = uv4"unknown" - slot13
		 58	[  0]	ISGT 	 10		12	; if slot10 > slot12
		 59	[  0]	JMP  	 12		30	; 	goto 90
		 60	[  0]	UGET 	 12		5	; slot12 = uv5"unknwon"
		 61	[  0]	UGET 	 13		0	; slot13 = uv0"unknwon"
		 62	[  0]	MULVN	 13	13	0	; slot13 = uv0"unknown" * 2
		 63	[  0]	SUBVV	 12	12	13	; slot12 = uv5"unknown" - slot13
		 64	[  0]	ISGT 	 11		12	; if slot11 > slot12
		 65	[  0]	JMP  	 12		24	; 	goto 90
		 66	[  0]	ADDVV	 12	1	11	; slot12 = slot1 + slot11
		 67	[  0]	UGET 	 13		5	; slot13 = uv5"unknwon"
		 68	[  0]	UGET 	 14		0	; slot14 = uv0"unknwon"
		 69	[  0]	SUBVV	 13	13	14	; slot13 = uv5"unknown" - uv0"unknown"
		 70	[  0]	ISGT 	 12		13	; if slot12 > slot13
		 71	[  0]	JMP  	 12		18	; 	goto 90
		 72	[  0]	TSETS	  0	7	5	; slot7.x = uv0"unknown"
		 73	[  0]	TSETS	  1	7	4	; slot7.y = slot1
		 74	[  0]	TSETS	 10	7	3	; slot7.w = slot10
		 75	[  0]	TSETS	 11	7	2	; slot7.h = slot11
		 76	[  0]	KPRI 	 12		2	; slot12 = true
		 77	[  0]	TSETS	 12	7	1	; slot7.ready = slot12
		 78	[  0]	UGET 	 12		6	; slot12 = uv6"unknwon"
		 79	[  0]	TGETS	 13	7	0	; slot13 = slot7.key
		 80	[  0]	TSETV	  7	12	13	; uv6"unknown"[<unknown table>.key] = slot7
		 81	[  0]	ADDVV	 12	0	10	; slot12 = uv0"unknown" + slot10
		 82	[  0]	UGET 	 13		0	; slot13 = uv0"unknwon"
		 83	[  0]	ADDVV	  0	12	13	; slot0 = slot12 + uv0"unknown"
		 84	[  0]	GGET 	 12		13	; slot12 = _env["math"]
		 85	[  0]	TGETS	 12	12	12	; slot12 = math.max
		 86	[  0]	MOV  	 14		2	; slot14 = slot2
		 87	[  0]	MOV  	 15		11	; slot15 = slot11
		 88	[  0]	CALL 	 12	2	3	; slot12 = math.max(uv0"unknown", slot14)
		 89	[  0]	MOV  	  2		12	; slot2 = math.max
		 90	[  0]	FORL 	  3		-83	; slot6 = slot6 + slot5; if cmp(slot6, sign slot5,  slot4) goto 8
		 91	[  0]	RET0 	  0		1	; return
	 71	[  0]	FNEW 	 27		177	; N/A:0-0: 1 args, 2 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	19	; slot1 = slot0.x
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	ADDVV	  1	1	2	; slot1 = <unknown table>.x + uv0"unknown"
		  4	[  0]	TGETS	  2	0	18	; slot2 = slot0.y
		  5	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  6	[  0]	ADDVV	  2	2	3	; slot2 = <unknown table>.y + uv0"unknown"
		  7	[  0]	TGETS	  3	0	17	; slot3 = slot0.scale
		  8	[  0]	TGETS	  4	0	16	; slot4 = slot0.outline
		  9	[  0]	GGET 	  5		15	; slot5 = _env["love"]
		 10	[  0]	TGETS	  5	5	14	; slot5 = love.graphics
		 11	[  0]	TGETS	  5	5	13	; slot5 = love.graphics.setShader
		 12	[  0]	CALL 	  5	1	1	;  = love.graphics.setShader()
		 13	[  0]	GGET 	  5		15	; slot5 = _env["love"]
		 14	[  0]	TGETS	  5	5	14	; slot5 = love.graphics
		 15	[  0]	TGETS	  5	5	12	; slot5 = love.graphics.setFont
		 16	[  0]	TGETS	  7	0	11	; slot7 = slot0.font
		 17	[  0]	CALL 	  5	1	2	;  = love.graphics.setFont(slot6)
		 18	[  0]	GGET 	  5		15	; slot5 = _env["love"]
		 19	[  0]	TGETS	  5	5	14	; slot5 = love.graphics
		 20	[  0]	TGETS	  5	5	10	; slot5 = love.graphics.setColor
		 21	[  0]	MOV  	  7		4	; slot7 = <unknown table>.outline
		 22	[  0]	MOV  	  8		4	; slot8 = <unknown table>.outline
		 23	[  0]	MOV  	  9		4	; slot9 = <unknown table>.outline
		 24	[  0]	KSHORT	 10		1	; slot10 = 1
		 25	[  0]	CALL 	  5	1	5	;  = love.graphics.setColor(slot6, <unknown table>.outline, <unknown table>.outline, <unknown table>.outline)
		 26	[  0]	GGET 	  5		15	; slot5 = _env["love"]
		 27	[  0]	TGETS	  5	5	14	; slot5 = love.graphics
		 28	[  0]	TGETS	  5	5	9	; slot5 = love.graphics.print
		 29	[  0]	TGETS	  7	0	8	; slot7 = slot0.text
		 30	[  0]	SUBVN	  8	1	0	; slot8 = slot1 - 1
		 31	[  0]	MOV  	  9		2	; slot9 = slot2
		 32	[  0]	KSHORT	 10		0	; slot10 = 0
		 33	[  0]	MOV  	 11		3	; slot11 = <unknown table>.scale
		 34	[  0]	MOV  	 12		3	; slot12 = <unknown table>.scale
		 35	[  0]	CALL 	  5	1	7	;  = love.graphics.print(slot6, <unknown table>.text, slot8, slot9, slot10, <unknown table>.scale)
		 36	[  0]	GGET 	  5		15	; slot5 = _env["love"]
		 37	[  0]	TGETS	  5	5	14	; slot5 = love.graphics
		 38	[  0]	TGETS	  5	5	9	; slot5 = love.graphics.print
		 39	[  0]	TGETS	  7	0	8	; slot7 = slot0.text
		 40	[  0]	ADDVN	  8	1	0	; slot8 = slot1 + 1
		 41	[  0]	MOV  	  9		2	; slot9 = slot2
		 42	[  0]	KSHORT	 10		0	; slot10 = 0
		 43	[  0]	MOV  	 11		3	; slot11 = <unknown table>.scale
		 44	[  0]	MOV  	 12		3	; slot12 = <unknown table>.scale
		 45	[  0]	CALL 	  5	1	7	;  = love.graphics.print(slot6, <unknown table>.text, slot8, slot9, slot10, <unknown table>.scale)
		 46	[  0]	GGET 	  5		15	; slot5 = _env["love"]
		 47	[  0]	TGETS	  5	5	14	; slot5 = love.graphics
		 48	[  0]	TGETS	  5	5	9	; slot5 = love.graphics.print
		 49	[  0]	TGETS	  7	0	8	; slot7 = slot0.text
		 50	[  0]	MOV  	  8		1	; slot8 = slot1
		 51	[  0]	SUBVN	  9	2	0	; slot9 = slot2 - 1
		 52	[  0]	KSHORT	 10		0	; slot10 = 0
		 53	[  0]	MOV  	 11		3	; slot11 = <unknown table>.scale
		 54	[  0]	MOV  	 12		3	; slot12 = <unknown table>.scale
		 55	[  0]	CALL 	  5	1	7	;  = love.graphics.print(slot6, <unknown table>.text, slot8, slot9, slot10, <unknown table>.scale)
		 56	[  0]	GGET 	  5		15	; slot5 = _env["love"]
		 57	[  0]	TGETS	  5	5	14	; slot5 = love.graphics
		 58	[  0]	TGETS	  5	5	9	; slot5 = love.graphics.print
		 59	[  0]	TGETS	  7	0	8	; slot7 = slot0.text
		 60	[  0]	MOV  	  8		1	; slot8 = slot1
		 61	[  0]	ADDVN	  9	2	0	; slot9 = slot2 + 1
		 62	[  0]	KSHORT	 10		0	; slot10 = 0
		 63	[  0]	MOV  	 11		3	; slot11 = <unknown table>.scale
		 64	[  0]	MOV  	 12		3	; slot12 = <unknown table>.scale
		 65	[  0]	CALL 	  5	1	7	;  = love.graphics.print(slot6, <unknown table>.text, slot8, slot9, slot10, <unknown table>.scale)
		 66	[  0]	GGET 	  5		15	; slot5 = _env["love"]
		 67	[  0]	TGETS	  5	5	14	; slot5 = love.graphics
		 68	[  0]	TGETS	  5	5	9	; slot5 = love.graphics.print
		 69	[  0]	TGETS	  7	0	8	; slot7 = slot0.text
		 70	[  0]	SUBVN	  8	1	0	; slot8 = slot1 - 1
		 71	[  0]	SUBVN	  9	2	0	; slot9 = slot2 - 1
		 72	[  0]	KSHORT	 10		0	; slot10 = 0
		 73	[  0]	MOV  	 11		3	; slot11 = <unknown table>.scale
		 74	[  0]	MOV  	 12		3	; slot12 = <unknown table>.scale
		 75	[  0]	CALL 	  5	1	7	;  = love.graphics.print(slot6, <unknown table>.text, slot8, slot9, slot10, <unknown table>.scale)
		 76	[  0]	GGET 	  5		15	; slot5 = _env["love"]
		 77	[  0]	TGETS	  5	5	14	; slot5 = love.graphics
		 78	[  0]	TGETS	  5	5	9	; slot5 = love.graphics.print
		 79	[  0]	TGETS	  7	0	8	; slot7 = slot0.text
		 80	[  0]	ADDVN	  8	1	0	; slot8 = slot1 + 1
		 81	[  0]	SUBVN	  9	2	0	; slot9 = slot2 - 1
		 82	[  0]	KSHORT	 10		0	; slot10 = 0
		 83	[  0]	MOV  	 11		3	; slot11 = <unknown table>.scale
		 84	[  0]	MOV  	 12		3	; slot12 = <unknown table>.scale
		 85	[  0]	CALL 	  5	1	7	;  = love.graphics.print(slot6, <unknown table>.text, slot8, slot9, slot10, <unknown table>.scale)
		 86	[  0]	GGET 	  5		15	; slot5 = _env["love"]
		 87	[  0]	TGETS	  5	5	14	; slot5 = love.graphics
		 88	[  0]	TGETS	  5	5	9	; slot5 = love.graphics.print
		 89	[  0]	TGETS	  7	0	8	; slot7 = slot0.text
		 90	[  0]	SUBVN	  8	1	0	; slot8 = slot1 - 1
		 91	[  0]	ADDVN	  9	2	0	; slot9 = slot2 + 1
		 92	[  0]	KSHORT	 10		0	; slot10 = 0
		 93	[  0]	MOV  	 11		3	; slot11 = <unknown table>.scale
		 94	[  0]	MOV  	 12		3	; slot12 = <unknown table>.scale
		 95	[  0]	CALL 	  5	1	7	;  = love.graphics.print(slot6, <unknown table>.text, slot8, slot9, slot10, <unknown table>.scale)
		 96	[  0]	GGET 	  5		15	; slot5 = _env["love"]
		 97	[  0]	TGETS	  5	5	14	; slot5 = love.graphics
		 98	[  0]	TGETS	  5	5	9	; slot5 = love.graphics.print
		 99	[  0]	TGETS	  7	0	8	; slot7 = slot0.text
		100	[  0]	ADDVN	  8	1	0	; slot8 = slot1 + 1
		101	[  0]	ADDVN	  9	2	0	; slot9 = slot2 + 1
		102	[  0]	KSHORT	 10		0	; slot10 = 0
		103	[  0]	MOV  	 11		3	; slot11 = <unknown table>.scale
		104	[  0]	MOV  	 12		3	; slot12 = <unknown table>.scale
		105	[  0]	CALL 	  5	1	7	;  = love.graphics.print(slot6, <unknown table>.text, slot8, slot9, slot10, <unknown table>.scale)
		106	[  0]	GGET 	  5		7	; slot5 = _env["rawget"]
		107	[  0]	GGET 	  7		6	; slot7 = _env["_G"]
		108	[  0]	KSTR 	  8		5	; slot8 = "__slotPrintPixelTextTinted"
		109	[  0]	CALL 	  5	2	3	; slot5 = rawget(slot6, _G)
		110	[  0]	GGET 	  6		4	; slot6 = _env["type"]
		111	[  0]	MOV  	  8		5	; slot8 = rawget
		112	[  0]	CALL 	  6	2	2	; slot6 = type(_G)
		113	[  0]	ISNES	  6		3	; if type ~= "function"
		114	[  0]	JMP  	  6		21	; 	goto 136
		115	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		116	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		117	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		118	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		119	[  0]	TGETS	 10	0	2	; slot10 = slot0.fillR
		120	[  0]	TGETS	 11	0	1	; slot11 = slot0.fillG
		121	[  0]	TGETS	 12	0	0	; slot12 = slot0.fillB
		122	[  0]	KSHORT	 13		1	; slot13 = 1
		123	[  0]	TSETB	 13	9	4	; uv1"unknown"[4] = slot13
		124	[  0]	TSETB	 12	8	3	; uv1"unknown"[3] = <unknown table>.fillB
		125	[  0]	TSETB	 11	7	2	; uv1"unknown"[2] = <unknown table>.fillG
		126	[  0]	TSETB	 10	6	1	; uv1"unknown"[1] = <unknown table>.fillR
		127	[  0]	MOV  	  6		5	; slot6 = rawget
		128	[  0]	TGETS	  8	0	8	; slot8 = slot0.text
		129	[  0]	TGETS	  9	0	11	; slot9 = slot0.font
		130	[  0]	MOV  	 10		1	; slot10 = slot1
		131	[  0]	MOV  	 11		2	; slot11 = slot2
		132	[  0]	MOV  	 12		3	; slot12 = <unknown table>.scale
		133	[  0]	UGET 	 13		1	; slot13 = uv1"unknwon"
		134	[  0]	CALL 	  6	1	7	;  = rawget(uv1"unknown", <unknown table>.text, <unknown table>.font, slot10, slot11, <unknown table>.scale)
		135	[  0]	JMP  	  6		18	; 	goto 154
		136	[  0]	GGET 	  6		15	; slot6 = _env["love"]
		137	[  0]	TGETS	  6	6	14	; slot6 = love.graphics
		138	[  0]	TGETS	  6	6	10	; slot6 = love.graphics.setColor
		139	[  0]	TGETS	  8	0	2	; slot8 = slot0.fillR
		140	[  0]	TGETS	  9	0	1	; slot9 = slot0.fillG
		141	[  0]	TGETS	 10	0	0	; slot10 = slot0.fillB
		142	[  0]	KSHORT	 11		1	; slot11 = 1
		143	[  0]	CALL 	  6	1	5	;  = love.graphics.setColor(slot7, <unknown table>.fillR, <unknown table>.fillG, <unknown table>.fillB)
		144	[  0]	GGET 	  6		15	; slot6 = _env["love"]
		145	[  0]	TGETS	  6	6	14	; slot6 = love.graphics
		146	[  0]	TGETS	  6	6	9	; slot6 = love.graphics.print
		147	[  0]	TGETS	  8	0	8	; slot8 = slot0.text
		148	[  0]	MOV  	  9		1	; slot9 = slot1
		149	[  0]	MOV  	 10		2	; slot10 = slot2
		150	[  0]	KSHORT	 11		0	; slot11 = 0
		151	[  0]	MOV  	 12		3	; slot12 = <unknown table>.scale
		152	[  0]	MOV  	 13		3	; slot13 = <unknown table>.scale
		153	[  0]	CALL 	  6	1	7	;  = love.graphics.print(slot7, <unknown table>.text, slot9, slot10, slot11, <unknown table>.scale)
		154	[  0]	RET0 	  0		1	; return
	 72	[  0]	FNEW 	 28		175	; N/A:0-0: 2 args, 11 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	CALL 	  2	1	1	;  = uv0"unknown"()
		  3	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  4	[  0]	KSHORT	  4		1	; slot4 = 1
		  5	[  0]	CALL 	  2	1	2	;  = uv1"unknown"(slot3)
		  6	[  0]	USETN	  2		0	; uv2"unknwon" = 0
		  7	[  0]	GGET 	  2		6	; slot2 = _env["love"]
		  8	[  0]	ISF  	   		2	; if not love
		  9	[  0]	JMP  	  3		8	; 	goto 18
		 10	[  0]	GGET 	  2		6	; slot2 = _env["love"]
		 11	[  0]	TGETS	  2	2	5	; slot2 = love.graphics
		 12	[  0]	ISF  	   		2	; if not love.graphics
		 13	[  0]	JMP  	  3		4	; 	goto 18
		 14	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 15	[  0]	CALL 	  2	2	1	; slot2 = uv3"unknown"()
		 16	[  0]	IST  	   		2	; if uv3"unknown"
		 17	[  0]	JMP  	  2		2	; 	goto 20
		 18	[  0]	KPRI 	  2		1	; slot2 = false
		 19	[  0]	UCLO 	  0		39	; nil uvs >= r0; goto 59
		 20	[  0]	UGET 	  2		4	; slot2 = uv4"unknwon"
		 21	[  0]	MOV  	  4		0	; slot4 = slot0
		 22	[  0]	MOV  	  5		1	; slot5 = slot1
		 23	[  0]	CALL 	  2	1	3	;  = uv4"unknown"(slot3, slot4)
		 24	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 25	[  0]	KSHORT	  3		0	; slot3 = 0
		 26	[  0]	ISGE 	  3		2	; if slot3 >= uv2"unknown"
		 27	[  0]	JMP  	  2		3	; 	goto 31
		 28	[  0]	UGET 	  2		5	; slot2 = uv5"unknwon"
		 29	[  0]	CALL 	  2	1	1	;  = uv5"unknown"()
		 30	[  0]	JMP  	  2		5	; 	goto 36
		 31	[  0]	UGET 	  2		6	; slot2 = uv6"unknwon"
		 32	[  0]	ISF  	   		2	; if not uv6"unknown"
		 33	[  0]	JMP  	  3		2	; 	goto 36
		 34	[  0]	KPRI 	  2		2	; slot2 = true
		 35	[  0]	UCLO 	  0		24	; nil uvs >= r0; goto 60
		 36	[  0]	GGET 	  2		6	; slot2 = _env["love"]
		 37	[  0]	TGETS	  2	2	5	; slot2 = love.graphics
		 38	[  0]	TGETS	  2	2	4	; slot2 = love.graphics.push
		 39	[  0]	KSTR 	  4		3	; slot4 = "all"
		 40	[  0]	CALL 	  2	1	2	;  = love.graphics.push(slot3)
		 41	[  0]	GGET 	  2		2	; slot2 = _env["pcall"]
		 42	[  0]	FNEW 	  4		1	; N/A:0-0: 0 args, 4 upvalues, 8 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  0		13	; slot0 = _env["love"]
			  2	[  0]	TGETS	  0	0	12	; slot0 = love.graphics
			  3	[  0]	TGETS	  0	0	11	; slot0 = love.graphics.setCanvas
			  4	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  5	[  0]	CALL 	  0	1	2	;  = love.graphics.setCanvas(slot1)
			  6	[  0]	GGET 	  0		13	; slot0 = _env["love"]
			  7	[  0]	TGETS	  0	0	12	; slot0 = love.graphics
			  8	[  0]	TGETS	  0	0	10	; slot0 = love.graphics.origin
			  9	[  0]	CALL 	  0	1	1	;  = love.graphics.origin()
			 10	[  0]	GGET 	  0		13	; slot0 = _env["love"]
			 11	[  0]	TGETS	  0	0	12	; slot0 = love.graphics
			 12	[  0]	TGETS	  0	0	9	; slot0 = love.graphics.setScissor
			 13	[  0]	CALL 	  0	1	1	;  = love.graphics.setScissor()
			 14	[  0]	GGET 	  0		13	; slot0 = _env["love"]
			 15	[  0]	TGETS	  0	0	12	; slot0 = love.graphics
			 16	[  0]	TGETS	  0	0	8	; slot0 = love.graphics.setStencilTest
			 17	[  0]	CALL 	  0	1	1	;  = love.graphics.setStencilTest()
			 18	[  0]	GGET 	  0		13	; slot0 = _env["love"]
			 19	[  0]	TGETS	  0	0	12	; slot0 = love.graphics
			 20	[  0]	TGETS	  0	0	7	; slot0 = love.graphics.setDepthMode
			 21	[  0]	ISF  	   		0	; if not love.graphics.setDepthMode
			 22	[  0]	JMP  	  1		4	; 	goto 27
			 23	[  0]	GGET 	  0		13	; slot0 = _env["love"]
			 24	[  0]	TGETS	  0	0	12	; slot0 = love.graphics
			 25	[  0]	TGETS	  0	0	7	; slot0 = love.graphics.setDepthMode
			 26	[  0]	CALL 	  0	1	1	;  = love.graphics.setDepthMode()
			 27	[  0]	GGET 	  0		13	; slot0 = _env["love"]
			 28	[  0]	TGETS	  0	0	12	; slot0 = love.graphics
			 29	[  0]	TGETS	  0	0	6	; slot0 = love.graphics.setColorMask
			 30	[  0]	KPRI 	  2		2	; slot2 = true
			 31	[  0]	KPRI 	  3		2	; slot3 = true
			 32	[  0]	KPRI 	  4		2	; slot4 = true
			 33	[  0]	KPRI 	  5		2	; slot5 = true
			 34	[  0]	CALL 	  0	1	5	;  = love.graphics.setColorMask(slot1, slot2, slot3, slot4)
			 35	[  0]	GGET 	  0		13	; slot0 = _env["love"]
			 36	[  0]	TGETS	  0	0	12	; slot0 = love.graphics
			 37	[  0]	TGETS	  0	0	5	; slot0 = love.graphics.setShader
			 38	[  0]	CALL 	  0	1	1	;  = love.graphics.setShader()
			 39	[  0]	GGET 	  0		13	; slot0 = _env["love"]
			 40	[  0]	TGETS	  0	0	12	; slot0 = love.graphics
			 41	[  0]	TGETS	  0	0	4	; slot0 = love.graphics.setBlendMode
			 42	[  0]	KSTR 	  2		3	; slot2 = "alpha"
			 43	[  0]	KSTR 	  3		2	; slot3 = "alphamultiply"
			 44	[  0]	CALL 	  0	1	3	;  = love.graphics.setBlendMode(slot1, slot2)
			 45	[  0]	GGET 	  0		13	; slot0 = _env["love"]
			 46	[  0]	TGETS	  0	0	12	; slot0 = love.graphics
			 47	[  0]	TGETS	  0	0	1	; slot0 = love.graphics.clear
			 48	[  0]	KSHORT	  2		0	; slot2 = 0
			 49	[  0]	KSHORT	  3		0	; slot3 = 0
			 50	[  0]	KSHORT	  4		0	; slot4 = 0
			 51	[  0]	KSHORT	  5		0	; slot5 = 0
			 52	[  0]	CALL 	  0	1	5	;  = love.graphics.clear(slot1, slot2, slot3, slot4)
			 53	[  0]	KSHORT	  0		1	; slot0 = 1
			 54	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			 55	[  0]	KSHORT	  2		1	; slot2 = 1
			 56	[  0]	FORI 	  0		9	; for slot3 = slot0,slot1,slot2 else goto 66
			 57	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
			 58	[  0]	TGETV	  4	4	3	; slot4 = uv2"unknown"[slot3]
			 59	[  0]	TGETS	  5	4	0	; slot5 = slot4.ready
			 60	[  0]	ISF  	   		5	; if not <unknown table>.ready
			 61	[  0]	JMP  	  6		3	; 	goto 65
			 62	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
			 63	[  0]	MOV  	  7		4	; slot7 = slot4
			 64	[  0]	CALL 	  5	1	2	;  = uv3"unknown"(slot6)
			 65	[  0]	FORL 	  0		-9	; slot3 = slot3 + slot2; if cmp(slot3, sign slot2,  slot1) goto 57
			 66	[  0]	RET0 	  0		1	; return
		 43	[  0]	CALL 	  2	2	2	; slot2 = pcall(slot3)
		 44	[  0]	GGET 	  3		6	; slot3 = _env["love"]
		 45	[  0]	TGETS	  3	3	5	; slot3 = love.graphics
		 46	[  0]	TGETS	  3	3	0	; slot3 = love.graphics.pop
		 47	[  0]	CALL 	  3	1	1	;  = love.graphics.pop()
		 48	[  0]	IST  	   		2	; if slot2
		 49	[  0]	JMP  	  3		5	; 	goto 55
		 50	[  0]	UGET 	  3		10	; slot3 = uv10"unknwon"
		 51	[  0]	CALL 	  3	1	1	;  = uv10"unknown"()
		 52	[  0]	KPRI 	  3		1	; slot3 = false
		 53	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 54
		 54	[  0]	RET1 	  3		2	; return slot3
		 55	[  0]	USETP	  6		2	; uv6"unknwon" = true
		 56	[  0]	KPRI 	  3		2	; slot3 = true
		 57	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 58
		 58	[  0]	RET1 	  3		2	; return slot3
		 59	[  0]	RET1 	  2		2	; return slot2
		 60	[  0]	RET1 	  2		2	; return slot2
	 73	[  0]	TSETS	 28	4	176	; slot4.prepare = slot28
	 74	[  0]	FNEW 	 28		173	; N/A:0-0: 0 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".prepare
		  3	[  0]	KNIL 	  2		3	; slot2, slot3 = nil
		  4	[  0]	CALLT	  0		3	; return uv0"unknown".prepare(slot1, slot2)
	 75	[  0]	TSETS	 28	4	174	; slot4.prewarm = slot28
	 76	[  0]	FNEW 	 28		172	; N/A:0-0: 7 args, 7 upvalues, 24 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		  2	[  0]	ISF  	   		7	; if not uv0"unknown"
		  3	[  0]	JMP  	  8		11	; 	goto 15
		  4	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		  5	[  0]	ISEQP	  7		1	; if uv0"unknown" == false
		  6	[  0]	JMP  	  7		8	; 	goto 15
		  7	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		  8	[  0]	ISF  	   		7	; if not uv1"unknown"
		  9	[  0]	JMP  	  8		5	; 	goto 15
		 10	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 11	[  0]	ISEQP	  7		1	; if uv1"unknown" == false
		 12	[  0]	JMP  	  7		2	; 	goto 15
		 13	[  0]	IST  	   		0	; if slot0
		 14	[  0]	JMP  	  7		2	; 	goto 17
		 15	[  0]	KPRI 	  7		1	; slot7 = false
		 16	[  0]	UCLO 	  0		87	; nil uvs >= r0; goto 104
		 17	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		 18	[  0]	TGETV	  7	7	0	; slot7 = uv2"unknown"[slot0]
		 19	[  0]	GGET 	  8		18	; slot8 = _env["tonumber"]
		 20	[  0]	MOV  	 10		3	; slot10 = slot3
		 21	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 22	[  0]	ISTC 	  3		8	; slot3 = tonumber; if tonumber
		 23	[  0]	JMP  	  9		1	; 	goto 25
		 24	[  0]	KSHORT	  3		1	; slot3 = 1
		 25	[  0]	ISF  	   		7	; if not slot7
		 26	[  0]	JMP  	  8		17	; 	goto 44
		 27	[  0]	TGETS	  8	7	17	; slot8 = slot7.text
		 28	[  0]	GGET 	  9		16	; slot9 = _env["tostring"]
		 29	[  0]	MOV  	 11		1	; slot11 = slot1
		 30	[  0]	CALL 	  9	2	2	; slot9 = tostring(slot10)
		 31	[  0]	ISNEV	  8		9	; if <unknown table>.text ~= tostring
		 32	[  0]	JMP  	  8		11	; 	goto 44
		 33	[  0]	TGETS	  8	7	15	; slot8 = slot7.font
		 34	[  0]	ISNEV	  8		2	; if <unknown table>.font ~= slot2
		 35	[  0]	JMP  	  8		8	; 	goto 44
		 36	[  0]	GGET 	  8		14	; slot8 = _env["math"]
		 37	[  0]	TGETS	  8	8	13	; slot8 = math.abs
		 38	[  0]	TGETS	 10	7	12	; slot10 = slot7.scale
		 39	[  0]	SUBVV	 10	10	3	; slot10 = <unknown table>.scale - slot3
		 40	[  0]	CALL 	  8	2	2	; slot8 = math.abs(tostring)
		 41	[  0]	KNUM 	  9		0	; slot9 = 1e-06
		 42	[  0]	ISGE 	  9		8	; if slot9 >= math.abs
		 43	[  0]	JMP  	  8		2	; 	goto 46
		 44	[  0]	KPRI 	  8		1	; slot8 = false
		 45	[  0]	UCLO 	  0		59	; nil uvs >= r0; goto 105
		 46	[  0]	GGET 	  8		11	; slot8 = _env["love"]
		 47	[  0]	TGETS	  8	8	10	; slot8 = love.graphics
		 48	[  0]	TGETS	  8	8	9	; slot8 = love.graphics.getShader
		 49	[  0]	CALL 	  8	2	1	; slot8 = love.graphics.getShader()
		 50	[  0]	GGET 	  9		11	; slot9 = _env["love"]
		 51	[  0]	TGETS	  9	9	10	; slot9 = love.graphics
		 52	[  0]	TGETS	  9	9	8	; slot9 = love.graphics.getBlendMode
		 53	[  0]	CALL 	  9	3	1	; slot9, slot10 = love.graphics.getBlendMode()
		 54	[  0]	GGET 	 11		11	; slot11 = _env["love"]
		 55	[  0]	TGETS	 11	11	10	; slot11 = love.graphics
		 56	[  0]	TGETS	 11	11	7	; slot11 = love.graphics.getColor
		 57	[  0]	CALL 	 11	5	1	; slot11, slot12, slot13, slot14 = love.graphics.getColor()
		 58	[  0]	GGET 	 15		14	; slot15 = _env["math"]
		 59	[  0]	TGETS	 15	15	6	; slot15 = math.max
		 60	[  0]	KSHORT	 17		0	; slot17 = 0
		 61	[  0]	GGET 	 18		14	; slot18 = _env["math"]
		 62	[  0]	TGETS	 18	18	5	; slot18 = math.min
		 63	[  0]	KSHORT	 20		1	; slot20 = 1
		 64	[  0]	GGET 	 21		18	; slot21 = _env["tonumber"]
		 65	[  0]	MOV  	 23		6	; slot23 = slot6
		 66	[  0]	CALL 	 21	2	2	; slot21 = tonumber(slot22)
		 67	[  0]	IST  	   		21	; if tonumber
		 68	[  0]	JMP  	 22		1	; 	goto 70
		 69	[  0]	KSHORT	 21		1	; slot21 = 1
		 70	[  0]	CALL 	 18	0	3	; MULTRES = math.min(slot19, slot20)
		 71	[  0]	CALLM	 15	2	1	; slot15 = math.max(slot16, ...MULTRES)
		 72	[  0]	GGET 	 16		4	; slot16 = _env["pcall"]
		 73	[  0]	FNEW 	 18		3	; N/A:0-0: 0 args, 9 upvalues, 10 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	MOV  	  2		0	; slot2 = uv0"unknown"
			  3	[  0]	TGETS	  0	0	15	; slot0 = uv0"unknown".setViewport
			  4	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
			  5	[  0]	TGETS	  3	3	14	; slot3 = uv1"unknown".x
			  6	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
			  7	[  0]	TGETS	  4	4	13	; slot4 = uv1"unknown".y
			  8	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
			  9	[  0]	TGETS	  5	5	12	; slot5 = uv1"unknown".w
			 10	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
			 11	[  0]	TGETS	  6	6	11	; slot6 = uv1"unknown".h
			 12	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
			 13	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
			 14	[  0]	CALL 	  0	1	8	;  = uv0"unknown".setViewport(slot1, uv0"unknown", uv1"unknown".x, uv1"unknown".y, uv1"unknown".w, uv1"unknown".h, uv2"unknown")
			 15	[  0]	GGET 	  0		10	; slot0 = _env["love"]
			 16	[  0]	TGETS	  0	0	9	; slot0 = love.graphics
			 17	[  0]	TGETS	  0	0	8	; slot0 = love.graphics.setShader
			 18	[  0]	CALL 	  0	1	1	;  = love.graphics.setShader()
			 19	[  0]	GGET 	  0		10	; slot0 = _env["love"]
			 20	[  0]	TGETS	  0	0	9	; slot0 = love.graphics
			 21	[  0]	TGETS	  0	0	7	; slot0 = love.graphics.setBlendMode
			 22	[  0]	KSTR 	  2		6	; slot2 = "alpha"
			 23	[  0]	KSTR 	  3		5	; slot3 = "premultiplied"
			 24	[  0]	CALL 	  0	1	3	;  = love.graphics.setBlendMode(slot1, slot2)
			 25	[  0]	GGET 	  0		10	; slot0 = _env["love"]
			 26	[  0]	TGETS	  0	0	9	; slot0 = love.graphics
			 27	[  0]	TGETS	  0	0	4	; slot0 = love.graphics.setColor
			 28	[  0]	UGET 	  2		4	; slot2 = uv4"unknwon"
			 29	[  0]	UGET 	  3		4	; slot3 = uv4"unknwon"
			 30	[  0]	UGET 	  4		4	; slot4 = uv4"unknwon"
			 31	[  0]	UGET 	  5		4	; slot5 = uv4"unknwon"
			 32	[  0]	CALL 	  0	1	5	;  = love.graphics.setColor(slot1, uv4"unknown", uv4"unknown", uv4"unknown")
			 33	[  0]	GGET 	  0		10	; slot0 = _env["love"]
			 34	[  0]	TGETS	  0	0	9	; slot0 = love.graphics
			 35	[  0]	TGETS	  0	0	3	; slot0 = love.graphics.draw
			 36	[  0]	UGET 	  2		5	; slot2 = uv5"unknwon"
			 37	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			 38	[  0]	GGET 	  4		2	; slot4 = _env["math"]
			 39	[  0]	TGETS	  4	4	1	; slot4 = math.floor
			 40	[  0]	GGET 	  6		0	; slot6 = _env["tonumber"]
			 41	[  0]	UGET 	  8		6	; slot8 = uv6"unknwon"
			 42	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
			 43	[  0]	IST  	   		6	; if tonumber
			 44	[  0]	JMP  	  7		1	; 	goto 46
			 45	[  0]	KSHORT	  6		0	; slot6 = 0
			 46	[  0]	ADDVN	  6	6	0	; slot6 = slot6 + 0.5
			 47	[  0]	CALL 	  4	2	2	; slot4 = math.floor(slot5)
			 48	[  0]	UGET 	  5		7	; slot5 = uv7"unknwon"
			 49	[  0]	SUBVV	  4	4	5	; slot4 = math.floor - uv7"unknown"
			 50	[  0]	GGET 	  5		2	; slot5 = _env["math"]
			 51	[  0]	TGETS	  5	5	1	; slot5 = math.floor
			 52	[  0]	GGET 	  7		0	; slot7 = _env["tonumber"]
			 53	[  0]	UGET 	  9		8	; slot9 = uv8"unknwon"
			 54	[  0]	CALL 	  7	2	2	; slot7 = tonumber(uv6"unknown")
			 55	[  0]	IST  	   		7	; if tonumber
			 56	[  0]	JMP  	  8		1	; 	goto 58
			 57	[  0]	KSHORT	  7		0	; slot7 = 0
			 58	[  0]	ADDVN	  7	7	0	; slot7 = slot7 + 0.5
			 59	[  0]	CALL 	  5	2	2	; slot5 = math.floor(slot6)
			 60	[  0]	UGET 	  6		7	; slot6 = uv7"unknwon"
			 61	[  0]	SUBVV	  5	5	6	; slot5 = math.floor - uv7"unknown"
			 62	[  0]	CALL 	  0	1	5	;  = love.graphics.draw(slot1, uv5"unknown", uv0"unknown", slot4)
			 63	[  0]	RET0 	  0		1	; return
		 74	[  0]	CALL 	 16	2	2	; slot16 = pcall(slot17)
		 75	[  0]	GGET 	 17		11	; slot17 = _env["love"]
		 76	[  0]	TGETS	 17	17	10	; slot17 = love.graphics
		 77	[  0]	TGETS	 17	17	2	; slot17 = love.graphics.setBlendMode
		 78	[  0]	MOV  	 19		9	; slot19 = love.graphics.getBlendMode
		 79	[  0]	MOV  	 20		10	; slot20 = slot10
		 80	[  0]	CALL 	 17	1	3	;  = love.graphics.setBlendMode(slot18, love.graphics.getBlendMode)
		 81	[  0]	GGET 	 17		11	; slot17 = _env["love"]
		 82	[  0]	TGETS	 17	17	10	; slot17 = love.graphics
		 83	[  0]	TGETS	 17	17	1	; slot17 = love.graphics.setShader
		 84	[  0]	MOV  	 19		8	; slot19 = love.graphics.getShader
		 85	[  0]	CALL 	 17	1	2	;  = love.graphics.setShader(slot18)
		 86	[  0]	GGET 	 17		11	; slot17 = _env["love"]
		 87	[  0]	TGETS	 17	17	10	; slot17 = love.graphics
		 88	[  0]	TGETS	 17	17	0	; slot17 = love.graphics.setColor
		 89	[  0]	MOV  	 19		11	; slot19 = love.graphics.getColor
		 90	[  0]	MOV  	 20		12	; slot20 = slot12
		 91	[  0]	MOV  	 21		13	; slot21 = slot13
		 92	[  0]	MOV  	 22		14	; slot22 = slot14
		 93	[  0]	CALL 	 17	1	5	;  = love.graphics.setColor(slot18, love.graphics.getColor, slot20, slot21)
		 94	[  0]	IST  	   		16	; if pcall
		 95	[  0]	JMP  	 17		5	; 	goto 101
		 96	[  0]	UGET 	 17		6	; slot17 = uv6"unknwon"
		 97	[  0]	CALL 	 17	1	1	;  = uv6"unknown"()
		 98	[  0]	KPRI 	 17		1	; slot17 = false
		 99	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 100
		100	[  0]	RET1 	 17		2	; return slot17
		101	[  0]	KPRI 	 17		2	; slot17 = true
		102	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 103
		103	[  0]	RET1 	 17		2	; return slot17
		104	[  0]	RET1 	  7		2	; return slot7
		105	[  0]	RET1 	  8		2	; return love.graphics.getShader
	 77	[  0]	TSETS	 28	4	212	; slot4.draw = slot28
	 78	[  0]	FNEW 	 28		170	; N/A:0-0: 0 args, 6 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		12	; 	goto 16
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	ISEQP	  0		1	; if uv0"unknown" == false
		  6	[  0]	JMP  	  0		9	; 	goto 16
		  7	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  8	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".release
		  9	[  0]	ISF  	   		0	; if not uv0"unknown".release
		 10	[  0]	JMP  	  1		5	; 	goto 16
		 11	[  0]	GGET 	  0		0	; slot0 = _env["pcall"]
		 12	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 13	[  0]	TGETS	  2	2	1	; slot2 = uv0"unknown".release
		 14	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 15	[  0]	CALL 	  0	1	3	;  = pcall(slot1, uv0"unknown".release)
		 16	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 17	[  0]	ISF  	   		0	; if not uv1"unknown"
		 18	[  0]	JMP  	  1		12	; 	goto 31
		 19	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 20	[  0]	ISEQP	  0		1	; if uv1"unknown" == false
		 21	[  0]	JMP  	  0		9	; 	goto 31
		 22	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 23	[  0]	TGETS	  0	0	1	; slot0 = uv1"unknown".release
		 24	[  0]	ISF  	   		0	; if not uv1"unknown".release
		 25	[  0]	JMP  	  1		5	; 	goto 31
		 26	[  0]	GGET 	  0		0	; slot0 = _env["pcall"]
		 27	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 28	[  0]	TGETS	  2	2	1	; slot2 = uv1"unknown".release
		 29	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 30	[  0]	CALL 	  0	1	3	;  = pcall(slot1, uv1"unknown".release)
		 31	[  0]	USETP	  0		0	; uv0"unknwon" = nil
		 32	[  0]	USETP	  2		1	; uv2"unknwon" = false
		 33	[  0]	USETP	  1		0	; uv1"unknwon" = nil
		 34	[  0]	UGET 	  0		3	; slot0 = uv3"unknwon"
		 35	[  0]	CALL 	  0	1	1	;  = uv3"unknown"()
		 36	[  0]	UGET 	  0		4	; slot0 = uv4"unknwon"
		 37	[  0]	KSHORT	  2		1	; slot2 = 1
		 38	[  0]	CALL 	  0	1	2	;  = uv4"unknown"(slot1)
		 39	[  0]	USETN	  5		0	; uv5"unknwon" = 0
		 40	[  0]	RET0 	  0		1	; return
	 79	[  0]	TSETS	 28	4	171	; slot4.release = slot28
	 80	[  0]	MOV  	  3		4	; slot3 = slot4
	 81	[  0]	UCLO 	  4		0	; nil uvs >= r4; goto 82
	 82	[  0]	KPRI 	  4		0	; slot4 = nil
	 83	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
	 84	[  0]	FNEW 	  6		168	; N/A:0-0: 1 args, 0 upvalues, 22 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		18	; slot1 = _env["type"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  4	[  0]	ISNES	  1		17	; if slot1 ~= "table"
		  5	[  0]	JMP  	  1		3	; 	goto 9
		  6	[  0]	TGETS	  1	0	16	; slot1 = slot0.hidden
		  7	[  0]	ISNEP	  1		2	; if <unknown table>.hidden ~= true
		  8	[  0]	JMP  	  1		2	; 	goto 11
		  9	[  0]	KPRI 	  1		0	; slot1 = nil
		 10	[  0]	RET1 	  1		2	; return slot1
		 11	[  0]	GGET 	  1		15	; slot1 = _env["math"]
		 12	[  0]	TGETS	  1	1	14	; slot1 = math.max
		 13	[  0]	KSHORT	  3		0	; slot3 = 0
		 14	[  0]	GGET 	  4		13	; slot4 = _env["tonumber"]
		 15	[  0]	TGETS	  6	0	12	; slot6 = slot0.iw
		 16	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		 17	[  0]	IST  	   		4	; if tonumber
		 18	[  0]	JMP  	  5		1	; 	goto 20
		 19	[  0]	KSHORT	  4		0	; slot4 = 0
		 20	[  0]	CALL 	  1	2	3	; slot1 = math.max(slot2, slot3)
		 21	[  0]	GGET 	  2		15	; slot2 = _env["math"]
		 22	[  0]	TGETS	  2	2	14	; slot2 = math.max
		 23	[  0]	KSHORT	  4		0	; slot4 = 0
		 24	[  0]	GGET 	  5		13	; slot5 = _env["tonumber"]
		 25	[  0]	TGETS	  7	0	11	; slot7 = slot0.ih
		 26	[  0]	CALL 	  5	2	2	; slot5 = tonumber(<unknown table>.iw)
		 27	[  0]	IST  	   		5	; if tonumber
		 28	[  0]	JMP  	  6		1	; 	goto 30
		 29	[  0]	KSHORT	  5		0	; slot5 = 0
		 30	[  0]	CALL 	  2	2	3	; slot2 = math.max(slot3, slot4)
		 31	[  0]	GGET 	  3		15	; slot3 = _env["math"]
		 32	[  0]	TGETS	  3	3	10	; slot3 = math.abs
		 33	[  0]	GGET 	  5		13	; slot5 = _env["tonumber"]
		 34	[  0]	TGETS	  7	0	9	; slot7 = slot0.sx
		 35	[  0]	CALL 	  5	2	2	; slot5 = tonumber(<unknown table>.iw)
		 36	[  0]	IST  	   		5	; if tonumber
		 37	[  0]	JMP  	  6		1	; 	goto 39
		 38	[  0]	KSHORT	  5		0	; slot5 = 0
		 39	[  0]	CALL 	  3	2	2	; slot3 = math.abs(slot4)
		 40	[  0]	GGET 	  4		15	; slot4 = _env["math"]
		 41	[  0]	TGETS	  4	4	10	; slot4 = math.abs
		 42	[  0]	GGET 	  6		13	; slot6 = _env["tonumber"]
		 43	[  0]	TGETS	  8	0	8	; slot8 = slot0.sy
		 44	[  0]	CALL 	  6	2	2	; slot6 = tonumber(<unknown table>.sx)
		 45	[  0]	IST  	   		6	; if tonumber
		 46	[  0]	JMP  	  7		1	; 	goto 48
		 47	[  0]	KSHORT	  6		0	; slot6 = 0
		 48	[  0]	CALL 	  4	2	2	; slot4 = math.abs(slot5)
		 49	[  0]	GGET 	  5		15	; slot5 = _env["math"]
		 50	[  0]	TGETS	  5	5	10	; slot5 = math.abs
		 51	[  0]	GGET 	  7		13	; slot7 = _env["tonumber"]
		 52	[  0]	TGETS	  9	0	7	; slot9 = slot0.baseSx
		 53	[  0]	CALL 	  7	2	2	; slot7 = tonumber(<unknown table>.sy)
		 54	[  0]	IST  	   		7	; if tonumber
		 55	[  0]	JMP  	  8		1	; 	goto 57
		 56	[  0]	MOV  	  7		3	; slot7 = math.abs
		 57	[  0]	CALL 	  5	2	2	; slot5 = math.abs(slot6)
		 58	[  0]	GGET 	  6		15	; slot6 = _env["math"]
		 59	[  0]	TGETS	  6	6	10	; slot6 = math.abs
		 60	[  0]	GGET 	  8		13	; slot8 = _env["tonumber"]
		 61	[  0]	TGETS	 10	0	6	; slot10 = slot0.baseSy
		 62	[  0]	CALL 	  8	2	2	; slot8 = tonumber(<unknown table>.baseSx)
		 63	[  0]	IST  	   		8	; if tonumber
		 64	[  0]	JMP  	  9		1	; 	goto 66
		 65	[  0]	MOV  	  8		4	; slot8 = math.abs
		 66	[  0]	CALL 	  6	2	2	; slot6 = math.abs(math.abs)
		 67	[  0]	GGET 	  7		13	; slot7 = _env["tonumber"]
		 68	[  0]	TGETS	  9	0	5	; slot9 = slot0.cx
		 69	[  0]	CALL 	  7	2	2	; slot7 = tonumber(math.abs)
		 70	[  0]	GGET 	  8		13	; slot8 = _env["tonumber"]
		 71	[  0]	TGETS	 10	0	4	; slot10 = slot0.cy
		 72	[  0]	CALL 	  8	2	2	; slot8 = tonumber(<unknown table>.cx)
		 73	[  0]	ISF  	   		7	; if not tonumber
		 74	[  0]	JMP  	  9		8	; 	goto 83
		 75	[  0]	ISF  	   		8	; if not tonumber
		 76	[  0]	JMP  	  9		6	; 	goto 83
		 77	[  0]	KSHORT	  9		0	; slot9 = 0
		 78	[  0]	ISLE 	  1		9	; if slot1 <= slot9
		 79	[  0]	JMP  	  9		3	; 	goto 83
		 80	[  0]	KSHORT	  9		0	; slot9 = 0
		 81	[  0]	ISGT 	  2		9	; if slot2 > slot9
		 82	[  0]	JMP  	  9		2	; 	goto 85
		 83	[  0]	KPRI 	  9		0	; slot9 = nil
		 84	[  0]	RET1 	  9		2	; return slot9
		 85	[  0]	GGET 	  9		13	; slot9 = _env["tonumber"]
		 86	[  0]	TGETS	 11	0	3	; slot11 = slot0.restCX
		 87	[  0]	CALL 	  9	2	2	; slot9 = tonumber(<unknown table>.cy)
		 88	[  0]	IST  	   		9	; if tonumber
		 89	[  0]	JMP  	 10		1	; 	goto 91
		 90	[  0]	MOV  	  9		7	; slot9 = tonumber
		 91	[  0]	GGET 	 10		13	; slot10 = _env["tonumber"]
		 92	[  0]	TGETS	 12	0	2	; slot12 = slot0.restCY
		 93	[  0]	CALL 	 10	2	2	; slot10 = tonumber(<unknown table>.restCX)
		 94	[  0]	IST  	   		10	; if tonumber
		 95	[  0]	JMP  	 11		1	; 	goto 97
		 96	[  0]	MOV  	 10		8	; slot10 = tonumber
		 97	[  0]	GGET 	 11		15	; slot11 = _env["math"]
		 98	[  0]	TGETS	 11	11	14	; slot11 = math.max
		 99	[  0]	KSHORT	 13		0	; slot13 = 0
		100	[  0]	GGET 	 14		13	; slot14 = _env["tonumber"]
		101	[  0]	TGETS	 16	0	1	; slot16 = slot0.hitSlopPx
		102	[  0]	CALL 	 14	2	2	; slot14 = tonumber(slot15)
		103	[  0]	IST  	   		14	; if tonumber
		104	[  0]	JMP  	 15		1	; 	goto 106
		105	[  0]	KSHORT	 14		0	; slot14 = 0
		106	[  0]	CALL 	 11	2	3	; slot11 = math.max(<unknown table>.restCY, slot13)
		107	[  0]	GGET 	 12		15	; slot12 = _env["math"]
		108	[  0]	TGETS	 12	12	14	; slot12 = math.max
		109	[  0]	MULVV	 14	1	3	; slot14 = slot1 * math.abs
		110	[  0]	MULVV	 15	1	5	; slot15 = slot1 * math.abs
		111	[  0]	CALL 	 12	2	3	; slot12 = math.max(slot13, slot14)
		112	[  0]	MULVN	 12	12	0	; slot12 = math.max * 0.5
		113	[  0]	ADDVV	 12	12	11	; slot12 = slot12 + math.max
		114	[  0]	GGET 	 13		15	; slot13 = _env["math"]
		115	[  0]	TGETS	 13	13	14	; slot13 = math.max
		116	[  0]	MULVV	 15	2	4	; slot15 = slot2 * math.abs
		117	[  0]	MULVV	 16	2	6	; slot16 = slot2 * math.abs
		118	[  0]	CALL 	 13	2	3	; slot13 = math.max(slot14, slot15)
		119	[  0]	MULVN	 13	13	0	; slot13 = math.max * 0.5
		120	[  0]	ADDVV	 13	13	11	; slot13 = slot13 + math.max
		121	[  0]	GGET 	 14		15	; slot14 = _env["math"]
		122	[  0]	TGETS	 14	14	0	; slot14 = math.min
		123	[  0]	MOV  	 16		7	; slot16 = tonumber
		124	[  0]	MOV  	 17		9	; slot17 = tonumber
		125	[  0]	CALL 	 14	2	3	; slot14 = math.min(slot15, tonumber)
		126	[  0]	SUBVV	 14	14	12	; slot14 = math.min - slot12
		127	[  0]	GGET 	 15		15	; slot15 = _env["math"]
		128	[  0]	TGETS	 15	15	14	; slot15 = math.max
		129	[  0]	MOV  	 17		7	; slot17 = tonumber
		130	[  0]	MOV  	 18		9	; slot18 = tonumber
		131	[  0]	CALL 	 15	2	3	; slot15 = math.max(tonumber, tonumber)
		132	[  0]	ADDVV	 15	15	12	; slot15 = math.max + slot12
		133	[  0]	GGET 	 16		15	; slot16 = _env["math"]
		134	[  0]	TGETS	 16	16	0	; slot16 = math.min
		135	[  0]	MOV  	 18		8	; slot18 = tonumber
		136	[  0]	MOV  	 19		10	; slot19 = tonumber
		137	[  0]	CALL 	 16	2	3	; slot16 = math.min(tonumber, tonumber)
		138	[  0]	SUBVV	 16	16	13	; slot16 = math.min - slot13
		139	[  0]	GGET 	 17		15	; slot17 = _env["math"]
		140	[  0]	TGETS	 17	17	14	; slot17 = math.max
		141	[  0]	MOV  	 19		8	; slot19 = tonumber
		142	[  0]	MOV  	 20		10	; slot20 = tonumber
		143	[  0]	CALL 	 17	2	3	; slot17 = math.max(tonumber, tonumber)
		144	[  0]	ADDVV	 17	17	13	; slot17 = math.max + slot13
		145	[  0]	MOV  	 18		14	; slot18 = slot14
		146	[  0]	MOV  	 19		16	; slot19 = slot16
		147	[  0]	MOV  	 20		15	; slot20 = slot15
		148	[  0]	MOV  	 21		17	; slot21 = slot17
		149	[  0]	RET  	 18		5	; return slot18, slot19, slot20, slot21
	 85	[  0]	TSETS	  6	5	169	; slot5.getBounds = slot6
	 86	[  0]	FNEW 	  6		167	; N/A:0-0: 11 args, 0 upvalues, 36 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	 11		11	; 	goto 14
		  3	[  0]	GGET 	 11		7	; slot11 = _env["type"]
		  4	[  0]	TGETS	 13	0	6	; slot13 = slot0.getPixel
		  5	[  0]	CALL 	 11	2	2	; slot11 = type(slot12)
		  6	[  0]	ISNES	 11		5	; if type ~= "function"
		  7	[  0]	JMP  	 11		6	; 	goto 14
		  8	[  0]	KSHORT	 11		0	; slot11 = 0
		  9	[  0]	ISLE 	  3		11	; if slot3 <= slot11
		 10	[  0]	JMP  	 11		3	; 	goto 14
		 11	[  0]	KSHORT	 11		0	; slot11 = 0
		 12	[  0]	ISGT 	  4		11	; if slot4 > slot11
		 13	[  0]	JMP  	 11		2	; 	goto 16
		 14	[  0]	KPRI 	 11		1	; slot11 = false
		 15	[  0]	RET1 	 11		2	; return slot11
		 16	[  0]	SUBVV	 11	7	5	; slot11 = slot7 - slot5
		 17	[  0]	DIVVV	 11	11	3	; slot11 = slot11 / slot3
		 18	[  0]	MULVN	 12	1	0	; slot12 = slot1 * 0.5
		 19	[  0]	ADDVV	 11	11	12	; slot11 = slot11 + slot12
		 20	[  0]	SUBVV	 12	8	6	; slot12 = slot8 - slot6
		 21	[  0]	DIVVV	 12	12	4	; slot12 = slot12 / slot4
		 22	[  0]	MULVN	 13	2	0	; slot13 = slot2 * 0.5
		 23	[  0]	ADDVV	 12	12	13	; slot12 = slot12 + slot13
		 24	[  0]	GGET 	 13		4	; slot13 = _env["math"]
		 25	[  0]	TGETS	 13	13	3	; slot13 = math.ceil
		 26	[  0]	DIVVV	 15	9	3	; slot15 = slot9 / slot3
		 27	[  0]	CALL 	 13	2	2	; slot13 = math.ceil(slot14)
		 28	[  0]	GGET 	 14		4	; slot14 = _env["math"]
		 29	[  0]	TGETS	 14	14	3	; slot14 = math.ceil
		 30	[  0]	DIVVV	 16	9	4	; slot16 = slot9 / slot4
		 31	[  0]	CALL 	 14	2	2	; slot14 = math.ceil(slot15)
		 32	[  0]	GGET 	 15		4	; slot15 = _env["math"]
		 33	[  0]	TGETS	 15	15	2	; slot15 = math.max
		 34	[  0]	KSHORT	 17		0	; slot17 = 0
		 35	[  0]	GGET 	 18		4	; slot18 = _env["math"]
		 36	[  0]	TGETS	 18	18	1	; slot18 = math.floor
		 37	[  0]	MOV  	 20		11	; slot20 = slot11
		 38	[  0]	CALL 	 18	2	2	; slot18 = math.floor(slot19)
		 39	[  0]	SUBVV	 18	18	13	; slot18 = math.floor - math.ceil
		 40	[  0]	CALL 	 15	2	3	; slot15 = math.max(slot16, slot17)
		 41	[  0]	GGET 	 16		4	; slot16 = _env["math"]
		 42	[  0]	TGETS	 16	16	0	; slot16 = math.min
		 43	[  0]	SUBVN	 18	1	1	; slot18 = slot1 - 1
		 44	[  0]	GGET 	 19		4	; slot19 = _env["math"]
		 45	[  0]	TGETS	 19	19	1	; slot19 = math.floor
		 46	[  0]	MOV  	 21		11	; slot21 = slot11
		 47	[  0]	CALL 	 19	2	2	; slot19 = math.floor(slot20)
		 48	[  0]	ADDVV	 19	19	13	; slot19 = math.floor + math.ceil
		 49	[  0]	CALL 	 16	2	3	; slot16 = math.min(slot17, slot18)
		 50	[  0]	GGET 	 17		4	; slot17 = _env["math"]
		 51	[  0]	TGETS	 17	17	2	; slot17 = math.max
		 52	[  0]	KSHORT	 19		0	; slot19 = 0
		 53	[  0]	GGET 	 20		4	; slot20 = _env["math"]
		 54	[  0]	TGETS	 20	20	1	; slot20 = math.floor
		 55	[  0]	MOV  	 22		12	; slot22 = slot12
		 56	[  0]	CALL 	 20	2	2	; slot20 = math.floor(slot21)
		 57	[  0]	SUBVV	 20	20	14	; slot20 = math.floor - math.ceil
		 58	[  0]	CALL 	 17	2	3	; slot17 = math.max(slot18, slot19)
		 59	[  0]	GGET 	 18		4	; slot18 = _env["math"]
		 60	[  0]	TGETS	 18	18	0	; slot18 = math.min
		 61	[  0]	SUBVN	 20	2	1	; slot20 = slot2 - 1
		 62	[  0]	GGET 	 21		4	; slot21 = _env["math"]
		 63	[  0]	TGETS	 21	21	1	; slot21 = math.floor
		 64	[  0]	MOV  	 23		12	; slot23 = slot12
		 65	[  0]	CALL 	 21	2	2	; slot21 = math.floor(slot22)
		 66	[  0]	ADDVV	 21	21	14	; slot21 = math.floor + math.ceil
		 67	[  0]	CALL 	 18	2	3	; slot18 = math.min(slot19, slot20)
		 68	[  0]	MOV  	 19		17	; slot19 = math.max
		 69	[  0]	MOV  	 20		18	; slot20 = math.min
		 70	[  0]	KSHORT	 21		1	; slot21 = 1
		 71	[  0]	FORI 	 19		49	; for slot22 = slot19,slot20,slot21 else goto 121
		 72	[  0]	MOV  	 23		15	; slot23 = math.max
		 73	[  0]	MOV  	 24		16	; slot24 = math.min
		 74	[  0]	KSHORT	 25		1	; slot25 = 1
		 75	[  0]	FORI 	 23		44	; for slot26 = slot23,slot24,slot25 else goto 120
		 76	[  0]	MOV  	 29		0	; slot29 = slot0
		 77	[  0]	TGETS	 27	0	6	; slot27 = slot0.getPixel
		 78	[  0]	MOV  	 30		26	; slot30 = slot26
		 79	[  0]	MOV  	 31		22	; slot31 = slot22
		 80	[  0]	CALL 	 27	5	4	; slot27, slot28, slot29, slot30 = <unknown table>.getPixel(slot28, slot29, slot30)
		 81	[  0]	ISTC 	 31		30	; slot31 = slot30; if slot30
		 82	[  0]	JMP  	 31		1	; 	goto 84
		 83	[  0]	KSHORT	 31		0	; slot31 = 0
		 84	[  0]	ISGE 	 10		31	; if slot10 >= slot31
		 85	[  0]	JMP  	 31		33	; 	goto 119
		 86	[  0]	KSHORT	 31		0	; slot31 = 0
		 87	[  0]	ISGE 	 11		26	; if slot11 >= slot26
		 88	[  0]	JMP  	 32		2	; 	goto 91
		 89	[  0]	SUBVV	 31	26	11	; slot31 = slot26 - slot11
		 90	[  0]	JMP  	 32		5	; 	goto 96
		 91	[  0]	ADDVN	 32	26	1	; slot32 = slot26 + 1
		 92	[  0]	ISGE 	 32		11	; if slot32 >= slot11
		 93	[  0]	JMP  	 32		2	; 	goto 96
		 94	[  0]	ADDVN	 32	26	1	; slot32 = slot26 + 1
		 95	[  0]	SUBVV	 31	11	32	; slot31 = slot11 - slot32
		 96	[  0]	KSHORT	 32		0	; slot32 = 0
		 97	[  0]	ISGE 	 12		22	; if slot12 >= slot22
		 98	[  0]	JMP  	 33		2	; 	goto 101
		 99	[  0]	SUBVV	 32	22	12	; slot32 = slot22 - slot12
		100	[  0]	JMP  	 33		5	; 	goto 106
		101	[  0]	ADDVN	 33	22	1	; slot33 = slot22 + 1
		102	[  0]	ISGE 	 33		12	; if slot33 >= slot12
		103	[  0]	JMP  	 33		2	; 	goto 106
		104	[  0]	ADDVN	 33	22	1	; slot33 = slot22 + 1
		105	[  0]	SUBVV	 32	12	33	; slot32 = slot12 - slot33
		106	[  0]	MULVV	 33	31	3	; slot33 = slot31 * slot3
		107	[  0]	KSHORT	 34		2	; slot34 = 2
		108	[  0]	POW  	 33	33	34	; slot33 = slot33 ^ slot34 (pow)
		109	[  0]	MULVV	 34	32	4	; slot34 = slot32 * slot4
		110	[  0]	KSHORT	 35		2	; slot35 = 2
		111	[  0]	POW  	 34	34	35	; slot34 = slot34 ^ slot35 (pow)
		112	[  0]	ADDVV	 33	33	34	; slot33 = slot33 + slot34
		113	[  0]	KSHORT	 34		2	; slot34 = 2
		114	[  0]	POW  	 34	9	34	; slot34 = slot9 ^ slot34 (pow)
		115	[  0]	ISGT 	 33		34	; if slot33 > slot34
		116	[  0]	JMP  	 33		2	; 	goto 119
		117	[  0]	KPRI 	 33		2	; slot33 = true
		118	[  0]	RET1 	 33		2	; return slot33
		119	[  0]	FORL 	 23		-44	; slot26 = slot26 + slot25; if cmp(slot26, sign slot25,  slot24) goto 76
		120	[  0]	FORL 	 19		-49	; slot22 = slot22 + slot21; if cmp(slot22, sign slot21,  slot20) goto 72
		121	[  0]	KPRI 	 19		1	; slot19 = false
		122	[  0]	RET1 	 19		2	; return slot19
	 87	[  0]	FNEW 	  7		165	; N/A:0-0: 3 args, 2 upvalues, 33 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		17	; slot3 = _env["tonumber"]
		  2	[  0]	MOV  	  5		1	; slot5 = slot1
		  3	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		  4	[  0]	GGET 	  4		17	; slot4 = _env["tonumber"]
		  5	[  0]	MOV  	  6		2	; slot6 = slot2
		  6	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		  7	[  0]	MOV  	  2		4	; slot2 = tonumber
		  8	[  0]	MOV  	  1		3	; slot1 = tonumber
		  9	[  0]	ISF  	   		1	; if not tonumber
		 10	[  0]	JMP  	  3		2	; 	goto 13
		 11	[  0]	IST  	   		2	; if tonumber
		 12	[  0]	JMP  	  3		2	; 	goto 15
		 13	[  0]	KPRI 	  3		1	; slot3 = false
		 14	[  0]	RET1 	  3		2	; return slot3
		 15	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 16	[  0]	TGETS	  3	3	16	; slot3 = uv0"unknown".getBounds
		 17	[  0]	MOV  	  5		0	; slot5 = slot0
		 18	[  0]	CALL 	  3	5	2	; slot3, slot4, slot5, slot6 = uv0"unknown".getBounds(tonumber)
		 19	[  0]	IST  	   		3	; if uv0"unknown".getBounds
		 20	[  0]	JMP  	  7		2	; 	goto 23
		 21	[  0]	KPRI 	  7		1	; slot7 = false
		 22	[  0]	RET1 	  7		2	; return slot7
		 23	[  0]	ISLT 	  1		3	; if tonumber < uv0"unknown".getBounds
		 24	[  0]	JMP  	  7		6	; 	goto 31
		 25	[  0]	ISLE 	  5		1	; if slot5 <= tonumber
		 26	[  0]	JMP  	  7		4	; 	goto 31
		 27	[  0]	ISLT 	  2		4	; if tonumber < tonumber
		 28	[  0]	JMP  	  7		2	; 	goto 31
		 29	[  0]	ISGT 	  6		2	; if slot6 > tonumber
		 30	[  0]	JMP  	  7		2	; 	goto 33
		 31	[  0]	KPRI 	  7		1	; slot7 = false
		 32	[  0]	RET1 	  7		2	; return slot7
		 33	[  0]	TGETS	  7	0	15	; slot7 = slot0.idata
		 34	[  0]	IST  	   		7	; if <unknown table>.idata
		 35	[  0]	JMP  	  8		2	; 	goto 38
		 36	[  0]	KPRI 	  8		2	; slot8 = true
		 37	[  0]	RET1 	  8		2	; return slot8
		 38	[  0]	GGET 	  8		14	; slot8 = _env["math"]
		 39	[  0]	TGETS	  8	8	13	; slot8 = math.max
		 40	[  0]	KSHORT	 10		0	; slot10 = 0
		 41	[  0]	GGET 	 11		17	; slot11 = _env["tonumber"]
		 42	[  0]	TGETS	 13	0	12	; slot13 = slot0.iw
		 43	[  0]	CALL 	 11	2	2	; slot11 = tonumber(slot12)
		 44	[  0]	IST  	   		11	; if tonumber
		 45	[  0]	JMP  	 12		1	; 	goto 47
		 46	[  0]	KSHORT	 11		0	; slot11 = 0
		 47	[  0]	CALL 	  8	2	3	; slot8 = math.max(slot9, slot10)
		 48	[  0]	GGET 	  9		14	; slot9 = _env["math"]
		 49	[  0]	TGETS	  9	9	13	; slot9 = math.max
		 50	[  0]	KSHORT	 11		0	; slot11 = 0
		 51	[  0]	GGET 	 12		17	; slot12 = _env["tonumber"]
		 52	[  0]	TGETS	 14	0	11	; slot14 = slot0.ih
		 53	[  0]	CALL 	 12	2	2	; slot12 = tonumber(<unknown table>.iw)
		 54	[  0]	IST  	   		12	; if tonumber
		 55	[  0]	JMP  	 13		1	; 	goto 57
		 56	[  0]	KSHORT	 12		0	; slot12 = 0
		 57	[  0]	CALL 	  9	2	3	; slot9 = math.max(slot10, slot11)
		 58	[  0]	GGET 	 10		14	; slot10 = _env["math"]
		 59	[  0]	TGETS	 10	10	13	; slot10 = math.max
		 60	[  0]	GGET 	 12		14	; slot12 = _env["math"]
		 61	[  0]	TGETS	 12	12	10	; slot12 = math.abs
		 62	[  0]	GGET 	 14		17	; slot14 = _env["tonumber"]
		 63	[  0]	TGETS	 16	0	9	; slot16 = slot0.sx
		 64	[  0]	CALL 	 14	2	2	; slot14 = tonumber(slot15)
		 65	[  0]	IST  	   		14	; if tonumber
		 66	[  0]	JMP  	 15		1	; 	goto 68
		 67	[  0]	KSHORT	 14		0	; slot14 = 0
		 68	[  0]	CALL 	 12	2	2	; slot12 = math.abs(<unknown table>.iw)
		 69	[  0]	GGET 	 13		14	; slot13 = _env["math"]
		 70	[  0]	TGETS	 13	13	10	; slot13 = math.abs
		 71	[  0]	GGET 	 15		17	; slot15 = _env["tonumber"]
		 72	[  0]	TGETS	 17	0	8	; slot17 = slot0.baseSx
		 73	[  0]	CALL 	 15	2	2	; slot15 = tonumber(<unknown table>.sx)
		 74	[  0]	IST  	   		15	; if tonumber
		 75	[  0]	JMP  	 16		1	; 	goto 77
		 76	[  0]	KSHORT	 15		0	; slot15 = 0
		 77	[  0]	CALL 	 13	0	2	; MULTRES = math.abs(slot14)
		 78	[  0]	CALLM	 10	2	1	; slot10 = math.max(slot11, ...MULTRES)
		 79	[  0]	GGET 	 11		14	; slot11 = _env["math"]
		 80	[  0]	TGETS	 11	11	13	; slot11 = math.max
		 81	[  0]	GGET 	 13		14	; slot13 = _env["math"]
		 82	[  0]	TGETS	 13	13	10	; slot13 = math.abs
		 83	[  0]	GGET 	 15		17	; slot15 = _env["tonumber"]
		 84	[  0]	TGETS	 17	0	7	; slot17 = slot0.sy
		 85	[  0]	CALL 	 15	2	2	; slot15 = tonumber(<unknown table>.sx)
		 86	[  0]	IST  	   		15	; if tonumber
		 87	[  0]	JMP  	 16		1	; 	goto 89
		 88	[  0]	KSHORT	 15		0	; slot15 = 0
		 89	[  0]	CALL 	 13	2	2	; slot13 = math.abs(slot14)
		 90	[  0]	GGET 	 14		14	; slot14 = _env["math"]
		 91	[  0]	TGETS	 14	14	10	; slot14 = math.abs
		 92	[  0]	GGET 	 16		17	; slot16 = _env["tonumber"]
		 93	[  0]	TGETS	 18	0	6	; slot18 = slot0.baseSy
		 94	[  0]	CALL 	 16	2	2	; slot16 = tonumber(<unknown table>.sy)
		 95	[  0]	IST  	   		16	; if tonumber
		 96	[  0]	JMP  	 17		1	; 	goto 98
		 97	[  0]	KSHORT	 16		0	; slot16 = 0
		 98	[  0]	CALL 	 14	0	2	; MULTRES = math.abs(slot15)
		 99	[  0]	CALLM	 11	2	1	; slot11 = math.max(math.abs, ...MULTRES)
		100	[  0]	GGET 	 12		14	; slot12 = _env["math"]
		101	[  0]	TGETS	 12	12	10	; slot12 = math.abs
		102	[  0]	GGET 	 14		17	; slot14 = _env["tonumber"]
		103	[  0]	TGETS	 16	0	8	; slot16 = slot0.baseSx
		104	[  0]	CALL 	 14	2	2	; slot14 = tonumber(slot15)
		105	[  0]	IST  	   		14	; if tonumber
		106	[  0]	JMP  	 15		1	; 	goto 108
		107	[  0]	MOV  	 14		10	; slot14 = math.max
		108	[  0]	CALL 	 12	2	2	; slot12 = math.abs(math.abs)
		109	[  0]	GGET 	 13		14	; slot13 = _env["math"]
		110	[  0]	TGETS	 13	13	10	; slot13 = math.abs
		111	[  0]	GGET 	 15		17	; slot15 = _env["tonumber"]
		112	[  0]	TGETS	 17	0	6	; slot17 = slot0.baseSy
		113	[  0]	CALL 	 15	2	2	; slot15 = tonumber(<unknown table>.baseSx)
		114	[  0]	IST  	   		15	; if tonumber
		115	[  0]	JMP  	 16		1	; 	goto 117
		116	[  0]	MOV  	 15		11	; slot15 = math.max
		117	[  0]	CALL 	 13	2	2	; slot13 = math.abs(math.max)
		118	[  0]	GGET 	 14		17	; slot14 = _env["tonumber"]
		119	[  0]	TGETS	 16	0	5	; slot16 = slot0.cx
		120	[  0]	CALL 	 14	2	2	; slot14 = tonumber(math.max)
		121	[  0]	GGET 	 15		17	; slot15 = _env["tonumber"]
		122	[  0]	TGETS	 17	0	4	; slot17 = slot0.cy
		123	[  0]	CALL 	 15	2	2	; slot15 = tonumber(<unknown table>.cx)
		124	[  0]	GGET 	 16		17	; slot16 = _env["tonumber"]
		125	[  0]	TGETS	 18	0	3	; slot18 = slot0.restCX
		126	[  0]	CALL 	 16	2	2	; slot16 = tonumber(<unknown table>.cy)
		127	[  0]	IST  	   		16	; if tonumber
		128	[  0]	JMP  	 17		1	; 	goto 130
		129	[  0]	MOV  	 16		14	; slot16 = tonumber
		130	[  0]	GGET 	 17		17	; slot17 = _env["tonumber"]
		131	[  0]	TGETS	 19	0	2	; slot19 = slot0.restCY
		132	[  0]	CALL 	 17	2	2	; slot17 = tonumber(<unknown table>.restCX)
		133	[  0]	IST  	   		17	; if tonumber
		134	[  0]	JMP  	 18		1	; 	goto 136
		135	[  0]	MOV  	 17		15	; slot17 = tonumber
		136	[  0]	GGET 	 18		14	; slot18 = _env["math"]
		137	[  0]	TGETS	 18	18	13	; slot18 = math.max
		138	[  0]	KSHORT	 20		0	; slot20 = 0
		139	[  0]	GGET 	 21		17	; slot21 = _env["tonumber"]
		140	[  0]	TGETS	 23	0	1	; slot23 = slot0.hitSlopPx
		141	[  0]	CALL 	 21	2	2	; slot21 = tonumber(slot22)
		142	[  0]	IST  	   		21	; if tonumber
		143	[  0]	JMP  	 22		1	; 	goto 145
		144	[  0]	KSHORT	 21		0	; slot21 = 0
		145	[  0]	CALL 	 18	2	3	; slot18 = math.max(<unknown table>.restCY, slot20)
		146	[  0]	GGET 	 19		14	; slot19 = _env["math"]
		147	[  0]	TGETS	 19	19	13	; slot19 = math.max
		148	[  0]	KSHORT	 21		0	; slot21 = 0
		149	[  0]	GGET 	 22		17	; slot22 = _env["tonumber"]
		150	[  0]	TGETS	 24	0	0	; slot24 = slot0.alphaThreshold
		151	[  0]	CALL 	 22	2	2	; slot22 = tonumber(<unknown table>.hitSlopPx)
		152	[  0]	IST  	   		22	; if tonumber
		153	[  0]	JMP  	 23		1	; 	goto 155
		154	[  0]	KNUM 	 22		0	; slot22 = 0.05
		155	[  0]	CALL 	 19	2	3	; slot19 = math.max(slot20, slot21)
		156	[  0]	UGET 	 20		1	; slot20 = uv1"unknwon"
		157	[  0]	MOV  	 22		7	; slot22 = <unknown table>.idata
		158	[  0]	MOV  	 23		8	; slot23 = math.max
		159	[  0]	MOV  	 24		9	; slot24 = math.max
		160	[  0]	MOV  	 25		10	; slot25 = math.max
		161	[  0]	MOV  	 26		11	; slot26 = math.max
		162	[  0]	MOV  	 27		14	; slot27 = tonumber
		163	[  0]	MOV  	 28		15	; slot28 = tonumber
		164	[  0]	MOV  	 29		1	; slot29 = tonumber
		165	[  0]	MOV  	 30		2	; slot30 = tonumber
		166	[  0]	MOV  	 31		18	; slot31 = math.max
		167	[  0]	MOV  	 32		19	; slot32 = math.max
		168	[  0]	CALL 	 20	2	12	; slot20 = uv1"unknown"(slot21, <unknown table>.idata, math.max, math.max, math.max, math.max, tonumber, tonumber, tonumber, tonumber, math.max)
		169	[  0]	IST  	   		20	; if uv1"unknown"
		170	[  0]	JMP  	 21		13	; 	goto 184
		171	[  0]	UGET 	 20		1	; slot20 = uv1"unknwon"
		172	[  0]	MOV  	 22		7	; slot22 = <unknown table>.idata
		173	[  0]	MOV  	 23		8	; slot23 = math.max
		174	[  0]	MOV  	 24		9	; slot24 = math.max
		175	[  0]	MOV  	 25		12	; slot25 = math.abs
		176	[  0]	MOV  	 26		13	; slot26 = math.abs
		177	[  0]	MOV  	 27		16	; slot27 = tonumber
		178	[  0]	MOV  	 28		17	; slot28 = tonumber
		179	[  0]	MOV  	 29		1	; slot29 = tonumber
		180	[  0]	MOV  	 30		2	; slot30 = tonumber
		181	[  0]	MOV  	 31		18	; slot31 = math.max
		182	[  0]	MOV  	 32		19	; slot32 = math.max
		183	[  0]	CALL 	 20	2	12	; slot20 = uv1"unknown"(slot21, <unknown table>.idata, math.max, math.max, math.abs, math.abs, tonumber, tonumber, tonumber, tonumber, math.max)
		184	[  0]	RET1 	 20		2	; return uv1"unknown"
	 88	[  0]	TSETS	  7	5	166	; slot5.contains = slot7
	 89	[  0]	MOV  	  4		5	; slot4 = slot5
	 90	[  0]	UCLO 	  5		0	; nil uvs >= r5; goto 91
	 91	[  0]	KPRI 	  5		0	; slot5 = nil
	 92	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
	 93	[  0]	KPRI 	  7		0	; slot7 = nil
	 94	[  0]	FNEW 	  8		164	; N/A:0-0: 0 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		2	; 	goto 6
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	RET1 	  0		2	; return uv0"unknown"
		  6	[  0]	GGET 	  0		4	; slot0 = _env["love"]
		  7	[  0]	ISF  	   		0	; if not love
		  8	[  0]	JMP  	  1		18	; 	goto 27
		  9	[  0]	GGET 	  0		4	; slot0 = _env["love"]
		 10	[  0]	TGETS	  0	0	3	; slot0 = love.graphics
		 11	[  0]	ISF  	   		0	; if not love.graphics
		 12	[  0]	JMP  	  1		14	; 	goto 27
		 13	[  0]	GGET 	  0		4	; slot0 = _env["love"]
		 14	[  0]	TGETS	  0	0	3	; slot0 = love.graphics
		 15	[  0]	TGETS	  0	0	2	; slot0 = love.graphics.newFont
		 16	[  0]	ISF  	   		0	; if not love.graphics.newFont
		 17	[  0]	JMP  	  1		9	; 	goto 27
		 18	[  0]	GGET 	  0		1	; slot0 = _env["pcall"]
		 19	[  0]	GGET 	  2		4	; slot2 = _env["love"]
		 20	[  0]	TGETS	  2	2	3	; slot2 = love.graphics
		 21	[  0]	TGETS	  2	2	2	; slot2 = love.graphics.newFont
		 22	[  0]	KSHORT	  3		16	; slot3 = 16
		 23	[  0]	CALL 	  0	3	3	; slot0, slot1 = pcall(slot1, love.graphics.newFont)
		 24	[  0]	ISF  	   		0	; if not slot0
		 25	[  0]	JMP  	  2		1	; 	goto 27
		 26	[  0]	USETV	  0		1	; uv0"unknwon" = slot1
		 27	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 28	[  0]	IST  	   		0	; if uv0"unknown"
		 29	[  0]	JMP  	  1		13	; 	goto 43
		 30	[  0]	GGET 	  0		4	; slot0 = _env["love"]
		 31	[  0]	TGETS	  0	0	3	; slot0 = love.graphics
		 32	[  0]	ISF  	   		0	; if not love.graphics
		 33	[  0]	JMP  	  1		9	; 	goto 43
		 34	[  0]	GGET 	  0		4	; slot0 = _env["love"]
		 35	[  0]	TGETS	  0	0	3	; slot0 = love.graphics
		 36	[  0]	TGETS	  0	0	0	; slot0 = love.graphics.getFont
		 37	[  0]	ISF  	   		0	; if not love.graphics.getFont
		 38	[  0]	JMP  	  1		4	; 	goto 43
		 39	[  0]	GGET 	  0		4	; slot0 = _env["love"]
		 40	[  0]	TGETS	  0	0	3	; slot0 = love.graphics
		 41	[  0]	TGETS	  0	0	0	; slot0 = love.graphics.getFont
		 42	[  0]	CALL 	  0	2	1	; slot0 = love.graphics.getFont()
		 43	[  0]	RET1 	  0		2	; return slot0
	 95	[  0]	FNEW 	  9		163	; N/A:0-0: 0 args, 1 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		28	; slot0 = _env["love"]
		  2	[  0]	ISF  	   		0	; if not love
		  3	[  0]	JMP  	  1		13	; 	goto 17
		  4	[  0]	GGET 	  0		28	; slot0 = _env["love"]
		  5	[  0]	TGETS	  0	0	27	; slot0 = love.graphics
		  6	[  0]	ISF  	   		0	; if not love.graphics
		  7	[  0]	JMP  	  1		9	; 	goto 17
		  8	[  0]	GGET 	  0		28	; slot0 = _env["love"]
		  9	[  0]	TGETS	  0	0	26	; slot0 = love.timer
		 10	[  0]	ISF  	   		0	; if not love.timer
		 11	[  0]	JMP  	  1		5	; 	goto 17
		 12	[  0]	GGET 	  0		28	; slot0 = _env["love"]
		 13	[  0]	TGETS	  0	0	26	; slot0 = love.timer
		 14	[  0]	TGETS	  0	0	25	; slot0 = love.timer.getFPS
		 15	[  0]	IST  	   		0	; if love.timer.getFPS
		 16	[  0]	JMP  	  0		1	; 	goto 18
		 17	[  0]	RET0 	  0		1	; return
		 18	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 19	[  0]	CALL 	  0	2	1	; slot0 = uv0"unknown"()
		 20	[  0]	IST  	   		0	; if slot0
		 21	[  0]	JMP  	  1		1	; 	goto 23
		 22	[  0]	RET0 	  0		1	; return
		 23	[  0]	GGET 	  1		24	; slot1 = _env["math"]
		 24	[  0]	TGETS	  1	1	23	; slot1 = math.max
		 25	[  0]	KSHORT	  3		0	; slot3 = 0
		 26	[  0]	GGET 	  4		24	; slot4 = _env["math"]
		 27	[  0]	TGETS	  4	4	22	; slot4 = math.floor
		 28	[  0]	GGET 	  6		21	; slot6 = _env["tonumber"]
		 29	[  0]	GGET 	  8		28	; slot8 = _env["love"]
		 30	[  0]	TGETS	  8	8	26	; slot8 = love.timer
		 31	[  0]	TGETS	  8	8	25	; slot8 = love.timer.getFPS
		 32	[  0]	CALL 	  8	0	1	; MULTRES = love.timer.getFPS()
		 33	[  0]	CALLM	  6	2	0	; slot6 = tonumber(, ...MULTRES)
		 34	[  0]	IST  	   		6	; if tonumber
		 35	[  0]	JMP  	  7		1	; 	goto 37
		 36	[  0]	KSHORT	  6		0	; slot6 = 0
		 37	[  0]	ADDVN	  6	6	0	; slot6 = slot6 + 0.5
		 38	[  0]	CALL 	  4	0	2	; MULTRES = math.floor(slot5)
		 39	[  0]	CALLM	  1	2	1	; slot1 = math.max(slot2, ...MULTRES)
		 40	[  0]	KSTR 	  2		20	; slot2 = "FPS: %d"
		 41	[  0]	MOV  	  4		2	; slot4 = slot2
		 42	[  0]	TGETS	  2	2	19	; slot2 = slot2.format
		 43	[  0]	MOV  	  5		1	; slot5 = slot1
		 44	[  0]	CALL 	  2	2	3	; slot2 = <unknown table>.format(slot3, slot4)
		 45	[  0]	KSHORT	  3		8	; slot3 = 8
		 46	[  0]	KSHORT	  4		8	; slot4 = 8
		 47	[  0]	KSHORT	  5		7	; slot5 = 7
		 48	[  0]	KSHORT	  6		4	; slot6 = 4
		 49	[  0]	MOV  	  9		0	; slot9 = slot0
		 50	[  0]	TGETS	  7	0	18	; slot7 = slot0.getWidth
		 51	[  0]	MOV  	 10		2	; slot10 = slot2
		 52	[  0]	CALL 	  7	2	3	; slot7 = <unknown table>.getWidth(love.timer.getFPS, slot9)
		 53	[  0]	MULVN	  8	5	1	; slot8 = slot5 * 2
		 54	[  0]	ADDVV	  7	7	8	; slot7 = <unknown table>.getWidth + slot8
		 55	[  0]	MOV  	 10		0	; slot10 = slot0
		 56	[  0]	TGETS	  8	0	17	; slot8 = slot0.getHeight
		 57	[  0]	CALL 	  8	2	2	; slot8 = <unknown table>.getHeight(slot9)
		 58	[  0]	MULVN	  9	6	1	; slot9 = slot6 * 2
		 59	[  0]	ADDVV	  8	8	9	; slot8 = <unknown table>.getHeight + slot9
		 60	[  0]	GGET 	  9		28	; slot9 = _env["love"]
		 61	[  0]	TGETS	  9	9	27	; slot9 = love.graphics
		 62	[  0]	TGETS	  9	9	16	; slot9 = love.graphics.push
		 63	[  0]	KSTR 	 11		15	; slot11 = "all"
		 64	[  0]	CALL 	  9	1	2	;  = love.graphics.push(slot10)
		 65	[  0]	GGET 	  9		28	; slot9 = _env["love"]
		 66	[  0]	TGETS	  9	9	27	; slot9 = love.graphics
		 67	[  0]	TGETS	  9	9	14	; slot9 = love.graphics.setCanvas
		 68	[  0]	CALL 	  9	1	1	;  = love.graphics.setCanvas()
		 69	[  0]	GGET 	  9		28	; slot9 = _env["love"]
		 70	[  0]	TGETS	  9	9	27	; slot9 = love.graphics
		 71	[  0]	TGETS	  9	9	13	; slot9 = love.graphics.origin
		 72	[  0]	CALL 	  9	1	1	;  = love.graphics.origin()
		 73	[  0]	GGET 	  9		28	; slot9 = _env["love"]
		 74	[  0]	TGETS	  9	9	27	; slot9 = love.graphics
		 75	[  0]	TGETS	  9	9	12	; slot9 = love.graphics.setShader
		 76	[  0]	CALL 	  9	1	1	;  = love.graphics.setShader()
		 77	[  0]	GGET 	  9		28	; slot9 = _env["love"]
		 78	[  0]	TGETS	  9	9	27	; slot9 = love.graphics
		 79	[  0]	TGETS	  9	9	11	; slot9 = love.graphics.setScissor
		 80	[  0]	CALL 	  9	1	1	;  = love.graphics.setScissor()
		 81	[  0]	GGET 	  9		28	; slot9 = _env["love"]
		 82	[  0]	TGETS	  9	9	27	; slot9 = love.graphics
		 83	[  0]	TGETS	  9	9	10	; slot9 = love.graphics.setStencilTest
		 84	[  0]	CALL 	  9	1	1	;  = love.graphics.setStencilTest()
		 85	[  0]	GGET 	  9		28	; slot9 = _env["love"]
		 86	[  0]	TGETS	  9	9	27	; slot9 = love.graphics
		 87	[  0]	TGETS	  9	9	9	; slot9 = love.graphics.setBlendMode
		 88	[  0]	KSTR 	 11		8	; slot11 = "alpha"
		 89	[  0]	KSTR 	 12		7	; slot12 = "alphamultiply"
		 90	[  0]	CALL 	  9	1	3	;  = love.graphics.setBlendMode(slot10, slot11)
		 91	[  0]	GGET 	  9		28	; slot9 = _env["love"]
		 92	[  0]	TGETS	  9	9	27	; slot9 = love.graphics
		 93	[  0]	TGETS	  9	9	6	; slot9 = love.graphics.setFont
		 94	[  0]	MOV  	 11		0	; slot11 = slot0
		 95	[  0]	CALL 	  9	1	2	;  = love.graphics.setFont(slot10)
		 96	[  0]	GGET 	  9		28	; slot9 = _env["love"]
		 97	[  0]	TGETS	  9	9	27	; slot9 = love.graphics
		 98	[  0]	TGETS	  9	9	5	; slot9 = love.graphics.setColor
		 99	[  0]	KNUM 	 11		2	; slot11 = 0.025
		100	[  0]	KNUM 	 12		3	; slot12 = 0.03
		101	[  0]	KNUM 	 13		4	; slot13 = 0.07
		102	[  0]	KNUM 	 14		5	; slot14 = 0.86
		103	[  0]	CALL 	  9	1	5	;  = love.graphics.setColor(slot10, slot11, slot12, slot13)
		104	[  0]	GGET 	  9		28	; slot9 = _env["love"]
		105	[  0]	TGETS	  9	9	27	; slot9 = love.graphics
		106	[  0]	TGETS	  9	9	4	; slot9 = love.graphics.rectangle
		107	[  0]	KSTR 	 11		3	; slot11 = "fill"
		108	[  0]	MOV  	 12		3	; slot12 = slot3
		109	[  0]	MOV  	 13		4	; slot13 = slot4
		110	[  0]	MOV  	 14		7	; slot14 = slot7
		111	[  0]	MOV  	 15		8	; slot15 = slot8
		112	[  0]	CALL 	  9	1	6	;  = love.graphics.rectangle(slot10, slot11, slot12, slot13, slot14)
		113	[  0]	GGET 	  9		28	; slot9 = _env["love"]
		114	[  0]	TGETS	  9	9	27	; slot9 = love.graphics
		115	[  0]	TGETS	  9	9	5	; slot9 = love.graphics.setColor
		116	[  0]	KNUM 	 11		6	; slot11 = 0.44
		117	[  0]	KNUM 	 12		7	; slot12 = 0.48
		118	[  0]	KNUM 	 13		8	; slot13 = 0.7
		119	[  0]	KNUM 	 14		9	; slot14 = 0.95
		120	[  0]	CALL 	  9	1	5	;  = love.graphics.setColor(slot10, slot11, slot12, slot13)
		121	[  0]	GGET 	  9		28	; slot9 = _env["love"]
		122	[  0]	TGETS	  9	9	27	; slot9 = love.graphics
		123	[  0]	TGETS	  9	9	4	; slot9 = love.graphics.rectangle
		124	[  0]	KSTR 	 11		2	; slot11 = "line"
		125	[  0]	ADDVN	 12	3	0	; slot12 = slot3 + 0.5
		126	[  0]	ADDVN	 13	4	0	; slot13 = slot4 + 0.5
		127	[  0]	SUBVN	 14	7	10	; slot14 = slot7 - 1
		128	[  0]	SUBVN	 15	8	10	; slot15 = slot8 - 1
		129	[  0]	CALL 	  9	1	6	;  = love.graphics.rectangle(slot10, slot11, slot12, slot13, slot14)
		130	[  0]	GGET 	  9		28	; slot9 = _env["love"]
		131	[  0]	TGETS	  9	9	27	; slot9 = love.graphics
		132	[  0]	TGETS	  9	9	5	; slot9 = love.graphics.setColor
		133	[  0]	KSHORT	 11		0	; slot11 = 0
		134	[  0]	KSHORT	 12		0	; slot12 = 0
		135	[  0]	KSHORT	 13		0	; slot13 = 0
		136	[  0]	KNUM 	 14		11	; slot14 = 0.8
		137	[  0]	CALL 	  9	1	5	;  = love.graphics.setColor(slot10, slot11, slot12, slot13)
		138	[  0]	GGET 	  9		28	; slot9 = _env["love"]
		139	[  0]	TGETS	  9	9	27	; slot9 = love.graphics
		140	[  0]	TGETS	  9	9	1	; slot9 = love.graphics.print
		141	[  0]	MOV  	 11		2	; slot11 = slot2
		142	[  0]	ADDVV	 12	3	5	; slot12 = slot3 + slot5
		143	[  0]	ADDVN	 12	12	10	; slot12 = slot12 + 1
		144	[  0]	ADDVV	 13	4	6	; slot13 = slot4 + slot6
		145	[  0]	ADDVN	 13	13	10	; slot13 = slot13 + 1
		146	[  0]	CALL 	  9	1	4	;  = love.graphics.print(slot10, slot11, slot12)
		147	[  0]	GGET 	  9		28	; slot9 = _env["love"]
		148	[  0]	TGETS	  9	9	27	; slot9 = love.graphics
		149	[  0]	TGETS	  9	9	5	; slot9 = love.graphics.setColor
		150	[  0]	KNUM 	 11		12	; slot11 = 0.92
		151	[  0]	KNUM 	 12		13	; slot12 = 0.94
		152	[  0]	KSHORT	 13		1	; slot13 = 1
		153	[  0]	KSHORT	 14		1	; slot14 = 1
		154	[  0]	CALL 	  9	1	5	;  = love.graphics.setColor(slot10, slot11, slot12, slot13)
		155	[  0]	GGET 	  9		28	; slot9 = _env["love"]
		156	[  0]	TGETS	  9	9	27	; slot9 = love.graphics
		157	[  0]	TGETS	  9	9	1	; slot9 = love.graphics.print
		158	[  0]	MOV  	 11		2	; slot11 = slot2
		159	[  0]	ADDVV	 12	3	5	; slot12 = slot3 + slot5
		160	[  0]	ADDVV	 13	4	6	; slot13 = slot4 + slot6
		161	[  0]	CALL 	  9	1	4	;  = love.graphics.print(slot10, slot11, slot12)
		162	[  0]	GGET 	  9		28	; slot9 = _env["love"]
		163	[  0]	TGETS	  9	9	27	; slot9 = love.graphics
		164	[  0]	TGETS	  9	9	0	; slot9 = love.graphics.pop
		165	[  0]	CALL 	  9	1	1	;  = love.graphics.pop()
		166	[  0]	RET0 	  0		1	; return
	 96	[  0]	TSETS	  9	6	212	; slot6.draw = slot9
	 97	[  0]	MOV  	  5		6	; slot5 = slot6
	 98	[  0]	UCLO 	  6		0	; nil uvs >= r6; goto 99
	 99	[  0]	KPRI 	  6		0	; slot6 = nil
	100	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
	101	[  0]	FNEW 	  8		161	; N/A:0-0: 2 args, 0 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		2	; slot2 = _env["tonumber"]
		  2	[  0]	ISFC 	  4		0	; slot4 = slot0; if not slot0
		  3	[  0]	JMP  	  4		4	; 	goto 8
		  4	[  0]	TGETS	  4	0	1	; slot4 = slot0.pixelScaleBase
		  5	[  0]	IST  	   		4	; if <unknown table>.pixelScaleBase
		  6	[  0]	JMP  	  5		1	; 	goto 8
		  7	[  0]	TGETS	  4	0	0	; slot4 = slot0.frameH
		  8	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		  9	[  0]	IST  	   		2	; if slot2
		 10	[  0]	JMP  	  3		1	; 	goto 12
		 11	[  0]	KSHORT	  2		32	; slot2 = 32
		 12	[  0]	GGET 	  3		2	; slot3 = _env["tonumber"]
		 13	[  0]	MOV  	  5		1	; slot5 = slot1
		 14	[  0]	CALL 	  3	2	2	; slot3 = tonumber(<unknown table>.frameH)
		 15	[  0]	IST  	   		3	; if tonumber
		 16	[  0]	JMP  	  4		1	; 	goto 18
		 17	[  0]	KSHORT	  3		32	; slot3 = 32
		 18	[  0]	KSHORT	  4		0	; slot4 = 0
		 19	[  0]	ISGE 	  4		2	; if slot4 >= slot2
		 20	[  0]	JMP  	  4		2	; 	goto 23
		 21	[  0]	ISTC 	  4		2	; slot4 = slot2; if slot2
		 22	[  0]	JMP  	  4		1	; 	goto 24
		 23	[  0]	KSHORT	  4		32	; slot4 = 32
		 24	[  0]	DIVVV	  3	3	4	; slot3 = slot3 / slot4
		 25	[  0]	RET1 	  3		2	; return slot3
	102	[  0]	TSETS	  8	7	162	; slot7.uniformScale = slot8
	103	[  0]	FNEW 	  8		159	; N/A:0-0: 5 args, 0 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  5		7	; slot5 = _env["math"]
		  2	[  0]	TGETS	  5	5	6	; slot5 = math.min
		  3	[  0]	DIVVN	  7	2	0	; slot7 = slot2 / 32
		  4	[  0]	DIVVN	  8	3	0	; slot8 = slot3 / 32
		  5	[  0]	CALL 	  5	2	3	; slot5 = math.min(slot6, slot7)
		  6	[  0]	KSHORT	  6		1	; slot6 = 1
		  7	[  0]	ISGT 	  6		5	; if slot6 > math.min
		  8	[  0]	JMP  	  6		5	; 	goto 14
		  9	[  0]	GGET 	  6		7	; slot6 = _env["math"]
		 10	[  0]	TGETS	  6	6	5	; slot6 = math.floor
		 11	[  0]	MOV  	  8		5	; slot8 = math.min
		 12	[  0]	CALL 	  6	2	2	; slot6 = math.floor(slot7)
		 13	[  0]	MOV  	  5		6	; slot5 = math.floor
		 14	[  0]	MULNV	  6	5	0	; slot6 = 32 * math.floor
		 15	[  0]	GGET 	  7		7	; slot7 = _env["math"]
		 16	[  0]	TGETS	  7	7	5	; slot7 = math.floor
		 17	[  0]	SUBVV	  9	3	6	; slot9 = slot3 - slot6
		 18	[  0]	MULVN	  9	9	1	; slot9 = slot9 * 0.5
		 19	[  0]	ADDVN	  9	9	1	; slot9 = slot9 + 0.5
		 20	[  0]	CALL 	  7	2	2	; slot7 = math.floor(math.min)
		 21	[  0]	ADDVV	  7	4	7	; slot7 = slot4 + math.floor
		 22	[  0]	ADDVV	  7	7	6	; slot7 = slot7 + slot6
		 23	[  0]	ISFC 	  8		0	; slot8 = slot0; if not slot0
		 24	[  0]	JMP  	  8		5	; 	goto 30
		 25	[  0]	TGETS	  8	0	4	; slot8 = slot0.bounds
		 26	[  0]	ISF  	   		8	; if not <unknown table>.bounds
		 27	[  0]	JMP  	  9		2	; 	goto 30
		 28	[  0]	TGETS	  8	0	4	; slot8 = slot0.bounds
		 29	[  0]	TGETS	  8	8	3	; slot8 = <unknown table>.bounds.idle
		 30	[  0]	ISFC 	  9		8	; slot9 = <unknown table>.bounds.idle; if not <unknown table>.bounds.idle
		 31	[  0]	JMP  	  9		1	; 	goto 33
		 32	[  0]	TGETB	  9	8	1	; slot9 = <unknown table>.bounds.idle[1]
		 33	[  0]	ISF  	   		9	; if not slot9
		 34	[  0]	JMP  	 10		5	; 	goto 40
		 35	[  0]	TGETS	 10	9	2	; slot10 = slot9.y
		 36	[  0]	TGETS	 11	9	1	; slot11 = slot9.h
		 37	[  0]	ADDVV	 10	10	11	; slot10 = <unknown table>.y + <unknown table>.h
		 38	[  0]	IST  	   		10	; if slot10
		 39	[  0]	JMP  	 11		6	; 	goto 46
		 40	[  0]	ISF  	   		0	; if not slot0
		 41	[  0]	JMP  	 10		3	; 	goto 45
		 42	[  0]	TGETS	 10	0	0	; slot10 = slot0.frameH
		 43	[  0]	IST  	   		10	; if <unknown table>.frameH
		 44	[  0]	JMP  	 11		1	; 	goto 46
		 45	[  0]	KSHORT	 10		32	; slot10 = 32
		 46	[  0]	MULVV	 11	10	1	; slot11 = slot10 * slot1
		 47	[  0]	SUBVV	 11	7	11	; slot11 = slot7 - slot11
		 48	[  0]	MOV  	 12		7	; slot12 = slot7
		 49	[  0]	RET  	 11		3	; return slot11, slot12
	104	[  0]	TSETS	  8	7	160	; slot7.classCardY = slot8
	105	[  0]	FNEW 	  8		157	; N/A:0-0: 7 args, 1 upvalues, 22 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		5	; if slot5
		  2	[  0]	JMP  	  7		1	; 	goto 4
		  3	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		  4	[  0]	TGETS	  7	5	31	; slot7 = slot5.shadow
		  5	[  0]	IST  	   		7	; if <unknown table>.shadow
		  6	[  0]	JMP  	  8		1	; 	goto 8
		  7	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
		  8	[  0]	TGETS	  8	0	30	; slot8 = slot0.frameW
		  9	[  0]	IST  	   		8	; if <unknown table>.frameW
		 10	[  0]	JMP  	  9		1	; 	goto 12
		 11	[  0]	KSHORT	  8		32	; slot8 = 32
		 12	[  0]	GGET 	  9		29	; slot9 = _env["math"]
		 13	[  0]	TGETS	  9	9	28	; slot9 = math.max
		 14	[  0]	KSHORT	 11		1	; slot11 = 1
		 15	[  0]	TGETS	 12	0	27	; slot12 = slot0.frameH
		 16	[  0]	IST  	   		12	; if <unknown table>.frameH
		 17	[  0]	JMP  	 13		1	; 	goto 19
		 18	[  0]	KSHORT	 12		32	; slot12 = 32
		 19	[  0]	CALL 	  9	2	3	; slot9 = math.max(slot10, slot11)
		 20	[  0]	GGET 	 10		26	; slot10 = _env["tonumber"]
		 21	[  0]	TGETS	 12	5	25	; slot12 = slot5.allySize32
		 22	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 23	[  0]	IST  	   		10	; if tonumber
		 24	[  0]	JMP  	 11		1	; 	goto 26
		 25	[  0]	KSHORT	 10		64	; slot10 = 64
		 26	[  0]	KSHORT	 11		0	; slot11 = 0
		 27	[  0]	ISGT 	 10		11	; if slot10 > slot11
		 28	[  0]	JMP  	 11		1	; 	goto 30
		 29	[  0]	KSHORT	 10		64	; slot10 = 64
		 30	[  0]	UGET 	 11		0	; slot11 = uv0"unknwon"
		 31	[  0]	TGETS	 11	11	24	; slot11 = uv0"unknown".uniformScale
		 32	[  0]	MOV  	 13		0	; slot13 = slot0
		 33	[  0]	MOV  	 14		10	; slot14 = slot10
		 34	[  0]	CALL 	 11	2	3	; slot11 = uv0"unknown".uniformScale(<unknown table>.allySize32, slot13)
		 35	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		 36	[  0]	TGETS	 12	12	23	; slot12 = uv0"unknown".quantized
		 37	[  0]	MOV  	 14		1	; slot14 = slot1
		 38	[  0]	MOV  	 15		0	; slot15 = slot0
		 39	[  0]	CALL 	 12	2	3	; slot12 = uv0"unknown".quantized(slot13, slot14)
		 40	[  0]	ISF  	   		12	; if not uv0"unknown".quantized
		 41	[  0]	JMP  	 13		28	; 	goto 70
		 42	[  0]	KSHORT	 12		48	; slot12 = 48
		 43	[  0]	ISLE 	 12		8	; if slot12 <= slot8
		 44	[  0]	JMP  	 12		3	; 	goto 48
		 45	[  0]	KSHORT	 12		48	; slot12 = 48
		 46	[  0]	ISGT 	 12		9	; if slot12 > math.max
		 47	[  0]	JMP  	 12		11	; 	goto 59
		 48	[  0]	GGET 	 12		29	; slot12 = _env["math"]
		 49	[  0]	TGETS	 12	12	28	; slot12 = math.max
		 50	[  0]	KSHORT	 14		1	; slot14 = 1
		 51	[  0]	GGET 	 15		29	; slot15 = _env["math"]
		 52	[  0]	TGETS	 15	15	22	; slot15 = math.ceil
		 53	[  0]	DIVVV	 17	10	8	; slot17 = slot10 / slot8
		 54	[  0]	SUBVN	 17	17	0	; slot17 = slot17 - 1e-06
		 55	[  0]	CALL 	 15	0	2	; MULTRES = math.ceil(slot16)
		 56	[  0]	CALLM	 12	2	1	; slot12 = math.max(slot13, ...MULTRES)
		 57	[  0]	ISTC 	 11		12	; slot11 = math.max; if math.max
		 58	[  0]	JMP  	 13		10	; 	goto 69
		 59	[  0]	GGET 	 12		29	; slot12 = _env["math"]
		 60	[  0]	TGETS	 12	12	28	; slot12 = math.max
		 61	[  0]	KSHORT	 14		1	; slot14 = 1
		 62	[  0]	GGET 	 15		29	; slot15 = _env["math"]
		 63	[  0]	TGETS	 15	15	21	; slot15 = math.floor
		 64	[  0]	DIVVV	 17	10	8	; slot17 = slot10 / slot8
		 65	[  0]	ADDVN	 17	17	1	; slot17 = slot17 + 0.5
		 66	[  0]	CALL 	 15	0	2	; MULTRES = math.floor(slot16)
		 67	[  0]	CALLM	 12	2	1	; slot12 = math.max(slot13, ...MULTRES)
		 68	[  0]	MOV  	 11		12	; slot11 = math.max
		 69	[  0]	JMP  	 12		23	; 	goto 93
		 70	[  0]	GGET 	 12		20	; slot12 = _env["type"]
		 71	[  0]	MOV  	 14		1	; slot14 = slot1
		 72	[  0]	CALL 	 12	2	2	; slot12 = type(slot13)
		 73	[  0]	ISNES	 12		19	; if type ~= "string"
		 74	[  0]	JMP  	 12		18	; 	goto 93
		 75	[  0]	MOV  	 14		1	; slot14 = slot1
		 76	[  0]	TGETS	 12	1	18	; slot12 = slot1.find
		 77	[  0]	KSTR 	 15		17	; slot15 = "ENEMY_"
		 78	[  0]	KSHORT	 16		1	; slot16 = 1
		 79	[  0]	KPRI 	 17		2	; slot17 = true
		 80	[  0]	CALL 	 12	2	5	; slot12 = <unknown table>.find(slot13, slot14, slot15, slot16)
		 81	[  0]	ISF  	   		12	; if not <unknown table>.find
		 82	[  0]	JMP  	 13		10	; 	goto 93
		 83	[  0]	GGET 	 12		29	; slot12 = _env["math"]
		 84	[  0]	TGETS	 12	12	28	; slot12 = math.max
		 85	[  0]	KSHORT	 14		1	; slot14 = 1
		 86	[  0]	GGET 	 15		29	; slot15 = _env["math"]
		 87	[  0]	TGETS	 15	15	21	; slot15 = math.floor
		 88	[  0]	DIVVV	 17	10	8	; slot17 = slot10 / slot8
		 89	[  0]	ADDVN	 17	17	1	; slot17 = slot17 + 0.5
		 90	[  0]	CALL 	 15	0	2	; MULTRES = math.floor(slot16)
		 91	[  0]	CALLM	 12	2	1	; slot12 = math.max(slot13, ...MULTRES)
		 92	[  0]	MOV  	 11		12	; slot11 = math.max
		 93	[  0]	MOV  	 12		11	; slot12 = math.max
		 94	[  0]	MULVN	 13	8	1	; slot13 = slot8 * 0.5
		 95	[  0]	MOV  	 14		9	; slot14 = math.max
		 96	[  0]	ISEQS	  1		16	; if slot1 == "W"
		 97	[  0]	JMP  	 15		39	; 	goto 137
		 98	[  0]	ISEQS	  1		15	; if slot1 == "A"
		 99	[  0]	JMP  	 15		37	; 	goto 137
		100	[  0]	ISEQS	  1		14	; if slot1 == "S"
		101	[  0]	JMP  	 15		35	; 	goto 137
		102	[  0]	ISEQS	  1		13	; if slot1 == "M"
		103	[  0]	JMP  	 15		33	; 	goto 137
		104	[  0]	ISEQS	  1		12	; if slot1 == "D"
		105	[  0]	JMP  	 15		31	; 	goto 137
		106	[  0]	ISEQS	  1		11	; if slot1 == "H"
		107	[  0]	JMP  	 15		29	; 	goto 137
		108	[  0]	GGET 	 15		29	; slot15 = _env["math"]
		109	[  0]	TGETS	 15	15	28	; slot15 = math.max
		110	[  0]	KSHORT	 17		1	; slot17 = 1
		111	[  0]	GGET 	 18		29	; slot18 = _env["math"]
		112	[  0]	TGETS	 18	18	21	; slot18 = math.floor
		113	[  0]	DIVVV	 20	10	8	; slot20 = slot10 / slot8
		114	[  0]	ADDVN	 20	20	1	; slot20 = slot20 + 0.5
		115	[  0]	CALL 	 18	0	2	; MULTRES = math.floor(slot19)
		116	[  0]	CALLM	 15	2	1	; slot15 = math.max(slot16, ...MULTRES)
		117	[  0]	MOV  	 11		15	; slot11 = math.max
		118	[  0]	GGET 	 15		29	; slot15 = _env["math"]
		119	[  0]	TGETS	 15	15	21	; slot15 = math.floor
		120	[  0]	MULVV	 17	8	11	; slot17 = slot8 * math.max
		121	[  0]	SUBVV	 17	10	17	; slot17 = slot10 - slot17
		122	[  0]	MULVN	 17	17	1	; slot17 = slot17 * 0.5
		123	[  0]	ADDVN	 17	17	1	; slot17 = slot17 + 0.5
		124	[  0]	CALL 	 15	2	2	; slot15 = math.floor(slot16)
		125	[  0]	GGET 	 16		29	; slot16 = _env["math"]
		126	[  0]	TGETS	 16	16	21	; slot16 = math.floor
		127	[  0]	MULVV	 18	8	12	; slot18 = slot8 * math.max
		128	[  0]	SUBVV	 18	10	18	; slot18 = slot10 - slot18
		129	[  0]	MULVN	 18	18	1	; slot18 = slot18 * 0.5
		130	[  0]	ADDVN	 18	18	1	; slot18 = slot18 + 0.5
		131	[  0]	CALL 	 16	2	2	; slot16 = math.floor(slot17)
		132	[  0]	MULVV	 17	8	12	; slot17 = slot8 * math.max
		133	[  0]	MULVN	 17	17	1	; slot17 = slot17 * 0.5
		134	[  0]	ADDVV	 17	16	17	; slot17 = math.floor + slot17
		135	[  0]	SUBVV	 17	17	15	; slot17 = slot17 - math.floor
		136	[  0]	DIVVV	 13	17	11	; slot13 = slot17 / math.max
		137	[  0]	TGETS	 15	0	10	; slot15 = slot0.bounds
		138	[  0]	ISF  	   		15	; if not <unknown table>.bounds
		139	[  0]	JMP  	 16		7	; 	goto 147
		140	[  0]	TGETS	 15	0	10	; slot15 = slot0.bounds
		141	[  0]	TGETS	 15	15	9	; slot15 = <unknown table>.bounds.idle
		142	[  0]	ISF  	   		15	; if not <unknown table>.bounds.idle
		143	[  0]	JMP  	 16		3	; 	goto 147
		144	[  0]	TGETS	 15	0	10	; slot15 = slot0.bounds
		145	[  0]	TGETS	 15	15	9	; slot15 = <unknown table>.bounds.idle
		146	[  0]	TGETB	 15	15	1	; slot15 = <unknown table>.bounds.idle[1]
		147	[  0]	ISF  	   		6	; if not slot6
		148	[  0]	JMP  	 16		50	; 	goto 199
		149	[  0]	TGETS	 16	5	8	; slot16 = slot5.magnusSpriteOffset
		150	[  0]	IST  	   		16	; if <unknown table>.magnusSpriteOffset
		151	[  0]	JMP  	 17		1	; 	goto 153
		152	[  0]	TNEW 	 16		0	; slot16 = new table( array: 0, dict: 1)
		153	[  0]	ISF  	   		15	; if not slot15
		154	[  0]	JMP  	 17		6	; 	goto 161
		155	[  0]	TGETS	 17	15	7	; slot17 = slot15.x
		156	[  0]	TGETS	 18	15	6	; slot18 = slot15.w
		157	[  0]	MULVN	 18	18	1	; slot18 = <unknown table>.w * 0.5
		158	[  0]	ADDVV	 17	17	18	; slot17 = <unknown table>.x + slot18
		159	[  0]	IST  	   		17	; if slot17
		160	[  0]	JMP  	 18		1	; 	goto 162
		161	[  0]	MOV  	 17		13	; slot17 = slot13
		162	[  0]	GGET 	 18		29	; slot18 = _env["math"]
		163	[  0]	TGETS	 18	18	21	; slot18 = math.floor
		164	[  0]	TGETS	 20	16	7	; slot20 = slot16.x
		165	[  0]	IST  	   		20	; if <unknown table>.x
		166	[  0]	JMP  	 21		1	; 	goto 168
		167	[  0]	KSHORT	 20		65533	; slot20 = 65533
		168	[  0]	MULVV	 20	20	11	; slot20 = slot20 * math.max
		169	[  0]	ADDVN	 20	20	1	; slot20 = slot20 + 0.5
		170	[  0]	CALL 	 18	2	2	; slot18 = math.floor(slot19)
		171	[  0]	DIVVV	 18	18	11	; slot18 = math.floor / math.max
		172	[  0]	SUBVV	 13	17	18	; slot13 = slot17 - slot18
		173	[  0]	ISF  	   		15	; if not slot15
		174	[  0]	JMP  	 17		11	; 	goto 186
		175	[  0]	GGET 	 17		29	; slot17 = _env["math"]
		176	[  0]	TGETS	 17	17	21	; slot17 = math.floor
		177	[  0]	TGETS	 19	15	5	; slot19 = slot15.y
		178	[  0]	TGETS	 20	15	4	; slot20 = slot15.h
		179	[  0]	ADDVV	 19	19	20	; slot19 = <unknown table>.y + <unknown table>.h
		180	[  0]	MULVV	 19	19	11	; slot19 = slot19 * math.max
		181	[  0]	SUBVV	 19	10	19	; slot19 = slot10 - slot19
		182	[  0]	ADDVN	 19	19	1	; slot19 = slot19 + 0.5
		183	[  0]	CALL 	 17	2	2	; slot17 = math.floor(slot18)
		184	[  0]	IST  	   		17	; if math.floor
		185	[  0]	JMP  	 18		1	; 	goto 187
		186	[  0]	KSHORT	 17		0	; slot17 = 0
		187	[  0]	SUBVV	 18	10	17	; slot18 = slot10 - slot17
		188	[  0]	GGET 	 19		29	; slot19 = _env["math"]
		189	[  0]	TGETS	 19	19	21	; slot19 = math.floor
		190	[  0]	TGETS	 21	16	5	; slot21 = slot16.y
		191	[  0]	IST  	   		21	; if <unknown table>.y
		192	[  0]	JMP  	 22		1	; 	goto 194
		193	[  0]	KSHORT	 21		65535	; slot21 = 65535
		194	[  0]	MULVV	 21	21	11	; slot21 = slot21 * math.max
		195	[  0]	ADDVN	 21	21	1	; slot21 = slot21 + 0.5
		196	[  0]	CALL 	 19	2	2	; slot19 = math.floor(<unknown table>.h)
		197	[  0]	SUBVV	 18	18	19	; slot18 = slot18 - math.floor
		198	[  0]	DIVVV	 14	18	11	; slot14 = slot18 / math.max
		199	[  0]	TGETS	 16	0	3	; slot16 = slot0.shadowFromIdleFoot
		200	[  0]	ISF  	   		16	; if not <unknown table>.shadowFromIdleFoot
		201	[  0]	JMP  	 17		7	; 	goto 209
		202	[  0]	UGET 	 16		0	; slot16 = uv0"unknwon"
		203	[  0]	TGETS	 16	16	2	; slot16 = uv0"unknown".footOffsetX
		204	[  0]	MOV  	 18		0	; slot18 = slot0
		205	[  0]	DIVVV	 19	12	11	; slot19 = math.max / math.max
		206	[  0]	KSHORT	 20		1	; slot20 = 1
		207	[  0]	CALL 	 16	2	4	; slot16 = uv0"unknown".footOffsetX(slot17, slot18, slot19)
		208	[  0]	ADDVV	 13	13	16	; slot13 = slot13 + uv0"unknown".footOffsetX
		209	[  0]	ISNES	  1		11	; if slot1 ~= "H"
		210	[  0]	JMP  	 16		5	; 	goto 216
		211	[  0]	TGETS	 16	7	1	; slot16 = slot7.cavalryOffsetXPx
		212	[  0]	IST  	   		16	; if <unknown table>.cavalryOffsetXPx
		213	[  0]	JMP  	 17		3	; 	goto 217
		214	[  0]	KSHORT	 16		0	; slot16 = 0
		215	[  0]	JMP  	 17		1	; 	goto 217
		216	[  0]	KSHORT	 16		0	; slot16 = 0
		217	[  0]	DIVVV	 16	16	11	; slot16 = slot16 / math.max
		218	[  0]	ADDVV	 13	13	16	; slot13 = slot13 + slot16
		219	[  0]	TGETS	 16	7	0	; slot16 = slot7.yOffsetPx
		220	[  0]	IST  	   		16	; if <unknown table>.yOffsetPx
		221	[  0]	JMP  	 17		1	; 	goto 223
		222	[  0]	KSHORT	 16		0	; slot16 = 0
		223	[  0]	DIVVV	 16	16	11	; slot16 = slot16 / math.max
		224	[  0]	ADDVV	 14	14	16	; slot14 = slot14 + slot16
		225	[  0]	MULVV	 16	13	4	; slot16 = slot13 * slot4
		226	[  0]	ADDVV	 16	2	16	; slot16 = slot2 + slot16
		227	[  0]	MULVV	 17	14	4	; slot17 = slot14 * slot4
		228	[  0]	ADDVV	 17	3	17	; slot17 = slot3 + slot17
		229	[  0]	MULVV	 18	4	12	; slot18 = slot4 * math.max
		230	[  0]	DIVVV	 18	18	11	; slot18 = slot18 / math.max
		231	[  0]	RET  	 16		4	; return slot16, slot17, slot18
	106	[  0]	TSETS	  8	7	158	; slot7.classCardShadow = slot8
	107	[  0]	FNEW 	  8		155	; N/A:0-0: 1 args, 0 upvalues, 46 slots
		
		;;;; constant tables ;;;;
		ktable#12 = [
			]
		
		
		ktable#19 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KPRI 	  1		0	; slot1 = nil
		  4	[  0]	UCLO 	  0		377	; nil uvs >= r0; goto 382
		  5	[  0]	TGETS	  1	0	26	; slot1 = slot0._idleFootScan
		  6	[  0]	ISEQP	  1		0	; if <unknown table>._idleFootScan == nil
		  7	[  0]	JMP  	  1		5	; 	goto 13
		  8	[  0]	TGETS	  1	0	26	; slot1 = slot0._idleFootScan
		  9	[  0]	IST  	   		1	; if <unknown table>._idleFootScan
		 10	[  0]	JMP  	  2		1	; 	goto 12
		 11	[  0]	KPRI 	  1		0	; slot1 = nil
		 12	[  0]	UCLO 	  0		370	; nil uvs >= r0; goto 383
		 13	[  0]	TGETS	  1	0	25	; slot1 = slot0.quads
		 14	[  0]	ISF  	   		1	; if not <unknown table>.quads
		 15	[  0]	JMP  	  2		7	; 	goto 23
		 16	[  0]	TGETS	  1	0	25	; slot1 = slot0.quads
		 17	[  0]	TGETS	  1	1	24	; slot1 = <unknown table>.quads.idle
		 18	[  0]	ISF  	   		1	; if not <unknown table>.quads.idle
		 19	[  0]	JMP  	  2		3	; 	goto 23
		 20	[  0]	TGETS	  1	0	25	; slot1 = slot0.quads
		 21	[  0]	TGETS	  1	1	24	; slot1 = <unknown table>.quads.idle
		 22	[  0]	TGETB	  1	1	1	; slot1 = <unknown table>.quads.idle[1]
		 23	[  0]	ISF  	   		1	; if not slot1
		 24	[  0]	JMP  	  2		3	; 	goto 28
		 25	[  0]	TGETS	  2	0	23	; slot2 = slot0.imageData
		 26	[  0]	IST  	   		2	; if <unknown table>.imageData
		 27	[  0]	JMP  	  2		2	; 	goto 30
		 28	[  0]	KPRI 	  2		0	; slot2 = nil
		 29	[  0]	UCLO 	  0		354	; nil uvs >= r0; goto 384
		 30	[  0]	KPRI 	  2		1	; slot2 = false
		 31	[  0]	TSETS	  2	0	26	; slot0._idleFootScan = slot2
		 32	[  0]	TGETS	  2	0	23	; slot2 = slot0.imageData
		 33	[  0]	MOV  	  5		1	; slot5 = slot1
		 34	[  0]	TGETS	  3	1	22	; slot3 = slot1.getViewport
		 35	[  0]	CALL 	  3	5	2	; slot3, slot4, slot5, slot6 = <unknown table>.getViewport(slot4)
		 36	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
		 37	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
		 38	[  0]	KNIL 	  9		10	; slot9, slot10 = nil
		 39	[  0]	MOV  	 11		5	; slot11 = slot5
		 40	[  0]	KSHORT	 12		65535	; slot12 = 65535
		 41	[  0]	KSHORT	 13		0	; slot13 = 0
		 42	[  0]	SUBVN	 14	6	0	; slot14 = slot6 - 1
		 43	[  0]	KSHORT	 15		1	; slot15 = 1
		 44	[  0]	FORI 	 13		71	; for slot16 = slot13,slot14,slot15 else goto 116
		 45	[  0]	TNEW 	 17		0	; slot17 = new table( array: 0, dict: 1)
		 46	[  0]	KSHORT	 18		0	; slot18 = 0
		 47	[  0]	ISGE 	 18		5	; if slot18 >= slot5
		 48	[  0]	JMP  	 19		57	; 	goto 106
		 49	[  0]	LOOP 	 19		56	; Loop start, exit goto 106
		 50	[  0]	MOV  	 21		2	; slot21 = <unknown table>.imageData
		 51	[  0]	TGETS	 19	2	21	; slot19 = <unknown table>.imageData.getPixel
		 52	[  0]	ADDVV	 22	3	18	; slot22 = <unknown table>.getViewport + slot18
		 53	[  0]	ADDVV	 23	4	16	; slot23 = slot4 + slot16
		 54	[  0]	CALL 	 19	5	4	; slot19, slot20, slot21, slot22 = <unknown table>.imageData.getPixel(slot20, <unknown table>.imageData, slot22)
		 55	[  0]	KSHORT	 23		0	; slot23 = 0
		 56	[  0]	ISGE 	 23		22	; if slot23 >= slot22
		 57	[  0]	JMP  	 23		46	; 	goto 104
		 58	[  0]	MOV  	 23		18	; slot23 = slot18
		 59	[  0]	ADDVN	 24	18	0	; slot24 = slot18 + 1
		 60	[  0]	ISGE 	 24		5	; if slot24 >= slot5
		 61	[  0]	JMP  	 24		15	; 	goto 77
		 62	[  0]	GGET 	 24		20	; slot24 = _env["select"]
		 63	[  0]	KSHORT	 26		4	; slot26 = 4
		 64	[  0]	MOV  	 29		2	; slot29 = <unknown table>.imageData
		 65	[  0]	TGETS	 27	2	21	; slot27 = <unknown table>.imageData.getPixel
		 66	[  0]	ADDVV	 30	3	18	; slot30 = <unknown table>.getViewport + slot18
		 67	[  0]	ADDVN	 30	30	0	; slot30 = slot30 + 1
		 68	[  0]	ADDVV	 31	4	16	; slot31 = slot4 + slot16
		 69	[  0]	CALL 	 27	0	4	; MULTRES = <unknown table>.imageData.getPixel(slot28, <unknown table>.imageData, slot30)
		 70	[  0]	CALLM	 24	2	1	; slot24 = select(slot25, ...MULTRES)
		 71	[  0]	KSHORT	 25		0	; slot25 = 0
		 72	[  0]	ISGE 	 25		24	; if slot25 >= select
		 73	[  0]	JMP  	 24		3	; 	goto 77
		 74	[  0]	LOOP 	 24		2	; Loop start, exit goto 77
		 75	[  0]	ADDVN	 18	18	0	; slot18 = slot18 + 1
		 76	[  0]	JMP  	 24		-18	; 	goto 59
		 77	[  0]	LEN  	 24		17	; slot24 = #slot17
		 78	[  0]	ADDVN	 24	24	0	; slot24 = slot24 + 1
		 79	[  0]	TDUP 	 25		19	; slot25 = copy table#k19
		 80	[  0]	TSETS	 23	25	18	; slot25.l = slot23
		 81	[  0]	TSETS	 18	25	17	; slot25.r = slot18
		 82	[  0]	TSETV	 25	17	24	; slot17[slot24] = slot25
		 83	[  0]	MOV  	 24		23	; slot24 = slot23
		 84	[  0]	MOV  	 25		18	; slot25 = slot18
		 85	[  0]	KSHORT	 26		1	; slot26 = 1
		 86	[  0]	FORI 	 24		5	; for <unknown table>.imageData.getPixel = slot24,slot25,slot26 else goto 92
		 87	[  0]	MULVV	 28	16	5	; slot28 = slot16 * slot5
		 88	[  0]	ADDVV	 28	28	27	; slot28 = slot28 + <unknown table>.imageData.getPixel
		 89	[  0]	KPRI 	 29		2	; slot29 = true
		 90	[  0]	TSETV	 29	7	28	; slot7[slot28] = slot29
		 91	[  0]	FORL 	 24		-5	; <unknown table>.imageData.getPixel = <unknown table>.imageData.getPixel + slot26; if cmp(<unknown table>.imageData.getPixel, sign slot26,  slot25) goto 87
		 92	[  0]	GGET 	 24		16	; slot24 = _env["math"]
		 93	[  0]	TGETS	 24	24	15	; slot24 = math.min
		 94	[  0]	MOV  	 26		11	; slot26 = slot11
		 95	[  0]	MOV  	 27		23	; slot27 = slot23
		 96	[  0]	CALL 	 24	2	3	; slot24 = math.min(slot25, slot26)
		 97	[  0]	GGET 	 25		16	; slot25 = _env["math"]
		 98	[  0]	TGETS	 25	25	14	; slot25 = math.max
		 99	[  0]	MOV  	 27		12	; slot27 = slot12
		100	[  0]	MOV  	 28		18	; slot28 = slot18
		101	[  0]	CALL 	 25	2	3	; slot25 = math.max(slot26, slot27)
		102	[  0]	MOV  	 12		25	; slot12 = math.max
		103	[  0]	MOV  	 11		24	; slot11 = math.min
		104	[  0]	ADDVN	 18	18	0	; slot18 = slot18 + 1
		105	[  0]	JMP  	 19		-59	; 	goto 47
		106	[  0]	TSETV	 17	8	16	; slot8[slot16] = slot17
		107	[  0]	LEN  	 19		17	; slot19 = #slot17
		108	[  0]	KSHORT	 20		0	; slot20 = 0
		109	[  0]	ISGE 	 20		19	; if slot20 >= slot19
		110	[  0]	JMP  	 19		4	; 	goto 115
		111	[  0]	IST  	   		9	; if slot9
		112	[  0]	JMP  	 19		1	; 	goto 114
		113	[  0]	MOV  	  9		16	; slot9 = slot16
		114	[  0]	MOV  	 10		16	; slot10 = slot16
		115	[  0]	FORL 	 13		-71	; slot16 = slot16 + slot15; if cmp(slot16, sign slot15,  slot14) goto 45
		116	[  0]	IST  	   		10	; if slot10
		117	[  0]	JMP  	 13		4	; 	goto 122
		118	[  0]	KPRI 	 13		1	; slot13 = false
		119	[  0]	TSETS	 13	0	13	; slot0._idleFootCenterX = slot13
		120	[  0]	KPRI 	 13		0	; slot13 = nil
		121	[  0]	UCLO 	  0		263	; nil uvs >= r0; goto 385
		122	[  0]	TGETV	 13	8	10	; slot13 = slot8[slot10]
		123	[  0]	TDUP 	 14		12	; slot14 = copy table#k12
		124	[  0]	TGETB	 15	13	1	; slot15 = slot13[1]
		125	[  0]	TGETS	 15	15	18	; slot15 = slot15.l
		126	[  0]	LEN  	 16		13	; slot16 = #slot13
		127	[  0]	TGETV	 16	13	16	; slot16 = slot13[slot16]
		128	[  0]	TGETS	 16	16	17	; slot16 = slot16.r
		129	[  0]	ADDVV	 15	15	16	; slot15 = <unknown table>.l + <unknown table>.r
		130	[  0]	ADDVN	 15	15	0	; slot15 = slot15 + 1
		131	[  0]	MULVN	 15	15	1	; slot15 = slot15 * 0.5
		132	[  0]	TSETS	 15	14	11	; slot14.foot = slot15
		133	[  0]	TSETS	 10	14	10	; slot14.row = slot10
		134	[  0]	TGETB	 15	13	1	; slot15 = slot13[1]
		135	[  0]	TGETS	 15	15	18	; slot15 = slot15.l
		136	[  0]	LEN  	 16		13	; slot16 = #slot13
		137	[  0]	TGETV	 16	13	16	; slot16 = slot13[slot16]
		138	[  0]	TGETS	 16	16	17	; slot16 = slot16.r
		139	[  0]	ADDVV	 15	15	16	; slot15 = <unknown table>.l + <unknown table>.r
		140	[  0]	ADDVN	 15	15	0	; slot15 = slot15 + 1
		141	[  0]	MULVN	 15	15	1	; slot15 = slot15 * 0.5
		142	[  0]	TSETS	 15	14	9	; slot14.lowest = slot15
		143	[  0]	TNEW 	 15		0	; slot15 = new table( array: 0, dict: 1)
		144	[  0]	KSHORT	 16		0	; slot16 = 0
		145	[  0]	FNEW 	 17		8	; N/A:0-0: 2 args, 3 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	KSHORT	  2		0	; slot2 = 0
			  2	[  0]	ISLT 	  0		2	; if slot0 < slot2
			  3	[  0]	JMP  	  2		9	; 	goto 13
			  4	[  0]	KSHORT	  2		0	; slot2 = 0
			  5	[  0]	ISLT 	  1		2	; if slot1 < slot2
			  6	[  0]	JMP  	  2		6	; 	goto 13
			  7	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  8	[  0]	ISLE 	  2		0	; if uv0"unknown" <= slot0
			  9	[  0]	JMP  	  2		3	; 	goto 13
			 10	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			 11	[  0]	ISGT 	  2		1	; if uv1"unknown" > slot1
			 12	[  0]	JMP  	  2		2	; 	goto 15
			 13	[  0]	KSHORT	  2		0	; slot2 = 0
			 14	[  0]	RET1 	  2		2	; return slot2
			 15	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
			 16	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			 17	[  0]	MULVV	  3	1	3	; slot3 = slot1 * uv0"unknown"
			 18	[  0]	ADDVV	  3	3	0	; slot3 = slot3 + slot0
			 19	[  0]	TGETV	  2	2	3	; slot2 = uv2"unknown"[slot3]
			 20	[  0]	RET1 	  2		2	; return slot2
		146	[  0]	KSHORT	 18		0	; slot18 = 0
		147	[  0]	SUBVN	 19	6	0	; slot19 = slot6 - 1
		148	[  0]	KSHORT	 20		1	; slot20 = 1
		149	[  0]	FORI 	 18		37	; for <unknown table>.imageData = slot18,slot19,slot20 else goto 187
		150	[  0]	KSHORT	 22		0	; slot22 = 0
		151	[  0]	SUBVN	 23	5	0	; slot23 = slot5 - 1
		152	[  0]	KSHORT	 24		1	; slot24 = 1
		153	[  0]	FORI 	 22		32	; for slot25 = slot22,slot23,slot24 else goto 186
		154	[  0]	MULVV	 26	21	5	; slot26 = slot21 * slot5
		155	[  0]	ADDVV	 26	26	25	; slot26 = slot26 + slot25
		156	[  0]	MULVV	 27	21	5	; slot27 = slot21 * slot5
		157	[  0]	ADDVV	 27	27	25	; slot27 = slot27 + slot25
		158	[  0]	TGETV	 27	7	27	; slot27 = slot7[slot27]
		159	[  0]	ISF  	   		27	; if not slot27
		160	[  0]	JMP  	 28		22	; 	goto 183
		161	[  0]	GGET 	 27		16	; slot27 = _env["math"]
		162	[  0]	TGETS	 27	27	15	; slot27 = math.min
		163	[  0]	MOV  	 29		17	; slot29 = slot17
		164	[  0]	SUBVN	 31	25	0	; slot31 = slot25 - 1
		165	[  0]	MOV  	 32		21	; slot32 = slot21
		166	[  0]	CALL 	 29	2	3	; slot29 = slot29(slot30, slot31)
		167	[  0]	MOV  	 30		17	; slot30 = slot17
		168	[  0]	SUBVN	 32	25	0	; slot32 = slot25 - 1
		169	[  0]	SUBVN	 33	21	0	; slot33 = slot21 - 1
		170	[  0]	CALL 	 30	2	3	; slot30 = slot30(slot31, slot32)
		171	[  0]	MOV  	 31		17	; slot31 = slot17
		172	[  0]	MOV  	 33		25	; slot33 = slot25
		173	[  0]	SUBVN	 34	21	0	; slot34 = slot21 - 1
		174	[  0]	CALL 	 31	2	3	; slot31 = slot31(slot32, slot33)
		175	[  0]	MOV  	 32		17	; slot32 = slot17
		176	[  0]	ADDVN	 34	25	0	; slot34 = slot25 + 1
		177	[  0]	SUBVN	 35	21	0	; slot35 = slot21 - 1
		178	[  0]	CALL 	 32	0	3	; MULTRES = slot32(slot33, slot34)
		179	[  0]	CALLM	 27	2	3	; slot27 = math.min(slot28, slot29, slot30, ...MULTRES)
		180	[  0]	ADDVN	 27	27	0	; slot27 = math.min + 1
		181	[  0]	IST  	   		27	; if slot27
		182	[  0]	JMP  	 28		1	; 	goto 184
		183	[  0]	KSHORT	 27		0	; slot27 = 0
		184	[  0]	TSETV	 27	15	26	; slot15[slot26] = slot27
		185	[  0]	FORL 	 22		-32	; slot25 = slot25 + slot24; if cmp(slot25, sign slot24,  slot23) goto 154
		186	[  0]	FORL 	 18		-37	; slot21 = slot21 + slot20; if cmp(slot21, sign slot20,  slot19) goto 150
		187	[  0]	SUBVN	 18	6	0	; slot18 = slot6 - 1
		188	[  0]	KSHORT	 19		0	; slot19 = 0
		189	[  0]	KSHORT	 20		65535	; slot20 = 65535
		190	[  0]	FORI 	 18		43	; for slot21 = slot18,slot19,slot20 else goto 234
		191	[  0]	SUBVN	 22	5	0	; slot22 = slot5 - 1
		192	[  0]	KSHORT	 23		0	; slot23 = 0
		193	[  0]	KSHORT	 24		65535	; slot24 = 65535
		194	[  0]	FORI 	 22		38	; for slot25 = slot22,slot23,slot24 else goto 233
		195	[  0]	MULVV	 26	21	5	; slot26 = slot21 * slot5
		196	[  0]	ADDVV	 26	26	25	; slot26 = slot26 + slot25
		197	[  0]	TGETV	 27	15	26	; slot27 = slot15[slot26]
		198	[  0]	KSHORT	 28		0	; slot28 = 0
		199	[  0]	ISGE 	 28		27	; if slot28 >= slot27
		200	[  0]	JMP  	 27		31	; 	goto 232
		201	[  0]	GGET 	 27		16	; slot27 = _env["math"]
		202	[  0]	TGETS	 27	27	15	; slot27 = math.min
		203	[  0]	TGETV	 29	15	26	; slot29 = slot15[slot26]
		204	[  0]	MOV  	 30		17	; slot30 = slot17
		205	[  0]	ADDVN	 32	25	0	; slot32 = slot25 + 1
		206	[  0]	MOV  	 33		21	; slot33 = slot21
		207	[  0]	CALL 	 30	2	3	; slot30 = slot30(slot31, slot32)
		208	[  0]	ADDVN	 30	30	0	; slot30 = slot30 + 1
		209	[  0]	MOV  	 31		17	; slot31 = slot17
		210	[  0]	ADDVN	 33	25	0	; slot33 = slot25 + 1
		211	[  0]	ADDVN	 34	21	0	; slot34 = slot21 + 1
		212	[  0]	CALL 	 31	2	3	; slot31 = slot31(slot32, slot33)
		213	[  0]	ADDVN	 31	31	0	; slot31 = slot31 + 1
		214	[  0]	MOV  	 32		17	; slot32 = slot17
		215	[  0]	MOV  	 34		25	; slot34 = slot25
		216	[  0]	ADDVN	 35	21	0	; slot35 = slot21 + 1
		217	[  0]	CALL 	 32	2	3	; slot32 = slot32(slot33, slot34)
		218	[  0]	ADDVN	 32	32	0	; slot32 = slot32 + 1
		219	[  0]	MOV  	 33		17	; slot33 = slot17
		220	[  0]	SUBVN	 35	25	0	; slot35 = slot25 - 1
		221	[  0]	ADDVN	 36	21	0	; slot36 = slot21 + 1
		222	[  0]	CALL 	 33	2	3	; slot33 = slot33(slot34, slot35)
		223	[  0]	ADDVN	 33	33	0	; slot33 = slot33 + 1
		224	[  0]	CALL 	 27	2	6	; slot27 = math.min(slot28, slot29, slot30, slot31, slot32)
		225	[  0]	TSETV	 27	15	26	; slot15[slot26] = math.min
		226	[  0]	GGET 	 27		16	; slot27 = _env["math"]
		227	[  0]	TGETS	 27	27	14	; slot27 = math.max
		228	[  0]	MOV  	 29		16	; slot29 = slot16
		229	[  0]	TGETV	 30	15	26	; slot30 = slot15[slot26]
		230	[  0]	CALL 	 27	2	3	; slot27 = math.max(slot28, slot29)
		231	[  0]	MOV  	 16		27	; slot16 = math.max
		232	[  0]	FORL 	 22		-38	; slot25 = slot25 + slot24; if cmp(slot25, sign slot24,  slot23) goto 195
		233	[  0]	FORL 	 18		-43	; slot21 = slot21 + slot20; if cmp(slot21, sign slot20,  slot19) goto 191
		234	[  0]	GGET 	 18		16	; slot18 = _env["math"]
		235	[  0]	TGETS	 18	18	14	; slot18 = math.max
		236	[  0]	KSHORT	 20		2	; slot20 = 2
		237	[  0]	GGET 	 21		16	; slot21 = _env["math"]
		238	[  0]	TGETS	 21	21	7	; slot21 = math.ceil
		239	[  0]	MULVN	 23	16	1	; slot23 = math.max * 0.5
		240	[  0]	CALL 	 21	0	2	; MULTRES = math.ceil(slot22)
		241	[  0]	CALLM	 18	2	1	; slot18 = math.max(slot19, ...MULTRES)
		242	[  0]	TNEW 	 19		0	; slot19 = new table( array: 0, dict: 1)
		243	[  0]	GGET 	 20		6	; slot20 = _env["pairs"]
		244	[  0]	MOV  	 22		15	; slot22 = slot15
		245	[  0]	CALL 	 20	4	2	; slot20, slot21, slot22 = pairs(math.ceil)
		246	[  0]	ISNEXT	 23		6	; Verify ITERN at 253; goto 253
		247	[  0]	ISGT 	 18		24	; if math.max > slot24
		248	[  0]	JMP  	 25		4	; 	goto 253
		249	[  0]	LEN  	 25		19	; slot25 = #slot19
		250	[  0]	ADDVN	 25	25	0	; slot25 = slot25 + 1
		251	[  0]	MODVV	 26	23	5	; slot26 = slot23 % slot5
		252	[  0]	TSETV	 26	19	25	; slot19[slot25] = slot26
		253	[  0]	ITERN	 23	3	3	; slot23, slot24, slot25 = pairs, math.ceil, slot22; slot23, slot24 = pairs(math.ceil, slot22)
		254	[  0]	ITERL	 23		-8	; slot22 = slot23; if slot23 != nil goto 247
		255	[  0]	LEN  	 20		19	; slot20 = #slot19
		256	[  0]	KSHORT	 21		0	; slot21 = 0
		257	[  0]	ISGE 	 21		20	; if slot21 >= slot20
		258	[  0]	JMP  	 20		118	; 	goto 377
		259	[  0]	GGET 	 20		5	; slot20 = _env["table"]
		260	[  0]	TGETS	 20	20	4	; slot20 = table.sort
		261	[  0]	MOV  	 22		19	; slot22 = slot19
		262	[  0]	CALL 	 20	1	2	;  = table.sort(slot21)
		263	[  0]	GGET 	 20		16	; slot20 = _env["math"]
		264	[  0]	TGETS	 20	20	3	; slot20 = math.floor
		265	[  0]	LEN  	 22		19	; slot22 = #slot19
		266	[  0]	ADDVN	 22	22	0	; slot22 = slot22 + 1
		267	[  0]	DIVVN	 22	22	2	; slot22 = slot22 / 2
		268	[  0]	CALL 	 20	2	2	; slot20 = math.floor(slot21)
		269	[  0]	TGETV	 20	19	20	; slot20 = slot19[math.floor]
		270	[  0]	ADDVN	 20	20	1	; slot20 = slot20 + 0.5
		271	[  0]	TSETS	 20	14	2	; slot14.mid = slot20
		272	[  0]	GGET 	 21		16	; slot21 = _env["math"]
		273	[  0]	TGETS	 21	21	14	; slot21 = math.max
		274	[  0]	KSHORT	 23		3	; slot23 = 3
		275	[  0]	SUBVV	 24	12	11	; slot24 = math.max - math.min
		276	[  0]	ADDVN	 24	24	0	; slot24 = slot24 + 1
		277	[  0]	MULVN	 24	24	3	; slot24 = slot24 * 0.2
		278	[  0]	CALL 	 21	2	3	; slot21 = math.max(slot22, slot23)
		279	[  0]	FNEW 	 22		1	; N/A:0-0: 1 args, 1 upvalues, 7 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  1		3	; slot1 = _env["math"]
			  2	[  0]	TGETS	  1	1	2	; slot1 = math.max
			  3	[  0]	KSHORT	  3		0	; slot3 = 0
			  4	[  0]	TGETS	  4	0	1	; slot4 = slot0.l
			  5	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
			  6	[  0]	SUBVV	  4	4	5	; slot4 = <unknown table>.l - uv0"unknown"
			  7	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
			  8	[  0]	TGETS	  6	0	0	; slot6 = slot0.r
			  9	[  0]	ADDVN	  6	6	0	; slot6 = <unknown table>.r + 1
			 10	[  0]	SUBVV	  5	5	6	; slot5 = uv0"unknown" - slot6
			 11	[  0]	CALLT	  1		4	; return math.max(slot2, slot3, slot4)
		280	[  0]	TNEW 	 23		0	; slot23 = new table( array: 0, dict: 1)
		281	[  0]	MOV  	 24		10	; slot24 = slot10
		282	[  0]	GGET 	 25		16	; slot25 = _env["math"]
		283	[  0]	TGETS	 25	25	3	; slot25 = math.floor
		284	[  0]	SUBVV	 27	10	9	; slot27 = slot10 - slot9
		285	[  0]	ADDVN	 27	27	0	; slot27 = slot27 + 1
		286	[  0]	MULVN	 27	27	1	; slot27 = slot27 * 0.5
		287	[  0]	CALL 	 25	2	2	; slot25 = math.floor(slot26)
		288	[  0]	SUBVV	 25	10	25	; slot25 = slot10 - math.floor
		289	[  0]	KSHORT	 26		65535	; slot26 = 65535
		290	[  0]	FORI 	 24		85	; for slot27 = slot24,slot25,slot26 else goto 376
		291	[  0]	TNEW 	 28		0	; slot28 = new table( array: 0, dict: 1)
		292	[  0]	TNEW 	 29		0	; slot29 = new table( array: 0, dict: 1)
		293	[  0]	KPRI 	 30		1	; slot30 = false
		294	[  0]	KNIL 	 31		32	; slot31, slot32 = nil
		295	[  0]	GGET 	 33		0	; slot33 = _env["ipairs"]
		296	[  0]	TGETV	 35	8	27	; slot35 = slot8[slot27]
		297	[  0]	CALL 	 33	4	2	; slot33, slot34, slot35 = ipairs(slot34)
		298	[  0]	JMP  	 36		49	; 	goto 348
		299	[  0]	KPRI 	 38		1	; slot38 = false
		300	[  0]	GGET 	 39		0	; slot39 = _env["ipairs"]
		301	[  0]	MOV  	 41		23	; slot41 = slot23
		302	[  0]	CALL 	 39	4	2	; slot39, slot40, slot41 = ipairs(slot40)
		303	[  0]	JMP  	 42		11	; 	goto 315
		304	[  0]	TGETS	 44	37	17	; slot44 = slot37.r
		305	[  0]	TGETS	 45	43	18	; slot45 = slot43.l
		306	[  0]	SUBVN	 45	45	0	; slot45 = <unknown table>.l - 1
		307	[  0]	ISGT 	 45		44	; if slot45 > <unknown table>.r
		308	[  0]	JMP  	 44		6	; 	goto 315
		309	[  0]	TGETS	 44	37	18	; slot44 = slot37.l
		310	[  0]	TGETS	 45	43	17	; slot45 = slot43.r
		311	[  0]	ADDVN	 45	45	0	; slot45 = <unknown table>.r + 1
		312	[  0]	ISGT 	 44		45	; if <unknown table>.l > slot45
		313	[  0]	JMP  	 44		1	; 	goto 315
		314	[  0]	KPRI 	 38		2	; slot38 = true
		315	[  0]	ITERC	 42	3	3	; slot42, slot43, slot44 = ipairs, slot40, slot41; slot42, slot43 = ipairs(slot40, slot41)
		316	[  0]	ITERL	 42		-13	; slot41 = slot42; if slot42 != nil goto 304
		317	[  0]	ISF  	   		38	; if not slot38
		318	[  0]	JMP  	 39		4	; 	goto 323
		319	[  0]	LEN  	 39		29	; slot39 = #slot29
		320	[  0]	ADDVN	 39	39	0	; slot39 = slot39 + 1
		321	[  0]	TSETV	 37	29	39	; slot29[slot39] = slot37
		322	[  0]	JMP  	 39		25	; 	goto 348
		323	[  0]	LEN  	 39		28	; slot39 = #slot28
		324	[  0]	ADDVN	 39	39	0	; slot39 = slot39 + 1
		325	[  0]	TSETV	 37	28	39	; slot28[slot39] = slot37
		326	[  0]	MOV  	 39		22	; slot39 = slot22
		327	[  0]	MOV  	 41		37	; slot41 = slot37
		328	[  0]	CALL 	 39	2	2	; slot39 = slot39(slot40)
		329	[  0]	ISGT 	 39		21	; if slot39 > math.max
		330	[  0]	JMP  	 39		1	; 	goto 332
		331	[  0]	KPRI 	 30		2	; slot30 = true
		332	[  0]	GGET 	 39		16	; slot39 = _env["math"]
		333	[  0]	TGETS	 39	39	15	; slot39 = math.min
		334	[  0]	ISTC 	 41		31	; slot41 = slot31; if slot31
		335	[  0]	JMP  	 41		1	; 	goto 337
		336	[  0]	TGETS	 41	37	18	; slot41 = slot37.l
		337	[  0]	TGETS	 42	37	18	; slot42 = slot37.l
		338	[  0]	CALL 	 39	2	3	; slot39 = math.min(slot40, <unknown table>.l)
		339	[  0]	GGET 	 40		16	; slot40 = _env["math"]
		340	[  0]	TGETS	 40	40	14	; slot40 = math.max
		341	[  0]	ISTC 	 42		32	; slot42 = slot32; if slot32
		342	[  0]	JMP  	 42		1	; 	goto 344
		343	[  0]	TGETS	 42	37	17	; slot42 = slot37.r
		344	[  0]	TGETS	 43	37	17	; slot43 = slot37.r
		345	[  0]	CALL 	 40	2	3	; slot40 = math.max(<unknown table>.l, <unknown table>.r)
		346	[  0]	MOV  	 32		40	; slot32 = math.max
		347	[  0]	MOV  	 31		39	; slot31 = math.min
		348	[  0]	ITERC	 36	3	3	; slot36, slot37, slot38 = ipairs, slot34, slot35; slot36, slot37 = ipairs(slot34, slot35)
		349	[  0]	ITERL	 36		-51	; slot35 = slot36; if slot36 != nil goto 299
		350	[  0]	IST  	   		30	; if slot30
		351	[  0]	JMP  	 33		7	; 	goto 359
		352	[  0]	ISF  	   		31	; if not math.min
		353	[  0]	JMP  	 33		11	; 	goto 365
		354	[  0]	ISGT 	 31		20	; if math.min > slot20
		355	[  0]	JMP  	 33		9	; 	goto 365
		356	[  0]	ADDVN	 33	32	0	; slot33 = math.max + 1
		357	[  0]	ISGT 	 20		33	; if slot20 > slot33
		358	[  0]	JMP  	 33		6	; 	goto 365
		359	[  0]	ADDVV	 33	31	32	; slot33 = math.min + math.max
		360	[  0]	ADDVN	 33	33	0	; slot33 = slot33 + 1
		361	[  0]	MULVN	 33	33	1	; slot33 = slot33 * 0.5
		362	[  0]	TSETS	 27	14	10	; slot14.row = slot27
		363	[  0]	TSETS	 33	14	11	; slot14.foot = slot33
		364	[  0]	JMP  	 24		11	; 	goto 376
		365	[  0]	GGET 	 33		0	; slot33 = _env["ipairs"]
		366	[  0]	MOV  	 35		28	; slot35 = slot28
		367	[  0]	CALL 	 33	4	2	; slot33, slot34, slot35 = ipairs(slot34)
		368	[  0]	JMP  	 36		3	; 	goto 372
		369	[  0]	LEN  	 38		29	; slot38 = #slot29
		370	[  0]	ADDVN	 38	38	0	; slot38 = slot38 + 1
		371	[  0]	TSETV	 37	29	38	; slot29[slot38] = slot37
		372	[  0]	ITERC	 36	3	3	; slot36, slot37, slot38 = ipairs, slot34, slot35; slot36, slot37 = ipairs(slot34, slot35)
		373	[  0]	ITERL	 36		-5	; slot35 = slot36; if slot36 != nil goto 369
		374	[  0]	MOV  	 23		29	; slot23 = slot29
		375	[  0]	FORL 	 24		-85	; slot27 = slot27 + slot26; if cmp(slot27, sign slot26,  slot25) goto 291
		376	[  0]	UCLO 	 20		0	; nil uvs >= r20; goto 377
		377	[  0]	TSETS	 14	0	26	; slot0._idleFootScan = slot14
		378	[  0]	TGETS	 20	14	11	; slot20 = slot14.foot
		379	[  0]	TSETS	 20	0	13	; slot0._idleFootCenterX = <unknown table>.foot
		380	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 381
		381	[  0]	RET1 	 14		2	; return slot14
		382	[  0]	RET1 	  1		2	; return slot1
		383	[  0]	RET1 	  1		2	; return slot1
		384	[  0]	RET1 	  2		2	; return <unknown table>.imageData
		385	[  0]	RET1 	 13		2	; return slot13
	108	[  0]	TSETS	  8	7	156	; slot7.idleFootScan = slot8
	109	[  0]	FNEW 	  8		153	; N/A:0-0: 1 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KPRI 	  1		0	; slot1 = nil
		  4	[  0]	RET1 	  1		2	; return slot1
		  5	[  0]	TGETS	  1	0	2	; slot1 = slot0.reviewedFootX
		  6	[  0]	ISF  	   		1	; if not <unknown table>.reviewedFootX
		  7	[  0]	JMP  	  2		2	; 	goto 10
		  8	[  0]	TGETS	  1	0	2	; slot1 = slot0.reviewedFootX
		  9	[  0]	RET1 	  1		2	; return <unknown table>.reviewedFootX
		 10	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 11	[  0]	TGETS	  1	1	1	; slot1 = uv0"unknown".idleFootScan
		 12	[  0]	MOV  	  3		0	; slot3 = slot0
		 13	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown".idleFootScan(slot2)
		 14	[  0]	ISF  	   		1	; if not slot1
		 15	[  0]	JMP  	  2		3	; 	goto 19
		 16	[  0]	TGETS	  2	1	0	; slot2 = slot1.foot
		 17	[  0]	IST  	   		2	; if <unknown table>.foot
		 18	[  0]	JMP  	  3		1	; 	goto 20
		 19	[  0]	KPRI 	  2		0	; slot2 = nil
		 20	[  0]	RET1 	  2		2	; return slot2
	110	[  0]	TSETS	  8	7	154	; slot7.idleFootX = slot8
	111	[  0]	FNEW 	  8		151	; N/A:0-0: 3 args, 1 upvalues, 18 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  3		2	; 	goto 5
		  3	[  0]	IST  	   		1	; if slot1
		  4	[  0]	JMP  	  3		2	; 	goto 7
		  5	[  0]	KPRI 	  3		0	; slot3 = nil
		  6	[  0]	RET1 	  3		2	; return slot3
		  7	[  0]	TGETS	  3	1	20	; slot3 = slot1.side
		  8	[  0]	ISEQS	  3		19	; if <unknown table>.side == "ally"
		  9	[  0]	JMP  	  3		2	; 	goto 12
		 10	[  0]	KPRI 	  3		1	; slot3 = false
		 11	[  0]	JMP  	  4		1	; 	goto 13
		 12	[  0]	KPRI 	  3		2	; slot3 = true
		 13	[  0]	KPRI 	  4		0	; slot4 = nil
		 14	[  0]	ISF  	   		3	; if not slot3
		 15	[  0]	JMP  	  5		9	; 	goto 25
		 16	[  0]	TGETS	  5	0	18	; slot5 = slot0.getUnitAssetForAlly
		 17	[  0]	ISFC 	  4		5	; slot4 = <unknown table>.getUnitAssetForAlly; if not <unknown table>.getUnitAssetForAlly
		 18	[  0]	JMP  	  6		5	; 	goto 24
		 19	[  0]	MOV  	  7		0	; slot7 = slot0
		 20	[  0]	TGETS	  5	0	18	; slot5 = slot0.getUnitAssetForAlly
		 21	[  0]	MOV  	  8		1	; slot8 = slot1
		 22	[  0]	CALL 	  5	2	3	; slot5 = <unknown table>.getUnitAssetForAlly(slot6, slot7)
		 23	[  0]	MOV  	  4		5	; slot4 = <unknown table>.getUnitAssetForAlly
		 24	[  0]	JMP  	  5		8	; 	goto 33
		 25	[  0]	TGETS	  5	0	17	; slot5 = slot0.getUnitAssetForEnemy
		 26	[  0]	ISFC 	  4		5	; slot4 = <unknown table>.getUnitAssetForEnemy; if not <unknown table>.getUnitAssetForEnemy
		 27	[  0]	JMP  	  6		5	; 	goto 33
		 28	[  0]	MOV  	  7		0	; slot7 = slot0
		 29	[  0]	TGETS	  5	0	17	; slot5 = slot0.getUnitAssetForEnemy
		 30	[  0]	MOV  	  8		1	; slot8 = slot1
		 31	[  0]	CALL 	  5	2	3	; slot5 = <unknown table>.getUnitAssetForEnemy(slot6, slot7)
		 32	[  0]	MOV  	  4		5	; slot4 = <unknown table>.getUnitAssetForEnemy
		 33	[  0]	ISFC 	  5		4	; slot5 = <unknown table>.getUnitAssetForEnemy; if not <unknown table>.getUnitAssetForEnemy
		 34	[  0]	JMP  	  5		4	; 	goto 39
		 35	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 36	[  0]	TGETS	  5	5	16	; slot5 = uv0"unknown".idleFootX
		 37	[  0]	MOV  	  7		4	; slot7 = <unknown table>.getUnitAssetForEnemy
		 38	[  0]	CALL 	  5	2	2	; slot5 = uv0"unknown".idleFootX(slot6)
		 39	[  0]	IST  	   		5	; if uv0"unknown".idleFootX
		 40	[  0]	JMP  	  6		2	; 	goto 43
		 41	[  0]	KPRI 	  6		0	; slot6 = nil
		 42	[  0]	RET1 	  6		2	; return slot6
		 43	[  0]	TGETS	  6	4	15	; slot6 = <unknown table>.getUnitAssetForEnemy.frameW
		 44	[  0]	IST  	   		6	; if <unknown table>.getUnitAssetForEnemy.frameW
		 45	[  0]	JMP  	  7		1	; 	goto 47
		 46	[  0]	KSHORT	  6		32	; slot6 = 32
		 47	[  0]	TGETS	  7	4	14	; slot7 = <unknown table>.getUnitAssetForEnemy.frameH
		 48	[  0]	IST  	   		7	; if <unknown table>.getUnitAssetForEnemy.frameH
		 49	[  0]	JMP  	  8		1	; 	goto 51
		 50	[  0]	KSHORT	  7		32	; slot7 = 32
		 51	[  0]	TGETS	  8	4	13	; slot8 = <unknown table>.getUnitAssetForEnemy.bounds
		 52	[  0]	ISF  	   		8	; if not <unknown table>.getUnitAssetForEnemy.bounds
		 53	[  0]	JMP  	  9		7	; 	goto 61
		 54	[  0]	TGETS	  8	4	13	; slot8 = <unknown table>.getUnitAssetForEnemy.bounds
		 55	[  0]	TGETS	  8	8	12	; slot8 = <unknown table>.getUnitAssetForEnemy.bounds.idle
		 56	[  0]	ISF  	   		8	; if not <unknown table>.getUnitAssetForEnemy.bounds.idle
		 57	[  0]	JMP  	  9		3	; 	goto 61
		 58	[  0]	TGETS	  8	4	13	; slot8 = <unknown table>.getUnitAssetForEnemy.bounds
		 59	[  0]	TGETS	  8	8	12	; slot8 = <unknown table>.getUnitAssetForEnemy.bounds.idle
		 60	[  0]	TGETB	  8	8	1	; slot8 = <unknown table>.getUnitAssetForEnemy.bounds.idle[1]
		 61	[  0]	ISF  	   		8	; if not slot8
		 62	[  0]	JMP  	  9		9	; 	goto 72
		 63	[  0]	TGETS	  9	8	11	; slot9 = slot8.y
		 64	[  0]	TGETS	 10	8	10	; slot10 = slot8.h
		 65	[  0]	ISTC 	 11		2	; slot11 = slot2; if slot2
		 66	[  0]	JMP  	 11		1	; 	goto 68
		 67	[  0]	KNUM 	 11		0	; slot11 = 0.66
		 68	[  0]	MULVV	 10	10	11	; slot10 = <unknown table>.h * slot11
		 69	[  0]	ADDVV	  9	9	10	; slot9 = <unknown table>.y + slot10
		 70	[  0]	IST  	   		9	; if slot9
		 71	[  0]	JMP  	 10		4	; 	goto 76
		 72	[  0]	ISTC 	  9		2	; slot9 = slot2; if slot2
		 73	[  0]	JMP  	  9		1	; 	goto 75
		 74	[  0]	KNUM 	  9		0	; slot9 = 0.66
		 75	[  0]	MULVV	  9	7	9	; slot9 = slot7 * slot9
		 76	[  0]	TGETS	 10	0	9	; slot10 = slot0.ui
		 77	[  0]	ISF  	   		10	; if not <unknown table>.ui
		 78	[  0]	JMP  	 11		2	; 	goto 81
		 79	[  0]	TGETS	 10	0	9	; slot10 = slot0.ui
		 80	[  0]	TGETS	 10	10	8	; slot10 = <unknown table>.ui.battle
		 81	[  0]	GGET 	 11		7	; slot11 = _env["tonumber"]
		 82	[  0]	ISFC 	 13		10	; slot13 = <unknown table>.ui.battle; if not <unknown table>.ui.battle
		 83	[  0]	JMP  	 13		1	; 	goto 85
		 84	[  0]	TGETS	 13	10	6	; slot13 = <unknown table>.ui.battle.allySize32
		 85	[  0]	CALL 	 11	2	2	; slot11 = tonumber(slot12)
		 86	[  0]	IST  	   		11	; if tonumber
		 87	[  0]	JMP  	 12		1	; 	goto 89
		 88	[  0]	KSHORT	 11		64	; slot11 = 64
		 89	[  0]	KSHORT	 12		0	; slot12 = 0
		 90	[  0]	ISGT 	 11		12	; if slot11 > slot12
		 91	[  0]	JMP  	 12		1	; 	goto 93
		 92	[  0]	KSHORT	 11		64	; slot11 = 64
		 93	[  0]	ISF  	   		3	; if not slot3
		 94	[  0]	JMP  	 12		22	; 	goto 117
		 95	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		 96	[  0]	TGETS	 12	12	5	; slot12 = uv0"unknown".allyTransform
		 97	[  0]	MOV  	 14		1	; slot14 = slot1
		 98	[  0]	MOV  	 15		4	; slot15 = <unknown table>.getUnitAssetForEnemy
		 99	[  0]	MOV  	 16		11	; slot16 = slot11
		100	[  0]	MOV  	 17		10	; slot17 = <unknown table>.ui.battle
		101	[  0]	CALL 	 12	4	5	; slot12, slot13, slot14 = uv0"unknown".allyTransform(<unknown table>.ui.battle.allySize32, slot14, <unknown table>.getUnitAssetForEnemy, slot16)
		102	[  0]	GGET 	 15		7	; slot15 = _env["tonumber"]
		103	[  0]	TGETS	 17	1	4	; slot17 = slot1.facing
		104	[  0]	CALL 	 15	2	2	; slot15 = tonumber(slot16)
		105	[  0]	IST  	   		15	; if tonumber
		106	[  0]	JMP  	 16		1	; 	goto 108
		107	[  0]	KSHORT	 15		1	; slot15 = 1
		108	[  0]	KSHORT	 16		0	; slot16 = 0
		109	[  0]	ISGE 	 15		16	; if slot15 >= slot16
		110	[  0]	JMP  	 15		1	; 	goto 112
		111	[  0]	SUBVV	  5	6	5	; slot5 = slot6 - uv0"unknown".idleFootX
		112	[  0]	MULVV	 15	5	14	; slot15 = slot5 * slot14
		113	[  0]	ADDVV	 15	12	15	; slot15 = uv0"unknown".allyTransform + slot15
		114	[  0]	MULVV	 16	9	14	; slot16 = slot9 * slot14
		115	[  0]	ADDVV	 16	13	16	; slot16 = <unknown table>.ui.battle.allySize32 + slot16
		116	[  0]	RET  	 15		3	; return slot15, slot16
		117	[  0]	GGET 	 12		3	; slot12 = _env["math"]
		118	[  0]	TGETS	 12	12	2	; slot12 = math.max
		119	[  0]	KSHORT	 14		1	; slot14 = 1
		120	[  0]	GGET 	 15		3	; slot15 = _env["math"]
		121	[  0]	TGETS	 15	15	1	; slot15 = math.floor
		122	[  0]	DIVVN	 17	11	1	; slot17 = slot11 / 32
		123	[  0]	ADDVN	 17	17	2	; slot17 = slot17 + 0.5
		124	[  0]	CALL 	 15	0	2	; MULTRES = math.floor(slot16)
		125	[  0]	CALLM	 12	2	1	; slot12 = math.max(<unknown table>.ui.battle.allySize32, ...MULTRES)
		126	[  0]	GGET 	 13		7	; slot13 = _env["tonumber"]
		127	[  0]	TGETS	 15	1	4	; slot15 = slot1.facing
		128	[  0]	CALL 	 13	2	2	; slot13 = tonumber(slot14)
		129	[  0]	IST  	   		13	; if tonumber
		130	[  0]	JMP  	 14		1	; 	goto 132
		131	[  0]	KSHORT	 13		65535	; slot13 = 65535
		132	[  0]	KSHORT	 14		0	; slot14 = 0
		133	[  0]	ISGE 	 13		14	; if slot13 >= slot14
		134	[  0]	JMP  	 13		1	; 	goto 136
		135	[  0]	SUBVV	  5	6	5	; slot5 = slot6 - slot5
		136	[  0]	TGETS	 13	1	0	; slot13 = slot1.x
		137	[  0]	IST  	   		13	; if <unknown table>.x
		138	[  0]	JMP  	 14		1	; 	goto 140
		139	[  0]	KSHORT	 13		0	; slot13 = 0
		140	[  0]	MULVN	 14	6	2	; slot14 = slot6 * 0.5
		141	[  0]	SUBVV	 14	5	14	; slot14 = slot5 - slot14
		142	[  0]	MULVV	 14	14	12	; slot14 = slot14 * math.max
		143	[  0]	ADDVV	 13	13	14	; slot13 = slot13 + slot14
		144	[  0]	TGETS	 14	1	11	; slot14 = slot1.y
		145	[  0]	IST  	   		14	; if <unknown table>.y
		146	[  0]	JMP  	 15		1	; 	goto 148
		147	[  0]	KSHORT	 14		0	; slot14 = 0
		148	[  0]	MULVN	 15	7	2	; slot15 = slot7 * 0.5
		149	[  0]	SUBVV	 15	9	15	; slot15 = slot9 - slot15
		150	[  0]	MULVV	 15	15	12	; slot15 = slot15 * math.max
		151	[  0]	ADDVV	 14	14	15	; slot14 = slot14 + slot15
		152	[  0]	RET  	 13		3	; return slot13, slot14
	112	[  0]	TSETS	  8	7	152	; slot7.idleMark = slot8
	113	[  0]	FNEW 	  8		149	; N/A:0-0: 3 args, 1 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  2	[  0]	TGETS	  3	3	4	; slot3 = uv0"unknown".idleFootX
		  3	[  0]	MOV  	  5		0	; slot5 = slot0
		  4	[  0]	CALL 	  3	2	2	; slot3 = uv0"unknown".idleFootX(slot4)
		  5	[  0]	IST  	   		3	; if uv0"unknown".idleFootX
		  6	[  0]	JMP  	  4		2	; 	goto 9
		  7	[  0]	KSHORT	  4		0	; slot4 = 0
		  8	[  0]	RET1 	  4		2	; return slot4
		  9	[  0]	GGET 	  4		3	; slot4 = _env["tonumber"]
		 10	[  0]	MOV  	  6		2	; slot6 = slot2
		 11	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		 12	[  0]	IST  	   		4	; if tonumber
		 13	[  0]	JMP  	  5		1	; 	goto 15
		 14	[  0]	KSHORT	  4		1	; slot4 = 1
		 15	[  0]	KSHORT	  5		0	; slot5 = 0
		 16	[  0]	ISGE 	  4		5	; if slot4 >= slot5
		 17	[  0]	JMP  	  4		2	; 	goto 20
		 18	[  0]	KSHORT	  4		65535	; slot4 = 65535
		 19	[  0]	JMP  	  5		1	; 	goto 21
		 20	[  0]	KSHORT	  4		1	; slot4 = 1
		 21	[  0]	TGETS	  5	0	2	; slot5 = slot0.frameW
		 22	[  0]	IST  	   		5	; if <unknown table>.frameW
		 23	[  0]	JMP  	  6		1	; 	goto 25
		 24	[  0]	KSHORT	  5		32	; slot5 = 32
		 25	[  0]	MULVN	  5	5	0	; slot5 = slot5 * 0.5
		 26	[  0]	SUBVV	  5	3	5	; slot5 = uv0"unknown".idleFootX - slot5
		 27	[  0]	GGET 	  6		1	; slot6 = _env["math"]
		 28	[  0]	TGETS	  6	6	0	; slot6 = math.abs
		 29	[  0]	ISTC 	  8		1	; slot8 = slot1; if slot1
		 30	[  0]	JMP  	  8		1	; 	goto 32
		 31	[  0]	KSHORT	  8		1	; slot8 = 1
		 32	[  0]	CALL 	  6	2	2	; slot6 = math.abs(slot7)
		 33	[  0]	MULVV	  5	5	6	; slot5 = slot5 * math.abs
		 34	[  0]	MULVV	  5	5	4	; slot5 = slot5 * slot4
		 35	[  0]	RET1 	  5		2	; return slot5
	114	[  0]	TSETS	  8	7	150	; slot7.footOffsetX = slot8
	115	[  0]	FNEW 	  8		147	; N/A:0-0: 5 args, 0 upvalues, 20 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  5		2	; 	goto 5
		  3	[  0]	IST  	   		1	; if slot1
		  4	[  0]	JMP  	  5		3	; 	goto 8
		  5	[  0]	KSHORT	  5		0	; slot5 = 0
		  6	[  0]	KSHORT	  6		0	; slot6 = 0
		  7	[  0]	UCLO 	  0		144	; nil uvs >= r0; goto 152
		  8	[  0]	FNEW 	  5		17	; N/A:0-0: 1 args, 1 upvalues, 2 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	TGETS	  1	1	2	; slot1 = uv0"unknown".subclass
			  3	[  0]	ISEQV	  1		0	; if uv0"unknown".subclass == slot0
			  4	[  0]	JMP  	  1		10	; 	goto 15
			  5	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  6	[  0]	TGETS	  1	1	1	; slot1 = uv0"unknown".subclassName
			  7	[  0]	ISEQV	  1		0	; if uv0"unknown".subclassName == slot0
			  8	[  0]	JMP  	  1		6	; 	goto 15
			  9	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			 10	[  0]	TGETS	  1	1	0	; slot1 = uv0"unknown".subclassKey
			 11	[  0]	ISEQV	  1		0	; if uv0"unknown".subclassKey == slot0
			 12	[  0]	JMP  	  1		2	; 	goto 15
			 13	[  0]	KPRI 	  1		1	; slot1 = false
			 14	[  0]	JMP  	  2		1	; 	goto 16
			 15	[  0]	KPRI 	  1		2	; slot1 = true
			 16	[  0]	RET1 	  1		2	; return slot1
		  9	[  0]	MOV  	  6		5	; slot6 = slot5
		 10	[  0]	KSTR 	  8		16	; slot8 = "마그누스"
		 11	[  0]	CALL 	  6	2	2	; slot6 = slot6(slot7)
		 12	[  0]	IST  	   		6	; if slot6
		 13	[  0]	JMP  	  7		4	; 	goto 18
		 14	[  0]	KSHORT	  7		0	; slot7 = 0
		 15	[  0]	KSHORT	  8		0	; slot8 = 0
		 16	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 17
		 17	[  0]	RET  	  7		3	; return slot7, slot8
		 18	[  0]	TGETS	  7	0	15	; slot7 = slot0.promoteVis
		 19	[  0]	ISF  	   		7	; if not <unknown table>.promoteVis
		 20	[  0]	JMP  	  8		14	; 	goto 35
		 21	[  0]	TGETS	  8	7	14	; slot8 = <unknown table>.promoteVis.t
		 22	[  0]	IST  	   		8	; if <unknown table>.promoteVis.t
		 23	[  0]	JMP  	  9		1	; 	goto 25
		 24	[  0]	KSHORT	  8		0	; slot8 = 0
		 25	[  0]	TGETS	  9	7	13	; slot9 = <unknown table>.promoteVis.hold
		 26	[  0]	IST  	   		9	; if <unknown table>.promoteVis.hold
		 27	[  0]	JMP  	 10		1	; 	goto 29
		 28	[  0]	KNUM 	  9		0	; slot9 = 0.45
		 29	[  0]	ISGE 	  8		9	; if slot8 >= slot9
		 30	[  0]	JMP  	  8		4	; 	goto 35
		 31	[  0]	KSHORT	  8		0	; slot8 = 0
		 32	[  0]	KSHORT	  9		0	; slot9 = 0
		 33	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 34
		 34	[  0]	RET  	  8		3	; return slot8, slot9
		 35	[  0]	GGET 	  8		12	; slot8 = _env["tonumber"]
		 36	[  0]	MOV  	 10		2	; slot10 = slot2
		 37	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 38	[  0]	ISTC 	  2		8	; slot2 = tonumber; if tonumber
		 39	[  0]	JMP  	  9		1	; 	goto 41
		 40	[  0]	KSHORT	  2		32	; slot2 = 32
		 41	[  0]	GGET 	  8		12	; slot8 = _env["tonumber"]
		 42	[  0]	MOV  	 10		4	; slot10 = slot4
		 43	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 44	[  0]	ISTC 	  4		8	; slot4 = tonumber; if tonumber
		 45	[  0]	JMP  	  9		6	; 	goto 52
		 46	[  0]	GGET 	  8		12	; slot8 = _env["tonumber"]
		 47	[  0]	TGETS	 10	0	11	; slot10 = slot0.x
		 48	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 49	[  0]	ISTC 	  4		8	; slot4 = tonumber; if tonumber
		 50	[  0]	JMP  	  9		1	; 	goto 52
		 51	[  0]	KSHORT	  4		0	; slot4 = 0
		 52	[  0]	TGETS	  8	1	10	; slot8 = slot1.frameW
		 53	[  0]	IST  	   		8	; if <unknown table>.frameW
		 54	[  0]	JMP  	  9		1	; 	goto 56
		 55	[  0]	KSHORT	  8		32	; slot8 = 32
		 56	[  0]	GGET 	  9		9	; slot9 = _env["math"]
		 57	[  0]	TGETS	  9	9	8	; slot9 = math.max
		 58	[  0]	KSHORT	 11		1	; slot11 = 1
		 59	[  0]	TGETS	 12	1	7	; slot12 = slot1.frameH
		 60	[  0]	IST  	   		12	; if <unknown table>.frameH
		 61	[  0]	JMP  	 13		1	; 	goto 63
		 62	[  0]	KSHORT	 12		32	; slot12 = 32
		 63	[  0]	CALL 	  9	2	3	; slot9 = math.max(<unknown table>.x, slot11)
		 64	[  0]	DIVVV	 10	2	9	; slot10 = slot2 / math.max
		 65	[  0]	MULVV	 11	8	10	; slot11 = slot8 * slot10
		 66	[  0]	TGETS	 12	1	6	; slot12 = slot1.bounds
		 67	[  0]	ISF  	   		12	; if not <unknown table>.bounds
		 68	[  0]	JMP  	 13		7	; 	goto 76
		 69	[  0]	TGETS	 12	1	6	; slot12 = slot1.bounds
		 70	[  0]	TGETS	 12	12	5	; slot12 = <unknown table>.bounds.idle
		 71	[  0]	ISF  	   		12	; if not <unknown table>.bounds.idle
		 72	[  0]	JMP  	 13		3	; 	goto 76
		 73	[  0]	TGETS	 12	1	6	; slot12 = slot1.bounds
		 74	[  0]	TGETS	 12	12	5	; slot12 = <unknown table>.bounds.idle
		 75	[  0]	TGETB	 12	12	1	; slot12 = <unknown table>.bounds.idle[1]
		 76	[  0]	ISF  	   		12	; if not slot12
		 77	[  0]	JMP  	 13		9	; 	goto 87
		 78	[  0]	TGETS	 13	12	11	; slot13 = slot12.x
		 79	[  0]	TGETS	 14	12	4	; slot14 = slot12.w
		 80	[  0]	MULVN	 14	14	1	; slot14 = <unknown table>.w * 0.5
		 81	[  0]	ADDVV	 13	13	14	; slot13 = <unknown table>.x + slot14
		 82	[  0]	MULVN	 14	8	1	; slot14 = slot8 * 0.5
		 83	[  0]	SUBVV	 13	13	14	; slot13 = slot13 - slot14
		 84	[  0]	MULVV	 13	13	10	; slot13 = slot13 * slot10
		 85	[  0]	IST  	   		13	; if slot13
		 86	[  0]	JMP  	 14		1	; 	goto 88
		 87	[  0]	KSHORT	 13		0	; slot13 = 0
		 88	[  0]	GGET 	 14		9	; slot14 = _env["math"]
		 89	[  0]	TGETS	 14	14	3	; slot14 = math.floor
		 90	[  0]	DIVVN	 16	2	2	; slot16 = slot2 / 2
		 91	[  0]	SUBVV	 16	4	16	; slot16 = slot4 - slot16
		 92	[  0]	CALL 	 14	2	2	; slot14 = math.floor(slot15)
		 93	[  0]	GGET 	 15		9	; slot15 = _env["math"]
		 94	[  0]	TGETS	 15	15	3	; slot15 = math.floor
		 95	[  0]	SUBVV	 17	2	11	; slot17 = slot2 - slot11
		 96	[  0]	DIVVN	 17	17	2	; slot17 = slot17 / 2
		 97	[  0]	ADDVN	 17	17	1	; slot17 = slot17 + 0.5
		 98	[  0]	CALL 	 15	2	2	; slot15 = math.floor(slot16)
		 99	[  0]	ADDVV	 14	14	15	; slot14 = math.floor + math.floor
		100	[  0]	SUBVV	 14	14	13	; slot14 = slot14 - slot13
		101	[  0]	GGET 	 15		9	; slot15 = _env["math"]
		102	[  0]	TGETS	 15	15	3	; slot15 = math.floor
		103	[  0]	MULVN	 17	11	1	; slot17 = slot11 * 0.5
		104	[  0]	SUBVV	 17	4	17	; slot17 = slot4 - slot17
		105	[  0]	CALL 	 15	2	2	; slot15 = math.floor(slot16)
		106	[  0]	SUBVV	 14	14	15	; slot14 = slot14 - math.floor
		107	[  0]	ISF  	   		12	; if not slot12
		108	[  0]	JMP  	 15		11	; 	goto 120
		109	[  0]	GGET 	 15		9	; slot15 = _env["math"]
		110	[  0]	TGETS	 15	15	3	; slot15 = math.floor
		111	[  0]	TGETS	 17	12	2	; slot17 = slot12.y
		112	[  0]	TGETS	 18	12	1	; slot18 = slot12.h
		113	[  0]	ADDVV	 17	17	18	; slot17 = <unknown table>.y + <unknown table>.h
		114	[  0]	MULVV	 17	17	10	; slot17 = slot17 * slot10
		115	[  0]	SUBVV	 17	2	17	; slot17 = slot2 - slot17
		116	[  0]	ADDVN	 17	17	1	; slot17 = slot17 + 0.5
		117	[  0]	CALL 	 15	2	2	; slot15 = math.floor(slot16)
		118	[  0]	IST  	   		15	; if math.floor
		119	[  0]	JMP  	 16		1	; 	goto 121
		120	[  0]	KSHORT	 15		0	; slot15 = 0
		121	[  0]	ISFC 	 16		3	; slot16 = slot3; if not slot3
		122	[  0]	JMP  	 16		1	; 	goto 124
		123	[  0]	TGETS	 16	3	0	; slot16 = slot3.magnusSpriteOffset
		124	[  0]	GGET 	 17		9	; slot17 = _env["math"]
		125	[  0]	TGETS	 17	17	3	; slot17 = math.floor
		126	[  0]	ISF  	   		16	; if not <unknown table>.magnusSpriteOffset
		127	[  0]	JMP  	 19		3	; 	goto 131
		128	[  0]	TGETS	 19	16	11	; slot19 = <unknown table>.magnusSpriteOffset.x
		129	[  0]	IST  	   		19	; if <unknown table>.magnusSpriteOffset.x
		130	[  0]	JMP  	 20		1	; 	goto 132
		131	[  0]	KSHORT	 19		65533	; slot19 = 65533
		132	[  0]	MULVV	 19	19	10	; slot19 = slot19 * slot10
		133	[  0]	ADDVN	 19	19	1	; slot19 = slot19 + 0.5
		134	[  0]	CALL 	 17	2	2	; slot17 = math.floor(<unknown table>.h)
		135	[  0]	ADDVV	 14	14	17	; slot14 = slot14 + math.floor
		136	[  0]	GGET 	 17		9	; slot17 = _env["math"]
		137	[  0]	TGETS	 17	17	3	; slot17 = math.floor
		138	[  0]	ISF  	   		16	; if not <unknown table>.magnusSpriteOffset
		139	[  0]	JMP  	 19		3	; 	goto 143
		140	[  0]	TGETS	 19	16	2	; slot19 = <unknown table>.magnusSpriteOffset.y
		141	[  0]	IST  	   		19	; if <unknown table>.magnusSpriteOffset.y
		142	[  0]	JMP  	 20		1	; 	goto 144
		143	[  0]	KSHORT	 19		65535	; slot19 = 65535
		144	[  0]	MULVV	 19	19	10	; slot19 = slot19 * slot10
		145	[  0]	ADDVN	 19	19	1	; slot19 = slot19 + 0.5
		146	[  0]	CALL 	 17	2	2	; slot17 = math.floor(<unknown table>.h)
		147	[  0]	ADDVV	 15	15	17	; slot15 = slot15 + math.floor
		148	[  0]	MOV  	 17		14	; slot17 = slot14
		149	[  0]	MOV  	 18		15	; slot18 = slot15
		150	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 151
		151	[  0]	RET  	 17		3	; return slot17, slot18
		152	[  0]	RET  	  5		3	; return slot5, slot6
	116	[  0]	TSETS	  8	7	148	; slot7.allyShift = slot8
	117	[  0]	FNEW 	  8		145	; N/A:0-0: 4 args, 1 upvalues, 21 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISTC 	  4		0	; slot4 = slot0; if slot0
		  2	[  0]	JMP  	  4		1	; 	goto 4
		  3	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		  4	[  0]	IST  	   		1	; if slot1
		  5	[  0]	JMP  	  5		1	; 	goto 7
		  6	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  7	[  0]	MOV  	  0		4	; slot0 = slot4
		  8	[  0]	GGET 	  4		19	; slot4 = _env["tonumber"]
		  9	[  0]	MOV  	  6		2	; slot6 = slot2
		 10	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		 11	[  0]	ISTC 	  2		4	; slot2 = tonumber; if tonumber
		 12	[  0]	JMP  	  5		1	; 	goto 14
		 13	[  0]	KSHORT	  2		32	; slot2 = 32
		 14	[  0]	GGET 	  4		19	; slot4 = _env["tonumber"]
		 15	[  0]	TGETS	  6	1	18	; slot6 = slot1.frameW
		 16	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		 17	[  0]	IST  	   		4	; if tonumber
		 18	[  0]	JMP  	  5		1	; 	goto 20
		 19	[  0]	KSHORT	  4		32	; slot4 = 32
		 20	[  0]	GGET 	  5		17	; slot5 = _env["math"]
		 21	[  0]	TGETS	  5	5	16	; slot5 = math.max
		 22	[  0]	KSHORT	  7		1	; slot7 = 1
		 23	[  0]	GGET 	  8		19	; slot8 = _env["tonumber"]
		 24	[  0]	TGETS	 10	1	15	; slot10 = slot1.frameH
		 25	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 26	[  0]	IST  	   		8	; if tonumber
		 27	[  0]	JMP  	  9		1	; 	goto 29
		 28	[  0]	KSHORT	  8		32	; slot8 = 32
		 29	[  0]	CALL 	  5	2	3	; slot5 = math.max(<unknown table>.frameW, slot7)
		 30	[  0]	GGET 	  6		19	; slot6 = _env["tonumber"]
		 31	[  0]	TGETS	  8	0	14	; slot8 = slot0.x
		 32	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
		 33	[  0]	IST  	   		6	; if tonumber
		 34	[  0]	JMP  	  7		1	; 	goto 36
		 35	[  0]	KSHORT	  6		0	; slot6 = 0
		 36	[  0]	GGET 	  7		19	; slot7 = _env["tonumber"]
		 37	[  0]	TGETS	  9	0	13	; slot9 = slot0.y
		 38	[  0]	CALL 	  7	2	2	; slot7 = tonumber(<unknown table>.x)
		 39	[  0]	IST  	   		7	; if tonumber
		 40	[  0]	JMP  	  8		1	; 	goto 42
		 41	[  0]	KSHORT	  7		0	; slot7 = 0
		 42	[  0]	TGETS	  8	0	12	; slot8 = slot0.sym
		 43	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 44	[  0]	TGETS	  9	9	11	; slot9 = uv0"unknown".uniformScale
		 45	[  0]	MOV  	 11		1	; slot11 = slot1
		 46	[  0]	MOV  	 12		2	; slot12 = slot2
		 47	[  0]	CALL 	  9	2	3	; slot9 = uv0"unknown".uniformScale(<unknown table>.frameH, slot11)
		 48	[  0]	GGET 	 10		17	; slot10 = _env["math"]
		 49	[  0]	TGETS	 10	10	10	; slot10 = math.floor
		 50	[  0]	MULVN	 12	2	0	; slot12 = slot2 * 0.5
		 51	[  0]	SUBVV	 12	6	12	; slot12 = slot6 - slot12
		 52	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
		 53	[  0]	GGET 	 11		17	; slot11 = _env["math"]
		 54	[  0]	TGETS	 11	11	10	; slot11 = math.floor
		 55	[  0]	MULVN	 13	2	0	; slot13 = slot2 * 0.5
		 56	[  0]	SUBVV	 13	7	13	; slot13 = slot7 - slot13
		 57	[  0]	CALL 	 11	2	2	; slot11 = math.floor(slot12)
		 58	[  0]	TGETS	 12	1	9	; slot12 = slot1.pixelScaleBase
		 59	[  0]	ISF  	   		12	; if not <unknown table>.pixelScaleBase
		 60	[  0]	JMP  	 13		11	; 	goto 72
		 61	[  0]	GGET 	 12		17	; slot12 = _env["math"]
		 62	[  0]	TGETS	 12	12	10	; slot12 = math.floor
		 63	[  0]	MULVV	 14	4	9	; slot14 = slot4 * uv0"unknown".uniformScale
		 64	[  0]	MULVN	 14	14	0	; slot14 = slot14 * 0.5
		 65	[  0]	SUBVV	 14	6	14	; slot14 = slot6 - slot14
		 66	[  0]	CALL 	 12	2	2	; slot12 = math.floor(slot13)
		 67	[  0]	MOV  	 10		12	; slot10 = math.floor
		 68	[  0]	ADDVV	 12	11	2	; slot12 = math.floor + slot2
		 69	[  0]	MULVV	 13	5	9	; slot13 = math.max * uv0"unknown".uniformScale
		 70	[  0]	SUBVV	 11	12	13	; slot11 = slot12 - slot13
		 71	[  0]	JMP  	 12		109	; 	goto 181
		 72	[  0]	ISEQS	  8		8	; if <unknown table>.sym == "W"
		 73	[  0]	JMP  	 12		5	; 	goto 79
		 74	[  0]	ISEQS	  8		7	; if <unknown table>.sym == "S"
		 75	[  0]	JMP  	 12		3	; 	goto 79
		 76	[  0]	TGETS	 12	0	6	; slot12 = slot0.isFlameSpirit
		 77	[  0]	ISF  	   		12	; if not <unknown table>.isFlameSpirit
		 78	[  0]	JMP  	 13		21	; 	goto 100
		 79	[  0]	GGET 	 12		17	; slot12 = _env["math"]
		 80	[  0]	TGETS	 12	12	10	; slot12 = math.floor
		 81	[  0]	MULVV	 14	4	9	; slot14 = slot4 * uv0"unknown".uniformScale
		 82	[  0]	MULVN	 14	14	0	; slot14 = slot14 * 0.5
		 83	[  0]	SUBVV	 14	6	14	; slot14 = slot6 - slot14
		 84	[  0]	CALL 	 12	2	2	; slot12 = math.floor(slot13)
		 85	[  0]	MOV  	 10		12	; slot10 = math.floor
		 86	[  0]	ISNES	  8		8	; if <unknown table>.sym ~= "W"
		 87	[  0]	JMP  	 12		93	; 	goto 181
		 88	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		 89	[  0]	TGETS	 12	12	5	; slot12 = uv0"unknown".allyShift
		 90	[  0]	MOV  	 14		0	; slot14 = slot0
		 91	[  0]	MOV  	 15		1	; slot15 = slot1
		 92	[  0]	MOV  	 16		2	; slot16 = slot2
		 93	[  0]	MOV  	 17		3	; slot17 = slot3
		 94	[  0]	MOV  	 18		6	; slot18 = slot6
		 95	[  0]	CALL 	 12	3	6	; slot12, slot13 = uv0"unknown".allyShift(slot13, slot14, slot15, slot16, slot17)
		 96	[  0]	ADDVV	 14	10	12	; slot14 = math.floor + uv0"unknown".allyShift
		 97	[  0]	ADDVV	 11	11	13	; slot11 = slot11 + slot13
		 98	[  0]	MOV  	 10		14	; slot10 = slot14
		 99	[  0]	JMP  	 12		81	; 	goto 181
		100	[  0]	ISEQS	  8		4	; if <unknown table>.sym == "M"
		101	[  0]	JMP  	 12		2	; 	goto 104
		102	[  0]	ISNES	  8		3	; if <unknown table>.sym ~= "D"
		103	[  0]	JMP  	 12		48	; 	goto 152
		104	[  0]	KSHORT	 12		40	; slot12 = 40
		105	[  0]	ISLE 	 12		4	; if slot12 <= slot4
		106	[  0]	JMP  	 12		3	; 	goto 110
		107	[  0]	KSHORT	 12		40	; slot12 = 40
		108	[  0]	ISGT 	 12		5	; if slot12 > math.max
		109	[  0]	JMP  	 12		71	; 	goto 181
		110	[  0]	GGET 	 12		17	; slot12 = _env["math"]
		111	[  0]	TGETS	 12	12	16	; slot12 = math.max
		112	[  0]	KSHORT	 14		1	; slot14 = 1
		113	[  0]	MOV  	 15		4	; slot15 = slot4
		114	[  0]	CALL 	 12	2	3	; slot12 = math.max(slot13, slot14)
		115	[  0]	DIVVV	 12	2	12	; slot12 = slot2 / math.max
		116	[  0]	KSHORT	 13		48	; slot13 = 48
		117	[  0]	ISLE 	 13		4	; if slot13 <= slot4
		118	[  0]	JMP  	 13		3	; 	goto 122
		119	[  0]	KSHORT	 13		48	; slot13 = 48
		120	[  0]	ISGT 	 13		5	; if slot13 > math.max
		121	[  0]	JMP  	 13		10	; 	goto 132
		122	[  0]	GGET 	 13		17	; slot13 = _env["math"]
		123	[  0]	TGETS	 13	13	16	; slot13 = math.max
		124	[  0]	KSHORT	 15		1	; slot15 = 1
		125	[  0]	GGET 	 16		17	; slot16 = _env["math"]
		126	[  0]	TGETS	 16	16	2	; slot16 = math.ceil
		127	[  0]	SUBVN	 18	12	1	; slot18 = slot12 - 1e-06
		128	[  0]	CALL 	 16	0	2	; MULTRES = math.ceil(slot17)
		129	[  0]	CALLM	 13	2	1	; slot13 = math.max(slot14, ...MULTRES)
		130	[  0]	ISTC 	  9		13	; slot9 = math.max; if math.max
		131	[  0]	JMP  	 14		9	; 	goto 141
		132	[  0]	GGET 	 13		17	; slot13 = _env["math"]
		133	[  0]	TGETS	 13	13	16	; slot13 = math.max
		134	[  0]	KSHORT	 15		1	; slot15 = 1
		135	[  0]	GGET 	 16		17	; slot16 = _env["math"]
		136	[  0]	TGETS	 16	16	10	; slot16 = math.floor
		137	[  0]	ADDVN	 18	12	0	; slot18 = slot12 + 0.5
		138	[  0]	CALL 	 16	0	2	; MULTRES = math.floor(slot17)
		139	[  0]	CALLM	 13	2	1	; slot13 = math.max(slot14, ...MULTRES)
		140	[  0]	MOV  	  9		13	; slot9 = math.max
		141	[  0]	GGET 	 13		17	; slot13 = _env["math"]
		142	[  0]	TGETS	 13	13	10	; slot13 = math.floor
		143	[  0]	MULVV	 15	4	9	; slot15 = slot4 * math.max
		144	[  0]	MULVN	 15	15	0	; slot15 = slot15 * 0.5
		145	[  0]	SUBVV	 15	6	15	; slot15 = slot6 - slot15
		146	[  0]	CALL 	 13	2	2	; slot13 = math.floor(slot14)
		147	[  0]	MOV  	 10		13	; slot10 = math.floor
		148	[  0]	ADDVV	 13	11	2	; slot13 = slot11 + slot2
		149	[  0]	MULVV	 14	5	9	; slot14 = math.max * math.max
		150	[  0]	SUBVV	 11	13	14	; slot11 = slot13 - slot14
		151	[  0]	JMP  	 12		29	; 	goto 181
		152	[  0]	ISEQS	  8		1	; if <unknown table>.sym == "A"
		153	[  0]	JMP  	 12		27	; 	goto 181
		154	[  0]	ISEQS	  8		0	; if <unknown table>.sym == "H"
		155	[  0]	JMP  	 12		25	; 	goto 181
		156	[  0]	GGET 	 12		17	; slot12 = _env["math"]
		157	[  0]	TGETS	 12	12	16	; slot12 = math.max
		158	[  0]	KSHORT	 14		1	; slot14 = 1
		159	[  0]	GGET 	 15		17	; slot15 = _env["math"]
		160	[  0]	TGETS	 15	15	10	; slot15 = math.floor
		161	[  0]	GGET 	 17		17	; slot17 = _env["math"]
		162	[  0]	TGETS	 17	17	16	; slot17 = math.max
		163	[  0]	KSHORT	 19		1	; slot19 = 1
		164	[  0]	MOV  	 20		4	; slot20 = slot4
		165	[  0]	CALL 	 17	2	3	; slot17 = math.max(slot18, slot19)
		166	[  0]	DIVVV	 17	2	17	; slot17 = slot2 / math.max
		167	[  0]	ADDVN	 17	17	0	; slot17 = slot17 + 0.5
		168	[  0]	CALL 	 15	0	2	; MULTRES = math.floor(math.floor)
		169	[  0]	CALLM	 12	2	1	; slot12 = math.max(slot13, ...MULTRES)
		170	[  0]	MOV  	  9		12	; slot9 = math.max
		171	[  0]	GGET 	 12		17	; slot12 = _env["math"]
		172	[  0]	TGETS	 12	12	10	; slot12 = math.floor
		173	[  0]	MULVV	 14	4	9	; slot14 = slot4 * math.max
		174	[  0]	MULVN	 14	14	0	; slot14 = slot14 * 0.5
		175	[  0]	SUBVV	 14	6	14	; slot14 = slot6 - slot14
		176	[  0]	CALL 	 12	2	2	; slot12 = math.floor(slot13)
		177	[  0]	MOV  	 10		12	; slot10 = math.floor
		178	[  0]	ADDVV	 12	11	2	; slot12 = slot11 + slot2
		179	[  0]	MULVV	 13	5	9	; slot13 = math.max * math.max
		180	[  0]	SUBVV	 11	12	13	; slot11 = slot12 - slot13
		181	[  0]	MOV  	 12		10	; slot12 = math.floor
		182	[  0]	MOV  	 13		11	; slot13 = slot11
		183	[  0]	MOV  	 14		9	; slot14 = math.max
		184	[  0]	MOV  	 15		9	; slot15 = math.max
		185	[  0]	RET  	 12		5	; return math.floor, slot13, math.max, math.max
	118	[  0]	TSETS	  8	7	146	; slot7.allyTransform = slot8
	119	[  0]	FNEW 	  8		143	; N/A:0-0: 2 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISEQS	  0		5	; if slot0 == "D"
		  2	[  0]	JMP  	  2		2	; 	goto 5
		  3	[  0]	ISNES	  0		4	; if slot0 ~= "M"
		  4	[  0]	JMP  	  2		23	; 	goto 28
		  5	[  0]	ISEQP	  1		0	; if slot1 == nil
		  6	[  0]	JMP  	  2		21	; 	goto 28
		  7	[  0]	TGETS	  2	1	3	; slot2 = slot1.pixelScaleBase
		  8	[  0]	IST  	   		2	; if <unknown table>.pixelScaleBase
		  9	[  0]	JMP  	  2		18	; 	goto 28
		 10	[  0]	GGET 	  2		2	; slot2 = _env["tonumber"]
		 11	[  0]	TGETS	  4	1	1	; slot4 = slot1.frameW
		 12	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 13	[  0]	IST  	   		2	; if slot2
		 14	[  0]	JMP  	  3		1	; 	goto 16
		 15	[  0]	KSHORT	  2		0	; slot2 = 0
		 16	[  0]	KSHORT	  3		40	; slot3 = 40
		 17	[  0]	ISLE 	  3		2	; if slot3 <= slot2
		 18	[  0]	JMP  	  2		11	; 	goto 30
		 19	[  0]	GGET 	  2		2	; slot2 = _env["tonumber"]
		 20	[  0]	TGETS	  4	1	0	; slot4 = slot1.frameH
		 21	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 22	[  0]	IST  	   		2	; if slot2
		 23	[  0]	JMP  	  3		1	; 	goto 25
		 24	[  0]	KSHORT	  2		0	; slot2 = 0
		 25	[  0]	KSHORT	  3		40	; slot3 = 40
		 26	[  0]	ISLE 	  3		2	; if slot3 <= slot2
		 27	[  0]	JMP  	  2		2	; 	goto 30
		 28	[  0]	KPRI 	  2		1	; slot2 = false
		 29	[  0]	JMP  	  3		1	; 	goto 31
		 30	[  0]	KPRI 	  2		2	; slot2 = true
		 31	[  0]	RET1 	  2		2	; return slot2
	120	[  0]	TSETS	  8	7	144	; slot7.quantized = slot8
	121	[  0]	FNEW 	  8		141	; N/A:0-0: 4 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  4		3	; slot4 = _env["math"]
		  2	[  0]	TGETS	  4	4	2	; slot4 = math.floor
		  3	[  0]	TGETS	  6	0	1	; slot6 = slot0.frameW
		  4	[  0]	MULVV	  6	6	2	; slot6 = <unknown table>.frameW * slot2
		  5	[  0]	MULVV	  6	6	3	; slot6 = slot6 * slot3
		  6	[  0]	SUBVV	  6	1	6	; slot6 = slot1 - slot6
		  7	[  0]	MULVN	  6	6	0	; slot6 = slot6 * 0.5
		  8	[  0]	ADDVN	  6	6	0	; slot6 = slot6 + 0.5
		  9	[  0]	CALL 	  4	2	2	; slot4 = math.floor(slot5)
		 10	[  0]	TGETS	  5	0	0	; slot5 = slot0.frameH
		 11	[  0]	MULVV	  5	5	2	; slot5 = <unknown table>.frameH * slot2
		 12	[  0]	SUBVV	  5	1	5	; slot5 = slot1 - slot5
		 13	[  0]	GGET 	  6		3	; slot6 = _env["math"]
		 14	[  0]	TGETS	  6	6	2	; slot6 = math.floor
		 15	[  0]	TGETS	  8	0	0	; slot8 = slot0.frameH
		 16	[  0]	MULVV	  8	8	2	; slot8 = <unknown table>.frameH * slot2
		 17	[  0]	SUBVN	  9	3	1	; slot9 = slot3 - 1
		 18	[  0]	MULVV	  8	8	9	; slot8 = slot8 * slot9
		 19	[  0]	MULVN	  8	8	0	; slot8 = slot8 * 0.5
		 20	[  0]	ADDVN	  8	8	0	; slot8 = slot8 + 0.5
		 21	[  0]	CALL 	  6	2	2	; slot6 = math.floor(slot7)
		 22	[  0]	SUBVV	  5	5	6	; slot5 = slot5 - math.floor
		 23	[  0]	RET  	  4		3	; return math.floor, slot5
	122	[  0]	TSETS	  8	7	142	; slot7.rosterOffset = slot8
	123	[  0]	MOV  	  6		7	; slot6 = slot7
	124	[  0]	UCLO 	  7		0	; nil uvs >= r7; goto 125
	125	[  0]	KPRI 	  7		0	; slot7 = nil
	126	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
	127	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
	128	[  0]	KPRI 	 10		0	; slot10 = nil
	129	[  0]	FNEW 	 11		140	; N/A:0-0: 0 args, 1 upvalues, 4 slots
		
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
	130	[  0]	FNEW 	 12		138	; N/A:0-0: 10 args, 2 upvalues, 41 slots
		
		;;;; constant tables ;;;;
		ktable#5 = [
			[source] = classSelectFaction,
			]
		
		
		ktable#7 = [
			]
		
		
		ktable#22 = [
			#1: 0.55,
			#2: 0.48,
			#3: 0.43,
			#4: 1,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	 10		49	; slot10 = _env["require"]
		  2	[  0]	KSTR 	 12		48	; slot12 = "src.data.faction"
		  3	[  0]	CALL 	 10	2	2	; slot10 = require(slot11)
		  4	[  0]	TGETS	 11	10	47	; slot11 = require.getForChoice
		  5	[  0]	MOV  	 13		0	; slot13 = slot0
		  6	[  0]	MOV  	 14		1	; slot14 = slot1
		  7	[  0]	CALL 	 11	2	3	; slot11 = require.getForChoice(slot12, slot13)
		  8	[  0]	ISFC 	 12		11	; slot12 = require.getForChoice; if not require.getForChoice
		  9	[  0]	JMP  	 12		3	; 	goto 13
		 10	[  0]	TGETS	 12	10	46	; slot12 = require.getIconPath
		 11	[  0]	MOV  	 14		11	; slot14 = require.getForChoice
		 12	[  0]	CALL 	 12	2	2	; slot12 = require.getIconPath(slot13)
		 13	[  0]	IST  	   		12	; if require.getIconPath
		 14	[  0]	JMP  	 13		1	; 	goto 16
		 15	[  0]	RET0 	  0		1	; return
		 16	[  0]	UGET 	 13		0	; slot13 = uv0"unknwon"
		 17	[  0]	TGETV	 13	13	12	; slot13 = uv0"unknown"[require.getIconPath]
		 18	[  0]	ISNEP	 13		0	; if slot13 ~= nil
		 19	[  0]	JMP  	 14		20	; 	goto 40
		 20	[  0]	GGET 	 14		45	; slot14 = _env["pcall"]
		 21	[  0]	GGET 	 16		44	; slot16 = _env["love"]
		 22	[  0]	TGETS	 16	16	43	; slot16 = love.graphics
		 23	[  0]	TGETS	 16	16	42	; slot16 = love.graphics.newImage
		 24	[  0]	MOV  	 17		12	; slot17 = require.getIconPath
		 25	[  0]	CALL 	 14	3	3	; slot14, slot15 = pcall(slot15, love.graphics.newImage)
		 26	[  0]	ISF  	   		14	; if not pcall
		 27	[  0]	JMP  	 16		2	; 	goto 30
		 28	[  0]	ISTC 	 13		15	; slot13 = slot15; if slot15
		 29	[  0]	JMP  	 16		1	; 	goto 31
		 30	[  0]	KPRI 	 13		1	; slot13 = false
		 31	[  0]	ISF  	   		13	; if not slot13
		 32	[  0]	JMP  	 16		5	; 	goto 38
		 33	[  0]	MOV  	 18		13	; slot18 = slot13
		 34	[  0]	TGETS	 16	13	41	; slot16 = slot13.setFilter
		 35	[  0]	KSTR 	 19		40	; slot19 = "nearest"
		 36	[  0]	KSTR 	 20		40	; slot20 = "nearest"
		 37	[  0]	CALL 	 16	1	4	;  = <unknown table>.setFilter(require.getIconPath, slot18, slot19)
		 38	[  0]	UGET 	 16		0	; slot16 = uv0"unknwon"
		 39	[  0]	TSETV	 13	16	12	; uv0"unknown"[require.getIconPath] = slot13
		 40	[  0]	IST  	   		13	; if slot13
		 41	[  0]	JMP  	 14		1	; 	goto 43
		 42	[  0]	RET0 	  0		1	; return
		 43	[  0]	MOV  	 16		13	; slot16 = slot13
		 44	[  0]	TGETS	 14	13	39	; slot14 = slot13.getDimensions
		 45	[  0]	CALL 	 14	3	2	; slot14, slot15 = <unknown table>.getDimensions(slot15)
		 46	[  0]	GGET 	 16		44	; slot16 = _env["love"]
		 47	[  0]	TGETS	 16	16	43	; slot16 = love.graphics
		 48	[  0]	TGETS	 16	16	38	; slot16 = love.graphics.transformPoint
		 49	[  0]	KSHORT	 18		0	; slot18 = 0
		 50	[  0]	KSHORT	 19		0	; slot19 = 0
		 51	[  0]	CALL 	 16	3	3	; slot16, slot17 = love.graphics.transformPoint(require.getIconPath, slot18)
		 52	[  0]	GGET 	 18		44	; slot18 = _env["love"]
		 53	[  0]	TGETS	 18	18	43	; slot18 = love.graphics
		 54	[  0]	TGETS	 18	18	38	; slot18 = love.graphics.transformPoint
		 55	[  0]	KSHORT	 20		1	; slot20 = 1
		 56	[  0]	KSHORT	 21		1	; slot21 = 1
		 57	[  0]	CALL 	 18	3	3	; slot18, slot19 = love.graphics.transformPoint(slot19, slot20)
		 58	[  0]	GGET 	 20		44	; slot20 = _env["love"]
		 59	[  0]	TGETS	 20	20	43	; slot20 = love.graphics
		 60	[  0]	TGETS	 20	20	37	; slot20 = love.graphics.getCanvas
		 61	[  0]	CALL 	 20	2	1	; slot20 = love.graphics.getCanvas()
		 62	[  0]	ISF  	   		20	; if not love.graphics.getCanvas
		 63	[  0]	JMP  	 21		8	; 	goto 72
		 64	[  0]	TGETS	 21	20	36	; slot21 = love.graphics.getCanvas.getDPIScale
		 65	[  0]	ISF  	   		21	; if not love.graphics.getCanvas.getDPIScale
		 66	[  0]	JMP  	 22		5	; 	goto 72
		 67	[  0]	MOV  	 23		20	; slot23 = love.graphics.getCanvas
		 68	[  0]	TGETS	 21	20	36	; slot21 = love.graphics.getCanvas.getDPIScale
		 69	[  0]	CALL 	 21	2	2	; slot21 = love.graphics.getCanvas.getDPIScale(slot22)
		 70	[  0]	IST  	   		21	; if love.graphics.getCanvas.getDPIScale
		 71	[  0]	JMP  	 22		4	; 	goto 76
		 72	[  0]	GGET 	 21		44	; slot21 = _env["love"]
		 73	[  0]	TGETS	 21	21	43	; slot21 = love.graphics
		 74	[  0]	TGETS	 21	21	36	; slot21 = love.graphics.getDPIScale
		 75	[  0]	CALL 	 21	2	1	; slot21 = love.graphics.getDPIScale()
		 76	[  0]	GGET 	 22		35	; slot22 = _env["math"]
		 77	[  0]	TGETS	 22	22	34	; slot22 = math.max
		 78	[  0]	KNUM 	 24		0	; slot24 = 0.01
		 79	[  0]	GGET 	 25		35	; slot25 = _env["math"]
		 80	[  0]	TGETS	 25	25	33	; slot25 = math.abs
		 81	[  0]	SUBVV	 27	18	16	; slot27 = love.graphics.transformPoint - love.graphics.transformPoint
		 82	[  0]	CALL 	 25	2	2	; slot25 = math.abs(slot26)
		 83	[  0]	MULVV	 25	25	21	; slot25 = math.abs * love.graphics.getDPIScale
		 84	[  0]	CALL 	 22	2	3	; slot22 = math.max(love.graphics.getCanvas, slot24)
		 85	[  0]	GGET 	 23		35	; slot23 = _env["math"]
		 86	[  0]	TGETS	 23	23	34	; slot23 = math.max
		 87	[  0]	KNUM 	 25		0	; slot25 = 0.01
		 88	[  0]	GGET 	 26		35	; slot26 = _env["math"]
		 89	[  0]	TGETS	 26	26	33	; slot26 = math.abs
		 90	[  0]	SUBVV	 28	19	17	; slot28 = slot19 - require.getIconPath
		 91	[  0]	CALL 	 26	2	2	; slot26 = math.abs(slot27)
		 92	[  0]	MULVV	 26	26	21	; slot26 = math.abs * love.graphics.getDPIScale
		 93	[  0]	CALL 	 23	2	3	; slot23 = math.max(slot24, slot25)
		 94	[  0]	GGET 	 24		35	; slot24 = _env["math"]
		 95	[  0]	TGETS	 24	24	34	; slot24 = math.max
		 96	[  0]	KNUM 	 26		0	; slot26 = 0.01
		 97	[  0]	GGET 	 27		32	; slot27 = _env["tonumber"]
		 98	[  0]	MOV  	 29		9	; slot29 = slot9
		 99	[  0]	CALL 	 27	2	2	; slot27 = tonumber(slot28)
		100	[  0]	IST  	   		27	; if tonumber
		101	[  0]	JMP  	 28		1	; 	goto 103
		102	[  0]	KSHORT	 27		1	; slot27 = 1
		103	[  0]	CALL 	 24	2	3	; slot24 = math.max(slot25, slot26)
		104	[  0]	MOV  	  9		24	; slot9 = math.max
		105	[  0]	GGET 	 24		35	; slot24 = _env["math"]
		106	[  0]	TGETS	 24	24	31	; slot24 = math.floor
		107	[  0]	GGET 	 26		35	; slot26 = _env["math"]
		108	[  0]	TGETS	 26	26	30	; slot26 = math.min
		109	[  0]	MOV  	 28		22	; slot28 = math.max
		110	[  0]	MOV  	 29		23	; slot29 = math.max
		111	[  0]	CALL 	 26	2	3	; slot26 = math.min(slot27, math.max)
		112	[  0]	DIVVV	 26	26	9	; slot26 = math.min / math.max
		113	[  0]	MULVN	 26	26	1	; slot26 = slot26 * 1000000
		114	[  0]	ADDVN	 26	26	2	; slot26 = slot26 + 0.5
		115	[  0]	CALL 	 24	2	2	; slot24 = math.floor(slot25)
		116	[  0]	DIVVN	 24	24	1	; slot24 = math.floor / 1000000
		117	[  0]	GGET 	 25		49	; slot25 = _env["require"]
		118	[  0]	KSTR 	 27		29	; slot27 = "src.game.unit_abilities"
		119	[  0]	CALL 	 25	2	2	; slot25 = require(slot26)
		120	[  0]	TGETS	 25	25	28	; slot25 = require.shrink_imprint
		121	[  0]	TGETS	 25	25	27	; slot25 = require.shrink_imprint.snapVisualScale
		122	[  0]	GGET 	 27		35	; slot27 = _env["math"]
		123	[  0]	TGETS	 27	27	34	; slot27 = math.max
		124	[  0]	MOV  	 29		14	; slot29 = <unknown table>.getDimensions
		125	[  0]	MOV  	 30		15	; slot30 = slot15
		126	[  0]	CALL 	 27	2	3	; slot27 = math.max(math.max, <unknown table>.getDimensions)
		127	[  0]	MULVN	 27	27	3	; slot27 = math.max * 2
		128	[  0]	DIVVV	 27	4	27	; slot27 = slot4 / slot27
		129	[  0]	KSHORT	 28		2	; slot28 = 2
		130	[  0]	MOV  	 29		24	; slot29 = slot24
		131	[  0]	CALL 	 25	2	4	; slot25 = require.shrink_imprint.snapVisualScale(slot26, slot27, slot28)
		132	[  0]	MULNV	 25	25	3	; slot25 = 2 * require.shrink_imprint.snapVisualScale
		133	[  0]	MULVV	 26	14	25	; slot26 = <unknown table>.getDimensions * slot25
		134	[  0]	MULVV	 27	15	25	; slot27 = slot15 * slot25
		135	[  0]	ADDVV	 28	2	4	; slot28 = slot2 + slot4
		136	[  0]	SUBVV	 28	28	26	; slot28 = slot28 - slot26
		137	[  0]	SUBVV	 29	4	27	; slot29 = slot4 - slot27
		138	[  0]	MULVN	 29	29	2	; slot29 = slot29 * 0.5
		139	[  0]	ADDVV	  3	3	29	; slot3 = slot3 + slot29
		140	[  0]	MOV  	  2		28	; slot2 = slot28
		141	[  0]	ISNEN	  9		4	; if math.max ~= 1
		142	[  0]	JMP  	 28		24	; 	goto 167
		143	[  0]	GGET 	 28		44	; slot28 = _env["love"]
		144	[  0]	TGETS	 28	28	43	; slot28 = love.graphics
		145	[  0]	TGETS	 28	28	38	; slot28 = love.graphics.transformPoint
		146	[  0]	MOV  	 30		2	; slot30 = slot2
		147	[  0]	MOV  	 31		3	; slot31 = slot3
		148	[  0]	CALL 	 28	3	3	; slot28, slot29 = love.graphics.transformPoint(slot29, slot30)
		149	[  0]	GGET 	 30		44	; slot30 = _env["love"]
		150	[  0]	TGETS	 30	30	43	; slot30 = love.graphics
		151	[  0]	TGETS	 30	30	26	; slot30 = love.graphics.inverseTransformPoint
		152	[  0]	GGET 	 32		35	; slot32 = _env["math"]
		153	[  0]	TGETS	 32	32	31	; slot32 = math.floor
		154	[  0]	MULVV	 34	28	21	; slot34 = love.graphics.transformPoint * love.graphics.getDPIScale
		155	[  0]	ADDVN	 34	34	2	; slot34 = slot34 + 0.5
		156	[  0]	CALL 	 32	2	2	; slot32 = math.floor(slot33)
		157	[  0]	DIVVV	 32	32	21	; slot32 = math.floor / love.graphics.getDPIScale
		158	[  0]	GGET 	 33		35	; slot33 = _env["math"]
		159	[  0]	TGETS	 33	33	31	; slot33 = math.floor
		160	[  0]	MULVV	 35	29	21	; slot35 = slot29 * love.graphics.getDPIScale
		161	[  0]	ADDVN	 35	35	2	; slot35 = slot35 + 0.5
		162	[  0]	CALL 	 33	2	2	; slot33 = math.floor(slot34)
		163	[  0]	DIVVV	 33	33	21	; slot33 = math.floor / love.graphics.getDPIScale
		164	[  0]	CALL 	 30	3	3	; slot30, slot31 = love.graphics.inverseTransformPoint(slot31, slot32)
		165	[  0]	MOV  	  3		31	; slot3 = slot31
		166	[  0]	MOV  	  2		30	; slot2 = love.graphics.inverseTransformPoint
		167	[  0]	ISFC 	 28		7	; slot28 = slot7; if not slot7
		168	[  0]	JMP  	 28		19	; 	goto 188
		169	[  0]	ISFC 	 28		8	; slot28 = slot8; if not slot8
		170	[  0]	JMP  	 28		17	; 	goto 188
		171	[  0]	SUBVN	 28	2	3	; slot28 = love.graphics.inverseTransformPoint - 2
		172	[  0]	ISGT 	 28		7	; if slot28 > slot7
		173	[  0]	JMP  	 28		11	; 	goto 185
		174	[  0]	ADDVV	 28	2	26	; slot28 = love.graphics.inverseTransformPoint + slot26
		175	[  0]	ADDVN	 28	28	3	; slot28 = slot28 + 2
		176	[  0]	ISGT 	  7		28	; if slot7 > slot28
		177	[  0]	JMP  	 28		7	; 	goto 185
		178	[  0]	SUBVN	 28	3	3	; slot28 = slot3 - 2
		179	[  0]	ISGT 	 28		8	; if slot28 > slot8
		180	[  0]	JMP  	 28		4	; 	goto 185
		181	[  0]	ADDVV	 28	3	27	; slot28 = slot3 + slot27
		182	[  0]	ADDVN	 28	28	3	; slot28 = slot28 + 2
		183	[  0]	ISLE 	  8		28	; if slot8 <= slot28
		184	[  0]	JMP  	 28		2	; 	goto 187
		185	[  0]	KPRI 	 28		1	; slot28 = false
		186	[  0]	JMP  	 29		1	; 	goto 188
		187	[  0]	KPRI 	 28		2	; slot28 = true
		188	[  0]	ISFC 	 29		6	; slot29 = slot6; if not slot6
		189	[  0]	JMP  	 29		5	; 	goto 195
		190	[  0]	TGETS	 29	6	25	; slot29 = slot6.imprintPanel
		191	[  0]	ISF  	   		29	; if not <unknown table>.imprintPanel
		192	[  0]	JMP  	 30		2	; 	goto 195
		193	[  0]	TGETS	 29	6	25	; slot29 = slot6.imprintPanel
		194	[  0]	TGETS	 29	29	24	; slot29 = <unknown table>.imprintPanel.randomOption
		195	[  0]	ISF  	   		29	; if not <unknown table>.imprintPanel.randomOption
		196	[  0]	JMP  	 30		3	; 	goto 200
		197	[  0]	TGETS	 30	29	23	; slot30 = <unknown table>.imprintPanel.randomOption.outlineColor
		198	[  0]	IST  	   		30	; if <unknown table>.imprintPanel.randomOption.outlineColor
		199	[  0]	JMP  	 31		1	; 	goto 201
		200	[  0]	TDUP 	 30		22	; slot30 = copy table#k22
		201	[  0]	ISTC 	 31		5	; slot31 = slot5; if slot5
		202	[  0]	JMP  	 31		1	; 	goto 204
		203	[  0]	KSHORT	 31		1	; slot31 = 1
		204	[  0]	UGET 	 32		1	; slot32 = uv1"unknwon"
		205	[  0]	CALL 	 32	2	1	; slot32 = uv1"unknown"()
		206	[  0]	MOV  	 35		32	; slot35 = uv1"unknown"
		207	[  0]	TGETS	 33	32	21	; slot33 = uv1"unknown".send
		208	[  0]	KSTR 	 36		20	; slot36 = "texelStep"
		209	[  0]	TNEW 	 37		3	; slot37 = new table( array: 3, dict: 1)
		210	[  0]	DIVNV	 38	14	4	; slot38 = 1 / <unknown table>.getDimensions
		211	[  0]	TSETB	 38	37	1	; slot37[1] = slot38
		212	[  0]	DIVNV	 38	15	4	; slot38 = 1 / slot15
		213	[  0]	TSETB	 38	37	2	; slot37[2] = slot38
		214	[  0]	CALL 	 33	1	4	;  = uv1"unknown".send(slot34, uv1"unknown", slot36)
		215	[  0]	MOV  	 35		32	; slot35 = uv1"unknown"
		216	[  0]	TGETS	 33	32	21	; slot33 = uv1"unknown".send
		217	[  0]	KSTR 	 36		23	; slot36 = "outlineColor"
		218	[  0]	TNEW 	 37		5	; slot37 = new table( array: 5, dict: 1)
		219	[  0]	TGETB	 38	30	1	; slot38 = slot30[1]
		220	[  0]	TSETB	 38	37	1	; slot37[1] = slot38
		221	[  0]	TGETB	 38	30	2	; slot38 = slot30[2]
		222	[  0]	TSETB	 38	37	2	; slot37[2] = slot38
		223	[  0]	TGETB	 38	30	3	; slot38 = slot30[3]
		224	[  0]	TSETB	 38	37	3	; slot37[3] = slot38
		225	[  0]	TGETB	 38	30	4	; slot38 = slot30[4]
		226	[  0]	IST  	   		38	; if slot38
		227	[  0]	JMP  	 39		1	; 	goto 229
		228	[  0]	KSHORT	 38		1	; slot38 = 1
		229	[  0]	MULVV	 38	38	31	; slot38 = slot38 * slot31
		230	[  0]	TSETB	 38	37	4	; slot37[4] = slot38
		231	[  0]	CALL 	 33	1	4	;  = uv1"unknown".send(slot34, uv1"unknown", slot36)
		232	[  0]	MOV  	 35		32	; slot35 = uv1"unknown"
		233	[  0]	TGETS	 33	32	21	; slot33 = uv1"unknown".send
		234	[  0]	KSTR 	 36		19	; slot36 = "threshold"
		235	[  0]	KNUM 	 37		5	; slot37 = 0.05
		236	[  0]	CALL 	 33	1	4	;  = uv1"unknown".send(slot34, uv1"unknown", slot36)
		237	[  0]	MOV  	 35		32	; slot35 = uv1"unknown"
		238	[  0]	TGETS	 33	32	21	; slot33 = uv1"unknown".send
		239	[  0]	KSTR 	 36		18	; slot36 = "radiusPx"
		240	[  0]	KNUM 	 37		6	; slot37 = 1.15
		241	[  0]	CALL 	 33	1	4	;  = uv1"unknown".send(slot34, uv1"unknown", slot36)
		242	[  0]	GGET 	 33		44	; slot33 = _env["love"]
		243	[  0]	TGETS	 33	33	43	; slot33 = love.graphics
		244	[  0]	TGETS	 33	33	17	; slot33 = love.graphics.push
		245	[  0]	KSTR 	 35		16	; slot35 = "all"
		246	[  0]	CALL 	 33	1	2	;  = love.graphics.push(slot34)
		247	[  0]	GGET 	 33		44	; slot33 = _env["love"]
		248	[  0]	TGETS	 33	33	43	; slot33 = love.graphics
		249	[  0]	TGETS	 33	33	15	; slot33 = love.graphics.setBlendMode
		250	[  0]	KSTR 	 35		14	; slot35 = "alpha"
		251	[  0]	KSTR 	 36		13	; slot36 = "alphamultiply"
		252	[  0]	CALL 	 33	1	3	;  = love.graphics.setBlendMode(slot34, slot35)
		253	[  0]	GGET 	 33		44	; slot33 = _env["love"]
		254	[  0]	TGETS	 33	33	43	; slot33 = love.graphics
		255	[  0]	TGETS	 33	33	12	; slot33 = love.graphics.setColor
		256	[  0]	KSHORT	 35		1	; slot35 = 1
		257	[  0]	KSHORT	 36		1	; slot36 = 1
		258	[  0]	KSHORT	 37		1	; slot37 = 1
		259	[  0]	MOV  	 38		31	; slot38 = slot31
		260	[  0]	CALL 	 33	1	5	;  = love.graphics.setColor(slot34, slot35, slot36, slot37)
		261	[  0]	GGET 	 33		44	; slot33 = _env["love"]
		262	[  0]	TGETS	 33	33	43	; slot33 = love.graphics
		263	[  0]	TGETS	 33	33	11	; slot33 = love.graphics.setShader
		264	[  0]	MOV  	 35		32	; slot35 = uv1"unknown"
		265	[  0]	CALL 	 33	1	2	;  = love.graphics.setShader(slot34)
		266	[  0]	GGET 	 33		44	; slot33 = _env["love"]
		267	[  0]	TGETS	 33	33	43	; slot33 = love.graphics
		268	[  0]	TGETS	 33	33	10	; slot33 = love.graphics.draw
		269	[  0]	MOV  	 35		13	; slot35 = slot13
		270	[  0]	MOV  	 36		2	; slot36 = love.graphics.inverseTransformPoint
		271	[  0]	MOV  	 37		3	; slot37 = slot3
		272	[  0]	KSHORT	 38		0	; slot38 = 0
		273	[  0]	MOV  	 39		25	; slot39 = slot25
		274	[  0]	MOV  	 40		25	; slot40 = slot25
		275	[  0]	CALL 	 33	1	7	;  = love.graphics.draw(slot34, slot35, love.graphics.inverseTransformPoint, slot37, slot38, slot39)
		276	[  0]	GGET 	 33		44	; slot33 = _env["love"]
		277	[  0]	TGETS	 33	33	43	; slot33 = love.graphics
		278	[  0]	TGETS	 33	33	11	; slot33 = love.graphics.setShader
		279	[  0]	CALL 	 33	1	1	;  = love.graphics.setShader()
		280	[  0]	GGET 	 33		44	; slot33 = _env["love"]
		281	[  0]	TGETS	 33	33	43	; slot33 = love.graphics
		282	[  0]	TGETS	 33	33	10	; slot33 = love.graphics.draw
		283	[  0]	MOV  	 35		13	; slot35 = slot13
		284	[  0]	MOV  	 36		2	; slot36 = love.graphics.inverseTransformPoint
		285	[  0]	MOV  	 37		3	; slot37 = slot3
		286	[  0]	KSHORT	 38		0	; slot38 = 0
		287	[  0]	MOV  	 39		25	; slot39 = slot25
		288	[  0]	MOV  	 40		25	; slot40 = slot25
		289	[  0]	CALL 	 33	1	7	;  = love.graphics.draw(slot34, slot35, love.graphics.inverseTransformPoint, slot37, slot38, slot39)
		290	[  0]	ISF  	   		28	; if not slot28
		291	[  0]	JMP  	 33		24	; 	goto 316
		292	[  0]	GGET 	 33		44	; slot33 = _env["love"]
		293	[  0]	TGETS	 33	33	43	; slot33 = love.graphics
		294	[  0]	TGETS	 33	33	15	; slot33 = love.graphics.setBlendMode
		295	[  0]	KSTR 	 35		9	; slot35 = "add"
		296	[  0]	KSTR 	 36		13	; slot36 = "alphamultiply"
		297	[  0]	CALL 	 33	1	3	;  = love.graphics.setBlendMode(slot34, slot35)
		298	[  0]	GGET 	 33		44	; slot33 = _env["love"]
		299	[  0]	TGETS	 33	33	43	; slot33 = love.graphics
		300	[  0]	TGETS	 33	33	12	; slot33 = love.graphics.setColor
		301	[  0]	KSHORT	 35		1	; slot35 = 1
		302	[  0]	KSHORT	 36		1	; slot36 = 1
		303	[  0]	KSHORT	 37		1	; slot37 = 1
		304	[  0]	MULNV	 38	31	7	; slot38 = 0.22 * slot31
		305	[  0]	CALL 	 33	1	5	;  = love.graphics.setColor(slot34, slot35, slot36, slot37)
		306	[  0]	GGET 	 33		44	; slot33 = _env["love"]
		307	[  0]	TGETS	 33	33	43	; slot33 = love.graphics
		308	[  0]	TGETS	 33	33	10	; slot33 = love.graphics.draw
		309	[  0]	MOV  	 35		13	; slot35 = slot13
		310	[  0]	MOV  	 36		2	; slot36 = love.graphics.inverseTransformPoint
		311	[  0]	MOV  	 37		3	; slot37 = slot3
		312	[  0]	KSHORT	 38		0	; slot38 = 0
		313	[  0]	MOV  	 39		25	; slot39 = slot25
		314	[  0]	MOV  	 40		25	; slot40 = slot25
		315	[  0]	CALL 	 33	1	7	;  = love.graphics.draw(slot34, slot35, love.graphics.inverseTransformPoint, slot37, slot38, slot39)
		316	[  0]	GGET 	 33		44	; slot33 = _env["love"]
		317	[  0]	TGETS	 33	33	43	; slot33 = love.graphics
		318	[  0]	TGETS	 33	33	8	; slot33 = love.graphics.pop
		319	[  0]	CALL 	 33	1	1	;  = love.graphics.pop()
		320	[  0]	ISF  	   		28	; if not slot28
		321	[  0]	JMP  	 33		13	; 	goto 335
		322	[  0]	TDUP 	 33		7	; slot33 = copy table#k7
		323	[  0]	TSETS	 11	33	6	; slot33.factionId = require.getForChoice
		324	[  0]	TDUP 	 34		5	; slot34 = copy table#k5
		325	[  0]	SUBVN	 35	2	3	; slot35 = love.graphics.inverseTransformPoint - 2
		326	[  0]	TSETS	 35	34	4	; slot34.x = slot35
		327	[  0]	SUBVN	 35	3	3	; slot35 = slot3 - 2
		328	[  0]	TSETS	 35	34	3	; slot34.y = slot35
		329	[  0]	ADDVN	 35	26	8	; slot35 = slot26 + 4
		330	[  0]	TSETS	 35	34	2	; slot34.w = slot35
		331	[  0]	ADDVN	 35	27	8	; slot35 = slot27 + 4
		332	[  0]	TSETS	 35	34	1	; slot34.h = slot35
		333	[  0]	TSETS	 34	33	0	; slot33.anchor = slot34
		334	[  0]	RET1 	 33		2	; return slot33
		335	[  0]	RET0 	  0		1	; return
	131	[  0]	TSETS	 12	8	139	; slot8.drawChoice = slot12
	132	[  0]	MOV  	  7		8	; slot7 = slot8
	133	[  0]	UCLO 	  8		0	; nil uvs >= r8; goto 134
	134	[  0]	KPRI 	  8		0	; slot8 = nil
	135	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
	136	[  0]	FNEW 	 10		137	; N/A:0-0: 1 args, 0 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  2	[  0]	KSHORT	  2		1	; slot2 = 1
		  3	[  0]	LEN  	  3		0	; slot3 = #slot0
		  4	[  0]	ISGT 	  2		3	; if slot2 > slot3
		  5	[  0]	JMP  	  3		32	; 	goto 38
		  6	[  0]	LOOP 	  3		31	; Loop start, exit goto 38
		  7	[  0]	MOV  	  5		0	; slot5 = slot0
		  8	[  0]	TGETS	  3	0	3	; slot3 = slot0.sub
		  9	[  0]	MOV  	  6		2	; slot6 = slot2
		 10	[  0]	CALL 	  3	2	3	; slot3 = <unknown table>.sub(slot4, slot5)
		 11	[  0]	MOV  	  5		3	; slot5 = slot3
		 12	[  0]	TGETS	  3	3	2	; slot3 = slot3.match
		 13	[  0]	KSTR 	  6		1	; slot6 = "^%{[%w_%-]+%.png%}"
		 14	[  0]	CALL 	  3	2	3	; slot3 = <unknown table>.match(slot4, slot5)
		 15	[  0]	IST  	   		3	; if slot3
		 16	[  0]	JMP  	  4		15	; 	goto 32
		 17	[  0]	MOV  	  5		0	; slot5 = slot0
		 18	[  0]	TGETS	  3	0	3	; slot3 = slot0.sub
		 19	[  0]	MOV  	  6		2	; slot6 = slot2
		 20	[  0]	CALL 	  3	2	3	; slot3 = <unknown table>.sub(slot4, slot5)
		 21	[  0]	MOV  	  5		3	; slot5 = slot3
		 22	[  0]	TGETS	  3	3	2	; slot3 = slot3.match
		 23	[  0]	KSTR 	  6		0	; slot6 = "^[%z-\xc2-\xf4][\x80-\xbf]*"
		 24	[  0]	CALL 	  3	2	3	; slot3 = <unknown table>.match(slot4, slot5)
		 25	[  0]	IST  	   		3	; if slot3
		 26	[  0]	JMP  	  4		5	; 	goto 32
		 27	[  0]	MOV  	  5		0	; slot5 = slot0
		 28	[  0]	TGETS	  3	0	3	; slot3 = slot0.sub
		 29	[  0]	MOV  	  6		2	; slot6 = slot2
		 30	[  0]	MOV  	  7		2	; slot7 = slot2
		 31	[  0]	CALL 	  3	2	4	; slot3 = <unknown table>.sub(slot4, slot5, slot6)
		 32	[  0]	LEN  	  4		1	; slot4 = #slot1
		 33	[  0]	ADDVN	  4	4	0	; slot4 = slot4 + 1
		 34	[  0]	TSETV	  3	1	4	; slot1[slot4] = slot3
		 35	[  0]	LEN  	  4		3	; slot4 = #slot3
		 36	[  0]	ADDVV	  2	2	4	; slot2 = slot2 + slot4
		 37	[  0]	JMP  	  3		-35	; 	goto 3
		 38	[  0]	RET1 	  1		2	; return slot1
	137	[  0]	FNEW 	 11		136	; N/A:0-0: 2 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  2		5	; slot2 = new table( array: 5, dict: 1)
		  2	[  0]	TGETB	  3	0	1	; slot3 = slot0[1]
		  3	[  0]	TSETB	  3	2	1	; slot2[1] = slot3
		  4	[  0]	TGETB	  3	0	2	; slot3 = slot0[2]
		  5	[  0]	TSETB	  3	2	2	; slot2[2] = slot3
		  6	[  0]	TGETB	  3	0	3	; slot3 = slot0[3]
		  7	[  0]	TSETB	  3	2	3	; slot2[3] = slot3
		  8	[  0]	TGETB	  3	0	4	; slot3 = slot0[4]
		  9	[  0]	IST  	   		3	; if slot3
		 10	[  0]	JMP  	  4		1	; 	goto 12
		 11	[  0]	KSHORT	  3		1	; slot3 = 1
		 12	[  0]	MULVV	  3	3	1	; slot3 = slot3 * slot1
		 13	[  0]	TSETB	  3	2	4	; slot2[4] = slot3
		 14	[  0]	RET1 	  2		2	; return slot2
	138	[  0]	FNEW 	 12		135	; N/A:0-0: 8 args, 2 upvalues, 36 slots
		
		;;;; constant tables ;;;;
		ktable#19 = [
			#1: 0.1294,
			#2: 0.098,
			#3: 0.1333,
			#4: 1,
			]
		
		
		ktable#21 = [
			#1: 1,
			#2: 1,
			#3: 1,
			#4: 1,
			]
		
		
		ktable#23 = [
			#1: 1,
			#2: 1,
			#3: 1,
			#4: 1,
			]
		
		
		ktable#54 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		7	; if slot7
		  2	[  0]	JMP  	  8		1	; 	goto 4
		  3	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
		  4	[  0]	GGET 	  8		73	; slot8 = _env["tostring"]
		  5	[  0]	ISTC 	 10		2	; slot10 = slot2; if slot2
		  6	[  0]	JMP  	 10		1	; 	goto 8
		  7	[  0]	KSTR 	 10		72	; slot10 = ""
		  8	[  0]	CALL 	  8	2	2	; slot8 = tostring(slot9)
		  9	[  0]	MOV  	  2		8	; slot2 = tostring
		 10	[  0]	TGETS	  8	7	71	; slot8 = slot7.font
		 11	[  0]	IST  	   		8	; if <unknown table>.font
		 12	[  0]	JMP  	  9		4	; 	goto 17
		 13	[  0]	GGET 	  8		70	; slot8 = _env["love"]
		 14	[  0]	TGETS	  8	8	69	; slot8 = love.graphics
		 15	[  0]	TGETS	  8	8	68	; slot8 = love.graphics.getFont
		 16	[  0]	CALL 	  8	2	1	; slot8 = love.graphics.getFont()
		 17	[  0]	TGETS	  9	7	67	; slot9 = slot7.scale
		 18	[  0]	IST  	   		9	; if <unknown table>.scale
		 19	[  0]	JMP  	 10		1	; 	goto 21
		 20	[  0]	KSHORT	  9		1	; slot9 = 1
		 21	[  0]	TGETS	 10	7	66	; slot10 = slot7.lineGapPx
		 22	[  0]	IST  	   		10	; if <unknown table>.lineGapPx
		 23	[  0]	JMP  	 11		1	; 	goto 25
		 24	[  0]	KSHORT	 10		0	; slot10 = 0
		 25	[  0]	TGETS	 11	7	65	; slot11 = slot7.now
		 26	[  0]	IST  	   		11	; if <unknown table>.now
		 27	[  0]	JMP  	 12		4	; 	goto 32
		 28	[  0]	GGET 	 11		70	; slot11 = _env["love"]
		 29	[  0]	TGETS	 11	11	64	; slot11 = love.timer
		 30	[  0]	TGETS	 11	11	63	; slot11 = love.timer.getTime
		 31	[  0]	CALL 	 11	2	1	; slot11 = love.timer.getTime()
		 32	[  0]	GGET 	 12		62	; slot12 = _env["tonumber"]
		 33	[  0]	TGETS	 14	7	61	; slot14 = slot7.typeCharsPerSec
		 34	[  0]	CALL 	 12	2	2	; slot12 = tonumber(slot13)
		 35	[  0]	IST  	   		12	; if tonumber
		 36	[  0]	JMP  	 13		1	; 	goto 38
		 37	[  0]	KSHORT	 12		0	; slot12 = 0
		 38	[  0]	ISF  	   		0	; if not slot0
		 39	[  0]	JMP  	 13		24	; 	goto 64
		 40	[  0]	TGETS	 13	0	60	; slot13 = slot0.key
		 41	[  0]	ISNEV	 13		1	; if <unknown table>.key ~= slot1
		 42	[  0]	JMP  	 13		21	; 	goto 64
		 43	[  0]	TGETS	 13	0	59	; slot13 = slot0.text
		 44	[  0]	ISNEV	 13		2	; if <unknown table>.text ~= tostring
		 45	[  0]	JMP  	 13		18	; 	goto 64
		 46	[  0]	TGETS	 13	0	71	; slot13 = slot0.font
		 47	[  0]	ISNEV	 13		8	; if <unknown table>.font ~= love.graphics.getFont
		 48	[  0]	JMP  	 13		15	; 	goto 64
		 49	[  0]	TGETS	 13	0	58	; slot13 = slot0.width
		 50	[  0]	ISNEV	 13		5	; if <unknown table>.width ~= slot5
		 51	[  0]	JMP  	 13		12	; 	goto 64
		 52	[  0]	TGETS	 13	0	57	; slot13 = slot0.height
		 53	[  0]	ISNEV	 13		6	; if <unknown table>.height ~= slot6
		 54	[  0]	JMP  	 13		9	; 	goto 64
		 55	[  0]	TGETS	 13	0	67	; slot13 = slot0.scale
		 56	[  0]	ISNEV	 13		9	; if <unknown table>.scale ~= slot9
		 57	[  0]	JMP  	 13		6	; 	goto 64
		 58	[  0]	TGETS	 13	0	56	; slot13 = slot0.gap
		 59	[  0]	ISNEV	 13		10	; if <unknown table>.gap ~= slot10
		 60	[  0]	JMP  	 13		3	; 	goto 64
		 61	[  0]	TGETS	 13	0	55	; slot13 = slot0.cps
		 62	[  0]	ISEQV	 13		12	; if <unknown table>.cps == slot12
		 63	[  0]	JMP  	 13		120	; 	goto 184
		 64	[  0]	TDUP 	 13		54	; slot13 = copy table#k54
		 65	[  0]	TSETS	  1	13	60	; slot13.key = slot1
		 66	[  0]	TSETS	  2	13	59	; slot13.text = tostring
		 67	[  0]	TSETS	  8	13	71	; slot13.font = love.graphics.getFont
		 68	[  0]	TSETS	  5	13	58	; slot13.width = slot5
		 69	[  0]	TSETS	  6	13	57	; slot13.height = slot6
		 70	[  0]	TSETS	  9	13	67	; slot13.scale = slot9
		 71	[  0]	TSETS	 10	13	56	; slot13.gap = slot10
		 72	[  0]	TSETS	 12	13	55	; slot13.cps = slot12
		 73	[  0]	TSETS	 11	13	53	; slot13.started = love.timer.getTime
		 74	[  0]	TNEW 	 14		0	; slot14 = new table( array: 0, dict: 1)
		 75	[  0]	TSETS	 14	13	52	; slot13.lines = slot14
		 76	[  0]	TNEW 	 14		0	; slot14 = new table( array: 0, dict: 1)
		 77	[  0]	TSETS	 14	13	51	; slot13.units = slot14
		 78	[  0]	MOV  	  0		13	; slot0 = slot13
		 79	[  0]	MOV  	 13		2	; slot13 = tostring
		 80	[  0]	KSTR 	 14		50	; slot14 = "
		"
		 81	[  0]	CAT  	 13	13	14	; slot13 = tostring .. slot14
		 82	[  0]	MOV  	 15		13	; slot15 = slot13
		 83	[  0]	TGETS	 13	13	49	; slot13 = slot13.gmatch
		 84	[  0]	KSTR 	 16		48	; slot16 = "(.-)
		"
		 85	[  0]	CALL 	 13	4	3	; slot13, slot14, slot15 = <unknown table>.gmatch(slot14, slot15)
		 86	[  0]	JMP  	 16		23	; 	goto 110
		 87	[  0]	GGET 	 17		47	; slot17 = _env["ipairs"]
		 88	[  0]	TGETS	 19	7	46	; slot19 = slot7.wrap
		 89	[  0]	MOV  	 21		16	; slot21 = slot16
		 90	[  0]	MOV  	 22		5	; slot22 = slot5
		 91	[  0]	MOV  	 23		7	; slot23 = slot7
		 92	[  0]	CALL 	 19	0	4	; MULTRES = <unknown table>.wrap(slot20, slot21, slot22)
		 93	[  0]	CALLM	 17	4	0	; slot17, slot18, slot19 = ipairs(, ...MULTRES)
		 94	[  0]	JMP  	 20		13	; 	goto 108
		 95	[  0]	TGETS	 22	0	52	; slot22 = slot0.lines
		 96	[  0]	TGETS	 23	0	52	; slot23 = slot0.lines
		 97	[  0]	LEN  	 23		23	; slot23 = #<unknown table>.lines
		 98	[  0]	ADDVN	 23	23	0	; slot23 = slot23 + 1
		 99	[  0]	TSETV	 21	22	23	; <unknown table>.lines[slot23] = slot21
		100	[  0]	TGETS	 22	0	51	; slot22 = slot0.units
		101	[  0]	TGETS	 23	0	51	; slot23 = slot0.units
		102	[  0]	LEN  	 23		23	; slot23 = #<unknown table>.units
		103	[  0]	ADDVN	 23	23	0	; slot23 = slot23 + 1
		104	[  0]	UGET 	 24		0	; slot24 = uv0"unknwon"
		105	[  0]	MOV  	 26		21	; slot26 = slot21
		106	[  0]	CALL 	 24	2	2	; slot24 = uv0"unknown"(slot25)
		107	[  0]	TSETV	 24	22	23	; <unknown table>.units[slot23] = uv0"unknown"
		108	[  0]	ITERC	 20	3	3	; slot20, slot21, slot22 = ipairs, slot18, <unknown table>.wrap; slot20, slot21 = ipairs(slot18, <unknown table>.wrap)
		109	[  0]	ITERL	 20		-15	; <unknown table>.wrap = slot20; if slot20 != nil goto 95
		110	[  0]	ITERC	 16	2	3	; slot16, slot17, slot18 = <unknown table>.gmatch, slot14, slot15; slot16 = <unknown table>.gmatch(slot14, slot15)
		111	[  0]	ITERL	 16		-25	; slot15 = slot16; if slot16 != nil goto 87
		112	[  0]	GGET 	 13		44	; slot13 = _env["math"]
		113	[  0]	TGETS	 13	13	43	; slot13 = math.max
		114	[  0]	KSHORT	 15		1	; slot15 = 1
		115	[  0]	GGET 	 16		44	; slot16 = _env["math"]
		116	[  0]	TGETS	 16	16	42	; slot16 = math.floor
		117	[  0]	MOV  	 20		8	; slot20 = love.graphics.getFont
		118	[  0]	TGETS	 18	8	41	; slot18 = love.graphics.getFont.getHeight
		119	[  0]	CALL 	 18	2	2	; slot18 = love.graphics.getFont.getHeight(<unknown table>.wrap)
		120	[  0]	MULVV	 18	18	9	; slot18 = love.graphics.getFont.getHeight * slot9
		121	[  0]	ADDVV	 18	18	10	; slot18 = slot18 + slot10
		122	[  0]	ADDVN	 18	18	1	; slot18 = slot18 + 0.5
		123	[  0]	CALL 	 16	0	2	; MULTRES = math.floor(ipairs)
		124	[  0]	CALLM	 13	2	1	; slot13 = math.max(slot14, ...MULTRES)
		125	[  0]	TSETS	 13	0	45	; slot0.lineStep = math.max
		126	[  0]	GGET 	 13		44	; slot13 = _env["math"]
		127	[  0]	TGETS	 13	13	43	; slot13 = math.max
		128	[  0]	KSHORT	 15		0	; slot15 = 0
		129	[  0]	TGETS	 16	0	52	; slot16 = slot0.lines
		130	[  0]	LEN  	 16		16	; slot16 = #<unknown table>.lines
		131	[  0]	SUBVN	 16	16	0	; slot16 = slot16 - 1
		132	[  0]	TGETS	 17	0	45	; slot17 = slot0.lineStep
		133	[  0]	MULVV	 16	16	17	; slot16 = slot16 * <unknown table>.lineStep
		134	[  0]	MOV  	 19		8	; slot19 = love.graphics.getFont
		135	[  0]	TGETS	 17	8	41	; slot17 = love.graphics.getFont.getHeight
		136	[  0]	CALL 	 17	2	2	; slot17 = love.graphics.getFont.getHeight(slot18)
		137	[  0]	MULVV	 17	17	9	; slot17 = love.graphics.getFont.getHeight * slot9
		138	[  0]	ADDVV	 16	16	17	; slot16 = slot16 + slot17
		139	[  0]	TGETS	 17	7	39	; slot17 = slot7.inkBottomPx
		140	[  0]	IST  	   		17	; if <unknown table>.inkBottomPx
		141	[  0]	JMP  	 18		1	; 	goto 143
		142	[  0]	KSHORT	 17		4	; slot17 = 4
		143	[  0]	MULVV	 17	17	9	; slot17 = slot17 * slot9
		144	[  0]	ADDVV	 16	16	17	; slot16 = slot16 + slot17
		145	[  0]	CALL 	 13	2	3	; slot13 = math.max(slot14, slot15)
		146	[  0]	TSETS	 13	0	40	; slot0.contentHeight = math.max
		147	[  0]	GGET 	 13		44	; slot13 = _env["math"]
		148	[  0]	TGETS	 13	13	43	; slot13 = math.max
		149	[  0]	KSHORT	 15		0	; slot15 = 0
		150	[  0]	GGET 	 16		44	; slot16 = _env["math"]
		151	[  0]	TGETS	 16	16	37	; slot16 = math.ceil
		152	[  0]	TGETS	 18	0	40	; slot18 = slot0.contentHeight
		153	[  0]	SUBVV	 18	18	6	; slot18 = <unknown table>.contentHeight - slot6
		154	[  0]	CALL 	 16	0	2	; MULTRES = math.ceil(slot17)
		155	[  0]	CALLM	 13	2	1	; slot13 = math.max(slot14, ...MULTRES)
		156	[  0]	TSETS	 13	0	38	; slot0.overflow = math.max
		157	[  0]	KSHORT	 13		0	; slot13 = 0
		158	[  0]	GGET 	 14		47	; slot14 = _env["ipairs"]
		159	[  0]	TGETS	 16	0	51	; slot16 = slot0.units
		160	[  0]	CALL 	 14	4	2	; slot14, slot15, slot16 = ipairs(slot15)
		161	[  0]	JMP  	 17		9	; 	goto 171
		162	[  0]	SUBVN	 19	17	0	; slot19 = slot17 - 1
		163	[  0]	TGETS	 20	0	45	; slot20 = slot0.lineStep
		164	[  0]	MULVV	 19	19	20	; slot19 = slot19 * <unknown table>.lineStep
		165	[  0]	ISGT 	  6		19	; if slot6 > slot19
		166	[  0]	JMP  	 19		1	; 	goto 168
		167	[  0]	JMP  	 14		5	; 	goto 173
		168	[  0]	LEN  	 19		18	; slot19 = #slot18
		169	[  0]	ADDVV	 19	13	19	; slot19 = slot13 + slot19
		170	[  0]	ADDVN	 13	19	0	; slot13 = slot19 + 1
		171	[  0]	ITERC	 17	3	3	; slot17, slot18, slot19 = ipairs, slot15, <unknown table>.units; slot17, slot18 = ipairs(slot15, <unknown table>.units)
		172	[  0]	ITERL	 17		-11	; <unknown table>.units = slot17; if slot17 != nil goto 162
		173	[  0]	TGETS	 14	0	38	; slot14 = slot0.overflow
		174	[  0]	ISNEN	 14		2	; if <unknown table>.overflow ~= 0
		175	[  0]	JMP  	 14		6	; 	goto 182
		176	[  0]	KSHORT	 14		0	; slot14 = 0
		177	[  0]	ISGE 	 14		12	; if slot14 >= slot12
		178	[  0]	JMP  	 14		3	; 	goto 182
		179	[  0]	DIVVV	 14	13	12	; slot14 = slot13 / slot12
		180	[  0]	IST  	   		14	; if slot14
		181	[  0]	JMP  	 15		1	; 	goto 183
		182	[  0]	KSHORT	 14		0	; slot14 = 0
		183	[  0]	TSETS	 14	0	36	; slot0.revealDelay = slot14
		184	[  0]	GGET 	 13		44	; slot13 = _env["math"]
		185	[  0]	TGETS	 13	13	43	; slot13 = math.max
		186	[  0]	KSHORT	 15		0	; slot15 = 0
		187	[  0]	TGETS	 16	0	53	; slot16 = slot0.started
		188	[  0]	SUBVV	 16	11	16	; slot16 = love.timer.getTime - <unknown table>.started
		189	[  0]	CALL 	 13	2	3	; slot13 = math.max(slot14, slot15)
		190	[  0]	KSHORT	 14		0	; slot14 = 0
		191	[  0]	KSHORT	 15		1	; slot15 = 1
		192	[  0]	TGETS	 16	0	35	; slot16 = slot0.manualOffset
		193	[  0]	ISEQP	 16		0	; if <unknown table>.manualOffset == nil
		194	[  0]	JMP  	 16		2	; 	goto 197
		195	[  0]	TGETS	 14	0	35	; slot14 = slot0.manualOffset
		196	[  0]	JMP  	 16		120	; 	goto 317
		197	[  0]	TGETS	 16	0	38	; slot16 = slot0.overflow
		198	[  0]	KSHORT	 17		0	; slot17 = 0
		199	[  0]	ISGE 	 17		16	; if slot17 >= <unknown table>.overflow
		200	[  0]	JMP  	 16		116	; 	goto 317
		201	[  0]	TGETS	 16	7	34	; slot16 = slot7.topHoldSec
		202	[  0]	IST  	   		16	; if <unknown table>.topHoldSec
		203	[  0]	JMP  	 17		1	; 	goto 205
		204	[  0]	KNUM 	 16		3	; slot16 = 0.85
		205	[  0]	TGETS	 17	7	33	; slot17 = slot7.bottomHoldSec
		206	[  0]	IST  	   		17	; if <unknown table>.bottomHoldSec
		207	[  0]	JMP  	 18		1	; 	goto 209
		208	[  0]	KNUM 	 17		4	; slot17 = 1.65
		209	[  0]	GGET 	 18		44	; slot18 = _env["math"]
		210	[  0]	TGETS	 18	18	43	; slot18 = math.max
		211	[  0]	KNUM 	 20		5	; slot20 = 0.01
		212	[  0]	TGETS	 21	7	32	; slot21 = slot7.resetFadeSec
		213	[  0]	IST  	   		21	; if <unknown table>.resetFadeSec
		214	[  0]	JMP  	 22		1	; 	goto 216
		215	[  0]	KNUM 	 21		6	; slot21 = 0.22
		216	[  0]	CALL 	 18	2	3	; slot18 = math.max(slot19, slot20)
		217	[  0]	GGET 	 19		44	; slot19 = _env["math"]
		218	[  0]	TGETS	 19	19	43	; slot19 = math.max
		219	[  0]	KNUM 	 21		5	; slot21 = 0.01
		220	[  0]	TGETS	 22	7	31	; slot22 = slot7.rampSec
		221	[  0]	IST  	   		22	; if <unknown table>.rampSec
		222	[  0]	JMP  	 23		1	; 	goto 224
		223	[  0]	KNUM 	 22		7	; slot22 = 0.4
		224	[  0]	CALL 	 19	2	3	; slot19 = math.max(slot20, slot21)
		225	[  0]	GGET 	 20		44	; slot20 = _env["math"]
		226	[  0]	TGETS	 20	20	43	; slot20 = math.max
		227	[  0]	KNUM 	 22		8	; slot22 = 0.9
		228	[  0]	TGETS	 23	0	38	; slot23 = slot0.overflow
		229	[  0]	GGET 	 24		44	; slot24 = _env["math"]
		230	[  0]	TGETS	 24	24	43	; slot24 = math.max
		231	[  0]	KSHORT	 26		1	; slot26 = 1
		232	[  0]	TGETS	 27	7	30	; slot27 = slot7.speedPxPerSec
		233	[  0]	IST  	   		27	; if <unknown table>.speedPxPerSec
		234	[  0]	JMP  	 28		1	; 	goto 236
		235	[  0]	KSHORT	 27		18	; slot27 = 18
		236	[  0]	CALL 	 24	2	3	; slot24 = math.max(slot25, slot26)
		237	[  0]	DIVVV	 23	23	24	; slot23 = <unknown table>.overflow / math.max
		238	[  0]	ADDVV	 23	23	19	; slot23 = slot23 + math.max
		239	[  0]	CALL 	 20	2	3	; slot20 = math.max(slot21, slot22)
		240	[  0]	GGET 	 21		44	; slot21 = _env["math"]
		241	[  0]	TGETS	 21	21	29	; slot21 = math.min
		242	[  0]	MOV  	 23		19	; slot23 = math.max
		243	[  0]	MULVN	 24	20	1	; slot24 = math.max * 0.5
		244	[  0]	CALL 	 21	2	3	; slot21 = math.min(slot22, math.max)
		245	[  0]	MOV  	 19		21	; slot19 = math.min
		246	[  0]	TGETS	 21	0	38	; slot21 = slot0.overflow
		247	[  0]	SUBVV	 22	20	19	; slot22 = math.max - math.min
		248	[  0]	DIVVV	 21	21	22	; slot21 = <unknown table>.overflow / slot22
		249	[  0]	ADDVV	 22	16	20	; slot22 = slot16 + math.max
		250	[  0]	ADDVV	 22	22	17	; slot22 = slot22 + slot17
		251	[  0]	MULVN	 23	18	9	; slot23 = math.max * 2
		252	[  0]	ADDVV	 22	22	23	; slot22 = slot22 + slot23
		253	[  0]	GGET 	 23		44	; slot23 = _env["math"]
		254	[  0]	TGETS	 23	23	43	; slot23 = math.max
		255	[  0]	KSHORT	 25		0	; slot25 = 0
		256	[  0]	TGETS	 26	0	36	; slot26 = slot0.revealDelay
		257	[  0]	SUBVV	 26	13	26	; slot26 = math.max - <unknown table>.revealDelay
		258	[  0]	CALL 	 23	2	3	; slot23 = math.max(slot24, slot25)
		259	[  0]	MODVV	 23	23	22	; slot23 = math.max % slot22
		260	[  0]	ISGE 	 23		16	; if slot23 >= slot16
		261	[  0]	JMP  	 24		2	; 	goto 264
		262	[  0]	KSHORT	 14		0	; slot14 = 0
		263	[  0]	JMP  	 24		53	; 	goto 317
		264	[  0]	ADDVV	 24	16	20	; slot24 = slot16 + math.max
		265	[  0]	ISGE 	 23		24	; if slot23 >= slot24
		266	[  0]	JMP  	 24		33	; 	goto 300
		267	[  0]	SUBVV	 24	23	16	; slot24 = slot23 - slot16
		268	[  0]	ISGE 	 24		19	; if slot24 >= math.min
		269	[  0]	JMP  	 25		10	; 	goto 280
		270	[  0]	DIVVV	 25	24	19	; slot25 = slot24 / math.min
		271	[  0]	MULVV	 26	21	19	; slot26 = slot21 * math.min
		272	[  0]	KSHORT	 27		3	; slot27 = 3
		273	[  0]	POW  	 27	25	27	; slot27 = slot25 ^ slot27 (pow)
		274	[  0]	KSHORT	 28		4	; slot28 = 4
		275	[  0]	POW  	 28	25	28	; slot28 = slot25 ^ slot28 (pow)
		276	[  0]	MULNV	 28	28	1	; slot28 = 0.5 * slot28
		277	[  0]	SUBVV	 27	27	28	; slot27 = slot27 - slot28
		278	[  0]	MULVV	 14	26	27	; slot14 = slot26 * slot27
		279	[  0]	JMP  	 25		37	; 	goto 317
		280	[  0]	SUBVV	 25	20	19	; slot25 = math.max - math.min
		281	[  0]	ISGE 	 25		24	; if slot25 >= slot24
		282	[  0]	JMP  	 25		13	; 	goto 296
		283	[  0]	SUBVV	 25	20	24	; slot25 = math.max - slot24
		284	[  0]	DIVVV	 25	25	19	; slot25 = slot25 / math.min
		285	[  0]	TGETS	 26	0	38	; slot26 = slot0.overflow
		286	[  0]	MULVV	 27	21	19	; slot27 = slot21 * math.min
		287	[  0]	KSHORT	 28		3	; slot28 = 3
		288	[  0]	POW  	 28	25	28	; slot28 = slot25 ^ slot28 (pow)
		289	[  0]	KSHORT	 29		4	; slot29 = 4
		290	[  0]	POW  	 29	25	29	; slot29 = slot25 ^ slot29 (pow)
		291	[  0]	MULNV	 29	29	1	; slot29 = 0.5 * slot29
		292	[  0]	SUBVV	 28	28	29	; slot28 = slot28 - slot29
		293	[  0]	MULVV	 27	27	28	; slot27 = slot27 * slot28
		294	[  0]	SUBVV	 14	26	27	; slot14 = <unknown table>.overflow - slot27
		295	[  0]	JMP  	 25		21	; 	goto 317
		296	[  0]	MULVN	 25	19	1	; slot25 = math.min * 0.5
		297	[  0]	SUBVV	 25	24	25	; slot25 = slot24 - slot25
		298	[  0]	MULVV	 14	21	25	; slot14 = slot21 * slot25
		299	[  0]	JMP  	 24		17	; 	goto 317
		300	[  0]	ADDVV	 24	16	20	; slot24 = slot16 + math.max
		301	[  0]	ADDVV	 24	24	17	; slot24 = slot24 + slot17
		302	[  0]	ISGE 	 23		24	; if slot23 >= slot24
		303	[  0]	JMP  	 24		2	; 	goto 306
		304	[  0]	TGETS	 14	0	38	; slot14 = slot0.overflow
		305	[  0]	JMP  	 24		11	; 	goto 317
		306	[  0]	SUBVV	 24	22	18	; slot24 = slot22 - math.max
		307	[  0]	ISGE 	 23		24	; if slot23 >= slot24
		308	[  0]	JMP  	 24		5	; 	goto 314
		309	[  0]	TGETS	 14	0	38	; slot14 = slot0.overflow
		310	[  0]	SUBVV	 24	22	18	; slot24 = slot22 - math.max
		311	[  0]	SUBVV	 24	24	23	; slot24 = slot24 - slot23
		312	[  0]	DIVVV	 15	24	18	; slot15 = slot24 / math.max
		313	[  0]	JMP  	 24		3	; 	goto 317
		314	[  0]	SUBVV	 24	22	18	; slot24 = slot22 - math.max
		315	[  0]	SUBVV	 24	23	24	; slot24 = slot23 - slot24
		316	[  0]	DIVVV	 15	24	18	; slot15 = slot24 / math.max
		317	[  0]	GGET 	 16		44	; slot16 = _env["math"]
		318	[  0]	TGETS	 16	16	42	; slot16 = math.floor
		319	[  0]	ADDVN	 18	14	1	; slot18 = <unknown table>.overflow + 0.5
		320	[  0]	CALL 	 16	2	2	; slot16 = math.floor(slot17)
		321	[  0]	TSETS	 15	0	27	; slot0.alpha = slot15
		322	[  0]	TSETS	 16	0	28	; slot0.offset = math.floor
		323	[  0]	TSETS	 11	0	26	; slot0.lastDraw = love.timer.getTime
		324	[  0]	TNEW 	 16		0	; slot16 = new table( array: 0, dict: 1)
		325	[  0]	GGET 	 17		25	; slot17 = _env["pairs"]
		326	[  0]	MOV  	 19		7	; slot19 = slot7
		327	[  0]	CALL 	 17	4	2	; slot17, slot18, slot19 = pairs(slot18)
		328	[  0]	ISNEXT	 20		1	; Verify ITERN at 330; goto 330
		329	[  0]	TSETV	 21	16	20	; slot16[math.max] = slot21
		330	[  0]	ITERN	 20	3	3	; slot20, slot21, slot22 = pairs, slot18, slot19; slot20, slot21 = pairs(slot18, slot19)
		331	[  0]	ITERL	 20		-3	; slot19 = math.max; if math.max != nil goto 329
		332	[  0]	UGET 	 17		1	; slot17 = uv1"unknwon"
		333	[  0]	TGETS	 19	7	24	; slot19 = slot7.bodyColor
		334	[  0]	IST  	   		19	; if <unknown table>.bodyColor
		335	[  0]	JMP  	 20		1	; 	goto 337
		336	[  0]	TDUP 	 19		23	; slot19 = copy table#k23
		337	[  0]	MOV  	 20		15	; slot20 = slot15
		338	[  0]	CALL 	 17	2	3	; slot17 = uv1"unknown"(slot18, slot19)
		339	[  0]	TSETS	 17	16	24	; slot16.bodyColor = uv1"unknown"
		340	[  0]	UGET 	 17		1	; slot17 = uv1"unknwon"
		341	[  0]	TGETS	 19	7	22	; slot19 = slot7.numberColor
		342	[  0]	IST  	   		19	; if <unknown table>.numberColor
		343	[  0]	JMP  	 20		4	; 	goto 348
		344	[  0]	TGETS	 19	7	24	; slot19 = slot7.bodyColor
		345	[  0]	IST  	   		19	; if <unknown table>.bodyColor
		346	[  0]	JMP  	 20		1	; 	goto 348
		347	[  0]	TDUP 	 19		21	; slot19 = copy table#k21
		348	[  0]	MOV  	 20		15	; slot20 = slot15
		349	[  0]	CALL 	 17	2	3	; slot17 = uv1"unknown"(slot18, slot19)
		350	[  0]	TSETS	 17	16	22	; slot16.numberColor = uv1"unknown"
		351	[  0]	UGET 	 17		1	; slot17 = uv1"unknwon"
		352	[  0]	TGETS	 19	7	20	; slot19 = slot7.outlineColor
		353	[  0]	IST  	   		19	; if <unknown table>.outlineColor
		354	[  0]	JMP  	 20		1	; 	goto 356
		355	[  0]	TDUP 	 19		19	; slot19 = copy table#k19
		356	[  0]	MOV  	 20		15	; slot20 = slot15
		357	[  0]	CALL 	 17	2	3	; slot17 = uv1"unknown"(slot18, slot19)
		358	[  0]	TSETS	 17	16	20	; slot16.outlineColor = uv1"unknown"
		359	[  0]	GGET 	 17		73	; slot17 = _env["tostring"]
		360	[  0]	MOV  	 19		1	; slot19 = slot1
		361	[  0]	CALL 	 17	2	2	; slot17 = tostring(slot18)
		362	[  0]	MOV  	 19		17	; slot19 = tostring
		363	[  0]	TGETS	 17	17	18	; slot17 = tostring.match
		364	[  0]	KSTR 	 20		17	; slot20 = "^08:"
		365	[  0]	CALL 	 17	2	3	; slot17 = tostring.match(slot18, tostring)
		366	[  0]	ISF  	   		17	; if not tostring.match
		367	[  0]	JMP  	 18		24	; 	goto 392
		368	[  0]	GGET 	 17		73	; slot17 = _env["tostring"]
		369	[  0]	MOV  	 19		1	; slot19 = slot1
		370	[  0]	CALL 	 17	2	2	; slot17 = tostring(slot18)
		371	[  0]	MOV  	 19		17	; slot19 = tostring
		372	[  0]	TGETS	 17	17	18	; slot17 = tostring.match
		373	[  0]	KSTR 	 20		16	; slot20 = "^08:(%a%a)"
		374	[  0]	CALL 	 17	2	3	; slot17 = tostring.match(slot18, tostring)
		375	[  0]	IST  	   		17	; if tostring.match
		376	[  0]	JMP  	 18		1	; 	goto 378
		377	[  0]	KSTR 	 17		15	; slot17 = "ko"
		378	[  0]	GGET 	 18		14	; slot18 = _env["require"]
		379	[  0]	KSTR 	 20		13	; slot20 = "src.game.item"
		380	[  0]	CALL 	 18	2	2	; slot18 = require(tostring)
		381	[  0]	TGETS	 18	18	12	; slot18 = require.getById
		382	[  0]	KSTR 	 20		11	; slot20 = "08"
		383	[  0]	CALL 	 18	2	2	; slot18 = require.getById(tostring)
		384	[  0]	ISFC 	 19		18	; slot19 = require.getById; if not require.getById
		385	[  0]	JMP  	 19		5	; 	goto 391
		386	[  0]	TGETS	 19	18	9	; slot19 = require.getById.effectTermColors
		387	[  0]	ISF  	   		19	; if not require.getById.effectTermColors
		388	[  0]	JMP  	 20		2	; 	goto 391
		389	[  0]	TGETS	 19	18	9	; slot19 = require.getById.effectTermColors
		390	[  0]	TGETV	 19	19	17	; slot19 = require.getById.effectTermColors[slot17]
		391	[  0]	TSETS	 19	16	10	; slot16.termColors = slot19
		392	[  0]	TGETS	 17	0	38	; slot17 = slot0.overflow
		393	[  0]	ISNEN	 17		2	; if <unknown table>.overflow ~= 0
		394	[  0]	JMP  	 17		9	; 	goto 404
		395	[  0]	KSHORT	 17		0	; slot17 = 0
		396	[  0]	ISGE 	 17		12	; if slot17 >= slot12
		397	[  0]	JMP  	 17		6	; 	goto 404
		398	[  0]	GGET 	 17		44	; slot17 = _env["math"]
		399	[  0]	TGETS	 17	17	42	; slot17 = math.floor
		400	[  0]	MULVV	 19	13	12	; slot19 = math.max * slot12
		401	[  0]	CALL 	 17	2	2	; slot17 = math.floor(require.getById)
		402	[  0]	IST  	   		17	; if math.floor
		403	[  0]	JMP  	 18		2	; 	goto 406
		404	[  0]	GGET 	 17		44	; slot17 = _env["math"]
		405	[  0]	TGETS	 17	17	8	; slot17 = math.huge
		406	[  0]	GGET 	 18		70	; slot18 = _env["love"]
		407	[  0]	TGETS	 18	18	69	; slot18 = love.graphics
		408	[  0]	TGETS	 18	18	7	; slot18 = love.graphics.push
		409	[  0]	KSTR 	 20		6	; slot20 = "all"
		410	[  0]	CALL 	 18	1	2	;  = love.graphics.push(slot19)
		411	[  0]	GGET 	 18		70	; slot18 = _env["love"]
		412	[  0]	TGETS	 18	18	69	; slot18 = love.graphics
		413	[  0]	TGETS	 18	18	5	; slot18 = love.graphics.transformPoint
		414	[  0]	SUBVN	 20	3	0	; slot20 = slot3 - 1
		415	[  0]	SUBVN	 21	4	0	; slot21 = slot4 - 1
		416	[  0]	CALL 	 18	3	3	; slot18, slot19 = love.graphics.transformPoint(slot19, slot20)
		417	[  0]	GGET 	 20		70	; slot20 = _env["love"]
		418	[  0]	TGETS	 20	20	69	; slot20 = love.graphics
		419	[  0]	TGETS	 20	20	5	; slot20 = love.graphics.transformPoint
		420	[  0]	ADDVV	 22	3	5	; slot22 = slot3 + slot5
		421	[  0]	ADDVN	 22	22	0	; slot22 = slot22 + 1
		422	[  0]	ADDVV	 23	4	6	; slot23 = slot4 + slot6
		423	[  0]	CALL 	 20	3	3	; slot20, slot21 = love.graphics.transformPoint(slot21, slot22)
		424	[  0]	GGET 	 22		44	; slot22 = _env["math"]
		425	[  0]	TGETS	 22	22	37	; slot22 = math.ceil
		426	[  0]	MOV  	 24		18	; slot24 = love.graphics.transformPoint
		427	[  0]	CALL 	 22	2	2	; slot22 = math.ceil(slot23)
		428	[  0]	GGET 	 23		44	; slot23 = _env["math"]
		429	[  0]	TGETS	 23	23	37	; slot23 = math.ceil
		430	[  0]	MOV  	 25		19	; slot25 = slot19
		431	[  0]	CALL 	 23	2	2	; slot23 = math.ceil(love.graphics.transformPoint)
		432	[  0]	GGET 	 24		44	; slot24 = _env["math"]
		433	[  0]	TGETS	 24	24	42	; slot24 = math.floor
		434	[  0]	MOV  	 26		20	; slot26 = love.graphics.transformPoint
		435	[  0]	CALL 	 24	2	2	; slot24 = math.floor(slot25)
		436	[  0]	GGET 	 25		44	; slot25 = _env["math"]
		437	[  0]	TGETS	 25	25	42	; slot25 = math.floor
		438	[  0]	MOV  	 27		21	; slot27 = slot21
		439	[  0]	CALL 	 25	2	2	; slot25 = math.floor(love.graphics.transformPoint)
		440	[  0]	MOV  	 21		25	; slot21 = math.floor
		441	[  0]	MOV  	 20		24	; slot20 = math.floor
		442	[  0]	MOV  	 19		23	; slot19 = math.ceil
		443	[  0]	MOV  	 18		22	; slot18 = math.ceil
		444	[  0]	GGET 	 22		70	; slot22 = _env["love"]
		445	[  0]	TGETS	 22	22	69	; slot22 = love.graphics
		446	[  0]	TGETS	 22	22	4	; slot22 = love.graphics.intersectScissor
		447	[  0]	MOV  	 24		18	; slot24 = math.ceil
		448	[  0]	MOV  	 25		19	; slot25 = math.ceil
		449	[  0]	GGET 	 26		44	; slot26 = _env["math"]
		450	[  0]	TGETS	 26	26	43	; slot26 = math.max
		451	[  0]	KSHORT	 28		0	; slot28 = 0
		452	[  0]	SUBVV	 29	20	18	; slot29 = math.floor - math.ceil
		453	[  0]	CALL 	 26	2	3	; slot26 = math.max(slot27, slot28)
		454	[  0]	GGET 	 27		44	; slot27 = _env["math"]
		455	[  0]	TGETS	 27	27	43	; slot27 = math.max
		456	[  0]	KSHORT	 29		0	; slot29 = 0
		457	[  0]	SUBVV	 30	21	19	; slot30 = math.floor - math.ceil
		458	[  0]	CALL 	 27	0	3	; MULTRES = math.max(slot28, slot29)
		459	[  0]	CALLM	 22	1	3	;  = love.graphics.intersectScissor(math.ceil, math.ceil, math.ceil, ...MULTRES)
		460	[  0]	GGET 	 22		47	; slot22 = _env["ipairs"]
		461	[  0]	TGETS	 24	0	52	; slot24 = slot0.lines
		462	[  0]	CALL 	 22	4	2	; slot22, slot23, slot24 = ipairs(math.ceil)
		463	[  0]	JMP  	 25		41	; 	goto 505
		464	[  0]	KSHORT	 27		0	; slot27 = 0
		465	[  0]	ISGT 	 17		27	; if math.huge > slot27
		466	[  0]	JMP  	 27		1	; 	goto 468
		467	[  0]	JMP  	 22		39	; 	goto 507
		468	[  0]	TGETS	 27	0	51	; slot27 = slot0.units
		469	[  0]	TGETV	 27	27	25	; slot27 = <unknown table>.units[math.ceil]
		470	[  0]	SUBVN	 28	25	0	; slot28 = math.ceil - 1
		471	[  0]	TGETS	 29	0	45	; slot29 = slot0.lineStep
		472	[  0]	MULVV	 28	28	29	; slot28 = slot28 * <unknown table>.lineStep
		473	[  0]	ADDVV	 28	4	28	; slot28 = slot4 + slot28
		474	[  0]	TGETS	 29	0	28	; slot29 = slot0.offset
		475	[  0]	SUBVV	 28	28	29	; slot28 = slot28 - <unknown table>.offset
		476	[  0]	TGETS	 29	0	45	; slot29 = slot0.lineStep
		477	[  0]	ADDVV	 29	28	29	; slot29 = slot28 + <unknown table>.lineStep
		478	[  0]	SUBVN	 30	4	0	; slot30 = slot4 - 1
		479	[  0]	ISGT 	 30		29	; if slot30 > slot29
		480	[  0]	JMP  	 29		21	; 	goto 502
		481	[  0]	ADDVV	 29	4	6	; slot29 = slot4 + slot6
		482	[  0]	ISGE 	 28		29	; if slot28 >= slot29
		483	[  0]	JMP  	 29		18	; 	goto 502
		484	[  0]	LEN  	 29		27	; slot29 = #slot27
		485	[  0]	ISGT 	 29		17	; if slot29 > math.huge
		486	[  0]	JMP  	 29		2	; 	goto 489
		487	[  0]	ISTC 	 29		26	; slot29 = math.max; if math.max
		488	[  0]	JMP  	 29		7	; 	goto 496
		489	[  0]	GGET 	 29		3	; slot29 = _env["table"]
		490	[  0]	TGETS	 29	29	2	; slot29 = table.concat
		491	[  0]	MOV  	 31		27	; slot31 = slot27
		492	[  0]	KSTR 	 32		72	; slot32 = ""
		493	[  0]	KSHORT	 33		1	; slot33 = 1
		494	[  0]	MOV  	 34		17	; slot34 = math.huge
		495	[  0]	CALL 	 29	2	5	; slot29 = table.concat(slot30, slot31, slot32, slot33)
		496	[  0]	TGETS	 30	7	1	; slot30 = slot7.draw
		497	[  0]	MOV  	 32		29	; slot32 = table.concat
		498	[  0]	MOV  	 33		3	; slot33 = slot3
		499	[  0]	MOV  	 34		28	; slot34 = slot28
		500	[  0]	MOV  	 35		16	; slot35 = slot16
		501	[  0]	CALL 	 30	1	5	;  = <unknown table>.draw(slot31, table.concat, slot33, slot34)
		502	[  0]	LEN  	 29		27	; slot29 = #slot27
		503	[  0]	SUBVV	 29	17	29	; slot29 = math.huge - slot29
		504	[  0]	SUBVN	 17	29	0	; slot17 = slot29 - 1
		505	[  0]	ITERC	 25	3	3	; slot25, slot26, slot27 = ipairs, math.ceil, <unknown table>.lines; slot25, slot26 = ipairs(math.ceil, <unknown table>.lines)
		506	[  0]	ITERL	 25		-43	; <unknown table>.lines = math.ceil; if math.ceil != nil goto 464
		507	[  0]	GGET 	 22		70	; slot22 = _env["love"]
		508	[  0]	TGETS	 22	22	69	; slot22 = love.graphics
		509	[  0]	TGETS	 22	22	0	; slot22 = love.graphics.pop
		510	[  0]	CALL 	 22	1	1	;  = love.graphics.pop()
		511	[  0]	RET1 	  0		2	; return slot0
	139	[  0]	TSETS	 12	9	212	; slot9.draw = slot12
	140	[  0]	FNEW 	 12		133	; N/A:0-0: 2 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		8	; 	goto 11
		  3	[  0]	TGETS	  2	0	8	; slot2 = slot0.overflow
		  4	[  0]	KSHORT	  3		0	; slot3 = 0
		  5	[  0]	ISLE 	  2		3	; if <unknown table>.overflow <= slot3
		  6	[  0]	JMP  	  2		4	; 	goto 11
		  7	[  0]	ISF  	   		1	; if not slot1
		  8	[  0]	JMP  	  2		2	; 	goto 11
		  9	[  0]	ISNEN	  1		0	; if slot1 ~= 0
		 10	[  0]	JMP  	  2		2	; 	goto 13
		 11	[  0]	KPRI 	  2		1	; slot2 = false
		 12	[  0]	RET1 	  2		2	; return slot2
		 13	[  0]	GGET 	  2		6	; slot2 = _env["math"]
		 14	[  0]	TGETS	  2	2	5	; slot2 = math.max
		 15	[  0]	KSHORT	  4		0	; slot4 = 0
		 16	[  0]	GGET 	  5		6	; slot5 = _env["math"]
		 17	[  0]	TGETS	  5	5	4	; slot5 = math.min
		 18	[  0]	TGETS	  7	0	8	; slot7 = slot0.overflow
		 19	[  0]	TGETS	  8	0	7	; slot8 = slot0.manualOffset
		 20	[  0]	IST  	   		8	; if <unknown table>.manualOffset
		 21	[  0]	JMP  	  9		4	; 	goto 26
		 22	[  0]	TGETS	  8	0	3	; slot8 = slot0.offset
		 23	[  0]	IST  	   		8	; if <unknown table>.offset
		 24	[  0]	JMP  	  9		1	; 	goto 26
		 25	[  0]	KSHORT	  8		0	; slot8 = 0
		 26	[  0]	TGETS	  9	0	2	; slot9 = slot0.lineStep
		 27	[  0]	MULVV	  9	1	9	; slot9 = slot1 * <unknown table>.lineStep
		 28	[  0]	MULVN	  9	9	1	; slot9 = slot9 * 2
		 29	[  0]	SUBVV	  8	8	9	; slot8 = slot8 - slot9
		 30	[  0]	CALL 	  5	0	3	; MULTRES = math.min(slot6, <unknown table>.overflow)
		 31	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 32	[  0]	TSETS	  2	0	7	; slot0.manualOffset = math.max
		 33	[  0]	GGET 	  2		6	; slot2 = _env["math"]
		 34	[  0]	TGETS	  2	2	0	; slot2 = math.floor
		 35	[  0]	TGETS	  4	0	7	; slot4 = slot0.manualOffset
		 36	[  0]	ADDVN	  4	4	2	; slot4 = <unknown table>.manualOffset + 0.5
		 37	[  0]	CALL 	  2	2	2	; slot2 = math.floor(slot3)
		 38	[  0]	KSHORT	  3		1	; slot3 = 1
		 39	[  0]	TSETS	  3	0	1	; slot0.alpha = slot3
		 40	[  0]	TSETS	  2	0	3	; slot0.offset = slot2
		 41	[  0]	KPRI 	  2		2	; slot2 = true
		 42	[  0]	RET1 	  2		2	; return slot2
	141	[  0]	TSETS	 12	9	134	; slot9.wheel = slot12
	142	[  0]	FNEW 	 12		131	; N/A:0-0: 8 args, 0 upvalues, 25 slots
		
		;;;; constant tables ;;;;
		ktable#25 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		7	; if slot7
		  2	[  0]	JMP  	  8		1	; 	goto 4
		  3	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
		  4	[  0]	GGET 	  8		41	; slot8 = _env["tostring"]
		  5	[  0]	ISTC 	 10		2	; slot10 = slot2; if slot2
		  6	[  0]	JMP  	 10		1	; 	goto 8
		  7	[  0]	KSTR 	 10		40	; slot10 = ""
		  8	[  0]	CALL 	  8	2	2	; slot8 = tostring(slot9)
		  9	[  0]	MOV  	 10		8	; slot10 = tostring
		 10	[  0]	TGETS	  8	8	39	; slot8 = tostring.gsub
		 11	[  0]	KSTR 	 11		38	; slot11 = "[
		]+"
		 12	[  0]	KSTR 	 12		37	; slot12 = " "
		 13	[  0]	CALL 	  8	2	4	; slot8 = tostring.gsub(slot9, tostring, slot11)
		 14	[  0]	MOV  	  2		8	; slot2 = tostring.gsub
		 15	[  0]	GGET 	  8		36	; slot8 = _env["love"]
		 16	[  0]	TGETS	  8	8	35	; slot8 = love.graphics
		 17	[  0]	TGETS	  9	7	34	; slot9 = slot7.font
		 18	[  0]	IST  	   		9	; if <unknown table>.font
		 19	[  0]	JMP  	 10		2	; 	goto 22
		 20	[  0]	TGETS	  9	8	33	; slot9 = love.graphics.getFont
		 21	[  0]	CALL 	  9	2	1	; slot9 = love.graphics.getFont()
		 22	[  0]	TGETS	 10	7	32	; slot10 = slot7.now
		 23	[  0]	IST  	   		10	; if <unknown table>.now
		 24	[  0]	JMP  	 11		4	; 	goto 29
		 25	[  0]	GGET 	 10		36	; slot10 = _env["love"]
		 26	[  0]	TGETS	 10	10	31	; slot10 = love.timer
		 27	[  0]	TGETS	 10	10	30	; slot10 = love.timer.getTime
		 28	[  0]	CALL 	 10	2	1	; slot10 = love.timer.getTime()
		 29	[  0]	ISF  	   		0	; if not slot0
		 30	[  0]	JMP  	 11		15	; 	goto 46
		 31	[  0]	TGETS	 11	0	29	; slot11 = slot0.key
		 32	[  0]	ISNEV	 11		1	; if <unknown table>.key ~= slot1
		 33	[  0]	JMP  	 11		12	; 	goto 46
		 34	[  0]	TGETS	 11	0	28	; slot11 = slot0.text
		 35	[  0]	ISNEV	 11		2	; if <unknown table>.text ~= tostring.gsub
		 36	[  0]	JMP  	 11		9	; 	goto 46
		 37	[  0]	TGETS	 11	0	34	; slot11 = slot0.font
		 38	[  0]	ISNEV	 11		9	; if <unknown table>.font ~= love.graphics.getFont
		 39	[  0]	JMP  	 11		6	; 	goto 46
		 40	[  0]	TGETS	 11	0	27	; slot11 = slot0.width
		 41	[  0]	ISNEV	 11		5	; if <unknown table>.width ~= slot5
		 42	[  0]	JMP  	 11		3	; 	goto 46
		 43	[  0]	TGETS	 11	0	26	; slot11 = slot0.height
		 44	[  0]	ISEQV	 11		6	; if <unknown table>.height == slot6
		 45	[  0]	JMP  	 11		18	; 	goto 64
		 46	[  0]	TDUP 	 11		25	; slot11 = copy table#k25
		 47	[  0]	TSETS	  1	11	29	; slot11.key = slot1
		 48	[  0]	TSETS	  2	11	28	; slot11.text = tostring.gsub
		 49	[  0]	TSETS	  9	11	34	; slot11.font = love.graphics.getFont
		 50	[  0]	TSETS	  5	11	27	; slot11.width = slot5
		 51	[  0]	TSETS	  6	11	26	; slot11.height = slot6
		 52	[  0]	TSETS	 10	11	24	; slot11.started = love.timer.getTime
		 53	[  0]	GGET 	 12		23	; slot12 = _env["math"]
		 54	[  0]	TGETS	 12	12	22	; slot12 = math.max
		 55	[  0]	KSHORT	 14		0	; slot14 = 0
		 56	[  0]	MOV  	 17		9	; slot17 = love.graphics.getFont
		 57	[  0]	TGETS	 15	9	21	; slot15 = love.graphics.getFont.getWidth
		 58	[  0]	MOV  	 18		2	; slot18 = tostring.gsub
		 59	[  0]	CALL 	 15	2	3	; slot15 = love.graphics.getFont.getWidth(slot16, love.graphics.getFont)
		 60	[  0]	SUBVV	 15	15	5	; slot15 = love.graphics.getFont.getWidth - slot5
		 61	[  0]	CALL 	 12	2	3	; slot12 = math.max(slot13, slot14)
		 62	[  0]	TSETS	 12	11	20	; slot11.overflow = math.max
		 63	[  0]	MOV  	  0		11	; slot0 = slot11
		 64	[  0]	GGET 	 11		18	; slot11 = _env["require"]
		 65	[  0]	KSTR 	 13		17	; slot13 = "src.ui.effects"
		 66	[  0]	CALL 	 11	2	2	; slot11 = require(math.max)
		 67	[  0]	TGETS	 11	11	16	; slot11 = require.text_scroll_motion
		 68	[  0]	TGETS	 11	11	19	; slot11 = require.text_scroll_motion.offset
		 69	[  0]	TGETS	 13	0	24	; slot13 = slot0.started
		 70	[  0]	SUBVV	 13	10	13	; slot13 = love.timer.getTime - <unknown table>.started
		 71	[  0]	TGETS	 14	0	20	; slot14 = slot0.overflow
		 72	[  0]	CALL 	 11	2	3	; slot11 = require.text_scroll_motion.offset(math.max, slot13)
		 73	[  0]	TSETS	 11	0	19	; slot0.offset = require.text_scroll_motion.offset
		 74	[  0]	TGETS	 11	8	15	; slot11 = love.graphics.push
		 75	[  0]	KSTR 	 13		14	; slot13 = "all"
		 76	[  0]	CALL 	 11	1	2	;  = love.graphics.push(math.max)
		 77	[  0]	TGETS	 11	8	13	; slot11 = love.graphics.setFont
		 78	[  0]	MOV  	 13		9	; slot13 = love.graphics.getFont
		 79	[  0]	CALL 	 11	1	2	;  = love.graphics.setFont(math.max)
		 80	[  0]	TGETS	 11	8	12	; slot11 = love.graphics.transformPoint
		 81	[  0]	SUBVN	 13	3	0	; slot13 = slot3 - 1
		 82	[  0]	TGETS	 14	7	11	; slot14 = slot7.inkTop
		 83	[  0]	IST  	   		14	; if <unknown table>.inkTop
		 84	[  0]	JMP  	 15		1	; 	goto 86
		 85	[  0]	KSHORT	 14		1	; slot14 = 1
		 86	[  0]	SUBVV	 14	4	14	; slot14 = slot4 - slot14
		 87	[  0]	CALL 	 11	3	3	; slot11, slot12 = love.graphics.transformPoint(math.max, slot13)
		 88	[  0]	TGETS	 13	8	12	; slot13 = love.graphics.transformPoint
		 89	[  0]	ADDVV	 15	3	5	; slot15 = slot3 + slot5
		 90	[  0]	ADDVN	 15	15	0	; slot15 = slot15 + 1
		 91	[  0]	ADDVV	 16	4	6	; slot16 = slot4 + slot6
		 92	[  0]	CALL 	 13	3	3	; slot13, slot14 = love.graphics.transformPoint(slot14, slot15)
		 93	[  0]	GGET 	 15		23	; slot15 = _env["math"]
		 94	[  0]	TGETS	 15	15	10	; slot15 = math.ceil
		 95	[  0]	MOV  	 17		11	; slot17 = love.graphics.transformPoint
		 96	[  0]	CALL 	 15	2	2	; slot15 = math.ceil(slot16)
		 97	[  0]	GGET 	 16		23	; slot16 = _env["math"]
		 98	[  0]	TGETS	 16	16	10	; slot16 = math.ceil
		 99	[  0]	MOV  	 18		12	; slot18 = math.max
		100	[  0]	CALL 	 16	2	2	; slot16 = math.ceil(love.graphics.transformPoint)
		101	[  0]	GGET 	 17		23	; slot17 = _env["math"]
		102	[  0]	TGETS	 17	17	9	; slot17 = math.floor
		103	[  0]	MOV  	 19		13	; slot19 = love.graphics.transformPoint
		104	[  0]	CALL 	 17	2	2	; slot17 = math.floor(math.max)
		105	[  0]	GGET 	 18		23	; slot18 = _env["math"]
		106	[  0]	TGETS	 18	18	9	; slot18 = math.floor
		107	[  0]	MOV  	 20		14	; slot20 = slot14
		108	[  0]	CALL 	 18	2	2	; slot18 = math.floor(love.graphics.transformPoint)
		109	[  0]	MOV  	 14		18	; slot14 = math.floor
		110	[  0]	MOV  	 13		17	; slot13 = math.floor
		111	[  0]	MOV  	 12		16	; slot12 = math.ceil
		112	[  0]	MOV  	 11		15	; slot11 = math.ceil
		113	[  0]	TGETS	 15	8	8	; slot15 = love.graphics.intersectScissor
		114	[  0]	MOV  	 17		11	; slot17 = math.ceil
		115	[  0]	MOV  	 18		12	; slot18 = math.ceil
		116	[  0]	GGET 	 19		23	; slot19 = _env["math"]
		117	[  0]	TGETS	 19	19	22	; slot19 = math.max
		118	[  0]	KSHORT	 21		0	; slot21 = 0
		119	[  0]	SUBVV	 22	13	11	; slot22 = math.floor - math.ceil
		120	[  0]	CALL 	 19	2	3	; slot19 = math.max(slot20, slot21)
		121	[  0]	GGET 	 20		23	; slot20 = _env["math"]
		122	[  0]	TGETS	 20	20	22	; slot20 = math.max
		123	[  0]	KSHORT	 22		0	; slot22 = 0
		124	[  0]	SUBVV	 23	14	12	; slot23 = math.floor - math.ceil
		125	[  0]	CALL 	 20	0	3	; MULTRES = math.max(slot21, slot22)
		126	[  0]	CALLM	 15	1	3	;  = love.graphics.intersectScissor(math.ceil, math.ceil, math.ceil, ...MULTRES)
		127	[  0]	TGETS	 15	8	7	; slot15 = love.graphics.getCanvas
		128	[  0]	CALL 	 15	2	1	; slot15 = love.graphics.getCanvas()
		129	[  0]	GGET 	 16		6	; slot16 = _env["type"]
		130	[  0]	MOV  	 18		15	; slot18 = love.graphics.getCanvas
		131	[  0]	CALL 	 16	2	2	; slot16 = type(math.ceil)
		132	[  0]	ISNES	 16		5	; if type ~= "table"
		133	[  0]	JMP  	 16		6	; 	goto 140
		134	[  0]	LOOP 	 16		5	; Loop start, exit goto 140
		135	[  0]	TGETB	 16	15	1	; slot16 = love.graphics.getCanvas[1]
		136	[  0]	ISTC 	 15		16	; slot15 = slot16; if slot16
		137	[  0]	JMP  	 17		1	; 	goto 139
		138	[  0]	TGETS	 15	15	4	; slot15 = slot15.canvas
		139	[  0]	JMP  	 16		-11	; 	goto 129
		140	[  0]	ISF  	   		15	; if not <unknown table>.canvas
		141	[  0]	JMP  	 16		8	; 	goto 150
		142	[  0]	TGETS	 16	15	3	; slot16 = <unknown table>.canvas.getDPIScale
		143	[  0]	ISF  	   		16	; if not <unknown table>.canvas.getDPIScale
		144	[  0]	JMP  	 17		5	; 	goto 150
		145	[  0]	MOV  	 18		15	; slot18 = <unknown table>.canvas
		146	[  0]	TGETS	 16	15	3	; slot16 = <unknown table>.canvas.getDPIScale
		147	[  0]	CALL 	 16	2	2	; slot16 = <unknown table>.canvas.getDPIScale(math.ceil)
		148	[  0]	IST  	   		16	; if <unknown table>.canvas.getDPIScale
		149	[  0]	JMP  	 17		2	; 	goto 152
		150	[  0]	TGETS	 16	8	3	; slot16 = love.graphics.getDPIScale
		151	[  0]	CALL 	 16	2	1	; slot16 = love.graphics.getDPIScale()
		152	[  0]	TGETS	 17	8	12	; slot17 = love.graphics.transformPoint
		153	[  0]	TGETS	 19	0	19	; slot19 = slot0.offset
		154	[  0]	SUBVV	 19	3	19	; slot19 = slot3 - <unknown table>.offset
		155	[  0]	MOV  	 20		4	; slot20 = slot4
		156	[  0]	CALL 	 17	3	3	; slot17, slot18 = love.graphics.transformPoint(<unknown table>.canvas, slot19)
		157	[  0]	TGETS	 19	8	2	; slot19 = love.graphics.inverseTransformPoint
		158	[  0]	GGET 	 21		23	; slot21 = _env["math"]
		159	[  0]	TGETS	 21	21	9	; slot21 = math.floor
		160	[  0]	MULVV	 23	17	16	; slot23 = love.graphics.transformPoint * love.graphics.getDPIScale
		161	[  0]	ADDVN	 23	23	1	; slot23 = slot23 + 0.5
		162	[  0]	CALL 	 21	2	2	; slot21 = math.floor(slot22)
		163	[  0]	DIVVV	 21	21	16	; slot21 = math.floor / love.graphics.getDPIScale
		164	[  0]	GGET 	 22		23	; slot22 = _env["math"]
		165	[  0]	TGETS	 22	22	9	; slot22 = math.floor
		166	[  0]	MULVV	 24	18	16	; slot24 = <unknown table>.canvas * love.graphics.getDPIScale
		167	[  0]	ADDVN	 24	24	1	; slot24 = slot24 + 0.5
		168	[  0]	CALL 	 22	2	2	; slot22 = math.floor(slot23)
		169	[  0]	DIVVV	 22	22	16	; slot22 = math.floor / love.graphics.getDPIScale
		170	[  0]	CALL 	 19	3	3	; slot19, slot20 = love.graphics.inverseTransformPoint(slot20, slot21)
		171	[  0]	MOV  	 18		20	; slot18 = slot20
		172	[  0]	MOV  	 17		19	; slot17 = love.graphics.inverseTransformPoint
		173	[  0]	TGETS	 19	8	1	; slot19 = love.graphics.print
		174	[  0]	MOV  	 21		2	; slot21 = tostring.gsub
		175	[  0]	MOV  	 22		17	; slot22 = love.graphics.inverseTransformPoint
		176	[  0]	MOV  	 23		18	; slot23 = slot18
		177	[  0]	CALL 	 19	1	4	;  = love.graphics.print(slot20, tostring.gsub, love.graphics.inverseTransformPoint)
		178	[  0]	TGETS	 19	8	0	; slot19 = love.graphics.pop
		179	[  0]	CALL 	 19	1	1	;  = love.graphics.pop()
		180	[  0]	RET1 	  0		2	; return slot0
	143	[  0]	TSETS	 12	9	132	; slot9.drawHorizontal = slot12
	144	[  0]	MOV  	  8		9	; slot8 = slot9
	145	[  0]	UCLO 	  9		0	; nil uvs >= r9; goto 146
	146	[  0]	KPRI 	  9		0	; slot9 = nil
	147	[  0]	TNEW 	 10		0	; slot10 = new table( array: 0, dict: 1)
	148	[  0]	FNEW 	 11		130	; N/A:0-0: 7 args, 0 upvalues, 28 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  7		29	; slot7 = _env["require"]
		  2	[  0]	KSTR 	  9		28	; slot9 = "src.game.combat"
		  3	[  0]	CALL 	  7	2	2	; slot7 = require(slot8)
		  4	[  0]	TGETS	  7	7	27	; slot7 = require.frontline_armor
		  5	[  0]	TGETS	  7	7	26	; slot7 = require.frontline_armor.target
		  6	[  0]	MOV  	  9		0	; slot9 = slot0
		  7	[  0]	CALL 	  7	2	2	; slot7 = require.frontline_armor.target(slot8)
		  8	[  0]	ISFC 	  8		7	; slot8 = require.frontline_armor.target; if not require.frontline_armor.target
		  9	[  0]	JMP  	  8		1	; 	goto 11
		 10	[  0]	TGETS	  8	7	25	; slot8 = require.frontline_armor.target.sym
		 11	[  0]	IST  	   		8	; if require.frontline_armor.target.sym
		 12	[  0]	JMP  	  9		1	; 	goto 14
		 13	[  0]	RET0 	  0		1	; return
		 14	[  0]	IST  	   		6	; if slot6
		 15	[  0]	JMP  	  9		1	; 	goto 17
		 16	[  0]	KSHORT	  6		1	; slot6 = 1
		 17	[  0]	GGET 	  9		24	; slot9 = _env["math"]
		 18	[  0]	TGETS	  9	9	23	; slot9 = math.max
		 19	[  0]	MULNV	 11	6	0	; slot11 = 8 * slot6
		 20	[  0]	GGET 	 12		24	; slot12 = _env["math"]
		 21	[  0]	TGETS	 12	12	22	; slot12 = math.floor
		 22	[  0]	GGET 	 14		24	; slot14 = _env["math"]
		 23	[  0]	TGETS	 14	14	21	; slot14 = math.min
		 24	[  0]	MOV  	 16		4	; slot16 = slot4
		 25	[  0]	MOV  	 17		5	; slot17 = slot5
		 26	[  0]	CALL 	 14	2	3	; slot14 = math.min(slot15, slot16)
		 27	[  0]	MULVN	 14	14	1	; slot14 = math.min * 0.42
		 28	[  0]	ADDVN	 14	14	2	; slot14 = slot14 + 0.5
		 29	[  0]	CALL 	 12	0	2	; MULTRES = math.floor(slot13)
		 30	[  0]	CALLM	  9	2	1	; slot9 = math.max(slot10, ...MULTRES)
		 31	[  0]	GGET 	 10		24	; slot10 = _env["math"]
		 32	[  0]	TGETS	 10	10	22	; slot10 = math.floor
		 33	[  0]	ADDVV	 12	2	4	; slot12 = slot2 + slot4
		 34	[  0]	SUBVV	 12	12	9	; slot12 = slot12 - math.max
		 35	[  0]	MULNV	 13	6	3	; slot13 = 2 * slot6
		 36	[  0]	ADDVV	 12	12	13	; slot12 = slot12 + slot13
		 37	[  0]	ADDVN	 12	12	2	; slot12 = slot12 + 0.5
		 38	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
		 39	[  0]	GGET 	 11		24	; slot11 = _env["math"]
		 40	[  0]	TGETS	 11	11	22	; slot11 = math.floor
		 41	[  0]	ADDVV	 13	3	5	; slot13 = slot3 + slot5
		 42	[  0]	SUBVV	 13	13	9	; slot13 = slot13 - math.max
		 43	[  0]	MULNV	 14	6	3	; slot14 = 2 * slot6
		 44	[  0]	ADDVV	 13	13	14	; slot13 = slot13 + slot14
		 45	[  0]	ADDVN	 13	13	2	; slot13 = slot13 + 0.5
		 46	[  0]	CALL 	 11	2	2	; slot11 = math.floor(slot12)
		 47	[  0]	ISFC 	 12		1	; slot12 = slot1; if not slot1
		 48	[  0]	JMP  	 12		5	; 	goto 54
		 49	[  0]	TGETS	 12	1	20	; slot12 = slot1.iconsSmall
		 50	[  0]	ISF  	   		12	; if not <unknown table>.iconsSmall
		 51	[  0]	JMP  	 13		2	; 	goto 54
		 52	[  0]	TGETS	 12	1	20	; slot12 = slot1.iconsSmall
		 53	[  0]	TGETV	 12	12	8	; slot12 = <unknown table>.iconsSmall[require.frontline_armor.target.sym]
		 54	[  0]	TGETS	 13	0	19	; slot13 = slot0.mode
		 55	[  0]	ISNES	 13		18	; if <unknown table>.mode ~= "battle"
		 56	[  0]	JMP  	 13		15	; 	goto 72
		 57	[  0]	TGETS	 13	7	17	; slot13 = require.frontline_armor.target.alive
		 58	[  0]	ISF  	   		13	; if not require.frontline_armor.target.alive
		 59	[  0]	JMP  	 14		13	; 	goto 73
		 60	[  0]	TGETS	 13	7	16	; slot13 = require.frontline_armor.target.dying
		 61	[  0]	IST  	   		13	; if require.frontline_armor.target.dying
		 62	[  0]	JMP  	 13		7	; 	goto 70
		 63	[  0]	TGETS	 13	7	15	; slot13 = require.frontline_armor.target.hp
		 64	[  0]	IST  	   		13	; if require.frontline_armor.target.hp
		 65	[  0]	JMP  	 14		1	; 	goto 67
		 66	[  0]	KSHORT	 13		0	; slot13 = 0
		 67	[  0]	KSHORT	 14		0	; slot14 = 0
		 68	[  0]	ISLT 	 14		13	; if slot14 < slot13
		 69	[  0]	JMP  	 13		2	; 	goto 72
		 70	[  0]	KPRI 	 13		1	; slot13 = false
		 71	[  0]	JMP  	 14		1	; 	goto 73
		 72	[  0]	KPRI 	 13		2	; slot13 = true
		 73	[  0]	ISF  	   		13	; if not slot13
		 74	[  0]	JMP  	 14		2	; 	goto 77
		 75	[  0]	KSHORT	 14		1	; slot14 = 1
		 76	[  0]	JMP  	 15		1	; 	goto 78
		 77	[  0]	KNUM 	 14		4	; slot14 = 0.4
		 78	[  0]	GGET 	 15		14	; slot15 = _env["love"]
		 79	[  0]	TGETS	 15	15	13	; slot15 = love.graphics
		 80	[  0]	TGETS	 15	15	12	; slot15 = love.graphics.push
		 81	[  0]	KSTR 	 17		11	; slot17 = "all"
		 82	[  0]	CALL 	 15	1	2	;  = love.graphics.push(slot16)
		 83	[  0]	GGET 	 15		14	; slot15 = _env["love"]
		 84	[  0]	TGETS	 15	15	13	; slot15 = love.graphics
		 85	[  0]	TGETS	 15	15	10	; slot15 = love.graphics.setShader
		 86	[  0]	CALL 	 15	1	1	;  = love.graphics.setShader()
		 87	[  0]	GGET 	 15		14	; slot15 = _env["love"]
		 88	[  0]	TGETS	 15	15	13	; slot15 = love.graphics
		 89	[  0]	TGETS	 15	15	9	; slot15 = love.graphics.setBlendMode
		 90	[  0]	KSTR 	 17		8	; slot17 = "alpha"
		 91	[  0]	KSTR 	 18		7	; slot18 = "alphamultiply"
		 92	[  0]	CALL 	 15	1	3	;  = love.graphics.setBlendMode(slot16, slot17)
		 93	[  0]	ISF  	   		12	; if not slot12
		 94	[  0]	JMP  	 15		105	; 	goto 200
		 95	[  0]	MOV  	 17		12	; slot17 = slot12
		 96	[  0]	TGETS	 15	12	6	; slot15 = slot12.getWidth
		 97	[  0]	CALL 	 15	2	2	; slot15 = <unknown table>.getWidth(slot16)
		 98	[  0]	MOV  	 18		12	; slot18 = slot12
		 99	[  0]	TGETS	 16	12	5	; slot16 = slot12.getHeight
		100	[  0]	CALL 	 16	2	2	; slot16 = <unknown table>.getHeight(slot17)
		101	[  0]	GGET 	 17		24	; slot17 = _env["math"]
		102	[  0]	TGETS	 17	17	21	; slot17 = math.min
		103	[  0]	MOV  	 19		6	; slot19 = slot6
		104	[  0]	GGET 	 20		24	; slot20 = _env["math"]
		105	[  0]	TGETS	 20	20	23	; slot20 = math.max
		106	[  0]	KSHORT	 22		1	; slot22 = 1
		107	[  0]	MOV  	 23		15	; slot23 = <unknown table>.getWidth
		108	[  0]	CALL 	 20	2	3	; slot20 = math.max(slot21, slot22)
		109	[  0]	DIVVV	 20	9	20	; slot20 = math.max / math.max
		110	[  0]	GGET 	 21		24	; slot21 = _env["math"]
		111	[  0]	TGETS	 21	21	23	; slot21 = math.max
		112	[  0]	KSHORT	 23		1	; slot23 = 1
		113	[  0]	MOV  	 24		16	; slot24 = <unknown table>.getHeight
		114	[  0]	CALL 	 21	2	3	; slot21 = math.max(slot22, slot23)
		115	[  0]	DIVVV	 21	9	21	; slot21 = math.max / math.max
		116	[  0]	CALL 	 17	2	4	; slot17 = math.min(slot18, slot19, slot20)
		117	[  0]	GGET 	 18		24	; slot18 = _env["math"]
		118	[  0]	TGETS	 18	18	22	; slot18 = math.floor
		119	[  0]	MULVV	 20	15	17	; slot20 = <unknown table>.getWidth * math.min
		120	[  0]	SUBVV	 20	9	20	; slot20 = math.max - slot20
		121	[  0]	MULVN	 20	20	2	; slot20 = slot20 * 0.5
		122	[  0]	ADDVV	 20	10	20	; slot20 = math.floor + slot20
		123	[  0]	ADDVN	 20	20	2	; slot20 = slot20 + 0.5
		124	[  0]	CALL 	 18	2	2	; slot18 = math.floor(slot19)
		125	[  0]	GGET 	 19		24	; slot19 = _env["math"]
		126	[  0]	TGETS	 19	19	22	; slot19 = math.floor
		127	[  0]	MULVV	 21	16	17	; slot21 = <unknown table>.getHeight * math.min
		128	[  0]	SUBVV	 21	9	21	; slot21 = math.max - slot21
		129	[  0]	MULVN	 21	21	2	; slot21 = slot21 * 0.5
		130	[  0]	ADDVV	 21	11	21	; slot21 = math.floor + slot21
		131	[  0]	ADDVN	 21	21	2	; slot21 = slot21 + 0.5
		132	[  0]	CALL 	 19	2	2	; slot19 = math.floor(slot20)
		133	[  0]	GGET 	 20		14	; slot20 = _env["love"]
		134	[  0]	TGETS	 20	20	13	; slot20 = love.graphics
		135	[  0]	TGETS	 20	20	4	; slot20 = love.graphics.setColor
		136	[  0]	KSHORT	 22		0	; slot22 = 0
		137	[  0]	KSHORT	 23		0	; slot23 = 0
		138	[  0]	KSHORT	 24		0	; slot24 = 0
		139	[  0]	KSHORT	 25		1	; slot25 = 1
		140	[  0]	CALL 	 20	1	5	;  = love.graphics.setColor(slot21, slot22, slot23, slot24)
		141	[  0]	GGET 	 20		14	; slot20 = _env["love"]
		142	[  0]	TGETS	 20	20	13	; slot20 = love.graphics
		143	[  0]	TGETS	 20	20	3	; slot20 = love.graphics.draw
		144	[  0]	MOV  	 22		12	; slot22 = slot12
		145	[  0]	SUBVV	 23	18	6	; slot23 = math.floor - slot6
		146	[  0]	MOV  	 24		19	; slot24 = math.floor
		147	[  0]	KSHORT	 25		0	; slot25 = 0
		148	[  0]	MOV  	 26		17	; slot26 = math.min
		149	[  0]	MOV  	 27		17	; slot27 = math.min
		150	[  0]	CALL 	 20	1	7	;  = love.graphics.draw(slot21, slot22, slot23, math.floor, slot25, math.min)
		151	[  0]	GGET 	 20		14	; slot20 = _env["love"]
		152	[  0]	TGETS	 20	20	13	; slot20 = love.graphics
		153	[  0]	TGETS	 20	20	3	; slot20 = love.graphics.draw
		154	[  0]	MOV  	 22		12	; slot22 = slot12
		155	[  0]	ADDVV	 23	18	6	; slot23 = math.floor + slot6
		156	[  0]	MOV  	 24		19	; slot24 = math.floor
		157	[  0]	KSHORT	 25		0	; slot25 = 0
		158	[  0]	MOV  	 26		17	; slot26 = math.min
		159	[  0]	MOV  	 27		17	; slot27 = math.min
		160	[  0]	CALL 	 20	1	7	;  = love.graphics.draw(slot21, slot22, slot23, math.floor, slot25, math.min)
		161	[  0]	GGET 	 20		14	; slot20 = _env["love"]
		162	[  0]	TGETS	 20	20	13	; slot20 = love.graphics
		163	[  0]	TGETS	 20	20	3	; slot20 = love.graphics.draw
		164	[  0]	MOV  	 22		12	; slot22 = slot12
		165	[  0]	MOV  	 23		18	; slot23 = math.floor
		166	[  0]	SUBVV	 24	19	6	; slot24 = math.floor - slot6
		167	[  0]	KSHORT	 25		0	; slot25 = 0
		168	[  0]	MOV  	 26		17	; slot26 = math.min
		169	[  0]	MOV  	 27		17	; slot27 = math.min
		170	[  0]	CALL 	 20	1	7	;  = love.graphics.draw(slot21, slot22, math.floor, slot24, slot25, math.min)
		171	[  0]	GGET 	 20		14	; slot20 = _env["love"]
		172	[  0]	TGETS	 20	20	13	; slot20 = love.graphics
		173	[  0]	TGETS	 20	20	3	; slot20 = love.graphics.draw
		174	[  0]	MOV  	 22		12	; slot22 = slot12
		175	[  0]	MOV  	 23		18	; slot23 = math.floor
		176	[  0]	ADDVV	 24	19	6	; slot24 = math.floor + slot6
		177	[  0]	KSHORT	 25		0	; slot25 = 0
		178	[  0]	MOV  	 26		17	; slot26 = math.min
		179	[  0]	MOV  	 27		17	; slot27 = math.min
		180	[  0]	CALL 	 20	1	7	;  = love.graphics.draw(slot21, slot22, math.floor, slot24, slot25, math.min)
		181	[  0]	GGET 	 20		14	; slot20 = _env["love"]
		182	[  0]	TGETS	 20	20	13	; slot20 = love.graphics
		183	[  0]	TGETS	 20	20	4	; slot20 = love.graphics.setColor
		184	[  0]	MOV  	 22		14	; slot22 = slot14
		185	[  0]	MOV  	 23		14	; slot23 = slot14
		186	[  0]	MOV  	 24		14	; slot24 = slot14
		187	[  0]	KSHORT	 25		1	; slot25 = 1
		188	[  0]	CALL 	 20	1	5	;  = love.graphics.setColor(slot21, slot22, slot23, slot24)
		189	[  0]	GGET 	 20		14	; slot20 = _env["love"]
		190	[  0]	TGETS	 20	20	13	; slot20 = love.graphics
		191	[  0]	TGETS	 20	20	3	; slot20 = love.graphics.draw
		192	[  0]	MOV  	 22		12	; slot22 = slot12
		193	[  0]	MOV  	 23		18	; slot23 = math.floor
		194	[  0]	MOV  	 24		19	; slot24 = math.floor
		195	[  0]	KSHORT	 25		0	; slot25 = 0
		196	[  0]	MOV  	 26		17	; slot26 = math.min
		197	[  0]	MOV  	 27		17	; slot27 = math.min
		198	[  0]	CALL 	 20	1	7	;  = love.graphics.draw(slot21, slot22, math.floor, math.floor, slot25, math.min)
		199	[  0]	JMP  	 15		18	; 	goto 218
		200	[  0]	GGET 	 15		14	; slot15 = _env["love"]
		201	[  0]	TGETS	 15	15	13	; slot15 = love.graphics
		202	[  0]	TGETS	 15	15	4	; slot15 = love.graphics.setColor
		203	[  0]	MOV  	 17		14	; slot17 = slot14
		204	[  0]	MOV  	 18		14	; slot18 = slot14
		205	[  0]	MOV  	 19		14	; slot19 = slot14
		206	[  0]	KSHORT	 20		1	; slot20 = 1
		207	[  0]	CALL 	 15	1	5	;  = love.graphics.setColor(<unknown table>.getHeight, slot17, slot18, slot19)
		208	[  0]	GGET 	 15		29	; slot15 = _env["require"]
		209	[  0]	KSTR 	 17		2	; slot17 = "src.ui.render"
		210	[  0]	CALL 	 15	2	2	; slot15 = require(<unknown table>.getHeight)
		211	[  0]	TGETS	 15	15	1	; slot15 = require.drawSymbol
		212	[  0]	MOV  	 17		8	; slot17 = require.frontline_armor.target.sym
		213	[  0]	MOV  	 18		10	; slot18 = math.floor
		214	[  0]	MOV  	 19		11	; slot19 = math.floor
		215	[  0]	MOV  	 20		9	; slot20 = math.max
		216	[  0]	MOV  	 21		1	; slot21 = slot1
		217	[  0]	CALL 	 15	1	6	;  = require.drawSymbol(<unknown table>.getHeight, require.frontline_armor.target.sym, math.floor, math.floor, math.max)
		218	[  0]	GGET 	 15		14	; slot15 = _env["love"]
		219	[  0]	TGETS	 15	15	13	; slot15 = love.graphics
		220	[  0]	TGETS	 15	15	0	; slot15 = love.graphics.pop
		221	[  0]	CALL 	 15	1	1	;  = love.graphics.pop()
		222	[  0]	RET0 	  0		1	; return
	149	[  0]	TSETS	 11	10	212	; slot10.draw = slot11
	150	[  0]	MOV  	  9		10	; slot9 = slot10
	151	[  0]	KPRI 	 10		0	; slot10 = nil
	152	[  0]	TNEW 	 11		0	; slot11 = new table( array: 0, dict: 1)
	153	[  0]	KPRI 	 12		0	; slot12 = nil
	154	[  0]	FNEW 	 13		129	; N/A:0-0: 0 args, 1 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	IST  	   		0	; if uv0"unknown"
		  3	[  0]	JMP  	  0		41	; 	goto 45
		  4	[  0]	GGET 	  0		10	; slot0 = _env["love"]
		  5	[  0]	TGETS	  0	0	9	; slot0 = love.image
		  6	[  0]	TGETS	  0	0	8	; slot0 = love.image.newImageData
		  7	[  0]	KSHORT	  2		1	; slot2 = 1
		  8	[  0]	KSHORT	  3		256	; slot3 = 256
		  9	[  0]	CALL 	  0	2	3	; slot0 = love.image.newImageData(slot1, slot2)
		 10	[  0]	KSHORT	  1		0	; slot1 = 0
		 11	[  0]	KSHORT	  2		255	; slot2 = 255
		 12	[  0]	KSHORT	  3		1	; slot3 = 1
		 13	[  0]	FORI 	  1		10	; for slot4 = slot1,slot2,slot3 else goto 24
		 14	[  0]	MOV  	  7		0	; slot7 = slot0
		 15	[  0]	TGETS	  5	0	7	; slot5 = slot0.setPixel
		 16	[  0]	KSHORT	  8		0	; slot8 = 0
		 17	[  0]	MOV  	  9		4	; slot9 = slot4
		 18	[  0]	KSHORT	 10		1	; slot10 = 1
		 19	[  0]	KSHORT	 11		1	; slot11 = 1
		 20	[  0]	KSHORT	 12		1	; slot12 = 1
		 21	[  0]	DIVVN	 13	4	0	; slot13 = slot4 / 255
		 22	[  0]	CALL 	  5	1	8	;  = <unknown table>.setPixel(slot6, slot7, slot8, slot9, slot10, slot11, slot12)
		 23	[  0]	FORL 	  1		-10	; slot4 = slot4 + slot3; if cmp(slot4, sign slot3,  slot2) goto 14
		 24	[  0]	GGET 	  1		10	; slot1 = _env["love"]
		 25	[  0]	TGETS	  1	1	6	; slot1 = love.graphics
		 26	[  0]	TGETS	  1	1	5	; slot1 = love.graphics.newImage
		 27	[  0]	MOV  	  3		0	; slot3 = slot0
		 28	[  0]	CALL 	  1	2	2	; slot1 = love.graphics.newImage(slot2)
		 29	[  0]	USETV	  0		1	; uv0"unknwon" = slot1
		 30	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 31	[  0]	MOV  	  3		1	; slot3 = uv0"unknown"
		 32	[  0]	TGETS	  1	1	4	; slot1 = uv0"unknown".setFilter
		 33	[  0]	KSTR 	  4		3	; slot4 = "linear"
		 34	[  0]	KSTR 	  5		3	; slot5 = "linear"
		 35	[  0]	CALL 	  1	1	4	;  = uv0"unknown".setFilter(slot2, uv0"unknown", slot4)
		 36	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 37	[  0]	MOV  	  3		1	; slot3 = uv0"unknown"
		 38	[  0]	TGETS	  1	1	2	; slot1 = uv0"unknown".setWrap
		 39	[  0]	KSTR 	  4		1	; slot4 = "clamp"
		 40	[  0]	KSTR 	  5		1	; slot5 = "clamp"
		 41	[  0]	CALL 	  1	1	4	;  = uv0"unknown".setWrap(slot2, uv0"unknown", slot4)
		 42	[  0]	MOV  	  3		0	; slot3 = slot0
		 43	[  0]	TGETS	  1	0	0	; slot1 = slot0.release
		 44	[  0]	CALL 	  1	1	2	;  = <unknown table>.release(slot2)
		 45	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 46	[  0]	RET1 	  0		2	; return uv0"unknown"
	155	[  0]	TSETS	 13	11	214	; slot11.get = slot13
	156	[  0]	MOV  	 10		11	; slot10 = slot11
	157	[  0]	UCLO 	 11		0	; nil uvs >= r11; goto 158
	158	[  0]	KPRI 	 11		0	; slot11 = nil
	159	[  0]	TNEW 	 12		0	; slot12 = new table( array: 0, dict: 1)
	160	[  0]	TNEW 	 13		0	; slot13 = new table( array: 0, dict: 1)
	161	[  0]	TNEW 	 14		0	; slot14 = new table( array: 0, dict: 1)
	162	[  0]	KSTR 	 15		128	; slot15 = "[%z-\xc2-\xf4][\x80-\xbf]*"
	163	[  0]	KSTR 	 16		127	; slot16 = ".。,，、!！?？;；:：%％‰)]}）］｝〉》」』】〕〗〙〛’”»…"
	164	[  0]	MOV  	 18		16	; slot18 = slot16
	165	[  0]	TGETS	 16	16	126	; slot16 = slot16.gmatch
	166	[  0]	MOV  	 19		15	; slot19 = slot15
	167	[  0]	CALL 	 16	4	3	; slot16, slot17, slot18 = <unknown table>.gmatch(slot17, slot18)
	168	[  0]	JMP  	 19		2	; 	goto 171
	169	[  0]	KPRI 	 20		2	; slot20 = true
	170	[  0]	TSETV	 20	13	19	; slot13[slot19] = slot20
	171	[  0]	ITERC	 19	2	3	; slot19, slot20, slot21 = <unknown table>.gmatch, slot17, slot18; slot19 = <unknown table>.gmatch(slot17, slot18)
	172	[  0]	ITERL	 19		-4	; slot18 = slot19; if slot19 != nil goto 169
	173	[  0]	KSTR 	 16		125	; slot16 = "([{（［｛〈《「『【〔〖〘〚‘“«"
	174	[  0]	MOV  	 18		16	; slot18 = slot16
	175	[  0]	TGETS	 16	16	126	; slot16 = slot16.gmatch
	176	[  0]	MOV  	 19		15	; slot19 = slot15
	177	[  0]	CALL 	 16	4	3	; slot16, slot17, slot18 = <unknown table>.gmatch(slot17, slot18)
	178	[  0]	JMP  	 19		2	; 	goto 181
	179	[  0]	KPRI 	 20		2	; slot20 = true
	180	[  0]	TSETV	 20	14	19	; slot14[slot19] = slot20
	181	[  0]	ITERC	 19	2	3	; slot19, slot20, slot21 = <unknown table>.gmatch, slot17, slot18; slot19 = <unknown table>.gmatch(slot17, slot18)
	182	[  0]	ITERL	 19		-4	; slot18 = slot19; if slot19 != nil goto 179
	183	[  0]	FNEW 	 16		123	; N/A:0-0: 1 args, 3 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  2	[  0]	KSHORT	  2		1	; slot2 = 1
		  3	[  0]	LEN  	  3		0	; slot3 = #slot0
		  4	[  0]	ISGT 	  2		3	; if slot2 > slot3
		  5	[  0]	JMP  	  3		77	; 	goto 83
		  6	[  0]	LOOP 	  3		76	; Loop start, exit goto 83
		  7	[  0]	MOV  	  5		0	; slot5 = slot0
		  8	[  0]	TGETS	  3	0	6	; slot3 = slot0.sub
		  9	[  0]	MOV  	  6		2	; slot6 = slot2
		 10	[  0]	CALL 	  3	2	3	; slot3 = <unknown table>.sub(slot4, slot5)
		 11	[  0]	MOV  	  6		3	; slot6 = slot3
		 12	[  0]	TGETS	  4	3	5	; slot4 = slot3.match
		 13	[  0]	KSTR 	  7		4	; slot7 = "^%{[%w_%-]+%.png%}"
		 14	[  0]	CALL 	  4	2	3	; slot4 = <unknown table>.match(slot5, slot6)
		 15	[  0]	ISF  	   		4	; if not <unknown table>.match
		 16	[  0]	JMP  	  5		15	; 	goto 32
		 17	[  0]	MOV  	  7		3	; slot7 = slot3
		 18	[  0]	TGETS	  5	3	6	; slot5 = slot3.sub
		 19	[  0]	LEN  	  8		4	; slot8 = #<unknown table>.match
		 20	[  0]	ADDVN	  8	8	0	; slot8 = slot8 + 1
		 21	[  0]	CALL 	  5	2	3	; slot5 = <unknown table>.sub(slot6, slot7)
		 22	[  0]	MOV  	  7		5	; slot7 = <unknown table>.sub
		 23	[  0]	TGETS	  5	5	5	; slot5 = <unknown table>.sub.match
		 24	[  0]	KSTR 	  8		3	; slot8 = "^%s*[%+%-]?%d[%d,%.]*%%?"
		 25	[  0]	CALL 	  5	2	3	; slot5 = <unknown table>.sub.match(slot6, <unknown table>.sub)
		 26	[  0]	ISF  	   		5	; if not <unknown table>.sub.match
		 27	[  0]	JMP  	  6		17	; 	goto 45
		 28	[  0]	MOV  	  6		4	; slot6 = <unknown table>.match
		 29	[  0]	MOV  	  7		5	; slot7 = <unknown table>.sub.match
		 30	[  0]	CAT  	  4	6	7	; slot4 = <unknown table>.match .. <unknown table>.sub.match
		 31	[  0]	JMP  	  5		13	; 	goto 45
		 32	[  0]	MOV  	  7		3	; slot7 = slot3
		 33	[  0]	TGETS	  5	3	5	; slot5 = slot3.match
		 34	[  0]	KSTR 	  8		2	; slot8 = "^[%+%-]?%d[%d,%.]*%%?"
		 35	[  0]	CALL 	  5	2	3	; slot5 = <unknown table>.match(<unknown table>.match, slot7)
		 36	[  0]	ISTC 	  4		5	; slot4 = <unknown table>.match; if <unknown table>.match
		 37	[  0]	JMP  	  6		7	; 	goto 45
		 38	[  0]	MOV  	  7		3	; slot7 = slot3
		 39	[  0]	TGETS	  5	3	5	; slot5 = slot3.match
		 40	[  0]	KSTR 	  8		1	; slot8 = "^"
		 41	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 42	[  0]	CAT  	  8	8	9	; slot8 = slot8 .. uv0"unknown"
		 43	[  0]	CALL 	  5	2	3	; slot5 = <unknown table>.match(<unknown table>.match, slot7)
		 44	[  0]	MOV  	  4		5	; slot4 = <unknown table>.match
		 45	[  0]	IST  	   		4	; if <unknown table>.match
		 46	[  0]	JMP  	  5		1	; 	goto 48
		 47	[  0]	JMP  	  3		35	; 	goto 83
		 48	[  0]	LEN  	  5		1	; slot5 = #slot1
		 49	[  0]	TGETV	  5	1	5	; slot5 = slot1[slot5]
		 50	[  0]	KPRI 	  6		0	; slot6 = nil
		 51	[  0]	ISF  	   		5	; if not slot5
		 52	[  0]	JMP  	  7		8	; 	goto 61
		 53	[  0]	MOV  	  9		5	; slot9 = slot5
		 54	[  0]	TGETS	  7	5	0	; slot7 = slot5.gmatch
		 55	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 56	[  0]	CALL 	  7	4	3	; slot7, slot8, slot9 = <unknown table>.gmatch(slot8, slot9)
		 57	[  0]	JMP  	 10		1	; 	goto 59
		 58	[  0]	MOV  	  6		10	; slot6 = uv0"unknown"
		 59	[  0]	ITERC	 10	2	3	; slot10, slot11, slot12 = <unknown table>.gmatch, slot8, slot9; slot10 = <unknown table>.gmatch(slot8, slot9)
		 60	[  0]	ITERL	 10		-3	; slot9 = uv0"unknown"; if uv0"unknown" != nil goto 58
		 61	[  0]	ISF  	   		5	; if not slot5
		 62	[  0]	JMP  	  7		14	; 	goto 77
		 63	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 64	[  0]	TGETV	  7	7	4	; slot7 = uv1"unknown"[<unknown table>.match]
		 65	[  0]	IST  	   		7	; if slot7
		 66	[  0]	JMP  	  8		4	; 	goto 71
		 67	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		 68	[  0]	TGETV	  7	7	6	; slot7 = uv2"unknown"[uv0"unknown"]
		 69	[  0]	ISF  	   		7	; if not slot7
		 70	[  0]	JMP  	  8		6	; 	goto 77
		 71	[  0]	LEN  	  7		1	; slot7 = #slot1
		 72	[  0]	MOV  	  8		5	; slot8 = slot5
		 73	[  0]	MOV  	  9		4	; slot9 = <unknown table>.match
		 74	[  0]	CAT  	  8	8	9	; slot8 = slot8 .. <unknown table>.match
		 75	[  0]	TSETV	  8	1	7	; slot1[slot7] = slot8
		 76	[  0]	JMP  	  7		3	; 	goto 80
		 77	[  0]	LEN  	  7		1	; slot7 = #slot1
		 78	[  0]	ADDVN	  7	7	0	; slot7 = slot7 + 1
		 79	[  0]	TSETV	  4	1	7	; slot1[slot7] = <unknown table>.match
		 80	[  0]	LEN  	  7		4	; slot7 = #<unknown table>.match
		 81	[  0]	ADDVV	  2	2	7	; slot2 = slot2 + slot7
		 82	[  0]	JMP  	  3		-80	; 	goto 3
		 83	[  0]	RET1 	  1		2	; return slot1
	184	[  0]	TSETS	 16	12	124	; slot12.splitUnits = slot16
	185	[  0]	FNEW 	 16		121	; N/A:0-0: 4 args, 4 upvalues, 26 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  4		15	; slot4 = _env["tostring"]
		  2	[  0]	ISTC 	  6		0	; slot6 = slot0; if slot0
		  3	[  0]	JMP  	  6		1	; 	goto 5
		  4	[  0]	KSTR 	  6		14	; slot6 = ""
		  5	[  0]	CALL 	  4	2	2	; slot4 = tostring(slot5)
		  6	[  0]	GGET 	  5		13	; slot5 = _env["math"]
		  7	[  0]	TGETS	  5	5	12	; slot5 = math.max
		  8	[  0]	KSHORT	  7		1	; slot7 = 1
		  9	[  0]	GGET 	  8		11	; slot8 = _env["tonumber"]
		 10	[  0]	MOV  	 10		1	; slot10 = slot1
		 11	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 12	[  0]	IST  	   		8	; if tonumber
		 13	[  0]	JMP  	  9		1	; 	goto 15
		 14	[  0]	KSHORT	  8		1	; slot8 = 1
		 15	[  0]	CALL 	  5	2	3	; slot5 = math.max(slot6, slot7)
		 16	[  0]	MOV  	  1		5	; slot1 = math.max
		 17	[  0]	MOV  	  0		4	; slot0 = tostring
		 18	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 19	[  0]	MOV  	  5		0	; slot5 = tostring
		 20	[  0]	KSTR 	  6		10	; slot6 = "
		"
		 21	[  0]	CAT  	  5	5	6	; slot5 = tostring .. slot6
		 22	[  0]	MOV  	  7		5	; slot7 = slot5
		 23	[  0]	TGETS	  5	5	9	; slot5 = slot5.gmatch
		 24	[  0]	KSTR 	  8		8	; slot8 = "(.-)
		"
		 25	[  0]	CALL 	  5	4	3	; slot5, slot6, slot7 = <unknown table>.gmatch(slot6, slot7)
		 26	[  0]	JMP  	  8		150	; 	goto 177
		 27	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
		 28	[  0]	MOV  	 12		8	; slot12 = slot8
		 29	[  0]	TGETS	 10	8	9	; slot10 = slot8.gmatch
		 30	[  0]	KSTR 	 13		7	; slot13 = "%S+"
		 31	[  0]	CALL 	 10	4	3	; slot10, slot11, slot12 = <unknown table>.gmatch(slot11, slot12)
		 32	[  0]	JMP  	 13		73	; 	goto 106
		 33	[  0]	LEN  	 14		9	; slot14 = #slot9
		 34	[  0]	TGETV	 14	9	14	; slot14 = slot9[slot14]
		 35	[  0]	KPRI 	 15		0	; slot15 = nil
		 36	[  0]	ISF  	   		14	; if not slot14
		 37	[  0]	JMP  	 16		8	; 	goto 46
		 38	[  0]	MOV  	 18		14	; slot18 = slot14
		 39	[  0]	TGETS	 16	14	9	; slot16 = slot14.gmatch
		 40	[  0]	UGET 	 19		0	; slot19 = uv0"unknwon"
		 41	[  0]	CALL 	 16	4	3	; slot16, slot17, slot18 = <unknown table>.gmatch(slot17, slot18)
		 42	[  0]	JMP  	 19		1	; 	goto 44
		 43	[  0]	MOV  	 15		19	; slot15 = uv0"unknown"
		 44	[  0]	ITERC	 19	2	3	; slot19, slot20, slot21 = <unknown table>.gmatch, slot17, slot18; slot19 = <unknown table>.gmatch(slot17, slot18)
		 45	[  0]	ITERL	 19		-3	; slot18 = uv0"unknown"; if uv0"unknown" != nil goto 43
		 46	[  0]	KPRI 	 16		2	; slot16 = true
		 47	[  0]	MOV  	 19		13	; slot19 = slot13
		 48	[  0]	TGETS	 17	13	9	; slot17 = slot13.gmatch
		 49	[  0]	UGET 	 20		0	; slot20 = uv0"unknwon"
		 50	[  0]	CALL 	 17	4	3	; slot17, slot18, slot19 = <unknown table>.gmatch(slot18, slot19)
		 51	[  0]	JMP  	 20		6	; 	goto 58
		 52	[  0]	UGET 	 21		1	; slot21 = uv1"unknwon"
		 53	[  0]	TGETV	 21	21	20	; slot21 = uv1"unknown"[uv0"unknown"]
		 54	[  0]	IST  	   		21	; if slot21
		 55	[  0]	JMP  	 21		2	; 	goto 58
		 56	[  0]	KPRI 	 16		1	; slot16 = false
		 57	[  0]	JMP  	 17		2	; 	goto 60
		 58	[  0]	ITERC	 20	2	3	; slot20, slot21, slot22 = <unknown table>.gmatch, slot18, slot19; slot20 = <unknown table>.gmatch(slot18, slot19)
		 59	[  0]	ITERL	 20		-8	; slot19 = uv0"unknown"; if uv0"unknown" != nil goto 52
		 60	[  0]	ISF  	   		14	; if not slot14
		 61	[  0]	JMP  	 17		12	; 	goto 74
		 62	[  0]	IST  	   		16	; if slot16
		 63	[  0]	JMP  	 17		4	; 	goto 68
		 64	[  0]	UGET 	 17		2	; slot17 = uv2"unknwon"
		 65	[  0]	TGETV	 17	17	15	; slot17 = uv2"unknown"[uv0"unknown"]
		 66	[  0]	ISF  	   		17	; if not slot17
		 67	[  0]	JMP  	 18		6	; 	goto 74
		 68	[  0]	LEN  	 17		9	; slot17 = #slot9
		 69	[  0]	MOV  	 18		14	; slot18 = slot14
		 70	[  0]	MOV  	 19		13	; slot19 = slot13
		 71	[  0]	CAT  	 18	18	19	; slot18 = slot18 .. slot19
		 72	[  0]	TSETV	 18	9	17	; slot9[slot17] = slot18
		 73	[  0]	JMP  	 17		32	; 	goto 106
		 74	[  0]	ISF  	   		14	; if not slot14
		 75	[  0]	JMP  	 17		27	; 	goto 103
		 76	[  0]	MOV  	 19		14	; slot19 = slot14
		 77	[  0]	TGETS	 17	14	6	; slot17 = slot14.match
		 78	[  0]	KSTR 	 20		5	; slot20 = "%{[%w_%-]+%.png%}$"
		 79	[  0]	CALL 	 17	2	3	; slot17 = <unknown table>.match(slot18, slot19)
		 80	[  0]	ISF  	   		17	; if not <unknown table>.match
		 81	[  0]	JMP  	 18		6	; 	goto 88
		 82	[  0]	MOV  	 19		13	; slot19 = slot13
		 83	[  0]	TGETS	 17	13	6	; slot17 = slot13.match
		 84	[  0]	KSTR 	 20		4	; slot20 = "^[%+%-]?%d"
		 85	[  0]	CALL 	 17	2	3	; slot17 = <unknown table>.match(slot18, slot19)
		 86	[  0]	IST  	   		17	; if <unknown table>.match
		 87	[  0]	JMP  	 18		8	; 	goto 96
		 88	[  0]	ISF  	   		3	; if not slot3
		 89	[  0]	JMP  	 17		13	; 	goto 103
		 90	[  0]	MOV  	 19		14	; slot19 = slot14
		 91	[  0]	TGETS	 17	14	6	; slot17 = slot14.match
		 92	[  0]	KSTR 	 20		3	; slot20 = "^[%+%-]?%d[%d,%.]*%%?$"
		 93	[  0]	CALL 	 17	2	3	; slot17 = <unknown table>.match(slot18, slot19)
		 94	[  0]	ISF  	   		17	; if not <unknown table>.match
		 95	[  0]	JMP  	 18		7	; 	goto 103
		 96	[  0]	LEN  	 17		9	; slot17 = #slot9
		 97	[  0]	MOV  	 18		14	; slot18 = slot14
		 98	[  0]	KSTR 	 19		2	; slot19 = " "
		 99	[  0]	MOV  	 20		13	; slot20 = slot13
		100	[  0]	CAT  	 18	18	20	; slot18 = slot18 .. slot19 .. slot20
		101	[  0]	TSETV	 18	9	17	; slot9[slot17] = slot18
		102	[  0]	JMP  	 17		3	; 	goto 106
		103	[  0]	LEN  	 17		9	; slot17 = #slot9
		104	[  0]	ADDVN	 17	17	0	; slot17 = slot17 + 1
		105	[  0]	TSETV	 13	9	17	; slot9[slot17] = slot13
		106	[  0]	ITERC	 13	2	3	; slot13, slot14, slot15 = <unknown table>.gmatch, slot11, slot12; slot13 = <unknown table>.gmatch(slot11, slot12)
		107	[  0]	ITERL	 13		-75	; slot12 = slot13; if slot13 != nil goto 33
		108	[  0]	KSTR 	 10		14	; slot10 = ""
		109	[  0]	GGET 	 11		1	; slot11 = _env["ipairs"]
		110	[  0]	MOV  	 13		9	; slot13 = slot9
		111	[  0]	CALL 	 11	4	2	; slot11, slot12, slot13 = ipairs(slot12)
		112	[  0]	JMP  	 14		54	; 	goto 167
		113	[  0]	ISNES	 10		14	; if slot10 ~= ""
		114	[  0]	JMP  	 16		2	; 	goto 117
		115	[  0]	ISTC 	 16		15	; slot16 = uv0"unknown"; if uv0"unknown"
		116	[  0]	JMP  	 16		4	; 	goto 121
		117	[  0]	MOV  	 16		10	; slot16 = slot10
		118	[  0]	KSTR 	 17		2	; slot17 = " "
		119	[  0]	MOV  	 18		15	; slot18 = uv0"unknown"
		120	[  0]	CAT  	 16	16	18	; slot16 = slot16 .. slot17 .. uv0"unknown"
		121	[  0]	MOV  	 17		2	; slot17 = slot2
		122	[  0]	MOV  	 19		16	; slot19 = slot16
		123	[  0]	CALL 	 17	2	2	; slot17 = slot17(uv0"unknown")
		124	[  0]	ISGT 	 17		1	; if slot17 > math.max
		125	[  0]	JMP  	 17		2	; 	goto 128
		126	[  0]	MOV  	 10		16	; slot10 = slot16
		127	[  0]	JMP  	 17		39	; 	goto 167
		128	[  0]	ISEQS	 10		14	; if slot10 == ""
		129	[  0]	JMP  	 17		3	; 	goto 133
		130	[  0]	LEN  	 17		4	; slot17 = #slot4
		131	[  0]	ADDVN	 17	17	0	; slot17 = slot17 + 1
		132	[  0]	TSETV	 10	4	17	; slot4[slot17] = slot10
		133	[  0]	KSTR 	 10		14	; slot10 = ""
		134	[  0]	MOV  	 17		2	; slot17 = slot2
		135	[  0]	MOV  	 19		15	; slot19 = uv0"unknown"
		136	[  0]	CALL 	 17	2	2	; slot17 = slot17(uv0"unknown")
		137	[  0]	ISGT 	 17		1	; if slot17 > math.max
		138	[  0]	JMP  	 17		2	; 	goto 141
		139	[  0]	MOV  	 10		15	; slot10 = uv0"unknown"
		140	[  0]	JMP  	 17		26	; 	goto 167
		141	[  0]	GGET 	 17		1	; slot17 = _env["ipairs"]
		142	[  0]	UGET 	 19		3	; slot19 = uv3"unknwon"
		143	[  0]	TGETS	 19	19	0	; slot19 = uv3"unknown".splitUnits
		144	[  0]	MOV  	 21		15	; slot21 = uv0"unknown"
		145	[  0]	CALL 	 19	0	2	; MULTRES = uv3"unknown".splitUnits(slot20)
		146	[  0]	CALLM	 17	4	0	; slot17, slot18, slot19 = ipairs(, ...MULTRES)
		147	[  0]	JMP  	 20		17	; 	goto 165
		148	[  0]	ISEQS	 10		14	; if uv0"unknown" == ""
		149	[  0]	JMP  	 22		12	; 	goto 162
		150	[  0]	MOV  	 22		2	; slot22 = slot2
		151	[  0]	MOV  	 24		10	; slot24 = uv0"unknown"
		152	[  0]	MOV  	 25		21	; slot25 = uv0"unknown"
		153	[  0]	CAT  	 24	24	25	; slot24 = uv0"unknown" .. uv0"unknown"
		154	[  0]	CALL 	 22	2	2	; slot22 = slot22(slot23)
		155	[  0]	ISGE 	  1		22	; if math.max >= slot22
		156	[  0]	JMP  	 22		5	; 	goto 162
		157	[  0]	LEN  	 22		4	; slot22 = #slot4
		158	[  0]	ADDVN	 22	22	0	; slot22 = slot22 + 1
		159	[  0]	MOV  	 23		10	; slot23 = uv0"unknown"
		160	[  0]	KSTR 	 10		14	; slot10 = ""
		161	[  0]	TSETV	 23	4	22	; slot4[slot22] = uv0"unknown"
		162	[  0]	MOV  	 22		10	; slot22 = slot10
		163	[  0]	MOV  	 23		21	; slot23 = uv0"unknown"
		164	[  0]	CAT  	 10	22	23	; slot10 = slot22 .. uv0"unknown"
		165	[  0]	ITERC	 20	3	3	; slot20, slot21, slot22 = ipairs, uv0"unknown", uv3"unknown".splitUnits; slot20, slot21 = ipairs(uv0"unknown", uv3"unknown".splitUnits)
		166	[  0]	ITERL	 20		-19	; uv3"unknown".splitUnits = slot20; if slot20 != nil goto 148
		167	[  0]	ITERC	 14	3	3	; slot14, slot15, slot16 = ipairs, slot12, slot13; slot14, slot15 = ipairs(slot12, slot13)
		168	[  0]	ITERL	 14		-56	; slot13 = slot14; if slot14 != nil goto 113
		169	[  0]	ISNES	 10		14	; if slot10 ~= ""
		170	[  0]	JMP  	 11		3	; 	goto 174
		171	[  0]	LEN  	 11		9	; slot11 = #slot9
		172	[  0]	ISNEN	 11		1	; if slot11 ~= 0
		173	[  0]	JMP  	 11		3	; 	goto 177
		174	[  0]	LEN  	 11		4	; slot11 = #slot4
		175	[  0]	ADDVN	 11	11	0	; slot11 = slot11 + 1
		176	[  0]	TSETV	 10	4	11	; slot4[slot11] = slot10
		177	[  0]	ITERC	  8	2	3	; slot8, slot9, slot10 = <unknown table>.gmatch, slot6, slot7; slot8 = <unknown table>.gmatch(slot6, slot7)
		178	[  0]	ITERL	  8		-152	; slot7 = slot8; if slot8 != nil goto 27
		179	[  0]	RET1 	  4		2	; return slot4
	186	[  0]	TSETS	 16	12	122	; slot12.wrap = slot16
	187	[  0]	MOV  	 11		12	; slot11 = slot12
	188	[  0]	UCLO 	 12		0	; nil uvs >= r12; goto 189
	189	[  0]	KPRI 	 12		0	; slot12 = nil
	190	[  0]	TNEW 	 13		0	; slot13 = new table( array: 0, dict: 1)
	191	[  0]	FNEW 	 14		119	; N/A:0-0: 4 args, 0 upvalues, 19 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		1	; if slot1
		  2	[  0]	JMP  	  4		5	; 	goto 8
		  3	[  0]	MOV  	  4		3	; slot4 = slot3
		  4	[  0]	MOV  	  6		0	; slot6 = slot0
		  5	[  0]	MOV  	  7		2	; slot7 = slot2
		  6	[  0]	CALL 	  4	1	3	;  = slot4(slot5, slot6)
		  7	[  0]	RET0 	  0		1	; return
		  8	[  0]	KSHORT	  4		1	; slot4 = 1
		  9	[  0]	LEN  	  5		0	; slot5 = #slot0
		 10	[  0]	ISGT 	  4		5	; if slot4 > slot5
		 11	[  0]	JMP  	  5		75	; 	goto 87
		 12	[  0]	LOOP 	  5		74	; Loop start, exit goto 87
		 13	[  0]	KNIL 	  5		7	; slot5, slot6, slot7 = nil
		 14	[  0]	GGET 	  8		2	; slot8 = _env["pairs"]
		 15	[  0]	MOV  	 10		1	; slot10 = slot1
		 16	[  0]	CALL 	  8	4	2	; slot8, slot9, slot10 = pairs(slot9)
		 17	[  0]	ISNEXT	 11		21	; Verify ITERN at 39; goto 39
		 18	[  0]	MOV  	 15		0	; slot15 = slot0
		 19	[  0]	TGETS	 13	0	1	; slot13 = slot0.find
		 20	[  0]	MOV  	 16		11	; slot16 = slot11
		 21	[  0]	MOV  	 17		4	; slot17 = slot4
		 22	[  0]	KPRI 	 18		2	; slot18 = true
		 23	[  0]	CALL 	 13	3	5	; slot13, slot14 = <unknown table>.find(slot14, slot15, slot16, slot17)
		 24	[  0]	ISF  	   		13	; if not <unknown table>.find
		 25	[  0]	JMP  	 15		13	; 	goto 39
		 26	[  0]	ISF  	   		5	; if not slot5
		 27	[  0]	JMP  	 15		6	; 	goto 34
		 28	[  0]	ISLT 	 13		5	; if <unknown table>.find < slot5
		 29	[  0]	JMP  	 15		4	; 	goto 34
		 30	[  0]	ISNEV	 13		5	; if <unknown table>.find ~= slot5
		 31	[  0]	JMP  	 15		7	; 	goto 39
		 32	[  0]	ISGE 	  6		14	; if slot6 >= slot14
		 33	[  0]	JMP  	 15		5	; 	goto 39
		 34	[  0]	MOV  	 15		13	; slot15 = <unknown table>.find
		 35	[  0]	MOV  	 16		14	; slot16 = slot14
		 36	[  0]	MOV  	  7		12	; slot7 = slot12
		 37	[  0]	MOV  	  6		16	; slot6 = slot16
		 38	[  0]	MOV  	  5		15	; slot5 = <unknown table>.find
		 39	[  0]	ITERN	 11	3	3	; slot11, slot12, slot13 = pairs, slot9, slot10; slot11, slot12 = pairs(slot9, slot10)
		 40	[  0]	ITERL	 11		-23	; slot10 = slot11; if slot11 != nil goto 18
		 41	[  0]	IST  	   		5	; if <unknown table>.find
		 42	[  0]	JMP  	  8		8	; 	goto 51
		 43	[  0]	MOV  	  8		3	; slot8 = slot3
		 44	[  0]	MOV  	 12		0	; slot12 = slot0
		 45	[  0]	TGETS	 10	0	0	; slot10 = slot0.sub
		 46	[  0]	MOV  	 13		4	; slot13 = slot4
		 47	[  0]	CALL 	 10	2	3	; slot10 = <unknown table>.sub(slot11, slot12)
		 48	[  0]	MOV  	 11		2	; slot11 = slot2
		 49	[  0]	CALL 	  8	1	3	;  = slot8(slot9, <unknown table>.sub)
		 50	[  0]	JMP  	  5		36	; 	goto 87
		 51	[  0]	ISGE 	  4		5	; if slot4 >= <unknown table>.find
		 52	[  0]	JMP  	  8		8	; 	goto 61
		 53	[  0]	MOV  	  8		3	; slot8 = slot3
		 54	[  0]	MOV  	 12		0	; slot12 = slot0
		 55	[  0]	TGETS	 10	0	0	; slot10 = slot0.sub
		 56	[  0]	MOV  	 13		4	; slot13 = slot4
		 57	[  0]	SUBVN	 14	5	0	; slot14 = <unknown table>.find - 1
		 58	[  0]	CALL 	 10	2	4	; slot10 = <unknown table>.sub(slot11, slot12, slot13)
		 59	[  0]	MOV  	 11		2	; slot11 = slot2
		 60	[  0]	CALL 	  8	1	3	;  = slot8(slot9, <unknown table>.sub)
		 61	[  0]	MOV  	  8		3	; slot8 = slot3
		 62	[  0]	MOV  	 12		0	; slot12 = slot0
		 63	[  0]	TGETS	 10	0	0	; slot10 = slot0.sub
		 64	[  0]	MOV  	 13		5	; slot13 = <unknown table>.find
		 65	[  0]	MOV  	 14		6	; slot14 = slot6
		 66	[  0]	CALL 	 10	2	4	; slot10 = <unknown table>.sub(slot11, slot12, <unknown table>.find)
		 67	[  0]	TNEW 	 11		5	; slot11 = new table( array: 5, dict: 1)
		 68	[  0]	TGETB	 12	7	1	; slot12 = slot7[1]
		 69	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		 70	[  0]	TGETB	 12	7	2	; slot12 = slot7[2]
		 71	[  0]	TSETB	 12	11	2	; slot11[2] = slot12
		 72	[  0]	TGETB	 12	7	3	; slot12 = slot7[3]
		 73	[  0]	TSETB	 12	11	3	; slot11[3] = slot12
		 74	[  0]	TGETB	 12	7	4	; slot12 = slot7[4]
		 75	[  0]	IST  	   		12	; if slot12
		 76	[  0]	JMP  	 13		1	; 	goto 78
		 77	[  0]	KSHORT	 12		1	; slot12 = 1
		 78	[  0]	TGETB	 13	2	4	; slot13 = slot2[4]
		 79	[  0]	IST  	   		13	; if slot13
		 80	[  0]	JMP  	 14		1	; 	goto 82
		 81	[  0]	KSHORT	 13		1	; slot13 = 1
		 82	[  0]	MULVV	 12	12	13	; slot12 = slot12 * slot13
		 83	[  0]	TSETB	 12	11	4	; slot11[4] = slot12
		 84	[  0]	CALL 	  8	1	3	;  = slot8(slot9, <unknown table>.sub)
		 85	[  0]	ADDVN	  4	6	0	; slot4 = slot6 + 1
		 86	[  0]	JMP  	  5		-78	; 	goto 9
		 87	[  0]	RET0 	  0		1	; return
	192	[  0]	TSETS	 14	13	120	; slot13.drawTerms = slot14
	193	[  0]	MOV  	 12		13	; slot12 = slot13
	194	[  0]	KPRI 	 13		0	; slot13 = nil
	195	[  0]	TNEW 	 14		0	; slot14 = new table( array: 0, dict: 1)
	196	[  0]	TDUP 	 15		115	; slot15 = copy table#k115
	197	[  0]	TNEW 	 16		3	; slot16 = new table( array: 3, dict: 1)
	198	[  0]	TDUP 	 17		117	; slot17 = copy table#k117
	199	[  0]	TSETB	 17	16	1	; slot16[1] = slot17
	200	[  0]	TDUP 	 17		116	; slot17 = copy table#k116
	201	[  0]	TSETB	 17	16	2	; slot16[2] = slot17
	202	[  0]	TSETS	 16	15	114	; slot15.U = slot16
	203	[  0]	TNEW 	 16		3	; slot16 = new table( array: 3, dict: 1)
	204	[  0]	TDUP 	 17		113	; slot17 = copy table#k113
	205	[  0]	TSETB	 17	16	1	; slot16[1] = slot17
	206	[  0]	TDUP 	 17		112	; slot17 = copy table#k112
	207	[  0]	TSETB	 17	16	2	; slot16[2] = slot17
	208	[  0]	TSETS	 16	15	111	; slot15.R = slot16
	209	[  0]	TNEW 	 16		3	; slot16 = new table( array: 3, dict: 1)
	210	[  0]	TDUP 	 17		110	; slot17 = copy table#k110
	211	[  0]	TSETB	 17	16	1	; slot16[1] = slot17
	212	[  0]	TDUP 	 17		109	; slot17 = copy table#k109
	213	[  0]	TSETB	 17	16	2	; slot16[2] = slot17
	214	[  0]	TSETS	 16	15	108	; slot15.L = slot16
	215	[  0]	TNEW 	 16		3	; slot16 = new table( array: 3, dict: 1)
	216	[  0]	TDUP 	 17		107	; slot17 = copy table#k107
	217	[  0]	TSETB	 17	16	1	; slot16[1] = slot17
	218	[  0]	TDUP 	 17		106	; slot17 = copy table#k106
	219	[  0]	TSETB	 17	16	2	; slot16[2] = slot17
	220	[  0]	TSETS	 16	15	105	; slot15.stone = slot16
	221	[  0]	TSETS	 15	14	118	; slot14.palettes = slot15
	222	[  0]	TNEW 	 15		0	; slot15 = new table( array: 0, dict: 1)
	223	[  0]	TSETS	 15	14	104	; slot14.shadows = slot15
	224	[  0]	FNEW 	 15		102	; N/A:0-0: 1 args, 1 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		ktable#5 = [
			[R] = rare,
			[L] = legend,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		6	; slot1 = _env["pairs"]
		  2	[  0]	TDUP 	  3		5	; slot3 = copy table#k5
		  3	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = pairs(slot2)
		  4	[  0]	ISNEXT	  4		14	; Verify ITERN at 19; goto 19
		  5	[  0]	MOV  	  6		0	; slot6 = slot0
		  6	[  0]	KSTR 	  8		4	; slot8 = "src/sprites/background/button/itempanelshadow"
		  7	[  0]	MOV  	  9		5	; slot9 = slot5
		  8	[  0]	KSTR 	 10		3	; slot10 = ".png"
		  9	[  0]	CAT  	  8	8	10	; slot8 = slot8 .. slot9 .. slot10
		 10	[  0]	CALL 	  6	2	2	; slot6 = slot6(slot7)
		 11	[  0]	MOV  	  9		6	; slot9 = slot6
		 12	[  0]	TGETS	  7	6	2	; slot7 = slot6.setFilter
		 13	[  0]	KSTR 	 10		1	; slot10 = "nearest"
		 14	[  0]	KSTR 	 11		1	; slot11 = "nearest"
		 15	[  0]	CALL 	  7	1	4	;  = <unknown table>.setFilter(slot8, slot9, slot10)
		 16	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 17	[  0]	TGETS	  7	7	0	; slot7 = uv0"unknown".shadows
		 18	[  0]	TSETV	  6	7	4	; uv0"unknown".shadows[slot4] = slot6
		 19	[  0]	ITERN	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, slot3; slot4, slot5 = slot1(slot2, slot3)
		 20	[  0]	ITERL	  4		-16	; slot3 = slot4; if slot4 != nil goto 5
		 21	[  0]	RET0 	  0		1	; return
	225	[  0]	TSETS	 15	14	103	; slot14.loadShadows = slot15
	226	[  0]	FNEW 	 15		100	; N/A:0-0: 3 args, 1 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		ktable#5 = [
			#1: 0.2235294117647059,
			#2: 0.17254901960784313,
			#3: 0.22745098039215686,
			]
		
		
		ktable#7 = [
			#1: 0.3843137254901961,
			#2: 0.3333333333333333,
			#3: 0.396078431372549,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  2	[  0]	TGETS	  3	3	11	; slot3 = uv0"unknown".palettes
		  3	[  0]	ISF  	   		2	; if not slot2
		  4	[  0]	JMP  	  4		2	; 	goto 7
		  5	[  0]	KSTR 	  4		10	; slot4 = "stone"
		  6	[  0]	JMP  	  5		1	; 	goto 8
		  7	[  0]	MOV  	  4		1	; slot4 = slot1
		  8	[  0]	TGETV	  3	3	4	; slot3 = uv0"unknown".palettes[slot4]
		  9	[  0]	ISF  	   		0	; if not slot0
		 10	[  0]	JMP  	  4		2	; 	goto 13
		 11	[  0]	IST  	   		3	; if slot3
		 12	[  0]	JMP  	  4		2	; 	goto 15
		 13	[  0]	KPRI 	  4		1	; slot4 = false
		 14	[  0]	RET1 	  4		2	; return slot4
		 15	[  0]	MOV  	  6		0	; slot6 = slot0
		 16	[  0]	TGETS	  4	0	9	; slot4 = slot0.send
		 17	[  0]	KSTR 	  7		8	; slot7 = "cIn1"
		 18	[  0]	TDUP 	  8		7	; slot8 = copy table#k7
		 19	[  0]	CALL 	  4	1	4	;  = <unknown table>.send(slot5, slot6, slot7)
		 20	[  0]	MOV  	  6		0	; slot6 = slot0
		 21	[  0]	TGETS	  4	0	9	; slot4 = slot0.send
		 22	[  0]	KSTR 	  7		6	; slot7 = "cIn2"
		 23	[  0]	TDUP 	  8		5	; slot8 = copy table#k5
		 24	[  0]	CALL 	  4	1	4	;  = <unknown table>.send(slot5, slot6, slot7)
		 25	[  0]	MOV  	  6		0	; slot6 = slot0
		 26	[  0]	TGETS	  4	0	9	; slot4 = slot0.send
		 27	[  0]	KSTR 	  7		4	; slot7 = "cOut1"
		 28	[  0]	TGETB	  8	3	1	; slot8 = slot3[1]
		 29	[  0]	CALL 	  4	1	4	;  = <unknown table>.send(slot5, slot6, slot7)
		 30	[  0]	MOV  	  6		0	; slot6 = slot0
		 31	[  0]	TGETS	  4	0	9	; slot4 = slot0.send
		 32	[  0]	KSTR 	  7		3	; slot7 = "cOut2"
		 33	[  0]	TGETB	  8	3	2	; slot8 = slot3[2]
		 34	[  0]	CALL 	  4	1	4	;  = <unknown table>.send(slot5, slot6, slot7)
		 35	[  0]	GGET 	  4		2	; slot4 = _env["love"]
		 36	[  0]	TGETS	  4	4	1	; slot4 = love.graphics
		 37	[  0]	TGETS	  4	4	0	; slot4 = love.graphics.setShader
		 38	[  0]	MOV  	  6		0	; slot6 = slot0
		 39	[  0]	CALL 	  4	1	2	;  = love.graphics.setShader(slot5)
		 40	[  0]	KPRI 	  4		2	; slot4 = true
		 41	[  0]	RET1 	  4		2	; return slot4
	227	[  0]	TSETS	 15	14	101	; slot14.apply = slot15
	228	[  0]	FNEW 	 15		98	; N/A:0-0: 2 args, 0 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		ktable#3 = [
			#1: 0.4392156862745098,
			#2: 0.27450980392156865,
			#3: 0.13725490196078433,
			]
		
		
		ktable#5 = [
			#1: 0.4392156862745098,
			#2: 0.27450980392156865,
			#3: 0.13725490196078433,
			]
		
		
		ktable#7 = [
			#1: 0.20392156862745098,
			#2: 0.21568627450980393,
			#3: 0.30980392156862746,
			]
		
		
		ktable#9 = [
			#1: 0.20392156862745098,
			#2: 0.21568627450980393,
			#3: 0.30980392156862746,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		2	; 	goto 5
		  3	[  0]	ISEQS	  1		12	; if slot1 == "L"
		  4	[  0]	JMP  	  2		2	; 	goto 7
		  5	[  0]	KPRI 	  2		1	; slot2 = false
		  6	[  0]	RET1 	  2		2	; return slot2
		  7	[  0]	MOV  	  4		0	; slot4 = slot0
		  8	[  0]	TGETS	  2	0	11	; slot2 = slot0.send
		  9	[  0]	KSTR 	  5		10	; slot5 = "cIn1"
		 10	[  0]	TDUP 	  6		9	; slot6 = copy table#k9
		 11	[  0]	CALL 	  2	1	4	;  = <unknown table>.send(slot3, slot4, slot5)
		 12	[  0]	MOV  	  4		0	; slot4 = slot0
		 13	[  0]	TGETS	  2	0	11	; slot2 = slot0.send
		 14	[  0]	KSTR 	  5		8	; slot5 = "cIn2"
		 15	[  0]	TDUP 	  6		7	; slot6 = copy table#k7
		 16	[  0]	CALL 	  2	1	4	;  = <unknown table>.send(slot3, slot4, slot5)
		 17	[  0]	MOV  	  4		0	; slot4 = slot0
		 18	[  0]	TGETS	  2	0	11	; slot2 = slot0.send
		 19	[  0]	KSTR 	  5		6	; slot5 = "cOut1"
		 20	[  0]	TDUP 	  6		5	; slot6 = copy table#k5
		 21	[  0]	CALL 	  2	1	4	;  = <unknown table>.send(slot3, slot4, slot5)
		 22	[  0]	MOV  	  4		0	; slot4 = slot0
		 23	[  0]	TGETS	  2	0	11	; slot2 = slot0.send
		 24	[  0]	KSTR 	  5		4	; slot5 = "cOut2"
		 25	[  0]	TDUP 	  6		3	; slot6 = copy table#k3
		 26	[  0]	CALL 	  2	1	4	;  = <unknown table>.send(slot3, slot4, slot5)
		 27	[  0]	GGET 	  2		2	; slot2 = _env["love"]
		 28	[  0]	TGETS	  2	2	1	; slot2 = love.graphics
		 29	[  0]	TGETS	  2	2	0	; slot2 = love.graphics.setShader
		 30	[  0]	MOV  	  4		0	; slot4 = slot0
		 31	[  0]	CALL 	  2	1	2	;  = love.graphics.setShader(slot3)
		 32	[  0]	KPRI 	  2		2	; slot2 = true
		 33	[  0]	RET1 	  2		2	; return slot2
	229	[  0]	TSETS	 15	14	99	; slot14.applyShadow = slot15
	230	[  0]	MOV  	 13		14	; slot13 = slot14
	231	[  0]	UCLO 	 14		0	; nil uvs >= r14; goto 232
	232	[  0]	KPRI 	 14		0	; slot14 = nil
	233	[  0]	TNEW 	 15		0	; slot15 = new table( array: 0, dict: 1)
	234	[  0]	KPRI 	 16		0	; slot16 = nil
	235	[  0]	GGET 	 17		194	; slot17 = _env["setmetatable"]
	236	[  0]	TNEW 	 19		0	; slot19 = new table( array: 0, dict: 1)
	237	[  0]	TDUP 	 20		97	; slot20 = copy table#k97
	238	[  0]	CALL 	 17	2	3	; slot17 = setmetatable(slot18, slot19)
	239	[  0]	FNEW 	 18		96	; N/A:0-0: 0 args, 1 upvalues, 4 slots
		
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
		 13	[  0]	KSTR 	  3		0	; slot3 = "    extern number u_time;
		    extern number u_cycle;
		    extern number u_alpha;
		    extern number u_width;
		    extern vec3 u_tint;
		
		    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {
		      float mask = Texel(tex, tc).a;
		      if (mask <= 0.001) return vec4(0.0);
		      float width = max(0.001, u_width);
		      float diagonal = tc.x + tc.y * 0.35;
		      float center = fract(u_time / max(0.001, u_cycle)) * (1.35 + 2.0 * width) - width;
		      float distanceToBand = abs(diagonal - center);
		      float band = 1.0 - smoothstep(width * 0.15, width, distanceToBand);
		      return vec4(u_tint, mask * color.a * clamp(u_alpha, 0.0, 1.0) * band * band);
		    }
		  "
		 14	[  0]	CALL 	  0	3	3	; slot0, slot1 = pcall(slot1, love.graphics.newShader)
		 15	[  0]	ISF  	   		0	; if not slot0
		 16	[  0]	JMP  	  2		2	; 	goto 19
		 17	[  0]	ISTC 	  2		1	; slot2 = slot1; if slot1
		 18	[  0]	JMP  	  2		1	; 	goto 20
		 19	[  0]	KPRI 	  2		1	; slot2 = false
		 20	[  0]	USETV	  0		2	; uv0"unknwon" = slot2
		 21	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 22	[  0]	IST  	   		2	; if uv0"unknown"
		 23	[  0]	JMP  	  3		1	; 	goto 25
		 24	[  0]	KPRI 	  2		0	; slot2 = nil
		 25	[  0]	RET1 	  2		2	; return slot2
	240	[  0]	FNEW 	 19		95	; N/A:0-0: 2 args, 1 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		ktable#17 = [
			[dpiscale] = 1,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETV	  2	2	0	; slot2 = uv0"unknown"[slot0]
		  3	[  0]	IST  	   		2	; if slot2
		  4	[  0]	JMP  	  3		3	; 	goto 8
		  5	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		  6	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  7	[  0]	TSETV	  2	3	0	; uv0"unknown"[slot0] = slot2
		  8	[  0]	TGETV	  3	2	1	; slot3 = slot2[slot1]
		  9	[  0]	ISF  	   		3	; if not slot3
		 10	[  0]	JMP  	  4		2	; 	goto 13
		 11	[  0]	TGETV	  3	2	1	; slot3 = slot2[slot1]
		 12	[  0]	RET1 	  3		2	; return slot3
		 13	[  0]	GGET 	  3		26	; slot3 = _env["math"]
		 14	[  0]	TGETS	  3	3	25	; slot3 = math.max
		 15	[  0]	KSHORT	  5		1	; slot5 = 1
		 16	[  0]	GGET 	  6		26	; slot6 = _env["math"]
		 17	[  0]	TGETS	  6	6	24	; slot6 = math.ceil
		 18	[  0]	MOV  	 10		0	; slot10 = slot0
		 19	[  0]	TGETS	  8	0	23	; slot8 = slot0.getWidth
		 20	[  0]	MOV  	 11		1	; slot11 = slot1
		 21	[  0]	CALL 	  8	0	3	; MULTRES = <unknown table>.getWidth(slot9, slot10)
		 22	[  0]	CALLM	  6	2	0	; slot6 = math.ceil(, ...MULTRES)
		 23	[  0]	ADDVN	  6	6	0	; slot6 = math.ceil + 2
		 24	[  0]	CALL 	  3	2	3	; slot3 = math.max(slot4, slot5)
		 25	[  0]	GGET 	  4		26	; slot4 = _env["math"]
		 26	[  0]	TGETS	  4	4	25	; slot4 = math.max
		 27	[  0]	KSHORT	  6		1	; slot6 = 1
		 28	[  0]	GGET 	  7		26	; slot7 = _env["math"]
		 29	[  0]	TGETS	  7	7	24	; slot7 = math.ceil
		 30	[  0]	MOV  	 11		0	; slot11 = slot0
		 31	[  0]	TGETS	  9	0	22	; slot9 = slot0.getHeight
		 32	[  0]	CALL 	  9	0	2	; MULTRES = <unknown table>.getHeight(slot10)
		 33	[  0]	CALLM	  7	2	0	; slot7 = math.ceil(, ...MULTRES)
		 34	[  0]	ADDVN	  7	7	0	; slot7 = math.ceil + 2
		 35	[  0]	CALL 	  4	2	3	; slot4 = math.max(slot5, slot6)
		 36	[  0]	GGET 	  5		21	; slot5 = _env["pcall"]
		 37	[  0]	GGET 	  7		20	; slot7 = _env["love"]
		 38	[  0]	TGETS	  7	7	19	; slot7 = love.graphics
		 39	[  0]	TGETS	  7	7	18	; slot7 = love.graphics.newCanvas
		 40	[  0]	MOV  	  8		3	; slot8 = slot3
		 41	[  0]	MOV  	  9		4	; slot9 = math.max
		 42	[  0]	TDUP 	 10		17	; slot10 = copy table#k17
		 43	[  0]	CALL 	  5	3	5	; slot5, slot6 = pcall(slot6, love.graphics.newCanvas, slot8, math.max)
		 44	[  0]	ISF  	   		5	; if not slot5
		 45	[  0]	JMP  	  7		2	; 	goto 48
		 46	[  0]	IST  	   		6	; if slot6
		 47	[  0]	JMP  	  7		2	; 	goto 50
		 48	[  0]	KPRI 	  7		0	; slot7 = nil
		 49	[  0]	RET1 	  7		2	; return slot7
		 50	[  0]	MOV  	  9		6	; slot9 = slot6
		 51	[  0]	TGETS	  7	6	16	; slot7 = slot6.setFilter
		 52	[  0]	KSTR 	 10		15	; slot10 = "nearest"
		 53	[  0]	KSTR 	 11		15	; slot11 = "nearest"
		 54	[  0]	CALL 	  7	1	4	;  = <unknown table>.setFilter(slot8, slot9, slot10)
		 55	[  0]	GGET 	  7		20	; slot7 = _env["love"]
		 56	[  0]	TGETS	  7	7	19	; slot7 = love.graphics
		 57	[  0]	TGETS	  7	7	14	; slot7 = love.graphics.push
		 58	[  0]	KSTR 	  9		13	; slot9 = "all"
		 59	[  0]	CALL 	  7	1	2	;  = love.graphics.push(slot8)
		 60	[  0]	GGET 	  7		20	; slot7 = _env["love"]
		 61	[  0]	TGETS	  7	7	19	; slot7 = love.graphics
		 62	[  0]	TGETS	  7	7	12	; slot7 = love.graphics.origin
		 63	[  0]	CALL 	  7	1	1	;  = love.graphics.origin()
		 64	[  0]	GGET 	  7		20	; slot7 = _env["love"]
		 65	[  0]	TGETS	  7	7	19	; slot7 = love.graphics
		 66	[  0]	TGETS	  7	7	11	; slot7 = love.graphics.setCanvas
		 67	[  0]	MOV  	  9		6	; slot9 = slot6
		 68	[  0]	CALL 	  7	1	2	;  = love.graphics.setCanvas(slot8)
		 69	[  0]	GGET 	  7		20	; slot7 = _env["love"]
		 70	[  0]	TGETS	  7	7	19	; slot7 = love.graphics
		 71	[  0]	TGETS	  7	7	10	; slot7 = love.graphics.clear
		 72	[  0]	KSHORT	  9		0	; slot9 = 0
		 73	[  0]	KSHORT	 10		0	; slot10 = 0
		 74	[  0]	KSHORT	 11		0	; slot11 = 0
		 75	[  0]	KSHORT	 12		0	; slot12 = 0
		 76	[  0]	CALL 	  7	1	5	;  = love.graphics.clear(slot8, slot9, slot10, slot11)
		 77	[  0]	GGET 	  7		20	; slot7 = _env["love"]
		 78	[  0]	TGETS	  7	7	19	; slot7 = love.graphics
		 79	[  0]	TGETS	  7	7	9	; slot7 = love.graphics.setScissor
		 80	[  0]	CALL 	  7	1	1	;  = love.graphics.setScissor()
		 81	[  0]	GGET 	  7		20	; slot7 = _env["love"]
		 82	[  0]	TGETS	  7	7	19	; slot7 = love.graphics
		 83	[  0]	TGETS	  7	7	8	; slot7 = love.graphics.setStencilTest
		 84	[  0]	CALL 	  7	1	1	;  = love.graphics.setStencilTest()
		 85	[  0]	GGET 	  7		20	; slot7 = _env["love"]
		 86	[  0]	TGETS	  7	7	19	; slot7 = love.graphics
		 87	[  0]	TGETS	  7	7	7	; slot7 = love.graphics.setShader
		 88	[  0]	CALL 	  7	1	1	;  = love.graphics.setShader()
		 89	[  0]	GGET 	  7		20	; slot7 = _env["love"]
		 90	[  0]	TGETS	  7	7	19	; slot7 = love.graphics
		 91	[  0]	TGETS	  7	7	6	; slot7 = love.graphics.setBlendMode
		 92	[  0]	KSTR 	  9		5	; slot9 = "alpha"
		 93	[  0]	KSTR 	 10		4	; slot10 = "alphamultiply"
		 94	[  0]	CALL 	  7	1	3	;  = love.graphics.setBlendMode(slot8, slot9)
		 95	[  0]	GGET 	  7		20	; slot7 = _env["love"]
		 96	[  0]	TGETS	  7	7	19	; slot7 = love.graphics
		 97	[  0]	TGETS	  7	7	3	; slot7 = love.graphics.setColor
		 98	[  0]	KSHORT	  9		1	; slot9 = 1
		 99	[  0]	KSHORT	 10		1	; slot10 = 1
		100	[  0]	KSHORT	 11		1	; slot11 = 1
		101	[  0]	KSHORT	 12		1	; slot12 = 1
		102	[  0]	CALL 	  7	1	5	;  = love.graphics.setColor(slot8, slot9, slot10, slot11)
		103	[  0]	GGET 	  7		20	; slot7 = _env["love"]
		104	[  0]	TGETS	  7	7	19	; slot7 = love.graphics
		105	[  0]	TGETS	  7	7	2	; slot7 = love.graphics.setFont
		106	[  0]	MOV  	  9		0	; slot9 = slot0
		107	[  0]	CALL 	  7	1	2	;  = love.graphics.setFont(slot8)
		108	[  0]	GGET 	  7		20	; slot7 = _env["love"]
		109	[  0]	TGETS	  7	7	19	; slot7 = love.graphics
		110	[  0]	TGETS	  7	7	1	; slot7 = love.graphics.print
		111	[  0]	MOV  	  9		1	; slot9 = slot1
		112	[  0]	KSHORT	 10		0	; slot10 = 0
		113	[  0]	KSHORT	 11		0	; slot11 = 0
		114	[  0]	CALL 	  7	1	4	;  = love.graphics.print(slot8, slot9, slot10)
		115	[  0]	GGET 	  7		20	; slot7 = _env["love"]
		116	[  0]	TGETS	  7	7	19	; slot7 = love.graphics
		117	[  0]	TGETS	  7	7	0	; slot7 = love.graphics.pop
		118	[  0]	CALL 	  7	1	1	;  = love.graphics.pop()
		119	[  0]	TSETV	  6	2	1	; slot2[slot1] = slot6
		120	[  0]	RET1 	  6		2	; return slot6
	241	[  0]	FNEW 	 20		94	; N/A:0-0: 9 args, 2 upvalues, 19 slots
		
		;;;; constant tables ;;;;
		ktable#2 = [
			#1: 1,
			#2: 0.91,
			#3: 0.67,
			]
		
		
		ktable#3 = [
			#1: 0.94,
			#2: 0.93,
			#3: 1,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISEQS	  5		25	; if slot5 == "legendary"
		  2	[  0]	JMP  	  9		4	; 	goto 7
		  3	[  0]	ISEQS	  5		24	; if slot5 == "prism"
		  4	[  0]	JMP  	  9		2	; 	goto 7
		  5	[  0]	KPRI 	  9		1	; slot9 = false
		  6	[  0]	RET1 	  9		2	; return slot9
		  7	[  0]	GGET 	  9		23	; slot9 = _env["tostring"]
		  8	[  0]	ISTC 	 11		0	; slot11 = slot0; if slot0
		  9	[  0]	JMP  	 11		1	; 	goto 11
		 10	[  0]	KSTR 	 11		22	; slot11 = ""
		 11	[  0]	CALL 	  9	2	2	; slot9 = tostring(slot10)
		 12	[  0]	MOV  	  0		9	; slot0 = tostring
		 13	[  0]	ISEQS	  0		22	; if tostring == ""
		 14	[  0]	JMP  	  9		6	; 	goto 21
		 15	[  0]	ISTC 	  9		6	; slot9 = slot6; if slot6
		 16	[  0]	JMP  	  9		1	; 	goto 18
		 17	[  0]	KSHORT	  9		1	; slot9 = 1
		 18	[  0]	KSHORT	 10		0	; slot10 = 0
		 19	[  0]	ISGT 	  9		10	; if slot9 > slot10
		 20	[  0]	JMP  	  9		2	; 	goto 23
		 21	[  0]	KPRI 	  9		1	; slot9 = false
		 22	[  0]	RET1 	  9		2	; return slot9
		 23	[  0]	IST  	   		7	; if slot7
		 24	[  0]	JMP  	  9		5	; 	goto 30
		 25	[  0]	GGET 	  9		21	; slot9 = _env["love"]
		 26	[  0]	TGETS	  9	9	20	; slot9 = love.graphics
		 27	[  0]	TGETS	  9	9	19	; slot9 = love.graphics.getFont
		 28	[  0]	CALL 	  9	2	1	; slot9 = love.graphics.getFont()
		 29	[  0]	MOV  	  7		9	; slot7 = love.graphics.getFont
		 30	[  0]	IST  	   		7	; if love.graphics.getFont
		 31	[  0]	JMP  	  9		2	; 	goto 34
		 32	[  0]	KPRI 	  9		1	; slot9 = false
		 33	[  0]	RET1 	  9		2	; return slot9
		 34	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 35	[  0]	CALL 	  9	2	1	; slot9 = uv0"unknown"()
		 36	[  0]	IST  	   		9	; if uv0"unknown"
		 37	[  0]	JMP  	 10		2	; 	goto 40
		 38	[  0]	KPRI 	 10		1	; slot10 = false
		 39	[  0]	RET1 	 10		2	; return slot10
		 40	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
		 41	[  0]	MOV  	 12		7	; slot12 = love.graphics.getFont
		 42	[  0]	MOV  	 13		0	; slot13 = tostring
		 43	[  0]	CALL 	 10	2	3	; slot10 = uv1"unknown"(slot11, love.graphics.getFont)
		 44	[  0]	IST  	   		10	; if uv1"unknown"
		 45	[  0]	JMP  	 11		2	; 	goto 48
		 46	[  0]	KPRI 	 11		1	; slot11 = false
		 47	[  0]	RET1 	 11		2	; return slot11
		 48	[  0]	GGET 	 11		21	; slot11 = _env["love"]
		 49	[  0]	TGETS	 11	11	20	; slot11 = love.graphics
		 50	[  0]	TGETS	 11	11	18	; slot11 = love.graphics.push
		 51	[  0]	KSTR 	 13		17	; slot13 = "all"
		 52	[  0]	CALL 	 11	1	2	;  = love.graphics.push(love.graphics.getFont)
		 53	[  0]	GGET 	 11		21	; slot11 = _env["love"]
		 54	[  0]	TGETS	 11	11	20	; slot11 = love.graphics
		 55	[  0]	TGETS	 11	11	16	; slot11 = love.graphics.setShader
		 56	[  0]	MOV  	 13		9	; slot13 = uv0"unknown"
		 57	[  0]	CALL 	 11	1	2	;  = love.graphics.setShader(love.graphics.getFont)
		 58	[  0]	GGET 	 11		21	; slot11 = _env["love"]
		 59	[  0]	TGETS	 11	11	20	; slot11 = love.graphics
		 60	[  0]	TGETS	 11	11	15	; slot11 = love.graphics.setBlendMode
		 61	[  0]	KSTR 	 13		14	; slot13 = "alpha"
		 62	[  0]	KSTR 	 14		13	; slot14 = "alphamultiply"
		 63	[  0]	CALL 	 11	1	3	;  = love.graphics.setBlendMode(love.graphics.getFont, slot13)
		 64	[  0]	GGET 	 11		21	; slot11 = _env["love"]
		 65	[  0]	TGETS	 11	11	20	; slot11 = love.graphics
		 66	[  0]	TGETS	 11	11	12	; slot11 = love.graphics.setColor
		 67	[  0]	KSHORT	 13		1	; slot13 = 1
		 68	[  0]	KSHORT	 14		1	; slot14 = 1
		 69	[  0]	KSHORT	 15		1	; slot15 = 1
		 70	[  0]	KSHORT	 16		1	; slot16 = 1
		 71	[  0]	CALL 	 11	1	5	;  = love.graphics.setColor(love.graphics.getFont, slot13, slot14, slot15)
		 72	[  0]	MOV  	 13		9	; slot13 = uv0"unknown"
		 73	[  0]	TGETS	 11	9	11	; slot11 = uv0"unknown".send
		 74	[  0]	KSTR 	 14		10	; slot14 = "u_time"
		 75	[  0]	ISTC 	 15		8	; slot15 = slot8; if slot8
		 76	[  0]	JMP  	 15		16	; 	goto 93
		 77	[  0]	GGET 	 15		21	; slot15 = _env["love"]
		 78	[  0]	TGETS	 15	15	9	; slot15 = love.timer
		 79	[  0]	ISF  	   		15	; if not love.timer
		 80	[  0]	JMP  	 16		11	; 	goto 92
		 81	[  0]	GGET 	 15		21	; slot15 = _env["love"]
		 82	[  0]	TGETS	 15	15	9	; slot15 = love.timer
		 83	[  0]	TGETS	 15	15	8	; slot15 = love.timer.getTime
		 84	[  0]	ISF  	   		15	; if not love.timer.getTime
		 85	[  0]	JMP  	 16		6	; 	goto 92
		 86	[  0]	GGET 	 15		21	; slot15 = _env["love"]
		 87	[  0]	TGETS	 15	15	9	; slot15 = love.timer
		 88	[  0]	TGETS	 15	15	8	; slot15 = love.timer.getTime
		 89	[  0]	CALL 	 15	2	1	; slot15 = love.timer.getTime()
		 90	[  0]	IST  	   		15	; if love.timer.getTime
		 91	[  0]	JMP  	 16		1	; 	goto 93
		 92	[  0]	KSHORT	 15		0	; slot15 = 0
		 93	[  0]	CALL 	 11	1	4	;  = uv0"unknown".send(love.graphics.getFont, uv0"unknown", slot14)
		 94	[  0]	MOV  	 13		9	; slot13 = uv0"unknown"
		 95	[  0]	TGETS	 11	9	11	; slot11 = uv0"unknown".send
		 96	[  0]	KSTR 	 14		7	; slot14 = "u_cycle"
		 97	[  0]	ISNES	  5		24	; if slot5 ~= "prism"
		 98	[  0]	JMP  	 15		2	; 	goto 101
		 99	[  0]	KNUM 	 15		0	; slot15 = 3.6
		100	[  0]	JMP  	 16		1	; 	goto 102
		101	[  0]	KNUM 	 15		1	; slot15 = 4.4
		102	[  0]	CALL 	 11	1	4	;  = uv0"unknown".send(love.graphics.getFont, uv0"unknown", slot14)
		103	[  0]	MOV  	 13		9	; slot13 = uv0"unknown"
		104	[  0]	TGETS	 11	9	11	; slot11 = uv0"unknown".send
		105	[  0]	KSTR 	 14		6	; slot14 = "u_alpha"
		106	[  0]	ISNES	  5		24	; if slot5 ~= "prism"
		107	[  0]	JMP  	 15		2	; 	goto 110
		108	[  0]	KNUM 	 15		2	; slot15 = 0.11
		109	[  0]	JMP  	 16		1	; 	goto 111
		110	[  0]	KNUM 	 15		3	; slot15 = 0.18
		111	[  0]	ISTC 	 16		6	; slot16 = slot6; if slot6
		112	[  0]	JMP  	 16		1	; 	goto 114
		113	[  0]	KSHORT	 16		1	; slot16 = 1
		114	[  0]	MULVV	 15	15	16	; slot15 = slot15 * slot16
		115	[  0]	CALL 	 11	1	4	;  = uv0"unknown".send(love.graphics.getFont, uv0"unknown", slot14)
		116	[  0]	MOV  	 13		9	; slot13 = uv0"unknown"
		117	[  0]	TGETS	 11	9	11	; slot11 = uv0"unknown".send
		118	[  0]	KSTR 	 14		5	; slot14 = "u_width"
		119	[  0]	KNUM 	 15		3	; slot15 = 0.18
		120	[  0]	CALL 	 11	1	4	;  = uv0"unknown".send(love.graphics.getFont, uv0"unknown", slot14)
		121	[  0]	MOV  	 13		9	; slot13 = uv0"unknown"
		122	[  0]	TGETS	 11	9	11	; slot11 = uv0"unknown".send
		123	[  0]	KSTR 	 14		4	; slot14 = "u_tint"
		124	[  0]	ISNES	  5		24	; if slot5 ~= "prism"
		125	[  0]	JMP  	 15		3	; 	goto 129
		126	[  0]	TDUP 	 15		3	; slot15 = copy table#k3
		127	[  0]	IST  	   		15	; if slot15
		128	[  0]	JMP  	 16		1	; 	goto 130
		129	[  0]	TDUP 	 15		2	; slot15 = copy table#k2
		130	[  0]	CALL 	 11	1	4	;  = uv0"unknown".send(love.graphics.getFont, uv0"unknown", slot14)
		131	[  0]	GGET 	 11		21	; slot11 = _env["love"]
		132	[  0]	TGETS	 11	11	20	; slot11 = love.graphics
		133	[  0]	TGETS	 11	11	1	; slot11 = love.graphics.draw
		134	[  0]	MOV  	 13		10	; slot13 = uv1"unknown"
		135	[  0]	MOV  	 14		1	; slot14 = slot1
		136	[  0]	MOV  	 15		2	; slot15 = slot2
		137	[  0]	KSHORT	 16		0	; slot16 = 0
		138	[  0]	ISTC 	 17		3	; slot17 = slot3; if slot3
		139	[  0]	JMP  	 17		1	; 	goto 141
		140	[  0]	KSHORT	 17		1	; slot17 = 1
		141	[  0]	ISTC 	 18		4	; slot18 = slot4; if slot4
		142	[  0]	JMP  	 18		3	; 	goto 146
		143	[  0]	ISTC 	 18		3	; slot18 = slot3; if slot3
		144	[  0]	JMP  	 18		1	; 	goto 146
		145	[  0]	KSHORT	 18		1	; slot18 = 1
		146	[  0]	CALL 	 11	1	7	;  = love.graphics.draw(love.graphics.getFont, uv1"unknown", slot14, slot15, slot16, slot17)
		147	[  0]	GGET 	 11		21	; slot11 = _env["love"]
		148	[  0]	TGETS	 11	11	20	; slot11 = love.graphics
		149	[  0]	TGETS	 11	11	0	; slot11 = love.graphics.pop
		150	[  0]	CALL 	 11	1	1	;  = love.graphics.pop()
		151	[  0]	KPRI 	 11		2	; slot11 = true
		152	[  0]	RET1 	 11		2	; return slot11
	242	[  0]	TSETS	 20	15	212	; slot15.draw = slot20
	243	[  0]	MOV  	 14		15	; slot14 = slot15
	244	[  0]	UCLO 	 15		0	; nil uvs >= r15; goto 245
	245	[  0]	KPRI 	 15		0	; slot15 = nil
	246	[  0]	TNEW 	 16		0	; slot16 = new table( array: 0, dict: 1)
	247	[  0]	TNEW 	 17		8	; slot17 = new table( array: 8, dict: 1)
	248	[  0]	TDUP 	 18		92	; slot18 = copy table#k92
	249	[  0]	TSETB	 18	17	1	; slot17[1] = slot18
	250	[  0]	TDUP 	 18		91	; slot18 = copy table#k91
	251	[  0]	TSETB	 18	17	2	; slot17[2] = slot18
	252	[  0]	TDUP 	 18		90	; slot18 = copy table#k90
	253	[  0]	TSETB	 18	17	3	; slot17[3] = slot18
	254	[  0]	TDUP 	 18		89	; slot18 = copy table#k89
	255	[  0]	TSETB	 18	17	4	; slot17[4] = slot18
	256	[  0]	TDUP 	 18		88	; slot18 = copy table#k88
	257	[  0]	TSETB	 18	17	5	; slot17[5] = slot18
	258	[  0]	TDUP 	 18		87	; slot18 = copy table#k87
	259	[  0]	TSETB	 18	17	6	; slot17[6] = slot18
	260	[  0]	TDUP 	 18		86	; slot18 = copy table#k86
	261	[  0]	TSETB	 18	17	7	; slot17[7] = slot18
	262	[  0]	TSETS	 17	16	93	; slot16.mask = slot17
	263	[  0]	TNEW 	 17		8	; slot17 = new table( array: 8, dict: 1)
	264	[  0]	TDUP 	 18		85	; slot18 = copy table#k85
	265	[  0]	TSETB	 18	17	1	; slot17[1] = slot18
	266	[  0]	TDUP 	 18		84	; slot18 = copy table#k84
	267	[  0]	TSETB	 18	17	2	; slot17[2] = slot18
	268	[  0]	TDUP 	 18		83	; slot18 = copy table#k83
	269	[  0]	TSETB	 18	17	3	; slot17[3] = slot18
	270	[  0]	TDUP 	 18		82	; slot18 = copy table#k82
	271	[  0]	TSETB	 18	17	4	; slot17[4] = slot18
	272	[  0]	TDUP 	 18		81	; slot18 = copy table#k81
	273	[  0]	TSETB	 18	17	5	; slot17[5] = slot18
	274	[  0]	TDUP 	 18		80	; slot18 = copy table#k80
	275	[  0]	TSETB	 18	17	6	; slot17[6] = slot18
	276	[  0]	TDUP 	 18		79	; slot18 = copy table#k79
	277	[  0]	TSETB	 18	17	7	; slot17[7] = slot18
	278	[  0]	KNIL 	 18		20	; slot18, slot19, slot20 = nil
	279	[  0]	FNEW 	 21		78	; N/A:0-0: 0 args, 5 upvalues, 30 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		1	; 	goto 5
		  4	[  0]	RET0 	  0		1	; return
		  5	[  0]	GGET 	  0		19	; slot0 = _env["love"]
		  6	[  0]	TGETS	  0	0	18	; slot0 = love.image
		  7	[  0]	TGETS	  0	0	17	; slot0 = love.image.newImageData
		  8	[  0]	KSHORT	  2		7	; slot2 = 7
		  9	[  0]	KSHORT	  3		7	; slot3 = 7
		 10	[  0]	CALL 	  0	2	3	; slot0 = love.image.newImageData(slot1, slot2)
		 11	[  0]	GGET 	  1		16	; slot1 = _env["ipairs"]
		 12	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 13	[  0]	TGETS	  3	3	15	; slot3 = uv1"unknown".mask
		 14	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = ipairs(slot2)
		 15	[  0]	JMP  	  4		19	; 	goto 35
		 16	[  0]	GGET 	  6		16	; slot6 = _env["ipairs"]
		 17	[  0]	MOV  	  8		5	; slot8 = slot5
		 18	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		 19	[  0]	JMP  	  9		13	; 	goto 33
		 20	[  0]	ISNEN	 10		0	; if slot10 ~= 1
		 21	[  0]	JMP  	 11		11	; 	goto 33
		 22	[  0]	UGET 	 11		2	; slot11 = uv2"unknwon"
		 23	[  0]	TGETV	 11	11	4	; slot11 = uv2"unknown"[slot4]
		 24	[  0]	MOV  	 14		0	; slot14 = slot0
		 25	[  0]	TGETS	 12	0	14	; slot12 = slot0.setPixel
		 26	[  0]	SUBVN	 15	9	0	; slot15 = slot9 - 1
		 27	[  0]	SUBVN	 16	4	0	; slot16 = slot4 - 1
		 28	[  0]	TGETB	 17	11	1	; slot17 = slot11[1]
		 29	[  0]	TGETB	 18	11	2	; slot18 = slot11[2]
		 30	[  0]	TGETB	 19	11	3	; slot19 = slot11[3]
		 31	[  0]	KSHORT	 20		1	; slot20 = 1
		 32	[  0]	CALL 	 12	1	8	;  = <unknown table>.setPixel(slot13, slot14, slot15, slot16, slot17, slot18, slot19)
		 33	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, slot8; slot9, slot10 = ipairs(slot7, slot8)
		 34	[  0]	ITERL	  9		-15	; slot8 = slot9; if slot9 != nil goto 20
		 35	[  0]	ITERC	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, uv1"unknown".mask; slot4, slot5 = slot1(slot2, uv1"unknown".mask)
		 36	[  0]	ITERL	  4		-21	; uv1"unknown".mask = slot4; if slot4 != nil goto 16
		 37	[  0]	GGET 	  1		19	; slot1 = _env["love"]
		 38	[  0]	TGETS	  1	1	13	; slot1 = love.graphics
		 39	[  0]	TGETS	  1	1	12	; slot1 = love.graphics.newImage
		 40	[  0]	MOV  	  3		0	; slot3 = slot0
		 41	[  0]	CALL 	  1	2	2	; slot1 = love.graphics.newImage(slot2)
		 42	[  0]	USETV	  0		1	; uv0"unknwon" = slot1
		 43	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 44	[  0]	MOV  	  3		1	; slot3 = uv0"unknown"
		 45	[  0]	TGETS	  1	1	11	; slot1 = uv0"unknown".setFilter
		 46	[  0]	KSTR 	  4		10	; slot4 = "nearest"
		 47	[  0]	KSTR 	  5		10	; slot5 = "nearest"
		 48	[  0]	CALL 	  1	1	4	;  = uv0"unknown".setFilter(slot2, uv0"unknown", slot4)
		 49	[  0]	MOV  	  3		0	; slot3 = slot0
		 50	[  0]	TGETS	  1	0	9	; slot1 = slot0.release
		 51	[  0]	CALL 	  1	1	2	;  = <unknown table>.release(slot2)
		 52	[  0]	GGET 	  1		19	; slot1 = _env["love"]
		 53	[  0]	TGETS	  1	1	18	; slot1 = love.image
		 54	[  0]	TGETS	  1	1	17	; slot1 = love.image.newImageData
		 55	[  0]	KSHORT	  3		44	; slot3 = 44
		 56	[  0]	KSHORT	  4		44	; slot4 = 44
		 57	[  0]	CALL 	  1	2	3	; slot1 = love.image.newImageData(slot2, slot3)
		 58	[  0]	KSHORT	  2		0	; slot2 = 0
		 59	[  0]	KSHORT	  3		43	; slot3 = 43
		 60	[  0]	KSHORT	  4		1	; slot4 = 1
		 61	[  0]	FORI 	  2		70	; for slot5 = slot2,slot3,slot4 else goto 132
		 62	[  0]	KSHORT	  6		0	; slot6 = 0
		 63	[  0]	KSHORT	  7		43	; slot7 = 43
		 64	[  0]	KSHORT	  8		1	; slot8 = 1
		 65	[  0]	FORI 	  6		65	; for slot9 = slot6,slot7,slot8 else goto 131
		 66	[  0]	ADDVN	 10	9	1	; slot10 = slot9 + 0.5
		 67	[  0]	DIVVN	 10	10	2	; slot10 = slot10 / 4
		 68	[  0]	SUBVN	 10	10	3	; slot10 = slot10 - 2
		 69	[  0]	ADDVN	 11	5	1	; slot11 = slot5 + 0.5
		 70	[  0]	DIVVN	 11	11	2	; slot11 = slot11 / 4
		 71	[  0]	SUBVN	 11	11	3	; slot11 = slot11 - 2
		 72	[  0]	GGET 	 12		8	; slot12 = _env["math"]
		 73	[  0]	TGETS	 12	12	7	; slot12 = math.huge
		 74	[  0]	GGET 	 13		16	; slot13 = _env["ipairs"]
		 75	[  0]	UGET 	 15		1	; slot15 = uv1"unknwon"
		 76	[  0]	TGETS	 15	15	15	; slot15 = uv1"unknown".mask
		 77	[  0]	CALL 	 13	4	2	; slot13, slot14, slot15 = ipairs(slot14)
		 78	[  0]	JMP  	 16		30	; 	goto 109
		 79	[  0]	GGET 	 18		16	; slot18 = _env["ipairs"]
		 80	[  0]	MOV  	 20		17	; slot20 = slot17
		 81	[  0]	CALL 	 18	4	2	; slot18, slot19, slot20 = ipairs(slot19)
		 82	[  0]	JMP  	 21		24	; 	goto 107
		 83	[  0]	ISNEN	 22		0	; if slot22 ~= 1
		 84	[  0]	JMP  	 23		22	; 	goto 107
		 85	[  0]	GGET 	 23		8	; slot23 = _env["math"]
		 86	[  0]	TGETS	 23	23	6	; slot23 = math.max
		 87	[  0]	SUBVN	 25	21	0	; slot25 = slot21 - 1
		 88	[  0]	SUBVV	 25	25	10	; slot25 = slot25 - slot10
		 89	[  0]	KSHORT	 26		0	; slot26 = 0
		 90	[  0]	SUBVV	 27	10	21	; slot27 = slot10 - slot21
		 91	[  0]	CALL 	 23	2	4	; slot23 = math.max(slot24, slot25, slot26)
		 92	[  0]	GGET 	 24		8	; slot24 = _env["math"]
		 93	[  0]	TGETS	 24	24	6	; slot24 = math.max
		 94	[  0]	SUBVN	 26	16	0	; slot26 = slot16 - 1
		 95	[  0]	SUBVV	 26	26	11	; slot26 = slot26 - slot11
		 96	[  0]	KSHORT	 27		0	; slot27 = 0
		 97	[  0]	SUBVV	 28	11	16	; slot28 = slot11 - slot16
		 98	[  0]	CALL 	 24	2	4	; slot24 = math.max(slot25, slot26, slot27)
		 99	[  0]	GGET 	 25		8	; slot25 = _env["math"]
		100	[  0]	TGETS	 25	25	5	; slot25 = math.min
		101	[  0]	MOV  	 27		12	; slot27 = math.huge
		102	[  0]	MULVV	 28	23	23	; slot28 = math.max * math.max
		103	[  0]	MULVV	 29	24	24	; slot29 = math.max * math.max
		104	[  0]	ADDVV	 28	28	29	; slot28 = slot28 + slot29
		105	[  0]	CALL 	 25	2	3	; slot25 = math.min(slot26, math.huge)
		106	[  0]	MOV  	 12		25	; slot12 = math.min
		107	[  0]	ITERC	 21	3	3	; slot21, slot22, slot23 = ipairs, slot19, slot20; slot21, slot22 = ipairs(slot19, slot20)
		108	[  0]	ITERL	 21		-26	; slot20 = slot21; if slot21 != nil goto 83
		109	[  0]	ITERC	 16	3	3	; slot16, slot17, slot18 = ipairs, slot14, uv1"unknown".mask; slot16, slot17 = ipairs(slot14, uv1"unknown".mask)
		110	[  0]	ITERL	 16		-32	; uv1"unknown".mask = slot16; if slot16 != nil goto 79
		111	[  0]	MOV  	 15		1	; slot15 = slot1
		112	[  0]	TGETS	 13	1	14	; slot13 = slot1.setPixel
		113	[  0]	MOV  	 16		9	; slot16 = slot9
		114	[  0]	MOV  	 17		5	; slot17 = slot5
		115	[  0]	KSHORT	 18		1	; slot18 = 1
		116	[  0]	KSHORT	 19		1	; slot19 = 1
		117	[  0]	KSHORT	 20		1	; slot20 = 1
		118	[  0]	KSHORT	 21		4	; slot21 = 4
		119	[  0]	ISGE 	 12		21	; if math.min >= slot21
		120	[  0]	JMP  	 21		7	; 	goto 128
		121	[  0]	GGET 	 21		8	; slot21 = _env["math"]
		122	[  0]	TGETS	 21	21	4	; slot21 = math.exp
		123	[  0]	UNM  	 23		12	; slot23 = -math.min
		124	[  0]	DIVVN	 23	23	4	; slot23 = slot23 / 0.72
		125	[  0]	CALL 	 21	2	2	; slot21 = math.exp(slot22)
		126	[  0]	IST  	   		21	; if math.exp
		127	[  0]	JMP  	 22		1	; 	goto 129
		128	[  0]	KSHORT	 21		0	; slot21 = 0
		129	[  0]	CALL 	 13	1	8	;  = <unknown table>.setPixel(slot14, slot15, slot16, slot17, slot18, slot19, slot20)
		130	[  0]	FORL 	  6		-65	; slot9 = slot9 + slot8; if cmp(slot9, sign slot8,  slot7) goto 66
		131	[  0]	FORL 	  2		-70	; slot5 = slot5 + slot4; if cmp(slot5, sign slot4,  slot3) goto 62
		132	[  0]	GGET 	  2		19	; slot2 = _env["love"]
		133	[  0]	TGETS	  2	2	13	; slot2 = love.graphics
		134	[  0]	TGETS	  2	2	12	; slot2 = love.graphics.newImage
		135	[  0]	MOV  	  4		1	; slot4 = slot1
		136	[  0]	CALL 	  2	2	2	; slot2 = love.graphics.newImage(slot3)
		137	[  0]	USETV	  3		2	; uv3"unknwon" = slot2
		138	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		139	[  0]	MOV  	  4		2	; slot4 = uv3"unknown"
		140	[  0]	TGETS	  2	2	11	; slot2 = uv3"unknown".setFilter
		141	[  0]	KSTR 	  5		3	; slot5 = "linear"
		142	[  0]	KSTR 	  6		3	; slot6 = "linear"
		143	[  0]	CALL 	  2	1	4	;  = uv3"unknown".setFilter(slot3, uv3"unknown", slot5)
		144	[  0]	MOV  	  4		1	; slot4 = slot1
		145	[  0]	TGETS	  2	1	9	; slot2 = slot1.release
		146	[  0]	CALL 	  2	1	2	;  = <unknown table>.release(slot3)
		147	[  0]	GGET 	  2		2	; slot2 = _env["pcall"]
		148	[  0]	GGET 	  4		19	; slot4 = _env["love"]
		149	[  0]	TGETS	  4	4	13	; slot4 = love.graphics
		150	[  0]	TGETS	  4	4	1	; slot4 = love.graphics.newShader
		151	[  0]	KSTR 	  5		0	; slot5 = "    extern number u_center;
		    extern number u_lift;
		    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {
		      vec4 pixel = Texel(tex, tc);
		      float diagonal = tc.x + tc.y * 0.35;
		      float band = 1.0 - smoothstep(0.07, 0.32, abs(diagonal - u_center));
		      vec3 base = pixel.rgb + vec3(0.35, 0.60, 0.65) * u_lift;
		      vec3 sheen = mix(base, vec3(0.62, 0.98, 0.90), band * 0.78);
		      return vec4(sheen, pixel.a) * color;
		    }
		  "
		152	[  0]	CALL 	  2	3	3	; slot2, slot3 = pcall(slot3, love.graphics.newShader)
		153	[  0]	ISF  	   		2	; if not slot2
		154	[  0]	JMP  	  4		2	; 	goto 157
		155	[  0]	ISTC 	  4		3	; slot4 = slot3; if slot3
		156	[  0]	JMP  	  4		1	; 	goto 158
		157	[  0]	KPRI 	  4		1	; slot4 = false
		158	[  0]	USETV	  4		4	; uv4"unknwon" = slot4
		159	[  0]	RET0 	  0		1	; return
	280	[  0]	FNEW 	 22		77	; N/A:0-0: 7 args, 5 upvalues, 27 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  7		25	; slot7 = _env["math"]
		  2	[  0]	TGETS	  7	7	24	; slot7 = math.max
		  3	[  0]	KSHORT	  9		1	; slot9 = 1
		  4	[  0]	GGET 	 10		25	; slot10 = _env["math"]
		  5	[  0]	TGETS	 10	10	23	; slot10 = math.floor
		  6	[  0]	GGET 	 12		22	; slot12 = _env["tonumber"]
		  7	[  0]	MOV  	 14		2	; slot14 = slot2
		  8	[  0]	CALL 	 12	2	2	; slot12 = tonumber(slot13)
		  9	[  0]	IST  	   		12	; if tonumber
		 10	[  0]	JMP  	 13		1	; 	goto 12
		 11	[  0]	KSHORT	 12		1	; slot12 = 1
		 12	[  0]	ADDVN	 12	12	0	; slot12 = slot12 + 0.5
		 13	[  0]	CALL 	 10	0	2	; MULTRES = math.floor(slot11)
		 14	[  0]	CALLM	  7	2	1	; slot7 = math.max(slot8, ...MULTRES)
		 15	[  0]	MOV  	  2		7	; slot2 = math.max
		 16	[  0]	GGET 	  7		25	; slot7 = _env["math"]
		 17	[  0]	TGETS	  7	7	24	; slot7 = math.max
		 18	[  0]	KSHORT	  9		0	; slot9 = 0
		 19	[  0]	GGET 	 10		25	; slot10 = _env["math"]
		 20	[  0]	TGETS	 10	10	21	; slot10 = math.min
		 21	[  0]	KSHORT	 12		1	; slot12 = 1
		 22	[  0]	GGET 	 13		22	; slot13 = _env["tonumber"]
		 23	[  0]	MOV  	 15		5	; slot15 = slot5
		 24	[  0]	CALL 	 13	2	2	; slot13 = tonumber(slot14)
		 25	[  0]	IST  	   		13	; if tonumber
		 26	[  0]	JMP  	 14		1	; 	goto 28
		 27	[  0]	KSHORT	 13		1	; slot13 = 1
		 28	[  0]	CALL 	 10	0	3	; MULTRES = math.min(slot11, slot12)
		 29	[  0]	CALLM	  7	2	1	; slot7 = math.max(slot8, ...MULTRES)
		 30	[  0]	MOV  	  5		7	; slot5 = math.max
		 31	[  0]	ISF  	   		3	; if not slot3
		 32	[  0]	JMP  	  7		2	; 	goto 35
		 33	[  0]	ISTC 	  7		5	; slot7 = math.max; if math.max
		 34	[  0]	JMP  	  7		1	; 	goto 36
		 35	[  0]	MULVN	  7	5	1	; slot7 = math.max * 0.22
		 36	[  0]	ISNEN	  7		2	; if slot7 ~= 0
		 37	[  0]	JMP  	  8		1	; 	goto 39
		 38	[  0]	RET0 	  0		1	; return
		 39	[  0]	GGET 	  8		20	; slot8 = _env["love"]
		 40	[  0]	TGETS	  8	8	19	; slot8 = love.graphics
		 41	[  0]	ISFC 	  9		3	; slot9 = slot3; if not slot3
		 42	[  0]	JMP  	  9		1	; 	goto 44
		 43	[  0]	MOV  	  9		4	; slot9 = slot4
		 44	[  0]	ISF  	   		9	; if not slot9
		 45	[  0]	JMP  	 10		96	; 	goto 142
		 46	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 47	[  0]	CALL 	 10	1	1	;  = uv0"unknown"()
		 48	[  0]	GGET 	 10		22	; slot10 = _env["tonumber"]
		 49	[  0]	MOV  	 12		6	; slot12 = slot6
		 50	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 51	[  0]	IST  	   		10	; if tonumber
		 52	[  0]	JMP  	 11		16	; 	goto 69
		 53	[  0]	GGET 	 10		20	; slot10 = _env["love"]
		 54	[  0]	TGETS	 10	10	18	; slot10 = love.timer
		 55	[  0]	ISF  	   		10	; if not love.timer
		 56	[  0]	JMP  	 11		11	; 	goto 68
		 57	[  0]	GGET 	 10		20	; slot10 = _env["love"]
		 58	[  0]	TGETS	 10	10	18	; slot10 = love.timer
		 59	[  0]	TGETS	 10	10	17	; slot10 = love.timer.getTime
		 60	[  0]	ISF  	   		10	; if not love.timer.getTime
		 61	[  0]	JMP  	 11		6	; 	goto 68
		 62	[  0]	GGET 	 10		20	; slot10 = _env["love"]
		 63	[  0]	TGETS	 10	10	18	; slot10 = love.timer
		 64	[  0]	TGETS	 10	10	17	; slot10 = love.timer.getTime
		 65	[  0]	CALL 	 10	2	1	; slot10 = love.timer.getTime()
		 66	[  0]	IST  	   		10	; if love.timer.getTime
		 67	[  0]	JMP  	 11		1	; 	goto 69
		 68	[  0]	KSHORT	 10		0	; slot10 = 0
		 69	[  0]	GGET 	 11		25	; slot11 = _env["math"]
		 70	[  0]	TGETS	 11	11	16	; slot11 = math.sin
		 71	[  0]	MULVN	 13	10	3	; slot13 = slot10 * 1.2
		 72	[  0]	CALL 	 11	2	2	; slot11 = math.sin(slot12)
		 73	[  0]	MULNV	 11	11	0	; slot11 = 0.5 * math.sin
		 74	[  0]	ADDNV	 11	11	0	; slot11 = 0.5 + slot11
		 75	[  0]	TGETS	 12	8	15	; slot12 = love.graphics.push
		 76	[  0]	KSTR 	 14		14	; slot14 = "all"
		 77	[  0]	CALL 	 12	1	2	;  = love.graphics.push(slot13)
		 78	[  0]	TGETS	 12	8	13	; slot12 = love.graphics.setShader
		 79	[  0]	CALL 	 12	1	1	;  = love.graphics.setShader()
		 80	[  0]	TGETS	 12	8	12	; slot12 = love.graphics.setBlendMode
		 81	[  0]	KSTR 	 14		11	; slot14 = "alpha"
		 82	[  0]	KSTR 	 15		10	; slot15 = "alphamultiply"
		 83	[  0]	CALL 	 12	1	3	;  = love.graphics.setBlendMode(slot13, slot14)
		 84	[  0]	TGETS	 12	8	9	; slot12 = love.graphics.setColor
		 85	[  0]	KNUM 	 14		4	; slot14 = 0.1
		 86	[  0]	KNUM 	 15		5	; slot15 = 0.85
		 87	[  0]	KNUM 	 16		6	; slot16 = 0.75
		 88	[  0]	MULVN	 17	11	7	; slot17 = slot11 * 0.07
		 89	[  0]	ADDNV	 17	17	8	; slot17 = 0.16 + slot17
		 90	[  0]	MULVV	 17	7	17	; slot17 = slot7 * slot17
		 91	[  0]	CALL 	 12	1	5	;  = love.graphics.setColor(slot13, slot14, slot15, slot16)
		 92	[  0]	TGETS	 12	8	8	; slot12 = love.graphics.draw
		 93	[  0]	UGET 	 14		1	; slot14 = uv1"unknwon"
		 94	[  0]	MULNV	 15	2	9	; slot15 = 2 * math.max
		 95	[  0]	SUBVV	 15	0	15	; slot15 = slot0 - slot15
		 96	[  0]	MULNV	 16	2	9	; slot16 = 2 * math.max
		 97	[  0]	SUBVV	 16	1	16	; slot16 = slot1 - slot16
		 98	[  0]	KSHORT	 17		0	; slot17 = 0
		 99	[  0]	DIVVN	 18	2	10	; slot18 = math.max / 4
		100	[  0]	DIVVN	 19	2	10	; slot19 = math.max / 4
		101	[  0]	CALL 	 12	1	7	;  = love.graphics.draw(slot13, uv1"unknown", slot15, slot16, slot17, slot18)
		102	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		103	[  0]	ISF  	   		12	; if not uv2"unknown"
		104	[  0]	JMP  	 13		20	; 	goto 125
		105	[  0]	TGETS	 12	8	13	; slot12 = love.graphics.setShader
		106	[  0]	UGET 	 14		2	; slot14 = uv2"unknwon"
		107	[  0]	CALL 	 12	1	2	;  = love.graphics.setShader(slot13)
		108	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		109	[  0]	MOV  	 14		12	; slot14 = uv2"unknown"
		110	[  0]	TGETS	 12	12	7	; slot12 = uv2"unknown".send
		111	[  0]	KSTR 	 15		6	; slot15 = "u_center"
		112	[  0]	MODVN	 16	10	11	; slot16 = slot10 % 4.4
		113	[  0]	SUBVN	 16	16	12	; slot16 = slot16 - 0.65
		114	[  0]	DIVVN	 16	16	13	; slot16 = slot16 / 1.65
		115	[  0]	MULVN	 16	16	14	; slot16 = slot16 * 1.95
		116	[  0]	ADDNV	 16	16	15	; slot16 = -0.3 + slot16
		117	[  0]	CALL 	 12	1	4	;  = uv2"unknown".send(slot13, uv2"unknown", slot15)
		118	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		119	[  0]	MOV  	 14		12	; slot14 = uv2"unknown"
		120	[  0]	TGETS	 12	12	7	; slot12 = uv2"unknown".send
		121	[  0]	KSTR 	 15		5	; slot15 = "u_lift"
		122	[  0]	MULVN	 16	11	16	; slot16 = slot11 * 0.018
		123	[  0]	ADDNV	 16	16	17	; slot16 = 0.01 + slot16
		124	[  0]	CALL 	 12	1	4	;  = uv2"unknown".send(slot13, uv2"unknown", slot15)
		125	[  0]	TGETS	 12	8	9	; slot12 = love.graphics.setColor
		126	[  0]	KSHORT	 14		1	; slot14 = 1
		127	[  0]	KSHORT	 15		1	; slot15 = 1
		128	[  0]	KSHORT	 16		1	; slot16 = 1
		129	[  0]	MOV  	 17		7	; slot17 = slot7
		130	[  0]	CALL 	 12	1	5	;  = love.graphics.setColor(slot13, slot14, slot15, slot16)
		131	[  0]	TGETS	 12	8	8	; slot12 = love.graphics.draw
		132	[  0]	UGET 	 14		3	; slot14 = uv3"unknwon"
		133	[  0]	MOV  	 15		0	; slot15 = slot0
		134	[  0]	MOV  	 16		1	; slot16 = slot1
		135	[  0]	KSHORT	 17		0	; slot17 = 0
		136	[  0]	MOV  	 18		2	; slot18 = math.max
		137	[  0]	MOV  	 19		2	; slot19 = math.max
		138	[  0]	CALL 	 12	1	7	;  = love.graphics.draw(slot13, uv3"unknown", slot15, slot16, slot17, math.max)
		139	[  0]	TGETS	 12	8	4	; slot12 = love.graphics.pop
		140	[  0]	CALL 	 12	1	1	;  = love.graphics.pop()
		141	[  0]	RET0 	  0		1	; return
		142	[  0]	TGETS	 10	8	9	; slot10 = love.graphics.setColor
		143	[  0]	KSHORT	 12		1	; slot12 = 1
		144	[  0]	KSHORT	 13		1	; slot13 = 1
		145	[  0]	KSHORT	 14		1	; slot14 = 1
		146	[  0]	MOV  	 15		7	; slot15 = slot7
		147	[  0]	CALL 	 10	1	5	;  = love.graphics.setColor(slot11, slot12, slot13, slot14)
		148	[  0]	GGET 	 10		3	; slot10 = _env["ipairs"]
		149	[  0]	UGET 	 12		4	; slot12 = uv4"unknwon"
		150	[  0]	TGETS	 12	12	2	; slot12 = uv4"unknown".mask
		151	[  0]	CALL 	 10	4	2	; slot10, slot11, slot12 = ipairs(slot11)
		152	[  0]	JMP  	 13		19	; 	goto 172
		153	[  0]	GGET 	 15		3	; slot15 = _env["ipairs"]
		154	[  0]	MOV  	 17		14	; slot17 = slot14
		155	[  0]	CALL 	 15	4	2	; slot15, slot16, slot17 = ipairs(slot16)
		156	[  0]	JMP  	 18		13	; 	goto 170
		157	[  0]	ISNEN	 19		18	; if math.max ~= 1
		158	[  0]	JMP  	 20		11	; 	goto 170
		159	[  0]	TGETS	 20	8	1	; slot20 = love.graphics.rectangle
		160	[  0]	KSTR 	 22		0	; slot22 = "fill"
		161	[  0]	SUBVN	 23	18	18	; slot23 = math.max - 1
		162	[  0]	MULVV	 23	23	2	; slot23 = slot23 * math.max
		163	[  0]	ADDVV	 23	0	23	; slot23 = slot0 + slot23
		164	[  0]	SUBVN	 24	13	18	; slot24 = slot13 - 1
		165	[  0]	MULVV	 24	24	2	; slot24 = slot24 * math.max
		166	[  0]	ADDVV	 24	1	24	; slot24 = slot1 + slot24
		167	[  0]	MOV  	 25		2	; slot25 = math.max
		168	[  0]	MOV  	 26		2	; slot26 = math.max
		169	[  0]	CALL 	 20	1	6	;  = love.graphics.rectangle(slot21, slot22, slot23, slot24, math.max)
		170	[  0]	ITERC	 18	3	3	; slot18, slot19, slot20 = ipairs, slot16, slot17; slot18, slot19 = ipairs(slot16, slot17)
		171	[  0]	ITERL	 18		-15	; slot17 = math.max; if math.max != nil goto 157
		172	[  0]	ITERC	 13	3	3	; slot13, slot14, slot15 = ipairs, slot11, uv4"unknown".mask; slot13, slot14 = ipairs(slot11, uv4"unknown".mask)
		173	[  0]	ITERL	 13		-21	; uv4"unknown".mask = slot13; if slot13 != nil goto 153
		174	[  0]	RET0 	  0		1	; return
	281	[  0]	TSETS	 22	16	212	; slot16.draw = slot22
	282	[  0]	MOV  	 15		16	; slot15 = slot16
	283	[  0]	UCLO 	 16		0	; nil uvs >= r16; goto 284
	284	[  0]	KPRI 	 16		0	; slot16 = nil
	285	[  0]	TNEW 	 17		0	; slot17 = new table( array: 0, dict: 1)
	286	[  0]	FNEW 	 18		75	; N/A:0-0: 4 args, 0 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		3	; if slot3
		  2	[  0]	JMP  	  4		1	; 	goto 4
		  3	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		  4	[  0]	ISGE 	  0		1	; if slot0 >= slot1
		  5	[  0]	JMP  	  4		5	; 	goto 11
		  6	[  0]	TGETS	  4	3	4	; slot4 = slot3.hoverLerpIn
		  7	[  0]	IST  	   		4	; if <unknown table>.hoverLerpIn
		  8	[  0]	JMP  	  5		6	; 	goto 15
		  9	[  0]	KSHORT	  4		28	; slot4 = 28
		 10	[  0]	JMP  	  5		4	; 	goto 15
		 11	[  0]	TGETS	  4	3	3	; slot4 = slot3.hoverLerpOut
		 12	[  0]	IST  	   		4	; if <unknown table>.hoverLerpOut
		 13	[  0]	JMP  	  5		1	; 	goto 15
		 14	[  0]	KSHORT	  4		20	; slot4 = 20
		 15	[  0]	SUBVV	  5	1	0	; slot5 = slot1 - slot0
		 16	[  0]	GGET 	  6		2	; slot6 = _env["math"]
		 17	[  0]	TGETS	  6	6	1	; slot6 = math.min
		 18	[  0]	GGET 	  8		2	; slot8 = _env["math"]
		 19	[  0]	TGETS	  8	8	0	; slot8 = math.max
		 20	[  0]	KSHORT	 10		0	; slot10 = 0
		 21	[  0]	ISTC 	 11		2	; slot11 = slot2; if slot2
		 22	[  0]	JMP  	 11		1	; 	goto 24
		 23	[  0]	KSHORT	 11		0	; slot11 = 0
		 24	[  0]	CALL 	  8	2	3	; slot8 = math.max(slot9, slot10)
		 25	[  0]	MULVV	  8	8	4	; slot8 = math.max * slot4
		 26	[  0]	KSHORT	  9		1	; slot9 = 1
		 27	[  0]	CALL 	  6	2	3	; slot6 = math.min(slot7, slot8)
		 28	[  0]	MULVV	  5	5	6	; slot5 = slot5 * math.min
		 29	[  0]	ADDVV	  5	0	5	; slot5 = slot0 + slot5
		 30	[  0]	RET1 	  5		2	; return slot5
	287	[  0]	TSETS	 18	17	76	; slot17.step = slot18
	288	[  0]	FNEW 	 18		73	; N/A:0-0: 2 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		2	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	1	; slot2 = math.floor
		  3	[  0]	ISF  	   		1	; if not slot1
		  4	[  0]	JMP  	  4		3	; 	goto 8
		  5	[  0]	TGETS	  4	1	0	; slot4 = slot1.hoverShiftLeftPx
		  6	[  0]	IST  	   		4	; if <unknown table>.hoverShiftLeftPx
		  7	[  0]	JMP  	  5		1	; 	goto 9
		  8	[  0]	KSHORT	  4		4	; slot4 = 4
		  9	[  0]	MULVV	  4	4	0	; slot4 = slot4 * slot0
		 10	[  0]	ADDVN	  4	4	0	; slot4 = slot4 + 0.5
		 11	[  0]	CALLT	  2		2	; return math.floor(slot3)
	289	[  0]	TSETS	 18	17	74	; slot17.shift = slot18
	290	[  0]	FNEW 	 18		71	; N/A:0-0: 3 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  3	0	6	; slot3 = slot0.key
		  2	[  0]	ISNEV	  3		1	; if <unknown table>.key ~= slot1
		  3	[  0]	JMP  	  3		8	; 	goto 12
		  4	[  0]	TGETS	  3	0	5	; slot3 = slot0.lastDraw
		  5	[  0]	ISF  	   		3	; if not <unknown table>.lastDraw
		  6	[  0]	JMP  	  3		5	; 	goto 12
		  7	[  0]	TGETS	  3	0	5	; slot3 = slot0.lastDraw
		  8	[  0]	SUBVV	  3	2	3	; slot3 = slot2 - <unknown table>.lastDraw
		  9	[  0]	KNUM 	  4		0	; slot4 = 0.08
		 10	[  0]	ISGE 	  4		3	; if slot4 >= slot3
		 11	[  0]	JMP  	  3		3	; 	goto 15
		 12	[  0]	MOV  	  3		1	; slot3 = slot1
		 13	[  0]	TSETS	  2	0	4	; slot0.t0 = slot2
		 14	[  0]	TSETS	  3	0	6	; slot0.key = slot3
		 15	[  0]	TSETS	  2	0	5	; slot0.lastDraw = slot2
		 16	[  0]	GGET 	  3		3	; slot3 = _env["math"]
		 17	[  0]	TGETS	  3	3	2	; slot3 = math.max
		 18	[  0]	KSHORT	  5		0	; slot5 = 0
		 19	[  0]	GGET 	  6		3	; slot6 = _env["math"]
		 20	[  0]	TGETS	  6	6	1	; slot6 = math.min
		 21	[  0]	KSHORT	  8		1	; slot8 = 1
		 22	[  0]	TGETS	  9	0	4	; slot9 = slot0.t0
		 23	[  0]	IST  	   		9	; if <unknown table>.t0
		 24	[  0]	JMP  	 10		1	; 	goto 26
		 25	[  0]	MOV  	  9		2	; slot9 = slot2
		 26	[  0]	SUBVV	  9	2	9	; slot9 = slot2 - slot9
		 27	[  0]	DIVVN	  9	9	1	; slot9 = slot9 / 0.14
		 28	[  0]	CALL 	  6	0	3	; MULTRES = math.min(slot7, slot8)
		 29	[  0]	CALLM	  3	2	1	; slot3 = math.max(slot4, ...MULTRES)
		 30	[  0]	SUBNV	  4	3	2	; slot4 = 1 - math.max
		 31	[  0]	KSHORT	  5		3	; slot5 = 3
		 32	[  0]	POW  	  4	4	5	; slot4 = slot4 ^ slot5 (pow)
		 33	[  0]	SUBNV	  4	4	2	; slot4 = 1 - slot4
		 34	[  0]	MOV  	  5		4	; slot5 = slot4
		 35	[  0]	GGET 	  6		3	; slot6 = _env["math"]
		 36	[  0]	TGETS	  6	6	0	; slot6 = math.floor
		 37	[  0]	SUBNV	  8	4	2	; slot8 = 1 - slot4
		 38	[  0]	MULNV	  8	8	3	; slot8 = 6 * slot8
		 39	[  0]	ADDVN	  8	8	4	; slot8 = slot8 + 0.5
		 40	[  0]	CALL 	  6	0	2	; MULTRES = math.floor(slot7)
		 41	[  0]	RETM 	  5		1	; return , ...MULTRES
	291	[  0]	TSETS	 18	17	72	; slot17.appear = slot18
	292	[  0]	MOV  	 16		17	; slot16 = slot17
	293	[  0]	KPRI 	 17		0	; slot17 = nil
	294	[  0]	TNEW 	 18		0	; slot18 = new table( array: 0, dict: 1)
	295	[  0]	KNUM 	 19		0	; slot19 = 0.95
	296	[  0]	KNUM 	 20		1	; slot20 = 0.45
	297	[  0]	KNUM 	 21		2	; slot21 = 0.7
	298	[  0]	FNEW 	 22		70	; N/A:0-0: 0 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		  2	[  0]	TGETS	  0	0	1	; slot0 = love.timer
		  3	[  0]	ISF  	   		0	; if not love.timer
		  4	[  0]	JMP  	  1		11	; 	goto 16
		  5	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		  6	[  0]	TGETS	  0	0	1	; slot0 = love.timer
		  7	[  0]	TGETS	  0	0	0	; slot0 = love.timer.getTime
		  8	[  0]	ISF  	   		0	; if not love.timer.getTime
		  9	[  0]	JMP  	  1		6	; 	goto 16
		 10	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		 11	[  0]	TGETS	  0	0	1	; slot0 = love.timer
		 12	[  0]	TGETS	  0	0	0	; slot0 = love.timer.getTime
		 13	[  0]	CALL 	  0	2	1	; slot0 = love.timer.getTime()
		 14	[  0]	IST  	   		0	; if slot0
		 15	[  0]	JMP  	  1		1	; 	goto 17
		 16	[  0]	KSHORT	  0		0	; slot0 = 0
		 17	[  0]	RET1 	  0		2	; return slot0
	299	[  0]	FNEW 	 23		68	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		7	; slot1 = _env["rawget"]
		  2	[  0]	GGET 	  3		6	; slot3 = _env["_G"]
		  3	[  0]	KSTR 	  4		5	; slot4 = "jungsu"
		  4	[  0]	CALL 	  1	2	3	; slot1 = rawget(slot2, _G)
		  5	[  0]	GGET 	  2		4	; slot2 = _env["type"]
		  6	[  0]	MOV  	  4		1	; slot4 = slot1
		  7	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  8	[  0]	ISNES	  2		3	; if slot2 ~= "number"
		  9	[  0]	JMP  	  2		1	; 	goto 11
		 10	[  0]	RET1 	  1		2	; return slot1
		 11	[  0]	GGET 	  2		2	; slot2 = _env["tonumber"]
		 12	[  0]	ISFC 	  4		0	; slot4 = slot0; if not slot0
		 13	[  0]	JMP  	  4		4	; 	goto 18
		 14	[  0]	TGETS	  4	0	1	; slot4 = slot0.jungsuBalanceTarget
		 15	[  0]	IST  	   		4	; if <unknown table>.jungsuBalanceTarget
		 16	[  0]	JMP  	  5		1	; 	goto 18
		 17	[  0]	TGETS	  4	0	0	; slot4 = slot0.jungsuBalance
		 18	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 19	[  0]	IST  	   		2	; if slot2
		 20	[  0]	JMP  	  3		1	; 	goto 22
		 21	[  0]	KSHORT	  2		0	; slot2 = 0
		 22	[  0]	RET1 	  2		2	; return slot2
	300	[  0]	TSETS	 23	18	69	; slot18.balance = slot23
	301	[  0]	FNEW 	 23		66	; N/A:0-0: 2 args, 1 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		1	; slot2 = _env["tonumber"]
		  2	[  0]	MOV  	  4		1	; slot4 = slot1
		  3	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		  4	[  0]	MOV  	  1		2	; slot1 = slot2
		  5	[  0]	ISEQP	  1		0	; if slot1 == nil
		  6	[  0]	JMP  	  2		9	; 	goto 16
		  7	[  0]	KSHORT	  2		0	; slot2 = 0
		  8	[  0]	ISGE 	  2		1	; if slot2 >= slot1
		  9	[  0]	JMP  	  2		6	; 	goto 16
		 10	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 11	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".balance
		 12	[  0]	MOV  	  4		0	; slot4 = slot0
		 13	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown".balance(slot3)
		 14	[  0]	ISLT 	  2		1	; if slot2 < slot1
		 15	[  0]	JMP  	  2		2	; 	goto 18
		 16	[  0]	KPRI 	  2		1	; slot2 = false
		 17	[  0]	JMP  	  3		1	; 	goto 19
		 18	[  0]	KPRI 	  2		2	; slot2 = true
		 19	[  0]	RET1 	  2		2	; return slot2
	302	[  0]	TSETS	 23	18	67	; slot18.isShort = slot23
	303	[  0]	FNEW 	 23		65	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  1		0	; slot1 = slot0; if not slot0
		  2	[  0]	JMP  	  1		5	; 	goto 8
		  3	[  0]	TGETS	  1	0	1	; slot1 = slot0.heartNumber
		  4	[  0]	ISF  	   		1	; if not <unknown table>.heartNumber
		  5	[  0]	JMP  	  2		2	; 	goto 8
		  6	[  0]	TGETS	  1	0	1	; slot1 = slot0.heartNumber
		  7	[  0]	TGETS	  1	1	0	; slot1 = <unknown table>.heartNumber.color
		  8	[  0]	ISF  	   		1	; if not <unknown table>.heartNumber.color
		  9	[  0]	JMP  	  2		3	; 	goto 13
		 10	[  0]	TGETB	  2	1	1	; slot2 = <unknown table>.heartNumber.color[1]
		 11	[  0]	IST  	   		2	; if slot2
		 12	[  0]	JMP  	  3		1	; 	goto 14
		 13	[  0]	KSHORT	  2		1	; slot2 = 1
		 14	[  0]	ISF  	   		1	; if not <unknown table>.heartNumber.color
		 15	[  0]	JMP  	  3		3	; 	goto 19
		 16	[  0]	TGETB	  3	1	2	; slot3 = <unknown table>.heartNumber.color[2]
		 17	[  0]	IST  	   		3	; if slot3
		 18	[  0]	JMP  	  4		1	; 	goto 20
		 19	[  0]	KNUM 	  3		0	; slot3 = 0.5215686275
		 20	[  0]	ISF  	   		1	; if not <unknown table>.heartNumber.color
		 21	[  0]	JMP  	  4		3	; 	goto 25
		 22	[  0]	TGETB	  4	1	3	; slot4 = <unknown table>.heartNumber.color[3]
		 23	[  0]	IST  	   		4	; if slot4
		 24	[  0]	JMP  	  5		1	; 	goto 26
		 25	[  0]	KNUM 	  4		0	; slot4 = 0.5215686275
		 26	[  0]	RET  	  2		4	; return slot2, slot3, slot4
	304	[  0]	FNEW 	 24		64	; N/A:0-0: 1 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  1		0	; slot1 = slot0; if not slot0
		  2	[  0]	JMP  	  1		1	; 	goto 4
		  3	[  0]	TGETS	  1	0	1	; slot1 = slot0._shopFundsDeny
		  4	[  0]	IST  	   		1	; if <unknown table>._shopFundsDeny
		  5	[  0]	JMP  	  2		2	; 	goto 8
		  6	[  0]	KPRI 	  2		0	; slot2 = nil
		  7	[  0]	RET1 	  2		2	; return slot2
		  8	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  9	[  0]	CALL 	  2	2	1	; slot2 = uv0"unknown"()
		 10	[  0]	TGETS	  3	1	0	; slot3 = <unknown table>._shopFundsDeny.t0
		 11	[  0]	IST  	   		3	; if <unknown table>._shopFundsDeny.t0
		 12	[  0]	JMP  	  4		1	; 	goto 14
		 13	[  0]	KSHORT	  3		0	; slot3 = 0
		 14	[  0]	SUBVV	  2	2	3	; slot2 = uv0"unknown" - slot3
		 15	[  0]	MOV  	  3		1	; slot3 = <unknown table>._shopFundsDeny
		 16	[  0]	RET  	  2		3	; return slot2, <unknown table>._shopFundsDeny
	305	[  0]	FNEW 	 25		63	; N/A:0-0: 2 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		5	; 	goto 8
		  3	[  0]	KSHORT	  2		0	; slot2 = 0
		  4	[  0]	ISLT 	  0		2	; if slot0 < slot2
		  5	[  0]	JMP  	  2		2	; 	goto 8
		  6	[  0]	ISGT 	  1		0	; if slot1 > slot0
		  7	[  0]	JMP  	  2		2	; 	goto 10
		  8	[  0]	KSHORT	  2		0	; slot2 = 0
		  9	[  0]	RET1 	  2		2	; return slot2
		 10	[  0]	KNUM 	  2		0	; slot2 = 0.08
		 11	[  0]	ISGE 	  0		2	; if slot0 >= slot2
		 12	[  0]	JMP  	  2		2	; 	goto 15
		 13	[  0]	DIVVN	  2	0	0	; slot2 = slot0 / 0.08
		 14	[  0]	RET1 	  2		2	; return slot2
		 15	[  0]	SUBVN	  2	0	0	; slot2 = slot0 - 0.08
		 16	[  0]	SUBVN	  3	1	0	; slot3 = slot1 - 0.08
		 17	[  0]	DIVVV	  2	2	3	; slot2 = slot2 / slot3
		 18	[  0]	SUBNV	  2	2	1	; slot2 = 1 - slot2
		 19	[  0]	MULVV	  3	2	2	; slot3 = slot2 * slot2
		 20	[  0]	RET1 	  3		2	; return slot3
	306	[  0]	FNEW 	 26		61	; N/A:0-0: 2 args, 1 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		ktable#2 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  2		1	; 	goto 4
		  3	[  0]	RET0 	  0		1	; return
		  4	[  0]	TDUP 	  2		2	; slot2 = copy table#k2
		  5	[  0]	TSETS	  1	2	1	; slot2.key = slot1
		  6	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  7	[  0]	CALL 	  3	2	1	; slot3 = uv0"unknown"()
		  8	[  0]	TSETS	  3	2	0	; slot2.t0 = uv0"unknown"
		  9	[  0]	TSETS	  2	0	3	; slot0._shopFundsDeny = slot2
		 10	[  0]	RET0 	  0		1	; return
	307	[  0]	TSETS	 26	18	62	; slot18.deny = slot26
	308	[  0]	FNEW 	 26		59	; N/A:0-0: 4 args, 5 upvalues, 17 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  4		4	; slot4 = _env["love"]
		  2	[  0]	TGETS	  4	4	3	; slot4 = love.graphics
		  3	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		  4	[  0]	TGETS	  5	5	2	; slot5 = uv0"unknown".isShort
		  5	[  0]	MOV  	  7		0	; slot7 = slot0
		  6	[  0]	MOV  	  8		2	; slot8 = slot2
		  7	[  0]	CALL 	  5	2	3	; slot5 = uv0"unknown".isShort(slot6, slot7)
		  8	[  0]	IST  	   		5	; if uv0"unknown".isShort
		  9	[  0]	JMP  	  5		20	; 	goto 30
		 10	[  0]	TGETS	  5	4	1	; slot5 = love.graphics.setColor
		 11	[  0]	TGETB	  7	3	1	; slot7 = slot3[1]
		 12	[  0]	IST  	   		7	; if slot7
		 13	[  0]	JMP  	  8		1	; 	goto 15
		 14	[  0]	KSHORT	  7		1	; slot7 = 1
		 15	[  0]	TGETB	  8	3	2	; slot8 = slot3[2]
		 16	[  0]	IST  	   		8	; if slot8
		 17	[  0]	JMP  	  9		1	; 	goto 19
		 18	[  0]	KSHORT	  8		1	; slot8 = 1
		 19	[  0]	TGETB	  9	3	3	; slot9 = slot3[3]
		 20	[  0]	IST  	   		9	; if slot9
		 21	[  0]	JMP  	 10		1	; 	goto 23
		 22	[  0]	KSHORT	  9		1	; slot9 = 1
		 23	[  0]	TGETB	 10	3	4	; slot10 = slot3[4]
		 24	[  0]	IST  	   		10	; if slot10
		 25	[  0]	JMP  	 11		1	; 	goto 27
		 26	[  0]	KSHORT	 10		1	; slot10 = 1
		 27	[  0]	CALL 	  5	1	5	;  = love.graphics.setColor(slot6, slot7, slot8, slot9)
		 28	[  0]	KPRI 	  5		1	; slot5 = false
		 29	[  0]	RET1 	  5		2	; return slot5
		 30	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 31	[  0]	MOV  	  7		0	; slot7 = slot0
		 32	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = uv1"unknown"(slot6)
		 33	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
		 34	[  0]	MOV  	 10		0	; slot10 = slot0
		 35	[  0]	CALL 	  8	3	2	; slot8, slot9 = uv2"unknown"(slot9)
		 36	[  0]	ISF  	   		9	; if not slot9
		 37	[  0]	JMP  	 10		9	; 	goto 47
		 38	[  0]	TGETS	 10	9	0	; slot10 = slot9.key
		 39	[  0]	ISNEV	 10		1	; if <unknown table>.key ~= slot1
		 40	[  0]	JMP  	 10		6	; 	goto 47
		 41	[  0]	UGET 	 10		3	; slot10 = uv3"unknwon"
		 42	[  0]	MOV  	 12		8	; slot12 = uv2"unknown"
		 43	[  0]	UGET 	 13		4	; slot13 = uv4"unknwon"
		 44	[  0]	CALL 	 10	2	3	; slot10 = uv3"unknown"(slot11, uv2"unknown")
		 45	[  0]	IST  	   		10	; if uv3"unknown"
		 46	[  0]	JMP  	 11		1	; 	goto 48
		 47	[  0]	KSHORT	 10		0	; slot10 = 0
		 48	[  0]	TGETS	 11	4	1	; slot11 = love.graphics.setColor
		 49	[  0]	SUBNV	 13	5	0	; slot13 = 1 - uv1"unknown"
		 50	[  0]	MULVV	 13	13	10	; slot13 = slot13 * slot10
		 51	[  0]	ADDVV	 13	5	13	; slot13 = uv1"unknown" + slot13
		 52	[  0]	SUBNV	 14	6	1	; slot14 = 0.86 - slot6
		 53	[  0]	MULVV	 14	14	10	; slot14 = slot14 * slot10
		 54	[  0]	ADDVV	 14	6	14	; slot14 = slot6 + slot14
		 55	[  0]	SUBNV	 15	7	2	; slot15 = 0.8 - slot7
		 56	[  0]	MULVV	 15	15	10	; slot15 = slot15 * slot10
		 57	[  0]	ADDVV	 15	7	15	; slot15 = slot7 + slot15
		 58	[  0]	TGETB	 16	3	4	; slot16 = slot3[4]
		 59	[  0]	IST  	   		16	; if slot16
		 60	[  0]	JMP  	 17		1	; 	goto 62
		 61	[  0]	KSHORT	 16		1	; slot16 = 1
		 62	[  0]	CALL 	 11	1	5	;  = love.graphics.setColor(uv2"unknown", slot13, slot14, slot15)
		 63	[  0]	KPRI 	 11		2	; slot11 = true
		 64	[  0]	RET1 	 11		2	; return slot11
	309	[  0]	TSETS	 26	18	60	; slot18.setPriceColor = slot26
	310	[  0]	FNEW 	 26		58	; N/A:0-0: 2 args, 0 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		9	; slot2 = _env["package"]
		  2	[  0]	TGETS	  2	2	8	; slot2 = package.loaded
		  3	[  0]	TGETS	  2	2	7	; slot2 = package.loaded.src.ui.render
		  4	[  0]	GGET 	  3		6	; slot3 = _env["rawget"]
		  5	[  0]	GGET 	  5		5	; slot5 = _env["_G"]
		  6	[  0]	KSTR 	  6		4	; slot6 = "loadedAssets"
		  7	[  0]	CALL 	  3	2	3	; slot3 = rawget(slot4, _G)
		  8	[  0]	ISFC 	  4		2	; slot4 = package.loaded.src.ui.render; if not package.loaded.src.ui.render
		  9	[  0]	JMP  	  4		7	; 	goto 17
		 10	[  0]	TGETS	  4	2	3	; slot4 = package.loaded.src.ui.render.getItemShopSlotRects
		 11	[  0]	ISF  	   		4	; if not package.loaded.src.ui.render.getItemShopSlotRects
		 12	[  0]	JMP  	  5		4	; 	goto 17
		 13	[  0]	TGETS	  4	2	3	; slot4 = package.loaded.src.ui.render.getItemShopSlotRects
		 14	[  0]	MOV  	  6		0	; slot6 = slot0
		 15	[  0]	MOV  	  7		3	; slot7 = slot3
		 16	[  0]	CALL 	  4	2	3	; slot4 = package.loaded.src.ui.render.getItemShopSlotRects(_G, slot6)
		 17	[  0]	GGET 	  5		2	; slot5 = _env["ipairs"]
		 18	[  0]	ISTC 	  7		4	; slot7 = package.loaded.src.ui.render.getItemShopSlotRects; if package.loaded.src.ui.render.getItemShopSlotRects
		 19	[  0]	JMP  	  7		1	; 	goto 21
		 20	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
		 21	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		 22	[  0]	JMP  	  8		6	; 	goto 29
		 23	[  0]	TGETS	 10	9	1	; slot10 = slot9.kind
		 24	[  0]	TGETS	 11	9	0	; slot11 = slot9.index
		 25	[  0]	CAT  	 10	10	11	; slot10 = <unknown table>.kind .. <unknown table>.index
		 26	[  0]	ISNEV	 10		1	; if slot10 ~= slot1
		 27	[  0]	JMP  	 10		1	; 	goto 29
		 28	[  0]	RET1 	  9		2	; return slot9
		 29	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		 30	[  0]	ITERL	  8		-8	; slot7 = slot8; if slot8 != nil goto 23
		 31	[  0]	KPRI 	  5		0	; slot5 = nil
		 32	[  0]	RET1 	  5		2	; return slot5
	311	[  0]	FNEW 	 27		56	; N/A:0-0: 4 args, 4 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  2	[  0]	MOV  	  6		0	; slot6 = slot0
		  3	[  0]	CALL 	  4	2	2	; slot4 = uv0"unknown"(slot5)
		  4	[  0]	ISF  	   		4	; if not uv0"unknown"
		  5	[  0]	JMP  	  5		3	; 	goto 9
		  6	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		  7	[  0]	ISGT 	  5		4	; if uv1"unknown" > uv0"unknown"
		  8	[  0]	JMP  	  5		5	; 	goto 14
		  9	[  0]	MOV  	  5		1	; slot5 = slot1
		 10	[  0]	MOV  	  6		2	; slot6 = slot2
		 11	[  0]	MOV  	  7		3	; slot7 = slot3
		 12	[  0]	KSHORT	  8		0	; slot8 = 0
		 13	[  0]	RET  	  5		5	; return slot5, slot6, slot7, slot8
		 14	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 15	[  0]	MOV  	  7		4	; slot7 = uv0"unknown"
		 16	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 17	[  0]	CALL 	  5	2	3	; slot5 = uv2"unknown"(slot6, uv0"unknown")
		 18	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		 19	[  0]	MOV  	  8		0	; slot8 = slot0
		 20	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = uv3"unknown"(uv0"unknown")
		 21	[  0]	KSHORT	  9		0	; slot9 = 0
		 22	[  0]	KNUM 	 10		0	; slot10 = 0.3
		 23	[  0]	ISGE 	  4		10	; if uv0"unknown" >= slot10
		 24	[  0]	JMP  	 10		17	; 	goto 42
		 25	[  0]	GGET 	 10		3	; slot10 = _env["math"]
		 26	[  0]	TGETS	 10	10	2	; slot10 = math.floor
		 27	[  0]	GGET 	 12		3	; slot12 = _env["math"]
		 28	[  0]	TGETS	 12	12	1	; slot12 = math.sin
		 29	[  0]	MULVN	 14	4	1	; slot14 = uv0"unknown" * 13
		 30	[  0]	GGET 	 15		3	; slot15 = _env["math"]
		 31	[  0]	TGETS	 15	15	0	; slot15 = math.pi
		 32	[  0]	MULVV	 14	14	15	; slot14 = slot14 * math.pi
		 33	[  0]	MULVN	 14	14	2	; slot14 = slot14 * 2
		 34	[  0]	CALL 	 12	2	2	; slot12 = math.sin(slot13)
		 35	[  0]	MULVN	 12	12	2	; slot12 = math.sin * 2
		 36	[  0]	DIVVN	 13	4	0	; slot13 = uv0"unknown" / 0.3
		 37	[  0]	SUBNV	 13	13	3	; slot13 = 1 - slot13
		 38	[  0]	MULVV	 12	12	13	; slot12 = slot12 * slot13
		 39	[  0]	ADDVN	 12	12	4	; slot12 = slot12 + 0.5
		 40	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
		 41	[  0]	MOV  	  9		10	; slot9 = math.floor
		 42	[  0]	SUBVV	 10	6	1	; slot10 = uv3"unknown" - slot1
		 43	[  0]	MULVV	 10	10	5	; slot10 = slot10 * uv2"unknown"
		 44	[  0]	ADDVV	 10	1	10	; slot10 = slot1 + slot10
		 45	[  0]	SUBVV	 11	7	2	; slot11 = uv0"unknown" - slot2
		 46	[  0]	MULVV	 11	11	5	; slot11 = slot11 * uv2"unknown"
		 47	[  0]	ADDVV	 11	2	11	; slot11 = slot2 + slot11
		 48	[  0]	SUBVV	 12	8	3	; slot12 = slot8 - slot3
		 49	[  0]	MULVV	 12	12	5	; slot12 = slot12 * uv2"unknown"
		 50	[  0]	ADDVV	 12	3	12	; slot12 = slot3 + slot12
		 51	[  0]	MOV  	 13		9	; slot13 = math.floor
		 52	[  0]	RET  	 10		5	; return slot10, slot11, slot12, math.floor
	312	[  0]	TSETS	 27	18	57	; slot18.counter = slot27
	313	[  0]	FNEW 	 27		54	; N/A:0-0: 1 args, 4 upvalues, 31 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	3	2	; slot1, slot2 = uv0"unknown"(slot2)
		  4	[  0]	ISF  	   		1	; if not slot1
		  5	[  0]	JMP  	  3		10	; 	goto 16
		  6	[  0]	ISF  	   		2	; if not slot2
		  7	[  0]	JMP  	  3		8	; 	goto 16
		  8	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		  9	[  0]	ISLE 	  3		1	; if uv1"unknown" <= slot1
		 10	[  0]	JMP  	  3		5	; 	goto 16
		 11	[  0]	ISF  	   		0	; if not slot0
		 12	[  0]	JMP  	  3		3	; 	goto 16
		 13	[  0]	TGETS	  3	0	29	; slot3 = slot0._shopMode
		 14	[  0]	IST  	   		3	; if <unknown table>._shopMode
		 15	[  0]	JMP  	  3		1	; 	goto 17
		 16	[  0]	RET0 	  0		1	; return
		 17	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 18	[  0]	MOV  	  5		0	; slot5 = slot0
		 19	[  0]	TGETS	  6	2	28	; slot6 = slot2.key
		 20	[  0]	CALL 	  3	2	3	; slot3 = uv2"unknown"(slot4, slot5)
		 21	[  0]	IST  	   		3	; if slot3
		 22	[  0]	JMP  	  4		1	; 	goto 24
		 23	[  0]	RET0 	  0		1	; return
		 24	[  0]	TGETS	  4	0	27	; slot4 = slot0.itemShop
		 25	[  0]	ISF  	   		4	; if not <unknown table>.itemShop
		 26	[  0]	JMP  	  5		4	; 	goto 31
		 27	[  0]	TGETS	  4	0	27	; slot4 = slot0.itemShop
		 28	[  0]	TGETS	  4	4	26	; slot4 = <unknown table>.itemShop.itemLayout
		 29	[  0]	IST  	   		4	; if <unknown table>.itemShop.itemLayout
		 30	[  0]	JMP  	  5		1	; 	goto 32
		 31	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 32	[  0]	TGETS	  5	4	25	; slot5 = slot4.nameFont
		 33	[  0]	GGET 	  6		24	; slot6 = _env["require"]
		 34	[  0]	KSTR 	  8		23	; slot8 = "src.data.language"
		 35	[  0]	CALL 	  6	2	2	; slot6 = require(slot7)
		 36	[  0]	TGETS	  7	6	22	; slot7 = require.getText
		 37	[  0]	KSTR 	  9		21	; slot9 = "shop_not_enough_essence"
		 38	[  0]	GGET 	 10		20	; slot10 = _env["rawget"]
		 39	[  0]	GGET 	 12		19	; slot12 = _env["_G"]
		 40	[  0]	KSTR 	 13		18	; slot13 = "currentGameLang"
		 41	[  0]	CALL 	 10	2	3	; slot10 = rawget(slot11, _G)
		 42	[  0]	IST  	   		10	; if rawget
		 43	[  0]	JMP  	 11		1	; 	goto 45
		 44	[  0]	KSTR 	 10		17	; slot10 = "ko"
		 45	[  0]	CALL 	  7	2	3	; slot7 = require.getText(slot8, slot9)
		 46	[  0]	KSHORT	  8		1	; slot8 = 1
		 47	[  0]	KNUM 	  9		0	; slot9 = 0.1
		 48	[  0]	ISGE 	  1		9	; if slot1 >= slot9
		 49	[  0]	JMP  	  9		2	; 	goto 52
		 50	[  0]	DIVVN	  8	1	0	; slot8 = slot1 / 0.1
		 51	[  0]	JMP  	  9		7	; 	goto 59
		 52	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 53	[  0]	SUBVN	  9	9	1	; slot9 = uv1"unknown" - 0.3
		 54	[  0]	ISGE 	  9		1	; if slot9 >= slot1
		 55	[  0]	JMP  	  9		3	; 	goto 59
		 56	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 57	[  0]	SUBVV	  9	9	1	; slot9 = uv1"unknown" - slot1
		 58	[  0]	DIVVN	  8	9	1	; slot8 = slot9 / 0.3
		 59	[  0]	GGET 	  9		16	; slot9 = _env["math"]
		 60	[  0]	TGETS	  9	9	15	; slot9 = math.min
		 61	[  0]	KSHORT	 11		1	; slot11 = 1
		 62	[  0]	DIVVN	 12	1	2	; slot12 = slot1 / 0.5
		 63	[  0]	CALL 	  9	2	3	; slot9 = math.min(slot10, slot11)
		 64	[  0]	GGET 	 10		16	; slot10 = _env["math"]
		 65	[  0]	TGETS	 10	10	14	; slot10 = math.floor
		 66	[  0]	SUBNV	 12	9	3	; slot12 = 1 - math.min
		 67	[  0]	SUBNV	 13	9	3	; slot13 = 1 - math.min
		 68	[  0]	MULVV	 12	12	13	; slot12 = slot12 * slot13
		 69	[  0]	SUBNV	 13	9	3	; slot13 = 1 - math.min
		 70	[  0]	MULVV	 12	12	13	; slot12 = slot12 * slot13
		 71	[  0]	SUBNV	 12	12	3	; slot12 = 1 - slot12
		 72	[  0]	MULNV	 12	12	4	; slot12 = 6 * slot12
		 73	[  0]	ADDVN	 12	12	2	; slot12 = slot12 + 0.5
		 74	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
		 75	[  0]	GGET 	 11		13	; slot11 = _env["love"]
		 76	[  0]	TGETS	 11	11	12	; slot11 = love.graphics
		 77	[  0]	TGETS	 12	11	11	; slot12 = love.graphics.getFont
		 78	[  0]	CALL 	 12	2	1	; slot12 = love.graphics.getFont()
		 79	[  0]	ISF  	   		5	; if not <unknown table>.nameFont
		 80	[  0]	JMP  	 13		3	; 	goto 84
		 81	[  0]	TGETS	 13	11	10	; slot13 = love.graphics.setFont
		 82	[  0]	MOV  	 15		5	; slot15 = <unknown table>.nameFont
		 83	[  0]	CALL 	 13	1	2	;  = love.graphics.setFont(slot14)
		 84	[  0]	TGETS	 13	11	11	; slot13 = love.graphics.getFont
		 85	[  0]	CALL 	 13	2	1	; slot13 = love.graphics.getFont()
		 86	[  0]	MOV  	 16		13	; slot16 = love.graphics.getFont
		 87	[  0]	TGETS	 14	13	9	; slot14 = love.graphics.getFont.getWidth
		 88	[  0]	MOV  	 17		7	; slot17 = require.getText
		 89	[  0]	CALL 	 14	2	3	; slot14 = love.graphics.getFont.getWidth(<unknown table>.nameFont, love.graphics.getFont)
		 90	[  0]	ISF  	   		0	; if not slot0
		 91	[  0]	JMP  	 15		7	; 	goto 99
		 92	[  0]	TGETS	 15	0	8	; slot15 = slot0.virtual
		 93	[  0]	ISF  	   		15	; if not <unknown table>.virtual
		 94	[  0]	JMP  	 16		4	; 	goto 99
		 95	[  0]	TGETS	 15	0	8	; slot15 = slot0.virtual
		 96	[  0]	TGETS	 15	15	7	; slot15 = <unknown table>.virtual.W
		 97	[  0]	IST  	   		15	; if <unknown table>.virtual.W
		 98	[  0]	JMP  	 16		1	; 	goto 100
		 99	[  0]	KSHORT	 15		640	; slot15 = 640
		100	[  0]	GGET 	 16		16	; slot16 = _env["math"]
		101	[  0]	TGETS	 16	16	14	; slot16 = math.floor
		102	[  0]	TGETS	 18	3	6	; slot18 = slot3.x
		103	[  0]	TGETS	 19	3	5	; slot19 = slot3.w
		104	[  0]	DIVVN	 19	19	5	; slot19 = <unknown table>.w / 2
		105	[  0]	ADDVV	 18	18	19	; slot18 = <unknown table>.x + slot19
		106	[  0]	DIVVN	 19	14	5	; slot19 = love.graphics.getFont.getWidth / 2
		107	[  0]	SUBVV	 18	18	19	; slot18 = slot18 - slot19
		108	[  0]	ADDVN	 18	18	2	; slot18 = slot18 + 0.5
		109	[  0]	CALL 	 16	2	2	; slot16 = math.floor(require.getText)
		110	[  0]	GGET 	 17		16	; slot17 = _env["math"]
		111	[  0]	TGETS	 17	17	4	; slot17 = math.max
		112	[  0]	KSHORT	 19		2	; slot19 = 2
		113	[  0]	GGET 	 20		16	; slot20 = _env["math"]
		114	[  0]	TGETS	 20	20	15	; slot20 = math.min
		115	[  0]	SUBVV	 22	15	14	; slot22 = slot15 - love.graphics.getFont.getWidth
		116	[  0]	SUBVN	 22	22	5	; slot22 = slot22 - 2
		117	[  0]	MOV  	 23		16	; slot23 = math.floor
		118	[  0]	CALL 	 20	0	3	; MULTRES = math.min(slot21, slot22)
		119	[  0]	CALLM	 17	2	1	; slot17 = math.max(slot18, ...MULTRES)
		120	[  0]	MOV  	 16		17	; slot16 = math.max
		121	[  0]	GGET 	 17		16	; slot17 = _env["math"]
		122	[  0]	TGETS	 17	17	14	; slot17 = math.floor
		123	[  0]	TGETS	 19	3	3	; slot19 = slot3.y
		124	[  0]	MOV  	 22		13	; slot22 = love.graphics.getFont
		125	[  0]	TGETS	 20	13	2	; slot20 = love.graphics.getFont.getHeight
		126	[  0]	CALL 	 20	2	2	; slot20 = love.graphics.getFont.getHeight(slot21)
		127	[  0]	SUBVV	 19	19	20	; slot19 = <unknown table>.y - love.graphics.getFont.getHeight
		128	[  0]	SUBVN	 19	19	3	; slot19 = slot19 - 1
		129	[  0]	SUBVV	 19	19	10	; slot19 = slot19 - math.floor
		130	[  0]	ADDVN	 19	19	2	; slot19 = slot19 + 0.5
		131	[  0]	CALL 	 17	2	2	; slot17 = math.floor(slot18)
		132	[  0]	TGETS	 18	11	1	; slot18 = love.graphics.setColor
		133	[  0]	KNUM 	 20		6	; slot20 = 0.10980392156862745
		134	[  0]	KNUM 	 21		7	; slot21 = 0.0784313725490196
		135	[  0]	KNUM 	 22		8	; slot22 = 0.12156862745098039
		136	[  0]	MOV  	 23		8	; slot23 = slot8
		137	[  0]	CALL 	 18	1	5	;  = love.graphics.setColor(slot19, slot20, slot21, slot22)
		138	[  0]	KSHORT	 18		65535	; slot18 = 65535
		139	[  0]	KSHORT	 19		1	; slot19 = 1
		140	[  0]	KSHORT	 20		1	; slot20 = 1
		141	[  0]	FORI 	 18		15	; for slot21 = slot18,slot19,slot20 else goto 157
		142	[  0]	KSHORT	 22		65535	; slot22 = 65535
		143	[  0]	KSHORT	 23		1	; slot23 = 1
		144	[  0]	KSHORT	 24		1	; slot24 = 1
		145	[  0]	FORI 	 22		10	; for slot25 = slot22,slot23,slot24 else goto 156
		146	[  0]	ISNEN	 25		9	; if slot25 ~= 0
		147	[  0]	JMP  	 26		2	; 	goto 150
		148	[  0]	ISEQN	 21		9	; if slot21 == 0
		149	[  0]	JMP  	 26		5	; 	goto 155
		150	[  0]	TGETS	 26	11	0	; slot26 = love.graphics.print
		151	[  0]	MOV  	 28		7	; slot28 = require.getText
		152	[  0]	ADDVV	 29	16	25	; slot29 = math.max + slot25
		153	[  0]	ADDVV	 30	17	21	; slot30 = math.floor + slot21
		154	[  0]	CALL 	 26	1	4	;  = love.graphics.print(slot27, require.getText, slot29)
		155	[  0]	FORL 	 22		-10	; slot25 = slot25 + slot24; if cmp(slot25, sign slot24,  slot23) goto 146
		156	[  0]	FORL 	 18		-15	; slot21 = slot21 + slot20; if cmp(slot21, sign slot20,  slot19) goto 142
		157	[  0]	UGET 	 18		3	; slot18 = uv3"unknwon"
		158	[  0]	MOV  	 20		0	; slot20 = slot0
		159	[  0]	CALL 	 18	4	2	; slot18, slot19, slot20 = uv3"unknown"(slot19)
		160	[  0]	TGETS	 21	11	1	; slot21 = love.graphics.setColor
		161	[  0]	MOV  	 23		18	; slot23 = uv3"unknown"
		162	[  0]	MOV  	 24		19	; slot24 = slot19
		163	[  0]	MOV  	 25		20	; slot25 = slot20
		164	[  0]	MOV  	 26		8	; slot26 = slot8
		165	[  0]	CALL 	 21	1	5	;  = love.graphics.setColor(slot22, uv3"unknown", slot24, slot25)
		166	[  0]	TGETS	 21	11	0	; slot21 = love.graphics.print
		167	[  0]	MOV  	 23		7	; slot23 = require.getText
		168	[  0]	MOV  	 24		16	; slot24 = math.max
		169	[  0]	MOV  	 25		17	; slot25 = math.floor
		170	[  0]	CALL 	 21	1	4	;  = love.graphics.print(slot22, require.getText, math.max)
		171	[  0]	TGETS	 21	11	1	; slot21 = love.graphics.setColor
		172	[  0]	KSHORT	 23		1	; slot23 = 1
		173	[  0]	KSHORT	 24		1	; slot24 = 1
		174	[  0]	KSHORT	 25		1	; slot25 = 1
		175	[  0]	KSHORT	 26		1	; slot26 = 1
		176	[  0]	CALL 	 21	1	5	;  = love.graphics.setColor(slot22, slot23, slot24, slot25)
		177	[  0]	ISF  	   		12	; if not love.graphics.getFont
		178	[  0]	JMP  	 21		3	; 	goto 182
		179	[  0]	TGETS	 21	11	10	; slot21 = love.graphics.setFont
		180	[  0]	MOV  	 23		12	; slot23 = love.graphics.getFont
		181	[  0]	CALL 	 21	1	2	;  = love.graphics.setFont(slot22)
		182	[  0]	RET0 	  0		1	; return
	314	[  0]	TSETS	 27	18	55	; slot18.drawLabel = slot27
	315	[  0]	MOV  	 17		18	; slot17 = slot18
	316	[  0]	UCLO 	 18		0	; nil uvs >= r18; goto 317
	317	[  0]	KPRI 	 18		0	; slot18 = nil
	318	[  0]	TNEW 	 19		0	; slot19 = new table( array: 0, dict: 1)
	319	[  0]	TNEW 	 20		0	; slot20 = new table( array: 0, dict: 1)
	320	[  0]	GGET 	 21		194	; slot21 = _env["setmetatable"]
	321	[  0]	TNEW 	 23		0	; slot23 = new table( array: 0, dict: 1)
	322	[  0]	TDUP 	 24		53	; slot24 = copy table#k53
	323	[  0]	CALL 	 21	2	3	; slot21 = setmetatable(slot22, slot23)
	324	[  0]	FNEW 	 22		51	; N/A:0-0: 2 args, 1 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		ktable#3 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  2		5	; 	goto 8
		  3	[  0]	GGET 	  2		23	; slot2 = _env["_G"]
		  4	[  0]	TGETS	  2	2	22	; slot2 = _G.currentGameLang
		  5	[  0]	ISTC 	  0		2	; slot0 = _G.currentGameLang; if _G.currentGameLang
		  6	[  0]	JMP  	  3		1	; 	goto 8
		  7	[  0]	KSTR 	  0		21	; slot0 = "ko"
		  8	[  0]	GGET 	  2		20	; slot2 = _env["require"]
		  9	[  0]	KSTR 	  4		19	; slot4 = "src.data.font_resolver"
		 10	[  0]	CALL 	  2	2	2	; slot2 = require(slot3)
		 11	[  0]	ISFC 	  3		1	; slot3 = slot1; if not slot1
		 12	[  0]	JMP  	  3		8	; 	goto 21
		 13	[  0]	TGETS	  3	2	18	; slot3 = slot2.styleOf
		 14	[  0]	MOV  	  5		1	; slot5 = slot1
		 15	[  0]	CALL 	  3	2	2	; slot3 = <unknown table>.styleOf(slot4)
		 16	[  0]	ISEQS	  3		17	; if <unknown table>.styleOf == "shadow"
		 17	[  0]	JMP  	  3		2	; 	goto 20
		 18	[  0]	KPRI 	  3		1	; slot3 = false
		 19	[  0]	JMP  	  4		1	; 	goto 21
		 20	[  0]	KPRI 	  3		2	; slot3 = true
		 21	[  0]	MOV  	  4		0	; slot4 = slot0
		 22	[  0]	ISF  	   		3	; if not slot3
		 23	[  0]	JMP  	  5		2	; 	goto 26
		 24	[  0]	KSTR 	  5		16	; slot5 = ":ws"
		 25	[  0]	JMP  	  6		1	; 	goto 27
		 26	[  0]	KSTR 	  5		15	; slot5 = ":w"
		 27	[  0]	CAT  	  4	4	5	; slot4 = slot4 .. slot5
		 28	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 29	[  0]	TGETV	  5	5	4	; slot5 = uv0"unknown"[slot4]
		 30	[  0]	ISNEP	  5		0	; if slot5 ~= nil
		 31	[  0]	JMP  	  6		45	; 	goto 77
		 32	[  0]	KPRI 	  5		1	; slot5 = false
		 33	[  0]	ISEQS	  0		14	; if slot0 == "zh"
		 34	[  0]	JMP  	  6		40	; 	goto 75
		 35	[  0]	TGETS	  6	2	13	; slot6 = slot2.resolve
		 36	[  0]	ISF  	   		3	; if not slot3
		 37	[  0]	JMP  	  8		2	; 	goto 40
		 38	[  0]	KSTR 	  8		12	; slot8 = "src/data/font/Galmuri7WS.fnt"
		 39	[  0]	JMP  	  9		1	; 	goto 41
		 40	[  0]	KSTR 	  8		11	; slot8 = "src/data/font/Galmuri7W.fnt"
		 41	[  0]	MOV  	  9		0	; slot9 = slot0
		 42	[  0]	CALL 	  6	2	3	; slot6 = <unknown table>.resolve(slot7, slot8)
		 43	[  0]	GGET 	  7		10	; slot7 = _env["pcall"]
		 44	[  0]	GGET 	  9		9	; slot9 = _env["love"]
		 45	[  0]	TGETS	  9	9	8	; slot9 = love.graphics
		 46	[  0]	TGETS	  9	9	7	; slot9 = love.graphics.newFont
		 47	[  0]	MOV  	 10		6	; slot10 = <unknown table>.resolve
		 48	[  0]	CALL 	  7	3	3	; slot7, slot8 = pcall(slot8, love.graphics.newFont)
		 49	[  0]	ISF  	   		7	; if not pcall
		 50	[  0]	JMP  	  9		24	; 	goto 75
		 51	[  0]	ISF  	   		8	; if not slot8
		 52	[  0]	JMP  	  9		22	; 	goto 75
		 53	[  0]	MOV  	 11		8	; slot11 = slot8
		 54	[  0]	TGETS	  9	8	6	; slot9 = slot8.setFilter
		 55	[  0]	KSTR 	 12		5	; slot12 = "nearest"
		 56	[  0]	KSTR 	 13		5	; slot13 = "nearest"
		 57	[  0]	CALL 	  9	1	4	;  = <unknown table>.setFilter(<unknown table>.resolve, slot11, slot12)
		 58	[  0]	TGETS	  9	2	4	; slot9 = slot2.attachFallbacks
		 59	[  0]	MOV  	 11		8	; slot11 = slot8
		 60	[  0]	MOV  	 12		6	; slot12 = <unknown table>.resolve
		 61	[  0]	CALL 	  9	1	3	;  = <unknown table>.attachFallbacks(<unknown table>.resolve, slot11)
		 62	[  0]	TDUP 	  9		3	; slot9 = copy table#k3
		 63	[  0]	TSETS	  8	9	2	; slot9.font = slot8
		 64	[  0]	MOV  	 12		8	; slot12 = slot8
		 65	[  0]	TGETS	 10	8	1	; slot10 = slot8.getHeight
		 66	[  0]	CALL 	 10	2	2	; slot10 = <unknown table>.getHeight(slot11)
		 67	[  0]	KSHORT	 11		12	; slot11 = 12
		 68	[  0]	ISGT 	 11		10	; if slot11 > <unknown table>.getHeight
		 69	[  0]	JMP  	 10		2	; 	goto 72
		 70	[  0]	KNUM 	 10		0	; slot10 = 0.5
		 71	[  0]	JMP  	 11		1	; 	goto 73
		 72	[  0]	KSHORT	 10		1	; slot10 = 1
		 73	[  0]	TSETS	 10	9	0	; slot9.scale = slot10
		 74	[  0]	MOV  	  5		9	; slot5 = slot9
		 75	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 76	[  0]	TSETV	  5	6	4	; uv0"unknown"[slot4] = slot5
		 77	[  0]	IST  	   		5	; if slot5
		 78	[  0]	JMP  	  6		2	; 	goto 81
		 79	[  0]	KPRI 	  6		0	; slot6 = nil
		 80	[  0]	RET1 	  6		2	; return slot6
		 81	[  0]	TGETS	  6	5	2	; slot6 = slot5.font
		 82	[  0]	TGETS	  7	5	0	; slot7 = slot5.scale
		 83	[  0]	RET  	  6		3	; return <unknown table>.font, <unknown table>.scale
	325	[  0]	TSETS	 22	19	52	; slot19.smallFont = slot22
	326	[  0]	KSTR 	 22		50	; slot22 = "­"
	327	[  0]	FNEW 	 23		49	; N/A:0-0: 1 args, 1 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.gsub
		  3	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  4	[  0]	KSTR 	  5		0	; slot5 = ""
		  5	[  0]	CALL 	  1	2	4	; slot1 = <unknown table>.gsub(slot2, slot3, uv0"unknown")
		  6	[  0]	RET1 	  1		2	; return slot1
	328	[  0]	FNEW 	 24		48	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISEQS	  0		1	; if slot0 == "ja"
		  2	[  0]	JMP  	  1		4	; 	goto 7
		  3	[  0]	ISEQS	  0		0	; if slot0 == "zh"
		  4	[  0]	JMP  	  1		2	; 	goto 7
		  5	[  0]	KPRI 	  1		1	; slot1 = false
		  6	[  0]	JMP  	  2		1	; 	goto 8
		  7	[  0]	KPRI 	  1		2	; slot1 = true
		  8	[  0]	RET1 	  1		2	; return slot1
	329	[  0]	FNEW 	 25		47	; N/A:0-0: 4 args, 4 upvalues, 27 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  2	[  0]	MOV  	  6		3	; slot6 = slot3
		  3	[  0]	CALL 	  4	2	2	; slot4 = uv0"unknown"(slot5)
		  4	[  0]	ISF  	   		4	; if not uv0"unknown"
		  5	[  0]	JMP  	  5		16	; 	goto 22
		  6	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		  7	[  0]	TGETS	  4	4	12	; slot4 = uv1"unknown".wrap
		  8	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		  9	[  0]	MOV  	  8		0	; slot8 = slot0
		 10	[  0]	CALL 	  6	2	2	; slot6 = uv2"unknown"(slot7)
		 11	[  0]	MOV  	  7		1	; slot7 = slot1
		 12	[  0]	MOV  	  8		2	; slot8 = slot2
		 13	[  0]	CALL 	  4	2	4	; slot4 = uv1"unknown".wrap(slot5, uv2"unknown", slot7)
		 14	[  0]	LEN  	  5		4	; slot5 = #slot4
		 15	[  0]	KSHORT	  6		2	; slot6 = 2
		 16	[  0]	ISGT 	  5		6	; if slot5 > slot6
		 17	[  0]	JMP  	  5		2	; 	goto 20
		 18	[  0]	ISTC 	  5		4	; slot5 = slot4; if slot4
		 19	[  0]	JMP  	  5		1	; 	goto 21
		 20	[  0]	KPRI 	  5		0	; slot5 = nil
		 21	[  0]	UCLO 	  0		155	; nil uvs >= r0; goto 177
		 22	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 23	[  0]	MOV  	  7		0	; slot7 = slot0
		 24	[  0]	TGETS	  5	0	11	; slot5 = slot0.gmatch
		 25	[  0]	KSTR 	  8		10	; slot8 = "%S+"
		 26	[  0]	CALL 	  5	4	3	; slot5, slot6, slot7 = <unknown table>.gmatch(slot6, slot7)
		 27	[  0]	JMP  	  8		3	; 	goto 31
		 28	[  0]	LEN  	  9		4	; slot9 = #slot4
		 29	[  0]	ADDVN	  9	9	0	; slot9 = slot9 + 1
		 30	[  0]	TSETV	  8	4	9	; slot4[slot9] = slot8
		 31	[  0]	ITERC	  8	2	3	; slot8, slot9, slot10 = <unknown table>.gmatch, slot6, slot7; slot8 = <unknown table>.gmatch(slot6, slot7)
		 32	[  0]	ITERL	  8		-5	; slot7 = slot8; if slot8 != nil goto 28
		 33	[  0]	FNEW 	  5		9	; N/A:0-0: 2 args, 2 upvalues, 8 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  2	[  0]	MOV  	  4		0	; slot4 = slot0
			  3	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown"(slot3)
			  4	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			  5	[  0]	MOV  	  5		1	; slot5 = slot1
			  6	[  0]	CALL 	  3	2	2	; slot3 = uv0"unknown"(slot4)
			  7	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
			  8	[  0]	ISGT 	  2		4	; if slot2 > uv1"unknown"
			  9	[  0]	JMP  	  4		8	; 	goto 18
			 10	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
			 11	[  0]	ISGT 	  3		4	; if uv0"unknown" > uv1"unknown"
			 12	[  0]	JMP  	  4		5	; 	goto 18
			 13	[  0]	GGET 	  4		1	; slot4 = _env["math"]
			 14	[  0]	TGETS	  4	4	0	; slot4 = math.max
			 15	[  0]	MOV  	  6		2	; slot6 = slot2
			 16	[  0]	MOV  	  7		3	; slot7 = uv0"unknown"
			 17	[  0]	CALLT	  4		3	; return math.max(slot5, slot6)
			 18	[  0]	RET0 	  0		1	; return
		 34	[  0]	KNIL 	  6		8	; slot6, slot7, slot8 = nil
		 35	[  0]	KSHORT	  9		1	; slot9 = 1
		 36	[  0]	LEN  	 10		4	; slot10 = #slot4
		 37	[  0]	SUBVN	 10	10	0	; slot10 = slot10 - 1
		 38	[  0]	KSHORT	 11		1	; slot11 = 1
		 39	[  0]	FORI 	  9		46	; for slot12 = slot9,slot10,slot11 else goto 86
		 40	[  0]	UGET 	 13		2	; slot13 = uv2"unknwon"
		 41	[  0]	GGET 	 15		8	; slot15 = _env["table"]
		 42	[  0]	TGETS	 15	15	7	; slot15 = table.concat
		 43	[  0]	MOV  	 17		4	; slot17 = slot4
		 44	[  0]	KSTR 	 18		6	; slot18 = " "
		 45	[  0]	KSHORT	 19		1	; slot19 = 1
		 46	[  0]	MOV  	 20		12	; slot20 = slot12
		 47	[  0]	CALL 	 15	0	5	; MULTRES = table.concat(slot16, slot17, slot18, slot19)
		 48	[  0]	CALLM	 13	2	0	; slot13 = uv2"unknown"(, ...MULTRES)
		 49	[  0]	UGET 	 14		2	; slot14 = uv2"unknwon"
		 50	[  0]	GGET 	 16		8	; slot16 = _env["table"]
		 51	[  0]	TGETS	 16	16	7	; slot16 = table.concat
		 52	[  0]	MOV  	 18		4	; slot18 = slot4
		 53	[  0]	KSTR 	 19		6	; slot19 = " "
		 54	[  0]	ADDVN	 20	12	0	; slot20 = slot12 + 1
		 55	[  0]	CALL 	 16	0	4	; MULTRES = table.concat(slot17, slot18, slot19)
		 56	[  0]	CALLM	 14	2	0	; slot14 = uv2"unknown"(, ...MULTRES)
		 57	[  0]	MOV  	 15		5	; slot15 = slot5
		 58	[  0]	MOV  	 17		13	; slot17 = uv2"unknown"
		 59	[  0]	MOV  	 18		14	; slot18 = uv2"unknown"
		 60	[  0]	CALL 	 15	2	3	; slot15 = slot15(table.concat, uv2"unknown")
		 61	[  0]	ISF  	   		15	; if not slot15
		 62	[  0]	JMP  	 16		22	; 	goto 85
		 63	[  0]	TGETV	 16	4	12	; slot16 = slot4[slot12]
		 64	[  0]	MOV  	 18		16	; slot18 = slot16
		 65	[  0]	TGETS	 16	16	5	; slot16 = slot16.sub
		 66	[  0]	KSHORT	 19		65535	; slot19 = 65535
		 67	[  0]	CALL 	 16	2	3	; slot16 = <unknown table>.sub(uv2"unknown", slot18)
		 68	[  0]	ISNES	 16		4	; if <unknown table>.sub ~= "/"
		 69	[  0]	JMP  	 16		6	; 	goto 76
		 70	[  0]	IST  	   		8	; if slot8
		 71	[  0]	JMP  	 16		4	; 	goto 76
		 72	[  0]	TNEW 	 16		3	; slot16 = new table( array: 3, dict: 1)
		 73	[  0]	TSETB	 13	16	1	; slot16[1] = uv2"unknown"
		 74	[  0]	TSETB	 14	16	2	; slot16[2] = uv2"unknown"
		 75	[  0]	MOV  	  8		16	; slot8 = slot16
		 76	[  0]	ISF  	   		7	; if not slot7
		 77	[  0]	JMP  	 16		2	; 	goto 80
		 78	[  0]	ISGE 	 15		7	; if slot15 >= slot7
		 79	[  0]	JMP  	 16		5	; 	goto 85
		 80	[  0]	TNEW 	 16		3	; slot16 = new table( array: 3, dict: 1)
		 81	[  0]	TSETB	 13	16	1	; slot16[1] = uv2"unknown"
		 82	[  0]	TSETB	 14	16	2	; slot16[2] = uv2"unknown"
		 83	[  0]	MOV  	  7		15	; slot7 = slot15
		 84	[  0]	MOV  	  6		16	; slot6 = slot16
		 85	[  0]	FORL 	  9		-46	; slot12 = slot12 + slot11; if cmp(slot12, sign slot11,  slot10) goto 40
		 86	[  0]	IST  	   		8	; if slot8
		 87	[  0]	JMP  	  9		2	; 	goto 90
		 88	[  0]	ISF  	   		6	; if not slot6
		 89	[  0]	JMP  	  9		5	; 	goto 95
		 90	[  0]	ISTC 	  9		8	; slot9 = slot8; if slot8
		 91	[  0]	JMP  	  9		1	; 	goto 93
		 92	[  0]	MOV  	  9		6	; slot9 = slot6
		 93	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 94
		 94	[  0]	RET1 	  9		2	; return slot9
		 95	[  0]	GGET 	  9		3	; slot9 = _env["ipairs"]
		 96	[  0]	MOV  	 11		4	; slot11 = slot4
		 97	[  0]	CALL 	  9	4	2	; slot9, slot10, slot11 = ipairs(slot10)
		 98	[  0]	JMP  	 12		74	; 	goto 173
		 99	[  0]	KSHORT	 14		1	; slot14 = 1
		100	[  0]	LOOP 	 15		72	; Loop start, exit goto 173
		101	[  0]	MOV  	 17		13	; slot17 = uv2"unknown"
		102	[  0]	TGETS	 15	13	2	; slot15 = uv2"unknown".find
		103	[  0]	UGET 	 18		3	; slot18 = uv3"unknwon"
		104	[  0]	MOV  	 19		14	; slot19 = slot14
		105	[  0]	KPRI 	 20		2	; slot20 = true
		106	[  0]	CALL 	 15	3	5	; slot15, slot16 = uv2"unknown".find(slot16, uv2"unknown", uv3"unknown", slot19)
		107	[  0]	IST  	   		15	; if uv2"unknown".find
		108	[  0]	JMP  	 17		1	; 	goto 110
		109	[  0]	JMP  	 15		63	; 	goto 173
		110	[  0]	GGET 	 17		8	; slot17 = _env["table"]
		111	[  0]	TGETS	 17	17	7	; slot17 = table.concat
		112	[  0]	MOV  	 19		4	; slot19 = slot4
		113	[  0]	KSTR 	 20		6	; slot20 = " "
		114	[  0]	KSHORT	 21		1	; slot21 = 1
		115	[  0]	SUBVN	 22	12	0	; slot22 = slot12 - 1
		116	[  0]	CALL 	 17	2	5	; slot17 = table.concat(uv3"unknown", slot19, slot20, slot21)
		117	[  0]	GGET 	 18		8	; slot18 = _env["table"]
		118	[  0]	TGETS	 18	18	7	; slot18 = table.concat
		119	[  0]	MOV  	 20		4	; slot20 = slot4
		120	[  0]	KSTR 	 21		6	; slot21 = " "
		121	[  0]	ADDVN	 22	12	0	; slot22 = slot12 + 1
		122	[  0]	CALL 	 18	2	4	; slot18 = table.concat(slot19, slot20, slot21)
		123	[  0]	UGET 	 19		2	; slot19 = uv2"unknwon"
		124	[  0]	ISEQS	 17		1	; if table.concat == ""
		125	[  0]	JMP  	 21		5	; 	goto 131
		126	[  0]	MOV  	 21		17	; slot21 = table.concat
		127	[  0]	KSTR 	 22		6	; slot22 = " "
		128	[  0]	CAT  	 21	21	22	; slot21 = table.concat .. slot22
		129	[  0]	IST  	   		21	; if slot21
		130	[  0]	JMP  	 22		1	; 	goto 132
		131	[  0]	KSTR 	 21		1	; slot21 = ""
		132	[  0]	MOV  	 24		13	; slot24 = uv2"unknown"
		133	[  0]	TGETS	 22	13	5	; slot22 = uv2"unknown".sub
		134	[  0]	KSHORT	 25		1	; slot25 = 1
		135	[  0]	SUBVN	 26	15	0	; slot26 = uv2"unknown".find - 1
		136	[  0]	CALL 	 22	2	4	; slot22 = uv2"unknown".sub(slot23, uv2"unknown", slot25)
		137	[  0]	CAT  	 21	21	22	; slot21 = slot21 .. uv2"unknown".sub
		138	[  0]	CALL 	 19	2	2	; slot19 = uv2"unknown"(slot20)
		139	[  0]	KSTR 	 20		0	; slot20 = "-"
		140	[  0]	CAT  	 19	19	20	; slot19 = uv2"unknown" .. slot20
		141	[  0]	UGET 	 20		2	; slot20 = uv2"unknwon"
		142	[  0]	MOV  	 24		13	; slot24 = uv2"unknown"
		143	[  0]	TGETS	 22	13	5	; slot22 = uv2"unknown".sub
		144	[  0]	ADDVN	 25	16	0	; slot25 = slot16 + 1
		145	[  0]	CALL 	 22	2	3	; slot22 = uv2"unknown".sub(slot23, uv2"unknown")
		146	[  0]	ISEQS	 18		1	; if table.concat == ""
		147	[  0]	JMP  	 23		5	; 	goto 153
		148	[  0]	KSTR 	 23		6	; slot23 = " "
		149	[  0]	MOV  	 24		18	; slot24 = table.concat
		150	[  0]	CAT  	 23	23	24	; slot23 = slot23 .. table.concat
		151	[  0]	IST  	   		23	; if slot23
		152	[  0]	JMP  	 24		1	; 	goto 154
		153	[  0]	KSTR 	 23		1	; slot23 = ""
		154	[  0]	CAT  	 22	22	23	; slot22 = uv2"unknown".sub .. slot23
		155	[  0]	CALL 	 20	2	2	; slot20 = uv2"unknown"(slot21)
		156	[  0]	MOV  	 21		5	; slot21 = slot5
		157	[  0]	MOV  	 23		19	; slot23 = slot19
		158	[  0]	MOV  	 24		20	; slot24 = uv2"unknown"
		159	[  0]	CALL 	 21	2	3	; slot21 = slot21(slot22, slot23)
		160	[  0]	ISF  	   		21	; if not slot21
		161	[  0]	JMP  	 22		9	; 	goto 171
		162	[  0]	ISF  	   		7	; if not slot7
		163	[  0]	JMP  	 22		2	; 	goto 166
		164	[  0]	ISGE 	 21		7	; if slot21 >= slot7
		165	[  0]	JMP  	 22		5	; 	goto 171
		166	[  0]	TNEW 	 22		3	; slot22 = new table( array: 3, dict: 1)
		167	[  0]	TSETB	 19	22	1	; slot22[1] = slot19
		168	[  0]	TSETB	 20	22	2	; slot22[2] = uv2"unknown"
		169	[  0]	MOV  	  7		21	; slot7 = slot21
		170	[  0]	MOV  	  6		22	; slot6 = slot22
		171	[  0]	ADDVN	 14	16	0	; slot14 = slot16 + 1
		172	[  0]	JMP  	 15		-73	; 	goto 100
		173	[  0]	ITERC	 12	3	3	; slot12, slot13, slot14 = ipairs, slot10, slot11; slot12, slot13 = ipairs(slot10, slot11)
		174	[  0]	ITERL	 12		-76	; slot11 = slot12; if slot12 != nil goto 99
		175	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 176
		176	[  0]	RET1 	  6		2	; return slot6
		177	[  0]	RET1 	  5		2	; return slot5
	330	[  0]	FNEW 	 26		46	; N/A:0-0: 6 args, 2 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	FNEW 	  6		0	; N/A:0-0: 1 args, 2 upvalues, 7 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  1		2	; slot1 = _env["math"]
			  2	[  0]	TGETS	  1	1	1	; slot1 = math.ceil
			  3	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			  4	[  0]	MOV  	  5		3	; slot5 = uv0"unknown"
			  5	[  0]	TGETS	  3	3	0	; slot3 = uv0"unknown".getWidth
			  6	[  0]	MOV  	  6		0	; slot6 = slot0
			  7	[  0]	CALL 	  3	2	3	; slot3 = uv0"unknown".getWidth(slot4, uv0"unknown")
			  8	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
			  9	[  0]	MULVV	  3	3	4	; slot3 = slot3 * uv1"unknown"
			 10	[  0]	CALLT	  1		2	; return math.ceil(slot2)
		  2	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		  3	[  0]	MOV  	  9		0	; slot9 = slot0
		  4	[  0]	CALL 	  7	2	2	; slot7 = uv0"unknown"(slot8)
		  5	[  0]	MOV  	  8		6	; slot8 = slot6
		  6	[  0]	MOV  	 10		7	; slot10 = uv0"unknown"
		  7	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
		  8	[  0]	ISGT 	  8		1	; if slot8 > slot1
		  9	[  0]	JMP  	  8		4	; 	goto 14
		 10	[  0]	TNEW 	  8		3	; slot8 = new table( array: 3, dict: 1)
		 11	[  0]	TSETB	  7	8	1	; slot8[1] = uv0"unknown"
		 12	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 13
		 13	[  0]	RET1 	  8		2	; return slot8
		 14	[  0]	KSHORT	  8		2	; slot8 = 2
		 15	[  0]	ISGT 	  8		4	; if slot8 > slot4
		 16	[  0]	JMP  	  8		7	; 	goto 24
		 17	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 18	[  0]	MOV  	 10		0	; slot10 = slot0
		 19	[  0]	MOV  	 11		1	; slot11 = slot1
		 20	[  0]	MOV  	 12		6	; slot12 = slot6
		 21	[  0]	MOV  	 13		5	; slot13 = slot5
		 22	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 23
		 23	[  0]	CALLT	  8		5	; return uv1"unknown"(slot9, slot10, slot11, slot12)
		 24	[  0]	KPRI 	  8		0	; slot8 = nil
		 25	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 26
		 26	[  0]	RET1 	  8		2	; return slot8
	331	[  0]	FNEW 	 27		44	; N/A:0-0: 4 args, 4 upvalues, 31 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			[scale] = 1,
			[scroll] = true,
			]
		
		
		ktable#5 = [
			[small] = true,
			]
		
		
		ktable#9 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		3	; if slot3
		  2	[  0]	JMP  	  4		1	; 	goto 4
		  3	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		  4	[  0]	GGET 	  4		30	; slot4 = _env["tostring"]
		  5	[  0]	ISTC 	  6		0	; slot6 = slot0; if slot0
		  6	[  0]	JMP  	  6		1	; 	goto 8
		  7	[  0]	KSTR 	  6		29	; slot6 = ""
		  8	[  0]	CALL 	  4	2	2	; slot4 = tostring(slot5)
		  9	[  0]	MOV  	  0		4	; slot0 = tostring
		 10	[  0]	GGET 	  4		28	; slot4 = _env["math"]
		 11	[  0]	TGETS	  4	4	27	; slot4 = math.max
		 12	[  0]	KSHORT	  6		1	; slot6 = 1
		 13	[  0]	GGET 	  7		28	; slot7 = _env["math"]
		 14	[  0]	TGETS	  7	7	26	; slot7 = math.floor
		 15	[  0]	GGET 	  9		25	; slot9 = _env["tonumber"]
		 16	[  0]	MOV  	 11		1	; slot11 = slot1
		 17	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
		 18	[  0]	IST  	   		9	; if tonumber
		 19	[  0]	JMP  	 10		1	; 	goto 21
		 20	[  0]	KSHORT	  9		1	; slot9 = 1
		 21	[  0]	CALL 	  7	0	2	; MULTRES = math.floor(slot8)
		 22	[  0]	CALLM	  4	2	1	; slot4 = math.max(slot5, ...MULTRES)
		 23	[  0]	MOV  	  1		4	; slot1 = math.max
		 24	[  0]	TGETS	  4	3	24	; slot4 = slot3.maxLines
		 25	[  0]	IST  	   		4	; if <unknown table>.maxLines
		 26	[  0]	JMP  	  5		1	; 	goto 28
		 27	[  0]	KSHORT	  4		1	; slot4 = 1
		 28	[  0]	TGETS	  5	3	23	; slot5 = slot3.lang
		 29	[  0]	IST  	   		5	; if <unknown table>.lang
		 30	[  0]	JMP  	  6		5	; 	goto 36
		 31	[  0]	GGET 	  5		22	; slot5 = _env["_G"]
		 32	[  0]	TGETS	  5	5	21	; slot5 = _G.currentGameLang
		 33	[  0]	IST  	   		5	; if _G.currentGameLang
		 34	[  0]	JMP  	  6		1	; 	goto 36
		 35	[  0]	KSTR 	  5		20	; slot5 = "ko"
		 36	[  0]	GGET 	  6		25	; slot6 = _env["tonumber"]
		 37	[  0]	TGETS	  8	3	19	; slot8 = slot3.scale
		 38	[  0]	CALL 	  6	2	2	; slot6 = tonumber(math.floor)
		 39	[  0]	IST  	   		6	; if tonumber
		 40	[  0]	JMP  	  7		1	; 	goto 42
		 41	[  0]	KSHORT	  6		1	; slot6 = 1
		 42	[  0]	TGETS	  7	3	18	; slot7 = slot3.steps
		 43	[  0]	GGET 	  8		25	; slot8 = _env["tonumber"]
		 44	[  0]	TGETS	 10	3	17	; slot10 = slot3.maxH
		 45	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 46	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 47	[  0]	TGETV	  9	9	2	; slot9 = uv0"unknown"[slot2]
		 48	[  0]	IST  	   		9	; if slot9
		 49	[  0]	JMP  	 10		3	; 	goto 53
		 50	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
		 51	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 52	[  0]	TSETV	  9	10	2	; uv0"unknown"[slot2] = slot9
		 53	[  0]	MOV  	 10		0	; slot10 = tostring
		 54	[  0]	KSTR 	 11		16	; slot11 = " "
		 55	[  0]	MOV  	 12		1	; slot12 = math.max
		 56	[  0]	KSTR 	 13		16	; slot13 = " "
		 57	[  0]	MOV  	 14		4	; slot14 = slot4
		 58	[  0]	KSTR 	 15		16	; slot15 = " "
		 59	[  0]	MOV  	 16		5	; slot16 = slot5
		 60	[  0]	KSTR 	 17		16	; slot17 = " "
		 61	[  0]	MOV  	 18		6	; slot18 = slot6
		 62	[  0]	KSTR 	 19		16	; slot19 = " "
		 63	[  0]	ISF  	   		7	; if not <unknown table>.steps
		 64	[  0]	JMP  	 20		7	; 	goto 72
		 65	[  0]	GGET 	 20		15	; slot20 = _env["table"]
		 66	[  0]	TGETS	 20	20	14	; slot20 = table.concat
		 67	[  0]	MOV  	 22		7	; slot22 = <unknown table>.steps
		 68	[  0]	KSTR 	 23		13	; slot23 = ","
		 69	[  0]	CALL 	 20	2	3	; slot20 = table.concat(slot21, <unknown table>.steps)
		 70	[  0]	IST  	   		20	; if table.concat
		 71	[  0]	JMP  	 21		1	; 	goto 73
		 72	[  0]	KSTR 	 20		29	; slot20 = ""
		 73	[  0]	KSTR 	 21		16	; slot21 = " "
		 74	[  0]	GGET 	 22		30	; slot22 = _env["tostring"]
		 75	[  0]	MOV  	 24		8	; slot24 = tonumber
		 76	[  0]	CALL 	 22	2	2	; slot22 = tostring(slot23)
		 77	[  0]	CAT  	 10	10	22	; slot10 = tostring .. slot11 .. math.max .. slot13 .. slot14 .. slot15 .. slot16 .. slot17 .. slot18 .. slot19 .. slot20 .. slot21 .. tostring
		 78	[  0]	TGETV	 11	9	10	; slot11 = slot9[slot10]
		 79	[  0]	ISF  	   		11	; if not slot11
		 80	[  0]	JMP  	 12		1	; 	goto 82
		 81	[  0]	UCLO 	  0		135	; nil uvs >= r0; goto 217
		 82	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		 83	[  0]	TSETB	  6	12	1	; slot12[1] = slot6
		 84	[  0]	GGET 	 13		12	; slot13 = _env["ipairs"]
		 85	[  0]	ISTC 	 15		7	; slot15 = <unknown table>.steps; if <unknown table>.steps
		 86	[  0]	JMP  	 15		1	; 	goto 88
		 87	[  0]	TNEW 	 15		0	; slot15 = new table( array: 0, dict: 1)
		 88	[  0]	CALL 	 13	4	2	; slot13, slot14, slot15 = ipairs(slot14)
		 89	[  0]	JMP  	 16		3	; 	goto 93
		 90	[  0]	LEN  	 18		12	; slot18 = #slot12
		 91	[  0]	ADDVN	 18	18	0	; slot18 = slot18 + 1
		 92	[  0]	TSETV	 17	12	18	; slot12[slot18] = slot17
		 93	[  0]	ITERC	 16	3	3	; slot16, slot17, slot18 = ipairs, slot14, slot15; slot16, slot17 = ipairs(slot14, slot15)
		 94	[  0]	ITERL	 16		-5	; slot15 = slot16; if slot16 != nil goto 90
		 95	[  0]	FNEW 	 13		11	; N/A:0-0: 3 args, 1 upvalues, 8 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			  2	[  0]	IST  	   		3	; if uv0"unknown"
			  3	[  0]	JMP  	  3		2	; 	goto 6
			  4	[  0]	KPRI 	  3		2	; slot3 = true
			  5	[  0]	RET1 	  3		2	; return slot3
			  6	[  0]	GGET 	  3		2	; slot3 = _env["math"]
			  7	[  0]	TGETS	  3	3	1	; slot3 = math.ceil
			  8	[  0]	MOV  	  7		0	; slot7 = slot0
			  9	[  0]	TGETS	  5	0	0	; slot5 = slot0.getHeight
			 10	[  0]	CALL 	  5	2	2	; slot5 = <unknown table>.getHeight(slot6)
			 11	[  0]	MULVV	  5	5	1	; slot5 = <unknown table>.getHeight * slot1
			 12	[  0]	CALL 	  3	2	2	; slot3 = math.ceil(slot4)
			 13	[  0]	MULVV	  4	3	2	; slot4 = math.ceil * slot2
			 14	[  0]	SUBVN	  5	2	0	; slot5 = slot2 - 1
			 15	[  0]	MULVN	  5	5	1	; slot5 = slot5 * 2
			 16	[  0]	ADDVV	  4	4	5	; slot4 = slot4 + slot5
			 17	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
			 18	[  0]	ISLE 	  4		5	; if slot4 <= uv0"unknown"
			 19	[  0]	JMP  	  4		2	; 	goto 22
			 20	[  0]	KPRI 	  4		1	; slot4 = false
			 21	[  0]	JMP  	  5		1	; 	goto 23
			 22	[  0]	KPRI 	  4		2	; slot4 = true
			 23	[  0]	RET1 	  4		2	; return slot4
		 96	[  0]	KSHORT	 14		1	; slot14 = 1
		 97	[  0]	GGET 	 15		28	; slot15 = _env["math"]
		 98	[  0]	TGETS	 15	15	10	; slot15 = math.min
		 99	[  0]	KSHORT	 17		2	; slot17 = 2
		100	[  0]	MOV  	 18		4	; slot18 = slot4
		101	[  0]	CALL 	 15	2	3	; slot15 = math.min(slot16, slot17)
		102	[  0]	KSHORT	 16		1	; slot16 = 1
		103	[  0]	FORI 	 14		40	; for slot17 = slot14,slot15,slot16 else goto 144
		104	[  0]	GGET 	 18		12	; slot18 = _env["ipairs"]
		105	[  0]	MOV  	 20		12	; slot20 = slot12
		106	[  0]	CALL 	 18	4	2	; slot18, slot19, slot20 = ipairs(slot19)
		107	[  0]	JMP  	 21		30	; 	goto 138
		108	[  0]	MOV  	 23		13	; slot23 = slot13
		109	[  0]	MOV  	 25		2	; slot25 = slot2
		110	[  0]	MOV  	 26		22	; slot26 = slot22
		111	[  0]	MOV  	 27		17	; slot27 = slot17
		112	[  0]	CALL 	 23	2	4	; slot23 = slot23(slot24, slot25, slot26)
		113	[  0]	ISF  	   		23	; if not slot23
		114	[  0]	JMP  	 24		23	; 	goto 138
		115	[  0]	UGET 	 23		1	; slot23 = uv1"unknwon"
		116	[  0]	MOV  	 25		0	; slot25 = tostring
		117	[  0]	MOV  	 26		1	; slot26 = math.max
		118	[  0]	MOV  	 27		2	; slot27 = slot2
		119	[  0]	MOV  	 28		22	; slot28 = slot22
		120	[  0]	MOV  	 29		17	; slot29 = slot17
		121	[  0]	MOV  	 30		5	; slot30 = slot5
		122	[  0]	CALL 	 23	2	7	; slot23 = uv1"unknown"(slot24, tostring, math.max, slot27, slot28, slot29)
		123	[  0]	ISF  	   		23	; if not uv1"unknown"
		124	[  0]	JMP  	 24		13	; 	goto 138
		125	[  0]	MOV  	 24		13	; slot24 = slot13
		126	[  0]	MOV  	 26		2	; slot26 = slot2
		127	[  0]	MOV  	 27		22	; slot27 = slot22
		128	[  0]	LEN  	 28		23	; slot28 = #uv1"unknown"
		129	[  0]	CALL 	 24	2	4	; slot24 = slot24(tostring, slot26, slot27)
		130	[  0]	ISF  	   		24	; if not slot24
		131	[  0]	JMP  	 25		6	; 	goto 138
		132	[  0]	TDUP 	 24		9	; slot24 = copy table#k9
		133	[  0]	TSETS	  2	24	8	; slot24.font = slot2
		134	[  0]	TSETS	 22	24	19	; slot24.scale = slot22
		135	[  0]	TSETS	 23	24	7	; slot24.lines = uv1"unknown"
		136	[  0]	MOV  	 11		24	; slot11 = slot24
		137	[  0]	JMP  	 18		2	; 	goto 140
		138	[  0]	ITERC	 21	3	3	; slot21, slot22, slot23 = ipairs, slot19, slot20; slot21, slot22 = ipairs(slot19, slot20)
		139	[  0]	ITERL	 21		-32	; slot20 = slot21; if slot21 != nil goto 108
		140	[  0]	ISF  	   		11	; if not slot11
		141	[  0]	JMP  	 18		1	; 	goto 143
		142	[  0]	JMP  	 14		1	; 	goto 144
		143	[  0]	FORL 	 14		-40	; slot17 = slot17 + slot16; if cmp(slot17, sign slot16,  slot15) goto 104
		144	[  0]	IST  	   		11	; if slot11
		145	[  0]	JMP  	 14		28	; 	goto 174
		146	[  0]	UGET 	 14		2	; slot14 = uv2"unknwon"
		147	[  0]	TGETS	 14	14	6	; slot14 = uv2"unknown".smallFont
		148	[  0]	MOV  	 16		5	; slot16 = slot5
		149	[  0]	MOV  	 17		2	; slot17 = slot2
		150	[  0]	CALL 	 14	3	3	; slot14, slot15 = uv2"unknown".smallFont(slot15, slot16)
		151	[  0]	ISFC 	 16		14	; slot16 = uv2"unknown".smallFont; if not uv2"unknown".smallFont
		152	[  0]	JMP  	 16		14	; 	goto 167
		153	[  0]	ISEQV	 14		2	; if uv2"unknown".smallFont == slot2
		154	[  0]	JMP  	 16		9	; 	goto 164
		155	[  0]	UGET 	 16		1	; slot16 = uv1"unknwon"
		156	[  0]	MOV  	 18		0	; slot18 = tostring
		157	[  0]	MOV  	 19		1	; slot19 = math.max
		158	[  0]	MOV  	 20		14	; slot20 = uv2"unknown".smallFont
		159	[  0]	MOV  	 21		15	; slot21 = slot15
		160	[  0]	MOV  	 22		4	; slot22 = slot4
		161	[  0]	MOV  	 23		5	; slot23 = slot5
		162	[  0]	CALL 	 16	2	7	; slot16 = uv1"unknown"(slot17, tostring, math.max, uv2"unknown".smallFont, slot21, slot22)
		163	[  0]	JMP  	 17		3	; 	goto 167
		164	[  0]	KPRI 	 16		1	; slot16 = false
		165	[  0]	JMP  	 17		1	; 	goto 167
		166	[  0]	KPRI 	 16		2	; slot16 = true
		167	[  0]	ISF  	   		16	; if not slot16
		168	[  0]	JMP  	 17		5	; 	goto 174
		169	[  0]	TDUP 	 17		5	; slot17 = copy table#k5
		170	[  0]	TSETS	 14	17	8	; slot17.font = uv2"unknown".smallFont
		171	[  0]	TSETS	 15	17	19	; slot17.scale = slot15
		172	[  0]	TSETS	 16	17	7	; slot17.lines = slot16
		173	[  0]	MOV  	 11		17	; slot11 = slot17
		174	[  0]	IST  	   		11	; if slot11
		175	[  0]	JMP  	 14		9	; 	goto 185
		176	[  0]	TDUP 	 14		4	; slot14 = copy table#k4
		177	[  0]	TSETS	  2	14	8	; slot14.font = slot2
		178	[  0]	TNEW 	 15		3	; slot15 = new table( array: 3, dict: 1)
		179	[  0]	UGET 	 16		3	; slot16 = uv3"unknwon"
		180	[  0]	MOV  	 18		0	; slot18 = tostring
		181	[  0]	CALL 	 16	0	2	; MULTRES = uv3"unknown"(slot17)
		182	[  0]	TSETM	 16		1	; for i = 0, MULTRES, 1 do slot15[1 + i] = slot(16 + i)
		183	[  0]	TSETS	 15	14	7	; slot14.lines = slot15
		184	[  0]	MOV  	 11		14	; slot11 = slot14
		185	[  0]	KSHORT	 14		0	; slot14 = 0
		186	[  0]	GGET 	 15		12	; slot15 = _env["ipairs"]
		187	[  0]	TGETS	 17	11	7	; slot17 = slot11.lines
		188	[  0]	CALL 	 15	4	2	; slot15, slot16, slot17 = ipairs(uv3"unknown")
		189	[  0]	JMP  	 18		15	; 	goto 205
		190	[  0]	GGET 	 20		28	; slot20 = _env["math"]
		191	[  0]	TGETS	 20	20	27	; slot20 = math.max
		192	[  0]	MOV  	 22		14	; slot22 = slot14
		193	[  0]	GGET 	 23		28	; slot23 = _env["math"]
		194	[  0]	TGETS	 23	23	3	; slot23 = math.ceil
		195	[  0]	TGETS	 25	11	8	; slot25 = slot11.font
		196	[  0]	MOV  	 27		25	; slot27 = <unknown table>.font
		197	[  0]	TGETS	 25	25	2	; slot25 = <unknown table>.font.getWidth
		198	[  0]	MOV  	 28		19	; slot28 = math.max
		199	[  0]	CALL 	 25	2	3	; slot25 = <unknown table>.font.getWidth(slot26, <unknown table>.font)
		200	[  0]	TGETS	 26	11	19	; slot26 = slot11.scale
		201	[  0]	MULVV	 25	25	26	; slot25 = <unknown table>.font.getWidth * <unknown table>.scale
		202	[  0]	CALL 	 23	0	2	; MULTRES = math.ceil(slot24)
		203	[  0]	CALLM	 20	2	1	; slot20 = math.max(slot21, ...MULTRES)
		204	[  0]	MOV  	 14		20	; slot14 = math.max
		205	[  0]	ITERC	 18	3	3	; slot18, slot19, slot20 = ipairs, uv3"unknown", <unknown table>.lines; slot18, slot19 = ipairs(uv3"unknown", <unknown table>.lines)
		206	[  0]	ITERL	 18		-17	; <unknown table>.lines = tostring; if tostring != nil goto 190
		207	[  0]	GGET 	 15		28	; slot15 = _env["math"]
		208	[  0]	TGETS	 15	15	10	; slot15 = math.min
		209	[  0]	MOV  	 17		14	; slot17 = math.max
		210	[  0]	MOV  	 18		1	; slot18 = math.max
		211	[  0]	CALL 	 15	2	3	; slot15 = math.min(uv3"unknown", math.max)
		212	[  0]	TSETS	 15	11	1	; slot11.width = math.min
		213	[  0]	TSETS	  1	11	0	; slot11.maxW = math.max
		214	[  0]	TSETV	 11	9	10	; slot9[slot10] = slot11
		215	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 216
		216	[  0]	RET1 	 11		2	; return slot11
		217	[  0]	RET1 	 11		2	; return slot11
	332	[  0]	TSETS	 27	19	45	; slot19.fit = slot27
	333	[  0]	FNEW 	 27		43	; N/A:0-0: 6 args, 1 upvalues, 29 slots
		
		;;;; constant tables ;;;;
		ktable#7 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		5	; if slot5
		  2	[  0]	JMP  	  6		1	; 	goto 4
		  3	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		  4	[  0]	GGET 	  6		26	; slot6 = _env["love"]
		  5	[  0]	TGETS	  6	6	25	; slot6 = love.graphics
		  6	[  0]	TGETS	  7	6	24	; slot7 = love.graphics.getFont
		  7	[  0]	CALL 	  7	2	1	; slot7 = love.graphics.getFont()
		  8	[  0]	TGETS	  8	0	23	; slot8 = slot0.font
		  9	[  0]	TGETS	  9	0	22	; slot9 = slot0.scale
		 10	[  0]	IST  	   		9	; if <unknown table>.scale
		 11	[  0]	JMP  	 10		1	; 	goto 13
		 12	[  0]	KSHORT	  9		1	; slot9 = 1
		 13	[  0]	TGETS	 10	6	21	; slot10 = love.graphics.setFont
		 14	[  0]	MOV  	 12		8	; slot12 = <unknown table>.font
		 15	[  0]	CALL 	 10	1	2	;  = love.graphics.setFont(slot11)
		 16	[  0]	GGET 	 10		20	; slot10 = _env["math"]
		 17	[  0]	TGETS	 10	10	19	; slot10 = math.ceil
		 18	[  0]	MOV  	 14		8	; slot14 = <unknown table>.font
		 19	[  0]	TGETS	 12	8	18	; slot12 = <unknown table>.font.getHeight
		 20	[  0]	CALL 	 12	2	2	; slot12 = <unknown table>.font.getHeight(slot13)
		 21	[  0]	MULVV	 12	12	9	; slot12 = <unknown table>.font.getHeight * slot9
		 22	[  0]	CALL 	 10	2	2	; slot10 = math.ceil(slot11)
		 23	[  0]	TGETS	 11	5	17	; slot11 = slot5.lineGap
		 24	[  0]	IST  	   		11	; if <unknown table>.lineGap
		 25	[  0]	JMP  	 12		1	; 	goto 27
		 26	[  0]	KSHORT	 11		2	; slot11 = 2
		 27	[  0]	ADDVV	 11	10	11	; slot11 = math.ceil + slot11
		 28	[  0]	TGETS	 12	0	16	; slot12 = slot0.lines
		 29	[  0]	LEN  	 12		12	; slot12 = #<unknown table>.lines
		 30	[  0]	SUBVN	 12	12	0	; slot12 = slot12 - 1
		 31	[  0]	MULVV	 12	12	11	; slot12 = slot12 * slot11
		 32	[  0]	ADDVV	 12	10	12	; slot12 = math.ceil + slot12
		 33	[  0]	GGET 	 13		20	; slot13 = _env["math"]
		 34	[  0]	TGETS	 13	13	15	; slot13 = math.floor
		 35	[  0]	SUBVV	 15	4	12	; slot15 = slot4 - slot12
		 36	[  0]	MULVN	 15	15	1	; slot15 = slot15 * 0.5
		 37	[  0]	ADDVN	 15	15	1	; slot15 = slot15 + 0.5
		 38	[  0]	CALL 	 13	2	2	; slot13 = math.floor(<unknown table>.font)
		 39	[  0]	ADDVV	 13	2	13	; slot13 = slot2 + math.floor
		 40	[  0]	TGETS	 14	5	14	; slot14 = slot5.dy
		 41	[  0]	IST  	   		14	; if <unknown table>.dy
		 42	[  0]	JMP  	 15		1	; 	goto 44
		 43	[  0]	KSHORT	 14		0	; slot14 = 0
		 44	[  0]	ADDVV	 13	13	14	; slot13 = slot13 + slot14
		 45	[  0]	TGETS	 14	0	13	; slot14 = slot0.small
		 46	[  0]	ISF  	   		14	; if not <unknown table>.small
		 47	[  0]	JMP  	 15		1	; 	goto 49
		 48	[  0]	ADDVN	 13	13	0	; slot13 = slot13 + 1
		 49	[  0]	TGETS	 14	0	12	; slot14 = slot0.scroll
		 50	[  0]	ISF  	   		14	; if not <unknown table>.scroll
		 51	[  0]	JMP  	 15		29	; 	goto 81
		 52	[  0]	TGETS	 14	5	11	; slot14 = slot5.scrollInset
		 53	[  0]	IST  	   		14	; if <unknown table>.scrollInset
		 54	[  0]	JMP  	 15		1	; 	goto 56
		 55	[  0]	KSHORT	 14		0	; slot14 = 0
		 56	[  0]	UGET 	 15		0	; slot15 = uv0"unknwon"
		 57	[  0]	TGETS	 15	15	9	; slot15 = uv0"unknown".drawHorizontal
		 58	[  0]	TGETS	 17	0	10	; slot17 = slot0.scrollState
		 59	[  0]	TGETS	 18	5	8	; slot18 = slot5.key
		 60	[  0]	IST  	   		18	; if <unknown table>.key
		 61	[  0]	JMP  	 19		2	; 	goto 64
		 62	[  0]	TGETS	 18	0	16	; slot18 = slot0.lines
		 63	[  0]	TGETB	 18	18	1	; slot18 = <unknown table>.lines[1]
		 64	[  0]	TGETS	 19	0	16	; slot19 = slot0.lines
		 65	[  0]	TGETB	 19	19	1	; slot19 = <unknown table>.lines[1]
		 66	[  0]	ADDVV	 20	1	14	; slot20 = slot1 + slot14
		 67	[  0]	MOV  	 21		13	; slot21 = slot13
		 68	[  0]	MULVN	 22	14	2	; slot22 = slot14 * 2
		 69	[  0]	SUBVV	 22	3	22	; slot22 = slot3 - slot22
		 70	[  0]	MULVN	 23	10	2	; slot23 = math.ceil * 2
		 71	[  0]	TDUP 	 24		7	; slot24 = copy table#k7
		 72	[  0]	TSETS	  8	24	23	; slot24.font = <unknown table>.font
		 73	[  0]	GGET 	 25		20	; slot25 = _env["math"]
		 74	[  0]	TGETS	 25	25	19	; slot25 = math.ceil
		 75	[  0]	MULVN	 27	10	3	; slot27 = math.ceil * 0.75
		 76	[  0]	CALL 	 25	2	2	; slot25 = math.ceil(slot26)
		 77	[  0]	TSETS	 25	24	6	; slot24.inkTop = math.ceil
		 78	[  0]	CALL 	 15	2	9	; slot15 = uv0"unknown".drawHorizontal(slot16, <unknown table>.scrollState, slot18, slot19, slot20, slot21, slot22, slot23)
		 79	[  0]	TSETS	 15	0	10	; slot0.scrollState = uv0"unknown".drawHorizontal
		 80	[  0]	JMP  	 14		41	; 	goto 122
		 81	[  0]	GGET 	 14		5	; slot14 = _env["ipairs"]
		 82	[  0]	TGETS	 16	0	16	; slot16 = slot0.lines
		 83	[  0]	CALL 	 14	4	2	; slot14, slot15, slot16 = ipairs(uv0"unknown".drawHorizontal)
		 84	[  0]	JMP  	 17		35	; 	goto 120
		 85	[  0]	GGET 	 19		20	; slot19 = _env["math"]
		 86	[  0]	TGETS	 19	19	19	; slot19 = math.ceil
		 87	[  0]	MOV  	 23		8	; slot23 = <unknown table>.font
		 88	[  0]	TGETS	 21	8	4	; slot21 = <unknown table>.font.getWidth
		 89	[  0]	MOV  	 24		18	; slot24 = slot18
		 90	[  0]	CALL 	 21	2	3	; slot21 = <unknown table>.font.getWidth(slot22, <unknown table>.font)
		 91	[  0]	MULVV	 21	21	9	; slot21 = <unknown table>.font.getWidth * slot9
		 92	[  0]	CALL 	 19	2	2	; slot19 = math.ceil(slot20)
		 93	[  0]	MOV  	 20		1	; slot20 = slot1
		 94	[  0]	TGETS	 21	5	3	; slot21 = slot5.align
		 95	[  0]	ISNES	 21		2	; if <unknown table>.align ~= "center"
		 96	[  0]	JMP  	 21		8	; 	goto 105
		 97	[  0]	GGET 	 21		20	; slot21 = _env["math"]
		 98	[  0]	TGETS	 21	21	15	; slot21 = math.floor
		 99	[  0]	SUBVV	 23	3	19	; slot23 = slot3 - math.ceil
		100	[  0]	MULVN	 23	23	1	; slot23 = slot23 * 0.5
		101	[  0]	ADDVN	 23	23	1	; slot23 = slot23 + 0.5
		102	[  0]	CALL 	 21	2	2	; slot21 = math.floor(slot22)
		103	[  0]	ADDVV	 20	1	21	; slot20 = slot1 + math.floor
		104	[  0]	JMP  	 21		5	; 	goto 110
		105	[  0]	TGETS	 21	5	3	; slot21 = slot5.align
		106	[  0]	ISNES	 21		1	; if <unknown table>.align ~= "right"
		107	[  0]	JMP  	 21		2	; 	goto 110
		108	[  0]	ADDVV	 21	1	3	; slot21 = slot1 + slot3
		109	[  0]	SUBVV	 20	21	19	; slot20 = slot21 - math.ceil
		110	[  0]	TGETS	 21	6	0	; slot21 = love.graphics.print
		111	[  0]	MOV  	 23		18	; slot23 = slot18
		112	[  0]	MOV  	 24		20	; slot24 = slot20
		113	[  0]	SUBVN	 25	17	0	; slot25 = <unknown table>.scrollState - 1
		114	[  0]	MULVV	 25	25	11	; slot25 = slot25 * slot11
		115	[  0]	ADDVV	 25	13	25	; slot25 = slot13 + slot25
		116	[  0]	KSHORT	 26		0	; slot26 = 0
		117	[  0]	MOV  	 27		9	; slot27 = slot9
		118	[  0]	MOV  	 28		9	; slot28 = slot9
		119	[  0]	CALL 	 21	1	7	;  = love.graphics.print(slot22, slot23, slot24, slot25, slot26, slot27)
		120	[  0]	ITERC	 17	3	3	; slot17, slot18, slot19 = ipairs, uv0"unknown".drawHorizontal, <unknown table>.lines; slot17, slot18 = ipairs(uv0"unknown".drawHorizontal, <unknown table>.lines)
		121	[  0]	ITERL	 17		-37	; <unknown table>.lines = <unknown table>.scrollState; if <unknown table>.scrollState != nil goto 85
		122	[  0]	ISF  	   		7	; if not love.graphics.getFont
		123	[  0]	JMP  	 14		3	; 	goto 127
		124	[  0]	TGETS	 14	6	21	; slot14 = love.graphics.setFont
		125	[  0]	MOV  	 16		7	; slot16 = love.graphics.getFont
		126	[  0]	CALL 	 14	1	2	;  = love.graphics.setFont(uv0"unknown".drawHorizontal)
		127	[  0]	RET0 	  0		1	; return
	334	[  0]	TSETS	 27	19	212	; slot19.draw = slot27
	335	[  0]	FNEW 	 27		41	; N/A:0-0: 5 args, 4 upvalues, 23 slots
		
		;;;; constant tables ;;;;
		ktable#1 = [
			[scale] = 1,
			[scroll] = true,
			]
		
		
		ktable#3 = [
			[small] = true,
			]
		
		
		ktable#8 = [
			[scale] = 1,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		4	; if slot4
		  2	[  0]	JMP  	  5		1	; 	goto 4
		  3	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		  4	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		  5	[  0]	GGET 	  7		23	; slot7 = _env["tostring"]
		  6	[  0]	ISTC 	  9		0	; slot9 = slot0; if slot0
		  7	[  0]	JMP  	  9		1	; 	goto 9
		  8	[  0]	KSTR 	  9		22	; slot9 = ""
		  9	[  0]	CALL 	  7	0	2	; MULTRES = tostring(slot8)
		 10	[  0]	CALLM	  5	2	0	; slot5 = uv0"unknown"(, ...MULTRES)
		 11	[  0]	MOV  	  0		5	; slot0 = uv0"unknown"
		 12	[  0]	GGET 	  5		21	; slot5 = _env["math"]
		 13	[  0]	TGETS	  5	5	20	; slot5 = math.max
		 14	[  0]	KSHORT	  7		1	; slot7 = 1
		 15	[  0]	GGET 	  8		21	; slot8 = _env["math"]
		 16	[  0]	TGETS	  8	8	19	; slot8 = math.floor
		 17	[  0]	MOV  	 10		1	; slot10 = slot1
		 18	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 19	[  0]	CALLM	  5	2	1	; slot5 = math.max(slot6, ...MULTRES)
		 20	[  0]	GGET 	  6		21	; slot6 = _env["math"]
		 21	[  0]	TGETS	  6	6	20	; slot6 = math.max
		 22	[  0]	KSHORT	  8		1	; slot8 = 1
		 23	[  0]	GGET 	  9		21	; slot9 = _env["math"]
		 24	[  0]	TGETS	  9	9	19	; slot9 = math.floor
		 25	[  0]	MOV  	 11		2	; slot11 = slot2
		 26	[  0]	CALL 	  9	0	2	; MULTRES = math.floor(slot10)
		 27	[  0]	CALLM	  6	2	1	; slot6 = math.max(slot7, ...MULTRES)
		 28	[  0]	MOV  	  2		6	; slot2 = math.max
		 29	[  0]	MOV  	  1		5	; slot1 = math.max
		 30	[  0]	TGETS	  5	4	18	; slot5 = slot4.lang
		 31	[  0]	IST  	   		5	; if <unknown table>.lang
		 32	[  0]	JMP  	  6		5	; 	goto 38
		 33	[  0]	GGET 	  5		17	; slot5 = _env["_G"]
		 34	[  0]	TGETS	  5	5	16	; slot5 = _G.currentGameLang
		 35	[  0]	IST  	   		5	; if _G.currentGameLang
		 36	[  0]	JMP  	  6		1	; 	goto 38
		 37	[  0]	KSTR 	  5		15	; slot5 = "ko"
		 38	[  0]	MOV  	  8		3	; slot8 = slot3
		 39	[  0]	TGETS	  6	3	14	; slot6 = slot3.getHeight
		 40	[  0]	CALL 	  6	2	2	; slot6 = <unknown table>.getHeight(slot7)
		 41	[  0]	TGETS	  7	4	13	; slot7 = slot4.lineH
		 42	[  0]	IST  	   		7	; if <unknown table>.lineH
		 43	[  0]	JMP  	  8		1	; 	goto 45
		 44	[  0]	ADDVN	  7	6	0	; slot7 = <unknown table>.getHeight + 2
		 45	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 46	[  0]	TGETV	  8	8	3	; slot8 = uv1"unknown"[slot3]
		 47	[  0]	IST  	   		8	; if slot8
		 48	[  0]	JMP  	  9		3	; 	goto 52
		 49	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
		 50	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 51	[  0]	TSETV	  8	9	3	; uv1"unknown"[slot3] = slot8
		 52	[  0]	KSTR 	  9		12	; slot9 = "block "
		 53	[  0]	MOV  	 10		0	; slot10 = uv0"unknown"
		 54	[  0]	KSTR 	 11		11	; slot11 = " "
		 55	[  0]	MOV  	 12		1	; slot12 = math.max
		 56	[  0]	KSTR 	 13		11	; slot13 = " "
		 57	[  0]	MOV  	 14		2	; slot14 = math.max
		 58	[  0]	KSTR 	 15		11	; slot15 = " "
		 59	[  0]	MOV  	 16		7	; slot16 = slot7
		 60	[  0]	KSTR 	 17		11	; slot17 = " "
		 61	[  0]	MOV  	 18		5	; slot18 = slot5
		 62	[  0]	KSTR 	 19		11	; slot19 = " "
		 63	[  0]	GGET 	 20		23	; slot20 = _env["tostring"]
		 64	[  0]	TGETS	 22	4	10	; slot22 = slot4.wrap
		 65	[  0]	CALL 	 20	2	2	; slot20 = tostring(slot21)
		 66	[  0]	CAT  	  9	9	20	; slot9 = slot9 .. uv0"unknown" .. slot11 .. math.max .. slot13 .. math.max .. slot15 .. slot16 .. slot17 .. slot18 .. slot19 .. tostring
		 67	[  0]	TGETV	 10	8	9	; slot10 = slot8[slot9]
		 68	[  0]	ISF  	   		10	; if not slot10
		 69	[  0]	JMP  	 11		1	; 	goto 71
		 70	[  0]	UCLO 	  0		68	; nil uvs >= r0; goto 139
		 71	[  0]	FNEW 	 11		9	; N/A:0-0: 2 args, 4 upvalues, 7 slots
			
			;;;; constant tables ;;;;
			ktable#3 = [
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  2	[  0]	TGETS	  2	2	4	; slot2 = uv0"unknown".wrap
			  3	[  0]	ISF  	   		2	; if not uv0"unknown".wrap
			  4	[  0]	JMP  	  3		8	; 	goto 13
			  5	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  6	[  0]	TGETS	  2	2	4	; slot2 = uv0"unknown".wrap
			  7	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
			  8	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
			  9	[  0]	TDUP 	  6		3	; slot6 = copy table#k3
			 10	[  0]	TSETS	  0	6	2	; slot6.font = slot0
			 11	[  0]	TSETS	  1	6	1	; slot6.scale = slot1
			 12	[  0]	UCLO 	  0		7	; nil uvs >= r0; goto 20
			 13	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
			 14	[  0]	TGETS	  2	2	4	; slot2 = uv3"unknown".wrap
			 15	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
			 16	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
			 17	[  0]	FNEW 	  6		0	; N/A:0-0: 1 args, 2 upvalues, 7 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	GGET 	  1		2	; slot1 = _env["math"]
				  2	[  0]	TGETS	  1	1	1	; slot1 = math.ceil
				  3	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
				  4	[  0]	MOV  	  5		3	; slot5 = uv0"unknown"
				  5	[  0]	TGETS	  3	3	0	; slot3 = uv0"unknown".getWidth
				  6	[  0]	MOV  	  6		0	; slot6 = slot0
				  7	[  0]	CALL 	  3	2	3	; slot3 = uv0"unknown".getWidth(slot4, uv0"unknown")
				  8	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
				  9	[  0]	MULVV	  3	3	4	; slot3 = slot3 * uv1"unknown"
				 10	[  0]	CALLT	  1		2	; return math.ceil(slot2)
			 18	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 19
			 19	[  0]	CALLT	  2		4	; return uv3"unknown".wrap(slot3, uv1"unknown", uv2"unknown")
			 20	[  0]	CALLT	  2		4	; return slot2(slot3, slot4, uv2"unknown")
		 72	[  0]	MOV  	 12		11	; slot12 = slot11
		 73	[  0]	MOV  	 14		3	; slot14 = slot3
		 74	[  0]	KSHORT	 15		1	; slot15 = 1
		 75	[  0]	CALL 	 12	2	3	; slot12 = slot12(slot13, slot14)
		 76	[  0]	LEN  	 13		12	; slot13 = #slot12
		 77	[  0]	SUBVN	 13	13	1	; slot13 = slot13 - 1
		 78	[  0]	MULVV	 13	13	7	; slot13 = slot13 * slot7
		 79	[  0]	ADDVV	 13	13	6	; slot13 = slot13 + <unknown table>.getHeight
		 80	[  0]	ISGT 	 13		2	; if slot13 > math.max
		 81	[  0]	JMP  	 13		6	; 	goto 88
		 82	[  0]	TDUP 	 13		8	; slot13 = copy table#k8
		 83	[  0]	TSETS	  3	13	7	; slot13.font = slot3
		 84	[  0]	TSETS	 12	13	6	; slot13.lines = slot12
		 85	[  0]	TSETS	  7	13	13	; slot13.lineH = slot7
		 86	[  0]	MOV  	 10		13	; slot10 = slot13
		 87	[  0]	JMP  	 13		38	; 	goto 126
		 88	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		 89	[  0]	TGETS	 13	13	5	; slot13 = uv3"unknown".smallFont
		 90	[  0]	MOV  	 15		5	; slot15 = slot5
		 91	[  0]	MOV  	 16		3	; slot16 = slot3
		 92	[  0]	CALL 	 13	3	3	; slot13, slot14 = uv3"unknown".smallFont(slot14, slot15)
		 93	[  0]	ISF  	   		13	; if not uv3"unknown".smallFont
		 94	[  0]	JMP  	 15		31	; 	goto 126
		 95	[  0]	ISEQV	 13		3	; if uv3"unknown".smallFont == slot3
		 96	[  0]	JMP  	 15		29	; 	goto 126
		 97	[  0]	GGET 	 15		21	; slot15 = _env["math"]
		 98	[  0]	TGETS	 15	15	4	; slot15 = math.ceil
		 99	[  0]	MOV  	 19		13	; slot19 = uv3"unknown".smallFont
		100	[  0]	TGETS	 17	13	14	; slot17 = uv3"unknown".smallFont.getHeight
		101	[  0]	CALL 	 17	2	2	; slot17 = uv3"unknown".smallFont.getHeight(slot18)
		102	[  0]	MULVV	 17	17	14	; slot17 = uv3"unknown".smallFont.getHeight * slot14
		103	[  0]	CALL 	 15	2	2	; slot15 = math.ceil(slot16)
		104	[  0]	GGET 	 16		21	; slot16 = _env["math"]
		105	[  0]	TGETS	 16	16	20	; slot16 = math.max
		106	[  0]	KSHORT	 18		1	; slot18 = 1
		107	[  0]	SUBVV	 19	7	6	; slot19 = slot7 - <unknown table>.getHeight
		108	[  0]	CALL 	 16	2	3	; slot16 = math.max(slot17, slot18)
		109	[  0]	ADDVV	 16	15	16	; slot16 = math.ceil + math.max
		110	[  0]	MOV  	 17		11	; slot17 = slot11
		111	[  0]	MOV  	 19		13	; slot19 = uv3"unknown".smallFont
		112	[  0]	MOV  	 20		14	; slot20 = slot14
		113	[  0]	CALL 	 17	2	3	; slot17 = slot17(slot18, uv3"unknown".smallFont)
		114	[  0]	LEN  	 18		17	; slot18 = #slot17
		115	[  0]	SUBVN	 18	18	1	; slot18 = slot18 - 1
		116	[  0]	MULVV	 18	18	16	; slot18 = slot18 * slot16
		117	[  0]	ADDVV	 18	18	15	; slot18 = slot18 + math.ceil
		118	[  0]	ISGT 	 18		2	; if slot18 > math.max
		119	[  0]	JMP  	 18		6	; 	goto 126
		120	[  0]	TDUP 	 18		3	; slot18 = copy table#k3
		121	[  0]	TSETS	 13	18	7	; slot18.font = uv3"unknown".smallFont
		122	[  0]	TSETS	 14	18	2	; slot18.scale = slot14
		123	[  0]	TSETS	 17	18	6	; slot18.lines = slot17
		124	[  0]	TSETS	 16	18	13	; slot18.lineH = slot16
		125	[  0]	MOV  	 10		18	; slot10 = slot18
		126	[  0]	IST  	   		10	; if slot10
		127	[  0]	JMP  	 13		6	; 	goto 134
		128	[  0]	TDUP 	 13		1	; slot13 = copy table#k1
		129	[  0]	TSETS	  3	13	7	; slot13.font = slot3
		130	[  0]	TSETS	 12	13	6	; slot13.lines = slot12
		131	[  0]	TSETS	  7	13	13	; slot13.lineH = slot7
		132	[  0]	TSETS	  0	13	0	; slot13.text = uv0"unknown"
		133	[  0]	MOV  	 10		13	; slot10 = slot13
		134	[  0]	TGETS	 13	4	10	; slot13 = slot4.wrap
		135	[  0]	TSETS	 13	10	10	; slot10.wrap = <unknown table>.wrap
		136	[  0]	TSETV	 10	8	9	; slot8[slot9] = slot10
		137	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 138
		138	[  0]	RET1 	 10		2	; return slot10
		139	[  0]	RET1 	 10		2	; return slot10
	336	[  0]	TSETS	 27	19	42	; slot19.fitBlock = slot27
	337	[  0]	FNEW 	 27		39	; N/A:0-0: 6 args, 2 upvalues, 25 slots
		
		;;;; constant tables ;;;;
		ktable#2 = [
			]
		
		
		ktable#13 = [
			[inkBottomPx] = 1,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		5	; if slot5
		  2	[  0]	JMP  	  6		1	; 	goto 4
		  3	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		  4	[  0]	GGET 	  6		25	; slot6 = _env["love"]
		  5	[  0]	TGETS	  6	6	24	; slot6 = love.graphics
		  6	[  0]	TGETS	  7	6	23	; slot7 = love.graphics.getFont
		  7	[  0]	CALL 	  7	2	1	; slot7 = love.graphics.getFont()
		  8	[  0]	TGETS	  8	6	22	; slot8 = love.graphics.setFont
		  9	[  0]	TGETS	 10	0	21	; slot10 = slot0.font
		 10	[  0]	CALL 	  8	1	2	;  = love.graphics.setFont(slot9)
		 11	[  0]	TGETS	  8	0	20	; slot8 = slot0.scroll
		 12	[  0]	ISF  	   		8	; if not <unknown table>.scroll
		 13	[  0]	JMP  	  9		48	; 	goto 62
		 14	[  0]	TGETS	  8	0	21	; slot8 = slot0.font
		 15	[  0]	MOV  	 11		8	; slot11 = <unknown table>.font
		 16	[  0]	TGETS	  9	8	19	; slot9 = <unknown table>.font.getHeight
		 17	[  0]	CALL 	  9	2	2	; slot9 = <unknown table>.font.getHeight(<unknown table>.font)
		 18	[  0]	TGETS	 10	6	18	; slot10 = love.graphics.getColor
		 19	[  0]	CALL 	 10	5	1	; slot10, slot11, slot12, slot13 = love.graphics.getColor()
		 20	[  0]	UGET 	 14		0	; slot14 = uv0"unknwon"
		 21	[  0]	TGETS	 14	14	16	; slot14 = uv0"unknown".draw
		 22	[  0]	TGETS	 16	0	17	; slot16 = slot0.scrollState
		 23	[  0]	TGETS	 17	5	15	; slot17 = slot5.key
		 24	[  0]	IST  	   		17	; if <unknown table>.key
		 25	[  0]	JMP  	 18		1	; 	goto 27
		 26	[  0]	TGETS	 17	0	14	; slot17 = slot0.text
		 27	[  0]	TGETS	 18	0	14	; slot18 = slot0.text
		 28	[  0]	MOV  	 19		1	; slot19 = slot1
		 29	[  0]	MOV  	 20		2	; slot20 = slot2
		 30	[  0]	MOV  	 21		3	; slot21 = slot3
		 31	[  0]	MOV  	 22		4	; slot22 = slot4
		 32	[  0]	TDUP 	 23		13	; slot23 = copy table#k13
		 33	[  0]	TSETS	  8	23	21	; slot23.font = <unknown table>.font
		 34	[  0]	TGETS	 24	0	12	; slot24 = slot0.lineH
		 35	[  0]	SUBVV	 24	24	9	; slot24 = <unknown table>.lineH - <unknown table>.font.getHeight
		 36	[  0]	TSETS	 24	23	11	; slot23.lineGapPx = slot24
		 37	[  0]	TNEW 	 24		5	; slot24 = new table( array: 5, dict: 1)
		 38	[  0]	TSETB	 10	24	1	; slot24[1] = love.graphics.getColor
		 39	[  0]	TSETB	 11	24	2	; slot24[2] = <unknown table>.font
		 40	[  0]	TSETB	 12	24	3	; slot24[3] = slot12
		 41	[  0]	TSETB	 13	24	4	; slot24[4] = slot13
		 42	[  0]	TSETS	 24	23	10	; slot23.bodyColor = slot24
		 43	[  0]	TGETS	 24	0	9	; slot24 = slot0.wrap
		 44	[  0]	IST  	   		24	; if <unknown table>.wrap
		 45	[  0]	JMP  	 25		1	; 	goto 47
		 46	[  0]	FNEW 	 24		8	; N/A:0-0: 2 args, 2 upvalues, 7 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  2	[  0]	TGETS	  2	2	1	; slot2 = uv0"unknown".wrap
			  3	[  0]	MOV  	  4		0	; slot4 = slot0
			  4	[  0]	MOV  	  5		1	; slot5 = slot1
			  5	[  0]	FNEW 	  6		0	; N/A:0-0: 1 args, 1 upvalues, 5 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
				  2	[  0]	MOV  	  3		1	; slot3 = uv0"unknown"
				  3	[  0]	TGETS	  1	1	0	; slot1 = uv0"unknown".getWidth
				  4	[  0]	MOV  	  4		0	; slot4 = slot0
				  5	[  0]	CALLT	  1		3	; return uv0"unknown".getWidth(slot2, uv0"unknown")
			  6	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 7
			  7	[  0]	CALLT	  2		4	; return uv0"unknown".wrap(slot3, slot4, slot5)
		 47	[  0]	TSETS	 24	23	9	; slot23.wrap = slot24
		 48	[  0]	TGETS	 24	5	16	; slot24 = slot5.draw
		 49	[  0]	IST  	   		24	; if <unknown table>.draw
		 50	[  0]	JMP  	 25		1	; 	goto 52
		 51	[  0]	FNEW 	 24		7	; N/A:0-0: 4 args, 1 upvalues, 11 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	TGETS	  4	3	2	; slot4 = slot3.bodyColor
			  2	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
			  3	[  0]	TGETS	  5	5	1	; slot5 = uv0"unknown".setColor
			  4	[  0]	TGETB	  7	4	1	; slot7 = <unknown table>.bodyColor[1]
			  5	[  0]	TGETB	  8	4	2	; slot8 = <unknown table>.bodyColor[2]
			  6	[  0]	TGETB	  9	4	3	; slot9 = <unknown table>.bodyColor[3]
			  7	[  0]	TGETB	 10	4	4	; slot10 = <unknown table>.bodyColor[4]
			  8	[  0]	CALL 	  5	1	5	;  = uv0"unknown".setColor(slot6, slot7, slot8, slot9)
			  9	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
			 10	[  0]	TGETS	  5	5	0	; slot5 = uv0"unknown".print
			 11	[  0]	MOV  	  7		0	; slot7 = slot0
			 12	[  0]	MOV  	  8		1	; slot8 = slot1
			 13	[  0]	MOV  	  9		2	; slot9 = slot2
			 14	[  0]	CALL 	  5	1	4	;  = uv0"unknown".print(slot6, slot7, slot8)
			 15	[  0]	RET0 	  0		1	; return
		 52	[  0]	TSETS	 24	23	16	; slot23.draw = slot24
		 53	[  0]	CALL 	 14	2	9	; slot14 = uv0"unknown".draw(slot15, <unknown table>.scrollState, <unknown table>.text, <unknown table>.text, slot19, slot20, slot21, slot22)
		 54	[  0]	TSETS	 14	0	17	; slot0.scrollState = uv0"unknown".draw
		 55	[  0]	TGETS	 14	6	6	; slot14 = love.graphics.setColor
		 56	[  0]	MOV  	 16		10	; slot16 = love.graphics.getColor
		 57	[  0]	MOV  	 17		11	; slot17 = <unknown table>.font
		 58	[  0]	MOV  	 18		12	; slot18 = slot12
		 59	[  0]	MOV  	 19		13	; slot19 = slot13
		 60	[  0]	CALL 	 14	1	5	;  = love.graphics.setColor(slot15, love.graphics.getColor, <unknown table>.font, slot18)
		 61	[  0]	UCLO 	  8		55	; nil uvs >= r8; goto 117
		 62	[  0]	TGETS	  8	0	5	; slot8 = slot0.small
		 63	[  0]	ISF  	   		8	; if not <unknown table>.small
		 64	[  0]	JMP  	  9		2	; 	goto 67
		 65	[  0]	KSHORT	  8		1	; slot8 = 1
		 66	[  0]	JMP  	  9		1	; 	goto 68
		 67	[  0]	KSHORT	  8		0	; slot8 = 0
		 68	[  0]	ADDVV	  8	2	8	; slot8 = slot2 + slot8
		 69	[  0]	GGET 	  9		4	; slot9 = _env["ipairs"]
		 70	[  0]	TGETS	 11	0	3	; slot11 = slot0.lines
		 71	[  0]	CALL 	  9	4	2	; slot9, slot10, slot11 = ipairs(love.graphics.getColor)
		 72	[  0]	JMP  	 12		42	; 	goto 115
		 73	[  0]	TGETS	 14	5	16	; slot14 = slot5.draw
		 74	[  0]	ISF  	   		14	; if not <unknown table>.draw
		 75	[  0]	JMP  	 15		28	; 	goto 104
		 76	[  0]	TGETS	 14	6	18	; slot14 = love.graphics.getColor
		 77	[  0]	CALL 	 14	5	1	; slot14, slot15, slot16, slot17 = love.graphics.getColor()
		 78	[  0]	TGETS	 18	5	16	; slot18 = slot5.draw
		 79	[  0]	MOV  	 20		13	; slot20 = slot13
		 80	[  0]	MOV  	 21		1	; slot21 = slot1
		 81	[  0]	SUBVN	 22	12	0	; slot22 = slot12 - 1
		 82	[  0]	TGETS	 23	0	12	; slot23 = slot0.lineH
		 83	[  0]	MULVV	 22	22	23	; slot22 = slot22 * <unknown table>.lineH
		 84	[  0]	ADDVV	 22	8	22	; slot22 = slot8 + slot22
		 85	[  0]	TDUP 	 23		2	; slot23 = copy table#k2
		 86	[  0]	TGETS	 24	0	21	; slot24 = slot0.font
		 87	[  0]	TSETS	 24	23	21	; slot23.font = <unknown table>.font
		 88	[  0]	TGETS	 24	0	1	; slot24 = slot0.scale
		 89	[  0]	TSETS	 24	23	1	; slot23.scale = <unknown table>.scale
		 90	[  0]	TNEW 	 24		5	; slot24 = new table( array: 5, dict: 1)
		 91	[  0]	TSETB	 14	24	1	; slot24[1] = love.graphics.getColor
		 92	[  0]	TSETB	 15	24	2	; slot24[2] = slot15
		 93	[  0]	TSETB	 16	24	3	; slot24[3] = love.graphics.getColor
		 94	[  0]	TSETB	 17	24	4	; slot24[4] = <unknown table>.font
		 95	[  0]	TSETS	 24	23	10	; slot23.bodyColor = slot24
		 96	[  0]	CALL 	 18	1	5	;  = <unknown table>.draw(slot19, slot20, slot21, slot22)
		 97	[  0]	TGETS	 18	6	6	; slot18 = love.graphics.setColor
		 98	[  0]	MOV  	 20		14	; slot20 = love.graphics.getColor
		 99	[  0]	MOV  	 21		15	; slot21 = slot15
		100	[  0]	MOV  	 22		16	; slot22 = love.graphics.getColor
		101	[  0]	MOV  	 23		17	; slot23 = <unknown table>.font
		102	[  0]	CALL 	 18	1	5	;  = love.graphics.setColor(slot19, love.graphics.getColor, slot21, love.graphics.getColor)
		103	[  0]	JMP  	 14		11	; 	goto 115
		104	[  0]	TGETS	 14	6	0	; slot14 = love.graphics.print
		105	[  0]	MOV  	 16		13	; slot16 = slot13
		106	[  0]	MOV  	 17		1	; slot17 = slot1
		107	[  0]	SUBVN	 18	12	0	; slot18 = slot12 - 1
		108	[  0]	TGETS	 19	0	12	; slot19 = slot0.lineH
		109	[  0]	MULVV	 18	18	19	; slot18 = slot18 * <unknown table>.lineH
		110	[  0]	ADDVV	 18	8	18	; slot18 = slot8 + slot18
		111	[  0]	KSHORT	 19		0	; slot19 = 0
		112	[  0]	TGETS	 20	0	1	; slot20 = slot0.scale
		113	[  0]	TGETS	 21	0	1	; slot21 = slot0.scale
		114	[  0]	CALL 	 14	1	7	;  = love.graphics.print(slot15, slot16, slot17, slot18, slot19, <unknown table>.scale)
		115	[  0]	ITERC	 12	3	3	; slot12, slot13, slot14 = ipairs, love.graphics.getColor, <unknown table>.lines; slot12, slot13 = ipairs(love.graphics.getColor, <unknown table>.lines)
		116	[  0]	ITERL	 12		-44	; <unknown table>.lines = slot12; if slot12 != nil goto 73
		117	[  0]	ISF  	   		7	; if not love.graphics.getFont
		118	[  0]	JMP  	  8		3	; 	goto 122
		119	[  0]	TGETS	  8	6	22	; slot8 = love.graphics.setFont
		120	[  0]	MOV  	 10		7	; slot10 = love.graphics.getFont
		121	[  0]	CALL 	  8	1	2	;  = love.graphics.setFont(ipairs)
		122	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 123
		123	[  0]	RET0 	  0		1	; return
	338	[  0]	TSETS	 27	19	40	; slot19.drawBlock = slot27
	339	[  0]	FNEW 	 27		38	; N/A:0-0: 1 args, 0 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KSHORT	  1		97	; slot1 = 97
		  2	[  0]	ISGT 	  1		0	; if slot1 > slot0
		  3	[  0]	JMP  	  1		5	; 	goto 9
		  4	[  0]	KSHORT	  1		122	; slot1 = 122
		  5	[  0]	ISGT 	  0		1	; if slot0 > slot1
		  6	[  0]	JMP  	  1		2	; 	goto 9
		  7	[  0]	SUBVN	  1	0	0	; slot1 = slot0 - 32
		  8	[  0]	RET1 	  1		2	; return slot1
		  9	[  0]	KSHORT	  1		224	; slot1 = 224
		 10	[  0]	ISGT 	  1		0	; if slot1 > slot0
		 11	[  0]	JMP  	  1		7	; 	goto 19
		 12	[  0]	KSHORT	  1		254	; slot1 = 254
		 13	[  0]	ISGT 	  0		1	; if slot0 > slot1
		 14	[  0]	JMP  	  1		4	; 	goto 19
		 15	[  0]	ISEQN	  0		1	; if slot0 == 247
		 16	[  0]	JMP  	  1		2	; 	goto 19
		 17	[  0]	SUBVN	  1	0	0	; slot1 = slot0 - 32
		 18	[  0]	RET1 	  1		2	; return slot1
		 19	[  0]	ISNEN	  0		2	; if slot0 ~= 255
		 20	[  0]	JMP  	  1		2	; 	goto 23
		 21	[  0]	KSHORT	  1		376	; slot1 = 376
		 22	[  0]	RET1 	  1		2	; return slot1
		 23	[  0]	ISNEN	  0		3	; if slot0 ~= 305
		 24	[  0]	JMP  	  1		2	; 	goto 27
		 25	[  0]	KSHORT	  1		73	; slot1 = 73
		 26	[  0]	RET1 	  1		2	; return slot1
		 27	[  0]	ISNEN	  0		4	; if slot0 ~= 383
		 28	[  0]	JMP  	  1		2	; 	goto 31
		 29	[  0]	KSHORT	  1		83	; slot1 = 83
		 30	[  0]	RET1 	  1		2	; return slot1
		 31	[  0]	KSHORT	  1		256	; slot1 = 256
		 32	[  0]	ISGT 	  1		0	; if slot1 > slot0
		 33	[  0]	JMP  	  1		38	; 	goto 72
		 34	[  0]	KSHORT	  1		382	; slot1 = 382
		 35	[  0]	ISGT 	  0		1	; if slot0 > slot1
		 36	[  0]	JMP  	  1		35	; 	goto 72
		 37	[  0]	KSHORT	  1		313	; slot1 = 313
		 38	[  0]	ISGT 	  1		0	; if slot1 > slot0
		 39	[  0]	JMP  	  1		3	; 	goto 43
		 40	[  0]	KSHORT	  1		328	; slot1 = 328
		 41	[  0]	ISLE 	  0		1	; if slot0 <= slot1
		 42	[  0]	JMP  	  1		5	; 	goto 48
		 43	[  0]	KSHORT	  1		377	; slot1 = 377
		 44	[  0]	ISLE 	  1		0	; if slot1 <= slot0
		 45	[  0]	JMP  	  1		2	; 	goto 48
		 46	[  0]	KPRI 	  1		1	; slot1 = false
		 47	[  0]	JMP  	  2		1	; 	goto 49
		 48	[  0]	KPRI 	  1		2	; slot1 = true
		 49	[  0]	ISEQN	  0		5	; if slot0 == 312
		 50	[  0]	JMP  	  2		2	; 	goto 53
		 51	[  0]	ISNEN	  0		6	; if slot0 ~= 329
		 52	[  0]	JMP  	  2		1	; 	goto 54
		 53	[  0]	RET1 	  0		2	; return slot0
		 54	[  0]	ISF  	   		1	; if not slot1
		 55	[  0]	JMP  	  2		8	; 	goto 64
		 56	[  0]	MODVN	  2	0	7	; slot2 = slot0 % 2
		 57	[  0]	ISNEN	  2		8	; if slot2 ~= 0
		 58	[  0]	JMP  	  2		3	; 	goto 62
		 59	[  0]	SUBVN	  2	0	9	; slot2 = slot0 - 1
		 60	[  0]	IST  	   		2	; if slot2
		 61	[  0]	JMP  	  3		1	; 	goto 63
		 62	[  0]	MOV  	  2		0	; slot2 = slot0
		 63	[  0]	RET1 	  2		2	; return slot2
		 64	[  0]	MODVN	  2	0	7	; slot2 = slot0 % 2
		 65	[  0]	ISNEN	  2		9	; if slot2 ~= 1
		 66	[  0]	JMP  	  2		3	; 	goto 70
		 67	[  0]	SUBVN	  2	0	9	; slot2 = slot0 - 1
		 68	[  0]	IST  	   		2	; if slot2
		 69	[  0]	JMP  	  3		1	; 	goto 71
		 70	[  0]	MOV  	  2		0	; slot2 = slot0
		 71	[  0]	RET1 	  2		2	; return slot2
		 72	[  0]	KSHORT	  1		1072	; slot1 = 1072
		 73	[  0]	ISGT 	  1		0	; if slot1 > slot0
		 74	[  0]	JMP  	  1		5	; 	goto 80
		 75	[  0]	KSHORT	  1		1103	; slot1 = 1103
		 76	[  0]	ISGT 	  0		1	; if slot0 > slot1
		 77	[  0]	JMP  	  1		2	; 	goto 80
		 78	[  0]	SUBVN	  1	0	0	; slot1 = slot0 - 32
		 79	[  0]	RET1 	  1		2	; return slot1
		 80	[  0]	KSHORT	  1		1104	; slot1 = 1104
		 81	[  0]	ISGT 	  1		0	; if slot1 > slot0
		 82	[  0]	JMP  	  1		5	; 	goto 88
		 83	[  0]	KSHORT	  1		1119	; slot1 = 1119
		 84	[  0]	ISGT 	  0		1	; if slot0 > slot1
		 85	[  0]	JMP  	  1		2	; 	goto 88
		 86	[  0]	SUBVN	  1	0	10	; slot1 = slot0 - 80
		 87	[  0]	RET1 	  1		2	; return slot1
		 88	[  0]	RET1 	  0		2	; return slot0
	340	[  0]	FNEW 	 28		37	; N/A:0-0: 1 args, 0 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KSHORT	  1		128	; slot1 = 128
		  2	[  0]	ISGE 	  0		1	; if slot0 >= slot1
		  3	[  0]	JMP  	  1		4	; 	goto 8
		  4	[  0]	GGET 	  1		3	; slot1 = _env["string"]
		  5	[  0]	TGETS	  1	1	2	; slot1 = string.char
		  6	[  0]	MOV  	  3		0	; slot3 = slot0
		  7	[  0]	CALLT	  1		2	; return string.char(slot2)
		  8	[  0]	KSHORT	  1		2048	; slot1 = 2048
		  9	[  0]	ISGE 	  0		1	; if slot0 >= slot1
		 10	[  0]	JMP  	  1		10	; 	goto 21
		 11	[  0]	GGET 	  1		3	; slot1 = _env["string"]
		 12	[  0]	TGETS	  1	1	2	; slot1 = string.char
		 13	[  0]	GGET 	  3		1	; slot3 = _env["math"]
		 14	[  0]	TGETS	  3	3	0	; slot3 = math.floor
		 15	[  0]	DIVVN	  5	0	0	; slot5 = slot0 / 64
		 16	[  0]	CALL 	  3	2	2	; slot3 = math.floor(slot4)
		 17	[  0]	ADDNV	  3	3	1	; slot3 = 192 + math.floor
		 18	[  0]	MODVN	  4	0	0	; slot4 = slot0 % 64
		 19	[  0]	ADDNV	  4	4	2	; slot4 = 128 + slot4
		 20	[  0]	CALLT	  1		3	; return string.char(slot2, slot3)
		 21	[  0]	GGET 	  1		3	; slot1 = _env["string"]
		 22	[  0]	TGETS	  1	1	2	; slot1 = string.char
		 23	[  0]	GGET 	  3		1	; slot3 = _env["math"]
		 24	[  0]	TGETS	  3	3	0	; slot3 = math.floor
		 25	[  0]	DIVVN	  5	0	3	; slot5 = slot0 / 4096
		 26	[  0]	CALL 	  3	2	2	; slot3 = math.floor(slot4)
		 27	[  0]	ADDNV	  3	3	4	; slot3 = 224 + math.floor
		 28	[  0]	GGET 	  4		1	; slot4 = _env["math"]
		 29	[  0]	TGETS	  4	4	0	; slot4 = math.floor
		 30	[  0]	DIVVN	  6	0	0	; slot6 = slot0 / 64
		 31	[  0]	CALL 	  4	2	2	; slot4 = math.floor(slot5)
		 32	[  0]	MODVN	  4	4	0	; slot4 = math.floor % 64
		 33	[  0]	ADDNV	  4	4	2	; slot4 = 128 + slot4
		 34	[  0]	MODVN	  5	0	0	; slot5 = slot0 % 64
		 35	[  0]	ADDNV	  5	5	2	; slot5 = 128 + slot5
		 36	[  0]	CALLT	  1		4	; return string.char(slot2, slot3, slot4)
	341	[  0]	FNEW 	 29		36	; N/A:0-0: 1 args, 2 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.byte
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	KSHORT	  5		3	; slot5 = 3
		  5	[  0]	CALL 	  1	4	4	; slot1, slot2, slot3 = <unknown table>.byte(slot2, slot3, slot4)
		  6	[  0]	KPRI 	  4		0	; slot4 = nil
		  7	[  0]	KSHORT	  5		128	; slot5 = 128
		  8	[  0]	ISGE 	  1		5	; if slot1 >= slot5
		  9	[  0]	JMP  	  5		2	; 	goto 12
		 10	[  0]	MOV  	  4		1	; slot4 = slot1
		 11	[  0]	JMP  	  5		24	; 	goto 36
		 12	[  0]	KSHORT	  5		224	; slot5 = 224
		 13	[  0]	ISGE 	  1		5	; if slot1 >= slot5
		 14	[  0]	JMP  	  5		7	; 	goto 22
		 15	[  0]	ISF  	   		2	; if not slot2
		 16	[  0]	JMP  	  5		5	; 	goto 22
		 17	[  0]	SUBVN	  5	1	0	; slot5 = slot1 - 192
		 18	[  0]	MULVN	  5	5	1	; slot5 = slot5 * 64
		 19	[  0]	SUBVN	  6	2	2	; slot6 = slot2 - 128
		 20	[  0]	ADDVV	  4	5	6	; slot4 = slot5 + slot6
		 21	[  0]	JMP  	  5		14	; 	goto 36
		 22	[  0]	KSHORT	  5		240	; slot5 = 240
		 23	[  0]	ISGE 	  1		5	; if slot1 >= slot5
		 24	[  0]	JMP  	  5		10	; 	goto 35
		 25	[  0]	ISF  	   		3	; if not slot3
		 26	[  0]	JMP  	  5		8	; 	goto 35
		 27	[  0]	SUBVN	  5	1	3	; slot5 = slot1 - 224
		 28	[  0]	MULVN	  5	5	1	; slot5 = slot5 * 64
		 29	[  0]	SUBVN	  6	2	2	; slot6 = slot2 - 128
		 30	[  0]	ADDVV	  5	5	6	; slot5 = slot5 + slot6
		 31	[  0]	MULVN	  5	5	1	; slot5 = slot5 * 64
		 32	[  0]	SUBVN	  6	3	2	; slot6 = slot3 - 128
		 33	[  0]	ADDVV	  4	5	6	; slot4 = slot5 + slot6
		 34	[  0]	JMP  	  5		1	; 	goto 36
		 35	[  0]	RET1 	  0		2	; return slot0
		 36	[  0]	ISNEN	  4		4	; if slot4 ~= 223
		 37	[  0]	JMP  	  5		2	; 	goto 40
		 38	[  0]	KSTR 	  5		0	; slot5 = "SS"
		 39	[  0]	RET1 	  5		2	; return slot5
		 40	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 41	[  0]	MOV  	  7		4	; slot7 = slot4
		 42	[  0]	CALL 	  5	2	2	; slot5 = uv0"unknown"(slot6)
		 43	[  0]	ISNEV	  5		4	; if uv0"unknown" ~= slot4
		 44	[  0]	JMP  	  6		2	; 	goto 47
		 45	[  0]	ISTC 	  6		0	; slot6 = slot0; if slot0
		 46	[  0]	JMP  	  6		3	; 	goto 50
		 47	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 48	[  0]	MOV  	  8		5	; slot8 = uv0"unknown"
		 49	[  0]	CALL 	  6	2	2	; slot6 = uv1"unknown"(slot7)
		 50	[  0]	RET1 	  6		2	; return uv1"unknown"
	342	[  0]	TNEW 	 30		0	; slot30 = new table( array: 0, dict: 1)
	343	[  0]	FNEW 	 31		34	; N/A:0-0: 1 args, 2 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		3	; slot1 = _env["tostring"]
		  2	[  0]	ISTC 	  3		0	; slot3 = slot0; if slot0
		  3	[  0]	JMP  	  3		1	; 	goto 5
		  4	[  0]	KSTR 	  3		2	; slot3 = ""
		  5	[  0]	CALL 	  1	2	2	; slot1 = tostring(slot2)
		  6	[  0]	MOV  	  0		1	; slot0 = slot1
		  7	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  8	[  0]	TGETV	  1	1	0	; slot1 = uv0"unknown"[slot0]
		  9	[  0]	ISF  	   		1	; if not slot1
		 10	[  0]	JMP  	  2		1	; 	goto 12
		 11	[  0]	RET1 	  1		2	; return slot1
		 12	[  0]	MOV  	  4		0	; slot4 = slot0
		 13	[  0]	TGETS	  2	0	1	; slot2 = slot0.gsub
		 14	[  0]	KSTR 	  5		0	; slot5 = "[%z-\xc2-\xf4][\x80-\xbf]*"
		 15	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 16	[  0]	CALL 	  2	2	4	; slot2 = <unknown table>.gsub(slot3, slot4, slot5)
		 17	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 18	[  0]	TSETV	  2	3	0	; uv0"unknown"[slot0] = slot2
		 19	[  0]	RET1 	  2		2	; return slot2
	344	[  0]	TSETS	 31	19	35	; slot19.upper = slot31
	345	[  0]	MOV  	 18		19	; slot18 = slot19
	346	[  0]	UCLO 	 19		0	; nil uvs >= r19; goto 347
	347	[  0]	KPRI 	 19		0	; slot19 = nil
	348	[  0]	TNEW 	 20		0	; slot20 = new table( array: 0, dict: 1)
	349	[  0]	KSHORT	 21		21	; slot21 = 21
	350	[  0]	KSHORT	 22		15	; slot22 = 15
	351	[  0]	KSHORT	 23		6	; slot23 = 6
	352	[  0]	KSHORT	 24		31	; slot24 = 31
	353	[  0]	GGET 	 25		194	; slot25 = _env["setmetatable"]
	354	[  0]	TNEW 	 27		0	; slot27 = new table( array: 0, dict: 1)
	355	[  0]	TDUP 	 28		33	; slot28 = copy table#k33
	356	[  0]	CALL 	 25	2	3	; slot25 = setmetatable(slot26, slot27)
	357	[  0]	FNEW 	 26		32	; N/A:0-0: 5 args, 4 upvalues, 21 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		4	; if slot4
		  2	[  0]	JMP  	  5		1	; 	goto 4
		  3	[  0]	KSHORT	  4		0	; slot4 = 0
		  4	[  0]	KSHORT	  5		0	; slot5 = 0
		  5	[  0]	ISGT 	  4		5	; if slot4 > slot5
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
		 17	[  0]	UCLO 	  0		74	; nil uvs >= r0; goto 92
		 18	[  0]	MOV  	  7		0	; slot7 = slot0
		 19	[  0]	TGETS	  5	0	3	; slot5 = slot0.getDimensions
		 20	[  0]	CALL 	  5	3	2	; slot5, slot6 = <unknown table>.getDimensions(slot6)
		 21	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 22	[  0]	TGETV	  7	7	0	; slot7 = uv0"unknown"[slot0]
		 23	[  0]	IST  	   		7	; if slot7
		 24	[  0]	JMP  	  8		3	; 	goto 28
		 25	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
		 26	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 27	[  0]	TSETV	  7	8	0	; uv0"unknown"[slot0] = slot7
		 28	[  0]	FNEW 	  8		2	; N/A:0-0: 2 args, 3 upvalues, 12 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	MULVN	  2	0	0	; slot2 = slot0 * 100
			  2	[  0]	ADDVV	  2	2	1	; slot2 = slot2 + slot1
			  3	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			  4	[  0]	TGETV	  3	3	2	; slot3 = uv0"unknown"[slot2]
			  5	[  0]	IST  	   		3	; if slot3
			  6	[  0]	JMP  	  3		12	; 	goto 19
			  7	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			  8	[  0]	GGET 	  4		2	; slot4 = _env["love"]
			  9	[  0]	TGETS	  4	4	1	; slot4 = love.graphics
			 10	[  0]	TGETS	  4	4	0	; slot4 = love.graphics.newQuad
			 11	[  0]	MOV  	  6		0	; slot6 = slot0
			 12	[  0]	KSHORT	  7		0	; slot7 = 0
			 13	[  0]	MOV  	  8		1	; slot8 = slot1
			 14	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
			 15	[  0]	UGET 	 10		2	; slot10 = uv2"unknwon"
			 16	[  0]	UGET 	 11		1	; slot11 = uv1"unknwon"
			 17	[  0]	CALL 	  4	2	7	; slot4 = love.graphics.newQuad(slot5, slot6, slot7, slot8, uv1"unknown", uv2"unknown")
			 18	[  0]	TSETV	  4	3	2	; uv0"unknown"[slot2] = slot4
			 19	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			 20	[  0]	TGETV	  3	3	2	; slot3 = uv0"unknown"[slot2]
			 21	[  0]	RET1 	  3		2	; return slot3
		 29	[  0]	GGET 	  9		6	; slot9 = _env["love"]
		 30	[  0]	TGETS	  9	9	5	; slot9 = love.graphics
		 31	[  0]	TGETS	  9	9	4	; slot9 = love.graphics.draw
		 32	[  0]	MOV  	 11		0	; slot11 = slot0
		 33	[  0]	MOV  	 12		8	; slot12 = slot8
		 34	[  0]	KSHORT	 14		0	; slot14 = 0
		 35	[  0]	UGET 	 15		1	; slot15 = uv1"unknwon"
		 36	[  0]	CALL 	 12	2	3	; slot12 = slot12(slot13, slot14)
		 37	[  0]	MOV  	 13		1	; slot13 = slot1
		 38	[  0]	MOV  	 14		2	; slot14 = slot2
		 39	[  0]	KSHORT	 15		0	; slot15 = 0
		 40	[  0]	MOV  	 16		3	; slot16 = slot3
		 41	[  0]	MOV  	 17		3	; slot17 = slot3
		 42	[  0]	CALL 	  9	1	8	;  = love.graphics.draw(slot10, slot11, slot12, slot13, slot14, slot15, slot16)
		 43	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 44	[  0]	MULVV	  9	9	3	; slot9 = uv1"unknown" * slot3
		 45	[  0]	ADDVV	  9	1	9	; slot9 = slot1 + slot9
		 46	[  0]	MOV  	 10		4	; slot10 = slot4
		 47	[  0]	KSHORT	 11		0	; slot11 = 0
		 48	[  0]	ISGE 	 11		10	; if slot11 >= slot10
		 49	[  0]	JMP  	 11		25	; 	goto 75
		 50	[  0]	LOOP 	 11		24	; Loop start, exit goto 75
		 51	[  0]	GGET 	 11		1	; slot11 = _env["math"]
		 52	[  0]	TGETS	 11	11	0	; slot11 = math.min
		 53	[  0]	UGET 	 13		2	; slot13 = uv2"unknwon"
		 54	[  0]	MOV  	 14		10	; slot14 = slot10
		 55	[  0]	CALL 	 11	2	3	; slot11 = math.min(slot12, uv2"unknown")
		 56	[  0]	GGET 	 12		6	; slot12 = _env["love"]
		 57	[  0]	TGETS	 12	12	5	; slot12 = love.graphics
		 58	[  0]	TGETS	 12	12	4	; slot12 = love.graphics.draw
		 59	[  0]	MOV  	 14		0	; slot14 = slot0
		 60	[  0]	MOV  	 15		8	; slot15 = slot8
		 61	[  0]	UGET 	 17		3	; slot17 = uv3"unknwon"
		 62	[  0]	MOV  	 18		11	; slot18 = math.min
		 63	[  0]	CALL 	 15	2	3	; slot15 = slot15(slot16, uv3"unknown")
		 64	[  0]	MOV  	 16		9	; slot16 = slot9
		 65	[  0]	MOV  	 17		2	; slot17 = slot2
		 66	[  0]	KSHORT	 18		0	; slot18 = 0
		 67	[  0]	MOV  	 19		3	; slot19 = slot3
		 68	[  0]	MOV  	 20		3	; slot20 = slot3
		 69	[  0]	CALL 	 12	1	8	;  = love.graphics.draw(uv2"unknown", slot14, slot15, slot16, slot17, slot18, slot19)
		 70	[  0]	MULVV	 12	11	3	; slot12 = math.min * slot3
		 71	[  0]	ADDVV	 12	9	12	; slot12 = slot9 + slot12
		 72	[  0]	SUBVV	 10	10	11	; slot10 = slot10 - math.min
		 73	[  0]	MOV  	  9		12	; slot9 = slot12
		 74	[  0]	JMP  	 11		-28	; 	goto 47
		 75	[  0]	GGET 	 11		6	; slot11 = _env["love"]
		 76	[  0]	TGETS	 11	11	5	; slot11 = love.graphics
		 77	[  0]	TGETS	 11	11	4	; slot11 = love.graphics.draw
		 78	[  0]	MOV  	 13		0	; slot13 = slot0
		 79	[  0]	MOV  	 14		8	; slot14 = slot8
		 80	[  0]	UGET 	 16		1	; slot16 = uv1"unknwon"
		 81	[  0]	UGET 	 17		1	; slot17 = uv1"unknwon"
		 82	[  0]	SUBVV	 17	5	17	; slot17 = <unknown table>.getDimensions - uv1"unknown"
		 83	[  0]	CALL 	 14	2	3	; slot14 = slot14(slot15, uv1"unknown")
		 84	[  0]	MOV  	 15		9	; slot15 = slot9
		 85	[  0]	MOV  	 16		2	; slot16 = slot2
		 86	[  0]	KSHORT	 17		0	; slot17 = 0
		 87	[  0]	MOV  	 18		3	; slot18 = slot3
		 88	[  0]	MOV  	 19		3	; slot19 = slot3
		 89	[  0]	CALL 	 11	1	8	;  = love.graphics.draw(slot12, slot13, slot14, slot15, slot16, slot17, slot18)
		 90	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 91
		 91	[  0]	RET0 	  0		1	; return
		 92	[  0]	RET0 	  0		1	; return
	358	[  0]	TSETS	 26	20	212	; slot20.draw = slot26
	359	[  0]	FNEW 	 26		30	; N/A:0-0: 2 args, 3 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		1	; if slot1
		  2	[  0]	JMP  	  2		1	; 	goto 4
		  3	[  0]	KSHORT	  1		0	; slot1 = 0
		  4	[  0]	KSHORT	  2		0	; slot2 = 0
		  5	[  0]	ISLE 	  1		2	; if slot1 <= slot2
		  6	[  0]	JMP  	  2		3	; 	goto 10
		  7	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  8	[  0]	ISGE 	  0		2	; if slot0 >= uv0"unknown"
		  9	[  0]	JMP  	  2		1	; 	goto 11
		 10	[  0]	RET1 	  0		2	; return slot0
		 11	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 12	[  0]	ADDVV	  2	2	1	; slot2 = uv0"unknown" + slot1
		 13	[  0]	ISGE 	  0		2	; if slot0 >= slot2
		 14	[  0]	JMP  	  2		7	; 	goto 22
		 15	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 16	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 17	[  0]	SUBVV	  3	0	3	; slot3 = slot0 - uv0"unknown"
		 18	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 19	[  0]	MODVV	  3	3	4	; slot3 = slot3 % uv2"unknown"
		 20	[  0]	ADDVV	  2	2	3	; slot2 = uv1"unknown" + slot3
		 21	[  0]	RET1 	  2		2	; return slot2
		 22	[  0]	SUBVV	  2	0	1	; slot2 = slot0 - slot1
		 23	[  0]	RET1 	  2		2	; return slot2
	360	[  0]	TSETS	 26	20	31	; slot20.sourceX = slot26
	361	[  0]	FNEW 	 26		28	; N/A:0-0: 2 args, 1 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		1	; if slot1
		  2	[  0]	JMP  	  2		1	; 	goto 4
		  3	[  0]	KSHORT	  1		1	; slot1 = 1
		  4	[  0]	GGET 	  2		2	; slot2 = _env["math"]
		  5	[  0]	TGETS	  2	2	1	; slot2 = math.max
		  6	[  0]	KSHORT	  4		0	; slot4 = 0
		  7	[  0]	GGET 	  5		2	; slot5 = _env["math"]
		  8	[  0]	TGETS	  5	5	0	; slot5 = math.ceil
		  9	[  0]	ADDVN	  7	0	0	; slot7 = slot0 + 16
		 10	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 11	[  0]	MULVV	  8	8	1	; slot8 = uv0"unknown" * slot1
		 12	[  0]	SUBVV	  7	7	8	; slot7 = slot7 - slot8
		 13	[  0]	DIVVV	  7	7	1	; slot7 = slot7 / slot1
		 14	[  0]	CALL 	  5	0	2	; MULTRES = math.ceil(slot6)
		 15	[  0]	CALLMT	  2		1	; return math.max(, ...MULTRES)
	362	[  0]	TSETS	 26	20	29	; slot20.extraFor = slot26
	363	[  0]	MOV  	 19		20	; slot19 = slot20
	364	[  0]	UCLO 	 20		0	; nil uvs >= r20; goto 365
	365	[  0]	KPRI 	 20		0	; slot20 = nil
	366	[  0]	TNEW 	 21		0	; slot21 = new table( array: 0, dict: 1)
	367	[  0]	KSHORT	 22		19	; slot22 = 19
	368	[  0]	KSHORT	 23		84	; slot23 = 84
	369	[  0]	KSHORT	 24		60	; slot24 = 60
	370	[  0]	KSHORT	 25		8	; slot25 = 8
	371	[  0]	KSHORT	 26		120	; slot26 = 120
	372	[  0]	GGET 	 27		194	; slot27 = _env["setmetatable"]
	373	[  0]	TNEW 	 29		0	; slot29 = new table( array: 0, dict: 1)
	374	[  0]	TDUP 	 30		27	; slot30 = copy table#k27
	375	[  0]	CALL 	 27	2	3	; slot27 = setmetatable(slot28, slot29)
	376	[  0]	GGET 	 28		194	; slot28 = _env["setmetatable"]
	377	[  0]	TNEW 	 30		0	; slot30 = new table( array: 0, dict: 1)
	378	[  0]	TDUP 	 31		26	; slot31 = copy table#k26
	379	[  0]	CALL 	 28	2	3	; slot28 = setmetatable(slot29, slot30)
	380	[  0]	FNEW 	 29		25	; N/A:0-0: 3 args, 5 upvalues, 19 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		10	; slot3 = _env["tostring"]
		  2	[  0]	ISTC 	  5		0	; slot5 = slot0; if slot0
		  3	[  0]	JMP  	  5		1	; 	goto 5
		  4	[  0]	KSTR 	  5		9	; slot5 = ""
		  5	[  0]	CALL 	  3	2	2	; slot3 = tostring(slot4)
		  6	[  0]	MOV  	  0		3	; slot0 = tostring
		  7	[  0]	IST  	   		2	; if slot2
		  8	[  0]	JMP  	  3		5	; 	goto 14
		  9	[  0]	GGET 	  3		8	; slot3 = _env["_G"]
		 10	[  0]	TGETS	  3	3	7	; slot3 = _G.currentGameLang
		 11	[  0]	ISTC 	  2		3	; slot2 = _G.currentGameLang; if _G.currentGameLang
		 12	[  0]	JMP  	  4		1	; 	goto 14
		 13	[  0]	KSTR 	  2		6	; slot2 = "ko"
		 14	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 15	[  0]	TGETV	  3	3	1	; slot3 = uv0"unknown"[slot1]
		 16	[  0]	IST  	   		3	; if slot3
		 17	[  0]	JMP  	  4		3	; 	goto 21
		 18	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 19	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 20	[  0]	TSETV	  3	4	1	; uv0"unknown"[slot1] = slot3
		 21	[  0]	MOV  	  4		2	; slot4 = slot2
		 22	[  0]	KSTR 	  5		5	; slot5 = " "
		 23	[  0]	MOV  	  6		0	; slot6 = tostring
		 24	[  0]	CAT  	  4	4	6	; slot4 = slot4 .. slot5 .. tostring
		 25	[  0]	TGETV	  5	3	4	; slot5 = slot3[slot4]
		 26	[  0]	ISF  	   		5	; if not slot5
		 27	[  0]	JMP  	  6		4	; 	goto 32
		 28	[  0]	TGETB	  6	5	1	; slot6 = slot5[1]
		 29	[  0]	TGETB	  7	5	2	; slot7 = slot5[2]
		 30	[  0]	TGETB	  8	5	3	; slot8 = slot5[3]
		 31	[  0]	RET  	  6		4	; return slot6, slot7, slot8
		 32	[  0]	MOV  	  6		1	; slot6 = slot1
		 33	[  0]	KSHORT	  7		1	; slot7 = 1
		 34	[  0]	MOV  	 10		1	; slot10 = slot1
		 35	[  0]	TGETS	  8	1	4	; slot8 = slot1.getWidth
		 36	[  0]	MOV  	 11		0	; slot11 = tostring
		 37	[  0]	CALL 	  8	2	3	; slot8 = <unknown table>.getWidth(slot9, slot10)
		 38	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 39	[  0]	MULVN	  9	9	0	; slot9 = uv1"unknown" * 2
		 40	[  0]	ADDVV	  9	8	9	; slot9 = <unknown table>.getWidth + slot9
		 41	[  0]	UGET 	 10		2	; slot10 = uv2"unknwon"
		 42	[  0]	SUBVV	  9	9	10	; slot9 = slot9 - uv2"unknown"
		 43	[  0]	UGET 	 10		3	; slot10 = uv3"unknwon"
		 44	[  0]	ISGE 	 10		9	; if uv3"unknown" >= slot9
		 45	[  0]	JMP  	  9		22	; 	goto 68
		 46	[  0]	UGET 	  9		4	; slot9 = uv4"unknwon"
		 47	[  0]	TGETS	  9	9	3	; slot9 = uv4"unknown".smallFont
		 48	[  0]	MOV  	 11		2	; slot11 = slot2
		 49	[  0]	MOV  	 12		1	; slot12 = slot1
		 50	[  0]	CALL 	  9	3	3	; slot9, slot10 = uv4"unknown".smallFont(uv3"unknown", slot11)
		 51	[  0]	ISF  	   		9	; if not uv4"unknown".smallFont
		 52	[  0]	JMP  	 11		15	; 	goto 68
		 53	[  0]	ISEQV	  9		1	; if uv4"unknown".smallFont == slot1
		 54	[  0]	JMP  	 11		13	; 	goto 68
		 55	[  0]	MOV  	 11		9	; slot11 = uv4"unknown".smallFont
		 56	[  0]	MOV  	 12		10	; slot12 = uv3"unknown"
		 57	[  0]	GGET 	 13		2	; slot13 = _env["math"]
		 58	[  0]	TGETS	 13	13	1	; slot13 = math.ceil
		 59	[  0]	MOV  	 17		9	; slot17 = uv4"unknown".smallFont
		 60	[  0]	TGETS	 15	9	4	; slot15 = uv4"unknown".smallFont.getWidth
		 61	[  0]	MOV  	 18		0	; slot18 = tostring
		 62	[  0]	CALL 	 15	2	3	; slot15 = uv4"unknown".smallFont.getWidth(slot16, uv4"unknown".smallFont)
		 63	[  0]	MULVV	 15	15	10	; slot15 = uv4"unknown".smallFont.getWidth * uv3"unknown"
		 64	[  0]	CALL 	 13	2	2	; slot13 = math.ceil(slot14)
		 65	[  0]	MOV  	  8		13	; slot8 = math.ceil
		 66	[  0]	MOV  	  7		12	; slot7 = uv3"unknown"
		 67	[  0]	MOV  	  6		11	; slot6 = uv4"unknown".smallFont
		 68	[  0]	GGET 	  9		2	; slot9 = _env["math"]
		 69	[  0]	TGETS	  9	9	0	; slot9 = math.max
		 70	[  0]	KSHORT	 11		0	; slot11 = 0
		 71	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		 72	[  0]	MULVN	 12	12	0	; slot12 = uv1"unknown" * 2
		 73	[  0]	ADDVV	 12	8	12	; slot12 = math.ceil + slot12
		 74	[  0]	UGET 	 13		2	; slot13 = uv2"unknwon"
		 75	[  0]	SUBVV	 12	12	13	; slot12 = slot12 - uv2"unknown"
		 76	[  0]	CALL 	  9	2	3	; slot9 = math.max(uv3"unknown", slot11)
		 77	[  0]	MODVN	 10	9	0	; slot10 = math.max % 2
		 78	[  0]	ADDVV	  9	9	10	; slot9 = math.max + slot10
		 79	[  0]	TNEW 	 10		4	; slot10 = new table( array: 4, dict: 1)
		 80	[  0]	TSETB	  9	10	1	; slot10[1] = slot9
		 81	[  0]	TSETB	  6	10	2	; slot10[2] = uv4"unknown".smallFont
		 82	[  0]	TSETB	  7	10	3	; slot10[3] = uv3"unknown"
		 83	[  0]	TSETV	 10	3	4	; slot3[slot4] = slot10
		 84	[  0]	MOV  	 10		9	; slot10 = slot9
		 85	[  0]	MOV  	 11		6	; slot11 = uv4"unknown".smallFont
		 86	[  0]	MOV  	 12		7	; slot12 = uv3"unknown"
		 87	[  0]	RET  	 10		4	; return slot10, uv4"unknown".smallFont, uv3"unknown"
	381	[  0]	TSETS	 29	21	45	; slot21.fit = slot29
	382	[  0]	FNEW 	 29		24	; N/A:0-0: 6 args, 2 upvalues, 20 slots
		
		;;;; constant tables ;;;;
		ktable#6 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		5	; if slot5
		  2	[  0]	JMP  	  6		1	; 	goto 4
		  3	[  0]	KSHORT	  5		0	; slot5 = 0
		  4	[  0]	KSHORT	  6		0	; slot6 = 0
		  5	[  0]	ISGT 	  5		6	; if slot5 > slot6
		  6	[  0]	JMP  	  6		14	; 	goto 21
		  7	[  0]	GGET 	  6		15	; slot6 = _env["love"]
		  8	[  0]	TGETS	  6	6	14	; slot6 = love.graphics
		  9	[  0]	TGETS	  6	6	13	; slot6 = love.graphics.draw
		 10	[  0]	MOV  	  8		0	; slot8 = slot0
		 11	[  0]	MOV  	  9		1	; slot9 = slot1
		 12	[  0]	TGETS	 10	2	12	; slot10 = slot2.x
		 13	[  0]	MULVV	 10	10	3	; slot10 = <unknown table>.x * slot3
		 14	[  0]	TGETS	 11	2	11	; slot11 = slot2.y
		 15	[  0]	MULVV	 11	11	4	; slot11 = <unknown table>.y * slot4
		 16	[  0]	KSHORT	 12		0	; slot12 = 0
		 17	[  0]	MOV  	 13		3	; slot13 = slot3
		 18	[  0]	MOV  	 14		4	; slot14 = slot4
		 19	[  0]	CALL 	  6	1	8	;  = love.graphics.draw(slot7, slot8, slot9, slot10, slot11, slot12, slot13)
		 20	[  0]	RET0 	  0		1	; return
		 21	[  0]	TGETS	  6	2	12	; slot6 = slot2.x
		 22	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 23	[  0]	ADDVV	  6	6	7	; slot6 = <unknown table>.x + uv0"unknown"
		 24	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 25	[  0]	TGETV	  7	7	0	; slot7 = uv1"unknown"[slot0]
		 26	[  0]	TGETS	  8	2	12	; slot8 = slot2.x
		 27	[  0]	KSTR 	  9		10	; slot9 = ":"
		 28	[  0]	TGETS	 10	2	11	; slot10 = slot2.y
		 29	[  0]	KSTR 	 11		10	; slot11 = ":"
		 30	[  0]	TGETS	 12	2	9	; slot12 = slot2.w
		 31	[  0]	KSTR 	 13		10	; slot13 = ":"
		 32	[  0]	TGETS	 14	2	8	; slot14 = slot2.h
		 33	[  0]	CAT  	  8	8	14	; slot8 = <unknown table>.x .. slot9 .. <unknown table>.y .. slot11 .. <unknown table>.w .. slot13 .. <unknown table>.h
		 34	[  0]	ISF  	   		7	; if not slot7
		 35	[  0]	JMP  	  9		3	; 	goto 39
		 36	[  0]	TGETS	  9	7	7	; slot9 = slot7.key
		 37	[  0]	ISEQV	  9		8	; if <unknown table>.key == slot8
		 38	[  0]	JMP  	  9		42	; 	goto 81
		 39	[  0]	TDUP 	  9		6	; slot9 = copy table#k6
		 40	[  0]	TSETS	  8	9	7	; slot9.key = slot8
		 41	[  0]	GGET 	 10		15	; slot10 = _env["love"]
		 42	[  0]	TGETS	 10	10	14	; slot10 = love.graphics
		 43	[  0]	TGETS	 10	10	5	; slot10 = love.graphics.newQuad
		 44	[  0]	TGETS	 12	2	12	; slot12 = slot2.x
		 45	[  0]	TGETS	 13	2	11	; slot13 = slot2.y
		 46	[  0]	UGET 	 14		0	; slot14 = uv0"unknwon"
		 47	[  0]	TGETS	 15	2	8	; slot15 = slot2.h
		 48	[  0]	TGETS	 16	2	4	; slot16 = slot2.iw
		 49	[  0]	TGETS	 17	2	3	; slot17 = slot2.ih
		 50	[  0]	CALL 	 10	2	7	; slot10 = love.graphics.newQuad(slot11, <unknown table>.x, <unknown table>.y, uv0"unknown", <unknown table>.h, <unknown table>.iw)
		 51	[  0]	TSETS	 10	9	2	; slot9.left = love.graphics.newQuad
		 52	[  0]	GGET 	 10		15	; slot10 = _env["love"]
		 53	[  0]	TGETS	 10	10	14	; slot10 = love.graphics
		 54	[  0]	TGETS	 10	10	5	; slot10 = love.graphics.newQuad
		 55	[  0]	MOV  	 12		6	; slot12 = slot6
		 56	[  0]	TGETS	 13	2	11	; slot13 = slot2.y
		 57	[  0]	KSHORT	 14		1	; slot14 = 1
		 58	[  0]	TGETS	 15	2	8	; slot15 = slot2.h
		 59	[  0]	TGETS	 16	2	4	; slot16 = slot2.iw
		 60	[  0]	TGETS	 17	2	3	; slot17 = slot2.ih
		 61	[  0]	CALL 	 10	2	7	; slot10 = love.graphics.newQuad(slot11, slot12, <unknown table>.y, slot14, <unknown table>.h, <unknown table>.iw)
		 62	[  0]	TSETS	 10	9	1	; slot9.mid = love.graphics.newQuad
		 63	[  0]	GGET 	 10		15	; slot10 = _env["love"]
		 64	[  0]	TGETS	 10	10	14	; slot10 = love.graphics
		 65	[  0]	TGETS	 10	10	5	; slot10 = love.graphics.newQuad
		 66	[  0]	ADDVN	 12	6	0	; slot12 = slot6 + 1
		 67	[  0]	TGETS	 13	2	11	; slot13 = slot2.y
		 68	[  0]	TGETS	 14	2	12	; slot14 = slot2.x
		 69	[  0]	TGETS	 15	2	9	; slot15 = slot2.w
		 70	[  0]	ADDVV	 14	14	15	; slot14 = <unknown table>.x + <unknown table>.w
		 71	[  0]	SUBVV	 14	14	6	; slot14 = slot14 - slot6
		 72	[  0]	SUBVN	 14	14	0	; slot14 = slot14 - 1
		 73	[  0]	TGETS	 15	2	8	; slot15 = slot2.h
		 74	[  0]	TGETS	 16	2	4	; slot16 = slot2.iw
		 75	[  0]	TGETS	 17	2	3	; slot17 = slot2.ih
		 76	[  0]	CALL 	 10	2	7	; slot10 = love.graphics.newQuad(slot11, slot12, <unknown table>.y, slot14, <unknown table>.h, <unknown table>.iw)
		 77	[  0]	TSETS	 10	9	0	; slot9.right = love.graphics.newQuad
		 78	[  0]	MOV  	  7		9	; slot7 = slot9
		 79	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 80	[  0]	TSETV	  7	9	0	; uv1"unknown"[slot0] = slot7
		 81	[  0]	DIVVN	  9	5	1	; slot9 = slot5 / 2
		 82	[  0]	TGETS	 10	2	11	; slot10 = slot2.y
		 83	[  0]	MULVV	 10	10	4	; slot10 = <unknown table>.y * slot4
		 84	[  0]	GGET 	 11		15	; slot11 = _env["love"]
		 85	[  0]	TGETS	 11	11	14	; slot11 = love.graphics
		 86	[  0]	TGETS	 11	11	13	; slot11 = love.graphics.draw
		 87	[  0]	MOV  	 13		0	; slot13 = slot0
		 88	[  0]	TGETS	 14	7	2	; slot14 = slot7.left
		 89	[  0]	TGETS	 15	2	12	; slot15 = slot2.x
		 90	[  0]	MULVV	 15	15	3	; slot15 = <unknown table>.x * slot3
		 91	[  0]	SUBVV	 15	15	9	; slot15 = slot15 - slot9
		 92	[  0]	MOV  	 16		10	; slot16 = slot10
		 93	[  0]	KSHORT	 17		0	; slot17 = 0
		 94	[  0]	MOV  	 18		3	; slot18 = slot3
		 95	[  0]	MOV  	 19		4	; slot19 = slot4
		 96	[  0]	CALL 	 11	1	8	;  = love.graphics.draw(slot12, slot13, <unknown table>.left, slot15, slot16, slot17, slot18)
		 97	[  0]	GGET 	 11		15	; slot11 = _env["love"]
		 98	[  0]	TGETS	 11	11	14	; slot11 = love.graphics
		 99	[  0]	TGETS	 11	11	13	; slot11 = love.graphics.draw
		100	[  0]	MOV  	 13		0	; slot13 = slot0
		101	[  0]	TGETS	 14	7	1	; slot14 = slot7.mid
		102	[  0]	MULVV	 15	6	3	; slot15 = slot6 * slot3
		103	[  0]	SUBVV	 15	15	9	; slot15 = slot15 - slot9
		104	[  0]	MOV  	 16		10	; slot16 = slot10
		105	[  0]	KSHORT	 17		0	; slot17 = 0
		106	[  0]	ADDVV	 18	3	5	; slot18 = slot3 + slot5
		107	[  0]	MOV  	 19		4	; slot19 = slot4
		108	[  0]	CALL 	 11	1	8	;  = love.graphics.draw(slot12, slot13, <unknown table>.mid, slot15, slot16, slot17, slot18)
		109	[  0]	GGET 	 11		15	; slot11 = _env["love"]
		110	[  0]	TGETS	 11	11	14	; slot11 = love.graphics
		111	[  0]	TGETS	 11	11	13	; slot11 = love.graphics.draw
		112	[  0]	MOV  	 13		0	; slot13 = slot0
		113	[  0]	TGETS	 14	7	0	; slot14 = slot7.right
		114	[  0]	ADDVN	 15	6	0	; slot15 = slot6 + 1
		115	[  0]	MULVV	 15	15	3	; slot15 = slot15 * slot3
		116	[  0]	ADDVV	 15	15	9	; slot15 = slot15 + slot9
		117	[  0]	MOV  	 16		10	; slot16 = slot10
		118	[  0]	KSHORT	 17		0	; slot17 = 0
		119	[  0]	MOV  	 18		3	; slot18 = slot3
		120	[  0]	MOV  	 19		4	; slot19 = slot4
		121	[  0]	CALL 	 11	1	8	;  = love.graphics.draw(slot12, slot13, <unknown table>.right, slot15, slot16, slot17, slot18)
		122	[  0]	RET0 	  0		1	; return
	383	[  0]	TSETS	 29	21	212	; slot21.draw = slot29
	384	[  0]	MOV  	 29		22	; slot29 = slot22
	385	[  0]	TSETS	 23	21	22	; slot21.PAPER_W = slot23
	386	[  0]	TSETS	 29	21	23	; slot21.PAPER_X = slot29
	387	[  0]	MOV  	 20		21	; slot20 = slot21
	388	[  0]	UCLO 	 21		0	; nil uvs >= r21; goto 389
	389	[  0]	TDUP 	 21		21	; slot21 = copy table#k21
	390	[  0]	TSETS	 18	21	20	; slot21.text_fit = slot18
	391	[  0]	TSETS	 19	21	19	; slot21.core_button = slot19
	392	[  0]	TSETS	 20	21	18	; slot21.title_plaque = slot20
	393	[  0]	TSETS	 17	21	17	; slot21.shop_funds = slot17
	394	[  0]	TSETS	 16	21	16	; slot21.panel_hover_motion = slot16
	395	[  0]	TSETS	 15	21	15	; slot21.awakening_star = slot15
	396	[  0]	TSETS	 14	21	14	; slot21.unit_name_sweep = slot14
	397	[  0]	TSETS	 13	21	13	; slot21.item_panel_style = slot13
	398	[  0]	TSETS	 11	21	12	; slot21.text_wrap = slot11
	399	[  0]	TSETS	 12	21	11	; slot21.text_color = slot12
	400	[  0]	TSETS	 10	21	10	; slot21.vertical_gradient = slot10
	401	[  0]	TSETS	  9	21	9	; slot21.item_target_badge = slot9
	402	[  0]	TSETS	  8	21	8	; slot21.scrolling_text = slot8
	403	[  0]	TSETS	  7	21	7	; slot21.faction_badge = slot7
	404	[  0]	TSETS	  6	21	6	; slot21.sprite_anchor = slot6
	405	[  0]	TSETS	  0	21	5	; slot21.shadow = slot0
	406	[  0]	TSETS	  1	21	4	; slot21.progress_bar = slot1
	407	[  0]	TSETS	  2	21	3	; slot21.count_impact = slot2
	408	[  0]	TSETS	  3	21	2	; slot21.popup_text = slot3
	409	[  0]	TSETS	  4	21	1	; slot21.core_inventory_hit = slot4
	410	[  0]	TSETS	  5	21	0	; slot21.fps_counter = slot5
	411	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 412
	412	[  0]	RET1 	 21		2	; return slot21
	
