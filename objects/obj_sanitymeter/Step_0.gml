if (!instance_exists(obj_sanitymeter))
{
	time_source_stop(sanityTimerHard)
	time_source_stop(sanityTimerNormal)
	time_source_stop(sanityTimerSimple)
}

