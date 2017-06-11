Verteidiger = getPlayerFrom(Verteidigung, "MIT");
if(Dribbling(SpielerMitBall, Verteidiger)){
	if (GegnerVorher != undefined){
		GegnerVorher.busy = false;
	}
	GegnerVorher = Verteidiger;
	GegnerVorher.busy = true;
	return 21; //zentral am Sechzehner
}
else return 0; //pull Event
	