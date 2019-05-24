//Causes the bullet in question to destroy itself if it is outside the room OR if it hits a wall
//Wall needs to be abstracted or this will be a nightmare. 
if (ev_outside || place_meeting(x,y,objWall))
{
	with(objBullet_GunTest.id)
	{
		instance_destroy();
	}
}	
