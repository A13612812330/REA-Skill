;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\audio\device_router.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 20 slots
	;;;; constant tables ;;;;
	ktable#23 = [
		[poll] = 1,
		[budgetWindow] = 60,
		[budgetCount] = 6,
		[cooldown] = 2,
		[settle] = 0.6,
		]
	
	
	ktable#24 = [
		[routingDisabled] = false,
		[throttled] = false,
		[failureCount] = 0,
		[reopenCount] = 0,
		[eventCount] = 0,
		[pending] = false,
		[supported] = false,
		[initialized] = false,
		]
	
	
	;;;; instructions ;;;;
	  1	[  0]	TDUP 	  0		24	; slot0 = copy table#k24
	  2	[  0]	TDUP 	  1		23	; slot1 = copy table#k23
	  3	[  0]	KSHORT	  2		1	; slot2 = 1
	  4	[  0]	KSHORT	  3		2	; slot3 = 2
	  5	[  0]	KSTR 	  4		22	; slot4 = "slotbound.audio_route.cmd"
	  6	[  0]	KSTR 	  5		21	; slot5 = "slotbound.audio_route.evt"
	  7	[  0]	FNEW 	  6		20	; N/A:0-0: 7 args, 0 upvalues, 51 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  7		42	; slot7 = _env["require"]
		  2	[  0]	KSTR 	  9		41	; slot9 = "love.timer"
		  3	[  0]	CALL 	  7	1	2	;  = require(slot8)
		  4	[  0]	GGET 	  7		42	; slot7 = _env["require"]
		  5	[  0]	KSTR 	  9		40	; slot9 = "love.thread"
		  6	[  0]	CALL 	  7	1	2	;  = require(slot8)
		  7	[  0]	GGET 	  7		42	; slot7 = _env["require"]
		  8	[  0]	KSTR 	  9		39	; slot9 = "ffi"
		  9	[  0]	CALL 	  7	2	2	; slot7 = require(slot8)
		 10	[  0]	GGET 	  8		38	; slot8 = _env["love"]
		 11	[  0]	TGETS	  8	8	37	; slot8 = love.thread
		 12	[  0]	TGETS	  8	8	36	; slot8 = love.thread.getChannel
		 13	[  0]	KSTR 	 10		35	; slot10 = "slotbound.audio_route.cmd"
		 14	[  0]	CALL 	  8	2	2	; slot8 = love.thread.getChannel(slot9)
		 15	[  0]	GGET 	  9		38	; slot9 = _env["love"]
		 16	[  0]	TGETS	  9	9	37	; slot9 = love.thread
		 17	[  0]	TGETS	  9	9	36	; slot9 = love.thread.getChannel
		 18	[  0]	KSTR 	 11		34	; slot11 = "slotbound.audio_route.evt"
		 19	[  0]	CALL 	  9	2	2	; slot9 = love.thread.getChannel(slot10)
		 20	[  0]	FNEW 	 10		33	; N/A:0-0: 2 args, 1 upvalues, 6 slots
			
			;;;; constant tables ;;;;
			ktable#2 = [
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  2	[  0]	MOV  	  4		2	; slot4 = uv0"unknown"
			  3	[  0]	TGETS	  2	2	3	; slot2 = uv0"unknown".push
			  4	[  0]	TDUP 	  5		2	; slot5 = copy table#k2
			  5	[  0]	TSETS	  0	5	1	; slot5.kind = slot0
			  6	[  0]	TSETS	  1	5	0	; slot5.detail = slot1
			  7	[  0]	CALL 	  2	1	3	;  = uv0"unknown".push(slot3, uv0"unknown")
			  8	[  0]	RET0 	  0		1	; return
		 21	[  0]	KPRI 	 11		1	; slot11 = false
		 22	[  0]	KNIL 	 12		18	; slot12, slot13, slot14, slot15, slot16, slot17, slot18 = nil
		 23	[  0]	FNEW 	 19		32	; N/A:0-0: 1 args, 4 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	KSTR 	  3		3	; slot3 = "unsupported"
			  3	[  0]	MOV  	  4		0	; slot4 = slot0
			  4	[  0]	CALL 	  1	1	3	;  = uv0"unknown"(slot2, slot3)
			  5	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			  6	[  0]	ISEQP	  1		0	; if uv1"unknown" == nil
			  7	[  0]	JMP  	  1		5	; 	goto 13
			  8	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			  9	[  0]	TGETS	  1	1	2	; slot1 = uv1"unknown".vtbl
			 10	[  0]	TGETS	  1	1	1	; slot1 = uv1"unknown".vtbl.Release
			 11	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
			 12	[  0]	CALL 	  1	1	2	;  = uv1"unknown".vtbl.Release(slot2)
			 13	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
			 14	[  0]	ISF  	   		1	; if not uv2"unknown"
			 15	[  0]	JMP  	  2		3	; 	goto 19
			 16	[  0]	UGET 	  1		3	; slot1 = uv3"unknwon"
			 17	[  0]	TGETS	  1	1	0	; slot1 = uv3"unknown".CoUninitialize
			 18	[  0]	CALL 	  1	1	1	;  = uv3"unknown".CoUninitialize()
			 19	[  0]	RET0 	  0		1	; return
		 24	[  0]	GGET 	 20		31	; slot20 = _env["pcall"]
		 25	[  0]	FNEW 	 22		30	; N/A:0-0: 0 args, 11 upvalues, 11 slots
			
			;;;; constant tables ;;;;
			ktable#6 = [
				#1: 167,
				#2: 70,
				#3: 222,
				#4: 141,
				#5: 182,
				#6: 54,
				#7: 23,
				#8: 230,
				]
			
			
			ktable#7 = [
				#1: 2841011410.0,
				#2: 38420,
				#3: 20277,
				]
			
			
			ktable#8 = [
				#1: 142,
				#2: 61,
				#3: 196,
				#4: 87,
				#5: 146,
				#6: 145,
				#7: 105,
				#8: 46,
				]
			
			
			ktable#9 = [
				#1: 3168666517.0,
				#2: 58671,
				#3: 18044,
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	TGETS	  0	0	29	; slot0 = uv0"unknown".cdef
			  3	[  0]	KSTR 	  2		28	; slot2 = "      typedef struct {
			        uint32_t d1; uint16_t d2; uint16_t d3; uint8_t d4[8];
			      } SbAudioGuid;
			      typedef struct SbAudioDevice SbAudioDevice;
			      typedef struct SbAudioDeviceVtbl {
			        void *QueryInterface; void *AddRef;
			        uint32_t (__stdcall *Release)(SbAudioDevice *self);
			        void *Activate; void *OpenPropertyStore;
			        int32_t (__stdcall *GetId)(SbAudioDevice *self, uint16_t **id);
			        void *GetState;
			      } SbAudioDeviceVtbl;
			      struct SbAudioDevice { const SbAudioDeviceVtbl *vtbl; };
			      typedef struct SbAudioEnumerator SbAudioEnumerator;
			      typedef struct SbAudioEnumeratorVtbl {
			        void *QueryInterface; void *AddRef;
			        uint32_t (__stdcall *Release)(SbAudioEnumerator *self);
			        void *EnumAudioEndpoints;
			        int32_t (__stdcall *GetDefaultAudioEndpoint)(
			          SbAudioEnumerator *self, int32_t flow, int32_t role,
			          SbAudioDevice **device);
			        void *GetDevice; void *RegisterEndpointNotificationCallback;
			        void *UnregisterEndpointNotificationCallback;
			      } SbAudioEnumeratorVtbl;
			      struct SbAudioEnumerator { const SbAudioEnumeratorVtbl *vtbl; };
			      int32_t __stdcall CoInitializeEx(void *reserved, uint32_t flags);
			      void __stdcall CoUninitialize(void);
			      int32_t __stdcall CoCreateInstance(const SbAudioGuid *clsid,
			        void *outer, uint32_t context, const SbAudioGuid *iid, void **object);
			      void __stdcall CoTaskMemFree(void *memory);
			      char alcIsExtensionPresent(void *device, const char *name);
			      void *alcGetProcAddress(void *device, const char *name);
			      void alcGetIntegerv(void *device, int32_t param, int32_t size,
			        int32_t *values);
			      typedef char (*SbAlcReopenProc)(void *device, const char *name,
			        const int32_t *attributes);
			    "
			  4	[  0]	CALL 	  0	1	2	;  = uv0"unknown".cdef(slot1)
			  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  6	[  0]	TGETS	  0	0	27	; slot0 = uv0"unknown".load
			  7	[  0]	KSTR 	  2		26	; slot2 = "ole32"
			  8	[  0]	CALL 	  0	2	2	; slot0 = uv0"unknown".load(slot1)
			  9	[  0]	USETV	  1		0	; uv1"unknwon" = slot0
			 10	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 11	[  0]	TGETS	  0	0	27	; slot0 = uv0"unknown".load
			 12	[  0]	KSTR 	  2		25	; slot2 = "OpenAL32"
			 13	[  0]	CALL 	  0	2	2	; slot0 = uv0"unknown".load(slot1)
			 14	[  0]	USETV	  2		0	; uv2"unknwon" = slot0
			 15	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 16	[  0]	TGETS	  0	0	24	; slot0 = uv0"unknown".cast
			 17	[  0]	KSTR 	  2		23	; slot2 = "void *"
			 18	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			 19	[  0]	TGETS	  3	3	24	; slot3 = uv0"unknown".cast
			 20	[  0]	KSTR 	  5		22	; slot5 = "uintptr_t"
			 21	[  0]	UGET 	  6		4	; slot6 = uv4"unknwon"
			 22	[  0]	CALL 	  3	0	3	; MULTRES = uv0"unknown".cast(slot4, slot5)
			 23	[  0]	CALLM	  0	2	1	; slot0 = uv0"unknown".cast(slot1, ...MULTRES)
			 24	[  0]	USETV	  3		0	; uv3"unknwon" = slot0
			 25	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
			 26	[  0]	TGETS	  0	0	21	; slot0 = uv2"unknown".alcIsExtensionPresent
			 27	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
			 28	[  0]	KSTR 	  3		20	; slot3 = "ALC_SOFT_reopen_device"
			 29	[  0]	CALL 	  0	2	3	; slot0 = uv2"unknown".alcIsExtensionPresent(slot1, uv3"unknown")
			 30	[  0]	ISNEN	  0		0	; if slot0 ~= 0
			 31	[  0]	JMP  	  0		3	; 	goto 35
			 32	[  0]	GGET 	  0		19	; slot0 = _env["error"]
			 33	[  0]	KSTR 	  2		18	; slot2 = "reopen_extension_unavailable"
			 34	[  0]	CALL 	  0	1	2	;  = error(slot1)
			 35	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
			 36	[  0]	TGETS	  0	0	17	; slot0 = uv2"unknown".alcGetProcAddress
			 37	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
			 38	[  0]	KSTR 	  3		16	; slot3 = "alcReopenDeviceSOFT"
			 39	[  0]	CALL 	  0	2	3	; slot0 = uv2"unknown".alcGetProcAddress(slot1, uv3"unknown")
			 40	[  0]	ISNEP	  0		0	; if slot0 ~= nil
			 41	[  0]	JMP  	  1		3	; 	goto 45
			 42	[  0]	GGET 	  1		19	; slot1 = _env["error"]
			 43	[  0]	KSTR 	  3		15	; slot3 = "reopen_function_unavailable"
			 44	[  0]	CALL 	  1	1	2	;  = error(slot2)
			 45	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			 46	[  0]	TGETS	  1	1	24	; slot1 = uv0"unknown".cast
			 47	[  0]	KSTR 	  3		14	; slot3 = "SbAlcReopenProc"
			 48	[  0]	MOV  	  4		0	; slot4 = slot0
			 49	[  0]	CALL 	  1	2	3	; slot1 = uv0"unknown".cast(slot2, slot3)
			 50	[  0]	USETV	  5		1	; uv5"unknwon" = slot1
			 51	[  0]	UGET 	  1		6	; slot1 = uv6"unknwon"
			 52	[  0]	ISF  	   		1	; if not uv6"unknown"
			 53	[  0]	JMP  	  2		1	; 	goto 55
			 54	[  0]	RET0 	  0		1	; return
			 55	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			 56	[  0]	TGETS	  1	1	13	; slot1 = uv1"unknown".CoInitializeEx
			 57	[  0]	KPRI 	  3		0	; slot3 = nil
			 58	[  0]	KSHORT	  4		0	; slot4 = 0
			 59	[  0]	CALL 	  1	2	3	; slot1 = uv1"unknown".CoInitializeEx(slot2, slot3)
			 60	[  0]	KSHORT	  2		0	; slot2 = 0
			 61	[  0]	ISGE 	  1		2	; if slot1 >= slot2
			 62	[  0]	JMP  	  1		3	; 	goto 66
			 63	[  0]	GGET 	  1		19	; slot1 = _env["error"]
			 64	[  0]	KSTR 	  3		12	; slot3 = "com_init_failed"
			 65	[  0]	CALL 	  1	1	2	;  = error(slot2)
			 66	[  0]	USETP	  7		2	; uv7"unknwon" = true
			 67	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			 68	[  0]	TGETS	  1	1	11	; slot1 = uv0"unknown".new
			 69	[  0]	KSTR 	  3		10	; slot3 = "SbAudioGuid"
			 70	[  0]	TDUP 	  4		9	; slot4 = copy table#k9
			 71	[  0]	TDUP 	  5		8	; slot5 = copy table#k8
			 72	[  0]	TSETB	  5	4	4	; slot4[4] = slot5
			 73	[  0]	CALL 	  1	2	3	; slot1 = uv0"unknown".new(slot2, slot3)
			 74	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			 75	[  0]	TGETS	  2	2	11	; slot2 = uv0"unknown".new
			 76	[  0]	KSTR 	  4		10	; slot4 = "SbAudioGuid"
			 77	[  0]	TDUP 	  5		7	; slot5 = copy table#k7
			 78	[  0]	TDUP 	  6		6	; slot6 = copy table#k6
			 79	[  0]	TSETB	  6	5	4	; slot5[4] = slot6
			 80	[  0]	CALL 	  2	2	3	; slot2 = uv0"unknown".new(slot3, slot4)
			 81	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			 82	[  0]	TGETS	  3	3	11	; slot3 = uv0"unknown".new
			 83	[  0]	KSTR 	  5		5	; slot5 = "void *[1]"
			 84	[  0]	CALL 	  3	2	2	; slot3 = uv0"unknown".new(slot4)
			 85	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
			 86	[  0]	TGETS	  4	4	4	; slot4 = uv1"unknown".CoCreateInstance
			 87	[  0]	MOV  	  6		1	; slot6 = slot1
			 88	[  0]	KPRI 	  7		0	; slot7 = nil
			 89	[  0]	KSHORT	  8		23	; slot8 = 23
			 90	[  0]	MOV  	  9		2	; slot9 = slot2
			 91	[  0]	MOV  	 10		3	; slot10 = uv0"unknown".new
			 92	[  0]	CALL 	  4	2	6	; slot4 = uv1"unknown".CoCreateInstance(slot5, slot6, slot7, slot8, slot9)
			 93	[  0]	KSHORT	  5		0	; slot5 = 0
			 94	[  0]	ISLT 	  4		5	; if slot4 < slot5
			 95	[  0]	JMP  	  4		3	; 	goto 99
			 96	[  0]	TGETB	  4	3	0	; slot4 = uv0"unknown".new[0]
			 97	[  0]	ISNEP	  4		0	; if slot4 ~= nil
			 98	[  0]	JMP  	  4		3	; 	goto 102
			 99	[  0]	GGET 	  4		19	; slot4 = _env["error"]
			100	[  0]	KSTR 	  6		3	; slot6 = "com_enumerator_failed"
			101	[  0]	CALL 	  4	1	2	;  = error(slot5)
			102	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			103	[  0]	TGETS	  4	4	24	; slot4 = uv0"unknown".cast
			104	[  0]	KSTR 	  6		2	; slot6 = "SbAudioEnumerator *"
			105	[  0]	TGETB	  7	3	0	; slot7 = uv0"unknown".new[0]
			106	[  0]	CALL 	  4	2	3	; slot4 = uv0"unknown".cast(slot5, slot6)
			107	[  0]	USETV	  8		4	; uv8"unknwon" = uv0"unknown".cast
			108	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			109	[  0]	TGETS	  4	4	11	; slot4 = uv0"unknown".new
			110	[  0]	KSTR 	  6		1	; slot6 = "SbAudioDevice *[1]"
			111	[  0]	CALL 	  4	2	2	; slot4 = uv0"unknown".new(slot5)
			112	[  0]	USETV	  9		4	; uv9"unknwon" = uv0"unknown".new
			113	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			114	[  0]	TGETS	  4	4	11	; slot4 = uv0"unknown".new
			115	[  0]	KSTR 	  6		0	; slot6 = "uint16_t *[1]"
			116	[  0]	CALL 	  4	2	2	; slot4 = uv0"unknown".new(slot5)
			117	[  0]	USETV	 10		4	; uv10"unknwon" = uv0"unknown".new
			118	[  0]	RET0 	  0		1	; return
		 26	[  0]	CALL 	 20	3	2	; slot20, slot21 = pcall(slot21)
		 27	[  0]	IST  	   		20	; if pcall
		 28	[  0]	JMP  	 22		11	; 	goto 40
		 29	[  0]	MOV  	 22		19	; slot22 = slot19
		 30	[  0]	GGET 	 24		29	; slot24 = _env["tostring"]
		 31	[  0]	MOV  	 26		21	; slot26 = slot21
		 32	[  0]	CALL 	 24	2	2	; slot24 = tostring(slot25)
		 33	[  0]	MOV  	 26		24	; slot26 = tostring
		 34	[  0]	TGETS	 24	24	28	; slot24 = tostring.gsub
		 35	[  0]	KSTR 	 27		27	; slot27 = "^.-:%d+:%s*"
		 36	[  0]	KSTR 	 28		26	; slot28 = ""
		 37	[  0]	CALL 	 24	2	4	; slot24 = tostring.gsub(slot25, tostring, slot27)
		 38	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 39
		 39	[  0]	CALLT	 22		2	; return slot22(slot23)
		 40	[  0]	FNEW 	 22		25	; N/A:0-0: 0 args, 6 upvalues, 7 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	ISF  	   		0	; if not uv0"unknown"
			  3	[  0]	JMP  	  1		17	; 	goto 21
			  4	[  0]	GGET 	  0		12	; slot0 = _env["io"]
			  5	[  0]	TGETS	  0	0	11	; slot0 = io.open
			  6	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  7	[  0]	KSTR 	  3		10	; slot3 = "rb"
			  8	[  0]	CALL 	  0	2	3	; slot0 = io.open(slot1, uv0"unknown")
			  9	[  0]	IST  	   		0	; if slot0
			 10	[  0]	JMP  	  1		2	; 	goto 13
			 11	[  0]	KSTR 	  1		9	; slot1 = ""
			 12	[  0]	RET1 	  1		2	; return slot1
			 13	[  0]	MOV  	  3		0	; slot3 = slot0
			 14	[  0]	TGETS	  1	0	8	; slot1 = slot0.read
			 15	[  0]	KSTR 	  4		7	; slot4 = "*a"
			 16	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.read(slot2, slot3)
			 17	[  0]	MOV  	  4		0	; slot4 = slot0
			 18	[  0]	TGETS	  2	0	6	; slot2 = slot0.close
			 19	[  0]	CALL 	  2	1	2	;  = <unknown table>.close(slot3)
			 20	[  0]	RET1 	  1		2	; return slot1
			 21	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
			 22	[  0]	KPRI 	  1		0	; slot1 = nil
			 23	[  0]	TSETB	  1	0	0	; uv1"unknown"[0] = slot1
			 24	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
			 25	[  0]	TGETS	  0	0	5	; slot0 = uv2"unknown".vtbl
			 26	[  0]	TGETS	  0	0	4	; slot0 = uv2"unknown".vtbl.GetDefaultAudioEndpoint
			 27	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
			 28	[  0]	KSHORT	  3		0	; slot3 = 0
			 29	[  0]	KSHORT	  4		1	; slot4 = 1
			 30	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
			 31	[  0]	CALL 	  0	2	5	; slot0 = uv2"unknown".vtbl.GetDefaultAudioEndpoint(slot1, uv2"unknown", slot3, slot4)
			 32	[  0]	KSHORT	  1		0	; slot1 = 0
			 33	[  0]	ISLT 	  0		1	; if slot0 < slot1
			 34	[  0]	JMP  	  0		4	; 	goto 39
			 35	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
			 36	[  0]	TGETB	  0	0	0	; slot0 = uv1"unknown"[0]
			 37	[  0]	ISNEP	  0		0	; if slot0 ~= nil
			 38	[  0]	JMP  	  0		2	; 	goto 41
			 39	[  0]	KSTR 	  0		9	; slot0 = ""
			 40	[  0]	RET1 	  0		2	; return slot0
			 41	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
			 42	[  0]	TGETB	  0	0	0	; slot0 = uv1"unknown"[0]
			 43	[  0]	KSTR 	  1		9	; slot1 = ""
			 44	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
			 45	[  0]	KPRI 	  3		0	; slot3 = nil
			 46	[  0]	TSETB	  3	2	0	; uv3"unknown"[0] = slot3
			 47	[  0]	TGETS	  2	0	5	; slot2 = slot0.vtbl
			 48	[  0]	TGETS	  2	2	3	; slot2 = <unknown table>.vtbl.GetId
			 49	[  0]	MOV  	  4		0	; slot4 = slot0
			 50	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
			 51	[  0]	CALL 	  2	2	3	; slot2 = <unknown table>.vtbl.GetId(slot3, slot4)
			 52	[  0]	KSHORT	  3		0	; slot3 = 0
			 53	[  0]	ISGT 	  3		2	; if slot3 > slot2
			 54	[  0]	JMP  	  2		28	; 	goto 83
			 55	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
			 56	[  0]	TGETB	  2	2	0	; slot2 = uv3"unknown"[0]
			 57	[  0]	ISEQP	  2		0	; if slot2 == nil
			 58	[  0]	JMP  	  2		24	; 	goto 83
			 59	[  0]	KSHORT	  2		0	; slot2 = 0
			 60	[  0]	KSHORT	  3		256	; slot3 = 256
			 61	[  0]	ISGE 	  2		3	; if slot2 >= slot3
			 62	[  0]	JMP  	  3		8	; 	goto 71
			 63	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
			 64	[  0]	TGETB	  3	3	0	; slot3 = uv3"unknown"[0]
			 65	[  0]	TGETV	  3	3	2	; slot3 = slot3[slot2]
			 66	[  0]	ISEQN	  3		0	; if slot3 == 0
			 67	[  0]	JMP  	  3		3	; 	goto 71
			 68	[  0]	LOOP 	  3		2	; Loop start, exit goto 71
			 69	[  0]	ADDVN	  2	2	1	; slot2 = slot2 + 1
			 70	[  0]	JMP  	  3		-11	; 	goto 60
			 71	[  0]	UGET 	  3		4	; slot3 = uv4"unknwon"
			 72	[  0]	TGETS	  3	3	2	; slot3 = uv4"unknown".string
			 73	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
			 74	[  0]	TGETB	  5	5	0	; slot5 = uv3"unknown"[0]
			 75	[  0]	MULVN	  6	2	2	; slot6 = slot2 * 2
			 76	[  0]	CALL 	  3	2	3	; slot3 = uv4"unknown".string(slot4, slot5)
			 77	[  0]	MOV  	  1		3	; slot1 = slot3
			 78	[  0]	UGET 	  3		5	; slot3 = uv5"unknwon"
			 79	[  0]	TGETS	  3	3	1	; slot3 = uv5"unknown".CoTaskMemFree
			 80	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
			 81	[  0]	TGETB	  5	5	0	; slot5 = uv3"unknown"[0]
			 82	[  0]	CALL 	  3	1	2	;  = uv5"unknown".CoTaskMemFree(slot4)
			 83	[  0]	TGETS	  2	0	5	; slot2 = slot0.vtbl
			 84	[  0]	TGETS	  2	2	0	; slot2 = <unknown table>.vtbl.Release
			 85	[  0]	MOV  	  4		0	; slot4 = slot0
			 86	[  0]	CALL 	  2	1	2	;  = <unknown table>.vtbl.Release(uv5"unknown".CoTaskMemFree)
			 87	[  0]	RET1 	  1		2	; return slot1
		 41	[  0]	TGETS	 23	7	24	; slot23 = require.new
		 42	[  0]	KSTR 	 25		23	; slot25 = "int32_t[1]"
		 43	[  0]	CALL 	 23	2	2	; slot23 = require.new(tostring.gsub)
		 44	[  0]	FNEW 	 24		22	; N/A:0-0: 0 args, 3 upvalues, 6 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	KSHORT	  1		1	; slot1 = 1
			  3	[  0]	TSETB	  1	0	0	; uv0"unknown"[0] = slot1
			  4	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
			  5	[  0]	TGETS	  0	0	0	; slot0 = uv1"unknown".alcGetIntegerv
			  6	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
			  7	[  0]	KSHORT	  3		787	; slot3 = 787
			  8	[  0]	KSHORT	  4		1	; slot4 = 1
			  9	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
			 10	[  0]	CALL 	  0	1	5	;  = uv1"unknown".alcGetIntegerv(slot1, uv2"unknown", slot3, slot4)
			 11	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 12	[  0]	TGETB	  0	0	0	; slot0 = uv0"unknown"[0]
			 13	[  0]	ISEQN	  0		0	; if slot0 == 0
			 14	[  0]	JMP  	  0		2	; 	goto 17
			 15	[  0]	KPRI 	  0		1	; slot0 = false
			 16	[  0]	JMP  	  1		1	; 	goto 18
			 17	[  0]	KPRI 	  0		2	; slot0 = true
			 18	[  0]	RET1 	  0		2	; return slot0
		 45	[  0]	MOV  	 25		22	; slot25 = slot22
		 46	[  0]	CALL 	 25	2	1	; slot25 = slot25()
		 47	[  0]	MOV  	 26		10	; slot26 = slot10
		 48	[  0]	KSTR 	 28		21	; slot28 = "ready"
		 49	[  0]	CALL 	 26	1	2	;  = slot26(slot27)
		 50	[  0]	GGET 	 26		38	; slot26 = _env["love"]
		 51	[  0]	TGETS	 26	26	20	; slot26 = love.timer
		 52	[  0]	TGETS	 26	26	19	; slot26 = love.timer.getTime
		 53	[  0]	CALL 	 26	2	1	; slot26 = love.timer.getTime()
		 54	[  0]	MOV  	 27		25	; slot27 = slot25
		 55	[  0]	MOV  	 28		26	; slot28 = love.timer.getTime
		 56	[  0]	KPRI 	 29		2	; slot29 = true
		 57	[  0]	TNEW 	 30		0	; slot30 = new table( array: 0, dict: 1)
		 58	[  0]	KSHORT	 31		0	; slot31 = 0
		 59	[  0]	KSHORT	 32		0	; slot32 = 0
		 60	[  0]	KSHORT	 33		0	; slot33 = 0
		 61	[  0]	KPRI 	 34		0	; slot34 = nil
		 62	[  0]	KPRI 	 35		1	; slot35 = false
		 63	[  0]	KPRI 	 36		2	; slot36 = true
		 64	[  0]	ISF  	   		36	; if not slot36
		 65	[  0]	JMP  	 37		168	; 	goto 234
		 66	[  0]	LOOP 	 37		167	; Loop start, exit goto 234
		 67	[  0]	MOV  	 39		8	; slot39 = love.thread.getChannel
		 68	[  0]	TGETS	 37	8	18	; slot37 = love.thread.getChannel.demand
		 69	[  0]	MOV  	 40		1	; slot40 = slot1
		 70	[  0]	CALL 	 37	2	3	; slot37 = love.thread.getChannel.demand(slot38, love.thread.getChannel)
		 71	[  0]	ISEQP	 37		0	; if love.thread.getChannel.demand == nil
		 72	[  0]	JMP  	 38		21	; 	goto 94
		 73	[  0]	LOOP 	 38		20	; Loop start, exit goto 94
		 74	[  0]	ISNES	 37		17	; if love.thread.getChannel.demand ~= "stop"
		 75	[  0]	JMP  	 38		2	; 	goto 78
		 76	[  0]	KPRI 	 36		1	; slot36 = false
		 77	[  0]	JMP  	 38		11	; 	goto 89
		 78	[  0]	ISNES	 37		16	; if love.thread.getChannel.demand ~= "gate:1"
		 79	[  0]	JMP  	 38		2	; 	goto 82
		 80	[  0]	KPRI 	 29		2	; slot29 = true
		 81	[  0]	JMP  	 38		7	; 	goto 89
		 82	[  0]	ISNES	 37		15	; if love.thread.getChannel.demand ~= "gate:0"
		 83	[  0]	JMP  	 38		2	; 	goto 86
		 84	[  0]	KPRI 	 29		1	; slot29 = false
		 85	[  0]	JMP  	 38		3	; 	goto 89
		 86	[  0]	ISNES	 37		14	; if love.thread.getChannel.demand ~= "force"
		 87	[  0]	JMP  	 38		1	; 	goto 89
		 88	[  0]	KSTR 	 25		26	; slot25 = ""
		 89	[  0]	MOV  	 40		8	; slot40 = love.thread.getChannel
		 90	[  0]	TGETS	 38	8	13	; slot38 = love.thread.getChannel.pop
		 91	[  0]	CALL 	 38	2	2	; slot38 = love.thread.getChannel.pop(love.thread.getChannel)
		 92	[  0]	MOV  	 37		38	; slot37 = love.thread.getChannel.pop
		 93	[  0]	JMP  	 38		-23	; 	goto 71
		 94	[  0]	IST  	   		36	; if slot36
		 95	[  0]	JMP  	 38		1	; 	goto 97
		 96	[  0]	JMP  	 37		137	; 	goto 234
		 97	[  0]	GGET 	 38		31	; slot38 = _env["pcall"]
		 98	[  0]	FNEW 	 40		12	; N/A:0-0: 0 args, 2 upvalues, 3 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	CALL 	  0	2	1	; slot0 = uv0"unknown"()
			  3	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			  4	[  0]	CALL 	  1	0	1	; MULTRES = uv1"unknown"()
			  5	[  0]	RETM 	  0		1	; return , ...MULTRES
		 99	[  0]	CALL 	 38	4	2	; slot38, slot39, slot40 = pcall(love.thread.getChannel)
		100	[  0]	ISF  	   		38	; if not pcall
		101	[  0]	JMP  	 41		-38	; 	goto 64
		102	[  0]	GGET 	 41		38	; slot41 = _env["love"]
		103	[  0]	TGETS	 41	41	20	; slot41 = love.timer
		104	[  0]	TGETS	 41	41	19	; slot41 = love.timer.getTime
		105	[  0]	CALL 	 41	2	1	; slot41 = love.timer.getTime()
		106	[  0]	MOV  	 26		41	; slot26 = love.timer.getTime
		107	[  0]	MOV  	 41		39	; slot41 = love.thread.getChannel
		108	[  0]	ISF  	   		40	; if not slot40
		109	[  0]	JMP  	 42		2	; 	goto 112
		110	[  0]	KSTR 	 42		11	; slot42 = "|lost"
		111	[  0]	JMP  	 43		1	; 	goto 113
		112	[  0]	KSTR 	 42		26	; slot42 = ""
		113	[  0]	CAT  	 41	41	42	; slot41 = love.thread.getChannel .. slot42
		114	[  0]	ISEQV	 41		27	; if slot41 == slot27
		115	[  0]	JMP  	 42		13	; 	goto 129
		116	[  0]	MOV  	 42		41	; slot42 = slot41
		117	[  0]	MOV  	 28		26	; slot28 = love.timer.getTime
		118	[  0]	MOV  	 27		42	; slot27 = slot42
		119	[  0]	KPRI 	 42		0	; slot42 = nil
		120	[  0]	KSHORT	 33		0	; slot33 = 0
		121	[  0]	MOV  	 34		42	; slot34 = slot42
		122	[  0]	ISNEV	 39		25	; if love.thread.getChannel ~= slot25
		123	[  0]	JMP  	 42		2	; 	goto 126
		124	[  0]	ISF  	   		40	; if not slot40
		125	[  0]	JMP  	 42		3	; 	goto 129
		126	[  0]	MOV  	 42		10	; slot42 = slot10
		127	[  0]	KSTR 	 44		10	; slot44 = "changed"
		128	[  0]	CALL 	 42	1	2	;  = slot42(slot43)
		129	[  0]	ISEQS	 39		26	; if love.thread.getChannel == ""
		130	[  0]	JMP  	 42		4	; 	goto 135
		131	[  0]	ISNEV	 39		25	; if love.thread.getChannel ~= slot25
		132	[  0]	JMP  	 42		4	; 	goto 137
		133	[  0]	MOV  	 42		40	; slot42 = slot40
		134	[  0]	JMP  	 43		3	; 	goto 138
		135	[  0]	KPRI 	 42		1	; slot42 = false
		136	[  0]	JMP  	 43		1	; 	goto 138
		137	[  0]	KPRI 	 42		2	; slot42 = true
		138	[  0]	ISF  	   		42	; if not slot42
		139	[  0]	JMP  	 43		-76	; 	goto 64
		140	[  0]	ISF  	   		29	; if not slot29
		141	[  0]	JMP  	 43		-78	; 	goto 64
		142	[  0]	ISEQV	 34		27	; if slot34 == slot27
		143	[  0]	JMP  	 43		-80	; 	goto 64
		144	[  0]	SUBVV	 43	26	28	; slot43 = love.timer.getTime - love.timer.getTime
		145	[  0]	ISGT 	  2		43	; if slot2 > slot43
		146	[  0]	JMP  	 43		-83	; 	goto 64
		147	[  0]	ISGT 	 31		26	; if slot31 > love.timer.getTime
		148	[  0]	JMP  	 43		-85	; 	goto 64
		149	[  0]	ISGT 	 32		26	; if slot32 > love.timer.getTime
		150	[  0]	JMP  	 43		-87	; 	goto 64
		151	[  0]	TNEW 	 43		0	; slot43 = new table( array: 0, dict: 1)
		152	[  0]	GGET 	 44		9	; slot44 = _env["ipairs"]
		153	[  0]	MOV  	 46		30	; slot46 = slot30
		154	[  0]	CALL 	 44	4	2	; slot44, slot45, slot46 = ipairs(slot45)
		155	[  0]	JMP  	 47		6	; 	goto 162
		156	[  0]	SUBVV	 49	26	48	; slot49 = love.timer.getTime - slot48
		157	[  0]	ISGE 	 49		5	; if slot49 >= slot5
		158	[  0]	JMP  	 49		3	; 	goto 162
		159	[  0]	LEN  	 49		43	; slot49 = #slot43
		160	[  0]	ADDVN	 49	49	0	; slot49 = slot49 + 1
		161	[  0]	TSETV	 48	43	49	; slot43[slot49] = slot48
		162	[  0]	ITERC	 47	3	3	; slot47, slot48, slot49 = ipairs, slot45, slot46; slot47, slot48 = ipairs(slot45, slot46)
		163	[  0]	ITERL	 47		-8	; slot46 = slot47; if slot47 != nil goto 156
		164	[  0]	MOV  	 30		43	; slot30 = slot43
		165	[  0]	LEN  	 44		30	; slot44 = #slot30
		166	[  0]	ISGT 	  4		44	; if slot4 > slot44
		167	[  0]	JMP  	 44		9	; 	goto 177
		168	[  0]	IST  	   		35	; if slot35
		169	[  0]	JMP  	 44		4	; 	goto 174
		170	[  0]	KPRI 	 35		2	; slot35 = true
		171	[  0]	MOV  	 44		10	; slot44 = slot10
		172	[  0]	KSTR 	 46		8	; slot46 = "throttled"
		173	[  0]	CALL 	 44	1	2	;  = slot44(slot45)
		174	[  0]	TGETB	 44	30	1	; slot44 = slot30[1]
		175	[  0]	ADDVV	 31	44	5	; slot31 = slot44 + slot5
		176	[  0]	JMP  	 44		-113	; 	goto 64
		177	[  0]	KPRI 	 35		1	; slot35 = false
		178	[  0]	GGET 	 44		38	; slot44 = _env["love"]
		179	[  0]	TGETS	 44	44	20	; slot44 = love.timer
		180	[  0]	TGETS	 44	44	19	; slot44 = love.timer.getTime
		181	[  0]	CALL 	 44	2	1	; slot44 = love.timer.getTime()
		182	[  0]	GGET 	 45		31	; slot45 = _env["pcall"]
		183	[  0]	MOV  	 47		15	; slot47 = slot15
		184	[  0]	MOV  	 48		16	; slot48 = slot16
		185	[  0]	KNIL 	 49		50	; slot49, slot50 = nil
		186	[  0]	CALL 	 45	3	5	; slot45, slot46 = pcall(slot46, slot47, slot48, slot49)
		187	[  0]	GGET 	 47		38	; slot47 = _env["love"]
		188	[  0]	TGETS	 47	47	20	; slot47 = love.timer
		189	[  0]	TGETS	 47	47	19	; slot47 = love.timer.getTime
		190	[  0]	CALL 	 47	2	1	; slot47 = love.timer.getTime()
		191	[  0]	MOV  	 26		47	; slot26 = love.timer.getTime
		192	[  0]	LEN  	 47		30	; slot47 = #slot30
		193	[  0]	ADDVN	 47	47	0	; slot47 = slot47 + 1
		194	[  0]	TSETV	 26	30	47	; slot30[slot47] = love.timer.getTime
		195	[  0]	ADDVV	 31	26	3	; slot31 = love.timer.getTime + slot3
		196	[  0]	ISF  	   		45	; if not pcall
		197	[  0]	JMP  	 47		15	; 	goto 213
		198	[  0]	ISEQN	 46		1	; if slot46 == 0
		199	[  0]	JMP  	 47		13	; 	goto 213
		200	[  0]	MOV  	 47		39	; slot47 = love.thread.getChannel
		201	[  0]	KSHORT	 48		0	; slot48 = 0
		202	[  0]	KPRI 	 34		0	; slot34 = nil
		203	[  0]	MOV  	 33		48	; slot33 = slot48
		204	[  0]	MOV  	 25		47	; slot25 = love.thread.getChannel
		205	[  0]	MOV  	 47		39	; slot47 = love.thread.getChannel
		206	[  0]	MOV  	 28		26	; slot28 = love.timer.getTime
		207	[  0]	MOV  	 27		47	; slot27 = love.thread.getChannel
		208	[  0]	MOV  	 47		10	; slot47 = slot10
		209	[  0]	KSTR 	 49		7	; slot49 = "reopened"
		210	[  0]	SUBVV	 50	26	44	; slot50 = love.timer.getTime - love.timer.getTime
		211	[  0]	CALL 	 47	1	3	;  = slot47(slot48, slot49)
		212	[  0]	JMP  	 47		-149	; 	goto 64
		213	[  0]	ADDVN	 33	33	0	; slot33 = slot33 + 1
		214	[  0]	KSHORT	 47		3	; slot47 = 3
		215	[  0]	ISGT 	 47		33	; if slot47 > slot33
		216	[  0]	JMP  	 47		8	; 	goto 225
		217	[  0]	MOV  	 47		27	; slot47 = love.thread.getChannel
		218	[  0]	KSHORT	 33		0	; slot33 = 0
		219	[  0]	MOV  	 34		47	; slot34 = love.thread.getChannel
		220	[  0]	MOV  	 47		10	; slot47 = slot10
		221	[  0]	KSTR 	 49		6	; slot49 = "failed"
		222	[  0]	KSTR 	 50		5	; slot50 = "reopen_gave_up"
		223	[  0]	CALL 	 47	1	3	;  = slot47(slot48, slot49)
		224	[  0]	JMP  	 47		-161	; 	goto 64
		225	[  0]	SUBVN	 47	33	0	; slot47 = slot33 - 1
		226	[  0]	KSHORT	 48		2	; slot48 = 2
		227	[  0]	POW  	 47	48	47	; slot47 = slot48 ^ slot47 (pow)
		228	[  0]	ADDVV	 32	26	47	; slot32 = love.timer.getTime + slot47
		229	[  0]	MOV  	 47		10	; slot47 = slot10
		230	[  0]	KSTR 	 49		6	; slot49 = "failed"
		231	[  0]	KSTR 	 50		4	; slot50 = "reopen_failed"
		232	[  0]	CALL 	 47	1	3	;  = slot47(slot48, slot49)
		233	[  0]	JMP  	 37		-170	; 	goto 64
		234	[  0]	ISEQP	 13		0	; if slot13 == nil
		235	[  0]	JMP  	 37		4	; 	goto 240
		236	[  0]	TGETS	 37	13	3	; slot37 = slot13.vtbl
		237	[  0]	TGETS	 37	37	2	; slot37 = <unknown table>.vtbl.Release
		238	[  0]	MOV  	 39		13	; slot39 = slot13
		239	[  0]	CALL 	 37	1	2	;  = <unknown table>.vtbl.Release(pcall)
		240	[  0]	ISF  	   		11	; if not slot11
		241	[  0]	JMP  	 37		2	; 	goto 244
		242	[  0]	TGETS	 37	12	1	; slot37 = slot12.CoUninitialize
		243	[  0]	CALL 	 37	1	1	;  = <unknown table>.CoUninitialize()
		244	[  0]	MOV  	 37		10	; slot37 = slot10
		245	[  0]	KSTR 	 39		0	; slot39 = "stopped"
		246	[  0]	CALL 	 37	1	2	;  = slot37(pcall)
		247	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 248
		248	[  0]	RET0 	  0		1	; return
	  8	[  0]	KNIL 	  7		10	; slot7, slot8, slot9, slot10 = nil
	  9	[  0]	KPRI 	 11		2	; slot11 = true
	 10	[  0]	KSHORT	 12		0	; slot12 = 0
	 11	[  0]	KPRI 	 13		1	; slot13 = false
	 12	[  0]	FNEW 	 14		19	; N/A:0-0: 0 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		3	; slot0 = _env["love"]
		  2	[  0]	ISF  	   		0	; if not love
		  3	[  0]	JMP  	  1		18	; 	goto 22
		  4	[  0]	GGET 	  0		3	; slot0 = _env["love"]
		  5	[  0]	TGETS	  0	0	2	; slot0 = love.system
		  6	[  0]	ISF  	   		0	; if not love.system
		  7	[  0]	JMP  	  1		14	; 	goto 22
		  8	[  0]	GGET 	  0		3	; slot0 = _env["love"]
		  9	[  0]	TGETS	  0	0	2	; slot0 = love.system
		 10	[  0]	TGETS	  0	0	1	; slot0 = love.system.getOS
		 11	[  0]	ISF  	   		0	; if not love.system.getOS
		 12	[  0]	JMP  	  1		9	; 	goto 22
		 13	[  0]	GGET 	  0		3	; slot0 = _env["love"]
		 14	[  0]	TGETS	  0	0	2	; slot0 = love.system
		 15	[  0]	TGETS	  0	0	1	; slot0 = love.system.getOS
		 16	[  0]	CALL 	  0	2	1	; slot0 = love.system.getOS()
		 17	[  0]	ISEQS	  0		0	; if slot0 == "Windows"
		 18	[  0]	JMP  	  0		2	; 	goto 21
		 19	[  0]	KPRI 	  0		1	; slot0 = false
		 20	[  0]	JMP  	  1		1	; 	goto 22
		 21	[  0]	KPRI 	  0		2	; slot0 = true
		 22	[  0]	RET1 	  0		2	; return slot0
	 13	[  0]	FNEW 	 15		18	; N/A:0-0: 1 args, 1 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	KPRI 	  2		2	; slot2 = true
		  3	[  0]	TSETS	  2	1	2	; uv0"unknown".initialized = slot2
		  4	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  5	[  0]	KPRI 	  2		1	; slot2 = false
		  6	[  0]	TSETS	  2	1	1	; uv0"unknown".supported = slot2
		  7	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  8	[  0]	TSETS	  0	1	0	; uv0"unknown".lastError = slot0
		  9	[  0]	KPRI 	  1		1	; slot1 = false
		 10	[  0]	RET1 	  1		2	; return slot1
	 14	[  0]	FNEW 	 16		17	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		2	; slot1 = _env["RuntimeDiagnostics"]
		  2	[  0]	ISF  	   		1	; if not RuntimeDiagnostics
		  3	[  0]	JMP  	  2		9	; 	goto 13
		  4	[  0]	GGET 	  1		2	; slot1 = _env["RuntimeDiagnostics"]
		  5	[  0]	TGETS	  1	1	1	; slot1 = RuntimeDiagnostics.note
		  6	[  0]	ISF  	   		1	; if not RuntimeDiagnostics.note
		  7	[  0]	JMP  	  2		5	; 	goto 13
		  8	[  0]	GGET 	  1		0	; slot1 = _env["pcall"]
		  9	[  0]	GGET 	  3		2	; slot3 = _env["RuntimeDiagnostics"]
		 10	[  0]	TGETS	  3	3	1	; slot3 = RuntimeDiagnostics.note
		 11	[  0]	MOV  	  4		0	; slot4 = slot0
		 12	[  0]	CALL 	  1	1	3	;  = pcall(slot2, RuntimeDiagnostics.note)
		 13	[  0]	RET0 	  0		1	; return
	 15	[  0]	FNEW 	 17		16	; N/A:0-0: 1 args, 2 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	21	; slot1 = slot0.kind
		  2	[  0]	ISNES	  1		20	; if <unknown table>.kind ~= "changed"
		  3	[  0]	JMP  	  2		9	; 	goto 13
		  4	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  5	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  6	[  0]	TGETS	  3	3	19	; slot3 = uv0"unknown".eventCount
		  7	[  0]	ADDVN	  3	3	0	; slot3 = uv0"unknown".eventCount + 1
		  8	[  0]	TSETS	  3	2	19	; uv0"unknown".eventCount = slot3
		  9	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 10	[  0]	KPRI 	  3		2	; slot3 = true
		 11	[  0]	TSETS	  3	2	18	; uv0"unknown".pending = slot3
		 12	[  0]	JMP  	  2		83	; 	goto 96
		 13	[  0]	ISNES	  1		17	; if <unknown table>.kind ~= "reopened"
		 14	[  0]	JMP  	  2		34	; 	goto 49
		 15	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 16	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 17	[  0]	TGETS	  3	3	16	; slot3 = uv0"unknown".reopenCount
		 18	[  0]	ADDVN	  3	3	0	; slot3 = uv0"unknown".reopenCount + 1
		 19	[  0]	TSETS	  3	2	16	; uv0"unknown".reopenCount = slot3
		 20	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 21	[  0]	GGET 	  3		14	; slot3 = _env["tonumber"]
		 22	[  0]	TGETS	  5	0	13	; slot5 = slot0.detail
		 23	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		 24	[  0]	TSETS	  3	2	15	; uv0"unknown".lastReopenSeconds = tonumber
		 25	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 26	[  0]	KPRI 	  3		1	; slot3 = false
		 27	[  0]	TSETS	  3	2	18	; uv0"unknown".pending = slot3
		 28	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 29	[  0]	KPRI 	  3		1	; slot3 = false
		 30	[  0]	TSETS	  3	2	12	; uv0"unknown".throttled = slot3
		 31	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 32	[  0]	KPRI 	  3		0	; slot3 = nil
		 33	[  0]	TSETS	  3	2	11	; uv0"unknown".lastError = slot3
		 34	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 35	[  0]	KSTR 	  4		10	; slot4 = "audio output followed the Windows default (reopen %d, %.0f ms)"
		 36	[  0]	MOV  	  6		4	; slot6 = slot4
		 37	[  0]	TGETS	  4	4	9	; slot4 = slot4.format
		 38	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 39	[  0]	TGETS	  7	7	16	; slot7 = uv0"unknown".reopenCount
		 40	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 41	[  0]	TGETS	  8	8	15	; slot8 = uv0"unknown".lastReopenSeconds
		 42	[  0]	IST  	   		8	; if uv0"unknown".lastReopenSeconds
		 43	[  0]	JMP  	  9		1	; 	goto 45
		 44	[  0]	KSHORT	  8		0	; slot8 = 0
		 45	[  0]	MULVN	  8	8	1	; slot8 = slot8 * 1000
		 46	[  0]	CALL 	  4	0	4	; MULTRES = <unknown table>.format(<unknown table>.detail, slot6, uv0"unknown".reopenCount)
		 47	[  0]	CALLM	  2	1	0	;  = uv1"unknown"(, ...MULTRES)
		 48	[  0]	JMP  	  2		47	; 	goto 96
		 49	[  0]	ISNES	  1		8	; if <unknown table>.kind ~= "failed"
		 50	[  0]	JMP  	  2		22	; 	goto 73
		 51	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 52	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 53	[  0]	TGETS	  3	3	7	; slot3 = uv0"unknown".failureCount
		 54	[  0]	ADDVN	  3	3	0	; slot3 = uv0"unknown".failureCount + 1
		 55	[  0]	TSETS	  3	2	7	; uv0"unknown".failureCount = slot3
		 56	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 57	[  0]	TGETS	  3	0	13	; slot3 = slot0.detail
		 58	[  0]	TSETS	  3	2	11	; uv0"unknown".lastError = <unknown table>.detail
		 59	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 60	[  0]	KSTR 	  4		6	; slot4 = "audio output reopen failed: "
		 61	[  0]	GGET 	  5		5	; slot5 = _env["tostring"]
		 62	[  0]	TGETS	  7	0	13	; slot7 = slot0.detail
		 63	[  0]	CALL 	  5	2	2	; slot5 = tostring(slot6)
		 64	[  0]	CAT  	  4	4	5	; slot4 = slot4 .. tostring
		 65	[  0]	CALL 	  2	1	2	;  = uv1"unknown"(<unknown table>.detail)
		 66	[  0]	TGETS	  2	0	13	; slot2 = slot0.detail
		 67	[  0]	ISNES	  2		4	; if <unknown table>.detail ~= "reopen_gave_up"
		 68	[  0]	JMP  	  2		27	; 	goto 96
		 69	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 70	[  0]	KPRI 	  3		1	; slot3 = false
		 71	[  0]	TSETS	  3	2	18	; uv0"unknown".pending = slot3
		 72	[  0]	JMP  	  2		23	; 	goto 96
		 73	[  0]	ISNES	  1		12	; if <unknown table>.kind ~= "throttled"
		 74	[  0]	JMP  	  2		10	; 	goto 85
		 75	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 76	[  0]	KPRI 	  3		2	; slot3 = true
		 77	[  0]	TSETS	  3	2	12	; uv0"unknown".throttled = slot3
		 78	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 79	[  0]	KSTR 	  3		3	; slot3 = "reopen_throttled"
		 80	[  0]	TSETS	  3	2	11	; uv0"unknown".lastError = slot3
		 81	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 82	[  0]	KSTR 	  4		2	; slot4 = "audio output reopen throttled"
		 83	[  0]	CALL 	  2	1	2	;  = uv1"unknown"(slot3)
		 84	[  0]	JMP  	  2		11	; 	goto 96
		 85	[  0]	ISNES	  1		1	; if <unknown table>.kind ~= "unsupported"
		 86	[  0]	JMP  	  2		9	; 	goto 96
		 87	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 88	[  0]	KPRI 	  3		1	; slot3 = false
		 89	[  0]	TSETS	  3	2	0	; uv0"unknown".supported = slot3
		 90	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 91	[  0]	KPRI 	  3		1	; slot3 = false
		 92	[  0]	TSETS	  3	2	18	; uv0"unknown".pending = slot3
		 93	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 94	[  0]	TGETS	  3	0	13	; slot3 = slot0.detail
		 95	[  0]	TSETS	  3	2	11	; uv0"unknown".lastError = <unknown table>.detail
		 96	[  0]	RET0 	  0		1	; return
	 16	[  0]	FNEW 	 18		15	; N/A:0-0: 0 args, 4 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	IST  	   		0	; if uv0"unknown"
		  3	[  0]	JMP  	  0		1	; 	goto 5
		  4	[  0]	RET0 	  0		1	; return
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	MOV  	  2		0	; slot2 = uv0"unknown"
		  7	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".pop
		  8	[  0]	CALL 	  0	2	2	; slot0 = uv0"unknown".pop(slot1)
		  9	[  0]	ISEQP	  0		0	; if slot0 == nil
		 10	[  0]	JMP  	  1		15	; 	goto 26
		 11	[  0]	LOOP 	  1		14	; Loop start, exit goto 26
		 12	[  0]	GGET 	  1		7	; slot1 = _env["type"]
		 13	[  0]	MOV  	  3		0	; slot3 = slot0
		 14	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		 15	[  0]	ISNES	  1		6	; if slot1 ~= "table"
		 16	[  0]	JMP  	  1		3	; 	goto 20
		 17	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 18	[  0]	MOV  	  3		0	; slot3 = slot0
		 19	[  0]	CALL 	  1	1	2	;  = uv1"unknown"(slot2)
		 20	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 21	[  0]	MOV  	  3		1	; slot3 = uv0"unknown"
		 22	[  0]	TGETS	  1	1	8	; slot1 = uv0"unknown".pop
		 23	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown".pop(slot2)
		 24	[  0]	MOV  	  0		1	; slot0 = slot1
		 25	[  0]	JMP  	  1		-17	; 	goto 9
		 26	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 27	[  0]	ISF  	   		1	; if not uv2"unknown"
		 28	[  0]	JMP  	  2		26	; 	goto 55
		 29	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 30	[  0]	MOV  	  3		1	; slot3 = uv2"unknown"
		 31	[  0]	TGETS	  1	1	5	; slot1 = uv2"unknown".isRunning
		 32	[  0]	CALL 	  1	2	2	; slot1 = uv2"unknown".isRunning(slot2)
		 33	[  0]	IST  	   		1	; if slot1
		 34	[  0]	JMP  	  1		20	; 	goto 55
		 35	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 36	[  0]	MOV  	  3		1	; slot3 = uv2"unknown"
		 37	[  0]	TGETS	  1	1	4	; slot1 = uv2"unknown".getError
		 38	[  0]	CALL 	  1	2	2	; slot1 = uv2"unknown".getError(slot2)
		 39	[  0]	ISF  	   		1	; if not slot1
		 40	[  0]	JMP  	  2		11	; 	goto 52
		 41	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 42	[  0]	TGETS	  2	2	3	; slot2 = uv3"unknown".supported
		 43	[  0]	ISF  	   		2	; if not uv3"unknown".supported
		 44	[  0]	JMP  	  3		7	; 	goto 52
		 45	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 46	[  0]	KSTR 	  3		1	; slot3 = "worker_error: "
		 47	[  0]	GGET 	  4		0	; slot4 = _env["tostring"]
		 48	[  0]	MOV  	  6		1	; slot6 = slot1
		 49	[  0]	CALL 	  4	2	2	; slot4 = tostring(slot5)
		 50	[  0]	CAT  	  3	3	4	; slot3 = slot3 .. tostring
		 51	[  0]	TSETS	  3	2	2	; uv3"unknown".lastError = slot3
		 52	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 53	[  0]	KPRI 	  3		1	; slot3 = false
		 54	[  0]	TSETS	  3	2	3	; uv3"unknown".supported = slot3
		 55	[  0]	RET0 	  0		1	; return
	 17	[  0]	FNEW 	 19		13	; N/A:0-0: 0 args, 11 upvalues, 19 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	46	; slot0 = uv0"unknown".initialized
		  3	[  0]	ISF  	   		0	; if not uv0"unknown".initialized
		  4	[  0]	JMP  	  1		3	; 	goto 8
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	45	; slot0 = uv0"unknown".supported
		  7	[  0]	UCLO 	  0		173	; nil uvs >= r0; goto 181
		  8	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  9	[  0]	CALL 	  0	2	1	; slot0 = uv1"unknown"()
		 10	[  0]	IST  	   		0	; if slot0
		 11	[  0]	JMP  	  0		8	; 	goto 20
		 12	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 13	[  0]	KPRI 	  1		2	; slot1 = true
		 14	[  0]	TSETS	  1	0	46	; uv0"unknown".initialized = slot1
		 15	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 16	[  0]	KSTR 	  1		43	; slot1 = "not_windows"
		 17	[  0]	TSETS	  1	0	44	; uv0"unknown".lastError = slot1
		 18	[  0]	KPRI 	  0		1	; slot0 = false
		 19	[  0]	UCLO 	  0		162	; nil uvs >= r0; goto 182
		 20	[  0]	GGET 	  0		42	; slot0 = _env["os"]
		 21	[  0]	TGETS	  0	0	41	; slot0 = os.getenv
		 22	[  0]	KSTR 	  2		40	; slot2 = "SLOTBOUND_AUDIO_FOLLOW"
		 23	[  0]	CALL 	  0	2	2	; slot0 = os.getenv(slot1)
		 24	[  0]	ISNES	  0		39	; if slot0 ~= "0"
		 25	[  0]	JMP  	  0		6	; 	goto 32
		 26	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 27	[  0]	KPRI 	  1		2	; slot1 = true
		 28	[  0]	TSETS	  1	0	38	; uv0"unknown".routingDisabled = slot1
		 29	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
		 30	[  0]	KSTR 	  2		37	; slot2 = "disabled_by_environment"
		 31	[  0]	UCLO 	  0		151	; nil uvs >= r0; goto 183
		 32	[  0]	GGET 	  0		36	; slot0 = _env["love"]
		 33	[  0]	TGETS	  0	0	35	; slot0 = love.thread
		 34	[  0]	ISF  	   		0	; if not love.thread
		 35	[  0]	JMP  	  1		8	; 	goto 44
		 36	[  0]	GGET 	  0		36	; slot0 = _env["love"]
		 37	[  0]	TGETS	  0	0	34	; slot0 = love.filesystem
		 38	[  0]	ISF  	   		0	; if not love.filesystem
		 39	[  0]	JMP  	  1		4	; 	goto 44
		 40	[  0]	GGET 	  0		36	; slot0 = _env["love"]
		 41	[  0]	TGETS	  0	0	33	; slot0 = love.audio
		 42	[  0]	IST  	   		0	; if love.audio
		 43	[  0]	JMP  	  0		3	; 	goto 47
		 44	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
		 45	[  0]	KSTR 	  2		32	; slot2 = "love_modules_unavailable"
		 46	[  0]	UCLO 	  0		137	; nil uvs >= r0; goto 184
		 47	[  0]	KPRI 	  0		0	; slot0 = nil
		 48	[  0]	GGET 	  1		31	; slot1 = _env["pcall"]
		 49	[  0]	GGET 	  3		30	; slot3 = _env["require"]
		 50	[  0]	KSTR 	  4		29	; slot4 = "ffi"
		 51	[  0]	CALL 	  1	3	3	; slot1, slot2 = pcall(slot2, require)
		 52	[  0]	USETV	  3		2	; uv3"unknwon" = slot2
		 53	[  0]	MOV  	  0		1	; slot0 = slot1
		 54	[  0]	ISF  	   		0	; if not slot0
		 55	[  0]	JMP  	  1		3	; 	goto 59
		 56	[  0]	UGET 	  1		3	; slot1 = uv3"unknwon"
		 57	[  0]	IST  	   		1	; if uv3"unknown"
		 58	[  0]	JMP  	  1		3	; 	goto 62
		 59	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 60	[  0]	KSTR 	  3		28	; slot3 = "ffi_unavailable"
		 61	[  0]	UCLO 	  0		123	; nil uvs >= r0; goto 185
		 62	[  0]	GGET 	  1		31	; slot1 = _env["pcall"]
		 63	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
		 64	[  0]	TGETS	  3	3	27	; slot3 = uv3"unknown".cdef
		 65	[  0]	KSTR 	  4		26	; slot4 = "    void *alcGetCurrentContext(void);
		    void *alcGetContextsDevice(void *context);
		    char alcIsExtensionPresent(void *device, const char *name);
		  "
		 66	[  0]	CALL 	  1	2	3	; slot1 = pcall(slot2, uv3"unknown".cdef)
		 67	[  0]	IST  	   		1	; if slot1
		 68	[  0]	JMP  	  2		3	; 	goto 72
		 69	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 70	[  0]	KSTR 	  4		25	; slot4 = "ffi_cdef_failed"
		 71	[  0]	UCLO 	  0		114	; nil uvs >= r0; goto 186
		 72	[  0]	GGET 	  2		31	; slot2 = _env["pcall"]
		 73	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 74	[  0]	TGETS	  4	4	24	; slot4 = uv3"unknown".load
		 75	[  0]	KSTR 	  5		23	; slot5 = "OpenAL32"
		 76	[  0]	CALL 	  2	3	3	; slot2, slot3 = pcall(slot3, uv3"unknown".load)
		 77	[  0]	ISF  	   		2	; if not slot2
		 78	[  0]	JMP  	  4		2	; 	goto 81
		 79	[  0]	IST  	   		3	; if slot3
		 80	[  0]	JMP  	  4		3	; 	goto 84
		 81	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 82	[  0]	KSTR 	  6		22	; slot6 = "openal_load_failed"
		 83	[  0]	UCLO 	  0		103	; nil uvs >= r0; goto 187
		 84	[  0]	TGETS	  4	3	21	; slot4 = slot3.alcGetCurrentContext
		 85	[  0]	CALL 	  4	2	1	; slot4 = <unknown table>.alcGetCurrentContext()
		 86	[  0]	ISNEP	  4		0	; if <unknown table>.alcGetCurrentContext ~= nil
		 87	[  0]	JMP  	  5		3	; 	goto 91
		 88	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 89	[  0]	KSTR 	  7		20	; slot7 = "no_audio_context"
		 90	[  0]	UCLO 	  0		97	; nil uvs >= r0; goto 188
		 91	[  0]	TGETS	  5	3	19	; slot5 = slot3.alcGetContextsDevice
		 92	[  0]	MOV  	  7		4	; slot7 = <unknown table>.alcGetCurrentContext
		 93	[  0]	CALL 	  5	2	2	; slot5 = <unknown table>.alcGetContextsDevice(slot6)
		 94	[  0]	ISNEP	  5		0	; if <unknown table>.alcGetContextsDevice ~= nil
		 95	[  0]	JMP  	  6		3	; 	goto 99
		 96	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 97	[  0]	KSTR 	  8		18	; slot8 = "no_audio_device"
		 98	[  0]	UCLO 	  0		90	; nil uvs >= r0; goto 189
		 99	[  0]	TGETS	  6	3	17	; slot6 = slot3.alcIsExtensionPresent
		100	[  0]	MOV  	  8		5	; slot8 = <unknown table>.alcGetContextsDevice
		101	[  0]	KSTR 	  9		16	; slot9 = "ALC_SOFT_reopen_device"
		102	[  0]	CALL 	  6	2	3	; slot6 = <unknown table>.alcIsExtensionPresent(<unknown table>.alcGetCurrentContext, <unknown table>.alcGetContextsDevice)
		103	[  0]	ISNEN	  6		0	; if <unknown table>.alcIsExtensionPresent ~= 0
		104	[  0]	JMP  	  6		3	; 	goto 108
		105	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		106	[  0]	KSTR 	  8		15	; slot8 = "reopen_extension_unavailable"
		107	[  0]	UCLO 	  0		82	; nil uvs >= r0; goto 190
		108	[  0]	GGET 	  6		31	; slot6 = _env["pcall"]
		109	[  0]	FNEW 	  8		14	; N/A:0-0: 0 args, 1 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  0		7	; slot0 = _env["love"]
			  2	[  0]	TGETS	  0	0	6	; slot0 = love.filesystem
			  3	[  0]	TGETS	  0	0	5	; slot0 = love.filesystem.newFileData
			  4	[  0]	GGET 	  2		4	; slot2 = _env["string"]
			  5	[  0]	TGETS	  2	2	3	; slot2 = string.dump
			  6	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			  7	[  0]	CALL 	  2	2	2	; slot2 = string.dump(slot3)
			  8	[  0]	KSTR 	  3		2	; slot3 = "audio_route_worker.lua"
			  9	[  0]	CALL 	  0	2	3	; slot0 = love.filesystem.newFileData(slot1, slot2)
			 10	[  0]	GGET 	  1		7	; slot1 = _env["love"]
			 11	[  0]	TGETS	  1	1	1	; slot1 = love.thread
			 12	[  0]	TGETS	  1	1	0	; slot1 = love.thread.newThread
			 13	[  0]	MOV  	  3		0	; slot3 = slot0
			 14	[  0]	CALLT	  1		2	; return love.thread.newThread(slot2)
		110	[  0]	CALL 	  6	3	2	; slot6, slot7 = pcall(<unknown table>.alcGetCurrentContext)
		111	[  0]	ISF  	   		6	; if not pcall
		112	[  0]	JMP  	  8		2	; 	goto 115
		113	[  0]	IST  	   		7	; if <unknown table>.alcGetCurrentContext
		114	[  0]	JMP  	  8		4	; 	goto 119
		115	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
		116	[  0]	KSTR 	 10		13	; slot10 = "worker_create_failed"
		117	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 118
		118	[  0]	CALLT	  8		2	; return uv2"unknown"(slot9)
		119	[  0]	GGET 	  8		36	; slot8 = _env["love"]
		120	[  0]	TGETS	  8	8	35	; slot8 = love.thread
		121	[  0]	TGETS	  8	8	12	; slot8 = love.thread.getChannel
		122	[  0]	UGET 	 10		6	; slot10 = uv6"unknwon"
		123	[  0]	CALL 	  8	2	2	; slot8 = love.thread.getChannel(slot9)
		124	[  0]	USETV	  5		8	; uv5"unknwon" = love.thread.getChannel
		125	[  0]	GGET 	  8		36	; slot8 = _env["love"]
		126	[  0]	TGETS	  8	8	35	; slot8 = love.thread
		127	[  0]	TGETS	  8	8	12	; slot8 = love.thread.getChannel
		128	[  0]	UGET 	 10		8	; slot10 = uv8"unknwon"
		129	[  0]	CALL 	  8	2	2	; slot8 = love.thread.getChannel(slot9)
		130	[  0]	USETV	  7		8	; uv7"unknwon" = love.thread.getChannel
		131	[  0]	UGET 	  8		5	; slot8 = uv5"unknwon"
		132	[  0]	MOV  	 10		8	; slot10 = uv5"unknown"
		133	[  0]	TGETS	  8	8	11	; slot8 = uv5"unknown".clear
		134	[  0]	CALL 	  8	1	2	;  = uv5"unknown".clear(slot9)
		135	[  0]	UGET 	  8		7	; slot8 = uv7"unknwon"
		136	[  0]	MOV  	 10		8	; slot10 = uv7"unknown"
		137	[  0]	TGETS	  8	8	11	; slot8 = uv7"unknown".clear
		138	[  0]	CALL 	  8	1	2	;  = uv7"unknown".clear(slot9)
		139	[  0]	GGET 	  8		31	; slot8 = _env["pcall"]
		140	[  0]	TGETS	 10	7	10	; slot10 = <unknown table>.alcGetCurrentContext.start
		141	[  0]	MOV  	 11		7	; slot11 = <unknown table>.alcGetCurrentContext
		142	[  0]	GGET 	 12		9	; slot12 = _env["tonumber"]
		143	[  0]	UGET 	 14		3	; slot14 = uv3"unknwon"
		144	[  0]	TGETS	 14	14	8	; slot14 = uv3"unknown".cast
		145	[  0]	KSTR 	 16		7	; slot16 = "uintptr_t"
		146	[  0]	MOV  	 17		5	; slot17 = <unknown table>.alcGetContextsDevice
		147	[  0]	CALL 	 14	0	3	; MULTRES = uv3"unknown".cast(slot15, slot16)
		148	[  0]	CALLM	 12	2	0	; slot12 = tonumber(, ...MULTRES)
		149	[  0]	UGET 	 13		9	; slot13 = uv9"unknwon"
		150	[  0]	TGETS	 13	13	6	; slot13 = uv9"unknown".poll
		151	[  0]	UGET 	 14		9	; slot14 = uv9"unknwon"
		152	[  0]	TGETS	 14	14	5	; slot14 = uv9"unknown".settle
		153	[  0]	UGET 	 15		9	; slot15 = uv9"unknwon"
		154	[  0]	TGETS	 15	15	4	; slot15 = uv9"unknown".cooldown
		155	[  0]	UGET 	 16		9	; slot16 = uv9"unknwon"
		156	[  0]	TGETS	 16	16	3	; slot16 = uv9"unknown".budgetCount
		157	[  0]	UGET 	 17		9	; slot17 = uv9"unknwon"
		158	[  0]	TGETS	 17	17	2	; slot17 = uv9"unknown".budgetWindow
		159	[  0]	UGET 	 18		9	; slot18 = uv9"unknwon"
		160	[  0]	TGETS	 18	18	1	; slot18 = uv9"unknown".idFile
		161	[  0]	CALL 	  8	2	10	; slot8 = pcall(slot9, <unknown table>.alcGetCurrentContext.start, <unknown table>.alcGetCurrentContext, tonumber, uv9"unknown".poll, uv9"unknown".settle, uv9"unknown".cooldown, uv9"unknown".budgetCount, uv9"unknown".budgetWindow)
		162	[  0]	IST  	   		8	; if slot8
		163	[  0]	JMP  	  9		4	; 	goto 168
		164	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
		165	[  0]	KSTR 	 11		0	; slot11 = "worker_start_failed"
		166	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 167
		167	[  0]	CALLT	  9		2	; return uv2"unknown"(slot10)
		168	[  0]	USETV	 10		7	; uv10"unknwon" = <unknown table>.alcGetCurrentContext
		169	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		170	[  0]	KPRI 	 10		2	; slot10 = true
		171	[  0]	TSETS	 10	9	46	; uv0"unknown".initialized = slot10
		172	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		173	[  0]	KPRI 	 10		2	; slot10 = true
		174	[  0]	TSETS	 10	9	45	; uv0"unknown".supported = slot10
		175	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		176	[  0]	KPRI 	 10		0	; slot10 = nil
		177	[  0]	TSETS	 10	9	44	; uv0"unknown".lastError = slot10
		178	[  0]	KPRI 	  9		2	; slot9 = true
		179	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 180
		180	[  0]	RET1 	  9		2	; return slot9
		181	[  0]	RET1 	  0		2	; return slot0
		182	[  0]	RET1 	  0		2	; return slot0
		183	[  0]	CALLT	  0		2	; return slot0(slot1)
		184	[  0]	CALLT	  0		2	; return slot0(slot1)
		185	[  0]	CALLT	  1		2	; return slot1(slot2)
		186	[  0]	CALLT	  2		2	; return slot2(slot3)
		187	[  0]	CALLT	  4		2	; return <unknown table>.alcGetCurrentContext(<unknown table>.alcGetContextsDevice)
		188	[  0]	CALLT	  5		2	; return <unknown table>.alcGetContextsDevice(pcall)
		189	[  0]	CALLT	  6		2	; return pcall(<unknown table>.alcGetCurrentContext)
		190	[  0]	CALLT	  6		2	; return pcall(<unknown table>.alcGetCurrentContext)
	 18	[  0]	TSETS	 19	0	14	; slot0.initialize = slot19
	 19	[  0]	FNEW 	 19		11	; N/A:0-0: 2 args, 8 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	IST  	   		2	; if uv0"unknown"
		  3	[  0]	JMP  	  3		7	; 	goto 11
		  4	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  5	[  0]	TGETS	  2	2	4	; slot2 = uv1"unknown".initialized
		  6	[  0]	ISF  	   		2	; if not uv1"unknown".initialized
		  7	[  0]	JMP  	  2		3	; 	goto 11
		  8	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		  9	[  0]	IST  	   		2	; if uv2"unknown"
		 10	[  0]	JMP  	  2		2	; 	goto 13
		 11	[  0]	KPRI 	  2		1	; slot2 = false
		 12	[  0]	RET1 	  2		2	; return slot2
		 13	[  0]	ISNEP	  1		1	; if slot1 ~= false
		 14	[  0]	JMP  	  2		2	; 	goto 17
		 15	[  0]	KPRI 	  2		1	; slot2 = false
		 16	[  0]	JMP  	  3		1	; 	goto 18
		 17	[  0]	KPRI 	  2		2	; slot2 = true
		 18	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
		 19	[  0]	ISEQV	  2		3	; if slot2 == uv3"unknown"
		 20	[  0]	JMP  	  3		10	; 	goto 31
		 21	[  0]	USETV	  3		2	; uv3"unknwon" = slot2
		 22	[  0]	UGET 	  3		4	; slot3 = uv4"unknwon"
		 23	[  0]	MOV  	  5		3	; slot5 = uv4"unknown"
		 24	[  0]	TGETS	  3	3	3	; slot3 = uv4"unknown".push
		 25	[  0]	ISF  	   		2	; if not slot2
		 26	[  0]	JMP  	  6		2	; 	goto 29
		 27	[  0]	KSTR 	  6		2	; slot6 = "gate:1"
		 28	[  0]	JMP  	  7		1	; 	goto 30
		 29	[  0]	KSTR 	  6		1	; slot6 = "gate:0"
		 30	[  0]	CALL 	  3	1	3	;  = uv4"unknown".push(slot4, uv4"unknown")
		 31	[  0]	UGET 	  3		5	; slot3 = uv5"unknwon"
		 32	[  0]	GGET 	  4		0	; slot4 = _env["tonumber"]
		 33	[  0]	MOV  	  6		0	; slot6 = slot0
		 34	[  0]	CALL 	  4	2	2	; slot4 = tonumber(uv4"unknown")
		 35	[  0]	IST  	   		4	; if tonumber
		 36	[  0]	JMP  	  5		1	; 	goto 38
		 37	[  0]	KSHORT	  4		0	; slot4 = 0
		 38	[  0]	ADDVV	  3	3	4	; slot3 = uv5"unknown" + slot4
		 39	[  0]	USETV	  5		3	; uv5"unknwon" = slot3
		 40	[  0]	UGET 	  3		5	; slot3 = uv5"unknwon"
		 41	[  0]	UGET 	  4		6	; slot4 = uv6"unknwon"
		 42	[  0]	ISGE 	  3		4	; if uv5"unknown" >= uv6"unknown"
		 43	[  0]	JMP  	  3		2	; 	goto 46
		 44	[  0]	KPRI 	  3		1	; slot3 = false
		 45	[  0]	RET1 	  3		2	; return slot3
		 46	[  0]	USETN	  5		0	; uv5"unknwon" = 0
		 47	[  0]	UGET 	  3		7	; slot3 = uv7"unknwon"
		 48	[  0]	CALL 	  3	1	1	;  = uv7"unknown"()
		 49	[  0]	KPRI 	  3		1	; slot3 = false
		 50	[  0]	RET1 	  3		2	; return slot3
	 20	[  0]	TSETS	 19	0	12	; slot0.update = slot19
	 21	[  0]	FNEW 	 19		9	; N/A:0-0: 0 args, 0 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KPRI 	  0		1	; slot0 = false
		  2	[  0]	RET1 	  0		2	; return slot0
	 22	[  0]	TSETS	 19	0	10	; slot0.onFocusGained = slot19
	 23	[  0]	FNEW 	 19		7	; N/A:0-0: 0 args, 6 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		2	; 	goto 6
		  4	[  0]	KPRI 	  0		2	; slot0 = true
		  5	[  0]	RET1 	  0		2	; return slot0
		  6	[  0]	USETP	  0		2	; uv0"unknwon" = true
		  7	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  8	[  0]	ISF  	   		0	; if not uv1"unknown"
		  9	[  0]	JMP  	  1		42	; 	goto 52
		 10	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
		 11	[  0]	MOV  	  2		0	; slot2 = uv2"unknown"
		 12	[  0]	TGETS	  0	0	9	; slot0 = uv2"unknown".push
		 13	[  0]	KSTR 	  3		8	; slot3 = "stop"
		 14	[  0]	CALL 	  0	1	3	;  = uv2"unknown".push(slot1, uv2"unknown")
		 15	[  0]	GGET 	  0		7	; slot0 = _env["love"]
		 16	[  0]	TGETS	  0	0	6	; slot0 = love.timer
		 17	[  0]	TGETS	  0	0	5	; slot0 = love.timer.getTime
		 18	[  0]	CALL 	  0	2	1	; slot0 = love.timer.getTime()
		 19	[  0]	UGET 	  1		3	; slot1 = uv3"unknwon"
		 20	[  0]	ADDVV	  0	0	1	; slot0 = slot0 + uv3"unknown"
		 21	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 22	[  0]	MOV  	  3		1	; slot3 = uv1"unknown"
		 23	[  0]	TGETS	  1	1	4	; slot1 = uv1"unknown".isRunning
		 24	[  0]	CALL 	  1	2	2	; slot1 = uv1"unknown".isRunning(slot2)
		 25	[  0]	ISF  	   		1	; if not slot1
		 26	[  0]	JMP  	  2		13	; 	goto 40
		 27	[  0]	GGET 	  1		7	; slot1 = _env["love"]
		 28	[  0]	TGETS	  1	1	6	; slot1 = love.timer
		 29	[  0]	TGETS	  1	1	5	; slot1 = love.timer.getTime
		 30	[  0]	CALL 	  1	2	1	; slot1 = love.timer.getTime()
		 31	[  0]	ISGE 	  1		0	; if slot1 >= slot0
		 32	[  0]	JMP  	  1		7	; 	goto 40
		 33	[  0]	LOOP 	  1		6	; Loop start, exit goto 40
		 34	[  0]	GGET 	  1		7	; slot1 = _env["love"]
		 35	[  0]	TGETS	  1	1	6	; slot1 = love.timer
		 36	[  0]	TGETS	  1	1	3	; slot1 = love.timer.sleep
		 37	[  0]	KNUM 	  3		0	; slot3 = 0.01
		 38	[  0]	CALL 	  1	1	2	;  = love.timer.sleep(slot2)
		 39	[  0]	JMP  	  1		-19	; 	goto 21
		 40	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 41	[  0]	MOV  	  3		1	; slot3 = uv1"unknown"
		 42	[  0]	TGETS	  1	1	4	; slot1 = uv1"unknown".isRunning
		 43	[  0]	CALL 	  1	2	2	; slot1 = uv1"unknown".isRunning(slot2)
		 44	[  0]	ISF  	   		1	; if not slot1
		 45	[  0]	JMP  	  2		4	; 	goto 50
		 46	[  0]	UGET 	  1		4	; slot1 = uv4"unknwon"
		 47	[  0]	KSTR 	  2		1	; slot2 = "worker_stop_timeout"
		 48	[  0]	TSETS	  2	1	2	; uv4"unknown".lastError = slot2
		 49	[  0]	JMP  	  1		2	; 	goto 52
		 50	[  0]	UGET 	  1		5	; slot1 = uv5"unknwon"
		 51	[  0]	CALL 	  1	1	1	;  = uv5"unknown"()
		 52	[  0]	UGET 	  0		4	; slot0 = uv4"unknwon"
		 53	[  0]	KPRI 	  1		1	; slot1 = false
		 54	[  0]	TSETS	  1	0	0	; uv4"unknown".supported = slot1
		 55	[  0]	KPRI 	  0		2	; slot0 = true
		 56	[  0]	RET1 	  0		2	; return slot0
	 24	[  0]	TSETS	 19	0	8	; slot0.shutdown = slot19
	 25	[  0]	FNEW 	 19		5	; N/A:0-0: 0 args, 2 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".supported
		  3	[  0]	ISF  	   		0	; if not uv0"unknown".supported
		  4	[  0]	JMP  	  1		3	; 	goto 8
		  5	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  6	[  0]	IST  	   		0	; if uv1"unknown"
		  7	[  0]	JMP  	  0		2	; 	goto 10
		  8	[  0]	KPRI 	  0		1	; slot0 = false
		  9	[  0]	RET1 	  0		2	; return slot0
		 10	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 11	[  0]	MOV  	  2		0	; slot2 = uv1"unknown"
		 12	[  0]	TGETS	  0	0	1	; slot0 = uv1"unknown".push
		 13	[  0]	KSTR 	  3		0	; slot3 = "force"
		 14	[  0]	CALL 	  0	1	3	;  = uv1"unknown".push(slot1, uv1"unknown")
		 15	[  0]	KPRI 	  0		2	; slot0 = true
		 16	[  0]	RET1 	  0		2	; return slot0
	 26	[  0]	TSETS	 19	0	6	; slot0.signalForRegression = slot19
	 27	[  0]	FNEW 	 19		3	; N/A:0-0: 0 args, 3 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		ktable#9 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	IST  	   		0	; if uv0"unknown"
		  3	[  0]	JMP  	  0		2	; 	goto 6
		  4	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  5	[  0]	CALL 	  0	1	1	;  = uv1"unknown"()
		  6	[  0]	TDUP 	  0		9	; slot0 = copy table#k9
		  7	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		  8	[  0]	TGETS	  1	1	10	; slot1 = uv2"unknown".initialized
		  9	[  0]	TSETS	  1	0	10	; slot0.initialized = uv2"unknown".initialized
		 10	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 11	[  0]	TGETS	  1	1	8	; slot1 = uv2"unknown".supported
		 12	[  0]	TSETS	  1	0	8	; slot0.supported = uv2"unknown".supported
		 13	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 14	[  0]	TGETS	  1	1	7	; slot1 = uv2"unknown".pending
		 15	[  0]	TSETS	  1	0	7	; slot0.pending = uv2"unknown".pending
		 16	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 17	[  0]	TGETS	  1	1	6	; slot1 = uv2"unknown".eventCount
		 18	[  0]	TSETS	  1	0	6	; slot0.eventCount = uv2"unknown".eventCount
		 19	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 20	[  0]	TGETS	  1	1	5	; slot1 = uv2"unknown".reopenCount
		 21	[  0]	TSETS	  1	0	5	; slot0.reopenCount = uv2"unknown".reopenCount
		 22	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 23	[  0]	TGETS	  1	1	4	; slot1 = uv2"unknown".failureCount
		 24	[  0]	TSETS	  1	0	4	; slot0.failureCount = uv2"unknown".failureCount
		 25	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 26	[  0]	TGETS	  1	1	3	; slot1 = uv2"unknown".lastReopenSeconds
		 27	[  0]	TSETS	  1	0	3	; slot0.lastReopenSeconds = uv2"unknown".lastReopenSeconds
		 28	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 29	[  0]	TGETS	  1	1	2	; slot1 = uv2"unknown".throttled
		 30	[  0]	TSETS	  1	0	2	; slot0.throttled = uv2"unknown".throttled
		 31	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 32	[  0]	TGETS	  1	1	1	; slot1 = uv2"unknown".routingDisabled
		 33	[  0]	TSETS	  1	0	1	; slot0.routingDisabled = uv2"unknown".routingDisabled
		 34	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 35	[  0]	TGETS	  1	1	0	; slot1 = uv2"unknown".lastError
		 36	[  0]	TSETS	  1	0	0	; slot0.lastError = uv2"unknown".lastError
		 37	[  0]	RET1 	  0		2	; return slot0
	 28	[  0]	TSETS	 19	0	4	; slot0.getStatus = slot19
	 29	[  0]	TSETS	  6	0	2	; slot0._worker = slot6
	 30	[  0]	FNEW 	 19		0	; N/A:0-0: 1 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		0	; slot1 = _env["pairs"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = pairs(slot2)
		  4	[  0]	ISNEXT	  4		2	; Verify ITERN at 7; goto 7
		  5	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		  6	[  0]	TSETV	  5	6	4	; uv0"unknown"[slot4] = slot5
		  7	[  0]	ITERN	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, slot3; slot4, slot5 = slot1(slot2, slot3)
		  8	[  0]	ITERL	  4		-4	; slot3 = slot4; if slot4 != nil goto 5
		  9	[  0]	RET0 	  0		1	; return
	 31	[  0]	TSETS	 19	0	1	; slot0._configureForTest = slot19
	 32	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 33
	 33	[  0]	RET1 	  0		2	; return slot0
	
