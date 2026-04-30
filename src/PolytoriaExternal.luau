--!strict
--!nolint LocalUnused
--!nolint LocalShadow

--[[
	Polytoria implementation for Fusion's abstract provider layer.
    Probably really broken... but if it runs, it runs.
]]

local Package = script.Parent
local External = require(Package.External)

local RobloxExternal = {}

RobloxExternal.policies = {
	allowWebLinks = world.IsLocalTest
}

--[[
   Sends an immediate task to the external provider. Throws if none is set.
]]
function RobloxExternal.doTaskImmediate(
	resume: () -> ()
)
   spawn(resume)
end

--[[
	Sends a deferred task to the external provider. Throws if none is set.
]]
function RobloxExternal.doTaskDeferred(
	resume: () -> ()
)
    spawn(function()
        wait()
        resume()
    end)
end

--[[
	Errors in a different thread to preserve the flow of execution.
]]
function RobloxExternal.logErrorNonFatal(
	errorString: string
)
	spawn(function()
        error(errorString, 0)
    end)
end

--[[
	Shows a warning message in the output.
]]
RobloxExternal.logWarn = function(...)
    print("[color=#ffaa00]", ..., "[/b]") -- Logs support BBCode but no warn()
end

--[[
	Sends an update step to Fusion using the Roblox clock time.
]]
local function performUpdateStep()
	External.performUpdateStep(os.clock())
end

--[[
	Binds Fusion's update step to RunService step events.
]]
local stopSchedulerFunc = nil :: (() -> ())?
function RobloxExternal.startScheduler()
	if stopSchedulerFunc ~= nil then
		return
	end
    local connection = world.Rendered:Connect(function() performUpdateStep() end)
	stopSchedulerFunc = function()
		connection:Disconnect()
	end
end

--[[
	Unbinds Fusion's update step from RunService step events.
]]
function RobloxExternal.stopScheduler()
	if stopSchedulerFunc ~= nil then
		stopSchedulerFunc()
		stopSchedulerFunc = nil
	end
end

return RobloxExternal