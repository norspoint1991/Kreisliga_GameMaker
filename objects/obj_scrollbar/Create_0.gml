//default Werte; nach dem Erstellen anpassen
width = 16;
height = 100;

//Abstand vom Rand zur Bar
spacing = 2;
padding = 16;

//Die zwei Größen, die für die Bar in relation gesetzt werden sollen
gesamtheit = 100;
anteil = 100;

bar_height = 1;
bar_position = 0; // Position, 0 bedeutet ganz unten, 1 ganz oben
bar_position_prev = 0;
bar_moved = false;
bar_clicked = false;

bar_y1 = y + spacing + 1 + (1 - bar_position) * (height - bar_height * height);
bar_y2 = y + (1 - bar_position) * (height - bar_height * height) + (bar_height * height) - (spacing + 1);

//Scrollable Window (Coordinates)
scrollwindow_x1 = 100;
scrollwindow_y1 = 100;
scrollwindow_x2 = 100;
scrollwindow_y2 = 100;

//init
initialisiert = false;