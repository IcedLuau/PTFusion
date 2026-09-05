--!strict
--!nolint LocalUnused
--!nolint LocalShadow
local task = nil -- Disable usage of Roblox's task scheduler

--[[
	Returns true if the given value is not automatically memory managed, and
	requires manual cleanup.
]]

local function needsDestruction(
	x: unknown
): boolean
	-- Check for Roblox Instance
	if typeof(x) == "Instance" then
		return true
	end
	
	-- Check for Polytoria instance (tables with ObjectID)
	if typeof(x) == "table" then
		local x = x :: {ObjectID: unknown?}
		if x.ObjectID ~= nil then
			return true
		end
	end
	
	return false
end

return needsDestruction
