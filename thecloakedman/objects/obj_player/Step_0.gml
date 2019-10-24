if isblock(x + 11, y) && onground
	stop = true;
else if !isblock(x + 11, y)
	stop = false;

if run
{
	var spd;
	
	if !stop
	{
		if onground
			spd = walkspd;
		else
			spd = walkspd_jump;
	}
	else
	{
		if onground
			spd = 0;
		else
			spd = 0.4;
	}
		

	hspd = approach(hspd,spd,0.2);
}
else
{
	if onground
	{
		hspd = approach(hspd,0,0.1);
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
	if isblock(x, y + vspd) && vspd != 0
	{
		var b, t;
		b = blockid(x, y + vspd);
		t = y + vspd;

		if b != noone
		{
			if vspd < 0
				t = b.bbox_bottom + b_t;
			else if vspd > 0
				t = b.bbox_top - b_b;
		}


		if !isblock(x, t)
			y = t;
		else
		{
			while(!isblock(x, y + sign(vspd)))
				y += sign(vspd);
			
			if isblock(x ,y)
				y -= sign(vspd);
		}

		vspd = 0;
	}

	if isblock(x + hspd,y) && hspd != 0
	{
		var b, t;
		b = blockid(x + hspd, y);
		t = x + hspd;

		if b != noone
		{
			if hspd < 0
				t = b.bbox_right + b_l;
			else if hspd > 0
				t = b.bbox_left - b_r;
		}


		if !isblock(t, y)
			x = t;
		else
		{
			while(!isblock(x + sign(hspd),y))
				x = modulo(x + sign(hspd), room_width);

			if isblock(x ,y)
				x = modulo(x - sign(hspd), room_width);
		}

		hspd = 0;
	}
}

x += hspd;
y += vspd;