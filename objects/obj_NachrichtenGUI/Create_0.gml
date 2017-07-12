width = window_get_width();
height = window_get_height() - y - sprite_get_height(spr_button) - 15;

	   
padding = 8;
fnt_handwriting = font_add("Font linda.sciutto.ttf", 14, true, false, 1, 255);
fnt_handwriting_headline = font_add("Font linda.sciutto.ttf", 18, true, false, 1, 255);
team = global.eigenesTeam;
	
//Spaltenbezeichnungen
spaltenBezeichnungen[2] = "Kategorie";
spaltenBezeichnungen[1] = "Thema";
spaltenBezeichnungen[0] = "Von";

zeilenBreite[2] = 2*width/6;
zeilenBreite[1] = width/2;
zeilenBreite[0] = width/6;

draw_set_font(fnt_handwriting);
rowheight = string_height("Test") + padding;