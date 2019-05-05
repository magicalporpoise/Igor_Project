/// @description  Handle flipping and cutscene
// near the player
if(place_meeting(x, y, obj_player)){
    // space is pressed
    if(keyboard_check_pressed(vk_space) and global.weather){
        // flip the switch
        global.flipped = !global.flipped;
        image_xscale *= -1;
    }
}

if(global.flipped) {image_index = 0;} // on
else image_index = 1; // off

