global.isActive = false; // Set the initial state of the timer 215
global.timer = 999

var cave_crumble = function()
{
	audio_play_sound(snd_cave_crumble,8,false);
}

timer_cave_crumble = time_source_create(time_source_game,60,time_source_units_seconds,cave_crumble,[],-1);
time_defecit = false;
global.fontEscape = font_add_sprite_ext(spr_font_escape,"0123456789:",true,1)

var score_drain = function()
{
	score -= 15
}

audio_play_sound(snd_clock_tick,4,true)
time_source_start(timer_cave_crumble);
global.timer_drain = time_source_create(time_source_game,0.05,time_source_units_seconds,score_drain,[],-1);
global.timeout_sprite_active = false;
