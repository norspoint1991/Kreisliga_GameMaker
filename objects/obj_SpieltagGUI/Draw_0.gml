draw_set_halign(fa_left);
draw_set_valign(fa_top);


////draw_set_color(c_gray);
////draw_rectangle(x, y, x + boxwidth, y + boxheight, 0);

//draw_set_color(c_green);
//draw_rectangle(x, y, x + boxwidth, y + boxheight/20, 0);

//draw_set_color(c_black);
//draw_rectangle(x, y, x + boxwidth, y + boxheight/20, 1);
//draw_rectangle(x, y + boxheight/20, boxwidth, y + boxheight, 1);

//draw_set_font(fnt_headline);
//draw_set_color(c_black);
//draw_text(x + boxwidth/2 - (string_width(headline)/2), y + boxheight/40 - string_height(headline)/2, headline);

draw_set_font(fnt_default);
font_height = string_height("Test");

var k = 0;

for(var i = 0; i < ds_list_size(eventList); i++)
{
	draw_text(	x + padding,
				y + padding + boxheight/20 + (i+k) * font_height,
				zeitList[|i]);
	draw_text_ext(	x + time_font_width + 2*padding,
				y + padding + boxheight/20 + (i+k) * font_height,	
				eventList[|i], font_height, event_font_width);
	k += floor(string_width(eventList[|i])/event_font_width);
}