if (SpielerMitBallVorher != undefined){
	SpielerMitBallVorher.busy = false;
}
SpielerMitBallVorher = SpielerMitBall;
SpielerMitBallVorher.busy = true;
SpielerMitBall = getPlayerFrom(Angriff, "RM", "LM", "DM", "ZM", "OM", "ST");
var schranke = (SpielerMitBall.geschwindigkeit + SpielerMitBall.pass + SpielerMitBallVorher.geschwindigkeit + SpielerMitBallVorher.pass)/4;
var roll = ranRoll();

if (roll <= schranke){
	addText("DoppelpassMittellinie");
	schranke = SpielerMitBall.selbstbewusstsein;
	roll = ranRoll();
	if (roll <= schranke){
		return 42; //Schuss aus 20m
	}
	else {
		return 20; //Ball durchstecken
	}
}
else{
	Verteidiger = getPlayerExcept(Verteidigung, "TW", "ST");
	addText("DoppelpassMittellinieAbgefangen");
	return 0;
}