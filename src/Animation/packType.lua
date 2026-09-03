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

	elseif typeString == "DateTime" then
		return DateTime.fromUnixTimestampMillis(numbers[1])

	elseif typeString == "NumberRange" then
		return NumberRange.New(numbers[1], numbers[2])

	elseif typeString == "Region3" then -- TODO: port bounds. Also, Polytoria bounds objects use the least-XYZ corner as position
		-- Bounds.New(pos, size) NOTE the capital N, as polytoria constructors do that
		-- FUTURE: support rotated Region3s if/when they become constructable
		local position = Vector3.new(numbers[1], numbers[2], numbers[3])
		local halfSize = Vector3.new(numbers[4] / 2, numbers[5] / 2, numbers[6] / 2)
		return Region3.new(position - halfSize, position + halfSize)

	elseif typeString == "Vector2" then
		return Vector2.New(numbers[1], numbers[2])

	elseif typeString == "Vector3" then
		return Vector3.New(numbers[1], numbers[2], numbers[3])
		
	else
		return nil
	end
end

return packType
