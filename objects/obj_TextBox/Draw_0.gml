///On Text Input Draw
//draw a rectangle that represents the text box
//make sure that this rectangle and the collision one match up

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_default);
draw_set_color(c_black);


if ( headline != undefined) 
{
	draw_text (x , y , headline);
	if ( errorAlarm == true){
		draw_set_color( alarmColor)
		draw_rectangle (x, y + string_height("T") + 10, x +string_width("M")*30 + 5, y + 2*string_height("T") + 10, true);
		draw_set_color(c_black);
	}
	else
	{
	draw_rectangle (x, y + string_height("T") + 10, x +string_width("M")*30 + 5, y + 2*string_height("T") + 10, true);
	}
	//draw the text
	draw_text(x, y  + string_height("T") + 10, input);
	if (focus == true && boxStep <= 15) 
	{
		draw_text( x + 1 + string_width(input) , y + string_height("T") + 10, "|");
	}


}
else 
{
		if ( errorAlarm == true){
		draw_set_color( alarmColor)
draw_rectangle (x, y + string_height("T") + 10, x +string_width("M")*30 + 5, y + 2*string_height("T") + 10, true);
		draw_set_color(c_black);
	}
	else
	{
	draw_rectangle (x, y + string_height("T") + 10, x +string_width("M")*30 + 5, y + 2*string_height("T") + 10, true);
	
	}//draw the text
	draw_text(x, y, input);
	if (boxStep <= 15 && focus == true) {
		draw_text( x + 1 + string_width(input) , y + string_height("T") + 10, "|");
	}
}
