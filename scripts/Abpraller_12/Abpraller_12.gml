with(Auswaertsteam) event_user(2); //Abpraller Werte neu bestimmen
with(Heimteam) event_user(2);
var schranke = ratioX(Angriff.abprallerOFF, Verteidigung.abprallerDEF);
var roll = ranRoll();
if (roll <= schranke){
	if (SpielerMitBallVorher != undefined){
		SpielerMitBallVorher.busy = false;
	}
	SpielerMitBallVorher = SpielerMitBall;
	SpielerMitBallVorher.busy = true;
	SpielerMitBall = getPlayerFrom(Angriff, "LM", "RM", "DM", "OM", "ZM", "ST");
	addText("AbprallerOFF");
	return 21; //zentral am Sechzehner
}
else {
	Verteidiger = getPlayerFrom(Verteidigung, "LI", "LM", "DM", "RM", "IV", "RV", "LV", "MD");
	addText("AbprallerDEF");
	return 0;
}