//Defines the attack type (this isn't always going to be a bullet)
Bullet_Type = objBullet_GunTest;

//This ensures that there is no projectile creation if there is no set bullet
if (Bullet_Type != undefined)
{
	Projectile_Creation(Bullet_Type);
}