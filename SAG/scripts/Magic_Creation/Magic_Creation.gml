//This should be changed to be executed on a step event
//Should have ALL player skills passed through - including passives - LOL WHY. 
Spell = argument0; //Defines current spell based on the selection from the object casting
with(instance_create_layer(x,y,"Projectiles",Spell))
{
	speed = 25;
	direction = point_direction(x,y,mouse_x,mouse_y);
	image_angle = direction;
}
/*
DEBUG MESSAGES IN SCRIPTS GIVE ERROR.
show_debug_message("Spell being used is " + Spell);
show_debug_message("current Mana is " + Mana);
show_debug_message("Mana cost will be " + Spell.ManaCost);
*/
if (PlayerMana >= Spell.ManaCost) //If you have enough mana to cast spell do...
{		
	//Decrease mana and orbs accordingly (innificient maybe, make orbs decrease on step event based on mana remaning)
	PlayerMana -= Spell.ManaCost; 
	ManaNum -= Spell.ManaCost;  //Not used currently
}
//TRY THIS - make a script to make the spell, then set the variables for the spell inside the with and use OTHER.magicattack to pass that thtrough as a variable to the object, ggez.
//if you don't have enough mana, destroy the last created spell (which is invisible)
else if (PlayerMana < Spell.ManaCost) 
{
	with(Spell.id)
	{
		if (visible = false)
		{
			instance_destroy();
		}
	}
}