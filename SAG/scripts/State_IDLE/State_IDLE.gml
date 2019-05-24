Get_Input(); //Checks for input 

//Checks the player is moving up horizintally or vertically
if (XAxis !=0 || YAxis !=0)
{
	Action = MOVE;
}
else
{
	Action = IDLE;
}

//Checks players X direction and sets it to the corrisponding array value
if (XAxis > 0)
{
	Direction = RIGHT;
}

else if (XAxis < 0)
{
	Direction = LEFT;
}

//Checks players Y direction and sets it to the corrisponding array value
if (YAxis > 0)
{
	Direction = DOWN;
}

else if (YAxis < 0)
{
	Direction = UP;
}

//Checks the key pressed and assigns it to a variable
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

//Calculates movment direction 
var _direction = point_direction(0, 0, XAxis, YAxis);
var _length = PlayerSpeed * (XAxis !=0 || YAxis !=0);

XAxis = lengthdir_x(_length, _direction);
YAxis = lengthdir_y(_length, _direction);

if (place_meeting(x+XAxis, y, objWall))
{
	while (!place_meeting(x+sign(XAxis), y, objWall))
	{
		x += sign(XAxis);
	}
	XAxis = 0;
}
x +=XAxis;

if (place_meeting(x, y+YAxis, objWall))
{
	while (!place_meeting(x, y+sign(YAxis), objWall))
	{
		y += sign(YAxis);
	}
	YAxis = 0;
}
y +=YAxis;

