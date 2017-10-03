teamName = randomTeamName();
trikotfarbe = randomFarbe(-1);
trikotfarbeAusweich = randomFarbe(trikotfarbe);

formation = randomFormation();
spielerMap = ds_map_create();

punkte = 0;
gegentore = 0;
tore = 0;
spiele = 0;
siege = 0;
niederlagen = 0;
unentschieden = 0;

gespieltesTeam= 0;



// Der Teil ist hier rauskommentiert und ich habe es in den Konstruktor
//gepackt, das heißr nur über den Konstruktor kann das Team
// mit Spielern initialisiert werden mit new_Team(Name, Spieler_Map, Teamsize)
// wobei als Name und spielerMap auch 0 eingegeben werden kann


//	ini_open("NameFile_ger.ini");
//while(i < 19)
//{

//	//Random Name 
//	var vorname_argument = randomVorname();
//	var nachname_argument = randomNachname();
//	var key = vorname_argument + nachname_argument;
//	if(!ds_map_exists(spielerMap, key))
//	{
//		ds_map_add(spielerMap, key, new_Spieler(vorname_argument, nachname_argument));
//		i++;
//	}
//}
//	ini_close();
//TODO: in New_Team bauen
//spielerTypen = returnSpielertypen(formation);

