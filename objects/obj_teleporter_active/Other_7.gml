if (sprite_index = spr_teleporter_tp_anim1)
{
	audio_play_sound(snd_boost_buy,5,false);
	time_source_start(timer_teleport_cooldown);
	sprite_index = spr_teleporter_active;
	
	if (instance_exists(obj_player))
{
	obj_player.x = target_x;
	obj_player.y = target_y;

  var inst = self;
      inst.target_x = target_x;
	  inst.target_y = target_y;
      inst.target_rm = target_rm;
	  instance_create_depth(x,y,-9999,obj_dashBoost_pause);
	  
room_goto(target_rm);

}
}


