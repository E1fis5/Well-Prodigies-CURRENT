if (place_meeting(x, y, obj_player)) {
    sprite_index = spr_manface_talk; // Change the sprite to the new sprite
}
else {
    sprite_index = spr_manface_new; // Change the sprite back to the original sprite
}