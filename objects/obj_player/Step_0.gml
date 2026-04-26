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

//LANd
land_state();

//Wall Boosts
if (global.walljumps >= 3) and (global.walljump_boost1 = false)
{
	if (!instance_exists(obj_wallboost_effect))
	{
		instance_create_depth(-999,-999,399,obj_wallboost_effect);
	}
	global.walljump_boost1 = true;
}


	//Ladder
	if (place_meeting(x,y,obj_ladder_wood) and (input_check("up") = true))
	{
		grv = -2
		sprite_index = spr_player1
	}

	//Dash
	if (can_dash) and (input_check_pressed("dash"))
	{
		upcancel_disable();
		can_dash = false;
		if (!OH_dash_avalible)
		{
			dash_direction = point_direction(0,0,input_check("right")- input_check("left"), (input_check("down")));
			if (onground)
			{
				dash_direction = point_direction(0,0,input_check("right")- input_check("left"),0);
			}
		}
		else
		{
			if (!onground)
			{
				dash_direction = point_direction(0,0,input_check("right")- input_check("left"), (input_check("down")) - (input_check("up")));
				if (input_check("up"))
				{
					instance_create_depth(x,y - 60,399,obj_overhead_dash_effect_1);
					OH_dash_avalible = false;
					audio_play_sound(snd_dashBoost_create,6,false,1.3,0,2);
				}
			}
			else
			{
				dash_direction = point_direction(0,0,input_check("right")- input_check("left"),0);
			}
		}
		dash_sp = dash_distance/dash_time;
		dash_energy = dash_distance;
		stateNormal = Dashstate
		//Mindsplit
		if (!mindsplit_override)
		{
			sprite_index = spr_player_dash
		}
		//Wall destroy
		if (instance_exists(obj_wallboost_effect))
		{
			instance_destroy(obj_wallboost_effect);
		}
		land_sprite_break = false;
		fallcancel = true;
		grv = 0
		damage_deal = true;
		walljump = false;
		//Dash Effect
		instance_create_depth(x - 40,y - 20,399,obj_dash_effect);
		//Walkspeed and Creations
		global.dash_cancel_speed = false;
		dJump_sprite_start = false;
		if (global.dashboost_dash = true) and (!instance_exists(obj_dashB_active_effect)) or (dashBoost_forgive = 1)
		{
			if (!dashBoost_forgive = 1)
			{
				dash_distance -= 95
			}
			global.dashboost_dash = false;
			dashBoost_fail = true;
			time_source_start(timer_dBoost_cooldown);
			global.dashboost_dash = false;
			dBoost_dash_active = false;
			time_source_start(timer_dBoost_create);
		}
		global.dash_active = true
		if (!instance_exists(obj_player_dash_hitbox))
		{
			instance_create_depth(x,y,401,obj_player_dash_hitbox);
		}
		if (!onground) and (!mindsplit_override)
		{
			sprite_index = spr_player_dash_air;
			if (player_left = true)
			{
				sprite_index = spr_player_dash_air_left;
			}
		}
		{
			if (player_left = true) and (onground) and (!mindsplit_override)
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
	
	
	
	
	   //Dash End
	   dash_energy -= dash_sp
	   if (dash_energy <= 0)
	   {
		   stateNormal = state_normal;
		   canJump = 18;
		   jump_activated = true;
		   jump_allowed = true;
		   damage_deal = false;
		   fallcancel = false;
		   //Bomb Dash
		   if (Bomb_Dash_Active)
		   {
			   Bomb_Dash_Active = false;
			   dash_distance -= 400;
			   dash_time += 3;
		   }
		   instance_destroy(obj_player_dash_hitbox);
		   global.dash_active = false;
		   time_source_stop(timer_dBoost_create);
		   grv = 0.07;
		   if (up_dash_cancel)
		   {
			   dash_distance = captured_distance;
			   up_dash_cancel = false;
		   }
		   //Mud Dash
		   if (mudsolid_dash)
		   {
				dash_distance -= 350;
				dash_time += 5;
				mudsolid_dash = false;
		   }
		   
		   if (onground = false) 
		   {
			   global.dash_amount += 1;
		   }
		   //Dash Joost
		   	if (global.dash_amount >= 2)
	{
		if (!instance_exists(obj_dashJoost_counter)) and (!dashJoost_hit_disable)
		{
			instance_create_depth(-999,-999,-11000,obj_dashJoost_counter);
			if (!dashJoost_speed_cancel) and (!onground)
			{
				walksp += 0.25;
			}
		}
	}

	if (global.dash_amount = 3)
	{
		if (!dashJoost_hit_disable)
		{
			instance_create_depth(-999,-999,-11000,obj_dashJoost_counter_hit);
			if (!dashJoost_speed_cancel) and (!onground)
			{
				walksp += 0.35;
			}
		}
	}


	if (global.dash_amount = 4)
	{
		if (!dashJoost_hit_disable)
		{
			instance_create_depth(-999,-999,-11000,obj_dashJoost_counter_hit);
			if (!dashJoost_speed_cancel) and (!onground)
			{
				walksp += 0.45;
			}
		}
	}
	if (global.dash_amount = 5)
	{
		if (!dashJoost_hit_disable)
		{
			instance_create_depth(-999,-999,-11000,obj_dashJoost_counter_hit);
			if (!dashJoost_speed_cancel) and (!onground)
			{
				walksp += 0.50;
			}
				if (obj_dashJoost_counter.image_speed = 0)
					{
						obj_dashJoost_counter.image_speed = 1;
					}
		}
	}

	if (global.dash_amount = 6)
	{
		if (!dashJoost_hit_disable)
		{
			if (!instance_exists(obj_dashJoost_counter_hit)) and dashJoost_hit_disable = false
			{
				instance_create_depth(-999,-999,-11000,obj_dashJoost_counter_hit);
				if (!dashJoost_speed_cancel) and (!onground)
				{
					walksp += 0.50;
				}
			}
		}
	}

	if (global.dash_amount = 7)
	{
		if (!dashJoost_hit_disable)
		{
			instance_create_depth(-999,-999,-11000,obj_dashJoost_counter_hit);
		if (!dashJoost_speed_cancel) and (!onground)
		{
			walksp += 0.55;
		}
		}
	}

	if (global.dash_amount >= 8)
	{
		global.dash_amount = 8;
		dashJoost_hit_disable = true;
		if (!dashJoost_speed_cancel) 
		{
			walksp += 0.55;
		}
		dashJoost_speed_cancel = true;
		if (!instance_exists(obj_dashJoost_maxxed_effect))
		{
			instance_create_depth(-999,-999,-9998,obj_dashJoost_maxxed_effect);
		}
	}

	   }
	}
	}
	//Dash Joost
	if (global.dash_cancel_speed = true)
	{
		global.dash_amount = 0;
		dashJoost_speed_cancel = false;
			if (instance_exists(obj_dashJoost_counter))
		{
			instance_destroy(obj_dashJoost_counter);
			dashJoost_hit_disable = false;
		}
		if (instance_exists(obj_dashJoost_maxxed_effect))
		{
			instance_destroy(obj_dashJoost_maxxed_effect);
		}
		if (instance_exists(obj_lap_boost_sign))
		{
			obj_lap_boost_sign.sprite_index = spr_lapping_boost_destroy;
			if (instance_exists(obj_Lwiz_mini))
			{
				instance_destroy(obj_Lwiz_mini);
			}
		}
	}
	if (onground = true) and (!instance_exists(obj_dashjoost_pause)) and (!instance_exists(obj_dashB_active_effect))
	{
		global.dash_cancel_speed = true;
		if (global.dash_amount = 2)
		{
			walksp -= 0.25;
		}
		
			if (global.dash_amount = 3)
			{
				walksp -= 0.6;
			}
			
				if (global.dash_amount = 4)
				{
					walksp -= 1.05;
				}
					if (global.dash_amount = 5)
					{
						walksp -= 1.55;
					}
					
						if (global.dash_amount = 6)
						{
							walksp -= 2.05;
						}
						
							if (global.dash_amount = 7)
							{
								walksp -= 2.60;
							}
							
								if (global.dash_amount = 8)
								{
									walksp -= 3.15;
								}
	}

