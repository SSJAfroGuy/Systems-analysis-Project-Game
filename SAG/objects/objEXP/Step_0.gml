Sight_Distance = 256; //Sets Distance For Enemy To Follow Player

PlayerX = objPlayer.x;     //Name of your Player sprite(.x) (Easier to add more sprites, Guards for example)
PlayerY = objPlayer.y;     //Name of your Player sprite(.y) (Easier to add more sprites, Guards for example)

Sight_Blocked = objWall;   //Name of your Wall sprite (Easier to add more sight blocking things)
	
if(distance_to_point(PlayerX,PlayerY) <= Sight_Distance && !collision_line(x,y,PlayerX,PlayerY,Sight_Blocked,false,true))
{
    friction = 0;
    motion_add(point_direction(x,y,PlayerX,PlayerY),1); //Make enemies faster if aggressive
		
    if(speed >=6)
	{
		speed = 6; //Don't make them faster than "6"
	}
}
	
else 
{
	friction = 1;
}         

