with(sys_select)
{
	world = clamp(world + other.add, 1, maxlevel);

	event_user(0);
}