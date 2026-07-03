if (live_call())
{
	return live_result;
}
//Health
global.maxhealth = 6;
global.health = 0;
dash_damage = 5;
damage_deal = false;
fall_damage_toggle = false;
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
activate_flash_black = false;
activate_flash_green = false;
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
crawl_allowed = true;
hsp_wjump = 5;
vsp = 10;
grv = 0.07;
grv_wall = 0.50;
walksp = 9;
vspJump = -4.5;
vspDJump = -5.5;
vsp_wjump = -5;
vsp_max_wall = 12;
canJump = 7;
upcancel_jump = false;
global.dJump_idle = false
runsp = 5.5;
airTime = 0;
//Wall
onwall = 0;
walljump_prohibit = false;
upcancel_wallJump = false;
jumpbuffer = 5;
walljumpdelay = 0;
walljumpdelay_max = 17;
global.sanity = 180;
playedSound = false
jump_allowed = false
dJump_sprite_start = false;
global.dash_jump_active = false;
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
basestate_override = false;
// Sanity and hunger
draw_sprite_on_contact = false;
contact_sprite = spr_lap2_graph
global.isActive = false;
//Upcancels
upcancel_speed_boost = 2;
jumpmax = 2
upcancel_jump_used = false;
upcancel_disable = function()
{
	upcancel_active = false;
	time_source_stop(timer_upcancel_fallbuild);
}
jumps_active = 0
onground = false
upcancel_active = false;
jump_activated = false;
global.wallboost_amount = 0;
global.dash_amount = 0;
global.doll_ability_active = false;
fastFall_avalible = true;
ground_break_permanent = false;
upcancel_jump_break = false;
upcancel_breaks = 0;
upcancel_avalible = true;
upcancel_pause_duration = 0;
upcancel_fall_speed_keep = false;
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
dash_distance = 225;
walk_state_active = false;
dash_time = 16
dash_cooldown_active = false;
idle_active = false;
drop_dash_avalible = false;
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
OH_dash_used = false;
Bomb_dashes = 0;
dashB_first_hit = true;
dBoost_resets = 0;
dash_call = false;
mindsplit_dash = false;
dBoost_effects_end = function()
{
	if (instance_exists(obj_dashB_active_effect))
	{
		obj_dashB_active_effect.sprite_index = spr_dBoost_ending_explosion;
	}
	if (instance_exists(obj_healthbg_dashB))
	{
		obj_healthbg_dashB.sprite_index = spr_healthbg_effect_dashB_destroy;
	}
	if (instance_exists(obj_dashJoost_counter))
	{
		obj_dashJoost_counter.dashCounter_shake_warnin = true;
	}
	global.dboost_chance_active = false;
	instance_create_depth(x,y,-9999,obj_dashjoost_pause);
	audio_play_sound(snd_dashboost_diminish,6,false);
}
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
//Sprite Break
land_sprite_break = false;
//Mindsplit
mindsplit_avalible = true;
mindsplit_activated = false;
mindsplit_override = false;
mindsplit_failsafe_zoom = false;
mindsplit_perfect_window = false;
//Snow State
snow_jumps = 0;
snow_jump_activate = false;
//States
haunt_cooldown = false;
no_player_movement = function()
{
	global.storedwalksp = walksp;
	walksp -= global.storedwalksp;	
}
var haunt_cooldown_over = function()
{
	haunt_cooldown = false;
}
timer_haunt_cooldown = time_source_create(time_source_game,4,time_source_units_seconds,haunt_cooldown_over,[],1);
//Power crawl
var power_crawl_damage = function()
{
	instance_create_depth(x,y,399,obj_damage_effect1);
	score -= 75
	adrenaline_amount_drain = 0.025;
	adrenaline_speed_add = 2.5;
	adrenaline_boost();
	global.damage = true;
	audio_play_sound(snd_player_hurt,6,false);
	if (global.gamemode_hard = true)
	{
		global.health -= 0.5;
	}
}

