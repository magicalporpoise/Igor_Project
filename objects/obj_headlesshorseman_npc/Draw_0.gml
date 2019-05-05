draw_self();

// Changing Sprites based on dialogue
if(dindex == 7){ // read list / swing scythe
    sprite_index = spr_horsemanscythe;
} else if(dindex == 1 || (dindex > 5 && dindex < 7)){
    sprite_index = spr_horseman_talk;
}else sprite_index = spr_headlesshorseman;

if (holdingitem) {
    //perform the special action that occurs when reaching the end up the dialogue
    // For the horseman:
    // get the new head
    // repeat the last set of lines over and over
    
    // create a new character in place
    // character with horseman + skull character
    draw_sprite(spr_skull, 0, x, y);
}

if(obj_mixed_npc.dindex > 5) sprite_index = spr_horsemanscythe;

