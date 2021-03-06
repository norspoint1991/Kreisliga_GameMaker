//// Das erste Argument ist der TeamName, das zweite wäre eine Liste der Spieler, das dritte
////wie viele Spieler noch random dazu kommen sollen, wenn man irgendwas nicht will, dann 0 lassen
//// name soll nicht gesetzt werden(also random) und man hat keine Spieler und will 19 haben
//// ist new_Team(0,0,19);
////TODO Team Farbe mit einbauen
//var team = instance_create_depth(0, 0, 0, obj_Team);
//var i = 0;
//if (argument_count >= 1) {
//	if (argument[0] != 0) {
//		team.teamName = argument[0];
//	}
//}

//if (argument_count >= 2) {
//	if (argument[1] != 0) {
//		team.spielerMap = argument[1];
//	}
//}


//// wenn eine Spieleranzahl gewählt wurde, werden so viele Spieler erstellt, bis
//// die Mannschaft voll ist, ansonsten werden 19 Spieler erstellt
//ini_open("NameFile_ger.ini");
//if (argument_count >= 3) {
//	if (argument[2] != 0) {
//		while(i < argument[2])
//			{
//				//Random Name 
//				var vorname_argument = randomVorname();
//				var nachname_argument = randomNachname();

//				var key = vorname_argument + nachname_argument;
//				if(!ds_map_exists(team.spielerMap, key))
//				{
//					ds_map_add(team.spielerMap, key, new_Spieler(vorname_argument, nachname_argument));
//					i++;
//				}
//			}
//	}
//}
//else {
//	while(ds_map_size(team.spielerMap) < 19)//while(i < 3 - ds_map_size(team.spielerMap))
//			{
//				//Random Name 
//				var vorname_argument = randomVorname();
//				var nachname_argument = randomNachname();

//				var key = vorname_argument + nachname_argument;
//				if(!ds_map_exists(team.spielerMap, key))
//				{
//					ds_map_add(team.spielerMap, key, new_Spieler(vorname_argument, nachname_argument));
//					//i++;
//				}
//			}
//	}
//with(team){	
//	event_user(0); //Auto Aufstellung
//	event_user(1); //Team Initiative
//	event_user(2); //Abpraller
//}
//ini_close();

//return team;


///new_team(name, spielerMap, spielerAnzahl, Farbe)

//neue new_team Funktion: man kann eine Trikotfarbe wählen und Spieler werden passend zur Formation erstellt
//ruft man die Funktion ohne Variablen auf, wird alles auf default gesetzt (spielerAnzahl = 19, Rest = random)
var team = instance_create_depth(0, 0, 0, obj_Team);
if(argument_count == 0){
	var spielerAnzahl = 19;
}
else if (argument_count == 4){
	if (argument[0] != 0) { team.teamName = argument[0];}

	if (argument[1] != 0) { team.spielerMap = argument[1];}

	if(argument[2] != 0) { var spielerAnzahl = argument[2];}
	else {var spielerAnzahl = 19;}

	if(argument[3] != 0) {
		team.trikotfarbe = argument[3];
		team.trikotfarbeAusweich = randomFarbe(team.trikotfarbe);
	}
	else {
		team.trikotfarbe = randomFarbe(team.trikotfarbe);
		team.trikotfarbeAusweich = randomFarbe(team.trikotfarbe);
	}
	
}

var spielerTypen = returnSpielertypen(team.formation);
var i = 0;
// wenn eine Spieleranzahl gewählt wurde, werden so viele Spieler erstellt, bis
// die Mannschaft voll ist, ansonsten werden 19 Spieler erstellt
ini_open("NameFile_ger.ini");


while(ds_map_size(team.spielerMap) < spielerAnzahl)//while(i < 3 - ds_map_size(team.spielerMap))
	{
		//Random Name 
		var vorname_argument = randomVorname();
		var nachname_argument = randomNachname();

		var key = vorname_argument + nachname_argument;
		if(!ds_map_exists(team.spielerMap, key))
		{
			if(i < array_length_1d(spielerTypen)){
				ds_map_add(team.spielerMap, key, new_Spieler(vorname_argument, nachname_argument, spielerTypen[i]));
				i++;
			}
			else{ ds_map_add(team.spielerMap, key, new_Spieler(vorname_argument, nachname_argument));}
		}
	}
with(team){	
	event_user(0); //Auto Aufstellung
	event_user(1); //Team Initiative
	event_user(2); //Abpraller
}
ini_close();

return team;

