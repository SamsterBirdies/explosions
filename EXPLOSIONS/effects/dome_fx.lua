dofile("mods/dlc2/effects/dome_fx.lua")
dofile(path .. "/effects/util_dlc.lua")
fix_dupe("domefx", "mods/dlc2")

table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = 0.0,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 0.6,
		InitialSize = 4.5,
		ExpansionRate = -100,
		Angle = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 100, 160, 255, 76 },
		Colour2 = { 51, 102, 255, 40 },
	}
)