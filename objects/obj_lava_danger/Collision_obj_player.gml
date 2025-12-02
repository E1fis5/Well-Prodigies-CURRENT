if !instance_exists(obj_transition) and (global.damage_blocker = false)
{
  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = target_x;
	  inst.target_y = target_y;
      inst.target_rm = target_rm;
	  obj_player.walksp -= 2;
	  time_source_start(obj_player.timer_lava_penalty);
	  instance_create_depth(x,y,-9999,obj_dashBoost_pause);
}

