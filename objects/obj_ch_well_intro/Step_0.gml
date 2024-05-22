if (input_check_pressed("accept"))
{
	  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = 128
	  inst.target_y = 448
      inst.target_rm = r_ch
	  global.sanity = 0
	  global.scoreHider = false
	  instance_destroy();
	  audio_stop_sound(snd_wellhub)
	  global.gem_counter = 0
	  	  if (!instance_exists(obj_score))
	  {
	  	  instance_create_depth(-999,-999,-9999,obj_score);
	  }
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