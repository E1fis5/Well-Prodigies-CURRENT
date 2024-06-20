if (global.health <= 6) and (global.gamemode_hard = true)
{
	image_index = 0;
}

if (global.health <= 5) and (global.gamemode_hard = true)
{
	image_index = 1;
}

if (global.health <= 4) and (global.gamemode_hard = true)
{
	image_index = 2;
}

if (global.health <= 3) and (global.gamemode_hard = true)
{
	image_index = 3;
}

if (global.health <= 2) and (global.gamemode_hard = true)
{
	image_index = 4;
}

if (global.health <= 1) and (global.gamemode_hard = true)
{
	image_index = 5;
}

if (global.health <= 0) and (global.gamemode_hard = true)
{
	image_index = 6;
	global.sanity = 0;
	game_restart();
}



depth = -10000


  draw_sprite_ext(sprite_index,image_index,8,314,image_xscale,image_yscale,0,c_white,image_alpha);