//Variables
var _keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"))
var _keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"))
var _spriteLeft = keyboard_check(vk_left) or keyboard_check(ord("A"))
var _spriteRight = keyboard_check(vk_right) or keyboard_check(ord("D"))
var _keyDown = keyboard_check(vk_down) or keyboard_check(ord("S"))
var _keySanitylow = keyboard_check_pressed(vk_alt)
var _Left = keyboard_check_pressed (vk_left);
var _Attack = keyboard_check_pressed(ord("X"))
var prevX = x;
var prevY = y;

//Normal State
stateNormal();

//Crawl
state_crawl();

//Run
if  input_check("run") = true
{
    walksp = 6.5

}

if input_check("run") = false and input_check("down") = false
{
	walksp = 5.2
}

if input_check("run") = false && input_check("down")
{
	walksp = 5
}

if input_check("run") = true && input_check("down")
{
	walksp = 6.5
}

// Shop boost
if input_check("run") = true and global.walksp_boost_active = true
{
    walksp = 6.75// 6.4
}

if input_check("run") = false and input_check("down") = false and global.walksp_boost_active = true
{
	walksp = 5.5 //5.28
}

if input_check("run") = true && input_check("down") and (global.walksp_boost_active)
{
	walksp = 6.75
}

if input_check("run") = false && input_check("down") and (global.walksp_boost_active)
{
	walksp = 5.2
}



//Bomb state

if (place_meeting(x,y,obj_bomb_launcher))
{
	grv = -1
	sprite_index = spr_player_bomb
	image_xscale = 1
	image_yscale = 1
	bombActive = true
}

if (bombActive = true) and (onground = true)
{
	bombActive = false
}
if (place_meeting(x,y,obj_bomb_launcher))
{
	grv = -1
}


if (grv = -1 && place_meeting(x,y,obj_collision_wall)) 
{
	grv = 0.07
}

if grv = -1 and (!place_meeting(x,y,obj_ladder_wood))
{
	sprite_index = spr_player_bomb
	image_xscale = 1
	image_yscale = 1
}

if grv = -1 and input_check("down") = true
{
	sprite_index = spr_playercrawl
	image_xscale = 1
	image_yscale = 1
}




if place_meeting(x, y, obj_lap_portal) {
    with (obj_L2_block) {
        instance_destroy(); //
    }
}

if global.isActive = true and sprite_index = spr_playernew
{
	sprite_index = spr_player_escapeidle
	image_xscale  = 1
    image_yscale = 1
}

if global.isActive = true and sprite_index = spr_player_left
{
	sprite_index = spr_player_escape_left
	image_xscale  = 1
    image_yscale = 1
}

if sprite_index = spr_player_bomb or grv = -1
{
	walksp = 0
	can_dash = false
}

if global.isActive = true and sprite_index = spr_player_bomb
{
	sprite_index = spr_player_bomb_escape
}

//Return back to normal idle if in lobby
if (room == rWellhub2) && sprite_index = spr_player_escapeidle
{
	sprite_index = spr_playernew
}

//GT idle
if sprite_index = spr_playernew and (room == r_GT1)
{
	sprite_index = spr_player_freeze
}

//Fast fall

state_FastFall();


if (sprite_index = spr_player_downp) and (place_meeting(x,y,obj_collision_wall))
{
	sprite_index = spr_playernew
}

//Ladder
if (place_meeting(x,y,obj_ladder_wood) and (input_check("up") = true))
{
	grv = -2
}

if (place_meeting(x,y,obj_ladder_wood) and (input_check("up") = false))
{
	grv = 0.07
}

//GT deep snow
if (place_meeting(x,y,obj_deep_snow1))
{
	grv = 5
	walksp = 4.2
	sprite_index = spr_player1
}

if (place_meeting(x,y,obj_deep_snow2))
{
	grv = 5
	walksp = 4.2
	sprite_index = spr_player1
}

if (place_meeting(x,y,obj_deep_snow3))
{
	grv = 5
	walksp = 4.2
	sprite_index = spr_player1
}

//MB fan
if (place_meeting(x,y,obj_fan))
{
	grv = -2
}

//Force Crawl
if (place_meeting(x,y,obj_forcecrawl))
{
	sprite_index = spr_playercrawl;
}

//Dash
if (can_dash) and (input_check_pressed("dash"))
{
	can_dash = false;
	canJump = 0;
	dash_direction = point_direction(0,0,input_check("right")- input_check("left"),input_check("down"))
	dash_sp = dash_distance/dash_time;
	dash_energy = dash_distance;
	stateNormal = Dashstate
	sprite_index = spr_player_dash
	dash_distance = 135
    dash_time = 15
	grv = 0
	{
		if (player_left = true)
		{
			sprite_index = spr_player_dash_left
			
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
	image_alpha = 0.7;
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
}
//Dash end
   dash_energy -= dash_sp
   if (dash_energy <= 0)
   {
	   stateNormal = state_normal
	   canJump = 10
}
}





//Sanity values
if (global.sanity > 80)
{
	walksp += 0.35
}

if (place_meeting(x,y,obj_slide))
{
	walksp = 8.5
}
// lap 2 anims
if (global.lap2_active = true) and (sprite_index = spr_player_escapeidle)
{
	sprite_index = spr_player_lap2;
}

if (global.lap2_active = true) and (sprite_index = spr_player_escape_left)
{
	sprite_index = spr_player_lap2_left;
}

if (!instance_exists(obj_vcr)) and (global.vcr_active = true)
{
	instance_create_depth(x,y,-9999,obj_vcr)
}

//Fall anim
if (onground = true) 
{
	global.fallspr_deactivate = true
}

if (onground = false) and !bombActive
{
	global.fallspr_deactivate = false
}


if (input_check("run")) and (input_check("left"))
{
	global.fallspr_deactivate = true
}

if (input_check("run")) and (input_check("right"))
{
	global.fallspr_deactivate = true
}

if (global.fallspr_deactivate = false)
{
	sprite_index = spr_player_fall
}

if (global.fallspr_deactivate = false) and (input_check("left"))
{
	sprite_index = spr_player_fall
}

if (global.fallspr_deactivate = false) and (input_check("right"))
{
	sprite_index = spr_player_fall
}

if (input_check_pressed("dash")) and (can_dash) and (global.fallspr_deactivate = false)
{
	global.fallspr_deactivate = true
}

if (global.grv_0 = true)
{
	grv = 0
}
//Snow idle
if (global.snowlvl_freeze = true) and (sprite_index = spr_playernew)
{
	sprite_index = spr_player_freeze
}

if (global.snowlvl_freeze = true) and (sprite_index = spr_player_escapeidle)
{
	sprite_index = spr_player_escapeidle
}


