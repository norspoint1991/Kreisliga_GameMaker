cancelBusy();
zeit++;
SpielerMitBall = getPlayerFrom(Angriff, "ZM", "OM"); //TODO Taktik Freistossschütze einfügen
addText("Freistoss");
flankenQualitaet = Freistossqualitaet(SpielerMitBall);
if (flankenQualitaet != 0) {
	return 19; //Kopfballduell
}
else{
	return 0;
}