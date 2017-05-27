Verteidiger = getPlayerFrom(Verteidigung, "LI", "IV", "MD");
var schranke = Flankenqualitaet + ratioX(SpielerMitBall.kopfball, Verteidiger.kopfball);
var roll = ranRoll();

if ( roll <= schranke) {
	addText("KopfballDuell");
	addText("DuellPositiv");
	return 18; //Kopfball
}
else {
	addText("KopfballDuell");
	addText("DuellNegativ");
	return 0;
}