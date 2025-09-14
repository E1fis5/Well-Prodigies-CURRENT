if (global.torch_active = true) and (place_meeting(x,y,obj_player)) and (input_check_pressed("up")) and (wood_sparked = false)
{
	obj_hypothermia_meter.heat = 300;
	global.durabilty -= 1
	wood_sparked = true
	sprite_index = spr_gt_wood_chunk_burnt
	score += 150
	global.chunk1 = false;
	obj_hypothermia_meter.image_index = 0;
}


depth = 401;
