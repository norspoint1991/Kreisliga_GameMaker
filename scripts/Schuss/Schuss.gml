///Schuss(Abstand)
addText("Schuss");
abstand = argument0;
var Schranke = SpielerMitBall.schuss;
var roll = ranRoll();
if (roll <= Schranke){
	addText("SchussRichtungTor");
	if (!Block()){
		Verteidiger = getPlayerFrom(Verteidigung, "TW");
		Schranke = v.RatioX(SpielerMitBall.schuss - (abstand - 10), Verteidiger.torwart);
		return BallAufsTor(Schranke);
	}
	else{
		return 0;
	}
}
else{
	p.println(text.BallDaneben());
	return 0;
} 