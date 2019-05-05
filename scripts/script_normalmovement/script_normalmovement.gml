/// @description Using player input, allow them to move around
script_getInput();

//horizontal movement
dir = key_right - key_left;
hm = 0.8 * dir;
//vertical movement
vm = key_down - key_up;

//right or left
if(hm != 0){
    hsp += hm; //accelerate
    if(abs(hsp) >= 8) hsp = sign(hsp)*8; //max speed in either direction
} else {
    if(hsp != 0) hsp = hsp / 1.1; //deccelerate
    if(abs(hsp) < 1) hsp = 0;
}

//up or down on stairs
if(vm != 0 && place_meeting(x, y+1, obj_climb) && place_meeting(x, y, obj_climb)){
    vsp = 5*vm; //moving
    //image_speed = .4;
} else if(vm < 0 && place_meeting(x, y+5, obj_walkable)){
    vsp = jumpheight; //jump
    audio_play_sound(sound_jump, 1, false);
} else if(place_meeting(x, y, obj_climb)){
    vsp = 0; //stay on stairs
    //image_speed = 0;
}


//add logic to flip player sprite
if(sign(image_xscale) != sign(hsp) && hsp != 0){
    image_xscale *= -1;
}


// everything using spacebar
if(key_space){ // space bar interactions: items, switches
    if(itemheld != -1){ //drop an item, or pick up an item
        script_dropitem();
    } else if(place_meeting(x, y, obj_item)){
        var pu = script_pickupitem(); // see if the item was picked up
        if (pu == noone) {
            global.inventoryvisible = true;
            state = states.inventory;
        }
    } else if(place_meeting(x, y, obj_npc)){
        var npc = instance_nearest(x, y, obj_npc);
        npc.playerinteract = true;
    } else if(place_meeting(x, y, obj_trigger)){ //activate triggers
        var trigger = instance_nearest(x, y, obj_trigger);
        if(trigger.key == 0) with(trigger){ on = !on; image_xscale *= -1;} // flip the switch
    } else { // otherwise, open inventory
        //toggle inventory
        global.inventoryvisible = true;
        state = states.inventory;
    }
    // now, only one can happen at a time
}

//collision
script_moveandcollide();

// make item follow you
if(itemheld != -1){
    script_itemfollow();
}
