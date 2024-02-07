if (global.gamemode_hard = false)
{
	instance_destroy();
}

if (global.hud_destroy = true)
{
	instance_destroy();
}

if (global.hud_destroy = false) and (!instance_exists(obj_health))
{
	instance_create_depth(x,y,-8888,obj_health);
}













