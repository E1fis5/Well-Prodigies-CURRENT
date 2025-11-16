if (sprite_index = spr_health_icon_hurt) and (!global.gameover_trigger)
{
	if (!global.isActive)
	{
		sprite_index = spr_health_icon1;
	}
		global.damage = false;
}