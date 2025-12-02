var alert_outro = function()
{
	sprite_index = spr_lap2_notif_2_outro;
}

timer_alert_outro = time_source_create(time_source_game,3,time_source_units_seconds,alert_outro,[],1);

time_source_start(timer_alert_outro);