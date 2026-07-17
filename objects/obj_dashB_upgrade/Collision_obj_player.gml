
if (!global.dBoost_upgrade1)
{
	global.dBoost_upgrade1 = true;
	audio_play_sound(snd_collectable_food_big,8,false);
	if (instance_exists(obj_hypothermia_meter))
	{
		obj_hypothermia_meter.temp_activate();
		obj_hypothermia_meter.heat = 40;
	}
	instance_destroy();
}