var power_crawl_damage_1_hp = function()
{
	global.damage = true;
	instance_create_depth(x,y,399,obj_damage_effect1);
	score -= 150
	audio_play_sound(snd_player_hurt,6,false);
}

//Dashes
var dBoost_create = function()
{
	if (!mindsplit_dash) and (!mindsplit_activated)
	{
		instance_create_depth(x,y,-999,obj_dash_boost);
	}
	if (mindsplit_dash or mindsplit_activated)
	{
		instance_create_depth(x,y,399,obj_mindSpl_dBoost);
	}
}

var dBoost_deactivate = function()
{
	dBoost_effects_end();
}
var dBoost_cooldown = function()
{
	dashBoost_forgive = 0;
	global.dashboost_dash = true;
	audio_play_sound(snd_dashBoost_cd_over,5,false);
	time_source_stop(timer_dBoost_cooldown);
	instance_create_depth(-999,-999,-9999,obj_dBoost_notif);
}
//Oh Dash
var OH_dash_reset = function()
{
	dash_time += 5;
}
timer_OH_dash_reset = time_source_create(time_source_game,0.2,time_source_units_seconds,OH_dash_reset,[],1);
var OH_dash_hitbox = function()
{
	instance_destroy(obj_player_dash_hitbox);	
}
timer_OH_hitbox_destroy = time_source_create(time_source_game,0.6,time_source_units_seconds,OH_dash_hitbox,[],1);
//OH Dash Trail
var OH_trail_Dissipate = function()
{
	time_source_stop(timer_OH_creation);
}
timer_OH_dissipate = time_source_create(time_source_game,0.5,time_source_units_seconds,OH_trail_Dissipate,[],1);
var OH_trail_Creation = function()
{
	with (instance_create_depth(x,y,depth+1,obj_trail_effect))
	{
		sprite_index = other.sprite_index;
		image_blend = choose(c_white,c_aqua);
		image_alpha = 1;
	}
}
timer_OH_creation = time_source_create(time_source_game,6,time_source_units_frames,OH_trail_Creation,[],-1);
//Lava
var lava_penalty = function()
{
	global.damage = true;
	global.health -= 1;
	walksp += 3.5;
	time_source_stop(timer_lava_penalty);
	audio_play_sound(snd_player_hurt,6,false);
}
//Upcancel Boost
var upcancel_boost = function()

{
	if (upcancel_jump_used)
	{
		walksp -= 1.5;
		upcancel_jump_used = false;
	}
	upcancel_jump = false;
	upcancel_pause = false;
	grv = 0.07;
	if (!place_meeting(x,y,obj_gt_geyser_wave))
	{
		upcancel_avalible = true;
	}
}
timer_upcancel_boost = time_source_create(time_source_game,0.85,time_source_units_seconds,upcancel_boost,[],1);
//Upcancel Jump Break Timer
var upcancel_jump_break_timer = function()
{
	upcancel_jump_break = false;
}
timer_upcancel_jump_break = time_source_create(time_source_game,0.45,time_source_units_seconds,upcancel_jump_break_timer,[],1);
//Upcancel Screenshake
var Upcancel_screenshake = function()
{
	layer_set_visible("Effect_Screenshake",0);	
}
timer_upcancel_screenshake = time_source_create(time_source_game,0.25,time_source_units_seconds,Upcancel_screenshake,[],1);
//Upcancel Fall Build Up
var upcancel_fallbuild = function()
{
	vsp_max_wall += 0.3;
}
timer_upcancel_fallbuild = time_source_create(time_source_game,2,time_source_units_frames,upcancel_fallbuild,[],-1);
//Lava
timer_lava_penalty = time_source_create(time_source_game,5,time_source_units_seconds,lava_penalty,[],1);
//Collect aura
instance_create_depth(-999,-999,399,obj_collectaura_hitbox);
//dashboost miss screenshake
var dBoostmiss_screenshake = function()
{
	layer_set_visible("Effect_Screenshake_mega",0);	
	global.hudshake = false;
}
timer_dBoostmiss_screenshake = time_source_create(time_source_game,0.25,time_source_units_seconds,dBoostmiss_screenshake,[],1);
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
	audio_play_sound(snd_select,2,false,0.3);
}
timer_adrenaline_duration = time_source_create(time_source_game,1,time_source_units_frames,adrenaline_drain,[],100);
//Double Jump Check Timer
var doublejump_check = function()
{
	jump_activated = true;
} 
timer_jump_check = time_source_create(time_source_game,2,time_source_units_frames,doublejump_check,[],1)
//Walljump revert failsafe
var walljump_failsafe = function()
{
	walljump = false;	
}
timer_walljump_check = time_source_create(time_source_game,0.5,time_source_units_seconds,walljump_failsafe,[],1);
//Dboost
var dashBoost_aftereffect_creation = function()
{
	instance_create_depth(x,y,401,obj_dashB_trail);
}
//MindSplit
var mindSpl_deactivation = function()
{
	mindsplit_avalible = true;
	mindsplit_activated = false;
	global.sanity += 20;
	if (mindsplit_perfect_window)
	{
		walksp -= 1.15;
		audio_play_sound(snd_dashBoost_cd_over,5,false,1.2,0,0.5);
		dash_distance -= 25;
	}
	else
	{
		walksp -= 0.95;
		audio_play_sound(snd_dashBoost_cd_over,5,false,1.2,0,0.9);
		dash_distance -= 15;
	}
}

