var schranke = SpielerMitBall.kopfball;
var roll = ranRoll();

if ( roll <= schranke) {			
	addText("BallKommtGut");
	Verteidiger = getPlayerFrom(Verteidigung, "TW");
	schranke = ratioX(SpielerMitBall.kopfball, Verteidiger.torwart);
	return BallaufsTor(schranke);
}
else {
	addText("BallDaneben");
	return 0;
}