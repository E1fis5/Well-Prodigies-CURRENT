if (live_call())
{
	return live_result;
}
//Health
global.maxhealth = 6;
global.health = 0;
dash_damage = 5;
damage_deal = false;
//Shop
global.presents_soldout = false;
global.presents_soldout = false;
global.presents_pickup = false;
global.magnet_collect_strong_pull = false;
global.magnet_collect_pull = true;
global.soldout_speed = false;
global.fakeout_pause = false;
global.powercrawl = false;
global.dash_cancel_speed = false;
global.sprite_idlebreak = false;
//Effect Control
dashJoost_hit_disable = false;
//Wall Boost Stats
global.walljumps = 0;
global.walljump_boost1 = false
global.walljump_boost2 = false	
//Challenges
global.damage_blocker = false;
global.health_lock = false;
global.challenge_mode = false;
global.damage = false;
//Gravity
hsp = 0;
hsp_wjump = 5;
vsp = 10;
grv = 0.07;
grv_wall = 0.50;
walksp = 9;
vspJump = -4.5;
vspDJump = -5.5;
vsp_wjump = -5;
vsp_max_wall = 12;
canJump = 7
upcancel_jump = false;
upcancel_wallJump = false;
global.dJump_idle = false
runsp = 5.5;
airTime = 0;
onwall = 0;
global.dash_jump_active = false;
jumpbuffer = 5;
walljumpdelay = 0;
walljumpdelay_max = 17;
global.sanity = 180;
playedSound = false
jump_allowed = false
dJump_sprite_start = false;
global.gem_counter = 0
if (global.targetX != -1)
{
	x = global.targetX;
	y = global.targetY;
	direction = global.targetDirection;
}
global.abilityscore = 0;
player_left = false
inAir = false
canCrawl = 0
global.pFall_spr = false
global.fallspr_deactivate = false
global.grv_0 = false
global.dashspr = false
global.dashspr_left = false
global.fallsp = 0
global.fall_effect_trigger = false
global.bombactive = false
global.gems_collected = 0;
global.idlespr_active = false
global.dash_active = false
global.totalkills = 0
global.jestraught_dash_walksp_add = 0
global.particle_start = false
global.durabilty = 0
global.Dash_jumpNotif = true;
// Sanity and hunger
draw_sprite_on_contact = false;
contact_sprite = spr_lap2_graph
global.isActive = false;
//Upcancels
jumpmax = 2
jumps_active = 0
onground = false
upcancel_active = false;
jump_activated = false;
global.wallboost_amount = 0;
global.dash_amount = 0;
global.doll_ability_active = false;
fastFall_avalible = true;
//Speed control
score_boost1 = false;
score_boost2 = false;
score_boost3 = false;
dBoost_additives_active = false;
dashJoost_speed_cancel = false;
sanity_boost1 = false;
sanity_slow = false;
R2_boost = false;
bomb_speed = false
bomb_active = false
slide_boost = false;
shop_shoe_boost = false;
voodoo_dBoost = false;
doll_boost = false;
restricted = false;
speed_part_start = false;
//Adrenaline and Damage	
adrenaline_amount_drain = 0;
adrenaline_speed_add = 0;
adrenaline_boost = function()
{
	Dash_Scale_Disable = true;
	walksp += adrenaline_speed_add;
	time_source_start(timer_adrenaline_duration);
	instance_create_depth(x,y,401,obj_speed_particle);
}

