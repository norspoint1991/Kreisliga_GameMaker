Spieler block = getPlayerFrom(Verteidigung, "IV", "LI", "MD", "DM");
		var Schranke = 50 + SpielerMitBall.getSchuss() - block.getStellungsspiel();
		var roll = ranRoll();
		if (roll <= Schranke){
			p.println("Durch alle hindurch. ");
			return false;
		}
		else{
			p.println("Und wird geblockt. ");
			return true;
}