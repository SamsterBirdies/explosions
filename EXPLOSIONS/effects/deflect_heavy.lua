SoundEvent = "mods/EXPLOSIONS/effects/richochet_large"
Sprites =
{
	{
		Name = "sbEXP_deflect_heavy",

		States =
		{
			Normal =
			{
				Frames =
				{
					--{ texture = "effects/media/impact_light01.tga", colour = { 1, 1, 1, 1.0 } },
					{ texture = "effects/media/device_destruction01.tga", colour = { 1, 1, 1, 1.0 } },
					{ texture = path .. "/effects/media/spark_0", colour = { 1, 1, 1, 1.0 } },
					{ texture = path .. "/effects/media/spark_1", colour = { 1, 1, 1, 1.0 } },
					{ texture = path .. "/effects/media/spark_1", colour = { 1, 1, 1, 0 }, duration = 1},

					duration = 0.08,
					blendColour = false,
					blendCoordinates = false,
				},
				NextState = "Normal",
			},
		},
	}
}
Effects =
{
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 70, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = "sbEXP_deflect_heavy",
		Additive = false,
		TimeToLive = 0.4,
		InitialSize = 1.5,
		ExpansionRate = 0,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 128 },
	},
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 30, z = -100 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/bloom1.png",
		Additive = true,
		TimeToLive = 0.2,
		InitialSize = 2.3,
		ExpansionRate = -20,
		Angle = -90,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 700,
		Colour1 = { 255, 255, 128, 200 },
		Colour2 = { 255, 128, 0, 0 },
	},
}