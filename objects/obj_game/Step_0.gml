//Sanity Caps
if (global.sanity >= 300)
{
	global.sanity = 300;
	if (instance_exists(obj_sanitymeter))
	{
		obj_sanitymeter.image_index = 0;
	}
}
if (global.sanity <= 30)
{
	global.sanity = 30;
	if (instance_exists(obj_sanitymeter))
	{
		obj_sanitymeter.image_index = 28;
	}
}


if (global.sanity <= 150)
{
	global.sanity_Prank_switch = true;
}

//If gmlive isnt already set hahaha
if (global.debug_active) and (instance_exists(obj_gmlive))
{
	room_set_live(room, true);
}
	
//GT Effects
if (gt_igloo_exit_triggers) and (layer_exists("Effect_GT_Dark1"))
{
	layer_set_visible("Effect_GT_Dark1",0);
	layer_set_visible("Effect_GT_Dark2",0);
	instance_destroy(obj_hide_hud);
}
//Rich Presence
if (level = 1)
{
	np_setpresence("Level:CaveDwellings", "Score:" + string(score), "cave_discord_preview", string(rank_image));
	if (global.isActive)
	{
		np_setpresence("CaveDwellings Escape", "Speed:" + string(obj_player.walksp), "cave_discord_preview", string(rank_image));
		if (global.timer = 0)
		{
			np_setpresence("OVERTIME:" + string(score), "Health:" + string(global.health), "cave_discord_preview", string(rank_image));
		}
	}
}
if (level = 2)
{
	np_setpresence("Level:GlacialTundra", "Score:" + string(score), "glacial_tundra_discord_preview", string(rank_image));
		if (global.isActive)
	{
		np_setpresence("GlacialTundra Escape", "Speed:" + string(obj_player.walksp), "glacial_tundra_discord_preview", string(rank_image));
		if (global.timer = 0)
		{
			np_setpresence("OVERTIME:" + string(score), "Health:" + string(global.health), "glacial_tundra_discord_preview", string(rank_image));
		}
}
}

if (level = 3)
{
		np_setpresence("Level:MonkeyBusiness", "Score:" + string(score), "cave_discord_preview", string(rank_image));
		if (global.isActive)
	{
		np_setpresence("MonkeyBusiness Escape", "Speed:" + string(obj_player.walksp), "cave_discord_preview", string(rank_image));
		if (global.timer = 0)
		{
			np_setpresence("OVERTIME:" + string(score), "Health:" + string(global.health), "cave_discord_preview", string(rank_image));
		}
}
}