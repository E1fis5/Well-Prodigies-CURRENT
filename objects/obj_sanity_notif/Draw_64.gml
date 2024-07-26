draw_sprite(sprite_index,image_index,455,-18)

if (global.sanity > 40)
{
	instance_destroy();
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