//Dash
can_dash = false
dash_distance = 200
dash_time = 16
idle_active = false;
drop_dash_avalible = false;
upcancel_avalible = true;
dashBoost_forgive = 0;
dashBoost_fail = false;
crawl_jump = false;
Dash_Scale1 = false;
Dash_Scale2 = false;
Dash_Scale3 = false;
Dash_Scale_Disable = false;
dBoost_dash_active = false;
Bomb_Dash_Active = false;
dBoost_deactive = false;
OH_dash_avalible = false;
Bomb_dashes = 0;
//State Control
upcancel_state_prohibit = false;
//Mudsolid
mudsolid_dash = false;
mud_dash_delay = false;
mudmove_created_up = false;
mudmove_created_down = false;
mudmove_created_left = false;
mudmove_created_right = false;
mudsolid_state = false;
//Lapping
global.lap2_passed = false;
global.fall_effect_destroy = false
global.dJump_active = false
global.gravity_force = 0;
global.timer = 0
global.dash_jump_active = false;
global.gamemode_hard = true;
//Wall
wallanim1 = 0;
wallclimb = false;
walljump = false;
global.gamemode_easy = false;
global.gamemode_normal = false;
global.dashboost_dash = true;
//Achevivemnets
global.ach_emeralds = false;
global.ach_Sec_cd = false;
//GT values
global.torch_active = false;
global.hypothermia_amount = 0;
global.grave_arise = false;
graves_encountered = 0;
//Debug
global.debug_active = false;
global.collisions_enabled = true;
global.noclip = false;
global.escape_touch = false;
global.hub_currency = 999;
global.blocker_exists = false;
global.dash_Jboost_3 = false;
global.dash_Jboost_4 = false;
global.dash_Jboost_5 = false;
global.dash_Jboost_6 = false;
global.dash_Jboost_7 = false;
global.dash_Jboost_8 = false;
global.dash_Jboost_9 = false;
global.dash_Jboost_10 = false;
up_cancel_eff = false;
fallcancel = false;
up_dash_cancel = false;
up_dash_distance = 45;
captured_distance = 0;
captured_time = 0;
global.storedwalksp = 0;
//Mind Split
global.mindSplit_unlocked = false;
global.mindSplit_active = false;
global.dash_switch_mindSplit = false;
global.dash_Mindsplit = false;
global.dash_Normal = true;
land_sprite_break = false;
//Snow State
snow_jumps = 0;
snow_jump_activate = false;
//States
haunt_cooldown = false;
var haunt_cooldown_over = function()
{
	haunt_cooldown = false;
}
timer_haunt_cooldown = time_source_create(time_source_game,4,time_source_units_seconds,haunt_cooldown_over,[],1);
//Power crawl
var power_crawl_damage = function()
{
	instance_create_depth(x,y,399,obj_damage_effect1);
	score -= 45
	adrenaline_amount_drain = 0.05;
	adrenaline_speed_add = 5;
	adrenaline_boost();
	global.damage = true;
	audio_play_sound(snd_player_hurt,6,false);
	if (global.gamemode_hard = true)
	{
		global.health -= 1;
	}
}

var power_crawl_damage_1_hp = function()
{
	global.damage = true;
	instance_create_depth(x,y,399,obj_damage_effect1);
	score -= 75
	audio_play_sound(snd_player_hurt,6,false);
}

//Dashes
var dBoost_create = function()
{
	instance_create_depth(x,y,-999,obj_dash_boost);
	dashBoost_forgive += 1;
}

var dBoost_deactivate = function()
{
		instance_destroy(obj_dBoost_additive);
		if (instance_exists(obj_dashB_active_effect))
		{
			obj_dashB_active_effect.sprite_index = spr_dBoost_ending_explosion;
		}
		if (instance_exists(obj_healthbg_dashB))
		{
			obj_healthbg_dashB.sprite_index = spr_healthbg_effect_dashB_destroy;
		}
		dash_distance -= 45;
		dBoost_additives_active = false;
		dash_damage -= 5;
		time_source_stop(timer_aftereffect_creation);
		if (instance_exists(obj_dashJoost_counter))
		{
			obj_dashJoost_counter.dashCounter_shake_warnin = true;
		}
		walksp -= 0.60;
		global.dboost_chance_active = false;
		instance_create_depth(x,y,-9999,obj_dashjoost_pause);
		audio_play_sound(snd_dashboost_diminish,6,false);
				if (global.dash_Mindsplit = true)
			{
				audio_sound_pitch(snd_dashboost_diminish,0.85);
			}
}



