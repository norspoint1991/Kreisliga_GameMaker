/// @description Insert description here
// You can write your code in this editor

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_black);
	draw_set_font(fnt_default);



	draw_rectangle( gui_x, gui_y, gui_x+nameWidth, gui_y+rowHeight, true);
	draw_text( gui_x + nameWidth/2 -string_width("Name")/2, gui_y+ rowHeight/2 - string_height("Name")/2 , "Name");
	draw_rectangle( gui_x+ nameWidth, gui_y, gui_x+nameWidth+teamWidth, gui_y+rowHeight, true);
	draw_text( gui_x+ nameWidth + teamWidth/2 - string_width("TeamName")/2 , gui_y + rowHeight/2 - string_height("TeamName")/2 ,"Teamname");
	//Datum
	draw_rectangle( gui_x+nameWidth+teamWidth, gui_y, gui_x+nameWidth+teamWidth+dateWidth, gui_y+rowHeight, true);	
	draw_text( gui_x+nameWidth+teamWidth + dateWidth/2 - string_width("Gespeichert am")/2, gui_y  + rowHeight/2 - string_height("Gespeichert am")/2 , "Gespeichert am");
	