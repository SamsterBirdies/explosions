dofile("mods/dlc2/effects/fire_deckgun.lua")
dofile(path .. "/effects/util_dlc.lua")
fix_dupe("deckgun_fire", "mods/dlc2")
fix_dupe("deckgun_flash", "mods/dlc2")
fix_dupe("deckgun_glow", "mods/dlc2")

table.insert(Effects,
{
	Type = "sprite",
	TimeToTrigger = 0,
	LocalPosition = { x = 0, y = 300, z = -100 },
	LocalVelocity = { x = 0, y = 0, z = 0 },
	Acceleration = { x = 0, y = 0, z = 0 },
	Drag = 0,
	Sprite = path .. "/effects/media/bloom1.png",
	Additive = true,
	TimeToLive = 0.16,
	InitialSize = 22,
	ExpansionRate = -2000,
	Angle = 0,
	AngularVelocity = 0,
	RandomAngularVelocityMagnitude = 0,
	Colour1 = { 255, 180, 70, 230 },
	Colour2 = { 255, 120, 30, 128 },
})
for i = 0, 17 do
	table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = 0 + i * (0.16/18),
		LocalPosition = { x = 0 - i * (30/18), y = 100 + i * (400/18), z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 0.4 + i * 0.01,
		InitialSize = 12 - i * (1.5/18),
		ExpansionRate = -500,
		Angle = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 180, 40, 40 },
		Colour2 = { 255, 40, 40, 30 },
	})
end
table.insert(Effects,
{
	Type = "shake",
	PlayForEnemy = true,
	FalloffStart = 1000,
	FalloffEnd = 5000,
	TimeToTrigger = 0,
	TimeToLive = 0.2,
	Magnitude = 40,
})