//Score Buffs

if (score >= 7000) and (!score_boost1)
{
	walksp += 0.55;
	score_boost1 = true;
}


if (score >= 12000) and (!score_boost2)
{
	walksp += 1.10;
	score_boost2 = true;
}


if (score >= 20000) and (!score_boost3)
{
	walksp += 1.65;
	score_boost3 = true;
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

	//Sanity values
	
	if (global.sanity >= 250) and (!sanity_boost1)
	{
		walksp += 0.35;
		sanity_boost1 = true;
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
	    if (input_check("jump"))
		{
			global.noclip = false;
			global.collisions_enabled = true;
		}
		if (input_check("up"))
		{
			grv = -9;
		}
	}
	
//Dash boost
if (instance_exists(obj_dash_boost)) and (input_check_pressed("attack")) and (!instance_exists(obj_dBoost_additive))
{
	//Mindsplit Boost
	if (mindsplit_activated)
	{
		global.sanity -= 20;
		global.health -= 1;
		global.damage = true;
		walksp += 0.35;
		audio_play_sound(snd_dBoost_start,6,false,1.1,0,0.9);
		//Sanity Shake
		if (instance_exists(obj_sanitymeter))
		{
			obj_sanitymeter.sanity_drain_effects();
		}
	}
	else
	{
		global.sanity += 5;
	}
	//Early Boost
	if (dashB_first_hit)//Stacks
	{
		time_source_stop(obj_dashBoost_effect.timer_dashB_firsthit_timer);
		audio_play_sound(snd_dBoost_start,6,false,1,0,1.3);
		time_source_start(timer_aftereffect_creation_quick);
		walksp += 0.65;
		dash_distance += 25;
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
	if (!instance_exists(obj_dashB_active_effect))
	{
		instance_create_depth(x,y,399,obj_dashB_active_effect);
	}
	instance_create_depth(-999,-999,-11000,obj_healthbg_dashB);
	instance_create_depth(x,y,-999,obj_dBoost_additive);
	OH_dash_avalible = true;
	dash_damage += 5;
	if (instance_exists(obj_dashJoost_counter))
	{
		obj_dashJoost_counter.dashCounter_shake_warnin = false;
	}
	dashBoost_forgive = 0;
	if (global.health < 6) and (!mindsplit_activated)
	{
		global.health += 0.1;
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

//Mind Split Special

//GT Specials
if (obj_game.gt_disable)
{
	baseState();
}

//Dash Scaling
if (walksp >= 16) and (!Dash_Scale1) and (!Dash_Scale_Disable)
{	
	dash_distance += 15;
	Dash_Scale1 = true;
}

if (walksp >= 15) and (!Dash_Scale2)  and (!Dash_Scale_Disable)
{
	dash_distance += 25;
	Dash_Scale2 = true;
}


if (walksp >= 20) and (!Dash_Scale3) and (!Dash_Scale_Disable)
{
	dash_distance += 35;
	Dash_Scale3 = true;
}

if (!jump_activated) and (onwall != 0) and (walljump_prohibit)
{
	walljump_prohibit = false;	
}