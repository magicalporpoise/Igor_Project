/// @description make text appear
//scr_text("TEXT", speed, font);
//creates a  text box that produces text at an x-y coordinate
var txt;
    txt = instance_create(__view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), obj_text);

with(txt){
    padding = 16;
    maxlength = __view_get( e__VW.WView, 0 );
    text = argument0;
    spd = argument1;
    font = argument2;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
    text_width = string_width_ext(string_hash_to_newline(text), font_size + (font_size/2), maxlength);
    text_height = string_height_ext(string_hash_to_newline(text), font_size + (font_size/2), maxlength);
    
    boxwidth = text_width + (padding*2);
    boxheight = text_height + (padding*2);

}

//return txt;
