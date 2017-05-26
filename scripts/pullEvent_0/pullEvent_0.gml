//Zuweisungen und Busy wieder auf null
cancelBusy();
		
if (zeit == 0) {
	addText("Begruessung");
}
if (zeit == 45){
	addText("zweiteHalbzeit");
}
var nextEvent = 0;

nextEvent = irandom_range(0, 10);
if(nextEvent != 0){
	with(Auswaertsteam) event_user(1); //Initiative Werte neu bestimmen
	with(Heimteam) event_user(1);
	var Schranke = ratioX(Heimteam.teamInitiative, Auswaertsteam.teamInitiative)
	var roll = ranRoll();
	if (roll < Schranke) {
		Angriff = Heimteam;
		Verteidigung = Auswaertsteam;
	}
	else {
		Angriff = Auswaertsteam;
		Verteidigung= Heimteam;
	}
	addText("imBallbesitz");
	nextEvent = 1; //TODO löschen sobald alle StartEvents beschrieben sind
}
else{
	addText("keinEvent");
	nextEvent = 0;

}
return nextEvent;