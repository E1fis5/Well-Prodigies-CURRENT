if !instance_exists(obj_transition)
{
  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = target_x;
	  inst.target_y = target_y;
      inst.target_rm = target_rm;
	  	  if (outside_check)
	  {
		  global.outside = true;
		  enclosed_check = false;
	  }
	  if (enclosed_check)
	  {
		  global.outside = false;
		  outside_check = false;
	  }
}
 audio_stop_sound(snd_escape)
 audio_play_sound(snd_lap,3,false)
 
if (!audio_once_played) {
    audio_play_sound(snd_lap2,9,true);
    audio_once_played = true;
}

global.abilityscore += 95;
global.timer += time_amount

instance_destroy();

score += score_add;

global.lap2_passed = true;

global.sanity += 60;

instance_create_depth(890,985,-9999,obj_lap2_alert);

instance_create_depth(500,1,-9999,obj_lap2_into);

instance_destroy(obj_escape_overlay);

if (global.escapeoverlay_trigger = true)
{
	instance_create_depth(-999,-999,-3995,obj_escape_overlay_lap2)
}

time_source_start(global.lap2_drain)


if (!instance_exists(obj_lap_boost_sign)) and (global.dash_amount = 8) 
{
	instance_create_depth(-999,-999,401,obj_lap_boost_sign);
	instance_create_depth(-999,-999,399,obj_Lwiz_mini);
}
