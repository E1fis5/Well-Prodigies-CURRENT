if (global.canpause)
{
	if (!global.paused)
	{
		global.pause_coordsx = obj_player.x;
		global.pause_coordsy = obj_player.y;
		global.paused = true;
		room_goto(r_pause);
		obj_player.no_player_movement();
		if (obj_player.can_dash)
		{
			obj_player.can_dash = false;
			pause_dash_return = true;
		}
		else if (obj_player.dash_cooldown_active)
		{
			time_source_pause(obj_player.timer_dash_cooldown);
		}
		if (obj_player.canJump > 0)
		{
			obj_player.canJump = 0;
		}
		obj_player.x = 512;
		obj_player.y = 864;
		obj_player.dBoost_deactive = true;
		if (instance_exists(obj_sanitymeter))
		{
			time_source_pause(obj_sanitymeter.sanityTimerHard);
		}
		time_source_pause(obj_player.timer_dBoost_cooldown);
		time_source_pause(obj_player.timer_dBoost_create);
		time_source_pause(obj_player.timer_dBoost_deactivate);
	}
	else
	//Unpausing
	{
		obj_player.x = global.pause_coordsx;
		obj_player.y = global.pause_coordsy;
		room_goto(global.current_room);
		global.paused = false;
		obj_player.walksp += global.storedwalksp;
		if (pause_dash_return)
		{
			obj_player.can_dash = true;	
			pause_dash_return = false;
		}
		if (obj_player.dash_cooldown_active)
		{
			time_source_resume(obj_player.timer_dash_cooldown);
		}
		obj_player.dBoost_deactive = false;
		if (instance_exists(obj_sanitymeter))
		{
			time_source_resume(obj_sanitymeter.sanityTimerHard);
		}
		time_source_resume(obj_player.timer_dBoost_cooldown);
		time_source_resume(obj_player.timer_dBoost_create);
		time_source_resume(obj_player.timer_dBoost_deactivate);
	}
}

