var schranke = (SpielerMitBall.antizipation + SpielerMitBall.pass)/2;
var roll = ranRoll();

if (roll <= schranke){
	schranke = 50 //TODO hier Taktik einfügen (Über Außen oder durch die Mitte)
	if (roll <= schranke){
		if (SpielerMitBallVorher != undefined){
			SpielerMitBallVorher.busy = false;
		}
		SpielerMitBallVorher = SpielerMitBall;
		SpielerMitBallVorher.busy = true;
		SpielerMitBall = getPlayerFrom(Angriff, "LM", "LV", "RM", "RV");
		if (SpielerMitBall.position == "LM" || SpielerMitBall.position == "LV"){
			seite = "links";
		}
		else{
			seite = "rechts";
		}
		addText("SpieltBallAufAußen");
		return 11; //Spieler auf Außen
	}
	else{
		if (SpielerMitBallVorher != undefined){
			SpielerMitBallVorher.busy = false;
		}
		SpielerMitBallVorher = SpielerMitBall;
		SpielerMitBallVorher.busy = true;
		SpielerMitBall = getPlayerFrom(Angriff, "OFF");
		addText("SpieltBallZentral");
		return 21; //zentral am Sechzehner
	}
}
else{
	addText("SpieltBallVerfehlt");
	return 0;
}