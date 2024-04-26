if (instance_exists(obj_lecterntext_mb))
{
	instance_destroy(obj_lecterntext_mb);
}

  else
  {
	  instance_create_layer(room_width/1.7, room_height - 400, "Instances", obj_lecterntext_mb);
  }