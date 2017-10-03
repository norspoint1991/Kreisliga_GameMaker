/// @description Insert description here
// You can write your code in this editor



if  (counter == 2) {
	with(ctrl_SaveGame.fileSys) {
	event_user(1); 
	}


}
if (counter == 1) {

	if ( nameTextBox.input == "") {
	nameTextBox.errorAlarm = true;
	nameTextBox.headline = "Mensch gib doch nen Namen ein. Mann ey!"; 
	
	}
	else {
		var newSavegame = instance_create_depth(0,0,0, sys_saveFile);
		newSavegame.name = nameTextBox.input;
		newSavegame.team = global.eigenesTeam.teamName;
		newSavegame.lastLoaded = dateToString();
with(ctrl_SaveGame.fileSys) {
	gameToAdd = newSavegame;
	newGameName = btn_newSave.nameTextBox.input;
	event_user(0); 
	
	}
}
}


if (counter == 0) {
	nameTextBox = instance_create_depth(x, y+ 100 , 0 , obj_TextBox);
	nameTextBox.headline = "Wie soll der Spielstand heißen?";
	text = "fertig!";
	counter = 1;
}

