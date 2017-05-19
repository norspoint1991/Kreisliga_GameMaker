///addText(searchword)
draw_set_font(fnt_default);
var neuerText = TextSimulation_ini(argument0);
ds_list_add(eventList, neuerText);
zeilenGesamt += 1 + floor(string_width(neuerText)/event_font_width);
zeilenCounter += 1 + floor(string_width(neuerText)/event_font_width);

if (zeit != zeitVorher){
	ds_list_add(zeitList, string_time(zeit));
	zeitVorher = zeit;
}
else{
	var leererStr = "";
	while (string_width(leererStr)>string_width(string_time(zeit))) {leererStr += " ";}
	ds_list_add(zeitList, leererStr);
}