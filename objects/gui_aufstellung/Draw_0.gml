if initialisiert {
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_black);

	draw_set_font(fnt_default);
	var xVerschiebung = 0;
	for (var k = 0; k < attributeNumber; k++){
		for (var j = 0; j < ds_grid_height(playerGrid); j++){
			if(j == row_highlighted){
				draw_set_color(c_yellow);
				draw_set_alpha(0.5);
				draw_rectangle(	x + xVerschiebung,					 y + j*rowheight + gui_hoehe,
								x + xVerschiebung + spaltenBreite[k], y + (j+1)*rowheight + gui_hoehe, 0);
				draw_set_color(c_black);
				draw_set_alpha(1);
			}
			draw_rectangle(	x + xVerschiebung,					 y + j*rowheight + gui_hoehe,
							x + xVerschiebung + spaltenBreite[k], y + (j+1)*rowheight + gui_hoehe, 1);
			draw_text(	x + xVerschiebung + spaltenBreite[k]/2 - string_width(string(playerGrid[# k, j]))/2, 
						y + j*rowheight + gui_hoehe + rowheight/2 - string_height(string(playerGrid[# k, j]))/2, 
						string(playerGrid[# k, j]));
		}
		xVerschiebung += spaltenBreite[k];
	}

	//if(xPointClicked != undefined){
	//	draw_sprite(spr_jersey_small, 0, 
	//				mouse_x - sprite_get_width(spr_jersey_small)/2,
	//				mouse_y - sprite_get_height(spr_jersey_small)/2);

	//	//draw_set_color(c_black);		
	//	//draw_text(	mouse_x + xPointClicked + spaltenBreite[0]/2 - string_width(string(playerGrid[# 0, row_clicked]))/2, 
	//	//			mouse_y - string_height(string(playerGrid[# 0, row_clicked]))/2, 
	//	//			string(playerGrid[# 0, row_clicked]));
	//}

	////DEBUG TODO entfernen

	//draw_text(x + tabellenBreite + 20, y + 20, mouse_x);
	//draw_text(x + tabellenBreite + 20, y + 40, mouse_y);
	//draw_text(x + tabellenBreite + 20, y + 60, string(row_clicked));
	//draw_text(x + tabellenBreite + 20, y + 80, string(row_dropped));
	//draw_text(x + tabellenBreite + 20, y + 100, string(tabellenBreite));
}