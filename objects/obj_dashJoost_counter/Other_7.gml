if (sprite_index = spr_dashJoost_counter_start)
{
	sprite_index = spr_dashJoost_counter;
	image_speed = 0;
}

if (sprite_index = spr_dashscore_end)
{
	instance_destroy();	
	if (dashscore_end = true)
	{
		dashscore_end = false;	
	}
}