dofile("mods/dlc1_weapons/effects/impact_howitzer.lua")
dofile(path .. "/effects/util_dlc.lua")
dofile(path .. "/effects/util.lua")
SoundEvent = "mods/dlc1_weapons/effects/impact_howitzer"
fix_dupe("impact_howizter_big", "mods/dlc1_weapons") --bruh devs mispelled howitzer
--table.insert(Effects, Flames(4, 0.7, 800))
--table.insert(Effects, Flames(6, 0.25, 2000))
table.insert(Effects,
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 1000,
		FalloffEnd = 6000,
		TimeToTrigger = 0,
		TimeToLive = 0.35,
		Magnitude = 100,
	})
table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = 0.12,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom3.png",
		Additive = true,
		TimeToLive = 0.4,
		InitialSize = 15,
		ExpansionRate = -700,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 100,
		Colour1 = { 255, 222, 100, 188 },
		Colour2 = { 255, 170, 0, 30 },
	})
table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = 0.12,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 0.32,
		InitialSize = 23,
		ExpansionRate = -900,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 700,
		Colour1 = { 255, 170, 120, 190 },
		Colour2 = { 255, 100, 20, 30 },
	})
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
		InitialSize = 6,
		ExpansionRate = -20,
		Angle = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 700,
		Colour1 = { 255, 170, 255, 255 },
		Colour2 = { 255, 170, 255, 128 },
	})
table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = 0.12,
		LocalPosition = { x = 0, y = 0, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 0.16,
		InitialSize = 6,
		ExpansionRate = -20,
		Angle = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 700,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 255 },
	})

