var Schranke = 20 + SpielerMitBall.pass;
var roll = ranRoll();
if (roll <= Schranke){
	if (SpielerMitBallVorher != undefined){
		SpielerMitBallVorher.busy = false;
	}
	SpielerMitBallVorher = SpielerMitBall;
	SpielerMitBallVorher.busy = true;
	SpielerMitBall = getPlayerFrom(Angriff, "ZM", "OM", "RM", "LM");
	addText("Querlegen");
	return 21; //Spieler mit Ball zentral am Sechzehner
}
else {
	Verteidiger = getPlayerFrom(Verteidigung, "VER");
	addText("QuerlegenGescheitert");
	return 0;
}