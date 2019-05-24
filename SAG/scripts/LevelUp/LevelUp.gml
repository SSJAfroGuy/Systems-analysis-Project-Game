//Ensuire the player doesn't keep leveling up over and over again
playerEXP = 0; //This doesn't "need" to reset
playerMaxEXP += 5; //This can go up by an external value depending on how high a level they are - somethihng like Level * some rnaodm value
playerLevel += 1;
//For all the "* 1" values, make 1 a constant of some base stat thingy
PlayerMaxHealth += (playerLevel * 1) 
PlayerHealth += (playerLevel * 1)
PlayerMaxMana += (playerLevel * 1)
PlayerMana += (playerLevel * 1)
PlayerAttack += (playerLevel * 1)
PlayerMAttack += (playerLevel * 1)
PlayerMDefence += (playerLevel * 1)
PlayerDefence += (playerLevel * 1)
//PlayerSpeed should NOT increase, only skills should do this?
playerSkillPoints += 1;
