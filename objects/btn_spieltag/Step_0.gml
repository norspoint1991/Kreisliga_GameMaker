if(global.simulationRunning = false && action == 2){
	text = "Weiter";
	action = 3;
}
if(gui_spieltag.zeit == gui_spieltag.spielzeit){
	action = 4;
	text = "Spieltag beenden"
}
