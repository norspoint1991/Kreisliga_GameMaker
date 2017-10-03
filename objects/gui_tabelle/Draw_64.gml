draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);

//Überschriften
var xOffset = 0;
draw_set_font(fnt_headline);
draw_rectangle(gui_x, gui_y, gui_x + breite, gui_y + headline_height + padding, 1);
draw_text(	gui_x + breite/40, 
			gui_y + padding/2, 
			ueberschrift);
			
for(var i = 0; i < array_length_1d(spaltenBezeichnungen); i++){
	draw_rectangle(	gui_x + xOffset, gui_y + headline_height + padding,
					gui_x + xOffset + column_width[i], 
					gui_y + headline_height + headline2_height + 2*padding, 1);
	draw_set_font(fnt_default);
	draw_text(	gui_x + xOffset + column_width[i]/2 - string_width(spaltenBezeichnungen[i])/2, 
				gui_y + headline_height + padding + padding/2, 
				spaltenBezeichnungen[i]);
	xOffset += column_width[i];
}