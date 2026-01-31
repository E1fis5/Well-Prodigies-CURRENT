if (global.isActive_rift && global.timer_rift > 0) {
	    draw_sprite(spr_rift_timer,floor(image_index), 965, 935); // Draw the sprite first
    var minutes = floor(global.timer_rift / 60); // Calculate the minutes
    var seconds = floor(global.timer_rift % 60); // Calculate the remaining seconds
	draw_set_font(fontRiftTimer);
    draw_text(835,865,string(minutes) + ":" + string(seconds));
}