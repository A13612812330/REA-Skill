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
		["/"] = "/",
		["\\"] = "\\",
		r = "\r",
		f = "\f",
		n = "\n",
		t = "\t",
		b = "\b",
		["\""] = "\""
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
	menu_no = "아니오",
	upgrade_slotadvanced_stat = "고급 0% -> 5%",
	menu_yes = "예",
	upgrade_slotadvanced_desc = "고급 유닛이 등장하기 시작합니다.",
	upgrade_action_upgrade = "업그레이드",
	upgrade_slotadvanced_name = "고급 잠금해제",
	upgrade_maxed = "최대",
	upgrade_slotodds_stat = "잠금 -> 해방",
	upgrade_maxunit_desc = "최대 배치 유닛 수가 1 증가합니다.",
	upgrade_slotodds_desc = "업그레이드의 봉인이 풀립니다.",
	upgrade_maxhp_desc = "최대 목숨이 1 증가합니다.",
	menu_stage_1_title = "열린 숲",
	upgrade_maxhp2_desc = "최대 목숨이 1 증가합니다.",
	menu_stage = "스테이지",
	upgrade_firstcorespin_name = "빠른 각성",
	menu_pause = "일시정지",
	upgrade_corereroll_stat = "무료 리롤 0회 -> 1회",
	menu_difficulty_locked_hint = "이전 난이도를 클리어하면 해금됩니다.",
	upgrade_corereroll_desc = "코어 선택지를 런당 1회 무료 리롤할 수 있습니다.",
	menu_full_version_locked_hint = "풀버전에서 이용할 수 있어요",
	menu_collection_locked_hint = "풀 버전에서 이용할 수 있어요",
	upgrade_preptime2_desc = "준비 시간이 추가로 10초 증가합니다.",
	menu_achievement_locked_hint = "풀 버전에서 이용할 수 있어요",
	upgrade_preptime2_stat = "70초 -> 80초",
	menu_discord = "디스코드",
	upgrade_preptimerdisabled_name = "정비 해방",
	menu_achievement = "도전과제",
	upgrade_slotadvanced3_desc = "고급 유닛 등장 확률이 추가로 증가합니다.",
	menu_collection = "도감",
	upgrade_slotadvanced2_stat = "고급 5% -> 10%",
	menu_exit = "종료",
	upgrade_maxhp_name = "여분의 목숨 I",
	menu_settings = "설정",
	upgrade_slotadvanced2_desc = "고급 유닛 등장 확률이 증가합니다.",
	menu_play = "플레이",
	upgrade_slotadvanced3_name = "고급 연구 II",
	menu_start = "게임 시작",
	upgrade_slotadvanced3_stat = "고급 10% -> 15%",
	upgrade_slotrare_desc = "희귀 유닛이 등장하기 시작합니다.",
	upgrade_slotrare_stat = "희귀 0% -> 2%",
	upgrade_corereroll_name = "코어 리롤",
	upgrade_preptime2_name = "정비 시간 II",
	upgrade_interest_stat = "이자 {gold.png} 0 -> 50",
	upgrade_interest_desc = "전투 시작 시 보유 {gold.png} 100 당 {gold.png} 10 을 획득합니다. 최대 {gold.png} 50 까지 획득합니다.",
	upgrade_interest_name = "전술적 이자",
	upgrade_shopreroll_stat = "상점 리롤 비용 감소 0 -> 1",
	menu_stage_name_1 = "열린 숲",
	menu_stage_name_2 = "깊은 동굴",
	upgrade_title = "업그레이드",
	menu_stage_name_3 = "메마른 황야",
	settings_back = "뒤로가기",
	menu_exit_confirm = "정말 게임을 종료하시겠습니까?",
	settings_chinese = "简体中文",
	settings_japanese = "日本語",
	settings_english = "English",
	settings_bgm_volume = "배경음",
	upgrade_action_select_move = "선택 / 이동",
	upgrade_action_zoom = "확대 / 축소",
	upgrade_action_back = "뒤로가기",
	class_select_title = "클래스 선택",
	spawn_jackpot_only = "잭팟 전용",
	spawn_chance_fmt = "확률 %s",
	cooldown_fmt = "쿨타임 %d초",
	passive_label = "패시브",
	item_type_battle = "전투",
	item_type_training = "훈련",
	delete_mode_name = "삭제 모드",
	delete_mode_desc = "보유한 아이템을 삭제합니다. 삭제 시 가격의 50%를 환급받습니다.",
	delete_mode_desc_upgraded = "보유한 아이템을 삭제합니다. 삭제 시 가격의 80%를 환급받습니다.",
	reroll_name = "리롤",
	btn_skip = "스킵",
	stone_panel_title = "운명 스톤",
	pause_restart_confirm = "정말 게임을 다시 시작 하시겠습니까?",
	pause_mainmenu_confirm = "정말로 메인메뉴로 돌아가시겠습니까?",
	pause_yes = "예",
	play_time_label = "플레이 시간",
	defeat_title = "패배",
	stat_tooltip_hp = "체력",
	stat_tooltip_atk = "공격력",
	stat_tooltip_aspd = "공격속도",
	stat_tooltip_dist = "공격사거리",
	stat_tooltip_pwr = "전투력",
	slot_remaining_spins_tooltip = "남은 스핀 횟수",
	core_scroll_remaining_spins_tooltip = "다음 코어까지 남은 스핀",
	joker_symbol_tooltip = "모든 유닛 심볼로 간주됩니다.",
	upgrade_slotodds_name = "개방의 문장",
	upgrade_startgold2_stat = "시작 {gold.png} 500 -> 550",
	upgrade_startgold2_desc = "{gold.png} 50 을 추가로 시작합니다.",
	upgrade_startgold2_name = "보급 창고",
	upgrade_comebackgold_stat = "패배 후 {gold.png} 0 -> 100",
	upgrade_comebackgold_desc = "전투 패배 후 런이 계속되면 {gold.png} 100 을 얻습니다.",
	upgrade_comebackgold_name = "재도전 보급",
	upgrade_gateheal_stat = "목숨 회복",
	upgrade_gateheal_desc = "심판/보스 웨이브 클리어 시 목숨을 1 회복합니다.",
	upgrade_gateheal_name = "관문 회복",
	upgrade_comebackspin_stat = "첫 스핀 당첨 보장",
	upgrade_comebackspin_desc = "목숨 감소 후 다음 첫 스핀 당첨 보장. 런당 1회.",
	upgrade_comebackspin_name = "반격의 레버",
	upgrade_startgold_stat = "시작 {gold.png} 450 -> 500",
	upgrade_startgold_desc = "{gold.png} 50 을 추가로 시작합니다.",
	upgrade_startgold_name = "초기 보급",
	upgrade_noviceshield_stat = "첫 목숨 감소 0회 -> 1회",
	upgrade_noviceshield_desc = "1~4 웨이브에서 첫 목숨 감소를 1회 막습니다.",
	upgrade_noviceshield_name = "첫걸음 보호",
	upgrade_maxunit3_stat = "7 -> 8",
	upgrade_maxunit3_desc = "최대 배치 유닛 수가 추가로 1 증가합니다.",
	class_promotion = "클래스 승급",
	upgrade_maxunit3_name = "지휘 한도 III",
	upgrade_maxunit2_stat = "6 -> 7",
	upgrade_maxunit2_desc = "최대 배치 유닛 수가 추가로 1 증가합니다.",
	pause_no = "아니오",
	upgrade_maxunit2_name = "지휘 한도 II",
	upgrade_preptimerdisabled_stat = "80초 -> {infinity}",
	upgrade_preptimerdisabled_desc = "준비 시간 제한이 사라집니다.",
	upgrade_maxunit_name = "지휘 한도 I",
	upgrade_shoppin_stat = "상품 고정",
	upgrade_shoppin_desc = "상점 아이템 1개를 다음 갱신 후에도 유지할 수 있습니다. 런당 1회.",
	btn_reroll = "리롤",
	upgrade_shoppin_name = "상품 고정",
	btn_confirm = "확인",
	upgrade_itemresearch_stat = "전문 아이템 2종 추가",
	btn_discard = "버리기",
	upgrade_itemresearch_desc = "관통 교본과 비전 훈련이 상점에 등장할 수 있습니다.",
	btn_back = "뒤로",
	upgrade_itemresearch_name = "전문 아이템 연구 I",
	reroll_desc = "상점 항목들을 리롤 합니다",
	upgrade_iteminventory2_stat = "아이템 슬롯 7 -> 8",
	upgrade_iteminventory2_desc = "아이템 슬롯이 1 증가합니다.",
	upgrade_preptime_stat = "60초 -> 70초",
	upgrade_iteminventory2_name = "아이템 슬롯 확장 II",
	upgrade_preptime_desc = "준비 시간이 10초 증가합니다.",
	upgrade_itemrefund_stat = "환급률 50% -> 80%",
	upgrade_preptime_name = "정비 시간 I",
	upgrade_itemrefund_desc = "아이템 삭제 시 환급률이 50%에서 80%로 증가합니다.",
	upgrade_slotnudge_stat = "넛지 스핀 비용 절감",
	upgrade_itemrefund_name = "재활용 장부",
	upgrade_slotnudge_desc = "넛지를 사용했지만 새 당첨이 없으면 다음 스핀 비용 {gold.png} -50.",
	upgrade_iteminventory_stat = "아이템 슬롯 6 -> 7",
	upgrade_slotnudge_name = "넛지 숙련",
	upgrade_iteminventory_desc = "아이템 슬롯이 1 증가합니다.",
	upgrade_maxhp2_stat = "6 -> 7",
	upgrade_iteminventory_name = "아이템 슬롯 확장 I",
	upgrade_maxhp2_name = "여분의 목숨 II",
	upgrade_shopreroll_desc = "상점 리롤 비용이 1 감소합니다.",
	spawn_orc_raider = "오크 습격자",
	upgrade_shopreroll_name = "상점 리롤",
	duration_waves_fmt = "지속: %d 웨이브",
	upgrade_firstcoreuncommon_stat = "코어 고급 등장",
	duration_permanent = "지속: 영구",
	upgrade_firstcoreuncommon_desc = "첫 코어 선택지에 고급 이상 코어가 1개 반드시 등장합니다.",
	wave_power_gap_label = "전력차",
	upgrade_firstcoreuncommon_name = "빛나는 각성",
	wave_countdown_left = " 남음",
	upgrade_firstcorespin_stat = "첫 코어 요구 스핀 0 -> -1",
	wave_countdown_until = " 까지 ",
	upgrade_firstcorespin_desc = "첫 코어 선택에 필요한 스핀 수가 1 감소합니다.",
	wave_countdown_boss = "보스",
	settings_korean = "한국어",
	wave_countdown_judge = "심판",
	settings_disabled = "비활성화",
	wave_label_fmt = "웨이브 %d",
	settings_enabled = "활성화",
	imprint_locked = "잠김",
	settings_tutorial = "튜토리얼",
	imprint_empty_slot = "빈 슬롯",
	settings_language = "언어",
	imprint_absorb_stat_fmt = "공격력 +%.1f%%  공격속도 +%.1f%%  체력 +%.1f%%",
	settings_sfx_volume = "효과음",
	imprint_mode_keep = "유지",
	upgrade_slotrare_name = "희귀 잠금해제",
	imprint_mode_replace = "교체",
	settings_master_volume = "마스터 볼륨",
	imprint_convert_prefix = "흡수 LV로 전환 +",
	settings_fullscreen = "전체화면",
	imprint_absorb_cancel = "흡수 취소",
	settings_borderless = "테두리 없는 창",
	imprint_gained_label = "획득 각인",
	settings_windowed = "창모드",
	class_option_fallback = "옵션 ",
	settings_display_mode = "화면 모드",
	settings_title = "설정",
	upgrade_slotadvanced2_name = "고급 연구 I"
}
var_0_0.en = {
	menu_no = "No",
	upgrade_slotadvanced_stat = "Advanced 0% -> 5%",
	menu_yes = "Yes",
	upgrade_slotadvanced_desc = "Advanced units begin to appear.",
	upgrade_action_upgrade = "Upgrade",
	upgrade_slotadvanced_name = "Advanced Unlock",
	upgrade_maxed = "MAX",
	upgrade_slotodds_stat = "Locked -> Unsealed",
	upgrade_maxunit_desc = "Increases the maximum number of deployed units by 1.",
	upgrade_slotodds_desc = "The seal on upgrades is broken.",
	upgrade_maxhp_desc = "Increases maximum lives by 1.",
	menu_stage_1_title = "Open Forest",
	upgrade_maxhp2_desc = "Increases maximum lives by 1.",
	menu_stage = "Stage",
	upgrade_firstcorespin_name = "Quick Awakening",
	menu_pause = "Pause",
	upgrade_corereroll_stat = "Free reroll 0 -> 1",
	menu_difficulty_locked_hint = "Clear the previous difficulty to unlock this.",
	upgrade_corereroll_desc = "You can reroll core choices once per run for free.",
	menu_full_version_locked_hint = "Available in the full version",
	menu_collection_locked_hint = "Available in the full version",
	upgrade_preptime2_desc = "Increases preparation time by an additional 10 seconds.",
	menu_achievement_locked_hint = "Available in the full version",
	upgrade_preptime2_stat = "70s -> 80s",
	menu_discord = "Discord",
	upgrade_preptimerdisabled_name = "Unbound Preparation",
	menu_achievement = "GOALS",
	upgrade_slotadvanced3_desc = "Further increases the appearance chance of advanced units.",
	menu_collection = "COLLECTION",
	upgrade_slotadvanced2_stat = "Advanced 5% -> 10%",
	menu_exit = "Exit",
	upgrade_maxhp_name = "Extra Life I",
	menu_settings = "Settings",
	upgrade_slotadvanced2_desc = "Increases the appearance chance of advanced units.",
	menu_play = "Play",
	upgrade_slotadvanced3_name = "Advanced Research II",
	menu_start = "Start Game",
	upgrade_slotadvanced3_stat = "Advanced 10% -> 15%",
	upgrade_slotrare_desc = "Rare units begin to appear.",
	upgrade_slotrare_stat = "Rare 0% -> 2%",
	upgrade_corereroll_name = "Core Reroll",
	upgrade_preptime2_name = "Prep Time II",
	upgrade_interest_stat = "Interest {gold.png} 0 -> 50",
	upgrade_interest_desc = "At battle start, gain {gold.png} 10 per {gold.png} 100 held, up to {gold.png} 50.",
	upgrade_interest_name = "Tactical Interest",
	upgrade_shopreroll_stat = "Shop reroll cost reduction 0 -> 1",
	menu_stage_name_1 = "Open Forest",
	menu_stage_name_2 = "Deep Cave",
	upgrade_title = "UPGRADE",
	menu_stage_name_3 = "Wasteland",
	settings_back = "Back",
	menu_exit_confirm = "Are you sure you want to exit?",
	settings_chinese = "简体中文",
	settings_japanese = "日本語",
	settings_english = "English",
	settings_bgm_volume = "BGM",
	upgrade_action_select_move = "Select / Move",
	upgrade_action_zoom = "Zoom In / Out",
	upgrade_action_back = "Back",
	class_select_title = "Class Select",
	spawn_jackpot_only = "Jackpot Only",
	spawn_chance_fmt = "Chance: %s",
	cooldown_fmt = "Cooldown: %ds",
	passive_label = "Passive",
	item_type_battle = "Battle",
	item_type_training = "Training",
	delete_mode_name = "Delete Mode",
	delete_mode_desc = "Delete a held item. Refunds 50% of its price.",
	delete_mode_desc_upgraded = "Delete a held item. Refunds 80% of its price.",
	reroll_name = "Reroll",
	btn_skip = "Skip",
	stone_panel_title = "Fate Stone",
	pause_restart_confirm = "Restart the game?",
	pause_mainmenu_confirm = "Return to main menu?",
	pause_yes = "Yes",
	play_time_label = "Play Time",
	defeat_title = "Defeat",
	stat_tooltip_hp = "Health",
	stat_tooltip_atk = "Attack",
	stat_tooltip_aspd = "Attack Speed",
	stat_tooltip_dist = "Attack Range",
	stat_tooltip_pwr = "Power",
	slot_remaining_spins_tooltip = "Spins Left",
	core_scroll_remaining_spins_tooltip = "Spins Until Next Core",
	joker_symbol_tooltip = "Counts as every unit symbol.",
	upgrade_slotodds_name = "Sigil of Unsealing",
	upgrade_startgold2_stat = "Starting {gold.png} 500 -> 550",
	upgrade_startgold2_desc = "Start with an additional {gold.png} 50.",
	upgrade_startgold2_name = "Supply Warehouse",
	upgrade_comebackgold_stat = "After defeat {gold.png} 0 -> 100",
	upgrade_comebackgold_desc = "Gain {gold.png} 100 after a defeat if the run continues.",
	upgrade_comebackgold_name = "Retry Supply",
	upgrade_gateheal_stat = "Life recovery",
	upgrade_gateheal_desc = "Recover 1 life after clearing a Judgement or Boss wave.",
	upgrade_gateheal_name = "Gate Recovery",
	upgrade_comebackspin_stat = "First spin guaranteed win",
	upgrade_comebackspin_desc = "After losing life, guarantee the next spin wins. Once per run.",
	upgrade_comebackspin_name = "Comeback Lever",
	upgrade_startgold_stat = "Starting {gold.png} 450 -> 500",
	upgrade_startgold_desc = "Start with an additional {gold.png} 50.",
	upgrade_startgold_name = "Initial Supply",
	upgrade_noviceshield_stat = "First life loss 0 -> 1",
	upgrade_noviceshield_desc = "Prevents the first life loss once during waves 1–4.",
	upgrade_noviceshield_name = "Novice Shield",
	upgrade_maxunit3_stat = "7 -> 8",
	upgrade_maxunit3_desc = "Increases the maximum deployed unit count by 1 more.",
	class_promotion = "Class Promotion",
	upgrade_maxunit3_name = "Command Limit III",
	upgrade_maxunit2_stat = "6 -> 7",
	upgrade_maxunit2_desc = "Increases the maximum deployed unit count by 1 more.",
	pause_no = "No",
	upgrade_maxunit2_name = "Command Limit II",
	upgrade_preptimerdisabled_stat = "80s -> {infinity}",
	upgrade_preptimerdisabled_desc = "Removes the preparation time limit.",
	upgrade_maxunit_name = "Command Limit I",
	upgrade_shoppin_stat = "Pin product",
	upgrade_shoppin_desc = "Keep 1 shop item through the next refresh. Once per run.",
	btn_reroll = "Reroll",
	upgrade_shoppin_name = "Product Pin",
	btn_confirm = "Confirm",
	upgrade_itemresearch_stat = "2 specialist items added",
	btn_discard = "Discard",
	upgrade_itemresearch_desc = "Piercing Manual and Arcane Training can appear in the shop.",
	btn_back = "Back",
	upgrade_itemresearch_name = "Specialist Item Research I",
	reroll_desc = "Rerolls all items in the shop.",
	upgrade_iteminventory2_stat = "Item slots 7 -> 8",
	upgrade_iteminventory2_desc = "Item slots increase by 1.",
	upgrade_preptime_stat = "60s -> 70s",
	upgrade_iteminventory2_name = "Item Slot Expansion II",
	upgrade_preptime_desc = "Increases preparation time by 10 seconds.",
	upgrade_itemrefund_stat = "Refund rate 50% -> 80%",
	upgrade_preptime_name = "Prep Time I",
	upgrade_itemrefund_desc = "Item deletion refund rate increases from 50% to 80%.",
	upgrade_slotnudge_stat = "Nudge spin cost reduction",
	upgrade_itemrefund_name = "Recycling Ledger",
	upgrade_slotnudge_desc = "If a nudge creates no new win, the next spin costs {gold.png} 50 less.",
	upgrade_iteminventory_stat = "Item slots 6 -> 7",
	upgrade_slotnudge_name = "Nudge Mastery",
	upgrade_iteminventory_desc = "Item slots increase by 1.",
	upgrade_maxhp2_stat = "6 -> 7",
	upgrade_iteminventory_name = "Item Slot Expansion I",
	upgrade_maxhp2_name = "Extra Life II",
	upgrade_shopreroll_desc = "Shop reroll cost is reduced by 1.",
	spawn_orc_raider = "Orc Raider",
	upgrade_shopreroll_name = "Shop Reroll",
	duration_waves_fmt = "%d waves",
	upgrade_firstcoreuncommon_stat = "Uncommon core appears",
	duration_permanent = "Permanent",
	upgrade_firstcoreuncommon_desc = "Guarantees 1 uncommon-or-higher core in the first core choices.",
	wave_power_gap_label = "Pwr Gap",
	upgrade_firstcoreuncommon_name = "Radiant Awakening",
	wave_countdown_left = " left",
	upgrade_firstcorespin_stat = "First core required spins 0 -> -1",
	wave_countdown_until = " until ",
	upgrade_firstcorespin_desc = "Reduces the spins required for the first core choice by 1.",
	wave_countdown_boss = "Boss",
	settings_korean = "한국어",
	wave_countdown_judge = "Judgment",
	settings_disabled = "Disabled",
	wave_label_fmt = "Wave %d",
	settings_enabled = "Enabled",
	imprint_locked = "Locked",
	settings_tutorial = "Tutorial",
	imprint_empty_slot = "Empty",
	settings_language = "Language",
	imprint_absorb_stat_fmt = "ATK +%.1f%%  ASPD +%.1f%%  HP +%.1f%%",
	settings_sfx_volume = "SFX",
	imprint_mode_keep = "Keep",
	upgrade_slotrare_name = "Rare Unlock",
	imprint_mode_replace = "Replace",
	settings_master_volume = "Master Volume",
	imprint_convert_prefix = "Convert to Absorb LV +",
	settings_fullscreen = "Fullscreen",
	imprint_absorb_cancel = "Cancel",
	settings_borderless = "Borderless",
	imprint_gained_label = "Imprint",
	settings_windowed = "Windowed",
	class_option_fallback = "Option ",
	settings_display_mode = "Display Mode",
	settings_title = "Settings",
	upgrade_slotadvanced2_name = "Advanced Research I"
}
var_0_0.unitNameMap = {
	망령 = "Wraith",
	["곰 (Bear)"] = "Bear",
	성기병 = "Holy Cavalier",
	기병 = "Cavalry",
	검성제 = "Sword Emperor",
	MiniHorseMan03_hp02 = "Holy Cavalier",
	루시엘 = "Luciel",
	["멧돼지 (Boar.png)"] = "Boar",
	성황 = "Holy Emperor",
	장궁병 = "Longbowman",
	["하이 엘프 기병"] = "High Elf Cavalry",
	그리즐 = "Grizzle",
	명궁 = "Sharpshooter",
	["흑표범 (Black Panther)"] = "Black Panther",
	석궁수 = "Crossbowman",
	["광폭 기병"] = "Rampage Cavalry",
	궁수 = "Archer",
	["그린 섀도우"] = "Green Shadow",
	["야만 기병"] = "Barbarian Cavalry",
	검황 = "Sword Emperor",
	워베어 = "Warbear",
	["로빈 후드"] = "Robin Hood",
	["엘프 기병"] = "Elf Cavalry",
	철퇴병 = "Mace Soldier",
	["해골 중기병"] = "Skull Lancer",
	철기병 = "Iron Cavalry",
	중기병 = "Heavy Cavalry",
	해적왕 = "Pirate King",
	["엔트 로드"] = "Ent Lord",
	["바이올렛 둠"] = "Violet Doom",
	["루나 현자"] = "Luna Sage",
	["데스 로드"] = "Death Lord",
	["엘프 중기병"] = "Elf Lancer",
	["엘프 궁수"] = "Elf Archer",
	마그누스 = "Magnus",
	황제 = "Emperor",
	마검사 = "Magic Swordsman",
	["해골 사수"] = "Skull Marksman",
	돌격병 = "Charger",
	["사신 기사"] = "Reaper Knight",
	결투사 = "Duelist",
	["화염 기사"] = "Fire Knight",
	["본 메이지"] = "Bone Mage",
	["공허 기사"] = "Void Knight",
	나이트메어 = "Nightmare",
	팔라딘 = "Paladin",
	["야수 기사"] = "Beast Knight",
	["해골 기사"] = "Skull Fighter",
	["소울 리퍼"] = "Soul Reaper",
	우르간 = "Urgan",
	["엘프 기사"] = "Elf Knight",
	["거신 (Colossus)"] = "Colossus",
	젠 = "Zen",
	["엘프 병사"] = "Elf Soldier",
	글로리 = "Glory",
	MiniPrinceMan = "Duelist",
	크러셔 = "Crusher",
	병사 = "Soldier",
	기본 = "Basic",
	["최고 유닛"] = "Best Unit",
	["해골 근위병"] = "Skull Guard",
	전사 = "Warrior",
	늑대 = "Wolf",
	["엘프 근위병"] = "Elf Guard",
	정찰병 = "Scout",
	허스칼 = "Huscarl",
	순찰자 = "Patroller",
	엘드가드 = "Eldguard",
	MiniArcherMan03 = "Longbowman",
	침묵병 = "Silencer",
	근위병 = "Guard",
	MiniSpearMan03 = "Guard",
	MiniArcherMan02 = "Crossbowman",
	MiniArcherMan = "Archer",
	약탈자 = "Raider",
	염투사 = "Flame Fighter",
	오딘 = "Odin",
	투사 = "Fighter",
	["엘프 현자"] = "Elf Sage",
	["사수 병사"] = "Marksman Soldier",
	보병 = "Infantry",
	MiniSpearMan02 = "Spearguard",
	치유술사 = "Healer",
	MiniSpearMan = "Spearman",
	대주술사 = "Arch-Shaman",
	암사수 = "Dark Archer",
	["해골 투사"] = "Skull Fighter",
	["엘프 사수"] = "Elf Marksman",
	마도사 = "Sorcerer",
	게이즈 = "Gaze",
	주술사 = "Shaman",
	바이올 = "Viol",
	안틀러 = "Antler",
	암검사 = "Dark Swordsman",
	MiniMage = "Mage",
	스카우트 = "Scout",
	바그 = "Bagg",
	프랑켄슈타인 = "Frankenstein",
	카오스 = "Chaos",
	빅터 = "Victor",
	엔트 = "Ent",
	유닛 = "Unit",
	드루이드 = "Druid",
	MiniHorseMan = "Cavalry",
	곰 = "Bear",
	멧돼지 = "Boar",
	레버넌트 = "Revenant",
	거신 = "Colossus",
	["우드 워든"] = "Wood Warden",
	["암흑 장군"] = "Dark General",
	성기사 = "Holy Knight",
	암기사 = "Shadow Knight",
	흑표범 = "Black Panther",
	라이스 = "Rice",
	베일 = "Veil",
	["현자 엘프"] = "Sage Elf",
	플레어 = "Flare",
	["엘프 주술사"] = "Elf Shaman",
	스펙터 = "Specter",
	["암흑 술사"] = "Dark Mage",
	["네크로 로드"] = "Necro Lord",
	크루세이더 = "Crusader",
	기사 = "Knight",
	리치 = "Lich",
	["원시 법사"] = "Primitive Mage",
	해적 = "Pirate",
	["해골 마도사"] = "Skull Mage",
	MiniSwordMan03 = "Knight",
	["야생 법사"] = "Wild Mage",
	["엘프 법사"] = "Elf Mage",
	MiniSwordMan02 = "Soldier",
	대마법사 = "Archmage",
	마법사 = "Mage",
	MiniSwordMan = "Warrior",
	글룸 = "Gloom",
	["엘프 창병"] = "Elf Spearman",
	["데스 나이트"] = "Death Knight",
	창위병 = "Spearguard",
	창병 = "Spearman"
}
var_0_0.unitNameDisplayMap = {
	엘프기사 = "엘프 기사",
	공허기사 = "공허 기사",
	야생법사 = "야생 법사",
	엘프기병 = "엘프 기병",
	암흑술사 = "암흑 술사",
	엔트로드 = "엔트 로드",
	암흑장군 = "암흑 장군",
	엘프법사 = "엘프 법사",
	야수기사 = "야수 기사",
	본메이지 = "본 메이지",
	우드워든 = "우드 워든",
	해골기사 = "해골 기사",
	엘프궁수 = "엘프 궁수",
	엘프병사 = "엘프 병사",
	사신기사 = "사신 기사",
	화염기사 = "화염 기사",
	엘프창병 = "엘프 창병",
	원시법사 = "원시 법사"
}

