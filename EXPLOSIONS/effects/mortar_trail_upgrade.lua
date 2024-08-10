if not Effects then Effects = {} end
table.insert(Effects,
{
	Type = "sparks",
	TimeToTrigger = 0.0,
	SparkCount = 40,
	BurstPeriod = 0.04,
	SparksPerBurst = 1,
	LocalPosition = { x = 0, y = 0, z = -265 },
	Sprite = path .. "/effects/media/bloom1.dds",
	Additive = true,
	Gravity = 0,

	NormalDistribution =					-- distribute sparks evenly between two angles with optional variation
	{
		Mean = 0,
		StdDev = 15,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
	},
	
	Keyframes =							
	{
		{
			Angle = 0,
			RadialOffsetMin = 0,
			RadialOffsetMax = 20,
			ScaleMean = 3.5,
			ScaleStdDev = 0.5,
			SpeedStretch = 0,
			SpeedMean = 50,
			SpeedStdDev = 5,
			Drag = 0.1,
			RotationMean = 0,
			RotationStdDev = 45,
			RotationalSpeedMean = 0,
			RotationalSpeedStdDev = 15,	
			AgeMean = 0.5,
			AgeStdDev = .1,
			AlphaKeys = { 0.1, 1 },
			ScaleKeys = { 0.1, 0.2 },
			colour = { 255, 200, 50, 60 },
		},
	},
})
