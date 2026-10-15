;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\platform_window.lua
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
	  2	[  0]	FNEW 	  1		15	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISEQS	  0		0	; if slot0 == "fullscreen"
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KPRI 	  1		1	; slot1 = false
		  4	[  0]	JMP  	  2		1	; 	goto 6
		  5	[  0]	KPRI 	  1		2	; slot1 = true
		  6	[  0]	RET1 	  1		2	; return slot1
	  3	[  0]	TSETS	  1	0	16	; slot0.isFullscreenMode = slot1
	  4	[  0]	FNEW 	  1		13	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISEQS	  0		0	; if slot0 == "borderless"
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KPRI 	  1		1	; slot1 = false
		  4	[  0]	JMP  	  2		1	; 	goto 6
		  5	[  0]	KPRI 	  1		2	; slot1 = true
		  6	[  0]	RET1 	  1		2	; return slot1
	  5	[  0]	TSETS	  1	0	14	; slot0.isBorderlessWindowMode = slot1
	  6	[  0]	FNEW 	  1		11	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KSTR 	  1		0	; slot1 = "desktop"
		  2	[  0]	RET1 	  1		2	; return slot1
	  7	[  0]	TSETS	  1	0	12	; slot0.fullscreenTypeForMode = slot1
	  8	[  0]	FNEW 	  1		9	; N/A:0-0: 0 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		5	; slot0 = _env["jit"]
		  2	[  0]	ISF  	   		0	; if not jit
		  3	[  0]	JMP  	  1		4	; 	goto 8
		  4	[  0]	GGET 	  0		5	; slot0 = _env["jit"]
		  5	[  0]	TGETS	  0	0	4	; slot0 = jit.os
		  6	[  0]	ISEQS	  0		3	; if jit.os == "Windows"
		  7	[  0]	JMP  	  0		20	; 	goto 28
		  8	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		  9	[  0]	ISF  	   		0	; if not love
		 10	[  0]	JMP  	  1		18	; 	goto 29
		 11	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		 12	[  0]	TGETS	  0	0	1	; slot0 = love.system
		 13	[  0]	ISF  	   		0	; if not love.system
		 14	[  0]	JMP  	  1		14	; 	goto 29
		 15	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		 16	[  0]	TGETS	  0	0	1	; slot0 = love.system
		 17	[  0]	TGETS	  0	0	0	; slot0 = love.system.getOS
		 18	[  0]	ISF  	   		0	; if not love.system.getOS
		 19	[  0]	JMP  	  1		9	; 	goto 29
		 20	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		 21	[  0]	TGETS	  0	0	1	; slot0 = love.system
		 22	[  0]	TGETS	  0	0	0	; slot0 = love.system.getOS
		 23	[  0]	CALL 	  0	2	1	; slot0 = love.system.getOS()
		 24	[  0]	ISEQS	  0		3	; if slot0 == "Windows"
		 25	[  0]	JMP  	  0		2	; 	goto 28
		 26	[  0]	KPRI 	  0		1	; slot0 = false
		 27	[  0]	JMP  	  1		1	; 	goto 29
		 28	[  0]	KPRI 	  0		2	; slot0 = true
		 29	[  0]	RET1 	  0		2	; return slot0
	  9	[  0]	TSETS	  1	0	10	; slot0.isWindowsPlatform = slot1
	 10	[  0]	FNEW 	  1		7	; N/A:0-0: 2 args, 0 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISNEP	  1		1	; if slot1 ~= false
		  2	[  0]	JMP  	  2		2	; 	goto 5
		  3	[  0]	KSHORT	  2		0	; slot2 = 0
		  4	[  0]	RET1 	  2		2	; return slot2
		  5	[  0]	KSHORT	  2		1	; slot2 = 1
		  6	[  0]	RET1 	  2		2	; return slot2
	 11	[  0]	TSETS	  1	0	8	; slot0.vsyncForMode = slot1
	 12	[  0]	FNEW 	  1		5	; N/A:0-0: 0 args, 0 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		8	; slot0 = _env["pcall"]
		  2	[  0]	GGET 	  2		7	; slot2 = _env["require"]
		  3	[  0]	KSTR 	  3		6	; slot3 = "ffi"
		  4	[  0]	CALL 	  0	3	3	; slot0, slot1 = pcall(slot1, require)
		  5	[  0]	ISF  	   		0	; if not slot0
		  6	[  0]	JMP  	  2		2	; 	goto 9
		  7	[  0]	IST  	   		1	; if slot1
		  8	[  0]	JMP  	  2		2	; 	goto 11
		  9	[  0]	KPRI 	  2		0	; slot2 = nil
		 10	[  0]	RET1 	  2		2	; return slot2
		 11	[  0]	GGET 	  2		8	; slot2 = _env["pcall"]
		 12	[  0]	TGETS	  4	1	5	; slot4 = slot1.cdef
		 13	[  0]	KSTR 	  5		4	; slot5 = "    int GetSystemMetrics(int nIndex);
		  "
		 14	[  0]	CALL 	  2	2	3	; slot2 = pcall(slot3, <unknown table>.cdef)
		 15	[  0]	IST  	   		2	; if slot2
		 16	[  0]	JMP  	  3		2	; 	goto 19
		 17	[  0]	KPRI 	  3		0	; slot3 = nil
		 18	[  0]	RET1 	  3		2	; return slot3
		 19	[  0]	GGET 	  3		8	; slot3 = _env["pcall"]
		 20	[  0]	TGETS	  5	1	3	; slot5 = slot1.load
		 21	[  0]	KSTR 	  6		2	; slot6 = "user32"
		 22	[  0]	CALL 	  3	3	3	; slot3, slot4 = pcall(<unknown table>.cdef, <unknown table>.load)
		 23	[  0]	ISF  	   		3	; if not slot3
		 24	[  0]	JMP  	  5		2	; 	goto 27
		 25	[  0]	IST  	   		4	; if <unknown table>.cdef
		 26	[  0]	JMP  	  5		2	; 	goto 29
		 27	[  0]	KPRI 	  5		0	; slot5 = nil
		 28	[  0]	RET1 	  5		2	; return slot5
		 29	[  0]	GGET 	  5		1	; slot5 = _env["tonumber"]
		 30	[  0]	TGETS	  7	4	0	; slot7 = <unknown table>.cdef.GetSystemMetrics
		 31	[  0]	KSHORT	  9		0	; slot9 = 0
		 32	[  0]	CALL 	  7	0	2	; MULTRES = <unknown table>.cdef.GetSystemMetrics(slot8)
		 33	[  0]	CALLM	  5	2	0	; slot5 = tonumber(, ...MULTRES)
		 34	[  0]	GGET 	  6		1	; slot6 = _env["tonumber"]
		 35	[  0]	TGETS	  8	4	0	; slot8 = <unknown table>.cdef.GetSystemMetrics
		 36	[  0]	KSHORT	 10		1	; slot10 = 1
		 37	[  0]	CALL 	  8	0	2	; MULTRES = <unknown table>.cdef.GetSystemMetrics(slot9)
		 38	[  0]	CALLM	  6	2	0	; slot6 = tonumber(, ...MULTRES)
		 39	[  0]	ISF  	   		5	; if not tonumber
		 40	[  0]	JMP  	  7		13	; 	goto 54
		 41	[  0]	ISF  	   		6	; if not tonumber
		 42	[  0]	JMP  	  7		11	; 	goto 54
		 43	[  0]	KSHORT	  7		0	; slot7 = 0
		 44	[  0]	ISGE 	  7		5	; if slot7 >= tonumber
		 45	[  0]	JMP  	  7		8	; 	goto 54
		 46	[  0]	KSHORT	  7		0	; slot7 = 0
		 47	[  0]	ISGE 	  7		6	; if slot7 >= tonumber
		 48	[  0]	JMP  	  7		5	; 	goto 54
		 49	[  0]	KSHORT	  7		0	; slot7 = 0
		 50	[  0]	KSHORT	  8		0	; slot8 = 0
		 51	[  0]	MOV  	  9		5	; slot9 = tonumber
		 52	[  0]	MOV  	 10		6	; slot10 = tonumber
		 53	[  0]	RET  	  7		5	; return slot7, slot8, tonumber, tonumber
		 54	[  0]	KPRI 	  7		0	; slot7 = nil
		 55	[  0]	RET1 	  7		2	; return slot7
	 13	[  0]	TSETS	  1	0	6	; slot0.getPrimaryDesktopArea = slot1
	 14	[  0]	FNEW 	  1		3	; N/A:0-0: 4 args, 0 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  4		0	; slot4 = _env["tonumber"]
		  2	[  0]	MOV  	  6		0	; slot6 = slot0
		  3	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		  4	[  0]	ISTC 	  0		4	; slot0 = tonumber; if tonumber
		  5	[  0]	JMP  	  5		1	; 	goto 7
		  6	[  0]	KSHORT	  0		0	; slot0 = 0
		  7	[  0]	GGET 	  4		0	; slot4 = _env["tonumber"]
		  8	[  0]	MOV  	  6		1	; slot6 = slot1
		  9	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		 10	[  0]	ISTC 	  1		4	; slot1 = tonumber; if tonumber
		 11	[  0]	JMP  	  5		1	; 	goto 13
		 12	[  0]	KSHORT	  1		0	; slot1 = 0
		 13	[  0]	GGET 	  4		0	; slot4 = _env["tonumber"]
		 14	[  0]	MOV  	  6		2	; slot6 = slot2
		 15	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		 16	[  0]	MOV  	  2		4	; slot2 = tonumber
		 17	[  0]	GGET 	  4		0	; slot4 = _env["tonumber"]
		 18	[  0]	MOV  	  6		3	; slot6 = slot3
		 19	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		 20	[  0]	MOV  	  3		4	; slot3 = tonumber
		 21	[  0]	ISF  	   		2	; if not tonumber
		 22	[  0]	JMP  	  4		8	; 	goto 31
		 23	[  0]	ISF  	   		3	; if not tonumber
		 24	[  0]	JMP  	  4		6	; 	goto 31
		 25	[  0]	KSHORT	  4		0	; slot4 = 0
		 26	[  0]	ISLE 	  2		4	; if tonumber <= slot4
		 27	[  0]	JMP  	  4		3	; 	goto 31
		 28	[  0]	KSHORT	  4		0	; slot4 = 0
		 29	[  0]	ISGT 	  3		4	; if tonumber > slot4
		 30	[  0]	JMP  	  4		5	; 	goto 36
		 31	[  0]	MOV  	  4		0	; slot4 = slot0
		 32	[  0]	MOV  	  5		1	; slot5 = slot1
		 33	[  0]	MOV  	  6		2	; slot6 = tonumber
		 34	[  0]	MOV  	  7		3	; slot7 = tonumber
		 35	[  0]	RET  	  4		5	; return slot4, slot5, tonumber, tonumber
		 36	[  0]	MOV  	  4		0	; slot4 = slot0
		 37	[  0]	MOV  	  5		1	; slot5 = slot1
		 38	[  0]	MOV  	  6		2	; slot6 = tonumber
		 39	[  0]	MOV  	  7		3	; slot7 = tonumber
		 40	[  0]	RET  	  4		5	; return slot4, slot5, tonumber, tonumber
	 15	[  0]	TSETS	  1	0	4	; slot0.getBorderlessWindowBounds = slot1
	 16	[  0]	KPRI 	  1		0	; slot1 = nil
	 17	[  0]	KPRI 	  2		1	; slot2 = false
	 18	[  0]	FNEW 	  3		2	; N/A:0-0: 0 args, 2 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		2	; 	goto 6
		  4	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  5	[  0]	RET1 	  0		2	; return uv1"unknown"
		  6	[  0]	USETP	  0		2	; uv0"unknwon" = true
		  7	[  0]	GGET 	  0		7	; slot0 = _env["pcall"]
		  8	[  0]	GGET 	  2		6	; slot2 = _env["require"]
		  9	[  0]	KSTR 	  3		5	; slot3 = "ffi"
		 10	[  0]	CALL 	  0	3	3	; slot0, slot1 = pcall(slot1, require)
		 11	[  0]	ISF  	   		0	; if not slot0
		 12	[  0]	JMP  	  2		2	; 	goto 15
		 13	[  0]	IST  	   		1	; if slot1
		 14	[  0]	JMP  	  2		2	; 	goto 17
		 15	[  0]	KPRI 	  2		0	; slot2 = nil
		 16	[  0]	RET1 	  2		2	; return slot2
		 17	[  0]	GGET 	  2		7	; slot2 = _env["pcall"]
		 18	[  0]	TGETS	  4	1	4	; slot4 = slot1.cdef
		 19	[  0]	KSTR 	  5		3	; slot5 = "    void * __stdcall OpenInputDesktop(uint32_t flags, int32_t inherit,
		      uint32_t desiredAccess);
		    int32_t __stdcall GetUserObjectInformationW(void *object, int32_t index,
		      void *info, uint32_t infoLength, uint32_t *needed);
		    int32_t __stdcall CloseDesktop(void *desktop);
		  "
		 20	[  0]	CALL 	  2	2	3	; slot2 = pcall(slot3, <unknown table>.cdef)
		 21	[  0]	IST  	   		2	; if slot2
		 22	[  0]	JMP  	  3		2	; 	goto 25
		 23	[  0]	KPRI 	  3		0	; slot3 = nil
		 24	[  0]	RET1 	  3		2	; return slot3
		 25	[  0]	GGET 	  3		7	; slot3 = _env["pcall"]
		 26	[  0]	TGETS	  5	1	2	; slot5 = slot1.load
		 27	[  0]	KSTR 	  6		1	; slot6 = "user32"
		 28	[  0]	CALL 	  3	3	3	; slot3, slot4 = pcall(<unknown table>.cdef, <unknown table>.load)
		 29	[  0]	ISF  	   		3	; if not slot3
		 30	[  0]	JMP  	  5		2	; 	goto 33
		 31	[  0]	IST  	   		4	; if <unknown table>.cdef
		 32	[  0]	JMP  	  5		2	; 	goto 35
		 33	[  0]	KPRI 	  5		0	; slot5 = nil
		 34	[  0]	RET1 	  5		2	; return slot5
		 35	[  0]	TDUP 	  5		0	; slot5 = copy table#k0
		 36	[  0]	TSETS	  1	5	5	; slot5.ffi = slot1
		 37	[  0]	TSETS	  4	5	1	; slot5.user32 = <unknown table>.cdef
		 38	[  0]	USETV	  1		5	; uv1"unknwon" = slot5
		 39	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 40	[  0]	RET1 	  5		2	; return uv1"unknown"
	 19	[  0]	FNEW 	  4		0	; N/A:0-0: 1 args, 1 upvalues, 21 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISEQS	  0		19	; if slot0 == "Windows"
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KPRI 	  1		0	; slot1 = nil
		  4	[  0]	RET1 	  1		2	; return slot1
		  5	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  6	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown"()
		  7	[  0]	IST  	   		1	; if slot1
		  8	[  0]	JMP  	  2		2	; 	goto 11
		  9	[  0]	KPRI 	  2		0	; slot2 = nil
		 10	[  0]	RET1 	  2		2	; return slot2
		 11	[  0]	TGETS	  2	1	18	; slot2 = slot1.ffi
		 12	[  0]	TGETS	  3	1	17	; slot3 = slot1.user32
		 13	[  0]	KSHORT	  4		1	; slot4 = 1
		 14	[  0]	KSHORT	  5		2	; slot5 = 2
		 15	[  0]	TGETS	  6	3	16	; slot6 = <unknown table>.user32.OpenInputDesktop
		 16	[  0]	KSHORT	  8		0	; slot8 = 0
		 17	[  0]	KSHORT	  9		0	; slot9 = 0
		 18	[  0]	MOV  	 10		4	; slot10 = slot4
		 19	[  0]	CALL 	  6	2	4	; slot6 = <unknown table>.user32.OpenInputDesktop(slot7, slot8, slot9)
		 20	[  0]	ISEQP	  6		0	; if <unknown table>.user32.OpenInputDesktop == nil
		 21	[  0]	JMP  	  7		3	; 	goto 25
		 22	[  0]	TGETS	  7	2	15	; slot7 = <unknown table>.ffi.NULL
		 23	[  0]	ISNEV	  6		7	; if <unknown table>.user32.OpenInputDesktop ~= <unknown table>.ffi.NULL
		 24	[  0]	JMP  	  7		2	; 	goto 27
		 25	[  0]	KPRI 	  7		1	; slot7 = false
		 26	[  0]	RET1 	  7		2	; return slot7
		 27	[  0]	TGETS	  7	2	14	; slot7 = <unknown table>.ffi.new
		 28	[  0]	KSTR 	  9		13	; slot9 = "uint32_t[1]"
		 29	[  0]	CALL 	  7	2	2	; slot7 = <unknown table>.ffi.new(slot8)
		 30	[  0]	TGETS	  8	3	12	; slot8 = <unknown table>.user32.GetUserObjectInformationW
		 31	[  0]	MOV  	 10		6	; slot10 = <unknown table>.user32.OpenInputDesktop
		 32	[  0]	MOV  	 11		5	; slot11 = slot5
		 33	[  0]	KPRI 	 12		0	; slot12 = nil
		 34	[  0]	KSHORT	 13		0	; slot13 = 0
		 35	[  0]	MOV  	 14		7	; slot14 = <unknown table>.ffi.new
		 36	[  0]	CALL 	  8	1	6	;  = <unknown table>.user32.GetUserObjectInformationW(slot9, <unknown table>.user32.OpenInputDesktop, slot11, slot12, slot13)
		 37	[  0]	GGET 	  8		11	; slot8 = _env["tonumber"]
		 38	[  0]	TGETB	 10	7	0	; slot10 = <unknown table>.ffi.new[0]
		 39	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 40	[  0]	IST  	   		8	; if tonumber
		 41	[  0]	JMP  	  9		1	; 	goto 43
		 42	[  0]	KSHORT	  8		0	; slot8 = 0
		 43	[  0]	KPRI 	  9		0	; slot9 = nil
		 44	[  0]	KSHORT	 10		2	; slot10 = 2
		 45	[  0]	ISGT 	 10		8	; if slot10 > slot8
		 46	[  0]	JMP  	 10		53	; 	goto 100
		 47	[  0]	KSHORT	 10		1024	; slot10 = 1024
		 48	[  0]	ISGT 	  8		10	; if slot8 > slot10
		 49	[  0]	JMP  	 10		50	; 	goto 100
		 50	[  0]	TGETS	 10	2	14	; slot10 = <unknown table>.ffi.new
		 51	[  0]	KSTR 	 12		10	; slot12 = "uint16_t[?]"
		 52	[  0]	GGET 	 13		9	; slot13 = _env["math"]
		 53	[  0]	TGETS	 13	13	8	; slot13 = math.floor
		 54	[  0]	DIVVN	 15	8	0	; slot15 = slot8 / 2
		 55	[  0]	CALL 	 13	2	2	; slot13 = math.floor(<unknown table>.ffi.new)
		 56	[  0]	ADDVN	 13	13	1	; slot13 = math.floor + 1
		 57	[  0]	CALL 	 10	2	3	; slot10 = <unknown table>.ffi.new(slot11, slot12)
		 58	[  0]	TGETS	 11	3	12	; slot11 = <unknown table>.user32.GetUserObjectInformationW
		 59	[  0]	MOV  	 13		6	; slot13 = <unknown table>.user32.OpenInputDesktop
		 60	[  0]	MOV  	 14		5	; slot14 = slot5
		 61	[  0]	MOV  	 15		10	; slot15 = <unknown table>.ffi.new
		 62	[  0]	MOV  	 16		8	; slot16 = slot8
		 63	[  0]	MOV  	 17		7	; slot17 = <unknown table>.ffi.new
		 64	[  0]	CALL 	 11	2	6	; slot11 = <unknown table>.user32.GetUserObjectInformationW(slot12, <unknown table>.user32.OpenInputDesktop, slot14, <unknown table>.ffi.new, slot16)
		 65	[  0]	ISEQN	 11		2	; if <unknown table>.user32.GetUserObjectInformationW == 0
		 66	[  0]	JMP  	 11		33	; 	goto 100
		 67	[  0]	TNEW 	 11		0	; slot11 = new table( array: 0, dict: 1)
		 68	[  0]	KSHORT	 12		0	; slot12 = 0
		 69	[  0]	GGET 	 13		9	; slot13 = _env["math"]
		 70	[  0]	TGETS	 13	13	8	; slot13 = math.floor
		 71	[  0]	DIVVN	 15	8	0	; slot15 = slot8 / 2
		 72	[  0]	CALL 	 13	2	2	; slot13 = math.floor(slot14)
		 73	[  0]	KSHORT	 14		1	; slot14 = 1
		 74	[  0]	FORI 	 12		20	; for slot15 = slot12,slot13,slot14 else goto 95
		 75	[  0]	GGET 	 16		11	; slot16 = _env["tonumber"]
		 76	[  0]	TGETV	 18	10	15	; slot18 = <unknown table>.ffi.new[slot15]
		 77	[  0]	CALL 	 16	2	2	; slot16 = tonumber(slot17)
		 78	[  0]	IST  	   		16	; if tonumber
		 79	[  0]	JMP  	 17		1	; 	goto 81
		 80	[  0]	KSHORT	 16		0	; slot16 = 0
		 81	[  0]	ISNEN	 16		2	; if slot16 ~= 0
		 82	[  0]	JMP  	 17		1	; 	goto 84
		 83	[  0]	JMP  	 12		11	; 	goto 95
		 84	[  0]	KSHORT	 17		128	; slot17 = 128
		 85	[  0]	ISGE 	 16		17	; if slot16 >= slot17
		 86	[  0]	JMP  	 17		7	; 	goto 94
		 87	[  0]	LEN  	 17		11	; slot17 = #slot11
		 88	[  0]	ADDVN	 17	17	1	; slot17 = slot17 + 1
		 89	[  0]	GGET 	 18		7	; slot18 = _env["string"]
		 90	[  0]	TGETS	 18	18	6	; slot18 = string.char
		 91	[  0]	MOV  	 20		16	; slot20 = slot16
		 92	[  0]	CALL 	 18	2	2	; slot18 = string.char(slot19)
		 93	[  0]	TSETV	 18	11	17	; slot11[slot17] = string.char
		 94	[  0]	FORL 	 12		-20	; slot15 = slot15 + slot14; if cmp(slot15, sign slot14,  slot13) goto 75
		 95	[  0]	GGET 	 12		5	; slot12 = _env["table"]
		 96	[  0]	TGETS	 12	12	4	; slot12 = table.concat
		 97	[  0]	MOV  	 14		11	; slot14 = slot11
		 98	[  0]	CALL 	 12	2	2	; slot12 = table.concat(slot13)
		 99	[  0]	MOV  	  9		12	; slot9 = table.concat
		100	[  0]	TGETS	 10	3	3	; slot10 = <unknown table>.user32.CloseDesktop
		101	[  0]	MOV  	 12		6	; slot12 = <unknown table>.user32.OpenInputDesktop
		102	[  0]	CALL 	 10	1	2	;  = <unknown table>.user32.CloseDesktop(slot11)
		103	[  0]	ISF  	   		9	; if not table.concat
		104	[  0]	JMP  	 10		2	; 	goto 107
		105	[  0]	ISNES	  9		2	; if table.concat ~= ""
		106	[  0]	JMP  	 10		2	; 	goto 109
		107	[  0]	KPRI 	 10		0	; slot10 = nil
		108	[  0]	RET1 	 10		2	; return slot10
		109	[  0]	MOV  	 12		9	; slot12 = table.concat
		110	[  0]	TGETS	 10	9	1	; slot10 = table.concat.lower
		111	[  0]	CALL 	 10	2	2	; slot10 = table.concat.lower(slot11)
		112	[  0]	ISEQS	 10		0	; if table.concat.lower == "default"
		113	[  0]	JMP  	 10		2	; 	goto 116
		114	[  0]	KPRI 	 10		1	; slot10 = false
		115	[  0]	JMP  	 11		1	; 	goto 117
		116	[  0]	KPRI 	 10		2	; slot10 = true
		117	[  0]	RET1 	 10		2	; return slot10
	 20	[  0]	TSETS	  4	0	1	; slot0.isInteractiveDesktopAvailable = slot4
	 21	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 22
	 22	[  0]	RET1 	  0		2	; return slot0
	
