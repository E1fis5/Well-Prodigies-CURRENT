if (!shake)
{
	x = obj_player.x;
	y = obj_player.y;
}
else
{
	x = obj_player.x + random_range(-2,2);	
	y = obj_player.y + random_range(-2,2);
}