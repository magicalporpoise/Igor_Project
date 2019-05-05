/// @description  Npc's have a lot of dialogue
//create a speaker object to project thru
voice = instance_create(x, y, obj_speaker); // the speaker object  
playerinteract = false;

// create the npc
name = "";
dialogue = ds_list_create(); // their linear dialogue
dindex = 0;  // the index tracking the point in dialogue

