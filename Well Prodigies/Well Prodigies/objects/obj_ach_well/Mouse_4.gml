if (instance_exists(obj_ach_well_text))
{
	instance_destroy(obj_ach_well_text);
}

  else
  {
	  instance_create_layer(room_width/1.3, room_height - 500, "Instances", obj_ach_well_text);
  }