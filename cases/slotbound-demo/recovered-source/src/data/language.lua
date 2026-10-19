local var_0_0 = {}

local function var_0_1(arg_1_0)
	local var_1_0 = tonumber(arg_1_0, 16)

	if not var_1_0 then
		return ""
	end

	if var_1_0 < 128 then
		return string.char(var_1_0)
	elseif var_1_0 < 2048 then
		return string.char(192 + math.floor(var_1_0 / 64), 128 + var_1_0 % 64)
	elseif var_1_0 < 65536 then
		return string.char(224 + math.floor(var_1_0 / 4096), 128 + math.floor(var_1_0 / 64) % 64, 128 + var_1_0 % 64)
	end

	return ""
end

local function var_0_2(arg_2_0)
	return (arg_2_0 or ""):gsub("\\([\"\\/bfnrt])", {
		r = "\r",
		f = "\f",
		t = "\t",
		b = "\b",
		["/"] = "/",
		["\\"] = "\\",
		["\""] = "\"",
		n = "\n"
	}):gsub("\\u(%x%x%x%x)", var_0_1)
end

local function var_0_3(arg_3_0)
	if type(arg_3_0) ~= "string" then
		return nil
	end

	arg_3_0 = arg_3_0:gsub("^﻿", "")

	local var_3_0 = {}
	local var_3_1 = 1
	local var_3_2 = #arg_3_0

	local function var_3_3()
		while var_3_1 <= var_3_2 and arg_3_0:sub(var_3_1, var_3_1):match("%s") do
			var_3_1 = var_3_1 + 1
		end
	end

	local function var_3_4()
		if arg_3_0:sub(var_3_1, var_3_1) ~= "\"" then
			return nil
		end

		var_3_1 = var_3_1 + 1

		local var_5_0 = {}

		while var_3_1 <= var_3_2 do
			local var_5_1 = arg_3_0:sub(var_3_1, var_3_1)

			if var_5_1 == "\"" then
				var_3_1 = var_3_1 + 1

				return var_0_2(table.concat(var_5_0))
			end

			if var_5_1 == "\\" then
				if arg_3_0:sub(var_3_1 + 1, var_3_1 + 1) == "u" then
					var_5_0[#var_5_0 + 1] = arg_3_0:sub(var_3_1, var_3_1 + 5)
					var_3_1 = var_3_1 + 6
				else
					var_5_0[#var_5_0 + 1] = arg_3_0:sub(var_3_1, var_3_1 + 1)
					var_3_1 = var_3_1 + 2
				end
			else
				var_5_0[#var_5_0 + 1] = var_5_1
				var_3_1 = var_3_1 + 1
			end
		end

		return nil
	end

	var_3_3()

	if arg_3_0:sub(var_3_1, var_3_1) ~= "{" then
		return nil
	end

	var_3_1 = var_3_1 + 1

	while var_3_1 <= var_3_2 do
		var_3_3()

		if arg_3_0:sub(var_3_1, var_3_1) == "}" then
			return var_3_0
		end

		local var_3_5 = var_3_4()

		if not var_3_5 then
			return nil
		end

		var_3_3()

		if arg_3_0:sub(var_3_1, var_3_1) ~= ":" then
			return nil
		end

		var_3_1 = var_3_1 + 1

		var_3_3()

		local var_3_6 = var_3_4()

		if var_3_6 == nil then
			return nil
		end

		var_3_0[var_3_5] = var_3_6

		var_3_3()

		local var_3_7 = arg_3_0:sub(var_3_1, var_3_1)

		if var_3_7 == "," then
			var_3_1 = var_3_1 + 1
		elseif var_3_7 == "}" then
			return var_3_0
		else
			return nil
		end
	end

	return nil
end

local function var_0_4(arg_6_0)
	local var_6_0

	if love and love.filesystem and love.filesystem.read then
		local var_6_1, var_6_2 = pcall(love.filesystem.read, arg_6_0)

		if var_6_1 then
			var_6_0 = var_6_2
		end
	end

	if not var_6_0 then
		local var_6_3 = io.open(arg_6_0, "rb")

		if var_6_3 then
			var_6_0 = var_6_3:read("*all")

			var_6_3:close()
		end
	end

	return var_0_3(var_6_0)
end

local function var_0_5()
	local var_7_0 = var_0_4("src/language/korean.json")
	local var_7_1 = var_0_4("src/language/english.json")
	local var_7_2 = var_0_4("src/language/japanese.json")
	local var_7_3 = var_0_4("src/language/chinese.json")
	local var_7_4 = var_0_4("src/language/french.json")
	local var_7_5 = var_0_4("src/language/italian.json")
	local var_7_6 = var_0_4("src/language/german.json")
	local var_7_7 = var_0_4("src/language/spanish.json")
	local var_7_8 = var_0_4("src/language/russian.json")
	local var_7_9 = var_0_4("src/language/polish.json")
	local var_7_10 = var_0_4("src/language/portuguese_brazil.json")

	if var_7_0 then
		var_0_0.ko = var_7_0
	end

	if var_7_1 then
		var_0_0.en = var_7_1
	end

	if var_7_2 then
		var_0_0.ja = var_7_2
	end

	if var_7_3 then
		var_0_0.zh = var_7_3
	end

	if var_7_4 then
		var_0_0.fr = var_7_4
	end

	if var_7_5 then
		var_0_0.it = var_7_5
	end

	if var_7_6 then
		var_0_0.de = var_7_6
	end

	if var_7_7 then
		var_0_0.es = var_7_7
	end

	if var_7_8 then
		var_0_0.ru = var_7_8
	end

	if var_7_9 then
		var_0_0.pl = var_7_9
	end

	if var_7_10 then
		var_0_0.pt = var_7_10
	end
end

local var_0_6

local function var_0_7(arg_8_0, arg_8_1, arg_8_2)
	arg_8_1 = arg_8_1 or "ko"

	if arg_8_0 and var_0_0[arg_8_1] and var_0_0[arg_8_1][arg_8_0] then
		return var_0_0[arg_8_1][arg_8_0]
	end

	if arg_8_1 ~= "ko" and arg_8_1 ~= "en" then
		if arg_8_0 and var_0_0.en and var_0_0.en[arg_8_0] then
			return var_0_0.en[arg_8_0]
		end

		if arg_8_2 ~= nil and not var_0_6(arg_8_2) then
			return arg_8_2
		end

		return arg_8_0 or arg_8_2
	end

	if arg_8_1 == "en" then
		return arg_8_2
	end

	if arg_8_0 and var_0_0.ko and var_0_0.ko[arg_8_0] then
		return var_0_0.ko[arg_8_0]
	end

	return arg_8_2
end

function var_0_6(arg_9_0)
	if type(arg_9_0) ~= "string" then
		return false
	end

	for iter_9_0 = 1, math.max(0, #arg_9_0 - 2) do
		local var_9_0, var_9_1, var_9_2 = arg_9_0:byte(iter_9_0, iter_9_0 + 2)

		if var_9_0 and var_9_1 and var_9_2 and var_9_0 >= 234 and var_9_0 <= 237 and var_9_1 >= 128 and var_9_1 <= 191 and var_9_2 >= 128 and var_9_2 <= 191 then
			return true
		end
	end

	return false
end

local function var_0_8(arg_10_0)
	if type(arg_10_0) ~= "string" then
		return nil
	end

	local var_10_0 = arg_10_0:match("%(([^()]*)%)%s*$")

	if not var_10_0 or not var_10_0:match("[A-Za-z]") then
		return nil
	end

	local var_10_1 = var_10_0:gsub("%.png$", ""):gsub("^%s+", ""):gsub("%s+$", "")

	if var_10_1 == "" then
		return nil
	end

	return var_10_1
end

local function var_0_9(arg_11_0, arg_11_1)
	if arg_11_0 ~= nil and not var_0_6(arg_11_0) then
		return arg_11_0
	end

	if arg_11_1 ~= nil and not var_0_6(arg_11_1) then
		return arg_11_1
	end

	return nil
end

var_0_0.ko = {
	upgrade_maxhp2_name = "여분의 목숨 II",
	upgrade_maxhp2_desc = "최대 목숨이 1 증가합니다.",
	upgrade_shopreroll_desc = "상점 리롤 비용이 1 감소합니다.",
	upgrade_maxunit3_desc = "최대 배치 유닛 수가 추가로 1 증가합니다.",
	upgrade_shoppin_desc = "상점 아이템 1개를 다음 갱신 후에도 유지할 수 있습니다. 런당 1회.",
	upgrade_itemresearch_name = "전문 아이템 연구 I",
	upgrade_shoppin_name = "상품 고정",
	upgrade_iteminventory2_stat = "아이템 슬롯 7 -> 8",
	upgrade_itemresearch_stat = "전문 아이템 2종 추가",
	upgrade_shoppin_stat = "상품 고정",
	upgrade_itemresearch_desc = "관통 교본과 비전 훈련이 상점에 등장할 수 있습니다.",
	upgrade_action_select_move = "선택 / 이동",
	upgrade_unlock_label = "코어 해금",
	upgrade_action_zoom = "확대 / 축소",
	upgrade_startingmerccontract_desc = "런 시작 시 출정 코어 \"용병 계약서\"를 가지고 시작합니다.",
	upgrade_iteminventory2_desc = "아이템 슬롯이 1 증가합니다.",
	upgrade_startingmerccontract_name = "출정 보급",
	upgrade_iteminventory2_name = "아이템 슬롯 확장 II",
	upgrade_startgold_stat = "시작 {gold.png} 450 -> 500",
	upgrade_itemrefund_stat = "환급률 50% -> 80%",
	upgrade_startgold_desc = "{gold.png} 50 을 추가로 시작합니다.",
	upgrade_itemrefund_desc = "아이템 삭제 시 환급률이 50%에서 80%로 증가합니다.",
	upgrade_startgold_name = "초기 보급",
	upgrade_itemrefund_name = "재활용 장부",
	upgrade_noviceshield_stat = "첫 목숨 감소 0회 -> 1회",
	upgrade_iteminventory_stat = "아이템 슬롯 6 -> 7",
	upgrade_noviceshield_desc = "1~4 웨이브에서 첫 목숨 감소를 1회 막습니다.",
	upgrade_iteminventory_desc = "아이템 슬롯이 1 증가합니다.",
	upgrade_noviceshield_name = "첫걸음 보호",
	upgrade_iteminventory_name = "아이템 슬롯 확장 I",
	upgrade_maxunit3_stat = "7 -> 8",
	upgrade_shopreroll_stat = "상점 리롤 비용 감소 0 -> 1",
	upgrade_action_back = "뒤로가기",
	upgrade_maxunit3_name = "지휘 한도 III",
	upgrade_maxunit2_stat = "6 -> 7",
	upgrade_shopreroll_name = "상점 리롤",
	upgrade_maxunit2_desc = "최대 배치 유닛 수가 추가로 1 증가합니다.",
	upgrade_firstcoreuncommon_stat = "코어 고급 등장",
	upgrade_maxunit2_name = "지휘 한도 II",
	upgrade_firstcoreuncommon_desc = "첫 코어 선택지에 고급 이상 코어가 1개 반드시 등장합니다.",
	upgrade_preptimerdisabled_stat = "80초 -> {infinity}",
	upgrade_firstcoreuncommon_name = "빛나는 각성",
	upgrade_preptimerdisabled_desc = "준비 시간 제한이 사라집니다.",
	upgrade_firstcorespin_stat = "첫 코어 요구 스핀 0 -> -1",
	upgrade_preptimerdisabled_name = "정비 해방",
	upgrade_firstcorespin_desc = "첫 코어 선택에 필요한 스핀 수가 1 감소합니다.",
	upgrade_preptime2_stat = "70초 -> 80초",
	upgrade_firstcorespin_name = "빠른 각성",
	upgrade_preptime2_desc = "준비 시간이 추가로 10초 증가합니다.",
	upgrade_corereroll_stat = "무료 리롤 0회 -> 1회",
	upgrade_preptime2_name = "정비 시간 II",
	upgrade_corereroll_desc = "코어 선택지를 런당 1회 무료 리롤할 수 있습니다.",
	upgrade_growthbranch_stat = "3성 특성 선택 비활성화 -> 활성화",
	upgrade_corereroll_name = "코어 리롤",
	upgrade_growthbranch_desc = "3성 승급 시 서로 다른 특성을 가진 후보 3개 중 하나를 선택할 수 있게 됩니다.",
	upgrade_slotrare_stat = "희귀 0% -> 2%",
	upgrade_growthbranch_name = "성장 분기",
	upgrade_slotrare_desc = "희귀 유닛이 등장하기 시작합니다.",
	upgrade_dormantpower_stat = "각성 비활성화 -> 활성화",
	upgrade_slotrare_name = "희귀 잠금해제",
	upgrade_dormantpower_desc = "유닛 각성 시스템을 해금합니다.",
	upgrade_slotadvanced3_stat = "고급 10% -> 15%",
	upgrade_dormantpower_name = "잠든 힘",
	upgrade_slotadvanced3_desc = "고급 유닛 등장 확률이 추가로 증가합니다.",
	upgrade_interest_stat = "이자 {gold.png} 0 -> 50",
	upgrade_slotadvanced3_name = "고급 연구 II",
	upgrade_interest_desc = "전투 시작 시 보유 {gold.png} 100 당 {gold.png} 10 을 획득합니다. 최대 {gold.png} 50 까지 획득합니다.",
	upgrade_slotadvanced2_stat = "고급 5% -> 10%",
	upgrade_interest_name = "전술적 이자",
	upgrade_slotadvanced2_desc = "고급 유닛 등장 확률이 증가합니다.",
	upgrade_preptime_stat = "60초 -> 70초",
	upgrade_slotadvanced2_name = "고급 연구 I",
	upgrade_preptime_desc = "준비 시간이 10초 증가합니다.",
	upgrade_slotadvanced_stat = "고급 0% -> 5%",
	upgrade_preptime_name = "정비 시간 I",
	upgrade_slotadvanced_desc = "고급 유닛이 등장하기 시작합니다.",
	upgrade_slotnudge_stat = "넛지 스핀 비용 절감",
	upgrade_slotadvanced_name = "고급 잠금해제",
	upgrade_slotnudge_desc = "넛지를 사용했지만 새 당첨이 없으면 다음 스핀 비용 {gold.png} -50.",
	upgrade_slotodds_stat = "잠금 -> 해방",
	upgrade_slotnudge_name = "넛지 숙련",
	upgrade_slotodds_desc = "업그레이드의 봉인이 풀립니다.",
	upgrade_maxhp2_stat = "6 -> 7",
	upgrade_slotodds_name = "개방의 문장",
	imprint_gained_label = "획득 각인",
	upgrade_startgold2_stat = "시작 {gold.png} 500 -> 550",
	upgrade_startgold2_desc = "{gold.png} 50 을 추가로 시작합니다.",
	upgrade_maxhp_desc = "최대 목숨이 1 증가합니다.",
	upgrade_startgold2_name = "보급 창고",
	upgrade_maxhp_name = "여분의 목숨 I",
	upgrade_comebackgold_stat = "패배 후 {gold.png} 0 -> 100",
	upgrade_title = "업그레이드",
	upgrade_comebackgold_desc = "전투 패배 후 런이 계속되면 {gold.png} 100 을 얻습니다.",
	settings_back = "뒤로가기",
	upgrade_comebackgold_name = "재도전 보급",
	settings_chinese = "简体中文",
	upgrade_gateheal_stat = "목숨 회복",
	settings_japanese = "日本語",
	upgrade_gateheal_desc = "심판/보스 웨이브 클리어 시 목숨을 1 회복합니다.",
	settings_english = "English",
	upgrade_gateheal_name = "관문 회복",
	settings_korean = "한국어",
	upgrade_comebackspin_stat = "첫 스핀 당첨 보장",
	settings_disabled = "비활성화",
	upgrade_comebackspin_desc = "목숨 감소 후 다음 첫 스핀 당첨 보장. 런당 1회.",
	settings_enabled = "활성화",
	upgrade_comebackspin_name = "반격의 레버",
	settings_tutorial = "튜토리얼",
	imprint_absorb_cancel = "흡수 취소",
	settings_language = "언어",
	imprint_convert_prefix = "흡수 LV로 전환 +",
	settings_sfx_volume = "효과음",
	imprint_mode_replace = "교체",
	settings_bgm_volume = "배경음",
	imprint_mode_keep = "유지",
	settings_master_volume = "마스터 볼륨",
	imprint_absorb_stat_fmt = "공격력 +%.1f%%  공격속도 +%.1f%%  체력 +%.1f%%",
	settings_vsync = "수직 동기화",
	settings_fullscreen = "전체화면",
	settings_borderless = "테두리 없는 창",
	settings_windowed = "창모드",
	settings_display_mode = "화면 모드",
	settings_title = "설정",
	menu_no = "아니오",
	menu_yes = "예",
	menu_exit_confirm = "정말 게임을 종료하시겠습니까?",
	joker_symbol_tooltip = "모든 유닛 심볼로 간주됩니다.",
	core_scroll_remaining_spins_tooltip = "다음 코어까지 남은 스핀",
	slot_remaining_spins_tooltip = "남은 스핀 횟수",
	stat_tooltip_pwr = "전투력",
	stat_tooltip_dist = "공격사거리",
	stat_tooltip_aspd = "공격속도",
	stat_tooltip_atk = "공격력",
	stat_tooltip_hp = "체력",
	class_promotion = "클래스 승급",
	defeat_title = "패배",
	play_time_label = "플레이 시간",
	pause_no = "아니오",
	pause_yes = "예",
	pause_mainmenu_confirm = "정말로 메인메뉴로 돌아가시겠습니까?",
	pause_restart_confirm = "정말 게임을 다시 시작 하시겠습니까?",
	stone_panel_title = "운명 스톤",
	btn_skip = "스킵",
	btn_reroll = "리롤",
	btn_confirm = "확인",
	btn_discard = "버리기",
	btn_back = "뒤로",
	reroll_desc = "상점 항목들을 리롤 합니다",
	reroll_name = "리롤",
	delete_mode_desc_upgraded = "보유한 아이템을 삭제합니다. 삭제 시 가격의 80%를 환급받습니다.",
	delete_mode_desc = "보유한 아이템을 삭제합니다. 삭제 시 가격의 50%를 환급받습니다.",
	delete_mode_name = "삭제 모드",
	item_type_training = "훈련",
	item_type_battle = "전투",
	passive_label = "패시브",
	cooldown_fmt = "쿨타임 %d초",
	spawn_chance_fmt = "확률 %s",
	spawn_jackpot_only = "잭팟 전용",
	spawn_orc_raider = "오크 습격자",
	duration_waves_fmt = "지속: %d 웨이브",
	duration_permanent = "지속: 영구",
	wave_power_gap_label = "전력차",
	wave_countdown_left = " 남음",
	wave_countdown_until = " 까지 ",
	wave_countdown_boss = "보스",
	wave_countdown_judge = "심판",
	menu_stage_name_6 = "갈라진 우주",
	wave_label_fmt = "웨이브 %d",
	menu_stage_name_5 = "붉은 지옥",
	imprint_locked = "잠김",
	menu_stage_name_3 = "메마른 황야",
	imprint_empty_slot = "빈 슬롯",
	menu_stage_name_2 = "깊은 동굴",
	menu_stage_name_1 = "열린 숲",
	menu_stage_1_title = "열린 숲",
	menu_stage = "스테이지",
	menu_pause = "일시정지",
	menu_difficulty_locked_hint = "이전 난이도를 클리어하면 해금됩니다.",
	menu_full_version_locked_hint = "풀버전에서 이용할 수 있어요",
	menu_collection_locked_hint = "풀 버전에서 이용할 수 있어요",
	class_option_fallback = "옵션 ",
	menu_achievement_locked_hint = "풀 버전에서 이용할 수 있어요",
	class_select_title = "클래스 선택",
	menu_discord = "디스코드",
	menu_achievement = "도전과제",
	menu_collection = "도감",
	upgrade_action_upgrade = "업그레이드",
	menu_exit = "종료",
	upgrade_maxed = "최대",
	menu_settings = "설정",
	upgrade_maxunit_desc = "최대 배치 유닛 수가 1 증가합니다.",
	menu_play = "플레이",
	upgrade_maxunit_name = "지휘 한도 I",
	menu_start = "게임 시작"
}
var_0_0.en = {
	upgrade_maxhp2_name = "Extra Life II",
	upgrade_maxhp2_desc = "Increases maximum lives by 1.",
	upgrade_shopreroll_desc = "Shop reroll cost is reduced by 1.",
	upgrade_maxunit3_desc = "Increases the maximum deployed unit count by 1 more.",
	upgrade_shoppin_desc = "Keep 1 shop item through the next refresh. Once per run.",
	upgrade_itemresearch_name = "Specialist Item Research I",
	upgrade_shoppin_name = "Product Pin",
	upgrade_iteminventory2_stat = "Item slots 7 -> 8",
	upgrade_itemresearch_stat = "2 specialist items added",
	upgrade_shoppin_stat = "Pin product",
	upgrade_itemresearch_desc = "Piercing Manual and Arcane Training can appear in the shop.",
	upgrade_action_select_move = "Select / Move",
	upgrade_unlock_label = "Core Unlock",
	upgrade_action_zoom = "Zoom In / Out",
	upgrade_startingmerccontract_desc = "Start each run with the expedition core \"Merc Contract\".",
	upgrade_iteminventory2_desc = "Item slots increase by 1.",
	upgrade_startingmerccontract_name = "Expedition Supply",
	upgrade_iteminventory2_name = "Item Slot Expansion II",
	upgrade_startgold_stat = "Starting {gold.png} 450 -> 500",
	upgrade_itemrefund_stat = "Refund rate 50% -> 80%",
	upgrade_startgold_desc = "Start with an additional {gold.png} 50.",
	upgrade_itemrefund_desc = "Item deletion refund rate increases from 50% to 80%.",
	upgrade_startgold_name = "Initial Supply",
	upgrade_itemrefund_name = "Recycling Ledger",
	upgrade_noviceshield_stat = "First life loss 0 -> 1",
	upgrade_iteminventory_stat = "Item slots 6 -> 7",
	upgrade_noviceshield_desc = "Prevents the first life loss once during waves 1~4.",
	upgrade_iteminventory_desc = "Item slots increase by 1.",
	upgrade_noviceshield_name = "Novice Shield",
	upgrade_iteminventory_name = "Item Slot Expansion I",
	upgrade_maxunit3_stat = "7 -> 8",
	upgrade_shopreroll_stat = "Shop reroll cost reduction 0 -> 1",
	upgrade_action_back = "Back",
	upgrade_maxunit3_name = "Command Limit III",
	upgrade_maxunit2_stat = "6 -> 7",
	upgrade_shopreroll_name = "Shop Reroll",
	upgrade_maxunit2_desc = "Increases the maximum deployed unit count by 1 more.",
	upgrade_firstcoreuncommon_stat = "Uncommon core appears",
	upgrade_maxunit2_name = "Command Limit II",
	upgrade_firstcoreuncommon_desc = "Guarantees 1 uncommon-or-higher core in the first core choices.",
	upgrade_preptimerdisabled_stat = "80s -> {infinity}",
	upgrade_firstcoreuncommon_name = "Radiant Awakening",
	upgrade_preptimerdisabled_desc = "Removes the preparation time limit.",
	upgrade_firstcorespin_stat = "First core required spins 0 -> -1",
	upgrade_preptimerdisabled_name = "Unbound Preparation",
	upgrade_firstcorespin_desc = "Reduces the spins required for the first core choice by 1.",
	upgrade_preptime2_stat = "70s -> 80s",
	upgrade_firstcorespin_name = "Quick Awakening",
	upgrade_preptime2_desc = "Increases preparation time by an additional 10 seconds.",
	upgrade_corereroll_stat = "Free reroll 0 -> 1",
	upgrade_preptime2_name = "Prep Time II",
	upgrade_corereroll_desc = "You can reroll core choices once per run for free.",
	upgrade_growthbranch_stat = "3-star trait choice disabled -> enabled",
	upgrade_corereroll_name = "Core Reroll",
	upgrade_growthbranch_desc = "On 3-star promotion, choose one of three candidates with different traits.",
	upgrade_slotrare_stat = "Rare 0% -> 2%",
	upgrade_growthbranch_name = "Growth Branch",
	upgrade_slotrare_desc = "Rare units begin to appear.",
	upgrade_dormantpower_stat = "Awakening disabled -> enabled",
	upgrade_slotrare_name = "Rare Unlock",
	upgrade_dormantpower_desc = "Unlocks the unit Awakening system.",
	upgrade_slotadvanced3_stat = "Advanced 10% -> 15%",
	upgrade_dormantpower_name = "Dormant Power",
	upgrade_slotadvanced3_desc = "Further increases the appearance chance of advanced units.",
	upgrade_interest_stat = "Interest {gold.png} 0 -> 50",
	upgrade_slotadvanced3_name = "Advanced Research II",
	upgrade_interest_desc = "At battle start, gain {gold.png} 10 per {gold.png} 100 held, up to {gold.png} 50.",
	upgrade_slotadvanced2_stat = "Advanced 5% -> 10%",
	upgrade_interest_name = "Tactical Interest",
	upgrade_slotadvanced2_desc = "Increases the appearance chance of advanced units.",
	upgrade_preptime_stat = "60s -> 70s",
	upgrade_slotadvanced2_name = "Advanced Research I",
	upgrade_preptime_desc = "Increases preparation time by 10 seconds.",
	upgrade_slotadvanced_stat = "Advanced 0% -> 5%",
	upgrade_preptime_name = "Prep Time I",
	upgrade_slotadvanced_desc = "Advanced units begin to appear.",
	upgrade_slotnudge_stat = "Nudge spin cost reduction",
	upgrade_slotadvanced_name = "Advanced Unlock",
	upgrade_slotnudge_desc = "If a nudge creates no new win, the next spin costs {gold.png} 50 less.",
	upgrade_slotodds_stat = "Locked -> Unsealed",
	upgrade_slotnudge_name = "Nudge Mastery",
	upgrade_slotodds_desc = "The seal on upgrades is broken.",
	upgrade_maxhp2_stat = "6 -> 7",
	upgrade_slotodds_name = "Sigil of Unsealing",
	imprint_gained_label = "Imprint",
	upgrade_startgold2_stat = "Starting {gold.png} 500 -> 550",
	upgrade_startgold2_desc = "Start with an additional {gold.png} 50.",
	upgrade_maxhp_desc = "Increases maximum lives by 1.",
	upgrade_startgold2_name = "Supply Warehouse",
	upgrade_maxhp_name = "Extra Life I",
	upgrade_comebackgold_stat = "After defeat {gold.png} 0 -> 100",
	upgrade_title = "UPGRADE",
	upgrade_comebackgold_desc = "Gain {gold.png} 100 after a defeat if the run continues.",
	settings_back = "Back",
	upgrade_comebackgold_name = "Retry Supply",
	settings_chinese = "简体中文",
	upgrade_gateheal_stat = "Life recovery",
	settings_japanese = "日本語",
	upgrade_gateheal_desc = "Recover 1 life after clearing a Judgement or Boss wave.",
	settings_english = "English",
	upgrade_gateheal_name = "Gate Recovery",
	settings_korean = "한국어",
	upgrade_comebackspin_stat = "First spin guaranteed win",
	settings_disabled = "Disabled",
	upgrade_comebackspin_desc = "After losing life, guarantee the next spin wins. Once per run.",
	settings_enabled = "Enabled",
	upgrade_comebackspin_name = "Comeback Lever",
	settings_tutorial = "Tutorial",
	imprint_absorb_cancel = "Cancel",
	settings_language = "Language",
	imprint_convert_prefix = "Convert to Absorb LV +",
	settings_sfx_volume = "SFX",
	imprint_mode_replace = "Replace",
	settings_bgm_volume = "BGM",
	imprint_mode_keep = "Keep",
	settings_master_volume = "Master Volume",
	imprint_absorb_stat_fmt = "ATK +%.1f%%  ASPD +%.1f%%  HP +%.1f%%",
	settings_vsync = "V-Sync",
	settings_fullscreen = "Fullscreen",
	settings_borderless = "Borderless",
	settings_windowed = "Windowed",
	settings_display_mode = "Display Mode",
	settings_title = "Settings",
	menu_no = "No",
	menu_yes = "Yes",
	menu_exit_confirm = "Are you sure you want to exit?",
	joker_symbol_tooltip = "Counts as every unit symbol.",
	core_scroll_remaining_spins_tooltip = "Spins Until Next Core",
	slot_remaining_spins_tooltip = "Spins Left",
	stat_tooltip_pwr = "Power",
	stat_tooltip_dist = "Attack Range",
	stat_tooltip_aspd = "Attack Speed",
	stat_tooltip_atk = "Attack",
	stat_tooltip_hp = "Health",
	class_promotion = "Class Promotion",
	defeat_title = "Defeat",
	play_time_label = "Play Time",
	pause_no = "No",
	pause_yes = "Yes",
	pause_mainmenu_confirm = "Return to main menu?",
	pause_restart_confirm = "Restart the game?",
	stone_panel_title = "Fate Stone",
	btn_skip = "Skip",
	btn_reroll = "Reroll",
	btn_confirm = "Confirm",
	btn_discard = "Discard",
	btn_back = "Back",
	reroll_desc = "Rerolls all items in the shop.",
	reroll_name = "Reroll",
	delete_mode_desc_upgraded = "Delete a held item. Refunds 80% of its price.",
	delete_mode_desc = "Delete a held item. Refunds 50% of its price.",
	delete_mode_name = "Delete Mode",
	item_type_training = "Training",
	item_type_battle = "Battle",
	passive_label = "Passive",
	cooldown_fmt = "Cooldown: %ds",
	spawn_chance_fmt = "Chance: %s",
	spawn_jackpot_only = "Jackpot Only",
	spawn_orc_raider = "Orc Raider",
	duration_waves_fmt = "%d waves",
	duration_permanent = "Permanent",
	wave_power_gap_label = "Pwr Gap",
	wave_countdown_left = " left",
	wave_countdown_until = " until ",
	wave_countdown_boss = "Boss",
	wave_countdown_judge = "Judgment",
	menu_stage_name_6 = "Split Space",
	wave_label_fmt = "Wave %d",
	menu_stage_name_5 = "Crimson Hell",
	imprint_locked = "Locked",
	menu_stage_name_3 = "Wasteland",
	imprint_empty_slot = "Empty",
	menu_stage_name_2 = "Deep Cave",
	menu_stage_name_1 = "Open Forest",
	menu_stage_1_title = "Open Forest",
	menu_stage = "Stage",
	menu_pause = "Pause",
	menu_difficulty_locked_hint = "Clear the previous difficulty to unlock this.",
	menu_full_version_locked_hint = "Available in the full version",
	menu_collection_locked_hint = "Available in the full version",
	class_option_fallback = "Option ",
	menu_achievement_locked_hint = "Available in the full version",
	class_select_title = "Class Select",
	menu_discord = "Discord",
	menu_achievement = "GOALS",
	menu_collection = "COLLECTION",
	upgrade_action_upgrade = "Upgrade",
	menu_exit = "Exit",
	upgrade_maxed = "MAX",
	menu_settings = "Settings",
	upgrade_maxunit_desc = "Increases the maximum number of deployed units by 1.",
	menu_play = "Play",
	upgrade_maxunit_name = "Command Limit I",
	menu_start = "Start Game"
}
var_0_0.unitNameMap = {
	["엘프 법사"] = "Elf Mage",
	듀라한 = "Dullahan",
	화령술사 = "Flamecaller",
	운디네 = "Undine",
	수정술사 = "Crystal Mage",
	["데스 나이트"] = "Death Knight",
	["불 정령"] = "Fire Spirit",
	그리즐 = "Grizzle",
	흑마법사 = "Dark Mage",
	워베어 = "Warbear",
	아크메이지 = "Archmage",
	성기병 = "Holy Cavalier",
	해골술사 = "Bone Mage",
	["해골 중기병"] = "Skull Lancer",
	예언자 = "Oracle",
	["엘프 중기병"] = "Elf Lancer",
	["그린 섀도우"] = "Green Shadow",
	["하이 엘프 기병"] = "High Elf Cavalry",
	천공병 = "Sky Spearman",
	["광폭 기병"] = "Rampage Cavalry",
	랜스마스터 = "Lance Master",
	["야만 기병"] = "Barbarian Cavalry",
	랜서 = "Lancer",
	["엘프 기병"] = "Elf Cavalry",
	전사 = "Warrior",
	중기병 = "Heavy Cavalry",
	철퇴병 = "Mace Soldier",
	돌격병 = "Charger",
	["사수 병사"] = "Marksman Soldier",
	철기병 = "Iron Cavalry",
	해적 = "Pirate",
	후사르 = "Hussar",
	기사 = "Knight",
	["윙드 후사르"] = "Winged Hussar",
	켄타우로스 = "Centaur",
	["엘프 주술사"] = "Elf Shaman",
	켄타로우스 = "Centaur",
	병사 = "Soldier",
	["초원 기병"] = "Steppe Cavalry",
	["로빈 후드"] = "Robin Hood",
	아포칼립스 = "Apocalypse",
	바이올 = "Viol",
	["초승달 여왕"] = "Crescent Queen",
	["바이올렛 둠"] = "Violet Doom",
	월광사제 = "Moon Priestess",
	창술사 = "Spear Adept",
	사령기병 = "Dread Cavalry",
	발키리 = "Valkyrie",
	환수기병 = "Beast Cavalry",
	창병 = "Spearman",
	크로노워커 = "Chrono Walker",
	예지술사 = "Diviner",
	페이즈 = "Phase",
	마법사 = "Mage",
	실반 = "Sylvan",
	심연술사 = "Abyss Mage",
	["숲의 심장"] = "Wildheart",
	워록 = "Warlock",
	경기병 = "Light Cavalry",
	["화염 정령"] = "Flame Spirit",
	셰이드 = "Shade",
	비술사 = "Arcanist",
	["파멸의 천사"] = "Angel of Ruin",
	망령 = "Wraith",
	타락천사 = "Fallen Angel",
	루시엘 = "Luciel",
	도미니온 = "Dominion",
	카오스 = "Chaos",
	대천사 = "Archangel",
	글로리 = "Glory",
	천사 = "Angel",
	글룸 = "Gloom",
	수호자 = "Guardian",
	["암흑 장군"] = "Dark General",
	기병 = "Cavalry",
	["최고 유닛"] = "Best Unit",
	나이트메어 = "Nightmare",
	기본 = "Basic",
	젠 = "Zen",
	["본 메이지"] = "Bone Mage",
	["암흑 술사"] = "Dark Mage",
	페럿 = "Ferret",
	["현자 엘프"] = "Sage Elf",
	곰 = "Bear",
	안틀러 = "Antler",
	["페럿 조련사 (Ferret Tamer)"] = "Ferret Tamer",
	["루나 현자"] = "Luna Sage",
	["환술사 (Illusionist)"] = "Illusionist",
	리치로드 = "Lich Lord",
	환술사 = "Illusionist",
	리치 = "Lich",
	MiniSwordMan02 = "Soldier",
	망자 = "Undead",
	["광대 (Jester)"] = "Jester",
	부패자 = "Rotter",
	광대 = "Jester",
	["언데드 거한"] = "Undead Brute",
	MiniArcherMan03 = "Longbowman",
	["언데드 흉물"] = "Undead Abomination",
	MiniSpearMan02 = "Spearguard",
	["망자 도살자"] = "Undead Butcher",
	["미끼 인형"] = "Decoy Dummy",
	["망자 검병"] = "Undead Swordman",
	DecoyDummy = "Decoy Dummy",
	["해골 마도사"] = "Skull Mage",
	MiniHorseMan03_hp03 = "Elf Cavalry",
	["원시 법사"] = "Primitive Mage",
	MiniColossus = "Colossus",
	["엘프 현자"] = "Elf Sage",
	["해골 투사_aspd02"] = "Skull Fighter",
	치유술사 = "Healer",
	MiniHorseMan03_hp02 = "Holy Cavalier",
	대주술사 = "Arch-Shaman",
	MiniHorseMan = "Cavalry",
	마도사 = "Sorcerer",
	MiniSpearMan03 = "Guard",
	["야생 법사"] = "Wild Mage",
	MiniSpearMan = "Spearman",
	슬레이어 = "Slayer",
	MiniArcherMan02 = "Crossbowman",
	["해골 투사"] = "Skull Fighter",
	대마법사 = "Archmage",
	["엘프 기사"] = "Elf Knight",
	주술사 = "Shaman",
	성기사 = "Holy Knight",
	샐러맨더 = "Salamander",
	["엘프 병사"] = "Elf Soldier",
	MiniPanther = "Black Panther",
	금단술사 = "Forbidden Mage",
	["멧돼지 (Boar.png)"] = "Boar",
	엘드가드 = "Eldguard",
	멧돼지 = "Boar",
	침묵병 = "Silencer",
	GuardianGolem = "Guardian Golem",
	허스칼 = "Huscarl",
	["흑표범 (Black Panther)"] = "Black Panther",
	["해골 근위병"] = "Skull Guard",
	흑표범 = "Black Panther",
	["엘프 근위병"] = "Elf Guard",
	["소울 리퍼"] = "Soul Reaper",
	["수호 골렘"] = "Guardian Golem",
	크러셔 = "Crusher",
	MiniHorseMan03 = "Heavy Cavalry",
	["엘프 창병"] = "Elf Spearman",
	MiniMage = "Mage",
	약탈자 = "Raider",
	FerretTamer = "Ferret Tamer",
	근위병 = "Guard",
	RingmasterFerret = "Ferret",
	창위병 = "Spearguard",
	MiniPrinceMan = "Duelist",
	보병 = "Infantry",
	검황 = "Sword Emperor",
	["투기 창병"] = "Arena Spearman",
	검성제 = "Sword Emperor",
	글래디에이터 = "Gladiator",
	성황 = "Holy Emperor",
	스파르타 = "Spartan",
	해적왕 = "Pirate King",
	["고대 창병"] = "Ancient Spearman",
	황제 = "Emperor",
	창투사 = "Spear Fighter",
	결투사 = "Duelist",
	처형자 = "Executioner",
	우르간 = "Urgan",
	망령병 = "Wraith Spearman",
	["데스 로드"] = "Death Lord",
	흑위병 = "Black Guard",
	MiniArcherMan = "Archer",
	["백골 창병"] = "Bone Spearman",
	MiniSwordMan03 = "Knight",
	미라지 = "Mirage",
	트릭스터 = "Trickster",
	레이븐 = "Raven",
	["트릭스터 (Trickster)"] = "Trickster",
	환영사수 = "Illusion Archer",
	MiniSwordMan = "Warrior",
	암흑사수 = "Dark Archer",
	늑대 = "Wolf",
	해골궁수 = "Skeleton Archer",
	["페럿 조련사"] = "Ferret Tamer",
	궁수 = "Archer",
	["곰 (Bear)"] = "Bear",
	염투사 = "Flame Fighter",
	["서커스 단장"] = "Ringmaster",
	템플러 = "Templar",
	["서커스 단장 (Ringmaster)"] = "Ringmaster",
	투사 = "Fighter",
	["거신 (Colossus)"] = "Colossus",
	마그누스 = "Magnus",
	암사수 = "Dark Archer",
	게이즈 = "Gaze",
	["해골 사수"] = "Skull Marksman",
	마검사 = "Magic Swordsman",
	["엘프 사수"] = "Elf Marksman",
	암검사 = "Dark Swordsman",
	순찰자 = "Patroller",
	폭파대장 = "Demolitionist",
	장궁병 = "Longbowman",
	캐노니어 = "Cannoneer",
	["엘프 궁수"] = "Elf Archer",
	척탄병 = "Grenadier",
	명궁 = "Sharpshooter",
	화포수 = "Artillerist",
	큐피드 = "Cupid",
	총포수 = "Gunslinger",
	은빛사수 = "Silver Sniper",
	정찰병 = "Scout",
	이클립스 = "Eclipse",
	프랑켄슈타인 = "Frankenstein",
	세라프 = "Seraph",
	["엔트 로드"] = "Ent Lord",
	석궁수 = "Crossbowman",
	빅터 = "Victor",
	["페럿 (Ferret)"] = "Ferret",
	엔트 = "Ent",
	유닛 = "Unit",
	드루이드 = "Druid",
	거신 = "Colossus",
	바그 = "Bagg",
	["우드 워든"] = "Wood Warden",
	레버넌트 = "Revenant",
	팔라딘 = "Paladin",
	RarePaladin = "Paladin",
	심판관 = "Arbiter",
	서리칼날 = "Frostblade",
	빙결여제 = "Frost Empress",
	플레어 = "Flare",
	소울리퍼 = "Soul Reaper",
	리퍼 = "Reaper",
	스펙터 = "Specter",
	["사신 기사"] = "Reaper Knight",
	["화염 기사"] = "Fire Knight",
	["공허 기사"] = "Void Knight",
	암기사 = "Shadow Knight",
	["야수 기사"] = "Beast Knight",
	["해골 기사"] = "Skull Fighter",
	성배기사 = "Grail Knight",
	팬텀 = "Phantom",
	백기사 = "White Knight"
}
var_0_0.unitNameDisplayMap = {
	Dullahan = "듀라한",
	Specter = "스펙터",
	["리퍼 (Reaper)"] = "리퍼",
	우드워든 = "우드 워든",
	암흑장군 = "암흑 장군",
	엘프기병 = "엘프 기병",
	본메이지 = "본 메이지",
	암흑술사 = "암흑 술사",
	원시법사 = "원시 법사",
	야생법사 = "야생 법사",
	엘프법사 = "엘프 법사",
	엘프창병 = "엘프 창병",
	엘프궁수 = "엘프 궁수",
	엔트로드 = "엔트 로드",
	사신기사 = "사신 기사",
	화염기사 = "화염 기사",
	공허기사 = "공허 기사",
	야수기사 = "야수 기사",
	해골기사 = "해골 기사",
	엘프기사 = "엘프 기사",
	엘프병사 = "엘프 병사",
	["켄타로우스 (Centaur)"] = "켄타우로스",
	["심연술사 (Abyss Mage)"] = "심연술사",
	["흑마법사 (Dark Mage)"] = "흑마법사",
	["워록 (Warlock)"] = "워록",
	["아크메이지 (Archmage)"] = "아크메이지",
	["사령기병 (Dread Cavalry)"] = "사령기병",
	["환수기병 (Beast Cavalry)"] = "환수기병",
	["실반 (Sylvan)"] = "실반",
	["페이즈 (Phase)"] = "페이즈",
	["크로노워커 (Chrono Walker)"] = "크로노워커",
	["숲의 심장 (Wildheart)"] = "숲의 심장",
	["나이트메어 (Nightmare)"] = "나이트메어",
	["월광사제 (Moon Priestess)"] = "월광사제",
	["초승달 여왕 (Crescent Queen)"] = "초승달 여왕",
	["아포칼립스 (Apocalypse)"] = "아포칼립스",
	["셰이드 (Shade)"] = "셰이드",
	["천사 (Angel)"] = "천사",
	["대천사 (Archangel)"] = "대천사",
	["도미니온 (Dominion)"] = "도미니온",
	["타락천사 (Fallen Angel)"] = "타락천사",
	["파멸의 천사 (Angel of Ruin)"] = "파멸의 천사",
	["Lance Master"] = "랜스마스터",
	LegendarySpecter = "스펙터",
	Valkyrie = "발키리",
	CrownRevenant = "레버넌트",
	["Spear Adept"] = "창술사",
	["성배기사 (Grail Knight)"] = "성배기사",
	["Sky Spearman"] = "천공병",
	["백기사 (White Knight)"] = "백기사",
	Lancer = "랜서",
	["슬레이어 (Slayer)"] = "슬레이어",
	["명궁 (Sharpshooter)"] = "명궁",
	["금단술사 (Forbidden Mage)"] = "금단술사",
	["리치로드 (Lich Lord)"] = "리치로드",
	["리치 (Lich)"] = "리치",
	["망자 (Undead)"] = "망자",
	["부패자 (Rotter)"] = "부패자",
	["언데드 거한 (Undead Brute)"] = "언데드 거한",
	["언데드 흉물 (Undead Abomination)"] = "언데드 흉물",
	["망자 도살자 (Undead Butcher)"] = "망자 도살자",
	["Angel of Ruin"] = "파멸의 천사",
	["예지술사 (Diviner)"] = "예지술사",
	["예언자 (Oracle)"] = "예언자",
	["큐피드 (Cupid)"] = "큐피드",
	["은빛사수 (Silver Sniper)"] = "은빛사수",
	["세라프 (Seraph)"] = "세라프",
	["이클립스 (Eclipse)"] = "이클립스",
	["랜서 (Lancer)"] = "랜서",
	["천공병 (Sky Spearman)"] = "천공병",
	["창술사 (Spear Adept)"] = "창술사",
	["발키리 (Valkyrie)"] = "발키리",
	["랜스마스터 (Lance Master)"] = "랜스마스터",
	Sharpshooter = "명궁",
	["Abyss Mage"] = "심연술사",
	Cupid = "큐피드",
	["Dread Cavalry"] = "사령기병",
	["Silver Sniper"] = "은빛사수",
	켄타로우스 = "켄타우로스",
	Eclipse = "이클립스",
	["Beast Cavalry"] = "환수기병",
	Seraph = "세라프",
	Sylvan = "실반",
	Phase = "페이즈",
	["Chrono Walker"] = "크로노워커",
	Wildheart = "숲의 심장",
	Nightmare = "나이트메어",
	["Lich Lord"] = "리치로드",
	["Moon Priestess"] = "월광사제",
	Lich = "리치",
	["Crescent Queen"] = "초승달 여왕",
	Undead = "망자",
	Apocalypse = "아포칼립스",
	Rotter = "부패자",
	Shade = "셰이드",
	["Undead Brute"] = "언데드 거한",
	Angel = "천사",
	["Undead Abomination"] = "언데드 흉물",
	Archangel = "대천사",
	["Undead Butcher"] = "망자 도살자",
	Dominion = "도미니온",
	["Undead Swordman"] = "망자 검병",
	["Fallen Angel"] = "타락천사",
	["망자 검병 (Undead Swordman)"] = "망자 검병",
	["스펙터 (Specter)"] = "스펙터",
	["Soul Reaper"] = "소울리퍼",
	["듀라한 (Dullahan)"] = "듀라한",
	Reaper = "리퍼",
	["팬텀 (Phantom)"] = "팬텀",
	["해골 투사_aspd02"] = "해골 투사",
	["소울리퍼 (Soul Reaper)"] = "소울리퍼",
	["Dark Mage"] = "흑마법사",
	Warlock = "워록",
	Archmage = "아크메이지",
	Slayer = "슬레이어",
	["Skull Fighter"] = "해골 투사",
	["Grail Knight"] = "성배기사",
	Oracle = "예언자",
	Phantom = "팬텀",
	Diviner = "예지술사",
	["White Knight"] = "백기사",
	["Forbidden Mage"] = "금단술사"
}

function var_0_0.normalizeUnitName(arg_12_0)
	if arg_12_0 == "SpearRevenant" then
		arg_12_0 = "레버넌트"
	end

	return var_0_7("unit.display." .. tostring(arg_12_0 or ""), "ko", var_0_0.unitNameDisplayMap[arg_12_0] or arg_12_0)
end

var_0_0.classTypeMap = {
	파쇄형 = "Breaker",
	범위형 = "Area",
	소환형 = "Summoner",
	공격형 = "Striker",
	확산형 = "Diffusion",
	증폭형 = "Amplifier",
	전면형 = "Frontline",
	치명형 = "Critical",
	공속형 = "Swift",
	균형형 = "Balanced",
	회복형 = "Healer",
	방어형 = "Defender",
	암살형 = "Assassin",
	일반형 = "Normal",
	철벽형 = "Tank"
}

function var_0_0.translateClassType(arg_13_0, arg_13_1)
	arg_13_1 = arg_13_1 or "ko"

	if not arg_13_0 then
		return arg_13_0
	end

	local var_13_0 = arg_13_1 == "en" and (var_0_0.classTypeMap[arg_13_0] or arg_13_0) or arg_13_0

	if arg_13_1 == "en" then
		var_13_0 = var_0_9(var_13_0, "")
	end

	return var_0_7("class_type." .. tostring(arg_13_0), arg_13_1, var_13_0)
end

function var_0_0.findUnitName(arg_14_0, arg_14_1)
	local var_14_0 = var_0_0[arg_14_1]

	if type(arg_14_0) ~= "string" or not var_14_0 then
		return nil
	end

	local var_14_1 = var_0_0.normalizeUnitName(arg_14_0)
	local var_14_2 = var_14_0["unit.name." .. arg_14_0] or var_14_0["unit.name." .. tostring(var_14_1)]

	if var_14_2 then
		return var_14_2
	end

	local var_14_3 = var_0_8(arg_14_0)

	if var_14_3 then
		local var_14_4 = arg_14_0:match("^(.-)%s*%([^()]+%)%s*$")
		local var_14_5 = var_14_4 and var_0_0.normalizeUnitName(var_14_4)
		local var_14_6 = var_14_5 and var_14_0["unit.name." .. var_14_5]

		if var_14_6 then
			return var_14_6
		end
	end

	var_14_3 = var_14_3 or var_0_0.unitNameMap[var_14_1] or var_0_0.unitNameMap[arg_14_0] or arg_14_0

	local var_14_7 = var_0_0.normalizeUnitName(var_14_3)
	local var_14_8 = var_14_0["unit.name." .. tostring(var_14_7)] or var_14_0["unit.name." .. var_14_3]

	if var_14_8 then
		return var_14_8
	end

	for iter_14_0, iter_14_1 in ipairs((var_0_0.unitNameAliasKeys or {})[var_14_3] or {}) do
		local var_14_9 = var_14_0["unit.name." .. iter_14_1]

		if var_14_9 then
			return var_14_9
		end
	end

	return nil
end

function var_0_0.translateUnitName(arg_15_0, arg_15_1)
	arg_15_1 = arg_15_1 or "ko"

	if type(arg_15_0) ~= "string" then
		return arg_15_0
	end

	local var_15_0 = arg_15_0
	local var_15_1 = arg_15_0:match("^그림자 (.+)$") or arg_15_0:match("^ENEMY_(.+)$")

	if var_15_1 then
		local var_15_2

		if var_0_0.enemyNameMap[var_15_1] or var_0_0.enemyNameKoMap[var_15_1] or var_0_0.en and var_0_0.en["enemy.name." .. var_15_1] or var_0_0.ko and var_0_0.ko["enemy.name." .. var_15_1] then
			var_15_2 = var_0_0.getEnemyName(var_15_1, nil, arg_15_1)
		else
			var_15_2 = var_0_0.translateUnitName(var_15_1, arg_15_1)
		end

		return string.format(var_0_0.getText("unit_shadow_name_fmt", arg_15_1), var_15_2)
	end

	if arg_15_1 == "en" then
		local var_15_3 = var_0_7("unit.name." .. tostring(var_15_0 or ""), arg_15_1, nil)

		if var_15_3 then
			return var_15_3
		end

		local var_15_4 = var_0_8(var_15_0)

		if var_15_4 then
			return var_0_0.findUnitName(var_15_0, arg_15_1) or var_15_4
		end
	end

	local var_15_5 = var_0_0.findUnitName(arg_15_0, arg_15_1)

	if var_15_5 then
		return var_15_5
	end

	arg_15_0 = var_0_0.normalizeUnitName(arg_15_0)

	if arg_15_0 then
		local var_15_6 = arg_15_1 == "en" and (var_0_0.unitNameMap[arg_15_0] or var_0_0.unitNameMap[var_15_0] or arg_15_0) or arg_15_0

		if arg_15_1 ~= "ko" and arg_15_1 ~= "en" then
			var_15_6 = var_0_0.findUnitName(var_15_0, "en") or var_0_0.unitNameMap[arg_15_0] or var_0_0.unitNameMap[var_15_0] or var_0_8(var_15_0) or arg_15_0
		end

		if arg_15_1 == "en" then
			var_15_6 = var_0_9(var_15_6, var_0_8(var_15_0) or tostring(var_15_0 or arg_15_0 or "")) or "Unknown"
		end

		return var_0_7("unit.name." .. tostring(arg_15_0), arg_15_1, var_15_6)
	end

	return arg_15_0
end

var_0_0.imprintNameMap = {
	execute = "Execute",
	enlarge = "Enlarge",
	shrink = "Shrink",
	chill = "Chill",
	chain = "Chain",
	fear = "Fear",
	self_destruct = "Self-Destruct",
	lifesteal = "Lifesteal",
	block = "Block",
	poison = "Poison",
	knockback = "Knockback",
	bash = "Bash",
	relentless = "Relentless",
	overdrive = "Overdrive",
	transfer = "Transfer",
	blind = "Blind",
	volley = "Volley",
	brace = "Buildup",
	pierce = "Pierce",
	fortify = "Fortify",
	timeless = "Timeless",
	undying_soul = "Undying Soul",
	overlord = "Overlord",
	colossus_descent = "Colossus",
	ruin = "Ruin",
	majesty = "Majesty",
	revival = "Revival",
	rewind = "Rewind",
	soul_split = "Soul Split",
	shadow_clone = "Shadow Clone",
	meteor = "Meteor",
	annihilation = "Annihilation",
	earthquake = "Earthquake"
}
var_0_0.imprintShortDescMap = {
	execute = "Execute",
	enlarge = "Giant Form",
	shrink = "Weaken",
	chill = "Slow",
	chain = "Chain Hit",
	fear = "Panic",
	self_destruct = "Explosion",
	lifesteal = "Lifesteal",
	block = "Block",
	poison = "Poison",
	knockback = "Knockback",
	bash = "Stun",
	relentless = "Combo Speed",
	overdrive = "Kill Boost",
	transfer = "Spread",
	blind = "Blind",
	volley = "Extra Strike",
	brace = "Strike Boost",
	pierce = "Piercing Hit",
	fortify = "DMG Reduce",
	timeless = "Time Stop",
	undying_soul = "Soul",
	overlord = "Shadow Lord",
	colossus_descent = "Colossus",
	ruin = "DoT Aura",
	majesty = "Debuff Foes",
	revival = "Revive",
	rewind = "Time Rewind",
	soul_split = "Soul Split",
	shadow_clone = "Clone",
	meteor = "Cataclysm",
	annihilation = "AoE Blast",
	earthquake = "AoE Stun"
}
var_0_0.imprintDescMap = {
	lifesteal_4 = "Recover 10% of dmg dealt as HP",
	blind_1 = "16% chance on attack: blind target for 0.4s (attacks miss)",
	lifesteal_3 = "Recover 8% of dmg dealt as HP",
	volley_5 = "Every 3rd basic attack immediately strikes the same target again for {atk.png} 130% damage.",
	lifesteal_2 = "Recover 6% of dmg dealt as HP",
	volley_4 = "Every 3rd basic attack immediately strikes the same target again for {atk.png} 100% damage.",
	lifesteal_1 = "Recover 4% of dmg dealt as HP",
	execute_2 = "On hit, instantly kills enemies at 12% HP or less.",
	block_5 = "30% chance to block incoming attacks",
	enlarge_5 = "When hit: 15% chance to become Giant for 5s.",
	block_4 = "26% chance to block incoming attacks",
	enlarge_3 = "When hit: 15% chance to become Giant for 4s.",
	block_3 = "22% chance to block incoming attacks",
	enlarge_4 = "When hit: 15% chance to become Giant for 4.5s.",
	block_2 = "18% chance to block incoming attacks",
	enlarge_2 = "When hit: 15% chance to become Giant for 3.5s.",
	block_1 = "15% chance to block incoming attacks",
	execute_1 = "On hit, instantly kills enemies at 10% HP or less.",
	poison_5 = "25% chance on attack: poison target (lasts 5s)",
	enlarge_1 = "When hit: 15% chance to become Giant for 3s.",
	poison_4 = "25% chance on attack: poison target (lasts 4s)",
	execute_3 = "On hit, instantly kills enemies at 14% HP or less.",
	poison_3 = "25% chance on attack: poison target (lasts 3s)",
	execute_4 = "On hit, instantly kills enemies at 16% HP or less.",
	poison_2 = "25% chance on attack: poison target (lasts 2.5s)",
	execute_5 = "On hit, instantly kills enemies at 18% HP or less.",
	poison_1 = "25% chance on attack: poison target (lasts 2s)",
	earthquake_1 = "On hit, deals 150% ATK damage to all enemies on the battlefield and stuns them.",
	knockback_5 = "18% chance on attack: launch target far away",
	earthquake_2 = "On hit, deals 175% ATK damage to all enemies on the battlefield and stuns them.",
	knockback_4 = "18% chance on attack: powerfully knock back target",
	earthquake_3 = "On hit, deals 200% ATK damage to all enemies on the battlefield and stuns them.",
	knockback_3 = "18% chance on attack: push target back far",
	earthquake_4 = "On hit, deals 225% ATK damage to all enemies on the battlefield and stuns them.",
	knockback_2 = "18% chance on attack: firmly knock back target",
	revival_1 = "Revive once at 40% HP with +20% ATK for 4s",
	knockback_1 = "18% chance on attack: slightly knock back target",
	revival_2 = "Revive once at 50% HP with +25% ATK for 5s",
	rewind_5 = "Records HP and position before the first hit taken. 3s later, returns there and restores 100% of the {hp.png} lost since.",
	revival_3 = "Revive once at 60% HP with +30% ATK for 6s",
	rewind_4 = "Records HP and position before the first hit taken. 3s later, returns there and restores 90% of the {hp.png} lost since.",
	revival_4 = "Revive once at 70% HP with +35% ATK for 7s",
	rewind_3 = "Records HP and position before the first hit taken. 3s later, returns there and restores 80% of the {hp.png} lost since.",
	revival_5 = "Revive once at 80% HP with +40% ATK for 8s",
	rewind_2 = "Records HP and position before the first hit taken. 3s later, returns there and restores 70% of the {hp.png} lost since.",
	majesty_1 = "Presence: all enemies -12% ATK, -15% Max HP",
	rewind_1 = "Records HP and position before the first hit taken. 3s later, returns there and restores 60% of the {hp.png} lost since.",
	majesty_2 = "Presence: all enemies -20% ATK, -23% Max HP",
	soul_split_5 = "Basic attack hits pull the enemy's soul out of its body for 5s. Damage dealt to the soul is also dealt to the body.",
	majesty_3 = "Presence: all enemies -27% ATK, -30% Max HP",
	soul_split_4 = "Basic attack hits pull the enemy's soul out of its body for 4.5s. Damage dealt to the soul is also dealt to the body.",
	majesty_4 = "Presence: all enemies -35% ATK, -38% Max HP",
	soul_split_3 = "Basic attack hits pull the enemy's soul out of its body for 4s. Damage dealt to the soul is also dealt to the body.",
	majesty_5 = "Presence: all enemies -42% ATK, -45% Max HP",
	soul_split_2 = "Basic attack hits pull the enemy's soul out of its body for 3.5s. Damage dealt to the soul is also dealt to the body.",
	ruin_1 = "Presence: all enemies take 6% ATK as DoT/sec",
	soul_split_1 = "Basic attack hits pull the enemy's soul out of its body for 3s. Damage dealt to the soul is also dealt to the body.",
	ruin_2 = "Presence: all enemies take 9% ATK as DoT/sec",
	shadow_clone_5 = "Summon a near-equal clone. Respawns after 2s",
	ruin_3 = "Presence: all enemies take 12% ATK as DoT/sec",
	shadow_clone_4 = "Summon an even more powerful clone. Respawns after 2s",
	ruin_4 = "Presence: all enemies take 16% ATK as DoT/sec",
	shadow_clone_3 = "Summon a powerful clone. Respawns after 2s",
	ruin_5 = "Presence: all enemies take 20% ATK as DoT/sec",
	shadow_clone_2 = "Summon a stronger clone. Respawns after 2s",
	colossus_descent_1 = "Summon a Colossus (HP 200%, ATK 40%)",
	shadow_clone_1 = "Summon a clone to fight alongside you. Respawns after 2s",
	colossus_descent_2 = "Summon a Colossus (HP 240%, ATK 50%)",
	meteor_5 = "Basic attacks have a 10% chance to call down a meteor, dealing 300% {atk.png} damage to each of up to 3 nearby enemies. Higher maximum {hp.png} increases the meteor size and blast radius.",
	colossus_descent_3 = "Summon a Colossus (HP 300%, ATK 60%). Knockback stuns 0.4s",
	meteor_4 = "Basic attacks have a 10% chance to call down a meteor, dealing 270% {atk.png} damage to each of up to 3 nearby enemies. Higher maximum {hp.png} increases the meteor size and blast radius.",
	colossus_descent_4 = "Summon a Colossus (HP 340%, ATK 75%). Knockback stuns 0.6s",
	meteor_3 = "Basic attacks have a 10% chance to call down a meteor, dealing 240% {atk.png} damage to each of up to 3 nearby enemies. Higher maximum {hp.png} increases the meteor size and blast radius.",
	colossus_descent_5 = "Summon a Colossus (HP 400%, ATK 90%). Knockback stuns 0.8s",
	meteor_2 = "Basic attacks have a 10% chance to call down a meteor, dealing 210% {atk.png} damage to each of up to 3 nearby enemies. Higher maximum {hp.png} increases the meteor size and blast radius.",
	overlord_1 = "Turn up to 2 slain enemies into followers",
	meteor_1 = "Basic attacks have a 10% chance to call down a meteor, dealing 180% {atk.png} damage to each of up to 3 nearby enemies. Higher maximum {hp.png} increases the meteor size and blast radius.",
	overlord_2 = "Turn up to 3 slain enemies into followers",
	annihilation_5 = "35% chance: AoE 300% ATK to up to 5 nearby enemies",
	overlord_3 = "Turn up to 4 slain enemies into followers",
	annihilation_4 = "35% chance: AoE 250% ATK to up to 5 nearby enemies",
	overlord_4 = "Turn up to 4 slain enemies into stronger followers",
	annihilation_3 = "35% chance: AoE 210% ATK to up to 5 nearby enemies",
	overlord_5 = "Turn up to 4 slain enemies into powerful followers",
	annihilation_2 = "35% chance: AoE 180% ATK to up to 5 nearby enemies",
	undying_soul_1 = "On death: remain in battle as a Soul (40% ATK)",
	annihilation_1 = "35% chance: AoE 160% ATK to up to 5 nearby enemies",
	undying_soul_2 = "On death: remain in battle as a Soul (60% ATK)",
	earthquake_5 = "On hit, deals 250% ATK damage to all enemies on the battlefield and stuns them.",
	undying_soul_3 = "On death: remain in battle as a Soul (80% ATK)",
	undying_soul_4 = "On death: remain in battle as a Soul (100% ATK)",
	undying_soul_5 = "On death: remain in battle as a Soul (120% ATK)",
	timeless_1 = "8% chance on attack: stop time for 3s",
	timeless_2 = "10% chance on attack: stop time for 3.5s",
	timeless_3 = "12% chance on attack: stop time for 4s",
	timeless_4 = "15% chance on attack: stop time for 5s",
	timeless_5 = "18% chance on attack: stop time for 6s",
	volley_3 = "Every 3rd basic attack immediately strikes the same target again for {atk.png} 80% damage.",
	volley_2 = "Every 3rd basic attack immediately strikes the same target again for {atk.png} 60% damage.",
	volley_1 = "Every 3rd basic attack immediately strikes the same target again for {atk.png} 40% damage.",
	brace_5 = "After a basic attack, the next basic attack is empowered by {atk.png} +80%.",
	brace_4 = "After a basic attack, the next basic attack is empowered by {atk.png} +65%.",
	brace_3 = "After a basic attack, the next basic attack is empowered by {atk.png} +50%.",
	brace_2 = "After a basic attack, the next basic attack is empowered by {atk.png} +35%.",
	brace_1 = "After a basic attack, the next basic attack is empowered by {atk.png} +25%.",
	pierce_5 = "Basic attacks pierce up to 3 additional targets, dealing {atk.png} 45% damage.",
	pierce_4 = "Basic attacks pierce up to 2 additional targets, dealing {atk.png} 45% damage.",
	pierce_3 = "Basic attacks pierce up to 2 additional targets, dealing {atk.png} 35% damage.",
	pierce_2 = "Basic attacks pierce up to 1 additional target, dealing {atk.png} 35% damage.",
	pierce_1 = "Basic attacks pierce up to 1 additional target, dealing {atk.png} 25% damage.",
	fortify_5 = "DMG taken -34%",
	fortify_4 = "DMG taken -31%",
	fortify_3 = "DMG taken -27%",
	fortify_2 = "DMG taken -22%",
	fortify_1 = "DMG taken -15%",
	shrink_5 = "On basic attack, has a 20% chance to shrink the enemy for 3 seconds. Shrunk enemies have {atk.png} -10%, and their {aspd.png} becomes slower than this unit.",
	shrink_4 = "On basic attack, has a 16% chance to shrink the enemy for 3 seconds. Shrunk enemies have {atk.png} -10%, and their {aspd.png} becomes slower than this unit.",
	shrink_3 = "On basic attack, has a 14% chance to shrink the enemy for 3 seconds. Shrunk enemies have {atk.png} -10%, and their {aspd.png} becomes slower than this unit.",
	bash_5 = "18% chance on attack: stun target for 1.3s",
	shrink_2 = "On basic attack, has a 12% chance to shrink the enemy for 3 seconds. Shrunk enemies have {atk.png} -10%, and their {aspd.png} becomes slower than this unit.",
	bash_4 = "18% chance on attack: stun target for 1.1s",
	shrink_1 = "On basic attack, has a 10% chance to shrink the enemy for 3 seconds. Shrunk enemies have {atk.png} -10%, and their {aspd.png} becomes slower than this unit.",
	bash_3 = "18% chance on attack: stun target for 0.9s",
	chill_5 = "On attack: slow target's move & ASPD by 45%",
	bash_2 = "18% chance on attack: stun target for 0.7s",
	chill_4 = "On attack: slow target's move & ASPD by 40%",
	bash_1 = "18% chance on attack: stun target for 0.5s",
	chill_3 = "On attack: slow target's move & ASPD by 35%",
	relentless_5 = "Gain {aspd.png} +6% per consecutive attack (max 6 stacks)",
	chill_2 = "On attack: slow target's move & ASPD by 30%",
	relentless_4 = "Gain {aspd.png} +6% per consecutive attack (max 5 stacks)",
	chill_1 = "On attack: slow target's move & ASPD by 25%",
	relentless_3 = "Gain {aspd.png} +5% per consecutive attack (max 5 stacks)",
	chain_5 = "On hit: chain to 5 nearest enemies",
	relentless_2 = "Gain {aspd.png} +5% per consecutive attack (max 4 stacks)",
	chain_4 = "On hit: chain to 4 nearest enemies",
	relentless_1 = "Gain {aspd.png} +4% per consecutive attack (max 4 stacks)",
	chain_3 = "On hit: chain to 3 nearest enemies",
	overdrive_5 = "After defeating an enemy, the next basic attack is empowered by {atk.png} +175%.",
	chain_2 = "On hit: chain to 2 nearest enemies",
	overdrive_4 = "After defeating an enemy, the next basic attack is empowered by {atk.png} +150%.",
	chain_1 = "On hit: chain to 1 nearest enemy",
	overdrive_3 = "After defeating an enemy, the next basic attack is empowered by {atk.png} +125%.",
	fear_5 = "Hits have a 25% chance to make the target flee in fear for 1.2s.",
	overdrive_2 = "After defeating an enemy, the next basic attack is empowered by {atk.png} +100%.",
	fear_4 = "Hits have a 22% chance to make the target flee in fear for 1.1s.",
	overdrive_1 = "After defeating an enemy, the next basic attack is empowered by {atk.png} +75%.",
	fear_3 = "Hits have a 19% chance to make the target flee in fear for 1s.",
	transfer_5 = "On attack, {atk.png} 40% damage spreads to 3 other nearby enemies.",
	fear_2 = "Hits have a 17% chance to make the target flee in fear for 0.9s.",
	transfer_4 = "On attack, {atk.png} 40% damage spreads to 2 other nearby enemies.",
	fear_1 = "Hits have a 15% chance to make the target flee in fear for 0.8s.",
	transfer_3 = "On attack, {atk.png} 35% damage spreads to 2 other nearby enemies.",
	self_destruct_5 = "On death, explodes and deals damage equal to 40% of its maximum {hp.png} to each nearby enemy.",
	transfer_2 = "On attack, {atk.png} 40% damage spreads to 1 other nearby enemy.",
	self_destruct_4 = "On death, explodes and deals damage equal to 35% of its maximum {hp.png} to each nearby enemy.",
	transfer_1 = "On attack, {atk.png} 30% damage spreads to 1 other nearby enemy.",
	self_destruct_3 = "On death, explodes and deals damage equal to 31% of its maximum {hp.png} to each nearby enemy.",
	blind_5 = "16% chance on attack: blind target for 1.3s (attacks miss)",
	self_destruct_2 = "On death, explodes and deals damage equal to 28% of its maximum {hp.png} to each nearby enemy.",
	blind_4 = "16% chance on attack: blind target for 1s (attacks miss)",
	self_destruct_1 = "On death, explodes and deals damage equal to 25% of its maximum {hp.png} to each nearby enemy.",
	blind_3 = "16% chance on attack: blind target for 0.8s (attacks miss)",
	lifesteal_5 = "Recover 12% of dmg dealt as HP",
	blind_2 = "16% chance on attack: blind target for 0.6s (attacks miss)"
}
var_0_0.randomOptionNameMap = {
	["17"] = "Lone Wolf",
	["15"] = "Combat Shift",
	["18"] = "Emergency Fund",
	["14"] = "Leadership",
	["19"] = "Base Guardian",
	["13"] = "Golden Egg",
	["20"] = "Reckoning Day",
	["12"] = "Packed Lunch",
	["21"] = "Boss Slayer",
	["11"] = "Blood Pact",
	["22"] = "Skill Acceleration",
	["10"] = "Battle Fervor",
	["23"] = "Calculated Luck",
	["09"] = "Blood Rage",
	["24"] = "Combat Experience",
	["08"] = "Berserk",
	["25"] = "Predatory Instinct",
	["07"] = "Undying",
	["26"] = "Versatile",
	["06"] = "Kill Haste",
	["27"] = "Opportunity Strikes",
	["05"] = "Finishing Blow",
	["28"] = "Rapid Strikes",
	["04"] = "Opening Strike",
	["29"] = "Anchored Stance",
	["03"] = "Reflex",
	["30"] = "Chain Casting",
	["02"] = "Survival Instinct",
	["31"] = "Bounty",
	["01"] = "Battle Instinct",
	["32"] = "Heavyweight",
	["16"] = "Kill Recovery"
}
var_0_0.randomOptionEffectMap = {
	["17"] = "If there are no other allies of the same type: {atk.png} +8~16%, damage taken -3~7%",
	["15"] = "Above 50% HP: {atk.png} +20%. At 50% HP or below: Damage Taken -20%",
	["18"] = "On absorb: {gold.png} +50~250",
	["14"] = "This unit doesn't count toward max units",
	["19"] = "Prioritize enemies near the base and deal {atk.png} +15~35% damage to that enemy",
	["13"] = "On absorb: {essence.png} +1~5",
	["20"] = "{atk.png} +30~50% in Judgment Wave",
	["12"] = "On absorb: Absorb LV +1~5",
	["21"] = "{atk.png} +30~50% in Boss Wave",
	["11"] = "{atk.png} +4~8% per fallen ally",
	["22"] = "Active skill cooldown -8~16%",
	["10"] = "Every 2s after combat begins: {atk.png} +3~7% per stack (max 5 stacks)",
	["23"] = "Each nudge that creates a new winning line grants {atk.png} +1%.",
	["09"] = "Missing HP grants up to {atk.png} +25~45%",
	["24"] = "Every 10 enemies killed: basic attack damage +1%.",
	["08"] = "{atk.png} +18~32% / Damage Taken +10~18%",
	["25"] = "Basic attacks prioritize the attackable enemy with the lowest current {hp.png}.",
	["07"] = "On death: survive once for 1s at 1 {hp.png}",
	["26"] = "Receives the effects of all basic class training manuals you own, regardless of its class.",
	["06"] = "On kill: {aspd.png} +15~35% for 5s",
	["27"] = "Basic attack damage +15~35% against debuffed enemies.",
	["05"] = "Last enemy {atk.png} +15~35%",
	["28"] = "{aspd.png} +40%. {atk.png} -30%.",
	["04"] = "First attack {atk.png} +25~45%",
	["29"] = "Cannot move voluntarily. {dist.png} +40, {atk.png} +15%.",
	["03"] = "{aspd.png} +4~8%",
	["30"] = "Kills with an attack skill reduce its remaining cooldown by 15~35%. Once per cast.",
	["02"] = "{hp.png} +8~12%",
	["31"] = "Gain {gold.png} +5~9 for each enemy killed.",
	["01"] = "{atk.png} +6~10%",
	["32"] = "Occupies 2 unit slots. {hp.png} +50%, {atk.png} +35%.",
	["16"] = "On kill, restore 4~8% of max {hp.png}. Up to 3 times per battle"
}

function var_0_0.getRandomOptionEffect(arg_16_0, arg_16_1, arg_16_2, arg_16_3)
	arg_16_2 = arg_16_2 or "ko"

	if not arg_16_0 then
		return arg_16_2 == "en" and var_0_9(arg_16_1, "") or arg_16_1
	end

	local var_16_0 = tostring(arg_16_0)
	local var_16_1 = arg_16_2 == "en" and (var_0_0.randomOptionEffectMap[var_16_0] or arg_16_1) or arg_16_1

	if arg_16_2 == "en" then
		var_16_1 = var_0_9(var_16_1, "")
	end

	local var_16_2 = var_0_7("random_option.effect." .. var_16_0, arg_16_2, var_16_1)

	if var_16_0 == "23" and arg_16_3 then
		local var_16_3 = var_0_7("random_option.calculated_luck_total", arg_16_2, arg_16_2 == "en" and "Accumulated: {atk.png} +%d%%" or "누적: {atk.png} +%d%%")

		var_16_2 = var_16_2 .. "\n" .. var_16_3:format(require("src.data.randomoption").getCalculatedLuckStacks(arg_16_3))
	elseif var_16_0 == "24" and arg_16_3 then
		local var_16_4, var_16_5 = require("src.data.randomoption").getCombatExperienceProgress(arg_16_3)
		local var_16_6 = var_0_7("random_option.combat_experience_total", arg_16_2, arg_16_2 == "en" and "Basic attack damage +%d%%" or "기본 공격 피해 +%d%%")
		local var_16_7 = var_0_7("random_option.combat_experience_progress", arg_16_2, arg_16_2 == "en" and "Progress to next increase: %d / 10" or "다음 성장까지 %d / 10")

		var_16_2 = var_16_2 .. "\n" .. var_16_6:format(var_16_4) .. "\n" .. var_16_7:format(var_16_5)
	end

	return var_16_2
end

local var_0_10 = {
	"~",
	"～",
	"–",
	"—"
}

local function var_0_11(arg_17_0)
	local var_17_0
	local var_17_1

	for iter_17_0, iter_17_1 in ipairs(var_0_10) do
		local var_17_2, var_17_3 = arg_17_0:find("[%+%-]?%d*%.?%d+%s*" .. iter_17_1 .. "%s*[%+%-]?%d*%.?%d+%%?")

		if var_17_2 and (not var_17_0 or var_17_2 < var_17_0) then
			var_17_0, var_17_1 = var_17_2, var_17_3
		end
	end

	return var_17_0, var_17_1
end

local function var_0_12(arg_18_0, arg_18_1)
	if arg_18_1 == nil then
		return arg_18_0
	end

	arg_18_1 = tostring(arg_18_1)

	if arg_18_0 == "" then
		return arg_18_1
	end

	local var_18_0, var_18_1 = var_0_11(arg_18_0)

	if not var_18_0 then
		return arg_18_0
	end

	local var_18_2 = arg_18_0:sub(var_18_0, var_18_1)

	if var_18_2:sub(-1) == "%" and not arg_18_1:find("%", 1, true) then
		arg_18_1 = arg_18_1 .. "%"
	end

	if not var_18_2:find("^[%+%-]") then
		arg_18_1 = arg_18_1:gsub("^[%+%-]", "")
	end

	return arg_18_0:sub(1, var_18_0 - 1) .. arg_18_1 .. arg_18_0:sub(var_18_1 + 1)
end

function var_0_0.applyRandomOptionVariant(arg_19_0, arg_19_1)
	arg_19_0 = tostring(arg_19_0 or "")

	if type(arg_19_1) ~= "table" then
		return arg_19_0
	end

	arg_19_0 = var_0_12(arg_19_0, arg_19_1.value)

	return var_0_12(arg_19_0, arg_19_1.damageReduction or arg_19_1.dmgTaken)
end

var_0_0.gradeLabelMap = {
	special = "Special",
	normal = "Normal",
	legendary = "Legendary",
	prism = "Prism",
	rare = "Rare",
	advanced = "Advanced"
}

function var_0_0.getGradeLabel(arg_20_0, arg_20_1, arg_20_2)
	arg_20_2 = arg_20_2 or "ko"

	if not arg_20_0 then
		return arg_20_1
	end

	local var_20_0 = arg_20_2 == "en" and (var_0_0.gradeLabelMap[arg_20_0] or arg_20_1) or arg_20_1

	if arg_20_2 == "en" then
		var_20_0 = var_0_9(var_20_0, tostring(arg_20_0))
	end

	return var_0_7("grade.label." .. tostring(arg_20_0), arg_20_2, var_20_0)
end

function var_0_0.getImprintName(arg_21_0, arg_21_1, arg_21_2)
	arg_21_2 = arg_21_2 or "ko"

	if not arg_21_0 then
		return arg_21_2 == "en" and var_0_9(arg_21_1, "") or arg_21_1
	end

	local var_21_0 = tostring(arg_21_0)
	local var_21_1 = arg_21_2 == "en" and (var_0_0.imprintNameMap[arg_21_0] or var_0_0.randomOptionNameMap[var_21_0] or arg_21_1) or arg_21_1

	if arg_21_2 == "en" then
		var_21_1 = var_0_9(var_21_1, var_21_0)
	end

	return var_0_7("imprint.name." .. var_21_0, arg_21_2, var_0_7("random_option.name." .. var_21_0, arg_21_2, var_21_1))
end

function var_0_0.getImprintShortDesc(arg_22_0, arg_22_1, arg_22_2)
	arg_22_2 = arg_22_2 or "ko"

	if not arg_22_0 then
		return arg_22_2 == "en" and var_0_9(arg_22_1, "") or arg_22_1
	end

	local var_22_0 = tostring(arg_22_0)
	local var_22_1 = arg_22_2 == "en" and (var_0_0.imprintShortDescMap[arg_22_0] or arg_22_1) or arg_22_1

	if arg_22_2 == "en" then
		var_22_1 = var_0_9(var_22_1, "")
	end

	return var_0_7("imprint.short." .. var_22_0, arg_22_2, var_22_1)
end

function var_0_0.getImprintDesc(arg_23_0, arg_23_1, arg_23_2, arg_23_3)
	arg_23_3 = arg_23_3 or "ko"

	if not arg_23_0 then
		return arg_23_3 == "en" and var_0_9(arg_23_2, "") or arg_23_2
	end

	local var_23_0 = tostring(arg_23_0) .. "_" .. tostring(tonumber(arg_23_1) or 1)
	local var_23_1 = arg_23_3 == "en" and (var_0_0.imprintDescMap[var_23_0] or arg_23_2) or arg_23_2

	if arg_23_3 == "en" then
		var_23_1 = var_0_9(var_23_1, "")
	end

	return var_0_7("imprint.desc." .. var_23_0, arg_23_3, var_23_1)
end

function var_0_0.getText(arg_24_0, arg_24_1)
	return var_0_7(arg_24_0, arg_24_1 or "ko", arg_24_0)
end

function var_0_0.pluralCategory(arg_25_0, arg_25_1)
	arg_25_0 = math.floor(math.abs(tonumber(arg_25_0) or 0))

	local var_25_0 = arg_25_1 or "ko"

	if var_25_0 == "ru" or var_25_0 == "pl" then
		local var_25_1 = arg_25_0 % 10
		local var_25_2 = arg_25_0 % 100

		if var_25_0 == "ru" and var_25_1 == 1 and var_25_2 ~= 11 or var_25_0 == "pl" and arg_25_0 == 1 then
			return "one"
		end

		if var_25_1 >= 2 and var_25_1 <= 4 and (var_25_2 < 12 or var_25_2 > 14) then
			return "few"
		end

		return "many"
	elseif var_25_0 == "fr" or var_25_0 == "pt" then
		return arg_25_0 <= 1 and "one" or "other"
	elseif var_25_0 == "en" or var_25_0 == "de" or var_25_0 == "it" or var_25_0 == "es" then
		return arg_25_0 == 1 and "one" or "other"
	end

	return "other"
end

function var_0_0.getPlural(arg_26_0, arg_26_1, arg_26_2)
	arg_26_2 = arg_26_2 or "ko"

	local var_26_0 = arg_26_0 .. "_" .. var_0_0.pluralCategory(arg_26_1, arg_26_2)
	local var_26_1 = var_0_0[arg_26_2]
	local var_26_2 = var_26_1 and var_26_1[var_26_0]

	var_26_2 = var_26_2 or var_0_7(arg_26_0 .. "_other", arg_26_2, arg_26_0 .. "_other")

	local var_26_3 = tostring(var_26_2)

	return var_26_3:gsub("{n}", tostring(arg_26_1)), var_26_3
end

function var_0_0.getAwakeningText(arg_27_0, arg_27_1, arg_27_2, arg_27_3, arg_27_4)
	arg_27_4 = arg_27_4 or "ko"

	local var_27_0 = arg_27_3 and arg_27_1.stages[arg_27_3] or arg_27_1
	local var_27_1 = var_27_0 and var_27_0[arg_27_2] or ""

	var_27_1 = arg_27_2 == "name" and arg_27_4 ~= "ko" and arg_27_1.english or var_27_1

	local var_27_2 = "awakening." .. arg_27_0.version .. "." .. arg_27_1.id .. "." .. (arg_27_3 and arg_27_3 .. "." or "") .. arg_27_2

	return var_0_7(var_27_2, arg_27_4, var_27_1)
end

function var_0_0.getSkillName(arg_28_0, arg_28_1, arg_28_2)
	arg_28_2 = arg_28_2 or "ko"

	if not arg_28_0 then
		return arg_28_2 == "en" and var_0_9(arg_28_1, "") or arg_28_1
	end

	local var_28_0 = arg_28_2 == "en" and var_0_9(arg_28_1, tostring(arg_28_0)) or arg_28_1

	return var_0_7("skill.name." .. tostring(arg_28_0), arg_28_2, var_28_0)
end

function var_0_0.getSkillDesc(arg_29_0, arg_29_1, arg_29_2)
	arg_29_2 = arg_29_2 or "ko"

	if not arg_29_0 then
		return arg_29_2 == "en" and var_0_9(arg_29_1, "") or arg_29_1
	end

	local var_29_0 = arg_29_2 == "en" and var_0_9(arg_29_1, "") or arg_29_1

	return var_0_7("skill.desc." .. tostring(arg_29_0), arg_29_2, var_29_0)
end

var_0_0.questNameMap = {
	no_absorb_5_waves = "Survive 5 Waves Without Absorbing",
	clutch_win = "Win a Spin in the Last 2 Seconds Before Battle",
	normal_units_only_5_waves = "Use Only Normal Units for 5 Waves",
	win_with_5_or_fewer_units = "Win with 5 or Fewer Units",
	spin_35_total = "Spin the Slot Machine 35 Times",
	ranged_units_only = "Keep Only Ranged Units",
	absorb_3_unique_symbols = "Absorb 3 Different Unit Types into One Unit",
	no_item_5_waves = "Don't Use Items for 5 Waves",
	win_with_last_unit = "Win with Only 1 Unit Remaining",
	no_shop_5_waves = "Don't Use the Shop for 5 Waves",
	wave_death_limit_1 = "Lose 1 or Fewer Units in a Wave",
	advanced_promotion = "Promote a Unit Using Only Advanced+ Units",
	rank_up_to_2 = "Promote a Unit to 2-Star",
	unit_with_3_imprints = "Own a Unit with 3+ Imprints",
	["3_units_absorbed_once"] = "Absorb at Least Once into 3 Different Units",
	absorb_5 = "Absorb 5 Times",
	unique_unit_4 = "Own 4 Different Unit Types",
	win_with_3_or_fewer_units = "Win with 3 or Fewer Units",
	same_unit_4 = "Own 4 of the Same Unit",
	win_with_one_4_star = "Win a Wave with a Single 4-Star+ Unit",
	essence_15_total = "Reach 15 Essence",
	normal_units_only_judgement = "Clear a Judgment Wave with Only Normal Units",
	spin_20_total = "Spin the Slot Machine 20 Times",
	win_with_1_hp = "Win a Wave with 1 HP",
	spin_6_in_one_round = "Spin 6 Times in One Round",
	spin_60_total = "Spin the Slot Machine 60 Times",
	no_nudge_5_waves = "Don't Use Nudge for 5 Waves",
	reach_wave_10_no_3_star = "Reach Wave 10 Without Any 3-Star Units"
}
var_0_0.ko.quest_status_complete = "수령"
var_0_0.ko.quest_status_incomplete = "미완료"
var_0_0.ko.quest_status_locked = "닫힘"
var_0_0.en.quest_status_complete = "Claim"
var_0_0.en.quest_status_incomplete = "Incomplete"
var_0_0.en.quest_status_locked = "Locked"

function var_0_0.getQuestName(arg_30_0, arg_30_1, arg_30_2)
	arg_30_2 = arg_30_2 or "ko"

	if not arg_30_0 then
		return arg_30_2 == "en" and var_0_9(arg_30_1, "") or arg_30_1
	end

	local var_30_0 = arg_30_2 == "en" and (var_0_0.questNameMap[arg_30_0] or arg_30_1) or arg_30_1

	if arg_30_2 == "en" then
		var_30_0 = var_0_9(var_30_0, tostring(arg_30_0))
	end

	return var_0_7("quest.name." .. tostring(arg_30_0), arg_30_2, var_30_0)
end

var_0_0.stoneNameMap = {
	MileStone = "MileStone",
	ZenithStone = "Zenith Stone",
	SpecialStone = "Special Stone",
	SanctumStone = "Sanctum Stone",
	TwinStone = "Twin Stone",
	ConstellationStone = "Constellation Stone",
	BreezeStone = "Breeze Stone",
	GambitStone = "Gambit Stone",
	OriginStone = "Origin Stone",
	BlessingStone = "Blessing Stone",
	EclipseStone = "Eclipse Stone",
	MasteryStone = "Mastery Stone",
	GalaxyStone = "Galaxy Stone",
	OmenStone = "Omen Stone",
	RiftStone = "Rift Stone"
}
var_0_0.stoneDescMap = {
	MileStone = "Grants 1 unit. A mid-tier Fate Stone.",
	ZenithStone = "Grants 1 unit. The highest-tier Fate Stone.",
	SpecialStone = "Grants 1 unit. 15% chance of a Special unit.",
	SanctumStone = "Grants 1 unit. Rare or better guaranteed.",
	TwinStone = "Grants 2 units. Each one follows the odds below.",
	ConstellationStone = "Grants 3 units. Each one follows the odds below.",
	BreezeStone = "Grants 1 unit. Skips Advanced to aim for Rare.",
	GambitStone = "Grants 1 unit. Advanced, or Legendary / Prism!",
	OriginStone = "Grants 1 unit. The most basic Fate Stone.",
	BlessingStone = "Grants 1 unit. A high-tier Fate Stone.",
	EclipseStone = "Grants 1 unit. Never Legendary; it aims for Prism.",
	MasteryStone = "Grants 1 unit that arrives at 2-Star. Choose its class from two paths.",
	GalaxyStone = "Grants 1 unit that arrives at 3-Star. Choose its class from two paths.",
	OmenStone = "Reveals 3 candidates; you pick 1. Each candidate follows the odds below.",
	RiftStone = "Grants 1 unit. Normal, or Legendary / Prism!"
}

function var_0_0.getStoneName(arg_31_0, arg_31_1, arg_31_2)
	arg_31_2 = arg_31_2 or "ko"

	if not arg_31_0 then
		return arg_31_2 == "en" and var_0_9(arg_31_1, "") or arg_31_1
	end

	local var_31_0 = arg_31_2 == "en" and (var_0_0.stoneNameMap[arg_31_0] or arg_31_1) or arg_31_1

	if arg_31_2 == "en" then
		var_31_0 = var_0_9(var_31_0, tostring(arg_31_0))
	end

	return var_0_7("stone.name." .. tostring(arg_31_0), arg_31_2, var_31_0)
end

function var_0_0.getStoneDesc(arg_32_0, arg_32_1, arg_32_2)
	arg_32_2 = arg_32_2 or "ko"

	if not arg_32_0 then
		return arg_32_2 == "en" and var_0_9(arg_32_1, "") or arg_32_1
	end

	local var_32_0 = arg_32_2 == "en" and (var_0_0.stoneDescMap[arg_32_0] or arg_32_1) or arg_32_1

	if arg_32_2 == "en" then
		var_32_0 = var_0_9(var_32_0, "")
	end

	return var_0_7("stone.desc." .. tostring(arg_32_0), arg_32_2, var_32_0)
end

var_0_0.coreNameMap = {
	EntropySpoon = "Entropy Spoon",
	ReverseShell = "Reverse Shell",
	PurusaVerdict = "Purusa's Verdict",
	MirageGoblet = "Mirage Goblet",
	Prosperfang = "Prosperfang",
	Resonoscope = "Resonoscope",
	EchoMirror = "Echo Mirror",
	Wishlamp = "Wishlamp",
	Fatecore = "Fatecore",
	Triggerchest = "Triggerchest",
	Revoltail = "Revoltail",
	Rushtrail = "Rushtrail",
	Aetherforge = "Aetherforge",
	Firstflag = "Firstflag",
	Harmoncore = "Harmoncore",
	Calmcore = "Calmcore",
	Chainshroom = "Chainshroom",
	LuckyCharm = "Lucky Charm",
	StellarBlessing = "Stellar Blessing",
	OracleSigil = "Oracle's Sigil"
}
var_0_0.coreDescMap = {
	EntropySpoon = "On spin fail, 10% chance to automatically re-roll.",
	ReverseShell = "After 3 consecutive spin failures, the next spin is guaranteed to win.",
	PurusaVerdict = "First spin of each round: win chance +15%, jackpot chance +0.4%.",
	MirageGoblet = "For 3 spins after a jackpot, the chance of the same symbol appearing consecutively +5%.",
	Prosperfang = "After 3 consecutive wins, units spawned on the next spin gain +10% stats.",
	Resonoscope = "When 3+ rows match the same symbol, next spin's jackpot chance +3%. (Once per wave.)",
	EchoMirror = "On each spin, every unit has a 10% chance to be summoned once more.",
	Wishlamp = "On jackpot, next spin has a 10% chance to trigger a chain jackpot.",
	Fatecore = "After 3 consecutive fails, next spin's win chance +60%.",
	Triggerchest = "At the end of every wave, gain 1 free spin.",
	Revoltail = "Each spin fail increases next spin's win chance by +5%. (Max +25%; resets on win.)",
	Rushtrail = "Each consecutive win increases next spin's win chance by +6%. (Max +30%; resets on fail.)",
	Aetherforge = "All spins' base win chance +5%.",
	Firstflag = "When the first spin of each round fails, next spin's win chance +25%.",
	Harmoncore = "After 3 consecutive spin failures, next spin's win chance +30%.",
	Calmcore = "After 3 consecutive spin failures, the next spin's reward is doubled.",
	Chainshroom = "On 2 consecutive wins, 1 unit from that spin is summoned once more.",
	LuckyCharm = "On spin fail, next spin's win chance +8%. Max 3 stacks; resets on win.",
	StellarBlessing = "On 2 consecutive wins, each unit on the next spin has a 2% chance to appear as a Prism unit.",
	OracleSigil = "Every 6th spin has a jackpot chance of 1%."
}

function var_0_0.getCoreName(arg_33_0, arg_33_1, arg_33_2)
	arg_33_2 = arg_33_2 or "ko"

	if not arg_33_0 then
		return arg_33_2 == "en" and var_0_9(var_0_8(arg_33_1) or arg_33_1, "Core") or arg_33_1
	end

	local var_33_0 = arg_33_2 == "en" and (var_0_0.coreNameMap[arg_33_0] or var_0_8(arg_33_1) or arg_33_1) or arg_33_1

	if arg_33_2 == "en" then
		var_33_0 = var_0_9(var_33_0, tostring(arg_33_0))
	end

	return var_0_7("core.name." .. tostring(arg_33_0), arg_33_2, var_33_0)
end

function var_0_0.getCoreDesc(arg_34_0, arg_34_1, arg_34_2)
	arg_34_2 = arg_34_2 or "ko"

	if not arg_34_0 then
		return arg_34_2 == "en" and var_0_9(arg_34_1, "") or arg_34_1
	end

	local var_34_0 = arg_34_2 == "en" and (var_0_0.coreDescMap[arg_34_0] or arg_34_1) or arg_34_1

	if arg_34_2 == "en" then
		var_34_0 = var_0_9(var_34_0, "")
	end

	return var_0_7("core.desc." .. tostring(arg_34_0), arg_34_2, var_34_0)
end

function var_0_0.getCoreTrigger(arg_35_0, arg_35_1, arg_35_2)
	arg_35_2 = arg_35_2 or "ko"

	if not arg_35_0 then
		return arg_35_2 == "en" and var_0_9(arg_35_1, "") or arg_35_1
	end

	local var_35_0 = arg_35_2 == "en" and var_0_9(arg_35_1, "") or arg_35_1

	return var_0_7("core.trigger." .. tostring(arg_35_0), arg_35_2, var_35_0)
end

var_0_0.itemNameMap = {
	["18"] = "Tense String",
	["15"] = "Scatter Scope",
	["04"] = "Broken Shield",
	["14"] = "Oath Helm",
	["09"] = "Vanguard Drum",
	["29"] = "Wooden Watchtower",
	["57"] = "Crossfire Flare",
	["36"] = "Duelist Manual",
	["32"] = "Archer Manual",
	["35"] = "Cavalry Manual",
	["34"] = "Mage Manual",
	["10"] = "Ankle Trap",
	["33"] = "Spearman Manual",
	["25"] = "Guardian Blades",
	["31"] = "Warrior Manual",
	["08"] = "Cursed Mushroom",
	["37"] = "Shield Manual",
	["07"] = "Dust Cloak",
	["38"] = "Volley Manual",
	["06"] = "Frontline Armor",
	["05"] = "Hunter’s Lens",
	["20"] = "Command Banner",
	["03"] = "First Aid",
	["02"] = "Sturdy Shield",
	["01"] = "Sturdy Fist",
	["16"] = "Solitary Oath"
}
var_0_0.itemEffectFnMap = {
	["01"] = function(arg_36_0)
		arg_36_0 = math.max(1, math.min(tonumber(arg_36_0 or 1) or 1, 3))

		local var_36_0 = ({
			8,
			12,
			16
		})[arg_36_0] or 16

		return string.format("All allies basic attack damage +%d%%. (Lv.%d)", var_36_0, arg_36_0)
	end,
	["02"] = function(arg_37_0)
		arg_37_0 = math.max(1, math.min(tonumber(arg_37_0 or 1) or 1, 3))

		local var_37_0 = ({
			12,
			18,
			24
		})[arg_37_0] or 24

		return string.format("At battle start, all allies gain a shield equal to %d%% of max {hp.png}. Lasts 5 seconds after the first hit. (Lv.%d)", var_37_0, arg_37_0)
	end,
	["03"] = function(arg_38_0)
		arg_38_0 = math.max(1, math.min(tonumber(arg_38_0 or 1) or 1, 3))

		local var_38_0 = ({
			20,
			28,
			36
		})[arg_38_0] or 36

		return string.format("Once per battle, instantly heals the first ally to fall to 30%% {hp.png} or less for %d%% of max {hp.png}. (Lv.%d)", var_38_0, arg_38_0)
	end,
	["04"] = function(arg_39_0)
		arg_39_0 = math.max(1, math.min(tonumber(arg_39_0 or 1) or 1, 3))

		local var_39_0 = ({
			6,
			9,
			12
		})[arg_39_0] or 12

		return string.format("When an ally's shield breaks, one other ally with the lowest health gains a shield equal to %d%% of max {hp.png}. (Lv.%d)", var_39_0, arg_39_0)
	end,
	["05"] = function(arg_40_0)
		arg_40_0 = math.max(1, math.min(tonumber(arg_40_0 or 1) or 1, 3))

		local var_40_0 = ({
			20,
			35,
			50
		})[arg_40_0] or 50

		return string.format("If a ranged basic attack's target dies while the projectile is in flight, it tracks another enemy and deals %d%% bonus damage. (Lv.%d)", var_40_0, arg_40_0)
	end,
	["06"] = function(arg_41_0)
		arg_41_0 = math.max(1, math.min(tonumber(arg_41_0 or 1) or 1, 3))

		local var_41_0 = ({
			10,
			15,
			20
		})[arg_41_0] or 20

		return string.format("The ally placed furthest forward takes %d%% less damage. (Lv.%d)", var_41_0, arg_41_0)
	end,
	["07"] = function(arg_42_0)
		arg_42_0 = math.max(1, math.min(tonumber(arg_42_0 or 1) or 1, 3))

		local var_42_0 = ({
			8,
			12,
			16
		})[arg_42_0] or 16

		return string.format("Ranged allies take %d%% less damage from ranged enemies. (Lv.%d)", var_42_0, arg_42_0)
	end,
	["08"] = function(arg_43_0)
		arg_43_0 = math.max(1, math.min(tonumber(arg_43_0 or 1) or 1, 3))

		local var_43_0 = ({
			5,
			7,
			9
		})[arg_43_0] or 9

		return string.format("Once per battle, when there are 6+ enemies, all enemies take %d%% of current {hp.png}. (Lv.%d)", var_43_0, arg_43_0)
	end,
	["09"] = function(arg_44_0)
		arg_44_0 = math.max(1, math.min(tonumber(arg_44_0 or 1) or 1, 3))

		return string.format("The drum sounds on the first enemy kill. All allies' next basic attack deals %d%% more damage. (Lv.%d)", ({
			25,
			40,
			55
		})[arg_44_0], arg_44_0)
	end,
	["10"] = function(arg_45_0)
		arg_45_0 = math.max(1, math.min(tonumber(arg_45_0 or 1) or 1, 3))

		return string.format("The first basic attack to hit each moving enemy roots them for %.1fs. (Lv.%d)", ({
			0.8,
			1.2,
			1.6
		})[arg_45_0], arg_45_0)
	end,
	["14"] = function(arg_46_0)
		arg_46_0 = math.max(1, math.min(tonumber(arg_46_0 or 1) or 1, 2))

		return string.format("The first ally to fall survives as a statue for %gs, then recovers %d%% of max {hp.png}. (Lv.%d)", ({
			1.5,
			2
		})[arg_46_0], ({
			15,
			22
		})[arg_46_0], arg_46_0)
	end,
	["15"] = function(arg_47_0)
		arg_47_0 = math.max(1, math.min(tonumber(arg_47_0 or 1) or 1, 2))

		return string.format("Ranged allies cycle through enemies. Basic attacks deal %d%% more damage when switching targets. (Lv.%d)", ({
			15,
			25
		})[arg_47_0], arg_47_0)
	end,
	["16"] = function(arg_48_0)
		arg_48_0 = math.max(1, math.min(tonumber(arg_48_0 or 1) or 1, 2))

		return string.format("If you deploy 3 or fewer allies, each gains a shield equal to %d%% of max {hp.png}. (Lv.%d)", ({
			20,
			30
		})[arg_48_0], arg_48_0)
	end,
	["18"] = function(arg_49_0)
		arg_49_0 = math.max(1, math.min(tonumber(arg_49_0 or 1) or 1, 2))

		return string.format("Ranged allies deal %d%% more basic attack damage, but {aspd.png} -25%%. (Lv.%d)", ({
			45,
			65
		})[arg_49_0], arg_49_0)
	end,
	["20"] = function(arg_50_0)
		arg_50_0 = math.max(1, math.min(tonumber(arg_50_0 or 1) or 1, 2))

		return string.format("Every 6 seconds, all allies focus their attacks on the foremost enemy for %d seconds. (Lv.%d)", ({
			2,
			3
		})[arg_50_0], arg_50_0)
	end,
	["25"] = function(arg_51_0)
		return "Two guardian blades float behind the ally with the highest LV and slash nearby enemies."
	end,
	["57"] = function(arg_52_0)
		arg_52_0 = math.max(1, math.min(tonumber(arg_52_0 or 1) or 1, 2))

		return string.format("When a melee ally kills an enemy, the strongest ranged ally immediately attacks. Ranged kills trigger the reverse. (Lv.%d)", arg_52_0)
	end,
	["31"] = function(arg_53_0)
		arg_53_0 = math.max(1, math.min(tonumber(arg_53_0 or 1) or 1, 3))

		local var_53_0 = arg_53_0 >= 3 and " After first engagement, damage taken -5% for 3s." or ""

		return string.format("Warriors max {hp.png} +%d%%.%s (Lv.%d)", ({
			6,
			12,
			18
		})[arg_53_0], var_53_0, arg_53_0)
	end,
	["32"] = function(arg_54_0)
		arg_54_0 = math.max(1, math.min(tonumber(arg_54_0 or 1) or 1, 3))

		local var_54_0 = arg_54_0 >= 3 and " First 3 basic attacks gain an additional 10% {aspd.png}." or ""

		return string.format("Archers {aspd.png} +%d%%.%s (Lv.%d)", ({
			5,
			10,
			15
		})[arg_54_0], var_54_0, arg_54_0)
	end,
	["33"] = function(arg_55_0)
		arg_55_0 = math.max(1, math.min(tonumber(arg_55_0 or 1) or 1, 3))

		local var_55_0 = arg_55_0 >= 3 and " First attack slows movement by 20% for 1.5s." or ""

		return string.format("Spearmen {atk.png} +%d%%.%s (Lv.%d)", ({
			6,
			12,
			18
		})[arg_55_0], var_55_0, arg_55_0)
	end,
	["34"] = function(arg_56_0)
		arg_56_0 = math.max(1, math.min(tonumber(arg_56_0 or 1) or 1, 3))

		return string.format("Mages {atk.png} +%d%% and {aspd.png} +%d%%. (Lv.%d)", ({
			5,
			10,
			15
		})[arg_56_0], ({
			4,
			8,
			12
		})[arg_56_0], arg_56_0)
	end,
	["35"] = function(arg_57_0)
		arg_57_0 = math.max(1, math.min(tonumber(arg_57_0 or 1) or 1, 3))

		local var_57_0 = arg_57_0 >= 3 and " First attack damage +10%." or ""

		return string.format("Cavalry max {hp.png} and {atk.png} +%d%%.%s (Lv.%d)", ({
			4,
			8,
			12
		})[arg_57_0], var_57_0, arg_57_0)
	end,
	["36"] = function(arg_58_0)
		arg_58_0 = math.max(1, math.min(tonumber(arg_58_0 or 1) or 1, 3))

		local var_58_0 = arg_58_0 >= 3 and " Every 3rd consecutive basic attack against the same target deals an additional 40% {atk.png} damage." or ""

		return string.format("Duelists {atk.png} +%d%%.%s (Lv.%d)", ({
			6,
			12,
			18
		})[arg_58_0], var_58_0, arg_58_0)
	end,
	["37"] = function(arg_59_0)
		arg_59_0 = math.max(1, math.min(tonumber(arg_59_0 or 1) or 1, 2))

		return string.format("After their first engagement, warriors take %d%% less damage for 6s. (Lv.%d)", ({
			10,
			18
		})[arg_59_0], arg_59_0)
	end,
	["38"] = function(arg_60_0)
		arg_60_0 = math.max(1, math.min(tonumber(arg_60_0 or 1) or 1, 2))

		return string.format("Every 5th basic attack by each archer deals an additional %d%% {atk.png} damage. (Lv.%d)", ({
			45,
			75
		})[arg_60_0], arg_60_0)
	end
}

function var_0_0.getItemName(arg_61_0, arg_61_1, arg_61_2)
	arg_61_2 = arg_61_2 or "ko"

	if not arg_61_0 then
		return arg_61_2 == "en" and var_0_9(var_0_8(arg_61_1) or arg_61_1, "") or arg_61_1
	end

	local var_61_0 = tostring(arg_61_0)
	local var_61_1 = arg_61_2 == "en" and (var_0_0.itemNameMap[var_61_0] or var_0_8(arg_61_1) or arg_61_1) or arg_61_1

	if arg_61_2 == "en" then
		var_61_1 = var_0_9(var_61_1, var_61_0)
	end

	return var_0_7("item.name." .. var_61_0, arg_61_2, var_61_1)
end

function var_0_0.getItemEffect(arg_62_0, arg_62_1, arg_62_2, arg_62_3)
	arg_62_3 = arg_62_3 or "ko"

	if arg_62_0 then
		local var_62_0 = tostring(arg_62_0)
		local var_62_1 = var_62_0:match("^stone_(.+)$")

		if var_62_1 then
			return var_0_0.getStoneDesc(var_62_1, arg_62_2, arg_62_3)
		end

		local var_62_2 = math.max(1, tonumber(arg_62_1 or 1) or 1)
		local var_62_3 = var_0_7("item.effect." .. var_62_0 .. "." .. tostring(var_62_2), arg_62_3, nil)

		if var_62_3 then
			return var_62_3
		end

		local var_62_4 = arg_62_3 == "en" and var_0_0.itemEffectFnMap[var_62_0] or nil

		if var_62_4 then
			return var_62_4(arg_62_1 or 1)
		end
	end

	if arg_62_3 == "en" then
		return var_0_9(arg_62_2, "")
	end

	return arg_62_2
end

var_0_0.enemyNameMap = {
	["Lizard Warlord"] = "Lizard Warlord",
	["Lizard Shaman"] = "Lizard Shaman",
	["Lizard Brute"] = "Lizard Brute",
	["Lizard Guard"] = "Lizard Guard",
	["Cave Basilisk"] = "Cave Basilisk",
	["Orc Berserker"] = "Orc Berserker",
	["Howl Orc"] = "Howl Orc",
	["Grimwolf Orc"] = "Grimwolf Orc",
	["Warg Orc"] = "Warg Orc",
	["Charge Orc"] = "Charge Orc",
	["Orc Veteran"] = "Orc Veteran",
	["Orc Axe Raider"] = "Orc Axe Raider",
	["Clawed Demon"] = "Clawed Demon",
	GoblinTheif = "Goblin Thief",
	["Goblin Rider"] = "Goblin Rider",
	MiniWolfRider = "Goblin Rider",
	["Orc War Chief"] = "Orc War Chief",
	Orc_War_Chief = "Orc War Chief",
	Orc = "Orc",
	MiniOrc = "Orc",
	GoblinThief = "Goblin Thief",
	MiniGoblinThief = "GoblinThief",
	Goblin = "Goblin",
	MiniGoblin = "Goblin",
	["쌍성 군주 (Twin Star Lords)"] = "Twin Star Lords",
	["쌍성 군주"] = "Twin Star Lords",
	["별의 심판관 (Star Judge)"] = "Star Judge",
	["별의 심판관"] = "Star Judge",
	["우주 제왕 (Cosmic Sovereign)"] = "Cosmic Sovereign",
	["우주 제왕"] = "Cosmic Sovereign",
	["Cosmic Sovereign"] = "Cosmic Sovereign",
	["Star Judge"] = "Star Judge",
	["Twin Star Lords"] = "Twin Star Lords",
	["Star Priestess"] = "Star Priestess",
	["Starlight Paladin"] = "Starlight Paladin",
	["Crystal Guard"] = "Crystal Guard",
	["Crescent Raider"] = "Crescent Raider",
	["Space Wizard"] = "Space Wizard",
	["Space Cavalry"] = "Space Cavalry",
	["Space Knight"] = "Space Knight",
	["Space Hunter"] = "Space Hunter",
	["Space Guardian"] = "Space Guardian",
	["Space Assassin"] = "Space Assassin",
	["해골 드래곤 (Skeleton Dragon)"] = "Skeleton Dragon",
	["해골 드래곤"] = "Skeleton Dragon",
	["Skeleton Dragon"] = "Skeleton Dragon",
	["Dark Lord"] = "Dark Lord",
	["Demon Lord"] = "Demon Lord",
	["Hell Enforcer"] = "Hell Enforcer",
	["Hell Witch"] = "Hell Witch",
	["High Demon"] = "High Demon",
	Wolf = "Wolf",
	["Razorscale Elder"] = "Razorscale Elder",
	["Spine Tyrant"] = "Spine Tyrant",
	["Dragonkin Shaman"] = "Dragonkin Shaman"
}
var_0_0.enemyNameKoMap = {
	["Lizard Warlord"] = "리자드 군벌",
	["Lizard Shaman"] = "리자드 주술사",
	["Lizard Brute"] = "거대 리자드",
	["Lizard Guard"] = "리자드 수호병",
	["Cave Basilisk"] = "암굴 바실리스크",
	["Orc Berserker"] = "오크 광전사",
	["Howl Orc"] = "하울 오크",
	["Grimwolf Orc"] = "그림울프 오크",
	["Warg Orc"] = "워그 오크",
	["Charge Orc"] = "돌격 오크",
	["Orc Veteran"] = "정예 오크",
	["Orc Axe Raider"] = "오크 습격자",
	["Clawed Demon"] = "발톱 악마",
	GoblinTheif = "고블린 도적",
	["Goblin Rider"] = "고블린 라이더",
	["Orc War Chief"] = "오크 족장",
	Orc = "오크",
	GoblinThief = "고블린 도적",
	Goblin = "고블린",
	["별의 여사제 (Star Priestess)"] = "별의 여사제",
	["별의 여사제"] = "별의 여사제",
	["별빛 성기사 (Starlight Paladin)"] = "별빛 성기사",
	["별빛 성기사"] = "별빛 성기사",
	["수정 근위병 (Crystal Guard)"] = "수정 근위병",
	["수정 근위병"] = "수정 근위병",
	["초승달 약탈자 (Crescent Raider)"] = "초승달 약탈자",
	["초승달 약탈자"] = "초승달 약탈자",
	["우주 마법사 (Space Wizard)"] = "우주 마법사",
	["우주 마법사"] = "우주 마법사",
	["우주 기병 (Space Cavalry)"] = "우주 기병",
	["우주 기병"] = "우주 기병",
	["우주 기사 (Space Knight)"] = "우주 기사",
	["우주 기사"] = "우주 기사",
	["우주 사냥꾼 (Space Hunter)"] = "우주 사냥꾼",
	["우주 사냥꾼"] = "우주 사냥꾼",
	["우주 수호자 (Space Guardian)"] = "우주 수호자",
	["우주 수호자"] = "우주 수호자",
	["우주 암살자 (Space Assassin)"] = "우주 암살자",
	["우주 암살자"] = "우주 암살자",
	["암흑 군주 (Dark Lord)"] = "암흑 군주",
	["암흑 군주"] = "암흑 군주",
	["마왕 (Demon Lord)"] = "마왕",
	마왕 = "마왕",
	["지옥 집행관 (Hell Enforcer)"] = "지옥 집행관",
	["지옥 집행관"] = "지옥 집행관",
	["지옥 마녀 (Hell Witch)"] = "지옥 마녀",
	["지옥 마녀"] = "지옥 마녀",
	["상급 악마 (High Demon)"] = "상급 악마",
	["상급 악마"] = "상급 악마",
	["발톱 악마 (Clawed Demon)"] = "발톱 악마",
	["발톱 악마"] = "발톱 악마",
	["칼비늘 장로 (Razorscale Elder)"] = "칼비늘 장로",
	["칼비늘 장로"] = "칼비늘 장로",
	["역가시 폭군 (Spine Tyrant)"] = "역가시 폭군",
	["역가시 폭군"] = "역가시 폭군",
	["용혈 주술사 (Dragonkin Shaman)"] = "용혈 주술사",
	["용혈 주술사"] = "용혈 주술사",
	["Venom Maw"] = "맹독아귀",
	["쌍성 군주 (Twin Star Lords)"] = "쌍성 군주",
	["쌍성 군주"] = "쌍성 군주",
	["별의 심판관 (Star Judge)"] = "별의 심판관",
	["별의 심판관"] = "별의 심판관",
	["우주 제왕 (Cosmic Sovereign)"] = "우주 제왕",
	["우주 제왕"] = "우주 제왕",
	["Cosmic Sovereign"] = "우주 제왕",
	["Star Judge"] = "별의 심판관",
	["Twin Star Lords"] = "쌍성 군주",
	["Star Priestess"] = "별의 여사제",
	["Starlight Paladin"] = "별빛 성기사",
	["Crystal Guard"] = "수정 근위병",
	["Crescent Raider"] = "초승달 약탈자",
	["Space Wizard"] = "우주 마법사",
	["Space Cavalry"] = "우주 기병",
	["Space Knight"] = "우주 기사",
	["Space Hunter"] = "우주 사냥꾼",
	["Space Guardian"] = "우주 수호자",
	["Space Assassin"] = "우주 암살자",
	["해골 드래곤 (Skeleton Dragon)"] = "해골 드래곤",
	["해골 드래곤"] = "해골 드래곤",
	["Skeleton Dragon"] = "해골 드래곤",
	["Dark Lord"] = "암흑 군주",
	["Demon Lord"] = "마왕",
	["Hell Enforcer"] = "지옥 집행관",
	["Hell Witch"] = "지옥 마녀",
	["High Demon"] = "상급 악마",
	Wolf = "늑대",
	["Razorscale Elder"] = "칼비늘 장로",
	["Spine Tyrant"] = "역가시 폭군",
	["Dragonkin Shaman"] = "용혈 주술사"
}

function var_0_0.findEnemyName(arg_63_0, arg_63_1, arg_63_2)
	local var_63_0 = var_0_0[arg_63_2]

	if not var_63_0 then
		return nil
	end

	for iter_63_0, iter_63_1 in ipairs({
		arg_63_0 or "",
		arg_63_1 or ""
	}) do
		if type(iter_63_1) == "string" and iter_63_1 ~= "" then
			local var_63_1 = var_63_0["enemy.name." .. iter_63_1]

			if var_63_1 then
				return var_63_1
			end

			local var_63_2 = var_0_0.enemyNameMap[iter_63_1] or var_0_8(iter_63_1)
			local var_63_3 = var_63_2 and var_63_0["enemy.name." .. var_63_2]

			if var_63_3 then
				return var_63_3
			end

			for iter_63_2, iter_63_3 in ipairs((var_0_0.enemyNameAliasKeys or {})[iter_63_1] or {}) do
				local var_63_4 = var_63_0["enemy.name." .. iter_63_3]

				if var_63_4 then
					return var_63_4
				end
			end
		end
	end

	return nil
end

function var_0_0.getEnemyName(arg_64_0, arg_64_1, arg_64_2)
	arg_64_2 = arg_64_2 or "ko"

	local var_64_0 = var_0_0.findEnemyName(arg_64_0, arg_64_1, arg_64_2)

	if var_64_0 then
		return var_64_0
	end

	if arg_64_2 == "en" then
		if arg_64_0 then
			local var_64_1 = var_0_7("enemy.name." .. tostring(arg_64_0), arg_64_2, nil)

			if var_64_1 then
				return var_64_1
			end

			if var_0_0.enemyNameMap[arg_64_0] then
				return var_0_0.enemyNameMap[arg_64_0]
			end

			local var_64_2 = var_0_9(arg_64_0, nil)

			if var_64_2 then
				return var_64_2
			end
		end

		if arg_64_1 then
			local var_64_3 = var_0_7("enemy.name." .. tostring(arg_64_1), arg_64_2, nil)

			if var_64_3 then
				return var_64_3
			end

			local var_64_4 = var_0_0.translateUnitName(arg_64_1, arg_64_2)
			local var_64_5 = var_0_9(var_64_4, nil)

			if var_64_5 then
				return var_64_5
			end
		end

		return "Enemy"
	end

	if arg_64_0 then
		local var_64_6 = var_0_7("enemy.name." .. tostring(arg_64_0), arg_64_2, var_0_0.enemyNameKoMap[arg_64_0] or arg_64_1 or arg_64_0)

		if arg_64_2 == "ko" and type(var_64_6) == "string" and var_0_6(var_64_6) then
			local var_64_7 = var_64_6:gsub("%s*%([^()]*[A-Za-z][^()]*%)%s*$", "")

			if var_64_7 ~= "" then
				return var_64_7
			end
		end

		return var_64_6
	end

	return arg_64_1 or "Enemy"
end

var_0_5()

var_0_0.unitNameAliasKeys = {}

for iter_0_0, iter_0_1 in pairs(var_0_0.unitNameMap) do
	local var_0_13 = var_0_0.unitNameAliasKeys[iter_0_1] or {}

	var_0_13[#var_0_13 + 1] = var_0_0.normalizeUnitName(iter_0_0)
	var_0_0.unitNameAliasKeys[iter_0_1] = var_0_13
end

for iter_0_2, iter_0_3 in pairs(var_0_0.unitNameAliasKeys) do
	table.sort(iter_0_3)
end

var_0_0.enemyNameAliasKeys = {}

for iter_0_4, iter_0_5 in pairs(var_0_0.ko or {}) do
	local var_0_14 = iter_0_4:match("^enemy%.name%.(.+)$")

	if var_0_14 and type(iter_0_5) == "string" then
		local var_0_15 = var_0_0.enemyNameAliasKeys[iter_0_5] or {}

		var_0_15[#var_0_15 + 1] = var_0_14
		var_0_0.enemyNameAliasKeys[iter_0_5] = var_0_15
	end
end

for iter_0_6, iter_0_7 in pairs(var_0_0.enemyNameAliasKeys) do
	table.sort(iter_0_7)
end

return var_0_0
