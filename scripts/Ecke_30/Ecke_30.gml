cancelBusy();
var Eckengeber = getPlayerFrom(Angriff, "ZM", "OM");
var roll = ranRoll();
//TODO Eckentaktik in Team einbauen
//if (roll <= 50){
//	Eckengeber = Angriff.taktik.getSpielerEckelinks();
//	p.println(Eckengeber.getNamePosition() + " steht links zur Ecke bereit. ");
//}
//else{
//	Eckengeber = Angriff.taktik.getSpielerEckerechts();
//	p.println(Eckengeber.getNamePosition() + " steht rechts zur Ecke bereit. ");
//}
flankenQualitaet = Eckenqualitaet(Eckengeber);
if (SpielerMitBallVorher != undefined){
	SpielerMitBallVorher.busy = false;
}
SpielerMitBallVorher = Eckengeber;
SpielerMitBallVorher.busy = true;
SpielerMitBall = getPlayerFrom(Angriff, "OM", "ZM", "ST");
	
if (flankenQualitaet != 0) {
	return 19; //Kopfballduell
}
else{
	return 0;
}