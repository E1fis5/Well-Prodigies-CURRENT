global.sanity = 210;
global.sanity_Prank_switch = false;
heat = 0;
shake_trigger = false;
shake_amount = 0;
final_drain_trigger = 0;
activate_flash_orange = false;
depth = -10000;
x = -999;
y = -999;
sanity_drain_effects = function()
{
	shake_trigger = true;
	time_source_start(sanityTimerShake);
	if (final_drain_trigger >= 2)
	{
		audio_play_sound(snd_mindSplit_start,5,false,1.3,0,1.1);
		audio_play_sound(snd_mindSplit_end,6,false,1,0,1.1);
	}
	else
	{
		audio_play_sound(snd_mindSplit_end,6,false,0.5);
	}
}
//Time sources
var sanity_shake = function()
{
	shake_trigger = false;
}

var sanity_drain = function()
{
	global.sanity -= 10;
	sanity_drain_effects();
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
//Sanity Full Drain
var sanity_drain_full = function()
{
	global.sanity -= 25;
	sanity_drain_effects();
	final_drain_trigger += 1;
	if (final_drain_trigger >= 2)
	{
		time_source_start(sanityTimerFullDrain_final);
	}
}

var sanity_drain_final = function()
{
	global.sanity -= 50;
	sanity_drain_effects();
	obj_player.walksp += 1;
	audio_play_sound(snd_boost_buy,5,false);
	activate_flash_orange = true;
	instance_create_depth(-999,-999,-9999,obj_dBoost_activate_flash);
	time_source_stop(sanityTimerFullDrain);
	time_source_stop(sanityTimerFullDrain_final);
	final_drain_trigger = 0;
	if (!global.isActive)
	{
		time_source_reset(sanityTimerHard);
	}
	else
	{
		time_source_reset(sanityTimerEscape);	
	}
}

sanityTimerFullDrain = time_source_create(time_source_game,0.75,time_source_units_seconds,sanity_drain_full,[],2);
sanityTimerFullDrain_final = time_source_create(time_source_game,1,time_source_units_seconds,sanity_drain_final,[],1);



