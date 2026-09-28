if (!geyser_touch)
{
	obj_player.grv = -1;
	geyser_touch = true;
	if (input_check("up"))
	{
		time_source_start(obj_player.timer_upcancel_fallbuild);
	}
}
else if (geyser_touch)
{
	obj_player.grv = 0.07;
	geyser_touch = false;
}
obj_player.upcancel_avalible = false;
