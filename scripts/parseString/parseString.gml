/// parseString( unpsarsed_string)
// nimmt einen String als Input und guckt, ob dieser eine Variable, die durch 
// &Variablenname im String gekennzeichenet wurde enthält und fügt die Variable an dieser Stelle ein
// Variablen, die ersetzt werden.

var unparsed_string = argument0;

// Heimteam ersetzen

if string_pos("&Heimteam", unparsed_string) != 0 {
unparsed_string = string_replace_all ( unparsed_string, "&Heimteam", Heimteam.teamName );

}

// Auswärtsteam ersetzen

if string_pos("&Auswaertsteam", unparsed_string) != 0 {
unparsed_string = string_replace_all ( unparsed_string, "&Auswaertsteam", Auswaertsteam.teamName );

}

// Angriffsteam ersetzen

if string_pos("&Angriff", unparsed_string) != 0 {
unparsed_string = string_replace_all ( unparsed_string, "&Angriff", Angriff.teamName );

}

// Verteidigungsteam ersetzen

if string_pos("&Verteidigung", unparsed_string) != 0 {
unparsed_string = string_replace_all ( unparsed_string, "&Verteidgung", Verteidigung.teamName );

}

// Spieler mit Ball ersetzen

if string_pos("&SpielerMitBall", unparsed_string) != 0 {
unparsed_string = string_replace_all ( unparsed_string, "&SpielerMitBall", get_player_info(SpielerMitBall) );

}

// Angreifer ersetzen

if string_pos("&Angreifer", unparsed_string) != 0 {
unparsed_string = string_replace_all ( unparsed_string, "&Angreifer", get_player_info(Angreifer) );

}

// Verteidiger ersetzen

if string_pos("&Verteidiger", unparsed_string) != 0 {
unparsed_string = string_replace_all ( unparsed_string, "&Verteidiger", get_player_info(Verteidiger) );

}


return unparsed_string


