if (instance_exists(obj_player))
{
	obj_player_dash_hitbox.x = obj_player.x;
	obj_player_dash_hitbox.y = obj_player.y;
}

if (instance_exists(obj_jestraught_play))
{
	obj_player_dash_hitbox.x = obj_jestraught_play.x;
	obj_player_dash_hitbox.y = obj_jestraught_play.y;
}