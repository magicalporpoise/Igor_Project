/// @description  Draw the brewing stand and the potions

draw_self();

if(slot1 != -1){
    if(slot2 != -1){
        with(slot2){
            x = other.x+20;
        } // off to the left
        // logic to create a new potion, use alarms
    }
    // draw the potion
    with(slot1){
        x = other.x-20;
    } // off to the left
}

