global.debug_active = true;
player_spriteview = dbg_view("Sprite", false,1480,720,400,300);
sprite_section = dbg_section("Current Sprite:",true);
dbg_text("Sprite Cycles:");
ref_to_sprite = ref_create(obj_player, "sprite_index");
ref_to_image_index = ref_create(obj_player, "image_index");
dbg_sprite(ref_to_sprite, ref_to_image_index,"cyclecyclecycle");
show_debug_overlay(true,true,1,0.2,false,-1);