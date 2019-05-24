//Enemy Projectile creation script
//Takes the projectile from the enemy object
Projectile = argument0; //Defines current spell based on the selection from the object casting
with(instance_create_layer(x,y,"Projectiles",Projectile))
{
	speed = 7; //this should be passed through by the enemy :v
	direction = point_direction(x,y,objPlayer.x,objPlayer.y);
	image_angle = direction;
}