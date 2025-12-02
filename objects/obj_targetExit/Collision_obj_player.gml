if !instance_exists(obj_transition)
{
  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = target_x;
	  inst.target_y = target_y;
	  global.current_room = target_rm;
      inst.target_rm = target_rm;
	  inst.doll_target_check = doll_target_check;
	  instance_create_depth(0,0,-9,obj_dashBoost_pause);
	  instance_create_depth(0,0,-9,obj_dashjoost_pause);
	  if (instance_exists(obj_doll_stationary)) and (doll_target_check)
	  {
		  global.doll_move = true;
	  }
	  if (outside_check)
	  {
		  global.outside = true;
		  enclosed_check = false;
	  }
	  if (enclosed_check)
	  {
		  global.outside = false;
		  outside_check = false;
	  }
}
