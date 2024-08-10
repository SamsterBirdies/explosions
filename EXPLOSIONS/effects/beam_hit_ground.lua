if not Effects then Effects = {} end
table.insert(Effects,
	{
		Type = "sparks",
		TimeToTrigger = 0.0,
		SparkCount = 30,
		BurstPeriod = 0.15,
		BurstAfterDistance = 25,
		SparksPerBurst = 3,
		LocalPosition = { x = 0, y = 0, z = -2 },
		Sprite = "effects/media/flare",

		Gravity = 0,
		Additive = true,

		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -80,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 80,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = -80,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 10,
				ScaleStdDev = 0.1,
				SpeedStretch = 0.2,
				SpeedMean = 500,
				SpeedStdDev = 2,
				Drag = 0.1,
				RotationMean = 0,
				RotationStdDev = 0,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 0,	
				AgeMean = 0.1,
				AgeStdDev = 0,
				AlphaKeys = { 0.1, 1 },
				ScaleKeys = { 0.1, 0.2 },
				colour = { 40, 40, 255, 30 },
			},
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 30,
				ScaleStdDev = 0.5,
				SpeedStretch = 0,
				SpeedMean = 10,
				SpeedStdDev = 2,
				Drag = 0.1,
				RotationMean = 0,
				RotationStdDev = 45,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 15,	
				AgeMean = 0.75,
				AgeStdDev = .025,
				AlphaKeys = { 0.1, 1 },
				ScaleKeys = { 0.1, 0.2 },
				colour = { 40, 40, 255, 30 },
			},
			{
				Angle = 80,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 10,
				ScaleStdDev = 0.1,
				SpeedStretch = 0.2,
				SpeedMean = 500,
				SpeedStdDev = 2,
				Drag = 0.1,
				RotationMean = 0,
				RotationStdDev = 0,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 0,	
				AgeMean = 0.1,
				AgeStdDev = 0,
				AlphaKeys = { 0.1, 1 },
				ScaleKeys = { 0.1, 0.2 },
				colour = { 40, 40, 255, 30 },
			},
		},
	}
)
