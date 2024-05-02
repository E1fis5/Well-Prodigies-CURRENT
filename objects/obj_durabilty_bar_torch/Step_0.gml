if (global.durabilty = 20)
{
	image_index = 0;
}


if (global.durabilty = 18)
{
	image_index = 1;
}

if (global.durabilty = 16)
{
	image_index = 2;
}

if (global.durabilty = 14)
{
	image_index = 3;
}

if (global.durabilty = 12)
{
	image_index = 4;
}

if (global.durabilty = 10)
{
	image_index = 5;
}

if (global.durabilty = 8)
{
	image_index = 6;
}

if (global.durabilty = 6)
{
	image_index = 7;
}

if (global.durabilty = 4)
{
	image_index = 8;
}

if (global.durabilty = 2)
{
	image_index = 9;
}


if (global.durabilty = 0)
{
	global.torch_active = false;
	instance_destroy(obj_torch_hud);
	instance_destroy();
}