var mindSpl_cooldown = function()
{
	mindsplit_avalible = true;
	audio_play_sound(snd_dBoost_start,7,false,1.8,0,0.9);
}

var mindSpl_zoom_failsafe = function()
{
	if (instance_exists(obj_camera))
	{
		obj_camera.cam_width_subtract = 26;
		obj_camera.cam_height_subtract = 16;
		time_source_start(obj_camera.timer_camzoom_out);
		mindsplit_failsafe_zoom = false;
	}
}

var mindsplit_perfect_hit = function()
{
	mindsplit_perfect_window = false;
}
timer_mindsplit_perfect_window = time_source_create(time_source_game,1,time_source_units_seconds,mindsplit_perfect_hit,[],1);
timer_mindSpl_failsafe_zoom = time_source_create(time_source_game,0.5,time_source_units_seconds,mindSpl_zoom_failsafe,[],1);
timer_mindSpl_cooldown = time_source_create(time_source_game,10,time_source_units_seconds,mindSpl_cooldown,[],1);
timer_mindSpl_deactivation = time_source_create(time_source_game,45,time_source_units_seconds,mindSpl_deactivation,[],1);

//Dash Cooldown
var dash_reset = function()
{
	can_dash = true;	
	dash_cooldown_active = false;
}
timer_dash_cooldown = time_source_create(time_source_game,0.35,time_source_units_seconds,dash_reset,[],1);
//Aftereffects/Dboost
timer_aftereffect_creation = time_source_create(time_source_game,1.25,time_source_units_seconds,dashBoost_aftereffect_creation,[],-1);
timer_aftereffect_creation_quick = time_source_create(time_source_game,0.75,time_source_units_seconds,dashBoost_aftereffect_creation,[],-1);
timer_dBoost_cooldown = time_source_create(time_source_game,6,time_source_units_seconds,dBoost_cooldown,[],-1);
timer_dBoost_create = time_source_create(time_source_game,0.2,time_source_units_seconds,dBoost_create,[],-1);
timer_dBoost_deactivate = time_source_create(time_source_game,14,time_source_units_seconds, dBoost_deactivate,[],1);
//Power crawl timer
timer_power_crawl = time_source_create(time_source_game,2,time_source_units_seconds,power_crawl_damage,[],-1);
timer_power_crawl_1_health = time_source_create(time_source_game,1,time_source_units_seconds,power_crawl_damage_1_hp,[],-1);
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

