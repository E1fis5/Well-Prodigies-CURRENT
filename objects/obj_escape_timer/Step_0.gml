if (global.timer < 30)
{
	sprite_index = spr_timer_broken
}

if (global.timer = 0) and (global.isActive = true)
{
   time_source_start(global.timer_drain);
   audio_stop_sound(snd_clock_tick);
}
else
{
	time_source_stop(global.timer_drain);
}




if (global.isActive && global.timer > 0) and (global.doll_ability_active = false) {
    global.timer -= 1 / room_speed; // Decrement the timer by 1 second each step
   image_speed = 1;
}
   if (global.doll_ability_active = true) and (global.isActive and global.timer > 0)
   { 
     global.timer -= 0.7 / room_speed
	 image_speed = 0.8;
   }

if (instance_exists(obj_hide_hud))
{
    visible = false
	exit;
}
else
{
	visible = true
}