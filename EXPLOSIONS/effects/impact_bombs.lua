dofile("mods/dlc2/effects/impact_bombs.lua")
dofile(path .. "/effects/util_dlc.lua")
dofile(path .. "/effects/util.lua")
fix_dupe("explosion_bombs", "mods/dlc2")

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
		TimeToLive = 0.2,
		InitialSize = 6,
		ExpansionRate = -700,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 200,
		Colour1 = { 255, 180, 100, 160 },
		Colour2 = { 255, 80, 40, 70 },
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
		TimeToLive = 0.16,
		InitialSize = 3.0,
		ExpansionRate = -100,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 200,
		Colour1 = { 255, 140, 255, 120 },
		Colour2 = { 255, 190, 50, 90 },
	}
)
table.insert(Effects,
	{
	--DUST CLOUDS
		Type = "sparks",
		TimeToTrigger = 0,
		SparkCount = 4,
		LocalPosition = { x = 0, y = 0, z = 1 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = "effects/media/smoke",

		Gravity = 0,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -360,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 360,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 40,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 5,
				ScaleStdDev = 1,
				SpeedStretch = 0,
				SpeedMean = 200,	
				SpeedStdDev = 60,
				Drag = 1,
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