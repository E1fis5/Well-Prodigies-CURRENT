if (instance_exists(obj_player))
{
	x = obj_player.x;
	y = obj_player.y;
	if (obj_player.OH_dash_used)
	{
		y = obj_player.y - 180;
	}
	if (obj_player.Bomb_Dash_Active) and (obj_player.player_left) and (!obj_player.OH_dash_used)
	{
		x = obj_player.x - 60;	
	}
	if (obj_player.Bomb_Dash_Active) and (!obj_player.player_left) and (!obj_player.OH_dash_used)
	{
		x = obj_player.x + 60;	
	}
}

if (instance_exists(obj_jestraught_play))
{
	x = obj_jestraught_play.x;
	y = obj_jestraught_play.y;
}