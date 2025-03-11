//Normal State
stateNormal();

//Crawl
state_crawl();






	//Bomb state
	if (place_meeting(x,y,obj_bomb_launcher))
	{
		sprite_index = spr_player_bomb
		image_xscale = 1
		image_yscale = 1
		bombActive = true
		global.dJump_active = false
		global.particle_start = false
	}




	if (place_meeting(x,y,obj_bomb_launcher)) and (bombActive = true)
	{
		grv = -1
	}




	if grv = -1 and (!place_meeting(x,y,obj_ladder_wood))
	{
		sprite_index = spr_player_bomb
		image_xscale = 1
		image_yscale = 1
	}





	if global.isActive = true and (sprite_index = spr_playernew)
	{
		sprite_index = spr_player_escapeidle
		image_xscale  = 1
	    image_yscale = 1
		if (sprite_index = spr_player_left)
		{
			sprite_index = spr_player_escape_left;
		}
	}



	if sprite_index = spr_player_bomb or grv = -1
	{
		walksp = 2.25;
		can_dash = true;
		dash_distance = 400;
		dash_time = 19;
		if (input_check("dash"))
		{
			 audio_play_sound(snd_dash_explosion,5,false);
		}
	}

	if global.isActive = true and sprite_index = spr_player_bomb
	{
		sprite_index = spr_player_bomb_escape
	}

//Fast fall
state_FastFall();


//Wall Boosts
if (global.walljumps >= 4) and (global.walljump_boost1 = false)
{
	vsp_wjump -= 0.35;
	global.walljump_boost1 = true;
	instance_create_depth(-999,-999,399,obj_wallboost_effect);
	audio_play_sound(snd_wallboost_create,5,false);
	audio_sound_pitch(snd_wallboost_create,1);
}

if (global.walljumps >= 7) and (global.walljump_boost2 = false)
{
	vsp_wjump -= 0.65;
	global.walljump_boost2 = true;
	audio_play_sound(snd_wallboost_create,5,false);
	audio_sound_pitch(snd_wallboost_create,1.35);
}



	//Ladder
	if (place_meeting(x,y,obj_ladder_wood) and (input_check("up") = true))
	{
		grv = -2
		sprite_index = spr_player1
	}

	if (place_meeting(x,y,obj_ladder_wood) and (input_check("up") = false))
	{
		grv = 0.07
	}

	//GT deep snow
	if (place_meeting(x,y,obj_deep_snow1))
	{
		walksp = 6.5;
		canJump = 0;
	}

	if (place_meeting(x,y,obj_deep_snow2))
	{
		walksp = 6.5;
		canJump = 0;
	}
	
		if (place_meeting(x,y,obj_deep_snow3))
	{
		walksp = 6.5;
		canJump = 0;
	}

	//MB fan
	if (place_meeting(x,y,obj_fan))
	{
		grv = -2;
		walksp += 0.45;
		sprite_index = spr_player1;
	}


	//Dash
	if (can_dash) and (input_check_pressed("dash"))
	{
		can_dash = false;
		dash_direction = point_direction(0,0,input_check("right")- input_check("left"), (input_check("down")))
		dash_sp = dash_distance/dash_time;
		dash_energy = dash_distance;
		stateNormal = Dashstate
		sprite_index = spr_player_dash
		dash_distance = 190
	    dash_time = 16
		grv = 0
		//Wall Boost Cancels
		if (global.dash_Mindsplit = false)
		{
			global.walljump_boost1 = false;
			global.walljump_boost2 = false;
			global.walljumps = 0;
				if (instance_exists(obj_wallboost_effect))
			{
				instance_destroy(obj_wallboost_effect);
			}
				if (vsp_wjump <= 6)
			{
				vsp_wjump = -5;
			}
		}

		//Walkspeed and Creations
		walksp = 8.55;
		global.dash_cancel_speed = false;
		global.dJump_active = false
		if (global.dashboost_dash = true) and (!instance_exists(obj_dashB_active_effect))
		{
			time_source_start(timer_dBoost_cooldown);
			global.dashboost_dash = false;
			time_source_start(timer_dBoost_create);
		}
		audio_play_sound(snd_dash_p,8,false)
		global.dash_active = true
		if (!instance_exists(obj_player_dash_hitbox))
		{
			instance_create_depth(x,y,401,obj_player_dash_hitbox);
		}

		if (!instance_exists(obj_dash_effect))
		{
			instance_create_depth(x - 40,y - 20,399,obj_dash_effect);
		}
		if (!onground)
		{
			sprite_index = spr_player_dash_air;
			if (player_left = true)
			{
				sprite_index = spr_player_dash_air_left;
			}
		}
		{
			if (player_left = true) and (onground)
			{
				sprite_index = spr_player_dash_left
				global.fallspr_deactivate = true
				global.dash_active = true
			}
	}
	} 



	Dashstate = function()
	//Movement
	{
	hsp = lengthdir_x(dash_sp,dash_direction)
	vsp = lengthdir_y(dash_sp,dash_direction)

	//Trail
	with (instance_create_depth(x,y,depth+1,obj_trail_effect))
	{
		sprite_index = other.sprite_index;
		image_blend = c_gray;
		image_alpha = 0.6;
		audio_sound_pitch(snd_dash_p,1)
		if (instance_exists(obj_dashB_active_effect))
		{
			image_blend = c_navy
			audio_sound_pitch(snd_dash_p,1.1)
		{
			if (global.dash_Mindsplit = true)
			{
				image_blend = c_black;
				audio_sound_pitch(snd_dash_p,0.7)
			}
		}
		}
	}
	{
		if (place_meeting(x + hsp, y, obj_collision_wall))
	{
		Dashstate = stateNormal
		while (abs(hsp) > 0.1)
		{
			hsp *= 0.5;
			if (!place_meeting(x + hsp, y, obj_collision_wall)) x += hsp;
		}
		hsp = 0;
		sprite_index = spr_player_fall
	}

	x += hsp;


	if (place_meeting(x, y + vsp, obj_collision_wall))
	{
		while (abs(vsp) > 0.1)
		{
			vsp *= 0.5;
			if (!place_meeting(x, y + vsp, obj_collision_wall)) y += vsp;
		}
	    vsp = 0;
	}
	y += vsp;           
	//Dash end
	   dash_energy -= dash_sp
	   if (dash_energy <= 0)
	   {
		   stateNormal = state_normal;
		   canJump = 12;
		   instance_destroy(obj_player_dash_hitbox);
		   global.dash_active = false;
		   	walksp = 8;
		   time_source_stop(timer_dBoost_create);
		   if (onground = false) and (onwall = false)
		   {
			   global.dash_amount += 1;
		   }
	   }
	}
	}
	//Dash Joost
	if (global.dash_cancel_speed = true)
	{
		global.dash_amount = 0;
			if (instance_exists(obj_dashJoost_counter))
		{
			instance_destroy(obj_dashJoost_counter);
		}
	}
	if (onground = true) and (!instance_exists(obj_dashjoost_pause))
	{
		global.dash_cancel_speed = true;
	}