function var_0_0.normalizeUnitName(arg_12_0)
	return var_0_7("unit.display." .. tostring(arg_12_0 or ""), "ko", var_0_0.unitNameDisplayMap[arg_12_0] or arg_12_0)
end

var_0_0.classTypeMap = {
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
	파쇄형 = "Breaker",
	철벽형 = "Tank",
	범위형 = "Area"
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

function var_0_0.translateUnitName(arg_14_0, arg_14_1)
	arg_14_1 = arg_14_1 or "ko"

	local var_14_0 = arg_14_0

	if arg_14_1 == "en" then
		local var_14_1 = var_0_7("unit.name." .. tostring(var_14_0 or ""), arg_14_1, nil)

		if var_14_1 then
			return var_14_1
		end

		local var_14_2 = var_0_8(var_14_0)

		if var_14_2 then
			return var_14_2
		end
	end

	arg_14_0 = var_0_0.normalizeUnitName(arg_14_0)

	if arg_14_0 then
		if type(arg_14_0) == "string" then
			local var_14_3 = arg_14_0:match("^그림자 (.+)$")

			if var_14_3 and arg_14_1 == "en" then
				local var_14_4 = var_0_0.normalizeUnitName(var_14_3)
				local var_14_5 = var_0_7("unit.name." .. tostring(var_14_4), arg_14_1, var_0_0.unitNameMap[var_14_4])
				local var_14_6

				var_14_6 = var_0_9(var_14_5, tostring(var_14_4)) or "Unknown"

				return "Shadow " .. var_14_6
			end
		end

		local var_14_7 = arg_14_1 == "en" and (var_0_0.unitNameMap[arg_14_0] or var_0_0.unitNameMap[var_14_0] or arg_14_0) or arg_14_0

		if arg_14_1 == "en" then
			var_14_7 = var_0_9(var_14_7, var_0_8(var_14_0) or tostring(var_14_0 or arg_14_0 or "")) or "Unknown"
		end

		return var_0_7("unit.name." .. tostring(arg_14_0), arg_14_1, var_14_7)
	end

	return arg_14_0
end

var_0_0.imprintNameMap = {
	poison = "Poison",
	self_destruct = "Self-Destruct",
	lifesteal = "Lifesteal",
	bash = "Bash",
	timeless = "Timeless",
	ruin = "Ruin",
	transfer = "Transfer",
	enlarge = "Enlarge",
	earthquake = "Earthquake",
	panther_fury = "Panther Fury",
	fortify = "Fortify",
	chain = "Chain",
	knockback = "Knockback",
	meteor = "Meteor",
	undying_soul = "Undying Soul",
	execute = "Execute",
	annihilation = "Annihilation",
	relentless = "Relentless",
	majesty = "Majesty",
	blind = "Blind",
	volley = "Volley",
	block = "Block",
	fear = "Fear",
	pierce = "Pierce",
	chill = "Chill",
	overlord = "Overlord",
	colossus_descent = "Colossus",
	shadow_clone = "Shadow Clone",
	overdrive = "Overdrive",
	brace = "Buildup",
	revival = "Revival"
}
var_0_0.imprintShortDescMap = {
	poison = "Poison",
	self_destruct = "Explosion",
	lifesteal = "Lifesteal",
	bash = "Stun",
	timeless = "Time Stop",
	ruin = "DoT Aura",
	transfer = "Spread",
	enlarge = "Giant Form",
	earthquake = "AoE Stun",
	panther_fury = "Panther",
	fortify = "DMG Reduce",
	chain = "Chain Hit",
	knockback = "Knockback",
	meteor = "Meteor",
	undying_soul = "Soul",
	execute = "Execute",
	annihilation = "AoE Blast",
	relentless = "Combo Speed",
	majesty = "Debuff Foes",
	blind = "Blind",
	volley = "Extra Strike",
	block = "Block",
	fear = "Panic",
	pierce = "Piercing Hit",
	chill = "Slow",
	overlord = "Shadow Lord",
	colossus_descent = "Colossus",
	shadow_clone = "Clone",
	overdrive = "Kill Boost",
	brace = "Strike Boost",
	revival = "Revive"
}
var_0_0.imprintDescMap = {
	chill_2 = "On attack: slow target's move & ASPD by 35%",
	overlord_5 = "Turn up to 4 slain enemies into powerful followers",
	chill_1 = "On attack: slow target's move & ASPD by 30%",
	overlord_4 = "Turn up to 4 slain enemies into stronger followers",
	chain_5 = "On hit: chain to 5 nearest enemies",
	overlord_3 = "Turn up to 4 slain enemies into followers",
	chain_4 = "On hit: chain to 4 nearest enemies",
	overlord_2 = "Turn up to 3 slain enemies into followers",
	chain_3 = "On hit: chain to 3 nearest enemies",
	overlord_1 = "Turn up to 2 slain enemies into followers",
	chain_2 = "On hit: chain to 2 nearest enemies",
	colossus_descent_5 = "Summon a Colossus (HP 400%, ATK 90%). Knockback stuns 0.8s",
	chain_1 = "On hit: chain to 1 nearest enemy",
	colossus_descent_4 = "Summon a Colossus (HP 340%, ATK 75%). Knockback stuns 0.6s",
	fear_5 = "20% chance on attack: frighten target to flee briefly",
	colossus_descent_3 = "Summon a Colossus (HP 300%, ATK 60%). Knockback stuns 0.4s",
	fear_4 = "18% chance on attack: frighten target to flee briefly",
	colossus_descent_2 = "Summon a Colossus (HP 240%, ATK 50%)",
	fear_3 = "16% chance on attack: frighten target to flee briefly",
	colossus_descent_1 = "Summon a Colossus (HP 200%, ATK 40%)",
	fear_2 = "14% chance on attack: frighten target to flee briefly",
	ruin_5 = "Presence: all enemies take 20% ATK as DoT/sec",
	fear_1 = "12% chance on attack: frighten target to flee briefly",
	ruin_4 = "Presence: all enemies take 16% ATK as DoT/sec",
	self_destruct_5 = "On death: explode dealing 340% ATK to nearby enemies",
	ruin_3 = "Presence: all enemies take 12% ATK as DoT/sec",
	self_destruct_4 = "On death: explode dealing 290% ATK to nearby enemies",
	ruin_2 = "Presence: all enemies take 9% ATK as DoT/sec",
	self_destruct_3 = "On death: explode dealing 250% ATK to nearby enemies",
	ruin_1 = "Presence: all enemies take 6% ATK as DoT/sec",
	self_destruct_2 = "On death: explode dealing 220% ATK to nearby enemies",
	majesty_5 = "Presence: all enemies -42% ATK, -45% Max HP",
	self_destruct_1 = "On death: explode dealing 200% ATK to nearby enemies",
	majesty_4 = "Presence: all enemies -35% ATK, -38% Max HP",
	lifesteal_5 = "Recover 15% of dmg dealt as HP",
	volley_2 = "Every 3rd basic attack immediately strikes the same target again for {atk.png} 60% damage.",
	lifesteal_4 = "Recover 12% of dmg dealt as HP",
	relentless_2 = "Gain {aspd.png} +5% per consecutive attack (max 4 stacks)",
	lifesteal_3 = "Recover 10% of dmg dealt as HP",
	brace_5 = "After a basic attack, the next basic attack is empowered by {atk.png} +80%.",
	lifesteal_2 = "Recover 8% of dmg dealt as HP",
	poison_1 = "25% chance on attack: poison target (lasts 2s)",
	lifesteal_1 = "Recover 6% of dmg dealt as HP",
	poison_3 = "25% chance on attack: poison target (lasts 3s)",
	block_5 = "30% chance to block incoming attacks",
	relentless_1 = "Gain {aspd.png} +4% per consecutive attack (max 4 stacks)",
	block_4 = "26% chance to block incoming attacks",
	volley_4 = "Every 3rd basic attack immediately strikes the same target again for {atk.png} 100% damage.",
	block_3 = "22% chance to block incoming attacks",
	overdrive_5 = "After defeating an enemy, the next basic attack is empowered by {atk.png} +175%.",
	block_2 = "18% chance to block incoming attacks",
	blind_1 = "16% chance on attack: blind target for 0.4s (attacks miss)",
	block_1 = "15% chance to block incoming attacks",
	overdrive_4 = "After defeating an enemy, the next basic attack is empowered by {atk.png} +150%.",
	poison_5 = "25% chance on attack: poison target (lasts 5s)",
	blind_5 = "16% chance on attack: blind target for 1.3s (attacks miss)",
	poison_4 = "25% chance on attack: poison target (lasts 4s)",
	overdrive_3 = "After defeating an enemy, the next basic attack is empowered by {atk.png} +125%.",
	transfer_5 = "On attack, {atk.png} 40% damage spreads to 3 other nearby enemies.",
	transfer_4 = "On attack, {atk.png} 40% damage spreads to 2 other nearby enemies.",
	poison_2 = "25% chance on attack: poison target (lasts 2.5s)",
	pierce_2 = "Basic attacks pierce up to 2 additional targets",
	transfer_2 = "On attack, {atk.png} 40% damage spreads to 1 other nearby enemy.",
	pierce_1 = "Basic attacks pierce up to 1 additional target",
	knockback_5 = "22% chance on attack: launch target far away",
	fortify_5 = "DMG taken -34%",
	knockback_4 = "22% chance on attack: powerfully knock back target",
	fortify_4 = "DMG taken -31%",
	knockback_3 = "22% chance on attack: push target back far",
	fortify_3 = "DMG taken -27%",
	knockback_2 = "22% chance on attack: firmly knock back target",
	fortify_2 = "DMG taken -22%",
	knockback_1 = "22% chance on attack: slightly knock back target",
	fortify_1 = "DMG taken -15%",
	bash_5 = "18% chance on attack: stun target for 1.3s",
	blind_4 = "16% chance on attack: blind target for 1.0s (attacks miss)",
	bash_4 = "18% chance on attack: stun target for 1.1s",
	transfer_3 = "On attack, {atk.png} 40% damage spreads to 2 other nearby enemies.",
	bash_3 = "18% chance on attack: stun target for 0.9s",
	pierce_3 = "Basic attacks pierce up to 3 additional targets",
	bash_2 = "18% chance on attack: stun target for 0.7s",
	blind_2 = "16% chance on attack: blind target for 0.6s (attacks miss)",
	bash_1 = "18% chance on attack: stun target for 0.5s",
	transfer_1 = "On attack, {atk.png} 40% damage spreads to 1 other nearby enemy.",
	relentless_5 = "Gain {aspd.png} +6% per consecutive attack (max 6 stacks)",
	blind_3 = "16% chance on attack: blind target for 0.8s (attacks miss)",
	relentless_4 = "Gain {aspd.png} +6% per consecutive attack (max 5 stacks)",
	volley_5 = "Every 3rd basic attack immediately strikes the same target again for {atk.png} 130% damage.",
	relentless_3 = "Gain {aspd.png} +5% per consecutive attack (max 5 stacks)",
	volley_3 = "Every 3rd basic attack immediately strikes the same target again for {atk.png} 80% damage.",
	brace_3 = "After a basic attack, the next basic attack is empowered by {atk.png} +50%.",
	volley_1 = "Every 3rd basic attack immediately strikes the same target again for {atk.png} 40% damage.",
	brace_2 = "After a basic attack, the next basic attack is empowered by {atk.png} +35%.",
	brace_4 = "After a basic attack, the next basic attack is empowered by {atk.png} +65%.",
	brace_1 = "After a basic attack, the next basic attack is empowered by {atk.png} +25%.",
	pierce_5 = "Basic attacks pierce up to 5 additional targets",
	pierce_4 = "Basic attacks pierce up to 4 additional targets",
	overdrive_2 = "After defeating an enemy, the next basic attack is empowered by {atk.png} +100%.",
	overdrive_1 = "After defeating an enemy, the next basic attack is empowered by {atk.png} +75%.",
	majesty_3 = "Presence: all enemies -27% ATK, -30% Max HP",
	majesty_2 = "Presence: all enemies -20% ATK, -23% Max HP",
	majesty_1 = "Presence: all enemies -12% ATK, -15% Max HP",
	revival_5 = "Revive once at 80% HP with +40% ATK for 8s",
	revival_4 = "Revive once at 70% HP with +35% ATK for 7s",
	revival_3 = "Revive once at 60% HP with +30% ATK for 6s",
	revival_2 = "Revive once at 50% HP with +25% ATK for 5s",
	revival_1 = "Revive once at 40% HP with +20% ATK for 4s",
	panther_fury_5 = "Summon a Panther (HP 80%, ATK 100%)",
	panther_fury_4 = "Summon a Panther (HP 70%, ATK 85%)",
	panther_fury_3 = "Summon a Panther (HP 60%, ATK 75%)",
	panther_fury_2 = "Summon a Panther (HP 50%, ATK 65%)",
	panther_fury_1 = "Summon a Panther (HP 40%, ATK 55%)",
	shadow_clone_5 = "Summon a near-equal clone. Respawns after 2s",
	shadow_clone_4 = "Summon an even more powerful clone. Respawns after 2s",
	shadow_clone_3 = "Summon a powerful clone. Respawns after 2s",
	shadow_clone_2 = "Summon a stronger clone. Respawns after 2s",
	shadow_clone_1 = "Summon a clone to fight alongside you. Respawns after 2s",
	meteor_5 = "10% chance: drop a Meteor (500% dmg)",
	meteor_4 = "10% chance: drop a Meteor (420% dmg)",
	meteor_3 = "10% chance: drop a Meteor (360% dmg)",
	meteor_2 = "10% chance: drop a Meteor (320% dmg)",
	meteor_1 = "10% chance: drop a Meteor (280% dmg)",
	annihilation_5 = "35% chance: AoE 300% ATK to up to 5 nearby enemies",
	annihilation_4 = "35% chance: AoE 250% ATK to up to 5 nearby enemies",
	annihilation_3 = "35% chance: AoE 210% ATK to up to 5 nearby enemies",
	annihilation_2 = "35% chance: AoE 180% ATK to up to 5 nearby enemies",
	annihilation_1 = "35% chance: AoE 160% ATK to up to 5 nearby enemies",
	earthquake_5 = "8% chance on hit: 400% ATK to all enemies + stun",
	earthquake_4 = "8% chance on hit: 340% ATK to all enemies + stun",
	earthquake_3 = "8% chance on hit: 300% ATK to all enemies + stun",
	earthquake_2 = "8% chance on hit: 260% ATK to all enemies + stun",
	earthquake_1 = "8% chance on hit: 220% ATK to all enemies + stun",
	execute_5 = "On direct attack: instantly kill non-boss at <=20% HP",
	execute_4 = "On direct attack: instantly kill non-boss at <=18% HP",
	execute_3 = "On direct attack: instantly kill non-boss at <=16% HP",
	execute_2 = "On direct attack: instantly kill non-boss at <=14% HP",
	timeless_5 = "18% chance on attack: stop time for 6s",
	execute_1 = "On direct attack: instantly kill non-boss at <=12% HP",
	timeless_4 = "15% chance on attack: stop time for 5s",
	enlarge_5 = "15% chance when hit: become Giant for 10s",
	timeless_3 = "12% chance on attack: stop time for 4s",
	enlarge_4 = "15% chance when hit: become Giant for 8s",
	timeless_2 = "10% chance on attack: stop time for 3.5s",
	enlarge_3 = "15% chance when hit: become Giant for 6s",
	timeless_1 = "8% chance on attack: stop time for 3s",
	enlarge_2 = "15% chance when hit: become Giant for 5s",
	undying_soul_5 = "On death: remain in battle as a Soul (120% ATK)",
	enlarge_1 = "15% chance when hit: become Giant for 4s",
	undying_soul_4 = "On death: remain in battle as a Soul (100% ATK)",
	chill_5 = "On attack: slow target's move & ASPD by 50%",
	undying_soul_3 = "On death: remain in battle as a Soul (80% ATK)",
	chill_4 = "On attack: slow target's move & ASPD by 45%",
	undying_soul_2 = "On death: remain in battle as a Soul (60% ATK)",
	chill_3 = "On attack: slow target's move & ASPD by 40%",
	undying_soul_1 = "On death: remain in battle as a Soul (40% ATK)"
}
var_0_0.randomOptionNameMap = {
	["06"] = "Kill Haste",
	["17"] = "Lone Wolf",
	["05"] = "Finishing Blow",
	["18"] = "Emergency Fund",
	["04"] = "Opening Strike",
	["19"] = "Base Guardian",
	["03"] = "Reflex",
	["20"] = "Reckoning Day",
	["02"] = "Survival Instinct",
	["21"] = "Boss Slayer",
	["01"] = "Battle Instinct",
	["22"] = "Skill Acceleration",
	["16"] = "Kill Recovery",
	["15"] = "Combat Shift",
	["14"] = "Leadership",
	["13"] = "Golden Egg",
	["12"] = "Packed Lunch",
	["11"] = "Blood Pact",
	["10"] = "Battle Fervor",
	["09"] = "Blood Rage",
	["08"] = "Berserk",
	["07"] = "Undying"
}
var_0_0.randomOptionEffectMap = {
	["06"] = "On kill: {aspd.png} +15~35% for 5s",
	["17"] = "If there are no other allies of the same type: {atk.png} +8~16%, damage taken -3~7%",
	["05"] = "Last enemy {atk.png} +15~35%",
	["18"] = "On absorb: {gold.png} +50~250",
	["04"] = "First attack {atk.png} +25~45%",
	["19"] = "Prioritize enemies near the base and deal {atk.png} +15~35% damage to that enemy",
	["03"] = "{aspd.png} +4~8%",
	["20"] = "{atk.png} +30~50% in Judgment Wave",
	["02"] = "{hp.png} +8~12%",
	["21"] = "{atk.png} +30~50% in Boss Wave",
	["01"] = "{atk.png} +6~10%",
	["22"] = "Active skill cooldown -8~16%",
	["16"] = "On kill, restore 4~8% of max {hp.png}. Up to 3 times per battle",
	["15"] = "Above 50% HP: {atk.png} +20%. At 50% HP or below: Damage Taken -20%",
	["14"] = "This unit doesn't count toward max units",
	["13"] = "On absorb: {essence.png} +1~5",
	["12"] = "On absorb: Absorb LV +1~5",
	["11"] = "{atk.png} +4~8% per fallen ally",
	["10"] = "Every 2s after combat begins: {atk.png} +3~7% per stack (max 5 stacks)",
	["09"] = "Missing HP grants up to {atk.png} +25~45%",
	["08"] = "{atk.png} +18~32% / Damage Taken +10~18%",
	["07"] = "On death: survive once for 1s at 1 {hp.png}"
}

function var_0_0.getRandomOptionEffect(arg_15_0, arg_15_1, arg_15_2)
	arg_15_2 = arg_15_2 or "ko"

	if not arg_15_0 then
		return arg_15_2 == "en" and var_0_9(arg_15_1, "") or arg_15_1
	end

	local var_15_0 = tostring(arg_15_0)
	local var_15_1 = arg_15_2 == "en" and (var_0_0.randomOptionEffectMap[var_15_0] or arg_15_1) or arg_15_1

	if arg_15_2 == "en" then
		var_15_1 = var_0_9(var_15_1, "")
	end

	return var_0_7("random_option.effect." .. var_15_0, arg_15_2, var_15_1)
end

var_0_0.gradeLabelMap = {
	normal = "Normal",
	prism = "Prism",
	legendary = "Legendary",
	rare = "Rare",
	advanced = "Advanced"
}

function var_0_0.getGradeLabel(arg_16_0, arg_16_1, arg_16_2)
	arg_16_2 = arg_16_2 or "ko"

	if not arg_16_0 then
		return arg_16_1
	end

	local var_16_0 = arg_16_2 == "en" and (var_0_0.gradeLabelMap[arg_16_0] or arg_16_1) or arg_16_1

	if arg_16_2 == "en" then
		var_16_0 = var_0_9(var_16_0, tostring(arg_16_0))
	end

	return var_0_7("grade.label." .. tostring(arg_16_0), arg_16_2, var_16_0)
end

function var_0_0.getImprintName(arg_17_0, arg_17_1, arg_17_2)
	arg_17_2 = arg_17_2 or "ko"

	if not arg_17_0 then
		return arg_17_2 == "en" and var_0_9(arg_17_1, "") or arg_17_1
	end

	local var_17_0 = tostring(arg_17_0)
	local var_17_1 = arg_17_2 == "en" and (var_0_0.imprintNameMap[arg_17_0] or var_0_0.randomOptionNameMap[var_17_0] or arg_17_1) or arg_17_1

	if arg_17_2 == "en" then
		var_17_1 = var_0_9(var_17_1, var_17_0)
	end

	return var_0_7("imprint.name." .. var_17_0, arg_17_2, var_0_7("random_option.name." .. var_17_0, arg_17_2, var_17_1))
end

function var_0_0.getImprintShortDesc(arg_18_0, arg_18_1, arg_18_2)
	arg_18_2 = arg_18_2 or "ko"

	if not arg_18_0 then
		return arg_18_2 == "en" and var_0_9(arg_18_1, "") or arg_18_1
	end

	local var_18_0 = tostring(arg_18_0)
	local var_18_1 = arg_18_2 == "en" and (var_0_0.imprintShortDescMap[arg_18_0] or arg_18_1) or arg_18_1

	if arg_18_2 == "en" then
		var_18_1 = var_0_9(var_18_1, "")
	end

	return var_0_7("imprint.short." .. var_18_0, arg_18_2, var_18_1)
end

function var_0_0.getImprintDesc(arg_19_0, arg_19_1, arg_19_2, arg_19_3)
	arg_19_3 = arg_19_3 or "ko"

	if not arg_19_0 then
		return arg_19_3 == "en" and var_0_9(arg_19_2, "") or arg_19_2
	end

	local var_19_0 = tostring(arg_19_0) .. "_" .. tostring(tonumber(arg_19_1) or 1)
	local var_19_1 = arg_19_3 == "en" and (var_0_0.imprintDescMap[var_19_0] or arg_19_2) or arg_19_2

	if arg_19_3 == "en" then
		var_19_1 = var_0_9(var_19_1, "")
	end

	return var_0_7("imprint.desc." .. var_19_0, arg_19_3, var_19_1)
end

function var_0_0.getText(arg_20_0, arg_20_1)
	return var_0_7(arg_20_0, arg_20_1 or "ko", arg_20_0)
end

function var_0_0.getSkillName(arg_21_0, arg_21_1, arg_21_2)
	arg_21_2 = arg_21_2 or "ko"

	if not arg_21_0 then
		return arg_21_2 == "en" and var_0_9(arg_21_1, "") or arg_21_1
	end

	local var_21_0 = arg_21_2 == "en" and var_0_9(arg_21_1, tostring(arg_21_0)) or arg_21_1

	return var_0_7("skill.name." .. tostring(arg_21_0), arg_21_2, var_21_0)
end

function var_0_0.getSkillDesc(arg_22_0, arg_22_1, arg_22_2)
	arg_22_2 = arg_22_2 or "ko"

	if not arg_22_0 then
		return arg_22_2 == "en" and var_0_9(arg_22_1, "") or arg_22_1
	end

	local var_22_0 = arg_22_2 == "en" and var_0_9(arg_22_1, "") or arg_22_1

	return var_0_7("skill.desc." .. tostring(arg_22_0), arg_22_2, var_22_0)
end

var_0_0.questNameMap = {
	spin_60_total = "Spin the Slot Machine 60 Times",
	absorb_5 = "Absorb 5 Times",
	reach_wave_10_no_3_star = "Reach Wave 10 Without Any 3-Star Units",
	unique_unit_4 = "Own 4 Different Unit Types",
	clutch_win = "Win a Spin in the Last 2 Seconds Before Battle",
	same_unit_4 = "Own 4 of the Same Unit",
	win_with_5_or_fewer_units = "Win with 5 or Fewer Units",
	essence_15_total = "Reach 15 Essence",
	ranged_units_only = "Keep Only Ranged Units",
	spin_20_total = "Spin the Slot Machine 20 Times",
	no_item_5_waves = "Don't Use Items for 5 Waves",
	spin_6_in_one_round = "Spin 6 Times in One Round",
	no_shop_5_waves = "Don't Use the Shop for 5 Waves",
	advanced_promotion = "Promote a Unit Using Only Advanced+ Units",
	no_nudge_5_waves = "Don't Use Nudge for 5 Waves",
	no_absorb_5_waves = "Survive 5 Waves Without Absorbing",
	spin_35_total = "Spin the Slot Machine 35 Times",
	normal_units_only_5_waves = "Use Only Normal Units for 5 Waves",
	absorb_3_unique_symbols = "Absorb 3 Different Unit Types into One Unit",
	win_with_last_unit = "Win with Only 1 Unit Remaining",
	win_with_3_or_fewer_units = "Win with 3 or Fewer Units",
	wave_death_limit_1 = "Lose 1 or Fewer Units in a Wave",
	win_with_one_4_star = "Win a Wave with a Single 4-Star+ Unit",
	rank_up_to_2 = "Promote a Unit to 2-Star",
	normal_units_only_judgement = "Clear a Judgment Wave with Only Normal Units",
	unit_with_3_imprints = "Own a Unit with 3+ Imprints",
	win_with_1_hp = "Win a Wave with 1 HP",
	["3_units_absorbed_once"] = "Absorb at Least Once into 3 Different Units"
}
var_0_0.ko.quest_status_complete = "수령"
var_0_0.ko.quest_status_incomplete = "미완료"
var_0_0.ko.quest_status_locked = "닫힘"
var_0_0.en.quest_status_complete = "Claim"
var_0_0.en.quest_status_incomplete = "Incomplete"
var_0_0.en.quest_status_locked = "Locked"

function var_0_0.getQuestName(arg_23_0, arg_23_1, arg_23_2)
	arg_23_2 = arg_23_2 or "ko"

	if not arg_23_0 then
		return arg_23_2 == "en" and var_0_9(arg_23_1, "") or arg_23_1
	end

	local var_23_0 = arg_23_2 == "en" and (var_0_0.questNameMap[arg_23_0] or arg_23_1) or arg_23_1

	if arg_23_2 == "en" then
		var_23_0 = var_0_9(var_23_0, tostring(arg_23_0))
	end

	return var_0_7("quest.name." .. tostring(arg_23_0), arg_23_2, var_23_0)
end

var_0_0.stoneNameMap = {
	MileStone = "MileStone",
	OriginStone = "Origin Stone",
	BlessingStone = "Blessing Stone"
}
var_0_0.stoneDescMap = {
	MileStone = "Changes unit spawn rates: Normal 50%, Advanced 35%, Rare 13.5%, Legendary 1%, Prism 0.5%",
	OriginStone = "Changes unit spawn rates: Normal 60%, Advanced 30%, Rare 8.5%, Legendary 1%, Prism 0.5%",
	BlessingStone = "Changes unit spawn rates: Normal 40%, Advanced 40%, Rare 16.5%, Legendary 3%, Prism 0.5%"
}

function var_0_0.getStoneName(arg_24_0, arg_24_1, arg_24_2)
	arg_24_2 = arg_24_2 or "ko"

	if not arg_24_0 then
		return arg_24_2 == "en" and var_0_9(arg_24_1, "") or arg_24_1
	end

	local var_24_0 = arg_24_2 == "en" and (var_0_0.stoneNameMap[arg_24_0] or arg_24_1) or arg_24_1

	if arg_24_2 == "en" then
		var_24_0 = var_0_9(var_24_0, tostring(arg_24_0))
	end

	return var_0_7("stone.name." .. tostring(arg_24_0), arg_24_2, var_24_0)
end

function var_0_0.getStoneDesc(arg_25_0, arg_25_1, arg_25_2)
	arg_25_2 = arg_25_2 or "ko"

	if not arg_25_0 then
		return arg_25_2 == "en" and var_0_9(arg_25_1, "") or arg_25_1
	end

	local var_25_0 = arg_25_2 == "en" and (var_0_0.stoneDescMap[arg_25_0] or arg_25_1) or arg_25_1

	if arg_25_2 == "en" then
		var_25_0 = var_0_9(var_25_0, "")
	end

	return var_0_7("stone.desc." .. tostring(arg_25_0), arg_25_2, var_25_0)
end

var_0_0.coreNameMap = {
	LuckyCharm = "Lucky Charm",
	StellarBlessing = "Stellar Blessing",
	OracleSigil = "Oracle's Sigil",
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
	Chainshroom = "Chainshroom"
}
var_0_0.coreDescMap = {
	LuckyCharm = "On spin fail, next spin's win chance +8%. Max 3 stacks; resets on win.",
	StellarBlessing = "On 2 consecutive wins, each unit on the next spin has a 2% chance to appear as a Prism unit.",
	OracleSigil = "Every 6th spin has a jackpot chance of 1%.",
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
	Chainshroom = "On 2 consecutive wins, 1 unit from that spin is summoned once more."
}

function var_0_0.getCoreName(arg_26_0, arg_26_1, arg_26_2)
	arg_26_2 = arg_26_2 or "ko"

	if not arg_26_0 then
		return arg_26_2 == "en" and var_0_9(var_0_8(arg_26_1) or arg_26_1, "Core") or arg_26_1
	end

	local var_26_0 = arg_26_2 == "en" and (var_0_0.coreNameMap[arg_26_0] or var_0_8(arg_26_1) or arg_26_1) or arg_26_1

	if arg_26_2 == "en" then
		var_26_0 = var_0_9(var_26_0, tostring(arg_26_0))
	end

	return var_0_7("core.name." .. tostring(arg_26_0), arg_26_2, var_26_0)
end

function var_0_0.getCoreDesc(arg_27_0, arg_27_1, arg_27_2)
	arg_27_2 = arg_27_2 or "ko"

	if not arg_27_0 then
		return arg_27_2 == "en" and var_0_9(arg_27_1, "") or arg_27_1
	end

	local var_27_0 = arg_27_2 == "en" and (var_0_0.coreDescMap[arg_27_0] or arg_27_1) or arg_27_1

	if arg_27_2 == "en" then
		var_27_0 = var_0_9(var_27_0, "")
	end

	return var_0_7("core.desc." .. tostring(arg_27_0), arg_27_2, var_27_0)
end

function var_0_0.getCoreTrigger(arg_28_0, arg_28_1, arg_28_2)
	arg_28_2 = arg_28_2 or "ko"

	if not arg_28_0 then
		return arg_28_2 == "en" and var_0_9(arg_28_1, "") or arg_28_1
	end

	local var_28_0 = arg_28_2 == "en" and var_0_9(arg_28_1, "") or arg_28_1

	return var_0_7("core.trigger." .. tostring(arg_28_0), arg_28_2, var_28_0)
end

var_0_0.itemNameMap = {
	["06"] = "Frontline Armor",
	["12"] = "Gate Net",
	["05"] = "Hunter's Mark",
	["36"] = "Duelist Manual",
	["04"] = "Broken Shield",
	["37"] = "Shield Manual",
	["03"] = "First Aid",
	["38"] = "Volley Manual",
	["02"] = "Sturdy Shield",
	["01"] = "Sturdy Fist",
	["16"] = "Solitary Oath",
	["15"] = "Battle Cry",
	["14"] = "Oath Helm",
	["35"] = "Cavalry Manual",
	["34"] = "Mage Manual",
	["33"] = "Spearman Manual",
	["32"] = "Archer Manual",
	["31"] = "Warrior Manual",
	["08"] = "Cursed Mushroom",
	["07"] = "Dust Cloak"
}
var_0_0.itemEffectFnMap = {
	["01"] = function(arg_29_0)
		arg_29_0 = math.max(1, math.min(tonumber(arg_29_0 or 1) or 1, 3))

		local var_29_0 = ({
			5,
			8,
			12
		})[arg_29_0] or 12

		return string.format("All allies basic attack damage +%d%%. (Lv.%d)", var_29_0, arg_29_0)
	end,
	["02"] = function(arg_30_0)
		arg_30_0 = math.max(1, math.min(tonumber(arg_30_0 or 1) or 1, 3))

		local var_30_0 = ({
			5,
			8,
			12
		})[arg_30_0] or 12

		return string.format("All allies max {hp.png} +%d%%. (Lv.%d)", var_30_0, arg_30_0)
	end,
	["03"] = function(arg_31_0)
		arg_31_0 = math.max(1, math.min(tonumber(arg_31_0 or 1) or 1, 3))

		local var_31_0 = ({
			10,
			16,
			22
		})[arg_31_0] or 22

		return string.format("Once per battle, heals one ally at 30%% {hp.png} or less for %d%% max {hp.png}. (Lv.%d)", var_31_0, arg_31_0)
	end,
	["04"] = function(arg_32_0)
		arg_32_0 = math.max(1, math.min(tonumber(arg_32_0 or 1) or 1, 3))

		local var_32_0 = ({
			10,
			15,
			20
		})[arg_32_0] or 20

		return string.format("Once per battle, the first ally hit takes %d%% less damage for 3s. (Lv.%d)", var_32_0, arg_32_0)
	end,
	["05"] = function(arg_33_0)
		arg_33_0 = math.max(1, math.min(tonumber(arg_33_0 or 1) or 1, 3))

		local var_33_0 = ({
			8,
			12,
			16
		})[arg_33_0] or 16

		return string.format("Enemy with the highest max HP takes +%d%% damage. (Lv.%d)", var_33_0, arg_33_0)
	end,
	["06"] = function(arg_34_0)
		arg_34_0 = math.max(1, math.min(tonumber(arg_34_0 or 1) or 1, 3))

		local var_34_0 = ({
			7,
			10,
			13
		})[arg_34_0] or 13

		return string.format("Frontmost ally takes %d%% less damage. (Lv.%d)", var_34_0, arg_34_0)
	end,
	["07"] = function(arg_35_0)
		arg_35_0 = math.max(1, math.min(tonumber(arg_35_0 or 1) or 1, 3))

		local var_35_0 = ({
			8,
			12,
			16
		})[arg_35_0] or 16

		return string.format("Ranged allies take %d%% less damage from ranged enemies. (Lv.%d)", var_35_0, arg_35_0)
	end,
	["08"] = function(arg_36_0)
		arg_36_0 = math.max(1, math.min(tonumber(arg_36_0 or 1) or 1, 3))

		local var_36_0 = ({
			5,
			7,
			9
		})[arg_36_0] or 9

		return string.format("Once per battle, when there are 6+ enemies, all enemies take %d%% of current {hp.png}. (Lv.%d)", var_36_0, arg_36_0)
	end,
	["12"] = function(arg_37_0)
		arg_37_0 = math.max(1, math.min(tonumber(arg_37_0 or 1) or 1, 3))

		local var_37_0 = ({
			1,
			2,
			3
		})[arg_37_0] or 3

		return string.format("Once per battle, binds %d enemy near the base for 1.5s. (Lv.%d)", var_37_0, arg_37_0)
	end,
	["14"] = function(arg_38_0)
		arg_38_0 = math.max(1, math.min(tonumber(arg_38_0 or 1) or 1, 3))

		local var_38_0 = ({
			1.5,
			2,
			2.5
		})[arg_38_0] or 2.5

		return string.format("Once per battle, an ally taking lethal damage survives at 1 {hp.png} and cannot fall for %.1fs. (Lv.%d)", var_38_0, arg_38_0)
	end,
	["15"] = function(arg_39_0)
		arg_39_0 = math.max(1, math.min(tonumber(arg_39_0 or 1) or 1, 3))

		return string.format("While 5 or more allies are alive, all allies {atk.png} +%d%%. (Lv.%d)", ({
			10,
			15,
			20
		})[arg_39_0], arg_39_0)
	end,
	["16"] = function(arg_40_0)
		arg_40_0 = math.max(1, math.min(tonumber(arg_40_0 or 1) or 1, 3))

		return string.format("While 3 or fewer allies are alive, all allies {atk.png} +%d%% and damage taken -%d%%. (Lv.%d)", ({
			12,
			18,
			24
		})[arg_40_0], ({
			6,
			9,
			12
		})[arg_40_0], arg_40_0)
	end,
	["31"] = function(arg_41_0)
		arg_41_0 = math.max(1, math.min(tonumber(arg_41_0 or 1) or 1, 3))

		local var_41_0 = arg_41_0 >= 3 and " After first engagement, damage taken -5% for 3s." or ""

		return string.format("Warriors max {hp.png} +%d%%.%s (Lv.%d)", ({
			6,
			12,
			18
		})[arg_41_0], var_41_0, arg_41_0)
	end,
	["32"] = function(arg_42_0)
		arg_42_0 = math.max(1, math.min(tonumber(arg_42_0 or 1) or 1, 3))

		local var_42_0 = arg_42_0 >= 3 and " First 3 basic attacks gain an additional 10% {aspd.png}." or ""

		return string.format("Archers {aspd.png} +%d%%.%s (Lv.%d)", ({
			5,
			10,
			15
		})[arg_42_0], var_42_0, arg_42_0)
	end,
	["33"] = function(arg_43_0)
		arg_43_0 = math.max(1, math.min(tonumber(arg_43_0 or 1) or 1, 3))

		local var_43_0 = arg_43_0 >= 3 and " First attack slows movement by 20% for 1.5s." or ""

		return string.format("Spearmen {atk.png} +%d%%.%s (Lv.%d)", ({
			6,
			12,
			18
		})[arg_43_0], var_43_0, arg_43_0)
	end,
	["34"] = function(arg_44_0)
		arg_44_0 = math.max(1, math.min(tonumber(arg_44_0 or 1) or 1, 3))

		return string.format("Mages {atk.png} +%d%% and {aspd.png} +%d%%. (Lv.%d)", ({
			5,
			10,
			15
		})[arg_44_0], ({
			4,
			8,
			12
		})[arg_44_0], arg_44_0)
	end,
	["35"] = function(arg_45_0)
		arg_45_0 = math.max(1, math.min(tonumber(arg_45_0 or 1) or 1, 3))

		local var_45_0 = arg_45_0 >= 3 and " First attack damage +10%." or ""

		return string.format("Cavalry max {hp.png} and {atk.png} +%d%%.%s (Lv.%d)", ({
			4,
			8,
			12
		})[arg_45_0], var_45_0, arg_45_0)
	end,
	["36"] = function(arg_46_0)
		arg_46_0 = math.max(1, math.min(tonumber(arg_46_0 or 1) or 1, 3))

		local var_46_0 = arg_46_0 >= 3 and " Every 3rd consecutive basic attack against the same target deals an additional 40% {atk.png} damage." or ""

		return string.format("Duelists {atk.png} +%d%%.%s (Lv.%d)", ({
			6,
			12,
			18
		})[arg_46_0], var_46_0, arg_46_0)
	end,
	["37"] = function(arg_47_0)
		arg_47_0 = math.max(1, math.min(tonumber(arg_47_0 or 1) or 1, 2))

		return string.format("After their first engagement, warriors take %d%% less damage for 6s. (Lv.%d)", ({
			10,
			18
		})[arg_47_0], arg_47_0)
	end,
	["38"] = function(arg_48_0)
		arg_48_0 = math.max(1, math.min(tonumber(arg_48_0 or 1) or 1, 2))

		return string.format("Every 5th basic attack by each archer deals an additional %d%% {atk.png} damage. (Lv.%d)", ({
			45,
			75
		})[arg_48_0], arg_48_0)
	end
}

function var_0_0.getItemName(arg_49_0, arg_49_1, arg_49_2)
	arg_49_2 = arg_49_2 or "ko"

	if not arg_49_0 then
		return arg_49_2 == "en" and var_0_9(var_0_8(arg_49_1) or arg_49_1, "") or arg_49_1
	end

	local var_49_0 = tostring(arg_49_0)
	local var_49_1 = arg_49_2 == "en" and (var_0_0.itemNameMap[var_49_0] or var_0_8(arg_49_1) or arg_49_1) or arg_49_1

	if arg_49_2 == "en" then
		var_49_1 = var_0_9(var_49_1, var_49_0)
	end

	return var_0_7("item.name." .. var_49_0, arg_49_2, var_49_1)
end

function var_0_0.getItemEffect(arg_50_0, arg_50_1, arg_50_2, arg_50_3)
	arg_50_3 = arg_50_3 or "ko"

	if arg_50_0 then
		local var_50_0 = tostring(arg_50_0)
		local var_50_1 = var_50_0:match("^stone_(.+)$")

		if var_50_1 then
			return var_0_0.getStoneDesc(var_50_1, arg_50_2, arg_50_3)
		end

		local var_50_2 = math.max(1, tonumber(arg_50_1 or 1) or 1)
		local var_50_3 = var_0_7("item.effect." .. var_50_0 .. "." .. tostring(var_50_2), arg_50_3, nil)

		if var_50_3 then
			return var_50_3
		end

		local var_50_4 = arg_50_3 == "en" and var_0_0.itemEffectFnMap[var_50_0] or nil

		if var_50_4 then
			return var_50_4(arg_50_1 or 1)
		end
	end

	if arg_50_3 == "en" then
		return var_0_9(arg_50_2, "")
	end

	return arg_50_2
end

var_0_0.enemyNameMap = {
	["Howl Orc"] = "Howl Orc",
	GoblinTheif = "Goblin Thief",
	Goblin = "Goblin",
	["Orc War Chief"] = "Orc War Chief",
	Wolf = "Wolf",
	["Orc Berserker"] = "Orc Berserker",
	["Charge Orc"] = "Charge Orc",
	["Warg Orc"] = "Warg Orc",
	["Grimwolf Orc"] = "Grimwolf Orc",
	["Orc Axe Raider"] = "Orc Axe Raider",
	["Goblin Rider"] = "Goblin Rider",
	["Orc Veteran"] = "Orc Veteran",
	Orc = "Orc",
	GoblinThief = "Goblin Thief"
}
var_0_0.enemyNameKoMap = {
	["Howl Orc"] = "하울 오크",
	GoblinTheif = "고블린 도적",
	Goblin = "고블린",
	["Orc War Chief"] = "오크 족장",
	Wolf = "늑대",
	["Orc Berserker"] = "오크 광전사",
	["Charge Orc"] = "돌격 오크",
	["Warg Orc"] = "워그 오크",
	["Grimwolf Orc"] = "그림울프 오크",
	["Orc Axe Raider"] = "오크 습격자",
	["Goblin Rider"] = "고블린 라이더",
	["Orc Veteran"] = "정예 오크",
	Orc = "오크",
	GoblinThief = "고블린 도적"
}

function var_0_0.getEnemyName(arg_51_0, arg_51_1, arg_51_2)
	arg_51_2 = arg_51_2 or "ko"

	if arg_51_2 == "en" then
		if arg_51_0 then
			local var_51_0 = var_0_7("enemy.name." .. tostring(arg_51_0), arg_51_2, nil)

			if var_51_0 then
				return var_51_0
			end

			if var_0_0.enemyNameMap[arg_51_0] then
				return var_0_0.enemyNameMap[arg_51_0]
			end

			local var_51_1 = var_0_9(arg_51_0, nil)

			if var_51_1 then
				return var_51_1
			end
		end

		if arg_51_1 then
			local var_51_2 = var_0_7("enemy.name." .. tostring(arg_51_1), arg_51_2, nil)

			if var_51_2 then
				return var_51_2
			end

			local var_51_3 = var_0_0.translateUnitName(arg_51_1, arg_51_2)
			local var_51_4 = var_0_9(var_51_3, nil)

			if var_51_4 then
				return var_51_4
			end
		end

		return "Enemy"
	end

	if arg_51_0 then
		return var_0_7("enemy.name." .. tostring(arg_51_0), arg_51_2, var_0_0.enemyNameKoMap[arg_51_0] or arg_51_1 or arg_51_0)
	end

	return arg_51_1 or "Enemy"
end

var_0_5()

return var_0_0
