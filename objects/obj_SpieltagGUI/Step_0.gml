if(simulationRunning)
{
	step++;
	if ((zeilenCounter * simulationSpeed) - step <= 0)
	{	
		step = 0;
		zeilenCounter = 0;

		if (zeit <= spielzeit) 
		{
			switch (thisEvent){
	
			case 0 : // PULLEVENT
				thisEvent = pullEvent_0();
				break;
			case 1 : //Langer Pass auf Außen
				thisEvent = AussenbahnPass_1();
				break;
			case 2: //Doppelpass über die Mittellinie
				thisEvent = DoppelpassMittellinie_2();
				break;
			case 3: //Dribbling über die Mittellinie
				thisEvent = DribblingMittellinie_3();
				break;
			case 4: //Pass an den Sechzehner
				thisEvent = PassAnSechzehner_4();
				break;	
			case 5: //Hoher Ball in den Sechzehner
				thisEvent = hoherBallSechzehner_5();
				break;
			case 6: //Balleroberung durch Pressing
				thisEvent = BalleroberungPressing_6();
				break;
			//case 7:
			
			case 11 : // Spieler mit Ball auf außen
				thisEvent = SpielerAufAussen_11();
				break;
			case 12: //Abpraller
				thisEvent = Abpraller_12();
				break;
			case 13: //Spieler zieht nach innen
				thisEvent = NachInnenZiehen_13();
				break;
			case 14: //Spieler flankt
				thisEvent = Flanken_14();
				break;
			case 15: //Laufduell auf Außen
				thisEvent = LaufduellaufAussen_15();
				break;
			case 16: //Spieler gegn. Hälfte
				thisEvent = SpielerGegnHaelfte_16();
				break;
			case 17: //Quer legen
				thisEvent = Querlegen_17();
				break;
			case 18: //Kopfball aufs Tor
				thisEvent = Kopfball_18();
				break;
			case 19: //Kopfballduell
				thisEvent = Kopfballduell_19();
				break;
			case 20: //Ball durchstecken
				thisEvent = BallDurchstecken_20();
				break;
			case 21: //Spieler mit Ball zentral am Sechzehner
				thisEvent = zentralAmSechzehner_21();
				break;
			case 22: //Dribbling gegn. Hälfte
				thisEvent = DribblingGegnHaelfte_22();
				break;
			case 23: //Ball verteilen gegn. Hälfte
				thisEvent = BallVerteilenGegnHaelfte_23();
				break;
			//case 25: //Ball von außen in den Strafraum; Kopfball, Ball rutscht durch zusammenfassen
			//			//für Ecke und Flanke
			
			case 30: //Ecke
				thisEvent = Ecke_30();
				break;
			case 31: //Freistoss, direkt
				thisEvent = FreistossDirekt_31();
				break;
			case 32: //Freistoss, Flanke
				thisEvent = FreistossFlanke_32();
				break;
			//case 33: //Elfmeter
			case 40: //Schuss kurze Distanz
				thisEvent = Schuss5_40();
				break;
			case 41:  //Fernschuss Sechzehner zentral
				thisEvent = Schuss16_41();
				break;		
			case 42: //Fernschuss Sechzehner außen
				thisEvent = Schuss20_42();
				break;
			//case 70: //Abseits, ab hier aufsteigend die "Schiri Events"
			case 80: //Konter - Event, dass den Angriff umkehrt
				thisEvent = Konter_80();
				break;
			case 81: //Konter über Außen
				thisEvent = KonterAussen_81();
				break;
			case 82: //Konter durch die Mitte
				thisEvent = KonterMitte_82();
				break;
			//case 90: //Verzweifelungsschuss - Event bei kleiner Moral
			case 99: //Torwart haelt
				thisEvent = torwartHaelt_99();
				break;
			case 100: // TOOOOR
				thisEvent = Tor_100();
				break;
				
			default:
				thisEvent = 0;
				break;
			}	
		}
		else simulationRunning = false;
	}
}


if (zeilenGesamt >= maxLines)
{
	Spieltag_scrollbar.gesamtheit = zeilenGesamt;
					
	//Kamera Position anpassen, damit der Text scrollt
	if(Spieltag_scrollbar.bar_position == 0){
		camera_set_view_pos(view_camera[0], 
							camera_get_view_x(view_camera[0]),
							boxheight/20 + (zeilenGesamt - maxLines) * font_height);
	}
	if(Spieltag_scrollbar.bar_moved){
		camera_set_view_pos(view_camera[0], 
							camera_get_view_x(view_camera[0]),
							boxheight/20 + (1 - Spieltag_scrollbar.bar_position) * (zeilenGesamt - maxLines) * font_height);
	}
}