draw_set_font(fnt_headline);
headline_height = string_height("Mai");
draw_set_font(fnt_default);
weekdays_height = string_height("Mo");
padding = 8;
width = window_get_width();
height = window_get_height()	- y - sprite_get_height(spr_button) - 15 
								- (headline_height + 2*padding + weekdays_height);
row_height = height/6;
column_width = width/7;

weekdays[6] = "So";
weekdays[5] = "Sa";
weekdays[4] = "Fr";
weekdays[3] = "Do";
weekdays[2] = "Mi";
weekdays[1] = "Di";
weekdays[0] = "Mo";
	   
fnt_handwriting_calender = font_add("Font linda.sciutto.ttf", 12, true, false, 1, 255);
team = global.eigenesTeam;

headline = "Juni";