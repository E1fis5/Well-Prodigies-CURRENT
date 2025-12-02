if input_check("up") and !instance_exists(obj_transition)
{
  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = target_x;
	  inst.target_y = target_y;
      inst.target_rm = target_rm;
	  instance_create_depth(x,y,-9999,obj_dashBoost_pause);
	  instance_create_depth(x,y,100,obj_gt_song);
	  obj_game.gt_igloo_exit_triggers = true;
	  obj_game.gt_disable = false;
	  audio_play_sound(snd_gt_wind,5,true,0.55);
}

