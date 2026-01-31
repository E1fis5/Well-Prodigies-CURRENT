if (instance_exists(obj_hide_hud))
{
    visible = false
}
else
{
	visible = true
}

if (global.damage)
{
	sprite_index = spr_health_player1_icon_damage
}

if (!global.damage) and (global.isActive)
{
	sprite_index = spr_health_player1_icon_escape;
}

if (!global.damage) and (!global.isActive) and (obj_game.level = 2)
{
	sprite_index = spr_health_player1_icon_gt;
}