function sbe_DU_fix()
	---change trail and impact effect
	if active then
		local fxsmall = sb_EXPLOSIONS_path .. "/effects/buster_uranium_fly_small.lua"
		local fxlarge = sb_EXPLOSIONS_path .. "/effects/buster_uranium_fly.lua"
		local fxlong = sb_EXPLOSIONS_path .. "/effects/buster_uranium_fly_long.lua"
		local fxmissile = sb_EXPLOSIONS_path .. "/effects/buster_uranium_fly_missile.lua"
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
			if du_trails[v.SaveName] then
				v.TrailEffect = du_trails[v.SaveName][1]
				if v.Effects and v.Effects.Impact then
					for kk, vv in pairs(v.Effects.Impact) do
						if type(vv) == "string" then
							local s, e = string.find(vv, "buster")
							local s2, e2 = string.find(vv, "uranium")
							if s or s2 then
								v.Effects.Impact[kk] = du_trails[v.SaveName][2]
							end
						elseif type(vv) == "table" then
							if vv.Effect then
								local s, e = string.find(vv.Effect, "buster")
								local s2, e2 = string.find(vv.Effect, "uranium")
								local s3 = false
								if s or s2 then s3 = true end
								if vv.Effect and s3 then
									vv.Effect = du_trails[v.SaveName][2]
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
		local du_projectile_list = 
		{
			uraniummortar2 = true,
			uraniummissile2 = true,
			uraniumcannon = true,
			uraniumdamagedmissile2 = true,
			uraniumrocket = true,
			uraniumcannon20mm = true,
			uraniumhowitzer = true,
			uraniumbomb = true,
			uraniumpaveway = true,
			uraniumturret = true,
		}
		if du_projectile_list[v.SaveName] then
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