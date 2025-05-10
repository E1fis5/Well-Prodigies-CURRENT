
if (score <= 0)
   {
	 sprite_index = spr_ranks_F
   }
   
   if score >= 1850
   {
	 sprite_index = spr_ranks_D
   }
   
      if score >= 4875
   {
	 sprite_index = spr_ranks_C
   }

      if score >= 8750
   {
	  sprite_index = spr_ranks_B
   }
   
         if score >= 12750
   {
	 sprite_index = spr_ranks_A
   }
   
            if score >= 17000
   {
	   sprite_index = spr_ranks_S
   }

         if (score >= 20000)
   {
	  sprite_index = spr_ranks_W
   }
   
            if (score >= 21000) and (global.rift_taken = true) and (global.gems_collected >= 5) and (global.sanity_Prank_switch = false)
   {
	  sprite_index = spr_ranks_P
   }
//Opacity Control
if (instance_exists(obj_hide_hud))
{
    visible = false
}
else
{
	visible = true
}

if (global.hud_opac_decrease = true)
{
	image_alpha = 0.3;
}
