;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\game\postprocess.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 7 slots
	;;;; constant tables ;;;;
	;;;; instructions ;;;;
	  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
	  2	[  0]	KSTR 	  1		7	; slot1 = "    extern number time;
	    
	    // Settings
	    const float VIGNETTE_INTENSITY = 0.15;
	    const float VIGNETTE_ROUNDNESS = 0.5;
	    const float GRAIN_INTENSITY = 0.02;
	    const float CONTRAST = 1.0;
	    const float SATURATION = 1.0;
	    const float BRIGHTNESS = 1.0;
	    
	    // Interleaved gradient noise avoids a transcendental sin() for every
	    // physical screen pixel. At 4K/240 Hz that old hash alone executed almost
	    // two billion expensive shader operations per second.
	    float random(vec2 pixel, float seed) {
	        return fract(52.9829189 * fract(
	            dot(pixel, vec2(0.06711056, 0.00583715)) + seed));
	    }
	
	    // Color grading: Very subtle adjustment to unify tones
	    vec3 colorGrade(vec3 color) {
	        // Extremely subtle warm tint for a polished feel, but barely noticeable
	        vec3 tint = vec3(1.01, 1.005, 1.0);
	        return color * tint;
	    }
	
	    vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {
	        // 1. Sample the texture (Clean fetch)
	        vec4 texColor = Texel(texture, texture_coords);
	        vec3 rgb = texColor.rgb;
	
	        // 2. Contrast & Brightness
	        rgb = (rgb - 0.5) * CONTRAST + 0.5;
	        rgb = rgb * BRIGHTNESS;
	
	        // 3. Saturation
	        float gray = dot(rgb, vec3(0.299, 0.587, 0.114));
	        rgb = mix(vec3(gray), rgb, SATURATION);
	
	        // 4. Color Grading (Subtle)
	        rgb = colorGrade(rgb);
	
	        // 5. Vignette (Soft edges)
	        vec2 uv = texture_coords * (1.0 - texture_coords.yx);
	        float vig = uv.x * uv.y * 15.0;
	        vig = pow(vig, VIGNETTE_ROUNDNESS);
	        rgb *= mix(1.0, vig, VIGNETTE_INTENSITY);
	
	        // 6. Film Grain (Dithering)
	        float noise = random(screen_coords, fract(time * 0.013));
	        rgb += (noise - 0.5) * GRAIN_INTENSITY;
	
	        return vec4(rgb, texColor.a) * color;
	    }
	"
	  3	[  0]	KPRI 	  2		0	; slot2 = nil
	  4	[  0]	KSHORT	  3		0	; slot3 = 0
	  5	[  0]	KPRI 	  4		1	; slot4 = false
	  6	[  0]	FNEW 	  5		5	; N/A:0-0: 0 args, 3 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	USETP	  0		1	; uv0"unknwon" = false
		  2	[  0]	GGET 	  0		3	; slot0 = _env["pcall"]
		  3	[  0]	GGET 	  2		2	; slot2 = _env["love"]
		  4	[  0]	TGETS	  2	2	1	; slot2 = love.graphics
		  5	[  0]	TGETS	  2	2	0	; slot2 = love.graphics.newShader
		  6	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		  7	[  0]	CALL 	  0	3	3	; slot0, slot1 = pcall(slot1, love.graphics.newShader)
		  8	[  0]	ISF  	   		0	; if not slot0
		  9	[  0]	JMP  	  2		2	; 	goto 12
		 10	[  0]	ISTC 	  2		1	; slot2 = slot1; if slot1
		 11	[  0]	JMP  	  2		1	; 	goto 13
		 12	[  0]	KPRI 	  2		0	; slot2 = nil
		 13	[  0]	USETV	  2		2	; uv2"unknwon" = slot2
		 14	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 15	[  0]	IST  	   		2	; if uv2"unknown"
		 16	[  0]	JMP  	  2		1	; 	goto 18
		 17	[  0]	USETP	  0		2	; uv0"unknwon" = true
		 18	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 19	[  0]	ISNEP	  2		0	; if uv2"unknown" ~= nil
		 20	[  0]	JMP  	  2		2	; 	goto 23
		 21	[  0]	KPRI 	  2		1	; slot2 = false
		 22	[  0]	JMP  	  3		1	; 	goto 24
		 23	[  0]	KPRI 	  2		2	; slot2 = true
		 24	[  0]	RET1 	  2		2	; return slot2
	  7	[  0]	TSETS	  5	0	6	; slot0.load = slot5
	  8	[  0]	FNEW 	  5		3	; N/A:0-0: 1 args, 1 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	ADDVV	  1	1	0	; slot1 = uv0"unknown" + slot0
		  3	[  0]	USETV	  0		1	; uv0"unknwon" = slot1
		  4	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  5	[  0]	KSHORT	  2		1000	; slot2 = 1000
		  6	[  0]	ISGE 	  2		1	; if slot2 >= uv0"unknown"
		  7	[  0]	JMP  	  1		3	; 	goto 11
		  8	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  9	[  0]	MODVN	  1	1	0	; slot1 = uv0"unknown" % 1000
		 10	[  0]	USETV	  0		1	; uv0"unknwon" = slot1
		 11	[  0]	RET0 	  0		1	; return
	  9	[  0]	TSETS	  5	0	4	; slot0.update = slot5
	 10	[  0]	FNEW 	  5		2	; N/A:0-0: 1 args, 0 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		7	; slot1 = _env["love"]
		  2	[  0]	TGETS	  1	1	6	; slot1 = love.graphics
		  3	[  0]	TGETS	  1	1	5	; slot1 = love.graphics.setShader
		  4	[  0]	CALL 	  1	1	1	;  = love.graphics.setShader()
		  5	[  0]	GGET 	  1		7	; slot1 = _env["love"]
		  6	[  0]	TGETS	  1	1	6	; slot1 = love.graphics
		  7	[  0]	TGETS	  1	1	4	; slot1 = love.graphics.setColor
		  8	[  0]	KSHORT	  3		1	; slot3 = 1
		  9	[  0]	KSHORT	  4		1	; slot4 = 1
		 10	[  0]	KSHORT	  5		1	; slot5 = 1
		 11	[  0]	KSHORT	  6		1	; slot6 = 1
		 12	[  0]	CALL 	  1	1	5	;  = love.graphics.setColor(slot2, slot3, slot4, slot5)
		 13	[  0]	MOV  	  3		0	; slot3 = slot0
		 14	[  0]	TGETS	  1	0	3	; slot1 = slot0.getFilter
		 15	[  0]	CALL 	  1	3	2	; slot1, slot2 = <unknown table>.getFilter(slot2)
		 16	[  0]	MOV  	  5		0	; slot5 = slot0
		 17	[  0]	TGETS	  3	0	2	; slot3 = slot0.setFilter
		 18	[  0]	KSTR 	  6		1	; slot6 = "nearest"
		 19	[  0]	KSTR 	  7		1	; slot7 = "nearest"
		 20	[  0]	CALL 	  3	1	4	;  = <unknown table>.setFilter(slot4, slot5, slot6)
		 21	[  0]	GGET 	  3		7	; slot3 = _env["love"]
		 22	[  0]	TGETS	  3	3	6	; slot3 = love.graphics
		 23	[  0]	TGETS	  3	3	0	; slot3 = love.graphics.draw
		 24	[  0]	MOV  	  5		0	; slot5 = slot0
		 25	[  0]	KSHORT	  6		0	; slot6 = 0
		 26	[  0]	KSHORT	  7		0	; slot7 = 0
		 27	[  0]	CALL 	  3	1	4	;  = love.graphics.draw(slot4, slot5, slot6)
		 28	[  0]	MOV  	  5		0	; slot5 = slot0
		 29	[  0]	TGETS	  3	0	2	; slot3 = slot0.setFilter
		 30	[  0]	MOV  	  6		1	; slot6 = slot1
		 31	[  0]	MOV  	  7		2	; slot7 = slot2
		 32	[  0]	CALL 	  3	1	4	;  = <unknown table>.setFilter(slot4, slot5, slot6)
		 33	[  0]	RET0 	  0		1	; return
	 11	[  0]	FNEW 	  6		0	; N/A:0-0: 1 args, 5 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	IST  	   		1	; if uv0"unknown"
		  3	[  0]	JMP  	  2		6	; 	goto 10
		  4	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  5	[  0]	IST  	   		1	; if uv1"unknown"
		  6	[  0]	JMP  	  1		3	; 	goto 10
		  7	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		  8	[  0]	TGETS	  1	1	11	; slot1 = uv2"unknown".load
		  9	[  0]	CALL 	  1	1	1	;  = uv2"unknown".load()
		 10	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 11	[  0]	IST  	   		1	; if uv0"unknown"
		 12	[  0]	JMP  	  1		4	; 	goto 17
		 13	[  0]	UGET 	  1		3	; slot1 = uv3"unknwon"
		 14	[  0]	MOV  	  3		0	; slot3 = slot0
		 15	[  0]	CALL 	  1	1	2	;  = uv3"unknown"(slot2)
		 16	[  0]	RET0 	  0		1	; return
		 17	[  0]	GGET 	  1		10	; slot1 = _env["pcall"]
		 18	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 19	[  0]	TGETS	  3	3	9	; slot3 = uv0"unknown".send
		 20	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 21	[  0]	KSTR 	  5		8	; slot5 = "time"
		 22	[  0]	UGET 	  6		4	; slot6 = uv4"unknwon"
		 23	[  0]	CALL 	  1	2	5	; slot1 = pcall(slot2, uv0"unknown".send, uv0"unknown", slot5)
		 24	[  0]	IST  	   		1	; if slot1
		 25	[  0]	JMP  	  2		6	; 	goto 32
		 26	[  0]	USETP	  0		0	; uv0"unknwon" = nil
		 27	[  0]	USETP	  1		2	; uv1"unknwon" = true
		 28	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 29	[  0]	MOV  	  4		0	; slot4 = slot0
		 30	[  0]	CALL 	  2	1	2	;  = uv3"unknown"(slot3)
		 31	[  0]	RET0 	  0		1	; return
		 32	[  0]	GGET 	  2		7	; slot2 = _env["love"]
		 33	[  0]	TGETS	  2	2	6	; slot2 = love.graphics
		 34	[  0]	TGETS	  2	2	5	; slot2 = love.graphics.setShader
		 35	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 36	[  0]	CALL 	  2	1	2	;  = love.graphics.setShader(slot3)
		 37	[  0]	GGET 	  2		7	; slot2 = _env["love"]
		 38	[  0]	TGETS	  2	2	6	; slot2 = love.graphics
		 39	[  0]	TGETS	  2	2	4	; slot2 = love.graphics.setColor
		 40	[  0]	KSHORT	  4		1	; slot4 = 1
		 41	[  0]	KSHORT	  5		1	; slot5 = 1
		 42	[  0]	KSHORT	  6		1	; slot6 = 1
		 43	[  0]	KSHORT	  7		1	; slot7 = 1
		 44	[  0]	CALL 	  2	1	5	;  = love.graphics.setColor(slot3, slot4, slot5, slot6)
		 45	[  0]	MOV  	  4		0	; slot4 = slot0
		 46	[  0]	TGETS	  2	0	3	; slot2 = slot0.getFilter
		 47	[  0]	CALL 	  2	3	2	; slot2, slot3 = <unknown table>.getFilter(slot3)
		 48	[  0]	MOV  	  6		0	; slot6 = slot0
		 49	[  0]	TGETS	  4	0	2	; slot4 = slot0.setFilter
		 50	[  0]	KSTR 	  7		1	; slot7 = "nearest"
		 51	[  0]	KSTR 	  8		1	; slot8 = "nearest"
		 52	[  0]	CALL 	  4	1	4	;  = <unknown table>.setFilter(slot5, slot6, slot7)
		 53	[  0]	GGET 	  4		7	; slot4 = _env["love"]
		 54	[  0]	TGETS	  4	4	6	; slot4 = love.graphics
		 55	[  0]	TGETS	  4	4	0	; slot4 = love.graphics.draw
		 56	[  0]	MOV  	  6		0	; slot6 = slot0
		 57	[  0]	KSHORT	  7		0	; slot7 = 0
		 58	[  0]	KSHORT	  8		0	; slot8 = 0
		 59	[  0]	CALL 	  4	1	4	;  = love.graphics.draw(slot5, slot6, slot7)
		 60	[  0]	MOV  	  6		0	; slot6 = slot0
		 61	[  0]	TGETS	  4	0	2	; slot4 = slot0.setFilter
		 62	[  0]	MOV  	  7		2	; slot7 = slot2
		 63	[  0]	MOV  	  8		3	; slot8 = slot3
		 64	[  0]	CALL 	  4	1	4	;  = <unknown table>.setFilter(slot5, slot6, slot7)
		 65	[  0]	GGET 	  4		7	; slot4 = _env["love"]
		 66	[  0]	TGETS	  4	4	6	; slot4 = love.graphics
		 67	[  0]	TGETS	  4	4	5	; slot4 = love.graphics.setShader
		 68	[  0]	CALL 	  4	1	1	;  = love.graphics.setShader()
		 69	[  0]	RET0 	  0		1	; return
	 12	[  0]	TSETS	  6	0	1	; slot0.draw = slot6
	 13	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 14
	 14	[  0]	RET1 	  0		2	; return slot0
	
