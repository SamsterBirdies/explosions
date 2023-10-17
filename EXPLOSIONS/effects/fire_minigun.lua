LifeSpan = 2
SoundEvent = "effects/fire_minigun"
Effects =
{

}
for i = 0, 12 do
table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = i * 0.08 + 0.45,
		LocalPosition = { x = 0, y = 60, z = -100 },
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
		Colour1 = { 255, 255, 80, 150 },
		Colour2 = { 255, 190, 50, 0 },
	}
)
end