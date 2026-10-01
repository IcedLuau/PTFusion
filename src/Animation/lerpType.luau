--!strict
--!nolint LocalUnused
--!nolint LocalShadow
local task = nil -- Disable usage of Roblox's task scheduler

--[[
	Linearly interpolates the given animatable types by a ratio.
	If the types are different or not animatable, then the first value will be
	returned for ratios below 0.5, and the second value for 0.5 and above.
]]

local Package = script.Parent.Parent
local Oklab = require(Package.Colour.Oklab)

local function lerpType(
	from: unknown, 
	to: unknown, 
	ratio: number
): unknown
	local typeString = typeof(from)

	if typeof(to) == typeString then
		-- both types must match for interpolation to make sense
		if typeString == "number" then
			local to, from = to :: number, from :: number
			return (to - from) * ratio + from

		elseif typeString == "Color" then
			local to, from = to :: Color, from :: Color
			local fromLab = Oklab.fromSRGB(from)
			local toLab = Oklab.fromSRGB(to)
			return Oklab.toSRGB(
				fromLab:Lerp(toLab, ratio),
				false
			)

		elseif typeString == "Quaternion" then
			local to, from = to :: Quaternion, from :: Quaternion
			return Quaternion.Slerp(from, to, ratio)

		elseif typeString == "Bounds" then
			local to, from = to :: Bounds, from :: Bounds
			-- Lerp position and size separately
			local lerpedPosition = from.Position:Lerp(to.Position, ratio)
			local lerpedSize = from.Size:Lerp(to.Size, ratio)
			return Bounds.New(lerpedPosition, lerpedSize)

		elseif typeString == "Vector2" then
			local to, from = to :: Vector2, from :: Vector2
			return from:Lerp(to, ratio)

		elseif typeString == "Vector3" then
			local to, from = to :: Vector3, from :: Vector3
			return from:Lerp(to, ratio)
		end
	end

	-- fallback case: the types are different or not animatable
	if ratio < 0.5 then
		return from
	else
		return to
	end
end

return lerpType
