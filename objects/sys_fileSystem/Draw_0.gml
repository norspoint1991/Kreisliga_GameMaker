/// @description Insert description here
// You can write your code in this editor
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_black);
	draw_set_font(fnt_default);


if (filegrid != undefined) {

	for(var i= 0; i < saveCount; i++) {
		if(i == row_highlighted){
		draw_set_color(c_orange);
		draw_set_alpha(0.6);
		draw_rectangle(	x , y + (i+1)*rowHeight,
								x + breite , y + (i+2)*rowHeight, 0);
				draw_set_color(c_black);
				draw_set_alpha(1);
			}
		//name
		draw_rectangle( x, y +(i+1)* rowHeight, x+nameWidth, y+(i+2) * rowHeight, true);
		draw_text( x, y +(i+1)* rowHeight, ds_grid_get(filegrid, 0, i));
		//teamName
		draw_rectangle( x+ nameWidth, y+(i+1)*rowHeight, x+nameWidth+teamWidth, y+(i+2) * rowHeight, true);
		draw_text( x+ nameWidth, y +(i+1)* rowHeight, ds_grid_get(filegrid, 1, i));
		//Datum
		draw_rectangle( x+nameWidth+teamWidth, y+(i+1)*rowHeight, x+nameWidth+teamWidth+dateWidth, y+(i+2) * rowHeight, true);	
		draw_text( x+nameWidth+teamWidth, y +(i+1)* rowHeight, string(ds_grid_get(filegrid, 2, i)));
	}
}