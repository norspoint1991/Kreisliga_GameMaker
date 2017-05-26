Verteidiger = getPlayerFrom(Verteidigung, "LI", "IV", "MD");
var Schranke = Flankenqualitaet + ratioX(SpielerMitBall.kopfball, Verteidiger.kopfball);
var roll = ranRoll();

if ( roll <= Schranke) {
	addText("KopfballDuell");
	addText("DuellPositiv");
	return 18; //Kopfball
}
else {
	addText("KopfballDuell");
	addText("DuellNegativ");
	return 0;
}