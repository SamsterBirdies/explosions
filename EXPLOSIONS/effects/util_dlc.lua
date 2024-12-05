function fix_dupe(sprite_name, dlc_path)
	--this is incredibly frustrating
	--effect files silently logs effect errors that cause issues, but annoyingly spams the ingame log with effect errors that never cause issues.
	if Sprites then
		for k, v in pairs(Sprites) do
			if v.Name and v.Name == sprite_name then
				v.Name = "sbEXP_" .. sprite_name
				for kk, vv in pairs(v.States.Normal.Frames) do
					if type(vv) == "table" and vv.texture then
						vv.texture = string.gsub(vv.texture, path, dlc_path)
					end
				end
				break
			end
		end
	end
	if Effects then
		for k, v in pairs(Effects) do
			if v.Sprite and v.Sprite == sprite_name then
				v.Sprite = "sbEXP_" .. sprite_name
				break
			end
		end
	end
end
function fix_paths(pre_path)
	if Sprites then
		for k, v in pairs(Sprites) do
			if v.Sprite then
				v.Sprite = pre_path .. string.sub(v.Sprite, string.find(v.Sprite, "/effects/media/"))
			end
			if v.Texture then
				v.Texture = pre_path .. string.sub(v.Texture, string.find(v.Texture, "/effects/media/"))
			end
			if v.TrailEffect then
				v.TrailEffect = pre_path .. string.sub(v.TrailEffect, string.find(v.TrailEffect, "/effects/media/"))
			end
		end
	end
	if Effects then
		for k, v in pairs(Effects) do
			if v.Sprite then
				local i, j = string.find(v.Sprite, "/effects/")
				if i then
					v.Sprite = pre_path .. string.sub(v.Sprite, i)
				end
			end
			if v.Texture then
				local i, j = string.find(v.Texture, "/effects/")
				if i then
					v.Texture= pre_path .. string.sub(v.Texture, i)
				end
			end
			if v.TrailEffect then
				local i, j = string.find(v.TrailEffect, "/effects/")
				if i then
					v.TrailEffect = pre_path .. string.sub(v.TrailEffect, i)
				end
			end
		end
	end
end