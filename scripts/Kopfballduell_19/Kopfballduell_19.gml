if (SpielerMitBallVorher != undefined){
	SpielerMitBallVorher.busy = false;
}
SpielerMitBallVorher = SpielerMitBall;
SpielerMitBallVorher.busy = true;
SpielerMitBall = getPlayerFrom(Angriff, "OFF");
Verteidiger = getPlayerFrom(Verteidigung, "LI", "IV", "MD");
var schranke = flankenQualitaet + ratioX(SpielerMitBall.kopfball, Verteidiger.kopfball);
var roll = ranRoll();

if ( roll <= schranke) {
	addText("KopfballDuell", "DuellPositiv");
	return 18; //Kopfball
}
else {
	addText("KopfballDuell", "DuellNegativ");
	return 0;
}