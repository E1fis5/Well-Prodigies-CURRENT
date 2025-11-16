if (layer_exists("Effect_Screenshake"))
{
	layer_set_visible("Effect_Screenshake",1);
	if (layer_exists("Effect_Dark_Tint"))
	{
		CD_Dark_Layers();
	}
}

if (global.sanity <= 130) and (timer_confuse_disable)
{
	random_timeconfuse_chance += (random_range(1,10));
	if (random_timeconfuse_chance <= 3)
	{
		timer_confuse_disable = false;
		time_source_start(timer_confusion);
		false_timer = random_range(30,120);
		audio_play_sound(snd_clock_glitch1,6,true);
		audio_play_sound(snd_clock_glitch_loud,5,false);
		instance_create_depth(x,y,-10000,obj_clock_effect_glitch);
	}
}