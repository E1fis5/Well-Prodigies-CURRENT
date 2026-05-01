geyser_activated = false;
geyser_limit = 0;
depth = 401;
geyser_stop = function()
{
	obj_player.grv = 0.07;
	obj_player.vsp_max_wall = 12;
	time_source_stop(obj_player.timer_upcancel_fallbuild);
}