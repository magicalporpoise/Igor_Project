/// @description  This is what npc's do:
//      talk, give detail to the player (interact with space bar)


if(playerinteract){ // activate the npc
    if(dindex <= lastwords && !voice.speaking){
        voice.words = ds_list_find_value(character.dialogue, dindex)// set the dialogue value
        voice.action++; // activate the speaker
        dindex++;
    }
    if(ds_list_find_value(character.dialogue, dindex) == ""){ // if there is a breath mark
        playerinteract = false;
        dindex++;
    }
}
