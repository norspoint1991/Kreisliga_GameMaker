addText("NachInnenZiehen");
var Schranke = SpielerMitBall.selbstbewusstsein;
var roll = ranRoll();
if (roll == 100){
	addText("BallVerstolpern");
	return 0;
}
else if (roll <= Schranke) {
	return 16; //Schuss vom Sechszehner außen
}
else return 17; //Quer legen