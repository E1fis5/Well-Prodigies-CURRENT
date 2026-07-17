geyser_activated = false;
geyser_limit = 0;
depth = 401;
geyser_stop = function()
{
	obj_player.grv = 0.07;
	time_source_stop(obj_player.timer_upcancel_fallbuild);
}
var walksp_restore = function()
{
	obj_player.walksp += global.storedwalksp;
	global.door_disable = false;
}
timer_walksp_restore = time_source_create(time_source_game,0.5,time_source_units_seconds,walksp_restore,[],1);
var screenshake_remove = function()
{
	layer_set_visible("Effect_Screenshake_mega",false);	
}
timer_screenshake_remove = time_source_create(time_source_game,0.4,time_source_units_seconds,screenshake_remove,[],1);