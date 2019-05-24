//Execute script to create a set spell
if (skillCoolDown <= 0)
{
	script_execute(MeliaOrbSkill, Current_Skill);
	skillCoolDown += 100;
}