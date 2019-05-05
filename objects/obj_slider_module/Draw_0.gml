/// @description  Make the slider produce the correct length
//add middle parts until it is the correct length
if(action or !(x == savex && y == savey)){
    sprite_index = spr_slider_on;
    image_speed = sign(horizontal);
} else {
    image_speed = 0;
    sprite_index = spr_slider_off;
}
    
draw_self(); // draw the module

// draw any middle bits
// length of 2 meens there is a module and an end.
var i; //iterator
for(i = 0; i < length -2; i++){
    if(action or !(x == savex && y == savey)){
        draw_sprite(spr_slider_middle, -1, x+(60*(i+1))-1, y);
    } else draw_sprite(spr_slider_middle, 0, x+(60*(i+1))-1, y);
}

//draw the end piece
if(action or !(x == savex && y == savey)){
    draw_sprite(spr_slider_end, -1, x+(60*(i+1))-1, y);
} else draw_sprite(spr_slider_end, 0, x+(60*(i+1))-1, y);

