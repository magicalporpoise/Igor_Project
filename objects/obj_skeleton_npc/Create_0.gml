/// @description  Making the skeleton npc
event_inherited();
//name
name = "Skeleton"
//dialogue
voice.font = skeleton_font;
character = instance_create(x, y, obj_npc);
character.name = self.name;

dialogue_skeleton(character.dialogue); // insert all the skeleton's dialogue

// Item variables
item = obj_skull;
holdingitem = true; // does the skeleton have his quest item? his head
lastwords = ds_list_size(character.dialogue) -1; // The last index of words to say

//variables for when the player gives the skeleton the keys
wrongkey = false;
rightkey = false;
locked = true;

//cutscene variable
cuts = instance_create(x, y, obj_cutscene);

