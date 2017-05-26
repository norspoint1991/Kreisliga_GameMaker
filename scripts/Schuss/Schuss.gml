///Schuss(Abstand)
addText("Schuss");
abstand = argument0;
var Schranke = SpielerMitBall.schuss;
var roll = ranRoll();
if (roll <= Schranke){
	addText("SchussRichtungTor");
	if (!Block()){
		Verteidiger = getPlayerFrom(Verteidigung, "TW");
		var Schranke = ratioX(SpielerMitBall.schuss - (abstand - 10), Verteidiger.torwart);
		return BallaufsTor(Schranke);
	}
	else{
		return 0;
	}
}
else{
	addText("BallDaneben");
	return 0;
} 