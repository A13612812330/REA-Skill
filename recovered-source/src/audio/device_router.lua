local var_0_0 = {
	routingDisabled = false,
	throttled = false,
	failureCount = 0,
	reopenCount = 0,
	eventCount = 0,
	pending = false,
	supported = false,
	initialized = false
}
local var_0_1 = {
	poll = 1,
	budgetWindow = 60,
	budgetCount = 6,
	cooldown = 2,
	settle = 0.6
}
local var_0_2 = 1
local var_0_3 = 2
local var_0_4 = "slotbound.audio_route.cmd"
local var_0_5 = "slotbound.audio_route.evt"

local function var_0_6(arg_1_0, arg_1_1, arg_1_2, arg_1_3, arg_1_4, arg_1_5, arg_1_6)
	require("love.timer")
	require("love.thread")

	local var_1_0 = require("ffi")
	local var_1_1 = love.thread.getChannel("slotbound.audio_route.cmd")
	local var_1_2 = love.thread.getChannel("slotbound.audio_route.evt")

	local function var_1_3(arg_2_0, arg_2_1)
		var_1_2:push({
			kind = arg_2_0,
			detail = arg_2_1
		})
	end

	local var_1_4 = false
	local var_1_5
	local var_1_6
	local var_1_7
	local var_1_8
	local var_1_9
	local var_1_10
	local var_1_11

	local function var_1_12(arg_3_0)
		var_1_3("unsupported", arg_3_0)

		if var_1_6 ~= nil then
			var_1_6.vtbl.Release(var_1_6)
		end

		if var_1_4 then
			var_1_5.CoUninitialize()
		end
	end

	local var_1_13, var_1_14 = pcall(function()
		var_1_0.cdef("      typedef struct {\n        uint32_t d1; uint16_t d2; uint16_t d3; uint8_t d4[8];\n      } SbAudioGuid;\n      typedef struct SbAudioDevice SbAudioDevice;\n      typedef struct SbAudioDeviceVtbl {\n        void *QueryInterface; void *AddRef;\n        uint32_t (__stdcall *Release)(SbAudioDevice *self);\n        void *Activate; void *OpenPropertyStore;\n        int32_t (__stdcall *GetId)(SbAudioDevice *self, uint16_t **id);\n        void *GetState;\n      } SbAudioDeviceVtbl;\n      struct SbAudioDevice { const SbAudioDeviceVtbl *vtbl; };\n      typedef struct SbAudioEnumerator SbAudioEnumerator;\n      typedef struct SbAudioEnumeratorVtbl {\n        void *QueryInterface; void *AddRef;\n        uint32_t (__stdcall *Release)(SbAudioEnumerator *self);\n        void *EnumAudioEndpoints;\n        int32_t (__stdcall *GetDefaultAudioEndpoint)(\n          SbAudioEnumerator *self, int32_t flow, int32_t role,\n          SbAudioDevice **device);\n        void *GetDevice; void *RegisterEndpointNotificationCallback;\n        void *UnregisterEndpointNotificationCallback;\n      } SbAudioEnumeratorVtbl;\n      struct SbAudioEnumerator { const SbAudioEnumeratorVtbl *vtbl; };\n      int32_t __stdcall CoInitializeEx(void *reserved, uint32_t flags);\n      void __stdcall CoUninitialize(void);\n      int32_t __stdcall CoCreateInstance(const SbAudioGuid *clsid,\n        void *outer, uint32_t context, const SbAudioGuid *iid, void **object);\n      void __stdcall CoTaskMemFree(void *memory);\n      char alcIsExtensionPresent(void *device, const char *name);\n      void *alcGetProcAddress(void *device, const char *name);\n      void alcGetIntegerv(void *device, int32_t param, int32_t size,\n        int32_t *values);\n      typedef char (*SbAlcReopenProc)(void *device, const char *name,\n        const int32_t *attributes);\n    ")

		var_1_5 = var_1_0.load("ole32")
		var_1_7 = var_1_0.load("OpenAL32")
		var_1_9 = var_1_0.cast("void *", var_1_0.cast("uintptr_t", arg_1_0))

		if var_1_7.alcIsExtensionPresent(var_1_9, "ALC_SOFT_reopen_device") == 0 then
			error("reopen_extension_unavailable")
		end

		local var_4_0 = var_1_7.alcGetProcAddress(var_1_9, "alcReopenDeviceSOFT")

		if var_4_0 == nil then
			error("reopen_function_unavailable")
		end

		var_1_8 = var_1_0.cast("SbAlcReopenProc", var_4_0)

		if arg_1_6 then
			return
		end

		if var_1_5.CoInitializeEx(nil, 0) < 0 then
			error("com_init_failed")
		end

		var_1_4 = true

		local var_4_1 = var_1_0.new("SbAudioGuid", {
			3168666517,
			58671,
			18044,
			{
				142,
				61,
				196,
				87,
				146,
				145,
				105,
				46
			}
		})
		local var_4_2 = var_1_0.new("SbAudioGuid", {
			2841011410,
			38420,
			20277,
			{
				167,
				70,
				222,
				141,
				182,
				54,
				23,
				230
			}
		})
		local var_4_3 = var_1_0.new("void *[1]")

		if var_1_5.CoCreateInstance(var_4_1, nil, 23, var_4_2, var_4_3) < 0 or var_4_3[0] == nil then
			error("com_enumerator_failed")
		end

		var_1_6 = var_1_0.cast("SbAudioEnumerator *", var_4_3[0])
		var_1_10 = var_1_0.new("SbAudioDevice *[1]")
		var_1_11 = var_1_0.new("uint16_t *[1]")
	end)

	if not var_1_13 then
		return var_1_12((tostring(var_1_14):gsub("^.-:%d+:%s*", "")))
	end

	local function var_1_15()
		if arg_1_6 then
			local var_5_0 = io.open(arg_1_6, "rb")

			if not var_5_0 then
				return ""
			end

			local var_5_1 = var_5_0:read("*a")

			var_5_0:close()

			return var_5_1
		end

		var_1_10[0] = nil

		if var_1_6.vtbl.GetDefaultAudioEndpoint(var_1_6, 0, 1, var_1_10) < 0 or var_1_10[0] == nil then
			return ""
		end

		local var_5_2 = var_1_10[0]
		local var_5_3 = ""

		var_1_11[0] = nil

		if var_5_2.vtbl.GetId(var_5_2, var_1_11) >= 0 and var_1_11[0] ~= nil then
			local var_5_4 = 0

			while var_5_4 < 256 and var_1_11[0][var_5_4] ~= 0 do
				var_5_4 = var_5_4 + 1
			end

			var_5_3 = var_1_0.string(var_1_11[0], var_5_4 * 2)

			var_1_5.CoTaskMemFree(var_1_11[0])
		end

		var_5_2.vtbl.Release(var_5_2)

		return var_5_3
	end

	local var_1_16 = var_1_0.new("int32_t[1]")

	local function var_1_17()
		var_1_16[0] = 1

		var_1_7.alcGetIntegerv(var_1_9, 787, 1, var_1_16)

		return var_1_16[0] == 0
	end

	local var_1_18 = var_1_15()

	var_1_3("ready")

	local var_1_19, var_1_20 = love.timer.getTime(), var_1_18
	local var_1_21 = true
	local var_1_22 = {}
	local var_1_23 = 0
	local var_1_24 = 0
	local var_1_25 = 0
	local var_1_26
	local var_1_27 = false
	local var_1_28 = true

	while var_1_28 do
		local var_1_29 = var_1_1:demand(arg_1_1)

		while var_1_29 ~= nil do
			if var_1_29 == "stop" then
				var_1_28 = false
			elseif var_1_29 == "gate:1" then
				var_1_21 = true
			elseif var_1_29 == "gate:0" then
				var_1_21 = false
			elseif var_1_29 == "force" then
				var_1_18 = ""
			end

			var_1_29 = var_1_1:pop()
		end

		if not var_1_28 then
			break
		end

		local var_1_30, var_1_31, var_1_32 = pcall(function()
			return var_1_15(), var_1_17()
		end)

		if var_1_30 then
			local var_1_33 = love.timer.getTime()
			local var_1_34 = var_1_31 .. (var_1_32 and "|lost" or "")

			if var_1_34 ~= var_1_20 then
				var_1_20, var_1_19 = var_1_34, var_1_33
				var_1_26, var_1_25 = nil, 0

				if var_1_31 ~= var_1_18 or var_1_32 then
					var_1_3("changed")
				end
			end

			if var_1_31 ~= "" and (var_1_31 ~= var_1_18 or var_1_32) and var_1_21 and var_1_26 ~= var_1_20 and arg_1_2 <= var_1_33 - var_1_19 and var_1_23 <= var_1_33 and var_1_24 <= var_1_33 then
				local var_1_35 = {}

				for iter_1_0, iter_1_1 in ipairs(var_1_22) do
					if arg_1_5 > var_1_33 - iter_1_1 then
						var_1_35[#var_1_35 + 1] = iter_1_1
					end
				end

				var_1_22 = var_1_35

				if arg_1_4 <= #var_1_22 then
					if not var_1_27 then
						var_1_27 = true

						var_1_3("throttled")
					end

					var_1_23 = var_1_22[1] + arg_1_5
				else
					var_1_27 = false

					local var_1_36 = love.timer.getTime()
					local var_1_37, var_1_38 = pcall(var_1_8, var_1_9, nil, nil)
					local var_1_39 = love.timer.getTime()

					var_1_22[#var_1_22 + 1] = var_1_39
					var_1_23 = var_1_39 + arg_1_3

					if var_1_37 and var_1_38 ~= 0 then
						var_1_18, var_1_25, var_1_26 = var_1_31, 0
						var_1_20, var_1_19 = var_1_31, var_1_39

						var_1_3("reopened", var_1_39 - var_1_36)
					else
						var_1_25 = var_1_25 + 1

						if var_1_25 >= 3 then
							var_1_26, var_1_25 = var_1_20, 0

							var_1_3("failed", "reopen_gave_up")
						else
							var_1_24 = var_1_39 + 2^(var_1_25 - 1)

							var_1_3("failed", "reopen_failed")
						end
					end
				end
			end
		end
	end

	if var_1_6 ~= nil then
		var_1_6.vtbl.Release(var_1_6)
	end

	if var_1_4 then
		var_1_5.CoUninitialize()
	end

	var_1_3("stopped")
end

local var_0_7
local var_0_8
local var_0_9
local var_0_10
local var_0_11 = true
local var_0_12 = 0
local var_0_13 = false

local function var_0_14()
	return love and love.system and love.system.getOS and love.system.getOS() == "Windows"
end

local function var_0_15(arg_9_0)
	var_0_0.initialized = true
	var_0_0.supported = false
	var_0_0.lastError = arg_9_0

	return false
end

local function var_0_16(arg_10_0)
	if RuntimeDiagnostics and RuntimeDiagnostics.note then
		pcall(RuntimeDiagnostics.note, arg_10_0)
	end
end

local function var_0_17(arg_11_0)
	local var_11_0 = arg_11_0.kind

	if var_11_0 == "changed" then
		var_0_0.eventCount = var_0_0.eventCount + 1
		var_0_0.pending = true
	elseif var_11_0 == "reopened" then
		var_0_0.reopenCount = var_0_0.reopenCount + 1
		var_0_0.lastReopenSeconds = tonumber(arg_11_0.detail)
		var_0_0.pending = false
		var_0_0.throttled = false
		var_0_0.lastError = nil

		var_0_16(("audio output followed the Windows default (reopen %d, %.0f ms)"):format(var_0_0.reopenCount, (var_0_0.lastReopenSeconds or 0) * 1000))
	elseif var_11_0 == "failed" then
		var_0_0.failureCount = var_0_0.failureCount + 1
		var_0_0.lastError = arg_11_0.detail

		var_0_16("audio output reopen failed: " .. tostring(arg_11_0.detail))

		if arg_11_0.detail == "reopen_gave_up" then
			var_0_0.pending = false
		end
	elseif var_11_0 == "throttled" then
		var_0_0.throttled = true
		var_0_0.lastError = "reopen_throttled"

		var_0_16("audio output reopen throttled")
	elseif var_11_0 == "unsupported" then
		var_0_0.supported = false
		var_0_0.pending = false
		var_0_0.lastError = arg_11_0.detail
	end
end

local function var_0_18()
	if not var_0_10 then
		return
	end

	local var_12_0 = var_0_10:pop()

	while var_12_0 ~= nil do
		if type(var_12_0) == "table" then
			var_0_17(var_12_0)
		end

		var_12_0 = var_0_10:pop()
	end

	if var_0_8 and not var_0_8:isRunning() then
		local var_12_1 = var_0_8:getError()

		if var_12_1 and var_0_0.supported then
			var_0_0.lastError = "worker_error: " .. tostring(var_12_1)
		end

		var_0_0.supported = false
	end
end

function var_0_0.initialize()
	if var_0_0.initialized then
		return var_0_0.supported
	end

	if not var_0_14() then
		var_0_0.initialized = true
		var_0_0.lastError = "not_windows"

		return false
	end

	if os.getenv("SLOTBOUND_AUDIO_FOLLOW") == "0" then
		var_0_0.routingDisabled = true

		return var_0_15("disabled_by_environment")
	end

	if not love.thread or not love.filesystem or not love.audio then
		return var_0_15("love_modules_unavailable")
	end

	local var_13_0
	local var_13_1, var_13_2 = pcall(require, "ffi")

	var_0_7 = var_13_2

	if not var_13_1 or not var_0_7 then
		return var_0_15("ffi_unavailable")
	end

	if not pcall(var_0_7.cdef, "    void *alcGetCurrentContext(void);\n    void *alcGetContextsDevice(void *context);\n    char alcIsExtensionPresent(void *device, const char *name);\n  ") then
		return var_0_15("ffi_cdef_failed")
	end

	local var_13_3, var_13_4 = pcall(var_0_7.load, "OpenAL32")

	if not var_13_3 or not var_13_4 then
		return var_0_15("openal_load_failed")
	end

	local var_13_5 = var_13_4.alcGetCurrentContext()

	if var_13_5 == nil then
		return var_0_15("no_audio_context")
	end

	local var_13_6 = var_13_4.alcGetContextsDevice(var_13_5)

	if var_13_6 == nil then
		return var_0_15("no_audio_device")
	end

	if var_13_4.alcIsExtensionPresent(var_13_6, "ALC_SOFT_reopen_device") == 0 then
		return var_0_15("reopen_extension_unavailable")
	end

	local var_13_7, var_13_8 = pcall(function()
		local var_14_0 = love.filesystem.newFileData(string.dump(var_0_6), "audio_route_worker.lua")

		return love.thread.newThread(var_14_0)
	end)

	if not var_13_7 or not var_13_8 then
		return var_0_15("worker_create_failed")
	end

	var_0_9 = love.thread.getChannel(var_0_4)
	var_0_10 = love.thread.getChannel(var_0_5)

	var_0_9:clear()
	var_0_10:clear()

	if not pcall(var_13_8.start, var_13_8, tonumber(var_0_7.cast("uintptr_t", var_13_6)), var_0_1.poll, var_0_1.settle, var_0_1.cooldown, var_0_1.budgetCount, var_0_1.budgetWindow, var_0_1.idFile) then
		return var_0_15("worker_start_failed")
	end

	var_0_8 = var_13_8
	var_0_0.initialized = true
	var_0_0.supported = true
	var_0_0.lastError = nil

	return true
end

function var_0_0.update(arg_15_0, arg_15_1)
	if var_0_13 or not var_0_0.initialized or not var_0_8 then
		return false
	end

	local var_15_0 = arg_15_1 ~= false

	if var_15_0 ~= var_0_11 then
		var_0_11 = var_15_0

		var_0_9:push(var_15_0 and "gate:1" or "gate:0")
	end

	var_0_12 = var_0_12 + (tonumber(arg_15_0) or 0)

	if var_0_12 < var_0_2 then
		return false
	end

	var_0_12 = 0

	var_0_18()

	return false
end

function var_0_0.onFocusGained()
	return false
end

function var_0_0.shutdown()
	if var_0_13 then
		return true
	end

	var_0_13 = true

	if var_0_8 then
		var_0_9:push("stop")

		local var_17_0 = love.timer.getTime() + var_0_3

		while var_0_8:isRunning() and var_17_0 > love.timer.getTime() do
			love.timer.sleep(0.01)
		end

		if var_0_8:isRunning() then
			var_0_0.lastError = "worker_stop_timeout"
		else
			var_0_18()
		end
	end

	var_0_0.supported = false

	return true
end

function var_0_0.signalForRegression()
	if not var_0_0.supported or not var_0_9 then
		return false
	end

	var_0_9:push("force")

	return true
end

function var_0_0.getStatus()
	if not var_0_13 then
		var_0_18()
	end

	return {
		initialized = var_0_0.initialized,
		supported = var_0_0.supported,
		pending = var_0_0.pending,
		eventCount = var_0_0.eventCount,
		reopenCount = var_0_0.reopenCount,
		failureCount = var_0_0.failureCount,
		lastReopenSeconds = var_0_0.lastReopenSeconds,
		throttled = var_0_0.throttled,
		routingDisabled = var_0_0.routingDisabled,
		lastError = var_0_0.lastError
	}
end

var_0_0._worker = var_0_6

function var_0_0._configureForTest(arg_20_0)
	for iter_20_0, iter_20_1 in pairs(arg_20_0) do
		var_0_1[iter_20_0] = iter_20_1
	end
end

return var_0_0
