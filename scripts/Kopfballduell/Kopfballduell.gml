Spieler angreifer = getPlayerFrom(Angriff, "ST", "OM", "ZM");
		Spieler verteidiger = getPlayerFrom(Verteidigung, "LI", "IV", "MD");
		var Schranke = (int)(Flankenqualitaet) + v.RatioX(angreifer.getKopfball(), verteidiger.getKopfball());
		var roll = ranRoll();

		if ( roll <= Schranke) {
			p.println(text.KopfballDuell(angreifer, verteidiger) + text.DuellPositiv(angreifer, verteidiger));
			if (SpielerMitBallVorher != undefined){
				SpielerMitBallVorher.busy = false;
			}
			SpielerMitBallVorher = SpielerMitBall;
			SpielerMitBallVorher.busy = true;
			SpielerMitBall = angreifer;
			return 18; //Kopfball
		}
		else {
			p.println(text.KopfballDuell(angreifer, verteidiger) + text.DuellNegativ(angreifer, verteidiger));
			return 0;
}