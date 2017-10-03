draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);

//Überschrift
draw_set_font(fnt_headline);
draw_rectangle(	gui_x,					 gui_y,
				gui_x + breite, gui_y + headline_height, 1);
draw_text(	gui_x + 3*padding, 
			gui_y + headline_height/2 - string_height(ueberschrift)/2, 
			ueberschrift);
draw_set_font(fnt_spaltenBezeichnungen);
var xVerschiebung = 0;
for(var n = 0; n < array_length_1d(spaltenBezeichnungen); n++){
	draw_rectangle(	gui_x + xVerschiebung, gui_y + headline_height,
					gui_x + xVerschiebung + spaltenBreite[n], gui_y + headline_height + rowheight, 1);
	draw_text(	gui_x + xVerschiebung + spaltenBreite[n]/2 - string_width(spaltenBezeichnungen[n])/2, 
				gui_y + headline_height + rowheight/2 - string_height(spaltenBezeichnungen[n])/2, 
				spaltenBezeichnungen[n]);
	xVerschiebung += spaltenBreite[n];
}

////Nachrichten Inhalt
//draw_rectangle(	gui_x + xVerschiebung, gui_y + headline_height,
//				breite - 1, gui_y + hoehe - headline_height - 1, 1);
