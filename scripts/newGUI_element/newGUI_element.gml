///newGUI_element(xpos, ypos, width, height, object_id)

/// @description Creates an instance of a given object at a given position.
/// @param xpos x-Position
/// @param ypos y-Position
/// @param winwidth Breite des Fensters
/// @param winheight Höhe des Fensters
/// @param object_id object_id (Object muss vorher erstellt werden)

var xpos, ypos, winwidth, winheight, object_id, curX;

xpos = argument0;
ypos = argument1;
winwidth = argument2;
winheight = argument3;
object_id = argument4;

//alle GUI Objekte haben eine Variable hoehe
//Entscheidung ob scrollbar oder nicht wird nach dem Verhältnis hoehe/winheight getroffen
if (object_id.hoehe > winheight){
	//Raum anpassen
	if(object_id.hoehe > room_height){
		room_height = object_id.hoehe;
	}
	curX = room_width;
	room_width += winwidth;
	
	with(object_id){
	
		//Objekt verschieben und gui Position einfügen
		x = window_get_width() + curX;
		gui_x = xpos;
		gui_y = ypos;
	
		//Position und Größe für View und Scrollbar verändern
		var gui_height = 0;
		if(ueberschrift != undefined) { 
			gui_height += string_height(ueberschrift);
		}
		if(spaltenBezeichnungen[0] != undefined) { 
			gui_height += string_height(spaltenBezeichnungen[0]);
		}
		ypos = ypos + gui_height;
		winheight = winheight - gui_height;
	}
	//View erstellen und setzen
	if(!view_visible[0]) {view0default();}
	if(!view_enabled) {view_enabled = true;}
	for (var cameraNum = 1; cameraNum < 8; cameraNum++){
		if(!view_visible[cameraNum]){
			view_camera[cameraNum] = camera_create_view(object_id.x,
														object_id.y,
														winwidth,
														winheight,
														0, -1, -1, -1, 0, 0);
			view_visible[cameraNum] = 1;
			view_xport[cameraNum] = xpos;
			view_yport[cameraNum] = ypos;
			view_wport[cameraNum] = winwidth;
			view_hport[cameraNum] = winheight;
			break;
		}
	}

	var scrollbar = instance_create_depth(0, 0, 0, obj_scrollbar);
	with(scrollbar){
		scrollwindow_x1 = xpos;
		scrollwindow_y1 = ypos;
		scrollwindow_x2 = xpos + winwidth;
		scrollwindow_y2 = ypos + winheight;
		anteil = winheight;
		gesamtheit = object_id.hoehe;
		cameraPort = cameraNum;
	}
	curX += winwidth;
}
else{
	object_id.x = xpos;
	object_id.y = ypos;
}