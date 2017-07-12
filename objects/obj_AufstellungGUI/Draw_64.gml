if initialisiert {
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_black);

	//Überschriften
	draw_set_font(fnt_handwriting_headline);
	var xVerschiebung = 0;
	for(var n = 0; n < attributeNumber; n++){
		draw_rectangle(	x + xVerschiebung,					 y,
						x + xVerschiebung + zeilenBreite[n], y + rowheight, 1);
		draw_text(	x + xVerschiebung + zeilenBreite[n]/2 - string_width(spaltenBezeichnungen[n])/2, 
					y + rowheight/2 - string_height(spaltenBezeichnungen[n])/2, 
					spaltenBezeichnungen[n]);
		xVerschiebung += zeilenBreite[n];
	}

	draw_set_font(fnt_handwriting);
	xVerschiebung = 0;
	for (var k = 0; k < attributeNumber; k++){
		for (var j = 0; j < ds_grid_height(playerGrid); j++){
			draw_rectangle(	x + xVerschiebung,					 y + (j+1)*rowheight,
							x + xVerschiebung + zeilenBreite[k], y + (j+2)*rowheight, 1);
			draw_text(	x + xVerschiebung + zeilenBreite[k]/2 - string_width(string(playerGrid[# k, j]))/2, 
						y + (j+1)*rowheight + rowheight/2 - string_height(string(playerGrid[# k, j]))/2, 
						string(playerGrid[# k, j]));
		}
		xVerschiebung += zeilenBreite[k];
	}

	if(xPointClicked != undefined){
		draw_set_color(c_blue);
		draw_rectangle(	window_mouse_get_x() + xPointClicked, 
						window_mouse_get_y() - rowheight/2,
						window_mouse_get_x() + xPointClicked + zeilenBreite[0], 
						window_mouse_get_y() + rowheight/2, false);
		draw_set_color(c_black);
		draw_rectangle(	window_mouse_get_x() + xPointClicked, 
						window_mouse_get_y() - rowheight/2,
						window_mouse_get_x() + xPointClicked + zeilenBreite[0], 
						window_mouse_get_y() + rowheight/2, true);		
		draw_text(	window_mouse_get_x() + xPointClicked + zeilenBreite[0]/2 - string_width(string(playerGrid[# 0, row_clicked]))/2, 
					window_mouse_get_y() - string_height(string(playerGrid[# 0, row_clicked]))/2, 
					string(playerGrid[# 0, row_clicked]));
	}

	////DEBUG TODO entfernen

	//draw_text(x + tabellenBreite + 20, y + 20, window_mouse_get_x());
	//draw_text(x + tabellenBreite + 20, y + 40, window_mouse_get_y());
	//draw_text(x + tabellenBreite + 20, y + 60, string(row_clicked));
	//draw_text(x + tabellenBreite + 20, y + 80, string(row_dropped));
	//draw_text(x + tabellenBreite + 20, y + 100, string(tabellenBreite));
}