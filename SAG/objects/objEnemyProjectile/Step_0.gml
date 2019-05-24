//Destroys the enemy when the player kills the enemy
if (enemyHealth <= 0)
{
	instance_create_depth(x, y, 1, objEXP);
	instance_destroy();
}

if (PlayerInRange == true && CanAttack == true)
{
	//run script for enemy projectile creation
	script_execute(ProjectilScript, Projectile);
	//Both the below could be added to the script too and passed through as parameters
	//All projectiles will have a cooldown, and both the values are used for this. 
	CanAttack = false;
	alarm[0] = room_speed * 2.5;
}

if (TIMESTOPPED = true && place_meeting(x, y, objTimeStop))
{
	Status = Timestop;
	PlayerInRange = false;
	script_execute(Status)
}

//Insert random movement code here maybe
else if (point_distance(x, y, objPlayer.x, objPlayer.y) < 300)
{
	PlayerInRange = true;
}

else
{	
	Status = false;
	speed = 0;	
	PlayerInRange = false;
}