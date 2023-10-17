dofile(path .. "/effects/util.lua")
table.insert(Effects,Dirt(0.4, 1400))
table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = 0.08,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom3.png",
		Additive = true,
		TimeToLive = 0.32,
		InitialSize = 8.9,
		ExpansionRate = -700,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 200,
		Colour1 = { 255, 180, 100, 100 },
		Colour2 = { 255, 80, 40, 0 },
	}
)
table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = 0.0,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom4.png",
		Additive = true,
		TimeToLive = 0.12,
		InitialSize = 8,
		ExpansionRate = -700,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 200,
		Colour1 = { 255, 140, 80, 140 },
		Colour2 = { 255, 80, 40, 90 },
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
		TimeToLive = 0.2,
		InitialSize = 12.0,
		ExpansionRate = -1000,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 200,
		Colour1 = { 255, 255, 140, 140 },
		Colour2 = { 255, 190, 50, 60 },
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
		InitialSize = 4.0,
		ExpansionRate = -100,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 200,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 255 },
	}
)
table.insert(Effects,
	{
	--DUST CLOUDS
		Type = "sparks",
		TimeToTrigger = 0,
		SparkCount = 6,
		LocalPosition = { x = 0, y = 0, z = 1 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = "effects/media/smoke",

		Gravity = 0,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -90,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 90,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 40,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 7,
				ScaleStdDev = 1,
				SpeedStretch = 0,
				SpeedMean = 800,	
				SpeedStdDev = 200,
				Drag = 2,
				RotationMean = 0,
				RotationStdDev = 45,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 40,
				AgeMean = 4,
				AgeStdDev = 1.0,
				AlphaKeys = { 0.5, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
		},
	}
)
table.insert(Effects,
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 1000,
		FalloffEnd = 5000,
		TimeToTrigger = 0,
		TimeToLive = 0.2,
		Magnitude = 50,
	}
)

