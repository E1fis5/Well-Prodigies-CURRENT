if (input_check_pressed("accept"))
{
	  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = 980
	  inst.target_y = 980
      inst.target_rm = r_CaveDwellings1
	  global.sanity = 65
	  global.scoreHider = false
	  global.escape_transition_end = false
	  audio_stop_sound(snd_wellhub)
	  global.gem_counter = 0
}

if (input_check_pressed("cancel"))
{
	instance_destroy();
}

