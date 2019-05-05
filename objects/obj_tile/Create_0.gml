/// @description  This tiles will change their image_indeex based on what they are adjecent to

image_speed = 0;

var isleft, isright, isup, isdown;
isleft = place_meeting(x-5, y, obj_tile);
isright = place_meeting(x+5, y, obj_tile);
isup = place_meeting(x, y-5, obj_tile);
isdown = place_meeting(x, y+5, obj_tile);

// set the image index to the correct tile
if(isleft){ // possible indeces: 2.3.7.9.10.11.13.14
    if(isright){
        if(isup){
            if(isdown){
                image_index = 7; // fully surrounded
            } else image_index = 9; // left, right and up 
        } else if(isdown){
            image_index = 11; //left, right and down
        } else image_index = 2; // to the right and left only 
    } else if(isup){
        if(isdown) image_index = 10; //left up and down
        else image_index = 14; //left and up
    } else if(isdown){
        image_index = 13; //left and down
    } else image_index = 3; //only 1 to left
    
} else if(isright){ //possible indeces: 4.8.12.15
    if(isup){
        if(isdown) image_index = 8; //right up and down
        else image_index = 15; //right and up
    } else if(isdown){
        image_index = 12; // right and down
    } else image_index = 4; //only one on right
} else if(isup){ //possible indeces: 1.6
    if(isdown) image_index = 1; 
    else image_index = 6; //only up
}else if(isdown){ //possible indeces: 5
    image_index = 5; 
}
// defualt is image_index = 0, as in all by itself

