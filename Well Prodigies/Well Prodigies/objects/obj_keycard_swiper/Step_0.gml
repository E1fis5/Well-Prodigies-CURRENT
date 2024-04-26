if (place_meeting(x,y,obj_player)) and (global.keycard_collected = true) and (input_check_pressed("up"))
{
  global.keycard_blocker_destroy = true
}

depth = 401