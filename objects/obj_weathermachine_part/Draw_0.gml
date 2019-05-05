/// @description  If fixed, switch sprites and do the necessary action for that animation

switch(part_type){
    case 1: sprite_index = spr_weathermachine_part1; break;
    case 2: sprite_index = spr_weathermachine_part2; break;
    case 3: sprite_index = spr_weathermachine_part3; break;
}

if(i_am_fixed)image_index = 1; // switch to green
// check if global vars activated
//if(global.weather) image_speed = 1;// FREAK OUT!

draw_self();

