dofile("effects/device_explode_util.lua")
dofile(path .. "/effects/util.lua")
--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 6.0
SoundEvent = "mods/EXPLOSIONS/effects/large_explosion"
Effects =
{
	Debris("weapons/gunner.dds"),
	Debris("weapons/gunner.dds"),
	Debris("mods/weapon_pack/weapons/20mmcannon/barrel_destroyed1.dds"),
	Debris("mods/weapon_pack/weapons/20mmcannon/head_destroyed.dds"),
	Debris("mods/weapon_pack/weapons/20mmcannon/base_destroyed.dds"),
	DeviceExplodeSprite(),
	Flames(2, 0.65, 800),
	Smoke(4, 5, 4, 200),
	Dirt(0.5, 1000),
	{
		Type = "sprite",
		TimeToTrigger = 0.16,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom3.png",
		Additive = true,
		TimeToLive = 0.2,
		InitialSize = 10,
		ExpansionRate = 100,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 100,
		Colour1 = { 255, 150, 70, 128 },
		Colour2 = { 255, 70, 0, 0 },
	},
	{
		Type = "sprite",
		TimeToTrigger = 0.08,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 0.4,
		InitialSize = 15,
		ExpansionRate = -20,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 700,
		Colour1 = { 255, 255, 255, 158 },
		Colour2 = { 255, 140, 0, 0 },
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
		TimeToLive = 0.08,
		InitialSize = 6,
		ExpansionRate = -20,
		Angle = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 700,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 168 },
	},
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 1000,
		FalloffEnd = 5000,
		TimeToTrigger = 0,
		TimeToLive = 0.25,
		Magnitude = 80,
	},
}