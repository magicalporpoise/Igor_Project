draw_sprite_ext(spr_meater_back, 0, x, y, 1, 1, image_angle, c_white, 1);

if(meat != global.meater){
    meat = global.meater;
    progress = meat/meatgoal;
    mybar.image_yscale = progress; 
    mybar.image_angle = self.image_angle;
}    
with(mybar) draw_self();

draw_self();

