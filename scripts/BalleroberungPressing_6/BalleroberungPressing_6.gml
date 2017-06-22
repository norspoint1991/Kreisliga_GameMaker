SpielerMitBall = getPlayerFrom(Angriff, "MIT");
Verteidiger = getPlayerFrom(Verteidigung, "MIT");
var schranke = ratioX(SpielerMitBall.stellungsspiel + SpielerMitBall.antizipation, Verteidiger.stellungsspiel + Verteidiger.antizipation);
var roll = ranRoll();
if (roll <= schranke){
	addText("PressingMittelfeld", "PressingErfolgreich");
	return 16; //Spieler gegn Hälfte
}
else{
	addText("PressingMittelfeld", "PressingNichtErfolgreich");
	return 0;
}
	