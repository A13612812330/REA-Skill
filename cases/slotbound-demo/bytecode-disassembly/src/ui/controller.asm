;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\ui\controller.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 87 slots
	;;;; constant tables ;;;;
	ktable#36 = [
		[__mode] = k,
		]
	
	
	ktable#45 = [
		#1: inspect,
		#2: pad_hint_inspect,
		]
	
	
	ktable#46 = [
		#1: confirm,
		#2: pad_hint_select,
		]
	
	
	ktable#48 = [
		#1: confirm,
		#2: pad_hint_select,
		]
	
	
	ktable#50 = [
		#1: confirm,
		#2: pad_hint_select,
		]
	
	
	ktable#52 = [
		#1: back,
		#2: pad_hint_back,
		]
	
	
	ktable#53 = [
		#1: confirm,
		#2: pad_hint_select,
		]
	
	
	ktable#54 = [
		#1: dpad_lr,
		#2: pad_hint_change,
		]
	
	
	ktable#56 = [
		#1: back,
		#2: pad_hint_resume,
		]
	
	
	ktable#57 = [
		#1: confirm,
		#2: pad_hint_select,
		]
	
	
	ktable#59 = [
		#1: back,
		#2: pad_hint_cancel,
		]
	
	
	ktable#60 = [
		#1: confirm,
		#2: pad_hint_select,
		]
	
	
	ktable#62 = [
		#1: back,
		#2: pad_hint_back,
		]
	
	
	ktable#63 = [
		#1: confirm,
		#2: pad_hint_select,
		]
	
	
	ktable#65 = [
		#1: back,
		#2: pad_hint_back,
		]
	
	
	ktable#66 = [
		#1: confirm,
		#2: pad_hint_select,
		]
	
	
	ktable#67 = [
		#1: shoulders,
		#2: pad_hint_page,
		]
	
	
	ktable#68 = [
		]
	
	
	ktable#69 = [
		#1: confirm,
		#2: pad_hint_select,
		]
	
	
	ktable#98 = [
		#1: 1,
		#2: 0,
		]
	
	
	ktable#99 = [
		#1: -1,
		#2: 0,
		]
	
	
	ktable#100 = [
		#1: 0,
		#2: 1,
		]
	
	
	ktable#101 = [
		]
	
	
	ktable#102 = [
		#1: 0,
		#2: -1,
		]
	
	
	ktable#106 = [
		[pause] = true,
		[core] = true,
		[settings] = true,
		[confirm] = true,
		[modal] = true,
		]
	
	
	ktable#147 = [
		[modal] = true,
		]
	
	
	ktable#148 = [
		[pause] = true,
		[core] = true,
		[stage] = true,
		[tutorial] = true,
		[settings] = true,
		[gameover] = true,
		[menu] = true,
		[confirm] = true,
		]
	
	
	ktable#175 = [
		#1: 0.35,
		#2: 0.35,
		#3: 0.2,
		]
	
	
	ktable#177 = [
		#1: 0.1,
		#2: 0.16,
		#3: 0.07,
		]
	
	
	ktable#179 = [
		#1: 0.12,
		#2: 0.12,
		#3: 0.06,
		]
	
	
	ktable#181 = [
		#1: 0.28,
		#2: 0.3,
		#3: 0.16,
		]
	
	
	ktable#183 = [
		#1: 0.1,
		#2: 0,
		#3: 0.05,
		]
	
	
	ktable#185 = [
		#1: 0.65,
		#2: 0.5,
		#3: 0.55,
		]
	
	
	ktable#187 = [
		#1: 0.3,
		#2: 0.42,
		#3: 0.42,
		]
	
	
	ktable#189 = [
		#1: 0.45,
		#2: 0.28,
		#3: 0.2,
		]
	
	
	ktable#191 = [
		#1: 0.5,
		#2: 0.6,
		#3: 0.32,
		]
	
	
	ktable#193 = [
		#1: 0.22,
		#2: 0.32,
		#3: 0.14,
		]
	
	
	ktable#195 = [
		]
	
	
	ktable#196 = [
		#1: 0.16,
		#2: 0.08,
		#3: 0.07,
		]
	
	
	ktable#231 = [
		[repeatT] = 0,
		[mouseTravel] = 0,
		[lastPadInputT] = -1,
		[dirtyT] = 0,
		[scrollT] = 0,
		]
	
	
	ktable#317 = [
		[1118.0] = xbox,
		[1406.0] = nintendo,
		[1356.0] = playstation,
		]
	
	
	ktable#351 = [
		[insert] = INS,
		[lalt] = ALT,
		[space] = SPACE,
		[pageup] = PGUP,
		[pagedown] = PGDN,
		[return] = ENTER,
		[tab] = TAB,
		[home] = HOME,
		[delete] = DEL,
		[rshift] = SHIFT,
		[lshift] = SHIFT,
		[capslock] = CAPS,
		[ralt] = ALT,
		[end] = END,
		[rctrl] = CTRL,
		[lctrl] = CTRL,
		[backspace] = BKSP,
		[kpenter] = ENTER,
		[escape] = ESC,
		]
	
	
	ktable#355 = [
		[rightstick] = RS,
		[leftstick] = LS,
		[triggerright] = ZR,
		[triggerleft] = ZL,
		[rightshoulder] = R,
		[leftshoulder] = L,
		]
	
	
	ktable#357 = [
		[rightstick] = R3,
		[leftstick] = L3,
		[triggerright] = R2,
		[triggerleft] = L2,
		[rightshoulder] = R1,
		[leftshoulder] = L1,
		]
	
	
	ktable#359 = [
		]
	
	
	ktable#360 = [
		[rightstick] = RS,
		[leftstick] = LS,
		[triggerright] = RT,
		[triggerleft] = LT,
		[rightshoulder] = RB,
		[leftshoulder] = LB,
		]
	
	
	ktable#368 = [
		#1: #..,
		#2: #..,
		#3: .#.,
		#4: ..#,
		#5: ..#,
		]
	
	
	ktable#370 = [
		#1: #..,
		#2: .#.,
		#3: ...,
		#4: ...,
		#5: ...,
		]
	
	
	ktable#372 = [
		#1: .#.,
		#2: .#.,
		#3: ...,
		#4: ...,
		#5: ...,
		]
	
	
	ktable#374 = [
		#1: ...,
		#2: .#.,
		#3: ...,
		#4: .#.,
		#5: #..,
		]
	
	
	ktable#376 = [
		#1: .##,
		#2: ..#,
		#3: ..#,
		#4: ..#,
		#5: .##,
		]
	
	
	ktable#378 = [
		#1: ##.,
		#2: #..,
		#3: #..,
		#4: #..,
		#5: ##.,
		]
	
	
	ktable#380 = [
		#1: ...,
		#2: ###,
		#3: ...,
		#4: ###,
		#5: ...,
		]
	
	
	ktable#382 = [
		#1: ..#,
		#2: ..#,
		#3: .#.,
		#4: #..,
		#5: #..,
		]
	
	
	ktable#384 = [
		#1: ...,
		#2: ...,
		#3: ...,
		#4: .#.,
		#5: #..,
		]
	
	
	ktable#386 = [
		#1: ...,
		#2: ...,
		#3: ...,
		#4: ...,
		#5: .#.,
		]
	
	
	ktable#388 = [
		#1: ...,
		#2: .#.,
		#3: ###,
		#4: .#.,
		#5: ...,
		]
	
	
	ktable#390 = [
		#1: ...,
		#2: ...,
		#3: ###,
		#4: ...,
		#5: ...,
		]
	
	
	ktable#392 = [
		#1: ###,
		#2: #.#,
		#3: ###,
		#4: ..#,
		#5: ##.,
		]
	
	
	ktable#394 = [
		#1: ###,
		#2: #.#,
		#3: ###,
		#4: #.#,
		#5: ###,
		]
	
	
	ktable#396 = [
		#1: ###,
		#2: ..#,
		#3: .#.,
		#4: .#.,
		#5: .#.,
		]
	
	
	ktable#398 = [
		#1: .##,
		#2: #..,
		#3: ###,
		#4: #.#,
		#5: ###,
		]
	
	
	ktable#400 = [
		#1: ###,
		#2: #..,
		#3: ##.,
		#4: ..#,
		#5: ##.,
		]
	
	
	ktable#402 = [
		#1: #.#,
		#2: #.#,
		#3: ###,
		#4: ..#,
		#5: ..#,
		]
	
	
	ktable#404 = [
		#1: ##.,
		#2: ..#,
		#3: .#.,
		#4: ..#,
		#5: ##.,
		]
	
	
	ktable#406 = [
		#1: ##.,
		#2: ..#,
		#3: .#.,
		#4: #..,
		#5: ###,
		]
	
	
	ktable#408 = [
		#1: .#.,
		#2: ##.,
		#3: .#.,
		#4: .#.,
		#5: ###,
		]
	
	
	ktable#410 = [
		#1: ###,
		#2: #.#,
		#3: #.#,
		#4: #.#,
		#5: ###,
		]
	
	
	ktable#412 = [
		#1: ###,
		#2: ..#,
		#3: .#.,
		#4: #..,
		#5: ###,
		]
	
	
	ktable#413 = [
		#1: #.#,
		#2: #.#,
		#3: .#.,
		#4: .#.,
		#5: .#.,
		]
	
	
	ktable#414 = [
		#1: #.#,
		#2: #.#,
		#3: .#.,
		#4: #.#,
		#5: #.#,
		]
	
	
	ktable#416 = [
		#1: #.#,
		#2: #.#,
		#3: ###,
		#4: ###,
		#5: #.#,
		]
	
	
	ktable#418 = [
		#1: #.#,
		#2: #.#,
		#3: #.#,
		#4: #.#,
		#5: .#.,
		]
	
	
	ktable#420 = [
		#1: #.#,
		#2: #.#,
		#3: #.#,
		#4: #.#,
		#5: ###,
		]
	
	
	ktable#422 = [
		#1: ###,
		#2: .#.,
		#3: .#.,
		#4: .#.,
		#5: .#.,
		]
	
	
	ktable#424 = [
		#1: .##,
		#2: #..,
		#3: .#.,
		#4: ..#,
		#5: ##.,
		]
	
	
	ktable#426 = [
		#1: ##.,
		#2: #.#,
		#3: ##.,
		#4: #.#,
		#5: #.#,
		]
	
	
	ktable#428 = [
		#1: .#.,
		#2: #.#,
		#3: #.#,
		#4: ##.,
		#5: .##,
		]
	
	
	ktable#430 = [
		#1: ##.,
		#2: #.#,
		#3: ##.,
		#4: #..,
		#5: #..,
		]
	
	
	ktable#432 = [
		#1: .#.,
		#2: #.#,
		#3: #.#,
		#4: #.#,
		#5: .#.,
		]
	
	
	ktable#434 = [
		#1: ##.,
		#2: #.#,
		#3: #.#,
		#4: #.#,
		#5: #.#,
		]
	
	
	ktable#436 = [
		#1: #.#,
		#2: ###,
		#3: ###,
		#4: #.#,
		#5: #.#,
		]
	
	
	ktable#438 = [
		#1: #..,
		#2: #..,
		#3: #..,
		#4: #..,
		#5: ###,
		]
	
	
	ktable#440 = [
		#1: #.#,
		#2: #.#,
		#3: ##.,
		#4: #.#,
		#5: #.#,
		]
	
	
	ktable#442 = [
		#1: ..#,
		#2: ..#,
		#3: ..#,
		#4: #.#,
		#5: .#.,
		]
	
	
	ktable#444 = [
		#1: ###,
		#2: .#.,
		#3: .#.,
		#4: .#.,
		#5: ###,
		]
	
	
	ktable#446 = [
		#1: #.#,
		#2: #.#,
		#3: ###,
		#4: #.#,
		#5: #.#,
		]
	
	
	ktable#448 = [
		#1: .##,
		#2: #..,
		#3: #.#,
		#4: #.#,
		#5: .##,
		]
	
	
	ktable#450 = [
		#1: ###,
		#2: #..,
		#3: ##.,
		#4: #..,
		#5: #..,
		]
	
	
	ktable#452 = [
		#1: ###,
		#2: #..,
		#3: ##.,
		#4: #..,
		#5: ###,
		]
	
	
	ktable#454 = [
		#1: ##.,
		#2: #.#,
		#3: #.#,
		#4: #.#,
		#5: ##.,
		]
	
	
	ktable#456 = [
		#1: .##,
		#2: #..,
		#3: #..,
		#4: #..,
		#5: .##,
		]
	
	
	ktable#457 = [
		#1: ##.,
		#2: #.#,
		#3: ##.,
		#4: #.#,
		#5: ##.,
		]
	
	
	ktable#458 = [
		]
	
	
	ktable#459 = [
		#1: .#.,
		#2: #.#,
		#3: ###,
		#4: #.#,
		#5: #.#,
		]
	
	
	ktable#460 = [
		#1: .#####.,
		#2: #.....#,
		#3: #.....#,
		#4: #.....#,
		#5: #.....#,
		#6: #.....#,
		#7: .#####.,
		]
	
	
	ktable#462 = [
		#1: ..#..,
		#2: ..##.,
		#3: #####,
		#4: ..##.,
		#5: ..#..,
		]
	
	
	ktable#464 = [
		#1: ..#..,
		#2: .##..,
		#3: #####,
		#4: .##..,
		#5: ..#..,
		]
	
	
	ktable#466 = [
		#1: ..#..,
		#2: ..#..,
		#3: #####,
		#4: .###.,
		#5: ..#..,
		]
	
	
	ktable#468 = [
		#1: ..#..,
		#2: .###.,
		#3: #####,
		#4: ..#..,
		#5: ..#..,
		]
	
	
	ktable#470 = [
		#1: ..#..,
		#2: .###.,
		#3: #.#.#,
		#4: ..#..,
		#5: ..#..,
		]
	
	
	ktable#472 = [
		#1: .....,
		#2: .....,
		#3: #####,
		#4: .....,
		#5: .....,
		]
	
	
	ktable#474 = [
		#1: ..#..,
		#2: ..#..,
		#3: #####,
		#4: ..#..,
		#5: ..#..,
		]
	
	
	ktable#476 = [
		#1: #####..,
		#2: #...###,
		#3: #####.#,
		#4: ..#...#,
		#5: ..#####,
		]
	
	
	ktable#478 = [
		]
	
	
	ktable#479 = [
		#1: #####,
		#2: .....,
		#3: #####,
		#4: .....,
		#5: #####,
		]
	
	
	ktable#480 = [
		#1: .....,
		#2: ..#..,
		#3: .#.#.,
		#4: #...#,
		#5: #####,
		]
	
	
	ktable#481 = [
		#1: #####,
		#2: #...#,
		#3: #...#,
		#4: #...#,
		#5: #####,
		]
	
	
	ktable#482 = [
		#1: .###.,
		#2: #...#,
		#3: #...#,
		#4: #...#,
		#5: .###.,
		]
	
	
	ktable#483 = [
		]
	
	
	ktable#484 = [
		#1: #...#,
		#2: .#.#.,
		#3: ..#..,
		#4: .#.#.,
		#5: #...#,
		]
	
	
	ktable#486 = [
		#1: #...#,
		#2: .#.#.,
		#3: ..#..,
		#4: ..#..,
		#5: ..#..,
		]
	
	
	ktable#488 = [
		#1: #...#,
		#2: .#.#.,
		#3: ..#..,
		#4: .#.#.,
		#5: #...#,
		]
	
	
	ktable#490 = [
		#1: ####.,
		#2: #...#,
		#3: ####.,
		#4: #...#,
		#5: ####.,
		]
	
	
	ktable#492 = [
		]
	
	
	ktable#493 = [
		#1: .###.,
		#2: #...#,
		#3: #####,
		#4: #...#,
		#5: #...#,
		]
	
	
	ktable#494 = [
		#1: ....###....,
		#2: ....###....,
		#3: ....###....,
		#4: ....###....,
		#5: ###########,
		#6: ###########,
		#7: ###########,
		#8: ....###....,
		#9: ....###....,
		#10: ....###....,
		#11: ....###....,
		]
	
	
	ktable#495 = [
		#1: ...#########...,
		#2: .#############.,
		#3: ###############,
		#4: ###############,
		#5: ###############,
		#6: ###############,
		#7: ###############,
		#8: ###############,
		#9: ###############,
		#10: .#############.,
		]
	
	
	ktable#496 = [
		#1: ..###########..,
		#2: .#############.,
		#3: ###############,
		#4: ###############,
		#5: ###############,
		#6: ###############,
		#7: ###############,
		#8: .#############.,
		#9: ..###########..,
		]
	
	
	ktable#497 = [
		#1: ....#####....,
		#2: ..#########..,
		#3: .###########.,
		#4: .###########.,
		#5: #############,
		#6: #############,
		#7: #############,
		#8: #############,
		#9: #############,
		#10: .###########.,
		#11: .###########.,
		#12: ..#########..,
		#13: ....#####....,
		]
	
	
	ktable#498 = [
		#1: ...#####...,
		#2: ..#######..,
		#3: .#########.,
		#4: ###########,
		#5: ###########,
		#6: ###########,
		#7: ###########,
		#8: ###########,
		#9: .#########.,
		#10: ..#######..,
		#11: ...#####...,
		]
	
	
	ktable#504 = [
		]
	
	
	ktable#509 = [
		]
	
	
	ktable#514 = [
		]
	
	
	ktable#517 = [
		#1: classic,
		#2: raised,
		#3: paper,
		#4: ink,
		]
	
	
	ktable#522 = [
		]
	
	
	ktable#530 = [
		]
	
	
	ktable#536 = [
		]
	
	
	ktable#542 = [
		]
	
	
	ktable#548 = [
		]
	
	
	ktable#551 = [
		]
	
	
	ktable#556 = [
		]
	
	
	ktable#564 = [
		]
	
	
	ktable#594 = [
		[pause] = true,
		[scrolllock] = true,
		[numlock] = true,
		[application] = true,
		[menu] = true,
		[printscreen] = true,
		[rgui] = true,
		[lgui] = true,
		[unknown] = true,
		[escape] = true,
		]
	
	
	ktable#597 = [
		#1: escape,
		]
	
	
	ktable#598 = [
		[keyFixed] = true,
		[label] = controls_action_pause,
		[pad] = start,
		[id] = pause,
		]
	
	
	ktable#599 = [
		#1: d,
		]
	
	
	ktable#600 = [
		[id] = dps,
		[label] = controls_action_dps,
		[pad] = rightstick,
		]
	
	
	ktable#601 = [
		#1: e,
		]
	
	
	ktable#602 = [
		[id] = synergy,
		[label] = controls_action_synergy,
		[pad] = back,
		]
	
	
	ktable#603 = [
		#1: f,
		]
	
	
	ktable#604 = [
		[id] = fastforward,
		[label] = controls_action_fastforward,
		[pad] = triggerright,
		]
	
	
	ktable#605 = [
		#1: tab,
		]
	
	
	ktable#606 = [
		[id] = shop,
		[label] = controls_action_shop,
		[pad] = triggerleft,
		]
	
	
	ktable#607 = [
		#1: return,
		]
	
	
	ktable#608 = [
		[id] = battle,
		[label] = controls_action_battle,
		[pad] = rightshoulder,
		]
	
	
	ktable#609 = [
		#1: a,
		]
	
	
	ktable#610 = [
		[id] = absorb,
		[label] = controls_action_absorb,
		[pad] = leftshoulder,
		]
	
	
	ktable#612 = [
		#1: space,
		#2: s,
		]
	
	
	ktable#613 = [
		[id] = spin,
		[label] = controls_action_spin,
		[pad] = x,
		]
	
	
	ktable#614 = [
		[id] = inspect,
		[label] = controls_action_inspect,
		[pad] = y,
		]
	
	
	ktable#615 = [
		[id] = back,
		[label] = controls_action_back,
		[pad] = b,
		]
	
	
	ktable#616 = [
		[id] = confirm,
		[label] = controls_action_confirm,
		[pad] = a,
		]
	
	
	ktable#620 = [
		#1: a,
		#2: b,
		#3: x,
		#4: y,
		#5: leftshoulder,
		#6: rightshoulder,
		#7: triggerleft,
		#8: triggerright,
		#9: back,
		#10: start,
		#11: leftstick,
		#12: rightstick,
		]
	
	
	;;;; instructions ;;;;
	  1	[  0]	KPRI 	  0		0	; slot0 = nil
	  2	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
	  3	[  0]	TDUP 	  2		620	; slot2 = copy table#k620
	  4	[  0]	TSETS	  2	1	621	; slot1.PAD_BUTTONS = slot2
	  5	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
	  6	[  0]	GGET 	  3		619	; slot3 = _env["ipairs"]
	  7	[  0]	TGETS	  5	1	621	; slot5 = slot1.PAD_BUTTONS
	  8	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
	  9	[  0]	JMP  	  6		2	; 	goto 12
	 10	[  0]	KPRI 	  8		2	; slot8 = true
	 11	[  0]	TSETV	  8	2	7	; slot2[slot7] = slot8
	 12	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, <unknown table>.PAD_BUTTONS; slot6, slot7 = ipairs(slot4, <unknown table>.PAD_BUTTONS)
	 13	[  0]	ITERL	  6		-4	; <unknown table>.PAD_BUTTONS = slot6; if slot6 != nil goto 10
	 14	[  0]	TSETS	  2	1	618	; slot1.PAD_BINDABLE = slot2
	 15	[  0]	TNEW 	  3		12	; slot3 = new table( array: 12, dict: 1)
	 16	[  0]	TDUP 	  4		616	; slot4 = copy table#k616
	 17	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	 18	[  0]	TDUP 	  4		615	; slot4 = copy table#k615
	 19	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	 20	[  0]	TDUP 	  4		614	; slot4 = copy table#k614
	 21	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	 22	[  0]	TDUP 	  4		613	; slot4 = copy table#k613
	 23	[  0]	TDUP 	  5		612	; slot5 = copy table#k612
	 24	[  0]	TSETS	  5	4	611	; slot4.keys = slot5
	 25	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	 26	[  0]	TDUP 	  4		610	; slot4 = copy table#k610
	 27	[  0]	TDUP 	  5		609	; slot5 = copy table#k609
	 28	[  0]	TSETS	  5	4	611	; slot4.keys = slot5
	 29	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	 30	[  0]	TDUP 	  4		608	; slot4 = copy table#k608
	 31	[  0]	TDUP 	  5		607	; slot5 = copy table#k607
	 32	[  0]	TSETS	  5	4	611	; slot4.keys = slot5
	 33	[  0]	TSETB	  4	3	6	; slot3[6] = slot4
	 34	[  0]	TDUP 	  4		606	; slot4 = copy table#k606
	 35	[  0]	TDUP 	  5		605	; slot5 = copy table#k605
	 36	[  0]	TSETS	  5	4	611	; slot4.keys = slot5
	 37	[  0]	TSETB	  4	3	7	; slot3[7] = slot4
	 38	[  0]	TDUP 	  4		604	; slot4 = copy table#k604
	 39	[  0]	TDUP 	  5		603	; slot5 = copy table#k603
	 40	[  0]	TSETS	  5	4	611	; slot4.keys = slot5
	 41	[  0]	TSETB	  4	3	8	; slot3[8] = slot4
	 42	[  0]	TDUP 	  4		602	; slot4 = copy table#k602
	 43	[  0]	TDUP 	  5		601	; slot5 = copy table#k601
	 44	[  0]	TSETS	  5	4	611	; slot4.keys = slot5
	 45	[  0]	TSETB	  4	3	9	; slot3[9] = slot4
	 46	[  0]	TDUP 	  4		600	; slot4 = copy table#k600
	 47	[  0]	TDUP 	  5		599	; slot5 = copy table#k599
	 48	[  0]	TSETS	  5	4	611	; slot4.keys = slot5
	 49	[  0]	TSETB	  4	3	10	; slot3[10] = slot4
	 50	[  0]	TDUP 	  4		598	; slot4 = copy table#k598
	 51	[  0]	TDUP 	  5		597	; slot5 = copy table#k597
	 52	[  0]	TSETS	  5	4	611	; slot4.keys = slot5
	 53	[  0]	TSETB	  4	3	11	; slot3[11] = slot4
	 54	[  0]	TSETS	  3	1	617	; slot1.ACTIONS = slot3
	 55	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
	 56	[  0]	GGET 	  4		619	; slot4 = _env["ipairs"]
	 57	[  0]	TGETS	  6	1	617	; slot6 = slot1.ACTIONS
	 58	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
	 59	[  0]	JMP  	  7		2	; 	goto 62
	 60	[  0]	TGETS	  9	8	596	; slot9 = slot8.id
	 61	[  0]	TSETV	  8	3	9	; slot3[<unknown table>.id] = slot8
	 62	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, <unknown table>.ACTIONS; slot7, slot8 = ipairs(slot5, <unknown table>.ACTIONS)
	 63	[  0]	ITERL	  7		-4	; <unknown table>.ACTIONS = slot7; if slot7 != nil goto 60
	 64	[  0]	TSETS	  3	1	595	; slot1.BY_ID = slot3
	 65	[  0]	TDUP 	  4		594	; slot4 = copy table#k594
	 66	[  0]	KSHORT	  5		1	; slot5 = 1
	 67	[  0]	KSHORT	  6		24	; slot6 = 24
	 68	[  0]	KSHORT	  7		1	; slot7 = 1
	 69	[  0]	FORI 	  5		6	; for slot8 = slot5,slot6,slot7 else goto 76
	 70	[  0]	KSTR 	  9		593	; slot9 = "f"
	 71	[  0]	MOV  	 10		8	; slot10 = slot8
	 72	[  0]	CAT  	  9	9	10	; slot9 = slot9 .. slot10
	 73	[  0]	KPRI 	 10		2	; slot10 = true
	 74	[  0]	TSETV	 10	4	9	; slot4[slot9] = slot10
	 75	[  0]	FORL 	  5		-6	; slot8 = slot8 + slot7; if cmp(slot8, sign slot7,  slot6) goto 70
	 76	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
	 77	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
	 78	[  0]	FNEW 	  7		592	; N/A:0-0: 1 args, 0 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  2	[  0]	GGET 	  2		0	; slot2 = _env["ipairs"]
		  3	[  0]	ISTC 	  4		0	; slot4 = slot0; if slot0
		  4	[  0]	JMP  	  4		1	; 	goto 6
		  5	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		  6	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
		  7	[  0]	JMP  	  5		1	; 	goto 9
		  8	[  0]	TSETV	  6	1	5	; slot1[slot5] = slot6
		  9	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5, slot6 = slot2(slot3, slot4)
		 10	[  0]	ITERL	  5		-3	; slot4 = slot5; if slot5 != nil goto 8
		 11	[  0]	RET1 	  1		2	; return slot1
	 79	[  0]	FNEW 	  8		590	; N/A:0-0: 0 args, 2 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		3	; slot0 = _env["ipairs"]
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	TGETS	  2	2	2	; slot2 = uv0"unknown".ACTIONS
		  4	[  0]	CALL 	  0	4	2	; slot0, slot1, slot2 = ipairs(slot1)
		  5	[  0]	JMP  	  3		4	; 	goto 10
		  6	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		  7	[  0]	TGETS	  6	4	1	; slot6 = slot4.id
		  8	[  0]	TGETS	  7	4	0	; slot7 = slot4.pad
		  9	[  0]	TSETV	  7	5	6	; uv1"unknown"[<unknown table>.id] = <unknown table>.pad
		 10	[  0]	ITERC	  3	3	3	; slot3, slot4, slot5 = slot0, slot1, slot2; slot3, slot4 = slot0(slot1, slot2)
		 11	[  0]	ITERL	  3		-6	; slot2 = slot3; if slot3 != nil goto 6
		 12	[  0]	RET0 	  0		1	; return
	 80	[  0]	TSETS	  8	1	591	; slot1.resetPad = slot8
	 81	[  0]	FNEW 	  8		588	; N/A:0-0: 0 args, 3 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		3	; slot0 = _env["ipairs"]
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	TGETS	  2	2	2	; slot2 = uv0"unknown".ACTIONS
		  4	[  0]	CALL 	  0	4	2	; slot0, slot1, slot2 = ipairs(slot1)
		  5	[  0]	JMP  	  3		9	; 	goto 15
		  6	[  0]	TGETS	  5	4	1	; slot5 = slot4.keys
		  7	[  0]	ISF  	   		5	; if not <unknown table>.keys
		  8	[  0]	JMP  	  6		6	; 	goto 15
		  9	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 10	[  0]	TGETS	  6	4	0	; slot6 = slot4.id
		 11	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		 12	[  0]	TGETS	  9	4	1	; slot9 = slot4.keys
		 13	[  0]	CALL 	  7	2	2	; slot7 = uv2"unknown"(slot8)
		 14	[  0]	TSETV	  7	5	6	; uv1"unknown"[<unknown table>.id] = uv2"unknown"
		 15	[  0]	ITERC	  3	3	3	; slot3, slot4, slot5 = slot0, slot1, slot2; slot3, slot4 = slot0(slot1, slot2)
		 16	[  0]	ITERL	  3		-11	; slot2 = slot3; if slot3 != nil goto 6
		 17	[  0]	RET0 	  0		1	; return
	 82	[  0]	TSETS	  8	1	589	; slot1.resetKeys = slot8
	 83	[  0]	FNEW 	  8		586	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".resetPad
		  3	[  0]	CALL 	  0	1	1	;  = uv0"unknown".resetPad()
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".resetKeys
		  6	[  0]	CALL 	  0	1	1	;  = uv0"unknown".resetKeys()
		  7	[  0]	RET0 	  0		1	; return
	 84	[  0]	TSETS	  8	1	587	; slot1.reset = slot8
	 85	[  0]	FNEW 	  8		584	; N/A:0-0: 1 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		2	; slot1 = _env["type"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  4	[  0]	ISNES	  1		1	; if slot1 ~= "string"
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	ISNES	  0		0	; if slot0 ~= ""
		  7	[  0]	JMP  	  1		2	; 	goto 10
		  8	[  0]	KPRI 	  1		2	; slot1 = true
		  9	[  0]	RET1 	  1		2	; return slot1
		 10	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 11	[  0]	TGETV	  1	1	0	; slot1 = uv0"unknown"[slot0]
		 12	[  0]	ISEQP	  1		2	; if slot1 == true
		 13	[  0]	JMP  	  1		2	; 	goto 16
		 14	[  0]	KPRI 	  1		1	; slot1 = false
		 15	[  0]	JMP  	  2		1	; 	goto 17
		 16	[  0]	KPRI 	  1		2	; slot1 = true
		 17	[  0]	RET1 	  1		2	; return slot1
	 86	[  0]	TSETS	  8	1	585	; slot1.isKeyReserved = slot8
	 87	[  0]	FNEW 	  8		582	; N/A:0-0: 1 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETV	  1	1	0	; slot1 = uv0"unknown"[slot0]
		  3	[  0]	RET1 	  1		2	; return slot1
	 88	[  0]	TSETS	  8	1	583	; slot1.padButton = slot8
	 89	[  0]	FNEW 	  8		580	; N/A:0-0: 1 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETV	  1	1	0	; slot1 = uv0"unknown"[slot0]
		  3	[  0]	RET1 	  1		2	; return slot1
	 90	[  0]	TSETS	  8	1	581	; slot1.keyList = slot8
	 91	[  0]	FNEW 	  8		578	; N/A:0-0: 1 args, 2 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		2	; slot1 = _env["ipairs"]
		  2	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  3	[  0]	TGETS	  3	3	1	; slot3 = uv0"unknown".ACTIONS
		  4	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = ipairs(slot2)
		  5	[  0]	JMP  	  4		7	; 	goto 13
		  6	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		  7	[  0]	TGETS	  7	5	0	; slot7 = slot5.id
		  8	[  0]	TGETV	  6	6	7	; slot6 = uv1"unknown"[<unknown table>.id]
		  9	[  0]	ISNEV	  6		0	; if slot6 ~= slot0
		 10	[  0]	JMP  	  6		2	; 	goto 13
		 11	[  0]	TGETS	  6	5	0	; slot6 = slot5.id
		 12	[  0]	RET1 	  6		2	; return <unknown table>.id
		 13	[  0]	ITERC	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, uv0"unknown".ACTIONS; slot4, slot5 = slot1(slot2, uv0"unknown".ACTIONS)
		 14	[  0]	ITERL	  4		-9	; uv0"unknown".ACTIONS = slot4; if slot4 != nil goto 6
		 15	[  0]	KPRI 	  1		0	; slot1 = nil
		 16	[  0]	RET1 	  1		2	; return slot1
	 92	[  0]	TSETS	  8	1	579	; slot1.actionForPad = slot8
	 93	[  0]	FNEW 	  8		576	; N/A:0-0: 1 args, 2 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISNEP	  0		0	; if slot0 ~= nil
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KPRI 	  1		0	; slot1 = nil
		  4	[  0]	RET1 	  1		2	; return slot1
		  5	[  0]	GGET 	  1		2	; slot1 = _env["ipairs"]
		  6	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  7	[  0]	TGETS	  3	3	1	; slot3 = uv0"unknown".ACTIONS
		  8	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = ipairs(slot2)
		  9	[  0]	JMP  	  4		15	; 	goto 25
		 10	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 11	[  0]	TGETS	  7	5	0	; slot7 = slot5.id
		 12	[  0]	TGETV	  6	6	7	; slot6 = uv1"unknown"[<unknown table>.id]
		 13	[  0]	ISF  	   		6	; if not slot6
		 14	[  0]	JMP  	  7		10	; 	goto 25
		 15	[  0]	GGET 	  7		2	; slot7 = _env["ipairs"]
		 16	[  0]	MOV  	  9		6	; slot9 = slot6
		 17	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = ipairs(slot8)
		 18	[  0]	JMP  	 10		4	; 	goto 23
		 19	[  0]	ISNEV	 11		0	; if slot11 ~= slot0
		 20	[  0]	JMP  	 12		2	; 	goto 23
		 21	[  0]	TGETS	 12	5	0	; slot12 = slot5.id
		 22	[  0]	RET1 	 12		2	; return <unknown table>.id
		 23	[  0]	ITERC	 10	3	3	; slot10, slot11, slot12 = ipairs, slot8, slot9; slot10, slot11 = ipairs(slot8, slot9)
		 24	[  0]	ITERL	 10		-6	; slot9 = slot10; if slot10 != nil goto 19
		 25	[  0]	ITERC	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, uv0"unknown".ACTIONS; slot4, slot5 = slot1(slot2, uv0"unknown".ACTIONS)
		 26	[  0]	ITERL	  4		-17	; uv0"unknown".ACTIONS = slot4; if slot4 != nil goto 10
		 27	[  0]	KPRI 	  1		0	; slot1 = nil
		 28	[  0]	RET1 	  1		2	; return slot1
	 94	[  0]	TSETS	  8	1	577	; slot1.actionForKey = slot8
	 95	[  0]	FNEW 	  8		574	; N/A:0-0: 2 args, 4 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETV	  2	2	0	; slot2 = uv0"unknown"[slot0]
		  3	[  0]	ISF  	   		2	; if not slot2
		  4	[  0]	JMP  	  2		4	; 	goto 9
		  5	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  6	[  0]	TGETV	  2	2	1	; slot2 = uv1"unknown"[slot1]
		  7	[  0]	IST  	   		2	; if slot2
		  8	[  0]	JMP  	  2		2	; 	goto 11
		  9	[  0]	KPRI 	  2		1	; slot2 = false
		 10	[  0]	RET1 	  2		2	; return slot2
		 11	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 12	[  0]	TGETV	  2	2	0	; slot2 = uv2"unknown"[slot0]
		 13	[  0]	ISNEV	  2		1	; if slot2 ~= slot1
		 14	[  0]	JMP  	  3		3	; 	goto 18
		 15	[  0]	KPRI 	  3		2	; slot3 = true
		 16	[  0]	KPRI 	  4		0	; slot4 = nil
		 17	[  0]	RET  	  3		3	; return slot3, slot4
		 18	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
		 19	[  0]	TGETS	  3	3	0	; slot3 = uv3"unknown".actionForPad
		 20	[  0]	MOV  	  5		1	; slot5 = slot1
		 21	[  0]	CALL 	  3	2	2	; slot3 = uv3"unknown".actionForPad(slot4)
		 22	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 23	[  0]	TSETV	  1	4	0	; uv2"unknown"[slot0] = slot1
		 24	[  0]	ISF  	   		3	; if not uv3"unknown".actionForPad
		 25	[  0]	JMP  	  4		4	; 	goto 30
		 26	[  0]	ISEQV	  3		0	; if uv3"unknown".actionForPad == slot0
		 27	[  0]	JMP  	  4		2	; 	goto 30
		 28	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 29	[  0]	TSETV	  2	4	3	; uv2"unknown"[uv3"unknown".actionForPad] = slot2
		 30	[  0]	KPRI 	  4		2	; slot4 = true
		 31	[  0]	MOV  	  5		3	; slot5 = uv3"unknown".actionForPad
		 32	[  0]	RET  	  4		3	; return slot4, uv3"unknown".actionForPad
	 96	[  0]	TSETS	  8	1	575	; slot1.setPad = slot8
	 97	[  0]	FNEW 	  8		572	; N/A:0-0: 2 args, 3 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETV	  2	2	0	; slot2 = uv0"unknown"[slot0]
		  3	[  0]	ISF  	   		2	; if not slot2
		  4	[  0]	JMP  	  3		12	; 	goto 17
		  5	[  0]	TGETS	  3	2	4	; slot3 = slot2.keys
		  6	[  0]	ISF  	   		3	; if not <unknown table>.keys
		  7	[  0]	JMP  	  3		9	; 	goto 17
		  8	[  0]	TGETS	  3	2	3	; slot3 = slot2.keyFixed
		  9	[  0]	IST  	   		3	; if <unknown table>.keyFixed
		 10	[  0]	JMP  	  4		6	; 	goto 17
		 11	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 12	[  0]	TGETS	  3	3	2	; slot3 = uv1"unknown".isKeyReserved
		 13	[  0]	MOV  	  5		1	; slot5 = slot1
		 14	[  0]	CALL 	  3	2	2	; slot3 = uv1"unknown".isKeyReserved(slot4)
		 15	[  0]	ISF  	   		3	; if not uv1"unknown".isKeyReserved
		 16	[  0]	JMP  	  4		2	; 	goto 19
		 17	[  0]	KPRI 	  3		1	; slot3 = false
		 18	[  0]	RET1 	  3		2	; return slot3
		 19	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 20	[  0]	TGETV	  3	3	0	; slot3 = uv2"unknown"[slot0]
		 21	[  0]	IST  	   		3	; if slot3
		 22	[  0]	JMP  	  4		1	; 	goto 24
		 23	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 24	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 25	[  0]	TGETS	  4	4	1	; slot4 = uv1"unknown".actionForKey
		 26	[  0]	MOV  	  6		1	; slot6 = slot1
		 27	[  0]	CALL 	  4	2	2	; slot4 = uv1"unknown".actionForKey(slot5)
		 28	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 29	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		 30	[  0]	TSETB	  1	6	1	; slot6[1] = slot1
		 31	[  0]	TSETV	  6	5	0	; uv2"unknown"[slot0] = slot6
		 32	[  0]	ISF  	   		4	; if not uv1"unknown".actionForKey
		 33	[  0]	JMP  	  5		42	; 	goto 76
		 34	[  0]	ISEQV	  4		0	; if uv1"unknown".actionForKey == slot0
		 35	[  0]	JMP  	  5		40	; 	goto 76
		 36	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 37	[  0]	TGETV	  5	5	4	; slot5 = uv0"unknown"[uv1"unknown".actionForKey]
		 38	[  0]	ISF  	   		5	; if not slot5
		 39	[  0]	JMP  	  6		7	; 	goto 47
		 40	[  0]	TGETS	  6	5	3	; slot6 = slot5.keyFixed
		 41	[  0]	ISF  	   		6	; if not <unknown table>.keyFixed
		 42	[  0]	JMP  	  7		4	; 	goto 47
		 43	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 44	[  0]	TSETV	  3	6	0	; uv2"unknown"[slot0] = slot3
		 45	[  0]	KPRI 	  6		1	; slot6 = false
		 46	[  0]	RET1 	  6		2	; return slot6
		 47	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		 48	[  0]	GGET 	  7		0	; slot7 = _env["ipairs"]
		 49	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
		 50	[  0]	TGETV	  9	9	4	; slot9 = uv2"unknown"[uv1"unknown".actionForKey]
		 51	[  0]	IST  	   		9	; if slot9
		 52	[  0]	JMP  	 10		1	; 	goto 54
		 53	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
		 54	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = ipairs(slot8)
		 55	[  0]	JMP  	 10		5	; 	goto 61
		 56	[  0]	ISEQV	 11		1	; if slot11 == slot1
		 57	[  0]	JMP  	 12		3	; 	goto 61
		 58	[  0]	LEN  	 12		6	; slot12 = #slot6
		 59	[  0]	ADDVN	 12	12	0	; slot12 = slot12 + 1
		 60	[  0]	TSETV	 11	6	12	; slot6[slot12] = slot11
		 61	[  0]	ITERC	 10	3	3	; slot10, slot11, slot12 = ipairs, slot8, slot9; slot10, slot11 = ipairs(slot8, slot9)
		 62	[  0]	ITERL	 10		-7	; slot9 = slot10; if slot10 != nil goto 56
		 63	[  0]	LEN  	  7		6	; slot7 = #slot6
		 64	[  0]	ISNEN	  7		1	; if slot7 ~= 0
		 65	[  0]	JMP  	  7		8	; 	goto 74
		 66	[  0]	TGETB	  7	3	1	; slot7 = slot3[1]
		 67	[  0]	ISF  	   		7	; if not slot7
		 68	[  0]	JMP  	  8		5	; 	goto 74
		 69	[  0]	TGETB	  7	3	1	; slot7 = slot3[1]
		 70	[  0]	ISEQV	  7		1	; if slot7 == slot1
		 71	[  0]	JMP  	  7		2	; 	goto 74
		 72	[  0]	TGETB	  7	3	1	; slot7 = slot3[1]
		 73	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		 74	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		 75	[  0]	TSETV	  6	7	4	; uv2"unknown"[uv1"unknown".actionForKey] = slot6
		 76	[  0]	KPRI 	  5		2	; slot5 = true
		 77	[  0]	MOV  	  6		4	; slot6 = uv1"unknown".actionForKey
		 78	[  0]	RET  	  5		3	; return slot5, uv1"unknown".actionForKey
	 98	[  0]	TSETS	  8	1	573	; slot1.setKey = slot8
	 99	[  0]	FNEW 	  8		570	; N/A:0-0: 0 args, 4 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
		  2	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  3	[  0]	GGET 	  2		4	; slot2 = _env["ipairs"]
		  4	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  5	[  0]	TGETS	  4	4	3	; slot4 = uv0"unknown".ACTIONS
		  6	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
		  7	[  0]	JMP  	  5		18	; 	goto 26
		  8	[  0]	TGETS	  7	6	2	; slot7 = slot6.id
		  9	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 10	[  0]	TGETS	  9	6	2	; slot9 = slot6.id
		 11	[  0]	TGETV	  8	8	9	; slot8 = uv1"unknown"[<unknown table>.id]
		 12	[  0]	TSETV	  8	0	7	; slot0[<unknown table>.id] = slot8
		 13	[  0]	TGETS	  7	6	1	; slot7 = slot6.keys
		 14	[  0]	ISF  	   		7	; if not <unknown table>.keys
		 15	[  0]	JMP  	  8		10	; 	goto 26
		 16	[  0]	TGETS	  7	6	0	; slot7 = slot6.keyFixed
		 17	[  0]	IST  	   		7	; if <unknown table>.keyFixed
		 18	[  0]	JMP  	  7		7	; 	goto 26
		 19	[  0]	TGETS	  7	6	2	; slot7 = slot6.id
		 20	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
		 21	[  0]	UGET 	 10		3	; slot10 = uv3"unknwon"
		 22	[  0]	TGETS	 11	6	2	; slot11 = slot6.id
		 23	[  0]	TGETV	 10	10	11	; slot10 = uv3"unknown"[<unknown table>.id]
		 24	[  0]	CALL 	  8	2	2	; slot8 = uv2"unknown"(<unknown table>.id)
		 25	[  0]	TSETV	  8	1	7	; slot1[<unknown table>.id] = uv2"unknown"
		 26	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, uv0"unknown".ACTIONS; slot5, slot6 = slot2(slot3, uv0"unknown".ACTIONS)
		 27	[  0]	ITERL	  5		-20	; uv0"unknown".ACTIONS = slot5; if slot5 != nil goto 8
		 28	[  0]	MOV  	  2		0	; slot2 = slot0
		 29	[  0]	MOV  	  3		1	; slot3 = slot1
		 30	[  0]	RET  	  2		3	; return slot2, slot3
	100	[  0]	TSETS	  8	1	571	; slot1.serialize = slot8
	101	[  0]	FNEW 	  8		568	; N/A:0-0: 2 args, 4 upvalues, 21 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	12	; slot2 = uv0"unknown".reset
		  3	[  0]	CALL 	  2	1	1	;  = uv0"unknown".reset()
		  4	[  0]	GGET 	  2		11	; slot2 = _env["type"]
		  5	[  0]	MOV  	  4		0	; slot4 = slot0
		  6	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  7	[  0]	ISNES	  2		10	; if slot2 ~= "table"
		  8	[  0]	JMP  	  2		81	; 	goto 90
		  9	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		 10	[  0]	KPRI 	  3		2	; slot3 = true
		 11	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 12	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 13	[  0]	GGET 	  6		9	; slot6 = _env["ipairs"]
		 14	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 15	[  0]	TGETS	  8	8	8	; slot8 = uv0"unknown".ACTIONS
		 16	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		 17	[  0]	JMP  	  9		27	; 	goto 45
		 18	[  0]	TGETS	 11	10	7	; slot11 = slot10.id
		 19	[  0]	TGETV	 11	0	11	; slot11 = slot0[<unknown table>.id]
		 20	[  0]	ISNEP	 11		0	; if slot11 ~= nil
		 21	[  0]	JMP  	 12		4	; 	goto 26
		 22	[  0]	LEN  	 12		5	; slot12 = #slot5
		 23	[  0]	ADDVN	 12	12	0	; slot12 = slot12 + 1
		 24	[  0]	TSETV	 10	5	12	; slot5[slot12] = slot10
		 25	[  0]	JMP  	 12		19	; 	goto 45
		 26	[  0]	GGET 	 12		11	; slot12 = _env["type"]
		 27	[  0]	MOV  	 14		11	; slot14 = slot11
		 28	[  0]	CALL 	 12	2	2	; slot12 = type(slot13)
		 29	[  0]	ISNES	 12		6	; if type ~= "string"
		 30	[  0]	JMP  	 12		7	; 	goto 38
		 31	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		 32	[  0]	TGETV	 12	12	11	; slot12 = uv1"unknown"[slot11]
		 33	[  0]	ISF  	   		12	; if not slot12
		 34	[  0]	JMP  	 12		3	; 	goto 38
		 35	[  0]	TGETV	 12	2	11	; slot12 = slot2[slot11]
		 36	[  0]	ISF  	   		12	; if not slot12
		 37	[  0]	JMP  	 13		3	; 	goto 41
		 38	[  0]	KPRI 	  3		1	; slot3 = false
		 39	[  0]	JMP  	  6		7	; 	goto 47
		 40	[  0]	JMP  	 12		4	; 	goto 45
		 41	[  0]	KPRI 	 12		2	; slot12 = true
		 42	[  0]	TSETV	 12	2	11	; slot2[slot11] = slot12
		 43	[  0]	TGETS	 12	10	7	; slot12 = slot10.id
		 44	[  0]	TSETV	 11	4	12	; slot4[<unknown table>.id] = slot11
		 45	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, uv0"unknown".ACTIONS; slot9, slot10 = ipairs(slot7, uv0"unknown".ACTIONS)
		 46	[  0]	ITERL	  9		-29	; uv0"unknown".ACTIONS = slot9; if slot9 != nil goto 18
		 47	[  0]	ISF  	   		3	; if not slot3
		 48	[  0]	JMP  	  6		31	; 	goto 80
		 49	[  0]	GGET 	  6		9	; slot6 = _env["ipairs"]
		 50	[  0]	MOV  	  8		5	; slot8 = slot5
		 51	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		 52	[  0]	JMP  	  9		25	; 	goto 78
		 53	[  0]	TGETS	 11	10	5	; slot11 = slot10.pad
		 54	[  0]	TGETV	 12	2	11	; slot12 = slot2[<unknown table>.pad]
		 55	[  0]	ISF  	   		12	; if not slot12
		 56	[  0]	JMP  	 13		13	; 	goto 70
		 57	[  0]	KPRI 	 11		0	; slot11 = nil
		 58	[  0]	GGET 	 12		9	; slot12 = _env["ipairs"]
		 59	[  0]	UGET 	 14		0	; slot14 = uv0"unknwon"
		 60	[  0]	TGETS	 14	14	4	; slot14 = uv0"unknown".PAD_BUTTONS
		 61	[  0]	CALL 	 12	4	2	; slot12, slot13, slot14 = ipairs(slot13)
		 62	[  0]	JMP  	 15		5	; 	goto 68
		 63	[  0]	TGETV	 17	2	16	; slot17 = slot2[slot16]
		 64	[  0]	IST  	   		17	; if slot17
		 65	[  0]	JMP  	 17		2	; 	goto 68
		 66	[  0]	MOV  	 11		16	; slot11 = slot16
		 67	[  0]	JMP  	 12		2	; 	goto 70
		 68	[  0]	ITERC	 15	3	3	; slot15, slot16, slot17 = ipairs, slot13, uv0"unknown".PAD_BUTTONS; slot15, slot16 = ipairs(slot13, uv0"unknown".PAD_BUTTONS)
		 69	[  0]	ITERL	 15		-7	; uv0"unknown".PAD_BUTTONS = slot15; if slot15 != nil goto 63
		 70	[  0]	IST  	   		11	; if slot11
		 71	[  0]	JMP  	 12		2	; 	goto 74
		 72	[  0]	KPRI 	  3		1	; slot3 = false
		 73	[  0]	JMP  	  6		6	; 	goto 80
		 74	[  0]	KPRI 	 12		2	; slot12 = true
		 75	[  0]	TSETV	 12	2	11	; slot2[slot11] = slot12
		 76	[  0]	TGETS	 12	10	7	; slot12 = slot10.id
		 77	[  0]	TSETV	 11	4	12	; slot4[<unknown table>.id] = slot11
		 78	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, slot8; slot9, slot10 = ipairs(slot7, slot8)
		 79	[  0]	ITERL	  9		-27	; slot8 = slot9; if slot9 != nil goto 53
		 80	[  0]	ISF  	   		3	; if not slot3
		 81	[  0]	JMP  	  6		8	; 	goto 90
		 82	[  0]	GGET 	  6		3	; slot6 = _env["pairs"]
		 83	[  0]	MOV  	  8		4	; slot8 = slot4
		 84	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = pairs(slot7)
		 85	[  0]	ISNEXT	  9		2	; Verify ITERN at 88; goto 88
		 86	[  0]	UGET 	 11		2	; slot11 = uv2"unknwon"
		 87	[  0]	TSETV	 10	11	9	; uv2"unknown"[slot9] = slot10
		 88	[  0]	ITERN	  9	3	3	; slot9, slot10, slot11 = pairs, slot7, slot8; slot9, slot10 = pairs(slot7, slot8)
		 89	[  0]	ITERL	  9		-4	; slot8 = slot9; if slot9 != nil goto 86
		 90	[  0]	GGET 	  2		11	; slot2 = _env["type"]
		 91	[  0]	MOV  	  4		1	; slot4 = slot1
		 92	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		 93	[  0]	ISNES	  2		10	; if slot2 ~= "table"
		 94	[  0]	JMP  	  2		105	; 	goto 200
		 95	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		 96	[  0]	KPRI 	  3		2	; slot3 = true
		 97	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 98	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 99	[  0]	GGET 	  6		9	; slot6 = _env["ipairs"]
		100	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		101	[  0]	TGETS	  8	8	8	; slot8 = uv0"unknown".ACTIONS
		102	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		103	[  0]	JMP  	  9		61	; 	goto 165
		104	[  0]	TGETS	 11	10	2	; slot11 = slot10.keys
		105	[  0]	ISF  	   		11	; if not <unknown table>.keys
		106	[  0]	JMP  	 12		58	; 	goto 165
		107	[  0]	TGETS	 11	10	1	; slot11 = slot10.keyFixed
		108	[  0]	ISF  	   		11	; if not <unknown table>.keyFixed
		109	[  0]	JMP  	 12		3	; 	goto 113
		110	[  0]	TGETS	 11	10	2	; slot11 = slot10.keys
		111	[  0]	IST  	   		11	; if <unknown table>.keys
		112	[  0]	JMP  	 12		2	; 	goto 115
		113	[  0]	TGETS	 11	10	7	; slot11 = slot10.id
		114	[  0]	TGETV	 11	1	11	; slot11 = slot1[<unknown table>.id]
		115	[  0]	ISNEP	 11		0	; if slot11 ~= nil
		116	[  0]	JMP  	 12		4	; 	goto 121
		117	[  0]	LEN  	 12		5	; slot12 = #slot5
		118	[  0]	ADDVN	 12	12	0	; slot12 = slot12 + 1
		119	[  0]	TSETV	 10	5	12	; slot5[slot12] = slot10
		120	[  0]	JMP  	 12		44	; 	goto 165
		121	[  0]	GGET 	 12		11	; slot12 = _env["type"]
		122	[  0]	MOV  	 14		11	; slot14 = slot11
		123	[  0]	CALL 	 12	2	2	; slot12 = type(slot13)
		124	[  0]	ISEQS	 12		10	; if type == "table"
		125	[  0]	JMP  	 12		3	; 	goto 129
		126	[  0]	KPRI 	  3		1	; slot3 = false
		127	[  0]	JMP  	  6		39	; 	goto 167
		128	[  0]	JMP  	 12		36	; 	goto 165
		129	[  0]	TNEW 	 12		0	; slot12 = new table( array: 0, dict: 1)
		130	[  0]	GGET 	 13		9	; slot13 = _env["ipairs"]
		131	[  0]	MOV  	 15		11	; slot15 = slot11
		132	[  0]	CALL 	 13	4	2	; slot13, slot14, slot15 = ipairs(slot14)
		133	[  0]	JMP  	 16		24	; 	goto 158
		134	[  0]	GGET 	 18		11	; slot18 = _env["type"]
		135	[  0]	MOV  	 20		17	; slot20 = slot17
		136	[  0]	CALL 	 18	2	2	; slot18 = type(slot19)
		137	[  0]	ISNES	 18		6	; if type ~= "string"
		138	[  0]	JMP  	 18		12	; 	goto 151
		139	[  0]	TGETV	 18	2	17	; slot18 = slot2[slot17]
		140	[  0]	IST  	   		18	; if slot18
		141	[  0]	JMP  	 19		9	; 	goto 151
		142	[  0]	TGETS	 18	10	1	; slot18 = slot10.keyFixed
		143	[  0]	IST  	   		18	; if <unknown table>.keyFixed
		144	[  0]	JMP  	 18		8	; 	goto 153
		145	[  0]	UGET 	 18		0	; slot18 = uv0"unknwon"
		146	[  0]	TGETS	 18	18	0	; slot18 = uv0"unknown".isKeyReserved
		147	[  0]	MOV  	 20		17	; slot20 = slot17
		148	[  0]	CALL 	 18	2	2	; slot18 = uv0"unknown".isKeyReserved(slot19)
		149	[  0]	ISF  	   		18	; if not uv0"unknown".isKeyReserved
		150	[  0]	JMP  	 19		2	; 	goto 153
		151	[  0]	KPRI 	  3		1	; slot3 = false
		152	[  0]	JMP  	 13		7	; 	goto 160
		153	[  0]	KPRI 	 18		2	; slot18 = true
		154	[  0]	TSETV	 18	2	17	; slot2[slot17] = slot18
		155	[  0]	LEN  	 18		12	; slot18 = #slot12
		156	[  0]	ADDVN	 18	18	0	; slot18 = slot18 + 1
		157	[  0]	TSETV	 17	12	18	; slot12[slot18] = slot17
		158	[  0]	ITERC	 16	3	3	; slot16, slot17, slot18 = ipairs, slot14, slot15; slot16, slot17 = ipairs(slot14, slot15)
		159	[  0]	ITERL	 16		-26	; slot15 = slot16; if slot16 != nil goto 134
		160	[  0]	IST  	   		3	; if slot3
		161	[  0]	JMP  	 13		1	; 	goto 163
		162	[  0]	JMP  	  6		4	; 	goto 167
		163	[  0]	TGETS	 13	10	7	; slot13 = slot10.id
		164	[  0]	TSETV	 12	4	13	; slot4[<unknown table>.id] = slot12
		165	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, uv0"unknown".ACTIONS; slot9, slot10 = ipairs(slot7, uv0"unknown".ACTIONS)
		166	[  0]	ITERL	  9		-63	; uv0"unknown".ACTIONS = slot9; if slot9 != nil goto 104
		167	[  0]	ISF  	   		3	; if not slot3
		168	[  0]	JMP  	  6		31	; 	goto 200
		169	[  0]	GGET 	  6		9	; slot6 = _env["ipairs"]
		170	[  0]	MOV  	  8		5	; slot8 = slot5
		171	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		172	[  0]	JMP  	  9		17	; 	goto 190
		173	[  0]	TNEW 	 11		0	; slot11 = new table( array: 0, dict: 1)
		174	[  0]	GGET 	 12		9	; slot12 = _env["ipairs"]
		175	[  0]	TGETS	 14	10	2	; slot14 = slot10.keys
		176	[  0]	CALL 	 12	4	2	; slot12, slot13, slot14 = ipairs(<unknown table>.id)
		177	[  0]	JMP  	 15		8	; 	goto 186
		178	[  0]	TGETV	 17	2	16	; slot17 = slot2[slot16]
		179	[  0]	IST  	   		17	; if slot17
		180	[  0]	JMP  	 17		5	; 	goto 186
		181	[  0]	KPRI 	 17		2	; slot17 = true
		182	[  0]	TSETV	 17	2	16	; slot2[slot16] = slot17
		183	[  0]	LEN  	 17		11	; slot17 = #slot11
		184	[  0]	ADDVN	 17	17	0	; slot17 = slot17 + 1
		185	[  0]	TSETV	 16	11	17	; slot11[slot17] = slot16
		186	[  0]	ITERC	 15	3	3	; slot15, slot16, slot17 = ipairs, <unknown table>.id, <unknown table>.keys; slot15, slot16 = ipairs(<unknown table>.id, <unknown table>.keys)
		187	[  0]	ITERL	 15		-10	; <unknown table>.keys = slot15; if slot15 != nil goto 178
		188	[  0]	TGETS	 12	10	7	; slot12 = slot10.id
		189	[  0]	TSETV	 11	4	12	; slot4[<unknown table>.id] = slot11
		190	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, slot8; slot9, slot10 = ipairs(slot7, slot8)
		191	[  0]	ITERL	  9		-19	; slot8 = slot9; if slot9 != nil goto 173
		192	[  0]	GGET 	  6		3	; slot6 = _env["pairs"]
		193	[  0]	MOV  	  8		4	; slot8 = slot4
		194	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = pairs(slot7)
		195	[  0]	ISNEXT	  9		2	; Verify ITERN at 198; goto 198
		196	[  0]	UGET 	 11		3	; slot11 = uv3"unknwon"
		197	[  0]	TSETV	 10	11	9	; uv3"unknown"[slot9] = slot10
		198	[  0]	ITERN	  9	3	3	; slot9, slot10, slot11 = pairs, slot7, slot8; slot9, slot10 = pairs(slot7, slot8)
		199	[  0]	ITERL	  9		-4	; slot8 = slot9; if slot9 != nil goto 196
		200	[  0]	RET0 	  0		1	; return
	102	[  0]	TSETS	  8	1	569	; slot1.load = slot8
	103	[  0]	TGETS	  8	1	587	; slot8 = slot1.reset
	104	[  0]	CALL 	  8	1	1	;  = <unknown table>.reset()
	105	[  0]	MOV  	  0		1	; slot0 = slot1
	106	[  0]	UCLO 	  1		0	; nil uvs >= r1; goto 107
	107	[  0]	KPRI 	  1		0	; slot1 = nil
	108	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
	109	[  0]	FNEW 	  3		567	; N/A:0-0: 2 args, 0 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		1	; slot2 = _env["tonumber"]
		  2	[  0]	MOV  	  6		0	; slot6 = slot0
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.sub
		  4	[  0]	KSHORT	  7		1	; slot7 = 1
		  5	[  0]	KSHORT	  8		2	; slot8 = 2
		  6	[  0]	CALL 	  4	2	4	; slot4 = <unknown table>.sub(slot5, slot6, slot7)
		  7	[  0]	KSHORT	  5		16	; slot5 = 16
		  8	[  0]	CALL 	  2	2	3	; slot2 = tonumber(slot3, slot4)
		  9	[  0]	DIVVN	  2	2	0	; slot2 = slot2 / 255
		 10	[  0]	GGET 	  3		1	; slot3 = _env["tonumber"]
		 11	[  0]	MOV  	  7		0	; slot7 = slot0
		 12	[  0]	TGETS	  5	0	0	; slot5 = slot0.sub
		 13	[  0]	KSHORT	  8		3	; slot8 = 3
		 14	[  0]	KSHORT	  9		4	; slot9 = 4
		 15	[  0]	CALL 	  5	2	4	; slot5 = <unknown table>.sub(slot6, slot7, slot8)
		 16	[  0]	KSHORT	  6		16	; slot6 = 16
		 17	[  0]	CALL 	  3	2	3	; slot3 = tonumber(slot4, <unknown table>.sub)
		 18	[  0]	DIVVN	  3	3	0	; slot3 = slot3 / 255
		 19	[  0]	GGET 	  4		1	; slot4 = _env["tonumber"]
		 20	[  0]	MOV  	  8		0	; slot8 = slot0
		 21	[  0]	TGETS	  6	0	0	; slot6 = slot0.sub
		 22	[  0]	KSHORT	  9		5	; slot9 = 5
		 23	[  0]	KSHORT	 10		6	; slot10 = 6
		 24	[  0]	CALL 	  6	2	4	; slot6 = <unknown table>.sub(slot7, slot8, slot9)
		 25	[  0]	KSHORT	  7		16	; slot7 = 16
		 26	[  0]	CALL 	  4	2	3	; slot4 = tonumber(<unknown table>.sub, <unknown table>.sub)
		 27	[  0]	DIVVN	  4	4	0	; slot4 = tonumber / 255
		 28	[  0]	TNEW 	  5		5	; slot5 = new table( array: 5, dict: 1)
		 29	[  0]	TSETB	  2	5	1	; slot5[1] = slot2
		 30	[  0]	TSETB	  3	5	2	; slot5[2] = slot3
		 31	[  0]	TSETB	  4	5	3	; slot5[3] = slot4
		 32	[  0]	ISTC 	  6		1	; slot6 = slot1; if slot1
		 33	[  0]	JMP  	  6		1	; 	goto 35
		 34	[  0]	KSHORT	  6		1	; slot6 = 1
		 35	[  0]	TSETB	  6	5	4	; slot5[4] = slot6
		 36	[  0]	RET1 	  5		2	; return slot5
	110	[  0]	MOV  	  4		3	; slot4 = slot3
	111	[  0]	KSTR 	  6		566	; slot6 = "1c141f"
	112	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	113	[  0]	TDUP 	  5		564	; slot5 = copy table#k564
	114	[  0]	MOV  	  6		3	; slot6 = slot3
	115	[  0]	KSTR 	  8		565	; slot8 = "4b3f57"
	116	[  0]	CALL 	  6	2	2	; slot6 = slot6(slot7)
	117	[  0]	TSETS	  6	5	563	; slot5.fill = slot6
	118	[  0]	MOV  	  6		3	; slot6 = slot3
	119	[  0]	KSTR 	  8		562	; slot8 = "67597a"
	120	[  0]	CALL 	  6	2	2	; slot6 = slot6(slot7)
	121	[  0]	TSETS	  6	5	561	; slot5.hi = slot6
	122	[  0]	MOV  	  6		3	; slot6 = slot3
	123	[  0]	KSTR 	  8		560	; slot8 = "33293c"
	124	[  0]	CALL 	  6	2	2	; slot6 = slot6(slot7)
	125	[  0]	TSETS	  6	5	559	; slot5.lo = slot6
	126	[  0]	TSETS	  4	5	558	; slot5.out = slot4
	127	[  0]	TDUP 	  6		551	; slot6 = copy table#k551
	128	[  0]	TDUP 	  7		556	; slot7 = copy table#k556
	129	[  0]	MOV  	  8		3	; slot8 = slot3
	130	[  0]	KSTR 	 10		557	; slot10 = "5b9e4f"
	131	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
	132	[  0]	TSETS	  8	7	563	; slot7.fill = slot8
	133	[  0]	MOV  	  8		3	; slot8 = slot3
	134	[  0]	KSTR 	 10		555	; slot10 = "80bf6c"
	135	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
	136	[  0]	TSETS	  8	7	561	; slot7.hi = slot8
	137	[  0]	MOV  	  8		3	; slot8 = slot3
	138	[  0]	KSTR 	 10		554	; slot10 = "3e7537"
	139	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
	140	[  0]	TSETS	  8	7	559	; slot7.lo = slot8
	141	[  0]	TSETS	  4	7	558	; slot7.out = slot4
	142	[  0]	MOV  	  8		3	; slot8 = slot3
	143	[  0]	KSTR 	 10		553	; slot10 = "2c5428"
	144	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
	145	[  0]	TSETS	  8	7	552	; slot7.side = slot8
	146	[  0]	TSETS	  7	6	550	; slot6.a = slot7
	147	[  0]	TDUP 	  7		548	; slot7 = copy table#k548
	148	[  0]	MOV  	  8		3	; slot8 = slot3
	149	[  0]	KSTR 	 10		549	; slot10 = "bf4f49"
	150	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
	151	[  0]	TSETS	  8	7	563	; slot7.fill = slot8
	152	[  0]	MOV  	  8		3	; slot8 = slot3
	153	[  0]	KSTR 	 10		547	; slot10 = "dc7569"
	154	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
	155	[  0]	TSETS	  8	7	561	; slot7.hi = slot8
	156	[  0]	MOV  	  8		3	; slot8 = slot3
	157	[  0]	KSTR 	 10		546	; slot10 = "8b3536"
	158	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
	159	[  0]	TSETS	  8	7	559	; slot7.lo = slot8
	160	[  0]	TSETS	  4	7	558	; slot7.out = slot4
	161	[  0]	MOV  	  8		3	; slot8 = slot3
	162	[  0]	KSTR 	 10		545	; slot10 = "652628"
	163	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
	164	[  0]	TSETS	  8	7	552	; slot7.side = slot8
	165	[  0]	TSETS	  7	6	544	; slot6.b = slot7
	166	[  0]	TDUP 	  7		542	; slot7 = copy table#k542
	167	[  0]	MOV  	  8		3	; slot8 = slot3
	168	[  0]	KSTR 	 10		543	; slot10 = "4a73bf"
	169	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
	170	[  0]	TSETS	  8	7	563	; slot7.fill = slot8
	171	[  0]	MOV  	  8		3	; slot8 = slot3
	172	[  0]	KSTR 	 10		541	; slot10 = "7097dc"
	173	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
	174	[  0]	TSETS	  8	7	561	; slot7.hi = slot8
	175	[  0]	MOV  	  8		3	; slot8 = slot3
	176	[  0]	KSTR 	 10		540	; slot10 = "33518d"
	177	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
	178	[  0]	TSETS	  8	7	559	; slot7.lo = slot8
	179	[  0]	TSETS	  4	7	558	; slot7.out = slot4
	180	[  0]	MOV  	  8		3	; slot8 = slot3
	181	[  0]	KSTR 	 10		539	; slot10 = "253b67"
	182	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
	183	[  0]	TSETS	  8	7	552	; slot7.side = slot8
	184	[  0]	TSETS	  7	6	538	; slot6.x = slot7
	185	[  0]	TDUP 	  7		536	; slot7 = copy table#k536
	186	[  0]	MOV  	  8		3	; slot8 = slot3
	187	[  0]	KSTR 	 10		537	; slot10 = "cda13a"
	188	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
	189	[  0]	TSETS	  8	7	563	; slot7.fill = slot8
	190	[  0]	MOV  	  8		3	; slot8 = slot3
	191	[  0]	KSTR 	 10		535	; slot10 = "e8c562"
	192	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
	193	[  0]	TSETS	  8	7	561	; slot7.hi = slot8
	194	[  0]	MOV  	  8		3	; slot8 = slot3
	195	[  0]	KSTR 	 10		534	; slot10 = "967427"
	196	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
	197	[  0]	TSETS	  8	7	559	; slot7.lo = slot8
	198	[  0]	TSETS	  4	7	558	; slot7.out = slot4
	199	[  0]	MOV  	  8		3	; slot8 = slot3
	200	[  0]	KSTR 	 10		533	; slot10 = "6d541c"
	201	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
	202	[  0]	TSETS	  8	7	552	; slot7.side = slot8
	203	[  0]	TSETS	  7	6	532	; slot6.y = slot7
	204	[  0]	TDUP 	  7		530	; slot7 = copy table#k530
	205	[  0]	MOV  	  8		3	; slot8 = slot3
	206	[  0]	KSTR 	 10		531	; slot10 = "eee9c3"
	207	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
	208	[  0]	TSETS	  8	7	563	; slot7.fill = slot8
	209	[  0]	MOV  	  8		3	; slot8 = slot3
	210	[  0]	KSTR 	 10		529	; slot10 = "fbf7e2"
	211	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
	212	[  0]	TSETS	  8	7	561	; slot7.hi = slot8
	213	[  0]	MOV  	  8		3	; slot8 = slot3
	214	[  0]	KSTR 	 10		528	; slot10 = "bbb799"
	215	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
	216	[  0]	TSETS	  8	7	559	; slot7.lo = slot8
	217	[  0]	MOV  	  8		3	; slot8 = slot3
	218	[  0]	KSTR 	 10		527	; slot10 = "3e3546"
	219	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
	220	[  0]	TSETS	  8	7	558	; slot7.out = slot8
	221	[  0]	MOV  	  8		3	; slot8 = slot3
	222	[  0]	KSTR 	 10		526	; slot10 = "f7f1e0"
	223	[  0]	CALL 	  8	2	2	; slot8 = slot8(slot9)
	224	[  0]	MOV  	  9		3	; slot9 = slot3
	225	[  0]	KSTR 	 11		525	; slot11 = "ede6d0"
	226	[  0]	CALL 	  9	2	2	; slot9 = slot9(slot10)
	227	[  0]	MOV  	 10		3	; slot10 = slot3
	228	[  0]	KSTR 	 12		524	; slot12 = "2e222f"
	229	[  0]	CALL 	 10	2	2	; slot10 = slot10(slot11)
	230	[  0]	TDUP 	 11		522	; slot11 = copy table#k522
	231	[  0]	MOV  	 12		3	; slot12 = slot3
	232	[  0]	KSTR 	 14		523	; slot14 = "9cc3f5"
	233	[  0]	CALL 	 12	2	2	; slot12 = slot12(slot13)
	234	[  0]	TSETS	 12	11	550	; slot11.a = slot12
	235	[  0]	MOV  	 12		3	; slot12 = slot3
	236	[  0]	KSTR 	 14		521	; slot14 = "f09a95"
	237	[  0]	CALL 	 12	2	2	; slot12 = slot12(slot13)
	238	[  0]	TSETS	 12	11	544	; slot11.b = slot12
	239	[  0]	MOV  	 12		3	; slot12 = slot3
	240	[  0]	KSTR 	 14		520	; slot14 = "e7a9e6"
	241	[  0]	CALL 	 12	2	2	; slot12 = slot12(slot13)
	242	[  0]	TSETS	 12	11	538	; slot11.x = slot12
	243	[  0]	MOV  	 12		3	; slot12 = slot3
	244	[  0]	KSTR 	 14		519	; slot14 = "79d3b6"
	245	[  0]	CALL 	 12	2	2	; slot12 = slot12(slot13)
	246	[  0]	TSETS	 12	11	532	; slot11.y = slot12
	247	[  0]	TDUP 	 12		517	; slot12 = copy table#k517
	248	[  0]	TSETS	 12	2	518	; slot2.SKINS = slot12
	249	[  0]	TNEW 	 12		0	; slot12 = new table( array: 0, dict: 1)
	250	[  0]	GGET 	 13		619	; slot13 = _env["ipairs"]
	251	[  0]	TGETS	 15	2	518	; slot15 = slot2.SKINS
	252	[  0]	CALL 	 13	4	2	; slot13, slot14, slot15 = ipairs(slot14)
	253	[  0]	JMP  	 16		2	; 	goto 256
	254	[  0]	KPRI 	 18		2	; slot18 = true
	255	[  0]	TSETV	 18	12	17	; slot12[slot17] = slot18
	256	[  0]	ITERC	 16	3	3	; slot16, slot17, slot18 = ipairs, slot14, <unknown table>.SKINS; slot16, slot17 = ipairs(slot14, <unknown table>.SKINS)
	257	[  0]	ITERL	 16		-4	; <unknown table>.SKINS = slot16; if slot16 != nil goto 254
	258	[  0]	KSTR 	 13		516	; slot13 = "classic"
	259	[  0]	TDUP 	 14		514	; slot14 = copy table#k514
	260	[  0]	MOV  	 15		3	; slot15 = slot3
	261	[  0]	KSTR 	 17		515	; slot17 = "3d7a33"
	262	[  0]	CALL 	 15	2	2	; slot15 = slot15(slot16)
	263	[  0]	TSETS	 15	14	550	; slot14.a = slot15
	264	[  0]	MOV  	 15		3	; slot15 = slot3
	265	[  0]	KSTR 	 17		513	; slot17 = "a53a35"
	266	[  0]	CALL 	 15	2	2	; slot15 = slot15(slot16)
	267	[  0]	TSETS	 15	14	544	; slot14.b = slot15
	268	[  0]	MOV  	 15		3	; slot15 = slot3
	269	[  0]	KSTR 	 17		512	; slot17 = "34599f"
	270	[  0]	CALL 	 15	2	2	; slot15 = slot15(slot16)
	271	[  0]	TSETS	 15	14	538	; slot14.x = slot15
	272	[  0]	MOV  	 15		3	; slot15 = slot3
	273	[  0]	KSTR 	 17		511	; slot17 = "94701c"
	274	[  0]	CALL 	 15	2	2	; slot15 = slot15(slot16)
	275	[  0]	TSETS	 15	14	532	; slot14.y = slot15
	276	[  0]	TDUP 	 15		509	; slot15 = copy table#k509
	277	[  0]	MOV  	 16		3	; slot16 = slot3
	278	[  0]	KSTR 	 18		510	; slot18 = "3f74b8"
	279	[  0]	CALL 	 16	2	2	; slot16 = slot16(slot17)
	280	[  0]	TSETS	 16	15	550	; slot15.a = slot16
	281	[  0]	MOV  	 16		3	; slot16 = slot3
	282	[  0]	KSTR 	 18		508	; slot18 = "bb4b45"
	283	[  0]	CALL 	 16	2	2	; slot16 = slot16(slot17)
	284	[  0]	TSETS	 16	15	544	; slot15.b = slot16
	285	[  0]	MOV  	 16		3	; slot16 = slot3
	286	[  0]	KSTR 	 18		507	; slot18 = "a2509f"
	287	[  0]	CALL 	 16	2	2	; slot16 = slot16(slot17)
	288	[  0]	TSETS	 16	15	538	; slot15.x = slot16
	289	[  0]	MOV  	 16		3	; slot16 = slot3
	290	[  0]	KSTR 	 18		506	; slot18 = "2f8e70"
	291	[  0]	CALL 	 16	2	2	; slot16 = slot16(slot17)
	292	[  0]	TSETS	 16	15	532	; slot15.y = slot16
	293	[  0]	TDUP 	 16		504	; slot16 = copy table#k504
	294	[  0]	MOV  	 17		3	; slot17 = slot3
	295	[  0]	KSTR 	 19		505	; slot19 = "2b2131"
	296	[  0]	CALL 	 17	2	2	; slot17 = slot17(slot18)
	297	[  0]	TSETS	 17	16	563	; slot16.fill = slot17
	298	[  0]	MOV  	 17		3	; slot17 = slot3
	299	[  0]	KSTR 	 19		505	; slot19 = "2b2131"
	300	[  0]	CALL 	 17	2	2	; slot17 = slot17(slot18)
	301	[  0]	TSETS	 17	16	561	; slot16.hi = slot17
	302	[  0]	MOV  	 17		3	; slot17 = slot3
	303	[  0]	KSTR 	 19		505	; slot19 = "2b2131"
	304	[  0]	CALL 	 17	2	2	; slot17 = slot17(slot18)
	305	[  0]	TSETS	 17	16	559	; slot16.lo = slot17
	306	[  0]	TSETS	  4	16	558	; slot16.out = slot4
	307	[  0]	MOV  	 17		3	; slot17 = slot3
	308	[  0]	KSTR 	 19		503	; slot19 = "8e819b"
	309	[  0]	CALL 	 17	2	2	; slot17 = slot17(slot18)
	310	[  0]	FNEW 	 18		502	; N/A:0-0: 2 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			[depth] = 2,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TDUP 	  2		4	; slot2 = copy table#k4
		  2	[  0]	TGETS	  3	0	5	; slot3 = slot0.fill
		  3	[  0]	TSETS	  3	2	5	; slot2.fill = <unknown table>.fill
		  4	[  0]	TGETS	  3	0	3	; slot3 = slot0.hi
		  5	[  0]	TSETS	  3	2	3	; slot2.hi = <unknown table>.hi
		  6	[  0]	TGETS	  3	0	2	; slot3 = slot0.lo
		  7	[  0]	TSETS	  3	2	2	; slot2.lo = <unknown table>.lo
		  8	[  0]	TGETS	  3	0	1	; slot3 = slot0.out
		  9	[  0]	TSETS	  3	2	1	; slot2.out = <unknown table>.out
		 10	[  0]	TSETS	  1	2	0	; slot2.side = slot1
		 11	[  0]	RET1 	  2		2	; return slot2
	311	[  0]	FNEW 	 19		501	; N/A:0-0: 2 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TDUP 	  2		4	; slot2 = copy table#k4
		  2	[  0]	TGETS	  3	0	5	; slot3 = slot0.fill
		  3	[  0]	TSETS	  3	2	5	; slot2.fill = <unknown table>.fill
		  4	[  0]	TGETS	  3	0	3	; slot3 = slot0.hi
		  5	[  0]	TSETS	  3	2	3	; slot2.hi = <unknown table>.hi
		  6	[  0]	TGETS	  3	0	2	; slot3 = slot0.lo
		  7	[  0]	TSETS	  3	2	2	; slot2.lo = <unknown table>.lo
		  8	[  0]	TGETS	  3	0	1	; slot3 = slot0.out
		  9	[  0]	TSETS	  3	2	1	; slot2.out = <unknown table>.out
		 10	[  0]	TSETS	  1	2	0	; slot2.edge = slot1
		 11	[  0]	RET1 	  2		2	; return slot2
	312	[  0]	FNEW 	 20		500	; N/A:0-0: 1 args, 9 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISNES	  0		4	; if slot0 ~= "raised"
		  2	[  0]	JMP  	  1		10	; 	goto 13
		  3	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  4	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		  5	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		  6	[  0]	KSTR 	  6		3	; slot6 = "2a2131"
		  7	[  0]	CALL 	  4	0	2	; MULTRES = uv2"unknown"(slot5)
		  8	[  0]	CALLM	  1	2	1	; slot1 = uv0"unknown"(slot2, ...MULTRES)
		  9	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 10	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 11	[  0]	TGETS	  3	3	2	; slot3 = uv1"unknown".lo
		 12	[  0]	RET  	  1		4	; return slot1, uv3"unknown", uv1"unknown".lo
		 13	[  0]	ISNES	  0		1	; if slot0 ~= "paper"
		 14	[  0]	JMP  	  1		4	; 	goto 19
		 15	[  0]	UGET 	  1		4	; slot1 = uv4"unknwon"
		 16	[  0]	UGET 	  2		5	; slot2 = uv5"unknwon"
		 17	[  0]	KPRI 	  3		0	; slot3 = nil
		 18	[  0]	RET  	  1		4	; return uv4"unknown", uv5"unknown", slot3
		 19	[  0]	ISNES	  0		0	; if slot0 ~= "ink"
		 20	[  0]	JMP  	  1		7	; 	goto 28
		 21	[  0]	UGET 	  1		6	; slot1 = uv6"unknwon"
		 22	[  0]	UGET 	  3		7	; slot3 = uv7"unknwon"
		 23	[  0]	UGET 	  4		8	; slot4 = uv8"unknwon"
		 24	[  0]	CALL 	  1	2	3	; slot1 = uv6"unknown"(uv5"unknown", uv7"unknown")
		 25	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 26	[  0]	KPRI 	  3		0	; slot3 = nil
		 27	[  0]	RET  	  1		4	; return slot1, uv3"unknown", slot3
		 28	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 29	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 30	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 31	[  0]	TGETS	  3	3	2	; slot3 = uv1"unknown".lo
		 32	[  0]	RET  	  1		4	; return uv1"unknown", uv3"unknown", uv1"unknown".lo
	313	[  0]	FNEW 	 21		499	; N/A:0-0: 1 args, 8 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISNES	  0		2	; if slot0 ~= "raised"
		  2	[  0]	JMP  	  1		8	; 	goto 11
		  3	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  4	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		  5	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		  6	[  0]	KSTR 	  6		1	; slot6 = "8f8a6f"
		  7	[  0]	CALL 	  4	0	2	; MULTRES = uv2"unknown"(slot5)
		  8	[  0]	CALLM	  1	2	1	; slot1 = uv0"unknown"(slot2, ...MULTRES)
		  9	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 10	[  0]	RET  	  1		3	; return slot1, uv3"unknown"
		 11	[  0]	ISNES	  0		0	; if slot0 ~= "ink"
		 12	[  0]	JMP  	  1		6	; 	goto 19
		 13	[  0]	UGET 	  1		4	; slot1 = uv4"unknwon"
		 14	[  0]	UGET 	  3		5	; slot3 = uv5"unknwon"
		 15	[  0]	UGET 	  4		6	; slot4 = uv6"unknwon"
		 16	[  0]	CALL 	  1	2	3	; slot1 = uv4"unknown"(uv3"unknown", uv5"unknown")
		 17	[  0]	UGET 	  2		7	; slot2 = uv7"unknwon"
		 18	[  0]	RET  	  1		3	; return slot1, uv7"unknown"
		 19	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 20	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 21	[  0]	RET  	  1		3	; return uv1"unknown", uv3"unknown"
	314	[  0]	TDUP 	 22		498	; slot22 = copy table#k498
	315	[  0]	TDUP 	 23		497	; slot23 = copy table#k497
	316	[  0]	TDUP 	 24		496	; slot24 = copy table#k496
	317	[  0]	TDUP 	 25		495	; slot25 = copy table#k495
	318	[  0]	TDUP 	 26		494	; slot26 = copy table#k494
	319	[  0]	TDUP 	 27		492	; slot27 = copy table#k492
	320	[  0]	TDUP 	 28		493	; slot28 = copy table#k493
	321	[  0]	TSETS	 28	27	491	; slot27.A = slot28
	322	[  0]	TDUP 	 28		490	; slot28 = copy table#k490
	323	[  0]	TSETS	 28	27	489	; slot27.B = slot28
	324	[  0]	TDUP 	 28		488	; slot28 = copy table#k488
	325	[  0]	TSETS	 28	27	487	; slot27.X = slot28
	326	[  0]	TDUP 	 28		486	; slot28 = copy table#k486
	327	[  0]	TSETS	 28	27	485	; slot27.Y = slot28
	328	[  0]	TDUP 	 28		483	; slot28 = copy table#k483
	329	[  0]	TDUP 	 29		484	; slot29 = copy table#k484
	330	[  0]	TSETS	 29	28	550	; slot28.a = slot29
	331	[  0]	TDUP 	 29		482	; slot29 = copy table#k482
	332	[  0]	TSETS	 29	28	544	; slot28.b = slot29
	333	[  0]	TDUP 	 29		481	; slot29 = copy table#k481
	334	[  0]	TSETS	 29	28	538	; slot28.x = slot29
	335	[  0]	TDUP 	 29		480	; slot29 = copy table#k480
	336	[  0]	TSETS	 29	28	532	; slot28.y = slot29
	337	[  0]	TDUP 	 29		478	; slot29 = copy table#k478
	338	[  0]	TDUP 	 30		479	; slot30 = copy table#k479
	339	[  0]	TSETS	 30	29	477	; slot29.menu = slot30
	340	[  0]	TDUP 	 30		476	; slot30 = copy table#k476
	341	[  0]	TSETS	 30	29	475	; slot29.view = slot30
	342	[  0]	TDUP 	 30		474	; slot30 = copy table#k474
	343	[  0]	TSETS	 30	29	473	; slot29.plus = slot30
	344	[  0]	TDUP 	 30		472	; slot30 = copy table#k472
	345	[  0]	TSETS	 30	29	471	; slot29.minus = slot30
	346	[  0]	TDUP 	 30		470	; slot30 = copy table#k470
	347	[  0]	TSETS	 30	29	469	; slot29.share = slot30
	348	[  0]	TDUP 	 30		468	; slot30 = copy table#k468
	349	[  0]	TSETS	 30	29	467	; slot29.up = slot30
	350	[  0]	TDUP 	 30		466	; slot30 = copy table#k466
	351	[  0]	TSETS	 30	29	465	; slot29.down = slot30
	352	[  0]	TDUP 	 30		464	; slot30 = copy table#k464
	353	[  0]	TSETS	 30	29	463	; slot29.left = slot30
	354	[  0]	TDUP 	 30		462	; slot30 = copy table#k462
	355	[  0]	TSETS	 30	29	461	; slot29.right = slot30
	356	[  0]	TDUP 	 30		460	; slot30 = copy table#k460
	357	[  0]	TDUP 	 31		458	; slot31 = copy table#k458
	358	[  0]	TDUP 	 32		459	; slot32 = copy table#k459
	359	[  0]	TSETS	 32	31	491	; slot31.A = slot32
	360	[  0]	TDUP 	 32		457	; slot32 = copy table#k457
	361	[  0]	TSETS	 32	31	489	; slot31.B = slot32
	362	[  0]	TDUP 	 32		456	; slot32 = copy table#k456
	363	[  0]	TSETS	 32	31	455	; slot31.C = slot32
	364	[  0]	TDUP 	 32		454	; slot32 = copy table#k454
	365	[  0]	TSETS	 32	31	453	; slot31.D = slot32
	366	[  0]	TDUP 	 32		452	; slot32 = copy table#k452
	367	[  0]	TSETS	 32	31	451	; slot31.E = slot32
	368	[  0]	TDUP 	 32		450	; slot32 = copy table#k450
	369	[  0]	TSETS	 32	31	449	; slot31.F = slot32
	370	[  0]	TDUP 	 32		448	; slot32 = copy table#k448
	371	[  0]	TSETS	 32	31	447	; slot31.G = slot32
	372	[  0]	TDUP 	 32		446	; slot32 = copy table#k446
	373	[  0]	TSETS	 32	31	445	; slot31.H = slot32
	374	[  0]	TDUP 	 32		444	; slot32 = copy table#k444
	375	[  0]	TSETS	 32	31	443	; slot31.I = slot32
	376	[  0]	TDUP 	 32		442	; slot32 = copy table#k442
	377	[  0]	TSETS	 32	31	441	; slot31.J = slot32
	378	[  0]	TDUP 	 32		440	; slot32 = copy table#k440
	379	[  0]	TSETS	 32	31	439	; slot31.K = slot32
	380	[  0]	TDUP 	 32		438	; slot32 = copy table#k438
	381	[  0]	TSETS	 32	31	437	; slot31.L = slot32
	382	[  0]	TDUP 	 32		436	; slot32 = copy table#k436
	383	[  0]	TSETS	 32	31	435	; slot31.M = slot32
	384	[  0]	TDUP 	 32		434	; slot32 = copy table#k434
	385	[  0]	TSETS	 32	31	433	; slot31.N = slot32
	386	[  0]	TDUP 	 32		432	; slot32 = copy table#k432
	387	[  0]	TSETS	 32	31	431	; slot31.O = slot32
	388	[  0]	TDUP 	 32		430	; slot32 = copy table#k430
	389	[  0]	TSETS	 32	31	429	; slot31.P = slot32
	390	[  0]	TDUP 	 32		428	; slot32 = copy table#k428
	391	[  0]	TSETS	 32	31	427	; slot31.Q = slot32
	392	[  0]	TDUP 	 32		426	; slot32 = copy table#k426
	393	[  0]	TSETS	 32	31	425	; slot31.R = slot32
	394	[  0]	TDUP 	 32		424	; slot32 = copy table#k424
	395	[  0]	TSETS	 32	31	423	; slot31.S = slot32
	396	[  0]	TDUP 	 32		422	; slot32 = copy table#k422
	397	[  0]	TSETS	 32	31	421	; slot31.T = slot32
	398	[  0]	TDUP 	 32		420	; slot32 = copy table#k420
	399	[  0]	TSETS	 32	31	419	; slot31.U = slot32
	400	[  0]	TDUP 	 32		418	; slot32 = copy table#k418
	401	[  0]	TSETS	 32	31	417	; slot31.V = slot32
	402	[  0]	TDUP 	 32		416	; slot32 = copy table#k416
	403	[  0]	TSETS	 32	31	415	; slot31.W = slot32
	404	[  0]	TDUP 	 32		414	; slot32 = copy table#k414
	405	[  0]	TSETS	 32	31	487	; slot31.X = slot32
	406	[  0]	TDUP 	 32		413	; slot32 = copy table#k413
	407	[  0]	TSETS	 32	31	485	; slot31.Y = slot32
	408	[  0]	TDUP 	 32		412	; slot32 = copy table#k412
	409	[  0]	TSETS	 32	31	411	; slot31.Z = slot32
	410	[  0]	TDUP 	 32		410	; slot32 = copy table#k410
	411	[  0]	TSETS	 32	31	409	; slot31.0 = slot32
	412	[  0]	TDUP 	 32		408	; slot32 = copy table#k408
	413	[  0]	TSETS	 32	31	407	; slot31.1 = slot32
	414	[  0]	TDUP 	 32		406	; slot32 = copy table#k406
	415	[  0]	TSETS	 32	31	405	; slot31.2 = slot32
	416	[  0]	TDUP 	 32		404	; slot32 = copy table#k404
	417	[  0]	TSETS	 32	31	403	; slot31.3 = slot32
	418	[  0]	TDUP 	 32		402	; slot32 = copy table#k402
	419	[  0]	TSETS	 32	31	401	; slot31.4 = slot32
	420	[  0]	TDUP 	 32		400	; slot32 = copy table#k400
	421	[  0]	TSETS	 32	31	399	; slot31.5 = slot32
	422	[  0]	TDUP 	 32		398	; slot32 = copy table#k398
	423	[  0]	TSETS	 32	31	397	; slot31.6 = slot32
	424	[  0]	TDUP 	 32		396	; slot32 = copy table#k396
	425	[  0]	TSETS	 32	31	395	; slot31.7 = slot32
	426	[  0]	TDUP 	 32		394	; slot32 = copy table#k394
	427	[  0]	TSETS	 32	31	393	; slot31.8 = slot32
	428	[  0]	TDUP 	 32		392	; slot32 = copy table#k392
	429	[  0]	TSETS	 32	31	391	; slot31.9 = slot32
	430	[  0]	TDUP 	 32		390	; slot32 = copy table#k390
	431	[  0]	TSETS	 32	31	389	; slot31.- = slot32
	432	[  0]	TDUP 	 32		388	; slot32 = copy table#k388
	433	[  0]	TSETS	 32	31	387	; slot31.+ = slot32
	434	[  0]	TDUP 	 32		386	; slot32 = copy table#k386
	435	[  0]	TSETS	 32	31	385	; slot31.. = slot32
	436	[  0]	TDUP 	 32		384	; slot32 = copy table#k384
	437	[  0]	TSETS	 32	31	383	; slot31., = slot32
	438	[  0]	TDUP 	 32		382	; slot32 = copy table#k382
	439	[  0]	TSETS	 32	31	381	; slot31./ = slot32
	440	[  0]	TDUP 	 32		380	; slot32 = copy table#k380
	441	[  0]	TSETS	 32	31	379	; slot31.= = slot32
	442	[  0]	TDUP 	 32		378	; slot32 = copy table#k378
	443	[  0]	TSETS	 32	31	377	; slot31.[ = slot32
	444	[  0]	TDUP 	 32		376	; slot32 = copy table#k376
	445	[  0]	TSETS	 32	31	375	; slot31.] = slot32
	446	[  0]	TDUP 	 32		374	; slot32 = copy table#k374
	447	[  0]	TSETS	 32	31	373	; slot31.; = slot32
	448	[  0]	TDUP 	 32		372	; slot32 = copy table#k372
	449	[  0]	TSETS	 32	31	371	; slot31.' = slot32
	450	[  0]	TDUP 	 32		370	; slot32 = copy table#k370
	451	[  0]	TSETS	 32	31	369	; slot31.` = slot32
	452	[  0]	TDUP 	 32		368	; slot32 = copy table#k368
	453	[  0]	TSETS	 32	31	367	; slot31.\ = slot32
	454	[  0]	FNEW 	 32		366	; N/A:0-0: 1 args, 0 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	LEN  	  1		0	; slot1 = #slot0
		  2	[  0]	ISNEN	  1		0	; if slot1 ~= 0
		  3	[  0]	JMP  	  2		2	; 	goto 6
		  4	[  0]	KSHORT	  2		0	; slot2 = 0
		  5	[  0]	RET1 	  2		2	; return slot2
		  6	[  0]	MULVN	  2	1	1	; slot2 = slot1 * 4
		  7	[  0]	SUBVN	  2	2	2	; slot2 = slot2 - 1
		  8	[  0]	RET1 	  2		2	; return slot2
	455	[  0]	KSTR 	 33		365	; slot33 = "textWidth"
	456	[  0]	TSETV	 32	2	33	; slot2[slot33] = slot32
	457	[  0]	FNEW 	 33		364	; N/A:0-0: 3 args, 0 upvalues, 40 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	LEN  	  3		0	; slot3 = #slot0
		  2	[  0]	TGETB	  4	0	1	; slot4 = slot0[1]
		  3	[  0]	LEN  	  4		4	; slot4 = #slot4
		  4	[  0]	TGETS	  5	1	21	; slot5 = slot1.depth
		  5	[  0]	IST  	   		5	; if <unknown table>.depth
		  6	[  0]	JMP  	  6		1	; 	goto 8
		  7	[  0]	KSHORT	  5		0	; slot5 = 0
		  8	[  0]	ADDVN	  6	4	0	; slot6 = slot4 + 2
		  9	[  0]	ADDVN	  7	3	0	; slot7 = slot3 + 2
		 10	[  0]	ADDVV	  7	7	5	; slot7 = slot7 + slot5
		 11	[  0]	GGET 	  8		20	; slot8 = _env["love"]
		 12	[  0]	TGETS	  8	8	19	; slot8 = love.image
		 13	[  0]	TGETS	  8	8	18	; slot8 = love.image.newImageData
		 14	[  0]	MOV  	 10		6	; slot10 = slot6
		 15	[  0]	MOV  	 11		7	; slot11 = slot7
		 16	[  0]	CALL 	  8	2	3	; slot8 = love.image.newImageData(slot9, slot10)
		 17	[  0]	FNEW 	  9		17	; N/A:0-0: 2 args, 3 upvalues, 7 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	KSHORT	  2		1	; slot2 = 1
			  2	[  0]	ISLT 	  1		2	; if slot1 < slot2
			  3	[  0]	JMP  	  2		9	; 	goto 13
			  4	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  5	[  0]	ISLT 	  2		1	; if uv0"unknown" < slot1
			  6	[  0]	JMP  	  2		6	; 	goto 13
			  7	[  0]	KSHORT	  2		1	; slot2 = 1
			  8	[  0]	ISLT 	  0		2	; if slot0 < slot2
			  9	[  0]	JMP  	  2		3	; 	goto 13
			 10	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			 11	[  0]	ISGE 	  2		0	; if uv1"unknown" >= slot0
			 12	[  0]	JMP  	  2		2	; 	goto 15
			 13	[  0]	KPRI 	  2		1	; slot2 = false
			 14	[  0]	RET1 	  2		2	; return slot2
			 15	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
			 16	[  0]	TGETV	  2	2	1	; slot2 = uv2"unknown"[slot1]
			 17	[  0]	MOV  	  4		2	; slot4 = slot2
			 18	[  0]	TGETS	  2	2	1	; slot2 = slot2.sub
			 19	[  0]	MOV  	  5		0	; slot5 = slot0
			 20	[  0]	MOV  	  6		0	; slot6 = slot0
			 21	[  0]	CALL 	  2	2	4	; slot2 = <unknown table>.sub(slot3, slot4, slot5)
			 22	[  0]	ISEQS	  2		0	; if slot2 == "#"
			 23	[  0]	JMP  	  2		2	; 	goto 26
			 24	[  0]	KPRI 	  2		1	; slot2 = false
			 25	[  0]	JMP  	  3		1	; 	goto 27
			 26	[  0]	KPRI 	  2		2	; slot2 = true
			 27	[  0]	RET1 	  2		2	; return slot2
		 18	[  0]	FNEW 	 10		16	; N/A:0-0: 2 args, 2 upvalues, 10 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  2	[  0]	KSHORT	  3		0	; slot3 = 0
			  3	[  0]	ISLE 	  2		3	; if uv0"unknown" <= slot3
			  4	[  0]	JMP  	  2		6	; 	goto 11
			  5	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  6	[  0]	MOV  	  4		0	; slot4 = slot0
			  7	[  0]	MOV  	  5		1	; slot5 = slot1
			  8	[  0]	CALL 	  2	2	3	; slot2 = uv1"unknown"(slot3, slot4)
			  9	[  0]	ISF  	   		2	; if not slot2
			 10	[  0]	JMP  	  3		2	; 	goto 13
			 11	[  0]	KPRI 	  2		1	; slot2 = false
			 12	[  0]	RET1 	  2		2	; return slot2
			 13	[  0]	KSHORT	  2		1	; slot2 = 1
			 14	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			 15	[  0]	KSHORT	  4		1	; slot4 = 1
			 16	[  0]	FORI 	  2		9	; for slot5 = slot2,slot3,slot4 else goto 26
			 17	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
			 18	[  0]	MOV  	  8		0	; slot8 = slot0
			 19	[  0]	SUBVV	  9	1	5	; slot9 = slot1 - slot5
			 20	[  0]	CALL 	  6	2	3	; slot6 = uv1"unknown"(slot7, slot8)
			 21	[  0]	ISF  	   		6	; if not uv1"unknown"
			 22	[  0]	JMP  	  7		2	; 	goto 25
			 23	[  0]	KPRI 	  6		2	; slot6 = true
			 24	[  0]	RET1 	  6		2	; return slot6
			 25	[  0]	FORL 	  2		-9	; slot5 = slot5 + slot4; if cmp(slot5, sign slot4,  slot3) goto 17
			 26	[  0]	KPRI 	  2		1	; slot2 = false
			 27	[  0]	RET1 	  2		2	; return slot2
		 19	[  0]	FNEW 	 11		15	; N/A:0-0: 2 args, 2 upvalues, 6 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  2	[  0]	MOV  	  4		0	; slot4 = slot0
			  3	[  0]	MOV  	  5		1	; slot5 = slot1
			  4	[  0]	CALL 	  2	2	3	; slot2 = uv0"unknown"(slot3, slot4)
			  5	[  0]	IST  	   		2	; if slot2
			  6	[  0]	JMP  	  3		4	; 	goto 11
			  7	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  8	[  0]	MOV  	  4		0	; slot4 = slot0
			  9	[  0]	MOV  	  5		1	; slot5 = slot1
			 10	[  0]	CALL 	  2	2	3	; slot2 = uv1"unknown"(slot3, slot4)
			 11	[  0]	RET1 	  2		2	; return slot2
		 20	[  0]	FNEW 	 12		14	; N/A:0-0: 3 args, 3 upvalues, 12 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	KSHORT	  3		0	; slot3 = 0
			  2	[  0]	ISGT 	  3		0	; if slot3 > slot0
			  3	[  0]	JMP  	  3		22	; 	goto 26
			  4	[  0]	KSHORT	  3		0	; slot3 = 0
			  5	[  0]	ISGT 	  3		1	; if slot3 > slot1
			  6	[  0]	JMP  	  3		19	; 	goto 26
			  7	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			  8	[  0]	ISGE 	  0		3	; if slot0 >= uv0"unknown"
			  9	[  0]	JMP  	  3		16	; 	goto 26
			 10	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
			 11	[  0]	ISGE 	  1		3	; if slot1 >= uv1"unknown"
			 12	[  0]	JMP  	  3		13	; 	goto 26
			 13	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
			 14	[  0]	MOV  	  5		3	; slot5 = uv2"unknown"
			 15	[  0]	TGETS	  3	3	0	; slot3 = uv2"unknown".setPixel
			 16	[  0]	MOV  	  6		0	; slot6 = slot0
			 17	[  0]	MOV  	  7		1	; slot7 = slot1
			 18	[  0]	TGETB	  8	2	1	; slot8 = slot2[1]
			 19	[  0]	TGETB	  9	2	2	; slot9 = slot2[2]
			 20	[  0]	TGETB	 10	2	3	; slot10 = slot2[3]
			 21	[  0]	TGETB	 11	2	4	; slot11 = slot2[4]
			 22	[  0]	IST  	   		11	; if slot11
			 23	[  0]	JMP  	 12		1	; 	goto 25
			 24	[  0]	KSHORT	 11		1	; slot11 = 1
			 25	[  0]	CALL 	  3	1	8	;  = uv2"unknown".setPixel(slot4, uv2"unknown", slot6, slot7, slot8, slot9, slot10)
			 26	[  0]	RET0 	  0		1	; return
		 21	[  0]	KSHORT	 13		0	; slot13 = 0
		 22	[  0]	SUBVN	 14	7	1	; slot14 = slot7 - 1
		 23	[  0]	KSHORT	 15		1	; slot15 = 1
		 24	[  0]	FORI 	 13		109	; for slot16 = slot13,slot14,slot15 else goto 134
		 25	[  0]	KSHORT	 17		0	; slot17 = 0
		 26	[  0]	SUBVN	 18	6	1	; slot18 = slot6 - 1
		 27	[  0]	KSHORT	 19		1	; slot19 = 1
		 28	[  0]	FORI 	 17		104	; for slot20 = slot17,slot18,slot19 else goto 133
		 29	[  0]	MOV  	 21		9	; slot21 = slot9
		 30	[  0]	MOV  	 23		20	; slot23 = slot20
		 31	[  0]	MOV  	 24		16	; slot24 = slot16
		 32	[  0]	CALL 	 21	2	3	; slot21 = slot21(slot22, slot23)
		 33	[  0]	ISF  	   		21	; if not slot21
		 34	[  0]	JMP  	 22		56	; 	goto 91
		 35	[  0]	TGETS	 21	1	13	; slot21 = slot1.fill
		 36	[  0]	MOV  	 22		9	; slot22 = slot9
		 37	[  0]	SUBVN	 24	20	1	; slot24 = slot20 - 1
		 38	[  0]	MOV  	 25		16	; slot25 = slot16
		 39	[  0]	CALL 	 22	2	3	; slot22 = slot22(slot23, slot24)
		 40	[  0]	ISF  	   		22	; if not slot22
		 41	[  0]	JMP  	 23		20	; 	goto 62
		 42	[  0]	MOV  	 22		9	; slot22 = slot9
		 43	[  0]	ADDVN	 24	20	1	; slot24 = slot20 + 1
		 44	[  0]	MOV  	 25		16	; slot25 = slot16
		 45	[  0]	CALL 	 22	2	3	; slot22 = slot22(slot23, slot24)
		 46	[  0]	ISF  	   		22	; if not slot22
		 47	[  0]	JMP  	 23		14	; 	goto 62
		 48	[  0]	MOV  	 22		9	; slot22 = slot9
		 49	[  0]	MOV  	 24		20	; slot24 = slot20
		 50	[  0]	SUBVN	 25	16	1	; slot25 = slot16 - 1
		 51	[  0]	CALL 	 22	2	3	; slot22 = slot22(slot23, slot24)
		 52	[  0]	ISF  	   		22	; if not slot22
		 53	[  0]	JMP  	 23		8	; 	goto 62
		 54	[  0]	MOV  	 22		9	; slot22 = slot9
		 55	[  0]	MOV  	 24		20	; slot24 = slot20
		 56	[  0]	ADDVN	 25	16	1	; slot25 = slot16 + 1
		 57	[  0]	CALL 	 22	2	3	; slot22 = slot22(slot23, slot24)
		 58	[  0]	NOT  	 22		22	; slot22 = not slot22
		 59	[  0]	JMP  	 23		3	; 	goto 63
		 60	[  0]	KPRI 	 22		1	; slot22 = false
		 61	[  0]	JMP  	 23		1	; 	goto 63
		 62	[  0]	KPRI 	 22		2	; slot22 = true
		 63	[  0]	TGETS	 23	1	12	; slot23 = slot1.edge
		 64	[  0]	ISF  	   		23	; if not <unknown table>.edge
		 65	[  0]	JMP  	 24		4	; 	goto 70
		 66	[  0]	ISF  	   		22	; if not slot22
		 67	[  0]	JMP  	 23		2	; 	goto 70
		 68	[  0]	TGETS	 21	1	12	; slot21 = slot1.edge
		 69	[  0]	JMP  	 23		15	; 	goto 85
		 70	[  0]	MOV  	 23		9	; slot23 = slot9
		 71	[  0]	MOV  	 25		20	; slot25 = slot20
		 72	[  0]	SUBVN	 26	16	1	; slot26 = slot16 - 1
		 73	[  0]	CALL 	 23	2	3	; slot23 = slot23(slot24, slot25)
		 74	[  0]	IST  	   		23	; if slot23
		 75	[  0]	JMP  	 23		2	; 	goto 78
		 76	[  0]	TGETS	 21	1	11	; slot21 = slot1.hi
		 77	[  0]	JMP  	 23		7	; 	goto 85
		 78	[  0]	MOV  	 23		9	; slot23 = slot9
		 79	[  0]	MOV  	 25		20	; slot25 = slot20
		 80	[  0]	ADDVN	 26	16	1	; slot26 = slot16 + 1
		 81	[  0]	CALL 	 23	2	3	; slot23 = slot23(slot24, slot25)
		 82	[  0]	IST  	   		23	; if slot23
		 83	[  0]	JMP  	 23		1	; 	goto 85
		 84	[  0]	TGETS	 21	1	10	; slot21 = slot1.lo
		 85	[  0]	MOV  	 23		12	; slot23 = slot12
		 86	[  0]	MOV  	 25		20	; slot25 = slot20
		 87	[  0]	MOV  	 26		16	; slot26 = slot16
		 88	[  0]	MOV  	 27		21	; slot27 = <unknown table>.lo
		 89	[  0]	CALL 	 23	1	4	;  = slot23(slot24, slot25, slot26)
		 90	[  0]	JMP  	 21		41	; 	goto 132
		 91	[  0]	MOV  	 21		10	; slot21 = slot10
		 92	[  0]	MOV  	 23		20	; slot23 = slot20
		 93	[  0]	MOV  	 24		16	; slot24 = slot16
		 94	[  0]	CALL 	 21	2	3	; slot21 = slot21(slot22, slot23)
		 95	[  0]	ISF  	   		21	; if not slot21
		 96	[  0]	JMP  	 22		6	; 	goto 103
		 97	[  0]	MOV  	 21		12	; slot21 = slot12
		 98	[  0]	MOV  	 23		20	; slot23 = slot20
		 99	[  0]	MOV  	 24		16	; slot24 = slot16
		100	[  0]	TGETS	 25	1	9	; slot25 = slot1.side
		101	[  0]	CALL 	 21	1	4	;  = slot21(slot22, slot23, slot24)
		102	[  0]	JMP  	 21		29	; 	goto 132
		103	[  0]	MOV  	 21		11	; slot21 = slot11
		104	[  0]	SUBVN	 23	20	1	; slot23 = slot20 - 1
		105	[  0]	MOV  	 24		16	; slot24 = slot16
		106	[  0]	CALL 	 21	2	3	; slot21 = slot21(slot22, slot23)
		107	[  0]	IST  	   		21	; if slot21
		108	[  0]	JMP  	 22		18	; 	goto 127
		109	[  0]	MOV  	 21		11	; slot21 = slot11
		110	[  0]	ADDVN	 23	20	1	; slot23 = slot20 + 1
		111	[  0]	MOV  	 24		16	; slot24 = slot16
		112	[  0]	CALL 	 21	2	3	; slot21 = slot21(slot22, slot23)
		113	[  0]	IST  	   		21	; if slot21
		114	[  0]	JMP  	 22		12	; 	goto 127
		115	[  0]	MOV  	 21		11	; slot21 = slot11
		116	[  0]	MOV  	 23		20	; slot23 = slot20
		117	[  0]	SUBVN	 24	16	1	; slot24 = slot16 - 1
		118	[  0]	CALL 	 21	2	3	; slot21 = slot21(slot22, slot23)
		119	[  0]	IST  	   		21	; if slot21
		120	[  0]	JMP  	 22		6	; 	goto 127
		121	[  0]	MOV  	 21		11	; slot21 = slot11
		122	[  0]	MOV  	 23		20	; slot23 = slot20
		123	[  0]	ADDVN	 24	16	1	; slot24 = slot16 + 1
		124	[  0]	CALL 	 21	2	3	; slot21 = slot21(slot22, slot23)
		125	[  0]	ISF  	   		21	; if not slot21
		126	[  0]	JMP  	 22		5	; 	goto 132
		127	[  0]	MOV  	 21		12	; slot21 = slot12
		128	[  0]	MOV  	 23		20	; slot23 = slot20
		129	[  0]	MOV  	 24		16	; slot24 = slot16
		130	[  0]	TGETS	 25	1	8	; slot25 = slot1.out
		131	[  0]	CALL 	 21	1	4	;  = slot21(slot22, slot23, slot24)
		132	[  0]	FORL 	 17		-104	; slot20 = slot20 + slot19; if cmp(slot20, sign slot19,  slot18) goto 29
		133	[  0]	FORL 	 13		-109	; slot16 = slot16 + slot15; if cmp(slot16, sign slot15,  slot14) goto 25
		134	[  0]	GGET 	 13		7	; slot13 = _env["ipairs"]
		135	[  0]	ISTC 	 15		2	; slot15 = slot2; if slot2
		136	[  0]	JMP  	 15		1	; 	goto 138
		137	[  0]	TNEW 	 15		0	; slot15 = new table( array: 0, dict: 1)
		138	[  0]	CALL 	 13	4	2	; slot13, slot14, slot15 = ipairs(slot14)
		139	[  0]	JMP  	 16		86	; 	goto 226
		140	[  0]	TGETS	 18	17	6	; slot18 = slot17.rows
		141	[  0]	TGETS	 19	17	5	; slot19 = slot17.color
		142	[  0]	TGETS	 20	17	4	; slot20 = slot17.x
		143	[  0]	IST  	   		20	; if <unknown table>.x
		144	[  0]	JMP  	 21		1	; 	goto 146
		145	[  0]	KSHORT	 20		1	; slot20 = 1
		146	[  0]	TGETS	 21	17	3	; slot21 = slot17.y
		147	[  0]	IST  	   		21	; if <unknown table>.y
		148	[  0]	JMP  	 22		1	; 	goto 150
		149	[  0]	KSHORT	 21		1	; slot21 = 1
		150	[  0]	TGETS	 22	17	2	; slot22 = slot17.shadow
		151	[  0]	ISF  	   		22	; if not <unknown table>.shadow
		152	[  0]	JMP  	 23		48	; 	goto 201
		153	[  0]	GGET 	 22		7	; slot22 = _env["ipairs"]
		154	[  0]	MOV  	 24		18	; slot24 = <unknown table>.rows
		155	[  0]	CALL 	 22	4	2	; slot22, slot23, slot24 = ipairs(slot23)
		156	[  0]	JMP  	 25		42	; 	goto 199
		157	[  0]	KSHORT	 27		1	; slot27 = 1
		158	[  0]	LEN  	 28		26	; slot28 = #slot26
		159	[  0]	KSHORT	 29		1	; slot29 = 1
		160	[  0]	FORI 	 27		38	; for slot30 = slot27,slot28,slot29 else goto 199
		161	[  0]	MOV  	 33		26	; slot33 = slot26
		162	[  0]	TGETS	 31	26	1	; slot31 = slot26.sub
		163	[  0]	MOV  	 34		30	; slot34 = slot30
		164	[  0]	MOV  	 35		30	; slot35 = slot30
		165	[  0]	CALL 	 31	2	4	; slot31 = <unknown table>.sub(slot32, slot33, slot34)
		166	[  0]	ISNES	 31		0	; if <unknown table>.sub ~= "#"
		167	[  0]	JMP  	 31		30	; 	goto 198
		168	[  0]	ADDVN	 31	25	1	; slot31 = <unknown table>.out + 1
		169	[  0]	TGETV	 31	18	31	; slot31 = <unknown table>.rows[slot31]
		170	[  0]	ISFC 	 32		31	; slot32 = slot31; if not slot31
		171	[  0]	JMP  	 32		10	; 	goto 182
		172	[  0]	MOV  	 34		31	; slot34 = slot31
		173	[  0]	TGETS	 32	31	1	; slot32 = slot31.sub
		174	[  0]	MOV  	 35		30	; slot35 = slot30
		175	[  0]	MOV  	 36		30	; slot36 = slot30
		176	[  0]	CALL 	 32	2	4	; slot32 = <unknown table>.sub(slot33, slot34, slot35)
		177	[  0]	ISEQS	 32		0	; if <unknown table>.sub == "#"
		178	[  0]	JMP  	 32		2	; 	goto 181
		179	[  0]	KPRI 	 32		1	; slot32 = false
		180	[  0]	JMP  	 33		1	; 	goto 182
		181	[  0]	KPRI 	 32		2	; slot32 = true
		182	[  0]	ADDVV	 33	20	30	; slot33 = slot20 + slot30
		183	[  0]	SUBVN	 33	33	1	; slot33 = slot33 - 1
		184	[  0]	ADDVV	 34	21	25	; slot34 = slot21 + <unknown table>.out
		185	[  0]	IST  	   		32	; if slot32
		186	[  0]	JMP  	 35		11	; 	goto 198
		187	[  0]	MOV  	 35		9	; slot35 = slot9
		188	[  0]	MOV  	 37		33	; slot37 = slot33
		189	[  0]	MOV  	 38		34	; slot38 = slot34
		190	[  0]	CALL 	 35	2	3	; slot35 = slot35(slot36, slot37)
		191	[  0]	ISF  	   		35	; if not slot35
		192	[  0]	JMP  	 36		5	; 	goto 198
		193	[  0]	MOV  	 35		12	; slot35 = slot12
		194	[  0]	MOV  	 37		33	; slot37 = slot33
		195	[  0]	MOV  	 38		34	; slot38 = slot34
		196	[  0]	TGETS	 39	17	2	; slot39 = slot17.shadow
		197	[  0]	CALL 	 35	1	4	;  = slot35(slot36, slot37, slot38)
		198	[  0]	FORL 	 27		-38	; slot30 = slot30 + slot29; if cmp(slot30, sign slot29,  slot28) goto 161
		199	[  0]	ITERC	 25	3	3	; slot25, slot26, slot27 = ipairs, slot23, <unknown table>.rows; slot25, slot26 = ipairs(slot23, <unknown table>.rows)
		200	[  0]	ITERL	 25		-44	; <unknown table>.rows = <unknown table>.out; if <unknown table>.out != nil goto 157
		201	[  0]	GGET 	 22		7	; slot22 = _env["ipairs"]
		202	[  0]	MOV  	 24		18	; slot24 = <unknown table>.rows
		203	[  0]	CALL 	 22	4	2	; slot22, slot23, slot24 = ipairs(slot23)
		204	[  0]	JMP  	 25		19	; 	goto 224
		205	[  0]	KSHORT	 27		1	; slot27 = 1
		206	[  0]	LEN  	 28		26	; slot28 = #slot26
		207	[  0]	KSHORT	 29		1	; slot29 = 1
		208	[  0]	FORI 	 27		15	; for slot30 = slot27,slot28,slot29 else goto 224
		209	[  0]	MOV  	 33		26	; slot33 = slot26
		210	[  0]	TGETS	 31	26	1	; slot31 = slot26.sub
		211	[  0]	MOV  	 34		30	; slot34 = slot30
		212	[  0]	MOV  	 35		30	; slot35 = slot30
		213	[  0]	CALL 	 31	2	4	; slot31 = <unknown table>.sub(slot32, slot33, slot34)
		214	[  0]	ISNES	 31		0	; if <unknown table>.sub ~= "#"
		215	[  0]	JMP  	 31		7	; 	goto 223
		216	[  0]	MOV  	 31		12	; slot31 = slot12
		217	[  0]	ADDVV	 33	20	30	; slot33 = slot20 + slot30
		218	[  0]	SUBVN	 33	33	1	; slot33 = slot33 - 1
		219	[  0]	ADDVV	 34	21	25	; slot34 = slot21 + <unknown table>.out
		220	[  0]	SUBVN	 34	34	1	; slot34 = slot34 - 1
		221	[  0]	MOV  	 35		19	; slot35 = <unknown table>.color
		222	[  0]	CALL 	 31	1	4	;  = slot31(slot32, slot33, slot34)
		223	[  0]	FORL 	 27		-15	; slot30 = slot30 + slot29; if cmp(slot30, sign slot29,  slot28) goto 209
		224	[  0]	ITERC	 25	3	3	; slot25, slot26, slot27 = ipairs, slot23, <unknown table>.rows; slot25, slot26 = ipairs(slot23, <unknown table>.rows)
		225	[  0]	ITERL	 25		-21	; <unknown table>.rows = <unknown table>.out; if <unknown table>.out != nil goto 205
		226	[  0]	ITERC	 16	3	3	; slot16, slot17, slot18 = ipairs, slot14, slot15; slot16, slot17 = ipairs(slot14, slot15)
		227	[  0]	ITERL	 16		-88	; slot15 = slot16; if slot16 != nil goto 140
		228	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 229
		229	[  0]	RET1 	  8		2	; return love.image.newImageData
	458	[  0]	FNEW 	 34		363	; N/A:0-0: 1 args, 1 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			#1: ,
			#2: ,
			#3: ,
			#4: ,
			#5: ,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TDUP 	  1		4	; slot1 = copy table#k4
		  2	[  0]	KSHORT	  2		1	; slot2 = 1
		  3	[  0]	LEN  	  3		0	; slot3 = #slot0
		  4	[  0]	KSHORT	  4		1	; slot4 = 1
		  5	[  0]	FORI 	  2		27	; for slot5 = slot2,slot3,slot4 else goto 33
		  6	[  0]	MOV  	  8		0	; slot8 = slot0
		  7	[  0]	TGETS	  6	0	3	; slot6 = slot0.sub
		  8	[  0]	MOV  	  9		5	; slot9 = slot5
		  9	[  0]	MOV  	 10		5	; slot10 = slot5
		 10	[  0]	CALL 	  6	2	4	; slot6 = <unknown table>.sub(slot7, slot8, slot9)
		 11	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 12	[  0]	TGETV	  7	7	6	; slot7 = uv0"unknown"[<unknown table>.sub]
		 13	[  0]	IST  	   		7	; if slot7
		 14	[  0]	JMP  	  8		2	; 	goto 17
		 15	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 16	[  0]	TGETS	  7	7	2	; slot7 = uv0"unknown".-
		 17	[  0]	KSHORT	  8		1	; slot8 = 1
		 18	[  0]	KSHORT	  9		5	; slot9 = 5
		 19	[  0]	KSHORT	 10		1	; slot10 = 1
		 20	[  0]	FORI 	  8		11	; for slot11 = slot8,slot9,slot10 else goto 32
		 21	[  0]	TGETV	 12	1	11	; slot12 = slot1[slot11]
		 22	[  0]	TGETV	 13	7	11	; slot13 = uv0"unknown".-[slot11]
		 23	[  0]	LEN  	 14		0	; slot14 = #slot0
		 24	[  0]	ISGE 	  5		14	; if slot5 >= slot14
		 25	[  0]	JMP  	 14		2	; 	goto 28
		 26	[  0]	KSTR 	 14		1	; slot14 = "."
		 27	[  0]	JMP  	 15		1	; 	goto 29
		 28	[  0]	KSTR 	 14		0	; slot14 = ""
		 29	[  0]	CAT  	 12	12	14	; slot12 = slot12 .. slot13 .. slot14
		 30	[  0]	TSETV	 12	1	11	; slot1[slot11] = slot12
		 31	[  0]	FORL 	  8		-11	; slot11 = slot11 + slot10; if cmp(slot11, sign slot10,  slot9) goto 21
		 32	[  0]	FORL 	  2		-27	; slot5 = slot5 + slot4; if cmp(slot5, sign slot4,  slot3) goto 6
		 33	[  0]	RET1 	  1		2	; return slot1
	459	[  0]	FNEW 	 35		362	; N/A:0-0: 1 args, 1 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		7	; slot1 = _env["math"]
		  2	[  0]	TGETS	  1	1	6	; slot1 = math.max
		  3	[  0]	KSHORT	  3		15	; slot3 = 15
		  4	[  0]	MOV  	  4		0	; slot4 = slot0
		  5	[  0]	CALL 	  1	2	3	; slot1 = math.max(slot2, slot3)
		  6	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		  7	[  0]	GGET 	  3		5	; slot3 = _env["ipairs"]
		  8	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		  9	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
		 10	[  0]	JMP  	  6		23	; 	goto 34
		 11	[  0]	MOV  	 10		7	; slot10 = slot7
		 12	[  0]	TGETS	  8	7	4	; slot8 = slot7.find
		 13	[  0]	KSTR 	 11		3	; slot11 = "#"
		 14	[  0]	CALL 	  8	2	3	; slot8 = <unknown table>.find(slot9, slot10)
		 15	[  0]	SUBVN	  8	8	0	; slot8 = <unknown table>.find - 1
		 16	[  0]	GGET 	  9		2	; slot9 = _env["string"]
		 17	[  0]	TGETS	  9	9	1	; slot9 = string.rep
		 18	[  0]	KSTR 	 11		0	; slot11 = "."
		 19	[  0]	MOV  	 12		8	; slot12 = slot8
		 20	[  0]	CALL 	  9	2	3	; slot9 = string.rep(slot10, slot11)
		 21	[  0]	GGET 	 10		2	; slot10 = _env["string"]
		 22	[  0]	TGETS	 10	10	1	; slot10 = string.rep
		 23	[  0]	KSTR 	 12		3	; slot12 = "#"
		 24	[  0]	MULVN	 13	8	1	; slot13 = slot8 * 2
		 25	[  0]	SUBVV	 13	1	13	; slot13 = slot1 - slot13
		 26	[  0]	CALL 	 10	2	3	; slot10 = string.rep(slot11, slot12)
		 27	[  0]	GGET 	 11		2	; slot11 = _env["string"]
		 28	[  0]	TGETS	 11	11	1	; slot11 = string.rep
		 29	[  0]	KSTR 	 13		0	; slot13 = "."
		 30	[  0]	MOV  	 14		8	; slot14 = slot8
		 31	[  0]	CALL 	 11	2	3	; slot11 = string.rep(slot12, slot13)
		 32	[  0]	CAT  	  9	9	11	; slot9 = string.rep .. string.rep .. string.rep
		 33	[  0]	TSETV	  9	2	6	; slot2[slot6] = slot9
		 34	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, uv0"unknown"; slot6, slot7 = ipairs(slot4, uv0"unknown")
		 35	[  0]	ITERL	  6		-25	; uv0"unknown" = slot6; if slot6 != nil goto 11
		 36	[  0]	RET1 	  2		2	; return slot2
	460	[  0]	FNEW 	 36		361	; N/A:0-0: 4 args, 0 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  4		1	; slot4 = _env["math"]
		  2	[  0]	TGETS	  4	4	0	; slot4 = math.floor
		  3	[  0]	SUBVV	  6	0	2	; slot6 = slot0 - slot2
		  4	[  0]	DIVVN	  6	6	0	; slot6 = slot6 / 2
		  5	[  0]	CALL 	  4	2	2	; slot4 = math.floor(slot5)
		  6	[  0]	ADDVN	  4	4	1	; slot4 = math.floor + 1
		  7	[  0]	GGET 	  5		1	; slot5 = _env["math"]
		  8	[  0]	TGETS	  5	5	0	; slot5 = math.floor
		  9	[  0]	SUBVV	  7	1	3	; slot7 = slot1 - slot3
		 10	[  0]	DIVVN	  7	7	0	; slot7 = slot7 / 2
		 11	[  0]	CALL 	  5	2	2	; slot5 = math.floor(slot6)
		 12	[  0]	ADDVN	  5	5	1	; slot5 = math.floor + 1
		 13	[  0]	RET  	  4		3	; return slot4, slot5
	461	[  0]	TDUP 	 37		359	; slot37 = copy table#k359
	462	[  0]	TDUP 	 38		360	; slot38 = copy table#k360
	463	[  0]	KSTR 	 39		358	; slot39 = "xbox"
	464	[  0]	TSETV	 38	37	39	; slot37[slot39] = slot38
	465	[  0]	TDUP 	 38		357	; slot38 = copy table#k357
	466	[  0]	KSTR 	 39		356	; slot39 = "playstation"
	467	[  0]	TSETV	 38	37	39	; slot37[slot39] = slot38
	468	[  0]	TDUP 	 38		355	; slot38 = copy table#k355
	469	[  0]	KSTR 	 39		354	; slot39 = "nintendo"
	470	[  0]	TSETV	 38	37	39	; slot37[slot39] = slot38
	471	[  0]	FNEW 	 38		353	; N/A:0-0: 3 args, 14 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			[y] = 4,
			[x] = 4,
			]
		
		
		ktable#2 = [
			[x] = 4,
			[y] = 4,
			]
		
		
		ktable#4 = [
			[x] = 4,
			[y] = 4,
			]
		
		
		ktable#6 = [
			[y] = 4,
			[x] = 4,
			]
		
		
		ktable#10 = [
			[y] = 4,
			[x] = 4,
			]
		
		
		ktable#12 = [
			[x] = 4,
			[y] = 4,
			]
		
		
		ktable#13 = [
			[x] = 4,
			[y] = 4,
			]
		
		
		ktable#17 = [
			[x] = 4,
			[y] = 4,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  2	[  0]	MOV  	  6		1	; slot6 = slot1
		  3	[  0]	TGETS	  4	1	20	; slot4 = slot1.upper
		  4	[  0]	CALL 	  4	2	2	; slot4 = <unknown table>.upper(slot5)
		  5	[  0]	TGETV	  3	3	4	; slot3 = uv0"unknown"[<unknown table>.upper]
		  6	[  0]	ISNES	  0		19	; if slot0 ~= "playstation"
		  7	[  0]	JMP  	  4		47	; 	goto 55
		  8	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		  9	[  0]	TGETV	  4	4	1	; slot4 = uv1"unknown"[slot1]
		 10	[  0]	ISNES	  2		18	; if slot2 ~= "paper"
		 11	[  0]	JMP  	  5		12	; 	goto 24
		 12	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 13	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		 14	[  0]	UGET 	  8		4	; slot8 = uv4"unknwon"
		 15	[  0]	TNEW 	  9		3	; slot9 = new table( array: 3, dict: 1)
		 16	[  0]	TDUP 	 10		17	; slot10 = copy table#k17
		 17	[  0]	TSETS	  4	10	16	; slot10.rows = slot4
		 18	[  0]	UGET 	 11		5	; slot11 = uv5"unknwon"
		 19	[  0]	TGETV	 11	11	1	; slot11 = uv5"unknown"[slot1]
		 20	[  0]	TSETS	 11	10	15	; slot10.color = slot11
		 21	[  0]	TSETB	 10	9	1	; slot9[1] = slot10
		 22	[  0]	CALLT	  5		4	; return uv2"unknown"(slot6, uv3"unknown", uv4"unknown")
		 23	[  0]	JMP  	  5		17	; 	goto 41
		 24	[  0]	ISNES	  2		14	; if slot2 ~= "ink"
		 25	[  0]	JMP  	  5		15	; 	goto 41
		 26	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 27	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		 28	[  0]	UGET 	  8		6	; slot8 = uv6"unknwon"
		 29	[  0]	UGET 	 10		7	; slot10 = uv7"unknwon"
		 30	[  0]	UGET 	 11		8	; slot11 = uv8"unknwon"
		 31	[  0]	TGETV	 11	11	1	; slot11 = uv8"unknown"[slot1]
		 32	[  0]	CALL 	  8	2	3	; slot8 = uv6"unknown"(slot9, uv7"unknown")
		 33	[  0]	TNEW 	  9		3	; slot9 = new table( array: 3, dict: 1)
		 34	[  0]	TDUP 	 10		13	; slot10 = copy table#k13
		 35	[  0]	TSETS	  4	10	16	; slot10.rows = slot4
		 36	[  0]	UGET 	 11		8	; slot11 = uv8"unknwon"
		 37	[  0]	TGETV	 11	11	1	; slot11 = uv8"unknown"[slot1]
		 38	[  0]	TSETS	 11	10	15	; slot10.color = slot11
		 39	[  0]	TSETB	 10	9	1	; slot9[1] = slot10
		 40	[  0]	CALLT	  5		4	; return uv2"unknown"(slot6, uv3"unknown", uv6"unknown")
		 41	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 42	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		 43	[  0]	UGET 	  8		9	; slot8 = uv9"unknwon"
		 44	[  0]	MOV  	 10		2	; slot10 = slot2
		 45	[  0]	CALL 	  8	2	2	; slot8 = uv9"unknown"(slot9)
		 46	[  0]	TNEW 	  9		3	; slot9 = new table( array: 3, dict: 1)
		 47	[  0]	TDUP 	 10		12	; slot10 = copy table#k12
		 48	[  0]	TSETS	  4	10	16	; slot10.rows = slot4
		 49	[  0]	UGET 	 11		8	; slot11 = uv8"unknwon"
		 50	[  0]	TGETV	 11	11	1	; slot11 = uv8"unknown"[slot1]
		 51	[  0]	TSETS	 11	10	15	; slot10.color = slot11
		 52	[  0]	TSETB	 10	9	1	; slot9[1] = slot10
		 53	[  0]	CALLT	  5		4	; return uv2"unknown"(slot6, uv3"unknown", uv9"unknown")
		 54	[  0]	JMP  	  4		15	; 	goto 70
		 55	[  0]	ISNES	  0		11	; if slot0 ~= "nintendo"
		 56	[  0]	JMP  	  4		13	; 	goto 70
		 57	[  0]	UGET 	  4		9	; slot4 = uv9"unknwon"
		 58	[  0]	MOV  	  6		2	; slot6 = slot2
		 59	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = uv9"unknown"(uv2"unknown")
		 60	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		 61	[  0]	UGET 	  9		3	; slot9 = uv3"unknwon"
		 62	[  0]	MOV  	 10		4	; slot10 = uv9"unknown"
		 63	[  0]	TNEW 	 11		3	; slot11 = new table( array: 3, dict: 1)
		 64	[  0]	TDUP 	 12		10	; slot12 = copy table#k10
		 65	[  0]	TSETS	  3	12	16	; slot12.rows = slot3
		 66	[  0]	TSETS	  5	12	15	; slot12.color = uv2"unknown"
		 67	[  0]	TSETS	  6	12	9	; slot12.shadow = slot6
		 68	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		 69	[  0]	CALLT	  7		4	; return uv2"unknown"(uv9"unknown", uv3"unknown", uv9"unknown")
		 70	[  0]	UGET 	  4		10	; slot4 = uv10"unknwon"
		 71	[  0]	TGETV	  4	4	1	; slot4 = uv10"unknown"[slot1]
		 72	[  0]	ISNES	  2		8	; if slot2 ~= "raised"
		 73	[  0]	JMP  	  5		16	; 	goto 90
		 74	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 75	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		 76	[  0]	UGET 	  8		11	; slot8 = uv11"unknwon"
		 77	[  0]	MOV  	 10		4	; slot10 = slot4
		 78	[  0]	TGETS	 11	4	7	; slot11 = slot4.side
		 79	[  0]	CALL 	  8	2	3	; slot8 = uv11"unknown"(uv3"unknown", slot10)
		 80	[  0]	TNEW 	  9		3	; slot9 = new table( array: 3, dict: 1)
		 81	[  0]	TDUP 	 10		6	; slot10 = copy table#k6
		 82	[  0]	TSETS	  3	10	16	; slot10.rows = slot3
		 83	[  0]	UGET 	 11		12	; slot11 = uv12"unknwon"
		 84	[  0]	TSETS	 11	10	15	; slot10.color = uv12"unknown"
		 85	[  0]	TGETS	 11	4	5	; slot11 = slot4.lo
		 86	[  0]	TSETS	 11	10	9	; slot10.shadow = <unknown table>.lo
		 87	[  0]	TSETB	 10	9	1	; slot9[1] = slot10
		 88	[  0]	CALLT	  5		4	; return uv2"unknown"(slot6, uv3"unknown", uv11"unknown")
		 89	[  0]	JMP  	  5		29	; 	goto 119
		 90	[  0]	ISNES	  2		18	; if slot2 ~= "paper"
		 91	[  0]	JMP  	  5		12	; 	goto 104
		 92	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 93	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		 94	[  0]	UGET 	  8		4	; slot8 = uv4"unknwon"
		 95	[  0]	TNEW 	  9		3	; slot9 = new table( array: 3, dict: 1)
		 96	[  0]	TDUP 	 10		4	; slot10 = copy table#k4
		 97	[  0]	TSETS	  3	10	16	; slot10.rows = slot3
		 98	[  0]	UGET 	 11		13	; slot11 = uv13"unknwon"
		 99	[  0]	TGETV	 11	11	1	; slot11 = uv13"unknown"[slot1]
		100	[  0]	TSETS	 11	10	15	; slot10.color = slot11
		101	[  0]	TSETB	 10	9	1	; slot9[1] = slot10
		102	[  0]	CALLT	  5		4	; return uv2"unknown"(slot6, uv3"unknown", uv4"unknown")
		103	[  0]	JMP  	  5		15	; 	goto 119
		104	[  0]	ISNES	  2		14	; if slot2 ~= "ink"
		105	[  0]	JMP  	  5		13	; 	goto 119
		106	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		107	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		108	[  0]	UGET 	  8		6	; slot8 = uv6"unknwon"
		109	[  0]	UGET 	 10		7	; slot10 = uv7"unknwon"
		110	[  0]	TGETS	 11	4	3	; slot11 = slot4.fill
		111	[  0]	CALL 	  8	2	3	; slot8 = uv6"unknown"(slot9, uv7"unknown")
		112	[  0]	TNEW 	  9		3	; slot9 = new table( array: 3, dict: 1)
		113	[  0]	TDUP 	 10		2	; slot10 = copy table#k2
		114	[  0]	TSETS	  3	10	16	; slot10.rows = slot3
		115	[  0]	TGETS	 11	4	1	; slot11 = slot4.hi
		116	[  0]	TSETS	 11	10	15	; slot10.color = <unknown table>.hi
		117	[  0]	TSETB	 10	9	1	; slot9[1] = slot10
		118	[  0]	CALLT	  5		4	; return uv2"unknown"(slot6, uv3"unknown", uv6"unknown")
		119	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		120	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		121	[  0]	MOV  	  8		4	; slot8 = slot4
		122	[  0]	TNEW 	  9		3	; slot9 = new table( array: 3, dict: 1)
		123	[  0]	TDUP 	 10		0	; slot10 = copy table#k0
		124	[  0]	TSETS	  3	10	16	; slot10.rows = slot3
		125	[  0]	UGET 	 11		12	; slot11 = uv12"unknwon"
		126	[  0]	TSETS	 11	10	15	; slot10.color = uv12"unknown"
		127	[  0]	TGETS	 11	4	5	; slot11 = slot4.lo
		128	[  0]	TSETS	 11	10	9	; slot10.shadow = <unknown table>.lo
		129	[  0]	TSETB	 10	9	1	; slot9[1] = slot10
		130	[  0]	CALLT	  5		4	; return uv2"unknown"(slot6, uv3"unknown", slot8)
	472	[  0]	FNEW 	 39		352	; N/A:0-0: 3 args, 19 upvalues, 19 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			[x] = 5,
			[y] = 4,
			]
		
		
		ktable#1 = [
			#1: ###,
			]
		
		
		ktable#3 = [
			[x] = 1,
			[y] = 1,
			]
		
		
		ktable#6 = [
			[right] = true,
			[left] = true,
			]
		
		
		ktable#8 = [
			[down] = true,
			[up] = true,
			]
		
		
		ktable#13 = [
			[x] = 11,
			[y] = 2,
			]
		
		
		ktable#14 = [
			#1: .#.,
			#2: #.#,
			]
		
		
		ktable#15 = [
			[x] = 3,
			[y] = 2,
			]
		
		
		ktable#16 = [
			#1: .#.,
			#2: ###,
			#3: .#.,
			]
		
		
		ktable#17 = [
			#1: ...#########...,
			#2: .#############.,
			#3: ###############,
			#4: ###############,
			#5: ###############,
			#6: #####.....#####,
			#7: ####.......####,
			#8: .##.........##.,
			]
		
		
		ktable#19 = [
			[y] = 4,
			[x] = 5,
			]
		
		
		ktable#20 = [
			[x] = 3,
			[y] = 3,
			]
		
		
		ktable#29 = [
			]
		
		
		ktable#32 = [
			[y] = 4,
			[x] = 4,
			]
		
		
		ktable#33 = [
			[y] = 4,
			[x] = 3,
			]
		
		
		ktable#35 = [
			[y] = 4,
			[x] = 4,
			]
		
		
		ktable#39 = [
			[y] = 3,
			[x] = 6,
			]
		
		
		ktable#45 = [
			[y] = 4,
			]
		
		
		ktable#51 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISEQS	  1		58	; if slot1 == "a"
		  2	[  0]	JMP  	  3		6	; 	goto 9
		  3	[  0]	ISEQS	  1		57	; if slot1 == "b"
		  4	[  0]	JMP  	  3		4	; 	goto 9
		  5	[  0]	ISEQS	  1		56	; if slot1 == "x"
		  6	[  0]	JMP  	  3		2	; 	goto 9
		  7	[  0]	ISNES	  1		55	; if slot1 ~= "y"
		  8	[  0]	JMP  	  3		5	; 	goto 14
		  9	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 10	[  0]	MOV  	  5		0	; slot5 = slot0
		 11	[  0]	MOV  	  6		1	; slot6 = slot1
		 12	[  0]	MOV  	  7		2	; slot7 = slot2
		 13	[  0]	UCLO 	  0		297	; nil uvs >= r0; goto 311
		 14	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 15	[  0]	MOV  	  5		2	; slot5 = slot2
		 16	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = uv1"unknown"(slot4)
		 17	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 18	[  0]	TGETV	  6	6	0	; slot6 = uv2"unknown"[slot0]
		 19	[  0]	IST  	   		6	; if slot6
		 20	[  0]	JMP  	  7		2	; 	goto 23
		 21	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 22	[  0]	TGETS	  6	6	54	; slot6 = uv2"unknown".xbox
		 23	[  0]	ISEQS	  1		53	; if slot1 == "leftshoulder"
		 24	[  0]	JMP  	  7		2	; 	goto 27
		 25	[  0]	ISNES	  1		52	; if slot1 ~= "rightshoulder"
		 26	[  0]	JMP  	  7		29	; 	goto 56
		 27	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		 28	[  0]	TGETV	  9	6	1	; slot9 = uv2"unknown".xbox[slot1]
		 29	[  0]	CALL 	  7	2	2	; slot7 = uv3"unknown"(slot8)
		 30	[  0]	UGET 	  8		4	; slot8 = uv4"unknwon"
		 31	[  0]	UGET 	 10		5	; slot10 = uv5"unknwon"
		 32	[  0]	TGETV	 12	6	1	; slot12 = uv2"unknown".xbox[slot1]
		 33	[  0]	CALL 	 10	2	2	; slot10 = uv5"unknown"(slot11)
		 34	[  0]	ADDVN	 10	10	0	; slot10 = uv5"unknown" + 8
		 35	[  0]	CALL 	  8	2	2	; slot8 = uv4"unknown"(slot9)
		 36	[  0]	UGET 	  9		6	; slot9 = uv6"unknwon"
		 37	[  0]	TGETB	 11	8	1	; slot11 = uv4"unknown"[1]
		 38	[  0]	LEN  	 11		11	; slot11 = #slot11
		 39	[  0]	LEN  	 12		8	; slot12 = #uv4"unknown"
		 40	[  0]	TGETB	 13	7	1	; slot13 = uv3"unknown"[1]
		 41	[  0]	LEN  	 13		13	; slot13 = #slot13
		 42	[  0]	KSHORT	 14		5	; slot14 = 5
		 43	[  0]	CALL 	  9	3	5	; slot9, slot10 = uv6"unknown"(slot10, slot11, slot12, slot13)
		 44	[  0]	UGET 	 11		7	; slot11 = uv7"unknwon"
		 45	[  0]	MOV  	 13		8	; slot13 = uv4"unknown"
		 46	[  0]	MOV  	 14		3	; slot14 = uv1"unknown"
		 47	[  0]	TNEW 	 15		3	; slot15 = new table( array: 3, dict: 1)
		 48	[  0]	TDUP 	 16		51	; slot16 = copy table#k51
		 49	[  0]	TSETS	  7	16	50	; slot16.rows = uv3"unknown"
		 50	[  0]	TSETS	  4	16	49	; slot16.color = slot4
		 51	[  0]	TSETS	  9	16	56	; slot16.x = uv6"unknown"
		 52	[  0]	TSETS	 10	16	55	; slot16.y = slot10
		 53	[  0]	TSETS	  5	16	48	; slot16.shadow = slot5
		 54	[  0]	TSETB	 16	15	1	; slot15[1] = slot16
		 55	[  0]	UCLO 	  0		256	; nil uvs >= r0; goto 312
		 56	[  0]	ISEQS	  1		47	; if slot1 == "triggerleft"
		 57	[  0]	JMP  	  7		2	; 	goto 60
		 58	[  0]	ISNES	  1		46	; if slot1 ~= "triggerright"
		 59	[  0]	JMP  	  7		24	; 	goto 84
		 60	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		 61	[  0]	TGETV	  9	6	1	; slot9 = uv2"unknown".xbox[slot1]
		 62	[  0]	CALL 	  7	2	2	; slot7 = uv3"unknown"(uv4"unknown")
		 63	[  0]	UGET 	  8		6	; slot8 = uv6"unknwon"
		 64	[  0]	UGET 	 10		8	; slot10 = uv8"unknwon"
		 65	[  0]	TGETB	 10	10	1	; slot10 = uv8"unknown"[1]
		 66	[  0]	LEN  	 10		10	; slot10 = #slot10
		 67	[  0]	UGET 	 11		8	; slot11 = uv8"unknwon"
		 68	[  0]	LEN  	 11		11	; slot11 = #uv8"unknown"
		 69	[  0]	TGETB	 12	7	1	; slot12 = uv3"unknown"[1]
		 70	[  0]	LEN  	 12		12	; slot12 = #slot12
		 71	[  0]	KSHORT	 13		5	; slot13 = 5
		 72	[  0]	CALL 	  8	2	5	; slot8 = uv6"unknown"(slot9, slot10, slot11, slot12)
		 73	[  0]	UGET 	  9		7	; slot9 = uv7"unknwon"
		 74	[  0]	UGET 	 11		8	; slot11 = uv8"unknwon"
		 75	[  0]	MOV  	 12		3	; slot12 = uv1"unknown"
		 76	[  0]	TNEW 	 13		3	; slot13 = new table( array: 3, dict: 1)
		 77	[  0]	TDUP 	 14		45	; slot14 = copy table#k45
		 78	[  0]	TSETS	  7	14	50	; slot14.rows = uv3"unknown"
		 79	[  0]	TSETS	  4	14	49	; slot14.color = slot4
		 80	[  0]	TSETS	  8	14	56	; slot14.x = uv6"unknown"
		 81	[  0]	TSETS	  5	14	48	; slot14.shadow = slot5
		 82	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		 83	[  0]	UCLO 	  0		229	; nil uvs >= r0; goto 313
		 84	[  0]	ISEQS	  1		44	; if slot1 == "start"
		 85	[  0]	JMP  	  7		2	; 	goto 88
		 86	[  0]	ISNES	  1		43	; if slot1 ~= "back"
		 87	[  0]	JMP  	  7		67	; 	goto 155
		 88	[  0]	ISNES	  0		42	; if slot0 ~= "playstation"
		 89	[  0]	JMP  	  7		19	; 	goto 109
		 90	[  0]	ISNES	  1		44	; if slot1 ~= "start"
		 91	[  0]	JMP  	  7		4	; 	goto 96
		 92	[  0]	UGET 	  7		9	; slot7 = uv9"unknwon"
		 93	[  0]	TGETS	  7	7	41	; slot7 = uv9"unknown".menu
		 94	[  0]	IST  	   		7	; if uv9"unknown".menu
		 95	[  0]	JMP  	  8		2	; 	goto 98
		 96	[  0]	UGET 	  7		9	; slot7 = uv9"unknwon"
		 97	[  0]	TGETS	  7	7	40	; slot7 = uv9"unknown".share
		 98	[  0]	UGET 	  8		7	; slot8 = uv7"unknwon"
		 99	[  0]	UGET 	 10		10	; slot10 = uv10"unknwon"
		100	[  0]	MOV  	 11		3	; slot11 = uv1"unknown"
		101	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		102	[  0]	TDUP 	 13		39	; slot13 = copy table#k39
		103	[  0]	TSETS	  7	13	50	; slot13.rows = uv9"unknown".share
		104	[  0]	TSETS	  4	13	49	; slot13.color = slot4
		105	[  0]	TSETS	  5	13	48	; slot13.shadow = slot5
		106	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		107	[  0]	UCLO 	  0		206	; nil uvs >= r0; goto 314
		108	[  0]	JMP  	  7		20	; 	goto 129
		109	[  0]	ISNES	  0		38	; if slot0 ~= "nintendo"
		110	[  0]	JMP  	  7		18	; 	goto 129
		111	[  0]	ISNES	  1		44	; if slot1 ~= "start"
		112	[  0]	JMP  	  7		4	; 	goto 117
		113	[  0]	UGET 	  7		9	; slot7 = uv9"unknwon"
		114	[  0]	TGETS	  7	7	37	; slot7 = uv9"unknown".plus
		115	[  0]	IST  	   		7	; if uv9"unknown".plus
		116	[  0]	JMP  	  8		2	; 	goto 119
		117	[  0]	UGET 	  7		9	; slot7 = uv9"unknwon"
		118	[  0]	TGETS	  7	7	36	; slot7 = uv9"unknown".minus
		119	[  0]	UGET 	  8		7	; slot8 = uv7"unknwon"
		120	[  0]	UGET 	 10		11	; slot10 = uv11"unknwon"
		121	[  0]	MOV  	 11		3	; slot11 = uv1"unknown"
		122	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		123	[  0]	TDUP 	 13		35	; slot13 = copy table#k35
		124	[  0]	TSETS	  7	13	50	; slot13.rows = uv9"unknown".minus
		125	[  0]	TSETS	  4	13	49	; slot13.color = slot4
		126	[  0]	TSETS	  5	13	48	; slot13.shadow = slot5
		127	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		128	[  0]	UCLO 	  0		186	; nil uvs >= r0; goto 315
		129	[  0]	ISNES	  1		43	; if slot1 ~= "back"
		130	[  0]	JMP  	  7		12	; 	goto 143
		131	[  0]	UGET 	  7		7	; slot7 = uv7"unknwon"
		132	[  0]	UGET 	  9		11	; slot9 = uv11"unknwon"
		133	[  0]	MOV  	 10		3	; slot10 = uv1"unknown"
		134	[  0]	TNEW 	 11		3	; slot11 = new table( array: 3, dict: 1)
		135	[  0]	TDUP 	 12		33	; slot12 = copy table#k33
		136	[  0]	UGET 	 13		9	; slot13 = uv9"unknwon"
		137	[  0]	TGETS	 13	13	34	; slot13 = uv9"unknown".view
		138	[  0]	TSETS	 13	12	50	; slot12.rows = uv9"unknown".view
		139	[  0]	TSETS	  4	12	49	; slot12.color = slot4
		140	[  0]	TSETS	  5	12	48	; slot12.shadow = slot5
		141	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		142	[  0]	UCLO 	  0		173	; nil uvs >= r0; goto 316
		143	[  0]	UGET 	  7		7	; slot7 = uv7"unknwon"
		144	[  0]	UGET 	  9		11	; slot9 = uv11"unknwon"
		145	[  0]	MOV  	 10		3	; slot10 = uv1"unknown"
		146	[  0]	TNEW 	 11		3	; slot11 = new table( array: 3, dict: 1)
		147	[  0]	TDUP 	 12		32	; slot12 = copy table#k32
		148	[  0]	UGET 	 13		9	; slot13 = uv9"unknwon"
		149	[  0]	TGETS	 13	13	41	; slot13 = uv9"unknown".menu
		150	[  0]	TSETS	 13	12	50	; slot12.rows = uv9"unknown".menu
		151	[  0]	TSETS	  4	12	49	; slot12.color = slot4
		152	[  0]	TSETS	  5	12	48	; slot12.shadow = slot5
		153	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		154	[  0]	UCLO 	  0		162	; nil uvs >= r0; goto 317
		155	[  0]	ISEQS	  1		31	; if slot1 == "leftstick"
		156	[  0]	JMP  	  7		2	; 	goto 159
		157	[  0]	ISNES	  1		30	; if slot1 ~= "rightstick"
		158	[  0]	JMP  	  7		25	; 	goto 184
		159	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		160	[  0]	TGETV	  9	6	1	; slot9 = uv2"unknown".xbox[slot1]
		161	[  0]	CALL 	  7	2	2	; slot7 = uv3"unknown"(uv7"unknown")
		162	[  0]	UGET 	  8		6	; slot8 = uv6"unknwon"
		163	[  0]	UGET 	 10		12	; slot10 = uv12"unknwon"
		164	[  0]	TGETB	 10	10	1	; slot10 = uv12"unknown"[1]
		165	[  0]	LEN  	 10		10	; slot10 = #slot10
		166	[  0]	UGET 	 11		12	; slot11 = uv12"unknwon"
		167	[  0]	LEN  	 11		11	; slot11 = #uv12"unknown"
		168	[  0]	TGETB	 12	7	1	; slot12 = uv3"unknown"[1]
		169	[  0]	LEN  	 12		12	; slot12 = #slot12
		170	[  0]	KSHORT	 13		5	; slot13 = 5
		171	[  0]	CALL 	  8	3	5	; slot8, slot9 = uv6"unknown"(slot9, slot10, slot11, slot12)
		172	[  0]	UGET 	 10		7	; slot10 = uv7"unknwon"
		173	[  0]	UGET 	 12		12	; slot12 = uv12"unknwon"
		174	[  0]	MOV  	 13		3	; slot13 = uv1"unknown"
		175	[  0]	TNEW 	 14		3	; slot14 = new table( array: 3, dict: 1)
		176	[  0]	TDUP 	 15		29	; slot15 = copy table#k29
		177	[  0]	TSETS	  7	15	50	; slot15.rows = uv3"unknown"
		178	[  0]	TSETS	  4	15	49	; slot15.color = slot4
		179	[  0]	TSETS	  8	15	56	; slot15.x = uv6"unknown"
		180	[  0]	TSETS	  9	15	55	; slot15.y = slot9
		181	[  0]	TSETS	  5	15	48	; slot15.shadow = slot5
		182	[  0]	TSETB	 15	14	1	; slot14[1] = slot15
		183	[  0]	UCLO 	  0		134	; nil uvs >= r0; goto 318
		184	[  0]	ISEQS	  1		28	; if slot1 == "lstick"
		185	[  0]	JMP  	  7		2	; 	goto 188
		186	[  0]	ISNES	  1		27	; if slot1 ~= "rstick"
		187	[  0]	JMP  	  7		35	; 	goto 223
		188	[  0]	ISNES	  1		28	; if slot1 ~= "lstick"
		189	[  0]	JMP  	  7		2	; 	goto 192
		190	[  0]	KSTR 	  7		26	; slot7 = "L"
		191	[  0]	JMP  	  8		1	; 	goto 193
		192	[  0]	KSTR 	  7		25	; slot7 = "R"
		193	[  0]	ISNES	  2		24	; if slot2 ~= "paper"
		194	[  0]	JMP  	  8		4	; 	goto 199
		195	[  0]	UGET 	  8		13	; slot8 = uv13"unknwon"
		196	[  0]	TGETS	  8	8	23	; slot8 = uv13"unknown".lo
		197	[  0]	IST  	   		8	; if uv13"unknown".lo
		198	[  0]	JMP  	  9		7	; 	goto 206
		199	[  0]	ISNES	  2		22	; if slot2 ~= "ink"
		200	[  0]	JMP  	  8		3	; 	goto 204
		201	[  0]	UGET 	  8		14	; slot8 = uv14"unknwon"
		202	[  0]	IST  	   		8	; if uv14"unknown"
		203	[  0]	JMP  	  9		2	; 	goto 206
		204	[  0]	UGET 	  8		15	; slot8 = uv15"unknwon"
		205	[  0]	TGETS	  8	8	21	; slot8 = uv15"unknown".hi
		206	[  0]	UGET 	  9		7	; slot9 = uv7"unknwon"
		207	[  0]	UGET 	 11		11	; slot11 = uv11"unknwon"
		208	[  0]	MOV  	 12		3	; slot12 = uv1"unknown"
		209	[  0]	TNEW 	 13		3	; slot13 = new table( array: 3, dict: 1)
		210	[  0]	TDUP 	 14		20	; slot14 = copy table#k20
		211	[  0]	UGET 	 15		16	; slot15 = uv16"unknwon"
		212	[  0]	TSETS	 15	14	50	; slot14.rows = uv16"unknown"
		213	[  0]	TSETS	  8	14	49	; slot14.color = uv15"unknown".hi
		214	[  0]	TSETB	 14	13	1	; slot13[1] = slot14
		215	[  0]	TDUP 	 14		19	; slot14 = copy table#k19
		216	[  0]	UGET 	 15		17	; slot15 = uv17"unknwon"
		217	[  0]	TGETV	 15	15	7	; slot15 = uv17"unknown"[slot7]
		218	[  0]	TSETS	 15	14	50	; slot14.rows = slot15
		219	[  0]	TSETS	  4	14	49	; slot14.color = slot4
		220	[  0]	TSETS	  5	14	48	; slot14.shadow = slot5
		221	[  0]	TSETB	 14	13	2	; slot13[2] = slot14
		222	[  0]	UCLO 	  0		96	; nil uvs >= r0; goto 319
		223	[  0]	ISNES	  1		18	; if slot1 ~= "pad"
		224	[  0]	JMP  	  7		15	; 	goto 240
		225	[  0]	UGET 	  7		7	; slot7 = uv7"unknwon"
		226	[  0]	TDUP 	  9		17	; slot9 = copy table#k17
		227	[  0]	MOV  	 10		3	; slot10 = uv1"unknown"
		228	[  0]	TNEW 	 11		3	; slot11 = new table( array: 3, dict: 1)
		229	[  0]	TDUP 	 12		15	; slot12 = copy table#k15
		230	[  0]	TDUP 	 13		16	; slot13 = copy table#k16
		231	[  0]	TSETS	 13	12	50	; slot12.rows = slot13
		232	[  0]	TSETS	  4	12	49	; slot12.color = slot4
		233	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		234	[  0]	TDUP 	 12		13	; slot12 = copy table#k13
		235	[  0]	TDUP 	 13		14	; slot13 = copy table#k14
		236	[  0]	TSETS	 13	12	50	; slot12.rows = slot13
		237	[  0]	TSETS	  4	12	49	; slot12.color = slot4
		238	[  0]	TSETB	 12	11	2	; slot11[2] = slot12
		239	[  0]	UCLO 	  0		80	; nil uvs >= r0; goto 320
		240	[  0]	MOV  	  9		1	; slot9 = slot1
		241	[  0]	TGETS	  7	1	12	; slot7 = slot1.sub
		242	[  0]	KSHORT	 10		1	; slot10 = 1
		243	[  0]	KSHORT	 11		4	; slot11 = 4
		244	[  0]	CALL 	  7	2	4	; slot7 = <unknown table>.sub(uv15"unknown".hi, slot9, slot10)
		245	[  0]	ISEQS	  7		11	; if <unknown table>.sub == "dpad"
		246	[  0]	JMP  	  7		7	; 	goto 254
		247	[  0]	MOV  	  9		1	; slot9 = slot1
		248	[  0]	TGETS	  7	1	12	; slot7 = slot1.sub
		249	[  0]	KSHORT	 10		1	; slot10 = 1
		250	[  0]	KSHORT	 11		2	; slot11 = 2
		251	[  0]	CALL 	  7	2	4	; slot7 = <unknown table>.sub(uv15"unknown".hi, slot9, slot10)
		252	[  0]	ISNES	  7		10	; if <unknown table>.sub ~= "dp"
		253	[  0]	JMP  	  7		42	; 	goto 296
		254	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
		255	[  0]	ISNES	  1		11	; if slot1 ~= "dpad"
		256	[  0]	JMP  	  8		2	; 	goto 259
		257	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
		258	[  0]	JMP  	  8		14	; 	goto 273
		259	[  0]	ISNES	  1		9	; if slot1 ~= "dpad_ud"
		260	[  0]	JMP  	  8		2	; 	goto 263
		261	[  0]	TDUP 	  7		8	; slot7 = copy table#k8
		262	[  0]	JMP  	  8		10	; 	goto 273
		263	[  0]	ISNES	  1		7	; if slot1 ~= "dpad_lr"
		264	[  0]	JMP  	  8		2	; 	goto 267
		265	[  0]	TDUP 	  7		6	; slot7 = copy table#k6
		266	[  0]	JMP  	  8		6	; 	goto 273
		267	[  0]	MOV  	 10		1	; slot10 = slot1
		268	[  0]	TGETS	  8	1	12	; slot8 = slot1.sub
		269	[  0]	KSHORT	 11		3	; slot11 = 3
		270	[  0]	CALL 	  8	2	3	; slot8 = <unknown table>.sub(slot9, slot10)
		271	[  0]	KPRI 	  9		2	; slot9 = true
		272	[  0]	TSETV	  9	7	8	; slot7[<unknown table>.sub] = slot9
		273	[  0]	FNEW 	  8		5	; N/A:0-0: 1 args, 0 upvalues, 10 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
			  2	[  0]	KSHORT	  2		1	; slot2 = 1
			  3	[  0]	KSHORT	  3		11	; slot3 = 11
			  4	[  0]	KSHORT	  4		1	; slot4 = 1
			  5	[  0]	FORI 	  2		7	; for slot5 = slot2,slot3,slot4 else goto 13
			  6	[  0]	GGET 	  6		7	; slot6 = _env["string"]
			  7	[  0]	TGETS	  6	6	6	; slot6 = string.rep
			  8	[  0]	KSTR 	  8		5	; slot8 = "."
			  9	[  0]	KSHORT	  9		11	; slot9 = 11
			 10	[  0]	CALL 	  6	2	3	; slot6 = string.rep(slot7, slot8)
			 11	[  0]	TSETV	  6	1	5	; slot1[slot5] = string.rep
			 12	[  0]	FORL 	  2		-7	; slot5 = slot5 + slot4; if cmp(slot5, sign slot4,  slot3) goto 6
			 13	[  0]	FNEW 	  2		4	; N/A:0-0: 4 args, 1 upvalues, 16 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	MOV  	  4		1	; slot4 = slot1
				  2	[  0]	MOV  	  5		3	; slot5 = slot3
				  3	[  0]	KSHORT	  6		1	; slot6 = 1
				  4	[  0]	FORI 	  4		21	; for slot7 = slot4,slot5,slot6 else goto 26
				  5	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
				  6	[  0]	TGETV	  8	8	7	; slot8 = uv0"unknown"[slot7]
				  7	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
				  8	[  0]	MOV  	 12		8	; slot12 = slot8
				  9	[  0]	TGETS	 10	8	3	; slot10 = slot8.sub
				 10	[  0]	KSHORT	 13		1	; slot13 = 1
				 11	[  0]	SUBVN	 14	0	0	; slot14 = slot0 - 1
				 12	[  0]	CALL 	 10	2	4	; slot10 = <unknown table>.sub(slot11, slot12, slot13)
				 13	[  0]	GGET 	 11		2	; slot11 = _env["string"]
				 14	[  0]	TGETS	 11	11	1	; slot11 = string.rep
				 15	[  0]	KSTR 	 13		0	; slot13 = "#"
				 16	[  0]	SUBVV	 14	2	0	; slot14 = slot2 - slot0
				 17	[  0]	ADDVN	 14	14	0	; slot14 = slot14 + 1
				 18	[  0]	CALL 	 11	2	3	; slot11 = string.rep(slot12, slot13)
				 19	[  0]	MOV  	 14		8	; slot14 = slot8
				 20	[  0]	TGETS	 12	8	3	; slot12 = slot8.sub
				 21	[  0]	ADDVN	 15	2	0	; slot15 = slot2 + 1
				 22	[  0]	CALL 	 12	2	3	; slot12 = <unknown table>.sub(slot13, slot14)
				 23	[  0]	CAT  	 10	10	12	; slot10 = <unknown table>.sub .. string.rep .. <unknown table>.sub
				 24	[  0]	TSETV	 10	9	7	; uv0"unknown"[slot7] = slot10
				 25	[  0]	FORL 	  4		-21	; slot7 = slot7 + slot6; if cmp(slot7, sign slot6,  slot5) goto 5
				 26	[  0]	RET0 	  0		1	; return
			 14	[  0]	ISNES	  0		3	; if slot0 ~= "up"
			 15	[  0]	JMP  	  3		7	; 	goto 23
			 16	[  0]	MOV  	  3		2	; slot3 = slot2
			 17	[  0]	KSHORT	  5		5	; slot5 = 5
			 18	[  0]	KSHORT	  6		1	; slot6 = 1
			 19	[  0]	KSHORT	  7		7	; slot7 = 7
			 20	[  0]	KSHORT	  8		3	; slot8 = 3
			 21	[  0]	CALL 	  3	1	5	;  = slot3(slot4, slot5, slot6, slot7)
			 22	[  0]	JMP  	  3		26	; 	goto 49
			 23	[  0]	ISNES	  0		2	; if slot0 ~= "down"
			 24	[  0]	JMP  	  3		7	; 	goto 32
			 25	[  0]	MOV  	  3		2	; slot3 = slot2
			 26	[  0]	KSHORT	  5		5	; slot5 = 5
			 27	[  0]	KSHORT	  6		9	; slot6 = 9
			 28	[  0]	KSHORT	  7		7	; slot7 = 7
			 29	[  0]	KSHORT	  8		11	; slot8 = 11
			 30	[  0]	CALL 	  3	1	5	;  = slot3(slot4, slot5, slot6, slot7)
			 31	[  0]	JMP  	  3		17	; 	goto 49
			 32	[  0]	ISNES	  0		1	; if slot0 ~= "left"
			 33	[  0]	JMP  	  3		7	; 	goto 41
			 34	[  0]	MOV  	  3		2	; slot3 = slot2
			 35	[  0]	KSHORT	  5		1	; slot5 = 1
			 36	[  0]	KSHORT	  6		5	; slot6 = 5
			 37	[  0]	KSHORT	  7		3	; slot7 = 3
			 38	[  0]	KSHORT	  8		7	; slot8 = 7
			 39	[  0]	CALL 	  3	1	5	;  = slot3(slot4, slot5, slot6, slot7)
			 40	[  0]	JMP  	  3		8	; 	goto 49
			 41	[  0]	ISNES	  0		0	; if slot0 ~= "right"
			 42	[  0]	JMP  	  3		6	; 	goto 49
			 43	[  0]	MOV  	  3		2	; slot3 = slot2
			 44	[  0]	KSHORT	  5		9	; slot5 = 9
			 45	[  0]	KSHORT	  6		5	; slot6 = 5
			 46	[  0]	KSHORT	  7		11	; slot7 = 11
			 47	[  0]	KSHORT	  8		7	; slot8 = 7
			 48	[  0]	CALL 	  3	1	5	;  = slot3(slot4, slot5, slot6, slot7)
			 49	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 50
			 50	[  0]	RET1 	  1		2	; return slot1
		274	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
		275	[  0]	GGET 	 10		4	; slot10 = _env["pairs"]
		276	[  0]	MOV  	 12		7	; slot12 = slot7
		277	[  0]	CALL 	 10	4	2	; slot10, slot11, slot12 = pairs(slot11)
		278	[  0]	ISNEXT	 13		9	; Verify ITERN at 288; goto 288
		279	[  0]	LEN  	 14		9	; slot14 = #slot9
		280	[  0]	ADDVN	 14	14	1	; slot14 = slot14 + 1
		281	[  0]	TDUP 	 15		3	; slot15 = copy table#k3
		282	[  0]	MOV  	 16		8	; slot16 = slot8
		283	[  0]	MOV  	 18		13	; slot18 = slot13
		284	[  0]	CALL 	 16	2	2	; slot16 = slot16(slot17)
		285	[  0]	TSETS	 16	15	50	; slot15.rows = slot16
		286	[  0]	TSETS	  4	15	49	; slot15.color = slot4
		287	[  0]	TSETV	 15	9	14	; slot9[slot14] = slot15
		288	[  0]	ITERN	 13	2	3	; slot13, slot14, slot15 = pairs, slot11, slot12; slot13 = pairs(slot11, slot12)
		289	[  0]	ITERL	 13		-11	; slot12 = slot13; if slot13 != nil goto 279
		290	[  0]	UGET 	 10		7	; slot10 = uv7"unknwon"
		291	[  0]	UGET 	 12		18	; slot12 = uv18"unknwon"
		292	[  0]	MOV  	 13		3	; slot13 = uv1"unknown"
		293	[  0]	MOV  	 14		9	; slot14 = slot9
		294	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 295
		295	[  0]	CALLT	 10		4	; return uv7"unknown"(slot11, uv18"unknown", uv1"unknown")
		296	[  0]	UGET 	  7		7	; slot7 = uv7"unknwon"
		297	[  0]	UGET 	  9		11	; slot9 = uv11"unknwon"
		298	[  0]	MOV  	 10		3	; slot10 = uv1"unknown"
		299	[  0]	TNEW 	 11		3	; slot11 = new table( array: 3, dict: 1)
		300	[  0]	TDUP 	 12		0	; slot12 = copy table#k0
		301	[  0]	UGET 	 13		17	; slot13 = uv17"unknwon"
		302	[  0]	TGETS	 13	13	2	; slot13 = uv17"unknown".-
		303	[  0]	IST  	   		13	; if uv17"unknown".-
		304	[  0]	JMP  	 14		1	; 	goto 306
		305	[  0]	TDUP 	 13		1	; slot13 = copy table#k1
		306	[  0]	TSETS	 13	12	50	; slot12.rows = slot13
		307	[  0]	TSETS	  4	12	49	; slot12.color = slot4
		308	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		309	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 310
		310	[  0]	CALLT	  7		4	; return uv7"unknown"(slot8, uv11"unknown", uv1"unknown")
		311	[  0]	CALLT	  3		4	; return uv1"unknown"(slot4, slot5, uv2"unknown".xbox)
		312	[  0]	CALLT	 11		4	; return slot11(slot12, slot13, slot14)
		313	[  0]	CALLT	  9		4	; return uv11"unknown"(uv1"unknown", slot11, slot12)
		314	[  0]	CALLT	  8		4	; return slot8(uv11"unknown", uv1"unknown", slot11)
		315	[  0]	CALLT	  8		4	; return slot8(uv11"unknown", uv1"unknown", slot11)
		316	[  0]	CALLT	  7		4	; return uv7"unknown"(slot8, uv11"unknown", uv1"unknown")
		317	[  0]	CALLT	  7		4	; return uv7"unknown"(slot8, uv11"unknown", uv1"unknown")
		318	[  0]	CALLT	 10		4	; return uv1"unknown"(slot11, slot12, slot13)
		319	[  0]	CALLT	  9		4	; return uv11"unknown"(uv1"unknown", slot11, slot12)
		320	[  0]	CALLT	  7		4	; return uv7"unknown"(slot8, uv11"unknown", uv1"unknown")
	473	[  0]	TDUP 	 40		351	; slot40 = copy table#k351
	474	[  0]	FNEW 	 41		350	; N/A:0-0: 1 args, 2 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		7	; slot1 = _env["tostring"]
		  2	[  0]	ISTC 	  3		0	; slot3 = slot0; if slot0
		  3	[  0]	JMP  	  3		1	; 	goto 5
		  4	[  0]	KSTR 	  3		6	; slot3 = ""
		  5	[  0]	CALL 	  1	2	2	; slot1 = tostring(slot2)
		  6	[  0]	MOV  	  0		1	; slot0 = slot1
		  7	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  8	[  0]	TGETV	  1	1	0	; slot1 = uv0"unknown"[slot0]
		  9	[  0]	ISF  	   		1	; if not slot1
		 10	[  0]	JMP  	  2		3	; 	goto 14
		 11	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 12	[  0]	TGETV	  1	1	0	; slot1 = uv0"unknown"[slot0]
		 13	[  0]	RET1 	  1		2	; return slot1
		 14	[  0]	MOV  	  3		0	; slot3 = slot0
		 15	[  0]	TGETS	  1	0	5	; slot1 = slot0.match
		 16	[  0]	KSTR 	  4		4	; slot4 = "^kp(.)$"
		 17	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.match(slot2, slot3)
		 18	[  0]	ISF  	   		1	; if not slot1
		 19	[  0]	JMP  	  2		6	; 	goto 26
		 20	[  0]	KSTR 	  2		3	; slot2 = "N"
		 21	[  0]	MOV  	  5		1	; slot5 = slot1
		 22	[  0]	TGETS	  3	1	2	; slot3 = slot1.upper
		 23	[  0]	CALL 	  3	2	2	; slot3 = <unknown table>.upper(slot4)
		 24	[  0]	CAT  	  2	2	3	; slot2 = slot2 .. <unknown table>.upper
		 25	[  0]	RET1 	  2		2	; return slot2
		 26	[  0]	MOV  	  4		0	; slot4 = slot0
		 27	[  0]	TGETS	  2	0	2	; slot2 = slot0.upper
		 28	[  0]	CALL 	  2	2	2	; slot2 = <unknown table>.upper(<unknown table>.upper)
		 29	[  0]	KSTR 	  3		6	; slot3 = ""
		 30	[  0]	KSHORT	  4		1	; slot4 = 1
		 31	[  0]	LEN  	  5		2	; slot5 = #slot2
		 32	[  0]	KSHORT	  6		1	; slot6 = 1
		 33	[  0]	FORI 	  4		18	; for slot7 = slot4,slot5,slot6 else goto 52
		 34	[  0]	MOV  	 10		2	; slot10 = slot2
		 35	[  0]	TGETS	  8	2	1	; slot8 = slot2.sub
		 36	[  0]	MOV  	 11		7	; slot11 = slot7
		 37	[  0]	MOV  	 12		7	; slot12 = slot7
		 38	[  0]	CALL 	  8	2	4	; slot8 = <unknown table>.sub(slot9, slot10, slot11)
		 39	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 40	[  0]	TGETV	  9	9	8	; slot9 = uv1"unknown"[<unknown table>.sub]
		 41	[  0]	ISF  	   		9	; if not slot9
		 42	[  0]	JMP  	 10		3	; 	goto 46
		 43	[  0]	MOV  	  9		3	; slot9 = slot3
		 44	[  0]	MOV  	 10		8	; slot10 = <unknown table>.sub
		 45	[  0]	CAT  	  3	9	10	; slot3 = slot9 .. <unknown table>.sub
		 46	[  0]	LEN  	  9		3	; slot9 = #slot3
		 47	[  0]	KSHORT	 10		5	; slot10 = 5
		 48	[  0]	ISGT 	 10		9	; if slot10 > slot9
		 49	[  0]	JMP  	  9		1	; 	goto 51
		 50	[  0]	JMP  	  4		1	; 	goto 52
		 51	[  0]	FORL 	  4		-18	; slot7 = slot7 + slot6; if cmp(slot7, sign slot6,  slot5) goto 34
		 52	[  0]	ISNES	  3		6	; if slot3 ~= ""
		 53	[  0]	JMP  	  4		1	; 	goto 55
		 54	[  0]	KSTR 	  3		0	; slot3 = "?"
		 55	[  0]	RET1 	  3		2	; return slot3
	475	[  0]	KSTR 	 42		349	; slot42 = "keyLabel"
	476	[  0]	TSETV	 41	2	42	; slot2[slot42] = slot41
	477	[  0]	FNEW 	 42		348	; N/A:0-0: 2 args, 8 upvalues, 18 slots
		
		;;;; constant tables ;;;;
		ktable#1 = [
			[y] = 3,
			]
		
		
		ktable#10 = [
			[x] = 5,
			[y] = 3,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	MOV  	  4		1	; slot4 = slot1
		  3	[  0]	CALL 	  2	3	2	; slot2, slot3 = uv0"unknown"(slot3)
		  4	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		  5	[  0]	TGETV	  4	4	0	; slot4 = uv1"unknown"[slot0]
		  6	[  0]	ISEQS	  0		19	; if slot0 == "up"
		  7	[  0]	JMP  	  5		6	; 	goto 14
		  8	[  0]	ISEQS	  0		18	; if slot0 == "down"
		  9	[  0]	JMP  	  5		4	; 	goto 14
		 10	[  0]	ISEQS	  0		17	; if slot0 == "left"
		 11	[  0]	JMP  	  5		2	; 	goto 14
		 12	[  0]	ISNES	  0		16	; if slot0 ~= "right"
		 13	[  0]	JMP  	  5		29	; 	goto 43
		 14	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 15	[  0]	KSHORT	  7		13	; slot7 = 13
		 16	[  0]	CALL 	  5	2	2	; slot5 = uv2"unknown"(slot6)
		 17	[  0]	KSHORT	  6		1	; slot6 = 1
		 18	[  0]	LEN  	  7		5	; slot7 = #uv2"unknown"
		 19	[  0]	KSHORT	  8		1	; slot8 = 1
		 20	[  0]	FORI 	  6		13	; for slot9 = slot6,slot7,slot8 else goto 34
		 21	[  0]	TGETV	 10	5	9	; slot10 = uv2"unknown"[slot9]
		 22	[  0]	MOV  	 12		10	; slot12 = slot10
		 23	[  0]	TGETS	 10	10	15	; slot10 = slot10.gsub
		 24	[  0]	KSTR 	 13		14	; slot13 = "^%.%."
		 25	[  0]	KSTR 	 14		13	; slot14 = ".#"
		 26	[  0]	CALL 	 10	2	4	; slot10 = <unknown table>.gsub(slot11, slot12, slot13)
		 27	[  0]	MOV  	 12		10	; slot12 = <unknown table>.gsub
		 28	[  0]	TGETS	 10	10	15	; slot10 = <unknown table>.gsub.gsub
		 29	[  0]	KSTR 	 13		12	; slot13 = "%.%.$"
		 30	[  0]	KSTR 	 14		11	; slot14 = "#."
		 31	[  0]	CALL 	 10	2	4	; slot10 = <unknown table>.gsub.gsub(slot11, <unknown table>.gsub, slot13)
		 32	[  0]	TSETV	 10	5	9	; uv2"unknown"[slot9] = <unknown table>.gsub.gsub
		 33	[  0]	FORL 	  6		-13	; slot9 = slot9 + slot8; if cmp(slot9, sign slot8,  slot7) goto 21
		 34	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		 35	[  0]	MOV  	  8		5	; slot8 = uv2"unknown"
		 36	[  0]	MOV  	  9		2	; slot9 = slot2
		 37	[  0]	TNEW 	 10		3	; slot10 = new table( array: 3, dict: 1)
		 38	[  0]	TDUP 	 11		10	; slot11 = copy table#k10
		 39	[  0]	TSETS	  4	11	9	; slot11.rows = slot4
		 40	[  0]	TSETS	  3	11	8	; slot11.color = slot3
		 41	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		 42	[  0]	CALLT	  6		4	; return uv3"unknown"(slot7, uv2"unknown", slot9)
		 43	[  0]	UGET 	  5		4	; slot5 = uv4"unknwon"
		 44	[  0]	MOV  	  7		0	; slot7 = slot0
		 45	[  0]	CALL 	  5	2	2	; slot5 = uv4"unknown"(uv3"unknown")
		 46	[  0]	UGET 	  6		5	; slot6 = uv5"unknwon"
		 47	[  0]	MOV  	  8		5	; slot8 = uv4"unknown"
		 48	[  0]	CALL 	  6	2	2	; slot6 = uv5"unknown"(slot7)
		 49	[  0]	GGET 	  7		7	; slot7 = _env["math"]
		 50	[  0]	TGETS	  7	7	6	; slot7 = math.max
		 51	[  0]	KSHORT	  9		9	; slot9 = 9
		 52	[  0]	UGET 	 10		6	; slot10 = uv6"unknwon"
		 53	[  0]	MOV  	 12		5	; slot12 = uv4"unknown"
		 54	[  0]	CALL 	 10	2	2	; slot10 = uv6"unknown"(slot11)
		 55	[  0]	ADDVN	 10	10	0	; slot10 = uv6"unknown" + 6
		 56	[  0]	CALL 	  7	2	3	; slot7 = math.max(uv4"unknown", slot9)
		 57	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
		 58	[  0]	KSHORT	  9		1	; slot9 = 1
		 59	[  0]	KSHORT	 10		9	; slot10 = 9
		 60	[  0]	KSHORT	 11		1	; slot11 = 1
		 61	[  0]	FORI 	  9		21	; for uv4"unknown" = slot9,slot10,slot11 else goto 83
		 62	[  0]	ISEQN	 12		1	; if slot12 == 1
		 63	[  0]	JMP  	 13		2	; 	goto 66
		 64	[  0]	ISNEN	 12		2	; if slot12 ~= 9
		 65	[  0]	JMP  	 13		10	; 	goto 76
		 66	[  0]	KSTR 	 13		5	; slot13 = "."
		 67	[  0]	GGET 	 14		4	; slot14 = _env["string"]
		 68	[  0]	TGETS	 14	14	3	; slot14 = string.rep
		 69	[  0]	KSTR 	 16		2	; slot16 = "#"
		 70	[  0]	SUBVN	 17	7	3	; slot17 = math.max - 2
		 71	[  0]	CALL 	 14	2	3	; slot14 = string.rep(slot15, slot16)
		 72	[  0]	KSTR 	 15		5	; slot15 = "."
		 73	[  0]	CAT  	 13	13	15	; slot13 = slot13 .. string.rep .. slot15
		 74	[  0]	TSETV	 13	8	12	; slot8[slot12] = slot13
		 75	[  0]	JMP  	 13		6	; 	goto 82
		 76	[  0]	GGET 	 13		4	; slot13 = _env["string"]
		 77	[  0]	TGETS	 13	13	3	; slot13 = string.rep
		 78	[  0]	KSTR 	 15		2	; slot15 = "#"
		 79	[  0]	MOV  	 16		7	; slot16 = math.max
		 80	[  0]	CALL 	 13	2	3	; slot13 = string.rep(string.rep, slot15)
		 81	[  0]	TSETV	 13	8	12	; slot8[slot12] = string.rep
		 82	[  0]	FORL 	  9		-21	; slot12 = slot12 + slot11; if cmp(slot12, sign slot11,  slot10) goto 62
		 83	[  0]	UGET 	  9		7	; slot9 = uv7"unknwon"
		 84	[  0]	MOV  	 11		7	; slot11 = math.max
		 85	[  0]	KSHORT	 12		9	; slot12 = 9
		 86	[  0]	TGETB	 13	6	1	; slot13 = uv5"unknown"[1]
		 87	[  0]	LEN  	 13		13	; slot13 = #slot13
		 88	[  0]	KSHORT	 14		5	; slot14 = 5
		 89	[  0]	CALL 	  9	2	5	; slot9 = uv7"unknown"(slot10, math.max, slot12, slot13)
		 90	[  0]	UGET 	 10		3	; slot10 = uv3"unknwon"
		 91	[  0]	MOV  	 12		8	; slot12 = slot8
		 92	[  0]	MOV  	 13		2	; slot13 = slot2
		 93	[  0]	TNEW 	 14		3	; slot14 = new table( array: 3, dict: 1)
		 94	[  0]	TDUP 	 15		1	; slot15 = copy table#k1
		 95	[  0]	TSETS	  6	15	9	; slot15.rows = uv5"unknown"
		 96	[  0]	TSETS	  3	15	8	; slot15.color = slot3
		 97	[  0]	TSETS	  9	15	0	; slot15.x = uv7"unknown"
		 98	[  0]	TSETB	 15	14	1	; slot14[1] = slot15
		 99	[  0]	CALLT	 10		4	; return uv3"unknown"(math.max, slot12, slot13)
	478	[  0]	TNEW 	 43		0	; slot43 = new table( array: 0, dict: 1)
	479	[  0]	KSTR 	 44		347	; slot44 = "skin"
	480	[  0]	FNEW 	 45		346	; N/A:0-0: 0 args, 1 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	RET1 	  0		2	; return uv0"unknown"
	481	[  0]	TSETV	 45	2	44	; slot2[slot44] = slot45
	482	[  0]	KSTR 	 44		345	; slot44 = "setSkin"
	483	[  0]	FNEW 	 45		344	; N/A:0-0: 1 args, 3 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETV	  1	1	0	; slot1 = uv0"unknown"[slot0]
		  3	[  0]	ISF  	   		1	; if not slot1
		  4	[  0]	JMP  	  1		3	; 	goto 8
		  5	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  6	[  0]	ISNEV	  0		1	; if slot0 ~= uv1"unknown"
		  7	[  0]	JMP  	  1		2	; 	goto 10
		  8	[  0]	KPRI 	  1		1	; slot1 = false
		  9	[  0]	RET1 	  1		2	; return slot1
		 10	[  0]	USETV	  1		0	; uv1"unknwon" = slot0
		 11	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 12	[  0]	TGETS	  1	1	0	; slot1 = uv2"unknown".clearCache
		 13	[  0]	CALL 	  1	1	1	;  = uv2"unknown".clearCache()
		 14	[  0]	KPRI 	  1		2	; slot1 = true
		 15	[  0]	RET1 	  1		2	; return slot1
	484	[  0]	TSETV	 45	2	44	; slot2[slot44] = slot45
	485	[  0]	KSTR 	 44		343	; slot44 = "imageData"
	486	[  0]	FNEW 	 45		342	; N/A:0-0: 3 args, 2 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		3	; slot3 = _env["pcall"]
		  2	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		  3	[  0]	ISTC 	  6		0	; slot6 = slot0; if slot0
		  4	[  0]	JMP  	  6		1	; 	goto 6
		  5	[  0]	KSTR 	  6		2	; slot6 = "xbox"
		  6	[  0]	GGET 	  7		1	; slot7 = _env["tostring"]
		  7	[  0]	ISTC 	  9		1	; slot9 = slot1; if slot1
		  8	[  0]	JMP  	  9		1	; 	goto 10
		  9	[  0]	KSTR 	  9		0	; slot9 = ""
		 10	[  0]	CALL 	  7	2	2	; slot7 = tostring(slot8)
		 11	[  0]	ISTC 	  8		2	; slot8 = slot2; if slot2
		 12	[  0]	JMP  	  8		1	; 	goto 14
		 13	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 14	[  0]	CALL 	  3	3	5	; slot3, slot4 = pcall(slot4, uv0"unknown", slot6, tostring)
		 15	[  0]	ISF  	   		3	; if not slot3
		 16	[  0]	JMP  	  5		2	; 	goto 19
		 17	[  0]	ISTC 	  5		4	; slot5 = slot4; if slot4
		 18	[  0]	JMP  	  5		1	; 	goto 20
		 19	[  0]	KPRI 	  5		0	; slot5 = nil
		 20	[  0]	RET1 	  5		2	; return slot5
	487	[  0]	TSETV	 45	2	44	; slot2[slot44] = slot45
	488	[  0]	KSTR 	 44		341	; slot44 = "keyImageData"
	489	[  0]	FNEW 	 45		340	; N/A:0-0: 2 args, 2 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		2	; slot2 = _env["pcall"]
		  2	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  3	[  0]	GGET 	  5		1	; slot5 = _env["tostring"]
		  4	[  0]	ISTC 	  7		0	; slot7 = slot0; if slot0
		  5	[  0]	JMP  	  7		1	; 	goto 7
		  6	[  0]	KSTR 	  7		0	; slot7 = ""
		  7	[  0]	CALL 	  5	2	2	; slot5 = tostring(slot6)
		  8	[  0]	ISTC 	  6		1	; slot6 = slot1; if slot1
		  9	[  0]	JMP  	  6		1	; 	goto 11
		 10	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 11	[  0]	CALL 	  2	3	4	; slot2, slot3 = pcall(slot3, uv0"unknown", tostring)
		 12	[  0]	ISF  	   		2	; if not slot2
		 13	[  0]	JMP  	  4		2	; 	goto 16
		 14	[  0]	ISTC 	  4		3	; slot4 = slot3; if slot3
		 15	[  0]	JMP  	  4		1	; 	goto 17
		 16	[  0]	KPRI 	  4		0	; slot4 = nil
		 17	[  0]	RET1 	  4		2	; return slot4
	490	[  0]	TSETV	 45	2	44	; slot2[slot44] = slot45
	491	[  0]	FNEW 	 44		339	; N/A:0-0: 1 args, 0 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		9	; 	goto 12
		  3	[  0]	GGET 	  1		5	; slot1 = _env["love"]
		  4	[  0]	TGETS	  1	1	4	; slot1 = love.graphics
		  5	[  0]	ISF  	   		1	; if not love.graphics
		  6	[  0]	JMP  	  2		5	; 	goto 12
		  7	[  0]	GGET 	  1		5	; slot1 = _env["love"]
		  8	[  0]	TGETS	  1	1	4	; slot1 = love.graphics
		  9	[  0]	TGETS	  1	1	3	; slot1 = love.graphics.newImage
		 10	[  0]	IST  	   		1	; if love.graphics.newImage
		 11	[  0]	JMP  	  1		2	; 	goto 14
		 12	[  0]	KPRI 	  1		1	; slot1 = false
		 13	[  0]	RET1 	  1		2	; return slot1
		 14	[  0]	GGET 	  1		2	; slot1 = _env["pcall"]
		 15	[  0]	GGET 	  3		5	; slot3 = _env["love"]
		 16	[  0]	TGETS	  3	3	4	; slot3 = love.graphics
		 17	[  0]	TGETS	  3	3	3	; slot3 = love.graphics.newImage
		 18	[  0]	MOV  	  4		0	; slot4 = slot0
		 19	[  0]	CALL 	  1	3	3	; slot1, slot2 = pcall(slot2, love.graphics.newImage)
		 20	[  0]	ISF  	   		1	; if not slot1
		 21	[  0]	JMP  	  3		2	; 	goto 24
		 22	[  0]	IST  	   		2	; if slot2
		 23	[  0]	JMP  	  3		2	; 	goto 26
		 24	[  0]	KPRI 	  3		1	; slot3 = false
		 25	[  0]	RET1 	  3		2	; return slot3
		 26	[  0]	MOV  	  5		2	; slot5 = slot2
		 27	[  0]	TGETS	  3	2	1	; slot3 = slot2.setFilter
		 28	[  0]	KSTR 	  6		0	; slot6 = "nearest"
		 29	[  0]	KSTR 	  7		0	; slot7 = "nearest"
		 30	[  0]	CALL 	  3	1	4	;  = <unknown table>.setFilter(slot4, slot5, slot6)
		 31	[  0]	RET1 	  2		2	; return slot2
	492	[  0]	KSTR 	 45		338	; slot45 = "image"
	493	[  0]	FNEW 	 46		337	; N/A:0-0: 2 args, 4 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KSTR 	  2		3	; slot2 = "pad:"
		  2	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  3	[  0]	KSTR 	  4		2	; slot4 = ":"
		  4	[  0]	GGET 	  5		1	; slot5 = _env["tostring"]
		  5	[  0]	MOV  	  7		0	; slot7 = slot0
		  6	[  0]	CALL 	  5	2	2	; slot5 = tostring(slot6)
		  7	[  0]	KSTR 	  6		2	; slot6 = ":"
		  8	[  0]	GGET 	  7		1	; slot7 = _env["tostring"]
		  9	[  0]	MOV  	  9		1	; slot9 = slot1
		 10	[  0]	CALL 	  7	2	2	; slot7 = tostring(slot8)
		 11	[  0]	CAT  	  2	2	7	; slot2 = slot2 .. uv0"unknown" .. slot4 .. tostring .. slot6 .. tostring
		 12	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 13	[  0]	TGETV	  3	3	2	; slot3 = uv1"unknown"[slot2]
		 14	[  0]	ISNEP	  3		0	; if slot3 ~= nil
		 15	[  0]	JMP  	  4		10	; 	goto 26
		 16	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 17	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		 18	[  0]	TGETS	  6	6	0	; slot6 = uv3"unknown".imageData
		 19	[  0]	MOV  	  8		0	; slot8 = slot0
		 20	[  0]	MOV  	  9		1	; slot9 = slot1
		 21	[  0]	CALL 	  6	0	3	; MULTRES = uv3"unknown".imageData(tostring, slot8)
		 22	[  0]	CALLM	  4	2	0	; slot4 = uv2"unknown"(, ...MULTRES)
		 23	[  0]	MOV  	  3		4	; slot3 = uv2"unknown"
		 24	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 25	[  0]	TSETV	  3	4	2	; uv1"unknown"[slot2] = uv2"unknown"
		 26	[  0]	ISTC 	  4		3	; slot4 = uv2"unknown"; if uv2"unknown"
		 27	[  0]	JMP  	  4		1	; 	goto 29
		 28	[  0]	KPRI 	  4		0	; slot4 = nil
		 29	[  0]	RET1 	  4		2	; return slot4
	494	[  0]	TSETV	 46	2	45	; slot2[slot45] = slot46
	495	[  0]	KSTR 	 45		336	; slot45 = "keyImage"
	496	[  0]	FNEW 	 46		335	; N/A:0-0: 1 args, 4 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KSTR 	  1		3	; slot1 = "key:"
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	KSTR 	  3		2	; slot3 = ":"
		  4	[  0]	GGET 	  4		1	; slot4 = _env["tostring"]
		  5	[  0]	MOV  	  6		0	; slot6 = slot0
		  6	[  0]	CALL 	  4	2	2	; slot4 = tostring(slot5)
		  7	[  0]	CAT  	  1	1	4	; slot1 = slot1 .. uv0"unknown" .. slot3 .. tostring
		  8	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  9	[  0]	TGETV	  2	2	1	; slot2 = uv1"unknown"[slot1]
		 10	[  0]	ISNEP	  2		0	; if slot2 ~= nil
		 11	[  0]	JMP  	  3		9	; 	goto 21
		 12	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 13	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
		 14	[  0]	TGETS	  5	5	0	; slot5 = uv3"unknown".keyImageData
		 15	[  0]	MOV  	  7		0	; slot7 = slot0
		 16	[  0]	CALL 	  5	0	2	; MULTRES = uv3"unknown".keyImageData(slot6)
		 17	[  0]	CALLM	  3	2	0	; slot3 = uv2"unknown"(, ...MULTRES)
		 18	[  0]	MOV  	  2		3	; slot2 = uv2"unknown"
		 19	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 20	[  0]	TSETV	  2	3	1	; uv1"unknown"[slot1] = uv2"unknown"
		 21	[  0]	ISTC 	  3		2	; slot3 = uv2"unknown"; if uv2"unknown"
		 22	[  0]	JMP  	  3		1	; 	goto 24
		 23	[  0]	KPRI 	  3		0	; slot3 = nil
		 24	[  0]	RET1 	  3		2	; return slot3
	497	[  0]	TSETV	 46	2	45	; slot2[slot45] = slot46
	498	[  0]	KSTR 	 45		334	; slot45 = "size"
	499	[  0]	FNEW 	 46		333	; N/A:0-0: 2 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	2	; slot2 = uv0"unknown".image
		  3	[  0]	MOV  	  4		0	; slot4 = slot0
		  4	[  0]	MOV  	  5		1	; slot5 = slot1
		  5	[  0]	CALL 	  2	2	3	; slot2 = uv0"unknown".image(slot3, slot4)
		  6	[  0]	IST  	   		2	; if slot2
		  7	[  0]	JMP  	  3		3	; 	goto 11
		  8	[  0]	KSHORT	  3		0	; slot3 = 0
		  9	[  0]	KSHORT	  4		0	; slot4 = 0
		 10	[  0]	RET  	  3		3	; return slot3, slot4
		 11	[  0]	MOV  	  5		2	; slot5 = slot2
		 12	[  0]	TGETS	  3	2	1	; slot3 = slot2.getWidth
		 13	[  0]	CALL 	  3	2	2	; slot3 = <unknown table>.getWidth(slot4)
		 14	[  0]	MOV  	  6		2	; slot6 = slot2
		 15	[  0]	TGETS	  4	2	0	; slot4 = slot2.getHeight
		 16	[  0]	CALL 	  4	0	2	; MULTRES = <unknown table>.getHeight(slot5)
		 17	[  0]	RETM 	  3		1	; return , ...MULTRES
	500	[  0]	TSETV	 46	2	45	; slot2[slot45] = slot46
	501	[  0]	KSTR 	 45		332	; slot45 = "draw"
	502	[  0]	FNEW 	 46		331	; N/A:0-0: 5 args, 1 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		  2	[  0]	TGETS	  5	5	8	; slot5 = uv0"unknown".image
		  3	[  0]	MOV  	  7		0	; slot7 = slot0
		  4	[  0]	MOV  	  8		1	; slot8 = slot1
		  5	[  0]	CALL 	  5	2	3	; slot5 = uv0"unknown".image(slot6, slot7)
		  6	[  0]	IST  	   		5	; if uv0"unknown".image
		  7	[  0]	JMP  	  6		3	; 	goto 11
		  8	[  0]	KSHORT	  6		0	; slot6 = 0
		  9	[  0]	KSHORT	  7		0	; slot7 = 0
		 10	[  0]	RET  	  6		3	; return slot6, slot7
		 11	[  0]	GGET 	  6		7	; slot6 = _env["love"]
		 12	[  0]	TGETS	  6	6	6	; slot6 = love.graphics
		 13	[  0]	TGETS	  6	6	5	; slot6 = love.graphics.setColor
		 14	[  0]	KSHORT	  8		1	; slot8 = 1
		 15	[  0]	KSHORT	  9		1	; slot9 = 1
		 16	[  0]	KSHORT	 10		1	; slot10 = 1
		 17	[  0]	ISTC 	 11		4	; slot11 = slot4; if slot4
		 18	[  0]	JMP  	 11		1	; 	goto 20
		 19	[  0]	KSHORT	 11		1	; slot11 = 1
		 20	[  0]	CALL 	  6	1	5	;  = love.graphics.setColor(slot7, slot8, slot9, slot10)
		 21	[  0]	GGET 	  6		7	; slot6 = _env["love"]
		 22	[  0]	TGETS	  6	6	6	; slot6 = love.graphics
		 23	[  0]	TGETS	  6	6	4	; slot6 = love.graphics.draw
		 24	[  0]	MOV  	  8		5	; slot8 = uv0"unknown".image
		 25	[  0]	GGET 	  9		3	; slot9 = _env["math"]
		 26	[  0]	TGETS	  9	9	2	; slot9 = math.floor
		 27	[  0]	ADDVN	 11	2	0	; slot11 = slot2 + 0.5
		 28	[  0]	CALL 	  9	2	2	; slot9 = math.floor(slot10)
		 29	[  0]	GGET 	 10		3	; slot10 = _env["math"]
		 30	[  0]	TGETS	 10	10	2	; slot10 = math.floor
		 31	[  0]	ADDVN	 12	3	0	; slot12 = slot3 + 0.5
		 32	[  0]	CALL 	 10	0	2	; MULTRES = math.floor(slot11)
		 33	[  0]	CALLM	  6	1	2	;  = love.graphics.draw(slot7, uv0"unknown".image, ...MULTRES)
		 34	[  0]	MOV  	  8		5	; slot8 = uv0"unknown".image
		 35	[  0]	TGETS	  6	5	1	; slot6 = uv0"unknown".image.getWidth
		 36	[  0]	CALL 	  6	2	2	; slot6 = uv0"unknown".image.getWidth(slot7)
		 37	[  0]	MOV  	  9		5	; slot9 = uv0"unknown".image
		 38	[  0]	TGETS	  7	5	0	; slot7 = uv0"unknown".image.getHeight
		 39	[  0]	CALL 	  7	0	2	; MULTRES = uv0"unknown".image.getHeight(uv0"unknown".image)
		 40	[  0]	RETM 	  6		1	; return , ...MULTRES
	503	[  0]	TSETV	 46	2	45	; slot2[slot45] = slot46
	504	[  0]	KSTR 	 45		330	; slot45 = "keySize"
	505	[  0]	FNEW 	 46		329	; N/A:0-0: 1 args, 1 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	2	; slot1 = uv0"unknown".keyImage
		  3	[  0]	MOV  	  3		0	; slot3 = slot0
		  4	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown".keyImage(slot2)
		  5	[  0]	IST  	   		1	; if slot1
		  6	[  0]	JMP  	  2		3	; 	goto 10
		  7	[  0]	KSHORT	  2		0	; slot2 = 0
		  8	[  0]	KSHORT	  3		0	; slot3 = 0
		  9	[  0]	RET  	  2		3	; return slot2, slot3
		 10	[  0]	MOV  	  4		1	; slot4 = slot1
		 11	[  0]	TGETS	  2	1	1	; slot2 = slot1.getWidth
		 12	[  0]	CALL 	  2	2	2	; slot2 = <unknown table>.getWidth(slot3)
		 13	[  0]	MOV  	  5		1	; slot5 = slot1
		 14	[  0]	TGETS	  3	1	0	; slot3 = slot1.getHeight
		 15	[  0]	CALL 	  3	0	2	; MULTRES = <unknown table>.getHeight(slot4)
		 16	[  0]	RETM 	  2		1	; return , ...MULTRES
	506	[  0]	TSETV	 46	2	45	; slot2[slot45] = slot46
	507	[  0]	KSTR 	 45		328	; slot45 = "drawKey"
	508	[  0]	FNEW 	 46		327	; N/A:0-0: 4 args, 1 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  2	[  0]	TGETS	  4	4	8	; slot4 = uv0"unknown".keyImage
		  3	[  0]	MOV  	  6		0	; slot6 = slot0
		  4	[  0]	CALL 	  4	2	2	; slot4 = uv0"unknown".keyImage(slot5)
		  5	[  0]	IST  	   		4	; if uv0"unknown".keyImage
		  6	[  0]	JMP  	  5		3	; 	goto 10
		  7	[  0]	KSHORT	  5		0	; slot5 = 0
		  8	[  0]	KSHORT	  6		0	; slot6 = 0
		  9	[  0]	RET  	  5		3	; return slot5, slot6
		 10	[  0]	GGET 	  5		7	; slot5 = _env["love"]
		 11	[  0]	TGETS	  5	5	6	; slot5 = love.graphics
		 12	[  0]	TGETS	  5	5	5	; slot5 = love.graphics.setColor
		 13	[  0]	KSHORT	  7		1	; slot7 = 1
		 14	[  0]	KSHORT	  8		1	; slot8 = 1
		 15	[  0]	KSHORT	  9		1	; slot9 = 1
		 16	[  0]	ISTC 	 10		3	; slot10 = slot3; if slot3
		 17	[  0]	JMP  	 10		1	; 	goto 19
		 18	[  0]	KSHORT	 10		1	; slot10 = 1
		 19	[  0]	CALL 	  5	1	5	;  = love.graphics.setColor(slot6, slot7, slot8, slot9)
		 20	[  0]	GGET 	  5		7	; slot5 = _env["love"]
		 21	[  0]	TGETS	  5	5	6	; slot5 = love.graphics
		 22	[  0]	TGETS	  5	5	4	; slot5 = love.graphics.draw
		 23	[  0]	MOV  	  7		4	; slot7 = uv0"unknown".keyImage
		 24	[  0]	GGET 	  8		3	; slot8 = _env["math"]
		 25	[  0]	TGETS	  8	8	2	; slot8 = math.floor
		 26	[  0]	ADDVN	 10	1	0	; slot10 = slot1 + 0.5
		 27	[  0]	CALL 	  8	2	2	; slot8 = math.floor(slot9)
		 28	[  0]	GGET 	  9		3	; slot9 = _env["math"]
		 29	[  0]	TGETS	  9	9	2	; slot9 = math.floor
		 30	[  0]	ADDVN	 11	2	0	; slot11 = slot2 + 0.5
		 31	[  0]	CALL 	  9	0	2	; MULTRES = math.floor(slot10)
		 32	[  0]	CALLM	  5	1	2	;  = love.graphics.draw(slot6, uv0"unknown".keyImage, ...MULTRES)
		 33	[  0]	MOV  	  7		4	; slot7 = uv0"unknown".keyImage
		 34	[  0]	TGETS	  5	4	1	; slot5 = uv0"unknown".keyImage.getWidth
		 35	[  0]	CALL 	  5	2	2	; slot5 = uv0"unknown".keyImage.getWidth(slot6)
		 36	[  0]	MOV  	  8		4	; slot8 = uv0"unknown".keyImage
		 37	[  0]	TGETS	  6	4	0	; slot6 = uv0"unknown".keyImage.getHeight
		 38	[  0]	CALL 	  6	0	2	; MULTRES = uv0"unknown".keyImage.getHeight(uv0"unknown".keyImage)
		 39	[  0]	RETM 	  5		1	; return , ...MULTRES
	509	[  0]	TSETV	 46	2	45	; slot2[slot45] = slot46
	510	[  0]	KSTR 	 45		326	; slot45 = "keysWidth"
	511	[  0]	FNEW 	 46		325	; N/A:0-0: 1 args, 1 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KSHORT	  1		0	; slot1 = 0
		  2	[  0]	GGET 	  2		1	; slot2 = _env["ipairs"]
		  3	[  0]	ISTC 	  4		0	; slot4 = slot0; if slot0
		  4	[  0]	JMP  	  4		1	; 	goto 6
		  5	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		  6	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
		  7	[  0]	JMP  	  5		12	; 	goto 20
		  8	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		  9	[  0]	TGETS	  7	7	0	; slot7 = uv0"unknown".keySize
		 10	[  0]	MOV  	  9		6	; slot9 = slot6
		 11	[  0]	CALL 	  7	2	2	; slot7 = uv0"unknown".keySize(slot8)
		 12	[  0]	ADDVV	  8	1	7	; slot8 = slot1 + uv0"unknown".keySize
		 13	[  0]	KSHORT	  9		1	; slot9 = 1
		 14	[  0]	ISGE 	  9		5	; if slot9 >= slot5
		 15	[  0]	JMP  	  9		2	; 	goto 18
		 16	[  0]	KSHORT	  9		3	; slot9 = 3
		 17	[  0]	JMP  	 10		1	; 	goto 19
		 18	[  0]	KSHORT	  9		0	; slot9 = 0
		 19	[  0]	ADDVV	  1	8	9	; slot1 = slot8 + slot9
		 20	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5, slot6 = slot2(slot3, slot4)
		 21	[  0]	ITERL	  5		-14	; slot4 = slot5; if slot5 != nil goto 8
		 22	[  0]	RET1 	  1		2	; return slot1
	512	[  0]	TSETV	 46	2	45	; slot2[slot45] = slot46
	513	[  0]	KSTR 	 45		324	; slot45 = "drawKeys"
	514	[  0]	FNEW 	 46		323	; N/A:0-0: 4 args, 1 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  4		1	; slot4 = slot1
		  2	[  0]	GGET 	  5		1	; slot5 = _env["ipairs"]
		  3	[  0]	ISTC 	  7		0	; slot7 = slot0; if slot0
		  4	[  0]	JMP  	  7		1	; 	goto 6
		  5	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
		  6	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		  7	[  0]	JMP  	  8		12	; 	goto 20
		  8	[  0]	KSHORT	 10		1	; slot10 = 1
		  9	[  0]	ISGE 	 10		8	; if slot10 >= slot8
		 10	[  0]	JMP  	 10		1	; 	goto 12
		 11	[  0]	ADDVN	  4	4	0	; slot4 = slot4 + 3
		 12	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 13	[  0]	TGETS	 10	10	0	; slot10 = uv0"unknown".drawKey
		 14	[  0]	MOV  	 12		9	; slot12 = slot9
		 15	[  0]	MOV  	 13		4	; slot13 = slot4
		 16	[  0]	MOV  	 14		2	; slot14 = slot2
		 17	[  0]	MOV  	 15		3	; slot15 = slot3
		 18	[  0]	CALL 	 10	2	5	; slot10 = uv0"unknown".drawKey(slot11, slot12, slot13, slot14)
		 19	[  0]	ADDVV	  4	4	10	; slot4 = slot4 + uv0"unknown".drawKey
		 20	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		 21	[  0]	ITERL	  8		-14	; slot7 = slot8; if slot8 != nil goto 8
		 22	[  0]	SUBVV	  5	4	1	; slot5 = slot4 - slot1
		 23	[  0]	RET1 	  5		2	; return slot5
	515	[  0]	TSETV	 46	2	45	; slot2[slot45] = slot46
	516	[  0]	KSTR 	 45		322	; slot45 = "clearCache"
	517	[  0]	FNEW 	 46		321	; N/A:0-0: 0 args, 1 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		2	; slot0 = _env["pairs"]
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	CALL 	  0	4	2	; slot0, slot1, slot2 = pairs(slot1)
		  4	[  0]	ISNEXT	  3		12	; Verify ITERN at 17; goto 17
		  5	[  0]	ISF  	   		4	; if not slot4
		  6	[  0]	JMP  	  5		7	; 	goto 14
		  7	[  0]	TGETS	  5	4	1	; slot5 = slot4.release
		  8	[  0]	ISF  	   		5	; if not <unknown table>.release
		  9	[  0]	JMP  	  6		4	; 	goto 14
		 10	[  0]	GGET 	  5		0	; slot5 = _env["pcall"]
		 11	[  0]	TGETS	  7	4	1	; slot7 = slot4.release
		 12	[  0]	MOV  	  8		4	; slot8 = slot4
		 13	[  0]	CALL 	  5	1	3	;  = pcall(slot6, <unknown table>.release)
		 14	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 15	[  0]	KPRI 	  6		0	; slot6 = nil
		 16	[  0]	TSETV	  6	5	3	; uv0"unknown"[slot3] = slot6
		 17	[  0]	ITERN	  3	3	3	; slot3, slot4, slot5 = slot0, slot1, slot2; slot3, slot4 = slot0(slot1, slot2)
		 18	[  0]	ITERL	  3		-14	; slot2 = slot3; if slot3 != nil goto 5
		 19	[  0]	RET0 	  0		1	; return
	518	[  0]	TSETV	 46	2	45	; slot2[slot45] = slot46
	519	[  0]	MOV  	  1		2	; slot1 = slot2
	520	[  0]	UCLO 	  2		0	; nil uvs >= r2; goto 521
	521	[  0]	KPRI 	  2		0	; slot2 = nil
	522	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
	523	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
	524	[  0]	KPRI 	  5		0	; slot5 = nil
	525	[  0]	KSTR 	  6		320	; slot6 = "styleSetting"
	526	[  0]	KSTR 	  7		319	; slot7 = "auto"
	527	[  0]	TSETV	  7	3	6	; slot3[slot6] = slot7
	528	[  0]	KSTR 	  6		318	; slot6 = "vibration"
	529	[  0]	KPRI 	  7		2	; slot7 = true
	530	[  0]	TSETV	  7	3	6	; slot3[slot6] = slot7
	531	[  0]	TDUP 	  6		317	; slot6 = copy table#k317
	532	[  0]	FNEW 	  7		316	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KPRI 	  1		1	; slot1 = false
		  4	[  0]	RET1 	  1		2	; return slot1
		  5	[  0]	GGET 	  1		1	; slot1 = _env["pcall"]
		  6	[  0]	TGETS	  3	0	0	; slot3 = slot0.isGamepad
		  7	[  0]	MOV  	  4		0	; slot4 = slot0
		  8	[  0]	CALL 	  1	3	3	; slot1, slot2 = pcall(slot2, <unknown table>.isGamepad)
		  9	[  0]	ISFC 	  3		1	; slot3 = slot1; if not slot1
		 10	[  0]	JMP  	  3		5	; 	goto 16
		 11	[  0]	ISEQP	  2		2	; if slot2 == true
		 12	[  0]	JMP  	  3		2	; 	goto 15
		 13	[  0]	KPRI 	  3		1	; slot3 = false
		 14	[  0]	JMP  	  4		1	; 	goto 16
		 15	[  0]	KPRI 	  3		2	; slot3 = true
		 16	[  0]	RET1 	  3		2	; return slot3
	533	[  0]	KSTR 	  8		315	; slot8 = "detectStyle"
	534	[  0]	FNEW 	  9		314	; N/A:0-0: 1 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KSTR 	  1		17	; slot1 = "xbox"
		  4	[  0]	RET1 	  1		2	; return slot1
		  5	[  0]	TGETS	  1	0	16	; slot1 = slot0.getDeviceInfo
		  6	[  0]	ISF  	   		1	; if not <unknown table>.getDeviceInfo
		  7	[  0]	JMP  	  2		15	; 	goto 23
		  8	[  0]	GGET 	  1		15	; slot1 = _env["pcall"]
		  9	[  0]	TGETS	  3	0	16	; slot3 = slot0.getDeviceInfo
		 10	[  0]	MOV  	  4		0	; slot4 = slot0
		 11	[  0]	CALL 	  1	3	3	; slot1, slot2 = pcall(slot2, <unknown table>.getDeviceInfo)
		 12	[  0]	ISF  	   		1	; if not slot1
		 13	[  0]	JMP  	  3		9	; 	goto 23
		 14	[  0]	ISF  	   		2	; if not slot2
		 15	[  0]	JMP  	  3		7	; 	goto 23
		 16	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 17	[  0]	TGETV	  3	3	2	; slot3 = uv0"unknown"[slot2]
		 18	[  0]	ISF  	   		3	; if not slot3
		 19	[  0]	JMP  	  4		3	; 	goto 23
		 20	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 21	[  0]	TGETV	  3	3	2	; slot3 = uv0"unknown"[slot2]
		 22	[  0]	RET1 	  3		2	; return slot3
		 23	[  0]	GGET 	  1		15	; slot1 = _env["pcall"]
		 24	[  0]	TGETS	  3	0	14	; slot3 = slot0.getName
		 25	[  0]	MOV  	  4		0	; slot4 = slot0
		 26	[  0]	CALL 	  1	3	3	; slot1, slot2 = pcall(slot2, <unknown table>.getName)
		 27	[  0]	ISF  	   		1	; if not slot1
		 28	[  0]	JMP  	  3		10	; 	goto 39
		 29	[  0]	GGET 	  3		13	; slot3 = _env["tostring"]
		 30	[  0]	ISTC 	  5		2	; slot5 = slot2; if slot2
		 31	[  0]	JMP  	  5		1	; 	goto 33
		 32	[  0]	KSTR 	  5		12	; slot5 = ""
		 33	[  0]	CALL 	  3	2	2	; slot3 = tostring(slot4)
		 34	[  0]	MOV  	  5		3	; slot5 = tostring
		 35	[  0]	TGETS	  3	3	11	; slot3 = tostring.lower
		 36	[  0]	CALL 	  3	2	2	; slot3 = tostring.lower(slot4)
		 37	[  0]	ISTC 	  2		3	; slot2 = tostring.lower; if tostring.lower
		 38	[  0]	JMP  	  4		1	; 	goto 40
		 39	[  0]	KSTR 	  2		12	; slot2 = ""
		 40	[  0]	MOV  	  5		2	; slot5 = slot2
		 41	[  0]	TGETS	  3	2	10	; slot3 = slot2.find
		 42	[  0]	KSTR 	  6		9	; slot6 = "dualsense"
		 43	[  0]	CALL 	  3	2	3	; slot3 = <unknown table>.find(slot4, slot5)
		 44	[  0]	IST  	   		3	; if slot3
		 45	[  0]	JMP  	  4		30	; 	goto 76
		 46	[  0]	MOV  	  5		2	; slot5 = slot2
		 47	[  0]	TGETS	  3	2	10	; slot3 = slot2.find
		 48	[  0]	KSTR 	  6		8	; slot6 = "dualshock"
		 49	[  0]	CALL 	  3	2	3	; slot3 = <unknown table>.find(slot4, slot5)
		 50	[  0]	IST  	   		3	; if slot3
		 51	[  0]	JMP  	  4		24	; 	goto 76
		 52	[  0]	MOV  	  5		2	; slot5 = slot2
		 53	[  0]	TGETS	  3	2	10	; slot3 = slot2.find
		 54	[  0]	KSTR 	  6		7	; slot6 = "playstation"
		 55	[  0]	CALL 	  3	2	3	; slot3 = <unknown table>.find(slot4, slot5)
		 56	[  0]	IST  	   		3	; if slot3
		 57	[  0]	JMP  	  4		18	; 	goto 76
		 58	[  0]	MOV  	  5		2	; slot5 = slot2
		 59	[  0]	TGETS	  3	2	10	; slot3 = slot2.find
		 60	[  0]	KSTR 	  6		6	; slot6 = "ps4"
		 61	[  0]	CALL 	  3	2	3	; slot3 = <unknown table>.find(slot4, slot5)
		 62	[  0]	IST  	   		3	; if slot3
		 63	[  0]	JMP  	  4		12	; 	goto 76
		 64	[  0]	MOV  	  5		2	; slot5 = slot2
		 65	[  0]	TGETS	  3	2	10	; slot3 = slot2.find
		 66	[  0]	KSTR 	  6		5	; slot6 = "ps5"
		 67	[  0]	CALL 	  3	2	3	; slot3 = <unknown table>.find(slot4, slot5)
		 68	[  0]	IST  	   		3	; if slot3
		 69	[  0]	JMP  	  4		6	; 	goto 76
		 70	[  0]	MOV  	  5		2	; slot5 = slot2
		 71	[  0]	TGETS	  3	2	10	; slot3 = slot2.find
		 72	[  0]	KSTR 	  6		4	; slot6 = "ps3"
		 73	[  0]	CALL 	  3	2	3	; slot3 = <unknown table>.find(slot4, slot5)
		 74	[  0]	ISF  	   		3	; if not slot3
		 75	[  0]	JMP  	  4		2	; 	goto 78
		 76	[  0]	KSTR 	  3		7	; slot3 = "playstation"
		 77	[  0]	RET1 	  3		2	; return slot3
		 78	[  0]	MOV  	  5		2	; slot5 = slot2
		 79	[  0]	TGETS	  3	2	10	; slot3 = slot2.find
		 80	[  0]	KSTR 	  6		3	; slot6 = "nintendo"
		 81	[  0]	CALL 	  3	2	3	; slot3 = <unknown table>.find(slot4, slot5)
		 82	[  0]	IST  	   		3	; if slot3
		 83	[  0]	JMP  	  4		18	; 	goto 102
		 84	[  0]	MOV  	  5		2	; slot5 = slot2
		 85	[  0]	TGETS	  3	2	10	; slot3 = slot2.find
		 86	[  0]	KSTR 	  6		2	; slot6 = "switch"
		 87	[  0]	CALL 	  3	2	3	; slot3 = <unknown table>.find(slot4, slot5)
		 88	[  0]	IST  	   		3	; if slot3
		 89	[  0]	JMP  	  4		12	; 	goto 102
		 90	[  0]	MOV  	  5		2	; slot5 = slot2
		 91	[  0]	TGETS	  3	2	10	; slot3 = slot2.find
		 92	[  0]	KSTR 	  6		1	; slot6 = "joy%-con"
		 93	[  0]	CALL 	  3	2	3	; slot3 = <unknown table>.find(slot4, slot5)
		 94	[  0]	IST  	   		3	; if slot3
		 95	[  0]	JMP  	  4		6	; 	goto 102
		 96	[  0]	MOV  	  5		2	; slot5 = slot2
		 97	[  0]	TGETS	  3	2	10	; slot3 = slot2.find
		 98	[  0]	KSTR 	  6		0	; slot6 = "pro controller"
		 99	[  0]	CALL 	  3	2	3	; slot3 = <unknown table>.find(slot4, slot5)
		100	[  0]	ISF  	   		3	; if not slot3
		101	[  0]	JMP  	  4		2	; 	goto 104
		102	[  0]	KSTR 	  3		3	; slot3 = "nintendo"
		103	[  0]	RET1 	  3		2	; return slot3
		104	[  0]	KSTR 	  3		17	; slot3 = "xbox"
		105	[  0]	RET1 	  3		2	; return slot3
	535	[  0]	TSETV	  9	3	8	; slot3[slot8] = slot9
	536	[  0]	KSTR 	  8		313	; slot8 = "added"
	537	[  0]	FNEW 	  9		312	; N/A:0-0: 1 args, 3 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		  4	[  0]	IST  	   		1	; if slot1
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	KPRI 	  1		1	; slot1 = false
		  7	[  0]	RET1 	  1		2	; return slot1
		  8	[  0]	GGET 	  1		0	; slot1 = _env["ipairs"]
		  9	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 10	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = ipairs(slot2)
		 11	[  0]	JMP  	  4		4	; 	goto 16
		 12	[  0]	ISNEV	  5		0	; if slot5 ~= slot0
		 13	[  0]	JMP  	  6		2	; 	goto 16
		 14	[  0]	KPRI 	  6		1	; slot6 = false
		 15	[  0]	RET1 	  6		2	; return slot6
		 16	[  0]	ITERC	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, uv1"unknown"; slot4, slot5 = slot1(slot2, uv1"unknown")
		 17	[  0]	ITERL	  4		-6	; uv1"unknown" = slot4; if slot4 != nil goto 12
		 18	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 19	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 20	[  0]	LEN  	  2		2	; slot2 = #uv1"unknown"
		 21	[  0]	ADDVN	  2	2	0	; slot2 = slot2 + 1
		 22	[  0]	TSETV	  0	1	2	; uv1"unknown"[slot2] = slot0
		 23	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 24	[  0]	IST  	   		1	; if uv2"unknown"
		 25	[  0]	JMP  	  1		1	; 	goto 27
		 26	[  0]	USETV	  2		0	; uv2"unknwon" = slot0
		 27	[  0]	KPRI 	  1		2	; slot1 = true
		 28	[  0]	RET1 	  1		2	; return slot1
	538	[  0]	TSETV	  9	3	8	; slot3[slot8] = slot9
	539	[  0]	KSTR 	  8		311	; slot8 = "removed"
	540	[  0]	FNEW 	  9		310	; N/A:0-0: 1 args, 2 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	LEN  	  1		1	; slot1 = #uv0"unknown"
		  3	[  0]	KSHORT	  2		1	; slot2 = 1
		  4	[  0]	KSHORT	  3		65535	; slot3 = 65535
		  5	[  0]	FORI 	  1		10	; for slot4 = slot1,slot2,slot3 else goto 16
		  6	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		  7	[  0]	TGETV	  5	5	4	; slot5 = uv0"unknown"[slot4]
		  8	[  0]	ISNEV	  5		0	; if slot5 ~= slot0
		  9	[  0]	JMP  	  5		5	; 	goto 15
		 10	[  0]	GGET 	  5		1	; slot5 = _env["table"]
		 11	[  0]	TGETS	  5	5	0	; slot5 = table.remove
		 12	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 13	[  0]	MOV  	  8		4	; slot8 = slot4
		 14	[  0]	CALL 	  5	1	3	;  = table.remove(slot6, uv0"unknown")
		 15	[  0]	FORL 	  1		-10	; slot4 = slot4 + slot3; if cmp(slot4, sign slot3,  slot2) goto 6
		 16	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 17	[  0]	ISNEV	  1		0	; if uv1"unknown" ~= slot0
		 18	[  0]	JMP  	  1		3	; 	goto 22
		 19	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 20	[  0]	TGETB	  1	1	1	; slot1 = uv0"unknown"[1]
		 21	[  0]	USETV	  1		1	; uv1"unknwon" = slot1
		 22	[  0]	RET0 	  0		1	; return
	541	[  0]	TSETV	  9	3	8	; slot3[slot8] = slot9
	542	[  0]	KSTR 	  8		309	; slot8 = "touch"
	543	[  0]	FNEW 	  9		308	; N/A:0-0: 1 args, 3 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		13	; 	goto 16
		  3	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  4	[  0]	MOV  	  3		0	; slot3 = slot0
		  5	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		  6	[  0]	ISF  	   		1	; if not slot1
		  7	[  0]	JMP  	  2		8	; 	goto 16
		  8	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  9	[  0]	ISEQV	  1		0	; if uv1"unknown" == slot0
		 10	[  0]	JMP  	  1		4	; 	goto 15
		 11	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 12	[  0]	TGETS	  1	1	0	; slot1 = uv2"unknown".added
		 13	[  0]	MOV  	  3		0	; slot3 = slot0
		 14	[  0]	CALL 	  1	1	2	;  = uv2"unknown".added(slot2)
		 15	[  0]	USETV	  1		0	; uv1"unknwon" = slot0
		 16	[  0]	RET0 	  0		1	; return
	544	[  0]	TSETV	  9	3	8	; slot3[slot8] = slot9
	545	[  0]	KSTR 	  8		307	; slot8 = "active"
	546	[  0]	FNEW 	  9		306	; N/A:0-0: 0 args, 1 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	RET1 	  0		2	; return uv0"unknown"
	547	[  0]	TSETV	  9	3	8	; slot3[slot8] = slot9
	548	[  0]	KSTR 	  8		305	; slot8 = "count"
	549	[  0]	FNEW 	  9		304	; N/A:0-0: 0 args, 1 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	LEN  	  0		0	; slot0 = #uv0"unknown"
		  3	[  0]	RET1 	  0		2	; return slot0
	550	[  0]	TSETV	  9	3	8	; slot3[slot8] = slot9
	551	[  0]	KSTR 	  8		303	; slot8 = "scan"
	552	[  0]	FNEW 	  9		302	; N/A:0-0: 0 args, 1 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		7	; slot0 = _env["love"]
		  2	[  0]	TGETS	  0	0	6	; slot0 = love.joystick
		  3	[  0]	ISF  	   		0	; if not love.joystick
		  4	[  0]	JMP  	  1		5	; 	goto 10
		  5	[  0]	GGET 	  0		7	; slot0 = _env["love"]
		  6	[  0]	TGETS	  0	0	6	; slot0 = love.joystick
		  7	[  0]	TGETS	  0	0	5	; slot0 = love.joystick.getJoysticks
		  8	[  0]	IST  	   		0	; if love.joystick.getJoysticks
		  9	[  0]	JMP  	  0		1	; 	goto 11
		 10	[  0]	RET0 	  0		1	; return
		 11	[  0]	GGET 	  0		4	; slot0 = _env["pcall"]
		 12	[  0]	GGET 	  2		7	; slot2 = _env["love"]
		 13	[  0]	TGETS	  2	2	6	; slot2 = love.joystick
		 14	[  0]	TGETS	  2	2	5	; slot2 = love.joystick.getJoysticks
		 15	[  0]	CALL 	  0	3	2	; slot0, slot1 = pcall(slot1)
		 16	[  0]	ISF  	   		0	; if not slot0
		 17	[  0]	JMP  	  2		5	; 	goto 23
		 18	[  0]	GGET 	  2		3	; slot2 = _env["type"]
		 19	[  0]	MOV  	  4		1	; slot4 = slot1
		 20	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		 21	[  0]	ISEQS	  2		2	; if slot2 == "table"
		 22	[  0]	JMP  	  2		1	; 	goto 24
		 23	[  0]	RET0 	  0		1	; return
		 24	[  0]	GGET 	  2		1	; slot2 = _env["ipairs"]
		 25	[  0]	MOV  	  4		1	; slot4 = slot1
		 26	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
		 27	[  0]	JMP  	  5		4	; 	goto 32
		 28	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 29	[  0]	TGETS	  7	7	0	; slot7 = uv0"unknown".added
		 30	[  0]	MOV  	  9		6	; slot9 = slot6
		 31	[  0]	CALL 	  7	1	2	;  = uv0"unknown".added(slot8)
		 32	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5, slot6 = slot2(slot3, slot4)
		 33	[  0]	ITERL	  5		-6	; slot4 = slot5; if slot5 != nil goto 28
		 34	[  0]	RET0 	  0		1	; return
	553	[  0]	TSETV	  9	3	8	; slot3[slot8] = slot9
	554	[  0]	KSTR 	  8		301	; slot8 = "name"
	555	[  0]	FNEW 	  9		300	; N/A:0-0: 0 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	IST  	   		0	; if uv0"unknown"
		  3	[  0]	JMP  	  0		2	; 	goto 6
		  4	[  0]	KPRI 	  0		0	; slot0 = nil
		  5	[  0]	RET1 	  0		2	; return slot0
		  6	[  0]	GGET 	  0		1	; slot0 = _env["pcall"]
		  7	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  8	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".getName
		  9	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 10	[  0]	CALL 	  0	3	3	; slot0, slot1 = pcall(slot1, uv0"unknown".getName)
		 11	[  0]	ISF  	   		0	; if not slot0
		 12	[  0]	JMP  	  2		2	; 	goto 15
		 13	[  0]	ISTC 	  2		1	; slot2 = slot1; if slot1
		 14	[  0]	JMP  	  2		1	; 	goto 16
		 15	[  0]	KPRI 	  2		0	; slot2 = nil
		 16	[  0]	RET1 	  2		2	; return slot2
	556	[  0]	TSETV	  9	3	8	; slot3[slot8] = slot9
	557	[  0]	KSTR 	  8		299	; slot8 = "style"
	558	[  0]	FNEW 	  9		298	; N/A:0-0: 0 args, 2 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	4	; slot0 = uv0"unknown".styleSetting
		  3	[  0]	ISEQS	  0		3	; if uv0"unknown".styleSetting == "xbox"
		  4	[  0]	JMP  	  1		4	; 	goto 9
		  5	[  0]	ISEQS	  0		2	; if uv0"unknown".styleSetting == "playstation"
		  6	[  0]	JMP  	  1		2	; 	goto 9
		  7	[  0]	ISNES	  0		1	; if uv0"unknown".styleSetting ~= "nintendo"
		  8	[  0]	JMP  	  1		1	; 	goto 10
		  9	[  0]	RET1 	  0		2	; return uv0"unknown".styleSetting
		 10	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 11	[  0]	TGETS	  1	1	0	; slot1 = uv0"unknown".detectStyle
		 12	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 13	[  0]	CALLT	  1		2	; return uv0"unknown".detectStyle(slot2)
	559	[  0]	TSETV	  9	3	8	; slot3[slot8] = slot9
	560	[  0]	KSTR 	  8		297	; slot8 = "vibrate"
	561	[  0]	FNEW 	  9		296	; N/A:0-0: 3 args, 2 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  2	[  0]	TGETS	  3	3	3	; slot3 = uv0"unknown".vibration
		  3	[  0]	ISF  	   		3	; if not uv0"unknown".vibration
		  4	[  0]	JMP  	  3		3	; 	goto 8
		  5	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		  6	[  0]	IST  	   		3	; if uv1"unknown"
		  7	[  0]	JMP  	  3		2	; 	goto 10
		  8	[  0]	KPRI 	  3		1	; slot3 = false
		  9	[  0]	RET1 	  3		2	; return slot3
		 10	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 11	[  0]	TGETS	  3	3	2	; slot3 = uv1"unknown".isVibrationSupported
		 12	[  0]	ISF  	   		3	; if not uv1"unknown".isVibrationSupported
		 13	[  0]	JMP  	  4		11	; 	goto 25
		 14	[  0]	GGET 	  3		1	; slot3 = _env["pcall"]
		 15	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 16	[  0]	TGETS	  5	5	2	; slot5 = uv1"unknown".isVibrationSupported
		 17	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 18	[  0]	CALL 	  3	3	3	; slot3, slot4 = pcall(slot4, uv1"unknown".isVibrationSupported)
		 19	[  0]	ISF  	   		3	; if not slot3
		 20	[  0]	JMP  	  5		4	; 	goto 25
		 21	[  0]	IST  	   		4	; if slot4
		 22	[  0]	JMP  	  5		2	; 	goto 25
		 23	[  0]	KPRI 	  5		1	; slot5 = false
		 24	[  0]	RET1 	  5		2	; return slot5
		 25	[  0]	GGET 	  3		1	; slot3 = _env["pcall"]
		 26	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 27	[  0]	TGETS	  5	5	0	; slot5 = uv1"unknown".setVibration
		 28	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 29	[  0]	ISTC 	  7		0	; slot7 = slot0; if slot0
		 30	[  0]	JMP  	  7		1	; 	goto 32
		 31	[  0]	KSHORT	  7		0	; slot7 = 0
		 32	[  0]	ISTC 	  8		1	; slot8 = slot1; if slot1
		 33	[  0]	JMP  	  8		1	; 	goto 35
		 34	[  0]	KSHORT	  8		0	; slot8 = 0
		 35	[  0]	ISTC 	  9		2	; slot9 = slot2; if slot2
		 36	[  0]	JMP  	  9		1	; 	goto 38
		 37	[  0]	KNUM 	  9		0	; slot9 = 0.1
		 38	[  0]	CALL 	  3	2	6	; slot3 = pcall(slot4, uv1"unknown".setVibration, uv1"unknown", slot7, slot8)
		 39	[  0]	RET1 	  3		2	; return slot3
	562	[  0]	TSETV	  9	3	8	; slot3[slot8] = slot9
	563	[  0]	KSTR 	  8		295	; slot8 = "stopVibration"
	564	[  0]	FNEW 	  9		294	; N/A:0-0: 0 args, 1 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		2	; slot0 = _env["ipairs"]
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	CALL 	  0	4	2	; slot0, slot1, slot2 = ipairs(slot1)
		  4	[  0]	JMP  	  3		4	; 	goto 9
		  5	[  0]	GGET 	  5		1	; slot5 = _env["pcall"]
		  6	[  0]	TGETS	  7	4	0	; slot7 = slot4.setVibration
		  7	[  0]	MOV  	  8		4	; slot8 = slot4
		  8	[  0]	CALL 	  5	1	3	;  = pcall(slot6, <unknown table>.setVibration)
		  9	[  0]	ITERC	  3	3	3	; slot3, slot4, slot5 = slot0, slot1, slot2; slot3, slot4 = slot0(slot1, slot2)
		 10	[  0]	ITERL	  3		-6	; slot2 = slot3; if slot3 != nil goto 5
		 11	[  0]	RET0 	  0		1	; return
	565	[  0]	TSETV	  9	3	8	; slot3[slot8] = slot9
	566	[  0]	MOV  	  2		3	; slot2 = slot3
	567	[  0]	UCLO 	  3		0	; nil uvs >= r3; goto 568
	568	[  0]	KPRI 	  3		0	; slot3 = nil
	569	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
	570	[  0]	KSHORT	  5		320	; slot5 = 320
	571	[  0]	KSHORT	  6		180	; slot6 = 180
	572	[  0]	KPRI 	  7		0	; slot7 = nil
	573	[  0]	KSHORT	  8		0	; slot8 = 0
	574	[  0]	KNIL 	  9		10	; slot9, slot10 = nil
	575	[  0]	TNEW 	 11		0	; slot11 = new table( array: 0, dict: 1)
	576	[  0]	KSTR 	 12		293	; slot12 = "speed"
	577	[  0]	KNUM 	 13		0	; slot13 = 0.5
	578	[  0]	TSETV	 13	4	12	; slot4[slot12] = slot13
	579	[  0]	FNEW 	 12		292	; N/A:0-0: 0 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		5	; slot0 = _env["rawget"]
		  2	[  0]	GGET 	  2		4	; slot2 = _env["_G"]
		  3	[  0]	KSTR 	  3		3	; slot3 = "ui"
		  4	[  0]	CALL 	  0	2	3	; slot0 = rawget(slot1, _G)
		  5	[  0]	ISFC 	  1		0	; slot1 = slot0; if not slot0
		  6	[  0]	JMP  	  1		1	; 	goto 8
		  7	[  0]	TGETS	  1	0	2	; slot1 = slot0.virtual
		  8	[  0]	ISF  	   		1	; if not <unknown table>.virtual
		  9	[  0]	JMP  	  2		3	; 	goto 13
		 10	[  0]	TGETS	  2	1	1	; slot2 = <unknown table>.virtual.W
		 11	[  0]	IST  	   		2	; if <unknown table>.virtual.W
		 12	[  0]	JMP  	  3		1	; 	goto 14
		 13	[  0]	KSHORT	  2		640	; slot2 = 640
		 14	[  0]	ISF  	   		1	; if not <unknown table>.virtual
		 15	[  0]	JMP  	  3		3	; 	goto 19
		 16	[  0]	TGETS	  3	1	0	; slot3 = <unknown table>.virtual.H
		 17	[  0]	IST  	   		3	; if <unknown table>.virtual.H
		 18	[  0]	JMP  	  4		1	; 	goto 20
		 19	[  0]	KSHORT	  3		360	; slot3 = 360
		 20	[  0]	RET  	  2		3	; return slot2, slot3
	580	[  0]	FNEW 	 13		291	; N/A:0-0: 0 args, 0 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		4	; slot0 = _env["rawget"]
		  2	[  0]	GGET 	  2		3	; slot2 = _env["_G"]
		  3	[  0]	KSTR 	  3		2	; slot3 = "screenScale"
		  4	[  0]	CALL 	  0	2	3	; slot0 = rawget(slot1, _G)
		  5	[  0]	IST  	   		0	; if slot0
		  6	[  0]	JMP  	  1		1	; 	goto 8
		  7	[  0]	KSHORT	  0		1	; slot0 = 1
		  8	[  0]	GGET 	  1		4	; slot1 = _env["rawget"]
		  9	[  0]	GGET 	  3		3	; slot3 = _env["_G"]
		 10	[  0]	KSTR 	  4		1	; slot4 = "screenScaleX"
		 11	[  0]	CALL 	  1	2	3	; slot1 = rawget(slot2, _G)
		 12	[  0]	IST  	   		1	; if slot1
		 13	[  0]	JMP  	  2		1	; 	goto 15
		 14	[  0]	MOV  	  1		0	; slot1 = slot0
		 15	[  0]	GGET 	  2		4	; slot2 = _env["rawget"]
		 16	[  0]	GGET 	  4		3	; slot4 = _env["_G"]
		 17	[  0]	KSTR 	  5		0	; slot5 = "screenScaleY"
		 18	[  0]	CALL 	  2	2	3	; slot2 = rawget(slot3, _G)
		 19	[  0]	IST  	   		2	; if slot2
		 20	[  0]	JMP  	  3		1	; 	goto 22
		 21	[  0]	MOV  	  2		0	; slot2 = slot0
		 22	[  0]	RET  	  1		3	; return slot1, slot2
	581	[  0]	KSTR 	 14		290	; slot14 = "toScreen"
	582	[  0]	FNEW 	 15		289	; N/A:0-0: 2 args, 1 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	CALL 	  2	3	1	; slot2, slot3 = uv0"unknown"()
		  3	[  0]	MULVV	  4	0	2	; slot4 = slot0 * uv0"unknown"
		  4	[  0]	GGET 	  5		3	; slot5 = _env["rawget"]
		  5	[  0]	GGET 	  7		2	; slot7 = _env["_G"]
		  6	[  0]	KSTR 	  8		1	; slot8 = "screenOffsetX"
		  7	[  0]	CALL 	  5	2	3	; slot5 = rawget(slot6, _G)
		  8	[  0]	IST  	   		5	; if rawget
		  9	[  0]	JMP  	  6		1	; 	goto 11
		 10	[  0]	KSHORT	  5		0	; slot5 = 0
		 11	[  0]	ADDVV	  4	4	5	; slot4 = slot4 + slot5
		 12	[  0]	MULVV	  5	1	3	; slot5 = slot1 * slot3
		 13	[  0]	GGET 	  6		3	; slot6 = _env["rawget"]
		 14	[  0]	GGET 	  8		2	; slot8 = _env["_G"]
		 15	[  0]	KSTR 	  9		0	; slot9 = "screenOffsetY"
		 16	[  0]	CALL 	  6	2	3	; slot6 = rawget(_G, _G)
		 17	[  0]	IST  	   		6	; if rawget
		 18	[  0]	JMP  	  7		1	; 	goto 20
		 19	[  0]	KSHORT	  6		0	; slot6 = 0
		 20	[  0]	ADDVV	  5	5	6	; slot5 = slot5 + slot6
		 21	[  0]	RET  	  4		3	; return slot4, slot5
	583	[  0]	TSETV	 15	4	14	; slot4[slot14] = slot15
	584	[  0]	KSTR 	 14		288	; slot14 = "toVirtual"
	585	[  0]	FNEW 	 15		287	; N/A:0-0: 2 args, 1 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	CALL 	  2	3	1	; slot2, slot3 = uv0"unknown"()
		  3	[  0]	GGET 	  4		5	; slot4 = _env["rawget"]
		  4	[  0]	GGET 	  6		4	; slot6 = _env["_G"]
		  5	[  0]	KSTR 	  7		3	; slot7 = "screenOffsetX"
		  6	[  0]	CALL 	  4	2	3	; slot4 = rawget(slot5, _G)
		  7	[  0]	IST  	   		4	; if rawget
		  8	[  0]	JMP  	  5		1	; 	goto 10
		  9	[  0]	KSHORT	  4		0	; slot4 = 0
		 10	[  0]	SUBVV	  4	0	4	; slot4 = slot0 - slot4
		 11	[  0]	GGET 	  5		2	; slot5 = _env["math"]
		 12	[  0]	TGETS	  5	5	1	; slot5 = math.max
		 13	[  0]	KNUM 	  7		0	; slot7 = 0.0001
		 14	[  0]	MOV  	  8		2	; slot8 = uv0"unknown"
		 15	[  0]	CALL 	  5	2	3	; slot5 = math.max(_G, slot7)
		 16	[  0]	DIVVV	  4	4	5	; slot4 = slot4 / math.max
		 17	[  0]	GGET 	  5		5	; slot5 = _env["rawget"]
		 18	[  0]	GGET 	  7		4	; slot7 = _env["_G"]
		 19	[  0]	KSTR 	  8		0	; slot8 = "screenOffsetY"
		 20	[  0]	CALL 	  5	2	3	; slot5 = rawget(_G, _G)
		 21	[  0]	IST  	   		5	; if rawget
		 22	[  0]	JMP  	  6		1	; 	goto 24
		 23	[  0]	KSHORT	  5		0	; slot5 = 0
		 24	[  0]	SUBVV	  5	1	5	; slot5 = slot1 - slot5
		 25	[  0]	GGET 	  6		2	; slot6 = _env["math"]
		 26	[  0]	TGETS	  6	6	1	; slot6 = math.max
		 27	[  0]	KNUM 	  8		0	; slot8 = 0.0001
		 28	[  0]	MOV  	  9		3	; slot9 = slot3
		 29	[  0]	CALL 	  6	2	3	; slot6 = math.max(_G, slot8)
		 30	[  0]	DIVVV	  5	5	6	; slot5 = slot5 / math.max
		 31	[  0]	RET  	  4		3	; return slot4, slot5
	586	[  0]	TSETV	 15	4	14	; slot4[slot14] = slot15
	587	[  0]	KSTR 	 14		286	; slot14 = "stamp"
	588	[  0]	KSHORT	 15		0	; slot15 = 0
	589	[  0]	TSETV	 15	4	14	; slot4[slot14] = slot15
	590	[  0]	FNEW 	 14		285	; N/A:0-0: 0 args, 4 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	CALL 	  0	3	1	; slot0, slot1 = uv0"unknown"()
		  3	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  4	[  0]	KSHORT	  3		0	; slot3 = 0
		  5	[  0]	ISGE 	  2		3	; if uv1"unknown" >= slot3
		  6	[  0]	JMP  	  2		2	; 	goto 9
		  7	[  0]	USETN	  1		0	; uv1"unknwon" = 0
		  8	[  0]	JMP  	  2		6	; 	goto 15
		  9	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 10	[  0]	SUBVN	  3	0	1	; slot3 = slot0 - 1
		 11	[  0]	ISGE 	  3		2	; if slot3 >= uv1"unknown"
		 12	[  0]	JMP  	  2		2	; 	goto 15
		 13	[  0]	SUBVN	  2	0	1	; slot2 = slot0 - 1
		 14	[  0]	USETV	  1		2	; uv1"unknwon" = slot2
		 15	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 16	[  0]	KSHORT	  3		0	; slot3 = 0
		 17	[  0]	ISGE 	  2		3	; if uv2"unknown" >= slot3
		 18	[  0]	JMP  	  2		2	; 	goto 21
		 19	[  0]	USETN	  2		0	; uv2"unknwon" = 0
		 20	[  0]	JMP  	  2		6	; 	goto 27
		 21	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 22	[  0]	SUBVN	  3	1	1	; slot3 = slot1 - 1
		 23	[  0]	ISGE 	  3		2	; if slot3 >= uv2"unknown"
		 24	[  0]	JMP  	  2		2	; 	goto 27
		 25	[  0]	SUBVN	  2	1	1	; slot2 = slot1 - 1
		 26	[  0]	USETV	  2		2	; uv2"unknwon" = slot2
		 27	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 28	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
		 29	[  0]	TGETS	  3	3	0	; slot3 = uv3"unknown".stamp
		 30	[  0]	ADDVN	  3	3	1	; slot3 = uv3"unknown".stamp + 1
		 31	[  0]	TSETS	  3	2	0	; uv3"unknown".stamp = slot3
		 32	[  0]	RET0 	  0		1	; return
	591	[  0]	KSTR 	 15		284	; slot15 = "get"
	592	[  0]	FNEW 	 16		283	; N/A:0-0: 0 args, 2 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  3	[  0]	RET  	  0		3	; return uv0"unknown", uv1"unknown"
	593	[  0]	TSETV	 16	4	15	; slot4[slot15] = slot16
	594	[  0]	KSTR 	 15		282	; slot15 = "screen"
	595	[  0]	FNEW 	 16		281	; N/A:0-0: 0 args, 3 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".toScreen
		  3	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  4	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		  5	[  0]	CALL 	  0	3	3	; slot0, slot1 = uv0"unknown".toScreen(slot1, uv1"unknown")
		  6	[  0]	GGET 	  2		1	; slot2 = _env["math"]
		  7	[  0]	TGETS	  2	2	0	; slot2 = math.floor
		  8	[  0]	ADDVN	  4	0	0	; slot4 = slot0 + 0.5
		  9	[  0]	CALL 	  2	2	2	; slot2 = math.floor(slot3)
		 10	[  0]	GGET 	  3		1	; slot3 = _env["math"]
		 11	[  0]	TGETS	  3	3	0	; slot3 = math.floor
		 12	[  0]	ADDVN	  5	1	0	; slot5 = slot1 + 0.5
		 13	[  0]	CALL 	  3	0	2	; MULTRES = math.floor(slot4)
		 14	[  0]	RETM 	  2		1	; return , ...MULTRES
	596	[  0]	TSETV	 16	4	15	; slot4[slot15] = slot16
	597	[  0]	KSTR 	 15		280	; slot15 = "syncFrom"
	598	[  0]	FNEW 	 16		279	; N/A:0-0: 2 args, 5 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		  2	[  0]	TGETS	  2	2	0	; slot2 = uv2"unknown".toVirtual
		  3	[  0]	MOV  	  4		0	; slot4 = slot0
		  4	[  0]	MOV  	  5		1	; slot5 = slot1
		  5	[  0]	CALL 	  2	3	3	; slot2, slot3 = uv2"unknown".toVirtual(slot3, slot4)
		  6	[  0]	USETV	  1		3	; uv1"unknwon" = slot3
		  7	[  0]	USETV	  0		2	; uv0"unknwon" = slot2
		  8	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		  9	[  0]	CALL 	  2	1	1	;  = uv3"unknown"()
		 10	[  0]	USETP	  4		0	; uv4"unknwon" = nil
		 11	[  0]	RET0 	  0		1	; return
	599	[  0]	TSETV	 16	4	15	; slot4[slot15] = slot16
	600	[  0]	KSTR 	 15		278	; slot15 = "warp"
	601	[  0]	FNEW 	 16		277	; N/A:0-0: 1 args, 4 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		1	; 	goto 4
		  3	[  0]	RET0 	  0		1	; return
		  4	[  0]	GGET 	  1		8	; slot1 = _env["love"]
		  5	[  0]	TGETS	  1	1	7	; slot1 = love.window
		  6	[  0]	ISF  	   		1	; if not love.window
		  7	[  0]	JMP  	  2		12	; 	goto 20
		  8	[  0]	GGET 	  1		8	; slot1 = _env["love"]
		  9	[  0]	TGETS	  1	1	7	; slot1 = love.window
		 10	[  0]	TGETS	  1	1	6	; slot1 = love.window.hasFocus
		 11	[  0]	ISF  	   		1	; if not love.window.hasFocus
		 12	[  0]	JMP  	  2		7	; 	goto 20
		 13	[  0]	GGET 	  1		8	; slot1 = _env["love"]
		 14	[  0]	TGETS	  1	1	7	; slot1 = love.window
		 15	[  0]	TGETS	  1	1	6	; slot1 = love.window.hasFocus
		 16	[  0]	CALL 	  1	2	1	; slot1 = love.window.hasFocus()
		 17	[  0]	IST  	   		1	; if slot1
		 18	[  0]	JMP  	  1		1	; 	goto 20
		 19	[  0]	RET0 	  0		1	; return
		 20	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 21	[  0]	TGETS	  1	1	5	; slot1 = uv0"unknown".screen
		 22	[  0]	CALL 	  1	3	1	; slot1, slot2 = uv0"unknown".screen()
		 23	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 24	[  0]	ISNEV	  1		3	; if slot1 ~= uv1"unknown"
		 25	[  0]	JMP  	  3		4	; 	goto 30
		 26	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 27	[  0]	ISNEV	  2		3	; if slot2 ~= uv2"unknown"
		 28	[  0]	JMP  	  3		1	; 	goto 30
		 29	[  0]	RET0 	  0		1	; return
		 30	[  0]	MOV  	  3		1	; slot3 = slot1
		 31	[  0]	USETV	  2		2	; uv2"unknwon" = slot2
		 32	[  0]	USETV	  1		3	; uv1"unknwon" = slot3
		 33	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
		 34	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 35	[  0]	LEN  	  4		4	; slot4 = #uv3"unknown"
		 36	[  0]	ADDVN	  4	4	0	; slot4 = slot4 + 1
		 37	[  0]	TNEW 	  5		4	; slot5 = new table( array: 4, dict: 1)
		 38	[  0]	TSETB	  1	5	1	; slot5[1] = slot1
		 39	[  0]	TSETB	  2	5	2	; slot5[2] = slot2
		 40	[  0]	GGET 	  6		8	; slot6 = _env["love"]
		 41	[  0]	TGETS	  6	6	4	; slot6 = love.timer
		 42	[  0]	TGETS	  6	6	3	; slot6 = love.timer.getTime
		 43	[  0]	CALL 	  6	0	1	; MULTRES = love.timer.getTime()
		 44	[  0]	TSETM	  6		1	; for i = 0, MULTRES, 1 do slot5[1 + i] = slot(6 + i)
		 45	[  0]	TSETV	  5	3	4	; uv3"unknown"[slot4] = slot5
		 46	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
		 47	[  0]	LEN  	  3		3	; slot3 = #uv3"unknown"
		 48	[  0]	KSHORT	  4		16	; slot4 = 16
		 49	[  0]	ISGE 	  4		3	; if slot4 >= slot3
		 50	[  0]	JMP  	  3		5	; 	goto 56
		 51	[  0]	GGET 	  3		2	; slot3 = _env["table"]
		 52	[  0]	TGETS	  3	3	1	; slot3 = table.remove
		 53	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
		 54	[  0]	KSHORT	  6		1	; slot6 = 1
		 55	[  0]	CALL 	  3	1	3	;  = table.remove(slot4, uv3"unknown")
		 56	[  0]	GGET 	  3		0	; slot3 = _env["pcall"]
		 57	[  0]	MOV  	  5		0	; slot5 = slot0
		 58	[  0]	MOV  	  6		1	; slot6 = slot1
		 59	[  0]	MOV  	  7		2	; slot7 = slot2
		 60	[  0]	CALL 	  3	1	4	;  = pcall(slot4, slot5, slot6)
		 61	[  0]	RET0 	  0		1	; return
	602	[  0]	TSETV	 16	4	15	; slot4[slot15] = slot16
	603	[  0]	KSTR 	 15		276	; slot15 = "isWarpEcho"
	604	[  0]	FNEW 	 16		275	; N/A:0-0: 2 args, 1 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		4	; slot2 = _env["love"]
		  2	[  0]	TGETS	  2	2	3	; slot2 = love.timer
		  3	[  0]	TGETS	  2	2	2	; slot2 = love.timer.getTime
		  4	[  0]	CALL 	  2	2	1	; slot2 = love.timer.getTime()
		  5	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  6	[  0]	LEN  	  3		3	; slot3 = #uv0"unknown"
		  7	[  0]	KSHORT	  4		1	; slot4 = 1
		  8	[  0]	KSHORT	  5		65535	; slot5 = 65535
		  9	[  0]	FORI 	  3		27	; for slot6 = slot3,slot4,slot5 else goto 37
		 10	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 11	[  0]	TGETV	  7	7	6	; slot7 = uv0"unknown"[slot6]
		 12	[  0]	TGETB	  8	7	3	; slot8 = slot7[3]
		 13	[  0]	SUBVV	  8	2	8	; slot8 = love.timer.getTime - slot8
		 14	[  0]	KNUM 	  9		0	; slot9 = 0.5
		 15	[  0]	ISGE 	  9		8	; if slot9 >= slot8
		 16	[  0]	JMP  	  8		1	; 	goto 18
		 17	[  0]	JMP  	  3		19	; 	goto 37
		 18	[  0]	GGET 	  8		1	; slot8 = _env["math"]
		 19	[  0]	TGETS	  8	8	0	; slot8 = math.abs
		 20	[  0]	TGETB	 10	7	1	; slot10 = slot7[1]
		 21	[  0]	SUBVV	 10	0	10	; slot10 = slot0 - slot10
		 22	[  0]	CALL 	  8	2	2	; slot8 = math.abs(slot9)
		 23	[  0]	KSHORT	  9		2	; slot9 = 2
		 24	[  0]	ISGT 	  8		9	; if math.abs > slot9
		 25	[  0]	JMP  	  8		10	; 	goto 36
		 26	[  0]	GGET 	  8		1	; slot8 = _env["math"]
		 27	[  0]	TGETS	  8	8	0	; slot8 = math.abs
		 28	[  0]	TGETB	 10	7	2	; slot10 = slot7[2]
		 29	[  0]	SUBVV	 10	1	10	; slot10 = slot1 - slot10
		 30	[  0]	CALL 	  8	2	2	; slot8 = math.abs(slot9)
		 31	[  0]	KSHORT	  9		2	; slot9 = 2
		 32	[  0]	ISGT 	  8		9	; if math.abs > slot9
		 33	[  0]	JMP  	  8		2	; 	goto 36
		 34	[  0]	KPRI 	  8		2	; slot8 = true
		 35	[  0]	RET1 	  8		2	; return slot8
		 36	[  0]	FORL 	  3		-27	; slot6 = slot6 + slot5; if cmp(slot6, sign slot5,  slot4) goto 10
		 37	[  0]	KPRI 	  3		1	; slot3 = false
		 38	[  0]	RET1 	  3		2	; return slot3
	605	[  0]	TSETV	 16	4	15	; slot4[slot15] = slot16
	606	[  0]	KSTR 	 15		274	; slot15 = "set"
	607	[  0]	FNEW 	 16		273	; N/A:0-0: 2 args, 4 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  2		0	; slot2 = slot0
		  2	[  0]	USETV	  1		1	; uv1"unknwon" = slot1
		  3	[  0]	USETV	  0		2	; uv0"unknwon" = slot2
		  4	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		  5	[  0]	CALL 	  2	1	1	;  = uv2"unknown"()
		  6	[  0]	USETP	  3		0	; uv3"unknwon" = nil
		  7	[  0]	RET0 	  0		1	; return
	608	[  0]	TSETV	 16	4	15	; slot4[slot15] = slot16
	609	[  0]	KSTR 	 15		272	; slot15 = "glideTo"
	610	[  0]	FNEW 	 16		271	; N/A:0-0: 3 args, 4 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		ktable#5 = [
			[t] = 0,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  2	[  0]	CALL 	  3	3	1	; slot3, slot4 = uv0"unknown"()
		  3	[  0]	GGET 	  5		8	; slot5 = _env["math"]
		  4	[  0]	TGETS	  5	5	7	; slot5 = math.max
		  5	[  0]	KSHORT	  7		0	; slot7 = 0
		  6	[  0]	GGET 	  8		8	; slot8 = _env["math"]
		  7	[  0]	TGETS	  8	8	6	; slot8 = math.min
		  8	[  0]	SUBVN	 10	3	0	; slot10 = uv0"unknown" - 1
		  9	[  0]	MOV  	 11		0	; slot11 = slot0
		 10	[  0]	CALL 	  8	0	3	; MULTRES = math.min(slot9, slot10)
		 11	[  0]	CALLM	  5	2	1	; slot5 = math.max(slot6, ...MULTRES)
		 12	[  0]	MOV  	  0		5	; slot0 = math.max
		 13	[  0]	GGET 	  5		8	; slot5 = _env["math"]
		 14	[  0]	TGETS	  5	5	7	; slot5 = math.max
		 15	[  0]	KSHORT	  7		0	; slot7 = 0
		 16	[  0]	GGET 	  8		8	; slot8 = _env["math"]
		 17	[  0]	TGETS	  8	8	6	; slot8 = math.min
		 18	[  0]	SUBVN	 10	4	0	; slot10 = slot4 - 1
		 19	[  0]	MOV  	 11		1	; slot11 = slot1
		 20	[  0]	CALL 	  8	0	3	; MULTRES = math.min(slot9, slot10)
		 21	[  0]	CALLM	  5	2	1	; slot5 = math.max(slot6, ...MULTRES)
		 22	[  0]	MOV  	  1		5	; slot1 = math.max
		 23	[  0]	TDUP 	  5		5	; slot5 = copy table#k5
		 24	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 25	[  0]	TSETS	  6	5	4	; slot5.fx = uv2"unknown"
		 26	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		 27	[  0]	TSETS	  6	5	3	; slot5.fy = uv3"unknown"
		 28	[  0]	TSETS	  0	5	2	; slot5.tx = math.max
		 29	[  0]	TSETS	  1	5	1	; slot5.ty = math.max
		 30	[  0]	ISTC 	  6		2	; slot6 = slot2; if slot2
		 31	[  0]	JMP  	  6		1	; 	goto 33
		 32	[  0]	KNUM 	  6		1	; slot6 = 0.085
		 33	[  0]	TSETS	  6	5	0	; slot5.dur = slot6
		 34	[  0]	USETV	  1		5	; uv1"unknwon" = slot5
		 35	[  0]	RET0 	  0		1	; return
	611	[  0]	TSETV	 16	4	15	; slot4[slot15] = slot16
	612	[  0]	KSTR 	 15		270	; slot15 = "isGliding"
	613	[  0]	FNEW 	 16		269	; N/A:0-0: 0 args, 1 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISNEP	  0		0	; if uv0"unknown" ~= nil
		  3	[  0]	JMP  	  0		2	; 	goto 6
		  4	[  0]	KPRI 	  0		1	; slot0 = false
		  5	[  0]	JMP  	  1		1	; 	goto 7
		  6	[  0]	KPRI 	  0		2	; slot0 = true
		  7	[  0]	RET1 	  0		2	; return slot0
	614	[  0]	TSETV	 16	4	15	; slot4[slot15] = slot16
	615	[  0]	KSTR 	 15		268	; slot15 = "finishGlide"
	616	[  0]	FNEW 	 16		267	; N/A:0-0: 0 args, 4 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		9	; 	goto 13
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".tx
		  6	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  7	[  0]	TGETS	  1	1	0	; slot1 = uv0"unknown".ty
		  8	[  0]	USETV	  2		1	; uv2"unknwon" = uv0"unknown".ty
		  9	[  0]	USETV	  1		0	; uv1"unknwon" = uv0"unknown".tx
		 10	[  0]	USETP	  0		0	; uv0"unknwon" = nil
		 11	[  0]	UGET 	  0		3	; slot0 = uv3"unknwon"
		 12	[  0]	CALL 	  0	1	1	;  = uv3"unknown"()
		 13	[  0]	RET0 	  0		1	; return
	617	[  0]	TSETV	 16	4	15	; slot4[slot15] = slot16
	618	[  0]	KSTR 	 15		266	; slot15 = "follow"
	619	[  0]	FNEW 	 16		265	; N/A:0-0: 2 args, 4 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	ISF  	   		2	; if not uv0"unknown"
		  3	[  0]	JMP  	  3		6	; 	goto 10
		  4	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  5	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  6	[  0]	MOV  	  4		0	; slot4 = slot0
		  7	[  0]	TSETS	  1	3	0	; uv0"unknown".ty = slot1
		  8	[  0]	TSETS	  4	2	1	; uv0"unknown".tx = slot4
		  9	[  0]	JMP  	  2		5	; 	goto 15
		 10	[  0]	MOV  	  2		0	; slot2 = slot0
		 11	[  0]	USETV	  2		1	; uv2"unknwon" = slot1
		 12	[  0]	USETV	  1		2	; uv1"unknwon" = slot2
		 13	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 14	[  0]	CALL 	  2	1	1	;  = uv3"unknown"()
		 15	[  0]	RET0 	  0		1	; return
	620	[  0]	TSETV	 16	4	15	; slot4[slot15] = slot16
	621	[  0]	KSTR 	 15		264	; slot15 = "glideTarget"
	622	[  0]	FNEW 	 16		263	; N/A:0-0: 0 args, 3 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		5	; 	goto 9
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".tx
		  6	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  7	[  0]	TGETS	  1	1	0	; slot1 = uv0"unknown".ty
		  8	[  0]	RET  	  0		3	; return uv0"unknown".tx, uv0"unknown".ty
		  9	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 10	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 11	[  0]	RET  	  0		3	; return uv1"unknown", uv2"unknown"
	623	[  0]	TSETV	 16	4	15	; slot4[slot15] = slot16
	624	[  0]	KSTR 	 15		262	; slot15 = "speedMultiplier"
	625	[  0]	FNEW 	 16		261	; N/A:0-0: 0 args, 1 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		1	; slot0 = _env["tonumber"]
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".speed
		  4	[  0]	CALL 	  0	2	2	; slot0 = tonumber(slot1)
		  5	[  0]	IST  	   		0	; if slot0
		  6	[  0]	JMP  	  1		1	; 	goto 8
		  7	[  0]	KNUM 	  0		0	; slot0 = 0.5
		  8	[  0]	KSHORT	  1		0	; slot1 = 0
		  9	[  0]	ISGE 	  0		1	; if slot0 >= slot1
		 10	[  0]	JMP  	  1		2	; 	goto 13
		 11	[  0]	KSHORT	  0		0	; slot0 = 0
		 12	[  0]	JMP  	  1		4	; 	goto 17
		 13	[  0]	KSHORT	  1		1	; slot1 = 1
		 14	[  0]	ISGE 	  1		0	; if slot1 >= slot0
		 15	[  0]	JMP  	  1		1	; 	goto 17
		 16	[  0]	KSHORT	  0		1	; slot0 = 1
		 17	[  0]	MULVN	  1	0	1	; slot1 = slot0 * 1.2
		 18	[  0]	ADDNV	  1	1	2	; slot1 = 0.55 + slot1
		 19	[  0]	RET1 	  1		2	; return slot1
	626	[  0]	TSETV	 16	4	15	; slot4[slot15] = slot16
	627	[  0]	KSTR 	 15		260	; slot15 = "update"
	628	[  0]	FNEW 	 16		259	; N/A:0-0: 4 args, 6 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KPRI 	  4		1	; slot4 = false
		  2	[  0]	GGET 	  5		10	; slot5 = _env["math"]
		  3	[  0]	TGETS	  5	5	9	; slot5 = math.sqrt
		  4	[  0]	MULVV	  7	1	1	; slot7 = slot1 * slot1
		  5	[  0]	MULVV	  8	2	2	; slot8 = slot2 * slot2
		  6	[  0]	ADDVV	  7	7	8	; slot7 = slot7 + slot8
		  7	[  0]	CALL 	  5	2	2	; slot5 = math.sqrt(slot6)
		  8	[  0]	KNUM 	  6		0	; slot6 = 0.2
		  9	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 10	[  0]	ISF  	   		7	; if not uv0"unknown"
		 11	[  0]	JMP  	  8		54	; 	goto 66
		 12	[  0]	KNUM 	  7		1	; slot7 = 0.45
		 13	[  0]	ISGE 	  7		5	; if slot7 >= math.sqrt
		 14	[  0]	JMP  	  7		2	; 	goto 17
		 15	[  0]	USETP	  0		0	; uv0"unknwon" = nil
		 16	[  0]	JMP  	  7		49	; 	goto 66
		 17	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 18	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 19	[  0]	TGETS	  8	8	8	; slot8 = uv0"unknown".t
		 20	[  0]	ADDVV	  8	8	0	; slot8 = uv0"unknown".t + slot0
		 21	[  0]	TSETS	  8	7	8	; uv0"unknown".t = slot8
		 22	[  0]	GGET 	  7		10	; slot7 = _env["math"]
		 23	[  0]	TGETS	  7	7	7	; slot7 = math.min
		 24	[  0]	KSHORT	  9		1	; slot9 = 1
		 25	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 26	[  0]	TGETS	 10	10	8	; slot10 = uv0"unknown".t
		 27	[  0]	GGET 	 11		10	; slot11 = _env["math"]
		 28	[  0]	TGETS	 11	11	6	; slot11 = math.max
		 29	[  0]	KNUM 	 13		2	; slot13 = 0.001
		 30	[  0]	UGET 	 14		0	; slot14 = uv0"unknwon"
		 31	[  0]	TGETS	 14	14	5	; slot14 = uv0"unknown".dur
		 32	[  0]	CALL 	 11	2	3	; slot11 = math.max(slot12, slot13)
		 33	[  0]	DIVVV	 10	10	11	; slot10 = uv0"unknown".t / math.max
		 34	[  0]	CALL 	  7	2	3	; slot7 = math.min(slot8, slot9)
		 35	[  0]	SUBNV	  8	7	3	; slot8 = 1 - math.min
		 36	[  0]	SUBNV	  9	7	3	; slot9 = 1 - math.min
		 37	[  0]	MULVV	  8	8	9	; slot8 = slot8 * slot9
		 38	[  0]	SUBNV	  9	7	3	; slot9 = 1 - math.min
		 39	[  0]	MULVV	  8	8	9	; slot8 = slot8 * slot9
		 40	[  0]	SUBNV	  8	8	3	; slot8 = 1 - slot8
		 41	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 42	[  0]	TGETS	  9	9	4	; slot9 = uv0"unknown".fx
		 43	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 44	[  0]	TGETS	 10	10	3	; slot10 = uv0"unknown".tx
		 45	[  0]	UGET 	 11		0	; slot11 = uv0"unknwon"
		 46	[  0]	TGETS	 11	11	4	; slot11 = uv0"unknown".fx
		 47	[  0]	SUBVV	 10	10	11	; slot10 = uv0"unknown".tx - uv0"unknown".fx
		 48	[  0]	MULVV	 10	10	8	; slot10 = slot10 * slot8
		 49	[  0]	ADDVV	  9	9	10	; slot9 = uv0"unknown".fx + slot10
		 50	[  0]	USETV	  1		9	; uv1"unknwon" = slot9
		 51	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 52	[  0]	TGETS	  9	9	2	; slot9 = uv0"unknown".fy
		 53	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 54	[  0]	TGETS	 10	10	1	; slot10 = uv0"unknown".ty
		 55	[  0]	UGET 	 11		0	; slot11 = uv0"unknwon"
		 56	[  0]	TGETS	 11	11	2	; slot11 = uv0"unknown".fy
		 57	[  0]	SUBVV	 10	10	11	; slot10 = uv0"unknown".ty - uv0"unknown".fy
		 58	[  0]	MULVV	 10	10	8	; slot10 = slot10 * slot8
		 59	[  0]	ADDVV	  9	9	10	; slot9 = uv0"unknown".fy + slot10
		 60	[  0]	USETV	  2		9	; uv2"unknwon" = slot9
		 61	[  0]	KSHORT	  9		1	; slot9 = 1
		 62	[  0]	ISGT 	  9		7	; if slot9 > math.min
		 63	[  0]	JMP  	  9		1	; 	goto 65
		 64	[  0]	USETP	  0		0	; uv0"unknwon" = nil
		 65	[  0]	KPRI 	  4		2	; slot4 = true
		 66	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 67	[  0]	IST  	   		7	; if uv0"unknown"
		 68	[  0]	JMP  	  7		62	; 	goto 131
		 69	[  0]	ISGE 	  6		5	; if slot6 >= math.sqrt
		 70	[  0]	JMP  	  7		60	; 	goto 131
		 71	[  0]	GGET 	  7		10	; slot7 = _env["math"]
		 72	[  0]	TGETS	  7	7	7	; slot7 = math.min
		 73	[  0]	KSHORT	  9		1	; slot9 = 1
		 74	[  0]	SUBVV	 10	5	6	; slot10 = math.sqrt - slot6
		 75	[  0]	SUBNV	 11	6	3	; slot11 = 1 - slot6
		 76	[  0]	DIVVV	 10	10	11	; slot10 = slot10 / slot11
		 77	[  0]	CALL 	  7	2	3	; slot7 = math.min(slot8, slot9)
		 78	[  0]	MULVV	  8	7	7	; slot8 = math.min * math.min
		 79	[  0]	MULNV	  9	7	4	; slot9 = 0.65 * math.min
		 80	[  0]	ADDNV	  9	9	5	; slot9 = 0.35 + slot9
		 81	[  0]	MULVV	  8	8	9	; slot8 = slot8 * slot9
		 82	[  0]	KNUM 	  9		6	; slot9 = 0.92
		 83	[  0]	ISGE 	  9		7	; if slot9 >= math.min
		 84	[  0]	JMP  	  9		4	; 	goto 89
		 85	[  0]	UGET 	  9		3	; slot9 = uv3"unknwon"
		 86	[  0]	ADDVV	  9	9	0	; slot9 = uv3"unknown" + slot0
		 87	[  0]	USETV	  3		9	; uv3"unknwon" = slot9
		 88	[  0]	JMP  	  9		1	; 	goto 90
		 89	[  0]	USETN	  3		7	; uv3"unknwon" = 0
		 90	[  0]	GGET 	  9		10	; slot9 = _env["math"]
		 91	[  0]	TGETS	  9	9	7	; slot9 = math.min
		 92	[  0]	KNUM 	 11		8	; slot11 = 0.55
		 93	[  0]	GGET 	 12		10	; slot12 = _env["math"]
		 94	[  0]	TGETS	 12	12	6	; slot12 = math.max
		 95	[  0]	KSHORT	 14		0	; slot14 = 0
		 96	[  0]	UGET 	 15		3	; slot15 = uv3"unknwon"
		 97	[  0]	SUBVN	 15	15	9	; slot15 = uv3"unknown" - 0.25
		 98	[  0]	CALL 	 12	2	3	; slot12 = math.max(slot13, slot14)
		 99	[  0]	MULVN	 12	12	10	; slot12 = math.max * 1.1
		100	[  0]	CALL 	  9	2	3	; slot9 = math.min(slot10, slot11)
		101	[  0]	ADDNV	  9	9	3	; slot9 = 1 + math.min
		102	[  0]	KNUM 	 10		11	; slot10 = 0.7
		103	[  0]	ISGE 	  8		10	; if slot8 >= slot10
		104	[  0]	JMP  	 10		4	; 	goto 109
		105	[  0]	ISTC 	 10		3	; slot10 = slot3; if slot3
		106	[  0]	JMP  	 10		3	; 	goto 110
		107	[  0]	KSHORT	 10		1	; slot10 = 1
		108	[  0]	JMP  	 11		1	; 	goto 110
		109	[  0]	KSHORT	 10		1	; slot10 = 1
		110	[  0]	UGET 	 11		4	; slot11 = uv4"unknwon"
		111	[  0]	TGETS	 11	11	0	; slot11 = uv4"unknown".speedMultiplier
		112	[  0]	CALL 	 11	2	1	; slot11 = uv4"unknown".speedMultiplier()
		113	[  0]	MULNV	 11	11	12	; slot11 = 400 * uv4"unknown".speedMultiplier
		114	[  0]	MULVV	 11	11	8	; slot11 = slot11 * slot8
		115	[  0]	MULVV	 11	11	9	; slot11 = slot11 * slot9
		116	[  0]	MULVV	 11	11	10	; slot11 = slot11 * slot10
		117	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		118	[  0]	DIVVV	 13	1	5	; slot13 = slot1 / math.sqrt
		119	[  0]	MULVV	 13	13	11	; slot13 = slot13 * slot11
		120	[  0]	MULVV	 13	13	0	; slot13 = slot13 * slot0
		121	[  0]	ADDVV	 12	12	13	; slot12 = uv1"unknown" + slot13
		122	[  0]	USETV	  1		12	; uv1"unknwon" = slot12
		123	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		124	[  0]	DIVVV	 13	2	5	; slot13 = slot2 / math.sqrt
		125	[  0]	MULVV	 13	13	11	; slot13 = slot13 * slot11
		126	[  0]	MULVV	 13	13	0	; slot13 = slot13 * slot0
		127	[  0]	ADDVV	 12	12	13	; slot12 = uv2"unknown" + slot13
		128	[  0]	USETV	  2		12	; uv2"unknwon" = slot12
		129	[  0]	KPRI 	  4		2	; slot4 = true
		130	[  0]	JMP  	  7		3	; 	goto 134
		131	[  0]	ISGT 	  5		6	; if math.sqrt > slot6
		132	[  0]	JMP  	  7		1	; 	goto 134
		133	[  0]	USETN	  3		7	; uv3"unknwon" = 0
		134	[  0]	ISF  	   		4	; if not slot4
		135	[  0]	JMP  	  7		2	; 	goto 138
		136	[  0]	UGET 	  7		5	; slot7 = uv5"unknwon"
		137	[  0]	CALL 	  7	1	1	;  = uv5"unknown"()
		138	[  0]	RET1 	  4		2	; return slot4
	629	[  0]	TSETV	 16	4	15	; slot4[slot15] = slot16
	630	[  0]	MOV  	  3		4	; slot3 = slot4
	631	[  0]	UCLO 	  4		0	; nil uvs >= r4; goto 632
	632	[  0]	KPRI 	  4		0	; slot4 = nil
	633	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
	634	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
	635	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
	636	[  0]	KSTR 	  8		258	; slot8 = "beginFrame"
	637	[  0]	FNEW 	  9		257	; N/A:0-0: 0 args, 2 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  2	[  0]	USETV	  0		0	; uv0"unknwon" = uv1"unknown"
		  3	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
		  4	[  0]	USETV	  1		0	; uv1"unknwon" = slot0
		  5	[  0]	RET0 	  0		1	; return
	638	[  0]	TSETV	  9	5	8	; slot5[slot8] = slot9
	639	[  0]	KSTR 	  8		256	; slot8 = "add"
	640	[  0]	FNEW 	  9		255	; N/A:0-0: 7 args, 1 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		ktable#7 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		2	; if not slot2
		  2	[  0]	JMP  	  7		12	; 	goto 15
		  3	[  0]	ISF  	   		3	; if not slot3
		  4	[  0]	JMP  	  7		10	; 	goto 15
		  5	[  0]	ISF  	   		4	; if not slot4
		  6	[  0]	JMP  	  7		8	; 	goto 15
		  7	[  0]	ISF  	   		5	; if not slot5
		  8	[  0]	JMP  	  7		6	; 	goto 15
		  9	[  0]	KSHORT	  7		0	; slot7 = 0
		 10	[  0]	ISLE 	  4		7	; if slot4 <= slot7
		 11	[  0]	JMP  	  7		3	; 	goto 15
		 12	[  0]	KSHORT	  7		0	; slot7 = 0
		 13	[  0]	ISGT 	  5		7	; if slot5 > slot7
		 14	[  0]	JMP  	  7		1	; 	goto 16
		 15	[  0]	RET0 	  0		1	; return
		 16	[  0]	TDUP 	  7		7	; slot7 = copy table#k7
		 17	[  0]	TSETS	  0	7	6	; slot7.group = slot0
		 18	[  0]	TSETS	  1	7	5	; slot7.id = slot1
		 19	[  0]	TSETS	  2	7	4	; slot7.x = slot2
		 20	[  0]	TSETS	  3	7	3	; slot7.y = slot3
		 21	[  0]	TSETS	  4	7	2	; slot7.w = slot4
		 22	[  0]	TSETS	  5	7	1	; slot7.h = slot5
		 23	[  0]	ISF  	   		6	; if not slot6
		 24	[  0]	JMP  	  8		7	; 	goto 32
		 25	[  0]	GGET 	  8		0	; slot8 = _env["pairs"]
		 26	[  0]	MOV  	 10		6	; slot10 = slot6
		 27	[  0]	CALL 	  8	4	2	; slot8, slot9, slot10 = pairs(slot9)
		 28	[  0]	ISNEXT	 11		1	; Verify ITERN at 30; goto 30
		 29	[  0]	TSETV	 12	7	11	; slot7[slot11] = slot12
		 30	[  0]	ITERN	 11	3	3	; slot11, slot12, slot13 = pairs, slot9, slot10; slot11, slot12 = pairs(slot9, slot10)
		 31	[  0]	ITERL	 11		-3	; slot10 = slot11; if slot11 != nil goto 29
		 32	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 33	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 34	[  0]	LEN  	  9		9	; slot9 = #uv0"unknown"
		 35	[  0]	ADDVN	  9	9	0	; slot9 = slot9 + 1
		 36	[  0]	TSETV	  7	8	9	; uv0"unknown"[slot9] = slot7
		 37	[  0]	RET0 	  0		1	; return
	641	[  0]	TSETV	  9	5	8	; slot5[slot8] = slot9
	642	[  0]	KSTR 	  8		254	; slot8 = "list"
	643	[  0]	FNEW 	  9		253	; N/A:0-0: 0 args, 2 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	LEN  	  0		0	; slot0 = #uv0"unknown"
		  3	[  0]	KSHORT	  1		0	; slot1 = 0
		  4	[  0]	ISGE 	  1		0	; if slot1 >= slot0
		  5	[  0]	JMP  	  0		2	; 	goto 8
		  6	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  7	[  0]	RET1 	  0		2	; return uv0"unknown"
		  8	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  9	[  0]	RET1 	  0		2	; return uv1"unknown"
	644	[  0]	TSETV	  9	5	8	; slot5[slot8] = slot9
	645	[  0]	KSTR 	  8		252	; slot8 = "group"
	646	[  0]	FNEW 	  9		251	; N/A:0-0: 2 args, 1 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		1	; if slot1
		  2	[  0]	JMP  	  2		1	; 	goto 4
		  3	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  4	[  0]	GGET 	  2		2	; slot2 = _env["ipairs"]
		  5	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  6	[  0]	TGETS	  4	4	1	; slot4 = uv0"unknown".list
		  7	[  0]	CALL 	  4	0	1	; MULTRES = uv0"unknown".list()
		  8	[  0]	CALLM	  2	4	0	; slot2, slot3, slot4 = ipairs(, ...MULTRES)
		  9	[  0]	JMP  	  5		6	; 	goto 16
		 10	[  0]	TGETS	  7	6	0	; slot7 = slot6.group
		 11	[  0]	ISNEV	  7		0	; if <unknown table>.group ~= slot0
		 12	[  0]	JMP  	  7		3	; 	goto 16
		 13	[  0]	LEN  	  7		1	; slot7 = #slot1
		 14	[  0]	ADDVN	  7	7	0	; slot7 = slot7 + 1
		 15	[  0]	TSETV	  6	1	7	; slot1[slot7] = slot6
		 16	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = ipairs, slot3, uv0"unknown".list; slot5, slot6 = ipairs(slot3, uv0"unknown".list)
		 17	[  0]	ITERL	  5		-8	; uv0"unknown".list = slot5; if slot5 != nil goto 10
		 18	[  0]	RET1 	  1		2	; return slot1
	647	[  0]	TSETV	  9	5	8	; slot5[slot8] = slot9
	648	[  0]	KSTR 	  8		250	; slot8 = "find"
	649	[  0]	FNEW 	  9		249	; N/A:0-0: 1 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		2	; slot1 = _env["ipairs"]
		  2	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  3	[  0]	TGETS	  3	3	1	; slot3 = uv0"unknown".list
		  4	[  0]	CALL 	  3	0	1	; MULTRES = uv0"unknown".list()
		  5	[  0]	CALLM	  1	4	0	; slot1, slot2, slot3 = ipairs(, ...MULTRES)
		  6	[  0]	JMP  	  4		4	; 	goto 11
		  7	[  0]	TGETS	  6	5	0	; slot6 = slot5.id
		  8	[  0]	ISNEV	  6		0	; if <unknown table>.id ~= slot0
		  9	[  0]	JMP  	  6		1	; 	goto 11
		 10	[  0]	RET1 	  5		2	; return slot5
		 11	[  0]	ITERC	  4	3	3	; slot4, slot5, slot6 = ipairs, slot2, uv0"unknown".list; slot4, slot5 = ipairs(slot2, uv0"unknown".list)
		 12	[  0]	ITERL	  4		-6	; uv0"unknown".list = slot4; if slot4 != nil goto 7
		 13	[  0]	KPRI 	  1		0	; slot1 = nil
		 14	[  0]	RET1 	  1		2	; return slot1
	650	[  0]	TSETV	  9	5	8	; slot5[slot8] = slot9
	651	[  0]	MOV  	  4		5	; slot4 = slot5
	652	[  0]	UCLO 	  5		0	; nil uvs >= r5; goto 653
	653	[  0]	KPRI 	  5		0	; slot5 = nil
	654	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
	655	[  0]	KSTR 	  7		307	; slot7 = "active"
	656	[  0]	KPRI 	  8		0	; slot8 = nil
	657	[  0]	TSETV	  8	6	7	; slot6[slot7] = slot8
	658	[  0]	KSHORT	  7		5	; slot7 = 5
	659	[  0]	KSTR 	  8		248	; slot8 = "start"
	660	[  0]	FNEW 	  9		247	; N/A:0-0: 2 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		ktable#2 = [
			[t] = 0,
			[waitRelease] = true,
			[armed] = false,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TDUP 	  3		2	; slot3 = copy table#k2
		  3	[  0]	TSETS	  0	3	1	; slot3.action = slot0
		  4	[  0]	TSETS	  1	3	0	; slot3.device = slot1
		  5	[  0]	TSETS	  3	2	3	; uv0"unknown".active = slot3
		  6	[  0]	RET0 	  0		1	; return
	661	[  0]	TSETV	  9	6	8	; slot6[slot8] = slot9
	662	[  0]	KSTR 	  8		246	; slot8 = "cancel"
	663	[  0]	FNEW 	  9		245	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	KPRI 	  1		0	; slot1 = nil
		  3	[  0]	TSETS	  1	0	0	; uv0"unknown".active = slot1
		  4	[  0]	RET0 	  0		1	; return
	664	[  0]	TSETV	  9	6	8	; slot6[slot8] = slot9
	665	[  0]	KSTR 	  8		244	; slot8 = "remaining"
	666	[  0]	FNEW 	  9		243	; N/A:0-0: 0 args, 2 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	3	; slot0 = uv0"unknown".active
		  3	[  0]	IST  	   		0	; if uv0"unknown".active
		  4	[  0]	JMP  	  0		2	; 	goto 7
		  5	[  0]	KSHORT	  0		0	; slot0 = 0
		  6	[  0]	RET1 	  0		2	; return slot0
		  7	[  0]	GGET 	  0		2	; slot0 = _env["math"]
		  8	[  0]	TGETS	  0	0	1	; slot0 = math.max
		  9	[  0]	KSHORT	  2		0	; slot2 = 0
		 10	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 11	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 12	[  0]	TGETS	  4	4	3	; slot4 = uv0"unknown".active
		 13	[  0]	TGETS	  4	4	0	; slot4 = uv0"unknown".active.t
		 14	[  0]	SUBVV	  3	3	4	; slot3 = uv1"unknown" - uv0"unknown".active.t
		 15	[  0]	CALLT	  0		3	; return math.max(slot1, slot2)
	667	[  0]	TSETV	  9	6	8	; slot6[slot8] = slot9
	668	[  0]	KSTR 	  8		260	; slot8 = "update"
	669	[  0]	FNEW 	  9		242	; N/A:0-0: 2 args, 2 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	3	; slot2 = uv0"unknown".active
		  3	[  0]	IST  	   		2	; if uv0"unknown".active
		  4	[  0]	JMP  	  3		1	; 	goto 6
		  5	[  0]	RET0 	  0		1	; return
		  6	[  0]	TGETS	  3	2	2	; slot3 = uv0"unknown".active.t
		  7	[  0]	ADDVV	  3	3	0	; slot3 = uv0"unknown".active.t + slot0
		  8	[  0]	TSETS	  3	2	2	; uv0"unknown".active.t = slot3
		  9	[  0]	TGETS	  3	2	1	; slot3 = uv0"unknown".active.waitRelease
		 10	[  0]	ISF  	   		3	; if not uv0"unknown".active.waitRelease
		 11	[  0]	JMP  	  4		8	; 	goto 20
		 12	[  0]	IST  	   		1	; if slot1
		 13	[  0]	JMP  	  3		6	; 	goto 20
		 14	[  0]	TGETS	  3	2	2	; slot3 = uv0"unknown".active.t
		 15	[  0]	KNUM 	  4		0	; slot4 = 0.08
		 16	[  0]	ISGE 	  4		3	; if slot4 >= uv0"unknown".active.t
		 17	[  0]	JMP  	  3		2	; 	goto 20
		 18	[  0]	KPRI 	  3		1	; slot3 = false
		 19	[  0]	TSETS	  3	2	1	; uv0"unknown".active.waitRelease = slot3
		 20	[  0]	TGETS	  3	2	2	; slot3 = uv0"unknown".active.t
		 21	[  0]	KNUM 	  4		1	; slot4 = 0.18
		 22	[  0]	ISGE 	  4		3	; if slot4 >= uv0"unknown".active.t
		 23	[  0]	JMP  	  3		5	; 	goto 29
		 24	[  0]	TGETS	  3	2	1	; slot3 = uv0"unknown".active.waitRelease
		 25	[  0]	IST  	   		3	; if uv0"unknown".active.waitRelease
		 26	[  0]	JMP  	  3		2	; 	goto 29
		 27	[  0]	KPRI 	  3		2	; slot3 = true
		 28	[  0]	TSETS	  3	2	0	; uv0"unknown".active.armed = slot3
		 29	[  0]	TGETS	  3	2	2	; slot3 = uv0"unknown".active.t
		 30	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 31	[  0]	ISGT 	  4		3	; if uv1"unknown" > uv0"unknown".active.t
		 32	[  0]	JMP  	  3		3	; 	goto 36
		 33	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 34	[  0]	KPRI 	  4		0	; slot4 = nil
		 35	[  0]	TSETS	  4	3	3	; uv0"unknown".active = slot4
		 36	[  0]	RET0 	  0		1	; return
	670	[  0]	TSETV	  9	6	8	; slot6[slot8] = slot9
	671	[  0]	MOV  	  5		6	; slot5 = slot6
	672	[  0]	UCLO 	  6		0	; nil uvs >= r6; goto 673
	673	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
	674	[  0]	KSTR 	  7		241	; slot7 = "bindings"
	675	[  0]	TSETV	  0	6	7	; slot6[slot7] = slot0
	676	[  0]	KSTR 	  7		240	; slot7 = "glyphs"
	677	[  0]	TSETV	  1	6	7	; slot6[slot7] = slot1
	678	[  0]	KSTR 	  7		239	; slot7 = "device"
	679	[  0]	TSETV	  2	6	7	; slot6[slot7] = slot2
	680	[  0]	KSTR 	  7		238	; slot7 = "cursor"
	681	[  0]	TSETV	  3	6	7	; slot6[slot7] = slot3
	682	[  0]	KSTR 	  7		237	; slot7 = "marks"
	683	[  0]	TSETV	  4	6	7	; slot6[slot7] = slot4
	684	[  0]	KSTR 	  7		236	; slot7 = "capture"
	685	[  0]	TSETV	  5	6	7	; slot6[slot7] = slot5
	686	[  0]	TGETS	  7	0	617	; slot7 = slot0.ACTIONS
	687	[  0]	TSETS	  7	6	617	; slot6.ACTIONS = <unknown table>.ACTIONS
	688	[  0]	KSTR 	  7		235	; slot7 = "mode"
	689	[  0]	KSTR 	  8		234	; slot8 = "mouse"
	690	[  0]	TSETV	  8	6	7	; slot6[slot7] = slot8
	691	[  0]	KSTR 	  7		233	; slot7 = "hintAlpha"
	692	[  0]	KSHORT	  8		0	; slot8 = 0
	693	[  0]	TSETV	  8	6	7	; slot6[slot7] = slot8
	694	[  0]	KSTR 	  7		232	; slot7 = "dirty"
	695	[  0]	KPRI 	  8		1	; slot8 = false
	696	[  0]	TSETV	  8	6	7	; slot6[slot7] = slot8
	697	[  0]	TDUP 	  7		231	; slot7 = copy table#k231
	698	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
	699	[  0]	TSETS	  8	7	465	; slot7.down = slot8
	700	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
	701	[  0]	KSTR 	  9		230	; slot9 = "virtualDown"
	702	[  0]	TSETV	  8	7	9	; slot7[slot9] = slot8
	703	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
	704	[  0]	KSTR 	  9		229	; slot9 = "pressedAction"
	705	[  0]	TSETV	  8	7	9	; slot7[slot9] = slot8
	706	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
	707	[  0]	KSTR 	  9		228	; slot9 = "ctxCursor"
	708	[  0]	TSETV	  8	7	9	; slot7[slot9] = slot8
	709	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
	710	[  0]	FNEW 	  9		227	; N/A:0-0: 0 args, 0 upvalues, 2 slots
		
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
	711	[  0]	FNEW 	 10		226	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		1	; slot1 = _env["rawget"]
		  2	[  0]	GGET 	  3		0	; slot3 = _env["_G"]
		  3	[  0]	MOV  	  4		0	; slot4 = slot0
		  4	[  0]	CALLT	  1		3	; return rawget(slot2, _G)
	712	[  0]	FNEW 	 11		225	; N/A:0-0: 0 args, 0 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		3	; slot0 = _env["package"]
		  2	[  0]	TGETS	  0	0	2	; slot0 = package.loaded
		  3	[  0]	TGETS	  0	0	1	; slot0 = package.loaded.src.data.language
		  4	[  0]	IST  	   		0	; if package.loaded.src.data.language
		  5	[  0]	JMP  	  1		3	; 	goto 9
		  6	[  0]	GGET 	  0		0	; slot0 = _env["require"]
		  7	[  0]	KSTR 	  2		1	; slot2 = "src.data.language"
		  8	[  0]	CALL 	  0	2	2	; slot0 = require(slot1)
		  9	[  0]	RET1 	  0		2	; return slot0
	713	[  0]	FNEW 	 12		224	; N/A:0-0: 1 args, 2 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	KSTR 	  3		5	; slot3 = "currentGameLang"
		  3	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		  4	[  0]	IST  	   		1	; if slot1
		  5	[  0]	JMP  	  2		1	; 	goto 7
		  6	[  0]	KSTR 	  1		4	; slot1 = "ko"
		  7	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  8	[  0]	KSTR 	  4		3	; slot4 = "ui"
		  9	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown"(slot3)
		 10	[  0]	ISF  	   		2	; if not slot2
		 11	[  0]	JMP  	  3		9	; 	goto 21
		 12	[  0]	TGETS	  3	2	2	; slot3 = slot2.menuSettings
		 13	[  0]	ISF  	   		3	; if not <unknown table>.menuSettings
		 14	[  0]	JMP  	  4		6	; 	goto 21
		 15	[  0]	TGETS	  3	2	2	; slot3 = slot2.menuSettings
		 16	[  0]	TGETS	  3	3	1	; slot3 = <unknown table>.menuSettings.language
		 17	[  0]	ISF  	   		3	; if not <unknown table>.menuSettings.language
		 18	[  0]	JMP  	  4		2	; 	goto 21
		 19	[  0]	TGETS	  3	2	2	; slot3 = slot2.menuSettings
		 20	[  0]	TGETS	  1	3	1	; slot1 = <unknown table>.menuSettings.language
		 21	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 22	[  0]	CALL 	  3	2	1	; slot3 = uv1"unknown"()
		 23	[  0]	TGETS	  3	3	0	; slot3 = uv1"unknown".getText
		 24	[  0]	MOV  	  5		0	; slot5 = slot0
		 25	[  0]	MOV  	  6		1	; slot6 = <unknown table>.menuSettings.language
		 26	[  0]	CALLT	  3		3	; return uv1"unknown".getText(slot4, slot5)
	714	[  0]	KSTR 	 13		223	; slot13 = "text"
	715	[  0]	TSETV	 12	6	13	; slot6[slot13] = slot12
	716	[  0]	FNEW 	 13		222	; N/A:0-0: 0 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	KSTR 	  2		1	; slot2 = "playButtonClickSound"
		  3	[  0]	CALL 	  0	2	2	; slot0 = uv0"unknown"(slot1)
		  4	[  0]	ISF  	   		0	; if not slot0
		  5	[  0]	JMP  	  1		3	; 	goto 9
		  6	[  0]	GGET 	  1		0	; slot1 = _env["pcall"]
		  7	[  0]	MOV  	  3		0	; slot3 = slot0
		  8	[  0]	CALL 	  1	1	2	;  = pcall(slot2)
		  9	[  0]	RET0 	  0		1	; return
	717	[  0]	FNEW 	 14		221	; N/A:0-0: 0 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	KSTR 	  2		1	; slot2 = "playButtonHoverSound"
		  3	[  0]	CALL 	  0	2	2	; slot0 = uv0"unknown"(slot1)
		  4	[  0]	ISF  	   		0	; if not slot0
		  5	[  0]	JMP  	  1		3	; 	goto 9
		  6	[  0]	GGET 	  1		0	; slot1 = _env["pcall"]
		  7	[  0]	MOV  	  3		0	; slot3 = slot0
		  8	[  0]	CALL 	  1	1	2	;  = pcall(slot2)
		  9	[  0]	RET0 	  0		1	; return
	718	[  0]	KSTR 	 15		220	; slot15 = "isPad"
	719	[  0]	FNEW 	 16		219	; N/A:0-0: 0 args, 1 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".mode
		  3	[  0]	ISEQS	  0		0	; if uv0"unknown".mode == "pad"
		  4	[  0]	JMP  	  0		2	; 	goto 7
		  5	[  0]	KPRI 	  0		1	; slot0 = false
		  6	[  0]	JMP  	  1		1	; 	goto 8
		  7	[  0]	KPRI 	  0		2	; slot0 = true
		  8	[  0]	RET1 	  0		2	; return slot0
	720	[  0]	TSETV	 16	6	15	; slot6[slot15] = slot16
	721	[  0]	KSTR 	 15		218	; slot15 = "muteHover"
	722	[  0]	FNEW 	 16		217	; N/A:0-0: 0 args, 3 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	3	; slot0 = uv0"unknown".mode
		  3	[  0]	ISEQS	  0		2	; if uv0"unknown".mode == "pad"
		  4	[  0]	JMP  	  0		2	; 	goto 7
		  5	[  0]	KPRI 	  0		1	; slot0 = false
		  6	[  0]	RET1 	  0		2	; return slot0
		  7	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  8	[  0]	TGETS	  0	0	1	; slot0 = uv1"unknown".pendingFocus
		  9	[  0]	ISF  	   		0	; if not uv1"unknown".pendingFocus
		 10	[  0]	JMP  	  1		2	; 	goto 13
		 11	[  0]	KPRI 	  0		2	; slot0 = true
		 12	[  0]	RET1 	  0		2	; return slot0
		 13	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 14	[  0]	TGETS	  0	0	0	; slot0 = uv1"unknown".swallowHoverUntil
		 15	[  0]	ISF  	   		0	; if not uv1"unknown".swallowHoverUntil
		 16	[  0]	JMP  	  1		9	; 	goto 26
		 17	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 18	[  0]	KPRI 	  2		0	; slot2 = nil
		 19	[  0]	TSETS	  2	1	0	; uv1"unknown".swallowHoverUntil = slot2
		 20	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 21	[  0]	CALL 	  1	2	1	; slot1 = uv2"unknown"()
		 22	[  0]	ISGE 	  1		0	; if slot1 >= uv1"unknown".swallowHoverUntil
		 23	[  0]	JMP  	  1		2	; 	goto 26
		 24	[  0]	KPRI 	  1		2	; slot1 = true
		 25	[  0]	RET1 	  1		2	; return slot1
		 26	[  0]	KPRI 	  1		1	; slot1 = false
		 27	[  0]	RET1 	  1		2	; return slot1
	723	[  0]	TSETV	 16	6	15	; slot6[slot15] = slot16
	724	[  0]	KSTR 	 15		216	; slot15 = "padStyle"
	725	[  0]	FNEW 	 16		215	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".style
		  3	[  0]	CALLT	  0		1	; return uv0"unknown".style()
	726	[  0]	TSETV	 16	6	15	; slot6[slot15] = slot16
	727	[  0]	KSTR 	 15		214	; slot15 = "actionGlyphImage"
	728	[  0]	FNEW 	 16		213	; N/A:0-0: 1 args, 3 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	2	; slot1 = uv0"unknown".padButton
		  3	[  0]	MOV  	  3		0	; slot3 = slot0
		  4	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown".padButton(slot2)
		  5	[  0]	IST  	   		1	; if slot1
		  6	[  0]	JMP  	  2		2	; 	goto 9
		  7	[  0]	KPRI 	  2		0	; slot2 = nil
		  8	[  0]	RET1 	  2		2	; return slot2
		  9	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 10	[  0]	TGETS	  2	2	1	; slot2 = uv1"unknown".image
		 11	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 12	[  0]	TGETS	  4	4	0	; slot4 = uv2"unknown".style
		 13	[  0]	CALL 	  4	2	1	; slot4 = uv2"unknown".style()
		 14	[  0]	MOV  	  5		1	; slot5 = slot1
		 15	[  0]	CALLT	  2		3	; return uv1"unknown".image(slot3, uv2"unknown".style)
	729	[  0]	TSETV	 16	6	15	; slot6[slot15] = slot16
	730	[  0]	FNEW 	 15		212	; N/A:0-0: 1 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		4	; slot1 = _env["type"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  4	[  0]	ISNES	  1		3	; if slot1 ~= "string"
		  5	[  0]	JMP  	  1		14	; 	goto 20
		  6	[  0]	MOV  	  3		0	; slot3 = slot0
		  7	[  0]	TGETS	  1	0	2	; slot1 = slot0.sub
		  8	[  0]	KSHORT	  4		1	; slot4 = 1
		  9	[  0]	KSHORT	  5		1	; slot5 = 1
		 10	[  0]	CALL 	  1	2	4	; slot1 = <unknown table>.sub(slot2, slot3, slot4)
		 11	[  0]	ISNES	  1		1	; if slot1 ~= "@"
		 12	[  0]	JMP  	  1		7	; 	goto 20
		 13	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 14	[  0]	TGETS	  1	1	0	; slot1 = uv0"unknown".padButton
		 15	[  0]	MOV  	  5		0	; slot5 = slot0
		 16	[  0]	TGETS	  3	0	2	; slot3 = slot0.sub
		 17	[  0]	KSHORT	  6		2	; slot6 = 2
		 18	[  0]	CALL 	  3	0	3	; MULTRES = <unknown table>.sub(slot4, slot5)
		 19	[  0]	CALLMT	  1		0	; return uv0"unknown".padButton(, ...MULTRES)
		 20	[  0]	RET1 	  0		2	; return slot0
	731	[  0]	KSTR 	 16		211	; slot16 = "glyphRowSize"
	732	[  0]	FNEW 	 17		210	; N/A:0-0: 1 args, 3 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	2	; slot1 = uv0"unknown".style
		  3	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown".style()
		  4	[  0]	KSHORT	  2		0	; slot2 = 0
		  5	[  0]	KSHORT	  3		0	; slot3 = 0
		  6	[  0]	GGET 	  4		1	; slot4 = _env["ipairs"]
		  7	[  0]	ISTC 	  6		0	; slot6 = slot0; if slot0
		  8	[  0]	JMP  	  6		1	; 	goto 10
		  9	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		 10	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		 11	[  0]	JMP  	  7		18	; 	goto 30
		 12	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 13	[  0]	TGETS	  9	9	0	; slot9 = uv1"unknown".size
		 14	[  0]	MOV  	 11		1	; slot11 = slot1
		 15	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		 16	[  0]	MOV  	 14		8	; slot14 = slot8
		 17	[  0]	CALL 	 12	0	2	; MULTRES = uv2"unknown"(slot13)
		 18	[  0]	CALLM	  9	3	1	; slot9, slot10 = uv1"unknown".size(slot10, ...MULTRES)
		 19	[  0]	ADDVV	 11	2	9	; slot11 = slot2 + uv1"unknown".size
		 20	[  0]	KSHORT	 12		1	; slot12 = 1
		 21	[  0]	ISGE 	 12		7	; if slot12 >= slot7
		 22	[  0]	JMP  	 12		2	; 	goto 25
		 23	[  0]	KSHORT	 12		1	; slot12 = 1
		 24	[  0]	JMP  	 13		1	; 	goto 26
		 25	[  0]	KSHORT	 12		0	; slot12 = 0
		 26	[  0]	ADDVV	  2	11	12	; slot2 = slot11 + slot12
		 27	[  0]	ISGE 	  3		10	; if slot3 >= slot10
		 28	[  0]	JMP  	 11		1	; 	goto 30
		 29	[  0]	MOV  	  3		10	; slot3 = slot10
		 30	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, slot6; slot7, slot8 = ipairs(slot5, slot6)
		 31	[  0]	ITERL	  7		-20	; slot6 = slot7; if slot7 != nil goto 12
		 32	[  0]	MOV  	  4		2	; slot4 = slot2
		 33	[  0]	MOV  	  5		3	; slot5 = slot3
		 34	[  0]	RET  	  4		3	; return slot4, slot5
	733	[  0]	TSETV	 17	6	16	; slot6[slot16] = slot17
	734	[  0]	KSTR 	 16		209	; slot16 = "drawGlyphRow"
	735	[  0]	FNEW 	 17		208	; N/A:0-0: 4 args, 3 upvalues, 18 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  2	[  0]	TGETS	  4	4	2	; slot4 = uv0"unknown".style
		  3	[  0]	CALL 	  4	2	1	; slot4 = uv0"unknown".style()
		  4	[  0]	MOV  	  5		1	; slot5 = slot1
		  5	[  0]	GGET 	  6		1	; slot6 = _env["ipairs"]
		  6	[  0]	ISTC 	  8		0	; slot8 = slot0; if slot0
		  7	[  0]	JMP  	  8		1	; 	goto 9
		  8	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
		  9	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		 10	[  0]	JMP  	  9		17	; 	goto 28
		 11	[  0]	KSHORT	 11		1	; slot11 = 1
		 12	[  0]	ISGE 	 11		9	; if slot11 >= slot9
		 13	[  0]	JMP  	 11		1	; 	goto 15
		 14	[  0]	ADDVN	  5	5	0	; slot5 = slot5 + 1
		 15	[  0]	UGET 	 11		1	; slot11 = uv1"unknwon"
		 16	[  0]	TGETS	 11	11	0	; slot11 = uv1"unknown".draw
		 17	[  0]	MOV  	 13		4	; slot13 = uv0"unknown".style
		 18	[  0]	UGET 	 14		2	; slot14 = uv2"unknwon"
		 19	[  0]	MOV  	 16		10	; slot16 = slot10
		 20	[  0]	CALL 	 14	2	2	; slot14 = uv2"unknown"(slot15)
		 21	[  0]	MOV  	 15		5	; slot15 = slot5
		 22	[  0]	MOV  	 16		2	; slot16 = slot2
		 23	[  0]	ISTC 	 17		3	; slot17 = slot3; if slot3
		 24	[  0]	JMP  	 17		1	; 	goto 26
		 25	[  0]	KSHORT	 17		1	; slot17 = 1
		 26	[  0]	CALL 	 11	2	6	; slot11 = uv1"unknown".draw(slot12, uv0"unknown".style, uv2"unknown", slot15, slot16)
		 27	[  0]	ADDVV	  5	5	11	; slot5 = slot5 + uv1"unknown".draw
		 28	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, slot8; slot9, slot10 = ipairs(slot7, slot8)
		 29	[  0]	ITERL	  9		-19	; slot8 = slot9; if slot9 != nil goto 11
		 30	[  0]	SUBVV	  6	5	1	; slot6 = slot5 - slot1
		 31	[  0]	RET1 	  6		2	; return slot6
	736	[  0]	TSETV	 17	6	16	; slot6[slot16] = slot17
	737	[  0]	FNEW 	 16		207	; N/A:0-0: 0 args, 4 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	12	; slot0 = uv0"unknown".installed
		  3	[  0]	IST  	   		0	; if uv0"unknown".installed
		  4	[  0]	JMP  	  1		4	; 	goto 9
		  5	[  0]	GGET 	  0		11	; slot0 = _env["love"]
		  6	[  0]	TGETS	  0	0	10	; slot0 = love.mouse
		  7	[  0]	IST  	   		0	; if love.mouse
		  8	[  0]	JMP  	  0		1	; 	goto 10
		  9	[  0]	UCLO 	  0		51	; nil uvs >= r0; goto 61
		 10	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 11	[  0]	KPRI 	  1		2	; slot1 = true
		 12	[  0]	TSETS	  1	0	12	; uv0"unknown".installed = slot1
		 13	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 14	[  0]	GGET 	  1		11	; slot1 = _env["love"]
		 15	[  0]	TGETS	  1	1	10	; slot1 = love.mouse
		 16	[  0]	TGETS	  1	1	9	; slot1 = love.mouse.getPosition
		 17	[  0]	TSETS	  1	0	9	; uv0"unknown".getPosition = love.mouse.getPosition
		 18	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 19	[  0]	GGET 	  1		11	; slot1 = _env["love"]
		 20	[  0]	TGETS	  1	1	10	; slot1 = love.mouse
		 21	[  0]	TGETS	  1	1	8	; slot1 = love.mouse.getX
		 22	[  0]	TSETS	  1	0	8	; uv0"unknown".getX = love.mouse.getX
		 23	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 24	[  0]	GGET 	  1		11	; slot1 = _env["love"]
		 25	[  0]	TGETS	  1	1	10	; slot1 = love.mouse
		 26	[  0]	TGETS	  1	1	7	; slot1 = love.mouse.getY
		 27	[  0]	TSETS	  1	0	7	; uv0"unknown".getY = love.mouse.getY
		 28	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 29	[  0]	GGET 	  1		11	; slot1 = _env["love"]
		 30	[  0]	TGETS	  1	1	10	; slot1 = love.mouse
		 31	[  0]	TGETS	  1	1	6	; slot1 = love.mouse.setPosition
		 32	[  0]	TSETS	  1	0	6	; uv0"unknown".setPosition = love.mouse.setPosition
		 33	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 34	[  0]	GGET 	  1		11	; slot1 = _env["love"]
		 35	[  0]	TGETS	  1	1	10	; slot1 = love.mouse
		 36	[  0]	TGETS	  1	1	5	; slot1 = love.mouse.isDown
		 37	[  0]	TSETS	  1	0	5	; uv0"unknown".isDown = love.mouse.isDown
		 38	[  0]	KNUM 	  0		0	; slot0 = -100000
		 39	[  0]	GGET 	  1		11	; slot1 = _env["love"]
		 40	[  0]	TGETS	  1	1	10	; slot1 = love.mouse
		 41	[  0]	FNEW 	  2		4	; N/A:0-0: 0 args, 5 upvalues, 2 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	TGETS	  0	0	4	; slot0 = uv0"unknown".mode
			  3	[  0]	ISNES	  0		3	; if uv0"unknown".mode ~= "pad"
			  4	[  0]	JMP  	  0		10	; 	goto 15
			  5	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
			  6	[  0]	TGETS	  0	0	2	; slot0 = uv1"unknown".parked
			  7	[  0]	ISF  	   		0	; if not uv1"unknown".parked
			  8	[  0]	JMP  	  1		3	; 	goto 12
			  9	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
			 10	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
			 11	[  0]	RET  	  0		3	; return uv2"unknown", uv2"unknown"
			 12	[  0]	UGET 	  0		3	; slot0 = uv3"unknwon"
			 13	[  0]	TGETS	  0	0	1	; slot0 = uv3"unknown".screen
			 14	[  0]	CALLT	  0		1	; return uv3"unknown".screen()
			 15	[  0]	UGET 	  0		4	; slot0 = uv4"unknwon"
			 16	[  0]	TGETS	  0	0	0	; slot0 = uv4"unknown".getPosition
			 17	[  0]	CALLT	  0		1	; return uv4"unknown".getPosition()
		 42	[  0]	TSETS	  2	1	9	; love.mouse.getPosition = slot2
		 43	[  0]	GGET 	  1		11	; slot1 = _env["love"]
		 44	[  0]	TGETS	  1	1	10	; slot1 = love.mouse
		 45	[  0]	FNEW 	  2		3	; N/A:0-0: 0 args, 5 upvalues, 2 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	TGETS	  0	0	4	; slot0 = uv0"unknown".mode
			  3	[  0]	ISNES	  0		3	; if uv0"unknown".mode ~= "pad"
			  4	[  0]	JMP  	  0		10	; 	goto 15
			  5	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
			  6	[  0]	TGETS	  0	0	2	; slot0 = uv1"unknown".parked
			  7	[  0]	ISF  	   		0	; if not uv1"unknown".parked
			  8	[  0]	JMP  	  1		2	; 	goto 11
			  9	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
			 10	[  0]	RET1 	  0		2	; return uv2"unknown"
			 11	[  0]	UGET 	  0		3	; slot0 = uv3"unknwon"
			 12	[  0]	TGETS	  0	0	1	; slot0 = uv3"unknown".screen
			 13	[  0]	CALL 	  0	2	1	; slot0 = uv3"unknown".screen()
			 14	[  0]	RET1 	  0		2	; return slot0
			 15	[  0]	UGET 	  0		4	; slot0 = uv4"unknwon"
			 16	[  0]	TGETS	  0	0	0	; slot0 = uv4"unknown".getX
			 17	[  0]	CALLT	  0		1	; return uv4"unknown".getX()
		 46	[  0]	TSETS	  2	1	8	; love.mouse.getX = slot2
		 47	[  0]	GGET 	  1		11	; slot1 = _env["love"]
		 48	[  0]	TGETS	  1	1	10	; slot1 = love.mouse
		 49	[  0]	FNEW 	  2		2	; N/A:0-0: 0 args, 5 upvalues, 2 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	TGETS	  0	0	4	; slot0 = uv0"unknown".mode
			  3	[  0]	ISNES	  0		3	; if uv0"unknown".mode ~= "pad"
			  4	[  0]	JMP  	  0		10	; 	goto 15
			  5	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
			  6	[  0]	TGETS	  0	0	2	; slot0 = uv1"unknown".parked
			  7	[  0]	ISF  	   		0	; if not uv1"unknown".parked
			  8	[  0]	JMP  	  1		2	; 	goto 11
			  9	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
			 10	[  0]	RET1 	  0		2	; return uv2"unknown"
			 11	[  0]	UGET 	  0		3	; slot0 = uv3"unknwon"
			 12	[  0]	TGETS	  0	0	1	; slot0 = uv3"unknown".screen
			 13	[  0]	CALL 	  0	3	1	; slot0, slot1 = uv3"unknown".screen()
			 14	[  0]	RET1 	  1		2	; return slot1
			 15	[  0]	UGET 	  0		4	; slot0 = uv4"unknwon"
			 16	[  0]	TGETS	  0	0	0	; slot0 = uv4"unknown".getY
			 17	[  0]	CALLT	  0		1	; return uv4"unknown".getY()
		 50	[  0]	TSETS	  2	1	7	; love.mouse.getY = slot2
		 51	[  0]	GGET 	  1		11	; slot1 = _env["love"]
		 52	[  0]	TGETS	  1	1	10	; slot1 = love.mouse
		 53	[  0]	FNEW 	  2		1	; N/A:0-0: 2 args, 2 upvalues, 6 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  2	[  0]	TGETS	  2	2	1	; slot2 = uv0"unknown".syncFrom
			  3	[  0]	MOV  	  4		0	; slot4 = slot0
			  4	[  0]	MOV  	  5		1	; slot5 = slot1
			  5	[  0]	CALL 	  2	1	3	;  = uv0"unknown".syncFrom(slot3, slot4)
			  6	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  7	[  0]	TGETS	  2	2	0	; slot2 = uv1"unknown".setPosition
			  8	[  0]	MOV  	  4		0	; slot4 = slot0
			  9	[  0]	MOV  	  5		1	; slot5 = slot1
			 10	[  0]	CALLT	  2		3	; return uv1"unknown".setPosition(slot3, slot4)
		 54	[  0]	TSETS	  2	1	6	; love.mouse.setPosition = slot2
		 55	[  0]	GGET 	  1		11	; slot1 = _env["love"]
		 56	[  0]	TGETS	  1	1	10	; slot1 = love.mouse
		 57	[  0]	FNEW 	  2		0	; N/A:0-0: 0+ args, 2 upvalues, 9 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	KSHORT	  0		1	; slot0 = 1
			  2	[  0]	GGET 	  1		3	; slot1 = _env["select"]
			  3	[  0]	KSTR 	  3		2	; slot3 = "#"
			  4	[  0]	VARG 	  4	0	0	; MULTRES = ...
			  5	[  0]	CALLM	  1	2	1	; slot1 = select(slot2, ...MULTRES)
			  6	[  0]	KSHORT	  2		1	; slot2 = 1
			  7	[  0]	FORI 	  0		12	; for slot3 = slot0,slot1,slot2 else goto 20
			  8	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			  9	[  0]	TGETS	  4	4	1	; slot4 = uv0"unknown".virtualDown
			 10	[  0]	GGET 	  5		3	; slot5 = _env["select"]
			 11	[  0]	MOV  	  7		3	; slot7 = slot3
			 12	[  0]	VARG 	  8	0	0	; MULTRES = ...
			 13	[  0]	CALLM	  5	2	1	; slot5 = select(slot6, ...MULTRES)
			 14	[  0]	TGETV	  4	4	5	; slot4 = uv0"unknown".virtualDown[select]
			 15	[  0]	ISF  	   		4	; if not slot4
			 16	[  0]	JMP  	  5		2	; 	goto 19
			 17	[  0]	KPRI 	  4		2	; slot4 = true
			 18	[  0]	RET1 	  4		2	; return slot4
			 19	[  0]	FORL 	  0		-12	; slot3 = slot3 + slot2; if cmp(slot3, sign slot2,  slot1) goto 8
			 20	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
			 21	[  0]	TGETS	  0	0	0	; slot0 = uv1"unknown".isDown
			 22	[  0]	VARG 	  2	0	0	; MULTRES = ...
			 23	[  0]	CALLMT	  0		0	; return uv1"unknown".isDown(, ...MULTRES)
		 58	[  0]	TSETS	  2	1	5	; love.mouse.isDown = slot2
		 59	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 60
		 60	[  0]	RET0 	  0		1	; return
		 61	[  0]	RET0 	  0		1	; return
	738	[  0]	KSTR 	 17		206	; slot17 = "realMousePosition"
	739	[  0]	FNEW 	 18		205	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".getPosition
		  3	[  0]	ISF  	   		0	; if not uv0"unknown".getPosition
		  4	[  0]	JMP  	  1		3	; 	goto 8
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".getPosition
		  7	[  0]	CALLT	  0		1	; return uv0"unknown".getPosition()
		  8	[  0]	GGET 	  0		1	; slot0 = _env["love"]
		  9	[  0]	TGETS	  0	0	0	; slot0 = love.mouse
		 10	[  0]	TGETS	  0	0	2	; slot0 = love.mouse.getPosition
		 11	[  0]	CALLT	  0		1	; return love.mouse.getPosition()
	740	[  0]	TSETV	 18	6	17	; slot6[slot17] = slot18
	741	[  0]	FNEW 	 17		204	; N/A:0-0: 1 args, 3 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	11	; slot1 = uv0"unknown".mode
		  3	[  0]	ISNEV	  1		0	; if uv0"unknown".mode ~= slot0
		  4	[  0]	JMP  	  1		1	; 	goto 6
		  5	[  0]	RET0 	  0		1	; return
		  6	[  0]	ISNES	  0		10	; if slot0 ~= "pad"
		  7	[  0]	JMP  	  1		23	; 	goto 31
		  8	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  9	[  0]	TGETS	  1	1	9	; slot1 = uv0"unknown".realMousePosition
		 10	[  0]	CALL 	  1	3	1	; slot1, slot2 = uv0"unknown".realMousePosition()
		 11	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 12	[  0]	TGETS	  3	3	8	; slot3 = uv1"unknown".syncFrom
		 13	[  0]	MOV  	  5		1	; slot5 = slot1
		 14	[  0]	MOV  	  6		2	; slot6 = slot2
		 15	[  0]	CALL 	  3	1	3	;  = uv1"unknown".syncFrom(slot4, slot5)
		 16	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 17	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 18	[  0]	MOV  	  5		1	; slot5 = slot1
		 19	[  0]	TSETS	  2	4	6	; uv2"unknown".realY = slot2
		 20	[  0]	TSETS	  5	3	7	; uv2"unknown".realX = slot5
		 21	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 22	[  0]	KSHORT	  4		0	; slot4 = 0
		 23	[  0]	TSETS	  4	3	5	; uv2"unknown".mouseTravel = slot4
		 24	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 25	[  0]	KPRI 	  4		2	; slot4 = true
		 26	[  0]	TSETS	  4	3	4	; uv2"unknown".padWoke = slot4
		 27	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 28	[  0]	KPRI 	  4		0	; slot4 = nil
		 29	[  0]	TSETS	  4	3	3	; uv2"unknown".settingsFocus = slot4
		 30	[  0]	JMP  	  1		14	; 	goto 45
		 31	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 32	[  0]	KPRI 	  2		1	; slot2 = false
		 33	[  0]	TSETS	  2	1	2	; uv2"unknown".parked = slot2
		 34	[  0]	GGET 	  1		1	; slot1 = _env["pairs"]
		 35	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 36	[  0]	TGETS	  3	3	0	; slot3 = uv2"unknown".virtualDown
		 37	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = pairs(slot2)
		 38	[  0]	ISNEXT	  4		4	; Verify ITERN at 43; goto 43
		 39	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 40	[  0]	TGETS	  5	5	0	; slot5 = uv2"unknown".virtualDown
		 41	[  0]	KPRI 	  6		0	; slot6 = nil
		 42	[  0]	TSETV	  6	5	4	; uv2"unknown".virtualDown[slot4] = slot6
		 43	[  0]	ITERN	  4	2	3	; slot4, slot5, slot6 = slot1, slot2, uv2"unknown".virtualDown; slot4 = slot1(slot2, uv2"unknown".virtualDown)
		 44	[  0]	ITERL	  4		-6	; uv2"unknown".virtualDown = slot4; if slot4 != nil goto 39
		 45	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 46	[  0]	TSETS	  0	1	11	; uv0"unknown".mode = slot0
		 47	[  0]	RET0 	  0		1	; return
	742	[  0]	KSTR 	 18		203	; slot18 = "setMode"
	743	[  0]	TSETV	 17	6	18	; slot6[slot18] = slot17
	744	[  0]	FNEW 	 18		202	; N/A:0-0: 0 args, 3 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		ktable#7 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".serialize
		  3	[  0]	CALL 	  0	3	1	; slot0, slot1 = uv0"unknown".serialize()
		  4	[  0]	TDUP 	  2		7	; slot2 = copy table#k7
		  5	[  0]	TSETS	  0	2	6	; slot2.pad = slot0
		  6	[  0]	TSETS	  1	2	5	; slot2.keys = slot1
		  7	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		  8	[  0]	TGETS	  3	3	4	; slot3 = uv1"unknown".vibration
		  9	[  0]	ISNEP	  3		1	; if uv1"unknown".vibration ~= false
		 10	[  0]	JMP  	  3		2	; 	goto 13
		 11	[  0]	KPRI 	  3		1	; slot3 = false
		 12	[  0]	JMP  	  4		1	; 	goto 14
		 13	[  0]	KPRI 	  3		2	; slot3 = true
		 14	[  0]	TSETS	  3	2	4	; slot2.vibration = slot3
		 15	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 16	[  0]	TGETS	  3	3	3	; slot3 = uv2"unknown".speed
		 17	[  0]	TSETS	  3	2	2	; slot2.cursorSpeed = uv2"unknown".speed
		 18	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 19	[  0]	TGETS	  3	3	1	; slot3 = uv1"unknown".styleSetting
		 20	[  0]	TSETS	  3	2	0	; slot2.glyphs = uv1"unknown".styleSetting
		 21	[  0]	RET1 	  2		2	; return slot2
	745	[  0]	TSETS	 18	6	571	; slot6.serialize = slot18
	746	[  0]	FNEW 	 18		201	; N/A:0-0: 1 args, 4 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	18	; slot1 = uv0"unknown".resetToDefaults
		  3	[  0]	CALL 	  1	1	1	;  = uv0"unknown".resetToDefaults()
		  4	[  0]	GGET 	  1		17	; slot1 = _env["type"]
		  5	[  0]	MOV  	  3		0	; slot3 = slot0
		  6	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  7	[  0]	ISEQS	  1		16	; if slot1 == "table"
		  8	[  0]	JMP  	  1		1	; 	goto 10
		  9	[  0]	RET0 	  0		1	; return
		 10	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 11	[  0]	TGETS	  1	1	15	; slot1 = uv1"unknown".load
		 12	[  0]	TGETS	  3	0	14	; slot3 = slot0.pad
		 13	[  0]	TGETS	  4	0	13	; slot4 = slot0.keys
		 14	[  0]	CALL 	  1	1	3	;  = uv1"unknown".load(slot2, <unknown table>.pad)
		 15	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 16	[  0]	TGETS	  2	0	12	; slot2 = slot0.vibration
		 17	[  0]	ISNEP	  2		1	; if <unknown table>.vibration ~= false
		 18	[  0]	JMP  	  2		2	; 	goto 21
		 19	[  0]	KPRI 	  2		1	; slot2 = false
		 20	[  0]	JMP  	  3		1	; 	goto 22
		 21	[  0]	KPRI 	  2		2	; slot2 = true
		 22	[  0]	TSETS	  2	1	12	; uv2"unknown".vibration = slot2
		 23	[  0]	GGET 	  1		11	; slot1 = _env["tonumber"]
		 24	[  0]	TGETS	  3	0	10	; slot3 = slot0.cursorSpeed
		 25	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		 26	[  0]	ISF  	   		1	; if not slot1
		 27	[  0]	JMP  	  2		13	; 	goto 41
		 28	[  0]	ISNEV	  1		1	; if slot1 ~= slot1
		 29	[  0]	JMP  	  2		11	; 	goto 41
		 30	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 31	[  0]	GGET 	  3		8	; slot3 = _env["math"]
		 32	[  0]	TGETS	  3	3	7	; slot3 = math.max
		 33	[  0]	KSHORT	  5		0	; slot5 = 0
		 34	[  0]	GGET 	  6		8	; slot6 = _env["math"]
		 35	[  0]	TGETS	  6	6	6	; slot6 = math.min
		 36	[  0]	KSHORT	  8		1	; slot8 = 1
		 37	[  0]	MOV  	  9		1	; slot9 = slot1
		 38	[  0]	CALL 	  6	0	3	; MULTRES = math.min(slot7, slot8)
		 39	[  0]	CALLM	  3	2	1	; slot3 = math.max(<unknown table>.keys, ...MULTRES)
		 40	[  0]	TSETS	  3	2	9	; uv3"unknown".speed = math.max
		 41	[  0]	TGETS	  2	0	5	; slot2 = slot0.glyphs
		 42	[  0]	ISEQS	  2		4	; if <unknown table>.glyphs == "auto"
		 43	[  0]	JMP  	  3		6	; 	goto 50
		 44	[  0]	ISEQS	  2		3	; if <unknown table>.glyphs == "xbox"
		 45	[  0]	JMP  	  3		4	; 	goto 50
		 46	[  0]	ISEQS	  2		2	; if <unknown table>.glyphs == "playstation"
		 47	[  0]	JMP  	  3		2	; 	goto 50
		 48	[  0]	ISNES	  2		1	; if <unknown table>.glyphs ~= "nintendo"
		 49	[  0]	JMP  	  3		2	; 	goto 52
		 50	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 51	[  0]	TSETS	  2	3	0	; uv2"unknown".styleSetting = <unknown table>.glyphs
		 52	[  0]	RET0 	  0		1	; return
	747	[  0]	TSETS	 18	6	569	; slot6.load = slot18
	748	[  0]	KSTR 	 18		200	; slot18 = "resetToDefaults"
	749	[  0]	FNEW 	 19		199	; N/A:0-0: 0 args, 3 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	4	; slot0 = uv0"unknown".reset
		  3	[  0]	CALL 	  0	1	1	;  = uv0"unknown".reset()
		  4	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  5	[  0]	KPRI 	  1		2	; slot1 = true
		  6	[  0]	TSETS	  1	0	3	; uv1"unknown".vibration = slot1
		  7	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
		  8	[  0]	KNUM 	  1		0	; slot1 = 0.5
		  9	[  0]	TSETS	  1	0	2	; uv2"unknown".speed = slot1
		 10	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 11	[  0]	KSTR 	  1		0	; slot1 = "auto"
		 12	[  0]	TSETS	  1	0	1	; uv1"unknown".styleSetting = slot1
		 13	[  0]	RET0 	  0		1	; return
	750	[  0]	TSETV	 19	6	18	; slot6[slot18] = slot19
	751	[  0]	FNEW 	 18		198	; N/A:0-0: 0 args, 2 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	KPRI 	  1		2	; slot1 = true
		  3	[  0]	TSETS	  1	0	1	; uv0"unknown".dirty = slot1
		  4	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  5	[  0]	KSHORT	  1		0	; slot1 = 0
		  6	[  0]	TSETS	  1	0	0	; uv1"unknown".dirtyT = slot1
		  7	[  0]	RET0 	  0		1	; return
	752	[  0]	KSTR 	 19		197	; slot19 = "markDirty"
	753	[  0]	TSETV	 18	6	19	; slot6[slot19] = slot18
	754	[  0]	TDUP 	 19		195	; slot19 = copy table#k195
	755	[  0]	TDUP 	 20		196	; slot20 = copy table#k196
	756	[  0]	KSTR 	 21		194	; slot21 = "spin"
	757	[  0]	TSETV	 20	19	21	; slot19[slot21] = slot20
	758	[  0]	TDUP 	 20		193	; slot20 = copy table#k193
	759	[  0]	KSTR 	 21		192	; slot21 = "win"
	760	[  0]	TSETV	 20	19	21	; slot19[slot21] = slot20
	761	[  0]	TDUP 	 20		191	; slot20 = copy table#k191
	762	[  0]	KSTR 	 21		190	; slot21 = "jackpot"
	763	[  0]	TSETV	 20	19	21	; slot19[slot21] = slot20
	764	[  0]	TDUP 	 20		189	; slot20 = copy table#k189
	765	[  0]	KSTR 	 21		188	; slot21 = "damage"
	766	[  0]	TSETV	 20	19	21	; slot19[slot21] = slot20
	767	[  0]	TDUP 	 20		187	; slot20 = copy table#k187
	768	[  0]	KSTR 	 21		186	; slot21 = "victory"
	769	[  0]	TSETV	 20	19	21	; slot19[slot21] = slot20
	770	[  0]	TDUP 	 20		185	; slot20 = copy table#k185
	771	[  0]	KSTR 	 21		184	; slot21 = "defeat"
	772	[  0]	TSETV	 20	19	21	; slot19[slot21] = slot20
	773	[  0]	TDUP 	 20		183	; slot20 = copy table#k183
	774	[  0]	KSTR 	 21		182	; slot21 = "drop"
	775	[  0]	TSETV	 20	19	21	; slot19[slot21] = slot20
	776	[  0]	TDUP 	 20		181	; slot20 = copy table#k181
	777	[  0]	KSTR 	 21		180	; slot21 = "absorb"
	778	[  0]	TSETV	 20	19	21	; slot19[slot21] = slot20
	779	[  0]	TDUP 	 20		179	; slot20 = copy table#k179
	780	[  0]	KSTR 	 21		178	; slot21 = "nudge"
	781	[  0]	TSETV	 20	19	21	; slot19[slot21] = slot20
	782	[  0]	TDUP 	 20		177	; slot20 = copy table#k177
	783	[  0]	KSTR 	 21		176	; slot21 = "deny"
	784	[  0]	TSETV	 20	19	21	; slot19[slot21] = slot20
	785	[  0]	TDUP 	 20		175	; slot20 = copy table#k175
	786	[  0]	KSTR 	 21		174	; slot21 = "test"
	787	[  0]	TSETV	 20	19	21	; slot19[slot21] = slot20
	788	[  0]	KSTR 	 20		173	; slot20 = "rumble"
	789	[  0]	FNEW 	 21		172	; N/A:0-0: 1 args, 3 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	2	; slot1 = uv0"unknown".mode
		  3	[  0]	ISEQS	  1		1	; if uv0"unknown".mode == "pad"
		  4	[  0]	JMP  	  1		2	; 	goto 7
		  5	[  0]	KPRI 	  1		1	; slot1 = false
		  6	[  0]	RET1 	  1		2	; return slot1
		  7	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  8	[  0]	TGETV	  1	1	0	; slot1 = uv1"unknown"[slot0]
		  9	[  0]	IST  	   		1	; if slot1
		 10	[  0]	JMP  	  2		2	; 	goto 13
		 11	[  0]	KPRI 	  2		1	; slot2 = false
		 12	[  0]	RET1 	  2		2	; return slot2
		 13	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 14	[  0]	TGETS	  2	2	0	; slot2 = uv2"unknown".vibrate
		 15	[  0]	TGETB	  4	1	1	; slot4 = slot1[1]
		 16	[  0]	TGETB	  5	1	2	; slot5 = slot1[2]
		 17	[  0]	TGETB	  6	1	3	; slot6 = slot1[3]
		 18	[  0]	CALLT	  2		4	; return uv2"unknown".vibrate(slot3, slot4, slot5)
	790	[  0]	TSETV	 21	6	20	; slot6[slot20] = slot21
	791	[  0]	TNEW 	 20		0	; slot20 = new table( array: 0, dict: 1)
	792	[  0]	FNEW 	 21		171	; N/A:0-0: 0 args, 3 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  3	[  0]	KSTR 	  3		34	; slot3 = "slot"
		  4	[  0]	CALL 	  1	2	2	; slot1 = uv1"unknown"(slot2)
		  5	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  6	[  0]	KSTR 	  4		33	; slot4 = "battlefield"
		  7	[  0]	CALL 	  2	2	2	; slot2 = uv1"unknown"(slot3)
		  8	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		  9	[  0]	KSTR 	  5		32	; slot5 = "drag"
		 10	[  0]	CALL 	  3	2	2	; slot3 = uv1"unknown"(slot4)
		 11	[  0]	ISF  	   		1	; if not slot1
		 12	[  0]	JMP  	  4		7	; 	goto 20
		 13	[  0]	TGETS	  4	1	31	; slot4 = slot1.spin
		 14	[  0]	ISF  	   		4	; if not <unknown table>.spin
		 15	[  0]	JMP  	  5		4	; 	goto 20
		 16	[  0]	TGETS	  4	1	31	; slot4 = slot1.spin
		 17	[  0]	TGETS	  4	4	30	; slot4 = <unknown table>.spin.active
		 18	[  0]	ISEQP	  4		2	; if <unknown table>.spin.active == true
		 19	[  0]	JMP  	  4		4	; 	goto 24
		 20	[  0]	KPRI 	  4		1	; slot4 = false
		 21	[  0]	JMP  	  5		3	; 	goto 25
		 22	[  0]	KPRI 	  4		1	; slot4 = false
		 23	[  0]	JMP  	  5		1	; 	goto 25
		 24	[  0]	KPRI 	  4		2	; slot4 = true
		 25	[  0]	ISF  	   		1	; if not slot1
		 26	[  0]	JMP  	  5		12	; 	goto 39
		 27	[  0]	TGETS	  5	1	29	; slot5 = slot1.result
		 28	[  0]	ISF  	   		5	; if not <unknown table>.result
		 29	[  0]	JMP  	  6		9	; 	goto 39
		 30	[  0]	TGETS	  5	1	29	; slot5 = slot1.result
		 31	[  0]	TGETS	  5	5	28	; slot5 = <unknown table>.result.winSeq
		 32	[  0]	ISF  	   		5	; if not <unknown table>.result.winSeq
		 33	[  0]	JMP  	  6		5	; 	goto 39
		 34	[  0]	TGETS	  5	1	29	; slot5 = slot1.result
		 35	[  0]	TGETS	  5	5	28	; slot5 = <unknown table>.result.winSeq
		 36	[  0]	TGETS	  5	5	30	; slot5 = <unknown table>.result.winSeq.active
		 37	[  0]	ISEQP	  5		2	; if <unknown table>.result.winSeq.active == true
		 38	[  0]	JMP  	  5		4	; 	goto 43
		 39	[  0]	KPRI 	  5		1	; slot5 = false
		 40	[  0]	JMP  	  6		3	; 	goto 44
		 41	[  0]	KPRI 	  5		1	; slot5 = false
		 42	[  0]	JMP  	  6		1	; 	goto 44
		 43	[  0]	KPRI 	  5		2	; slot5 = true
		 44	[  0]	KPRI 	  6		1	; slot6 = false
		 45	[  0]	GGET 	  7		27	; slot7 = _env["ipairs"]
		 46	[  0]	ISF  	   		1	; if not slot1
		 47	[  0]	JMP  	  9		3	; 	goto 51
		 48	[  0]	TGETS	  9	1	26	; slot9 = slot1.reels
		 49	[  0]	IST  	   		9	; if <unknown table>.reels
		 50	[  0]	JMP  	 10		1	; 	goto 52
		 51	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
		 52	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = ipairs(slot8)
		 53	[  0]	JMP  	 10		10	; 	goto 64
		 54	[  0]	ISF  	   		11	; if not slot11
		 55	[  0]	JMP  	 12		8	; 	goto 64
		 56	[  0]	TGETS	 12	11	25	; slot12 = slot11.nudge
		 57	[  0]	ISF  	   		12	; if not <unknown table>.nudge
		 58	[  0]	JMP  	 13		5	; 	goto 64
		 59	[  0]	TGETS	 12	11	25	; slot12 = slot11.nudge
		 60	[  0]	TGETS	 12	12	30	; slot12 = <unknown table>.nudge.active
		 61	[  0]	ISF  	   		12	; if not <unknown table>.nudge.active
		 62	[  0]	JMP  	 13		1	; 	goto 64
		 63	[  0]	KPRI 	  6		2	; slot6 = true
		 64	[  0]	ITERC	 10	3	3	; slot10, slot11, slot12 = ipairs, slot8, slot9; slot10, slot11 = ipairs(slot8, slot9)
		 65	[  0]	ITERL	 10		-12	; slot9 = slot10; if slot10 != nil goto 54
		 66	[  0]	ISF  	   		3	; if not uv1"unknown"
		 67	[  0]	JMP  	  7		3	; 	goto 71
		 68	[  0]	TGETS	  7	3	30	; slot7 = uv1"unknown".active
		 69	[  0]	ISEQP	  7		2	; if uv1"unknown".active == true
		 70	[  0]	JMP  	  7		4	; 	goto 75
		 71	[  0]	KPRI 	  7		1	; slot7 = false
		 72	[  0]	JMP  	  8		3	; 	goto 76
		 73	[  0]	KPRI 	  7		1	; slot7 = false
		 74	[  0]	JMP  	  8		1	; 	goto 76
		 75	[  0]	KPRI 	  7		2	; slot7 = true
		 76	[  0]	ISF  	   		2	; if not slot2
		 77	[  0]	JMP  	  8		5	; 	goto 83
		 78	[  0]	GGET 	  8		24	; slot8 = _env["tonumber"]
		 79	[  0]	TGETS	 10	2	23	; slot10 = slot2.baseHP
		 80	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 81	[  0]	IST  	   		8	; if tonumber
		 82	[  0]	JMP  	  9		1	; 	goto 84
		 83	[  0]	KPRI 	  8		0	; slot8 = nil
		 84	[  0]	ISF  	   		2	; if not slot2
		 85	[  0]	JMP  	  9		3	; 	goto 89
		 86	[  0]	TGETS	  9	2	22	; slot9 = slot2.gameOver
		 87	[  0]	ISEQP	  9		2	; if <unknown table>.gameOver == true
		 88	[  0]	JMP  	  9		4	; 	goto 93
		 89	[  0]	KPRI 	  9		1	; slot9 = false
		 90	[  0]	JMP  	 10		3	; 	goto 94
		 91	[  0]	KPRI 	  9		1	; slot9 = false
		 92	[  0]	JMP  	 10		1	; 	goto 94
		 93	[  0]	KPRI 	  9		2	; slot9 = true
		 94	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
		 95	[  0]	KSTR 	 12		21	; slot12 = "ui"
		 96	[  0]	CALL 	 10	2	2	; slot10 = uv1"unknown"(slot11)
		 97	[  0]	ISF  	   		10	; if not uv1"unknown"
		 98	[  0]	JMP  	 11		7	; 	goto 106
		 99	[  0]	TGETS	 11	10	20	; slot11 = uv1"unknown"._shopFundsDeny
		100	[  0]	ISF  	   		11	; if not uv1"unknown"._shopFundsDeny
		101	[  0]	JMP  	 12		4	; 	goto 106
		102	[  0]	TGETS	 11	10	20	; slot11 = uv1"unknown"._shopFundsDeny
		103	[  0]	TGETS	 11	11	19	; slot11 = uv1"unknown"._shopFundsDeny.t0
		104	[  0]	IST  	   		11	; if uv1"unknown"._shopFundsDeny.t0
		105	[  0]	JMP  	 12		1	; 	goto 107
		106	[  0]	KPRI 	 11		0	; slot11 = nil
		107	[  0]	TGETS	 12	0	18	; slot12 = uv0"unknown".init
		108	[  0]	ISF  	   		12	; if not uv0"unknown".init
		109	[  0]	JMP  	 13		81	; 	goto 191
		110	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		111	[  0]	TGETS	 12	12	17	; slot12 = uv2"unknown".mode
		112	[  0]	ISNES	 12		16	; if uv2"unknown".mode ~= "pad"
		113	[  0]	JMP  	 12		77	; 	goto 191
		114	[  0]	ISF  	   		11	; if not slot11
		115	[  0]	JMP  	 12		7	; 	goto 123
		116	[  0]	TGETS	 12	0	15	; slot12 = uv0"unknown".denyT
		117	[  0]	ISEQV	 11		12	; if slot11 == uv0"unknown".denyT
		118	[  0]	JMP  	 12		4	; 	goto 123
		119	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		120	[  0]	TGETS	 12	12	14	; slot12 = uv2"unknown".rumble
		121	[  0]	KSTR 	 14		13	; slot14 = "deny"
		122	[  0]	CALL 	 12	1	2	;  = uv2"unknown".rumble(slot13)
		123	[  0]	ISF  	   		4	; if not slot4
		124	[  0]	JMP  	 12		7	; 	goto 132
		125	[  0]	TGETS	 12	0	12	; slot12 = uv0"unknown".spinning
		126	[  0]	IST  	   		12	; if uv0"unknown".spinning
		127	[  0]	JMP  	 12		4	; 	goto 132
		128	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		129	[  0]	TGETS	 12	12	14	; slot12 = uv2"unknown".rumble
		130	[  0]	KSTR 	 14		31	; slot14 = "spin"
		131	[  0]	CALL 	 12	1	2	;  = uv2"unknown".rumble(slot13)
		132	[  0]	ISF  	   		5	; if not slot5
		133	[  0]	JMP  	 12		7	; 	goto 141
		134	[  0]	TGETS	 12	0	11	; slot12 = uv0"unknown".winning
		135	[  0]	IST  	   		12	; if uv0"unknown".winning
		136	[  0]	JMP  	 12		4	; 	goto 141
		137	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		138	[  0]	TGETS	 12	12	14	; slot12 = uv2"unknown".rumble
		139	[  0]	KSTR 	 14		10	; slot14 = "win"
		140	[  0]	CALL 	 12	1	2	;  = uv2"unknown".rumble(slot13)
		141	[  0]	ISF  	   		6	; if not slot6
		142	[  0]	JMP  	 12		7	; 	goto 150
		143	[  0]	TGETS	 12	0	9	; slot12 = uv0"unknown".nudging
		144	[  0]	IST  	   		12	; if uv0"unknown".nudging
		145	[  0]	JMP  	 12		4	; 	goto 150
		146	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		147	[  0]	TGETS	 12	12	14	; slot12 = uv2"unknown".rumble
		148	[  0]	KSTR 	 14		25	; slot14 = "nudge"
		149	[  0]	CALL 	 12	1	2	;  = uv2"unknown".rumble(slot13)
		150	[  0]	TGETS	 12	0	8	; slot12 = uv0"unknown".dragging
		151	[  0]	ISF  	   		12	; if not uv0"unknown".dragging
		152	[  0]	JMP  	 13		6	; 	goto 159
		153	[  0]	IST  	   		7	; if slot7
		154	[  0]	JMP  	 12		4	; 	goto 159
		155	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		156	[  0]	TGETS	 12	12	14	; slot12 = uv2"unknown".rumble
		157	[  0]	KSTR 	 14		7	; slot14 = "drop"
		158	[  0]	CALL 	 12	1	2	;  = uv2"unknown".rumble(slot13)
		159	[  0]	ISF  	   		8	; if not slot8
		160	[  0]	JMP  	 12		13	; 	goto 174
		161	[  0]	TGETS	 12	0	6	; slot12 = uv0"unknown".hp
		162	[  0]	ISF  	   		12	; if not uv0"unknown".hp
		163	[  0]	JMP  	 13		10	; 	goto 174
		164	[  0]	TGETS	 12	0	6	; slot12 = uv0"unknown".hp
		165	[  0]	ISGE 	  8		12	; if slot8 >= uv0"unknown".hp
		166	[  0]	JMP  	 12		7	; 	goto 174
		167	[  0]	TGETS	 12	0	5	; slot12 = uv0"unknown".bf
		168	[  0]	ISNEV	  2		12	; if slot2 ~= uv0"unknown".bf
		169	[  0]	JMP  	 12		4	; 	goto 174
		170	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		171	[  0]	TGETS	 12	12	14	; slot12 = uv2"unknown".rumble
		172	[  0]	KSTR 	 14		4	; slot14 = "damage"
		173	[  0]	CALL 	 12	1	2	;  = uv2"unknown".rumble(slot13)
		174	[  0]	ISF  	   		9	; if not slot9
		175	[  0]	JMP  	 12		15	; 	goto 191
		176	[  0]	TGETS	 12	0	3	; slot12 = uv0"unknown".over
		177	[  0]	IST  	   		12	; if uv0"unknown".over
		178	[  0]	JMP  	 12		12	; 	goto 191
		179	[  0]	TGETS	 12	0	5	; slot12 = uv0"unknown".bf
		180	[  0]	ISNEV	  2		12	; if slot2 ~= uv0"unknown".bf
		181	[  0]	JMP  	 12		9	; 	goto 191
		182	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		183	[  0]	TGETS	 12	12	14	; slot12 = uv2"unknown".rumble
		184	[  0]	TGETS	 14	2	2	; slot14 = slot2.gameClear
		185	[  0]	ISF  	   		14	; if not <unknown table>.gameClear
		186	[  0]	JMP  	 15		2	; 	goto 189
		187	[  0]	KSTR 	 14		1	; slot14 = "victory"
		188	[  0]	JMP  	 15		1	; 	goto 190
		189	[  0]	KSTR 	 14		0	; slot14 = "defeat"
		190	[  0]	CALL 	 12	1	2	;  = uv2"unknown".rumble(slot13)
		191	[  0]	KPRI 	 12		2	; slot12 = true
		192	[  0]	TSETS	 12	0	18	; uv0"unknown".init = slot12
		193	[  0]	MOV  	 12		4	; slot12 = slot4
		194	[  0]	MOV  	 13		5	; slot13 = slot5
		195	[  0]	MOV  	 14		6	; slot14 = slot6
		196	[  0]	TSETS	  7	0	8	; uv0"unknown".dragging = slot7
		197	[  0]	TSETS	 14	0	9	; uv0"unknown".nudging = slot14
		198	[  0]	TSETS	 13	0	11	; uv0"unknown".winning = slot13
		199	[  0]	TSETS	 12	0	12	; uv0"unknown".spinning = slot12
		200	[  0]	MOV  	 12		8	; slot12 = slot8
		201	[  0]	MOV  	 13		9	; slot13 = slot9
		202	[  0]	TSETS	  2	0	5	; uv0"unknown".bf = slot2
		203	[  0]	TSETS	 13	0	3	; uv0"unknown".over = slot13
		204	[  0]	TSETS	 12	0	6	; uv0"unknown".hp = slot12
		205	[  0]	TSETS	 11	0	15	; uv0"unknown".denyT = slot11
		206	[  0]	RET0 	  0		1	; return
	793	[  0]	FNEW 	 22		170	; N/A:0-0: 1+ args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	TGETS	  2	2	2	; slot2 = uv0"unknown".synth
		  4	[  0]	IST  	   		2	; if uv0"unknown".synth
		  5	[  0]	JMP  	  3		1	; 	goto 7
		  6	[  0]	KSHORT	  2		0	; slot2 = 0
		  7	[  0]	ADDVN	  2	2	0	; slot2 = slot2 + 1
		  8	[  0]	TSETS	  2	1	2	; uv0"unknown".synth = slot2
		  9	[  0]	GGET 	  1		1	; slot1 = _env["pcall"]
		 10	[  0]	MOV  	  3		0	; slot3 = slot0
		 11	[  0]	VARG 	  4	0	1	; MULTRES = ...
		 12	[  0]	CALLM	  1	3	1	; slot1, slot2 = pcall(slot2, ...MULTRES)
		 13	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 14	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 15	[  0]	TGETS	  4	4	2	; slot4 = uv0"unknown".synth
		 16	[  0]	SUBVN	  4	4	0	; slot4 = uv0"unknown".synth - 1
		 17	[  0]	TSETS	  4	3	2	; uv0"unknown".synth = slot4
		 18	[  0]	IST  	   		1	; if slot1
		 19	[  0]	JMP  	  3		4	; 	goto 24
		 20	[  0]	GGET 	  3		0	; slot3 = _env["error"]
		 21	[  0]	MOV  	  5		2	; slot5 = slot2
		 22	[  0]	KSHORT	  6		0	; slot6 = 0
		 23	[  0]	CALL 	  3	1	3	;  = error(slot4, slot5)
		 24	[  0]	RET0 	  0		1	; return
	794	[  0]	KSTR 	 23		169	; slot23 = "isSynthesizing"
	795	[  0]	FNEW 	 24		168	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".synth
		  3	[  0]	IST  	   		0	; if uv0"unknown".synth
		  4	[  0]	JMP  	  1		1	; 	goto 6
		  5	[  0]	KSHORT	  0		0	; slot0 = 0
		  6	[  0]	KSHORT	  1		0	; slot1 = 0
		  7	[  0]	ISLT 	  1		0	; if slot1 < slot0
		  8	[  0]	JMP  	  0		2	; 	goto 11
		  9	[  0]	KPRI 	  0		1	; slot0 = false
		 10	[  0]	JMP  	  1		1	; 	goto 12
		 11	[  0]	KPRI 	  0		2	; slot0 = true
		 12	[  0]	RET1 	  0		2	; return slot0
	796	[  0]	TSETV	 24	6	23	; slot6[slot23] = slot24
	797	[  0]	FNEW 	 23		167	; N/A:0-0: 1 args, 4 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	6	; slot1 = uv0"unknown".finishGlide
		  3	[  0]	CALL 	  1	1	1	;  = uv0"unknown".finishGlide()
		  4	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  5	[  0]	TGETS	  1	1	5	; slot1 = uv0"unknown".warp
		  6	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		  7	[  0]	TGETS	  3	3	4	; slot3 = uv1"unknown".setPosition
		  8	[  0]	CALL 	  1	1	2	;  = uv0"unknown".warp(slot2)
		  9	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 10	[  0]	TGETS	  1	1	3	; slot1 = uv0"unknown".screen
		 11	[  0]	CALL 	  1	3	1	; slot1, slot2 = uv0"unknown".screen()
		 12	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 13	[  0]	TGETS	  3	3	2	; slot3 = uv2"unknown".virtualDown
		 14	[  0]	KPRI 	  4		2	; slot4 = true
		 15	[  0]	TSETV	  4	3	0	; uv2"unknown".virtualDown[slot0] = slot4
		 16	[  0]	GGET 	  3		1	; slot3 = _env["love"]
		 17	[  0]	TGETS	  3	3	0	; slot3 = love.mousepressed
		 18	[  0]	ISF  	   		3	; if not love.mousepressed
		 19	[  0]	JMP  	  4		9	; 	goto 29
		 20	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
		 21	[  0]	GGET 	  5		1	; slot5 = _env["love"]
		 22	[  0]	TGETS	  5	5	0	; slot5 = love.mousepressed
		 23	[  0]	MOV  	  6		1	; slot6 = slot1
		 24	[  0]	MOV  	  7		2	; slot7 = slot2
		 25	[  0]	MOV  	  8		0	; slot8 = slot0
		 26	[  0]	KPRI 	  9		1	; slot9 = false
		 27	[  0]	KSHORT	 10		1	; slot10 = 1
		 28	[  0]	CALL 	  3	1	7	;  = uv3"unknown"(slot4, love.mousepressed, slot6, slot7, slot8, slot9)
		 29	[  0]	RET0 	  0		1	; return
	798	[  0]	FNEW 	 24		166	; N/A:0-0: 1 args, 3 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	3	; slot1 = uv0"unknown".virtualDown
		  3	[  0]	TGETV	  1	1	0	; slot1 = uv0"unknown".virtualDown[slot0]
		  4	[  0]	IST  	   		1	; if slot1
		  5	[  0]	JMP  	  1		1	; 	goto 7
		  6	[  0]	RET0 	  0		1	; return
		  7	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  8	[  0]	TGETS	  1	1	2	; slot1 = uv1"unknown".screen
		  9	[  0]	CALL 	  1	3	1	; slot1, slot2 = uv1"unknown".screen()
		 10	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 11	[  0]	TGETS	  3	3	3	; slot3 = uv0"unknown".virtualDown
		 12	[  0]	KPRI 	  4		0	; slot4 = nil
		 13	[  0]	TSETV	  4	3	0	; uv0"unknown".virtualDown[slot0] = slot4
		 14	[  0]	GGET 	  3		1	; slot3 = _env["love"]
		 15	[  0]	TGETS	  3	3	0	; slot3 = love.mousereleased
		 16	[  0]	ISF  	   		3	; if not love.mousereleased
		 17	[  0]	JMP  	  4		9	; 	goto 27
		 18	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 19	[  0]	GGET 	  5		1	; slot5 = _env["love"]
		 20	[  0]	TGETS	  5	5	0	; slot5 = love.mousereleased
		 21	[  0]	MOV  	  6		1	; slot6 = slot1
		 22	[  0]	MOV  	  7		2	; slot7 = slot2
		 23	[  0]	MOV  	  8		0	; slot8 = slot0
		 24	[  0]	KPRI 	  9		1	; slot9 = false
		 25	[  0]	KSHORT	 10		1	; slot10 = 1
		 26	[  0]	CALL 	  3	1	7	;  = uv2"unknown"(slot4, love.mousereleased, slot6, slot7, slot8, slot9)
		 27	[  0]	RET0 	  0		1	; return
	799	[  0]	KSTR 	 25		165	; slot25 = "frame"
	800	[  0]	KSHORT	 26		0	; slot26 = 0
	801	[  0]	TSETV	 26	7	25	; slot7[slot25] = slot26
	802	[  0]	KSTR 	 25		164	; slot25 = "mouseQueue"
	803	[  0]	TNEW 	 26		0	; slot26 = new table( array: 0, dict: 1)
	804	[  0]	TSETV	 26	7	25	; slot7[slot25] = slot26
	805	[  0]	FNEW 	 25		163	; N/A:0-0: 2 args, 1 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		ktable#3 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	4	; slot2 = uv0"unknown".mouseQueue
		  3	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  4	[  0]	TGETS	  3	3	4	; slot3 = uv0"unknown".mouseQueue
		  5	[  0]	LEN  	  3		3	; slot3 = #uv0"unknown".mouseQueue
		  6	[  0]	ADDVN	  3	3	0	; slot3 = slot3 + 1
		  7	[  0]	TDUP 	  4		3	; slot4 = copy table#k3
		  8	[  0]	TSETS	  0	4	2	; slot4.kind = slot0
		  9	[  0]	TSETS	  1	4	1	; slot4.button = slot1
		 10	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 11	[  0]	TGETS	  5	5	0	; slot5 = uv0"unknown".frame
		 12	[  0]	TSETS	  5	4	0	; slot4.frame = uv0"unknown".frame
		 13	[  0]	TSETV	  4	2	3	; uv0"unknown".mouseQueue[slot3] = slot4
		 14	[  0]	RET0 	  0		1	; return
	806	[  0]	FNEW 	 26		162	; N/A:0-0: 1 args, 5 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	7	; slot1 = uv0"unknown".isGliding
		  3	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown".isGliding()
		  4	[  0]	IST  	   		1	; if slot1
		  5	[  0]	JMP  	  2		6	; 	goto 12
		  6	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  7	[  0]	TGETS	  1	1	6	; slot1 = uv0"unknown".stamp
		  8	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  9	[  0]	TGETS	  2	2	5	; slot2 = uv1"unknown".seenStamp
		 10	[  0]	ISEQV	  1		2	; if uv0"unknown".stamp == uv1"unknown".seenStamp
		 11	[  0]	JMP  	  1		13	; 	goto 25
		 12	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 13	[  0]	TGETS	  1	1	4	; slot1 = uv0"unknown".finishGlide
		 14	[  0]	CALL 	  1	1	1	;  = uv0"unknown".finishGlide()
		 15	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 16	[  0]	TGETS	  1	1	3	; slot1 = uv0"unknown".warp
		 17	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 18	[  0]	TGETS	  3	3	2	; slot3 = uv2"unknown".setPosition
		 19	[  0]	CALL 	  1	1	2	;  = uv0"unknown".warp(uv1"unknown".seenStamp)
		 20	[  0]	UGET 	  1		3	; slot1 = uv3"unknwon"
		 21	[  0]	KSTR 	  3		1	; slot3 = "press"
		 22	[  0]	MOV  	  4		0	; slot4 = slot0
		 23	[  0]	CALL 	  1	1	3	;  = uv3"unknown"(slot2, slot3)
		 24	[  0]	JMP  	  1		14	; 	goto 39
		 25	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 26	[  0]	TGETS	  1	1	0	; slot1 = uv1"unknown".mouseQueue
		 27	[  0]	LEN  	  1		1	; slot1 = #uv1"unknown".mouseQueue
		 28	[  0]	KSHORT	  2		0	; slot2 = 0
		 29	[  0]	ISGE 	  2		1	; if slot2 >= slot1
		 30	[  0]	JMP  	  1		5	; 	goto 36
		 31	[  0]	UGET 	  1		3	; slot1 = uv3"unknwon"
		 32	[  0]	KSTR 	  3		1	; slot3 = "press"
		 33	[  0]	MOV  	  4		0	; slot4 = slot0
		 34	[  0]	CALL 	  1	1	3	;  = uv3"unknown"(slot2, slot3)
		 35	[  0]	JMP  	  1		3	; 	goto 39
		 36	[  0]	UGET 	  1		4	; slot1 = uv4"unknwon"
		 37	[  0]	MOV  	  3		0	; slot3 = slot0
		 38	[  0]	CALL 	  1	1	2	;  = uv4"unknown"(slot2)
		 39	[  0]	RET0 	  0		1	; return
	807	[  0]	FNEW 	 27		161	; N/A:0-0: 1 args, 3 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	1	; slot1 = uv0"unknown".mouseQueue
		  3	[  0]	LEN  	  1		1	; slot1 = #uv0"unknown".mouseQueue
		  4	[  0]	KSHORT	  2		0	; slot2 = 0
		  5	[  0]	ISGE 	  2		1	; if slot2 >= slot1
		  6	[  0]	JMP  	  1		5	; 	goto 12
		  7	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  8	[  0]	KSTR 	  3		0	; slot3 = "release"
		  9	[  0]	MOV  	  4		0	; slot4 = slot0
		 10	[  0]	CALL 	  1	1	3	;  = uv1"unknown"(slot2, slot3)
		 11	[  0]	JMP  	  1		3	; 	goto 15
		 12	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 13	[  0]	MOV  	  3		0	; slot3 = slot0
		 14	[  0]	CALL 	  1	1	2	;  = uv2"unknown"(slot2)
		 15	[  0]	RET0 	  0		1	; return
	808	[  0]	FNEW 	 28		160	; N/A:0-0: 0 args, 3 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	6	; slot0 = uv0"unknown".mouseQueue
		  3	[  0]	LEN  	  0		0	; slot0 = #uv0"unknown".mouseQueue
		  4	[  0]	KSHORT	  1		0	; slot1 = 0
		  5	[  0]	ISGE 	  1		0	; if slot1 >= slot0
		  6	[  0]	JMP  	  0		28	; 	goto 35
		  7	[  0]	LOOP 	  0		27	; Loop start, exit goto 35
		  8	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  9	[  0]	TGETS	  0	0	6	; slot0 = uv0"unknown".mouseQueue
		 10	[  0]	TGETB	  0	0	1	; slot0 = uv0"unknown".mouseQueue[1]
		 11	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 12	[  0]	TGETS	  1	1	5	; slot1 = uv0"unknown".frame
		 13	[  0]	TGETS	  2	0	5	; slot2 = slot0.frame
		 14	[  0]	ADDVN	  2	2	0	; slot2 = <unknown table>.frame + 2
		 15	[  0]	ISGE 	  1		2	; if uv0"unknown".frame >= slot2
		 16	[  0]	JMP  	  1		1	; 	goto 18
		 17	[  0]	RET0 	  0		1	; return
		 18	[  0]	GGET 	  1		4	; slot1 = _env["table"]
		 19	[  0]	TGETS	  1	1	3	; slot1 = table.remove
		 20	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 21	[  0]	TGETS	  3	3	6	; slot3 = uv0"unknown".mouseQueue
		 22	[  0]	KSHORT	  4		1	; slot4 = 1
		 23	[  0]	CALL 	  1	1	3	;  = table.remove(slot2, uv0"unknown".mouseQueue)
		 24	[  0]	TGETS	  1	0	2	; slot1 = slot0.kind
		 25	[  0]	ISNES	  1		1	; if <unknown table>.kind ~= "press"
		 26	[  0]	JMP  	  1		4	; 	goto 31
		 27	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 28	[  0]	TGETS	  3	0	0	; slot3 = slot0.button
		 29	[  0]	CALL 	  1	1	2	;  = uv1"unknown"(slot2)
		 30	[  0]	JMP  	  1		-30	; 	goto 1
		 31	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 32	[  0]	TGETS	  3	0	0	; slot3 = slot0.button
		 33	[  0]	CALL 	  1	1	2	;  = uv2"unknown"(slot2)
		 34	[  0]	JMP  	  0		-34	; 	goto 1
		 35	[  0]	RET0 	  0		1	; return
	809	[  0]	FNEW 	 29		159	; N/A:0-0: 2 args, 3 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	7	; slot2 = uv0"unknown".toScreen
		  3	[  0]	MOV  	  4		0	; slot4 = slot0
		  4	[  0]	MOV  	  5		1	; slot5 = slot1
		  5	[  0]	CALL 	  2	3	3	; slot2, slot3 = uv0"unknown".toScreen(slot3, slot4)
		  6	[  0]	GGET 	  4		6	; slot4 = _env["math"]
		  7	[  0]	TGETS	  4	4	5	; slot4 = math.floor
		  8	[  0]	ADDVN	  6	2	0	; slot6 = slot2 + 0.5
		  9	[  0]	CALL 	  4	2	2	; slot4 = math.floor(slot5)
		 10	[  0]	GGET 	  5		6	; slot5 = _env["math"]
		 11	[  0]	TGETS	  5	5	5	; slot5 = math.floor
		 12	[  0]	ADDVN	  7	3	0	; slot7 = slot3 + 0.5
		 13	[  0]	CALL 	  5	2	2	; slot5 = math.floor(slot6)
		 14	[  0]	MOV  	  3		5	; slot3 = math.floor
		 15	[  0]	MOV  	  2		4	; slot2 = math.floor
		 16	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 17	[  0]	KSTR 	  6		4	; slot6 = "tooltip"
		 18	[  0]	CALL 	  4	2	2	; slot4 = uv1"unknown"(math.floor)
		 19	[  0]	ISF  	   		4	; if not uv1"unknown"
		 20	[  0]	JMP  	  5		2	; 	goto 23
		 21	[  0]	KPRI 	  5		0	; slot5 = nil
		 22	[  0]	TSETS	  5	4	3	; uv1"unknown".candidate = slot5
		 23	[  0]	GGET 	  5		2	; slot5 = _env["love"]
		 24	[  0]	TGETS	  5	5	1	; slot5 = love.mousepressed
		 25	[  0]	ISF  	   		5	; if not love.mousepressed
		 26	[  0]	JMP  	  6		9	; 	goto 36
		 27	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 28	[  0]	GGET 	  7		2	; slot7 = _env["love"]
		 29	[  0]	TGETS	  7	7	1	; slot7 = love.mousepressed
		 30	[  0]	MOV  	  8		2	; slot8 = math.floor
		 31	[  0]	MOV  	  9		3	; slot9 = math.floor
		 32	[  0]	KSHORT	 10		1	; slot10 = 1
		 33	[  0]	KPRI 	 11		1	; slot11 = false
		 34	[  0]	KSHORT	 12		1	; slot12 = 1
		 35	[  0]	CALL 	  5	1	7	;  = uv2"unknown"(slot6, love.mousepressed, math.floor, math.floor, slot10, slot11)
		 36	[  0]	GGET 	  5		2	; slot5 = _env["love"]
		 37	[  0]	TGETS	  5	5	0	; slot5 = love.mousereleased
		 38	[  0]	ISF  	   		5	; if not love.mousereleased
		 39	[  0]	JMP  	  6		9	; 	goto 49
		 40	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 41	[  0]	GGET 	  7		2	; slot7 = _env["love"]
		 42	[  0]	TGETS	  7	7	0	; slot7 = love.mousereleased
		 43	[  0]	MOV  	  8		2	; slot8 = math.floor
		 44	[  0]	MOV  	  9		3	; slot9 = math.floor
		 45	[  0]	KSHORT	 10		1	; slot10 = 1
		 46	[  0]	KPRI 	 11		1	; slot11 = false
		 47	[  0]	KSHORT	 12		1	; slot12 = 1
		 48	[  0]	CALL 	  5	1	7	;  = uv2"unknown"(slot6, love.mousereleased, math.floor, math.floor, slot10, slot11)
		 49	[  0]	RET0 	  0		1	; return
	810	[  0]	KSTR 	 30		158	; slot30 = "clickAt"
	811	[  0]	TSETV	 29	6	30	; slot6[slot30] = slot29
	812	[  0]	FNEW 	 30		157	; N/A:0-0: 1 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	3	; slot1 = slot0.x
		  2	[  0]	TGETS	  2	0	2	; slot2 = slot0.w
		  3	[  0]	MULVN	  2	2	0	; slot2 = <unknown table>.w * 0.5
		  4	[  0]	ADDVV	  1	1	2	; slot1 = <unknown table>.x + slot2
		  5	[  0]	TGETS	  2	0	1	; slot2 = slot0.y
		  6	[  0]	TGETS	  3	0	0	; slot3 = slot0.h
		  7	[  0]	MULVN	  3	3	0	; slot3 = <unknown table>.h * 0.5
		  8	[  0]	ADDVV	  2	2	3	; slot2 = <unknown table>.y + slot3
		  9	[  0]	RET  	  1		3	; return slot1, slot2
	813	[  0]	FNEW 	 31		156	; N/A:0-0: 3 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  3		0	; slot3 = slot0; if not slot0
		  2	[  0]	JMP  	  3		19	; 	goto 22
		  3	[  0]	TGETS	  3	0	3	; slot3 = slot0.x
		  4	[  0]	ISGT 	  3		1	; if <unknown table>.x > slot1
		  5	[  0]	JMP  	  3		13	; 	goto 19
		  6	[  0]	TGETS	  3	0	3	; slot3 = slot0.x
		  7	[  0]	TGETS	  4	0	2	; slot4 = slot0.w
		  8	[  0]	ADDVV	  3	3	4	; slot3 = <unknown table>.x + <unknown table>.w
		  9	[  0]	ISGT 	  1		3	; if slot1 > slot3
		 10	[  0]	JMP  	  3		8	; 	goto 19
		 11	[  0]	TGETS	  3	0	1	; slot3 = slot0.y
		 12	[  0]	ISGT 	  3		2	; if <unknown table>.y > slot2
		 13	[  0]	JMP  	  3		5	; 	goto 19
		 14	[  0]	TGETS	  3	0	1	; slot3 = slot0.y
		 15	[  0]	TGETS	  4	0	0	; slot4 = slot0.h
		 16	[  0]	ADDVV	  3	3	4	; slot3 = <unknown table>.y + <unknown table>.h
		 17	[  0]	ISLE 	  2		3	; if slot2 <= slot3
		 18	[  0]	JMP  	  3		2	; 	goto 21
		 19	[  0]	KPRI 	  3		1	; slot3 = false
		 20	[  0]	JMP  	  4		1	; 	goto 22
		 21	[  0]	KPRI 	  3		2	; slot3 = true
		 22	[  0]	RET1 	  3		2	; return slot3
	814	[  0]	TNEW 	 32		0	; slot32 = new table( array: 0, dict: 1)
	815	[  0]	KSTR 	 33		155	; slot33 = "bridge"
	816	[  0]	TSETV	 32	6	33	; slot6[slot33] = slot32
	817	[  0]	FNEW 	 33		154	; N/A:0-0: 0 args, 0 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		2	; slot0 = _env["package"]
		  2	[  0]	TGETS	  0	0	1	; slot0 = package.loaded
		  3	[  0]	TGETS	  0	0	0	; slot0 = package.loaded.src.ui.mainmenu
		  4	[  0]	RET1 	  0		2	; return package.loaded.src.ui.mainmenu
	818	[  0]	FNEW 	 34		153	; N/A:0-0: 0 args, 0 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		2	; slot0 = _env["package"]
		  2	[  0]	TGETS	  0	0	1	; slot0 = package.loaded
		  3	[  0]	TGETS	  0	0	0	; slot0 = package.loaded.src.ui.upgrade
		  4	[  0]	RET1 	  0		2	; return package.loaded.src.ui.upgrade
	819	[  0]	FNEW 	 35		152	; N/A:0-0: 0 args, 1 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	KSTR 	  2		8	; slot2 = "ui"
		  3	[  0]	CALL 	  0	2	2	; slot0 = uv0"unknown"(slot1)
		  4	[  0]	IST  	   		0	; if slot0
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	KPRI 	  1		0	; slot1 = nil
		  7	[  0]	RET1 	  1		2	; return slot1
		  8	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  9	[  0]	KSTR 	  3		7	; slot3 = "phase"
		 10	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		 11	[  0]	ISNES	  1		6	; if slot1 ~= "menu"
		 12	[  0]	JMP  	  2		11	; 	goto 24
		 13	[  0]	TGETS	  2	0	5	; slot2 = slot0.menuSettingsOverlayState
		 14	[  0]	ISF  	   		2	; if not <unknown table>.menuSettingsOverlayState
		 15	[  0]	JMP  	  3		6	; 	goto 22
		 16	[  0]	TGETS	  3	2	4	; slot3 = <unknown table>.menuSettingsOverlayState.open
		 17	[  0]	ISNEP	  3		2	; if <unknown table>.menuSettingsOverlayState.open ~= true
		 18	[  0]	JMP  	  3		3	; 	goto 22
		 19	[  0]	MOV  	  3		2	; slot3 = <unknown table>.menuSettingsOverlayState
		 20	[  0]	KSTR 	  4		6	; slot4 = "menu"
		 21	[  0]	RET  	  3		3	; return <unknown table>.menuSettingsOverlayState, slot4
		 22	[  0]	KPRI 	  3		0	; slot3 = nil
		 23	[  0]	RET1 	  3		2	; return slot3
		 24	[  0]	TGETS	  2	0	3	; slot2 = slot0.pauseOverlayState
		 25	[  0]	ISF  	   		2	; if not <unknown table>.pauseOverlayState
		 26	[  0]	JMP  	  3		9	; 	goto 36
		 27	[  0]	TGETS	  3	2	2	; slot3 = <unknown table>.pauseOverlayState.active
		 28	[  0]	ISNEP	  3		2	; if <unknown table>.pauseOverlayState.active ~= true
		 29	[  0]	JMP  	  3		6	; 	goto 36
		 30	[  0]	TGETS	  3	2	1	; slot3 = <unknown table>.pauseOverlayState.settingsMode
		 31	[  0]	ISNEP	  3		2	; if <unknown table>.pauseOverlayState.settingsMode ~= true
		 32	[  0]	JMP  	  3		3	; 	goto 36
		 33	[  0]	MOV  	  3		2	; slot3 = <unknown table>.pauseOverlayState
		 34	[  0]	KSTR 	  4		0	; slot4 = "pause"
		 35	[  0]	RET  	  3		3	; return <unknown table>.pauseOverlayState, slot4
		 36	[  0]	KPRI 	  3		0	; slot3 = nil
		 37	[  0]	RET1 	  3		2	; return slot3
	820	[  0]	KSTR 	 36		151	; slot36 = "settingsState"
	821	[  0]	TSETV	 35	32	36	; slot32[slot36] = slot35
	822	[  0]	KSTR 	 36		150	; slot36 = "detect"
	823	[  0]	FNEW 	 37		149	; N/A:0-0: 0 args, 3 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	KSTR 	  2		27	; slot2 = "ui"
		  3	[  0]	CALL 	  0	2	2	; slot0 = uv0"unknown"(slot1)
		  4	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  5	[  0]	KSTR 	  3		26	; slot3 = "phase"
		  6	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		  7	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  8	[  0]	KSTR 	  4		25	; slot4 = "StartupSplash"
		  9	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown"(slot3)
		 10	[  0]	ISF  	   		2	; if not slot2
		 11	[  0]	JMP  	  3		9	; 	goto 21
		 12	[  0]	TGETS	  3	2	24	; slot3 = slot2.isActive
		 13	[  0]	ISF  	   		3	; if not <unknown table>.isActive
		 14	[  0]	JMP  	  4		6	; 	goto 21
		 15	[  0]	TGETS	  3	2	24	; slot3 = slot2.isActive
		 16	[  0]	CALL 	  3	2	1	; slot3 = <unknown table>.isActive()
		 17	[  0]	ISF  	   		3	; if not <unknown table>.isActive
		 18	[  0]	JMP  	  4		2	; 	goto 21
		 19	[  0]	KSTR 	  3		23	; slot3 = "splash"
		 20	[  0]	RET1 	  3		2	; return slot3
		 21	[  0]	IST  	   		0	; if slot0
		 22	[  0]	JMP  	  3		2	; 	goto 25
		 23	[  0]	KSTR 	  3		22	; slot3 = "none"
		 24	[  0]	RET1 	  3		2	; return slot3
		 25	[  0]	ISNES	  1		21	; if slot1 ~= "menu"
		 26	[  0]	JMP  	  3		33	; 	goto 60
		 27	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 28	[  0]	CALL 	  3	2	1	; slot3 = uv1"unknown"()
		 29	[  0]	ISF  	   		3	; if not uv1"unknown"
		 30	[  0]	JMP  	  4		9	; 	goto 40
		 31	[  0]	TGETS	  4	3	20	; slot4 = uv1"unknown".exitConfirm
		 32	[  0]	ISF  	   		4	; if not uv1"unknown".exitConfirm
		 33	[  0]	JMP  	  5		6	; 	goto 40
		 34	[  0]	TGETS	  4	3	20	; slot4 = uv1"unknown".exitConfirm
		 35	[  0]	TGETS	  4	4	19	; slot4 = uv1"unknown".exitConfirm.active
		 36	[  0]	ISF  	   		4	; if not uv1"unknown".exitConfirm.active
		 37	[  0]	JMP  	  5		2	; 	goto 40
		 38	[  0]	KSTR 	  4		18	; slot4 = "confirm"
		 39	[  0]	RET1 	  4		2	; return slot4
		 40	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 41	[  0]	CALL 	  4	2	1	; slot4 = uv2"unknown"()
		 42	[  0]	ISF  	   		4	; if not uv2"unknown"
		 43	[  0]	JMP  	  5		2	; 	goto 46
		 44	[  0]	KSTR 	  4		17	; slot4 = "settings"
		 45	[  0]	RET1 	  4		2	; return slot4
		 46	[  0]	ISF  	   		3	; if not uv1"unknown"
		 47	[  0]	JMP  	  4		9	; 	goto 57
		 48	[  0]	TGETS	  4	3	16	; slot4 = uv1"unknown".stageSelect
		 49	[  0]	ISF  	   		4	; if not uv1"unknown".stageSelect
		 50	[  0]	JMP  	  5		6	; 	goto 57
		 51	[  0]	TGETS	  4	3	16	; slot4 = uv1"unknown".stageSelect
		 52	[  0]	TGETS	  4	4	19	; slot4 = uv1"unknown".stageSelect.active
		 53	[  0]	ISF  	   		4	; if not uv1"unknown".stageSelect.active
		 54	[  0]	JMP  	  5		2	; 	goto 57
		 55	[  0]	KSTR 	  4		15	; slot4 = "stage"
		 56	[  0]	RET1 	  4		2	; return slot4
		 57	[  0]	KSTR 	  4		21	; slot4 = "menu"
		 58	[  0]	RET1 	  4		2	; return slot4
		 59	[  0]	JMP  	  3		4	; 	goto 64
		 60	[  0]	ISNES	  1		14	; if slot1 ~= "upgrade"
		 61	[  0]	JMP  	  3		2	; 	goto 64
		 62	[  0]	KSTR 	  3		14	; slot3 = "upgrade"
		 63	[  0]	RET1 	  3		2	; return slot3
		 64	[  0]	TGETS	  3	0	13	; slot3 = slot0._restartConfirm
		 65	[  0]	ISF  	   		3	; if not <unknown table>._restartConfirm
		 66	[  0]	JMP  	  4		5	; 	goto 72
		 67	[  0]	TGETS	  4	3	19	; slot4 = <unknown table>._restartConfirm.active
		 68	[  0]	ISF  	   		4	; if not <unknown table>._restartConfirm.active
		 69	[  0]	JMP  	  5		2	; 	goto 72
		 70	[  0]	KSTR 	  4		18	; slot4 = "confirm"
		 71	[  0]	RET1 	  4		2	; return slot4
		 72	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 73	[  0]	CALL 	  4	2	1	; slot4 = uv2"unknown"()
		 74	[  0]	ISF  	   		4	; if not uv2"unknown"
		 75	[  0]	JMP  	  5		2	; 	goto 78
		 76	[  0]	KSTR 	  4		17	; slot4 = "settings"
		 77	[  0]	RET1 	  4		2	; return slot4
		 78	[  0]	TGETS	  4	0	12	; slot4 = slot0.pauseOverlayState
		 79	[  0]	ISF  	   		4	; if not <unknown table>.pauseOverlayState
		 80	[  0]	JMP  	  5		5	; 	goto 86
		 81	[  0]	TGETS	  5	4	19	; slot5 = <unknown table>.pauseOverlayState.active
		 82	[  0]	ISF  	   		5	; if not <unknown table>.pauseOverlayState.active
		 83	[  0]	JMP  	  6		2	; 	goto 86
		 84	[  0]	KSTR 	  5		11	; slot5 = "pause"
		 85	[  0]	RET1 	  5		2	; return slot5
		 86	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 87	[  0]	KSTR 	  7		10	; slot7 = "battlefield"
		 88	[  0]	CALL 	  5	2	2	; slot5 = uv0"unknown"(slot6)
		 89	[  0]	ISF  	   		5	; if not uv0"unknown"
		 90	[  0]	JMP  	  6		5	; 	goto 96
		 91	[  0]	TGETS	  6	5	9	; slot6 = uv0"unknown".gameOver
		 92	[  0]	ISF  	   		6	; if not uv0"unknown".gameOver
		 93	[  0]	JMP  	  7		2	; 	goto 96
		 94	[  0]	KSTR 	  6		8	; slot6 = "gameover"
		 95	[  0]	RET1 	  6		2	; return slot6
		 96	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 97	[  0]	KSTR 	  8		7	; slot8 = "Tutorial"
		 98	[  0]	CALL 	  6	2	2	; slot6 = uv0"unknown"(slot7)
		 99	[  0]	ISF  	   		6	; if not uv0"unknown"
		100	[  0]	JMP  	  7		9	; 	goto 110
		101	[  0]	TGETS	  7	6	24	; slot7 = uv0"unknown".isActive
		102	[  0]	ISF  	   		7	; if not uv0"unknown".isActive
		103	[  0]	JMP  	  8		6	; 	goto 110
		104	[  0]	TGETS	  7	6	24	; slot7 = uv0"unknown".isActive
		105	[  0]	CALL 	  7	2	1	; slot7 = uv0"unknown".isActive()
		106	[  0]	ISF  	   		7	; if not uv0"unknown".isActive
		107	[  0]	JMP  	  8		2	; 	goto 110
		108	[  0]	KSTR 	  7		6	; slot7 = "tutorial"
		109	[  0]	RET1 	  7		2	; return slot7
		110	[  0]	TGETS	  7	0	5	; slot7 = slot0._coreSelect
		111	[  0]	ISF  	   		7	; if not <unknown table>._coreSelect
		112	[  0]	JMP  	  8		6	; 	goto 119
		113	[  0]	TGETS	  7	0	5	; slot7 = slot0._coreSelect
		114	[  0]	TGETS	  7	7	19	; slot7 = <unknown table>._coreSelect.active
		115	[  0]	ISF  	   		7	; if not <unknown table>._coreSelect.active
		116	[  0]	JMP  	  8		2	; 	goto 119
		117	[  0]	KSTR 	  7		4	; slot7 = "core"
		118	[  0]	RET1 	  7		2	; return slot7
		119	[  0]	ISF  	   		5	; if not uv0"unknown"
		120	[  0]	JMP  	  7		8	; 	goto 129
		121	[  0]	TGETS	  7	5	3	; slot7 = uv0"unknown".classSelect
		122	[  0]	IST  	   		7	; if uv0"unknown".classSelect
		123	[  0]	JMP  	  8		3	; 	goto 127
		124	[  0]	TGETS	  7	5	2	; slot7 = uv0"unknown".awakeningModal
		125	[  0]	ISF  	   		7	; if not uv0"unknown".awakeningModal
		126	[  0]	JMP  	  8		2	; 	goto 129
		127	[  0]	KSTR 	  7		1	; slot7 = "modal"
		128	[  0]	RET1 	  7		2	; return slot7
		129	[  0]	KSTR 	  7		0	; slot7 = "game"
		130	[  0]	RET1 	  7		2	; return slot7
	824	[  0]	TSETV	 37	32	36	; slot32[slot36] = slot37
	825	[  0]	TDUP 	 36		148	; slot36 = copy table#k148
	826	[  0]	TDUP 	 37		147	; slot37 = copy table#k147
	827	[  0]	FNEW 	 38		146	; N/A:0-0: 4 args, 0 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		ktable#2 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		1	; if not slot1
		  2	[  0]	JMP  	  4		42	; 	goto 45
		  3	[  0]	TGETS	  4	1	6	; slot4 = slot1.x
		  4	[  0]	ISF  	   		4	; if not <unknown table>.x
		  5	[  0]	JMP  	  5		39	; 	goto 45
		  6	[  0]	TGETS	  4	1	5	; slot4 = slot1.y
		  7	[  0]	ISF  	   		4	; if not <unknown table>.y
		  8	[  0]	JMP  	  5		36	; 	goto 45
		  9	[  0]	TGETS	  4	1	4	; slot4 = slot1.w
		 10	[  0]	ISF  	   		4	; if not <unknown table>.w
		 11	[  0]	JMP  	  5		33	; 	goto 45
		 12	[  0]	TGETS	  4	1	3	; slot4 = slot1.h
		 13	[  0]	ISF  	   		4	; if not <unknown table>.h
		 14	[  0]	JMP  	  5		30	; 	goto 45
		 15	[  0]	TGETS	  4	1	4	; slot4 = slot1.w
		 16	[  0]	KSHORT	  5		0	; slot5 = 0
		 17	[  0]	ISGE 	  5		4	; if slot5 >= <unknown table>.w
		 18	[  0]	JMP  	  4		26	; 	goto 45
		 19	[  0]	TGETS	  4	1	3	; slot4 = slot1.h
		 20	[  0]	KSHORT	  5		0	; slot5 = 0
		 21	[  0]	ISGE 	  5		4	; if slot5 >= <unknown table>.h
		 22	[  0]	JMP  	  4		22	; 	goto 45
		 23	[  0]	TDUP 	  4		2	; slot4 = copy table#k2
		 24	[  0]	TGETS	  5	1	6	; slot5 = slot1.x
		 25	[  0]	TSETS	  5	4	6	; slot4.x = <unknown table>.x
		 26	[  0]	TGETS	  5	1	5	; slot5 = slot1.y
		 27	[  0]	TSETS	  5	4	5	; slot4.y = <unknown table>.y
		 28	[  0]	TGETS	  5	1	4	; slot5 = slot1.w
		 29	[  0]	TSETS	  5	4	4	; slot4.w = <unknown table>.w
		 30	[  0]	TGETS	  5	1	3	; slot5 = slot1.h
		 31	[  0]	TSETS	  5	4	3	; slot4.h = <unknown table>.h
		 32	[  0]	TSETS	  2	4	1	; slot4.id = slot2
		 33	[  0]	ISF  	   		3	; if not slot3
		 34	[  0]	JMP  	  5		7	; 	goto 42
		 35	[  0]	GGET 	  5		0	; slot5 = _env["pairs"]
		 36	[  0]	MOV  	  7		3	; slot7 = slot3
		 37	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = pairs(slot6)
		 38	[  0]	ISNEXT	  8		1	; Verify ITERN at 40; goto 40
		 39	[  0]	TSETV	  9	4	8	; slot4[slot8] = slot9
		 40	[  0]	ITERN	  8	3	3	; slot8, slot9, slot10 = pairs, slot6, slot7; slot8, slot9 = pairs(slot6, slot7)
		 41	[  0]	ITERL	  8		-3	; slot7 = slot8; if slot8 != nil goto 39
		 42	[  0]	LEN  	  5		0	; slot5 = #slot0
		 43	[  0]	ADDVN	  5	5	0	; slot5 = slot5 + 1
		 44	[  0]	TSETV	  4	0	5	; slot0[slot5] = slot4
		 45	[  0]	RET0 	  0		1	; return
	828	[  0]	FNEW 	 39		145	; N/A:0-0: 2 args, 1 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		2	; slot2 = _env["ipairs"]
		  2	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  3	[  0]	TGETS	  4	4	1	; slot4 = uv0"unknown".list
		  4	[  0]	CALL 	  4	0	1	; MULTRES = uv0"unknown".list()
		  5	[  0]	CALLM	  2	4	0	; slot2, slot3, slot4 = ipairs(, ...MULTRES)
		  6	[  0]	JMP  	  5		6	; 	goto 13
		  7	[  0]	TGETS	  7	6	0	; slot7 = slot6.group
		  8	[  0]	ISNEV	  7		1	; if <unknown table>.group ~= slot1
		  9	[  0]	JMP  	  7		3	; 	goto 13
		 10	[  0]	LEN  	  7		0	; slot7 = #slot0
		 11	[  0]	ADDVN	  7	7	0	; slot7 = slot7 + 1
		 12	[  0]	TSETV	  6	0	7	; slot0[slot7] = slot6
		 13	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = ipairs, slot3, uv0"unknown".list; slot5, slot6 = ipairs(slot3, uv0"unknown".list)
		 14	[  0]	ITERL	  5		-8	; uv0"unknown".list = slot5; if slot5 != nil goto 7
		 15	[  0]	RET0 	  0		1	; return
	829	[  0]	FNEW 	 40		144	; N/A:0-0: 1 args, 2 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		ktable#2 = [
			]
		
		
		ktable#10 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown"()
		  3	[  0]	ISFC 	  2		1	; slot2 = slot1; if not slot1
		  4	[  0]	JMP  	  2		1	; 	goto 6
		  5	[  0]	TGETS	  2	1	15	; slot2 = slot1.stageSelect
		  6	[  0]	IST  	   		2	; if <unknown table>.stageSelect
		  7	[  0]	JMP  	  3		1	; 	goto 9
		  8	[  0]	RET0 	  0		1	; return
		  9	[  0]	TGETS	  3	2	14	; slot3 = <unknown table>.stageSelect.diffActive
		 10	[  0]	ISF  	   		3	; if not <unknown table>.stageSelect.diffActive
		 11	[  0]	JMP  	  4		32	; 	goto 44
		 12	[  0]	GGET 	  3		13	; slot3 = _env["ipairs"]
		 13	[  0]	TGETS	  5	2	12	; slot5 = <unknown table>.stageSelect.diffRects
		 14	[  0]	IST  	   		5	; if <unknown table>.stageSelect.diffRects
		 15	[  0]	JMP  	  6		1	; 	goto 17
		 16	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 17	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
		 18	[  0]	JMP  	  6		9	; 	goto 28
		 19	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 20	[  0]	MOV  	 10		0	; slot10 = slot0
		 21	[  0]	MOV  	 11		7	; slot11 = slot7
		 22	[  0]	KSTR 	 12		11	; slot12 = "diff"
		 23	[  0]	MOV  	 13		6	; slot13 = slot6
		 24	[  0]	CAT  	 12	12	13	; slot12 = slot12 .. slot13
		 25	[  0]	TDUP 	 13		10	; slot13 = copy table#k10
		 26	[  0]	TSETS	  6	13	9	; slot13.order = slot6
		 27	[  0]	CALL 	  8	1	5	;  = uv1"unknown"(slot9, slot10, slot11, slot12)
		 28	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, slot5; slot6, slot7 = ipairs(slot4, slot5)
		 29	[  0]	ITERL	  6		-11	; slot5 = slot6; if slot6 != nil goto 19
		 30	[  0]	TGETS	  3	1	8	; slot3 = slot1.getRunSave
		 31	[  0]	ISF  	   		3	; if not <unknown table>.getRunSave
		 32	[  0]	JMP  	  4		29	; 	goto 62
		 33	[  0]	TGETS	  3	1	8	; slot3 = slot1.getRunSave
		 34	[  0]	TGETS	  5	2	7	; slot5 = <unknown table>.stageSelect.selectedStage
		 35	[  0]	CALL 	  3	2	2	; slot3 = <unknown table>.getRunSave(slot4)
		 36	[  0]	ISF  	   		3	; if not <unknown table>.getRunSave
		 37	[  0]	JMP  	  4		24	; 	goto 62
		 38	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 39	[  0]	MOV  	  5		0	; slot5 = slot0
		 40	[  0]	TGETS	  6	2	6	; slot6 = <unknown table>.stageSelect.saveSlotRect
		 41	[  0]	KSTR 	  7		5	; slot7 = "save"
		 42	[  0]	CALL 	  3	1	4	;  = uv1"unknown"(slot4, slot5, <unknown table>.stageSelect.saveSlotRect)
		 43	[  0]	JMP  	  3		18	; 	goto 62
		 44	[  0]	GGET 	  3		13	; slot3 = _env["ipairs"]
		 45	[  0]	TGETS	  5	2	4	; slot5 = <unknown table>.stageSelect.stageRects
		 46	[  0]	IST  	   		5	; if <unknown table>.stageSelect.stageRects
		 47	[  0]	JMP  	  6		1	; 	goto 49
		 48	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 49	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
		 50	[  0]	JMP  	  6		9	; 	goto 60
		 51	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 52	[  0]	MOV  	 10		0	; slot10 = slot0
		 53	[  0]	MOV  	 11		7	; slot11 = slot7
		 54	[  0]	KSTR 	 12		3	; slot12 = "stage"
		 55	[  0]	MOV  	 13		6	; slot13 = <unknown table>.stageSelect.saveSlotRect
		 56	[  0]	CAT  	 12	12	13	; slot12 = slot12 .. <unknown table>.stageSelect.saveSlotRect
		 57	[  0]	TDUP 	 13		2	; slot13 = copy table#k2
		 58	[  0]	TSETS	  6	13	9	; slot13.order = <unknown table>.stageSelect.saveSlotRect
		 59	[  0]	CALL 	  8	1	5	;  = uv1"unknown"(slot9, slot10, slot11, slot12)
		 60	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, slot5; slot6, slot7 = ipairs(slot4, slot5)
		 61	[  0]	ITERL	  6		-11	; slot5 = <unknown table>.stageSelect.saveSlotRect; if <unknown table>.stageSelect.saveSlotRect != nil goto 51
		 62	[  0]	TGETS	  3	2	1	; slot3 = <unknown table>.stageSelect.back
		 63	[  0]	ISF  	   		3	; if not <unknown table>.stageSelect.back
		 64	[  0]	JMP  	  4		6	; 	goto 71
		 65	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 66	[  0]	MOV  	  5		0	; slot5 = slot0
		 67	[  0]	TGETS	  6	2	1	; slot6 = <unknown table>.stageSelect.back
		 68	[  0]	TGETS	  6	6	0	; slot6 = <unknown table>.stageSelect.back.rect
		 69	[  0]	KSTR 	  7		1	; slot7 = "back"
		 70	[  0]	CALL 	  3	1	4	;  = uv1"unknown"(slot4, slot5, <unknown table>.stageSelect.back.rect)
		 71	[  0]	RET0 	  0		1	; return
	830	[  0]	FNEW 	 41		143	; N/A:0-0: 0 args, 1 upvalues, 20 slots
		
		;;;; constant tables ;;;;
		ktable#9 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	KSTR 	  2		19	; slot2 = "__slotPadSettingsView"
		  3	[  0]	CALL 	  0	2	2	; slot0 = uv0"unknown"(slot1)
		  4	[  0]	ISF  	   		0	; if not slot0
		  5	[  0]	JMP  	  1		4	; 	goto 10
		  6	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  7	[  0]	KSTR 	  2		19	; slot2 = "__slotPadSettingsView"
		  8	[  0]	CALL 	  0	2	2	; slot0 = uv0"unknown"(slot1)
		  9	[  0]	CALL 	  0	2	1	; slot0 = slot0()
		 10	[  0]	IST  	   		0	; if slot0
		 11	[  0]	JMP  	  1		2	; 	goto 14
		 12	[  0]	KPRI 	  1		0	; slot1 = nil
		 13	[  0]	RET1 	  1		2	; return slot1
		 14	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		 15	[  0]	TGETS	  2	0	18	; slot2 = slot0.rowH
		 16	[  0]	IST  	   		2	; if <unknown table>.rowH
		 17	[  0]	JMP  	  3		1	; 	goto 19
		 18	[  0]	KSHORT	  2		26	; slot2 = 26
		 19	[  0]	GGET 	  3		17	; slot3 = _env["ipairs"]
		 20	[  0]	TGETS	  5	0	16	; slot5 = slot0.items
		 21	[  0]	IST  	   		5	; if <unknown table>.items
		 22	[  0]	JMP  	  6		1	; 	goto 24
		 23	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 24	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
		 25	[  0]	JMP  	  6		45	; 	goto 71
		 26	[  0]	TGETS	  8	0	15	; slot8 = slot0.cy
		 27	[  0]	SUBVN	  9	6	0	; slot9 = slot6 - 1
		 28	[  0]	MULVV	  9	9	2	; slot9 = slot9 * slot2
		 29	[  0]	ADDVV	  8	8	9	; slot8 = <unknown table>.cy + slot9
		 30	[  0]	TGETS	  9	0	14	; slot9 = slot0.scrollY
		 31	[  0]	IST  	   		9	; if <unknown table>.scrollY
		 32	[  0]	JMP  	 10		1	; 	goto 34
		 33	[  0]	KSHORT	  9		0	; slot9 = 0
		 34	[  0]	SUBVV	  8	8	9	; slot8 = slot8 - slot9
		 35	[  0]	TGETS	  9	0	13	; slot9 = slot0.cx
		 36	[  0]	TGETS	 10	0	12	; slot10 = slot0.cw
		 37	[  0]	MULVN	 10	10	1	; slot10 = <unknown table>.cw * 0.5
		 38	[  0]	ADDVV	  9	9	10	; slot9 = <unknown table>.cx + slot10
		 39	[  0]	MULVN	 10	2	1	; slot10 = slot2 * 0.5
		 40	[  0]	ADDVV	 10	8	10	; slot10 = slot8 + slot10
		 41	[  0]	UGET 	 11		0	; slot11 = uv0"unknwon"
		 42	[  0]	KSTR 	 13		11	; slot13 = "__slotSettingsRowAnchor"
		 43	[  0]	CALL 	 11	2	2	; slot11 = uv0"unknown"(slot12)
		 44	[  0]	ISF  	   		11	; if not uv0"unknown"
		 45	[  0]	JMP  	 12		13	; 	goto 59
		 46	[  0]	MOV  	 12		11	; slot12 = uv0"unknown"
		 47	[  0]	MOV  	 14		7	; slot14 = slot7
		 48	[  0]	TGETS	 15	0	13	; slot15 = slot0.cx
		 49	[  0]	TGETS	 16	0	12	; slot16 = slot0.cw
		 50	[  0]	MOV  	 17		8	; slot17 = slot8
		 51	[  0]	TGETS	 18	0	10	; slot18 = slot0.hasScrollbar
		 52	[  0]	TGETS	 19	0	16	; slot19 = slot0.items
		 53	[  0]	CALL 	 12	3	7	; slot12, slot13 = uv0"unknown"(slot13, slot14, <unknown table>.cx, <unknown table>.cw, slot17, <unknown table>.hasScrollbar)
		 54	[  0]	ISF  	   		12	; if not uv0"unknown"
		 55	[  0]	JMP  	 14		3	; 	goto 59
		 56	[  0]	MOV  	 14		12	; slot14 = uv0"unknown"
		 57	[  0]	MOV  	 10		13	; slot10 = slot13
		 58	[  0]	MOV  	  9		14	; slot9 = uv0"unknown"
		 59	[  0]	TDUP 	 12		9	; slot12 = copy table#k9
		 60	[  0]	TSETS	  7	12	8	; slot12.item = slot7
		 61	[  0]	TSETS	  6	12	7	; slot12.index = slot6
		 62	[  0]	TGETS	 13	0	13	; slot13 = slot0.cx
		 63	[  0]	TSETS	 13	12	6	; slot12.x = <unknown table>.cx
		 64	[  0]	TSETS	  8	12	5	; slot12.y = slot8
		 65	[  0]	TGETS	 13	0	12	; slot13 = slot0.cw
		 66	[  0]	TSETS	 13	12	4	; slot12.w = <unknown table>.cw
		 67	[  0]	TSETS	  2	12	3	; slot12.h = slot2
		 68	[  0]	TSETS	  9	12	2	; slot12.fx = uv0"unknown"
		 69	[  0]	TSETS	 10	12	1	; slot12.fy = slot10
		 70	[  0]	TSETV	 12	1	6	; slot1[slot6] = slot12
		 71	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, slot5; slot6, slot7 = ipairs(slot4, slot5)
		 72	[  0]	ITERL	  6		-47	; slot5 = slot6; if slot6 != nil goto 26
		 73	[  0]	TSETS	  1	0	0	; slot0.rows = slot1
		 74	[  0]	RET1 	  0		2	; return slot0
	831	[  0]	KSTR 	 42		142	; slot42 = "settingsRows"
	832	[  0]	TSETV	 41	32	42	; slot32[slot42] = slot41
	833	[  0]	KSTR 	 42		141	; slot42 = "targets"
	834	[  0]	FNEW 	 43		140	; N/A:0-0: 1 args, 6 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		ktable#10 = [
			[order] = 3,
			]
		
		
		ktable#12 = [
			[order] = 2,
			]
		
		
		ktable#13 = [
			[order] = 1,
			]
		
		
		ktable#18 = [
			[order] = 2,
			[default] = true,
			]
		
		
		ktable#21 = [
			[order] = 1,
			]
		
		
		ktable#29 = [
			[order] = 13,
			]
		
		
		ktable#32 = [
			[order] = 12,
			]
		
		
		ktable#35 = [
			[order] = 11,
			]
		
		
		ktable#38 = [
			[order] = 10,
			]
		
		
		ktable#42 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	KSTR 	  4		47	; slot4 = "ui"
		  4	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown"(slot3)
		  5	[  0]	ISNES	  0		46	; if slot0 ~= "menu"
		  6	[  0]	JMP  	  3		47	; 	goto 54
		  7	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		  8	[  0]	CALL 	  3	2	1	; slot3 = uv1"unknown"()
		  9	[  0]	ISF  	   		3	; if not uv1"unknown"
		 10	[  0]	JMP  	  4		190	; 	goto 201
		 11	[  0]	GGET 	  4		45	; slot4 = _env["ipairs"]
		 12	[  0]	TGETS	  6	3	44	; slot6 = uv1"unknown".buttons
		 13	[  0]	IST  	   		6	; if uv1"unknown".buttons
		 14	[  0]	JMP  	  7		1	; 	goto 16
		 15	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		 16	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		 17	[  0]	JMP  	  7		9	; 	goto 27
		 18	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
		 19	[  0]	MOV  	 11		1	; slot11 = slot1
		 20	[  0]	TGETS	 12	8	43	; slot12 = slot8.rect
		 21	[  0]	KSTR 	 13		46	; slot13 = "menu"
		 22	[  0]	MOV  	 14		7	; slot14 = slot7
		 23	[  0]	CAT  	 13	13	14	; slot13 = slot13 .. slot14
		 24	[  0]	TDUP 	 14		42	; slot14 = copy table#k42
		 25	[  0]	TSETS	  7	14	41	; slot14.order = slot7
		 26	[  0]	CALL 	  9	1	5	;  = uv2"unknown"(slot10, slot11, <unknown table>.rect, slot13)
		 27	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, slot6; slot7, slot8 = ipairs(slot5, slot6)
		 28	[  0]	ITERL	  7		-11	; slot6 = slot7; if slot7 != nil goto 18
		 29	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 30	[  0]	MOV  	  6		1	; slot6 = slot1
		 31	[  0]	TGETS	  7	3	40	; slot7 = uv1"unknown".upgradeRect
		 32	[  0]	KSTR 	  8		39	; slot8 = "upgrade"
		 33	[  0]	TDUP 	  9		38	; slot9 = copy table#k38
		 34	[  0]	CALL 	  4	1	5	;  = uv2"unknown"(slot5, slot6, uv1"unknown".upgradeRect, slot8)
		 35	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 36	[  0]	MOV  	  6		1	; slot6 = slot1
		 37	[  0]	TGETS	  7	3	37	; slot7 = uv1"unknown".collectionRect
		 38	[  0]	KSTR 	  8		36	; slot8 = "collection"
		 39	[  0]	TDUP 	  9		35	; slot9 = copy table#k35
		 40	[  0]	CALL 	  4	1	5	;  = uv2"unknown"(slot5, slot6, uv1"unknown".collectionRect, slot8)
		 41	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 42	[  0]	MOV  	  6		1	; slot6 = slot1
		 43	[  0]	TGETS	  7	3	34	; slot7 = uv1"unknown".achievementRect
		 44	[  0]	KSTR 	  8		33	; slot8 = "achievement"
		 45	[  0]	TDUP 	  9		32	; slot9 = copy table#k32
		 46	[  0]	CALL 	  4	1	5	;  = uv2"unknown"(slot5, slot6, uv1"unknown".achievementRect, slot8)
		 47	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 48	[  0]	MOV  	  6		1	; slot6 = slot1
		 49	[  0]	TGETS	  7	3	31	; slot7 = uv1"unknown".discordRect
		 50	[  0]	KSTR 	  8		30	; slot8 = "discord"
		 51	[  0]	TDUP 	  9		29	; slot9 = copy table#k29
		 52	[  0]	CALL 	  4	1	5	;  = uv2"unknown"(slot5, slot6, uv1"unknown".discordRect, slot8)
		 53	[  0]	JMP  	  3		147	; 	goto 201
		 54	[  0]	ISNES	  0		28	; if slot0 ~= "stage"
		 55	[  0]	JMP  	  3		4	; 	goto 60
		 56	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
		 57	[  0]	MOV  	  5		1	; slot5 = slot1
		 58	[  0]	CALL 	  3	1	2	;  = uv3"unknown"(slot4)
		 59	[  0]	JMP  	  3		141	; 	goto 201
		 60	[  0]	ISNES	  0		27	; if slot0 ~= "confirm"
		 61	[  0]	JMP  	  3		30	; 	goto 92
		 62	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 63	[  0]	CALL 	  3	2	1	; slot3 = uv1"unknown"()
		 64	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 65	[  0]	KSTR 	  6		26	; slot6 = "phase"
		 66	[  0]	CALL 	  4	2	2	; slot4 = uv0"unknown"(slot5)
		 67	[  0]	ISNES	  4		46	; if uv0"unknown" ~= "menu"
		 68	[  0]	JMP  	  4		5	; 	goto 74
		 69	[  0]	ISF  	   		3	; if not uv1"unknown"
		 70	[  0]	JMP  	  4		3	; 	goto 74
		 71	[  0]	TGETS	  4	3	25	; slot4 = uv1"unknown".exitConfirm
		 72	[  0]	IST  	   		4	; if uv1"unknown".exitConfirm
		 73	[  0]	JMP  	  5		3	; 	goto 77
		 74	[  0]	ISFC 	  4		2	; slot4 = slot2; if not slot2
		 75	[  0]	JMP  	  4		1	; 	goto 77
		 76	[  0]	TGETS	  4	2	24	; slot4 = slot2._restartConfirm
		 77	[  0]	ISF  	   		4	; if not <unknown table>._restartConfirm
		 78	[  0]	JMP  	  5		122	; 	goto 201
		 79	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 80	[  0]	MOV  	  7		1	; slot7 = slot1
		 81	[  0]	TGETS	  8	4	23	; slot8 = <unknown table>._restartConfirm.rectYes
		 82	[  0]	KSTR 	  9		22	; slot9 = "yes"
		 83	[  0]	TDUP 	 10		21	; slot10 = copy table#k21
		 84	[  0]	CALL 	  5	1	5	;  = uv2"unknown"(slot6, slot7, <unknown table>._restartConfirm.rectYes, slot9)
		 85	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 86	[  0]	MOV  	  7		1	; slot7 = slot1
		 87	[  0]	TGETS	  8	4	20	; slot8 = <unknown table>._restartConfirm.rectNo
		 88	[  0]	KSTR 	  9		19	; slot9 = "no"
		 89	[  0]	TDUP 	 10		18	; slot10 = copy table#k18
		 90	[  0]	CALL 	  5	1	5	;  = uv2"unknown"(slot6, slot7, <unknown table>._restartConfirm.rectNo, slot9)
		 91	[  0]	JMP  	  3		109	; 	goto 201
		 92	[  0]	ISNES	  0		17	; if slot0 ~= "pause"
		 93	[  0]	JMP  	  3		5	; 	goto 99
		 94	[  0]	UGET 	  3		4	; slot3 = uv4"unknwon"
		 95	[  0]	MOV  	  5		1	; slot5 = slot1
		 96	[  0]	KSTR 	  6		17	; slot6 = "pause"
		 97	[  0]	CALL 	  3	1	3	;  = uv4"unknown"(<unknown table>._restartConfirm, slot5)
		 98	[  0]	JMP  	  3		102	; 	goto 201
		 99	[  0]	ISNES	  0		16	; if slot0 ~= "gameover"
		100	[  0]	JMP  	  3		24	; 	goto 125
		101	[  0]	ISFC 	  3		2	; slot3 = slot2; if not slot2
		102	[  0]	JMP  	  3		1	; 	goto 104
		103	[  0]	TGETS	  3	2	15	; slot3 = slot2.gameOverButtons
		104	[  0]	ISF  	   		3	; if not <unknown table>.gameOverButtons
		105	[  0]	JMP  	  4		95	; 	goto 201
		106	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		107	[  0]	MOV  	  6		1	; slot6 = slot1
		108	[  0]	TGETS	  7	3	14	; slot7 = <unknown table>.gameOverButtons.replay
		109	[  0]	KSTR 	  8		14	; slot8 = "replay"
		110	[  0]	TDUP 	  9		13	; slot9 = copy table#k13
		111	[  0]	CALL 	  4	1	5	;  = uv2"unknown"(slot5, slot6, <unknown table>.gameOverButtons.replay, slot8)
		112	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		113	[  0]	MOV  	  6		1	; slot6 = slot1
		114	[  0]	TGETS	  7	3	39	; slot7 = <unknown table>.gameOverButtons.upgrade
		115	[  0]	KSTR 	  8		39	; slot8 = "upgrade"
		116	[  0]	TDUP 	  9		12	; slot9 = copy table#k12
		117	[  0]	CALL 	  4	1	5	;  = uv2"unknown"(slot5, slot6, <unknown table>.gameOverButtons.upgrade, slot8)
		118	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		119	[  0]	MOV  	  6		1	; slot6 = slot1
		120	[  0]	TGETS	  7	3	11	; slot7 = <unknown table>.gameOverButtons.main
		121	[  0]	KSTR 	  8		11	; slot8 = "main"
		122	[  0]	TDUP 	  9		10	; slot9 = copy table#k10
		123	[  0]	CALL 	  4	1	5	;  = uv2"unknown"(slot5, slot6, <unknown table>.gameOverButtons.main, slot8)
		124	[  0]	JMP  	  3		76	; 	goto 201
		125	[  0]	ISNES	  0		9	; if slot0 ~= "tutorial"
		126	[  0]	JMP  	  3		20	; 	goto 147
		127	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		128	[  0]	KSTR 	  5		8	; slot5 = "Tutorial"
		129	[  0]	CALL 	  3	2	2	; slot3 = uv0"unknown"(slot4)
		130	[  0]	ISF  	   		3	; if not uv0"unknown"
		131	[  0]	JMP  	  4		69	; 	goto 201
		132	[  0]	TGETS	  4	3	7	; slot4 = uv0"unknown".padTargets
		133	[  0]	ISF  	   		4	; if not uv0"unknown".padTargets
		134	[  0]	JMP  	  5		66	; 	goto 201
		135	[  0]	GGET 	  4		45	; slot4 = _env["ipairs"]
		136	[  0]	TGETS	  6	3	7	; slot6 = uv0"unknown".padTargets
		137	[  0]	MOV  	  8		2	; slot8 = slot2
		138	[  0]	CALL 	  6	0	2	; MULTRES = uv0"unknown".padTargets(<unknown table>.gameOverButtons.main)
		139	[  0]	CALLM	  4	4	0	; slot4, slot5, slot6 = ipairs(, ...MULTRES)
		140	[  0]	JMP  	  7		3	; 	goto 144
		141	[  0]	LEN  	  9		1	; slot9 = #slot1
		142	[  0]	ADDVN	  9	9	0	; slot9 = slot9 + 1
		143	[  0]	TSETV	  8	1	9	; slot1[slot9] = slot8
		144	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, uv0"unknown".padTargets; slot7, slot8 = ipairs(slot5, uv0"unknown".padTargets)
		145	[  0]	ITERL	  7		-5	; uv0"unknown".padTargets = <unknown table>.gameOverButtons.main; if <unknown table>.gameOverButtons.main != nil goto 141
		146	[  0]	JMP  	  3		54	; 	goto 201
		147	[  0]	ISEQS	  0		6	; if slot0 == "modal"
		148	[  0]	JMP  	  3		2	; 	goto 151
		149	[  0]	ISNES	  0		5	; if slot0 ~= "core"
		150	[  0]	JMP  	  3		13	; 	goto 164
		151	[  0]	UGET 	  3		4	; slot3 = uv4"unknwon"
		152	[  0]	MOV  	  5		1	; slot5 = slot1
		153	[  0]	KSTR 	  6		6	; slot6 = "modal"
		154	[  0]	CALL 	  3	1	3	;  = uv4"unknown"(ipairs, slot5)
		155	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		156	[  0]	KSTR 	  5		4	; slot5 = "__slotPadModalTargets"
		157	[  0]	CALL 	  3	2	2	; slot3 = uv0"unknown"(ipairs)
		158	[  0]	ISF  	   		3	; if not uv0"unknown"
		159	[  0]	JMP  	  4		41	; 	goto 201
		160	[  0]	MOV  	  4		3	; slot4 = uv0"unknown"
		161	[  0]	MOV  	  6		1	; slot6 = slot1
		162	[  0]	CALL 	  4	1	2	;  = uv0"unknown"(slot5)
		163	[  0]	JMP  	  3		37	; 	goto 201
		164	[  0]	ISNES	  0		39	; if slot0 ~= "upgrade"
		165	[  0]	JMP  	  3		21	; 	goto 187
		166	[  0]	UGET 	  3		5	; slot3 = uv5"unknwon"
		167	[  0]	CALL 	  3	2	1	; slot3 = uv5"unknown"()
		168	[  0]	ISF  	   		3	; if not uv5"unknown"
		169	[  0]	JMP  	  4		31	; 	goto 201
		170	[  0]	TGETS	  4	3	3	; slot4 = uv5"unknown".getPadTargets
		171	[  0]	ISF  	   		4	; if not uv5"unknown".getPadTargets
		172	[  0]	JMP  	  5		28	; 	goto 201
		173	[  0]	GGET 	  4		45	; slot4 = _env["ipairs"]
		174	[  0]	TGETS	  6	3	3	; slot6 = uv5"unknown".getPadTargets
		175	[  0]	CALL 	  6	2	1	; slot6 = uv5"unknown".getPadTargets()
		176	[  0]	IST  	   		6	; if uv5"unknown".getPadTargets
		177	[  0]	JMP  	  7		1	; 	goto 179
		178	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		179	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		180	[  0]	JMP  	  7		3	; 	goto 184
		181	[  0]	LEN  	  9		1	; slot9 = #slot1
		182	[  0]	ADDVN	  9	9	0	; slot9 = slot9 + 1
		183	[  0]	TSETV	  8	1	9	; slot1[slot9] = slot8
		184	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, slot6; slot7, slot8 = ipairs(slot5, slot6)
		185	[  0]	ITERL	  7		-5	; slot6 = <unknown table>.gameOverButtons.main; if <unknown table>.gameOverButtons.main != nil goto 181
		186	[  0]	JMP  	  3		14	; 	goto 201
		187	[  0]	ISNES	  0		2	; if slot0 ~= "game"
		188	[  0]	JMP  	  3		12	; 	goto 201
		189	[  0]	UGET 	  3		4	; slot3 = uv4"unknwon"
		190	[  0]	MOV  	  5		1	; slot5 = slot1
		191	[  0]	KSTR 	  6		1	; slot6 = "hud"
		192	[  0]	CALL 	  3	1	3	;  = uv4"unknown"(ipairs, slot5)
		193	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		194	[  0]	KSTR 	  5		0	; slot5 = "__slotPadGameTargets"
		195	[  0]	CALL 	  3	2	2	; slot3 = uv0"unknown"(ipairs)
		196	[  0]	ISF  	   		3	; if not uv0"unknown"
		197	[  0]	JMP  	  4		3	; 	goto 201
		198	[  0]	MOV  	  4		3	; slot4 = uv0"unknown"
		199	[  0]	MOV  	  6		1	; slot6 = slot1
		200	[  0]	CALL 	  4	1	2	;  = uv0"unknown"(slot5)
		201	[  0]	RET1 	  1		2	; return slot1
	835	[  0]	TSETV	 43	32	42	; slot32[slot42] = slot43
	836	[  0]	FNEW 	 42		139	; N/A:0-0: 1 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	1	; slot1 = slot0.fx
		  2	[  0]	ISF  	   		1	; if not <unknown table>.fx
		  3	[  0]	JMP  	  2		6	; 	goto 10
		  4	[  0]	TGETS	  1	0	0	; slot1 = slot0.fy
		  5	[  0]	ISF  	   		1	; if not <unknown table>.fy
		  6	[  0]	JMP  	  2		3	; 	goto 10
		  7	[  0]	TGETS	  1	0	1	; slot1 = slot0.fx
		  8	[  0]	TGETS	  2	0	0	; slot2 = slot0.fy
		  9	[  0]	RET  	  1		3	; return <unknown table>.fx, <unknown table>.fy
		 10	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 11	[  0]	MOV  	  3		0	; slot3 = slot0
		 12	[  0]	CALLT	  1		2	; return uv0"unknown"(<unknown table>.fy)
	837	[  0]	KSTR 	 43		138	; slot43 = "pick"
	838	[  0]	FNEW 	 44		137	; N/A:0-0: 6 args, 2 upvalues, 29 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KPRI 	  6		0	; slot6 = nil
		  2	[  0]	GGET 	  7		13	; slot7 = _env["math"]
		  3	[  0]	TGETS	  7	7	12	; slot7 = math.huge
		  4	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		  5	[  0]	KSTR 	 10		11	; slot10 = "ui"
		  6	[  0]	CALL 	  8	2	2	; slot8 = uv0"unknown"(slot9)
		  7	[  0]	ISF  	   		8	; if not uv0"unknown"
		  8	[  0]	JMP  	  9		7	; 	goto 16
		  9	[  0]	TGETS	  9	8	10	; slot9 = uv0"unknown".virtual
		 10	[  0]	ISF  	   		9	; if not uv0"unknown".virtual
		 11	[  0]	JMP  	 10		4	; 	goto 16
		 12	[  0]	TGETS	  9	8	10	; slot9 = uv0"unknown".virtual
		 13	[  0]	TGETS	  9	9	9	; slot9 = uv0"unknown".virtual.W
		 14	[  0]	IST  	   		9	; if uv0"unknown".virtual.W
		 15	[  0]	JMP  	 10		1	; 	goto 17
		 16	[  0]	KSHORT	  9		640	; slot9 = 640
		 17	[  0]	ISF  	   		8	; if not uv0"unknown"
		 18	[  0]	JMP  	 10		7	; 	goto 26
		 19	[  0]	TGETS	 10	8	10	; slot10 = uv0"unknown".virtual
		 20	[  0]	ISF  	   		10	; if not uv0"unknown".virtual
		 21	[  0]	JMP  	 11		4	; 	goto 26
		 22	[  0]	TGETS	 10	8	10	; slot10 = uv0"unknown".virtual
		 23	[  0]	TGETS	 10	10	8	; slot10 = uv0"unknown".virtual.H
		 24	[  0]	IST  	   		10	; if uv0"unknown".virtual.H
		 25	[  0]	JMP  	 11		1	; 	goto 27
		 26	[  0]	KSHORT	 10		360	; slot10 = 360
		 27	[  0]	GGET 	 11		7	; slot11 = _env["ipairs"]
		 28	[  0]	MOV  	 13		0	; slot13 = slot0
		 29	[  0]	CALL 	 11	4	2	; slot11, slot12, slot13 = ipairs(slot12)
		 30	[  0]	JMP  	 14		103	; 	goto 134
		 31	[  0]	UGET 	 16		1	; slot16 = uv1"unknwon"
		 32	[  0]	MOV  	 18		15	; slot18 = slot15
		 33	[  0]	CALL 	 16	3	2	; slot16, slot17 = uv1"unknown"(slot17)
		 34	[  0]	ISEQV	 15		5	; if slot15 == slot5
		 35	[  0]	JMP  	 18		98	; 	goto 134
		 36	[  0]	KSHORT	 18		0	; slot18 = 0
		 37	[  0]	ISGT 	 18		16	; if slot18 > uv1"unknown"
		 38	[  0]	JMP  	 18		95	; 	goto 134
		 39	[  0]	KSHORT	 18		0	; slot18 = 0
		 40	[  0]	ISGT 	 18		17	; if slot18 > slot17
		 41	[  0]	JMP  	 18		92	; 	goto 134
		 42	[  0]	ISGE 	 16		9	; if uv1"unknown" >= slot9
		 43	[  0]	JMP  	 18		90	; 	goto 134
		 44	[  0]	ISGE 	 17		10	; if slot17 >= slot10
		 45	[  0]	JMP  	 18		88	; 	goto 134
		 46	[  0]	GGET 	 18		13	; slot18 = _env["math"]
		 47	[  0]	TGETS	 18	18	6	; slot18 = math.max
		 48	[  0]	TGETS	 20	15	5	; slot20 = slot15.x
		 49	[  0]	GGET 	 21		13	; slot21 = _env["math"]
		 50	[  0]	TGETS	 21	21	4	; slot21 = math.min
		 51	[  0]	MOV  	 23		1	; slot23 = slot1
		 52	[  0]	TGETS	 24	15	5	; slot24 = slot15.x
		 53	[  0]	TGETS	 25	15	3	; slot25 = slot15.w
		 54	[  0]	ADDVV	 24	24	25	; slot24 = <unknown table>.x + <unknown table>.w
		 55	[  0]	CALL 	 21	0	3	; MULTRES = math.min(slot22, slot23)
		 56	[  0]	CALLM	 18	2	1	; slot18 = math.max(slot19, ...MULTRES)
		 57	[  0]	GGET 	 19		13	; slot19 = _env["math"]
		 58	[  0]	TGETS	 19	19	6	; slot19 = math.max
		 59	[  0]	TGETS	 21	15	2	; slot21 = slot15.y
		 60	[  0]	GGET 	 22		13	; slot22 = _env["math"]
		 61	[  0]	TGETS	 22	22	4	; slot22 = math.min
		 62	[  0]	MOV  	 24		2	; slot24 = slot2
		 63	[  0]	TGETS	 25	15	2	; slot25 = slot15.y
		 64	[  0]	TGETS	 26	15	1	; slot26 = slot15.h
		 65	[  0]	ADDVV	 25	25	26	; slot25 = <unknown table>.y + <unknown table>.h
		 66	[  0]	CALL 	 22	0	3	; MULTRES = math.min(slot23, slot24)
		 67	[  0]	CALLM	 19	2	1	; slot19 = math.max(<unknown table>.x, ...MULTRES)
		 68	[  0]	SUBVV	 20	16	1	; slot20 = uv1"unknown" - slot1
		 69	[  0]	SUBVV	 21	17	2	; slot21 = slot17 - slot2
		 70	[  0]	MULVV	 22	20	3	; slot22 = slot20 * slot3
		 71	[  0]	MULVV	 23	21	4	; slot23 = slot21 * slot4
		 72	[  0]	ADDVV	 22	22	23	; slot22 = slot22 + slot23
		 73	[  0]	KSHORT	 23		3	; slot23 = 3
		 74	[  0]	ISGE 	 23		22	; if slot23 >= slot22
		 75	[  0]	JMP  	 23		58	; 	goto 134
		 76	[  0]	SUBVV	 23	18	1	; slot23 = math.max - slot1
		 77	[  0]	MULVV	 23	23	3	; slot23 = slot23 * slot3
		 78	[  0]	SUBVV	 24	19	2	; slot24 = math.max - slot2
		 79	[  0]	MULVV	 24	24	4	; slot24 = slot24 * slot4
		 80	[  0]	ADDVV	 23	23	24	; slot23 = slot23 + slot24
		 81	[  0]	GGET 	 24		13	; slot24 = _env["math"]
		 82	[  0]	TGETS	 24	24	6	; slot24 = math.max
		 83	[  0]	MOV  	 26		23	; slot26 = slot23
		 84	[  0]	MULVN	 27	22	0	; slot27 = slot22 * 0.35
		 85	[  0]	CALL 	 24	2	3	; slot24 = math.max(slot25, slot26)
		 86	[  0]	GGET 	 25		13	; slot25 = _env["math"]
		 87	[  0]	TGETS	 25	25	0	; slot25 = math.abs
		 88	[  0]	MULVV	 27	20	4	; slot27 = slot20 * slot4
		 89	[  0]	MULVV	 28	21	3	; slot28 = slot21 * slot3
		 90	[  0]	SUBVV	 27	27	28	; slot27 = slot27 - slot28
		 91	[  0]	CALL 	 25	2	2	; slot25 = math.abs(slot26)
		 92	[  0]	KPRI 	 26		0	; slot26 = nil
		 93	[  0]	ISEQN	  3		1	; if slot3 == 0
		 94	[  0]	JMP  	 27		12	; 	goto 107
		 95	[  0]	TGETS	 27	15	2	; slot27 = slot15.y
		 96	[  0]	ISGT 	 27		2	; if <unknown table>.y > slot2
		 97	[  0]	JMP  	 27		5	; 	goto 103
		 98	[  0]	TGETS	 27	15	2	; slot27 = slot15.y
		 99	[  0]	TGETS	 28	15	1	; slot28 = slot15.h
		100	[  0]	ADDVV	 27	27	28	; slot27 = <unknown table>.y + <unknown table>.h
		101	[  0]	ISLE 	  2		27	; if slot2 <= slot27
		102	[  0]	JMP  	 27		2	; 	goto 105
		103	[  0]	KPRI 	 26		1	; slot26 = false
		104	[  0]	JMP  	 27		1	; 	goto 106
		105	[  0]	KPRI 	 26		2	; slot26 = true
		106	[  0]	JMP  	 27		11	; 	goto 118
		107	[  0]	TGETS	 27	15	5	; slot27 = slot15.x
		108	[  0]	ISGT 	 27		1	; if <unknown table>.x > slot1
		109	[  0]	JMP  	 27		5	; 	goto 115
		110	[  0]	TGETS	 27	15	5	; slot27 = slot15.x
		111	[  0]	TGETS	 28	15	3	; slot28 = slot15.w
		112	[  0]	ADDVV	 27	27	28	; slot27 = <unknown table>.x + <unknown table>.w
		113	[  0]	ISLE 	  1		27	; if slot1 <= slot27
		114	[  0]	JMP  	 27		2	; 	goto 117
		115	[  0]	KPRI 	 26		1	; slot26 = false
		116	[  0]	JMP  	 27		1	; 	goto 118
		117	[  0]	KPRI 	 26		2	; slot26 = true
		118	[  0]	ISF  	   		26	; if not slot26
		119	[  0]	JMP  	 27		2	; 	goto 122
		120	[  0]	KNUM 	 27		2	; slot27 = 0.6
		121	[  0]	JMP  	 28		1	; 	goto 123
		122	[  0]	KSHORT	 27		2	; slot27 = 2
		123	[  0]	MULVV	 27	25	27	; slot27 = math.abs * slot27
		124	[  0]	ADDVV	 27	24	27	; slot27 = math.max + slot27
		125	[  0]	MULVN	 28	22	3	; slot28 = slot22 * 3
		126	[  0]	ISGE 	 28		25	; if slot28 >= math.abs
		127	[  0]	JMP  	 28		1	; 	goto 129
		128	[  0]	ADDVN	 27	27	4	; slot27 = slot27 + 1000
		129	[  0]	ISGE 	 27		7	; if slot27 >= math.huge
		130	[  0]	JMP  	 28		3	; 	goto 134
		131	[  0]	MOV  	 28		15	; slot28 = slot15
		132	[  0]	MOV  	  7		27	; slot7 = slot27
		133	[  0]	MOV  	  6		28	; slot6 = slot28
		134	[  0]	ITERC	 14	3	3	; slot14, slot15, slot16 = ipairs, slot12, slot13; slot14, slot15 = ipairs(slot12, slot13)
		135	[  0]	ITERL	 14		-105	; slot13 = slot14; if slot14 != nil goto 31
		136	[  0]	RET1 	  6		2	; return slot6
	839	[  0]	TSETV	 44	32	43	; slot32[slot43] = slot44
	840	[  0]	KSTR 	 43		136	; slot43 = "at"
	841	[  0]	FNEW 	 44		135	; N/A:0-0: 3 args, 1 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	LEN  	  3		0	; slot3 = #slot0
		  2	[  0]	KSHORT	  4		1	; slot4 = 1
		  3	[  0]	KSHORT	  5		65535	; slot5 = 65535
		  4	[  0]	FORI 	  3		10	; for slot6 = slot3,slot4,slot5 else goto 15
		  5	[  0]	TGETV	  7	0	6	; slot7 = slot0[slot6]
		  6	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		  7	[  0]	MOV  	 10		7	; slot10 = slot7
		  8	[  0]	MOV  	 11		1	; slot11 = slot1
		  9	[  0]	MOV  	 12		2	; slot12 = slot2
		 10	[  0]	CALL 	  8	2	4	; slot8 = uv0"unknown"(slot9, slot10, slot11)
		 11	[  0]	ISF  	   		8	; if not uv0"unknown"
		 12	[  0]	JMP  	  9		1	; 	goto 14
		 13	[  0]	RET1 	  7		2	; return slot7
		 14	[  0]	FORL 	  3		-10	; slot6 = slot6 + slot5; if cmp(slot6, sign slot5,  slot4) goto 5
		 15	[  0]	KPRI 	  3		0	; slot3 = nil
		 16	[  0]	RET1 	  3		2	; return slot3
	842	[  0]	TSETV	 44	32	43	; slot32[slot43] = slot44
	843	[  0]	FNEW 	 43		134	; N/A:0-0: 1 args, 0 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KPRI 	  1		0	; slot1 = nil
		  2	[  0]	GGET 	  2		2	; slot2 = _env["ipairs"]
		  3	[  0]	MOV  	  4		0	; slot4 = slot0
		  4	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
		  5	[  0]	JMP  	  5		17	; 	goto 23
		  6	[  0]	TGETS	  7	6	1	; slot7 = slot6.default
		  7	[  0]	ISF  	   		7	; if not <unknown table>.default
		  8	[  0]	JMP  	  8		1	; 	goto 10
		  9	[  0]	RET1 	  6		2	; return slot6
		 10	[  0]	ISF  	   		1	; if not slot1
		 11	[  0]	JMP  	  7		10	; 	goto 22
		 12	[  0]	TGETS	  7	6	0	; slot7 = slot6.order
		 13	[  0]	IST  	   		7	; if <unknown table>.order
		 14	[  0]	JMP  	  8		1	; 	goto 16
		 15	[  0]	KSHORT	  7		99	; slot7 = 99
		 16	[  0]	TGETS	  8	1	0	; slot8 = slot1.order
		 17	[  0]	IST  	   		8	; if <unknown table>.order
		 18	[  0]	JMP  	  9		1	; 	goto 20
		 19	[  0]	KSHORT	  8		99	; slot8 = 99
		 20	[  0]	ISGE 	  7		8	; if slot7 >= slot8
		 21	[  0]	JMP  	  7		1	; 	goto 23
		 22	[  0]	MOV  	  1		6	; slot1 = slot6
		 23	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5, slot6 = slot2(slot3, slot4)
		 24	[  0]	ITERL	  5		-19	; slot4 = slot5; if slot5 != nil goto 6
		 25	[  0]	RET1 	  1		2	; return slot1
	844	[  0]	KSTR 	 44		133	; slot44 = "defaultTarget"
	845	[  0]	TSETV	 43	32	44	; slot32[slot44] = slot43
	846	[  0]	FNEW 	 44		132	; N/A:0-0: 1 args, 3 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	5	; slot1 = uv0"unknown".mode
		  3	[  0]	ISEQS	  1		4	; if uv0"unknown".mode == "pad"
		  4	[  0]	JMP  	  1		1	; 	goto 6
		  5	[  0]	RET0 	  0		1	; return
		  6	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  7	[  0]	KPRI 	  2		2	; slot2 = true
		  8	[  0]	TSETS	  2	1	3	; uv1"unknown".parked = slot2
		  9	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 10	[  0]	GGET 	  2		1	; slot2 = _env["math"]
		 11	[  0]	TGETS	  2	2	0	; slot2 = math.max
		 12	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 13	[  0]	TGETS	  4	4	2	; slot4 = uv1"unknown".parkHoldUntil
		 14	[  0]	IST  	   		4	; if uv1"unknown".parkHoldUntil
		 15	[  0]	JMP  	  5		1	; 	goto 17
		 16	[  0]	KSHORT	  4		0	; slot4 = 0
		 17	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 18	[  0]	CALL 	  5	2	1	; slot5 = uv2"unknown"()
		 19	[  0]	ISTC 	  6		0	; slot6 = slot0; if slot0
		 20	[  0]	JMP  	  6		1	; 	goto 22
		 21	[  0]	KNUM 	  6		0	; slot6 = 1.2
		 22	[  0]	ADDVV	  5	5	6	; slot5 = uv2"unknown" + slot6
		 23	[  0]	CALL 	  2	2	3	; slot2 = math.max(slot3, slot4)
		 24	[  0]	TSETS	  2	1	2	; uv1"unknown".parkHoldUntil = slot2
		 25	[  0]	RET0 	  0		1	; return
	847	[  0]	TNEW 	 45		0	; slot45 = new table( array: 0, dict: 1)
	848	[  0]	KSHORT	 46		65520	; slot46 = 65520
	849	[  0]	KSHORT	 47		16	; slot47 = 16
	850	[  0]	KSHORT	 48		2	; slot48 = 2
	851	[  0]	FORI 	 46		16	; for slot49 = slot46,slot47,slot48 else goto 868
	852	[  0]	KSHORT	 50		65522	; slot50 = 65522
	853	[  0]	KSHORT	 51		14	; slot51 = 14
	854	[  0]	KSHORT	 52		2	; slot52 = 2
	855	[  0]	FORI 	 50		11	; for slot53 = slot50,slot51,slot52 else goto 867
	856	[  0]	LEN  	 54		45	; slot54 = #slot45
	857	[  0]	ADDVN	 54	54	1	; slot54 = slot54 + 1
	858	[  0]	TNEW 	 55		4	; slot55 = new table( array: 4, dict: 1)
	859	[  0]	TSETB	 53	55	1	; slot55[1] = slot53
	860	[  0]	TSETB	 49	55	2	; slot55[2] = slot49
	861	[  0]	MULVV	 56	53	53	; slot56 = slot53 * slot53
	862	[  0]	MULVV	 57	49	49	; slot57 = slot49 * slot49
	863	[  0]	ADDVV	 56	56	57	; slot56 = slot56 + slot57
	864	[  0]	TSETB	 56	55	3	; slot55[3] = slot56
	865	[  0]	TSETV	 55	45	54	; slot45[slot54] = slot55
	866	[  0]	FORL 	 50		-11	; slot53 = slot53 + slot52; if cmp(slot53, sign slot52,  slot51) goto 856
	867	[  0]	FORL 	 46		-16	; slot49 = slot49 + slot48; if cmp(slot49, sign slot48,  slot47) goto 852
	868	[  0]	GGET 	 46		131	; slot46 = _env["table"]
	869	[  0]	KSTR 	 47		130	; slot47 = "sort"
	870	[  0]	TGETV	 46	46	47	; slot46 = table[slot47]
	871	[  0]	MOV  	 48		45	; slot48 = slot45
	872	[  0]	FNEW 	 49		129	; N/A:0-0: 2 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETB	  2	0	3	; slot2 = slot0[3]
		  2	[  0]	TGETB	  3	1	3	; slot3 = slot1[3]
		  3	[  0]	ISLT 	  2		3	; if slot2 < slot3
		  4	[  0]	JMP  	  2		2	; 	goto 7
		  5	[  0]	KPRI 	  2		1	; slot2 = false
		  6	[  0]	JMP  	  3		1	; 	goto 8
		  7	[  0]	KPRI 	  2		2	; slot2 = true
		  8	[  0]	RET1 	  2		2	; return slot2
	873	[  0]	CALL 	 46	1	3	;  = slot46(slot47, slot48)
	874	[  0]	FNEW 	 46		128	; N/A:0-0: 3 args, 1 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  2	[  0]	KSTR 	  5		3	; slot5 = "tooltip"
		  3	[  0]	CALL 	  3	2	2	; slot3 = uv0"unknown"(slot4)
		  4	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  5	[  0]	KSTR 	  6		2	; slot6 = "battlefield"
		  6	[  0]	CALL 	  4	2	2	; slot4 = uv0"unknown"(slot5)
		  7	[  0]	ISF  	   		3	; if not uv0"unknown"
		  8	[  0]	JMP  	  5		5	; 	goto 14
		  9	[  0]	TGETS	  5	3	1	; slot5 = uv0"unknown".probeUnit
		 10	[  0]	ISF  	   		5	; if not uv0"unknown".probeUnit
		 11	[  0]	JMP  	  6		2	; 	goto 14
		 12	[  0]	IST  	   		4	; if uv0"unknown"
		 13	[  0]	JMP  	  5		2	; 	goto 16
		 14	[  0]	KPRI 	  5		0	; slot5 = nil
		 15	[  0]	RET1 	  5		2	; return slot5
		 16	[  0]	MOV  	  7		3	; slot7 = uv0"unknown"
		 17	[  0]	TGETS	  5	3	1	; slot5 = uv0"unknown".probeUnit
		 18	[  0]	MOV  	  8		4	; slot8 = uv0"unknown"
		 19	[  0]	MOV  	  9		1	; slot9 = slot1
		 20	[  0]	MOV  	 10		2	; slot10 = slot2
		 21	[  0]	CALL 	  5	2	5	; slot5 = uv0"unknown".probeUnit(slot6, uv0"unknown", uv0"unknown", slot9)
		 22	[  0]	ISEQP	  5		0	; if slot5 == nil
		 23	[  0]	JMP  	  6		3	; 	goto 27
		 24	[  0]	TGETS	  6	5	0	; slot6 = slot5.ref
		 25	[  0]	ISEQV	  6		0	; if <unknown table>.ref == slot0
		 26	[  0]	JMP  	  6		2	; 	goto 29
		 27	[  0]	KPRI 	  6		1	; slot6 = false
		 28	[  0]	JMP  	  7		1	; 	goto 30
		 29	[  0]	KPRI 	  6		2	; slot6 = true
		 30	[  0]	RET1 	  6		2	; return slot6
	875	[  0]	FNEW 	 47		127	; N/A:0-0: 1 args, 3 upvalues, 17 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	3	2	; slot1, slot2 = uv0"unknown"(slot2)
		  4	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		  5	[  0]	TGETS	  5	0	1	; slot5 = slot0.id
		  6	[  0]	MOV  	  6		1	; slot6 = slot1
		  7	[  0]	MOV  	  7		2	; slot7 = slot2
		  8	[  0]	CALL 	  3	2	4	; slot3 = uv1"unknown"(slot4, <unknown table>.id, slot6)
		  9	[  0]	ISNEP	  3		0	; if slot3 ~= nil
		 10	[  0]	JMP  	  3		3	; 	goto 14
		 11	[  0]	MOV  	  3		1	; slot3 = slot1
		 12	[  0]	MOV  	  4		2	; slot4 = slot2
		 13	[  0]	RET  	  3		3	; return slot3, slot4
		 14	[  0]	TGETS	  3	0	1	; slot3 = slot0.id
		 15	[  0]	KPRI 	  4		0	; slot4 = nil
		 16	[  0]	GGET 	  5		0	; slot5 = _env["ipairs"]
		 17	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		 18	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		 19	[  0]	JMP  	  8		48	; 	goto 68
		 20	[  0]	TGETB	 10	9	1	; slot10 = slot9[1]
		 21	[  0]	ADDVV	 10	1	10	; slot10 = slot1 + slot10
		 22	[  0]	TGETB	 11	9	2	; slot11 = slot9[2]
		 23	[  0]	ADDVV	 11	2	11	; slot11 = slot2 + slot11
		 24	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		 25	[  0]	MOV  	 14		3	; slot14 = <unknown table>.id
		 26	[  0]	MOV  	 15		10	; slot15 = slot10
		 27	[  0]	MOV  	 16		11	; slot16 = slot11
		 28	[  0]	CALL 	 12	2	4	; slot12 = uv1"unknown"(slot13, <unknown table>.id, slot15)
		 29	[  0]	ISF  	   		12	; if not uv1"unknown"
		 30	[  0]	JMP  	 13		37	; 	goto 68
		 31	[  0]	IST  	   		4	; if slot4
		 32	[  0]	JMP  	 12		4	; 	goto 37
		 33	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		 34	[  0]	TSETB	 10	12	1	; slot12[1] = slot10
		 35	[  0]	TSETB	 11	12	2	; slot12[2] = slot11
		 36	[  0]	MOV  	  4		12	; slot4 = slot12
		 37	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		 38	[  0]	MOV  	 14		3	; slot14 = <unknown table>.id
		 39	[  0]	SUBVN	 15	10	0	; slot15 = slot10 - 3
		 40	[  0]	MOV  	 16		11	; slot16 = slot11
		 41	[  0]	CALL 	 12	2	4	; slot12 = uv1"unknown"(slot13, <unknown table>.id, slot15)
		 42	[  0]	ISF  	   		12	; if not uv1"unknown"
		 43	[  0]	JMP  	 13		24	; 	goto 68
		 44	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		 45	[  0]	MOV  	 14		3	; slot14 = <unknown table>.id
		 46	[  0]	ADDVN	 15	10	0	; slot15 = slot10 + 3
		 47	[  0]	MOV  	 16		11	; slot16 = slot11
		 48	[  0]	CALL 	 12	2	4	; slot12 = uv1"unknown"(slot13, <unknown table>.id, slot15)
		 49	[  0]	ISF  	   		12	; if not uv1"unknown"
		 50	[  0]	JMP  	 13		17	; 	goto 68
		 51	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		 52	[  0]	MOV  	 14		3	; slot14 = <unknown table>.id
		 53	[  0]	MOV  	 15		10	; slot15 = slot10
		 54	[  0]	SUBVN	 16	11	0	; slot16 = slot11 - 3
		 55	[  0]	CALL 	 12	2	4	; slot12 = uv1"unknown"(slot13, <unknown table>.id, slot15)
		 56	[  0]	ISF  	   		12	; if not uv1"unknown"
		 57	[  0]	JMP  	 13		10	; 	goto 68
		 58	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		 59	[  0]	MOV  	 14		3	; slot14 = <unknown table>.id
		 60	[  0]	MOV  	 15		10	; slot15 = slot10
		 61	[  0]	ADDVN	 16	11	0	; slot16 = slot11 + 3
		 62	[  0]	CALL 	 12	2	4	; slot12 = uv1"unknown"(slot13, <unknown table>.id, slot15)
		 63	[  0]	ISF  	   		12	; if not uv1"unknown"
		 64	[  0]	JMP  	 13		3	; 	goto 68
		 65	[  0]	MOV  	 12		10	; slot12 = slot10
		 66	[  0]	MOV  	 13		11	; slot13 = slot11
		 67	[  0]	RET  	 12		3	; return slot12, slot13
		 68	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, uv2"unknown"; slot8, slot9 = ipairs(slot6, uv2"unknown")
		 69	[  0]	ITERL	  8		-50	; uv2"unknown" = slot8; if slot8 != nil goto 20
		 70	[  0]	ISF  	   		4	; if not slot4
		 71	[  0]	JMP  	  5		3	; 	goto 75
		 72	[  0]	TGETB	  5	4	1	; slot5 = slot4[1]
		 73	[  0]	TGETB	  6	4	2	; slot6 = slot4[2]
		 74	[  0]	RET  	  5		3	; return slot5, slot6
		 75	[  0]	MOV  	  5		1	; slot5 = slot1
		 76	[  0]	MOV  	  6		2	; slot6 = slot2
		 77	[  0]	RET  	  5		3	; return slot5, slot6
	876	[  0]	FNEW 	 48		126	; N/A:0-0: 2 args, 4 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  2		2	; 	goto 5
		  3	[  0]	KPRI 	  2		1	; slot2 = false
		  4	[  0]	RET1 	  2		2	; return slot2
		  5	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  6	[  0]	KPRI 	  3		0	; slot3 = nil
		  7	[  0]	TSETS	  3	2	9	; uv0"unknown".parkHoldUntil = slot3
		  8	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  9	[  0]	MOV  	  4		0	; slot4 = slot0
		 10	[  0]	CALL 	  2	3	2	; slot2, slot3 = uv1"unknown"(slot3)
		 11	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 12	[  0]	KPRI 	  5		0	; slot5 = nil
		 13	[  0]	TSETS	  5	4	8	; uv0"unknown".focusUnit = slot5
		 14	[  0]	TGETS	  4	0	7	; slot4 = slot0.group
		 15	[  0]	ISNES	  4		6	; if <unknown table>.group ~= "unit"
		 16	[  0]	JMP  	  4		18	; 	goto 35
		 17	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 18	[  0]	MOV  	  6		0	; slot6 = slot0
		 19	[  0]	CALL 	  4	3	2	; slot4, slot5 = uv2"unknown"(slot5)
		 20	[  0]	MOV  	  3		5	; slot3 = slot5
		 21	[  0]	MOV  	  2		4	; slot2 = uv2"unknown"
		 22	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 23	[  0]	MOV  	  6		0	; slot6 = slot0
		 24	[  0]	CALL 	  4	3	2	; slot4, slot5 = uv1"unknown"(slot5)
		 25	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 26	[  0]	TGETS	  7	0	5	; slot7 = slot0.id
		 27	[  0]	TSETS	  7	6	8	; uv0"unknown".focusUnit = <unknown table>.id
		 28	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 29	[  0]	TNEW 	  7		3	; slot7 = new table( array: 3, dict: 1)
		 30	[  0]	SUBVV	  8	2	4	; slot8 = uv2"unknown" - uv1"unknown"
		 31	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
		 32	[  0]	SUBVV	  8	3	5	; slot8 = slot3 - slot5
		 33	[  0]	TSETB	  8	7	2	; slot7[2] = slot8
		 34	[  0]	TSETS	  7	6	4	; uv0"unknown".focusUnitOffset = slot7
		 35	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 36	[  0]	TNEW 	  5		3	; slot5 = new table( array: 3, dict: 1)
		 37	[  0]	TSETB	  2	5	1	; slot5[1] = uv2"unknown"
		 38	[  0]	TSETB	  3	5	2	; slot5[2] = slot3
		 39	[  0]	TSETS	  5	4	3	; uv0"unknown".focusAnchor = slot5
		 40	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 41	[  0]	TGETS	  4	4	2	; slot4 = uv3"unknown".set
		 42	[  0]	MOV  	  6		2	; slot6 = uv2"unknown"
		 43	[  0]	MOV  	  7		3	; slot7 = slot3
		 44	[  0]	CALL 	  4	1	3	;  = uv3"unknown".set(slot5, uv2"unknown")
		 45	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 46	[  0]	KPRI 	  5		1	; slot5 = false
		 47	[  0]	TSETS	  5	4	1	; uv0"unknown".parked = slot5
		 48	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 49	[  0]	TGETS	  5	0	5	; slot5 = slot0.id
		 50	[  0]	TSETS	  5	4	0	; uv0"unknown".focusId = <unknown table>.id
		 51	[  0]	KPRI 	  4		2	; slot4 = true
		 52	[  0]	RET1 	  4		2	; return slot4
	877	[  0]	FNEW 	 49		125	; N/A:0-0: 1 args, 7 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	11	; slot1 = uv0"unknown".focusId
		  3	[  0]	ISF  	   		1	; if not uv0"unknown".focusId
		  4	[  0]	JMP  	  1		6	; 	goto 11
		  5	[  0]	ISEQS	  0		10	; if slot0 == "settings"
		  6	[  0]	JMP  	  1		4	; 	goto 11
		  7	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  8	[  0]	TGETV	  1	1	0	; slot1 = uv1"unknown"[slot0]
		  9	[  0]	IST  	   		1	; if slot1
		 10	[  0]	JMP  	  1		1	; 	goto 12
		 11	[  0]	RET0 	  0		1	; return
		 12	[  0]	GGET 	  1		9	; slot1 = _env["ipairs"]
		 13	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 14	[  0]	TGETS	  3	3	8	; slot3 = uv2"unknown".targets
		 15	[  0]	MOV  	  5		0	; slot5 = slot0
		 16	[  0]	CALL 	  3	0	2	; MULTRES = uv2"unknown".targets(slot4)
		 17	[  0]	CALLM	  1	4	0	; slot1, slot2, slot3 = ipairs(, ...MULTRES)
		 18	[  0]	JMP  	  4		56	; 	goto 75
		 19	[  0]	TGETS	  6	5	7	; slot6 = slot5.id
		 20	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 21	[  0]	TGETS	  7	7	11	; slot7 = uv0"unknown".focusId
		 22	[  0]	ISNEV	  6		7	; if <unknown table>.id ~= uv0"unknown".focusId
		 23	[  0]	JMP  	  6		51	; 	goto 75
		 24	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		 25	[  0]	MOV  	  8		5	; slot8 = slot5
		 26	[  0]	CALL 	  6	3	2	; slot6, slot7 = uv3"unknown"(uv0"unknown".focusId)
		 27	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 28	[  0]	TGETS	  8	8	6	; slot8 = uv0"unknown".focusAnchor
		 29	[  0]	IST  	   		8	; if uv0"unknown".focusAnchor
		 30	[  0]	JMP  	  9		6	; 	goto 37
		 31	[  0]	TNEW 	  9		3	; slot9 = new table( array: 3, dict: 1)
		 32	[  0]	TSETB	  6	9	1	; slot9[1] = uv3"unknown"
		 33	[  0]	TSETB	  7	9	2	; slot9[2] = uv0"unknown".focusId
		 34	[  0]	MOV  	  8		9	; slot8 = slot9
		 35	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 36	[  0]	TSETS	  8	9	6	; uv0"unknown".focusAnchor = slot8
		 37	[  0]	GGET 	  9		5	; slot9 = _env["math"]
		 38	[  0]	TGETS	  9	9	4	; slot9 = math.abs
		 39	[  0]	TGETB	 11	8	1	; slot11 = slot8[1]
		 40	[  0]	SUBVV	 11	6	11	; slot11 = uv3"unknown" - slot11
		 41	[  0]	CALL 	  9	2	2	; slot9 = math.abs(slot10)
		 42	[  0]	GGET 	 10		5	; slot10 = _env["math"]
		 43	[  0]	TGETS	 10	10	4	; slot10 = math.abs
		 44	[  0]	TGETB	 12	8	2	; slot12 = slot8[2]
		 45	[  0]	SUBVV	 12	7	12	; slot12 = uv0"unknown".focusId - slot12
		 46	[  0]	CALL 	 10	2	2	; slot10 = math.abs(slot11)
		 47	[  0]	ADDVV	  9	9	10	; slot9 = math.abs + math.abs
		 48	[  0]	KSHORT	 10		20	; slot10 = 20
		 49	[  0]	ISGE 	 10		9	; if slot10 >= slot9
		 50	[  0]	JMP  	  9		3	; 	goto 54
		 51	[  0]	UGET 	  9		4	; slot9 = uv4"unknwon"
		 52	[  0]	KNUM 	 11		0	; slot11 = 0.25
		 53	[  0]	CALL 	  9	1	2	;  = uv4"unknown"(slot10)
		 54	[  0]	UGET 	  9		5	; slot9 = uv5"unknwon"
		 55	[  0]	TGETS	  9	9	3	; slot9 = uv5"unknown".glideTarget
		 56	[  0]	CALL 	  9	3	1	; slot9, slot10 = uv5"unknown".glideTarget()
		 57	[  0]	GGET 	 11		5	; slot11 = _env["math"]
		 58	[  0]	TGETS	 11	11	4	; slot11 = math.abs
		 59	[  0]	SUBVV	 13	6	9	; slot13 = uv3"unknown" - uv5"unknown".glideTarget
		 60	[  0]	CALL 	 11	2	2	; slot11 = math.abs(slot12)
		 61	[  0]	GGET 	 12		5	; slot12 = _env["math"]
		 62	[  0]	TGETS	 12	12	4	; slot12 = math.abs
		 63	[  0]	SUBVV	 14	7	10	; slot14 = uv0"unknown".focusId - slot10
		 64	[  0]	CALL 	 12	2	2	; slot12 = math.abs(slot13)
		 65	[  0]	ADDVV	 11	11	12	; slot11 = math.abs + math.abs
		 66	[  0]	KNUM 	 12		1	; slot12 = 0.75
		 67	[  0]	ISGE 	 12		11	; if slot12 >= slot11
		 68	[  0]	JMP  	 11		5	; 	goto 74
		 69	[  0]	UGET 	 11		5	; slot11 = uv5"unknwon"
		 70	[  0]	TGETS	 11	11	2	; slot11 = uv5"unknown".set
		 71	[  0]	MOV  	 13		6	; slot13 = uv3"unknown"
		 72	[  0]	MOV  	 14		7	; slot14 = uv0"unknown".focusId
		 73	[  0]	CALL 	 11	1	3	;  = uv5"unknown".set(slot12, uv3"unknown")
		 74	[  0]	RET0 	  0		1	; return
		 75	[  0]	ITERC	  4	3	3	; slot4, slot5, slot6 = ipairs, slot2, uv2"unknown".targets; slot4, slot5 = ipairs(slot2, uv2"unknown".targets)
		 76	[  0]	ITERL	  4		-58	; uv2"unknown".targets = slot4; if slot4 != nil goto 19
		 77	[  0]	UGET 	  1		6	; slot1 = uv6"unknwon"
		 78	[  0]	TGETS	  1	1	1	; slot1 = uv6"unknown".mode
		 79	[  0]	ISNES	  1		0	; if uv6"unknown".mode ~= "pad"
		 80	[  0]	JMP  	  1		3	; 	goto 84
		 81	[  0]	UGET 	  1		4	; slot1 = uv4"unknwon"
		 82	[  0]	KNUM 	  3		0	; slot3 = 0.25
		 83	[  0]	CALL 	  1	1	2	;  = uv4"unknown"(slot2)
		 84	[  0]	RET0 	  0		1	; return
	878	[  0]	FNEW 	 50		124	; N/A:0-0: 1 args, 7 upvalues, 17 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			#1: 0,
			#2: 0,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	14	; slot1 = uv0"unknown".focusUnit
		  3	[  0]	IST  	   		1	; if uv0"unknown".focusUnit
		  4	[  0]	JMP  	  2		1	; 	goto 6
		  5	[  0]	RET0 	  0		1	; return
		  6	[  0]	ISNES	  0		13	; if slot0 ~= "game"
		  7	[  0]	JMP  	  2		6	; 	goto 14
		  8	[  0]	TGETS	  2	1	12	; slot2 = uv0"unknown".focusUnit.alive
		  9	[  0]	ISEQP	  2		1	; if uv0"unknown".focusUnit.alive == false
		 10	[  0]	JMP  	  2		3	; 	goto 14
		 11	[  0]	TGETS	  2	1	11	; slot2 = uv0"unknown".focusUnit.dying
		 12	[  0]	ISF  	   		2	; if not uv0"unknown".focusUnit.dying
		 13	[  0]	JMP  	  3		4	; 	goto 18
		 14	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 15	[  0]	KPRI 	  3		0	; slot3 = nil
		 16	[  0]	TSETS	  3	2	14	; uv0"unknown".focusUnit = slot3
		 17	[  0]	RET0 	  0		1	; return
		 18	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 19	[  0]	KSTR 	  4		10	; slot4 = "drag"
		 20	[  0]	CALL 	  2	2	2	; slot2 = uv1"unknown"(slot3)
		 21	[  0]	ISF  	   		2	; if not slot2
		 22	[  0]	JMP  	  3		4	; 	goto 27
		 23	[  0]	TGETS	  3	2	9	; slot3 = slot2.active
		 24	[  0]	ISF  	   		3	; if not <unknown table>.active
		 25	[  0]	JMP  	  4		1	; 	goto 27
		 26	[  0]	RET0 	  0		1	; return
		 27	[  0]	KPRI 	  3		0	; slot3 = nil
		 28	[  0]	GGET 	  4		8	; slot4 = _env["ipairs"]
		 29	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 30	[  0]	TGETS	  6	6	7	; slot6 = uv2"unknown".targets
		 31	[  0]	KSTR 	  8		13	; slot8 = "game"
		 32	[  0]	CALL 	  6	0	2	; MULTRES = uv2"unknown".targets(slot7)
		 33	[  0]	CALLM	  4	4	0	; slot4, slot5, slot6 = ipairs(, ...MULTRES)
		 34	[  0]	JMP  	  7		5	; 	goto 40
		 35	[  0]	TGETS	  9	8	6	; slot9 = slot8.id
		 36	[  0]	ISNEV	  9		1	; if <unknown table>.id ~= uv0"unknown".focusUnit
		 37	[  0]	JMP  	  9		2	; 	goto 40
		 38	[  0]	MOV  	  3		8	; slot3 = slot8
		 39	[  0]	JMP  	  4		2	; 	goto 42
		 40	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, uv2"unknown".targets; slot7, slot8 = ipairs(slot5, uv2"unknown".targets)
		 41	[  0]	ITERL	  7		-7	; uv2"unknown".targets = slot7; if slot7 != nil goto 35
		 42	[  0]	IST  	   		3	; if slot3
		 43	[  0]	JMP  	  4		4	; 	goto 48
		 44	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 45	[  0]	KPRI 	  5		0	; slot5 = nil
		 46	[  0]	TSETS	  5	4	14	; uv0"unknown".focusUnit = slot5
		 47	[  0]	RET0 	  0		1	; return
		 48	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 49	[  0]	MOV  	  6		3	; slot6 = slot3
		 50	[  0]	CALL 	  4	3	2	; slot4, slot5 = uv3"unknown"(slot5)
		 51	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 52	[  0]	TGETS	  6	6	5	; slot6 = uv0"unknown".focusUnitOffset
		 53	[  0]	IST  	   		6	; if uv0"unknown".focusUnitOffset
		 54	[  0]	JMP  	  7		1	; 	goto 56
		 55	[  0]	TDUP 	  6		4	; slot6 = copy table#k4
		 56	[  0]	TGETB	  7	6	1	; slot7 = slot6[1]
		 57	[  0]	ADDVV	  7	4	7	; slot7 = uv3"unknown" + slot7
		 58	[  0]	TGETB	  8	6	2	; slot8 = slot6[2]
		 59	[  0]	ADDVV	  8	5	8	; slot8 = slot5 + slot8
		 60	[  0]	UGET 	  9		4	; slot9 = uv4"unknwon"
		 61	[  0]	TGETS	  9	9	3	; slot9 = uv4"unknown".get
		 62	[  0]	CALL 	  9	3	1	; slot9, slot10 = uv4"unknown".get()
		 63	[  0]	GGET 	 11		2	; slot11 = _env["math"]
		 64	[  0]	TGETS	 11	11	1	; slot11 = math.abs
		 65	[  0]	SUBVV	 13	7	9	; slot13 = slot7 - uv4"unknown".get
		 66	[  0]	CALL 	 11	2	2	; slot11 = math.abs(slot12)
		 67	[  0]	GGET 	 12		2	; slot12 = _env["math"]
		 68	[  0]	TGETS	 12	12	1	; slot12 = math.abs
		 69	[  0]	SUBVV	 14	8	10	; slot14 = slot8 - slot10
		 70	[  0]	CALL 	 12	2	2	; slot12 = math.abs(slot13)
		 71	[  0]	ADDVV	 11	11	12	; slot11 = math.abs + math.abs
		 72	[  0]	KNUM 	 12		0	; slot12 = 0.5
		 73	[  0]	ISGE 	 12		11	; if slot12 >= slot11
		 74	[  0]	JMP  	 11		5	; 	goto 80
		 75	[  0]	UGET 	 11		4	; slot11 = uv4"unknwon"
		 76	[  0]	TGETS	 11	11	0	; slot11 = uv4"unknown".set
		 77	[  0]	MOV  	 13		7	; slot13 = slot7
		 78	[  0]	MOV  	 14		8	; slot14 = slot8
		 79	[  0]	CALL 	 11	1	3	;  = uv4"unknown".set(slot12, slot13)
		 80	[  0]	UGET 	 11		5	; slot11 = uv5"unknwon"
		 81	[  0]	MOV  	 13		1	; slot13 = uv0"unknown".focusUnit
		 82	[  0]	MOV  	 14		7	; slot14 = slot7
		 83	[  0]	MOV  	 15		8	; slot15 = slot8
		 84	[  0]	CALL 	 11	2	4	; slot11 = uv5"unknown"(slot12, uv0"unknown".focusUnit, slot14)
		 85	[  0]	ISNEP	 11		1	; if uv5"unknown" ~= false
		 86	[  0]	JMP  	 11		15	; 	goto 102
		 87	[  0]	UGET 	 11		6	; slot11 = uv6"unknwon"
		 88	[  0]	MOV  	 13		3	; slot13 = slot3
		 89	[  0]	CALL 	 11	3	2	; slot11, slot12 = uv6"unknown"(slot12)
		 90	[  0]	UGET 	 13		0	; slot13 = uv0"unknwon"
		 91	[  0]	TNEW 	 14		3	; slot14 = new table( array: 3, dict: 1)
		 92	[  0]	SUBVV	 15	11	4	; slot15 = uv6"unknown" - uv3"unknown"
		 93	[  0]	TSETB	 15	14	1	; slot14[1] = slot15
		 94	[  0]	SUBVV	 15	12	5	; slot15 = slot12 - slot5
		 95	[  0]	TSETB	 15	14	2	; slot14[2] = slot15
		 96	[  0]	TSETS	 14	13	5	; uv0"unknown".focusUnitOffset = slot14
		 97	[  0]	UGET 	 13		4	; slot13 = uv4"unknwon"
		 98	[  0]	TGETS	 13	13	0	; slot13 = uv4"unknown".set
		 99	[  0]	MOV  	 15		11	; slot15 = uv6"unknown"
		100	[  0]	MOV  	 16		12	; slot16 = slot12
		101	[  0]	CALL 	 13	1	3	;  = uv4"unknown".set(slot14, uv6"unknown")
		102	[  0]	RET0 	  0		1	; return
	879	[  0]	FNEW 	 51		123	; N/A:0-0: 1 args, 3 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	12	; slot1 = uv0"unknown".mode
		  3	[  0]	ISNES	  1		11	; if uv0"unknown".mode ~= "pad"
		  4	[  0]	JMP  	  1		18	; 	goto 23
		  5	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  6	[  0]	TGETS	  1	1	10	; slot1 = uv1"unknown".settingsFocus
		  7	[  0]	ISF  	   		1	; if not uv1"unknown".settingsFocus
		  8	[  0]	JMP  	  2		14	; 	goto 23
		  9	[  0]	GGET 	  1		9	; slot1 = _env["ipairs"]
		 10	[  0]	TGETS	  3	0	8	; slot3 = slot0.rows
		 11	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = ipairs(slot2)
		 12	[  0]	JMP  	  4		8	; 	goto 21
		 13	[  0]	TGETS	  6	5	7	; slot6 = slot5.item
		 14	[  0]	TGETS	  6	6	6	; slot6 = <unknown table>.item.key
		 15	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 16	[  0]	TGETS	  7	7	10	; slot7 = uv1"unknown".settingsFocus
		 17	[  0]	ISNEV	  6		7	; if <unknown table>.item.key ~= uv1"unknown".settingsFocus
		 18	[  0]	JMP  	  6		2	; 	goto 21
		 19	[  0]	TGETS	  6	5	5	; slot6 = slot5.index
		 20	[  0]	RET1 	  6		2	; return <unknown table>.index
		 21	[  0]	ITERC	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, <unknown table>.rows; slot4, slot5 = slot1(slot2, <unknown table>.rows)
		 22	[  0]	ITERL	  4		-10	; <unknown table>.rows = slot4; if slot4 != nil goto 13
		 23	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 24	[  0]	TGETS	  1	1	4	; slot1 = uv2"unknown".glideTarget
		 25	[  0]	CALL 	  1	3	1	; slot1, slot2 = uv2"unknown".glideTarget()
		 26	[  0]	GGET 	  3		9	; slot3 = _env["ipairs"]
		 27	[  0]	TGETS	  5	0	8	; slot5 = slot0.rows
		 28	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
		 29	[  0]	JMP  	  6		20	; 	goto 50
		 30	[  0]	TGETS	  8	7	3	; slot8 = uv1"unknown".settingsFocus.y
		 31	[  0]	ISGT 	  8		2	; if uv1"unknown".settingsFocus.y > slot2
		 32	[  0]	JMP  	  8		17	; 	goto 50
		 33	[  0]	TGETS	  8	7	3	; slot8 = uv1"unknown".settingsFocus.y
		 34	[  0]	TGETS	  9	7	2	; slot9 = uv1"unknown".settingsFocus.h
		 35	[  0]	ADDVV	  8	8	9	; slot8 = uv1"unknown".settingsFocus.y + uv1"unknown".settingsFocus.h
		 36	[  0]	ISGE 	  2		8	; if slot2 >= slot8
		 37	[  0]	JMP  	  8		12	; 	goto 50
		 38	[  0]	TGETS	  8	7	1	; slot8 = uv1"unknown".settingsFocus.x
		 39	[  0]	SUBVN	  8	8	0	; slot8 = uv1"unknown".settingsFocus.x - 24
		 40	[  0]	ISGT 	  8		1	; if slot8 > slot1
		 41	[  0]	JMP  	  8		8	; 	goto 50
		 42	[  0]	TGETS	  8	7	1	; slot8 = uv1"unknown".settingsFocus.x
		 43	[  0]	TGETS	  9	7	0	; slot9 = uv1"unknown".settingsFocus.w
		 44	[  0]	ADDVV	  8	8	9	; slot8 = uv1"unknown".settingsFocus.x + uv1"unknown".settingsFocus.w
		 45	[  0]	ADDVN	  8	8	0	; slot8 = slot8 + 24
		 46	[  0]	ISGT 	  1		8	; if slot1 > slot8
		 47	[  0]	JMP  	  8		2	; 	goto 50
		 48	[  0]	TGETS	  8	7	5	; slot8 = uv1"unknown".settingsFocus.index
		 49	[  0]	RET1 	  8		2	; return uv1"unknown".settingsFocus.index
		 50	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, <unknown table>.rows; slot6, slot7 = ipairs(slot4, <unknown table>.rows)
		 51	[  0]	ITERL	  6		-22	; <unknown table>.rows = <unknown table>.index; if <unknown table>.index != nil goto 30
		 52	[  0]	KPRI 	  3		0	; slot3 = nil
		 53	[  0]	RET1 	  3		2	; return slot3
	880	[  0]	FNEW 	 52		122	; N/A:0-0: 2 args, 0 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  2	0	7	; slot2 = slot0.st
		  2	[  0]	IST  	   		2	; if <unknown table>.st
		  3	[  0]	JMP  	  3		2	; 	goto 6
		  4	[  0]	KSHORT	  3		0	; slot3 = 0
		  5	[  0]	RET1 	  3		2	; return slot3
		  6	[  0]	TGETS	  3	0	6	; slot3 = slot0.rowH
		  7	[  0]	IST  	   		3	; if <unknown table>.rowH
		  8	[  0]	JMP  	  4		1	; 	goto 10
		  9	[  0]	KSHORT	  3		26	; slot3 = 26
		 10	[  0]	SUBVN	  4	1	0	; slot4 = slot1 - 1
		 11	[  0]	MULVV	  4	4	3	; slot4 = slot4 * slot3
		 12	[  0]	TGETS	  5	2	5	; slot5 = <unknown table>.st.settingsScrollY
		 13	[  0]	IST  	   		5	; if <unknown table>.st.settingsScrollY
		 14	[  0]	JMP  	  6		1	; 	goto 16
		 15	[  0]	KSHORT	  5		0	; slot5 = 0
		 16	[  0]	TGETS	  6	2	4	; slot6 = <unknown table>.st.settingsScrollMax
		 17	[  0]	IST  	   		6	; if <unknown table>.st.settingsScrollMax
		 18	[  0]	JMP  	  7		1	; 	goto 20
		 19	[  0]	KSHORT	  6		0	; slot6 = 0
		 20	[  0]	MOV  	  7		5	; slot7 = slot5
		 21	[  0]	ISGE 	  4		5	; if slot4 >= slot5
		 22	[  0]	JMP  	  8		2	; 	goto 25
		 23	[  0]	MOV  	  7		4	; slot7 = slot4
		 24	[  0]	JMP  	  8		8	; 	goto 33
		 25	[  0]	ADDVV	  8	4	3	; slot8 = slot4 + slot3
		 26	[  0]	TGETS	  9	0	3	; slot9 = slot0.ch
		 27	[  0]	ADDVV	  9	5	9	; slot9 = slot5 + <unknown table>.ch
		 28	[  0]	ISGE 	  9		8	; if slot9 >= slot8
		 29	[  0]	JMP  	  8		3	; 	goto 33
		 30	[  0]	ADDVV	  8	4	3	; slot8 = slot4 + slot3
		 31	[  0]	TGETS	  9	0	3	; slot9 = slot0.ch
		 32	[  0]	SUBVV	  7	8	9	; slot7 = slot8 - <unknown table>.ch
		 33	[  0]	GGET 	  8		2	; slot8 = _env["math"]
		 34	[  0]	TGETS	  8	8	1	; slot8 = math.max
		 35	[  0]	KSHORT	 10		0	; slot10 = 0
		 36	[  0]	GGET 	 11		2	; slot11 = _env["math"]
		 37	[  0]	TGETS	 11	11	0	; slot11 = math.min
		 38	[  0]	MOV  	 13		6	; slot13 = slot6
		 39	[  0]	MOV  	 14		7	; slot14 = slot7
		 40	[  0]	CALL 	 11	0	3	; MULTRES = math.min(slot12, slot13)
		 41	[  0]	CALLM	  8	2	1	; slot8 = math.max(<unknown table>.ch, ...MULTRES)
		 42	[  0]	MOV  	  7		8	; slot7 = math.max
		 43	[  0]	TSETS	  7	2	5	; <unknown table>.st.settingsScrollY = math.max
		 44	[  0]	SUBVV	  8	7	5	; slot8 = math.max - slot5
		 45	[  0]	RET1 	  8		2	; return slot8
	881	[  0]	FNEW 	 53		121	; N/A:0-0: 2 args, 3 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  2	0	6	; slot2 = slot0.rows
		  2	[  0]	TGETV	  2	2	1	; slot2 = <unknown table>.rows[slot1]
		  3	[  0]	IST  	   		2	; if slot2
		  4	[  0]	JMP  	  3		2	; 	goto 7
		  5	[  0]	KPRI 	  3		1	; slot3 = false
		  6	[  0]	RET1 	  3		2	; return slot3
		  7	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  8	[  0]	MOV  	  5		0	; slot5 = slot0
		  9	[  0]	MOV  	  6		1	; slot6 = slot1
		 10	[  0]	CALL 	  3	2	3	; slot3 = uv0"unknown"(slot4, slot5)
		 11	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 12	[  0]	TGETS	  5	2	4	; slot5 = slot2.item
		 13	[  0]	TGETS	  5	5	3	; slot5 = <unknown table>.item.key
		 14	[  0]	TSETS	  5	4	5	; uv1"unknown".settingsFocus = <unknown table>.item.key
		 15	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 16	[  0]	TGETS	  4	4	2	; slot4 = uv2"unknown".set
		 17	[  0]	TGETS	  6	2	1	; slot6 = slot2.fx
		 18	[  0]	TGETS	  7	2	0	; slot7 = slot2.fy
		 19	[  0]	SUBVV	  7	7	3	; slot7 = <unknown table>.fy - slot3
		 20	[  0]	CALL 	  4	1	3	;  = uv2"unknown".set(<unknown table>.item.key, <unknown table>.fx)
		 21	[  0]	KPRI 	  4		2	; slot4 = true
		 22	[  0]	RET1 	  4		2	; return slot4
	882	[  0]	FNEW 	 54		120	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  1		0	; slot1 = slot0; if not slot0
		  2	[  0]	JMP  	  1		10	; 	goto 13
		  3	[  0]	TGETS	  1	0	1	; slot1 = slot0.st
		  4	[  0]	ISF  	   		1	; if not <unknown table>.st
		  5	[  0]	JMP  	  2		7	; 	goto 13
		  6	[  0]	TGETS	  1	0	1	; slot1 = slot0.st
		  7	[  0]	TGETS	  1	1	0	; slot1 = <unknown table>.st.langDropdownOpen
		  8	[  0]	ISEQP	  1		2	; if <unknown table>.st.langDropdownOpen == true
		  9	[  0]	JMP  	  1		2	; 	goto 12
		 10	[  0]	KPRI 	  1		1	; slot1 = false
		 11	[  0]	JMP  	  2		1	; 	goto 13
		 12	[  0]	KPRI 	  1		2	; slot1 = true
		 13	[  0]	RET1 	  1		2	; return slot1
	883	[  0]	FNEW 	 55		119	; N/A:0-0: 0 args, 6 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	17	; slot0 = uv0"unknown".settingsFocus
		  3	[  0]	ISF  	   		0	; if not uv0"unknown".settingsFocus
		  4	[  0]	JMP  	  0		4	; 	goto 9
		  5	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  6	[  0]	TGETS	  0	0	16	; slot0 = uv1"unknown".active
		  7	[  0]	ISF  	   		0	; if not uv1"unknown".active
		  8	[  0]	JMP  	  1		1	; 	goto 10
		  9	[  0]	RET0 	  0		1	; return
		 10	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
		 11	[  0]	CALL 	  0	2	1	; slot0 = uv2"unknown"()
		 12	[  0]	ISF  	   		0	; if not slot0
		 13	[  0]	JMP  	  1		9	; 	goto 23
		 14	[  0]	TGETS	  1	0	15	; slot1 = slot0.rows
		 15	[  0]	LEN  	  1		1	; slot1 = #<unknown table>.rows
		 16	[  0]	ISEQN	  1		0	; if slot1 == 0
		 17	[  0]	JMP  	  1		5	; 	goto 23
		 18	[  0]	UGET 	  1		3	; slot1 = uv3"unknwon"
		 19	[  0]	MOV  	  3		0	; slot3 = slot0
		 20	[  0]	CALL 	  1	2	2	; slot1 = uv3"unknown"(slot2)
		 21	[  0]	ISF  	   		1	; if not slot1
		 22	[  0]	JMP  	  2		1	; 	goto 24
		 23	[  0]	RET0 	  0		1	; return
		 24	[  0]	UGET 	  1		4	; slot1 = uv4"unknwon"
		 25	[  0]	MOV  	  3		0	; slot3 = slot0
		 26	[  0]	CALL 	  1	2	2	; slot1 = uv4"unknown"(slot2)
		 27	[  0]	IST  	   		1	; if slot1
		 28	[  0]	JMP  	  2		1	; 	goto 30
		 29	[  0]	RET0 	  0		1	; return
		 30	[  0]	TGETS	  2	0	14	; slot2 = slot0.cy
		 31	[  0]	TGETS	  3	0	14	; slot3 = slot0.cy
		 32	[  0]	TGETS	  4	0	13	; slot4 = slot0.ch
		 33	[  0]	ADDVV	  3	3	4	; slot3 = <unknown table>.cy + <unknown table>.ch
		 34	[  0]	TGETS	  4	0	15	; slot4 = slot0.rows
		 35	[  0]	TGETV	  4	4	1	; slot4 = <unknown table>.rows[slot1]
		 36	[  0]	TGETS	  5	4	12	; slot5 = slot4.y
		 37	[  0]	TGETS	  6	4	11	; slot6 = slot4.h
		 38	[  0]	MULVN	  6	6	1	; slot6 = <unknown table>.h * 0.5
		 39	[  0]	ADDVV	  5	5	6	; slot5 = <unknown table>.y + slot6
		 40	[  0]	ISLT 	  5		2	; if slot5 < <unknown table>.cy
		 41	[  0]	JMP  	  5		6	; 	goto 48
		 42	[  0]	TGETS	  5	4	12	; slot5 = slot4.y
		 43	[  0]	TGETS	  6	4	11	; slot6 = slot4.h
		 44	[  0]	MULVN	  6	6	1	; slot6 = <unknown table>.h * 0.5
		 45	[  0]	ADDVV	  5	5	6	; slot5 = <unknown table>.y + slot6
		 46	[  0]	ISGE 	  3		5	; if slot3 >= slot5
		 47	[  0]	JMP  	  5		35	; 	goto 83
		 48	[  0]	KPRI 	  5		0	; slot5 = nil
		 49	[  0]	GGET 	  6		10	; slot6 = _env["math"]
		 50	[  0]	TGETS	  6	6	9	; slot6 = math.huge
		 51	[  0]	GGET 	  7		8	; slot7 = _env["ipairs"]
		 52	[  0]	TGETS	  9	0	15	; slot9 = slot0.rows
		 53	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = ipairs(slot8)
		 54	[  0]	JMP  	 10		18	; 	goto 73
		 55	[  0]	TGETS	 12	11	12	; slot12 = slot11.y
		 56	[  0]	TGETS	 13	11	11	; slot13 = slot11.h
		 57	[  0]	MULVN	 13	13	1	; slot13 = <unknown table>.h * 0.5
		 58	[  0]	ADDVV	 12	12	13	; slot12 = <unknown table>.y + slot13
		 59	[  0]	ISGT 	  2		12	; if <unknown table>.cy > slot12
		 60	[  0]	JMP  	 13		12	; 	goto 73
		 61	[  0]	ISGT 	 12		3	; if slot12 > slot3
		 62	[  0]	JMP  	 13		10	; 	goto 73
		 63	[  0]	GGET 	 13		10	; slot13 = _env["math"]
		 64	[  0]	TGETS	 13	13	7	; slot13 = math.abs
		 65	[  0]	TGETS	 15	11	6	; slot15 = slot11.index
		 66	[  0]	SUBVV	 15	15	1	; slot15 = <unknown table>.index - slot1
		 67	[  0]	CALL 	 13	2	2	; slot13 = math.abs(slot14)
		 68	[  0]	ISGE 	 13		6	; if math.abs >= math.huge
		 69	[  0]	JMP  	 14		3	; 	goto 73
		 70	[  0]	MOV  	 14		11	; slot14 = slot11
		 71	[  0]	MOV  	  6		13	; slot6 = math.abs
		 72	[  0]	MOV  	  5		14	; slot5 = slot14
		 73	[  0]	ITERC	 10	3	3	; slot10, slot11, slot12 = ipairs, slot8, <unknown table>.rows; slot10, slot11 = ipairs(slot8, <unknown table>.rows)
		 74	[  0]	ITERL	 10		-20	; <unknown table>.rows = slot10; if slot10 != nil goto 55
		 75	[  0]	IST  	   		5	; if slot5
		 76	[  0]	JMP  	  7		1	; 	goto 78
		 77	[  0]	RET0 	  0		1	; return
		 78	[  0]	MOV  	  4		5	; slot4 = slot5
		 79	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 80	[  0]	TGETS	  8	4	5	; slot8 = slot4.item
		 81	[  0]	TGETS	  8	8	4	; slot8 = <unknown table>.item.key
		 82	[  0]	TSETS	  8	7	17	; uv0"unknown".settingsFocus = <unknown table>.item.key
		 83	[  0]	UGET 	  5		5	; slot5 = uv5"unknwon"
		 84	[  0]	TGETS	  5	5	3	; slot5 = uv5"unknown".glideTarget
		 85	[  0]	CALL 	  5	3	1	; slot5, slot6 = uv5"unknown".glideTarget()
		 86	[  0]	GGET 	  7		10	; slot7 = _env["math"]
		 87	[  0]	TGETS	  7	7	7	; slot7 = math.abs
		 88	[  0]	TGETS	  9	4	2	; slot9 = slot4.fx
		 89	[  0]	SUBVV	  9	5	9	; slot9 = uv5"unknown".glideTarget - <unknown table>.fx
		 90	[  0]	CALL 	  7	2	2	; slot7 = math.abs(<unknown table>.item.key)
		 91	[  0]	GGET 	  8		10	; slot8 = _env["math"]
		 92	[  0]	TGETS	  8	8	7	; slot8 = math.abs
		 93	[  0]	TGETS	 10	4	1	; slot10 = slot4.fy
		 94	[  0]	SUBVV	 10	6	10	; slot10 = math.abs - <unknown table>.fy
		 95	[  0]	CALL 	  8	2	2	; slot8 = math.abs(slot9)
		 96	[  0]	ADDVV	  7	7	8	; slot7 = math.abs + math.abs
		 97	[  0]	KNUM 	  8		1	; slot8 = 0.5
		 98	[  0]	ISGE 	  8		7	; if slot8 >= slot7
		 99	[  0]	JMP  	  7		5	; 	goto 105
		100	[  0]	UGET 	  7		5	; slot7 = uv5"unknwon"
		101	[  0]	TGETS	  7	7	0	; slot7 = uv5"unknown".set
		102	[  0]	TGETS	  9	4	2	; slot9 = slot4.fx
		103	[  0]	TGETS	 10	4	1	; slot10 = slot4.fy
		104	[  0]	CALL 	  7	1	3	;  = uv5"unknown".set(slot8, <unknown table>.fx)
		105	[  0]	RET0 	  0		1	; return
	884	[  0]	FNEW 	 56		118	; N/A:0-0: 2 args, 1 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  2	0	14	; slot2 = slot0.rowH
		  2	[  0]	IST  	   		2	; if <unknown table>.rowH
		  3	[  0]	JMP  	  3		1	; 	goto 5
		  4	[  0]	KSHORT	  2		26	; slot2 = 26
		  5	[  0]	TGETS	  3	1	13	; slot3 = slot1.item
		  6	[  0]	TGETS	  3	3	12	; slot3 = <unknown table>.item.options
		  7	[  0]	IST  	   		3	; if <unknown table>.item.options
		  8	[  0]	JMP  	  4		1	; 	goto 10
		  9	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 10	[  0]	LEN  	  3		3	; slot3 = #slot3
		 11	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 12	[  0]	KSTR 	  6		11	; slot6 = "__slotSettingsDropdownGeometry"
		 13	[  0]	CALL 	  4	2	2	; slot4 = uv0"unknown"(slot5)
		 14	[  0]	ISF  	   		4	; if not uv0"unknown"
		 15	[  0]	JMP  	  5		24	; 	goto 40
		 16	[  0]	TGETS	  5	0	10	; slot5 = slot0.hasScrollbar
		 17	[  0]	ISF  	   		5	; if not <unknown table>.hasScrollbar
		 18	[  0]	JMP  	  6		8	; 	goto 27
		 19	[  0]	GGET 	  5		9	; slot5 = _env["math"]
		 20	[  0]	TGETS	  5	5	8	; slot5 = math.max
		 21	[  0]	KSHORT	  7		1	; slot7 = 1
		 22	[  0]	TGETS	  8	0	7	; slot8 = slot0.cw
		 23	[  0]	SUBVN	  8	8	0	; slot8 = <unknown table>.cw - 20
		 24	[  0]	CALL 	  5	2	3	; slot5 = math.max(slot6, slot7)
		 25	[  0]	IST  	   		5	; if math.max
		 26	[  0]	JMP  	  6		1	; 	goto 28
		 27	[  0]	TGETS	  5	0	7	; slot5 = slot0.cw
		 28	[  0]	MOV  	  6		4	; slot6 = uv0"unknown"
		 29	[  0]	TGETS	  8	0	6	; slot8 = slot0.cx
		 30	[  0]	MOV  	  9		5	; slot9 = <unknown table>.cw
		 31	[  0]	TGETS	 10	1	5	; slot10 = slot1.y
		 32	[  0]	MOV  	 11		3	; slot11 = slot3
		 33	[  0]	TGETS	 12	0	4	; slot12 = slot0.st
		 34	[  0]	CALL 	  6	2	6	; slot6 = uv0"unknown"(slot7, <unknown table>.cx, <unknown table>.cw, <unknown table>.y, slot11)
		 35	[  0]	TGETS	  7	6	3	; slot7 = slot6.listTop
		 36	[  0]	TGETS	  8	6	2	; slot8 = slot6.optH
		 37	[  0]	TGETS	  9	6	1	; slot9 = slot6.first
		 38	[  0]	TGETS	 10	6	0	; slot10 = slot6.visible
		 39	[  0]	RET  	  7		5	; return <unknown table>.listTop, <unknown table>.optH, <unknown table>.first, <unknown table>.visible
		 40	[  0]	TGETS	  5	1	5	; slot5 = slot1.y
		 41	[  0]	ADDVN	  5	5	1	; slot5 = <unknown table>.y + 4
		 42	[  0]	SUBVN	  6	2	2	; slot6 = slot2 - 8
		 43	[  0]	ADDVV	  5	5	6	; slot5 = slot5 + slot6
		 44	[  0]	MOV  	  6		2	; slot6 = slot2
		 45	[  0]	KSHORT	  7		0	; slot7 = 0
		 46	[  0]	MOV  	  8		3	; slot8 = slot3
		 47	[  0]	RET  	  5		5	; return slot5, slot6, slot7, slot8
	885	[  0]	FNEW 	 57		117	; N/A:0-0: 4 args, 2 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  2	[  0]	MOV  	  6		0	; slot6 = slot0
		  3	[  0]	MOV  	  7		1	; slot7 = slot1
		  4	[  0]	CALL 	  4	5	3	; slot4, slot5, slot6, slot7 = uv0"unknown"(slot5, slot6)
		  5	[  0]	ADDVN	  8	6	0	; slot8 = slot6 + 1
		  6	[  0]	ISGE 	  2		8	; if slot2 >= slot8
		  7	[  0]	JMP  	  8		2	; 	goto 10
		  8	[  0]	SUBVN	  6	2	0	; slot6 = slot2 - 1
		  9	[  0]	JMP  	  8		4	; 	goto 14
		 10	[  0]	ADDVV	  8	6	7	; slot8 = slot6 + slot7
		 11	[  0]	ISGE 	  8		2	; if slot8 >= slot2
		 12	[  0]	JMP  	  8		1	; 	goto 14
		 13	[  0]	SUBVV	  6	2	7	; slot6 = slot2 - slot7
		 14	[  0]	TGETS	  8	0	3	; slot8 = slot0.st
		 15	[  0]	ISF  	   		8	; if not <unknown table>.st
		 16	[  0]	JMP  	  9		2	; 	goto 19
		 17	[  0]	TGETS	  8	0	3	; slot8 = slot0.st
		 18	[  0]	TSETS	  6	8	2	; <unknown table>.st.langDropdownScroll = slot6
		 19	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 20	[  0]	MOV  	 10		0	; slot10 = slot0
		 21	[  0]	MOV  	 11		1	; slot11 = slot1
		 22	[  0]	CALL 	  8	4	3	; slot8, slot9, slot10 = uv0"unknown"(slot9, slot10)
		 23	[  0]	MOV  	  6		10	; slot6 = slot10
		 24	[  0]	MOV  	  5		9	; slot5 = slot9
		 25	[  0]	MOV  	  4		8	; slot4 = uv0"unknown"
		 26	[  0]	SUBVV	  8	2	6	; slot8 = slot2 - slot6
		 27	[  0]	SUBVN	  8	8	1	; slot8 = slot8 - 0.5
		 28	[  0]	MULVV	  8	8	5	; slot8 = slot8 * slot5
		 29	[  0]	ADDVV	  8	4	8	; slot8 = uv0"unknown" + slot8
		 30	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 31	[  0]	TGETS	  9	9	1	; slot9 = uv1"unknown".set
		 32	[  0]	TGETS	 11	1	0	; slot11 = slot1.fx
		 33	[  0]	MOV  	 12		8	; slot12 = slot8
		 34	[  0]	CALL 	  9	1	3	;  = uv1"unknown".set(slot10, <unknown table>.fx)
		 35	[  0]	RET0 	  0		1	; return
	886	[  0]	FNEW 	 58		116	; N/A:0-0: 2 args, 2 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  2		2	; 	goto 5
		  3	[  0]	KPRI 	  2		1	; slot2 = false
		  4	[  0]	RET1 	  2		2	; return slot2
		  5	[  0]	TGETS	  2	0	17	; slot2 = slot0.disabled
		  6	[  0]	ISF  	   		2	; if not <unknown table>.disabled
		  7	[  0]	JMP  	  3		2	; 	goto 10
		  8	[  0]	KPRI 	  2		1	; slot2 = false
		  9	[  0]	RET1 	  2		2	; return slot2
		 10	[  0]	TGETS	  2	0	16	; slot2 = slot0.kind
		 11	[  0]	ISNES	  2		15	; if <unknown table>.kind ~= "radio"
		 12	[  0]	JMP  	  2		38	; 	goto 51
		 13	[  0]	TGETS	  2	0	14	; slot2 = slot0.options
		 14	[  0]	ISF  	   		2	; if not <unknown table>.options
		 15	[  0]	JMP  	  3		35	; 	goto 51
		 16	[  0]	TGETS	  2	0	13	; slot2 = slot0.set
		 17	[  0]	ISF  	   		2	; if not <unknown table>.set
		 18	[  0]	JMP  	  3		32	; 	goto 51
		 19	[  0]	TGETS	  2	0	12	; slot2 = slot0.get
		 20	[  0]	ISF  	   		2	; if not <unknown table>.get
		 21	[  0]	JMP  	  3		2	; 	goto 24
		 22	[  0]	TGETS	  2	0	12	; slot2 = slot0.get
		 23	[  0]	CALL 	  2	2	1	; slot2 = <unknown table>.get()
		 24	[  0]	KSHORT	  3		1	; slot3 = 1
		 25	[  0]	GGET 	  4		11	; slot4 = _env["ipairs"]
		 26	[  0]	TGETS	  6	0	14	; slot6 = slot0.options
		 27	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		 28	[  0]	JMP  	  7		4	; 	goto 33
		 29	[  0]	TGETS	  9	8	10	; slot9 = slot8.value
		 30	[  0]	ISNEV	  9		2	; if <unknown table>.value ~= <unknown table>.get
		 31	[  0]	JMP  	  9		1	; 	goto 33
		 32	[  0]	MOV  	  3		7	; slot3 = slot7
		 33	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, <unknown table>.options; slot7, slot8 = ipairs(slot5, <unknown table>.options)
		 34	[  0]	ITERL	  7		-6	; <unknown table>.options = slot7; if slot7 != nil goto 29
		 35	[  0]	TGETS	  4	0	14	; slot4 = slot0.options
		 36	[  0]	LEN  	  4		4	; slot4 = #<unknown table>.options
		 37	[  0]	SUBVN	  5	3	0	; slot5 = slot3 - 1
		 38	[  0]	ADDVV	  5	5	1	; slot5 = slot5 + slot1
		 39	[  0]	MODVV	  5	5	4	; slot5 = slot5 % slot4
		 40	[  0]	ADDVN	  3	5	0	; slot3 = slot5 + 1
		 41	[  0]	TGETS	  5	0	13	; slot5 = slot0.set
		 42	[  0]	TGETS	  7	0	14	; slot7 = slot0.options
		 43	[  0]	TGETV	  7	7	3	; slot7 = <unknown table>.options[slot3]
		 44	[  0]	TGETS	  7	7	10	; slot7 = slot7.value
		 45	[  0]	CALL 	  5	1	2	;  = <unknown table>.set(<unknown table>.options)
		 46	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 47	[  0]	CALL 	  5	1	1	;  = uv0"unknown"()
		 48	[  0]	KPRI 	  5		2	; slot5 = true
		 49	[  0]	RET1 	  5		2	; return slot5
		 50	[  0]	JMP  	  2		129	; 	goto 180
		 51	[  0]	TGETS	  2	0	16	; slot2 = slot0.kind
		 52	[  0]	ISNES	  2		9	; if <unknown table>.kind ~= "dropdown"
		 53	[  0]	JMP  	  2		38	; 	goto 92
		 54	[  0]	TGETS	  2	0	14	; slot2 = slot0.options
		 55	[  0]	ISF  	   		2	; if not <unknown table>.options
		 56	[  0]	JMP  	  3		35	; 	goto 92
		 57	[  0]	TGETS	  2	0	13	; slot2 = slot0.set
		 58	[  0]	ISF  	   		2	; if not <unknown table>.set
		 59	[  0]	JMP  	  3		32	; 	goto 92
		 60	[  0]	TGETS	  2	0	12	; slot2 = slot0.get
		 61	[  0]	ISF  	   		2	; if not <unknown table>.get
		 62	[  0]	JMP  	  3		2	; 	goto 65
		 63	[  0]	TGETS	  2	0	12	; slot2 = slot0.get
		 64	[  0]	CALL 	  2	2	1	; slot2 = <unknown table>.get()
		 65	[  0]	KSHORT	  3		1	; slot3 = 1
		 66	[  0]	GGET 	  4		11	; slot4 = _env["ipairs"]
		 67	[  0]	TGETS	  6	0	14	; slot6 = slot0.options
		 68	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		 69	[  0]	JMP  	  7		4	; 	goto 74
		 70	[  0]	TGETS	  9	8	10	; slot9 = slot8.value
		 71	[  0]	ISNEV	  9		2	; if <unknown table>.value ~= <unknown table>.get
		 72	[  0]	JMP  	  9		1	; 	goto 74
		 73	[  0]	MOV  	  3		7	; slot3 = <unknown table>.value
		 74	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, <unknown table>.options; slot7, slot8 = ipairs(slot5, <unknown table>.options)
		 75	[  0]	ITERL	  7		-6	; <unknown table>.options = <unknown table>.value; if <unknown table>.value != nil goto 70
		 76	[  0]	TGETS	  4	0	14	; slot4 = slot0.options
		 77	[  0]	LEN  	  4		4	; slot4 = #<unknown table>.options
		 78	[  0]	SUBVN	  5	3	0	; slot5 = <unknown table>.value - 1
		 79	[  0]	ADDVV	  5	5	1	; slot5 = slot5 + slot1
		 80	[  0]	MODVV	  5	5	4	; slot5 = slot5 % slot4
		 81	[  0]	ADDVN	  3	5	0	; slot3 = slot5 + 1
		 82	[  0]	TGETS	  5	0	13	; slot5 = slot0.set
		 83	[  0]	TGETS	  7	0	14	; slot7 = slot0.options
		 84	[  0]	TGETV	  7	7	3	; slot7 = <unknown table>.options[slot3]
		 85	[  0]	TGETS	  7	7	10	; slot7 = slot7.value
		 86	[  0]	CALL 	  5	1	2	;  = <unknown table>.set(<unknown table>.options)
		 87	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 88	[  0]	CALL 	  5	1	1	;  = uv0"unknown"()
		 89	[  0]	KPRI 	  5		2	; slot5 = true
		 90	[  0]	RET1 	  5		2	; return slot5
		 91	[  0]	JMP  	  2		88	; 	goto 180
		 92	[  0]	TGETS	  2	0	16	; slot2 = slot0.kind
		 93	[  0]	ISNES	  2		8	; if <unknown table>.kind ~= "slider"
		 94	[  0]	JMP  	  2		54	; 	goto 149
		 95	[  0]	TGETS	  2	0	13	; slot2 = slot0.set
		 96	[  0]	ISF  	   		2	; if not <unknown table>.set
		 97	[  0]	JMP  	  3		51	; 	goto 149
		 98	[  0]	TGETS	  2	0	12	; slot2 = slot0.get
		 99	[  0]	ISF  	   		2	; if not <unknown table>.get
		100	[  0]	JMP  	  3		48	; 	goto 149
		101	[  0]	GGET 	  2		7	; slot2 = _env["tonumber"]
		102	[  0]	TGETS	  4	0	12	; slot4 = slot0.get
		103	[  0]	CALL 	  4	0	1	; MULTRES = <unknown table>.get()
		104	[  0]	CALLM	  2	2	0	; slot2 = tonumber(, ...MULTRES)
		105	[  0]	IST  	   		2	; if tonumber
		106	[  0]	JMP  	  3		1	; 	goto 108
		107	[  0]	KSHORT	  2		0	; slot2 = 0
		108	[  0]	TGETS	  3	0	6	; slot3 = slot0.padStep
		109	[  0]	IST  	   		3	; if <unknown table>.padStep
		110	[  0]	JMP  	  4		1	; 	goto 112
		111	[  0]	KNUM 	  3		1	; slot3 = 0.05
		112	[  0]	GGET 	  4		5	; slot4 = _env["math"]
		113	[  0]	TGETS	  4	4	4	; slot4 = math.max
		114	[  0]	TGETS	  6	0	3	; slot6 = slot0.min
		115	[  0]	IST  	   		6	; if <unknown table>.min
		116	[  0]	JMP  	  7		1	; 	goto 118
		117	[  0]	KSHORT	  6		0	; slot6 = 0
		118	[  0]	GGET 	  7		5	; slot7 = _env["math"]
		119	[  0]	TGETS	  7	7	3	; slot7 = math.min
		120	[  0]	TGETS	  9	0	4	; slot9 = slot0.max
		121	[  0]	IST  	   		9	; if <unknown table>.max
		122	[  0]	JMP  	 10		1	; 	goto 124
		123	[  0]	KSHORT	  9		1	; slot9 = 1
		124	[  0]	MULVV	 10	1	3	; slot10 = slot1 * slot3
		125	[  0]	ADDVV	 10	2	10	; slot10 = slot2 + slot10
		126	[  0]	CALL 	  7	0	3	; MULTRES = math.min(slot8, slot9)
		127	[  0]	CALLM	  4	2	1	; slot4 = math.max(slot5, ...MULTRES)
		128	[  0]	MOV  	  2		4	; slot2 = math.max
		129	[  0]	GGET 	  4		5	; slot4 = _env["math"]
		130	[  0]	TGETS	  4	4	2	; slot4 = math.floor
		131	[  0]	DIVVV	  6	2	3	; slot6 = math.max / slot3
		132	[  0]	ADDVN	  6	6	2	; slot6 = slot6 + 0.5
		133	[  0]	CALL 	  4	2	2	; slot4 = math.floor(slot5)
		134	[  0]	MULVV	  2	4	3	; slot2 = math.floor * slot3
		135	[  0]	TGETS	  4	0	13	; slot4 = slot0.set
		136	[  0]	MOV  	  6		2	; slot6 = slot2
		137	[  0]	CALL 	  4	1	2	;  = <unknown table>.set(slot5)
		138	[  0]	TGETS	  4	0	1	; slot4 = slot0.onPadAdjust
		139	[  0]	ISF  	   		4	; if not <unknown table>.onPadAdjust
		140	[  0]	JMP  	  5		3	; 	goto 144
		141	[  0]	TGETS	  4	0	1	; slot4 = slot0.onPadAdjust
		142	[  0]	MOV  	  6		2	; slot6 = slot2
		143	[  0]	CALL 	  4	1	2	;  = <unknown table>.onPadAdjust(slot5)
		144	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		145	[  0]	CALL 	  4	1	1	;  = uv1"unknown"()
		146	[  0]	KPRI 	  4		2	; slot4 = true
		147	[  0]	RET1 	  4		2	; return slot4
		148	[  0]	JMP  	  2		31	; 	goto 180
		149	[  0]	TGETS	  2	0	16	; slot2 = slot0.kind
		150	[  0]	ISNES	  2		0	; if <unknown table>.kind ~= "checkbox"
		151	[  0]	JMP  	  2		28	; 	goto 180
		152	[  0]	TGETS	  2	0	13	; slot2 = slot0.set
		153	[  0]	ISF  	   		2	; if not <unknown table>.set
		154	[  0]	JMP  	  3		25	; 	goto 180
		155	[  0]	TGETS	  2	0	12	; slot2 = slot0.get
		156	[  0]	ISF  	   		2	; if not <unknown table>.get
		157	[  0]	JMP  	  3		7	; 	goto 165
		158	[  0]	TGETS	  2	0	12	; slot2 = slot0.get
		159	[  0]	CALL 	  2	2	1	; slot2 = <unknown table>.get()
		160	[  0]	ISEQP	  2		2	; if <unknown table>.get == true
		161	[  0]	JMP  	  2		2	; 	goto 164
		162	[  0]	KPRI 	  2		1	; slot2 = false
		163	[  0]	JMP  	  3		1	; 	goto 165
		164	[  0]	KPRI 	  2		2	; slot2 = true
		165	[  0]	KSHORT	  3		0	; slot3 = 0
		166	[  0]	ISLT 	  3		1	; if slot3 < slot1
		167	[  0]	JMP  	  3		2	; 	goto 170
		168	[  0]	KPRI 	  3		1	; slot3 = false
		169	[  0]	JMP  	  4		1	; 	goto 171
		170	[  0]	KPRI 	  3		2	; slot3 = true
		171	[  0]	ISEQV	  3		2	; if slot3 == slot2
		172	[  0]	JMP  	  3		5	; 	goto 178
		173	[  0]	TGETS	  3	0	13	; slot3 = slot0.set
		174	[  0]	NOT  	  5		2	; slot5 = not slot2
		175	[  0]	CALL 	  3	1	2	;  = <unknown table>.set(slot4)
		176	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		177	[  0]	CALL 	  3	1	1	;  = uv0"unknown"()
		178	[  0]	KPRI 	  3		2	; slot3 = true
		179	[  0]	RET1 	  3		2	; return slot3
		180	[  0]	KPRI 	  2		1	; slot2 = false
		181	[  0]	RET1 	  2		2	; return slot2
	887	[  0]	FNEW 	 59		115	; N/A:0-0: 1 args, 8 upvalues, 17 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown"()
		  3	[  0]	ISF  	   		1	; if not slot1
		  4	[  0]	JMP  	  2		4	; 	goto 9
		  5	[  0]	TGETS	  2	1	15	; slot2 = slot1.rows
		  6	[  0]	LEN  	  2		2	; slot2 = #<unknown table>.rows
		  7	[  0]	ISNEN	  2		0	; if slot2 ~= 0
		  8	[  0]	JMP  	  2		2	; 	goto 11
		  9	[  0]	KPRI 	  2		1	; slot2 = false
		 10	[  0]	RET1 	  2		2	; return slot2
		 11	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 12	[  0]	MOV  	  4		1	; slot4 = slot1
		 13	[  0]	CALL 	  2	2	2	; slot2 = uv1"unknown"(slot3)
		 14	[  0]	ISF  	   		2	; if not slot2
		 15	[  0]	JMP  	  3		70	; 	goto 86
		 16	[  0]	KPRI 	  2		0	; slot2 = nil
		 17	[  0]	GGET 	  3		14	; slot3 = _env["ipairs"]
		 18	[  0]	TGETS	  5	1	15	; slot5 = slot1.rows
		 19	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
		 20	[  0]	JMP  	  6		5	; 	goto 26
		 21	[  0]	TGETS	  8	7	13	; slot8 = slot7.item
		 22	[  0]	TGETS	  8	8	12	; slot8 = <unknown table>.item.kind
		 23	[  0]	ISNES	  8		11	; if <unknown table>.item.kind ~= "dropdown"
		 24	[  0]	JMP  	  8		1	; 	goto 26
		 25	[  0]	MOV  	  2		7	; slot2 = slot7
		 26	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, <unknown table>.rows; slot6, slot7 = ipairs(slot4, <unknown table>.rows)
		 27	[  0]	ITERL	  6		-7	; <unknown table>.rows = slot6; if slot6 != nil goto 21
		 28	[  0]	IST  	   		2	; if slot2
		 29	[  0]	JMP  	  3		2	; 	goto 32
		 30	[  0]	KPRI 	  3		2	; slot3 = true
		 31	[  0]	RET1 	  3		2	; return slot3
		 32	[  0]	TGETS	  3	2	13	; slot3 = slot2.item
		 33	[  0]	TGETS	  3	3	10	; slot3 = <unknown table>.item.options
		 34	[  0]	IST  	   		3	; if <unknown table>.item.options
		 35	[  0]	JMP  	  4		1	; 	goto 37
		 36	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 37	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 38	[  0]	TGETS	  4	4	9	; slot4 = uv2"unknown".glideTarget
		 39	[  0]	CALL 	  4	3	1	; slot4, slot5 = uv2"unknown".glideTarget()
		 40	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		 41	[  0]	MOV  	  8		1	; slot8 = slot1
		 42	[  0]	MOV  	  9		2	; slot9 = slot2
		 43	[  0]	CALL 	  6	5	3	; slot6, slot7, slot8, slot9 = uv3"unknown"(slot7, slot8)
		 44	[  0]	GGET 	 10		8	; slot10 = _env["math"]
		 45	[  0]	TGETS	 10	10	7	; slot10 = math.floor
		 46	[  0]	SUBVV	 12	5	6	; slot12 = <unknown table>.rows - uv3"unknown"
		 47	[  0]	DIVVV	 12	12	7	; slot12 = slot12 / slot7
		 48	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
		 49	[  0]	ADDVN	 10	10	1	; slot10 = math.floor + 1
		 50	[  0]	KSHORT	 11		1	; slot11 = 1
		 51	[  0]	ISGT 	 11		10	; if slot11 > slot10
		 52	[  0]	JMP  	 11		5	; 	goto 58
		 53	[  0]	ISGT 	 10		9	; if slot10 > slot9
		 54	[  0]	JMP  	 11		3	; 	goto 58
		 55	[  0]	ADDVV	 11	8	10	; slot11 = slot8 + slot10
		 56	[  0]	IST  	   		11	; if slot11
		 57	[  0]	JMP  	 12		1	; 	goto 59
		 58	[  0]	KSHORT	 11		0	; slot11 = 0
		 59	[  0]	ISNES	  0		6	; if slot0 ~= "down"
		 60	[  0]	JMP  	 12		7	; 	goto 68
		 61	[  0]	GGET 	 12		8	; slot12 = _env["math"]
		 62	[  0]	TGETS	 12	12	5	; slot12 = math.min
		 63	[  0]	LEN  	 14		3	; slot14 = #slot3
		 64	[  0]	ADDVN	 15	11	1	; slot15 = slot11 + 1
		 65	[  0]	CALL 	 12	2	3	; slot12 = math.min(slot13, slot14)
		 66	[  0]	MOV  	 11		12	; slot11 = math.min
		 67	[  0]	JMP  	 12		11	; 	goto 79
		 68	[  0]	ISNES	  0		4	; if slot0 ~= "up"
		 69	[  0]	JMP  	 12		7	; 	goto 77
		 70	[  0]	GGET 	 12		8	; slot12 = _env["math"]
		 71	[  0]	TGETS	 12	12	3	; slot12 = math.max
		 72	[  0]	KSHORT	 14		1	; slot14 = 1
		 73	[  0]	SUBVN	 15	11	1	; slot15 = math.min - 1
		 74	[  0]	CALL 	 12	2	3	; slot12 = math.max(slot13, slot14)
		 75	[  0]	MOV  	 11		12	; slot11 = math.max
		 76	[  0]	JMP  	 12		2	; 	goto 79
		 77	[  0]	KPRI 	 12		2	; slot12 = true
		 78	[  0]	RET1 	 12		2	; return slot12
		 79	[  0]	UGET 	 12		4	; slot12 = uv4"unknwon"
		 80	[  0]	MOV  	 14		1	; slot14 = slot1
		 81	[  0]	MOV  	 15		2	; slot15 = slot2
		 82	[  0]	MOV  	 16		11	; slot16 = math.max
		 83	[  0]	CALL 	 12	1	4	;  = uv4"unknown"(slot13, slot14, slot15)
		 84	[  0]	KPRI 	 12		2	; slot12 = true
		 85	[  0]	RET1 	 12		2	; return slot12
		 86	[  0]	UGET 	  2		5	; slot2 = uv5"unknwon"
		 87	[  0]	MOV  	  4		1	; slot4 = slot1
		 88	[  0]	CALL 	  2	2	2	; slot2 = uv5"unknown"(slot3)
		 89	[  0]	ISEQS	  0		2	; if slot0 == "left"
		 90	[  0]	JMP  	  3		2	; 	goto 93
		 91	[  0]	ISNES	  0		1	; if slot0 ~= "right"
		 92	[  0]	JMP  	  3		36	; 	goto 129
		 93	[  0]	IST  	   		2	; if slot2
		 94	[  0]	JMP  	  3		4	; 	goto 99
		 95	[  0]	UGET 	  3		6	; slot3 = uv6"unknwon"
		 96	[  0]	MOV  	  5		1	; slot5 = slot1
		 97	[  0]	KSHORT	  6		1	; slot6 = 1
		 98	[  0]	CALLT	  3		3	; return uv6"unknown"(slot4, slot5)
		 99	[  0]	TGETS	  3	1	15	; slot3 = slot1.rows
		100	[  0]	TGETV	  3	3	2	; slot3 = <unknown table>.rows[slot2]
		101	[  0]	TGETS	  3	3	13	; slot3 = slot3.item
		102	[  0]	UGET 	  4		7	; slot4 = uv7"unknwon"
		103	[  0]	MOV  	  6		3	; slot6 = <unknown table>.item
		104	[  0]	ISNES	  0		1	; if slot0 ~= "right"
		105	[  0]	JMP  	  7		2	; 	goto 108
		106	[  0]	KSHORT	  7		1	; slot7 = 1
		107	[  0]	JMP  	  8		1	; 	goto 109
		108	[  0]	KSHORT	  7		65535	; slot7 = 65535
		109	[  0]	CALL 	  4	2	3	; slot4 = uv7"unknown"(slot5, <unknown table>.item)
		110	[  0]	ISF  	   		4	; if not uv7"unknown"
		111	[  0]	JMP  	  5		15	; 	goto 127
		112	[  0]	TGETS	  4	3	12	; slot4 = <unknown table>.item.kind
		113	[  0]	ISNES	  4		0	; if <unknown table>.item.kind ~= "slider"
		114	[  0]	JMP  	  4		12	; 	goto 127
		115	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		116	[  0]	CALL 	  4	2	1	; slot4 = uv0"unknown"()
		117	[  0]	ISF  	   		4	; if not uv0"unknown"
		118	[  0]	JMP  	  5		8	; 	goto 127
		119	[  0]	TGETS	  5	4	15	; slot5 = uv0"unknown".rows
		120	[  0]	TGETV	  5	5	2	; slot5 = uv0"unknown".rows[slot2]
		121	[  0]	ISF  	   		5	; if not slot5
		122	[  0]	JMP  	  6		4	; 	goto 127
		123	[  0]	UGET 	  5		6	; slot5 = uv6"unknwon"
		124	[  0]	MOV  	  7		4	; slot7 = uv0"unknown"
		125	[  0]	MOV  	  8		2	; slot8 = slot2
		126	[  0]	CALL 	  5	1	3	;  = uv6"unknown"(<unknown table>.item, uv0"unknown")
		127	[  0]	KPRI 	  4		2	; slot4 = true
		128	[  0]	RET1 	  4		2	; return slot4
		129	[  0]	IST  	   		2	; if slot2
		130	[  0]	JMP  	  3		4	; 	goto 135
		131	[  0]	UGET 	  3		6	; slot3 = uv6"unknwon"
		132	[  0]	MOV  	  5		1	; slot5 = slot1
		133	[  0]	KSHORT	  6		1	; slot6 = 1
		134	[  0]	CALLT	  3		3	; return uv6"unknown"(slot4, slot5)
		135	[  0]	ISNES	  0		6	; if slot0 ~= "down"
		136	[  0]	JMP  	  3		2	; 	goto 139
		137	[  0]	KSHORT	  3		1	; slot3 = 1
		138	[  0]	JMP  	  4		1	; 	goto 140
		139	[  0]	KSHORT	  3		65535	; slot3 = 65535
		140	[  0]	ADDVV	  3	2	3	; slot3 = slot2 + slot3
		141	[  0]	KSHORT	  4		1	; slot4 = 1
		142	[  0]	ISLT 	  3		4	; if slot3 < slot4
		143	[  0]	JMP  	  4		4	; 	goto 148
		144	[  0]	TGETS	  4	1	15	; slot4 = slot1.rows
		145	[  0]	LEN  	  4		4	; slot4 = #<unknown table>.rows
		146	[  0]	ISGE 	  4		3	; if slot4 >= slot3
		147	[  0]	JMP  	  4		2	; 	goto 150
		148	[  0]	KPRI 	  4		2	; slot4 = true
		149	[  0]	RET1 	  4		2	; return slot4
		150	[  0]	UGET 	  4		6	; slot4 = uv6"unknwon"
		151	[  0]	MOV  	  6		1	; slot6 = slot1
		152	[  0]	MOV  	  7		3	; slot7 = slot3
		153	[  0]	CALLT	  4		3	; return uv6"unknown"(slot5, slot6)
	888	[  0]	FNEW 	 60		114	; N/A:0-0: 0 args, 1 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	KSTR 	  2		5	; slot2 = "tooltip"
		  3	[  0]	CALL 	  0	2	2	; slot0 = uv0"unknown"(slot1)
		  4	[  0]	ISF  	   		0	; if not slot0
		  5	[  0]	JMP  	  1		13	; 	goto 19
		  6	[  0]	TGETS	  1	0	4	; slot1 = slot0.locked
		  7	[  0]	ISF  	   		1	; if not <unknown table>.locked
		  8	[  0]	JMP  	  2		10	; 	goto 19
		  9	[  0]	KPRI 	  1		1	; slot1 = false
		 10	[  0]	TSETS	  1	0	4	; slot0.locked = slot1
		 11	[  0]	KPRI 	  1		0	; slot1 = nil
		 12	[  0]	TSETS	  1	0	3	; slot0.target = slot1
		 13	[  0]	KSTR 	  1		1	; slot1 = "PENDING_HIDE"
		 14	[  0]	TSETS	  1	0	2	; slot0.state = slot1
		 15	[  0]	KSHORT	  1		0	; slot1 = 0
		 16	[  0]	TSETS	  1	0	0	; slot0.hideT = slot1
		 17	[  0]	KPRI 	  1		2	; slot1 = true
		 18	[  0]	RET1 	  1		2	; return slot1
		 19	[  0]	KPRI 	  1		1	; slot1 = false
		 20	[  0]	RET1 	  1		2	; return slot1
	889	[  0]	KSTR 	 61		113	; slot61 = "back"
	890	[  0]	FNEW 	 62		112	; N/A:0-0: 1 args, 9 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	KSTR 	  3		41	; slot3 = "ui"
		  3	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		  4	[  0]	ISNES	  0		40	; if slot0 ~= "settings"
		  5	[  0]	JMP  	  2		56	; 	goto 62
		  6	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  7	[  0]	CALL 	  2	3	1	; slot2, slot3 = uv1"unknown"()
		  8	[  0]	ISF  	   		2	; if not uv1"unknown"
		  9	[  0]	JMP  	  4		9	; 	goto 19
		 10	[  0]	TGETS	  4	2	39	; slot4 = uv1"unknown".langDropdownOpen
		 11	[  0]	ISF  	   		4	; if not uv1"unknown".langDropdownOpen
		 12	[  0]	JMP  	  5		6	; 	goto 19
		 13	[  0]	KPRI 	  4		1	; slot4 = false
		 14	[  0]	TSETS	  4	2	39	; uv1"unknown".langDropdownOpen = slot4
		 15	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 16	[  0]	CALL 	  4	1	1	;  = uv2"unknown"()
		 17	[  0]	KPRI 	  4		2	; slot4 = true
		 18	[  0]	RET1 	  4		2	; return slot4
		 19	[  0]	ISF  	   		2	; if not uv1"unknown"
		 20	[  0]	JMP  	  4		13	; 	goto 34
		 21	[  0]	TGETS	  4	2	38	; slot4 = uv1"unknown".page
		 22	[  0]	ISNES	  4		37	; if uv1"unknown".page ~= "controls"
		 23	[  0]	JMP  	  4		10	; 	goto 34
		 24	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 25	[  0]	KSTR 	  6		36	; slot6 = "__slotSettingsLeaveControlsPage"
		 26	[  0]	CALL 	  4	2	2	; slot4 = uv0"unknown"(slot5)
		 27	[  0]	ISF  	   		4	; if not uv0"unknown"
		 28	[  0]	JMP  	  5		3	; 	goto 32
		 29	[  0]	MOV  	  5		4	; slot5 = uv0"unknown"
		 30	[  0]	MOV  	  7		2	; slot7 = uv1"unknown"
		 31	[  0]	CALL 	  5	1	2	;  = uv0"unknown"(slot6)
		 32	[  0]	KPRI 	  5		2	; slot5 = true
		 33	[  0]	RET1 	  5		2	; return slot5
		 34	[  0]	ISNES	  3		35	; if slot3 ~= "menu"
		 35	[  0]	JMP  	  4		9	; 	goto 45
		 36	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 37	[  0]	KSTR 	  6		34	; slot6 = "closeMenuSettingsOverlay"
		 38	[  0]	CALL 	  4	2	2	; slot4 = uv0"unknown"(slot5)
		 39	[  0]	ISF  	   		4	; if not uv0"unknown"
		 40	[  0]	JMP  	  5		2	; 	goto 43
		 41	[  0]	MOV  	  5		4	; slot5 = uv0"unknown"
		 42	[  0]	CALL 	  5	1	1	;  = uv0"unknown"()
		 43	[  0]	KPRI 	  5		2	; slot5 = true
		 44	[  0]	RET1 	  5		2	; return slot5
		 45	[  0]	ISF  	   		2	; if not uv1"unknown"
		 46	[  0]	JMP  	  4		12	; 	goto 59
		 47	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 48	[  0]	CALL 	  4	1	1	;  = uv2"unknown"()
		 49	[  0]	KPRI 	  4		1	; slot4 = false
		 50	[  0]	TSETS	  4	2	33	; uv1"unknown".settingsMode = slot4
		 51	[  0]	KPRI 	  4		1	; slot4 = false
		 52	[  0]	TSETS	  4	2	32	; uv1"unknown"._settingsPending = slot4
		 53	[  0]	KSHORT	  4		0	; slot4 = 0
		 54	[  0]	TSETS	  4	2	31	; uv1"unknown"._settingsT = slot4
		 55	[  0]	KPRI 	  4		1	; slot4 = false
		 56	[  0]	TSETS	  4	2	39	; uv1"unknown".langDropdownOpen = slot4
		 57	[  0]	KPRI 	  4		2	; slot4 = true
		 58	[  0]	RET1 	  4		2	; return slot4
		 59	[  0]	KPRI 	  4		1	; slot4 = false
		 60	[  0]	RET1 	  4		2	; return slot4
		 61	[  0]	JMP  	  2		179	; 	goto 241
		 62	[  0]	ISNES	  0		30	; if slot0 ~= "confirm"
		 63	[  0]	JMP  	  2		43	; 	goto 107
		 64	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 65	[  0]	CALL 	  2	2	1	; slot2 = uv3"unknown"()
		 66	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 67	[  0]	KSTR 	  5		29	; slot5 = "phase"
		 68	[  0]	CALL 	  3	2	2	; slot3 = uv0"unknown"(slot4)
		 69	[  0]	ISNES	  3		35	; if uv0"unknown" ~= "menu"
		 70	[  0]	JMP  	  3		16	; 	goto 87
		 71	[  0]	ISF  	   		2	; if not uv3"unknown"
		 72	[  0]	JMP  	  3		14	; 	goto 87
		 73	[  0]	TGETS	  3	2	28	; slot3 = uv3"unknown".exitConfirm
		 74	[  0]	ISF  	   		3	; if not uv3"unknown".exitConfirm
		 75	[  0]	JMP  	  4		11	; 	goto 87
		 76	[  0]	TGETS	  3	2	28	; slot3 = uv3"unknown".exitConfirm
		 77	[  0]	TGETS	  3	3	27	; slot3 = uv3"unknown".exitConfirm.active
		 78	[  0]	ISF  	   		3	; if not uv3"unknown".exitConfirm.active
		 79	[  0]	JMP  	  4		7	; 	goto 87
		 80	[  0]	TGETS	  3	2	28	; slot3 = uv3"unknown".exitConfirm
		 81	[  0]	KPRI 	  4		2	; slot4 = true
		 82	[  0]	TSETS	  4	3	26	; uv3"unknown".exitConfirm.leaving = slot4
		 83	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 84	[  0]	CALL 	  3	1	1	;  = uv2"unknown"()
		 85	[  0]	KPRI 	  3		2	; slot3 = true
		 86	[  0]	RET1 	  3		2	; return slot3
		 87	[  0]	ISFC 	  3		1	; slot3 = slot1; if not slot1
		 88	[  0]	JMP  	  3		1	; 	goto 90
		 89	[  0]	TGETS	  3	1	25	; slot3 = slot1._restartConfirm
		 90	[  0]	ISF  	   		3	; if not <unknown table>._restartConfirm
		 91	[  0]	JMP  	  4		12	; 	goto 104
		 92	[  0]	TGETS	  4	3	24	; slot4 = <unknown table>._restartConfirm.rectNo
		 93	[  0]	ISF  	   		4	; if not <unknown table>._restartConfirm.rectNo
		 94	[  0]	JMP  	  5		9	; 	goto 104
		 95	[  0]	UGET 	  4		4	; slot4 = uv4"unknwon"
		 96	[  0]	TGETS	  6	3	24	; slot6 = <unknown table>._restartConfirm.rectNo
		 97	[  0]	CALL 	  4	3	2	; slot4, slot5 = uv4"unknown"(slot5)
		 98	[  0]	UGET 	  6		5	; slot6 = uv5"unknwon"
		 99	[  0]	MOV  	  8		4	; slot8 = uv4"unknown"
		100	[  0]	MOV  	  9		5	; slot9 = slot5
		101	[  0]	CALL 	  6	1	3	;  = uv5"unknown"(uv1"unknown", uv4"unknown")
		102	[  0]	KPRI 	  6		2	; slot6 = true
		103	[  0]	RET1 	  6		2	; return slot6
		104	[  0]	KPRI 	  4		1	; slot4 = false
		105	[  0]	RET1 	  4		2	; return slot4
		106	[  0]	JMP  	  2		134	; 	goto 241
		107	[  0]	ISNES	  0		23	; if slot0 ~= "stage"
		108	[  0]	JMP  	  2		27	; 	goto 136
		109	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		110	[  0]	CALL 	  2	2	1	; slot2 = uv3"unknown"()
		111	[  0]	ISFC 	  3		2	; slot3 = uv3"unknown"; if not uv3"unknown"
		112	[  0]	JMP  	  3		1	; 	goto 114
		113	[  0]	TGETS	  3	2	22	; slot3 = uv3"unknown".stageSelect
		114	[  0]	ISF  	   		3	; if not uv3"unknown".stageSelect
		115	[  0]	JMP  	  4		17	; 	goto 133
		116	[  0]	TGETS	  4	3	21	; slot4 = uv3"unknown".stageSelect.back
		117	[  0]	ISF  	   		4	; if not uv3"unknown".stageSelect.back
		118	[  0]	JMP  	  5		14	; 	goto 133
		119	[  0]	TGETS	  4	3	21	; slot4 = uv3"unknown".stageSelect.back
		120	[  0]	TGETS	  4	4	20	; slot4 = uv3"unknown".stageSelect.back.rect
		121	[  0]	ISF  	   		4	; if not uv3"unknown".stageSelect.back.rect
		122	[  0]	JMP  	  5		10	; 	goto 133
		123	[  0]	UGET 	  4		4	; slot4 = uv4"unknwon"
		124	[  0]	TGETS	  6	3	21	; slot6 = uv3"unknown".stageSelect.back
		125	[  0]	TGETS	  6	6	20	; slot6 = uv3"unknown".stageSelect.back.rect
		126	[  0]	CALL 	  4	3	2	; slot4, slot5 = uv4"unknown"(slot5)
		127	[  0]	UGET 	  6		5	; slot6 = uv5"unknwon"
		128	[  0]	MOV  	  8		4	; slot8 = uv4"unknown"
		129	[  0]	MOV  	  9		5	; slot9 = slot5
		130	[  0]	CALL 	  6	1	3	;  = uv5"unknown"(uv1"unknown", uv4"unknown")
		131	[  0]	KPRI 	  6		2	; slot6 = true
		132	[  0]	RET1 	  6		2	; return slot6
		133	[  0]	KPRI 	  4		1	; slot4 = false
		134	[  0]	RET1 	  4		2	; return slot4
		135	[  0]	JMP  	  2		105	; 	goto 241
		136	[  0]	ISNES	  0		19	; if slot0 ~= "pause"
		137	[  0]	JMP  	  2		13	; 	goto 151
		138	[  0]	GGET 	  2		18	; slot2 = _env["love"]
		139	[  0]	TGETS	  2	2	17	; slot2 = love.keypressed
		140	[  0]	ISF  	   		2	; if not love.keypressed
		141	[  0]	JMP  	  3		6	; 	goto 148
		142	[  0]	GGET 	  2		18	; slot2 = _env["love"]
		143	[  0]	TGETS	  2	2	17	; slot2 = love.keypressed
		144	[  0]	KSTR 	  4		16	; slot4 = "escape"
		145	[  0]	KSTR 	  5		16	; slot5 = "escape"
		146	[  0]	KPRI 	  6		1	; slot6 = false
		147	[  0]	CALL 	  2	1	4	;  = love.keypressed(uv3"unknown".stageSelect, slot4, slot5)
		148	[  0]	KPRI 	  2		2	; slot2 = true
		149	[  0]	RET1 	  2		2	; return slot2
		150	[  0]	JMP  	  2		90	; 	goto 241
		151	[  0]	ISNES	  0		15	; if slot0 ~= "core"
		152	[  0]	JMP  	  2		24	; 	goto 177
		153	[  0]	GGET 	  2		14	; slot2 = _env["ipairs"]
		154	[  0]	UGET 	  4		6	; slot4 = uv6"unknwon"
		155	[  0]	TGETS	  4	4	13	; slot4 = uv6"unknown".targets
		156	[  0]	KSTR 	  6		15	; slot6 = "core"
		157	[  0]	CALL 	  4	0	2	; MULTRES = uv6"unknown".targets(slot5)
		158	[  0]	CALLM	  2	4	0	; slot2, slot3, slot4 = ipairs(, ...MULTRES)
		159	[  0]	JMP  	  5		12	; 	goto 172
		160	[  0]	TGETS	  7	6	12	; slot7 = slot6.id
		161	[  0]	ISNES	  7		11	; if <unknown table>.id ~= "core_back"
		162	[  0]	JMP  	  7		9	; 	goto 172
		163	[  0]	UGET 	  7		4	; slot7 = uv4"unknwon"
		164	[  0]	MOV  	  9		6	; slot9 = slot6
		165	[  0]	CALL 	  7	3	2	; slot7, slot8 = uv4"unknown"(uv4"unknown")
		166	[  0]	UGET 	  9		5	; slot9 = uv5"unknwon"
		167	[  0]	MOV  	 11		7	; slot11 = uv4"unknown"
		168	[  0]	MOV  	 12		8	; slot12 = uv4"unknown"
		169	[  0]	CALL 	  9	1	3	;  = uv5"unknown"(slot10, uv4"unknown")
		170	[  0]	KPRI 	  9		2	; slot9 = true
		171	[  0]	RET1 	  9		2	; return slot9
		172	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = ipairs, slot3, uv6"unknown".targets; slot5, slot6 = ipairs(slot3, uv6"unknown".targets)
		173	[  0]	ITERL	  5		-14	; uv6"unknown".targets = slot5; if slot5 != nil goto 160
		174	[  0]	KPRI 	  2		1	; slot2 = false
		175	[  0]	RET1 	  2		2	; return slot2
		176	[  0]	JMP  	  2		64	; 	goto 241
		177	[  0]	ISNES	  0		10	; if slot0 ~= "upgrade"
		178	[  0]	JMP  	  2		13	; 	goto 192
		179	[  0]	GGET 	  2		18	; slot2 = _env["love"]
		180	[  0]	TGETS	  2	2	17	; slot2 = love.keypressed
		181	[  0]	ISF  	   		2	; if not love.keypressed
		182	[  0]	JMP  	  3		6	; 	goto 189
		183	[  0]	GGET 	  2		18	; slot2 = _env["love"]
		184	[  0]	TGETS	  2	2	17	; slot2 = love.keypressed
		185	[  0]	KSTR 	  4		16	; slot4 = "escape"
		186	[  0]	KSTR 	  5		16	; slot5 = "escape"
		187	[  0]	KPRI 	  6		1	; slot6 = false
		188	[  0]	CALL 	  2	1	4	;  = love.keypressed(slot3, slot4, slot5)
		189	[  0]	KPRI 	  2		2	; slot2 = true
		190	[  0]	RET1 	  2		2	; return slot2
		191	[  0]	JMP  	  2		49	; 	goto 241
		192	[  0]	ISNES	  0		9	; if slot0 ~= "game"
		193	[  0]	JMP  	  2		47	; 	goto 241
		194	[  0]	ISF  	   		1	; if not slot1
		195	[  0]	JMP  	  2		9	; 	goto 205
		196	[  0]	TGETS	  2	1	8	; slot2 = slot1._manualCoreTargetingKey
		197	[  0]	ISF  	   		2	; if not <unknown table>._manualCoreTargetingKey
		198	[  0]	JMP  	  3		6	; 	goto 205
		199	[  0]	KPRI 	  2		0	; slot2 = nil
		200	[  0]	TSETS	  2	1	8	; slot1._manualCoreTargetingKey = slot2
		201	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		202	[  0]	CALL 	  2	1	1	;  = uv2"unknown"()
		203	[  0]	KPRI 	  2		2	; slot2 = true
		204	[  0]	RET1 	  2		2	; return slot2
		205	[  0]	UGET 	  2		7	; slot2 = uv7"unknwon"
		206	[  0]	CALL 	  2	2	1	; slot2 = uv7"unknown"()
		207	[  0]	ISF  	   		2	; if not uv7"unknown"
		208	[  0]	JMP  	  3		2	; 	goto 211
		209	[  0]	KPRI 	  2		2	; slot2 = true
		210	[  0]	RET1 	  2		2	; return slot2
		211	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		212	[  0]	KSTR 	  4		7	; slot4 = "battlefield"
		213	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown"(slot3)
		214	[  0]	ISF  	   		2	; if not slot2
		215	[  0]	JMP  	  3		12	; 	goto 228
		216	[  0]	TGETS	  3	2	6	; slot3 = slot2.absorbMode
		217	[  0]	ISF  	   		3	; if not <unknown table>.absorbMode
		218	[  0]	JMP  	  4		9	; 	goto 228
		219	[  0]	TGETS	  3	2	5	; slot3 = slot2.mode
		220	[  0]	ISEQS	  3		4	; if <unknown table>.mode == "battle"
		221	[  0]	JMP  	  3		6	; 	goto 228
		222	[  0]	UGET 	  3		8	; slot3 = uv8"unknwon"
		223	[  0]	TGETS	  3	3	3	; slot3 = uv8"unknown".runAction
		224	[  0]	KSTR 	  5		2	; slot5 = "absorb"
		225	[  0]	CALL 	  3	1	2	;  = uv8"unknown".runAction(slot4)
		226	[  0]	KPRI 	  3		2	; slot3 = true
		227	[  0]	RET1 	  3		2	; return slot3
		228	[  0]	ISF  	   		1	; if not slot1
		229	[  0]	JMP  	  3		9	; 	goto 239
		230	[  0]	TGETS	  3	1	1	; slot3 = slot1._shopMode
		231	[  0]	ISF  	   		3	; if not <unknown table>._shopMode
		232	[  0]	JMP  	  4		6	; 	goto 239
		233	[  0]	UGET 	  3		8	; slot3 = uv8"unknwon"
		234	[  0]	TGETS	  3	3	3	; slot3 = uv8"unknown".runAction
		235	[  0]	KSTR 	  5		0	; slot5 = "shop"
		236	[  0]	CALL 	  3	1	2	;  = uv8"unknown".runAction(slot4)
		237	[  0]	KPRI 	  3		2	; slot3 = true
		238	[  0]	RET1 	  3		2	; return slot3
		239	[  0]	KPRI 	  3		1	; slot3 = false
		240	[  0]	RET1 	  3		2	; return slot3
		241	[  0]	KPRI 	  2		1	; slot2 = false
		242	[  0]	RET1 	  2		2	; return slot2
	891	[  0]	TSETV	 62	32	61	; slot32[slot61] = slot62
	892	[  0]	KSTR 	 61		111	; slot61 = "runAction"
	893	[  0]	FNEW 	 62		110	; N/A:0-0: 1 args, 0 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		4	; slot1 = _env["love"]
		  2	[  0]	TGETS	  1	1	3	; slot1 = love.keypressed
		  3	[  0]	IST  	   		1	; if love.keypressed
		  4	[  0]	JMP  	  1		1	; 	goto 6
		  5	[  0]	RET0 	  0		1	; return
		  6	[  0]	ISNES	  0		2	; if slot0 ~= "pause"
		  7	[  0]	JMP  	  1		7	; 	goto 15
		  8	[  0]	GGET 	  1		4	; slot1 = _env["love"]
		  9	[  0]	TGETS	  1	1	3	; slot1 = love.keypressed
		 10	[  0]	KSTR 	  3		1	; slot3 = "escape"
		 11	[  0]	KSTR 	  4		1	; slot4 = "escape"
		 12	[  0]	KPRI 	  5		1	; slot5 = false
		 13	[  0]	CALL 	  1	1	4	;  = love.keypressed(slot2, slot3, slot4)
		 14	[  0]	JMP  	  1		10	; 	goto 25
		 15	[  0]	GGET 	  1		4	; slot1 = _env["love"]
		 16	[  0]	TGETS	  1	1	3	; slot1 = love.keypressed
		 17	[  0]	KSTR 	  3		0	; slot3 = "pad:"
		 18	[  0]	MOV  	  4		0	; slot4 = slot0
		 19	[  0]	CAT  	  3	3	4	; slot3 = slot3 .. slot4
		 20	[  0]	KSTR 	  4		0	; slot4 = "pad:"
		 21	[  0]	MOV  	  5		0	; slot5 = slot0
		 22	[  0]	CAT  	  4	4	5	; slot4 = slot4 .. slot5
		 23	[  0]	KPRI 	  5		1	; slot5 = false
		 24	[  0]	CALL 	  1	1	4	;  = love.keypressed(slot2, slot3, slot4)
		 25	[  0]	RET0 	  0		1	; return
	894	[  0]	TSETV	 62	6	61	; slot6[slot61] = slot62
	895	[  0]	KSTR 	 61		109	; slot61 = "keyAction"
	896	[  0]	FNEW 	 62		108	; N/A:0-0: 1 args, 1 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		6	; slot1 = _env["type"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  4	[  0]	ISEQS	  1		5	; if slot1 == "string"
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	KPRI 	  1		0	; slot1 = nil
		  7	[  0]	RET1 	  1		2	; return slot1
		  8	[  0]	MOV  	  3		0	; slot3 = slot0
		  9	[  0]	TGETS	  1	0	4	; slot1 = slot0.match
		 10	[  0]	KSTR 	  4		3	; slot4 = "^pad:(.+)$"
		 11	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.match(slot2, slot3)
		 12	[  0]	ISF  	   		1	; if not slot1
		 13	[  0]	JMP  	  2		1	; 	goto 15
		 14	[  0]	RET1 	  1		2	; return slot1
		 15	[  0]	ISNES	  0		2	; if slot0 ~= "escape"
		 16	[  0]	JMP  	  2		2	; 	goto 19
		 17	[  0]	KSTR 	  2		1	; slot2 = "pause"
		 18	[  0]	RET1 	  2		2	; return slot2
		 19	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 20	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".actionForKey
		 21	[  0]	MOV  	  4		0	; slot4 = slot0
		 22	[  0]	CALLT	  2		2	; return uv0"unknown".actionForKey(slot3)
	897	[  0]	TSETV	 62	6	61	; slot6[slot61] = slot62
	898	[  0]	FNEW 	 61		107	; N/A:0-0: 1 args, 3 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	KSTR 	  3		20	; slot3 = "ui"
		  3	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		  4	[  0]	ISNES	  0		19	; if slot0 ~= "settings"
		  5	[  0]	JMP  	  2		18	; 	goto 24
		  6	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  7	[  0]	CALL 	  2	3	1	; slot2, slot3 = uv1"unknown"()
		  8	[  0]	KSTR 	  4		18	; slot4 = "settings:"
		  9	[  0]	GGET 	  5		17	; slot5 = _env["tostring"]
		 10	[  0]	MOV  	  7		3	; slot7 = slot3
		 11	[  0]	CALL 	  5	2	2	; slot5 = tostring(slot6)
		 12	[  0]	KSTR 	  6		16	; slot6 = ":"
		 13	[  0]	GGET 	  7		17	; slot7 = _env["tostring"]
		 14	[  0]	ISF  	   		2	; if not uv1"unknown"
		 15	[  0]	JMP  	  9		3	; 	goto 19
		 16	[  0]	TGETS	  9	2	15	; slot9 = uv1"unknown".page
		 17	[  0]	IST  	   		9	; if uv1"unknown".page
		 18	[  0]	JMP  	 10		1	; 	goto 20
		 19	[  0]	KSTR 	  9		14	; slot9 = "main"
		 20	[  0]	CALL 	  7	2	2	; slot7 = tostring(slot8)
		 21	[  0]	CAT  	  4	4	7	; slot4 = slot4 .. tostring .. slot6 .. tostring
		 22	[  0]	RET1 	  4		2	; return slot4
		 23	[  0]	JMP  	  2		46	; 	goto 70
		 24	[  0]	ISNES	  0		13	; if slot0 ~= "stage"
		 25	[  0]	JMP  	  2		19	; 	goto 45
		 26	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 27	[  0]	CALL 	  2	2	1	; slot2 = uv2"unknown"()
		 28	[  0]	ISFC 	  3		2	; slot3 = uv2"unknown"; if not uv2"unknown"
		 29	[  0]	JMP  	  3		1	; 	goto 31
		 30	[  0]	TGETS	  3	2	12	; slot3 = uv2"unknown".stageSelect
		 31	[  0]	KSTR 	  4		11	; slot4 = "stage:"
		 32	[  0]	GGET 	  5		17	; slot5 = _env["tostring"]
		 33	[  0]	ISF  	   		3	; if not uv2"unknown".stageSelect
		 34	[  0]	JMP  	  7		5	; 	goto 40
		 35	[  0]	TGETS	  7	3	10	; slot7 = uv2"unknown".stageSelect.diffActive
		 36	[  0]	ISF  	   		7	; if not uv2"unknown".stageSelect.diffActive
		 37	[  0]	JMP  	  8		2	; 	goto 40
		 38	[  0]	KSTR 	  7		9	; slot7 = "diff"
		 39	[  0]	JMP  	  8		1	; 	goto 41
		 40	[  0]	KSTR 	  7		8	; slot7 = "list"
		 41	[  0]	CALL 	  5	2	2	; slot5 = tostring(slot6)
		 42	[  0]	CAT  	  4	4	5	; slot4 = slot4 .. tostring
		 43	[  0]	RET1 	  4		2	; return slot4
		 44	[  0]	JMP  	  2		25	; 	goto 70
		 45	[  0]	ISNES	  0		7	; if slot0 ~= "modal"
		 46	[  0]	JMP  	  2		13	; 	goto 60
		 47	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 48	[  0]	KSTR 	  4		6	; slot4 = "battlefield"
		 49	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown"(uv2"unknown".stageSelect)
		 50	[  0]	ISF  	   		2	; if not slot2
		 51	[  0]	JMP  	  3		5	; 	goto 57
		 52	[  0]	TGETS	  3	2	5	; slot3 = slot2.classSelect
		 53	[  0]	ISF  	   		3	; if not <unknown table>.classSelect
		 54	[  0]	JMP  	  4		2	; 	goto 57
		 55	[  0]	KSTR 	  3		4	; slot3 = "modal:class"
		 56	[  0]	RET1 	  3		2	; return slot3
		 57	[  0]	KSTR 	  3		3	; slot3 = "modal:other"
		 58	[  0]	RET1 	  3		2	; return slot3
		 59	[  0]	JMP  	  2		10	; 	goto 70
		 60	[  0]	ISNES	  0		2	; if slot0 ~= "confirm"
		 61	[  0]	JMP  	  2		8	; 	goto 70
		 62	[  0]	KSTR 	  2		1	; slot2 = "confirm:"
		 63	[  0]	GGET 	  3		17	; slot3 = _env["tostring"]
		 64	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 65	[  0]	KSTR 	  7		0	; slot7 = "phase"
		 66	[  0]	CALL 	  5	0	2	; MULTRES = uv0"unknown"(slot6)
		 67	[  0]	CALLM	  3	2	0	; slot3 = tostring(, ...MULTRES)
		 68	[  0]	CAT  	  2	2	3	; slot2 = slot2 .. tostring
		 69	[  0]	RET1 	  2		2	; return slot2
		 70	[  0]	RET1 	  0		2	; return slot0
	899	[  0]	TDUP 	 62		106	; slot62 = copy table#k106
	900	[  0]	FNEW 	 63		105	; N/A:0-0: 4 args, 5 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		ktable#3 = [
			[t] = 0,
			]
		
		
		ktable#16 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  2	[  0]	KPRI 	  5		0	; slot5 = nil
		  3	[  0]	TSETS	  5	4	21	; uv0"unknown".focusId = slot5
		  4	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  5	[  0]	KPRI 	  5		0	; slot5 = nil
		  6	[  0]	TSETS	  5	4	20	; uv0"unknown".focusUnit = slot5
		  7	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  8	[  0]	KPRI 	  5		0	; slot5 = nil
		  9	[  0]	TSETS	  5	4	19	; uv0"unknown".focusAnchor = slot5
		 10	[  0]	ISNES	  3		18	; if slot3 ~= "settings"
		 11	[  0]	JMP  	  4		7	; 	goto 19
		 12	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 13	[  0]	TDUP 	  5		16	; slot5 = copy table#k16
		 14	[  0]	TSETS	  0	5	15	; slot5.key = slot0
		 15	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 16	[  0]	TGETS	  6	6	14	; slot6 = uv0"unknown".settingsFocus
		 17	[  0]	TSETS	  6	5	13	; slot5.focus = uv0"unknown".settingsFocus
		 18	[  0]	TSETS	  5	4	17	; uv0"unknown".settingsReturn = slot5
		 19	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 20	[  0]	KPRI 	  5		0	; slot5 = nil
		 21	[  0]	TSETS	  5	4	14	; uv0"unknown".settingsFocus = slot5
		 22	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 23	[  0]	TGETS	  4	4	12	; slot4 = uv1"unknown".get
		 24	[  0]	CALL 	  4	3	1	; slot4, slot5 = uv1"unknown".get()
		 25	[  0]	ISF  	   		0	; if not slot0
		 26	[  0]	JMP  	  6		8	; 	goto 35
		 27	[  0]	ISNES	  3		11	; if slot3 ~= "game"
		 28	[  0]	JMP  	  6		6	; 	goto 35
		 29	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 30	[  0]	TGETS	  6	6	10	; slot6 = uv0"unknown".ctxCursor
		 31	[  0]	TNEW 	  7		3	; slot7 = new table( array: 3, dict: 1)
		 32	[  0]	TSETB	  4	7	1	; slot7[1] = uv1"unknown".get
		 33	[  0]	TSETB	  5	7	2	; slot7[2] = slot5
		 34	[  0]	TSETV	  7	6	0	; uv0"unknown".ctxCursor[slot0] = slot7
		 35	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 36	[  0]	KPRI 	  7		1	; slot7 = false
		 37	[  0]	TSETS	  7	6	9	; uv0"unknown".parked = slot7
		 38	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 39	[  0]	KPRI 	  7		0	; slot7 = nil
		 40	[  0]	TSETS	  7	6	8	; uv0"unknown".parkHoldUntil = slot7
		 41	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 42	[  0]	TGETS	  6	6	7	; slot6 = uv2"unknown".mode
		 43	[  0]	ISEQS	  6		6	; if uv2"unknown".mode == "pad"
		 44	[  0]	JMP  	  6		1	; 	goto 46
		 45	[  0]	RET0 	  0		1	; return
		 46	[  0]	ISNES	  2		11	; if slot2 ~= "game"
		 47	[  0]	JMP  	  6		8	; 	goto 56
		 48	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		 49	[  0]	ISTC 	  7		3	; slot7 = slot3; if slot3
		 50	[  0]	JMP  	  7		1	; 	goto 52
		 51	[  0]	KSTR 	  7		5	; slot7 = ""
		 52	[  0]	TGETV	  6	6	7	; slot6 = uv3"unknown"[slot7]
		 53	[  0]	IST  	   		6	; if slot6
		 54	[  0]	JMP  	  6		1	; 	goto 56
		 55	[  0]	RET0 	  0		1	; return
		 56	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 57	[  0]	TDUP 	  7		3	; slot7 = copy table#k3
		 58	[  0]	TSETS	  1	7	15	; slot7.key = slot1
		 59	[  0]	TSETS	  2	7	2	; slot7.ctx = slot2
		 60	[  0]	TSETS	  7	6	4	; uv0"unknown".pendingFocus = slot7
		 61	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 62	[  0]	UGET 	  7		4	; slot7 = uv4"unknwon"
		 63	[  0]	TGETV	  7	7	2	; slot7 = uv4"unknown"[slot2]
		 64	[  0]	ISNEP	  7		2	; if slot7 ~= true
		 65	[  0]	JMP  	  7		2	; 	goto 68
		 66	[  0]	ISNES	  2		18	; if slot2 ~= "settings"
		 67	[  0]	JMP  	  7		2	; 	goto 70
		 68	[  0]	KPRI 	  7		1	; slot7 = false
		 69	[  0]	JMP  	  8		1	; 	goto 71
		 70	[  0]	KPRI 	  7		2	; slot7 = true
		 71	[  0]	TSETS	  7	6	9	; uv0"unknown".parked = slot7
		 72	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 73	[  0]	KPRI 	  7		0	; slot7 = nil
		 74	[  0]	TSETS	  7	6	8	; uv0"unknown".parkHoldUntil = slot7
		 75	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 76	[  0]	TGETS	  6	6	17	; slot6 = uv0"unknown".settingsReturn
		 77	[  0]	ISNES	  2		18	; if slot2 ~= "settings"
		 78	[  0]	JMP  	  7		11	; 	goto 90
		 79	[  0]	ISNES	  3		1	; if slot3 ~= "confirm"
		 80	[  0]	JMP  	  7		9	; 	goto 90
		 81	[  0]	ISF  	   		6	; if not uv0"unknown".settingsReturn
		 82	[  0]	JMP  	  7		7	; 	goto 90
		 83	[  0]	TGETS	  7	6	15	; slot7 = uv0"unknown".settingsReturn.key
		 84	[  0]	ISNEV	  7		1	; if uv0"unknown".settingsReturn.key ~= slot1
		 85	[  0]	JMP  	  7		4	; 	goto 90
		 86	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 87	[  0]	TGETS	  7	7	4	; slot7 = uv0"unknown".pendingFocus
		 88	[  0]	TGETS	  8	6	13	; slot8 = uv0"unknown".settingsReturn.focus
		 89	[  0]	TSETS	  8	7	0	; uv0"unknown".pendingFocus.wantKey = uv0"unknown".settingsReturn.focus
		 90	[  0]	RET0 	  0		1	; return
	901	[  0]	FNEW 	 64		104	; N/A:0-0: 1 args, 11 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	28	; slot1 = uv0"unknown".pendingFocus
		  3	[  0]	IST  	   		1	; if uv0"unknown".pendingFocus
		  4	[  0]	JMP  	  2		1	; 	goto 6
		  5	[  0]	RET0 	  0		1	; return
		  6	[  0]	TGETS	  2	1	27	; slot2 = uv0"unknown".pendingFocus.t
		  7	[  0]	ADDVV	  2	2	0	; slot2 = uv0"unknown".pendingFocus.t + slot0
		  8	[  0]	TSETS	  2	1	27	; uv0"unknown".pendingFocus.t = slot2
		  9	[  0]	TGETS	  2	1	26	; slot2 = uv0"unknown".pendingFocus.ctx
		 10	[  0]	TGETS	  3	1	27	; slot3 = uv0"unknown".pendingFocus.t
		 11	[  0]	KNUM 	  4		0	; slot4 = 1.5
		 12	[  0]	ISGE 	  4		3	; if slot4 >= uv0"unknown".pendingFocus.t
		 13	[  0]	JMP  	  3		39	; 	goto 53
		 14	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 15	[  0]	KPRI 	  4		0	; slot4 = nil
		 16	[  0]	TSETS	  4	3	28	; uv0"unknown".pendingFocus = slot4
		 17	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 18	[  0]	TGETS	  3	3	25	; slot3 = uv0"unknown".parked
		 19	[  0]	ISF  	   		3	; if not uv0"unknown".parked
		 20	[  0]	JMP  	  4		31	; 	goto 52
		 21	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 22	[  0]	TGETV	  3	3	2	; slot3 = uv1"unknown"[uv0"unknown".pendingFocus.ctx]
		 23	[  0]	ISF  	   		3	; if not slot3
		 24	[  0]	JMP  	  4		8	; 	goto 33
		 25	[  0]	ISEQS	  2		24	; if uv0"unknown".pendingFocus.ctx == "settings"
		 26	[  0]	JMP  	  3		6	; 	goto 33
		 27	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 28	[  0]	TGETS	  3	3	23	; slot3 = uv2"unknown".targets
		 29	[  0]	MOV  	  5		2	; slot5 = uv0"unknown".pendingFocus.ctx
		 30	[  0]	CALL 	  3	2	2	; slot3 = uv2"unknown".targets(slot4)
		 31	[  0]	IST  	   		3	; if uv2"unknown".targets
		 32	[  0]	JMP  	  4		1	; 	goto 34
		 33	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 34	[  0]	LEN  	  4		3	; slot4 = #slot3
		 35	[  0]	KSHORT	  5		0	; slot5 = 0
		 36	[  0]	ISGE 	  5		4	; if slot5 >= slot4
		 37	[  0]	JMP  	  4		11	; 	goto 49
		 38	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 39	[  0]	UGET 	  6		4	; slot6 = uv4"unknwon"
		 40	[  0]	MOV  	  8		3	; slot8 = slot3
		 41	[  0]	CALL 	  6	0	2	; MULTRES = uv4"unknown"(slot7)
		 42	[  0]	CALLM	  4	1	0	;  = uv3"unknown"(, ...MULTRES)
		 43	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 44	[  0]	UGET 	  5		5	; slot5 = uv5"unknwon"
		 45	[  0]	CALL 	  5	2	1	; slot5 = uv5"unknown"()
		 46	[  0]	ADDVN	  5	5	1	; slot5 = uv5"unknown" + 0.3
		 47	[  0]	TSETS	  5	4	22	; uv0"unknown".swallowHoverUntil = slot5
		 48	[  0]	JMP  	  4		3	; 	goto 52
		 49	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 50	[  0]	KPRI 	  5		1	; slot5 = false
		 51	[  0]	TSETS	  5	4	25	; uv0"unknown".parked = slot5
		 52	[  0]	RET0 	  0		1	; return
		 53	[  0]	ISNES	  2		21	; if uv0"unknown".pendingFocus.ctx ~= "game"
		 54	[  0]	JMP  	  3		16	; 	goto 71
		 55	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 56	[  0]	TGETS	  3	3	20	; slot3 = uv0"unknown".ctxCursor
		 57	[  0]	TGETS	  4	1	19	; slot4 = uv0"unknown".pendingFocus.key
		 58	[  0]	TGETV	  3	3	4	; slot3 = uv0"unknown".ctxCursor[uv0"unknown".pendingFocus.key]
		 59	[  0]	ISF  	   		3	; if not slot3
		 60	[  0]	JMP  	  4		6	; 	goto 67
		 61	[  0]	UGET 	  4		6	; slot4 = uv6"unknwon"
		 62	[  0]	TGETS	  4	4	18	; slot4 = uv6"unknown".glideTo
		 63	[  0]	TGETB	  6	3	1	; slot6 = slot3[1]
		 64	[  0]	TGETB	  7	3	2	; slot7 = slot3[2]
		 65	[  0]	KNUM 	  8		2	; slot8 = 0.12
		 66	[  0]	CALL 	  4	1	4	;  = uv6"unknown".glideTo(slot5, slot6, slot7)
		 67	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 68	[  0]	KPRI 	  5		0	; slot5 = nil
		 69	[  0]	TSETS	  5	4	28	; uv0"unknown".pendingFocus = slot5
		 70	[  0]	RET0 	  0		1	; return
		 71	[  0]	ISNES	  2		24	; if uv0"unknown".pendingFocus.ctx ~= "settings"
		 72	[  0]	JMP  	  3		45	; 	goto 118
		 73	[  0]	UGET 	  3		7	; slot3 = uv7"unknwon"
		 74	[  0]	CALL 	  3	2	1	; slot3 = uv7"unknown"()
		 75	[  0]	ISF  	   		3	; if not uv7"unknown"
		 76	[  0]	JMP  	  4		40	; 	goto 117
		 77	[  0]	TGETS	  4	3	17	; slot4 = uv7"unknown".rows
		 78	[  0]	LEN  	  4		4	; slot4 = #uv7"unknown".rows
		 79	[  0]	KSHORT	  5		0	; slot5 = 0
		 80	[  0]	ISGE 	  5		4	; if slot5 >= slot4
		 81	[  0]	JMP  	  4		35	; 	goto 117
		 82	[  0]	KSHORT	  4		1	; slot4 = 1
		 83	[  0]	TGETS	  5	1	16	; slot5 = uv0"unknown".pendingFocus.wantKey
		 84	[  0]	IST  	   		5	; if uv0"unknown".pendingFocus.wantKey
		 85	[  0]	JMP  	  6		5	; 	goto 91
		 86	[  0]	TGETS	  5	3	15	; slot5 = uv7"unknown".st
		 87	[  0]	ISF  	   		5	; if not uv7"unknown".st
		 88	[  0]	JMP  	  6		2	; 	goto 91
		 89	[  0]	TGETS	  5	3	15	; slot5 = uv7"unknown".st
		 90	[  0]	TGETS	  5	5	14	; slot5 = uv7"unknown".st._padFocusKey
		 91	[  0]	TGETS	  6	3	15	; slot6 = uv7"unknown".st
		 92	[  0]	ISF  	   		6	; if not uv7"unknown".st
		 93	[  0]	JMP  	  7		3	; 	goto 97
		 94	[  0]	TGETS	  6	3	15	; slot6 = uv7"unknown".st
		 95	[  0]	KPRI 	  7		0	; slot7 = nil
		 96	[  0]	TSETS	  7	6	14	; uv7"unknown".st._padFocusKey = slot7
		 97	[  0]	ISF  	   		5	; if not uv7"unknown".st._padFocusKey
		 98	[  0]	JMP  	  6		11	; 	goto 110
		 99	[  0]	GGET 	  6		13	; slot6 = _env["ipairs"]
		100	[  0]	TGETS	  8	3	17	; slot8 = uv7"unknown".rows
		101	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		102	[  0]	JMP  	  9		5	; 	goto 108
		103	[  0]	TGETS	 11	10	12	; slot11 = slot10.item
		104	[  0]	TGETS	 11	11	19	; slot11 = <unknown table>.item.key
		105	[  0]	ISNEV	 11		5	; if <unknown table>.item.key ~= uv7"unknown".st._padFocusKey
		106	[  0]	JMP  	 11		1	; 	goto 108
		107	[  0]	MOV  	  4		9	; slot4 = slot9
		108	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, uv7"unknown".rows; slot9, slot10 = ipairs(slot7, uv7"unknown".rows)
		109	[  0]	ITERL	  9		-7	; uv7"unknown".rows = slot9; if slot9 != nil goto 103
		110	[  0]	UGET 	  6		8	; slot6 = uv8"unknwon"
		111	[  0]	MOV  	  8		3	; slot8 = uv7"unknown"
		112	[  0]	MOV  	  9		4	; slot9 = slot4
		113	[  0]	CALL 	  6	1	3	;  = uv8"unknown"(slot7, uv7"unknown")
		114	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		115	[  0]	KPRI 	  7		0	; slot7 = nil
		116	[  0]	TSETS	  7	6	28	; uv0"unknown".pendingFocus = slot7
		117	[  0]	RET0 	  0		1	; return
		118	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		119	[  0]	TGETV	  3	3	2	; slot3 = uv1"unknown"[uv0"unknown".pendingFocus.ctx]
		120	[  0]	IST  	   		3	; if slot3
		121	[  0]	JMP  	  3		11	; 	goto 133
		122	[  0]	UGET 	  3		9	; slot3 = uv9"unknwon"
		123	[  0]	TGETV	  3	3	2	; slot3 = uv9"unknown"[uv0"unknown".pendingFocus.ctx]
		124	[  0]	IST  	   		3	; if slot3
		125	[  0]	JMP  	  3		7	; 	goto 133
		126	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		127	[  0]	KPRI 	  4		0	; slot4 = nil
		128	[  0]	TSETS	  4	3	28	; uv0"unknown".pendingFocus = slot4
		129	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		130	[  0]	KPRI 	  4		1	; slot4 = false
		131	[  0]	TSETS	  4	3	25	; uv0"unknown".parked = slot4
		132	[  0]	RET0 	  0		1	; return
		133	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		134	[  0]	TGETS	  3	3	23	; slot3 = uv2"unknown".targets
		135	[  0]	MOV  	  5		2	; slot5 = uv0"unknown".pendingFocus.ctx
		136	[  0]	CALL 	  3	2	2	; slot3 = uv2"unknown".targets(slot4)
		137	[  0]	LEN  	  4		3	; slot4 = #uv2"unknown".targets
		138	[  0]	ISNEN	  4		3	; if slot4 ~= 0
		139	[  0]	JMP  	  4		1	; 	goto 141
		140	[  0]	RET0 	  0		1	; return
		141	[  0]	ISNES	  2		11	; if uv0"unknown".pendingFocus.ctx ~= "core"
		142	[  0]	JMP  	  4		18	; 	goto 161
		143	[  0]	TGETS	  4	1	27	; slot4 = uv0"unknown".pendingFocus.t
		144	[  0]	KNUM 	  5		4	; slot5 = 1.2
		145	[  0]	ISGE 	  4		5	; if uv0"unknown".pendingFocus.t >= slot5
		146	[  0]	JMP  	  4		14	; 	goto 161
		147	[  0]	KPRI 	  4		1	; slot4 = false
		148	[  0]	GGET 	  5		13	; slot5 = _env["ipairs"]
		149	[  0]	MOV  	  7		3	; slot7 = uv2"unknown".targets
		150	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(uv0"unknown")
		151	[  0]	JMP  	  8		4	; 	goto 156
		152	[  0]	TGETS	 10	9	10	; slot10 = slot9.default
		153	[  0]	ISF  	   		10	; if not <unknown table>.default
		154	[  0]	JMP  	 11		1	; 	goto 156
		155	[  0]	KPRI 	  4		2	; slot4 = true
		156	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, uv0"unknown", uv2"unknown".targets; slot8, slot9 = ipairs(uv0"unknown", uv2"unknown".targets)
		157	[  0]	ITERL	  8		-6	; uv2"unknown".targets = uv7"unknown"; if uv7"unknown" != nil goto 152
		158	[  0]	IST  	   		4	; if slot4
		159	[  0]	JMP  	  5		1	; 	goto 161
		160	[  0]	RET0 	  0		1	; return
		161	[  0]	UGET 	  4		6	; slot4 = uv6"unknwon"
		162	[  0]	TGETS	  4	4	9	; slot4 = uv6"unknown".get
		163	[  0]	CALL 	  4	3	1	; slot4, slot5 = uv6"unknown".get()
		164	[  0]	TGETS	  6	1	8	; slot6 = uv0"unknown".pendingFocus.keepIfOnTarget
		165	[  0]	ISF  	   		6	; if not uv0"unknown".pendingFocus.keepIfOnTarget
		166	[  0]	JMP  	  7		15	; 	goto 182
		167	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		168	[  0]	TGETS	  6	6	7	; slot6 = uv2"unknown".at
		169	[  0]	MOV  	  8		3	; slot8 = uv2"unknown".targets
		170	[  0]	MOV  	  9		4	; slot9 = uv6"unknown".get
		171	[  0]	MOV  	 10		5	; slot10 = ipairs
		172	[  0]	CALL 	  6	2	4	; slot6 = uv2"unknown".at(uv2"unknown".targets, uv2"unknown".targets, uv6"unknown".get)
		173	[  0]	ISF  	   		6	; if not uv2"unknown".at
		174	[  0]	JMP  	  7		7	; 	goto 182
		175	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		176	[  0]	KPRI 	  7		0	; slot7 = nil
		177	[  0]	TSETS	  7	6	28	; uv0"unknown".pendingFocus = slot7
		178	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		179	[  0]	KPRI 	  7		1	; slot7 = false
		180	[  0]	TSETS	  7	6	25	; uv0"unknown".parked = slot7
		181	[  0]	RET0 	  0		1	; return
		182	[  0]	UGET 	  6		4	; slot6 = uv4"unknwon"
		183	[  0]	MOV  	  8		3	; slot8 = uv2"unknown".targets
		184	[  0]	CALL 	  6	2	2	; slot6 = uv4"unknown"(slot7)
		185	[  0]	ISF  	   		6	; if not uv4"unknown"
		186	[  0]	JMP  	  7		11	; 	goto 198
		187	[  0]	TGETS	  7	6	6	; slot7 = uv4"unknown".id
		188	[  0]	ISEQS	  7		5	; if uv4"unknown".id == "back"
		189	[  0]	JMP  	  7		3	; 	goto 193
		190	[  0]	TGETS	  7	6	6	; slot7 = uv4"unknown".id
		191	[  0]	ISNES	  7		4	; if uv4"unknown".id ~= "core_back"
		192	[  0]	JMP  	  7		5	; 	goto 198
		193	[  0]	TGETS	  7	1	27	; slot7 = uv0"unknown".pendingFocus.t
		194	[  0]	KNUM 	  8		4	; slot8 = 1.2
		195	[  0]	ISGE 	  7		8	; if uv0"unknown".pendingFocus.t >= slot8
		196	[  0]	JMP  	  7		1	; 	goto 198
		197	[  0]	RET0 	  0		1	; return
		198	[  0]	UGET 	  7		10	; slot7 = uv10"unknwon"
		199	[  0]	MOV  	  9		6	; slot9 = uv4"unknown"
		200	[  0]	CALL 	  7	3	2	; slot7, slot8 = uv10"unknown"(slot8)
		201	[  0]	TGETS	  9	1	3	; slot9 = uv0"unknown".pendingFocus.lastX
		202	[  0]	ISF  	   		9	; if not uv0"unknown".pendingFocus.lastX
		203	[  0]	JMP  	  9		14	; 	goto 218
		204	[  0]	GGET 	  9		2	; slot9 = _env["math"]
		205	[  0]	TGETS	  9	9	1	; slot9 = math.abs
		206	[  0]	TGETS	 11	1	3	; slot11 = uv0"unknown".pendingFocus.lastX
		207	[  0]	SUBVV	 11	7	11	; slot11 = uv10"unknown" - uv0"unknown".pendingFocus.lastX
		208	[  0]	CALL 	  9	2	2	; slot9 = math.abs(ipairs)
		209	[  0]	GGET 	 10		2	; slot10 = _env["math"]
		210	[  0]	TGETS	 10	10	1	; slot10 = math.abs
		211	[  0]	TGETS	 12	1	0	; slot12 = uv0"unknown".pendingFocus.lastY
		212	[  0]	SUBVV	 12	8	12	; slot12 = slot8 - uv0"unknown".pendingFocus.lastY
		213	[  0]	CALL 	 10	2	2	; slot10 = math.abs(slot11)
		214	[  0]	ADDVV	  9	9	10	; slot9 = math.abs + math.abs
		215	[  0]	KNUM 	 10		5	; slot10 = 0.5
		216	[  0]	ISGE 	 10		9	; if slot10 >= slot9
		217	[  0]	JMP  	  9		4	; 	goto 222
		218	[  0]	MOV  	  9		7	; slot9 = uv10"unknown"
		219	[  0]	TSETS	  8	1	0	; uv0"unknown".pendingFocus.lastY = slot8
		220	[  0]	TSETS	  9	1	3	; uv0"unknown".pendingFocus.lastX = uv10"unknown"
		221	[  0]	RET0 	  0		1	; return
		222	[  0]	UGET 	  9		3	; slot9 = uv3"unknwon"
		223	[  0]	MOV  	 11		6	; slot11 = uv4"unknown"
		224	[  0]	CALL 	  9	1	2	;  = uv3"unknown"(slot10)
		225	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		226	[  0]	KPRI 	 10		0	; slot10 = nil
		227	[  0]	TSETS	 10	9	28	; uv0"unknown".pendingFocus = slot10
		228	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		229	[  0]	UGET 	 10		5	; slot10 = uv5"unknwon"
		230	[  0]	CALL 	 10	2	1	; slot10 = uv5"unknown"()
		231	[  0]	ADDVN	 10	10	1	; slot10 = uv5"unknown" + 0.3
		232	[  0]	TSETS	 10	9	22	; uv0"unknown".swallowHoverUntil = slot10
		233	[  0]	RET0 	  0		1	; return
	902	[  0]	FNEW 	 65		103	; N/A:0-0: 3 args, 6 upvalues, 17 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  2	[  0]	CALL 	  3	2	1	; slot3 = uv0"unknown"()
		  3	[  0]	ISFC 	  4		3	; slot4 = uv0"unknown"; if not uv0"unknown"
		  4	[  0]	JMP  	  4		1	; 	goto 6
		  5	[  0]	TGETS	  4	3	15	; slot4 = uv0"unknown".stageSelect
		  6	[  0]	ISF  	   		4	; if not uv0"unknown".stageSelect
		  7	[  0]	JMP  	  5		6	; 	goto 14
		  8	[  0]	TGETS	  5	3	14	; slot5 = uv0"unknown".padStagePage
		  9	[  0]	ISF  	   		5	; if not uv0"unknown".padStagePage
		 10	[  0]	JMP  	  5		3	; 	goto 14
		 11	[  0]	TGETS	  5	4	13	; slot5 = uv0"unknown".stageSelect.diffActive
		 12	[  0]	ISF  	   		5	; if not uv0"unknown".stageSelect.diffActive
		 13	[  0]	JMP  	  6		2	; 	goto 16
		 14	[  0]	KPRI 	  5		1	; slot5 = false
		 15	[  0]	RET1 	  5		2	; return slot5
		 16	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 17	[  0]	GGET 	  6		12	; slot6 = _env["ipairs"]
		 18	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 19	[  0]	TGETS	  8	8	11	; slot8 = uv1"unknown".targets
		 20	[  0]	KSTR 	 10		10	; slot10 = "stage"
		 21	[  0]	CALL 	  8	0	2	; MULTRES = uv1"unknown".targets(slot9)
		 22	[  0]	CALLM	  6	4	0	; slot6, slot7, slot8 = ipairs(, ...MULTRES)
		 23	[  0]	JMP  	  9		19	; 	goto 43
		 24	[  0]	GGET 	 11		9	; slot11 = _env["type"]
		 25	[  0]	TGETS	 13	10	8	; slot13 = slot10.id
		 26	[  0]	CALL 	 11	2	2	; slot11 = type(slot12)
		 27	[  0]	ISNES	 11		7	; if type ~= "string"
		 28	[  0]	JMP  	 11		8	; 	goto 37
		 29	[  0]	GGET 	 11		6	; slot11 = _env["tonumber"]
		 30	[  0]	TGETS	 13	10	8	; slot13 = slot10.id
		 31	[  0]	MOV  	 15		13	; slot15 = <unknown table>.id
		 32	[  0]	TGETS	 13	13	5	; slot13 = <unknown table>.id.match
		 33	[  0]	KSTR 	 16		4	; slot16 = "^stage(%d+)$"
		 34	[  0]	CALL 	 13	0	3	; MULTRES = <unknown table>.id.match(slot14, <unknown table>.id)
		 35	[  0]	CALLM	 11	2	0	; slot11 = tonumber(, ...MULTRES)
		 36	[  0]	JMP  	 12		3	; 	goto 40
		 37	[  0]	KPRI 	 11		1	; slot11 = false
		 38	[  0]	JMP  	 12		1	; 	goto 40
		 39	[  0]	KPRI 	 11		2	; slot11 = true
		 40	[  0]	ISF  	   		11	; if not slot11
		 41	[  0]	JMP  	 12		1	; 	goto 43
		 42	[  0]	TSETV	 10	5	11	; slot5[slot11] = slot10
		 43	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, uv1"unknown".targets; slot9, slot10 = ipairs(slot7, uv1"unknown".targets)
		 44	[  0]	ITERL	  9		-21	; uv1"unknown".targets = slot9; if slot9 != nil goto 24
		 45	[  0]	LEN  	  6		5	; slot6 = #slot5
		 46	[  0]	ISNEN	  6		0	; if slot6 ~= 0
		 47	[  0]	JMP  	  7		2	; 	goto 50
		 48	[  0]	KPRI 	  7		1	; slot7 = false
		 49	[  0]	RET1 	  7		2	; return slot7
		 50	[  0]	ISFC 	  7		1	; slot7 = slot1; if not slot1
		 51	[  0]	JMP  	  7		16	; 	goto 68
		 52	[  0]	GGET 	  7		9	; slot7 = _env["type"]
		 53	[  0]	TGETS	  9	1	8	; slot9 = slot1.id
		 54	[  0]	CALL 	  7	2	2	; slot7 = type(uv1"unknown".targets)
		 55	[  0]	ISNES	  7		7	; if type ~= "string"
		 56	[  0]	JMP  	  7		8	; 	goto 65
		 57	[  0]	GGET 	  7		6	; slot7 = _env["tonumber"]
		 58	[  0]	TGETS	  9	1	8	; slot9 = slot1.id
		 59	[  0]	MOV  	 11		9	; slot11 = <unknown table>.id
		 60	[  0]	TGETS	  9	9	5	; slot9 = <unknown table>.id.match
		 61	[  0]	KSTR 	 12		4	; slot12 = "^stage(%d+)$"
		 62	[  0]	CALL 	  9	0	3	; MULTRES = <unknown table>.id.match(slot10, <unknown table>.id)
		 63	[  0]	CALLM	  7	2	0	; slot7 = tonumber(, ...MULTRES)
		 64	[  0]	JMP  	  8		3	; 	goto 68
		 65	[  0]	KPRI 	  7		1	; slot7 = false
		 66	[  0]	JMP  	  8		1	; 	goto 68
		 67	[  0]	KPRI 	  7		2	; slot7 = true
		 68	[  0]	IST  	   		2	; if slot2
		 69	[  0]	JMP  	  8		17	; 	goto 87
		 70	[  0]	IST  	   		7	; if slot7
		 71	[  0]	JMP  	  8		2	; 	goto 74
		 72	[  0]	KPRI 	  8		1	; slot8 = false
		 73	[  0]	RET1 	  8		2	; return slot8
		 74	[  0]	KSHORT	  8		0	; slot8 = 0
		 75	[  0]	ISGE 	  8		0	; if slot8 >= slot0
		 76	[  0]	JMP  	  8		2	; 	goto 79
		 77	[  0]	ISLT 	  7		6	; if slot7 < slot6
		 78	[  0]	JMP  	  8		6	; 	goto 85
		 79	[  0]	KSHORT	  8		0	; slot8 = 0
		 80	[  0]	ISGE 	  0		8	; if slot0 >= slot8
		 81	[  0]	JMP  	  8		5	; 	goto 87
		 82	[  0]	KSHORT	  8		1	; slot8 = 1
		 83	[  0]	ISGE 	  8		7	; if slot8 >= slot7
		 84	[  0]	JMP  	  8		2	; 	goto 87
		 85	[  0]	KPRI 	  8		1	; slot8 = false
		 86	[  0]	RET1 	  8		2	; return slot8
		 87	[  0]	TGETS	  8	3	14	; slot8 = uv0"unknown".padStagePage
		 88	[  0]	MOV  	 10		0	; slot10 = slot0
		 89	[  0]	CALL 	  8	2	2	; slot8 = uv0"unknown".padStagePage(<unknown table>.id.match)
		 90	[  0]	IST  	   		8	; if uv0"unknown".padStagePage
		 91	[  0]	JMP  	  8		2	; 	goto 94
		 92	[  0]	KPRI 	  8		1	; slot8 = false
		 93	[  0]	RET1 	  8		2	; return slot8
		 94	[  0]	ISF  	   		2	; if not slot2
		 95	[  0]	JMP  	  8		2	; 	goto 98
		 96	[  0]	ISTC 	  8		7	; slot8 = slot7; if slot7
		 97	[  0]	JMP  	  8		6	; 	goto 104
		 98	[  0]	KSHORT	  8		0	; slot8 = 0
		 99	[  0]	ISGE 	  8		0	; if slot8 >= slot0
		100	[  0]	JMP  	  8		2	; 	goto 103
		101	[  0]	KSHORT	  8		1	; slot8 = 1
		102	[  0]	JMP  	  9		1	; 	goto 104
		103	[  0]	MOV  	  8		6	; slot8 = slot6
		104	[  0]	ISF  	   		8	; if not slot8
		105	[  0]	JMP  	  9		21	; 	goto 127
		106	[  0]	TGETV	  9	5	8	; slot9 = slot5[slot8]
		107	[  0]	ISF  	   		9	; if not slot9
		108	[  0]	JMP  	 10		18	; 	goto 127
		109	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
		110	[  0]	TGETV	 11	5	8	; slot11 = slot5[slot8]
		111	[  0]	CALL 	  9	3	2	; slot9, slot10 = uv2"unknown"(slot10)
		112	[  0]	UGET 	 11		3	; slot11 = uv3"unknwon"
		113	[  0]	TGETS	 11	11	3	; slot11 = uv3"unknown".set
		114	[  0]	MOV  	 13		9	; slot13 = uv2"unknown"
		115	[  0]	MOV  	 14		10	; slot14 = slot10
		116	[  0]	CALL 	 11	1	3	;  = uv3"unknown".set(slot12, uv2"unknown")
		117	[  0]	UGET 	 11		4	; slot11 = uv4"unknwon"
		118	[  0]	KSTR 	 12		10	; slot12 = "stage"
		119	[  0]	MOV  	 13		8	; slot13 = slot8
		120	[  0]	CAT  	 12	12	13	; slot12 = slot12 .. slot13
		121	[  0]	TSETS	 12	11	2	; uv4"unknown".focusId = slot12
		122	[  0]	UGET 	 11		4	; slot11 = uv4"unknwon"
		123	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		124	[  0]	TSETB	  9	12	1	; slot12[1] = uv2"unknown"
		125	[  0]	TSETB	 10	12	2	; slot12[2] = slot10
		126	[  0]	TSETS	 12	11	1	; uv4"unknown".focusAnchor = slot12
		127	[  0]	UGET 	  9		4	; slot9 = uv4"unknwon"
		128	[  0]	UGET 	 10		5	; slot10 = uv5"unknwon"
		129	[  0]	CALL 	 10	2	1	; slot10 = uv5"unknown"()
		130	[  0]	ADDVN	 10	10	1	; slot10 = uv5"unknown" + 1.6
		131	[  0]	TSETS	 10	9	0	; uv4"unknown".swallowHoverUntil = slot10
		132	[  0]	KPRI 	  9		2	; slot9 = true
		133	[  0]	RET1 	  9		2	; return slot9
	903	[  0]	TDUP 	 66		101	; slot66 = copy table#k101
	904	[  0]	TDUP 	 67		102	; slot67 = copy table#k102
	905	[  0]	TSETS	 67	66	467	; slot66.up = slot67
	906	[  0]	TDUP 	 67		100	; slot67 = copy table#k100
	907	[  0]	TSETS	 67	66	465	; slot66.down = slot67
	908	[  0]	TDUP 	 67		99	; slot67 = copy table#k99
	909	[  0]	TSETS	 67	66	463	; slot66.left = slot67
	910	[  0]	TDUP 	 67		98	; slot67 = copy table#k98
	911	[  0]	TSETS	 67	66	461	; slot66.right = slot67
	912	[  0]	KSTR 	 67		97	; slot67 = "navigate"
	913	[  0]	FNEW 	 68		96	; N/A:0-0: 2 args, 9 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISNES	  0		11	; if slot0 ~= "settings"
		  2	[  0]	JMP  	  2		3	; 	goto 6
		  3	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  4	[  0]	MOV  	  4		1	; slot4 = slot1
		  5	[  0]	CALLT	  2		2	; return uv0"unknown"(slot3)
		  6	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  7	[  0]	TGETS	  2	2	10	; slot2 = uv1"unknown".targets
		  8	[  0]	MOV  	  4		0	; slot4 = slot0
		  9	[  0]	CALL 	  2	2	2	; slot2 = uv1"unknown".targets(slot3)
		 10	[  0]	LEN  	  3		2	; slot3 = #slot2
		 11	[  0]	ISNEN	  3		0	; if slot3 ~= 0
		 12	[  0]	JMP  	  3		17	; 	goto 30
		 13	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 14	[  0]	TGETV	  3	3	1	; slot3 = uv2"unknown"[slot1]
		 15	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 16	[  0]	TGETS	  4	4	9	; slot4 = uv3"unknown".get
		 17	[  0]	CALL 	  4	3	1	; slot4, slot5 = uv3"unknown".get()
		 18	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		 19	[  0]	TGETS	  6	6	8	; slot6 = uv3"unknown".glideTo
		 20	[  0]	TGETB	  8	3	1	; slot8 = slot3[1]
		 21	[  0]	MULVN	  8	8	1	; slot8 = slot8 * 24
		 22	[  0]	ADDVV	  8	4	8	; slot8 = uv3"unknown".get + slot8
		 23	[  0]	TGETB	  9	3	2	; slot9 = slot3[2]
		 24	[  0]	MULVN	  9	9	1	; slot9 = slot9 * 24
		 25	[  0]	ADDVV	  9	5	9	; slot9 = slot5 + slot9
		 26	[  0]	KNUM 	 10		2	; slot10 = 0.06
		 27	[  0]	CALL 	  6	1	4	;  = uv3"unknown".glideTo(slot7, slot8, slot9)
		 28	[  0]	KPRI 	  6		2	; slot6 = true
		 29	[  0]	RET1 	  6		2	; return slot6
		 30	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
		 31	[  0]	TGETS	  3	3	7	; slot3 = uv3"unknown".glideTarget
		 32	[  0]	CALL 	  3	3	1	; slot3, slot4 = uv3"unknown".glideTarget()
		 33	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 34	[  0]	TGETS	  5	5	6	; slot5 = uv1"unknown".at
		 35	[  0]	MOV  	  7		2	; slot7 = slot2
		 36	[  0]	MOV  	  8		3	; slot8 = uv3"unknown".glideTarget
		 37	[  0]	MOV  	  9		4	; slot9 = uv3"unknown".get
		 38	[  0]	CALL 	  5	2	4	; slot5 = uv1"unknown".at(slot6, slot7, uv3"unknown".glideTarget)
		 39	[  0]	ISF  	   		5	; if not uv1"unknown".at
		 40	[  0]	JMP  	  6		4	; 	goto 45
		 41	[  0]	UGET 	  6		4	; slot6 = uv4"unknwon"
		 42	[  0]	TGETS	  6	6	5	; slot6 = uv4"unknown".parked
		 43	[  0]	ISF  	   		6	; if not uv4"unknown".parked
		 44	[  0]	JMP  	  7		12	; 	goto 57
		 45	[  0]	UGET 	  6		5	; slot6 = uv5"unknwon"
		 46	[  0]	TGETV	  6	6	0	; slot6 = uv5"unknown"[slot0]
		 47	[  0]	ISF  	   		6	; if not slot6
		 48	[  0]	JMP  	  7		8	; 	goto 57
		 49	[  0]	UGET 	  6		4	; slot6 = uv4"unknwon"
		 50	[  0]	KPRI 	  7		0	; slot7 = nil
		 51	[  0]	TSETS	  7	6	4	; uv4"unknown".pendingFocus = slot7
		 52	[  0]	UGET 	  6		6	; slot6 = uv6"unknwon"
		 53	[  0]	UGET 	  8		7	; slot8 = uv7"unknwon"
		 54	[  0]	MOV  	 10		2	; slot10 = slot2
		 55	[  0]	CALL 	  8	0	2	; MULTRES = uv7"unknown"(uv3"unknown".get)
		 56	[  0]	CALLMT	  6		0	; return uv6"unknown"(, ...MULTRES)
		 57	[  0]	ISNES	  0		3	; if slot0 ~= "stage"
		 58	[  0]	JMP  	  6		16	; 	goto 75
		 59	[  0]	ISEQS	  1		2	; if slot1 == "left"
		 60	[  0]	JMP  	  6		2	; 	goto 63
		 61	[  0]	ISNES	  1		1	; if slot1 ~= "right"
		 62	[  0]	JMP  	  6		12	; 	goto 75
		 63	[  0]	UGET 	  6		8	; slot6 = uv8"unknwon"
		 64	[  0]	ISNES	  1		1	; if slot1 ~= "right"
		 65	[  0]	JMP  	  8		2	; 	goto 68
		 66	[  0]	KSHORT	  8		1	; slot8 = 1
		 67	[  0]	JMP  	  9		1	; 	goto 69
		 68	[  0]	KSHORT	  8		65535	; slot8 = 65535
		 69	[  0]	MOV  	  9		5	; slot9 = uv1"unknown".at
		 70	[  0]	CALL 	  6	2	3	; slot6 = uv8"unknown"(slot7, slot8)
		 71	[  0]	ISF  	   		6	; if not uv8"unknown"
		 72	[  0]	JMP  	  7		2	; 	goto 75
		 73	[  0]	KPRI 	  6		2	; slot6 = true
		 74	[  0]	RET1 	  6		2	; return slot6
		 75	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 76	[  0]	TGETV	  6	6	1	; slot6 = uv2"unknown"[slot1]
		 77	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 78	[  0]	TGETS	  7	7	0	; slot7 = uv1"unknown".pick
		 79	[  0]	MOV  	  9		2	; slot9 = slot2
		 80	[  0]	MOV  	 10		3	; slot10 = uv3"unknown".glideTarget
		 81	[  0]	MOV  	 11		4	; slot11 = uv3"unknown".get
		 82	[  0]	TGETB	 12	6	1	; slot12 = slot6[1]
		 83	[  0]	TGETB	 13	6	2	; slot13 = slot6[2]
		 84	[  0]	MOV  	 14		5	; slot14 = uv1"unknown".at
		 85	[  0]	CALL 	  7	2	7	; slot7 = uv1"unknown".pick(slot8, slot9, uv3"unknown".glideTarget, uv3"unknown".get, slot12, slot13)
		 86	[  0]	ISF  	   		7	; if not slot7
		 87	[  0]	JMP  	  8		3	; 	goto 91
		 88	[  0]	UGET 	  8		6	; slot8 = uv6"unknwon"
		 89	[  0]	MOV  	 10		7	; slot10 = slot7
		 90	[  0]	CALLT	  8		2	; return uv6"unknown"(slot9)
		 91	[  0]	KPRI 	  8		1	; slot8 = false
		 92	[  0]	RET1 	  8		2	; return slot8
	914	[  0]	TSETV	 68	32	67	; slot32[slot67] = slot68
	915	[  0]	FNEW 	 67		95	; N/A:0-0: 2 args, 22 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	43	; slot2 = uv0"unknown".ctx
		  3	[  0]	IST  	   		2	; if uv0"unknown".ctx
		  4	[  0]	JMP  	  3		3	; 	goto 8
		  5	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  6	[  0]	TGETS	  2	2	42	; slot2 = uv1"unknown".detect
		  7	[  0]	CALL 	  2	2	1	; slot2 = uv1"unknown".detect()
		  8	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		  9	[  0]	TGETS	  3	3	41	; slot3 = uv2"unknown".actionForPad
		 10	[  0]	MOV  	  5		0	; slot5 = slot0
		 11	[  0]	CALL 	  3	2	2	; slot3 = uv2"unknown".actionForPad(slot4)
		 12	[  0]	ISF  	   		1	; if not slot1
		 13	[  0]	JMP  	  4		287	; 	goto 301
		 14	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 15	[  0]	TGETS	  4	4	40	; slot4 = uv3"unknown".active
		 16	[  0]	ISF  	   		4	; if not uv3"unknown".active
		 17	[  0]	JMP  	  5		45	; 	goto 63
		 18	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 19	[  0]	TGETS	  4	4	40	; slot4 = uv3"unknown".active
		 20	[  0]	TGETS	  4	4	39	; slot4 = uv3"unknown".active.device
		 21	[  0]	ISNES	  4		38	; if uv3"unknown".active.device ~= "keyboard"
		 22	[  0]	JMP  	  4		8	; 	goto 31
		 23	[  0]	ISNES	  3		37	; if uv2"unknown".actionForPad ~= "back"
		 24	[  0]	JMP  	  4		6	; 	goto 31
		 25	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 26	[  0]	TGETS	  4	4	36	; slot4 = uv3"unknown".cancel
		 27	[  0]	CALL 	  4	1	1	;  = uv3"unknown".cancel()
		 28	[  0]	UGET 	  4		4	; slot4 = uv4"unknwon"
		 29	[  0]	CALL 	  4	1	1	;  = uv4"unknown"()
		 30	[  0]	JMP  	  4		31	; 	goto 62
		 31	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 32	[  0]	TGETS	  4	4	40	; slot4 = uv3"unknown".active
		 33	[  0]	TGETS	  4	4	39	; slot4 = uv3"unknown".active.device
		 34	[  0]	ISNES	  4		35	; if uv3"unknown".active.device ~= "pad"
		 35	[  0]	JMP  	  4		26	; 	goto 62
		 36	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 37	[  0]	TGETS	  4	4	40	; slot4 = uv3"unknown".active
		 38	[  0]	TGETS	  4	4	34	; slot4 = uv3"unknown".active.armed
		 39	[  0]	ISF  	   		4	; if not uv3"unknown".active.armed
		 40	[  0]	JMP  	  5		21	; 	goto 62
		 41	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 42	[  0]	TGETS	  4	4	33	; slot4 = uv2"unknown".PAD_BINDABLE
		 43	[  0]	TGETV	  4	4	0	; slot4 = uv2"unknown".PAD_BINDABLE[slot0]
		 44	[  0]	ISF  	   		4	; if not slot4
		 45	[  0]	JMP  	  5		16	; 	goto 62
		 46	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 47	[  0]	TGETS	  4	4	32	; slot4 = uv2"unknown".setPad
		 48	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		 49	[  0]	TGETS	  6	6	40	; slot6 = uv3"unknown".active
		 50	[  0]	TGETS	  6	6	31	; slot6 = uv3"unknown".active.action
		 51	[  0]	MOV  	  7		0	; slot7 = slot0
		 52	[  0]	CALL 	  4	2	3	; slot4 = uv2"unknown".setPad(slot5, uv3"unknown".active.action)
		 53	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
		 54	[  0]	TGETS	  5	5	36	; slot5 = uv3"unknown".cancel
		 55	[  0]	CALL 	  5	1	1	;  = uv3"unknown".cancel()
		 56	[  0]	ISF  	   		4	; if not uv2"unknown".setPad
		 57	[  0]	JMP  	  5		4	; 	goto 62
		 58	[  0]	UGET 	  5		4	; slot5 = uv4"unknwon"
		 59	[  0]	CALL 	  5	1	1	;  = uv4"unknown"()
		 60	[  0]	UGET 	  5		5	; slot5 = uv5"unknwon"
		 61	[  0]	CALL 	  5	1	1	;  = uv5"unknown"()
		 62	[  0]	RET0 	  0		1	; return
		 63	[  0]	MOV  	  6		0	; slot6 = slot0
		 64	[  0]	TGETS	  4	0	30	; slot4 = slot0.match
		 65	[  0]	KSTR 	  7		29	; slot7 = "^dp(.+)$"
		 66	[  0]	CALL 	  4	2	3	; slot4 = <unknown table>.match(uv5"unknown", slot6)
		 67	[  0]	ISF  	   		4	; if not <unknown table>.match
		 68	[  0]	JMP  	  5		19	; 	goto 88
		 69	[  0]	UGET 	  5		6	; slot5 = uv6"unknwon"
		 70	[  0]	TGETV	  5	5	4	; slot5 = uv6"unknown"[<unknown table>.match]
		 71	[  0]	ISF  	   		5	; if not slot5
		 72	[  0]	JMP  	  6		15	; 	goto 88
		 73	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 74	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 75	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 76	[  0]	MOV  	  8		4	; slot8 = <unknown table>.match
		 77	[  0]	KSHORT	  9		0	; slot9 = 0
		 78	[  0]	KSTR 	 10		25	; slot10 = "dpad"
		 79	[  0]	TSETS	 10	7	26	; uv0"unknown".repeatSource = slot10
		 80	[  0]	TSETS	  9	6	27	; uv0"unknown".repeatT = slot9
		 81	[  0]	TSETS	  8	5	28	; uv0"unknown".repeatDir = <unknown table>.match
		 82	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 83	[  0]	TGETS	  5	5	24	; slot5 = uv1"unknown".navigate
		 84	[  0]	MOV  	  7		2	; slot7 = uv1"unknown".detect
		 85	[  0]	MOV  	  8		4	; slot8 = <unknown table>.match
		 86	[  0]	CALL 	  5	1	3	;  = uv1"unknown".navigate(uv0"unknown", uv1"unknown".detect)
		 87	[  0]	RET0 	  0		1	; return
		 88	[  0]	ISNES	  2		23	; if uv1"unknown".detect ~= "stage"
		 89	[  0]	JMP  	  5		29	; 	goto 119
		 90	[  0]	ISEQS	  0		22	; if slot0 == "leftshoulder"
		 91	[  0]	JMP  	  5		2	; 	goto 94
		 92	[  0]	ISNES	  0		21	; if slot0 ~= "rightshoulder"
		 93	[  0]	JMP  	  5		25	; 	goto 119
		 94	[  0]	ISEQS	  3		20	; if uv2"unknown".actionForPad == "confirm"
		 95	[  0]	JMP  	  5		23	; 	goto 119
		 96	[  0]	ISEQS	  3		37	; if uv2"unknown".actionForPad == "back"
		 97	[  0]	JMP  	  5		21	; 	goto 119
		 98	[  0]	UGET 	  5		7	; slot5 = uv7"unknwon"
		 99	[  0]	TGETS	  5	5	19	; slot5 = uv7"unknown".glideTarget
		100	[  0]	CALL 	  5	3	1	; slot5, slot6 = uv7"unknown".glideTarget()
		101	[  0]	UGET 	  7		8	; slot7 = uv8"unknwon"
		102	[  0]	ISNES	  0		21	; if slot0 ~= "rightshoulder"
		103	[  0]	JMP  	  9		2	; 	goto 106
		104	[  0]	KSHORT	  9		1	; slot9 = 1
		105	[  0]	JMP  	 10		1	; 	goto 107
		106	[  0]	KSHORT	  9		65535	; slot9 = 65535
		107	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
		108	[  0]	TGETS	 10	10	18	; slot10 = uv1"unknown".at
		109	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		110	[  0]	TGETS	 12	12	17	; slot12 = uv1"unknown".targets
		111	[  0]	KSTR 	 14		23	; slot14 = "stage"
		112	[  0]	CALL 	 12	2	2	; slot12 = uv1"unknown".targets(slot13)
		113	[  0]	MOV  	 13		5	; slot13 = uv7"unknown".glideTarget
		114	[  0]	MOV  	 14		6	; slot14 = uv0"unknown"
		115	[  0]	CALL 	 10	2	4	; slot10 = uv1"unknown".at(slot11, uv1"unknown".targets, uv7"unknown".glideTarget)
		116	[  0]	KPRI 	 11		2	; slot11 = true
		117	[  0]	CALL 	  7	1	4	;  = uv8"unknown"(<unknown table>.match, slot9, uv1"unknown".at)
		118	[  0]	RET0 	  0		1	; return
		119	[  0]	ISNES	  2		16	; if uv1"unknown".detect ~= "upgrade"
		120	[  0]	JMP  	  5		25	; 	goto 146
		121	[  0]	ISEQS	  0		22	; if slot0 == "leftshoulder"
		122	[  0]	JMP  	  5		2	; 	goto 125
		123	[  0]	ISNES	  0		21	; if slot0 ~= "rightshoulder"
		124	[  0]	JMP  	  5		21	; 	goto 146
		125	[  0]	UGET 	  5		9	; slot5 = uv9"unknwon"
		126	[  0]	CALL 	  5	2	1	; slot5 = uv9"unknown"()
		127	[  0]	ISF  	   		5	; if not uv9"unknown"
		128	[  0]	JMP  	  6		16	; 	goto 145
		129	[  0]	TGETS	  6	5	15	; slot6 = uv9"unknown".wheelmoved
		130	[  0]	ISF  	   		6	; if not uv9"unknown".wheelmoved
		131	[  0]	JMP  	  7		13	; 	goto 145
		132	[  0]	UGET 	  6		7	; slot6 = uv7"unknwon"
		133	[  0]	TGETS	  6	6	14	; slot6 = uv7"unknown".get
		134	[  0]	CALL 	  6	3	1	; slot6, slot7 = uv7"unknown".get()
		135	[  0]	TGETS	  8	5	15	; slot8 = uv9"unknown".wheelmoved
		136	[  0]	KSHORT	 10		0	; slot10 = 0
		137	[  0]	ISNES	  0		21	; if slot0 ~= "rightshoulder"
		138	[  0]	JMP  	 11		2	; 	goto 141
		139	[  0]	KSHORT	 11		1	; slot11 = 1
		140	[  0]	JMP  	 12		1	; 	goto 142
		141	[  0]	KSHORT	 11		65535	; slot11 = 65535
		142	[  0]	MOV  	 12		6	; slot12 = uv7"unknown".get
		143	[  0]	MOV  	 13		7	; slot13 = uv8"unknown"
		144	[  0]	CALL 	  8	1	5	;  = uv9"unknown".wheelmoved(slot9, slot10, slot11, uv7"unknown".get)
		145	[  0]	RET0 	  0		1	; return
		146	[  0]	IST  	   		3	; if uv2"unknown".actionForPad
		147	[  0]	JMP  	  5		1	; 	goto 149
		148	[  0]	RET0 	  0		1	; return
		149	[  0]	ISNES	  3		20	; if uv2"unknown".actionForPad ~= "confirm"
		150	[  0]	JMP  	  5		67	; 	goto 218
		151	[  0]	UGET 	  5		10	; slot5 = uv10"unknwon"
		152	[  0]	TGETV	  5	5	2	; slot5 = uv10"unknown"[uv1"unknown".detect]
		153	[  0]	ISF  	   		5	; if not slot5
		154	[  0]	JMP  	  6		63	; 	goto 218
		155	[  0]	UGET 	  5		7	; slot5 = uv7"unknwon"
		156	[  0]	TGETS	  5	5	19	; slot5 = uv7"unknown".glideTarget
		157	[  0]	CALL 	  5	3	1	; slot5, slot6 = uv7"unknown".glideTarget()
		158	[  0]	ISNES	  2		13	; if uv1"unknown".detect ~= "settings"
		159	[  0]	JMP  	  7		28	; 	goto 188
		160	[  0]	UGET 	  7		11	; slot7 = uv11"unknwon"
		161	[  0]	CALL 	  7	2	1	; slot7 = uv11"unknown"()
		162	[  0]	ISF  	   		7	; if not uv11"unknown"
		163	[  0]	JMP  	  8		54	; 	goto 218
		164	[  0]	TGETS	  8	7	12	; slot8 = uv11"unknown".rows
		165	[  0]	LEN  	  8		8	; slot8 = #uv11"unknown".rows
		166	[  0]	KSHORT	  9		0	; slot9 = 0
		167	[  0]	ISGE 	  9		8	; if slot9 >= slot8
		168	[  0]	JMP  	  8		49	; 	goto 218
		169	[  0]	UGET 	  8		12	; slot8 = uv12"unknwon"
		170	[  0]	MOV  	 10		7	; slot10 = uv11"unknown"
		171	[  0]	CALL 	  8	2	2	; slot8 = uv12"unknown"(slot9)
		172	[  0]	IST  	   		8	; if uv12"unknown"
		173	[  0]	JMP  	  8		44	; 	goto 218
		174	[  0]	UGET 	  8		13	; slot8 = uv13"unknwon"
		175	[  0]	MOV  	 10		7	; slot10 = uv11"unknown"
		176	[  0]	CALL 	  8	2	2	; slot8 = uv13"unknown"(slot9)
		177	[  0]	IST  	   		8	; if uv13"unknown"
		178	[  0]	JMP  	  8		39	; 	goto 218
		179	[  0]	UGET 	  8		14	; slot8 = uv14"unknwon"
		180	[  0]	MOV  	 10		7	; slot10 = uv11"unknown"
		181	[  0]	KSHORT	 11		1	; slot11 = 1
		182	[  0]	CALL 	  8	1	3	;  = uv14"unknown"(slot9, uv11"unknown")
		183	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		184	[  0]	KPRI 	  9		0	; slot9 = nil
		185	[  0]	TSETS	  9	8	11	; uv0"unknown".pendingFocus = slot9
		186	[  0]	RET0 	  0		1	; return
		187	[  0]	JMP  	  7		30	; 	goto 218
		188	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		189	[  0]	TGETS	  7	7	17	; slot7 = uv1"unknown".targets
		190	[  0]	MOV  	  9		2	; slot9 = uv1"unknown".detect
		191	[  0]	CALL 	  7	2	2	; slot7 = uv1"unknown".targets(uv0"unknown")
		192	[  0]	LEN  	  8		7	; slot8 = #uv1"unknown".targets
		193	[  0]	KSHORT	  9		0	; slot9 = 0
		194	[  0]	ISGE 	  9		8	; if slot9 >= slot8
		195	[  0]	JMP  	  8		22	; 	goto 218
		196	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		197	[  0]	TGETS	  8	8	10	; slot8 = uv0"unknown".parked
		198	[  0]	IST  	   		8	; if uv0"unknown".parked
		199	[  0]	JMP  	  9		8	; 	goto 208
		200	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		201	[  0]	TGETS	  8	8	18	; slot8 = uv1"unknown".at
		202	[  0]	MOV  	 10		7	; slot10 = uv1"unknown".targets
		203	[  0]	MOV  	 11		5	; slot11 = uv7"unknown".glideTarget
		204	[  0]	MOV  	 12		6	; slot12 = uv7"unknown".get
		205	[  0]	CALL 	  8	2	4	; slot8 = uv1"unknown".at(slot9, uv1"unknown".targets, uv7"unknown".glideTarget)
		206	[  0]	IST  	   		8	; if uv1"unknown".at
		207	[  0]	JMP  	  8		10	; 	goto 218
		208	[  0]	UGET 	  8		15	; slot8 = uv15"unknwon"
		209	[  0]	UGET 	 10		16	; slot10 = uv16"unknwon"
		210	[  0]	MOV  	 12		7	; slot12 = uv1"unknown".targets
		211	[  0]	CALL 	 10	2	2	; slot10 = uv16"unknown"(uv7"unknown".glideTarget)
		212	[  0]	KPRI 	 11		2	; slot11 = true
		213	[  0]	CALL 	  8	1	3	;  = uv15"unknown"(slot9, uv16"unknown")
		214	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		215	[  0]	KPRI 	  9		0	; slot9 = nil
		216	[  0]	TSETS	  9	8	11	; uv0"unknown".pendingFocus = slot9
		217	[  0]	RET0 	  0		1	; return
		218	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		219	[  0]	TGETS	  5	5	9	; slot5 = uv0"unknown".pressedAction
		220	[  0]	TSETV	  3	5	0	; uv0"unknown".pressedAction[slot0] = uv2"unknown".actionForPad
		221	[  0]	ISNES	  3		20	; if uv2"unknown".actionForPad ~= "confirm"
		222	[  0]	JMP  	  5		4	; 	goto 227
		223	[  0]	UGET 	  5		17	; slot5 = uv17"unknwon"
		224	[  0]	KSHORT	  7		1	; slot7 = 1
		225	[  0]	CALL 	  5	1	2	;  = uv17"unknown"(uv7"unknown".get)
		226	[  0]	JMP  	  5		112	; 	goto 339
		227	[  0]	ISNES	  3		8	; if uv2"unknown".actionForPad ~= "inspect"
		228	[  0]	JMP  	  5		4	; 	goto 233
		229	[  0]	UGET 	  5		17	; slot5 = uv17"unknwon"
		230	[  0]	KSHORT	  7		2	; slot7 = 2
		231	[  0]	CALL 	  5	1	2	;  = uv17"unknown"(uv7"unknown".get)
		232	[  0]	JMP  	  5		106	; 	goto 339
		233	[  0]	ISNES	  3		37	; if uv2"unknown".actionForPad ~= "back"
		234	[  0]	JMP  	  5		29	; 	goto 264
		235	[  0]	UGET 	  5		10	; slot5 = uv10"unknwon"
		236	[  0]	TGETV	  5	5	2	; slot5 = uv10"unknown"[uv1"unknown".detect]
		237	[  0]	ISF  	   		5	; if not slot5
		238	[  0]	JMP  	  6		5	; 	goto 244
		239	[  0]	ISNES	  2		13	; if uv1"unknown".detect ~= "settings"
		240	[  0]	JMP  	  5		2	; 	goto 243
		241	[  0]	KPRI 	  5		1	; slot5 = false
		242	[  0]	JMP  	  6		1	; 	goto 244
		243	[  0]	KPRI 	  5		2	; slot5 = true
		244	[  0]	ISF  	   		5	; if not slot5
		245	[  0]	JMP  	  6		3	; 	goto 249
		246	[  0]	UGET 	  6		18	; slot6 = uv18"unknwon"
		247	[  0]	KNUM 	  8		0	; slot8 = 1.2
		248	[  0]	CALL 	  6	1	2	;  = uv18"unknown"(slot7)
		249	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		250	[  0]	TGETS	  6	6	37	; slot6 = uv1"unknown".back
		251	[  0]	MOV  	  8		2	; slot8 = uv1"unknown".detect
		252	[  0]	CALL 	  6	2	2	; slot6 = uv1"unknown".back(slot7)
		253	[  0]	IST  	   		6	; if uv1"unknown".back
		254	[  0]	JMP  	  6		84	; 	goto 339
		255	[  0]	ISF  	   		5	; if not slot5
		256	[  0]	JMP  	  6		82	; 	goto 339
		257	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		258	[  0]	KPRI 	  7		1	; slot7 = false
		259	[  0]	TSETS	  7	6	10	; uv0"unknown".parked = slot7
		260	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		261	[  0]	KPRI 	  7		0	; slot7 = nil
		262	[  0]	TSETS	  7	6	7	; uv0"unknown".parkHoldUntil = slot7
		263	[  0]	JMP  	  5		75	; 	goto 339
		264	[  0]	ISNES	  3		6	; if uv2"unknown".actionForPad ~= "pause"
		265	[  0]	JMP  	  5		26	; 	goto 292
		266	[  0]	ISNES	  2		5	; if uv1"unknown".detect ~= "menu"
		267	[  0]	JMP  	  5		8	; 	goto 276
		268	[  0]	UGET 	  5		19	; slot5 = uv19"unknwon"
		269	[  0]	KSTR 	  7		4	; slot7 = "openMenuSettingsOverlay"
		270	[  0]	CALL 	  5	2	2	; slot5 = uv19"unknown"(uv0"unknown")
		271	[  0]	ISF  	   		5	; if not uv19"unknown"
		272	[  0]	JMP  	  6		66	; 	goto 339
		273	[  0]	MOV  	  6		5	; slot6 = uv19"unknown"
		274	[  0]	CALL 	  6	1	1	;  = uv19"unknown"()
		275	[  0]	JMP  	  5		63	; 	goto 339
		276	[  0]	ISEQS	  2		13	; if uv1"unknown".detect == "settings"
		277	[  0]	JMP  	  5		2	; 	goto 280
		278	[  0]	ISNES	  2		23	; if uv1"unknown".detect ~= "stage"
		279	[  0]	JMP  	  5		5	; 	goto 285
		280	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		281	[  0]	TGETS	  5	5	37	; slot5 = uv1"unknown".back
		282	[  0]	MOV  	  7		2	; slot7 = uv1"unknown".detect
		283	[  0]	CALL 	  5	1	2	;  = uv1"unknown".back(uv19"unknown")
		284	[  0]	JMP  	  5		54	; 	goto 339
		285	[  0]	ISEQS	  2		3	; if uv1"unknown".detect == "splash"
		286	[  0]	JMP  	  5		52	; 	goto 339
		287	[  0]	UGET 	  5		20	; slot5 = uv20"unknwon"
		288	[  0]	TGETS	  5	5	2	; slot5 = uv20"unknown".runAction
		289	[  0]	KSTR 	  7		6	; slot7 = "pause"
		290	[  0]	CALL 	  5	1	2	;  = uv20"unknown".runAction(uv19"unknown")
		291	[  0]	JMP  	  5		47	; 	goto 339
		292	[  0]	ISEQS	  2		1	; if uv1"unknown".detect == "game"
		293	[  0]	JMP  	  5		2	; 	goto 296
		294	[  0]	ISNES	  2		0	; if uv1"unknown".detect ~= "tutorial"
		295	[  0]	JMP  	  5		43	; 	goto 339
		296	[  0]	UGET 	  5		20	; slot5 = uv20"unknwon"
		297	[  0]	TGETS	  5	5	2	; slot5 = uv20"unknown".runAction
		298	[  0]	MOV  	  7		3	; slot7 = uv2"unknown".actionForPad
		299	[  0]	CALL 	  5	1	2	;  = uv20"unknown".runAction(uv19"unknown")
		300	[  0]	JMP  	  4		38	; 	goto 339
		301	[  0]	MOV  	  6		0	; slot6 = slot0
		302	[  0]	TGETS	  4	0	30	; slot4 = slot0.match
		303	[  0]	KSTR 	  7		29	; slot7 = "^dp(.+)$"
		304	[  0]	CALL 	  4	2	3	; slot4 = <unknown table>.match(uv20"unknown".runAction, slot6)
		305	[  0]	ISF  	   		4	; if not <unknown table>.match
		306	[  0]	JMP  	  5		14	; 	goto 321
		307	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		308	[  0]	TGETS	  5	5	26	; slot5 = uv0"unknown".repeatSource
		309	[  0]	ISNES	  5		25	; if uv0"unknown".repeatSource ~= "dpad"
		310	[  0]	JMP  	  5		10	; 	goto 321
		311	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		312	[  0]	TGETS	  5	5	28	; slot5 = uv0"unknown".repeatDir
		313	[  0]	ISNEV	  5		4	; if uv0"unknown".repeatDir ~= <unknown table>.match
		314	[  0]	JMP  	  5		6	; 	goto 321
		315	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		316	[  0]	KPRI 	  6		0	; slot6 = nil
		317	[  0]	TSETS	  6	5	28	; uv0"unknown".repeatDir = slot6
		318	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		319	[  0]	KPRI 	  6		0	; slot6 = nil
		320	[  0]	TSETS	  6	5	26	; uv0"unknown".repeatSource = slot6
		321	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		322	[  0]	TGETS	  5	5	9	; slot5 = uv0"unknown".pressedAction
		323	[  0]	TGETV	  5	5	0	; slot5 = uv0"unknown".pressedAction[slot0]
		324	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		325	[  0]	TGETS	  6	6	9	; slot6 = uv0"unknown".pressedAction
		326	[  0]	KPRI 	  7		0	; slot7 = nil
		327	[  0]	TSETV	  7	6	0	; uv0"unknown".pressedAction[slot0] = slot7
		328	[  0]	ISNES	  5		20	; if slot5 ~= "confirm"
		329	[  0]	JMP  	  6		4	; 	goto 334
		330	[  0]	UGET 	  6		21	; slot6 = uv21"unknwon"
		331	[  0]	KSHORT	  8		1	; slot8 = 1
		332	[  0]	CALL 	  6	1	2	;  = uv21"unknown"(slot7)
		333	[  0]	JMP  	  6		5	; 	goto 339
		334	[  0]	ISNES	  5		8	; if slot5 ~= "inspect"
		335	[  0]	JMP  	  6		3	; 	goto 339
		336	[  0]	UGET 	  6		21	; slot6 = uv21"unknwon"
		337	[  0]	KSHORT	  8		2	; slot8 = 2
		338	[  0]	CALL 	  6	1	2	;  = uv21"unknown"(slot7)
		339	[  0]	RET0 	  0		1	; return
	916	[  0]	FNEW 	 68		94	; N/A:0-0: 0 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		  2	[  0]	TGETS	  0	0	1	; slot0 = love.window
		  3	[  0]	ISF  	   		0	; if not love.window
		  4	[  0]	JMP  	  1		13	; 	goto 18
		  5	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		  6	[  0]	TGETS	  0	0	1	; slot0 = love.window
		  7	[  0]	TGETS	  0	0	0	; slot0 = love.window.hasFocus
		  8	[  0]	ISF  	   		0	; if not love.window.hasFocus
		  9	[  0]	JMP  	  1		8	; 	goto 18
		 10	[  0]	GGET 	  0		2	; slot0 = _env["love"]
		 11	[  0]	TGETS	  0	0	1	; slot0 = love.window
		 12	[  0]	TGETS	  0	0	0	; slot0 = love.window.hasFocus
		 13	[  0]	CALL 	  0	2	1	; slot0 = love.window.hasFocus()
		 14	[  0]	IST  	   		0	; if slot0
		 15	[  0]	JMP  	  0		2	; 	goto 18
		 16	[  0]	KPRI 	  0		1	; slot0 = false
		 17	[  0]	RET1 	  0		2	; return slot0
		 18	[  0]	KPRI 	  0		2	; slot0 = true
		 19	[  0]	RET1 	  0		2	; return slot0
	917	[  0]	KSTR 	 69		93	; slot69 = "gamepadpressed"
	918	[  0]	FNEW 	 70		92	; N/A:0-0: 2 args, 6 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	CALL 	  2	2	1	; slot2 = uv0"unknown"()
		  3	[  0]	IST  	   		2	; if uv0"unknown"
		  4	[  0]	JMP  	  2		1	; 	goto 6
		  5	[  0]	RET0 	  0		1	; return
		  6	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  7	[  0]	TGETS	  2	2	3	; slot2 = uv1"unknown".touch
		  8	[  0]	MOV  	  4		0	; slot4 = slot0
		  9	[  0]	CALL 	  2	1	2	;  = uv1"unknown".touch(slot3)
		 10	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 11	[  0]	KSTR 	  4		2	; slot4 = "pad"
		 12	[  0]	CALL 	  2	1	2	;  = uv2"unknown"(slot3)
		 13	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 14	[  0]	UGET 	  3		4	; slot3 = uv4"unknwon"
		 15	[  0]	CALL 	  3	2	1	; slot3 = uv4"unknown"()
		 16	[  0]	TSETS	  3	2	1	; uv3"unknown".lastPadInputT = uv4"unknown"
		 17	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 18	[  0]	TGETS	  2	2	0	; slot2 = uv3"unknown".down
		 19	[  0]	KPRI 	  3		2	; slot3 = true
		 20	[  0]	TSETV	  3	2	1	; uv3"unknown".down[slot1] = slot3
		 21	[  0]	UGET 	  2		5	; slot2 = uv5"unknwon"
		 22	[  0]	MOV  	  4		1	; slot4 = slot1
		 23	[  0]	KPRI 	  5		2	; slot5 = true
		 24	[  0]	CALL 	  2	1	3	;  = uv5"unknown"(slot3, slot4)
		 25	[  0]	RET0 	  0		1	; return
	919	[  0]	TSETV	 70	6	69	; slot6[slot69] = slot70
	920	[  0]	KSTR 	 69		91	; slot69 = "gamepadreleased"
	921	[  0]	FNEW 	 70		90	; N/A:0-0: 2 args, 2 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".down
		  3	[  0]	KPRI 	  3		0	; slot3 = nil
		  4	[  0]	TSETV	  3	2	1	; uv0"unknown".down[slot1] = slot3
		  5	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  6	[  0]	MOV  	  4		1	; slot4 = slot1
		  7	[  0]	KPRI 	  5		1	; slot5 = false
		  8	[  0]	CALL 	  2	1	3	;  = uv1"unknown"(slot3, slot4)
		  9	[  0]	RET0 	  0		1	; return
	922	[  0]	TSETV	 70	6	69	; slot6[slot69] = slot70
	923	[  0]	KSTR 	 69		89	; slot69 = "gamepadaxis"
	924	[  0]	FNEW 	 70		88	; N/A:0-0: 3 args, 6 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISEQS	  1		7	; if slot1 == "triggerleft"
		  2	[  0]	JMP  	  3		2	; 	goto 5
		  3	[  0]	ISNES	  1		6	; if slot1 ~= "triggerright"
		  4	[  0]	JMP  	  3		52	; 	goto 57
		  5	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  6	[  0]	TGETS	  3	3	5	; slot3 = uv0"unknown".down
		  7	[  0]	TGETV	  3	3	1	; slot3 = uv0"unknown".down[slot1]
		  8	[  0]	ISEQP	  3		2	; if slot3 == true
		  9	[  0]	JMP  	  3		2	; 	goto 12
		 10	[  0]	KPRI 	  3		1	; slot3 = false
		 11	[  0]	JMP  	  4		1	; 	goto 13
		 12	[  0]	KPRI 	  3		2	; slot3 = true
		 13	[  0]	IST  	   		3	; if slot3
		 14	[  0]	JMP  	  4		28	; 	goto 43
		 15	[  0]	KNUM 	  4		0	; slot4 = 0.55
		 16	[  0]	ISGE 	  4		2	; if slot4 >= slot2
		 17	[  0]	JMP  	  4		25	; 	goto 43
		 18	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 19	[  0]	CALL 	  4	2	1	; slot4 = uv1"unknown"()
		 20	[  0]	IST  	   		4	; if uv1"unknown"
		 21	[  0]	JMP  	  4		1	; 	goto 23
		 22	[  0]	RET0 	  0		1	; return
		 23	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 24	[  0]	TGETS	  4	4	4	; slot4 = uv2"unknown".touch
		 25	[  0]	MOV  	  6		0	; slot6 = slot0
		 26	[  0]	CALL 	  4	1	2	;  = uv2"unknown".touch(slot5)
		 27	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 28	[  0]	KSTR 	  6		3	; slot6 = "pad"
		 29	[  0]	CALL 	  4	1	2	;  = uv3"unknown"(slot5)
		 30	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 31	[  0]	UGET 	  5		4	; slot5 = uv4"unknwon"
		 32	[  0]	CALL 	  5	2	1	; slot5 = uv4"unknown"()
		 33	[  0]	TSETS	  5	4	2	; uv0"unknown".lastPadInputT = uv4"unknown"
		 34	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 35	[  0]	TGETS	  4	4	5	; slot4 = uv0"unknown".down
		 36	[  0]	KPRI 	  5		2	; slot5 = true
		 37	[  0]	TSETV	  5	4	1	; uv0"unknown".down[slot1] = slot5
		 38	[  0]	UGET 	  4		5	; slot4 = uv5"unknwon"
		 39	[  0]	MOV  	  6		1	; slot6 = slot1
		 40	[  0]	KPRI 	  7		2	; slot7 = true
		 41	[  0]	CALL 	  4	1	3	;  = uv5"unknown"(slot5, slot6)
		 42	[  0]	JMP  	  4		13	; 	goto 56
		 43	[  0]	ISF  	   		3	; if not slot3
		 44	[  0]	JMP  	  4		11	; 	goto 56
		 45	[  0]	KNUM 	  4		1	; slot4 = 0.35
		 46	[  0]	ISGE 	  2		4	; if slot2 >= slot4
		 47	[  0]	JMP  	  4		8	; 	goto 56
		 48	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 49	[  0]	TGETS	  4	4	5	; slot4 = uv0"unknown".down
		 50	[  0]	KPRI 	  5		0	; slot5 = nil
		 51	[  0]	TSETV	  5	4	1	; uv0"unknown".down[slot1] = slot5
		 52	[  0]	UGET 	  4		5	; slot4 = uv5"unknwon"
		 53	[  0]	MOV  	  6		1	; slot6 = slot1
		 54	[  0]	KPRI 	  7		1	; slot7 = false
		 55	[  0]	CALL 	  4	1	3	;  = uv5"unknown"(slot5, slot6)
		 56	[  0]	RET0 	  0		1	; return
		 57	[  0]	GGET 	  3		1	; slot3 = _env["math"]
		 58	[  0]	TGETS	  3	3	0	; slot3 = math.abs
		 59	[  0]	MOV  	  5		2	; slot5 = slot2
		 60	[  0]	CALL 	  3	2	2	; slot3 = math.abs(uv5"unknown")
		 61	[  0]	KNUM 	  4		1	; slot4 = 0.35
		 62	[  0]	ISGE 	  4		3	; if slot4 >= math.abs
		 63	[  0]	JMP  	  3		15	; 	goto 79
		 64	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 65	[  0]	CALL 	  3	2	1	; slot3 = uv1"unknown"()
		 66	[  0]	ISF  	   		3	; if not uv1"unknown"
		 67	[  0]	JMP  	  4		11	; 	goto 79
		 68	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 69	[  0]	TGETS	  3	3	4	; slot3 = uv2"unknown".touch
		 70	[  0]	MOV  	  5		0	; slot5 = slot0
		 71	[  0]	CALL 	  3	1	2	;  = uv2"unknown".touch(slot4)
		 72	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
		 73	[  0]	KSTR 	  5		3	; slot5 = "pad"
		 74	[  0]	CALL 	  3	1	2	;  = uv3"unknown"(slot4)
		 75	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 76	[  0]	UGET 	  4		4	; slot4 = uv4"unknwon"
		 77	[  0]	CALL 	  4	2	1	; slot4 = uv4"unknown"()
		 78	[  0]	TSETS	  4	3	2	; uv0"unknown".lastPadInputT = uv4"unknown"
		 79	[  0]	RET0 	  0		1	; return
	925	[  0]	TSETV	 70	6	69	; slot6[slot69] = slot70
	926	[  0]	KSTR 	 69		87	; slot69 = "joystickadded"
	927	[  0]	FNEW 	 70		86	; N/A:0-0: 1 args, 3 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		ktable#1 = [
			[key] = controls_connected,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	3	; slot1 = uv0"unknown".added
		  3	[  0]	MOV  	  3		0	; slot3 = slot0
		  4	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown".added(slot2)
		  5	[  0]	ISF  	   		1	; if not slot1
		  6	[  0]	JMP  	  2		6	; 	goto 13
		  7	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  8	[  0]	TDUP 	  2		1	; slot2 = copy table#k1
		  9	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 10	[  0]	CALL 	  3	2	1	; slot3 = uv2"unknown"()
		 11	[  0]	TSETS	  3	2	0	; slot2.t0 = uv2"unknown"
		 12	[  0]	TSETS	  2	1	2	; uv1"unknown".notice = slot2
		 13	[  0]	RET0 	  0		1	; return
	928	[  0]	TSETV	 70	6	69	; slot6[slot69] = slot70
	929	[  0]	KSTR 	 69		85	; slot69 = "joystickremoved"
	930	[  0]	FNEW 	 70		84	; N/A:0-0: 1 args, 7 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		ktable#13 = [
			[key] = controls_disconnected,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	18	; slot1 = uv0"unknown".mode
		  3	[  0]	ISNES	  1		17	; if uv0"unknown".mode ~= "pad"
		  4	[  0]	JMP  	  1		5	; 	goto 10
		  5	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  6	[  0]	TGETS	  1	1	16	; slot1 = uv1"unknown".active
		  7	[  0]	CALL 	  1	2	1	; slot1 = uv1"unknown".active()
		  8	[  0]	ISEQV	  1		0	; if slot1 == slot0
		  9	[  0]	JMP  	  1		2	; 	goto 12
		 10	[  0]	KPRI 	  1		1	; slot1 = false
		 11	[  0]	JMP  	  2		1	; 	goto 13
		 12	[  0]	KPRI 	  1		2	; slot1 = true
		 13	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 14	[  0]	TGETS	  2	2	15	; slot2 = uv1"unknown".removed
		 15	[  0]	MOV  	  4		0	; slot4 = slot0
		 16	[  0]	CALL 	  2	1	2	;  = uv1"unknown".removed(slot3)
		 17	[  0]	ISF  	   		1	; if not slot1
		 18	[  0]	JMP  	  2		19	; 	goto 38
		 19	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 20	[  0]	TDUP 	  3		13	; slot3 = copy table#k13
		 21	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 22	[  0]	CALL 	  4	2	1	; slot4 = uv3"unknown"()
		 23	[  0]	TSETS	  4	3	12	; slot3.t0 = uv3"unknown"
		 24	[  0]	TSETS	  3	2	14	; uv2"unknown".notice = slot3
		 25	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 26	[  0]	TGETS	  2	2	11	; slot2 = uv2"unknown".ctx
		 27	[  0]	IST  	   		2	; if uv2"unknown".ctx
		 28	[  0]	JMP  	  3		3	; 	goto 32
		 29	[  0]	UGET 	  2		4	; slot2 = uv4"unknwon"
		 30	[  0]	TGETS	  2	2	10	; slot2 = uv4"unknown".detect
		 31	[  0]	CALL 	  2	2	1	; slot2 = uv4"unknown".detect()
		 32	[  0]	ISNES	  2		9	; if uv4"unknown".detect ~= "game"
		 33	[  0]	JMP  	  2		4	; 	goto 38
		 34	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 35	[  0]	TGETS	  2	2	8	; slot2 = uv0"unknown".runAction
		 36	[  0]	KSTR 	  4		7	; slot4 = "pause"
		 37	[  0]	CALL 	  2	1	2	;  = uv0"unknown".runAction(slot3)
		 38	[  0]	GGET 	  2		6	; slot2 = _env["pairs"]
		 39	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 40	[  0]	TGETS	  4	4	5	; slot4 = uv2"unknown".down
		 41	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = pairs(slot3)
		 42	[  0]	ISNEXT	  5		4	; Verify ITERN at 47; goto 47
		 43	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 44	[  0]	TGETS	  6	6	5	; slot6 = uv2"unknown".down
		 45	[  0]	KPRI 	  7		0	; slot7 = nil
		 46	[  0]	TSETV	  7	6	5	; uv2"unknown".down[slot5] = slot7
		 47	[  0]	ITERN	  5	2	3	; slot5, slot6, slot7 = slot2, slot3, uv2"unknown".down; slot5 = slot2(slot3, uv2"unknown".down)
		 48	[  0]	ITERL	  5		-6	; uv2"unknown".down = slot5; if slot5 != nil goto 43
		 49	[  0]	GGET 	  2		6	; slot2 = _env["pairs"]
		 50	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 51	[  0]	TGETS	  4	4	4	; slot4 = uv2"unknown".pressedAction
		 52	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = pairs(slot3)
		 53	[  0]	ISNEXT	  5		18	; Verify ITERN at 72; goto 72
		 54	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 55	[  0]	TGETS	  6	6	4	; slot6 = uv2"unknown".pressedAction
		 56	[  0]	TGETV	  6	6	5	; slot6 = uv2"unknown".pressedAction[slot5]
		 57	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		 58	[  0]	TGETS	  7	7	4	; slot7 = uv2"unknown".pressedAction
		 59	[  0]	KPRI 	  8		0	; slot8 = nil
		 60	[  0]	TSETV	  8	7	5	; uv2"unknown".pressedAction[slot5] = slot8
		 61	[  0]	ISNES	  6		3	; if slot6 ~= "confirm"
		 62	[  0]	JMP  	  7		4	; 	goto 67
		 63	[  0]	UGET 	  7		5	; slot7 = uv5"unknwon"
		 64	[  0]	KSHORT	  9		1	; slot9 = 1
		 65	[  0]	CALL 	  7	1	2	;  = uv5"unknown"(slot8)
		 66	[  0]	JMP  	  7		5	; 	goto 72
		 67	[  0]	ISNES	  6		2	; if slot6 ~= "inspect"
		 68	[  0]	JMP  	  7		3	; 	goto 72
		 69	[  0]	UGET 	  7		5	; slot7 = uv5"unknwon"
		 70	[  0]	KSHORT	  9		2	; slot9 = 2
		 71	[  0]	CALL 	  7	1	2	;  = uv5"unknown"(slot8)
		 72	[  0]	ITERN	  5	2	3	; slot5, slot6, slot7 = slot2, slot3, uv2"unknown".pressedAction; slot5 = slot2(slot3, uv2"unknown".pressedAction)
		 73	[  0]	ITERL	  5		-20	; uv2"unknown".pressedAction = slot5; if slot5 != nil goto 54
		 74	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 75	[  0]	TGETS	  2	2	1	; slot2 = uv1"unknown".count
		 76	[  0]	CALL 	  2	2	1	; slot2 = uv1"unknown".count()
		 77	[  0]	ISNEN	  2		0	; if uv1"unknown".count ~= 0
		 78	[  0]	JMP  	  2		7	; 	goto 86
		 79	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 80	[  0]	TGETS	  2	2	18	; slot2 = uv0"unknown".mode
		 81	[  0]	ISNES	  2		17	; if uv0"unknown".mode ~= "pad"
		 82	[  0]	JMP  	  2		3	; 	goto 86
		 83	[  0]	UGET 	  2		6	; slot2 = uv6"unknwon"
		 84	[  0]	KSTR 	  4		0	; slot4 = "mouse"
		 85	[  0]	CALL 	  2	1	2	;  = uv6"unknown"(slot3)
		 86	[  0]	RET0 	  0		1	; return
	931	[  0]	TSETV	 70	6	69	; slot6[slot69] = slot70
	932	[  0]	KSTR 	 69		83	; slot69 = "keypressed"
	933	[  0]	FNEW 	 70		82	; N/A:0-0: 1 args, 4 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	7	; slot1 = uv0"unknown".active
		  3	[  0]	ISF  	   		1	; if not uv0"unknown".active
		  4	[  0]	JMP  	  2		33	; 	goto 38
		  5	[  0]	TGETS	  2	1	6	; slot2 = uv0"unknown".active.device
		  6	[  0]	ISNES	  2		5	; if uv0"unknown".active.device ~= "keyboard"
		  7	[  0]	JMP  	  2		28	; 	goto 36
		  8	[  0]	ISNES	  0		4	; if slot0 ~= "escape"
		  9	[  0]	JMP  	  2		6	; 	goto 16
		 10	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 11	[  0]	TGETS	  2	2	3	; slot2 = uv0"unknown".cancel
		 12	[  0]	CALL 	  2	1	1	;  = uv0"unknown".cancel()
		 13	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 14	[  0]	CALL 	  2	1	1	;  = uv1"unknown"()
		 15	[  0]	JMP  	  2		20	; 	goto 36
		 16	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 17	[  0]	TGETS	  2	2	2	; slot2 = uv2"unknown".isKeyReserved
		 18	[  0]	MOV  	  4		0	; slot4 = slot0
		 19	[  0]	CALL 	  2	2	2	; slot2 = uv2"unknown".isKeyReserved(slot3)
		 20	[  0]	IST  	   		2	; if slot2
		 21	[  0]	JMP  	  2		14	; 	goto 36
		 22	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 23	[  0]	TGETS	  2	2	1	; slot2 = uv2"unknown".setKey
		 24	[  0]	TGETS	  4	1	0	; slot4 = uv0"unknown".active.action
		 25	[  0]	MOV  	  5		0	; slot5 = slot0
		 26	[  0]	CALL 	  2	2	3	; slot2 = uv2"unknown".setKey(slot3, uv0"unknown".active.action)
		 27	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 28	[  0]	TGETS	  3	3	3	; slot3 = uv0"unknown".cancel
		 29	[  0]	CALL 	  3	1	1	;  = uv0"unknown".cancel()
		 30	[  0]	ISF  	   		2	; if not slot2
		 31	[  0]	JMP  	  3		4	; 	goto 36
		 32	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 33	[  0]	CALL 	  3	1	1	;  = uv1"unknown"()
		 34	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
		 35	[  0]	CALL 	  3	1	1	;  = uv3"unknown"()
		 36	[  0]	KPRI 	  2		2	; slot2 = true
		 37	[  0]	RET1 	  2		2	; return slot2
		 38	[  0]	KPRI 	  2		1	; slot2 = false
		 39	[  0]	RET1 	  2		2	; return slot2
	934	[  0]	TSETV	 70	6	69	; slot6[slot69] = slot70
	935	[  0]	KSTR 	 69		81	; slot69 = "mousemoved"
	936	[  0]	FNEW 	 70		80	; N/A:0-0: 2 args, 5 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	9	; slot2 = uv0"unknown".mode
		  3	[  0]	ISNES	  2		8	; if uv0"unknown".mode ~= "pad"
		  4	[  0]	JMP  	  2		7	; 	goto 12
		  5	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  6	[  0]	TGETS	  2	2	7	; slot2 = uv1"unknown".isWarpEcho
		  7	[  0]	MOV  	  4		0	; slot4 = slot0
		  8	[  0]	MOV  	  5		1	; slot5 = slot1
		  9	[  0]	CALL 	  2	2	3	; slot2 = uv1"unknown".isWarpEcho(slot3, slot4)
		 10	[  0]	ISF  	   		2	; if not slot2
		 11	[  0]	JMP  	  3		6	; 	goto 18
		 12	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 13	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 14	[  0]	MOV  	  4		0	; slot4 = slot0
		 15	[  0]	TSETS	  1	3	5	; uv2"unknown".realY = slot1
		 16	[  0]	TSETS	  4	2	6	; uv2"unknown".realX = slot4
		 17	[  0]	RET0 	  0		1	; return
		 18	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 19	[  0]	TGETS	  2	2	6	; slot2 = uv2"unknown".realX
		 20	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 21	[  0]	TGETS	  3	3	5	; slot3 = uv2"unknown".realY
		 22	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 23	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 24	[  0]	MOV  	  6		0	; slot6 = slot0
		 25	[  0]	TSETS	  1	5	5	; uv2"unknown".realY = slot1
		 26	[  0]	TSETS	  6	4	6	; uv2"unknown".realX = slot6
		 27	[  0]	IST  	   		2	; if uv2"unknown".realX
		 28	[  0]	JMP  	  4		1	; 	goto 30
		 29	[  0]	RET0 	  0		1	; return
		 30	[  0]	GGET 	  4		4	; slot4 = _env["math"]
		 31	[  0]	TGETS	  4	4	3	; slot4 = math.abs
		 32	[  0]	SUBVV	  6	0	2	; slot6 = slot0 - uv2"unknown".realX
		 33	[  0]	CALL 	  4	2	2	; slot4 = math.abs(uv2"unknown")
		 34	[  0]	GGET 	  5		4	; slot5 = _env["math"]
		 35	[  0]	TGETS	  5	5	3	; slot5 = math.abs
		 36	[  0]	SUBVV	  7	1	3	; slot7 = slot1 - uv2"unknown".realY
		 37	[  0]	CALL 	  5	2	2	; slot5 = math.abs(slot6)
		 38	[  0]	ADDVV	  4	4	5	; slot4 = math.abs + math.abs
		 39	[  0]	KSHORT	  5		0	; slot5 = 0
		 40	[  0]	ISGT 	  4		5	; if slot4 > slot5
		 41	[  0]	JMP  	  5		1	; 	goto 43
		 42	[  0]	RET0 	  0		1	; return
		 43	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
		 44	[  0]	CALL 	  5	2	1	; slot5 = uv3"unknown"()
		 45	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 46	[  0]	TGETS	  6	6	2	; slot6 = uv2"unknown".mouseTravelT
		 47	[  0]	IST  	   		6	; if uv2"unknown".mouseTravelT
		 48	[  0]	JMP  	  7		1	; 	goto 50
		 49	[  0]	KSHORT	  6		65535	; slot6 = 65535
		 50	[  0]	SUBVV	  6	5	6	; slot6 = uv3"unknown" - slot6
		 51	[  0]	KNUM 	  7		0	; slot7 = 0.25
		 52	[  0]	ISGE 	  7		6	; if slot7 >= slot6
		 53	[  0]	JMP  	  6		3	; 	goto 57
		 54	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 55	[  0]	KSHORT	  7		0	; slot7 = 0
		 56	[  0]	TSETS	  7	6	1	; uv2"unknown".mouseTravel = slot7
		 57	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 58	[  0]	TSETS	  5	6	2	; uv2"unknown".mouseTravelT = uv3"unknown"
		 59	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 60	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		 61	[  0]	TGETS	  7	7	1	; slot7 = uv2"unknown".mouseTravel
		 62	[  0]	ADDVV	  7	7	4	; slot7 = uv2"unknown".mouseTravel + slot4
		 63	[  0]	TSETS	  7	6	1	; uv2"unknown".mouseTravel = slot7
		 64	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 65	[  0]	TGETS	  6	6	1	; slot6 = uv2"unknown".mouseTravel
		 66	[  0]	KSHORT	  7		8	; slot7 = 8
		 67	[  0]	ISGE 	  7		6	; if slot7 >= uv2"unknown".mouseTravel
		 68	[  0]	JMP  	  6		6	; 	goto 75
		 69	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 70	[  0]	KSHORT	  7		0	; slot7 = 0
		 71	[  0]	TSETS	  7	6	1	; uv2"unknown".mouseTravel = slot7
		 72	[  0]	UGET 	  6		4	; slot6 = uv4"unknwon"
		 73	[  0]	KSTR 	  8		0	; slot8 = "mouse"
		 74	[  0]	CALL 	  6	1	2	;  = uv4"unknown"(slot7)
		 75	[  0]	RET0 	  0		1	; return
	937	[  0]	TSETV	 70	6	69	; slot6[slot69] = slot70
	938	[  0]	KSTR 	 69		79	; slot69 = "mousepressed"
	939	[  0]	FNEW 	 70		78	; N/A:0-0: 6 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		  2	[  0]	TGETS	  6	6	1	; slot6 = uv0"unknown".active
		  3	[  0]	ISF  	   		6	; if not uv0"unknown".active
		  4	[  0]	JMP  	  7		5	; 	goto 10
		  5	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		  6	[  0]	TGETS	  6	6	0	; slot6 = uv0"unknown".cancel
		  7	[  0]	CALL 	  6	1	1	;  = uv0"unknown".cancel()
		  8	[  0]	KPRI 	  6		2	; slot6 = true
		  9	[  0]	RET1 	  6		2	; return slot6
		 10	[  0]	KPRI 	  6		1	; slot6 = false
		 11	[  0]	RET1 	  6		2	; return slot6
	940	[  0]	TSETV	 70	6	69	; slot6[slot69] = slot70
	941	[  0]	KSTR 	 69		77	; slot69 = "realMouseUsed"
	942	[  0]	FNEW 	 70		76	; N/A:0-0: 0 args, 3 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	3	; slot0 = uv0"unknown".mode
		  3	[  0]	ISNES	  0		2	; if uv0"unknown".mode ~= "pad"
		  4	[  0]	JMP  	  0		6	; 	goto 11
		  5	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  6	[  0]	KSHORT	  1		0	; slot1 = 0
		  7	[  0]	TSETS	  1	0	1	; uv1"unknown".mouseTravel = slot1
		  8	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
		  9	[  0]	KSTR 	  2		0	; slot2 = "mouse"
		 10	[  0]	CALL 	  0	1	2	;  = uv2"unknown"(slot1)
		 11	[  0]	RET0 	  0		1	; return
	943	[  0]	TSETV	 70	6	69	; slot6[slot69] = slot70
	944	[  0]	FNEW 	 69		75	; N/A:0-0: 3 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  3		3	; 	goto 6
		  3	[  0]	KSHORT	  3		0	; slot3 = 0
		  4	[  0]	KSHORT	  4		0	; slot4 = 0
		  5	[  0]	RET  	  3		3	; return slot3, slot4
		  6	[  0]	GGET 	  3		1	; slot3 = _env["pcall"]
		  7	[  0]	TGETS	  5	0	0	; slot5 = slot0.getGamepadAxis
		  8	[  0]	MOV  	  6		0	; slot6 = slot0
		  9	[  0]	MOV  	  7		1	; slot7 = slot1
		 10	[  0]	CALL 	  3	3	4	; slot3, slot4 = pcall(slot4, <unknown table>.getGamepadAxis, slot6)
		 11	[  0]	GGET 	  5		1	; slot5 = _env["pcall"]
		 12	[  0]	TGETS	  7	0	0	; slot7 = slot0.getGamepadAxis
		 13	[  0]	MOV  	  8		0	; slot8 = slot0
		 14	[  0]	MOV  	  9		2	; slot9 = slot2
		 15	[  0]	CALL 	  5	3	4	; slot5, slot6 = pcall(slot6, <unknown table>.getGamepadAxis, slot8)
		 16	[  0]	ISF  	   		3	; if not slot3
		 17	[  0]	JMP  	  7		2	; 	goto 20
		 18	[  0]	ISTC 	  7		4	; slot7 = slot4; if slot4
		 19	[  0]	JMP  	  7		1	; 	goto 21
		 20	[  0]	KSHORT	  7		0	; slot7 = 0
		 21	[  0]	ISF  	   		5	; if not pcall
		 22	[  0]	JMP  	  8		2	; 	goto 25
		 23	[  0]	ISTC 	  8		6	; slot8 = slot6; if slot6
		 24	[  0]	JMP  	  8		1	; 	goto 26
		 25	[  0]	KSHORT	  8		0	; slot8 = 0
		 26	[  0]	RET  	  7		3	; return slot7, slot8
	945	[  0]	FNEW 	 70		74	; N/A:0-0: 2 args, 3 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	4	; slot2 = uv0"unknown".get
		  3	[  0]	CALL 	  2	3	1	; slot2, slot3 = uv0"unknown".get()
		  4	[  0]	ISF  	   		1	; if not slot1
		  5	[  0]	JMP  	  4		10	; 	goto 16
		  6	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		  7	[  0]	TGETS	  4	4	3	; slot4 = uv1"unknown".at
		  8	[  0]	MOV  	  6		1	; slot6 = slot1
		  9	[  0]	MOV  	  7		2	; slot7 = uv0"unknown".get
		 10	[  0]	MOV  	  8		3	; slot8 = slot3
		 11	[  0]	CALL 	  4	2	4	; slot4 = uv1"unknown".at(slot5, slot6, uv0"unknown".get)
		 12	[  0]	ISF  	   		4	; if not slot4
		 13	[  0]	JMP  	  5		2	; 	goto 16
		 14	[  0]	KNUM 	  4		0	; slot4 = 0.55
		 15	[  0]	RET1 	  4		2	; return slot4
		 16	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 17	[  0]	KSTR 	  6		2	; slot6 = "tooltip"
		 18	[  0]	CALL 	  4	2	2	; slot4 = uv2"unknown"(slot5)
		 19	[  0]	ISNES	  0		1	; if slot0 ~= "game"
		 20	[  0]	JMP  	  5		7	; 	goto 28
		 21	[  0]	ISF  	   		4	; if not uv2"unknown"
		 22	[  0]	JMP  	  5		5	; 	goto 28
		 23	[  0]	TGETS	  5	4	0	; slot5 = uv2"unknown".candidate
		 24	[  0]	ISF  	   		5	; if not uv2"unknown".candidate
		 25	[  0]	JMP  	  6		2	; 	goto 28
		 26	[  0]	KNUM 	  5		1	; slot5 = 0.6
		 27	[  0]	RET1 	  5		2	; return slot5
		 28	[  0]	KSHORT	  5		1	; slot5 = 1
		 29	[  0]	RET1 	  5		2	; return slot5
	946	[  0]	FNEW 	 71		73	; N/A:0-0: 2 args, 0 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		6	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	5	; slot2 = math.sqrt
		  3	[  0]	MULVV	  4	0	0	; slot4 = slot0 * slot0
		  4	[  0]	MULVV	  5	1	1	; slot5 = slot1 * slot1
		  5	[  0]	ADDVV	  4	4	5	; slot4 = slot4 + slot5
		  6	[  0]	CALL 	  2	2	2	; slot2 = math.sqrt(slot3)
		  7	[  0]	KNUM 	  3		0	; slot3 = 0.55
		  8	[  0]	ISGE 	  2		3	; if slot2 >= slot3
		  9	[  0]	JMP  	  3		2	; 	goto 12
		 10	[  0]	KPRI 	  3		0	; slot3 = nil
		 11	[  0]	RET1 	  3		2	; return slot3
		 12	[  0]	GGET 	  3		6	; slot3 = _env["math"]
		 13	[  0]	TGETS	  3	3	4	; slot3 = math.abs
		 14	[  0]	MOV  	  5		0	; slot5 = slot0
		 15	[  0]	CALL 	  3	2	2	; slot3 = math.abs(slot4)
		 16	[  0]	GGET 	  4		6	; slot4 = _env["math"]
		 17	[  0]	TGETS	  4	4	4	; slot4 = math.abs
		 18	[  0]	MOV  	  6		1	; slot6 = slot1
		 19	[  0]	CALL 	  4	2	2	; slot4 = math.abs(slot5)
		 20	[  0]	ISGE 	  4		3	; if math.abs >= math.abs
		 21	[  0]	JMP  	  3		7	; 	goto 29
		 22	[  0]	KSHORT	  3		0	; slot3 = 0
		 23	[  0]	ISGE 	  3		0	; if slot3 >= slot0
		 24	[  0]	JMP  	  3		2	; 	goto 27
		 25	[  0]	KSTR 	  3		3	; slot3 = "right"
		 26	[  0]	JMP  	  4		1	; 	goto 28
		 27	[  0]	KSTR 	  3		2	; slot3 = "left"
		 28	[  0]	RET1 	  3		2	; return slot3
		 29	[  0]	KSHORT	  3		0	; slot3 = 0
		 30	[  0]	ISGE 	  3		1	; if slot3 >= slot1
		 31	[  0]	JMP  	  3		2	; 	goto 34
		 32	[  0]	KSTR 	  3		1	; slot3 = "down"
		 33	[  0]	JMP  	  4		1	; 	goto 35
		 34	[  0]	KSTR 	  3		0	; slot3 = "up"
		 35	[  0]	RET1 	  3		2	; return slot3
	947	[  0]	FNEW 	 72		72	; N/A:0-0: 2 args, 2 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISNEN	  0		0	; if slot0 ~= 0
		  2	[  0]	JMP  	  2		7	; 	goto 10
		  3	[  0]	ISNEN	  1		0	; if slot1 ~= 0
		  4	[  0]	JMP  	  2		5	; 	goto 10
		  5	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  6	[  0]	TGETS	  2	2	1	; slot2 = uv0"unknown".panning
		  7	[  0]	IST  	   		2	; if uv0"unknown".panning
		  8	[  0]	JMP  	  2		1	; 	goto 10
		  9	[  0]	RET0 	  0		1	; return
		 10	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 11	[  0]	CALL 	  2	2	1	; slot2 = uv1"unknown"()
		 12	[  0]	ISF  	   		2	; if not uv1"unknown"
		 13	[  0]	JMP  	  3		7	; 	goto 21
		 14	[  0]	TGETS	  3	2	0	; slot3 = uv1"unknown".setPadPan
		 15	[  0]	ISF  	   		3	; if not uv1"unknown".setPadPan
		 16	[  0]	JMP  	  4		4	; 	goto 21
		 17	[  0]	TGETS	  3	2	0	; slot3 = uv1"unknown".setPadPan
		 18	[  0]	MOV  	  5		0	; slot5 = slot0
		 19	[  0]	MOV  	  6		1	; slot6 = slot1
		 20	[  0]	CALL 	  3	1	3	;  = uv1"unknown".setPadPan(slot4, slot5)
		 21	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 22	[  0]	ISNEN	  0		0	; if slot0 ~= 0
		 23	[  0]	JMP  	  4		4	; 	goto 28
		 24	[  0]	ISNEN	  1		0	; if slot1 ~= 0
		 25	[  0]	JMP  	  4		2	; 	goto 28
		 26	[  0]	KPRI 	  4		1	; slot4 = false
		 27	[  0]	JMP  	  5		1	; 	goto 29
		 28	[  0]	KPRI 	  4		2	; slot4 = true
		 29	[  0]	TSETS	  4	3	1	; uv0"unknown".panning = slot4
		 30	[  0]	RET0 	  0		1	; return
	948	[  0]	KPRI 	 73		0	; slot73 = nil
	949	[  0]	KSTR 	 74		260	; slot74 = "update"
	950	[  0]	FNEW 	 75		71	; N/A:0-0: 1 args, 4 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	TGETS	  2	2	2	; slot2 = uv0"unknown".frame
		  4	[  0]	ADDVN	  2	2	0	; slot2 = uv0"unknown".frame + 1
		  5	[  0]	TSETS	  2	1	2	; uv0"unknown".frame = slot2
		  6	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  7	[  0]	CALL 	  1	1	1	;  = uv1"unknown"()
		  8	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		  9	[  0]	MOV  	  3		0	; slot3 = slot0
		 10	[  0]	CALL 	  1	1	2	;  = uv2"unknown"(slot2)
		 11	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 12	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 13	[  0]	TGETS	  2	2	0	; slot2 = uv3"unknown".stamp
		 14	[  0]	TSETS	  2	1	1	; uv0"unknown".seenStamp = uv3"unknown".stamp
		 15	[  0]	RET0 	  0		1	; return
	951	[  0]	TSETV	 75	6	74	; slot6[slot74] = slot75
	952	[  0]	FNEW 	 73		70	; N/A:0-0: 1 args, 28 upvalues, 22 slots
		
		;;;; constant tables ;;;;
		ktable#28 = [
			[captureRun] = false,
			]
		
		
		ktable#46 = [
			[t] = 0,
			[keepIfOnTarget] = true,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		61	; slot1 = _env["math"]
		  2	[  0]	TGETS	  1	1	60	; slot1 = math.min
		  3	[  0]	ISTC 	  3		0	; slot3 = slot0; if slot0
		  4	[  0]	JMP  	  3		1	; 	goto 6
		  5	[  0]	KSHORT	  3		0	; slot3 = 0
		  6	[  0]	KNUM 	  4		0	; slot4 = 0.1
		  7	[  0]	CALL 	  1	2	3	; slot1 = math.min(slot2, slot3)
		  8	[  0]	MOV  	  0		1	; slot0 = slot1
		  9	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 10	[  0]	CALL 	  1	1	1	;  = uv0"unknown"()
		 11	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 12	[  0]	CALL 	  1	1	1	;  = uv1"unknown"()
		 13	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 14	[  0]	TGETS	  1	1	59	; slot1 = uv2"unknown".detect
		 15	[  0]	CALL 	  1	2	1	; slot1 = uv2"unknown".detect()
		 16	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
		 17	[  0]	TGETS	  2	2	58	; slot2 = uv3"unknown".ctx
		 18	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
		 19	[  0]	TSETS	  1	3	58	; uv3"unknown".ctx = slot1
		 20	[  0]	UGET 	  3		4	; slot3 = uv4"unknwon"
		 21	[  0]	MOV  	  5		1	; slot5 = slot1
		 22	[  0]	CALL 	  3	2	2	; slot3 = uv4"unknown"(slot4)
		 23	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 24	[  0]	TGETS	  4	4	57	; slot4 = uv3"unknown".ctxKey
		 25	[  0]	ISEQV	  3		4	; if uv4"unknown" == uv3"unknown".ctxKey
		 26	[  0]	JMP  	  4		9	; 	goto 36
		 27	[  0]	UGET 	  4		5	; slot4 = uv5"unknwon"
		 28	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		 29	[  0]	TGETS	  6	6	57	; slot6 = uv3"unknown".ctxKey
		 30	[  0]	MOV  	  7		3	; slot7 = uv4"unknown"
		 31	[  0]	MOV  	  8		1	; slot8 = slot1
		 32	[  0]	MOV  	  9		2	; slot9 = uv3"unknown".ctx
		 33	[  0]	CALL 	  4	1	5	;  = uv5"unknown"(slot5, uv3"unknown".ctxKey, uv4"unknown", slot8)
		 34	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 35	[  0]	TSETS	  3	4	57	; uv3"unknown".ctxKey = uv4"unknown"
		 36	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 37	[  0]	TGETS	  4	4	56	; slot4 = uv3"unknown".padWoke
		 38	[  0]	ISF  	   		4	; if not uv3"unknown".padWoke
		 39	[  0]	JMP  	  5		66	; 	goto 106
		 40	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 41	[  0]	KPRI 	  5		1	; slot5 = false
		 42	[  0]	TSETS	  5	4	56	; uv3"unknown".padWoke = slot5
		 43	[  0]	UGET 	  4		6	; slot4 = uv6"unknwon"
		 44	[  0]	TGETV	  4	4	1	; slot4 = uv6"unknown"[slot1]
		 45	[  0]	ISF  	   		4	; if not slot4
		 46	[  0]	JMP  	  5		59	; 	goto 106
		 47	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 48	[  0]	TGETS	  4	4	55	; slot4 = uv3"unknown".pendingFocus
		 49	[  0]	IST  	   		4	; if uv3"unknown".pendingFocus
		 50	[  0]	JMP  	  4		55	; 	goto 106
		 51	[  0]	UGET 	  4		7	; slot4 = uv7"unknwon"
		 52	[  0]	TGETS	  4	4	54	; slot4 = uv7"unknown".get
		 53	[  0]	CALL 	  4	3	1	; slot4, slot5 = uv7"unknown".get()
		 54	[  0]	KPRI 	  6		0	; slot6 = nil
		 55	[  0]	ISNES	  1		53	; if slot1 ~= "settings"
		 56	[  0]	JMP  	  7		21	; 	goto 78
		 57	[  0]	UGET 	  7		8	; slot7 = uv8"unknwon"
		 58	[  0]	CALL 	  7	2	1	; slot7 = uv8"unknown"()
		 59	[  0]	ISFC 	  8		7	; slot8 = uv8"unknown"; if not uv8"unknown"
		 60	[  0]	JMP  	  8		3	; 	goto 64
		 61	[  0]	UGET 	  8		9	; slot8 = uv9"unknwon"
		 62	[  0]	MOV  	 10		7	; slot10 = uv8"unknown"
		 63	[  0]	CALL 	  8	2	2	; slot8 = uv9"unknown"(uv3"unknown".ctx)
		 64	[  0]	ISF  	   		8	; if not uv9"unknown"
		 65	[  0]	JMP  	  9		6	; 	goto 72
		 66	[  0]	UGET 	  9		3	; slot9 = uv3"unknwon"
		 67	[  0]	TGETS	 10	7	51	; slot10 = uv8"unknown".rows
		 68	[  0]	TGETV	 10	10	8	; slot10 = uv8"unknown".rows[uv9"unknown"]
		 69	[  0]	TGETS	 10	10	50	; slot10 = slot10.item
		 70	[  0]	TGETS	 10	10	49	; slot10 = <unknown table>.item.key
		 71	[  0]	TSETS	 10	9	52	; uv3"unknown".settingsFocus = <unknown table>.item.key
		 72	[  0]	ISNEP	  8		0	; if uv9"unknown" ~= nil
		 73	[  0]	JMP  	  9		2	; 	goto 76
		 74	[  0]	KPRI 	  6		1	; slot6 = false
		 75	[  0]	JMP  	  9		1	; 	goto 77
		 76	[  0]	KPRI 	  6		2	; slot6 = true
		 77	[  0]	JMP  	  7		14	; 	goto 92
		 78	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		 79	[  0]	TGETS	  7	7	48	; slot7 = uv2"unknown".at
		 80	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
		 81	[  0]	TGETS	  9	9	47	; slot9 = uv2"unknown".targets
		 82	[  0]	MOV  	 11		1	; slot11 = slot1
		 83	[  0]	CALL 	  9	2	2	; slot9 = uv2"unknown".targets(<unknown table>.item.key)
		 84	[  0]	MOV  	 10		4	; slot10 = uv7"unknown".get
		 85	[  0]	MOV  	 11		5	; slot11 = slot5
		 86	[  0]	CALL 	  7	2	4	; slot7 = uv2"unknown".at(uv9"unknown", uv2"unknown".targets, uv7"unknown".get)
		 87	[  0]	ISNEP	  7		0	; if uv2"unknown".at ~= nil
		 88	[  0]	JMP  	  7		2	; 	goto 91
		 89	[  0]	KPRI 	  6		1	; slot6 = false
		 90	[  0]	JMP  	  7		1	; 	goto 92
		 91	[  0]	KPRI 	  6		2	; slot6 = true
		 92	[  0]	IST  	   		6	; if slot6
		 93	[  0]	JMP  	  7		12	; 	goto 106
		 94	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		 95	[  0]	TDUP 	  8		46	; slot8 = copy table#k46
		 96	[  0]	TSETS	  3	8	49	; slot8.key = uv4"unknown"
		 97	[  0]	TSETS	  1	8	58	; slot8.ctx = slot1
		 98	[  0]	TSETS	  8	7	55	; uv3"unknown".pendingFocus = slot8
		 99	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		100	[  0]	ISNES	  1		53	; if slot1 ~= "settings"
		101	[  0]	JMP  	  8		2	; 	goto 104
		102	[  0]	KPRI 	  8		1	; slot8 = false
		103	[  0]	JMP  	  9		1	; 	goto 105
		104	[  0]	KPRI 	  8		2	; slot8 = true
		105	[  0]	TSETS	  8	7	45	; uv3"unknown".parked = slot8
		106	[  0]	ISEQS	  1		44	; if slot1 == "upgrade"
		107	[  0]	JMP  	  4		4	; 	goto 112
		108	[  0]	UGET 	  4		10	; slot4 = uv10"unknwon"
		109	[  0]	KSHORT	  6		0	; slot6 = 0
		110	[  0]	KSHORT	  7		0	; slot7 = 0
		111	[  0]	CALL 	  4	1	3	;  = uv10"unknown"(slot5, slot6)
		112	[  0]	ISNES	  1		53	; if slot1 ~= "settings"
		113	[  0]	JMP  	  4		8	; 	goto 122
		114	[  0]	UGET 	  4		11	; slot4 = uv11"unknwon"
		115	[  0]	TGETS	  4	4	43	; slot4 = uv11"unknown".mode
		116	[  0]	ISNES	  4		42	; if uv11"unknown".mode ~= "pad"
		117	[  0]	JMP  	  4		4	; 	goto 122
		118	[  0]	UGET 	  4		8	; slot4 = uv8"unknwon"
		119	[  0]	CALL 	  4	2	1	; slot4 = uv8"unknown"()
		120	[  0]	IST  	   		4	; if uv8"unknown"
		121	[  0]	JMP  	  5		1	; 	goto 123
		122	[  0]	KPRI 	  4		0	; slot4 = nil
		123	[  0]	UGET 	  5		12	; slot5 = uv12"unknwon"
		124	[  0]	MOV  	  7		4	; slot7 = slot4
		125	[  0]	CALL 	  5	2	2	; slot5 = uv12"unknown"(slot6)
		126	[  0]	ISF  	   		4	; if not slot4
		127	[  0]	JMP  	  6		53	; 	goto 181
		128	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		129	[  0]	TGETS	  6	6	41	; slot6 = uv3"unknown".dropdownWasOpen
		130	[  0]	ISEQP	  6		2	; if uv3"unknown".dropdownWasOpen == true
		131	[  0]	JMP  	  6		2	; 	goto 134
		132	[  0]	KPRI 	  6		1	; slot6 = false
		133	[  0]	JMP  	  7		1	; 	goto 135
		134	[  0]	KPRI 	  6		2	; slot6 = true
		135	[  0]	ISEQV	  5		6	; if uv12"unknown" == slot6
		136	[  0]	JMP  	  6		44	; 	goto 181
		137	[  0]	GGET 	  6		40	; slot6 = _env["ipairs"]
		138	[  0]	TGETS	  8	4	51	; slot8 = slot4.rows
		139	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		140	[  0]	JMP  	  9		38	; 	goto 179
		141	[  0]	TGETS	 11	10	50	; slot11 = uv7"unknown".get.item
		142	[  0]	TGETS	 11	11	39	; slot11 = uv7"unknown".get.item.kind
		143	[  0]	ISNES	 11		38	; if uv7"unknown".get.item.kind ~= "dropdown"
		144	[  0]	JMP  	 11		34	; 	goto 179
		145	[  0]	ISF  	   		5	; if not uv12"unknown"
		146	[  0]	JMP  	 11		28	; 	goto 175
		147	[  0]	TGETS	 11	10	50	; slot11 = uv7"unknown".get.item
		148	[  0]	TGETS	 11	11	54	; slot11 = uv7"unknown".get.item.get
		149	[  0]	ISF  	   		11	; if not uv7"unknown".get.item.get
		150	[  0]	JMP  	 12		3	; 	goto 154
		151	[  0]	TGETS	 11	10	50	; slot11 = uv7"unknown".get.item
		152	[  0]	TGETS	 11	11	54	; slot11 = uv7"unknown".get.item.get
		153	[  0]	CALL 	 11	2	1	; slot11 = uv7"unknown".get.item.get()
		154	[  0]	KSHORT	 12		1	; slot12 = 1
		155	[  0]	GGET 	 13		40	; slot13 = _env["ipairs"]
		156	[  0]	TGETS	 15	10	50	; slot15 = uv7"unknown".get.item
		157	[  0]	TGETS	 15	15	37	; slot15 = uv7"unknown".get.item.options
		158	[  0]	IST  	   		15	; if uv7"unknown".get.item.options
		159	[  0]	JMP  	 16		1	; 	goto 161
		160	[  0]	TNEW 	 15		0	; slot15 = new table( array: 0, dict: 1)
		161	[  0]	CALL 	 13	4	2	; slot13, slot14, slot15 = ipairs(slot14)
		162	[  0]	JMP  	 16		4	; 	goto 167
		163	[  0]	TGETS	 18	17	36	; slot18 = slot17.value
		164	[  0]	ISNEV	 18		11	; if <unknown table>.value ~= uv7"unknown".get.item.get
		165	[  0]	JMP  	 18		1	; 	goto 167
		166	[  0]	MOV  	 12		16	; slot12 = slot16
		167	[  0]	ITERC	 16	3	3	; slot16, slot17, slot18 = ipairs, slot14, slot15; slot16, slot17 = ipairs(slot14, slot15)
		168	[  0]	ITERL	 16		-6	; slot15 = slot16; if slot16 != nil goto 163
		169	[  0]	UGET 	 13		13	; slot13 = uv13"unknwon"
		170	[  0]	MOV  	 15		4	; slot15 = slot4
		171	[  0]	MOV  	 16		10	; slot16 = uv7"unknown".get
		172	[  0]	MOV  	 17		12	; slot17 = slot12
		173	[  0]	CALL 	 13	1	4	;  = uv13"unknown"(slot14, slot15, uv7"unknown".get)
		174	[  0]	JMP  	 11		4	; 	goto 179
		175	[  0]	UGET 	 11		14	; slot11 = uv14"unknwon"
		176	[  0]	MOV  	 13		4	; slot13 = slot4
		177	[  0]	MOV  	 14		9	; slot14 = uv2"unknown".targets
		178	[  0]	CALL 	 11	1	3	;  = uv14"unknown"(slot12, slot13)
		179	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, <unknown table>.rows; slot9, slot10 = ipairs(slot7, <unknown table>.rows)
		180	[  0]	ITERL	  9		-40	; <unknown table>.rows = uv2"unknown".targets; if uv2"unknown".targets != nil goto 141
		181	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		182	[  0]	TSETS	  5	6	41	; uv3"unknown".dropdownWasOpen = uv12"unknown"
		183	[  0]	KPRI 	  4		1	; slot4 = false
		184	[  0]	GGET 	  5		35	; slot5 = _env["pairs"]
		185	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		186	[  0]	TGETS	  7	7	34	; slot7 = uv3"unknown".down
		187	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = pairs(uv3"unknown")
		188	[  0]	ISNEXT	  8		2	; Verify ITERN at 191; goto 191
		189	[  0]	KPRI 	  4		2	; slot4 = true
		190	[  0]	JMP  	  5		2	; 	goto 193
		191	[  0]	ITERN	  8	2	3	; slot8, slot9, slot10 = pairs, uv3"unknown", uv3"unknown".down; slot8 = pairs(uv3"unknown", uv3"unknown".down)
		192	[  0]	ITERL	  8		-4	; uv3"unknown".down = <unknown table>.rows; if <unknown table>.rows != nil goto 189
		193	[  0]	UGET 	  5		15	; slot5 = uv15"unknwon"
		194	[  0]	TGETS	  5	5	33	; slot5 = uv15"unknown".update
		195	[  0]	MOV  	  7		0	; slot7 = slot0
		196	[  0]	MOV  	  8		4	; slot8 = slot4
		197	[  0]	CALL 	  5	1	3	;  = uv15"unknown".update(uv3"unknown", slot7)
		198	[  0]	UGET 	  5		11	; slot5 = uv11"unknwon"
		199	[  0]	TGETS	  5	5	32	; slot5 = uv11"unknown".dirty
		200	[  0]	ISF  	   		5	; if not uv11"unknown".dirty
		201	[  0]	JMP  	  6		22	; 	goto 224
		202	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
		203	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		204	[  0]	TGETS	  6	6	31	; slot6 = uv3"unknown".dirtyT
		205	[  0]	ADDVV	  6	6	0	; slot6 = uv3"unknown".dirtyT + slot0
		206	[  0]	TSETS	  6	5	31	; uv3"unknown".dirtyT = slot6
		207	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
		208	[  0]	TGETS	  5	5	31	; slot5 = uv3"unknown".dirtyT
		209	[  0]	KSHORT	  6		1	; slot6 = 1
		210	[  0]	ISGE 	  6		5	; if slot6 >= uv3"unknown".dirtyT
		211	[  0]	JMP  	  5		12	; 	goto 224
		212	[  0]	UGET 	  5		11	; slot5 = uv11"unknwon"
		213	[  0]	KPRI 	  6		1	; slot6 = false
		214	[  0]	TSETS	  6	5	32	; uv11"unknown".dirty = slot6
		215	[  0]	UGET 	  5		16	; slot5 = uv16"unknwon"
		216	[  0]	KSTR 	  7		30	; slot7 = "saveCurrentProgressNow"
		217	[  0]	CALL 	  5	2	2	; slot5 = uv16"unknown"(slot6)
		218	[  0]	ISF  	   		5	; if not uv16"unknown"
		219	[  0]	JMP  	  6		4	; 	goto 224
		220	[  0]	GGET 	  6		29	; slot6 = _env["pcall"]
		221	[  0]	MOV  	  8		5	; slot8 = uv16"unknown"
		222	[  0]	TDUP 	  9		28	; slot9 = copy table#k28
		223	[  0]	CALL 	  6	1	3	;  = pcall(slot7, uv16"unknown")
		224	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
		225	[  0]	TGETS	  5	5	45	; slot5 = uv3"unknown".parked
		226	[  0]	ISF  	   		5	; if not uv3"unknown".parked
		227	[  0]	JMP  	  6		35	; 	goto 263
		228	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
		229	[  0]	TGETS	  5	5	27	; slot5 = uv3"unknown".parkHoldUntil
		230	[  0]	ISEQP	  5		0	; if uv3"unknown".parkHoldUntil == nil
		231	[  0]	JMP  	  5		6	; 	goto 238
		232	[  0]	UGET 	  5		17	; slot5 = uv17"unknwon"
		233	[  0]	CALL 	  5	2	1	; slot5 = uv17"unknown"()
		234	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		235	[  0]	TGETS	  6	6	27	; slot6 = uv3"unknown".parkHoldUntil
		236	[  0]	ISLT 	  5		6	; if uv17"unknown" < uv3"unknown".parkHoldUntil
		237	[  0]	JMP  	  5		2	; 	goto 240
		238	[  0]	KPRI 	  5		1	; slot5 = false
		239	[  0]	JMP  	  6		1	; 	goto 241
		240	[  0]	KPRI 	  5		2	; slot5 = true
		241	[  0]	UGET 	  6		11	; slot6 = uv11"unknwon"
		242	[  0]	TGETS	  6	6	43	; slot6 = uv11"unknown".mode
		243	[  0]	ISNES	  6		42	; if uv11"unknown".mode ~= "pad"
		244	[  0]	JMP  	  6		12	; 	goto 257
		245	[  0]	UGET 	  6		6	; slot6 = uv6"unknwon"
		246	[  0]	TGETV	  6	6	1	; slot6 = uv6"unknown"[slot1]
		247	[  0]	ISF  	   		6	; if not slot6
		248	[  0]	JMP  	  6		8	; 	goto 257
		249	[  0]	ISEQS	  1		53	; if slot1 == "settings"
		250	[  0]	JMP  	  6		6	; 	goto 257
		251	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		252	[  0]	TGETS	  6	6	55	; slot6 = uv3"unknown".pendingFocus
		253	[  0]	IST  	   		6	; if uv3"unknown".pendingFocus
		254	[  0]	JMP  	  6		8	; 	goto 263
		255	[  0]	IST  	   		5	; if slot5
		256	[  0]	JMP  	  6		6	; 	goto 263
		257	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		258	[  0]	KPRI 	  7		1	; slot7 = false
		259	[  0]	TSETS	  7	6	45	; uv3"unknown".parked = slot7
		260	[  0]	UGET 	  6		3	; slot6 = uv3"unknwon"
		261	[  0]	KPRI 	  7		0	; slot7 = nil
		262	[  0]	TSETS	  7	6	27	; uv3"unknown".parkHoldUntil = slot7
		263	[  0]	UGET 	  5		11	; slot5 = uv11"unknwon"
		264	[  0]	TGETS	  5	5	43	; slot5 = uv11"unknown".mode
		265	[  0]	ISNES	  5		42	; if uv11"unknown".mode ~= "pad"
		266	[  0]	JMP  	  5		2	; 	goto 269
		267	[  0]	KSHORT	  5		1	; slot5 = 1
		268	[  0]	JMP  	  6		1	; 	goto 270
		269	[  0]	KSHORT	  5		0	; slot5 = 0
		270	[  0]	UGET 	  6		11	; slot6 = uv11"unknwon"
		271	[  0]	UGET 	  7		11	; slot7 = uv11"unknwon"
		272	[  0]	TGETS	  7	7	26	; slot7 = uv11"unknown".hintAlpha
		273	[  0]	UGET 	  8		11	; slot8 = uv11"unknwon"
		274	[  0]	TGETS	  8	8	26	; slot8 = uv11"unknown".hintAlpha
		275	[  0]	SUBVV	  8	5	8	; slot8 = slot5 - uv11"unknown".hintAlpha
		276	[  0]	GGET 	  9		61	; slot9 = _env["math"]
		277	[  0]	TGETS	  9	9	60	; slot9 = math.min
		278	[  0]	KSHORT	 11		1	; slot11 = 1
		279	[  0]	MULVN	 12	0	1	; slot12 = slot0 * 10
		280	[  0]	CALL 	  9	2	3	; slot9 = math.min(uv7"unknown".get, slot11)
		281	[  0]	MULVV	  8	8	9	; slot8 = slot8 * math.min
		282	[  0]	ADDVV	  7	7	8	; slot7 = uv11"unknown".hintAlpha + slot8
		283	[  0]	TSETS	  7	6	26	; uv11"unknown".hintAlpha = slot7
		284	[  0]	UGET 	  6		11	; slot6 = uv11"unknwon"
		285	[  0]	TGETS	  6	6	26	; slot6 = uv11"unknown".hintAlpha
		286	[  0]	KNUM 	  7		2	; slot7 = 0.01
		287	[  0]	ISGE 	  6		7	; if uv11"unknown".hintAlpha >= slot7
		288	[  0]	JMP  	  6		3	; 	goto 292
		289	[  0]	UGET 	  6		11	; slot6 = uv11"unknwon"
		290	[  0]	KSHORT	  7		0	; slot7 = 0
		291	[  0]	TSETS	  7	6	26	; uv11"unknown".hintAlpha = slot7
		292	[  0]	UGET 	  6		11	; slot6 = uv11"unknwon"
		293	[  0]	UGET 	  7		11	; slot7 = uv11"unknwon"
		294	[  0]	TGETS	  7	7	43	; slot7 = uv11"unknown".mode
		295	[  0]	ISNES	  7		42	; if uv11"unknown".mode ~= "pad"
		296	[  0]	JMP  	  7		14	; 	goto 311
		297	[  0]	UGET 	  7		6	; slot7 = uv6"unknwon"
		298	[  0]	TGETV	  7	7	1	; slot7 = uv6"unknown"[slot1]
		299	[  0]	ISNEP	  7		2	; if slot7 ~= true
		300	[  0]	JMP  	  7		10	; 	goto 311
		301	[  0]	ISEQS	  1		53	; if slot1 == "settings"
		302	[  0]	JMP  	  7		10	; 	goto 313
		303	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		304	[  0]	TGETS	  7	7	47	; slot7 = uv2"unknown".targets
		305	[  0]	MOV  	  9		1	; slot9 = slot1
		306	[  0]	CALL 	  7	2	2	; slot7 = uv2"unknown".targets(slot8)
		307	[  0]	LEN  	  7		7	; slot7 = #uv2"unknown".targets
		308	[  0]	KSHORT	  8		0	; slot8 = 0
		309	[  0]	ISLT 	  8		7	; if slot8 < slot7
		310	[  0]	JMP  	  7		2	; 	goto 313
		311	[  0]	KPRI 	  7		1	; slot7 = false
		312	[  0]	JMP  	  8		1	; 	goto 314
		313	[  0]	KPRI 	  7		2	; slot7 = true
		314	[  0]	TSETS	  7	6	25	; uv11"unknown".hideCursor = slot7
		315	[  0]	UGET 	  6		18	; slot6 = uv18"unknwon"
		316	[  0]	TGETS	  6	6	24	; slot6 = uv18"unknown".active
		317	[  0]	CALL 	  6	2	1	; slot6 = uv18"unknown".active()
		318	[  0]	UGET 	  7		11	; slot7 = uv11"unknwon"
		319	[  0]	TGETS	  7	7	43	; slot7 = uv11"unknown".mode
		320	[  0]	ISNES	  7		42	; if uv11"unknown".mode ~= "pad"
		321	[  0]	JMP  	  7		6	; 	goto 328
		322	[  0]	ISF  	   		6	; if not uv18"unknown".active
		323	[  0]	JMP  	  7		4	; 	goto 328
		324	[  0]	UGET 	  7		19	; slot7 = uv19"unknwon"
		325	[  0]	CALL 	  7	2	1	; slot7 = uv19"unknown"()
		326	[  0]	IST  	   		7	; if uv19"unknown"
		327	[  0]	JMP  	  7		8	; 	goto 336
		328	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		329	[  0]	KPRI 	  8		0	; slot8 = nil
		330	[  0]	TSETS	  8	7	23	; uv3"unknown".repeatDir = slot8
		331	[  0]	UGET 	  7		10	; slot7 = uv10"unknwon"
		332	[  0]	KSHORT	  9		0	; slot9 = 0
		333	[  0]	KSHORT	 10		0	; slot10 = 0
		334	[  0]	CALL 	  7	1	3	;  = uv10"unknown"(slot8, slot9)
		335	[  0]	RET0 	  0		1	; return
		336	[  0]	UGET 	  7		20	; slot7 = uv20"unknwon"
		337	[  0]	MOV  	  9		0	; slot9 = slot0
		338	[  0]	CALL 	  7	1	2	;  = uv20"unknown"(slot8)
		339	[  0]	UGET 	  7		21	; slot7 = uv21"unknwon"
		340	[  0]	MOV  	  9		1	; slot9 = slot1
		341	[  0]	CALL 	  7	1	2	;  = uv21"unknown"(slot8)
		342	[  0]	UGET 	  7		22	; slot7 = uv22"unknwon"
		343	[  0]	MOV  	  9		1	; slot9 = slot1
		344	[  0]	CALL 	  7	1	2	;  = uv22"unknown"(slot8)
		345	[  0]	ISNES	  1		53	; if slot1 ~= "settings"
		346	[  0]	JMP  	  7		2	; 	goto 349
		347	[  0]	UGET 	  7		23	; slot7 = uv23"unknwon"
		348	[  0]	CALL 	  7	1	1	;  = uv23"unknown"()
		349	[  0]	UGET 	  7		15	; slot7 = uv15"unknwon"
		350	[  0]	TGETS	  7	7	24	; slot7 = uv15"unknown".active
		351	[  0]	ISF  	   		7	; if not uv15"unknown".active
		352	[  0]	JMP  	  8		1	; 	goto 354
		353	[  0]	RET0 	  0		1	; return
		354	[  0]	UGET 	  7		24	; slot7 = uv24"unknwon"
		355	[  0]	MOV  	  9		6	; slot9 = uv18"unknown".active
		356	[  0]	KSTR 	 10		22	; slot10 = "leftx"
		357	[  0]	KSTR 	 11		21	; slot11 = "lefty"
		358	[  0]	CALL 	  7	3	4	; slot7, slot8 = uv24"unknown"(slot8, uv18"unknown".active, slot10)
		359	[  0]	UGET 	  9		24	; slot9 = uv24"unknwon"
		360	[  0]	MOV  	 11		6	; slot11 = uv18"unknown".active
		361	[  0]	KSTR 	 12		20	; slot12 = "rightx"
		362	[  0]	KSTR 	 13		19	; slot13 = "righty"
		363	[  0]	CALL 	  9	3	4	; slot9, slot10 = uv24"unknown"(slot10, uv18"unknown".active, slot12)
		364	[  0]	UGET 	 11		6	; slot11 = uv6"unknwon"
		365	[  0]	TGETV	 11	11	1	; slot11 = uv6"unknown"[slot1]
		366	[  0]	ISF  	   		11	; if not slot11
		367	[  0]	JMP  	 12		13	; 	goto 381
		368	[  0]	ISEQS	  1		53	; if slot1 == "settings"
		369	[  0]	JMP  	 11		10	; 	goto 380
		370	[  0]	UGET 	 11		2	; slot11 = uv2"unknwon"
		371	[  0]	TGETS	 11	11	47	; slot11 = uv2"unknown".targets
		372	[  0]	MOV  	 13		1	; slot13 = slot1
		373	[  0]	CALL 	 11	2	2	; slot11 = uv2"unknown".targets(slot12)
		374	[  0]	LEN  	 11		11	; slot11 = #uv2"unknown".targets
		375	[  0]	KSHORT	 12		0	; slot12 = 0
		376	[  0]	ISLT 	 12		11	; if slot12 < slot11
		377	[  0]	JMP  	 11		2	; 	goto 380
		378	[  0]	KPRI 	 11		1	; slot11 = false
		379	[  0]	JMP  	 12		1	; 	goto 381
		380	[  0]	KPRI 	 11		2	; slot11 = true
		381	[  0]	ISF  	   		11	; if not slot11
		382	[  0]	JMP  	 12		45	; 	goto 428
		383	[  0]	UGET 	 12		25	; slot12 = uv25"unknwon"
		384	[  0]	MOV  	 14		7	; slot14 = uv24"unknown"
		385	[  0]	MOV  	 15		8	; slot15 = slot8
		386	[  0]	CALL 	 12	2	3	; slot12 = uv25"unknown"(slot13, uv24"unknown")
		387	[  0]	ISF  	   		12	; if not uv25"unknown"
		388	[  0]	JMP  	 13		27	; 	goto 416
		389	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		390	[  0]	TGETS	 13	13	18	; slot13 = uv3"unknown".repeatSource
		391	[  0]	ISEQS	 13		17	; if uv3"unknown".repeatSource == "dpad"
		392	[  0]	JMP  	 13		32	; 	goto 425
		393	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		394	[  0]	TGETS	 13	13	23	; slot13 = uv3"unknown".repeatDir
		395	[  0]	ISNEV	 13		12	; if uv3"unknown".repeatDir ~= uv25"unknown"
		396	[  0]	JMP  	 13		4	; 	goto 401
		397	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		398	[  0]	TGETS	 13	13	18	; slot13 = uv3"unknown".repeatSource
		399	[  0]	ISEQS	 13		16	; if uv3"unknown".repeatSource == "stick"
		400	[  0]	JMP  	 13		24	; 	goto 425
		401	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		402	[  0]	UGET 	 14		3	; slot14 = uv3"unknwon"
		403	[  0]	UGET 	 15		3	; slot15 = uv3"unknwon"
		404	[  0]	MOV  	 16		12	; slot16 = uv25"unknown"
		405	[  0]	KSHORT	 17		0	; slot17 = 0
		406	[  0]	KSTR 	 18		16	; slot18 = "stick"
		407	[  0]	TSETS	 18	15	18	; uv3"unknown".repeatSource = slot18
		408	[  0]	TSETS	 17	14	15	; uv3"unknown".repeatT = slot17
		409	[  0]	TSETS	 16	13	23	; uv3"unknown".repeatDir = uv25"unknown"
		410	[  0]	UGET 	 13		2	; slot13 = uv2"unknwon"
		411	[  0]	TGETS	 13	13	14	; slot13 = uv2"unknown".navigate
		412	[  0]	MOV  	 15		1	; slot15 = slot1
		413	[  0]	MOV  	 16		12	; slot16 = uv25"unknown"
		414	[  0]	CALL 	 13	1	3	;  = uv2"unknown".navigate(uv3"unknown", slot15)
		415	[  0]	JMP  	 13		9	; 	goto 425
		416	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		417	[  0]	TGETS	 13	13	18	; slot13 = uv3"unknown".repeatSource
		418	[  0]	ISNES	 13		16	; if uv3"unknown".repeatSource ~= "stick"
		419	[  0]	JMP  	 13		5	; 	goto 425
		420	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		421	[  0]	UGET 	 14		3	; slot14 = uv3"unknwon"
		422	[  0]	KNIL 	 15		16	; slot15, uv25"unknown" = nil
		423	[  0]	TSETS	 16	14	18	; uv3"unknown".repeatSource = slot16
		424	[  0]	TSETS	 15	13	23	; uv3"unknown".repeatDir = slot15
		425	[  0]	KSHORT	 13		0	; slot13 = 0
		426	[  0]	KSHORT	  8		0	; slot8 = 0
		427	[  0]	MOV  	  7		13	; slot7 = slot13
		428	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		429	[  0]	TGETS	 12	12	23	; slot12 = uv3"unknown".repeatDir
		430	[  0]	ISF  	   		12	; if not uv3"unknown".repeatDir
		431	[  0]	JMP  	 13		25	; 	goto 457
		432	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		433	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		434	[  0]	TGETS	 13	13	15	; slot13 = uv3"unknown".repeatT
		435	[  0]	ADDVV	 13	13	0	; slot13 = uv3"unknown".repeatT + slot0
		436	[  0]	TSETS	 13	12	15	; uv3"unknown".repeatT = slot13
		437	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		438	[  0]	TGETS	 12	12	18	; slot12 = uv3"unknown".repeatSource
		439	[  0]	ISNES	 12		16	; if uv3"unknown".repeatSource ~= "stick"
		440	[  0]	JMP  	 12		2	; 	goto 443
		441	[  0]	KNUM 	 12		3	; slot12 = 0.32
		442	[  0]	JMP  	 13		1	; 	goto 444
		443	[  0]	KNUM 	 12		4	; slot12 = 0.36
		444	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		445	[  0]	TGETS	 13	13	15	; slot13 = uv3"unknown".repeatT
		446	[  0]	ISGE 	 12		13	; if slot12 >= uv3"unknown".repeatT
		447	[  0]	JMP  	 13		9	; 	goto 457
		448	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		449	[  0]	SUBVN	 14	12	5	; slot14 = slot12 - 0.095
		450	[  0]	TSETS	 14	13	15	; uv3"unknown".repeatT = slot14
		451	[  0]	UGET 	 13		2	; slot13 = uv2"unknwon"
		452	[  0]	TGETS	 13	13	14	; slot13 = uv2"unknown".navigate
		453	[  0]	MOV  	 15		1	; slot15 = slot1
		454	[  0]	UGET 	 16		3	; slot16 = uv3"unknwon"
		455	[  0]	TGETS	 16	16	23	; slot16 = uv3"unknown".repeatDir
		456	[  0]	CALL 	 13	1	3	;  = uv2"unknown".navigate(slot14, slot15)
		457	[  0]	MULVV	 12	7	7	; slot12 = slot7 * slot7
		458	[  0]	MULVV	 13	8	8	; slot13 = slot8 * slot8
		459	[  0]	ADDVV	 12	12	13	; slot12 = slot12 + slot13
		460	[  0]	KNUM 	 13		6	; slot13 = 0.04
		461	[  0]	ISGE 	 13		12	; if slot13 >= slot12
		462	[  0]	JMP  	 12		3	; 	goto 466
		463	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		464	[  0]	KPRI 	 13		0	; slot13 = nil
		465	[  0]	TSETS	 13	12	13	; uv3"unknown".focusUnit = slot13
		466	[  0]	ISEQS	  1		12	; if slot1 == "game"
		467	[  0]	JMP  	 12		4	; 	goto 472
		468	[  0]	ISEQS	  1		44	; if slot1 == "upgrade"
		469	[  0]	JMP  	 12		2	; 	goto 472
		470	[  0]	ISNES	  1		11	; if slot1 ~= "modal"
		471	[  0]	JMP  	 12		6	; 	goto 478
		472	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		473	[  0]	TGETS	 12	12	47	; slot12 = uv2"unknown".targets
		474	[  0]	MOV  	 14		1	; slot14 = slot1
		475	[  0]	CALL 	 12	2	2	; slot12 = uv2"unknown".targets(slot13)
		476	[  0]	IST  	   		12	; if uv2"unknown".targets
		477	[  0]	JMP  	 13		1	; 	goto 479
		478	[  0]	KPRI 	 12		0	; slot12 = nil
		479	[  0]	UGET 	 13		7	; slot13 = uv7"unknwon"
		480	[  0]	TGETS	 13	13	33	; slot13 = uv7"unknown".update
		481	[  0]	MOV  	 15		0	; slot15 = slot0
		482	[  0]	MOV  	 16		7	; slot16 = slot7
		483	[  0]	MOV  	 17		8	; slot17 = slot8
		484	[  0]	UGET 	 18		26	; slot18 = uv26"unknwon"
		485	[  0]	MOV  	 20		1	; slot20 = slot1
		486	[  0]	MOV  	 21		12	; slot21 = slot12
		487	[  0]	CALL 	 18	0	3	; MULTRES = uv26"unknown"(slot19, slot20)
		488	[  0]	CALLM	 13	2	3	; slot13 = uv7"unknown".update(slot14, slot15, slot16, ...MULTRES)
		489	[  0]	ISF  	   		13	; if not uv7"unknown".update
		490	[  0]	JMP  	 14		5	; 	goto 496
		491	[  0]	UGET 	 13		7	; slot13 = uv7"unknwon"
		492	[  0]	TGETS	 13	13	10	; slot13 = uv7"unknown".warp
		493	[  0]	UGET 	 15		27	; slot15 = uv27"unknwon"
		494	[  0]	TGETS	 15	15	9	; slot15 = uv27"unknown".setPosition
		495	[  0]	CALL 	 13	1	2	;  = uv7"unknown".warp(slot14)
		496	[  0]	ISNES	  1		44	; if slot1 ~= "upgrade"
		497	[  0]	JMP  	 13		72	; 	goto 570
		498	[  0]	KSHORT	 13		0	; slot13 = 0
		499	[  0]	KSHORT	 14		0	; slot14 = 0
		500	[  0]	GGET 	 15		61	; slot15 = _env["math"]
		501	[  0]	TGETS	 15	15	8	; slot15 = math.sqrt
		502	[  0]	MULVV	 17	9	9	; slot17 = uv24"unknown" * uv24"unknown"
		503	[  0]	MULVV	 18	10	10	; slot18 = slot10 * slot10
		504	[  0]	ADDVV	 17	17	18	; slot17 = slot17 + slot18
		505	[  0]	CALL 	 15	2	2	; slot15 = math.sqrt(slot16)
		506	[  0]	KNUM 	 16		7	; slot16 = 0.2
		507	[  0]	ISGE 	 16		15	; if slot16 >= math.sqrt
		508	[  0]	JMP  	 15		4	; 	goto 513
		509	[  0]	UNM  	 15		9	; slot15 = -uv24"unknown"
		510	[  0]	UNM  	 14		10	; slot14 = -slot10
		511	[  0]	MOV  	 13		15	; slot13 = slot15
		512	[  0]	JMP  	 15		52	; 	goto 565
		513	[  0]	UGET 	 15		7	; slot15 = uv7"unknwon"
		514	[  0]	TGETS	 15	15	54	; slot15 = uv7"unknown".get
		515	[  0]	CALL 	 15	3	1	; slot15, slot16 = uv7"unknown".get()
		516	[  0]	UGET 	 17		16	; slot17 = uv16"unknwon"
		517	[  0]	KSTR 	 19		7	; slot19 = "ui"
		518	[  0]	CALL 	 17	2	2	; slot17 = uv16"unknown"(slot18)
		519	[  0]	ISF  	   		17	; if not uv16"unknown"
		520	[  0]	JMP  	 18		7	; 	goto 528
		521	[  0]	TGETS	 18	17	6	; slot18 = uv16"unknown".virtual
		522	[  0]	ISF  	   		18	; if not uv16"unknown".virtual
		523	[  0]	JMP  	 19		4	; 	goto 528
		524	[  0]	TGETS	 18	17	6	; slot18 = uv16"unknown".virtual
		525	[  0]	TGETS	 18	18	5	; slot18 = uv16"unknown".virtual.W
		526	[  0]	IST  	   		18	; if uv16"unknown".virtual.W
		527	[  0]	JMP  	 19		1	; 	goto 529
		528	[  0]	KSHORT	 18		640	; slot18 = 640
		529	[  0]	ISF  	   		17	; if not uv16"unknown"
		530	[  0]	JMP  	 19		7	; 	goto 538
		531	[  0]	TGETS	 19	17	6	; slot19 = uv16"unknown".virtual
		532	[  0]	ISF  	   		19	; if not uv16"unknown".virtual
		533	[  0]	JMP  	 20		4	; 	goto 538
		534	[  0]	TGETS	 19	17	6	; slot19 = uv16"unknown".virtual
		535	[  0]	TGETS	 19	19	4	; slot19 = uv16"unknown".virtual.H
		536	[  0]	IST  	   		19	; if uv16"unknown".virtual.H
		537	[  0]	JMP  	 20		1	; 	goto 539
		538	[  0]	KSHORT	 19		360	; slot19 = 360
		539	[  0]	KSHORT	 20		1	; slot20 = 1
		540	[  0]	ISGT 	 15		20	; if uv7"unknown".get > slot20
		541	[  0]	JMP  	 20		3	; 	goto 545
		542	[  0]	KNUM 	 20		8	; slot20 = -0.3
		543	[  0]	ISLT 	  7		20	; if slot7 < slot20
		544	[  0]	JMP  	 20		6	; 	goto 551
		545	[  0]	SUBVN	 20	18	9	; slot20 = slot18 - 2
		546	[  0]	ISGT 	 20		15	; if slot20 > uv7"unknown".get
		547	[  0]	JMP  	 20		4	; 	goto 552
		548	[  0]	KNUM 	 20		10	; slot20 = 0.3
		549	[  0]	ISGE 	 20		7	; if slot20 >= slot7
		550	[  0]	JMP  	 20		1	; 	goto 552
		551	[  0]	UNM  	 13		7	; slot13 = -slot7
		552	[  0]	KSHORT	 20		1	; slot20 = 1
		553	[  0]	ISGT 	 16		20	; if slot16 > slot20
		554	[  0]	JMP  	 20		3	; 	goto 558
		555	[  0]	KNUM 	 20		8	; slot20 = -0.3
		556	[  0]	ISLT 	  8		20	; if slot8 < slot20
		557	[  0]	JMP  	 20		6	; 	goto 564
		558	[  0]	SUBVN	 20	19	9	; slot20 = slot19 - 2
		559	[  0]	ISGT 	 20		16	; if slot20 > slot16
		560	[  0]	JMP  	 20		4	; 	goto 565
		561	[  0]	KNUM 	 20		10	; slot20 = 0.3
		562	[  0]	ISGE 	 20		8	; if slot20 >= slot8
		563	[  0]	JMP  	 20		1	; 	goto 565
		564	[  0]	UNM  	 14		8	; slot14 = -slot8
		565	[  0]	UGET 	 15		10	; slot15 = uv10"unknwon"
		566	[  0]	MOV  	 17		13	; slot17 = slot13
		567	[  0]	MOV  	 18		14	; slot18 = slot14
		568	[  0]	CALL 	 15	1	3	;  = uv10"unknown"(slot16, slot17)
		569	[  0]	JMP  	 13		50	; 	goto 620
		570	[  0]	GGET 	 13		61	; slot13 = _env["math"]
		571	[  0]	TGETS	 13	13	3	; slot13 = math.abs
		572	[  0]	MOV  	 15		10	; slot15 = slot10
		573	[  0]	CALL 	 13	2	2	; slot13 = math.abs(slot14)
		574	[  0]	KNUM 	 14		10	; slot14 = 0.3
		575	[  0]	ISGE 	 14		13	; if slot14 >= math.abs
		576	[  0]	JMP  	 13		2	; 	goto 579
		577	[  0]	ISTC 	 13		10	; slot13 = slot10; if slot10
		578	[  0]	JMP  	 13		1	; 	goto 580
		579	[  0]	KSHORT	 13		0	; slot13 = 0
		580	[  0]	ISEQN	 13		11	; if slot13 == 0
		581	[  0]	JMP  	 14		35	; 	goto 617
		582	[  0]	UGET 	 14		3	; slot14 = uv3"unknwon"
		583	[  0]	UGET 	 15		3	; slot15 = uv3"unknwon"
		584	[  0]	TGETS	 15	15	2	; slot15 = uv3"unknown".scrollT
		585	[  0]	SUBVV	 15	15	0	; slot15 = uv3"unknown".scrollT - slot0
		586	[  0]	TSETS	 15	14	2	; uv3"unknown".scrollT = slot15
		587	[  0]	UGET 	 14		3	; slot14 = uv3"unknwon"
		588	[  0]	TGETS	 14	14	2	; slot14 = uv3"unknown".scrollT
		589	[  0]	KSHORT	 15		0	; slot15 = 0
		590	[  0]	ISGT 	 14		15	; if uv3"unknown".scrollT > slot15
		591	[  0]	JMP  	 14		28	; 	goto 620
		592	[  0]	GGET 	 14		61	; slot14 = _env["math"]
		593	[  0]	TGETS	 14	14	3	; slot14 = math.abs
		594	[  0]	MOV  	 16		13	; slot16 = slot13
		595	[  0]	CALL 	 14	2	2	; slot14 = math.abs(slot15)
		596	[  0]	SUBVN	 14	14	10	; slot14 = math.abs - 0.3
		597	[  0]	DIVVN	 14	14	12	; slot14 = slot14 / 0.7
		598	[  0]	UGET 	 15		3	; slot15 = uv3"unknwon"
		599	[  0]	MULNV	 16	14	13	; slot16 = 0.16 * slot14
		600	[  0]	SUBNV	 16	16	14	; slot16 = 0.22 - slot16
		601	[  0]	TSETS	 16	15	2	; uv3"unknown".scrollT = slot16
		602	[  0]	GGET 	 15		1	; slot15 = _env["love"]
		603	[  0]	TGETS	 15	15	0	; slot15 = love.wheelmoved
		604	[  0]	ISF  	   		15	; if not love.wheelmoved
		605	[  0]	JMP  	 16		14	; 	goto 620
		606	[  0]	GGET 	 15		1	; slot15 = _env["love"]
		607	[  0]	TGETS	 15	15	0	; slot15 = love.wheelmoved
		608	[  0]	KSHORT	 17		0	; slot17 = 0
		609	[  0]	KSHORT	 18		0	; slot18 = 0
		610	[  0]	ISGE 	 18		13	; if slot18 >= slot13
		611	[  0]	JMP  	 18		2	; 	goto 614
		612	[  0]	KSHORT	 18		65535	; slot18 = 65535
		613	[  0]	JMP  	 19		1	; 	goto 615
		614	[  0]	KSHORT	 18		1	; slot18 = 1
		615	[  0]	CALL 	 15	1	3	;  = love.wheelmoved(slot16, slot17)
		616	[  0]	JMP  	 14		3	; 	goto 620
		617	[  0]	UGET 	 14		3	; slot14 = uv3"unknwon"
		618	[  0]	KSHORT	 15		0	; slot15 = 0
		619	[  0]	TSETS	 15	14	2	; uv3"unknown".scrollT = slot15
		620	[  0]	RET0 	  0		1	; return
	953	[  0]	TDUP 	 74		68	; slot74 = copy table#k68
	954	[  0]	TNEW 	 75		3	; slot75 = new table( array: 3, dict: 1)
	955	[  0]	TDUP 	 76		69	; slot76 = copy table#k69
	956	[  0]	TSETB	 76	75	1	; slot75[1] = slot76
	957	[  0]	TSETS	 75	74	477	; slot74.menu = slot75
	958	[  0]	TNEW 	 75		4	; slot75 = new table( array: 4, dict: 1)
	959	[  0]	TDUP 	 76		67	; slot76 = copy table#k67
	960	[  0]	TSETB	 76	75	1	; slot75[1] = slot76
	961	[  0]	TDUP 	 76		66	; slot76 = copy table#k66
	962	[  0]	TSETB	 76	75	2	; slot75[2] = slot76
	963	[  0]	TDUP 	 76		65	; slot76 = copy table#k65
	964	[  0]	TSETB	 76	75	3	; slot75[3] = slot76
	965	[  0]	KSTR 	 76		64	; slot76 = "stage"
	966	[  0]	TSETV	 75	74	76	; slot74[slot76] = slot75
	967	[  0]	TNEW 	 75		3	; slot75 = new table( array: 3, dict: 1)
	968	[  0]	TDUP 	 76		63	; slot76 = copy table#k63
	969	[  0]	TSETB	 76	75	1	; slot75[1] = slot76
	970	[  0]	TDUP 	 76		62	; slot76 = copy table#k62
	971	[  0]	TSETB	 76	75	2	; slot75[2] = slot76
	972	[  0]	KSTR 	 76		61	; slot76 = "core"
	973	[  0]	TSETV	 75	74	76	; slot74[slot76] = slot75
	974	[  0]	TNEW 	 75		3	; slot75 = new table( array: 3, dict: 1)
	975	[  0]	TDUP 	 76		60	; slot76 = copy table#k60
	976	[  0]	TSETB	 76	75	1	; slot75[1] = slot76
	977	[  0]	TDUP 	 76		59	; slot76 = copy table#k59
	978	[  0]	TSETB	 76	75	2	; slot75[2] = slot76
	979	[  0]	KSTR 	 76		58	; slot76 = "confirm"
	980	[  0]	TSETV	 75	74	76	; slot74[slot76] = slot75
	981	[  0]	TNEW 	 75		3	; slot75 = new table( array: 3, dict: 1)
	982	[  0]	TDUP 	 76		57	; slot76 = copy table#k57
	983	[  0]	TSETB	 76	75	1	; slot75[1] = slot76
	984	[  0]	TDUP 	 76		56	; slot76 = copy table#k56
	985	[  0]	TSETB	 76	75	2	; slot75[2] = slot76
	986	[  0]	KSTR 	 76		55	; slot76 = "pause"
	987	[  0]	TSETV	 75	74	76	; slot74[slot76] = slot75
	988	[  0]	TNEW 	 75		4	; slot75 = new table( array: 4, dict: 1)
	989	[  0]	TDUP 	 76		54	; slot76 = copy table#k54
	990	[  0]	TSETB	 76	75	1	; slot75[1] = slot76
	991	[  0]	TDUP 	 76		53	; slot76 = copy table#k53
	992	[  0]	TSETB	 76	75	2	; slot75[2] = slot76
	993	[  0]	TDUP 	 76		52	; slot76 = copy table#k52
	994	[  0]	TSETB	 76	75	3	; slot75[3] = slot76
	995	[  0]	KSTR 	 76		51	; slot76 = "settings"
	996	[  0]	TSETV	 75	74	76	; slot74[slot76] = slot75
	997	[  0]	TNEW 	 75		3	; slot75 = new table( array: 3, dict: 1)
	998	[  0]	TDUP 	 76		50	; slot76 = copy table#k50
	999	[  0]	TSETB	 76	75	1	; slot75[1] = slot76
	1000	[  0]	KSTR 	 76		49	; slot76 = "gameover"
	1001	[  0]	TSETV	 75	74	76	; slot74[slot76] = slot75
	1002	[  0]	TNEW 	 75		3	; slot75 = new table( array: 3, dict: 1)
	1003	[  0]	TDUP 	 76		48	; slot76 = copy table#k48
	1004	[  0]	TSETB	 76	75	1	; slot75[1] = slot76
	1005	[  0]	KSTR 	 76		47	; slot76 = "tutorial"
	1006	[  0]	TSETV	 75	74	76	; slot74[slot76] = slot75
	1007	[  0]	TNEW 	 75		3	; slot75 = new table( array: 3, dict: 1)
	1008	[  0]	TDUP 	 76		46	; slot76 = copy table#k46
	1009	[  0]	TSETB	 76	75	1	; slot75[1] = slot76
	1010	[  0]	TDUP 	 76		45	; slot76 = copy table#k45
	1011	[  0]	TSETB	 76	75	2	; slot75[2] = slot76
	1012	[  0]	KSTR 	 76		44	; slot76 = "modal"
	1013	[  0]	TSETV	 75	74	76	; slot74[slot76] = slot75
	1014	[  0]	FNEW 	 75		43	; N/A:0-0: 1 args, 2 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		ktable#1 = [
			#1: leftshoulder,
			#2: rightshoulder,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	8	; slot1 = uv0"unknown".style
		  3	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown".style()
		  4	[  0]	ISEQS	  0		7	; if slot0 == "dpad_lr"
		  5	[  0]	JMP  	  2		8	; 	goto 14
		  6	[  0]	ISEQS	  0		6	; if slot0 == "dpad_ud"
		  7	[  0]	JMP  	  2		6	; 	goto 14
		  8	[  0]	ISEQS	  0		5	; if slot0 == "dpad"
		  9	[  0]	JMP  	  2		4	; 	goto 14
		 10	[  0]	ISEQS	  0		4	; if slot0 == "rstick"
		 11	[  0]	JMP  	  2		2	; 	goto 14
		 12	[  0]	ISNES	  0		3	; if slot0 ~= "lstick"
		 13	[  0]	JMP  	  2		4	; 	goto 18
		 14	[  0]	TNEW 	  2		3	; slot2 = new table( array: 3, dict: 1)
		 15	[  0]	TSETB	  0	2	1	; slot2[1] = slot0
		 16	[  0]	RET1 	  2		2	; return slot2
		 17	[  0]	JMP  	  2		4	; 	goto 22
		 18	[  0]	ISNES	  0		2	; if slot0 ~= "shoulders"
		 19	[  0]	JMP  	  2		2	; 	goto 22
		 20	[  0]	TDUP 	  2		1	; slot2 = copy table#k1
		 21	[  0]	RET1 	  2		2	; return slot2
		 22	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 23	[  0]	TGETS	  2	2	0	; slot2 = uv1"unknown".padButton
		 24	[  0]	MOV  	  4		0	; slot4 = slot0
		 25	[  0]	CALL 	  2	2	2	; slot2 = uv1"unknown".padButton(slot3)
		 26	[  0]	ISF  	   		2	; if not slot2
		 27	[  0]	JMP  	  3		4	; 	goto 32
		 28	[  0]	TNEW 	  3		3	; slot3 = new table( array: 3, dict: 1)
		 29	[  0]	TSETB	  2	3	1	; slot3[1] = slot2
		 30	[  0]	IST  	   		3	; if slot3
		 31	[  0]	JMP  	  4		1	; 	goto 33
		 32	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 33	[  0]	RET1 	  3		2	; return slot3
	1015	[  0]	FNEW 	 76		42	; N/A:0-0: 1 args, 6 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			#1: back,
			#2: pad_hint_back,
			]
		
		
		ktable#1 = [
			#1: confirm,
			#2: pad_hint_select,
			]
		
		
		ktable#5 = [
			#1: back,
			#2: pad_hint_back,
			]
		
		
		ktable#6 = [
			#1: confirm,
			#2: pad_hint_rebind,
			]
		
		
		ktable#13 = [
			#1: back,
			#2: pad_hint_back,
			]
		
		
		ktable#14 = [
			#1: confirm,
			#2: pad_hint_select,
			]
		
		
		ktable#15 = [
			#1: dpad_ud,
			#2: pad_hint_move,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETV	  1	1	0	; slot1 = uv0"unknown"[slot0]
		  3	[  0]	ISNES	  0		22	; if slot0 ~= "stage"
		  4	[  0]	JMP  	  2		16	; 	goto 21
		  5	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  6	[  0]	CALL 	  2	2	1	; slot2 = uv1"unknown"()
		  7	[  0]	ISFC 	  3		2	; slot3 = uv1"unknown"; if not uv1"unknown"
		  8	[  0]	JMP  	  3		1	; 	goto 10
		  9	[  0]	TGETS	  3	2	21	; slot3 = uv1"unknown".stageSelect
		 10	[  0]	ISF  	   		3	; if not uv1"unknown".stageSelect
		 11	[  0]	JMP  	  4		9	; 	goto 21
		 12	[  0]	TGETS	  4	3	20	; slot4 = uv1"unknown".stageSelect.diffActive
		 13	[  0]	ISF  	   		4	; if not uv1"unknown".stageSelect.diffActive
		 14	[  0]	JMP  	  5		6	; 	goto 21
		 15	[  0]	TNEW 	  4		3	; slot4 = new table( array: 3, dict: 1)
		 16	[  0]	TGETB	  5	1	2	; slot5 = slot1[2]
		 17	[  0]	TSETB	  5	4	1	; slot4[1] = slot5
		 18	[  0]	TGETB	  5	1	3	; slot5 = slot1[3]
		 19	[  0]	TSETB	  5	4	2	; slot4[2] = slot5
		 20	[  0]	RET1 	  4		2	; return slot4
		 21	[  0]	ISNES	  0		19	; if slot0 ~= "settings"
		 22	[  0]	JMP  	  2		78	; 	goto 101
		 23	[  0]	UGET 	  2		2	; slot2 = uv2"unknwon"
		 24	[  0]	CALL 	  2	2	1	; slot2 = uv2"unknown"()
		 25	[  0]	ISFC 	  3		2	; slot3 = uv2"unknown"; if not uv2"unknown"
		 26	[  0]	JMP  	  3		1	; 	goto 28
		 27	[  0]	TGETS	  3	2	18	; slot3 = uv2"unknown".st
		 28	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 29	[  0]	TGETS	  4	4	17	; slot4 = uv3"unknown".active
		 30	[  0]	ISF  	   		4	; if not uv3"unknown".active
		 31	[  0]	JMP  	  5		2	; 	goto 34
		 32	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 33	[  0]	RET1 	  4		2	; return slot4
		 34	[  0]	ISF  	   		2	; if not uv2"unknown"
		 35	[  0]	JMP  	  4		13	; 	goto 49
		 36	[  0]	ISF  	   		3	; if not uv2"unknown".st
		 37	[  0]	JMP  	  4		11	; 	goto 49
		 38	[  0]	TGETS	  4	3	16	; slot4 = uv2"unknown".st.langDropdownOpen
		 39	[  0]	ISF  	   		4	; if not uv2"unknown".st.langDropdownOpen
		 40	[  0]	JMP  	  5		8	; 	goto 49
		 41	[  0]	TNEW 	  4		4	; slot4 = new table( array: 4, dict: 1)
		 42	[  0]	TDUP 	  5		15	; slot5 = copy table#k15
		 43	[  0]	TSETB	  5	4	1	; slot4[1] = slot5
		 44	[  0]	TDUP 	  5		14	; slot5 = copy table#k14
		 45	[  0]	TSETB	  5	4	2	; slot4[2] = slot5
		 46	[  0]	TDUP 	  5		13	; slot5 = copy table#k13
		 47	[  0]	TSETB	  5	4	3	; slot4[3] = slot5
		 48	[  0]	RET1 	  4		2	; return slot4
		 49	[  0]	ISF  	   		2	; if not uv2"unknown"
		 50	[  0]	JMP  	  4		8	; 	goto 59
		 51	[  0]	TGETS	  4	2	12	; slot4 = uv2"unknown".settled
		 52	[  0]	ISEQP	  4		1	; if uv2"unknown".settled == false
		 53	[  0]	JMP  	  4		4	; 	goto 58
		 54	[  0]	UGET 	  4		4	; slot4 = uv4"unknwon"
		 55	[  0]	TGETS	  4	4	11	; slot4 = uv4"unknown".pendingFocus
		 56	[  0]	ISF  	   		4	; if not uv4"unknown".pendingFocus
		 57	[  0]	JMP  	  5		1	; 	goto 59
		 58	[  0]	RET1 	  1		2	; return slot1
		 59	[  0]	ISF  	   		2	; if not uv2"unknown"
		 60	[  0]	JMP  	  4		40	; 	goto 101
		 61	[  0]	UGET 	  4		5	; slot4 = uv5"unknwon"
		 62	[  0]	MOV  	  6		2	; slot6 = uv2"unknown"
		 63	[  0]	CALL 	  4	2	2	; slot4 = uv5"unknown"(slot5)
		 64	[  0]	ISFC 	  5		4	; slot5 = uv5"unknown"; if not uv5"unknown"
		 65	[  0]	JMP  	  5		7	; 	goto 73
		 66	[  0]	TGETS	  5	2	10	; slot5 = uv2"unknown".rows
		 67	[  0]	TGETV	  5	5	4	; slot5 = uv2"unknown".rows[uv5"unknown"]
		 68	[  0]	ISF  	   		5	; if not slot5
		 69	[  0]	JMP  	  6		3	; 	goto 73
		 70	[  0]	TGETS	  5	2	10	; slot5 = uv2"unknown".rows
		 71	[  0]	TGETV	  5	5	4	; slot5 = uv2"unknown".rows[uv5"unknown"]
		 72	[  0]	TGETS	  5	5	9	; slot5 = slot5.item
		 73	[  0]	ISF  	   		5	; if not <unknown table>.item
		 74	[  0]	JMP  	  6		9	; 	goto 84
		 75	[  0]	TGETS	  6	5	8	; slot6 = <unknown table>.item.kind
		 76	[  0]	ISNES	  6		7	; if <unknown table>.item.kind ~= "binding"
		 77	[  0]	JMP  	  6		6	; 	goto 84
		 78	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		 79	[  0]	TDUP 	  7		6	; slot7 = copy table#k6
		 80	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		 81	[  0]	TDUP 	  7		5	; slot7 = copy table#k5
		 82	[  0]	TSETB	  7	6	2	; slot6[2] = slot7
		 83	[  0]	RET1 	  6		2	; return slot6
		 84	[  0]	ISF  	   		5	; if not <unknown table>.item
		 85	[  0]	JMP  	  6		15	; 	goto 101
		 86	[  0]	TGETS	  6	5	8	; slot6 = <unknown table>.item.kind
		 87	[  0]	ISEQS	  6		4	; if <unknown table>.item.kind == "button"
		 88	[  0]	JMP  	  6		6	; 	goto 95
		 89	[  0]	TGETS	  6	5	8	; slot6 = <unknown table>.item.kind
		 90	[  0]	ISEQS	  6		3	; if <unknown table>.item.kind == "checkbox"
		 91	[  0]	JMP  	  6		3	; 	goto 95
		 92	[  0]	TGETS	  6	5	8	; slot6 = <unknown table>.item.kind
		 93	[  0]	ISNES	  6		2	; if <unknown table>.item.kind ~= "link"
		 94	[  0]	JMP  	  6		6	; 	goto 101
		 95	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		 96	[  0]	TDUP 	  7		1	; slot7 = copy table#k1
		 97	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
		 98	[  0]	TDUP 	  7		0	; slot7 = copy table#k0
		 99	[  0]	TSETB	  7	6	2	; slot6[2] = slot7
		100	[  0]	RET1 	  6		2	; return slot6
		101	[  0]	RET1 	  1		2	; return slot1
	1016	[  0]	FNEW 	 77		41	; N/A:0-0: 1 args, 3 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		  4	[  0]	IST  	   		1	; if slot1
		  5	[  0]	JMP  	  2		1	; 	goto 7
		  6	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  7	[  0]	TNEW 	  2		3	; slot2 = new table( array: 3, dict: 1)
		  8	[  0]	TSETB	  0	2	1	; slot2[1] = slot0
		  9	[  0]	GGET 	  3		9	; slot3 = _env["ipairs"]
		 10	[  0]	MOV  	  5		1	; slot5 = slot1
		 11	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
		 12	[  0]	JMP  	  6		7	; 	goto 20
		 13	[  0]	LEN  	  8		2	; slot8 = #slot2
		 14	[  0]	ADDVN	  8	8	0	; slot8 = slot8 + 1
		 15	[  0]	TGETB	  9	7	1	; slot9 = slot7[1]
		 16	[  0]	KSTR 	 10		8	; slot10 = "="
		 17	[  0]	TGETB	 11	7	2	; slot11 = slot7[2]
		 18	[  0]	CAT  	  9	9	11	; slot9 = slot9 .. slot10 .. slot11
		 19	[  0]	TSETV	  9	2	8	; slot2[slot8] = slot9
		 20	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, slot5; slot6, slot7 = ipairs(slot4, slot5)
		 21	[  0]	ITERL	  6		-9	; slot5 = slot6; if slot6 != nil goto 13
		 22	[  0]	GGET 	  3		7	; slot3 = _env["table"]
		 23	[  0]	TGETS	  3	3	6	; slot3 = table.concat
		 24	[  0]	MOV  	  5		2	; slot5 = slot2
		 25	[  0]	KSTR 	  6		5	; slot6 = ";"
		 26	[  0]	CALL 	  3	2	3	; slot3 = table.concat(slot4, slot5)
		 27	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 28	[  0]	CALL 	  4	2	1	; slot4 = uv1"unknown"()
		 29	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 30	[  0]	TGETS	  5	5	4	; slot5 = uv2"unknown".hintCtx
		 31	[  0]	ISNEV	  5		0	; if uv2"unknown".hintCtx ~= slot0
		 32	[  0]	JMP  	  5		4	; 	goto 37
		 33	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 34	[  0]	TGETS	  5	5	3	; slot5 = uv2"unknown".hintShown
		 35	[  0]	IST  	   		5	; if uv2"unknown".hintShown
		 36	[  0]	JMP  	  5		12	; 	goto 49
		 37	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 38	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 39	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		 40	[  0]	MOV  	  8		0	; slot8 = slot0
		 41	[  0]	MOV  	  9		3	; slot9 = slot3
		 42	[  0]	TSETS	  1	7	3	; uv2"unknown".hintShown = slot1
		 43	[  0]	TSETS	  9	6	2	; uv2"unknown".hintKey = slot9
		 44	[  0]	TSETS	  8	5	4	; uv2"unknown".hintCtx = slot8
		 45	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 46	[  0]	KPRI 	  6		0	; slot6 = nil
		 47	[  0]	TSETS	  6	5	1	; uv2"unknown".hintNextKey = slot6
		 48	[  0]	JMP  	  5		33	; 	goto 82
		 49	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 50	[  0]	TGETS	  5	5	2	; slot5 = uv2"unknown".hintKey
		 51	[  0]	ISEQV	  3		5	; if slot3 == uv2"unknown".hintKey
		 52	[  0]	JMP  	  5		26	; 	goto 79
		 53	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 54	[  0]	TGETS	  5	5	1	; slot5 = uv2"unknown".hintNextKey
		 55	[  0]	ISEQV	  5		3	; if uv2"unknown".hintNextKey == slot3
		 56	[  0]	JMP  	  5		6	; 	goto 63
		 57	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 58	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 59	[  0]	MOV  	  7		3	; slot7 = slot3
		 60	[  0]	TSETS	  4	6	0	; uv2"unknown".hintNextT = uv1"unknown"
		 61	[  0]	TSETS	  7	5	1	; uv2"unknown".hintNextKey = slot7
		 62	[  0]	JMP  	  5		19	; 	goto 82
		 63	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 64	[  0]	TGETS	  5	5	0	; slot5 = uv2"unknown".hintNextT
		 65	[  0]	SUBVV	  5	4	5	; slot5 = uv1"unknown" - uv2"unknown".hintNextT
		 66	[  0]	KNUM 	  6		1	; slot6 = 0.2
		 67	[  0]	ISGT 	  6		5	; if slot6 > slot5
		 68	[  0]	JMP  	  5		13	; 	goto 82
		 69	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 70	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 71	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		 72	[  0]	MOV  	  8		3	; slot8 = slot3
		 73	[  0]	MOV  	  9		1	; slot9 = slot1
		 74	[  0]	KPRI 	 10		0	; slot10 = nil
		 75	[  0]	TSETS	 10	7	1	; uv2"unknown".hintNextKey = slot10
		 76	[  0]	TSETS	  9	6	3	; uv2"unknown".hintShown = slot9
		 77	[  0]	TSETS	  8	5	2	; uv2"unknown".hintKey = slot8
		 78	[  0]	JMP  	  5		3	; 	goto 82
		 79	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 80	[  0]	KPRI 	  6		0	; slot6 = nil
		 81	[  0]	TSETS	  6	5	1	; uv2"unknown".hintNextKey = slot6
		 82	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 83	[  0]	TGETS	  5	5	3	; slot5 = uv2"unknown".hintShown
		 84	[  0]	RET1 	  5		2	; return uv2"unknown".hintShown
	1017	[  0]	FNEW 	 78		40	; N/A:0-0: 5 args, 0 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  5		4	; slot5 = _env["love"]
		  2	[  0]	TGETS	  5	5	3	; slot5 = love.graphics
		  3	[  0]	TGETS	  6	5	2	; slot6 = love.graphics.setColor
		  4	[  0]	KNUM 	  8		0	; slot8 = 0.1803921568627451
		  5	[  0]	KNUM 	  9		1	; slot9 = 0.13333333333333333
		  6	[  0]	KNUM 	 10		2	; slot10 = 0.1843137254901961
		  7	[  0]	MULNV	 11	4	3	; slot11 = 0.9 * slot4
		  8	[  0]	CALL 	  6	1	5	;  = love.graphics.setColor(slot7, slot8, slot9, slot10)
		  9	[  0]	TGETS	  6	5	1	; slot6 = love.graphics.rectangle
		 10	[  0]	KSTR 	  8		0	; slot8 = "fill"
		 11	[  0]	ADDVN	  9	0	4	; slot9 = slot0 + 1
		 12	[  0]	MOV  	 10		1	; slot10 = slot1
		 13	[  0]	SUBVN	 11	2	5	; slot11 = slot2 - 2
		 14	[  0]	MOV  	 12		3	; slot12 = slot3
		 15	[  0]	CALL 	  6	1	6	;  = love.graphics.rectangle(slot7, slot8, slot9, slot10, slot11)
		 16	[  0]	TGETS	  6	5	1	; slot6 = love.graphics.rectangle
		 17	[  0]	KSTR 	  8		0	; slot8 = "fill"
		 18	[  0]	MOV  	  9		0	; slot9 = slot0
		 19	[  0]	ADDVN	 10	1	4	; slot10 = slot1 + 1
		 20	[  0]	MOV  	 11		2	; slot11 = slot2
		 21	[  0]	SUBVN	 12	3	5	; slot12 = slot3 - 2
		 22	[  0]	CALL 	  6	1	6	;  = love.graphics.rectangle(slot7, slot8, slot9, slot10, slot11)
		 23	[  0]	TGETS	  6	5	2	; slot6 = love.graphics.setColor
		 24	[  0]	KNUM 	  8		6	; slot8 = 0.3843137254901961
		 25	[  0]	KNUM 	  9		7	; slot9 = 0.3333333333333333
		 26	[  0]	KNUM 	 10		8	; slot10 = 0.396078431372549
		 27	[  0]	MOV  	 11		4	; slot11 = slot4
		 28	[  0]	CALL 	  6	1	5	;  = love.graphics.setColor(slot7, slot8, slot9, slot10)
		 29	[  0]	TGETS	  6	5	1	; slot6 = love.graphics.rectangle
		 30	[  0]	KSTR 	  8		0	; slot8 = "fill"
		 31	[  0]	ADDVN	  9	0	4	; slot9 = slot0 + 1
		 32	[  0]	MOV  	 10		1	; slot10 = slot1
		 33	[  0]	SUBVN	 11	2	5	; slot11 = slot2 - 2
		 34	[  0]	KSHORT	 12		1	; slot12 = 1
		 35	[  0]	CALL 	  6	1	6	;  = love.graphics.rectangle(slot7, slot8, slot9, slot10, slot11)
		 36	[  0]	TGETS	  6	5	1	; slot6 = love.graphics.rectangle
		 37	[  0]	KSTR 	  8		0	; slot8 = "fill"
		 38	[  0]	ADDVN	  9	0	4	; slot9 = slot0 + 1
		 39	[  0]	ADDVV	 10	1	3	; slot10 = slot1 + slot3
		 40	[  0]	SUBVN	 10	10	4	; slot10 = slot10 - 1
		 41	[  0]	SUBVN	 11	2	5	; slot11 = slot2 - 2
		 42	[  0]	KSHORT	 12		1	; slot12 = 1
		 43	[  0]	CALL 	  6	1	6	;  = love.graphics.rectangle(slot7, slot8, slot9, slot10, slot11)
		 44	[  0]	TGETS	  6	5	1	; slot6 = love.graphics.rectangle
		 45	[  0]	KSTR 	  8		0	; slot8 = "fill"
		 46	[  0]	MOV  	  9		0	; slot9 = slot0
		 47	[  0]	ADDVN	 10	1	4	; slot10 = slot1 + 1
		 48	[  0]	KSHORT	 11		1	; slot11 = 1
		 49	[  0]	SUBVN	 12	3	5	; slot12 = slot3 - 2
		 50	[  0]	CALL 	  6	1	6	;  = love.graphics.rectangle(slot7, slot8, slot9, slot10, slot11)
		 51	[  0]	TGETS	  6	5	1	; slot6 = love.graphics.rectangle
		 52	[  0]	KSTR 	  8		0	; slot8 = "fill"
		 53	[  0]	ADDVV	  9	0	2	; slot9 = slot0 + slot2
		 54	[  0]	SUBVN	  9	9	4	; slot9 = slot9 - 1
		 55	[  0]	ADDVN	 10	1	4	; slot10 = slot1 + 1
		 56	[  0]	KSHORT	 11		1	; slot11 = 1
		 57	[  0]	SUBVN	 12	3	5	; slot12 = slot3 - 2
		 58	[  0]	CALL 	  6	1	6	;  = love.graphics.rectangle(slot7, slot8, slot9, slot10, slot11)
		 59	[  0]	RET0 	  0		1	; return
	1018	[  0]	KSTR 	 79		39	; slot79 = "drawHintStrip"
	1019	[  0]	FNEW 	 80		38	; N/A:0-0: 2 args, 7 upvalues, 39 slots
		
		;;;; constant tables ;;;;
		ktable#14 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown"(slot3)
		  4	[  0]	ISF  	   		2	; if not slot2
		  5	[  0]	JMP  	  3		3	; 	goto 9
		  6	[  0]	LEN  	  3		2	; slot3 = #slot2
		  7	[  0]	ISNEN	  3		0	; if slot3 ~= 0
		  8	[  0]	JMP  	  3		1	; 	goto 10
		  9	[  0]	RET0 	  0		1	; return
		 10	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 11	[  0]	KSTR 	  5		23	; slot5 = "ui"
		 12	[  0]	CALL 	  3	2	2	; slot3 = uv1"unknown"(slot4)
		 13	[  0]	ISF  	   		3	; if not uv1"unknown"
		 14	[  0]	JMP  	  4		3	; 	goto 18
		 15	[  0]	TGETS	  4	3	22	; slot4 = uv1"unknown".font
		 16	[  0]	IST  	   		4	; if uv1"unknown".font
		 17	[  0]	JMP  	  5		4	; 	goto 22
		 18	[  0]	GGET 	  4		21	; slot4 = _env["love"]
		 19	[  0]	TGETS	  4	4	20	; slot4 = love.graphics
		 20	[  0]	TGETS	  4	4	19	; slot4 = love.graphics.getFont
		 21	[  0]	CALL 	  4	2	1	; slot4 = love.graphics.getFont()
		 22	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 23	[  0]	TGETS	  5	5	18	; slot5 = uv2"unknown".style
		 24	[  0]	CALL 	  5	2	1	; slot5 = uv2"unknown".style()
		 25	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		 26	[  0]	KSHORT	  7		0	; slot7 = 0
		 27	[  0]	GGET 	  8		17	; slot8 = _env["ipairs"]
		 28	[  0]	MOV  	 10		2	; slot10 = slot2
		 29	[  0]	CALL 	  8	4	2	; slot8, slot9, slot10 = ipairs(slot9)
		 30	[  0]	JMP  	 11		45	; 	goto 76
		 31	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		 32	[  0]	TGETB	 15	12	1	; slot15 = slot12[1]
		 33	[  0]	CALL 	 13	2	2	; slot13 = uv3"unknown"(slot14)
		 34	[  0]	LEN  	 14		13	; slot14 = #uv3"unknown"
		 35	[  0]	KSHORT	 15		0	; slot15 = 0
		 36	[  0]	ISGE 	 15		14	; if slot15 >= slot14
		 37	[  0]	JMP  	 14		38	; 	goto 76
		 38	[  0]	UGET 	 14		4	; slot14 = uv4"unknwon"
		 39	[  0]	TGETB	 16	12	2	; slot16 = slot12[2]
		 40	[  0]	CALL 	 14	2	2	; slot14 = uv4"unknown"(slot15)
		 41	[  0]	KSHORT	 15		0	; slot15 = 0
		 42	[  0]	GGET 	 16		17	; slot16 = _env["ipairs"]
		 43	[  0]	MOV  	 18		13	; slot18 = uv3"unknown"
		 44	[  0]	CALL 	 16	4	2	; slot16, slot17, slot18 = ipairs(slot17)
		 45	[  0]	JMP  	 19		13	; 	goto 59
		 46	[  0]	UGET 	 21		5	; slot21 = uv5"unknwon"
		 47	[  0]	TGETS	 21	21	16	; slot21 = uv5"unknown".size
		 48	[  0]	MOV  	 23		5	; slot23 = uv2"unknown".style
		 49	[  0]	MOV  	 24		20	; slot24 = slot20
		 50	[  0]	CALL 	 21	2	3	; slot21 = uv5"unknown".size(slot22, uv2"unknown".style)
		 51	[  0]	ADDVV	 22	15	21	; slot22 = slot15 + uv5"unknown".size
		 52	[  0]	KSHORT	 23		1	; slot23 = 1
		 53	[  0]	ISGE 	 23		19	; if slot23 >= slot19
		 54	[  0]	JMP  	 23		2	; 	goto 57
		 55	[  0]	KSHORT	 23		1	; slot23 = 1
		 56	[  0]	JMP  	 24		1	; 	goto 58
		 57	[  0]	KSHORT	 23		0	; slot23 = 0
		 58	[  0]	ADDVV	 15	22	23	; slot15 = slot22 + slot23
		 59	[  0]	ITERC	 19	3	3	; slot19, slot20, slot21 = ipairs, slot17, uv3"unknown"; slot19, slot20 = ipairs(slot17, uv3"unknown")
		 60	[  0]	ITERL	 19		-15	; uv3"unknown" = slot19; if slot19 != nil goto 46
		 61	[  0]	MOV  	 18		4	; slot18 = love.graphics.getFont
		 62	[  0]	TGETS	 16	4	15	; slot16 = love.graphics.getFont.getWidth
		 63	[  0]	MOV  	 19		14	; slot19 = uv4"unknown"
		 64	[  0]	CALL 	 16	2	3	; slot16 = love.graphics.getFont.getWidth(slot17, love.graphics.getFont)
		 65	[  0]	LEN  	 17		6	; slot17 = #slot6
		 66	[  0]	ADDVN	 17	17	1	; slot17 = slot17 + 1
		 67	[  0]	TDUP 	 18		14	; slot18 = copy table#k14
		 68	[  0]	TSETS	 13	18	13	; slot18.glyphs = uv3"unknown"
		 69	[  0]	TSETS	 14	18	12	; slot18.text = uv4"unknown"
		 70	[  0]	TSETS	 15	18	11	; slot18.gw = slot15
		 71	[  0]	TSETS	 16	18	10	; slot18.tw = love.graphics.getFont.getWidth
		 72	[  0]	TSETV	 18	6	17	; slot6[slot17] = slot18
		 73	[  0]	ADDVV	 17	7	15	; slot17 = slot7 + slot15
		 74	[  0]	ADDVN	 17	17	2	; slot17 = slot17 + 3
		 75	[  0]	ADDVV	  7	17	16	; slot7 = slot17 + love.graphics.getFont.getWidth
		 76	[  0]	ITERC	 11	3	3	; slot11, slot12, slot13 = ipairs, slot9, slot10; slot11, slot12 = ipairs(slot9, slot10)
		 77	[  0]	ITERL	 11		-47	; slot10 = slot11; if slot11 != nil goto 31
		 78	[  0]	LEN  	  8		6	; slot8 = #slot6
		 79	[  0]	ISNEN	  8		0	; if slot8 ~= 0
		 80	[  0]	JMP  	  8		1	; 	goto 82
		 81	[  0]	RET0 	  0		1	; return
		 82	[  0]	LEN  	  8		6	; slot8 = #slot6
		 83	[  0]	SUBVN	  8	8	1	; slot8 = slot8 - 1
		 84	[  0]	MULVN	  8	8	3	; slot8 = slot8 * 9
		 85	[  0]	ADDVV	  7	7	8	; slot7 = slot7 + slot8
		 86	[  0]	ISF  	   		3	; if not uv1"unknown"
		 87	[  0]	JMP  	  8		7	; 	goto 95
		 88	[  0]	TGETS	  8	3	9	; slot8 = uv1"unknown".virtual
		 89	[  0]	ISF  	   		8	; if not uv1"unknown".virtual
		 90	[  0]	JMP  	  9		4	; 	goto 95
		 91	[  0]	TGETS	  8	3	9	; slot8 = uv1"unknown".virtual
		 92	[  0]	TGETS	  8	8	8	; slot8 = uv1"unknown".virtual.W
		 93	[  0]	IST  	   		8	; if uv1"unknown".virtual.W
		 94	[  0]	JMP  	  9		1	; 	goto 96
		 95	[  0]	KSHORT	  8		640	; slot8 = 640
		 96	[  0]	ISF  	   		3	; if not uv1"unknown"
		 97	[  0]	JMP  	  9		7	; 	goto 105
		 98	[  0]	TGETS	  9	3	9	; slot9 = uv1"unknown".virtual
		 99	[  0]	ISF  	   		9	; if not uv1"unknown".virtual
		100	[  0]	JMP  	 10		4	; 	goto 105
		101	[  0]	TGETS	  9	3	9	; slot9 = uv1"unknown".virtual
		102	[  0]	TGETS	  9	9	7	; slot9 = uv1"unknown".virtual.H
		103	[  0]	IST  	   		9	; if uv1"unknown".virtual.H
		104	[  0]	JMP  	 10		1	; 	goto 106
		105	[  0]	KSHORT	  9		360	; slot9 = 360
		106	[  0]	KSHORT	 10		17	; slot10 = 17
		107	[  0]	ADDVN	 11	7	4	; slot11 = slot7 + 10
		108	[  0]	SUBVV	 12	8	11	; slot12 = slot8 - slot11
		109	[  0]	SUBVN	 12	12	5	; slot12 = slot12 - 6
		110	[  0]	SUBVV	 13	9	10	; slot13 = slot9 - slot10
		111	[  0]	SUBVN	 13	13	5	; slot13 = slot13 - 6
		112	[  0]	GGET 	 14		21	; slot14 = _env["love"]
		113	[  0]	TGETS	 14	14	20	; slot14 = love.graphics
		114	[  0]	TGETS	 15	14	19	; slot15 = love.graphics.getFont
		115	[  0]	CALL 	 15	2	1	; slot15 = love.graphics.getFont()
		116	[  0]	TGETS	 16	14	6	; slot16 = love.graphics.setFont
		117	[  0]	MOV  	 18		4	; slot18 = love.graphics.getFont
		118	[  0]	CALL 	 16	1	2	;  = love.graphics.setFont(slot17)
		119	[  0]	UGET 	 16		6	; slot16 = uv6"unknwon"
		120	[  0]	MOV  	 18		12	; slot18 = slot12
		121	[  0]	MOV  	 19		13	; slot19 = slot13
		122	[  0]	MOV  	 20		11	; slot20 = slot11
		123	[  0]	MOV  	 21		10	; slot21 = slot10
		124	[  0]	MOV  	 22		1	; slot22 = slot1
		125	[  0]	CALL 	 16	1	6	;  = uv6"unknown"(slot17, slot18, slot19, slot20, slot21)
		126	[  0]	ADDVN	 16	12	6	; slot16 = slot12 + 5
		127	[  0]	MOV  	 19		4	; slot19 = love.graphics.getFont
		128	[  0]	TGETS	 17	4	5	; slot17 = love.graphics.getFont.getHeight
		129	[  0]	CALL 	 17	2	2	; slot17 = love.graphics.getFont.getHeight(slot18)
		130	[  0]	GGET 	 18		17	; slot18 = _env["ipairs"]
		131	[  0]	MOV  	 20		6	; slot20 = slot6
		132	[  0]	CALL 	 18	4	2	; slot18, slot19, slot20 = ipairs(love.graphics.getFont)
		133	[  0]	JMP  	 21		57	; 	goto 191
		134	[  0]	MOV  	 23		16	; slot23 = slot16
		135	[  0]	GGET 	 24		17	; slot24 = _env["ipairs"]
		136	[  0]	TGETS	 26	22	13	; slot26 = slot22.glyphs
		137	[  0]	CALL 	 24	4	2	; slot24, slot25, slot26 = ipairs(slot25)
		138	[  0]	JMP  	 27		20	; 	goto 159
		139	[  0]	UGET 	 29		5	; slot29 = uv5"unknwon"
		140	[  0]	TGETS	 29	29	16	; slot29 = uv5"unknown".size
		141	[  0]	MOV  	 31		5	; slot31 = uv2"unknown".style
		142	[  0]	MOV  	 32		28	; slot32 = slot28
		143	[  0]	CALL 	 29	3	3	; slot29, slot30 = uv5"unknown".size(slot30, uv2"unknown".style)
		144	[  0]	UGET 	 31		5	; slot31 = uv5"unknwon"
		145	[  0]	TGETS	 31	31	4	; slot31 = uv5"unknown".draw
		146	[  0]	MOV  	 33		5	; slot33 = uv2"unknown".style
		147	[  0]	MOV  	 34		28	; slot34 = slot28
		148	[  0]	MOV  	 35		23	; slot35 = slot23
		149	[  0]	GGET 	 36		3	; slot36 = _env["math"]
		150	[  0]	TGETS	 36	36	2	; slot36 = math.floor
		151	[  0]	SUBVV	 38	10	30	; slot38 = slot10 - slot30
		152	[  0]	DIVVN	 38	38	7	; slot38 = slot38 / 2
		153	[  0]	CALL 	 36	2	2	; slot36 = math.floor(slot37)
		154	[  0]	ADDVV	 36	13	36	; slot36 = slot13 + math.floor
		155	[  0]	MOV  	 37		1	; slot37 = slot1
		156	[  0]	CALL 	 31	1	6	;  = uv5"unknown".draw(slot32, uv2"unknown".style, slot34, slot35, slot36)
		157	[  0]	ADDVV	 31	23	29	; slot31 = slot23 + uv5"unknown".size
		158	[  0]	ADDVN	 23	31	1	; slot23 = slot31 + 1
		159	[  0]	ITERC	 27	3	3	; slot27, slot28, slot29 = ipairs, slot25, <unknown table>.glyphs; slot27, slot28 = ipairs(slot25, <unknown table>.glyphs)
		160	[  0]	ITERL	 27		-22	; <unknown table>.glyphs = slot27; if slot27 != nil goto 139
		161	[  0]	TGETS	 24	22	11	; slot24 = slot22.gw
		162	[  0]	ADDVV	 24	16	24	; slot24 = slot16 + <unknown table>.gw
		163	[  0]	ADDVN	 16	24	2	; slot16 = slot24 + 3
		164	[  0]	TGETS	 24	14	1	; slot24 = love.graphics.setColor
		165	[  0]	KNUM 	 26		8	; slot26 = 0.9294117647058824
		166	[  0]	KNUM 	 27		9	; slot27 = 0.9019607843137255
		167	[  0]	KNUM 	 28		10	; slot28 = 0.8156862745098039
		168	[  0]	MOV  	 29		1	; slot29 = slot1
		169	[  0]	CALL 	 24	1	5	;  = love.graphics.setColor(slot25, slot26, slot27, slot28)
		170	[  0]	TGETS	 24	14	0	; slot24 = love.graphics.print
		171	[  0]	TGETS	 26	22	12	; slot26 = slot22.text
		172	[  0]	MOV  	 27		16	; slot27 = slot16
		173	[  0]	GGET 	 28		3	; slot28 = _env["math"]
		174	[  0]	TGETS	 28	28	2	; slot28 = math.floor
		175	[  0]	SUBVV	 30	10	17	; slot30 = slot10 - love.graphics.getFont.getHeight
		176	[  0]	DIVVN	 30	30	7	; slot30 = slot30 / 2
		177	[  0]	ADDVN	 30	30	11	; slot30 = slot30 + 0.5
		178	[  0]	CALL 	 28	2	2	; slot28 = math.floor(slot29)
		179	[  0]	ADDVV	 28	13	28	; slot28 = slot13 + math.floor
		180	[  0]	SUBVN	 28	28	7	; slot28 = slot28 - 2
		181	[  0]	CALL 	 24	1	4	;  = love.graphics.print(slot25, <unknown table>.text, slot27)
		182	[  0]	TGETS	 24	22	10	; slot24 = slot22.tw
		183	[  0]	ADDVV	 24	16	24	; slot24 = slot16 + <unknown table>.tw
		184	[  0]	LEN  	 25		6	; slot25 = #slot6
		185	[  0]	ISGE 	 21		25	; if slot21 >= slot25
		186	[  0]	JMP  	 25		2	; 	goto 189
		187	[  0]	KSHORT	 25		9	; slot25 = 9
		188	[  0]	JMP  	 26		1	; 	goto 190
		189	[  0]	KSHORT	 25		0	; slot25 = 0
		190	[  0]	ADDVV	 16	24	25	; slot16 = slot24 + slot25
		191	[  0]	ITERC	 21	3	3	; slot21, slot22, slot23 = ipairs, love.graphics.getFont, slot20; slot21, slot22 = ipairs(love.graphics.getFont, slot20)
		192	[  0]	ITERL	 21		-59	; slot20 = slot21; if slot21 != nil goto 134
		193	[  0]	TGETS	 18	14	6	; slot18 = love.graphics.setFont
		194	[  0]	MOV  	 20		15	; slot20 = love.graphics.getFont
		195	[  0]	CALL 	 18	1	2	;  = love.graphics.setFont(love.graphics.getFont)
		196	[  0]	TGETS	 18	14	1	; slot18 = love.graphics.setColor
		197	[  0]	KSHORT	 20		1	; slot20 = 1
		198	[  0]	KSHORT	 21		1	; slot21 = 1
		199	[  0]	KSHORT	 22		1	; slot22 = 1
		200	[  0]	KSHORT	 23		1	; slot23 = 1
		201	[  0]	CALL 	 18	1	5	;  = love.graphics.setColor(love.graphics.getFont, slot20, slot21, slot22)
		202	[  0]	RET0 	  0		1	; return
	1020	[  0]	TSETV	 80	6	79	; slot6[slot79] = slot80
	1021	[  0]	GGET 	 79		37	; slot79 = _env["setmetatable"]
	1022	[  0]	TNEW 	 81		0	; slot81 = new table( array: 0, dict: 1)
	1023	[  0]	TDUP 	 82		36	; slot82 = copy table#k36
	1024	[  0]	CALL 	 79	2	3	; slot79 = setmetatable(slot80, slot81)
	1025	[  0]	FNEW 	 80		35	; N/A:0-0: 2 args, 1 upvalues, 32 slots
		
		;;;; constant tables ;;;;
		ktable#14 = [
			#1: 0,
			#2: 0,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETV	  2	2	0	; slot2 = uv0"unknown"[slot0]
		  3	[  0]	IST  	   		2	; if slot2
		  4	[  0]	JMP  	  3		3	; 	goto 8
		  5	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		  6	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  7	[  0]	TSETV	  2	3	0	; uv0"unknown"[slot0] = slot2
		  8	[  0]	KSHORT	  3		0	; slot3 = 0
		  9	[  0]	KSHORT	  4		0	; slot4 = 0
		 10	[  0]	MOV  	  7		0	; slot7 = slot0
		 11	[  0]	TGETS	  5	0	19	; slot5 = slot0.getWidth
		 12	[  0]	CALL 	  5	2	2	; slot5 = <unknown table>.getWidth(slot6)
		 13	[  0]	MOV  	  8		0	; slot8 = slot0
		 14	[  0]	TGETS	  6	0	18	; slot6 = slot0.getHeight
		 15	[  0]	CALL 	  6	2	2	; slot6 = <unknown table>.getHeight(slot7)
		 16	[  0]	ISF  	   		1	; if not slot1
		 17	[  0]	JMP  	  7		7	; 	goto 25
		 18	[  0]	MOV  	  9		1	; slot9 = slot1
		 19	[  0]	TGETS	  7	1	17	; slot7 = slot1.getViewport
		 20	[  0]	CALL 	  7	5	2	; slot7, slot8, slot9, slot10 = <unknown table>.getViewport(slot8)
		 21	[  0]	MOV  	  6		10	; slot6 = slot10
		 22	[  0]	MOV  	  5		9	; slot5 = slot9
		 23	[  0]	MOV  	  4		8	; slot4 = slot8
		 24	[  0]	MOV  	  3		7	; slot3 = <unknown table>.getViewport
		 25	[  0]	ISF  	   		1	; if not slot1
		 26	[  0]	JMP  	  7		10	; 	goto 37
		 27	[  0]	MOV  	  7		3	; slot7 = <unknown table>.getViewport
		 28	[  0]	KSTR 	  8		16	; slot8 = ","
		 29	[  0]	MOV  	  9		4	; slot9 = slot4
		 30	[  0]	KSTR 	 10		16	; slot10 = ","
		 31	[  0]	MOV  	 11		5	; slot11 = slot5
		 32	[  0]	KSTR 	 12		16	; slot12 = ","
		 33	[  0]	MOV  	 13		6	; slot13 = slot6
		 34	[  0]	CAT  	  7	7	13	; slot7 = <unknown table>.getViewport .. slot8 .. slot9 .. slot10 .. slot11 .. slot12 .. slot13
		 35	[  0]	IST  	   		7	; if slot7
		 36	[  0]	JMP  	  8		1	; 	goto 38
		 37	[  0]	KSTR 	  7		15	; slot7 = "all"
		 38	[  0]	TGETV	  8	2	7	; slot8 = slot2[slot7]
		 39	[  0]	ISF  	   		8	; if not slot8
		 40	[  0]	JMP  	  9		1	; 	goto 42
		 41	[  0]	UCLO 	  0		110	; nil uvs >= r0; goto 152
		 42	[  0]	TDUP 	  9		14	; slot9 = copy table#k14
		 43	[  0]	TSETB	  5	9	3	; slot9[3] = slot5
		 44	[  0]	TSETB	  6	9	4	; slot9[4] = slot6
		 45	[  0]	MOV  	  8		9	; slot8 = slot9
		 46	[  0]	TSETV	  8	2	7	; slot2[slot7] = slot8
		 47	[  0]	GGET 	  9		13	; slot9 = _env["love"]
		 48	[  0]	TGETS	  9	9	12	; slot9 = love.graphics
		 49	[  0]	GGET 	 10		11	; slot10 = _env["pcall"]
		 50	[  0]	TGETS	 12	9	10	; slot12 = love.graphics.newCanvas
		 51	[  0]	GGET 	 13		9	; slot13 = _env["math"]
		 52	[  0]	TGETS	 13	13	8	; slot13 = math.max
		 53	[  0]	KSHORT	 15		1	; slot15 = 1
		 54	[  0]	GGET 	 16		9	; slot16 = _env["math"]
		 55	[  0]	TGETS	 16	16	7	; slot16 = math.ceil
		 56	[  0]	MOV  	 18		5	; slot18 = slot5
		 57	[  0]	CALL 	 16	0	2	; MULTRES = math.ceil(slot17)
		 58	[  0]	CALLM	 13	2	1	; slot13 = math.max(slot14, ...MULTRES)
		 59	[  0]	GGET 	 14		9	; slot14 = _env["math"]
		 60	[  0]	TGETS	 14	14	8	; slot14 = math.max
		 61	[  0]	KSHORT	 16		1	; slot16 = 1
		 62	[  0]	GGET 	 17		9	; slot17 = _env["math"]
		 63	[  0]	TGETS	 17	17	7	; slot17 = math.ceil
		 64	[  0]	MOV  	 19		6	; slot19 = slot6
		 65	[  0]	CALL 	 17	0	2	; MULTRES = math.ceil(slot18)
		 66	[  0]	CALLM	 14	0	1	; MULTRES = math.max(slot15, ...MULTRES)
		 67	[  0]	CALLM	 10	3	2	; slot10, slot11 = pcall(slot11, love.graphics.newCanvas, ...MULTRES)
		 68	[  0]	ISF  	   		10	; if not pcall
		 69	[  0]	JMP  	 12		2	; 	goto 72
		 70	[  0]	IST  	   		11	; if slot11
		 71	[  0]	JMP  	 12		1	; 	goto 73
		 72	[  0]	UCLO 	  0		80	; nil uvs >= r0; goto 153
		 73	[  0]	TGETS	 12	9	6	; slot12 = love.graphics.push
		 74	[  0]	KSTR 	 14		15	; slot14 = "all"
		 75	[  0]	CALL 	 12	1	2	;  = love.graphics.push(math.max)
		 76	[  0]	GGET 	 12		11	; slot12 = _env["pcall"]
		 77	[  0]	FNEW 	 14		5	; N/A:0-0: 0 args, 4 upvalues, 6 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	TGETS	  0	0	9	; slot0 = uv0"unknown".setCanvas
			  3	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			  4	[  0]	CALL 	  0	1	2	;  = uv0"unknown".setCanvas(slot1)
			  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  6	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".origin
			  7	[  0]	CALL 	  0	1	1	;  = uv0"unknown".origin()
			  8	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  9	[  0]	TGETS	  0	0	7	; slot0 = uv0"unknown".setShader
			 10	[  0]	CALL 	  0	1	1	;  = uv0"unknown".setShader()
			 11	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 12	[  0]	TGETS	  0	0	6	; slot0 = uv0"unknown".setScissor
			 13	[  0]	CALL 	  0	1	1	;  = uv0"unknown".setScissor()
			 14	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 15	[  0]	TGETS	  0	0	5	; slot0 = uv0"unknown".setStencilTest
			 16	[  0]	CALL 	  0	1	1	;  = uv0"unknown".setStencilTest()
			 17	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 18	[  0]	TGETS	  0	0	4	; slot0 = uv0"unknown".clear
			 19	[  0]	KSHORT	  2		0	; slot2 = 0
			 20	[  0]	KSHORT	  3		0	; slot3 = 0
			 21	[  0]	KSHORT	  4		0	; slot4 = 0
			 22	[  0]	KSHORT	  5		0	; slot5 = 0
			 23	[  0]	CALL 	  0	1	5	;  = uv0"unknown".clear(slot1, slot2, slot3, slot4)
			 24	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 25	[  0]	TGETS	  0	0	3	; slot0 = uv0"unknown".setBlendMode
			 26	[  0]	KSTR 	  2		2	; slot2 = "replace"
			 27	[  0]	CALL 	  0	1	2	;  = uv0"unknown".setBlendMode(slot1)
			 28	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 29	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown".setColor
			 30	[  0]	KSHORT	  2		1	; slot2 = 1
			 31	[  0]	KSHORT	  3		1	; slot3 = 1
			 32	[  0]	KSHORT	  4		1	; slot4 = 1
			 33	[  0]	KSHORT	  5		1	; slot5 = 1
			 34	[  0]	CALL 	  0	1	5	;  = uv0"unknown".setColor(slot1, slot2, slot3, slot4)
			 35	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
			 36	[  0]	ISF  	   		0	; if not uv2"unknown"
			 37	[  0]	JMP  	  1		8	; 	goto 46
			 38	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 39	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".draw
			 40	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
			 41	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
			 42	[  0]	KSHORT	  4		0	; slot4 = 0
			 43	[  0]	KSHORT	  5		0	; slot5 = 0
			 44	[  0]	CALL 	  0	1	5	;  = uv0"unknown".draw(slot1, uv3"unknown", uv2"unknown", slot4)
			 45	[  0]	JMP  	  0		6	; 	goto 52
			 46	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			 47	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".draw
			 48	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
			 49	[  0]	KSHORT	  3		0	; slot3 = 0
			 50	[  0]	KSHORT	  4		0	; slot4 = 0
			 51	[  0]	CALL 	  0	1	4	;  = uv0"unknown".draw(slot1, uv3"unknown", slot3)
			 52	[  0]	RET0 	  0		1	; return
		 78	[  0]	CALL 	 12	2	2	; slot12 = pcall(math.max)
		 79	[  0]	TGETS	 13	9	4	; slot13 = love.graphics.pop
		 80	[  0]	CALL 	 13	1	1	;  = love.graphics.pop()
		 81	[  0]	ISF  	   		12	; if not pcall
		 82	[  0]	JMP  	 13		64	; 	goto 147
		 83	[  0]	GGET 	 13		11	; slot13 = _env["pcall"]
		 84	[  0]	TGETS	 15	11	3	; slot15 = slot11.newImageData
		 85	[  0]	MOV  	 16		11	; slot16 = slot11
		 86	[  0]	CALL 	 13	3	3	; slot13, slot14 = pcall(slot14, <unknown table>.newImageData)
		 87	[  0]	ISF  	   		13	; if not pcall
		 88	[  0]	JMP  	 15		58	; 	goto 147
		 89	[  0]	ISF  	   		14	; if not slot14
		 90	[  0]	JMP  	 15		56	; 	goto 147
		 91	[  0]	GGET 	 15		9	; slot15 = _env["math"]
		 92	[  0]	TGETS	 15	15	2	; slot15 = math.huge
		 93	[  0]	GGET 	 16		9	; slot16 = _env["math"]
		 94	[  0]	TGETS	 16	16	2	; slot16 = math.huge
		 95	[  0]	KSHORT	 17		65535	; slot17 = 65535
		 96	[  0]	KSHORT	 18		65535	; slot18 = 65535
		 97	[  0]	KSHORT	 19		0	; slot19 = 0
		 98	[  0]	MOV  	 22		14	; slot22 = slot14
		 99	[  0]	TGETS	 20	14	18	; slot20 = slot14.getHeight
		100	[  0]	CALL 	 20	2	2	; slot20 = <unknown table>.getHeight(slot21)
		101	[  0]	SUBVN	 20	20	0	; slot20 = <unknown table>.getHeight - 1
		102	[  0]	KSHORT	 21		1	; slot21 = 1
		103	[  0]	FORI 	 19		29	; for slot22 = slot19,slot20,slot21 else goto 133
		104	[  0]	KSHORT	 23		0	; slot23 = 0
		105	[  0]	MOV  	 26		14	; slot26 = slot14
		106	[  0]	TGETS	 24	14	19	; slot24 = slot14.getWidth
		107	[  0]	CALL 	 24	2	2	; slot24 = <unknown table>.getWidth(slot25)
		108	[  0]	SUBVN	 24	24	0	; slot24 = <unknown table>.getWidth - 1
		109	[  0]	KSHORT	 25		1	; slot25 = 1
		110	[  0]	FORI 	 23		21	; for slot26 = slot23,slot24,slot25 else goto 132
		111	[  0]	MOV  	 29		14	; slot29 = slot14
		112	[  0]	TGETS	 27	14	1	; slot27 = slot14.getPixel
		113	[  0]	MOV  	 30		26	; slot30 = slot26
		114	[  0]	MOV  	 31		22	; slot31 = slot22
		115	[  0]	CALL 	 27	5	4	; slot27, slot28, slot29, slot30 = <unknown table>.getPixel(slot28, slot29, slot30)
		116	[  0]	KNUM 	 31		1	; slot31 = 0.3
		117	[  0]	ISGE 	 31		30	; if slot31 >= slot30
		118	[  0]	JMP  	 31		12	; 	goto 131
		119	[  0]	ISGE 	 26		15	; if slot26 >= math.huge
		120	[  0]	JMP  	 31		1	; 	goto 122
		121	[  0]	MOV  	 15		26	; slot15 = slot26
		122	[  0]	ISGE 	 17		26	; if slot17 >= slot26
		123	[  0]	JMP  	 31		1	; 	goto 125
		124	[  0]	MOV  	 17		26	; slot17 = slot26
		125	[  0]	ISGE 	 22		16	; if slot22 >= math.huge
		126	[  0]	JMP  	 31		1	; 	goto 128
		127	[  0]	MOV  	 16		22	; slot16 = slot22
		128	[  0]	ISGE 	 18		22	; if slot18 >= slot22
		129	[  0]	JMP  	 31		1	; 	goto 131
		130	[  0]	MOV  	 18		22	; slot18 = slot22
		131	[  0]	FORL 	 23		-21	; slot26 = slot26 + slot25; if cmp(slot26, sign slot25,  slot24) goto 111
		132	[  0]	FORL 	 19		-29	; slot22 = slot22 + slot21; if cmp(slot22, sign slot21,  slot20) goto 104
		133	[  0]	KSHORT	 19		0	; slot19 = 0
		134	[  0]	ISGT 	 19		17	; if slot19 > slot17
		135	[  0]	JMP  	 19		8	; 	goto 144
		136	[  0]	MOV  	 19		15	; slot19 = slot15
		137	[  0]	MOV  	 20		16	; slot20 = slot16
		138	[  0]	ADDVN	 21	17	0	; slot21 = slot17 + 1
		139	[  0]	ADDVN	 22	18	0	; slot22 = slot18 + 1
		140	[  0]	TSETB	 22	8	4	; slot8[4] = slot22
		141	[  0]	TSETB	 21	8	3	; slot8[3] = slot21
		142	[  0]	TSETB	 20	8	2	; slot8[2] = slot20
		143	[  0]	TSETB	 19	8	1	; slot8[1] = slot19
		144	[  0]	MOV  	 21		14	; slot21 = slot14
		145	[  0]	TGETS	 19	14	0	; slot19 = slot14.release
		146	[  0]	CALL 	 19	1	2	;  = <unknown table>.release(slot20)
		147	[  0]	MOV  	 15		11	; slot15 = slot11
		148	[  0]	TGETS	 13	11	0	; slot13 = slot11.release
		149	[  0]	CALL 	 13	1	2	;  = <unknown table>.release(slot14)
		150	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 151
		151	[  0]	RET1 	  8		2	; return slot8
		152	[  0]	RET1 	  8		2	; return slot8
		153	[  0]	RET1 	  8		2	; return slot8
	1026	[  0]	KSTR 	 81		34	; slot81 = "_opaqueBox"
	1027	[  0]	TSETV	 80	6	81	; slot6[slot81] = slot80
	1028	[  0]	KSTR 	 81		33	; slot81 = "badge"
	1029	[  0]	FNEW 	 82		32	; N/A:0-0: 7 args, 7 upvalues, 33 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		  2	[  0]	TGETS	  7	7	37	; slot7 = uv0"unknown".hintAlpha
		  3	[  0]	IST  	   		7	; if uv0"unknown".hintAlpha
		  4	[  0]	JMP  	  8		1	; 	goto 6
		  5	[  0]	KSHORT	  7		0	; slot7 = 0
		  6	[  0]	KSHORT	  8		0	; slot8 = 0
		  7	[  0]	ISLE 	  7		8	; if slot7 <= slot8
		  8	[  0]	JMP  	  8		4	; 	goto 13
		  9	[  0]	ISF  	   		1	; if not slot1
		 10	[  0]	JMP  	  8		2	; 	goto 13
		 11	[  0]	IST  	   		0	; if slot0
		 12	[  0]	JMP  	  8		1	; 	goto 14
		 13	[  0]	RET0 	  0		1	; return
		 14	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 15	[  0]	TGETS	  8	8	36	; slot8 = uv1"unknown".ctx
		 16	[  0]	IST  	   		8	; if uv1"unknown".ctx
		 17	[  0]	JMP  	  9		1	; 	goto 19
		 18	[  0]	KSTR 	  8		35	; slot8 = "none"
		 19	[  0]	ISEQS	  8		34	; if slot8 == "game"
		 20	[  0]	JMP  	  8		1	; 	goto 22
		 21	[  0]	RET0 	  0		1	; return
		 22	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
		 23	[  0]	KSTR 	 10		33	; slot10 = "__slotTutorialAllowsAction"
		 24	[  0]	CALL 	  8	2	2	; slot8 = uv2"unknown"(slot9)
		 25	[  0]	ISF  	   		8	; if not uv2"unknown"
		 26	[  0]	JMP  	  9		6	; 	goto 33
		 27	[  0]	MOV  	  9		8	; slot9 = uv2"unknown"
		 28	[  0]	MOV  	 11		0	; slot11 = slot0
		 29	[  0]	CALL 	  9	2	2	; slot9 = uv2"unknown"(slot10)
		 30	[  0]	IST  	   		9	; if uv2"unknown"
		 31	[  0]	JMP  	  9		1	; 	goto 33
		 32	[  0]	RET0 	  0		1	; return
		 33	[  0]	UGET 	  9		3	; slot9 = uv3"unknwon"
		 34	[  0]	TGETS	  9	9	32	; slot9 = uv3"unknown".padButton
		 35	[  0]	MOV  	 11		0	; slot11 = slot0
		 36	[  0]	CALL 	  9	2	2	; slot9 = uv3"unknown".padButton(slot10)
		 37	[  0]	IST  	   		9	; if uv3"unknown".padButton
		 38	[  0]	JMP  	 10		1	; 	goto 40
		 39	[  0]	RET0 	  0		1	; return
		 40	[  0]	IST  	   		6	; if slot6
		 41	[  0]	JMP  	 10		1	; 	goto 43
		 42	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		 43	[  0]	IST  	   		4	; if slot4
		 44	[  0]	JMP  	 10		1	; 	goto 46
		 45	[  0]	KSHORT	  4		1	; slot4 = 1
		 46	[  0]	IST  	   		5	; if slot5
		 47	[  0]	JMP  	 10		1	; 	goto 49
		 48	[  0]	MOV  	  5		4	; slot5 = slot4
		 49	[  0]	UGET 	 10		4	; slot10 = uv4"unknwon"
		 50	[  0]	MOV  	 12		1	; slot12 = slot1
		 51	[  0]	TGETS	 13	6	31	; slot13 = slot6.quad
		 52	[  0]	CALL 	 10	2	3	; slot10 = uv4"unknown"(slot11, slot12)
		 53	[  0]	TGETS	 11	6	30	; slot11 = slot6.corner
		 54	[  0]	IST  	   		11	; if <unknown table>.corner
		 55	[  0]	JMP  	 12		1	; 	goto 57
		 56	[  0]	KSTR 	 11		29	; slot11 = "tr"
		 57	[  0]	MOV  	 14		11	; slot14 = slot11
		 58	[  0]	TGETS	 12	11	28	; slot12 = slot11.sub
		 59	[  0]	KSHORT	 15		2	; slot15 = 2
		 60	[  0]	KSHORT	 16		2	; slot16 = 2
		 61	[  0]	CALL 	 12	2	4	; slot12 = <unknown table>.sub(<unknown table>.quad, slot14, slot15)
		 62	[  0]	ISEQS	 12		27	; if <unknown table>.sub == "l"
		 63	[  0]	JMP  	 12		2	; 	goto 66
		 64	[  0]	KPRI 	 12		1	; slot12 = false
		 65	[  0]	JMP  	 13		1	; 	goto 67
		 66	[  0]	KPRI 	 12		2	; slot12 = true
		 67	[  0]	MOV  	 15		11	; slot15 = slot11
		 68	[  0]	TGETS	 13	11	28	; slot13 = slot11.sub
		 69	[  0]	KSHORT	 16		1	; slot16 = 1
		 70	[  0]	KSHORT	 17		1	; slot17 = 1
		 71	[  0]	CALL 	 13	2	4	; slot13 = <unknown table>.sub(slot14, slot15, slot16)
		 72	[  0]	ISEQS	 13		26	; if <unknown table>.sub == "t"
		 73	[  0]	JMP  	 13		2	; 	goto 76
		 74	[  0]	KPRI 	 13		1	; slot13 = false
		 75	[  0]	JMP  	 14		1	; 	goto 77
		 76	[  0]	KPRI 	 13		2	; slot13 = true
		 77	[  0]	TGETS	 14	6	25	; slot14 = slot6.inset
		 78	[  0]	IST  	   		14	; if <unknown table>.inset
		 79	[  0]	JMP  	 15		1	; 	goto 81
		 80	[  0]	KSHORT	 14		3	; slot14 = 3
		 81	[  0]	ISF  	   		12	; if not slot12
		 82	[  0]	JMP  	 15		3	; 	goto 86
		 83	[  0]	TGETB	 15	10	1	; slot15 = uv4"unknown"[1]
		 84	[  0]	IST  	   		15	; if slot15
		 85	[  0]	JMP  	 16		1	; 	goto 87
		 86	[  0]	TGETB	 15	10	3	; slot15 = uv4"unknown"[3]
		 87	[  0]	TGETS	 16	6	24	; slot16 = slot6.ox
		 88	[  0]	IST  	   		16	; if <unknown table>.ox
		 89	[  0]	JMP  	 17		1	; 	goto 91
		 90	[  0]	KSHORT	 16		0	; slot16 = 0
		 91	[  0]	SUBVV	 15	15	16	; slot15 = slot15 - slot16
		 92	[  0]	MULVV	 15	15	4	; slot15 = slot15 * slot4
		 93	[  0]	ADDVV	 15	2	15	; slot15 = slot2 + slot15
		 94	[  0]	ISF  	   		12	; if not slot12
		 95	[  0]	JMP  	 16		2	; 	goto 98
		 96	[  0]	ISTC 	 16		14	; slot16 = slot14; if slot14
		 97	[  0]	JMP  	 16		1	; 	goto 99
		 98	[  0]	UNM  	 16		14	; slot16 = -slot14
		 99	[  0]	ADDVV	 15	15	16	; slot15 = slot15 + slot16
		100	[  0]	ISF  	   		13	; if not slot13
		101	[  0]	JMP  	 16		3	; 	goto 105
		102	[  0]	TGETB	 16	10	2	; slot16 = uv4"unknown"[2]
		103	[  0]	IST  	   		16	; if slot16
		104	[  0]	JMP  	 17		1	; 	goto 106
		105	[  0]	TGETB	 16	10	4	; slot16 = uv4"unknown"[4]
		106	[  0]	TGETS	 17	6	23	; slot17 = slot6.oy
		107	[  0]	IST  	   		17	; if <unknown table>.oy
		108	[  0]	JMP  	 18		1	; 	goto 110
		109	[  0]	KSHORT	 17		0	; slot17 = 0
		110	[  0]	SUBVV	 16	16	17	; slot16 = slot16 - slot17
		111	[  0]	MULVV	 16	16	5	; slot16 = slot16 * slot5
		112	[  0]	ADDVV	 16	3	16	; slot16 = slot3 + slot16
		113	[  0]	ISF  	   		13	; if not slot13
		114	[  0]	JMP  	 17		2	; 	goto 117
		115	[  0]	ISTC 	 17		14	; slot17 = slot14; if slot14
		116	[  0]	JMP  	 17		1	; 	goto 118
		117	[  0]	UNM  	 17		14	; slot17 = -slot14
		118	[  0]	ADDVV	 16	16	17	; slot16 = slot16 + slot17
		119	[  0]	UGET 	 17		5	; slot17 = uv5"unknwon"
		120	[  0]	TGETS	 17	17	22	; slot17 = uv5"unknown".style
		121	[  0]	CALL 	 17	2	1	; slot17 = uv5"unknown".style()
		122	[  0]	UGET 	 18		6	; slot18 = uv6"unknwon"
		123	[  0]	TGETS	 18	18	21	; slot18 = uv6"unknown".size
		124	[  0]	MOV  	 20		17	; slot20 = uv5"unknown".style
		125	[  0]	MOV  	 21		9	; slot21 = uv3"unknown".padButton
		126	[  0]	CALL 	 18	3	3	; slot18, slot19 = uv6"unknown".size(slot19, uv5"unknown".style)
		127	[  0]	GGET 	 20		20	; slot20 = _env["math"]
		128	[  0]	TGETS	 20	20	19	; slot20 = math.floor
		129	[  0]	DIVVN	 22	18	0	; slot22 = uv6"unknown".size / 2
		130	[  0]	SUBVV	 22	15	22	; slot22 = slot15 - slot22
		131	[  0]	ADDVN	 22	22	1	; slot22 = slot22 + 0.5
		132	[  0]	CALL 	 20	2	2	; slot20 = math.floor(uv3"unknown".padButton)
		133	[  0]	TGETS	 21	6	18	; slot21 = slot6.dx
		134	[  0]	IST  	   		21	; if <unknown table>.dx
		135	[  0]	JMP  	 22		1	; 	goto 137
		136	[  0]	KSHORT	 21		0	; slot21 = 0
		137	[  0]	ADDVV	 20	20	21	; slot20 = math.floor + slot21
		138	[  0]	GGET 	 21		20	; slot21 = _env["math"]
		139	[  0]	TGETS	 21	21	19	; slot21 = math.floor
		140	[  0]	DIVVN	 23	19	0	; slot23 = slot19 / 2
		141	[  0]	SUBVV	 23	16	23	; slot23 = slot16 - slot23
		142	[  0]	ADDVN	 23	23	1	; slot23 = slot23 + 0.5
		143	[  0]	CALL 	 21	2	2	; slot21 = math.floor(slot22)
		144	[  0]	TGETS	 22	6	17	; slot22 = slot6.dy
		145	[  0]	IST  	   		22	; if <unknown table>.dy
		146	[  0]	JMP  	 23		1	; 	goto 148
		147	[  0]	KSHORT	 22		0	; slot22 = 0
		148	[  0]	ADDVV	 21	21	22	; slot21 = math.floor + slot22
		149	[  0]	UGET 	 22		2	; slot22 = uv2"unknwon"
		150	[  0]	KSTR 	 24		16	; slot24 = "ui"
		151	[  0]	CALL 	 22	2	2	; slot22 = uv2"unknown"(slot23)
		152	[  0]	ISF  	   		22	; if not uv2"unknown"
		153	[  0]	JMP  	 23		7	; 	goto 161
		154	[  0]	TGETS	 23	22	15	; slot23 = uv2"unknown".virtual
		155	[  0]	ISF  	   		23	; if not uv2"unknown".virtual
		156	[  0]	JMP  	 24		4	; 	goto 161
		157	[  0]	TGETS	 23	22	15	; slot23 = uv2"unknown".virtual
		158	[  0]	TGETS	 23	23	14	; slot23 = uv2"unknown".virtual.W
		159	[  0]	IST  	   		23	; if uv2"unknown".virtual.W
		160	[  0]	JMP  	 24		1	; 	goto 162
		161	[  0]	KSHORT	 23		640	; slot23 = 640
		162	[  0]	ISF  	   		22	; if not uv2"unknown"
		163	[  0]	JMP  	 24		7	; 	goto 171
		164	[  0]	TGETS	 24	22	15	; slot24 = uv2"unknown".virtual
		165	[  0]	ISF  	   		24	; if not uv2"unknown".virtual
		166	[  0]	JMP  	 25		4	; 	goto 171
		167	[  0]	TGETS	 24	22	15	; slot24 = uv2"unknown".virtual
		168	[  0]	TGETS	 24	24	13	; slot24 = uv2"unknown".virtual.H
		169	[  0]	IST  	   		24	; if uv2"unknown".virtual.H
		170	[  0]	JMP  	 25		1	; 	goto 172
		171	[  0]	KSHORT	 24		360	; slot24 = 360
		172	[  0]	GGET 	 25		20	; slot25 = _env["math"]
		173	[  0]	TGETS	 25	25	12	; slot25 = math.max
		174	[  0]	KSHORT	 27		1	; slot27 = 1
		175	[  0]	GGET 	 28		20	; slot28 = _env["math"]
		176	[  0]	TGETS	 28	28	11	; slot28 = math.min
		177	[  0]	SUBVV	 30	23	18	; slot30 = slot23 - uv6"unknown".size
		178	[  0]	SUBVN	 30	30	2	; slot30 = slot30 - 1
		179	[  0]	MOV  	 31		20	; slot31 = slot20
		180	[  0]	CALL 	 28	0	3	; MULTRES = math.min(slot29, slot30)
		181	[  0]	CALLM	 25	2	1	; slot25 = math.max(slot26, ...MULTRES)
		182	[  0]	MOV  	 20		25	; slot20 = math.max
		183	[  0]	GGET 	 25		20	; slot25 = _env["math"]
		184	[  0]	TGETS	 25	25	12	; slot25 = math.max
		185	[  0]	KSHORT	 27		1	; slot27 = 1
		186	[  0]	GGET 	 28		20	; slot28 = _env["math"]
		187	[  0]	TGETS	 28	28	11	; slot28 = math.min
		188	[  0]	SUBVV	 30	24	19	; slot30 = slot24 - slot19
		189	[  0]	SUBVN	 30	30	2	; slot30 = slot30 - 1
		190	[  0]	MOV  	 31		21	; slot31 = slot21
		191	[  0]	CALL 	 28	0	3	; MULTRES = math.min(slot29, slot30)
		192	[  0]	CALLM	 25	2	1	; slot25 = math.max(slot26, ...MULTRES)
		193	[  0]	MOV  	 21		25	; slot21 = math.max
		194	[  0]	GGET 	 25		10	; slot25 = _env["love"]
		195	[  0]	TGETS	 25	25	9	; slot25 = love.graphics
		196	[  0]	TGETS	 26	25	8	; slot26 = love.graphics.push
		197	[  0]	KSTR 	 28		7	; slot28 = "all"
		198	[  0]	CALL 	 26	1	2	;  = love.graphics.push(slot27)
		199	[  0]	TGETS	 26	25	6	; slot26 = love.graphics.setShader
		200	[  0]	CALL 	 26	1	1	;  = love.graphics.setShader()
		201	[  0]	TGETS	 26	25	5	; slot26 = love.graphics.setScissor
		202	[  0]	CALL 	 26	1	1	;  = love.graphics.setScissor()
		203	[  0]	TGETS	 26	25	4	; slot26 = love.graphics.setStencilTest
		204	[  0]	CALL 	 26	1	1	;  = love.graphics.setStencilTest()
		205	[  0]	TGETS	 26	25	3	; slot26 = love.graphics.setBlendMode
		206	[  0]	KSTR 	 28		2	; slot28 = "alpha"
		207	[  0]	CALL 	 26	1	2	;  = love.graphics.setBlendMode(slot27)
		208	[  0]	UGET 	 26		6	; slot26 = uv6"unknwon"
		209	[  0]	TGETS	 26	26	1	; slot26 = uv6"unknown".draw
		210	[  0]	MOV  	 28		17	; slot28 = uv5"unknown".style
		211	[  0]	MOV  	 29		9	; slot29 = uv3"unknown".padButton
		212	[  0]	MOV  	 30		20	; slot30 = math.max
		213	[  0]	MOV  	 31		21	; slot31 = math.max
		214	[  0]	TGETS	 32	6	2	; slot32 = slot6.alpha
		215	[  0]	IST  	   		32	; if <unknown table>.alpha
		216	[  0]	JMP  	 33		1	; 	goto 218
		217	[  0]	KSHORT	 32		1	; slot32 = 1
		218	[  0]	MULVV	 32	7	32	; slot32 = slot7 * slot32
		219	[  0]	CALL 	 26	1	6	;  = uv6"unknown".draw(slot27, uv5"unknown".style, uv3"unknown".padButton, math.max, math.max)
		220	[  0]	TGETS	 26	25	0	; slot26 = love.graphics.pop
		221	[  0]	CALL 	 26	1	1	;  = love.graphics.pop()
		222	[  0]	RET0 	  0		1	; return
	1030	[  0]	TSETV	 82	6	81	; slot6[slot81] = slot82
	1031	[  0]	FNEW 	 81		31	; N/A:0-0: 0 args, 6 upvalues, 25 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	21	; slot0 = uv0"unknown".notice
		  3	[  0]	IST  	   		0	; if uv0"unknown".notice
		  4	[  0]	JMP  	  1		1	; 	goto 6
		  5	[  0]	RET0 	  0		1	; return
		  6	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  7	[  0]	CALL 	  1	2	1	; slot1 = uv1"unknown"()
		  8	[  0]	TGETS	  2	0	20	; slot2 = uv0"unknown".notice.t0
		  9	[  0]	SUBVV	  1	1	2	; slot1 = slot1 - uv0"unknown".notice.t0
		 10	[  0]	KNUM 	  2		0	; slot2 = 2.6
		 11	[  0]	ISGE 	  2		1	; if slot2 >= slot1
		 12	[  0]	JMP  	  2		4	; 	goto 17
		 13	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 14	[  0]	KPRI 	  3		0	; slot3 = nil
		 15	[  0]	TSETS	  3	2	21	; uv0"unknown".notice = slot3
		 16	[  0]	RET0 	  0		1	; return
		 17	[  0]	GGET 	  2		19	; slot2 = _env["math"]
		 18	[  0]	TGETS	  2	2	18	; slot2 = math.min
		 19	[  0]	KSHORT	  4		1	; slot4 = 1
		 20	[  0]	DIVVN	  5	1	1	; slot5 = slot1 / 0.18
		 21	[  0]	CALL 	  2	2	3	; slot2 = math.min(slot3, slot4)
		 22	[  0]	GGET 	  3		19	; slot3 = _env["math"]
		 23	[  0]	TGETS	  3	3	18	; slot3 = math.min
		 24	[  0]	KSHORT	  5		1	; slot5 = 1
		 25	[  0]	SUBNV	  6	1	0	; slot6 = 2.6 - slot1
		 26	[  0]	DIVVN	  6	6	2	; slot6 = slot6 / 0.45
		 27	[  0]	CALL 	  3	2	3	; slot3 = math.min(slot4, slot5)
		 28	[  0]	MULVV	  2	2	3	; slot2 = slot2 * slot3
		 29	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 30	[  0]	KSTR 	  5		17	; slot5 = "ui"
		 31	[  0]	CALL 	  3	2	2	; slot3 = uv2"unknown"(slot4)
		 32	[  0]	ISF  	   		3	; if not uv2"unknown"
		 33	[  0]	JMP  	  4		3	; 	goto 37
		 34	[  0]	TGETS	  4	3	16	; slot4 = uv2"unknown".font
		 35	[  0]	IST  	   		4	; if uv2"unknown".font
		 36	[  0]	JMP  	  5		4	; 	goto 41
		 37	[  0]	GGET 	  4		15	; slot4 = _env["love"]
		 38	[  0]	TGETS	  4	4	14	; slot4 = love.graphics
		 39	[  0]	TGETS	  4	4	13	; slot4 = love.graphics.getFont
		 40	[  0]	CALL 	  4	2	1	; slot4 = love.graphics.getFont()
		 41	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
		 42	[  0]	TGETS	  7	0	12	; slot7 = uv0"unknown".notice.key
		 43	[  0]	CALL 	  5	2	2	; slot5 = uv3"unknown"(slot6)
		 44	[  0]	UGET 	  6		4	; slot6 = uv4"unknwon"
		 45	[  0]	TGETS	  6	6	11	; slot6 = uv4"unknown".size
		 46	[  0]	KSTR 	  8		10	; slot8 = "xbox"
		 47	[  0]	KSTR 	  9		9	; slot9 = "pad"
		 48	[  0]	CALL 	  6	3	3	; slot6, slot7 = uv4"unknown".size(uv0"unknown".notice.key, slot8)
		 49	[  0]	MOV  	 10		4	; slot10 = love.graphics.getFont
		 50	[  0]	TGETS	  8	4	8	; slot8 = love.graphics.getFont.getWidth
		 51	[  0]	MOV  	 11		5	; slot11 = uv3"unknown"
		 52	[  0]	CALL 	  8	2	3	; slot8 = love.graphics.getFont.getWidth(slot9, love.graphics.getFont)
		 53	[  0]	ADDVN	  9	6	3	; slot9 = uv4"unknown".size + 4
		 54	[  0]	ADDVV	  9	9	8	; slot9 = slot9 + love.graphics.getFont.getWidth
		 55	[  0]	ADDVN	  9	9	4	; slot9 = slot9 + 12
		 56	[  0]	KSHORT	 10		17	; slot10 = 17
		 57	[  0]	ISF  	   		3	; if not uv2"unknown"
		 58	[  0]	JMP  	 11		7	; 	goto 66
		 59	[  0]	TGETS	 11	3	7	; slot11 = uv2"unknown".virtual
		 60	[  0]	ISF  	   		11	; if not uv2"unknown".virtual
		 61	[  0]	JMP  	 12		4	; 	goto 66
		 62	[  0]	TGETS	 11	3	7	; slot11 = uv2"unknown".virtual
		 63	[  0]	TGETS	 11	11	6	; slot11 = uv2"unknown".virtual.W
		 64	[  0]	IST  	   		11	; if uv2"unknown".virtual.W
		 65	[  0]	JMP  	 12		1	; 	goto 67
		 66	[  0]	KSHORT	 11		640	; slot11 = 640
		 67	[  0]	GGET 	 12		19	; slot12 = _env["math"]
		 68	[  0]	TGETS	 12	12	5	; slot12 = math.floor
		 69	[  0]	SUBVV	 14	11	9	; slot14 = slot11 - slot9
		 70	[  0]	DIVVN	 14	14	5	; slot14 = slot14 / 2
		 71	[  0]	CALL 	 12	2	2	; slot12 = math.floor(slot13)
		 72	[  0]	GGET 	 13		19	; slot13 = _env["math"]
		 73	[  0]	TGETS	 13	13	5	; slot13 = math.floor
		 74	[  0]	GGET 	 15		19	; slot15 = _env["math"]
		 75	[  0]	TGETS	 15	15	18	; slot15 = math.min
		 76	[  0]	KSHORT	 17		1	; slot17 = 1
		 77	[  0]	DIVVN	 18	1	1	; slot18 = slot1 / 0.18
		 78	[  0]	CALL 	 15	2	3	; slot15 = math.min(slot16, slot17)
		 79	[  0]	SUBNV	 15	15	6	; slot15 = 1 - math.min
		 80	[  0]	MULVN	 15	15	7	; slot15 = slot15 * -4
		 81	[  0]	CALL 	 13	2	2	; slot13 = math.floor(slot14)
		 82	[  0]	ADDNV	 13	13	8	; slot13 = 6 + math.floor
		 83	[  0]	GGET 	 14		15	; slot14 = _env["love"]
		 84	[  0]	TGETS	 14	14	14	; slot14 = love.graphics
		 85	[  0]	TGETS	 15	14	13	; slot15 = love.graphics.getFont
		 86	[  0]	CALL 	 15	2	1	; slot15 = love.graphics.getFont()
		 87	[  0]	TGETS	 16	14	4	; slot16 = love.graphics.setFont
		 88	[  0]	MOV  	 18		4	; slot18 = love.graphics.getFont
		 89	[  0]	CALL 	 16	1	2	;  = love.graphics.setFont(slot17)
		 90	[  0]	UGET 	 16		5	; slot16 = uv5"unknwon"
		 91	[  0]	MOV  	 18		12	; slot18 = math.floor
		 92	[  0]	MOV  	 19		13	; slot19 = slot13
		 93	[  0]	MOV  	 20		9	; slot20 = slot9
		 94	[  0]	MOV  	 21		10	; slot21 = slot10
		 95	[  0]	MOV  	 22		2	; slot22 = slot2
		 96	[  0]	CALL 	 16	1	6	;  = uv5"unknown"(slot17, math.floor, slot19, slot20, slot21)
		 97	[  0]	UGET 	 16		4	; slot16 = uv4"unknwon"
		 98	[  0]	TGETS	 16	16	3	; slot16 = uv4"unknown".draw
		 99	[  0]	KSTR 	 18		10	; slot18 = "xbox"
		100	[  0]	KSTR 	 19		9	; slot19 = "pad"
		101	[  0]	ADDVN	 20	12	8	; slot20 = math.floor + 6
		102	[  0]	GGET 	 21		19	; slot21 = _env["math"]
		103	[  0]	TGETS	 21	21	5	; slot21 = math.floor
		104	[  0]	SUBVV	 23	10	7	; slot23 = slot10 - uv0"unknown".notice.key
		105	[  0]	DIVVN	 23	23	5	; slot23 = slot23 / 2
		106	[  0]	CALL 	 21	2	2	; slot21 = math.floor(slot22)
		107	[  0]	ADDVV	 21	13	21	; slot21 = slot13 + math.floor
		108	[  0]	MOV  	 22		2	; slot22 = slot2
		109	[  0]	CALL 	 16	1	6	;  = uv4"unknown".draw(slot17, slot18, slot19, slot20, slot21)
		110	[  0]	TGETS	 16	14	2	; slot16 = love.graphics.setColor
		111	[  0]	KNUM 	 18		9	; slot18 = 0.9294117647058824
		112	[  0]	KNUM 	 19		10	; slot19 = 0.9019607843137255
		113	[  0]	KNUM 	 20		11	; slot20 = 0.8156862745098039
		114	[  0]	MOV  	 21		2	; slot21 = slot2
		115	[  0]	CALL 	 16	1	5	;  = love.graphics.setColor(slot17, slot18, slot19, slot20)
		116	[  0]	TGETS	 16	14	1	; slot16 = love.graphics.print
		117	[  0]	MOV  	 18		5	; slot18 = uv3"unknown"
		118	[  0]	ADDVN	 19	12	8	; slot19 = math.floor + 6
		119	[  0]	ADDVV	 19	19	6	; slot19 = slot19 + uv4"unknown".size
		120	[  0]	ADDVN	 19	19	3	; slot19 = slot19 + 4
		121	[  0]	GGET 	 20		19	; slot20 = _env["math"]
		122	[  0]	TGETS	 20	20	5	; slot20 = math.floor
		123	[  0]	MOV  	 24		4	; slot24 = love.graphics.getFont
		124	[  0]	TGETS	 22	4	0	; slot22 = love.graphics.getFont.getHeight
		125	[  0]	CALL 	 22	2	2	; slot22 = love.graphics.getFont.getHeight(slot23)
		126	[  0]	SUBVV	 22	10	22	; slot22 = slot10 - love.graphics.getFont.getHeight
		127	[  0]	DIVVN	 22	22	5	; slot22 = slot22 / 2
		128	[  0]	ADDVN	 22	22	12	; slot22 = slot22 + 0.5
		129	[  0]	CALL 	 20	2	2	; slot20 = math.floor(slot21)
		130	[  0]	ADDVV	 20	13	20	; slot20 = slot13 + math.floor
		131	[  0]	SUBVN	 20	20	5	; slot20 = slot20 - 2
		132	[  0]	CALL 	 16	1	4	;  = love.graphics.print(slot17, uv3"unknown", slot19)
		133	[  0]	TGETS	 16	14	4	; slot16 = love.graphics.setFont
		134	[  0]	MOV  	 18		15	; slot18 = love.graphics.getFont
		135	[  0]	CALL 	 16	1	2	;  = love.graphics.setFont(slot17)
		136	[  0]	TGETS	 16	14	2	; slot16 = love.graphics.setColor
		137	[  0]	KSHORT	 18		1	; slot18 = 1
		138	[  0]	KSHORT	 19		1	; slot19 = 1
		139	[  0]	KSHORT	 20		1	; slot20 = 1
		140	[  0]	KSHORT	 21		1	; slot21 = 1
		141	[  0]	CALL 	 16	1	5	;  = love.graphics.setColor(slot17, slot18, slot19, slot20)
		142	[  0]	RET0 	  0		1	; return
	1032	[  0]	KSTR 	 82		30	; slot82 = "drawOverlay"
	1033	[  0]	FNEW 	 83		29	; N/A:0-0: 0 args, 4 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	CALL 	  0	1	1	;  = uv0"unknown"()
		  3	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  4	[  0]	TGETS	  0	0	6	; slot0 = uv1"unknown".hintAlpha
		  5	[  0]	IST  	   		0	; if uv1"unknown".hintAlpha
		  6	[  0]	JMP  	  1		1	; 	goto 8
		  7	[  0]	KSHORT	  0		0	; slot0 = 0
		  8	[  0]	KSHORT	  1		0	; slot1 = 0
		  9	[  0]	ISGT 	  0		1	; if slot0 > slot1
		 10	[  0]	JMP  	  1		1	; 	goto 12
		 11	[  0]	RET0 	  0		1	; return
		 12	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 13	[  0]	TGETS	  1	1	5	; slot1 = uv2"unknown".ctx
		 14	[  0]	IST  	   		1	; if uv2"unknown".ctx
		 15	[  0]	JMP  	  2		3	; 	goto 19
		 16	[  0]	UGET 	  1		3	; slot1 = uv3"unknwon"
		 17	[  0]	TGETS	  1	1	4	; slot1 = uv3"unknown".detect
		 18	[  0]	CALL 	  1	2	1	; slot1 = uv3"unknown".detect()
		 19	[  0]	ISEQS	  1		3	; if slot1 == "game"
		 20	[  0]	JMP  	  2		9	; 	goto 30
		 21	[  0]	ISEQS	  1		2	; if slot1 == "splash"
		 22	[  0]	JMP  	  2		7	; 	goto 30
		 23	[  0]	ISEQS	  1		1	; if slot1 == "none"
		 24	[  0]	JMP  	  2		5	; 	goto 30
		 25	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 26	[  0]	TGETS	  2	2	0	; slot2 = uv1"unknown".drawHintStrip
		 27	[  0]	MOV  	  4		1	; slot4 = slot1
		 28	[  0]	MOV  	  5		0	; slot5 = slot0
		 29	[  0]	CALL 	  2	1	3	;  = uv1"unknown".drawHintStrip(slot3, slot4)
		 30	[  0]	RET0 	  0		1	; return
	1034	[  0]	TSETV	 83	6	82	; slot6[slot82] = slot83
	1035	[  0]	KSTR 	 82		28	; slot82 = "drawGameOverlay"
	1036	[  0]	FNEW 	 83		27	; N/A:0-0: 0 args, 3 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	15	; slot0 = uv0"unknown".hintAlpha
		  3	[  0]	IST  	   		0	; if uv0"unknown".hintAlpha
		  4	[  0]	JMP  	  1		1	; 	goto 6
		  5	[  0]	KSHORT	  0		0	; slot0 = 0
		  6	[  0]	KSHORT	  1		0	; slot1 = 0
		  7	[  0]	ISGT 	  0		1	; if slot0 > slot1
		  8	[  0]	JMP  	  0		5	; 	goto 14
		  9	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 10	[  0]	TGETS	  0	0	14	; slot0 = uv1"unknown".notice
		 11	[  0]	IST  	   		0	; if uv1"unknown".notice
		 12	[  0]	JMP  	  0		1	; 	goto 14
		 13	[  0]	RET0 	  0		1	; return
		 14	[  0]	GGET 	  0		13	; slot0 = _env["love"]
		 15	[  0]	TGETS	  0	0	12	; slot0 = love.graphics
		 16	[  0]	TGETS	  1	0	11	; slot1 = love.graphics.push
		 17	[  0]	CALL 	  1	1	1	;  = love.graphics.push()
		 18	[  0]	TGETS	  1	0	10	; slot1 = love.graphics.origin
		 19	[  0]	CALL 	  1	1	1	;  = love.graphics.origin()
		 20	[  0]	TGETS	  1	0	9	; slot1 = love.graphics.translate
		 21	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 22	[  0]	KSTR 	  5		8	; slot5 = "screenOffsetX"
		 23	[  0]	CALL 	  3	2	2	; slot3 = uv2"unknown"(slot4)
		 24	[  0]	IST  	   		3	; if uv2"unknown"
		 25	[  0]	JMP  	  4		1	; 	goto 27
		 26	[  0]	KSHORT	  3		0	; slot3 = 0
		 27	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 28	[  0]	KSTR 	  6		7	; slot6 = "screenOffsetY"
		 29	[  0]	CALL 	  4	2	2	; slot4 = uv2"unknown"(slot5)
		 30	[  0]	IST  	   		4	; if uv2"unknown"
		 31	[  0]	JMP  	  5		1	; 	goto 33
		 32	[  0]	KSHORT	  4		0	; slot4 = 0
		 33	[  0]	CALL 	  1	1	3	;  = love.graphics.translate(slot2, slot3)
		 34	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		 35	[  0]	KSTR 	  3		6	; slot3 = "screenScale"
		 36	[  0]	CALL 	  1	2	2	; slot1 = uv2"unknown"(slot2)
		 37	[  0]	IST  	   		1	; if slot1
		 38	[  0]	JMP  	  2		1	; 	goto 40
		 39	[  0]	KSHORT	  1		1	; slot1 = 1
		 40	[  0]	TGETS	  2	0	5	; slot2 = love.graphics.scale
		 41	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 42	[  0]	KSTR 	  6		4	; slot6 = "screenScaleX"
		 43	[  0]	CALL 	  4	2	2	; slot4 = uv2"unknown"(slot5)
		 44	[  0]	IST  	   		4	; if uv2"unknown"
		 45	[  0]	JMP  	  5		1	; 	goto 47
		 46	[  0]	MOV  	  4		1	; slot4 = slot1
		 47	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 48	[  0]	KSTR 	  7		3	; slot7 = "screenScaleY"
		 49	[  0]	CALL 	  5	2	2	; slot5 = uv2"unknown"(slot6)
		 50	[  0]	IST  	   		5	; if uv2"unknown"
		 51	[  0]	JMP  	  6		1	; 	goto 53
		 52	[  0]	MOV  	  5		1	; slot5 = slot1
		 53	[  0]	CALL 	  2	1	3	;  = love.graphics.scale(slot3, slot4)
		 54	[  0]	TGETS	  2	0	2	; slot2 = love.graphics.setShader
		 55	[  0]	CALL 	  2	1	1	;  = love.graphics.setShader()
		 56	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 57	[  0]	TGETS	  2	2	1	; slot2 = uv0"unknown".drawOverlay
		 58	[  0]	CALL 	  2	1	1	;  = uv0"unknown".drawOverlay()
		 59	[  0]	TGETS	  2	0	0	; slot2 = love.graphics.pop
		 60	[  0]	CALL 	  2	1	1	;  = love.graphics.pop()
		 61	[  0]	RET0 	  0		1	; return
	1037	[  0]	TSETV	 83	6	82	; slot6[slot82] = slot83
	1038	[  0]	KSTR 	 82		26	; slot82 = "beginDraw"
	1039	[  0]	FNEW 	 83		25	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".beginFrame
		  3	[  0]	CALL 	  0	1	1	;  = uv0"unknown".beginFrame()
		  4	[  0]	RET0 	  0		1	; return
	1040	[  0]	TSETV	 83	6	82	; slot6[slot82] = slot83
	1041	[  0]	KSTR 	 82		24	; slot82 = "mark"
	1042	[  0]	FNEW 	 83		23	; N/A:0-0: 7 args, 1 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		  2	[  0]	TGETS	  7	7	0	; slot7 = uv0"unknown".add
		  3	[  0]	MOV  	  9		0	; slot9 = slot0
		  4	[  0]	MOV  	 10		1	; slot10 = slot1
		  5	[  0]	MOV  	 11		2	; slot11 = slot2
		  6	[  0]	MOV  	 12		3	; slot12 = slot3
		  7	[  0]	MOV  	 13		4	; slot13 = slot4
		  8	[  0]	MOV  	 14		5	; slot14 = slot5
		  9	[  0]	MOV  	 15		6	; slot15 = slot6
		 10	[  0]	CALL 	  7	1	8	;  = uv0"unknown".add(slot8, slot9, slot10, slot11, slot12, slot13, slot14)
		 11	[  0]	RET0 	  0		1	; return
	1043	[  0]	TSETV	 83	6	82	; slot6[slot82] = slot83
	1044	[  0]	FNEW 	 82		22	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown".count
		  3	[  0]	CALL 	  0	2	1	; slot0 = uv0"unknown".count()
		  4	[  0]	KSHORT	  1		0	; slot1 = 0
		  5	[  0]	ISGE 	  1		0	; if slot1 >= slot0
		  6	[  0]	JMP  	  0		2	; 	goto 9
		  7	[  0]	KSTR 	  0		1	; slot0 = "pad"
		  8	[  0]	RET1 	  0		2	; return slot0
		  9	[  0]	KSTR 	  0		0	; slot0 = "keyboard"
		 10	[  0]	RET1 	  0		2	; return slot0
	1045	[  0]	KPRI 	 83		0	; slot83 = nil
	1046	[  0]	KSTR 	 84		21	; slot84 = "settingsDevice"
	1047	[  0]	FNEW 	 85		20	; N/A:0-0: 0 args, 2 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	IST  	   		0	; if uv0"unknown"
		  3	[  0]	JMP  	  1		2	; 	goto 6
		  4	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  5	[  0]	CALL 	  0	2	1	; slot0 = uv1"unknown"()
		  6	[  0]	RET1 	  0		2	; return slot0
	1048	[  0]	TSETV	 85	6	84	; slot6[slot84] = slot85
	1049	[  0]	KSTR 	 84		19	; slot84 = "drawSettingsRowFocus"
	1050	[  0]	FNEW 	 85		18	; N/A:0-0: 7 args, 5 upvalues, 26 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		  2	[  0]	TGETS	  7	7	22	; slot7 = uv0"unknown".active
		  3	[  0]	ISFC 	  8		7	; slot8 = uv0"unknown".active; if not uv0"unknown".active
		  4	[  0]	JMP  	  8		16	; 	goto 21
		  5	[  0]	ISFC 	  8		0	; slot8 = slot0; if not slot0
		  6	[  0]	JMP  	  8		14	; 	goto 21
		  7	[  0]	TGETS	  8	0	21	; slot8 = slot0.kind
		  8	[  0]	ISNES	  8		20	; if <unknown table>.kind ~= "binding"
		  9	[  0]	JMP  	  8		8	; 	goto 18
		 10	[  0]	TGETS	  8	7	19	; slot8 = uv0"unknown".active.action
		 11	[  0]	TGETS	  9	0	19	; slot9 = slot0.action
		 12	[  0]	ISNEV	  8		9	; if uv0"unknown".active.action ~= <unknown table>.action
		 13	[  0]	JMP  	  8		4	; 	goto 18
		 14	[  0]	TGETS	  8	7	18	; slot8 = uv0"unknown".active.device
		 15	[  0]	TGETS	  9	0	18	; slot9 = slot0.device
		 16	[  0]	ISEQV	  8		9	; if uv0"unknown".active.device == <unknown table>.device
		 17	[  0]	JMP  	  8		2	; 	goto 20
		 18	[  0]	KPRI 	  8		1	; slot8 = false
		 19	[  0]	JMP  	  9		1	; 	goto 21
		 20	[  0]	KPRI 	  8		2	; slot8 = true
		 21	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 22	[  0]	TGETS	  9	9	17	; slot9 = uv1"unknown".mode
		 23	[  0]	ISEQS	  9		16	; if uv1"unknown".mode == "pad"
		 24	[  0]	JMP  	  9		3	; 	goto 28
		 25	[  0]	IST  	   		8	; if slot8
		 26	[  0]	JMP  	  9		1	; 	goto 28
		 27	[  0]	RET0 	  0		1	; return
		 28	[  0]	UGET 	  9		2	; slot9 = uv2"unknwon"
		 29	[  0]	CALL 	  9	2	1	; slot9 = uv2"unknown"()
		 30	[  0]	ISF  	   		9	; if not uv2"unknown"
		 31	[  0]	JMP  	 10		6	; 	goto 38
		 32	[  0]	TGETS	 10	9	15	; slot10 = uv2"unknown".langDropdownOpen
		 33	[  0]	ISNEP	 10		2	; if uv2"unknown".langDropdownOpen ~= true
		 34	[  0]	JMP  	 10		3	; 	goto 38
		 35	[  0]	IST  	   		8	; if slot8
		 36	[  0]	JMP  	 10		1	; 	goto 38
		 37	[  0]	RET0 	  0		1	; return
		 38	[  0]	KPRI 	 10		0	; slot10 = nil
		 39	[  0]	UGET 	 11		3	; slot11 = uv3"unknwon"
		 40	[  0]	TGETS	 11	11	14	; slot11 = uv3"unknown".settingsFocus
		 41	[  0]	ISF  	   		11	; if not uv3"unknown".settingsFocus
		 42	[  0]	JMP  	 12		11	; 	goto 54
		 43	[  0]	ISEQP	  0		0	; if slot0 == nil
		 44	[  0]	JMP  	 11		5	; 	goto 50
		 45	[  0]	TGETS	 11	0	13	; slot11 = slot0.key
		 46	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		 47	[  0]	TGETS	 12	12	14	; slot12 = uv3"unknown".settingsFocus
		 48	[  0]	ISEQV	 11		12	; if <unknown table>.key == uv3"unknown".settingsFocus
		 49	[  0]	JMP  	 11		2	; 	goto 52
		 50	[  0]	KPRI 	 10		1	; slot10 = false
		 51	[  0]	JMP  	 11		1	; 	goto 53
		 52	[  0]	KPRI 	 10		2	; slot10 = true
		 53	[  0]	JMP  	 11		18	; 	goto 72
		 54	[  0]	UGET 	 11		4	; slot11 = uv4"unknwon"
		 55	[  0]	TGETS	 11	11	12	; slot11 = uv4"unknown".glideTarget
		 56	[  0]	CALL 	 11	3	1	; slot11, slot12 = uv4"unknown".glideTarget()
		 57	[  0]	ISGT 	  2		12	; if slot2 > uv3"unknown".settingsFocus
		 58	[  0]	JMP  	 13		10	; 	goto 69
		 59	[  0]	ADDVV	 13	2	4	; slot13 = slot2 + slot4
		 60	[  0]	ISGE 	 12		13	; if uv3"unknown".settingsFocus >= slot13
		 61	[  0]	JMP  	 13		7	; 	goto 69
		 62	[  0]	SUBVN	 13	1	0	; slot13 = slot1 - 24
		 63	[  0]	ISGT 	 13		11	; if slot13 > uv4"unknown".glideTarget
		 64	[  0]	JMP  	 13		4	; 	goto 69
		 65	[  0]	ADDVV	 13	1	3	; slot13 = slot1 + slot3
		 66	[  0]	ADDVN	 13	13	0	; slot13 = slot13 + 24
		 67	[  0]	ISLE 	 11		13	; if uv4"unknown".glideTarget <= slot13
		 68	[  0]	JMP  	 13		2	; 	goto 71
		 69	[  0]	KPRI 	 10		1	; slot10 = false
		 70	[  0]	JMP  	 13		1	; 	goto 72
		 71	[  0]	KPRI 	 10		2	; slot10 = true
		 72	[  0]	IST  	   		10	; if slot10
		 73	[  0]	JMP  	 11		3	; 	goto 77
		 74	[  0]	IST  	   		8	; if slot8
		 75	[  0]	JMP  	 11		1	; 	goto 77
		 76	[  0]	RET0 	  0		1	; return
		 77	[  0]	ISF  	   		8	; if not slot8
		 78	[  0]	JMP  	 11		2	; 	goto 81
		 79	[  0]	KNUM 	 11		1	; slot11 = 0.16
		 80	[  0]	JMP  	 12		1	; 	goto 82
		 81	[  0]	KNUM 	 11		2	; slot11 = 0.09
		 82	[  0]	IST  	   		8	; if slot8
		 83	[  0]	JMP  	 12		6	; 	goto 90
		 84	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		 85	[  0]	TGETS	 12	12	11	; slot12 = uv1"unknown".hintAlpha
		 86	[  0]	IST  	   		12	; if uv1"unknown".hintAlpha
		 87	[  0]	JMP  	 13		1	; 	goto 89
		 88	[  0]	KSHORT	 12		1	; slot12 = 1
		 89	[  0]	MULVV	 11	11	12	; slot11 = slot11 * slot12
		 90	[  0]	ADDVN	 12	2	3	; slot12 = slot2 + 2
		 91	[  0]	ADDVV	 13	2	4	; slot13 = slot2 + slot4
		 92	[  0]	SUBVN	 13	13	3	; slot13 = slot13 - 2
		 93	[  0]	ISF  	   		5	; if not slot5
		 94	[  0]	JMP  	 14		15	; 	goto 110
		 95	[  0]	GGET 	 14		10	; slot14 = _env["math"]
		 96	[  0]	TGETS	 14	14	9	; slot14 = math.max
		 97	[  0]	MOV  	 16		12	; slot16 = slot12
		 98	[  0]	MOV  	 17		5	; slot17 = slot5
		 99	[  0]	CALL 	 14	2	3	; slot14 = math.max(slot15, slot16)
		100	[  0]	MOV  	 12		14	; slot12 = math.max
		101	[  0]	GGET 	 14		10	; slot14 = _env["math"]
		102	[  0]	TGETS	 14	14	8	; slot14 = math.min
		103	[  0]	MOV  	 16		13	; slot16 = slot13
		104	[  0]	ISTC 	 17		6	; slot17 = slot6; if slot6
		105	[  0]	JMP  	 17		1	; 	goto 107
		106	[  0]	MOV  	 17		4	; slot17 = slot4
		107	[  0]	ADDVV	 17	5	17	; slot17 = slot5 + slot17
		108	[  0]	CALL 	 14	2	3	; slot14 = math.min(slot15, slot16)
		109	[  0]	MOV  	 13		14	; slot13 = math.min
		110	[  0]	SUBVV	 14	13	12	; slot14 = math.min - math.max
		111	[  0]	KSHORT	 15		3	; slot15 = 3
		112	[  0]	ISGE 	 14		15	; if slot14 >= slot15
		113	[  0]	JMP  	 14		1	; 	goto 115
		114	[  0]	RET0 	  0		1	; return
		115	[  0]	GGET 	 14		7	; slot14 = _env["love"]
		116	[  0]	TGETS	 14	14	6	; slot14 = love.graphics
		117	[  0]	TGETS	 15	14	5	; slot15 = love.graphics.getStencilTest
		118	[  0]	CALL 	 15	3	1	; slot15, slot16 = love.graphics.getStencilTest()
		119	[  0]	TGETS	 17	14	4	; slot17 = love.graphics.setStencilTest
		120	[  0]	CALL 	 17	1	1	;  = love.graphics.setStencilTest()
		121	[  0]	SUBVN	 17	1	4	; slot17 = slot1 - 5
		122	[  0]	ADDVN	 18	3	5	; slot18 = slot3 + 8
		123	[  0]	TGETS	 19	14	3	; slot19 = love.graphics.setColor
		124	[  0]	KNUM 	 21		6	; slot21 = 0.24313725490196078
		125	[  0]	KNUM 	 22		7	; slot22 = 0.20784313725490197
		126	[  0]	KNUM 	 23		8	; slot23 = 0.27450980392156865
		127	[  0]	MOV  	 24		11	; slot24 = slot11
		128	[  0]	CALL 	 19	1	5	;  = love.graphics.setColor(slot20, slot21, slot22, slot23)
		129	[  0]	TGETS	 19	14	2	; slot19 = love.graphics.rectangle
		130	[  0]	KSTR 	 21		1	; slot21 = "fill"
		131	[  0]	ADDVN	 22	17	9	; slot22 = slot17 + 1
		132	[  0]	MOV  	 23		12	; slot23 = math.max
		133	[  0]	SUBVN	 24	18	3	; slot24 = slot18 - 2
		134	[  0]	SUBVV	 25	13	12	; slot25 = math.min - math.max
		135	[  0]	CALL 	 19	1	6	;  = love.graphics.rectangle(slot20, slot21, slot22, math.max, slot24)
		136	[  0]	TGETS	 19	14	2	; slot19 = love.graphics.rectangle
		137	[  0]	KSTR 	 21		1	; slot21 = "fill"
		138	[  0]	MOV  	 22		17	; slot22 = slot17
		139	[  0]	ADDVN	 23	12	9	; slot23 = math.max + 1
		140	[  0]	MOV  	 24		18	; slot24 = slot18
		141	[  0]	SUBVV	 25	13	12	; slot25 = math.min - math.max
		142	[  0]	SUBVN	 25	25	3	; slot25 = slot25 - 2
		143	[  0]	CALL 	 19	1	6	;  = love.graphics.rectangle(slot20, slot21, slot22, slot23, slot24)
		144	[  0]	ISF  	   		15	; if not love.graphics.getStencilTest
		145	[  0]	JMP  	 19		6	; 	goto 152
		146	[  0]	ISEQS	 15		0	; if love.graphics.getStencilTest == "always"
		147	[  0]	JMP  	 19		4	; 	goto 152
		148	[  0]	TGETS	 19	14	4	; slot19 = love.graphics.setStencilTest
		149	[  0]	MOV  	 21		15	; slot21 = love.graphics.getStencilTest
		150	[  0]	MOV  	 22		16	; slot22 = slot16
		151	[  0]	CALL 	 19	1	3	;  = love.graphics.setStencilTest(slot20, love.graphics.getStencilTest)
		152	[  0]	TGETS	 19	14	3	; slot19 = love.graphics.setColor
		153	[  0]	KSHORT	 21		1	; slot21 = 1
		154	[  0]	KSHORT	 22		1	; slot22 = 1
		155	[  0]	KSHORT	 23		1	; slot23 = 1
		156	[  0]	KSHORT	 24		1	; slot24 = 1
		157	[  0]	CALL 	 19	1	5	;  = love.graphics.setColor(slot20, slot21, slot22, slot23)
		158	[  0]	RET0 	  0		1	; return
	1051	[  0]	TSETV	 85	6	84	; slot6[slot84] = slot85
	1052	[  0]	KSTR 	 84		17	; slot84 = "drawSettingsOptionFocus"
	1053	[  0]	FNEW 	 85		16	; N/A:0-0: 4 args, 2 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  2	[  0]	TGETS	  4	4	8	; slot4 = uv0"unknown".mode
		  3	[  0]	ISEQS	  4		7	; if uv0"unknown".mode == "pad"
		  4	[  0]	JMP  	  4		1	; 	goto 6
		  5	[  0]	RET0 	  0		1	; return
		  6	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		  7	[  0]	TGETS	  4	4	6	; slot4 = uv1"unknown".glideTarget
		  8	[  0]	CALL 	  4	3	1	; slot4, slot5 = uv1"unknown".glideTarget()
		  9	[  0]	ISLT 	  4		0	; if uv1"unknown".glideTarget < slot0
		 10	[  0]	JMP  	  6		8	; 	goto 19
		 11	[  0]	ADDVV	  6	0	2	; slot6 = slot0 + slot2
		 12	[  0]	ISLT 	  6		4	; if slot6 < uv1"unknown".glideTarget
		 13	[  0]	JMP  	  6		5	; 	goto 19
		 14	[  0]	ISLT 	  5		1	; if slot5 < slot1
		 15	[  0]	JMP  	  6		3	; 	goto 19
		 16	[  0]	ADDVV	  6	1	3	; slot6 = slot1 + slot3
		 17	[  0]	ISGT 	  6		5	; if slot6 > slot5
		 18	[  0]	JMP  	  6		1	; 	goto 20
		 19	[  0]	RET0 	  0		1	; return
		 20	[  0]	GGET 	  6		5	; slot6 = _env["love"]
		 21	[  0]	TGETS	  6	6	4	; slot6 = love.graphics
		 22	[  0]	TGETS	  7	6	3	; slot7 = love.graphics.setColor
		 23	[  0]	KNUM 	  9		0	; slot9 = 0.24313725490196078
		 24	[  0]	KNUM 	 10		1	; slot10 = 0.20784313725490197
		 25	[  0]	KNUM 	 11		2	; slot11 = 0.27450980392156865
		 26	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		 27	[  0]	TGETS	 12	12	2	; slot12 = uv0"unknown".hintAlpha
		 28	[  0]	IST  	   		12	; if uv0"unknown".hintAlpha
		 29	[  0]	JMP  	 13		1	; 	goto 31
		 30	[  0]	KSHORT	 12		1	; slot12 = 1
		 31	[  0]	MULNV	 12	12	3	; slot12 = 0.14 * slot12
		 32	[  0]	CALL 	  7	1	5	;  = love.graphics.setColor(slot8, slot9, slot10, slot11)
		 33	[  0]	TGETS	  7	6	1	; slot7 = love.graphics.rectangle
		 34	[  0]	KSTR 	  9		0	; slot9 = "fill"
		 35	[  0]	ADDVN	 10	0	4	; slot10 = slot0 + 2
		 36	[  0]	ADDVN	 11	1	4	; slot11 = slot1 + 2
		 37	[  0]	SUBVN	 12	2	5	; slot12 = slot2 - 4
		 38	[  0]	SUBVN	 13	3	5	; slot13 = slot3 - 4
		 39	[  0]	CALL 	  7	1	6	;  = love.graphics.rectangle(slot8, slot9, slot10, slot11, slot12)
		 40	[  0]	TGETS	  7	6	3	; slot7 = love.graphics.setColor
		 41	[  0]	KSHORT	  9		1	; slot9 = 1
		 42	[  0]	KSHORT	 10		1	; slot10 = 1
		 43	[  0]	KSHORT	 11		1	; slot11 = 1
		 44	[  0]	KSHORT	 12		1	; slot12 = 1
		 45	[  0]	CALL 	  7	1	5	;  = love.graphics.setColor(slot8, slot9, slot10, slot11)
		 46	[  0]	RET0 	  0		1	; return
	1054	[  0]	TSETV	 85	6	84	; slot6[slot84] = slot85
	1055	[  0]	FNEW 	 84		15	; N/A:0-0: 5 args, 6 upvalues, 22 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		  2	[  0]	TGETS	  5	5	30	; slot5 = uv0"unknown".active
		  3	[  0]	GGET 	  6		29	; slot6 = _env["love"]
		  4	[  0]	TGETS	  6	6	28	; slot6 = love.graphics
		  5	[  0]	FNEW 	  7		27	; N/A:0-0: 1 args, 2 upvalues, 3 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	ISF  	   		1	; if not uv0"unknown"
			  3	[  0]	JMP  	  2		12	; 	goto 16
			  4	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			  5	[  0]	DIVVN	  2	0	0	; slot2 = slot0 / 2
			  6	[  0]	SUBVV	  1	1	2	; slot1 = uv1"unknown" - slot2
			  7	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  8	[  0]	ADDVN	  2	2	1	; slot2 = uv0"unknown" + 10
			  9	[  0]	ISGE 	  1		2	; if slot1 >= slot2
			 10	[  0]	JMP  	  1		5	; 	goto 16
			 11	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			 12	[  0]	ADDVN	  1	1	1	; slot1 = uv0"unknown" + 10
			 13	[  0]	DIVVN	  2	0	0	; slot2 = slot0 / 2
			 14	[  0]	ADDVV	  1	1	2	; slot1 = slot1 + slot2
			 15	[  0]	RET1 	  1		2	; return slot1
			 16	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			 17	[  0]	RET1 	  1		2	; return uv1"unknown"
		  6	[  0]	ISF  	   		5	; if not uv0"unknown".active
		  7	[  0]	JMP  	  8		76	; 	goto 84
		  8	[  0]	TGETS	  8	5	26	; slot8 = uv0"unknown".active.action
		  9	[  0]	TGETS	  9	0	26	; slot9 = slot0.action
		 10	[  0]	ISNEV	  8		9	; if uv0"unknown".active.action ~= <unknown table>.action
		 11	[  0]	JMP  	  8		72	; 	goto 84
		 12	[  0]	TGETS	  8	5	25	; slot8 = uv0"unknown".active.device
		 13	[  0]	TGETS	  9	0	25	; slot9 = slot0.device
		 14	[  0]	ISNEV	  8		9	; if uv0"unknown".active.device ~= <unknown table>.device
		 15	[  0]	JMP  	  8		68	; 	goto 84
		 16	[  0]	GGET 	  8		24	; slot8 = _env["math"]
		 17	[  0]	TGETS	  8	8	23	; slot8 = math.ceil
		 18	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 19	[  0]	TGETS	 10	10	22	; slot10 = uv0"unknown".remaining
		 20	[  0]	CALL 	 10	0	1	; MULTRES = uv0"unknown".remaining()
		 21	[  0]	CALLM	  8	2	0	; slot8 = math.ceil(, ...MULTRES)
		 22	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 23	[  0]	TGETS	 11	0	25	; slot11 = slot0.device
		 24	[  0]	ISNES	 11		21	; if <unknown table>.device ~= "pad"
		 25	[  0]	JMP  	 11		2	; 	goto 28
		 26	[  0]	KSTR 	 11		20	; slot11 = "controls_press_button"
		 27	[  0]	JMP  	 12		1	; 	goto 29
		 28	[  0]	KSTR 	 11		19	; slot11 = "controls_press_key"
		 29	[  0]	CALL 	  9	2	2	; slot9 = uv1"unknown"(uv0"unknown".remaining)
		 30	[  0]	KSTR 	 10		18	; slot10 = " "
		 31	[  0]	GGET 	 11		17	; slot11 = _env["tostring"]
		 32	[  0]	MOV  	 13		8	; slot13 = math.ceil
		 33	[  0]	CALL 	 11	2	2	; slot11 = tostring(slot12)
		 34	[  0]	CAT  	  9	9	11	; slot9 = uv1"unknown" .. slot10 .. tostring
		 35	[  0]	GGET 	 10		24	; slot10 = _env["math"]
		 36	[  0]	TGETS	 10	10	16	; slot10 = math.sin
		 37	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		 38	[  0]	CALL 	 12	2	1	; slot12 = uv2"unknown"()
		 39	[  0]	MULVN	 12	12	0	; slot12 = uv2"unknown" * 6
		 40	[  0]	CALL 	 10	2	2	; slot10 = math.sin(tostring)
		 41	[  0]	MULNV	 10	10	1	; slot10 = 0.5 * math.sin
		 42	[  0]	ADDNV	 10	10	1	; slot10 = 0.5 + slot10
		 43	[  0]	MULNV	 10	10	2	; slot10 = 0.45 * slot10
		 44	[  0]	ADDNV	 10	10	3	; slot10 = 0.55 + slot10
		 45	[  0]	TGETS	 11	6	15	; slot11 = love.graphics.setColor
		 46	[  0]	KNUM 	 13		4	; slot13 = 0.6392156862745098
		 47	[  0]	KNUM 	 14		5	; slot14 = 0.22745098039215686
		 48	[  0]	KNUM 	 15		5	; slot15 = 0.22745098039215686
		 49	[  0]	MOV  	 16		10	; slot16 = slot10
		 50	[  0]	CALL 	 11	1	5	;  = love.graphics.setColor(slot12, slot13, slot14, slot15)
		 51	[  0]	MOV  	 13		3	; slot13 = slot3
		 52	[  0]	TGETS	 11	3	14	; slot11 = slot3.getWidth
		 53	[  0]	MOV  	 14		9	; slot14 = slot9
		 54	[  0]	CALL 	 11	2	3	; slot11 = <unknown table>.getWidth(slot12, slot13)
		 55	[  0]	TGETS	 12	6	13	; slot12 = love.graphics.print
		 56	[  0]	MOV  	 14		9	; slot14 = slot9
		 57	[  0]	GGET 	 15		24	; slot15 = _env["math"]
		 58	[  0]	TGETS	 15	15	12	; slot15 = math.floor
		 59	[  0]	MOV  	 17		7	; slot17 = slot7
		 60	[  0]	MOV  	 19		11	; slot19 = <unknown table>.getWidth
		 61	[  0]	CALL 	 17	2	2	; slot17 = slot17(slot18)
		 62	[  0]	DIVVN	 18	11	6	; slot18 = <unknown table>.getWidth / 2
		 63	[  0]	SUBVV	 17	17	18	; slot17 = slot17 - slot18
		 64	[  0]	ADDVN	 17	17	1	; slot17 = slot17 + 0.5
		 65	[  0]	CALL 	 15	2	2	; slot15 = math.floor(slot16)
		 66	[  0]	GGET 	 16		24	; slot16 = _env["math"]
		 67	[  0]	TGETS	 16	16	12	; slot16 = math.floor
		 68	[  0]	MOV  	 20		3	; slot20 = slot3
		 69	[  0]	TGETS	 18	3	11	; slot18 = slot3.getHeight
		 70	[  0]	CALL 	 18	2	2	; slot18 = <unknown table>.getHeight(<unknown table>.getWidth)
		 71	[  0]	DIVVN	 18	18	6	; slot18 = <unknown table>.getHeight / 2
		 72	[  0]	SUBVV	 18	2	18	; slot18 = slot2 - slot18
		 73	[  0]	ADDVN	 18	18	1	; slot18 = slot18 + 0.5
		 74	[  0]	CALL 	 16	0	2	; MULTRES = math.floor(slot17)
		 75	[  0]	CALLM	 12	1	2	;  = love.graphics.print(slot13, slot14, ...MULTRES)
		 76	[  0]	TGETS	 12	6	15	; slot12 = love.graphics.setColor
		 77	[  0]	KSHORT	 14		1	; slot14 = 1
		 78	[  0]	KSHORT	 15		1	; slot15 = 1
		 79	[  0]	KSHORT	 16		1	; slot16 = 1
		 80	[  0]	KSHORT	 17		1	; slot17 = 1
		 81	[  0]	CALL 	 12	1	5	;  = love.graphics.setColor(slot13, slot14, slot15, slot16)
		 82	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 83
		 83	[  0]	RET0 	  0		1	; return
		 84	[  0]	TGETS	  8	0	25	; slot8 = slot0.device
		 85	[  0]	ISNES	  8		21	; if <unknown table>.device ~= "pad"
		 86	[  0]	JMP  	  8		36	; 	goto 123
		 87	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		 88	[  0]	TGETS	  8	8	10	; slot8 = uv3"unknown".padButton
		 89	[  0]	TGETS	 10	0	26	; slot10 = slot0.action
		 90	[  0]	CALL 	  8	2	2	; slot8 = uv3"unknown".padButton(slot9)
		 91	[  0]	UGET 	  9		4	; slot9 = uv4"unknwon"
		 92	[  0]	TGETS	  9	9	9	; slot9 = uv4"unknown".style
		 93	[  0]	CALL 	  9	2	1	; slot9 = uv4"unknown".style()
		 94	[  0]	ISF  	   		8	; if not uv3"unknown".padButton
		 95	[  0]	JMP  	 10		105	; 	goto 201
		 96	[  0]	UGET 	 10		5	; slot10 = uv5"unknwon"
		 97	[  0]	TGETS	 10	10	8	; slot10 = uv5"unknown".size
		 98	[  0]	MOV  	 12		9	; slot12 = uv4"unknown".style
		 99	[  0]	MOV  	 13		8	; slot13 = uv3"unknown".padButton
		100	[  0]	CALL 	 10	3	3	; slot10, slot11 = uv5"unknown".size(<unknown table>.getWidth, uv4"unknown".style)
		101	[  0]	MOV  	 12		7	; slot12 = slot7
		102	[  0]	MOV  	 14		10	; slot14 = uv5"unknown".size
		103	[  0]	CALL 	 12	2	2	; slot12 = slot12(uv3"unknown".padButton)
		104	[  0]	UGET 	 13		5	; slot13 = uv5"unknwon"
		105	[  0]	TGETS	 13	13	7	; slot13 = uv5"unknown".draw
		106	[  0]	MOV  	 15		9	; slot15 = uv4"unknown".style
		107	[  0]	MOV  	 16		8	; slot16 = uv3"unknown".padButton
		108	[  0]	GGET 	 17		24	; slot17 = _env["math"]
		109	[  0]	TGETS	 17	17	12	; slot17 = math.floor
		110	[  0]	DIVVN	 19	10	6	; slot19 = uv5"unknown".size / 2
		111	[  0]	SUBVV	 19	12	19	; slot19 = slot12 - slot19
		112	[  0]	ADDVN	 19	19	1	; slot19 = slot19 + 0.5
		113	[  0]	CALL 	 17	2	2	; slot17 = math.floor(slot18)
		114	[  0]	GGET 	 18		24	; slot18 = _env["math"]
		115	[  0]	TGETS	 18	18	12	; slot18 = math.floor
		116	[  0]	DIVVN	 20	11	6	; slot20 = <unknown table>.getWidth / 2
		117	[  0]	SUBVV	 20	2	20	; slot20 = slot2 - slot20
		118	[  0]	ADDVN	 20	20	1	; slot20 = slot20 + 0.5
		119	[  0]	CALL 	 18	2	2	; slot18 = math.floor(slot19)
		120	[  0]	KSHORT	 19		1	; slot19 = 1
		121	[  0]	CALL 	 13	1	6	;  = uv5"unknown".draw(uv5"unknown".size, uv4"unknown".style, uv3"unknown".padButton, math.floor, math.floor)
		122	[  0]	JMP  	  8		78	; 	goto 201
		123	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		124	[  0]	TGETS	  8	8	6	; slot8 = uv3"unknown".keyList
		125	[  0]	TGETS	 10	0	26	; slot10 = slot0.action
		126	[  0]	CALL 	  8	2	2	; slot8 = uv3"unknown".keyList(uv4"unknown".style)
		127	[  0]	IST  	   		8	; if uv3"unknown".keyList
		128	[  0]	JMP  	  9		1	; 	goto 130
		129	[  0]	TNEW 	  8		0	; slot8 = new table( array: 0, dict: 1)
		130	[  0]	UGET 	  9		5	; slot9 = uv5"unknwon"
		131	[  0]	TGETS	  9	9	5	; slot9 = uv5"unknown".keysWidth
		132	[  0]	MOV  	 11		8	; slot11 = slot8
		133	[  0]	CALL 	  9	2	2	; slot9 = uv5"unknown".keysWidth(<unknown table>.action)
		134	[  0]	UGET 	 10		5	; slot10 = uv5"unknwon"
		135	[  0]	TGETS	 10	10	4	; slot10 = uv5"unknown".keySize
		136	[  0]	TGETB	 12	8	1	; slot12 = slot8[1]
		137	[  0]	IST  	   		12	; if slot12
		138	[  0]	JMP  	 13		1	; 	goto 140
		139	[  0]	KSTR 	 12		3	; slot12 = "a"
		140	[  0]	CALL 	 10	3	2	; slot10, slot11 = uv5"unknown".keySize(slot11)
		141	[  0]	LEN  	 12		8	; slot12 = #slot8
		142	[  0]	ISNEN	 12		7	; if slot12 ~= 0
		143	[  0]	JMP  	 12		32	; 	goto 176
		144	[  0]	TGETS	 12	6	15	; slot12 = love.graphics.setColor
		145	[  0]	KSHORT	 14		0	; slot14 = 0
		146	[  0]	KSHORT	 15		0	; slot15 = 0
		147	[  0]	KSHORT	 16		0	; slot16 = 0
		148	[  0]	KNUM 	 17		1	; slot17 = 0.5
		149	[  0]	CALL 	 12	1	5	;  = love.graphics.setColor(uv5"unknown".draw, slot14, slot15, slot16)
		150	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		151	[  0]	KSTR 	 14		2	; slot14 = "controls_unbound"
		152	[  0]	CALL 	 12	2	2	; slot12 = uv1"unknown"(uv5"unknown".draw)
		153	[  0]	TGETS	 13	6	13	; slot13 = love.graphics.print
		154	[  0]	MOV  	 15		12	; slot15 = uv1"unknown"
		155	[  0]	GGET 	 16		24	; slot16 = _env["math"]
		156	[  0]	TGETS	 16	16	12	; slot16 = math.floor
		157	[  0]	MOV  	 20		3	; slot20 = slot3
		158	[  0]	TGETS	 18	3	14	; slot18 = slot3.getWidth
		159	[  0]	MOV  	 21		12	; slot21 = uv1"unknown"
		160	[  0]	CALL 	 18	2	3	; slot18 = <unknown table>.getWidth(slot19, slot20)
		161	[  0]	DIVVN	 18	18	6	; slot18 = <unknown table>.getWidth / 2
		162	[  0]	SUBVV	 18	1	18	; slot18 = slot1 - slot18
		163	[  0]	ADDVN	 18	18	1	; slot18 = slot18 + 0.5
		164	[  0]	CALL 	 16	2	2	; slot16 = math.floor(slot17)
		165	[  0]	GGET 	 17		24	; slot17 = _env["math"]
		166	[  0]	TGETS	 17	17	12	; slot17 = math.floor
		167	[  0]	MOV  	 21		3	; slot21 = slot3
		168	[  0]	TGETS	 19	3	11	; slot19 = slot3.getHeight
		169	[  0]	CALL 	 19	2	2	; slot19 = <unknown table>.getHeight(slot20)
		170	[  0]	DIVVN	 19	19	6	; slot19 = <unknown table>.getHeight / 2
		171	[  0]	SUBVV	 19	2	19	; slot19 = slot2 - slot19
		172	[  0]	ADDVN	 19	19	1	; slot19 = slot19 + 0.5
		173	[  0]	CALL 	 17	0	2	; MULTRES = math.floor(slot18)
		174	[  0]	CALLM	 13	1	2	;  = love.graphics.print(slot14, uv1"unknown", ...MULTRES)
		175	[  0]	JMP  	 12		25	; 	goto 201
		176	[  0]	MOV  	 12		7	; slot12 = slot7
		177	[  0]	MOV  	 14		9	; slot14 = uv5"unknown".keysWidth
		178	[  0]	CALL 	 12	2	2	; slot12 = slot12(love.graphics.print)
		179	[  0]	UGET 	 13		5	; slot13 = uv5"unknwon"
		180	[  0]	TGETS	 13	13	1	; slot13 = uv5"unknown".drawKeys
		181	[  0]	MOV  	 15		8	; slot15 = slot8
		182	[  0]	GGET 	 16		24	; slot16 = _env["math"]
		183	[  0]	TGETS	 16	16	12	; slot16 = math.floor
		184	[  0]	DIVVN	 18	9	6	; slot18 = uv5"unknown".keysWidth / 2
		185	[  0]	SUBVV	 18	12	18	; slot18 = slot12 - slot18
		186	[  0]	ADDVN	 18	18	1	; slot18 = slot18 + 0.5
		187	[  0]	CALL 	 16	2	2	; slot16 = math.floor(math.floor)
		188	[  0]	GGET 	 17		24	; slot17 = _env["math"]
		189	[  0]	TGETS	 17	17	12	; slot17 = math.floor
		190	[  0]	DIVVN	 19	11	6	; slot19 = slot11 / 2
		191	[  0]	SUBVV	 19	2	19	; slot19 = slot2 - slot19
		192	[  0]	ADDVN	 19	19	1	; slot19 = slot19 + 0.5
		193	[  0]	CALL 	 17	2	2	; slot17 = math.floor(slot18)
		194	[  0]	TGETS	 18	0	0	; slot18 = slot0.fixed
		195	[  0]	ISF  	   		18	; if not <unknown table>.fixed
		196	[  0]	JMP  	 19		2	; 	goto 199
		197	[  0]	KNUM 	 18		8	; slot18 = 0.6
		198	[  0]	JMP  	 19		1	; 	goto 200
		199	[  0]	KSHORT	 18		1	; slot18 = 1
		200	[  0]	CALL 	 13	1	5	;  = uv5"unknown".drawKeys(uv5"unknown".keysWidth, slot15, math.floor, math.floor)
		201	[  0]	TGETS	  8	6	15	; slot8 = love.graphics.setColor
		202	[  0]	KSHORT	 10		1	; slot10 = 1
		203	[  0]	KSHORT	 11		1	; slot11 = 1
		204	[  0]	KSHORT	 12		1	; slot12 = 1
		205	[  0]	KSHORT	 13		1	; slot13 = 1
		206	[  0]	CALL 	  8	1	5	;  = love.graphics.setColor(uv5"unknown".keysWidth, slot10, slot11, slot12)
		207	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 208
		208	[  0]	RET0 	  0		1	; return
	1056	[  0]	KSTR 	 85		14	; slot85 = "drawBindingValue"
	1057	[  0]	TSETV	 84	6	85	; slot6[slot85] = slot84
	1058	[  0]	KSTR 	 85		13	; slot85 = "settingsItems"
	1059	[  0]	FNEW 	 86		12	; N/A:0-0: 0 args, 9 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		ktable#2 = [
			[tone] = normal,
			[key] = ctl_reset,
			[kind] = button,
			]
		
		
		ktable#5 = [
			[label] = Nintendo,
			[value] = nintendo,
			]
		
		
		ktable#6 = [
			[label] = PlayStation,
			[value] = playstation,
			]
		
		
		ktable#7 = [
			[label] = Xbox,
			[value] = xbox,
			]
		
		
		ktable#9 = [
			[value] = auto,
			]
		
		
		ktable#11 = [
			[key] = ctl_glyphs,
			[kind] = radio,
			]
		
		
		ktable#15 = [
			[key] = ctl_cursor_speed,
			[kind] = slider,
			[max] = 1,
			[min] = 0,
			[step] = 0.01,
			[hidePercent] = true,
			[padStep] = 0.1,
			]
		
		
		ktable#19 = [
			[key] = ctl_vibration,
			[kind] = checkbox,
			]
		
		
		ktable#28 = [
			[kind] = binding,
			]
		
		
		ktable#42 = [
			[value] = keyboard,
			]
		
		
		ktable#44 = [
			[value] = pad,
			]
		
		
		ktable#47 = [
			[key] = ctl_device,
			[kind] = radio,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
		  2	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  3	[  0]	TGETS	  1	1	48	; slot1 = uv0"unknown".settingsDevice
		  4	[  0]	CALL 	  1	2	1	; slot1 = uv0"unknown".settingsDevice()
		  5	[  0]	LEN  	  2		0	; slot2 = #slot0
		  6	[  0]	ADDVN	  2	2	0	; slot2 = slot2 + 1
		  7	[  0]	TDUP 	  3		47	; slot3 = copy table#k47
		  8	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		  9	[  0]	KSTR 	  6		46	; slot6 = "controls_device"
		 10	[  0]	CALL 	  4	2	2	; slot4 = uv1"unknown"(slot5)
		 11	[  0]	TSETS	  4	3	45	; slot3.label = uv1"unknown"
		 12	[  0]	TNEW 	  4		3	; slot4 = new table( array: 3, dict: 1)
		 13	[  0]	TDUP 	  5		44	; slot5 = copy table#k44
		 14	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 15	[  0]	KSTR 	  8		43	; slot8 = "controls_device_pad"
		 16	[  0]	CALL 	  6	2	2	; slot6 = uv1"unknown"(slot7)
		 17	[  0]	TSETS	  6	5	45	; slot5.label = uv1"unknown"
		 18	[  0]	TSETB	  5	4	1	; slot4[1] = slot5
		 19	[  0]	TDUP 	  5		42	; slot5 = copy table#k42
		 20	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 21	[  0]	KSTR 	  8		41	; slot8 = "controls_device_keyboard"
		 22	[  0]	CALL 	  6	2	2	; slot6 = uv1"unknown"(slot7)
		 23	[  0]	TSETS	  6	5	45	; slot5.label = uv1"unknown"
		 24	[  0]	TSETB	  5	4	2	; slot4[2] = slot5
		 25	[  0]	TSETS	  4	3	40	; slot3.options = slot4
		 26	[  0]	FNEW 	  4		39	; N/A:0-0: 0 args, 1 upvalues, 2 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".settingsDevice
			  3	[  0]	CALLT	  0		1	; return uv0"unknown".settingsDevice()
		 27	[  0]	TSETS	  4	3	38	; slot3.get = slot4
		 28	[  0]	FNEW 	  4		37	; N/A:0-0: 1 args, 2 upvalues, 3 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	ISEQS	  0		2	; if slot0 == "pad"
			  2	[  0]	JMP  	  1		2	; 	goto 5
			  3	[  0]	ISNES	  0		1	; if slot0 ~= "keyboard"
			  4	[  0]	JMP  	  1		1	; 	goto 6
			  5	[  0]	USETV	  0		0	; uv0"unknwon" = slot0
			  6	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			  7	[  0]	TGETS	  1	1	0	; slot1 = uv1"unknown".cancel
			  8	[  0]	CALL 	  1	1	1	;  = uv1"unknown".cancel()
			  9	[  0]	RET0 	  0		1	; return
		 29	[  0]	TSETS	  4	3	36	; slot3.set = slot4
		 30	[  0]	TSETV	  3	0	2	; slot0[slot2] = slot3
		 31	[  0]	GGET 	  2		35	; slot2 = _env["ipairs"]
		 32	[  0]	UGET 	  4		4	; slot4 = uv4"unknwon"
		 33	[  0]	TGETS	  4	4	34	; slot4 = uv4"unknown".ACTIONS
		 34	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
		 35	[  0]	JMP  	  5		32	; 	goto 68
		 36	[  0]	ISEQS	  1		33	; if slot1 == "pad"
		 37	[  0]	JMP  	  7		3	; 	goto 41
		 38	[  0]	TGETS	  7	6	32	; slot7 = uv1"unknown".keys
		 39	[  0]	ISF  	   		7	; if not uv1"unknown".keys
		 40	[  0]	JMP  	  8		26	; 	goto 67
		 41	[  0]	LEN  	  7		0	; slot7 = #slot0
		 42	[  0]	ADDVN	  7	7	0	; slot7 = slot7 + 1
		 43	[  0]	TDUP 	  8		28	; slot8 = copy table#k28
		 44	[  0]	KSTR 	  9		31	; slot9 = "ctl_"
		 45	[  0]	MOV  	 10		1	; slot10 = slot1
		 46	[  0]	KSTR 	 11		30	; slot11 = "_"
		 47	[  0]	TGETS	 12	6	29	; slot12 = uv1"unknown".id
		 48	[  0]	CAT  	  9	9	12	; slot9 = slot9 .. slot10 .. slot11 .. uv1"unknown".id
		 49	[  0]	TSETS	  9	8	27	; slot8.key = slot9
		 50	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 51	[  0]	TGETS	 11	6	45	; slot11 = uv1"unknown".label
		 52	[  0]	CALL 	  9	2	2	; slot9 = uv1"unknown"(slot10)
		 53	[  0]	TSETS	  9	8	45	; slot8.label = uv1"unknown"
		 54	[  0]	TGETS	  9	6	29	; slot9 = uv1"unknown".id
		 55	[  0]	TSETS	  9	8	26	; slot8.action = uv1"unknown".id
		 56	[  0]	TSETS	  1	8	25	; slot8.device = slot1
		 57	[  0]	ISNES	  1		24	; if slot1 ~= "keyboard"
		 58	[  0]	JMP  	  9		3	; 	goto 62
		 59	[  0]	TGETS	  9	6	23	; slot9 = uv1"unknown".keyFixed
		 60	[  0]	IST  	   		9	; if uv1"unknown".keyFixed
		 61	[  0]	JMP  	 10		1	; 	goto 63
		 62	[  0]	KPRI 	  9		0	; slot9 = nil
		 63	[  0]	TSETS	  9	8	22	; slot8.fixed = slot9
		 64	[  0]	FNEW 	  9		21	; N/A:0-0: 0 args, 3 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	ISNES	  0		6	; if uv0"unknown" ~= "keyboard"
			  3	[  0]	JMP  	  0		6	; 	goto 10
			  4	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
			  5	[  0]	TGETS	  0	0	5	; slot0 = uv1"unknown".keyFixed
			  6	[  0]	ISF  	   		0	; if not uv1"unknown".keyFixed
			  7	[  0]	JMP  	  1		2	; 	goto 10
			  8	[  0]	KPRI 	  0		1	; slot0 = false
			  9	[  0]	RET1 	  0		2	; return slot0
			 10	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
			 11	[  0]	TGETS	  0	0	4	; slot0 = uv2"unknown".active
			 12	[  0]	ISF  	   		0	; if not uv2"unknown".active
			 13	[  0]	JMP  	  1		12	; 	goto 26
			 14	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
			 15	[  0]	TGETS	  0	0	4	; slot0 = uv2"unknown".active
			 16	[  0]	TGETS	  0	0	3	; slot0 = uv2"unknown".active.action
			 17	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			 18	[  0]	TGETS	  1	1	2	; slot1 = uv1"unknown".id
			 19	[  0]	ISNEV	  0		1	; if uv2"unknown".active.action ~= uv1"unknown".id
			 20	[  0]	JMP  	  0		5	; 	goto 26
			 21	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
			 22	[  0]	TGETS	  0	0	1	; slot0 = uv2"unknown".cancel
			 23	[  0]	CALL 	  0	1	1	;  = uv2"unknown".cancel()
			 24	[  0]	KPRI 	  0		2	; slot0 = true
			 25	[  0]	RET1 	  0		2	; return slot0
			 26	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
			 27	[  0]	TGETS	  0	0	0	; slot0 = uv2"unknown".start
			 28	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
			 29	[  0]	TGETS	  2	2	2	; slot2 = uv1"unknown".id
			 30	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			 31	[  0]	CALL 	  0	1	3	;  = uv2"unknown".start(slot1, uv1"unknown".id)
			 32	[  0]	KPRI 	  0		2	; slot0 = true
			 33	[  0]	RET1 	  0		2	; return slot0
		 65	[  0]	TSETS	  9	8	20	; slot8.activate = slot9
		 66	[  0]	TSETV	  8	0	7	; slot0[slot7] = slot8
		 67	[  0]	UCLO 	  5		0	; nil uvs >= r5; goto 68
		 68	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, uv4"unknown".ACTIONS; slot5, slot6 = slot2(slot3, uv4"unknown".ACTIONS)
		 69	[  0]	ITERL	  5		-34	; uv4"unknown".ACTIONS = slot5; if slot5 != nil goto 36
		 70	[  0]	ISNES	  1		33	; if slot1 ~= "pad"
		 71	[  0]	JMP  	  2		50	; 	goto 122
		 72	[  0]	LEN  	  2		0	; slot2 = #slot0
		 73	[  0]	ADDVN	  2	2	0	; slot2 = slot2 + 1
		 74	[  0]	TDUP 	  3		19	; slot3 = copy table#k19
		 75	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 76	[  0]	KSTR 	  6		18	; slot6 = "controls_vibration"
		 77	[  0]	CALL 	  4	2	2	; slot4 = uv1"unknown"(slot5)
		 78	[  0]	TSETS	  4	3	45	; slot3.label = uv1"unknown"
		 79	[  0]	FNEW 	  4		17	; N/A:0-0: 0 args, 1 upvalues, 1 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".vibration
			  3	[  0]	ISNEP	  0		1	; if uv0"unknown".vibration ~= false
			  4	[  0]	JMP  	  0		2	; 	goto 7
			  5	[  0]	KPRI 	  0		1	; slot0 = false
			  6	[  0]	JMP  	  1		1	; 	goto 8
			  7	[  0]	KPRI 	  0		2	; slot0 = true
			  8	[  0]	RET1 	  0		2	; return slot0
		 80	[  0]	TSETS	  4	3	38	; slot3.get = slot4
		 81	[  0]	FNEW 	  4		16	; N/A:0-0: 1 args, 3 upvalues, 7 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	ISEQP	  0		2	; if slot0 == true
			  3	[  0]	JMP  	  2		2	; 	goto 6
			  4	[  0]	KPRI 	  2		1	; slot2 = false
			  5	[  0]	JMP  	  3		1	; 	goto 7
			  6	[  0]	KPRI 	  2		2	; slot2 = true
			  7	[  0]	TSETS	  2	1	2	; uv0"unknown".vibration = slot2
			  8	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			  9	[  0]	CALL 	  1	1	1	;  = uv1"unknown"()
			 10	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			 11	[  0]	TGETS	  1	1	2	; slot1 = uv0"unknown".vibration
			 12	[  0]	ISF  	   		1	; if not uv0"unknown".vibration
			 13	[  0]	JMP  	  2		8	; 	goto 22
			 14	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
			 15	[  0]	TGETS	  1	1	1	; slot1 = uv2"unknown".test
			 16	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			 17	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".vibrate
			 18	[  0]	TGETB	  4	1	1	; slot4 = uv2"unknown".test[1]
			 19	[  0]	TGETB	  5	1	2	; slot5 = uv2"unknown".test[2]
			 20	[  0]	TGETB	  6	1	3	; slot6 = uv2"unknown".test[3]
			 21	[  0]	CALL 	  2	1	4	;  = uv0"unknown".vibrate(slot3, slot4, slot5)
			 22	[  0]	RET0 	  0		1	; return
		 82	[  0]	TSETS	  4	3	36	; slot3.set = slot4
		 83	[  0]	TSETV	  3	0	2	; slot0[slot2] = slot3
		 84	[  0]	LEN  	  2		0	; slot2 = #slot0
		 85	[  0]	ADDVN	  2	2	0	; slot2 = slot2 + 1
		 86	[  0]	TDUP 	  3		15	; slot3 = copy table#k15
		 87	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 88	[  0]	KSTR 	  6		14	; slot6 = "controls_cursor_speed"
		 89	[  0]	CALL 	  4	2	2	; slot4 = uv1"unknown"(slot5)
		 90	[  0]	TSETS	  4	3	45	; slot3.label = uv1"unknown"
		 91	[  0]	FNEW 	  4		13	; N/A:0-0: 0 args, 1 upvalues, 1 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".speed
			  3	[  0]	RET1 	  0		2	; return uv0"unknown".speed
		 92	[  0]	TSETS	  4	3	38	; slot3.get = slot4
		 93	[  0]	FNEW 	  4		12	; N/A:0-0: 1 args, 2 upvalues, 11 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	GGET 	  2		3	; slot2 = _env["math"]
			  3	[  0]	TGETS	  2	2	2	; slot2 = math.max
			  4	[  0]	KSHORT	  4		0	; slot4 = 0
			  5	[  0]	GGET 	  5		3	; slot5 = _env["math"]
			  6	[  0]	TGETS	  5	5	1	; slot5 = math.min
			  7	[  0]	KSHORT	  7		1	; slot7 = 1
			  8	[  0]	GGET 	  8		0	; slot8 = _env["tonumber"]
			  9	[  0]	MOV  	 10		0	; slot10 = slot0
			 10	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
			 11	[  0]	IST  	   		8	; if tonumber
			 12	[  0]	JMP  	  9		1	; 	goto 14
			 13	[  0]	KNUM 	  8		0	; slot8 = 0.5
			 14	[  0]	CALL 	  5	0	3	; MULTRES = math.min(slot6, slot7)
			 15	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
			 16	[  0]	TSETS	  2	1	4	; uv0"unknown".speed = math.max
			 17	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			 18	[  0]	CALL 	  1	1	1	;  = uv1"unknown"()
			 19	[  0]	RET0 	  0		1	; return
		 94	[  0]	TSETS	  4	3	36	; slot3.set = slot4
		 95	[  0]	TSETV	  3	0	2	; slot0[slot2] = slot3
		 96	[  0]	LEN  	  2		0	; slot2 = #slot0
		 97	[  0]	ADDVN	  2	2	0	; slot2 = slot2 + 1
		 98	[  0]	TDUP 	  3		11	; slot3 = copy table#k11
		 99	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		100	[  0]	KSTR 	  6		10	; slot6 = "controls_glyphs"
		101	[  0]	CALL 	  4	2	2	; slot4 = uv1"unknown"(slot5)
		102	[  0]	TSETS	  4	3	45	; slot3.label = uv1"unknown"
		103	[  0]	TNEW 	  4		5	; slot4 = new table( array: 5, dict: 1)
		104	[  0]	TDUP 	  5		9	; slot5 = copy table#k9
		105	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		106	[  0]	KSTR 	  8		8	; slot8 = "controls_glyphs_auto"
		107	[  0]	CALL 	  6	2	2	; slot6 = uv1"unknown"(slot7)
		108	[  0]	TSETS	  6	5	45	; slot5.label = uv1"unknown"
		109	[  0]	TSETB	  5	4	1	; slot4[1] = slot5
		110	[  0]	TDUP 	  5		7	; slot5 = copy table#k7
		111	[  0]	TSETB	  5	4	2	; slot4[2] = slot5
		112	[  0]	TDUP 	  5		6	; slot5 = copy table#k6
		113	[  0]	TSETB	  5	4	3	; slot4[3] = slot5
		114	[  0]	TDUP 	  5		5	; slot5 = copy table#k5
		115	[  0]	TSETB	  5	4	4	; slot4[4] = slot5
		116	[  0]	TSETS	  4	3	40	; slot3.options = slot4
		117	[  0]	FNEW 	  4		4	; N/A:0-0: 0 args, 1 upvalues, 1 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".styleSetting
			  3	[  0]	RET1 	  0		2	; return uv0"unknown".styleSetting
		118	[  0]	TSETS	  4	3	38	; slot3.get = slot4
		119	[  0]	FNEW 	  4		3	; N/A:0-0: 1 args, 2 upvalues, 3 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	TSETS	  0	1	0	; uv0"unknown".styleSetting = slot0
			  3	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			  4	[  0]	CALL 	  1	1	1	;  = uv1"unknown"()
			  5	[  0]	RET0 	  0		1	; return
		120	[  0]	TSETS	  4	3	36	; slot3.set = slot4
		121	[  0]	TSETV	  3	0	2	; slot0[slot2] = slot3
		122	[  0]	LEN  	  2		0	; slot2 = #slot0
		123	[  0]	ADDVN	  2	2	0	; slot2 = slot2 + 1
		124	[  0]	TDUP 	  3		2	; slot3 = copy table#k2
		125	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		126	[  0]	KSTR 	  6		1	; slot6 = "controls_reset"
		127	[  0]	CALL 	  4	2	2	; slot4 = uv1"unknown"(slot5)
		128	[  0]	TSETS	  4	3	45	; slot3.label = uv1"unknown"
		129	[  0]	FNEW 	  4		0	; N/A:0-0: 0 args, 6 upvalues, 2 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	TGETS	  0	0	8	; slot0 = uv0"unknown".cancel
			  3	[  0]	CALL 	  0	1	1	;  = uv0"unknown".cancel()
			  4	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
			  5	[  0]	TGETS	  0	0	7	; slot0 = uv1"unknown".settingsDevice
			  6	[  0]	CALL 	  0	2	1	; slot0 = uv1"unknown".settingsDevice()
			  7	[  0]	ISNES	  0		6	; if slot0 ~= "pad"
			  8	[  0]	JMP  	  0		13	; 	goto 22
			  9	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
			 10	[  0]	TGETS	  0	0	5	; slot0 = uv2"unknown".resetPad
			 11	[  0]	CALL 	  0	1	1	;  = uv2"unknown".resetPad()
			 12	[  0]	UGET 	  0		3	; slot0 = uv3"unknwon"
			 13	[  0]	KPRI 	  1		2	; slot1 = true
			 14	[  0]	TSETS	  1	0	4	; uv3"unknown".vibration = slot1
			 15	[  0]	UGET 	  0		4	; slot0 = uv4"unknwon"
			 16	[  0]	KNUM 	  1		0	; slot1 = 0.5
			 17	[  0]	TSETS	  1	0	3	; uv4"unknown".speed = slot1
			 18	[  0]	UGET 	  0		3	; slot0 = uv3"unknwon"
			 19	[  0]	KSTR 	  1		1	; slot1 = "auto"
			 20	[  0]	TSETS	  1	0	2	; uv3"unknown".styleSetting = slot1
			 21	[  0]	JMP  	  0		3	; 	goto 25
			 22	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
			 23	[  0]	TGETS	  0	0	0	; slot0 = uv2"unknown".resetKeys
			 24	[  0]	CALL 	  0	1	1	;  = uv2"unknown".resetKeys()
			 25	[  0]	UGET 	  0		5	; slot0 = uv5"unknwon"
			 26	[  0]	CALL 	  0	1	1	;  = uv5"unknown"()
			 27	[  0]	RET0 	  0		1	; return
		130	[  0]	TSETS	  4	3	36	; slot3.set = slot4
		131	[  0]	TSETV	  3	0	2	; slot0[slot2] = slot3
		132	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 133
		133	[  0]	RET1 	  0		2	; return slot0
	1060	[  0]	TSETV	 86	6	85	; slot6[slot85] = slot86
	1061	[  0]	KSTR 	 85		11	; slot85 = "leaveSettingsPage"
	1062	[  0]	FNEW 	 86		10	; N/A:0-0: 0 args, 2 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".cancel
		  3	[  0]	CALL 	  0	1	1	;  = uv0"unknown".cancel()
		  4	[  0]	USETP	  1		0	; uv1"unknwon" = nil
		  5	[  0]	RET0 	  0		1	; return
	1063	[  0]	TSETV	 86	6	85	; slot6[slot85] = slot86
	1064	[  0]	KSTR 	 85		9	; slot85 = "isCapturing"
	1065	[  0]	FNEW 	 86		8	; N/A:0-0: 0 args, 1 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".active
		  3	[  0]	ISNEP	  0		0	; if uv0"unknown".active ~= nil
		  4	[  0]	JMP  	  0		2	; 	goto 7
		  5	[  0]	KPRI 	  0		1	; slot0 = false
		  6	[  0]	JMP  	  1		1	; 	goto 8
		  7	[  0]	KPRI 	  0		2	; slot0 = true
		  8	[  0]	RET1 	  0		2	; return slot0
	1066	[  0]	TSETV	 86	6	85	; slot6[slot85] = slot86
	1067	[  0]	KSTR 	 85		7	; slot85 = "init"
	1068	[  0]	FNEW 	 86		6	; N/A:0-0: 1 args, 3 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	1	; slot1 = uv0"unknown".load
		  3	[  0]	MOV  	  3		0	; slot3 = slot0
		  4	[  0]	CALL 	  1	1	2	;  = uv0"unknown".load(slot2)
		  5	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		  6	[  0]	TGETS	  1	1	0	; slot1 = uv1"unknown".scan
		  7	[  0]	CALL 	  1	1	1	;  = uv1"unknown".scan()
		  8	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
		  9	[  0]	CALL 	  1	1	1	;  = uv2"unknown"()
		 10	[  0]	RET0 	  0		1	; return
	1069	[  0]	TSETV	 86	6	85	; slot6[slot85] = slot86
	1070	[  0]	KSTR 	 85		5	; slot85 = "shutdown"
	1071	[  0]	FNEW 	 86		4	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	0	; slot0 = uv0"unknown".stopVibration
		  3	[  0]	CALL 	  0	1	1	;  = uv0"unknown".stopVibration()
		  4	[  0]	RET0 	  0		1	; return
	1072	[  0]	TSETV	 86	6	85	; slot6[slot85] = slot86
	1073	[  0]	KSTR 	 85		3	; slot85 = "_state"
	1074	[  0]	TSETV	  7	6	85	; slot6[slot85] = slot7
	1075	[  0]	KSTR 	 85		2	; slot85 = "_focusTarget"
	1076	[  0]	FNEW 	 86		1	; N/A:0-0: 1 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALLT	  1		2	; return uv0"unknown"(slot2)
	1077	[  0]	TSETV	 86	6	85	; slot6[slot85] = slot86
	1078	[  0]	KSTR 	 85		0	; slot85 = "_handleButton"
	1079	[  0]	TSETV	 67	6	85	; slot6[slot85] = slot67
	1080	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 1081
	1081	[  0]	RET1 	  6		2	; return slot6
	
