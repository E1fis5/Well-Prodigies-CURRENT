	if (instance_exists(obj_player))
{
	obj_player.x = target_x;
	obj_player.y = target_y;
  var inst = self;
      inst.target_x = target_x;
	  inst.target_y = target_y;
      inst.target_rm = target_rm;
	  instance_create_depth(x,y,-9999,obj_dashBoost_pause);
	  	audio_play_sound(snd_boost_buy,5,false,0.3);
room_goto(target_rm);

}

