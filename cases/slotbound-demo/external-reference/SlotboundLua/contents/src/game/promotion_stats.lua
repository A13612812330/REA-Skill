local var_0_0 = {
	getPromotionMultipliers = function(arg_1_0)
		return 1, 1, 1, 1, false
	end,
	subclassStats = {
		투사 = {
			distance = 50,
			aspd = 1.5,
			hp = 140,
			atk = 25
		},
		철퇴병 = {
			distance = 50,
			aspd = 1.4,
			hp = 100,
			atk = 16
		},
		병사 = {
			distance = 50,
			aspd = 1.6,
			hp = 120,
			atk = 15
		},
		엘프병사 = {
			distance = 50,
			aspd = 1.6,
			hp = 160,
			atk = 26
		},
		["사수 병사"] = {
			distance = 50,
			aspd = 1.8,
			hp = 150,
			atk = 20
		},
		드루이드 = {
			distance = 60,
			aspd = 1.3,
			hp = 160,
			atk = 34
		},
		엔트 = {
			distance = 60,
			aspd = 1.1,
			hp = 300,
			atk = 48
		},
		엔트로드 = {
			distance = 60,
			aspd = 1.1,
			hp = 480,
			atk = 68
		},
		빅터 = {
			distance = 60,
			aspd = 1.2,
			hp = 180,
			atk = 40
		},
		프랑켄슈타인 = {
			distance = 60,
			aspd = 1.2,
			hp = 280,
			atk = 65
		},
		엘프기사 = {
			distance = 50,
			aspd = 1.5,
			hp = 320,
			atk = 32
		},
		바그 = {
			distance = 50,
			aspd = 1.5,
			hp = 280,
			atk = 40
		},
		해적 = {
			distance = 50,
			aspd = 1.7,
			hp = 90,
			atk = 22
		},
		정찰병 = {
			distance = 150,
			aspd = 1.2,
			hp = 60,
			atk = 14
		},
		보병 = {
			distance = 55,
			aspd = 1.2,
			hp = 90,
			atk = 21
		},
		["엘프 보병"] = {
			distance = 55,
			aspd = 1.4,
			hp = 165,
			atk = 24
		},
		바이킹 = {
			distance = 55,
			aspd = 1.2,
			hp = 135,
			atk = 36
		},
		["하이 엘프 보병"] = {
			distance = 55,
			aspd = 1.6,
			hp = 290,
			atk = 30
		},
		바바리안 = {
			distance = 55,
			aspd = 1.2,
			hp = 200,
			atk = 60
		},
		석궁수 = {
			distance = 150,
			aspd = 1.1,
			hp = 70,
			atk = 16
		},
		순찰자 = {
			distance = 150,
			aspd = 1.6,
			hp = 60,
			atk = 12
		},
		["엘프 궁수"] = {
			distance = 150,
			aspd = 1.7,
			hp = 90,
			atk = 18
		},
		["하이 엘프"] = {
			distance = 150,
			aspd = 1.9,
			hp = 170,
			atk = 26
		},
		데드아이 = {
			distance = 110,
			aspd = 0.85,
			hp = 150,
			atk = 68
		},
		레인저 = {
			distance = 110,
			aspd = 0.8,
			hp = 85,
			atk = 32
		},
		장궁병 = {
			distance = 150,
			aspd = 1.2,
			hp = 120,
			atk = 26
		},
		명사수 = {
			distance = 150,
			aspd = 1.5,
			hp = 110,
			atk = 24
		},
		창위병 = {
			distance = 55,
			aspd = 1.35,
			hp = 120,
			atk = 18
		},
		약탈자 = {
			distance = 55,
			aspd = 1.5,
			hp = 95,
			atk = 20
		},
		근위병 = {
			distance = 55,
			aspd = 1.25,
			hp = 240,
			atk = 26
		},
		무법자 = {
			distance = 55,
			aspd = 1.5,
			hp = 180,
			atk = 34
		},
		돌격병 = {
			distance = 55,
			aspd = 1.2,
			hp = 150,
			atk = 28
		},
		철기병 = {
			distance = 55,
			aspd = 1.22,
			hp = 125,
			atk = 25
		},
		["엘프 기병"] = {
			distance = 55,
			aspd = 1.4,
			hp = 190,
			atk = 30
		},
		["야만 기병"] = {
			distance = 55,
			aspd = 1.15,
			hp = 150,
			atk = 50
		},
		["하이 엘프 기병"] = {
			distance = 55,
			aspd = 1.5,
			hp = 340,
			atk = 38
		},
		["광폭 기병"] = {
			distance = 55,
			aspd = 1.2,
			hp = 220,
			atk = 75
		},
		중기병 = {
			distance = 55,
			aspd = 1.1,
			hp = 320,
			atk = 34
		},
		["도끼 기병"] = {
			distance = 55,
			aspd = 1.2,
			hp = 110,
			atk = 38
		},
		["무법 기병"] = {
			distance = 55,
			aspd = 1.2,
			hp = 180,
			atk = 58
		},
		주술사 = {
			distance = 140,
			aspd = 1.2,
			hp = 80,
			atk = 25
		},
		마도사 = {
			distance = 140,
			aspd = 1.2,
			hp = 80,
			atk = 25
		},
		엘프법사 = {
			distance = 140,
			aspd = 1.35,
			hp = 100,
			atk = 30
		},
		야생법사 = {
			distance = 50,
			aspd = 1,
			hp = 130,
			atk = 42
		},
		["엘프 현자"] = {
			distance = 140,
			aspd = 1.6,
			hp = 150,
			atk = 40
		},
		원시법사 = {
			distance = 50,
			aspd = 0.9,
			hp = 230,
			atk = 75
		},
		치유술사 = {
			distance = 115,
			aspd = 1.3,
			hp = 90,
			atk = 18
		},
		대주술사 = {
			distance = 140,
			aspd = 1.2,
			hp = 140,
			atk = 36
		},
		대사제 = {
			distance = 115,
			aspd = 1.3,
			hp = 160,
			atk = 30
		},
		황제 = {
			distance = 60,
			aspd = 1.25,
			hp = 180,
			atk = 34
		},
		베테랑 = {
			distance = 60,
			aspd = 1.2,
			hp = 210,
			atk = 30
		},
		검황 = {
			distance = 60,
			aspd = 1.4,
			hp = 260,
			atk = 44
		},
		장군 = {
			distance = 60,
			aspd = 1.2,
			hp = 360,
			atk = 40
		},
		기사 = {
			distance = 50,
			aspd = 1.3,
			hp = 300,
			atk = 25
		},
		성기사 = {
			distance = 50,
			aspd = 1.5,
			hp = 240,
			atk = 32
		},
		염투사 = {
			distance = 50,
			aspd = 1.7,
			hp = 190,
			atk = 40
		},
		오딘 = {
			distance = 50,
			aspd = 1.4,
			hp = 420,
			atk = 44
		},
		크루세이더 = {
			distance = 50,
			aspd = 1.7,
			hp = 230,
			atk = 42
		},
		스펙터 = {
			distance = 50,
			aspd = 1.9,
			hp = 310,
			atk = 64
		},
		스카우트 = {
			distance = 50,
			aspd = 1.8,
			hp = 280,
			atk = 68
		},
		플레어 = {
			distance = 50,
			aspd = 1.7,
			hp = 260,
			atk = 64
		},
		["해골 투사"] = {
			distance = 50,
			aspd = 1.7,
			hp = 170,
			atk = 34
		},
		암검사 = {
			distance = 50,
			aspd = 1.8,
			hp = 220,
			atk = 52
		},
		마검사 = {
			distance = 50,
			aspd = 1.7,
			hp = 260,
			atk = 48
		},
		게이즈 = {
			distance = 50,
			aspd = 1.8,
			hp = 340,
			atk = 72
		},
		베일 = {
			distance = 50,
			aspd = 1.8,
			hp = 380,
			atk = 96
		},
		마그누스 = {
			distance = 50,
			aspd = 1.5,
			hp = 420,
			atk = 82
		},
		라이스 = {
			distance = 50,
			aspd = 1.5,
			hp = 520,
			atk = 104
		},
		해적왕 = {
			distance = 50,
			aspd = 1.8,
			hp = 160,
			atk = 36
		}
	}
}

function var_0_0.getSubclassBaseStats(arg_2_0)
	local var_2_0 = arg_2_0 and arg_2_0.id or ""
	local var_2_1 = arg_2_0 and arg_2_0.name or ""
	local var_2_2 = ({
		MiniHorseMan03 = "중기병",
		MiniSpearMan03 = "근위병",
		MiniSpearMan02 = "창위병",
		MiniSwordMan02 = "병사",
		MiniArcherMan03 = "장궁병",
		["엘프 궁수"] = "엘프 궁수",
		엘프궁수 = "엘프 궁수",
		MiniSwordMan03 = "기사",
		MiniArcherMan02 = "석궁수"
	})[var_2_0] or var_2_0

	for iter_2_0, iter_2_1 in pairs(var_0_0.subclassStats) do
		if var_2_2 == iter_2_0 or var_2_1 == iter_2_0 then
			return iter_2_1
		end
	end

	return nil
end

return var_0_0
