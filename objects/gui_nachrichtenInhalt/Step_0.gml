if (gewNachricht.id != idVorher){
	ueberschrift =  date_datetime_string(gewNachricht.eingangsZeit);
	ueberschrift2 = gewNachricht.titel;
	
	inhaltList = text_split_breite(gewNachricht.inhalt, breite - 2*padding);
	
	idVorher = gewNachricht.id;
	
	if(gewNachricht.zuBeantworten){
		var optionsCnt = array_length_1d(gewNachricht.option);
		for(var i = 1; i <= optionsCnt; i++){
			btnArray[optionsCnt - i] = instance_create_depth(x + breite/3, 
															y + hoehe - sprite_get_height(spr_button_small)*i*2,
															0, btn_nachrichtOption);
			btnArray[optionsCnt - i].text = gewNachricht.option[optionsCnt - i];
		}
	}
	else{
		with(btn_nachrichtOption){instance_destroy();}
	}
}

if(gewNachricht.zuBeantworten){
	for (var j = 0; j < array_length_1d(btnArray); j++){
		if(btnArray[j].pressed = true){
			gewNachricht.zuBeantworten = false;
			with(btn_nachrichtOption){instance_destroy();}
			//TODO konsequenz ausführen
		}
	}
}