var dBoost_cooldown = function()
{
	dashBoost_forgive = 0;
	global.dashboost_dash = true;
	audio_play_sound(snd_dashBoost_cd_over,5,false);
	if (global.dash_Mindsplit = true)
	{
		audio_sound_pitch(snd_dashBoost_cd_over,0.85);
	}
	time_source_stop(timer_dBoost_cooldown);
	instance_create_depth(-999,-999,-9999,obj_dBoost_notif);
}

var dJump_color_revert = function()
{
	if (image_blend = c_ltgrey)
	{
		image_blend = c_white;
	}
	time_source_stop(timer_dJump_color_revert);
}
//Mind Split Functions
var mindSplit_cooldown = function()
{
	audio_play_sound(snd_mindSplit_end,5,false);
	time_source_stop(timer_mindSplit_cooldown);
	global.dash_Mindsplit = false;
	global.mindSplit_active = false;
	if (instance_exists(obj_dashB_active_effect))
	{
		obj_dashB_active_effect.sprite_index = spr_dashB_active_effect;
	}
	instance_destroy(obj_sanity_notif);
}

//Lava
var lava_penalty = function()
{
	global.damage = true;
	global.health -= 1;
	walksp += 2.5;
	time_source_stop(timer_lava_penalty);
	audio_play_sound(snd_player_hurt,6,false);
}

//Extended Idle
var idle_extend = function()
{
	sprite_index = spr_player_idle_extended_1;
}

//Upcancel Boost
var upcancel_boost = function()
{
	upcancel_jump = false;
	upcancel_pause = false;
	grv = 0.07;
	upcancel_avalible = true;
}
timer_upcancel_boost = time_source_create(time_source_game,0.85,time_source_units_seconds,upcancel_boost,[],1);
//Upcancel Screenshake
var Upcancel_screenshake = function()
{
	layer_set_visible("Effect_Screenshake",0);	
}
timer_upcancel_screenshake = time_source_create(time_source_game,0.25,time_source_units_seconds,Upcancel_screenshake,[],1);
//Lava
timer_idle_extend = time_source_create(time_source_game,9,time_source_units_seconds,idle_extend,[],-1);
timer_lava_penalty = time_source_create(time_source_game,5,time_source_units_seconds,lava_penalty,[],1);
//Collect aura
instance_create_depth(-999,-999,399,obj_collectaura_hitbox);
//Crawl Jump
var crawl_jump_remove = function()
{
	crawl_jump = false;
	upcancel_avalible = true;
	time_source_stop(timer_crawl_jump);
}
timer_crawl_jump = time_source_create(time_source_game,0.5,time_source_units_seconds,crawl_jump_remove,[],1);

