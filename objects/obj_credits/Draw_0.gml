/// @description  Make the text scroll

draw_set_color(c_white);
draw_set_font(fnt_credits);
draw_text(x, y, string_hash_to_newline(text));

y--; //scroll up

