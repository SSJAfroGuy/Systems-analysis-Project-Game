with(objMeliaOrb.id)
{
	instance_destroy();
	show_debug_message("Melia Orbs hurt");
	show_debug_message(Damage);		
	other.enemyHealth -= Damage;
	objSlime_Boss.image_blend = make_colour_hsv(255, 255, 255);

}