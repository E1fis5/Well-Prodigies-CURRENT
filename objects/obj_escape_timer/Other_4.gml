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
		time_source_start(timer_fake_duration);
		timer_fake_display_active = true;
		fake_timer = random_range(global.timer - 50,global.timer + 50);
	}
}
