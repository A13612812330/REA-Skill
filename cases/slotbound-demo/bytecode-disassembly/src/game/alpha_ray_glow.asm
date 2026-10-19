;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\game\alpha_ray_glow.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 3 slots
	;;;; constant tables ;;;;
	;;;; instructions ;;;;
	  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
	  2	[  0]	KPRI 	  1		0	; slot1 = nil
	  3	[  0]	FNEW 	  2		6	; N/A:0-0: 5 args, 0 upvalues, 37 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  5		13	; slot5 = _env["assert"]
		  2	[  0]	ISFC 	  7		0	; slot7 = slot0; if not slot0
		  3	[  0]	JMP  	  7		4	; 	goto 8
		  4	[  0]	TGETS	  7	0	12	; slot7 = slot0.getDimensions
		  5	[  0]	ISF  	   		7	; if not <unknown table>.getDimensions
		  6	[  0]	JMP  	  8		1	; 	goto 8
		  7	[  0]	TGETS	  7	0	11	; slot7 = slot0.getPixel
		  8	[  0]	KSTR 	  8		10	; slot8 = "alpha ray glow requires source ImageData"
		  9	[  0]	CALL 	  5	1	3	;  = assert(slot6, <unknown table>.getPixel)
		 10	[  0]	MOV  	  7		0	; slot7 = slot0
		 11	[  0]	TGETS	  5	0	12	; slot5 = slot0.getDimensions
		 12	[  0]	CALL 	  5	3	2	; slot5, slot6 = <unknown table>.getDimensions(slot6)
		 13	[  0]	GGET 	  7		9	; slot7 = _env["math"]
		 14	[  0]	TGETS	  7	7	8	; slot7 = math.max
		 15	[  0]	KSHORT	  9		1	; slot9 = 1
		 16	[  0]	GGET 	 10		9	; slot10 = _env["math"]
		 17	[  0]	TGETS	 10	10	7	; slot10 = math.floor
		 18	[  0]	GGET 	 12		6	; slot12 = _env["tonumber"]
		 19	[  0]	MOV  	 14		1	; slot14 = slot1
		 20	[  0]	CALL 	 12	2	2	; slot12 = tonumber(slot13)
		 21	[  0]	IST  	   		12	; if tonumber
		 22	[  0]	JMP  	 13		1	; 	goto 24
		 23	[  0]	MOV  	 12		5	; slot12 = <unknown table>.getDimensions
		 24	[  0]	CALL 	 10	0	2	; MULTRES = math.floor(slot11)
		 25	[  0]	CALLM	  7	2	1	; slot7 = math.max(slot8, ...MULTRES)
		 26	[  0]	GGET 	  8		9	; slot8 = _env["math"]
		 27	[  0]	TGETS	  8	8	8	; slot8 = math.max
		 28	[  0]	KSHORT	 10		1	; slot10 = 1
		 29	[  0]	GGET 	 11		9	; slot11 = _env["math"]
		 30	[  0]	TGETS	 11	11	7	; slot11 = math.floor
		 31	[  0]	GGET 	 13		6	; slot13 = _env["tonumber"]
		 32	[  0]	MOV  	 15		2	; slot15 = slot2
		 33	[  0]	CALL 	 13	2	2	; slot13 = tonumber(slot14)
		 34	[  0]	IST  	   		13	; if tonumber
		 35	[  0]	JMP  	 14		1	; 	goto 37
		 36	[  0]	MOV  	 13		6	; slot13 = slot6
		 37	[  0]	CALL 	 11	0	2	; MULTRES = math.floor(<unknown table>.getDimensions)
		 38	[  0]	CALLM	  8	2	1	; slot8 = math.max(slot9, ...MULTRES)
		 39	[  0]	GGET 	  9		9	; slot9 = _env["math"]
		 40	[  0]	TGETS	  9	9	8	; slot9 = math.max
		 41	[  0]	KSHORT	 11		1	; slot11 = 1
		 42	[  0]	GGET 	 12		9	; slot12 = _env["math"]
		 43	[  0]	TGETS	 12	12	5	; slot12 = math.min
		 44	[  0]	KSHORT	 14		254	; slot14 = 254
		 45	[  0]	GGET 	 15		9	; slot15 = _env["math"]
		 46	[  0]	TGETS	 15	15	7	; slot15 = math.floor
		 47	[  0]	GGET 	 17		6	; slot17 = _env["tonumber"]
		 48	[  0]	MOV  	 19		3	; slot19 = slot3
		 49	[  0]	CALL 	 17	2	2	; slot17 = tonumber(slot18)
		 50	[  0]	IST  	   		17	; if tonumber
		 51	[  0]	JMP  	 18		1	; 	goto 53
		 52	[  0]	KSHORT	 17		32	; slot17 = 32
		 53	[  0]	CALL 	 15	0	2	; MULTRES = math.floor(slot16)
		 54	[  0]	CALLM	 12	0	1	; MULTRES = math.min(slot13, ...MULTRES)
		 55	[  0]	CALLM	  9	2	1	; slot9 = math.max(slot10, ...MULTRES)
		 56	[  0]	GGET 	 10		6	; slot10 = _env["tonumber"]
		 57	[  0]	MOV  	 12		4	; slot12 = slot4
		 58	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 59	[  0]	IST  	   		10	; if tonumber
		 60	[  0]	JMP  	 11		1	; 	goto 62
		 61	[  0]	KNUM 	 10		0	; slot10 = 0.01
		 62	[  0]	ADDVN	 11	9	1	; slot11 = math.max + 1
		 63	[  0]	TNEW 	 12		0	; slot12 = new table( array: 0, dict: 1)
		 64	[  0]	TNEW 	 13		0	; slot13 = new table( array: 0, dict: 1)
		 65	[  0]	KSHORT	 14		0	; slot14 = 0
		 66	[  0]	SUBVN	 15	8	1	; slot15 = math.max - 1
		 67	[  0]	KSHORT	 16		1	; slot16 = 1
		 68	[  0]	FORI 	 14		49	; for slot17 = slot14,slot15,slot16 else goto 118
		 69	[  0]	GGET 	 18		9	; slot18 = _env["math"]
		 70	[  0]	TGETS	 18	18	5	; slot18 = math.min
		 71	[  0]	SUBVN	 20	6	1	; slot20 = slot6 - 1
		 72	[  0]	GGET 	 21		9	; slot21 = _env["math"]
		 73	[  0]	TGETS	 21	21	7	; slot21 = math.floor
		 74	[  0]	ADDVN	 23	17	2	; slot23 = slot17 + 0.5
		 75	[  0]	MULVV	 23	23	6	; slot23 = slot23 * slot6
		 76	[  0]	DIVVV	 23	23	8	; slot23 = slot23 / math.max
		 77	[  0]	CALL 	 21	0	2	; MULTRES = math.floor(slot22)
		 78	[  0]	CALLM	 18	2	1	; slot18 = math.min(slot19, ...MULTRES)
		 79	[  0]	MULVV	 19	17	7	; slot19 = slot17 * math.max
		 80	[  0]	KSHORT	 20		0	; slot20 = 0
		 81	[  0]	SUBVN	 21	7	1	; slot21 = math.max - 1
		 82	[  0]	KSHORT	 22		1	; slot22 = 1
		 83	[  0]	FORI 	 20		33	; for slot23 = slot20,slot21,slot22 else goto 117
		 84	[  0]	GGET 	 24		9	; slot24 = _env["math"]
		 85	[  0]	TGETS	 24	24	5	; slot24 = math.min
		 86	[  0]	SUBVN	 26	5	1	; slot26 = <unknown table>.getDimensions - 1
		 87	[  0]	GGET 	 27		9	; slot27 = _env["math"]
		 88	[  0]	TGETS	 27	27	7	; slot27 = math.floor
		 89	[  0]	ADDVN	 29	23	2	; slot29 = slot23 + 0.5
		 90	[  0]	MULVV	 29	29	5	; slot29 = slot29 * <unknown table>.getDimensions
		 91	[  0]	DIVVV	 29	29	7	; slot29 = slot29 / math.max
		 92	[  0]	CALL 	 27	0	2	; MULTRES = math.floor(slot28)
		 93	[  0]	CALLM	 24	2	1	; slot24 = math.min(slot25, ...MULTRES)
		 94	[  0]	MOV  	 27		0	; slot27 = slot0
		 95	[  0]	TGETS	 25	0	11	; slot25 = slot0.getPixel
		 96	[  0]	MOV  	 28		24	; slot28 = math.min
		 97	[  0]	MOV  	 29		18	; slot29 = math.min
		 98	[  0]	CALL 	 25	5	4	; slot25, slot26, slot27, slot28 = <unknown table>.getPixel(slot26, slot27, math.min)
		 99	[  0]	ADDVV	 29	19	23	; slot29 = slot19 + slot23
		100	[  0]	ADDVN	 29	29	1	; slot29 = slot29 + 1
		101	[  0]	ISTC 	 30		28	; slot30 = math.min; if math.min
		102	[  0]	JMP  	 30		1	; 	goto 104
		103	[  0]	KSHORT	 30		0	; slot30 = 0
		104	[  0]	ISLT 	 10		30	; if slot10 < slot30
		105	[  0]	JMP  	 30		2	; 	goto 108
		106	[  0]	KPRI 	 30		1	; slot30 = false
		107	[  0]	JMP  	 31		1	; 	goto 109
		108	[  0]	KPRI 	 30		2	; slot30 = true
		109	[  0]	TSETV	 30	12	29	; slot12[slot29] = slot30
		110	[  0]	ISF  	   		30	; if not slot30
		111	[  0]	JMP  	 31		2	; 	goto 114
		112	[  0]	KSHORT	 31		0	; slot31 = 0
		113	[  0]	JMP  	 32		1	; 	goto 115
		114	[  0]	MOV  	 31		11	; slot31 = slot11
		115	[  0]	TSETV	 31	13	29	; slot13[slot29] = slot31
		116	[  0]	FORL 	 20		-33	; slot23 = slot23 + slot22; if cmp(slot23, sign slot22,  slot21) goto 84
		117	[  0]	FORL 	 14		-49	; slot17 = slot17 + slot16; if cmp(slot17, sign slot16,  slot15) goto 69
		118	[  0]	FNEW 	 14		4	; N/A:0-0: 2 args, 1 upvalues, 3 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	KSHORT	  2		0	; slot2 = 0
			  2	[  0]	ISGE 	  2		1	; if slot2 >= slot1
			  3	[  0]	JMP  	  2		6	; 	goto 10
			  4	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  5	[  0]	TGETV	  2	2	0	; slot2 = uv0"unknown"[slot0]
			  6	[  0]	ISGE 	  1		2	; if slot1 >= slot2
			  7	[  0]	JMP  	  2		2	; 	goto 10
			  8	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  9	[  0]	TSETV	  1	2	0	; uv0"unknown"[slot0] = slot1
			 10	[  0]	RET0 	  0		1	; return
		119	[  0]	KSHORT	 15		0	; slot15 = 0
		120	[  0]	SUBVN	 16	8	1	; slot16 = math.max - 1
		121	[  0]	KSHORT	 17		1	; slot17 = 1
		122	[  0]	FORI 	 15		40	; for math.min = slot15,slot16,slot17 else goto 163
		123	[  0]	MULVV	 19	18	7	; slot19 = slot18 * math.max
		124	[  0]	KPRI 	 20		0	; slot20 = nil
		125	[  0]	KSHORT	 21		0	; slot21 = 0
		126	[  0]	SUBVN	 22	7	1	; slot22 = math.max - 1
		127	[  0]	KSHORT	 23		1	; slot23 = 1
		128	[  0]	FORI 	 21		14	; for slot24 = slot21,slot22,slot23 else goto 143
		129	[  0]	ADDVV	 25	19	24	; slot25 = slot19 + slot24
		130	[  0]	ADDVN	 25	25	1	; slot25 = slot25 + 1
		131	[  0]	TGETV	 26	12	25	; slot26 = slot12[slot25]
		132	[  0]	ISF  	   		26	; if not slot26
		133	[  0]	JMP  	 27		2	; 	goto 136
		134	[  0]	MOV  	 20		24	; slot20 = slot24
		135	[  0]	JMP  	 26		6	; 	goto 142
		136	[  0]	ISF  	   		20	; if not slot20
		137	[  0]	JMP  	 26		4	; 	goto 142
		138	[  0]	MOV  	 26		14	; slot26 = slot14
		139	[  0]	MOV  	 28		25	; slot28 = slot25
		140	[  0]	SUBVV	 29	24	20	; slot29 = slot24 - slot20
		141	[  0]	CALL 	 26	1	3	;  = slot26(slot27, slot28)
		142	[  0]	FORL 	 21		-14	; slot24 = slot24 + slot23; if cmp(slot24, sign slot23,  slot22) goto 129
		143	[  0]	KPRI 	 20		0	; slot20 = nil
		144	[  0]	SUBVN	 21	7	1	; slot21 = math.max - 1
		145	[  0]	KSHORT	 22		0	; slot22 = 0
		146	[  0]	KSHORT	 23		65535	; slot23 = 65535
		147	[  0]	FORI 	 21		14	; for slot24 = slot21,slot22,slot23 else goto 162
		148	[  0]	ADDVV	 25	19	24	; slot25 = slot19 + slot24
		149	[  0]	ADDVN	 25	25	1	; slot25 = slot25 + 1
		150	[  0]	TGETV	 26	12	25	; slot26 = slot12[slot25]
		151	[  0]	ISF  	   		26	; if not slot26
		152	[  0]	JMP  	 27		2	; 	goto 155
		153	[  0]	MOV  	 20		24	; slot20 = slot24
		154	[  0]	JMP  	 26		6	; 	goto 161
		155	[  0]	ISF  	   		20	; if not slot20
		156	[  0]	JMP  	 26		4	; 	goto 161
		157	[  0]	MOV  	 26		14	; slot26 = slot14
		158	[  0]	MOV  	 28		25	; slot28 = slot25
		159	[  0]	SUBVV	 29	20	24	; slot29 = slot20 - slot24
		160	[  0]	CALL 	 26	1	3	;  = slot26(slot27, slot28)
		161	[  0]	FORL 	 21		-14	; slot24 = slot24 + slot23; if cmp(slot24, sign slot23,  slot22) goto 148
		162	[  0]	FORL 	 15		-40	; slot18 = slot18 + slot17; if cmp(slot18, sign slot17,  slot16) goto 123
		163	[  0]	KSHORT	 15		0	; slot15 = 0
		164	[  0]	SUBVN	 16	7	1	; slot16 = math.max - 1
		165	[  0]	KSHORT	 17		1	; slot17 = 1
		166	[  0]	FORI 	 15		41	; for slot18 = slot15,slot16,slot17 else goto 208
		167	[  0]	KPRI 	 19		0	; slot19 = nil
		168	[  0]	KSHORT	 20		0	; slot20 = 0
		169	[  0]	SUBVN	 21	8	1	; slot21 = math.max - 1
		170	[  0]	KSHORT	 22		1	; slot22 = 1
		171	[  0]	FORI 	 20		15	; for slot23 = slot20,slot21,slot22 else goto 187
		172	[  0]	MULVV	 24	23	7	; slot24 = slot23 * math.max
		173	[  0]	ADDVV	 24	24	18	; slot24 = slot24 + slot18
		174	[  0]	ADDVN	 24	24	1	; slot24 = slot24 + 1
		175	[  0]	TGETV	 25	12	24	; slot25 = slot12[slot24]
		176	[  0]	ISF  	   		25	; if not slot25
		177	[  0]	JMP  	 26		2	; 	goto 180
		178	[  0]	MOV  	 19		23	; slot19 = slot23
		179	[  0]	JMP  	 25		6	; 	goto 186
		180	[  0]	ISF  	   		19	; if not slot19
		181	[  0]	JMP  	 25		4	; 	goto 186
		182	[  0]	MOV  	 25		14	; slot25 = slot14
		183	[  0]	MOV  	 27		24	; slot27 = slot24
		184	[  0]	SUBVV	 28	23	19	; slot28 = slot23 - slot19
		185	[  0]	CALL 	 25	1	3	;  = slot25(slot26, slot27)
		186	[  0]	FORL 	 20		-15	; slot23 = slot23 + slot22; if cmp(slot23, sign slot22,  slot21) goto 172
		187	[  0]	KPRI 	 19		0	; slot19 = nil
		188	[  0]	SUBVN	 20	8	1	; slot20 = math.max - 1
		189	[  0]	KSHORT	 21		0	; slot21 = 0
		190	[  0]	KSHORT	 22		65535	; slot22 = 65535
		191	[  0]	FORI 	 20		15	; for slot23 = slot20,slot21,slot22 else goto 207
		192	[  0]	MULVV	 24	23	7	; slot24 = slot23 * math.max
		193	[  0]	ADDVV	 24	24	18	; slot24 = slot24 + slot18
		194	[  0]	ADDVN	 24	24	1	; slot24 = slot24 + 1
		195	[  0]	TGETV	 25	12	24	; slot25 = slot12[slot24]
		196	[  0]	ISF  	   		25	; if not slot25
		197	[  0]	JMP  	 26		2	; 	goto 200
		198	[  0]	MOV  	 19		23	; slot19 = slot23
		199	[  0]	JMP  	 25		6	; 	goto 206
		200	[  0]	ISF  	   		19	; if not slot19
		201	[  0]	JMP  	 25		4	; 	goto 206
		202	[  0]	MOV  	 25		14	; slot25 = slot14
		203	[  0]	MOV  	 27		24	; slot27 = slot24
		204	[  0]	SUBVV	 28	19	23	; slot28 = slot19 - slot23
		205	[  0]	CALL 	 25	1	3	;  = slot25(slot26, slot27)
		206	[  0]	FORL 	 20		-15	; slot23 = slot23 + slot22; if cmp(slot23, sign slot22,  slot21) goto 192
		207	[  0]	FORL 	 15		-41	; slot18 = slot18 + slot17; if cmp(slot18, sign slot17,  slot16) goto 167
		208	[  0]	TNEW 	 15		0	; slot15 = new table( array: 0, dict: 1)
		209	[  0]	KSHORT	 16		0	; slot16 = 0
		210	[  0]	SUBVN	 17	8	1	; slot17 = math.max - 1
		211	[  0]	KSHORT	 18		1	; slot18 = 1
		212	[  0]	FORI 	 16		23	; for slot19 = slot16,slot17,slot18 else goto 236
		213	[  0]	KSHORT	 20		0	; slot20 = 0
		214	[  0]	SUBVN	 21	7	1	; slot21 = math.max - 1
		215	[  0]	KSHORT	 22		1	; slot22 = 1
		216	[  0]	FORI 	 20		18	; for slot23 = slot20,slot21,slot22 else goto 235
		217	[  0]	MULVV	 24	19	7	; slot24 = slot19 * math.max
		218	[  0]	ADDVV	 24	24	23	; slot24 = slot24 + slot23
		219	[  0]	ADDVN	 24	24	1	; slot24 = slot24 + 1
		220	[  0]	SUBVV	 25	23	19	; slot25 = slot23 - slot19
		221	[  0]	ADDVV	 25	25	8	; slot25 = slot25 + math.max
		222	[  0]	TGETV	 26	15	25	; slot26 = slot15[slot25]
		223	[  0]	TGETV	 27	12	24	; slot27 = slot12[slot24]
		224	[  0]	ISF  	   		27	; if not slot27
		225	[  0]	JMP  	 28		2	; 	goto 228
		226	[  0]	TSETV	 19	15	25	; slot15[slot25] = slot19
		227	[  0]	JMP  	 27		6	; 	goto 234
		228	[  0]	ISF  	   		26	; if not slot26
		229	[  0]	JMP  	 27		4	; 	goto 234
		230	[  0]	MOV  	 27		14	; slot27 = slot14
		231	[  0]	MOV  	 29		24	; slot29 = slot24
		232	[  0]	SUBVV	 30	19	26	; slot30 = slot19 - slot26
		233	[  0]	CALL 	 27	1	3	;  = slot27(slot28, slot29)
		234	[  0]	FORL 	 20		-18	; slot23 = slot23 + slot22; if cmp(slot23, sign slot22,  slot21) goto 217
		235	[  0]	FORL 	 16		-23	; slot19 = slot19 + slot18; if cmp(slot19, sign slot18,  slot17) goto 213
		236	[  0]	TNEW 	 15		0	; slot15 = new table( array: 0, dict: 1)
		237	[  0]	SUBVN	 16	8	1	; slot16 = math.max - 1
		238	[  0]	KSHORT	 17		0	; slot17 = 0
		239	[  0]	KSHORT	 18		65535	; slot18 = 65535
		240	[  0]	FORI 	 16		23	; for slot19 = slot16,slot17,slot18 else goto 264
		241	[  0]	SUBVN	 20	7	1	; slot20 = math.max - 1
		242	[  0]	KSHORT	 21		0	; slot21 = 0
		243	[  0]	KSHORT	 22		65535	; slot22 = 65535
		244	[  0]	FORI 	 20		18	; for slot23 = slot20,slot21,slot22 else goto 263
		245	[  0]	MULVV	 24	19	7	; slot24 = slot19 * math.max
		246	[  0]	ADDVV	 24	24	23	; slot24 = slot24 + slot23
		247	[  0]	ADDVN	 24	24	1	; slot24 = slot24 + 1
		248	[  0]	SUBVV	 25	23	19	; slot25 = slot23 - slot19
		249	[  0]	ADDVV	 25	25	8	; slot25 = slot25 + math.max
		250	[  0]	TGETV	 26	15	25	; slot26 = slot15[slot25]
		251	[  0]	TGETV	 27	12	24	; slot27 = slot12[slot24]
		252	[  0]	ISF  	   		27	; if not slot27
		253	[  0]	JMP  	 28		2	; 	goto 256
		254	[  0]	TSETV	 19	15	25	; slot15[slot25] = slot19
		255	[  0]	JMP  	 27		6	; 	goto 262
		256	[  0]	ISF  	   		26	; if not slot26
		257	[  0]	JMP  	 27		4	; 	goto 262
		258	[  0]	MOV  	 27		14	; slot27 = slot14
		259	[  0]	MOV  	 29		24	; slot29 = slot24
		260	[  0]	SUBVV	 30	26	19	; slot30 = slot26 - slot19
		261	[  0]	CALL 	 27	1	3	;  = slot27(slot28, slot29)
		262	[  0]	FORL 	 20		-18	; slot23 = slot23 + slot22; if cmp(slot23, sign slot22,  slot21) goto 245
		263	[  0]	FORL 	 16		-23	; slot19 = slot19 + slot18; if cmp(slot19, sign slot18,  slot17) goto 241
		264	[  0]	TNEW 	 15		0	; slot15 = new table( array: 0, dict: 1)
		265	[  0]	KSHORT	 16		0	; slot16 = 0
		266	[  0]	SUBVN	 17	8	1	; slot17 = math.max - 1
		267	[  0]	KSHORT	 18		1	; slot18 = 1
		268	[  0]	FORI 	 16		22	; for slot19 = slot16,slot17,slot18 else goto 291
		269	[  0]	SUBVN	 20	7	1	; slot20 = math.max - 1
		270	[  0]	KSHORT	 21		0	; slot21 = 0
		271	[  0]	KSHORT	 22		65535	; slot22 = 65535
		272	[  0]	FORI 	 20		17	; for slot23 = slot20,slot21,slot22 else goto 290
		273	[  0]	MULVV	 24	19	7	; slot24 = slot19 * math.max
		274	[  0]	ADDVV	 24	24	23	; slot24 = slot24 + slot23
		275	[  0]	ADDVN	 24	24	1	; slot24 = slot24 + 1
		276	[  0]	ADDVV	 25	23	19	; slot25 = slot23 + slot19
		277	[  0]	TGETV	 26	15	25	; slot26 = slot15[slot25]
		278	[  0]	TGETV	 27	12	24	; slot27 = slot12[slot24]
		279	[  0]	ISF  	   		27	; if not slot27
		280	[  0]	JMP  	 28		2	; 	goto 283
		281	[  0]	TSETV	 19	15	25	; slot15[slot25] = slot19
		282	[  0]	JMP  	 27		6	; 	goto 289
		283	[  0]	ISF  	   		26	; if not slot26
		284	[  0]	JMP  	 27		4	; 	goto 289
		285	[  0]	MOV  	 27		14	; slot27 = slot14
		286	[  0]	MOV  	 29		24	; slot29 = slot24
		287	[  0]	SUBVV	 30	19	26	; slot30 = slot19 - slot26
		288	[  0]	CALL 	 27	1	3	;  = slot27(slot28, slot29)
		289	[  0]	FORL 	 20		-17	; slot23 = slot23 + slot22; if cmp(slot23, sign slot22,  slot21) goto 273
		290	[  0]	FORL 	 16		-22	; slot19 = slot19 + slot18; if cmp(slot19, sign slot18,  slot17) goto 269
		291	[  0]	TNEW 	 15		0	; slot15 = new table( array: 0, dict: 1)
		292	[  0]	SUBVN	 16	8	1	; slot16 = math.max - 1
		293	[  0]	KSHORT	 17		0	; slot17 = 0
		294	[  0]	KSHORT	 18		65535	; slot18 = 65535
		295	[  0]	FORI 	 16		22	; for slot19 = slot16,slot17,slot18 else goto 318
		296	[  0]	KSHORT	 20		0	; slot20 = 0
		297	[  0]	SUBVN	 21	7	1	; slot21 = math.max - 1
		298	[  0]	KSHORT	 22		1	; slot22 = 1
		299	[  0]	FORI 	 20		17	; for slot23 = slot20,slot21,slot22 else goto 317
		300	[  0]	MULVV	 24	19	7	; slot24 = slot19 * math.max
		301	[  0]	ADDVV	 24	24	23	; slot24 = slot24 + slot23
		302	[  0]	ADDVN	 24	24	1	; slot24 = slot24 + 1
		303	[  0]	ADDVV	 25	23	19	; slot25 = slot23 + slot19
		304	[  0]	TGETV	 26	15	25	; slot26 = slot15[slot25]
		305	[  0]	TGETV	 27	12	24	; slot27 = slot12[slot24]
		306	[  0]	ISF  	   		27	; if not slot27
		307	[  0]	JMP  	 28		2	; 	goto 310
		308	[  0]	TSETV	 19	15	25	; slot15[slot25] = slot19
		309	[  0]	JMP  	 27		6	; 	goto 316
		310	[  0]	ISF  	   		26	; if not slot26
		311	[  0]	JMP  	 27		4	; 	goto 316
		312	[  0]	MOV  	 27		14	; slot27 = slot14
		313	[  0]	MOV  	 29		24	; slot29 = slot24
		314	[  0]	SUBVV	 30	26	19	; slot30 = slot26 - slot19
		315	[  0]	CALL 	 27	1	3	;  = slot27(slot28, slot29)
		316	[  0]	FORL 	 20		-17	; slot23 = slot23 + slot22; if cmp(slot23, sign slot22,  slot21) goto 300
		317	[  0]	FORL 	 16		-22	; slot19 = slot19 + slot18; if cmp(slot19, sign slot18,  slot17) goto 296
		318	[  0]	GGET 	 16		3	; slot16 = _env["love"]
		319	[  0]	TGETS	 16	16	2	; slot16 = love.image
		320	[  0]	TGETS	 16	16	1	; slot16 = love.image.newImageData
		321	[  0]	MOV  	 18		7	; slot18 = math.max
		322	[  0]	MOV  	 19		8	; slot19 = math.max
		323	[  0]	CALL 	 16	2	3	; slot16 = love.image.newImageData(slot17, math.max)
		324	[  0]	KSHORT	 17		0	; slot17 = 0
		325	[  0]	SUBVN	 18	8	1	; slot18 = math.max - 1
		326	[  0]	KSHORT	 19		1	; slot19 = 1
		327	[  0]	FORI 	 17		28	; for slot20 = slot17,slot18,slot19 else goto 356
		328	[  0]	MULVV	 21	20	7	; slot21 = slot20 * math.max
		329	[  0]	KSHORT	 22		0	; slot22 = 0
		330	[  0]	SUBVN	 23	7	1	; slot23 = math.max - 1
		331	[  0]	KSHORT	 24		1	; slot24 = 1
		332	[  0]	FORI 	 22		22	; for slot25 = slot22,slot23,slot24 else goto 355
		333	[  0]	ADDVV	 26	21	25	; slot26 = slot21 + slot25
		334	[  0]	ADDVN	 26	26	1	; slot26 = slot26 + 1
		335	[  0]	TGETV	 26	13	26	; slot26 = slot13[slot26]
		336	[  0]	KSHORT	 27		1	; slot27 = 1
		337	[  0]	ISGT 	 27		26	; if slot27 > slot26
		338	[  0]	JMP  	 27		5	; 	goto 344
		339	[  0]	ISGT 	 26		9	; if slot26 > math.max
		340	[  0]	JMP  	 27		3	; 	goto 344
		341	[  0]	DIVVN	 27	26	3	; slot27 = slot26 / 255
		342	[  0]	IST  	   		27	; if slot27
		343	[  0]	JMP  	 28		1	; 	goto 345
		344	[  0]	KSHORT	 27		0	; slot27 = 0
		345	[  0]	MOV  	 30		16	; slot30 = love.image.newImageData
		346	[  0]	TGETS	 28	16	0	; slot28 = love.image.newImageData.setPixel
		347	[  0]	MOV  	 31		25	; slot31 = slot25
		348	[  0]	MOV  	 32		20	; slot32 = slot20
		349	[  0]	MOV  	 33		27	; slot33 = slot27
		350	[  0]	KSHORT	 34		0	; slot34 = 0
		351	[  0]	KSHORT	 35		0	; slot35 = 0
		352	[  0]	KSHORT	 36		1	; slot36 = 1
		353	[  0]	CALL 	 28	1	8	;  = love.image.newImageData.setPixel(slot29, love.image.newImageData, slot31, slot32, slot33, slot34, slot35)
		354	[  0]	FORL 	 22		-22	; slot25 = slot25 + slot24; if cmp(slot25, sign slot24,  slot23) goto 333
		355	[  0]	FORL 	 17		-28	; slot20 = slot20 + slot19; if cmp(slot20, sign slot19,  slot18) goto 328
		356	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 357
		357	[  0]	RET1 	 16		2	; return love.image.newImageData
	  4	[  0]	TSETS	  2	0	7	; slot0.buildDistanceImageData = slot2
	  5	[  0]	FNEW 	  2		4	; N/A:0-0: 5 args, 1 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		  2	[  0]	TGETS	  5	5	5	; slot5 = uv0"unknown".buildDistanceImageData
		  3	[  0]	MOV  	  7		0	; slot7 = slot0
		  4	[  0]	MOV  	  8		1	; slot8 = slot1
		  5	[  0]	MOV  	  9		2	; slot9 = slot2
		  6	[  0]	MOV  	 10		3	; slot10 = slot3
		  7	[  0]	MOV  	 11		4	; slot11 = slot4
		  8	[  0]	CALL 	  5	2	6	; slot5 = uv0"unknown".buildDistanceImageData(slot6, slot7, slot8, slot9, slot10)
		  9	[  0]	GGET 	  6		4	; slot6 = _env["love"]
		 10	[  0]	TGETS	  6	6	3	; slot6 = love.graphics
		 11	[  0]	TGETS	  6	6	2	; slot6 = love.graphics.newImage
		 12	[  0]	MOV  	  8		5	; slot8 = slot5
		 13	[  0]	CALL 	  6	2	2	; slot6 = love.graphics.newImage(slot7)
		 14	[  0]	MOV  	  9		6	; slot9 = love.graphics.newImage
		 15	[  0]	TGETS	  7	6	1	; slot7 = love.graphics.newImage.setFilter
		 16	[  0]	KSTR 	 10		0	; slot10 = "nearest"
		 17	[  0]	KSTR 	 11		0	; slot11 = "nearest"
		 18	[  0]	CALL 	  7	1	4	;  = love.graphics.newImage.setFilter(slot8, love.graphics.newImage, slot10)
		 19	[  0]	RET1 	  6		2	; return love.graphics.newImage
	  6	[  0]	TSETS	  2	0	5	; slot0.buildDistanceImage = slot2
	  7	[  0]	FNEW 	  2		2	; N/A:0-0: 0 args, 1 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		2	; 	goto 6
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	RET1 	  0		2	; return uv0"unknown"
		  6	[  0]	GGET 	  0		3	; slot0 = _env["love"]
		  7	[  0]	TGETS	  0	0	2	; slot0 = love.graphics
		  8	[  0]	TGETS	  0	0	1	; slot0 = love.graphics.newShader
		  9	[  0]	KSTR 	  2		0	; slot2 = "    extern vec4 glowColor;
		    extern float maxRadius;
		    extern float falloff;
		    extern float baseAlpha;
		    extern float pulse;
		
		    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {
		      float found = floor(Texel(tex, tc).r * 255.0 + 0.5);
		      if (found < 0.5 || found > maxRadius + 0.001) return vec4(0.0);
		      float u = (found - 1.0) / max(maxRadius, 0.5);
		      float fade = pow(1.0 - clamp(u, 0.0, 1.0), falloff);
		      float alpha = glowColor.a * baseAlpha * fade * pulse;
		      return vec4(glowColor.rgb, alpha) * color;
		    }
		  "
		 10	[  0]	CALL 	  0	2	2	; slot0 = love.graphics.newShader(slot1)
		 11	[  0]	USETV	  0		0	; uv0"unknwon" = slot0
		 12	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 13	[  0]	RET1 	  0		2	; return uv0"unknown"
	  8	[  0]	TSETS	  2	0	3	; slot0.getShader = slot2
	  9	[  0]	FNEW 	  2		0	; N/A:0-0: 0 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		6	; 	goto 10
		  4	[  0]	GGET 	  0		1	; slot0 = _env["pcall"]
		  5	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  6	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".release
		  7	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  8	[  0]	CALL 	  0	1	3	;  = pcall(slot1, uv0"unknown".release)
		  9	[  0]	USETP	  0		0	; uv0"unknwon" = nil
		 10	[  0]	RET0 	  0		1	; return
	 10	[  0]	TSETS	  2	0	1	; slot0.release = slot2
	 11	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 12
	 12	[  0]	RET1 	  0		2	; return slot0
	
