if !instance_exists(obj_transition)
{
  var inst = instance_create_depth(0, 0, -9999, obj_transition);
      inst.target_x = target_x;
	  inst.target_y = target_y;
      inst.target_rm = target_rm;
}

	score = 0
	global.sanity = 210;
	global.timer = 0
	audio_stop_sound(snd_escape)
	audio_stop_sound(snd_lap2)
	global.isActive = false
	if (instance_exists(obj_escape_timer))
	{
		time_source_stop(obj_escape_timer.timer_cave_crumble);
		instance_destroy(obj_escape_timer);
	}
	instance_destroy(obj_escape_overlay)
	instance_destroy(obj_escape_overlay_lap2)
	obj_game.level = 0;
	global.rift_taken = false;
	if (global.gems_collected >= 5)
		{
			global.ach_emeralds = true;
		}
	
		audio_stop_sound(snd_clock_tick)
		instance_destroy(obj_lap2_alert)
		time_source_stop(global.timer_drain)
		time_source_stop(obj_sanitymeter.sanityTimerEscape);
		global.walksp_boost_active = false;
		global.shopitem_bought = false;
		global.escape_touch = false;
		global.gem_counter = 0;
		if (global.lap2_passed = true)
		{
			time_source_stop(global.lap2_drain);
			global.lap2_passed = false;
		}

		instance_destroy(obj_doll);
		instance_destroy(obj_score);
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
		global.challenge_mode = false;
		global.health_lock = false;
		global.fakeout_pause = false;