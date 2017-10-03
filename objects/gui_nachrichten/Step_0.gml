if(mouse_check_button_released(mb_left)){
	for (var j = 0; j < ds_list_size(nachrListe); j++){
		if(point_in_rectangle(	mouse_x, mouse_y,
								x, y + gui_hoehe + j*rowheight,
								x + breite, y + gui_hoehe + (j+1)*rowheight)){
			with(nachrInhaltGUI){
				gewNachricht = other.nachrListe[|j];
			}
			nachrListe[|j].gelesen = true;
			row_highlighted = j;
		}
	}
}
