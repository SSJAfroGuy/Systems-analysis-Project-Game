//Particle System set-up

if (ev_outside || place_meeting(x,y,objWall))
{
	with(objEnemyProjectileProjectile.id)
	{
		instance_destroy();
	}
}	