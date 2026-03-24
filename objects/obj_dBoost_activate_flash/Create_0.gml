x = -999;
y = -999;
depth = -9998;

if (obj_player.activate_flash_black)
{
	image_blend = c_black;
}

if (obj_player.activate_flash_green)
{
	image_blend = c_green;
}

if (instance_exists(obj_sanitymeter)) and (obj_sanitymeter.activate_flash_orange)
{
	image_blend = c_orange;
}