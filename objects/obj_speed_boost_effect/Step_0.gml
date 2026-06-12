if (global.walksp_boost_active = true)
{
	obj_speed_boost_effect.x = obj_player.x + 2;
	obj_speed_boost_effect.y = obj_player.y;
}
if (global.walksp_boost_active = false)
{
	instance_destroy();
}

if (instance_exists(obj_voodoo_magic_shop_item)) and (voodoo_boost_max < 4)
{
	time_source_start(global.voodoo_boost_walksp);
}