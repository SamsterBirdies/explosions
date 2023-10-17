--can use this to reference effects from this mod
sb_EXPLOSIONS_path = path
--device destruction effects { device_savename, effect_path, use_included_path (optional, 1) }
if not sb_EXPLOSIONS_destruct then sb_EXPLOSIONS_destruct = {} end
--projectile impact effects { projectile_savename, effect_path, use_included_path (optional, 1)}
if not sb_EXPLOSIONS_impact then sb_EXPLOSIONS_impact = {} end

--[[
Insert tables into the provided tables to add mod support.

Example code:
-------------------
--device destruction effects { device_savename, effect_path, use_included_path* }
if not sb_EXPLOSIONS_destruct then sb_EXPLOSIONS_destruct = {} end
--projectile impact effects { projectile_savename, effect_path, destroy_type**, use_included_path*}
if not sb_EXPLOSIONS_impact then sb_EXPLOSIONS_impact = {} end

table.insert(sb_EXPLOSIONS_destruct, {"railgun", "generic_large.lua", 1})
table.insert(sb_EXPLOSIONS_destruct, {"railgun", path .. "/effects/railgun_explode.lua"})
table.insert(sb_EXPLOSIONS_impact, {"railgun_projectile", "generic.lua", {0,0,1,1,1,1,1,0,1,0,0}, 1})
-------------------
* When use_included_path is 1, use the effect filenames in this mod for effect_path, such as "generic.lua", "generic_large.lua", "generic_huge.lua", etc.

** destroy_type is a length 11 table contraining 0 or 1's.
Description of each table position:
{none, unknown, hitprojectile, hitbeam, hitterrain, hitstructure, hitdevice, outofworld, expired, ageeffect, debriscleanup}
]]
