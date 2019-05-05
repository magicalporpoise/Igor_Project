/// @description  Draw the prison cell and skeleton and bars
draw_self();

//draw the skeleton body
draw_sprite(spr_skeletonbody, 0, x, y);
//draw the bars
if(locked) draw_sprite(spr_prisonbars, 0, x, y);
//draw the skull
if(holdingitem) draw_sprite(spr_skull, 0, x+61, y+52); // draw the skull where the head it

