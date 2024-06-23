if (input_check_pressed("accept"))
{
	  var inst = instance_create_depth(0, 0, -11000, obj_transition_hub);
      inst.target_x = 96
	  inst.target_y = 992
      inst.target_rm = r_CaveDwellings1
	  global.sanity = 65
	  global.scoreHider = false
	  global.escape_transition_end = false
	  audio_stop_sound(snd_wellhub)
	  global.gem_counter = 0
	  	instance_destroy(obj_hub_start);
       if (!instance_exists(obj_score))
	   {
		   instance_create_depth(1000,1000,-9999,obj_score);
	   }
	  	  if (!instance_exists(obj_sanitymeter))
	  {
		  instance_create_depth(-999,-999,-9999,obj_sanitymeter);
		  instance_create_depth(-999,-999,-9999,obj_sanity_bg);
	  }
	  
       if (!instance_exists(obj_ranks))
	   {
		   instance_create_depth(1000,1000,-9999,obj_ranks);
	   }
	    instance_create_depth(x,y,-9999,obj_dashBoost_pause)
}

if (input_check_pressed("cancel"))
{
	instance_destroy();
	instance_destroy(obj_hub_start);
}

