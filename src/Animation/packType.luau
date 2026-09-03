--!strict
--!nolint LocalUnused
--!nolint LocalShadow
local task = nil -- Disable usage of Roblox's task scheduler

--[[
	Packs an array of numbers into a given animatable data type.
	If the type is not animatable, nil will be returned.
]]

local Package = script.Parent.Parent
local Types = require(Package.Types)
local Oklab = require(Package.Colour.Oklab)

local function packType(
	numbers: {number},
	typeString: string
): Types.Animatable?
	if typeString == "number" then
		return numbers[1]

	elseif typeString == "Color" then
		return Oklab.toSRGB(
			Vector3.New(numbers[1], numbers[2], numbers[3]),
			false
		)

	elseif typeString == "Quaternion" then
		return Quaternion.New(numbers[1], numbers[2], numbers[3], numbers[4])

	elseif typeString == "Bounds" then
		-- Bounds takes position and size
		local position = Vector3.New(numbers[1], numbers[2], numbers[3])
		local size = Vector3.New(numbers[4], numbers[5], numbers[6])
		return Bounds.New(position, size)

	elseif typeString == "Vector2" then
		return Vector2.New(numbers[1], numbers[2])

	elseif typeString == "Vector3" then
		return Vector3.New(numbers[1], numbers[2], numbers[3])
		
	else
		return nil
	end
end

return packType
