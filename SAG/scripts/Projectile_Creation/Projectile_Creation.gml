//Check the player is alive. in the event the player is alive, this object shall follow the player (x and y offest need to change depending on the item equipped)
if(PLAYERALIVE == true)
{
	x = objPlayer.x;
	y = objPlayer.y-10;
}

//Change the position of the weapon based on the mouse position - this Might not be in the final game - no mouse controls (NANI!?)
image_angle = point_direction(x,y,mouse_x,mouse_y);

//Decreases the firing delay each step
//Creates recoil, value goes down by 1 each step NEVER goes below 0.
firingdelay -= 1;
recoil = max(0, recoil -1);

//IDK why but for some reason having this set to a mouse button causes issues with the keyboardcheck events and the mouse events, so that they both can't coexist
//Checks (button to fire bullet) + the firing delay are both in the right state for a bullet to be created
//firingdelay should be a variable passed from the weapon based on the attac you're using 
if mouse_check_button(mb_left) && (firingdelay < 0)
{
	firingdelay = 3;
	recoil = 4; 
	with (instance_create_layer(x,y,"Projectiles",argument0))
	{
		speed = 25;
		direction = other.image_angle + random_range(-4, 4);
		image_angle = direction;
	}
}

x -= lengthdir_x(recoil,image_angle)
y -= lengthdir_y(recoil,image_angle)
//Code which flips the gun is the gun goes to the left/right so it's never upside down
if (image_angle > 90 && (image_angle < 270))
{
	image_yscale = -1;
}

else
{
	image_yscale = 1;
}
