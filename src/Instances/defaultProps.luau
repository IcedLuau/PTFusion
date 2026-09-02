--!strict
--!nolint LocalUnused
--!nolint LocalShadow
local task = nil -- Disable usage of Roblox's task scheduler

--[[
	Stores 'sensible default' properties to be applied to instances created by
	the New function.
]]

return {
	UIField = {
		PositionRelative = Vector2.Zero,
		PositionOffset = Vector2.Zero,
		SizeRelative = Vector2.Zero,
		SizeOffset = Vector2.Zero,
		PivotPoint = Vector3.Zero,
	}
}
