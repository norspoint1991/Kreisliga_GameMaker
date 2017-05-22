cancelBusy();
		Spieler Eckengeber = null;
		var roll = ranRoll();
		if (roll <= 50){
			Eckengeber = Angriff.taktik.getSpielerEckelinks();
			p.println(Eckengeber.getNamePosition() + " steht links zur Ecke bereit. ");
		}
		else{
			Eckengeber = Angriff.taktik.getSpielerEckerechts();
			p.println(Eckengeber.getNamePosition() + " steht rechts zur Ecke bereit. ");
		}
		Flankenqualitaet = EckenQualitaet(Eckengeber);
		
		if (Flankenqualitaet == 100.0) {
			if (SpielerMitBallVorher != undefined){
				SpielerMitBallVorher.busy = false;
			}
			SpielerMitBallVorher = SpielerMitBall;
			SpielerMitBallVorher.busy = true;
			SpielerMitBall = getPlayerFrom(Angriff, "OM", "ZM", "ST");
			return 18; //Kopfball
		}
		else if (Flankenqualitaet == 10.0 || Flankenqualitaet == -10.0) {
			return 19; //Kopfballduell
		}
		else{
			return 0;
}