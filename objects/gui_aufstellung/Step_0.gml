var xVerschiebung = 0;

if(mouse_check_button_pressed(mb_left)){
	if(point_in_rectangle(	mouse_x, mouse_y,
							x, y + rowheight,
							x + breite, y + (ds_grid_height(playerGrid) + 1)*rowheight)){
		for (var j = 0; j < ds_grid_height(playerGrid); j++){
			if(point_in_rectangle(	mouse_x, mouse_y,
									x, y + (j+1)*rowheight,
									x + breite, y + (j+2)*rowheight)){
				row_clicked = j;
				xPointClicked = x - mouse_x;
			}
		}
	}
	else row_clicked = undefined;
}

if(row_clicked != undefined){
	if(point_in_rectangle(	mouse_x, mouse_y,
							x, y + rowheight,
							x + breite, y + (ds_grid_height(playerGrid) + 1)*rowheight)){
		for (var j = 0; j < ds_grid_height(playerGrid); j++){
			if(point_in_rectangle(	mouse_x, mouse_y,
									x, y + (j+1)*rowheight,
									x + breite, y + (j+2)*rowheight)){
				row_highlighted = j;
			}
		}
	}
	else{ row_highlighted = undefined;}
}

if(mouse_check_button_released(mb_left)){
	if(point_in_rectangle(	mouse_x, mouse_y,
							x, y + rowheight,
							x + breite, y + (ds_grid_height(playerGrid) + 1)*rowheight)){
		for (var j = 0; j < ds_grid_height(playerGrid); j++){
			if(point_in_rectangle(	mouse_x, mouse_y,
									x, y + (j+1)*rowheight,
									x + breite, y + (j+2)*rowheight)){
				row_dropped = j;
			}
		}
	}
	else{
		row_dropped = undefined;
		row_clicked = undefined;
		xPointClicked = undefined;
	}	
	if(point_in_rectangle(	mouse_x, mouse_y,
							x, y,
							x + breite, y + rowheight)){
		for (var k = 0; k < attributeNumber; k++){
			if(point_in_rectangle(	mouse_x, mouse_y,
									x + xVerschiebung, y,
									x + xVerschiebung + spaltenBreite[k], y + rowheight)){
				if(spaltenBezeichnungen[k] == "Name") {}
				else if(spaltenBezeichnungen[k] == "Pos") grid_sort_stable(playerGrid, posSortingColumn, true);
				else if(spaltenBezeichnungen[k] == "B.Pos") grid_sort_stable(playerGrid, favPosSortingColumn, true);
				else ds_grid_sort(playerGrid, k, false);
			}
			xVerschiebung += spaltenBreite[k];
		}
	}
	row_highlighted = undefined;
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