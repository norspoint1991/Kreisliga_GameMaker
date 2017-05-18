if(simulationRunning)
{
	step++;
	if (step%10 = 0)
	{
		zeit++;
		ds_list_add(ZeitList, string_time(zeit));
		if(zeit < 2)
		{
			ds_list_add(EventText, TextSimulation_ini("Begruessung"));
		}
		else if(zeit < 10) 
		{
			Angreifer = getPlayerExcept(Heimteam, "TW", "LM");
			ds_list_add(EventText, TextSimulation_ini("Aussenbahnpass"));
		}
		else ds_list_add(EventText,TextSimulation_ini("guterPass"));

		if (ds_list_size(EventText) > maxLines)
		{
			camera_set_view_pos(view_camera[0], 
								camera_get_view_x(view_camera[0]),
								camera_get_view_y(view_camera[0]) + font_height);
		}
	}
}


////Alle returns für die Events sind int
////Alle nicht-Event returns sind double, damit man Events verschieben kann
////(einfach alle returns entsprechend ändern)
		

//if (zeit <= spielzeit) 
//{

//	if (zeit == 45 && ThisEvent == 0){
//		ds_list_add(EventText,TextSimulation_ini("zweiteHalbzeit"));
//	}
//	switch  (ThisEvent){
		
//	case 0 : // PULLEVENT
//		time += 1;
//		ThisEvent = pullEvent();
//		break;

//	case 1 : //LANGER PASS AUF AUSSEN 
//		ThisEvent = AussenbahnPass();
//		break;
//	case 2: //Doppelpass über die Mittellinie
			
//	case 3: //Dribbling über die Mittellinie
				
//	case 4: //Pass an den Sechzehner
				
//	case 5: //Hoher Ball in den Sechzehner
			
//	case 6: //Balleroberung durch Pressing
				
//	case 7: //Ball halten

				
//	case 11 : // Spieler mit Ball auf außen
//		ThisEvent = SpielerAufAussen();
//		break;
//	case 12: //Abpraller
//		ThisEvent = Abpraller();
//		break;
//	case 13: //Spieler zieht nach innen
//		ThisEvent = NachInnenZiehen();
//		break;
//	case 14: //Spieler flankt
//		ThisEvent = Flanken();
//		break;
//	case 15: //Laufduell auf Außen
//		ThisEvent = LaufduellaufAussen();
//		break;
//	case 16: //Fernschuss Sechzehner außen
//		ThisEvent = Schuss(20);
//		break;
//	case 17: //Quer legen
//		ThisEvent = querLegen();
//		break;
//	case 18: //Kopfball aufs Tor
//		ThisEvent = kopfball();
//		break;
//	case 19: //Kopfballduell
//		ThisEvent = kopfballduell();
//		break;
//	case 20: //Ecke
//		ThisEvent = Ecke();
//		break;
//	case 21: //Spieler mit Ball zentral am Sechzehner
//		ThisEvent = zentralAmSechzehner();
//		break;
//	case 22: //Fernschuss Sechzehner zentral
//		ThisEvent = Schuss(16);
//		break;
				
//	case 25: //Ball von außen in den Strafraum; Kopfball, Ball rutscht durch zusammenfassen
//				//für Ecke und Flanke
				
//	case 70: //Abseits, ab hier aufsteigend die "Schiri Events"
//	case 80: //Konter - Event, dass den Angriff umkehrt
//	case 90: //Verzweifelungsschuss - Event bei kleiner Moral
//	case 100: // TOOOOR
//		ThisEvent = Tor();
//		break;
				
//	default: 
//		ThisEvent = 0;
//		break;
//	}	
//}

