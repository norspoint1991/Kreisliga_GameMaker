team = global.eigenesTeam;
ligaMap = global.eigeneLiga.teamMap;

draw_set_font(fnt_headline);
headline_height = string_height("Tabelle");
draw_set_font(fnt_default);
headline2_height = string_height("Mannschaft");
padding = 8;
width = window_get_width();
height = window_get_height()	- y - sprite_get_height(spr_button) - 15 
								- (headline_height + 2*padding + headline2_height);
row_height = height/ds_map_size(ligaMap);

headline2[8] = "Punkte";
headline2[7] = "Tordiff.";
headline2[6] = "Torverh.";
headline2[5] = "V";
headline2[4] = "U";
headline2[3] = "G";
headline2[2] = "Spiele";
headline2[1] = "Mannschaft";
headline2[0] = "Platz";

column_width[8] = width/18;
column_width[7] = 2*width/18;
column_width[6] = 2*width/18;
column_width[5] = width/18;
column_width[4] = width/18;
column_width[3] = width/18;
column_width[2] = 2*width/18;
column_width[1] = 7*width/18;
column_width[0] = width/18;
	   
fnt_handwriting_calender = font_add("Font linda.sciutto.ttf", 12, true, false, 1, 255);


headline = global.eigeneLiga.ligaName;