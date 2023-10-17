dofile("scripts/forts.lua")
--effect paths
ed1 = path .. "/effects/generic.lua"
ed2 = path .. "/effects/generic_large.lua"
ed3 = path .. "/effects/generic_huge.lua"
--device destruct effects
data.effect_destruct =
{
	--small
	upgrade = ed1, dome = ed1, harpoon = ed1, mortar = ed1, mortar2 = ed1,
	--medium
	comms = ed2, workshop = ed2, armoury = ed2, munitions = ed2,
	orbital_laser = ed2, orbital_laser2 = ed2, ammo_thunderbolt = ed2, ammo_nighthawk = ed2, 
	ammo_control = ed2, subswarm = ed2, sublauncher = ed2, missile = ed2, missile2 = ed2,
	--large
	turret = ed3, turret2 = ed3, turret2_focus = ed3, turret3 = ed3, turret3_focus = ed3,
	howitzer = ed3, runway = ed3, runway2 = ed3, shipping_container = ed3,
	--custom
	ammo_decoy = "effects/battery_explode.lua", 
	ammo_orbital_sweep = path .. "/effects/firebeam_explode.lua", 
	ammo_orbital_focus = "effects/battery_explode.lua",
	factory = "effects/battery_explode.lua",
}
data.effect_impact =
{
	--destroytype flags: {none,unknown,hitprojectile,hitbeam,hitterrain,hitstructure,hitdevice,outofworld,expired,ageeffect,debriscleanup}
	nighthawk = {path .. "/effects/plane_overlay.lua", {false,false,true,true,false,false,false,false,false,false,false}},
	thunderbolt = {path .. "/effects/plane_overlay.lua", {false,false,true,true,false,false,false,false,false,false,false}},
	--turret = {"mods/dlc2/effects/bombs_hit", {false,false,true,true,true,true,true,false,true,false,false}},
	--dome = {"mods/dlc2/effects/dome_projectile_hit", {false,false,false,false,false,false,false,false,false,true,false}},
	--bomb = {"mods/dlc2/effects/bombs_hit", {false,false,true,true,true,true,true,false,true,false,false}},
	--paveway = {"mods/dlc2/effects/nighthawk_projectile_hit", {false,false,true,true,true,true,true,false,true,false,false}},
}
--[[ poop fix no longer needed
data.effect_fire =
{
	turret = "mods/dlc2/effects/deck_gun_fire",
	turret2 = "mods/dlc2/effects/deck_gun_fire_2",
	turret2_focus = "mods/dlc2/effects/deck_gun_fire_2",
	turret3 = "mods/dlc2/effects/deck_gun_fire_3",
	turret3_focus = "mods/dlc2/effects/deck_gun_fire_3",
}
data.weapons_firing = {}
--effect events
function weapons_firing_remove(saveName, weaponId)
	if data.effect_fire[saveName] then
		for k, v in pairs(data.weapons_firing) do
			if v == weaponId then
				table.remove(data.weapons_firing, k)
				break
			end
		end
	end
end
function OnWeaponFired(teamId, saveName, weaponId, projectileNodeId, projectileNodeIdFrom)
	if data.effect_fire[saveName] and projectileNodeIdFrom == 0 then
		local play_sound = true
		for k, v in pairs(data.weapons_firing) do
			if v == weaponId then
				play_sound = false
				break
			end
		end
		if play_sound then
			SpawnEffect(data.effect_fire[saveName], GetDeviceCentrePosition(weaponId))
			table.insert(data.weapons_firing, weaponId)
		end
		ScheduleCall(GetWeaponReloadPeriod(teamId, saveName) / 3, weapons_firing_remove, saveName, weaponId)
	end
end
]]
function OnDeviceDestroyed(teamId, deviceId, saveName, nodeA, nodeB, t)
	if data.effect_destruct[saveName] then
		SpawnEffect(data.effect_destruct[saveName], GetDevicePosition(deviceId))
	end
end
function OnProjectileDestroyed(nodeId, teamId, saveName, structureIdHit, destroyType)
	local saveName = string.gsub(saveName, "flaming", "")
	saveName = string.gsub(saveName, "damaged", "")
	saveName = string.gsub(saveName, "armoured", "")
	saveName = string.gsub(saveName, "vacuum", "")
	saveName = string.gsub(saveName, "drunk", "")
	if data.effect_impact[saveName] then
		if data.effect_impact[saveName][2][destroyType + 1] then
			SpawnEffect(data.effect_impact[saveName][1], NodePosition(nodeId))
		end
	end
end
--mod support
function Load()
	--device destruct dbconstants load
	for i = 1, 2^10 do
		local saveName = GetConstantString("sb_EXPLOSIONS_destruct." .. tostring(i) .. ".1")
		local effectPath = GetConstantString("sb_EXPLOSIONS_destruct." .. tostring(i) .. ".2")
		local selfPath = GetConstant("sb_EXPLOSIONS_destruct." .. tostring(i) .. ".3")
		if saveName == "" then
			break 
		else
			if selfPath == 1 then
				effectPath = path .. "/effects/" .. effectPath
			end
			data.effect_destruct[saveName] = effectPath
		end
	end
	--projectile impact dbconstants load
	for i = 1, 2^10 do
		local saveName = GetConstantString("sb_EXPLOSIONS_impact." .. tostring(i) .. ".1")
		local effectPath = GetConstantString("sb_EXPLOSIONS_impact." .. tostring(i) .. ".2")
		local selfPath = GetConstant("sb_EXPLOSIONS_impact." .. tostring(i) .. ".4")
		if saveName == "" then
			break 
		else
			--selfpath
			if selfPath == 1 then
				effectPath = path .. "/effects/" .. effectPath
			end
			--destroy type flags
			local flags = {false,false,false,false,false,false,false,false,false,false,false}
			for ii = 1, 10 do
				if GetConstant("sb_EXPLOSIONS_destruct." .. tostring(i) .. ".3." .. tostring(ii)) == 1 then
					flags[ii] = true
				end
			end
			--insert
			data.effect_impact[saveName] = {effectPath, flags}
		end
	end
end