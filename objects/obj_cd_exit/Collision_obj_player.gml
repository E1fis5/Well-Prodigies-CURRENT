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
	global.cd_complete = true
	instance_destroy(obj_escape_timer)
	instance_destroy(obj_escape_overlay)
	instance_destroy(obj_escape_overlay_lap2)
	instance_destroy(obj_health)
	instance_destroy(obj_health_bg)
	instance_destroy(obj_score)
		audio_stop_sound(snd_clock_tick)
		instance_destroy(obj_lap2_alert)
		time_source_stop(global.timer_drain)
	global.walksp_boost_active = false;
		global.shopitem_bought = false;
		global.escape_touch = false;
		if (global.lap2_active = true)
		{
			time_source_stop(global.lap2_drain);
		}
			    global.lap2_active = false;
		instance_destroy(obj_doll);
		global.soldout_doll = false;
		global.soldout_speed = false;
		
	
	



if (score >= 0)
   {
	 global.hub_currency += 25
   }
   
   if score >= 1850
   {
	 global.hub_currency += 1
   }
   
      if score >= 4875
   {
	 global.hub_currency += 1
   }

      if score >= 8750
   {
	  global.hub_currency += 1
   }
   
         if score >= 12750
   {
	 global.hub_currency += 1
   }
   
            if score >= 17000
   {
	   global.hub_currency += 1
   }

         if (score >= 20000)
   {
	  global.hub_currency += 1
   }
   
            if (score >= 20000) and (global.rift_taken = true) and (global.gem_counter >= 5) and (global.shopitem_bought = false) and (global.gamemode_hard = true)
   {
	  global.hub_currency += 1
   }