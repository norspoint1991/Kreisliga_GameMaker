///addText(searchword)

ds_list_add(eventList, TextSimulation_ini(argument0));

if (zeit != zeitVorher){
	ds_list_add(zeitList, string_time(zeit));
	zeitVorher = zeit;
}
else{
	var leererStr = "";
	while (string_width(leererStr)>string_width(string_time(zeit))) {leererStr += " ";}
	ds_list_add(zeitList, leererStr);
}