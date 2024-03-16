if place_meeting(x,y,obj_player) and input_check("up") = true and (!instance_exists(obj_ch_well_intro))
{
    instance_create_depth(-999,-999,-8000,obj_ch_well_intro)
}

