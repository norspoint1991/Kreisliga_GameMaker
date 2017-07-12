
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);

//Überschriften
draw_set_font(fnt_headline);
draw_rectangle(x, y, x + width, y + headline_height + padding, 1);
draw_text(	x + width/40, 
			y + padding/2, 
			headline);
draw_set_font(fnt_default);
var xOffset = 0;
for(var i = 0; i < array_length_1d(headline2); i++){
	draw_rectangle(	x + xOffset, y + headline_height + padding,
					x + xOffset + column_width[i], 
					y + headline_height + headline2_height + 2*padding, 1);
	draw_text(	x + xOffset + column_width[i]/2 - string_width(headline2[i])/2, 
				y + headline_height + padding + padding/2, 
				headline2[i]);
	var key = ds_map_find_first(ligaMap);
	for(var j = 0; j < ds_map_size(ligaMap); j++){
		var text = "";
		switch(i){
			case 0:
				text = string(1);
				break;
			case 1:
				text = ligaMap[? key].teamName;
				break;
			case 2:
				text = string(ligaMap[? key].spiele);
				break;
			case 3:
				text = string(ligaMap[? key].siege);
				break;
			case 4:
				text = string(ligaMap[? key].unentschieden);
				break;
			case 5:
				text = string(ligaMap[? key].niederlagen);
				break;
			case 6:
				text = string(ligaMap[? key].tore) + " : " + string(ligaMap[? key].gegentore);
				break;
			case 7:
				text = string(ligaMap[? key].tore - ligaMap[? key].gegentore);
				break;
			case 8:
				text = string(ligaMap[? key].punkte);
				break;
		}
		draw_rectangle(	x + xOffset, 
						y + headline_height + headline2_height + 2*padding + j*row_height,
						x + xOffset + column_width[i], 
						y + headline_height + headline2_height + 2*padding + (j+1)*row_height, 
						1);
		if(i == 1){
			draw_text(	x + xOffset + padding, 
						y + headline_height + headline2_height + 2*padding + (j+0.5)*row_height - string_height(text)/2, 
						text);
		}
		else{
			draw_text(	x + xOffset + column_width[i]/2 - string_width(text)/2, 
						y + headline_height + headline2_height + 2*padding + (j+0.5)*row_height - string_height(text)/2, 
						text);
		}
		key = ds_map_find_next(ligaMap, key);	
	}
	xOffset += column_width[i];
}