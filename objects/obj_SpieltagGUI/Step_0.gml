if(simulationRunning)
{
	step++;
	if (step%2 = 0)
	{	
		zeilenCounter = 0;

		//Alle returns für die Events sind int
		//Alle nicht-Event returns sind double, damit man Events verschieben kann
		//(einfach alle returns entsprechend ändern)
		if (zeit <= spielzeit) 
		{
			switch  (thisEvent){
		
			case 0 : // PULLEVENT
				thisEvent = pullEvent();
				zeit += 1;
				break;
			case 1 : //Langer Pass auf Außen
				thisEvent = AussenbahnPass();
				break;
			//case 2: //Doppelpass über die Mittellinie
			
			//case 3: //Dribbling über die Mittellinie
				
			//case 4: //Pass an den Sechzehner
				
			//case 5: //Hoher Ball in den Sechzehner
			
			//case 6: //Balleroberung durch Pressing
				
			//case 7: //Ball halten
			
			case 11 : // Spieler mit Ball auf außen
				thisEvent = SpielerAufAussen();
				break;
			//case 12: //Abpraller
			//	thisEvent = Abpraller();
			//	break;
			//case 13: //Spieler zieht nach innen
			//	thisEvent = NachInnenZiehen();
			//	break;
			//case 14: //Spieler flankt
			//	thisEvent = Flanken();
			//	break;
			//case 15: //Laufduell auf Außen
			//	thisEvent = LaufduellaufAussen();
			//	break;
			//case 16: //Fernschuss Sechzehner außen
			//	thisEvent = Schuss(20);
			//	break;
			//case 17: //Quer legen
			//	thisEvent = querLegen();
			//	break;
			//case 18: //Kopfball aufs Tor
			//	thisEvent = kopfball();
			//	break;
			//case 19: //Kopfballduell
			//	thisEvent = kopfballduell();
			//	break;
			//case 20: //Ecke
			//	thisEvent = Ecke();
			//	break;
			//case 21: //Spieler mit Ball zentral am Sechzehner
			//	thisEvent = zentralAmSechzehner();
			//	break;
			//case 22: //Fernschuss Sechzehner zentral
			//	thisEvent = Schuss(16);
			//	break;
				
			//case 25: //Ball von außen in den Strafraum; Kopfball, Ball rutscht durch zusammenfassen
			//			//für Ecke und Flanke
				
			//case 70: //Abseits, ab hier aufsteigend die "Schiri Events"
			//case 80: //Konter - Event, dass den Angriff umkehrt
			//case 90: //Verzweifelungsschuss - Event bei kleiner Moral
			//case 100: // TOOOOR
			//	thisEvent = Tor();
			//	break;
				
			default: 
				thisEvent = 0;
				break;
			}	
		}
		else simulationRunning = false;
		
		//Kamera Position anpassen, damit der Text scrollt
		if (zeilenGesamt > maxLines)
		{
			camera_set_view_pos(view_camera[0], 
								camera_get_view_x(view_camera[0]),
								camera_get_view_y(view_camera[0]) + (font_height*zeilenCounter));
		}
	}
}

