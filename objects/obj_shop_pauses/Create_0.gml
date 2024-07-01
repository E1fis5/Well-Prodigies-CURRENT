	  if (time_source_exists(global.timesource_freeze))
	  {
		  time_source_stop(global.timesource_freeze);
          if (time_source_exists(global.timesource_freeze2))
		  {
			  time_source_stop(global.timesource_freeze2);
			  if (time_source_exists(global.timesource_freeze_no_torch))
			  {
				  time_source_stop(global.timesource_freeze_no_torch);
			  }
		  }
			  
	  }
	  time_source_pause(obj_sanitymeter.sanityTimerHard);