//Mudsolid Dash
var mudsolid_dash_exit = function()
{
	mud_dash_delay = false;
	mudsolid_dash = true;
	can_dash = true;
	dash_distance += 350;
	dash_time -= 5;
	dash_sp = dash_distance/dash_time;
	dash_energy = dash_distance;
	walksp += global.storedwalksp;
	stateNormal = Dashstate
	upcancel_state_prohibit = false;
}
timer_mudsolid_dash_delay = time_source_create(time_source_game,0.8,time_source_units_seconds,mudsolid_dash_exit,[],1);
//Adrenaline Duration
var adrenaline_drain = function()
{
	walksp -= adrenaline_amount_drain;
}
timer_adrenaline_duration = time_source_create(time_source_game,1,time_source_units_frames,adrenaline_drain,[],100);
//Double Jump Check Timer
var doublejump_check = function()
{
	jump_activated = true;
} 
timer_jump_check = time_source_create(time_source_game,2,time_source_units_frames,doublejump_check,[],1)
//Dboost
var dashBoost_aftereffect_creation = function()
{
	instance_create_depth(x,y,401,obj_dashB_trail);
}
timer_aftereffect_creation = time_source_create(time_source_game,1.25,time_source_units_seconds,dashBoost_aftereffect_creation,[],-1);
timer_dBoost_cooldown = time_source_create(time_source_game,6,time_source_units_seconds,dBoost_cooldown,[],-1);
timer_dBoost_create = time_source_create(time_source_game,0.2,time_source_units_seconds,dBoost_create,[],-1);
timer_dBoost_deactivate = time_source_create(time_source_game,14,time_source_units_seconds, dBoost_deactivate,[],1);
timer_dJump_color_revert = time_source_create(time_source_game,18,time_source_units_frames,dJump_color_revert,[],1);
//Power crawl timer
timer_power_crawl = time_source_create(time_source_game,2,time_source_units_seconds,power_crawl_damage,[],-1);
timer_power_crawl_1_health = time_source_create(time_source_game,1,time_source_units_seconds,power_crawl_damage_1_hp,[],-1);
//Mind Split Timers
timer_mindSplit_cooldown = time_source_create(time_source_game,55,time_source_units_seconds,mindSplit_cooldown,[],-1);
//States
state_normal = function()
{
	if (!restricted)
{
{

//Important Movement blah blah blah
walljumpdelay =max(walljumpdelay-1,0);
if (walljumpdelay == 0) 
hsp =(input_check("right") - input_check("left")) * walksp


if (onwall != 0)  && (input_check("jump")) and (!input_check("attack")) and (!bomb_active)
{
	walljumpdelay = walljumpdelay_max;
	hsp = -onwall * hsp_wjump;
	vsp = vsp_wjump;
	audio_play_sound(snd_stone1,5,false);
	dJump_sprite_start = false;
	global.walljumps++;
	grv = 0.07;
	can_dash = true;
	walljump = true;
	fallcancel = true;
		instance_create_depth(x,y,401,obj_wallclimb_effect);
		if (player_left = true)
		{
			instance_create_depth(x,y,401,obj_wallclimb_effect_left);
		}
with (instance_create_depth(x,y,depth+1,obj_trail_effect))
	{
		sprite_index = other.sprite_index;
		image_blend = choose(c_green,c_olive);
		image_alpha = 0.8;
	}
}

if (onwall != 0) and (!onground)
{
	wallclimb = true;
	if (!instance_exists(obj_wallclimb_slide_effect))
	{
		instance_create_depth(x,y,399,obj_wallclimb_slide_effect);
	}
}
else
{
	wallclimb = false;
	if (instance_exists(obj_wallclimb_slide_effect))
	{
		instance_destroy(obj_wallclimb_slide_effect);
	}
}
//Wall Sprites
state_walljump = function()
{
//Wallclimb
if (wallclimb)
{
	land_sprite_break = false;
	sprite_index = spr_player_wallclimb;
	if (player_left)
	{
		sprite_index = spr_player_wallclimb_left;
	}
}
//Walljump
if (walljump) and (!onground)
{
	sprite_index = spr_player_walljump_normal;
	fallcancel = true;
	if (player_left)
	{
		sprite_index = spr_player_walljump_left_normal;
	}
}
}

//Vertical Movement
var grv_final = grv;
var vsp_max_final = vsp_max_wall;
if (onwall != 0) && (vsp > 0)
{
	grv_final = grv_wall;
	vsp_max_final = vsp_max_wall
}
vsp += grv_final;
vsp = vsp + grv
vsp = clamp(vsp, -vsp_max_final, vsp_max_final);

//Deciding to jump or not
if (canJump-- > 0) and (input_check_pressed("jump")) and (!jump_activated)
{
	vsp = vspJump;
	canJump = 7;
	time_source_start(timer_jump_check);
	audio_play_sound(snd_pJump,4,false);
	jump_allowed = true;
	canCrawl = 1;
	land_sprite_break = false;
	global.fallspr_deactivate = true
	global.grv_0 = false
	global.particle_start = false
	instance_create_depth(x + 8,y + 25,401,obj_fall_effect_cloud1);
	if (upcancel_jump = true)
	{
		grv = 0.035;
		can_dash = true;
	}
	if (snow_jump_activate) and (vspJump < -3.50)
	{
		vspJump += 0.25;
		vspDJump += 0.25;
		snow_jump_activate = false;
	}
}

//Drop Dash Set
if (input_check("down"))
{
	drop_dash_avalible = true;
}
else
{
	drop_dash_avalible = false;
}


//Collision
if (place_meeting(x + hsp, y, obj_collision_wall)) and (global.collisions_enabled = true)
{
	while (abs(hsp) > 0.1)
	{
		hsp *= 0.5;
		if (!place_meeting(x + hsp, y, obj_collision_wall)) x += hsp;
	}
	hsp = 0;
}

x += hsp;


if (place_meeting(x, y + vsp, obj_collision_wall)) and (global.collisions_enabled = true)
{
	if (vsp > 0) 
	canJump = 10;
	can_dash = true;

	while (abs(vsp) > 0.1)
	{
		vsp *= 0.5;
		if (!place_meeting(x, y + vsp, obj_collision_wall)) y += vsp;
	}
    vsp = 0;
}
y += vsp;

//Mudsolid
if (place_meeting(x + hsp, y, obj_mudsolid_collision)) and (global.collisions_enabled = true) and (!obj_mudsolid_collision.collision_disable)
{
	while (abs(hsp) > 0.1)
	{
		hsp *= 0.5;
		if (!place_meeting(x + hsp, y, obj_mudsolid_collision)) x += hsp;
	}
	hsp = 0;
}


if (place_meeting(x, y + vsp, obj_mudsolid_collision)) and (global.collisions_enabled = true) and (!obj_mudsolid_collision.collision_disable)
{
	if (vsp > 0) 
	canJump = 10;
	can_dash = true;

	while (abs(vsp) > 0.1)
	{
		vsp *= 0.5;
		if (!place_meeting(x, y + vsp, obj_mudsolid_collision)) y += vsp;
	}
    vsp = 0;
}


//Current Status
onground = place_meeting (x,y+10, obj_collision_wall);
onwall = place_meeting (x+1,y, obj_climbablecollision) - place_meeting (x-1,y,obj_climbablecollision)
if (onground) jumpbuffer = 6;
//Preventing crawling in air
if (onground)
{
	jump_activated = 0;
	canCrawl = 0;
	dJump_sprite_start = false;
	if (upcancel_jump = false)
	{
		grv = 0.07;
	}
}
//Upcancels and Air functions
if (!onground)
{
	canCrawl = 1;
	if (!crawl_jump) and (!upcancel_state_prohibit)
	{
		upcancel_avalible = true;
	}

}

//Change direction in animation
if input_check("left") and (wallclimb = 0) and (!land_sprite_break)
{
	sprite_index = spr_playerwalkleft
	image_xscale = 1
	image_yscale = 1
	player_left = true
	slide_left = true
	fallcancel = true;
	global.fallspr_deactivate = true
}



  if input_check("right") = true and (wallclimb = 0) and (!land_sprite_break)
{
	speed_part_start = false;
	sprite_index = spr_playerwalk
	image_xscale = 1
	image_yscale = 1
	player_left = false
	slide_left = false
	global.fallspr_deactivate = true
	fallcancel = true;
}


  if input_check("right") = false && input_check("left") = false && player_left = true and (!wallclimb) and (!land_sprite_break)
{
	sprite_index = spr_player_left
	image_xscale = 1
	image_yscale = 1
	fallcancel = false;
	idle_active = true;
}

  if input_check("right") = false && input_check("left") = false && player_left = false and (!wallclimb) and (!land_sprite_break)
{
	sprite_index = spr_playernew
	image_xscale = 1
	image_yscale = 1
	fallcancel = false;
	idle_active = true;
}

//Double Jump Sprite
if (dJump_sprite_start) and (onground = false) and (!global.dJump_idle) and (!wallclimb)
{
	sprite_index = spr_player_gem_collect;
	fallcancel = true;
	land_sprite_break = false;
	
	if (player_left = true)
	{
		sprite_index = spr_gem_collect_left
	
	}
	}
}
}
}
stateNormal = state_normal

