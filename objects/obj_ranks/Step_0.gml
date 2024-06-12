
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
   
            if (score >= 20000) and (global.rift_taken = true) and (global.gem_counter >= 5) and (global.shopitem_bought = false) and (global.gamemode_hard = true)
   {
	  sprite_index = spr_ranks_P
   }

if (instance_exists(obj_hide_hud))
{
    visible = false
}
else
{
	visible = true
}

depth = -9998;

if (!instance_exists(obj_rank_cover)) 
{
	instance_create_depth(-999,-999,-9999,obj_rank_cover);
}