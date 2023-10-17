--reduce original effects.
if Effects[14].Colour1 then Effects[14].Colour1 = { 255, 255, 255, 0 } end
if Effects[14].Colour2 then Effects[14].Colour2 = { 255, 160, 90, 0 } end
if Effects[15].Colour1 then Effects[15].Colour1 = { 255, 255, 255, 128 } end
if Effects[15].Colour2 then Effects[15].Colour2 = { 255, 255, 255, 128 } end
--add new bloomies
table.insert(Effects, 
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 3.5,
		InitialSize = 100,
		ExpansionRate = -2000,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, 128 },
		Colour2 = { 255, 100, 0, 0 },
	}
)
table.insert(Effects, 
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
		InitialSize = 35,
		ExpansionRate = -1000,
		Angle = 90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 200,
		Colour1 = { 255, 255, 255, 160 },
		Colour2 = { 255, 255, 255, 160 },
	}
)
table.insert(Effects, 
	{
		Type = "sprite",
		TimeToTrigger = 0.16,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom3.png",
		Additive = true,
		TimeToLive = 0.04,
		InitialSize = 30,
		ExpansionRate = -1000,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 200,
		Colour1 = { 255, 255, 255, 200 },
		Colour2 = { 255, 140, 60, 90 },
	}
)
table.insert(Effects, 
	{
		Type = "sprite",
		TimeToTrigger = 0.32,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 0.08,
		InitialSize = 20,
		ExpansionRate = -1000,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 200,
		Colour1 = { 255, 170, 100, 200 },
		Colour2 = { 255, 120, 60, 90 },
	}
)
table.insert(Effects,
	{ -- glow sprite that follows the fireball
		Type = "sprite",
		LocalPosition = { x = 0, y = 0, z = -64 },
		LocalVelocity = { x = 0, y = 50, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 16,
		InitialSize = 30,
		ExpansionRate = -200,
		Angle = 90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1Time = 0.03,
		Colour2Time = 1,
		Colour1 = { 255, 145, 70, 250 },
		Colour2 = { 255, 120, 50, 0 },
	})
table.insert(Effects, 	
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 3000,
		FalloffEnd = 10000,
		TimeToTrigger = 0,
		TimeToLive = 0.3,
		Magnitude = 150,
	}
)
