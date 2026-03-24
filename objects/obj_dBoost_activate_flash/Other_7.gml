
if (obj_player.activate_flash_black)
{
	obj_player.activate_flash_black = false;
}

if (obj_player.activate_flash_green)
{
	obj_player.activate_flash_green = false;
}

if (instance_exists(obj_sanitymeter)) and (obj_sanitymeter.activate_flash_orange)
{
	obj_sanitymeter.activate_flash_orange = false;
}

instance_destroy();