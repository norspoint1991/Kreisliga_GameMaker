//Spiele
Heimteam.spiele += 1;
Auswaertsteam.spiele += 1;
//Punkte und GUN Statistik
if(heimteamTore > auswaertsteamTore){
	Heimteam.punkte += 3;
	Heimteam.siege += 1;
	Auswaertsteam.niederlagen += 1;
}
else if (heimteamTore == auswaertsteamTore){
	Heimteam.punkte += 1;
	Auswaertsteam.punkte += 1;
	Heimteam.unentschieden += 1;
	Auswaertsteam.unentschieden += 1;
}
else{ 
	Auswaertsteam.punkte += 3;
	Heimteam.niederlagen += 1;
	Auswaertsteam.siege += 1;
}
//Torverhältnis
Heimteam.tore += heimteamTore;
Auswaertsteam.tore += auswaertsteamTore;
Heimteam.gegentore += auswaertsteamTore;
Auswaertsteam.gegentore += heimteamTore;