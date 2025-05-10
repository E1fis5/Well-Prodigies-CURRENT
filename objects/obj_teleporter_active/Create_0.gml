target_x = 0;
target_y = 0;
target_rm = r_room_null;
var teleport_cooldown = function()
{
	instance_destroy(obj_tp_cooldown);
	time_source_stop(timer_teleport_cooldown);
}

timer_teleport_cooldown = time_source_create(time_source_game,1.5,time_source_units_seconds,teleport_cooldown,[],1);