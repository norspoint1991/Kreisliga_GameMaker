if (GegnerVorher != undefined){
	GegnerVorher.busy = false;
}
GegnerVorher = Verteidiger;
GegnerVorher.busy = true;
Verteidiger = getPlayerFrom(Verteidigung, "VER");
var schranke = ratioX(SpielerMitBall.pass, (Verteidiger.antizipation + Verteidiger.stellungsspiel)/2);
var roll = ranRoll();

if (roll <= schranke){
	if (SpielerMitBallVorher != undefined){
		SpielerMitBallVorher.busy = false;
	}
	SpielerMitBallVorher = SpielerMitBall;
	SpielerMitBallVorher.busy = true;
	SpielerMitBall = getPlayerFrom(Angriff, "OFF");
	addText("StecktBallDurch");
	return 43; //Schuss kurze Distanz
}
else {
	addText("BallAbfangen");
	return 0;
}