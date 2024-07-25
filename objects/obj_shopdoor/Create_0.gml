target_x = 0;
target_y = 0;
target_rm = 0;

depth = 401;

if place_meeting(x,y,obj_player) and input_check("up") and !instance_exists(obj_transition)
{
  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = target_x;
	  inst.target_y = target_y;
      inst.target_rm = target_rm;
	  time_source_pause(obj_sanitymeter.sanityTimerHard)
}

