
// Movement

if oInput.right
{
	hsp = walk_spd;
	image_xscale = 1;
	image_speed = 1;
}

show_debug_message(oInput.right);
if oInput.left
{
	hsp = -walk_spd;
	image_xscale = -1;
	image_speed = 1;
}

if not oInput.left and not oInput.right
{
	hsp = 0;
	image_speed = 0;
}

//jump

if oInput.up && grounded==true
{
	vsp += jump_spd;
}

if !place_meeting(x, y+1, oWall)
{
		grounded = false;
}

vsp += gravity_spd;

// Collision
if place_meeting(x + hsp,y,oWall)
{
	while !place_meeting(x+sign(hsp),y,oWall)
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

if place_meeting(x, y + vsp,oWall)
{
	while !place_meeting(x,y+sign(vsp),oWall)
	{
		y = y + sign(vsp);
	}
	vsp = 0;
	grounded=true;
}

y = y + vsp;

if grounded == false 
{
	if vsp > 0 
	{
		sprite_index = sBeuys_jump;
		image_index = 1;
		image_speed = 0;
	}else
	{
		sprite_index = sBeuys_jump;
		image_index = 0;
		image_speed = 0;	
	}
}else sprite_index = sBeuys_walk;

