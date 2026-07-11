//Shop
global.hud_opac_decrease = false;
global.doll_ability = false;
global.jump_boost_shop = false;
global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = 0;
global.doll_move = false;
global.dollbuff = false;
global.hudshake = false;
//Audio
audio_group_load(groupMUS);
audio_group_load(groupSFX);
//Fonts
font_main = font_add_sprite(spr_mainfont, 32, true, 1)
global.fps_key = keyboard_check(vk_f5);
global.gamePaused = false 
depth = -8000
global.collactive = false
global.walksp_boost_active = false
global.rift_taken = false
global.cd_complete = false
global.vcr_active = true;
global.vcr_blue = false;
global.vcr_black = false
global.hud_destroy = false
global.snowlvl_freeze = false 
global.escape_transition_end = false
global.switch_purple = false
global.switch_teal = false
global.switch_red = false
global.scoreHider = false
global.tutorial_blocker = true
global.escapeoverlay_trigger = true
global.scorebook_active = false
global.shopitem_bought = false
global.waterlvl_true = false
global.jestraught_player = false
global.debug_active = false;
global.sanity = 0;
global.outside = false;
//Pause
global.paused = false;
global.canpause = true;
global.pause_coordsx = 0;
global.current_room = r_CaveDwellings1;
global.pause_coordsy = 0;
global.escape_timer_pause = 0;
global.timer_gain = 0;
global.betamusic_toggle = false;
//Sanity shitit
global.sanity_Prank_switch = false;
global.mindSplit_unlocked = false;
global.player_insane = false;
//Level Control
level = 0;
//GT
gt_disable = false;
gt_igloo_exit_triggers = false;
jump_free = 0;
global.door_disable = false;
//Rank Control Rich Presence
rank_image = "spr_ranks_discord1"
global.rank = 0;
//Pausing
game_paused = false;
game_pause_lock = false;