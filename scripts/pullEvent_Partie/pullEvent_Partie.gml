//Zuweisungen und Busy wieder auf null
cancelBusy();
var nextEvent = 0;

zeit++;

nextEvent = irandom_range(0, 6);
if(nextEvent != 0){
	with(Auswaertsteam) event_user(1); //Initiative Werte neu bestimmen
	with(Heimteam) event_user(1);
	var schranke = ratioX(Heimteam.teamInitiative, Auswaertsteam.teamInitiative)
	var roll = ranRoll();
	if (roll < schranke) {
		Angriff = Heimteam;
		Verteidigung = Auswaertsteam;
	}
	else {
		Angriff = Auswaertsteam;
		Verteidigung= Heimteam;
	}
	addText("imBallbesitz");
}
else{
	addText("keinEvent");
	nextEvent = 0;

}
return nextEvent;