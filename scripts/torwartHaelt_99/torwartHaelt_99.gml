addText("TorwartHaelt");
var roll = ranRoll();
if (roll <= Verteidiger.torwart/2){
	addText("TorwartHaeltFest");
	return 0;
}
else if (roll <= Verteidiger.torwart) {
	addText("TorwartZurEcke");
	return 30; //Ecke
}
else {
	addText("TorwartAbpraller");
	return 12; //Abpraller
}