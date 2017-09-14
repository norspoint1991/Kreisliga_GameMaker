textAusgabe = false;

//Zahlen zum Spiel
zeit = 0;
zeitVorher = -1;
spielzeit = 90;
heimteamTore = 0;
auswaertsteamTore = 0;
zweiteHalbzeit = true; //gesetzt, damit das Spiel nicht mehrfach unterbrochen wird

//Teams werden über Konstruktor gesetzt
Heimteam = undefined;
Auswaertsteam = undefined;

//Simulations Platzhalter
thisEvent = 0;
Angriff = undefined; //Team im Angriff
Verteidigung = undefined; //Team in der Verteidigung
Angreifer = undefined; 
Verteidiger = undefined;
GegnerVorher = undefined;
SpielerMitBallVorher = undefined;
SpielerMitBall = undefined;
seite = "rechts";
//Qualitaeten
flankenQualitaet = 0;
passQualitaet = 0;

