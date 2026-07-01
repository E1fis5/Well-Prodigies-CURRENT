if (global.debug_active = true)
{
	score = 20000;
	global.rift_taken = true;
	global.gem_counter += 5;
	global.health = 6;
	global.sanity_Prank_switch = false;
	if (instance_exists(obj_ice_platform))
	{
		obj_ice_platform.trigger_zone = false;
	}
}
	
