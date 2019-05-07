



switch (state)
{
	case "sit": 
		sprite_index = sCoyote_sit;
		image_index = 1;
		image_speed = 1;
		
		if distance_to_object(oBeuys) <= 300
		{
			state = "get_up";
		}
	break;
	
	case "get_up":
		sprite_index = sCoyote_get_up		
		if image_index >= image_number - 1
		{
			state = "walk";
		}
	break;
	
	case "walk":
		sprite_index = sCoyote_walk
		hsp = sign( x - oBeuys.x) * walk_spd;
		image_xscale = 1;
		image_speed = 1;
	break;
}

vsp  += gravity_spd;

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


