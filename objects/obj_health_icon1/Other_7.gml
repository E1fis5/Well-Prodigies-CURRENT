if (global.damage) and (sprite_index = spr_health_icon_hurt)
{
	sprite_index = spr_health_icon1;
	if (global.isActive)
	{
		sprite_index = spr_health_icon_escape;
	}
	global.damage = false;
}