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
	audio_stop_sound(snd_clock_tick)
	global.isActive = false
	instance_destroy(obj_lap2_alert);
	instance_destroy(obj_health);
	instance_destroy(obj_health_bg);
	instance_destroy(obj_sanitymeter)
	instance_destroy(obj_sanity_bg)
	global.tutorial_blocker = false;