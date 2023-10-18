sb_EXPLOSIONS_path = path

--[[
if DeviceSplashDamageMaxRadius and DeviceSplashDamageMaxRadius > 0 and DestroyProjectile == nil then
	if DeviceSplashDamageMaxRadius >= 400 or StructureSplashDamageMaxRadius >= 220 then
		DestroyProjectile = "sb_shockwave_huge"
	elseif DeviceSplashDamageMaxRadius >= 300 or StructureSplashDamageMaxRadius >= 150 then
		DestroyProjectile = "sb_shockwave_large"
	elseif DeviceSplashDamageMaxRadius >= 200 or StructureSplashDamageMaxRadius >= 100 then
		DestroyProjectile = "sb_shockwave"
	elseif DeviceSplashDamageMaxRadius >= 100 or StructureSplashDamageMaxRadius >= 50 then
		DestroyProjectile = "sb_shockwave_small"
	end
end]]
if DestroyProjectile then
	if DestroyProjectile == "sb_shockwave_huge" or DestroyProjectile == "sb_shockwave_large" or DestroyProjectile == "sb_shockwave_small" or DestroyProjectile == "sb_shockwave_reactor" then
		DestroyProjectile = nil
	end
end
--automatically apply some effects
--create tables
if not sbe_effects_list then sbe_effects_list = {} end
sbe_effects_list["mods/weapon_pack/effects/fire_20mmcannon.lua"] = path .. "/effects/fire_20mm.lua"
sbe_effects_list["mods/weapon_pack/effects/20mmcannon_explode.lua"] = path .. "/effects/20mm_explode.lua"
sbe_effects_list["mods/dlc1_weapons/effects/fire_buzzsaw.lua"] = path .. "/effects/fire_buzzsaw.lua"
sbe_effects_list["mods/weapon_pack/effects/fire_firebeam.lua"] = path .. "/effects/fire_firebeam.lua"
sbe_effects_list["mods/weapon_pack/effects/fire_flak.lua"] = path .. "/effects/fire_flak.lua"
sbe_effects_list["mods/weapon_pack/effects/fire_shotgun.lua"] = path .. "/effects/fire_shotgun.lua"
sbe_effects_list["mods/weapon_pack/effects/firebeam_explode.lua"] = path .. "/effects/firebeam_explode.lua"
sbe_effects_list["mods/weapon_pack/effects/rocket_explode.lua"] = path .. "/effects/rocket_explode.lua"
sbe_effects_list["mods/weapon_pack/effects/rocketemp_explode.lua"] = path .. "/effects/rocketemp_explode.lua"
sbe_effects_list["mods/dlc1_weapons/effects/fire_smokebomb.lua"] = path .. "/effects/fire_smokebomb.lua"
sbe_effects_list["mods/dlc1_weapons/effects/fire_howitzer.lua"] = path .. "/effects/fire_howitzer.lua"
sbe_effects_list["effects/fire_minigun.lua"] = path .. "/effects/fire_minigun.lua"
sbe_effects_list["mods/dlc2/effects/dome_fx.lua"] = path .. "/effects/dome_fx.lua"
sbe_effects_list["mods/dlc2/effects/fire_deckgun.lua"] = path .. "/effects/fire_deckgun.lua"
sbe_effects_list["mods/dlc2/effects/fire_deckgun_2.lua"] = path .. "/effects/fire_deckgun_2.lua"
sbe_effects_list["mods/dlc2/effects/fire_deckgun_3.lua"] = path .. "/effects/fire_deckgun_3.lua"

--change effects
if FireEffect and sbe_effects_list[FireEffect] then FireEffect = sbe_effects_list[FireEffect] end
if DestroyEffect and sbe_effects_list[DestroyEffect] then DestroyEffect = sbe_effects_list[DestroyEffect] end
--run function. Any device can run its own code
if sbe_run then
	sbe_run()
end