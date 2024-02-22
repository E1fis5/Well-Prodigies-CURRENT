if (instance_exists(obj_scorebook)) and (input_check("cancel"))
{
	instance_destroy();
	global.scorebook_active = false
}





