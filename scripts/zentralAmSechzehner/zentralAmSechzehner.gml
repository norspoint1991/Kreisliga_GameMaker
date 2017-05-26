Verteidiger = getPlayerFrom(Verteidigung, "VER");
var Schranke = ratioX(SpielerMitBall.stellungsspiel, Verteidiger.stellungsspiel);
var roll = ranRoll();
if (roll <= Schranke){
	addText("StehtAlleine");
	Schranke = ratioX(SpielerMitBall.antizipation, SpielerMitBall.selbstbewusstsein);
	roll = ranRoll();
	if (roll <= Schranke){
		return 23; //Ball durchstecken
	}
	else{
		return 22; //Schuss vom Sechzehner zentral
	}
}
else{
	addText("WirdGestellt");
	if(Dribbling(SpielerMitBall, Verteidiger)){
		Schranke = ratioX(SpielerMitBall.antizipation, SpielerMitBall.selbstbewusstsein);
		roll = ranRoll();
		if (roll <= Schranke){
			return 23; //Ball durchstecken
		}
		else{
			return 22; //Schuss vom Sechzehner zentral
		}
	}
	else return 0;
}