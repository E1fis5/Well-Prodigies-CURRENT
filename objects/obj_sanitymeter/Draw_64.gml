


draw_sprite_ext(sprite_index,image_index,8,64,image_xscale,image_yscale,0,c_white,image_alpha);


	if (global.sanity <= 100)
{
   	image_index = 0;
}

if (global.sanity <= 90) 
{
	image_index = 1;
}

if (global.sanity <= 80) 
{
	image_index = 2;
}

if (global.sanity <= 70) 
{
	image_index = 3;
}

if (global.sanity <= 60) 
{
	image_index = 4;
}

if (global.sanity <= 50)
{
	image_index = 5;
}

if (global.sanity <= 40) 
{
	image_index = 6;
}

if (global.sanity <= 40) and (!instance_exists(obj_sanity_notif))
{
	instance_create_depth(-999,-999,-9997,obj_sanity_notif)
}


if (global.sanity <= 30) 
{
	image_index = 7;
}

if (global.sanity <= 20) 
{
	image_index = 8;
	global.sanity = 20
	time_source_pause(sanityTimerNormal)
	time_source_pause(sanityTimerHard)
	time_source_pause(sanityTimerSimple)
}


depth = -10000