//Score Buffs

if (score >= 7000)
{
	walksp += 0.55;
}


if (score >= 12000)
{
	walksp += 0.55;
}


if (score >= 20000)
{
	walksp += 1;
}


//Dash Boost
	if (global.dash_amount >= 2)
	{
		walksp += 0.25;
		if (!instance_exists(obj_dashJoost_counter))
		{
			instance_create_depth(-999,-999,-11000,obj_dashJoost_counter);
		}
	}

	if (global.dash_amount >= 3)
	{
		walksp += 0.35;
	}

	if (global.dash_amount >= 4)
	{
		walksp += 0.40;
	}
	if (global.dash_amount >= 5)
	{
		walksp += 0.45;
	}

	if (global.dash_amount >= 6)
	{
		walksp += 0.50;
	}

	if (global.dash_amount >= 7)
	{
		walksp += 0.50;
	}

	if (global.dash_amount >= 8)
	{
		walksp += 0.55;
		global.dash_amount = 8;
	}


	//Walksp boost
	if (global.walksp_boost_active = true) 
	{
		walksp += global.walksp_boost_additive;
	}

	if (sprite_index = spr_player_bomb or spr_player_bomb_escape)
	{
		global.fallspr_deactivate = true
	}

//Lap Wizard Boost

	if (instance_exists(obj_Lwiz_mini))
	{
		walksp += 0.95;
		dash_distance = 260;
	    dash_time = 18;
	} 

	//Sanity values
	
	if (global.sanity >= 220) and (bombActive = false)
	{
		walksp += 0.35
	}

	if (global.sanity <= 100) and (bombActive = false)
	{
		walksp -= 0.55
		dash_distance = 175
	    dash_time = 15
	}


	// lap 2 anims
	if (global.timer <= 30) and (sprite_index = spr_player_escapeidle)
	{
		sprite_index = spr_player_lap2;
	}

	if (global.timer <= 30) and (sprite_index = spr_player_escape_left)
	{
		sprite_index = spr_player_lap2_left;
	}

	if (!instance_exists(obj_vcr)) and (global.vcr_active = true)
	{
		instance_create_depth(x,y,-13999,obj_vcr)
	}

	//Fall anim
	if (onground = true) 
	{
		global.fallspr_deactivate = true
	}

	if (onground = false)  and (global.dJump_active = false)
	{
		global.fallspr_deactivate = false
	}
	//Sprite gravity
	if sprite_index = spr_playernew
	{
		grv = 0.07
	}

	if sprite_index = spr_player_left
	{
		grv = 0.07
	}

	if sprite_index = spr_playerwalkleft
	{
		grv = 0.065
	}

	if sprite_index = spr_playerwalk
	{
		grv = 0.065
	}

	if (sprite_index = spr_player_fall)
	{
		grv = 0.07
		walksp = 5.65
	}

	if (sprite_index = spr_player_fall_left)
	{
		grv = 0.07
		walksp = 5.65
	}

	if (sprite_index = spr_player_bomb)
	{
		grv = -1
	}

	if (sprite_index = spr_player_bomb_escape)
	{
		grv = -1
	}

	if (sprite_index = spr_player_gem_collect)
	{
		grv = 0.07
	}
 




	if (input_check("left")) or (input_check("right"))
	{
		global.fallspr_deactivate = true
	}

	if (global.fallspr_deactivate = false) and (global.dJump_active = false)
	{
		sprite_index = spr_player_fall
	}

	if (global.fallspr_deactivate = false) and (player_left = true) and (global.dJump_active = false)
	{
		sprite_index = spr_player_fall_left
	}

	if (input_check_pressed("dash")) and (can_dash) and (global.fallspr_deactivate = false)
	{
		global.fallspr_deactivate = true
	}

	if (global.grv_0 = true)
	{
		grv = 0
	}


	//Enemy projectiles
	if (place_meeting(x,y,obj_enemy_sight)) and (instance_exists(obj_zombie_projectile))
	{
		time_source_start(global.projectile_timer);
	}

	if (!place_meeting(x,y,obj_enemy_sight)) and (instance_exists(obj_zombie_projectile))
	{
		time_source_stop(global.projectile_timer);
	}

	if (place_meeting(x,y,obj_enemy_projectile))
	{
		global.health -= 1
		score -= 150
		audio_play_sound(snd_player_hurt,8,false)
	}      

	//Intro physics
	if (instance_exists(obj_cd_well_intro))
	{
		walksp = 0
		canCrawl = false
		canJump = 0
		can_dash = false
		sprite_index = spr_player_backwards
		if (player_left = true)
		{
			sprite_index = spr_player_backwards_left
		}
	}


	if (sprite_index = spr_player_bomb) or (sprite_index = spr_player_bomb_escape)
	{
		grv = -1
	} 

	if (global.bombactive = true)
	{
		global.fallspr_deactivate = true
	}

	// Djump sprite
	if (global.dJump_active = true) and (onground = false) and (!global.dJump_idle = true)
	{
		sprite_index = spr_player_gem_collect;
		if (player_left = true)
		{
			sprite_index = spr_gem_collect_left;
	
		if (global.dJump_idle = true)
		{
			sprite_index = spr_player_gem_collect_idle
			if (player_left = true)
			{
				sprite_index = spr_gem_collect_idle_left
			}
		}
		}
	}

	//Game over
	if (global.timer <= 0) and score <= 0 and (instance_exists(obj_escape_timer))
	{
	   game_restart()
	}
	
	//Doll Buff
	if (global.isActive = true) and (instance_exists(obj_doll))
	{
		walksp += 0.45;
	}
	//Power Crawl
	if (input_check("down")) and (input_check("attack")) and (input_check("right") or input_check("left")) and (sprite_index = spr_playercrawl)
	{
		walksp += 2.35;
		time_source_start(timer_power_crawl);
		global.powercrawl = true;
		if (!instance_exists(obj_blood_effect))
		{
			instance_create_depth(x,y,399,obj_blood_effect);
		}
	if (!input_check("down"))
	{
		instance_destroy(obj_blood_effect);
	}
	if (global.health <= 1)
	{
		time_source_start(timer_power_crawl_1_health);
		time_source_pause(timer_power_crawl);
	}
	else
	{
		time_source_stop(timer_power_crawl_1_health);
	}
	}
	else
		{
			time_source_pause(timer_power_crawl);
			instance_destroy(obj_blood_effect);
			time_source_pause(timer_power_crawl_1_health);
		}

	//Noclip
	if (global.debug_active = true) and (global.noclip = true)
	{
	    if (input_check("jump"))
		{
			global.noclip = false;
			global.collisions_enabled = true;
		}
		if (input_check("up"))
		{
			grv = -999;
		}
		walksp = 25;
	}


