LifeSpan = 0.1
SoundEvent = "mods/weapon_pack/effects/fire_flak"
Effects =
{

}
table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 40, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 0.12,
		InitialSize = 5,
		ExpansionRate = 100,
		Angle = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 90, 170 },
		Colour2 = { 255, 160, 50, 80 },
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