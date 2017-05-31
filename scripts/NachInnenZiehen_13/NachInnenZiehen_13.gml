addText("NachInnenZiehen");
var schranke = SpielerMitBall.selbstbewusstsein;
var roll = ranRoll();
if (roll == 100){
	addText("BallVerstolpern");
	return 0;
}
else if (roll <= schranke) {
	return 42; //Schuss vom Sechszehner außen
}
else return 17; //Quer legen