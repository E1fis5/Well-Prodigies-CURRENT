if (place_meeting(x,y,obj_player_dash_hitbox)) and (!wood_sparked) and (obj_hypothermia_meter.heat < 100)
{
	sprite_index = spr_gt_wood_chunk_burnt;
	wood_sparked = true;
	if (instance_exists(obj_hypothermia_meter))
	{
		if (obj_hypothermia_meter.heat <= 40)
		{
			obj_hypothermia_meter.heat = 100;
		}
		else
		{
			obj_hypothermia_meter.heat += 60;	
		}
		time_source_reset(obj_hypothermia_meter.FreezeTimerHard)
		time_source_start(obj_hypothermia_meter.FreezeTimerHard);
	}
}