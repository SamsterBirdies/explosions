--dofile(path .. "/BetterLog.lua")
sb_EXPLOSIONS_path = path
table.insert(Sprites,
{
	Name = "sb_bloom_swarm",
	States =
	{
		Normal = { Frames = 
		{ 
			--{ texture = path .. "/effects/media/bloom1.png" , colour = { 0.85, 0.80, 0.5, 0.3 },},
			--{ texture = path .. "/effects/media/bloom1.png" , colour = { 0.9, 0.85, 0.3, 0.2 },},
			--{ texture = path .. "/effects/media/bloom1.png" , colour = { 1, 0.85, 0.2, 0.1 },},
			--{ texture = path .. "/effects/media/bloom1.png" , colour = { 0.9, 0.82, 0.3, 0.2 },},
			{ texture = path .. "/effects/media/bloom1.png" , colour = { 0.85, 0.80, 0.2, 0.3 },},
			{ texture = path .. "/effects/media/bloom1.png" , colour = { 0.9, 0.85, 0.1, 0.2 },},
			{ texture = path .. "/effects/media/bloom1.png" , colour = { 1, 0.85, 0.0, 0.1 },},
			{ texture = path .. "/effects/media/bloom1.png" , colour = { 0.9, 0.82, 0.1, 0.2 },},
			duration = 0.04,
			NextState = "Normal",
		},},
	},
})
table.insert(Sprites,
{
	Name = "sb_bloom_dome",
	States =
	{
		Normal = { Frames = 
		{ 
			{ texture = path .. "/effects/media/bloom1.png" , colour = { 0.2, 0.4, 1, 0.3 },},
		}},
	},
})
table.insert(Sprites,
{
	Name = "sb_bloom_plasma",
	States =
	{
		Normal = { Frames = 
		{ 
			{ texture = path .. "/effects/media/bloom_plasma.png"},
			mipmap = false, mipMap = false, Mipmap = false, MipMap = false,
		}},
	},
})
table.insert(Sprites,
{
	Name = "sb_bloom_firebeam",
	States =
	{
		Normal = { Frames = 
		{ 
			{ texture = path .. "/effects/media/bloom_firebeam.png"},
			mipmap = false, mipMap = false, Mipmap = false, MipMap = false,
		}},
	},
})
local function sbeat(saveName, saveName2)
	--returns true for other versions of the projectile aswell like flaming versions.
	if saveName == saveName2 or saveName == "flaming" .. saveName2 or saveName == "armoured" .. saveName2 or saveName == "vacuum" .. saveName2 or saveName == "drunk" .. saveName2 or saveName == "damaged" .. saveName2 then 
		return true
	else
		return false
	end
