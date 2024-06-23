if (global.gamemode_hard = true)
{
		  draw_sprite_ext(sprite_index,image_index,0,290,image_xscale,image_yscale,0,c_white,image_alpha);
	depth = -9998
}

if (global.hud_destroy = true)
{
	instance_destroy();
}

if (global.hud_destroy = false) and (!instance_exists(obj_health_bg))
{
	instance_create_depth(x,y,-8887,obj_health_bg);
}

