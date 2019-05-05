/// @description New npc, headless horseman
// inherit the create event

event_inherited();
image_speed = 0.2;
//name=
character = instance_create(x, y, obj_npc);
character.name = "HHHW + Skele"
voice.font = horse_font;
//dialogue
holdingitem = false; // was the head given to her?
dindex = 0;

scr_mixed_npc_dia(character.dialogue); // insert all the skeleton's dialogue
lastwords = ds_list_size(character.dialogue) -1; // The last index of words to say

