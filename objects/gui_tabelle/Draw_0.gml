draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);

////Überschriften
//draw_set_font(fnt_headline);
//draw_rectangle(x, y, x + breite, y + headline_height + padding, 1);
//draw_text(	x + breite/40, 
//			y + padding/2, 
//			ueberschrift);
draw_set_font(fnt_default);
var xOffset = 0;
for(var i = 0; i < array_length_1d(spaltenBezeichnungen); i++){
	//draw_rectangle(	x + xOffset, y + headline_height + padding,
	//				x + xOffset + column_width[i], 
	//				y + headline_height + headline2_height + 2*padding, 1);
	//draw_text(	x + xOffset + column_width[i]/2 - string_width(spaltenBezeichnungen[i])/2, 
	//			y + headline_height + padding + padding/2, 
	//			spaltenBezeichnungen[i]);
	var key = ds_map_find_first(ligaMap);
	for(var j = 0; j < ds_map_size(ligaMap); j++){
		var text = "";
		switch(i){
			case 0:
				text = string(j+1);
				break;
			case 1:
				text = teamArray[j].teamName;
				break;
			case 2:
				text = string(teamArray[j].spiele);
				break;
			case 3:
				text = string(teamArray[j].siege);
				break;
			case 4:
				text = string(teamArray[j].unentschieden);
				break;
			case 5:
				text = string(teamArray[j].niederlagen);
				break;
			case 6:
				text = string(teamArray[j].tore) + " : " + string(teamArray[j].gegentore);
				break;
			case 7:
				text = string(teamArray[j].tore - teamArray[j].gegentore);
				break;
			case 8:
				text = string(teamArray[j].punkte);
				break;
		}
		draw_rectangle(	x + xOffset, 
						y + headline_height + headline2_height + 2*padding + j*rowheight,
						x + xOffset + column_width[i], 
						y + headline_height + headline2_height + 2*padding + (j+1)*rowheight, 
						1);
		if(i == 1){
			draw_text(	x + xOffset + padding, 
						y + headline_height + headline2_height + 2*padding + (j+0.5)*rowheight - string_height(text)/2, 
						text);
		}
		else{
			draw_text(	x + xOffset + column_width[i]/2 - string_width(text)/2, 
						y + headline_height + headline2_height + 2*padding + (j+0.5)*rowheight - string_height(text)/2, 
						text);
		}
		key = ds_map_find_next(ligaMap, key);	
	}
	xOffset += column_width[i];
}
