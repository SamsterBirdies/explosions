dofile("mods/dlc1_weapons/effects/fire_smokebomb.lua")
Sprites = {}
SoundEvent = "mods/dlc1_weapons/effects/fire_smokebomb"
table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 25, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 0.08,
		InitialSize = 4,
		ExpansionRate = 100,
		Angle = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 200, 80, 180 },
		Colour2 = { 255, 120, 30, 80 },
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