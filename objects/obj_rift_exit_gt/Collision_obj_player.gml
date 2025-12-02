if !instance_exists(obj_transition)
{
  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = target_x;
	  inst.target_y = target_y;
      inst.target_rm = target_rm;
}
instance_create_depth(-999,-999,-9999,obj_gt_song);
instance_destroy();
audio_stop_sound(snd_escape)
global.rift_taken = true

