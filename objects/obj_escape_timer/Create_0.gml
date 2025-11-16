global.isActive = true;
timesup_sound = false;
timesup_sound2 = false;
random_timeconfuse_chance = 0;
timer_confuse_disable = true;
tick_rate = 60;
dollbuff_activated = false;
grave_nerf1 = false;
false_timer = 0;
depth = -9999
group = noone;
CD_Dark_Layers = function()
{
	layer_set_visible("Effect_Dark_Tint",1);
	layer_set_visible("Effect_Dark_Glow",1);
	layer_set_visible("Backgrounds_Dark",1);
	layer_set_visible("Background",0);
	layer_set_visible("Escape_Rain",1);
}

//Timer Drain
var escape_timer = function()
{
	global.timer -= 1;
	audio_stop_sound(snd_clock_tick);
	audio_play_sound(snd_clock_tick,8,false);
	false_timer -= 1;
}

var debug_timer = function()
{
	global.timer_gain += 1;
}
var crumble_shake_disable = function()
{
	layer_set_visible("Effect_Screenshake_mega",0);
}

var lightning_disable = function()
{
	layer_set_visible("Effect_Lightning",0);
	layer_set_visible("Effect_Screenshake_mega",0);
	obj_player.image_blend = c_white;
	obj_player.depth = 400;
	instance_destroy(obj_hide_hud);
}
var cave_crumble = function()
{
	if (!global.outside)
	{
		audio_play_sound(snd_cave_crumble,8,false);
		layer_set_visible("Effect_Screenshake_mega",1);
		time_source_start(timer_crumble_shake_disable);
	}
	else
	{
		layer_set_visible("Effect_Screenshake_mega",1);
		layer_set_visible("Effect_Lightning",1);
		obj_player.image_blend = c_black;
		obj_player.depth = -400;
		instance_create_depth(-99,-99,-999,obj_hide_hud);
		audio_play_sound(snd_escape_lightning,8,false);
		time_source_start(timer_lightning_light_disable);
	}
}
var false_timer_disable = function()
{
	timer_confuse_disable = true;
	audio_stop_sound(snd_clock_glitch1);
	random_timeconfuse_chance = 0;
	instance_create_depth(x,y,-10000,obj_clock_effect_glitch);
}
//Confused Timer Disable
timer_confusion = time_source_create(time_source_game,20,time_source_units_seconds,false_timer_disable,[],1);
//Doll Drains
timer_drain_doll = time_source_create(time_source_game,70,time_source_units_frames,escape_timer,[],-1);
timer_doll_voodoo_buff = time_source_create(time_source_game,80,time_source_units_frames,escape_timer,[],-1);
//Grave Drains
timer_drain_grave1 = time_source_create(time_source_game,55,time_source_units_frames,escape_timer,[],-1);
timer_drain_grave2 = time_source_create(time_source_game,50,time_source_units_frames,escape_timer,[],-1);
timer_drain_grave3 = time_source_create(time_source_game,45,time_source_units_frames,escape_timer,[],-1);
timer_drain_grave4 = time_source_create(time_source_game,40,time_source_units_frames,escape_timer,[],-1);
timer_drain_grave5 = time_source_create(time_source_game,35,time_source_units_frames,escape_timer,[],-1);
timer_drain_grave_max = time_source_create(time_source_game,30,time_source_units_frames,escape_timer,[],-1);
//Normal
timer_escape_drain = time_source_create(time_source_game,60,time_source_units_frames,escape_timer,[],-1);
timer_lightning_light_disable = time_source_create(time_source_game,0.1,time_source_units_seconds,lightning_disable,[],1);
timer_crumble_shake_disable = time_source_create(time_source_game,6.02,time_source_units_seconds,crumble_shake_disable,[],1);
timer_cave_crumble = time_source_create(time_source_game,40,time_source_units_seconds,cave_crumble,[],-1);
time_defecit = false;
fontEscape = font_add_sprite_ext(spr_font_escape,"0123456789:",true,1)
timer_gain_debug = time_source_create(time_source_game,1,time_source_units_seconds,debug_timer,[],-1);

time_source_start(timer_escape_drain);
time_source_start(timer_gain_debug);

var score_drain = function()
{
	score -= 15
}
if (layer_exists("Effect_Screenshake"))
{
	layer_set_visible("Effect_Screenshake",1);
}


time_source_start(timer_cave_crumble);
global.timer_drain = time_source_create(time_source_game,0.05,time_source_units_seconds,score_drain,[],-1);
global.timeout_sprite_active = false;