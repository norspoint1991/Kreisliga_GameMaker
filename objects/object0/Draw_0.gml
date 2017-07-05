/// @description  Draw the splitted string
for(var i=0; i<array_length_1d(splitted_string); i++)
{
  draw_text(10,10+20*i,string_hash_to_newline(splitted_string[i]));
}

