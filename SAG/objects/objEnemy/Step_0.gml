//Destroys the enemy when the player kills the enemy
if (enemyHealth <= 0)
{
	instance_create_depth(x, y, 1, objEXP);
	instance_destroy();
}

if (TIMESTOPPED = true && place_meeting(x, y, objTimeStop))
{
	Status = Timestop;
	script_execute(Status)
}

//Insert random movement code here maybe
else if (point_distance(x, y, objPlayer.x, objPlayer.y) < 200)
{
	move_towards_point(objPlayer.x, objPlayer.y, 3);
	Status = false;
}

else
{	
	Status = false;
	speed = 0;	
	//Causes enemy to follow player IF they're within a certain range
}