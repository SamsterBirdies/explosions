dofile("effects/device_explode_util.lua")
dofile(path .. "/effects/util.lua")
--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 5.0
SoundEvent = "effects/battery_explode"
Effects =
{
	Debris("gunner"),
	Debris("mods/weapon_pack/weapons/firebeam/beam_debris1.dds"),
	Debris("mods/weapon_pack/weapons/firebeam/beam_debris2.dds"),
	Sandbags(0),
	DeviceExplodeSprite(),
	Flames(2, 0.65, 800),
	Flames(4, 0.25, 1600),
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom2.png",
		Additive = true,
		TimeToLive = 0.2,
		InitialSize = 1,
		ExpansionRate = 7000,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 700,
		Colour1 = { 255, 200, 200, 200 },
		Colour2 = { 255, 0, 0, 0 },
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
		TimeToLive = 0.2,
		InitialSize = 10,
		ExpansionRate = 1000,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 700,
		Colour1 = { 255, 200, 200, 160 },
		Colour2 = { 255, 0, 0, 0 },
	},
}
