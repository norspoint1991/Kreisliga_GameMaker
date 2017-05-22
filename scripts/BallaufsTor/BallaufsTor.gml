Spieler torwart = getPlayerFrom(Verteidigung, "TW");
		var roll = ranRoll();

		if ( roll <= Schranke) {
			int latte = r.randomInteger();
			if (latte <= 1){
				p.println("An die Latte! Und der wird nochmal heiß");
				return 10; //Abpraller
			}
			else {
				p.println("Und passt perfekt! TOR!!!!!!");
				return 100; //Tor verarbeiten je nach Ergebnis etc.
			}
		}
		else {
			return torwartHaelt(torwart);
}