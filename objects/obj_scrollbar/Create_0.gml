//default Werte; nach dem Erstellen anpassen
width = 16;
height = 100;

//Abstand vom Rand zur Bar
spacing = 1;

//Die zwei Größen, die für die Bar in relation gesetzt werden sollen
gesamtheit = 100;
anteil = 100;

bar_height = 1;
bar_position = 0; // Position, 0 bedeutet ganz unten, 1 ganz oben

bar_y_start = y + spacing + 1 + (1 - bar_position) * (height - bar_height * height);
bar_y_end = y + (1 - bar_position) * (height - bar_height * height) + (bar_height * height) - (spacing + 1);