/// @description  if the action is on, do the action

if (action){
    if((distance) > abs(savex - x)) x += 4*sign(horizontal);
    if((distance) > abs(y - savey)) y += 4*sign(vertical);
} else {
    if(y != savey) y -= sign(vertical); // else return to original position
    if(x != savex) x -= sign(horizontal);
}

// update the size of the hit box
if(collisionsize != length){
    collision.image_xscale = length;
}
//find the center of the mass
collision.x = x + (60*length)/2 - 30;


