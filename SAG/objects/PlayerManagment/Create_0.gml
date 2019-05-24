/*
- This object will act as a player manager 
- This will have global variables that contain all the players main stats
- This object MUST BE PERSISTENT - it's intended to ensure the HP etc carries over between rooms and floors
- There will be a way on start when you've selected a chracter that the stats are dependant on userdata maybe
*/

/*
Below are the GLOBAL CHRACTER traits. All characters WILL have these stats
For now, these will be global and used for all characters, however these will be set individually per chracter to make things much easier :V
IDK how I'm doing that in a way which means I can keep the same global value, but there will be a way I'm sure
*/
globalvar PlayerMaxHealth;
globalvar PlayerHealth;
globalvar PlayerMaxMana;
globalvar PlayerMana;
globalvar PlayerAttack;
globalvar PlayerMAttack;
globalvar PlayerMDefence;
globalvar PlayerDefence;
globalvar PlayerSpeed;
globalvar playerLevel;
globalvar playerEXP;
globalvar playerMaxEXP; //Dictates the amount of exp needed till the player levels up.
globalvar playerSkillPoints;
globalvar storyText;
globalvar roomsCleared;

//Room Dependant stufffffs
storyText = 0;
roomsCleared = 0;

playerLevel = 1;
playerEXP = 0;
playerMaxEXP = 10;
playerSkillPoints = 0;

PlayerMaxHealth = 5;
PlayerHealth = 5;

PlayerMaxMana = 10;
PlayerMana = 10;

PlayerAttack = 10;
PlayerMAttack = 10;

PlayerMDefence = 10;
PlayerDefence = 10;

PlayerSpeed = 8;

//MELIA SKILL - Timestop
//Assign globalvar for all objects to use
//These could be MACRO? maybe right? STATIC values that NEVER change, they're based on the individual character
globalvar TIMESTOPPED;
globalvar TimeStopCooldown;
globalvar TimeStopDistance;
globalvar TimeDuration;
//Define the defauly values for the skills
TIMESTOPPED = false;
TimeStopCooldown = 0;
TimeStopDistance = 1;
TimeDuration = 60;

//For all skill trees set the value here and make it equal to a value the skill tree object holds

//MELIA SKILL TREE - Timestop (these values will all be their base values BUT are edited based on character selections values from GameManger

//While time is stopped, melia gains X movement speed for the duration of timestop
globalvar ST_Player_LightTime;
ST_Player_LightTime = 3;

//Timestop duration is increased by X amount of time
globalvar ST_Timestop_Duration;
ST_Timestop_Duration = 60;

//Timestop radius is increased by X amount
globalvar ST_Timestop_Distance;
ST_Timestop_Distance = 2;

//Timestop DoT increases by X amount 
globalvar ST_Timestop_DoT;
ST_Timestop_DoT = 1;

//MELIA SKILL - Magic Orb
globalvar MagicOrbCooldown;
globalvar MagicOrbSize;
globalvar MagicOrbDamage

//MELIA SKILL TREE - Magic Orb