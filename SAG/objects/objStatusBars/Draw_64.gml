/// Players Status Bars are set up
// You can write your code in this editor
//Draws the player health bar
//Draws text inside the bars
{
	draw_text(320, 830, string_hash_to_newline("Level: "+string(playerLevel)));
	draw_text(320, 905,  string_hash_to_newline("HP : "  +string(PlayerHealth) + "/" + string(PlayerMaxHealth)));
	draw_text(320, 980,  string_hash_to_newline("MP : "  +string(PlayerMana)   + "/" + string(PlayerMaxMana)));
	draw_text(320, 1055,  string_hash_to_newline("Exp : "  +string(playerEXP)   + "/" + string(playerMaxEXP)));
}