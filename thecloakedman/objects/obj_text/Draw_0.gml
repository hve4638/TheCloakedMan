draw_set_halign(text_halign);
draw_set_valign(text_valign);
draw_set_font(text_font);

if text_outline
{
	draw_set_color(text_outline_color);
	draw_text_transformed(x,y,text,text_scale + 0.1,text_scale + 0.1, text_angle);
}

draw_set_color(text_color);
draw_text_transformed(x,y,text,image_xscale*text_scale,image_yscale*text_scale,text_angle);

draw_set_reset();