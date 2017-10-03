/// parseString( unpsarsed_string)
/// @param unparsed_string
// nimmt einen String als Input und guckt, ob dieser eine Variable, die durch 
// &Variablenname im String gekennzeichenet wurde enthält und fügt die Variable an dieser Stelle ein
// Variablen, die ersetzt werden.

var unparsed_string = argument0;
	
//Farben zuordnen
//var colHeimteam ="[$=0]"//  "[$=" + string(colHeim) + "]";
//var colAuswteam ="[$=0]"//  "[$=" + string(colAusw) + "]";
//if (Angriff == Heimteam){
//	var colAng ="[$=0]"//  "[$=" + string(colHeim) + "]";
//	var colVer ="[$=0]"//  "[$=" + string(colAusw) + "]";
//}
//else{
//	var colAng ="[$=0]"//  "[$=" + string(colAusw) + "]";
//	var colVer ="[$=0]"//  "[$=" + string(colHeim) + "]";
//}
//var col = "[$=0]";

var colAng ="[$=0]"//  "[$=" + string(colAusw) + "]";
var colVer ="[$=0]"//  "[$=" + string(colHeim) + "]";

var col = "[$=0]";

//// Heimteam ersetzen
//if string_pos("&Heimteam", unparsed_string) != 0 {
//unparsed_string = string_replace_all ( unparsed_string, "&Heimteam",colHeimteam + Heimteam.teamName + col);
//}
	
//// Auswärtsteam ersetzen
//if string_pos("&Auswaertsteam", unparsed_string) != 0 {
//unparsed_string = string_replace_all ( unparsed_string, "&Auswaertsteam",colAuswteam + Auswaertsteam.teamName + col);
//}

// Spieler ersetzen
if string_pos("&Spieler", unparsed_string) != 0 {
	unparsed_string = string_replace_all (	unparsed_string, "&Spieler",
											colAng + get_player_name(Spieler) + col);
}
//Spieler ersetzen falls mehrere vorhanden
var i = 0;
while (string_pos("&Spieler" + string(i), unparsed_string) != 0){
	unparsed_string = string_replace_all (	unparsed_string, "&Spieler" + string(i),
											colAng + get_player_name(Spieler[i]) + col);
	i++;
}

//Sperrendauer ersetzen
if string_pos("&Sperrendauer", unparsed_string) != 0 {
	unparsed_string = string_replace_all(	unparsed_string, "&Sperrendauer",
											colAng + string(Spieler.spieleGesperrt) + col);
}

//Verletzungsdauer ersetzen
if string_pos("&Verletzungsdauer", unparsed_string) != 0 {
	var dauer, dauerString;
	dauer = Spieler.verletzungsDauer;
	if(dauer <= 10) { dauerString = string(dauer) + " Tage";}
	else if(dauer <= 60) { dauerString = "ca. " + string(round(dauer/7)) + " Wochen";}
	else { dauerString = "ca. " + string(round(dauer/30)) + " Monate";}
	unparsed_string = string_replace_all (	unparsed_string, "&Verletzungsdauer",
											colAng + dauerString + col);
}
	
////Ergebnis ersetzen
//if string_pos("&Ergebnis", unparsed_string) != 0 {
//unparsed_string = string_replace_all (	unparsed_string, "&Ergebnis", 
//										string(heimteamTore) + " : " + string(auswaertsteamTore));
//}


return unparsed_string


