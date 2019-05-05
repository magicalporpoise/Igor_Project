/// @description New npc, headless horseman
// inherit the create event

event_inherited();
image_speed = 0.2;
//name
name = "Headless Horse-less Horsewoman"
voice.font = horse_font;
//dialogue
character = instance_create(x, y, obj_npc);
character.name = self.name;

dialogue_horseman(character.dialogue); // insert all the skeleton's dialogue

// Item variables
holdingitem = false; // was the head given to her?
lastwords = ds_list_size(character.dialogue) -1; // The last index of words to say

// make the player bounce away
barrier = instance_create(x-15, y, obj_bouncer);
barrier.strength = 20;
barrier.visible = false;

