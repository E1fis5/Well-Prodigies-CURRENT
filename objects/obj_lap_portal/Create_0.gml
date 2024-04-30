var lap2_drain_score = function()
{
	score -= 11
}

target_x = 0;
target_y = 0;
target_rm = 0;
audio_once_played = false;
time_amount = 0
global.spr_destroy_lap_boost = false
lap2_drain = time_source_create(time_source_game,2,time_source_units_seconds,lap2_drain_score,[],-1);
score_add = 0

