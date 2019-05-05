/// @description  make this item the correct color

if(color == c_red){
    sprite_index = spr_potion_red;
} else if(color == c_blue){
    sprite_index = spr_potion_blue;
} else if(color == c_yellow){
    sprite_index = spr_potion_yellow;
} else if(color == c_purple){
    sprite_index = spr_potion_purple;
} else if(color == c_orange){
    sprite_index = spr_potion_orange;
} else if(color == c_green){
    sprite_index = spr_potion_green;
}

draw_self();

