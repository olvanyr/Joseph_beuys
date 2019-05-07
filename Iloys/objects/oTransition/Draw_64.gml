
draw_set_alpha(alpha);
draw_rectangle_color(-10,-10,8000,8000,c,c,c,c,false);
alpha += counter;

if alpha > 1
{
	room_goto_next();
}