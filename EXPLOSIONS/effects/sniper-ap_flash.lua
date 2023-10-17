table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = 0.04,
		LocalPosition = { x = 0, y = 70, z = -100 },
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
		Colour1 = { 255, 255, 90, 150 },
		Colour2 = { 255, 190, 50, 68 },
	}
)
table.insert(Effects,
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 500,
		FalloffEnd = 2000,
		TimeToTrigger = 0,
		TimeToLive = 0.12,
		Magnitude = 4,
	}
)