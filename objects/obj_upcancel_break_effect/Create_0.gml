image_alpha = 0.2;
image_yscale = 1.3;
if (obj_player.vsp_max_wall >= 32)
{
	x = obj_player.x + 25;
	image_xscale = 1.5;
	image_yscale = 2;
}
break_fade = false;
depth = -900;
var break_fade_trigger = function()
{
	if (!obj_player.ground_break_permanent)
	{
		break_fade = true;
		audio_play_sound(snd_wallboost_create,3,false);
	}
	else
	{
		obj_player.ground_break_permanent = false;
	}
}

timer_break_fade = time_source_create(time_source_game,2,time_source_units_seconds,break_fade_trigger,[],1);
time_source_start(timer_break_fade);
