SpielerMitBall = getPlayerFrom(Angriff, "MIT");
Verteidiger = getPlayerFrom(Verteidigung, "MIT");
addText("PressingMittelfeld");
var schranke = ratioX(SpielerMitBall.stellungsspiel + SpielerMitBall.antizipation, Verteidiger.stellungsspiel + Verteidiger.antizipation);
var roll = ranRoll();
if (roll <= schranke){
	if (Angriff == Heimteam){
		Angriff = Auswaertsteam;
		Verteidigung = Heimteam;
	}
	else{
		Angriff = Heimteam;
		Verteidigung = Auswaertsteam;
	}
	if (GegnerVorher != undefined){
		GegnerVorher.busy = false;
	}
	GegnerVorher = SpielerMitBall;
	GegnerVorher.busy = true;
	SpielerMitBall = Verteidiger;
	addText("PressingErfolgreich");
	return 16; //Spieler gegn Hälfte
}
else{
	addText("PressingNichtErfolgreich");
	return 0;
}
	