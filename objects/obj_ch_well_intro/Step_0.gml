if (input_check_pressed("accept"))
{
	  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = 128
	  inst.target_y = 448
      inst.target_rm = r_ch
	  global.sanity = 100
	  global.scoreHider = false
	  instance_destroy();
}

if (input_check_pressed("cancel"))
{
	instance_destroy();
}