dofile("mods/commander-cf-buster/effects/uranium_fly_mortar2.lua")
dofile(path .. "/effects/util_dlc.lua")
--fix_dupe("domefx", "mods/dlc1_weapons")
Sprites = {}
SoundEvent = "mods/commander-cf-buster/effects/uranium_fly_mortar2"
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
			ScaleMean = 4.5,
			ScaleStdDev = 0.5,
			SpeedStretch = 0,
			SpeedMean = 50,
			SpeedStdDev = 5,
			Drag = 0.1,
			RotationMean = 0,
			RotationStdDev = 45,
			RotationalSpeedMean = 0,
			RotationalSpeedStdDev = 15,	
			AgeMean = 0.7,
			AgeStdDev = .1,
			AlphaKeys = { 0.1, 1 },
			ScaleKeys = { 0.1, 0.2 },
			colour = { 50, 255, 100, 60 },
		},
	},
})