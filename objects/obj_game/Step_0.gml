//Sanity Caps
if (global.sanity >= 300)
{
	global.sanity = 300;
	if (instance_exists(obj_sanitymeter))
	{
		obj_sanitymeter.image_index = 0;
	}
}

if (global.sanity <= 30)
{
	global.sanity = 30;
	if (instance_exists(obj_sanitymeter))
	{
		obj_sanitymeter.image_index = 28;
	}
}


if (global.sanity <= 150)
{
	global.sanity_Prank_switch = true;
}
