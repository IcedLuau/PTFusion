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
	-- Check for Roblox Instance or Polytoria instance
	if typeof(x) == "table" then
		local x = x :: {ObjectID: unknown?, NetworkedObjectID: unknown?}
		if x.ObjectID ~= nil or x.NetworkedObjectID ~= nil then
			return true
		end
	end
	
	-- Fallback for potential other Instance types
	return typeof(x) == "Instance"
end

return needsDestruction
