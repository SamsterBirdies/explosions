dofile("effects/device_explode_util.lua")
dofile(path .. "/effects/util.lua")
--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
SoundEvent = "mods/EXPLOSIONS/effects/large_explosion"
LifeSpan = 6.0
function Streamers(delay, count)
	return {
		--SPARKY STREAMERS
		Type = "sparks",
		TimeToTrigger = delay,
		TimeToStop = delay,
		SparkCount = count,
		SparksPerBurst = count,
		LocalPosition = { x = 0, y = 0, z = StreamersDepth },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = "effects/media/flame.dds",
		TrailEffect = "effects/missile_streams.lua",

		Gravity = 981,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -60,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 60,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 15,					-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = -70,				-- angle of keyframe in degrees (e.g. -180, 45, 0)
				RadialOffsetMin = 0,		-- minimum distance from effect origin
				RadialOffsetMax = 20,		-- maximum distance from effect origin
				ScaleMean = 1,				-- mean scale (normal distribution)
				ScaleStdDev = 0.2,			-- standard deviation of scale (0 will make them all the same size)
				SpeedStretch = 0.05,			-- factor of speed by which to elongate the spark in the direction of travel (avoid using with rotation)
				SpeedMean = 700,				-- mean speed of sparks at emission (normal distribution)
				SpeedStdDev = 250,			-- standard deviation of spark speed at emission
				Drag = .2,					-- drag of sparks (zero will make them continue at same speed)
				RotationMean = 0,			-- mean initial rotation in degrees (e.g. -180, 45, 0) (normal distribution)
				RotationStdDev = 0,		-- standard deviation of initial rotation in degrees (zero will make them start at the same angle)
				RotationalSpeedMean = 0,	-- mean rotational speed in degrees per second (e.g. -180, 45, 0) (normal distribution)
				RotationalSpeedStdDev = 0,	-- standard deviation of rotational speed in degrees per second (zero will make them rotate at the same rate)
				AgeMean = .7,				-- mean age in seconds (normal distribution)
				AgeStdDev = 0.2,				-- standard deviation of age in seconds (zero makes them last the same length of time)
				AlphaKeys = { 0, 0.5 },	-- fractions of life span between which the spark reaches full alpha (fade in -> full alpha -> fade out)
				ScaleKeys = { 0, 0.5 },	-- fractions of life span between which the spark reaches full scale (balloon in -> full scale -> shrink out)
			},
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 1,
				ScaleStdDev = 0.1,
				SpeedStretch = 0.05,
				SpeedMean = 1000,
				SpeedStdDev = 250,
				Drag = .2,
				RotationMean = 0,
				RotationStdDev = 0,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 0,
				AgeMean = 2,
				AgeStdDev = 0.3,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
			{
				Angle = 70,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 1,
				ScaleStdDev = 0.2,
				SpeedStretch = 0.05,
				SpeedMean = 800,
				SpeedStdDev = 250,
				Drag = .2,
				RotationMean = 0,
				RotationStdDev = 0,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 0,
				AgeMean = .7,
				AgeStdDev = 0.2,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
		},
	}
