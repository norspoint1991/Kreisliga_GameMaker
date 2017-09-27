for (var i = 0; i < array_length_1d(buttonArray); i++){
	if(buttonArray[i].clicked == true){
		event_user(i);
		buttonArray[i].clicked = false;
	}
}
