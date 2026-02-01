var i = global.health;



if (i <= 6)
{
	image_index = 0;
}

if (i <= 5) 
{
	image_index = 1;
}

if (i <= 4) 
{
	image_index = 2;
}

if (i <= 3)
{
	image_index = 3;
}

if (i <= 2)
{
	image_index = 4;
}

if (i <= 1)
{
	image_index = 5;
}

if (i <= 0)
{
	image_index = 6;
	global.sanity = 0;
	game_restart();
}
draw_sprite_ext(sprite_index,image_index,-70,220,image_xscale,image_yscale,0,c_white,image_alpha);




  