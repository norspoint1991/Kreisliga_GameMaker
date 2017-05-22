Spieler verteidiger = getPlayerFrom(Verteidigung, "VER");
		var Schranke = v.RatioX(SpielerMitBall.getStellungsspiel(), verteidiger.getStellungsspiel());
		var roll = ranRoll();
		if (roll <= Schranke){
			p.println("Er steht komplett alleine. ");
			Schranke = v.RatioX(SpielerMitBall.getAntizipation(), SpielerMitBall.getSelbstbewusstsein());
			roll = r.randomInteger();
			if (roll <= Schranke){
				return 23; //Ball durchstecken
			}
			else{
				return 22; //Schuss vom Sechzehner zentral
			}
		}
		else{
			p.println(verteidiger.getNamePosition() + " stellt ihn. ");
			if(Dribbling(SpielerMitBall, verteidiger)){
				Schranke = v.RatioX(SpielerMitBall.getAntizipation(), SpielerMitBall.getSelbstbewusstsein());
				roll = r.randomInteger();
				if (roll <= Schranke){
					return 23; //Ball durchstecken
				}
				else{
					return 22; //Schuss vom Sechzehner zentral
				}
			}
			else return 0;
}