end
for k, v in pairs(Projectiles) do
	if sbeat(v.SaveName, "rocket") then
		v.Effects.Impact.default = path .. "/effects/rocket_structure_hit.lua"
		v.Effects.Impact.device = nil
		v.Effects.Impact.antiair = path .. "/effects/rocket_structure_hit.lua"
		v.Effects.Impact.foundations = nil
		v.Effects.Impact.rocks01 = nil
		v.Effects.Impact.shield = nil

		v.ProjectileSplashMaxForce = 205000
		table.insert(v.Projectile.Root.ChildrenInFront,
		{
			Name = "Bloom",
			Angle = 0,
			Offset = { 0, 0.2 },
			Pivot = { 0, 0.2 },
			PivotOffset = { 0, 0 },
			Sprite = "sb_bloom_swarm",
			Additive = true,
			Scale = 4,
		})
		if v.SaveName == "flamingrocket" then
			v.Effects.Age.t1000000 = path .. "/effects/rocket_structure_hit.lua"
		end
	elseif sbeat(v.SaveName, "firebeam") then
		v.Effects.Impact.default = path .. "/effects/firebeam_hit.lua"
		v.ProjectileSprite = "sb_bloom_firebeam"
	elseif sbeat(v.SaveName, "laser") then
		v.ProjectileSprite = "sb_bloom_plasma"
		--[[v.BeamTable =
		{
			{ 0,	1 *  5,	0, },
			{ 0.25, 3 *  5,  0, },
			{ 0.5,	30 * 5, 1000, },
			{ 1,	30 * 5, 1000, }, -- 1000
			{ 1.5,	0 *  5,	0, },
		}
		v.BeamThickness = function(t)
			return InterpolateTable(v.BeamTable, t, 2)
		end
		v.Beam =
		{
			Sprites = 
            {
				{
                    Sprite = "sb_bloom_plasma",
                    TileRate = 100,
                    ThicknessFunction = "BeamThickness",
                    ScrollRate = -2,
					Additive = true,
                },
			},
		}]]
	elseif sbeat(v.SaveName, "missile") then
		table.insert(v.Projectile.Root.ChildrenInFront,
		{
			Name = "Bloom",
			Angle = 0,
			Offset = { 0, 0.25 },
			Pivot = { 0, 0.25 },
			PivotOffset = { 0, 0 },
			Sprite = "sb_bloom_swarm",
			Additive = true,
			Scale = 4,
		})
	elseif sbeat(v.SaveName, "missile2") then
		v.ProjectileSplashMaxForce = 400000
		table.insert(v.Projectile.Root.ChildrenInFront,
		{
			Name = "Bloom",
			Angle = 0,
			Offset = { 0, 0.1 },
			Pivot = { 0, 0.1 },
			PivotOffset = { 0, 0 },
			Sprite = "sb_bloom_swarm",
			Additive = true,
			Scale = 4,
		})	
	elseif sbeat(v.SaveName, "rocketemp") then
		v.Effects.Impact.default = path .. "/effects/impact_emp.lua"
		v.Effects.Impact.antiair = nil
		v.Effects.Impact.foundations = nil
		v.Effects.Impact.rocks01 = nil
		v.Effects.Impact.device = nil
		
		v.ProjectileSplashMaxForce = 130000
		table.insert(v.Projectile.Root.ChildrenInFront,
		{
			Name = "Bloom",
			Angle = 0,
			Offset = { 0, 0.2 },
			Pivot = { 0, 0.2 },
			PivotOffset = { 0, 0 },
			Sprite = "sb_bloom_swarm",
			Additive = true,
			Scale = 4,
		})
		if v.SaveName == "flamingrocketemp" then
			v.Effects.Age.t1000000 = path .. "/effects/rocket_structure_hit.lua"
		end
	elseif sbeat(v.SaveName, "dome") then
		v.Projectile = 
		{
			Root =
			{
				Name = "Bolt",
				Sprite = "mods/dlc2/weapons/media/energy_bolt.tga",
				Scale = 0.3,
				ChildrenInFront =
				{
					{
						Name = "Bloom",
						Sprite = "sb_bloom_dome",
						Scale = 6,
						Additive = true,
						Angle = 0,
						Offset = { 0, 0.0 },
						Pivot = { 0, 0.0 },
						PivotOffset = { 0, 0 },
					},
				},
			}
		}
		v.ProjectileSprite = nil
		v.DrawBlurredProjectile = false
		v.ProjectileThickness = 2
		v.ProjectileSpriteMipMap = false
		v.ProjectileType = "mortar"
		v.Effects.Age.t200.Effect = path .. "/effects/dome_fx.lua"
	elseif sbeat(v.SaveName, "howitzer") then
		v.ProjectileSplashMaxForce = 550000
		v.Effects.Impact.default = path .. "/effects/impact_howitzer.lua"
		v.Effects.Impact.antiair = path .. "/effects/impact_howitzer_mid-air.lua"
		v.Effects.Impact.backbracing.Effect = path .. "/effects/impact_howitzer.lua"
	elseif sbeat(v.SaveName, "bomb") then
		v.ProjectileSplashMaxForce = 150000
		v.Effects.Impact.default = path .. "/effects/impact_bombs.lua"
	elseif sbeat(v.SaveName, "paveway") then
		v.ProjectileSplashMaxForce = 450000
		v.Effects.Impact.default = path .. "/effects/impact_paveway.lua"
		v.Effects.Impact.antiair = path .. "/effects/hs_explosion_airburst.lua"
	elseif sbeat(v.SaveName, "turret") then
		v.ProjectileSplashMaxForce = 450000
		v.Effects.Impact.default = path .. "/effects/impact_turret.lua"
		v.Effects.Impact.antiair = path .. "/effects/hs_explosion_airburst.lua"
	elseif sbeat(v.SaveName, "cannon") then
		v.ProjectileSplashMaxForce = 200000
	elseif sbeat(v.SaveName, "mortar") or sbeat(v.SaveName, "mortar2") then
		v.ProjectileSplashMaxForce = 130000
	end
	--convert some trail effects
	if v.TrailEffect then
		if v.TrailEffect == "mods/weapon_pack/effects/flaming_trail.lua" then
			v.TrailEffect = path .. "/effects/flaming_trail.lua"
		elseif v.TrailEffect == "mods/weapon_pack/effects/flaming_swarm_trail.lua" then
			v.TrailEffect = path .. "/effects/flaming_swarm_trail.lua"
		end
	end
