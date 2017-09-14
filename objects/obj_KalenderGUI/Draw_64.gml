
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);

//Überschriften
draw_set_font(fnt_headline);
draw_rectangle(x, y, x + width, y + headline_height + padding, 1);
draw_text(	x + width/40, 
			y + padding/2, 
			headline);
draw_set_font(fnt_default);
for(var i = 0; i < 7; i++){
	draw_rectangle(	x + i*column_width, y + headline_height + padding,
					x + (i+1)*column_width, 
					y + headline_height + weekdays_height + 2*padding, 1);
	draw_text(	x + (i + 0.5)*column_width - string_width(weekdays[i])/2, 
				y + headline_height + padding + padding/2, 
				weekdays[i]);
}
var k = 0;
i = 0;
while(k < 6){
	draw_rectangle(	x + i*column_width, 
					y + headline_height + weekdays_height + 2*padding + k*row_height,
					x + (i+1)*column_width, 
					y + headline_height + weekdays_height + 2*padding + (k+1)*row_height, 1);
	//draw_text(	x + i*column_width, 
	//			y + headline_height + weekdays_height + 2*padding + j*row_height,
	//			kalenderEintraeg[i, j]);
	if (i == 6) { k++; i = 0;}
	else { i++;}
}