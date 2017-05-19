//Zuweisungen und Busy wieder auf null

//TODO cancelBusy();
		
if (zeit == 0) {
	addText("Begruessung");
}
var nextEvent = 0;

nextEvent = irandom_range(0, 10);
if(nextEvent != 0){
	var Schranke = 50; //TODO (int) (100 * (Heimteam.getTeamInitiative()/(Heimteam.getTeamInitiative() + Auswaertsteam.getTeamInitiative())));
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