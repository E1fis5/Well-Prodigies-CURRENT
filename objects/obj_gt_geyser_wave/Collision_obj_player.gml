if (!geyser_touch)
{
	obj_player.grv = -1;
	geyser_touch = true;
}
else if (geyser_touch)
{
	obj_player.grv = 0.07;
	geyser_touch = false;
}