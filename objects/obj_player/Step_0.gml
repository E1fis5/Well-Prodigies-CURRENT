if (live_call())
{
	return live_result;
}

//Normal State
stateNormal();

//WallJumps/climb
state_walljump();

//Fast fall
state_FastFall();

//Bomb State
state_Bomb();

//Mindsplit
mindsplit_transition_state();

//Land
land_state();



	//Ladder
	if (place_meeting(x,y,obj_ladder_wood) and (input_check("up") = true))
	{
		grv = -2
		sprite_index = spr_player1
	}
//Dash
state_dash();

//Score Buffs

if (score >= 7000) and (!score_boost1)
{
	walksp += 0.55;
	score_boost1 = true;
	dash_distance += 15;
}


if (score >= 12000) and (!score_boost2)
{
	walksp += 1.10;
	score_boost2 = true;
	dash_distance += 25;
}


if (score >= 20000) and (!score_boost3)
{
	walksp += 1.65;
	score_boost3 = true;
	dash_distance += 35;
}



	//Walksp boost
	if (global.walksp_boost_active = true) and (shop_shoe_boost = false)
	{
		walksp += global.walksp_boost_additive;
		shop_shoe_boost = true;
	}

//Lap Wizard Boost

	if (instance_exists(obj_Lwiz_mini)) and (!R2_boost)
	{
		walksp += 2.30;
		R2_boost = true;
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
		fallcancel = true;
	}
	if (fallcancel = false) and (upcancel_active = false) and (!wallclimb) and (!mindsplit_override)
	{
		sprite_index = spr_player_fall;
		if (player_left)
		{
			sprite_index = spr_player_fall_left;
		}
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

	//Double Jump
	stateDoubleJump();

	
	//Doll Buff
	if (global.isActive = true) and (instance_exists(obj_doll)) and (doll_boost = false)
	{
		walksp += 0.45;
		doll_boost = true;
	}
	//Power Crawl
	state_PCrawl();
	
	//Noclip
	if (global.debug_active = true) and (global.noclip = true)
	{
		upcancel_state_prohibit = true;
	    if (input_check("jump"))
		{
			global.noclip = false;
			global.collisions_enabled = true;
			upcancel_state_prohibit = false;
		}
		if (input_check("up"))
		{
			grv = -9;
		}
		if (input_check("down"))
		{
			grv = 1;
		}
	}
	
//Dash boost
if (instance_exists(obj_dash_boost)) and (input_check_pressed("attack")) and (!instance_exists(obj_dashB_active_effect))
{
	global.sanity += 5;
	mindsplit_perfect_window = true;
	time_source_start(timer_mindsplit_perfect_window);
	//Early Boost
	if (dashB_first_hit)//Stacks
	{
		time_source_stop(obj_dashBoost_effect.timer_dashB_firsthit_timer);
		audio_play_sound(snd_dBoost_start,6,false,1,0,1.3);
		time_source_start(timer_aftereffect_creation_quick);
		walksp += 0.45;
		dash_distance += 15;
		if (instance_exists(obj_escape_timer)) and (global.outside)
		{
			obj_escape_timer.cd_lightning();
			time_source_reset(obj_escape_timer.timer_cave_crumble);
		}
		else
		{
			instance_create_depth(-999,-999,-9998,obj_dBoost_activate_flash);	
		}
	}
	if (!dashB_first_hit)
	{
		audio_play_sound(snd_dBoost_start,6,false);
		time_source_start(timer_aftereffect_creation);
		instance_create_depth(-999,-999,-9998,obj_dBoost_activate_flash);
	}
	walksp += 0.65;
	dash_distance += 45;
	time_source_start(timer_dBoost_deactivate);
	dashBoost_fail = false;
	instance_create_depth(x,y,399,obj_dashB_active_effect);
	instance_create_depth(-999,-999,-11000,obj_healthbg_dashB);
	instance_create_depth(x,y,-999,obj_dBoost_additive);
	OH_dash_avalible = true;
	dash_damage += 5;
	if (instance_exists(obj_dashJoost_counter))
	{
		obj_dashJoost_counter.dashCounter_shake_warnin = false;
	}
	dashBoost_forgive = 0;
	if (global.health < 6)
	{
		global.health += 0.1;
	}
}
//Mindsplit Activation
if (instance_exists(obj_mindSpl_dBoost)) and (input_check_pressed("attack")) and (!instance_exists(obj_dashB_active_effect))
{
	mindsplit_activated = true;
	if (mindsplit_dash)
	{
		dash_distance -= 300; 
		mindsplit_dash = false;
	}
	if (instance_exists(obj_dashJoost_counter))
	{
		obj_dashJoost_counter.dashCounter_shake_warnin = false;
	}
	instance_create_depth(-999,-999,-9998,obj_dBoost_activate_flash);
	instance_create_depth(x,y,399,obj_dashB_active_effect);
	global.sanity -= 20;
	time_source_start(timer_aftereffect_creation);
	time_source_start(timer_dBoost_deactivate);
	OH_dash_avalible = true;
	if (mindsplit_perfect_window)
	{
		walksp += 1.95;
		time_source_stop(timer_mindsplit_perfect_window);
		mindsplit_perfect_window = true;
		audio_play_sound(snd_dBoost_start,6,false,1.1,0,0.4);
		dash_distance += 70;
	}
	else
	{
		walksp += 0.95;
		audio_play_sound(snd_dBoost_start,6,false,1.1,0,0.9);
		dash_distance += 60;
	}
	//Sanity Shake
	if (instance_exists(obj_sanitymeter))
	{
		obj_sanitymeter.sanity_drain_effects();
	}
}	
if (global.dashboost_dash) and (!instance_exists(obj_dashB_active_effect)) and (!dBoost_dash_active)
{
	dBoost_dash_active = true;
	dash_distance += 95;
	dash_time = 18;
}


//dBoost fail
if (!instance_exists(obj_dash_boost)) and (input_check_pressed("attack") or (instance_exists(obj_blood_effect))) and (time_source_exists(timer_dBoost_create)) and (dashBoost_fail)
{
	if (!instance_exists(obj_dBoost_fail_effect))
	{
		time_source_stop(timer_dBoost_create);
		instance_create_depth(x,y,399,obj_dBoost_fail_effect);
		audio_play_sound(snd_dashBoost_fail,6,false);
		dashBoost_fail = false;
		dashBoost_forgive = 0;
		time_source_start(timer_dBoostmiss_screenshake);
		layer_set_visible("Effect_Screenshake_mega",1);
		global.hudshake = true;
		
	}
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


//GT Specials
if (obj_game.gt_disable)
{
	baseState();
}