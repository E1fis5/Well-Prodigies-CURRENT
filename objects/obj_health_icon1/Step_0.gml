if (!global.damage) and (!global.isActive)
{
	sprite_index = spr_health_icon1;
}
else
if (global.damage)
{
	sprite_index = spr_health_icon_hurt;
}

if (global.isActive) and (sprite_index = spr_health_icon1)
{
	sprite_index = spr_health_icon_escape;
}