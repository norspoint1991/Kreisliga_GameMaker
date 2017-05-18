teamName = "";

var i = 0;
formation = randomFormation();
spielerMap = ds_map_create();
spielerTypen = returnSpielertypen(formation);
ini_open("NameFile_ger.ini");
var i = 0;
while(i < 18)
{
	//Random Name 
	var vorname_argument = randomVorname();
	var nachname_argument = randomNachname();

	var key = vorname_argument + nachname_argument;
	if(!ds_map_exists(spielerMap, key))
	{
		ds_map_add(spielerMap, key, new_Spieler(vorname_argument, 
												nachname_argument, 
												spielerTypen[i]));
		i++;
	}
}
ini_close();