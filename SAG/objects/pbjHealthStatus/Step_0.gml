/// @Change the image index depending on the player health state
// You can write your code in this editor
if (PlayerHealth <= (PlayerMaxHealth * 0.75))
{
	image_index = 1;
}

else if (PlayerHealth <= (PlayerMaxHealth * 0.5))
{
	image_index = 2;
}

else if (PlayerHealth <= 0)
{
	image_index = 3;
}

else 
{
	image_index = 0;
}