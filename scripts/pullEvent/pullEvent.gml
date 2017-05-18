////Zuweisungen und Busy wieder auf null
//cancelBusy();
		
//if (time == 0) {
//	p.println(text.Minute(time) + text.Eroeffnung(Heimteam.getTeamName(), Auswaertsteam.getTeamName()));
//}
//var nextEvent = 0;
//if(time <= endtime){
//	nextEvent = r.randomIntegerbetween(0, 10);
//	if(nextEvent != 0){
//		var Schranke = (int) (100 * (Heimteam.getTeamInitiative()/(Heimteam.getTeamInitiative() + Auswaertsteam.getTeamInitiative())));
//		var roll = r.randomInteger();
//		if (roll < Schranke) {
//			Angriff = Heimteam;
//			Verteidigung= Auswaertsteam;
//		}
//		else {
//			Angriff = Auswaertsteam;
//			Verteidigung= Heimteam;
//		}
//		p.println(text.Minute(time) + text.imBallbesitzt(Angriff.getTeamName()));
//		nextEvent = 1;
//	}
//	else{
//		p.println(text.Minute(time) + text.KeinEvent());
//		nextEvent = 0;
//	}
//}
//return nextEvent;