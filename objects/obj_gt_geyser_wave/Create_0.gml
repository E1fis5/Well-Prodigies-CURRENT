geyser_limit = 0;
geyser_deactivate = false;
geyser_touch = false;
image_speed = -1;
geyser_destroy_finish = false;
geyser_current_speed_build = 0.3;
audio_play_sound(snd_gt_geyser_explode,3,false);
afterimage = instance_create_depth(x,y,depth + 1,obj_geyser_afterimage);
with (afterimage)
{
	image_alpha = 0.45;
	image_speed = -1;
	image_xscale = 2;
}
var geyser_speed_buildup = function()
{
	if (!geyser_destroy_finish)
	{
		geyser_current_speed_build += 0.01;
	}
	else
	{
		geyser_current_speed_build += 0.055;
	}
}
timer_geyser_speed_build_rate = time_source_create(time_source_game,2,time_source_units_frames,geyser_speed_buildup,[],-1);
time_source_start(timer_geyser_speed_build_rate);