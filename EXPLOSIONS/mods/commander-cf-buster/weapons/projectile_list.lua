local fxsmall = sb_EXPLOSIONS_path .. "/effects/buster_uranium_fly_small.lua"
local fxlarge = sb_EXPLOSIONS_path .. "/effects/buster_uranium_fly.lua"
local fxlong = sb_EXPLOSIONS_path .. "/effects/buster_uranium_fly_long.lua"
local fxmissile = sb_EXPLOSIONS_path .. "/effects/buster_uranium_fly_missile.lua"
--projectiles to add trail
if not sbe_du_trails then
	sbe_du_trails = {}
end
sbe_du_trails.mortar2 = {fxsmall, "effects/impact_medium.lua"}
sbe_du_trails.missile2 = {fxmissile, "effects/missile_structure_hit.lua"}
sbe_du_trails.damagedmissile2 = {fxmissile, "effects/missile_structure_hit.lua"}
sbe_du_trails.cannon = {fxlarge, "effects/impact_heavy.lua"}
sbe_du_trails.rocket = {fxmissile, sb_EXPLOSIONS_path .. "/effects/rocket_structure_hit.lua"}
sbe_du_trails.cannon20mm = {fxlarge, "effects/impact_medium.lua"}
sbe_du_trails.howitzer = {fxlong, sb_EXPLOSIONS_path .. "/effects/impact_howitzer.lua"}
sbe_du_trails.bomb = {fxsmall, sb_EXPLOSIONS_path .. "/effects/impact_bombs.lua"}
sbe_du_trails.paveway = {fxlong, sb_EXPLOSIONS_path .. "/effects/impact_paveway.lua"}
sbe_du_trails.turret = {fxlong, sb_EXPLOSIONS_path .. "/effects/impact_turret.lua"}
sbe_du_trails.sniper = {"effects/sniper_trail.lua", sb_EXPLOSIONS_path .. "/effects/impact_emp_small.lua"}
--projectiles to add impact effect
if not sbe_du_projectile_list then
	sbe_du_projectile_list = {}
end
sbe_du_projectile_list.uraniummortar2 = true
sbe_du_projectile_list.uraniummissile2 = true
sbe_du_projectile_list.uraniumcannon = true
sbe_du_projectile_list.uraniumdamagedmissile2 = true
sbe_du_projectile_list.uraniumrocket = true
sbe_du_projectile_list.uraniumcannon20mm = true
sbe_du_projectile_list.uraniumhowitzer = true
sbe_du_projectile_list.uraniumbomb = true
sbe_du_projectile_list.uraniumpaveway = true
sbe_du_projectile_list.uraniumturret = true

function sbe_DU_fix()
	---change trail and impact effect
	if active then
		local du_trails = 
		{
			mortar2 = {fxsmall, "effects/impact_medium.lua"},
			missile2 = {fxmissile, "effects/missile_structure_hit.lua"},
			damagedmissile2 = {fxmissile, "effects/missile_structure_hit.lua"},
			cannon = {fxlarge, "effects/impact_heavy.lua"},
			rocket = {fxmissile, sb_EXPLOSIONS_path .. "/effects/rocket_structure_hit.lua"},
			cannon20mm = {fxlarge, "effects/impact_medium.lua"},
			howitzer = {fxlong, sb_EXPLOSIONS_path .. "/effects/impact_howitzer.lua"},
			bomb = {fxsmall, sb_EXPLOSIONS_path .. "/effects/impact_bombs.lua"},
			paveway = {fxlong, sb_EXPLOSIONS_path .. "/effects/impact_paveway.lua"},
			turret = {fxlong, sb_EXPLOSIONS_path .. "/effects/impact_turret.lua"},
			sniper = {"effects/sniper_trail.lua", sb_EXPLOSIONS_path .. "/effects/impact_emp_small.lua"},
		}
		for k, v in pairs(Projectiles) do
			if sbe_du_trails[v.SaveName] then
				v.TrailEffect = sbe_du_trails[v.SaveName][1]
				if v.Effects and v.Effects.Impact then
					for kk, vv in pairs(v.Effects.Impact) do
						if type(vv) == "string" then
							local s, e = string.find(vv, "buster")
							local s2, e2 = string.find(vv, "uranium")
							if s or s2 then
								v.Effects.Impact[kk] = sbe_du_trails[v.SaveName][2]
							end
						elseif type(vv) == "table" then
							if vv.Effect then
								local s, e = string.find(vv.Effect, "buster")
								local s2, e2 = string.find(vv.Effect, "uranium")
								local s3 = false
								if s or s2 then s3 = true end
								if vv.Effect and s3 then
									vv.Effect = sbe_du_trails[v.SaveName][2]
								end
							end
						end
					end
				end
			end
		end
	end
	--move buster DU impact effect to its uranium projectiles as an age effect.
	for k, v in pairs(Projectiles) do
		if sbe_du_projectile_list[v.SaveName] then
			v.Effects.Age = 
			{
				t0 = { Effect = sb_EXPLOSIONS_path .. "/effects/buster_impact.lua", Terminate = false},
				t1000000 = { Effect = nil, Terminate = true},
			}
		end
	end
end
--sbe_DU_fix()
RegisterApplyMod(sbe_DU_fix)