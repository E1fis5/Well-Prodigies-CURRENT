if (!instance_exists(obj_sanitymeter))
{
	time_source_stop(sanityTimerHard)
	time_source_stop(sanityTimerNormal)
	time_source_stop(sanityTimerSimple)
}

if (room == rWellhub2 or r_CaveDwellings_shop or r_rank_screen)
{
	image_alpha = 0
}