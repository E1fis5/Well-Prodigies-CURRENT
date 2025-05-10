if (global.isActive_rift && global.timer_rift > 0) {
    global.timer_rift -= 1 / room_speed; // Decrement the timer by 1 second each step
   sound_timer -= 1
}

if (room == r_CaveDwellings10) {
    image_alpha = 1; // Make the object visible in the specific room
}
else {
    image_alpha = 0; // Make the object invisible in all other rooms
}

if (global.timer_rift <= 0)
{
  target_rm = r_CaveDwellings10
  target_x = 3860
  target_y = 96
   audio_pause_sound(snd_escape)
   	audio_resume_sound(snd_cavedwellings2)
}

if (global.isActive_rift = true)
{
	instance_destroy(obj_escape_collision)
}
image_index -= animation_speed; // Adjust the animation speed
image_index = image_index mod frame_count; // Wrap around the frame index

if (global.timer_rift <= 0)
{
   score -= 2000
   instance_destroy();
}

// Destroy self if in lobby
if (room == r_CaveDwellings10)
{
	instance_destroy();
	audio_resume_sound(snd_cavedwellings2)
	audio_resume_sound(snd_cavedwellings)
	audio_pause_sound(snd_escape)
	   audio_pause_sound(snd_escape)
   audio_stop_sound(snd_escape)
	global.isActive_rift = false
}

if global.isActive_rift = false
{
	audio_pause_sound(snd_escape)
}

if (instance_exists(obj_escape_timer))
{
	instance_destroy();
}