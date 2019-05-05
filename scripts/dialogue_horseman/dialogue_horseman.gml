/// @description  List data structure
//      dialogue_skeleton(list);
//          list - the dialogue list to add to
// return the list that contains thedialogue
var cs = argument0; // this list has all the dialogue of a character

// ADD CHAR DIALOGUE
//******************
ds_list_add(cs, name + "#---" + ("HALT!"));
ds_list_add(cs, "IGOR#---" + ("AHH!"));
ds_list_add(cs, "IGOR#---" + ("O-oh, you’re the new guard we hired! #(By 'we' I mean Master and by 'hired' I mean made in a laboratory)"));
ds_list_add(cs, "IGOR#---" + ("...I think you’re supposed to be at the front gate, though...")); // IGOR
ds_list_add(cs, "IGOR#---" + ("Um, just passing through, on business from the Master, very important you know-")); // IGOR
ds_list_add(cs, name + "#---" + ("PASSING THROUGH YOU SAY? WHAT IS YOUR NAME, VISITOR?"));
ds_list_add(cs, name + "#---" + ("I DON’T SEE YOUR NAME ON THE OKAY LIST.")); // pull out list
ds_list_add(cs, name + "#---" + ("YOU CAN’T FOOL ME, INTRUDER, #WITH YOUR TRICKERY WAYS!#HAVE AT THEE!!"));
ds_list_add(cs, "IGOR#---" + ("Okay, going! I’m going!")); // IGOR
ds_list_add(cs, ("")); // breath mark, pause
//ds_list_add(cs, name + "#---" + ("Hello"));


//******************

return cs; // GIVE THE LIST TO ANOTHER FUNCTION
