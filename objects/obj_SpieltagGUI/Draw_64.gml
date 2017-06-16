draw_set_halign(fa_left);
draw_set_valign(fa_top);


//draw_set_color(c_gray);
//draw_rectangle(x, y, x + boxwidth, y + boxheight, 0);

draw_set_color(c_green);
draw_rectangle(0, 0, boxwidth, boxheight/20, 0);

draw_set_color(c_black);
draw_rectangle(0, 0, boxwidth, boxheight/20, 1);
draw_rectangle(0, boxheight/20, boxwidth, boxheight, 1);


draw_set_font(fnt_headline);
draw_set_color(c_black);
draw_text(	x + boxwidth/2 - (string_width(headline)/2), 
			y + boxheight/40 - string_height(headline)/2, 
			headline);

draw_set_font(fnt_default);
draw_text(	x + boxwidth + padding, 
			y + boxheight/40 - string_height(headline)/2, 
			Heimteam.teamName);
draw_text(	x + boxwidth + 2*padding + string_width(Heimteam.teamName), 
			y + boxheight/40 - string_height(headline)/2, 
			Auswaertsteam.teamName);
draw_text(	x + boxwidth + padding, 
			y + boxheight/40 + string_height(headline)/2 + padding, 
			string(heimteamTore));
draw_text(	x + boxwidth + 2*padding + string_width(Heimteam.teamName), 
			y + boxheight/40 + string_height(headline)/2 + padding, 
			string(auswaertsteamTore));
			

			
//TODO nur zum Testen
draw_text(	x + boxwidth + 2*padding + string_width(Heimteam.teamName), 
			y + boxheight/10 + string_height(headline)/2 + padding, 
			string(Spieltag_scrollbar.bar_position));
			
draw_text(	x + boxwidth + 2*padding + string_width(Heimteam.teamName), 
			y + boxheight/10 + string_height(headline)/2 + padding + 100, 
			string(obj_scrollbar.bar_y1));
			
draw_text(	x + boxwidth + 2*padding + string_width(Heimteam.teamName), 
			y + boxheight/10 + string_height(headline)/2 + padding + 200, 
			string(window_mouse_get_y()));
