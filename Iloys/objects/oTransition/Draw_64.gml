
draw_set_alpha(alpha);
draw_rectangle_color(0,0,8000,8000,c,c,c,c,false);
alpha += counter;

if alpha > 1
{
	room_goto_next();
}