if (input_check("up")) and (global.gem_counter >= 3) and (global.magnet_pickup = false)
{
	global.magnet_pickup = true;
}


if (!instance_exists(obj_magnet_popup))
{
	instance_create_depth(-999,-999,-9999,obj_magnet_popup);
}

