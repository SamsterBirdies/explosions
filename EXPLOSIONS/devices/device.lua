--automatic device destruction splash force effect
if DeviceSplashDamageMaxRadius and DeviceSplashDamageMaxRadius > 0 and DestroyProjectile == nil then
	if DeviceSplashDamageMaxRadius >= 300 or StructureSplashDamageMaxRadius >= 150 then
		DestroyProjectile = "sb_shockwave_large"
	elseif DeviceSplashDamageMaxRadius >= 200 or StructureSplashDamageMaxRadius >= 100 then
		DestroyProjectile = "sb_shockwave"
	elseif DeviceSplashDamageMaxRadius >= 100 or StructureSplashDamageMaxRadius >= 50 then
		DestroyProjectile = "sb_shockwave_small"
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
--seasonal
sbe_effects_list["mods/theme_christmas/effects/mushroom_cloud_snowflakes.lua"] = path .. "/effects/christmas_reactor.lua"

if DestroyEffect and sbe_effects_list[DestroyEffect] then DestroyEffect = sbe_effects_list[DestroyEffect] end
--seasonal
if DestroyEffect_christmas and sbe_effects_list[DestroyEffect_christmas] then DestroyEffect_christmas = sbe_effects_list[DestroyEffect_christmas] end
if DestroyEffect_halloween and sbe_effects_list[DestroyEffect_halloween] then DestroyEffect_halloween = sbe_effects_list[DestroyEffect_halloween] end
--run function. Any device can run its own code
if sbe_run then
	sbe_run()
end