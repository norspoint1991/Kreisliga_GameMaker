draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);

var xVerschiebung = 0;
for(var n = 0; n < array_length_1d(spaltenBezeichnungen); n++){
	for(var m = 0; m < ds_list_size(nachrListe); m++){
		draw_rectangle(	x + xVerschiebung, y + gui_hoehe + m*rowheight,
						x + xVerschiebung + spaltenBreite[n], y + gui_hoehe + (m+1)*rowheight, 1);
		if(m == row_highlighted){
			draw_set_color(c_yellow);
			draw_set_alpha(0.5);
			draw_rectangle(	x + xVerschiebung, y + gui_hoehe + m*rowheight,
							x + xVerschiebung + spaltenBreite[n], y + gui_hoehe + (m+1)*rowheight, 0);
			draw_set_color(c_black);
			draw_set_alpha(1);
		}
		var text = "";

		if(n == 0) text = "heute"//date_datetime_string(nachrListe[|m].eingangsZeit);
		else if (n == 1) text = "";
		else if (n == 2) text = nachrListe[|m].titel;
			
		if (text != ""){
			draw_text_custom(x + xVerschiebung + 2*padding, 
							y + gui_hoehe + (m+0.5)*rowheight - string_height(text)/2, 
							text, 1);
		}
		else{
			if(nachrListe[|m].gelesen){ var spr_envelope_index = 1;}
			else{ var spr_envelope_index = 0;}
			if(nachrListe[|m].zuBeantworten){ spr_envelope_index = 2;}			
			draw_sprite(spr_envelope, spr_envelope_index, 
						x + xVerschiebung + spaltenBreite[n]/2 - sprite_get_width(spr_envelope)/2 + 1, 
						y + gui_hoehe + (m+0.5)*rowheight - sprite_get_height(spr_envelope)/2 + 1);
		}
	}
	xVerschiebung += spaltenBreite[n];
}