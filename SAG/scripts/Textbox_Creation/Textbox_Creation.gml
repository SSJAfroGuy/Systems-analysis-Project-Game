//Textbox_Creation("Text", Speed(int), X, Y);
txt = instance_create_layer(argument2, argument3, "TopParticleLayer", objTextbox_Test);
with (txt)
{
	padding   = 16
	maxLength = (room_width/2);
	text      = argument0;
	spd       = argument1;
	font      = fnt;
	
	text_length = string_length(text);
	font_size   = font_get_size(font);
	
	text_width  = string_width_ext(text,  font_size + (font_size/2), maxLength);
	text_height = string_height_ext(text, font_size + (font_size/2), maxLength);
	
	boxWidth  = (text_width  + (padding * 2));
	boxHeight = (text_height + (padding * 2));
}