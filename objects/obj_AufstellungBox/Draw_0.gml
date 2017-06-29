draw_set_halign(fa_left);
draw_set_valign(fa_top);



//draw_set_color(c_gray);
//draw_rectangle(x, y, x + boxwidth, y + boxheight, 0);

//draw_set_color(c_green);
//draw_rectangle(x, y, x + boxwidth, y + boxheight/20, 0);

//draw_set_color(c_black);
//draw_rectangle(x, y, x + boxwidth, y + boxheight/20, 1);
//draw_rectangle(x, y + boxheight/20, boxwidth, y + boxheight, 1);

//Überschriften
draw_set_font(fnt_handwriting_headline);
var xVerschiebung = 0;
for(var n = 0; n < attributeNumber; n++){
	draw_rectangle(	x + xVerschiebung,					 y,
					x + xVerschiebung + zeilenBreite[n], y + rowheight, 1);
	draw_text(	x + xVerschiebung + zeilenBreite[n]/2 - string_width(spaltenBezeichnungen[n])/2, 
				y + rowheight/2 - string_height(spaltenBezeichnungen[n])/2, 
				spaltenBezeichnungen[n]);
	xVerschiebung += zeilenBreite[n];
}

draw_set_font(fnt_handwriting);
xVerschiebung = 0;
for (var k = 0; k < attributeNumber; k++){
	for (var j = 0; j < ds_grid_height(playerGrid); j++){
		draw_rectangle(	x + xVerschiebung,					 y + (j+1)*rowheight,
						x + xVerschiebung + zeilenBreite[k], y + (j+2)*rowheight, 1);
		draw_text(	x + xVerschiebung + zeilenBreite[k]/2 - string_width(string(playerGrid[# k, j]))/2, 
					y + (j+1)*rowheight + rowheight/2 - string_height(string(playerGrid[# k, j]))/2, 
					string(playerGrid[# k, j]));
	}
	xVerschiebung += zeilenBreite[k];
}
