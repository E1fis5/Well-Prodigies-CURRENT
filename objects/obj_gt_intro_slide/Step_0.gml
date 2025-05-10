if (input_check_pressed("accept"))
{
	  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = 96
	  inst.target_y = 512
      inst.target_rm = r_GT1
	  global.sanity = 210
	  global.scoreHider = false
	  global.escape_transition_end = false
	  audio_stop_sound(snd_wellhub)
	  global.gem_counter = 0
	  obj_game.level = 2;
	  instance_destroy();
	  instance_create_depth(-999,-999,-9999,obj_health);
	  instance_create_depth(-999,-999,-10000,obj_health_bg);
	  instance_destroy(obj_cd_intro_start_top);
	  instance_destroy(obj_cd_cartridge);
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
	instance_destroy(obj_cd_intro_start_top);
	instance_destroy(obj_cd_cartridge);
}
