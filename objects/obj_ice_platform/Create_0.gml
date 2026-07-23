set_time = 0;
ice_break_activated = false;
timer_created = false;
trigger_zone = false;
ice_reveal = false;
ice_smashed = false;
var hud_shake = function()
{
	global.hudshake = false;
	if (layer_exists("Effect_screenshake_mega"))
	{
		layer_set_visible("Effect_screenshake_mega",0);	
	}
}
timer_hud_shake_disable = time_source_create(time_source_game,0.35,time_source_units_seconds,hud_shake,[],1);
depth = 500;
ice_destroy = function()
{
	trigger_zone = false;
	instance_deactivate_object(self);
	ice_break_activated = false;
	instance_create_depth(x,y,depth,obj_ice_respawn_timer);
	timer_created = false;
	if (!ice_smashed)
	{
		obj_player.vsp_max_wall = 15;
		audio_play_sound(snd_freeze_damage,5,false);
	}
	else
	{
		obj_player.vsp_max_wall += 5;	
		audio_play_sound(snd_gt_ice_smash,5,false);
		ice_smashed = false;
	}
	if (distance_to_object(obj_player) < 2) and (obj_player.onIce)
	{
		obj_player.fall_damage_toggle = true;
		obj_player.grv = 0.2;
		obj_player.canJump = 0;
	}
	inst2 = instance_create_depth(x,y,depth + 10,obj_ice_platform_place_reserve)
	inst2.image_xscale = image_xscale;
	inst2.image_yscale = image_yscale;
}
inst = instance_create_depth(x,y - 5,depth,obj_ice_crumble_trigger);
inst.image_xscale = image_xscale - 0.3;