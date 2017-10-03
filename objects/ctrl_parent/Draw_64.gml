/// @description Umrandungen der einzelnen Elemente
// NICHT FÜR NUTZBARE GUI OBJEKTE VERWENDEN
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);

for (var i = 0; i < array_height_2d(umrandung); i++){
	draw_rectangle(umrandung[i, 0], umrandung[i, 1], umrandung[i, 2], umrandung[i, 3], true);
}
