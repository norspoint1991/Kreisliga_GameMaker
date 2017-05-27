var schranke = SpielerMitBall.pass;
var roll = ranRoll();

if (roll <= schranke){
	addText("KonterAufAussen"); //TODO Text schreiben
	if (SpielerMitBallVorher != undefined){
		SpielerMitBallVorher.busy = false;
	}
	SpielerMitBallVorher = SpielerMitBall;
	SpielerMitBallVorher.busy = true;
	SpielerMitBall = getPlayerFrom(Angriff, "RM", "LM", "DM", "ZM", "OM", "ST");
	schranke = (SpielerMitBall.geschwindigkeit + SpielerMitBall.pass)/2;
	roll = ranRoll();
	if (roll <= schranke){
		addText("KonterBallInDieMitte"); //TODO Text schreiben
		if (SpielerMitBallVorher != undefined){
			SpielerMitBallVorher.busy = false;
		}
		SpielerMitBallVorher = SpielerMitBall;
		SpielerMitBallVorher.busy = true;
		SpielerMitBall = getPlayerFrom(Angriff, "ZM", "OM", "ST");
		return 40; //Schuss aus kurzer Distanz
	}
	else {
		addText("KonterAussenPassVerfehlt"); //TODO Text schreiben
		return 0;
	}
}
else{
	addText("KonterPassAufAussenVerfehlt");
	return 0;
}