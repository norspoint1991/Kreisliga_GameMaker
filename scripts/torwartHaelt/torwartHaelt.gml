addText("TorwartHaelt");
var roll = ranRoll();
if (roll <= Verteidiger.torwart/2){
	addText("TorwartHaeltFest");
	return 0;
}
else if (roll <= Verteidiger.torwart) {
	addText("TorwartZurEcke");
	return 20; //Ecke
}
else {
	addText("TorwartAbpraller");
	return 12; //Abpraller
}