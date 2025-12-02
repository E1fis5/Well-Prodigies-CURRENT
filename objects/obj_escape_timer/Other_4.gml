if (layer_exists("Effect_Screenshake"))
{
	layer_set_visible("Effect_Screenshake",1);
	if (layer_exists("Effect_Dark_Tint"))
	{
		CD_Dark_Layers();
	}
}
