dofile("mods/commander-cf-buster/effects/impact_uranium.lua")
dofile(path .. "/effects/util_dlc.lua")
fix_dupe("DUammo", "mods/commander-cf-buster")
fix_dupe("impact_heavy_DU", "mods/commander-cf-buster")
SoundEvent = "mods/commander-cf-buster/effects/impact_uranium"
for k, v in pairs(Effects) do
	if v.Sprite and v.Sprite == path .. "/effects/media/fireflareuranium.dds" then
		v.Sprite = "mods/commander-cf-buster/effects/media/fireflareuranium"
	end
	if v.Sprite and v.Sprite == "sbEXP_DUammo" then
		v.Angle = -90
		v.LocalPosition.y = 50
	end
	if v.Sprite and v.Sprite == "sbEXP_impact_heavy_DU" then
		v.Angle = 90
		v.LocalPosition.y = -100
	end
	if v.Texture and v.Texture == path .. "/effects/media/fireflareuranium.dds" then
		v.Texture = "mods/commander-cf-buster/effects/media/fireflareuranium"
	end
end
table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = 0.08,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom3.png",
		Additive = true,
		TimeToLive = 0.32,
		InitialSize = 8.9,
		ExpansionRate = -700,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 200,
		Colour1 = { 100, 255, 180, 80 },
		Colour2 = { 40, 255, 80, 0 },
	}
)
table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 0.28,
		InitialSize = 14.0,
		ExpansionRate = -600,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 200,
		Colour1 = { 140, 255, 100, 160 },
		Colour2 = { 40, 255, 100, 60 },
	}
)