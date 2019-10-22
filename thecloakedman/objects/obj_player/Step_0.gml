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
	if isblock(x, y + vspd)
	{
		while(!isblock(x, y + sign(vspd)))
			y += sign(vspd);
		
		vspd = 0;
	}

	if isblock(x + hspd,y)
	{
		while(!isblock(x + sign(hspd),y))
			x += sign(hspd);

		hspd = 0;
	}
}
x += hspd;
y += vspd;



if isblock(x,y + 1)
{
	onground = true;
	jumpbuffer = 2;
}
else if onground && !isblock(x,y + 1)
{
	if jumpbuffer < 0
		onground = false;
	else
		jumpbuffer--;
}


if room_width < bbox_left
{
	x -= room_width;// + sprite_width;
	xprevious -= room_width;// + sprite_width;
}

if room_height < bbox_top
{
	kill();
}