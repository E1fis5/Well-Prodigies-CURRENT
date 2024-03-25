if (place_meeting(x,y,obj_player)) and (global.keycard_collected = true) and (input_check_pressed("up"))
{
     instance_destroy(obj_keycard_blocker)	
}

depth = 401