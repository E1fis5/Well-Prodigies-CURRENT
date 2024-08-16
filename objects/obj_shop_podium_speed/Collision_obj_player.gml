if (input_check("up")) and (global.gem_counter >= 2)
{
	global.speed_pickup = true;
}

if (!instance_exists(obj_shoes_popup))
{
	instance_create_depth(-999,-999,-9999,obj_shoes_popup);
}

