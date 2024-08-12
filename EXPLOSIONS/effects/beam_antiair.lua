if not Effects then 
		Effects = {}
	else
		Sprites =
		{
			{
				Name = "sbexp_plasmahowitzer_impact",
		
				States =
				{
					Normal =
					{
						Frames =
						{
							{ texture = "effects/media/HowitzerImpact05"},
							{ texture = "effects/media/HowitzerImpact06"},
							{ texture = "effects/media/HowitzerImpact07"},
							{ texture = "effects/media/HowitzerImpact08"},
							{ texture = "effects/media/HowitzerImpact09"},
							{ texture = "effects/media/HowitzerImpact10"},
							{ texture = "effects/media/HowitzerImpact11"},
							{ texture = "effects/media/HowitzerImpact12"},
							{ texture = "effects/media/HowitzerImpact13"},
							{ texture = "effects/media/HowitzerImpact14"},
							duration = 0.04,
							blendColour = false,
							blendCoordinates = false,
						},
						--RandomPlayLength = 2,
						NextState = "Normal",
					},
				},
			},
		}
end
table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = -200 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 1.0,
		Sprite = "effects/media/flare",
		Additive = true,
		KillParticleOnEffectExpire = true,
		KillParticleOnEffectCancel = true,
		TimeToLive = 10000,
		InitialSize = 20,
		ExpansionRate = 0,
		AngularVelocity = 0,
		Angle = 90,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, 100 },
		Colour2 = { 255, 255, 255, 100 },
	})
table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = -200 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 1.0,
		Sprite = "sbexp_plasmahowitzer_impact",
		Additive = false,
		KillParticleOnEffectExpire = true,
		KillParticleOnEffectCancel = true,
		TimeToLive = 10000,
		InitialSize = 2,
		ExpansionRate = 0,
		AngularVelocity = 0,
		Angle = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 255 },
	})
table.insert(Effects,
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = -200 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 1.0,
		Sprite = "sbexp_plasmahowitzer_impact",
		Additive = true,
		KillParticleOnEffectExpire = true,
		KillParticleOnEffectCancel = true,
		TimeToLive = 2,
		InitialSize = 4,
		ExpansionRate = 0,
		AngularVelocity = 0,
		Angle = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 120, 120, 255, 80 },
		Colour2 = { 120, 120, 255, 120 },
	})