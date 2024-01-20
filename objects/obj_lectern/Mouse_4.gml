if (instance_exists(obj_lecterntext_draw))
{
	instance_destroy(obj_lecterntext_draw);
}

  else
  {
	  instance_create_layer(room_width/1.7, room_height - 600, "Instances", obj_lecterntext_draw);
  }