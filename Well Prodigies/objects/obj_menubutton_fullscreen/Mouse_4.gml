if window_get_fullscreen()
{
	window_set_fullscreen(false)
}
else 
{
	window_set_fullscreen(true)
}

if !instance_exists(obj_transition)
{
  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = target_x;
	  inst.target_y = target_y;
      inst.target_rm = target_rm;
}


