if button_press() && !freeze
{
	if !run
	{
		run = true;
	}
	else
	{
		if onground && nojumpbuffer == 0
		{
			vspd = jumph;
			onground = false;
		}
		else if vspd < 0
		{
			vspd *= 0.4;
		}
	}
}

if run && !freeze
	oncloak = button_hold();
else
	oncloak = false;