if (SpielerMitBallVorher != undefined){
	SpielerMitBallVorher.busy = false;
}
SpielerMitBallVorher = SpielerMitBall;
SpielerMitBallVorher.busy = true;
SpielerMitBall = getPlayerFrom(Angriff, "LM", "LV", "RM", "RV");

if (SpielerMitBall.position == "LM" || SpielerMitBall.position == "LV"){
	Verteidiger = getPlayerFrom(Verteidigung, "RV", "RM");
}
else{
	Verteidiger = getPlayerFrom(Verteidigung, "LV", "LM");
}
Verteidiger.busy = true;
if(Foul()){
	addText("FreistossAussen");
	return 32; //Freistoss Flanke
}
var schranke = passQualitaet + ratioX(SpielerMitBall.geschwindigkeit + SpielerMitBall.stellungsspiel, Verteidiger.geschwindigkeit + Verteidiger.stellungsspiel)
var roll = ranRoll();

if (roll <= schranke) {
	addText("Laufduell", "DuellPositiv");
	if (GegnerVorher != undefined){
		GegnerVorher.busy = false;
	}
	GegnerVorher = Verteidiger;
	return 11; //AufAussen
}
else {
	addText("Laufduell", "DuellNegativ");
	return 0; //pullEvent
}