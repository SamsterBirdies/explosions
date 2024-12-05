exp_path = path
dofile("mods/theme_christmas/effects/fire_20mmcannon_snowballs.lua")
Sprites = {}
if not Effects then Effects = {} end
table.insert(Effects,
{
	Type = "sprite",
	TimeToTrigger = 0,
	LocalPosition = { x = 0, y = 20, z = -100 },
	LocalVelocity = { x = 0, y = 0, z = 0 },
	Acceleration = { x = 0, y = 0, z = 0 },
	Drag = 0,
	Sprite = exp_path .. "/effects/media/bloom4.png",
	Additive = true,
	TimeToLive = 0.2,
	InitialSize = 5.5,
	ExpansionRate = 1000,
	Angle = 0,
	AngularVelocity = 0,
	RandomAngularVelocityMagnitude = 0,
	Colour1 = { 255, 230, 100, 160 },
	Colour2 = { 255, 200, 40, 30 },
})