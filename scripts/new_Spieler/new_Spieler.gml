// Script um einen neuen Spieler zu erstellen
// argument_count = 0: Name zufällig, Werte werden auf gauss = (50,20) gesetzt
// argument[0] = Vorname
// argument[1] = Nachname
// argument[2] = Position



	var vorname_argument;
	var nachname_argument;
	var bestPosition_argument;

if (argument_count == 0)
{
	//Random Name 
	vorname_argument = randomVorname();
	nachname_argument = randomNachname();
	bestPosition_argument = undefined;

}
else if (argument_count == 2)
{
	vorname_argument = argument[0];
	nachname_argument = argument[1];
	bestPosition_argument = undefined;
}
else if (argument_count == 3)
{
	vorname_argument = argument[0];
	nachname_argument = argument[1];
	bestPosition_argument = argument[2];
}

	var new_instance = instance_create_depth(0, 0, 0, obj_Spieler);
	new_instance.vorname = vorname_argument;
	new_instance.nachname = nachname_argument;
	new_instance.bestPosition = bestPosition_argument;


return new_instance