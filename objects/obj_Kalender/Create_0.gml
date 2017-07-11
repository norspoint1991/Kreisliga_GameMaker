padding = 8;
width = window_get_width();
height = window_get_height()	- y - sprite_get_height(spr_button) - 15 
								- (headline_height + padding + padding/2);
row_height = height/6;
column_width = width/7;
draw_set_font(fnt_headline);
headline_height = string_height("Mai");
draw_set_font(fnt_default);
weekdays_height = string_height("Mo");
weekdays[6] = "So";
weekdays[5] = "Sa";
weekdays[4] = "Fr";
weekdays[3] = "Do";
weekdays[2] = "Mi";
weekdays[1] = "Di";
weekdays[0] = "Mo";
	   

fnt_handwriting_calender = font_add("Font linda.sciutto.ttf", 12, true, false, 1, 255);
team = global.eigenesTeam;
	
//Kalender über Kalender Objekt befüllen
headline = "Juli";
firstDay = "Mi"; 
for (var i = 31; i > 0; i--){
	kalenderTest[i] = "Test" + string(i);
}
switch(firstDay){
	case "So":
		var i = 6;
		break;
	case "Sa":
		var i = 5;
		break;
	case "Fr":
		var i = 4;
		break;
	case "Do":
		var i = 3;
		break;
	case "Mi":
		var i = 2;
		break;
	case "Di":
		var i = 1;
		break;
	case "Mo":
		var i = 0;
		break;
}
var j = 0;
while(i < 7 || j < 7){
	kalenderEintraeg[i, j] = 0;
}