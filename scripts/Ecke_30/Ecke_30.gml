cancelBusy();
zeit++;
SpielerMitBall = getPlayerFrom(Angriff, "ZM", "OM"); //TODO Taktik Eckengeber einfügen
addText("Ecke");
flankenQualitaet = Eckenqualitaet(SpielerMitBall);
if (flankenQualitaet != 0) {
	return 19; //Kopfballduell
}
else{
	return 0;
}