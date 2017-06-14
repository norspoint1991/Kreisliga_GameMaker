SpielerMitBall =  getPlayerExcept(Angriff, "ST", "TW");
SpielerMitBall.busy = true;
addText("hoherBallSechzehner");
passQualitaet = Passqualitaet(SpielerMitBall); 

if (passQualitaet != 0) {
	if (SpielerMitBallVorher != undefined){
		SpielerMitBallVorher.busy = false;
	}
	SpielerMitBallVorher = SpielerMitBall;
	SpielerMitBallVorher.busy = true;
	SpielerMitBall = getPlayerFrom(Angriff, "OFF");
	Verteidiger = getPlayerFrom(Verteidigung, "DEF");
	var schranke = passQualitaet + ratioX(SpielerMitBall.zweikampf + SpielerMitBall.stellungsspiel, Verteidiger.stellungsspiel + Verteidiger.zweikampf);
	var roll = ranRoll();
	if (roll <= schranke){
		addText("DuellUmBall", "DuellPositiv");
		if (GegnerVorher != undefined){
			GegnerVorher.busy = false;
		}
		GegnerVorher = Verteidiger;
		return 21; //zentral am Sechzehner
	}
	else{
		addText("DuellUmBall", "DuellNegativ");
		return 0;
	}
}
else{
	return 0;
}