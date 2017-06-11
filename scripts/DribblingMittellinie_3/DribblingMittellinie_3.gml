SpielerMitBall = getPlayerFrom(Angriff, "MIT");
SpielerMitBall.busy = true;
Verteidiger = getPlayerFrom(Verteidigung, "OM", "ZM", "DM");
addText("DribblingMittellinie");
if(Dribbling(SpielerMitBall, Verteidiger)){
	if (GegnerVorher != undefined){
		GegnerVorher.busy = false;
	}
	GegnerVorher = Verteidiger;
	GegnerVorher.busy = true;
	var schranke = SpielerMitBall.selbstbewusstsein;
	var roll = ranRoll();
	if(roll <= schranke){
		return 22; //Dribbling gegn. Hälfte
	}
	else{
		return 16; //Ball verteilen gegn. Hälfte
	}
}
else{
	return 80; //Konter
}