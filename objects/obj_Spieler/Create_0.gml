vorname = "";
nachname = "";

team = "";
//mögliche Werte 
//("TW", "LI", "IV", "MD", "LV", "RV", "DM", "LM", "ZM", "OM", "RM", "ST", "AUSW", "RES")
position = "RES";
busy = false;
spieleGesperrt = 0;
verletzungsDauer = 0; //in Tagen

//nur für die Zuordnung der Werte beim Erstellen
bestPosition = undefined;

fuss = randomFuss();
geburtstag = randomGeburtstag();
event_user(1); //Alter updaten

setSpielerWerteTo(40, 20);