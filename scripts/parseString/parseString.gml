/// parseString( unpsarsed_string)
// nimmt einen String als Input und guckt, ob dieser eine Variable, die durch 
// &Variablenname im String gekennzeichenet wurde enthält und fügt die Variable an dieser Stelle ein
// Variablen, die ersetzt werden.
//NEU: Das zweite Argument sollte gesetzt werden, damit nicht alle Teile durchlaufen werden müssen
// sondern nur die, die für den Parser relevant sind, (also je nach File, das gelesen wurde
// das ist codiert : 1 = Textsimulation; default = 0, dann wird alles durchsucht mehr gibt es
// noch nicht, weil nur in TextSimulation viel geparst wird. Vielleicht auch überflüssig..
var unparsed_string = argument0;
var whereToLook ;
if (argument_count == 1) {
	whereToLook = 0;
	}
else 
	whereToLook = argument[1];

// TextSimulation durchsuchen
if (whereToLook == 1 || whereToLook == 0) {

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

	// Spieler mit Ball (vorher) ersetzen
	if string_pos("&SpielerMitBallVorher", unparsed_string) != 0 {
	unparsed_string = string_replace_all ( unparsed_string, "&SpielerMitBallVorher", get_player_info(SpielerMitBallVorher) );
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

	// (Tor)Abstand ersetzen
	if string_pos("&Abstand", unparsed_string) != 0 {
	unparsed_string = string_replace_all ( unparsed_string, "&Abstand", string(abstand) );
	}
	
	// Seite ersetzen ("links" oder "rechts")
	if string_pos("&Seite", unparsed_string) != 0 {
	unparsed_string = string_replace_all ( unparsed_string, "&Seite", seite );
	}
	
	//Passempfänger ersetzen
	if string_pos("&PassEmpfaenger", unparsed_string) != 0 {
	unparsed_string = string_replace_all ( unparsed_string, "&PassEmpfaenger", get_player_info(PassEmpfaenger) );
	}
		
	//Ergebnis ersetzen
	if string_pos("&Ergebnis", unparsed_string) != 0 {
	unparsed_string = string_replace_all ( unparsed_string, "&Ergebnis", string(heimteamTore) + " : " + string(auswaertsteamTore));
	}
}

return unparsed_string


