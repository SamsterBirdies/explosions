function sbe_moonshine_fix()
	if active then
		for k, v in pairs(Projectiles) do
			if v.Effects and v.Effects.Impact then
				for kk, vv in pairs(v.Effects.Impact) do
					if type(vv) == "string" then
						if vv == "mods/weapon_pack/effects/impact_emp.lua" then
							v.Effects.Impact[kk] = sb_EXPLOSIONS_path .. "/effects/impact_emp.lua"
						elseif vv == "mods/weapon_pack/effects/impact_emp_medium.lua" then
							v.Effects.Impact[kk] = sb_EXPLOSIONS_path .. "/effects/impact_emp_medium.lua"
						elseif vv == "mods/commander-cf-moonshine/effects/impact_emp_small.lua" then
							v.Effects.Impact[kk] = sb_EXPLOSIONS_path .. "/effects/impact_emp_small.lua"
						end
					elseif type(vv) == "table" then
						if vv.Effect then
							if vv.Effect and vv.Effect == "mods/weapon_pack/effects/impact_emp.lua" then
								vv.Effect = sb_EXPLOSIONS_path .. "/effects/impact_emp.lua"
							elseif vv.Effect and vv.Effect =="mods/weapon_pack/effects/impact_emp_medium.lua" then
								vv.Effect = sb_EXPLOSIONS_path .. "/effects/impact_emp_medium.lua"
							elseif vv.Effect and vv.Effect == "mods/commander-cf-moonshine/effects/impact_emp_small.lua" then
								vv.Effect = sb_EXPLOSIONS_path .. "/effects/impact_emp_small.lua"
							end
						end
					end
				end
			end
		end
	end
end
RegisterApplyMod(sbe_moonshine_fix)