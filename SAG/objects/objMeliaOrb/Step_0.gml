//Particle System set-up
PS_MeliaOrb(x,y, 20);

if (ev_outside || place_meeting(x,y,objWall))
{
	with(objMeliaOrb.id)
	{
		instance_destroy();
	}
}