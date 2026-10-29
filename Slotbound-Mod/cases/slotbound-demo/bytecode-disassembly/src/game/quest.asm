;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\game\quest.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 8 slots
	;;;; constant tables ;;;;
	ktable#43 = [
		[description] = 유닛 3명 이하로 승리시,
		[objectiveType] = win_with_3_or_fewer_units,
		[id] = win_with_3_or_fewer_units,
		[number] = 28,
		[target] = 1,
		[name] = 유닛 3명 이하로 승리,
		[difficulty] = 상,
		]
	
	
	ktable#45 = [
		[description] = 전장에 4성 이상 유닛 1명만으로 웨이브 승리시,
		[objectiveType] = win_with_one_4_star,
		[id] = win_with_one_4_star,
		[number] = 27,
		[target] = 1,
		[name] = 4성 이상 유닛 1명만으로 웨이브 승리,
		[difficulty] = 상,
		]
	
	
	ktable#47 = [
		[description] = 일반 희귀도 유닛만으로 심판 웨이브 클리어시,
		[objectiveType] = normal_units_only_judgement,
		[id] = normal_units_only_judgement,
		[number] = 26,
		[target] = 1,
		[name] = 일반 유닛만으로 심판 웨이브 클리어,
		[difficulty] = 상,
		]
	
	
	ktable#48 = [
		[description] = 체력이 1인 상태로 웨이브를 승리하거나 체력을 1만 남기고 웨이브 승리시,
		[objectiveType] = win_with_1_hp,
		[id] = win_with_1_hp,
		[number] = 25,
		[target] = 1,
		[name] = 체력 1 로 웨이브 승리,
		[difficulty] = 상,
		]
	
	
	ktable#50 = [
		[description] = 슬롯머신의 스핀을 총 60번 할시,
		[objectiveType] = total_spin_count,
		[id] = spin_60_total,
		[number] = 24,
		[target] = 60,
		[name] = 슬롯머신 60회 스핀,
		[difficulty] = 상,
		]
	
	
	ktable#53 = [
		[description] = 3성 유닛 없이 10 웨이브 도달시,
		[objectiveType] = reach_wave_10_no_3_star,
		[id] = reach_wave_10_no_3_star,
		[number] = 23,
		[target] = 10,
		[name] = 3성 유닛 없이 10 웨이브 도달,
		[difficulty] = 중,
		]
	
	
	ktable#54 = [
		[description] = 웨이브 카운터 전투 시작 2초전에 슬롯머신 스핀 돌렸는데 당첨될시,
		[objectiveType] = clutch_win,
		[id] = clutch_win,
		[number] = 22,
		[target] = 1,
		[name] = 전투 시작 직전 스핀으로 당첨 만들기,
		[difficulty] = 중,
		]
	
	
	ktable#56 = [
		[description] = 유닛 5명 이하로 승리시,
		[objectiveType] = win_with_5_or_fewer_units,
		[id] = win_with_5_or_fewer_units,
		[number] = 21,
		[target] = 1,
		[name] = 유닛 5명 이하로 승리,
		[difficulty] = 중,
		]
	
	
	ktable#58 = [
		[description] = 전장에 원거리 유닛만 있을 경우,
		[objectiveType] = ranged_units_only,
		[id] = ranged_units_only,
		[number] = 20,
		[target] = 1,
		[name] = 원거리 유닛만 유지,
		[difficulty] = 중,
		]
	
	
	ktable#60 = [
		[description] = 5 웨이브 동안 아이템 미사용시,
		[objectiveType] = no_item_waves,
		[id] = no_item_5_waves,
		[number] = 19,
		[target] = 5,
		[name] = 5 웨이브 동안 아이템 미사용,
		[difficulty] = 중,
		]
	
	
	ktable#62 = [
		[description] = 5 웨이브 동안 상점 미사용시,
		[objectiveType] = no_shop_waves,
		[id] = no_shop_5_waves,
		[number] = 18,
		[target] = 5,
		[name] = 5 웨이브 동안 상점 미사용,
		[difficulty] = 중,
		]
	
	
	ktable#63 = [
		[description] = 고급 이상 유닛만 흡수하여 승급시,
		[objectiveType] = advanced_promotion,
		[id] = advanced_promotion,
		[number] = 17,
		[target] = 1,
		[name] = 고급 이상 유닛만 흡수하여 유닛 승급,
		[difficulty] = 중,
		]
	
	
	ktable#65 = [
		[description] = 5 웨이브 동안 넛지를 안 사용할시,
		[objectiveType] = no_nudge_waves,
		[id] = no_nudge_5_waves,
		[number] = 16,
		[target] = 5,
		[name] = 5 웨이브 동안 넛지 미사용,
		[difficulty] = 중,
		]
	
	
	ktable#66 = [
		[description] = 5 웨이브 동안 흡수를 안할시,
		[objectiveType] = no_absorb_waves,
		[id] = no_absorb_5_waves,
		[number] = 15,
		[target] = 5,
		[name] = 흡수 없이 5 웨이브 생존,
		[difficulty] = 중,
		]
	
	
	ktable#68 = [
		[description] = 5웨이브 동안 일반 유닛만 사용 할 시,
		[objectiveType] = normal_units_only_waves,
		[id] = normal_units_only_5_waves,
		[number] = 14,
		[target] = 5,
		[name] = 5 웨이브 동안 일반 유닛만 사용,
		[difficulty] = 중,
		]
	
	
	ktable#70 = [
		[description] = 슬롯머신의 스핀을 총 35번 할시,
		[objectiveType] = total_spin_count,
		[id] = spin_35_total,
		[number] = 13,
		[target] = 35,
		[name] = 슬롯머신 35회 스핀,
		[difficulty] = 중,
		]
	
	
	ktable#72 = [
		]
	
	
	ktable#73 = [
		[description] = 종류가 다른 심볼의 3명의 유닛들 1명의 유닛에게 흡수시,
		[objectiveType] = absorber_unique_symbols_3,
		[id] = absorb_3_unique_symbols,
		[number] = 12,
		[target] = 1,
		[name] = 서로 다른 3종의 유닛을 1명의 유닛에게 흡수,
		[difficulty] = 하,
		]
	
	
	ktable#75 = [
		[description] = 전투시 1명만 남은채로 승리시,
		[objectiveType] = win_with_one_survivor,
		[id] = win_with_last_unit,
		[number] = 11,
		[target] = 1,
		[name] = 마지막 유닛 1명 남은채로 승리,
		[difficulty] = 하,
		]
	
	
	ktable#77 = [
		[description] = 전투시 1명 이하로 사망 했을 경우,
		[objectiveType] = wave_deaths_le_1,
		[id] = wave_death_limit_1,
		[number] = 10,
		[target] = 1,
		[name] = 한 웨이브간 전투에서 1명 이하 사망,
		[difficulty] = 하,
		]
	
	
	ktable#79 = [
		[description] = 2성으로 승급된 유닛 보유시,
		[objectiveType] = max_rank_count,
		[id] = rank_up_to_2,
		[number] = 9,
		[target] = 1,
		[name] = 1성 유닛을 2성까지 성장,
		[difficulty] = 하,
		]
	
	
	ktable#81 = [
		[description] = 각인을 3개 이상 장착한 유닛을 보유시,
		[objectiveType] = max_imprint_count,
		[id] = unit_with_3_imprints,
		[number] = 8,
		[target] = 1,
		[name] = 각인 3개 이상 장착 유닛 보유,
		[difficulty] = 하,
		]
	
	
	ktable#82 = [
		[description] = 3명의 유닛에 각각 흡수를 1회 혹은 그 이상을 할시,
		[objectiveType] = units_with_absorb_count,
		[id] = 3_units_absorbed_once,
		[number] = 7,
		[target] = 3,
		[name] = 3명의 유닛에 각각 흡수 1회 이상,
		[difficulty] = 하,
		]
	
	
	ktable#84 = [
		[description] = 흡수를 5회나 그 이상 달성시,
		[objectiveType] = total_absorb_count,
		[id] = absorb_5,
		[number] = 6,
		[target] = 5,
		[name] = 흡수 5회 달성,
		[difficulty] = 하,
		]
	
	
	ktable#86 = [
		[description] = 다른 종류 심볼의 유닛이 4명이나 그 이상을 보유시,
		[objectiveType] = unique_unit_count,
		[id] = unique_unit_4,
		[number] = 5,
		[target] = 4,
		[name] = 서로 다른 4종 유닛 소유,
		[difficulty] = 하,
		]
	
	
	ktable#88 = [
		[description] = 똑같은 종류의 심볼의 유닛이 4명이나 그 이상을 보유시,
		[objectiveType] = same_unit_count,
		[id] = same_unit_4,
		[number] = 4,
		[target] = 4,
		[name] = 동일 유닛 4명 소유,
		[difficulty] = 하,
		]
	
	
	ktable#90 = [
		[description] = 보유 정수가 15개 이상을 달성할 경우,
		[objectiveType] = essence_count,
		[id] = essence_15_total,
		[number] = 3,
		[target] = 15,
		[name] = 정수 15 이상 달성,
		[difficulty] = 하,
		]
	
	
	ktable#93 = [
		[description] = 슬롯머신의 스핀을 총 20번 할시,
		[objectiveType] = total_spin_count,
		[id] = spin_20_total,
		[number] = 2,
		[target] = 20,
		[name] = 슬롯머신 총 20회 스핀,
		[difficulty] = 하,
		]
	
	
	ktable#94 = [
		[description] = 한 라운드에서 슬롯머신 스핀을 6번 할시,
		[objectiveType] = round_spin_count,
		[id] = spin_6_in_one_round,
		[number] = 1,
		[target] = 6,
		[name] = 한 라운드에 스핀 6회 사용,
		[difficulty] = 하,
		]
	
	
	;;;; instructions ;;;;
	  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
	  2	[  0]	FNEW 	  1		96	; N/A:0-0: 1 args, 0 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		ktable#17 = [
			[completed] = false,
			[current] = 0,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TDUP 	  1		17	; slot1 = copy table#k17
		  2	[  0]	TGETS	  2	0	18	; slot2 = slot0.number
		  3	[  0]	TSETS	  2	1	18	; slot1.number = <unknown table>.number
		  4	[  0]	TGETS	  2	0	16	; slot2 = slot0.id
		  5	[  0]	TSETS	  2	1	16	; slot1.id = <unknown table>.id
		  6	[  0]	TGETS	  2	0	15	; slot2 = slot0.name
		  7	[  0]	TSETS	  2	1	15	; slot1.name = <unknown table>.name
		  8	[  0]	TGETS	  2	0	14	; slot2 = slot0.description
		  9	[  0]	TSETS	  2	1	14	; slot1.description = <unknown table>.description
		 10	[  0]	TGETS	  2	0	13	; slot2 = slot0.difficulty
		 11	[  0]	TSETS	  2	1	13	; slot1.difficulty = <unknown table>.difficulty
		 12	[  0]	TGETS	  2	0	12	; slot2 = slot0.objectiveType
		 13	[  0]	TSETS	  2	1	12	; slot1.objectiveType = <unknown table>.objectiveType
		 14	[  0]	TGETS	  2	0	11	; slot2 = slot0.target
		 15	[  0]	TSETS	  2	1	11	; slot1.target = <unknown table>.target
		 16	[  0]	TGETS	  2	0	10	; slot2 = slot0.appearanceCondition
		 17	[  0]	TSETS	  2	1	10	; slot1.appearanceCondition = <unknown table>.appearanceCondition
		 18	[  0]	FNEW 	  2		8	; N/A:0-0: 1 args, 0 upvalues, 6 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  1		4	; slot1 = _env["string"]
			  2	[  0]	TGETS	  1	1	3	; slot1 = string.format
			  3	[  0]	KSTR 	  3		2	; slot3 = "%d/%d"
			  4	[  0]	TGETS	  4	0	1	; slot4 = slot0.current
			  5	[  0]	TGETS	  5	0	0	; slot5 = slot0.target
			  6	[  0]	CALLT	  1		4	; return string.format(slot2, slot3, <unknown table>.current)
		 19	[  0]	TSETS	  2	1	9	; slot1.getProgressText = slot2
		 20	[  0]	FNEW 	  2		6	; N/A:0-0: 2 args, 0 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	TGETS	  2	0	0	; slot2 = slot0.appearanceCondition
			  2	[  0]	IST  	   		2	; if <unknown table>.appearanceCondition
			  3	[  0]	JMP  	  2		2	; 	goto 6
			  4	[  0]	KPRI 	  2		2	; slot2 = true
			  5	[  0]	RET1 	  2		2	; return slot2
			  6	[  0]	TGETS	  2	0	0	; slot2 = slot0.appearanceCondition
			  7	[  0]	MOV  	  4		1	; slot4 = slot1
			  8	[  0]	CALLT	  2		2	; return <unknown table>.appearanceCondition(slot3)
		 21	[  0]	TSETS	  2	1	7	; slot1.isAvailable = slot2
		 22	[  0]	FNEW 	  2		4	; N/A:0-0: 1 args, 0 upvalues, 2 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	KSHORT	  1		0	; slot1 = 0
			  2	[  0]	TSETS	  1	0	1	; slot0.current = slot1
			  3	[  0]	KPRI 	  1		1	; slot1 = false
			  4	[  0]	TSETS	  1	0	0	; slot0.completed = slot1
			  5	[  0]	RET0 	  0		1	; return
		 23	[  0]	TSETS	  2	1	5	; slot1.resetRoundProgress = slot2
		 24	[  0]	FNEW 	  2		2	; N/A:0-0: 2 args, 0 upvalues, 7 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	TGETS	  2	0	4	; slot2 = slot0.completed
			  2	[  0]	ISF  	   		2	; if not <unknown table>.completed
			  3	[  0]	JMP  	  3		1	; 	goto 5
			  4	[  0]	RET0 	  0		1	; return
			  5	[  0]	ISTC 	  2		1	; slot2 = slot1; if slot1
			  6	[  0]	JMP  	  2		1	; 	goto 8
			  7	[  0]	KSHORT	  2		1	; slot2 = 1
			  8	[  0]	GGET 	  3		2	; slot3 = _env["math"]
			  9	[  0]	TGETS	  3	3	1	; slot3 = math.min
			 10	[  0]	TGETS	  5	0	0	; slot5 = slot0.target
			 11	[  0]	TGETS	  6	0	3	; slot6 = slot0.current
			 12	[  0]	ADDVV	  6	6	2	; slot6 = <unknown table>.current + slot2
			 13	[  0]	CALL 	  3	2	3	; slot3 = math.min(slot4, <unknown table>.target)
			 14	[  0]	TSETS	  3	0	3	; slot0.current = slot3
			 15	[  0]	TGETS	  3	0	3	; slot3 = slot0.current
			 16	[  0]	TGETS	  4	0	0	; slot4 = slot0.target
			 17	[  0]	ISLE 	  4		3	; if <unknown table>.target <= <unknown table>.current
			 18	[  0]	JMP  	  3		2	; 	goto 21
			 19	[  0]	KPRI 	  3		1	; slot3 = false
			 20	[  0]	JMP  	  4		1	; 	goto 22
			 21	[  0]	KPRI 	  3		2	; slot3 = true
			 22	[  0]	TSETS	  3	0	4	; slot0.completed = slot3
			 23	[  0]	RET0 	  0		1	; return
		 25	[  0]	TSETS	  2	1	3	; slot1.addProgress = slot2
		 26	[  0]	FNEW 	  2		0	; N/A:0-0: 2 args, 0 upvalues, 6 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	TGETS	  2	0	4	; slot2 = slot0.completed
			  2	[  0]	ISF  	   		2	; if not <unknown table>.completed
			  3	[  0]	JMP  	  3		1	; 	goto 5
			  4	[  0]	RET0 	  0		1	; return
			  5	[  0]	GGET 	  2		2	; slot2 = _env["math"]
			  6	[  0]	TGETS	  2	2	1	; slot2 = math.min
			  7	[  0]	TGETS	  4	0	0	; slot4 = slot0.target
			  8	[  0]	MOV  	  5		1	; slot5 = slot1
			  9	[  0]	CALL 	  2	2	3	; slot2 = math.min(slot3, <unknown table>.target)
			 10	[  0]	TSETS	  2	0	3	; slot0.current = slot2
			 11	[  0]	TGETS	  2	0	3	; slot2 = slot0.current
			 12	[  0]	TGETS	  3	0	0	; slot3 = slot0.target
			 13	[  0]	ISLE 	  3		2	; if <unknown table>.target <= <unknown table>.current
			 14	[  0]	JMP  	  2		2	; 	goto 17
			 15	[  0]	KPRI 	  2		1	; slot2 = false
			 16	[  0]	JMP  	  3		1	; 	goto 18
			 17	[  0]	KPRI 	  2		2	; slot2 = true
			 18	[  0]	TSETS	  2	0	4	; slot0.completed = slot2
			 19	[  0]	RET0 	  0		1	; return
		 27	[  0]	TSETS	  2	1	1	; slot1.setProgress = slot2
		 28	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 29
		 29	[  0]	RET1 	  1		2	; return slot1
	  3	[  0]	TDUP 	  2		72	; slot2 = copy table#k72
	  4	[  0]	TNEW 	  3		13	; slot3 = new table( array: 13, dict: 1)
	  5	[  0]	MOV  	  4		1	; slot4 = slot1
	  6	[  0]	TDUP 	  6		94	; slot6 = copy table#k94
	  7	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	  8	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	  9	[  0]	MOV  	  4		1	; slot4 = slot1
	 10	[  0]	TDUP 	  6		93	; slot6 = copy table#k93
	 11	[  0]	FNEW 	  7		92	; N/A:0-0: 1 args, 0 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		15	; 	goto 18
		  3	[  0]	TGETS	  1	0	1	; slot1 = slot0.activeQuests
		  4	[  0]	ISF  	   		1	; if not <unknown table>.activeQuests
		  5	[  0]	JMP  	  2		12	; 	goto 18
		  6	[  0]	GGET 	  1		0	; slot1 = _env["pairs"]
		  7	[  0]	TGETS	  3	0	1	; slot3 = slot0.activeQuests
		  8	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = pairs(slot2)
		  9	[  0]	ISNEXT	  4		6	; Verify ITERN at 16; goto 16
		 10	[  0]	ISEQN	  5		0	; if slot5 == 13
		 11	[  0]	JMP  	  6		2	; 	goto 14
		 12	[  0]	ISNEN	  5		1	; if slot5 ~= 24
		 13	[  0]	JMP  	  6		2	; 	goto 16
		 14	[  0]	KPRI 	  6		1	; slot6 = false
		 15	[  0]	RET1 	  6		2	; return slot6
		 16	[  0]	ITERN	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, <unknown table>.activeQuests; slot4, slot5 = slot1(slot2, <unknown table>.activeQuests)
		 17	[  0]	ITERL	  4		-8	; <unknown table>.activeQuests = slot4; if slot4 != nil goto 10
		 18	[  0]	KPRI 	  1		2	; slot1 = true
		 19	[  0]	RET1 	  1		2	; return slot1
	 12	[  0]	TSETS	  7	6	91	; slot6.appearanceCondition = slot7
	 13	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	 14	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	 15	[  0]	MOV  	  4		1	; slot4 = slot1
	 16	[  0]	TDUP 	  6		90	; slot6 = copy table#k90
	 17	[  0]	FNEW 	  7		89	; N/A:0-0: 1 args, 0 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	0	; slot1 = slot0.essence
		  2	[  0]	IST  	   		1	; if <unknown table>.essence
		  3	[  0]	JMP  	  2		1	; 	goto 5
		  4	[  0]	KSHORT	  1		0	; slot1 = 0
		  5	[  0]	KSHORT	  2		5	; slot2 = 5
		  6	[  0]	ISLE 	  1		2	; if slot1 <= slot2
		  7	[  0]	JMP  	  1		2	; 	goto 10
		  8	[  0]	KPRI 	  1		1	; slot1 = false
		  9	[  0]	JMP  	  2		1	; 	goto 11
		 10	[  0]	KPRI 	  1		2	; slot1 = true
		 11	[  0]	RET1 	  1		2	; return slot1
	 18	[  0]	TSETS	  7	6	91	; slot6.appearanceCondition = slot7
	 19	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	 20	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	 21	[  0]	MOV  	  4		1	; slot4 = slot1
	 22	[  0]	TDUP 	  6		88	; slot6 = copy table#k88
	 23	[  0]	FNEW 	  7		87	; N/A:0-0: 1 args, 0 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	0	; slot1 = slot0.maxSameCount
		  2	[  0]	IST  	   		1	; if <unknown table>.maxSameCount
		  3	[  0]	JMP  	  2		1	; 	goto 5
		  4	[  0]	KSHORT	  1		0	; slot1 = 0
		  5	[  0]	KSHORT	  2		3	; slot2 = 3
		  6	[  0]	ISLE 	  1		2	; if slot1 <= slot2
		  7	[  0]	JMP  	  1		2	; 	goto 10
		  8	[  0]	KPRI 	  1		1	; slot1 = false
		  9	[  0]	JMP  	  2		1	; 	goto 11
		 10	[  0]	KPRI 	  1		2	; slot1 = true
		 11	[  0]	RET1 	  1		2	; return slot1
	 24	[  0]	TSETS	  7	6	91	; slot6.appearanceCondition = slot7
	 25	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	 26	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	 27	[  0]	MOV  	  4		1	; slot4 = slot1
	 28	[  0]	TDUP 	  6		86	; slot6 = copy table#k86
	 29	[  0]	FNEW 	  7		85	; N/A:0-0: 1 args, 0 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	0	; slot1 = slot0.uniqueCount
		  2	[  0]	IST  	   		1	; if <unknown table>.uniqueCount
		  3	[  0]	JMP  	  2		1	; 	goto 5
		  4	[  0]	KSHORT	  1		0	; slot1 = 0
		  5	[  0]	KSHORT	  2		3	; slot2 = 3
		  6	[  0]	ISLE 	  1		2	; if slot1 <= slot2
		  7	[  0]	JMP  	  1		2	; 	goto 10
		  8	[  0]	KPRI 	  1		1	; slot1 = false
		  9	[  0]	JMP  	  2		1	; 	goto 11
		 10	[  0]	KPRI 	  1		2	; slot1 = true
		 11	[  0]	RET1 	  1		2	; return slot1
	 30	[  0]	TSETS	  7	6	91	; slot6.appearanceCondition = slot7
	 31	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	 32	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	 33	[  0]	MOV  	  4		1	; slot4 = slot1
	 34	[  0]	TDUP 	  6		84	; slot6 = copy table#k84
	 35	[  0]	FNEW 	  7		83	; N/A:0-0: 1 args, 0 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	0	; slot1 = slot0.wave
		  2	[  0]	IST  	   		1	; if <unknown table>.wave
		  3	[  0]	JMP  	  2		1	; 	goto 5
		  4	[  0]	KSHORT	  1		1	; slot1 = 1
		  5	[  0]	KSHORT	  2		1	; slot2 = 1
		  6	[  0]	ISGT 	  2		1	; if slot2 > slot1
		  7	[  0]	JMP  	  1		7	; 	goto 15
		  8	[  0]	TGETS	  1	0	0	; slot1 = slot0.wave
		  9	[  0]	IST  	   		1	; if <unknown table>.wave
		 10	[  0]	JMP  	  2		1	; 	goto 12
		 11	[  0]	KSHORT	  1		1	; slot1 = 1
		 12	[  0]	KSHORT	  2		10	; slot2 = 10
		 13	[  0]	ISLE 	  1		2	; if slot1 <= slot2
		 14	[  0]	JMP  	  1		2	; 	goto 17
		 15	[  0]	KPRI 	  1		1	; slot1 = false
		 16	[  0]	JMP  	  2		1	; 	goto 18
		 17	[  0]	KPRI 	  1		2	; slot1 = true
		 18	[  0]	RET1 	  1		2	; return slot1
	 36	[  0]	TSETS	  7	6	91	; slot6.appearanceCondition = slot7
	 37	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	 38	[  0]	TSETB	  4	3	6	; slot3[6] = slot4
	 39	[  0]	MOV  	  4		1	; slot4 = slot1
	 40	[  0]	TDUP 	  6		82	; slot6 = copy table#k82
	 41	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	 42	[  0]	TSETB	  4	3	7	; slot3[7] = slot4
	 43	[  0]	MOV  	  4		1	; slot4 = slot1
	 44	[  0]	TDUP 	  6		81	; slot6 = copy table#k81
	 45	[  0]	FNEW 	  7		80	; N/A:0-0: 1 args, 0 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	0	; slot1 = slot0.maxImprintCount
		  2	[  0]	IST  	   		1	; if <unknown table>.maxImprintCount
		  3	[  0]	JMP  	  2		1	; 	goto 5
		  4	[  0]	KSHORT	  1		0	; slot1 = 0
		  5	[  0]	KSHORT	  2		2	; slot2 = 2
		  6	[  0]	ISLT 	  1		2	; if slot1 < slot2
		  7	[  0]	JMP  	  1		2	; 	goto 10
		  8	[  0]	KPRI 	  1		1	; slot1 = false
		  9	[  0]	JMP  	  2		1	; 	goto 11
		 10	[  0]	KPRI 	  1		2	; slot1 = true
		 11	[  0]	RET1 	  1		2	; return slot1
	 46	[  0]	TSETS	  7	6	91	; slot6.appearanceCondition = slot7
	 47	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	 48	[  0]	TSETB	  4	3	8	; slot3[8] = slot4
	 49	[  0]	MOV  	  4		1	; slot4 = slot1
	 50	[  0]	TDUP 	  6		79	; slot6 = copy table#k79
	 51	[  0]	FNEW 	  7		78	; N/A:0-0: 1 args, 0 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	0	; slot1 = slot0.wave
		  2	[  0]	IST  	   		1	; if <unknown table>.wave
		  3	[  0]	JMP  	  2		1	; 	goto 5
		  4	[  0]	KSHORT	  1		1	; slot1 = 1
		  5	[  0]	KSHORT	  2		1	; slot2 = 1
		  6	[  0]	ISGT 	  2		1	; if slot2 > slot1
		  7	[  0]	JMP  	  1		7	; 	goto 15
		  8	[  0]	TGETS	  1	0	0	; slot1 = slot0.wave
		  9	[  0]	IST  	   		1	; if <unknown table>.wave
		 10	[  0]	JMP  	  2		1	; 	goto 12
		 11	[  0]	KSHORT	  1		1	; slot1 = 1
		 12	[  0]	KSHORT	  2		10	; slot2 = 10
		 13	[  0]	ISLE 	  1		2	; if slot1 <= slot2
		 14	[  0]	JMP  	  1		2	; 	goto 17
		 15	[  0]	KPRI 	  1		1	; slot1 = false
		 16	[  0]	JMP  	  2		1	; 	goto 18
		 17	[  0]	KPRI 	  1		2	; slot1 = true
		 18	[  0]	RET1 	  1		2	; return slot1
	 52	[  0]	TSETS	  7	6	91	; slot6.appearanceCondition = slot7
	 53	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	 54	[  0]	TSETB	  4	3	9	; slot3[9] = slot4
	 55	[  0]	MOV  	  4		1	; slot4 = slot1
	 56	[  0]	TDUP 	  6		77	; slot6 = copy table#k77
	 57	[  0]	FNEW 	  7		76	; N/A:0-0: 1 args, 0 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	0	; slot1 = slot0.wave
		  2	[  0]	IST  	   		1	; if <unknown table>.wave
		  3	[  0]	JMP  	  2		1	; 	goto 5
		  4	[  0]	KSHORT	  1		1	; slot1 = 1
		  5	[  0]	KSHORT	  2		10	; slot2 = 10
		  6	[  0]	ISLT 	  2		1	; if slot2 < slot1
		  7	[  0]	JMP  	  1		2	; 	goto 10
		  8	[  0]	KPRI 	  1		1	; slot1 = false
		  9	[  0]	JMP  	  2		1	; 	goto 11
		 10	[  0]	KPRI 	  1		2	; slot1 = true
		 11	[  0]	RET1 	  1		2	; return slot1
	 58	[  0]	TSETS	  7	6	91	; slot6.appearanceCondition = slot7
	 59	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	 60	[  0]	TSETB	  4	3	10	; slot3[10] = slot4
	 61	[  0]	MOV  	  4		1	; slot4 = slot1
	 62	[  0]	TDUP 	  6		75	; slot6 = copy table#k75
	 63	[  0]	FNEW 	  7		74	; N/A:0-0: 1 args, 0 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	0	; slot1 = slot0.wave
		  2	[  0]	IST  	   		1	; if <unknown table>.wave
		  3	[  0]	JMP  	  2		1	; 	goto 5
		  4	[  0]	KSHORT	  1		1	; slot1 = 1
		  5	[  0]	KSHORT	  2		3	; slot2 = 3
		  6	[  0]	ISLE 	  2		1	; if slot2 <= slot1
		  7	[  0]	JMP  	  1		2	; 	goto 10
		  8	[  0]	KPRI 	  1		1	; slot1 = false
		  9	[  0]	JMP  	  2		1	; 	goto 11
		 10	[  0]	KPRI 	  1		2	; slot1 = true
		 11	[  0]	RET1 	  1		2	; return slot1
	 64	[  0]	TSETS	  7	6	91	; slot6.appearanceCondition = slot7
	 65	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	 66	[  0]	TSETB	  4	3	11	; slot3[11] = slot4
	 67	[  0]	MOV  	  4		1	; slot4 = slot1
	 68	[  0]	TDUP 	  6		73	; slot6 = copy table#k73
	 69	[  0]	CALL 	  4	0	2	; MULTRES = slot4(slot5)
	 70	[  0]	TSETM	  4		0	; for i = 0, MULTRES, 1 do slot3[0 + i] = slot(4 + i)
	 71	[  0]	TSETS	  3	2	71	; slot2.하 = slot3
	 72	[  0]	TNEW 	  3		12	; slot3 = new table( array: 12, dict: 1)
	 73	[  0]	MOV  	  4		1	; slot4 = slot1
	 74	[  0]	TDUP 	  6		70	; slot6 = copy table#k70
	 75	[  0]	FNEW 	  7		69	; N/A:0-0: 1 args, 0 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		15	; 	goto 18
		  3	[  0]	TGETS	  1	0	1	; slot1 = slot0.activeQuests
		  4	[  0]	ISF  	   		1	; if not <unknown table>.activeQuests
		  5	[  0]	JMP  	  2		12	; 	goto 18
		  6	[  0]	GGET 	  1		0	; slot1 = _env["pairs"]
		  7	[  0]	TGETS	  3	0	1	; slot3 = slot0.activeQuests
		  8	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = pairs(slot2)
		  9	[  0]	ISNEXT	  4		6	; Verify ITERN at 16; goto 16
		 10	[  0]	ISEQN	  5		0	; if slot5 == 2
		 11	[  0]	JMP  	  6		2	; 	goto 14
		 12	[  0]	ISNEN	  5		1	; if slot5 ~= 24
		 13	[  0]	JMP  	  6		2	; 	goto 16
		 14	[  0]	KPRI 	  6		1	; slot6 = false
		 15	[  0]	RET1 	  6		2	; return slot6
		 16	[  0]	ITERN	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, <unknown table>.activeQuests; slot4, slot5 = slot1(slot2, <unknown table>.activeQuests)
		 17	[  0]	ITERL	  4		-8	; <unknown table>.activeQuests = slot4; if slot4 != nil goto 10
		 18	[  0]	KPRI 	  1		2	; slot1 = true
		 19	[  0]	RET1 	  1		2	; return slot1
	 76	[  0]	TSETS	  7	6	91	; slot6.appearanceCondition = slot7
	 77	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	 78	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	 79	[  0]	MOV  	  4		1	; slot4 = slot1
	 80	[  0]	TDUP 	  6		68	; slot6 = copy table#k68
	 81	[  0]	FNEW 	  7		67	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  1		0	; slot1 = slot0; if not slot0
		  2	[  0]	JMP  	  1		9	; 	goto 12
		  3	[  0]	TGETS	  1	0	0	; slot1 = slot0.wave
		  4	[  0]	IST  	   		1	; if <unknown table>.wave
		  5	[  0]	JMP  	  2		1	; 	goto 7
		  6	[  0]	KSHORT	  1		1	; slot1 = 1
		  7	[  0]	ISEQN	  1		0	; if slot1 == 1
		  8	[  0]	JMP  	  1		2	; 	goto 11
		  9	[  0]	KPRI 	  1		1	; slot1 = false
		 10	[  0]	JMP  	  2		1	; 	goto 12
		 11	[  0]	KPRI 	  1		2	; slot1 = true
		 12	[  0]	RET1 	  1		2	; return slot1
	 82	[  0]	TSETS	  7	6	91	; slot6.appearanceCondition = slot7
	 83	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	 84	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	 85	[  0]	MOV  	  4		1	; slot4 = slot1
	 86	[  0]	TDUP 	  6		66	; slot6 = copy table#k66
	 87	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	 88	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	 89	[  0]	MOV  	  4		1	; slot4 = slot1
	 90	[  0]	TDUP 	  6		65	; slot6 = copy table#k65
	 91	[  0]	FNEW 	  7		64	; N/A:0-0: 1 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		2	; slot1 = _env["require"]
		  2	[  0]	KSTR 	  3		1	; slot3 = "src.ui.upgrade"
		  3	[  0]	CALL 	  1	2	2	; slot1 = require(slot2)
		  4	[  0]	TGETS	  2	1	0	; slot2 = slot1.getNudgeEnabled
		  5	[  0]	ISF  	   		2	; if not <unknown table>.getNudgeEnabled
		  6	[  0]	JMP  	  3		2	; 	goto 9
		  7	[  0]	TGETS	  2	1	0	; slot2 = slot1.getNudgeEnabled
		  8	[  0]	CALLT	  2		1	; return <unknown table>.getNudgeEnabled()
		  9	[  0]	KPRI 	  2		1	; slot2 = false
		 10	[  0]	RET1 	  2		2	; return slot2
	 92	[  0]	TSETS	  7	6	91	; slot6.appearanceCondition = slot7
	 93	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	 94	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	 95	[  0]	MOV  	  4		1	; slot4 = slot1
	 96	[  0]	TDUP 	  6		63	; slot6 = copy table#k63
	 97	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	 98	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	 99	[  0]	MOV  	  4		1	; slot4 = slot1
	100	[  0]	TDUP 	  6		62	; slot6 = copy table#k62
	101	[  0]	FNEW 	  7		61	; N/A:0-0: 1 args, 0 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	0	; slot1 = slot0.wave
		  2	[  0]	IST  	   		1	; if <unknown table>.wave
		  3	[  0]	JMP  	  2		1	; 	goto 5
		  4	[  0]	KSHORT	  1		1	; slot1 = 1
		  5	[  0]	KSHORT	  2		3	; slot2 = 3
		  6	[  0]	ISLT 	  2		1	; if slot2 < slot1
		  7	[  0]	JMP  	  1		2	; 	goto 10
		  8	[  0]	KPRI 	  1		1	; slot1 = false
		  9	[  0]	JMP  	  2		1	; 	goto 11
		 10	[  0]	KPRI 	  1		2	; slot1 = true
		 11	[  0]	RET1 	  1		2	; return slot1
	102	[  0]	TSETS	  7	6	91	; slot6.appearanceCondition = slot7
	103	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	104	[  0]	TSETB	  4	3	6	; slot3[6] = slot4
	105	[  0]	MOV  	  4		1	; slot4 = slot1
	106	[  0]	TDUP 	  6		60	; slot6 = copy table#k60
	107	[  0]	FNEW 	  7		59	; N/A:0-0: 1 args, 0 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	3	; slot1 = slot0.ui
		  2	[  0]	ISF  	   		1	; if not <unknown table>.ui
		  3	[  0]	JMP  	  2		18	; 	goto 22
		  4	[  0]	TGETS	  2	1	2	; slot2 = <unknown table>.ui._legacyPurchased
		  5	[  0]	ISF  	   		2	; if not <unknown table>.ui._legacyPurchased
		  6	[  0]	JMP  	  3		15	; 	goto 22
		  7	[  0]	GGET 	  2		1	; slot2 = _env["ipairs"]
		  8	[  0]	TGETS	  4	1	2	; slot4 = <unknown table>.ui._legacyPurchased
		  9	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
		 10	[  0]	JMP  	  5		9	; 	goto 20
		 11	[  0]	TGETS	  7	6	0	; slot7 = slot6.cooldownSec
		 12	[  0]	ISF  	   		7	; if not <unknown table>.cooldownSec
		 13	[  0]	JMP  	  8		6	; 	goto 20
		 14	[  0]	TGETS	  7	6	0	; slot7 = slot6.cooldownSec
		 15	[  0]	KSHORT	  8		0	; slot8 = 0
		 16	[  0]	ISGE 	  8		7	; if slot8 >= <unknown table>.cooldownSec
		 17	[  0]	JMP  	  7		2	; 	goto 20
		 18	[  0]	KPRI 	  7		2	; slot7 = true
		 19	[  0]	RET1 	  7		2	; return slot7
		 20	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, <unknown table>.ui._legacyPurchased; slot5, slot6 = slot2(slot3, <unknown table>.ui._legacyPurchased)
		 21	[  0]	ITERL	  5		-11	; <unknown table>.ui._legacyPurchased = slot5; if slot5 != nil goto 11
		 22	[  0]	KPRI 	  2		1	; slot2 = false
		 23	[  0]	RET1 	  2		2	; return slot2
	108	[  0]	TSETS	  7	6	91	; slot6.appearanceCondition = slot7
	109	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	110	[  0]	TSETB	  4	3	7	; slot3[7] = slot4
	111	[  0]	MOV  	  4		1	; slot4 = slot1
	112	[  0]	TDUP 	  6		58	; slot6 = copy table#k58
	113	[  0]	FNEW 	  7		57	; N/A:0-0: 1 args, 0 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	7	; slot1 = slot0.battlefield
		  2	[  0]	ISF  	   		1	; if not <unknown table>.battlefield
		  3	[  0]	JMP  	  2		42	; 	goto 46
		  4	[  0]	TGETS	  2	1	6	; slot2 = <unknown table>.battlefield.rosterUnits
		  5	[  0]	ISF  	   		2	; if not <unknown table>.battlefield.rosterUnits
		  6	[  0]	JMP  	  3		39	; 	goto 46
		  7	[  0]	GGET 	  2		5	; slot2 = _env["ipairs"]
		  8	[  0]	TGETS	  4	1	6	; slot4 = <unknown table>.battlefield.rosterUnits
		  9	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
		 10	[  0]	JMP  	  5		33	; 	goto 44
		 11	[  0]	TGETS	  7	6	4	; slot7 = slot6.role
		 12	[  0]	IST  	   		7	; if <unknown table>.role
		 13	[  0]	JMP  	  8		5	; 	goto 19
		 14	[  0]	TGETS	  7	6	3	; slot7 = slot6.base
		 15	[  0]	ISF  	   		7	; if not <unknown table>.base
		 16	[  0]	JMP  	  8		2	; 	goto 19
		 17	[  0]	TGETS	  7	6	3	; slot7 = slot6.base
		 18	[  0]	TGETS	  7	7	4	; slot7 = <unknown table>.base.role
		 19	[  0]	TGETS	  8	6	2	; slot8 = slot6.distance
		 20	[  0]	IST  	   		8	; if <unknown table>.distance
		 21	[  0]	JMP  	  9		8	; 	goto 30
		 22	[  0]	TGETS	  8	6	3	; slot8 = slot6.base
		 23	[  0]	ISF  	   		8	; if not <unknown table>.base
		 24	[  0]	JMP  	  9		4	; 	goto 29
		 25	[  0]	TGETS	  8	6	3	; slot8 = slot6.base
		 26	[  0]	TGETS	  8	8	2	; slot8 = <unknown table>.base.distance
		 27	[  0]	IST  	   		8	; if <unknown table>.base.distance
		 28	[  0]	JMP  	  9		1	; 	goto 30
		 29	[  0]	KSHORT	  8		0	; slot8 = 0
		 30	[  0]	ISEQS	  7		1	; if <unknown table>.base.role == "archer"
		 31	[  0]	JMP  	  9		7	; 	goto 39
		 32	[  0]	ISEQS	  7		0	; if <unknown table>.base.role == "mage"
		 33	[  0]	JMP  	  9		5	; 	goto 39
		 34	[  0]	KSHORT	  9		100	; slot9 = 100
		 35	[  0]	ISLE 	  9		8	; if slot9 <= slot8
		 36	[  0]	JMP  	  9		2	; 	goto 39
		 37	[  0]	KPRI 	  9		1	; slot9 = false
		 38	[  0]	JMP  	 10		1	; 	goto 40
		 39	[  0]	KPRI 	  9		2	; slot9 = true
		 40	[  0]	IST  	   		9	; if slot9
		 41	[  0]	JMP  	 10		2	; 	goto 44
		 42	[  0]	KPRI 	 10		2	; slot10 = true
		 43	[  0]	RET1 	 10		2	; return slot10
		 44	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, <unknown table>.battlefield.rosterUnits; slot5, slot6 = slot2(slot3, <unknown table>.battlefield.rosterUnits)
		 45	[  0]	ITERL	  5		-35	; <unknown table>.battlefield.rosterUnits = slot5; if slot5 != nil goto 11
		 46	[  0]	KPRI 	  2		1	; slot2 = false
		 47	[  0]	RET1 	  2		2	; return slot2
	114	[  0]	TSETS	  7	6	91	; slot6.appearanceCondition = slot7
	115	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	116	[  0]	TSETB	  4	3	8	; slot3[8] = slot4
	117	[  0]	MOV  	  4		1	; slot4 = slot1
	118	[  0]	TDUP 	  6		56	; slot6 = copy table#k56
	119	[  0]	FNEW 	  7		55	; N/A:0-0: 1 args, 0 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	0	; slot1 = slot0.wave
		  2	[  0]	IST  	   		1	; if <unknown table>.wave
		  3	[  0]	JMP  	  2		1	; 	goto 5
		  4	[  0]	KSHORT	  1		1	; slot1 = 1
		  5	[  0]	KSHORT	  2		5	; slot2 = 5
		  6	[  0]	ISLT 	  2		1	; if slot2 < slot1
		  7	[  0]	JMP  	  1		2	; 	goto 10
		  8	[  0]	KPRI 	  1		1	; slot1 = false
		  9	[  0]	JMP  	  2		1	; 	goto 11
		 10	[  0]	KPRI 	  1		2	; slot1 = true
		 11	[  0]	RET1 	  1		2	; return slot1
	120	[  0]	TSETS	  7	6	91	; slot6.appearanceCondition = slot7
	121	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	122	[  0]	TSETB	  4	3	9	; slot3[9] = slot4
	123	[  0]	MOV  	  4		1	; slot4 = slot1
	124	[  0]	TDUP 	  6		54	; slot6 = copy table#k54
	125	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	126	[  0]	TSETB	  4	3	10	; slot3[10] = slot4
	127	[  0]	MOV  	  4		1	; slot4 = slot1
	128	[  0]	TDUP 	  6		53	; slot6 = copy table#k53
	129	[  0]	FNEW 	  7		52	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  1		0	; slot1 = slot0; if not slot0
		  2	[  0]	JMP  	  1		9	; 	goto 12
		  3	[  0]	TGETS	  1	0	0	; slot1 = slot0.wave
		  4	[  0]	IST  	   		1	; if <unknown table>.wave
		  5	[  0]	JMP  	  2		1	; 	goto 7
		  6	[  0]	KSHORT	  1		1	; slot1 = 1
		  7	[  0]	ISEQN	  1		0	; if slot1 == 1
		  8	[  0]	JMP  	  1		2	; 	goto 11
		  9	[  0]	KPRI 	  1		1	; slot1 = false
		 10	[  0]	JMP  	  2		1	; 	goto 12
		 11	[  0]	KPRI 	  1		2	; slot1 = true
		 12	[  0]	RET1 	  1		2	; return slot1
	130	[  0]	TSETS	  7	6	91	; slot6.appearanceCondition = slot7
	131	[  0]	CALL 	  4	0	2	; MULTRES = slot4(slot5)
	132	[  0]	TSETM	  4		1	; for i = 0, MULTRES, 1 do slot3[1 + i] = slot(4 + i)
	133	[  0]	TSETS	  3	2	51	; slot2.중 = slot3
	134	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	135	[  0]	MOV  	  4		1	; slot4 = slot1
	136	[  0]	TDUP 	  6		50	; slot6 = copy table#k50
	137	[  0]	FNEW 	  7		49	; N/A:0-0: 1 args, 0 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		15	; 	goto 18
		  3	[  0]	TGETS	  1	0	1	; slot1 = slot0.activeQuests
		  4	[  0]	ISF  	   		1	; if not <unknown table>.activeQuests
		  5	[  0]	JMP  	  2		12	; 	goto 18
		  6	[  0]	GGET 	  1		0	; slot1 = _env["pairs"]
		  7	[  0]	TGETS	  3	0	1	; slot3 = slot0.activeQuests
		  8	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = pairs(slot2)
		  9	[  0]	ISNEXT	  4		6	; Verify ITERN at 16; goto 16
		 10	[  0]	ISEQN	  5		0	; if slot5 == 2
		 11	[  0]	JMP  	  6		2	; 	goto 14
		 12	[  0]	ISNEN	  5		1	; if slot5 ~= 13
		 13	[  0]	JMP  	  6		2	; 	goto 16
		 14	[  0]	KPRI 	  6		1	; slot6 = false
		 15	[  0]	RET1 	  6		2	; return slot6
		 16	[  0]	ITERN	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, <unknown table>.activeQuests; slot4, slot5 = slot1(slot2, <unknown table>.activeQuests)
		 17	[  0]	ITERL	  4		-8	; <unknown table>.activeQuests = slot4; if slot4 != nil goto 10
		 18	[  0]	KPRI 	  1		2	; slot1 = true
		 19	[  0]	RET1 	  1		2	; return slot1
	138	[  0]	TSETS	  7	6	91	; slot6.appearanceCondition = slot7
	139	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	140	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	141	[  0]	MOV  	  4		1	; slot4 = slot1
	142	[  0]	TDUP 	  6		48	; slot6 = copy table#k48
	143	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	144	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	145	[  0]	MOV  	  4		1	; slot4 = slot1
	146	[  0]	TDUP 	  6		47	; slot6 = copy table#k47
	147	[  0]	FNEW 	  7		46	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  1		0	; slot1 = slot0; if not slot0
		  2	[  0]	JMP  	  1		9	; 	goto 12
		  3	[  0]	TGETS	  1	0	0	; slot1 = slot0.wave
		  4	[  0]	IST  	   		1	; if <unknown table>.wave
		  5	[  0]	JMP  	  2		1	; 	goto 7
		  6	[  0]	KSHORT	  1		1	; slot1 = 1
		  7	[  0]	ISEQN	  1		0	; if slot1 == 1
		  8	[  0]	JMP  	  1		2	; 	goto 11
		  9	[  0]	KPRI 	  1		1	; slot1 = false
		 10	[  0]	JMP  	  2		1	; 	goto 12
		 11	[  0]	KPRI 	  1		2	; slot1 = true
		 12	[  0]	RET1 	  1		2	; return slot1
	148	[  0]	TSETS	  7	6	91	; slot6.appearanceCondition = slot7
	149	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	150	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	151	[  0]	MOV  	  4		1	; slot4 = slot1
	152	[  0]	TDUP 	  6		45	; slot6 = copy table#k45
	153	[  0]	FNEW 	  7		44	; N/A:0-0: 1 args, 0 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		7	; 	goto 10
		  3	[  0]	TGETS	  1	0	4	; slot1 = slot0.wave
		  4	[  0]	IST  	   		1	; if <unknown table>.wave
		  5	[  0]	JMP  	  2		1	; 	goto 7
		  6	[  0]	KSHORT	  1		1	; slot1 = 1
		  7	[  0]	KSHORT	  2		15	; slot2 = 15
		  8	[  0]	ISGE 	  2		1	; if slot2 >= slot1
		  9	[  0]	JMP  	  1		2	; 	goto 12
		 10	[  0]	KPRI 	  1		1	; slot1 = false
		 11	[  0]	RET1 	  1		2	; return slot1
		 12	[  0]	TGETS	  1	0	3	; slot1 = slot0.battlefield
		 13	[  0]	ISF  	   		1	; if not <unknown table>.battlefield
		 14	[  0]	JMP  	  2		18	; 	goto 33
		 15	[  0]	TGETS	  2	1	2	; slot2 = <unknown table>.battlefield.rosterUnits
		 16	[  0]	ISF  	   		2	; if not <unknown table>.battlefield.rosterUnits
		 17	[  0]	JMP  	  3		15	; 	goto 33
		 18	[  0]	GGET 	  2		1	; slot2 = _env["ipairs"]
		 19	[  0]	TGETS	  4	1	2	; slot4 = <unknown table>.battlefield.rosterUnits
		 20	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
		 21	[  0]	JMP  	  5		9	; 	goto 31
		 22	[  0]	TGETS	  7	6	0	; slot7 = slot6.rank
		 23	[  0]	IST  	   		7	; if <unknown table>.rank
		 24	[  0]	JMP  	  8		1	; 	goto 26
		 25	[  0]	KSHORT	  7		1	; slot7 = 1
		 26	[  0]	KSHORT	  8		4	; slot8 = 4
		 27	[  0]	ISGT 	  8		7	; if slot8 > slot7
		 28	[  0]	JMP  	  7		2	; 	goto 31
		 29	[  0]	KPRI 	  7		2	; slot7 = true
		 30	[  0]	RET1 	  7		2	; return slot7
		 31	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, <unknown table>.battlefield.rosterUnits; slot5, slot6 = slot2(slot3, <unknown table>.battlefield.rosterUnits)
		 32	[  0]	ITERL	  5		-11	; <unknown table>.battlefield.rosterUnits = slot5; if slot5 != nil goto 22
		 33	[  0]	KPRI 	  2		1	; slot2 = false
		 34	[  0]	RET1 	  2		2	; return slot2
	154	[  0]	TSETS	  7	6	91	; slot6.appearanceCondition = slot7
	155	[  0]	CALL 	  4	2	2	; slot4 = slot4(slot5)
	156	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	157	[  0]	MOV  	  4		1	; slot4 = slot1
	158	[  0]	TDUP 	  6		43	; slot6 = copy table#k43
	159	[  0]	FNEW 	  7		42	; N/A:0-0: 1 args, 0 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	0	; slot1 = slot0.wave
		  2	[  0]	IST  	   		1	; if <unknown table>.wave
		  3	[  0]	JMP  	  2		1	; 	goto 5
		  4	[  0]	KSHORT	  1		1	; slot1 = 1
		  5	[  0]	KSHORT	  2		5	; slot2 = 5
		  6	[  0]	ISLT 	  2		1	; if slot2 < slot1
		  7	[  0]	JMP  	  1		2	; 	goto 10
		  8	[  0]	KPRI 	  1		1	; slot1 = false
		  9	[  0]	JMP  	  2		1	; 	goto 11
		 10	[  0]	KPRI 	  1		2	; slot1 = true
		 11	[  0]	RET1 	  1		2	; return slot1
	160	[  0]	TSETS	  7	6	91	; slot6.appearanceCondition = slot7
	161	[  0]	CALL 	  4	0	2	; MULTRES = slot4(slot5)
	162	[  0]	TSETM	  4		2	; for i = 0, MULTRES, 1 do slot3[2 + i] = slot(4 + i)
	163	[  0]	TSETS	  3	2	41	; slot2.상 = slot3
	164	[  0]	TSETS	  2	0	95	; slot0.byDifficulty = slot2
	165	[  0]	TGETS	  2	0	95	; slot2 = slot0.byDifficulty
	166	[  0]	TGETS	  2	2	71	; slot2 = <unknown table>.byDifficulty.하
	167	[  0]	TGETB	  2	2	1	; slot2 = <unknown table>.byDifficulty.하[1]
	168	[  0]	TSETS	  2	0	40	; slot0.roundSpinQuest = slot2
	169	[  0]	FNEW 	  2		38	; N/A:0-0: 0 args, 1 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		5	; slot0 = _env["pairs"]
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	TGETS	  2	2	4	; slot2 = uv0"unknown".byDifficulty
		  4	[  0]	CALL 	  0	4	2	; slot0, slot1, slot2 = pairs(slot1)
		  5	[  0]	ISNEXT	  3		12	; Verify ITERN at 18; goto 18
		  6	[  0]	GGET 	  5		3	; slot5 = _env["ipairs"]
		  7	[  0]	MOV  	  7		4	; slot7 = slot4
		  8	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		  9	[  0]	JMP  	  8		6	; 	goto 16
		 10	[  0]	TGETS	 10	9	2	; slot10 = slot9.objectiveType
		 11	[  0]	ISNES	 10		1	; if <unknown table>.objectiveType ~= "round_spin_count"
		 12	[  0]	JMP  	 10		3	; 	goto 16
		 13	[  0]	MOV  	 12		9	; slot12 = slot9
		 14	[  0]	TGETS	 10	9	0	; slot10 = slot9.resetRoundProgress
		 15	[  0]	CALL 	 10	1	2	;  = <unknown table>.resetRoundProgress(slot11)
		 16	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		 17	[  0]	ITERL	  8		-8	; slot7 = slot8; if slot8 != nil goto 10
		 18	[  0]	ITERN	  3	3	3	; slot3, slot4, slot5 = slot0, slot1, slot2; slot3, slot4 = slot0(slot1, slot2)
		 19	[  0]	ITERL	  3		-14	; slot2 = slot3; if slot3 != nil goto 6
		 20	[  0]	RET0 	  0		1	; return
	170	[  0]	TSETS	  2	0	39	; slot0.onRoundStart = slot2
	171	[  0]	FNEW 	  2		36	; N/A:0-0: 0 args, 1 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		3	; slot0 = _env["pairs"]
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	TGETS	  2	2	2	; slot2 = uv0"unknown".byDifficulty
		  4	[  0]	CALL 	  0	4	2	; slot0, slot1, slot2 = pairs(slot1)
		  5	[  0]	ISNEXT	  3		9	; Verify ITERN at 15; goto 15
		  6	[  0]	GGET 	  5		1	; slot5 = _env["ipairs"]
		  7	[  0]	MOV  	  7		4	; slot7 = slot4
		  8	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		  9	[  0]	JMP  	  8		3	; 	goto 13
		 10	[  0]	MOV  	 12		9	; slot12 = slot9
		 11	[  0]	TGETS	 10	9	0	; slot10 = slot9.resetRoundProgress
		 12	[  0]	CALL 	 10	1	2	;  = <unknown table>.resetRoundProgress(slot11)
		 13	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		 14	[  0]	ITERL	  8		-5	; slot7 = slot8; if slot8 != nil goto 10
		 15	[  0]	ITERN	  3	3	3	; slot3, slot4, slot5 = slot0, slot1, slot2; slot3, slot4 = slot0(slot1, slot2)
		 16	[  0]	ITERL	  3		-11	; slot2 = slot3; if slot3 != nil goto 6
		 17	[  0]	RET0 	  0		1	; return
	172	[  0]	TSETS	  2	0	37	; slot0.resetAllProgress = slot2
	173	[  0]	FNEW 	  2		34	; N/A:0-0: 0 args, 1 upvalues, 19 slots
		
		;;;; constant tables ;;;;
		ktable#1 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
		  2	[  0]	GGET 	  1		9	; slot1 = _env["pairs"]
		  3	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  4	[  0]	TGETS	  3	3	8	; slot3 = uv0"unknown".byDifficulty
		  5	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = pairs(slot2)
		  6	[  0]	ISNEXT	  4		33	; Verify ITERN at 40; goto 40
		  7	[  0]	GGET 	  6		7	; slot6 = _env["ipairs"]
		  8	[  0]	MOV  	  8		5	; slot8 = slot5
		  9	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		 10	[  0]	JMP  	  9		27	; 	goto 38
		 11	[  0]	TGETS	 11	10	6	; slot11 = slot10.id
		 12	[  0]	ISF  	   		11	; if not <unknown table>.id
		 13	[  0]	JMP  	 12		24	; 	goto 38
		 14	[  0]	TGETS	 11	10	6	; slot11 = slot10.id
		 15	[  0]	TDUP 	 12		1	; slot12 = copy table#k1
		 16	[  0]	GGET 	 13		5	; slot13 = _env["math"]
		 17	[  0]	TGETS	 13	13	4	; slot13 = math.max
		 18	[  0]	KSHORT	 15		0	; slot15 = 0
		 19	[  0]	GGET 	 16		3	; slot16 = _env["tonumber"]
		 20	[  0]	TGETS	 18	10	2	; slot18 = slot10.current
		 21	[  0]	IST  	   		18	; if <unknown table>.current
		 22	[  0]	JMP  	 19		1	; 	goto 24
		 23	[  0]	KSHORT	 18		0	; slot18 = 0
		 24	[  0]	CALL 	 16	2	2	; slot16 = tonumber(slot17)
		 25	[  0]	IST  	   		16	; if tonumber
		 26	[  0]	JMP  	 17		1	; 	goto 28
		 27	[  0]	KSHORT	 16		0	; slot16 = 0
		 28	[  0]	CALL 	 13	2	3	; slot13 = math.max(slot14, slot15)
		 29	[  0]	TSETS	 13	12	2	; slot12.current = math.max
		 30	[  0]	TGETS	 13	10	0	; slot13 = slot10.completed
		 31	[  0]	ISEQP	 13		2	; if <unknown table>.completed == true
		 32	[  0]	JMP  	 13		2	; 	goto 35
		 33	[  0]	KPRI 	 13		1	; slot13 = false
		 34	[  0]	JMP  	 14		1	; 	goto 36
		 35	[  0]	KPRI 	 13		2	; slot13 = true
		 36	[  0]	TSETS	 13	12	0	; slot12.completed = slot13
		 37	[  0]	TSETV	 12	0	11	; slot0[<unknown table>.id] = slot12
		 38	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, slot8; slot9, slot10 = ipairs(slot7, slot8)
		 39	[  0]	ITERL	  9		-29	; slot8 = slot9; if slot9 != nil goto 11
		 40	[  0]	ITERN	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, uv0"unknown".byDifficulty; slot4, slot5 = slot1(slot2, uv0"unknown".byDifficulty)
		 41	[  0]	ITERL	  4		-35	; uv0"unknown".byDifficulty = slot4; if slot4 != nil goto 7
		 42	[  0]	RET1 	  0		2	; return slot0
	174	[  0]	TSETS	  2	0	35	; slot0.exportState = slot2
	175	[  0]	FNEW 	  2		32	; N/A:0-0: 1 args, 1 upvalues, 21 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	14	; slot1 = uv0"unknown".resetAllProgress
		  3	[  0]	CALL 	  1	1	1	;  = uv0"unknown".resetAllProgress()
		  4	[  0]	GGET 	  1		13	; slot1 = _env["type"]
		  5	[  0]	MOV  	  3		0	; slot3 = slot0
		  6	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  7	[  0]	ISEQS	  1		12	; if slot1 == "table"
		  8	[  0]	JMP  	  1		2	; 	goto 11
		  9	[  0]	KPRI 	  1		1	; slot1 = false
		 10	[  0]	RET1 	  1		2	; return slot1
		 11	[  0]	GGET 	  1		11	; slot1 = _env["pairs"]
		 12	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 13	[  0]	TGETS	  3	3	10	; slot3 = uv0"unknown".byDifficulty
		 14	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = pairs(slot2)
		 15	[  0]	ISNEXT	  4		56	; Verify ITERN at 72; goto 72
		 16	[  0]	GGET 	  6		9	; slot6 = _env["ipairs"]
		 17	[  0]	MOV  	  8		5	; slot8 = slot5
		 18	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		 19	[  0]	JMP  	  9		50	; 	goto 70
		 20	[  0]	TGETS	 11	10	8	; slot11 = slot10.id
		 21	[  0]	ISF  	   		11	; if not <unknown table>.id
		 22	[  0]	JMP  	 12		4	; 	goto 27
		 23	[  0]	TGETS	 11	10	8	; slot11 = slot10.id
		 24	[  0]	TGETV	 11	0	11	; slot11 = slot0[<unknown table>.id]
		 25	[  0]	IST  	   		11	; if slot11
		 26	[  0]	JMP  	 12		1	; 	goto 28
		 27	[  0]	KPRI 	 11		0	; slot11 = nil
		 28	[  0]	GGET 	 12		13	; slot12 = _env["type"]
		 29	[  0]	MOV  	 14		11	; slot14 = slot11
		 30	[  0]	CALL 	 12	2	2	; slot12 = type(slot13)
		 31	[  0]	ISNES	 12		12	; if type ~= "table"
		 32	[  0]	JMP  	 12		37	; 	goto 70
		 33	[  0]	GGET 	 12		6	; slot12 = _env["math"]
		 34	[  0]	TGETS	 12	12	5	; slot12 = math.max
		 35	[  0]	KSHORT	 14		0	; slot14 = 0
		 36	[  0]	GGET 	 15		6	; slot15 = _env["math"]
		 37	[  0]	TGETS	 15	15	4	; slot15 = math.min
		 38	[  0]	TGETS	 17	10	3	; slot17 = slot10.target
		 39	[  0]	IST  	   		17	; if <unknown table>.target
		 40	[  0]	JMP  	 18		2	; 	goto 43
		 41	[  0]	GGET 	 17		6	; slot17 = _env["math"]
		 42	[  0]	TGETS	 17	17	2	; slot17 = math.huge
		 43	[  0]	GGET 	 18		1	; slot18 = _env["tonumber"]
		 44	[  0]	TGETS	 20	11	7	; slot20 = slot11.current
		 45	[  0]	IST  	   		20	; if <unknown table>.current
		 46	[  0]	JMP  	 21		1	; 	goto 48
		 47	[  0]	KSHORT	 20		0	; slot20 = 0
		 48	[  0]	CALL 	 18	2	2	; slot18 = tonumber(slot19)
		 49	[  0]	IST  	   		18	; if tonumber
		 50	[  0]	JMP  	 19		1	; 	goto 52
		 51	[  0]	KSHORT	 18		0	; slot18 = 0
		 52	[  0]	CALL 	 15	0	3	; MULTRES = math.min(slot16, math.huge)
		 53	[  0]	CALLM	 12	2	1	; slot12 = math.max(slot13, ...MULTRES)
		 54	[  0]	TSETS	 12	10	7	; slot10.current = math.max
		 55	[  0]	TGETS	 12	11	0	; slot12 = slot11.completed
		 56	[  0]	ISEQP	 12		2	; if <unknown table>.completed == true
		 57	[  0]	JMP  	 12		10	; 	goto 68
		 58	[  0]	TGETS	 12	10	7	; slot12 = slot10.current
		 59	[  0]	TGETS	 13	10	3	; slot13 = slot10.target
		 60	[  0]	IST  	   		13	; if <unknown table>.target
		 61	[  0]	JMP  	 14		2	; 	goto 64
		 62	[  0]	GGET 	 13		6	; slot13 = _env["math"]
		 63	[  0]	TGETS	 13	13	2	; slot13 = math.huge
		 64	[  0]	ISLE 	 13		12	; if math.huge <= <unknown table>.current
		 65	[  0]	JMP  	 12		2	; 	goto 68
		 66	[  0]	KPRI 	 12		1	; slot12 = false
		 67	[  0]	JMP  	 13		1	; 	goto 69
		 68	[  0]	KPRI 	 12		2	; slot12 = true
		 69	[  0]	TSETS	 12	10	0	; slot10.completed = slot12
		 70	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, slot8; slot9, slot10 = ipairs(slot7, slot8)
		 71	[  0]	ITERL	  9		-52	; slot8 = slot9; if slot9 != nil goto 20
		 72	[  0]	ITERN	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, uv0"unknown".byDifficulty; slot4, slot5 = slot1(slot2, uv0"unknown".byDifficulty)
		 73	[  0]	ITERL	  4		-58	; uv0"unknown".byDifficulty = slot4; if slot4 != nil goto 16
		 74	[  0]	KPRI 	  1		2	; slot1 = true
		 75	[  0]	RET1 	  1		2	; return slot1
	176	[  0]	TSETS	  2	0	33	; slot0.importState = slot2
	177	[  0]	FNEW 	  2		30	; N/A:0-0: 1 args, 1 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISTC 	  1		0	; slot1 = slot0; if slot0
		  2	[  0]	JMP  	  1		1	; 	goto 4
		  3	[  0]	KSHORT	  1		1	; slot1 = 1
		  4	[  0]	GGET 	  2		6	; slot2 = _env["pairs"]
		  5	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  6	[  0]	TGETS	  4	4	5	; slot4 = uv0"unknown".byDifficulty
		  7	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = pairs(slot3)
		  8	[  0]	ISNEXT	  5		16	; Verify ITERN at 25; goto 25
		  9	[  0]	GGET 	  7		4	; slot7 = _env["ipairs"]
		 10	[  0]	MOV  	  9		6	; slot9 = slot6
		 11	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = ipairs(slot8)
		 12	[  0]	JMP  	 10		10	; 	goto 23
		 13	[  0]	TGETS	 12	11	3	; slot12 = slot11.objectiveType
		 14	[  0]	ISEQS	 12		2	; if <unknown table>.objectiveType == "round_spin_count"
		 15	[  0]	JMP  	 12		3	; 	goto 19
		 16	[  0]	TGETS	 12	11	3	; slot12 = slot11.objectiveType
		 17	[  0]	ISNES	 12		1	; if <unknown table>.objectiveType ~= "total_spin_count"
		 18	[  0]	JMP  	 12		4	; 	goto 23
		 19	[  0]	MOV  	 14		11	; slot14 = slot11
		 20	[  0]	TGETS	 12	11	0	; slot12 = slot11.addProgress
		 21	[  0]	MOV  	 15		1	; slot15 = slot1
		 22	[  0]	CALL 	 12	1	3	;  = <unknown table>.addProgress(slot13, slot14)
		 23	[  0]	ITERC	 10	3	3	; slot10, slot11, slot12 = ipairs, slot8, slot9; slot10, slot11 = ipairs(slot8, slot9)
		 24	[  0]	ITERL	 10		-12	; slot9 = slot10; if slot10 != nil goto 13
		 25	[  0]	ITERN	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, uv0"unknown".byDifficulty; slot5, slot6 = slot2(slot3, uv0"unknown".byDifficulty)
		 26	[  0]	ITERL	  5		-18	; uv0"unknown".byDifficulty = slot5; if slot5 != nil goto 9
		 27	[  0]	RET0 	  0		1	; return
	178	[  0]	TSETS	  2	0	31	; slot0.onSpinUsed = slot2
	179	[  0]	FNEW 	  2		28	; N/A:0-0: 1 args, 1 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		5	; slot1 = _env["pairs"]
		  2	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  3	[  0]	TGETS	  3	3	4	; slot3 = uv0"unknown".byDifficulty
		  4	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = pairs(slot2)
		  5	[  0]	ISNEXT	  4		13	; Verify ITERN at 19; goto 19
		  6	[  0]	GGET 	  6		3	; slot6 = _env["ipairs"]
		  7	[  0]	MOV  	  8		5	; slot8 = slot5
		  8	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		  9	[  0]	JMP  	  9		7	; 	goto 17
		 10	[  0]	TGETS	 11	10	2	; slot11 = slot10.objectiveType
		 11	[  0]	ISNES	 11		1	; if <unknown table>.objectiveType ~= "essence_count"
		 12	[  0]	JMP  	 11		4	; 	goto 17
		 13	[  0]	MOV  	 13		10	; slot13 = slot10
		 14	[  0]	TGETS	 11	10	0	; slot11 = slot10.setProgress
		 15	[  0]	MOV  	 14		0	; slot14 = slot0
		 16	[  0]	CALL 	 11	1	3	;  = <unknown table>.setProgress(slot12, slot13)
		 17	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, slot8; slot9, slot10 = ipairs(slot7, slot8)
		 18	[  0]	ITERL	  9		-9	; slot8 = slot9; if slot9 != nil goto 10
		 19	[  0]	ITERN	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, uv0"unknown".byDifficulty; slot4, slot5 = slot1(slot2, uv0"unknown".byDifficulty)
		 20	[  0]	ITERL	  4		-15	; uv0"unknown".byDifficulty = slot4; if slot4 != nil goto 6
		 21	[  0]	RET0 	  0		1	; return
	180	[  0]	TSETS	  2	0	29	; slot0.onEssenceChange = slot2
	181	[  0]	FNEW 	  2		26	; N/A:0-0: 1 args, 1 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		5	; slot1 = _env["pairs"]
		  2	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  3	[  0]	TGETS	  3	3	4	; slot3 = uv0"unknown".byDifficulty
		  4	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = pairs(slot2)
		  5	[  0]	ISNEXT	  4		13	; Verify ITERN at 19; goto 19
		  6	[  0]	GGET 	  6		3	; slot6 = _env["ipairs"]
		  7	[  0]	MOV  	  8		5	; slot8 = slot5
		  8	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		  9	[  0]	JMP  	  9		7	; 	goto 17
		 10	[  0]	TGETS	 11	10	2	; slot11 = slot10.objectiveType
		 11	[  0]	ISNES	 11		1	; if <unknown table>.objectiveType ~= "same_unit_count"
		 12	[  0]	JMP  	 11		4	; 	goto 17
		 13	[  0]	MOV  	 13		10	; slot13 = slot10
		 14	[  0]	TGETS	 11	10	0	; slot11 = slot10.setProgress
		 15	[  0]	MOV  	 14		0	; slot14 = slot0
		 16	[  0]	CALL 	 11	1	3	;  = <unknown table>.setProgress(slot12, slot13)
		 17	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, slot8; slot9, slot10 = ipairs(slot7, slot8)
		 18	[  0]	ITERL	  9		-9	; slot8 = slot9; if slot9 != nil goto 10
		 19	[  0]	ITERN	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, uv0"unknown".byDifficulty; slot4, slot5 = slot1(slot2, uv0"unknown".byDifficulty)
		 20	[  0]	ITERL	  4		-15	; uv0"unknown".byDifficulty = slot4; if slot4 != nil goto 6
		 21	[  0]	RET0 	  0		1	; return
	182	[  0]	TSETS	  2	0	27	; slot0.onUnitsChange = slot2
	183	[  0]	FNEW 	  2		24	; N/A:0-0: 1 args, 1 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		5	; slot1 = _env["pairs"]
		  2	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  3	[  0]	TGETS	  3	3	4	; slot3 = uv0"unknown".byDifficulty
		  4	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = pairs(slot2)
		  5	[  0]	ISNEXT	  4		13	; Verify ITERN at 19; goto 19
		  6	[  0]	GGET 	  6		3	; slot6 = _env["ipairs"]
		  7	[  0]	MOV  	  8		5	; slot8 = slot5
		  8	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		  9	[  0]	JMP  	  9		7	; 	goto 17
		 10	[  0]	TGETS	 11	10	2	; slot11 = slot10.objectiveType
		 11	[  0]	ISNES	 11		1	; if <unknown table>.objectiveType ~= "unique_unit_count"
		 12	[  0]	JMP  	 11		4	; 	goto 17
		 13	[  0]	MOV  	 13		10	; slot13 = slot10
		 14	[  0]	TGETS	 11	10	0	; slot11 = slot10.setProgress
		 15	[  0]	MOV  	 14		0	; slot14 = slot0
		 16	[  0]	CALL 	 11	1	3	;  = <unknown table>.setProgress(slot12, slot13)
		 17	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, slot8; slot9, slot10 = ipairs(slot7, slot8)
		 18	[  0]	ITERL	  9		-9	; slot8 = slot9; if slot9 != nil goto 10
		 19	[  0]	ITERN	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, uv0"unknown".byDifficulty; slot4, slot5 = slot1(slot2, uv0"unknown".byDifficulty)
		 20	[  0]	ITERL	  4		-15	; uv0"unknown".byDifficulty = slot4; if slot4 != nil goto 6
		 21	[  0]	RET0 	  0		1	; return
	184	[  0]	TSETS	  2	0	25	; slot0.onUniqueUnitsChange = slot2
	185	[  0]	FNEW 	  2		22	; N/A:0-0: 0 args, 1 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		5	; slot0 = _env["pairs"]
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	TGETS	  2	2	4	; slot2 = uv0"unknown".byDifficulty
		  4	[  0]	CALL 	  0	4	2	; slot0, slot1, slot2 = pairs(slot1)
		  5	[  0]	ISNEXT	  3		13	; Verify ITERN at 19; goto 19
		  6	[  0]	GGET 	  5		3	; slot5 = _env["ipairs"]
		  7	[  0]	MOV  	  7		4	; slot7 = slot4
		  8	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		  9	[  0]	JMP  	  8		7	; 	goto 17
		 10	[  0]	TGETS	 10	9	2	; slot10 = slot9.objectiveType
		 11	[  0]	ISNES	 10		1	; if <unknown table>.objectiveType ~= "no_nudge_waves"
		 12	[  0]	JMP  	 10		4	; 	goto 17
		 13	[  0]	MOV  	 12		9	; slot12 = slot9
		 14	[  0]	TGETS	 10	9	0	; slot10 = slot9.setProgress
		 15	[  0]	KSHORT	 13		0	; slot13 = 0
		 16	[  0]	CALL 	 10	1	3	;  = <unknown table>.setProgress(slot11, slot12)
		 17	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		 18	[  0]	ITERL	  8		-9	; slot7 = slot8; if slot8 != nil goto 10
		 19	[  0]	ITERN	  3	3	3	; slot3, slot4, slot5 = slot0, slot1, slot2; slot3, slot4 = slot0(slot1, slot2)
		 20	[  0]	ITERL	  3		-15	; slot2 = slot3; if slot3 != nil goto 6
		 21	[  0]	RET0 	  0		1	; return
	186	[  0]	TSETS	  2	0	23	; slot0.onNudgeUsed = slot2
	187	[  0]	FNEW 	  2		20	; N/A:0-0: 0 args, 1 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		5	; slot0 = _env["pairs"]
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	TGETS	  2	2	4	; slot2 = uv0"unknown".byDifficulty
		  4	[  0]	CALL 	  0	4	2	; slot0, slot1, slot2 = pairs(slot1)
		  5	[  0]	ISNEXT	  3		13	; Verify ITERN at 19; goto 19
		  6	[  0]	GGET 	  5		3	; slot5 = _env["ipairs"]
		  7	[  0]	MOV  	  7		4	; slot7 = slot4
		  8	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		  9	[  0]	JMP  	  8		7	; 	goto 17
		 10	[  0]	TGETS	 10	9	2	; slot10 = slot9.objectiveType
		 11	[  0]	ISNES	 10		1	; if <unknown table>.objectiveType ~= "no_shop_waves"
		 12	[  0]	JMP  	 10		4	; 	goto 17
		 13	[  0]	MOV  	 12		9	; slot12 = slot9
		 14	[  0]	TGETS	 10	9	0	; slot10 = slot9.setProgress
		 15	[  0]	KSHORT	 13		0	; slot13 = 0
		 16	[  0]	CALL 	 10	1	3	;  = <unknown table>.setProgress(slot11, slot12)
		 17	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		 18	[  0]	ITERL	  8		-9	; slot7 = slot8; if slot8 != nil goto 10
		 19	[  0]	ITERN	  3	3	3	; slot3, slot4, slot5 = slot0, slot1, slot2; slot3, slot4 = slot0(slot1, slot2)
		 20	[  0]	ITERL	  3		-15	; slot2 = slot3; if slot3 != nil goto 6
		 21	[  0]	RET0 	  0		1	; return
	188	[  0]	TSETS	  2	0	21	; slot0.onShopUsed = slot2
	189	[  0]	FNEW 	  2		18	; N/A:0-0: 0 args, 1 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		5	; slot0 = _env["pairs"]
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	TGETS	  2	2	4	; slot2 = uv0"unknown".byDifficulty
		  4	[  0]	CALL 	  0	4	2	; slot0, slot1, slot2 = pairs(slot1)
		  5	[  0]	ISNEXT	  3		13	; Verify ITERN at 19; goto 19
		  6	[  0]	GGET 	  5		3	; slot5 = _env["ipairs"]
		  7	[  0]	MOV  	  7		4	; slot7 = slot4
		  8	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		  9	[  0]	JMP  	  8		7	; 	goto 17
		 10	[  0]	TGETS	 10	9	2	; slot10 = slot9.objectiveType
		 11	[  0]	ISNES	 10		1	; if <unknown table>.objectiveType ~= "no_item_waves"
		 12	[  0]	JMP  	 10		4	; 	goto 17
		 13	[  0]	MOV  	 12		9	; slot12 = slot9
		 14	[  0]	TGETS	 10	9	0	; slot10 = slot9.setProgress
		 15	[  0]	KSHORT	 13		0	; slot13 = 0
		 16	[  0]	CALL 	 10	1	3	;  = <unknown table>.setProgress(slot11, slot12)
		 17	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		 18	[  0]	ITERL	  8		-9	; slot7 = slot8; if slot8 != nil goto 10
		 19	[  0]	ITERN	  3	3	3	; slot3, slot4, slot5 = slot0, slot1, slot2; slot3, slot4 = slot0(slot1, slot2)
		 20	[  0]	ITERL	  3		-15	; slot2 = slot3; if slot3 != nil goto 6
		 21	[  0]	RET0 	  0		1	; return
	190	[  0]	TSETS	  2	0	19	; slot0.onItemUsed = slot2
	191	[  0]	FNEW 	  2		16	; N/A:0-0: 0 args, 1 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		5	; slot0 = _env["pairs"]
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	TGETS	  2	2	4	; slot2 = uv0"unknown".byDifficulty
		  4	[  0]	CALL 	  0	4	2	; slot0, slot1, slot2 = pairs(slot1)
		  5	[  0]	ISNEXT	  3		13	; Verify ITERN at 19; goto 19
		  6	[  0]	GGET 	  5		3	; slot5 = _env["ipairs"]
		  7	[  0]	MOV  	  7		4	; slot7 = slot4
		  8	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		  9	[  0]	JMP  	  8		7	; 	goto 17
		 10	[  0]	TGETS	 10	9	2	; slot10 = slot9.objectiveType
		 11	[  0]	ISNES	 10		1	; if <unknown table>.objectiveType ~= "clutch_win"
		 12	[  0]	JMP  	 10		4	; 	goto 17
		 13	[  0]	MOV  	 12		9	; slot12 = slot9
		 14	[  0]	TGETS	 10	9	0	; slot10 = slot9.setProgress
		 15	[  0]	KSHORT	 13		1	; slot13 = 1
		 16	[  0]	CALL 	 10	1	3	;  = <unknown table>.setProgress(slot11, slot12)
		 17	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		 18	[  0]	ITERL	  8		-9	; slot7 = slot8; if slot8 != nil goto 10
		 19	[  0]	ITERN	  3	3	3	; slot3, slot4, slot5 = slot0, slot1, slot2; slot3, slot4 = slot0(slot1, slot2)
		 20	[  0]	ITERL	  3		-15	; slot2 = slot3; if slot3 != nil goto 6
		 21	[  0]	RET0 	  0		1	; return
	192	[  0]	TSETS	  2	0	17	; slot0.onClutchWin = slot2
	193	[  0]	FNEW 	  2		14	; N/A:0-0: 2 args, 1 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		5	; slot2 = _env["pairs"]
		  2	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  3	[  0]	TGETS	  4	4	4	; slot4 = uv0"unknown".byDifficulty
		  4	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = pairs(slot3)
		  5	[  0]	ISNEXT	  5		22	; Verify ITERN at 28; goto 28
		  6	[  0]	GGET 	  7		3	; slot7 = _env["ipairs"]
		  7	[  0]	MOV  	  9		6	; slot9 = slot6
		  8	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = ipairs(slot8)
		  9	[  0]	JMP  	 10		16	; 	goto 26
		 10	[  0]	TGETS	 12	11	2	; slot12 = slot11.objectiveType
		 11	[  0]	ISNES	 12		1	; if <unknown table>.objectiveType ~= "ranged_units_only"
		 12	[  0]	JMP  	 12		13	; 	goto 26
		 13	[  0]	ISF  	   		1	; if not slot1
		 14	[  0]	JMP  	 12		7	; 	goto 22
		 15	[  0]	IST  	   		0	; if slot0
		 16	[  0]	JMP  	 12		5	; 	goto 22
		 17	[  0]	MOV  	 14		11	; slot14 = slot11
		 18	[  0]	TGETS	 12	11	0	; slot12 = slot11.setProgress
		 19	[  0]	KSHORT	 15		1	; slot15 = 1
		 20	[  0]	CALL 	 12	1	3	;  = <unknown table>.setProgress(slot13, slot14)
		 21	[  0]	JMP  	 12		4	; 	goto 26
		 22	[  0]	MOV  	 14		11	; slot14 = slot11
		 23	[  0]	TGETS	 12	11	0	; slot12 = slot11.setProgress
		 24	[  0]	KSHORT	 15		0	; slot15 = 0
		 25	[  0]	CALL 	 12	1	3	;  = <unknown table>.setProgress(slot13, slot14)
		 26	[  0]	ITERC	 10	3	3	; slot10, slot11, slot12 = ipairs, slot8, slot9; slot10, slot11 = ipairs(slot8, slot9)
		 27	[  0]	ITERL	 10		-18	; slot9 = slot10; if slot10 != nil goto 10
		 28	[  0]	ITERN	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, uv0"unknown".byDifficulty; slot5, slot6 = slot2(slot3, uv0"unknown".byDifficulty)
		 29	[  0]	ITERL	  5		-24	; uv0"unknown".byDifficulty = slot5; if slot5 != nil goto 6
		 30	[  0]	RET0 	  0		1	; return
	194	[  0]	TSETS	  2	0	15	; slot0.onRosterCompositionChange = slot2
	195	[  0]	FNEW 	  2		12	; N/A:0-0: 0 args, 1 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		7	; slot0 = _env["pairs"]
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	TGETS	  2	2	6	; slot2 = uv0"unknown".byDifficulty
		  4	[  0]	CALL 	  0	4	2	; slot0, slot1, slot2 = pairs(slot1)
		  5	[  0]	ISNEXT	  3		21	; Verify ITERN at 27; goto 27
		  6	[  0]	GGET 	  5		5	; slot5 = _env["ipairs"]
		  7	[  0]	MOV  	  7		4	; slot7 = slot4
		  8	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		  9	[  0]	JMP  	  8		15	; 	goto 25
		 10	[  0]	TGETS	 10	9	4	; slot10 = slot9.objectiveType
		 11	[  0]	ISNES	 10		3	; if <unknown table>.objectiveType ~= "total_absorb_count"
		 12	[  0]	JMP  	 10		5	; 	goto 18
		 13	[  0]	MOV  	 12		9	; slot12 = slot9
		 14	[  0]	TGETS	 10	9	2	; slot10 = slot9.addProgress
		 15	[  0]	KSHORT	 13		1	; slot13 = 1
		 16	[  0]	CALL 	 10	1	3	;  = <unknown table>.addProgress(slot11, slot12)
		 17	[  0]	JMP  	 10		7	; 	goto 25
		 18	[  0]	TGETS	 10	9	4	; slot10 = slot9.objectiveType
		 19	[  0]	ISNES	 10		1	; if <unknown table>.objectiveType ~= "no_absorb_waves"
		 20	[  0]	JMP  	 10		4	; 	goto 25
		 21	[  0]	MOV  	 12		9	; slot12 = slot9
		 22	[  0]	TGETS	 10	9	0	; slot10 = slot9.setProgress
		 23	[  0]	KSHORT	 13		0	; slot13 = 0
		 24	[  0]	CALL 	 10	1	3	;  = <unknown table>.setProgress(slot11, slot12)
		 25	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		 26	[  0]	ITERL	  8		-17	; slot7 = slot8; if slot8 != nil goto 10
		 27	[  0]	ITERN	  3	3	3	; slot3, slot4, slot5 = slot0, slot1, slot2; slot3, slot4 = slot0(slot1, slot2)
		 28	[  0]	ITERL	  3		-23	; slot2 = slot3; if slot3 != nil goto 6
		 29	[  0]	RET0 	  0		1	; return
	196	[  0]	TSETS	  2	0	13	; slot0.onAbsorb = slot2
	197	[  0]	FNEW 	  2		10	; N/A:0-0: 0 args, 1 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		5	; slot0 = _env["pairs"]
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	TGETS	  2	2	4	; slot2 = uv0"unknown".byDifficulty
		  4	[  0]	CALL 	  0	4	2	; slot0, slot1, slot2 = pairs(slot1)
		  5	[  0]	ISNEXT	  3		13	; Verify ITERN at 19; goto 19
		  6	[  0]	GGET 	  5		3	; slot5 = _env["ipairs"]
		  7	[  0]	MOV  	  7		4	; slot7 = slot4
		  8	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		  9	[  0]	JMP  	  8		7	; 	goto 17
		 10	[  0]	TGETS	 10	9	2	; slot10 = slot9.objectiveType
		 11	[  0]	ISNES	 10		1	; if <unknown table>.objectiveType ~= "advanced_promotion"
		 12	[  0]	JMP  	 10		4	; 	goto 17
		 13	[  0]	MOV  	 12		9	; slot12 = slot9
		 14	[  0]	TGETS	 10	9	0	; slot10 = slot9.addProgress
		 15	[  0]	KSHORT	 13		1	; slot13 = 1
		 16	[  0]	CALL 	 10	1	3	;  = <unknown table>.addProgress(slot11, slot12)
		 17	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		 18	[  0]	ITERL	  8		-9	; slot7 = slot8; if slot8 != nil goto 10
		 19	[  0]	ITERN	  3	3	3	; slot3, slot4, slot5 = slot0, slot1, slot2; slot3, slot4 = slot0(slot1, slot2)
		 20	[  0]	ITERL	  3		-15	; slot2 = slot3; if slot3 != nil goto 6
		 21	[  0]	RET0 	  0		1	; return
	198	[  0]	TSETS	  2	0	11	; slot0.onAdvancedPromotion = slot2
	199	[  0]	FNEW 	  2		8	; N/A:0-0: 1 args, 1 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		5	; slot1 = _env["pairs"]
		  2	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  3	[  0]	TGETS	  3	3	4	; slot3 = uv0"unknown".byDifficulty
		  4	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = pairs(slot2)
		  5	[  0]	ISNEXT	  4		13	; Verify ITERN at 19; goto 19
		  6	[  0]	GGET 	  6		3	; slot6 = _env["ipairs"]
		  7	[  0]	MOV  	  8		5	; slot8 = slot5
		  8	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		  9	[  0]	JMP  	  9		7	; 	goto 17
		 10	[  0]	TGETS	 11	10	2	; slot11 = slot10.objectiveType
		 11	[  0]	ISNES	 11		1	; if <unknown table>.objectiveType ~= "units_with_absorb_count"
		 12	[  0]	JMP  	 11		4	; 	goto 17
		 13	[  0]	MOV  	 13		10	; slot13 = slot10
		 14	[  0]	TGETS	 11	10	0	; slot11 = slot10.setProgress
		 15	[  0]	MOV  	 14		0	; slot14 = slot0
		 16	[  0]	CALL 	 11	1	3	;  = <unknown table>.setProgress(slot12, slot13)
		 17	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, slot8; slot9, slot10 = ipairs(slot7, slot8)
		 18	[  0]	ITERL	  9		-9	; slot8 = slot9; if slot9 != nil goto 10
		 19	[  0]	ITERN	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, uv0"unknown".byDifficulty; slot4, slot5 = slot1(slot2, uv0"unknown".byDifficulty)
		 20	[  0]	ITERL	  4		-15	; uv0"unknown".byDifficulty = slot4; if slot4 != nil goto 6
		 21	[  0]	RET0 	  0		1	; return
	200	[  0]	TSETS	  2	0	9	; slot0.onRosterAbsorbChange = slot2
	201	[  0]	FNEW 	  2		6	; N/A:0-0: 1 args, 1 upvalues, 19 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		3	; 	goto 6
		  3	[  0]	TGETS	  1	0	29	; slot1 = slot0.allyDeaths
		  4	[  0]	IST  	   		1	; if <unknown table>.allyDeaths
		  5	[  0]	JMP  	  2		1	; 	goto 7
		  6	[  0]	KSHORT	  1		0	; slot1 = 0
		  7	[  0]	ISF  	   		0	; if not slot0
		  8	[  0]	JMP  	  2		3	; 	goto 12
		  9	[  0]	TGETS	  2	0	28	; slot2 = slot0.survivors
		 10	[  0]	IST  	   		2	; if <unknown table>.survivors
		 11	[  0]	JMP  	  3		1	; 	goto 13
		 12	[  0]	KSHORT	  2		0	; slot2 = 0
		 13	[  0]	ISFC 	  3		0	; slot3 = slot0; if not slot0
		 14	[  0]	JMP  	  3		1	; 	goto 16
		 15	[  0]	TGETS	  3	0	27	; slot3 = slot0.victory
		 16	[  0]	ISEQP	  3		2	; if <unknown table>.victory == true
		 17	[  0]	JMP  	  3		2	; 	goto 20
		 18	[  0]	KPRI 	  3		1	; slot3 = false
		 19	[  0]	JMP  	  4		1	; 	goto 21
		 20	[  0]	KPRI 	  3		2	; slot3 = true
		 21	[  0]	ISFC 	  4		0	; slot4 = slot0; if not slot0
		 22	[  0]	JMP  	  4		1	; 	goto 24
		 23	[  0]	TGETS	  4	0	26	; slot4 = slot0.usedOnlyNormalUnits
		 24	[  0]	ISEQP	  4		2	; if <unknown table>.usedOnlyNormalUnits == true
		 25	[  0]	JMP  	  4		2	; 	goto 28
		 26	[  0]	KPRI 	  4		1	; slot4 = false
		 27	[  0]	JMP  	  5		1	; 	goto 29
		 28	[  0]	KPRI 	  4		2	; slot4 = true
		 29	[  0]	GGET 	  5		25	; slot5 = _env["pairs"]
		 30	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 31	[  0]	TGETS	  7	7	24	; slot7 = uv0"unknown".byDifficulty
		 32	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = pairs(slot6)
		 33	[  0]	ISNEXT	  8		222	; Verify ITERN at 256; goto 256
		 34	[  0]	GGET 	 10		23	; slot10 = _env["ipairs"]
		 35	[  0]	MOV  	 12		9	; slot12 = slot9
		 36	[  0]	CALL 	 10	4	2	; slot10, slot11, slot12 = ipairs(slot11)
		 37	[  0]	JMP  	 13		216	; 	goto 254
		 38	[  0]	TGETS	 15	14	22	; slot15 = slot14.objectiveType
		 39	[  0]	ISNES	 15		21	; if <unknown table>.objectiveType ~= "wave_deaths_le_1"
		 40	[  0]	JMP  	 15		10	; 	goto 51
		 41	[  0]	ISF  	   		3	; if not slot3
		 42	[  0]	JMP  	 15		211	; 	goto 254
		 43	[  0]	KSHORT	 15		1	; slot15 = 1
		 44	[  0]	ISGT 	  1		15	; if slot1 > slot15
		 45	[  0]	JMP  	 15		208	; 	goto 254
		 46	[  0]	MOV  	 17		14	; slot17 = slot14
		 47	[  0]	TGETS	 15	14	20	; slot15 = slot14.setProgress
		 48	[  0]	KSHORT	 18		1	; slot18 = 1
		 49	[  0]	CALL 	 15	1	3	;  = <unknown table>.setProgress(slot16, slot17)
		 50	[  0]	JMP  	 15		203	; 	goto 254
		 51	[  0]	TGETS	 15	14	22	; slot15 = slot14.objectiveType
		 52	[  0]	ISNES	 15		19	; if <unknown table>.objectiveType ~= "win_with_one_survivor"
		 53	[  0]	JMP  	 15		9	; 	goto 63
		 54	[  0]	ISF  	   		3	; if not slot3
		 55	[  0]	JMP  	 15		198	; 	goto 254
		 56	[  0]	ISNEN	  2		0	; if slot2 ~= 1
		 57	[  0]	JMP  	 15		196	; 	goto 254
		 58	[  0]	MOV  	 17		14	; slot17 = slot14
		 59	[  0]	TGETS	 15	14	20	; slot15 = slot14.setProgress
		 60	[  0]	KSHORT	 18		1	; slot18 = 1
		 61	[  0]	CALL 	 15	1	3	;  = <unknown table>.setProgress(slot16, slot17)
		 62	[  0]	JMP  	 15		191	; 	goto 254
		 63	[  0]	TGETS	 15	14	22	; slot15 = slot14.objectiveType
		 64	[  0]	ISNES	 15		18	; if <unknown table>.objectiveType ~= "win_with_1_hp"
		 65	[  0]	JMP  	 15		12	; 	goto 78
		 66	[  0]	ISF  	   		3	; if not slot3
		 67	[  0]	JMP  	 15		186	; 	goto 254
		 68	[  0]	ISF  	   		0	; if not slot0
		 69	[  0]	JMP  	 15		184	; 	goto 254
		 70	[  0]	TGETS	 15	0	17	; slot15 = slot0.basehp
		 71	[  0]	ISNEN	 15		0	; if <unknown table>.basehp ~= 1
		 72	[  0]	JMP  	 15		181	; 	goto 254
		 73	[  0]	MOV  	 17		14	; slot17 = slot14
		 74	[  0]	TGETS	 15	14	20	; slot15 = slot14.setProgress
		 75	[  0]	KSHORT	 18		1	; slot18 = 1
		 76	[  0]	CALL 	 15	1	3	;  = <unknown table>.setProgress(slot16, slot17)
		 77	[  0]	JMP  	 15		176	; 	goto 254
		 78	[  0]	TGETS	 15	14	22	; slot15 = slot14.objectiveType
		 79	[  0]	ISNES	 15		16	; if <unknown table>.objectiveType ~= "normal_units_only_judgement"
		 80	[  0]	JMP  	 15		18	; 	goto 99
		 81	[  0]	ISF  	   		3	; if not slot3
		 82	[  0]	JMP  	 15		171	; 	goto 254
		 83	[  0]	ISF  	   		0	; if not slot0
		 84	[  0]	JMP  	 15		169	; 	goto 254
		 85	[  0]	TGETS	 15	0	15	; slot15 = slot0.waveId
		 86	[  0]	ISF  	   		15	; if not <unknown table>.waveId
		 87	[  0]	JMP  	 16		166	; 	goto 254
		 88	[  0]	TGETS	 15	0	15	; slot15 = slot0.waveId
		 89	[  0]	MODVN	 15	15	1	; slot15 = <unknown table>.waveId % 10
		 90	[  0]	ISNEN	 15		2	; if slot15 ~= 5
		 91	[  0]	JMP  	 15		162	; 	goto 254
		 92	[  0]	ISF  	   		4	; if not slot4
		 93	[  0]	JMP  	 15		160	; 	goto 254
		 94	[  0]	MOV  	 17		14	; slot17 = slot14
		 95	[  0]	TGETS	 15	14	20	; slot15 = slot14.setProgress
		 96	[  0]	KSHORT	 18		1	; slot18 = 1
		 97	[  0]	CALL 	 15	1	3	;  = <unknown table>.setProgress(slot16, slot17)
		 98	[  0]	JMP  	 15		155	; 	goto 254
		 99	[  0]	TGETS	 15	14	22	; slot15 = slot14.objectiveType
		100	[  0]	ISNES	 15		14	; if <unknown table>.objectiveType ~= "win_with_one_4_star"
		101	[  0]	JMP  	 15		19	; 	goto 121
		102	[  0]	ISF  	   		3	; if not slot3
		103	[  0]	JMP  	 15		150	; 	goto 254
		104	[  0]	ISF  	   		0	; if not slot0
		105	[  0]	JMP  	 15		148	; 	goto 254
		106	[  0]	TGETS	 15	0	13	; slot15 = slot0.rosterCount
		107	[  0]	ISNEN	 15		0	; if <unknown table>.rosterCount ~= 1
		108	[  0]	JMP  	 15		145	; 	goto 254
		109	[  0]	TGETS	 15	0	12	; slot15 = slot0.maxRank
		110	[  0]	ISF  	   		15	; if not <unknown table>.maxRank
		111	[  0]	JMP  	 16		142	; 	goto 254
		112	[  0]	TGETS	 15	0	12	; slot15 = slot0.maxRank
		113	[  0]	KSHORT	 16		4	; slot16 = 4
		114	[  0]	ISGT 	 16		15	; if slot16 > <unknown table>.maxRank
		115	[  0]	JMP  	 15		138	; 	goto 254
		116	[  0]	MOV  	 17		14	; slot17 = slot14
		117	[  0]	TGETS	 15	14	20	; slot15 = slot14.setProgress
		118	[  0]	KSHORT	 18		1	; slot18 = 1
		119	[  0]	CALL 	 15	1	3	;  = <unknown table>.setProgress(slot16, slot17)
		120	[  0]	JMP  	 15		133	; 	goto 254
		121	[  0]	TGETS	 15	14	22	; slot15 = slot14.objectiveType
		122	[  0]	ISNES	 15		11	; if <unknown table>.objectiveType ~= "win_with_3_or_fewer_units"
		123	[  0]	JMP  	 15		16	; 	goto 140
		124	[  0]	ISF  	   		3	; if not slot3
		125	[  0]	JMP  	 15		128	; 	goto 254
		126	[  0]	ISF  	   		0	; if not slot0
		127	[  0]	JMP  	 15		126	; 	goto 254
		128	[  0]	TGETS	 15	0	13	; slot15 = slot0.rosterCount
		129	[  0]	ISF  	   		15	; if not <unknown table>.rosterCount
		130	[  0]	JMP  	 16		123	; 	goto 254
		131	[  0]	TGETS	 15	0	13	; slot15 = slot0.rosterCount
		132	[  0]	KSHORT	 16		3	; slot16 = 3
		133	[  0]	ISGT 	 15		16	; if <unknown table>.rosterCount > slot16
		134	[  0]	JMP  	 15		119	; 	goto 254
		135	[  0]	MOV  	 17		14	; slot17 = slot14
		136	[  0]	TGETS	 15	14	20	; slot15 = slot14.setProgress
		137	[  0]	KSHORT	 18		1	; slot18 = 1
		138	[  0]	CALL 	 15	1	3	;  = <unknown table>.setProgress(slot16, slot17)
		139	[  0]	JMP  	 15		114	; 	goto 254
		140	[  0]	TGETS	 15	14	22	; slot15 = slot14.objectiveType
		141	[  0]	ISNES	 15		10	; if <unknown table>.objectiveType ~= "normal_units_only_waves"
		142	[  0]	JMP  	 15		14	; 	goto 157
		143	[  0]	ISF  	   		3	; if not slot3
		144	[  0]	JMP  	 15		109	; 	goto 254
		145	[  0]	ISF  	   		4	; if not slot4
		146	[  0]	JMP  	 15		5	; 	goto 152
		147	[  0]	MOV  	 17		14	; slot17 = slot14
		148	[  0]	TGETS	 15	14	9	; slot15 = slot14.addProgress
		149	[  0]	KSHORT	 18		1	; slot18 = 1
		150	[  0]	CALL 	 15	1	3	;  = <unknown table>.addProgress(slot16, slot17)
		151	[  0]	JMP  	 15		102	; 	goto 254
		152	[  0]	MOV  	 17		14	; slot17 = slot14
		153	[  0]	TGETS	 15	14	20	; slot15 = slot14.setProgress
		154	[  0]	KSHORT	 18		0	; slot18 = 0
		155	[  0]	CALL 	 15	1	3	;  = <unknown table>.setProgress(slot16, slot17)
		156	[  0]	JMP  	 15		97	; 	goto 254
		157	[  0]	TGETS	 15	14	22	; slot15 = slot14.objectiveType
		158	[  0]	ISNES	 15		8	; if <unknown table>.objectiveType ~= "no_absorb_waves"
		159	[  0]	JMP  	 15		7	; 	goto 167
		160	[  0]	ISF  	   		3	; if not slot3
		161	[  0]	JMP  	 15		92	; 	goto 254
		162	[  0]	MOV  	 17		14	; slot17 = slot14
		163	[  0]	TGETS	 15	14	9	; slot15 = slot14.addProgress
		164	[  0]	KSHORT	 18		1	; slot18 = 1
		165	[  0]	CALL 	 15	1	3	;  = <unknown table>.addProgress(slot16, slot17)
		166	[  0]	JMP  	 15		87	; 	goto 254
		167	[  0]	TGETS	 15	14	22	; slot15 = slot14.objectiveType
		168	[  0]	ISNES	 15		7	; if <unknown table>.objectiveType ~= "no_nudge_waves"
		169	[  0]	JMP  	 15		7	; 	goto 177
		170	[  0]	ISF  	   		3	; if not slot3
		171	[  0]	JMP  	 15		82	; 	goto 254
		172	[  0]	MOV  	 17		14	; slot17 = slot14
		173	[  0]	TGETS	 15	14	9	; slot15 = slot14.addProgress
		174	[  0]	KSHORT	 18		1	; slot18 = 1
		175	[  0]	CALL 	 15	1	3	;  = <unknown table>.addProgress(slot16, slot17)
		176	[  0]	JMP  	 15		77	; 	goto 254
		177	[  0]	TGETS	 15	14	22	; slot15 = slot14.objectiveType
		178	[  0]	ISNES	 15		6	; if <unknown table>.objectiveType ~= "no_shop_waves"
		179	[  0]	JMP  	 15		7	; 	goto 187
		180	[  0]	ISF  	   		3	; if not slot3
		181	[  0]	JMP  	 15		72	; 	goto 254
		182	[  0]	MOV  	 17		14	; slot17 = slot14
		183	[  0]	TGETS	 15	14	9	; slot15 = slot14.addProgress
		184	[  0]	KSHORT	 18		1	; slot18 = 1
		185	[  0]	CALL 	 15	1	3	;  = <unknown table>.addProgress(slot16, slot17)
		186	[  0]	JMP  	 15		67	; 	goto 254
		187	[  0]	TGETS	 15	14	22	; slot15 = slot14.objectiveType
		188	[  0]	ISNES	 15		5	; if <unknown table>.objectiveType ~= "no_item_waves"
		189	[  0]	JMP  	 15		7	; 	goto 197
		190	[  0]	ISF  	   		3	; if not slot3
		191	[  0]	JMP  	 15		62	; 	goto 254
		192	[  0]	MOV  	 17		14	; slot17 = slot14
		193	[  0]	TGETS	 15	14	9	; slot15 = slot14.addProgress
		194	[  0]	KSHORT	 18		1	; slot18 = 1
		195	[  0]	CALL 	 15	1	3	;  = <unknown table>.addProgress(slot16, slot17)
		196	[  0]	JMP  	 15		57	; 	goto 254
		197	[  0]	TGETS	 15	14	22	; slot15 = slot14.objectiveType
		198	[  0]	ISNES	 15		4	; if <unknown table>.objectiveType ~= "ranged_only"
		199	[  0]	JMP  	 15		13	; 	goto 213
		200	[  0]	ISF  	   		3	; if not slot3
		201	[  0]	JMP  	 15		52	; 	goto 254
		202	[  0]	TGETS	 15	0	3	; slot15 = slot0.hasRanged
		203	[  0]	ISF  	   		15	; if not <unknown table>.hasRanged
		204	[  0]	JMP  	 16		49	; 	goto 254
		205	[  0]	TGETS	 15	0	2	; slot15 = slot0.hasMelee
		206	[  0]	IST  	   		15	; if <unknown table>.hasMelee
		207	[  0]	JMP  	 15		46	; 	goto 254
		208	[  0]	MOV  	 17		14	; slot17 = slot14
		209	[  0]	TGETS	 15	14	20	; slot15 = slot14.setProgress
		210	[  0]	KSHORT	 18		1	; slot18 = 1
		211	[  0]	CALL 	 15	1	3	;  = <unknown table>.setProgress(slot16, slot17)
		212	[  0]	JMP  	 15		41	; 	goto 254
		213	[  0]	TGETS	 15	14	22	; slot15 = slot14.objectiveType
		214	[  0]	ISNES	 15		1	; if <unknown table>.objectiveType ~= "win_with_5_or_fewer_units"
		215	[  0]	JMP  	 15		14	; 	goto 230
		216	[  0]	ISF  	   		3	; if not slot3
		217	[  0]	JMP  	 15		36	; 	goto 254
		218	[  0]	TGETS	 15	0	13	; slot15 = slot0.rosterCount
		219	[  0]	IST  	   		15	; if <unknown table>.rosterCount
		220	[  0]	JMP  	 16		1	; 	goto 222
		221	[  0]	KSHORT	 15		0	; slot15 = 0
		222	[  0]	KSHORT	 16		5	; slot16 = 5
		223	[  0]	ISGT 	 15		16	; if slot15 > slot16
		224	[  0]	JMP  	 15		29	; 	goto 254
		225	[  0]	MOV  	 17		14	; slot17 = slot14
		226	[  0]	TGETS	 15	14	20	; slot15 = slot14.setProgress
		227	[  0]	KSHORT	 18		1	; slot18 = 1
		228	[  0]	CALL 	 15	1	3	;  = <unknown table>.setProgress(slot16, slot17)
		229	[  0]	JMP  	 15		24	; 	goto 254
		230	[  0]	TGETS	 15	14	22	; slot15 = slot14.objectiveType
		231	[  0]	ISNES	 15		0	; if <unknown table>.objectiveType ~= "reach_wave_10_no_3_star"
		232	[  0]	JMP  	 15		21	; 	goto 254
		233	[  0]	ISF  	   		3	; if not slot3
		234	[  0]	JMP  	 15		19	; 	goto 254
		235	[  0]	TGETS	 15	0	12	; slot15 = slot0.maxRank
		236	[  0]	IST  	   		15	; if <unknown table>.maxRank
		237	[  0]	JMP  	 16		1	; 	goto 239
		238	[  0]	KSHORT	 15		0	; slot15 = 0
		239	[  0]	KSHORT	 16		3	; slot16 = 3
		240	[  0]	ISGE 	 15		16	; if slot15 >= slot16
		241	[  0]	JMP  	 15		8	; 	goto 250
		242	[  0]	MOV  	 17		14	; slot17 = slot14
		243	[  0]	TGETS	 15	14	20	; slot15 = slot14.setProgress
		244	[  0]	TGETS	 18	0	15	; slot18 = slot0.waveId
		245	[  0]	IST  	   		18	; if <unknown table>.waveId
		246	[  0]	JMP  	 19		1	; 	goto 248
		247	[  0]	KSHORT	 18		0	; slot18 = 0
		248	[  0]	CALL 	 15	1	3	;  = <unknown table>.setProgress(slot16, slot17)
		249	[  0]	JMP  	 15		4	; 	goto 254
		250	[  0]	MOV  	 17		14	; slot17 = slot14
		251	[  0]	TGETS	 15	14	20	; slot15 = slot14.setProgress
		252	[  0]	KSHORT	 18		0	; slot18 = 0
		253	[  0]	CALL 	 15	1	3	;  = <unknown table>.setProgress(slot16, slot17)
		254	[  0]	ITERC	 13	3	3	; slot13, slot14, slot15 = ipairs, slot11, slot12; slot13, slot14 = ipairs(slot11, slot12)
		255	[  0]	ITERL	 13		-218	; slot12 = slot13; if slot13 != nil goto 38
		256	[  0]	ITERN	  8	3	3	; slot8, slot9, slot10 = pairs, slot6, uv0"unknown".byDifficulty; slot8, slot9 = pairs(slot6, uv0"unknown".byDifficulty)
		257	[  0]	ITERL	  8		-224	; uv0"unknown".byDifficulty = slot8; if slot8 != nil goto 34
		258	[  0]	RET0 	  0		1	; return
	202	[  0]	TSETS	  2	0	7	; slot0.onWaveEnd = slot2
	203	[  0]	FNEW 	  2		4	; N/A:0-0: 1 args, 1 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		5	; slot1 = _env["pairs"]
		  2	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  3	[  0]	TGETS	  3	3	4	; slot3 = uv0"unknown".byDifficulty
		  4	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = pairs(slot2)
		  5	[  0]	ISNEXT	  4		21	; Verify ITERN at 27; goto 27
		  6	[  0]	GGET 	  6		3	; slot6 = _env["ipairs"]
		  7	[  0]	MOV  	  8		5	; slot8 = slot5
		  8	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		  9	[  0]	JMP  	  9		15	; 	goto 25
		 10	[  0]	TGETS	 11	10	2	; slot11 = slot10.objectiveType
		 11	[  0]	ISNES	 11		1	; if <unknown table>.objectiveType ~= "max_imprint_count"
		 12	[  0]	JMP  	 11		12	; 	goto 25
		 13	[  0]	KSHORT	 11		3	; slot11 = 3
		 14	[  0]	ISGT 	 11		0	; if slot11 > slot0
		 15	[  0]	JMP  	 11		5	; 	goto 21
		 16	[  0]	MOV  	 13		10	; slot13 = slot10
		 17	[  0]	TGETS	 11	10	0	; slot11 = slot10.setProgress
		 18	[  0]	KSHORT	 14		1	; slot14 = 1
		 19	[  0]	CALL 	 11	1	3	;  = <unknown table>.setProgress(slot12, slot13)
		 20	[  0]	JMP  	 11		4	; 	goto 25
		 21	[  0]	MOV  	 13		10	; slot13 = slot10
		 22	[  0]	TGETS	 11	10	0	; slot11 = slot10.setProgress
		 23	[  0]	KSHORT	 14		0	; slot14 = 0
		 24	[  0]	CALL 	 11	1	3	;  = <unknown table>.setProgress(slot12, slot13)
		 25	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, slot8; slot9, slot10 = ipairs(slot7, slot8)
		 26	[  0]	ITERL	  9		-17	; slot8 = slot9; if slot9 != nil goto 10
		 27	[  0]	ITERN	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, uv0"unknown".byDifficulty; slot4, slot5 = slot1(slot2, uv0"unknown".byDifficulty)
		 28	[  0]	ITERL	  4		-23	; uv0"unknown".byDifficulty = slot4; if slot4 != nil goto 6
		 29	[  0]	RET0 	  0		1	; return
	204	[  0]	TSETS	  2	0	5	; slot0.onMaxImprintsChange = slot2
	205	[  0]	FNEW 	  2		2	; N/A:0-0: 1 args, 1 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		5	; slot1 = _env["pairs"]
		  2	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  3	[  0]	TGETS	  3	3	4	; slot3 = uv0"unknown".byDifficulty
		  4	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = pairs(slot2)
		  5	[  0]	ISNEXT	  4		21	; Verify ITERN at 27; goto 27
		  6	[  0]	GGET 	  6		3	; slot6 = _env["ipairs"]
		  7	[  0]	MOV  	  8		5	; slot8 = slot5
		  8	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		  9	[  0]	JMP  	  9		15	; 	goto 25
		 10	[  0]	TGETS	 11	10	2	; slot11 = slot10.objectiveType
		 11	[  0]	ISNES	 11		1	; if <unknown table>.objectiveType ~= "max_rank_count"
		 12	[  0]	JMP  	 11		12	; 	goto 25
		 13	[  0]	KSHORT	 11		2	; slot11 = 2
		 14	[  0]	ISGT 	 11		0	; if slot11 > slot0
		 15	[  0]	JMP  	 11		5	; 	goto 21
		 16	[  0]	MOV  	 13		10	; slot13 = slot10
		 17	[  0]	TGETS	 11	10	0	; slot11 = slot10.setProgress
		 18	[  0]	KSHORT	 14		1	; slot14 = 1
		 19	[  0]	CALL 	 11	1	3	;  = <unknown table>.setProgress(slot12, slot13)
		 20	[  0]	JMP  	 11		4	; 	goto 25
		 21	[  0]	MOV  	 13		10	; slot13 = slot10
		 22	[  0]	TGETS	 11	10	0	; slot11 = slot10.setProgress
		 23	[  0]	KSHORT	 14		0	; slot14 = 0
		 24	[  0]	CALL 	 11	1	3	;  = <unknown table>.setProgress(slot12, slot13)
		 25	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, slot8; slot9, slot10 = ipairs(slot7, slot8)
		 26	[  0]	ITERL	  9		-17	; slot8 = slot9; if slot9 != nil goto 10
		 27	[  0]	ITERN	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, uv0"unknown".byDifficulty; slot4, slot5 = slot1(slot2, uv0"unknown".byDifficulty)
		 28	[  0]	ITERL	  4		-23	; uv0"unknown".byDifficulty = slot4; if slot4 != nil goto 6
		 29	[  0]	RET0 	  0		1	; return
	206	[  0]	TSETS	  2	0	3	; slot0.onMaxRankChange = slot2
	207	[  0]	FNEW 	  2		0	; N/A:0-0: 1 args, 1 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		5	; slot1 = _env["pairs"]
		  2	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  3	[  0]	TGETS	  3	3	4	; slot3 = uv0"unknown".byDifficulty
		  4	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = pairs(slot2)
		  5	[  0]	ISNEXT	  4		21	; Verify ITERN at 27; goto 27
		  6	[  0]	GGET 	  6		3	; slot6 = _env["ipairs"]
		  7	[  0]	MOV  	  8		5	; slot8 = slot5
		  8	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		  9	[  0]	JMP  	  9		15	; 	goto 25
		 10	[  0]	TGETS	 11	10	2	; slot11 = slot10.objectiveType
		 11	[  0]	ISNES	 11		1	; if <unknown table>.objectiveType ~= "absorber_unique_symbols_3"
		 12	[  0]	JMP  	 11		12	; 	goto 25
		 13	[  0]	KSHORT	 11		3	; slot11 = 3
		 14	[  0]	ISGT 	 11		0	; if slot11 > slot0
		 15	[  0]	JMP  	 11		5	; 	goto 21
		 16	[  0]	MOV  	 13		10	; slot13 = slot10
		 17	[  0]	TGETS	 11	10	0	; slot11 = slot10.setProgress
		 18	[  0]	KSHORT	 14		1	; slot14 = 1
		 19	[  0]	CALL 	 11	1	3	;  = <unknown table>.setProgress(slot12, slot13)
		 20	[  0]	JMP  	 11		4	; 	goto 25
		 21	[  0]	MOV  	 13		10	; slot13 = slot10
		 22	[  0]	TGETS	 11	10	0	; slot11 = slot10.setProgress
		 23	[  0]	KSHORT	 14		0	; slot14 = 0
		 24	[  0]	CALL 	 11	1	3	;  = <unknown table>.setProgress(slot12, slot13)
		 25	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, slot8; slot9, slot10 = ipairs(slot7, slot8)
		 26	[  0]	ITERL	  9		-17	; slot8 = slot9; if slot9 != nil goto 10
		 27	[  0]	ITERN	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, uv0"unknown".byDifficulty; slot4, slot5 = slot1(slot2, uv0"unknown".byDifficulty)
		 28	[  0]	ITERL	  4		-23	; uv0"unknown".byDifficulty = slot4; if slot4 != nil goto 6
		 29	[  0]	RET0 	  0		1	; return
	208	[  0]	TSETS	  2	0	1	; slot0.onMaxAbsorbedUniqueSymbolsChange = slot2
	209	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 210
	210	[  0]	RET1 	  0		2	; return slot0
	
