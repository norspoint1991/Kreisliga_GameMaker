addText("Flanke");
flankenQualitaet = Flankenqualitaet(SpielerMitBall);
		
if (flankenQualitaet == 100.0) {
	if (SpielerMitBallVorher != undefined){
		SpielerMitBallVorher.busy = false;
	}
	SpielerMitBallVorher = SpielerMitBall;
	SpielerMitBallVorher.busy = true;
	SpielerMitBall = getPlayerFrom(Angriff, "OM", "ZM", "ST");
	return 18; //Kopfball
}
else if (flankenQualitaet == 10.0 || flankenQualitaet == -10.0) {
	return 19; //Kopfballduell
}
else{
	return 0;
}