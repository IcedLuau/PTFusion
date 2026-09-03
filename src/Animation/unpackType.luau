--!strict
--!nolint LocalUnused
--!nolint LocalShadow
local task = nil -- Disable usage of Roblox's task scheduler

--[[
	Unpacks an animatable type into an array of numbers.
	If the type is not animatable, an empty array will be returned.
]]

local Package = script.Parent.Parent
local Oklab = require(Package.Colour.Oklab)

local function unpackType(
	value: unknown,
	typeString: string
): {number}
	if typeString == "number" then
		local value = value :: number
		return {value}

	elseif typeString == "Color" then
		local value = value :: Color
		local lab = Oklab.fromSRGB(value)
		return {lab.X, lab.Y, lab.Z}

	elseif typeString == "Quaternion" then
		local value = value :: Quaternion
		return {value.X, value.Y, value.Z, value.W}

	elseif typeString == "Bounds" then
		local value = value :: Bounds
		return {value.Position.X, value.Position.Y, value.Position.Z, value.Size.X, value.Size.Y, value.Size.Z}

	elseif typeString == "Vector2" then
		local value = value :: Vector2
		return {value.X, value.Y}

	elseif typeString == "Vector3" then
		local value = value :: Vector3
		return {value.X, value.Y, value.Z}
	else
		return {}
	end
end

return unpackType
