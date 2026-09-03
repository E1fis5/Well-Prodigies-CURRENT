//Times
var indicator_dissolve = function()
{
	if (!dissolve_create)
	{
		image_alpha -= 0.04;
	}
	else
	{
		image_alpha += 0.25;
		if (image_alpha >= 1)
		{
			image_alpha = 1;
			dissolve_create = false;
			time_source_stop(timer_indicator_dissolve);
		}
	}
	if (image_alpha <= 0)
	{
		instance_destroy();	
	}
}
var shake_disable = function()
{
	shake = false;
}
shake = true;
timer_shake_disable = time_source_create(time_source_game,0.2,time_source_units_seconds,shake_disable,[],1);
dissolve_create = true;
time_source_start(timer_shake_disable);
timer_indicator_dissolve = time_source_create(time_source_game,2,time_source_units_frames,indicator_dissolve,[],-1);
image_speed = 0;
image_alpha = 0;
time_source_start(timer_indicator_dissolve);