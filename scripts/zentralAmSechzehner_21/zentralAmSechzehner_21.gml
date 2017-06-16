Verteidiger = getPlayerFrom(Verteidigung, "DEF");
var schranke = ratioX(SpielerMitBall.stellungsspiel, Verteidiger.stellungsspiel);
var roll = ranRoll();
if (roll <= schranke){
	addText("StehtAlleine");
	schranke = ratioX(SpielerMitBall.antizipation, SpielerMitBall.selbstbewusstsein);
	roll = ranRoll();
	if (roll <= schranke){
		return 20; //Ball durchstecken
	}
	else{
		return 41; //Schuss vom Sechzehner zentral
	}
}
else{
	addText("WirdGestellt");
	if (Foul()){
		abstand = 20;
		addText("FreistossZentral");
		return 31; //Freistoss direkt
	}
	if(Dribbling()){
		schranke = ratioX(SpielerMitBall.antizipation, SpielerMitBall.selbstbewusstsein);
		roll = ranRoll();
		if (roll <= schranke){
			return 20; //Ball durchstecken
		}
		else{
			return 41; //Schuss vom Sechzehner zentral
		}
	}
	else return 0;
}