//Dash boost
if (instance_exists(obj_dash_boost)) and (input_check_pressed("attack")) and (!instance_exists(obj_dBoost_additive))
{
	time_source_start(timer_dBoost_deactivate);
	audio_play_sound(snd_dBoost_start,6,false);
	instance_create_depth(x,y,-999,obj_dBoost_additive);
	global.sanity += 5;
	if (global.dash_Mindsplit = true)
	{
		global.sanity -= 15;
		audio_sound_pitch(snd_dBoost_start,0.7)
	}
}

if (global.dashboost_dash = true) and (!instance_exists(obj_dashB_active_effect))
{
	dash_distance = 285;
	dash_time = 18;
}

if (instance_exists(obj_dBoost_additive))
{
	walksp += 0.65;
	dash_distance = 225;
	dash_time = 17;
	if (instance_exists(obj_voodoo_magic_shop_item))
	{
		walksp += 0.30;
	}
	
if (global.dash_Mindsplit = true)
{
		walksp += 0.85;
		dash_distance = 265;
		dash_time = 18;
		if (input_check_pressed("special")) and (global.mindSplit_active = true)
		{
			global.mindSplit_active = false;
			global.dash_Mindsplit = false;
			obj_dashB_active_effect.sprite_index = spr_dBoost_mindSplit_swap;
			audio_play_sound(snd_mindSplit_end,6,false);
		}
}

	global.dash_cancel_speed = false;
	time_source_stop(timer_dBoost_create);
	if (!instance_exists(obj_dashB_active_effect))
	{
		instance_create_depth(x,y,399,obj_dashB_active_effect);
	}
	
	if (instance_exists(obj_dashjoost_pause))
	{
		instance_destroy(obj_dashjoost_pause);
	}
}

