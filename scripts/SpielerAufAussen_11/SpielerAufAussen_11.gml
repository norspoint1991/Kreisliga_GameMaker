if (SpielerMitBall.position == "LM" || SpielerMitBall.position == "LV"){
	Verteidiger = getPlayerFrom(Verteidigung, "RV", "DM", "IV");
}
else{
	Verteidiger = getPlayerFrom(Verteidigung, "LV", "DM", "IV");
}
if(Foul()){
	addText("FreistossAussen");
	return 32; //Freistoss Flanke
}
var schranke = Verteidiger.stellungsspiel;
var roll = ranRoll();
if (roll <= schranke) {
	addText("SpielerAufAussen", "wirdgestellt");
	if (Dribbling()){
		if (GegnerVorher != undefined){
			GegnerVorher.busy = false;
		}
		GegnerVorher = Verteidiger;
		GegnerVorher.busy = true;
		//zieht nach innen oder flanke 
		schranke = SpielerMitBall.selbstbewusstsein;
		roll = ranRoll();
		if (roll <= schranke) {
			return 13; //zieht nach innen
		}
		else return 14; //Flanke
	}
	else return 0;
}
else {
	addText("SpielerAufAussen", "wirdNichtGestellt");
	//zieht nach innen oder flanke 
	schranke = SpielerMitBall.selbstbewusstsein;
	roll = ranRoll();
	if (roll <= schranke) {
		return 13; //zieht nach innen
	}
	else return 14; //Flanke
}