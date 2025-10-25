dofile("mods/theme_halloween/effects/mushroom_cloud_halloween.lua")
dofile(path .. "/effects/util_dlc.lua")
fix_paths("mods/theme_halloween")
if Effects then
	Effects[1].Keyframes[1].colour = {190, 60, 30, 255}
	Effects[2].Keyframes[1].colour = {255, 90, 50, 255}
	Effects[3].Keyframes[1].colour = {255, 0, 0, 255}
	Effects[5].Keyframes[1].colour = {255, 40, 40, 128}
	Effects[5].Keyframes[2].colour = {255, 40, 40, 128}
	Effects[5].Keyframes[3].colour = {255, 40, 40, 128}
	Effects[8].Keyframes[1].colour = {255, 200, 0, 255}
	Effects[8].Keyframes[2].colour = {255, 200, 0, 255}
	Effects[8].Keyframes[3].colour = {255, 200, 0, 255}
	Effects[9].Keyframes[1].colour = {255, 90, 40, 128}
	Effects[9].Keyframes[2].colour = {255, 90, 40, 128}
	Effects[9].Keyframes[3].colour = {255, 90, 40, 128}
	Effects[12].TrailEffect = path .. "/effects/halloween_ghoul_streams.lua"
	Effects[13].TrailEffect = path .. "/effects/halloween_ghoul_streams.lua"
end
if not Effects then Effects = {} end
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
		Colour1 = { 255, 255, 128, 128 },
		Colour2 = { 255, 0, 0, 0 },
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
		Colour1 = { 255, 70, 30, 160 },
		Colour2 = { 255, 70, 30, 160 },
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
		Colour2 = { 255, 60, 10, 90 },
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
		Colour1 = { 255, 90, 60, 200 },
		Colour2 = { 255, 40, 0, 90 },
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
		Colour1 = { 255, 90, 60, 250 },
		Colour2 = { 90, 60, 40, 0 },
	})
table.insert(Effects, 	
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 3000,
		FalloffEnd = 10000,
		TimeToTrigger = 0,
		TimeToLive = 0.45,
		Magnitude = 300,
	}
)
function BloomStem(delay, duration, age, depth, col, scale)
	return 	{
		Type = "sparks",
		TimeToTrigger = delay,
		TimeToStop = delay + duration,
		SparkCount = 20,
		BurstPeriod = 0.6,
		SparksPerBurst = 1,
		LocalPosition = { x = 0, y = -50, z = depth },
		Sprite = path .. "/effects/media/bloom1",
		Additive = true,
		Gravity = 0,

		NormalDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Mean = 0,
			Min = -25,
			Max = 25,
			StdDev = 3,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 0,
				ScaleMean = scale,
				ScaleStdDev = .2,
				SpeedStretch = 0,
				SpeedMean = 80,
				SpeedStdDev = 1,
				Drag = 0,
				RotationMean = 0,
				RotationStdDev = 50,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 10,
				AgeMean = age,
				AgeStdDev = 0.5,
				AlphaKeys = { 0.5, 0.5 },
				ScaleKeys = { 0.2, 1 },	
				colour = col,
			},
		},
	}
end
function BloomCloud(delay, extent, sparks, speed, outerSpeed, col, maxAge, scale, depth, scaleInEnd, scaleOutStart, fadeInEnd, fadeOutStart, sprite)
	return {
		--BACKGROUND CLOUD
		Type = "sparks",
		TimeToTrigger = delay,
		TimeToStop = delay,
		SparkCount = sparks,
		BurstPeriod = 10,
		SparksPerBurst = sparks,
		LocalPosition = { x = 0, y = 20, z = depth },
		Sprite = sprite or path .. "/effects/media/ExplosionMedium",
		Additive = true,
		Gravity = 0,

		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Mean = 0,
			Min = -extent,
			Max = extent,
			StdDev = 1,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = -extent,
				RadialOffsetMin = 0,
				RadialOffsetMax = 0,
				ScaleMean = scale,
				ScaleStdDev = .3,
				SpeedStretch = 0,
				SpeedMean = speed + outerSpeed,
				SpeedStdDev = 1,
				Drag = .1,
				RotationMean = -50,
				RotationStdDev = 0,
				RotationalSpeedMean = -30,
				RotationalSpeedStdDev = 0,
				AgeMean = maxAge,
				AgeStdDev = 0.05*maxAge,
				AlphaKeys = { fadeInEnd, fadeOutStart },
				ScaleKeys = { scaleInEnd, scaleOutStart },	
				colour = col,
			},
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 0,
				ScaleMean = scale*0.9,
				ScaleStdDev = .3,
				SpeedStretch = 0,
				SpeedMean = speed,
				SpeedStdDev = 1,
				Drag = 0.1,
				RotationMean = 0,
				RotationStdDev = 0,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 0,
				AgeMean = maxAge,
				AgeStdDev = 0.05*maxAge,
				AlphaKeys = { fadeInEnd, fadeOutStart },
				ScaleKeys = { scaleInEnd, scaleOutStart },	
				colour = col,
			},
			{
				Angle = extent,
				RadialOffsetMin = 0,
				RadialOffsetMax = 0,
				ScaleMean = scale,
				ScaleStdDev = .3,
				SpeedStretch = 0,
				SpeedMean = speed + outerSpeed,
				SpeedStdDev = 1,
				Drag = 0.1,
				RotationMean = 50,
				RotationStdDev = 0,
				RotationalSpeedMean = 30,
				RotationalSpeedStdDev = 0,
				AgeMean = maxAge,
				AgeStdDev = 0.05*maxAge,
				AlphaKeys = { fadeInEnd, fadeOutStart },
				ScaleKeys = { scaleInEnd, scaleOutStart },	
				colour = col,
			},
		},
	}
end
table.insert(Effects, BloomStem(0, 7, 9, StemDepthMain, { 190, 60, 30, 30 }, 10))
table.insert(Effects, BloomStem(2, 2, 5, StemDepthLight, {255, 90, 50, 30}, 10))
table.insert(Effects, BloomStem(4, 3, 6, StemDepth, {255, 0, 0, 30}, 10))
table.insert(Effects, BloomCloud(0, 18, 6, 90, -5, {255, 90, 40, 30}, 12, 6.5, FrontCloudDepth1, 0.3, 0.5, 0.3, 0.7, path .. "/effects/media/bloom1"))