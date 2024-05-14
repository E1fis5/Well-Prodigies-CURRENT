if (global.walksp_boost_active = true)
{
	obj_speed_boost_effect.x = obj_player.x + 2;
	obj_speed_boost_effect.y = obj_player.y;
}
if (global.walksp_boost_active = false)
{
	instance_destroy();
}