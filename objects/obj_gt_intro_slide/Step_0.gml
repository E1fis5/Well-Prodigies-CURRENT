if (input_check_pressed("accept"))
{
	  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = 96
	  inst.target_y = 512
      inst.target_rm = r_GT1
	  global.sanity = 65
	  instance_create_depth(x,y,-9999,obj_dashBoost_pause);
	  global.scoreHider = false
	  global.escape_transition_end = false
	  audio_stop_sound(snd_wellhub)
	  global.gem_counter = 0
	  instance_create_depth(-999,-999,-9998,obj_hypothermia_meter);
	  if (!instance_exists(obj_sanitymeter))
	  {
		  instance_create_depth(-999,-999,-9999,obj_sanitymeter);
		  instance_create_depth(-999,-999,-9999,obj_sanity_bg);
	  }
}

if (input_check_pressed("cancel"))
{
	instance_destroy();
}

