if (global.timer < 30)
{
	sprite_index = spr_timer_broken
}

if (global.timer = 0) and (global.isActive = true)
{
   time_source_start(global.timer_drain);
}
else
{
	time_source_stop(global.timer_drain);
}



if (global.isActive = true)
{
	instance_destroy(obj_escape_collision)
	instance_destroy(obj_escape_collision_climb)
}

if (sound_timer <= 0) and global.isActive = true {
    audio_play_sound(snd_cave_crumble,4,false); // Play the audio
    sound_timer = room_speed * waitTime; // Reset the timer
}


// Destroy self if in lobby
if (room == rWellhub2)
{
	instance_destroy();
}

if (global.isActive && global.timer > 0) {
    global.timer -= 1 / room_speed; // Decrement the timer by 1 second each step
   sound_timer -= 1
}

