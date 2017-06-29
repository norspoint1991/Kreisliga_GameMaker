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
	else row_dropped = undefined;
	if(point_in_rectangle(	window_mouse_get_x(), window_mouse_get_y(),
							x, y,
							x + tabellenBreite, y + rowheight)){
		for (var k = 0; k < attributeNumber; k++){
			if(point_in_rectangle(	window_mouse_get_x(), window_mouse_get_y(),
									x + xVerschiebung, y,
									x + xVerschiebung + zeilenBreite[k], y + rowheight)){
				if(k == 0) {}
				else if(k == 1) grid_sort_stable(playerGrid, 10, true);
				else if(k == 2) grid_sort_stable(playerGrid, 11, true);
				else ds_grid_sort(playerGrid, k, false);
			}
			xVerschiebung += zeilenBreite[k];
		}
	}
}

if(row_clicked != undefined && row_dropped != undefined && row_clicked != row_dropped){
	var positionStored = playerGrid[# 1, row_clicked];
	var positionNumStored = playerGrid[# 10, row_clicked]
	playerGrid[# 1, row_clicked] = playerGrid[# 1, row_dropped];
	playerGrid[# 10, row_clicked] = playerGrid[# 10, row_dropped];
	playerGrid[# 1, row_dropped] = positionStored;
	playerGrid[# 10, row_dropped] = positionNumStored;
	row_clicked = undefined;
	row_dropped = undefined;
	xPointClicked = undefined;
	grid_sort_stable(playerGrid, 10, true);
}
if(row_clicked != undefined && row_clicked == row_dropped){
	row_clicked = undefined;
	row_dropped = undefined;
	xPointClicked = undefined;
}