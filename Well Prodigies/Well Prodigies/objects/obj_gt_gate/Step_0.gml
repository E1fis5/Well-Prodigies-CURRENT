if place_meeting(x,y,obj_player) and input_check("up") = true and (!instance_exists(obj_cd_well_intro))
{
    instance_create_depth(-999,-999,-8000,obj_gt_intro_slide)
}

