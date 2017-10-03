///neueNachricht(ini_abschnitt, [Spieler, Team, betrag])
/// @param ini_abschnitt
/// @param [Spieler]
/// @param [Team]
/// @param [betrag]

var nachrichtTitel = argument[0];

if(argument_count == 2){
	if(object_get_name(argument[1].object_index) == "obj_Spieler") Spieler = argument[1];
	else if(object_get_name(argument[1].object_index) == "obj_Team") Team = argument[1];
	else betrag = argument[1];
}
else if (argument_count == 3){
	if(object_get_name(argument[1].object_index) == "obj_Spieler") Spieler = argument[1];
	else if(object_get_name(argument[1].object_index) == "obj_Team") Team = argument[1];
	else betrag = argument[1];
	
	if(object_get_name(argument[2].object_index) == "obj_Spieler") Spieler = argument[2];
	else if(object_get_name(argument[2].object_index) == "obj_Team") Team = argument[2];
	else betrag = argument[2];
}

else if (argument_count == 3){
	if(object_get_name(argument[1].object_index) == "obj_Spieler") Spieler = argument[1];
	else if(object_get_name(argument[1].object_index) == "obj_Team") Team = argument[1];
	else betrag = argument[1];
	
	if(object_get_name(argument[2].object_index) == "obj_Spieler") Spieler = argument[2];
	else if(object_get_name(argument[2].object_index) == "obj_Team") Team = argument[2];
	else betrag = argument[2];
	
	if(object_get_name(argument[3].object_index) == "obj_Spieler") Spieler = argument[3];
	else if(object_get_name(argument[3].object_index) == "obj_Team") Team = argument[3];
	else betrag = argument[3];
}

ini_open("Nachrichten_ger.ini");

var nachricht = instance_create_depth(0, 0, 0, obj_nachricht);
var possibleStrings = ds_list_create();

if (!ini_section_exists(nachrichtTitel)) show_debug_message("Unbekannte Section in der INI-Datei: " + nachrichtTitel);

if(ini_key_exists(nachrichtTitel, "titel")){
	nachricht.titel = parseStringNachrichten(ini_read_string(nachrichtTitel, "titel", ""));
}
else { show_debug_message("Kein Titel vorhanden für: " + nachrichtTitel);}
	
if(ini_key_exists(nachrichtTitel, "zuBeantworten")){
	if(ini_read_string(nachrichtTitel, "zuBeantworten", "") == "false"){
		nachricht.zuBeantworten = false;
	}
	else { nachricht.zuBeantworten = true;}
}
else { show_debug_message("zuBeantworten nicht vorhanden für: " + nachrichtTitel);}
	
var i = 0;
var tryNext = true;
while(tryNext)
{
	tryNext = false;
	if(ini_key_exists(nachrichtTitel, "inhalt" + string(i)))
	{
		ds_list_add(possibleStrings, ini_read_string(nachrichtTitel, "inhalt" + string(i), ""));
		tryNext = true;
	}
	
	if(ini_key_exists(nachrichtTitel, "option" + string(i)))
	{
		nachricht.option[i] = parseStringNachrichten(ini_read_string(nachrichtTitel, "option" + string(i), ""));
		tryNext = true;
	}
	
	if(ini_key_exists(nachrichtTitel, "konsequenz" + string(i)))
	{
		nachricht.konsequenz[i] = ini_read_string(nachrichtTitel, "konsequenz" + string(i), "");
		tryNext = true;
	}
	if(tryNext) i++;
}

ini_close();

nachricht.inhalt = parseStringNachrichten(possibleStrings[|(irandom(ds_list_size(possibleStrings) - 1))]);

return nachricht