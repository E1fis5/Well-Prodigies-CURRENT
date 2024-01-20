if (global.isActive && global.timer > 0) {
    global.timer -= 1 / room_speed; // Decrement the timer by 1 second each step
   sound_timer -= 1
}

if (audio_played) {

}

if (room == r_CaveDwellings10) {
    image_alpha = 1; // Make the object visible in the specific room
}
else {
    image_alpha = 0; // Make the object invisible in all other rooms
}

if (global.timer <= 0) {
    
  score -= 5
}

if (global.isActive = true)
{
	instance_destroy(obj_escape_collision)
}
image_index += animation_speed; // Adjust the animation speed
image_index = image_index mod frame_count; // Wrap around the frame index


if (sound_timer <= 0) and global.isActive = true {
    audio_play_sound(snd_cave_crumble,4,false); // Play the audio
    sound_timer = room_speed * waitTime; // Reset the timer
}

if (global.timer <= 0) and score == 0
{
	game_restart()
	global.counter += 1
}

// Destroy self if in lobby
if (room == rWellhub2)
{
	instance_destroy();
}