end
Effects =
{
	Debris("gunner"),
	Debris("gunner"),
	Debris("weapons/cannon/barrel_destroyed1.dds"),
	Debris("weapons/cannon/barrel_destroyed2.dds"),
	Debris("weapons/cannon/head_destroyed.dds"),
	Debris("weapons/cannon/base_destroyed.dds"),
	Streamers(0, 3),
	Streamers(0.2, 4),
	Flames(6, 0.25, 1000),
	DeviceExplodeSprite(),
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 1000,
		FalloffEnd = 10000,
		TimeToTrigger = 0,
		TimeToLive = 2,
		Magnitude = 25,
	},
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 1000,
		FalloffEnd = 5000,
		TimeToTrigger = 0,
		TimeToLive = 0.35,
		Magnitude = 100,
	},
	{
		Type = "sprite",
		TimeToTrigger = 0.16,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom3.png",
		Additive = true,
		TimeToLive = 0.25,
		InitialSize = 14,
		ExpansionRate = 100,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 100,
		Colour1 = { 255, 150, 70, 168 },
		Colour2 = { 255, 70, 0, 0 },
	},
	{
		Type = "sprite",
		TimeToTrigger = 0.08,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 0.5,
		InitialSize = 20,
		ExpansionRate = -20,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 700,
		Colour1 = { 255, 255, 255, 158 },
		Colour2 = { 255, 140, 0, 0 },
	},
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
		InitialSize = 7,
		ExpansionRate = -20,
		Angle = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 700,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 180 },
	},
	{
	--DUST CLOUDS
		Type = "sparks",
		TimeToTrigger = 0,
		SparkCount = 9,
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
				ScaleMean = 10,
				ScaleStdDev = 3,
				SpeedStretch = 0,
				SpeedMean = 500,	
				SpeedStdDev = 200,
				Drag = 1,
				RotationMean = 0,
				RotationStdDev = 45,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 40,
				AgeMean = 5.5,
				AgeStdDev = 1.5,
				AlphaKeys = { 0.5, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
		},
	},
	{
	--DEBRIS
		Type = "sparks",
		TimeToTrigger = 0.1,
		SparkCount = 18,
		LocalPosition = { x = 0, y = 0 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = "mods/weapon_pack/effects/media/debris",

		Gravity = 0981,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -35,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 35,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = -35,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.25,
				ScaleStdDev = 0.1,
				SpeedStretch = 0,
				SpeedMean = 1700,
				SpeedStdDev = 700,
				Drag = 1,
				RotationMean = 45,
				RotationStdDev = 180,
				RotationalSpeedMean = 10,
				RotationalSpeedStdDev = 5,
				AgeMean = 2,
				AgeStdDev = 0.5,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
			{
				Angle = 35,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.25,
				ScaleStdDev = 0.1,
				SpeedStretch = 0,
				SpeedMean = 700,
				SpeedStdDev = 400,
				Drag = 1,
				RotationMean = -45,
				RotationStdDev = -180,
				RotationalSpeedMean = 10,
				RotationalSpeedStdDev = 5,
				AgeMean = 2,
				AgeStdDev = 0.5,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
		},
	},
	{
	--SPARKS
		Type = "sparks",
		TimeToTrigger = 0.1,
		SparkCount = 14,
		LocalPosition = { x = 0, y = 0 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = "mods/weapon_pack/effects/media/flame",

		Gravity = 0981,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -35,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 35,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = -35,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.25,
				ScaleStdDev = 0.1,
				SpeedStretch = 0,
				SpeedMean = 4000,
				SpeedStdDev = 200,
				Drag = 1,
				RotationMean = 45,
				RotationStdDev = 180,
				RotationalSpeedMean = 10,
				RotationalSpeedStdDev = 5,
				AgeMean = 1,
				AgeStdDev = 0.25,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
			{
				Angle = 35,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.25,
				ScaleStdDev = 0.1,
				SpeedStretch = 0,
				SpeedMean = 2000,
				SpeedStdDev = 200,
				Drag = 1,
				RotationMean = -45,
				RotationStdDev = -180,
				RotationalSpeedMean = 10,
				RotationalSpeedStdDev = 5,
				AgeMean = 1,
				AgeStdDev = 0.25,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
		},
	},
	{
	--PRIMARY FLAMES
		Type = "sparks",
		TimeToTrigger = 0.1,
		SparkCount = 3,
		LocalPosition = { x = 0, y = 0 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = "effects/media/flame",
		TrailEffect = "effects/missile_streams.lua",

		Gravity = 50,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -70,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 70,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = -70,				-- angle of keyframe in degrees (e.g. -180, 45, 0)
				RadialOffsetMin = 0,		-- minimum distance from effect origin
				RadialOffsetMax = 20,		-- maximum distance from effect origin
				ScaleMean = 1,				-- mean scale (normal distribution)
				ScaleStdDev = 0.2,			-- standard deviation of scale (0 will make them all the same size)
				SpeedStretch = 0.05,			-- factor of speed by which to elongate the spark in the direction of travel (avoid using with rotation)
				SpeedMean = 6000,				-- mean speed of sparks at emission (normal distribution)
				SpeedStdDev = 250,			-- standard deviation of spark speed at emission
				Drag = 1,					-- drag of sparks (zero will make them continue at same speed)
				RotationMean = 0,			-- mean initial rotation in degrees (e.g. -180, 45, 0) (normal distribution)
				RotationStdDev = 0,		-- standard deviation of initial rotation in degrees (zero will make them start at the same angle)
				RotationalSpeedMean = 0,	-- mean rotational speed in degrees per second (e.g. -180, 45, 0) (normal distribution)
				RotationalSpeedStdDev = 0,	-- standard deviation of rotational speed in degrees per second (zero will make them rotate at the same rate)
				AgeMean = 0.15,				-- mean age in seconds (normal distribution)
				AgeStdDev = 0,				-- standard deviation of age in seconds (zero makes them last the same length of time)
				AlphaKeys = { 0, 0.5 },	-- fractions of life span between which the spark reaches full alpha (fade in -> full alpha -> fade out)
				ScaleKeys = { 0, 0.5 },	-- fractions of life span between which the spark reaches full scale (balloon in -> full scale -> shrink out)
			},
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 1,
				ScaleStdDev = 0.1,
				SpeedStretch = 0.05,
				SpeedMean = 3000,
				SpeedStdDev = 250,
				Drag = 1,
				RotationMean = 0,
				RotationStdDev = 0,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 0,
				AgeMean = 0.15,
				AgeStdDev = 0,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
			{
				Angle = 70,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 1,
				ScaleStdDev = 0.2,
				SpeedStretch = 0.05,
				SpeedMean = 12000,
				SpeedStdDev = 250,
				Drag = 2,
				RotationMean = 0,
				RotationStdDev = 0,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 0,
				AgeMean = 0.15,
				AgeStdDev = 0,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
		},
	},
	{
	--SECONDARY FLAMES
		Type = "sparks",
		TimeToTrigger = 0,
		SparkCount = 4,
		LocalPosition = { x = 0, y = 0 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = "effects/media/flame",
		--TrailEffect = "effects/missile_streams.lua",

		Gravity = 50,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -35,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 35,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = -35,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.75,
				ScaleStdDev = 0.2,
				SpeedStretch = 0.02,
				SpeedMean = 750,
				SpeedStdDev = 200,
				Drag = 1,
				RotationMean = 0,
				RotationStdDev = 0,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 0,
				AgeMean = 0.3,
				AgeStdDev = 0.05,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
			{
				Angle = 35,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 1.5,
				ScaleStdDev = 0.1,
				SpeedStretch = 0,
				SpeedMean = 11750,
				SpeedStdDev = 200,
				Drag = 1,
				RotationMean = 0,
				RotationStdDev = 0,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 0,
				AgeMean = 0.3,
				AgeStdDev = 0.05,
				AlphaKeys = { 0, 0.5 },
				ScaleKeys = { 0, 0.5 },
			},
		},
	},
}
