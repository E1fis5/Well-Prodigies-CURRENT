if (!instance_exists(obj_scorehider_switch))
{
	global.scoreHider = false;
}

if (!instance_exists(obj_dash_breakable))
{
	instance_destroy(obj_dash_breakable_touch)
}

depth = -10000