//Fastfall State
state_FastFall = function()
{
	if (input_check("down") = true) and (grv = -1 = false) and (!place_meeting(x,y,obj_ladder_wood)) and (upcancel_avalible) and (!slide_boost) and (!upcancel_state_prohibit)
{
	grv = 1.5
	if (!Bomb_Dash_Active)
	{
		dash_energy = 0;
	}
	upcancel_active = true;
	time_source_stop(timer_upcancel_boost);
	if (!land_sprite_break)
	{
		sprite_index = spr_player_downp;
		if (player_left)
		{
			sprite_index = spr_player_downp_left;
		}
		with (instance_create_depth(x,y,depth+1,obj_trail_effect))
		{
			sprite_index = other.sprite_index;
			image_blend = c_red;
			image_alpha = 0.6;
		}
	}
	if (!instance_exists(obj_upcancel_effect)) and (up_cancel_eff = false)
	{
		instance_create_depth(x,y,399,obj_upcancel_effect);
		up_cancel_eff = true;
	}
	global.fallspr_deactivate = true;
	dJump_sprite_start = false;
	walljump = false;
	if (upcancel_jump = true)
	{
		upcancel_jump = false;
	}
	stateUpcancel = state_FastFall;
	if (!drop_dash_avalible)
	{
		stateNormal = state_normal;
		if (instance_exists(obj_player_dash_hitbox))
		{
			instance_destroy(obj_player_dash_hitbox);
		}
	}
	if (onground)
	{
		land_sprite_break = true;
		upcancel_avalible = false;
		upcancel_jump = true;
		time_source_start(timer_upcancel_boost);
		if (!global.isActive)
		{
			layer_set_visible("Effect_Screenshake",1);	
			time_source_start(timer_upcancel_screenshake);
		}
		canJump = 6;
		grv = 0.07;
		sprite_index = spr_player_land;
		if (player_left)
		{
			sprite_index = spr_player_land_left;	
		}
		if (!instance_exists(obj_upcancel_land_effect))
		{
			instance_create_depth(x - 33,y - 40,401,obj_upcancel_land_effect);
			audio_play_sound(snd_dash_rock_snd1,7,false,1.3);
		}
		if (!instance_exists(obj_wallboost_effect))
		{
			instance_create_depth(x,y,399,obj_wallboost_effect);
			global.walljumps = 7;
		}
	}
}
else
{
	up_cancel_eff = false;
	upcancel_active = false;
}
}


