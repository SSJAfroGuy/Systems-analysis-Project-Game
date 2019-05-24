/* @Desctriptiion - This is one of the main playable characters
This object is responsible for the players stats - all the players stats are handled here
Attack
Defence
HP
MP
Luck
EXP(related to their level) - Level could be handled elsewhere? 
This will also hold the status for the player and 
*/
XAxis = 0; //Hotizontal movment - used to see which direction player is facing
YAxis = 0; //Verticle movement - used to see which direction player is facing
State = State_IDLE; //Variable that keeps a track of what state the object is in - this controls movement
Status = Status_Control;//Variable that keeps track of the status of the player
MeliaOrbSkill = Magic_Creation;
skillCoolDown = 0;

//References for the number of "orbs" created (Not being used)
HealthNum = 0;
ManaNum = 0;

//Determines if values are regenerating - (not being used)
HealthRegen = false;
ManaRegen = false;

//Stuff for gravity n speed
hsp = 0;
vsp = 0;
grv = 0; //Un-used currently - could be good for inclusion of friction for knockback
walksp = 6;

//Creates a 2D array
Direction = DOWN;
Action = IDLE;

//Sets Own players skills - This will include any skill tree modifiers that are present if required
//This will be seperate for each button press 
//We're using a mouse and keyboard setup so it makes sense to think carefully
//Left shift - E and Q are easy to press for typical users - Movement skill = L shift - normal attack is mouse click - extra skills can be Q and E
Current_Skill = MELIAORB;
//INSERT VARIABLES FOR THE SKILLS HERE - anything a skill tree changes should be changed here 
//AFTER player creation there should be a script which goes through the skill tree and changes these values 
//to meet the skill trees values
Current_Skill2 = TIMESTOP;

//Gives the player a different sprite depenfing on the direction they were last moving in based on a 2D array
View[RIGHT, IDLE] = sprPlayerRight
View[RIGHT, MOVE] = sprPlayerRight //Change to be animated

View[UP, IDLE] = sprPlayerUp
View[UP, MOVE] = sprPlayerUp//Change to be animated

View[LEFT, IDLE] = sprPlayerLeft
View[LEFT, MOVE] = sprPlayerLeft //Change to be animated

View[DOWN, IDLE] = sprPlayerDown
View[DOWN, MOVE] = sprPlayerDown //Change to be animated