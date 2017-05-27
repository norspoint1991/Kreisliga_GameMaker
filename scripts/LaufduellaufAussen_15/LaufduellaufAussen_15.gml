if (SpielerMitBall.position == "LM" || SpielerMitBall.position == "LV"){
	Verteidiger = getPlayerFrom(Verteidigung, "RV", "RM");
}
else{
	Verteidiger = getPlayerFrom(Verteidigung, "LV", "LM");
}
Verteidiger.busy = true;
var schranke = passQualitaet + ratioX(SpielerMitBall.geschwindigkeit + SpielerMitBall.stellungsspiel, Verteidiger.geschwindigkeit + Verteidiger.stellungsspiel)
var roll = ranRoll();

if (roll <= schranke) {
	addText("LaufduellPositiv");
	if (GegnerVorher != null){
		GegnerVorher.busy = false;
	}
	GegnerVorher = Verteidiger;
	return 11; //AufAussen
}
else {
	addText("LaufduellPositiv");
	return 0; //pullEvent
}