if (input_check_pressed("accept"))
{
	  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = 96
	  inst.target_y = 512
      inst.target_rm = r_GT1
	  global.sanity = 100
	  global.scoreHider = false
	  global.escape_transition_end = false
	  audio_stop_sound(snd_wellhub)
	  global.gem_counter = 0
}

if (input_check_pressed("cancel"))
{
	instance_destroy();
}

