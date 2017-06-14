var schranke = SpielerMitBall.pass;
var roll = ranRoll();

if (roll <= schranke){
	//addText("KonterAufAussen");
	if (SpielerMitBallVorher != undefined){
		SpielerMitBallVorher.busy = false;
	}
	SpielerMitBallVorher = SpielerMitBall;
	SpielerMitBallVorher.busy = true;
	SpielerMitBall = getPlayerFrom(Angriff, "RM", "LM", "DM", "ZM", "OM", "ST");
	schranke = (SpielerMitBall.geschwindigkeit + SpielerMitBall.pass)/2;
	roll = ranRoll();
	if (roll <= schranke){
		if (SpielerMitBall.position == "LM" || SpielerMitBall.position == "LV"){
			seite = "links";
		}
		else if (SpielerMitBall.position == "RM" || SpielerMitBall.position == "RV"){
			seite = "rechts";
		}
		else seite = "rechts";
		
		addText("SpieltBallAufAußen", "KonterBallInDieMitte");
		if (SpielerMitBallVorher != undefined){
			SpielerMitBallVorher.busy = false;
		}
		SpielerMitBallVorher = SpielerMitBall;
		SpielerMitBallVorher.busy = true;
		SpielerMitBall = getPlayerFrom(Angriff, "ZM", "OM", "ST");
		return 40; //Schuss aus kurzer Distanz
	}
	else {
		addText("SpieltBallAufAußen", "KonterBallInDieMitteVerfehlt");
		return 0;
	}
}
else{
	addText("KonterPassAufAussenVerfehlt");
	return 0;
}