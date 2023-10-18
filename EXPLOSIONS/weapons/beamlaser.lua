DestroyProjectile = "sb_shockwave"

local multiplier = 5
BeamTable =
{
	{ 0,	1 * multiplier,	0, },
	{ 0.25, 3 * multiplier,  0, },
	{ 0.5,	30 * multiplier, 1000, },
	{ 1,	30 * multiplier, 1000, }, -- 1000
	{ 1.5,	0 * multiplier,	0, },
}

function BeamThickness(t)
	return InterpolateTable(BeamTable, t, 2)
end
