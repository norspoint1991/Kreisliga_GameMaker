var Schranke = SpielerMitBall.getKopfball();
		var roll = ranRoll();

		if ( roll <= Schranke) {			
			p.println("Der kommt gut ");
			Spieler torwart = getPlayerFrom(Verteidigung, "TW");
			Schranke = v.RatioX(SpielerMitBall.getKopfball(), torwart.getTorwart());
			return BallAufsTor(Schranke);
		}
		else {
			p.println("Meilenweit daneben. ");
			return 0;
}