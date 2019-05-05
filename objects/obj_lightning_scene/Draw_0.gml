/// @description  Make a flash and then lightning

if(global.electricity) __background_set( e__BG.Visible, 1, false );

var rect = 0;
if(!flash && strike){
    flash = true;
    draw_set_color(c_white);
    rect = draw_rectangle(0,0,room_width, room_height, false)
} else rect = 0;

if(strike) draw_sprite_ext(spr_lightning, -1, obj_lightningrod.x, obj_lightningrod.y, 1.5, 5, 0, c_blue, 1);

