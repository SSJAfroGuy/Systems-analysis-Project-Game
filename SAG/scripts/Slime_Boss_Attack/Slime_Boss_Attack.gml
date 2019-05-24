pattern = argument0; //attackPattern
//UPDATE LOG
//V0.1 everything had 30 or 15 second cooldowns. This was obviously too intense unless this was the only attack the boss ueses
//V0.2 Everything had its timer increased by 10 times. This means the boss attacks with these periodically adding to the bullet intensity
//V0.3 Added a shot that goes towards the players location, this forces them to move at least

//Set the image speed to 0 so the boss has no attack animation
if(pattern == 0)
{
	image_speed = 0;
}

//Basic attack - this is going to happen all the time in theory
if(pattern == 1)
{		
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile);
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile_Aimed);
	attackCooldown = 150;
}

//Doubles the intensity of the attack by making 2 projectiles
if(pattern == 2)
{		
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile);
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile);
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile_Aimed);
	attackCooldown = 100;
}

//Triples the intensity of the attack by making 3 projectiles
if(pattern == 3)
{		
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile);
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile);
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile);
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile_Aimed);
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile);
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile);
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile);
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile);
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile);
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile);
	attackCooldown = 100;
}

//Much bullet
if(pattern == 4)
{		
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile);
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile);
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile);
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile_Aimed);
	attackCooldown = 50;
}

//Can this boss become hard by doing this :v
if(pattern == 5)
{		
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile);
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile);
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile);
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile);
	instance_create_layer(x, y, "projectiles", objSlime_Boss_Projectile_Aimed);
	attackCooldown = 5;
}