//walljump
if (onwall != 0)  && (input_check("jump")) and (!input_check("attack")) and (!bomb_active) and (!walljump_prohibit) and (!fall_damage_toggle)
{
	vsp_wjump = walksp / -4 - 2.75 + 0.5;
	if (time_source_exists(timer_walljump_check))
	{
		time_source_stop(timer_walljump_check);
		time_source_start(timer_walljump_check);
	}
	walljumpdelay = walljumpdelay_max;
	hsp = -onwall * hsp_wjump;
	vsp = vsp_wjump;
	audio_play_sound(snd_stone1,5,false)
	dJump_sprite_start = false;
	global.walljumps++;
	grv = 0.07;
	time_source_stop(timer_upcancel_fallbuild);
	can_dash = true;
	wallclimb = false;
	walljump = true;
	fallcancel = true;
	instance_create_depth(x,y - 90,401,obj_wallclimb_effect);
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
if (wallclimb) and (!mindsplit_override) 
{
	if (input_check_pressed("down"))
	{
		time_source_start(timer_upcancel_fallbuild);
	}
	upcancel_active = false;
	land_sprite_break = false;
	sprite_index = spr_player_wallclimb;
	if (player_left)
	{
		sprite_index = spr_player_wallclimb_left;
	}
}
//Walljump
if (walljump) and (!onground) and (!wallclimb)
{
	sprite_index = spr_player_walljump_normal;
	fallcancel = true;
	if (player_left)
	{
		sprite_index = spr_player_walljump_left_normal;
	}
}
}

