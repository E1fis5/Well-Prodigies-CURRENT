if !instance_exists(obj_transition)
{
  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = target_x;
	  inst.target_y = target_y;
      inst.target_rm = target_rm;
}


	audio_stop_sound(snd_escape)
	audio_stop_sound(snd_lap2)
	audio_stop_sound(snd_clock_tick)
	global.isActive = false
	global.tutorial_blocker = false;
	instance_destroy(obj_escape_timer)
	instance_destroy(obj_escape_overlay)
	instance_destroy(obj_escape_overlay_lap2)
	audio_stop_sound(snd_tutorial_song)
	instance_destroy(obj_health)
	instance_destroy(obj_health_bg)
	instance_destroy(obj_score)
		instance_destroy(obj_lap2_alert)
		time_source_stop(global.timer_drain)

