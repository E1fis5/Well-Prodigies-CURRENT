if (input_check("up")) and (global.gem_counter >= 1)
{
	global.presents_pickup = true;
}

if (!instance_exists(obj_presents_popup))
{
	instance_create_depth(-999,-999,-9999,obj_presents_popup);
}

