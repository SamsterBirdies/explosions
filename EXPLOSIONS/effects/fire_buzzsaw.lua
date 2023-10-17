dofile("mods/dlc1_weapons/effects/fire_buzzsaw.lua")
dofile(path .. "/effects/util_dlc.lua")
fix_dupe("buzzsaw_flash", "mods/dlc1_weapons")
SoundEvent = "mods/dlc1_weapons/effects/fire_buzzsaw"
table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = 0.04,
		LocalPosition = { x = -20, y = 100, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 0.12,
		InitialSize = 7.5,
		ExpansionRate = 100,
		Angle = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 80, 150 },
		Colour2 = { 255, 190, 30, 68 },
	}
)
table.insert(Effects,
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 800,
		FalloffEnd = 3500,
		TimeToTrigger = 0,
		TimeToLive = 0.16,
		Magnitude = 7,
	}
)