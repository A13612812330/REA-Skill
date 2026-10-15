;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\ui\screen.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 9 slots
	;;;; constant tables ;;;;
	ktable#2 = [
		]
	
	
	;;;; instructions ;;;;
	  1	[  0]	KPRI 	  0		0	; slot0 = nil
	  2	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
	  3	[  0]	FNEW 	  2		19	; N/A:0-0: 1 args, 0 upvalues, 35 slots
		
		;;;; constant tables ;;;;
		ktable#5 = [
			]
		
		
		ktable#7 = [
			]
		
		
		ktable#9 = [
			]
		
		
		ktable#11 = [
			]
		
		
		ktable#17 = [
			]
		
		
		ktable#19 = [
			]
		
		
		ktable#20 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	38	; slot1 = slot0.virtual
		  2	[  0]	TGETS	  1	1	37	; slot1 = <unknown table>.virtual.W
		  3	[  0]	TGETS	  2	0	38	; slot2 = slot0.virtual
		  4	[  0]	TGETS	  2	2	36	; slot2 = <unknown table>.virtual.H
		  5	[  0]	TGETS	  3	0	35	; slot3 = slot0.margin
		  6	[  0]	GGET 	  4		34	; slot4 = _env["math"]
		  7	[  0]	TGETS	  4	4	33	; slot4 = math.floor
		  8	[  0]	TGETS	  6	0	32	; slot6 = slot0.scale
		  9	[  0]	MULNV	  6	6	0	; slot6 = 8 * <unknown table>.scale
		 10	[  0]	CALL 	  4	2	2	; slot4 = math.floor(slot5)
		 11	[  0]	GGET 	  5		34	; slot5 = _env["math"]
		 12	[  0]	TGETS	  5	5	33	; slot5 = math.floor
		 13	[  0]	TGETS	  7	0	32	; slot7 = slot0.scale
		 14	[  0]	MULNV	  7	7	0	; slot7 = 8 * <unknown table>.scale
		 15	[  0]	CALL 	  5	2	2	; slot5 = math.floor(slot6)
		 16	[  0]	GGET 	  6		34	; slot6 = _env["math"]
		 17	[  0]	TGETS	  6	6	33	; slot6 = math.floor
		 18	[  0]	MULVN	  8	1	1	; slot8 = <unknown table>.virtual.W * 0.35
		 19	[  0]	CALL 	  6	2	2	; slot6 = math.floor(slot7)
		 20	[  0]	GGET 	  7		34	; slot7 = _env["math"]
		 21	[  0]	TGETS	  7	7	33	; slot7 = math.floor
		 22	[  0]	TGETS	  9	0	32	; slot9 = slot0.scale
		 23	[  0]	MULNV	  9	9	2	; slot9 = 14 * <unknown table>.scale
		 24	[  0]	CALL 	  7	2	2	; slot7 = math.floor(slot8)
		 25	[  0]	GGET 	  8		34	; slot8 = _env["math"]
		 26	[  0]	TGETS	  8	8	31	; slot8 = math.max
		 27	[  0]	KSHORT	 10		0	; slot10 = 0
		 28	[  0]	SUBVV	 11	3	7	; slot11 = <unknown table>.margin - math.floor
		 29	[  0]	CALL 	  8	2	3	; slot8 = math.max(slot9, slot10)
		 30	[  0]	ADDVV	  9	3	4	; slot9 = <unknown table>.margin + math.floor
		 31	[  0]	GGET 	 10		34	; slot10 = _env["math"]
		 32	[  0]	TGETS	 10	10	33	; slot10 = math.floor
		 33	[  0]	TGETS	 12	0	32	; slot12 = slot0.scale
		 34	[  0]	MULNV	 12	12	3	; slot12 = 10 * <unknown table>.scale
		 35	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
		 36	[  0]	ADDVV	  9	9	10	; slot9 = slot9 + math.floor
		 37	[  0]	ADDVV	 10	3	4	; slot10 = <unknown table>.margin + math.floor
		 38	[  0]	ADDVV	 10	10	5	; slot10 = slot10 + math.floor
		 39	[  0]	SUBVV	 10	2	10	; slot10 = <unknown table>.virtual.H - slot10
		 40	[  0]	GGET 	 11		34	; slot11 = _env["math"]
		 41	[  0]	TGETS	 11	11	33	; slot11 = math.floor
		 42	[  0]	TGETS	 13	0	32	; slot13 = slot0.scale
		 43	[  0]	MULNV	 13	13	4	; slot13 = 20 * <unknown table>.scale
		 44	[  0]	CALL 	 11	2	2	; slot11 = math.floor(slot12)
		 45	[  0]	SUBVV	 10	10	11	; slot10 = slot10 - math.floor
		 46	[  0]	GGET 	 11		34	; slot11 = _env["math"]
		 47	[  0]	TGETS	 11	11	33	; slot11 = math.floor
		 48	[  0]	TGETS	 13	0	32	; slot13 = slot0.scale
		 49	[  0]	MULNV	 13	13	5	; slot13 = 24 * <unknown table>.scale
		 50	[  0]	CALL 	 11	2	2	; slot11 = math.floor(slot12)
		 51	[  0]	UNM  	 11		11	; slot11 = -math.floor
		 52	[  0]	GGET 	 12		34	; slot12 = _env["math"]
		 53	[  0]	TGETS	 12	12	33	; slot12 = math.floor
		 54	[  0]	TGETS	 14	0	32	; slot14 = slot0.scale
		 55	[  0]	MULNV	 14	14	6	; slot14 = 30 * <unknown table>.scale
		 56	[  0]	CALL 	 12	2	2	; slot12 = math.floor(slot13)
		 57	[  0]	UNM  	 12		12	; slot12 = -math.floor
		 58	[  0]	ADDVV	 13	8	6	; slot13 = math.max + math.floor
		 59	[  0]	ADDVV	 13	13	3	; slot13 = slot13 + <unknown table>.margin
		 60	[  0]	ADDVV	 13	13	11	; slot13 = slot13 + slot11
		 61	[  0]	GGET 	 14		34	; slot14 = _env["math"]
		 62	[  0]	TGETS	 14	14	33	; slot14 = math.floor
		 63	[  0]	TGETS	 16	0	32	; slot16 = slot0.scale
		 64	[  0]	MULNV	 16	16	7	; slot16 = 56 * <unknown table>.scale
		 65	[  0]	CALL 	 14	2	2	; slot14 = math.floor(slot15)
		 66	[  0]	ADDVV	 14	3	14	; slot14 = <unknown table>.margin + math.floor
		 67	[  0]	ADDVV	 14	14	12	; slot14 = slot14 + slot12
		 68	[  0]	KSHORT	 15		380	; slot15 = 380
		 69	[  0]	KSHORT	 16		260	; slot16 = 260
		 70	[  0]	TGETS	 17	0	30	; slot17 = slot0.slot
		 71	[  0]	TGETS	 18	17	29	; slot18 = <unknown table>.slot.cols
		 72	[  0]	TGETS	 19	17	28	; slot19 = <unknown table>.slot.cellSize
		 73	[  0]	MULVV	 18	18	19	; slot18 = <unknown table>.slot.cols * <unknown table>.slot.cellSize
		 74	[  0]	TGETS	 19	17	29	; slot19 = <unknown table>.slot.cols
		 75	[  0]	SUBVN	 19	19	8	; slot19 = <unknown table>.slot.cols - 1
		 76	[  0]	GGET 	 20		34	; slot20 = _env["math"]
		 77	[  0]	TGETS	 20	20	33	; slot20 = math.floor
		 78	[  0]	TGETS	 22	17	27	; slot22 = <unknown table>.slot.gutter
		 79	[  0]	MULVN	 22	22	9	; slot22 = <unknown table>.slot.gutter * 0.25
		 80	[  0]	CALL 	 20	2	2	; slot20 = math.floor(slot21)
		 81	[  0]	MULVV	 19	19	20	; slot19 = slot19 * math.floor
		 82	[  0]	ADDVV	 18	18	19	; slot18 = slot18 + slot19
		 83	[  0]	TGETS	 19	17	26	; slot19 = <unknown table>.slot.rows
		 84	[  0]	TGETS	 20	17	28	; slot20 = <unknown table>.slot.cellSize
		 85	[  0]	MULVV	 19	19	20	; slot19 = <unknown table>.slot.rows * <unknown table>.slot.cellSize
		 86	[  0]	TGETS	 20	17	26	; slot20 = <unknown table>.slot.rows
		 87	[  0]	SUBVN	 20	20	8	; slot20 = <unknown table>.slot.rows - 1
		 88	[  0]	GGET 	 21		34	; slot21 = _env["math"]
		 89	[  0]	TGETS	 21	21	33	; slot21 = math.floor
		 90	[  0]	TGETS	 23	17	27	; slot23 = <unknown table>.slot.gutter
		 91	[  0]	MULVN	 23	23	9	; slot23 = <unknown table>.slot.gutter * 0.25
		 92	[  0]	CALL 	 21	2	2	; slot21 = math.floor(slot22)
		 93	[  0]	MULVV	 20	20	21	; slot20 = slot20 * math.floor
		 94	[  0]	ADDVV	 19	19	20	; slot19 = slot19 + slot20
		 95	[  0]	GGET 	 20		34	; slot20 = _env["math"]
		 96	[  0]	TGETS	 20	20	33	; slot20 = math.floor
		 97	[  0]	TGETS	 22	0	32	; slot22 = slot0.scale
		 98	[  0]	MULNV	 22	22	10	; slot22 = 220 * <unknown table>.scale
		 99	[  0]	CALL 	 20	2	2	; slot20 = math.floor(math.floor)
		100	[  0]	GGET 	 21		34	; slot21 = _env["math"]
		101	[  0]	TGETS	 21	21	33	; slot21 = math.floor
		102	[  0]	TGETS	 23	0	32	; slot23 = slot0.scale
		103	[  0]	MULNV	 23	23	11	; slot23 = 200 * <unknown table>.scale
		104	[  0]	CALL 	 21	2	2	; slot21 = math.floor(slot22)
		105	[  0]	GGET 	 22		34	; slot22 = _env["math"]
		106	[  0]	TGETS	 22	22	31	; slot22 = math.max
		107	[  0]	TGETS	 24	17	25	; slot24 = <unknown table>.slot.panelPad
		108	[  0]	MULVN	 24	24	12	; slot24 = <unknown table>.slot.panelPad * 2
		109	[  0]	ADDVV	 24	18	24	; slot24 = slot18 + slot24
		110	[  0]	MOV  	 25		20	; slot25 = math.floor
		111	[  0]	CALL 	 22	2	3	; slot22 = math.max(slot23, slot24)
		112	[  0]	GGET 	 23		34	; slot23 = _env["math"]
		113	[  0]	TGETS	 23	23	31	; slot23 = math.max
		114	[  0]	TGETS	 25	17	25	; slot25 = <unknown table>.slot.panelPad
		115	[  0]	MULVN	 25	25	12	; slot25 = <unknown table>.slot.panelPad * 2
		116	[  0]	ADDVV	 25	19	25	; slot25 = slot19 + slot25
		117	[  0]	GGET 	 26		34	; slot26 = _env["math"]
		118	[  0]	TGETS	 26	26	33	; slot26 = math.floor
		119	[  0]	TGETS	 28	0	32	; slot28 = slot0.scale
		120	[  0]	MULNV	 28	28	13	; slot28 = 36 * <unknown table>.scale
		121	[  0]	CALL 	 26	2	2	; slot26 = math.floor(slot27)
		122	[  0]	ADDVV	 25	25	26	; slot25 = slot25 + math.floor
		123	[  0]	MOV  	 26		21	; slot26 = math.floor
		124	[  0]	CALL 	 23	2	3	; slot23 = math.max(slot24, slot25)
		125	[  0]	GGET 	 24		34	; slot24 = _env["math"]
		126	[  0]	TGETS	 24	24	33	; slot24 = math.floor
		127	[  0]	SUBVV	 26	6	22	; slot26 = math.floor - math.max
		128	[  0]	MULVN	 26	26	14	; slot26 = slot26 * 0.5
		129	[  0]	CALL 	 24	2	2	; slot24 = math.floor(slot25)
		130	[  0]	ADDVV	 24	8	24	; slot24 = math.max + math.floor
		131	[  0]	GGET 	 25		34	; slot25 = _env["math"]
		132	[  0]	TGETS	 25	25	33	; slot25 = math.floor
		133	[  0]	SUBVV	 27	10	23	; slot27 = slot10 - math.max
		134	[  0]	MULVN	 27	27	14	; slot27 = slot27 * 0.5
		135	[  0]	CALL 	 25	2	2	; slot25 = math.floor(slot26)
		136	[  0]	ADDVV	 25	9	25	; slot25 = slot9 + math.floor
		137	[  0]	TGETS	 26	17	25	; slot26 = <unknown table>.slot.panelPad
		138	[  0]	ADDVV	 26	24	26	; slot26 = slot24 + <unknown table>.slot.panelPad
		139	[  0]	GGET 	 27		34	; slot27 = _env["math"]
		140	[  0]	TGETS	 27	27	33	; slot27 = math.floor
		141	[  0]	TGETS	 29	17	25	; slot29 = <unknown table>.slot.panelPad
		142	[  0]	MULVN	 29	29	12	; slot29 = <unknown table>.slot.panelPad * 2
		143	[  0]	SUBVV	 29	22	29	; slot29 = math.max - slot29
		144	[  0]	SUBVV	 29	29	18	; slot29 = slot29 - slot18
		145	[  0]	DIVVN	 29	29	12	; slot29 = slot29 / 2
		146	[  0]	CALL 	 27	2	2	; slot27 = math.floor(slot28)
		147	[  0]	ADDVV	 26	26	27	; slot26 = slot26 + math.floor
		148	[  0]	TGETS	 27	17	24	; slot27 = <unknown table>.slot.bgOffsetX
		149	[  0]	IST  	   		27	; if <unknown table>.slot.bgOffsetX
		150	[  0]	JMP  	 28		1	; 	goto 152
		151	[  0]	KSHORT	 27		0	; slot27 = 0
		152	[  0]	ADDVV	 26	26	27	; slot26 = slot26 + slot27
		153	[  0]	TGETS	 27	17	23	; slot27 = <unknown table>.slot.bgAnimX
		154	[  0]	IST  	   		27	; if <unknown table>.slot.bgAnimX
		155	[  0]	JMP  	 28		1	; 	goto 157
		156	[  0]	KSHORT	 27		0	; slot27 = 0
		157	[  0]	ADDVV	 26	26	27	; slot26 = slot26 + slot27
		158	[  0]	TGETS	 27	17	25	; slot27 = <unknown table>.slot.panelPad
		159	[  0]	ADDVV	 27	25	27	; slot27 = slot25 + <unknown table>.slot.panelPad
		160	[  0]	GGET 	 28		34	; slot28 = _env["math"]
		161	[  0]	TGETS	 28	28	33	; slot28 = math.floor
		162	[  0]	TGETS	 30	0	32	; slot30 = slot0.scale
		163	[  0]	MULNV	 30	30	15	; slot30 = 40 * <unknown table>.scale
		164	[  0]	TGETS	 31	17	32	; slot31 = <unknown table>.slot.scale
		165	[  0]	MULVV	 30	30	31	; slot30 = slot30 * <unknown table>.slot.scale
		166	[  0]	CALL 	 28	2	2	; slot28 = math.floor(slot29)
		167	[  0]	ADDVV	 27	27	28	; slot27 = slot27 + math.floor
		168	[  0]	TGETS	 28	17	22	; slot28 = <unknown table>.slot.bgOffsetY
		169	[  0]	IST  	   		28	; if <unknown table>.slot.bgOffsetY
		170	[  0]	JMP  	 29		1	; 	goto 172
		171	[  0]	KSHORT	 28		0	; slot28 = 0
		172	[  0]	ADDVV	 27	27	28	; slot27 = slot27 + slot28
		173	[  0]	TGETS	 28	17	21	; slot28 = <unknown table>.slot.bgAnimY
		174	[  0]	IST  	   		28	; if <unknown table>.slot.bgAnimY
		175	[  0]	JMP  	 29		1	; 	goto 177
		176	[  0]	KSHORT	 28		0	; slot28 = 0
		177	[  0]	ADDVV	 27	27	28	; slot27 = slot27 + slot28
		178	[  0]	GGET 	 28		34	; slot28 = _env["math"]
		179	[  0]	TGETS	 28	28	33	; slot28 = math.floor
		180	[  0]	TGETS	 30	0	32	; slot30 = slot0.scale
		181	[  0]	MULNV	 30	30	16	; slot30 = 96 * <unknown table>.scale
		182	[  0]	CALL 	 28	2	2	; slot28 = math.floor(slot29)
		183	[  0]	GGET 	 29		34	; slot29 = _env["math"]
		184	[  0]	TGETS	 29	29	33	; slot29 = math.floor
		185	[  0]	TGETS	 31	0	32	; slot31 = slot0.scale
		186	[  0]	MULNV	 31	31	17	; slot31 = 28 * <unknown table>.scale
		187	[  0]	CALL 	 29	2	2	; slot29 = math.floor(slot30)
		188	[  0]	GGET 	 30		34	; slot30 = _env["math"]
		189	[  0]	TGETS	 30	30	33	; slot30 = math.floor
		190	[  0]	SUBVV	 32	22	28	; slot32 = math.max - math.floor
		191	[  0]	DIVVN	 32	32	12	; slot32 = slot32 / 2
		192	[  0]	CALL 	 30	2	2	; slot30 = math.floor(slot31)
		193	[  0]	ADDVV	 30	24	30	; slot30 = slot24 + math.floor
		194	[  0]	ADDVV	 31	25	23	; slot31 = slot25 + math.max
		195	[  0]	SUBVV	 31	31	29	; slot31 = slot31 - math.floor
		196	[  0]	GGET 	 32		34	; slot32 = _env["math"]
		197	[  0]	TGETS	 32	32	33	; slot32 = math.floor
		198	[  0]	TGETS	 34	0	32	; slot34 = slot0.scale
		199	[  0]	MULNV	 34	34	18	; slot34 = 12 * <unknown table>.scale
		200	[  0]	CALL 	 32	2	2	; slot32 = math.floor(slot33)
		201	[  0]	SUBVV	 31	31	32	; slot31 = slot31 - math.floor
		202	[  0]	TDUP 	 32		19	; slot32 = copy table#k19
		203	[  0]	TDUP 	 33		20	; slot33 = copy table#k20
		204	[  0]	TSETS	  1	33	37	; slot33.W = <unknown table>.virtual.W
		205	[  0]	TSETS	  2	33	36	; slot33.H = <unknown table>.virtual.H
		206	[  0]	TSETS	 33	32	18	; slot32.screen = slot33
		207	[  0]	TDUP 	 33		17	; slot33 = copy table#k17
		208	[  0]	TSETS	  8	33	16	; slot33.x = math.max
		209	[  0]	TSETS	  9	33	15	; slot33.y = slot9
		210	[  0]	TSETS	  6	33	14	; slot33.w = math.floor
		211	[  0]	TSETS	 10	33	13	; slot33.h = slot10
		212	[  0]	TSETS	 33	32	12	; slot32.left = slot33
		213	[  0]	TDUP 	 33		11	; slot33 = copy table#k11
		214	[  0]	TSETS	 13	33	16	; slot33.x = slot13
		215	[  0]	TSETS	 14	33	15	; slot33.y = slot14
		216	[  0]	TSETS	 15	33	14	; slot33.w = slot15
		217	[  0]	TSETS	 16	33	13	; slot33.h = slot16
		218	[  0]	TSETS	 33	32	10	; slot32.right = slot33
		219	[  0]	TDUP 	 33		9	; slot33 = copy table#k9
		220	[  0]	TSETS	 24	33	16	; slot33.x = slot24
		221	[  0]	TSETS	 25	33	15	; slot33.y = slot25
		222	[  0]	TSETS	 22	33	14	; slot33.w = math.max
		223	[  0]	TSETS	 23	33	13	; slot33.h = math.max
		224	[  0]	TSETS	 33	32	8	; slot32.slotPanel = slot33
		225	[  0]	TDUP 	 33		7	; slot33 = copy table#k7
		226	[  0]	TSETS	 26	33	16	; slot33.x = slot26
		227	[  0]	TSETS	 27	33	15	; slot33.y = slot27
		228	[  0]	TSETS	 18	33	14	; slot33.w = slot18
		229	[  0]	TSETS	 19	33	13	; slot33.h = slot19
		230	[  0]	TSETS	 33	32	6	; slot32.grid = slot33
		231	[  0]	TDUP 	 33		5	; slot33 = copy table#k5
		232	[  0]	TSETS	 30	33	16	; slot33.x = slot30
		233	[  0]	TSETS	 31	33	15	; slot33.y = slot31
		234	[  0]	TSETS	 28	33	14	; slot33.w = math.floor
		235	[  0]	TSETS	 29	33	13	; slot33.h = math.floor
		236	[  0]	TSETS	 33	32	4	; slot32.spinBtn = slot33
		237	[  0]	FNEW 	 33		3	; N/A:0-0: 0 args, 5 upvalues, 20 slots
			
			;;;; constant tables ;;;;
			ktable#4 = [
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
			  2	[  0]	GGET 	  1		16	; slot1 = _env["math"]
			  3	[  0]	TGETS	  1	1	15	; slot1 = math.max
			  4	[  0]	KSHORT	  3		1	; slot3 = 1
			  5	[  0]	GGET 	  4		16	; slot4 = _env["math"]
			  6	[  0]	TGETS	  4	4	14	; slot4 = math.floor
			  7	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
			  8	[  0]	TGETS	  6	6	13	; slot6 = uv0"unknown".scale
			  9	[  0]	IST  	   		6	; if uv0"unknown".scale
			 10	[  0]	JMP  	  7		1	; 	goto 12
			 11	[  0]	KSHORT	  6		1	; slot6 = 1
			 12	[  0]	ADDVN	  6	6	0	; slot6 = slot6 + 0.5
			 13	[  0]	CALL 	  4	0	2	; MULTRES = math.floor(slot5)
			 14	[  0]	CALLM	  1	2	1	; slot1 = math.max(slot2, ...MULTRES)
			 15	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			 16	[  0]	ISF  	   		2	; if not uv0"unknown"
			 17	[  0]	JMP  	  3		4	; 	goto 22
			 18	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			 19	[  0]	TGETS	  2	2	12	; slot2 = uv0"unknown".nudgeButtons
			 20	[  0]	IST  	   		2	; if uv0"unknown".nudgeButtons
			 21	[  0]	JMP  	  3		1	; 	goto 23
			 22	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
			 23	[  0]	GGET 	  3		11	; slot3 = _env["tonumber"]
			 24	[  0]	TGETS	  5	2	10	; slot5 = slot2.offsetX
			 25	[  0]	IST  	   		5	; if <unknown table>.offsetX
			 26	[  0]	JMP  	  6		1	; 	goto 28
			 27	[  0]	KSHORT	  5		0	; slot5 = 0
			 28	[  0]	CALL 	  3	2	2	; slot3 = tonumber(math.floor)
			 29	[  0]	IST  	   		3	; if tonumber
			 30	[  0]	JMP  	  4		1	; 	goto 32
			 31	[  0]	KSHORT	  3		0	; slot3 = 0
			 32	[  0]	MULVV	  3	3	1	; slot3 = slot3 * slot1
			 33	[  0]	GGET 	  4		11	; slot4 = _env["tonumber"]
			 34	[  0]	TGETS	  6	2	9	; slot6 = slot2.offsetY
			 35	[  0]	IST  	   		6	; if <unknown table>.offsetY
			 36	[  0]	JMP  	  7		1	; 	goto 38
			 37	[  0]	KSHORT	  6		0	; slot6 = 0
			 38	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
			 39	[  0]	IST  	   		4	; if tonumber
			 40	[  0]	JMP  	  5		1	; 	goto 42
			 41	[  0]	KSHORT	  4		0	; slot4 = 0
			 42	[  0]	MULVV	  4	4	1	; slot4 = slot4 * slot1
			 43	[  0]	GGET 	  5		11	; slot5 = _env["tonumber"]
			 44	[  0]	TGETS	  7	2	8	; slot7 = slot2.gapAboveSpin
			 45	[  0]	IST  	   		7	; if <unknown table>.gapAboveSpin
			 46	[  0]	JMP  	  8		1	; 	goto 48
			 47	[  0]	KSHORT	  7		3	; slot7 = 3
			 48	[  0]	CALL 	  5	2	2	; slot5 = tonumber(slot6)
			 49	[  0]	IST  	   		5	; if tonumber
			 50	[  0]	JMP  	  6		1	; 	goto 52
			 51	[  0]	KSHORT	  5		3	; slot5 = 3
			 52	[  0]	MULVV	  5	5	1	; slot5 = slot5 * slot1
			 53	[  0]	MULNV	  6	1	1	; slot6 = 39 * slot1
			 54	[  0]	MULNV	  7	1	2	; slot7 = 28 * slot1
			 55	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
			 56	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
			 57	[  0]	TGETS	  9	9	7	; slot9 = uv2"unknown".cols
			 58	[  0]	DIVVV	  8	8	9	; slot8 = uv1"unknown" / uv2"unknown".cols
			 59	[  0]	KSHORT	  9		1	; slot9 = 1
			 60	[  0]	UGET 	 10		2	; slot10 = uv2"unknwon"
			 61	[  0]	TGETS	 10	10	7	; slot10 = uv2"unknown".cols
			 62	[  0]	KSHORT	 11		1	; slot11 = 1
			 63	[  0]	FORI 	  9		27	; for slot12 = slot9,slot10,slot11 else goto 91
			 64	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
			 65	[  0]	SUBVN	 14	12	0	; slot14 = slot12 - 0.5
			 66	[  0]	MULVV	 14	14	8	; slot14 = slot14 * slot8
			 67	[  0]	ADDVV	 13	13	14	; slot13 = uv3"unknown" + slot14
			 68	[  0]	GGET 	 14		16	; slot14 = _env["math"]
			 69	[  0]	TGETS	 14	14	14	; slot14 = math.floor
			 70	[  0]	DIVVN	 16	6	3	; slot16 = slot6 / 2
			 71	[  0]	SUBVV	 16	13	16	; slot16 = slot13 - slot16
			 72	[  0]	ADDVV	 16	16	3	; slot16 = slot16 + slot3
			 73	[  0]	CALL 	 14	2	2	; slot14 = math.floor(slot15)
			 74	[  0]	GGET 	 15		16	; slot15 = _env["math"]
			 75	[  0]	TGETS	 15	15	14	; slot15 = math.floor
			 76	[  0]	UGET 	 17		4	; slot17 = uv4"unknwon"
			 77	[  0]	SUBVV	 17	17	7	; slot17 = uv4"unknown" - slot7
			 78	[  0]	SUBVV	 17	17	5	; slot17 = slot17 - slot5
			 79	[  0]	ADDVV	 17	17	4	; slot17 = slot17 + slot4
			 80	[  0]	CALL 	 15	2	2	; slot15 = math.floor(slot16)
			 81	[  0]	GGET 	 16		6	; slot16 = _env["table"]
			 82	[  0]	TGETS	 16	16	5	; slot16 = table.insert
			 83	[  0]	MOV  	 18		0	; slot18 = slot0
			 84	[  0]	TDUP 	 19		4	; slot19 = copy table#k4
			 85	[  0]	TSETS	 14	19	3	; slot19.x = math.floor
			 86	[  0]	TSETS	 15	19	2	; slot19.y = math.floor
			 87	[  0]	TSETS	  6	19	1	; slot19.w = slot6
			 88	[  0]	TSETS	  7	19	0	; slot19.h = slot7
			 89	[  0]	CALL 	 16	1	3	;  = table.insert(slot17, slot18)
			 90	[  0]	FORL 	  9		-27	; slot12 = slot12 + slot11; if cmp(slot12, sign slot11,  slot10) goto 64
			 91	[  0]	RET1 	  0		2	; return slot0
		238	[  0]	CALL 	 33	2	1	; slot33 = slot33()
		239	[  0]	TSETS	 33	32	2	; slot32.nudgeBtns = slot33
		240	[  0]	FNEW 	 33		1	; N/A:0-0: 0 args, 3 upvalues, 7 slots
			
			;;;; constant tables ;;;;
			ktable#4 = [
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  0		7	; slot0 = _env["math"]
			  2	[  0]	TGETS	  0	0	6	; slot0 = math.floor
			  3	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  4	[  0]	TGETS	  2	2	5	; slot2 = uv0"unknown".scale
			  5	[  0]	MULNV	  2	2	0	; slot2 = 130 * uv0"unknown".scale
			  6	[  0]	CALL 	  0	2	2	; slot0 = math.floor(slot1)
			  7	[  0]	GGET 	  1		7	; slot1 = _env["math"]
			  8	[  0]	TGETS	  1	1	6	; slot1 = math.floor
			  9	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			 10	[  0]	TGETS	  3	3	5	; slot3 = uv0"unknown".scale
			 11	[  0]	MULNV	  3	3	1	; slot3 = 28 * uv0"unknown".scale
			 12	[  0]	CALL 	  1	2	2	; slot1 = math.floor(slot2)
			 13	[  0]	GGET 	  2		7	; slot2 = _env["math"]
			 14	[  0]	TGETS	  2	2	6	; slot2 = math.floor
			 15	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
			 16	[  0]	SUBVV	  4	4	0	; slot4 = uv1"unknown" - slot0
			 17	[  0]	DIVVN	  4	4	2	; slot4 = slot4 / 2
			 18	[  0]	CALL 	  2	2	2	; slot2 = math.floor(slot3)
			 19	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
			 20	[  0]	GGET 	  4		7	; slot4 = _env["math"]
			 21	[  0]	TGETS	  4	4	6	; slot4 = math.floor
			 22	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
			 23	[  0]	TGETS	  6	6	5	; slot6 = uv0"unknown".scale
			 24	[  0]	MULNV	  6	6	3	; slot6 = 8 * uv0"unknown".scale
			 25	[  0]	CALL 	  4	2	2	; slot4 = math.floor(slot5)
			 26	[  0]	ADDVV	  3	3	4	; slot3 = uv2"unknown" + math.floor
			 27	[  0]	TDUP 	  4		4	; slot4 = copy table#k4
			 28	[  0]	TSETS	  2	4	3	; slot4.x = slot2
			 29	[  0]	TSETS	  3	4	2	; slot4.y = slot3
			 30	[  0]	TSETS	  0	4	1	; slot4.w = slot0
			 31	[  0]	TSETS	  1	4	0	; slot4.h = slot1
			 32	[  0]	RET1 	  4		2	; return slot4
		241	[  0]	CALL 	 33	2	1	; slot33 = slot33()
		242	[  0]	TSETS	 33	32	0	; slot32.startBtn = slot33
		243	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 244
		244	[  0]	RET1 	 32		2	; return slot32
	  4	[  0]	TSETS	  2	1	20	; slot1.compute = slot2
	  5	[  0]	MOV  	  0		1	; slot0 = slot1
	  6	[  0]	KPRI 	  1		0	; slot1 = nil
	  7	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
	  8	[  0]	KNUM 	  3		0	; slot3 = 0.0001
	  9	[  0]	FNEW 	  4		18	; N/A:0-0: 2 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		2	; slot2 = _env["tonumber"]
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		  4	[  0]	MOV  	  0		2	; slot0 = slot2
		  5	[  0]	ISF  	   		0	; if not slot0
		  6	[  0]	JMP  	  2		9	; 	goto 16
		  7	[  0]	ISNEV	  0		0	; if slot0 ~= slot0
		  8	[  0]	JMP  	  2		7	; 	goto 16
		  9	[  0]	KSHORT	  2		0	; slot2 = 0
		 10	[  0]	ISLE 	  0		2	; if slot0 <= slot2
		 11	[  0]	JMP  	  2		4	; 	goto 16
		 12	[  0]	GGET 	  2		1	; slot2 = _env["math"]
		 13	[  0]	TGETS	  2	2	0	; slot2 = math.huge
		 14	[  0]	ISNEV	  0		2	; if slot0 ~= math.huge
		 15	[  0]	JMP  	  2		1	; 	goto 17
		 16	[  0]	RET1 	  1		2	; return slot1
		 17	[  0]	RET1 	  0		2	; return slot0
	 10	[  0]	FNEW 	  5		17	; N/A:0-0: 1 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		3	; 	goto 6
		  3	[  0]	TGETS	  1	0	1	; slot1 = slot0.getDPIScale
		  4	[  0]	IST  	   		1	; if <unknown table>.getDPIScale
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	KSHORT	  1		1	; slot1 = 1
		  7	[  0]	RET1 	  1		2	; return slot1
		  8	[  0]	GGET 	  1		0	; slot1 = _env["pcall"]
		  9	[  0]	TGETS	  3	0	1	; slot3 = slot0.getDPIScale
		 10	[  0]	MOV  	  4		0	; slot4 = slot0
		 11	[  0]	CALL 	  1	3	3	; slot1, slot2 = pcall(slot2, <unknown table>.getDPIScale)
		 12	[  0]	IST  	   		1	; if slot1
		 13	[  0]	JMP  	  3		2	; 	goto 16
		 14	[  0]	KSHORT	  3		1	; slot3 = 1
		 15	[  0]	RET1 	  3		2	; return slot3
		 16	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 17	[  0]	MOV  	  5		2	; slot5 = slot2
		 18	[  0]	KSHORT	  6		1	; slot6 = 1
		 19	[  0]	CALLT	  3		3	; return uv0"unknown"(slot4, slot5)
	 11	[  0]	FNEW 	  6		15	; N/A:0-0: 1 args, 2 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	CALL 	  1	2	3	; slot1 = uv0"unknown"(slot2, slot3)
		  5	[  0]	GGET 	  2		3	; slot2 = _env["math"]
		  6	[  0]	TGETS	  2	2	2	; slot2 = math.floor
		  7	[  0]	ADDVN	  4	1	0	; slot4 = slot1 + 0.5
		  8	[  0]	CALL 	  2	2	2	; slot2 = math.floor(slot3)
		  9	[  0]	KSHORT	  3		2	; slot3 = 2
		 10	[  0]	ISGT 	  3		2	; if slot3 > slot2
		 11	[  0]	JMP  	  3		12	; 	goto 24
		 12	[  0]	GGET 	  3		3	; slot3 = _env["math"]
		 13	[  0]	TGETS	  3	3	1	; slot3 = math.abs
		 14	[  0]	SUBVV	  5	1	2	; slot5 = slot1 - slot2
		 15	[  0]	CALL 	  3	2	2	; slot3 = math.abs(slot4)
		 16	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 17	[  0]	ISGT 	  3		4	; if math.abs > uv1"unknown"
		 18	[  0]	JMP  	  3		5	; 	goto 24
		 19	[  0]	MODVN	  3	2	1	; slot3 = slot2 % 2
		 20	[  0]	ISNEN	  3		2	; if slot3 ~= 0
		 21	[  0]	JMP  	  3		2	; 	goto 24
		 22	[  0]	KSHORT	  3		2	; slot3 = 2
		 23	[  0]	RET1 	  3		2	; return slot3
		 24	[  0]	GGET 	  3		3	; slot3 = _env["math"]
		 25	[  0]	TGETS	  3	3	0	; slot3 = math.max
		 26	[  0]	KSHORT	  5		1	; slot5 = 1
		 27	[  0]	MOV  	  6		1	; slot6 = slot1
		 28	[  0]	CALLT	  3		3	; return math.max(uv1"unknown", slot5)
	 12	[  0]	TSETS	  6	2	16	; slot2.chooseDensity = slot6
	 13	[  0]	FNEW 	  6		13	; N/A:0-0: 1 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALLT	  1		2	; return uv0"unknown"(slot2)
	 14	[  0]	TSETS	  6	2	14	; slot2.getDensity = slot6
	 15	[  0]	FNEW 	  6		12	; N/A:0-0: 4 args, 2 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  4		6	; 	goto 9
		  3	[  0]	TGETS	  4	0	6	; slot4 = slot0.getWidth
		  4	[  0]	ISF  	   		4	; if not <unknown table>.getWidth
		  5	[  0]	JMP  	  5		3	; 	goto 9
		  6	[  0]	TGETS	  4	0	5	; slot4 = slot0.getHeight
		  7	[  0]	IST  	   		4	; if <unknown table>.getHeight
		  8	[  0]	JMP  	  4		2	; 	goto 11
		  9	[  0]	KPRI 	  4		1	; slot4 = false
		 10	[  0]	RET1 	  4		2	; return slot4
		 11	[  0]	GGET 	  4		4	; slot4 = _env["pcall"]
		 12	[  0]	TGETS	  6	0	6	; slot6 = slot0.getWidth
		 13	[  0]	MOV  	  7		0	; slot7 = slot0
		 14	[  0]	CALL 	  4	3	3	; slot4, slot5 = pcall(slot5, <unknown table>.getWidth)
		 15	[  0]	GGET 	  6		4	; slot6 = _env["pcall"]
		 16	[  0]	TGETS	  8	0	5	; slot8 = slot0.getHeight
		 17	[  0]	MOV  	  9		0	; slot9 = slot0
		 18	[  0]	CALL 	  6	3	3	; slot6, slot7 = pcall(slot7, <unknown table>.getHeight)
		 19	[  0]	ISF  	   		4	; if not pcall
		 20	[  0]	JMP  	  8		6	; 	goto 27
		 21	[  0]	ISF  	   		6	; if not pcall
		 22	[  0]	JMP  	  8		4	; 	goto 27
		 23	[  0]	ISNEV	  5		1	; if slot5 ~= slot1
		 24	[  0]	JMP  	  8		2	; 	goto 27
		 25	[  0]	ISEQV	  7		2	; if slot7 == slot2
		 26	[  0]	JMP  	  8		2	; 	goto 29
		 27	[  0]	KPRI 	  8		1	; slot8 = false
		 28	[  0]	RET1 	  8		2	; return slot8
		 29	[  0]	TGETS	  8	0	3	; slot8 = slot0.getPixelDimensions
		 30	[  0]	ISF  	   		8	; if not <unknown table>.getPixelDimensions
		 31	[  0]	JMP  	  9		24	; 	goto 56
		 32	[  0]	GGET 	  8		4	; slot8 = _env["pcall"]
		 33	[  0]	TGETS	 10	0	3	; slot10 = slot0.getPixelDimensions
		 34	[  0]	MOV  	 11		0	; slot11 = slot0
		 35	[  0]	CALL 	  8	4	3	; slot8, slot9, slot10 = pcall(slot9, <unknown table>.getPixelDimensions)
		 36	[  0]	ISF  	   		8	; if not pcall
		 37	[  0]	JMP  	 11		18	; 	goto 56
		 38	[  0]	GGET 	 11		2	; slot11 = _env["math"]
		 39	[  0]	TGETS	 11	11	1	; slot11 = math.floor
		 40	[  0]	MULVV	 13	1	3	; slot13 = slot1 * slot3
		 41	[  0]	ADDVN	 13	13	0	; slot13 = slot13 + 0.5
		 42	[  0]	CALL 	 11	2	2	; slot11 = math.floor(slot12)
		 43	[  0]	ISNEV	  9		11	; if slot9 ~= math.floor
		 44	[  0]	JMP  	 11		7	; 	goto 52
		 45	[  0]	GGET 	 11		2	; slot11 = _env["math"]
		 46	[  0]	TGETS	 11	11	1	; slot11 = math.floor
		 47	[  0]	MULVV	 13	2	3	; slot13 = slot2 * slot3
		 48	[  0]	ADDVN	 13	13	0	; slot13 = slot13 + 0.5
		 49	[  0]	CALL 	 11	2	2	; slot11 = math.floor(slot12)
		 50	[  0]	ISEQV	 10		11	; if <unknown table>.getPixelDimensions == math.floor
		 51	[  0]	JMP  	 11		2	; 	goto 54
		 52	[  0]	KPRI 	 11		1	; slot11 = false
		 53	[  0]	JMP  	 12		1	; 	goto 55
		 54	[  0]	KPRI 	 11		2	; slot11 = true
		 55	[  0]	RET1 	 11		2	; return slot11
		 56	[  0]	GGET 	  8		2	; slot8 = _env["math"]
		 57	[  0]	TGETS	  8	8	0	; slot8 = math.abs
		 58	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 59	[  0]	MOV  	 12		0	; slot12 = slot0
		 60	[  0]	CALL 	 10	2	2	; slot10 = uv0"unknown"(slot11)
		 61	[  0]	SUBVV	 10	10	3	; slot10 = uv0"unknown" - slot3
		 62	[  0]	CALL 	  8	2	2	; slot8 = math.abs(slot9)
		 63	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 64	[  0]	ISLE 	  8		9	; if math.abs <= uv1"unknown"
		 65	[  0]	JMP  	  8		2	; 	goto 68
		 66	[  0]	KPRI 	  8		1	; slot8 = false
		 67	[  0]	JMP  	  9		1	; 	goto 69
		 68	[  0]	KPRI 	  8		2	; slot8 = true
		 69	[  0]	RET1 	  8		2	; return slot8
	 16	[  0]	FNEW 	  7		11	; N/A:0-0: 3 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		ktable#5 = [
			[msaa] = 0,
			[format] = rgba8,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		10	; slot3 = _env["love"]
		  2	[  0]	ISF  	   		3	; if not love
		  3	[  0]	JMP  	  4		9	; 	goto 13
		  4	[  0]	GGET 	  3		10	; slot3 = _env["love"]
		  5	[  0]	TGETS	  3	3	9	; slot3 = love.graphics
		  6	[  0]	ISF  	   		3	; if not love.graphics
		  7	[  0]	JMP  	  4		5	; 	goto 13
		  8	[  0]	GGET 	  3		10	; slot3 = _env["love"]
		  9	[  0]	TGETS	  3	3	9	; slot3 = love.graphics
		 10	[  0]	TGETS	  3	3	8	; slot3 = love.graphics.newCanvas
		 11	[  0]	IST  	   		3	; if love.graphics.newCanvas
		 12	[  0]	JMP  	  3		3	; 	goto 16
		 13	[  0]	KPRI 	  3		0	; slot3 = nil
		 14	[  0]	KSTR 	  4		7	; slot4 = "love.graphics.newCanvas is unavailable"
		 15	[  0]	RET  	  3		3	; return slot3, slot4
		 16	[  0]	GGET 	  3		6	; slot3 = _env["pcall"]
		 17	[  0]	GGET 	  5		10	; slot5 = _env["love"]
		 18	[  0]	TGETS	  5	5	9	; slot5 = love.graphics
		 19	[  0]	TGETS	  5	5	8	; slot5 = love.graphics.newCanvas
		 20	[  0]	MOV  	  6		0	; slot6 = slot0
		 21	[  0]	MOV  	  7		1	; slot7 = slot1
		 22	[  0]	TDUP 	  8		5	; slot8 = copy table#k5
		 23	[  0]	TSETS	  2	8	4	; slot8.dpiscale = slot2
		 24	[  0]	CALL 	  3	3	5	; slot3, slot4 = pcall(slot4, love.graphics.newCanvas, slot6, slot7)
		 25	[  0]	ISF  	   		3	; if not slot3
		 26	[  0]	JMP  	  5		2	; 	goto 29
		 27	[  0]	IST  	   		4	; if slot4
		 28	[  0]	JMP  	  5		7	; 	goto 36
		 29	[  0]	KPRI 	  5		0	; slot5 = nil
		 30	[  0]	GGET 	  6		3	; slot6 = _env["tostring"]
		 31	[  0]	ISTC 	  8		4	; slot8 = slot4; if slot4
		 32	[  0]	JMP  	  8		1	; 	goto 34
		 33	[  0]	KSTR 	  8		2	; slot8 = "canvas allocation failed"
		 34	[  0]	CALL 	  6	0	2	; MULTRES = tostring(slot7)
		 35	[  0]	RETM 	  5		1	; return , ...MULTRES
		 36	[  0]	MOV  	  7		4	; slot7 = slot4
		 37	[  0]	TGETS	  5	4	1	; slot5 = slot4.setFilter
		 38	[  0]	KSTR 	  8		0	; slot8 = "nearest"
		 39	[  0]	KSTR 	  9		0	; slot9 = "nearest"
		 40	[  0]	CALL 	  5	1	4	;  = <unknown table>.setFilter(tostring, slot7, slot8)
		 41	[  0]	RET1 	  4		2	; return slot4
	 17	[  0]	FNEW 	  8		9	; N/A:0-0: 5 args, 6 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  5		6	; slot5 = _env["math"]
		  2	[  0]	TGETS	  5	5	5	; slot5 = math.max
		  3	[  0]	KSHORT	  7		1	; slot7 = 1
		  4	[  0]	GGET 	  8		6	; slot8 = _env["math"]
		  5	[  0]	TGETS	  8	8	4	; slot8 = math.floor
		  6	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		  7	[  0]	MOV  	 12		1	; slot12 = slot1
		  8	[  0]	KSHORT	 13		1	; slot13 = 1
		  9	[  0]	CALL 	 10	2	3	; slot10 = uv0"unknown"(slot11, slot12)
		 10	[  0]	ADDVN	 10	10	0	; slot10 = uv0"unknown" + 0.5
		 11	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 12	[  0]	CALLM	  5	2	1	; slot5 = math.max(slot6, ...MULTRES)
		 13	[  0]	MOV  	  1		5	; slot1 = math.max
		 14	[  0]	GGET 	  5		6	; slot5 = _env["math"]
		 15	[  0]	TGETS	  5	5	5	; slot5 = math.max
		 16	[  0]	KSHORT	  7		1	; slot7 = 1
		 17	[  0]	GGET 	  8		6	; slot8 = _env["math"]
		 18	[  0]	TGETS	  8	8	4	; slot8 = math.floor
		 19	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 20	[  0]	MOV  	 12		2	; slot12 = slot2
		 21	[  0]	KSHORT	 13		1	; slot13 = 1
		 22	[  0]	CALL 	 10	2	3	; slot10 = uv0"unknown"(slot11, slot12)
		 23	[  0]	ADDVN	 10	10	0	; slot10 = uv0"unknown" + 0.5
		 24	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 25	[  0]	CALLM	  5	2	1	; slot5 = math.max(slot6, ...MULTRES)
		 26	[  0]	MOV  	  2		5	; slot2 = math.max
		 27	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 28	[  0]	TGETS	  5	5	3	; slot5 = uv1"unknown".chooseDensity
		 29	[  0]	MOV  	  7		3	; slot7 = slot3
		 30	[  0]	CALL 	  5	2	2	; slot5 = uv1"unknown".chooseDensity(slot6)
		 31	[  0]	IST  	   		4	; if slot4
		 32	[  0]	JMP  	  6		15	; 	goto 48
		 33	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 34	[  0]	MOV  	  8		0	; slot8 = slot0
		 35	[  0]	MOV  	  9		1	; slot9 = math.max
		 36	[  0]	MOV  	 10		2	; slot10 = math.max
		 37	[  0]	MOV  	 11		5	; slot11 = uv1"unknown".chooseDensity
		 38	[  0]	CALL 	  6	2	5	; slot6 = uv2"unknown"(slot7, slot8, math.max, math.max)
		 39	[  0]	ISF  	   		6	; if not uv2"unknown"
		 40	[  0]	JMP  	  7		7	; 	goto 48
		 41	[  0]	MOV  	  6		0	; slot6 = slot0
		 42	[  0]	KPRI 	  7		1	; slot7 = false
		 43	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		 44	[  0]	MOV  	 10		0	; slot10 = slot0
		 45	[  0]	CALL 	  8	2	2	; slot8 = uv3"unknown"(math.max)
		 46	[  0]	KPRI 	  9		0	; slot9 = nil
		 47	[  0]	RET  	  6		5	; return slot6, slot7, uv3"unknown", slot9
		 48	[  0]	UGET 	  6		4	; slot6 = uv4"unknwon"
		 49	[  0]	MOV  	  8		1	; slot8 = math.max
		 50	[  0]	MOV  	  9		2	; slot9 = math.max
		 51	[  0]	MOV  	 10		5	; slot10 = uv1"unknown".chooseDensity
		 52	[  0]	CALL 	  6	3	4	; slot6, slot7 = uv4"unknown"(slot7, math.max, math.max)
		 53	[  0]	IST  	   		6	; if uv4"unknown"
		 54	[  0]	JMP  	  8		23	; 	goto 78
		 55	[  0]	ISF  	   		0	; if not slot0
		 56	[  0]	JMP  	  8		7	; 	goto 64
		 57	[  0]	MOV  	  8		0	; slot8 = slot0
		 58	[  0]	KPRI 	  9		1	; slot9 = false
		 59	[  0]	UGET 	 10		3	; slot10 = uv3"unknwon"
		 60	[  0]	MOV  	 12		0	; slot12 = slot0
		 61	[  0]	CALL 	 10	2	2	; slot10 = uv3"unknown"(uv1"unknown".chooseDensity)
		 62	[  0]	MOV  	 11		7	; slot11 = slot7
		 63	[  0]	RET  	  8		5	; return slot8, slot9, uv3"unknown", slot11
		 64	[  0]	GGET 	  8		6	; slot8 = _env["math"]
		 65	[  0]	TGETS	  8	8	2	; slot8 = math.abs
		 66	[  0]	SUBVN	 10	5	1	; slot10 = uv1"unknown".chooseDensity - 1
		 67	[  0]	CALL 	  8	2	2	; slot8 = math.abs(slot9)
		 68	[  0]	UGET 	  9		5	; slot9 = uv5"unknwon"
		 69	[  0]	ISGE 	  9		8	; if uv5"unknown" >= math.abs
		 70	[  0]	JMP  	  8		7	; 	goto 78
		 71	[  0]	UGET 	  8		4	; slot8 = uv4"unknwon"
		 72	[  0]	MOV  	 10		1	; slot10 = math.max
		 73	[  0]	MOV  	 11		2	; slot11 = math.max
		 74	[  0]	KSHORT	 12		1	; slot12 = 1
		 75	[  0]	CALL 	  8	3	4	; slot8, slot9 = uv4"unknown"(uv5"unknown", math.max, math.max)
		 76	[  0]	MOV  	  7		9	; slot7 = uv5"unknown"
		 77	[  0]	MOV  	  6		8	; slot6 = uv4"unknown"
		 78	[  0]	IST  	   		6	; if uv4"unknown"
		 79	[  0]	JMP  	  8		5	; 	goto 85
		 80	[  0]	KPRI 	  8		0	; slot8 = nil
		 81	[  0]	KPRI 	  9		1	; slot9 = false
		 82	[  0]	KSHORT	 10		1	; slot10 = 1
		 83	[  0]	MOV  	 11		7	; slot11 = uv5"unknown"
		 84	[  0]	RET  	  8		5	; return slot8, slot9, slot10, uv5"unknown"
		 85	[  0]	ISF  	   		0	; if not slot0
		 86	[  0]	JMP  	  8		9	; 	goto 96
		 87	[  0]	ISEQV	  0		6	; if slot0 == uv4"unknown"
		 88	[  0]	JMP  	  8		7	; 	goto 96
		 89	[  0]	TGETS	  8	0	1	; slot8 = slot0.release
		 90	[  0]	ISF  	   		8	; if not <unknown table>.release
		 91	[  0]	JMP  	  9		4	; 	goto 96
		 92	[  0]	GGET 	  8		0	; slot8 = _env["pcall"]
		 93	[  0]	TGETS	 10	0	1	; slot10 = slot0.release
		 94	[  0]	MOV  	 11		0	; slot11 = slot0
		 95	[  0]	CALL 	  8	1	3	;  = pcall(slot9, <unknown table>.release)
		 96	[  0]	MOV  	  8		6	; slot8 = uv4"unknown"
		 97	[  0]	KPRI 	  9		2	; slot9 = true
		 98	[  0]	UGET 	 10		3	; slot10 = uv3"unknwon"
		 99	[  0]	MOV  	 12		6	; slot12 = uv4"unknown"
		100	[  0]	CALL 	 10	2	2	; slot10 = uv3"unknown"(slot11)
		101	[  0]	KPRI 	 11		0	; slot11 = nil
		102	[  0]	RET  	  8		5	; return uv4"unknown", slot9, uv3"unknown", slot11
	 18	[  0]	TSETS	  8	2	10	; slot2.ensure = slot8
	 19	[  0]	MOV  	  1		2	; slot1 = slot2
	 20	[  0]	UCLO 	  2		0	; nil uvs >= r2; goto 21
	 21	[  0]	KPRI 	  2		0	; slot2 = nil
	 22	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
	 23	[  0]	KPRI 	  4		1	; slot4 = false
	 24	[  0]	KPRI 	  5		0	; slot5 = nil
	 25	[  0]	KSHORT	  6		3000	; slot6 = 3000
	 26	[  0]	KSHORT	  7		2000	; slot7 = 2000
	 27	[  0]	FNEW 	  8		7	; N/A:0-0: 0 args, 1 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	NOT  	  0		0	; slot0 = not uv0"unknown"
		  3	[  0]	USETV	  0		0	; uv0"unknwon" = slot0
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	RET1 	  0		2	; return uv0"unknown"
	 28	[  0]	TSETS	  8	3	8	; slot3.toggle = slot8
	 29	[  0]	FNEW 	  8		5	; N/A:0-0: 4 args, 3 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		ktable#8 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  2	[  0]	ISF  	   		4	; if not uv0"unknown"
		  3	[  0]	JMP  	  4		6	; 	goto 10
		  4	[  0]	KSHORT	  4		0	; slot4 = 0
		  5	[  0]	ISLE 	  0		4	; if slot0 <= slot4
		  6	[  0]	JMP  	  4		3	; 	goto 10
		  7	[  0]	KSHORT	  4		0	; slot4 = 0
		  8	[  0]	ISGT 	  1		4	; if slot1 > slot4
		  9	[  0]	JMP  	  4		2	; 	goto 12
		 10	[  0]	KPRI 	  4		0	; slot4 = nil
		 11	[  0]	RET1 	  4		2	; return slot4
		 12	[  0]	GGET 	  4		10	; slot4 = _env["math"]
		 13	[  0]	TGETS	  4	4	9	; slot4 = math.min
		 14	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 15	[  0]	DIVVV	  6	0	6	; slot6 = slot0 / uv1"unknown"
		 16	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		 17	[  0]	DIVVV	  7	1	7	; slot7 = slot1 / uv2"unknown"
		 18	[  0]	CALL 	  4	2	3	; slot4 = math.min(slot5, slot6)
		 19	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 20	[  0]	MULVV	  5	5	4	; slot5 = uv1"unknown" * math.min
		 21	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 22	[  0]	MULVV	  6	6	4	; slot6 = uv2"unknown" * math.min
		 23	[  0]	SUBVV	  7	0	5	; slot7 = slot0 - slot5
		 24	[  0]	MULVN	  7	7	0	; slot7 = slot7 * 0.5
		 25	[  0]	SUBVV	  8	1	6	; slot8 = slot1 - slot6
		 26	[  0]	MULVN	  8	8	0	; slot8 = slot8 * 0.5
		 27	[  0]	GGET 	  9		10	; slot9 = _env["math"]
		 28	[  0]	TGETS	  9	9	9	; slot9 = math.min
		 29	[  0]	UGET 	 11		1	; slot11 = uv1"unknwon"
		 30	[  0]	DIVVV	 11	11	2	; slot11 = uv1"unknown" / slot2
		 31	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		 32	[  0]	DIVVV	 12	12	3	; slot12 = uv2"unknown" / slot3
		 33	[  0]	CALL 	  9	2	3	; slot9 = math.min(slot10, slot11)
		 34	[  0]	TDUP 	 10		8	; slot10 = copy table#k8
		 35	[  0]	TSETS	  7	10	7	; slot10.x = slot7
		 36	[  0]	TSETS	  8	10	6	; slot10.y = slot8
		 37	[  0]	TSETS	  5	10	5	; slot10.w = slot5
		 38	[  0]	TSETS	  6	10	4	; slot10.h = slot6
		 39	[  0]	MULVV	 11	9	4	; slot11 = math.min * math.min
		 40	[  0]	TSETS	 11	10	3	; slot10.scale = slot11
		 41	[  0]	GGET 	 11		10	; slot11 = _env["math"]
		 42	[  0]	TGETS	 11	11	2	; slot11 = math.floor
		 43	[  0]	UGET 	 13		1	; slot13 = uv1"unknwon"
		 44	[  0]	MULVV	 14	2	9	; slot14 = slot2 * math.min
		 45	[  0]	SUBVV	 13	13	14	; slot13 = uv1"unknown" - slot14
		 46	[  0]	MULVN	 13	13	0	; slot13 = slot13 * 0.5
		 47	[  0]	ADDVN	 13	13	0	; slot13 = slot13 + 0.5
		 48	[  0]	CALL 	 11	2	2	; slot11 = math.floor(slot12)
		 49	[  0]	MULVV	 11	11	4	; slot11 = math.floor * math.min
		 50	[  0]	ADDVV	 11	7	11	; slot11 = slot7 + slot11
		 51	[  0]	TSETS	 11	10	1	; slot10.gameX = slot11
		 52	[  0]	GGET 	 11		10	; slot11 = _env["math"]
		 53	[  0]	TGETS	 11	11	2	; slot11 = math.floor
		 54	[  0]	UGET 	 13		2	; slot13 = uv2"unknwon"
		 55	[  0]	MULVV	 14	3	9	; slot14 = slot3 * math.min
		 56	[  0]	SUBVV	 13	13	14	; slot13 = uv2"unknown" - slot14
		 57	[  0]	MULVN	 13	13	0	; slot13 = slot13 * 0.5
		 58	[  0]	ADDVN	 13	13	0	; slot13 = slot13 + 0.5
		 59	[  0]	CALL 	 11	2	2	; slot11 = math.floor(slot12)
		 60	[  0]	MULVV	 11	11	4	; slot11 = math.floor * math.min
		 61	[  0]	ADDVV	 11	8	11	; slot11 = slot8 + slot11
		 62	[  0]	TSETS	 11	10	0	; slot10.gameY = slot11
		 63	[  0]	RET1 	 10		2	; return slot10
	 30	[  0]	TSETS	  8	3	6	; slot3.layout = slot8
	 31	[  0]	FNEW 	  8		3	; N/A:0-0: 0 args, 3 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	IST  	   		0	; if uv0"unknown"
		  3	[  0]	JMP  	  0		1	; 	goto 5
		  4	[  0]	RET0 	  0		1	; return
		  5	[  0]	GGET 	  0		39	; slot0 = _env["love"]
		  6	[  0]	TGETS	  0	0	38	; slot0 = love.graphics
		  7	[  0]	TGETS	  1	0	37	; slot1 = love.graphics.getWidth
		  8	[  0]	CALL 	  1	2	1	; slot1 = love.graphics.getWidth()
		  9	[  0]	TGETS	  2	0	36	; slot2 = love.graphics.getHeight
		 10	[  0]	CALL 	  2	2	1	; slot2 = love.graphics.getHeight()
		 11	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 12	[  0]	TGETS	  3	3	35	; slot3 = uv1"unknown".layout
		 13	[  0]	MOV  	  5		1	; slot5 = slot1
		 14	[  0]	MOV  	  6		2	; slot6 = love.graphics.getHeight
		 15	[  0]	KSHORT	  7		640	; slot7 = 640
		 16	[  0]	KSHORT	  8		360	; slot8 = 360
		 17	[  0]	CALL 	  3	2	5	; slot3 = uv1"unknown".layout(slot4, slot5, love.graphics.getHeight, slot7)
		 18	[  0]	IST  	   		3	; if slot3
		 19	[  0]	JMP  	  4		1	; 	goto 21
		 20	[  0]	RET0 	  0		1	; return
		 21	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 22	[  0]	IST  	   		4	; if uv2"unknown"
		 23	[  0]	JMP  	  4		4	; 	goto 28
		 24	[  0]	TGETS	  4	0	34	; slot4 = love.graphics.newFont
		 25	[  0]	KSHORT	  6		14	; slot6 = 14
		 26	[  0]	CALL 	  4	2	2	; slot4 = love.graphics.newFont(slot5)
		 27	[  0]	USETV	  2		4	; uv2"unknwon" = love.graphics.newFont
		 28	[  0]	TGETS	  4	0	33	; slot4 = love.graphics.push
		 29	[  0]	KSTR 	  6		32	; slot6 = "all"
		 30	[  0]	CALL 	  4	1	2	;  = love.graphics.push(slot5)
		 31	[  0]	TGETS	  4	0	31	; slot4 = love.graphics.origin
		 32	[  0]	CALL 	  4	1	1	;  = love.graphics.origin()
		 33	[  0]	TGETS	  4	0	30	; slot4 = love.graphics.setShader
		 34	[  0]	CALL 	  4	1	1	;  = love.graphics.setShader()
		 35	[  0]	TGETS	  4	0	29	; slot4 = love.graphics.setScissor
		 36	[  0]	CALL 	  4	1	1	;  = love.graphics.setScissor()
		 37	[  0]	TGETS	  4	0	28	; slot4 = love.graphics.setStencilTest
		 38	[  0]	CALL 	  4	1	1	;  = love.graphics.setStencilTest()
		 39	[  0]	TGETS	  4	0	27	; slot4 = love.graphics.setBlendMode
		 40	[  0]	KSTR 	  6		26	; slot6 = "alpha"
		 41	[  0]	KSTR 	  7		25	; slot7 = "alphamultiply"
		 42	[  0]	CALL 	  4	1	3	;  = love.graphics.setBlendMode(slot5, slot6)
		 43	[  0]	TGETS	  4	0	24	; slot4 = love.graphics.setColor
		 44	[  0]	KNUM 	  6		0	; slot6 = 0.12
		 45	[  0]	KNUM 	  7		1	; slot7 = 0.14
		 46	[  0]	KNUM 	  8		2	; slot8 = 0.18
		 47	[  0]	KSHORT	  9		1	; slot9 = 1
		 48	[  0]	CALL 	  4	1	5	;  = love.graphics.setColor(slot5, slot6, slot7, slot8)
		 49	[  0]	TGETS	  4	0	23	; slot4 = love.graphics.rectangle
		 50	[  0]	KSTR 	  6		22	; slot6 = "fill"
		 51	[  0]	KSHORT	  7		0	; slot7 = 0
		 52	[  0]	KSHORT	  8		0	; slot8 = 0
		 53	[  0]	TGETS	  9	3	21	; slot9 = slot3.x
		 54	[  0]	MOV  	 10		2	; slot10 = love.graphics.getHeight
		 55	[  0]	CALL 	  4	1	6	;  = love.graphics.rectangle(slot5, slot6, slot7, slot8, <unknown table>.x)
		 56	[  0]	TGETS	  4	0	23	; slot4 = love.graphics.rectangle
		 57	[  0]	KSTR 	  6		22	; slot6 = "fill"
		 58	[  0]	TGETS	  7	3	21	; slot7 = slot3.x
		 59	[  0]	TGETS	  8	3	20	; slot8 = slot3.w
		 60	[  0]	ADDVV	  7	7	8	; slot7 = <unknown table>.x + <unknown table>.w
		 61	[  0]	KSHORT	  8		0	; slot8 = 0
		 62	[  0]	TGETS	  9	3	21	; slot9 = slot3.x
		 63	[  0]	SUBVV	  9	1	9	; slot9 = slot1 - <unknown table>.x
		 64	[  0]	TGETS	 10	3	20	; slot10 = slot3.w
		 65	[  0]	SUBVV	  9	9	10	; slot9 = slot9 - <unknown table>.w
		 66	[  0]	MOV  	 10		2	; slot10 = love.graphics.getHeight
		 67	[  0]	CALL 	  4	1	6	;  = love.graphics.rectangle(slot5, slot6, slot7, slot8, slot9)
		 68	[  0]	TGETS	  4	0	23	; slot4 = love.graphics.rectangle
		 69	[  0]	KSTR 	  6		22	; slot6 = "fill"
		 70	[  0]	TGETS	  7	3	21	; slot7 = slot3.x
		 71	[  0]	KSHORT	  8		0	; slot8 = 0
		 72	[  0]	TGETS	  9	3	20	; slot9 = slot3.w
		 73	[  0]	TGETS	 10	3	19	; slot10 = slot3.y
		 74	[  0]	CALL 	  4	1	6	;  = love.graphics.rectangle(slot5, slot6, <unknown table>.x, slot8, <unknown table>.w)
		 75	[  0]	TGETS	  4	0	23	; slot4 = love.graphics.rectangle
		 76	[  0]	KSTR 	  6		22	; slot6 = "fill"
		 77	[  0]	TGETS	  7	3	21	; slot7 = slot3.x
		 78	[  0]	TGETS	  8	3	19	; slot8 = slot3.y
		 79	[  0]	TGETS	  9	3	18	; slot9 = slot3.h
		 80	[  0]	ADDVV	  8	8	9	; slot8 = <unknown table>.y + <unknown table>.h
		 81	[  0]	TGETS	  9	3	20	; slot9 = slot3.w
		 82	[  0]	TGETS	 10	3	19	; slot10 = slot3.y
		 83	[  0]	SUBVV	 10	2	10	; slot10 = love.graphics.getHeight - <unknown table>.y
		 84	[  0]	TGETS	 11	3	18	; slot11 = slot3.h
		 85	[  0]	SUBVV	 10	10	11	; slot10 = slot10 - <unknown table>.h
		 86	[  0]	CALL 	  4	1	6	;  = love.graphics.rectangle(slot5, slot6, <unknown table>.x, slot8, <unknown table>.w)
		 87	[  0]	TGETS	  4	0	24	; slot4 = love.graphics.setColor
		 88	[  0]	KNUM 	  6		3	; slot6 = 0.5
		 89	[  0]	KNUM 	  7		4	; slot7 = 0.7
		 90	[  0]	KNUM 	  8		5	; slot8 = 0.9
		 91	[  0]	KSHORT	  9		1	; slot9 = 1
		 92	[  0]	CALL 	  4	1	5	;  = love.graphics.setColor(slot5, slot6, slot7, slot8)
		 93	[  0]	TGETS	  4	0	17	; slot4 = love.graphics.setLineWidth
		 94	[  0]	KSHORT	  6		1	; slot6 = 1
		 95	[  0]	CALL 	  4	1	2	;  = love.graphics.setLineWidth(slot5)
		 96	[  0]	TGETS	  4	0	16	; slot4 = love.graphics.setLineStyle
		 97	[  0]	KSTR 	  6		15	; slot6 = "rough"
		 98	[  0]	CALL 	  4	1	2	;  = love.graphics.setLineStyle(slot5)
		 99	[  0]	TGETS	  4	0	23	; slot4 = love.graphics.rectangle
		100	[  0]	KSTR 	  6		14	; slot6 = "line"
		101	[  0]	TGETS	  7	3	21	; slot7 = slot3.x
		102	[  0]	ADDVN	  7	7	3	; slot7 = <unknown table>.x + 0.5
		103	[  0]	TGETS	  8	3	19	; slot8 = slot3.y
		104	[  0]	ADDVN	  8	8	3	; slot8 = <unknown table>.y + 0.5
		105	[  0]	TGETS	  9	3	20	; slot9 = slot3.w
		106	[  0]	SUBVN	  9	9	6	; slot9 = <unknown table>.w - 1
		107	[  0]	TGETS	 10	3	18	; slot10 = slot3.h
		108	[  0]	SUBVN	 10	10	6	; slot10 = <unknown table>.h - 1
		109	[  0]	CALL 	  4	1	6	;  = love.graphics.rectangle(slot5, slot6, slot7, slot8, slot9)
		110	[  0]	TGETS	  4	0	13	; slot4 = love.graphics.setFont
		111	[  0]	GGET 	  6		12	; slot6 = _env["require"]
		112	[  0]	KSTR 	  8		11	; slot8 = "src.data.font_resolver"
		113	[  0]	CALL 	  6	2	2	; slot6 = require(slot7)
		114	[  0]	TGETS	  6	6	10	; slot6 = require.developerFont
		115	[  0]	GGET 	  8		9	; slot8 = _env["_G"]
		116	[  0]	TGETS	  8	8	8	; slot8 = _G.ui
		117	[  0]	ISF  	   		8	; if not _G.ui
		118	[  0]	JMP  	  9		5	; 	goto 124
		119	[  0]	GGET 	  8		9	; slot8 = _env["_G"]
		120	[  0]	TGETS	  8	8	8	; slot8 = _G.ui
		121	[  0]	TGETS	  8	8	7	; slot8 = _G.ui.font
		122	[  0]	IST  	   		8	; if _G.ui.font
		123	[  0]	JMP  	  9		1	; 	goto 125
		124	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
		125	[  0]	CALL 	  6	0	2	; MULTRES = require.developerFont(slot7)
		126	[  0]	CALLM	  4	1	0	;  = love.graphics.setFont(, ...MULTRES)
		127	[  0]	TGETS	  4	0	6	; slot4 = love.graphics.printf
		128	[  0]	GGET 	  6		12	; slot6 = _env["require"]
		129	[  0]	KSTR 	  8		5	; slot8 = "src.data.language"
		130	[  0]	CALL 	  6	2	2	; slot6 = require(slot7)
		131	[  0]	TGETS	  6	6	4	; slot6 = require.getText
		132	[  0]	KSTR 	  8		3	; slot8 = "display_preview_hint"
		133	[  0]	KSTR 	  9		2	; slot9 = "ko"
		134	[  0]	CALL 	  6	2	3	; slot6 = require.getText(slot7, slot8)
		135	[  0]	TGETS	  7	3	21	; slot7 = slot3.x
		136	[  0]	ADDVN	  7	7	7	; slot7 = <unknown table>.x + 8
		137	[  0]	TGETS	  8	3	19	; slot8 = slot3.y
		138	[  0]	ADDVN	  8	8	7	; slot8 = <unknown table>.y + 8
		139	[  0]	TGETS	  9	3	20	; slot9 = slot3.w
		140	[  0]	SUBVN	  9	9	8	; slot9 = <unknown table>.w - 16
		141	[  0]	KSTR 	 10		1	; slot10 = "center"
		142	[  0]	CALL 	  4	1	6	;  = love.graphics.printf(slot5, require.getText, slot7, slot8, slot9)
		143	[  0]	TGETS	  4	0	0	; slot4 = love.graphics.pop
		144	[  0]	CALL 	  4	1	1	;  = love.graphics.pop()
		145	[  0]	RET0 	  0		1	; return
	 32	[  0]	TSETS	  8	3	4	; slot3.draw = slot8
	 33	[  0]	MOV  	  2		3	; slot2 = slot3
	 34	[  0]	UCLO 	  3		0	; nil uvs >= r3; goto 35
	 35	[  0]	TDUP 	  3		2	; slot3 = copy table#k2
	 36	[  0]	TSETS	  0	3	6	; slot3.layout = slot0
	 37	[  0]	TSETS	  1	3	1	; slot3.canvas = slot1
	 38	[  0]	TSETS	  2	3	0	; slot3.preview = slot2
	 39	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 40
	 40	[  0]	RET1 	  3		2	; return slot3
	