//Slide State
state_PCrawl = function()
{
	if (input_check("down")) and (input_check("attack")) and (input_check("right") or input_check("left")) and (onground)
	{
		if (!slide_boost)
		{ 
			walksp += 3;
			slide_boost = true;
			Dash_Scale_Disable = true;
		}
		land_sprite_break = false;
		time_source_start(timer_power_crawl);
		global.powercrawl = true;
		sprite_index = spr_playercrawl;
		if (!instance_exists(obj_blood_effect))
		{
			instance_create_depth(x,y,399,obj_blood_effect);
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
			if (slide_boost)
			{
				walksp -= 3;
				slide_boost = false;
				Dash_Scale_Disable = false;
			}
		}
	}

	
//Double Jump State
stateDoubleJump = function()
{
if (jump_allowed = true) and (input_check_pressed("jump")) and (jump_activated)
{
	vsp = vspDJump
	canJump = 0;
	audio_play_sound(snd_pJump,4,false);
	jump_allowed = false;
	jump_activated = false;
	can_dash = true
	canCrawl = 1
	fallcancel = true;
	global.dJump_active = true
	global.particle_start = false
	dJump_sprite_start = true;
	land_sprite_break = false;
	if (!instance_exists(obj_fall_effect_cloud1))
	{
		instance_create_depth(x + 8,y + 25,401,obj_fall_effect_cloud1);
	}
	
	
with (instance_create_depth(x,y,depth+1,obj_trail_effect))
{
	sprite_index = other.sprite_index;
	image_blend = c_white
}
}
else
{
	global.dJump_active = false;
}
}
//Haunted State
state_Haunted = function()
{
	if (!instance_exists(obj_jump_spam))
	{
		instance_create_depth(x,y,200,obj_jump_spam);
		audio_play_sound(snd_mindSplit_start,7,false);
		obj_game.jump_free = 0;
	}
	restricted = true;
	can_dash = false;
	sprite_index = spr_player_snow_idle;
	image_blend = c_dkgray;
	self.x = obj_gt_gravestones.x + 0;
	self.y = obj_gt_gravestones.y - 15;
	time_source_stop(obj_escape_timer.timer_escape_drain);
}
	stateHaunt = state_Haunted;
	
//Base state
state_Base = function()
{
	canCrawl = 1;
	can_dash = false;
}
	baseState = state_Base;
	
	
//Mudsolid State
state_Mudsolid = function()
{
	mudsolid_state = true;
	upcancel_state_prohibit = true;
	//Controls
	if (!mud_dash_delay)
	{
		walksp = 15;
		can_dash = false;
	if (input_check("up"))
	{
		grv = -7;
		mudmove_created_down = false;
		if (!mudmove_created_up)
		{
			instance_create_depth(x - 50,y,399,obj_mudmove_effect);
			mudmove_created_up = true;
		}
	}
	if (input_check("down"))
	{
		grv = 7;
		mudmove_created_up = false;
		if (!mudmove_created_down)
		{
			instance_create_depth(x - 50,y,399,obj_mudmove_effect);
			mudmove_created_down = true;
		}
	}
}
else
{
	walksp = 0;
	grv = 0;
	can_dash = true;
}


	if (input_check_pressed("dash"))
	{
		mud_dash_delay = true;
		global.storedwalksp = walksp;
		time_source_start(timer_mudsolid_dash_delay);
		audio_play_sound(snd_boost_buy,5,false);
	}

	canJump = 0;
	//Effects and spritework
	image_blend = c_olive;
}
	stateMudslide = state_Mudsolid;
	
//Bomb State
state_Bomb = function()
{
	if (place_meeting(x,y,obj_bomb_launcher)) and (!bomb_active)
	{
		//Walksp Slowness
		can_dash = true;
		dash_energy = 0;
		jump_allowed = false;
		walksp -= 6;
		bomb_active = true;
		fallcancel = true;
		if (!OH_dash_avalible)
		{
			OH_dash_avalible = true;
		}
	}
	//Active
	if (bomb_active)
	{
		grv = -9;
		//Trail
		with (instance_create_depth(x,y,depth+1,obj_trail_effect))
		{
			sprite_index = other.sprite_index;
			image_blend = c_black;
			image_alpha = 0.6;
		}
		//State Removal
		if (input_check_pressed("dash")) and (Bomb_Dash_Active)
		{
			walksp += 6;
			bomb_active = false;
			fallcancel = false;
			audio_play_sound(snd_dash_explosion,4,false);
			instance_create_depth(x,y,399,obj_bomb_explosion);
		}
		//Dash Add
		if (!Bomb_Dash_Active)
		{
			Bomb_Dash_Active = true
			dash_distance += 400;
			dash_time -= 3;
		}
	}
}

//Snow Danger State
snow_state = function()
{
	if (!snow_jump_activate)
	{
		grv = 1;
		if (input_check_pressed("jump")) and (canJump)
		{
			snow_jumps += 1;
			audio_play_sound(snd_freeze_damage,5,false);
			if (snow_jumps >= 3) and (vspJump < -3.50)
			{
				snow_jumps = 0;
				snow_jump_activate = true;
				grv = 0.07;
			}
		}
	}
}
depth = 400