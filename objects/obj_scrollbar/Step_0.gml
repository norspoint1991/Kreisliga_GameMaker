bar_height = anteil/gesamtheit;
bar_y_start = y + spacing + 1 + (1 - bar_position) * (height - bar_height * height);
bar_y_end = y + (1 - bar_position) * (height - bar_height * height) + (bar_height * height) - (spacing + 1);
if(bar_height < 1){
	if(mouse_x <= obj_SpieltagGUI.boxwidth){
		if(mouse_wheel_down()){
			if(bar_position > 0){
				bar_position -= 0.05;
			}
		}
		if(mouse_wheel_up()){
			if(bar_position < 1){
				bar_position += 0.05;
			}
		}
	}
	//if(mouse_y >= bar_y_start && mouse_y <= bar_y_end){
	//	if(mouse_check_button_pressed(mb_left){ //TODO
			
}