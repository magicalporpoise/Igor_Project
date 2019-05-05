/// @description  List data structure
//      dialogue_horseman(list);
//          list - the dialogue list to add to
// return the list that contains thedialogue
var cs = argument0; // this list has all the dialogue of a character

// ADD CHAR DIALOGUE
//******************
ds_list_add(cs, ("Headfull Horseless Horsewoman#---") + "WHAT THE-"); // pause, breath mark
ds_list_add(cs, ("Skelelittle#---Bwahaha! I can move again!"));
ds_list_add(cs, ("Headfull Horseless Horsewoman#---") + "I CAN SEE?! AND CUT THAT OUT!"); 
ds_list_add(cs, ("Skelelittle#---Okay, okay, I’ll behave, beheaded as I am. #Wanna be roommates? I promise I’ll be tidy."));
ds_list_add(cs, ("Headfull Horseless Horsewoman#---") + "HMM. IT IS MUCH EASIER TO DO MY JOB WHEN I CAN SEE THINGS-");
ds_list_add(cs, ("Headfull Horseless Horsewoman#---") + @"SPEAKING OF WHICH- IGOR! YOUR NAME IS ON THE LIST! 
#MY DEEPEST APOLOGIES FOR OBSTRUCTING YOUR PATH!");
ds_list_add(cs, ("Headfull Horseless Horsewoman#---") + "GO RIGHT AHEAD!");
ds_list_add(cs, ("Skelelittle#---Thanks for the help!"));
ds_list_add(cs, ("")); // breath


//******************

return cs; // GIVE THE LIST TO ANOTHER FUNCTION
