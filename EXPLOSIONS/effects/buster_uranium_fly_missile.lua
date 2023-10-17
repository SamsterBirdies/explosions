dofile("mods/commander-cf-buster/effects/uranium_fly_missile.lua")
dofile(path .. "/effects/util_dlc.lua")
--fix_dupe("domefx", "mods/dlc1_weapons")
Sprites = {}
SoundEvent = "mods/commander-cf-buster/effects/uranium_fly.lua"
for k, v in pairs(Effects) do
	if v.Sprite and v.Sprite == path .. "/effects/media/fireflareuranium.dds" then
		v.Sprite = "mods/commander-cf-buster/effects/media/fireflareuranium"
	end
	if v.Texture and v.Texture == path .. "/effects/media/fireflareuranium.dds" then
		v.Texture = "mods/commander-cf-buster/effects/media/fireflareuranium"
	end
end
table.insert(Effects,
{
	Keyframes = 
	{
		{
			Drag = 0.10000000149012,
			RotationMean = 0,
			AlphaKeys = 
			{
				0.10000000149012,
				1,
			},
			AgeStdDev = 0.0099999997764826,
			AgeMean = 1.3,
			Angle = 0,
			ScaleStdDev = 0.25,
			colour = 
			{
				50,
				255,
				100,
				20,
			},
			RadialOffsetMin = 0,
			RadialOffsetMax = 20,
			ScaleKeys = 
			{
				0.10000000149012,
				0.20000000298023,
			},
			SpeedStretch = 0,
			SpeedMean = 50,
			RotationStdDev = 45,
			SpeedStdDev = 5,
			RotationalSpeedMean = 0,
			ScaleMean = 7,
			RotationalSpeedStdDev = 15,
		},
	},
	Type = "sparks",
	NormalDistribution = 
	{
		Mean = 0,
		StdDev = 15,
	},
	LocalPosition = 
	{
		y = 110,
		x = 0,
		z = -250,
	},
	SparkCount = 60,
	Sprite = path .. "/effects/media/bloom1.dds",
	BurstPeriod = 0.029999999329448,
	TimeToTrigger = 0,
	Additive = true,
	Gravity = 0,
	SparksPerBurst = 1,
})