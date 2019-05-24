//Draws the boss health bar
//CURRENTLY DOES NOT WORK :V OOF;.
var bh;
bh = (enemyHealth / enemyMaxHealth) * 100;
draw_healthbar((x + 10), (y - 10), (x + 100), (y), bh, c_black, c_red, c_lime, 0, true, true)