if !instance_exists(obj_transition)
{
  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = target_x;
	  inst.target_y = target_y;
      inst.target_rm = target_rm;
}

	score = 0
	global.timer = 0
	audio_stop_sound(snd_escape)
	audio_stop_sound(snd_lap2)
	global.isActive = false
	global.cd_complete = true
	instance_destroy(obj_escape_timer)
	instance_destroy(obj_escape_overlay)
	instance_destroy(obj_escape_overlay_lap2)
	instance_destroy(obj_health)
	instance_destroy(obj_health_bg)
	instance_destroy(obj_score)
		audio_stop_sound(snd_clock_tick)
		instance_destroy(obj_lap2_alert)
		    time_source_stop(global.lap2_drain);
		time_source_stop(global.timer_drain)
	
	
	global.ach_Sec_cd = true;
	
if (global.ach_emeralds = false) and (global.gem_counter = 5)
{
	global.ach_emeralds = true;
}