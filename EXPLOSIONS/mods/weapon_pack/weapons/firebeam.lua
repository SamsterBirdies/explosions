FireEffect = path .. "/effects/fire_firebeam.lua"
DestroyEffect = path .. "/effects/firebeam_explode.lua"
function GenerateBeamTableEXP(duration, interval, scale)
	BeamTableEXP = {}
	local count = math.floor(duration/interval)
	for i = 1,count do
		local odd = (i - 1)%2
		local w = scale*(10 + odd*20)
		local t = (i - 1)*interval
		BeamTableEXP[i] = { t, w, }
	end

	BeamTableEXP[1][2] = 0
	BeamTableEXP[2][2] = scale*45
	BeamTableEXP[3][2] = scale*52
	BeamTableEXP[4][2] = scale*55
	BeamTableEXP[5][2] = scale*52
	BeamTableEXP[6][2] = scale*45
	BeamTableEXP[7][2] = scale*40
	BeamTableEXP[8][2] = scale*35
end

GenerateBeamTableEXP(BeamDuration, 0.05, 5)

function BeamThickness(t)
	return InterpolateTable(BeamTableEXP, t, 2)
end