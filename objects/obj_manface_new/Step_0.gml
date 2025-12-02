if (place_meeting(x, y, obj_player) and (input_check_pressed("up")) and (!instance_exists(obj_textbox)))
{
   sprite_index = spr_manface_talk;
   instance_create_depth(-999,-999,-9999,obj_textbox);
}
