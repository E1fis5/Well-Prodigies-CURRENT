if !instance_exists(obj_transition)
{
  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = target_x;
	  inst.target_y = target_y;
      inst.target_rm = target_rm;
	  instance_create_depth(0,0,-9,obj_dashBoost_pause);
	  instance_create_depth(0,0,-9,obj_dashjoost_pause);
}
