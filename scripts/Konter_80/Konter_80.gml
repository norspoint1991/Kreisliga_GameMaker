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

var schranke = 70 //TODO Konterstärke + Taktik einfügen
var roll = ranRoll();
if (roll <= schranke){
	addText("Konter");
	schranke = 50; //TODO Taktik (über außen oder durch die Mitte)
	roll = ranRoll();
	if (roll <= schranke) return 81; //Konter über Außen
	else return 82; //Konter durch die Mitte
}
else{
	addText("KonterAbbrechen");
	return 7; //Ball halten
}