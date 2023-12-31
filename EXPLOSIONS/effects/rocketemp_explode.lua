dofile("effects/device_explode_util.lua")
dofile(path .. "/effects/util.lua")
--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 5.0
SoundEvent = "effects/device_explode"
Effects =
{
	Debris("gunner"),
	Debris("mods/weapon_pack/weapons/rocketemp/head_destroyed.dds"),
	Debris("mods/weapon_pack/weapons/rocketemp/base_destroyed.dds"),
	Sandbags(0),
	DeviceExplodeSprite(),
	Flames(2, 0.45, 600),
	Smoke(4, 5, 4, 200),
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "impact_emp",
		Additive = true,
		TimeToLive = 2,
		InitialSize = 1.5,
		Angle = 90,
		ExpansionRate = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 255 },
	},
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 1000,
		FalloffEnd = 5000,
		TimeToTrigger = 0,
		TimeToLive = 1.5,
		Magnitude = 20,
	},
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 1000,
		FalloffEnd = 5000,
		TimeToTrigger = 0,
		TimeToLive = 0.2,
		Magnitude = 60,
	},
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 0.3,
		InitialSize = 10,
		ExpansionRate = -100,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 220, 210, 255, 100 },
		Colour2 = { 20, 0, 255, 0 },
	},
	{
		Type = "sprite",
		TimeToTrigger = 0.2,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom3.png",
		Additive = true,
		TimeToLive = 0.3,
		InitialSize = 14,
		ExpansionRate = -100,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 200,
		Colour1 = { 190, 180, 255, 130 },
		Colour2 = { 20, 0, 255, 0 },
	},
}
