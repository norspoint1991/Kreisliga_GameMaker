draw_set_halign(fa_left);
draw_set_valign(fa_top);

var k = 0;

for(var i = 0; i < ds_list_size(eventList); i++)
{
	draw_text(	x + padding,
				y + padding + boxheight/20 + (i+k) * font_height,
				zeitList[|i]);
	draw_text_ext(	x + time_font_width + 2*padding,
					y + padding + boxheight/20 + (i+k) * font_height,	
					eventList[|i], font_height, event_font_width);
	k += string_height_ext(eventList[|i], font_height, event_font_width)/font_height - 1;
}