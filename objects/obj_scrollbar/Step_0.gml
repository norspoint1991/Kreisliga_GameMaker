bar_height = anteil/gesamtheit;
bar_y1 = y + spacing + 1 + (1 - bar_position) * (height - bar_height * height);
//bar_y2 = y + (1 - bar_position) * (height - bar_height * height) + (bar_height * height) - (spacing + 1);
bar_y2 = bar_y1 + bar_height * height - 2*(spacing + 1);
if(bar_height < 1){
	if(point_in_rectangle(	window_mouse_get_x(), window_mouse_get_y(), 
							scrollwindow_x1, scrollwindow_y1, 
							scrollwindow_x2, scrollwindow_y2))
	{
		if(mouse_wheel_down()) bar_position = clamp(bar_position - (1 - cos(bar_height)), 0, 1);
		if(mouse_wheel_up()) bar_position = clamp(bar_position + (1 - cos(bar_height)), 0, 1);
		if(keyboard_check_released(vk_down)) bar_position = clamp(bar_position - 0.1, 0, 1);
		if(keyboard_check_released(vk_up)) bar_position = clamp(bar_position + 0.1, 0, 1);  
	}
	
	if(point_in_rectangle(	window_mouse_get_x(), window_mouse_get_y(), 
							x, y, x + width, y + height))
	{
		if(mouse_check_button_pressed(mb_left)) bar_clicked = true;
	}
	if(mouse_check_button(mb_left) && bar_clicked){
			bar_y1 = clamp(	window_mouse_get_y(), 
							y + spacing + 1,
							y + spacing + 1 + (height - bar_height * height));
			bar_y2 = bar_y1 + bar_height * height - 2*(spacing + 1);
			bar_position = 1 - ((bar_y1 - y - spacing - 1)/(height - bar_height * height));
	}
	else bar_clicked = false;
}

if(bar_position != bar_position_prev){
	bar_position_prev = bar_position;
	bar_moved = true;
}
else bar_moved = false;