if (layer_exists("Effect_Screenshake"))
{
	layer_set_visible("Effect_Screenshake",1);
	if (layer_exists("Effect_Dark_Tint"))
	{
		CD_Dark_Layers();
	}
}
//Fake Timer Trigger
if (global.sanity <= 160) and (!timer_fake_display_active) and (global.timer > 0)
{
	timer_fake_display_chance = random_range(1,20);
	if (timer_fake_display_chance <= 3)
	{
		audio_play_sound(snd_fake_clock_begin,6,false);
		audio_play_sound(snd_fake_clock,4,true);
		time_source_start(timer_fake_duration);
		timer_fake_display_active = true;
		if (global.timer >= 60)
		{
			fake_timer = random_range(global.timer - 25,global.timer + 25);
		}
		else
		{
			fake_timer = global.timer + (random(25))
		}
	}
}
