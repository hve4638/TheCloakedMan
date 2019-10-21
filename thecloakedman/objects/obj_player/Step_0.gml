if run
{
	var spd;

	if onground
	{
		if !isblock(x + 10, y)
			spd = walkspd;
		else
			spd = 0;
	}
	else
		spd = walkspd_jump;
	
	if abs(hspd - spd) < 0.2
		hspd = spd;
	else
		hspd += sign(spd - hspd) * 0.2;
}
else
{
	if onground
	{
		if abs(hspd) < 0.1
			hspd = 0;
		else
			hspd += - sign(hspd) * 0.1;
	}
}

vspd += grav;

if oncloak
	vspd = min(vspd,maxvspd_cloak);
else
	vspd = min(vspd,maxvspd);


if onground
{
	if abs(hspd) < 0.1
		setspr(e_spr.idle);
	else
		setspr(e_spr.run);
}
else
{
	if vspd < 0
		setspr(e_spr.jump);
	else if vspd > 0
		setspr(e_spr.fall);
}

if isblock(x + hspd, y + vspd)
{	
	var h, v;

	if isblock(x + hspd,y)
	{
		if hspd > 0
		{
			for(h = 1; h <= abs(hspd); h++)
				if isblock(x + h, y)
					break;
	
			x += h-1;
		}
		else if hspd < 0
		{
			for(h = 1; h <= abs(hspd); h++)
				if isblock(x - h, y)
					break;
	
			x -= h-1;
		}
		
		hspd = 0;
	}
	
	if isblock(x, y + vspd)
	{
		if vspd > 0
		{
			for(v = 1; v <= abs(vspd); v++)
				if isblock(x, y + v)
					break;
	
			y += v-1;
		}
		else if vspd < 0
		{
			for(v = 1; v <= abs(vspd); v++)
				if isblock(x, y - v)
					break;
	
			y -= v-1;
		}
		
		vspd = 0;
	}
}
x += hspd;
y += vspd;

onground = isblock(x,y + 1);

if room_width < bbox_left
{
	x -= room_width + sprite_width;
	xprevious -= room_width + sprite_width;
}