
global.presents_soldout = false;
global.presents_pickup = false;
global.magnet_collect_strong_pull = false;
global.magnet_collect_pull = true;
global.soldout_speed = false;
global.fakeout_pause = false;
global.powercrawl = false;
global.dash_cancel_speed = false;
global.sprite_idlebreak = false;
hsp = 0;
hsp_wjump = 4;
vsp = 10;
grv = 0.07
grv_wall = 0.50;
walksp =4;
vspJump = -6
vspDJump = -9
vsp_wjump = -5;
vsp_max_wall = 4;
canJump = 7
global.dJump_idle = false
global.health = 0
runsp = 5.5;
airTime = 0;
onwall = 0;
global.dash_jump_active = false;
jumpbuffer = 0;
walljumpdelay = 0;
walljumpdelay_max = 17;
global.sanity = 180;
playedSound = false
jump_allowed = false
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
// Sanity and hunger
draw_sprite_on_contact = false;
contact_sprite = spr_lap2_graph
global.isActive = false;
jumpmax = 2
jumps_active = 0
onground = false
global.wallboost_amount = 0;
global.dash_amount = 0;
global.doll_ability_active = false;
//Dash
can_dash = false
dash_distance = 190
dash_time = 16
bombActive = false
global.fall_effect_destroy = false
global.dJump_active = false
global.gravity_force = 0;
global.timer = 0
global.dash_jump_active = false;
global.gamemode_hard = true;
global.gamemode_easy = false;
global.gamemode_normal = false;
global.dashboost_dash = true;
//Achevivemnets
global.ach_emeralds = false;
global.ach_Sec_cd = false;
//GT values
global.torch_active = false
global.hypothermia_amount = 0
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


//Power crawl
var power_crawl_damage = function()
{
	score -= 75
	audio_play_sound(snd_player_hurt,6,false);
	if (global.gamemode_hard = true)
	{
		global.health -= 0.5;
	}
}

var power_crawl_damage_1_hp = function()
{
	score -= 75
	audio_play_sound(snd_player_hurt,6,false);
}

//Dash Boost

var dBoost_create = function()
{
	instance_create_depth(x,y,-999,obj_dash_boost);
}

var dBoost_deactivate = function()
{
	if (time_source_exists(timer_dBoost_deactivate))
	{
		instance_destroy(obj_dBoost_additive);
		instance_destroy(obj_dashB_active_effect);
		instance_create_depth(x,y,-9999,obj_dashjoost_pause);
	}
}

var dBoost_cooldown = function()
{
	global.dashboost_dash = true;
	audio_play_sound(snd_dashBoost_cd_over,5,false);
	time_source_stop(timer_dBoost_cooldown);
	instance_create_depth(-999,-999,-9999,obj_dBoost_notif);
}
timer_dBoost_cooldown = time_source_create(time_source_game,3.5,time_source_units_seconds,dBoost_cooldown,[],-1);
timer_dBoost_create = time_source_create(time_source_game,0.2,time_source_units_seconds,dBoost_create,[],-1);
timer_dBoost_deactivate = time_source_create(time_source_game,9.5,time_source_units_seconds, dBoost_deactivate,[],1);
//Power crawl timer
timer_power_crawl = time_source_create(time_source_game,2.2,time_source_units_seconds,power_crawl_damage,[],-1);
timer_power_crawl_1_health = time_source_create(time_source_game,1.5,time_source_units_seconds,power_crawl_damage_1_hp,[],-1);
// Idle Breaker	

//States
state_normal = function()
{
walljumpdelay =max(walljumpdelay-1,0);
if (walljumpdelay == 0) 
hsp =(input_check("right") - input_check("left")) * walksp


if (onwall != 0) && (!onground) && (input_check("jump"))
{
	walljumpdelay = walljumpdelay_max;
	hsp = -onwall * hsp_wjump;
	vsp = vsp_wjump;
	audio_play_sound(snd_stone1,5,false)
	global.dJump_active = false

		can_dash = true;

		instance_create_depth(x,y,401,obj_wallclimb_effect);
		if (player_left = true)
		{
}            instance_create_depth(x,y,401,obj_wallclimb_effect_left);
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
if (canJump-- > 0) and (input_check_pressed("jump"))
{
	vsp = vspJump;
	canJump = 7;
	audio_play_sound(snd_pJump,4,false);
	jump_allowed = true;
	canCrawl = 1
	global.fallspr_deactivate = true
	global.grv_0 = false
	global.particle_start = false
	instance_create_depth(x + 8,y + 25,401,obj_fall_effect_cloud1);
}




//Run jump
if (input_check("run") = true) and (sprite_index = spr_playerwalk = true) or (sprite_index = spr_playerwalkleft = true)  and (input_check("jump") = true) and (grv = -1 = false)
{
	grv = 0.065
}

if (input_check("run") = true) and (sprite_index = spr_playerwalkleft = true) and (input_check("jump") = true) and (grv = -1 = false)
{
	grv = 0.065
}

if (input_check("run") = false) and (input_check("jump") = true) and (grv = -1 = false)
{
	grv = 0.07
}


//Double Jump
if (jump_allowed = true) and (input_check_pressed("jump")) and (onground = false)
{
	vsp = vspDJump
	canJump = 0;
	audio_play_sound(snd_pJump,4,false);
	jump_allowed = false;
	can_dash = true
	canCrawl = 1
	global.dJump_active = true
	global.particle_start = false
	instance_create_depth(x + 8,y + 25,401,obj_fall_effect_cloud1);




with (instance_create_depth(x,y,depth+1,obj_trail_effect))
{
	sprite_index = other.sprite_index;
	image_blend = c_white
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

//Current Status
onground = place_meeting (x,y+10, obj_collision_wall);
onwall = place_meeting (x+1,y, obj_climbablecollision) - place_meeting (x-1,y,obj_climbablecollision)
if (onground) jumpbuffer = 6;
//Preventing crawling in air
if (onground)
{
	canCrawl = 0
	global.dJump_active = false
}

if (!onground)
{
	canCrawl = 1
}

//Change direction in animation
if input_check("left")
{
	sprite_index = spr_playerwalkleft
	image_xscale = 1
	image_yscale = 1
	player_left = true
	slide_left = true
	walksp = 8
}

if player_left = false && input_check("right") = false
{
	sprite_index = spr_player_left
	image_xscale = 1
	image_yscale = 1
}

  if input_check("right") = true
{
	sprite_index = spr_playerwalk
	image_xscale = 1
	image_yscale = 1
	player_left = false
	global.fallspr_deactivate = true
	walksp = 8
}


  if input_check("right") = false && input_check("left") = false && player_left = true
{
	sprite_index = spr_player_left
	image_xscale = 1
	image_yscale = 1
	walksp = 8
}

  if input_check("right") = false && input_check("left") = false && player_left = false
{
	sprite_index = spr_playernew
	image_xscale = 1
	image_yscale = 1
	walksp = 8
}
}
stateNormal = state_normal

//Crawl state
state_crawl = function()
{
if input_check("down") and canCrawl = 0 and !place_meeting(x,y,obj_ladder_wood)
{
	sprite_index = spr_playercrawl
    image_xscale = 1
	image_yscale = 1
	canJump = false
	can_dash = false
	stateCrawl = state_crawl
}
}

state_FastFall = function()
{
	if (input_check("down") = true) and (grv = -1 = false) and (!place_meeting(x,y,obj_ladder_wood)) and (onground = false)
{
	grv = 5
	sprite_index = spr_player_downp
	vsp = 10
	global.fallspr_deactivate = true
	global.dJump_active = false
}           
}

depth = 400