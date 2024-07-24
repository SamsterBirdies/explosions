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
	TimeToLive = 1,
	InitialSize = 7,
	ExpansionRate = 0,
	Angle = -90,
	AngularVelocity = 0,
	RandomAngularVelocityMagnitude = 0,
	Colour1 = { 100, 140, 255, 180 },
	Colour2 = { 0, 0, 255, 0 },
})

--[[
Effects =
{
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = -200 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "EMPsmall",
		Additive = false,
		TimeToLive = 2,
		InitialSize = 1.4,
		Angle = 0,
		ExpansionRate = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 255 },
	},
}]]

