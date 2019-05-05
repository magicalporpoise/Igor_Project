// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // obj_tile
global.__objectDepths[1] = 0; // obj_player
global.__objectDepths[2] = 0; // obj_headlesshorseman_npc
global.__objectDepths[3] = 100; // obj_mixed_npc
global.__objectDepths[4] = 0; // obj_npc
global.__objectDepths[5] = 10; // obj_skeleton_npc
global.__objectDepths[6] = 0; // obj_lightning_scene
global.__objectDepths[7] = 0; // obj_teleporter
global.__objectDepths[8] = 0; // obj_walkable
global.__objectDepths[9] = -4; // obj_text
global.__objectDepths[10] = 0; // obj_speaker
global.__objectDepths[11] = -500; // obj_inventory
global.__objectDepths[12] = 0; // obj_cutscene
global.__objectDepths[13] = 0; // obj_climb
global.__objectDepths[14] = 0; // mover
global.__objectDepths[15] = 0; // obj_collide
global.__objectDepths[16] = -501; // obj_selector
global.__objectDepths[17] = 0; // obj_winthegame
global.__objectDepths[18] = 1; // obj_trigger
global.__objectDepths[19] = 0; // obj_bouncer
global.__objectDepths[20] = 0; // obj_invisitile
global.__objectDepths[21] = 4; // obj_stairs
global.__objectDepths[22] = 0; // obj_floor
global.__objectDepths[23] = 0; // obj_door
global.__objectDepths[24] = 1; // obj_switch
global.__objectDepths[25] = 0; // obj_grinder
global.__objectDepths[26] = 10; // obj_meater
global.__objectDepths[27] = 3; // obj_powerlight
global.__objectDepths[28] = 0; // obj_braincase
global.__objectDepths[29] = 15; // obj_weathermachine_body
global.__objectDepths[30] = 10; // obj_lightningrod
global.__objectDepths[31] = -2; // obj_meltwall
global.__objectDepths[32] = 5; // obj_weathermachine_part
global.__objectDepths[33] = 11; // obj_bar
global.__objectDepths[34] = 0; // obj_slider_module
global.__objectDepths[35] = 0; // obj_brewingstand
global.__objectDepths[36] = 0; // obj_electricbarrier
global.__objectDepths[37] = 10; // obj_powerswitch
global.__objectDepths[38] = 0; // obj_skull
global.__objectDepths[39] = -1; // obj_item
global.__objectDepths[40] = 0; // obj_wrench
global.__objectDepths[41] = 0; // obj_potion
global.__objectDepths[42] = 0; // obj_key
global.__objectDepths[43] = 0; // obj_meat
global.__objectDepths[44] = 0; // obj_brain
global.__objectDepths[45] = 0; // obj_concrete
global.__objectDepths[46] = 0; // obj_skelekey
global.__objectDepths[47] = -2; // obj_credits
global.__objectDepths[48] = 10; // obj_bg_shelf
global.__objectDepths[49] = 10; // obj_bg_lamp
global.__objectDepths[50] = 10; // obj_bg_crate
global.__objectDepths[51] = 10; // obj_bg_pipe
global.__objectDepths[52] = 10; // obj_rusty_pipe
global.__objectDepths[53] = 0; // obj_boom
global.__objectDepths[54] = 50; // obj_steam
global.__objectDepths[55] = -1; // obj_cutewinnerphoto


global.__objectNames[0] = "obj_tile";
global.__objectNames[1] = "obj_player";
global.__objectNames[2] = "obj_headlesshorseman_npc";
global.__objectNames[3] = "obj_mixed_npc";
global.__objectNames[4] = "obj_npc";
global.__objectNames[5] = "obj_skeleton_npc";
global.__objectNames[6] = "obj_lightning_scene";
global.__objectNames[7] = "obj_teleporter";
global.__objectNames[8] = "obj_walkable";
global.__objectNames[9] = "obj_text";
global.__objectNames[10] = "obj_speaker";
global.__objectNames[11] = "obj_inventory";
global.__objectNames[12] = "obj_cutscene";
global.__objectNames[13] = "obj_climb";
global.__objectNames[14] = "mover";
global.__objectNames[15] = "obj_collide";
global.__objectNames[16] = "obj_selector";
global.__objectNames[17] = "obj_winthegame";
global.__objectNames[18] = "obj_trigger";
global.__objectNames[19] = "obj_bouncer";
global.__objectNames[20] = "obj_invisitile";
global.__objectNames[21] = "obj_stairs";
global.__objectNames[22] = "obj_floor";
global.__objectNames[23] = "obj_door";
global.__objectNames[24] = "obj_switch";
global.__objectNames[25] = "obj_grinder";
global.__objectNames[26] = "obj_meater";
global.__objectNames[27] = "obj_powerlight";
global.__objectNames[28] = "obj_braincase";
global.__objectNames[29] = "obj_weathermachine_body";
global.__objectNames[30] = "obj_lightningrod";
global.__objectNames[31] = "obj_meltwall";
global.__objectNames[32] = "obj_weathermachine_part";
global.__objectNames[33] = "obj_bar";
global.__objectNames[34] = "obj_slider_module";
global.__objectNames[35] = "obj_brewingstand";
global.__objectNames[36] = "obj_electricbarrier";
global.__objectNames[37] = "obj_powerswitch";
global.__objectNames[38] = "obj_skull";
global.__objectNames[39] = "obj_item";
global.__objectNames[40] = "obj_wrench";
global.__objectNames[41] = "obj_potion";
global.__objectNames[42] = "obj_key";
global.__objectNames[43] = "obj_meat";
global.__objectNames[44] = "obj_brain";
global.__objectNames[45] = "obj_concrete";
global.__objectNames[46] = "obj_skelekey";
global.__objectNames[47] = "obj_credits";
global.__objectNames[48] = "obj_bg_shelf";
global.__objectNames[49] = "obj_bg_lamp";
global.__objectNames[50] = "obj_bg_crate";
global.__objectNames[51] = "obj_bg_pipe";
global.__objectNames[52] = "obj_rusty_pipe";
global.__objectNames[53] = "obj_boom";
global.__objectNames[54] = "obj_steam";
global.__objectNames[55] = "obj_cutewinnerphoto";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for