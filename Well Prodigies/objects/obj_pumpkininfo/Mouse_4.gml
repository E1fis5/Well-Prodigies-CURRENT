if (instance_exists(obj_pumpkininfo_text))
{
	instance_destroy(obj_pumpkininfo_text);
	sprite_index = spr_christmastree
}

  else
  {
	  instance_create_layer(room_width/1.3, room_height - 800, "Instances", obj_pumpkininfo_text);
	  sprite_index = spr_christmastree2
  }
  
