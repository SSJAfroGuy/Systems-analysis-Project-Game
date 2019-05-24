/// @Description This is the step event for the player - will control movment and other aspects
script_execute(State);

//changes the used sprite based on 2D array created
sprite_index = View[Direction,Action];

//Executes the scripts to cause status effects
script_execute(Status);

//PLACEHOLDER
if (TimeStopCooldown >= 1)
{
	TimeStopCooldown -=1;
}

//This stuff should be in a script for other player objects to make use of, basically anything in the player object should eventually be in scripts
if (playerEXP >= playerMaxEXP)
{
	LevelUp();
}

skillCoolDown -= 1;

if(storyText = 0)
{
	storyText += 1;
	Textbox_Creation("Welcome adventurer! I am pleased you have found my notes. I am Tori. Welcome to the Catacombs of Endless End. I started writing these notes when I realised there was an amnesia spell covering the dungeon and I woke up outside the entrance with no memory of this place. After spending like a week in here. I'm not a good adventurer. But I'm sure you'll fare much better than I ever could. I used what some of my magic to preserve the area ahead. I also left more notes so you know how to use your skills. Go forth, and remember.(Press Space to continue)", 
0.5, 300, 300);
}

if(storyText = 3 && (instance_number(objEnemy) == 0))
{
	storyText += 1;
	Textbox_Creation("Nicely done. Don't expect every monster you fight to be that simple though. In the next room, you'll find a ranged goon. With the way my spell works, you must kill it with your right mouse button skill. I suggest trying it out in here first. Or go in head first and figure it out on the go. I'm not your boss.",  
0.5, 300, 300);
}