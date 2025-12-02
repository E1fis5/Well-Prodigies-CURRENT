if (place_meeting(x,y,obj_player))
{
	time_source_start(oxygenTimer)
}

if (!place_meeting(x,y,obj_player))
{
	time_source_stop(oxygenTimer)
}
