
var haunted_score_loss = function()
{
	score -= 55;
	audio_play_sound(snd_player_hurt,7,false,0.7);
}
timer_haunted_penalty = time_source_create(time_source_game,0.9,time_source_units_seconds,haunted_score_loss,[],-1);
time_source_start(timer_haunted_penalty);