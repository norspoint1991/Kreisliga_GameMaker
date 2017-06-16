/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_default);
draw_set_color(c_black);

draw_text (x , y , "Wie soll dein Team heißen?");

draw_rectangle (x, y + string_height("T") + 10, x +string_width("M")*30 + 5, y + 2*string_height("T") + 10, true);



draw_text (x+ 2, y + string_height("T") + 10, keyboard_string);


if (step_newGame <= 15) {
	draw_text( x + 2 + string_width(keyboard_string) , y + string_height("T") + 10, "_");
}