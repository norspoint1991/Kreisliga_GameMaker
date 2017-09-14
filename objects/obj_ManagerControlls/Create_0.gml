height = window_get_height();
width = window_get_width();

viewArray[3] = "Tabelle";
viewArray[2] = "Kalender";
viewArray[1] = "Aufstellung";
viewArray[0] = "Nachrichten";
buttonArray[3] = undefined;

var xOffset = 0;
for (var i = 0; i < array_length_1d(viewArray); i++){	
	buttonArray[i] = instance_create_depth(	xOffset, sprite_get_height(spr_button)/2, 0,
										obj_ManagerLeiste);
	buttonArray[i].text = viewArray[i];
	xOffset += sprite_get_width(spr_button);
}

nextTaskButton = instance_create_depth(	window_get_width() - sprite_get_width(spr_button) - 20,
										window_get_height() - sprite_get_height(spr_button)/2 - 10,
										0, obj_nextTaskButton);
nextTaskButton.text = "Spieltag starten"
nextTaskButton.action = 0;

currentObject = instance_create_depth(0, sprite_get_height(spr_button) + 5, 0, obj_NachrichtenGUI);