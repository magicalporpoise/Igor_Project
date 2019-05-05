/// @description  If the player interacts with this npc

// player interact with npc
//      has the character finished what they were need to say and not currently talking?
//          if not, load up the next dialogue into the speaker
//          make the speaker speak
//          increment dindex

//activate initially based on proximity
if(dindex < 3 && distance_to_point(obj_player.x, obj_player.y) < 120){
    playerinteract = true;
}

npc_speak();

if(dindex > lastwords && !holdingitem){
    dindex = lastwords-2; // put the dialogue, on her last dialogue
} else if (holdingitem) dindex = lastwords + 1;

if(place_meeting(x, y, obj_skull)){
    with(instance_nearest(x, y, obj_skull)) {
        if(exists) {
            other.holdingitem = true;
            instance_destroy();
        }
    }
    
    obj_mixed_npc.playerinteract = true;;
    
    with(barrier) instance_destroy();
}



