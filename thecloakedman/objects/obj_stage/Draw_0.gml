draw_sprite(spr_selectbutton,!unlock,x,y);

if unlock
{
	draw_set_font(font_pixel);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed(x,y + 1.5,act,0.5,0.5,0.0);

	draw_set_reset();
}