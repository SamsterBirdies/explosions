function sb_EXPLOSIONS_apply_mod()
	if active then
		for k, v in pairs(Projectiles) do
			if v.TrailEffect == "mods/commander-ee-fireman/effects/mortar_trail_smoke_small.lua" then
				v.TrailEffect = sb_EXPLOSIONS_path .. "/effects/firebird_mortar_trail_smoke_small.lua"
			elseif v.TrailEffect == "mods/commander-ee-fireman/effects/mortar_trail_smoke.lua" then
				v.TrailEffect = sb_EXPLOSIONS_path .. "/effects/firebird_mortar_trail_smoke.lua"
			elseif v.TrailEffect == "mods/commander-ee-fireman/effects/mortar_trail.lua" then
				v.TrailEffect = sb_EXPLOSIONS_path .. "/effects/firebird_mortar_trail.lua"
			end
			if v.SaveName == "missile" then
				v.TrailEffect = sb_EXPLOSIONS_path .. "/effects/firebird_swarm_trail.lua"
			end
		end
	end
end
RegisterApplyMod(sb_EXPLOSIONS_apply_mod)