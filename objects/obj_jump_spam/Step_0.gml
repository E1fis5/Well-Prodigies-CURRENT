if (input_check_pressed("jump"))
{
	obj_game.jump_free += 1;
	instance_create_depth(x,y,399,obj_upcancel_effect);
	audio_play_sound(snd_footstep1,6,false);
}

if (obj_game.jump_free >= 8)
{
	instance_destroy();
	time_source_stop(timer_haunted_penalty);
	obj_player.image_blend = c_white;
	audio_play_sound(snd_rank_up,8,false);
	obj_player.graves_encountered += 1;
	global.timer += 3;
	obj_player.restricted = false;
	obj_player.haunt_cooldown = true;
	time_source_start(obj_player.timer_haunt_cooldown);
	//Set nerf to false so stack
	time_source_start(obj_escape_timer.timer_escape_drain);
}