///Add letters over time
if (time < text_length)
{
	time += spd;
	//Copies a string from the index up till the time
	print = string_copy(text, 0, time);
}

///Render Text box + text
draw_set_alpha(alpha)
if (alpha < 1) 
{
	alpha += spd/10;
}
else 
{
	alpha = 1;
}

draw_set_font(font);
//Draw a grey text bos with a black outline
draw_set_colour(c_gray);
draw_rectangle(x, y, x + boxWidth, y + boxHeight, 0);
draw_set_colour(c_black);
draw_rectangle(x, y, x + boxWidth, y + boxHeight, 1);

draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//You can lay stuff out like this and it's easier to read
draw_text_ext
(
	x + padding,
	y + padding,
	print, 
	font_size + (font_size/2),
	maxLength
);

draw_set_alpha(1);