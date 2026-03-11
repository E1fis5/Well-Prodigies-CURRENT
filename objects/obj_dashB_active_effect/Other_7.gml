if (sprite_index = spr_dashBoost_effect_hit)
{
	sprite_index = spr_dashB_active_effect;
	player_follow = true;
}

if (sprite_index = spr_dashB_perfect_hit)
{
	sprite_index = spr_dashB_active_perfect;
	hit_adjustment = false;
	player_follow = true;
}

if (sprite_index = spr_dashB_mindsplit_hit)
{
	sprite_index = spr_dBoost_mindsplit;
	hit_adjustment = false;
	player_follow = true;
}

if (sprite_index = spr_dBoost_mindSplit_swap)
{
	sprite_index = spr_dashB_active_effect;
}

if (sprite_index = spr_dBoost_super_spawn2)
{
	sprite_index = spr_dBoost_super_active;
}

if (sprite_index = spr_dBoost_ending_explosion)
{
	instance_destroy();
}