//Trails
if (fall_damage_toggle) //Crumble Trail
{
	with (instance_create_depth(x,y,depth+1,obj_trail_effect))
	{
		sprite_index = other.sprite_index;
		image_blend = c_teal;
		image_alpha = 0.6;
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
	walljump_prohibit = true;
	vsp = vspJump;
	canJump = 7;
	jump_allowed = true;
	time_source_start(timer_jump_check);
	audio_play_sound(snd_pJump,4,false);
	canCrawl = 1;
	if (upcancel_jump = true) and (!upcancel_jump_used)
	{
		grv = 0.035;
		if (!can_dash)
		{
			time_source_start(timer_dash_cooldown);
		}
		audio_play_sound(snd_player_slam_bounce,5,false);
		walksp += 1.5;
		upcancel_jump_used = true;
	}
	land_sprite_break = false;
	global.fallspr_deactivate = true
	global.grv_0 = false
	global.particle_start = false
	instance_create_depth(x + 8,y + 25,401,obj_fall_effect_cloud1);
	if (snow_jump_activate) and (vspJump < -3.50)
	{
		vspJump += 0.25;
		vspDJump += 0.25;
		snow_jump_activate = false;
	}
}
//Upcancel Effects
if (!land_sprite_break) and (!mindsplit_override) and (upcancel_active) and (!wallclimb)
{
	sprite_index = spr_player_downp;
	if (player_left)
	{
		sprite_index = spr_player_downp_left;
	}
		//Trail
		with (instance_create_depth(x,y,depth+1,obj_trail_effect))
		{
			sprite_index = other.sprite_index;
			image_blend = c_red;
			image_alpha = 0.6;
		}
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
	if (!mindsplit_override)
	{
		canJump = 10;
		if (!dash_cooldown_active) and (!slide_boost)
		{
			can_dash = true;
		}
	}

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
onIce = place_meeting(x,y + 10, obj_ice_platform);
onground = place_meeting(x,y + 10, obj_collision_wall);
onwall = place_meeting(x + 1,y, obj_climbablecollision) - place_meeting(x -1,y,obj_climbablecollision)
//Preventing crawling in air
if (onground)
{
	jump_activated = false;
	canCrawl = 0;
	jumpbuffer = 6;
	if (!walljump_prohibit)
	{
		walljump_prohibit = true;
	}
	dJump_sprite_start = false;
	if (upcancel_jump = false)
	{
		grv = 0.07;
	}
	if (!place_meeting(x,y,obj_gt_ice_geyser)) and (!upcancel_active)
	{
		vsp_max_wall = 12;
	}
	time_source_stop(timer_upcancel_fallbuild);
	if (fall_damage_toggle)
	{
		global.damage = true;
		global.health -= 1;
		fall_damage_toggle = false;
		audio_play_sound(snd_player_hurt,5,false);
	}
}
//Upcancels and Air functions
if (!onground)
{
	canCrawl = 1;
	if (!jump_activated)
	{
		walljump_prohibit = false;
	}
	if (!crawl_jump) and (!upcancel_state_prohibit) and (!upcancel_jump_break) and (!place_meeting(x,y,obj_gt_geyser_wave))
	{
		upcancel_avalible = true;
	}
}
//Ice
if (instance_exists(obj_ice_crumble_trigger))
{
	if (place_meeting(x,y,obj_ice_crumble_trigger)) and (!obj_ice_platform.trigger_zone)
	{
		obj_ice_platform.trigger_zone = true;
	}
	if (!place_meeting(x,y,obj_ice_crumble_trigger)) and (obj_ice_platform.trigger_zone)
	{
		obj_ice_platform.trigger_zone = false;
	}
}
//Walk state
if (input_check("run")) and (!walk_state_active)
{
	walksp -= 3.5;
	walk_state_active = true;
	image_speed = 0.75;
}
if (!input_check("run")) and (walk_state_active)
{
	walksp += 3.5;
	walk_state_active = false;
	image_speed = 1;
}

//Change direction in animation
if input_check("left") and (wallclimb = 0) and (!land_sprite_break) and (!mindsplit_override) and (!upcancel_active)
{
	sprite_index = spr_playerwalkleft
	image_xscale = 1
	image_yscale = 1
	player_left = true
	slide_left = true
	fallcancel = true;
	global.fallspr_deactivate = true
}



  if input_check("right") = true and (wallclimb = 0) and (!land_sprite_break) and (!mindsplit_override) and (!upcancel_active)
{
	sprite_index = spr_playerwalk
	image_xscale = 1
	image_yscale = 1
	player_left = false
	slide_left = false
	global.fallspr_deactivate = true
	fallcancel = true;
}


  if input_check("right") = false && input_check("left") = false && player_left = true and (!wallclimb) and (!land_sprite_break) and (!mindsplit_override) and (!upcancel_active)
{
	if (!global.isActive)
	{
		sprite_index = spr_player_left;
	}
	else
	{
		sprite_index = spr_player_escape_left;
	}
	fallcancel = false;
	idle_active = true;
}

  if input_check("right") = false && input_check("left") = false && player_left = false and (!wallclimb) and (!land_sprite_break) and (!mindsplit_override) and (!upcancel_active)
{
	if (!global.isActive)
	{
		sprite_index = spr_playernew;
	}
	else
	{
		sprite_index = spr_player_escapeidle;
	}
	fallcancel = false;
	idle_active = true;
	if (obj_game.level = 2)
	{
		sprite_index = spr_player_freeze;
	}
}
//Double Jump Sprite
if (dJump_sprite_start) and (onground = false) and (!global.dJump_idle) and (!wallclimb) and (!mindsplit_override)
{
	sprite_index = spr_player_gem_collect;
	fallcancel = true;
	land_sprite_break = false;
	
	if (player_left = true)
	{
		sprite_index = spr_gem_collect_left
	
	}
}
//Upcancel Jump Break
if (upcancel_breaks <= 0) and (upcancel_active) and (input_check_pressed("jump"))
	{
		jump_activated = true;
		vsp = vspDJump;
		grv = 0.07;
		up_cancel_eff = false;
		upcancel_active = false;
		time_source_stop(timer_upcancel_fallbuild);
		time_source_start(timer_upcancel_jump_break);
		upcancel_avalible = false;
		upcancel_jump_break = true;
		upcancel_breaks++
		up_cancel_eff = false;
		instance_create_depth(x,y,399,obj_upcancel_effect);
		audio_play_sound(snd_upcancel_whoosh,5,false,1,0,1.3);
	}
}
}
}
stateNormal = state_normal

