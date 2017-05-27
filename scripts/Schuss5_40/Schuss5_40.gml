//Schuss vom Sechzehner außen
abstand = 5;
addText("Schuss");
var schranke = SpielerMitBall.schuss;
var roll = ranRoll();
if (roll <= schranke){
	addText("SchussRichtungTor");
	if (!Block()){
		Verteidiger = getPlayerFrom(Verteidigung, "TW");
		var schranke = ratioX(SpielerMitBall.schuss - (abstand - 10), Verteidiger.torwart);
		return BallaufsTor(schranke);
	}
	else{
		return 0;
	}
}
else{
	addText("BallDaneben");
	return 0;
} 