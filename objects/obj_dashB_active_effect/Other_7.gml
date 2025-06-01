if (sprite_index = spr_dashBoost_effect_hit)
{
	sprite_index = spr_dashB_active_effect;
	if (global.dash_Mindsplit = true)
	{
		sprite_index = spr_dBoost_mindsplit;
	}
}

if (sprite_index = spr_dBoost_mindSplit_swap)
{
	sprite_index = spr_dashB_active_effect;
}

if (sprite_index = spr_dBoost_super_spawn2)
{
	sprite_index = spr_dBoost_super_active;
}