var i = global.health;

if (live_call())
{
	return live_result;
}

if (i <= 6)
{
	image_index = 0;
	health_effect_creation_x = 315;
	health_effect_creation_y = 300;
}

if (i <= 5) 
{
	image_index = 1;
	health_effect_creation_x = 315;
	health_effect_creation_y = 300;
}

if (i <= 4) 
{
	image_index = 2;
	health_effect_creation_x = 245;
	health_effect_creation_y = 300;
	//80
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

if (global.hudshake)
{
	draw_sprite(sprite_index,image_index,-70 + random_range(-9,9),220 + random_range(-9,9));
}
else
{
	draw_sprite_ext(sprite_index,image_index,-70,220,image_xscale,image_yscale,0,c_white,image_alpha);
}
