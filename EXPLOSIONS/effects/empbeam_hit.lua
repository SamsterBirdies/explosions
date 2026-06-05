dofile("mods/dlc3/effects/emp_beam_hit.lua")
dofile(path .. "/effects/util_dlc.lua")
dofile(path .. "/effects/util.lua")
fix_paths("mods/dlc3")
empblue = { 48, 48, 255, 6 }
scale = 9
SoundEvent = "mods/weapon_pack/effects/firebeam_hit"
table.insert(Effects,
{
	Type = "sparks",
	TimeToTrigger = 0.0,
	SparkCount = 15,
	BurstPeriod = 0.1,
	SparksPerBurst = 3,
	LocalPosition = { x = 0, y = 0, z = -1.5 },
	Sprite = path .. "/effects/media/bloom3",

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
			ScaleMean = scale ,
			ScaleStdDev = 0.1,
			SpeedStretch = 0.2,
			SpeedMean = 500,
			SpeedStdDev = 2,
			Drag = 0.1,
			RotationMean = 0,
			RotationStdDev = 0,
			RotationalSpeedMean = 0,
			RotationalSpeedStdDev = 0,	
			AgeMean = 0.15,
			AgeStdDev = 0.0,
			AlphaKeys = { 0.1, 1 },
			ScaleKeys = { 0.1, 0.2 },
			colour = empblue,
		},
		{
			Angle = 80,
			RadialOffsetMin = 0,
			RadialOffsetMax = 20,
			ScaleMean = scale * 0.6,
			ScaleStdDev = 0.1,
			SpeedStretch = 0.2,
			SpeedMean = 500,
			SpeedStdDev = 2,
			Drag = 0.1,
			RotationMean = 0,
			RotationStdDev = 0,
			RotationalSpeedMean = 0,
			RotationalSpeedStdDev = 0,	
			AgeMean = 0.15,
			AgeStdDev = 0.0,
			AlphaKeys = { 0.1, 1 },
			ScaleKeys = { 0.1, 0.2 },
			colour = empblue,
		},
	},
})
