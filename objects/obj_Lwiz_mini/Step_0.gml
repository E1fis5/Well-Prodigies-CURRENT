

obj_Lwiz_mini.x = obj_player.x + 40;

obj_Lwiz_mini.y = obj_player.y - 60;


	if (instance_exists(obj_player))
	{
		obj_player.walksp += 9;
		obj_player.dash_distance = 210;
	    obj_player.dash_time = 18;
	}