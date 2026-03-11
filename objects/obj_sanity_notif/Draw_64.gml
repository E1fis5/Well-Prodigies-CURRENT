draw_sprite(sprite_index,image_index,455,-18)
if (global.hudshake)
{
	draw_sprite(sprite_index,image_index,480 + random_range(-3,3),50 + random_range(-3,3));
}

if (instance_exists(obj_hide_hud))
{
    visible = false;
	exit;
}
else
{
	visible = true;
}
