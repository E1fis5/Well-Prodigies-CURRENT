if (global.torch_active = true) and (place_meeting(x,y,obj_player)) and (input_check_pressed("up")) and (global.wood_sparked = false) and (global.hypothermia_amount < 300) and (global.chunk3 = true)
{
	global.hypothermia_amount = 300
	global.durabilty -= 1
	global.wood_sparked = true
	sprite_index = spr_gt_wood_chunk_burnt
	score += 150
	global.chunk3 = false;
}

depth = 401;
