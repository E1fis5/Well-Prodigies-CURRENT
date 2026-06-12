depth = 100;
global.dollbuff = true;
if (instance_exists(obj_escape_timer))
{
	time_source_stop(obj_escape_timer.timer_escape_drain);
	time_source_start(obj_escape_timer.timer_doll_voodoo_buff);
	image_blend = c_purple;
}