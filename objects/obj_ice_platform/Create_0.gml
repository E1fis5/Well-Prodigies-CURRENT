set_time = 0;
ice_break_activated = false;
timer_created = false;
trigger_zone = false;
ice_destroy = function()
{
	trigger_zone = false;
	audio_play_sound(snd_freeze_damage,5,false);
	instance_destroy();
	ice_break_activated = false;
	timer_created = false;
	obj_player.vsp_max_wall = 15;
	if (distance_to_object(obj_player) < 2) and (obj_player.onIce)
	{
		obj_player.fall_damage_toggle = true;
		obj_player.grv = 0.2;
		obj_player.canJump = 0;
	}
}
inst = instance_create_depth(x,y - 5,depth,obj_ice_crumble_trigger);
inst.image_xscale = image_xscale - 0.3;