SpielerMitBall =  getPlayerExcept(Angriff, "ST", "TW");
if (SpielerMitBallVorher != undefined){
	SpielerMitBallVorher.busy = false;
}
SpielerMitBallVorher = SpielerMitBall;
SpielerMitBallVorher.busy = true;
if(stringEquals(SpielerMitBallVorher.position, "LV", "LM", "RV", "RM")) SpielerMitBall = getPlayerFrom(Angriff, "DM", "ZM", "OM");
else SpielerMitBall =  getPlayerExcept(Angriff, "ST", "TW");
Verteidiger = getPlayerFrom(Verteidigung, "MIT");

var schranke = ratioX((SpielerMitBall.pass + SpielerMitBallVorher.pass)/2, Verteidiger.stellungsspiel);
var roll = ranRoll();

if (roll <= schranke){
	addText("DoppelpassMittellinie");
	if (GegnerVorher != undefined){
		GegnerVorher.busy = false;
	}
	GegnerVorher = Verteidiger;
	GegnerVorher.busy = true;
	return 16; //Ball verteilen gegnerische Hälfte	
}
else{
	addText("DoppelpassMittellinieAbgefangen");
	return 80; //Konter
}