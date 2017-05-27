SpielerMitBall =  getPlayerExcept(Angriff, "ST", "TW");
SpielerMitBall.busy = true;
addText("Aussenbahnpass");
passQualitaet = Passqualitaet(SpielerMitBall); 

if (Passqualitaet > 10.0) {
	if (SpielerMitBallVorher != undefined){
		SpielerMitBallVorher.busy = false;
	}
	SpielerMitBallVorher = SpielerMitBall;
	SpielerMitBallVorher.busy = true;
	SpielerMitBall = getPlayerFrom(Angriff, "LM", "LV", "RM", "RV");
	return 11; //Spieler auf Außen 
}
else if (Passqualitaet == 10.0 || Passqualitaet == -10.0) {
	if (SpielerMitBallVorher != undefined){
		SpielerMitBallVorher.busy = false;
	}
	SpielerMitBallVorher = SpielerMitBall;
	SpielerMitBallVorher.busy = true;
	SpielerMitBall = getPlayerFrom(Angriff, "LM", "LV", "RM", "RV");
	return 15; //Laufduell auf Aussen
}
else{
	return 0;
}