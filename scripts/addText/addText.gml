///addText(searchword)
draw_set_font(fnt_default);
var neuerText = "";
for(var i = 0; i < argument_count; i++){
	if (i == 0) neuerText += TextSimulation_ini(argument[i]);
	else neuerText += " " + TextSimulation_ini(argument[i]);
}
var neuerTextArray = string_split(" ", neuerText, true);
var tempText = "";
var j = 0;
while(j < array_length_1d(neuerTextArray)){
	if(string_width(draw_text_custom(0, 0, tempText + " " + neuerTextArray[j], 1)) < event_font_width){
		if(tempText == ""){ tempText += neuerTextArray[j];}
		else { tempText += " " + neuerTextArray[j];}
		j++;
	}
	else{
		ds_list_add(eventList, tempText);
		tempText = "";
		zeilenGesamt += 1;
		zeilenCounter += 1;
		if (zeit != zeitVorher){
			ds_list_add(zeitList, string_time(zeit));
			zeitVorher = zeit;
		}
		else{
			var leererStr = "";
			while (string_width(leererStr) < string_width(string_time(zeit))) {leererStr += " ";}
			ds_list_add(zeitList, leererStr);
		}
	}
}

ds_list_add(eventList, tempText);
tempText = "";
zeilenGesamt += 1;
zeilenCounter += 1;
if (zeit != zeitVorher){
	ds_list_add(zeitList, string_time(zeit));
	zeitVorher = zeit;
}
else{
	var leererStr = "";
	while (string_width(leererStr) < string_width(string_time(zeit))) {leererStr += " ";}
	ds_list_add(zeitList, leererStr);
}
	
//ds_list_add(eventList, neuerText);
//zeilenGesamt += string_height_ext(neuerText, font_height, event_font_width)/font_height;
//zeilenCounter += string_height_ext(neuerText, font_height, event_font_width)/font_height;

//if (zeit != zeitVorher){
//	ds_list_add(zeitList, string_time(zeit));
//	zeitVorher = zeit;
//}
//else{
//	var leererStr = "";
//	while (string_width(leererStr) < string_width(string_time(zeit))) {leererStr += " ";}
//	ds_list_add(zeitList, leererStr);
//}