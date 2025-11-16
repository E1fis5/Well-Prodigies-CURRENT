if (sprite_index = spr_health_bg_hurt) and (!global.gameover_trigger)
{
	if (!global.isActive)
	{
		sprite_index = spr_health_bg;
	}
		global.damage = false;
}