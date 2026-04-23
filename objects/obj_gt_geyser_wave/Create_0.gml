geyser_limit = 0;
geyser_deactivate = false;
geyser_touch = false;
geyser_current_speed_build = 0.25;
audio_play_sound(snd_gt_geyser_explode,3,false);
var geyser_speed_buildup = function()
{
	geyser_current_speed_build += 0.01;
}
timer_geyser_speed_build_rate = time_source_create(time_source_game,2,time_source_units_frames,geyser_speed_buildup,[],-1);
time_source_start(timer_geyser_speed_build_rate);