global.sanity = 210;
global.sanity_Prank_switch = false;
heat = 0;
shake_trigger = false;
shake_amount = 0;
depth = -10000;
x = -999;
y = -999;
//Time sources
var sanity_shake = function()
{
	shake_trigger = false;
}

var sanity_drain = function()
{
	global.sanity -= 10;
	shake_trigger = true;
	audio_play_sound(snd_mindSplit_end,6,false,0.5);
	time_source_start(sanityTimerShake);
}

var wither_drain = function()
{
	global.health -= 1;
	audio_play_sound(snd_player_hurt,8,false);
	audio_sound_pitch(snd_player_hurt,0.7);
	instance_create_depth(obj_player.x,obj_player.y,399,obj_wither_effect);
}


sanityTimerOvertime = time_source_create(time_source_game,3.5,time_source_units_seconds,sanity_drain, [], -1);
sanityTimerHard = time_source_create(time_source_game,11.5,time_source_units_seconds,sanity_drain, [], -1);
sanityTimerEscape = time_source_create(time_source_game,10.5,time_source_units_seconds,sanity_drain, [], -1);
sanityTimerWither = time_source_create(time_source_game,20,time_source_units_seconds,wither_drain,[],-1);
sanityTimerShake = time_source_create(time_source_game,0.7,time_source_units_seconds,sanity_shake,[],1);
time_source_start(sanityTimerHard);

