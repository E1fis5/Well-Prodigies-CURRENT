if !instance_exists(obj_transition) and (input_check_pressed("cancel"))
{
  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = target_x;
	  inst.target_y = target_y;
      inst.target_rm = target_rm;
	  time_source_resume(obj_sanitymeter.sanityTimerHard);
	  	  if (time_source_exists(global.timesource_freeze))
	  {
		  time_source_resume(global.timesource_freeze);
          if (time_source_exists(global.timesource_freeze2))
		  {
			  time_source_resume(global.timesource_freeze2);
			  if (time_source_exists(global.timesource_freeze_no_torch))
			  {
				  time_source_resume(global.timesource_freeze_no_torch);
			  }
		  }
			  
	  }
} 





