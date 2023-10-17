--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 1.0

Effects =
{
--[[
	{
		Type = "sound",
		TimeToTrigger = 0.0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = "shock_impact",
		Volume = 0.8,
		Priority = 128,
	},
]]
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 1.0,
		Sprite = "effects/media/flare",
		Additive = true,
		TimeToLive = 1,
		InitialSize = 2,
		ExpansionRate = -100,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 20,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 0 },
	},
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 1.0,
		Sprite = path .. "/effects/media/bloom2.png",
		Additive = true,
		TimeToLive = 0.6,
		InitialSize = 3,
		ExpansionRate = -300,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 80,
		Colour1 = { 180, 220, 255, 100 },
		Colour2 = { 140, 180, 255, 0 },
	},
}
