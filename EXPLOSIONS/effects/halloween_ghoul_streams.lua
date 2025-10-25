dofile("mods/theme_halloween/effects/ghoul_streams.lua")
dofile(path .. "/effects/util_dlc.lua")
fix_paths("mods/theme_halloween")

if Effects then
	Effects[1].LocalPosition.z = -1
end
if not Effects then Effects = {} end
table.insert(Effects,
{
		Type = "sparks",
		TimeToTrigger = 0.0,
		SparkCount = 50,
		BurstPeriod = 0.04,
		SparksPerBurst = 1,
		LocalPosition = { x = 0, y = 20 , z = -10},	-- how to place the origin relative to effect position and direction (0, 0) 
		Sprite = path .. "/effects/media/bloom1.dds",
		Additive = true,
		Gravity = 50,						-- gravity applied to particle (981 is earth equivalent)
--[[		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -70,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 70,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 20,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},
]]
		NormalDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Mean = 0,
			StdDev = 15,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},
		
		Keyframes =							
		{
			{
				Angle = 0,					-- angle of keyframe in degrees (e.g. -180, 45, 0)
				RadialOffsetMin = 0,		-- minimum distance from effect origin
				RadialOffsetMax = 20,		-- maximum distance from effect origin
				ScaleMean = 2.5,			-- mean scale (normal distribution)
				ScaleStdDev = 0.4,			-- standard deviation of scale (0 will make them all the same size)
				SpeedStretch = 0,			-- factor of speed by which to elongate the spark in the direction of travel (avoid using with rotation)
				SpeedMean = 50,				-- mean speed of sparks at emission (normal distribution)
				SpeedStdDev = 5,			-- standard deviation of spark speed at emission
				Drag = 0.1,					-- drag of sparks (zero will make them continue at same speed)
				RotationMean = 0,			-- mean initial rotation in degrees (e.g. -180, 45, 0) (normal distribution)
				RotationStdDev = 45,		-- standard deviation of initial rotation in degrees (zero will make them start at the same angle)
				RotationalSpeedMean = 15,	-- mean rotational speed in degrees per second (e.g. -180, 45, 0) (normal distribution)
				RotationalSpeedStdDev = 15,	-- standard deviation of rotational speed in degrees per second (zero will make them rotate at the same rate)
				AgeMean = 0.75,				-- mean age in seconds (normal distribution)
				AgeStdDev = 0.1,			-- standard deviation of age in seconds (zero makes them last the same length of time)
				AlphaKeys = { 0, 0.5 },	-- fractions of life span between which the spark reaches full alpha (fade in -> full alpha -> fade out)
				ScaleKeys = { 0, 0.2 },		-- fractions of life span between which the spark reaches full scale (balloon in -> full scale -> shrink out)
				colour = { 255, 255, 255, 60 }, -- Colour used to modulate the sprite
			},
		},
	})
