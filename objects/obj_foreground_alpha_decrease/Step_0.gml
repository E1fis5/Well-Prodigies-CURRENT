var i = (layer_exists("Foreground"))
var e = (layer_exists("Foreground2"))
if (place_meeting(x,y,obj_player))
{
	if (i)
	{
		layer_background_alpha(back_id,0.3);
	}
	if (e)
	{
		layer_background_alpha(back_id2,0.3);
	}
}
else
{
	if (i)
	{
		layer_background_alpha(back_id,1);
	}
	if (e)
	{
		layer_background_alpha(back_id2,1);
	}
}
