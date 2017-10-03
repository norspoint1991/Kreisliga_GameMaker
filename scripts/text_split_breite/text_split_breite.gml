///@param text_to_split
///@param breite 

//Inhalt der Nachricht an entsprechender Stelle umbrechen
var textArray = string_split(" ", argument0, true);
var tempText = "";
var textListe = ds_list_create();
var j = 0;
while(j < array_length_1d(textArray)){
	if(string_width(draw_text_custom(0, 0, tempText + " " + textArray[j], 1)) < argument1){
		if(tempText == ""){ tempText += textArray[j];}
		else { tempText += " " + textArray[j];}
		j++;
	}
	else{
		ds_list_add(textListe, tempText);
		tempText = "";
	}
}
ds_list_add(textListe, tempText);

return textListe