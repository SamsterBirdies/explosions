dofile("mods/dlc1_weapons/effects/fire_howitzer.lua")
dofile(path .. "/effects/util_dlc.lua")
fix_dupe("howitzer_fire", "mods/dlc1_weapons")
SoundEvent = "mods/dlc1_weapons/effects/fire_howitzer"
table.insert(Effects,
{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 50, z = -100 },
		LocalVelocity = { x = 0, y = 600, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom4.png",
		Additive = true,
		TimeToLive = 0.16,
		InitialSize = 2,
		ExpansionRate = 10000,
		Angle = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 220, 120, 240 },
		Colour2 = { 255, 100, 0, 0 },
})
table.insert(Effects,
{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 1000, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 0.32,
		InitialSize = 10,
		ExpansionRate = -2000,
		Angle = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 220, 170, 200 },
		Colour2 = { 255, 100, 0, 50 },
})
table.insert(Effects,
{
	Type = "shake",
	PlayForEnemy = true,
	FalloffStart = 1000,
	FalloffEnd = 5000,
	TimeToTrigger = 0,
	TimeToLive = 0.2,
	Magnitude = 50,
})