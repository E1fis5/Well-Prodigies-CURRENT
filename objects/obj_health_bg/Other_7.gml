if (sprite_index = spr_health_bg_hurt)
{
	if (!global.isActive)
	{
		sprite_index = spr_health_bg;
	}
		global.damage = false;
}