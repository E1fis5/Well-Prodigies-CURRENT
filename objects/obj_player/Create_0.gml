hsp = 0;
hsp_wjump = 4;
vsp = 10;
grv = 0.07
grv_wall = 0.16;
walksp =4;
vspJump = -6
vspDJump = -9
vsp_wjump = -5;
vsp_max_wall = 4;
canJump = 0
runsp = 5.5;
airTime = 0;
onwall = 0;
jumpbuffer = 0;
walljumpdelay = 0;
walljumpdelay_max = 17;
global.sanitymax = 100
global.sanity = global.sanitymax
playedSound = false
jump_allowed = false
global.gem_counter = 0
if (global.targetX != -1)
{
	x = global.targetX;
	y = global.targetY;
	direction = global.targetDirection;
}
player_left = false
inAir = false
canCrawl = 0

// Sanity and hunger


draw_sprite_on_contact = false;
contact_sprite = spr_lap2_graph
global.isActive = false;
jumpmax = 2
jumps_active = 0
//Dash
can_dash = false
dash_distance = 125
dash_time = 15

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
vsp = vsp + grv;
vsp = clamp(vsp, -vsp_max_final, vsp_max_final);

//Deciding to jump or not
if (canJump-- > 0) and (input_check_pressed("jump"))
{
	vsp = vspJump;
	canJump = 10;
	audio_play_sound(snd_pJump,4,false);
	jump_allowed = true;
	canCrawl = 1
} 




//Run jump
if (input_check("run") = true) and (sprite_index = spr_playerwalk = true) or (sprite_index = spr_playerwalkleft = true)  and (input_check("jump") = true) and (grv = -1 = false)
{
	grv = 0.065
}

if (input_check("run") = false) and (input_check("jump") = true) and (grv = -1 = false)
{
	grv = 0.07
}

if sprite_index = spr_playernew
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
	canCrawl = 1
with (instance_create_depth(x,y,depth+1,obj_trail_effect))
{
	sprite_index = other.sprite_index;
	image_blend = c_blue
	image_alpha = 0.7;
}
}
//Collision
if (place_meeting(x + hsp, y, obj_collision_wall))
{
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
	if (vsp > 0) 
{	canJump = 10;
	can_dash = true;
}
	while (abs(vsp) > 0.1)
	{
		vsp *= 0.5;
		if (!place_meeting(x, y + vsp, obj_collision_wall)) y += vsp;
	}
    vsp = 0;
}
y += vsp;

//Current Status
onground = place_meeting (x,y+2, obj_collision_wall);
onwall = place_meeting (x+1,y, obj_climbablecollision) - place_meeting (x-1,y,obj_climbablecollision);
if (onground) jumpbuffer = 6;
//Preventing crawling in air
if (onground)
{
	canCrawl = 0
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
}


  if input_check("right") = false && input_check("left") = false && player_left = true
{
	sprite_index = spr_player_left
	image_xscale = 1
	image_yscale = 1
}

  if input_check("right") = false && input_check("left") = false && player_left = false
{
	sprite_index = spr_playernew
	image_xscale = 1
	image_yscale = 1
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
	walksp = 4
	canJump = false
	can_dash = false
	stateCrawl = state_crawl
}
}



