if (input_check("up")) and (global.gem_counter >= 1) and (global.doll_pickup = false)
{
	global.doll_pickup = true;
}

if (!instance_exists(obj_doll_popup))
{
	instance_create_depth(-999,-999,-9999,obj_doll_popup);
}

