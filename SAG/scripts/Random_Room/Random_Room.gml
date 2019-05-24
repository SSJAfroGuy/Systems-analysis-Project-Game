//Code makes a player go to a random room based on the floor
//Arg 1 is the floor that they're hitting the object from

//Checks if the player has cleared 10 rooms - if so they will go to the boss and the clear count resets to 0.
if (roomsCleared >= 10)
{
	room_goto(Floor1_01_Boss)
	roomsCleared = 0;
}

//Makes the user go to a rangom room for the floor
//Increases the count for rooms cleared
else
{
	target = asset_get_index(argument0 + string(irandom_range(1, 10)));
	room_goto(target);
	roomsCleared += 1;
}