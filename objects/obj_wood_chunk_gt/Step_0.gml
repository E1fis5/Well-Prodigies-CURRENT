if (place_meeting(x,y,obj_player_dash_hitbox)) and (!wood_sparked)
{
	obj_hypothermia_meter.heat = 100;
	sprite_index = spr_gt_wood_chunk_burnt;
	wood_sparked = true;
}