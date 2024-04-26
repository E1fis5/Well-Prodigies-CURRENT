if (global.totalkills >= 1)
{
	draw_sprite(sprite_index,image_index,-5,305);
	instance_create_depth(-999,-999,-10001,obj_kill_count);
}


if (global.totalkills = 0)
{
	instance_destroy();
}