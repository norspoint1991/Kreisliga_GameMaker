if !initialisiert
{
	draw_set_font(fnt_handwriting);
	rowheight = string_height("Test") + padding;
	//Breite der einzelnen Spalten bestimmen
	draw_set_font(fnt_handwriting_headline);
	for (var n = 0; n < attributeNumber; n++){ zeilenBreite[n] = string_width(spaltenBezeichnungen[n]) + padding;}

	draw_set_font(fnt_handwriting);
	for (var k = 0; k < attributeNumber; k++){
		for (var j = 0; j < ds_grid_height(playerGrid); j++){
			zeilenBreite[k] = max(zeilenBreite[k], string_width(string(playerGrid[# k, j])) + padding);
		}
	}
	grid_sort_stable(playerGrid, posSortingColumn, true);
	tabellenBreite = array_sum(zeilenBreite);
	tabellenHeohe = rowheight * (attributeNumber + 1)
	initialisiert = true;
}

var xVerschiebung = 0;

if(mouse_check_button_pressed(mb_left)){
	if(point_in_rectangle(	window_mouse_get_x(), window_mouse_get_y(),
							x, y + rowheight,
							x + zeilenBreite[0], y + (ds_grid_height(playerGrid) + 1)*rowheight)){
		for (var j = 0; j < ds_grid_height(playerGrid); j++){
			if(point_in_rectangle(	window_mouse_get_x(), window_mouse_get_y(),
									x, y + (j+1)*rowheight,
									x + zeilenBreite[0], y + (j+2)*rowheight)){
				row_clicked = j;
				xPointClicked = x - window_mouse_get_x();
			}
		}
	}
	else row_clicked = undefined;
}
if(mouse_check_button_released(mb_left)){
	if(point_in_rectangle(	window_mouse_get_x(), window_mouse_get_y(),
							x, y + rowheight,
							x + zeilenBreite[0], y + (ds_grid_height(playerGrid) + 1)*rowheight)){
		for (var j = 0; j < ds_grid_height(playerGrid); j++){
			if(point_in_rectangle(	window_mouse_get_x(), window_mouse_get_y(),
									x, y + (j+1)*rowheight,
									x + zeilenBreite[0], y + (j+2)*rowheight)){
				row_dropped = j;
			}
		}
	}
	else{
		row_dropped = undefined;
		row_clicked = undefined;
		xPointClicked = undefined;
	}	
	if(point_in_rectangle(	window_mouse_get_x(), window_mouse_get_y(),
							x, y,
							x + tabellenBreite, y + rowheight)){
		for (var k = 0; k < attributeNumber; k++){
			if(point_in_rectangle(	window_mouse_get_x(), window_mouse_get_y(),
									x + xVerschiebung, y,
									x + xVerschiebung + zeilenBreite[k], y + rowheight)){
				if(spaltenBezeichnungen[k] == "Name") {}
				else if(spaltenBezeichnungen[k] == "Pos") grid_sort_stable(playerGrid, posSortingColumn, true);
				else if(spaltenBezeichnungen[k] == "B.Pos") grid_sort_stable(playerGrid, favPosSortingColumn, true);
				else ds_grid_sort(playerGrid, k, false);
			}
			xVerschiebung += zeilenBreite[k];
		}
	}
}

if(row_clicked != undefined && row_dropped != undefined && row_clicked != row_dropped){
	var positionStored = playerGrid[# 1, row_clicked];
	var positionNumStored = playerGrid[# posSortingColumn, row_clicked]
	var keyClicked = string_replace(playerGrid[# 0, row_clicked], " ", "");
	var keyDropped = string_replace(playerGrid[# 0, row_dropped], " ", "");
	playerGrid[# 1, row_clicked] = playerGrid[# 1, row_dropped];
	playerGrid[# posSortingColumn, row_clicked] = playerGrid[# posSortingColumn, row_dropped];
	team.spielerMap[? keyClicked].position = playerGrid[# 1, row_dropped];
	playerGrid[# 1, row_dropped] = positionStored;
	playerGrid[# posSortingColumn, row_dropped] = positionNumStored;
	team.spielerMap[? keyDropped].position = positionStored;
	row_clicked = undefined;
	row_dropped = undefined;
	xPointClicked = undefined;
	grid_sort_stable(playerGrid, posSortingColumn, true);
}
if(row_clicked != undefined && row_clicked == row_dropped){
	row_clicked = undefined;
	row_dropped = undefined;
	xPointClicked = undefined;
}