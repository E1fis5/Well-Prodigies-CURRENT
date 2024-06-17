global.isActive = false; // Set the initial state of the timer 215
global.timer = 999

sound_timer = 1500;
waitTime = 25; // Set the time to wait in seconds

global.fontEscape = font_add_sprite_ext(spr_font_escape,"0123456789:",true,1)

var score_drain = function()
{
	score -= 550
}

global.timer_drain = time_source_create(time_source_game,1,time_source_units_seconds,score_drain,[],-1);
global.timeout_sprite_active = false;
