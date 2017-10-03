/// @description Insert description here
// You can write your code in this editor

if (clickCounter != 0) {
clickCounter--;
}

if(filegrid != undefined) {
	if(mouse_check_button_released(mb_left)){
			for (var j = 0; j < ds_grid_height(filegrid); j++){
				if(point_in_rectangle(	mouse_x, mouse_y,
										x, y + (j+1)*rowHeight,
										x + breite, y + (j+2)*rowHeight)){
								
									if ( clickCounter == 0) {	
									clickCounter = 10;
									row_clicked = j;
									row_highlighted = j
									overwrite = ds_grid_get(filegrid, 0, j);
									overwrite_line = j;
										if (save == true) {
											with(ctrl_SaveGame) {
												saveButton.text = "Überschreiben?";
												saveButton.counter = 2;
											}
										}
										else {
											with(ctrl_SaveGame) {
												saveButton.text = "Überschreiben?";
												saveButton.buttonWas = saveButton.counter;
												saveButton.counter = 2;												
											}			
										}	
									}
								
									else if (j == row_clicked) {
										event_user(1);	
									}
				}
				else if (! (point_in_rectangle(mouse_x, mouse_y, x, y, x + breite, y + hoehe )))  {
					row_clicked = undefined;
					row_highlighted = undefined;
					if (save == true) {
						with(ctrl_SaveGame) {
							event_user(0);
						}
					}					
				}
		}
	}
}
