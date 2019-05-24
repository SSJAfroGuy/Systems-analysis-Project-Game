//Destroys the enemy when the player kills the enemy
//Grant 5 EXP to the player upon being defeated
//Have a step event which checks HP
//Make the HP gates change which phase is active
//Make that active phase the script(s) running
//This gives full access to change the patterns easily and even have random patterns or whatever idk (make sure everything is possible to learn tho)
if (enemyHealth <= 0)
{
	instance_create_depth(x,   y,   1, objEXP);
	instance_create_depth(x+2, y+2, 1, objEXP);
	instance_create_depth(x+5, y+5, 1, objEXP);
	instance_create_depth(x-5, y-5, 1, objEXP);
	instance_create_depth(x-2, y-2, 1, objEXP);
	instance_destroy();
}

//Ensures the boss doesn't move if it's in the range of timestop
if (TIMESTOPPED = true && place_meeting(x, y, objTimeStop))
{
	Status = Timestop;
	script_execute(Status)
}
//Phase 1
if(enemyHealth >= 900)
{
	attackPattern = 1;
	attackCooldown -=1;
}
//Phase 2 
if(enemyHealth < 899 && enemyHealth > 800)
{
	attackPattern = 2;
	attackCooldown -=1;
}
//Phase 3
if(enemyHealth < 799 && enemyHealth > 500)
{
	attackPattern = 3;
	attackCooldown -=1;
}
//Phase 4
if(enemyHealth < 500 && enemyHealth >250)
{
	attackPattern = 4;
	attackCooldown -=1;
}
//Final Phase
if(enemyHealth < 249)
{
	attackPattern = 5;
	attackCooldown -=1;
}

//Executes the script for the boss attacks - attackPatterns is determined by the bosses HP stat
if(attackCooldown <= 0)
{
	image_speed = 1;
	Slime_Boss_Attack(attackPattern);
	show_debug_message("I attacked");
}