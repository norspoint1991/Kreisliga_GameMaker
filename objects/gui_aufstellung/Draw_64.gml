if initialisiert {

	//Überschriften
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_black);
	draw_set_font(fnt_spaltenBezeichnungen);
	var xVerschiebung = 0;
	for(var n = 0; n < attributeNumber; n++){
		draw_rectangle(	gui_x + xVerschiebung, gui_y,
						gui_x + xVerschiebung + spaltenBreite[n], gui_y + gui_hoehe, 1);
		draw_text(	gui_x + xVerschiebung + spaltenBreite[n]/2 - string_width(spaltenBezeichnungen[n])/2, 
					gui_y + gui_hoehe/2 - string_height(spaltenBezeichnungen[n])/2, 
					spaltenBezeichnungen[n]);
		xVerschiebung += spaltenBreite[n];
	}
	
	if(xPointClicked != undefined){
		draw_sprite(spr_jersey_small, 0, 
					window_mouse_get_x() - sprite_get_width(spr_jersey_small)/2,
					window_mouse_get_y() - sprite_get_height(spr_jersey_small)/2);
	}
}