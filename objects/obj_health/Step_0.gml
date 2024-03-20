if (global.gamemode_hard = false)
{
	instance_destroy();
}

if (global.hud_destroy = true)
{
	instance_destroy();
	global.health = -9999
}

if (global.hud_destroy = false) and (!instance_exists(obj_health))
{
	instance_create_depth(x,y,-8888,obj_health);
}

if (room == rWellhub2 or r_CaveDwellings_shop or r_rank_screen)
{
	image_alpha = 0
}