end
if FlakDetonation then
	FlakDetonation.Effect = path .. "/effects/flak_explode.lua"
end
--shockwave projectiles (exploding devices cant cause splash force)
local shock = DeepCopy(FindProjectile("mortar"))
if shock then
	shock.SaveName = "sb_shockwave_reactor"
	shock.ProjectileSplashDamageMaxRadius = 400.0
	shock.ProjectileSplashMaxForce = 3000000
	shock.Effects.Age = {t0 = {Effect = nil, Splash = true, Terminate = true}}
	table.insert(Projectiles, shock)
end
local shock = DeepCopy(FindProjectile("sb_shockwave_reactor"))
if shock then
	shock.SaveName = "sb_shockwave_huge"
	shock.ProjectileSplashDamageMaxRadius = 300.0
	shock.ProjectileSplashMaxForce = 750000
	table.insert(Projectiles, shock)
end
local shock = DeepCopy(FindProjectile("sb_shockwave_reactor"))
if shock then
	shock.SaveName = "sb_shockwave_large"
	shock.ProjectileSplashDamageMaxRadius = 250.0
	shock.ProjectileSplashMaxForce = 500000
	table.insert(Projectiles, shock)
end
local shock = DeepCopy(FindProjectile("sb_shockwave_reactor"))
if shock then
	shock.SaveName = "sb_shockwave"
	shock.ProjectileSplashDamageMaxRadius = 150.0
	shock.ProjectileSplashMaxForce = 350000
	table.insert(Projectiles, shock)
end
local shock = DeepCopy(FindProjectile("sb_shockwave_reactor"))
if shock then
	shock.SaveName = "sb_shockwave_small"
	shock.ProjectileSplashDamageMaxRadius = 100.0
	shock.ProjectileSplashMaxForce = 250000
	table.insert(Projectiles, shock)
