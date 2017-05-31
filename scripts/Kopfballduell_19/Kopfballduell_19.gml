Verteidiger = getPlayerFrom(Verteidigung, "LI", "IV", "MD");
var schranke = Flankenqualitaet + ratioX(SpielerMitBall.kopfball, Verteidiger.kopfball);
var roll = ranRoll();

if ( roll <= schranke) {
	addText("KopfballDuell", "DuellPositiv");
	return 18; //Kopfball
}
else {
	addText("KopfballDuell", "DuellNegativ");
	return 0;
}