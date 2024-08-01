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
	global.isActive = false
	instance_destroy(obj_escape_timer)
	instance_destroy(obj_escape_overlay)
	instance_destroy(obj_escape_overlay_lap2)
	global.rift_taken = false;
    global.lap2_passed = false;
	
		audio_stop_sound(snd_clock_tick)
		instance_destroy(obj_lap2_alert)
		time_source_stop(global.timer_drain)
	global.walksp_boost_active = false;
		global.shopitem_bought = false;
		global.escape_touch = false;
		global.gem_counter = 0;
		if (global.lap2_passed = true)
		{
			time_source_stop(global.lap2_drain);
		}
			    global.lap2_active = false;
		instance_destroy(obj_doll);
		instance_destroy(obj_ability_bar);
		global.soldout_doll = false;
		global.doll_pickup = false;
		global.soldout_speed = false;
		global.speed_pickup = false;
		global.gems_collected = 0;
		global.sanity_Prank_switch = false;
		global.magnet_collect_pull = false;
		global.magnet_collect_strong_pull = false;
		global.magnet_soldout = false;
		global.magnet_pickup = false;
		instance_destroy(obj_shop_magnet);
		instance_destroy(obj_voodoo_magic_shop_item);
		global.voodoo_pickup = false;
		global.voodoo_soldout = false;
	    instance_destroy(obj_hypothermia_meter);
		instance_destroy(obj_torch);
		instance_destroy(obj_torch_hud);
time_source_stop(global.timesource_freeze);
time_source_stop(global.timesource_freeze2);
time_source_stop(global.timesource_freeze_no_torch);
time_source_stop(global.timesource_freeze_penalty);