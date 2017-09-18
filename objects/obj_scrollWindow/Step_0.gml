if !initialisiert
{
	draworigin_x = room_width;
	//Scrollbar
	Spieltag_scrollbar = instance_create_depth(x + view_width - padding, y + 1, 0, obj_scrollbar)
	Spieltag_scrollbar.width = padding;
	Spieltag_scrollbar.height = view_height;
	Spieltag_scrollbar.spacing = 2;
	Spieltag_scrollbar.scrollwindow_x1 = x;
	Spieltag_scrollbar.scrollwindow_y1 = y;
	Spieltag_scrollbar.scrollwindow_x2 = view_width;
	Spieltag_scrollbar.scrollwindow_y2 = view_height;
	//Spieltag_scrollbar.anteil = maxLines;
	//Spieltag_scrollbar.gesamtheit = maxLines;


}