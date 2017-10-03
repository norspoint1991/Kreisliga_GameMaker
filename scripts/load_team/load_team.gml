


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
ini_close();

return team;

