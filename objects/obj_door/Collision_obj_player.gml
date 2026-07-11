if input_check("up") and !instance_exists(obj_transition) and (!global.door_disable)
{
  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = target_x;
	  inst.target_y = target_y;
      inst.target_rm = target_rm;
	  instance_create_depth(x,y,-9999,obj_dashBoost_pause);
}

