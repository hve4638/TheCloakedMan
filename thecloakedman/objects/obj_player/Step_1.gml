if keyboard_check_pressed(vk_backspace)
	room_goto(rm_select);

if keyboard_check_pressed(ord("R"))
	run = !run;

if button_press() && !freeze
{
	if !run
	{
		run = true;
	}
	else
	{
		if onground
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