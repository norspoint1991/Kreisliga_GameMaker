if(idVorher != 0){
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_black);

	//Überschrift (Datum)
	draw_set_font(fnt_headline);
	draw_rectangle(	gui_x,					 gui_y,
					gui_x + breite, gui_y + headline_height, 1);
	draw_text(	gui_x + 3*padding, 
				gui_y + headline_height/2 - string_height(ueberschrift)/2, 
				ueberschrift);

	//Überschrift2 (Nachricht.titel)
	draw_set_font(fnt_spaltenBezeichnungen);
	draw_rectangle(	gui_x, gui_y + headline_height,
					gui_x + breite, gui_y + gui_hoehe, 1);
	draw_text_custom(	gui_x + 3*padding, 
						gui_y + headline_height + rowheight/2 - string_height(ueberschrift2)/2, 
						ueberschrift2, 1);
}