	// alle Spieler wieder für Aktionen freigeben
		for (Spieler spieler : Heimteam.getTeam().values()){
			spieler.setBusy(false);
		}
		for (Spieler spieler : Auswaertsteam.getTeam().values()){
			spieler.setBusy(false);
		}
		// alle Zuweisungen wieder aufheben
		SpielerMitBall = null;
		SpielerMitBallVorher = null;
GegnerVorher = null;