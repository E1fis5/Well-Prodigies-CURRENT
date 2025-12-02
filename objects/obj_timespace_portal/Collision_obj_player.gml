if !instance_exists(obj_transition)
{
  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = target_x;
	  inst.target_y = target_y;
      inst.target_rm = target_rm;
}

instance_destroy();
global.rift_taken = true
audio_pause_sound(song_destroy);
if (instance_exists(obj_escape_timer))
{
	global.timer += 25;
}