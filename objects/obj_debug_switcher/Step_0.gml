if (global.debug_active = true) and (input_check_pressed("special"))
{
	global.debug_active = false;
}

if (global.debug_active = false) and (input_check_pressed("special"))
{
	global.debug_active = true;
}