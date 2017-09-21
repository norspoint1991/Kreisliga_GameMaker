/// @description Insert description here
// You can write your code in this editor

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_black);
	draw_set_font(fnt_default);



	draw_rectangle( x, y, x+nameWidth, y+rowHeight, true);
	draw_text( x + nameWidth/2 -string_width("Name")/2, y+ rowHeight/2 - string_height("Name")/2 , "Name");
	draw_rectangle( x+ nameWidth, y, x+nameWidth+teamWidth, y+rowHeight, true);
	draw_text( x+ nameWidth + teamWidth/2 - string_width("TeamName")/2 , y + rowHeight/2 - string_height("TeamName")/2 ,"Teamname");
	//Datum
	draw_rectangle( x+nameWidth+teamWidth, y, x+nameWidth+teamWidth+dateWidth, y+rowHeight, true);	
	draw_text( x+nameWidth+teamWidth + dateWidth/2 - string_width("Gespeichert am")/2, y  + rowHeight/2 - string_height("Gespeichert am")/2 , "Gespeichert am");
