

vorname = "";
nachname = "";

team = "";
//mögliche Werte 
//("TW", "LI", "IV", "MD", "LV", "RV", "DM", "LM", "ZM", "OM", "RM", "ST", "AUSW", "RES")
favPosition = "RES";
busy = false;

//nur für die Zuordnung der Werte beim Erstellen
bestPosition = undefined;

fuss = randomFuss();
geburtstag = randomGeburtstag();
event_user(1); //Alter updaten

setSpielerWerteTo(40, 20);

event_user(0); //FavPosition updaten

position = favPosition;