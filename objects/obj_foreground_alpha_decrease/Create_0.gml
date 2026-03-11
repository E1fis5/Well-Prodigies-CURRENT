if (layer_exists("Foreground"))
{
	var lay_id = layer_get_id("Foreground")
	back_id = layer_background_get_id(lay_id);
	if (layer_exists("Foreground2"))
	{
		var lay_id2 = layer_get_id("Foreground2");
		back_id2 = layer_background_get_id(lay_id2);
	}
}