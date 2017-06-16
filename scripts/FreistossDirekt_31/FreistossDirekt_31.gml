cancelBusy();
SpielerMitBall = getPlayerFrom(Angriff, "ZM", "OM"); //TODO Taktik Freistossschütze einfügen
addText("Freistoss");
var schranke = SpielerMitBall.freistoss;
var roll = ranRoll();
if (roll <= schranke){
	addText("FreistossRichtungTor");
	Verteidiger = getPlayerFrom(Verteidigung, "TW");
	var schranke = ratioX(SpielerMitBall.schuss - (abstand - 10), Verteidiger.torwart);
	return BallaufsTor(schranke);
}
else{
	addText("FreistossDaneben");
	return 0;
}