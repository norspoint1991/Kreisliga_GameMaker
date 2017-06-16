SpielerMitBall = getPlayerFrom(Angriff, "MIT");
SpielerMitBall.busy = true;
Verteidiger = getPlayerFrom(Verteidigung, "OM", "ZM", "DM");
if (Foul()){
	addText("FreistossHintenRum");
	return 0;
}
addText("DribblingMittellinie");
if(Dribbling()){
	if (GegnerVorher != undefined){
		GegnerVorher.busy = false;
	}
	GegnerVorher = Verteidiger;
	GegnerVorher.busy = true;
	return 16; //Spieler gegn. Hälfte
}
else{
	return 80; //Konter
}