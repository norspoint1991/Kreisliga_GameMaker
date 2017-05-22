var Schranke = 20 + SpielerMitBall.getPass();
		var roll = ranRoll();
		if (roll <= Schranke){
			if (SpielerMitBallVorher != undefined){
				SpielerMitBallVorher.busy = false;
			}
			SpielerMitBallVorher = SpielerMitBall;
			SpielerMitBallVorher.busy = true;
			SpielerMitBall = getPlayerFrom(Angriff, "ZM", "OM", "RM", "LM");
			p.println("Und legt den Ball auf " + SpielerMitBall.getNamePosition() + " quer.");
			return 21; //Spieler mit Ball zentral am Sechzehner
		}
		else {
			Spieler verteidiger = getPlayerFrom(Verteidigung, "VER");
			p.println("Und versucht quer zu legen, aber " + verteidiger.getNamePosition() + " fängt den Ball ab und klärt. ");
			return 0;
}