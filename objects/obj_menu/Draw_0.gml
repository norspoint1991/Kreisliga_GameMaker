draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_default);
draw_set_color(c_black);

var m;
for (m = 0; m < array_length_1d(menu); m += 1)
{
	if (m == mpos) draw_sprite(sprite_index, 1, x , y + (m * space));
	else draw_sprite(sprite_index, 0, x , y + (m * space));
	draw_text(x + 16, y + (m * space), string(menu[m]));
}

