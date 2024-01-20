if !instance_exists(obj_transition)
{
  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = target_x;
	  inst.target_y = target_y;
      inst.target_rm = target_rm;
}
 audio_stop_sound(snd_escape)
 audio_play_sound(snd_lap,3,false)
 
if (!audio_once_played) {
    audio_play_sound(snd_lap2,9,true);
    audio_once_played = true;
}


global.timer += 55

instance_destroy();

score += 1600

global.lap2 = true

global.sanity += 55
