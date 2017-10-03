///@description Initialisieriung
breite = window_get_width()*2/3;
hoehe = window_get_height()*3/4;
draw_set_font(fnt_headline);
headline_height = string_height("TEST") + padding;
draw_set_font(fnt_default);
rowheight = string_height("Test") + padding;

gui_hoehe = headline_height + rowheight;

ueberschrift =  date_datetime_string(gewNachricht.eingangsZeit);
ueberschrift2 = gewNachricht.titel;
	
inhaltList = text_split_breite(gewNachricht.inhalt, breite - 2*padding);
	
idVorher = gewNachricht.id;