if (!instance_exists(obj_dash_boost)) and (input_check("attack") or (instance_exists(obj_blood_effect))) and (time_source_exists(timer_dBoost_create))
{
	time_source_stop(timer_dBoost_create);
}

	//Hud opacity decrease
	if (place_meeting(x,y,obj_hud_opac_lower)) and (instance_exists(obj_ranks)) and (instance_exists(obj_rank_cover)) and (instance_exists(obj_score)) and (instance_exists(obj_health)) and (instance_exists(obj_health_bg)) and (instance_exists(obj_sanitymeter)) and (instance_exists(obj_sanity_bg))
	{
		obj_ranks.image_alpha = 0.3;
		obj_rank_cover.image_alpha = 0.3;
		obj_score.image_alpha = 0.3;
		obj_health.image_alpha = 0.3;
		obj_health_bg.image_alpha = 0.3;
		obj_sanitymeter.image_alpha = 0.3;
		obj_sanity_bg.image_alpha = 0.3;
		if (instance_exists(obj_escape_timer))
		{
			obj_escape_timer.image_alpha = 0.3;
		}
	}
	if (!place_meeting(x,y,obj_hud_opac_lower)) and (instance_exists(obj_ranks)) and (instance_exists(obj_rank_cover)) and (instance_exists(obj_score)) and (instance_exists(obj_health)) and (instance_exists(obj_health_bg)) and (instance_exists(obj_sanitymeter)) and (instance_exists(obj_sanity_bg))
	{
			obj_ranks.image_alpha = 1;
		obj_rank_cover.image_alpha = 1;
		obj_score.image_alpha = 1;
			obj_health.image_alpha = 1;
		obj_health_bg.image_alpha = 1;
			obj_sanitymeter.image_alpha = 1;
		obj_sanity_bg.image_alpha = 1;
		if (instance_exists(obj_escape_timer))
		{
			obj_escape_timer.image_alpha = 1;
		}
	}

	//Destroy escape blink if overlay is off
	if (global.escapeoverlay_trigger = false)
	{
		global.fakeout_pause = true;
	}

//Mind Split Special
if (input_check_pressed("special")) and (global.mindSplit_active = false) and (!instance_exists(obj_dashB_active_effect))
{
	global.sanity -= 10;
	global.mindSplit_active = true;
	time_source_start(timer_mindSplit_cooldown);
	global.dash_Mindsplit = true;
	instance_create_depth(-999,-999,-9999,obj_dashjoost_pause);
	instance_create_depth(-999,-999,-9999,obj_sanity_notif);
	audio_play_sound(snd_mindSplit_start,5,false);
}


