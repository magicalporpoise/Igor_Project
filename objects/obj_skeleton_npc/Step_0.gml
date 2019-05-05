/// @description  If the player interacts with this npc

// player interact with npc
//      has the character finished what they were need to say and not currently talking?
//          if not, load up the next dialogue into the speaker
//          make the speaker speak
//          increment dindex

// Cutscene that pans towards the skeleton
if(instance_exists(obj_cutscene)){
    if(keyboard_check_pressed(vk_space) && cuts.activate_scene)
        cuts.scene_finished = true; // end the scene
}
if(dindex == 1 && instance_exists(obj_cutscene) && keyboard_check_pressed(vk_space)){
    cuts.activate_scene = true; // start the scene after first dialogue
}

// make camera pan up to show skelekey
if(dindex > 10 and dindex < 12){
    __view_set( e__VW.Object, view_current, obj_skelekey );
    __view_set( e__VW.VSpeed, view_current, 4 );
} else{
    __view_set( e__VW.Object, view_current, obj_player );
    __view_set( e__VW.VSpeed, view_current, -1 );
}


//make the skeleton unable to speak to the player when reaching the end of first part
if(dindex == 7){
    playerinteract = false;
    // the player brings the wrong key to the door
    var thatkey = instance_nearest(x, y, obj_key);
    if(place_meeting(x, y, obj_key)){
        if(thatkey != noone && thatkey.exists && !rightkey){
            with(thatkey) instance_destroy();
            wrongkey = true;
            // set dindex to the correct index of the tree
            playerinteract = true;
            dindex = 9;
            lastwords = 13; // change the ending
        }
    }
    
    // allows the skeleton to be unlocked, right key
    if(place_meeting(x, y, obj_skelekey)){
        if(obj_skelekey.exists && !wrongkey) {
            with(obj_skelekey) instance_destroy();
            rightkey = true;
            locked = false;
            //unlock the doors, set the dindex to the correct dialogue
            dindex = 14;
            playerinteract = true;
        }
    }
}


// then speaking script, makes the text appear
npc_speak();

if (dindex > lastwords && holdingitem) {
        //perform the special action that occurs when reaching the end up the dialogue
        // For the skeleton:
        // give the player the skull item
        var quest = instance_create(x+61, y+40, obj_skull); //test if it works
        quest.hsp = sign(obj_player.x - self.x) * 10; // throw it towards the player
        holdingitem = false;
}

