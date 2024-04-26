if (place_meeting(x, y, obj_lap_portal)) {
    draw_sprite_on_contact = true; // set the flag when colliding with the contact object
}

// Collision Event (of the player object)
if place_meeting(x, y, obj_lap_portal) {
    with (obj_L2_block) {
        instance_destroy(); // Delete all instances of obj_to_delete
    }
}

