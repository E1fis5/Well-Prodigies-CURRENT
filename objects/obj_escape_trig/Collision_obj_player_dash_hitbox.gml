if (!global.isActive)
{
    global.timer = 170;
	if (global.challenge_mode = true)
	{
		global.timer -= 70;
	}
	layer_set_visible("Escape_Impact",1);
	layer_set_visible("Impact_Color",1);
	time_source_start(timer_escape_impact_disable);
	obj_player.image_blend = c_black;
	obj_player.depth = -500;
	image_blend = c_black;
	depth = -501
	obj_collision_wall.image_blend = c_black;
	obj_collision_wall.depth = -499;
	obj_collision_wall.image_alpha = 1;
	instance_create_depth(-999,-999,-9999,obj_hide_hud);
	if (!instance_exists(obj_escape_timer))
	{
		instance_create_depth(-999,-999,-9999,obj_escape_timer)
		obj_escape_timer.image_blend = c_black;
	}
	  audio_play_sound(snd_escape,9,true);
}
if (!audio_played)
{
    audio_played = true; 
	audio_stop_sound(snd_cavedwellings2);
	audio_stop_sound(snd_cavedwellings);
	audio_play_sound(snd_rock_break,4,false)
	time_source_stop(obj_sanitymeter.sanityTimerHard);
	time_source_start(obj_sanitymeter.sanityTimerEscape);
}


if (!global.escape_transition_end) and (!instance_exists(obj_escape_transition))
{
	instance_create_depth(0,0,-11000,obj_escape_transition)
}
