//Destroys the enemy object - not the bullet (This is so some bullets can have a pierce effect)
with(objMeliaOrb.id)
{
	instance_destroy();
	show_debug_message("Melia Orbs hurt");
	show_debug_message(other.enemyHealth);
	show_debug_message(Damage);		
	other.enemyHealth -= Damage;
}