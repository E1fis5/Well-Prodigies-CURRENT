if (place_meeting(x,y,obj_player))
{
	global.player_contact = true;
	if (global.hub_currency >= global.spend_amount) and (input_check("up"))
	{
		global.hub_currency -= global.spend_amount;
		global.blocker_exists = false;
		instance_destroy();
	}
}

depth = 401;