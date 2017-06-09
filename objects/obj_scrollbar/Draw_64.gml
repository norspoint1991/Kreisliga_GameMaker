//Scrollbar Umrandung
draw_rectangle(x, y, x + width, y + height, 1);
//Scrollbar
draw_rectangle(	x + spacing + 1,
				bar_y_start, 
				x + width - (spacing + 1), 
				bar_y_end, 0);

