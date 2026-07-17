if (obj_player.land_sprite_break) and (!geyser_activated)
{
	audio_play_sound(snd_gt_geyser_land,5,false,1.6);
	geyser_activated = true;
	obj_player.grv = -1;
	time_source_stop(obj_player.timer_upcancel_boost);
	var inst = 	instance_create_depth(x + 65,y + 95,450,obj_gt_geyser_wave);
	inst.geyser_limit = geyser_limit;
	obj_player.x = x;
	if (obj_player.vsp_max_wall < 16)
	{
		obj_player.vsp_max_wall = 16;
	}
	global.door_disable = true;
	obj_player.no_player_movement();
	time_source_start(timer_walksp_restore);
	instance_create_depth(x - 200,y - 50,depth - 1,obj_geyser_hit_flash);
	if (layer_exists("Effect_Screenshake_mega"))
	{
		layer_set_visible("Effect_Screenshake_mega",true);
		time_source_start(timer_screenshake_remove);
	}
}