//Fastfall State
state_FastFall = function()
{
	if (input_check("down") = true) and (upcancel_avalible) and (!slide_boost) and (!upcancel_state_prohibit) and (!onground) and (!fall_damage_toggle)
{
	if (!input_check_pressed("jump"))
	{
		grv = 1.5
	}
	if (!Bomb_Dash_Active) or (!drop_dash_avalible)
	{
		dash_energy = 0;
	}
	if (mindsplit_dash)
	{
		dash_distance -= 300;
	}
	upcancel_active = true;
	time_source_start(timer_upcancel_fallbuild);
	if (upcancel_jump)
	{
		upcancel_jump = false;
	}
	if (upcancel_jump_used)
	{
		upcancel_jump_used = false;
		walksp -= 1.5;
		time_source_stop(timer_upcancel_boost);
	}
	if (!instance_exists(obj_upcancel_effect)) and (up_cancel_eff = false)
	{
		instance_create_depth(x,y,399,obj_upcancel_effect);
		up_cancel_eff = true;
		audio_play_sound(snd_upcancel_whoosh,5,false);
	}
	global.fallspr_deactivate = true;
	dJump_sprite_start = false;
	walljump = false;
	stateUpcancel = state_FastFall;
	if (!drop_dash_avalible)
	{
		stateNormal = state_normal;
		if (instance_exists(obj_player_dash_hitbox))
		{
			instance_destroy(obj_player_dash_hitbox);
		}
	}
}
}

//Upcancel Land
land_state = function()
{
	if (upcancel_active or wallclimb) and (onground)
	{
		land_sprite_break = true;
		if (upcancel_active = true)
		{
			upcancel_active = false;
			upcancel_avalible = false;
			upcancel_jump = true;
			time_source_start(timer_upcancel_boost);
			upcancel_breaks = 0;
		}
		if (!global.isActive)
		{
			layer_set_visible("Effect_Screenshake",1);	
			time_source_start(timer_upcancel_screenshake);
		}
		canJump = 6;
		grv = 0.07;
		up_cancel_eff = false;
		if (!mindsplit_override)
		{
			sprite_index = spr_player_land;
			if (player_left)
			{
				sprite_index = spr_player_land_left;	
			}
		}
		if (!instance_exists(obj_upcancel_land_effect))
		{
			instance_create_depth(x - 33,y - 40,401,obj_upcancel_land_effect);
			if (vsp_max_wall < 16)
			{
				audio_play_sound(snd_dash_rock_snd1,7,false,1.3);
			}
			if (vsp_max_wall > 16)
			{
				audio_play_sound(snd_dash_rock_snd1,7,false,1.8,0,0.85);
				instance_create_depth(x + 40,y + 100,150,obj_upcancel_break_effect);
			}
			if (vsp_max_wall >= 30)
			{
				audio_play_sound(snd_dash_rock_snd1,7,false,2.5,0,0.60);
				instance_create_depth(x + 40,y + 100,150,obj_upcancel_break_effect);
				ground_break_permanent = true;
			}
				
		}
		//Geyser
		if (place_meeting(x,y,obj_gt_ice_geyser))
		{
			upcancel_fall_speed_keep = true;	
		}
		//FallBuild Cancel
		if (vsp_max_wall >= 12)
		{
			if (!place_meeting(x,y,obj_gt_ice_geyser))
			{
				vsp_max_wall = 12;
			}
			time_source_stop(timer_upcancel_fallbuild);
		}
	}
	}


