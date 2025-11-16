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
		bomb_active = true
		global.dJump_active = false
		global.particle_start = false
	}


	if (place_meeting(x,y,obj_bomb_launcher))
	{
		grv = -1
	}


	if grv = -1
	{
		sprite_index = spr_player_bomb
	}


//WallJumps/climb
state_walljump();

//Escape idle
	if global.isActive = true and (sprite_index = spr_playernew)
	{
		sprite_index = spr_player_escapeidle
		image_xscale  = 1
	    image_yscale = 1
		if (global.sanity <= 80)
		{
			sprite_index = spr_player_insane_escape_idle;
		}
	}



	if (bomb_active = true)
	{
		if (bomb_speed = false)
		{
			walksp -= 8;
			bomb_speed = true;
			if (!Bomb_Dash_Active)
			{
				dash_distance += 200;
				Bomb_Dash_Active = true;
			}
		}
		can_dash = true;
		dash_time = 19;
		if (input_check("dash"))
		{
			 layer_set_visible("Effect_Screenshake_mega",1);
			 instance_create_depth(x,y,399,obj_bomb_explosion);
			 audio_play_sound(snd_dash_explosion,5,false);
			 bomb_active = false;
			 bomb_speed = false;
			 walksp += 8;
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


	

	//MB fan
	if (place_meeting(x,y,obj_fan))
	{
		grv = -2;
		sprite_index = spr_player1;
	}


	//Dash
	if (can_dash) and (input_check_pressed("dash")) and (!immobile)
	{
		can_dash = false;
		if (!OH_dash_avalible)
		{
			dash_direction = point_direction(0,0,input_check("right")- input_check("left"), (input_check("down")));
		}
		if (OH_dash_avalible and (!onground))
		{
			dash_direction = point_direction(0,0,input_check("right")- input_check("left"), (input_check("down")) - (input_check("up")));
			if (input_check("up"))
			{
				instance_create_depth(x,y - 60,399,obj_overhead_dash_effect_1);
				OH_dash_avalible = false;
				audio_play_sound(snd_dashBoost_create,6,false,1.3,0,2);
			}
		}
		if (onground)
		{
			dash_direction = point_direction(0,0,input_check("right")- input_check("left"),0);
		}
		//Upcancel
		if (upcancel_speed)
		{
			upcancel_speed = false;
			walksp -= 2;
			time_source_stop(timer_upcancel_boost);
			upcancel_jump = false;
		}
		//Distance Calculations
		dash_sp = dash_distance/dash_time;
		dash_energy = dash_distance;
		stateNormal = Dashstate;
		sprite_index = spr_player_dash;
		fallcancel = true;
		grv = 0
		damage_deal = true;
		walljump = false;
		//Dash Effect
		if (!instance_exists(obj_dash_effect))
		{
			instance_create_depth(x - 40,y - 20,399,obj_dash_effect);
		}
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
		audio_play_sound(snd_dash_p,8,false)
		global.dash_active = true
		if (!instance_exists(obj_player_dash_hitbox))
		{
			instance_create_depth(x,y,401,obj_player_dash_hitbox);
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
		{
			if (global.dash_Mindsplit = true)
			{
				image_blend = c_black;
				audio_sound_pitch(snd_dash_p,0.7)
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
	
	
	
	
	   //Dash End
	   dash_energy -= dash_sp
	   if (dash_energy <= 0)
	   {
		   stateNormal = state_normal;
		   canJump = 12;
		   if (global.Dash_jumpNotif = true)
		   {
				image_blend = c_ltgrey;
				time_source_start(timer_dJump_color_revert);
		   }
		   damage_deal = false;
		   fallcancel = false;
		   if (Bomb_Dash_Active)
		   {
			   Bomb_Dash_Active = false;
			   dash_distance -= 200;
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
		   if (onground = false) 
		   {
			   global.dash_amount += 1;
		   }
		   //Dash Joost
		   	if (global.dash_amount >= 2)
	{
		if (!instance_exists(obj_dashJoost_counter)) and dashJoost_hit_disable = false
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
		if (!instance_exists(obj_dashJoost_counter_hit)) and dashJoost_hit_disable = false
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
		if (!instance_exists(obj_dashJoost_counter_hit)) and dashJoost_hit_disable = false
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
		if (!instance_exists(obj_dashJoost_counter_hit)) and dashJoost_hit_disable = false
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
		if (!instance_exists(obj_dashJoost_counter_hit)) and dashJoost_hit_disable = false
		{
			instance_create_depth(-999,-999,-11000,obj_dashJoost_counter_hit);
			if (!dashJoost_speed_cancel) and (!onground)
			{
				walksp += 0.50;
			}
		}
		
	}

	if (global.dash_amount = 7)
	{
		if (!instance_exists(obj_dashJoost_counter_hit)) and dashJoost_hit_disable = false
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
	walksp += 0.55;
	score_boost2 = true;
}


if (score >= 20000) and (!score_boost3)
{
	walksp += 1;
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

	if (global.sanity <= 100) and (!sanity_slow)
	{
		sanity_slow = true;
		walksp -= 0.85;
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


	if (fallcancel = false) and (upcancel_active = false) and (!wallclimb)
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
			grv = -999;
		}
	}
	
//Dash boost
if (instance_exists(obj_dash_boost)) and (input_check_pressed("attack")) and (!instance_exists(obj_dBoost_additive))
{
	time_source_start(timer_dBoost_deactivate);
	walksp += 0.65;
	dashBoost_fail = false;
	global.hudshake = true;
	time_source_start(timer_dashB_afterimages);
	dashBoost_afterimages_trigger = true;
	if (!instance_exists(obj_health_dBoost_notif))
	{
		instance_create_depth(-999,-999,-9998,obj_health_dBoost_notif);	
	}
	time_source_start(timer_hudshake);
	audio_play_sound(snd_dBoost_start,6,false);
	instance_create_depth(x,y,-999,obj_dBoost_additive);
	global.sanity += 5;
	OH_dash_avalible = true;
	dash_damage += 5;
	if (instance_exists(obj_dashJoost_counter))
	{
		obj_dashJoost_counter.dashCounter_shake_warnin = false;
	}
	dashBoost_forgive = 0;
	if (!global.health >= 6)
	{
		global.health += 0.25;	
	}
	if (global.dash_Mindsplit = true)
	{
		global.sanity -= 15;
		audio_sound_pitch(snd_dBoost_start,0.7)
	}
}

if (global.dashboost_dash) and (!instance_exists(obj_dashB_active_effect)) and (!dBoost_dash_active)
{
	dBoost_dash_active = true;
	dash_distance += 95;
	dash_time = 18;
}

if (instance_exists(obj_dBoost_additive)) and (!dBoost_additives_active)
{
	dBoost_additives_active = true;
	dash_distance += 45;
	dash_time = 17;
	if (instance_exists(obj_voodoo_magic_shop_item)) and (!voodoo_dBoost)
	{
		walksp += 0.30;
		voodoo_dBoost = true;
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
if (input_check_pressed("special")) and (global.mindSplit_active = false) and (!instance_exists(obj_dashB_active_effect)) and (global.mindSplit_unlocked = true)
{
	global.sanity -= 10;
	global.mindSplit_active = true;
	time_source_start(timer_mindSplit_cooldown);
	global.dash_Mindsplit = true;
	instance_create_depth(-999,-999,-9999,obj_dashjoost_pause);
	instance_create_depth(-999,-999,-9999,obj_sanity_notif);
	audio_play_sound(snd_mindSplit_start,5,false);
}


//GT Specials
if (obj_game.level = 2) and (sprite_index = spr_playernew)
{
	sprite_index = spr_player_freeze;
}

if (obj_game.gt_disable)
{
	baseState();
}

//Dash Scaling
if (walksp >= 14) and (!Dash_Scale1) and (!Dash_Scale_Disable)
{	
	dash_distance += 5;
	Dash_Scale1 = true;
}

if (walksp >= 15) and (!Dash_Scale2)  and (!Dash_Scale_Disable)
{
	dash_distance += 10;
	Dash_Scale2 = true;
}

if (walksp >= 17.5) and (!Dash_Scale3) and (!Dash_Scale_Disable)
{
	dash_distance += 30;
	Dash_Scale3 = true;
}

//Immoble Character Switch
if (immobile) and (input_check_pressed("dash")) and (!instance_exists(obj_mb_character_switch_particle))
{
	instance_create_depth(x,y,399,obj_mb_character_switch_particle);
}

if (global.gameover_trigger)
{
	sprite_index = spr_gameover;
	immobile = true;
	if (!instance_exists(obj_gameover_effect))
	{
		instance_create_depth(x,y,-399,obj_gameover_effect);
		time_source_start(timer_hud_explosion_score);
	}
	depth = -9999;
	if (layer_exists("Effect_Gameover"))
	{
		layer_set_visible("Effect_Gameover",true);
	}
	walksp = 0;
	canJump = 0;
}
//Mode Switching
if (current_mode = 0) and (instance_exists(obj_ability_bar)) and (input_check_pressed("mode_switch"))
{
	current_mode = 1;
	obj_ability_bar.ability_selected = true;
}
else
if (current_mode = 1) and (input_check_pressed("mode_switch"))
{
	current_mode = 0;
	obj_ability_bar.ability_selected = false;
}
