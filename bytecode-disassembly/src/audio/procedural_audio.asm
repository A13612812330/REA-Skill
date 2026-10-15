;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\audio\procedural_audio.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 5 slots
	;;;; constant tables ;;;;
	;;;; instructions ;;;;
	  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
	  2	[  0]	FNEW 	  1		29	; N/A:0-0: 0 args, 0 upvalues, 18 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KNUM 	  0		0	; slot0 = 0.12
		  2	[  0]	KNUM 	  1		1	; slot1 = 44100
		  3	[  0]	GGET 	  2		13	; slot2 = _env["math"]
		  4	[  0]	TGETS	  2	2	12	; slot2 = math.floor
		  5	[  0]	MULVV	  4	0	1	; slot4 = slot0 * slot1
		  6	[  0]	CALL 	  2	2	2	; slot2 = math.floor(slot3)
		  7	[  0]	GGET 	  3		11	; slot3 = _env["love"]
		  8	[  0]	TGETS	  3	3	10	; slot3 = love.sound
		  9	[  0]	TGETS	  3	3	9	; slot3 = love.sound.newSoundData
		 10	[  0]	MOV  	  5		2	; slot5 = slot2
		 11	[  0]	MOV  	  6		1	; slot6 = slot1
		 12	[  0]	KSHORT	  7		16	; slot7 = 16
		 13	[  0]	KSHORT	  8		1	; slot8 = 1
		 14	[  0]	CALL 	  3	2	5	; slot3 = love.sound.newSoundData(slot4, slot5, slot6, slot7)
		 15	[  0]	KSHORT	  4		0	; slot4 = 0
		 16	[  0]	SUBVN	  5	2	2	; slot5 = slot2 - 1
		 17	[  0]	KSHORT	  6		1	; slot6 = 1
		 18	[  0]	FORI 	  4		38	; for slot7 = slot4,slot5,slot6 else goto 57
		 19	[  0]	DIVVV	  8	7	1	; slot8 = slot7 / slot1
		 20	[  0]	GGET 	  9		13	; slot9 = _env["math"]
		 21	[  0]	TGETS	  9	9	8	; slot9 = math.exp
		 22	[  0]	MULNV	 11	8	3	; slot11 = -45 * slot8
		 23	[  0]	CALL 	  9	2	2	; slot9 = math.exp(slot10)
		 24	[  0]	GGET 	 10		13	; slot10 = _env["math"]
		 25	[  0]	TGETS	 10	10	7	; slot10 = math.random
		 26	[  0]	CALL 	 10	2	1	; slot10 = math.random()
		 27	[  0]	MULVN	 10	10	4	; slot10 = math.random * 2
		 28	[  0]	SUBVN	 10	10	2	; slot10 = slot10 - 1
		 29	[  0]	MULVN	 10	10	5	; slot10 = slot10 * 0.08
		 30	[  0]	GGET 	 11		13	; slot11 = _env["math"]
		 31	[  0]	TGETS	 11	11	6	; slot11 = math.sin
		 32	[  0]	GGET 	 13		13	; slot13 = _env["math"]
		 33	[  0]	TGETS	 13	13	5	; slot13 = math.pi
		 34	[  0]	MULNV	 13	13	4	; slot13 = 2 * math.pi
		 35	[  0]	MULVN	 13	13	6	; slot13 = slot13 * 3200
		 36	[  0]	MULVV	 13	13	8	; slot13 = slot13 * slot8
		 37	[  0]	CALL 	 11	2	2	; slot11 = math.sin(slot12)
		 38	[  0]	MULNV	 11	11	7	; slot11 = 0.6 * math.sin
		 39	[  0]	GGET 	 12		13	; slot12 = _env["math"]
		 40	[  0]	TGETS	 12	12	6	; slot12 = math.sin
		 41	[  0]	GGET 	 14		13	; slot14 = _env["math"]
		 42	[  0]	TGETS	 14	14	5	; slot14 = math.pi
		 43	[  0]	MULNV	 14	14	4	; slot14 = 2 * math.pi
		 44	[  0]	MULVN	 14	14	8	; slot14 = slot14 * 4800
		 45	[  0]	MULVV	 14	14	8	; slot14 = slot14 * slot8
		 46	[  0]	CALL 	 12	2	2	; slot12 = math.sin(slot13)
		 47	[  0]	MULNV	 12	12	9	; slot12 = 0.4 * math.sin
		 48	[  0]	ADDVV	 11	11	12	; slot11 = slot11 + slot12
		 49	[  0]	ADDVV	 12	11	10	; slot12 = slot11 + slot10
		 50	[  0]	MULVV	 12	9	12	; slot12 = math.exp * slot12
		 51	[  0]	MOV  	 15		3	; slot15 = slot3
		 52	[  0]	TGETS	 13	3	4	; slot13 = slot3.setSample
		 53	[  0]	MOV  	 16		7	; slot16 = slot7
		 54	[  0]	MOV  	 17		12	; slot17 = slot12
		 55	[  0]	CALL 	 13	1	4	;  = <unknown table>.setSample(slot14, slot15, slot16)
		 56	[  0]	FORL 	  4		-38	; slot7 = slot7 + slot6; if cmp(slot7, sign slot6,  slot5) goto 19
		 57	[  0]	GGET 	  4		3	; slot4 = _env["pcall"]
		 58	[  0]	GGET 	  6		11	; slot6 = _env["love"]
		 59	[  0]	TGETS	  6	6	2	; slot6 = love.audio
		 60	[  0]	TGETS	  6	6	1	; slot6 = love.audio.newSource
		 61	[  0]	MOV  	  7		3	; slot7 = slot3
		 62	[  0]	KSTR 	  8		0	; slot8 = "static"
		 63	[  0]	CALL 	  4	3	4	; slot4, slot5 = pcall(slot5, love.audio.newSource, slot7)
		 64	[  0]	ISF  	   		4	; if not slot4
		 65	[  0]	JMP  	  6		3	; 	goto 69
		 66	[  0]	ISF  	   		5	; if not slot5
		 67	[  0]	JMP  	  6		1	; 	goto 69
		 68	[  0]	RET1 	  5		2	; return slot5
		 69	[  0]	KPRI 	  6		0	; slot6 = nil
		 70	[  0]	RET1 	  6		2	; return slot6
	  3	[  0]	FNEW 	  2		28	; N/A:0-0: 0 args, 0 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KNUM 	  0		0	; slot0 = 0.35
		  2	[  0]	KNUM 	  1		1	; slot1 = 44100
		  3	[  0]	GGET 	  2		12	; slot2 = _env["math"]
		  4	[  0]	TGETS	  2	2	11	; slot2 = math.floor
		  5	[  0]	MULVV	  4	0	1	; slot4 = slot0 * slot1
		  6	[  0]	CALL 	  2	2	2	; slot2 = math.floor(slot3)
		  7	[  0]	GGET 	  3		10	; slot3 = _env["love"]
		  8	[  0]	TGETS	  3	3	9	; slot3 = love.sound
		  9	[  0]	TGETS	  3	3	8	; slot3 = love.sound.newSoundData
		 10	[  0]	MOV  	  5		2	; slot5 = slot2
		 11	[  0]	MOV  	  6		1	; slot6 = slot1
		 12	[  0]	KSHORT	  7		16	; slot7 = 16
		 13	[  0]	KSHORT	  8		1	; slot8 = 1
		 14	[  0]	CALL 	  3	2	5	; slot3 = love.sound.newSoundData(slot4, slot5, slot6, slot7)
		 15	[  0]	KSHORT	  4		0	; slot4 = 0
		 16	[  0]	SUBVN	  5	2	2	; slot5 = slot2 - 1
		 17	[  0]	KSHORT	  6		1	; slot6 = 1
		 18	[  0]	FORI 	  4		50	; for slot7 = slot4,slot5,slot6 else goto 69
		 19	[  0]	DIVVV	  8	7	1	; slot8 = slot7 / slot1
		 20	[  0]	KSHORT	  9		0	; slot9 = 0
		 21	[  0]	KNUM 	 10		3	; slot10 = 0.08
		 22	[  0]	ISGE 	  8		10	; if slot8 >= slot10
		 23	[  0]	JMP  	 10		14	; 	goto 38
		 24	[  0]	GGET 	 10		12	; slot10 = _env["math"]
		 25	[  0]	TGETS	 10	10	7	; slot10 = math.exp
		 26	[  0]	MULNV	 12	8	4	; slot12 = -22 * slot8
		 27	[  0]	CALL 	 10	2	2	; slot10 = math.exp(slot11)
		 28	[  0]	GGET 	 11		12	; slot11 = _env["math"]
		 29	[  0]	TGETS	 11	11	6	; slot11 = math.sin
		 30	[  0]	GGET 	 13		12	; slot13 = _env["math"]
		 31	[  0]	TGETS	 13	13	5	; slot13 = math.pi
		 32	[  0]	MULNV	 13	13	5	; slot13 = 2 * math.pi
		 33	[  0]	MULVN	 13	13	6	; slot13 = slot13 * 523
		 34	[  0]	MULVV	 13	13	8	; slot13 = slot13 * slot8
		 35	[  0]	CALL 	 11	2	2	; slot11 = math.sin(slot12)
		 36	[  0]	MULVV	  9	10	11	; slot9 = math.exp * math.sin
		 37	[  0]	JMP  	 10		25	; 	goto 63
		 38	[  0]	SUBVN	 10	8	3	; slot10 = slot8 - 0.08
		 39	[  0]	GGET 	 11		12	; slot11 = _env["math"]
		 40	[  0]	TGETS	 11	11	7	; slot11 = math.exp
		 41	[  0]	MULNV	 13	10	7	; slot13 = -14 * slot10
		 42	[  0]	CALL 	 11	2	2	; slot11 = math.exp(slot12)
		 43	[  0]	GGET 	 12		12	; slot12 = _env["math"]
		 44	[  0]	TGETS	 12	12	6	; slot12 = math.sin
		 45	[  0]	GGET 	 14		12	; slot14 = _env["math"]
		 46	[  0]	TGETS	 14	14	5	; slot14 = math.pi
		 47	[  0]	MULNV	 14	14	5	; slot14 = 2 * math.pi
		 48	[  0]	MULVN	 14	14	8	; slot14 = slot14 * 659
		 49	[  0]	MULVV	 14	14	10	; slot14 = slot14 * slot10
		 50	[  0]	CALL 	 12	2	2	; slot12 = math.sin(slot13)
		 51	[  0]	MULNV	 12	12	9	; slot12 = 0.85 * math.sin
		 52	[  0]	GGET 	 13		12	; slot13 = _env["math"]
		 53	[  0]	TGETS	 13	13	6	; slot13 = math.sin
		 54	[  0]	GGET 	 15		12	; slot15 = _env["math"]
		 55	[  0]	TGETS	 15	15	5	; slot15 = math.pi
		 56	[  0]	MULNV	 15	15	5	; slot15 = 2 * math.pi
		 57	[  0]	MULVN	 15	15	10	; slot15 = slot15 * 1318
		 58	[  0]	MULVV	 15	15	10	; slot15 = slot15 * slot10
		 59	[  0]	CALL 	 13	2	2	; slot13 = math.sin(slot14)
		 60	[  0]	MULNV	 13	13	11	; slot13 = 0.15 * math.sin
		 61	[  0]	ADDVV	 12	12	13	; slot12 = slot12 + slot13
		 62	[  0]	MULVV	  9	11	12	; slot9 = math.exp * slot12
		 63	[  0]	MOV  	 12		3	; slot12 = slot3
		 64	[  0]	TGETS	 10	3	4	; slot10 = slot3.setSample
		 65	[  0]	MOV  	 13		7	; slot13 = slot7
		 66	[  0]	MULVN	 14	9	12	; slot14 = slot9 * 0.65
		 67	[  0]	CALL 	 10	1	4	;  = <unknown table>.setSample(math.exp, slot12, slot13)
		 68	[  0]	FORL 	  4		-50	; slot7 = slot7 + slot6; if cmp(slot7, sign slot6,  slot5) goto 19
		 69	[  0]	GGET 	  4		3	; slot4 = _env["pcall"]
		 70	[  0]	GGET 	  6		10	; slot6 = _env["love"]
		 71	[  0]	TGETS	  6	6	2	; slot6 = love.audio
		 72	[  0]	TGETS	  6	6	1	; slot6 = love.audio.newSource
		 73	[  0]	MOV  	  7		3	; slot7 = slot3
		 74	[  0]	KSTR 	  8		0	; slot8 = "static"
		 75	[  0]	CALL 	  4	3	4	; slot4, slot5 = pcall(slot5, love.audio.newSource, slot7)
		 76	[  0]	ISF  	   		4	; if not slot4
		 77	[  0]	JMP  	  6		3	; 	goto 81
		 78	[  0]	ISF  	   		5	; if not slot5
		 79	[  0]	JMP  	  6		1	; 	goto 81
		 80	[  0]	RET1 	  5		2	; return slot5
		 81	[  0]	KPRI 	  6		0	; slot6 = nil
		 82	[  0]	RET1 	  6		2	; return slot6
	  4	[  0]	FNEW 	  3		26	; N/A:0-0: 0 args, 0 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		4	; slot0 = _env["love"]
		  2	[  0]	ISF  	   		0	; if not love
		  3	[  0]	JMP  	  1		8	; 	goto 12
		  4	[  0]	GGET 	  0		4	; slot0 = _env["love"]
		  5	[  0]	TGETS	  0	0	3	; slot0 = love.sound
		  6	[  0]	ISF  	   		0	; if not love.sound
		  7	[  0]	JMP  	  1		4	; 	goto 12
		  8	[  0]	GGET 	  0		4	; slot0 = _env["love"]
		  9	[  0]	TGETS	  0	0	2	; slot0 = love.audio
		 10	[  0]	IST  	   		0	; if love.audio
		 11	[  0]	JMP  	  0		2	; 	goto 14
		 12	[  0]	KPRI 	  0		0	; slot0 = nil
		 13	[  0]	UCLO 	  0		10	; nil uvs >= r0; goto 24
		 14	[  0]	GGET 	  0		1	; slot0 = _env["pcall"]
		 15	[  0]	FNEW 	  2		0	; N/A:0-0: 0 args, 0 upvalues, 22 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	KSHORT	  0		22050	; slot0 = 22050
			  2	[  0]	KNUM 	  1		0	; slot1 = 1.15
			  3	[  0]	GGET 	  2		12	; slot2 = _env["math"]
			  4	[  0]	TGETS	  2	2	11	; slot2 = math.floor
			  5	[  0]	MULVV	  4	0	1	; slot4 = slot0 * slot1
			  6	[  0]	CALL 	  2	2	2	; slot2 = math.floor(slot3)
			  7	[  0]	GGET 	  3		10	; slot3 = _env["love"]
			  8	[  0]	TGETS	  3	3	9	; slot3 = love.sound
			  9	[  0]	TGETS	  3	3	8	; slot3 = love.sound.newSoundData
			 10	[  0]	MOV  	  5		2	; slot5 = slot2
			 11	[  0]	MOV  	  6		0	; slot6 = slot0
			 12	[  0]	KSHORT	  7		16	; slot7 = 16
			 13	[  0]	KSHORT	  8		1	; slot8 = 1
			 14	[  0]	CALL 	  3	2	5	; slot3 = love.sound.newSoundData(slot4, slot5, slot6, slot7)
			 15	[  0]	KSHORT	  4		0	; slot4 = 0
			 16	[  0]	SUBVN	  5	2	1	; slot5 = slot2 - 1
			 17	[  0]	KSHORT	  6		1	; slot6 = 1
			 18	[  0]	FORI 	  4		80	; for slot7 = slot4,slot5,slot6 else goto 99
			 19	[  0]	DIVVV	  8	7	0	; slot8 = slot7 / slot0
			 20	[  0]	GGET 	  9		12	; slot9 = _env["math"]
			 21	[  0]	TGETS	  9	9	7	; slot9 = math.min
			 22	[  0]	KSHORT	 11		1	; slot11 = 1
			 23	[  0]	DIVVN	 12	8	2	; slot12 = slot8 / 0.025
			 24	[  0]	CALL 	  9	2	3	; slot9 = math.min(slot10, slot11)
			 25	[  0]	MULVV	 10	9	9	; slot10 = math.min * math.min
			 26	[  0]	MULNV	 11	9	3	; slot11 = 2 * math.min
			 27	[  0]	SUBNV	 11	11	4	; slot11 = 3 - slot11
			 28	[  0]	MULVV	  9	10	11	; slot9 = slot10 * slot11
			 29	[  0]	GGET 	 10		12	; slot10 = _env["math"]
			 30	[  0]	TGETS	 10	10	7	; slot10 = math.min
			 31	[  0]	KSHORT	 12		1	; slot12 = 1
			 32	[  0]	SUBVV	 13	1	8	; slot13 = slot1 - slot8
			 33	[  0]	DIVVN	 13	13	5	; slot13 = slot13 / 0.2
			 34	[  0]	CALL 	 10	2	3	; slot10 = math.min(slot11, slot12)
			 35	[  0]	MULVV	 11	10	10	; slot11 = math.min * math.min
			 36	[  0]	MULNV	 12	10	3	; slot12 = 2 * math.min
			 37	[  0]	SUBNV	 12	12	4	; slot12 = 3 - slot12
			 38	[  0]	MULVV	 10	11	12	; slot10 = slot11 * slot12
			 39	[  0]	GGET 	 11		12	; slot11 = _env["math"]
			 40	[  0]	TGETS	 11	11	6	; slot11 = math.pi
			 41	[  0]	MULNV	 11	11	3	; slot11 = 2 * math.pi
			 42	[  0]	MULNV	 12	8	6	; slot12 = 52 * slot8
			 43	[  0]	GGET 	 13		12	; slot13 = _env["math"]
			 44	[  0]	TGETS	 13	13	5	; slot13 = math.exp
			 45	[  0]	UNM  	 15		8	; slot15 = -slot8
			 46	[  0]	DIVVN	 15	15	7	; slot15 = slot15 / 0.12
			 47	[  0]	CALL 	 13	2	2	; slot13 = math.exp(slot14)
			 48	[  0]	SUBNV	 13	13	1	; slot13 = 1 - math.exp
			 49	[  0]	MULNV	 13	13	8	; slot13 = 3.36 * slot13
			 50	[  0]	ADDVV	 12	12	13	; slot12 = slot12 + slot13
			 51	[  0]	MULVV	 11	11	12	; slot11 = slot11 * slot12
			 52	[  0]	GGET 	 12		12	; slot12 = _env["math"]
			 53	[  0]	TGETS	 12	12	4	; slot12 = math.sin
			 54	[  0]	MOV  	 14		11	; slot14 = slot11
			 55	[  0]	CALL 	 12	2	2	; slot12 = math.sin(slot13)
			 56	[  0]	MULNV	 12	12	9	; slot12 = 0.55 * math.sin
			 57	[  0]	GGET 	 13		12	; slot13 = _env["math"]
			 58	[  0]	TGETS	 13	13	4	; slot13 = math.sin
			 59	[  0]	MULVN	 15	11	3	; slot15 = slot11 * 2
			 60	[  0]	CALL 	 13	2	2	; slot13 = math.sin(slot14)
			 61	[  0]	MULNV	 13	13	10	; slot13 = 0.22 * math.sin
			 62	[  0]	ADDVV	 12	12	13	; slot12 = slot12 + slot13
			 63	[  0]	GGET 	 13		12	; slot13 = _env["math"]
			 64	[  0]	TGETS	 13	13	4	; slot13 = math.sin
			 65	[  0]	MULVN	 15	11	4	; slot15 = slot11 * 3
			 66	[  0]	CALL 	 13	2	2	; slot13 = math.sin(slot14)
			 67	[  0]	MULNV	 13	13	11	; slot13 = 0.1 * math.sin
			 68	[  0]	ADDVV	 12	12	13	; slot12 = slot12 + slot13
			 69	[  0]	GGET 	 13		12	; slot13 = _env["math"]
			 70	[  0]	TGETS	 13	13	4	; slot13 = math.sin
			 71	[  0]	GGET 	 15		12	; slot15 = _env["math"]
			 72	[  0]	TGETS	 15	15	6	; slot15 = math.pi
			 73	[  0]	MULNV	 15	15	3	; slot15 = 2 * math.pi
			 74	[  0]	MULVN	 15	15	12	; slot15 = slot15 * 208
			 75	[  0]	MULVV	 15	15	8	; slot15 = slot15 * slot8
			 76	[  0]	CALL 	 13	2	2	; slot13 = math.sin(slot14)
			 77	[  0]	MULNV	 13	13	11	; slot13 = 0.1 * math.sin
			 78	[  0]	GGET 	 14		12	; slot14 = _env["math"]
			 79	[  0]	TGETS	 14	14	5	; slot14 = math.exp
			 80	[  0]	UNM  	 16		8	; slot16 = -slot8
			 81	[  0]	MULVN	 16	16	13	; slot16 = slot16 * 4
			 82	[  0]	CALL 	 14	2	2	; slot14 = math.exp(slot15)
			 83	[  0]	MULVV	 13	13	14	; slot13 = slot13 * math.exp
			 84	[  0]	MOV  	 16		3	; slot16 = slot3
			 85	[  0]	TGETS	 14	3	3	; slot14 = slot3.setSample
			 86	[  0]	MOV  	 17		7	; slot17 = slot7
			 87	[  0]	ADDVV	 18	12	13	; slot18 = slot12 + slot13
			 88	[  0]	MULVV	 18	18	9	; slot18 = slot18 * slot9
			 89	[  0]	MULVV	 18	18	10	; slot18 = slot18 * slot10
			 90	[  0]	GGET 	 19		12	; slot19 = _env["math"]
			 91	[  0]	TGETS	 19	19	5	; slot19 = math.exp
			 92	[  0]	UNM  	 21		8	; slot21 = -slot8
			 93	[  0]	MULVN	 21	21	14	; slot21 = slot21 * 2.3
			 94	[  0]	CALL 	 19	2	2	; slot19 = math.exp(slot20)
			 95	[  0]	MULVV	 18	18	19	; slot18 = slot18 * math.exp
			 96	[  0]	MULVN	 18	18	15	; slot18 = slot18 * 0.65
			 97	[  0]	CALL 	 14	1	4	;  = <unknown table>.setSample(slot15, slot16, slot17)
			 98	[  0]	FORL 	  4		-80	; slot7 = slot7 + slot6; if cmp(slot7, sign slot6,  slot5) goto 19
			 99	[  0]	GGET 	  4		10	; slot4 = _env["love"]
			100	[  0]	TGETS	  4	4	2	; slot4 = love.audio
			101	[  0]	TGETS	  4	4	1	; slot4 = love.audio.newSource
			102	[  0]	MOV  	  6		3	; slot6 = slot3
			103	[  0]	KSTR 	  7		0	; slot7 = "static"
			104	[  0]	CALLT	  4		3	; return love.audio.newSource(slot5, slot6)
		 16	[  0]	CALL 	  0	3	2	; slot0, slot1 = pcall(slot1)
		 17	[  0]	ISF  	   		0	; if not slot0
		 18	[  0]	JMP  	  2		2	; 	goto 21
		 19	[  0]	ISTC 	  2		1	; slot2 = slot1; if slot1
		 20	[  0]	JMP  	  2		1	; 	goto 22
		 21	[  0]	KPRI 	  2		0	; slot2 = nil
		 22	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 23
		 23	[  0]	RET1 	  2		2	; return slot2
		 24	[  0]	RET1 	  0		2	; return slot0
	  5	[  0]	TSETS	  3	0	27	; slot0.createSovereignPressureTone = slot3
	  6	[  0]	KNUM 	  3		0	; slot3 = 0.68
	  7	[  0]	TSETS	  3	0	25	; slot0.AWAKEN_STAR_POP = slot3
	  8	[  0]	FNEW 	  3		23	; N/A:0-0: 0 args, 1 upvalues, 34 slots
		
		;;;; constant tables ;;;;
		ktable#2 = [
			#1: 2637.02,
			#2: 3951.07,
			#3: 3322.44,
			]
		
		
		ktable#3 = [
			#1: 1661.22,
			#2: 1975.53,
			#3: 2637.02,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		18	; slot0 = _env["love"]
		  2	[  0]	ISF  	   		0	; if not love
		  3	[  0]	JMP  	  1		9	; 	goto 13
		  4	[  0]	GGET 	  0		18	; slot0 = _env["love"]
		  5	[  0]	TGETS	  0	0	17	; slot0 = love.sound
		  6	[  0]	ISF  	   		0	; if not love.sound
		  7	[  0]	JMP  	  1		5	; 	goto 13
		  8	[  0]	GGET 	  0		18	; slot0 = _env["love"]
		  9	[  0]	TGETS	  0	0	17	; slot0 = love.sound
		 10	[  0]	TGETS	  0	0	16	; slot0 = love.sound.newSoundData
		 11	[  0]	IST  	   		0	; if love.sound.newSoundData
		 12	[  0]	JMP  	  0		2	; 	goto 15
		 13	[  0]	KPRI 	  0		0	; slot0 = nil
		 14	[  0]	UCLO 	  0		341	; nil uvs >= r0; goto 356
		 15	[  0]	KNUM 	  0		0	; slot0 = 44100
		 16	[  0]	KNUM 	  1		1	; slot1 = 2.45
		 17	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 18	[  0]	TGETS	  2	2	15	; slot2 = uv0"unknown".AWAKEN_STAR_POP
		 19	[  0]	GGET 	  3		14	; slot3 = _env["math"]
		 20	[  0]	TGETS	  3	3	13	; slot3 = math.floor
		 21	[  0]	MULVV	  5	0	1	; slot5 = slot0 * slot1
		 22	[  0]	CALL 	  3	2	2	; slot3 = math.floor(slot4)
		 23	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 24	[  0]	KSHORT	  5		1	; slot5 = 1
		 25	[  0]	MOV  	  6		3	; slot6 = math.floor
		 26	[  0]	KSHORT	  7		1	; slot7 = 1
		 27	[  0]	FORI 	  5		3	; for slot8 = slot5,slot6,slot7 else goto 31
		 28	[  0]	KSHORT	  9		0	; slot9 = 0
		 29	[  0]	TSETV	  9	4	8	; slot4[slot8] = slot9
		 30	[  0]	FORL 	  5		-3	; slot8 = slot8 + slot7; if cmp(slot8, sign slot7,  math.floor) goto 28
		 31	[  0]	GGET 	  5		14	; slot5 = _env["math"]
		 32	[  0]	TGETS	  5	5	12	; slot5 = math.sin
		 33	[  0]	GGET 	  6		14	; slot6 = _env["math"]
		 34	[  0]	TGETS	  6	6	11	; slot6 = math.exp
		 35	[  0]	GGET 	  7		14	; slot7 = _env["math"]
		 36	[  0]	TGETS	  7	7	10	; slot7 = math.pi
		 37	[  0]	MULVN	  7	7	2	; slot7 = math.pi * 2
		 38	[  0]	FNEW 	  8		9	; N/A:0-0: 5 args, 6 upvalues, 19 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  5		4	; slot5 = _env["math"]
			  2	[  0]	TGETS	  5	5	3	; slot5 = math.floor
			  3	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
			  4	[  0]	MULVV	  7	0	7	; slot7 = slot0 * uv0"unknown"
			  5	[  0]	CALL 	  5	2	2	; slot5 = math.floor(slot6)
			  6	[  0]	GGET 	  6		4	; slot6 = _env["math"]
			  7	[  0]	TGETS	  6	6	2	; slot6 = math.min
			  8	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
			  9	[  0]	SUBVN	  8	8	0	; slot8 = uv1"unknown" - 1
			 10	[  0]	GGET 	  9		4	; slot9 = _env["math"]
			 11	[  0]	TGETS	  9	9	3	; slot9 = math.floor
			 12	[  0]	GGET 	 11		4	; slot11 = _env["math"]
			 13	[  0]	TGETS	 11	11	1	; slot11 = math.log
			 14	[  0]	DIVVN	 13	2	1	; slot13 = slot2 / 0.0001
			 15	[  0]	CALL 	 11	2	2	; slot11 = math.log(slot12)
			 16	[  0]	DIVVV	 11	11	3	; slot11 = math.log / slot3
			 17	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
			 18	[  0]	MULVV	 11	11	12	; slot11 = slot11 * uv0"unknown"
			 19	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
			 20	[  0]	ADDVV	  9	5	9	; slot9 = math.floor + math.floor
			 21	[  0]	CALL 	  6	2	3	; slot6 = math.min(slot7, slot8)
			 22	[  0]	IST  	   		4	; if slot4
			 23	[  0]	JMP  	  7		1	; 	goto 25
			 24	[  0]	KNUM 	  4		2	; slot4 = 0.003
			 25	[  0]	GGET 	  7		4	; slot7 = _env["math"]
			 26	[  0]	TGETS	  7	7	0	; slot7 = math.max
			 27	[  0]	KSHORT	  9		0	; slot9 = 0
			 28	[  0]	MOV  	 10		5	; slot10 = math.floor
			 29	[  0]	CALL 	  7	2	3	; slot7 = math.max(slot8, slot9)
			 30	[  0]	MOV  	  8		6	; slot8 = math.min
			 31	[  0]	KSHORT	  9		1	; slot9 = 1
			 32	[  0]	FORI 	  7		26	; for math.floor = slot7,slot8,slot9 else goto 59
			 33	[  0]	SUBVV	 11	10	5	; slot11 = slot10 - math.floor
			 34	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
			 35	[  0]	DIVVV	 11	11	12	; slot11 = slot11 / uv0"unknown"
			 36	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
			 37	[  0]	UNM  	 14		3	; slot14 = -slot3
			 38	[  0]	MULVV	 14	14	11	; slot14 = slot14 * slot11
			 39	[  0]	CALL 	 12	2	2	; slot12 = uv2"unknown"(slot13)
			 40	[  0]	MULVV	 12	2	12	; slot12 = slot2 * uv2"unknown"
			 41	[  0]	ISGE 	 11		4	; if slot11 >= slot4
			 42	[  0]	JMP  	 13		2	; 	goto 45
			 43	[  0]	MULVV	 13	12	11	; slot13 = slot12 * slot11
			 44	[  0]	DIVVV	 12	13	4	; slot12 = slot13 / slot4
			 45	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
			 46	[  0]	ADDVN	 14	10	0	; slot14 = slot10 + 1
			 47	[  0]	UGET 	 15		3	; slot15 = uv3"unknwon"
			 48	[  0]	ADDVN	 16	10	0	; slot16 = slot10 + 1
			 49	[  0]	TGETV	 15	15	16	; slot15 = uv3"unknown"[slot16]
			 50	[  0]	UGET 	 16		4	; slot16 = uv4"unknwon"
			 51	[  0]	UGET 	 18		5	; slot18 = uv5"unknwon"
			 52	[  0]	MULVV	 18	18	1	; slot18 = uv5"unknown" * slot1
			 53	[  0]	MULVV	 18	18	11	; slot18 = slot18 * slot11
			 54	[  0]	CALL 	 16	2	2	; slot16 = uv4"unknown"(slot17)
			 55	[  0]	MULVV	 16	12	16	; slot16 = slot12 * uv4"unknown"
			 56	[  0]	ADDVV	 15	15	16	; slot15 = slot15 + slot16
			 57	[  0]	TSETV	 15	13	14	; uv3"unknown"[slot14] = slot15
			 58	[  0]	FORL 	  7		-26	; slot10 = slot10 + slot9; if cmp(slot10, sign slot9,  slot8) goto 33
			 59	[  0]	RET0 	  0		1	; return
		 39	[  0]	FNEW 	  9		8	; N/A:0-0: 4 args, 1 upvalues, 10 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			  2	[  0]	MOV  	  6		0	; slot6 = slot0
			  3	[  0]	MULVN	  7	1	0	; slot7 = slot1 * 1.0009
			  4	[  0]	MULVN	  8	2	1	; slot8 = slot2 * 0.7
			  5	[  0]	MOV  	  9		3	; slot9 = slot3
			  6	[  0]	CALL 	  4	1	5	;  = uv0"unknown"(slot5, slot6, slot7, slot8)
			  7	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			  8	[  0]	MOV  	  6		0	; slot6 = slot0
			  9	[  0]	MULVN	  7	1	2	; slot7 = slot1 * 0.9991
			 10	[  0]	MULVN	  8	2	3	; slot8 = slot2 * 0.3
			 11	[  0]	MOV  	  9		3	; slot9 = slot3
			 12	[  0]	CALL 	  4	1	5	;  = uv0"unknown"(slot5, slot6, slot7, slot8)
			 13	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			 14	[  0]	MOV  	  6		0	; slot6 = slot0
			 15	[  0]	MULVN	  7	1	4	; slot7 = slot1 * 2
			 16	[  0]	MULVN	  8	2	5	; slot8 = slot2 * 0.28
			 17	[  0]	MULVN	  9	3	6	; slot9 = slot3 * 1.5
			 18	[  0]	CALL 	  4	1	5	;  = uv0"unknown"(slot5, slot6, slot7, slot8)
			 19	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			 20	[  0]	MOV  	  6		0	; slot6 = slot0
			 21	[  0]	MULVN	  7	1	7	; slot7 = slot1 * 2.76
			 22	[  0]	MULVN	  8	2	8	; slot8 = slot2 * 0.18
			 23	[  0]	MULVN	  9	3	9	; slot9 = slot3 * 2.2
			 24	[  0]	CALL 	  4	1	5	;  = uv0"unknown"(slot5, slot6, slot7, slot8)
			 25	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			 26	[  0]	MOV  	  6		0	; slot6 = slot0
			 27	[  0]	MULVN	  7	1	10	; slot7 = slot1 * 4.07
			 28	[  0]	MULVN	  8	2	11	; slot8 = slot2 * 0.09
			 29	[  0]	MULVN	  9	3	12	; slot9 = slot3 * 3.4
			 30	[  0]	CALL 	  4	1	5	;  = uv0"unknown"(slot5, slot6, slot7, slot8)
			 31	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			 32	[  0]	MOV  	  6		0	; slot6 = slot0
			 33	[  0]	MULVN	  7	1	13	; slot7 = slot1 * 5.4
			 34	[  0]	MULVN	  8	2	14	; slot8 = slot2 * 0.04
			 35	[  0]	MULVN	  9	3	15	; slot9 = slot3 * 4.8
			 36	[  0]	CALL 	  4	1	5	;  = uv0"unknown"(slot5, slot6, slot7, slot8)
			 37	[  0]	RET0 	  0		1	; return
		 40	[  0]	KNUM 	 10		3	; slot10 = 90731
		 41	[  0]	KSHORT	 11		0	; slot11 = 0
		 42	[  0]	KSHORT	 12		0	; slot12 = 0
		 43	[  0]	KNUM 	 13		4	; slot13 = 0.02
		 44	[  0]	SUBVN	 14	2	5	; slot14 = uv0"unknown".AWAKEN_STAR_POP - 0.015
		 45	[  0]	GGET 	 15		14	; slot15 = _env["math"]
		 46	[  0]	TGETS	 15	15	13	; slot15 = math.floor
		 47	[  0]	MULVV	 17	13	0	; slot17 = slot13 * slot0
		 48	[  0]	CALL 	 15	2	2	; slot15 = math.floor(slot16)
		 49	[  0]	GGET 	 16		14	; slot16 = _env["math"]
		 50	[  0]	TGETS	 16	16	13	; slot16 = math.floor
		 51	[  0]	MULVV	 18	14	0	; slot18 = slot14 * slot0
		 52	[  0]	CALL 	 16	2	2	; slot16 = math.floor(slot17)
		 53	[  0]	KSHORT	 17		1	; slot17 = 1
		 54	[  0]	FORI 	 15		62	; for slot18 = slot15,slot16,slot17 else goto 117
		 55	[  0]	DIVVV	 19	18	0	; slot19 = slot18 / slot0
		 56	[  0]	SUBVV	 20	19	13	; slot20 = slot19 - slot13
		 57	[  0]	SUBVV	 21	14	13	; slot21 = slot14 - slot13
		 58	[  0]	DIVVV	 20	20	21	; slot20 = slot20 / slot21
		 59	[  0]	GGET 	 21		14	; slot21 = _env["math"]
		 60	[  0]	TGETS	 21	21	7	; slot21 = math.max
		 61	[  0]	KSHORT	 23		0	; slot23 = 0
		 62	[  0]	SUBVN	 24	19	6	; slot24 = slot19 - 0.04
		 63	[  0]	SUBVN	 25	2	6	; slot25 = uv0"unknown".AWAKEN_STAR_POP - 0.04
		 64	[  0]	DIVVV	 24	24	25	; slot24 = slot24 / slot25
		 65	[  0]	CALL 	 21	2	3	; slot21 = math.max(slot22, slot23)
		 66	[  0]	KNUM 	 22		7	; slot22 = 1.25
		 67	[  0]	POW  	 21	21	22	; slot21 = math.max ^ slot22 (pow)
		 68	[  0]	MULVN	 22	21	8	; slot22 = slot21 * 1.6
		 69	[  0]	MULVV	 22	22	7	; slot22 = slot22 * slot7
		 70	[  0]	MULVN	 23	19	2	; slot23 = slot19 * 2
		 71	[  0]	ADDVV	 22	22	23	; slot22 = slot22 + slot23
		 72	[  0]	MULVN	 23	10	9	; slot23 = slot10 * 16807
		 73	[  0]	MODVN	 10	23	10	; slot10 = slot23 % 2147483647
		 74	[  0]	MOV  	 23		5	; slot23 = math.sin
		 75	[  0]	GGET 	 25		14	; slot25 = _env["math"]
		 76	[  0]	TGETS	 25	25	10	; slot25 = math.pi
		 77	[  0]	KNUM 	 26		11	; slot26 = 8.615384615384615
		 78	[  0]	POW  	 26	26	20	; slot26 = slot26 ^ slot20 (pow)
		 79	[  0]	MULNV	 26	26	12	; slot26 = 650 * slot26
		 80	[  0]	MULVV	 25	25	26	; slot25 = math.pi * slot26
		 81	[  0]	DIVVV	 25	25	0	; slot25 = slot25 / slot0
		 82	[  0]	CALL 	 23	2	2	; slot23 = math.sin(slot24)
		 83	[  0]	MULNV	 23	23	2	; slot23 = 2 * math.sin
		 84	[  0]	MULVV	 24	23	12	; slot24 = slot23 * slot12
		 85	[  0]	ADDVV	 11	11	24	; slot11 = slot11 + slot24
		 86	[  0]	DIVVN	 24	10	13	; slot24 = slot10 / 1073741823.5
		 87	[  0]	SUBVN	 24	24	14	; slot24 = slot24 - 1
		 88	[  0]	SUBVV	 24	24	11	; slot24 = slot24 - slot11
		 89	[  0]	MULNV	 25	12	15	; slot25 = 0.9 * slot12
		 90	[  0]	SUBVV	 24	24	25	; slot24 = slot24 - slot25
		 91	[  0]	MULVV	 24	23	24	; slot24 = slot23 * slot24
		 92	[  0]	ADDVV	 12	12	24	; slot12 = slot12 + slot24
		 93	[  0]	KNUM 	 24		16	; slot24 = 1.5
		 94	[  0]	POW  	 24	20	24	; slot24 = slot20 ^ slot24 (pow)
		 95	[  0]	GGET 	 25		14	; slot25 = _env["math"]
		 96	[  0]	TGETS	 25	25	6	; slot25 = math.cos
		 97	[  0]	MULNV	 27	22	2	; slot27 = 2 * slot22
		 98	[  0]	CALL 	 25	2	2	; slot25 = math.cos(slot26)
		 99	[  0]	MULNV	 25	25	17	; slot25 = 0.35 * math.cos
		100	[  0]	ADDNV	 25	25	18	; slot25 = 0.65 + slot25
		101	[  0]	MULVV	 24	24	25	; slot24 = slot24 * slot25
		102	[  0]	GGET 	 25		14	; slot25 = _env["math"]
		103	[  0]	TGETS	 25	25	5	; slot25 = math.min
		104	[  0]	KSHORT	 27		1	; slot27 = 1
		105	[  0]	SUBNV	 28	20	14	; slot28 = 1 - slot20
		106	[  0]	MULVN	 28	28	19	; slot28 = slot28 * 18
		107	[  0]	CALL 	 25	2	3	; slot25 = math.min(slot26, slot27)
		108	[  0]	MULVV	 24	24	25	; slot24 = slot24 * math.min
		109	[  0]	ADDVN	 25	18	14	; slot25 = slot18 + 1
		110	[  0]	ADDVN	 26	18	14	; slot26 = slot18 + 1
		111	[  0]	TGETV	 26	4	26	; slot26 = slot4[slot26]
		112	[  0]	MULVV	 27	12	24	; slot27 = slot12 * slot24
		113	[  0]	MULVN	 27	27	20	; slot27 = slot27 * 0.32
		114	[  0]	ADDVV	 26	26	27	; slot26 = slot26 + slot27
		115	[  0]	TSETV	 26	4	25	; slot4[slot25] = slot26
		116	[  0]	FORL 	 15		-62	; slot18 = slot18 + slot17; if cmp(slot18, sign slot17,  slot16) goto 55
		117	[  0]	GGET 	 15		14	; slot15 = _env["math"]
		118	[  0]	TGETS	 15	15	13	; slot15 = math.floor
		119	[  0]	MULNV	 17	0	21	; slot17 = 0.08 * slot0
		120	[  0]	CALL 	 15	2	2	; slot15 = math.floor(slot16)
		121	[  0]	GGET 	 16		14	; slot16 = _env["math"]
		122	[  0]	TGETS	 16	16	13	; slot16 = math.floor
		123	[  0]	SUBVN	 18	2	5	; slot18 = uv0"unknown".AWAKEN_STAR_POP - 0.015
		124	[  0]	MULVV	 18	18	0	; slot18 = slot18 * slot0
		125	[  0]	CALL 	 16	2	2	; slot16 = math.floor(slot17)
		126	[  0]	KSHORT	 17		0	; slot17 = 0
		127	[  0]	MOV  	 18		15	; slot18 = math.floor
		128	[  0]	MOV  	 19		16	; slot19 = math.floor
		129	[  0]	KSHORT	 20		1	; slot20 = 1
		130	[  0]	FORI 	 18		44	; for slot21 = slot18,slot19,slot20 else goto 175
		131	[  0]	SUBVV	 22	21	15	; slot22 = slot21 - math.floor
		132	[  0]	SUBVV	 23	16	15	; slot23 = math.floor - math.floor
		133	[  0]	DIVVV	 22	22	23	; slot22 = slot22 / slot23
		134	[  0]	KNUM 	 23		8	; slot23 = 1.6
		135	[  0]	POW  	 23	22	23	; slot23 = slot22 ^ slot23 (pow)
		136	[  0]	KNUM 	 24		22	; slot24 = 2.9932424242424243
		137	[  0]	POW  	 23	24	23	; slot23 = slot24 ^ slot23 (pow)
		138	[  0]	MULNV	 23	23	23	; slot23 = 330 * slot23
		139	[  0]	MOV  	 24		5	; slot24 = math.sin
		140	[  0]	MULVN	 26	7	24	; slot26 = slot7 * 6
		141	[  0]	MULVV	 26	26	21	; slot26 = slot26 * slot21
		142	[  0]	DIVVV	 26	26	0	; slot26 = slot26 / slot0
		143	[  0]	CALL 	 24	2	2	; slot24 = math.sin(slot25)
		144	[  0]	MULNV	 24	24	25	; slot24 = 0.004 * math.sin
		145	[  0]	ADDNV	 24	24	14	; slot24 = 1 + slot24
		146	[  0]	MULVV	 23	23	24	; slot23 = slot23 * slot24
		147	[  0]	MULVV	 24	7	23	; slot24 = slot7 * slot23
		148	[  0]	DIVVV	 24	24	0	; slot24 = slot24 / slot0
		149	[  0]	ADDVV	 17	17	24	; slot17 = slot17 + slot24
		150	[  0]	KSHORT	 24		2	; slot24 = 2
		151	[  0]	POW  	 24	22	24	; slot24 = slot22 ^ slot24 (pow)
		152	[  0]	MULNV	 24	24	26	; slot24 = 0.05 * slot24
		153	[  0]	GGET 	 25		14	; slot25 = _env["math"]
		154	[  0]	TGETS	 25	25	5	; slot25 = math.min
		155	[  0]	KSHORT	 27		1	; slot27 = 1
		156	[  0]	SUBNV	 28	22	14	; slot28 = 1 - slot22
		157	[  0]	MULVN	 28	28	27	; slot28 = slot28 * 20
		158	[  0]	CALL 	 25	2	3	; slot25 = math.min(slot26, slot27)
		159	[  0]	MULVV	 24	24	25	; slot24 = slot24 * math.min
		160	[  0]	ADDVN	 25	21	14	; slot25 = slot21 + 1
		161	[  0]	ADDVN	 26	21	14	; slot26 = slot21 + 1
		162	[  0]	TGETV	 26	4	26	; slot26 = slot4[slot26]
		163	[  0]	MOV  	 27		5	; slot27 = math.sin
		164	[  0]	MOV  	 29		17	; slot29 = slot17
		165	[  0]	CALL 	 27	2	2	; slot27 = math.sin(slot28)
		166	[  0]	MOV  	 28		5	; slot28 = math.sin
		167	[  0]	MULVN	 30	17	16	; slot30 = slot17 * 1.5
		168	[  0]	CALL 	 28	2	2	; slot28 = math.sin(slot29)
		169	[  0]	MULNV	 28	28	28	; slot28 = 0.6 * math.sin
		170	[  0]	ADDVV	 27	27	28	; slot27 = math.sin + slot28
		171	[  0]	MULVV	 27	24	27	; slot27 = slot24 * slot27
		172	[  0]	ADDVV	 26	26	27	; slot26 = slot26 + slot27
		173	[  0]	TSETV	 26	4	25	; slot4[slot25] = slot26
		174	[  0]	FORL 	 18		-44	; slot21 = slot21 + slot20; if cmp(slot21, sign slot20,  slot19) goto 131
		175	[  0]	GGET 	 15		14	; slot15 = _env["math"]
		176	[  0]	TGETS	 15	15	13	; slot15 = math.floor
		177	[  0]	MULVV	 17	2	0	; slot17 = uv0"unknown".AWAKEN_STAR_POP * slot0
		178	[  0]	CALL 	 15	2	2	; slot15 = math.floor(math.floor)
		179	[  0]	KSHORT	 16		0	; slot16 = 0
		180	[  0]	KSHORT	 17		0	; slot17 = 0
		181	[  0]	MOV  	 18		15	; slot18 = math.floor
		182	[  0]	GGET 	 19		14	; slot19 = _env["math"]
		183	[  0]	TGETS	 19	19	5	; slot19 = math.min
		184	[  0]	SUBVN	 21	3	14	; slot21 = math.floor - 1
		185	[  0]	GGET 	 22		14	; slot22 = _env["math"]
		186	[  0]	TGETS	 22	22	13	; slot22 = math.floor
		187	[  0]	MULNV	 24	0	29	; slot24 = 0.16 * slot0
		188	[  0]	CALL 	 22	2	2	; slot22 = math.floor(slot23)
		189	[  0]	ADDVV	 22	15	22	; slot22 = math.floor + math.floor
		190	[  0]	CALL 	 19	2	3	; slot19 = math.min(slot20, slot21)
		191	[  0]	KSHORT	 20		1	; slot20 = 1
		192	[  0]	FORI 	 18		42	; for slot21 = slot18,slot19,slot20 else goto 235
		193	[  0]	SUBVV	 22	21	15	; slot22 = slot21 - math.floor
		194	[  0]	DIVVV	 22	22	0	; slot22 = slot22 / slot0
		195	[  0]	MULVN	 23	10	9	; slot23 = slot10 * 16807
		196	[  0]	MODVN	 10	23	10	; slot10 = slot23 % 2147483647
		197	[  0]	DIVVN	 23	10	13	; slot23 = slot10 / 1073741823.5
		198	[  0]	SUBVN	 23	23	14	; slot23 = slot23 - 1
		199	[  0]	SUBVV	 24	23	16	; slot24 = slot23 - slot16
		200	[  0]	MULVN	 24	24	30	; slot24 = slot24 * 0.5
		201	[  0]	MOV  	 25		6	; slot25 = math.exp
		202	[  0]	MULNV	 27	22	31	; slot27 = -700 * slot22
		203	[  0]	CALL 	 25	2	2	; slot25 = math.exp(slot26)
		204	[  0]	MULVV	 24	24	25	; slot24 = slot24 * math.exp
		205	[  0]	MOV  	 16		23	; slot16 = slot23
		206	[  0]	MOV  	 25		6	; slot25 = math.exp
		207	[  0]	MULNV	 27	22	32	; slot27 = -28 * slot22
		208	[  0]	CALL 	 25	2	2	; slot25 = math.exp(slot26)
		209	[  0]	MULNV	 25	25	33	; slot25 = 150 * math.exp
		210	[  0]	ADDNV	 25	25	34	; slot25 = 70 + slot25
		211	[  0]	MULVV	 25	7	25	; slot25 = slot7 * slot25
		212	[  0]	DIVVV	 25	25	0	; slot25 = slot25 / slot0
		213	[  0]	ADDVV	 17	17	25	; slot17 = slot17 + slot25
		214	[  0]	MOV  	 25		6	; slot25 = math.exp
		215	[  0]	MULNV	 27	22	35	; slot27 = -24 * slot22
		216	[  0]	CALL 	 25	2	2	; slot25 = math.exp(slot26)
		217	[  0]	MULNV	 25	25	36	; slot25 = 0.42 * math.exp
		218	[  0]	GGET 	 26		14	; slot26 = _env["math"]
		219	[  0]	TGETS	 26	26	5	; slot26 = math.min
		220	[  0]	KSHORT	 28		1	; slot28 = 1
		221	[  0]	DIVVN	 29	22	37	; slot29 = slot22 / 0.002
		222	[  0]	CALL 	 26	2	3	; slot26 = math.min(slot27, slot28)
		223	[  0]	MULVV	 25	25	26	; slot25 = slot25 * math.min
		224	[  0]	MOV  	 26		5	; slot26 = math.sin
		225	[  0]	MOV  	 28		17	; slot28 = slot17
		226	[  0]	CALL 	 26	2	2	; slot26 = math.sin(slot27)
		227	[  0]	MULVV	 25	25	26	; slot25 = slot25 * math.sin
		228	[  0]	ADDVN	 26	21	14	; slot26 = slot21 + 1
		229	[  0]	ADDVN	 27	21	14	; slot27 = slot21 + 1
		230	[  0]	TGETV	 27	4	27	; slot27 = slot4[slot27]
		231	[  0]	ADDVV	 27	27	24	; slot27 = slot27 + slot24
		232	[  0]	ADDVV	 27	27	25	; slot27 = slot27 + slot25
		233	[  0]	TSETV	 27	4	26	; slot4[slot26] = slot27
		234	[  0]	FORL 	 18		-42	; slot21 = slot21 + slot20; if cmp(slot21, sign slot20,  slot19) goto 193
		235	[  0]	MOV  	 15		9	; slot15 = slot9
		236	[  0]	MOV  	 17		2	; slot17 = uv0"unknown".AWAKEN_STAR_POP
		237	[  0]	KNUM 	 18		38	; slot18 = 987.77
		238	[  0]	KNUM 	 19		39	; slot19 = 0.55
		239	[  0]	KSHORT	 20		9	; slot20 = 9
		240	[  0]	CALL 	 15	1	5	;  = slot15(slot16, uv0"unknown".AWAKEN_STAR_POP, slot18, slot19)
		241	[  0]	MOV  	 15		9	; slot15 = slot9
		242	[  0]	ADDVN	 17	2	40	; slot17 = uv0"unknown".AWAKEN_STAR_POP + 0.06
		243	[  0]	KNUM 	 18		41	; slot18 = 1318.51
		244	[  0]	KSHORT	 19		1	; slot19 = 1
		245	[  0]	KNUM 	 20		42	; slot20 = 2.6
		246	[  0]	CALL 	 15	1	5	;  = slot15(slot16, slot17, slot18, slot19)
		247	[  0]	GGET 	 15		4	; slot15 = _env["ipairs"]
		248	[  0]	TDUP 	 17		3	; slot17 = copy table#k3
		249	[  0]	CALL 	 15	4	2	; slot15, slot16, slot17 = ipairs(slot16)
		250	[  0]	JMP  	 18		7	; 	goto 258
		251	[  0]	MOV  	 20		8	; slot20 = slot8
		252	[  0]	ADDVN	 22	2	40	; slot22 = uv0"unknown".AWAKEN_STAR_POP + 0.06
		253	[  0]	MOV  	 23		19	; slot23 = slot19
		254	[  0]	KNUM 	 24		43	; slot24 = 0.07
		255	[  0]	KNUM 	 25		44	; slot25 = 1.7
		256	[  0]	KNUM 	 26		45	; slot26 = 0.12
		257	[  0]	CALL 	 20	1	6	;  = slot20(slot21, slot22, slot23, slot24, slot25)
		258	[  0]	ITERC	 18	3	3	; slot18, slot19, slot20 = ipairs, slot16, slot17; slot18, slot19 = ipairs(slot16, slot17)
		259	[  0]	ITERL	 18		-9	; slot17 = slot18; if slot18 != nil goto 251
		260	[  0]	TDUP 	 15		2	; slot15 = copy table#k2
		261	[  0]	KSHORT	 16		0	; slot16 = 0
		262	[  0]	KSHORT	 17		1	; slot17 = 1
		263	[  0]	KSHORT	 18		1	; slot18 = 1
		264	[  0]	FORI 	 16		36	; for slot19 = slot16,slot17,slot18 else goto 301
		265	[  0]	GGET 	 20		4	; slot20 = _env["ipairs"]
		266	[  0]	MOV  	 22		15	; slot22 = slot15
		267	[  0]	CALL 	 20	4	2	; slot20, slot21, slot22 = ipairs(slot21)
		268	[  0]	JMP  	 23		29	; 	goto 298
		269	[  0]	ADDVN	 25	2	46	; slot25 = uv0"unknown".AWAKEN_STAR_POP + 0.14
		270	[  0]	SUBVN	 26	23	14	; slot26 = slot23 - 1
		271	[  0]	MULVN	 26	26	47	; slot26 = slot26 * 0.21
		272	[  0]	ADDVV	 25	25	26	; slot25 = slot25 + slot26
		273	[  0]	MULVN	 26	19	48	; slot26 = slot19 * 0.95
		274	[  0]	ADDVV	 25	25	26	; slot25 = slot25 + slot26
		275	[  0]	ADDVN	 25	25	49	; slot25 = slot25 + 0.03
		276	[  0]	MULVN	 26	23	4	; slot26 = slot23 * 0.02
		277	[  0]	SUBNV	 26	26	50	; slot26 = 0.17 - slot26
		278	[  0]	ISNEN	 19		51	; if slot19 ~= 0
		279	[  0]	JMP  	 27		2	; 	goto 282
		280	[  0]	KSHORT	 27		1	; slot27 = 1
		281	[  0]	JMP  	 28		1	; 	goto 283
		282	[  0]	KNUM 	 27		52	; slot27 = 0.38
		283	[  0]	MULVV	 26	26	27	; slot26 = slot26 * slot27
		284	[  0]	MOV  	 27		8	; slot27 = slot8
		285	[  0]	MOV  	 29		25	; slot29 = slot25
		286	[  0]	MOV  	 30		24	; slot30 = slot24
		287	[  0]	MOV  	 31		26	; slot31 = slot26
		288	[  0]	KSHORT	 32		18	; slot32 = 18
		289	[  0]	KNUM 	 33		37	; slot33 = 0.002
		290	[  0]	CALL 	 27	1	6	;  = slot27(slot28, slot29, slot30, slot31, slot32)
		291	[  0]	MOV  	 27		8	; slot27 = slot8
		292	[  0]	MOV  	 29		25	; slot29 = slot25
		293	[  0]	MULVN	 30	24	2	; slot30 = slot24 * 2
		294	[  0]	MULVN	 31	26	53	; slot31 = slot26 * 0.22
		295	[  0]	KSHORT	 32		30	; slot32 = 30
		296	[  0]	KNUM 	 33		37	; slot33 = 0.002
		297	[  0]	CALL 	 27	1	6	;  = slot27(slot28, slot29, slot30, slot31, slot32)
		298	[  0]	ITERC	 23	3	3	; slot23, slot24, slot25 = ipairs, slot21, slot22; slot23, slot24 = ipairs(slot21, slot22)
		299	[  0]	ITERL	 23		-31	; slot22 = slot23; if slot23 != nil goto 269
		300	[  0]	FORL 	 16		-36	; slot19 = slot19 + slot18; if cmp(slot19, sign slot18,  slot17) goto 265
		301	[  0]	KSHORT	 16		0	; slot16 = 0
		302	[  0]	KSHORT	 17		1	; slot17 = 1
		303	[  0]	MOV  	 18		3	; slot18 = math.floor
		304	[  0]	KSHORT	 19		1	; slot19 = 1
		305	[  0]	FORI 	 17		10	; for ipairs = slot17,slot18,slot19 else goto 316
		306	[  0]	GGET 	 21		14	; slot21 = _env["math"]
		307	[  0]	TGETS	 21	21	7	; slot21 = math.max
		308	[  0]	MOV  	 23		16	; slot23 = slot16
		309	[  0]	GGET 	 24		14	; slot24 = _env["math"]
		310	[  0]	TGETS	 24	24	1	; slot24 = math.abs
		311	[  0]	TGETV	 26	4	20	; slot26 = slot4[ipairs]
		312	[  0]	CALL 	 24	0	2	; MULTRES = math.abs(slot25)
		313	[  0]	CALLM	 21	2	1	; slot21 = math.max(slot22, ...MULTRES)
		314	[  0]	MOV  	 16		21	; slot16 = math.max
		315	[  0]	FORL 	 17		-10	; ipairs = ipairs + slot19; if cmp(ipairs, sign slot19,  math.floor) goto 306
		316	[  0]	KSHORT	 17		0	; slot17 = 0
		317	[  0]	ISGE 	 17		16	; if slot17 >= math.max
		318	[  0]	JMP  	 17		3	; 	goto 322
		319	[  0]	DIVNV	 17	16	54	; slot17 = 0.62 / math.max
		320	[  0]	IST  	   		17	; if slot17
		321	[  0]	JMP  	 18		1	; 	goto 323
		322	[  0]	KSHORT	 17		0	; slot17 = 0
		323	[  0]	GGET 	 18		14	; slot18 = _env["math"]
		324	[  0]	TGETS	 18	18	13	; slot18 = math.floor
		325	[  0]	MULNV	 20	0	21	; slot20 = 0.08 * slot0
		326	[  0]	CALL 	 18	2	2	; slot18 = math.floor(slot19)
		327	[  0]	GGET 	 19		18	; slot19 = _env["love"]
		328	[  0]	TGETS	 19	19	17	; slot19 = love.sound
		329	[  0]	TGETS	 19	19	16	; slot19 = love.sound.newSoundData
		330	[  0]	MOV  	 21		3	; slot21 = math.floor
		331	[  0]	MOV  	 22		0	; slot22 = slot0
		332	[  0]	KSHORT	 23		16	; slot23 = 16
		333	[  0]	KSHORT	 24		1	; slot24 = 1
		334	[  0]	CALL 	 19	2	5	; slot19 = love.sound.newSoundData(slot20, math.floor, slot22, slot23)
		335	[  0]	KSHORT	 20		0	; slot20 = 0
		336	[  0]	SUBVN	 21	3	14	; slot21 = math.floor - 1
		337	[  0]	KSHORT	 22		1	; slot22 = 1
		338	[  0]	FORI 	 20		15	; for slot23 = slot20,slot21,slot22 else goto 354
		339	[  0]	ADDVN	 24	23	14	; slot24 = slot23 + 1
		340	[  0]	TGETV	 24	4	24	; slot24 = slot4[slot24]
		341	[  0]	MULVV	 24	24	17	; slot24 = slot24 * slot17
		342	[  0]	SUBVV	 25	3	18	; slot25 = math.floor - math.floor
		343	[  0]	ISGE 	 25		23	; if slot25 >= slot23
		344	[  0]	JMP  	 25		3	; 	goto 348
		345	[  0]	SUBVV	 25	3	23	; slot25 = math.floor - slot23
		346	[  0]	MULVV	 25	24	25	; slot25 = slot24 * slot25
		347	[  0]	DIVVV	 24	25	18	; slot24 = slot25 / math.floor
		348	[  0]	MOV  	 27		19	; slot27 = love.sound.newSoundData
		349	[  0]	TGETS	 25	19	0	; slot25 = love.sound.newSoundData.setSample
		350	[  0]	MOV  	 28		23	; slot28 = slot23
		351	[  0]	MOV  	 29		24	; slot29 = slot24
		352	[  0]	CALL 	 25	1	4	;  = love.sound.newSoundData.setSample(slot26, love.sound.newSoundData, slot28)
		353	[  0]	FORL 	 20		-15	; slot23 = slot23 + slot22; if cmp(slot23, sign slot22,  slot21) goto 339
		354	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 355
		355	[  0]	RET1 	 19		2	; return love.sound.newSoundData
		356	[  0]	RET1 	  0		2	; return slot0
	  9	[  0]	TSETS	  3	0	24	; slot0.awakeningStarData = slot3
	 10	[  0]	FNEW 	  3		21	; N/A:0-0: 1 args, 1 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		14	; slot1 = _env["love"]
		  2	[  0]	ISF  	   		1	; if not love
		  3	[  0]	JMP  	  2		4	; 	goto 8
		  4	[  0]	GGET 	  1		14	; slot1 = _env["love"]
		  5	[  0]	TGETS	  1	1	13	; slot1 = love.audio
		  6	[  0]	IST  	   		1	; if love.audio
		  7	[  0]	JMP  	  1		1	; 	goto 9
		  8	[  0]	RET0 	  0		1	; return
		  9	[  0]	ISF  	   		0	; if not slot0
		 10	[  0]	JMP  	  1		7	; 	goto 18
		 11	[  0]	TGETS	  1	0	12	; slot1 = slot0.menuSettings
		 12	[  0]	ISF  	   		1	; if not <unknown table>.menuSettings
		 13	[  0]	JMP  	  2		4	; 	goto 18
		 14	[  0]	TGETS	  1	0	12	; slot1 = slot0.menuSettings
		 15	[  0]	TGETS	  1	1	11	; slot1 = <unknown table>.menuSettings.sfxVolume
		 16	[  0]	IST  	   		1	; if <unknown table>.menuSettings.sfxVolume
		 17	[  0]	JMP  	  2		1	; 	goto 19
		 18	[  0]	KSHORT	  1		1	; slot1 = 1
		 19	[  0]	KSHORT	  2		0	; slot2 = 0
		 20	[  0]	ISGT 	  1		2	; if slot1 > slot2
		 21	[  0]	JMP  	  2		1	; 	goto 23
		 22	[  0]	RET0 	  0		1	; return
		 23	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 24	[  0]	TGETS	  2	2	10	; slot2 = uv0"unknown"._vanguardDrum
		 25	[  0]	IST  	   		2	; if uv0"unknown"._vanguardDrum
		 26	[  0]	JMP  	  2		14	; 	goto 41
		 27	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 28	[  0]	GGET 	  3		14	; slot3 = _env["love"]
		 29	[  0]	TGETS	  3	3	13	; slot3 = love.audio
		 30	[  0]	TGETS	  3	3	9	; slot3 = love.audio.newSource
		 31	[  0]	KSTR 	  5		8	; slot5 = "src/audio/battlefield/items/Vanguard Drum.wav"
		 32	[  0]	KSTR 	  6		7	; slot6 = "static"
		 33	[  0]	CALL 	  3	2	3	; slot3 = love.audio.newSource(slot4, slot5)
		 34	[  0]	TSETS	  3	2	10	; uv0"unknown"._vanguardDrum = slot3
		 35	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 36	[  0]	TGETS	  2	2	10	; slot2 = uv0"unknown"._vanguardDrum
		 37	[  0]	MOV  	  4		2	; slot4 = uv0"unknown"._vanguardDrum
		 38	[  0]	TGETS	  2	2	6	; slot2 = uv0"unknown"._vanguardDrum.setLooping
		 39	[  0]	KPRI 	  5		1	; slot5 = false
		 40	[  0]	CALL 	  2	1	3	;  = uv0"unknown"._vanguardDrum.setLooping(slot3, uv0"unknown"._vanguardDrum)
		 41	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 42	[  0]	TGETS	  2	2	10	; slot2 = uv0"unknown"._vanguardDrum
		 43	[  0]	MOV  	  4		2	; slot4 = uv0"unknown"._vanguardDrum
		 44	[  0]	TGETS	  2	2	5	; slot2 = uv0"unknown"._vanguardDrum.stop
		 45	[  0]	CALL 	  2	1	2	;  = uv0"unknown"._vanguardDrum.stop(slot3)
		 46	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 47	[  0]	TGETS	  2	2	10	; slot2 = uv0"unknown"._vanguardDrum
		 48	[  0]	MOV  	  4		2	; slot4 = uv0"unknown"._vanguardDrum
		 49	[  0]	TGETS	  2	2	4	; slot2 = uv0"unknown"._vanguardDrum.setVolume
		 50	[  0]	GGET 	  5		3	; slot5 = _env["math"]
		 51	[  0]	TGETS	  5	5	2	; slot5 = math.max
		 52	[  0]	KSHORT	  7		0	; slot7 = 0
		 53	[  0]	GGET 	  8		3	; slot8 = _env["math"]
		 54	[  0]	TGETS	  8	8	1	; slot8 = math.min
		 55	[  0]	KSHORT	 10		1	; slot10 = 1
		 56	[  0]	MOV  	 11		1	; slot11 = slot1
		 57	[  0]	CALL 	  8	0	3	; MULTRES = math.min(slot9, slot10)
		 58	[  0]	CALLM	  5	2	1	; slot5 = math.max(slot6, ...MULTRES)
		 59	[  0]	MULVN	  5	5	0	; slot5 = math.max * 0.8
		 60	[  0]	CALL 	  2	1	3	;  = uv0"unknown"._vanguardDrum.setVolume(slot3, uv0"unknown"._vanguardDrum)
		 61	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 62	[  0]	TGETS	  2	2	10	; slot2 = uv0"unknown"._vanguardDrum
		 63	[  0]	MOV  	  4		2	; slot4 = uv0"unknown"._vanguardDrum
		 64	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown"._vanguardDrum.play
		 65	[  0]	CALL 	  2	1	2	;  = uv0"unknown"._vanguardDrum.play(slot3)
		 66	[  0]	RET0 	  0		1	; return
	 11	[  0]	TSETS	  3	0	22	; slot0.playVanguardDrum = slot3
	 12	[  0]	FNEW 	  3		19	; N/A:0-0: 1 args, 1 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		14	; slot1 = _env["love"]
		  2	[  0]	ISF  	   		1	; if not love
		  3	[  0]	JMP  	  2		4	; 	goto 8
		  4	[  0]	GGET 	  1		14	; slot1 = _env["love"]
		  5	[  0]	TGETS	  1	1	13	; slot1 = love.audio
		  6	[  0]	IST  	   		1	; if love.audio
		  7	[  0]	JMP  	  1		1	; 	goto 9
		  8	[  0]	RET0 	  0		1	; return
		  9	[  0]	ISF  	   		0	; if not slot0
		 10	[  0]	JMP  	  1		7	; 	goto 18
		 11	[  0]	TGETS	  1	0	12	; slot1 = slot0.menuSettings
		 12	[  0]	ISF  	   		1	; if not <unknown table>.menuSettings
		 13	[  0]	JMP  	  2		4	; 	goto 18
		 14	[  0]	TGETS	  1	0	12	; slot1 = slot0.menuSettings
		 15	[  0]	TGETS	  1	1	11	; slot1 = <unknown table>.menuSettings.sfxVolume
		 16	[  0]	IST  	   		1	; if <unknown table>.menuSettings.sfxVolume
		 17	[  0]	JMP  	  2		1	; 	goto 19
		 18	[  0]	KSHORT	  1		1	; slot1 = 1
		 19	[  0]	KSHORT	  2		0	; slot2 = 0
		 20	[  0]	ISGT 	  1		2	; if slot1 > slot2
		 21	[  0]	JMP  	  2		1	; 	goto 23
		 22	[  0]	RET0 	  0		1	; return
		 23	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 24	[  0]	TGETS	  2	2	10	; slot2 = uv0"unknown"._watchtowerCollapse
		 25	[  0]	IST  	   		2	; if uv0"unknown"._watchtowerCollapse
		 26	[  0]	JMP  	  2		14	; 	goto 41
		 27	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 28	[  0]	GGET 	  3		14	; slot3 = _env["love"]
		 29	[  0]	TGETS	  3	3	13	; slot3 = love.audio
		 30	[  0]	TGETS	  3	3	9	; slot3 = love.audio.newSource
		 31	[  0]	KSTR 	  5		8	; slot5 = "src/audio/battlefield/items/watchtower.wav"
		 32	[  0]	KSTR 	  6		7	; slot6 = "static"
		 33	[  0]	CALL 	  3	2	3	; slot3 = love.audio.newSource(slot4, slot5)
		 34	[  0]	TSETS	  3	2	10	; uv0"unknown"._watchtowerCollapse = slot3
		 35	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 36	[  0]	TGETS	  2	2	10	; slot2 = uv0"unknown"._watchtowerCollapse
		 37	[  0]	MOV  	  4		2	; slot4 = uv0"unknown"._watchtowerCollapse
		 38	[  0]	TGETS	  2	2	6	; slot2 = uv0"unknown"._watchtowerCollapse.setLooping
		 39	[  0]	KPRI 	  5		1	; slot5 = false
		 40	[  0]	CALL 	  2	1	3	;  = uv0"unknown"._watchtowerCollapse.setLooping(slot3, uv0"unknown"._watchtowerCollapse)
		 41	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 42	[  0]	TGETS	  2	2	10	; slot2 = uv0"unknown"._watchtowerCollapse
		 43	[  0]	MOV  	  4		2	; slot4 = uv0"unknown"._watchtowerCollapse
		 44	[  0]	TGETS	  2	2	5	; slot2 = uv0"unknown"._watchtowerCollapse.stop
		 45	[  0]	CALL 	  2	1	2	;  = uv0"unknown"._watchtowerCollapse.stop(slot3)
		 46	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 47	[  0]	TGETS	  2	2	10	; slot2 = uv0"unknown"._watchtowerCollapse
		 48	[  0]	MOV  	  4		2	; slot4 = uv0"unknown"._watchtowerCollapse
		 49	[  0]	TGETS	  2	2	4	; slot2 = uv0"unknown"._watchtowerCollapse.setVolume
		 50	[  0]	GGET 	  5		3	; slot5 = _env["math"]
		 51	[  0]	TGETS	  5	5	2	; slot5 = math.max
		 52	[  0]	KSHORT	  7		0	; slot7 = 0
		 53	[  0]	GGET 	  8		3	; slot8 = _env["math"]
		 54	[  0]	TGETS	  8	8	1	; slot8 = math.min
		 55	[  0]	KSHORT	 10		1	; slot10 = 1
		 56	[  0]	MOV  	 11		1	; slot11 = slot1
		 57	[  0]	CALL 	  8	0	3	; MULTRES = math.min(slot9, slot10)
		 58	[  0]	CALLM	  5	2	1	; slot5 = math.max(slot6, ...MULTRES)
		 59	[  0]	MULVN	  5	5	0	; slot5 = math.max * 0.85
		 60	[  0]	CALL 	  2	1	3	;  = uv0"unknown"._watchtowerCollapse.setVolume(slot3, uv0"unknown"._watchtowerCollapse)
		 61	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 62	[  0]	TGETS	  2	2	10	; slot2 = uv0"unknown"._watchtowerCollapse
		 63	[  0]	MOV  	  4		2	; slot4 = uv0"unknown"._watchtowerCollapse
		 64	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown"._watchtowerCollapse.play
		 65	[  0]	CALL 	  2	1	2	;  = uv0"unknown"._watchtowerCollapse.play(slot3)
		 66	[  0]	RET0 	  0		1	; return
	 13	[  0]	TSETS	  3	0	20	; slot0.playWatchtowerCollapse = slot3
	 14	[  0]	FNEW 	  3		17	; N/A:0-0: 1 args, 1 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		23	; slot1 = _env["love"]
		  2	[  0]	ISF  	   		1	; if not love
		  3	[  0]	JMP  	  2		4	; 	goto 8
		  4	[  0]	GGET 	  1		23	; slot1 = _env["love"]
		  5	[  0]	TGETS	  1	1	22	; slot1 = love.audio
		  6	[  0]	IST  	   		1	; if love.audio
		  7	[  0]	JMP  	  1		1	; 	goto 9
		  8	[  0]	RET0 	  0		1	; return
		  9	[  0]	ISF  	   		0	; if not slot0
		 10	[  0]	JMP  	  1		7	; 	goto 18
		 11	[  0]	TGETS	  1	0	21	; slot1 = slot0.menuSettings
		 12	[  0]	ISF  	   		1	; if not <unknown table>.menuSettings
		 13	[  0]	JMP  	  2		4	; 	goto 18
		 14	[  0]	TGETS	  1	0	21	; slot1 = slot0.menuSettings
		 15	[  0]	TGETS	  1	1	20	; slot1 = <unknown table>.menuSettings.sfxVolume
		 16	[  0]	IST  	   		1	; if <unknown table>.menuSettings.sfxVolume
		 17	[  0]	JMP  	  2		1	; 	goto 19
		 18	[  0]	KSHORT	  1		1	; slot1 = 1
		 19	[  0]	KSHORT	  2		0	; slot2 = 0
		 20	[  0]	ISGT 	  1		2	; if slot1 > slot2
		 21	[  0]	JMP  	  2		1	; 	goto 23
		 22	[  0]	RET0 	  0		1	; return
		 23	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 24	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 25	[  0]	TGETS	  3	3	19	; slot3 = uv0"unknown"._shortExplosionPool
		 26	[  0]	IST  	   		3	; if uv0"unknown"._shortExplosionPool
		 27	[  0]	JMP  	  4		1	; 	goto 29
		 28	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 29	[  0]	TSETS	  3	2	19	; uv0"unknown"._shortExplosionPool = slot3
		 30	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 31	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 32	[  0]	TGETS	  3	3	18	; slot3 = uv0"unknown"._shortExplosionRandom
		 33	[  0]	IST  	   		3	; if uv0"unknown"._shortExplosionRandom
		 34	[  0]	JMP  	  4		4	; 	goto 39
		 35	[  0]	GGET 	  3		23	; slot3 = _env["love"]
		 36	[  0]	TGETS	  3	3	17	; slot3 = love.math
		 37	[  0]	TGETS	  3	3	16	; slot3 = love.math.newRandomGenerator
		 38	[  0]	CALL 	  3	2	1	; slot3 = love.math.newRandomGenerator()
		 39	[  0]	TSETS	  3	2	18	; uv0"unknown"._shortExplosionRandom = love.math.newRandomGenerator
		 40	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 41	[  0]	TGETS	  2	2	19	; slot2 = uv0"unknown"._shortExplosionPool
		 42	[  0]	KPRI 	  3		0	; slot3 = nil
		 43	[  0]	GGET 	  4		15	; slot4 = _env["ipairs"]
		 44	[  0]	MOV  	  6		2	; slot6 = uv0"unknown"._shortExplosionPool
		 45	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		 46	[  0]	JMP  	  7		7	; 	goto 54
		 47	[  0]	MOV  	 11		8	; slot11 = slot8
		 48	[  0]	TGETS	  9	8	14	; slot9 = slot8.isPlaying
		 49	[  0]	CALL 	  9	2	2	; slot9 = <unknown table>.isPlaying(slot10)
		 50	[  0]	IST  	   		9	; if <unknown table>.isPlaying
		 51	[  0]	JMP  	  9		2	; 	goto 54
		 52	[  0]	MOV  	  3		8	; slot3 = slot8
		 53	[  0]	JMP  	  4		2	; 	goto 56
		 54	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, uv0"unknown"._shortExplosionPool; slot7, slot8 = ipairs(slot5, uv0"unknown"._shortExplosionPool)
		 55	[  0]	ITERL	  7		-9	; uv0"unknown"._shortExplosionPool = slot7; if slot7 != nil goto 47
		 56	[  0]	IST  	   		3	; if slot3
		 57	[  0]	JMP  	  4		40	; 	goto 98
		 58	[  0]	LEN  	  4		2	; slot4 = #uv0"unknown"._shortExplosionPool
		 59	[  0]	KSHORT	  5		8	; slot5 = 8
		 60	[  0]	ISGE 	  4		5	; if slot4 >= slot5
		 61	[  0]	JMP  	  4		24	; 	goto 86
		 62	[  0]	TGETB	  4	2	1	; slot4 = uv0"unknown"._shortExplosionPool[1]
		 63	[  0]	ISF  	   		4	; if not slot4
		 64	[  0]	JMP  	  5		6	; 	goto 71
		 65	[  0]	TGETB	  4	2	1	; slot4 = uv0"unknown"._shortExplosionPool[1]
		 66	[  0]	MOV  	  6		4	; slot6 = slot4
		 67	[  0]	TGETS	  4	4	13	; slot4 = slot4.clone
		 68	[  0]	CALL 	  4	2	2	; slot4 = <unknown table>.clone(slot5)
		 69	[  0]	ISTC 	  3		4	; slot3 = <unknown table>.clone; if <unknown table>.clone
		 70	[  0]	JMP  	  5		7	; 	goto 78
		 71	[  0]	GGET 	  4		23	; slot4 = _env["love"]
		 72	[  0]	TGETS	  4	4	22	; slot4 = love.audio
		 73	[  0]	TGETS	  4	4	12	; slot4 = love.audio.newSource
		 74	[  0]	KSTR 	  6		11	; slot6 = "src/audio/battlefield/attacks/explosion/shortexplosion.wav"
		 75	[  0]	KSTR 	  7		10	; slot7 = "static"
		 76	[  0]	CALL 	  4	2	3	; slot4 = love.audio.newSource(slot5, slot6)
		 77	[  0]	MOV  	  3		4	; slot3 = love.audio.newSource
		 78	[  0]	MOV  	  6		3	; slot6 = love.audio.newSource
		 79	[  0]	TGETS	  4	3	9	; slot4 = love.audio.newSource.setLooping
		 80	[  0]	KPRI 	  7		1	; slot7 = false
		 81	[  0]	CALL 	  4	1	3	;  = love.audio.newSource.setLooping(slot5, love.audio.newSource)
		 82	[  0]	LEN  	  4		2	; slot4 = #uv0"unknown"._shortExplosionPool
		 83	[  0]	ADDVN	  4	4	0	; slot4 = slot4 + 1
		 84	[  0]	TSETV	  3	2	4	; uv0"unknown"._shortExplosionPool[slot4] = love.audio.newSource
		 85	[  0]	JMP  	  4		12	; 	goto 98
		 86	[  0]	GGET 	  4		8	; slot4 = _env["table"]
		 87	[  0]	TGETS	  4	4	7	; slot4 = table.remove
		 88	[  0]	MOV  	  6		2	; slot6 = uv0"unknown"._shortExplosionPool
		 89	[  0]	KSHORT	  7		1	; slot7 = 1
		 90	[  0]	CALL 	  4	2	3	; slot4 = table.remove(slot5, uv0"unknown"._shortExplosionPool)
		 91	[  0]	MOV  	  3		4	; slot3 = table.remove
		 92	[  0]	MOV  	  6		3	; slot6 = table.remove
		 93	[  0]	TGETS	  4	3	6	; slot4 = table.remove.stop
		 94	[  0]	CALL 	  4	1	2	;  = table.remove.stop(slot5)
		 95	[  0]	LEN  	  4		2	; slot4 = #uv0"unknown"._shortExplosionPool
		 96	[  0]	ADDVN	  4	4	0	; slot4 = slot4 + 1
		 97	[  0]	TSETV	  3	2	4	; uv0"unknown"._shortExplosionPool[slot4] = table.remove
		 98	[  0]	MOV  	  6		3	; slot6 = table.remove
		 99	[  0]	TGETS	  4	3	5	; slot4 = table.remove.setPitch
		100	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		101	[  0]	TGETS	  7	7	18	; slot7 = uv0"unknown"._shortExplosionRandom
		102	[  0]	MOV  	  9		7	; slot9 = uv0"unknown"._shortExplosionRandom
		103	[  0]	TGETS	  7	7	4	; slot7 = uv0"unknown"._shortExplosionRandom.random
		104	[  0]	CALL 	  7	2	2	; slot7 = uv0"unknown"._shortExplosionRandom.random(slot8)
		105	[  0]	MULVN	  7	7	1	; slot7 = uv0"unknown"._shortExplosionRandom.random * 0.16
		106	[  0]	ADDNV	  7	7	2	; slot7 = 0.92 + slot7
		107	[  0]	CALL 	  4	1	3	;  = table.remove.setPitch(slot5, table.remove)
		108	[  0]	MOV  	  6		3	; slot6 = table.remove
		109	[  0]	TGETS	  4	3	3	; slot4 = table.remove.setVolume
		110	[  0]	GGET 	  7		17	; slot7 = _env["math"]
		111	[  0]	TGETS	  7	7	2	; slot7 = math.max
		112	[  0]	KSHORT	  9		0	; slot9 = 0
		113	[  0]	GGET 	 10		17	; slot10 = _env["math"]
		114	[  0]	TGETS	 10	10	1	; slot10 = math.min
		115	[  0]	KSHORT	 12		1	; slot12 = 1
		116	[  0]	MOV  	 13		1	; slot13 = slot1
		117	[  0]	CALL 	 10	0	3	; MULTRES = math.min(slot11, slot12)
		118	[  0]	CALLM	  7	2	1	; slot7 = math.max(slot8, ...MULTRES)
		119	[  0]	MULVN	  7	7	3	; slot7 = math.max * 0.8
		120	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		121	[  0]	TGETS	  8	8	18	; slot8 = uv0"unknown"._shortExplosionRandom
		122	[  0]	MOV  	 10		8	; slot10 = uv0"unknown"._shortExplosionRandom
		123	[  0]	TGETS	  8	8	4	; slot8 = uv0"unknown"._shortExplosionRandom.random
		124	[  0]	CALL 	  8	2	2	; slot8 = uv0"unknown"._shortExplosionRandom.random(slot9)
		125	[  0]	MULVN	  8	8	1	; slot8 = uv0"unknown"._shortExplosionRandom.random * 0.16
		126	[  0]	ADDNV	  8	8	2	; slot8 = 0.92 + slot8
		127	[  0]	MULVV	  7	7	8	; slot7 = slot7 * slot8
		128	[  0]	CALL 	  4	1	3	;  = table.remove.setVolume(slot5, table.remove)
		129	[  0]	MOV  	  6		3	; slot6 = table.remove
		130	[  0]	TGETS	  4	3	0	; slot4 = table.remove.play
		131	[  0]	CALL 	  4	1	2	;  = table.remove.play(slot5)
		132	[  0]	RET0 	  0		1	; return
	 15	[  0]	TSETS	  3	0	18	; slot0.playShortExplosion = slot3
	 16	[  0]	FNEW 	  3		16	; N/A:0-0: 3 args, 1 upvalues, 23 slots
		
		;;;; constant tables ;;;;
		ktable#25 = [
			[serial] = 0,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  3		0	; slot3 = slot0; if not slot0
		  2	[  0]	JMP  	  3		5	; 	goto 8
		  3	[  0]	TGETS	  3	0	30	; slot3 = slot0.audio
		  4	[  0]	ISF  	   		3	; if not <unknown table>.audio
		  5	[  0]	JMP  	  4		2	; 	goto 8
		  6	[  0]	TGETS	  3	0	30	; slot3 = slot0.audio
		  7	[  0]	TGETV	  3	3	2	; slot3 = <unknown table>.audio[slot2]
		  8	[  0]	IST  	   		3	; if slot3
		  9	[  0]	JMP  	  4		2	; 	goto 12
		 10	[  0]	KPRI 	  4		1	; slot4 = false
		 11	[  0]	RET1 	  4		2	; return slot4
		 12	[  0]	ISF  	   		1	; if not slot1
		 13	[  0]	JMP  	  4		7	; 	goto 21
		 14	[  0]	TGETS	  4	1	29	; slot4 = slot1.menuSettings
		 15	[  0]	ISF  	   		4	; if not <unknown table>.menuSettings
		 16	[  0]	JMP  	  5		4	; 	goto 21
		 17	[  0]	TGETS	  4	1	29	; slot4 = slot1.menuSettings
		 18	[  0]	TGETS	  4	4	28	; slot4 = <unknown table>.menuSettings.sfxVolume
		 19	[  0]	IST  	   		4	; if <unknown table>.menuSettings.sfxVolume
		 20	[  0]	JMP  	  5		1	; 	goto 22
		 21	[  0]	KSHORT	  4		1	; slot4 = 1
		 22	[  0]	KSHORT	  5		0	; slot5 = 0
		 23	[  0]	ISGT 	  4		5	; if slot4 > slot5
		 24	[  0]	JMP  	  5		2	; 	goto 27
		 25	[  0]	KPRI 	  5		1	; slot5 = false
		 26	[  0]	RET1 	  5		2	; return slot5
		 27	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 28	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 29	[  0]	TGETS	  6	6	27	; slot6 = uv0"unknown"._battleSoundPools
		 30	[  0]	IST  	   		6	; if uv0"unknown"._battleSoundPools
		 31	[  0]	JMP  	  7		1	; 	goto 33
		 32	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		 33	[  0]	TSETS	  6	5	27	; uv0"unknown"._battleSoundPools = slot6
		 34	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 35	[  0]	TGETS	  5	5	27	; slot5 = uv0"unknown"._battleSoundPools
		 36	[  0]	TGETV	  5	5	2	; slot5 = uv0"unknown"._battleSoundPools[slot2]
		 37	[  0]	ISF  	   		5	; if not slot5
		 38	[  0]	JMP  	  6		3	; 	goto 42
		 39	[  0]	TGETS	  6	5	26	; slot6 = slot5.source
		 40	[  0]	ISEQV	  6		3	; if <unknown table>.source == slot3
		 41	[  0]	JMP  	  6		11	; 	goto 53
		 42	[  0]	TDUP 	  6		25	; slot6 = copy table#k25
		 43	[  0]	TSETS	  3	6	26	; slot6.source = slot3
		 44	[  0]	TNEW 	  7		3	; slot7 = new table( array: 3, dict: 1)
		 45	[  0]	TSETB	  3	7	1	; slot7[1] = slot3
		 46	[  0]	TSETS	  7	6	24	; slot6.pool = slot7
		 47	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
		 48	[  0]	TSETS	  7	6	23	; slot6.started = slot7
		 49	[  0]	MOV  	  5		6	; slot5 = slot6
		 50	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 51	[  0]	TGETS	  6	6	27	; slot6 = uv0"unknown"._battleSoundPools
		 52	[  0]	TSETV	  5	6	2	; uv0"unknown"._battleSoundPools[slot2] = slot5
		 53	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 54	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 55	[  0]	TGETS	  7	7	22	; slot7 = uv0"unknown"._battleSoundRandom
		 56	[  0]	IST  	   		7	; if uv0"unknown"._battleSoundRandom
		 57	[  0]	JMP  	  8		4	; 	goto 62
		 58	[  0]	GGET 	  7		21	; slot7 = _env["love"]
		 59	[  0]	TGETS	  7	7	20	; slot7 = love.math
		 60	[  0]	TGETS	  7	7	19	; slot7 = love.math.newRandomGenerator
		 61	[  0]	CALL 	  7	2	1	; slot7 = love.math.newRandomGenerator()
		 62	[  0]	TSETS	  7	6	22	; uv0"unknown"._battleSoundRandom = love.math.newRandomGenerator
		 63	[  0]	TGETS	  6	5	24	; slot6 = slot5.pool
		 64	[  0]	TGETS	  7	5	23	; slot7 = slot5.started
		 65	[  0]	KPRI 	  8		0	; slot8 = nil
		 66	[  0]	KSHORT	  9		0	; slot9 = 0
		 67	[  0]	GGET 	 10		18	; slot10 = _env["ipairs"]
		 68	[  0]	MOV  	 12		6	; slot12 = <unknown table>.pool
		 69	[  0]	CALL 	 10	4	2	; slot10, slot11, slot12 = ipairs(slot11)
		 70	[  0]	JMP  	 13		10	; 	goto 81
		 71	[  0]	MOV  	 17		14	; slot17 = slot14
		 72	[  0]	TGETS	 15	14	17	; slot15 = slot14.isPlaying
		 73	[  0]	CALL 	 15	2	2	; slot15 = <unknown table>.isPlaying(slot16)
		 74	[  0]	ISF  	   		15	; if not <unknown table>.isPlaying
		 75	[  0]	JMP  	 16		2	; 	goto 78
		 76	[  0]	ADDVN	  9	9	0	; slot9 = slot9 + 1
		 77	[  0]	JMP  	 15		3	; 	goto 81
		 78	[  0]	IST  	   		8	; if slot8
		 79	[  0]	JMP  	 15		1	; 	goto 81
		 80	[  0]	MOV  	  8		14	; slot8 = slot14
		 81	[  0]	ITERC	 13	3	3	; slot13, slot14, slot15 = ipairs, slot11, <unknown table>.pool; slot13, slot14 = ipairs(slot11, <unknown table>.pool)
		 82	[  0]	ITERL	 13		-12	; <unknown table>.pool = slot13; if slot13 != nil goto 71
		 83	[  0]	IST  	   		8	; if slot8
		 84	[  0]	JMP  	 10		37	; 	goto 122
		 85	[  0]	LEN  	 10		6	; slot10 = #<unknown table>.pool
		 86	[  0]	KSHORT	 11		16	; slot11 = 16
		 87	[  0]	ISGE 	 10		11	; if slot10 >= slot11
		 88	[  0]	JMP  	 10		11	; 	goto 100
		 89	[  0]	TGETS	 10	3	16	; slot10 = slot3.clone
		 90	[  0]	ISF  	   		10	; if not <unknown table>.clone
		 91	[  0]	JMP  	 11		8	; 	goto 100
		 92	[  0]	MOV  	 12		3	; slot12 = slot3
		 93	[  0]	TGETS	 10	3	16	; slot10 = slot3.clone
		 94	[  0]	CALL 	 10	2	2	; slot10 = <unknown table>.clone(slot11)
		 95	[  0]	MOV  	  8		10	; slot8 = <unknown table>.clone
		 96	[  0]	LEN  	 10		6	; slot10 = #<unknown table>.pool
		 97	[  0]	ADDVN	 10	10	0	; slot10 = slot10 + 1
		 98	[  0]	TSETV	  8	6	10	; <unknown table>.pool[slot10] = <unknown table>.clone
		 99	[  0]	JMP  	 10		22	; 	goto 122
		100	[  0]	KSHORT	 10		1	; slot10 = 1
		101	[  0]	KSHORT	 11		2	; slot11 = 2
		102	[  0]	LEN  	 12		6	; slot12 = #<unknown table>.pool
		103	[  0]	KSHORT	 13		1	; slot13 = 1
		104	[  0]	FORI 	 11		12	; for slot14 = slot11,slot12,slot13 else goto 117
		105	[  0]	TGETV	 15	7	14	; slot15 = <unknown table>.started[slot14]
		106	[  0]	IST  	   		15	; if slot15
		107	[  0]	JMP  	 16		1	; 	goto 109
		108	[  0]	KSHORT	 15		0	; slot15 = 0
		109	[  0]	TGETV	 16	7	10	; slot16 = <unknown table>.started[slot10]
		110	[  0]	IST  	   		16	; if slot16
		111	[  0]	JMP  	 17		1	; 	goto 113
		112	[  0]	KSHORT	 16		0	; slot16 = 0
		113	[  0]	ISGE 	 15		16	; if slot15 >= slot16
		114	[  0]	JMP  	 15		1	; 	goto 116
		115	[  0]	MOV  	 10		14	; slot10 = slot14
		116	[  0]	FORL 	 11		-12	; slot14 = slot14 + slot13; if cmp(slot14, sign slot13,  slot12) goto 105
		117	[  0]	TGETV	  8	6	10	; slot8 = <unknown table>.pool[slot10]
		118	[  0]	MOV  	 13		8	; slot13 = slot8
		119	[  0]	TGETS	 11	8	15	; slot11 = slot8.stop
		120	[  0]	CALL 	 11	1	2	;  = <unknown table>.stop(slot12)
		121	[  0]	SUBVN	  9	9	0	; slot9 = slot9 - 1
		122	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		123	[  0]	TGETS	 10	10	22	; slot10 = uv0"unknown"._battleSoundRandom
		124	[  0]	KPRI 	 11		0	; slot11 = nil
		125	[  0]	ISEQS	  2		14	; if slot2 == "canonAttack"
		126	[  0]	JMP  	 12		4	; 	goto 131
		127	[  0]	ISEQS	  2		13	; if slot2 == "grenadeExplosion"
		128	[  0]	JMP  	 12		2	; 	goto 131
		129	[  0]	ISNES	  2		12	; if slot2 ~= "bigGrenadeExplosion"
		130	[  0]	JMP  	 12		27	; 	goto 158
		131	[  0]	MOV  	 14		10	; slot14 = uv0"unknown"._battleSoundRandom
		132	[  0]	TGETS	 12	10	11	; slot12 = uv0"unknown"._battleSoundRandom.random
		133	[  0]	CALL 	 12	2	2	; slot12 = uv0"unknown"._battleSoundRandom.random(slot13)
		134	[  0]	MULVN	 12	12	1	; slot12 = uv0"unknown"._battleSoundRandom.random * 0.04
		135	[  0]	ADDNV	 11	12	2	; slot11 = 0.98 + slot12
		136	[  0]	TGETS	 12	5	10	; slot12 = slot5.lastPitch
		137	[  0]	ISF  	   		12	; if not <unknown table>.lastPitch
		138	[  0]	JMP  	 13		17	; 	goto 156
		139	[  0]	GGET 	 12		20	; slot12 = _env["math"]
		140	[  0]	TGETS	 12	12	9	; slot12 = math.abs
		141	[  0]	TGETS	 14	5	10	; slot14 = slot5.lastPitch
		142	[  0]	SUBVV	 14	11	14	; slot14 = slot11 - <unknown table>.lastPitch
		143	[  0]	CALL 	 12	2	2	; slot12 = math.abs(slot13)
		144	[  0]	KNUM 	 13		3	; slot13 = 0.006
		145	[  0]	ISGE 	 12		13	; if math.abs >= slot13
		146	[  0]	JMP  	 12		9	; 	goto 156
		147	[  0]	TGETS	 12	5	10	; slot12 = slot5.lastPitch
		148	[  0]	TGETS	 13	5	10	; slot13 = slot5.lastPitch
		149	[  0]	KSHORT	 14		1	; slot14 = 1
		150	[  0]	ISGT 	 14		13	; if slot14 > <unknown table>.lastPitch
		151	[  0]	JMP  	 13		2	; 	goto 154
		152	[  0]	KNUM 	 13		4	; slot13 = -0.006
		153	[  0]	JMP  	 14		1	; 	goto 155
		154	[  0]	KNUM 	 13		3	; slot13 = 0.006
		155	[  0]	ADDVV	 11	12	13	; slot11 = <unknown table>.lastPitch + slot13
		156	[  0]	TSETS	 11	5	10	; slot5.lastPitch = slot11
		157	[  0]	JMP  	 12		10	; 	goto 168
		158	[  0]	MOV  	 14		10	; slot14 = uv0"unknown"._battleSoundRandom
		159	[  0]	TGETS	 12	10	11	; slot12 = uv0"unknown"._battleSoundRandom.random
		160	[  0]	CALL 	 12	2	2	; slot12 = uv0"unknown"._battleSoundRandom.random(slot13)
		161	[  0]	MOV  	 15		10	; slot15 = uv0"unknown"._battleSoundRandom
		162	[  0]	TGETS	 13	10	11	; slot13 = uv0"unknown"._battleSoundRandom.random
		163	[  0]	CALL 	 13	2	2	; slot13 = uv0"unknown"._battleSoundRandom.random(uv0"unknown"._battleSoundRandom)
		164	[  0]	ADDVV	 12	12	13	; slot12 = uv0"unknown"._battleSoundRandom.random + uv0"unknown"._battleSoundRandom.random
		165	[  0]	SUBVN	 12	12	0	; slot12 = slot12 - 1
		166	[  0]	MULVN	 12	12	5	; slot12 = slot12 * 0.03
		167	[  0]	ADDNV	 11	12	0	; slot11 = 1 + slot12
		168	[  0]	MOV  	 14		10	; slot14 = uv0"unknown"._battleSoundRandom
		169	[  0]	TGETS	 12	10	11	; slot12 = uv0"unknown"._battleSoundRandom.random
		170	[  0]	CALL 	 12	2	2	; slot12 = uv0"unknown"._battleSoundRandom.random(uv0"unknown"._battleSoundRandom.random)
		171	[  0]	MOV  	 15		10	; slot15 = uv0"unknown"._battleSoundRandom
		172	[  0]	TGETS	 13	10	11	; slot13 = uv0"unknown"._battleSoundRandom.random
		173	[  0]	CALL 	 13	2	2	; slot13 = uv0"unknown"._battleSoundRandom.random(uv0"unknown"._battleSoundRandom)
		174	[  0]	ADDVV	 12	12	13	; slot12 = uv0"unknown"._battleSoundRandom.random + uv0"unknown"._battleSoundRandom.random
		175	[  0]	SUBVN	 12	12	0	; slot12 = slot12 - 1
		176	[  0]	MULVN	 12	12	6	; slot12 = slot12 * 0.06
		177	[  0]	ADDNV	 12	12	0	; slot12 = 1 + slot12
		178	[  0]	GGET 	 13		20	; slot13 = _env["math"]
		179	[  0]	TGETS	 13	13	8	; slot13 = math.sqrt
		180	[  0]	MULVN	 15	9	7	; slot15 = slot9 * 0.25
		181	[  0]	ADDNV	 15	15	0	; slot15 = 1 + slot15
		182	[  0]	CALL 	 13	2	2	; slot13 = math.sqrt(uv0"unknown"._battleSoundRandom)
		183	[  0]	DIVNV	 13	13	0	; slot13 = 1 / math.sqrt
		184	[  0]	TGETS	 14	0	7	; slot14 = slot0.audioBaseGain
		185	[  0]	ISF  	   		14	; if not <unknown table>.audioBaseGain
		186	[  0]	JMP  	 15		4	; 	goto 191
		187	[  0]	TGETS	 14	0	7	; slot14 = slot0.audioBaseGain
		188	[  0]	TGETV	 14	14	2	; slot14 = <unknown table>.audioBaseGain[slot2]
		189	[  0]	IST  	   		14	; if slot14
		190	[  0]	JMP  	 15		1	; 	goto 192
		191	[  0]	KSHORT	 14		1	; slot14 = 1
		192	[  0]	MOV  	 17		8	; slot17 = slot8
		193	[  0]	TGETS	 15	8	6	; slot15 = slot8.setPitch
		194	[  0]	MOV  	 18		11	; slot18 = slot11
		195	[  0]	CALL 	 15	1	3	;  = <unknown table>.setPitch(slot16, slot17)
		196	[  0]	MOV  	 17		8	; slot17 = slot8
		197	[  0]	TGETS	 15	8	5	; slot15 = slot8.setVolume
		198	[  0]	MULVV	 18	4	14	; slot18 = slot4 * slot14
		199	[  0]	MULVV	 18	18	12	; slot18 = slot18 * slot12
		200	[  0]	MULVV	 18	18	13	; slot18 = slot18 * slot13
		201	[  0]	CALL 	 15	1	3	;  = <unknown table>.setVolume(slot16, slot17)
		202	[  0]	TGETS	 15	0	4	; slot15 = slot0.audioCueOffset
		203	[  0]	ISF  	   		15	; if not <unknown table>.audioCueOffset
		204	[  0]	JMP  	 16		2	; 	goto 207
		205	[  0]	TGETS	 15	0	4	; slot15 = slot0.audioCueOffset
		206	[  0]	TGETV	 15	15	2	; slot15 = <unknown table>.audioCueOffset[slot2]
		207	[  0]	ISF  	   		15	; if not slot15
		208	[  0]	JMP  	 16		8	; 	goto 217
		209	[  0]	TGETS	 16	8	3	; slot16 = slot8.seek
		210	[  0]	ISF  	   		16	; if not <unknown table>.seek
		211	[  0]	JMP  	 17		5	; 	goto 217
		212	[  0]	MOV  	 18		8	; slot18 = slot8
		213	[  0]	TGETS	 16	8	3	; slot16 = slot8.seek
		214	[  0]	MOV  	 19		15	; slot19 = slot15
		215	[  0]	KSTR 	 20		2	; slot20 = "seconds"
		216	[  0]	CALL 	 16	1	4	;  = <unknown table>.seek(slot17, slot18, slot19)
		217	[  0]	MOV  	 18		8	; slot18 = slot8
		218	[  0]	TGETS	 16	8	1	; slot16 = slot8.play
		219	[  0]	CALL 	 16	1	2	;  = <unknown table>.play(slot17)
		220	[  0]	TGETS	 16	5	0	; slot16 = slot5.serial
		221	[  0]	ADDVN	 16	16	0	; slot16 = <unknown table>.serial + 1
		222	[  0]	TSETS	 16	5	0	; slot5.serial = slot16
		223	[  0]	GGET 	 16		18	; slot16 = _env["ipairs"]
		224	[  0]	MOV  	 18		6	; slot18 = <unknown table>.pool
		225	[  0]	CALL 	 16	4	2	; slot16, slot17, slot18 = ipairs(slot17)
		226	[  0]	JMP  	 19		5	; 	goto 232
		227	[  0]	ISNEV	 20		8	; if slot20 ~= slot8
		228	[  0]	JMP  	 21		3	; 	goto 232
		229	[  0]	TGETS	 21	5	0	; slot21 = slot5.serial
		230	[  0]	TSETV	 21	7	19	; <unknown table>.started[slot19] = <unknown table>.serial
		231	[  0]	JMP  	 16		2	; 	goto 234
		232	[  0]	ITERC	 19	3	3	; slot19, slot20, slot21 = ipairs, slot17, <unknown table>.pool; slot19, slot20 = ipairs(slot17, <unknown table>.pool)
		233	[  0]	ITERL	 19		-7	; <unknown table>.pool = slot19; if slot19 != nil goto 227
		234	[  0]	KPRI 	 16		2	; slot16 = true
		235	[  0]	MOV  	 17		8	; slot17 = slot8
		236	[  0]	RET  	 16		3	; return slot16, slot17
	 17	[  0]	FNEW 	  4		14	; N/A:0-0: 2 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	MOV  	  5		1	; slot5 = slot1
		  4	[  0]	KSTR 	  6		0	; slot6 = "gunAttack"
		  5	[  0]	CALLT	  2		4	; return uv0"unknown"(slot3, slot4, slot5)
	 18	[  0]	TSETS	  4	0	15	; slot0.playGunAttack = slot4
	 19	[  0]	FNEW 	  4		12	; N/A:0-0: 2 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	MOV  	  5		1	; slot5 = slot1
		  4	[  0]	KSTR 	  6		0	; slot6 = "canonAttack"
		  5	[  0]	CALLT	  2		4	; return uv0"unknown"(slot3, slot4, slot5)
	 20	[  0]	TSETS	  4	0	13	; slot0.playCannonAttack = slot4
	 21	[  0]	FNEW 	  4		10	; N/A:0-0: 2 args, 0 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  2		0	; slot2 = slot0; if not slot0
		  2	[  0]	JMP  	  2		5	; 	goto 8
		  3	[  0]	TGETS	  2	0	13	; slot2 = slot0.audio
		  4	[  0]	ISF  	   		2	; if not <unknown table>.audio
		  5	[  0]	JMP  	  3		2	; 	goto 8
		  6	[  0]	TGETS	  2	0	13	; slot2 = slot0.audio
		  7	[  0]	TGETS	  2	2	12	; slot2 = <unknown table>.audio.slashAttackArcher1
		  8	[  0]	IST  	   		2	; if <unknown table>.audio.slashAttackArcher1
		  9	[  0]	JMP  	  3		2	; 	goto 12
		 10	[  0]	KPRI 	  3		1	; slot3 = false
		 11	[  0]	RET1 	  3		2	; return slot3
		 12	[  0]	ISF  	   		1	; if not slot1
		 13	[  0]	JMP  	  3		7	; 	goto 21
		 14	[  0]	TGETS	  3	1	11	; slot3 = slot1.menuSettings
		 15	[  0]	ISF  	   		3	; if not <unknown table>.menuSettings
		 16	[  0]	JMP  	  4		4	; 	goto 21
		 17	[  0]	TGETS	  3	1	11	; slot3 = slot1.menuSettings
		 18	[  0]	TGETS	  3	3	10	; slot3 = <unknown table>.menuSettings.sfxVolume
		 19	[  0]	IST  	   		3	; if <unknown table>.menuSettings.sfxVolume
		 20	[  0]	JMP  	  4		1	; 	goto 22
		 21	[  0]	KSHORT	  3		1	; slot3 = 1
		 22	[  0]	TGETS	  4	0	9	; slot4 = slot0.audioBaseGain
		 23	[  0]	ISF  	   		4	; if not <unknown table>.audioBaseGain
		 24	[  0]	JMP  	  5		4	; 	goto 29
		 25	[  0]	TGETS	  4	0	9	; slot4 = slot0.audioBaseGain
		 26	[  0]	TGETS	  4	4	12	; slot4 = <unknown table>.audioBaseGain.slashAttackArcher1
		 27	[  0]	IST  	   		4	; if <unknown table>.audioBaseGain.slashAttackArcher1
		 28	[  0]	JMP  	  5		1	; 	goto 30
		 29	[  0]	KSHORT	  4		1	; slot4 = 1
		 30	[  0]	GGET 	  5		8	; slot5 = _env["love"]
		 31	[  0]	TGETS	  5	5	7	; slot5 = love.math
		 32	[  0]	TGETS	  5	5	6	; slot5 = love.math.random
		 33	[  0]	CALL 	  5	2	1	; slot5 = love.math.random()
		 34	[  0]	MULVN	  5	5	0	; slot5 = love.math.random * 0.02
		 35	[  0]	ADDNV	  5	5	0	; slot5 = 0.02 + slot5
		 36	[  0]	GGET 	  6		8	; slot6 = _env["love"]
		 37	[  0]	TGETS	  6	6	7	; slot6 = love.math
		 38	[  0]	TGETS	  6	6	6	; slot6 = love.math.random
		 39	[  0]	CALL 	  6	2	1	; slot6 = love.math.random()
		 40	[  0]	KNUM 	  7		1	; slot7 = 0.5
		 41	[  0]	ISGE 	  6		7	; if love.math.random >= slot7
		 42	[  0]	JMP  	  6		2	; 	goto 45
		 43	[  0]	KSHORT	  6		65535	; slot6 = 65535
		 44	[  0]	JMP  	  7		1	; 	goto 46
		 45	[  0]	KSHORT	  6		1	; slot6 = 1
		 46	[  0]	MULVV	  7	6	5	; slot7 = slot6 * slot5
		 47	[  0]	ADDNV	  7	7	2	; slot7 = 1 + slot7
		 48	[  0]	GGET 	  8		8	; slot8 = _env["love"]
		 49	[  0]	TGETS	  8	8	7	; slot8 = love.math
		 50	[  0]	TGETS	  8	8	6	; slot8 = love.math.random
		 51	[  0]	CALL 	  8	2	1	; slot8 = love.math.random()
		 52	[  0]	MULVN	  8	8	3	; slot8 = love.math.random * 2
		 53	[  0]	SUBVN	  8	8	2	; slot8 = slot8 - 1
		 54	[  0]	GGET 	  9		7	; slot9 = _env["math"]
		 55	[  0]	TGETS	  9	9	5	; slot9 = math.pow
		 56	[  0]	KSHORT	 11		10	; slot11 = 10
		 57	[  0]	DIVVN	 12	8	4	; slot12 = slot8 / 20
		 58	[  0]	CALL 	  9	2	3	; slot9 = math.pow(slot10, slot11)
		 59	[  0]	TGETS	 10	2	4	; slot10 = <unknown table>.audio.slashAttackArcher1.setVolume
		 60	[  0]	ISF  	   		10	; if not <unknown table>.audio.slashAttackArcher1.setVolume
		 61	[  0]	JMP  	 11		5	; 	goto 67
		 62	[  0]	MOV  	 12		2	; slot12 = <unknown table>.audio.slashAttackArcher1
		 63	[  0]	TGETS	 10	2	4	; slot10 = <unknown table>.audio.slashAttackArcher1.setVolume
		 64	[  0]	MULVV	 13	3	4	; slot13 = slot3 * slot4
		 65	[  0]	MULVV	 13	13	9	; slot13 = slot13 * math.pow
		 66	[  0]	CALL 	 10	1	3	;  = <unknown table>.audio.slashAttackArcher1.setVolume(slot11, <unknown table>.audio.slashAttackArcher1)
		 67	[  0]	TGETS	 10	2	3	; slot10 = <unknown table>.audio.slashAttackArcher1.setPitch
		 68	[  0]	ISF  	   		10	; if not <unknown table>.audio.slashAttackArcher1.setPitch
		 69	[  0]	JMP  	 11		4	; 	goto 74
		 70	[  0]	MOV  	 12		2	; slot12 = <unknown table>.audio.slashAttackArcher1
		 71	[  0]	TGETS	 10	2	3	; slot10 = <unknown table>.audio.slashAttackArcher1.setPitch
		 72	[  0]	MOV  	 13		7	; slot13 = slot7
		 73	[  0]	CALL 	 10	1	3	;  = <unknown table>.audio.slashAttackArcher1.setPitch(slot11, <unknown table>.audio.slashAttackArcher1)
		 74	[  0]	TGETS	 10	2	2	; slot10 = <unknown table>.audio.slashAttackArcher1.isPlaying
		 75	[  0]	ISF  	   		10	; if not <unknown table>.audio.slashAttackArcher1.isPlaying
		 76	[  0]	JMP  	 11		8	; 	goto 85
		 77	[  0]	MOV  	 12		2	; slot12 = <unknown table>.audio.slashAttackArcher1
		 78	[  0]	TGETS	 10	2	2	; slot10 = <unknown table>.audio.slashAttackArcher1.isPlaying
		 79	[  0]	CALL 	 10	2	2	; slot10 = <unknown table>.audio.slashAttackArcher1.isPlaying(slot11)
		 80	[  0]	ISF  	   		10	; if not <unknown table>.audio.slashAttackArcher1.isPlaying
		 81	[  0]	JMP  	 11		3	; 	goto 85
		 82	[  0]	MOV  	 12		2	; slot12 = <unknown table>.audio.slashAttackArcher1
		 83	[  0]	TGETS	 10	2	1	; slot10 = <unknown table>.audio.slashAttackArcher1.stop
		 84	[  0]	CALL 	 10	1	2	;  = <unknown table>.audio.slashAttackArcher1.stop(slot11)
		 85	[  0]	TGETS	 10	2	0	; slot10 = <unknown table>.audio.slashAttackArcher1.play
		 86	[  0]	ISF  	   		10	; if not <unknown table>.audio.slashAttackArcher1.play
		 87	[  0]	JMP  	 11		3	; 	goto 91
		 88	[  0]	MOV  	 12		2	; slot12 = <unknown table>.audio.slashAttackArcher1
		 89	[  0]	TGETS	 10	2	0	; slot10 = <unknown table>.audio.slashAttackArcher1.play
		 90	[  0]	CALL 	 10	1	2	;  = <unknown table>.audio.slashAttackArcher1.play(slot11)
		 91	[  0]	KPRI 	 10		2	; slot10 = true
		 92	[  0]	RET1 	 10		2	; return slot10
	 22	[  0]	TSETS	  4	0	11	; slot0.playArcherAttack = slot4
	 23	[  0]	FNEW 	  4		8	; N/A:0-0: 3 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		2	; if slot2
		  2	[  0]	JMP  	  3		2	; 	goto 5
		  3	[  0]	KPRI 	  3		1	; slot3 = false
		  4	[  0]	RET1 	  3		2	; return slot3
		  5	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  6	[  0]	MOV  	  5		0	; slot5 = slot0
		  7	[  0]	MOV  	  6		1	; slot6 = slot1
		  8	[  0]	MOV  	  7		2	; slot7 = slot2
		  9	[  0]	CALLT	  3		4	; return uv0"unknown"(slot4, slot5, slot6)
	 24	[  0]	TSETS	  4	0	9	; slot0.playSkillSound = slot4
	 25	[  0]	FNEW 	  4		6	; N/A:0-0: 1 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		11	; 	goto 14
		  3	[  0]	TGETS	  1	0	1	; slot1 = slot0.isPlaying
		  4	[  0]	ISF  	   		1	; if not <unknown table>.isPlaying
		  5	[  0]	JMP  	  2		8	; 	goto 14
		  6	[  0]	MOV  	  3		0	; slot3 = slot0
		  7	[  0]	TGETS	  1	0	1	; slot1 = slot0.isPlaying
		  8	[  0]	CALL 	  1	2	2	; slot1 = <unknown table>.isPlaying(slot2)
		  9	[  0]	ISF  	   		1	; if not slot1
		 10	[  0]	JMP  	  2		3	; 	goto 14
		 11	[  0]	MOV  	  3		0	; slot3 = slot0
		 12	[  0]	TGETS	  1	0	0	; slot1 = slot0.stop
		 13	[  0]	CALL 	  1	1	2	;  = <unknown table>.stop(slot2)
		 14	[  0]	RET0 	  0		1	; return
	 26	[  0]	TSETS	  4	0	7	; slot0.stopSkillSound = slot4
	 27	[  0]	FNEW 	  4		4	; N/A:0-0: 2 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	MOV  	  5		1	; slot5 = slot1
		  4	[  0]	KSTR 	  6		0	; slot6 = "grenadeExplosion"
		  5	[  0]	CALLT	  2		4	; return uv0"unknown"(slot3, slot4, slot5)
	 28	[  0]	TSETS	  4	0	5	; slot0.playGrenadeExplosion = slot4
	 29	[  0]	FNEW 	  4		2	; N/A:0-0: 2 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	MOV  	  5		1	; slot5 = slot1
		  4	[  0]	KSTR 	  6		0	; slot6 = "bigGrenadeExplosion"
		  5	[  0]	CALLT	  2		4	; return uv0"unknown"(slot3, slot4, slot5)
	 30	[  0]	TSETS	  4	0	3	; slot0.playBigGrenadeExplosion = slot4
	 31	[  0]	FNEW 	  4		0	; N/A:0-0: 1 args, 3 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		14	; slot1 = _env["love"]
		  2	[  0]	ISF  	   		1	; if not love
		  3	[  0]	JMP  	  1		18	; 	goto 22
		  4	[  0]	GGET 	  1		14	; slot1 = _env["love"]
		  5	[  0]	TGETS	  1	1	13	; slot1 = love.sound
		  6	[  0]	ISF  	   		1	; if not love.sound
		  7	[  0]	JMP  	  1		14	; 	goto 22
		  8	[  0]	GGET 	  1		14	; slot1 = _env["love"]
		  9	[  0]	TGETS	  1	1	13	; slot1 = love.sound
		 10	[  0]	TGETS	  1	1	12	; slot1 = love.sound.newSoundData
		 11	[  0]	ISF  	   		1	; if not love.sound.newSoundData
		 12	[  0]	JMP  	  1		9	; 	goto 22
		 13	[  0]	GGET 	  1		14	; slot1 = _env["love"]
		 14	[  0]	TGETS	  1	1	11	; slot1 = love.audio
		 15	[  0]	ISF  	   		1	; if not love.audio
		 16	[  0]	JMP  	  1		5	; 	goto 22
		 17	[  0]	GGET 	  1		14	; slot1 = _env["love"]
		 18	[  0]	TGETS	  1	1	11	; slot1 = love.audio
		 19	[  0]	TGETS	  1	1	10	; slot1 = love.audio.newSource
		 20	[  0]	IST  	   		1	; if love.audio.newSource
		 21	[  0]	JMP  	  1		2	; 	goto 24
		 22	[  0]	KPRI 	  1		1	; slot1 = false
		 23	[  0]	UCLO 	  0		31	; nil uvs >= r0; goto 55
		 24	[  0]	GGET 	  1		9	; slot1 = _env["print"]
		 25	[  0]	KSTR 	  3		8	; slot3 = "[procedural_audio] Generating custom synth sounds..."
		 26	[  0]	CALL 	  1	1	2	;  = print(slot2)
		 27	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 28	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown"()
		 29	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 30	[  0]	CALL 	  2	2	1	; slot2 = uv1"unknown"()
		 31	[  0]	ISF  	   		1	; if not slot1
		 32	[  0]	JMP  	  3		1	; 	goto 34
		 33	[  0]	TSETS	  1	0	7	; slot0.custom_win = slot1
		 34	[  0]	ISF  	   		2	; if not uv1"unknown"
		 35	[  0]	JMP  	  3		1	; 	goto 37
		 36	[  0]	TSETS	  2	0	6	; slot0.coinClink = uv1"unknown"
		 37	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 38	[  0]	TGETS	  3	3	4	; slot3 = uv2"unknown".createSovereignPressureTone
		 39	[  0]	CALL 	  3	2	1	; slot3 = uv2"unknown".createSovereignPressureTone()
		 40	[  0]	TSETS	  3	0	5	; slot0.cosmicPressure = uv2"unknown".createSovereignPressureTone
		 41	[  0]	GGET 	  3		3	; slot3 = _env["pcall"]
		 42	[  0]	FNEW 	  5		2	; N/A:0-0: 0 args, 1 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  0		4	; slot0 = _env["love"]
			  2	[  0]	TGETS	  0	0	3	; slot0 = love.audio
			  3	[  0]	TGETS	  0	0	2	; slot0 = love.audio.newSource
			  4	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  5	[  0]	TGETS	  2	2	1	; slot2 = uv0"unknown".awakeningStarData
			  6	[  0]	CALL 	  2	2	1	; slot2 = uv0"unknown".awakeningStarData()
			  7	[  0]	KSTR 	  3		0	; slot3 = "static"
			  8	[  0]	CALLT	  0		3	; return love.audio.newSource(slot1, uv0"unknown".awakeningStarData)
		 43	[  0]	CALL 	  3	3	2	; slot3, slot4 = pcall(slot4)
		 44	[  0]	ISF  	   		3	; if not pcall
		 45	[  0]	JMP  	  5		3	; 	goto 49
		 46	[  0]	ISF  	   		4	; if not slot4
		 47	[  0]	JMP  	  5		1	; 	goto 49
		 48	[  0]	TSETS	  4	0	1	; slot0.awakenStar = slot4
		 49	[  0]	GGET 	  5		9	; slot5 = _env["print"]
		 50	[  0]	KSTR 	  7		0	; slot7 = "[procedural_audio] Synthesized sounds successfully loaded."
		 51	[  0]	CALL 	  5	1	2	;  = print(slot6)
		 52	[  0]	KPRI 	  5		2	; slot5 = true
		 53	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 54
		 54	[  0]	RET1 	  5		2	; return slot5
		 55	[  0]	RET1 	  1		2	; return slot1
	 32	[  0]	TSETS	  4	0	1	; slot0.loadProceduralAudio = slot4
	 33	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 34
	 34	[  0]	RET1 	  0		2	; return slot0
	
