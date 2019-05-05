/// @description  Handle all character sprites
itemheld.depth = -1;
if(hsp != 0 && vsp == 0 && place_meeting(x, y+1, obj_walkable)) { // moving left or right
    image_speed = .4;
    sprite_index = spr_player_normalmove;
} else if(vsp < 0){ //moving up
    image_speed = .4;
    if(place_meeting(x, y, obj_climb)) {
        sprite_index = spr_player_upstairs;
        itemheld.depth = 1;
    } else {
        sprite_index = spr_player_jumping;
        if(image_index == 2) image_speed = 0;
    }
} else if(vsp > 0){ // moving down
    image_speed = .4;
    if(place_meeting(x, y, obj_climb)){
        sprite_index = spr_player_downstairs;
    }
    else {
        sprite_index = spr_player_falling;
        if(image_index == 2) image_speed = 0;
        if(place_meeting(x, y+vsp, obj_collide)) image_index = 3; //landing
    }
} else {
    image_speed = 0
    sprite_index = spr_player_idle;
}
self.depth = 0;
draw_self();

