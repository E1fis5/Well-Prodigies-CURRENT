if (instance_exists(obj_ach1_zombie_text))
{
	instance_destroy(obj_ach1_zombie_text);
}

  else
  {
	  instance_create_layer(room_width/1.3, room_height - 800, "Instances", obj_ach1_zombie_text);
  }
  