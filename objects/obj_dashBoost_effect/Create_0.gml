if (instance_exists(obj_voodoo_magic_shop_item))
{
	image_speed = 0.7;
}
global.dboost_chance_active = false;

if(random(1) < 0.006)
{
	sprite_index = spr_dBoost_super_spawn1;
	global.dboost_chance_active = true;
}

if (obj_player.dashBoost_forgive = 1)
{
	image_speed = 1.9;
}
obj_player.dashB_first_hit = true;
var dashB_early_hit = function()
{
	obj_player.dashB_first_hit = false;
	image_blend = c_white;
}

timer_dashB_firsthit_timer = time_source_create(time_source_game,3,time_source_units_frames,dashB_early_hit,[],1);
time_source_start(timer_dashB_firsthit_timer);