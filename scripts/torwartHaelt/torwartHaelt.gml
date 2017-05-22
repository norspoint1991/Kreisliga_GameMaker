p.println(text.TorwartHaelt(torwart));
		var roll = ranRoll();
		if (roll <= torwart.getTorwart()/2){
			p.println(text.TorwartHaeltFest());
			return 0;
		}
		else if (roll <= torwart.getTorwart()) {
			p.println(text.TorwartZurEcke());
			return 20; //Ecke
		}
		else {
			p.println(text.TorwartAbpraller());
			return 12; //Abpraller
}