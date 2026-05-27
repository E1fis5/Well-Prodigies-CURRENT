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

if (sprite_index = spr_dashB_mindsplit_hit) or (sprite_index = spr_dBoost_mindsplit)
{
	sprite_index = spr_dBoost_mindsplit;
	hit_adjustment = false;
	player_follow = true;
}

if (sprite_index = spr_dBoost_mindSplit_swap)
{
	sprite_index = spr_dashB_active_effect;
}

if (sprite_index = spr_dBoost_mindsplit_switch)
{
	sprite_index = spr_dBoost_mindsplit;
	hit_adjustment = false;
}

if (sprite_index = spr_dBoost_super_spawn2)
{
	sprite_index = spr_dBoost_super_active;
}

if (sprite_index = spr_dBoost_ending_explosion)
{
	var i = obj_player;
	
	instance_destroy();
	instance_destroy(obj_dBoost_additive);
	i.dBoost_additives_active = false;
	i.dash_damage -= 5;
	//Early Boost
	if (i.dashB_first_hit)
	{
		i.walksp -= 0.40;
		i.dash_distance -= 15;
		time_source_stop(i.timer_aftereffect_creation_quick);
	}
	//Mindsplit Boost
	if (i.mindsplit_activated)
	{
		if (i.mindsplit_perfect_window)
		{
			i.walksp -= 1.3;
			i.dash_distance -= 25;
		}
		else
		{
			i.walksp -= 0.30;
			i.dash_distance -= 15;
		}
	}
	time_source_stop(i.timer_aftereffect_creation);
	//Normal Boost
	i.walksp -= 0.60;
	i.dash_distance -= 45;
	i.dBoost_resets = 0;
}