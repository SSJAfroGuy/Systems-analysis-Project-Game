if (storyText == 5 && roomsCleared = 0)
{
	room_goto(Floor1_01_1);
	roomsCleared += 1;
}

if (roomsCleared > 0)
{
	roomsCleared += 1;
	Random_Room("Floor1_01_");
}

else 
{
	room_goto_next()
}