///addText(searchword)
draw_set_font(fnt_default);
var neuerText = "";
for(var i = 0; i < argument_count; i++){
	if (i == 0) neuerText += TextSimulation_ini(argument[i]);
	else neuerText += " " + TextSimulation_ini(argument[i]);
}
ds_list_add(eventList, neuerText);
zeilenGesamt += string_height_ext(neuerText, font_height, event_font_width)/font_height;
zeilenCounter += string_height_ext(neuerText, font_height, event_font_width)/font_height;

if (zeit != zeitVorher){
	ds_list_add(zeitList, string_time(zeit));
	zeitVorher = zeit;
}
else{
	var leererStr = "";
	while (string_width(leererStr) < string_width(string_time(zeit))) {leererStr += " ";}
	ds_list_add(zeitList, leererStr);
}