end
--extra effects mod support
if not sbe_effects_list then sbe_effects_list = {} end
sbe_effects_list["mods/weapon_pack/effects/fire_20mmcannon.lua"] = path .. "/effects/fire_20mm.lua"
sbe_effects_list["mods/weapon_pack/effects/20mmcannon_explode.lua"] = path .. "/effects/20mm_explode.lua"
sbe_effects_list["mods/weapon_pack/effects/impact_emp.lua"] = path .. "/effects/impact_emp.lua"
sbe_effects_list["mods/weapon_pack/effects/rocket_structure_hit.lua"] = path .. "/effects/rocket_structure_hit.lua"
sbe_effects_list["mods/dlc1_weapons/effects/fire_buzzsaw.lua"] = path .. "/effects/fire_buzzsaw.lua"
sbe_effects_list["mods/weapon_pack/effects/fire_firebeam.lua"] = path .. "/effects/fire_firebeam.lua"
sbe_effects_list["mods/weapon_pack/effects/fire_flak.lua"] = path .. "/effects/fire_flak.lua"
sbe_effects_list["mods/weapon_pack/effects/fire_shotgun.lua"] = path .. "/effects/fire_shotgun.lua"
sbe_effects_list["mods/weapon_pack/effects/firebeam_explode.lua"] = path .. "/effects/firebeam_explode.lua"
sbe_effects_list["mods/weapon_pack/effects/firebeam_hit.lua"] = path .. "/effects/firebeam_hit.lua"
sbe_effects_list["mods/weapon_pack/effects/rocket_explode.lua"] = path .. "/effects/rocket_explode.lua"
sbe_effects_list["mods/weapon_pack/effects/rocketemp_explode.lua"] = path .. "/effects/rocketemp_explode.lua"
sbe_effects_list["mods/dlc1_weapons/effects/fire_smokebomb.lua"] = path .. "/effects/fire_smokebomb.lua"
sbe_effects_list["mods/dlc1_weapons/effects/fire_howitzer.lua"] = path .. "/effects/fire_howitzer.lua"
sbe_effects_list["mods/dlc1_weapons/effects/impact_howitzer.lua"] = path .. "/effects/impact_howitzer.lua"
sbe_effects_list["mods/dlc1_weapons/effects/impact_howitzer_mid-air.lua"] = path .. "/effects/impact_howitzer_mid-air.lua"
sbe_effects_list["effects/fire_minigun.lua"] = path .. "/effects/fire_minigun.lua"
sbe_effects_list["mods/dlc2/effects/dome_fx.lua"] = path .. "/effects/dome_fx.lua"
sbe_effects_list["mods/dlc2/effects/fire_deckgun.lua"] = path .. "/effects/fire_deckgun.lua"
sbe_effects_list["mods/dlc2/effects/fire_deckgun_2.lua"] = path .. "/effects/fire_deckgun_2.lua"
sbe_effects_list["mods/dlc2/effects/fire_deckgun_3.lua"] = path .. "/effects/fire_deckgun_3.lua"
sbe_effects_list["mods/dlc2/effects/impact_bombs.lua"] = path .. "/effects/impact_bombs.lua"
sbe_effects_list["mods/dlc2/effects/impact_turret.lua"] = path .. "/effects/impact_turret.lua"
sbe_effects_list["mods/dlc2/effects/impact_paveway.lua"] = path .. "/effects/impact_paveway.lua"
sbe_effects_list["mods/dlc2/effects/explosion_airburst.lua"] = path .. "/effects/hs_explosion_airburst.lua"

--apply mod
function sb_apply_fx()
	for k, v in pairs(Projectiles) do
		if v.Effects then
			if v.Effects.Impact then
				for kk, vv in pairs(v.Effects.Impact) do
					if type(vv) == "string" then
						if sbe_effects_list[vv] then
							v.Effects.Impact[kk] = sbe_effects_list[vv]
						end
					elseif type(vv) == "table" then
						if vv.Effect and sbe_effects_list[vv.Effect] then
							vv.Effect = sbe_effects_list[vv.Effect]
						end
					end
				end
			end
			if v.Effects.Age then
				for kk, vv in pairs(v.Effects.Age) do
					if type(vv) == "string" then
						if sbe_effects_list[vv] then
							v.Effects.Age[kk] = sbe_effects_list[vv]
						end
					elseif type(vv) == "table" then
						if vv.Effect and sbe_effects_list[vv.Effect] then
							vv.Effect = sbe_effects_list[vv.Effect]
						end
					end
				end
			end
		end
		if v.sbexp_overrides then
			for kk, vv in pairs(v.sbexp_overrides) do
				v[kk] = vv
			end
		end
	end
end
--sb_apply_fx()
RegisterApplyMod(sb_apply_fx)