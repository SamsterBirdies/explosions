function RemoveSprite(name)
	--removes a sprite from the sprite table with the given savename
	--example usage: RemoveSprite("hud-group-missile")
	for k, v in ipairs(Sprites) do
		if v.Name == name then
			table.remove(Sprites, k)
		end
	end
end
function FindSprite(saveName)
	--returns sprite if found
	--example usage: FindSprite("hud-group-missile")
	for k, v in ipairs(Sprites) do
		if v.Name == saveName then
			return v
		end
	end
	return nil
end

local sbexp_bgbracing = FindSprite("bracing-bg")
if sbexp_bgbracing then
	sbexp_bgbracing.States.Normal.Frames[1].texture = path .. "/materials/bracing-bg.dds"
	sbexp_bgbracing.States.Normal.Frames[2].texture = path .. "/materials/bracing-bg-d1.dds"
	sbexp_bgbracing.States.Normal.Frames[3].texture = path .. "/materials/bracing-bg-d2.dds"
	sbexp_bgbracing.States.Normal.Frames[4].texture = path .. "/materials/bracing-bg-d3.dds"
end