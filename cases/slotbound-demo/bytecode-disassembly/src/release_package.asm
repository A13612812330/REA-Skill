;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\release_package.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 14 slots
	;;;; constant tables ;;;;
	;;;; instructions ;;;;
	  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
	  2	[  0]	KSTR 	  1		13	; slot1 = "SBPKG001"
	  3	[  0]	KSHORT	  2		36	; slot2 = 36
	  4	[  0]	ADDNV	  3	2	0	; slot3 = 536870912 + slot2
	  5	[  0]	FNEW 	  4		12	; N/A:0-0: 1 args, 0 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		3	; slot1 = _env["error"]
		  2	[  0]	KSTR 	  3		2	; slot3 = "SlotBound could not open its protected game package. "
		  3	[  0]	KSTR 	  4		1	; slot4 = "Please reinstall an official copy. ("
		  4	[  0]	MOV  	  5		0	; slot5 = slot0
		  5	[  0]	KSTR 	  6		0	; slot6 = ")"
		  6	[  0]	CAT  	  3	3	6	; slot3 = slot3 .. slot4 .. slot5 .. slot6
		  7	[  0]	KSHORT	  4		0	; slot4 = 0
		  8	[  0]	CALL 	  1	1	3	;  = error(slot2, slot3)
		  9	[  0]	RET0 	  0		1	; return
	  6	[  0]	FNEW 	  5		11	; N/A:0-0: 0 args, 0 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		4	; slot0 = _env["jit"]
		  2	[  0]	ISF  	   		0	; if not jit
		  3	[  0]	JMP  	  1		11	; 	goto 15
		  4	[  0]	GGET 	  0		4	; slot0 = _env["jit"]
		  5	[  0]	TGETS	  0	0	3	; slot0 = jit.os
		  6	[  0]	ISNES	  0		2	; if jit.os ~= "Windows"
		  7	[  0]	JMP  	  0		4	; 	goto 12
		  8	[  0]	GGET 	  0		4	; slot0 = _env["jit"]
		  9	[  0]	TGETS	  0	0	1	; slot0 = jit.arch
		 10	[  0]	ISEQS	  0		0	; if jit.arch == "x64"
		 11	[  0]	JMP  	  0		2	; 	goto 14
		 12	[  0]	KPRI 	  0		1	; slot0 = false
		 13	[  0]	JMP  	  1		1	; 	goto 15
		 14	[  0]	KPRI 	  0		2	; slot0 = true
		 15	[  0]	RET1 	  0		2	; return slot0
	  7	[  0]	FNEW 	  6		10	; N/A:0-0: 2 args, 0 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  2	0	2	; slot2 = slot0.new
		  2	[  0]	KSTR 	  4		1	; slot4 = "uint16_t[?]"
		  3	[  0]	LEN  	  5		1	; slot5 = #slot1
		  4	[  0]	ADDVN	  5	5	0	; slot5 = slot5 + 1
		  5	[  0]	CALL 	  2	2	3	; slot2 = <unknown table>.new(slot3, slot4)
		  6	[  0]	KSHORT	  3		1	; slot3 = 1
		  7	[  0]	LEN  	  4		1	; slot4 = #slot1
		  8	[  0]	KSHORT	  5		1	; slot5 = 1
		  9	[  0]	FORI 	  3		7	; for slot6 = slot3,slot4,slot5 else goto 17
		 10	[  0]	SUBVN	  7	6	0	; slot7 = slot6 - 1
		 11	[  0]	MOV  	 10		1	; slot10 = slot1
		 12	[  0]	TGETS	  8	1	0	; slot8 = slot1.byte
		 13	[  0]	MOV  	 11		6	; slot11 = slot6
		 14	[  0]	CALL 	  8	2	3	; slot8 = <unknown table>.byte(slot9, slot10)
		 15	[  0]	TSETV	  8	2	7	; slot2[slot7] = <unknown table>.byte
		 16	[  0]	FORL 	  3		-7	; slot6 = slot6 + slot5; if cmp(slot6, sign slot5,  slot4) goto 10
		 17	[  0]	RET1 	  2		2	; return slot2
	  8	[  0]	FNEW 	  7		9	; N/A:0-0: 0 args, 2 upvalues, 20 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			[BCryptGetProperty] = int32_t (*)(void *, const uint16_t *, unsigned char *, uint32_t, uint32_t *, uint32_t),
			[BCryptDecrypt] = int32_t (*)(void *, unsigned char *, uint32_t, void *, unsigned char *, uint32_t, unsigned char *, uint32_t, uint32_t *, uint32_t),
			[BCryptSetProperty] = int32_t (*)(void *, const uint16_t *, unsigned char *, uint32_t, uint32_t),
			[BCryptDestroyKey] = int32_t (*)(void *),
			[BCryptOpenAlgorithmProvider] = int32_t (*)(void **, const uint16_t *, const uint16_t *, uint32_t),
			[BCryptCloseAlgorithmProvider] = int32_t (*)(void *, uint32_t),
			[BCryptGenerateSymmetricKey] = int32_t (*)(void *, void **, unsigned char *, uint32_t, unsigned char *, uint32_t, uint32_t),
			]
		
		
		ktable#6 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	CALL 	  0	2	1	; slot0 = uv0"unknown"()
		  3	[  0]	IST  	   		0	; if slot0
		  4	[  0]	JMP  	  0		3	; 	goto 8
		  5	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  6	[  0]	KSTR 	  2		31	; slot2 = "Windows x64 is required"
		  7	[  0]	CALL 	  0	1	2	;  = uv1"unknown"(slot1)
		  8	[  0]	GGET 	  0		30	; slot0 = _env["pcall"]
		  9	[  0]	GGET 	  2		29	; slot2 = _env["require"]
		 10	[  0]	KSTR 	  3		28	; slot3 = "ffi"
		 11	[  0]	CALL 	  0	3	3	; slot0, slot1 = pcall(slot1, require)
		 12	[  0]	IST  	   		0	; if slot0
		 13	[  0]	JMP  	  2		3	; 	goto 17
		 14	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 15	[  0]	KSTR 	  4		27	; slot4 = "Windows cryptography is unavailable"
		 16	[  0]	CALL 	  2	1	2	;  = uv1"unknown"(slot3)
		 17	[  0]	GGET 	  2		30	; slot2 = _env["pcall"]
		 18	[  0]	TGETS	  4	1	26	; slot4 = slot1.typeof
		 19	[  0]	KSTR 	  5		25	; slot5 = "SBP_AUTH_INFO"
		 20	[  0]	CALL 	  2	2	3	; slot2 = pcall(slot3, <unknown table>.typeof)
		 21	[  0]	IST  	   		2	; if slot2
		 22	[  0]	JMP  	  2		3	; 	goto 26
		 23	[  0]	TGETS	  2	1	24	; slot2 = slot1.cdef
		 24	[  0]	KSTR 	  4		23	; slot4 = "      typedef struct {
		        uint32_t cbSize;
		        uint32_t dwInfoVersion;
		        unsigned char *pbNonce;
		        uint32_t cbNonce;
		        unsigned char *pbAuthData;
		        uint32_t cbAuthData;
		        unsigned char *pbTag;
		        uint32_t cbTag;
		        unsigned char *pbMacContext;
		        uint32_t cbMacContext;
		        uint32_t cbAAD;
		        uint64_t cbData;
		        uint32_t dwFlags;
		      } SBP_AUTH_INFO;
		      int32_t BCryptOpenAlgorithmProvider(void **algorithm,
		        const uint16_t *identifier, const uint16_t *implementation,
		        uint32_t flags);
		      int32_t BCryptSetProperty(void *object, const uint16_t *property,
		        unsigned char *input, uint32_t inputSize, uint32_t flags);
		      int32_t BCryptGetProperty(void *object, const uint16_t *property,
		        unsigned char *output, uint32_t outputSize, uint32_t *resultSize,
		        uint32_t flags);
		      int32_t BCryptGenerateSymmetricKey(void *algorithm, void **key,
		        unsigned char *keyObject, uint32_t keyObjectSize,
		        unsigned char *secret, uint32_t secretSize, uint32_t flags);
		      int32_t BCryptDecrypt(void *key, unsigned char *input,
		        uint32_t inputSize, void *paddingInfo, unsigned char *iv,
		        uint32_t ivSize, unsigned char *output, uint32_t outputSize,
		        uint32_t *resultSize, uint32_t flags);
		      int32_t BCryptDestroyKey(void *key);
		      int32_t BCryptCloseAlgorithmProvider(void *algorithm, uint32_t flags);
		      uint32_t __stdcall GetSystemDirectoryW(uint16_t *buffer, uint32_t size);
		      void * __stdcall LoadLibraryExW(const uint16_t *name,
		        void *reserved, uint32_t flags);
		      void * __stdcall GetProcAddress(void *library, const char *name);
		      int __stdcall FreeLibrary(void *library);
		    "
		 25	[  0]	CALL 	  2	1	2	;  = <unknown table>.cdef(slot3)
		 26	[  0]	TGETS	  2	1	22	; slot2 = slot1.sizeof
		 27	[  0]	KSTR 	  4		25	; slot4 = "SBP_AUTH_INFO"
		 28	[  0]	CALL 	  2	2	2	; slot2 = <unknown table>.sizeof(slot3)
		 29	[  0]	ISEQN	  2		0	; if slot2 == 88
		 30	[  0]	JMP  	  2		3	; 	goto 34
		 31	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 32	[  0]	KSTR 	  4		21	; slot4 = "unsupported cryptography ABI"
		 33	[  0]	CALL 	  2	1	2	;  = uv1"unknown"(slot3)
		 34	[  0]	GGET 	  2		30	; slot2 = _env["pcall"]
		 35	[  0]	TGETS	  4	1	20	; slot4 = slot1.load
		 36	[  0]	KSTR 	  5		19	; slot5 = "kernel32"
		 37	[  0]	CALL 	  2	3	3	; slot2, slot3 = pcall(slot3, <unknown table>.load)
		 38	[  0]	IST  	   		2	; if slot2
		 39	[  0]	JMP  	  4		3	; 	goto 43
		 40	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 41	[  0]	KSTR 	  6		18	; slot6 = "Windows library loading is unavailable"
		 42	[  0]	CALL 	  4	1	2	;  = uv1"unknown"(slot5)
		 43	[  0]	TGETS	  4	1	17	; slot4 = slot1.new
		 44	[  0]	KSTR 	  6		16	; slot6 = "uint16_t[32768]"
		 45	[  0]	CALL 	  4	2	2	; slot4 = <unknown table>.new(slot5)
		 46	[  0]	GGET 	  5		15	; slot5 = _env["tonumber"]
		 47	[  0]	TGETS	  7	3	14	; slot7 = slot3.GetSystemDirectoryW
		 48	[  0]	MOV  	  9		4	; slot9 = <unknown table>.new
		 49	[  0]	KNUM 	 10		1	; slot10 = 32768
		 50	[  0]	CALL 	  7	0	3	; MULTRES = <unknown table>.GetSystemDirectoryW(slot8, <unknown table>.new)
		 51	[  0]	CALLM	  5	2	0	; slot5 = tonumber(, ...MULTRES)
		 52	[  0]	KSTR 	  6		13	; slot6 = "\bcrypt.dll"
		 53	[  0]	KSHORT	  7		1	; slot7 = 1
		 54	[  0]	ISLT 	  5		7	; if tonumber < slot7
		 55	[  0]	JMP  	  7		5	; 	goto 61
		 56	[  0]	LEN  	  7		6	; slot7 = #slot6
		 57	[  0]	ADDVV	  7	5	7	; slot7 = tonumber + slot7
		 58	[  0]	KNUM 	  8		1	; slot8 = 32768
		 59	[  0]	ISGT 	  8		7	; if slot8 > slot7
		 60	[  0]	JMP  	  7		3	; 	goto 64
		 61	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 62	[  0]	KSTR 	  9		12	; slot9 = "Windows system directory is unavailable"
		 63	[  0]	CALL 	  7	1	2	;  = uv1"unknown"(slot8)
		 64	[  0]	KSHORT	  7		1	; slot7 = 1
		 65	[  0]	LEN  	  8		6	; slot8 = #slot6
		 66	[  0]	KSHORT	  9		1	; slot9 = 1
		 67	[  0]	FORI 	  7		8	; for slot10 = slot7,slot8,slot9 else goto 76
		 68	[  0]	ADDVV	 11	5	10	; slot11 = tonumber + slot10
		 69	[  0]	SUBVN	 11	11	2	; slot11 = slot11 - 1
		 70	[  0]	MOV  	 14		6	; slot14 = slot6
		 71	[  0]	TGETS	 12	6	11	; slot12 = slot6.byte
		 72	[  0]	MOV  	 15		10	; slot15 = slot10
		 73	[  0]	CALL 	 12	2	3	; slot12 = <unknown table>.byte(slot13, slot14)
		 74	[  0]	TSETV	 12	4	11	; <unknown table>.new[slot11] = <unknown table>.byte
		 75	[  0]	FORL 	  7		-8	; slot10 = slot10 + slot9; if cmp(slot10, sign slot9,  slot8) goto 68
		 76	[  0]	LEN  	  7		6	; slot7 = #slot6
		 77	[  0]	ADDVV	  7	5	7	; slot7 = tonumber + slot7
		 78	[  0]	KSHORT	  8		0	; slot8 = 0
		 79	[  0]	TSETV	  8	4	7	; <unknown table>.new[slot7] = slot8
		 80	[  0]	TGETS	  7	3	10	; slot7 = slot3.LoadLibraryExW
		 81	[  0]	MOV  	  9		4	; slot9 = <unknown table>.new
		 82	[  0]	KPRI 	 10		0	; slot10 = nil
		 83	[  0]	KSHORT	 11		2048	; slot11 = 2048
		 84	[  0]	CALL 	  7	2	4	; slot7 = <unknown table>.LoadLibraryExW(slot8, <unknown table>.new, slot10)
		 85	[  0]	ISNEP	  7		0	; if <unknown table>.LoadLibraryExW ~= nil
		 86	[  0]	JMP  	  8		3	; 	goto 90
		 87	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 88	[  0]	KSTR 	 10		9	; slot10 = "system cryptography is unavailable"
		 89	[  0]	CALL 	  8	1	2	;  = uv1"unknown"(<unknown table>.new)
		 90	[  0]	TDUP 	  8		6	; slot8 = copy table#k6
		 91	[  0]	TGETS	  9	1	8	; slot9 = slot1.gc
		 92	[  0]	MOV  	 11		7	; slot11 = <unknown table>.LoadLibraryExW
		 93	[  0]	TGETS	 12	3	7	; slot12 = slot3.FreeLibrary
		 94	[  0]	CALL 	  9	2	3	; slot9 = <unknown table>.gc(slot10, <unknown table>.LoadLibraryExW)
		 95	[  0]	TSETS	  9	8	5	; slot8._library = <unknown table>.gc
		 96	[  0]	TDUP 	  9		4	; slot9 = copy table#k4
		 97	[  0]	GGET 	 10		3	; slot10 = _env["pairs"]
		 98	[  0]	MOV  	 12		9	; slot12 = slot9
		 99	[  0]	CALL 	 10	4	2	; slot10, slot11, slot12 = pairs(<unknown table>.LoadLibraryExW)
		100	[  0]	ISNEXT	 13		14	; Verify ITERN at 115; goto 115
		101	[  0]	TGETS	 15	3	2	; slot15 = slot3.GetProcAddress
		102	[  0]	MOV  	 17		7	; slot17 = <unknown table>.LoadLibraryExW
		103	[  0]	MOV  	 18		13	; slot18 = slot13
		104	[  0]	CALL 	 15	2	3	; slot15 = <unknown table>.GetProcAddress(slot16, <unknown table>.LoadLibraryExW)
		105	[  0]	ISNEP	 15		0	; if <unknown table>.GetProcAddress ~= nil
		106	[  0]	JMP  	 16		3	; 	goto 110
		107	[  0]	UGET 	 16		1	; slot16 = uv1"unknwon"
		108	[  0]	KSTR 	 18		1	; slot18 = "required system cryptography is unavailable"
		109	[  0]	CALL 	 16	1	2	;  = uv1"unknown"(<unknown table>.LoadLibraryExW)
		110	[  0]	TGETS	 16	1	0	; slot16 = slot1.cast
		111	[  0]	MOV  	 18		14	; slot18 = slot14
		112	[  0]	MOV  	 19		15	; slot19 = <unknown table>.GetProcAddress
		113	[  0]	CALL 	 16	2	3	; slot16 = <unknown table>.cast(<unknown table>.LoadLibraryExW, slot18)
		114	[  0]	TSETV	 16	8	13	; slot8[slot13] = <unknown table>.cast
		115	[  0]	ITERN	 13	3	3	; slot13, slot14, slot15 = pairs, <unknown table>.LoadLibraryExW, slot12; slot13, slot14 = pairs(<unknown table>.LoadLibraryExW, slot12)
		116	[  0]	ITERL	 13		-16	; slot12 = slot13; if slot13 != nil goto 101
		117	[  0]	MOV  	 10		1	; slot10 = slot1
		118	[  0]	MOV  	 11		8	; slot11 = slot8
		119	[  0]	RET  	 10		3	; return slot10, slot11
	  9	[  0]	FNEW 	  8		8	; N/A:0-0: 2 args, 4 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		6	; slot2 = _env["type"]
		  2	[  0]	MOV  	  4		1	; slot4 = slot1
		  3	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  4	[  0]	ISNES	  2		5	; if slot2 ~= "string"
		  5	[  0]	JMP  	  2		3	; 	goto 9
		  6	[  0]	LEN  	  2		1	; slot2 = #slot1
		  7	[  0]	ISEQN	  2		0	; if slot2 == 32
		  8	[  0]	JMP  	  2		3	; 	goto 12
		  9	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 10	[  0]	KSTR 	  4		4	; slot4 = "invalid package key"
		 11	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(slot3)
		 12	[  0]	GGET 	  2		6	; slot2 = _env["type"]
		 13	[  0]	MOV  	  4		0	; slot4 = slot0
		 14	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		 15	[  0]	ISNES	  2		5	; if slot2 ~= "string"
		 16	[  0]	JMP  	  2		4	; 	goto 21
		 17	[  0]	LEN  	  2		0	; slot2 = #slot0
		 18	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 19	[  0]	ISGT 	  2		3	; if slot2 > uv1"unknown"
		 20	[  0]	JMP  	  2		3	; 	goto 24
		 21	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 22	[  0]	KSTR 	  4		3	; slot4 = "truncated package"
		 23	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(uv1"unknown")
		 24	[  0]	LEN  	  2		0	; slot2 = #slot0
		 25	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 26	[  0]	ISGE 	  3		2	; if uv2"unknown" >= slot2
		 27	[  0]	JMP  	  2		3	; 	goto 31
		 28	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 29	[  0]	KSTR 	  4		2	; slot4 = "package exceeds size limit"
		 30	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(uv2"unknown")
		 31	[  0]	MOV  	  4		0	; slot4 = slot0
		 32	[  0]	TGETS	  2	0	1	; slot2 = slot0.sub
		 33	[  0]	KSHORT	  5		1	; slot5 = 1
		 34	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		 35	[  0]	LEN  	  6		6	; slot6 = #uv3"unknown"
		 36	[  0]	CALL 	  2	2	4	; slot2 = <unknown table>.sub(uv2"unknown", slot4, slot5)
		 37	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
		 38	[  0]	ISEQV	  2		3	; if slot2 == uv3"unknown"
		 39	[  0]	JMP  	  2		3	; 	goto 43
		 40	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 41	[  0]	KSTR 	  4		0	; slot4 = "unsupported package format"
		 42	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(uv3"unknown")
		 43	[  0]	RET0 	  0		1	; return
	 10	[  0]	FNEW 	  9		6	; N/A:0-0: 2 args, 5 upvalues, 18 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	MOV  	  5		1	; slot5 = slot1
		  4	[  0]	CALL 	  2	1	3	;  = uv0"unknown"(slot3, slot4)
		  5	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  6	[  0]	CALL 	  2	3	1	; slot2, slot3 = uv1"unknown"()
		  7	[  0]	TGETS	  4	2	8	; slot4 = uv1"unknown".new
		  8	[  0]	KSTR 	  6		7	; slot6 = "void *[1]"
		  9	[  0]	CALL 	  4	2	2	; slot4 = uv1"unknown".new(slot5)
		 10	[  0]	TGETS	  5	2	8	; slot5 = uv1"unknown".new
		 11	[  0]	KSTR 	  7		7	; slot7 = "void *[1]"
		 12	[  0]	CALL 	  5	2	2	; slot5 = uv1"unknown".new(slot6)
		 13	[  0]	TGETS	  6	2	8	; slot6 = uv1"unknown".new
		 14	[  0]	KSTR 	  8		6	; slot8 = "unsigned char[32]"
		 15	[  0]	CALL 	  6	2	2	; slot6 = uv1"unknown".new(slot7)
		 16	[  0]	KNIL 	  7		8	; slot7, slot8 = nil
		 17	[  0]	LEN  	  9		0	; slot9 = #slot0
		 18	[  0]	UGET 	 10		2	; slot10 = uv2"unknwon"
		 19	[  0]	SUBVV	  9	9	10	; slot9 = slot9 - uv2"unknown"
		 20	[  0]	TGETS	 10	2	5	; slot10 = uv1"unknown".copy
		 21	[  0]	MOV  	 12		6	; slot12 = uv1"unknown".new
		 22	[  0]	MOV  	 13		1	; slot13 = slot1
		 23	[  0]	KSHORT	 14		32	; slot14 = 32
		 24	[  0]	CALL 	 10	1	4	;  = uv1"unknown".copy(slot11, uv1"unknown".new, slot13)
		 25	[  0]	KPRI 	  1		0	; slot1 = nil
		 26	[  0]	FNEW 	 10		4	; N/A:0-0: 2 args, 1 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	ISEQN	  0		0	; if slot0 == 0
			  2	[  0]	JMP  	  2		3	; 	goto 6
			  3	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  4	[  0]	MOV  	  4		1	; slot4 = slot1
			  5	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(slot3)
			  6	[  0]	RET0 	  0		1	; return
		 27	[  0]	FNEW 	 11		3	; N/A:0-0: 0 args, 8 upvalues, 6 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	TGETB	  0	0	0	; slot0 = uv0"unknown"[0]
			  3	[  0]	ISEQP	  0		0	; if slot0 == nil
			  4	[  0]	JMP  	  0		8	; 	goto 13
			  5	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
			  6	[  0]	TGETS	  0	0	3	; slot0 = uv1"unknown".BCryptDestroyKey
			  7	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  8	[  0]	TGETB	  2	2	0	; slot2 = uv0"unknown"[0]
			  9	[  0]	CALL 	  0	1	2	;  = uv1"unknown".BCryptDestroyKey(slot1)
			 10	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 11	[  0]	KPRI 	  1		0	; slot1 = nil
			 12	[  0]	TSETB	  1	0	0	; uv0"unknown"[0] = slot1
			 13	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
			 14	[  0]	ISF  	   		0	; if not uv2"unknown"
			 15	[  0]	JMP  	  1		9	; 	goto 25
			 16	[  0]	UGET 	  0		3	; slot0 = uv3"unknwon"
			 17	[  0]	TGETS	  0	0	2	; slot0 = uv3"unknown".fill
			 18	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
			 19	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
			 20	[  0]	TGETS	  3	3	1	; slot3 = uv3"unknown".sizeof
			 21	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
			 22	[  0]	CALL 	  3	2	2	; slot3 = uv3"unknown".sizeof(slot4)
			 23	[  0]	KSHORT	  4		0	; slot4 = 0
			 24	[  0]	CALL 	  0	1	4	;  = uv3"unknown".fill(slot1, uv2"unknown", uv3"unknown".sizeof)
			 25	[  0]	UGET 	  0		3	; slot0 = uv3"unknwon"
			 26	[  0]	TGETS	  0	0	2	; slot0 = uv3"unknown".fill
			 27	[  0]	UGET 	  2		4	; slot2 = uv4"unknwon"
			 28	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
			 29	[  0]	TGETS	  3	3	1	; slot3 = uv3"unknown".sizeof
			 30	[  0]	UGET 	  5		4	; slot5 = uv4"unknwon"
			 31	[  0]	CALL 	  3	2	2	; slot3 = uv3"unknown".sizeof(slot4)
			 32	[  0]	KSHORT	  4		0	; slot4 = 0
			 33	[  0]	CALL 	  0	1	4	;  = uv3"unknown".fill(slot1, uv4"unknown", uv3"unknown".sizeof)
			 34	[  0]	UGET 	  0		5	; slot0 = uv5"unknwon"
			 35	[  0]	ISF  	   		0	; if not uv5"unknown"
			 36	[  0]	JMP  	  1		6	; 	goto 43
			 37	[  0]	UGET 	  0		3	; slot0 = uv3"unknwon"
			 38	[  0]	TGETS	  0	0	2	; slot0 = uv3"unknown".fill
			 39	[  0]	UGET 	  2		5	; slot2 = uv5"unknwon"
			 40	[  0]	UGET 	  3		6	; slot3 = uv6"unknwon"
			 41	[  0]	KSHORT	  4		0	; slot4 = 0
			 42	[  0]	CALL 	  0	1	4	;  = uv3"unknown".fill(slot1, uv5"unknown", uv6"unknown")
			 43	[  0]	UGET 	  0		7	; slot0 = uv7"unknwon"
			 44	[  0]	TGETB	  0	0	0	; slot0 = uv7"unknown"[0]
			 45	[  0]	ISEQP	  0		0	; if slot0 == nil
			 46	[  0]	JMP  	  0		9	; 	goto 56
			 47	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
			 48	[  0]	TGETS	  0	0	0	; slot0 = uv1"unknown".BCryptCloseAlgorithmProvider
			 49	[  0]	UGET 	  2		7	; slot2 = uv7"unknwon"
			 50	[  0]	TGETB	  2	2	0	; slot2 = uv7"unknown"[0]
			 51	[  0]	KSHORT	  3		0	; slot3 = 0
			 52	[  0]	CALL 	  0	1	3	;  = uv1"unknown".BCryptCloseAlgorithmProvider(slot1, slot2)
			 53	[  0]	UGET 	  0		7	; slot0 = uv7"unknwon"
			 54	[  0]	KPRI 	  1		0	; slot1 = nil
			 55	[  0]	TSETB	  1	0	0	; uv7"unknown"[0] = slot1
			 56	[  0]	RET0 	  0		1	; return
		 28	[  0]	GGET 	 12		2	; slot12 = _env["pcall"]
		 29	[  0]	FNEW 	 14		1	; N/A:0-0: 0 args, 13 upvalues, 22 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  3	[  0]	TGETS	  2	2	38	; slot2 = uv1"unknown".BCryptOpenAlgorithmProvider
			  4	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
			  5	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
			  6	[  0]	UGET 	  7		4	; slot7 = uv4"unknwon"
			  7	[  0]	KSTR 	  8		37	; slot8 = "AES"
			  8	[  0]	CALL 	  5	2	3	; slot5 = uv3"unknown"(slot6, uv4"unknown")
			  9	[  0]	KPRI 	  6		0	; slot6 = nil
			 10	[  0]	KSHORT	  7		0	; slot7 = 0
			 11	[  0]	CALL 	  2	2	5	; slot2 = uv1"unknown".BCryptOpenAlgorithmProvider(slot3, uv2"unknown", uv3"unknown", slot6)
			 12	[  0]	KSTR 	  3		36	; slot3 = "AES provider is unavailable"
			 13	[  0]	CALL 	  0	1	3	;  = uv0"unknown"(slot1, slot2)
			 14	[  0]	UGET 	  0		3	; slot0 = uv3"unknwon"
			 15	[  0]	UGET 	  2		4	; slot2 = uv4"unknwon"
			 16	[  0]	KSTR 	  3		35	; slot3 = "ChainingModeGCM"
			 17	[  0]	CALL 	  0	2	3	; slot0 = uv3"unknown"(slot1, uv4"unknown")
			 18	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			 19	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
			 20	[  0]	TGETS	  3	3	34	; slot3 = uv1"unknown".BCryptSetProperty
			 21	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
			 22	[  0]	TGETB	  5	5	0	; slot5 = uv2"unknown"[0]
			 23	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
			 24	[  0]	UGET 	  8		4	; slot8 = uv4"unknwon"
			 25	[  0]	KSTR 	  9		33	; slot9 = "ChainingMode"
			 26	[  0]	CALL 	  6	2	3	; slot6 = uv3"unknown"(slot7, uv4"unknown")
			 27	[  0]	UGET 	  7		4	; slot7 = uv4"unknwon"
			 28	[  0]	TGETS	  7	7	32	; slot7 = uv4"unknown".cast
			 29	[  0]	KSTR 	  9		31	; slot9 = "unsigned char *"
			 30	[  0]	MOV  	 10		0	; slot10 = slot0
			 31	[  0]	CALL 	  7	2	3	; slot7 = uv4"unknown".cast(uv4"unknown", slot9)
			 32	[  0]	UGET 	  8		4	; slot8 = uv4"unknwon"
			 33	[  0]	TGETS	  8	8	30	; slot8 = uv4"unknown".sizeof
			 34	[  0]	MOV  	 10		0	; slot10 = slot0
			 35	[  0]	CALL 	  8	2	2	; slot8 = uv4"unknown".sizeof(slot9)
			 36	[  0]	KSHORT	  9		0	; slot9 = 0
			 37	[  0]	CALL 	  3	2	6	; slot3 = uv1"unknown".BCryptSetProperty(slot4, slot5, uv3"unknown", uv4"unknown".cast, uv4"unknown".sizeof)
			 38	[  0]	KSTR 	  4		29	; slot4 = "AES-GCM is unavailable"
			 39	[  0]	CALL 	  1	1	3	;  = uv0"unknown"(slot2, slot3)
			 40	[  0]	UGET 	  1		4	; slot1 = uv4"unknwon"
			 41	[  0]	TGETS	  1	1	28	; slot1 = uv4"unknown".new
			 42	[  0]	KSTR 	  3		27	; slot3 = "uint32_t[1]"
			 43	[  0]	CALL 	  1	2	2	; slot1 = uv4"unknown".new(slot2)
			 44	[  0]	UGET 	  2		4	; slot2 = uv4"unknwon"
			 45	[  0]	TGETS	  2	2	28	; slot2 = uv4"unknown".new
			 46	[  0]	KSTR 	  4		27	; slot4 = "uint32_t[1]"
			 47	[  0]	CALL 	  2	2	2	; slot2 = uv4"unknown".new(slot3)
			 48	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			 49	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
			 50	[  0]	TGETS	  5	5	26	; slot5 = uv1"unknown".BCryptGetProperty
			 51	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
			 52	[  0]	TGETB	  7	7	0	; slot7 = uv2"unknown"[0]
			 53	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
			 54	[  0]	UGET 	 10		4	; slot10 = uv4"unknwon"
			 55	[  0]	KSTR 	 11		25	; slot11 = "ObjectLength"
			 56	[  0]	CALL 	  8	2	3	; slot8 = uv3"unknown"(slot9, uv4"unknown")
			 57	[  0]	UGET 	  9		4	; slot9 = uv4"unknwon"
			 58	[  0]	TGETS	  9	9	32	; slot9 = uv4"unknown".cast
			 59	[  0]	KSTR 	 11		31	; slot11 = "unsigned char *"
			 60	[  0]	MOV  	 12		1	; slot12 = slot1
			 61	[  0]	CALL 	  9	2	3	; slot9 = uv4"unknown".cast(uv4"unknown", slot11)
			 62	[  0]	UGET 	 10		4	; slot10 = uv4"unknwon"
			 63	[  0]	TGETS	 10	10	30	; slot10 = uv4"unknown".sizeof
			 64	[  0]	MOV  	 12		1	; slot12 = slot1
			 65	[  0]	CALL 	 10	2	2	; slot10 = uv4"unknown".sizeof(slot11)
			 66	[  0]	MOV  	 11		2	; slot11 = slot2
			 67	[  0]	KSHORT	 12		0	; slot12 = 0
			 68	[  0]	CALL 	  5	2	7	; slot5 = uv1"unknown".BCryptGetProperty(slot6, slot7, uv3"unknown", uv4"unknown".cast, uv4"unknown".sizeof, slot11)
			 69	[  0]	KSTR 	  6		24	; slot6 = "invalid AES provider"
			 70	[  0]	CALL 	  3	1	3	;  = uv0"unknown"(slot4, slot5)
			 71	[  0]	TGETB	  3	2	0	; slot3 = slot2[0]
			 72	[  0]	UGET 	  4		4	; slot4 = uv4"unknwon"
			 73	[  0]	TGETS	  4	4	30	; slot4 = uv4"unknown".sizeof
			 74	[  0]	MOV  	  6		1	; slot6 = slot1
			 75	[  0]	CALL 	  4	2	2	; slot4 = uv4"unknown".sizeof(slot5)
			 76	[  0]	ISNEV	  3		4	; if slot3 ~= uv4"unknown".sizeof
			 77	[  0]	JMP  	  3		8	; 	goto 86
			 78	[  0]	TGETB	  3	1	0	; slot3 = slot1[0]
			 79	[  0]	KSHORT	  4		1	; slot4 = 1
			 80	[  0]	ISLT 	  3		4	; if slot3 < slot4
			 81	[  0]	JMP  	  3		4	; 	goto 86
			 82	[  0]	TGETB	  3	1	0	; slot3 = slot1[0]
			 83	[  0]	KNUM 	  4		0	; slot4 = 1048576
			 84	[  0]	ISGE 	  4		3	; if slot4 >= slot3
			 85	[  0]	JMP  	  3		3	; 	goto 89
			 86	[  0]	UGET 	  3		5	; slot3 = uv5"unknwon"
			 87	[  0]	KSTR 	  5		23	; slot5 = "invalid AES key allocation"
			 88	[  0]	CALL 	  3	1	2	;  = uv5"unknown"(slot4)
			 89	[  0]	UGET 	  3		4	; slot3 = uv4"unknwon"
			 90	[  0]	TGETS	  3	3	28	; slot3 = uv4"unknown".new
			 91	[  0]	KSTR 	  5		22	; slot5 = "unsigned char[?]"
			 92	[  0]	TGETB	  6	1	0	; slot6 = slot1[0]
			 93	[  0]	CALL 	  3	2	3	; slot3 = uv4"unknown".new(slot4, slot5)
			 94	[  0]	USETV	  6		3	; uv6"unknwon" = slot3
			 95	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			 96	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
			 97	[  0]	TGETS	  5	5	21	; slot5 = uv1"unknown".BCryptGenerateSymmetricKey
			 98	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
			 99	[  0]	TGETB	  7	7	0	; slot7 = uv2"unknown"[0]
			100	[  0]	UGET 	  8		7	; slot8 = uv7"unknwon"
			101	[  0]	UGET 	  9		6	; slot9 = uv6"unknwon"
			102	[  0]	TGETB	 10	1	0	; slot10 = slot1[0]
			103	[  0]	UGET 	 11		8	; slot11 = uv8"unknwon"
			104	[  0]	KSHORT	 12		32	; slot12 = 32
			105	[  0]	KSHORT	 13		0	; slot13 = 0
			106	[  0]	CALL 	  5	2	8	; slot5 = uv1"unknown".BCryptGenerateSymmetricKey(slot6, slot7, uv7"unknown", uv6"unknown", slot10, uv8"unknown", slot12)
			107	[  0]	KSTR 	  6		20	; slot6 = "AES key setup failed"
			108	[  0]	CALL 	  3	1	3	;  = uv0"unknown"(slot4, slot5)
			109	[  0]	UGET 	  3		4	; slot3 = uv4"unknwon"
			110	[  0]	TGETS	  3	3	19	; slot3 = uv4"unknown".fill
			111	[  0]	UGET 	  5		8	; slot5 = uv8"unknwon"
			112	[  0]	UGET 	  6		4	; slot6 = uv4"unknwon"
			113	[  0]	TGETS	  6	6	30	; slot6 = uv4"unknown".sizeof
			114	[  0]	UGET 	  8		8	; slot8 = uv8"unknwon"
			115	[  0]	CALL 	  6	2	2	; slot6 = uv4"unknown".sizeof(slot7)
			116	[  0]	KSHORT	  7		0	; slot7 = 0
			117	[  0]	CALL 	  3	1	4	;  = uv4"unknown".fill(slot4, uv8"unknown", uv4"unknown".sizeof)
			118	[  0]	UGET 	  3		4	; slot3 = uv4"unknwon"
			119	[  0]	TGETS	  3	3	28	; slot3 = uv4"unknown".new
			120	[  0]	KSTR 	  5		18	; slot5 = "unsigned char[12]"
			121	[  0]	CALL 	  3	2	2	; slot3 = uv4"unknown".new(slot4)
			122	[  0]	UGET 	  4		4	; slot4 = uv4"unknwon"
			123	[  0]	TGETS	  4	4	28	; slot4 = uv4"unknown".new
			124	[  0]	KSTR 	  6		17	; slot6 = "unsigned char[16]"
			125	[  0]	CALL 	  4	2	2	; slot4 = uv4"unknown".new(slot5)
			126	[  0]	UGET 	  5		4	; slot5 = uv4"unknwon"
			127	[  0]	TGETS	  5	5	28	; slot5 = uv4"unknown".new
			128	[  0]	KSTR 	  7		16	; slot7 = "unsigned char[8]"
			129	[  0]	CALL 	  5	2	2	; slot5 = uv4"unknown".new(slot6)
			130	[  0]	UGET 	  6		4	; slot6 = uv4"unknwon"
			131	[  0]	TGETS	  6	6	32	; slot6 = uv4"unknown".cast
			132	[  0]	KSTR 	  8		15	; slot8 = "const unsigned char *"
			133	[  0]	UGET 	  9		9	; slot9 = uv9"unknwon"
			134	[  0]	CALL 	  6	2	3	; slot6 = uv4"unknown".cast(slot7, slot8)
			135	[  0]	UGET 	  7		4	; slot7 = uv4"unknwon"
			136	[  0]	TGETS	  7	7	14	; slot7 = uv4"unknown".copy
			137	[  0]	MOV  	  9		3	; slot9 = uv4"unknown".new
			138	[  0]	ADDVN	 10	6	1	; slot10 = uv4"unknown".cast + 8
			139	[  0]	KSHORT	 11		12	; slot11 = 12
			140	[  0]	CALL 	  7	1	4	;  = uv4"unknown".copy(slot8, uv4"unknown".new, slot10)
			141	[  0]	UGET 	  7		4	; slot7 = uv4"unknwon"
			142	[  0]	TGETS	  7	7	14	; slot7 = uv4"unknown".copy
			143	[  0]	MOV  	  9		4	; slot9 = uv4"unknown".new
			144	[  0]	ADDVN	 10	6	2	; slot10 = uv4"unknown".cast + 20
			145	[  0]	KSHORT	 11		16	; slot11 = 16
			146	[  0]	CALL 	  7	1	4	;  = uv4"unknown".copy(slot8, uv4"unknown".new, slot10)
			147	[  0]	UGET 	  7		4	; slot7 = uv4"unknwon"
			148	[  0]	TGETS	  7	7	14	; slot7 = uv4"unknown".copy
			149	[  0]	MOV  	  9		5	; slot9 = uv4"unknown".new
			150	[  0]	MOV  	 10		6	; slot10 = uv4"unknown".cast
			151	[  0]	KSHORT	 11		8	; slot11 = 8
			152	[  0]	CALL 	  7	1	4	;  = uv4"unknown".copy(slot8, uv4"unknown".new, uv4"unknown".cast)
			153	[  0]	UGET 	  7		4	; slot7 = uv4"unknwon"
			154	[  0]	TGETS	  7	7	28	; slot7 = uv4"unknown".new
			155	[  0]	KSTR 	  9		13	; slot9 = "SBP_AUTH_INFO[1]"
			156	[  0]	CALL 	  7	2	2	; slot7 = uv4"unknown".new(slot8)
			157	[  0]	TGETB	  8	7	0	; slot8 = uv4"unknown".new[0]
			158	[  0]	UGET 	  9		4	; slot9 = uv4"unknwon"
			159	[  0]	TGETS	  9	9	30	; slot9 = uv4"unknown".sizeof
			160	[  0]	KSTR 	 11		11	; slot11 = "SBP_AUTH_INFO"
			161	[  0]	CALL 	  9	2	2	; slot9 = uv4"unknown".sizeof(uv4"unknown".cast)
			162	[  0]	TSETS	  9	8	12	; slot8.cbSize = uv4"unknown".sizeof
			163	[  0]	TGETB	  8	7	0	; slot8 = uv4"unknown".new[0]
			164	[  0]	KSHORT	  9		1	; slot9 = 1
			165	[  0]	TSETS	  9	8	10	; slot8.dwInfoVersion = slot9
			166	[  0]	TGETB	  8	7	0	; slot8 = uv4"unknown".new[0]
			167	[  0]	TGETB	  9	7	0	; slot9 = uv4"unknown".new[0]
			168	[  0]	MOV  	 10		3	; slot10 = uv4"unknown".new
			169	[  0]	KSHORT	 11		12	; slot11 = 12
			170	[  0]	TSETS	 11	9	8	; slot9.cbNonce = slot11
			171	[  0]	TSETS	 10	8	9	; slot8.pbNonce = uv4"unknown".new
			172	[  0]	TGETB	  8	7	0	; slot8 = uv4"unknown".new[0]
			173	[  0]	TGETB	  9	7	0	; slot9 = uv4"unknown".new[0]
			174	[  0]	MOV  	 10		5	; slot10 = uv4"unknown".new
			175	[  0]	KSHORT	 11		8	; slot11 = 8
			176	[  0]	TSETS	 11	9	6	; slot9.cbAuthData = slot11
			177	[  0]	TSETS	 10	8	7	; slot8.pbAuthData = uv4"unknown".new
			178	[  0]	TGETB	  8	7	0	; slot8 = uv4"unknown".new[0]
			179	[  0]	TGETB	  9	7	0	; slot9 = uv4"unknown".new[0]
			180	[  0]	MOV  	 10		4	; slot10 = uv4"unknown".new
			181	[  0]	KSHORT	 11		16	; slot11 = 16
			182	[  0]	TSETS	 11	9	4	; slot9.cbTag = slot11
			183	[  0]	TSETS	 10	8	5	; slot8.pbTag = uv4"unknown".new
			184	[  0]	UGET 	  8		4	; slot8 = uv4"unknwon"
			185	[  0]	TGETS	  8	8	28	; slot8 = uv4"unknown".new
			186	[  0]	KSTR 	 10		22	; slot10 = "unsigned char[?]"
			187	[  0]	UGET 	 11		11	; slot11 = uv11"unknwon"
			188	[  0]	CALL 	  8	2	3	; slot8 = uv4"unknown".new(slot9, slot10)
			189	[  0]	USETV	 10		8	; uv10"unknwon" = uv4"unknown".new
			190	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
			191	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
			192	[  0]	TGETS	 10	10	3	; slot10 = uv1"unknown".BCryptDecrypt
			193	[  0]	UGET 	 12		7	; slot12 = uv7"unknwon"
			194	[  0]	TGETB	 12	12	0	; slot12 = uv7"unknown"[0]
			195	[  0]	UGET 	 13		4	; slot13 = uv4"unknwon"
			196	[  0]	TGETS	 13	13	32	; slot13 = uv4"unknown".cast
			197	[  0]	KSTR 	 15		31	; slot15 = "unsigned char *"
			198	[  0]	UGET 	 16		12	; slot16 = uv12"unknwon"
			199	[  0]	ADDVV	 16	6	16	; slot16 = uv4"unknown".cast + uv12"unknown"
			200	[  0]	CALL 	 13	2	3	; slot13 = uv4"unknown".cast(slot14, slot15)
			201	[  0]	UGET 	 14		11	; slot14 = uv11"unknwon"
			202	[  0]	MOV  	 15		7	; slot15 = uv4"unknown".new
			203	[  0]	KPRI 	 16		0	; slot16 = nil
			204	[  0]	KSHORT	 17		0	; slot17 = 0
			205	[  0]	UGET 	 18		10	; slot18 = uv10"unknwon"
			206	[  0]	UGET 	 19		11	; slot19 = uv11"unknwon"
			207	[  0]	MOV  	 20		2	; slot20 = slot2
			208	[  0]	KSHORT	 21		0	; slot21 = 0
			209	[  0]	CALL 	 10	2	11	; slot10 = uv1"unknown".BCryptDecrypt(uv11"unknown", slot12, uv4"unknown".cast, uv11"unknown", uv4"unknown".new, slot16, slot17, uv10"unknown", uv11"unknown", slot20)
			210	[  0]	KSTR 	 11		2	; slot11 = "package authentication failed"
			211	[  0]	CALL 	  8	1	3	;  = uv0"unknown"(slot9, slot10)
			212	[  0]	TGETB	  8	2	0	; slot8 = slot2[0]
			213	[  0]	UGET 	  9		11	; slot9 = uv11"unknwon"
			214	[  0]	ISEQV	  8		9	; if slot8 == uv11"unknown"
			215	[  0]	JMP  	  8		3	; 	goto 219
			216	[  0]	UGET 	  8		5	; slot8 = uv5"unknwon"
			217	[  0]	KSTR 	 10		1	; slot10 = "invalid decrypted length"
			218	[  0]	CALL 	  8	1	2	;  = uv5"unknown"(uv11"unknown")
			219	[  0]	UGET 	  8		4	; slot8 = uv4"unknwon"
			220	[  0]	TGETS	  8	8	0	; slot8 = uv4"unknown".string
			221	[  0]	UGET 	 10		10	; slot10 = uv10"unknwon"
			222	[  0]	UGET 	 11		11	; slot11 = uv11"unknwon"
			223	[  0]	CALLT	  8		3	; return uv4"unknown".string(uv11"unknown", uv10"unknown")
		 30	[  0]	CALL 	 12	3	2	; slot12, slot13 = pcall(slot13)
		 31	[  0]	MOV  	 14		11	; slot14 = slot11
		 32	[  0]	CALL 	 14	1	1	;  = slot14()
		 33	[  0]	IST  	   		12	; if pcall
		 34	[  0]	JMP  	 14		4	; 	goto 39
		 35	[  0]	GGET 	 14		0	; slot14 = _env["error"]
		 36	[  0]	MOV  	 16		13	; slot16 = slot13
		 37	[  0]	KSHORT	 17		0	; slot17 = 0
		 38	[  0]	CALL 	 14	1	3	;  = error(slot15, slot16)
		 39	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 40
		 40	[  0]	RET1 	 13		2	; return slot13
	 11	[  0]	TSETS	  9	0	7	; slot0.decrypt = slot9
	 12	[  0]	FNEW 	  9		5	; N/A:0-0: 1 args, 0 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		5	; slot1 = _env["type"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  4	[  0]	ISNES	  1		4	; if slot1 ~= "string"
		  5	[  0]	JMP  	  1		14	; 	goto 20
		  6	[  0]	MOV  	  3		0	; slot3 = slot0
		  7	[  0]	TGETS	  1	0	3	; slot1 = slot0.match
		  8	[  0]	KSTR 	  4		2	; slot4 = "^[%w_-][%w_.-]*$"
		  9	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.match(slot2, slot3)
		 10	[  0]	ISF  	   		1	; if not slot1
		 11	[  0]	JMP  	  2		11	; 	goto 23
		 12	[  0]	MOV  	  3		0	; slot3 = slot0
		 13	[  0]	TGETS	  1	0	1	; slot1 = slot0.find
		 14	[  0]	KSTR 	  4		0	; slot4 = ".."
		 15	[  0]	KSHORT	  5		1	; slot5 = 1
		 16	[  0]	KPRI 	  6		2	; slot6 = true
		 17	[  0]	CALL 	  1	2	5	; slot1 = <unknown table>.find(slot2, slot3, slot4, slot5)
		 18	[  0]	NOT  	  1		1	; slot1 = not slot1
		 19	[  0]	JMP  	  2		3	; 	goto 23
		 20	[  0]	KPRI 	  1		1	; slot1 = false
		 21	[  0]	JMP  	  2		1	; 	goto 23
		 22	[  0]	KPRI 	  1		2	; slot1 = true
		 23	[  0]	RET1 	  1		2	; return slot1
	 13	[  0]	FNEW 	 10		4	; N/A:0-0: 2 args, 0 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		2	; slot2 = _env["type"]
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  4	[  0]	ISNES	  2		1	; if slot2 ~= "string"
		  5	[  0]	JMP  	  2		5	; 	goto 11
		  6	[  0]	GGET 	  2		2	; slot2 = _env["type"]
		  7	[  0]	MOV  	  4		1	; slot4 = slot1
		  8	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  9	[  0]	ISEQS	  2		1	; if slot2 == "string"
		 10	[  0]	JMP  	  2		2	; 	goto 13
		 11	[  0]	KPRI 	  2		1	; slot2 = false
		 12	[  0]	UCLO 	  0		14	; nil uvs >= r0; goto 27
		 13	[  0]	FNEW 	  2		0	; N/A:0-0: 1 args, 0 upvalues, 6 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	MOV  	  3		0	; slot3 = slot0
			  2	[  0]	TGETS	  1	0	5	; slot1 = slot0.gsub
			  3	[  0]	KSTR 	  4		4	; slot4 = "\"
			  4	[  0]	KSTR 	  5		3	; slot5 = "/"
			  5	[  0]	CALL 	  1	2	4	; slot1 = <unknown table>.gsub(slot2, slot3, slot4)
			  6	[  0]	MOV  	  3		1	; slot3 = slot1
			  7	[  0]	TGETS	  1	1	5	; slot1 = slot1.gsub
			  8	[  0]	KSTR 	  4		2	; slot4 = "/+$"
			  9	[  0]	KSTR 	  5		1	; slot5 = ""
			 10	[  0]	CALL 	  1	2	4	; slot1 = <unknown table>.gsub(slot2, slot3, slot4)
			 11	[  0]	MOV  	  3		1	; slot3 = slot1
			 12	[  0]	TGETS	  1	1	0	; slot1 = slot1.lower
			 13	[  0]	CALLT	  1		2	; return <unknown table>.lower(slot2)
		 14	[  0]	MOV  	  3		2	; slot3 = slot2
		 15	[  0]	MOV  	  5		0	; slot5 = slot0
		 16	[  0]	CALL 	  3	2	2	; slot3 = slot3(slot4)
		 17	[  0]	MOV  	  4		2	; slot4 = slot2
		 18	[  0]	MOV  	  6		1	; slot6 = slot1
		 19	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
		 20	[  0]	ISEQV	  3		4	; if slot3 == slot4
		 21	[  0]	JMP  	  3		2	; 	goto 24
		 22	[  0]	KPRI 	  3		1	; slot3 = false
		 23	[  0]	JMP  	  4		1	; 	goto 25
		 24	[  0]	KPRI 	  3		2	; slot3 = true
		 25	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 26
		 26	[  0]	RET1 	  3		2	; return slot3
		 27	[  0]	RET1 	  2		2	; return slot2
	 14	[  0]	FNEW 	 11		3	; N/A:0-0: 3 args, 2 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  3	0	1	; slot3 = slot0.getRealDirectory
		  2	[  0]	MOV  	  5		1	; slot5 = slot1
		  3	[  0]	CALL 	  3	2	2	; slot3 = <unknown table>.getRealDirectory(slot4)
		  4	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  5	[  0]	MOV  	  6		3	; slot6 = <unknown table>.getRealDirectory
		  6	[  0]	MOV  	  7		2	; slot7 = slot2
		  7	[  0]	CALL 	  4	2	3	; slot4 = uv0"unknown"(slot5, <unknown table>.getRealDirectory)
		  8	[  0]	IST  	   		4	; if uv0"unknown"
		  9	[  0]	JMP  	  4		5	; 	goto 15
		 10	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 11	[  0]	KSTR 	  6		0	; slot6 = "untrusted or missing package file: "
		 12	[  0]	MOV  	  7		1	; slot7 = slot1
		 13	[  0]	CAT  	  6	6	7	; slot6 = slot6 .. slot7
		 14	[  0]	CALL 	  4	1	2	;  = uv1"unknown"(slot5)
		 15	[  0]	RET0 	  0		1	; return
	 15	[  0]	FNEW 	 12		2	; N/A:0-0: 2 args, 2 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		11	; slot2 = _env["package"]
		  2	[  0]	TGETS	  2	2	10	; slot2 = package.loaders
		  3	[  0]	IST  	   		2	; if package.loaders
		  4	[  0]	JMP  	  3		2	; 	goto 7
		  5	[  0]	GGET 	  2		11	; slot2 = _env["package"]
		  6	[  0]	TGETS	  2	2	9	; slot2 = package.searchers
		  7	[  0]	GGET 	  3		8	; slot3 = _env["type"]
		  8	[  0]	MOV  	  5		2	; slot5 = package.searchers
		  9	[  0]	CALL 	  3	2	2	; slot3 = type(slot4)
		 10	[  0]	ISEQS	  3		7	; if type == "table"
		 11	[  0]	JMP  	  3		3	; 	goto 15
		 12	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 13	[  0]	KSTR 	  5		6	; slot5 = "Lua module loading is unavailable"
		 14	[  0]	CALL 	  3	1	2	;  = uv0"unknown"(slot4)
		 15	[  0]	TGETS	  3	0	5	; slot3 = slot0.getInfo
		 16	[  0]	TGETS	  4	0	4	; slot4 = slot0.getRealDirectory
		 17	[  0]	TGETS	  5	0	3	; slot5 = slot0.load
		 18	[  0]	FNEW 	  6		2	; N/A:0-0: 1 args, 6 upvalues, 13 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  1		22	; slot1 = _env["type"]
			  2	[  0]	MOV  	  3		0	; slot3 = slot0
			  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
			  4	[  0]	ISEQS	  1		21	; if slot1 == "string"
			  5	[  0]	JMP  	  1		2	; 	goto 8
			  6	[  0]	KPRI 	  1		0	; slot1 = nil
			  7	[  0]	RET1 	  1		2	; return slot1
			  8	[  0]	ISEQS	  0		20	; if slot0 == "src"
			  9	[  0]	JMP  	  1		7	; 	goto 17
			 10	[  0]	MOV  	  3		0	; slot3 = slot0
			 11	[  0]	TGETS	  1	0	19	; slot1 = slot0.match
			 12	[  0]	KSTR 	  4		18	; slot4 = "^src[./\]"
			 13	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.match(slot2, slot3)
			 14	[  0]	JMP  	  2		3	; 	goto 18
			 15	[  0]	KPRI 	  1		1	; slot1 = false
			 16	[  0]	JMP  	  2		1	; 	goto 18
			 17	[  0]	KPRI 	  1		2	; slot1 = true
			 18	[  0]	ISEQS	  0		17	; if slot0 == "main"
			 19	[  0]	JMP  	  2		4	; 	goto 24
			 20	[  0]	IST  	   		1	; if slot1
			 21	[  0]	JMP  	  2		2	; 	goto 24
			 22	[  0]	KPRI 	  2		0	; slot2 = nil
			 23	[  0]	RET1 	  2		2	; return slot2
			 24	[  0]	MOV  	  4		0	; slot4 = slot0
			 25	[  0]	TGETS	  2	0	16	; slot2 = slot0.find
			 26	[  0]	KSTR 	  5		15	; slot5 = "[^%w_%.]"
			 27	[  0]	CALL 	  2	2	3	; slot2 = <unknown table>.find(slot3, slot4)
			 28	[  0]	IST  	   		2	; if slot2
			 29	[  0]	JMP  	  3		14	; 	goto 44
			 30	[  0]	MOV  	  4		0	; slot4 = slot0
			 31	[  0]	TGETS	  2	0	16	; slot2 = slot0.find
			 32	[  0]	KSTR 	  5		14	; slot5 = ".."
			 33	[  0]	KSHORT	  6		1	; slot6 = 1
			 34	[  0]	KPRI 	  7		2	; slot7 = true
			 35	[  0]	CALL 	  2	2	5	; slot2 = <unknown table>.find(slot3, slot4, slot5, slot6)
			 36	[  0]	IST  	   		2	; if slot2
			 37	[  0]	JMP  	  3		6	; 	goto 44
			 38	[  0]	MOV  	  4		0	; slot4 = slot0
			 39	[  0]	TGETS	  2	0	13	; slot2 = slot0.sub
			 40	[  0]	KSHORT	  5		65535	; slot5 = 65535
			 41	[  0]	CALL 	  2	2	3	; slot2 = <unknown table>.sub(slot3, slot4)
			 42	[  0]	ISNES	  2		12	; if slot2 ~= "."
			 43	[  0]	JMP  	  2		3	; 	goto 47
			 44	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			 45	[  0]	KSTR 	  4		11	; slot4 = "invalid project module name"
			 46	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(slot3)
			 47	[  0]	MOV  	  4		0	; slot4 = slot0
			 48	[  0]	TGETS	  2	0	10	; slot2 = slot0.gsub
			 49	[  0]	KSTR 	  5		9	; slot5 = "%."
			 50	[  0]	KSTR 	  6		8	; slot6 = "/"
			 51	[  0]	CALL 	  2	2	4	; slot2 = <unknown table>.gsub(slot3, slot4, slot5)
			 52	[  0]	GGET 	  3		7	; slot3 = _env["ipairs"]
			 53	[  0]	TNEW 	  5		3	; slot5 = new table( array: 3, dict: 1)
			 54	[  0]	MOV  	  6		2	; slot6 = slot2
			 55	[  0]	KSTR 	  7		6	; slot7 = ".lua"
			 56	[  0]	CAT  	  6	6	7	; slot6 = slot6 .. slot7
			 57	[  0]	TSETB	  6	5	1	; slot5[1] = slot6
			 58	[  0]	MOV  	  6		2	; slot6 = slot2
			 59	[  0]	KSTR 	  7		5	; slot7 = "/init.lua"
			 60	[  0]	CAT  	  6	6	7	; slot6 = slot6 .. slot7
			 61	[  0]	TSETB	  6	5	2	; slot5[2] = slot6
			 62	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
			 63	[  0]	JMP  	  6		33	; 	goto 97
			 64	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
			 65	[  0]	MOV  	 10		7	; slot10 = slot7
			 66	[  0]	KSTR 	 11		4	; slot11 = "file"
			 67	[  0]	CALL 	  8	2	3	; slot8 = uv1"unknown"(slot9, slot10)
			 68	[  0]	ISF  	   		8	; if not uv1"unknown"
			 69	[  0]	JMP  	  9		27	; 	goto 97
			 70	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
			 71	[  0]	UGET 	 10		3	; slot10 = uv3"unknwon"
			 72	[  0]	MOV  	 12		7	; slot12 = slot7
			 73	[  0]	CALL 	 10	2	2	; slot10 = uv3"unknown"(slot11)
			 74	[  0]	UGET 	 11		4	; slot11 = uv4"unknwon"
			 75	[  0]	CALL 	  8	2	3	; slot8 = uv2"unknown"(slot9, uv3"unknown")
			 76	[  0]	IST  	   		8	; if uv2"unknown"
			 77	[  0]	JMP  	  8		5	; 	goto 83
			 78	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
			 79	[  0]	KSTR 	 10		3	; slot10 = "untrusted project module: "
			 80	[  0]	MOV  	 11		0	; slot11 = slot0
			 81	[  0]	CAT  	 10	10	11	; slot10 = slot10 .. slot11
			 82	[  0]	CALL 	  8	1	2	;  = uv0"unknown"(slot9)
			 83	[  0]	UGET 	  8		5	; slot8 = uv5"unknwon"
			 84	[  0]	MOV  	 10		7	; slot10 = slot7
			 85	[  0]	CALL 	  8	2	2	; slot8 = uv5"unknown"(slot9)
			 86	[  0]	GGET 	  9		22	; slot9 = _env["type"]
			 87	[  0]	MOV  	 11		8	; slot11 = uv5"unknown"
			 88	[  0]	CALL 	  9	2	2	; slot9 = type(slot10)
			 89	[  0]	ISEQS	  9		2	; if type == "function"
			 90	[  0]	JMP  	  9		5	; 	goto 96
			 91	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
			 92	[  0]	KSTR 	 11		1	; slot11 = "invalid project module: "
			 93	[  0]	MOV  	 12		0	; slot12 = slot0
			 94	[  0]	CAT  	 11	11	12	; slot11 = slot11 .. slot12
			 95	[  0]	CALL 	  9	1	2	;  = uv0"unknown"(slot10)
			 96	[  0]	RET1 	  8		2	; return uv5"unknown"
			 97	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, slot5; slot6, slot7 = ipairs(slot4, slot5)
			 98	[  0]	ITERL	  6		-35	; slot5 = slot6; if slot6 != nil goto 64
			 99	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			100	[  0]	KSTR 	  5		0	; slot5 = "missing protected module: "
			101	[  0]	MOV  	  6		0	; slot6 = slot0
			102	[  0]	CAT  	  5	5	6	; slot5 = slot5 .. slot6
			103	[  0]	CALL 	  3	1	2	;  = uv0"unknown"(slot4)
			104	[  0]	RET0 	  0		1	; return
		 19	[  0]	GGET 	  7		7	; slot7 = _env["table"]
		 20	[  0]	TGETS	  7	7	1	; slot7 = table.insert
		 21	[  0]	MOV  	  9		2	; slot9 = package.searchers
		 22	[  0]	KSHORT	 10		1	; slot10 = 1
		 23	[  0]	MOV  	 11		6	; slot11 = slot6
		 24	[  0]	CALL 	  7	1	4	;  = table.insert(slot8, package.searchers, slot10)
		 25	[  0]	FNEW 	  7		0	; N/A:0-0: 0 args, 2 upvalues, 8 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	LEN  	  0		0	; slot0 = #uv0"unknown"
			  3	[  0]	KSHORT	  1		1	; slot1 = 1
			  4	[  0]	KSHORT	  2		65535	; slot2 = 65535
			  5	[  0]	FORI 	  0		11	; for slot3 = slot0,slot1,slot2 else goto 17
			  6	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			  7	[  0]	TGETV	  4	4	3	; slot4 = uv0"unknown"[slot3]
			  8	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
			  9	[  0]	ISNEV	  4		5	; if slot4 ~= uv1"unknown"
			 10	[  0]	JMP  	  4		5	; 	goto 16
			 11	[  0]	GGET 	  4		1	; slot4 = _env["table"]
			 12	[  0]	TGETS	  4	4	0	; slot4 = table.remove
			 13	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
			 14	[  0]	MOV  	  7		3	; slot7 = slot3
			 15	[  0]	CALL 	  4	1	3	;  = table.remove(uv1"unknown", uv0"unknown")
			 16	[  0]	FORL 	  0		-11	; slot3 = slot3 + slot2; if cmp(slot3, sign slot2,  slot1) goto 6
			 17	[  0]	RET0 	  0		1	; return
		 26	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 27
		 27	[  0]	RET1 	  7		2	; return slot7
	 16	[  0]	FNEW 	 13		0	; N/A:0-0: 1 args, 8 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		39	; slot1 = _env["type"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  4	[  0]	ISEQS	  1		38	; if slot1 == "table"
		  5	[  0]	JMP  	  1		3	; 	goto 9
		  6	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  7	[  0]	KSTR 	  3		37	; slot3 = "missing package configuration"
		  8	[  0]	CALL 	  1	1	2	;  = uv0"unknown"(slot2)
		  9	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 10	[  0]	CALL 	  1	2	1	; slot1 = uv1"unknown"()
		 11	[  0]	IST  	   		1	; if slot1
		 12	[  0]	JMP  	  1		3	; 	goto 16
		 13	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 14	[  0]	KSTR 	  3		36	; slot3 = "Windows x64 is required"
		 15	[  0]	CALL 	  1	1	2	;  = uv0"unknown"(slot2)
		 16	[  0]	GGET 	  1		35	; slot1 = _env["love"]
		 17	[  0]	ISF  	   		1	; if not love
		 18	[  0]	JMP  	  2		2	; 	goto 21
		 19	[  0]	GGET 	  1		35	; slot1 = _env["love"]
		 20	[  0]	TGETS	  1	1	34	; slot1 = love.filesystem
		 21	[  0]	IST  	   		1	; if love.filesystem
		 22	[  0]	JMP  	  2		8	; 	goto 31
		 23	[  0]	GGET 	  2		33	; slot2 = _env["require"]
		 24	[  0]	KSTR 	  4		32	; slot4 = "love.filesystem"
		 25	[  0]	CALL 	  2	1	2	;  = require(slot3)
		 26	[  0]	GGET 	  2		35	; slot2 = _env["love"]
		 27	[  0]	ISFC 	  1		2	; slot1 = love; if not love
		 28	[  0]	JMP  	  3		2	; 	goto 31
		 29	[  0]	GGET 	  2		35	; slot2 = _env["love"]
		 30	[  0]	TGETS	  1	2	34	; slot1 = love.filesystem
		 31	[  0]	ISF  	   		1	; if not love.filesystem
		 32	[  0]	JMP  	  2		27	; 	goto 60
		 33	[  0]	TGETS	  2	1	31	; slot2 = love.filesystem.isFused
		 34	[  0]	ISF  	   		2	; if not love.filesystem.isFused
		 35	[  0]	JMP  	  3		24	; 	goto 60
		 36	[  0]	TGETS	  2	1	30	; slot2 = love.filesystem.getSource
		 37	[  0]	ISF  	   		2	; if not love.filesystem.getSource
		 38	[  0]	JMP  	  3		21	; 	goto 60
		 39	[  0]	TGETS	  2	1	29	; slot2 = love.filesystem.getRealDirectory
		 40	[  0]	ISF  	   		2	; if not love.filesystem.getRealDirectory
		 41	[  0]	JMP  	  3		18	; 	goto 60
		 42	[  0]	TGETS	  2	1	28	; slot2 = love.filesystem.getInfo
		 43	[  0]	ISF  	   		2	; if not love.filesystem.getInfo
		 44	[  0]	JMP  	  3		15	; 	goto 60
		 45	[  0]	TGETS	  2	1	27	; slot2 = love.filesystem.read
		 46	[  0]	ISF  	   		2	; if not love.filesystem.read
		 47	[  0]	JMP  	  3		12	; 	goto 60
		 48	[  0]	TGETS	  2	1	26	; slot2 = love.filesystem.newFileData
		 49	[  0]	ISF  	   		2	; if not love.filesystem.newFileData
		 50	[  0]	JMP  	  3		9	; 	goto 60
		 51	[  0]	TGETS	  2	1	25	; slot2 = love.filesystem.mount
		 52	[  0]	ISF  	   		2	; if not love.filesystem.mount
		 53	[  0]	JMP  	  3		6	; 	goto 60
		 54	[  0]	TGETS	  2	1	24	; slot2 = love.filesystem.setIdentity
		 55	[  0]	ISF  	   		2	; if not love.filesystem.setIdentity
		 56	[  0]	JMP  	  3		3	; 	goto 60
		 57	[  0]	TGETS	  2	1	23	; slot2 = love.filesystem.load
		 58	[  0]	IST  	   		2	; if love.filesystem.load
		 59	[  0]	JMP  	  2		3	; 	goto 63
		 60	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 61	[  0]	KSTR 	  4		22	; slot4 = "required filesystem support is unavailable"
		 62	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(slot3)
		 63	[  0]	TGETS	  2	1	31	; slot2 = love.filesystem.isFused
		 64	[  0]	CALL 	  2	2	1	; slot2 = love.filesystem.isFused()
		 65	[  0]	IST  	   		2	; if love.filesystem.isFused
		 66	[  0]	JMP  	  2		6	; 	goto 73
		 67	[  0]	TGETS	  2	0	21	; slot2 = slot0.allowUnfused
		 68	[  0]	ISEQP	  2		2	; if <unknown table>.allowUnfused == true
		 69	[  0]	JMP  	  2		3	; 	goto 73
		 70	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 71	[  0]	KSTR 	  4		20	; slot4 = "run the official Slotbound executable"
		 72	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(slot3)
		 73	[  0]	TGETS	  2	0	19	; slot2 = slot0.payload
		 74	[  0]	IST  	   		2	; if <unknown table>.payload
		 75	[  0]	JMP  	  3		1	; 	goto 77
		 76	[  0]	KSTR 	  2		18	; slot2 = "content.sbpack"
		 77	[  0]	TGETS	  3	0	17	; slot3 = slot0.archiveName
		 78	[  0]	IST  	   		3	; if <unknown table>.archiveName
		 79	[  0]	JMP  	  4		1	; 	goto 81
		 80	[  0]	KSTR 	  3		16	; slot3 = "slotbound-protected.zip"
		 81	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 82	[  0]	MOV  	  6		2	; slot6 = slot2
		 83	[  0]	CALL 	  4	2	2	; slot4 = uv2"unknown"(slot5)
		 84	[  0]	ISF  	   		4	; if not uv2"unknown"
		 85	[  0]	JMP  	  4		7	; 	goto 93
		 86	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 87	[  0]	MOV  	  6		3	; slot6 = slot3
		 88	[  0]	CALL 	  4	2	2	; slot4 = uv2"unknown"(slot5)
		 89	[  0]	ISF  	   		4	; if not uv2"unknown"
		 90	[  0]	JMP  	  4		2	; 	goto 93
		 91	[  0]	ISNEV	  2		3	; if slot2 ~= slot3
		 92	[  0]	JMP  	  4		3	; 	goto 96
		 93	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 94	[  0]	KSTR 	  6		15	; slot6 = "invalid package filename"
		 95	[  0]	CALL 	  4	1	2	;  = uv0"unknown"(slot5)
		 96	[  0]	TGETS	  4	1	24	; slot4 = love.filesystem.setIdentity
		 97	[  0]	KSTR 	  6		14	; slot6 = "slotbound"
		 98	[  0]	KPRI 	  7		2	; slot7 = true
		 99	[  0]	CALL 	  4	1	3	;  = love.filesystem.setIdentity(slot5, slot6)
		100	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		101	[  0]	MOV  	  6		1	; slot6 = love.filesystem
		102	[  0]	MOV  	  7		2	; slot7 = slot2
		103	[  0]	TGETS	  8	1	30	; slot8 = love.filesystem.getSource
		104	[  0]	CALL 	  8	0	1	; MULTRES = love.filesystem.getSource()
		105	[  0]	CALLM	  4	1	2	;  = uv3"unknown"(slot5, love.filesystem, ...MULTRES)
		106	[  0]	TGETS	  4	1	28	; slot4 = love.filesystem.getInfo
		107	[  0]	MOV  	  6		2	; slot6 = slot2
		108	[  0]	KSTR 	  7		13	; slot7 = "file"
		109	[  0]	CALL 	  4	2	3	; slot4 = love.filesystem.getInfo(slot5, slot6)
		110	[  0]	ISF  	   		4	; if not love.filesystem.getInfo
		111	[  0]	JMP  	  5		13	; 	goto 125
		112	[  0]	GGET 	  5		39	; slot5 = _env["type"]
		113	[  0]	TGETS	  7	4	12	; slot7 = love.filesystem.getInfo.size
		114	[  0]	CALL 	  5	2	2	; slot5 = type(slot6)
		115	[  0]	ISNES	  5		11	; if type ~= "number"
		116	[  0]	JMP  	  5		8	; 	goto 125
		117	[  0]	TGETS	  5	4	12	; slot5 = love.filesystem.getInfo.size
		118	[  0]	UGET 	  6		4	; slot6 = uv4"unknwon"
		119	[  0]	ISLE 	  5		6	; if love.filesystem.getInfo.size <= uv4"unknown"
		120	[  0]	JMP  	  5		4	; 	goto 125
		121	[  0]	TGETS	  5	4	12	; slot5 = love.filesystem.getInfo.size
		122	[  0]	UGET 	  6		5	; slot6 = uv5"unknwon"
		123	[  0]	ISGE 	  6		5	; if uv5"unknown" >= love.filesystem.getInfo.size
		124	[  0]	JMP  	  5		3	; 	goto 128
		125	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		126	[  0]	KSTR 	  7		10	; slot7 = "invalid package size"
		127	[  0]	CALL 	  5	1	2	;  = uv0"unknown"(uv5"unknown")
		128	[  0]	TGETS	  5	1	27	; slot5 = love.filesystem.read
		129	[  0]	MOV  	  7		2	; slot7 = slot2
		130	[  0]	CALL 	  5	2	2	; slot5 = love.filesystem.read(uv5"unknown")
		131	[  0]	GGET 	  6		39	; slot6 = _env["type"]
		132	[  0]	MOV  	  8		5	; slot8 = love.filesystem.read
		133	[  0]	CALL 	  6	2	2	; slot6 = type(slot7)
		134	[  0]	ISNES	  6		9	; if type ~= "string"
		135	[  0]	JMP  	  6		4	; 	goto 140
		136	[  0]	LEN  	  6		5	; slot6 = #love.filesystem.read
		137	[  0]	TGETS	  7	4	12	; slot7 = love.filesystem.getInfo.size
		138	[  0]	ISEQV	  6		7	; if slot6 == love.filesystem.getInfo.size
		139	[  0]	JMP  	  6		3	; 	goto 143
		140	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		141	[  0]	KSTR 	  8		8	; slot8 = "could not read the complete package"
		142	[  0]	CALL 	  6	1	2	;  = uv0"unknown"(love.filesystem.getInfo.size)
		143	[  0]	TGETS	  6	0	7	; slot6 = slot0.key
		144	[  0]	KPRI 	  7		0	; slot7 = nil
		145	[  0]	TSETS	  7	0	7	; slot0.key = slot7
		146	[  0]	UGET 	  7		6	; slot7 = uv6"unknwon"
		147	[  0]	TGETS	  7	7	6	; slot7 = uv6"unknown".decrypt
		148	[  0]	MOV  	  9		5	; slot9 = love.filesystem.read
		149	[  0]	MOV  	 10		6	; slot10 = <unknown table>.key
		150	[  0]	CALL 	  7	2	3	; slot7 = uv6"unknown".decrypt(slot8, love.filesystem.read)
		151	[  0]	KPRI 	  8		0	; slot8 = nil
		152	[  0]	KPRI 	  6		0	; slot6 = nil
		153	[  0]	MOV  	  5		8	; slot5 = slot8
		154	[  0]	TGETS	  8	1	26	; slot8 = love.filesystem.newFileData
		155	[  0]	MOV  	 10		7	; slot10 = uv6"unknown".decrypt
		156	[  0]	MOV  	 11		3	; slot11 = slot3
		157	[  0]	CALL 	  8	2	3	; slot8 = love.filesystem.newFileData(love.filesystem.read, uv6"unknown".decrypt)
		158	[  0]	KPRI 	  7		0	; slot7 = nil
		159	[  0]	TGETS	  9	1	25	; slot9 = love.filesystem.mount
		160	[  0]	MOV  	 11		8	; slot11 = love.filesystem.newFileData
		161	[  0]	KSTR 	 12		5	; slot12 = ""
		162	[  0]	KPRI 	 13		1	; slot13 = false
		163	[  0]	CALL 	  9	2	4	; slot9 = love.filesystem.mount(uv6"unknown".decrypt, love.filesystem.newFileData, slot12)
		164	[  0]	IST  	   		9	; if love.filesystem.mount
		165	[  0]	JMP  	  9		3	; 	goto 169
		166	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		167	[  0]	KSTR 	 11		4	; slot11 = "invalid protected archive"
		168	[  0]	CALL 	  9	1	2	;  = uv0"unknown"(uv6"unknown".decrypt)
		169	[  0]	KPRI 	  9		0	; slot9 = nil
		170	[  0]	GGET 	 10		3	; slot10 = _env["pcall"]
		171	[  0]	FNEW 	 12		2	; N/A:0-0: 0 args, 6 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  3	[  0]	KSTR 	  3		6	; slot3 = "conf.lua"
			  4	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
			  5	[  0]	CALL 	  0	1	4	;  = uv0"unknown"(slot1, uv1"unknown", slot3)
			  6	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  7	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  8	[  0]	KSTR 	  3		5	; slot3 = "main.lua"
			  9	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
			 10	[  0]	CALL 	  0	1	4	;  = uv0"unknown"(slot1, uv1"unknown", slot3)
			 11	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 12	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			 13	[  0]	KSTR 	  3		4	; slot3 = "release.flag"
			 14	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
			 15	[  0]	CALL 	  0	1	4	;  = uv0"unknown"(slot1, uv1"unknown", slot3)
			 16	[  0]	UGET 	  0		4	; slot0 = uv4"unknwon"
			 17	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			 18	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
			 19	[  0]	CALL 	  0	2	3	; slot0 = uv4"unknown"(slot1, uv1"unknown")
			 20	[  0]	USETV	  3		0	; uv3"unknwon" = slot0
			 21	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
			 22	[  0]	TGETS	  0	0	3	; slot0 = uv1"unknown".load
			 23	[  0]	KSTR 	  2		6	; slot2 = "conf.lua"
			 24	[  0]	CALL 	  0	2	2	; slot0 = uv1"unknown".load(slot1)
			 25	[  0]	GGET 	  1		2	; slot1 = _env["type"]
			 26	[  0]	MOV  	  3		0	; slot3 = slot0
			 27	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
			 28	[  0]	ISEQS	  1		1	; if slot1 == "function"
			 29	[  0]	JMP  	  1		3	; 	goto 33
			 30	[  0]	UGET 	  1		5	; slot1 = uv5"unknwon"
			 31	[  0]	KSTR 	  3		0	; slot3 = "invalid protected configuration"
			 32	[  0]	CALL 	  1	1	2	;  = uv5"unknown"(slot2)
			 33	[  0]	MOV  	  1		0	; slot1 = slot0
			 34	[  0]	CALL 	  1	1	1	;  = slot1()
			 35	[  0]	KPRI 	  1		2	; slot1 = true
			 36	[  0]	RET1 	  1		2	; return slot1
		172	[  0]	CALL 	 10	3	2	; slot10, slot11 = pcall(slot11)
		173	[  0]	IST  	   		10	; if pcall
		174	[  0]	JMP  	 12		15	; 	goto 190
		175	[  0]	ISF  	   		9	; if not slot9
		176	[  0]	JMP  	 12		2	; 	goto 179
		177	[  0]	MOV  	 12		9	; slot12 = slot9
		178	[  0]	CALL 	 12	1	1	;  = slot12()
		179	[  0]	TGETS	 12	1	1	; slot12 = love.filesystem.unmount
		180	[  0]	ISF  	   		12	; if not love.filesystem.unmount
		181	[  0]	JMP  	 13		4	; 	goto 186
		182	[  0]	GGET 	 12		3	; slot12 = _env["pcall"]
		183	[  0]	TGETS	 14	1	1	; slot14 = love.filesystem.unmount
		184	[  0]	MOV  	 15		8	; slot15 = love.filesystem.newFileData
		185	[  0]	CALL 	 12	1	3	;  = pcall(slot13, love.filesystem.unmount)
		186	[  0]	GGET 	 12		0	; slot12 = _env["error"]
		187	[  0]	MOV  	 14		11	; slot14 = slot11
		188	[  0]	KSHORT	 15		0	; slot15 = 0
		189	[  0]	CALL 	 12	1	3	;  = error(slot13, slot14)
		190	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 191
		191	[  0]	RET1 	 11		2	; return slot11
	 17	[  0]	TSETS	 13	0	1	; slot0.boot = slot13
	 18	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 19
	 19	[  0]	RET1 	  0		2	; return slot0
	
