return {
	claim = function(arg_1_0, arg_1_1)
		if not arg_1_0 or arg_1_0.gameOver or arg_1_0.mode == "battle" or arg_1_0.wave and arg_1_0.wave.active then
			return false
		end

		if arg_1_1 then
			arg_1_1.deferStart = false
		end

		return true
	end
}
