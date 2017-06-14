SpielerMitBall = getPlayerExcept(Angriff, "LI", "TW");
SpielerMitBall.busy = true;
addText("PassAnSechzehner");
passQualitaet = Passqualitaet(SpielerMitBall);
if(passQualitaet != 0){
	Verteidiger = getPlayerExcept(Verteidigung, "TW", "OM", "ST");
	var schranke = passQualitaet + ratioX(SpielerMitBall.antizipation, Verteidiger.antizipation);
	var roll = ranRoll();
	if (roll <= schranke){
		if (SpielerMitBallVorher != undefined){
			SpielerMitBallVorher.busy = false;
		}
		SpielerMitBallVorher = SpielerMitBall;
		SpielerMitBallVorher.busy = true;
		SpielerMitBall = getPlayerFrom(Angriff, "OFF");
		addText("PassKommtAn");
		return 21; //zentral am Sechzehner
	}
	else{
		addText("PassAbgefangen");
		return 80; //Konter
	}
}
else return 0;