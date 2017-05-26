Verteidiger = getPlayerFrom(Verteidigung, "IV", "LI", "MD", "DM");
var Schranke = ratioX(SpielerMitBall.schuss, Verteidiger.stellungsspiel);
var roll = ranRoll();
if (roll <= Schranke){
	addText("WirdNichtGeblockt");
	return false;
}
else{
	addText("WirdGeblockt");
	return true;
}