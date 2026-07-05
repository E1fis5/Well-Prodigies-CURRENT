draw_sprite_ext(sprite_index,image_index,-75,9,image_xscale,image_yscale,0,image_blend,image_alpha);

//Heat Values

if (heat >= 100)
{
	image_index = 0;	
}

if (heat <= 90)
{
	image_index = 1;	
}

if (heat <= 80)
{
	image_index = 2;	
}

if (heat <= 70)
{
	image_index = 3;	
}

if (heat <= 60)
{
	image_index = 4;	
}

if (heat <= 50)
{
	image_index = 5;	
}

if (heat <= 40)
{
	image_index = 6;	
}

if (heat <= 30)
{
	image_index = 7;	
}

if (heat <= 20)
{
	image_index = 8;	
}

if (heat <= 10)
{
	image_index = 9;	
}

if (heat <= 0)
{
	image_index = 9;
}






