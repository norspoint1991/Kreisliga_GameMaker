var Schranke = SpielerMitBall.kopfball;
var roll = ranRoll();

if ( roll <= Schranke) {			
	addText("BallKommtGut");
	Verteidiger = getPlayerFrom(Verteidigung, "TW");
	Schranke = ratioX(SpielerMitBall.kopfball, verteidiger.torwart);
	return BallaufsTor(Schranke);
}
else {
	addText("BallDaneben");
	return 0;
}