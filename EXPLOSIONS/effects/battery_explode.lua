Sprites = {
{
		Name = "sb_battery_emp",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = "mods/weapon_pack/effects/media/RocketEMP06.dds" },
					{ texture = "mods/weapon_pack/effects/media/RocketEMP08.dds" },
					{ texture = "mods/weapon_pack/effects/media/RocketEMP10.dds" },
					{ texture = "mods/weapon_pack/effects/media/RocketEMP12.dds" },
					{ texture = "mods/weapon_pack/effects/media/RocketEMP13.dds" },
					{ texture = "mods/weapon_pack/effects/media/RocketEMP14.dds" },
					{ texture = "mods/weapon_pack/effects/media/RocketEMP15.dds" },
					{ texture = "mods/weapon_pack/effects/media/RocketEMP16.dds" },
					{ texture = "mods/weapon_pack/effects/media/RocketEMP17.dds" },
					{ texture = "mods/weapon_pack/effects/media/RocketEMP18.dds" },
					{ texture = "mods/weapon_pack/effects/media/RocketEMP18.dds", colour = { 1, 1, 1, 0.0 }, duration = 5 }, -- just makes a blank frame long enough to last the rest of the effect

					duration = 0.04,
					blendColour = false,
					blendCoordinates = false,
				},
				--RandomPlayLength = 2,
				NextState = "Normal",
			},
		},
	},
}
Effects =
{
	DeviceExplodeSprite(),
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 500,
		FalloffEnd = 2000,
		TimeToTrigger = 0.1,
		TimeToLive = 1.5,
		Magnitude = 15,
	},
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 500,
		FalloffEnd = 3000,
		TimeToTrigger = 0,
		TimeToLive = 0.2,
		Magnitude = 50,
	},
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom3.png",
		Additive = true,
		TimeToLive = 0.3,
		InitialSize = 14,
		ExpansionRate = -100,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 200,
		Colour1 = { 220, 210, 255, 160 },
		Colour2 = { 20, 0, 255, 0 },
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
		TimeToLive = 0.3,
		InitialSize = 10,
		ExpansionRate = -100,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 220, 210, 255, 100 },
		Colour2 = { 20, 0, 255, 0 },
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
				SpeedMean = 200,	
				SpeedStdDev = 100,
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
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 50, z = 0 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "sb_battery_emp",
		Additive = true,
		TimeToLive = 2,
		InitialSize = 1.5,
		Angle = 90,
		ExpansionRate = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 128, 128, 255, 128 },
	},
}