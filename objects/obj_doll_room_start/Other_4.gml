if (instance_exists(target))
{
	aggressive = true;
}

if (aggressive)
{
	move_towards_point(target.x,target.y,speed_value);
	time_source_start(timer_glide_particles);
}