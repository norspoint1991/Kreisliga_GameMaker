SpielerMitBall =  getPlayerExcept(Angriff, "ST", "TW");
SpielerMitBall.busy = true;
addText("Aussenbahnpass");
passQualitaet = Passqualitaet(SpielerMitBall); 

if (Passqualitaet != 0) {
	return 15; //Laufduell auf Aussen
}
else{
	return 0;
}