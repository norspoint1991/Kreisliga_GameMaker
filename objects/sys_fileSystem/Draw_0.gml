/// @description Insert description here
// You can write your code in this editor
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_black);
	draw_set_font(fnt_default);



for(var i= 0; i < saveCount; i++) {
	//name
	draw_rectangle( x, y +(i+1)* rowHeight, x+nameWidth, y+(i+2) * rowHeight, true);
	draw_text( x, y +i* rowHeight, ds_grid_get(filegrid, 0, i));
	//teamName
	draw_rectangle( x+ nameWidth, y+(i+1)*rowHeight, x+nameWidth+teamWidth, y+(i+2) * rowHeight, true);
	draw_text( x+ nameWidth, y +i* rowHeight, ds_grid_get(filegrid, 1, i));
	//Datum
	draw_rectangle( x+nameWidth+teamWidth, y+(i+1)*rowHeight, x+nameWidth+teamWidth+dateWidth, y+(i+2) * rowHeight, true);	
	draw_text( x+nameWidth+teamWidth, y +i* rowHeight, string(ds_grid_get(filegrid, 1, i)));
}
