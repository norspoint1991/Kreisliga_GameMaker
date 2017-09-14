switch(action){
	//case 0:
	//	room_goto(rm_SpielView);
	//	break;	
	case 1:
		global.simulationRunning = true;
		text = "Pause";
		action = 2;
		break;
	case 2:
		global.simulationRunning = false;
		text = "Weiter";
		action = 3;
		break;
	case 3:
		global.simulationRunning = true;
		text = "Pause";
		action = 2;
		break;
	case 4:
		room_goto(rm_ManagerView);
		break;
	default: break;
}