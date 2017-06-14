switch(action){
	//case 0:
	//	room_goto(rm_SpielView);
	//	break;	
	case 1:
		simulationRunning = true;
		text = "Pause";
		action = 2;
		break;
	case 2:
		simulationRunning = false;
		text = "Weiter";
		action = 3;
		break;
	case 3:
		simulationRunning = true;
		text = "Pause";
		action = 2;
		break;
	default: break;
}