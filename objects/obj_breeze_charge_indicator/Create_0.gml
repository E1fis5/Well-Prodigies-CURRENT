//Times
var indicator_dissolve = function()
{
	image_alpha -= 0.05;
	if (image_alpha <= 0)
	{
		instance_destroy();	
	}
}
var shake_disable = function()
{
	shake = false;
}
timer_shake_disable = time_source_create(time_source_game,0.15,time_source_units_seconds,shake_disable,[],1);
time_source_start(timer_shake_disable);
shake = true;
dissolve_started = false;
timer_indicator_dissolve = time_source_create(time_source_game,2,time_source_units_frames,indicator_dissolve,[],-1);
image_speed = 0;