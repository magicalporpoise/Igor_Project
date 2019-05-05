/// @description  List data structure
//      dialogue_horseman(list);
//          list - the dialogue list to add to
// return the list that contains thedialogue
var cs = argument0; // this list has all the dialogue of a character

// ADD CHAR DIALOGUE
//******************
ds_list_add(cs, name + "#---" + ("Psst, hey!"));
ds_list_add(cs, name + "#---" + ("Yeah, yeah you. Mind helpin’ this ol’ bag o’ bones out?"));
ds_list_add(cs, ("")); // pause, breath mark
ds_list_add(cs, name + "#---" + ("I’ve been stuck in this cage for ages! Caages! Would love to take a walk, stretch my legs, what’s left of ‘em."));
ds_list_add(cs, "IGOR#---" + ("I- I’m not sure I should be letting prisoners out, Master would probably-")); // IGOR
ds_list_add(cs, name + "#---" + ("Pssh, look at me. I’m harmless! Armless, too. What would I even do?"));
ds_list_add(cs, "IGOR#---" + ("Uh, well...okay, I guess.")); //IGOR
ds_list_add(cs, name + "#---" + ("Aight! See the door key right over there? Just slot it right in!"));
ds_list_add(cs, ("")); // pause, breath mark pos 7
ds_list_add(cs, name + "#---" + ("No no no! That was the key for permanently locking the doors!")); //player picks the wrong key
ds_list_add(cs, name + "#---" + ("I was talking about the key up there! Above the cage!"));
ds_list_add(cs, name + "#---" + ("Ah, well. Hey, take this instead!"));
ds_list_add(cs, name + "#---" + ("Hey buddy, don’t lose your head. #Do me a favor- if ya can find me #a body that’s in need of a noggin, just drop me off there. #I’ll fit right in!"));
ds_list_add(cs, ("")); // pause, breath mark, pos 12
ds_list_add(cs, name + "#---" + ("Yes! Free, free at last-"));// player picks right one
ds_list_add(cs, name + "#---" + ("Oh. Wait, I need muscles to move..."));
ds_list_add(cs, name + "#---" + ("Hey, mind doing me a favor?"));
ds_list_add(cs, name + "#---" + ("If ya can find me a body that’s #in need of a noggin, just drop me off there. #I’ll fit right in!"));
ds_list_add(cs, ("")); // pause, breath mark

//******************

return cs; // GIVE THE LIST TO ANOTHER FUNCTION
