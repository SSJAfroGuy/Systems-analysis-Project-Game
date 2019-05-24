if(TIMESTOPPED == false && TimeStopCooldown <= 0)
{
	TimeStopCooldown += 300;
	
	TIMESTOPPED = true; //Sets time stoped to be true to prevent further activation

	instance_create_depth(x, y, 0, objTimeStop); //Creates the object - this inverts colours and shows the size of the AoE

	PlayerSpeed += ST_Player_LightTime; //Increases players speed based on skill tree	
}