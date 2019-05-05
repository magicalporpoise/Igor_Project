/// @description Add letters over time

if(time < text_length){
    time += spd;
    print = string_copy(text, 0, time);
}

///Draw the box and text

//draw_set_alpha(alpha)
//if(alpha < 1) alpha += spd/10; else alpha = 1; //fade in relative to text speed

//update draw position
x = __view_get( e__VW.XView, view_current );
y = __view_get( e__VW.YView, view_current );

//draw the box
draw_set_font(font);
draw_set_color(c_white)
draw_rectangle(x, y, x+boxwidth, y+boxheight, 0);

//draw the outline
draw_set_color(c_black)
draw_rectangle(x, y, x+boxwidth, y+boxheight, 1);

//set text placement
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text_ext
(
    x+padding,
    y+padding,
    string_hash_to_newline(print),
    font_size + (font_size/2),
    maxlength
);

