LifeSpan = 6
SoundEvent = "mods/weapon_pack/effects/fire_firebeam"
Effects =
{
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 12, y = 34, z = 0 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "firebeam_fire",
		Additive = true,
		TimeToLive = 3,
		Angle = -90,
		InitialSize = 1,
		ExpansionRate = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		KillParticleOnEffectCancel = true,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 255 },
	},
{
		Type = "sparks",
		TimeToTrigger = 0.0,
		SparkCount = 15,
		BurstPeriod = 0.1,
		SparksPerBurst = 3,
		LocalPosition = { x = 0, y = 0, z = -2 },
		Sprite = "mods/weapon_pack/effects/media/fireflare",

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
				ScaleMean = 5,
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
				colour = { 255, 100, 100, 30 },
			},
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 20,
				ScaleStdDev = 0.5,
				SpeedStretch = 0,
				SpeedMean = 10,
				SpeedStdDev = 2,
				Drag = 0.1,
				RotationMean = 0,
				RotationStdDev = 45,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 15,	
				AgeMean = 0.25,
				AgeStdDev = .025,
				AlphaKeys = { 0.1, 1 },
				ScaleKeys = { 0.1, 0.2 },
				colour = { 255, 100, 100, 30 },
			},
			{
				Angle = 80,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 5,
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
				colour = { 255, 100, 100, 30 },
			},
		},
	},
}