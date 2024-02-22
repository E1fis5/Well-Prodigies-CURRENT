if (global.gamemode_hard = true)
{
	draw_sprite(spr_health_bg,0,1536,850)
	depth = -9998
}

if (global.hud_destroy = true)
{
	instance_destroy();
}

if (global.hud_destroy = false) and (!instance_exists(obj_health_bg))
{
	instance_create_depth(x,y,-8888,obj_health_bg);
}
