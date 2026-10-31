var hitbox_destroy = function()
{
	instance_destroy();
}
timer_hitbox_dissipate = time_source_create(time_source_game,0.1,time_source_units_seconds,hitbox_destroy,[],1);
time_source_start(timer_hitbox_dissipate);