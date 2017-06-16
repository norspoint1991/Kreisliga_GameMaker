Verteidiger = getPlayerFrom(Verteidigung, "MIT");
if (Foul()){
	addText("FreistossMittelfeld");
	return 32;
}
addText("DribblingGegnHaelfte");
if(Dribbling()){
	if (GegnerVorher != undefined){
		GegnerVorher.busy = false;
	}
	GegnerVorher = Verteidiger;
	GegnerVorher.busy = true;
	return 21; //zentral am Sechzehner
}
else return 0; //pull Event
	