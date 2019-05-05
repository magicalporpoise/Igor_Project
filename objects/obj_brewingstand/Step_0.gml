/// @description  make the stand grab the potion
if(!brewing){
    if(place_meeting(x, y, obj_potion)){
        if(slot1 == -1){
            slot1 = instance_nearest(x, y, obj_potion);
            if(!slot1.exists) slot1 = -1;
            if(slot1 == slot2) slot1 = -1;
        } 
        if(slot2 == -1){
            slot2 = instance_nearest(x, y, obj_potion);
            if(!slot2.exists) slot2 = -1;
            if(slot2 == slot1) slot2 = -1;
        }
        
        if(slot1 != -1 && slot2 != -1){
            brewing = true;
            alarm[0] = 100; // set the alarm to pop a new potion out
            image_speed = 0.5; // animate
        }
    }
    
    // make the potions come back to the player
    if(slot1 != -1){
        if(!slot1.exists) slot1 = -1;
        if(slot1 == slot2) slot1 = -1;
    }
    if(slot2 != -1){
         if(!slot2.exists) slot2 = -1;
         if(slot2 == slot1) slot2 = -1;
    }
}

//make it sp that the player can't pick up the items
if(brewing){
    with(slot1) {
        exists = false;
        hsp = 0;
        vsp = 0;
    }
    with(slot2) {
        exists = false;
        hsp = 0;
        vsp = 0;
    }
}