//Slide State
state_PCrawl = function()
{
	if (input_check("down")) and (input_check("attack")) and (input_check("right") or input_check("left")) and (onground) and (crawl_allowed)
	{

		if (!slide_boost)
		{
			Dash_Scale_Disable = true;
			walksp += 3;
			slide_boost = true;
		}
		can_dash = false;
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
	if (!input_check_pressed("dash"))
	{
		vsp = vspDJump
	}
	canJump = 0;
	audio_play_sound(snd_pJump,4,false,1.85,0,1.25);
	jump_allowed = false;
	jump_activated = false;
	if (walljump_prohibit)
	{
		walljump_prohibit = false;	
	}
	if (!can_dash)
	{
		time_source_start(timer_dash_cooldown);
	}
	canCrawl = 1
	fallcancel = true;
	global.dJump_active = true
	global.particle_start = false
	dJump_sprite_start = true;
	land_sprite_break = false;
	if (!instance_exists(obj_dJump_effect))
	{
		instance_create_depth(x,y + 25,401,obj_dJump_effect);
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
	basestate_override = true;
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
		//Upcancel Disable
		upcancel_avalible = false;
		upcancel_active = false;
		time_source_stop(timer_upcancel_fallbuild);
		//OH trail destroy
		time_source_stop(timer_OH_creation);
		time_source_stop(timer_OH_dissipate);
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
		if (vsp_max_wall > 12)
		{
			vsp_max_wall = 12;
		}
			upcancel_avalible = true;
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

//MindSplit Start
mindsplit_transition_state = function()
{
	if (input_check_pressed("special")) and (global.mindSplit_unlocked)
	{
		//MindSplit Toggle
		if (mindsplit_activated) and (mindsplit_avalible)
		{
			if (mindsplit_perfect_window)
			{
				walksp -= 1.15;
				dash_distance -= 25;
			}
			else
			{
				walksp -= 0.95;
				dash_distance -= 15;
			}
			mindsplit_activated = false;
			mindsplit_avalible = false;
			dBoost_effects_end();
			audio_play_sound(snd_mindSplit_end,5,false);
			instance_create_depth(x,y,399,obj_wither_effect);
			time_source_stop(timer_mindSpl_deactivation);
			time_source_start(timer_mindSpl_cooldown);
			time_source_stop(timer_dBoost_deactivate);
		}
		if (!mindsplit_avalible)
		{
			audio_play_sound(snd_dashBoost_fail,6,false,0.5,0,0.9);
		}
		if (!mindsplit_activated) and (mindsplit_avalible)
		{
			//Flash
			activate_flash_black = true;
			instance_create_depth(-999,-999,-9999,obj_dBoost_activate_flash);
			instance_create_depth(x + 30,y - 15,401,obj_mindsplit_activate_effect);
			//Camera
			obj_camera.cam_width_subtract = 26;
			obj_camera.cam_height_subtract = 16;	
			time_source_start(obj_camera.timer_camzoom_in);
			obj_camera.camZoom = true;
			mindsplit_failsafe_zoom = true;
			if (mindsplit_failsafe_zoom)
			{
				time_source_start(timer_mindSpl_failsafe_zoom);
			}
			audio_play_sound(snd_mindsplit_activate,4,false);
			mindsplit_dash = true;
			mindsplit_avalible = false;
			time_source_start(timer_mindSpl_cooldown);
			//Sanity
			if (instance_exists(obj_sanitymeter))
			{
				global.sanity -= 50;
				obj_sanitymeter.sanity_drain_effects();
			}
			//Screenshake
			time_source_start(timer_dBoostmiss_screenshake);
			if (layer_exists("Effect_Screenshake_mega"))
			{
				layer_set_visible("Effect_Screenshake_mega",1);
			}
			//Dash/Dboost
			dash_call = true;
			time_source_reset(timer_dBoost_cooldown);
			time_source_stop(timer_dBoost_deactivate);
			time_source_start(timer_dBoost_create);
			time_source_start(timer_dBoost_cooldown);
			time_source_stop(timer_aftereffect_creation_quick);
			dash_distance += 300;
			state_dash();
			dBoost_effects_end();
		}
	}
}
//Dash State
	state_dash = function()
	{
	//Dash
	if (can_dash and input_check_pressed("dash")) or (dash_call)
	{
		//Checks
		if (dash_call)
		{
			dash_call = false;
		}
		if (input_check("down"))
		{
			drop_dash_avalible = true;
			vsp_max_wall = 18;
		}
		upcancel_disable();
		fall_damage_toggle = false;
		//Dash Cooldown
		can_dash = false;
		dash_cooldown_active = true;
		time_source_start(timer_dash_cooldown);
		//Overhead Dash
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
					audio_play_sound(snd_dashp_overhead,6,false);
					dash_distance -= 50;
					OH_dash_avalible = false;
					OH_dash_used = true;
					instance_create_depth(-999,-999,-9998,obj_dBoost_activate_flash);
					instance_create_depth(x,y - 60,399,obj_overhead_dash_effect_1);
					layer_set_visible("Effect_Screenshake_mega",1);
					global.hudshake = true;
					dash_time -= 6;
					time_source_start(timer_OH_hitbox_destroy);
					time_source_start(timer_OH_dash_reset);
					time_source_start(timer_OH_creation);
					time_source_start(timer_OH_dissipate);
				}
			}
			else
			{
				dash_direction = point_direction(0,0,input_check("right")- input_check("left"),0);
			}
		}
		dash_sp = dash_distance/dash_time;
		dash_energy = dash_distance;
		hsp = lengthdir_x(dash_sp,dash_direction)
		vsp = lengthdir_y(dash_sp,dash_direction)
		stateNormal = Dashstate
		//Main Sprite
		if (!mindsplit_override)
		{
			sprite_index = spr_player_dash
		}
		//WallBoost destroy
		if (instance_exists(obj_wallboost_effect))
		{
			instance_destroy(obj_wallboost_effect);
		}
		land_sprite_break = false;
		fallcancel = true;
		grv = 0;
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
				dash_distance -= 95;
			}
			global.dashboost_dash = false;
			dashBoost_fail = true;
			time_source_start(timer_dBoost_cooldown);
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
		   if (mindsplit_dash)
		   {
			   dash_distance -= 300;
			   mindsplit_dash = false;
		   }
		   //OH dash
		   if (!OH_dash_used)
		   {
				instance_destroy(obj_player_dash_hitbox);
		   }
		   if (OH_dash_used)
		   {
			   dash_distance += 50;
			   OH_dash_used = false;
			   layer_set_visible("Effect_Screenshake_mega",0);
			   global.hudshake = false;
		   }
		   drop_dash_avalible = false;
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
			audio_play_sound(snd_dashscore_increase,4,false);
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
			audio_play_sound(snd_dashscore_increase,4,false,1,0,1.1);
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
			audio_play_sound(snd_dashscore_increase,4,false,1,0,1.15);
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
			audio_play_sound(snd_dashscore_increase,4,false,1,0,1.2);
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
				audio_play_sound(snd_dashscore_increase,4,false,1,0,1.25);
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
			audio_play_sound(snd_dashscore_increase,4,false,1,0,1.3);
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
			audio_play_sound(snd_dashscore_increase,4,false,2.5,0,1.35);
			audio_play_sound(snd_dashscore_increase_final,5,false);
		}
	}

	   }
	}
	}
	//Dash Joost
	if (global.dash_cancel_speed = true)
	{
		dashJoost_speed_cancel = false;
		if (instance_exists(obj_dashJoost_counter))
		{
			if (!obj_dashJoost_counter.dashscore_end)
			{
				obj_dashJoost_counter.sprite_index = spr_dashscore_end;
				obj_dashJoost_counter.dashscore_end = true;
				obj_dashJoost_counter.dashCounter_shake_warnin = false;
				dashJoost_hit_disable = false;
				if (global.dash_amount >= 8)
				{
					audio_play_sound(snd_dashscore_end,5,false);
					if (obj_dashJoost_counter.image_speed = 0)
					{
						obj_dashJoost_counter.image_speed = 0.40;
					}
				}
				if (global.dash_amount < 8)
				{
					audio_play_sound(snd_dashscore_end_non8,5,false);
					if (obj_dashJoost_counter.image_speed = 0)
					{
						obj_dashJoost_counter.image_speed = 1.25;
					}
					obj_dashJoost_counter.image_index = 6;
				}
				global.dash_amount = 0;		
			}
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
}
depth = 400
 