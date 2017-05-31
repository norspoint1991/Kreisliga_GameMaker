Verteidiger = getPlayerFrom(Verteidigung, "IV", "LI", "MD", "DM");
var schranke = ratioX(SpielerMitBall.schuss, Verteidiger.stellungsspiel);
var roll = ranRoll();
if (roll <= schranke){
	addText("WirdNichtGeblockt");
	return false;
}
else{
	addText("WirdGeblockt");
	return true;
}