if(simulationRunning = false && action == 2){
	text = "Weiter";
	action = 3;
}
if(obj_SpieltagGUI.zeit == obj_SpieltagGUI.spielzeit){
	action = 4;
	text = "Spieltag beenden"
}
