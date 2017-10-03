if(idVorher != 0){
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_black);
	
	draw_set_font(fnt_default);
	for(var i = 0; i < ds_list_size(inhaltList); i++)
	{
		draw_text_custom(	x + padding,
							y + padding + gui_hoehe + i * rowheight,
							inhaltList[|i], 1);
	}
}