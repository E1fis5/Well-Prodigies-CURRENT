if (place_meeting(x,y,obj_player))
{
	layer_background_alpha(back_id,0.3);
	layer_background_alpha(back_id2,0.3);
}
else
{
	layer_background_alpha(back_id,1);
	layer_background_alpha(back_id2,1);
}