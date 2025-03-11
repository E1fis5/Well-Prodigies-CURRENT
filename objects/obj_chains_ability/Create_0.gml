var blocker_ability_end = function()
{
	global.damage_blocker = false;
}

global.timer_blocker_end = time_source_create(time_source_game,15,time_source_units_seconds,blocker_ability_end,[],1)



depth = 399;
if (!instance_exists(obj_ability_bar))
{
	instance_create_depth(0,0,-9999,obj_ability_bar);
}

global.damage_blocker = false;