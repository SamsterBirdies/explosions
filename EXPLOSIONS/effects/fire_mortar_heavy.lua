if not Effects then Effects = {} end
table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 20, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom4.png",
		Additive = true,
		TimeToLive = 0.16,
		InitialSize = 3.5,
		ExpansionRate = 1000,
		Angle = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 190, 80, 160 },
		Colour2 = { 255, 120, 40, 30 },
	}
)
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
