var Schranke = 100 * ratioX(Angriff.abprallerOFF, Verteidigung.abprallerDEF);
var roll = ranRoll();
if (roll <= Schranke){
	if (SpielerMitBallVorher != undefined){
		SpielerMitBallVorher.busy = false;
	}
	SpielerMitBallVorher = SpielerMitBall;
	SpielerMitBallVorher.busy = true;
	SpielerMitBall = getPlayerFrom(Angriff, "LM", "RM", "DM", "OM", "ZM", "ST");
	addText("AbprallerOFF");
	return 22; //Schuss vom Sechzehner zentral
}
else {
	Verteidiger = getPlayerFrom(Verteidigung, "LI", "LM", "DM", "RM", "IV", "RV", "LV", "MD");
	addText("AbprallerDEF");
	return 0;
}